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
  if (n > 32) throw std::runtime_error("dimension exceeds producer limit 32");
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
  unsigned variables = n*m + m*k;
  std::vector<Bits> equations(m*m, Bits(variables+1));
  for (unsigned i = 0; i < m; ++i) for (unsigned j = 0; j < m; ++j) {
    auto& equation = equations[i*m+j];
    for (unsigned r = 0; r < n; ++r) equation[r*m+j] ^= incoming[i*n+r];
    for (unsigned r = 0; r < k; ++r) equation[n*m+i*k+r] ^= outgoing[r*m+j];
    equation[variables] = i == j;
  }
  // Deterministic reduced row echelon form; free variables are fixed to zero.
  std::vector<unsigned> pivotColumns;
  unsigned row = 0;
  for (unsigned column = 0; column < variables && row < equations.size(); ++column) {
    unsigned pivot = row;
    while (pivot < equations.size() && !equations[pivot][column]) ++pivot;
    if (pivot == equations.size()) continue;
    std::swap(equations[row], equations[pivot]);
    for (unsigned other = 0; other < equations.size(); ++other)
      if (other != row && equations[other][column])
        for (unsigned c = column; c <= variables; ++c) equations[other][c] ^= equations[row][c];
    pivotColumns.push_back(column); ++row;
  }
  for (unsigned i = row; i < equations.size(); ++i)
    if (equations[i][variables]) throw std::runtime_error("complex is not exact: contraction system inconsistent");
  Bits solution(variables);
  for (unsigned i = 0; i < row; ++i) solution[pivotColumns[i]] = equations[i][variables];
  Bits up(solution.begin(), solution.begin()+n*m), down(solution.begin()+n*m, solution.end());
  std::ostringstream out;
  out << "{\"down\":"; jsonBits(out, down);
  out << ",\"incoming\":"; jsonBits(out, incoming);
  out << ",\"k\":" << k << ",\"m\":" << m << ",\"n\":" << n << ",\"outgoing\":";
  jsonBits(out, outgoing); out << ",\"up\":"; jsonBits(out, up); out << ",\"version\":1}";
  return out.str();
}
int main(int argc, char** argv) {
  try {
    if (argc == 3 && std::string(argv[1]) == "--batch") {
      std::ifstream in(argv[2]); if (!in) throw std::runtime_error("cannot open batch input");
      std::string line; unsigned number = 0;
      while (std::getline(in, line)) {
        ++number; if (line.empty()) continue;
        std::istringstream stream(line); std::vector<std::string> args; std::string token;
        while (stream >> token) args.push_back(token);
        try { std::cout << solve(args) << '\n'; }
        catch (const std::exception& e) { throw std::runtime_error("line " + std::to_string(number) + ": " + e.what()); }
      }
    } else {
      if (argc != 6) throw std::runtime_error("usage: resolution-export K M N OUTGOING_BITS INCOMING_BITS | --batch FILE");
      std::cout << solve(std::vector<std::string>(argv+1, argv+argc)) << '\n';
    }
  } catch (const std::exception& e) { std::cerr << e.what() << '\n'; return 1; }
}
