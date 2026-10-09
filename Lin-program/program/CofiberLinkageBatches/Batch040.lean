import CofiberE2Certificates.Linkage
import CofiberE2Batches.Batch050
import CofiberE2Batches.Batch051
import CofiberE2Batches.Batch055
import CofiberE2Batches.Batch056
import CofiberE2Batches.Batch130
import CofiberE2Batches.Batch131
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
namespace CofiberLinkageBatches.Batch040
theorem incomingLink2400 : CofiberE2Batches.Batch056.dependency4502.algebra.mat = CofiberE2Batches.Batch130.exact2371.a := by decide
theorem outgoingLink2400 : CofiberE2Batches.Batch056.dependency4503.algebra.mat = CofiberE2Batches.Batch130.exact2371.b := by decide
theorem linkedExact2400 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4503.algebra.mat CofiberE2Batches.Batch056.dependency4502.algebra.mat := by
  rw [incomingLink2400, outgoingLink2400]
  exact CofiberE2Batches.Batch130.exact2371valid.2
theorem incomingValid2400 : CofiberE2Batches.Batch056.dependency4502.Valid := CofiberE2Batches.Batch056.dependency4502valid
theorem outgoingValid2400 : CofiberE2Batches.Batch056.dependency4503.Valid := CofiberE2Batches.Batch056.dependency4503valid
theorem incomingLink2401 : CofiberE2Batches.Batch056.dependency4504.algebra.mat = CofiberE2Batches.Batch130.exact2372.a := by decide
theorem outgoingLink2401 : CofiberE2Batches.Batch056.dependency4505.algebra.mat = CofiberE2Batches.Batch130.exact2372.b := by decide
theorem linkedExact2401 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4505.algebra.mat CofiberE2Batches.Batch056.dependency4504.algebra.mat := by
  rw [incomingLink2401, outgoingLink2401]
  exact CofiberE2Batches.Batch130.exact2372valid.2
theorem incomingValid2401 : CofiberE2Batches.Batch056.dependency4504.Valid := CofiberE2Batches.Batch056.dependency4504valid
theorem outgoingValid2401 : CofiberE2Batches.Batch056.dependency4505.Valid := CofiberE2Batches.Batch056.dependency4505valid
theorem incomingLink2402 : CofiberE2Batches.Batch055.dependency4455.algebra.mat = CofiberE2Batches.Batch130.exact2373.a := by decide
theorem outgoingLink2402 : CofiberE2Batches.Batch050.dependency4018.algebra.mat = CofiberE2Batches.Batch130.exact2373.b := by decide
theorem linkedExact2402 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4018.algebra.mat CofiberE2Batches.Batch055.dependency4455.algebra.mat := by
  rw [incomingLink2402, outgoingLink2402]
  exact CofiberE2Batches.Batch130.exact2373valid.2
theorem incomingValid2402 : CofiberE2Batches.Batch055.dependency4455.Valid := CofiberE2Batches.Batch055.dependency4455valid
theorem outgoingValid2402 : CofiberE2Batches.Batch050.dependency4018.Valid := CofiberE2Batches.Batch050.dependency4018valid
theorem incomingLink2403 : CofiberE2Batches.Batch055.dependency4457.algebra.mat = CofiberE2Batches.Batch130.exact2374.a := by decide
theorem outgoingLink2403 : CofiberE2Batches.Batch050.dependency4021.algebra.mat = CofiberE2Batches.Batch130.exact2374.b := by decide
theorem linkedExact2403 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4021.algebra.mat CofiberE2Batches.Batch055.dependency4457.algebra.mat := by
  rw [incomingLink2403, outgoingLink2403]
  exact CofiberE2Batches.Batch130.exact2374valid.2
theorem incomingValid2403 : CofiberE2Batches.Batch055.dependency4457.Valid := CofiberE2Batches.Batch055.dependency4457valid
theorem outgoingValid2403 : CofiberE2Batches.Batch050.dependency4021.Valid := CofiberE2Batches.Batch050.dependency4021valid
theorem incomingLink2404 : CofiberE2Batches.Batch055.dependency4459.algebra.mat = CofiberE2Batches.Batch130.exact2375.a := by decide
theorem outgoingLink2404 : CofiberE2Batches.Batch050.dependency4024.algebra.mat = CofiberE2Batches.Batch130.exact2375.b := by decide
theorem linkedExact2404 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4024.algebra.mat CofiberE2Batches.Batch055.dependency4459.algebra.mat := by
  rw [incomingLink2404, outgoingLink2404]
  exact CofiberE2Batches.Batch130.exact2375valid.2
theorem incomingValid2404 : CofiberE2Batches.Batch055.dependency4459.Valid := CofiberE2Batches.Batch055.dependency4459valid
theorem outgoingValid2404 : CofiberE2Batches.Batch050.dependency4024.Valid := CofiberE2Batches.Batch050.dependency4024valid
theorem incomingLink2405 : CofiberE2Batches.Batch055.dependency4461.algebra.mat = CofiberE2Batches.Batch130.exact2376.a := by decide
theorem outgoingLink2405 : CofiberE2Batches.Batch050.dependency4027.algebra.mat = CofiberE2Batches.Batch130.exact2376.b := by decide
theorem linkedExact2405 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4027.algebra.mat CofiberE2Batches.Batch055.dependency4461.algebra.mat := by
  rw [incomingLink2405, outgoingLink2405]
  exact CofiberE2Batches.Batch130.exact2376valid.2
theorem incomingValid2405 : CofiberE2Batches.Batch055.dependency4461.Valid := CofiberE2Batches.Batch055.dependency4461valid
theorem outgoingValid2405 : CofiberE2Batches.Batch050.dependency4027.Valid := CofiberE2Batches.Batch050.dependency4027valid
theorem incomingLink2406 : CofiberE2Batches.Batch055.dependency4463.algebra.mat = CofiberE2Batches.Batch130.exact2377.a := by decide
theorem outgoingLink2406 : CofiberE2Batches.Batch050.dependency4030.algebra.mat = CofiberE2Batches.Batch130.exact2377.b := by decide
theorem linkedExact2406 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4030.algebra.mat CofiberE2Batches.Batch055.dependency4463.algebra.mat := by
  rw [incomingLink2406, outgoingLink2406]
  exact CofiberE2Batches.Batch130.exact2377valid.2
