// Decode actual upstream MMod BLOBs via the pinned upstream Milnor API.
// This exports data only; a Lean algebra/module checker must verify it.
#include "algebras/steenrod.h"
#include <sqlite3.h>
#include <cstring>
#include <iostream>
#include <stdexcept>
int main(int argc,char**argv) {
  try {
    if(argc!=2)throw std::runtime_error("usage: res-export S0_Adams_res.db");
    sqlite3* db=nullptr;
    if(sqlite3_open_v2(argv[1],&db,SQLITE_OPEN_READONLY,nullptr)!=SQLITE_OK)throw std::runtime_error("open database");
    sqlite3_stmt* stmt=nullptr;
    if(sqlite3_prepare_v2(db,"SELECT id,s,t,diff FROM S0_Adams_res_generators ORDER BY id",-1,&stmt,nullptr)!=SQLITE_OK)
      throw std::runtime_error(sqlite3_errmsg(db));
    int step;
    while((step=sqlite3_step(stmt))==SQLITE_ROW) {
      int id=sqlite3_column_int(stmt,0),s=sqlite3_column_int(stmt,1),t=sqlite3_column_int(stmt,2);
      int bytes=sqlite3_column_bytes(stmt,3);
      if(sqlite3_column_type(stmt,3)==SQLITE_NULL) throw std::runtime_error("unknown NULL differential cannot be interpreted as zero");
      if(bytes%8)throw std::runtime_error("MMod blob is not 64-bit words");
      const auto* blob=static_cast<const unsigned char*>(sqlite3_column_blob(stmt,3));
      std::cout << "{\"differential\":[";
      for(int i=0;i<bytes/8;++i) {
        uint64_t raw;std::memcpy(&raw,blob+8*i,8);
        steenrod::MMod term(raw);auto xi=term.m().ToXi();
        if(i)std::cout << ',';
        std::cout << "{\"milnor\":[";
        for(std::size_t j=0;j<xi.size();++j){if(j)std::cout << ',';std::cout << xi[j];}
        std::cout << "],\"target_local_id\":" << term.v() << '}';
      }
      std::cout << "],\"id\":"<<id<<",\"local_id\":"<<(id%524288)<<",\"s\":"<<s<<",\"t\":"<<t<<",\"version\":1}\n";
    }
    if(step!=SQLITE_DONE)throw std::runtime_error(sqlite3_errmsg(db));
    sqlite3_finalize(stmt);sqlite3_close(db);
  }catch(const std::exception&e){std::cerr<<e.what()<<'\n';return 1;}
}
