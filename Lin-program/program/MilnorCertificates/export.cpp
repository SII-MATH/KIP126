// Untrusted prime-two Milnor coproduct certificate producer.
// Usage: exporter RANK DEGREE LEFT RIGHT OUTPUT; polynomials use a,b;c,d or -.
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>
using M = std::vector<unsigned>;
using P = std::vector<M>;
using T = std::vector<std::pair<M, M>>;
constexpr std::size_t cap = 1000000;
unsigned number(const std::string& s) {
  if (s.empty() || s.find_first_not_of("0123456789") != std::string::npos)
    throw std::runtime_error("expected nonnegative decimal integer");
  auto n = std::stoull(s);
  if (n > 32) throw std::runtime_error("producer resource limit: integer > 32");
  return static_cast<unsigned>(n);
}
P parse(const std::string& s, unsigned rank, unsigned bound) {
  if (s == "-") return {};
  P p; std::stringstream rows(s); std::string row;
  if (s.empty() || s.back() == ';') throw std::runtime_error("empty polynomial row");
  while (std::getline(rows, row, ';')) {
    M m; std::stringstream cells(row); std::string cell;
    if (row.empty() || row.back() == ',') throw std::runtime_error("empty exponent");
    while (std::getline(cells, cell, ',')) m.push_back(number(cell));
    if (m.size() != rank) throw std::runtime_error("wrong monomial rank");
    unsigned degree = 0;
    for (unsigned j = 0; j < rank; ++j) degree += m[j] * ((1u << (j + 1)) - 1);
    if (degree > bound) throw std::runtime_error("monomial outside window");
    p.push_back(m);
  }
  return p;
}
M add(M a, const M& b) { for (unsigned j = 0; j < a.size(); ++j) a[j] += b[j]; return a; }
T multiply(const T& a, const T& b) {
  if (!b.empty() && a.size() > cap / b.size()) throw std::runtime_error("expansion resource limit");
  T out;
  for (const auto& x : a) for (const auto& y : b)
    out.push_back({add(x.first, y.first), add(x.second, y.second)});
  return out;
}
T coproduct(const M& m) {
  auto r = static_cast<unsigned>(m.size()); M zero(r); T out{{zero, zero}};
  for (unsigned j = 0; j < r; ++j) {
    T generator;
    for (unsigned i = 0; i <= j + 1; ++i) {
      M a(r), b(r);
      if (j + 1 > i) a[j - i] = 1u << i;
      if (i > 0) b[i - 1] = 1;
      generator.push_back({a, b});
    }
    T power{{zero, zero}};
    for (unsigned e = 0; e < m[j]; ++e) power = multiply(power, generator);
    out = multiply(out, power);
  }
  return out;
}
void vectors(P& result, M& m, unsigned position, unsigned bound) {
  if (position == m.size()) {
    unsigned d = 0;
    for (unsigned j = 0; j < m.size(); ++j) d += m[j] * ((1u << (j + 1)) - 1);
    if (d <= bound) result.push_back(m);
    return;
  }
  for (unsigned e = 0; e <= bound; ++e) { m[position] = e; vectors(result, m, position + 1, bound); }
}
void json(const M& m) {
  std::cout << '[';
  for (unsigned j = 0; j < m.size(); ++j) { if (j) std::cout << ','; std::cout << m[j]; }
  std::cout << ']';
}
void json(const P& p) {
  std::cout << '[';
  for (unsigned j = 0; j < p.size(); ++j) { if (j) std::cout << ','; json(p[j]); }
  std::cout << ']';
}
int main(int argc, char** argv) {
  try {
    if (argc != 6) throw std::runtime_error("usage: export RANK DEGREE LEFT RIGHT OUTPUT (a,b;c,d or -)");
    unsigned rank = number(argv[1]), bound = number(argv[2]);
    if (rank == 0 || rank > 5 || bound > 12) throw std::runtime_error("producer window limits: rank 1..5, degree 0..12");
    P left = parse(argv[3], rank, bound), right = parse(argv[4], rank, bound), output = parse(argv[5], rank, bound);
    P basis; M m(rank); vectors(basis, m, 0, bound);
    std::vector<T> rows;
    std::size_t total = 0;
    for (const auto& b : basis) { rows.push_back(coproduct(b)); total += rows.back().size();
      if (total > cap) throw std::runtime_error("certificate resource limit"); }
    std::cout << "{\"certificate\":{\"expansions\":[";
    for (unsigned i = 0; i < rows.size(); ++i) {
      if (i) std::cout << ',';
      std::cout << '[';
      for (unsigned j = 0; j < rows[i].size(); ++j) {
        if (j) std::cout << ',';
        std::cout << '['; json(rows[i][j].first); std::cout << ','; json(rows[i][j].second); std::cout << ']';
      }
      std::cout << ']';
    }
    std::cout << "],\"version\":1,\"window\":{\"degree\":" << bound << ",\"rank\":" << rank << "}},\"left\":";
    json(left); std::cout << ",\"output\":"; json(output); std::cout << ",\"right\":"; json(right); std::cout << "}\n";
  } catch (const std::exception& e) { std::cerr << e.what() << '\n'; return 1; }
}
