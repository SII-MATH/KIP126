// Untrusted full-basis F2 reconstruction witness producer.
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

using Bits = std::vector<unsigned char>;

unsigned dimension(const std::string& text) {
  if (text.empty() || text.find_first_not_of("0123456789") != std::string::npos)
    throw std::runtime_error("expected nonnegative decimal dimension");
  auto value = std::stoull(text);
  if (value > 256) throw std::runtime_error("dimension exceeds limit 256");
  return static_cast<unsigned>(value);
}

Bits bits(const std::string& text, unsigned expected, const std::string& field) {
  if (expected == 0 && text == "-") return {};
  if (text.size() != expected || text.find_first_not_of("01") != std::string::npos)
    throw std::runtime_error(field + ": expected " + std::to_string(expected) + " row-major bits");
  Bits value;
  for (char c : text) value.push_back(c - '0');
  return value;
}

void jsonBits(std::ostream& out, const Bits& value) {
  out << '[';
  for (unsigned i = 0; i < value.size(); ++i) {
    if (i) out << ',';
    out << (value[i] ? "true" : "false");
  }
  out << ']';
}

std::string solve(const std::vector<std::string>& args) {
  if (args.size() != 4) throw std::runtime_error("expected ROWS COLS BASIS_BITS IMAGE_BITS");
  unsigned rows = dimension(args[0]), cols = dimension(args[1]);
  Bits basis = bits(args[2], cols*cols, "basis");
  Bits images = bits(args[3], rows*cols, "images");
  std::vector<Bits> augmented(cols, Bits(2*cols));
  for (unsigned i = 0; i < cols; ++i) {
    for (unsigned j = 0; j < cols; ++j) augmented[i][j] = basis[i*cols+j];
    augmented[i][cols+i] = 1;
  }
  for (unsigned j = 0; j < cols; ++j) {
    unsigned pivot = j;
    while (pivot < cols && !augmented[pivot][j]) ++pivot;
    if (pivot == cols) throw std::runtime_error("singular basis at column " + std::to_string(j));
    std::swap(augmented[pivot], augmented[j]);
    for (unsigned i = 0; i < cols; ++i)
      if (i != j && augmented[i][j])
        for (unsigned k = 0; k < 2*cols; ++k) augmented[i][k] ^= augmented[j][k];
  }
  Bits inverse(cols*cols), matrix(rows*cols);
  for (unsigned i = 0; i < cols; ++i)
    for (unsigned j = 0; j < cols; ++j) inverse[i*cols+j] = augmented[i][cols+j];
  for (unsigned i = 0; i < rows; ++i)
    for (unsigned j = 0; j < cols; ++j)
      for (unsigned k = 0; k < cols; ++k) matrix[i*cols+j] ^= images[i*cols+k] && inverse[k*cols+j];
  std::ostringstream out;
  out << "{\"basis\":"; jsonBits(out,basis);
  out << ",\"cols\":" << cols << ",\"images\":"; jsonBits(out,images);
  out << ",\"inverse\":"; jsonBits(out,inverse);
  out << ",\"matrix\":"; jsonBits(out,matrix);
  out << ",\"rows\":" << rows << ",\"version\":1}";
  return out.str();
}

int main(int argc, char** argv) {
  try {
    if (argc == 3 && std::string(argv[1]) == "--batch") {
      std::ifstream input(argv[2]);
      if (!input) throw std::runtime_error("cannot open batch input");
      std::string line;
      unsigned number = 0;
      while (std::getline(input,line)) {
        ++number;
        std::istringstream stream(line);
        std::vector<std::string> args;
        std::string token;
        while (stream >> token) args.push_back(token);
        try { std::cout << solve(args) << '\n'; }
        catch (const std::exception& e) {
          throw std::runtime_error("line " + std::to_string(number) + ": " + e.what());
        }
      }
      if (input.bad()) throw std::runtime_error("batch input read failure");
      if (!number) throw std::runtime_error("empty batch");
    } else {
      if (argc != 5) throw std::runtime_error("usage: d2-basis-export ROWS COLS BASIS_BITS IMAGE_BITS | --batch FILE");
      std::cout << solve(std::vector<std::string>(argv+1,argv+argc)) << '\n';
    }
  } catch (const std::exception& e) {
    std::cerr << e.what() << '\n';
    return 1;
  }
}
