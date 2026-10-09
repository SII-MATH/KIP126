// An untrusted wrapper around the existing trajectory producer; no shell is used.
#include <cerrno>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <sys/wait.h>
#include <unistd.h>

std::string produce(const std::filesystem::path& producer, const std::string& path) {
  if (path.empty() || path.find('\0') != std::string::npos)
    throw std::runtime_error("empty or NUL-containing stage path");
  int descriptors[2];
  if (pipe(descriptors) != 0) throw std::runtime_error("cannot open producer pipe");
  const pid_t pid = fork();
  if (pid < 0) {
    close(descriptors[0]); close(descriptors[1]);
    throw std::runtime_error("cannot start trajectory producer");
  }
  if (pid == 0) {
    close(descriptors[0]);
    if (dup2(descriptors[1], STDOUT_FILENO) < 0 || dup2(descriptors[1], STDERR_FILENO) < 0)
      _exit(126);
    close(descriptors[1]);
    execl(producer.c_str(), producer.c_str(), "2", path.c_str(), static_cast<char*>(nullptr));
    _exit(127);
  }
  close(descriptors[1]);
  std::string output;
  char buffer[8192];
  bool read_failed = false;
  for (;;) {
    const auto n = read(descriptors[0], buffer, sizeof(buffer));
    if (n > 0) output.append(buffer, static_cast<std::size_t>(n));
    else if (n == 0) break;
    else if (errno != EINTR) { read_failed = true; break; }
  }
  close(descriptors[0]);
  int status;
  while (waitpid(pid, &status, 0) < 0) {
    if (errno != EINTR) throw std::runtime_error("cannot wait for trajectory producer");
  }
  while (!output.empty() && (output.back() == '\n' || output.back() == '\r')) output.pop_back();
  if (read_failed) throw std::runtime_error("trajectory pipe read failed");
  if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
    throw std::runtime_error("trajectory producer failed: " + output);
  const std::string beginning = "{\"firstPage\":2,\"stages\":";
  const std::string ending = ",\"version\":1}";
  if (output.compare(0, beginning.size(), beginning) != 0 ||
      output.size() < beginning.size() + ending.size() ||
      output.compare(output.size() - ending.size(), ending.size(), ending) != 0)
    throw std::runtime_error("unexpected trajectory producer envelope");
  return "{\"firstPage\":2,\"schema\":\"lin.permanent-prefix\",\"stages\":" +
    output.substr(beginning.size(), output.size() - beginning.size() - ending.size()) + ending;
}

int main(int argc, char** argv) {
  try {
    const auto directory = std::filesystem::read_symlink("/proc/self/exe").parent_path();
    const auto producer = directory.parent_path() / "PageTransitionCertificates/trajectory-export";
    if (argc == 2) {
      std::cout << produce(producer, argv[1]) << '\n';
      std::cout.flush();
      if (!std::cout) throw std::runtime_error("prefix output write failed");
      return 0;
    }
    if (argc != 3 || std::string(argv[1]) != "--batch")
      throw std::runtime_error("usage: prefix-export STAGES_FILE | --batch STAGE_PATHS.txt");
    std::ifstream input(argv[2]);
    if (!input) throw std::runtime_error("cannot open stage path batch");
    std::string path;
    unsigned long line = 0;
    bool failed = false;
    while (std::getline(input, path)) {
      ++line;
      if (!path.empty() && path.back() == '\r') path.pop_back();
      try {
        std::cout << produce(producer, path) << '\n';
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
