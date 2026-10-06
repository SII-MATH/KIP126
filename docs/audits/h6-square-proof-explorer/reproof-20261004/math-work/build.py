import json,pathlib
base=pathlib.Path('KIP126-develop/docs/audits/h6-square-proof-explorer/reproof-20261004')
commit='e4b916b1ae0889a8f6c053aa27eba52f078a4b22'
deps=[]
def ext(n,name,statement,lo,hi,label='',category='文献定理',extra=None):
 d={'id':f'EXT-{n:03}','number':n,'name':name,'category':category,'proposition_version':'v1','used_statement':statement,'source_statement':statement,'specialization':'所有对象均取模二、二完备球谱及文中指定的合成化；平移为 S^{1,0}，合成权使用 w=t。','sources':[{'path':'MainPaper/main.tex','label':label,'line_start':lo,'line_end':hi,'commit':commit,'description':'论文中实际使用的数学陈述'}],'math_approval':{'status':'pending','version':'v1','review_record':'reviews/judger.json'}}
 if extra:d['sources'].append(extra)
 deps.append(d)
ext(1,'合成 Adams 微分的刚性',r'设 X 为 E=H F_2 幂零完备谱，经典 E-Adams 谱序列强收敛。合成谱序列 E_2^{s,t,w}(νX)=Ext_A^{s,t}(H^*X,F_2)⊗F_2[λ]，Ext 类的权为 t，|λ|=(0,0,-1)。所有合成微分且仅这些微分来自经典 d_r(x)=y，形式为 d_r(x)=λ^{r-1}y，并与 λ 乘法相容。',799,811,'thm:rigid',extra={'path':'Source/BHS/paper.txt','label':'Theorem A.8','line_start':4135,'line_end':4158,'commit':commit,'description':'原始文献的刚性定理，权已换算'})
ext(2,'合成极限页及有限商的过滤商',r'令 Z_j 表示经典 d_2,…,d_j 均为零的循环，B_j 表示由长度≤j 的入射生成的边界。令 a=t-w。对 E-幂零完备且经典 Adams 强收敛的 X，有 gr^s π_{t-s,w}(νX)=Z_∞^{s,t}/B_{a+1}^{s,t}（a≥0），gr^s π_{t-s,w}(νX/λ^N)=Z_{N-a}^{s,t}/B_{a+1}^{s,t}（0≤a<N），其余为零。ρ:N→M 为同分母循环子群的包含；λ^b:N→N+b 为保持循环子群而扩大边界分母的商映射。',832,876,'prop:30e8b746;prop:59f111f',extra={'path':'Source/BHS/paper.txt','label':'Corollaries A.9 and A.11','line_start':4159,'line_end':4202,'commit':commit,'description':'原始文献的自然同构'})
ext(3,'代表元与挠性可控的合成提升',r'在 E-幂零完备且 Adams 谱序列强收敛的 X 上，x 的 d_2,…,d_r 为零当且仅当 x 可提升到 νX/λ^r；Bockstein边界记录 d_{r+1}(x)。若 x 所有出射均为零，则 x 可提升到 νX；若 x 被 d_{r+1} 命中，可选提升 x̃ 满足 λ^r x̃=0；若 x 非零存活到经典 E_∞ 且 α 被 x 检测，可选提升使 λ^{-1}x̃=α。固定所有经典永久循环的一组提升，其 Z[λ] 线性组合的 λ 完备化生成合成同伦。',813,830,'thm:17e90ac0',extra={'path':'Source/BHS/paper.txt','label':'Theorem A.1 / Theorem 9.19','line_start':4012,'line_end':4052,'commit':commit,'description':'包括主文简略陈述之外实际需要的(3a)与(4)'})
ext(4,'六十二维同伦及过滤',r'经典二主 π_62(S)≅(Z/2)^4；四个生成元分别由 h_5²、h_5n、Δe_1+C_0+h_0^6h_5²、R 检测，其 Adams 过滤依次为2、6、8、10。因此 h_5² 非零永久存活，所有 θ_5 及由 Δe_1+C_0+h_0^6h_5² 检测的经典类均为二阶，任意两个 θ_5 的差属于 F^6。',2228,2241,'lem:equistate4 proof',extra={'path':'Source/IWX/data/Adams-classical-Einfty.csv','label':'stem62','line_start':204,'line_end':207,'commit':commit,'description':'过滤与检测类的原始表；群的扩张信息另见Xu与IWX正文'})
ext(5,'归纳构造的总障碍',r'若 θ_5∈π_{62,64}(S) 检测 h_5² 且 2θ_5=0，则连接映射 δ_1:S/λ→S^{1,-1} 对 h_6² 的值为 ληθ_5²∈π_{125,129}(S)。该值与这样的 θ_5 选择无关。h_6² 可提升到 S 当且仅当该值为零；有限 λ 商中的边界对应经典 Adams 的有限页存活。',2110,2140,'thm:bjmbx;rem:theta5choice',extra={'path':'Source/BurklundXu/source/kervairev2.tex','label':'Proposition 7.19 and quadratic construction','line_start':456,'line_end':620,'commit':commit,'description':'须依原始命题与证明而非采用主文无挠性误述'})
ext(6,'双重余纤维的提升引理',r'将两条合成谱的区别三角 X→Y→Z→ΣX 与 X′→Y′→Z′→ΣX′ 取 smash 积。若 a∈π_n(X∧Z′) 与 b∈π_n(Y∧Y′) 在 π_n(Y∧Z′) 中像相同，则存在 c∈π_n(Z∧X′)，使 b,c 在 π_n(Z∧Y′) 中像相同，且 a,c 经边界到 π_{n-1}(X∧X′) 的像相同。',1755,1778,'lem:452d218c',extra={'path':'Source/May01/paper.pdf','label':'Lemma 4.6; TC3, Section 4','commit':commit,'description':'原始三角范畴拉回正方形'})
(base/'data/dependencies.json').write_text(json.dumps(deps,ensure_ascii=False,indent=2)+'\n')
# Later additions retain the fixed statements of the first approved batch.
deps[0]['specialization']=deps[1]['specialization']=deps[2]['specialization']='取二完备球谱或 ν 的经典余纤维 Cν；二者的模二 Adams 谱序列强收敛，合成权统一为 w=t，平移统一为 S^{1,0}。'
deps[4]['used_statement']=deps[4]['source_statement']=r'若 θ_5∈π_{62,64}(S) 检测 h_5² 且 2θ_5=0，则连接映射 δ_1:S/λ→S^{1,-1} 对 h_6² 的值为 ληθ_5²∈π_{125,129}(S)。该值与这样的 θ_5 选择无关。h_6² 可提升到 S 当且仅当该值为零。'
deps[4]['sources'][1]['line_start']=587;deps[4]['sources'][1]['line_end']=607
ext(7,'合成化的余纤维与过滤提升',r'若区别三角 X→Y→Z 的 H F_2 同调给出短正合列，则 νX→νY→νZ 为区别三角；其旋转后的连接映射 hat h 满足 νh=λ hat h。对 Adams 过滤一的经典 ν:S³→S⁰，可取合成提升 v=[h_2]:S^{3,4}→S，满足 ν(ν)=λv，且 C(v)≃ν(Cν)。',759,769,'prop:1f7950df;prop:41561db2;not:fhat',extra={'path':'Source/Pst/source/synthetic_spectra.tex','label':'Lemma 4.23; BHS Lemma 9.15','commit':commit,'description':'合成化短正合余纤维及其连接映射'})
ext(8,'低维乘积与 Toda 恒等式',r'在二完备 H F_2-合成球谱中，b=[h_0]∈π_{0,1}、η=[h_1]∈π_{1,2}、v=[h_2]∈π_{3,4} 满足 λb=2、bη=0、η²∈〈b,η,b〉。对二阶偶维 θ，〈2,θ,2〉 的相应值为 λ²ηθ；Toda 乘积的换位公式须保留通常的不定子群，并与球谱到 S/λ^N 的乘法映射相容。',2481,2556,'lem:toda2ext proof',category='基础理论')
ext(9,'Moss 收敛准则的所需形式',r'在强收敛的 Adams 谱序列中，若三个永久循环的相邻乘积由指定低阶微分给出零同伦，则可形成相应页的三重 Massey 乘积；当其定义系统满足 Moss 无穿越微分假设时，该 Massey 乘积中的存活类检测相应同伦三重 Toda 括号的某个值。改变定义系统或零同伦带来的歧义必须分别除以 Massey 与 Toda 的通常不定子群。',2526,2539,'lem:toda2ext proof',extra={'path':'Source/Moss/citation.bib','label':'Theorem 1.2','commit':commit,'description':'原始全文尚未获得；当前只给主文实际引用位置，不声称已逐项核对假设'})
ext(10,'tmf 的 Hurewicz 检测',r'球谱到 tmf 的单位映射是乘法映射。所有由 h_5² 检测的 θ_5 在 π_62(tmf) 中像为零；球谱的 g⁴Δh_1g∈Ext_A^{25,150} 非零存活，其同伦像在 tmf 中非零，且相应 λ-自由合成类 λ^{20}[g⁴Δh_1g]∈π_{125,130} 的像非零。',2331,2335,'prop:possible_h_6_sq proof',extra={'path':'Source/tmf/source/tmfhi9.tex','label':'Hurewicz image of tmf','commit':commit,'description':'主文的具体Hurewicz输入；原始具体检测位置待精定位'})
ext(11,'必要的 Ext 乘法',r'置 A=h_0²x_{124,8}, T=h_1h_4x_{109,12}, E=e_0Δh_6g, B=Δe_1+C_0+h_0^6h_5², C=h_0²x_{125,9,2}, X=h_1x_{121,7}, D=h_6Md_0, F=h_5x_{91,11}。有 h_1E=0、h_5²B=0、h_2X=0。T 既不是 h_0 倍数也不是 h_2 倍数，C 不是 h_2 倍数；h_2D 位于 filtration12 且为 d_2 边界，h_2F 位于 filtration13 且为 d_2 边界。',2255,2261,'lem:equistate5;lem:toda2ext;lem:nuext125;prop:state5false',category='计算数据')
# The table premise is literally a collection of named bases and differential rows.
import re,csv,collections,hashlib
main=pathlib.Path('KIP126-develop/MainPaper/main.tex').read_text()
blocks=[]
for label,start,end in [('stem122',2805,2847),('stem123',2854,2902),('stem124low',2961,2991),('stem124s13',2910,2957),('stem125low',3023,3077),('stem125high',2996,3017),('stem126low',3138,3170),('stem126s11',3083,3134)]:
 lines=main.splitlines()[start-1:end]
 rows=[re.sub(r'\\(?:multirow\{[^}]*\}\{[^}]*\}|cline\{[^}]*\}|hline)','',x).strip() for x in lines if ' & ' in x and not x.strip().startswith('%')]
 blocks.append(label+':\n'+'\n'.join(rows))
