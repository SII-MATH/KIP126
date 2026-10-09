// Reuse the deterministic homology comparison producer for each stage.
#define main comparison_export_main
#include "export.cpp"
#undef main

int main(int argc, char** argv) {
  try {
    if (argc != 3) throw std::runtime_error("usage: trajectory-export FIRST_PAGE STAGES_FILE");
    const std::string page = argv[1];
    if (page.empty() || page.find_first_not_of("0123456789") != std::string::npos)
      throw std::runtime_error("first page must be decimal");
    auto first = std::stoull(page);
    if (first < 2) throw std::runtime_error("first page must be at least 2");
    std::ifstream in(argv[2]);
    if (!in) throw std::runtime_error("cannot open stages file");
    std::vector<std::string> stages;
    std::string line;
    unsigned number = 0;
    while (std::getline(in, line)) {
      ++number;
      try {
        std::istringstream stream(line);
        std::vector<std::string> args;
        std::string token;
        while (stream >> token) args.push_back(token);
        if (args.size() != 6) throw std::runtime_error("expected K M N OUT IN REPRESENTATIVE");
        auto vector = bits(args[5], nat(args[1]));
        auto comparison = solve(std::vector<std::string>(args.begin(), args.begin()+5));
        std::ostringstream stage;
        stage << "{\"representative\":";
        jsonBits(stage, vector);
        stage << ",\"wire\":" << comparison << '}';
        stages.push_back(stage.str());
      } catch (const std::exception& e) {
        throw std::runtime_error("stage " + std::to_string(number-1) + ": " + e.what());
      }
    }
    if (in.bad()) throw std::runtime_error("stage input read failed");
    if (stages.empty()) throw std::runtime_error("empty trajectory");
    std::cout << "{\"firstPage\":" << first << ",\"stages\":[";
    for (unsigned i=0; i<stages.size(); ++i) {
      if (i) std::cout << ',';
      std::cout << stages[i];
    }
    std::cout << "],\"version\":1}\n";
  } catch (const std::exception& e) {
    std::cerr << e.what() << '\n';
    return 1;
  }
  return 0;
}
