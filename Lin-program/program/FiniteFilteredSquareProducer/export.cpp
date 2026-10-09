// Untrusted F2 witness synthesis. Lean independently checks every output equation.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmisleading-indentation"
#include "../IndexedFamilyProducer/json.hpp"
#pragma GCC diagnostic pop
#include <algorithm>
#include <optional>
#include <sstream>

namespace squarefiltered {
using Bits = std::vector<unsigned char>;
struct Matrix {
  unsigned rows, cols;
  Bits entries;
  Matrix(unsigned m, unsigned n) : rows(m), cols(n), entries(m*n, 0) {}
  unsigned char& at(unsigned i, unsigned j) { return entries[i*cols+j]; }
  unsigned char at(unsigned i, unsigned j) const { return entries[i*cols+j]; }
};

Bits vector(const Json& value, unsigned size, const std::string& name) {
  bits(value, size, name);
  Bits result;
  for (const auto& bit : value.array()) result.push_back(std::get<bool>(bit.v));
  return result;
}

Matrix matrix(const Json::Object& data, const std::string& name, unsigned m, unsigned n) {
  Matrix result(m, n);
  result.entries = vector(data.at(name), m*n, "data."+name);
  return result;
}

Bits evaluate(const Matrix& m, const Bits& x) {
  Bits result(m.rows, 0);
  for (unsigned i=0; i<m.rows; ++i)
    for (unsigned j=0; j<m.cols; ++j) result[i] ^= m.at(i,j) & x[j];
  return result;
}

Bits plus(Bits x, const Bits& y) {
  for (unsigned i=0; i<x.size(); ++i) x[i] ^= y[i];
  return x;
}

Matrix compose(const Matrix& f, const Matrix& g) {
  Matrix result(f.rows, g.cols);
  for (unsigned i=0; i<f.rows; ++i)
    for (unsigned j=0; j<g.cols; ++j)
      for (unsigned k=0; k<f.cols; ++k) result.at(i,j) ^= f.at(i,k) & g.at(k,j);
  return result;
}

// Pivots are chosen left-to-right, rows top-to-bottom; all free variables are zero.
std::optional<Bits> solve(Matrix equations, Bits rhs) {
  unsigned rank=0;
  std::vector<unsigned> pivots;
  for (unsigned col=0; col<equations.cols && rank<equations.rows; ++col) {
    unsigned pivot=rank;
    while (pivot<equations.rows && !equations.at(pivot,col)) ++pivot;
    if (pivot==equations.rows) continue;
    for (unsigned j=0; j<equations.cols; ++j) std::swap(equations.at(rank,j), equations.at(pivot,j));
    std::swap(rhs[rank],rhs[pivot]);
    for (unsigned i=0; i<equations.rows; ++i) if (i!=rank && equations.at(i,col)) {
      for (unsigned j=0; j<equations.cols; ++j) equations.at(i,j) ^= equations.at(rank,j);
      rhs[i] ^= rhs[rank];
    }
    pivots.push_back(col);
    ++rank;
  }
  for (unsigned i=rank; i<equations.rows; ++i) if (rhs[i]) return std::nullopt;
  Bits result(equations.cols,0);
  for (unsigned i=0; i<rank; ++i) result[pivots[i]]=rhs[i];
  return result;
}

std::optional<Matrix> factor(const Matrix& f, const Matrix& H, const Matrix& K) {
  Matrix rhs=compose(f,H), result(K.cols,H.cols);
  for (unsigned j=0; j<H.cols; ++j) {
    Bits column(f.rows);
    for (unsigned i=0; i<f.rows; ++i) column[i]=rhs.at(i,j);
    auto witness=solve(K,column);
    if (!witness) return std::nullopt;
    for (unsigned i=0; i<K.cols; ++i) result.at(i,j)=(*witness)[i];
  }
  return result;
}

struct Extension { Bits rep, source, target; };
Extension extension(const Matrix& f, const Matrix& H, const Matrix& K,
                    const Bits& x, const Bits& y, const std::string& name) {
  Matrix left=compose(f,H), equations(f.rows,H.cols+K.cols);
  for (unsigned i=0; i<f.rows; ++i) {
    for (unsigned j=0; j<H.cols; ++j) equations.at(i,j)=left.at(i,j);
    for (unsigned j=0; j<K.cols; ++j) equations.at(i,H.cols+j)=K.at(i,j);
  }
  auto solution=solve(equations,plus(y,evaluate(f,x)));
  if (!solution) throw std::runtime_error(name+": no representative/correction witnesses");
  Bits source(solution->begin(),solution->begin()+H.cols);
  Bits target(solution->begin()+H.cols,solution->end());
  Bits rep=plus(x,evaluate(H,source));
  if (evaluate(H,source)!=plus(rep,x) || evaluate(K,target)!=plus(evaluate(f,rep),y))
    throw std::runtime_error(name+": internal witness equation failure");
  return {rep,source,target};
}

Json json(const Bits& v) {
  Json::Array result;
  for (auto b : v) result.emplace_back(bool(b));
  return Json(result);
}

Json produce(const std::string& line) {
  Parser parser{line};
  auto input=parser.parse();
  parser.peek();
  if(parser.p!=line.size()) throw std::runtime_error("trailing JSON");
  const auto& root=input.object();
  keys(root,{"version","data","firstBranch"},"input");
  if(root.at("version").nat()!=1) throw std::runtime_error("version: expected 1");
  auto requested=root.at("firstBranch").string();
  if(requested!="auto" && requested!="f" && requested!="p")
    throw std::runtime_error("firstBranch: expected auto, f, or p");
  const auto& data=root.at("data").object();
  keys(data,{"a","b","c","d","ha","hb","hc","hd","depth","s","n","m","l",
    "f","p","q","g","sourceA","sourceB","sourceC","sourceD","x","y","z","w"},"data");
  auto bounded=[&](const std::string& name) {
    unsigned value=data.at(name).nat();
    if(value>64) throw std::runtime_error("data."+name+": resource limit64");
    return value;
  };
  unsigned a=bounded("a"),b=bounded("b"),c=bounded("c"),d=bounded("d");
  unsigned ha=bounded("ha"),hb=bounded("hb"),hc=bounded("hc"),hd=bounded("hd");
  unsigned depth=bounded("depth"),s=bounded("s"),n=bounded("n"),m=bounded("m"),l=bounded("l");
  if(n>m+l) throw std::runtime_error("length: n exceeds m+l");
  auto f=matrix(data,"f",b,a), p=matrix(data,"p",c,a);
  auto q=matrix(data,"q",d,b), g=matrix(data,"g",d,c);
  if(compose(q,f).entries!=compose(g,p).entries)
    throw std::runtime_error("commutes: q*f differs from g*p");
  auto x=vector(data.at("x"),a,"data.x"), y=vector(data.at("y"),b,"data.y");
  auto z=vector(data.at("z"),c,"data.z"), w=vector(data.at("w"),d,"data.w");
  auto filtration=[&](const std::string& name,unsigned rows,unsigned cols) {
    const auto& raw=data.at(name).array();
    if(raw.size()!=depth) throw std::runtime_error("data."+name+": expected depth matrices");
    std::vector<Matrix> levels;
    for(unsigned i=0;i<depth;++i) {
      Matrix h(rows,cols);
      h.entries=vector(raw[i],rows*cols,"data."+name+"["+std::to_string(i)+"]");
      levels.push_back(std::move(h));
    }
    levels.emplace_back(rows,cols);
    return levels;
  };
  auto A=filtration("sourceA",a,ha),B=filtration("sourceB",b,hb);
  auto C=filtration("sourceC",c,hc),D=filtration("sourceD",d,hd);
  auto at=[&](const std::vector<Matrix>& levels,unsigned i)->const Matrix& {
    return levels[std::min(i,depth)];
  };
  auto identity=[](unsigned size) {
    Matrix result(size,size);
    for(unsigned i=0;i<size;++i) result.at(i,i)=1;
    return result;
  };
  auto requiredFactor=[&](const Matrix& map,const Matrix& h,const Matrix& k,const std::string& name) {
    auto witness=factor(map,h,k);
    if(!witness) throw std::runtime_error(name+": no full-subgroup factorization");
    if(compose(map,h).entries!=compose(k,*witness).entries)
      throw std::runtime_error(name+": internal factorization equation failure");
    return *witness;
  };
  Json::Object output{{"version",1u},{"data",root.at("data")}};
  auto descent=[&](const std::string& name,const std::vector<Matrix>& levels,unsigned rows) {
    Json::Array factors;
    auto id=identity(rows);
    for(unsigned i=0;i<depth;++i) factors.push_back(json(requiredFactor(id,at(levels,i+1),at(levels,i),
      name+"["+std::to_string(i)+"]").entries));
    output.insert_or_assign(name,Json(factors));
  };
  descent("descentA",A,a);descent("descentB",B,b);descent("descentC",C,c);descent("descentD",D,d);
  auto preservation=[&](const std::string& name,const Matrix& map,
      const std::vector<Matrix>& source,const std::vector<Matrix>& target) {
    Json::Array factors;
    for(unsigned i=0;i<depth;++i) factors.push_back(json(requiredFactor(map,at(source,i),at(target,i),
      name+"["+std::to_string(i)+"]").entries));
    output.insert_or_assign(name,Json(factors));
  };
  preservation("filteredF",f,A,B);preservation("filteredP",p,A,C);
  preservation("filteredQ",q,B,D);preservation("filteredG",g,C,D);
  auto membership=[&](const std::string& name,const Matrix& h,const Bits& v) {
    auto witness=solve(h,v);
    if(!witness) throw std::runtime_error(name+": vector is outside the full subgroup");
    output.insert_or_assign(name,json(*witness));
  };
  membership("memberX",at(A,s),x);membership("memberY",at(B,s+n),y);
  membership("memberZ",at(C,s+m),z);membership("memberW",at(D,s+m+l),w);
  auto addExtension=[&](const std::string& name,const Matrix& map,const Matrix& h,const Matrix& k,
      const Bits& source,const Bits& target) {
    auto e=extension(map,h,k,source,target,name);
    output.insert_or_assign(name+"Rep",json(e.rep));output.insert_or_assign(name+"Source",json(e.source));output.insert_or_assign(name+"Target",json(e.target));
  };
  addExtension("first",f,at(A,s+1),at(B,s+n+1),x,y);
  addExtension("second",p,at(A,s+1),at(C,s+m+1),x,z);
  addExtension("third",g,at(C,s+m+1),at(D,s+m+l+1),z,w);
  auto alongF=factor(f,at(A,s+1),at(B,s+n+1));
  auto alongP=factor(p,at(A,s+1),at(C,s+m+1));
  if(requested=="f" || (requested=="auto" && alongF)) {
    if(!alongF) throw std::runtime_error("firstFactor.f: no full-subgroup factorization");
    output.insert_or_assign("firstBranch",Json(std::string("f")));output.insert_or_assign("firstFactor",json(alongF->entries));
  } else {
    if(!alongP) throw std::runtime_error("firstFactor.p: no full-subgroup factorization");
    output.insert_or_assign("firstBranch",Json(std::string("p")));output.insert_or_assign("firstFactor",json(alongP->entries));
  }
  output.insert_or_assign("lastFactor",json(requiredFactor(g,at(C,s+m+1),at(D,s+m+l+1),"lastFactor").entries));
  return Json(output);
}
} // namespace squarefiltered

int main(int argc, char** argv) {
  try {
    if (argc>2) throw std::runtime_error("usage: finite-filtered-square-export [INPUT.jsonl|-]");
    std::ifstream file;
    std::istream* input=&std::cin;
    std::string label="stdin";
    if (argc==2 && std::string(argv[1])!="-") {
      label=argv[1]; file.open(label);
      if (!file) throw std::runtime_error("cannot open input "+label);
      input=&file;
    }
    std::string line;
    unsigned row=0;
    bool failed=false, oversized=false;
    while (boundedLine(*input,line,oversized)) {
      ++row;
      try {
        if (oversized) throw std::runtime_error("record byte limit10MB");
        auto output=squarefiltered::produce(line);
        dump(std::cout,output); std::cout<<'\n';
      } catch (const std::exception& e) {
        failed=true; std::cerr<<label<<':'<<row<<": "<<e.what()<<'\n';
      }
    }
    if (input->bad() || row==0) throw std::runtime_error("read failure or empty input");
    std::cout.flush();
    if (!std::cout) throw std::runtime_error("output write failed");
    return failed?1:0;
  } catch (const std::exception& e) {
    std::cerr<<e.what()<<'\n'; return 1;
  }
}
