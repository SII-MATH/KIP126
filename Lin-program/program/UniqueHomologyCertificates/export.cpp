// Reuse the complete comparison solver; Lean checks its output and the named class.
#define main comparison_export_main
#include "../PageTransitionCertificates/export.cpp"
#undef main

std::string uniqueCertificate(const std::vector<std::string>& args) {
  if (args.size() != 6) throw std::runtime_error("expected K M N OUT IN NAMED");
  const auto named = bits(args[5], nat(args[1]));
  const auto comparison = solve(std::vector<std::string>(args.begin(), args.begin() + 5));
  std::ostringstream output;
  output << "{\"comparison\":" << comparison << ",\"named\":";
  jsonBits(output, named);
  output << ",\"version\":1}";
  return output.str();
}

int main(int argc, char** argv) {
  try {
    if (argc == 7) {
      std::cout << uniqueCertificate(std::vector<std::string>(argv + 1, argv + argc)) << '\n';
    } else if (argc == 3 && std::string(argv[1]) == "--batch") {
      std::ifstream input(argv[2]);
      if (!input) throw std::runtime_error("cannot open request batch");
      std::string line;
      unsigned count = 0;
      bool failed = false;
      while (std::getline(input, line)) {
        ++count;
        try {
          std::istringstream stream(line);
          std::vector<std::string> args;
          for (std::string token; stream >> token;) args.push_back(token);
          std::cout << uniqueCertificate(args) << '\n';
        } catch (const std::exception& error) {
          failed = true;
          std::cerr << argv[2] << ':' << count << ": " << error.what() << '\n';
        }
      }
      if (input.bad()) throw std::runtime_error("request batch read failed");
      if (!count) throw std::runtime_error("empty request batch");
      std::cout.flush();
      if (!std::cout) throw std::runtime_error("certificate write failed");
      return failed ? 1 : 0;
    } else {
      throw std::runtime_error("usage: unique-export K M N OUT IN NAMED | --batch REQUESTS.txt");
    }
    std::cout.flush();
    if (!std::cout) throw std::runtime_error("certificate write failed");
    return 0;
  } catch (const std::exception& error) {
    std::cerr << error.what() << '\n';
    return 1;
  }
}
