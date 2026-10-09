"""Independent fixed-text extraction and additive representative-square replay."""
import hashlib
from html.parser import HTMLParser
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
paper=json.loads((HERE/'paper-excerpts.json').read_text())
source=ROOT/paper['source_path']
assert sha(source)==paper['source_sha256']
assert sha(HERE/'extract.py')==paper['extractor_sha256']
records={row['html_id']:row['text'] for row in paper['records']}
assert len(records)==26

class ExtractOne(HTMLParser):
    """Stream one selected subtree; never use the producer's stored DOM."""
    def __init__(self,identity):
        super().__init__()
        self.identity=identity;self.active=False;self.stack=[];self.parts=[];self.skip=None
    def handle_starttag(self,tag,attrs):
        attrs=dict(attrs)
        if not self.active and attrs.get('id')==self.identity:
            self.active=True
        if not self.active:return
        if tag not in ['area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr']:
            self.stack.append(tag)
        if self.skip is None and tag=='math':
            self.parts.append('$'+attrs.get('alttext','')+'$');self.skip=len(self.stack)
        elif self.skip is None and tag in ['script','style']:
            self.skip=len(self.stack)
    def handle_endtag(self,tag):
        if not self.active:return
        if self.skip==len(self.stack):self.skip=None
        if self.stack and self.stack[-1]==tag:self.stack.pop()
        if not self.stack:self.active=False
    def handle_data(self,text):
        if self.active and self.skip is None:self.parts.append(text)

html=source.read_text()
for identity,value in records.items():
    if identity.startswith('S6.after'):continue
    parser=ExtractOne(identity);parser.feed(html)
    extracted=re.sub(r'\n\s*\n(?:\s*\n)+','\n\n',''.join(parser.parts)).strip()
    assert extracted==value,identity
proof=records['S6.afterTheorem1.beforeNextTheorem']
for reference in ['Proposition 4.6','Definition 5.4','Proposition 4.16','Proposition 5.10','Corollary 2.15','Remark 4.12']:
    assert reference in proof
assert r'\lambda^{r-n}x_{\infty}' in proof
assert r'\lambda^{r+l-n-e(f)}y_{\infty}' in proof
assert r'd_{r+l-m}(y)=y_{\infty}' in proof
assert 'TC3' not in proof
notation=records['S3.Thmtheorem10']
assert r'B_{\infty}\subset Z_{\infty}' in notation
assert r'Z_{1}^{s,t}(X)=E_{2}^{s,t}(X)' in notation
assert r'E_{2}^{s+r,t+r-1}(X)/B_{r-1}' in notation
theorem=records['S6.Thmtheorem1']
assert r'2\leq n\leq r' in theorem and r'e(f)\leq m\leq n-2+e(f)' in theorem
assert 'or (2) has no crossing' in theorem and 'the differential in (3) has no crossing' in theorem
assert r'0<a\leq n-1' in records['S4.Thmtheorem14']
assert r'0\leq b\leq r-n-1' in records['S4.Thmtheorem14']
assert r'0<a\leq r-2' in records['S5.Thmtheorem9']
assert r'0\leq b\leq n-a-e(f)' in records['S5.Thmtheorem9']
assert r'\backslash B_{1+n-b-e(f)}' in records['S5.Thmtheorem9']
assert r'd_{3}(h_{0}h_{4})=0' in records['S6.Thmtheorem8']
assert r'd_{3}(h_{0}h_{4})=h_{0}d_{0}' in records['S3.Thmtheorem15']

# Z/4 exercises subtraction and signs that disappear in the producer's F2 test.
elements=range(4)
subgroups=[frozenset({0}),frozenset({0,2}),frozenset(elements)]
def same(H,a,b):return (a-b)%4 in H
def stable(f,H,K):return all((f*a)%4 in K for a in H)
extension={}
stability={}
stability_iffs=0
for f,H,K in itertools.product(elements,subgroups,subgroups):
    stability[f,H,K]=stable(f,H,K)
    for x,y in itertools.product(elements,repeat=2):
        witnesses=[a for a in elements if same(H,a,x) and same(K,f*a,y)]
        extension[f,H,K,x,y]=witnesses
        if witnesses:
            assert stable(f,H,K)==all(not same(H,a,x) or same(K,f*a,y) for a in elements)
            stability_iffs+=1