ext(12,'球谱局部基与微分数据',r'以下各行给出对应 stem 与 Adams filtration 的完整 F_2 基以及指定非零微分，d_r^{-1} 表示所列类为右侧源的 d_r 像，Permanent 只表示所有出射为零，? 保留未知，不能当成零；空白过滤段没有基。所使用的数据为：\n'+'\n\n'.join(blocks),2805,3170,'Table:S122;Table:S123;Table:S124.12;Table:S124.13;Table:S125.19;Table:S125.20;Table:S126.10;Table:S126.11',category='计算数据')
raw=pathlib.Path('Lin-program/program/upstream/kervaire_csv')
basis=list(csv.DictReader((raw/'S0_AdamsE2_basis.csv').open(encoding='utf-16')))
ss=list(csv.DictReader((raw/'S0_AdamsE2_ss.csv').open(encoding='utf-16')))
gens={int(x['id']):x['name'] for x in csv.DictReader((raw/'S0_AdamsE2_generators.csv').open(encoding='utf-16'))}
def mon(v):
 if not v:return '1'
 z=list(map(int,v.split(',')));return ' '.join(gens[g]+('^'+str(e) if e!=1 else '') for g,e in zip(z[::2],z[1::2]))
lookup={(int(x['stem']),int(x['s']),int(x['index'])):mon(x['mon']) for x in basis}
def vec(stem,s,v):return ' + '.join(lookup.get((stem,s,int(i)),f'e_{{{stem},{s},{i}}}') for i in v.split(',')) if v else '0'
high=[]
for x in ss:
 k,s,L=int(x['stem']),int(x['s']),int(x['level'])
 if k==125 and s>25:
  r=L if L<5000 else 10000-L
  if L<5000:st=f'd_{r}({vec(126,s-r,x["diff"])})={vec(k,s,x["base"])}'
  else:st=f'd_{r}({vec(k,s,x["base"])})={vec(124,s+r,x["diff"])}'
  high.append({'filtration':s,'base':x['base'],'r':r,'direction':'incoming' if L<5000 else 'outgoing','equation':st})
assert len([x for x in basis if x['stem']=='125'])==105
assert len(high)==38 and all(x['r']<=4 for x in high)
ext(13,'一百二十五维的完整高过滤数据',r'经典 Adams E_2 的 stem125 恰有105个加法基，最高 filtration57；其中 filtration>25 的完整 staircase 基及微分如下，每个对应向量为非零且所列方向为确切微分：\n'+'\n'.join(f's={x["filtration"]}: {x["equation"]}' for x in high),236,238,'complete stem125 E2 computation',category='计算数据',extra={'path':'../Lin-program/program/upstream/kervaire_csv/S0_AdamsE2_ss.csv','label':'stem125,s>25; UTF-16; staircase coordinates','commit':commit,'description':'原始公开归档14875701，38个向量；配合同归档basis与generators解码，不使用Lean或审计结论'})
deps[-1]['raw_rows']=high;deps[-1]['raw_sha256']={n:hashlib.sha256((raw/n).read_bytes()).hexdigest() for n in ['S0_AdamsE2_basis.csv','S0_AdamsE2_generators.csv','S0_AdamsE2_ss.csv']}
ext(14,'ν 余纤维中的指定微分与顶底胞腔映射',r'在经典 Cν=S⁰/ν 的 Adams E_2 中，barX=X[4]+x_{126,8}[0]+x_{126,8,2}[0] 满足 q_*(barX)=X，其中X=h_1x_{121,7}；barC=C[0]=i_*(C)≠0，其中 C=h_0²x_{125,9,2}。有非零 d_3(barX)=barC，barX 无更短出射且 barC 为永久循环。',2631,2659,'lem:nuext125 proof',category='计算数据')
clines=main.splitlines()[2738:2773]
crows=[x.strip() for x in clines if ' & ' in x]
ext(15,'ν 余纤维中的全部短入射源',r'经典 Cν 的 stem126、filtration9至14 的完整基和微分如下。标为 d_r=? 的类存活到 E_r；不得把未知值替换为零。\n'+'\n'.join(crows),2738,2773,'Table:Cnu126',category='计算数据')
ext(16,'Massey 定义系统的具体微分与低维群',r'令 B=Δe_1+C_0+h_0^6h_5²。经典 d_2(h_6)=h_0h_5²，d_2(h_0^6h_6)=h_0B。相应 E_3 上的 Massey 乘积 〈h_5²,h_0,B〉 包含 h_6B，且该 Massey 乘积的不定性为零。B 可选为出射全零的代表元。',2526,2539,'lem:toda2ext proof',category='计算数据')
(base/'data/dependencies.json').write_text(json.dumps(deps,ensure_ascii=False,indent=2)+'\n')
math={'version':'math-v2','title':'$h_6^2$ 的非零永久存活','target':{'id':'target','title':'证明目标','paragraphs':[r'在二完备球谱的模二 Adams 谱序列中，证明标准类 $h_6^2\in E_2^{2,128}$ 在每一页保持非零，全部出射微分为零，并确定其非零像属于 $E_\infty^{2,128}$。强收敛于是给出由该像检测的同伦类。']},'notation':{'title':'记号与约定','paragraphs':[r'以 $S$ 表示模二合成球谱，$R_N=S/\lambda^N$。经典双次数为 $(s,t)$，茎为 $t-s$，Adams 过滤为 $s$。微分为 $d_r:E_r^{s,t}\to E_r^{s+r,t+r-1}$；换用（茎，过滤）记号，它把 $(k,s)$ 送到 $(k-1,s+r)$。合成同伦双次数为 $(k,w)$；$\lambda\in\pi_{0,-1}S$，$b=[h_0]\in\pi_{0,1}S$，$\eta=[h_1]\in\pi_{1,2}S$，$v=[h_2]\in\pi_{3,4}S$。乘积过滤可增加但不能减小；$\lambda$ 的过滤为零。',r'令 $A=h_0^2x_{124,8}$，$T=h_1h_4x_{109,12}$，$U=x_{126,8,4}+x_{126,8}$，$C=h_0^2x_{125,9,2}$，$X=h_1x_{121,7}$，$B=\Delta e_1+C_0+h_0^6h_5^2$，$V=h_6B$，$G=g^4\Delta h_1g$。方括号表示具有指定检测首项的同伦代表元；同一符号的不同代表元相差更高过滤项。',r'“出射全零”只说明类属于所有循环子群，仍可能被入射命中。“非零存活”另要求其在当前页的边界商中非零。“检测”指一个非零的关联分次首项，不能仅由某个同伦等式推出。']},'chapters':[],'reference_occurrences':[]}
steps=[]
def ch(id,title):
 c={'id':id,'title':title,'steps':[]};math['chapters'].append(c);return c
def st(c,id,title,*pars,dep=()):
 s={'id':id,'title':title,'paragraphs':list(pars),'depends_on':list(dep)};c['steps'].append(s);steps.append(s)
