// Explicit witness packer. It does not solve module relations or prove them.
// A batch line is RANK|INPUT|OUTPUT|RELATIONS|WITNESS.
// Expression: slash-separated polynomial slots; polynomial: semicolon-separated
// monomials; monomial: comma-separated variable IDs; u = unit, - = zero.
// Relations: colon-separated expressions or -. Witness: index@polynomial,
// separated by colon, or -. Whitespace is rejected.
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>
using Mon = std::vector<unsigned>;
using Poly = std::vector<Mon>;
using Expr = std::vector<Poly>;
std::vector<std::string> split(const std::string& s, char separator) {
  std::vector<std::string> out; std::size_t start = 0;
  for (;;) {
    auto end = s.find(separator, start);
    auto token = s.substr(start, end == std::string::npos ? end : end-start);
    if (token.empty()) throw std::runtime_error("empty field");
    out.push_back(token);
    if (end == std::string::npos) return out;
    start = end+1;
  }
}
unsigned natural(const std::string& s) {
  if (s.empty() || s.find_first_not_of("0123456789") != std::string::npos)
    throw std::runtime_error("invalid natural number");
  auto n = std::stoull(s);
  if (n > 1000000) throw std::runtime_error("integer exceeds producer limit");
  return static_cast<unsigned>(n);
}
Poly polynomial(const std::string& s) {
  if (s == "-") return {};
  Poly p;
  for (const auto& word : split(s, ';')) {
    Mon m;
    if (word != "u") for (const auto& id : split(word, ',')) m.push_back(natural(id));
    std::sort(m.begin(), m.end()); p.push_back(m);
  }
  return p;
}
Expr expression(const std::string& s, unsigned rank) {
  if (rank == 0) {
    if (s != "-") throw std::runtime_error("rank zero expects - expression");
    return {};
  }
  Expr e; for (const auto& p : split(s, '/')) e.push_back(polynomial(p));
  if (e.size() != rank) throw std::runtime_error("expression rank mismatch");
  return e;
}
void json(std::ostream& out, unsigned n) { out << n; }
template<class T> void json(std::ostream& out, const std::vector<T>& xs) {
  out << '[';
  for (std::size_t i=0; i<xs.size(); ++i) { if(i) out << ','; json(out, xs[i]); }
  out << ']';
}
std::string pack(const std::string& line) {
  if (line.find_first_of(" \t\r\n") != std::string::npos) throw std::runtime_error("whitespace forbidden");
  auto fields = split(line, '|');
  if(fields.size()!=5) throw std::runtime_error("expected five pipe-separated fields");
  auto rank=natural(fields[0]);
  if(rank>4096) throw std::runtime_error("rank exceeds producer limit 4096");
  auto input=expression(fields[1],rank), output=expression(fields[2],rank);
  std::vector<Expr> relations;
  if(fields[3]!="-") for(const auto& r:split(fields[3],':')) relations.push_back(expression(r,rank));
  std::vector<std::pair<unsigned,Poly>> terms;
  if(fields[4]!="-") for(const auto& t:split(fields[4],':')) {
    auto pair=split(t,'@'); if(pair.size()!=2) throw std::runtime_error("witness expects index@polynomial");
    auto index=natural(pair[0]); if(index>=relations.size()) throw std::runtime_error("relation index outside table");
    terms.push_back({index,polynomial(pair[1])});
  }
  std::ostringstream out;
  out << "{\"input\":";json(out,input);out << ",\"output\":";json(out,output);
  out << ",\"rank\":" << rank << ",\"relations\":";json(out,relations);
  out << ",\"terms\":[";
  for(std::size_t i=0;i<terms.size();++i) {
    if(i)out << ',';
    out << "{\"multiplier\":";json(out,terms[i].second);out << ",\"relation\":" << terms[i].first << '}';
  }
  out << "],\"version\":1}";return out.str();
}
int main(int argc,char**argv) {
  try {
    if(argc==2) {std::cout << pack(argv[1]) << '\n';return 0;}
    if(argc!=3 || std::string(argv[1])!="--batch") throw std::runtime_error("usage: module-export 'RANK|INPUT|OUTPUT|RELATIONS|WITNESS' | --batch FILE");
    std::ifstream in(argv[2]);if(!in)throw std::runtime_error("cannot open batch file");
    std::string line;unsigned number=0;
    while(std::getline(in,line)) {
      ++number;
      try { std::cout << pack(line) << '\n'; }
      catch(const std::exception&e) {throw std::runtime_error("line "+std::to_string(number)+": "+e.what());}
    }
  }catch(const std::exception&e){std::cerr << e.what() << '\n';return 1;}
}
