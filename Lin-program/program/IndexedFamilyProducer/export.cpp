// Structural binding only; Lean rechecks all mathematical certificates.
#include "json.hpp"
#include <sstream>
#include <tuple>

std::string canonical(const Json& j) { std::ostringstream out; dump(out,j); return out.str(); }
Json parseRecord(const std::string& line) {
  Parser parser{line}; auto value=parser.parse();
  parser.peek();
  if(parser.p!=line.size()) throw std::runtime_error("trailing JSON");
  return value;
}
using Key=std::tuple<std::string,unsigned,int,int>;
Key key(const Json& j,const std::string& at) {
  const auto& o=j.object(); keys(o,{"object","page","s","t"},at);
  const auto& object=o.at("object").string();
  if(object.empty()) throw std::runtime_error(at+": empty object");
  for(unsigned char c:object) if(!std::isalnum(c)&&c!='_') throw std::runtime_error(at+": invalid object identifier");
  auto page=o.at("page").nat();
  if(page<2||page>128) throw std::runtime_error(at+": page range2..128");
  return {object,page,o.at("s").integer(),o.at("t").integer()};
}
struct Family { Json envelope; std::map<Key,Json> blocks; std::set<std::string> objects; };
Family loadFamily(const std::string& path) {
  std::ifstream in(path); if(!in) throw std::runtime_error(path+": cannot open family");
  std::string line,extra; bool oversized=false;
  if(!boundedLine(in,line,oversized)||oversized) throw std::runtime_error(path+": family empty/limit10MB");
  if(boundedLine(in,extra,oversized)) throw std::runtime_error(path+": family must be one JSON line");
  if(in.bad()) throw std::runtime_error(path+": family read failure");
  auto envelope=parseRecord(line); const auto& o=envelope.object(); keys(o,{"version","entries"},"family");
  if(o.at("version").nat()!=1) throw std::runtime_error("family.version");
  const auto& entries=o.at("entries").array();
  if(entries.empty()||entries.size()>10000) throw std::runtime_error("family entry count1..10000");
  Family family{envelope,{},{}}; unsigned i=0;
  for(const auto& entry:entries) {
    auto at="family.entries["+std::to_string(i++)+"]"; const auto& e=entry.object(); keys(e,{"key","wire"},at);
    auto k=key(e.at("key"),at+".key"); comparison(e.at("wire"),at+".wire");
    if(!family.blocks.emplace(k,e.at("wire")).second) throw std::runtime_error(at+": duplicate or conflicting family key");
    family.objects.insert(std::get<0>(k));
  }
  return family;
}
void requireBlock(const Family& family,const std::string& object,unsigned page,
    std::pair<unsigned,unsigned> center,const Json& wire,const std::string& at) {
  auto found=family.blocks.find({object,page,center.first,center.second});
  if(found==family.blocks.end()) throw std::runtime_error(at+": missing family block");
  if(canonical(found->second)!=canonical(wire)) throw std::runtime_error(at+": full comparison differs from family");
}
Json bind(const Family& family,const std::string& object,const Json& event) {
  if(!family.objects.count(object)) throw std::runtime_error("unknown object "+object);
  indexedValidate(event); const auto& e=event.object(); const auto& f=e.at("finite").object();
  auto source=degree(e.at("sourceDegree"),"sourceDegree"),target=degree(e.at("targetDegree"),"targetDegree");
  requireBlock(family,object,e.at("eventPage").nat(),source,f.at("event"),"event");
  for(const auto& label:{std::string("source"),std::string("target")}) {
    auto center=label=="source"?source:target; unsigned page=2;
    for(const auto& stage:f.at(label+"Stages").array()) {
      requireBlock(family,object,page,center,stage.object().at("wire"),label+".stage["+std::to_string(page-2)+"]"); ++page;
    }
  }
  return Json(Json::Object{{"version",Json(1u)},{"object",Json(object)},{"event",event}});
}
int main(int argc,char** argv) {
  try {
    if(argc==3&&std::string(argv[1])=="--family") {
      auto family=loadFamily(argv[2]); std::cout<<canonical(family.envelope)<<'\n';
    } else if(argc==5&&std::string(argv[1])=="--bind") {
      auto family=loadFamily(argv[2]); std::ifstream input(argv[4]);
      if(!input) throw std::runtime_error("cannot open indexed input");
      std::string line; unsigned row=0; bool failed=false,oversized=false;
      while(boundedLine(input,line,oversized)) {
        ++row;
        try { if(oversized) throw std::runtime_error("indexed record limit10MB");
          std::cout<<canonical(bind(family,argv[3],parseRecord(line)))<<'\n';
        } catch(const std::exception& error) { failed=true; std::cerr<<argv[4]<<':'<<row<<": "<<error.what()<<'\n'; }
      }
      if(input.bad()||row==0) throw std::runtime_error("indexed read failure or empty file");
      std::cout.flush(); if(!std::cout) throw std::runtime_error("output write failed"); return failed?1:0;
    } else throw std::runtime_error("usage: indexed-family-export --family FAMILY.json | --bind FAMILY.json OBJECT INDEXED.jsonl");
    std::cout.flush(); if(!std::cout) throw std::runtime_error("output write failed"); return 0;
  } catch(const std::exception& error) { std::cerr<<error.what()<<'\n'; return 1; }
}
