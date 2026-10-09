#define main generic_free_export_entry
#include "export.cpp"
#undef main

using Bits=std::vector<bool>;
struct Coord { unsigned generator; M monomial; };
struct Component { unsigned s,t;std::vector<Coord> source,target;Bits entries;std::vector<P> products;std::vector<std::string> witnesses; };
struct Input { unsigned rank,n;M hom,internal;std::vector<P> edges; };
Input readData(const std::string& line){if(line.size()>10000000)throw std::runtime_error("input byte limit 10MB");auto o=parseInput(line);Input d{o.at("rank").nat(),o.at("n").nat(),{},{},{}};if(o.at("version").nat()!=1||d.rank<1||d.rank>8||d.n>32)throw std::runtime_error("invalid version or resource bounds");for(auto& x:o.at("homological").array())d.hom.push_back(x.nat());for(auto& x:o.at("internal").array())d.internal.push_back(x.nat());if(d.hom.size()!=d.n||d.internal.size()!=d.n||o.at("edges").array().size()!=d.n*d.n)throw std::runtime_error("dense input dimensions");for(auto& x:o.at("edges").array())d.edges.push_back(polynomial(x,d.rank));for(unsigned i=0;i<d.n;++i)for(unsigned j=0;j<d.n;++j)for(auto& m:d.edges[i*d.n+j])if(d.hom[j]+1!=d.hom[i]||weight(m)+d.internal[j]!=d.internal[i])throw std::runtime_error("edge("+std::to_string(i)+","+std::to_string(j)+"): grading mismatch");return d;}
std::vector<Coord> coordinates(const Input& d,int s,unsigned t){std::vector<Coord> out;P basis;M m(d.rank);weightedVectors(basis,m,0,t);for(unsigned i=0;i<d.n;++i)if(s>=0&&d.hom[i]==static_cast<unsigned>(s))for(auto& a:basis)if(weight(a)+d.internal[i]==t)out.push_back({i,a});if(out.size()>64)throw std::runtime_error("component dimension limit 64");return out;}
std::pair<P,std::string> product(unsigned rank,const M& a,const P& b){unsigned dl=weight(a),dr=b.empty()?0:weight(b.front()),bound=dl+dr;if(bound>12)throw std::runtime_error("component product window limit12");for(auto& m:b)if(weight(m)!=dr)throw std::runtime_error("nonhomogeneous edge");auto w=window(rank,bound);P output;for(unsigned z=0;z<w.basis.size();++z){bool bit=false;for(auto& term:w.expansions[z])bit^=(term.first==a)&&coeff(b,term.second);if(bit)output.push_back(w.basis[z]);}return {output,"{\"finite\":"+w.wire+",\"leftDegree\":"+std::to_string(dl)+",\"rightDegree\":"+std::to_string(dr)+"}"};}
Component component(const Input& d,unsigned s,unsigned t){Component c{s,t,coordinates(d,s,t),coordinates(d,static_cast<int>(s)-1,t),{},{},{}};std::size_t witnessBytes=0;c.entries.resize(c.target.size()*c.source.size());for(unsigned col=0;col<c.source.size();++col){auto& x=c.source[col];for(unsigned j=0;j<d.n;++j){std::pair<P,std::string> p;try{p=product(d.rank,x.monomial,d.edges[x.generator*d.n+j]);}catch(const std::exception& e){throw std::runtime_error("column "+std::to_string(col)+",generator "+std::to_string(j)+": "+e.what());}witnessBytes+=p.second.size();if(witnessBytes>100000000)throw std::runtime_error("component witness byte limit100MB at column "+std::to_string(col)+",generator "+std::to_string(j));for(unsigned row=0;row<c.target.size();++row)if(c.target[row].generator==j)c.entries[row*c.source.size()+col]=coeff(p.first,c.target[row].monomial);for(auto& m:p.first){if(d.hom[j]+1!=s||weight(m)+d.internal[j]!=t)throw std::runtime_error("column "+std::to_string(col)+",generator "+std::to_string(j)+": product outside target component");}c.products.push_back(std::move(p.first));c.witnesses.push_back(std::move(p.second));}}return c;}
void dumpBits(std::ostream& o,const Bits& b){o<<'[';for(unsigned i=0;i<b.size();++i){if(i)o<<',';o<<(b[i]?"true":"false");}o<<']';}
void dumpCoords(std::ostream& o,const std::vector<Coord>& c){o<<'[';for(unsigned i=0;i<c.size();++i){if(i)o<<',';o<<"{\"generator\":"<<c[i].generator<<",\"monomial\":";dump(o,c[i].monomial);o<<'}';}o<<']';}
void dumpComponent(std::ostream& o,const Input& d,const Component& c){o<<"{\"entries\":";dumpBits(o,c.entries);o<<",\"n\":"<<d.n<<",\"products\":[";for(unsigned i=0;i<c.products.size();++i){if(i)o<<',';dump(o,c.products[i]);}o<<"],\"rank\":"<<d.rank<<",\"source\":";dumpCoords(o,c.source);o<<",\"sourceS\":"<<c.s<<",\"t\":"<<c.t<<",\"target\":";dumpCoords(o,c.target);o<<",\"targetKind\":\""<<(c.s?"component":"zero")<<"\",\"targetS\":"<<(c.s?c.s-1:0)<<",\"version\":1,\"witnesses\":[";for(unsigned i=0;i<c.witnesses.size();++i){if(i)o<<',';o<<c.witnesses[i];}o<<"]}";}
void xorBits(Bits& a,const Bits& b){for(unsigned i=0;i<a.size();++i)a[i]=a[i]!=b[i];}
bool solve(std::vector<Bits> cols,Bits target,Bits& solution){unsigned v=cols.size(),eq=target.size();std::vector<Bits> piv(eq),expr(eq);for(unsigned j=0;j<v;++j){Bits x=cols[j],e(v);e[j]=true;for(unsigned i=0;i<eq;++i)if(x[i]){if(piv[i].empty()){piv[i]=x;expr[i]=e;break;}xorBits(x,piv[i]);xorBits(e,expr[i]);}}solution=Bits(v);for(unsigned i=0;i<eq;++i)if(target[i]){if(piv[i].empty())return false;xorBits(target,piv[i]);xorBits(solution,expr[i]);}return true;}
std::string exact(const Input& d,unsigned s,unsigned t){auto outgoing=component(d,s,t),incoming=component(d,s+1,t);unsigned m=outgoing.source.size(),n=incoming.source.size(),k=outgoing.target.size();if(incoming.target.size()!=m)throw std::runtime_error("middle coordinate mismatch");bool complex=true;for(unsigned i=0;i<k;++i)for(unsigned j=0;j<n;++j){bool bit=false;for(unsigned h=0;h<m;++h)bit^=outgoing.entries[i*m+h]&&incoming.entries[h*n+j];complex&=!bit;}if(static_cast<std::size_t>(m)*m*(n*m+m*k)>100000000)throw std::runtime_error("contraction system bit limit100M");std::vector<Bits> cols;for(unsigned h=0;h<n;++h)for(unsigned j=0;j<m;++j){Bits b(m*m);for(unsigned i=0;i<m;++i)b[i*m+j]=incoming.entries[i*n+h];cols.push_back(b);}for(unsigned i=0;i<m;++i)for(unsigned h=0;h<k;++h){Bits b(m*m);for(unsigned j=0;j<m;++j)b[i*m+j]=outgoing.entries[h*m+j];cols.push_back(b);}Bits target(m*m),solution;for(unsigned i=0;i<m;++i)target[i*m+i]=true;bool found=complex&&solve(cols,target,solution);Bits up,down;if(found){up=Bits(solution.begin(),solution.begin()+n*m);down=Bits(solution.begin()+n*m,solution.end());}std::ostringstream out;out<<"{\"down\":";dumpBits(out,down);out<<",\"incoming\":";dumpComponent(out,d,incoming);out<<",\"outgoing\":";dumpComponent(out,d,outgoing);out<<",\"s\":"<<s<<",\"status\":\""<<(found?"exact":complex?"nonexact":"not_complex")<<"\",\"t\":"<<t<<",\"up\":";dumpBits(out,up);out<<",\"version\":1}";return out.str();}