c=ch('synthetic','过滤、边界与代表元')
st(c,'STEP-001','循环商与非零首项',r'写 $Z_j=\ker(d_2,\ldots,d_j)$，$B_j$ 为长度至多 $j$ 的入射所生成的边界，故 $E_r=Z_{r-1}/B_{r-1}$。在茎 $k$、权 $w=k+q$、过滤 $s$，记 $a=s-q$。合成关联分次为 $Z_\infty/B_{a+1}$；在 $R_N$ 中为 $Z_{N-a}/B_{a+1}$，只在 $0\le a<N$ 有可能非零。[[EXT-002]]',r'因此 $\lambda^a y$ 在 $R_N$ 中非零，当且仅当 $y$ 的出射直到 $d_{N-a}$ 为零，且 $y\notin B_{a+1}$。这同时检查出射与入射，尤其不能把表中的永久循环字样直接解释为经典非零极限类。')
st(c,'STEP-002','挠性与低权无挠性',r'经典 $d_r(z)=y$ 的合成形式为 $d_r(z)=\lambda^{r-1}y$。可选 $[y]$ 满足 $\lambda^{r-1}[y]=0$，其尚非零的倍数只能为 $\lambda^a[y]$，其中 $a\le r-2$。若源在茎 $k+1$、过滤 $u$，则目标过滤 $s=u+r$，固定权 $k+q$ 给出 $a=u+r-q$，故挠性出现的必要条件是 $u\le q-2$。[[EXT-001]] [[EXT-003]]',r'对于 $\pi_{62,64}S$，需有正茎六十三、过滤至多零的源，而该 Ext 群为零。对于 $\pi_{124,128}S$，需有茎一百二十五、过滤至多二的源，而该茎过滤至多四全部为零。因此这两个同伦群均无 $\lambda$ 幂挠。这个论证没有断言 $\pi_{125,130}S$ 无挠。[[EXT-012]]',dep=('STEP-001',))
st(c,'STEP-003','乘法与商映射的严格过滤性质',r'对区别三角 $\Sigma^{0,-n}R_{m-n}\xrightarrow{\lambda^n}R_m\xrightarrow{\rho}R_n$，其关联分次在中间正合。若 $a<n$，左项为零而 $\rho$ 是循环子群的包含；若 $n\le a<m$，右项为零而 $\lambda^n$ 是边界商的满射；其余中间项为零。[[EXT-002]]',r'设中间一个同伦元素的首项落在核中。关联分次的正合性给出同过滤的左侧提升；减去其像后过滤严格增加。重复消去各级首项，并由完备性取极限，就得到真正的同伦提升。这证明这些特定 $\rho$ 与 $\lambda^n$ 映射没有额外提高过滤的隐藏延伸。有限商中盲目除以 $\lambda$ 仍不合法：除后的类还必须满足增强后的循环条件。',dep=('STEP-001',))
st(c,'STEP-004','总边界与经典微分',r'连接映射 $\delta_n:R_n\to S^{1,-n}$ 的延伸记录经典微分。具体说，按 Adams 过滤考察连接同态的两项复形 $\pi_{*,*}R_n\to\pi_{*,*}S^{1,-n}$，所得谱序列的延伸微分记为 $d_r^{\delta_n}$。若源 $x$ 的过滤为 $s$，则 $d_r^{\delta_n}(x)=y$ 要求 $x$ 在 $d_0^{\delta_n},\ldots,d_{r-1}^{\delta_n}$ 下均为零；右端是在目标过滤 $s+r$ 的关联分次中，模去这些较短延伸像所得的陪集，允许为零。若该陪集非零，则存在适当的源代表元，其连接像具有相应的非零首项；目标的茎和权已计入悬移 $S^{1,-n}$。目标再取有限商时使用相应的复合同态。若 $d_r(x)=y$，则在次数允许的范围内 $d_r^{\delta_n}(\lambda^a x)=\lambda^{a+r-n-1}y$。当指数为负时先给源乘足够多的 $\lambda$；在目标有限商中指数达到商的截断长度时该项为零。[[EXT-001]] [[EXT-003]]',r'其理由是 $n=1$ 时这正是 Bockstein 边界。由相邻两个 $\lambda$ 商的正合三角归纳，增加 $n$ 将目标的 $\lambda$ 次数减一。可能的除法歧义属于更短经典微分的像，而它们恰为更短边界延伸的像，故在对应页商中消失。再用 $\lambda$ 线性性得到一般 $a$。有限目标商由自然性及前述严格过滤性质得到。',dep=('STEP-003',))
c=ch('obstruction','总障碍与唯一候选微分')
st(c,'STEP-005','二阶平方的选择',r'经典 $\pi_{62}S\cong(\mathbb Z/2)^4$，生成元过滤为 $2,6,8,10$，首个由 $h_5^2$ 检测。于是 $\theta=\theta_5\in\pi_{62,64}S$ 存在；无挠性将经典 $2\theta=0$ 提升为合成等式。任意另一选择为 $\theta+z$，其中 $\operatorname{AF}(z)\ge6$。[[EXT-004]]',r'因茎六十二为偶数且 $2\theta=0$，有 $(\theta+z)^2-\theta^2=2\theta z+z^2=z^2\in F^{12}$。故平方是否具有过滤十的首项 $\lambda^6A$ 与选择无关。这里结论是检测首项不变，不是不同平方严格相等。',dep=('STEP-002',))
st(c,'STEP-006','归纳构造的精确障碍',r'二阶条件允许将 $\theta$ 延伸到 Moore 谱；其二次构造在底部两胞腔的连接映射给出 $\delta_1(h_6^2)=\lambda\eta\theta^2$。这个边界由 $h_6^2$ 自身确定，因此与 $\theta$ 的选择无关。它为零当且仅当 $h_6^2$ 可提升到 $S$。[[EXT-005]]',r'若该障碍的非零首项为 $\lambda^{n-4}T_n$，其中 $T_n$ 的过滤为 $n$，则对应经典微分为 $d_{n-2}(h_6^2)=T_n$。不能由等式中的 $T_n$ 名称断言该微分非零，仍须检查 $T_n\notin B_{n-3}$。',dep=('STEP-004','STEP-005'))
st(c,'STEP-007','平方过滤的逐层排除',r'茎一百二十四在过滤五以下为空；过滤六的 $x_{124,6}$ 出 $d_5$；过滤七的三个方向分别为 $d_2$ 边界、出 $d_5$、出 $d_3$；过滤八出 $d_2$；过滤九的三个方向分别出 $d_3,d_3,d_2$。因为 $\pi_{124,128}S$ 无挠，所有边界的残留合成挠性也被排除，所以 $\theta^2\in F^{10}$。[[EXT-012]]',r'过滤十的五个方向中，三个为 $d_2,d_4,d_4$ 边界，一个出 $d_5$，只剩 $A$。过滤十一的三个循环方向分别为 $d_2,d_2,d_3$ 边界，其余出 $d_4,d_2$；过滤十二四个循环方向分别为 $d_2,d_2,d_2,d_3$ 边界，余下出 $d_2$。过滤十三只剩永久方向 $E=e_0\Delta h_6g$，其余为 $d_2,d_3$ 边界或出 $d_3$。',r'故平方或者由 $\lambda^6A$ 检测，或者首项为 $\lambda^9E$，或者属于 $F^{14}$。这里的严格 $\lambda$ 可除性来自可选的永久代表元与无挠性；不能将一个高过滤有限商类任意除以 $\lambda$。',dep=('STEP-002','STEP-003'))
st(c,'STEP-008','代表元变化的统一过滤估计',r'若 $z\in F^{11}\pi_{124,134}S$，则 $\lambda^3\eta z\in F^{15}$。为见此，过滤十一、十二的出射全零方向均为 $d_2$ 或 $d_3$ 边界；选取分别由 $\lambda$ 或 $\lambda^2$ 杀掉的代表元，先减去这些方向，再乘 $\lambda^3$，这些低级误差全部消失。剩余过滤十三的唯一永久方向是 $E$，而 $h_1E=0$，故乘 $\eta$ 的首项至少升至过滤十五；过滤十四以上同样至少升至十五。[[EXT-003]] [[EXT-011]] [[EXT-012]]',r'特别地，任意两个 $A$ 的代表元相差上述 $z$，所以 $\lambda^3\eta[A]$ 是否具有过滤十四的首项 $\lambda^6T$ 与代表元选择无关。此估计也适用于 $\theta[B]$：其自然过滤至少十，而 $h_5^2B=0$ 使它升至十一，因此 $\lambda^3\eta\theta[B]\in F^{15}$。',dep=('STEP-007',))
st(c,'STEP-009','高过滤尾部的完整消去',r'在 $\pi_{125,130}S$ 中，过滤 $s$ 对应 $\lambda^{s-5}$，入射边界分母为 $B_{s-4}$。过滤十五的循环均为 $d_2$ 或 $d_4$ 边界；十六、十七同样由 $d_2,d_4$ 杀掉；十八为 $d_5$ 边界；十九至二十四各方向均出非零微分或为长度至多四的边界。因此这些过滤没有非零关联分次。[[EXT-012]]',r'过滤二十五的四个基方向中，一个出 $d_2$，两个方向为 $d_4$ 边界；剩余恰为 $G=g^4\Delta h_1g$。后一条入射可能附加 $d_0^2e_0gB_4$，但该附加方向本身已为 $d_4$ 边界，故不改变商空间的一维性。',r'完整茎一百二十五共有一百零五个基，过滤大于二十五的三十八个基最高到五十七。它们的阶梯基全部出非零 $d_2,d_3,d_4$，或为这三种长度的边界；因此并无未检查的更高过滤尾项。由于该处 $s-4\ge22$，这些短边界在所需合成权中全部消失。[[EXT-013]]',dep=('STEP-001',))
st(c,'STEP-010','tmf 排除高过滤障碍',r'如果 $\theta^2$ 不由 $\lambda^6A$ 检测，则平方过滤分类和 $h_1E=0$ 给出 $\eta\theta^2\in F^{15}$。高过滤尾部只剩 $\lambda^{20}G$；它映入 $\mathrm{tmf}$ 非零，而 $\theta$ 的像为零，故 $\eta\theta^2$ 的像为零。由这一维检测与分离过滤，必有 $\eta\theta^2=0$。[[EXT-010]]',r'这一步只在已经逐层证明高过滤部分至多一维后使用 Hurewicz 检测，不把非零 Hurewicz 像误当作整个同伦群上的单射。',dep=('STEP-007','STEP-009'))
st(c,'STEP-011','目标入射的穷尽',r'要命中过滤十四的 $T$，源必须位于茎一百二十六、过滤 $14-r$。过滤零、一为空；过滤三至七的 $h_0$ 塔均早已为 $d_2$ 边界，另两个低过滤方向分别出 $d_3$ 或直到 $E_{18}$ 无出射。过滤八中三个方向提前出 $d_2,d_3,d_3$，$h_0^6h_6^2$ 为 $d_2$ 边界，$h_6(C^{\prime}+X_2)$ 直到 $E_{17}$ 无出射，只剩 $U$ 可出 $d_6$。[[EXT-012]]',r'过滤九中除边界外的四个方向提前出 $d_4,d_4,d_3,d_3$，不能出所需 $d_5$；过滤十的 $x_{126,10}$ 出 $d_2$，其余为边界或永久方向，不能出所需 $d_4$；过滤十一剩余候选的 $d_2$ 已非零或 $d_4$ 才可能非零，不能出 $d_3$；过滤十二的非边界方向分别出 $d_4$ 和 $d_2$，后一条命中的是 $h_0^2x_{125,12}$ 而非 $T$。因此只有 $d_6(U)$ 与 $d_{12}(h_6^2)$ 能命中 $T$。',r'特别地，未知 $d_3(x_{126,6})$ 的两个许可值都非零；它既不存活到 $E_8$，也不能成为额外的 $d_8$ 源。',dep=('STEP-001',))
st(c,'STEP-012','三个条件与非零障碍',r'考虑三个条件：$d_6(U)=0$；平方由 $\lambda^6A$ 检测；对每个 $A$ 的代表元，$\lambda^3\eta[A]$ 由 $\lambda^6T$ 检测。后两个条件的存在版本与全称版本由前面的选择独立性相同。',r'三者同时成立时，可选择检测类使 $\lambda\eta\theta^2=\lambda^{10}[T]$。由于 $T$ 的唯一可能较短入射 $d_6(U)$ 已消失，而 $d_{12}$ 对应的挠长度为十一，$\lambda^{10}[T]$ 仍非零，故产生确切的非零 $d_{12}(h_6^2)=T$。',r'若平方条件不成立，则由高过滤尾部与 $\mathrm{tmf}$ 已有障碍为零。若平方条件成立但 $\eta$ 延伸条件不成立，统一过滤估计迫使 $\eta\theta^2$ 落入同一高过滤尾部，仍为零。若 $d_6(U)\ne0$，唯一许可值为 $T$；此时 $\lambda^5[T]=0$ 可选，$\eta\theta^2$ 的潜在 $\lambda^9T$ 首项消失，余项同样由 $\mathrm{tmf}$ 排除。因此非零出射只有上述 $d_{12}$。',dep=('STEP-005','STEP-006','STEP-008','STEP-010','STEP-011'))
(base/'data/math.json').write_text(json.dumps(math,ensure_ascii=False,indent=2)+'\n')
c=ch('toda','Toda 括号与通用的二延伸')
st(c,'STEP-013','先在较长商中选择代表元',r'设 $K=x_{123,9}+h_0x_{123,8}$。它存活到 $E_{12}$ 且不被入射命中，所以在 $R_{11}$ 中存在检测 $K$ 的 $\alpha_1\in\pi_{123,132}R_{11}$。对所有较短商使用同一代表元的像。[[EXT-012]]',r'微分 $d_2(x_{125,8})=h_1K+A$ 说明对每个 $[A]$，$D_0=\lambda\eta\alpha_1-\lambda[A]$ 的过滤至少十一。将其再乘 $\lambda^2$ 并映到 $R_9$，得到 $D\in\pi_{124,131}R_9$。过滤十一、十二的循环全为短边界，其 $\lambda$ 指数分别为四、五，已超过挠长度，故 $D\in F^{13}$。',dep=('STEP-001','STEP-003'))
st(c,'STEP-014','有兼容性的误差除法',r'$D$ 在 $R_9$ 的可能过滤只有十三至十五。过滤十三的 $h_4x_{109,12}$ 仍出 $d_3$，因为 $d_3(\lambda^6h_4x_{109,12})=\lambda^8h_1x_{122,15,2}\ne0$；其他短边界已消失，仅有永久方向 $E$。过滤十四仅有永久方向 $\Delta h_2^2x_{94,8}$ 能贡献；过滤十五中，由于 $D$ 来自较长商的同伦类，出 $d_2$ 的方向不能出现，边界又消失，只可能有永久方向 $h_3^2x_{110,13}+h_0x_{124,14}$。[[EXT-012]]',r'逐层选择这些球谱永久类的代表元并吸收误差，可构造 $\alpha_2\in\pi_{124,137}R_9$，使 $D=\lambda^6\alpha_2$。若 $\alpha_2$ 有过滤十三首项，它由 $E$ 检测；$h_1E=0$ 使 $\eta\alpha_2$ 首项至少到过滤十五，因这些代表来自球谱，可再除以 $\lambda$，写成 $\eta\alpha_2=\lambda\alpha_3$，$\alpha_3\in\pi_{125,140}R_9$。',r'于是有严格等式 $\lambda^3\eta\alpha_1=\lambda^3[A]+\lambda^6\alpha_2$ 与 $\eta\alpha_2=\lambda\alpha_3$。这里选择的 $\alpha_2$ 由误差决定，不能换成任意同检测类而仍保持前一等式。',dep=('STEP-008','STEP-013'))
st(c,'STEP-015','Toda 可定义所需的零乘积',r'在 $R_{11}$ 中考察 $\lambda^3\alpha_1b\in\pi_{123,130}R_{11}$。它的过滤至少十；过滤十的循环全为 $d_2,d_3$ 边界。过滤十一唯一仍可能的方向为 $\lambda^4(x_{123,11,2}+x_{123,11}+h_0h_6B_4)$，但它出 $d_7$ 到 $\lambda^{10}h_1x_{121,17}$，在 $R_{11}$ 中仍非零。[[EXT-012]]',r'过滤十二的循环为 $d_3,d_5$ 边界；过滤十三、十四的非边界方向出 $d_3$。过滤十五的 $h_0^2x_{123,13,2}$ 仍出 $d_3$，从 $\lambda^8$ 打到 $\lambda^{10}h_0^2x_{122,16}$；其余为短边界。过滤十六全部为短边界。因此该元素属于 $F^{17}$，是 $\lambda^{10}$ 倍数；映入 $R_9$ 后为零。',r'由 $\lambda^3\alpha_1b=0$ 和 $b\eta=0$，Toda 括号 $\mathcal T=\langle\lambda^3\alpha_1,b,\eta\rangle\subset\pi_{125,132}R_9$ 确有定义。较长商中的两个出射是必需的；直接在 $R_9$ 中看，它们的目标已经截断，不能完成同样的排除。[[EXT-008]]',dep=('STEP-013',))
st(c,'STEP-016','Toda 不定性的乘积消失',r'假设 $d_6(U)=0$ 且存在前述 $\eta$ 延伸。由 $\eta^2\in\langle b,\eta,b\rangle$ 和 Toda 换位，$\mathcal T$ 的值乘 $b$ 等于 $\lambda^3\eta^2\alpha_1=\lambda^6[T]+\lambda^7\alpha_3$。后一项过滤至少十五，前一项过滤十四且非零。[[EXT-008]]',r'令 $a=\lambda^3\alpha_1$。括号的不定子群为 $a\,\pi_{2,3}R_9+\pi_{124,130}R_9\,\eta$。乘 $b$ 后，前项因 $ab=0$ 消失，后项因 $\eta b=0$ 消失。因此所有括号值的 $b$ 倍数相同，且都具有上述非零过滤十四首项；不需要断言整个括号只有一个值。',r'继续乘 $\lambda^2$，$\lambda^8[T]$ 在 $R_9$ 中仍非零：其关联分次是 $Z_1/B_9$；$T$ 没有出射，而唯一较短的可能入射 $d_6(U)$ 已排除，$d_{12}$ 长度超过九。',dep=('STEP-011','STEP-012','STEP-014','STEP-015'))
st(c,'STEP-017','Massey 定义系统和零不定性',r'对 $\langle h_5^2,h_0,B\rangle$，指定 $d_2(h_6)=h_0h_5^2$ 和 $d_2(h_0^6h_6)=h_0B$ 作为两项零同伦，所给定义系统产生 $V=h_6B$。在 $E_3$ 上，它的不定性为 $h_5^2E_3^{7,70}+E_3^{1,64}B$。后一项为零，因为 $h_6$ 已出 $d_2$；前一群由 $X_2,C^{\prime}$ 张成，且 $h_5X_2=h_5(C^{\prime}+X_2)=0$，故同样为零。[[EXT-016]]',r'Moss 穿越微分须为 $d_{3+n}(z)$，落在相邻乘积的茎六十二且过滤严格介于 $f$ 与 $f+n+1$ 之间。对 $h_5^2h_0$，$f=3$ 迫使源过滤小于一，不存在；对 $h_0B$，$f=9$ 迫使源过滤至多六。该范围完整源为 $h_0^ih_6$（$0\le i\le5$）、$h_1h_5^2$ 和 $h_1H_1$，前者均已出 $d_2$，后二者非零永久存活，所以也没有这样的后续微分。[[EXT-009]] [[EXT-016]]')
st(c,'STEP-018','合成二阶与括号代表元',r'经典 $[B]$ 为二阶。任意合成提升 $[B]\in\pi_{62,70}S$ 的 $2[B]$ 属于过滤至少九，且其经典像为零，因而是 $\lambda$ 幂挠。此权的挠类需要茎六十三、源过滤至多六；这些源唯一非零微分都是 $d_2$，目标过滤至多八。因此过滤九以上没有这样的挠性，故 $2[B]=0$。[[EXT-004]] [[EXT-016]]',r'现在 $\langle\theta,2,[B]\rangle$ 在合成同伦中可定义。上述定义系统、零 Massey 不定性和无穿越条件给出某个由 $V$ 检测的括号值 $[V]$。其天然双次数为 $(125,134)$，与 $\theta$ 的权六十四、$[B]$ 的权七十及平移不改变权的约定一致。[[EXT-009]]',dep=('STEP-002','STEP-005','STEP-017'))
st(c,'STEP-019','过滤九方向的乘积估计',r'由 $[V]\in\langle\theta,2,[B]\rangle$ 及 $\lambda b=2$，Toda 换位给出 $\lambda^2b[V]\in\lambda\langle2,\theta,2\rangle[B]$。可取夹心括号的值为 $\lambda^2\eta\theta$，于是该主项为 $\lambda^3\eta\theta[B]\in F^{15}$，这里使用 $h_5^2B=0$ 和统一过滤估计。[[EXT-008]]',r'夹心括号的歧义属于 $2\pi_{63,64}S$。其中过滤三方向为 $\eta\theta$，其二倍已经为零；其余方向过滤至少六，乘二再乘 $[B]$ 后过滤至少十五。因此这些歧义也不能贡献过滤十四，得到 $\lambda^2b[V]\in F^{15}$。这个推导只估计过滤，不消去可能具有核的 $\eta$。',dep=('STEP-008','STEP-018'))
st(c,'STEP-020','保留低阶混合项的括号分解',r'$\pi_{125,132}R_9$ 的过滤至多十二部分，恰有三个可能方向：过滤七的 $[h_0^2x_{125,5}]$，过滤九的 $\lambda^2[V]$，过滤十一的 $Y=[\lambda^4C]$。其余低过滤类或者出射非零，或者已属于 $B_{s-6}$。其中 $d_3(x_{126,6})$ 的两种允许值都消去 $h_5x_{94,8}$ 的方向，留下的过滤九方向仍可选为 $V$。[[EXT-012]]',r'过滤十二的循环方向为 $d_2,d_3$ 边界；过滤十三的循环为 $d_2,d_4$ 边界，而 $h_3x_{118,12}$ 在此权仍出 $d_3$，所以这两级均为零。因此每个括号值可写为 $t=\epsilon_7L+\epsilon_9\lambda^2[V]+\epsilon_{11}Y+e$，其中 $e\in F^{14}$。可选 $L$ 满足 $\lambda^2L=0$，因为它是 $d_3$ 的目标。[[EXT-003]]',r'不能从 $\lambda^2t\ne0$ 推出 $\epsilon_7=0$；$t$ 完全可能含有非零低阶挠项。真正需要的是找出 $Y$ 的系数，而不是声称整个括号由 $Y$ 检测。',dep=('STEP-001','STEP-016'))
st(c,'STEP-021','所需推论对每个代表元成立',r'把分解乘 $\lambda^2b$。$L$ 项为零，$\lambda^2[V]$ 项的 $b$ 倍数过滤至少十五，$e$ 项同样至少十五；而左侧有非零过滤十四首项 $\lambda^8T$。因此 $\epsilon_{11}=1$。',r'对 $Yb\in\pi_{125,133}R_9$，过滤十二的三个循环方向全为 $d_2,d_3$ 边界，另两个方向出 $d_2$；过滤十三的循环全为 $d_2,d_4$ 边界，余下 $h_3x_{118,12}$ 出 $d_3$。所以 $Yb\in F^{14}$；该级唯一非零循环为 $\lambda^6T$。乘 $\lambda^2$ 保持这个首项非零，因此 $Yb$ 必由 $\lambda^6T$ 检测。[[EXT-012]]',r'若 $Y^{\prime}$ 是任意另一 $\lambda^4C$ 代表元，则 $Y^{\prime}-Y\in F^{12}$；但该双次数过滤十二、十三均为零，所以差实际属于 $F^{14}$，乘 $b$ 后属于 $F^{15}$。因此同一延伸对所有代表元成立。高过滤误差只能来自可以相容除去 $\lambda^6$ 的永久代表元，吸收到 $[T]$ 的选择后可写为 $Y^{\prime}b=\lambda^6[T]\ne0$。',dep=('STEP-019','STEP-020'))
c=ch('nu','余纤维微分产生的三维延伸')
st(c,'STEP-022','两条三角与同时选择',r'经典三角 $S^3\xrightarrow{\nu}S^0\xrightarrow{i}C\nu\xrightarrow{q}S^4$ 的同调给出短正合列。其合成化使用过滤提升 $v=[h_2]$，有 $C(v)\simeq\nu(C\nu)$；经典合成映射 $\nu(\nu)=\lambda v$ 与此提升有不同源权，不能混同它们的余纤维。[[EXT-007]]',r'取 $\bar X=X[4]+x_{126,8}[0]+x_{126,8,2}[0]$，则 $q_*(\bar X)=X$，且 $d_3(\bar X)=C[0]=i_*(C)\ne0$。$q$ 在该首项的过滤长度为零，所以高过滤代表元变化不可能改变它的过滤八首项，这正给出这里所需的无穿越性。[[EXT-014]]')
st(c,'STEP-023','广义 Mahowald 论证的特化证明',r'取第二条区别三角 $R_3\to R_2\xrightarrow{\delta_2}\Sigma^{1,-2}R_1\xrightarrow{\lambda^2}\Sigma^{1,0}R_3$。$\bar X$ 可在 $R_2$ 中取代表，$\delta_2$ 将它送到 $C[0]$；在 $R_1$ 的该双次数，没有更高过滤的歧义，因此这个像与 $i_*C$ 严格相等。[[EXT-003]]',r'将两条三角取 smash 积，双重余纤维提升引理给出 $x\in\pi_{122,130}R_3$，其像为 $q\bar X$，且 $vx=\lambda^2[C]\in\pi_{125,134}R_3$。这是三维延伸的完整构造：所用参数为经典微分长度三、两条胞腔映射的过滤长度零、$\nu$ 的过滤一。故它等价于 $E_4$ 上从 $X$ 到 $C$ 的过滤跳跃三，不需要把广义 Mahowald 技巧当作新的外部定理。[[EXT-006]]',dep=('STEP-004','STEP-022'))
st(c,'STEP-024','提升到较长商并控制误差',r'$X$ 存活到 $E_6$ 且无入射，所以能提升到 $R_5$。在 $R_3$ 的 $(122,130)$ 双次数，过滤九、十为空，故前一步的 $x$ 是该检测首项的唯一类，所选 $R_5$ 提升必与它相容。[[EXT-012]]',r'$vx$ 的过滤九首项为 $h_2X=0$。过滤十的全部方向或者出 $d_2,d_3$，或者为 $d_2$ 边界；对应 $\lambda$ 指数为一，边界已经消失。因此 $vx$ 的首项为过滤十一的 $\lambda^2C$；到 $R_3$ 的映射在该首项上为包含，排除了同级其他可能类。[[EXT-011]] [[EXT-012]]',r'经 $\lambda^4:R_5\to R_9$，得到 $\alpha=[\lambda^4X]\in\pi_{122,126}R_9$，且 $\alpha v=\beta$，其中 $\beta\in\pi_{125,130}R_9$ 由 $\lambda^6C$ 检测。这里暂不把 $\beta$ 写成某个任意代表元的 $\lambda^2$ 倍数。',dep=('STEP-003','STEP-023'))
st(c,'STEP-025','两种延伸的代表元兼容',r'取上一段任意 $Y=[\lambda^4C]\in\pi_{125,132}R_9$。$\beta-\lambda^2Y$ 的过滤至少十二。在权一百三十的 $R_9$ 中，过滤十二全为短边界或出 $d_2$；过滤十三仅可能有 $\lambda^8h_3x_{118,12}$，更高过滤已被截断。',r'具体 Ext 乘法给出 $h_0h_3x_{118,12}=h_0^2x_{125,12}$，右侧为 $d_2(h_3x_{119,11})$ 的像。在乘 $b$ 后的权一百三十一中，此方向已经属于边界；过滤十五又超过 $R_9$ 的上限。因此 $(\beta-\lambda^2Y)b=0$，得到 $\alpha vb=\beta b=\lambda^2Yb=\lambda^8[T]\ne0$。[[EXT-012]] [[EXT-016]]',r'此处的误差计算保证两个延伸用到同一个可兼容的代表元体系，避免由检测符号相同直接宣称同伦代表元相等。',dep=('STEP-016','STEP-021','STEP-024'))
c=ch('contradiction','短微分穷尽与矛盾')
st(c,'STEP-026','先乘二再乘三维类',r'令 $P=\alpha b\in\pi_{122,127}R_9$。由于 $Pv=\lambda^8[T]\ne0$ 且 $T$ 不是 $h_2$ 倍数，$P$ 的过滤不能只在十三以上。过滤九、十为空；过滤十一、十二的短边界消失，留下两个永久方向 $D=h_6Md_0$ 与 $F=h_5x_{91,11}$。故 $P=\epsilon_D\lambda^6[D]+\epsilon_F\lambda^7[F]+e$，其中 $e\in F^{13}$。[[EXT-011]] [[EXT-012]]',r'乘 $v$ 后，$e$ 最早只能贡献过滤十四，但 $T$ 不在 $h_2$ 乘法的像中，所以这个误差的过滤十四 $T$ 系数为零。于是非零 $T$ 系数必须来自前两个永久方向之一；无需将整个有限商等式提升到球谱。',dep=('STEP-025',))
st(c,'STEP-027','球谱中的可除性',r'对于 $D$，$h_2D$ 为 $d_2$ 边界，因此 $\lambda[D]v$ 的过滤至少十三。过滤十三的循环均为 $d_2$ 或 $d_4$ 边界，乘到权一百三十五后其 $\lambda$ 指数三已足以消去；出 $d_3$ 的方向也不能出现。因此 $\lambda^2[D]v\in F^{14}\pi_{125,135}S$。[[EXT-011]] [[EXT-012]]',r'对于 $F$，$h_2F$ 为 $d_2$ 边界，故 $\lambda[F]v\in F^{14}\pi_{125,137}S$。过滤十四的唯一永久非边界方向是 $T$。上一段保证这两个表达式至少一个具有非零 $T$ 系数：前者由 $\lambda^4T$ 检测，后者由 $\lambda^2T$ 检测。',r'选择球谱永久代表元并逐层吸收高过滤误差，在第一种情形可写 $\lambda^2[D]v=\lambda^4[T^{\prime}]$；在第二种情形可写 $\lambda[F]v=\lambda^2[T^{\prime}]$，再乘 $\lambda^2$。两种情形均使某个 $\lambda^4[T^{\prime}]$ 成为 $v$ 倍数，其中 $[T^{\prime}]$ 仍检测 $T$。',dep=('STEP-003','STEP-026'))
st(c,'STEP-028','正确余纤维中的消失',r'由于 $\lambda^4[T^{\prime}]$ 为 $v$ 倍数，在余纤维 $C(v)\simeq\nu(C\nu)$ 中其像为零。$T$ 不是 $h_2$ 倍数，故 $T[0]$ 在余纤维的 $E_2$ 页非零；从球谱的永久循环自然映入也说明它所有出射为零。[[EXT-007]] [[EXT-011]]',r'若 $\lambda^4T[0]$ 的合成关联分次非零，则其任意检测代表元均非零，与上述像为零矛盾。合成微分刚性遂要求它被 $\lambda^{r-1}$ 倍目标命中，且 $r-1\le4$；因此经典 $T[0]$ 必被某个 $d_r$ 命中，$2\le r\le5$。[[EXT-001]]',dep=('STEP-027',))
st(c,'STEP-029','全部短入射源',r'目标过滤十四，所以 $d_2,d_3,d_4,d_5$ 的源过滤分别为十二、十一、十、九；更高源过滤不可能命中这个目标。过滤十二的四个方向中，两个已为 $d_2$ 边界，一个出 $d_3$，剩余 $h_3x_{119,11}[0]$ 的 $d_2$ 值为 $h_0^2x_{125,12}[0]$，不是 $T[0]$。[[EXT-015]]',r'过滤十一的两个方向已为 $d_2,d_3$ 边界，其余一个永久，一个直到 $E_{14}$ 无出射，故没有 $d_3$ 源。过滤十的两个方向已为 $d_2$ 边界，余下 $x_{126,10}[0]$ 出 $d_3$，故没有 $d_4$ 源。',r'过滤九的五个方向中两个为 $d_2$ 边界，$h_1x_{125,8}[0]$ 直到 $E_{16}$ 无出射，剩余两个已分别出 $d_4,d_3$，所以没有 $d_5$ 源。各过滤采用的是完整线性基；同一页的多个出射目标独立，故线性组合不能产生漏掉的新循环。于是不存在所需短入射，得到矛盾。',dep=('STEP-028',))
st(c,'STEP-030','消除全部出射并保留非零性',r'矛盾说明 $d_6(U)=0$ 时，所需的 $\eta$ 延伸不能成立。因而产生非零 $d_{12}(h_6^2)=T$ 的三个条件不可能同时成立。总障碍分类于是给出 $\lambda\eta\theta^2=0$，$h_6^2$ 所有经典出射微分均为零。',r'入射到 $(s,t)=(2,128)$ 的 $d_r$ 必来自 $(2-r,129-r)$。当 $r\ge3$ 时源过滤为负；当 $r=2$ 时源为 $\operatorname{Ext}_A^{0,127}(\mathbb F_2,\mathbb F_2)=0$，因为平凡模的零次 Ext 只在内部次数零非零。因此不存在任何入射。',r'标准 $h_6^2$ 在 $E_2^{2,128}$ 是非零基元。无出射保证它每次传到下一页，无入射保证每次传递仍非零，所以得到非零 $E_\infty^{2,128}$ 类。强收敛将它实现为 $F^2\pi_{126}S/F^3\pi_{126}S$ 的非零元素，因而存在由 $h_6^2$ 检测的同伦类。[[EXT-012]]',dep=('STEP-012','STEP-029'))
math['conclusion']={'id':'conclusion','title':'非零永久存活','paragraphs':[r'在上述文献定理与明确的 Ext、微分、乘法及检测数据下，$h_6^2$ 的全部出射为零，全部入射来源为空；其非零 $E_2$ 类因此给出非零 $E_\infty$ 类，并检测二完备球谱的一个一百二十六维同伦类。']}
(base/'data/math.json').write_text(json.dumps(math,ensure_ascii=False,indent=2)+'\n')
# Active dependencies are kept at the granularity of their mathematical use.
history=[]
def retired(n,to):
 d=next(x for x in deps if x['number']==n);d['old_id']=d['id'];d['superseded_by']=[f'EXT-{a:03}' for a in to];history.append(d)
