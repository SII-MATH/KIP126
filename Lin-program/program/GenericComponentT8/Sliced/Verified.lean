import GenericComponentT8.Sliced.Source00
import GenericComponentT8.Sliced.Source01
import GenericComponentT8.Sliced.Source02
import GenericComponentT8.Sliced.Source03
import GenericComponentT8.Sliced.Source04
import GenericComponentT8.Sliced.Source05
import GenericComponentT8.Sliced.Source06
import GenericComponentT8.Sliced.Source07
import GenericComponentT8.Sliced.Source08
import GenericComponentT8.Sliced.Source09
import GenericComponentT8.Sliced.Source10
import GenericComponentT8.Sliced.Source11
import GenericComponentT8.Sliced.Source12
import GenericComponentT8.Sliced.Source13
import GenericComponentT8.Sliced.Source14
import GenericComponentT8.Sliced.Source15
namespace GenericComponentT8.Sliced
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem valid : bundle.Valid :=
  wire_valid_of_sources bundle (by decide) (by decide)
    (Fin.cases products0 (Fin.cases products1 (Fin.cases products2 (Fin.cases products3 (Fin.cases products4 (Fin.cases products5 (Fin.cases products6 (Fin.cases products7 (Fin.cases products8 (Fin.cases products9 (Fin.cases products10 (Fin.cases products11 (Fin.cases products12 (Fin.cases products13 (Fin.cases products14 (Fin.cases products15 (fun i : Fin 0 => Fin.elim0 i)))))))))))))))))
    (Fin.cases cancellation0 (Fin.cases cancellation1 (Fin.cases cancellation2 (Fin.cases cancellation3 (Fin.cases cancellation4 (Fin.cases cancellation5 (Fin.cases cancellation6 (Fin.cases cancellation7 (Fin.cases cancellation8 (Fin.cases cancellation9 (Fin.cases cancellation10 (Fin.cases cancellation11 (Fin.cases cancellation12 (Fin.cases cancellation13 (Fin.cases cancellation14 (Fin.cases cancellation15 (fun i : Fin 0 => Fin.elim0 i)))))))))))))))))
end GenericComponentT8.Sliced