theorem incomingValid2406 : CofiberE2Batches.Batch055.dependency4463.Valid := CofiberE2Batches.Batch055.dependency4463valid
theorem outgoingValid2406 : CofiberE2Batches.Batch050.dependency4030.Valid := CofiberE2Batches.Batch050.dependency4030valid
theorem incomingLink2407 : CofiberE2Batches.Batch055.dependency4465.algebra.mat = CofiberE2Batches.Batch130.exact2378.a := by decide
theorem outgoingLink2407 : CofiberE2Batches.Batch050.dependency4033.algebra.mat = CofiberE2Batches.Batch130.exact2378.b := by decide
theorem linkedExact2407 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4033.algebra.mat CofiberE2Batches.Batch055.dependency4465.algebra.mat := by
  rw [incomingLink2407, outgoingLink2407]
  exact CofiberE2Batches.Batch130.exact2378valid.2
theorem incomingValid2407 : CofiberE2Batches.Batch055.dependency4465.Valid := CofiberE2Batches.Batch055.dependency4465valid
theorem outgoingValid2407 : CofiberE2Batches.Batch050.dependency4033.Valid := CofiberE2Batches.Batch050.dependency4033valid
theorem incomingLink2408 : CofiberE2Batches.Batch055.dependency4467.algebra.mat = CofiberE2Batches.Batch130.exact2379.a := by decide
theorem outgoingLink2408 : CofiberE2Batches.Batch050.dependency4036.algebra.mat = CofiberE2Batches.Batch130.exact2379.b := by decide
theorem linkedExact2408 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4036.algebra.mat CofiberE2Batches.Batch055.dependency4467.algebra.mat := by
  rw [incomingLink2408, outgoingLink2408]
  exact CofiberE2Batches.Batch130.exact2379valid.2
theorem incomingValid2408 : CofiberE2Batches.Batch055.dependency4467.Valid := CofiberE2Batches.Batch055.dependency4467valid
theorem outgoingValid2408 : CofiberE2Batches.Batch050.dependency4036.Valid := CofiberE2Batches.Batch050.dependency4036valid
theorem incomingLink2409 : CofiberE2Batches.Batch055.dependency4469.algebra.mat = CofiberE2Batches.Batch130.exact2380.a := by decide
theorem outgoingLink2409 : CofiberE2Batches.Batch050.dependency4039.algebra.mat = CofiberE2Batches.Batch130.exact2380.b := by decide
theorem linkedExact2409 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4039.algebra.mat CofiberE2Batches.Batch055.dependency4469.algebra.mat := by
  rw [incomingLink2409, outgoingLink2409]
  exact CofiberE2Batches.Batch130.exact2380valid.2
theorem incomingValid2409 : CofiberE2Batches.Batch055.dependency4469.Valid := CofiberE2Batches.Batch055.dependency4469valid
theorem outgoingValid2409 : CofiberE2Batches.Batch050.dependency4039.Valid := CofiberE2Batches.Batch050.dependency4039valid
theorem incomingLink2410 : CofiberE2Batches.Batch055.dependency4471.algebra.mat = CofiberE2Batches.Batch130.exact2381.a := by decide
theorem outgoingLink2410 : CofiberE2Batches.Batch050.dependency4042.algebra.mat = CofiberE2Batches.Batch130.exact2381.b := by decide
theorem linkedExact2410 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4042.algebra.mat CofiberE2Batches.Batch055.dependency4471.algebra.mat := by
  rw [incomingLink2410, outgoingLink2410]
  exact CofiberE2Batches.Batch130.exact2381valid.2
theorem incomingValid2410 : CofiberE2Batches.Batch055.dependency4471.Valid := CofiberE2Batches.Batch055.dependency4471valid
theorem outgoingValid2410 : CofiberE2Batches.Batch050.dependency4042.Valid := CofiberE2Batches.Batch050.dependency4042valid
theorem incomingLink2411 : CofiberE2Batches.Batch055.dependency4473.algebra.mat = CofiberE2Batches.Batch130.exact2382.a := by decide
theorem outgoingLink2411 : CofiberE2Batches.Batch050.dependency4045.algebra.mat = CofiberE2Batches.Batch130.exact2382.b := by decide
theorem linkedExact2411 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4045.algebra.mat CofiberE2Batches.Batch055.dependency4473.algebra.mat := by
  rw [incomingLink2411, outgoingLink2411]
  exact CofiberE2Batches.Batch130.exact2382valid.2
theorem incomingValid2411 : CofiberE2Batches.Batch055.dependency4473.Valid := CofiberE2Batches.Batch055.dependency4473valid
theorem outgoingValid2411 : CofiberE2Batches.Batch050.dependency4045.Valid := CofiberE2Batches.Batch050.dependency4045valid
theorem incomingLink2412 : CofiberE2Batches.Batch055.dependency4475.algebra.mat = CofiberE2Batches.Batch130.exact2383.a := by decide
theorem outgoingLink2412 : CofiberE2Batches.Batch050.dependency4048.algebra.mat = CofiberE2Batches.Batch130.exact2383.b := by decide
theorem linkedExact2412 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4048.algebra.mat CofiberE2Batches.Batch055.dependency4475.algebra.mat := by
  rw [incomingLink2412, outgoingLink2412]
  exact CofiberE2Batches.Batch130.exact2383valid.2
theorem incomingValid2412 : CofiberE2Batches.Batch055.dependency4475.Valid := CofiberE2Batches.Batch055.dependency4475valid
theorem outgoingValid2412 : CofiberE2Batches.Batch050.dependency4048.Valid := CofiberE2Batches.Batch050.dependency4048valid
theorem incomingLink2413 : CofiberE2Batches.Batch055.dependency4477.algebra.mat = CofiberE2Batches.Batch130.exact2384.a := by decide
theorem outgoingLink2413 : CofiberE2Batches.Batch050.dependency4051.algebra.mat = CofiberE2Batches.Batch130.exact2384.b := by decide
theorem linkedExact2413 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4051.algebra.mat CofiberE2Batches.Batch055.dependency4477.algebra.mat := by
  rw [incomingLink2413, outgoingLink2413]
  exact CofiberE2Batches.Batch130.exact2384valid.2
theorem incomingValid2413 : CofiberE2Batches.Batch055.dependency4477.Valid := CofiberE2Batches.Batch055.dependency4477valid
theorem outgoingValid2413 : CofiberE2Batches.Batch050.dependency4051.Valid := CofiberE2Batches.Batch050.dependency4051valid
theorem incomingLink2414 : CofiberE2Batches.Batch055.dependency4479.algebra.mat = CofiberE2Batches.Batch130.exact2385.a := by decide
theorem outgoingLink2414 : CofiberE2Batches.Batch050.dependency4054.algebra.mat = CofiberE2Batches.Batch130.exact2385.b := by decide
theorem linkedExact2414 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4054.algebra.mat CofiberE2Batches.Batch055.dependency4479.algebra.mat := by
  rw [incomingLink2414, outgoingLink2414]
  exact CofiberE2Batches.Batch130.exact2385valid.2
