import Fact764TrajectoryAudit.MapComparison
import ModuleMapCertificates.MatrixSemantics
namespace Fact764TrajectoryAudit.MapSemantics
open LinearCertificates NamedElementCertificates ModuleMapCertificates MapActual MapComparison
local instance : Inhabited ModuleMonomial := ⟨⟨[],0⟩⟩
def middleMapRelations : List Polynomial := [[[24,133],[23,134]],[[23,134],[13,164]],[[1,1,1],[0,0,2]],[[2,448],[0,69,112]]]
def middleMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[13,133],16⟩,⟨[493],1⟩,⟨[1,1,448],1⟩,⟨[519],0⟩,⟨[8,9,209],0⟩] : List ModuleMonomial)[i.val]!
def middleMapTarget : Fin 5 → Polynomial := fun i => ([[[13,13,164]],[[1,493]],[[0,0,0,481]],[[0,0,0,69,112]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def middleMapTerms : Fin 5 → List Term := fun i => ([[⟨0,[[13]]⟩,⟨1,[[13]]⟩],[],[⟨2,[[448]]⟩,⟨3,[[0,0]]⟩],[],[]] : List (List Term))[i.val]!
theorem middleMapValid : MatrixValid images middleMapRelations middleMapSource middleMapTarget middleMap := by lin_cert using middleMapTerms
def outMapRelations : List Polynomial := []
def outMapSource : Fin 2 → ModuleMonomial := fun i => ([⟨[],436⟩,⟨[8,9,212],0⟩] : List ModuleMonomial)[i.val]!
def outMapTarget : Fin 2 → Polynomial := fun i => ([[[8,318]],[[0,0,500]]] : List Polynomial)[i.val]!
def outMapTerms : Fin 2 → List Term := fun i => ([[],[]] : List (List Term))[i.val]!
theorem outMapValid : MatrixValid images outMapRelations outMapSource outMapTarget outMap := by lin_cert using outMapTerms
def inMapRelations : List Polynomial := [[[1,481],[0,495]],[[1,112],[0,0,113]],[[1,1,457],[0,0,0,475]]]
def inMapSource : Fin 5 → ModuleMonomial := fun i => ([⟨[481],1⟩,⟨[69,112],1⟩,⟨[1,457],1⟩,⟨[7,328],0⟩,⟨[1,495],0⟩] : List ModuleMonomial)[i.val]!
def inMapTarget : Fin 4 → Polynomial := fun i => ([[[0,495]],[[0,0,482]],[[0,0,69,113]],[[0,0,0,475]]] : List Polynomial)[i.val]!
def inMapTerms : Fin 5 → List Term := fun i => ([[⟨0,[[]]⟩],[⟨1,[[69]]⟩],[⟨2,[[]]⟩],[],[]] : List (List Term))[i.val]!
theorem inMapValid : MatrixValid images inMapRelations inMapSource inMapTarget inMap := by lin_cert using inMapTerms
def upperMiddleMapRelations : List Polynomial := []
def upperMiddleMapSource : Fin 3 → ModuleMonomial := fun i => ([⟨[510],1⟩,⟨[537],0⟩,⟨[13,13,13,105],0⟩] : List ModuleMonomial)[i.val]!
def upperMiddleMapTarget : Fin 3 → Polynomial := fun i => ([[[530]],[[1,510]],[[0,0,0,500]]] : List Polynomial)[i.val]!
def upperMiddleMapTerms : Fin 3 → List Term := fun i => ([[],[],[]] : List (List Term))[i.val]!
theorem upperMiddleMapValid : MatrixValid images upperMiddleMapRelations upperMiddleMapSource upperMiddleMapTarget upperMiddleMap := by lin_cert using upperMiddleMapTerms
def upperOutMapRelations : List Polynomial := [[[1,517],[0,17,255]],[[0,17,255],[0,0,0,0,0,0,0,0,0,449]],[[1,316],[0,2,292]],[[2,8],[0,9]]]
def upperOutMapSource : Fin 3 → ModuleMonomial := fun i => ([⟨[517],1⟩,⟨[8,316],1⟩,⟨[549],0⟩] : List ModuleMonomial)[i.val]!
def upperOutMapTarget : Fin 2 → Polynomial := fun i => ([[[0,0,9,292]],[[0,0,0,0,0,0,0,0,0,449]]] : List Polynomial)[i.val]!
def upperOutMapTerms : Fin 3 → List Term := fun i => ([[⟨0,[[]]⟩,⟨1,[[]]⟩],[⟨2,[[8]]⟩,⟨3,[[0,292]]⟩],[]] : List (List Term))[i.val]!
theorem upperOutMapValid : MatrixValid images upperOutMapRelations upperOutMapSource upperOutMapTarget upperOutMap := by lin_cert using upperOutMapTerms
def upperInMapRelations : List Polynomial := []
def upperInMapSource : Fin 4 → ModuleMonomial := fun i => ([⟨[9],261⟩,⟨[501],1⟩,⟨[500],1⟩,⟨[9,13,188],0⟩] : List ModuleMonomial)[i.val]!
def upperInMapTarget : Fin 5 → Polynomial := fun i => ([[[9,293]],[[1,501]],[[1,500]],[[0,0,0,0,481]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def upperInMapTerms : Fin 4 → List Term := fun i => ([[],[],[],[]] : List (List Term))[i.val]!
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
end Fact764TrajectoryAudit.MapSemantics