retired(8,[17,18,19]);retired(10,[20,21]);retired(11,[22,23,24]);retired(12,[25,26,27,28,29]);retired(16,[30,31])
ext(17,'低维合成关系',r'在二完备 H F_2-合成球谱及其乘法商 R_N 中，b=[h_0]∈π_{0,1}、η=[h_1]∈π_{1,2} 满足 λb=2、bη=0，且 η²∈〈b,η,b〉。',2481,2502,'lem:toda2ext proof',category='基础理论')
ext(18,'θ₅ 的夹心 Toda 值',r'对检测 h_5² 的二阶合成类 θ_5∈π_{62,64}S，有 λ²ηθ_5∈〈2,θ_5,2〉⊂π_{63,64}S。该括号的不定子群为 2π_{63,64}S+π_{63,64}S·2；不假定该群为零。',2546,2556,'lem:toda2ext proof',category='基础理论')
ext(19,'Toda 换位和不定性',r'在此稳定对称幺半范畴中，若 ab=bc=0，则三重Toda括号〈a,b,c〉的不定子群为 a·[Σ(source c),source a]+[Σ(source b),target a]·c，以对应双次数解释。乘法与括号满足通常的左右包含和换位公式；因而a·〈b,c,d〉与〈a,b,c〉·d可用相容零同伦选取相同值，符号由分次决定。把等式用于所有值时须另证明不定性乘积消失。',2489,2504,'lem:toda2ext proof',category='基础理论')
ext(20,'θ₅ 的经典 tmf 像',r'球谱单位 S→tmf 是环谱映射；所有由 h_5² 检测的经典 θ_5∈π_62S 在π_62tmf 中像为零。',2331,2335,'prop:possible_h_6_sq proof',extra={'path':'Source/tmf/source/tmfhi9.tex','label':'Theorem1.2;Theorem6.1','line_start':1647,'line_end':1652,'commit':commit,'description':'完整Hurewicz像的主定理，结合232–246的像描述'})
ext(21,'过滤二十五类的 tmf 检测',r'经典球谱过滤二十五的永久类 G=g⁴Δh_1g 所检测的同伦元素在π_125tmf 中像为非零 κ̄⁴w；w由Δh_1g检测。',2331,2335,'prop:possible_h_6_sq proof',extra={'path':'Source/tmf/source/tmfhi9.tex','label':'Lemma7.3;Corollary7.5','line_start':1751,'line_end':1774,'commit':commit,'description':'125茎Hurewicz像及检测'})
ext(22,'过滤提高所需的零乘积',r'在球谱Ext代数中，h_1e_0Δh_6g=0，h_5²(Δe_1+C_0+h_0^6h_5²)=0，h_2h_1x_{121,7}=0。',2255,2261,'lem:equistate5 proof;lem:toda2ext proof;lem:nuext125 proof',category='计算数据')
ext(23,'目标类的不可整除性',r'在球谱Ext代数中，T=h_1h_4x_{109,12}既不属于乘h_0的像也不属于乘h_2的像；C=h_0²x_{125,9,2}不属于乘h_2的像。',2499,2502,'lem:toda2ext proof;lem:nuext125 proof;prop:state5false proof',category='计算数据')
ext(24,'两个三维乘积的短边界',r'球谱Ext中 D=h_6Md_0 位于stem122、filtration11，F=h_5x_{91,11}位于stem122、filtration12。h_2D∈E_2^{12,137} 与 h_2F∈E_2^{13,138} 都是经典Adams d_2 的像。',2707,2728,'prop:state5false proof',category='计算数据')
# Parse only the literal table rows actually used in the proof.
segments=[(25,'一百二十二维的低过滤表',2805,2847,13),(26,'一百二十三维的代表元表',2854,2902,17),(27,'一百二十四维的平方与误差表',2910,2991,15),(28,'一百二十五维的完整低过滤表',2996,3077,25),(29,'一百二十六维的候选源表',3083,3170,12)]
for n,title,start,end,maxs in segments:
 selected=[];sval=None
 for line in main.splitlines()[start-1:end]:
  if line.strip().startswith('%'):continue
  mt=re.search(r'\\multirow\{[^}]+\}\{[^}]+\}\{([^}]+)\}',line)
  if mt:
   val=mt.group(1)
   if re.fullmatch(r'\d+(?:-\d+)?',val):sval=val
  if ' & ' in line and sval and int(sval.split('-')[0])<=maxs:selected.append('s='+sval+': '+line.strip())
 ext(n,title,r'以下为指定茎及过滤范围的完整 F_2 基和微分；d_r^{-1} 表示命中当前类的入射，Permanent 表示出射全零，? 表示未知而不能当成零。空白过滤段是零群。\n'+'\n'.join(selected),start,end,'Appendix exact rows',category='计算数据')
