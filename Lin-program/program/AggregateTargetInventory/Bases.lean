import StaircaseCertificates.Basic
import PageTransitionCertificates.Import
namespace AggregateTargetInventory.Bases
open LinearCertificates StaircaseCertificates PageTransitionCertificates
def f5 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f5_basis : IsBasis f5 := by lin_cert using ()
theorem row2435_coordinates : ∀ i : Fin 1, f5.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f6 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f6_basis : IsBasis f6 := by lin_cert using ()
theorem row2492_coordinates : ∀ i : Fin 2, f6.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row2493_coordinates : ∀ i : Fin 2, f6.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f7 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f7_basis : IsBasis f7 := by lin_cert using ()
theorem row2572_coordinates : ∀ i : Fin 1, f7.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f8 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f8_basis : IsBasis f8 := by lin_cert using ()
theorem row2629_coordinates : ∀ i : Fin 2, f8.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row2630_coordinates : ∀ i : Fin 2, f8.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f9 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,false,false,true,false,false,false,true,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,true],matrixOf 5 5 [false,false,true,false,false,false,false,false,true,false,false,true,false,false,false,true,false,false,false,false,false,false,false,false,true]⟩
theorem f9_basis : IsBasis f9 := by lin_cert using ()
theorem row2695_coordinates : ∀ i : Fin 5, f9.basis i ⟨0,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row2696_coordinates : ∀ i : Fin 5, f9.basis i ⟨1,by decide⟩ = ([false,false,false,true,false] : List Bool)[i.val]! := by decide
theorem row2697_coordinates : ∀ i : Fin 5, f9.basis i ⟨2,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
theorem row2698_coordinates : ∀ i : Fin 5, f9.basis i ⟨3,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
theorem row2699_coordinates : ∀ i : Fin 5, f9.basis i ⟨4,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
def f10 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false,false,false,false,false,true],matrixOf 5 5 [false,false,false,true,false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,true]⟩
theorem f10_basis : IsBasis f10 := by lin_cert using ()
theorem row2783_coordinates : ∀ i : Fin 5, f10.basis i ⟨0,by decide⟩ = ([false,false,false,true,false] : List Bool)[i.val]! := by decide
theorem row2784_coordinates : ∀ i : Fin 5, f10.basis i ⟨1,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
theorem row2785_coordinates : ∀ i : Fin 5, f10.basis i ⟨2,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
theorem row2786_coordinates : ∀ i : Fin 5, f10.basis i ⟨3,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row2787_coordinates : ∀ i : Fin 5, f10.basis i ⟨4,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
def f11 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,false,false,true,false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,true],matrixOf 5 5 [false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false,false,false,false,false,true]⟩
theorem f11_basis : IsBasis f11 := by lin_cert using ()
theorem row2850_coordinates : ∀ i : Fin 5, f11.basis i ⟨0,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
theorem row2851_coordinates : ∀ i : Fin 5, f11.basis i ⟨1,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row2852_coordinates : ∀ i : Fin 5, f11.basis i ⟨2,by decide⟩ = ([false,false,false,true,false] : List Bool)[i.val]! := by decide
theorem row2853_coordinates : ∀ i : Fin 5, f11.basis i ⟨3,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
theorem row2854_coordinates : ∀ i : Fin 5, f11.basis i ⟨4,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
def f12 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,false,false,false,true,false,false,false,true,false,true,false,false,false,false,false,true,false,false,false,false,true,true,false,false],matrixOf 5 5 [false,false,true,false,false,false,false,false,true,false,false,false,false,true,true,false,true,false,false,false,true,false,false,false,false]⟩
theorem f12_basis : IsBasis f12 := by lin_cert using ()
theorem row2918_coordinates : ∀ i : Fin 5, f12.basis i ⟨0,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row2919_coordinates : ∀ i : Fin 5, f12.basis i ⟨1,by decide⟩ = ([false,false,false,true,true] : List Bool)[i.val]! := by decide
theorem row2920_coordinates : ∀ i : Fin 5, f12.basis i ⟨2,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
theorem row2921_coordinates : ∀ i : Fin 5, f12.basis i ⟨3,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
theorem row2922_coordinates : ∀ i : Fin 5, f12.basis i ⟨4,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
def f13 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,false,true,false,false,false,false,false,false,true,false,false,false,true,false,true,false,false,false,false,false,true,false,false,false],matrixOf 5 5 [false,false,false,true,false,false,false,false,false,true,true,false,false,false,false,false,false,true,false,false,false,true,false,false,false]⟩
theorem f13_basis : IsBasis f13 := by lin_cert using ()
theorem row3008_coordinates : ∀ i : Fin 5, f13.basis i ⟨0,by decide⟩ = ([false,false,false,true,false] : List Bool)[i.val]! := by decide
theorem row3009_coordinates : ∀ i : Fin 5, f13.basis i ⟨1,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
theorem row3010_coordinates : ∀ i : Fin 5, f13.basis i ⟨2,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
theorem row3011_coordinates : ∀ i : Fin 5, f13.basis i ⟨3,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row3012_coordinates : ∀ i : Fin 5, f13.basis i ⟨4,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
def f14 : BasisCertificate 3 := ⟨matrixOf 3 3 [false,false,true,false,true,false,true,false,false],matrixOf 3 3 [false,false,true,false,true,false,true,false,false]⟩
theorem f14_basis : IsBasis f14 := by lin_cert using ()
theorem row3079_coordinates : ∀ i : Fin 3, f14.basis i ⟨0,by decide⟩ = ([false,false,true] : List Bool)[i.val]! := by decide
theorem row3080_coordinates : ∀ i : Fin 3, f14.basis i ⟨1,by decide⟩ = ([false,true,false] : List Bool)[i.val]! := by decide
theorem row3081_coordinates : ∀ i : Fin 3, f14.basis i ⟨2,by decide⟩ = ([true,false,false] : List Bool)[i.val]! := by decide
def f15 : BasisCertificate 5 := ⟨matrixOf 5 5 [false,false,false,true,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,true,true,false,false,false,false],matrixOf 5 5 [false,false,false,false,true,false,true,false,false,false,false,false,true,false,false,true,false,false,false,false,false,false,false,true,false]⟩
theorem f15_basis : IsBasis f15 := by lin_cert using ()
theorem row3150_coordinates : ∀ i : Fin 5, f15.basis i ⟨0,by decide⟩ = ([false,false,false,false,true] : List Bool)[i.val]! := by decide
theorem row3151_coordinates : ∀ i : Fin 5, f15.basis i ⟨1,by decide⟩ = ([false,true,false,false,false] : List Bool)[i.val]! := by decide
theorem row3152_coordinates : ∀ i : Fin 5, f15.basis i ⟨2,by decide⟩ = ([false,false,true,false,false] : List Bool)[i.val]! := by decide
theorem row3153_coordinates : ∀ i : Fin 5, f15.basis i ⟨3,by decide⟩ = ([true,false,false,false,false] : List Bool)[i.val]! := by decide
theorem row3154_coordinates : ∀ i : Fin 5, f15.basis i ⟨4,by decide⟩ = ([false,false,false,true,false] : List Bool)[i.val]! := by decide
def f16 : BasisCertificate 4 := ⟨matrixOf 4 4 [false,false,true,false,false,true,false,false,true,false,false,false,false,false,false,true],matrixOf 4 4 [false,false,true,false,false,true,false,false,true,false,false,false,false,false,false,true]⟩
theorem f16_basis : IsBasis f16 := by lin_cert using ()
theorem row3253_coordinates : ∀ i : Fin 4, f16.basis i ⟨0,by decide⟩ = ([false,false,true,false] : List Bool)[i.val]! := by decide
theorem row3254_coordinates : ∀ i : Fin 4, f16.basis i ⟨1,by decide⟩ = ([false,true,false,false] : List Bool)[i.val]! := by decide
theorem row3255_coordinates : ∀ i : Fin 4, f16.basis i ⟨2,by decide⟩ = ([true,false,false,false] : List Bool)[i.val]! := by decide
theorem row3256_coordinates : ∀ i : Fin 4, f16.basis i ⟨3,by decide⟩ = ([false,false,false,true] : List Bool)[i.val]! := by decide
def f17 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f17_basis : IsBasis f17 := by lin_cert using ()
theorem row3319_coordinates : ∀ i : Fin 2, f17.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row3320_coordinates : ∀ i : Fin 2, f17.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f18 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f18_basis : IsBasis f18 := by lin_cert using ()
theorem row3391_coordinates : ∀ i : Fin 2, f18.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row3392_coordinates : ∀ i : Fin 2, f18.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f19 : BasisCertificate 3 := ⟨matrixOf 3 3 [true,false,false,false,false,true,false,true,false],matrixOf 3 3 [true,false,false,false,false,true,false,true,false]⟩
theorem f19_basis : IsBasis f19 := by lin_cert using ()
theorem row3486_coordinates : ∀ i : Fin 3, f19.basis i ⟨0,by decide⟩ = ([true,false,false] : List Bool)[i.val]! := by decide
theorem row3487_coordinates : ∀ i : Fin 3, f19.basis i ⟨1,by decide⟩ = ([false,false,true] : List Bool)[i.val]! := by decide
theorem row3488_coordinates : ∀ i : Fin 3, f19.basis i ⟨2,by decide⟩ = ([false,true,false] : List Bool)[i.val]! := by decide
def f20 : BasisCertificate 3 := ⟨matrixOf 3 3 [false,true,false,true,false,false,false,false,true],matrixOf 3 3 [false,true,false,true,false,false,false,false,true]⟩
theorem f20_basis : IsBasis f20 := by lin_cert using ()
theorem row3556_coordinates : ∀ i : Fin 3, f20.basis i ⟨0,by decide⟩ = ([false,true,false] : List Bool)[i.val]! := by decide
theorem row3557_coordinates : ∀ i : Fin 3, f20.basis i ⟨1,by decide⟩ = ([true,false,false] : List Bool)[i.val]! := by decide
theorem row3558_coordinates : ∀ i : Fin 3, f20.basis i ⟨2,by decide⟩ = ([false,false,true] : List Bool)[i.val]! := by decide
def f21 : BasisCertificate 3 := ⟨matrixOf 3 3 [true,false,false,false,false,true,false,true,false],matrixOf 3 3 [true,false,false,false,false,true,false,true,false]⟩
theorem f21_basis : IsBasis f21 := by lin_cert using ()
theorem row3629_coordinates : ∀ i : Fin 3, f21.basis i ⟨0,by decide⟩ = ([true,false,false] : List Bool)[i.val]! := by decide
theorem row3630_coordinates : ∀ i : Fin 3, f21.basis i ⟨1,by decide⟩ = ([false,false,true] : List Bool)[i.val]! := by decide
theorem row3631_coordinates : ∀ i : Fin 3, f21.basis i ⟨2,by decide⟩ = ([false,true,false] : List Bool)[i.val]! := by decide
def f22 : BasisCertificate 4 := ⟨matrixOf 4 4 [false,true,false,false,true,false,false,false,false,false,false,true,false,true,true,false],matrixOf 4 4 [false,true,false,false,true,false,false,false,true,false,false,true,false,false,true,false]⟩
theorem f22_basis : IsBasis f22 := by lin_cert using ()
theorem row3744_coordinates : ∀ i : Fin 4, f22.basis i ⟨0,by decide⟩ = ([false,true,false,false] : List Bool)[i.val]! := by decide
theorem row3745_coordinates : ∀ i : Fin 4, f22.basis i ⟨1,by decide⟩ = ([true,false,false,true] : List Bool)[i.val]! := by decide
theorem row3746_coordinates : ∀ i : Fin 4, f22.basis i ⟨2,by decide⟩ = ([false,false,false,true] : List Bool)[i.val]! := by decide
theorem row3747_coordinates : ∀ i : Fin 4, f22.basis i ⟨3,by decide⟩ = ([false,false,true,false] : List Bool)[i.val]! := by decide
def f23 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f23_basis : IsBasis f23 := by lin_cert using ()
theorem row3812_coordinates : ∀ i : Fin 2, f23.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row3813_coordinates : ∀ i : Fin 2, f23.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f24 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f24_basis : IsBasis f24 := by lin_cert using ()
theorem row3896_coordinates : ∀ i : Fin 1, f24.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f25 : BasisCertificate 4 := ⟨matrixOf 4 4 [false,false,true,false,false,false,true,true,false,true,false,false,true,false,false,false],matrixOf 4 4 [false,false,false,true,false,false,true,false,true,false,false,false,true,true,false,false]⟩
theorem f25_basis : IsBasis f25 := by lin_cert using ()
theorem row3992_coordinates : ∀ i : Fin 4, f25.basis i ⟨0,by decide⟩ = ([false,false,false,true] : List Bool)[i.val]! := by decide
theorem row3993_coordinates : ∀ i : Fin 4, f25.basis i ⟨1,by decide⟩ = ([false,false,true,false] : List Bool)[i.val]! := by decide
theorem row3994_coordinates : ∀ i : Fin 4, f25.basis i ⟨2,by decide⟩ = ([true,true,false,false] : List Bool)[i.val]! := by decide
theorem row3995_coordinates : ∀ i : Fin 4, f25.basis i ⟨3,by decide⟩ = ([false,true,false,false] : List Bool)[i.val]! := by decide
def f26 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f26_basis : IsBasis f26 := by lin_cert using ()
theorem row4092_coordinates : ∀ i : Fin 1, f26.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f27 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f27_basis : IsBasis f27 := by lin_cert using ()
theorem row4162_coordinates : ∀ i : Fin 2, f27.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row4163_coordinates : ∀ i : Fin 2, f27.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f28 : BasisCertificate 4 := ⟨matrixOf 4 4 [false,false,false,true,false,true,false,false,true,false,false,false,false,false,true,false],matrixOf 4 4 [false,false,true,false,false,true,false,false,false,false,false,true,true,false,false,false]⟩
theorem f28_basis : IsBasis f28 := by lin_cert using ()
theorem row4263_coordinates : ∀ i : Fin 4, f28.basis i ⟨0,by decide⟩ = ([false,false,true,false] : List Bool)[i.val]! := by decide
theorem row4264_coordinates : ∀ i : Fin 4, f28.basis i ⟨1,by decide⟩ = ([false,true,false,false] : List Bool)[i.val]! := by decide
theorem row4265_coordinates : ∀ i : Fin 4, f28.basis i ⟨2,by decide⟩ = ([false,false,false,true] : List Bool)[i.val]! := by decide
theorem row4266_coordinates : ∀ i : Fin 4, f28.basis i ⟨3,by decide⟩ = ([true,false,false,false] : List Bool)[i.val]! := by decide
def f29 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f29_basis : IsBasis f29 := by lin_cert using ()
theorem row4337_coordinates : ∀ i : Fin 2, f29.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row4338_coordinates : ∀ i : Fin 2, f29.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f30 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f30_basis : IsBasis f30 := by lin_cert using ()
theorem row4411_coordinates : ∀ i : Fin 2, f30.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row4412_coordinates : ∀ i : Fin 2, f30.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f31 : BasisCertificate 3 := ⟨matrixOf 3 3 [false,false,true,true,false,false,false,true,false],matrixOf 3 3 [false,true,false,false,false,true,true,false,false]⟩
theorem f31_basis : IsBasis f31 := by lin_cert using ()
theorem row4501_coordinates : ∀ i : Fin 3, f31.basis i ⟨0,by decide⟩ = ([false,true,false] : List Bool)[i.val]! := by decide
theorem row4502_coordinates : ∀ i : Fin 3, f31.basis i ⟨1,by decide⟩ = ([false,false,true] : List Bool)[i.val]! := by decide
theorem row4503_coordinates : ∀ i : Fin 3, f31.basis i ⟨2,by decide⟩ = ([true,false,false] : List Bool)[i.val]! := by decide
def f33 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f33_basis : IsBasis f33 := by lin_cert using ()
theorem row4671_coordinates : ∀ i : Fin 1, f33.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f34 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f34_basis : IsBasis f34 := by lin_cert using ()
theorem row4763_coordinates : ∀ i : Fin 2, f34.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row4764_coordinates : ∀ i : Fin 2, f34.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f36 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f36_basis : IsBasis f36 := by lin_cert using ()
theorem row4929_coordinates : ∀ i : Fin 2, f36.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row4930_coordinates : ∀ i : Fin 2, f36.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f37 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f37_basis : IsBasis f37 := by lin_cert using ()
theorem row5027_coordinates : ∀ i : Fin 2, f37.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row5028_coordinates : ∀ i : Fin 2, f37.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f38 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f38_basis : IsBasis f38 := by lin_cert using ()
theorem row5143_coordinates : ∀ i : Fin 1, f38.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f39 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f39_basis : IsBasis f39 := by lin_cert using ()
theorem row5217_coordinates : ∀ i : Fin 1, f39.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f40 : BasisCertificate 2 := ⟨matrixOf 2 2 [false,true,true,false],matrixOf 2 2 [false,true,true,false]⟩
theorem f40_basis : IsBasis f40 := by lin_cert using ()
theorem row5326_coordinates : ∀ i : Fin 2, f40.basis i ⟨0,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
theorem row5327_coordinates : ∀ i : Fin 2, f40.basis i ⟨1,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
def f41 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f41_basis : IsBasis f41 := by lin_cert using ()
theorem row5441_coordinates : ∀ i : Fin 2, f41.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row5442_coordinates : ∀ i : Fin 2, f41.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f42 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f42_basis : IsBasis f42 := by lin_cert using ()
theorem row5540_coordinates : ∀ i : Fin 1, f42.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f43 : BasisCertificate 2 := ⟨matrixOf 2 2 [true,false,false,true],matrixOf 2 2 [true,false,false,true]⟩
theorem f43_basis : IsBasis f43 := by lin_cert using ()
theorem row5635_coordinates : ∀ i : Fin 2, f43.basis i ⟨0,by decide⟩ = ([true,false] : List Bool)[i.val]! := by decide
theorem row5636_coordinates : ∀ i : Fin 2, f43.basis i ⟨1,by decide⟩ = ([false,true] : List Bool)[i.val]! := by decide
def f44 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f44_basis : IsBasis f44 := by lin_cert using ()
theorem row5772_coordinates : ∀ i : Fin 1, f44.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f45 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f45_basis : IsBasis f45 := by lin_cert using ()
theorem row5862_coordinates : ∀ i : Fin 1, f45.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f46 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f46_basis : IsBasis f46 := by lin_cert using ()
theorem row5977_coordinates : ∀ i : Fin 1, f46.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f49 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f49_basis : IsBasis f49 := by lin_cert using ()
theorem row6296_coordinates : ∀ i : Fin 1, f49.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f52 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f52_basis : IsBasis f52 := by lin_cert using ()
theorem row6651_coordinates : ∀ i : Fin 1, f52.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f55 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f55_basis : IsBasis f55 := by lin_cert using ()
theorem row7007_coordinates : ∀ i : Fin 1, f55.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f56 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f56_basis : IsBasis f56 := by lin_cert using ()
theorem row7162_coordinates : ∀ i : Fin 1, f56.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
def f57 : BasisCertificate 1 := ⟨matrixOf 1 1 [true],matrixOf 1 1 [true]⟩
theorem f57_basis : IsBasis f57 := by lin_cert using ()
theorem row7247_coordinates : ∀ i : Fin 1, f57.basis i ⟨0,by decide⟩ = ([true] : List Bool)[i.val]! := by decide
end AggregateTargetInventory.Bases
