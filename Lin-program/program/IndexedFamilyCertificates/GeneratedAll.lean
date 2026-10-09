import IndexedFamilyCertificates.GeneratedBatch0
import IndexedFamilyCertificates.GeneratedBatch1
import IndexedFamilyCertificates.GeneratedBatch2
import IndexedFamilyCertificates.GeneratedBatch3
import IndexedFamilyCertificates.GeneratedBatch4
import IndexedFamilyCertificates.GeneratedBatch5
import IndexedFamilyCertificates.GeneratedBatch6
import IndexedFamilyCertificates.GeneratedBatch7
import IndexedFamilyCertificates.GeneratedBatch8
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace IndexedFamilyCertificates.Generated
def events : List BoundWire := [event2435,event2492,event2493,event2572,event2629,event2630,event2698,event2699,event2783,event2784,event2785,event2786,event2787,event2850,event2851,event2853,event2854,event2918,event2919,event2920,event2921,event2922,event3008,event3009,event3010,event3011,event3012,event3079,event3081,event3150,event3153,event3154,event3253,event3254,event3255,event3256,event3319,event3320,event3392,event3486,event3487,event3488,event3556,event3557,event3558,event3629,event3630,event3631,event3744,event3745,event3746,event3747,event3812,event3813,event3896,event3995,event4092,event4162,event4163,event4263,event4264,event4265,event4266,event4337,event4338,event4411,event4412,event4501,event4502,event4503,event4671,event4763,event4764,event4929,event4930,event5027,event5028,event5143,event5217,event5326,event5327,event5441,event5442,event5540,event5635,event5636,event5772,event5862,event5977,event6296]
theorem events_count : events.length = 90 := by decide
theorem all_events_valid : ∀ event ∈ events, event.Valid family := by
  intro event h
  simp only [events, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact event2435_valid
  · exact event2492_valid
  · exact event2493_valid
  · exact event2572_valid
  · exact event2629_valid
  · exact event2630_valid
  · exact event2698_valid
  · exact event2699_valid
  · exact event2783_valid
  · exact event2784_valid
  · exact event2785_valid
  · exact event2786_valid
  · exact event2787_valid
  · exact event2850_valid
  · exact event2851_valid
  · exact event2853_valid
  · exact event2854_valid
  · exact event2918_valid
  · exact event2919_valid
  · exact event2920_valid
  · exact event2921_valid
  · exact event2922_valid
  · exact event3008_valid
  · exact event3009_valid
  · exact event3010_valid
  · exact event3011_valid
  · exact event3012_valid
  · exact event3079_valid
  · exact event3081_valid
  · exact event3150_valid
  · exact event3153_valid
  · exact event3154_valid
  · exact event3253_valid
  · exact event3254_valid
  · exact event3255_valid
  · exact event3256_valid
  · exact event3319_valid
  · exact event3320_valid
  · exact event3392_valid
  · exact event3486_valid
  · exact event3487_valid
  · exact event3488_valid
  · exact event3556_valid
  · exact event3557_valid
  · exact event3558_valid
  · exact event3629_valid
  · exact event3630_valid
  · exact event3631_valid
  · exact event3744_valid
  · exact event3745_valid
  · exact event3746_valid
  · exact event3747_valid
  · exact event3812_valid
  · exact event3813_valid
  · exact event3896_valid
  · exact event3995_valid
  · exact event4092_valid
  · exact event4162_valid
  · exact event4163_valid
  · exact event4263_valid
  · exact event4264_valid
  · exact event4265_valid
  · exact event4266_valid
  · exact event4337_valid
  · exact event4338_valid
  · exact event4411_valid
  · exact event4412_valid
  · exact event4501_valid
  · exact event4502_valid
  · exact event4503_valid
  · exact event4671_valid
  · exact event4763_valid
  · exact event4764_valid
  · exact event4929_valid
  · exact event4930_valid
  · exact event5027_valid
  · exact event5028_valid
  · exact event5143_valid
  · exact event5217_valid
  · exact event5326_valid
  · exact event5327_valid
  · exact event5441_valid
  · exact event5442_valid
  · exact event5540_valid
  · exact event5635_valid
  · exact event5636_valid
  · exact event5772_valid
  · exact event5862_valid
  · exact event5977_valid
  · exact event6296_valid
#print axioms all_events_valid
end IndexedFamilyCertificates.Generated
