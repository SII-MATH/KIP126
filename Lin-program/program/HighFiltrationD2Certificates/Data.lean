import HighFiltrationD2Certificates.Basic
namespace HighFiltrationD2Certificates.Data
open LinearCertificates PageTransitionCertificates
def d43_171 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d43_171.json"
theorem d43_171_valid : d43_171.Valid := by lin_cert using ()
theorem d43_171_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d43_171.basisMatrix i j) = (fun i => d43_171.imageMatrix i j)) :
    ∀ x, d x = eval d43_171.outputMatrix x := additive_reconstruction d43_171 d43_171_valid d hz ha values
def d43_171_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d43_171_prefix_zero : PrefixImagesZero d43_171 d43_171_kinds := by decide
theorem d43_171_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d43_171 d43_171_kinds d) :
    ∀ x, d x = eval d43_171.outputMatrix x :=
  staircase_reconstruction d43_171 d43_171_valid d43_171_kinds d43_171_prefix_zero d hz ha meaning
theorem d43_171_raw_column0 : ∀ i : Fin 1, d43_171.outputMatrix i ⟨0,by decide⟩ =
    ([false] : List Bool)[i.val]?.getD false := by decide
def d45_172 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d45_172.json"
theorem d45_172_valid : d45_172.Valid := by lin_cert using ()
theorem d45_172_reconstruct (d : Vec 1 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d45_172.basisMatrix i j) = (fun i => d45_172.imageMatrix i j)) :
    ∀ x, d x = eval d45_172.outputMatrix x := additive_reconstruction d45_172 d45_172_valid d hz ha values
def d45_172_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d45_172_prefix_zero : PrefixImagesZero d45_172 d45_172_kinds := by decide
theorem d45_172_staircase_reconstruct (d : Vec 1 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d45_172 d45_172_kinds d) :
    ∀ x, d x = eval d45_172.outputMatrix x :=
  staircase_reconstruction d45_172 d45_172_valid d45_172_kinds d45_172_prefix_zero d hz ha meaning
theorem d45_172_raw_column0 : ∀ i : Fin 2, d45_172.outputMatrix i ⟨0,by decide⟩ =
    ([false,false] : List Bool)[i.val]?.getD false := by decide
def d46_173 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d46_173.json"
theorem d46_173_valid : d46_173.Valid := by lin_cert using ()
theorem d46_173_reconstruct (d : Vec 1 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d46_173.basisMatrix i j) = (fun i => d46_173.imageMatrix i j)) :
    ∀ x, d x = eval d46_173.outputMatrix x := additive_reconstruction d46_173 d46_173_valid d hz ha values
def d46_173_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d46_173_prefix_zero : PrefixImagesZero d46_173 d46_173_kinds := by decide
theorem d46_173_staircase_reconstruct (d : Vec 1 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d46_173 d46_173_kinds d) :
    ∀ x, d x = eval d46_173.outputMatrix x :=
  staircase_reconstruction d46_173 d46_173_valid d46_173_kinds d46_173_prefix_zero d hz ha meaning
theorem d46_173_raw_column0 : ∀ i : Fin 2, d46_173.outputMatrix i ⟨0,by decide⟩ =
    ([false,false] : List Bool)[i.val]?.getD false := by decide
def d47_174 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d47_174.json"
theorem d47_174_valid : d47_174.Valid := by lin_cert using ()
theorem d47_174_reconstruct (d : Vec 2 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d47_174.basisMatrix i j) = (fun i => d47_174.imageMatrix i j)) :
    ∀ x, d x = eval d47_174.outputMatrix x := additive_reconstruction d47_174 d47_174_valid d hz ha values
