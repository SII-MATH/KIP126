// Untrusted F2 witness synthesis. Lean independently checks every output equation.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmisleading-indentation"
#include "../IndexedFamilyProducer/json.hpp"
#pragma GCC diagnostic pop
#include <algorithm>
#include <optional>
#include <sstream>

namespace filtered {
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
  if (parser.p!=line.size()) throw std::runtime_error("trailing JSON");
  const auto& root=input.object();
  keys(root,{"version","data"},"input");
  if (root.at("version").nat()!=1) throw std::runtime_error("version: expected 1");
  const auto& data=root.at("data").object();
  keys(data,{"a","b","ha","hb","depth","s","n","f","source","target","x","y"},"data");
  auto bounded=[&](const std::string& name) {
    unsigned n=data.at(name).nat();
    if (n>64) throw std::runtime_error("data."+name+": resource limit64");
    return n;
  };
  unsigned a=bounded("a"), b=bounded("b"), ha=bounded("ha"), hb=bounded("hb");
  unsigned depth=bounded("depth"), s=bounded("s"), n=bounded("n");
  auto f=matrix(data,"f",b,a);
  auto x=vector(data.at("x"),a,"data.x"), y=vector(data.at("y"),b,"data.y");
  auto filtration=[&](const std::string& name,unsigned rows,unsigned cols) {
    const auto& raw=data.at(name).array();
    if (raw.size()!=depth) throw std::runtime_error("data."+name+": expected depth matrices");
    std::vector<Matrix> levels;
    for (unsigned i=0;i<depth;++i) {
      Matrix h(rows,cols);
      h.entries=vector(raw[i],rows*cols,"data."+name+"["+std::to_string(i)+"]");
      levels.push_back(std::move(h));
    }
    levels.emplace_back(rows,cols);
    return levels;
  };
  auto source=filtration("source",a,ha), target=filtration("target",b,hb);
  auto sourceAt=[&](unsigned i)->const Matrix& {return source[std::min(i,depth)];};
  auto targetAt=[&](unsigned i)->const Matrix& {return target[std::min(i,depth)];};
  auto identity=[](unsigned size) {
    Matrix m(size,size);
    for(unsigned i=0;i<size;++i)m.at(i,i)=1;
    return m;
  };
  auto requiredFactor=[&](const Matrix& map,const Matrix& h,const Matrix& k,const std::string& name) {
    auto witness=factor(map,h,k);
    if(!witness) throw std::runtime_error(name+": no full-subgroup factorization");
    if(compose(map,h).entries!=compose(k,*witness).entries)
      throw std::runtime_error(name+": internal factorization equation failure");
    return *witness;
  };
  Json::Array sourceFactors,targetFactors,mapFactors;
  auto ia=identity(a),ib=identity(b);
  for(unsigned i=0;i<depth;++i) {
    sourceFactors.push_back(json(requiredFactor(ia,sourceAt(i+1),sourceAt(i),
      "sourceFactors["+std::to_string(i)+"]").entries));
    targetFactors.push_back(json(requiredFactor(ib,targetAt(i+1),targetAt(i),
      "targetFactors["+std::to_string(i)+"]").entries));
    mapFactors.push_back(json(requiredFactor(f,sourceAt(i),targetAt(i),
      "mapFactors["+std::to_string(i)+"]").entries));
  }
  auto membership=[&](const Matrix& h,const Bits& v,const std::string& name) {
    auto witness=solve(h,v);
    if(!witness) throw std::runtime_error(name+": vector is outside the full subgroup");
    if(evaluate(h,*witness)!=v) throw std::runtime_error(name+": internal membership equation failure");
    return json(*witness);
  };
  Json sourceMember=membership(sourceAt(s),x,"sourceMember");
  Json imageMember=membership(targetAt(s+n),evaluate(f,x),"imageMember");
  Json targetMember=membership(targetAt(s+n),y,"targetMember");
  auto e=extension(f,sourceAt(s+1),targetAt(s+n+1),x,y,"extension");
  return Json(Json::Object{{"version",1u},{"data",root.at("data")},
    {"sourceFactors",Json(sourceFactors)},{"targetFactors",Json(targetFactors)},
    {"mapFactors",Json(mapFactors)},{"sourceMember",sourceMember},
    {"imageMember",imageMember},{"targetMember",targetMember},
    {"representative",json(e.rep)},{"sourceCorrection",json(e.source)},
    {"targetCorrection",json(e.target)}});
}
} // namespace filtered

int main(int argc, char** argv) {
  try {
    if (argc>2) throw std::runtime_error("usage: filtered-extension-export [INPUT.jsonl|-]");
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
        auto output=filtered::produce(line);
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
