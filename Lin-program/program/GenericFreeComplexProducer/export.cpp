// Untrusted finite free-complex producer. Reuses the existing Milnor coproduct
// enumeration, but calculates outputs rather than accepting proposed products.
#pragma push_macro("main")
#undef main
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wreturn-type"
#define main milnor_export_entry
#include "../MilnorCertificates/export.cpp"
#undef main
#pragma GCC diagnostic pop
#pragma pop_macro("main")
#include <cctype>
#include <fstream>
#include <map>
#include <set>
#include <variant>

struct J {
  using A = std::vector<J>;
  using O = std::map<std::string,J>;
  std::variant<unsigned,A,O> value;
  J(unsigned n):value(n){} J(A a):value(std::move(a)){} J(O o):value(std::move(o)){}
  unsigned nat() const { if (!std::holds_alternative<unsigned>(value)) throw std::runtime_error("expected natural"); return std::get<unsigned>(value); }
  const A& array() const { if (!std::holds_alternative<A>(value)) throw std::runtime_error("expected array"); return std::get<A>(value); }
  const O& object() const { if (!std::holds_alternative<O>(value)) throw std::runtime_error("expected object"); return std::get<O>(value); }
};
struct Parser {
  const std::string& text; std::size_t at=0; unsigned depth=0;
  void spaces(){while(at<text.size() && std::isspace(static_cast<unsigned char>(text[at])))++at;}
  char peek(){spaces();return at<text.size()?text[at]:'\0';}
  void token(char c){if(peek()!=c)throw std::runtime_error("JSON byte "+std::to_string(at)+": expected "+c);++at;}
  std::string key(){token('"');std::string s;while(at<text.size()&&text[at]!='"'){char c=text[at++];if(c=='\\'||static_cast<unsigned char>(c)<32)throw std::runtime_error("escaped/control keys unsupported");s+=c;}token('"');return s;}
  J parse(){struct Guard { unsigned& d; Guard(unsigned& d):d(d){if(++d>32)throw std::runtime_error("JSON nesting limit");} ~Guard(){--d;} } guard(depth);char c=peek();if(c=='['){++at;J::A a;if(peek()!=']')for(;;){a.push_back(parse());if(peek()!=',')break;++at;}token(']');return J(a);}if(c=='{'){++at;J::O o;if(peek()!='}')for(;;){auto k=key();token(':');if(o.count(k))throw std::runtime_error("duplicate field "+k);o.emplace(k,parse());if(peek()!=',')break;++at;}token('}');return J(o);}if(c<'0'||c>'9')throw std::runtime_error("JSON byte "+std::to_string(at)+": expected natural/array/object");std::size_t start=at;unsigned n=0;while(at<text.size()&&text[at]>='0'&&text[at]<='9'){if(n>1000000)throw std::runtime_error("integer resource limit");n=n*10+static_cast<unsigned>(text[at++]-'0');}if(at-start>1&&text[start]=='0')throw std::runtime_error("leading zero integer");return J(n);}
};
J::O parseInput(const std::string& text){if(text.size()>10000000)throw std::runtime_error("input byte limit 10MB");Parser p{text};auto j=p.parse();if(p.peek())throw std::runtime_error("trailing JSON");auto o=j.object();std::set<std::string> wanted={"version","rank","n","homological","internal","edges"};for(auto& [k,v]:o)if(!wanted.erase(k))throw std::runtime_error("unknown field "+k);if(!wanted.empty())throw std::runtime_error("missing field "+*wanted.begin());return o;}
unsigned weight(const M& m){unsigned d=0;for(unsigned i=0;i<m.size();++i)d+=m[i]*((1u<<(i+1))-1);return d;}
P polynomial(const J& j,unsigned rank){P p;for(const auto& row:j.array()){M m;for(const auto& x:row.array()){auto e=x.nat();if(e>32)throw std::runtime_error("exponent limit 32");m.push_back(e);}if(m.size()!=rank)throw std::runtime_error("monomial rank mismatch");p.push_back(m);}return p;}
void dump(std::ostream& o,const M& m){o<<'[';for(unsigned i=0;i<m.size();++i){if(i)o<<',';o<<m[i];}o<<']';}
void dump(std::ostream& o,const P& p){o<<'[';for(unsigned i=0;i<p.size();++i){if(i)o<<',';dump(o,p[i]);}o<<']';}
void weightedVectors(P& basis,M& m,unsigned pos,unsigned remaining){if(pos==m.size()){basis.push_back(m);return;}unsigned w=(1u<<(pos+1))-1;for(unsigned e=0;e<=remaining/w;++e){m[pos]=e;weightedVectors(basis,m,pos+1,remaining-e*w);}}
bool coeff(const P& p,const M& m){return std::count(p.begin(),p.end(),m)%2;}
struct Window { P basis;std::vector<T> expansions;std::string wire; };
Window window(unsigned rank,unsigned degree){Window w;M m(rank);weightedVectors(w.basis,m,0,degree);std::size_t size=0;std::ostringstream out;out<<"{\"expansions\":[";for(unsigned i=0;i<w.basis.size();++i){auto t=coproduct(w.basis[i]);size+=t.size();if(size>cap)throw std::runtime_error("coproduct window resource limit");if(i)out<<',';out<<'[';for(unsigned j=0;j<t.size();++j){if(j)out<<',';out<<'[';dump(out,t[j].first);out<<',';dump(out,t[j].second);out<<']';}out<<']';w.expansions.push_back(std::move(t));}out<<"],\"version\":1,\"window\":{\"degree\":"<<degree<<",\"rank\":"<<rank<<"}}";w.wire=out.str();return w;}
std::string produce(const std::string& input){if(input.size()>10000000)throw std::runtime_error("input byte limit 10MB");auto o=parseInput(input);unsigned version=o.at("version").nat(),rank=o.at("rank").nat(),n=o.at("n").nat();if(version!=1)throw std::runtime_error("unsupported version");if(rank<1||rank>8||n>32)throw std::runtime_error("resource limits rank 1..8,n 0..32");M hom,internal;for(auto& x:o.at("homological").array())hom.push_back(x.nat());for(auto& x:o.at("internal").array())internal.push_back(x.nat());if(hom.size()!=n||internal.size()!=n||o.at("edges").array().size()!=n*n)throw std::runtime_error("dense dimension mismatch");std::vector<P> edges;std::vector<unsigned> degrees;unsigned index=0;for(auto& x:o.at("edges").array()){unsigned i=index/n,j=index%n;try{auto p=polynomial(x,rank);unsigned degree=p.empty()?0:weight(p[0]);for(auto& m:p)if(hom[j]+1!=hom[i]||weight(m)+internal[j]!=internal[i])throw std::runtime_error("homological/internal degree mismatch");edges.push_back(p);degrees.push_back(degree);}catch(const std::exception& e){throw std::runtime_error("edge("+std::to_string(i)+","+std::to_string(j)+"): "+e.what());}++index;}
 std::map<unsigned,Window> windows;std::vector<P> products;std::vector<std::string> witnesses;std::size_t bytes=0;
 for(unsigned i=0;i<n;++i)for(unsigned j=0;j<n;++j)for(unsigned k=0;k<n;++k){unsigned dl=degrees[i*n+j],dr=degrees[j*n+k],bound=dl+dr;try{if(bound>12)throw std::runtime_error("product degree window limit 12");if(!windows.count(bound))windows.emplace(bound,window(rank,bound));auto& w=windows.at(bound);P output;for(unsigned b=0;b<w.basis.size();++b){bool bit=false;for(auto& term:w.expansions[b])bit^=coeff(edges[i*n+j],term.first)&&coeff(edges[j*n+k],term.second);if(bit)output.push_back(w.basis[b]);}products.push_back(output);auto wire="{\"finite\":"+w.wire+",\"leftDegree\":"+std::to_string(dl)+",\"rightDegree\":"+std::to_string(dr)+"}";bytes+=wire.size();if(bytes>100000000)throw std::runtime_error("certificate byte limit 100MB");witnesses.push_back(std::move(wire));}catch(const std::exception& e){throw std::runtime_error("product("+std::to_string(i)+","+std::to_string(j)+","+std::to_string(k)+"): "+e.what());}}
 for(unsigned i=0;i<n;++i)for(unsigned k=0;k<n;++k){std::set<M> parity;for(unsigned j=0;j<n;++j)for(auto& m:products[(i*n+j)*n+k]){if(!parity.erase(m))parity.insert(m);}if(!parity.empty())throw std::runtime_error("square-zero failure at source "+std::to_string(i)+", target "+std::to_string(k));}
 std::ostringstream out;out<<"{\"edges\":[";for(unsigned i=0;i<edges.size();++i){if(i)out<<',';dump(out,edges[i]);}out<<"],\"homological\":";dump(out,hom);out<<",\"internal\":";dump(out,internal);out<<",\"n\":"<<n<<",\"products\":[";for(unsigned i=0;i<products.size();++i){if(i)out<<',';dump(out,products[i]);}out<<"],\"rank\":"<<rank<<",\"version\":1,\"witnesses\":[";for(unsigned i=0;i<witnesses.size();++i){if(i)out<<',';out<<witnesses[i];}out<<"]}";return out.str();}
bool readBoundedLine(std::istream& input,std::string& line,bool& oversized){line.clear();oversized=false;bool any=false;char ch;while(input.get(ch)){any=true;if(ch=='\n')break;if(line.size()<10000000)line.push_back(ch);else oversized=true;}return any;}
int main(int argc,char** argv){if(argc>2){std::cerr<<"usage: generic-free-export [INPUT.jsonl|-]\n";return 2;}std::ifstream file;std::istream* input=&std::cin;if(argc==2&&std::string(argv[1])!="-"){file.open(argv[1]);if(!file){std::cerr<<"cannot open input\n";return 2;}input=&file;}std::string line;unsigned row=0;bool failed=false;bool oversized=false;while(readBoundedLine(*input,line,oversized)){++row;try{if(oversized)throw std::runtime_error("input byte limit 10MB");if(line.empty())throw std::runtime_error("blank JSONL record");std::cout<<produce(line)<<'\n';}catch(const std::exception& e){failed=true;std::cerr<<"line "<<row<<": "<<e.what()<<'\n';}}if(!row){std::cerr<<"empty JSONL input\n";return 1;}return failed?1:0;}
