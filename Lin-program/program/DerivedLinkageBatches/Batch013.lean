import DerivedMapCertificates.Linkage
import DerivedMapBatches.Batch027
import DerivedMapBatches.Batch028
import DerivedMapBatches.Batch043
import DerivedMapBatches.Batch044
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace DerivedLinkageBatches.Batch013
theorem firstLink650 : DerivedMapBatches.Batch027.certificate2191.c = DerivedMapBatches.Batch028.certificate2256.a := by decide
theorem secondLink650 : DerivedMapBatches.Batch028.certificate2255.algebra.mat = DerivedMapBatches.Batch028.certificate2256.b := by decide
theorem firstValid650 : DerivedMapBatches.Batch027.certificate2191.Valid := DerivedMapBatches.Batch027.certificate2191valid
theorem secondValid650 : DerivedMapBatches.Batch028.certificate2255.Valid := DerivedMapBatches.Batch028.certificate2255valid
theorem outputValid650 : DerivedMapBatches.Batch028.certificate2256.Valid := DerivedMapBatches.Batch028.certificate2256valid
theorem linkedComposition650 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2256.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2256.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2255.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2191.c x) := by
  rw [firstLink650, secondLink650]
  exact DerivedMapBatches.Batch028.certificate2256valid.2 x
theorem firstLink651 : DerivedMapBatches.Batch027.certificate2194.c = DerivedMapBatches.Batch028.certificate2258.a := by decide
theorem secondLink651 : DerivedMapBatches.Batch028.certificate2257.algebra.mat = DerivedMapBatches.Batch028.certificate2258.b := by decide
theorem firstValid651 : DerivedMapBatches.Batch027.certificate2194.Valid := DerivedMapBatches.Batch027.certificate2194valid
theorem secondValid651 : DerivedMapBatches.Batch028.certificate2257.Valid := DerivedMapBatches.Batch028.certificate2257valid
theorem outputValid651 : DerivedMapBatches.Batch028.certificate2258.Valid := DerivedMapBatches.Batch028.certificate2258valid
theorem linkedComposition651 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2258.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2258.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2257.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2194.c x) := by
  rw [firstLink651, secondLink651]
  exact DerivedMapBatches.Batch028.certificate2258valid.2 x
theorem firstLink652 : DerivedMapBatches.Batch027.certificate2197.c = DerivedMapBatches.Batch028.certificate2260.a := by decide
theorem secondLink652 : DerivedMapBatches.Batch028.certificate2259.algebra.mat = DerivedMapBatches.Batch028.certificate2260.b := by decide
theorem firstValid652 : DerivedMapBatches.Batch027.certificate2197.Valid := DerivedMapBatches.Batch027.certificate2197valid
theorem secondValid652 : DerivedMapBatches.Batch028.certificate2259.Valid := DerivedMapBatches.Batch028.certificate2259valid
theorem outputValid652 : DerivedMapBatches.Batch028.certificate2260.Valid := DerivedMapBatches.Batch028.certificate2260valid
theorem linkedComposition652 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2260.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2260.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2259.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2197.c x) := by
  rw [firstLink652, secondLink652]
  exact DerivedMapBatches.Batch028.certificate2260valid.2 x
theorem firstLink653 : DerivedMapBatches.Batch027.certificate2200.c = DerivedMapBatches.Batch028.certificate2262.a := by decide
theorem secondLink653 : DerivedMapBatches.Batch028.certificate2261.algebra.mat = DerivedMapBatches.Batch028.certificate2262.b := by decide
theorem firstValid653 : DerivedMapBatches.Batch027.certificate2200.Valid := DerivedMapBatches.Batch027.certificate2200valid
theorem secondValid653 : DerivedMapBatches.Batch028.certificate2261.Valid := DerivedMapBatches.Batch028.certificate2261valid
theorem outputValid653 : DerivedMapBatches.Batch028.certificate2262.Valid := DerivedMapBatches.Batch028.certificate2262valid
theorem linkedComposition653 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2262.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2262.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2261.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2200.c x) := by
  rw [firstLink653, secondLink653]
  exact DerivedMapBatches.Batch028.certificate2262valid.2 x
theorem firstLink654 : DerivedMapBatches.Batch027.certificate2203.c = DerivedMapBatches.Batch028.certificate2264.a := by decide
theorem secondLink654 : DerivedMapBatches.Batch028.certificate2263.algebra.mat = DerivedMapBatches.Batch028.certificate2264.b := by decide
theorem firstValid654 : DerivedMapBatches.Batch027.certificate2203.Valid := DerivedMapBatches.Batch027.certificate2203valid
theorem secondValid654 : DerivedMapBatches.Batch028.certificate2263.Valid := DerivedMapBatches.Batch028.certificate2263valid
theorem outputValid654 : DerivedMapBatches.Batch028.certificate2264.Valid := DerivedMapBatches.Batch028.certificate2264valid
theorem linkedComposition654 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2264.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2264.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2263.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2203.c x) := by
  rw [firstLink654, secondLink654]
  exact DerivedMapBatches.Batch028.certificate2264valid.2 x
theorem firstLink655 : DerivedMapBatches.Batch027.certificate2206.c = DerivedMapBatches.Batch028.certificate2266.a := by decide
theorem secondLink655 : DerivedMapBatches.Batch028.certificate2265.algebra.mat = DerivedMapBatches.Batch028.certificate2266.b := by decide
theorem firstValid655 : DerivedMapBatches.Batch027.certificate2206.Valid := DerivedMapBatches.Batch027.certificate2206valid
theorem secondValid655 : DerivedMapBatches.Batch028.certificate2265.Valid := DerivedMapBatches.Batch028.certificate2265valid
theorem outputValid655 : DerivedMapBatches.Batch028.certificate2266.Valid := DerivedMapBatches.Batch028.certificate2266valid
theorem linkedComposition655 (x : LinearCertificates.Vec DerivedMapBatches.Batch028.certificate2266.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch028.certificate2266.c x = LinearCertificates.eval DerivedMapBatches.Batch028.certificate2265.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch027.certificate2206.c x) := by
  rw [firstLink655, secondLink655]
  exact DerivedMapBatches.Batch028.certificate2266valid.2 x
