#pragma once
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
  std::variant<unsigned,int,bool,std::string,Array,Object> v;
  template<class T> Json(T x):v(std::move(x)){}
  int integer()const{if(auto n=std::get_if<unsigned>(&v))return static_cast<int>(*n);if(auto n=std::get_if<int>(&v))return *n;throw std::runtime_error("expected integer");}
  const std::string& string()const{if(!std::holds_alternative<std::string>(v))throw std::runtime_error("expected string");return std::get<std::string>(v);}
  unsigned nat()const{if(!std::holds_alternative<unsigned>(v))throw std::runtime_error("expected natural");return std::get<unsigned>(v);}
  const Array& array()const{if(!std::holds_alternative<Array>(v))throw std::runtime_error("expected array");return std::get<Array>(v);}
  const Object& object()const{if(!std::holds_alternative<Object>(v))throw std::runtime_error("expected object");return std::get<Object>(v);}
};
struct Parser {
  const std::string& s;std::size_t p=0;unsigned depth=0;
  char peek(){while(p<s.size()&&(s[p]==' '||s[p]=='\t'||s[p]=='\r'||s[p]=='\n'))++p;return p<s.size()?s[p]:0;}
  void take(char c){if(peek()!=c)throw std::runtime_error("JSON byte "+std::to_string(p)+": expected token");++p;}
  Json parse(){if(++depth>32)throw std::runtime_error("JSON depth limit32");Json result(0u);char c=peek();
    if(c=='{'){++p;Json::Object o;if(peek()!='}')for(;;){take('"');std::string k;while(p<s.size()&&s[p]!='"'){char a=s[p++];if(a=='\\'||a<32||static_cast<unsigned char>(a)>127)throw std::runtime_error("noncanonical key");k+=a;}take('"');take(':');if(o.count(k))throw std::runtime_error("duplicate field "+k);o.emplace(k,parse());if(peek()!=',')break;++p;}take('}');result=Json(o);}
    else if(c=='"'){++p;std::string value;while(p<s.size()&&s[p]!='"'){unsigned char ch=s[p++];if(ch<32||ch>126||ch==92)throw std::runtime_error("escaped/non-ASCII string unsupported");value+=ch;if(value.size()>256)throw std::runtime_error("string length limit256");}take('"');result=Json(value);}
    else if(c=='['){++p;Json::Array a;if(peek()!=']')for(;;){a.push_back(parse());if(peek()!=',')break;++p;}take(']');result=Json(a);}
    else if(s.compare(p,4,"true")==0){p+=4;result=Json(true);}
    else if(s.compare(p,5,"false")==0){p+=5;result=Json(false);}
    else if(c=='-'){++p;unsigned n=0;auto start=p;while(p<s.size()&&std::isdigit(static_cast<unsigned char>(s[p]))){if(n>100000)throw std::runtime_error("integer resource limit");n=n*10+s[p++]-'0';}if(p==start||n==0||(p-start>1&&s[start]=='0'))throw std::runtime_error("noncanonical negative integer");result=Json(-static_cast<int>(n));}
    else if(c>='0'&&c<='9'){unsigned n=0;auto start=p;while(p<s.size()&&std::isdigit(static_cast<unsigned char>(s[p]))){if(n>100000)throw std::runtime_error("natural resource limit");n=n*10+s[p++]-'0';}if(p-start>1&&s[start]=='0')throw std::runtime_error("leading zero");result=Json(n);}
    else throw std::runtime_error("unknown/null/string value at byte "+std::to_string(p));--depth;return result;}
};
void dump(std::ostream& out,const Json& j){if(auto n=std::get_if<unsigned>(&j.v)){out<<*n;return;}if(auto n=std::get_if<int>(&j.v)){out<<*n;return;}if(auto b=std::get_if<bool>(&j.v)){out<<(*b?"true":"false");return;}if(auto s=std::get_if<std::string>(&j.v)){out<<'"'<<*s<<'"';return;}if(auto a=std::get_if<Json::Array>(&j.v)){out<<'[';bool comma=false;for(auto& x:*a){if(comma)out<<',';comma=true;dump(out,x);}out<<']';return;}out<<'{';bool comma=false;for(auto& [k,v]:j.object()){if(comma)out<<',';comma=true;out<<'"'<<k<<"\":";dump(out,v);}out<<'}';}
void keys(const Json::Object& o,std::set<std::string> wanted,const std::string& at){for(auto& [k,v]:o)if(!wanted.erase(k))throw std::runtime_error(at+": unknown field "+k);if(!wanted.empty())throw std::runtime_error(at+": missing field "+*wanted.begin());}
void bits(const Json& j,unsigned size,const std::string& at){auto& a=j.array();if(a.size()!=size)throw std::runtime_error(at+": dimension mismatch");for(auto& b:a)if(!std::holds_alternative<bool>(b.v))throw std::runtime_error(at+": expected Boolean");}
void comparison(const Json& j,const std::string& at){auto& o=j.object();keys(o,{"version","k","m","n","h","outgoing","incoming","inclusion","projection","up","down"},at);if(o.at("version").nat()!=1)throw std::runtime_error(at+": version");unsigned k=o.at("k").nat(),m=o.at("m").nat(),n=o.at("n").nat(),h=o.at("h").nat();if(k>512||m>512||n>512||h>512)throw std::runtime_error(at+": dimension resource limit512");bits(o.at("outgoing"),k*m,at+".outgoing");bits(o.at("incoming"),m*n,at+".incoming");bits(o.at("inclusion"),m*h,at+".inclusion");bits(o.at("projection"),h*m,at+".projection");bits(o.at("up"),n*m,at+".up");bits(o.at("down"),m*k,at+".down");}
void trace(const Json& raw,const Json& stages,const Json& final,unsigned finalSize,const std::string& at){unsigned dimension=raw.array().size();bits(raw,dimension,at+".raw");unsigned idx=0;for(auto& stage:stages.array()){auto label=at+".stage"+std::to_string(++idx);auto& s=stage.object();keys(s,{"wire","representative"},label);comparison(s.at("wire"),label);auto& w=s.at("wire").object();if(w.at("m").nat()!=dimension)throw std::runtime_error(label+": trace dimension mismatch");bits(s.at("representative"),dimension,label+".representative");dimension=w.at("h").nat();}if(dimension!=finalSize)throw std::runtime_error(at+": final dimension mismatch");bits(final,finalSize,at+".final");}
void validate(const Json& j){auto& o=j.object();keys(o,{"version","rawSource","rawTarget","sourceStages","targetStages","event","source","target"},"event");if(o.at("version").nat()!=1)throw std::runtime_error("event.version");comparison(o.at("event"),"event.comparison");auto& w=o.at("event").object();trace(o.at("rawSource"),o.at("sourceStages"),o.at("source"),w.at("m").nat(),"source");trace(o.at("rawTarget"),o.at("targetStages"),o.at("target"),w.at("k").nat(),"target");}
bool boundedLine(std::istream& in,std::string& line,bool& oversized){line.clear();oversized=false;bool any=false;char c;while(in.get(c)){any=true;if(c=='\n')break;if(line.size()<10000000)line+=c;else oversized=true;}return any;}

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