theorem incomingValid2414 : CofiberE2Batches.Batch055.dependency4479.Valid := CofiberE2Batches.Batch055.dependency4479valid
theorem outgoingValid2414 : CofiberE2Batches.Batch050.dependency4054.Valid := CofiberE2Batches.Batch050.dependency4054valid
theorem incomingLink2415 : CofiberE2Batches.Batch056.dependency4481.algebra.mat = CofiberE2Batches.Batch130.exact2386.a := by decide
theorem outgoingLink2415 : CofiberE2Batches.Batch050.dependency4057.algebra.mat = CofiberE2Batches.Batch130.exact2386.b := by decide
theorem linkedExact2415 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4057.algebra.mat CofiberE2Batches.Batch056.dependency4481.algebra.mat := by
  rw [incomingLink2415, outgoingLink2415]
  exact CofiberE2Batches.Batch130.exact2386valid.2
theorem incomingValid2415 : CofiberE2Batches.Batch056.dependency4481.Valid := CofiberE2Batches.Batch056.dependency4481valid
theorem outgoingValid2415 : CofiberE2Batches.Batch050.dependency4057.Valid := CofiberE2Batches.Batch050.dependency4057valid
theorem incomingLink2416 : CofiberE2Batches.Batch056.dependency4483.algebra.mat = CofiberE2Batches.Batch130.exact2387.a := by decide
theorem outgoingLink2416 : CofiberE2Batches.Batch050.dependency4060.algebra.mat = CofiberE2Batches.Batch130.exact2387.b := by decide
theorem linkedExact2416 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4060.algebra.mat CofiberE2Batches.Batch056.dependency4483.algebra.mat := by
  rw [incomingLink2416, outgoingLink2416]
  exact CofiberE2Batches.Batch130.exact2387valid.2
theorem incomingValid2416 : CofiberE2Batches.Batch056.dependency4483.Valid := CofiberE2Batches.Batch056.dependency4483valid
theorem outgoingValid2416 : CofiberE2Batches.Batch050.dependency4060.Valid := CofiberE2Batches.Batch050.dependency4060valid
theorem incomingLink2417 : CofiberE2Batches.Batch056.dependency4485.algebra.mat = CofiberE2Batches.Batch130.exact2388.a := by decide
theorem outgoingLink2417 : CofiberE2Batches.Batch050.dependency4063.algebra.mat = CofiberE2Batches.Batch130.exact2388.b := by decide
theorem linkedExact2417 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4063.algebra.mat CofiberE2Batches.Batch056.dependency4485.algebra.mat := by
  rw [incomingLink2417, outgoingLink2417]
  exact CofiberE2Batches.Batch130.exact2388valid.2
theorem incomingValid2417 : CofiberE2Batches.Batch056.dependency4485.Valid := CofiberE2Batches.Batch056.dependency4485valid
theorem outgoingValid2417 : CofiberE2Batches.Batch050.dependency4063.Valid := CofiberE2Batches.Batch050.dependency4063valid
theorem incomingLink2418 : CofiberE2Batches.Batch056.dependency4487.algebra.mat = CofiberE2Batches.Batch130.exact2389.a := by decide
theorem outgoingLink2418 : CofiberE2Batches.Batch050.dependency4066.algebra.mat = CofiberE2Batches.Batch130.exact2389.b := by decide
theorem linkedExact2418 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4066.algebra.mat CofiberE2Batches.Batch056.dependency4487.algebra.mat := by
  rw [incomingLink2418, outgoingLink2418]
  exact CofiberE2Batches.Batch130.exact2389valid.2
theorem incomingValid2418 : CofiberE2Batches.Batch056.dependency4487.Valid := CofiberE2Batches.Batch056.dependency4487valid
theorem outgoingValid2418 : CofiberE2Batches.Batch050.dependency4066.Valid := CofiberE2Batches.Batch050.dependency4066valid
theorem incomingLink2419 : CofiberE2Batches.Batch056.dependency4489.algebra.mat = CofiberE2Batches.Batch130.exact2390.a := by decide
theorem outgoingLink2419 : CofiberE2Batches.Batch050.dependency4069.algebra.mat = CofiberE2Batches.Batch130.exact2390.b := by decide
theorem linkedExact2419 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4069.algebra.mat CofiberE2Batches.Batch056.dependency4489.algebra.mat := by
  rw [incomingLink2419, outgoingLink2419]
  exact CofiberE2Batches.Batch130.exact2390valid.2
theorem incomingValid2419 : CofiberE2Batches.Batch056.dependency4489.Valid := CofiberE2Batches.Batch056.dependency4489valid
theorem outgoingValid2419 : CofiberE2Batches.Batch050.dependency4069.Valid := CofiberE2Batches.Batch050.dependency4069valid
theorem incomingLink2420 : CofiberE2Batches.Batch056.dependency4491.algebra.mat = CofiberE2Batches.Batch130.exact2391.a := by decide
theorem outgoingLink2420 : CofiberE2Batches.Batch050.dependency4072.algebra.mat = CofiberE2Batches.Batch130.exact2391.b := by decide
theorem linkedExact2420 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4072.algebra.mat CofiberE2Batches.Batch056.dependency4491.algebra.mat := by
  rw [incomingLink2420, outgoingLink2420]
  exact CofiberE2Batches.Batch130.exact2391valid.2
theorem incomingValid2420 : CofiberE2Batches.Batch056.dependency4491.Valid := CofiberE2Batches.Batch056.dependency4491valid
theorem outgoingValid2420 : CofiberE2Batches.Batch050.dependency4072.Valid := CofiberE2Batches.Batch050.dependency4072valid
theorem incomingLink2421 : CofiberE2Batches.Batch056.dependency4493.algebra.mat = CofiberE2Batches.Batch130.exact2392.a := by decide
theorem outgoingLink2421 : CofiberE2Batches.Batch050.dependency4075.algebra.mat = CofiberE2Batches.Batch130.exact2392.b := by decide
theorem linkedExact2421 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4075.algebra.mat CofiberE2Batches.Batch056.dependency4493.algebra.mat := by
  rw [incomingLink2421, outgoingLink2421]
  exact CofiberE2Batches.Batch130.exact2392valid.2
theorem incomingValid2421 : CofiberE2Batches.Batch056.dependency4493.Valid := CofiberE2Batches.Batch056.dependency4493valid
theorem outgoingValid2421 : CofiberE2Batches.Batch050.dependency4075.Valid := CofiberE2Batches.Batch050.dependency4075valid
theorem incomingLink2422 : CofiberE2Batches.Batch056.dependency4495.algebra.mat = CofiberE2Batches.Batch130.exact2393.a := by decide
theorem outgoingLink2422 : CofiberE2Batches.Batch050.dependency4078.algebra.mat = CofiberE2Batches.Batch130.exact2393.b := by decide
theorem linkedExact2422 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch050.dependency4078.algebra.mat CofiberE2Batches.Batch056.dependency4495.algebra.mat := by
  rw [incomingLink2422, outgoingLink2422]
  exact CofiberE2Batches.Batch130.exact2393valid.2