theorem firstLink656 : DerivedMapBatches.Batch043.certificate3441.algebra.mat = DerivedMapBatches.Batch043.certificate3443.a := by decide
theorem secondLink656 : DerivedMapBatches.Batch043.certificate3442.algebra.mat = DerivedMapBatches.Batch043.certificate3443.b := by decide
theorem firstValid656 : DerivedMapBatches.Batch043.certificate3441.Valid := DerivedMapBatches.Batch043.certificate3441valid
theorem secondValid656 : DerivedMapBatches.Batch043.certificate3442.Valid := DerivedMapBatches.Batch043.certificate3442valid
theorem outputValid656 : DerivedMapBatches.Batch043.certificate3443.Valid := DerivedMapBatches.Batch043.certificate3443valid
theorem linkedComposition656 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3443.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3443.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3442.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3441.algebra.mat x) := by
  rw [firstLink656, secondLink656]
  exact DerivedMapBatches.Batch043.certificate3443valid.2 x
theorem firstLink657 : DerivedMapBatches.Batch043.certificate3444.algebra.mat = DerivedMapBatches.Batch043.certificate3446.a := by decide
theorem secondLink657 : DerivedMapBatches.Batch043.certificate3445.algebra.mat = DerivedMapBatches.Batch043.certificate3446.b := by decide
theorem firstValid657 : DerivedMapBatches.Batch043.certificate3444.Valid := DerivedMapBatches.Batch043.certificate3444valid
theorem secondValid657 : DerivedMapBatches.Batch043.certificate3445.Valid := DerivedMapBatches.Batch043.certificate3445valid
theorem outputValid657 : DerivedMapBatches.Batch043.certificate3446.Valid := DerivedMapBatches.Batch043.certificate3446valid
theorem linkedComposition657 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3446.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3446.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3445.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3444.algebra.mat x) := by
  rw [firstLink657, secondLink657]
  exact DerivedMapBatches.Batch043.certificate3446valid.2 x
theorem firstLink658 : DerivedMapBatches.Batch043.certificate3447.algebra.mat = DerivedMapBatches.Batch043.certificate3449.a := by decide
theorem secondLink658 : DerivedMapBatches.Batch043.certificate3448.algebra.mat = DerivedMapBatches.Batch043.certificate3449.b := by decide
theorem firstValid658 : DerivedMapBatches.Batch043.certificate3447.Valid := DerivedMapBatches.Batch043.certificate3447valid
theorem secondValid658 : DerivedMapBatches.Batch043.certificate3448.Valid := DerivedMapBatches.Batch043.certificate3448valid
theorem outputValid658 : DerivedMapBatches.Batch043.certificate3449.Valid := DerivedMapBatches.Batch043.certificate3449valid
theorem linkedComposition658 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3449.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3449.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3448.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3447.algebra.mat x) := by
  rw [firstLink658, secondLink658]
  exact DerivedMapBatches.Batch043.certificate3449valid.2 x
theorem firstLink659 : DerivedMapBatches.Batch043.certificate3450.algebra.mat = DerivedMapBatches.Batch043.certificate3452.a := by decide
theorem secondLink659 : DerivedMapBatches.Batch043.certificate3451.algebra.mat = DerivedMapBatches.Batch043.certificate3452.b := by decide
theorem firstValid659 : DerivedMapBatches.Batch043.certificate3450.Valid := DerivedMapBatches.Batch043.certificate3450valid
theorem secondValid659 : DerivedMapBatches.Batch043.certificate3451.Valid := DerivedMapBatches.Batch043.certificate3451valid
theorem outputValid659 : DerivedMapBatches.Batch043.certificate3452.Valid := DerivedMapBatches.Batch043.certificate3452valid
theorem linkedComposition659 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3452.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3452.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3451.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3450.algebra.mat x) := by
  rw [firstLink659, secondLink659]
  exact DerivedMapBatches.Batch043.certificate3452valid.2 x
theorem firstLink660 : DerivedMapBatches.Batch043.certificate3453.algebra.mat = DerivedMapBatches.Batch043.certificate3455.a := by decide
theorem secondLink660 : DerivedMapBatches.Batch043.certificate3454.algebra.mat = DerivedMapBatches.Batch043.certificate3455.b := by decide
theorem firstValid660 : DerivedMapBatches.Batch043.certificate3453.Valid := DerivedMapBatches.Batch043.certificate3453valid
theorem secondValid660 : DerivedMapBatches.Batch043.certificate3454.Valid := DerivedMapBatches.Batch043.certificate3454valid
theorem outputValid660 : DerivedMapBatches.Batch043.certificate3455.Valid := DerivedMapBatches.Batch043.certificate3455valid
theorem linkedComposition660 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3455.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3455.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3454.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3453.algebra.mat x) := by
  rw [firstLink660, secondLink660]
  exact DerivedMapBatches.Batch043.certificate3455valid.2 x
theorem firstLink661 : DerivedMapBatches.Batch043.certificate3456.algebra.mat = DerivedMapBatches.Batch043.certificate3458.a := by decide
theorem secondLink661 : DerivedMapBatches.Batch043.certificate3457.algebra.mat = DerivedMapBatches.Batch043.certificate3458.b := by decide
theorem firstValid661 : DerivedMapBatches.Batch043.certificate3456.Valid := DerivedMapBatches.Batch043.certificate3456valid
theorem secondValid661 : DerivedMapBatches.Batch043.certificate3457.Valid := DerivedMapBatches.Batch043.certificate3457valid
theorem outputValid661 : DerivedMapBatches.Batch043.certificate3458.Valid := DerivedMapBatches.Batch043.certificate3458valid
theorem linkedComposition661 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3458.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3458.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3457.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3456.algebra.mat x) := by
  rw [firstLink661, secondLink661]
  exact DerivedMapBatches.Batch043.certificate3458valid.2 x
