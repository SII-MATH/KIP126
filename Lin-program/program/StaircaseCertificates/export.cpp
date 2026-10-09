// The producer exports a complete change of basis, never a permanence theorem.
#include <sqlite3.h>
#include <iostream>
#include <map>
#include <stdexcept>
#include <sstream>
#include <string>
#include <vector>
using Bits=std::vector<unsigned char>;
struct Row {std::string base; int level; bool unknown;};
using Degree=std::pair<int,int>;
void bits(const Bits& v){std::cout<<'[';for(size_t i=0;i<v.size();++i){if(i)std::cout<<',';std::cout<<(v[i]?"true":"false");}std::cout<<']';}
Bits matrix(const std::vector<Bits>& a){Bits r;for(const auto& row:a)r.insert(r.end(),row.begin(),row.end());return r;}
int main(int argc,char**argv){sqlite3*db=nullptr;sqlite3_stmt*st=nullptr;try{
 if(argc!=3)throw std::runtime_error("usage: staircase-export DB OBJECT");
 std::string object=argv[2];if(object.find_first_not_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_")!=std::string::npos)throw std::runtime_error("invalid object");
 if(sqlite3_open_v2(argv[1],&db,SQLITE_OPEN_READONLY,nullptr)!=SQLITE_OK)throw std::runtime_error("cannot open DB");
 std::string sql="SELECT s,t,base,level,diff IS NULL FROM \""+object+"_AdamsE2_ss\" ORDER BY id";
 if(sqlite3_prepare_v2(db,sql.c_str(),-1,&st,nullptr)!=SQLITE_OK)throw std::runtime_error(sqlite3_errmsg(db));
 std::map<Degree,std::vector<Row>> groups;int code;
 while((code=sqlite3_step(st))==SQLITE_ROW){auto text=sqlite3_column_text(st,2);if(!text)throw std::runtime_error("NULL basis");groups[{sqlite3_column_int(st,0),sqlite3_column_int(st,1)}].push_back({reinterpret_cast<const char*>(text),sqlite3_column_int(st,3),bool(sqlite3_column_int(st,4))});}
 if(code!=SQLITE_DONE) throw std::runtime_error(sqlite3_errmsg(db));
 sqlite3_finalize(st);st=nullptr;
 for(const auto& [degree,rows]:groups){
  size_t n=rows.size();std::vector<Bits>a(n,Bits(n)),inv(n,Bits(n));
  for(size_t j=0;j<n;++j){std::stringstream ss(rows[j].base);std::string token;while(std::getline(ss,token,',')){if(token.empty()||token.find_first_not_of("0123456789")!=std::string::npos)throw std::runtime_error("invalid basis index");size_t i=std::stoull(token);if(i>=n)throw std::runtime_error("basis index outside dimension");a[i][j]^=1;}inv[j][j]=1;}
  const auto original=a;
  for(size_t col=0;col<n;++col){size_t pivot=col;while(pivot<n&&!a[pivot][col])++pivot;if(pivot==n)throw std::runtime_error("singular staircase basis at "+std::to_string(degree.first)+","+std::to_string(degree.second));std::swap(a[col],a[pivot]);std::swap(inv[col],inv[pivot]);for(size_t i=0;i<n;++i)if(i!=col&&a[i][col])for(size_t j=0;j<n;++j){a[i][j]^=a[col][j];inv[i][j]^=inv[col][j];}}
  std::cout<<"{\"basis\":";bits(matrix(original));std::cout<<",\"dimension\":"<<n<<",\"inverse\":";bits(matrix(inv));std::cout<<",\"levels\":[";for(size_t i=0;i<n;++i){if(i)std::cout<<',';std::cout<<rows[i].level;}std::cout<<"],\"object\":\""<<object<<"\",\"s\":"<<degree.first<<",\"t\":"<<degree.second<<",\"unknown\":[";for(size_t i=0;i<n;++i){if(i)std::cout<<',';std::cout<<(rows[i].unknown?"true":"false");}std::cout<<"],\"version\":1}\n";
 }
 sqlite3_close(db);return 0;
}catch(const std::exception&e){if(st)sqlite3_finalize(st);if(db)sqlite3_close(db);std::cerr<<"staircase-export: "<<e.what()<<'\n';return 1;}}
