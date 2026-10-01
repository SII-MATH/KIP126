import KIP126.Challenge2

/-!
# Sole stage assumption

Main temporarily accepts exactly one correlated delivery.  Literature A(M)
and computation C(M) are fields of the same witness.  Witness selection and
all consumer projections live outside `Main/Axiom`.
-/
namespace KIP126.Main.Axiom

axiom challenge2 : Nonempty KIP126.Challenge2

end KIP126.Main.Axiom
