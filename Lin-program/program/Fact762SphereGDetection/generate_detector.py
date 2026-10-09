"""Tie three actual quotient stages to the fixed full g-product tensors."""
from pathlib import Path
H=Path(__file__).resolve().parent
lines=['import Fact762SphereGDetection.ProductDescent','namespace Fact762SphereGDetection.Detector','open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference','open Row3151ActualTransport ActualAdamsHomologyCoordinates','open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge ProductDescent','abbrev leftDegree : Bidegree := ⟨4,24⟩','abbrev rightDegree : Bidegree := ⟨19,143⟩','abbrev targetDegree : Bidegree := ⟨23,167⟩','variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}']
for r in [2,3,4]:
 n=f'Stage{r}'
 lines.append(f'structure {n} (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (P : CertifiedAdamsProduct S) where')
 if r==2:
  lines += ['  left : Coordinates S 2 leftDegree 1','  right : Coordinates S 2 rightDegree 2','  target : Coordinates S 2 targetDegree 5']
  ca,cb,cc='left','right','target'
 else:
  lines += [f'  previous : Stage{r-1} S pages P'];ca,cb,cc='previous.input.nextLeft','previous.input.nextRight','previous.input.nextTarget'
 for f,d in [('left','leftDegree'),('right','rightDegree'),('target','targetDegree')]:
  coord={'left':ca,'right':cb,'target':cc}[f];deg={'left':'4_24','right':'19_143','target':'23_167'}[f]
  lines += [f'  {f}Meaning : Meaning S {r} {d} Data.w{deg}_{r} {coord}',f'  {f}Zero : LocalZeroMeaning pages {r} {d}']
 lines += [f'  transition : Transition S pages P {r} leftDegree rightDegree']
 if r==2:lines += ['  equation : ∀ x y, target.equivalence (P.product.multiply 2 leftDegree rightDegree x y) =','    PageProductCertificates.product Data.product2.product (left.equivalence x) (right.equivalence y)']
 pre='noncomputable ' if r>2 else ''
 lines += [f'{pre}def {n}.input (A : {n} S pages P) :',f'    ProductDescent.Input S pages P {r} leftDegree rightDegree Data.w4_24_{r} Data.w19_143_{r} Data.w23_167_{r}',f'      A.{ca} A.{cb} A.{cc} where']
 for f in ['left','right','target']:lines += [f'  {f}Meaning := A.{f}Meaning',f'  {f}Valid := Data.w'+{'left':'4_24','right':'19_143','target':'23_167'}[f]+f'_{r}_valid',f'  {f}Zero := A.{f}Zero']
 lines += [f'  tensor := Data.product{r}.product',f'  nextTensor := Data.product{r+1}.product' if r<4 else '  nextTensor := Data.product5',f'  equation := A.equation' if r==2 else '  equation := next_product_coordinates A.previous.input',f'  finite := Data.product{r}_next','  transition := A.transition']
lines += ['theorem reflects (A : Stage4 S pages P) (g : (S.element 5 leftDegree).carrier)','    (named : A.input.nextLeft.equivalence g = fun _ => true)','    (y : (S.element 5 rightDegree).carrier)','    (zero : P.product.multiply 5 leftDegree rightDegree g y = 0) : y = 0 := by','  apply A.input.nextRight.equivalence.injective','  rw [A.input.nextRight.zero_value]','  apply Data.product5_reflects','  have h := next_product_coordinates A.input g y','  rw [zero,A.input.nextTarget.zero_value,named] at h','  exact h.symm','#print axioms Stage2.input','#print axioms Stage3.input','#print axioms Stage4.input','#print axioms reflects','end Fact762SphereGDetection.Detector']
(H/'Detector.lean').write_text('\n'.join(lines)+'\n')
