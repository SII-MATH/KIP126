// Dense reference exporter. Output is untrusted; Lean rechecks every witness.
#include <algorithm>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using Bits = std::vector<unsigned char>;
using Mat = std::vector<Bits>;

static bool bit(std::istream& in) {
    std::string token;
    if (!(in >> token) || (token != "0" && token != "1"))
        throw std::runtime_error("expected a bit (0 or 1)");
    return token == "1";
}
static void json_bits(const Bits& bits) {
    std::cout << '[';
    for (std::size_t i = 0; i < bits.size(); ++i) {
        if (i) std::cout << ',';
        std::cout << (bits[i] ? "true" : "false");
    }
    std::cout << ']';
}
static void emit(std::size_t m, std::size_t n, const Mat& original, const Bits& target) {
    Mat a = original, transform(m, Bits(m));
    Bits b = target;
    for (std::size_t i = 0; i < m; ++i) transform[i][i] = 1;
    std::vector<std::size_t> pivots;
    std::size_t rank = 0;
    for (std::size_t col = 0; col < n && rank < m; ++col) {
        std::size_t pivot = rank;
        while (pivot < m && !a[pivot][col]) ++pivot;
        if (pivot == m) continue;
        std::swap(a[pivot], a[rank]);
        std::swap(b[pivot], b[rank]);
        std::swap(transform[pivot], transform[rank]);
        for (std::size_t row = 0; row < m; ++row) {
            if (row == rank || !a[row][col]) continue;
            for (std::size_t j = 0; j < n; ++j) a[row][j] ^= a[rank][j];
            for (std::size_t j = 0; j < m; ++j) transform[row][j] ^= transform[rank][j];
            b[row] ^= b[rank];
        }
        pivots.push_back(col);
        ++rank;
    }
    Bits witness(n);
    std::string kind = "image";
    for (std::size_t i = 0; i < rank; ++i) witness[pivots[i]] = b[i];
    for (std::size_t i = rank; i < m; ++i) {
        if (b[i]) { kind = "nonimage"; witness = transform[i]; break; }
    }
    Bits flattened;
    for (const auto& row : original) flattened.insert(flattened.end(), row.begin(), row.end());
    std::cout << "{\"kind\":\"" << kind << "\",\"matrix\":{\"cols\":" << n << ",\"entries\":";
    json_bits(flattened);
    std::cout << ",\"rows\":" << m << "},\"target\":";
    json_bits(target);
    std::cout << ",\"witness\":";
    json_bits(witness);
    std::cout << "}\n";
}
int main() {
    std::size_t record = 0;
    try {
        // Stream grammar: rows cols, rows*cols matrix bits, rows target bits.
        std::string rows_token;
        while (std::cin >> rows_token) {
            ++record;
            std::string cols_token;
            if (!(std::cin >> cols_token)) throw std::runtime_error("missing column count");
            auto dimension = [](const std::string& token) {
                if (token.empty() || token.find_first_not_of("0123456789") != std::string::npos)
                    throw std::runtime_error("invalid dimension");
                auto value = std::stoull(token);
                if (value > 4096) throw std::runtime_error("dimension exceeds dense exporter limit 4096");
                return static_cast<std::size_t>(value);
            };
            const auto m = dimension(rows_token), n = dimension(cols_token);
            Mat a(m, Bits(n));
            Bits b(m);
            for (auto& row : a) for (auto& v : row) v = bit(std::cin);
            for (auto& v : b) v = bit(std::cin);
            emit(m, n, a, b);
        }
    } catch (const std::exception& e) {
        std::cerr << "record " << record << ": " << e.what() << '\n';
        return 1;
    }
}