theorem incomingValid2422 : CofiberE2Batches.Batch056.dependency4495.Valid := CofiberE2Batches.Batch056.dependency4495valid
theorem outgoingValid2422 : CofiberE2Batches.Batch050.dependency4078.Valid := CofiberE2Batches.Batch050.dependency4078valid
theorem incomingLink2423 : CofiberE2Batches.Batch056.dependency4497.algebra.mat = CofiberE2Batches.Batch130.exact2394.a := by decide
theorem outgoingLink2423 : CofiberE2Batches.Batch051.dependency4081.algebra.mat = CofiberE2Batches.Batch130.exact2394.b := by decide
theorem linkedExact2423 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch051.dependency4081.algebra.mat CofiberE2Batches.Batch056.dependency4497.algebra.mat := by
  rw [incomingLink2423, outgoingLink2423]
  exact CofiberE2Batches.Batch130.exact2394valid.2
theorem incomingValid2423 : CofiberE2Batches.Batch056.dependency4497.Valid := CofiberE2Batches.Batch056.dependency4497valid
theorem outgoingValid2423 : CofiberE2Batches.Batch051.dependency4081.Valid := CofiberE2Batches.Batch051.dependency4081valid
theorem incomingLink2424 : CofiberE2Batches.Batch056.dependency4499.algebra.mat = CofiberE2Batches.Batch130.exact2395.a := by decide
theorem outgoingLink2424 : CofiberE2Batches.Batch051.dependency4084.algebra.mat = CofiberE2Batches.Batch130.exact2395.b := by decide
theorem linkedExact2424 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch051.dependency4084.algebra.mat CofiberE2Batches.Batch056.dependency4499.algebra.mat := by
  rw [incomingLink2424, outgoingLink2424]
  exact CofiberE2Batches.Batch130.exact2395valid.2
theorem incomingValid2424 : CofiberE2Batches.Batch056.dependency4499.Valid := CofiberE2Batches.Batch056.dependency4499valid
theorem outgoingValid2424 : CofiberE2Batches.Batch051.dependency4084.Valid := CofiberE2Batches.Batch051.dependency4084valid
theorem incomingLink2425 : CofiberE2Batches.Batch056.dependency4501.algebra.mat = CofiberE2Batches.Batch130.exact2396.a := by decide
theorem outgoingLink2425 : CofiberE2Batches.Batch051.dependency4087.algebra.mat = CofiberE2Batches.Batch130.exact2396.b := by decide
theorem linkedExact2425 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch051.dependency4087.algebra.mat CofiberE2Batches.Batch056.dependency4501.algebra.mat := by
  rw [incomingLink2425, outgoingLink2425]
  exact CofiberE2Batches.Batch130.exact2396valid.2
theorem incomingValid2425 : CofiberE2Batches.Batch056.dependency4501.Valid := CofiberE2Batches.Batch056.dependency4501valid
theorem outgoingValid2425 : CofiberE2Batches.Batch051.dependency4087.Valid := CofiberE2Batches.Batch051.dependency4087valid
theorem incomingLink2426 : CofiberE2Batches.Batch056.dependency4503.algebra.mat = CofiberE2Batches.Batch130.exact2397.a := by decide
theorem outgoingLink2426 : CofiberE2Batches.Batch051.dependency4090.algebra.mat = CofiberE2Batches.Batch130.exact2397.b := by decide
theorem linkedExact2426 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch051.dependency4090.algebra.mat CofiberE2Batches.Batch056.dependency4503.algebra.mat := by
  rw [incomingLink2426, outgoingLink2426]
  exact CofiberE2Batches.Batch130.exact2397valid.2
theorem incomingValid2426 : CofiberE2Batches.Batch056.dependency4503.Valid := CofiberE2Batches.Batch056.dependency4503valid
theorem outgoingValid2426 : CofiberE2Batches.Batch051.dependency4090.Valid := CofiberE2Batches.Batch051.dependency4090valid
theorem incomingLink2427 : CofiberE2Batches.Batch056.dependency4505.algebra.mat = CofiberE2Batches.Batch130.exact2398.a := by decide
theorem outgoingLink2427 : CofiberE2Batches.Batch051.dependency4093.algebra.mat = CofiberE2Batches.Batch130.exact2398.b := by decide
theorem linkedExact2427 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch051.dependency4093.algebra.mat CofiberE2Batches.Batch056.dependency4505.algebra.mat := by
  rw [incomingLink2427, outgoingLink2427]
  exact CofiberE2Batches.Batch130.exact2398valid.2
theorem incomingValid2427 : CofiberE2Batches.Batch056.dependency4505.Valid := CofiberE2Batches.Batch056.dependency4505valid
theorem outgoingValid2427 : CofiberE2Batches.Batch051.dependency4093.Valid := CofiberE2Batches.Batch051.dependency4093valid
theorem incomingLink2428 : CofiberE2Batches.Batch056.dependency4506.algebra.mat = CofiberE2Batches.Batch130.exact2399.a := by decide
theorem outgoingLink2428 : CofiberE2Batches.Batch056.dependency4507.algebra.mat = CofiberE2Batches.Batch130.exact2399.b := by decide
theorem linkedExact2428 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4507.algebra.mat CofiberE2Batches.Batch056.dependency4506.algebra.mat := by
  rw [incomingLink2428, outgoingLink2428]
  exact CofiberE2Batches.Batch130.exact2399valid.2
theorem incomingValid2428 : CofiberE2Batches.Batch056.dependency4506.Valid := CofiberE2Batches.Batch056.dependency4506valid
theorem outgoingValid2428 : CofiberE2Batches.Batch056.dependency4507.Valid := CofiberE2Batches.Batch056.dependency4507valid
theorem incomingLink2429 : CofiberE2Batches.Batch051.dependency4099.algebra.mat = CofiberE2Batches.Batch130.exact2400.a := by decide
theorem outgoingLink2429 : CofiberE2Batches.Batch056.dependency4508.algebra.mat = CofiberE2Batches.Batch130.exact2400.b := by decide
theorem linkedExact2429 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4508.algebra.mat CofiberE2Batches.Batch051.dependency4099.algebra.mat := by
  rw [incomingLink2429, outgoingLink2429]
  exact CofiberE2Batches.Batch130.exact2400valid.2