commuting_squares=checks=transfers=first_only=second_only=last_missing=nonzero=0
for f,p,q,g in itertools.product(elements,repeat=4):
    if (q*f-g*p)%4:continue
    commuting_squares+=1
    for HA,HB,HC,HD in itertools.product(subgroups,repeat=4):
        sf=stability[f,HA,HB];sp=stability[p,HA,HC];sg=stability[g,HC,HD]
        for x,y,z,w in itertools.product(elements,repeat=4):
            checks+=1
            first=extension[f,HA,HB,x,y]
            second=extension[p,HA,HC,x,z]
            third=extension[g,HC,HD,z,w]
            if not (first and second and third and (sf or sp)):continue
            conclusion=extension[q,HB,HD,y,w]
            if not sg:
                last_missing+=not bool(conclusion)
                continue
            assert conclusion
            a,b,c=first[0],second[0],third[0]
            witness=(f*(b if sf else a))%4
            assert witness in conclusion
            transfers+=1;first_only+=sf and not sp;second_only+=sp and not sf
            nonzero+=w not in HD
assert first_only and second_only and last_missing and nonzero

degree_checks=0
for e in [0,1]:
    for n in range(2,11):
        for r in range(n,13):
            for m in range(e,n-1+e):
                for length in range(e,10):
                    output=r+length-m
                    assert output>=2 and r-1-m+e>=1
                    assert min(r-n,m-e,r+length-n-e)>=0
                    degree_checks+=1
            # Def4.14 uses E_(N+1); E_n therefore N=n-1.
            for a in range(1,n-1):
                for b in range(r-n+1):
                    assert a<=n-2 and b<=r-n and r-a-b>=2

record=json.loads((HERE/'compile-audit.json').read_text())[0]
assert record['module']=='RepresentativeSquare' and record['exit_code']==0
for path,expected in record['input_sha256'].items():assert sha(ROOT/path)==expected,path
assert sha(HERE/'RepresentativeSquare.log')==record['log_sha256']
log=(HERE/'RepresentativeSquare.log').read_text()
dependencies=re.findall(r'depends on axioms: \[([^]]*)\]',log)
assert len(dependencies)+log.count('does not depend on any axioms')==3
assert all({x.strip() for x in group.split(',')}<={'propext','Classical.choice','Quot.sound'} for group in dependencies)
files=[HERE/'RepresentativeSquare.lean',HERE/'README.md',HERE/'paper-excerpts.json',HERE/'paper-excerpts.md',
    HERE/'extract.py',source,ROOT/'AdvancedRuleCertificates/Connecting.lean',
    ROOT/'ManualInputObligations/Reference/AdamsRules.lean',ROOT/'PropagationCertificates/Rules.lean',
    ROOT/'../Reference/LinProgramReference/FilteredExtensions.lean']
result=dict(status='independent_review_passed',findings=[],reviewer='/root/map_search_next',
    source_review=dict(version=paper['version'],exact_streamed_HTML_subtrees=25,
        proof_comparison_references=6,preserved_excerpts=26,source_sha256=sha(source)),
    algebra_replay=dict(group='Z/4',commuting_additive_squares=commuting_squares,
        cases=checks,valid_transfers=transfers,only_first_stable_cases=first_only,
        only_second_stable_cases=second_only,nonzero_target_coset_cases=nonzero,
        missing_last_stability_counterexamples=last_missing,stability_iff_instances=stability_iffs,
        generalized_rule_index_checks=degree_checks),
    distinctions=[
        'Paper ZInfinity is the outgoing-cycle intersection and contains BInfinity; it is not nonzero permanence.',
        'Definitions2.7,4.14,5.9 quantify distinct extension/differential crossings with exact filtration/page/essentiality conditions.',
        'Reference.FilteredExtensions two-summand cancellation is not the paper crossing relation.',
        'RepresentativeSquare.Extension is an existential additive coset witness, not a constructed filtered-map ESS differential.',
        'HigherMapsInto is structural subgroup preservation; the paper no-crossing equivalence has not been proved for this model.',
        'square_transfer derives the fourth extension from three witnesses and a commuting square; it does not assume the conclusion.',
        'The unbounded representative-stability lemma matches the algebraic pattern of Corollary2.15, not full range-sensitive Theorem2.12 or Theorem6.1.'],
    paper_theorem_6_1_formalized=False,
    missing=['Actual filtered homotopy/ESS construction and essentiality',
        'Synthetic lambda truncations, connecting square and weight shifts',
        'Classical/synthetic Z/B and extension double-quotient identifications',
        'Exact no-crossing equivalences and differential translations of Propositions4.6/4.16/5.10 and Remark4.12'],
    build=dict(observed_exit_code=0,standard_axiom_reports=3),
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'Independent review passed:25 exact HTML subtrees/26 excerpts;{checks} Z4 square cases, '
      f'{transfers} transfers/{last_missing} missing-last counterexamples;direct0/3reports')
