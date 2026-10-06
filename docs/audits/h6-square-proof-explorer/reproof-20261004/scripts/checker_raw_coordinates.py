import re,ast,json,pathlib
root=pathlib.Path('/inspire/hdd/global_user/baokangjie-CZXS25250151/KIP126-develop');s=(root/'KIP126/LinProgram/Route/Selected.lean').read_text();g=(root/'KIP126/LinProgram/Generated/E2.lean').read_text();gen=[]
for m in re.finditer(r'def generatorChunk(\d+) : Array.*? := #(\[.*\])',g):
 assert int(m.group(1))*32==len(gen)
 gen+=ast.literal_eval(m.group(2))
deg={}
for m in re.finditer(r'⟨\.(sphere|nuCofiber), (\d+), (\d+), (\[[^\n]*?\])⟩',s.split('def claims')[0]):
 o,a,b,arr=m.groups();deg[o,int(a),int(b)]=ast.literal_eval(arr)
def mono(m):
 x=list(map(int,m.split(',')))
 if len(x)%2:return '?Cnu'+m
 return ' '.join(gen[i][0]+('^'+str(e) if e!=1 else '') for i,e in zip(x[::2],x[1::2])) or '1'
def dec(o,a,b,indices):return '+'.join(mono(deg[o,a,b][i]) for i in indices) or '0'
claims=[]
for m in re.finditer(r'⟨\.(sphere|nuCofiber), \.(\w+), (\d+), (\d+), (\d+), (\[[^\]]*\]), (\d+), (\d+), (\[[^\]]*\]), "([^"]+)", (\d+)⟩',s):
 o,k,r,a,b,ix,c,d,iy,org,num=m.groups();a,b,c,d,r=map(int,(a,b,c,d,r));ix,iy=ast.literal_eval(ix),ast.literal_eval(iy)
 claims.append(dict(o=o,k=k,r=r,s=a,t=b,x=ix,ts=c,tt=d,y=iy,origin=org,record=int(num)))
if __name__=='__main__':
 print('stem125 E2 count',sum(len(v) for (o,a,b),v in deg.items() if o=='sphere' and b-a==125));print('max',max(a for(o,a,b),v in deg.items() if o=='sphere' and b-a==125 and v)); print('missing upto64',[a for a in range(65) if ('sphere',a,a+125) not in deg])
 for stem,low,hi in [(63,0,7),(122,8,13),(125,26,64)]:
  print('\nSTEM',stem)
  for (o,a,b),ms in deg.items():
   if o=='sphere' and b-a==stem and low<=a<=hi and ms:print(a,[(i,mono(m)) for i,m in enumerate(ms)])
 print('\nCLAIMS63')
 for c in claims:
  if c['o']=='sphere' and c['t']-c['s']==63 and c['s']<=7: print(c['k'],c['r'],c['s'],dec('sphere',c['s'],c['t'],c['x']),dec('sphere',c['ts'],c['tt'],c['y']))
