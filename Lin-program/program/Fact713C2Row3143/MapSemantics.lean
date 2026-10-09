import Fact713C2Row3143.MapComparison
import ModuleMapCertificates.MatrixSemantics
namespace Fact713C2Row3143.MapSemantics
open LinearCertificates NamedElementCertificates ModuleMapCertificates MapActual MapComparison
local instance : Inhabited ModuleMonomial := ⟨⟨[],0⟩⟩
def middleMapRelations : List Polynomial := [[[1,437],[0,0,438],[0,0,0,0,418]]]
def middleMapSource : Fin 3 → ModuleMonomial := fun i => ([⟨[8],249⟩,⟨[437],1⟩,⟨[472],0⟩] : List ModuleMonomial)[i.val]!
def middleMapTarget : Fin 4 → Polynomial := fun i => ([[[8,280]],[[3,359]],[[0,0,438]],[[0,0,0,0,418]]] : List Polynomial)[i.val]!
def middleMapTerms : Fin 3 → List Term := fun i => ([[],[⟨0,[[]]⟩],[]] : List (List Term))[i.val]!
theorem middleMapValid : MatrixValid images middleMapRelations middleMapSource middleMapTarget middleMap := by lin_cert using middleMapTerms
def outMapRelations : List Polynomial := []
def outMapSource : Fin 1 → ModuleMonomial := fun i => ([⟨[9,13,13,95],0⟩] : List ModuleMonomial)[i.val]!
def outMapTarget : Fin 2 → Polynomial := fun i => ([[[8,9,188]],[[0,0,0,437]]] : List Polynomial)[i.val]!
def outMapTerms : Fin 1 → List Term := fun i => ([[]] : List (List Term))[i.val]!
theorem outMapValid : MatrixValid images outMapRelations outMapSource outMapTarget outMap := by lin_cert using outMapTerms
def inMapRelations : List Polynomial := [[[76,90],[7,286],[7,285]],[[7,285],[0,439]],[[7,286],[7,285],[3,3,287]]]
def inMapSource : Fin 4 → ModuleMonomial := fun i => ([⟨[90],61⟩,⟨[456],0⟩,⟨[67,107],0⟩,⟨[1,439],0⟩] : List ModuleMonomial)[i.val]!
def inMapTarget : Fin 4 → Polynomial := fun i => ([[[448]],[[3,3,287]],[[0,440]],[[0,439]]] : List Polynomial)[i.val]!
def inMapTerms : Fin 4 → List Term := fun i => ([[⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩,⟨1,[[]]⟩],[],[],[]] : List (List Term))[i.val]!
theorem inMapValid : MatrixValid images inMapRelations inMapSource inMapTarget inMap := by lin_cert using inMapTerms
def upperMiddleMapRelations : List Polynomial := [[[3,292],[0,358]],[[3,358],[0,0,437]]]
def upperMiddleMapSource : Fin 3 → ModuleMonomial := fun i => ([⟨[13,83],27⟩,⟨[292],6⟩,⟨[492],0⟩] : List ModuleMonomial)[i.val]!
def upperMiddleMapTarget : Fin 3 → Polynomial := fun i => ([[[13,13,13,83]],[[0,8,9,188]],[[0,0,0,0,437]]] : List Polynomial)[i.val]!
def upperMiddleMapTerms : Fin 3 → List Term := fun i => ([[],[⟨0,[[0,3]]⟩,⟨1,[[0,0]]⟩],[]] : List (List Term))[i.val]!
theorem upperMiddleMapValid : MatrixValid images upperMiddleMapRelations upperMiddleMapSource upperMiddleMapTarget upperMiddleMap := by lin_cert using upperMiddleMapTerms
def upperOutMapRelations : List Polynomial := [[[1,1,447],[0,0,8,8,201]],[[0,0,8,8,201],[0,0,0,0,0,0,422]]]
def upperOutMapSource : Fin 3 → ModuleMonomial := fun i => ([⟨[1,447],1⟩,⟨[499],0⟩,⟨[9,13,13,101],0⟩] : List ModuleMonomial)[i.val]!
def upperOutMapTarget : Fin 2 → Polynomial := fun i => ([[[8,291]],[[0,0,0,0,0,0,422]]] : List Polynomial)[i.val]!
def upperOutMapTerms : Fin 3 → List Term := fun i => ([[⟨0,[[]]⟩,⟨1,[[]]⟩],[],[]] : List (List Term))[i.val]!
theorem upperOutMapValid : MatrixValid images upperOutMapRelations upperOutMapSource upperOutMapTarget upperOutMap := by lin_cert using upperOutMapTerms
def upperInMapRelations : List Polynomial := []
def upperInMapSource : Fin 0 → ModuleMonomial := fun i => ([] : List ModuleMonomial)[i.val]!
def upperInMapTarget : Fin 3 → Polynomial := fun i => ([[[9,267]],[[0,3,359]],[[0,0,0,0,0,418]]] : List Polynomial)[i.val]!
def upperInMapTerms : Fin 0 → List Term := fun i => ([] : List (List Term))[i.val]!
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
end Fact713C2Row3143.MapSemantics
