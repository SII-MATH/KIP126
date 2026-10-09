"""Same-S0 coefficient module-map classification and explicit implementation limits."""
import json,pathlib
HERE=pathlib.Path(__file__).resolve().parent
s=json.loads((HERE.parent/'upstream/kervaire-49/ss.json').read_text());objects={r['name']:r for r in s['modules']};rows=[]
for m in s['maps']:
 if m['from'] not in objects or m['to'] not in objects:continue
 same=objects[m['from']].get('over')==objects[m['to']].get('over')=='S0'
 rows.append(dict(name=m['name'],source=m['from'],target=m['to'],same_S0_coefficients=same,filtration=m.get('fil',0),suspension=m.get('sus',0),current_wire_compatible=same and m.get('fil',0)==0 and m.get('sus',0)==0,verified_low_range=m['name'] in ['Cnu__CW_nu_eta','Ceta__CW_eta_nu']))
readiness=json.loads((HERE.parent/'RealMapCertificates/all_maps_readiness.json').read_text());by_name={r['name']:r for r in readiness['maps']}
for row in rows:row['numeric_sentinel_rows']=by_name[row['name']].get('images',{}).get('numeric_sentinel',0)
(HERE/'general_readiness.json').write_text(json.dumps(dict(maps=rows,same_S0=sum(r['same_S0_coefficients'] for r in rows),zero_shift=sum(r['current_wire_compatible'] for r in rows)),indent=2)+'\n')
print(len(rows),'module maps;',sum(r['same_S0_coefficients'] for r in rows),'same S0;',sum(r['current_wire_compatible'] for r in rows),'zero shift')