theorem firstLink662 : DerivedMapBatches.Batch043.certificate3459.algebra.mat = DerivedMapBatches.Batch043.certificate3461.a := by decide
theorem secondLink662 : DerivedMapBatches.Batch043.certificate3460.algebra.mat = DerivedMapBatches.Batch043.certificate3461.b := by decide
theorem firstValid662 : DerivedMapBatches.Batch043.certificate3459.Valid := DerivedMapBatches.Batch043.certificate3459valid
theorem secondValid662 : DerivedMapBatches.Batch043.certificate3460.Valid := DerivedMapBatches.Batch043.certificate3460valid
theorem outputValid662 : DerivedMapBatches.Batch043.certificate3461.Valid := DerivedMapBatches.Batch043.certificate3461valid
theorem linkedComposition662 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3461.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3461.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3460.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3459.algebra.mat x) := by
  rw [firstLink662, secondLink662]
  exact DerivedMapBatches.Batch043.certificate3461valid.2 x
theorem firstLink663 : DerivedMapBatches.Batch043.certificate3462.algebra.mat = DerivedMapBatches.Batch043.certificate3464.a := by decide
theorem secondLink663 : DerivedMapBatches.Batch043.certificate3463.algebra.mat = DerivedMapBatches.Batch043.certificate3464.b := by decide
theorem firstValid663 : DerivedMapBatches.Batch043.certificate3462.Valid := DerivedMapBatches.Batch043.certificate3462valid
theorem secondValid663 : DerivedMapBatches.Batch043.certificate3463.Valid := DerivedMapBatches.Batch043.certificate3463valid
theorem outputValid663 : DerivedMapBatches.Batch043.certificate3464.Valid := DerivedMapBatches.Batch043.certificate3464valid
theorem linkedComposition663 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3464.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3464.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3463.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3462.algebra.mat x) := by
  rw [firstLink663, secondLink663]
  exact DerivedMapBatches.Batch043.certificate3464valid.2 x
theorem firstLink664 : DerivedMapBatches.Batch043.certificate3465.algebra.mat = DerivedMapBatches.Batch043.certificate3467.a := by decide
theorem secondLink664 : DerivedMapBatches.Batch043.certificate3466.algebra.mat = DerivedMapBatches.Batch043.certificate3467.b := by decide
theorem firstValid664 : DerivedMapBatches.Batch043.certificate3465.Valid := DerivedMapBatches.Batch043.certificate3465valid
theorem secondValid664 : DerivedMapBatches.Batch043.certificate3466.Valid := DerivedMapBatches.Batch043.certificate3466valid
theorem outputValid664 : DerivedMapBatches.Batch043.certificate3467.Valid := DerivedMapBatches.Batch043.certificate3467valid
theorem linkedComposition664 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3467.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3467.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3466.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3465.algebra.mat x) := by
  rw [firstLink664, secondLink664]
  exact DerivedMapBatches.Batch043.certificate3467valid.2 x
theorem firstLink665 : DerivedMapBatches.Batch043.certificate3468.algebra.mat = DerivedMapBatches.Batch043.certificate3470.a := by decide
theorem secondLink665 : DerivedMapBatches.Batch043.certificate3469.algebra.mat = DerivedMapBatches.Batch043.certificate3470.b := by decide
theorem firstValid665 : DerivedMapBatches.Batch043.certificate3468.Valid := DerivedMapBatches.Batch043.certificate3468valid
theorem secondValid665 : DerivedMapBatches.Batch043.certificate3469.Valid := DerivedMapBatches.Batch043.certificate3469valid
theorem outputValid665 : DerivedMapBatches.Batch043.certificate3470.Valid := DerivedMapBatches.Batch043.certificate3470valid
theorem linkedComposition665 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3470.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3470.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3469.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3468.algebra.mat x) := by
  rw [firstLink665, secondLink665]
  exact DerivedMapBatches.Batch043.certificate3470valid.2 x
theorem firstLink666 : DerivedMapBatches.Batch043.certificate3471.algebra.mat = DerivedMapBatches.Batch043.certificate3473.a := by decide
theorem secondLink666 : DerivedMapBatches.Batch043.certificate3472.algebra.mat = DerivedMapBatches.Batch043.certificate3473.b := by decide
theorem firstValid666 : DerivedMapBatches.Batch043.certificate3471.Valid := DerivedMapBatches.Batch043.certificate3471valid
theorem secondValid666 : DerivedMapBatches.Batch043.certificate3472.Valid := DerivedMapBatches.Batch043.certificate3472valid
theorem outputValid666 : DerivedMapBatches.Batch043.certificate3473.Valid := DerivedMapBatches.Batch043.certificate3473valid
theorem linkedComposition666 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3473.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3473.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3472.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3471.algebra.mat x) := by
  rw [firstLink666, secondLink666]
  exact DerivedMapBatches.Batch043.certificate3473valid.2 x
theorem firstLink667 : DerivedMapBatches.Batch043.certificate3474.algebra.mat = DerivedMapBatches.Batch043.certificate3476.a := by decide
theorem secondLink667 : DerivedMapBatches.Batch043.certificate3475.algebra.mat = DerivedMapBatches.Batch043.certificate3476.b := by decide
theorem firstValid667 : DerivedMapBatches.Batch043.certificate3474.Valid := DerivedMapBatches.Batch043.certificate3474valid
theorem secondValid667 : DerivedMapBatches.Batch043.certificate3475.Valid := DerivedMapBatches.Batch043.certificate3475valid
theorem outputValid667 : DerivedMapBatches.Batch043.certificate3476.Valid := DerivedMapBatches.Batch043.certificate3476valid
theorem linkedComposition667 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3476.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3476.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3475.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3474.algebra.mat x) := by
  rw [firstLink667, secondLink667]
  exact DerivedMapBatches.Batch043.certificate3476valid.2 x
theorem firstLink668 : DerivedMapBatches.Batch043.certificate3477.algebra.mat = DerivedMapBatches.Batch043.certificate3479.a := by decide
theorem secondLink668 : DerivedMapBatches.Batch043.certificate3478.algebra.mat = DerivedMapBatches.Batch043.certificate3479.b := by decide
theorem firstValid668 : DerivedMapBatches.Batch043.certificate3477.Valid := DerivedMapBatches.Batch043.certificate3477valid
theorem secondValid668 : DerivedMapBatches.Batch043.certificate3478.Valid := DerivedMapBatches.Batch043.certificate3478valid
theorem outputValid668 : DerivedMapBatches.Batch043.certificate3479.Valid := DerivedMapBatches.Batch043.certificate3479valid
theorem linkedComposition668 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3479.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3479.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3478.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3477.algebra.mat x) := by
  rw [firstLink668, secondLink668]
  exact DerivedMapBatches.Batch043.certificate3479valid.2 x
