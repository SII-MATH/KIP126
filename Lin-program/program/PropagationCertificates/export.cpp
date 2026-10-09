// Export explicitly normalized ordinary differential rules, not raw ss reason tags.
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

using S = std::string;
S array(const std::vector<S>& xs) {
    S out = "[";
    for (const auto& x : xs) { if (out.size() > 1) out += ','; out += x; }
    return out + ']';
}
S fact(const S& x, const S& y) { return "{\"source\":" + x + ",\"target\":" + y + '}'; }
S binary(const S& op, const S& x, const S& y) { return "{\"" + op + "\":[" + x + ',' + y + "]}"; }
S natural(const S& n) {
    if (n.empty() || n.find_first_not_of("0123456789") != S::npos || (n.size()>1 && n[0]=='0'))
        throw std::runtime_error("expected canonical natural number");
    return n;
}
int main(int argc, char** argv) {
    if (argc < 2) { std::cerr << "usage: propagation-export INPUT.rules [INPUT.rules ...]\n"; return 2; }
    for (int arg=1; arg<argc; ++arg) {
        size_t line = 0;
        try {
            std::ifstream in(argv[arg]);
            if (!in) throw std::runtime_error("cannot open input");
            std::map<S,S> expressions;
            std::map<S,std::pair<S,S>> facts;
            std::vector<S> external, steps;
            S result, raw;
            while (std::getline(in,raw)) {
                ++line;
                std::istringstream row(raw);
                std::vector<S> t;
                S token;
                while (row >> token) t.push_back(token);
                if (t.empty() || t[0][0]=='#') continue;
                auto arity = [&](size_t n) { if(t.size()!=n) throw std::runtime_error("wrong field count"); };
                auto f = [&](const S& id) { const auto& p=facts.at(id); return fact(p.first,p.second); };
                auto store = [&](const S& value) { if(!expressions.emplace(t[1],value).second) throw std::runtime_error("duplicate expression id"); };
                if(t[0]=="atom") { arity(3); store("{\"atom\":"+natural(t[2])+'}'); }
                else if(t[0]=="zero") { arity(2); store("\"zero\""); }
                else if(t[0]=="add" || t[0]=="mul") { arity(4); store(binary(t[0],expressions.at(t[2]),expressions.at(t[3]))); }
                else if(t[0]=="map") { arity(4); store(binary("map",natural(t[2]),expressions.at(t[3]))); }
                else if(t[0]=="fact") { arity(4); if(!facts.emplace(t[1],std::make_pair(expressions.at(t[2]),expressions.at(t[3]))).second) throw std::runtime_error("duplicate fact id"); }
                else if(t[0]=="external") { arity(2); external.push_back(f(t[1])); }
                else if(t[0]=="use") { arity(2); result=f(t[1]); steps.push_back("{\"external\":"+result+'}'); }
                else if(t[0]=="step_zero") { arity(1); result=fact("\"zero\"","\"zero\""); steps.push_back("\"zero\""); }
                else if(t[0]=="linearity" || t[0]=="leibniz") {
                    arity(3); const auto& p=facts.at(t[1]); const auto& q=facts.at(t[2]);
                    steps.push_back(binary(t[0],f(t[1]),f(t[2])));
                    result=t[0]=="linearity" ? fact(binary("add",p.first,q.first),binary("add",p.second,q.second)) :
                        fact(binary("mul",p.first,q.first),binary("add",binary("mul",p.second,q.first),binary("mul",p.first,q.second)));
                }
                else if(t[0]=="naturality") { arity(3); auto n=natural(t[1]); const auto& p=facts.at(t[2]); steps.push_back(binary("naturality",n,f(t[2]))); result=fact(binary("map",n,p.first),binary("map",n,p.second)); }
                else if(t[0]=="result") { arity(2); result=f(t[1]); }
                else throw std::runtime_error("unsupported rule (raw ss tags are not semantic certificates)");
            }
            if(result.empty()) throw std::runtime_error("missing conclusion");
            std::cout << "{\"externalFacts\":" << array(external) << ",\"result\":" << result
                      << ",\"schema\":\"lin-propagation/v1\",\"steps\":" << array(steps) << "}\n";
        } catch(const std::exception& e) { std::cerr << argv[arg] << ':' << line << ": " << e.what() << '\n'; return 1; }
    }
}
