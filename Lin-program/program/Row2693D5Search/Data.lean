import PageTransitionCertificates.Import
import PageProductCertificates.Basic
import NamedElementCertificates.Evaluation
namespace Row2693D5Search.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
def left2 : WireComparison := page_comparison% "Row2693D5Search/wire/left2.json"
theorem left2_valid : left2.Valid := by lin_cert using ()
#print axioms left2_valid
def left3 : WireComparison := page_comparison% "Row2693D5Search/wire/left3.json"
theorem left3_valid : left3.Valid := by lin_cert using ()
#print axioms left3_valid
def left4 : WireComparison := page_comparison% "Row2693D5Search/wire/left4.json"
theorem left4_valid : left4.Valid := by lin_cert using ()
#print axioms left4_valid
def right2 : WireComparison := page_comparison% "Row2693D5Search/wire/right2.json"
theorem right2_valid : right2.Valid := by lin_cert using ()
#print axioms right2_valid
def right3 : WireComparison := page_comparison% "Row2693D5Search/wire/right3.json"
theorem right3_valid : right3.Valid := by lin_cert using ()
#print axioms right3_valid
def right4 : WireComparison := page_comparison% "Row2693D5Search/wire/right4.json"
theorem right4_valid : right4.Valid := by lin_cert using ()
#print axioms right4_valid
def product2 : WireComparison := page_comparison% "Row2693D5Search/wire/product2.json"
theorem product2_valid : product2.Valid := by lin_cert using ()
#print axioms product2_valid
def product3 : WireComparison := page_comparison% "Row2693D5Search/wire/product3.json"
theorem product3_valid : product3.Valid := by lin_cert using ()
#print axioms product3_valid
def product4 : WireComparison := page_comparison% "Row2693D5Search/wire/product4.json"
theorem product4_valid : product4.Valid := by lin_cert using ()
#print axioms product4_valid
def target2 : WireComparison := page_comparison% "Row2693D5Search/wire/target2.json"
theorem target2_valid : target2.Valid := by lin_cert using ()
#print axioms target2_valid
def target3 : WireComparison := page_comparison% "Row2693D5Search/wire/target3.json"
theorem target3_valid : target3.Valid := by lin_cert using ()
#print axioms target3_valid
def target4 : WireComparison := page_comparison% "Row2693D5Search/wire/target4.json"
theorem target4_valid : target4.Valid := by lin_cert using ()
#print axioms target4_valid
def right5 : WireComparison := page_comparison% "Row2693D5Search/wire/right5.json"
theorem right5_valid : right5.Valid := by lin_cert using ()
#print axioms right5_valid
def h02 : WireComparison := page_comparison% "Row2693D5Search/wire/h02.json"
theorem h02_valid : h02.Valid := by lin_cert using ()
#print axioms h02_valid
def tower42 : WireComparison := page_comparison% "Row2693D5Search/wire/tower42.json"
theorem tower42_valid : tower42.Valid := by lin_cert using ()
#print axioms tower42_valid
def tower52 : WireComparison := page_comparison% "Row2693D5Search/wire/tower52.json"
theorem tower52_valid : tower52.Valid := by lin_cert using ()
#print axioms tower52_valid
def tower62 : WireComparison := page_comparison% "Row2693D5Search/wire/tower62.json"
theorem tower62_valid : tower62.Valid := by lin_cert using ()
#print axioms tower62_valid
def emptyProduct2 : WireComparison := page_comparison% "Row2693D5Search/wire/emptyProduct2.json"
theorem emptyProduct2_valid : emptyProduct2.Valid := by lin_cert using ()
#print axioms emptyProduct2_valid
def h03 : WireComparison := page_comparison% "Row2693D5Search/wire/h03.json"
theorem h03_valid : h03.Valid := by lin_cert using ()
#print axioms h03_valid
def tower53 : WireComparison := page_comparison% "Row2693D5Search/wire/tower53.json"
theorem tower53_valid : tower53.Valid := by lin_cert using ()
#print axioms tower53_valid
def tower63 : WireComparison := page_comparison% "Row2693D5Search/wire/tower63.json"
theorem tower63_valid : tower63.Valid := by lin_cert using ()
#print axioms tower63_valid
def main00 : Bundle := named_bundle% "Row2693D5Search/wire/main00.json"
theorem main00_valid : EqualModuloRelations main00.relations main00.input main00.output := by lin_cert using main00.terms
#print axioms main00_valid
def main01 : Bundle := named_bundle% "Row2693D5Search/wire/main01.json"
theorem main01_valid : EqualModuloRelations main01.relations main01.input main01.output := by lin_cert using main01.terms
#print axioms main01_valid
def mainTensor : PageProductCertificates.Tensor 1 2 5 :=
  fun i j k => ([false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*2+j.val*2+k.val]!
def correction00 : Bundle := named_bundle% "Row2693D5Search/wire/correction00.json"
theorem correction00_valid : EqualModuloRelations correction00.relations correction00.input correction00.output := by lin_cert using correction00.terms
#print axioms correction00_valid
def correction01 : Bundle := named_bundle% "Row2693D5Search/wire/correction01.json"
theorem correction01_valid : EqualModuloRelations correction01.relations correction01.input correction01.output := by lin_cert using correction01.terms
#print axioms correction01_valid
def correctionTensor : PageProductCertificates.Tensor 1 2 3 :=
  fun i j k => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val*2+k.val]!
def low300 : Bundle := named_bundle% "Row2693D5Search/wire/low300.json"
theorem low300_valid : EqualModuloRelations low300.relations low300.input low300.output := by lin_cert using low300.terms
#print axioms low300_valid
def low3Tensor : PageProductCertificates.Tensor 1 1 1 :=
  fun i j k => ([true] : List Bool)[i.val*1+j.val*1+k.val]!
def low400 : Bundle := named_bundle% "Row2693D5Search/wire/low400.json"
theorem low400_valid : EqualModuloRelations low400.relations low400.input low400.output := by lin_cert using low400.terms
#print axioms low400_valid
def low4Tensor : PageProductCertificates.Tensor 1 1 1 :=
  fun i j k => ([true] : List Bool)[i.val*1+j.val*1+k.val]!
end Row2693D5Search.Data
