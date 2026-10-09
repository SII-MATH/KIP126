import Fact713Ctheta4Certificates.Basic
namespace Fact713Ctheta4Certificates.Data
open LinearCertificates ResolutionCertificates PageTransitionCertificates
open Fact713Ctheta4Certificates
def sourceBasis : Matrix 5 5 := matrixOf 5 5 [false,false,false,true,false,false,false,false,true,true,false,true,false,false,false,false,false,true,false,false,true,false,false,false,false]
def sourceInverse : Matrix 5 5 := matrixOf 5 5 [false,false,false,false,true,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false,true,true,false,false,false]
def sourceImages : Matrix 5 5 := matrixOf 5 5 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false]
def sourceKnown : Fin 5 → Bool := fun j => ([true,true,true,true,true] : List Bool)[j.val]!
theorem source_basis_complete : compose sourceBasis sourceInverse = identityMatrix 5 := by funext i j; exact (show ∀ i j, compose sourceBasis sourceInverse i j = identityMatrix 5 i j from by decide) i j
def sourceD2 : Matrix 5 5 := matrixOf 5 5 [false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
theorem source_reconstruction : compose sourceD2 sourceBasis = sourceImages := by funext i j; exact (show ∀ i j, compose sourceD2 sourceBasis i j = sourceImages i j from by decide) i j
theorem source_unique (A : Matrix 5 5) (h : compose A sourceBasis = sourceImages) : ∀ v, eval A v = eval sourceD2 v := complete_basis_unique source_basis_complete h source_reconstruction
def incomingBasis : Matrix 5 5 := matrixOf 5 5 [false,false,false,true,false,false,false,false,false,true,true,false,false,false,false,false,false,true,false,false,false,true,false,false,false]
def incomingInverse : Matrix 5 5 := matrixOf 5 5 [false,false,true,false,false,false,false,false,false,true,false,false,false,true,false,true,false,false,false,false,false,true,false,false,false]
def incomingImages : Matrix 6 5 := matrixOf 6 5 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false]
def incomingKnown : Fin 5 → Bool := fun j => ([true,true,true,true,true] : List Bool)[j.val]!
theorem incoming_basis_complete : compose incomingBasis incomingInverse = identityMatrix 5 := by funext i j; exact (show ∀ i j, compose incomingBasis incomingInverse i j = identityMatrix 5 i j from by decide) i j
def incomingD2 : Matrix 6 5 := matrixOf 6 5 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false]
theorem incoming_reconstruction : compose incomingD2 incomingBasis = incomingImages := by funext i j; exact (show ∀ i j, compose incomingD2 incomingBasis i j = incomingImages i j from by decide) i j
theorem incoming_unique (A : Matrix 6 5) (h : compose A incomingBasis = incomingImages) : ∀ v, eval A v = eval incomingD2 v := complete_basis_unique incoming_basis_complete h incoming_reconstruction
def targetBasis : Matrix 6 6 := matrixOf 6 6 [false,false,false,false,false,true,false,false,true,false,false,false,false,false,false,false,true,false,true,false,false,false,false,false,false,false,false,true,false,false,false,true,false,false,false,false]
def targetInverse : Matrix 6 6 := matrixOf 6 6 [false,false,false,true,false,false,false,false,false,false,false,true,false,true,false,false,false,false,false,false,false,false,true,false,false,false,true,false,false,false,true,false,false,false,false,false]
def targetImages : Matrix 5 6 := matrixOf 5 6 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
def targetKnown : Fin 6 → Bool := fun j => ([true,false,true,true,true,true] : List Bool)[j.val]!
theorem target_basis_complete : compose targetBasis targetInverse = identityMatrix 6 := by funext i j; exact (show ∀ i j, compose targetBasis targetInverse i j = identityMatrix 6 i j from by decide) i j
end Fact713Ctheta4Certificates.Data
