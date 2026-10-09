// Reuse the untrusted finite linear solver; every output is checked in Lean.
#define main filtered_extension_standalone_main
#include "../FilteredExtensionProducer/export.cpp"
#undef main

Json produceStable(const std::string& line) {
  Json extension = filtered::produce(line);
  const auto& data = extension.object().at("data").object();
  unsigned a=data.at("a").nat(), b=data.at("b").nat();
  unsigned ha=data.at("ha").nat(), hb=data.at("hb").nat();
  unsigned depth=data.at("depth").nat(), s=data.at("s").nat(), n=data.at("n").nat();
  auto level=[&](const std::string& name, unsigned i, unsigned rows, unsigned cols) {
    filtered::Matrix result(rows,cols);
    if(i<depth)
      result.entries=filtered::vector(data.at(name).array()[i],rows*cols,"data."+name);
    return result;
  };
  auto f=filtered::matrix(data,"f",b,a);
  auto source=level("source",s+1,a,ha), target=level("target",s+n+1,b,hb);
  auto witness=filtered::factor(f,source,target);
  if(!witness) throw std::runtime_error("stability: a higher-source image crosses the target interval");
  return Json(Json::Object{{"version",1u},{"extension",extension},
    {"stability",filtered::json(witness->entries)}});
}

int main(int argc,char** argv) {
  try {
    if(argc>2) throw std::runtime_error("usage: filtered-stable-export [INPUT.jsonl|-]");
    std::ifstream file;
    std::istream* input=&std::cin;
    std::string label="stdin";
    if(argc==2 && std::string(argv[1])!="-") {
      label=argv[1]; file.open(label);
      if(!file) throw std::runtime_error("cannot open input "+label);
      input=&file;
    }
    std::string line;
    unsigned row=0;
    bool failed=false,oversized=false;
    while(boundedLine(*input,line,oversized)) {
      ++row;
      try {
        if(oversized) throw std::runtime_error("record byte limit10MB");
        auto result=produceStable(line);
        dump(std::cout,result); std::cout<<'\n';
      } catch(const std::exception& e) {
        failed=true; std::cerr<<label<<':'<<row<<": "<<e.what()<<'\n';
      }
    }
    if(input->bad() || row==0) throw std::runtime_error("read failure or empty input");
    std::cout.flush();
    if(!std::cout) throw std::runtime_error("output write failed");
    return failed?1:0;
  } catch(const std::exception& e) {
    std::cerr<<e.what()<<'\n'; return 1;
  }
}