theorem firstLink669 : DerivedMapBatches.Batch043.certificate3480.algebra.mat = DerivedMapBatches.Batch043.certificate3482.a := by decide
theorem secondLink669 : DerivedMapBatches.Batch043.certificate3481.algebra.mat = DerivedMapBatches.Batch043.certificate3482.b := by decide
theorem firstValid669 : DerivedMapBatches.Batch043.certificate3480.Valid := DerivedMapBatches.Batch043.certificate3480valid
theorem secondValid669 : DerivedMapBatches.Batch043.certificate3481.Valid := DerivedMapBatches.Batch043.certificate3481valid
theorem outputValid669 : DerivedMapBatches.Batch043.certificate3482.Valid := DerivedMapBatches.Batch043.certificate3482valid
theorem linkedComposition669 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3482.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3482.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3481.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3480.algebra.mat x) := by
  rw [firstLink669, secondLink669]
  exact DerivedMapBatches.Batch043.certificate3482valid.2 x
theorem firstLink670 : DerivedMapBatches.Batch043.certificate3483.algebra.mat = DerivedMapBatches.Batch043.certificate3485.a := by decide
theorem secondLink670 : DerivedMapBatches.Batch043.certificate3484.algebra.mat = DerivedMapBatches.Batch043.certificate3485.b := by decide
theorem firstValid670 : DerivedMapBatches.Batch043.certificate3483.Valid := DerivedMapBatches.Batch043.certificate3483valid
theorem secondValid670 : DerivedMapBatches.Batch043.certificate3484.Valid := DerivedMapBatches.Batch043.certificate3484valid
theorem outputValid670 : DerivedMapBatches.Batch043.certificate3485.Valid := DerivedMapBatches.Batch043.certificate3485valid
theorem linkedComposition670 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3485.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3485.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3484.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3483.algebra.mat x) := by
  rw [firstLink670, secondLink670]
  exact DerivedMapBatches.Batch043.certificate3485valid.2 x
theorem firstLink671 : DerivedMapBatches.Batch043.certificate3486.algebra.mat = DerivedMapBatches.Batch043.certificate3488.a := by decide
theorem secondLink671 : DerivedMapBatches.Batch043.certificate3487.algebra.mat = DerivedMapBatches.Batch043.certificate3488.b := by decide
theorem firstValid671 : DerivedMapBatches.Batch043.certificate3486.Valid := DerivedMapBatches.Batch043.certificate3486valid
theorem secondValid671 : DerivedMapBatches.Batch043.certificate3487.Valid := DerivedMapBatches.Batch043.certificate3487valid
theorem outputValid671 : DerivedMapBatches.Batch043.certificate3488.Valid := DerivedMapBatches.Batch043.certificate3488valid
theorem linkedComposition671 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3488.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3488.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3487.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3486.algebra.mat x) := by
  rw [firstLink671, secondLink671]
  exact DerivedMapBatches.Batch043.certificate3488valid.2 x
theorem firstLink672 : DerivedMapBatches.Batch043.certificate3489.algebra.mat = DerivedMapBatches.Batch043.certificate3491.a := by decide
theorem secondLink672 : DerivedMapBatches.Batch043.certificate3490.algebra.mat = DerivedMapBatches.Batch043.certificate3491.b := by decide
theorem firstValid672 : DerivedMapBatches.Batch043.certificate3489.Valid := DerivedMapBatches.Batch043.certificate3489valid
theorem secondValid672 : DerivedMapBatches.Batch043.certificate3490.Valid := DerivedMapBatches.Batch043.certificate3490valid
theorem outputValid672 : DerivedMapBatches.Batch043.certificate3491.Valid := DerivedMapBatches.Batch043.certificate3491valid
theorem linkedComposition672 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3491.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3491.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3490.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3489.algebra.mat x) := by
  rw [firstLink672, secondLink672]
  exact DerivedMapBatches.Batch043.certificate3491valid.2 x
theorem firstLink673 : DerivedMapBatches.Batch043.certificate3492.algebra.mat = DerivedMapBatches.Batch043.certificate3494.a := by decide
theorem secondLink673 : DerivedMapBatches.Batch043.certificate3493.algebra.mat = DerivedMapBatches.Batch043.certificate3494.b := by decide
theorem firstValid673 : DerivedMapBatches.Batch043.certificate3492.Valid := DerivedMapBatches.Batch043.certificate3492valid
theorem secondValid673 : DerivedMapBatches.Batch043.certificate3493.Valid := DerivedMapBatches.Batch043.certificate3493valid
theorem outputValid673 : DerivedMapBatches.Batch043.certificate3494.Valid := DerivedMapBatches.Batch043.certificate3494valid
theorem linkedComposition673 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3494.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3494.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3493.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3492.algebra.mat x) := by
  rw [firstLink673, secondLink673]
  exact DerivedMapBatches.Batch043.certificate3494valid.2 x
theorem firstLink674 : DerivedMapBatches.Batch043.certificate3495.algebra.mat = DerivedMapBatches.Batch043.certificate3497.a := by decide
theorem secondLink674 : DerivedMapBatches.Batch043.certificate3496.algebra.mat = DerivedMapBatches.Batch043.certificate3497.b := by decide
theorem firstValid674 : DerivedMapBatches.Batch043.certificate3495.Valid := DerivedMapBatches.Batch043.certificate3495valid
theorem secondValid674 : DerivedMapBatches.Batch043.certificate3496.Valid := DerivedMapBatches.Batch043.certificate3496valid
theorem outputValid674 : DerivedMapBatches.Batch043.certificate3497.Valid := DerivedMapBatches.Batch043.certificate3497valid
theorem linkedComposition674 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3497.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3497.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3496.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3495.algebra.mat x) := by
  rw [firstLink674, secondLink674]
  exact DerivedMapBatches.Batch043.certificate3497valid.2 x