ext(30,'Massey 所需的六十三维计算',r'球谱stem63、filtration≤6的完整E_2基是h_0^ih_6(0≤i≤5)、h_1h_5²(s=3)、h_1H_1(s=6)；d_2(h_0^ih_6)=h_0^{i+1}h_5²≠0，后二类非零永久存活。stem63、filtration7的E_3由X_2,C′张成，h_5X_2=h_5(C′+X_2)=0。另 d_2(h_0^6h_6)=h_0(Δe_1+C_0+h_0^6h_5²)。',2526,2539,'lem:toda2ext proof',category='计算数据',extra={'path':'Source/IWX/data/Adams-classical-E2.csv','label':'stem63,s≤7','commit':commit,'description':'源类及微分，配合Einfty.csv；零乘积直接见原始Lin关系18,1,84,1与18,1,85,1'})
ext(31,'ν 延伸误差的具体 h₀ 乘积',r'球谱 Ext 中 h_0h_3x_{118,12}=h_0²x_{125,12}；后者是经典d_2(h_3x_{119,11})的像。',3039,3043,'Table:S125.19;raw Ext relation',category='计算数据',extra={'path':'../Lin-program/program/upstream/kervaire_csv/S0_AdamsE2_relations.csv','label':'stem125,s14; 0,1,3,1,335,1;0,2,425,1','commit':commit,'description':'原始关系，id335=x118,12、id425=x125,12'})
# Precise generic convergence statement; its application is proved in STEP-017 and STEP-018.
d9=next(x for x in deps if x['number']==9)
d9['used_statement']=d9['source_statement']=r'在强收敛的Adams谱序列中，设a,b,c是E_r的永久循环，检测α,β,γ；要求ab=bc=0且同伦αβ=βγ=0。若对ab、bc均不存在微分d_{r+n}(x)=y，使目标与相邻乘积同茎同权、过滤严格满足f<AF(y)<f+n+1，则相应Massey乘积中有永久循环检测〈α,β,γ〉的值。不定性按通常Massey与Toda子群处理；经典情形去掉额外权条件。'
d9['sources'].append({'path':'Source/IWX/source/more-stable-stems-background.tex','label':'Moss convergence theorem and crossing definition','line_start':496,'line_end':573,'commit':commit,'description':'原始研究论文对Moss定理的完整重述；与主文扩张crossing概念不同'})
# Granular citation routing.
route8={'STEP-015':[17],'STEP-016':[17,19],'STEP-019':[18,19]}
route11={'STEP-008':[22],'STEP-024':[22],'STEP-026':[23],'STEP-027':[24],'STEP-028':[23]}
route12={'STEP-002':[28],'STEP-007':[27],'STEP-008':[27],'STEP-009':[28],'STEP-011':[29],'STEP-013':[26,28],'STEP-014':[27],'STEP-015':[26],'STEP-020':[28,29],'STEP-021':[28],'STEP-024':[25,28],'STEP-025':[28],'STEP-026':[25],'STEP-027':[28],'STEP-030':[29]}
for s in steps:
 for i,p in enumerate(s['paragraphs']):
  for old,routing in [(8,route8),(11,route11),(12,route12)]:
   if f'[[EXT-{old:03}]]' in p:p=p.replace(f'[[EXT-{old:03}]]',' '.join(f'[[EXT-{n:03}]]' for n in routing.get(s['id'],[])))
  p=p.replace('[[EXT-010]]','[[EXT-020]] [[EXT-021]]')
  p=p.replace('[[EXT-016]]','[[EXT-031]]' if s['id']=='STEP-025' else '[[EXT-030]]')
  s['paragraphs'][i]=p
