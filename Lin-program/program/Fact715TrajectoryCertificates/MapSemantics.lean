import Fact715TrajectoryCertificates.MapComparison
import ModuleMapCertificates.MatrixSemantics
namespace Fact715TrajectoryCertificates.MapSemantics
open LinearCertificates NamedElementCertificates ModuleMapCertificates MapActual MapComparison
local instance : Inhabited ModuleMonomial := ⟨⟨[],0⟩⟩
def middleMapRelations : List Polynomial := []
def middleMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[287],5⟩,⟨[440],1⟩,⟨[439],1⟩,⟨[0,68,107],0⟩,⟨[0,0,0,0,0,0,0,0,0,0,0,0,0,69,69],0⟩] : List ModuleMonomial)[i.val]!
def middleMapTarget : Fin 4 → Polynomial := fun i => ([[[448]],[[3,3,287]],[[0,440]],[[0,439]]] : List Polynomial)[i.val]!
def middleMapTerms : Fin 5 → List Term := fun i => ([[],[],[],[],[]] : List (List Term))[i.val]!
theorem middleMapValid : MatrixValid images middleMapRelations middleMapSource middleMapTarget middleMap := by lin_cert using middleMapTerms
def outMapRelations : List Polynomial := [[[20,209],[17,221],[8,280]],[[17,221],[1,437],[0,0,438]],[[1,437],[0,0,438],[0,0,0,0,418]]]
def outMapSource : Fin 4 → ModuleMonomial := fun i => ([⟨[209],11⟩,⟨[0,438],1⟩,⟨[0,0,0,418],1⟩,⟨[0,0,0,449],0⟩] : List ModuleMonomial)[i.val]!
def outMapTarget : Fin 4 → Polynomial := fun i => ([[[8,280]],[[3,359]],[[0,0,438]],[[0,0,0,0,418]]] : List Polynomial)[i.val]!
def outMapTerms : Fin 4 → List Term := fun i => ([[⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩],[],[],[]] : List (List Term))[i.val]!
theorem outMapValid : MatrixValid images outMapRelations outMapSource outMapTarget outMap := by lin_cert using outMapTerms
def inMapRelations : List Polynomial := []
def inMapSource : Fin 8 → ModuleMonomial := fun i => ([⟨[190],15⟩,⟨[425],1⟩,⟨[0,0,0,391],1⟩,⟨[0,0,0,0,375],1⟩,⟨[458],0⟩,⟨[13,251],0⟩,⟨[3,363],0⟩,⟨[0,0,0,0,0,0,0,0,0,0,0,0,324],0⟩] : List ModuleMonomial)[i.val]!
def inMapTarget : Fin 5 → Polynomial := fun i => ([[[24,190]],[[3,335]],[[0,425]],[[0,0,0,0,391]],[[0,0,0,0,0,375]]] : List Polynomial)[i.val]!
def inMapTerms : Fin 8 → List Term := fun i => ([[],[],[],[],[],[],[],[]] : List (List Term))[i.val]!
theorem inMapValid : MatrixValid images inMapRelations inMapSource inMapTarget inMap := by lin_cert using inMapTerms
def upperMiddleMapRelations : List Polynomial := [[[23,201],[15,235],[9,267],[8,286]],[[8,286],[8,285]],[[8,285],[0,3,359]],[[15,235],[2,421]],[[2,421],[0,0,0,438]],[[0,0,0,438],[0,0,0,0,0,418]]]
def upperMiddleMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[201],14⟩,⟨[3,359],1⟩,⟨[0,0,0,0,418],1⟩,⟨[8,8,209],0⟩,⟨[0,0,0,0,449],0⟩] : List ModuleMonomial)[i.val]!
def upperMiddleMapTarget : Fin 3 → Polynomial := fun i => ([[[9,267]],[[0,3,359]],[[0,0,0,0,0,418]]] : List Polynomial)[i.val]!
def upperMiddleMapTerms : Fin 5 → List Term := fun i => ([[⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩,⟨3,[[]]⟩,⟨4,[[]]⟩,⟨5,[[]]⟩],[],[],[],[]] : List (List Term))[i.val]!
theorem upperMiddleMapValid : MatrixValid images upperMiddleMapRelations upperMiddleMapSource upperMiddleMapTarget upperMiddleMap := by lin_cert using upperMiddleMapTerms
def upperOutMapRelations : List Polynomial := [[[23,23],[17,34],[13,13,13]],[[17,34],[0,0,0,80]],[[0,83],[0,82]],[[0,82],[0,0,0,0,0,0,0,18,18]],[[0,0,0,0,0,0,0,0,18,18]]]
def upperOutMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[23,83],14⟩,⟨[8,9,188],1⟩,⟨[0,0,0,437],1⟩,⟨[8,8,212],0⟩,⟨[0,0,0,0,0,0,440],0⟩] : List ModuleMonomial)[i.val]!
def upperOutMapTarget : Fin 3 → Polynomial := fun i => ([[[13,13,13,83]],[[0,8,9,188]],[[0,0,0,0,437]]] : List Polynomial)[i.val]!
def upperOutMapTerms : Fin 5 → List Term := fun i => ([[⟨0,[[83]]⟩,⟨1,[[83]]⟩,⟨2,[[0,0,80]]⟩,⟨3,[[0,0,80]]⟩,⟨4,[[0,80]]⟩],[],[],[],[]] : List (List Term))[i.val]!
theorem upperOutMapValid : MatrixValid images upperOutMapRelations upperOutMapSource upperOutMapTarget upperOutMap := by lin_cert using upperOutMapTerms
def upperInMapRelations : List Polynomial := []
def upperInMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[],302⟩,⟨[448],1⟩,⟨[0,440],1⟩,⟨[0,439],1⟩,⟨[0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69],0⟩] : List ModuleMonomial)[i.val]!
def upperInMapTarget : Fin 5 → Polynomial := fun i => ([[[9,261]],[[1,438]],[[0,448]],[[0,0,440]],[[0,0,439]]] : List Polynomial)[i.val]!
def upperInMapTerms : Fin 5 → List Term := fun i => ([[],[],[],[],[]] : List (List Term))[i.val]!
theorem upperInMapValid : MatrixValid images upperInMapRelations upperInMapSource upperInMapTarget upperInMap := by lin_cert using upperInMapTerms
theorem middleMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ middleMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (middleMapTarget i)) (eval middleMap x) =
      f (interpretModule (fun j => evaluateMonomial v (middleMapSource j).coefficient • generators (middleMapSource j).generator) x) :=
  matrixValid_linear f v generators images middleMapRelations middleMapSource middleMapTarget middleMap middleMapValid compatible vanish x