theorem firstLink675 : DerivedMapBatches.Batch043.certificate3498.algebra.mat = DerivedMapBatches.Batch043.certificate3500.a := by decide
theorem secondLink675 : DerivedMapBatches.Batch043.certificate3499.algebra.mat = DerivedMapBatches.Batch043.certificate3500.b := by decide
theorem firstValid675 : DerivedMapBatches.Batch043.certificate3498.Valid := DerivedMapBatches.Batch043.certificate3498valid
theorem secondValid675 : DerivedMapBatches.Batch043.certificate3499.Valid := DerivedMapBatches.Batch043.certificate3499valid
theorem outputValid675 : DerivedMapBatches.Batch043.certificate3500.Valid := DerivedMapBatches.Batch043.certificate3500valid
theorem linkedComposition675 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3500.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3500.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3499.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3498.algebra.mat x) := by
  rw [firstLink675, secondLink675]
  exact DerivedMapBatches.Batch043.certificate3500valid.2 x
theorem firstLink676 : DerivedMapBatches.Batch043.certificate3501.algebra.mat = DerivedMapBatches.Batch043.certificate3503.a := by decide
theorem secondLink676 : DerivedMapBatches.Batch043.certificate3502.algebra.mat = DerivedMapBatches.Batch043.certificate3503.b := by decide
theorem firstValid676 : DerivedMapBatches.Batch043.certificate3501.Valid := DerivedMapBatches.Batch043.certificate3501valid
theorem secondValid676 : DerivedMapBatches.Batch043.certificate3502.Valid := DerivedMapBatches.Batch043.certificate3502valid
theorem outputValid676 : DerivedMapBatches.Batch043.certificate3503.Valid := DerivedMapBatches.Batch043.certificate3503valid
theorem linkedComposition676 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3503.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3503.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3502.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3501.algebra.mat x) := by
  rw [firstLink676, secondLink676]
  exact DerivedMapBatches.Batch043.certificate3503valid.2 x
theorem firstLink677 : DerivedMapBatches.Batch043.certificate3504.algebra.mat = DerivedMapBatches.Batch043.certificate3506.a := by decide
theorem secondLink677 : DerivedMapBatches.Batch043.certificate3505.algebra.mat = DerivedMapBatches.Batch043.certificate3506.b := by decide
theorem firstValid677 : DerivedMapBatches.Batch043.certificate3504.Valid := DerivedMapBatches.Batch043.certificate3504valid
theorem secondValid677 : DerivedMapBatches.Batch043.certificate3505.Valid := DerivedMapBatches.Batch043.certificate3505valid
theorem outputValid677 : DerivedMapBatches.Batch043.certificate3506.Valid := DerivedMapBatches.Batch043.certificate3506valid
theorem linkedComposition677 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3506.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3506.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3505.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3504.algebra.mat x) := by
  rw [firstLink677, secondLink677]
  exact DerivedMapBatches.Batch043.certificate3506valid.2 x
theorem firstLink678 : DerivedMapBatches.Batch043.certificate3507.algebra.mat = DerivedMapBatches.Batch043.certificate3509.a := by decide
theorem secondLink678 : DerivedMapBatches.Batch043.certificate3508.algebra.mat = DerivedMapBatches.Batch043.certificate3509.b := by decide
theorem firstValid678 : DerivedMapBatches.Batch043.certificate3507.Valid := DerivedMapBatches.Batch043.certificate3507valid
theorem secondValid678 : DerivedMapBatches.Batch043.certificate3508.Valid := DerivedMapBatches.Batch043.certificate3508valid
theorem outputValid678 : DerivedMapBatches.Batch043.certificate3509.Valid := DerivedMapBatches.Batch043.certificate3509valid
theorem linkedComposition678 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3509.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3509.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3508.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3507.algebra.mat x) := by
  rw [firstLink678, secondLink678]
  exact DerivedMapBatches.Batch043.certificate3509valid.2 x
theorem firstLink679 : DerivedMapBatches.Batch043.certificate3510.algebra.mat = DerivedMapBatches.Batch043.certificate3512.a := by decide
theorem secondLink679 : DerivedMapBatches.Batch043.certificate3511.algebra.mat = DerivedMapBatches.Batch043.certificate3512.b := by decide
theorem firstValid679 : DerivedMapBatches.Batch043.certificate3510.Valid := DerivedMapBatches.Batch043.certificate3510valid
theorem secondValid679 : DerivedMapBatches.Batch043.certificate3511.Valid := DerivedMapBatches.Batch043.certificate3511valid
theorem outputValid679 : DerivedMapBatches.Batch043.certificate3512.Valid := DerivedMapBatches.Batch043.certificate3512valid
theorem linkedComposition679 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3512.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3512.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3511.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3510.algebra.mat x) := by
  rw [firstLink679, secondLink679]
  exact DerivedMapBatches.Batch043.certificate3512valid.2 x
theorem firstLink680 : DerivedMapBatches.Batch043.certificate3513.algebra.mat = DerivedMapBatches.Batch043.certificate3515.a := by decide
theorem secondLink680 : DerivedMapBatches.Batch043.certificate3514.algebra.mat = DerivedMapBatches.Batch043.certificate3515.b := by decide
theorem firstValid680 : DerivedMapBatches.Batch043.certificate3513.Valid := DerivedMapBatches.Batch043.certificate3513valid
theorem secondValid680 : DerivedMapBatches.Batch043.certificate3514.Valid := DerivedMapBatches.Batch043.certificate3514valid
theorem outputValid680 : DerivedMapBatches.Batch043.certificate3515.Valid := DerivedMapBatches.Batch043.certificate3515valid
theorem linkedComposition680 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3515.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3515.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3514.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3513.algebra.mat x) := by
  rw [firstLink680, secondLink680]
  exact DerivedMapBatches.Batch043.certificate3515valid.2 x
