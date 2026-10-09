#define main finite_event_packager_main
#include "export.cpp"
#undef main

std::pair<unsigned,unsigned> degree(const Json& j,const std::string& at){auto& o=j.object();keys(o,{"s","t"},at);return {o.at("s").nat(),o.at("t").nat()};}
void labels(const Json& j,std::pair<unsigned,unsigned> center,unsigned page,unsigned count,const std::string& at){
 auto& a=j.array();if(a.size()!=page-2||a.size()!=count)throw std::runtime_error(at+": stage count must equal eventPage-2");
 for(unsigned i=0;i<a.size();++i){auto pos=at+"["+std::to_string(i)+"]";auto& o=a[i].object();keys(o,{"page","center","incoming","outgoing"},pos);unsigned r=o.at("page").nat();
  if(r!=i+2||degree(o.at("center"),pos+".center")!=center)throw std::runtime_error(pos+": noncontiguous page or center mismatch");
  auto incoming=degree(o.at("incoming"),pos+".incoming"),outgoing=degree(o.at("outgoing"),pos+".outgoing");
  if(incoming.first+r!=center.first||incoming.second+r-1!=center.second||outgoing.first!=center.first+r||outgoing.second!=center.second+r-1)throw std::runtime_error(pos+": Adams degree shift mismatch");
 }
}
void indexedValidate(const Json& j){auto& o=j.object();keys(o,{"version","sourceDegree","targetDegree","eventPage","sourceLabels","targetLabels","finite"},"indexed");if(o.at("version").nat()!=1)throw std::runtime_error("indexed.version");unsigned r=o.at("eventPage").nat();if(r<2||r>128)throw std::runtime_error("eventPage range2..128");auto source=degree(o.at("sourceDegree"),"sourceDegree"),target=degree(o.at("targetDegree"),"targetDegree");if(target.first!=source.first+r||target.second!=source.second+r-1)throw std::runtime_error("event degree shift mismatch");validate(o.at("finite"));auto& f=o.at("finite").object();labels(o.at("sourceLabels"),source,r,f.at("sourceStages").array().size(),"sourceLabels");labels(o.at("targetLabels"),target,r,f.at("targetStages").array().size(),"targetLabels");}
int main(int argc,char** argv){try{if(argc!=2)throw std::runtime_error("usage: indexed-event-export INPUT.jsonl");std::ifstream in(argv[1]);if(!in)throw std::runtime_error("input open failed");std::string line;unsigned row=0;bool failed=false,oversized=false;while(boundedLine(in,line,oversized)){++row;try{if(oversized)throw std::runtime_error("record limit10MB");Parser p{line};auto j=p.parse();if(p.peek())throw std::runtime_error("trailing JSON");indexedValidate(j);dump(std::cout,j);std::cout<<'\n';}catch(const std::exception& e){failed=true;std::cerr<<argv[1]<<':'<<row<<": "<<e.what()<<'\n';}}if(in.bad()||row==0)throw std::runtime_error("read failure or empty file");std::cout.flush();if(!std::cout)throw std::runtime_error("output write failed");return failed?1:0;}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