theorem outMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ outMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (outMapTarget i)) (eval outMap x) =
      f (interpretModule (fun j => evaluateMonomial v (outMapSource j).coefficient • generators (outMapSource j).generator) x) :=
  matrixValid_linear f v generators images outMapRelations outMapSource outMapTarget outMap outMapValid compatible vanish x
theorem inMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ inMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (inMapTarget i)) (eval inMap x) =
      f (interpretModule (fun j => evaluateMonomial v (inMapSource j).coefficient • generators (inMapSource j).generator) x) :=
  matrixValid_linear f v generators images inMapRelations inMapSource inMapTarget inMap inMapValid compatible vanish x
theorem upperMiddleMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ upperMiddleMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (upperMiddleMapTarget i)) (eval upperMiddleMap x) =
      f (interpretModule (fun j => evaluateMonomial v (upperMiddleMapSource j).coefficient • generators (upperMiddleMapSource j).generator) x) :=
  matrixValid_linear f v generators images upperMiddleMapRelations upperMiddleMapSource upperMiddleMapTarget upperMiddleMap upperMiddleMapValid compatible vanish x
theorem upperOutMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ upperOutMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (upperOutMapTarget i)) (eval upperOutMap x) =
      f (interpretModule (fun j => evaluateMonomial v (upperOutMapSource j).coefficient • generators (upperOutMapSource j).generator) x) :=
  matrixValid_linear f v generators images upperOutMapRelations upperOutMapSource upperOutMapTarget upperOutMap upperOutMapValid compatible vanish x
theorem upperInMapLinear {R M : Type*} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (vanish : ∀ r ∈ upperInMapRelations, evaluate v r = 0) (x : Vec _) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate v (upperInMapTarget i)) (eval upperInMap x) =
      f (interpretModule (fun j => evaluateMonomial v (upperInMapSource j).coefficient • generators (upperInMapSource j).generator) x) :=
  matrixValid_linear f v generators images upperInMapRelations upperInMapSource upperInMapTarget upperInMap upperInMapValid compatible vanish x
end Fact715TrajectoryCertificates.MapSemantics