theorem firstLink681 : DerivedMapBatches.Batch043.certificate3516.algebra.mat = DerivedMapBatches.Batch043.certificate3518.a := by decide
theorem secondLink681 : DerivedMapBatches.Batch043.certificate3517.algebra.mat = DerivedMapBatches.Batch043.certificate3518.b := by decide
theorem firstValid681 : DerivedMapBatches.Batch043.certificate3516.Valid := DerivedMapBatches.Batch043.certificate3516valid
theorem secondValid681 : DerivedMapBatches.Batch043.certificate3517.Valid := DerivedMapBatches.Batch043.certificate3517valid
theorem outputValid681 : DerivedMapBatches.Batch043.certificate3518.Valid := DerivedMapBatches.Batch043.certificate3518valid
theorem linkedComposition681 (x : LinearCertificates.Vec DerivedMapBatches.Batch043.certificate3518.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch043.certificate3518.c x = LinearCertificates.eval DerivedMapBatches.Batch043.certificate3517.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3516.algebra.mat x) := by
  rw [firstLink681, secondLink681]
  exact DerivedMapBatches.Batch043.certificate3518valid.2 x
theorem firstLink682 : DerivedMapBatches.Batch043.certificate3519.algebra.mat = DerivedMapBatches.Batch044.certificate3521.a := by decide
theorem secondLink682 : DerivedMapBatches.Batch044.certificate3520.algebra.mat = DerivedMapBatches.Batch044.certificate3521.b := by decide
theorem firstValid682 : DerivedMapBatches.Batch043.certificate3519.Valid := DerivedMapBatches.Batch043.certificate3519valid
theorem secondValid682 : DerivedMapBatches.Batch044.certificate3520.Valid := DerivedMapBatches.Batch044.certificate3520valid
theorem outputValid682 : DerivedMapBatches.Batch044.certificate3521.Valid := DerivedMapBatches.Batch044.certificate3521valid
theorem linkedComposition682 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3521.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3521.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3520.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch043.certificate3519.algebra.mat x) := by
  rw [firstLink682, secondLink682]
  exact DerivedMapBatches.Batch044.certificate3521valid.2 x
theorem firstLink683 : DerivedMapBatches.Batch044.certificate3522.algebra.mat = DerivedMapBatches.Batch044.certificate3524.a := by decide
theorem secondLink683 : DerivedMapBatches.Batch044.certificate3523.algebra.mat = DerivedMapBatches.Batch044.certificate3524.b := by decide
theorem firstValid683 : DerivedMapBatches.Batch044.certificate3522.Valid := DerivedMapBatches.Batch044.certificate3522valid
theorem secondValid683 : DerivedMapBatches.Batch044.certificate3523.Valid := DerivedMapBatches.Batch044.certificate3523valid
theorem outputValid683 : DerivedMapBatches.Batch044.certificate3524.Valid := DerivedMapBatches.Batch044.certificate3524valid
theorem linkedComposition683 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3524.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3524.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3523.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3522.algebra.mat x) := by
  rw [firstLink683, secondLink683]
  exact DerivedMapBatches.Batch044.certificate3524valid.2 x
theorem firstLink684 : DerivedMapBatches.Batch044.certificate3525.algebra.mat = DerivedMapBatches.Batch044.certificate3527.a := by decide
theorem secondLink684 : DerivedMapBatches.Batch044.certificate3526.algebra.mat = DerivedMapBatches.Batch044.certificate3527.b := by decide
theorem firstValid684 : DerivedMapBatches.Batch044.certificate3525.Valid := DerivedMapBatches.Batch044.certificate3525valid
theorem secondValid684 : DerivedMapBatches.Batch044.certificate3526.Valid := DerivedMapBatches.Batch044.certificate3526valid
theorem outputValid684 : DerivedMapBatches.Batch044.certificate3527.Valid := DerivedMapBatches.Batch044.certificate3527valid
theorem linkedComposition684 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3527.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3527.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3526.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3525.algebra.mat x) := by
  rw [firstLink684, secondLink684]
  exact DerivedMapBatches.Batch044.certificate3527valid.2 x
theorem firstLink685 : DerivedMapBatches.Batch044.certificate3528.algebra.mat = DerivedMapBatches.Batch044.certificate3530.a := by decide
theorem secondLink685 : DerivedMapBatches.Batch044.certificate3529.algebra.mat = DerivedMapBatches.Batch044.certificate3530.b := by decide
theorem firstValid685 : DerivedMapBatches.Batch044.certificate3528.Valid := DerivedMapBatches.Batch044.certificate3528valid
theorem secondValid685 : DerivedMapBatches.Batch044.certificate3529.Valid := DerivedMapBatches.Batch044.certificate3529valid
theorem outputValid685 : DerivedMapBatches.Batch044.certificate3530.Valid := DerivedMapBatches.Batch044.certificate3530valid
theorem linkedComposition685 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3530.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3530.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3529.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3528.algebra.mat x) := by
  rw [firstLink685, secondLink685]
  exact DerivedMapBatches.Batch044.certificate3530valid.2 x
theorem firstLink686 : DerivedMapBatches.Batch044.certificate3531.algebra.mat = DerivedMapBatches.Batch044.certificate3533.a := by decide
theorem secondLink686 : DerivedMapBatches.Batch044.certificate3532.algebra.mat = DerivedMapBatches.Batch044.certificate3533.b := by decide
theorem firstValid686 : DerivedMapBatches.Batch044.certificate3531.Valid := DerivedMapBatches.Batch044.certificate3531valid
theorem secondValid686 : DerivedMapBatches.Batch044.certificate3532.Valid := DerivedMapBatches.Batch044.certificate3532valid
theorem outputValid686 : DerivedMapBatches.Batch044.certificate3533.Valid := DerivedMapBatches.Batch044.certificate3533valid
theorem linkedComposition686 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3533.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3533.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3532.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3531.algebra.mat x) := by
  rw [firstLink686, secondLink686]
  exact DerivedMapBatches.Batch044.certificate3533valid.2 x
theorem firstLink687 : DerivedMapBatches.Batch044.certificate3534.algebra.mat = DerivedMapBatches.Batch044.certificate3536.a := by decide
theorem secondLink687 : DerivedMapBatches.Batch044.certificate3535.algebra.mat = DerivedMapBatches.Batch044.certificate3536.b := by decide
theorem firstValid687 : DerivedMapBatches.Batch044.certificate3534.Valid := DerivedMapBatches.Batch044.certificate3534valid
theorem secondValid687 : DerivedMapBatches.Batch044.certificate3535.Valid := DerivedMapBatches.Batch044.certificate3535valid
theorem outputValid687 : DerivedMapBatches.Batch044.certificate3536.Valid := DerivedMapBatches.Batch044.certificate3536valid
theorem linkedComposition687 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3536.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3536.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3535.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3534.algebra.mat x) := by
  rw [firstLink687, secondLink687]
  exact DerivedMapBatches.Batch044.certificate3536valid.2 x
