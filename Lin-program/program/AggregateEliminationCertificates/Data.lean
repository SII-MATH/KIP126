import AggregateEliminationCertificates.Basic
import AggregateTargetInventory.Aggregate
import IndexedD5Certificates.Events
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace AggregateEliminationCertificates.Data
open IndexedFamilyCertificates
def inventory : List TargetRow := [⟨2435,5,130,[true],.outgoing⟩,⟨2492,6,131,[true,false],.outgoing⟩,⟨2493,6,131,[false,true],.outgoing⟩,⟨2572,7,132,[true],.incoming⟩,⟨2629,8,133,[true,false],.outgoing⟩,⟨2630,8,133,[false,true],.outgoing⟩,⟨2695,9,134,[false,false,true,false,false],.unknown⟩,⟨2696,9,134,[false,false,false,true,false],.outgoing⟩,⟨2697,9,134,[false,true,false,false,false],.outgoing⟩,⟨2698,9,134,[true,false,false,false,false],.outgoing⟩,⟨2699,9,134,[false,false,false,false,true],.outgoing⟩,⟨2783,10,135,[false,false,false,true,false],.incoming⟩,⟨2784,10,135,[true,false,false,false,false],.outgoing⟩,⟨2785,10,135,[false,true,false,false,false],.outgoing⟩,⟨2786,10,135,[false,false,true,false,false],.outgoing⟩,⟨2787,10,135,[false,false,false,false,true],.outgoing⟩,⟨2850,11,136,[false,true,false,false,false],.incoming⟩,⟨2851,11,136,[false,false,true,false,false],.incoming⟩,⟨2852,11,136,[false,false,false,true,false],.outgoing⟩,⟨2853,11,136,[true,false,false,false,false],.outgoing⟩,⟨2854,11,136,[false,false,false,false,true],.outgoing⟩,⟨2918,12,137,[false,false,true,false,false],.incoming⟩,⟨2919,12,137,[false,false,false,true,true],.incoming⟩,⟨2920,12,137,[false,false,false,false,true],.incoming⟩,⟨2921,12,137,[false,true,false,false,false],.outgoing⟩,⟨2922,12,137,[true,false,false,false,false],.outgoing⟩,⟨3008,13,138,[false,false,false,true,false],.incoming⟩,⟨3009,13,138,[false,false,false,false,true],.incoming⟩,⟨3010,13,138,[true,false,false,false,false],.incoming⟩,⟨3011,13,138,[false,false,true,false,false],.incoming⟩,⟨3012,13,138,[false,true,false,false,false],.outgoing⟩,⟨3079,14,139,[false,false,true],.incoming⟩,⟨3080,14,139,[false,true,false],.unknown⟩,⟨3081,14,139,[true,false,false],.outgoing⟩,⟨3150,15,140,[false,false,false,false,true],.incoming⟩,⟨3151,15,140,[false,true,false,false,false],.incoming⟩,⟨3152,15,140,[false,false,true,false,false],.outgoing⟩,⟨3153,15,140,[true,false,false,false,false],.outgoing⟩,⟨3154,15,140,[false,false,false,true,false],.outgoing⟩,⟨3253,16,141,[false,false,true,false],.incoming⟩,⟨3254,16,141,[false,true,false,false],.incoming⟩,⟨3255,16,141,[true,false,false,false],.outgoing⟩,⟨3256,16,141,[false,false,false,true],.outgoing⟩,⟨3319,17,142,[true,false],.incoming⟩,⟨3320,17,142,[false,true],.outgoing⟩,⟨3391,18,143,[true,false],.incoming⟩,⟨3392,18,143,[false,true],.outgoing⟩,⟨3486,19,144,[true,false,false],.outgoing⟩,⟨3487,19,144,[false,false,true],.outgoing⟩,⟨3488,19,144,[false,true,false],.outgoing⟩,⟨3556,20,145,[false,true,false],.incoming⟩,⟨3557,20,145,[true,false,false],.outgoing⟩,⟨3558,20,145,[false,false,true],.outgoing⟩,⟨3629,21,146,[true,false,false],.incoming⟩,⟨3630,21,146,[false,false,true],.outgoing⟩,⟨3631,21,146,[false,true,false],.outgoing⟩,⟨3744,22,147,[false,true,false,false],.incoming⟩,⟨3745,22,147,[true,false,false,true],.incoming⟩,⟨3746,22,147,[false,false,false,true],.outgoing⟩,⟨3747,22,147,[false,false,true,false],.outgoing⟩,⟨3812,23,148,[true,false],.outgoing⟩,⟨3813,23,148,[false,true],.outgoing⟩,⟨3896,24,149,[true],.outgoing⟩,⟨3992,25,150,[false,false,false,true],.incoming⟩,⟨3993,25,150,[false,false,true,false],.unknown⟩,⟨3994,25,150,[true,true,false,false],.unknown⟩,⟨3995,25,150,[false,true,false,false],.outgoing⟩,⟨4092,26,151,[true],.outgoing⟩,⟨4162,27,152,[false,true],.outgoing⟩,⟨4163,27,152,[true,false],.outgoing⟩,⟨4263,28,153,[false,false,true,false],.incoming⟩,⟨4264,28,153,[false,true,false,false],.incoming⟩,⟨4265,28,153,[false,false,false,true],.outgoing⟩,⟨4266,28,153,[true,false,false,false],.outgoing⟩,⟨4337,29,154,[true,false],.incoming⟩,⟨4338,29,154,[false,true],.outgoing⟩,⟨4411,30,155,[false,true],.incoming⟩,⟨4412,30,155,[true,false],.outgoing⟩,⟨4501,31,156,[false,true,false],.incoming⟩,⟨4502,31,156,[false,false,true],.incoming⟩,⟨4503,31,156,[true,false,false],.outgoing⟩,⟨4671,33,158,[true],.outgoing⟩,⟨4763,34,159,[false,true],.incoming⟩,⟨4764,34,159,[true,false],.incoming⟩,⟨4929,36,161,[false,true],.incoming⟩,⟨4930,36,161,[true,false],.outgoing⟩,⟨5027,37,162,[false,true],.incoming⟩,⟨5028,37,162,[true,false],.outgoing⟩,⟨5143,38,163,[true],.outgoing⟩,⟨5217,39,164,[true],.outgoing⟩,⟨5326,40,165,[false,true],.incoming⟩,⟨5327,40,165,[true,false],.outgoing⟩,⟨5441,41,166,[true,false],.outgoing⟩,⟨5442,41,166,[false,true],.outgoing⟩,⟨5540,42,167,[true],.outgoing⟩,⟨5635,43,168,[true,false],.outgoing⟩,⟨5636,43,168,[false,true],.outgoing⟩,⟨5772,44,169,[true],.outgoing⟩,⟨5862,45,170,[true],.incoming⟩,⟨5977,46,171,[true],.incoming⟩,⟨6296,49,174,[true],.incoming⟩,⟨6651,52,177,[true],.outgoing⟩,⟨7007,55,180,[true],.outgoing⟩,⟨7162,56,181,[true],.outgoing⟩,⟨7247,57,182,[true],.incoming⟩]
def row2435 : TargetRow := ⟨2435,5,130,[true],.outgoing⟩
def row2492 : TargetRow := ⟨2492,6,131,[true,false],.outgoing⟩
def row2493 : TargetRow := ⟨2493,6,131,[false,true],.outgoing⟩
def row2572 : TargetRow := ⟨2572,7,132,[true],.incoming⟩
def row2629 : TargetRow := ⟨2629,8,133,[true,false],.outgoing⟩
def row2630 : TargetRow := ⟨2630,8,133,[false,true],.outgoing⟩
def row2695 : TargetRow := ⟨2695,9,134,[false,false,true,false,false],.unknown⟩
def row2696 : TargetRow := ⟨2696,9,134,[false,false,false,true,false],.outgoing⟩
def row2697 : TargetRow := ⟨2697,9,134,[false,true,false,false,false],.outgoing⟩
def row2698 : TargetRow := ⟨2698,9,134,[true,false,false,false,false],.outgoing⟩
def row2699 : TargetRow := ⟨2699,9,134,[false,false,false,false,true],.outgoing⟩
def row2783 : TargetRow := ⟨2783,10,135,[false,false,false,true,false],.incoming⟩
def row2784 : TargetRow := ⟨2784,10,135,[true,false,false,false,false],.outgoing⟩
def row2785 : TargetRow := ⟨2785,10,135,[false,true,false,false,false],.outgoing⟩
def row2786 : TargetRow := ⟨2786,10,135,[false,false,true,false,false],.outgoing⟩
def row2787 : TargetRow := ⟨2787,10,135,[false,false,false,false,true],.outgoing⟩
def row2850 : TargetRow := ⟨2850,11,136,[false,true,false,false,false],.incoming⟩
def row2851 : TargetRow := ⟨2851,11,136,[false,false,true,false,false],.incoming⟩
def row2852 : TargetRow := ⟨2852,11,136,[false,false,false,true,false],.outgoing⟩
def row2853 : TargetRow := ⟨2853,11,136,[true,false,false,false,false],.outgoing⟩
def row2854 : TargetRow := ⟨2854,11,136,[false,false,false,false,true],.outgoing⟩
def row2918 : TargetRow := ⟨2918,12,137,[false,false,true,false,false],.incoming⟩
def row2919 : TargetRow := ⟨2919,12,137,[false,false,false,true,true],.incoming⟩
def row2920 : TargetRow := ⟨2920,12,137,[false,false,false,false,true],.incoming⟩
def row2921 : TargetRow := ⟨2921,12,137,[false,true,false,false,false],.outgoing⟩
def row2922 : TargetRow := ⟨2922,12,137,[true,false,false,false,false],.outgoing⟩
def row3008 : TargetRow := ⟨3008,13,138,[false,false,false,true,false],.incoming⟩
def row3009 : TargetRow := ⟨3009,13,138,[false,false,false,false,true],.incoming⟩
def row3010 : TargetRow := ⟨3010,13,138,[true,false,false,false,false],.incoming⟩
def row3011 : TargetRow := ⟨3011,13,138,[false,false,true,false,false],.incoming⟩
def row3012 : TargetRow := ⟨3012,13,138,[false,true,false,false,false],.outgoing⟩
def row3079 : TargetRow := ⟨3079,14,139,[false,false,true],.incoming⟩
def row3080 : TargetRow := ⟨3080,14,139,[false,true,false],.unknown⟩
def row3081 : TargetRow := ⟨3081,14,139,[true,false,false],.outgoing⟩
def row3150 : TargetRow := ⟨3150,15,140,[false,false,false,false,true],.incoming⟩
def row3151 : TargetRow := ⟨3151,15,140,[false,true,false,false,false],.incoming⟩
def row3152 : TargetRow := ⟨3152,15,140,[false,false,true,false,false],.outgoing⟩
def row3153 : TargetRow := ⟨3153,15,140,[true,false,false,false,false],.outgoing⟩
def row3154 : TargetRow := ⟨3154,15,140,[false,false,false,true,false],.outgoing⟩
def row3253 : TargetRow := ⟨3253,16,141,[false,false,true,false],.incoming⟩
def row3254 : TargetRow := ⟨3254,16,141,[false,true,false,false],.incoming⟩
def row3255 : TargetRow := ⟨3255,16,141,[true,false,false,false],.outgoing⟩
def row3256 : TargetRow := ⟨3256,16,141,[false,false,false,true],.outgoing⟩
def row3319 : TargetRow := ⟨3319,17,142,[true,false],.incoming⟩
def row3320 : TargetRow := ⟨3320,17,142,[false,true],.outgoing⟩
def row3391 : TargetRow := ⟨3391,18,143,[true,false],.incoming⟩
def row3392 : TargetRow := ⟨3392,18,143,[false,true],.outgoing⟩
def row3486 : TargetRow := ⟨3486,19,144,[true,false,false],.outgoing⟩
def row3487 : TargetRow := ⟨3487,19,144,[false,false,true],.outgoing⟩
def row3488 : TargetRow := ⟨3488,19,144,[false,true,false],.outgoing⟩
def row3556 : TargetRow := ⟨3556,20,145,[false,true,false],.incoming⟩
def row3557 : TargetRow := ⟨3557,20,145,[true,false,false],.outgoing⟩
def row3558 : TargetRow := ⟨3558,20,145,[false,false,true],.outgoing⟩
def row3629 : TargetRow := ⟨3629,21,146,[true,false,false],.incoming⟩
def row3630 : TargetRow := ⟨3630,21,146,[false,false,true],.outgoing⟩
def row3631 : TargetRow := ⟨3631,21,146,[false,true,false],.outgoing⟩
def row3744 : TargetRow := ⟨3744,22,147,[false,true,false,false],.incoming⟩
def row3745 : TargetRow := ⟨3745,22,147,[true,false,false,true],.incoming⟩
def row3746 : TargetRow := ⟨3746,22,147,[false,false,false,true],.outgoing⟩
def row3747 : TargetRow := ⟨3747,22,147,[false,false,true,false],.outgoing⟩
def row3812 : TargetRow := ⟨3812,23,148,[true,false],.outgoing⟩
def row3813 : TargetRow := ⟨3813,23,148,[false,true],.outgoing⟩
def row3896 : TargetRow := ⟨3896,24,149,[true],.outgoing⟩
def row3992 : TargetRow := ⟨3992,25,150,[false,false,false,true],.incoming⟩
def row3993 : TargetRow := ⟨3993,25,150,[false,false,true,false],.unknown⟩
def row3994 : TargetRow := ⟨3994,25,150,[true,true,false,false],.unknown⟩
def row3995 : TargetRow := ⟨3995,25,150,[false,true,false,false],.outgoing⟩
def row4092 : TargetRow := ⟨4092,26,151,[true],.outgoing⟩
def row4162 : TargetRow := ⟨4162,27,152,[false,true],.outgoing⟩
def row4163 : TargetRow := ⟨4163,27,152,[true,false],.outgoing⟩
def row4263 : TargetRow := ⟨4263,28,153,[false,false,true,false],.incoming⟩
def row4264 : TargetRow := ⟨4264,28,153,[false,true,false,false],.incoming⟩
def row4265 : TargetRow := ⟨4265,28,153,[false,false,false,true],.outgoing⟩
def row4266 : TargetRow := ⟨4266,28,153,[true,false,false,false],.outgoing⟩
def row4337 : TargetRow := ⟨4337,29,154,[true,false],.incoming⟩
def row4338 : TargetRow := ⟨4338,29,154,[false,true],.outgoing⟩
def row4411 : TargetRow := ⟨4411,30,155,[false,true],.incoming⟩
def row4412 : TargetRow := ⟨4412,30,155,[true,false],.outgoing⟩
def row4501 : TargetRow := ⟨4501,31,156,[false,true,false],.incoming⟩
def row4502 : TargetRow := ⟨4502,31,156,[false,false,true],.incoming⟩
def row4503 : TargetRow := ⟨4503,31,156,[true,false,false],.outgoing⟩
def row4671 : TargetRow := ⟨4671,33,158,[true],.outgoing⟩
def row4763 : TargetRow := ⟨4763,34,159,[false,true],.incoming⟩
def row4764 : TargetRow := ⟨4764,34,159,[true,false],.incoming⟩
def row4929 : TargetRow := ⟨4929,36,161,[false,true],.incoming⟩
def row4930 : TargetRow := ⟨4930,36,161,[true,false],.outgoing⟩
def row5027 : TargetRow := ⟨5027,37,162,[false,true],.incoming⟩
def row5028 : TargetRow := ⟨5028,37,162,[true,false],.outgoing⟩
def row5143 : TargetRow := ⟨5143,38,163,[true],.outgoing⟩
def row5217 : TargetRow := ⟨5217,39,164,[true],.outgoing⟩
def row5326 : TargetRow := ⟨5326,40,165,[false,true],.incoming⟩
def row5327 : TargetRow := ⟨5327,40,165,[true,false],.outgoing⟩
def row5441 : TargetRow := ⟨5441,41,166,[true,false],.outgoing⟩
def row5442 : TargetRow := ⟨5442,41,166,[false,true],.outgoing⟩
def row5540 : TargetRow := ⟨5540,42,167,[true],.outgoing⟩
def row5635 : TargetRow := ⟨5635,43,168,[true,false],.outgoing⟩
def row5636 : TargetRow := ⟨5636,43,168,[false,true],.outgoing⟩
def row5772 : TargetRow := ⟨5772,44,169,[true],.outgoing⟩
def row5862 : TargetRow := ⟨5862,45,170,[true],.incoming⟩
def row5977 : TargetRow := ⟨5977,46,171,[true],.incoming⟩
def row6296 : TargetRow := ⟨6296,49,174,[true],.incoming⟩
def row6651 : TargetRow := ⟨6651,52,177,[true],.outgoing⟩
def row7007 : TargetRow := ⟨7007,55,180,[true],.outgoing⟩
def row7162 : TargetRow := ⟨7162,56,181,[true],.outgoing⟩
def row7247 : TargetRow := ⟨7247,57,182,[true],.incoming⟩
theorem row2435_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f5.basis i ⟨0,by decide⟩ = row2435.raw[i.val]! := AggregateTargetInventory.Bases.row2435_coordinates
theorem row2492_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f6.basis i ⟨0,by decide⟩ = row2492.raw[i.val]! := AggregateTargetInventory.Bases.row2492_coordinates
theorem row2493_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f6.basis i ⟨1,by decide⟩ = row2493.raw[i.val]! := AggregateTargetInventory.Bases.row2493_coordinates
theorem row2572_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f7.basis i ⟨0,by decide⟩ = row2572.raw[i.val]! := AggregateTargetInventory.Bases.row2572_coordinates
theorem row2629_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f8.basis i ⟨0,by decide⟩ = row2629.raw[i.val]! := AggregateTargetInventory.Bases.row2629_coordinates
theorem row2630_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f8.basis i ⟨1,by decide⟩ = row2630.raw[i.val]! := AggregateTargetInventory.Bases.row2630_coordinates
theorem row2695_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f9.basis i ⟨0,by decide⟩ = row2695.raw[i.val]! := AggregateTargetInventory.Bases.row2695_coordinates
theorem row2696_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f9.basis i ⟨1,by decide⟩ = row2696.raw[i.val]! := AggregateTargetInventory.Bases.row2696_coordinates
theorem row2697_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f9.basis i ⟨2,by decide⟩ = row2697.raw[i.val]! := AggregateTargetInventory.Bases.row2697_coordinates
theorem row2698_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f9.basis i ⟨3,by decide⟩ = row2698.raw[i.val]! := AggregateTargetInventory.Bases.row2698_coordinates
theorem row2699_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f9.basis i ⟨4,by decide⟩ = row2699.raw[i.val]! := AggregateTargetInventory.Bases.row2699_coordinates
theorem row2783_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f10.basis i ⟨0,by decide⟩ = row2783.raw[i.val]! := AggregateTargetInventory.Bases.row2783_coordinates
theorem row2784_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f10.basis i ⟨1,by decide⟩ = row2784.raw[i.val]! := AggregateTargetInventory.Bases.row2784_coordinates
theorem row2785_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f10.basis i ⟨2,by decide⟩ = row2785.raw[i.val]! := AggregateTargetInventory.Bases.row2785_coordinates
theorem row2786_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f10.basis i ⟨3,by decide⟩ = row2786.raw[i.val]! := AggregateTargetInventory.Bases.row2786_coordinates
theorem row2787_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f10.basis i ⟨4,by decide⟩ = row2787.raw[i.val]! := AggregateTargetInventory.Bases.row2787_coordinates
theorem row2850_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f11.basis i ⟨0,by decide⟩ = row2850.raw[i.val]! := AggregateTargetInventory.Bases.row2850_coordinates
theorem row2851_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f11.basis i ⟨1,by decide⟩ = row2851.raw[i.val]! := AggregateTargetInventory.Bases.row2851_coordinates
theorem row2852_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f11.basis i ⟨2,by decide⟩ = row2852.raw[i.val]! := AggregateTargetInventory.Bases.row2852_coordinates
theorem row2853_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f11.basis i ⟨3,by decide⟩ = row2853.raw[i.val]! := AggregateTargetInventory.Bases.row2853_coordinates
theorem row2854_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f11.basis i ⟨4,by decide⟩ = row2854.raw[i.val]! := AggregateTargetInventory.Bases.row2854_coordinates
theorem row2918_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f12.basis i ⟨0,by decide⟩ = row2918.raw[i.val]! := AggregateTargetInventory.Bases.row2918_coordinates
theorem row2919_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f12.basis i ⟨1,by decide⟩ = row2919.raw[i.val]! := AggregateTargetInventory.Bases.row2919_coordinates
theorem row2920_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f12.basis i ⟨2,by decide⟩ = row2920.raw[i.val]! := AggregateTargetInventory.Bases.row2920_coordinates
theorem row2921_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f12.basis i ⟨3,by decide⟩ = row2921.raw[i.val]! := AggregateTargetInventory.Bases.row2921_coordinates
theorem row2922_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f12.basis i ⟨4,by decide⟩ = row2922.raw[i.val]! := AggregateTargetInventory.Bases.row2922_coordinates
theorem row3008_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f13.basis i ⟨0,by decide⟩ = row3008.raw[i.val]! := AggregateTargetInventory.Bases.row3008_coordinates
theorem row3009_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f13.basis i ⟨1,by decide⟩ = row3009.raw[i.val]! := AggregateTargetInventory.Bases.row3009_coordinates
theorem row3010_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f13.basis i ⟨2,by decide⟩ = row3010.raw[i.val]! := AggregateTargetInventory.Bases.row3010_coordinates
theorem row3011_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f13.basis i ⟨3,by decide⟩ = row3011.raw[i.val]! := AggregateTargetInventory.Bases.row3011_coordinates
theorem row3012_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f13.basis i ⟨4,by decide⟩ = row3012.raw[i.val]! := AggregateTargetInventory.Bases.row3012_coordinates
theorem row3079_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f14.basis i ⟨0,by decide⟩ = row3079.raw[i.val]! := AggregateTargetInventory.Bases.row3079_coordinates
theorem row3080_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f14.basis i ⟨1,by decide⟩ = row3080.raw[i.val]! := AggregateTargetInventory.Bases.row3080_coordinates
theorem row3081_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f14.basis i ⟨2,by decide⟩ = row3081.raw[i.val]! := AggregateTargetInventory.Bases.row3081_coordinates
theorem row3150_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f15.basis i ⟨0,by decide⟩ = row3150.raw[i.val]! := AggregateTargetInventory.Bases.row3150_coordinates
theorem row3151_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f15.basis i ⟨1,by decide⟩ = row3151.raw[i.val]! := AggregateTargetInventory.Bases.row3151_coordinates
theorem row3152_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f15.basis i ⟨2,by decide⟩ = row3152.raw[i.val]! := AggregateTargetInventory.Bases.row3152_coordinates
theorem row3153_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f15.basis i ⟨3,by decide⟩ = row3153.raw[i.val]! := AggregateTargetInventory.Bases.row3153_coordinates
theorem row3154_basis : ∀ i : Fin 5, AggregateTargetInventory.Bases.f15.basis i ⟨4,by decide⟩ = row3154.raw[i.val]! := AggregateTargetInventory.Bases.row3154_coordinates
theorem row3253_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f16.basis i ⟨0,by decide⟩ = row3253.raw[i.val]! := AggregateTargetInventory.Bases.row3253_coordinates
theorem row3254_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f16.basis i ⟨1,by decide⟩ = row3254.raw[i.val]! := AggregateTargetInventory.Bases.row3254_coordinates
theorem row3255_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f16.basis i ⟨2,by decide⟩ = row3255.raw[i.val]! := AggregateTargetInventory.Bases.row3255_coordinates
theorem row3256_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f16.basis i ⟨3,by decide⟩ = row3256.raw[i.val]! := AggregateTargetInventory.Bases.row3256_coordinates
theorem row3319_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f17.basis i ⟨0,by decide⟩ = row3319.raw[i.val]! := AggregateTargetInventory.Bases.row3319_coordinates
theorem row3320_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f17.basis i ⟨1,by decide⟩ = row3320.raw[i.val]! := AggregateTargetInventory.Bases.row3320_coordinates
theorem row3391_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f18.basis i ⟨0,by decide⟩ = row3391.raw[i.val]! := AggregateTargetInventory.Bases.row3391_coordinates
theorem row3392_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f18.basis i ⟨1,by decide⟩ = row3392.raw[i.val]! := AggregateTargetInventory.Bases.row3392_coordinates
theorem row3486_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f19.basis i ⟨0,by decide⟩ = row3486.raw[i.val]! := AggregateTargetInventory.Bases.row3486_coordinates
theorem row3487_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f19.basis i ⟨1,by decide⟩ = row3487.raw[i.val]! := AggregateTargetInventory.Bases.row3487_coordinates
theorem row3488_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f19.basis i ⟨2,by decide⟩ = row3488.raw[i.val]! := AggregateTargetInventory.Bases.row3488_coordinates
theorem row3556_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f20.basis i ⟨0,by decide⟩ = row3556.raw[i.val]! := AggregateTargetInventory.Bases.row3556_coordinates
theorem row3557_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f20.basis i ⟨1,by decide⟩ = row3557.raw[i.val]! := AggregateTargetInventory.Bases.row3557_coordinates
theorem row3558_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f20.basis i ⟨2,by decide⟩ = row3558.raw[i.val]! := AggregateTargetInventory.Bases.row3558_coordinates
theorem row3629_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f21.basis i ⟨0,by decide⟩ = row3629.raw[i.val]! := AggregateTargetInventory.Bases.row3629_coordinates
theorem row3630_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f21.basis i ⟨1,by decide⟩ = row3630.raw[i.val]! := AggregateTargetInventory.Bases.row3630_coordinates
theorem row3631_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f21.basis i ⟨2,by decide⟩ = row3631.raw[i.val]! := AggregateTargetInventory.Bases.row3631_coordinates
theorem row3744_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f22.basis i ⟨0,by decide⟩ = row3744.raw[i.val]! := AggregateTargetInventory.Bases.row3744_coordinates
theorem row3745_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f22.basis i ⟨1,by decide⟩ = row3745.raw[i.val]! := AggregateTargetInventory.Bases.row3745_coordinates
theorem row3746_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f22.basis i ⟨2,by decide⟩ = row3746.raw[i.val]! := AggregateTargetInventory.Bases.row3746_coordinates
theorem row3747_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f22.basis i ⟨3,by decide⟩ = row3747.raw[i.val]! := AggregateTargetInventory.Bases.row3747_coordinates
theorem row3812_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f23.basis i ⟨0,by decide⟩ = row3812.raw[i.val]! := AggregateTargetInventory.Bases.row3812_coordinates
theorem row3813_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f23.basis i ⟨1,by decide⟩ = row3813.raw[i.val]! := AggregateTargetInventory.Bases.row3813_coordinates
theorem row3896_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f24.basis i ⟨0,by decide⟩ = row3896.raw[i.val]! := AggregateTargetInventory.Bases.row3896_coordinates
theorem row3992_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f25.basis i ⟨0,by decide⟩ = row3992.raw[i.val]! := AggregateTargetInventory.Bases.row3992_coordinates
theorem row3993_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f25.basis i ⟨1,by decide⟩ = row3993.raw[i.val]! := AggregateTargetInventory.Bases.row3993_coordinates
theorem row3994_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f25.basis i ⟨2,by decide⟩ = row3994.raw[i.val]! := AggregateTargetInventory.Bases.row3994_coordinates
theorem row3995_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f25.basis i ⟨3,by decide⟩ = row3995.raw[i.val]! := AggregateTargetInventory.Bases.row3995_coordinates
theorem row4092_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f26.basis i ⟨0,by decide⟩ = row4092.raw[i.val]! := AggregateTargetInventory.Bases.row4092_coordinates
theorem row4162_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f27.basis i ⟨0,by decide⟩ = row4162.raw[i.val]! := AggregateTargetInventory.Bases.row4162_coordinates
theorem row4163_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f27.basis i ⟨1,by decide⟩ = row4163.raw[i.val]! := AggregateTargetInventory.Bases.row4163_coordinates
theorem row4263_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f28.basis i ⟨0,by decide⟩ = row4263.raw[i.val]! := AggregateTargetInventory.Bases.row4263_coordinates
theorem row4264_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f28.basis i ⟨1,by decide⟩ = row4264.raw[i.val]! := AggregateTargetInventory.Bases.row4264_coordinates
theorem row4265_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f28.basis i ⟨2,by decide⟩ = row4265.raw[i.val]! := AggregateTargetInventory.Bases.row4265_coordinates
theorem row4266_basis : ∀ i : Fin 4, AggregateTargetInventory.Bases.f28.basis i ⟨3,by decide⟩ = row4266.raw[i.val]! := AggregateTargetInventory.Bases.row4266_coordinates
theorem row4337_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f29.basis i ⟨0,by decide⟩ = row4337.raw[i.val]! := AggregateTargetInventory.Bases.row4337_coordinates
theorem row4338_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f29.basis i ⟨1,by decide⟩ = row4338.raw[i.val]! := AggregateTargetInventory.Bases.row4338_coordinates
theorem row4411_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f30.basis i ⟨0,by decide⟩ = row4411.raw[i.val]! := AggregateTargetInventory.Bases.row4411_coordinates
theorem row4412_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f30.basis i ⟨1,by decide⟩ = row4412.raw[i.val]! := AggregateTargetInventory.Bases.row4412_coordinates
theorem row4501_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f31.basis i ⟨0,by decide⟩ = row4501.raw[i.val]! := AggregateTargetInventory.Bases.row4501_coordinates
theorem row4502_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f31.basis i ⟨1,by decide⟩ = row4502.raw[i.val]! := AggregateTargetInventory.Bases.row4502_coordinates
theorem row4503_basis : ∀ i : Fin 3, AggregateTargetInventory.Bases.f31.basis i ⟨2,by decide⟩ = row4503.raw[i.val]! := AggregateTargetInventory.Bases.row4503_coordinates
theorem row4671_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f33.basis i ⟨0,by decide⟩ = row4671.raw[i.val]! := AggregateTargetInventory.Bases.row4671_coordinates
theorem row4763_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f34.basis i ⟨0,by decide⟩ = row4763.raw[i.val]! := AggregateTargetInventory.Bases.row4763_coordinates
theorem row4764_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f34.basis i ⟨1,by decide⟩ = row4764.raw[i.val]! := AggregateTargetInventory.Bases.row4764_coordinates
theorem row4929_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f36.basis i ⟨0,by decide⟩ = row4929.raw[i.val]! := AggregateTargetInventory.Bases.row4929_coordinates
theorem row4930_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f36.basis i ⟨1,by decide⟩ = row4930.raw[i.val]! := AggregateTargetInventory.Bases.row4930_coordinates
theorem row5027_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f37.basis i ⟨0,by decide⟩ = row5027.raw[i.val]! := AggregateTargetInventory.Bases.row5027_coordinates
theorem row5028_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f37.basis i ⟨1,by decide⟩ = row5028.raw[i.val]! := AggregateTargetInventory.Bases.row5028_coordinates
theorem row5143_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f38.basis i ⟨0,by decide⟩ = row5143.raw[i.val]! := AggregateTargetInventory.Bases.row5143_coordinates
theorem row5217_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f39.basis i ⟨0,by decide⟩ = row5217.raw[i.val]! := AggregateTargetInventory.Bases.row5217_coordinates
theorem row5326_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f40.basis i ⟨0,by decide⟩ = row5326.raw[i.val]! := AggregateTargetInventory.Bases.row5326_coordinates
theorem row5327_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f40.basis i ⟨1,by decide⟩ = row5327.raw[i.val]! := AggregateTargetInventory.Bases.row5327_coordinates
theorem row5441_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f41.basis i ⟨0,by decide⟩ = row5441.raw[i.val]! := AggregateTargetInventory.Bases.row5441_coordinates
theorem row5442_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f41.basis i ⟨1,by decide⟩ = row5442.raw[i.val]! := AggregateTargetInventory.Bases.row5442_coordinates
theorem row5540_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f42.basis i ⟨0,by decide⟩ = row5540.raw[i.val]! := AggregateTargetInventory.Bases.row5540_coordinates
theorem row5635_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f43.basis i ⟨0,by decide⟩ = row5635.raw[i.val]! := AggregateTargetInventory.Bases.row5635_coordinates
theorem row5636_basis : ∀ i : Fin 2, AggregateTargetInventory.Bases.f43.basis i ⟨1,by decide⟩ = row5636.raw[i.val]! := AggregateTargetInventory.Bases.row5636_coordinates
theorem row5772_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f44.basis i ⟨0,by decide⟩ = row5772.raw[i.val]! := AggregateTargetInventory.Bases.row5772_coordinates
theorem row5862_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f45.basis i ⟨0,by decide⟩ = row5862.raw[i.val]! := AggregateTargetInventory.Bases.row5862_coordinates
theorem row5977_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f46.basis i ⟨0,by decide⟩ = row5977.raw[i.val]! := AggregateTargetInventory.Bases.row5977_coordinates
theorem row6296_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f49.basis i ⟨0,by decide⟩ = row6296.raw[i.val]! := AggregateTargetInventory.Bases.row6296_coordinates
theorem row6651_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f52.basis i ⟨0,by decide⟩ = row6651.raw[i.val]! := AggregateTargetInventory.Bases.row6651_coordinates
theorem row7007_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f55.basis i ⟨0,by decide⟩ = row7007.raw[i.val]! := AggregateTargetInventory.Bases.row7007_coordinates
theorem row7162_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f56.basis i ⟨0,by decide⟩ = row7162.raw[i.val]! := AggregateTargetInventory.Bases.row7162_coordinates
theorem row7247_basis : ∀ i : Fin 1, AggregateTargetInventory.Bases.f57.basis i ⟨0,by decide⟩ = row7247.raw[i.val]! := AggregateTargetInventory.Bases.row7247_coordinates
def accepted : List Item := [⟨row2435,IndexedHighD2Certificates.event2435⟩,⟨row2492,IndexedHighD2Certificates.event2492⟩,⟨row2493,IndexedHighD2Certificates.event2493⟩,⟨row2572,IndexedHighD2Certificates.event2572⟩,⟨row2629,IndexedHighD2Certificates.event2629⟩,⟨row2630,IndexedHighD2Certificates.event2630⟩,⟨row2698,IndexedHighD2Certificates.event2698⟩,⟨row2699,IndexedHighD2Certificates.event2699⟩,⟨row2783,IndexedHighD2Certificates.event2783⟩,⟨row2784,IndexedHighD2Certificates.event2784⟩,⟨row2785,IndexedHighD2Certificates.event2785⟩,⟨row2786,IndexedHighD2Certificates.event2786⟩,⟨row2787,IndexedHighD2Certificates.event2787⟩,⟨row2850,IndexedHighD2Certificates.event2850⟩,⟨row2851,IndexedHighD2Certificates.event2851⟩,⟨row2853,IndexedHighD2Certificates.event2853⟩,⟨row2854,IndexedHighD2Certificates.event2854⟩,⟨row2918,IndexedHighD2Certificates.event2918⟩,⟨row2919,IndexedHighD2Certificates.event2919⟩,⟨row2920,IndexedHighD2Certificates.event2920⟩,⟨row2921,IndexedHighD2Certificates.event2921⟩,⟨row2922,IndexedHighD2Certificates.event2922⟩,⟨row3008,IndexedHighD2Certificates.event3008⟩,⟨row3009,IndexedHighD2Certificates.event3009⟩,⟨row3010,IndexedHighD2Certificates.event3010⟩,⟨row3011,IndexedHighD2Certificates.event3011⟩,⟨row3012,IndexedHighD2Certificates.event3012⟩,⟨row3079,IndexedHighD2Certificates.event3079⟩,⟨row3081,IndexedHighD2Certificates.event3081⟩,⟨row3150,IndexedHighD2Certificates.event3150⟩,⟨row3153,IndexedHighD2Certificates.event3153⟩,⟨row3154,IndexedHighD2Certificates.event3154⟩,⟨row3253,IndexedHighD2Certificates.event3253⟩,⟨row3254,IndexedHighD2Certificates.event3254⟩,⟨row3255,IndexedHighD2Certificates.event3255⟩,⟨row3256,IndexedHighD2Certificates.event3256⟩,⟨row3319,IndexedHighD2Certificates.event3319⟩,⟨row3320,IndexedHighD2Certificates.event3320⟩,⟨row3392,IndexedHighD2Certificates.event3392⟩,⟨row3486,IndexedHighD2Certificates.event3486⟩,⟨row3487,IndexedHighD2Certificates.event3487⟩,⟨row3488,IndexedHighD2Certificates.event3488⟩,⟨row3556,IndexedHighD2Certificates.event3556⟩,⟨row3557,IndexedHighD2Certificates.event3557⟩,⟨row3558,IndexedHighD2Certificates.event3558⟩,⟨row3629,IndexedHighD2Certificates.event3629⟩,⟨row3630,IndexedHighD2Certificates.event3630⟩,⟨row3631,IndexedHighD2Certificates.event3631⟩,⟨row3744,IndexedHighD2Certificates.event3744⟩,⟨row3745,IndexedHighD2Certificates.event3745⟩,⟨row3746,IndexedHighD2Certificates.event3746⟩,⟨row3747,IndexedHighD2Certificates.event3747⟩,⟨row3812,IndexedHighD2Certificates.event3812⟩,⟨row3813,IndexedHighD2Certificates.event3813⟩,⟨row3896,IndexedHighD2Certificates.event3896⟩,⟨row3995,IndexedHighD2Certificates.event3995⟩,⟨row4092,IndexedHighD2Certificates.event4092⟩,⟨row4162,IndexedHighD2Certificates.event4162⟩,⟨row4163,IndexedHighD2Certificates.event4163⟩,⟨row4263,IndexedHighD2Certificates.event4263⟩,⟨row4264,IndexedHighD2Certificates.event4264⟩,⟨row4265,IndexedHighD2Certificates.event4265⟩,⟨row4266,IndexedHighD2Certificates.event4266⟩,⟨row4337,IndexedHighD2Certificates.event4337⟩,⟨row4338,IndexedHighD2Certificates.event4338⟩,⟨row4411,IndexedHighD2Certificates.event4411⟩,⟨row4412,IndexedHighD2Certificates.event4412⟩,⟨row4501,IndexedHighD2Certificates.event4501⟩,⟨row4502,IndexedHighD2Certificates.event4502⟩,⟨row4503,IndexedHighD2Certificates.event4503⟩,⟨row4671,IndexedHighD2Certificates.event4671⟩,⟨row4763,IndexedHighD2Certificates.event4763⟩,⟨row4764,IndexedHighD2Certificates.event4764⟩,⟨row4929,IndexedHighD2Certificates.event4929⟩,⟨row4930,IndexedHighD2Certificates.event4930⟩,⟨row5027,IndexedHighD2Certificates.event5027⟩,⟨row5028,IndexedHighD2Certificates.event5028⟩,⟨row5143,IndexedHighD2Certificates.event5143⟩,⟨row5217,IndexedHighD2Certificates.event5217⟩,⟨row5326,IndexedHighD2Certificates.event5326⟩,⟨row5327,IndexedHighD2Certificates.event5327⟩,⟨row5441,IndexedHighD2Certificates.event5441⟩,⟨row5442,IndexedHighD2Certificates.event5442⟩,⟨row5540,IndexedHighD2Certificates.event5540⟩,⟨row5635,IndexedHighD2Certificates.event5635⟩,⟨row5636,IndexedHighD2Certificates.event5636⟩,⟨row5772,IndexedHighD2Certificates.event5772⟩,⟨row5862,IndexedHighD2Certificates.event5862⟩,⟨row5977,IndexedHighD2Certificates.event5977⟩,⟨row6296,IndexedHighD2Certificates.event6296⟩,⟨row6651,IndexedHighD2Certificates.event6651⟩,⟨row7007,IndexedHighD2Certificates.event7007⟩,⟨row7162,IndexedHighD2Certificates.event7162⟩,⟨row7247,IndexedHighD2Certificates.event7247⟩,⟨row3391,IndexedD5Certificates.event3391⟩]
def unresolved : List Nat := [2696,2697,2852,3151,3152,3992]
def sentinel : List Nat := [2695,3080,3993,3994]
theorem accepted_wires : accepted.map Item.wire = IndexedD5Certificates.events := rfl
theorem matching : ∀ item ∈ accepted, Matches item.row item.wire := by decide
theorem all_valid : ∀ item ∈ accepted, item.Valid IndexedD5Certificates.family := by
  intro item member
  refine ⟨?_, matching item member⟩
  apply IndexedD5Certificates.all_events item.wire
  rw [← accepted_wires]
  exact List.mem_map_of_mem member