# Mathematically reviewed corrections.
by={s['id']:s for s in steps}
by['STEP-001']['paragraphs'][1]=by['STEP-001']['paragraphs'][1].replace('在 $R_N$ 中非零，当且仅当','作为 $R_N$ 的关联分次首项非零，当且仅当')
by['STEP-004']['paragraphs'][0]=by['STEP-004']['paragraphs'][0].replace('则在次数允许的范围内',r'对目标商 $R_{m-n}$，当 $0\le a<n$ 且 $0\le a+r-n-1<m-n$ 时')
by['STEP-004']['paragraphs'][1]+=r'归纳中除 $\lambda$ 的歧义为 $B_{r-n+1}$；当 $n\ge2$ 时它包含于 $B_{r-1}$。对长度递增的短边界再归纳，恰好得到全部较短连接延伸的边界。'
by['STEP-005']['paragraphs'][0]+=r'经典差的高过滤代表可选合成提升 $z_0$；实际合成差与 $z_0$ 的经典像相同，它们之差是 $\lambda$ 幂挠。由 $\pi_{62,64}S$ 无挠，二者相等，故合成差也属于 $F^6$。'
by['STEP-011']['paragraphs'][0]=by['STEP-011']['paragraphs'][0].replace('另两个低过滤方向分别出 $d_3$ 或直到 $E_{18}$ 无出射','另有 $x_{126,4},x_{126,6}$ 两个方向出 $d_3$，以及 $h_1h_6H_1$ 直到 $E_{18}$ 无出射')
by['STEP-012']['paragraphs'].insert(2,r'具体地，$h_1A=0$ 因为 $h_1h_0=0$，所以 $\eta[A]\in F^{12}$。乘 $\lambda^3$ 后，过滤十二、十三的全部循环均属于 $d_2,d_3,d_4$ 边界，故 $\lambda^3\eta[A]\in F^{14}$；若无 $\lambda^6T$ 首项才进一步属于 $F^{15}$。[[EXT-028]]')
by['STEP-010']['paragraphs'].insert(0,r'单位映射下的合成 $\theta$ 落在 $\pi_{62,64}\nu\mathrm{tmf}$；该权的潜在 $\lambda$ 挠源只能位于正茎六十三、过滤零，因而不存在。经典像为零于是推出合成像为零。$G$ 的合成 $\lambda$ 倍数若为零，其反演后经典像也为零，与非零 Hurewicz 检测矛盾。[[EXT-020]] [[EXT-021]]')
# Scope and used summaries shown independently from exact fixed statements.
for d in deps:
 if d['number'] in [1,2,3,4,5,6,7,11,14,15]:d['math_approval']['status']='approved'
 if d['number']==7:d['sources'].append({'path':'MainPaper/main.tex','label':'prop:41561db2;not:fhat','line_start':929,'line_end':959,'commit':commit,'description':'余纤维的源权及合成提升'})
 d['used_summary']=d['used_statement'].split('。')[0]+'。'