theorem incomingValid2429 : CofiberE2Batches.Batch051.dependency4099.Valid := CofiberE2Batches.Batch051.dependency4099valid
theorem outgoingValid2429 : CofiberE2Batches.Batch056.dependency4508.Valid := CofiberE2Batches.Batch056.dependency4508valid
theorem incomingLink2430 : CofiberE2Batches.Batch051.dependency4102.algebra.mat = CofiberE2Batches.Batch130.exact2401.a := by decide
theorem outgoingLink2430 : CofiberE2Batches.Batch056.dependency4509.algebra.mat = CofiberE2Batches.Batch130.exact2401.b := by decide
theorem linkedExact2430 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4509.algebra.mat CofiberE2Batches.Batch051.dependency4102.algebra.mat := by
  rw [incomingLink2430, outgoingLink2430]
  exact CofiberE2Batches.Batch130.exact2401valid.2
theorem incomingValid2430 : CofiberE2Batches.Batch051.dependency4102.Valid := CofiberE2Batches.Batch051.dependency4102valid
theorem outgoingValid2430 : CofiberE2Batches.Batch056.dependency4509.Valid := CofiberE2Batches.Batch056.dependency4509valid
theorem incomingLink2431 : CofiberE2Batches.Batch056.dependency4510.algebra.mat = CofiberE2Batches.Batch130.exact2402.a := by decide
theorem outgoingLink2431 : CofiberE2Batches.Batch056.dependency4511.algebra.mat = CofiberE2Batches.Batch130.exact2402.b := by decide
theorem linkedExact2431 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4511.algebra.mat CofiberE2Batches.Batch056.dependency4510.algebra.mat := by
  rw [incomingLink2431, outgoingLink2431]
  exact CofiberE2Batches.Batch130.exact2402valid.2
theorem incomingValid2431 : CofiberE2Batches.Batch056.dependency4510.Valid := CofiberE2Batches.Batch056.dependency4510valid
theorem outgoingValid2431 : CofiberE2Batches.Batch056.dependency4511.Valid := CofiberE2Batches.Batch056.dependency4511valid
theorem incomingLink2432 : CofiberE2Batches.Batch056.dependency4512.algebra.mat = CofiberE2Batches.Batch130.exact2403.a := by decide
theorem outgoingLink2432 : CofiberE2Batches.Batch056.dependency4513.algebra.mat = CofiberE2Batches.Batch130.exact2403.b := by decide
theorem linkedExact2432 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4513.algebra.mat CofiberE2Batches.Batch056.dependency4512.algebra.mat := by
  rw [incomingLink2432, outgoingLink2432]
  exact CofiberE2Batches.Batch130.exact2403valid.2
theorem incomingValid2432 : CofiberE2Batches.Batch056.dependency4512.Valid := CofiberE2Batches.Batch056.dependency4512valid
theorem outgoingValid2432 : CofiberE2Batches.Batch056.dependency4513.Valid := CofiberE2Batches.Batch056.dependency4513valid
theorem incomingLink2433 : CofiberE2Batches.Batch056.dependency4514.algebra.mat = CofiberE2Batches.Batch130.exact2404.a := by decide
theorem outgoingLink2433 : CofiberE2Batches.Batch056.dependency4515.algebra.mat = CofiberE2Batches.Batch130.exact2404.b := by decide
theorem linkedExact2433 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4515.algebra.mat CofiberE2Batches.Batch056.dependency4514.algebra.mat := by
  rw [incomingLink2433, outgoingLink2433]
  exact CofiberE2Batches.Batch130.exact2404valid.2
theorem incomingValid2433 : CofiberE2Batches.Batch056.dependency4514.Valid := CofiberE2Batches.Batch056.dependency4514valid
theorem outgoingValid2433 : CofiberE2Batches.Batch056.dependency4515.Valid := CofiberE2Batches.Batch056.dependency4515valid
theorem incomingLink2434 : CofiberE2Batches.Batch051.dependency4114.algebra.mat = CofiberE2Batches.Batch130.exact2405.a := by decide
theorem outgoingLink2434 : CofiberE2Batches.Batch056.dependency4516.algebra.mat = CofiberE2Batches.Batch130.exact2405.b := by decide
theorem linkedExact2434 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4516.algebra.mat CofiberE2Batches.Batch051.dependency4114.algebra.mat := by
  rw [incomingLink2434, outgoingLink2434]
  exact CofiberE2Batches.Batch130.exact2405valid.2
theorem incomingValid2434 : CofiberE2Batches.Batch051.dependency4114.Valid := CofiberE2Batches.Batch051.dependency4114valid
theorem outgoingValid2434 : CofiberE2Batches.Batch056.dependency4516.Valid := CofiberE2Batches.Batch056.dependency4516valid
theorem incomingLink2435 : CofiberE2Batches.Batch056.dependency4517.algebra.mat = CofiberE2Batches.Batch130.exact2406.a := by decide
theorem outgoingLink2435 : CofiberE2Batches.Batch056.dependency4518.algebra.mat = CofiberE2Batches.Batch130.exact2406.b := by decide
theorem linkedExact2435 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4518.algebra.mat CofiberE2Batches.Batch056.dependency4517.algebra.mat := by
  rw [incomingLink2435, outgoingLink2435]
  exact CofiberE2Batches.Batch130.exact2406valid.2
theorem incomingValid2435 : CofiberE2Batches.Batch056.dependency4517.Valid := CofiberE2Batches.Batch056.dependency4517valid
theorem outgoingValid2435 : CofiberE2Batches.Batch056.dependency4518.Valid := CofiberE2Batches.Batch056.dependency4518valid
theorem incomingLink2436 : CofiberE2Batches.Batch051.dependency4120.algebra.mat = CofiberE2Batches.Batch130.exact2407.a := by decide
theorem outgoingLink2436 : CofiberE2Batches.Batch056.dependency4519.algebra.mat = CofiberE2Batches.Batch130.exact2407.b := by decide
theorem linkedExact2436 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4519.algebra.mat CofiberE2Batches.Batch051.dependency4120.algebra.mat := by
  rw [incomingLink2436, outgoingLink2436]
  exact CofiberE2Batches.Batch130.exact2407valid.2
theorem incomingValid2436 : CofiberE2Batches.Batch051.dependency4120.Valid := CofiberE2Batches.Batch051.dependency4120valid
theorem outgoingValid2436 : CofiberE2Batches.Batch056.dependency4519.Valid := CofiberE2Batches.Batch056.dependency4519valid
theorem incomingLink2437 : CofiberE2Batches.Batch051.dependency4123.algebra.mat = CofiberE2Batches.Batch130.exact2408.a := by decide
theorem outgoingLink2437 : CofiberE2Batches.Batch056.dependency4520.algebra.mat = CofiberE2Batches.Batch130.exact2408.b := by decide
theorem linkedExact2437 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4520.algebra.mat CofiberE2Batches.Batch051.dependency4123.algebra.mat := by
  rw [incomingLink2437, outgoingLink2437]
  exact CofiberE2Batches.Batch130.exact2408valid.2