theorem all_obstructions : ∀ item ∈ accepted, Obstruction IndexedD5Certificates.family item.row item.wire := by
  intro item member
  exact obstruction_sound _ item (all_valid item member)
theorem inventory_unique : (inventory.map TargetRow.id).Nodup := by decide
theorem accepted_unique : (accepted.map (fun item => item.row.id)).Nodup := by decide
theorem accepted_in_inventory : ∀ item ∈ accepted, item.row ∈ inventory := by decide
theorem inventory_count : inventory.length = 105 := by decide
theorem accepted_count : accepted.length = 95 := by decide
theorem outgoing_count : (accepted.filter (fun item => item.row.role == .outgoing)).length = 59 := by decide
theorem incoming_count : (accepted.filter (fun item => item.row.role == .incoming)).length = 36 := by decide
theorem exact_residual : (inventory.filter (fun row => !(accepted.map (fun item => item.row.id)).contains row.id)).map TargetRow.id = [2695,2696,2697,2852,3080,3151,3152,3992,3993,3994] := by decide
theorem residual_partition : ∀ row ∈ inventory, (accepted.map (fun item => item.row.id)).contains row.id = false ↔ row.id ∈ unresolved ∨ row.id ∈ sentinel := by decide
def missingIncomingTarget : List Nat := [3010,3011,3254,3629,3744,3745,4764,4929,5862,5977,6296,7247,3391]
def suppliedIncomingTarget : List Nat := [2572,2783,2850,2851,2918,2919,2920,3008,3009,3079,3150,3253,3319,3556,4263,4264,4337,4411,4501,4502,4763,5027,5326]
theorem missing_target_count : missingIncomingTarget.length = 13 := by decide
theorem supplied_target_count : suppliedIncomingTarget.length = 23 := by decide
theorem incoming_partition : ∀ item ∈ accepted, item.row.role = .incoming ↔ item.row.id ∈ missingIncomingTarget ∨ item.row.id ∈ suppliedIncomingTarget := by decide
theorem incoming_target_disjoint : ∀ id ∈ missingIncomingTarget, id ∉ suppliedIncomingTarget := by decide
#print axioms all_obstructions
end AggregateEliminationCertificates.Data
