import NamedElementCertificates.Basic
open NamedElementCertificates
def namedCase0 : Bundle := named_bundle% "NamedElementCertificates/fact-7.6-1.json"
theorem namedCase0_sound : EqualModuloRelations namedCase0.relations namedCase0.input namedCase0.output := by
  lin_cert using namedCase0.terms
def namedCase1 : Bundle := named_bundle% "NamedElementCertificates/fact-7.6-2.json"
theorem namedCase1_sound : EqualModuloRelations namedCase1.relations namedCase1.input namedCase1.output := by
  lin_cert using namedCase1.terms
def namedCase2 : Bundle := named_bundle% "NamedElementCertificates/fact-7.6-3.json"
theorem namedCase2_sound : EqualModuloRelations namedCase2.relations namedCase2.input namedCase2.output := by
  lin_cert using namedCase2.terms
def namedCase3 : Bundle := named_bundle% "NamedElementCertificates/fact-7.6-4.json"
theorem namedCase3_sound : EqualModuloRelations namedCase3.relations namedCase3.input namedCase3.output := by
  lin_cert using namedCase3.terms
def namedCase4 : Bundle := named_bundle% "NamedElementCertificates/remark-7.7.json"
theorem namedCase4_sound : EqualModuloRelations namedCase4.relations namedCase4.input namedCase4.output := by
  lin_cert using namedCase4.terms
def namedCase5 : Bundle := named_bundle% "NamedElementCertificates/fact-7.13-survivor.json"
theorem namedCase5_sound : EqualModuloRelations namedCase5.relations namedCase5.input namedCase5.output := by
  lin_cert using namedCase5.terms
def namedCase6 : Bundle := named_bundle% "NamedElementCertificates/fact-7.13-source.json"
theorem namedCase6_sound : EqualModuloRelations namedCase6.relations namedCase6.input namedCase6.output := by
  lin_cert using namedCase6.terms
def namedCase7 : Bundle := named_bundle% "NamedElementCertificates/fact-7.13-target.json"
theorem namedCase7_sound : EqualModuloRelations namedCase7.relations namedCase7.input namedCase7.output := by
  lin_cert using namedCase7.terms
def namedCase8 : Bundle := named_bundle% "NamedElementCertificates/remark-7.7-target1.json"
theorem namedCase8_sound : EqualModuloRelations namedCase8.relations namedCase8.input namedCase8.output := by
  lin_cert using namedCase8.terms
def namedCase9 : Bundle := named_bundle% "NamedElementCertificates/remark-7.7-possible.json"
theorem namedCase9_sound : EqualModuloRelations namedCase9.relations namedCase9.input namedCase9.output := by
  lin_cert using namedCase9.terms
def namedCase10 : Bundle := named_bundle% "NamedElementCertificates/fact-7.15.json"
theorem namedCase10_sound : EqualModuloRelations namedCase10.relations namedCase10.input namedCase10.output := by
  lin_cert using namedCase10.terms
def namedCase11 : Bundle := named_bundle% "NamedElementCertificates/fact-7.19.json"
theorem namedCase11_sound : EqualModuloRelations namedCase11.relations namedCase11.input namedCase11.output := by
  lin_cert using namedCase11.terms
def namedCase12 : Bundle := named_bundle% "NamedElementCertificates/fact-7.21-first.json"
theorem namedCase12_sound : EqualModuloRelations namedCase12.relations namedCase12.input namedCase12.output := by
  lin_cert using namedCase12.terms
def namedCase13 : Bundle := named_bundle% "NamedElementCertificates/fact-7.21-second.json"
theorem namedCase13_sound : EqualModuloRelations namedCase13.relations namedCase13.input namedCase13.output := by
  lin_cert using namedCase13.terms
#print axioms NamedElementCertificates.check_sound
