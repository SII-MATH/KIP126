// Reuse the deterministic comparison producer without changing its CLI.
#define main comparison_export_main
#include "export.cpp"
#undef main

std::string inducedSolve(const std::vector<std::string>& args) {
  if (args.size()!=13) throw std::runtime_error("expected K M N OUT IN L Q P TARGET_OUT TARGET_IN MIDDLE UPPER LOWER");
  unsigned k=nat(args[0]),m=nat(args[1]),n=nat(args[2]);
  unsigned l=nat(args[5]),q=nat(args[6]),p=nat(args[7]);
  Bits a=bits(args[3],k*m),b=bits(args[4],m*n);
  Bits c=bits(args[8],l*q),d=bits(args[9],q*p);
  Bits f=bits(args[10],q*m),u=bits(args[11],l*k),v=bits(args[12],p*n);
  for(unsigned i=0;i<l;++i)for(unsigned j=0;j<m;++j){
    bool left=false,right=false;
    for(unsigned r=0;r<q;++r)left^=c[i*q+r]&&f[r*m+j];
    for(unsigned r=0;r<k;++r)right^=u[i*k+r]&&a[r*m+j];
    if(left!=right)throw std::runtime_error("upper square["+std::to_string(i)+","+std::to_string(j)+"]");
  }
  for(unsigned i=0;i<q;++i)for(unsigned j=0;j<n;++j){
    bool left=false,right=false;
    for(unsigned r=0;r<p;++r)left^=d[i*p+r]&&v[r*n+j];
    for(unsigned r=0;r<m;++r)right^=f[i*m+r]&&b[r*n+j];
    if(left!=right)throw std::runtime_error("lower square["+std::to_string(i)+","+std::to_string(j)+"]");
  }
  auto source=solve(std::vector<std::string>(args.begin(),args.begin()+5));
  auto target=solve(std::vector<std::string>(args.begin()+5,args.begin()+10));
  std::ostringstream out;
  out<<"{\"lower\":";jsonBits(out,v);out<<",\"middle\":";jsonBits(out,f);
  out<<",\"source\":"<<source<<",\"target\":"<<target<<",\"upper\":";
  jsonBits(out,u);out<<",\"version\":1}";return out.str();
}
int main(int argc,char** argv){
  try{
    if(argc==3&&std::string(argv[1])=="--batch"){
      std::ifstream in(argv[2]);if(!in)throw std::runtime_error("cannot open batch input");
      std::string line;unsigned number=0;
      while(std::getline(in,line)){
        ++number;std::istringstream stream(line);std::vector<std::string> args;std::string token;
        while(stream>>token)args.push_back(token);
        try{std::cout<<inducedSolve(args)<<'\n';}
        catch(const std::exception& e){throw std::runtime_error("line "+std::to_string(number)+": "+e.what());}
      }
      if(!number)throw std::runtime_error("empty batch");
    }else{
      if(argc!=14)throw std::runtime_error("usage: induced-export K M N OUT IN L Q P TARGET_OUT TARGET_IN MIDDLE UPPER LOWER | --batch FILE");
      std::cout<<inducedSolve(std::vector<std::string>(argv+1,argv+argc))<<'\n';
    }
  }catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}
  return 0;
}