theorem incomingValid2437 : CofiberE2Batches.Batch051.dependency4123.Valid := CofiberE2Batches.Batch051.dependency4123valid
theorem outgoingValid2437 : CofiberE2Batches.Batch056.dependency4520.Valid := CofiberE2Batches.Batch056.dependency4520valid
theorem incomingLink2438 : CofiberE2Batches.Batch051.dependency4126.algebra.mat = CofiberE2Batches.Batch130.exact2409.a := by decide
theorem outgoingLink2438 : CofiberE2Batches.Batch056.dependency4521.algebra.mat = CofiberE2Batches.Batch130.exact2409.b := by decide
theorem linkedExact2438 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4521.algebra.mat CofiberE2Batches.Batch051.dependency4126.algebra.mat := by
  rw [incomingLink2438, outgoingLink2438]
  exact CofiberE2Batches.Batch130.exact2409valid.2
theorem incomingValid2438 : CofiberE2Batches.Batch051.dependency4126.Valid := CofiberE2Batches.Batch051.dependency4126valid
theorem outgoingValid2438 : CofiberE2Batches.Batch056.dependency4521.Valid := CofiberE2Batches.Batch056.dependency4521valid
theorem incomingLink2439 : CofiberE2Batches.Batch051.dependency4132.algebra.mat = CofiberE2Batches.Batch130.exact2410.a := by decide
theorem outgoingLink2439 : CofiberE2Batches.Batch056.dependency4522.algebra.mat = CofiberE2Batches.Batch130.exact2410.b := by decide
theorem linkedExact2439 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4522.algebra.mat CofiberE2Batches.Batch051.dependency4132.algebra.mat := by
  rw [incomingLink2439, outgoingLink2439]
  exact CofiberE2Batches.Batch130.exact2410valid.2
theorem incomingValid2439 : CofiberE2Batches.Batch051.dependency4132.Valid := CofiberE2Batches.Batch051.dependency4132valid
theorem outgoingValid2439 : CofiberE2Batches.Batch056.dependency4522.Valid := CofiberE2Batches.Batch056.dependency4522valid
theorem incomingLink2440 : CofiberE2Batches.Batch051.dependency4135.algebra.mat = CofiberE2Batches.Batch130.exact2411.a := by decide
theorem outgoingLink2440 : CofiberE2Batches.Batch056.dependency4523.algebra.mat = CofiberE2Batches.Batch130.exact2411.b := by decide
theorem linkedExact2440 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4523.algebra.mat CofiberE2Batches.Batch051.dependency4135.algebra.mat := by
  rw [incomingLink2440, outgoingLink2440]
  exact CofiberE2Batches.Batch130.exact2411valid.2
theorem incomingValid2440 : CofiberE2Batches.Batch051.dependency4135.Valid := CofiberE2Batches.Batch051.dependency4135valid
theorem outgoingValid2440 : CofiberE2Batches.Batch056.dependency4523.Valid := CofiberE2Batches.Batch056.dependency4523valid
theorem incomingLink2441 : CofiberE2Batches.Batch051.dependency4138.algebra.mat = CofiberE2Batches.Batch130.exact2412.a := by decide
theorem outgoingLink2441 : CofiberE2Batches.Batch056.dependency4524.algebra.mat = CofiberE2Batches.Batch130.exact2412.b := by decide
theorem linkedExact2441 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4524.algebra.mat CofiberE2Batches.Batch051.dependency4138.algebra.mat := by
  rw [incomingLink2441, outgoingLink2441]
  exact CofiberE2Batches.Batch130.exact2412valid.2
theorem incomingValid2441 : CofiberE2Batches.Batch051.dependency4138.Valid := CofiberE2Batches.Batch051.dependency4138valid
theorem outgoingValid2441 : CofiberE2Batches.Batch056.dependency4524.Valid := CofiberE2Batches.Batch056.dependency4524valid
theorem incomingLink2442 : CofiberE2Batches.Batch051.dependency4147.algebra.mat = CofiberE2Batches.Batch130.exact2413.a := by decide
theorem outgoingLink2442 : CofiberE2Batches.Batch056.dependency4525.algebra.mat = CofiberE2Batches.Batch130.exact2413.b := by decide
theorem linkedExact2442 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4525.algebra.mat CofiberE2Batches.Batch051.dependency4147.algebra.mat := by
  rw [incomingLink2442, outgoingLink2442]
  exact CofiberE2Batches.Batch130.exact2413valid.2
theorem incomingValid2442 : CofiberE2Batches.Batch051.dependency4147.Valid := CofiberE2Batches.Batch051.dependency4147valid
theorem outgoingValid2442 : CofiberE2Batches.Batch056.dependency4525.Valid := CofiberE2Batches.Batch056.dependency4525valid
theorem incomingLink2443 : CofiberE2Batches.Batch056.dependency4526.algebra.mat = CofiberE2Batches.Batch130.exact2414.a := by decide
theorem outgoingLink2443 : CofiberE2Batches.Batch056.dependency4527.algebra.mat = CofiberE2Batches.Batch130.exact2414.b := by decide
theorem linkedExact2443 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4527.algebra.mat CofiberE2Batches.Batch056.dependency4526.algebra.mat := by
  rw [incomingLink2443, outgoingLink2443]
  exact CofiberE2Batches.Batch130.exact2414valid.2
theorem incomingValid2443 : CofiberE2Batches.Batch056.dependency4526.Valid := CofiberE2Batches.Batch056.dependency4526valid
theorem outgoingValid2443 : CofiberE2Batches.Batch056.dependency4527.Valid := CofiberE2Batches.Batch056.dependency4527valid
theorem incomingLink2444 : CofiberE2Batches.Batch056.dependency4528.algebra.mat = CofiberE2Batches.Batch130.exact2415.a := by decide
theorem outgoingLink2444 : CofiberE2Batches.Batch056.dependency4529.algebra.mat = CofiberE2Batches.Batch130.exact2415.b := by decide
theorem linkedExact2444 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4529.algebra.mat CofiberE2Batches.Batch056.dependency4528.algebra.mat := by
  rw [incomingLink2444, outgoingLink2444]
  exact CofiberE2Batches.Batch130.exact2415valid.2