theorem firstLink688 : DerivedMapBatches.Batch044.certificate3537.algebra.mat = DerivedMapBatches.Batch044.certificate3539.a := by decide
theorem secondLink688 : DerivedMapBatches.Batch044.certificate3538.algebra.mat = DerivedMapBatches.Batch044.certificate3539.b := by decide
theorem firstValid688 : DerivedMapBatches.Batch044.certificate3537.Valid := DerivedMapBatches.Batch044.certificate3537valid
theorem secondValid688 : DerivedMapBatches.Batch044.certificate3538.Valid := DerivedMapBatches.Batch044.certificate3538valid
theorem outputValid688 : DerivedMapBatches.Batch044.certificate3539.Valid := DerivedMapBatches.Batch044.certificate3539valid
theorem linkedComposition688 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3539.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3539.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3538.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3537.algebra.mat x) := by
  rw [firstLink688, secondLink688]
  exact DerivedMapBatches.Batch044.certificate3539valid.2 x
theorem firstLink689 : DerivedMapBatches.Batch044.certificate3540.algebra.mat = DerivedMapBatches.Batch044.certificate3542.a := by decide
theorem secondLink689 : DerivedMapBatches.Batch044.certificate3541.algebra.mat = DerivedMapBatches.Batch044.certificate3542.b := by decide
theorem firstValid689 : DerivedMapBatches.Batch044.certificate3540.Valid := DerivedMapBatches.Batch044.certificate3540valid
theorem secondValid689 : DerivedMapBatches.Batch044.certificate3541.Valid := DerivedMapBatches.Batch044.certificate3541valid
theorem outputValid689 : DerivedMapBatches.Batch044.certificate3542.Valid := DerivedMapBatches.Batch044.certificate3542valid
theorem linkedComposition689 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3542.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3542.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3541.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3540.algebra.mat x) := by
  rw [firstLink689, secondLink689]
  exact DerivedMapBatches.Batch044.certificate3542valid.2 x
theorem firstLink690 : DerivedMapBatches.Batch044.certificate3543.algebra.mat = DerivedMapBatches.Batch044.certificate3545.a := by decide
theorem secondLink690 : DerivedMapBatches.Batch044.certificate3544.algebra.mat = DerivedMapBatches.Batch044.certificate3545.b := by decide
theorem firstValid690 : DerivedMapBatches.Batch044.certificate3543.Valid := DerivedMapBatches.Batch044.certificate3543valid
theorem secondValid690 : DerivedMapBatches.Batch044.certificate3544.Valid := DerivedMapBatches.Batch044.certificate3544valid
theorem outputValid690 : DerivedMapBatches.Batch044.certificate3545.Valid := DerivedMapBatches.Batch044.certificate3545valid
theorem linkedComposition690 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3545.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3545.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3544.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3543.algebra.mat x) := by
  rw [firstLink690, secondLink690]
  exact DerivedMapBatches.Batch044.certificate3545valid.2 x
theorem firstLink691 : DerivedMapBatches.Batch044.certificate3546.algebra.mat = DerivedMapBatches.Batch044.certificate3548.a := by decide
theorem secondLink691 : DerivedMapBatches.Batch044.certificate3547.algebra.mat = DerivedMapBatches.Batch044.certificate3548.b := by decide
theorem firstValid691 : DerivedMapBatches.Batch044.certificate3546.Valid := DerivedMapBatches.Batch044.certificate3546valid
theorem secondValid691 : DerivedMapBatches.Batch044.certificate3547.Valid := DerivedMapBatches.Batch044.certificate3547valid
theorem outputValid691 : DerivedMapBatches.Batch044.certificate3548.Valid := DerivedMapBatches.Batch044.certificate3548valid
theorem linkedComposition691 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3548.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3548.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3547.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3546.algebra.mat x) := by
  rw [firstLink691, secondLink691]
  exact DerivedMapBatches.Batch044.certificate3548valid.2 x
theorem firstLink692 : DerivedMapBatches.Batch044.certificate3549.algebra.mat = DerivedMapBatches.Batch044.certificate3551.a := by decide
theorem secondLink692 : DerivedMapBatches.Batch044.certificate3550.algebra.mat = DerivedMapBatches.Batch044.certificate3551.b := by decide
theorem firstValid692 : DerivedMapBatches.Batch044.certificate3549.Valid := DerivedMapBatches.Batch044.certificate3549valid
theorem secondValid692 : DerivedMapBatches.Batch044.certificate3550.Valid := DerivedMapBatches.Batch044.certificate3550valid
theorem outputValid692 : DerivedMapBatches.Batch044.certificate3551.Valid := DerivedMapBatches.Batch044.certificate3551valid
theorem linkedComposition692 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3551.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3551.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3550.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3549.algebra.mat x) := by
  rw [firstLink692, secondLink692]
  exact DerivedMapBatches.Batch044.certificate3551valid.2 x
theorem firstLink693 : DerivedMapBatches.Batch044.certificate3552.algebra.mat = DerivedMapBatches.Batch044.certificate3554.a := by decide
theorem secondLink693 : DerivedMapBatches.Batch044.certificate3553.algebra.mat = DerivedMapBatches.Batch044.certificate3554.b := by decide
theorem firstValid693 : DerivedMapBatches.Batch044.certificate3552.Valid := DerivedMapBatches.Batch044.certificate3552valid
theorem secondValid693 : DerivedMapBatches.Batch044.certificate3553.Valid := DerivedMapBatches.Batch044.certificate3553valid
theorem outputValid693 : DerivedMapBatches.Batch044.certificate3554.Valid := DerivedMapBatches.Batch044.certificate3554valid
theorem linkedComposition693 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3554.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3554.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3553.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3552.algebra.mat x) := by
  rw [firstLink693, secondLink693]
  exact DerivedMapBatches.Batch044.certificate3554valid.2 x
