// Read-only export of the release SQLite d2 matrices. No mathematical trust in SQLite.
#include <sqlite3.h>
#include <iostream>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>
using Degree = std::pair<int,int>;
struct Row { std::string diff; bool known; };
int main(int argc,char** argv) {
  sqlite3* db=nullptr; sqlite3_stmt* st=nullptr;
  try {
    if(argc!=3) throw std::runtime_error("usage: d2-export DB OBJECT");
    std::string object=argv[2];
    if(object.empty() || object.find_first_not_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_")!=std::string::npos)
      throw std::runtime_error("invalid object identifier");
    if(sqlite3_open_v2(argv[1],&db,SQLITE_OPEN_READONLY,nullptr)!=SQLITE_OK) throw std::runtime_error("cannot open database");
    bool has_d2=false;
    std::string pragma="PRAGMA table_info(\""+object+"_AdamsE2_basis\")";
    if(sqlite3_prepare_v2(db,pragma.c_str(),-1,&st,nullptr)!=SQLITE_OK) throw std::runtime_error(sqlite3_errmsg(db));
    while(sqlite3_step(st)==SQLITE_ROW) {
      const auto name=reinterpret_cast<const char*>(sqlite3_column_text(st,1));
      if(name && std::string(name)=="d2")has_d2=true;
    }
    sqlite3_finalize(st);st=nullptr;
    std::string sql="SELECT s,t,"+std::string(has_d2?"d2":"NULL")+" FROM \""+object+"_AdamsE2_basis\" ORDER BY id";
    if(sqlite3_prepare_v2(db,sql.c_str(),-1,&st,nullptr)!=SQLITE_OK) throw std::runtime_error(sqlite3_errmsg(db));
    std::map<Degree,std::vector<Row>> groups;
    int code;
    while((code=sqlite3_step(st))==SQLITE_ROW) {
      bool known=sqlite3_column_type(st,2)!=SQLITE_NULL;
      auto txt=sqlite3_column_text(st,2);
      groups[{sqlite3_column_int(st,0),sqlite3_column_int(st,1)}].push_back({known?reinterpret_cast<const char*>(txt):"",known});
    }
    if(code!=SQLITE_DONE) throw std::runtime_error(sqlite3_errmsg(db));
    sqlite3_finalize(st);st=nullptr;
    for(const auto& [degree,rows]:groups) {
      const auto target=groups.find({degree.first+2,degree.second+1});
      std::size_t m=target==groups.end()?0:target->second.size();
      bool known=true;for(const auto& r:rows)known=known&&r.known;
      std::cout<<"{\"object\":\""<<object<<"\",\"s\":"<<degree.first<<",\"t\":"<<degree.second<<",\"page\":2,\"rows\":"<<m<<",\"cols\":"<<rows.size()<<",\"status\":\""<<(known?"finite_input":"unknown")<<"\",\"columns\":[";
      for(std::size_t j=0;j<rows.size();++j) {
        if(j)std::cout<<',';
        if(!rows[j].known){std::cout<<"null";continue;}
        std::vector<bool> bits(m,false);std::stringstream ss(rows[j].diff);std::string token;
        while(std::getline(ss,token,',')) {
          if(token.empty()||token.find_first_not_of("0123456789")!=std::string::npos)throw std::runtime_error("invalid d2 index");
          auto i=std::stoull(token);if(i>=m)throw std::runtime_error("d2 target index outside complete bidegree basis");
          bits[i]=!bits[i];
        }
        std::cout<<'[';for(std::size_t i=0;i<m;++i){if(i)std::cout<<',';std::cout<<(bits[i]?"true":"false");}std::cout<<']';
      }
      std::cout<<"]}\n";
    }
    sqlite3_close(db);return 0;
  } catch(const std::exception& e){if(st)sqlite3_finalize(st);if(db)sqlite3_close(db);std::cerr<<"d2-export: "<<e.what()<<'\n';return 1;}
}