theorem incomingValid2444 : CofiberE2Batches.Batch056.dependency4528.Valid := CofiberE2Batches.Batch056.dependency4528valid
theorem outgoingValid2444 : CofiberE2Batches.Batch056.dependency4529.Valid := CofiberE2Batches.Batch056.dependency4529valid
theorem incomingLink2445 : CofiberE2Batches.Batch056.dependency4530.algebra.mat = CofiberE2Batches.Batch130.exact2416.a := by decide
theorem outgoingLink2445 : CofiberE2Batches.Batch056.dependency4531.algebra.mat = CofiberE2Batches.Batch130.exact2416.b := by decide
theorem linkedExact2445 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4531.algebra.mat CofiberE2Batches.Batch056.dependency4530.algebra.mat := by
  rw [incomingLink2445, outgoingLink2445]
  exact CofiberE2Batches.Batch130.exact2416valid.2
theorem incomingValid2445 : CofiberE2Batches.Batch056.dependency4530.Valid := CofiberE2Batches.Batch056.dependency4530valid
theorem outgoingValid2445 : CofiberE2Batches.Batch056.dependency4531.Valid := CofiberE2Batches.Batch056.dependency4531valid
theorem incomingLink2446 : CofiberE2Batches.Batch056.dependency4532.algebra.mat = CofiberE2Batches.Batch130.exact2417.a := by decide
theorem outgoingLink2446 : CofiberE2Batches.Batch056.dependency4533.algebra.mat = CofiberE2Batches.Batch130.exact2417.b := by decide
theorem linkedExact2446 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4533.algebra.mat CofiberE2Batches.Batch056.dependency4532.algebra.mat := by
  rw [incomingLink2446, outgoingLink2446]
  exact CofiberE2Batches.Batch130.exact2417valid.2
theorem incomingValid2446 : CofiberE2Batches.Batch056.dependency4532.Valid := CofiberE2Batches.Batch056.dependency4532valid
theorem outgoingValid2446 : CofiberE2Batches.Batch056.dependency4533.Valid := CofiberE2Batches.Batch056.dependency4533valid
theorem incomingLink2447 : CofiberE2Batches.Batch056.dependency4534.algebra.mat = CofiberE2Batches.Batch130.exact2418.a := by decide
theorem outgoingLink2447 : CofiberE2Batches.Batch056.dependency4535.algebra.mat = CofiberE2Batches.Batch130.exact2418.b := by decide
theorem linkedExact2447 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4535.algebra.mat CofiberE2Batches.Batch056.dependency4534.algebra.mat := by
  rw [incomingLink2447, outgoingLink2447]
  exact CofiberE2Batches.Batch130.exact2418valid.2
theorem incomingValid2447 : CofiberE2Batches.Batch056.dependency4534.Valid := CofiberE2Batches.Batch056.dependency4534valid
theorem outgoingValid2447 : CofiberE2Batches.Batch056.dependency4535.Valid := CofiberE2Batches.Batch056.dependency4535valid
theorem incomingLink2448 : CofiberE2Batches.Batch056.dependency4536.algebra.mat = CofiberE2Batches.Batch130.exact2419.a := by decide
theorem outgoingLink2448 : CofiberE2Batches.Batch056.dependency4537.algebra.mat = CofiberE2Batches.Batch130.exact2419.b := by decide
theorem linkedExact2448 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4537.algebra.mat CofiberE2Batches.Batch056.dependency4536.algebra.mat := by
  rw [incomingLink2448, outgoingLink2448]
  exact CofiberE2Batches.Batch130.exact2419valid.2
theorem incomingValid2448 : CofiberE2Batches.Batch056.dependency4536.Valid := CofiberE2Batches.Batch056.dependency4536valid
theorem outgoingValid2448 : CofiberE2Batches.Batch056.dependency4537.Valid := CofiberE2Batches.Batch056.dependency4537valid
theorem incomingLink2449 : CofiberE2Batches.Batch056.dependency4538.algebra.mat = CofiberE2Batches.Batch130.exact2420.a := by decide
theorem outgoingLink2449 : CofiberE2Batches.Batch056.dependency4539.algebra.mat = CofiberE2Batches.Batch130.exact2420.b := by decide
theorem linkedExact2449 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4539.algebra.mat CofiberE2Batches.Batch056.dependency4538.algebra.mat := by
  rw [incomingLink2449, outgoingLink2449]
  exact CofiberE2Batches.Batch130.exact2420valid.2
theorem incomingValid2449 : CofiberE2Batches.Batch056.dependency4538.Valid := CofiberE2Batches.Batch056.dependency4538valid
theorem outgoingValid2449 : CofiberE2Batches.Batch056.dependency4539.Valid := CofiberE2Batches.Batch056.dependency4539valid
theorem incomingLink2450 : CofiberE2Batches.Batch056.dependency4540.algebra.mat = CofiberE2Batches.Batch130.exact2421.a := by decide
theorem outgoingLink2450 : CofiberE2Batches.Batch056.dependency4541.algebra.mat = CofiberE2Batches.Batch130.exact2421.b := by decide
theorem linkedExact2450 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4541.algebra.mat CofiberE2Batches.Batch056.dependency4540.algebra.mat := by
  rw [incomingLink2450, outgoingLink2450]
  exact CofiberE2Batches.Batch130.exact2421valid.2
theorem incomingValid2450 : CofiberE2Batches.Batch056.dependency4540.Valid := CofiberE2Batches.Batch056.dependency4540valid
theorem outgoingValid2450 : CofiberE2Batches.Batch056.dependency4541.Valid := CofiberE2Batches.Batch056.dependency4541valid
theorem incomingLink2451 : CofiberE2Batches.Batch056.dependency4542.algebra.mat = CofiberE2Batches.Batch130.exact2422.a := by decide
theorem outgoingLink2451 : CofiberE2Batches.Batch056.dependency4543.algebra.mat = CofiberE2Batches.Batch130.exact2422.b := by decide
theorem linkedExact2451 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4543.algebra.mat CofiberE2Batches.Batch056.dependency4542.algebra.mat := by
  rw [incomingLink2451, outgoingLink2451]
  exact CofiberE2Batches.Batch130.exact2422valid.2
theorem incomingValid2451 : CofiberE2Batches.Batch056.dependency4542.Valid := CofiberE2Batches.Batch056.dependency4542valid
theorem outgoingValid2451 : CofiberE2Batches.Batch056.dependency4543.Valid := CofiberE2Batches.Batch056.dependency4543valid
theorem incomingLink2452 : CofiberE2Batches.Batch056.dependency4544.algebra.mat = CofiberE2Batches.Batch130.exact2423.a := by decide
theorem outgoingLink2452 : CofiberE2Batches.Batch056.dependency4545.algebra.mat = CofiberE2Batches.Batch130.exact2423.b := by decide
theorem linkedExact2452 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4545.algebra.mat CofiberE2Batches.Batch056.dependency4544.algebra.mat := by
  rw [incomingLink2452, outgoingLink2452]
  exact CofiberE2Batches.Batch130.exact2423valid.2