Bits readAugmentation(const std::string& text,const Input& d){
  if(text.size()>1000000)throw std::runtime_error("augmentation byte limit1MB");
  // A separate Boolean parser preserves the strict Lean augmentation schema.
  std::string normalized; bool quoted=false;
  for(std::size_t i=0;i<text.size();){
    if(text[i]=='"'){quoted=!quoted;normalized+=text[i++];}
    else if(!quoted&&text.compare(i,4,"true")==0){normalized+='1';i+=4;}
    else if(!quoted&&text.compare(i,5,"false")==0){normalized+='0';i+=5;}
    else if(!quoted&&std::isdigit(static_cast<unsigned char>(text[i]))){
      // Only the version may be numeric; validate values in the original text below.
      normalized+=text[i++];
    }else normalized+=text[i++];
  }
  Parser p{normalized};auto o=p.parse().object();if(p.peek())throw std::runtime_error("augmentation trailing JSON");
  if(o.size()!=2||!o.count("version")||!o.count("values")||o.at("version").nat()!=1)throw std::runtime_error("augmentation fields/version");
  auto left=text.find('['),right=text.find(']');if(left==std::string::npos||right==std::string::npos)throw std::runtime_error("augmentation values array");
  for(std::size_t i=left+1;i<right;++i)if(std::isdigit(static_cast<unsigned char>(text[i])))throw std::runtime_error("augmentation values must be Boolean");
  Bits values;for(auto& x:o.at("values").array()){auto v=x.nat();if(v>1)throw std::runtime_error("augmentation Boolean");values.push_back(v);}
  std::ostringstream canonical;canonical<<"{\"values\":";dumpBits(canonical,values);canonical<<",\"version\":1}";
  std::string compact;for(char ch:text)if(!std::isspace(static_cast<unsigned char>(ch)))compact+=ch;
  if(compact!=canonical.str())throw std::runtime_error("augmentation noncanonical JSON/types");
  if(values.size()!=d.n)throw std::runtime_error("augmentation values dimension");bool one=false;
  for(unsigned i=0;i<d.n;++i){if(values[i]){one=true;if(d.hom[i]||d.internal[i])throw std::runtime_error("augmentation nonzero off degree0 generator "+std::to_string(i));}
    for(unsigned j=0;j<d.n;++j)for(auto& m:d.edges[i*d.n+j])if(!weight(m))throw std::runtime_error("minimality zero-weight edge");}
  if(!one)throw std::runtime_error("augmentation not surjective");return values;
}
std::string augmented(const Input& d,const Bits& values,unsigned t){
  auto incoming=component(d,1,t);auto middle=coordinates(d,0,t);unsigned m=middle.size(),n=incoming.source.size(),k=t==0?1:0;
  Bits outgoing(k*m);for(unsigned j=0;j<m&&k;++j)outgoing[j]=weight(middle[j].monomial)==0&&values[middle[j].generator];
  for(unsigned i=0;i<k;++i)for(unsigned j=0;j<n;++j){bool b=false;for(unsigned h=0;h<m;++h)b^=outgoing[i*m+h]&&incoming.entries[h*n+j];if(b)throw std::runtime_error("augmentation boundary nonzero");}
  if(static_cast<std::size_t>(m)*m*(n*m+m*k)>100000000)throw std::runtime_error("contraction resource limit");
  std::vector<Bits> cols;
  for(unsigned h=0;h<n;++h)for(unsigned j=0;j<m;++j){Bits b(m*m);for(unsigned i=0;i<m;++i)b[i*m+j]=incoming.entries[i*n+h];cols.push_back(b);}
  for(unsigned i=0;i<m;++i)for(unsigned h=0;h<k;++h){Bits b(m*m);for(unsigned j=0;j<m;++j)b[i*m+j]=outgoing[h*m+j];cols.push_back(b);}
  Bits target(m*m),solution;for(unsigned i=0;i<m;++i)target[i*m+i]=true;
  if(!solve(cols,target,solution))throw std::runtime_error("no augmented contraction");
  Bits up(solution.begin(),solution.begin()+n*m),down(solution.begin()+n*m,solution.end());
  std::ostringstream out;out<<"{\"down\":";dumpBits(out,down);out<<",\"incoming\":";dumpComponent(out,d,incoming);out<<",\"t\":"<<t<<",\"up\":";dumpBits(out,up);out<<",\"version\":1}";return out.str();
}
int main(int argc,char** argv){try{
  if(argc!=5)throw std::runtime_error("usage: augmented DATA.jsonl AUGMENTATION.json T_MAX OUTPUT.jsonl");
  unsigned maxT=number(argv[3]);if(maxT>12)throw std::runtime_error("t limit12");
  std::ifstream in(argv[1]),ai(argv[2]);if(!in||!ai)throw std::runtime_error("input open failed");
  std::string line,at((std::istreambuf_iterator<char>(ai)),{});if(!std::getline(in,line))throw std::runtime_error("empty data");
  auto d=readData(line);auto a=readAugmentation(at,d);while(std::getline(in,line))if(!line.empty())throw std::runtime_error("expected exactly one data record");if(in.bad())throw std::runtime_error("data read failed");
  std::ostringstream buffer;for(unsigned t=0;t<=maxT;++t){try{buffer<<augmented(d,a,t)<<'\n';}catch(const std::exception& e){throw std::runtime_error("component(0,"+std::to_string(t)+"): "+e.what());}}
  std::ofstream out(argv[4]);if(!out)throw std::runtime_error("output open failed");out<<buffer.str();out.flush();if(!out)throw std::runtime_error("output write failed");out.close();if(!out)throw std::runtime_error("output close failed");return 0;
}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
