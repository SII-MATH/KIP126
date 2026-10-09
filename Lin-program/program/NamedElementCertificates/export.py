"""Read real S0 names and produce F2 relation-ideal membership witnesses."""
import collections
import csv
import hashlib
import json
import pathlib
import sqlite3

HERE = pathlib.Path(__file__).resolve().parent
DB = HERE.parent / 'upstream/kervaire-49/S0_AdamsSS_t261.db'

def monomial(raw):
    if not raw:
        return ()
    cells = [int(x) for x in raw.split(',')]
    assert len(cells) % 2 == 0
    return tuple(g for g, e in zip(cells[::2], cells[1::2]) for _ in range(e))

def polynomial(raw):
    return [monomial(m) for m in raw.split(';')]

def parity(poly):
    return {m for m, n in collections.Counter(poly).items() if n % 2}

def divide(a, b):
    ca, cb = collections.Counter(a), collections.Counter(b)
    if any(ca[x] < n for x, n in cb.items()):
        return None
    return tuple(sorted((ca-cb).elements()))

def main():
    c = sqlite3.connect(f'file:{DB}?mode=ro', uri=True)
    generators = {name: (id_, s, t) for id_, name, s, t in c.execute('select id,name,s,t from S0_AdamsE2_generators')}
    relations = [(row, polynomial(raw), s, t) for row, raw, s, t in c.execute('select rowid,rel,s,t from S0_AdamsE2_relations')]
    basis = {(s,t,monomial(raw)): id_ for id_,raw,s,t in c.execute('select id,mon,s,t from S0_AdamsE2_basis')}
    specs = [
      ('fact-7.6-1', [[('x_{126,8,4}',1)],[('x_{126,8}',1)]]),
      ('fact-7.6-2', [[('h_1',1),('h_4',1),('x_{109,12}',1)]]),
      ('fact-7.6-3', [[('h_0',2),('x_{124,8}',1)]]),
      ('fact-7.6-4', [[('g',4),('\\Delta h_1g',1)]]),
      ('remark-7.7', [[('x_{126,6}',1)]]),
      ('fact-7.13-survivor', [[('x_{123,9}',1)],[('h_0',1),('x_{123,8}',1)]]),
      ('fact-7.13-source', [[('x_{125,8}',1)]]),
      ('fact-7.13-target', [[('h_1',1),('x_{123,9}',1)],[('h_1',1),('h_0',1),('x_{123,8}',1)],[('h_0',2),('x_{124,8}',1)]]),
      ('remark-7.7-target1', [[('h_5',1),('x_{94,8}',1)]]),
      ('remark-7.7-possible', [[('h_6',1),('(' + '\\Delta e_1+C_0+h_0^6h_5^2)',1)]]),
      ('fact-7.15', [[('h_0',2),('x_{125,9,2}',1)]]),
      ('fact-7.19', [[('h_1',1),('x_{121,7}',1)]]),
      ('fact-7.21-first', [[('h_6',1),('Md_0',1)]]),
      ('fact-7.21-second', [[('h_5',1),('x_{91,11}',1)]]),
    ]
    audit=[]
    csv_path=HERE.parent/'upstream/csv-utf8/S0_AdamsE2_generators.csv'
    csv_rows=list(csv.DictReader(csv_path.open(encoding='utf-8-sig')))
    for claim, expression in specs:
        degrees=[]; original=[]; names=[]
        for term in expression:
            m=[]; s=t=0
            for name,e in term:
                id_,gs,gt=generators[name]; m.extend([id_]*e);s+=gs*e;t+=gt*e
                csv_matches=[r for r in csv_rows if str(r.get('id'))==str(id_)]
                names.append(dict(name=name,id=id_,s=gs,t=gt,power=e,csv_rows=csv_matches))
            original.append(tuple(sorted(m)));degrees.append((s,t))
        assert len(set(degrees)) == 1
        s,t=degrees[0]; current=parity(original); trace=[]; used=[]; used_index={}; seen=set()
        eligible=[r for r in relations if r[2]<=s and r[3]<=t]
        unresolved=None
        for step in range(10000):
            state=tuple(sorted(current))
            if state in seen: unresolved='relation orientation cycle';break
            seen.add(state)
            bad=next((m for m in sorted(current) if (s,t,m) not in basis),None)
            if bad is None:break
            reduction=next(((r,divide(bad,r[1][0])) for r in eligible if divide(bad,r[1][0]) is not None),None)
            if reduction is None:unresolved='no source leading relation divides monomial';break
            (row,rel,_,_),mult=reduction
            if row not in used_index:used_index[row]=len(used);used.append((row,rel))
            trace.append(dict(relation=used_index[row],multiplier=[mult]))
            current.symmetric_difference_update(parity(tuple(sorted(mult+m)) for m in rel))
        else: unresolved='reduction step limit'
        bundle=dict(relations=[r for _,r in used],input=original,output=sorted(current),terms=trace)
        cert=HERE/(claim+'.json');cert.write_text(json.dumps(bundle,sort_keys=True,separators=(',',':'))+'\n')
        residual=parity(original+list(current))
        rhs=parity(tuple(sorted(mult+m)) for tr in trace for mult in tr['multiplier'] for m in bundle['relations'][tr['relation']])
        assert residual==rhs
        coordinates=[dict(global_basis_id=basis[(s,t,m)],monomial=m) for m in sorted(current) if (s,t,m) in basis]
        degree_ids=[id_ for (bs,bt,_),id_ in basis.items() if (bs,bt)==(s,t)]
        for coord in coordinates:coord['degree_local_index']=sorted(degree_ids).index(coord['global_basis_id'])
        audit.append(dict(claim=claim,names=names,s=s,t=t,stem=t-s,status='resolved_S0_basis' if unresolved is None else 'unresolved',reason=unresolved,coordinates=coordinates,steps=len(trace),source_relation_rowids=[row for row,_ in used],certificate=cert.name))
    cnu_db=HERE.parent/'upstream/kervaire-49/Cnu_AdamsSS_t200.db'
    cnu=sqlite3.connect(f'file:{cnu_db}?mode=ro',uri=True)
    cell=cnu.execute('select id,name from Cnu_AdamsE2_generators where id=0').fetchone()
    module_rows=cnu.execute('select id,mon from Cnu_AdamsE2_basis where s=14 and t=139 order by id').fetchall()
    expected='1,1,7,1,275,1,0'
    matches=[dict(global_basis_id=id_,degree_local_index=i,source_encoding=mon) for i,(id_,mon) in enumerate(module_rows) if mon==expected]
    assert cell==(0,'[0]') and len(matches)==1
    audit.append(dict(claim='prop-7.9',status='resolved_Cnu_source_coordinate_only',expression='h_1 h_4 x_{109,12}[0]',s=14,t=139,coordinates=matches,source_sha256=hashlib.sha256(cnu_db.read_bytes()).hexdigest(),reason='Exact Cnu basis encoding verified; module action/pushforward bridge remains unproved. [0] is module generator 0, not a scalar ring generator.'))
    result=dict(source=str(DB.relative_to(HERE.parent)),sha256=hashlib.sha256(DB.read_bytes()).hexdigest(),relation_trust='imported algebraic presentation, not proven Ext',claims=audit)
    (HERE/'name_audit.json').write_text(json.dumps(result,indent=2)+'\n')
    lean=['import NamedElementCertificates.Basic','open NamedElementCertificates']
    for i,entry in enumerate(audit[:-1]):
        lean += [f'def namedCase{i} : Bundle := named_bundle% "NamedElementCertificates/{entry["certificate"]}"',f'theorem namedCase{i}_sound : EqualModuloRelations namedCase{i}.relations namedCase{i}.input namedCase{i}.output := by',f'  lin_cert using namedCase{i}.terms']
    lean+=['#print axioms NamedElementCertificates.check_sound']
    (HERE/'Generated.lean').write_text('\n'.join(lean)+'\n')
    print('\n'.join(f'{e["claim"]}: {e["status"]}, steps={e.get("steps")}, coordinates={e.get("coordinates")}' for e in audit))

if __name__=='__main__':main()
