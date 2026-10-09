// Untrusted F2 contracting-homotopy solver and canonical JSONL exporter.
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>
using Bits = std::vector<unsigned char>;
unsigned nat(const std::string& s) {
  if (s.empty() || s.find_first_not_of("0123456789") != std::string::npos)
    throw std::runtime_error("expected decimal dimension");
  auto n = std::stoull(s);
  if (n > 256) throw std::runtime_error("dimension exceeds producer limit 256");
  return static_cast<unsigned>(n);
}
Bits bits(const std::string& s, unsigned expected) {
  if (expected == 0 && s == "-") return {};
  if (s.size() != expected || s.find_first_not_of("01") != std::string::npos)
    throw std::runtime_error("matrix: expected exact row-major bit count " + std::to_string(expected));
  Bits out; for (char c : s) out.push_back(c - '0'); return out;
}
void jsonBits(std::ostream& out, const Bits& b) {
  out << '[';
  for (unsigned i = 0; i < b.size(); ++i) { if (i) out << ','; out << (b[i] ? "true" : "false"); }
  out << ']';
}
std::string solve(const std::vector<std::string>& args) {
  if (args.size() != 5) throw std::runtime_error("expected K M N OUTGOING_BITS INCOMING_BITS");
  unsigned k = nat(args[0]), m = nat(args[1]), n = nat(args[2]);
  Bits outgoing = bits(args[3], k * m), incoming = bits(args[4], m * n);
  for (unsigned i = 0; i < k; ++i) for (unsigned j = 0; j < n; ++j) {
    bool value = false;
    for (unsigned r = 0; r < m; ++r) value ^= outgoing[i*m+r] && incoming[r*n+j];
    if (value) throw std::runtime_error("not a complex at (" + std::to_string(i) + "," + std::to_string(j) + ")");
  }
  using Mat = std::vector<Bits>;
  auto reduce = [](Mat a, unsigned cols) {
    std::vector<unsigned> pivots;
    unsigned rank = 0;
    for (unsigned j=0; j<cols && rank<a.size(); ++j) {
      unsigned p=rank; while (p<a.size() && !a[p][j]) ++p;
      if (p==a.size()) continue;
      std::swap(a[p],a[rank]);
      for (unsigned i=0;i<a.size();++i) if(i!=rank && a[i][j])
        for(unsigned c=j;c<cols;++c) a[i][c]^=a[rank][c];
      pivots.push_back(j); ++rank;
    }
    return std::make_pair(a,pivots);
  };
  Mat basis, lifts;
  auto append = [&](const Bits& v) {
    Mat trial=basis; trial.push_back(v);
    if(reduce(trial,m).second.size()==basis.size()) return false;
    basis.push_back(v); return true;
  };
  for(unsigned j=0;j<n;++j) {
    Bits v(m); for(unsigned i=0;i<m;++i) v[i]=incoming[i*n+j];
    if(append(v)) {Bits pre(n);pre[j]=1;lifts.push_back(pre);}
  }
  unsigned rankIn=basis.size();
  Mat outRows(k,Bits(m));
  for(unsigned i=0;i<k;++i)for(unsigned j=0;j<m;++j)outRows[i][j]=outgoing[i*m+j];
  auto rr=reduce(outRows,m);
  for(unsigned j=0;j<m;++j) {
    if(std::find(rr.second.begin(),rr.second.end(),j)!=rr.second.end())continue;
    Bits v(m);v[j]=1;
    for(unsigned i=0;i<rr.second.size();++i)v[rr.second[i]]=rr.first[i][j];
    append(v);
  }
  unsigned cycles=basis.size(), h=cycles-rankIn;
  for(unsigned j=0;j<m;++j){Bits v(m);v[j]=1;append(v);}
  // Invert the change-of-basis matrix [boundaries | homology | complement].
  Mat aug(m,Bits(2*m));
  for(unsigned i=0;i<m;++i){for(unsigned j=0;j<m;++j)aug[i][j]=basis[j][i];aug[i][m+i]=1;}
  for(unsigned j=0;j<m;++j){unsigned p=j;while(p<m&&!aug[p][j])++p;
    if(p==m)throw std::runtime_error("internal basis inversion failure");
    std::swap(aug[p],aug[j]);
    for(unsigned i=0;i<m;++i)if(i!=j&&aug[i][j])for(unsigned c=0;c<2*m;++c)aug[i][c]^=aug[j][c];}
  Bits inclusion(m*h), projection(h*m),up(n*m),down(m*k);
  for(unsigned i=0;i<m;++i)for(unsigned j=0;j<h;++j)inclusion[i*h+j]=basis[rankIn+j][i];
  for(unsigned i=0;i<h;++i)for(unsigned j=0;j<m;++j)projection[i*m+j]=aug[rankIn+i][m+j];
  for(unsigned i=0;i<n;++i)for(unsigned j=0;j<m;++j)for(unsigned b=0;b<rankIn;++b)
    up[i*m+j]^=lifts[b][i]&&aug[b][m+j];
  // Solve down * outgoing = projection onto the chosen complement, row by row.
  for(unsigned row=0;row<m;++row){
    Mat eq(m,Bits(k+1));
    for(unsigned j=0;j<m;++j){for(unsigned r=0;r<k;++r)eq[j][r]=outgoing[r*m+j];
      for(unsigned c=cycles;c<m;++c)eq[j][k]^=basis[c][row]&&aug[c][m+j];}
    unsigned r=0;std::vector<unsigned> ps;
    for(unsigned c=0;c<k&&r<m;++c){unsigned p=r;while(p<m&&!eq[p][c])++p;if(p==m)continue;
      std::swap(eq[p],eq[r]);for(unsigned i=0;i<m;++i)if(i!=r&&eq[i][c])for(unsigned j=c;j<=k;++j)eq[i][j]^=eq[r][j];
      ps.push_back(c);++r;}
    for(unsigned i=r;i<m;++i)if(eq[i][k])throw std::runtime_error("internal homotopy failure");
    for(unsigned i=0;i<r;++i)down[row*k+ps[i]]=eq[i][k];
  }
  std::ostringstream out;
  out << "{\"down\":";jsonBits(out,down);
  out << ",\"h\":" << h << ",\"inclusion\":";jsonBits(out,inclusion);
  out << ",\"incoming\":";jsonBits(out,incoming);
  out << ",\"k\":" << k << ",\"m\":" << m << ",\"n\":" << n << ",\"outgoing\":";jsonBits(out,outgoing);
  out << ",\"projection\":";jsonBits(out,projection);
  out << ",\"up\":";jsonBits(out,up);out << ",\"version\":1}";
  return out.str();
}
int main(int argc, char** argv) {
  try {
    if (argc == 3 && std::string(argv[1]) == "--batch") {
      std::ifstream in(argv[2]); if (!in) throw std::runtime_error("cannot open batch input");
      std::string line; unsigned number = 0;
      while (std::getline(in, line)) {
        ++number; if (line.empty()) throw std::runtime_error("blank line " + std::to_string(number));
        std::istringstream stream(line); std::vector<std::string> args; std::string token;
        while (stream >> token) args.push_back(token);
        try { std::cout << solve(args) << '\n'; }
        catch (const std::exception& e) { throw std::runtime_error("line " + std::to_string(number) + ": " + e.what()); }
      }
      if(number==0)throw std::runtime_error("empty batch");
    } else {
      if (argc != 6) throw std::runtime_error("usage: page-transition-export K M N OUTGOING_BITS INCOMING_BITS | --batch FILE");
      std::cout << solve(std::vector<std::string>(argv+1, argv+argc)) << '\n';
    }
  } catch (const std::exception& e) { std::cerr << e.what() << '\n'; return 1; }
  return 0;
}