for n,summary in {13:'一百二十五维的 E₂ 恰有105个基；过滤大于25的38个方向全部在 d₂、d₃、d₄ 上消失。最高过滤为57，没有遗漏的更高尾项。',15:'ν余纤维中茎126、过滤9至14的完整基和微分。命中过滤14目标的 d₂至d₅，只可能来自过滤12、11、10、9。',25:'茎122、过滤至13的完整基及微分；特别包括 X、D、F 三个用于交换乘积的方向。',26:'茎123、过滤至17的完整基及微分，用于在较长λ商中构造α₁并证明其与[h₀]的零乘积。',27:'茎124、过滤至15的完整基与微分，用于平方过滤、η延伸代表元选择和误差除法。',28:'茎125、过滤至25的完整基与微分，用于Toda候选、短边界和高过滤尾部。',29:'茎126、过滤至12的完整基与微分，用于穷尽可能命中T的所有来源。'}.items():next(d for d in deps if d['number']==n)['used_summary']=summary
# Fine grained pure mathematical references.
math['reference_occurrences']=[]
for chapter in math['chapters']:
 for s in chapter['steps']:
  for i,p in enumerate(s['paragraphs']):
   for did in re.findall(r'\[\[(EXT-\d+)\]\]',p):math['reference_occurrences'].append({'id':f'occ-{len(math["reference_occurrences"])+1:03}','dependency_id':did,'chapter_id':chapter['id'],'step_id':s['id'],'paragraph_index':i})
active=[d for d in deps if d not in history]
(base/'data/dependencies.json').write_text(json.dumps(active,ensure_ascii=False,indent=2)+'\n')
(base/'data/dependencies-history.json').write_text(json.dumps(history,ensure_ascii=False,indent=2)+'\n')
(base/'data/math.json').write_text(json.dumps(math,ensure_ascii=False,indent=2)+'\n')
proof=[math['title'],'',*math['target']['paragraphs'],'',*math['notation']['paragraphs']]
for chapter in math['chapters']:
 proof+=['',chapter['title'],'']
 for s in chapter['steps']:proof += [s['title'],'',*s['paragraphs'],'']
proof+=math['conclusion']['paragraphs']
(base/'proof.zh.md').write_text('\n\n'.join(proof)+'\n')
review={'status':'pending','math_version':'math-v1','role':'Reasoner','inputs_read':['MainPaper/main.tex','MainPaper/112.tex（仅依赖图参考）','MainPaper/main.bib','必要的Source原始文献与原始公开Lin CSV/C++编码'],'not_read_as_mathematical_evidence':['Lean','既往审计结论'],'issues':[{'id':'R-001','source':'MainPaper/main.tex:2549-2564','finding':'η乘后等式不能消去η','resolution':'用所有F11输入的λ³η像在F15这一统一过滤估计替代'},{'id':'R-002','source':'MainPaper/main.tex:2436','finding':'α₂天然权与λ⁶E检测声称不一致','resolution':'α₂由E或更高过滤检测，λ⁶α₂由λ⁶E检测；逐层构造相容除法'},{'id':'R-003','source':'MainPaper/main.tex:2514-2525','finding':'低阶挠项可与高项混合，不能由乘λ²非零否定低首项','resolution':'保留混合项，乘λ²后只推出Y系数1及通用b延伸，不声称Toda整体AF11'},{'id':'R-004','source':'MainPaper/main.tex:2731','finding':'C(λ[h₂])与νCν的源权不匹配','resolution':'改用C([h₂])≃νCν；已知可除性足以推出同一短微分矛盾'},{'id':'R-005','source':'MainPaper/main.tex:2128','finding':'π125,130无λ挠性不能在排除d12之前使用','resolution':'只证明所需π62,64与π124,128无挠；通过总障碍公式绕开有限商改写'}],'rounds':[{'round':1,'status':'revised','scope':'STEP001–012','reviewer':'Judger','action':'关联分次措辞、循环界、合成差提升、η最低过滤及目标源计数均已修改'},{'round':2,'status':'pending','scope':'STEP013–030 and granular dependencies'}],'gaps':[],'approved_hashes':{},'computation_checks':{'stem125_E2_basis_count':105,'high_tail_rows':38,'high_tail_max_filtration':57,'high_tail_differential_lengths':[2,3,4],'raw_hashes':next(d for d in active if d['number']==13)['raw_sha256']}}
(base/'reviews/reasoner.json').write_text(json.dumps(review,ensure_ascii=False,indent=2)+'\n')
by['STEP-003']['paragraphs'].append(r'对球谱本身还有一个精确的可除性结论：若 $s\ge w-k+n$，则 $\lambda^n:F^s\pi_{k,w+n}S\to F^s\pi_{k,w}S$ 满射。每一级关联分次都是同一 $Z_\infty$ 对不同 $B$ 的商；当 $a\ge n$，该商映射满射。逐级选择提升、消去首项并取完备极限，即得同伦层面的满射。这里可以包括经典被入射命中的永久循环；所需的是合成代表元，不是经典非零极限类。')
by['STEP-017']['paragraphs'][0]=r'先在经典 $E_3$ 中考虑 $\langle h_5^2,h_0,B\rangle$。两项零同伦由 $d_2(h_6)=h_0h_5^2$ 与 $d_2(h_0^6h_6)=h_0B$ 给出，定义系统的值为 $h_6B+h_0^6h_6h_5^2$。茎一百二十五、过滤三为零，所以 $h_6h_5^2=0$，该值就是 $V$。不定性为 $h_5^2E_3^{7,70}+E_3^{1,64}B$；后一项因 $h_6$ 出 $d_2$ 而为零，前一群由 $X_2,C^{\prime}$ 张成，并被 $h_5$ 杀掉，也为零。[[EXT-030]] [[EXT-028]]'
by['STEP-018']['paragraphs'][1]=r'合成情形使用的是 $\langle h_5^2,\lambda h_0,B\rangle$。刚性把两项定义系统变为 $d_2(h_6)=\lambda h_0h_5^2$、$d_2(h_0^6h_6)=\lambda h_0B$；同一计算给出 $V$，权为一百三十四。Moss 准则适用于这个强收敛的合成 Adams 谱序列：相邻同伦乘积已由 $2\theta=2[B]=0$ 保证为零；定义系统的不定性如前为零；任何合成穿越微分还必须来自前述经典微分并保持该权，因此前面的完整排除仍适用。于是存在合成括号值 $[V]\in\langle\theta,2,[B]\rangle\subset\pi_{125,134}S$ 由 $V$ 检测。[[EXT-001]] [[EXT-009]]'
by['STEP-021']['paragraphs'][2]=r'若 $Y^{\prime}$ 是任意另一 $\lambda^4C$ 代表元，则差属于 $F^{12}$；而该双次数过滤十二、十三均为零，所以差实际属于 $F^{14}$，乘 $b$ 后属于 $F^{15}$。因此所有代表元的 $b$ 倍数都由 $\lambda^6T$ 检测。继续乘 $\lambda^2$ 后，目标为 $\pi_{125,131}R_9$，其中过滤十五及以上全部超过截断范围，所以得到严格而与代表元无关的关系 $\lambda^2Y^{\prime}b=\lambda^8[T]\ne0$。这已经是后续需要的通用二延伸；不对有限商中未经检验的 $\lambda^6$ 除法作假设。'
by['STEP-025']['paragraphs'][1]=by['STEP-025']['paragraphs'][1].replace(r'\beta b=\lambda^2Yb=\lambda^8[T]',r'\beta b=\lambda^2Yb=\lambda^8[T]')
by['STEP-027']['paragraphs'][2]=r'球谱可除性在第一种情形用 $s=14,k=125,w=135,n=4$，在第二种情形用 $s=14,k=125,w=137,n=2$；两者均满足边界等式 $s=w-k+n$。故前者可写为 $\lambda^4[T^{\prime}]$，后者可写为 $\lambda^2[T^{\prime}]$，且提升的首项保持为 $T$。第二种情形再乘 $\lambda^2$；两种情形都使某个 $\lambda^4[T^{\prime}]$ 成为 $v$ 倍数。此可除性是在球谱中证明的，不用于任意有限商类。'
review['issues'].append({'id':'R-006','source':'MainPaper/main.tex:2571-2587','finding':'原推论对任意代表元给出未经充分展开的有限商λ6可除性','resolution':'完整推出任意代表元的相同AF14检测，并由R9截断推出λ2Yb=λ8T严格等式；此充分版本承担主证明，未声称重证原推论更强形式'})
# Refresh prose and occurrence indices after the revisions.
math['reference_occurrences']=[]
for chapter in math['chapters']:
 for s in chapter['steps']:
  for i,p in enumerate(s['paragraphs']):
   for did in re.findall(r'\[\[(EXT-\d+)\]\]',p):math['reference_occurrences'].append({'id':f'occ-{len(math["reference_occurrences"])+1:03}','dependency_id':did,'chapter_id':chapter['id'],'step_id':s['id'],'paragraph_index':i})
