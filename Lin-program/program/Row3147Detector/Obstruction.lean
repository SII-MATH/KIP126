import PageTransitionCertificates.Import
import Row3147Detector.Products_h0
import Row3147Detector.Products_h1
import Row3147Detector.Products_h3
import Row3147Detector.Products_g
namespace Row3147Detector.Obstruction
open LinearCertificates PageTransitionCertificates
def h0source : WireComparison := ⟨1,4,4,5,0,[true,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false],[],[],[false,false,false,true,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false],[true,false,false,false,false,false,false,false,true,false,false,true,false,false,false,false]⟩
theorem h0source_complete : h0source.Valid := by lin_cert using ()
theorem h0source_projection_zero : ∀ i : Fin 0, eval h0source.comparison.projection (fun j => ([false,false,false,true] : List Bool)[j.val]!) i = false := by decide
def h0kernel : WireComparison := ⟨1,3,1,2,1,[false,false,false],[false,false],[true],[true],[false,false],[false,false,false]⟩
theorem h0kernel_complete : h0kernel.Valid := by lin_cert using ()
theorem h0kernel_projection_zero : ∀ i : Fin 1, eval h0kernel.comparison.projection (fun j => ([false] : List Bool)[j.val]!) i = false := by decide
def h1source : WireComparison := ⟨1,2,2,2,0,[false,false,false,true],[true,false,false,false],[],[],[true,false,false,false],[false,false,false,true]⟩
theorem h1source_complete : h1source.Valid := by lin_cert using ()
theorem h1source_projection_zero : ∀ i : Fin 0, eval h1source.comparison.projection (fun j => ([false,false] : List Bool)[j.val]!) i = false := by decide
def h1kernel : WireComparison := ⟨1,0,2,2,1,[],[false,false,false,true],[true,false],[true,false],[false,false,false,true],[]⟩
theorem h1kernel_complete : h1kernel.Valid := by lin_cert using ()
theorem h1kernel_projection_zero : ∀ i : Fin 1, eval h1kernel.comparison.projection (fun j => ([false,false] : List Bool)[j.val]!) i = false := by decide
def h3source : WireComparison := ⟨1,2,0,2,0,[],[],[],[],[],[]⟩
theorem h3source_complete : h3source.Valid := by lin_cert using ()
theorem h3source_projection_zero : ∀ i : Fin 0, eval h3source.comparison.projection (fun j => ([] : List Bool)[j.val]!) i = false := by decide
def h3kernel : WireComparison := ⟨1,1,3,2,3,[false,false,false],[false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false],[false,false,false]⟩
theorem h3kernel_complete : h3kernel.Valid := by lin_cert using ()
theorem h3kernel_projection_zero : ∀ i : Fin 3, eval h3kernel.comparison.projection (fun j => ([false,false,false] : List Bool)[j.val]!) i = false := by decide
def gsource : WireComparison := ⟨1,3,3,2,1,[false,false,false,true,false,false,true,false,true],[false,false,false,false,false,false],[false,true,false],[false,true,false],[false,false,false,false,false,false],[false,true,false,false,false,false,false,true,true]⟩
theorem gsource_complete : gsource.Valid := by lin_cert using ()
theorem gsource_projection_zero : ∀ i : Fin 1, eval gsource.comparison.projection (fun j => ([false,false,false] : List Bool)[j.val]!) i = false := by decide
def gkernel : WireComparison := ⟨1,2,4,4,1,[false,false,false,false,false,false,false,false],[false,false,false,false,false,false,true,false,true,false,false,false,false,true,false,false],[true,false,false,false],[true,false,false,false],[false,false,true,false,false,false,false,true,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false]⟩
theorem gkernel_complete : gkernel.Valid := by lin_cert using ()
theorem gkernel_projection_zero : ∀ i : Fin 1, eval gkernel.comparison.projection (fun j => ([false,false,false,false] : List Bool)[j.val]!) i = false := by decide
end Row3147Detector.Obstruction
