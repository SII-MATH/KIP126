import NamedElementCertificates.Basic

open NamedElementCertificates

example : EqualModuloRelations [[[0,1]]] [[0,1,352]] [] := by
  lin_cert using ([⟨0, [[352]]⟩] : List Term)

example : check [[[0,1]]] [[0,1,352]] [] [] = false := by decide
example : check [[[0,1]]] [[0,1,352]] [] [⟨1, [[352]]⟩] = false := by decide
example : check [[[0,1]]] [[0,1,352]] [] [⟨0, [[353]]⟩] = false := by decide
example : check [] [[7],[7]] [] [] = true := by decide