theorem firstLink694 : DerivedMapBatches.Batch044.certificate3555.algebra.mat = DerivedMapBatches.Batch044.certificate3557.a := by decide
theorem secondLink694 : DerivedMapBatches.Batch044.certificate3556.algebra.mat = DerivedMapBatches.Batch044.certificate3557.b := by decide
theorem firstValid694 : DerivedMapBatches.Batch044.certificate3555.Valid := DerivedMapBatches.Batch044.certificate3555valid
theorem secondValid694 : DerivedMapBatches.Batch044.certificate3556.Valid := DerivedMapBatches.Batch044.certificate3556valid
theorem outputValid694 : DerivedMapBatches.Batch044.certificate3557.Valid := DerivedMapBatches.Batch044.certificate3557valid
theorem linkedComposition694 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3557.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3557.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3556.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3555.algebra.mat x) := by
  rw [firstLink694, secondLink694]
  exact DerivedMapBatches.Batch044.certificate3557valid.2 x
theorem firstLink695 : DerivedMapBatches.Batch044.certificate3558.algebra.mat = DerivedMapBatches.Batch044.certificate3560.a := by decide
theorem secondLink695 : DerivedMapBatches.Batch044.certificate3559.algebra.mat = DerivedMapBatches.Batch044.certificate3560.b := by decide
theorem firstValid695 : DerivedMapBatches.Batch044.certificate3558.Valid := DerivedMapBatches.Batch044.certificate3558valid
theorem secondValid695 : DerivedMapBatches.Batch044.certificate3559.Valid := DerivedMapBatches.Batch044.certificate3559valid
theorem outputValid695 : DerivedMapBatches.Batch044.certificate3560.Valid := DerivedMapBatches.Batch044.certificate3560valid
theorem linkedComposition695 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3560.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3560.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3559.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3558.algebra.mat x) := by
  rw [firstLink695, secondLink695]
  exact DerivedMapBatches.Batch044.certificate3560valid.2 x
theorem firstLink696 : DerivedMapBatches.Batch044.certificate3561.algebra.mat = DerivedMapBatches.Batch044.certificate3563.a := by decide
theorem secondLink696 : DerivedMapBatches.Batch044.certificate3562.algebra.mat = DerivedMapBatches.Batch044.certificate3563.b := by decide
theorem firstValid696 : DerivedMapBatches.Batch044.certificate3561.Valid := DerivedMapBatches.Batch044.certificate3561valid
theorem secondValid696 : DerivedMapBatches.Batch044.certificate3562.Valid := DerivedMapBatches.Batch044.certificate3562valid
theorem outputValid696 : DerivedMapBatches.Batch044.certificate3563.Valid := DerivedMapBatches.Batch044.certificate3563valid
theorem linkedComposition696 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3563.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3563.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3562.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3561.algebra.mat x) := by
  rw [firstLink696, secondLink696]
  exact DerivedMapBatches.Batch044.certificate3563valid.2 x
theorem firstLink697 : DerivedMapBatches.Batch044.certificate3564.algebra.mat = DerivedMapBatches.Batch044.certificate3566.a := by decide
theorem secondLink697 : DerivedMapBatches.Batch044.certificate3565.algebra.mat = DerivedMapBatches.Batch044.certificate3566.b := by decide
theorem firstValid697 : DerivedMapBatches.Batch044.certificate3564.Valid := DerivedMapBatches.Batch044.certificate3564valid
theorem secondValid697 : DerivedMapBatches.Batch044.certificate3565.Valid := DerivedMapBatches.Batch044.certificate3565valid
theorem outputValid697 : DerivedMapBatches.Batch044.certificate3566.Valid := DerivedMapBatches.Batch044.certificate3566valid
theorem linkedComposition697 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3566.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3566.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3565.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3564.algebra.mat x) := by
  rw [firstLink697, secondLink697]
  exact DerivedMapBatches.Batch044.certificate3566valid.2 x
theorem firstLink698 : DerivedMapBatches.Batch044.certificate3567.algebra.mat = DerivedMapBatches.Batch044.certificate3569.a := by decide
theorem secondLink698 : DerivedMapBatches.Batch044.certificate3568.algebra.mat = DerivedMapBatches.Batch044.certificate3569.b := by decide
theorem firstValid698 : DerivedMapBatches.Batch044.certificate3567.Valid := DerivedMapBatches.Batch044.certificate3567valid
theorem secondValid698 : DerivedMapBatches.Batch044.certificate3568.Valid := DerivedMapBatches.Batch044.certificate3568valid
theorem outputValid698 : DerivedMapBatches.Batch044.certificate3569.Valid := DerivedMapBatches.Batch044.certificate3569valid
theorem linkedComposition698 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3569.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3569.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3568.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3567.algebra.mat x) := by
  rw [firstLink698, secondLink698]
  exact DerivedMapBatches.Batch044.certificate3569valid.2 x
theorem firstLink699 : DerivedMapBatches.Batch044.certificate3570.algebra.mat = DerivedMapBatches.Batch044.certificate3572.a := by decide
theorem secondLink699 : DerivedMapBatches.Batch044.certificate3571.algebra.mat = DerivedMapBatches.Batch044.certificate3572.b := by decide
theorem firstValid699 : DerivedMapBatches.Batch044.certificate3570.Valid := DerivedMapBatches.Batch044.certificate3570valid
theorem secondValid699 : DerivedMapBatches.Batch044.certificate3571.Valid := DerivedMapBatches.Batch044.certificate3571valid
theorem outputValid699 : DerivedMapBatches.Batch044.certificate3572.Valid := DerivedMapBatches.Batch044.certificate3572valid
theorem linkedComposition699 (x : LinearCertificates.Vec DerivedMapBatches.Batch044.certificate3572.cols) :
    LinearCertificates.eval DerivedMapBatches.Batch044.certificate3572.c x = LinearCertificates.eval DerivedMapBatches.Batch044.certificate3571.algebra.mat (LinearCertificates.eval DerivedMapBatches.Batch044.certificate3570.algebra.mat x) := by
  rw [firstLink699, secondLink699]
  exact DerivedMapBatches.Batch044.certificate3572valid.2 x
end DerivedLinkageBatches.Batch013