(base/'data/math.json').write_text(json.dumps(math,ensure_ascii=False,indent=2)+'\n')
proof=[math['title'],'',*math['target']['paragraphs'],'',*math['notation']['paragraphs']]
for chapter in math['chapters']:
 proof+=['',chapter['title'],'']
 for s in chapter['steps']:proof += [s['title'],'',*s['paragraphs'],'']
proof+=math['conclusion']['paragraphs']
(base/'proof.zh.md').write_text('\n\n'.join(proof)+'\n')
(base/'reviews/reasoner.json').write_text(json.dumps(review,ensure_ascii=False,indent=2)+'\n')
d19=next(d for d in active if d['number']==19)
d19['used_statement']=d19['source_statement']=d19['used_statement'].replace('若 ab=bc=0，则','若所有涉及的括号均有定义（特别地 ab=bc=0，涉及〈b,c,d〉时还要求cd=0），则')
d13=next(d for d in active if d['number']==13)
d13['specialization']='完整性使用MainPaper/main.tex第236行“105个加法生成元”的完整计算陈述作为显式外部输入。独立原始CSV核对这105个有限范围基及高尾38个staircase向量；仅从CSV截止处不能推出无更高过滤。此处不是把截断文件最大过滤57当作消失定理。'
d13['sources'][0]['description']='完整105维计算命题的二手定位；原始CSV独立复核有限部分'
# Readable display is separate from the already frozen exact table propositions.
for d in active:
 if d['number'] not in [15,25,26,27,28,29]:continue
 raw_lines=d['used_statement'].replace('\\n','\n').splitlines();out=[];table=[];current=None
 for line in raw_lines:
  if ' & ' not in line:continue
  tag=re.match(r's=([0-9-]+):\s*',line)
  if tag:current=tag.group(1);line=line[tag.end():]
  mt=re.search(r'\\multirow\{[^}]+\}\{[^}]+\}\{([0-9-]+)\}',line)
  if mt:current=mt.group(1)
  cols=line.split('&')
  if len(cols)<4:
   if current:out.append('过滤 '+current+'：零群。');table.append({'filtration':current,'zero':True})
   continue
  def clean(x):
   x=re.sub(r'\\cline\{[^}]*\}|\\hline','',x)
   x=x.replace('\\\\','').strip().strip('$').strip()
   return x
  el,dr,val=map(clean,cols[1:4])
  if el=='Elements':continue
  if 'Permanent' in val:claim='$'+el+'$ 的所有出射为零。'
  elif '?' in val:claim='$'+el+'$ 存活到 $E_'+re.search(r'\{(\d+)\}',dr).group(1)+'$，该页出射值未知。'
  elif '^{-1}' in dr:
   r=re.search(r'\{(\d+)\}',dr).group(1);claim='$d_'+r+'('+val+')='+el+'$。'
  elif dr:
   r=re.search(r'\{(\d+)\}',dr).group(1);claim='$d_'+r+'('+el+')='+val+'$。'
  else:claim='$'+el+'$；'+val+'。'
  out.append('过滤 '+str(current)+'：'+claim);table.append({'filtration':current,'element':el,'differential':dr,'value':val})
 d['display_statement']='下列各过滤中所列向量共同构成完整基；分别给出其已知微分。\n'+'\n'.join(out);d['table_rows']=table
for d in active:
 if d['number'] in [22,23,24,25,26,27,28,29,31]:d['math_approval']['status']='approved'
# Independently verify high-tail ranks against raw E2 dimensions.
rank_counts={}
for sval in sorted({int(x['s']) for x in ss if x['stem']=='125' and int(x['s'])>25}):
 vals=[x for x in ss if x['stem']=='125' and int(x['s'])==sval]
 piv={}
 for x in vals:
  v=sum(1<<int(j) for j in x['base'].split(','))
  while v:
   bit=v.bit_length()-1
   if bit in piv:v^=piv[bit]
   else:piv[bit]=v;break
 dim=sum(1 for x in basis if x['stem']=='125' and int(x['s'])==sval)
 assert len(piv)==dim
 rank_counts[str(sval)]={'basis_dimension':dim,'staircase_rank':len(piv)}
review['computation_checks']['high_tail_ranks']=rank_counts
review['computation_checks']['global_completeness_source']='MainPaper/main.tex:236 explicit total105 external computation statement; raw CSV finite rows independently checked'
(base/'data/dependencies.json').write_text(json.dumps(active,ensure_ascii=False,indent=2)+'\n')
(base/'reviews/reasoner.json').write_text(json.dumps(review,ensure_ascii=False,indent=2)+'\n')
ext(32,'交换乘积中高过滤误差的零乘积',r'球谱Ext代数中 h_1h_2=0 且 h_2x_{122,13}=0。因此茎122、filtration13的两个非短边界方向 h_1²x_{120,11} 与 x_{122,13} 均被h_2杀掉。',2703,2707,'prop:state5false proof',category='计算数据',extra={'path':'../Lin-program/program/upstream/kervaire_csv/S0_AdamsE2_relations.csv','label':'stem125,s14; monomial 2,1,407,1','commit':commit,'description':'原始单项关系，generator407=x122,13；低维h1h2关系同源'})
d32=deps[-1];d32['used_summary']='茎122、过滤13的两个剩余方向均被h₂杀掉，从而有限商中高过滤误差乘[h₂]后至少到过滤15。';active.append(d32)
by['STEP-026']['paragraphs'][0]=r'令 $P=\alpha b\in\pi_{122,127}R_9$，则 $Pv=\lambda^8[T]\ne0$。$P$ 的过滤至少九。过滤九、十为空；过滤十一、十二的短边界消失，留下两个永久方向 $D=h_6Md_0$ 与 $F=h_5x_{91,11}$。故 $P=\epsilon_D\lambda^6[D]+\epsilon_F\lambda^7[F]+e$，其中 $e\in F^{13}$。[[EXT-025]]'
by['STEP-026']['paragraphs'][1]=r'误差的过滤十三部分，$h_0^2D$ 已是 $d_2$ 边界，余下 $h_1^2x_{120,11}$ 和 $x_{122,13}$。前者由 $h_1h_2=0$ 被杀掉，后者也满足具体关系 $h_2x_{122,13}=0$，故 $ev\in F^{15}$。于是过滤十四的非零 $T$ 首项必须来自 $D,F$ 两个方向之一。这个论证直接排除了整个乘积首项，避免把 $E_2$ 中不可整除误用为所有边界商中的不可整除。[[EXT-032]]'
math['reference_occurrences']=[]
for chapter in math['chapters']:
 for s in chapter['steps']:
  for i,p in enumerate(s['paragraphs']):
   for did in re.findall(r'\[\[(EXT-\d+)\]\]',p):math['reference_occurrences'].append({'id':f'occ-{len(math["reference_occurrences"])+1:03}','dependency_id':did,'chapter_id':chapter['id'],'step_id':s['id'],'paragraph_index':i})
(base/'data/dependencies.json').write_text(json.dumps(active,ensure_ascii=False,indent=2)+'\n')
(base/'data/math.json').write_text(json.dumps(math,ensure_ascii=False,indent=2)+'\n')
proof=[math['title'],'',*math['target']['paragraphs'],'',*math['notation']['paragraphs']]
for chapter in math['chapters']:
 proof+=['',chapter['title'],'']
 for s in chapter['steps']:proof += [s['title'],'',*s['paragraphs'],'']
proof+=math['conclusion']['paragraphs']
(base/'proof.zh.md').write_text('\n\n'.join(proof)+'\n')
