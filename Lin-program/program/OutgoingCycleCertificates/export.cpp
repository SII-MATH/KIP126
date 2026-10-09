#define main permanent_prefix_export_main
#include "../PermanentCycleCertificates/prefix_export.cpp"
#undef main

std::string outgoingPrefix(const std::filesystem::path& producer, const std::string& path) {
  auto output = produce(producer, path);
  const std::string oldSchema = "lin.permanent-prefix";
  const auto index = output.find(oldSchema);
  if (index == std::string::npos) throw std::runtime_error("unexpected prefix envelope");
  output.replace(index, oldSchema.size(), "lin.outgoing-cycle-prefix");
  return output;
}

int main(int argc, char** argv) {
  try {
    const auto directory = std::filesystem::read_symlink("/proc/self/exe").parent_path();
    const auto producer = directory.parent_path() / "PageTransitionCertificates/trajectory-export";
    if (argc == 2) {
      std::cout << outgoingPrefix(producer, argv[1]) << '\n';
      std::cout.flush();
      if (!std::cout) throw std::runtime_error("prefix output write failed");
      return 0;
    }
    if (argc != 3 || std::string(argv[1]) != "--batch")
      throw std::runtime_error("usage: outgoing-prefix-export STAGES_FILE | --batch STAGE_PATHS.txt");
    std::ifstream input(argv[2]);
    if (!input) throw std::runtime_error("cannot open stage path batch");
    std::string path;
    unsigned long line = 0;
    bool failed = false;
    while (std::getline(input, path)) {
      ++line;
      if (!path.empty() && path.back() == '\r') path.pop_back();
      try {
        std::cout << outgoingPrefix(producer, path) << '\n';
        std::cout.flush();
        if (!std::cout) throw std::runtime_error("prefix output write failed");
      } catch (const std::exception& error) {
        failed = true;
        std::cerr << argv[2] << ':' << line << ": " << error.what() << '\n';
        if (!std::cout) return 1;
      }
    }
    if (input.bad()) throw std::runtime_error("stage path batch read failed");
    if (!line) throw std::runtime_error("empty stage path batch");
    return failed ? 1 : 0;
  } catch (const std::exception& error) {
    std::cerr << error.what() << '\n';
    return 1;
  }
}