def d47_174_kinds : Fin 2 → ColumnKind := fun j =>
    ([.laterPrefix,.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d47_174_prefix_zero : PrefixImagesZero d47_174 d47_174_kinds := by decide
theorem d47_174_staircase_reconstruct (d : Vec 2 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d47_174 d47_174_kinds d) :
    ∀ x, d x = eval d47_174.outputMatrix x :=
  staircase_reconstruction d47_174 d47_174_valid d47_174_kinds d47_174_prefix_zero d hz ha meaning
theorem d47_174_raw_column0 : ∀ i : Fin 1, d47_174.outputMatrix i ⟨0,by decide⟩ =
    ([false] : List Bool)[i.val]?.getD false := by decide
theorem d47_174_raw_column1 : ∀ i : Fin 1, d47_174.outputMatrix i ⟨1,by decide⟩ =
    ([false] : List Bool)[i.val]?.getD false := by decide
def d48_174 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d48_174.json"
theorem d48_174_valid : d48_174.Valid := by lin_cert using ()
theorem d48_174_reconstruct (d : Vec 2 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d48_174.basisMatrix i j) = (fun i => d48_174.imageMatrix i j)) :
    ∀ x, d x = eval d48_174.outputMatrix x := additive_reconstruction d48_174 d48_174_valid d hz ha values
def d48_174_kinds : Fin 2 → ColumnKind := fun j =>
    ([.incomingBoundary,.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d48_174_prefix_zero : PrefixImagesZero d48_174 d48_174_kinds := by decide
theorem d48_174_staircase_reconstruct (d : Vec 2 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d48_174 d48_174_kinds d) :
    ∀ x, d x = eval d48_174.outputMatrix x :=
  staircase_reconstruction d48_174 d48_174_valid d48_174_kinds d48_174_prefix_zero d hz ha meaning
theorem d48_174_raw_column0 : ∀ i : Fin 0, d48_174.outputMatrix i ⟨0,by decide⟩ =
    ([] : List Bool)[i.val]?.getD false := by decide
theorem d48_174_raw_column1 : ∀ i : Fin 0, d48_174.outputMatrix i ⟨1,by decide⟩ =
    ([] : List Bool)[i.val]?.getD false := by decide
def d49_175 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d49_175.json"
theorem d49_175_valid : d49_175.Valid := by lin_cert using ()
theorem d49_175_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d49_175.basisMatrix i j) = (fun i => d49_175.imageMatrix i j)) :
    ∀ x, d x = eval d49_175.outputMatrix x := additive_reconstruction d49_175 d49_175_valid d hz ha values
def d49_175_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d49_175_prefix_zero : PrefixImagesZero d49_175 d49_175_kinds := by decide
theorem d49_175_staircase_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d49_175 d49_175_kinds d) :
    ∀ x, d x = eval d49_175.outputMatrix x :=
  staircase_reconstruction d49_175 d49_175_valid d49_175_kinds d49_175_prefix_zero d hz ha meaning
theorem d49_175_raw_column0 : ∀ i : Fin 0, d49_175.outputMatrix i ⟨0,by decide⟩ =
    ([] : List Bool)[i.val]?.getD false := by decide
def d49_177 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d49_177.json"
theorem d49_177_valid : d49_177.Valid := by lin_cert using ()
theorem d49_177_reconstruct (d : Vec 2 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d49_177.basisMatrix i j) = (fun i => d49_177.imageMatrix i j)) :
    ∀ x, d x = eval d49_177.outputMatrix x := additive_reconstruction d49_177 d49_177_valid d hz ha values
def d49_177_kinds : Fin 2 → ColumnKind := fun j =>
    ([.incomingBoundary,.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d49_177_prefix_zero : PrefixImagesZero d49_177 d49_177_kinds := by decide
theorem d49_177_staircase_reconstruct (d : Vec 2 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d49_177 d49_177_kinds d) :
    ∀ x, d x = eval d49_177.outputMatrix x :=
  staircase_reconstruction d49_177 d49_177_valid d49_177_kinds d49_177_prefix_zero d hz ha meaning
def d50_176 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d50_176.json"
theorem d50_176_valid : d50_176.Valid := by lin_cert using ()
theorem d50_176_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d50_176.basisMatrix i j) = (fun i => d50_176.imageMatrix i j)) :
    ∀ x, d x = eval d50_176.outputMatrix x := additive_reconstruction d50_176 d50_176_valid d hz ha values
def d50_176_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d50_176_prefix_zero : PrefixImagesZero d50_176 d50_176_kinds := by decide
theorem d50_176_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d50_176 d50_176_kinds d) :
    ∀ x, d x = eval d50_176.outputMatrix x :=
  staircase_reconstruction d50_176 d50_176_valid d50_176_kinds d50_176_prefix_zero d hz ha meaning
theorem d50_176_raw_column0 : ∀ i : Fin 1, d50_176.outputMatrix i ⟨0,by decide⟩ =
    ([false] : List Bool)[i.val]?.getD false := by decide
def d51_176 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d51_176.json"
theorem d51_176_valid : d51_176.Valid := by lin_cert using ()
theorem d51_176_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d51_176.basisMatrix i j) = (fun i => d51_176.imageMatrix i j)) :
    ∀ x, d x = eval d51_176.outputMatrix x := additive_reconstruction d51_176 d51_176_valid d hz ha values
def d51_176_kinds : Fin 0 → ColumnKind := fun j =>
    ([] : List ColumnKind)[j.val]?.getD .storedD2
