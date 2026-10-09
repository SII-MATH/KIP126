import Row2907PDeltaDetection.Data
import HighFiltrationD2Certificates.Basic
namespace Row2907PDeltaDetection.D2Links
open LinearCertificates PageTransitionCertificates HighFiltrationD2Certificates Data
def d25_177 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d25_177.json"
theorem d25_177_valid : d25_177.Valid := by lin_cert using ()
theorem d25_177_reconstruct (d : Vec 3 → Vec 1) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d25_177.basisMatrix i j) = (fun i => d25_177.imageMatrix i j)) :
    ∀ x, d x = eval d25_177.outputMatrix x := additive_reconstruction d25_177 d25_177_valid d hz ha values
#print axioms d25_177_reconstruct
theorem d25_177_c25_177_2_outgoing : matrixOf c25_177_2.k c25_177_2.m c25_177_2.outgoing = d25_177.outputMatrix := by decide
def d26_178 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d26_178.json"
theorem d26_178_valid : d26_178.Valid := by lin_cert using ()
theorem d26_178_reconstruct (d : Vec 4 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d26_178.basisMatrix i j) = (fun i => d26_178.imageMatrix i j)) :
    ∀ x, d x = eval d26_178.outputMatrix x := additive_reconstruction d26_178 d26_178_valid d hz ha values
#print axioms d26_178_reconstruct
theorem d26_178_c28_179_2_incoming : matrixOf c28_179_2.m c28_179_2.n c28_179_2.incoming = d26_178.outputMatrix := by decide
def d27_179 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d27_179.json"
theorem d27_179_valid : d27_179.Valid := by lin_cert using ()
theorem d27_179_reconstruct (d : Vec 4 → Vec 3) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d27_179.basisMatrix i j) = (fun i => d27_179.imageMatrix i j)) :
    ∀ x, d x = eval d27_179.outputMatrix x := additive_reconstruction d27_179 d27_179_valid d hz ha values
#print axioms d27_179_reconstruct
theorem d27_179_c29_180_2_incoming : matrixOf c29_180_2.m c29_180_2.n c29_180_2.incoming = d27_179.outputMatrix := by decide
def d28_179 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d28_179.json"
theorem d28_179_valid : d28_179.Valid := by lin_cert using ()
theorem d28_179_reconstruct (d : Vec 2 → Vec 4) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d28_179.basisMatrix i j) = (fun i => d28_179.imageMatrix i j)) :
    ∀ x, d x = eval d28_179.outputMatrix x := additive_reconstruction d28_179 d28_179_valid d hz ha values
#print axioms d28_179_reconstruct
theorem d28_179_c28_179_2_outgoing : matrixOf c28_179_2.k c28_179_2.m c28_179_2.outgoing = d28_179.outputMatrix := by decide
def d29_180 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d29_180.json"
theorem d29_180_valid : d29_180.Valid := by lin_cert using ()
theorem d29_180_reconstruct (d : Vec 3 → Vec 0) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d29_180.basisMatrix i j) = (fun i => d29_180.imageMatrix i j)) :
    ∀ x, d x = eval d29_180.outputMatrix x := additive_reconstruction d29_180 d29_180_valid d hz ha values
#print axioms d29_180_reconstruct
theorem d29_180_c29_180_2_outgoing : matrixOf c29_180_2.k c29_180_2.m c29_180_2.outgoing = d29_180.outputMatrix := by decide
theorem d29_180_c31_181_2_incoming : matrixOf c31_181_2.m c31_181_2.n c31_181_2.incoming = d29_180.outputMatrix := by decide
def d30_181 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d30_181.json"
theorem d30_181_valid : d30_181.Valid := by lin_cert using ()
theorem d30_181_reconstruct (d : Vec 1 → Vec 3) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d30_181.basisMatrix i j) = (fun i => d30_181.imageMatrix i j)) :
    ∀ x, d x = eval d30_181.outputMatrix x := additive_reconstruction d30_181 d30_181_valid d hz ha values
#print axioms d30_181_reconstruct
theorem d30_181_c32_182_2_incoming : matrixOf c32_182_2.m c32_182_2.n c32_182_2.incoming = d30_181.outputMatrix := by decide
def d32_182 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d32_182.json"
theorem d32_182_valid : d32_182.Valid := by lin_cert using ()
theorem d32_182_reconstruct (d : Vec 3 → Vec 5) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d32_182.basisMatrix i j) = (fun i => d32_182.imageMatrix i j)) :
    ∀ x, d x = eval d32_182.outputMatrix x := additive_reconstruction d32_182 d32_182_valid d hz ha values
#print axioms d32_182_reconstruct
theorem d32_182_c32_182_2_outgoing : matrixOf c32_182_2.k c32_182_2.m c32_182_2.outgoing = d32_182.outputMatrix := by decide
def d33_183 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d33_183.json"
theorem d33_183_valid : d33_183.Valid := by lin_cert using ()
theorem d33_183_reconstruct (d : Vec 4 → Vec 2) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d33_183.basisMatrix i j) = (fun i => d33_183.imageMatrix i j)) :
    ∀ x, d x = eval d33_183.outputMatrix x := additive_reconstruction d33_183 d33_183_valid d hz ha values
#print axioms d33_183_reconstruct
theorem d33_183_c35_184_2_incoming : matrixOf c35_184_2.m c35_184_2.n c35_184_2.incoming = d33_183.outputMatrix := by decide
def d35_184 : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/d35_184.json"
theorem d35_184_valid : d35_184.Valid := by lin_cert using ()
theorem d35_184_reconstruct (d : Vec 2 → Vec 3) (hz : d zero = zero)
    (ha : ∀ x y, d (add x y) = add (d x) (d y))
    (values : ∀ j, d (fun i => d35_184.basisMatrix i j) = (fun i => d35_184.imageMatrix i j)) :
    ∀ x, d x = eval d35_184.outputMatrix x := additive_reconstruction d35_184 d35_184_valid d hz ha values
#print axioms d35_184_reconstruct
theorem d35_184_c35_184_2_outgoing : matrixOf c35_184_2.k c35_184_2.m c35_184_2.outgoing = d35_184.outputMatrix := by decide
end Row2907PDeltaDetection.D2Links