theorem incomingValid2452 : CofiberE2Batches.Batch056.dependency4544.Valid := CofiberE2Batches.Batch056.dependency4544valid
theorem outgoingValid2452 : CofiberE2Batches.Batch056.dependency4545.Valid := CofiberE2Batches.Batch056.dependency4545valid
theorem incomingLink2453 : CofiberE2Batches.Batch056.dependency4546.algebra.mat = CofiberE2Batches.Batch130.exact2424.a := by decide
theorem outgoingLink2453 : CofiberE2Batches.Batch056.dependency4547.algebra.mat = CofiberE2Batches.Batch130.exact2424.b := by decide
theorem linkedExact2453 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4547.algebra.mat CofiberE2Batches.Batch056.dependency4546.algebra.mat := by
  rw [incomingLink2453, outgoingLink2453]
  exact CofiberE2Batches.Batch130.exact2424valid.2
theorem incomingValid2453 : CofiberE2Batches.Batch056.dependency4546.Valid := CofiberE2Batches.Batch056.dependency4546valid
theorem outgoingValid2453 : CofiberE2Batches.Batch056.dependency4547.Valid := CofiberE2Batches.Batch056.dependency4547valid
theorem incomingLink2454 : CofiberE2Batches.Batch056.dependency4548.algebra.mat = CofiberE2Batches.Batch130.exact2425.a := by decide
theorem outgoingLink2454 : CofiberE2Batches.Batch056.dependency4549.algebra.mat = CofiberE2Batches.Batch130.exact2425.b := by decide
theorem linkedExact2454 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4549.algebra.mat CofiberE2Batches.Batch056.dependency4548.algebra.mat := by
  rw [incomingLink2454, outgoingLink2454]
  exact CofiberE2Batches.Batch130.exact2425valid.2
theorem incomingValid2454 : CofiberE2Batches.Batch056.dependency4548.Valid := CofiberE2Batches.Batch056.dependency4548valid
theorem outgoingValid2454 : CofiberE2Batches.Batch056.dependency4549.Valid := CofiberE2Batches.Batch056.dependency4549valid
theorem incomingLink2455 : CofiberE2Batches.Batch056.dependency4550.algebra.mat = CofiberE2Batches.Batch130.exact2426.a := by decide
theorem outgoingLink2455 : CofiberE2Batches.Batch056.dependency4551.algebra.mat = CofiberE2Batches.Batch130.exact2426.b := by decide
theorem linkedExact2455 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4551.algebra.mat CofiberE2Batches.Batch056.dependency4550.algebra.mat := by
  rw [incomingLink2455, outgoingLink2455]
  exact CofiberE2Batches.Batch130.exact2426valid.2
theorem incomingValid2455 : CofiberE2Batches.Batch056.dependency4550.Valid := CofiberE2Batches.Batch056.dependency4550valid
theorem outgoingValid2455 : CofiberE2Batches.Batch056.dependency4551.Valid := CofiberE2Batches.Batch056.dependency4551valid
theorem incomingLink2456 : CofiberE2Batches.Batch056.dependency4552.algebra.mat = CofiberE2Batches.Batch130.exact2427.a := by decide
theorem outgoingLink2456 : CofiberE2Batches.Batch056.dependency4553.algebra.mat = CofiberE2Batches.Batch130.exact2427.b := by decide
theorem linkedExact2456 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4553.algebra.mat CofiberE2Batches.Batch056.dependency4552.algebra.mat := by
  rw [incomingLink2456, outgoingLink2456]
  exact CofiberE2Batches.Batch130.exact2427valid.2
theorem incomingValid2456 : CofiberE2Batches.Batch056.dependency4552.Valid := CofiberE2Batches.Batch056.dependency4552valid
theorem outgoingValid2456 : CofiberE2Batches.Batch056.dependency4553.Valid := CofiberE2Batches.Batch056.dependency4553valid
theorem incomingLink2457 : CofiberE2Batches.Batch056.dependency4554.algebra.mat = CofiberE2Batches.Batch130.exact2428.a := by decide
theorem outgoingLink2457 : CofiberE2Batches.Batch056.dependency4555.algebra.mat = CofiberE2Batches.Batch130.exact2428.b := by decide
theorem linkedExact2457 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4555.algebra.mat CofiberE2Batches.Batch056.dependency4554.algebra.mat := by
  rw [incomingLink2457, outgoingLink2457]
  exact CofiberE2Batches.Batch130.exact2428valid.2
theorem incomingValid2457 : CofiberE2Batches.Batch056.dependency4554.Valid := CofiberE2Batches.Batch056.dependency4554valid
theorem outgoingValid2457 : CofiberE2Batches.Batch056.dependency4555.Valid := CofiberE2Batches.Batch056.dependency4555valid
theorem incomingLink2458 : CofiberE2Batches.Batch056.dependency4556.algebra.mat = CofiberE2Batches.Batch130.exact2429.a := by decide
theorem outgoingLink2458 : CofiberE2Batches.Batch056.dependency4557.algebra.mat = CofiberE2Batches.Batch130.exact2429.b := by decide
theorem linkedExact2458 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4557.algebra.mat CofiberE2Batches.Batch056.dependency4556.algebra.mat := by
  rw [incomingLink2458, outgoingLink2458]
  exact CofiberE2Batches.Batch130.exact2429valid.2
theorem incomingValid2458 : CofiberE2Batches.Batch056.dependency4556.Valid := CofiberE2Batches.Batch056.dependency4556valid
theorem outgoingValid2458 : CofiberE2Batches.Batch056.dependency4557.Valid := CofiberE2Batches.Batch056.dependency4557valid
theorem incomingLink2459 : CofiberE2Batches.Batch056.dependency4558.algebra.mat = CofiberE2Batches.Batch131.exact2430.a := by decide
theorem outgoingLink2459 : CofiberE2Batches.Batch056.dependency4559.algebra.mat = CofiberE2Batches.Batch131.exact2430.b := by decide
theorem linkedExact2459 : ResolutionCertificates.ExactAt CofiberE2Batches.Batch056.dependency4559.algebra.mat CofiberE2Batches.Batch056.dependency4558.algebra.mat := by
  rw [incomingLink2459, outgoingLink2459]
  exact CofiberE2Batches.Batch131.exact2430valid.2
theorem incomingValid2459 : CofiberE2Batches.Batch056.dependency4558.Valid := CofiberE2Batches.Batch056.dependency4558valid
theorem outgoingValid2459 : CofiberE2Batches.Batch056.dependency4559.Valid := CofiberE2Batches.Batch056.dependency4559valid
end CofiberLinkageBatches.Batch040
