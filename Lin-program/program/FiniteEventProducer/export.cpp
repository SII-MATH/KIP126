// Untrusted data-only transport: validates schema/dimensions and canonicalizes.
#include <cctype>
#include <fstream>
#include <iostream>
#include <map>
#include <set>
#include <stdexcept>
#include <string>
#include <variant>
#include <vector>
struct Json {
  using Array=std::vector<Json>;using Object=std::map<std::string,Json>;
  std::variant<unsigned,bool,Array,Object> v;
  template<class T> Json(T x):v(std::move(x)){}
  unsigned nat()const{if(!std::holds_alternative<unsigned>(v))throw std::runtime_error("expected natural");return std::get<unsigned>(v);}
  const Array& array()const{if(!std::holds_alternative<Array>(v))throw std::runtime_error("expected array");return std::get<Array>(v);}
  const Object& object()const{if(!std::holds_alternative<Object>(v))throw std::runtime_error("expected object");return std::get<Object>(v);}
};
struct Parser {
  const std::string& s;std::size_t p=0;unsigned depth=0;
  char peek(){while(p<s.size()&&std::isspace(static_cast<unsigned char>(s[p])))++p;return p<s.size()?s[p]:0;}
  void take(char c){if(peek()!=c)throw std::runtime_error("JSON byte "+std::to_string(p)+": expected token");++p;}
  Json parse(){if(++depth>32)throw std::runtime_error("JSON depth limit32");Json result(0u);char c=peek();
    if(c=='{'){++p;Json::Object o;if(peek()!='}')for(;;){take('"');std::string k;while(p<s.size()&&s[p]!='"'){char a=s[p++];if(a=='\\'||a<32||static_cast<unsigned char>(a)>127)throw std::runtime_error("noncanonical key");k+=a;}take('"');take(':');if(o.count(k))throw std::runtime_error("duplicate field "+k);o.emplace(k,parse());if(peek()!=',')break;++p;}take('}');result=Json(o);}
    else if(c=='['){++p;Json::Array a;if(peek()!=']')for(;;){a.push_back(parse());if(peek()!=',')break;++p;}take(']');result=Json(a);}
    else if(s.compare(p,4,"true")==0){p+=4;result=Json(true);}
    else if(s.compare(p,5,"false")==0){p+=5;result=Json(false);}
    else if(c>='0'&&c<='9'){unsigned n=0;auto start=p;while(p<s.size()&&std::isdigit(static_cast<unsigned char>(s[p]))){if(n>100000)throw std::runtime_error("natural resource limit");n=n*10+s[p++]-'0';}if(p-start>1&&s[start]=='0')throw std::runtime_error("leading zero");result=Json(n);}
    else throw std::runtime_error("unknown/null/string value at byte "+std::to_string(p));--depth;return result;}
};
void dump(std::ostream& out,const Json& j){if(auto n=std::get_if<unsigned>(&j.v)){out<<*n;return;}if(auto b=std::get_if<bool>(&j.v)){out<<(*b?"true":"false");return;}if(auto a=std::get_if<Json::Array>(&j.v)){out<<'[';bool comma=false;for(auto& x:*a){if(comma)out<<',';comma=true;dump(out,x);}out<<']';return;}out<<'{';bool comma=false;for(auto& [k,v]:j.object()){if(comma)out<<',';comma=true;out<<'"'<<k<<"\":";dump(out,v);}out<<'}';}
void keys(const Json::Object& o,std::set<std::string> wanted,const std::string& at){for(auto& [k,v]:o)if(!wanted.erase(k))throw std::runtime_error(at+": unknown field "+k);if(!wanted.empty())throw std::runtime_error(at+": missing field "+*wanted.begin());}
void bits(const Json& j,unsigned size,const std::string& at){auto& a=j.array();if(a.size()!=size)throw std::runtime_error(at+": dimension mismatch");for(auto& b:a)if(!std::holds_alternative<bool>(b.v))throw std::runtime_error(at+": expected Boolean");}
void comparison(const Json& j,const std::string& at){auto& o=j.object();keys(o,{"version","k","m","n","h","outgoing","incoming","inclusion","projection","up","down"},at);if(o.at("version").nat()!=1)throw std::runtime_error(at+": version");unsigned k=o.at("k").nat(),m=o.at("m").nat(),n=o.at("n").nat(),h=o.at("h").nat();if(k>512||m>512||n>512||h>512)throw std::runtime_error(at+": dimension resource limit512");bits(o.at("outgoing"),k*m,at+".outgoing");bits(o.at("incoming"),m*n,at+".incoming");bits(o.at("inclusion"),m*h,at+".inclusion");bits(o.at("projection"),h*m,at+".projection");bits(o.at("up"),n*m,at+".up");bits(o.at("down"),m*k,at+".down");}
void trace(const Json& raw,const Json& stages,const Json& final,unsigned finalSize,const std::string& at){unsigned dimension=raw.array().size();bits(raw,dimension,at+".raw");unsigned idx=0;for(auto& stage:stages.array()){auto label=at+".stage"+std::to_string(++idx);auto& s=stage.object();keys(s,{"wire","representative"},label);comparison(s.at("wire"),label);auto& w=s.at("wire").object();if(w.at("m").nat()!=dimension)throw std::runtime_error(label+": trace dimension mismatch");bits(s.at("representative"),dimension,label+".representative");dimension=w.at("h").nat();}if(dimension!=finalSize)throw std::runtime_error(at+": final dimension mismatch");bits(final,finalSize,at+".final");}
void validate(const Json& j){auto& o=j.object();keys(o,{"version","rawSource","rawTarget","sourceStages","targetStages","event","source","target"},"event");if(o.at("version").nat()!=1)throw std::runtime_error("event.version");comparison(o.at("event"),"event.comparison");auto& w=o.at("event").object();trace(o.at("rawSource"),o.at("sourceStages"),o.at("source"),w.at("m").nat(),"source");trace(o.at("rawTarget"),o.at("targetStages"),o.at("target"),w.at("k").nat(),"target");}
bool boundedLine(std::istream& in,std::string& line,bool& oversized){line.clear();oversized=false;bool any=false;char c;while(in.get(c)){any=true;if(c=='\n')break;if(line.size()<10000000)line+=c;else oversized=true;}return any;}
int main(int argc,char** argv){try{if(argc!=2)throw std::runtime_error("usage: finite-event-export INPUT.jsonl");std::ifstream in(argv[1]);if(!in)throw std::runtime_error("input open failed");std::string line;unsigned row=0;bool failed=false,oversized=false;while(boundedLine(in,line,oversized)){++row;try{if(oversized)throw std::runtime_error("record limit10MB");Parser p{line};auto j=p.parse();if(p.peek())throw std::runtime_error("trailing JSON");validate(j);dump(std::cout,j);std::cout<<'\n';}catch(const std::exception& e){failed=true;std::cerr<<argv[1]<<':'<<row<<": "<<e.what()<<'\n';}}if(in.bad()||row==0)throw std::runtime_error("read failure or empty file");std::cout.flush();if(!std::cout)throw std::runtime_error("output write failed");return failed?1:0;}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
