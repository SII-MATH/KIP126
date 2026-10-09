import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 3 => []
  | 4 => [[3]]
  | 5 => [[1,4]]
  | 6 => [[2,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 10 => [[2,7]]
  | 11 => []
  | 12 => [[3,4]]
  | 13 => [[9]]
  | 14 => [[1,4,4]]
  | 15 => [[2,4,4]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 21 => [[3,4,4]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 25 => []
  | 26 => []
  | 27 => [[1,4,4,4]]
  | 28 => []
  | 29 => [[5,9]]
  | 30 => [[2,4,4,4]]
  | _ => []
def map_0_0 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image0 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation0 : InImage map_0_0 image0 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction0 : Bundle := named_bundle% "RealMapCertificates/relations/basis0.json"
theorem reductionProof0 : EqualModuloRelations reduction0.relations reduction0.input reduction0.output := by lin_cert using reduction0.terms
theorem substitutionProof0 : IsMapEvaluation generatorImages reduction0.relations [] reduction0.output := by lin_cert using reduction0.terms
def map_1_1 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1 : InImage map_1_1 image1 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1 : Bundle := named_bundle% "RealMapCertificates/relations/basis1.json"
theorem reductionProof1 : EqualModuloRelations reduction1.relations reduction1.input reduction1.output := by lin_cert using reduction1.terms
theorem substitutionProof1 : IsMapEvaluation generatorImages reduction1.relations [0] reduction1.output := by lin_cert using reduction1.terms
def map_1_2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3 : InImage map_1_2 image3 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3 : Bundle := named_bundle% "RealMapCertificates/relations/basis3.json"
theorem reductionProof3 : EqualModuloRelations reduction3.relations reduction3.input reduction3.output := by lin_cert using reduction3.terms
theorem substitutionProof3 : IsMapEvaluation generatorImages reduction3.relations [1] reduction3.output := by lin_cert using reduction3.terms
def map_1_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7 : InImage map_1_4 image7 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7 : Bundle := named_bundle% "RealMapCertificates/relations/basis7.json"
theorem reductionProof7 : EqualModuloRelations reduction7.relations reduction7.input reduction7.output := by lin_cert using reduction7.terms
theorem substitutionProof7 : IsMapEvaluation generatorImages reduction7.relations [2] reduction7.output := by lin_cert using reduction7.terms
def map_1_8 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15 : InImage map_1_8 image15 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15 : Bundle := named_bundle% "RealMapCertificates/relations/basis15.json"
theorem reductionProof15 : EqualModuloRelations reduction15.relations reduction15.input reduction15.output := by lin_cert using reduction15.terms
theorem substitutionProof15 : IsMapEvaluation generatorImages reduction15.relations [3] reduction15.output := by lin_cert using reduction15.terms
def map_1_16 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image35 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation35 : InImage map_1_16 image35 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction35 : Bundle := named_bundle% "RealMapCertificates/relations/basis35.json"
theorem reductionProof35 : EqualModuloRelations reduction35.relations reduction35.input reduction35.output := by lin_cert using reduction35.terms
theorem substitutionProof35 : IsMapEvaluation generatorImages reduction35.relations [7] reduction35.output := by lin_cert using reduction35.terms
def map_1_32 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation105 : InImage map_1_32 image105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction105 : Bundle := named_bundle% "RealMapCertificates/relations/basis105.json"
theorem reductionProof105 : EqualModuloRelations reduction105.relations reduction105.input reduction105.output := by lin_cert using reduction105.terms
theorem substitutionProof105 : IsMapEvaluation generatorImages reduction105.relations [18] reduction105.output := by lin_cert using reduction105.terms
def map_2_2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2 : InImage map_2_2 image2 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2 : Bundle := named_bundle% "RealMapCertificates/relations/basis2.json"
theorem reductionProof2 : EqualModuloRelations reduction2.relations reduction2.input reduction2.output := by lin_cert using reduction2.terms
theorem substitutionProof2 : IsMapEvaluation generatorImages reduction2.relations [0,0] reduction2.output := by lin_cert using reduction2.terms
def map_2_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6 : InImage map_2_4 image6 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6 : Bundle := named_bundle% "RealMapCertificates/relations/basis6.json"
theorem reductionProof6 : EqualModuloRelations reduction6.relations reduction6.input reduction6.output := by lin_cert using reduction6.terms
theorem substitutionProof6 : IsMapEvaluation generatorImages reduction6.relations [1,1] reduction6.output := by lin_cert using reduction6.terms
def map_2_5 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9 : InImage map_2_5 image9 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9 : Bundle := named_bundle% "RealMapCertificates/relations/basis9.json"
theorem reductionProof9 : EqualModuloRelations reduction9.relations reduction9.input reduction9.output := by lin_cert using reduction9.terms
theorem substitutionProof9 : IsMapEvaluation generatorImages reduction9.relations [0,2] reduction9.output := by lin_cert using reduction9.terms
def map_2_8 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14 : InImage map_2_8 image14 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14 : Bundle := named_bundle% "RealMapCertificates/relations/basis14.json"
theorem reductionProof14 : EqualModuloRelations reduction14.relations reduction14.input reduction14.output := by lin_cert using reduction14.terms
theorem substitutionProof14 : IsMapEvaluation generatorImages reduction14.relations [2,2] reduction14.output := by lin_cert using reduction14.terms
def map_2_9 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17 : InImage map_2_9 image17 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17 : Bundle := named_bundle% "RealMapCertificates/relations/basis17.json"
theorem reductionProof17 : EqualModuloRelations reduction17.relations reduction17.input reduction17.output := by lin_cert using reduction17.terms
theorem substitutionProof17 : IsMapEvaluation generatorImages reduction17.relations [0,3] reduction17.output := by lin_cert using reduction17.terms
def map_2_10 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20 : InImage map_2_10 image20 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20 : Bundle := named_bundle% "RealMapCertificates/relations/basis20.json"
theorem reductionProof20 : EqualModuloRelations reduction20.relations reduction20.input reduction20.output := by lin_cert using reduction20.terms
theorem substitutionProof20 : IsMapEvaluation generatorImages reduction20.relations [1,3] reduction20.output := by lin_cert using reduction20.terms
def map_2_16 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image34 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation34 : InImage map_2_16 image34 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction34 : Bundle := named_bundle% "RealMapCertificates/relations/basis34.json"
theorem reductionProof34 : EqualModuloRelations reduction34.relations reduction34.input reduction34.output := by lin_cert using reduction34.terms
theorem substitutionProof34 : IsMapEvaluation generatorImages reduction34.relations [3,3] reduction34.output := by lin_cert using reduction34.terms
def map_2_17 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image39 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation39 : InImage map_2_17 image39 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction39 : Bundle := named_bundle% "RealMapCertificates/relations/basis39.json"
theorem reductionProof39 : EqualModuloRelations reduction39.relations reduction39.input reduction39.output := by lin_cert using reduction39.terms
theorem substitutionProof39 : IsMapEvaluation generatorImages reduction39.relations [0,7] reduction39.output := by lin_cert using reduction39.terms
def map_2_18 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image44 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation44 : InImage map_2_18 image44 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction44 : Bundle := named_bundle% "RealMapCertificates/relations/basis44.json"
theorem reductionProof44 : EqualModuloRelations reduction44.relations reduction44.input reduction44.output := by lin_cert using reduction44.terms
theorem substitutionProof44 : IsMapEvaluation generatorImages reduction44.relations [1,7] reduction44.output := by lin_cert using reduction44.terms
def map_2_20 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image53 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation53 : InImage map_2_20 image53 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction53 : Bundle := named_bundle% "RealMapCertificates/relations/basis53.json"
theorem reductionProof53 : EqualModuloRelations reduction53.relations reduction53.input reduction53.output := by lin_cert using reduction53.terms
theorem substitutionProof53 : IsMapEvaluation generatorImages reduction53.relations [2,7] reduction53.output := by lin_cert using reduction53.terms
def map_2_32 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation104 : InImage map_2_32 image104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction104 : Bundle := named_bundle% "RealMapCertificates/relations/basis104.json"
theorem reductionProof104 : EqualModuloRelations reduction104.relations reduction104.input reduction104.output := by lin_cert using reduction104.terms
theorem substitutionProof104 : IsMapEvaluation generatorImages reduction104.relations [7,7] reduction104.output := by lin_cert using reduction104.terms
def map_2_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation111 : InImage map_2_33 image111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction111 : Bundle := named_bundle% "RealMapCertificates/relations/basis111.json"
theorem reductionProof111 : EqualModuloRelations reduction111.relations reduction111.input reduction111.output := by lin_cert using reduction111.terms
theorem substitutionProof111 : IsMapEvaluation generatorImages reduction111.relations [0,18] reduction111.output := by lin_cert using reduction111.terms
def map_2_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation120 : InImage map_2_34 image120 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction120 : Bundle := named_bundle% "RealMapCertificates/relations/basis120.json"
theorem reductionProof120 : EqualModuloRelations reduction120.relations reduction120.input reduction120.output := by lin_cert using reduction120.terms
theorem substitutionProof120 : IsMapEvaluation generatorImages reduction120.relations [1,18] reduction120.output := by lin_cert using reduction120.terms
def map_2_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation137 : InImage map_2_36 image137 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction137 : Bundle := named_bundle% "RealMapCertificates/relations/basis137.json"
theorem reductionProof137 : EqualModuloRelations reduction137.relations reduction137.input reduction137.output := by lin_cert using reduction137.terms
theorem substitutionProof137 : IsMapEvaluation generatorImages reduction137.relations [2,18] reduction137.output := by lin_cert using reduction137.terms
def map_2_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation171 : InImage map_2_40 image171 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction171 : Bundle := named_bundle% "RealMapCertificates/relations/basis171.json"
theorem reductionProof171 : EqualModuloRelations reduction171.relations reduction171.input reduction171.output := by lin_cert using reduction171.terms
theorem substitutionProof171 : IsMapEvaluation generatorImages reduction171.relations [3,18] reduction171.output := by lin_cert using reduction171.terms
def map_3_3 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4 : InImage map_3_3 image4 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4 : Bundle := named_bundle% "RealMapCertificates/relations/basis4.json"
theorem reductionProof4 : EqualModuloRelations reduction4.relations reduction4.input reduction4.output := by lin_cert using reduction4.terms
theorem substitutionProof4 : IsMapEvaluation generatorImages reduction4.relations [0,0,0] reduction4.output := by lin_cert using reduction4.terms
def map_3_6 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11 : InImage map_3_6 image11 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11 : Bundle := named_bundle% "RealMapCertificates/relations/basis11.json"
theorem reductionProof11 : EqualModuloRelations reduction11.relations reduction11.input reduction11.output := by lin_cert using reduction11.terms
theorem substitutionProof11 : IsMapEvaluation generatorImages reduction11.relations [0,0,2] reduction11.output := by lin_cert using reduction11.terms
def map_3_10 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19 : InImage map_3_10 image19 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19 : Bundle := named_bundle% "RealMapCertificates/relations/basis19.json"
theorem reductionProof19 : EqualModuloRelations reduction19.relations reduction19.input reduction19.output := by lin_cert using reduction19.terms
theorem substitutionProof19 : IsMapEvaluation generatorImages reduction19.relations [0,0,3] reduction19.output := by lin_cert using reduction19.terms
def map_3_11 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23 : InImage map_3_11 image23 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23 : Bundle := named_bundle% "RealMapCertificates/relations/basis23.json"
theorem reductionProof23 : EqualModuloRelations reduction23.relations reduction23.input reduction23.output := by lin_cert using reduction23.terms
theorem substitutionProof23 : IsMapEvaluation generatorImages reduction23.relations [4] reduction23.output := by lin_cert using reduction23.terms
def map_3_12 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image25 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation25 : InImage map_3_12 image25 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction25 : Bundle := named_bundle% "RealMapCertificates/relations/basis25.json"
theorem reductionProof25 : EqualModuloRelations reduction25.relations reduction25.input reduction25.output := by lin_cert using reduction25.terms
theorem substitutionProof25 : IsMapEvaluation generatorImages reduction25.relations [1,1,3] reduction25.output := by lin_cert using reduction25.terms
def map_3_17 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image38 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation38 : InImage map_3_17 image38 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction38 : Bundle := named_bundle% "RealMapCertificates/relations/basis38.json"
theorem reductionProof38 : EqualModuloRelations reduction38.relations reduction38.input reduction38.output := by lin_cert using reduction38.terms
theorem substitutionProof38 : IsMapEvaluation generatorImages reduction38.relations [0,3,3] reduction38.output := by lin_cert using reduction38.terms
def map_3_18 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image43 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation43 : InImage map_3_18 image43 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction43 : Bundle := named_bundle% "RealMapCertificates/relations/basis43.json"
theorem reductionProof43 : EqualModuloRelations reduction43.relations reduction43.input reduction43.output := by lin_cert using reduction43.terms
theorem substitutionProof43 : IsMapEvaluation generatorImages reduction43.relations [0,0,7] reduction43.output := by lin_cert using reduction43.terms
def map_3_20 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image52 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation52 : InImage map_3_20 image52 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction52 : Bundle := named_bundle% "RealMapCertificates/relations/basis52.json"
theorem reductionProof52 : EqualModuloRelations reduction52.relations reduction52.input reduction52.output := by lin_cert using reduction52.terms
theorem substitutionProof52 : IsMapEvaluation generatorImages reduction52.relations [1,1,7] reduction52.output := by lin_cert using reduction52.terms
def map_3_21 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image57 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation57 : InImage map_3_21 image57 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction57 : Bundle := named_bundle% "RealMapCertificates/relations/basis57.json"
theorem reductionProof57 : EqualModuloRelations reduction57.relations reduction57.input reduction57.output := by lin_cert using reduction57.terms
theorem substitutionProof57 : IsMapEvaluation generatorImages reduction57.relations [0,2,7] reduction57.output := by lin_cert using reduction57.terms
def map_3_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image64 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation64 : InImage map_3_22 image64 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction64 : Bundle := named_bundle% "RealMapCertificates/relations/basis64.json"
theorem reductionProof64 : EqualModuloRelations reduction64.relations reduction64.input reduction64.output := by lin_cert using reduction64.terms
theorem substitutionProof64 : IsMapEvaluation generatorImages reduction64.relations [11] reduction64.output := by lin_cert using reduction64.terms
def map_3_24 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image73 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation73 : InImage map_3_24 image73 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction73 : Bundle := named_bundle% "RealMapCertificates/relations/basis73.json"
theorem reductionProof73 : EqualModuloRelations reduction73.relations reduction73.input reduction73.output := by lin_cert using reduction73.terms
theorem substitutionProof73 : IsMapEvaluation generatorImages reduction73.relations [2,2,7] reduction73.output := by lin_cert using reduction73.terms
def map_3_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation110 : InImage map_3_33 image110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction110 : Bundle := named_bundle% "RealMapCertificates/relations/basis110.json"
theorem reductionProof110 : EqualModuloRelations reduction110.relations reduction110.input reduction110.output := by lin_cert using reduction110.terms
theorem substitutionProof110 : IsMapEvaluation generatorImages reduction110.relations [0,7,7] reduction110.output := by lin_cert using reduction110.terms
def map_3_34 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation118 : InImage map_3_34 image118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction118 : Bundle := named_bundle% "RealMapCertificates/relations/basis118.json"
theorem reductionProof118 : EqualModuloRelations reduction118.relations reduction118.input reduction118.output := by lin_cert using reduction118.terms
theorem substitutionProof118 : IsMapEvaluation generatorImages reduction118.relations [1,7,7] reduction118.output := by lin_cert using reduction118.terms
def image119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation119 : InImage map_3_34 image119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction119 : Bundle := named_bundle% "RealMapCertificates/relations/basis119.json"
theorem reductionProof119 : EqualModuloRelations reduction119.relations reduction119.input reduction119.output := by lin_cert using reduction119.terms
theorem substitutionProof119 : IsMapEvaluation generatorImages reduction119.relations [0,0,18] reduction119.output := by lin_cert using reduction119.terms
def map_3_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation136 : InImage map_3_36 image136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction136 : Bundle := named_bundle% "RealMapCertificates/relations/basis136.json"
theorem reductionProof136 : EqualModuloRelations reduction136.relations reduction136.input reduction136.output := by lin_cert using reduction136.terms
theorem substitutionProof136 : IsMapEvaluation generatorImages reduction136.relations [1,1,18] reduction136.output := by lin_cert using reduction136.terms
def map_3_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation145 : InImage map_3_37 image145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction145 : Bundle := named_bundle% "RealMapCertificates/relations/basis145.json"
theorem reductionProof145 : EqualModuloRelations reduction145.relations reduction145.input reduction145.output := by lin_cert using reduction145.terms
theorem substitutionProof145 : IsMapEvaluation generatorImages reduction145.relations [0,2,18] reduction145.output := by lin_cert using reduction145.terms
def map_3_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation170 : InImage map_3_40 image170 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction170 : Bundle := named_bundle% "RealMapCertificates/relations/basis170.json"
theorem reductionProof170 : EqualModuloRelations reduction170.relations reduction170.input reduction170.output := by lin_cert using reduction170.terms
theorem substitutionProof170 : IsMapEvaluation generatorImages reduction170.relations [2,2,18] reduction170.output := by lin_cert using reduction170.terms
def map_4_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5 : InImage map_4_4 image5 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5 : Bundle := named_bundle% "RealMapCertificates/relations/basis5.json"
theorem reductionProof5 : EqualModuloRelations reduction5.relations reduction5.input reduction5.output := by lin_cert using reduction5.terms
theorem substitutionProof5 : IsMapEvaluation generatorImages reduction5.relations [0,0,0,0] reduction5.output := by lin_cert using reduction5.terms
def map_4_11 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22 : InImage map_4_11 image22 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22 : Bundle := named_bundle% "RealMapCertificates/relations/basis22.json"
theorem reductionProof22 : EqualModuloRelations reduction22.relations reduction22.input reduction22.output := by lin_cert using reduction22.terms
theorem substitutionProof22 : IsMapEvaluation generatorImages reduction22.relations [0,0,0,3] reduction22.output := by lin_cert using reduction22.terms
def map_4_13 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image27 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation27 : InImage map_4_13 image27 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction27 : Bundle := named_bundle% "RealMapCertificates/relations/basis27.json"
theorem reductionProof27 : EqualModuloRelations reduction27.relations reduction27.input reduction27.output := by lin_cert using reduction27.terms
theorem substitutionProof27 : IsMapEvaluation generatorImages reduction27.relations [1,4] reduction27.output := by lin_cert using reduction27.terms
def map_4_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image42 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation42 : InImage map_4_18 image42 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction42 : Bundle := named_bundle% "RealMapCertificates/relations/basis42.json"
theorem reductionProof42 : EqualModuloRelations reduction42.relations reduction42.input reduction42.output := by lin_cert using reduction42.terms
theorem substitutionProof42 : IsMapEvaluation generatorImages reduction42.relations [8] reduction42.output := by lin_cert using reduction42.terms
def map_4_19 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image47 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation47 : InImage map_4_19 image47 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction47 : Bundle := named_bundle% "RealMapCertificates/relations/basis47.json"
theorem reductionProof47 : EqualModuloRelations reduction47.relations reduction47.input reduction47.output := by lin_cert using reduction47.terms
theorem substitutionProof47 : IsMapEvaluation generatorImages reduction47.relations [0,0,0,7] reduction47.output := by lin_cert using reduction47.terms
def map_4_21 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image56 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation56 : InImage map_4_21 image56 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction56 : Bundle := named_bundle% "RealMapCertificates/relations/basis56.json"
theorem reductionProof56 : EqualModuloRelations reduction56.relations reduction56.input reduction56.output := by lin_cert using reduction56.terms
theorem substitutionProof56 : IsMapEvaluation generatorImages reduction56.relations [9] reduction56.output := by lin_cert using reduction56.terms
def map_4_22 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image62 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation62 : InImage map_4_22 image62 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction62 : Bundle := named_bundle% "RealMapCertificates/relations/basis62.json"
theorem reductionProof62 : EqualModuloRelations reduction62.relations reduction62.input reduction62.output := by lin_cert using reduction62.terms
theorem substitutionProof62 : IsMapEvaluation generatorImages reduction62.relations [10] reduction62.output := by lin_cert using reduction62.terms
def image63 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation63 : InImage map_4_22 image63 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction63 : Bundle := named_bundle% "RealMapCertificates/relations/basis63.json"
theorem reductionProof63 : EqualModuloRelations reduction63.relations reduction63.input reduction63.output := by lin_cert using reduction63.terms
theorem substitutionProof63 : IsMapEvaluation generatorImages reduction63.relations [0,0,2,7] reduction63.output := by lin_cert using reduction63.terms
def map_4_24 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image72 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation72 : InImage map_4_24 image72 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction72 : Bundle := named_bundle% "RealMapCertificates/relations/basis72.json"
theorem reductionProof72 : EqualModuloRelations reduction72.relations reduction72.input reduction72.output := by lin_cert using reduction72.terms
theorem substitutionProof72 : IsMapEvaluation generatorImages reduction72.relations [13] reduction72.output := by lin_cert using reduction72.terms
def map_4_26 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image81 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation81 : InImage map_4_26 image81 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction81 : Bundle := named_bundle% "RealMapCertificates/relations/basis81.json"
theorem reductionProof81 : EqualModuloRelations reduction81.relations reduction81.input reduction81.output := by lin_cert using reduction81.terms
theorem substitutionProof81 : IsMapEvaluation generatorImages reduction81.relations [2,11] reduction81.output := by lin_cert using reduction81.terms
def map_4_27 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image83 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation83 : InImage map_4_27 image83 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction83 : Bundle := named_bundle% "RealMapCertificates/relations/basis83.json"
theorem reductionProof83 : EqualModuloRelations reduction83.relations reduction83.input reduction83.output := by lin_cert using reduction83.terms
theorem substitutionProof83 : IsMapEvaluation generatorImages reduction83.relations [4,7] reduction83.output := by lin_cert using reduction83.terms
def map_4_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation117 : InImage map_4_34 image117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction117 : Bundle := named_bundle% "RealMapCertificates/relations/basis117.json"
theorem reductionProof117 : EqualModuloRelations reduction117.relations reduction117.input reduction117.output := by lin_cert using reduction117.terms
theorem substitutionProof117 : IsMapEvaluation generatorImages reduction117.relations [0,0,7,7] reduction117.output := by lin_cert using reduction117.terms
def map_4_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation127 : InImage map_4_35 image127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction127 : Bundle := named_bundle% "RealMapCertificates/relations/basis127.json"
theorem reductionProof127 : EqualModuloRelations reduction127.relations reduction127.input reduction127.output := by lin_cert using reduction127.terms
theorem substitutionProof127 : IsMapEvaluation generatorImages reduction127.relations [0,0,0,18] reduction127.output := by lin_cert using reduction127.terms
def map_4_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation135 : InImage map_4_36 image135 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction135 : Bundle := named_bundle% "RealMapCertificates/relations/basis135.json"
theorem reductionProof135 : EqualModuloRelations reduction135.relations reduction135.input reduction135.output := by lin_cert using reduction135.terms
theorem substitutionProof135 : IsMapEvaluation generatorImages reduction135.relations [25] reduction135.output := by lin_cert using reduction135.terms
def map_4_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation144 : InImage map_4_37 image144 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction144 : Bundle := named_bundle% "RealMapCertificates/relations/basis144.json"
theorem reductionProof144 : EqualModuloRelations reduction144.relations reduction144.input reduction144.output := by lin_cert using reduction144.terms
theorem substitutionProof144 : IsMapEvaluation generatorImages reduction144.relations [26] reduction144.output := by lin_cert using reduction144.terms
def map_4_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation154 : InImage map_4_38 image154 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction154 : Bundle := named_bundle% "RealMapCertificates/relations/basis154.json"
theorem reductionProof154 : EqualModuloRelations reduction154.relations reduction154.input reduction154.output := by lin_cert using reduction154.terms
theorem substitutionProof154 : IsMapEvaluation generatorImages reduction154.relations [0,0,2,18] reduction154.output := by lin_cert using reduction154.terms
def map_5_5 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8 : InImage map_5_5 image8 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8 : Bundle := named_bundle% "RealMapCertificates/relations/basis8.json"
theorem reductionProof8 : EqualModuloRelations reduction8.relations reduction8.input reduction8.output := by lin_cert using reduction8.terms
theorem substitutionProof8 : IsMapEvaluation generatorImages reduction8.relations [0,0,0,0,0] reduction8.output := by lin_cert using reduction8.terms
def map_5_14 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image29 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation29 : InImage map_5_14 image29 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction29 : Bundle := named_bundle% "RealMapCertificates/relations/basis29.json"
theorem reductionProof29 : EqualModuloRelations reduction29.relations reduction29.input reduction29.output := by lin_cert using reduction29.terms
theorem substitutionProof29 : IsMapEvaluation generatorImages reduction29.relations [5] reduction29.output := by lin_cert using reduction29.terms
def map_5_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image33 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation33 : InImage map_5_16 image33 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction33 : Bundle := named_bundle% "RealMapCertificates/relations/basis33.json"
theorem reductionProof33 : EqualModuloRelations reduction33.relations reduction33.input reduction33.output := by lin_cert using reduction33.terms
theorem substitutionProof33 : IsMapEvaluation generatorImages reduction33.relations [6] reduction33.output := by lin_cert using reduction33.terms
def map_5_19 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image46 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation46 : InImage map_5_19 image46 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction46 : Bundle := named_bundle% "RealMapCertificates/relations/basis46.json"
theorem reductionProof46 : EqualModuloRelations reduction46.relations reduction46.input reduction46.output := by lin_cert using reduction46.terms
theorem substitutionProof46 : IsMapEvaluation generatorImages reduction46.relations [0,8] reduction46.output := by lin_cert using reduction46.terms
def map_5_20 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image50 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation50 : InImage map_5_20 image50 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction50 : Bundle := named_bundle% "RealMapCertificates/relations/basis50.json"
theorem reductionProof50 : EqualModuloRelations reduction50.relations reduction50.input reduction50.output := by lin_cert using reduction50.terms
theorem substitutionProof50 : IsMapEvaluation generatorImages reduction50.relations [1,8] reduction50.output := by lin_cert using reduction50.terms
def image51 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation51 : InImage map_5_20 image51 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction51 : Bundle := named_bundle% "RealMapCertificates/relations/basis51.json"
theorem reductionProof51 : EqualModuloRelations reduction51.relations reduction51.input reduction51.output := by lin_cert using reduction51.terms
theorem substitutionProof51 : IsMapEvaluation generatorImages reduction51.relations [0,0,0,0,7] reduction51.output := by lin_cert using reduction51.terms
def map_5_22 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image61 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation61 : InImage map_5_22 image61 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction61 : Bundle := named_bundle% "RealMapCertificates/relations/basis61.json"
theorem reductionProof61 : EqualModuloRelations reduction61.relations reduction61.input reduction61.output := by lin_cert using reduction61.terms
theorem substitutionProof61 : IsMapEvaluation generatorImages reduction61.relations [0,9] reduction61.output := by lin_cert using reduction61.terms
def map_5_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image69 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation69 : InImage map_5_23 image69 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction69 : Bundle := named_bundle% "RealMapCertificates/relations/basis69.json"
theorem reductionProof69 : EqualModuloRelations reduction69.relations reduction69.input reduction69.output := by lin_cert using reduction69.terms
theorem substitutionProof69 : IsMapEvaluation generatorImages reduction69.relations [0,10] reduction69.output := by lin_cert using reduction69.terms
def map_5_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image76 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation76 : InImage map_5_25 image76 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction76 : Bundle := named_bundle% "RealMapCertificates/relations/basis76.json"
theorem reductionProof76 : EqualModuloRelations reduction76.relations reduction76.input reduction76.output := by lin_cert using reduction76.terms
theorem substitutionProof76 : IsMapEvaluation generatorImages reduction76.relations [0,13] reduction76.output := by lin_cert using reduction76.terms
def map_5_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image80 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation80 : InImage map_5_26 image80 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction80 : Bundle := named_bundle% "RealMapCertificates/relations/basis80.json"
theorem reductionProof80 : EqualModuloRelations reduction80.relations reduction80.input reduction80.output := by lin_cert using reduction80.terms
theorem substitutionProof80 : IsMapEvaluation generatorImages reduction80.relations [1,13] reduction80.output := by lin_cert using reduction80.terms
def map_5_28 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image87 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation87 : InImage map_5_28 image87 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction87 : Bundle := named_bundle% "RealMapCertificates/relations/basis87.json"
theorem reductionProof87 : EqualModuloRelations reduction87.relations reduction87.input reduction87.output := by lin_cert using reduction87.terms
theorem substitutionProof87 : IsMapEvaluation generatorImages reduction87.relations [2,13] reduction87.output := by lin_cert using reduction87.terms
def map_5_29 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image91 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation91 : InImage map_5_29 image91 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction91 : Bundle := named_bundle% "RealMapCertificates/relations/basis91.json"
theorem reductionProof91 : EqualModuloRelations reduction91.relations reduction91.input reduction91.output := by lin_cert using reduction91.terms
theorem substitutionProof91 : IsMapEvaluation generatorImages reduction91.relations [1,4,7] reduction91.output := by lin_cert using reduction91.terms
def map_5_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation126 : InImage map_5_35 image126 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction126 : Bundle := named_bundle% "RealMapCertificates/relations/basis126.json"
theorem reductionProof126 : EqualModuloRelations reduction126.relations reduction126.input reduction126.output := by lin_cert using reduction126.terms
theorem substitutionProof126 : IsMapEvaluation generatorImages reduction126.relations [0,0,0,7,7] reduction126.output := by lin_cert using reduction126.terms
def map_5_36 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation133 : InImage map_5_36 image133 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction133 : Bundle := named_bundle% "RealMapCertificates/relations/basis133.json"
theorem reductionProof133 : EqualModuloRelations reduction133.relations reduction133.input reduction133.output := by lin_cert using reduction133.terms
theorem substitutionProof133 : IsMapEvaluation generatorImages reduction133.relations [24] reduction133.output := by lin_cert using reduction133.terms
def image134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation134 : InImage map_5_36 image134 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction134 : Bundle := named_bundle% "RealMapCertificates/relations/basis134.json"
theorem reductionProof134 : EqualModuloRelations reduction134.relations reduction134.input reduction134.output := by lin_cert using reduction134.terms
theorem substitutionProof134 : IsMapEvaluation generatorImages reduction134.relations [0,0,0,0,18] reduction134.output := by lin_cert using reduction134.terms
def map_5_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation153 : InImage map_5_38 image153 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction153 : Bundle := named_bundle% "RealMapCertificates/relations/basis153.json"
theorem reductionProof153 : EqualModuloRelations reduction153.relations reduction153.input reduction153.output := by lin_cert using reduction153.terms
theorem substitutionProof153 : IsMapEvaluation generatorImages reduction153.relations [0,26] reduction153.output := by lin_cert using reduction153.terms
def map_5_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation169 : InImage map_5_40 image169 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction169 : Bundle := named_bundle% "RealMapCertificates/relations/basis169.json"
theorem reductionProof169 : EqualModuloRelations reduction169.relations reduction169.input reduction169.output := by lin_cert using reduction169.terms
theorem substitutionProof169 : IsMapEvaluation generatorImages reduction169.relations [2,25] reduction169.output := by lin_cert using reduction169.terms
def map_6_6 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10 : InImage map_6_6 image10 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10 : Bundle := named_bundle% "RealMapCertificates/relations/basis10.json"
theorem reductionProof10 : EqualModuloRelations reduction10.relations reduction10.input reduction10.output := by lin_cert using reduction10.terms
theorem substitutionProof10 : IsMapEvaluation generatorImages reduction10.relations [0,0,0,0,0,0] reduction10.output := by lin_cert using reduction10.terms
def map_6_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image32 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation32 : InImage map_6_16 image32 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction32 : Bundle := named_bundle% "RealMapCertificates/relations/basis32.json"
theorem reductionProof32 : EqualModuloRelations reduction32.relations reduction32.input reduction32.output := by lin_cert using reduction32.terms
theorem substitutionProof32 : IsMapEvaluation generatorImages reduction32.relations [1,5] reduction32.output := by lin_cert using reduction32.terms
def map_6_17 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image37 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation37 : InImage map_6_17 image37 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction37 : Bundle := named_bundle% "RealMapCertificates/relations/basis37.json"
theorem reductionProof37 : EqualModuloRelations reduction37.relations reduction37.input reduction37.output := by lin_cert using reduction37.terms
theorem substitutionProof37 : IsMapEvaluation generatorImages reduction37.relations [0,6] reduction37.output := by lin_cert using reduction37.terms
def map_6_20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image49 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation49 : InImage map_6_20 image49 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction49 : Bundle := named_bundle% "RealMapCertificates/relations/basis49.json"
theorem reductionProof49 : EqualModuloRelations reduction49.relations reduction49.input reduction49.output := by lin_cert using reduction49.terms
theorem substitutionProof49 : IsMapEvaluation generatorImages reduction49.relations [0,0,8] reduction49.output := by lin_cert using reduction49.terms
def map_6_21 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image55 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation55 : InImage map_6_21 image55 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction55 : Bundle := named_bundle% "RealMapCertificates/relations/basis55.json"
theorem reductionProof55 : EqualModuloRelations reduction55.relations reduction55.input reduction55.output := by lin_cert using reduction55.terms
theorem substitutionProof55 : IsMapEvaluation generatorImages reduction55.relations [0,0,0,0,0,7] reduction55.output := by lin_cert using reduction55.terms
def map_6_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image60 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation60 : InImage map_6_22 image60 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction60 : Bundle := named_bundle% "RealMapCertificates/relations/basis60.json"
theorem reductionProof60 : EqualModuloRelations reduction60.relations reduction60.input reduction60.output := by lin_cert using reduction60.terms
theorem substitutionProof60 : IsMapEvaluation generatorImages reduction60.relations [1,1,8] reduction60.output := by lin_cert using reduction60.terms
def map_6_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image68 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation68 : InImage map_6_23 image68 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction68 : Bundle := named_bundle% "RealMapCertificates/relations/basis68.json"
theorem reductionProof68 : EqualModuloRelations reduction68.relations reduction68.input reduction68.output := by lin_cert using reduction68.terms
theorem substitutionProof68 : IsMapEvaluation generatorImages reduction68.relations [0,0,9] reduction68.output := by lin_cert using reduction68.terms
def map_6_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image79 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation79 : InImage map_6_26 image79 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction79 : Bundle := named_bundle% "RealMapCertificates/relations/basis79.json"
theorem reductionProof79 : EqualModuloRelations reduction79.relations reduction79.input reduction79.output := by lin_cert using reduction79.terms
theorem substitutionProof79 : IsMapEvaluation generatorImages reduction79.relations [0,0,13] reduction79.output := by lin_cert using reduction79.terms
def map_6_29 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image90 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation90 : InImage map_6_29 image90 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction90 : Bundle := named_bundle% "RealMapCertificates/relations/basis90.json"
theorem reductionProof90 : EqualModuloRelations reduction90.relations reduction90.input reduction90.output := by lin_cert using reduction90.terms
theorem substitutionProof90 : IsMapEvaluation generatorImages reduction90.relations [0,2,13] reduction90.output := by lin_cert using reduction90.terms
def map_6_32 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation103 : InImage map_6_32 image103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction103 : Bundle := named_bundle% "RealMapCertificates/relations/basis103.json"
theorem reductionProof103 : EqualModuloRelations reduction103.relations reduction103.input reduction103.output := by lin_cert using reduction103.terms
theorem substitutionProof103 : IsMapEvaluation generatorImages reduction103.relations [2,2,13] reduction103.output := by lin_cert using reduction103.terms
def map_6_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image132 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation132 : InImage map_6_36 image132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction132 : Bundle := named_bundle% "RealMapCertificates/relations/basis132.json"
theorem reductionProof132 : EqualModuloRelations reduction132.relations reduction132.input reduction132.output := by lin_cert using reduction132.terms
theorem substitutionProof132 : IsMapEvaluation generatorImages reduction132.relations [23] reduction132.output := by lin_cert using reduction132.terms
def map_6_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation143 : InImage map_6_37 image143 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction143 : Bundle := named_bundle% "RealMapCertificates/relations/basis143.json"
theorem reductionProof143 : EqualModuloRelations reduction143.relations reduction143.input reduction143.output := by lin_cert using reduction143.terms
theorem substitutionProof143 : IsMapEvaluation generatorImages reduction143.relations [0,0,0,0,0,18] reduction143.output := by lin_cert using reduction143.terms
def map_6_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation152 : InImage map_6_38 image152 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction152 : Bundle := named_bundle% "RealMapCertificates/relations/basis152.json"
theorem reductionProof152 : EqualModuloRelations reduction152.relations reduction152.input reduction152.output := by lin_cert using reduction152.terms
theorem substitutionProof152 : IsMapEvaluation generatorImages reduction152.relations [28] reduction152.output := by lin_cert using reduction152.terms
def map_6_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation168 : InImage map_6_40 image168 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction168 : Bundle := named_bundle% "RealMapCertificates/relations/basis168.json"
theorem reductionProof168 : EqualModuloRelations reduction168.relations reduction168.input reduction168.output := by lin_cert using reduction168.terms
theorem substitutionProof168 : IsMapEvaluation generatorImages reduction168.relations [2,24] reduction168.output := by lin_cert using reduction168.terms
def map_7_7 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12 : InImage map_7_7 image12 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12 : Bundle := named_bundle% "RealMapCertificates/relations/basis12.json"
theorem reductionProof12 : EqualModuloRelations reduction12.relations reduction12.input reduction12.output := by lin_cert using reduction12.terms
theorem substitutionProof12 : IsMapEvaluation generatorImages reduction12.relations [0,0,0,0,0,0,0] reduction12.output := by lin_cert using reduction12.terms
def map_7_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image41 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation41 : InImage map_7_18 image41 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction41 : Bundle := named_bundle% "RealMapCertificates/relations/basis41.json"
theorem reductionProof41 : EqualModuloRelations reduction41.relations reduction41.input reduction41.output := by lin_cert using reduction41.terms
theorem substitutionProof41 : IsMapEvaluation generatorImages reduction41.relations [0,0,6] reduction41.output := by lin_cert using reduction41.terms
def map_7_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image59 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation59 : InImage map_7_22 image59 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction59 : Bundle := named_bundle% "RealMapCertificates/relations/basis59.json"
theorem reductionProof59 : EqualModuloRelations reduction59.relations reduction59.input reduction59.output := by lin_cert using reduction59.terms
theorem substitutionProof59 : IsMapEvaluation generatorImages reduction59.relations [0,0,0,0,0,0,7] reduction59.output := by lin_cert using reduction59.terms
def map_7_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image67 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation67 : InImage map_7_23 image67 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction67 : Bundle := named_bundle% "RealMapCertificates/relations/basis67.json"
theorem reductionProof67 : EqualModuloRelations reduction67.relations reduction67.input reduction67.output := by lin_cert using reduction67.terms
theorem substitutionProof67 : IsMapEvaluation generatorImages reduction67.relations [12] reduction67.output := by lin_cert using reduction67.terms
def map_7_24 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image71 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation71 : InImage map_7_24 image71 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction71 : Bundle := named_bundle% "RealMapCertificates/relations/basis71.json"
theorem reductionProof71 : EqualModuloRelations reduction71.relations reduction71.input reduction71.output := by lin_cert using reduction71.terms
theorem substitutionProof71 : IsMapEvaluation generatorImages reduction71.relations [0,0,0,9] reduction71.output := by lin_cert using reduction71.terms
def map_7_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image95 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation95 : InImage map_7_30 image95 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction95 : Bundle := named_bundle% "RealMapCertificates/relations/basis95.json"
theorem reductionProof95 : EqualModuloRelations reduction95.relations reduction95.input reduction95.output := by lin_cert using reduction95.terms
theorem substitutionProof95 : IsMapEvaluation generatorImages reduction95.relations [17] reduction95.output := by lin_cert using reduction95.terms
def map_7_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation109 : InImage map_7_33 image109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction109 : Bundle := named_bundle% "RealMapCertificates/relations/basis109.json"
theorem reductionProof109 : EqualModuloRelations reduction109.relations reduction109.input reduction109.output := by lin_cert using reduction109.terms
theorem substitutionProof109 : IsMapEvaluation generatorImages reduction109.relations [20] reduction109.output := by lin_cert using reduction109.terms
def map_7_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image131 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation131 : InImage map_7_36 image131 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction131 : Bundle := named_bundle% "RealMapCertificates/relations/basis131.json"
theorem reductionProof131 : EqualModuloRelations reduction131.relations reduction131.input reduction131.output := by lin_cert using reduction131.terms
theorem substitutionProof131 : IsMapEvaluation generatorImages reduction131.relations [22] reduction131.output := by lin_cert using reduction131.terms
def map_7_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation142 : InImage map_7_37 image142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction142 : Bundle := named_bundle% "RealMapCertificates/relations/basis142.json"
theorem reductionProof142 : EqualModuloRelations reduction142.relations reduction142.input reduction142.output := by lin_cert using reduction142.terms
theorem substitutionProof142 : IsMapEvaluation generatorImages reduction142.relations [0,23] reduction142.output := by lin_cert using reduction142.terms
def map_7_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation151 : InImage map_7_38 image151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction151 : Bundle := named_bundle% "RealMapCertificates/relations/basis151.json"
theorem reductionProof151 : EqualModuloRelations reduction151.relations reduction151.input reduction151.output := by lin_cert using reduction151.terms
theorem substitutionProof151 : IsMapEvaluation generatorImages reduction151.relations [0,0,0,0,0,0,18] reduction151.output := by lin_cert using reduction151.terms
def map_7_39 : Matrix 2 1 := fun i j => ([false,true] : List Bool)[i.val*1+j.val]!
def image159 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation159 : InImage map_7_39 image159 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction159 : Bundle := named_bundle% "RealMapCertificates/relations/basis159.json"
theorem reductionProof159 : EqualModuloRelations reduction159.relations reduction159.input reduction159.output := by lin_cert using reduction159.terms
theorem substitutionProof159 : IsMapEvaluation generatorImages reduction159.relations [29] reduction159.output := by lin_cert using reduction159.terms
def map_7_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation167 : InImage map_7_40 image167 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction167 : Bundle := named_bundle% "RealMapCertificates/relations/basis167.json"
theorem reductionProof167 : EqualModuloRelations reduction167.relations reduction167.input reduction167.output := by lin_cert using reduction167.terms
theorem substitutionProof167 : IsMapEvaluation generatorImages reduction167.relations [1,28] reduction167.output := by lin_cert using reduction167.terms
def map_8_8 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13 : InImage map_8_8 image13 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13 : Bundle := named_bundle% "RealMapCertificates/relations/basis13.json"
theorem reductionProof13 : EqualModuloRelations reduction13.relations reduction13.input reduction13.output := by lin_cert using reduction13.terms
theorem substitutionProof13 : IsMapEvaluation generatorImages reduction13.relations [0,0,0,0,0,0,0,0] reduction13.output := by lin_cert using reduction13.terms
def map_8_23 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image66 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation66 : InImage map_8_23 image66 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction66 : Bundle := named_bundle% "RealMapCertificates/relations/basis66.json"
theorem reductionProof66 : EqualModuloRelations reduction66.relations reduction66.input reduction66.output := by lin_cert using reduction66.terms
theorem substitutionProof66 : IsMapEvaluation generatorImages reduction66.relations [0,0,0,0,0,0,0,7] reduction66.output := by lin_cert using reduction66.terms
def map_8_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image75 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation75 : InImage map_8_25 image75 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction75 : Bundle := named_bundle% "RealMapCertificates/relations/basis75.json"
theorem reductionProof75 : EqualModuloRelations reduction75.relations reduction75.input reduction75.output := by lin_cert using reduction75.terms
theorem substitutionProof75 : IsMapEvaluation generatorImages reduction75.relations [1,12] reduction75.output := by lin_cert using reduction75.terms
def map_8_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image94 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation94 : InImage map_8_30 image94 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction94 : Bundle := named_bundle% "RealMapCertificates/relations/basis94.json"
theorem reductionProof94 : EqualModuloRelations reduction94.relations reduction94.input reduction94.output := by lin_cert using reduction94.terms
theorem substitutionProof94 : IsMapEvaluation generatorImages reduction94.relations [16] reduction94.output := by lin_cert using reduction94.terms
def map_8_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image98 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation98 : InImage map_8_31 image98 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction98 : Bundle := named_bundle% "RealMapCertificates/relations/basis98.json"
theorem reductionProof98 : EqualModuloRelations reduction98.relations reduction98.input reduction98.output := by lin_cert using reduction98.terms
theorem substitutionProof98 : IsMapEvaluation generatorImages reduction98.relations [0,17] reduction98.output := by lin_cert using reduction98.terms
def map_8_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image108 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation108 : InImage map_8_33 image108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction108 : Bundle := named_bundle% "RealMapCertificates/relations/basis108.json"
theorem reductionProof108 : EqualModuloRelations reduction108.relations reduction108.input reduction108.output := by lin_cert using reduction108.terms
theorem substitutionProof108 : IsMapEvaluation generatorImages reduction108.relations [19] reduction108.output := by lin_cert using reduction108.terms
def map_8_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image116 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation116 : InImage map_8_34 image116 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction116 : Bundle := named_bundle% "RealMapCertificates/relations/basis116.json"
theorem reductionProof116 : EqualModuloRelations reduction116.relations reduction116.input reduction116.output := by lin_cert using reduction116.terms
theorem substitutionProof116 : IsMapEvaluation generatorImages reduction116.relations [0,20] reduction116.output := by lin_cert using reduction116.terms
def map_8_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image130 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation130 : InImage map_8_36 image130 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction130 : Bundle := named_bundle% "RealMapCertificates/relations/basis130.json"
theorem reductionProof130 : EqualModuloRelations reduction130.relations reduction130.input reduction130.output := by lin_cert using reduction130.terms
theorem substitutionProof130 : IsMapEvaluation generatorImages reduction130.relations [8,8] reduction130.output := by lin_cert using reduction130.terms
def map_8_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image141 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation141 : InImage map_8_37 image141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction141 : Bundle := named_bundle% "RealMapCertificates/relations/basis141.json"
theorem reductionProof141 : EqualModuloRelations reduction141.relations reduction141.input reduction141.output := by lin_cert using reduction141.terms
theorem substitutionProof141 : IsMapEvaluation generatorImages reduction141.relations [0,22] reduction141.output := by lin_cert using reduction141.terms
def map_8_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation150 : InImage map_8_38 image150 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction150 : Bundle := named_bundle% "RealMapCertificates/relations/basis150.json"
theorem reductionProof150 : EqualModuloRelations reduction150.relations reduction150.input reduction150.output := by lin_cert using reduction150.terms
theorem substitutionProof150 : IsMapEvaluation generatorImages reduction150.relations [0,0,23] reduction150.output := by lin_cert using reduction150.terms
def map_8_39 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation157 : InImage map_8_39 image157 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction157 : Bundle := named_bundle% "RealMapCertificates/relations/basis157.json"
theorem reductionProof157 : EqualModuloRelations reduction157.relations reduction157.input reduction157.output := by lin_cert using reduction157.terms
theorem substitutionProof157 : IsMapEvaluation generatorImages reduction157.relations [8,9] reduction157.output := by lin_cert using reduction157.terms
def image158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation158 : InImage map_8_39 image158 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction158 : Bundle := named_bundle% "RealMapCertificates/relations/basis158.json"
theorem reductionProof158 : EqualModuloRelations reduction158.relations reduction158.input reduction158.output := by lin_cert using reduction158.terms
theorem substitutionProof158 : IsMapEvaluation generatorImages reduction158.relations [0,0,0,0,0,0,0,18] reduction158.output := by lin_cert using reduction158.terms
def map_8_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image166 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation166 : InImage map_8_40 image166 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction166 : Bundle := named_bundle% "RealMapCertificates/relations/basis166.json"
theorem reductionProof166 : EqualModuloRelations reduction166.relations reduction166.input reduction166.output := by lin_cert using reduction166.terms
theorem substitutionProof166 : IsMapEvaluation generatorImages reduction166.relations [0,29] reduction166.output := by lin_cert using reduction166.terms
def map_9_9 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16 : InImage map_9_9 image16 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16 : Bundle := named_bundle% "RealMapCertificates/relations/basis16.json"
theorem reductionProof16 : EqualModuloRelations reduction16.relations reduction16.input reduction16.output := by lin_cert using reduction16.terms
theorem substitutionProof16 : IsMapEvaluation generatorImages reduction16.relations [0,0,0,0,0,0,0,0,0] reduction16.output := by lin_cert using reduction16.terms
def map_9_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image78 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation78 : InImage map_9_26 image78 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction78 : Bundle := named_bundle% "RealMapCertificates/relations/basis78.json"
theorem reductionProof78 : EqualModuloRelations reduction78.relations reduction78.input reduction78.output := by lin_cert using reduction78.terms
theorem substitutionProof78 : IsMapEvaluation generatorImages reduction78.relations [14] reduction78.output := by lin_cert using reduction78.terms
def map_9_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image86 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation86 : InImage map_9_28 image86 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction86 : Bundle := named_bundle% "RealMapCertificates/relations/basis86.json"
theorem reductionProof86 : EqualModuloRelations reduction86.relations reduction86.input reduction86.output := by lin_cert using reduction86.terms
theorem substitutionProof86 : IsMapEvaluation generatorImages reduction86.relations [15] reduction86.output := by lin_cert using reduction86.terms
def map_9_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image97 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation97 : InImage map_9_31 image97 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction97 : Bundle := named_bundle% "RealMapCertificates/relations/basis97.json"
theorem reductionProof97 : EqualModuloRelations reduction97.relations reduction97.input reduction97.output := by lin_cert using reduction97.terms
theorem substitutionProof97 : IsMapEvaluation generatorImages reduction97.relations [0,16] reduction97.output := by lin_cert using reduction97.terms
def map_9_32 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image101 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation101 : InImage map_9_32 image101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction101 : Bundle := named_bundle% "RealMapCertificates/relations/basis101.json"
theorem reductionProof101 : EqualModuloRelations reduction101.relations reduction101.input reduction101.output := by lin_cert using reduction101.terms
theorem substitutionProof101 : IsMapEvaluation generatorImages reduction101.relations [1,16] reduction101.output := by lin_cert using reduction101.terms
def image102 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation102 : InImage map_9_32 image102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction102 : Bundle := named_bundle% "RealMapCertificates/relations/basis102.json"
theorem reductionProof102 : EqualModuloRelations reduction102.relations reduction102.input reduction102.output := by lin_cert using reduction102.terms
theorem substitutionProof102 : IsMapEvaluation generatorImages reduction102.relations [0,0,17] reduction102.output := by lin_cert using reduction102.terms
def map_9_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image115 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation115 : InImage map_9_34 image115 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction115 : Bundle := named_bundle% "RealMapCertificates/relations/basis115.json"
theorem reductionProof115 : EqualModuloRelations reduction115.relations reduction115.input reduction115.output := by lin_cert using reduction115.terms
theorem substitutionProof115 : IsMapEvaluation generatorImages reduction115.relations [0,19] reduction115.output := by lin_cert using reduction115.terms
def map_9_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image125 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation125 : InImage map_9_35 image125 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction125 : Bundle := named_bundle% "RealMapCertificates/relations/basis125.json"
theorem reductionProof125 : EqualModuloRelations reduction125.relations reduction125.input reduction125.output := by lin_cert using reduction125.terms
theorem substitutionProof125 : IsMapEvaluation generatorImages reduction125.relations [0,0,20] reduction125.output := by lin_cert using reduction125.terms
def map_9_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image140 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation140 : InImage map_9_37 image140 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction140 : Bundle := named_bundle% "RealMapCertificates/relations/basis140.json"
theorem reductionProof140 : EqualModuloRelations reduction140.relations reduction140.input reduction140.output := by lin_cert using reduction140.terms
theorem substitutionProof140 : IsMapEvaluation generatorImages reduction140.relations [0,8,8] reduction140.output := by lin_cert using reduction140.terms
def map_9_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image149 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation149 : InImage map_9_38 image149 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction149 : Bundle := named_bundle% "RealMapCertificates/relations/basis149.json"
theorem reductionProof149 : EqualModuloRelations reduction149.relations reduction149.input reduction149.output := by lin_cert using reduction149.terms
theorem substitutionProof149 : IsMapEvaluation generatorImages reduction149.relations [0,0,22] reduction149.output := by lin_cert using reduction149.terms
def map_9_39 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation156 : InImage map_9_39 image156 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction156 : Bundle := named_bundle% "RealMapCertificates/relations/basis156.json"
theorem reductionProof156 : EqualModuloRelations reduction156.relations reduction156.input reduction156.output := by lin_cert using reduction156.terms
theorem substitutionProof156 : IsMapEvaluation generatorImages reduction156.relations [0,0,0,23] reduction156.output := by lin_cert using reduction156.terms
def map_9_40 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation164 : InImage map_9_40 image164 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction164 : Bundle := named_bundle% "RealMapCertificates/relations/basis164.json"
theorem reductionProof164 : EqualModuloRelations reduction164.relations reduction164.input reduction164.output := by lin_cert using reduction164.terms
theorem substitutionProof164 : IsMapEvaluation generatorImages reduction164.relations [0,8,9] reduction164.output := by lin_cert using reduction164.terms
def image165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation165 : InImage map_9_40 image165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction165 : Bundle := named_bundle% "RealMapCertificates/relations/basis165.json"
theorem reductionProof165 : EqualModuloRelations reduction165.relations reduction165.input reduction165.output := by lin_cert using reduction165.terms
theorem substitutionProof165 : IsMapEvaluation generatorImages reduction165.relations [0,0,0,0,0,0,0,0,18] reduction165.output := by lin_cert using reduction165.terms
def map_10_10 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18 : InImage map_10_10 image18 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18 : Bundle := named_bundle% "RealMapCertificates/relations/basis18.json"
theorem reductionProof18 : EqualModuloRelations reduction18.relations reduction18.input reduction18.output := by lin_cert using reduction18.terms
theorem substitutionProof18 : IsMapEvaluation generatorImages reduction18.relations [0,0,0,0,0,0,0,0,0,0] reduction18.output := by lin_cert using reduction18.terms
def map_10_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image85 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation85 : InImage map_10_28 image85 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction85 : Bundle := named_bundle% "RealMapCertificates/relations/basis85.json"
theorem reductionProof85 : EqualModuloRelations reduction85.relations reduction85.input reduction85.output := by lin_cert using reduction85.terms
theorem substitutionProof85 : IsMapEvaluation generatorImages reduction85.relations [1,14] reduction85.output := by lin_cert using reduction85.terms
def map_10_29 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image89 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation89 : InImage map_10_29 image89 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction89 : Bundle := named_bundle% "RealMapCertificates/relations/basis89.json"
theorem reductionProof89 : EqualModuloRelations reduction89.relations reduction89.input reduction89.output := by lin_cert using reduction89.terms
theorem substitutionProof89 : IsMapEvaluation generatorImages reduction89.relations [0,15] reduction89.output := by lin_cert using reduction89.terms
def map_10_32 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image100 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation100 : InImage map_10_32 image100 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction100 : Bundle := named_bundle% "RealMapCertificates/relations/basis100.json"
theorem reductionProof100 : EqualModuloRelations reduction100.relations reduction100.input reduction100.output := by lin_cert using reduction100.terms
theorem substitutionProof100 : IsMapEvaluation generatorImages reduction100.relations [0,0,16] reduction100.output := by lin_cert using reduction100.terms
def map_10_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation107 : InImage map_10_33 image107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction107 : Bundle := named_bundle% "RealMapCertificates/relations/basis107.json"
theorem reductionProof107 : EqualModuloRelations reduction107.relations reduction107.input reduction107.output := by lin_cert using reduction107.terms
theorem substitutionProof107 : IsMapEvaluation generatorImages reduction107.relations [0,0,0,17] reduction107.output := by lin_cert using reduction107.terms
def map_10_34 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image114 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation114 : InImage map_10_34 image114 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction114 : Bundle := named_bundle% "RealMapCertificates/relations/basis114.json"
theorem reductionProof114 : EqualModuloRelations reduction114.relations reduction114.input reduction114.output := by lin_cert using reduction114.terms
theorem substitutionProof114 : IsMapEvaluation generatorImages reduction114.relations [1,1,16] reduction114.output := by lin_cert using reduction114.terms
def map_10_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image124 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation124 : InImage map_10_35 image124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction124 : Bundle := named_bundle% "RealMapCertificates/relations/basis124.json"
theorem reductionProof124 : EqualModuloRelations reduction124.relations reduction124.input reduction124.output := by lin_cert using reduction124.terms
theorem substitutionProof124 : IsMapEvaluation generatorImages reduction124.relations [0,0,19] reduction124.output := by lin_cert using reduction124.terms
def map_10_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image148 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation148 : InImage map_10_38 image148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction148 : Bundle := named_bundle% "RealMapCertificates/relations/basis148.json"
theorem reductionProof148 : EqualModuloRelations reduction148.relations reduction148.input reduction148.output := by lin_cert using reduction148.terms
theorem substitutionProof148 : IsMapEvaluation generatorImages reduction148.relations [0,0,8,8] reduction148.output := by lin_cert using reduction148.terms
def map_10_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation163 : InImage map_10_40 image163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction163 : Bundle := named_bundle% "RealMapCertificates/relations/basis163.json"
theorem reductionProof163 : EqualModuloRelations reduction163.relations reduction163.input reduction163.output := by lin_cert using reduction163.terms
theorem substitutionProof163 : IsMapEvaluation generatorImages reduction163.relations [0,0,0,0,23] reduction163.output := by lin_cert using reduction163.terms
def map_11_11 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21 : InImage map_11_11 image21 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21 : Bundle := named_bundle% "RealMapCertificates/relations/basis21.json"
theorem reductionProof21 : EqualModuloRelations reduction21.relations reduction21.input reduction21.output := by lin_cert using reduction21.terms
theorem substitutionProof21 : IsMapEvaluation generatorImages reduction21.relations [0,0,0,0,0,0,0,0,0,0,0] reduction21.output := by lin_cert using reduction21.terms
def map_11_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image93 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation93 : InImage map_11_30 image93 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction93 : Bundle := named_bundle% "RealMapCertificates/relations/basis93.json"
theorem reductionProof93 : EqualModuloRelations reduction93.relations reduction93.input reduction93.output := by lin_cert using reduction93.terms
theorem substitutionProof93 : IsMapEvaluation generatorImages reduction93.relations [0,0,15] reduction93.output := by lin_cert using reduction93.terms
def map_11_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation113 : InImage map_11_34 image113 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction113 : Bundle := named_bundle% "RealMapCertificates/relations/basis113.json"
theorem reductionProof113 : EqualModuloRelations reduction113.relations reduction113.input reduction113.output := by lin_cert using reduction113.terms
theorem substitutionProof113 : IsMapEvaluation generatorImages reduction113.relations [0,0,0,0,17] reduction113.output := by lin_cert using reduction113.terms
def map_11_35 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image123 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation123 : InImage map_11_35 image123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction123 : Bundle := named_bundle% "RealMapCertificates/relations/basis123.json"
theorem reductionProof123 : EqualModuloRelations reduction123.relations reduction123.input reduction123.output := by lin_cert using reduction123.terms
theorem substitutionProof123 : IsMapEvaluation generatorImages reduction123.relations [21] reduction123.output := by lin_cert using reduction123.terms
def map_11_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation129 : InImage map_11_36 image129 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction129 : Bundle := named_bundle% "RealMapCertificates/relations/basis129.json"
theorem reductionProof129 : EqualModuloRelations reduction129.relations reduction129.input reduction129.output := by lin_cert using reduction129.terms
theorem substitutionProof129 : IsMapEvaluation generatorImages reduction129.relations [0,0,0,19] reduction129.output := by lin_cert using reduction129.terms
def map_12_12 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image24 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation24 : InImage map_12_12 image24 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction24 : Bundle := named_bundle% "RealMapCertificates/relations/basis24.json"
theorem reductionProof24 : EqualModuloRelations reduction24.relations reduction24.input reduction24.output := by lin_cert using reduction24.terms
theorem substitutionProof24 : IsMapEvaluation generatorImages reduction24.relations [0,0,0,0,0,0,0,0,0,0,0,0] reduction24.output := by lin_cert using reduction24.terms
def map_12_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation122 : InImage map_12_35 image122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction122 : Bundle := named_bundle% "RealMapCertificates/relations/basis122.json"
theorem reductionProof122 : EqualModuloRelations reduction122.relations reduction122.input reduction122.output := by lin_cert using reduction122.terms
theorem substitutionProof122 : IsMapEvaluation generatorImages reduction122.relations [0,0,0,0,0,17] reduction122.output := by lin_cert using reduction122.terms
def map_12_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image139 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation139 : InImage map_12_37 image139 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction139 : Bundle := named_bundle% "RealMapCertificates/relations/basis139.json"
theorem reductionProof139 : EqualModuloRelations reduction139.relations reduction139.input reduction139.output := by lin_cert using reduction139.terms
theorem substitutionProof139 : IsMapEvaluation generatorImages reduction139.relations [1,21] reduction139.output := by lin_cert using reduction139.terms
def map_13_13 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image26 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation26 : InImage map_13_13 image26 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction26 : Bundle := named_bundle% "RealMapCertificates/relations/basis26.json"
theorem reductionProof26 : EqualModuloRelations reduction26.relations reduction26.input reduction26.output := by lin_cert using reduction26.terms
theorem substitutionProof26 : IsMapEvaluation generatorImages reduction26.relations [0,0,0,0,0,0,0,0,0,0,0,0,0] reduction26.output := by lin_cert using reduction26.terms
def map_13_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image147 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation147 : InImage map_13_38 image147 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction147 : Bundle := named_bundle% "RealMapCertificates/relations/basis147.json"
theorem reductionProof147 : EqualModuloRelations reduction147.relations reduction147.input reduction147.output := by lin_cert using reduction147.terms
theorem substitutionProof147 : IsMapEvaluation generatorImages reduction147.relations [27] reduction147.output := by lin_cert using reduction147.terms
def map_13_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation162 : InImage map_13_40 image162 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction162 : Bundle := named_bundle% "RealMapCertificates/relations/basis162.json"
theorem reductionProof162 : EqualModuloRelations reduction162.relations reduction162.input reduction162.output := by lin_cert using reduction162.terms
theorem substitutionProof162 : IsMapEvaluation generatorImages reduction162.relations [30] reduction162.output := by lin_cert using reduction162.terms
def map_14_14 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image28 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation28 : InImage map_14_14 image28 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction28 : Bundle := named_bundle% "RealMapCertificates/relations/basis28.json"
theorem reductionProof28 : EqualModuloRelations reduction28.relations reduction28.input reduction28.output := by lin_cert using reduction28.terms
theorem substitutionProof28 : IsMapEvaluation generatorImages reduction28.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction28.output := by lin_cert using reduction28.terms
def map_14_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image161 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation161 : InImage map_14_40 image161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction161 : Bundle := named_bundle% "RealMapCertificates/relations/basis161.json"
theorem reductionProof161 : EqualModuloRelations reduction161.relations reduction161.input reduction161.output := by lin_cert using reduction161.terms
theorem substitutionProof161 : IsMapEvaluation generatorImages reduction161.relations [1,27] reduction161.output := by lin_cert using reduction161.terms
def map_15_15 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image30 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation30 : InImage map_15_15 image30 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction30 : Bundle := named_bundle% "RealMapCertificates/relations/basis30.json"
theorem reductionProof30 : EqualModuloRelations reduction30.relations reduction30.input reduction30.output := by lin_cert using reduction30.terms
theorem substitutionProof30 : IsMapEvaluation generatorImages reduction30.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction30.output := by lin_cert using reduction30.terms
def map_16_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image31 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation31 : InImage map_16_16 image31 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction31 : Bundle := named_bundle% "RealMapCertificates/relations/basis31.json"
theorem reductionProof31 : EqualModuloRelations reduction31.relations reduction31.input reduction31.output := by lin_cert using reduction31.terms
theorem substitutionProof31 : IsMapEvaluation generatorImages reduction31.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction31.output := by lin_cert using reduction31.terms
def map_17_17 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image36 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation36 : InImage map_17_17 image36 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction36 : Bundle := named_bundle% "RealMapCertificates/relations/basis36.json"
theorem reductionProof36 : EqualModuloRelations reduction36.relations reduction36.input reduction36.output := by lin_cert using reduction36.terms
theorem substitutionProof36 : IsMapEvaluation generatorImages reduction36.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction36.output := by lin_cert using reduction36.terms
def map_18_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image40 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation40 : InImage map_18_18 image40 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction40 : Bundle := named_bundle% "RealMapCertificates/relations/basis40.json"
theorem reductionProof40 : EqualModuloRelations reduction40.relations reduction40.input reduction40.output := by lin_cert using reduction40.terms
theorem substitutionProof40 : IsMapEvaluation generatorImages reduction40.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction40.output := by lin_cert using reduction40.terms
def map_19_19 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image45 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation45 : InImage map_19_19 image45 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction45 : Bundle := named_bundle% "RealMapCertificates/relations/basis45.json"
theorem reductionProof45 : EqualModuloRelations reduction45.relations reduction45.input reduction45.output := by lin_cert using reduction45.terms
theorem substitutionProof45 : IsMapEvaluation generatorImages reduction45.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction45.output := by lin_cert using reduction45.terms
def map_20_20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image48 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation48 : InImage map_20_20 image48 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction48 : Bundle := named_bundle% "RealMapCertificates/relations/basis48.json"
theorem reductionProof48 : EqualModuloRelations reduction48.relations reduction48.input reduction48.output := by lin_cert using reduction48.terms
theorem substitutionProof48 : IsMapEvaluation generatorImages reduction48.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction48.output := by lin_cert using reduction48.terms
def map_21_21 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image54 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation54 : InImage map_21_21 image54 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction54 : Bundle := named_bundle% "RealMapCertificates/relations/basis54.json"
theorem reductionProof54 : EqualModuloRelations reduction54.relations reduction54.input reduction54.output := by lin_cert using reduction54.terms
theorem substitutionProof54 : IsMapEvaluation generatorImages reduction54.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction54.output := by lin_cert using reduction54.terms
def map_22_22 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image58 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation58 : InImage map_22_22 image58 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction58 : Bundle := named_bundle% "RealMapCertificates/relations/basis58.json"
theorem reductionProof58 : EqualModuloRelations reduction58.relations reduction58.input reduction58.output := by lin_cert using reduction58.terms
theorem substitutionProof58 : IsMapEvaluation generatorImages reduction58.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction58.output := by lin_cert using reduction58.terms
def map_23_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image65 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation65 : InImage map_23_23 image65 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction65 : Bundle := named_bundle% "RealMapCertificates/relations/basis65.json"
theorem reductionProof65 : EqualModuloRelations reduction65.relations reduction65.input reduction65.output := by lin_cert using reduction65.terms
theorem substitutionProof65 : IsMapEvaluation generatorImages reduction65.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction65.output := by lin_cert using reduction65.terms
def map_24_24 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image70 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation70 : InImage map_24_24 image70 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction70 : Bundle := named_bundle% "RealMapCertificates/relations/basis70.json"
theorem reductionProof70 : EqualModuloRelations reduction70.relations reduction70.input reduction70.output := by lin_cert using reduction70.terms
theorem substitutionProof70 : IsMapEvaluation generatorImages reduction70.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction70.output := by lin_cert using reduction70.terms
def map_25_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image74 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation74 : InImage map_25_25 image74 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction74 : Bundle := named_bundle% "RealMapCertificates/relations/basis74.json"
theorem reductionProof74 : EqualModuloRelations reduction74.relations reduction74.input reduction74.output := by lin_cert using reduction74.terms
theorem substitutionProof74 : IsMapEvaluation generatorImages reduction74.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction74.output := by lin_cert using reduction74.terms
def map_26_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image77 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation77 : InImage map_26_26 image77 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction77 : Bundle := named_bundle% "RealMapCertificates/relations/basis77.json"
theorem reductionProof77 : EqualModuloRelations reduction77.relations reduction77.input reduction77.output := by lin_cert using reduction77.terms
theorem substitutionProof77 : IsMapEvaluation generatorImages reduction77.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction77.output := by lin_cert using reduction77.terms
def map_27_27 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image82 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation82 : InImage map_27_27 image82 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction82 : Bundle := named_bundle% "RealMapCertificates/relations/basis82.json"
theorem reductionProof82 : EqualModuloRelations reduction82.relations reduction82.input reduction82.output := by lin_cert using reduction82.terms
theorem substitutionProof82 : IsMapEvaluation generatorImages reduction82.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction82.output := by lin_cert using reduction82.terms
def map_28_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image84 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation84 : InImage map_28_28 image84 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction84 : Bundle := named_bundle% "RealMapCertificates/relations/basis84.json"
theorem reductionProof84 : EqualModuloRelations reduction84.relations reduction84.input reduction84.output := by lin_cert using reduction84.terms
theorem substitutionProof84 : IsMapEvaluation generatorImages reduction84.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction84.output := by lin_cert using reduction84.terms
def map_29_29 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image88 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation88 : InImage map_29_29 image88 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction88 : Bundle := named_bundle% "RealMapCertificates/relations/basis88.json"
theorem reductionProof88 : EqualModuloRelations reduction88.relations reduction88.input reduction88.output := by lin_cert using reduction88.terms
theorem substitutionProof88 : IsMapEvaluation generatorImages reduction88.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction88.output := by lin_cert using reduction88.terms
def map_30_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image92 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation92 : InImage map_30_30 image92 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction92 : Bundle := named_bundle% "RealMapCertificates/relations/basis92.json"
theorem reductionProof92 : EqualModuloRelations reduction92.relations reduction92.input reduction92.output := by lin_cert using reduction92.terms
theorem substitutionProof92 : IsMapEvaluation generatorImages reduction92.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction92.output := by lin_cert using reduction92.terms
def map_31_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image96 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation96 : InImage map_31_31 image96 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction96 : Bundle := named_bundle% "RealMapCertificates/relations/basis96.json"
theorem reductionProof96 : EqualModuloRelations reduction96.relations reduction96.input reduction96.output := by lin_cert using reduction96.terms
theorem substitutionProof96 : IsMapEvaluation generatorImages reduction96.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction96.output := by lin_cert using reduction96.terms
def map_32_32 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image99 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation99 : InImage map_32_32 image99 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction99 : Bundle := named_bundle% "RealMapCertificates/relations/basis99.json"
theorem reductionProof99 : EqualModuloRelations reduction99.relations reduction99.input reduction99.output := by lin_cert using reduction99.terms
theorem substitutionProof99 : IsMapEvaluation generatorImages reduction99.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction99.output := by lin_cert using reduction99.terms
def map_33_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image106 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation106 : InImage map_33_33 image106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction106 : Bundle := named_bundle% "RealMapCertificates/relations/basis106.json"
theorem reductionProof106 : EqualModuloRelations reduction106.relations reduction106.input reduction106.output := by lin_cert using reduction106.terms
theorem substitutionProof106 : IsMapEvaluation generatorImages reduction106.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction106.output := by lin_cert using reduction106.terms
def map_34_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image112 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation112 : InImage map_34_34 image112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction112 : Bundle := named_bundle% "RealMapCertificates/relations/basis112.json"
theorem reductionProof112 : EqualModuloRelations reduction112.relations reduction112.input reduction112.output := by lin_cert using reduction112.terms
theorem substitutionProof112 : IsMapEvaluation generatorImages reduction112.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction112.output := by lin_cert using reduction112.terms
def map_35_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image121 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation121 : InImage map_35_35 image121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction121 : Bundle := named_bundle% "RealMapCertificates/relations/basis121.json"
theorem reductionProof121 : EqualModuloRelations reduction121.relations reduction121.input reduction121.output := by lin_cert using reduction121.terms
theorem substitutionProof121 : IsMapEvaluation generatorImages reduction121.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction121.output := by lin_cert using reduction121.terms
def map_36_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image128 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation128 : InImage map_36_36 image128 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction128 : Bundle := named_bundle% "RealMapCertificates/relations/basis128.json"
theorem reductionProof128 : EqualModuloRelations reduction128.relations reduction128.input reduction128.output := by lin_cert using reduction128.terms
theorem substitutionProof128 : IsMapEvaluation generatorImages reduction128.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction128.output := by lin_cert using reduction128.terms
def map_37_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image138 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation138 : InImage map_37_37 image138 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction138 : Bundle := named_bundle% "RealMapCertificates/relations/basis138.json"
theorem reductionProof138 : EqualModuloRelations reduction138.relations reduction138.input reduction138.output := by lin_cert using reduction138.terms
theorem substitutionProof138 : IsMapEvaluation generatorImages reduction138.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction138.output := by lin_cert using reduction138.terms
def map_38_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image146 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation146 : InImage map_38_38 image146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction146 : Bundle := named_bundle% "RealMapCertificates/relations/basis146.json"
theorem reductionProof146 : EqualModuloRelations reduction146.relations reduction146.input reduction146.output := by lin_cert using reduction146.terms
theorem substitutionProof146 : IsMapEvaluation generatorImages reduction146.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction146.output := by lin_cert using reduction146.terms
def map_39_39 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image155 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation155 : InImage map_39_39 image155 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction155 : Bundle := named_bundle% "RealMapCertificates/relations/basis155.json"
theorem reductionProof155 : EqualModuloRelations reduction155.relations reduction155.input reduction155.output := by lin_cert using reduction155.terms
theorem substitutionProof155 : IsMapEvaluation generatorImages reduction155.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction155.output := by lin_cert using reduction155.terms
def map_40_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image160 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation160 : InImage map_40_40 image160 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction160 : Bundle := named_bundle% "RealMapCertificates/relations/basis160.json"
theorem reductionProof160 : EqualModuloRelations reduction160.relations reduction160.input reduction160.output := by lin_cert using reduction160.terms
theorem substitutionProof160 : IsMapEvaluation generatorImages reduction160.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction160.output := by lin_cert using reduction160.terms
end RealMapCertificates