theorem d51_176_prefix_zero : PrefixImagesZero d51_176 d51_176_kinds := by decide
theorem d51_176_staircase_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d51_176 d51_176_kinds d) :
    ∀ x, d x = eval d51_176.outputMatrix x :=
  staircase_reconstruction d51_176 d51_176_valid d51_176_kinds d51_176_prefix_zero d hz ha meaning
def d51_177 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d51_177.json"
theorem d51_177_valid : d51_177.Valid := by lin_cert using ()
theorem d51_177_reconstruct (d : Vec 2 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d51_177.basisMatrix i j) = (fun i => d51_177.imageMatrix i j)) :
    ∀ x, d x = eval d51_177.outputMatrix x := additive_reconstruction d51_177 d51_177_valid d hz ha values
def d51_177_kinds : Fin 2 → ColumnKind := fun j =>
    ([.incomingBoundary,.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d51_177_prefix_zero : PrefixImagesZero d51_177 d51_177_kinds := by decide
theorem d51_177_staircase_reconstruct (d : Vec 2 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d51_177 d51_177_kinds d) :
    ∀ x, d x = eval d51_177.outputMatrix x :=
  staircase_reconstruction d51_177 d51_177_valid d51_177_kinds d51_177_prefix_zero d hz ha meaning
def d51_178 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d51_178.json"
theorem d51_178_valid : d51_178.Valid := by lin_cert using ()
theorem d51_178_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d51_178.basisMatrix i j) = (fun i => d51_178.imageMatrix i j)) :
    ∀ x, d x = eval d51_178.outputMatrix x := additive_reconstruction d51_178 d51_178_valid d hz ha values
def d51_178_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d51_178_prefix_zero : PrefixImagesZero d51_178 d51_178_kinds := by decide
theorem d51_178_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d51_178 d51_178_kinds d) :
    ∀ x, d x = eval d51_178.outputMatrix x :=
  staircase_reconstruction d51_178 d51_178_valid d51_178_kinds d51_178_prefix_zero d hz ha meaning
def d52_177 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d52_177.json"
theorem d52_177_valid : d52_177.Valid := by lin_cert using ()
theorem d52_177_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d52_177.basisMatrix i j) = (fun i => d52_177.imageMatrix i j)) :
    ∀ x, d x = eval d52_177.outputMatrix x := additive_reconstruction d52_177 d52_177_valid d hz ha values
def d52_177_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d52_177_prefix_zero : PrefixImagesZero d52_177 d52_177_kinds := by decide
theorem d52_177_staircase_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d52_177 d52_177_kinds d) :
    ∀ x, d x = eval d52_177.outputMatrix x :=
  staircase_reconstruction d52_177 d52_177_valid d52_177_kinds d52_177_prefix_zero d hz ha meaning
def d52_179 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d52_179.json"
theorem d52_179_valid : d52_179.Valid := by lin_cert using ()
theorem d52_179_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d52_179.basisMatrix i j) = (fun i => d52_179.imageMatrix i j)) :
    ∀ x, d x = eval d52_179.outputMatrix x := additive_reconstruction d52_179 d52_179_valid d hz ha values
def d52_179_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d52_179_prefix_zero : PrefixImagesZero d52_179 d52_179_kinds := by decide
theorem d52_179_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d52_179 d52_179_kinds d) :
    ∀ x, d x = eval d52_179.outputMatrix x :=
  staircase_reconstruction d52_179 d52_179_valid d52_179_kinds d52_179_prefix_zero d hz ha meaning
def d53_178 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d53_178.json"
theorem d53_178_valid : d53_178.Valid := by lin_cert using ()
theorem d53_178_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d53_178.basisMatrix i j) = (fun i => d53_178.imageMatrix i j)) :
    ∀ x, d x = eval d53_178.outputMatrix x := additive_reconstruction d53_178 d53_178_valid d hz ha values
def d53_178_kinds : Fin 0 → ColumnKind := fun j =>
    ([] : List ColumnKind)[j.val]?.getD .storedD2
theorem d53_178_prefix_zero : PrefixImagesZero d53_178 d53_178_kinds := by decide
theorem d53_178_staircase_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d53_178 d53_178_kinds d) :
    ∀ x, d x = eval d53_178.outputMatrix x :=
  staircase_reconstruction d53_178 d53_178_valid d53_178_kinds d53_178_prefix_zero d hz ha meaning
def d53_179 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d53_179.json"
theorem d53_179_valid : d53_179.Valid := by lin_cert using ()
theorem d53_179_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d53_179.basisMatrix i j) = (fun i => d53_179.imageMatrix i j)) :
    ∀ x, d x = eval d53_179.outputMatrix x := additive_reconstruction d53_179 d53_179_valid d hz ha values
