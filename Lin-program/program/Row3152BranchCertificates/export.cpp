// A path/event-value certificate has no field claiming an incoming-source dimension.
#include "../IndexedFamilyProducer/json.hpp"

void validatePathEvent(const Json& j) {
  const auto& o=j.object();
  keys(o,{"version","branch","eventPage","sourceDegree","targetDegree","rawSource","rawTarget",
    "sourceLabels","targetLabels","sourceStages","targetStages","source","target","outgoing"},"pathEvent");
  if(o.at("version").nat()!=1 || o.at("eventPage").nat()!=5) throw std::runtime_error("pathEvent.version/page");
  if(!std::holds_alternative<bool>(o.at("branch").v)) throw std::runtime_error("pathEvent.branch: expected Boolean");
  if(degree(o.at("sourceDegree"),"sourceDegree")!=std::make_pair(15u,140u) ||
     degree(o.at("targetDegree"),"targetDegree")!=std::make_pair(20u,144u))
    throw std::runtime_error("pathEvent.degree: expected (15,140) -> (20,144)");
  if(o.at("sourceStages").array().size()!=3 || o.at("targetStages").array().size()!=3)
    throw std::runtime_error("pathEvent.stages: expected d2,d3,d4");
  trace(o.at("rawSource"),o.at("sourceStages"),o.at("source"),1,"source");
  trace(o.at("rawTarget"),o.at("targetStages"),o.at("target"),1,"target");
  labels(o.at("sourceLabels"),{15u,140u},5,3,"sourceLabels");
  labels(o.at("targetLabels"),{20u,144u},5,3,"targetLabels");
  bits(o.at("outgoing"),1,"outgoing");
}

int main(int argc,char** argv) {
  try {
    if(argc!=2) throw std::runtime_error("usage: row3152-path-export INPUT.jsonl");
    std::ifstream in(argv[1]); if(!in) throw std::runtime_error("input open failed");
    std::string line; unsigned row=0; bool oversized=false,failed=false;
    while(boundedLine(in,line,oversized)) {
      ++row;
      try {
        if(oversized) throw std::runtime_error("record limit10MB");
        Parser parser{line}; auto value=parser.parse(); parser.peek();
        if(parser.p!=line.size()) throw std::runtime_error("trailing JSON");
        validatePathEvent(value); dump(std::cout,value); std::cout<<'\n';
      } catch(const std::exception& e) {
        failed=true; std::cerr<<argv[1]<<':'<<row<<": "<<e.what()<<'\n';
      }
    }
    if(in.bad()||row==0) throw std::runtime_error("input empty/read failure");
    std::cout.flush(); if(!std::cout) throw std::runtime_error("output write failure");
    return failed?1:0;
  } catch(const std::exception& e) {std::cerr<<e.what()<<'\n';return 1;}
}