def d53_179_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d53_179_prefix_zero : PrefixImagesZero d53_179 d53_179_kinds := by decide
theorem d53_179_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d53_179 d53_179_kinds d) :
    ∀ x, d x = eval d53_179.outputMatrix x :=
  staircase_reconstruction d53_179 d53_179_valid d53_179_kinds d53_179_prefix_zero d hz ha meaning
def d54_179 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d54_179.json"
theorem d54_179_valid : d54_179.Valid := by lin_cert using ()
theorem d54_179_reconstruct (d : Vec 0 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d54_179.basisMatrix i j) = (fun i => d54_179.imageMatrix i j)) :
    ∀ x, d x = eval d54_179.outputMatrix x := additive_reconstruction d54_179 d54_179_valid d hz ha values
def d54_179_kinds : Fin 0 → ColumnKind := fun j =>
    ([] : List ColumnKind)[j.val]?.getD .storedD2
theorem d54_179_prefix_zero : PrefixImagesZero d54_179 d54_179_kinds := by decide
theorem d54_179_staircase_reconstruct (d : Vec 0 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d54_179 d54_179_kinds d) :
    ∀ x, d x = eval d54_179.outputMatrix x :=
  staircase_reconstruction d54_179 d54_179_valid d54_179_kinds d54_179_prefix_zero d hz ha meaning
def d54_180 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d54_180.json"
theorem d54_180_valid : d54_180.Valid := by lin_cert using ()
theorem d54_180_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d54_180.basisMatrix i j) = (fun i => d54_180.imageMatrix i j)) :
    ∀ x, d x = eval d54_180.outputMatrix x := additive_reconstruction d54_180 d54_180_valid d hz ha values
def d54_180_kinds : Fin 1 → ColumnKind := fun j =>
    ([.laterPrefix] : List ColumnKind)[j.val]?.getD .storedD2
theorem d54_180_prefix_zero : PrefixImagesZero d54_180 d54_180_kinds := by decide
theorem d54_180_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d54_180 d54_180_kinds d) :
    ∀ x, d x = eval d54_180.outputMatrix x :=
  staircase_reconstruction d54_180 d54_180_valid d54_180_kinds d54_180_prefix_zero d hz ha meaning
def d55_179 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d55_179.json"
theorem d55_179_valid : d55_179.Valid := by lin_cert using ()
theorem d55_179_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d55_179.basisMatrix i j) = (fun i => d55_179.imageMatrix i j)) :
    ∀ x, d x = eval d55_179.outputMatrix x := additive_reconstruction d55_179 d55_179_valid d hz ha values
def d55_179_kinds : Fin 0 → ColumnKind := fun j =>
    ([] : List ColumnKind)[j.val]?.getD .storedD2
theorem d55_179_prefix_zero : PrefixImagesZero d55_179 d55_179_kinds := by decide
theorem d55_179_staircase_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d55_179 d55_179_kinds d) :
    ∀ x, d x = eval d55_179.outputMatrix x :=
  staircase_reconstruction d55_179 d55_179_valid d55_179_kinds d55_179_prefix_zero d hz ha meaning
def d55_180 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d55_180.json"
theorem d55_180_valid : d55_180.Valid := by lin_cert using ()
theorem d55_180_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d55_180.basisMatrix i j) = (fun i => d55_180.imageMatrix i j)) :
    ∀ x, d x = eval d55_180.outputMatrix x := additive_reconstruction d55_180 d55_180_valid d hz ha values
def d55_180_kinds : Fin 1 → ColumnKind := fun j =>
    ([.storedD2] : List ColumnKind)[j.val]?.getD .storedD2
theorem d55_180_prefix_zero : PrefixImagesZero d55_180 d55_180_kinds := by decide
theorem d55_180_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d55_180 d55_180_kinds d) :
    ∀ x, d x = eval d55_180.outputMatrix x :=
  staircase_reconstruction d55_180 d55_180_valid d55_180_kinds d55_180_prefix_zero d hz ha meaning
def d55_181 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d55_181.json"
theorem d55_181_valid : d55_181.Valid := by lin_cert using ()
theorem d55_181_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d55_181.basisMatrix i j) = (fun i => d55_181.imageMatrix i j)) :
    ∀ x, d x = eval d55_181.outputMatrix x := additive_reconstruction d55_181 d55_181_valid d hz ha values
def d55_181_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d55_181_prefix_zero : PrefixImagesZero d55_181 d55_181_kinds := by decide
theorem d55_181_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d55_181 d55_181_kinds d) :
    ∀ x, d x = eval d55_181.outputMatrix x :=
  staircase_reconstruction d55_181 d55_181_valid d55_181_kinds d55_181_prefix_zero d hz ha meaning
def d56_180 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d56_180.json"
theorem d56_180_valid : d56_180.Valid := by lin_cert using ()
theorem d56_180_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d56_180.basisMatrix i j) = (fun i => d56_180.imageMatrix i j)) :
    ∀ x, d x = eval d56_180.outputMatrix x := additive_reconstruction d56_180 d56_180_valid d hz ha values
def d56_180_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d56_180_prefix_zero : PrefixImagesZero d56_180 d56_180_kinds := by decide
theorem d56_180_staircase_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d56_180 d56_180_kinds d) :
    ∀ x, d x = eval d56_180.outputMatrix x :=
  staircase_reconstruction d56_180 d56_180_valid d56_180_kinds d56_180_prefix_zero d hz ha meaning
def d56_181 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d56_181.json"
theorem d56_181_valid : d56_181.Valid := by lin_cert using ()
theorem d56_181_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d56_181.basisMatrix i j) = (fun i => d56_181.imageMatrix i j)) :
    ∀ x, d x = eval d56_181.outputMatrix x := additive_reconstruction d56_181 d56_181_valid d hz ha values
def d56_181_kinds : Fin 1 → ColumnKind := fun j =>
    ([.storedD2] : List ColumnKind)[j.val]?.getD .storedD2
theorem d56_181_prefix_zero : PrefixImagesZero d56_181 d56_181_kinds := by decide
theorem d56_181_staircase_reconstruct (d : Vec 1 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d56_181 d56_181_kinds d) :
    ∀ x, d x = eval d56_181.outputMatrix x :=
  staircase_reconstruction d56_181 d56_181_valid d56_181_kinds d56_181_prefix_zero d hz ha meaning
def d57_181 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d57_181.json"
theorem d57_181_valid : d57_181.Valid := by lin_cert using ()
theorem d57_181_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d57_181.basisMatrix i j) = (fun i => d57_181.imageMatrix i j)) :
    ∀ x, d x = eval d57_181.outputMatrix x := additive_reconstruction d57_181 d57_181_valid d hz ha values
def d57_181_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d57_181_prefix_zero : PrefixImagesZero d57_181 d57_181_kinds := by decide
theorem d57_181_staircase_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d57_181 d57_181_kinds d) :
    ∀ x, d x = eval d57_181.outputMatrix x :=
  staircase_reconstruction d57_181 d57_181_valid d57_181_kinds d57_181_prefix_zero d hz ha meaning
def d57_182 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d57_182.json"
theorem d57_182_valid : d57_182.Valid := by lin_cert using ()
theorem d57_182_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d57_182.basisMatrix i j) = (fun i => d57_182.imageMatrix i j)) :
    ∀ x, d x = eval d57_182.outputMatrix x := additive_reconstruction d57_182 d57_182_valid d hz ha values
def d57_182_kinds : Fin 1 → ColumnKind := fun j =>
    ([.incomingBoundary] : List ColumnKind)[j.val]?.getD .storedD2
theorem d57_182_prefix_zero : PrefixImagesZero d57_182 d57_182_kinds := by decide
theorem d57_182_staircase_reconstruct (d : Vec 1 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d57_182 d57_182_kinds d) :
    ∀ x, d x = eval d57_182.outputMatrix x :=
  staircase_reconstruction d57_182 d57_182_valid d57_182_kinds d57_182_prefix_zero d hz ha meaning
def d59_182 : Wire := d2_basis% "HighFiltrationD2Audit/wire/d59_182.json"
theorem d59_182_valid : d59_182.Valid := by lin_cert using ()
theorem d59_182_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d59_182.basisMatrix i j) = (fun i => d59_182.imageMatrix i j)) :
    ∀ x, d x = eval d59_182.outputMatrix x := additive_reconstruction d59_182 d59_182_valid d hz ha values
def d59_182_kinds : Fin 0 → ColumnKind := fun j =>
    ([] : List ColumnKind)[j.val]?.getD .storedD2
theorem d59_182_prefix_zero : PrefixImagesZero d59_182 d59_182_kinds := by decide
theorem d59_182_staircase_reconstruct (d : Vec 0 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (meaning : StaircaseMeaning d59_182 d59_182_kinds d) :
    ∀ x, d x = eval d59_182.outputMatrix x :=
  staircase_reconstruction d59_182 d59_182_valid d59_182_kinds d59_182_prefix_zero d hz ha meaning
end HighFiltrationD2Certificates.Data
