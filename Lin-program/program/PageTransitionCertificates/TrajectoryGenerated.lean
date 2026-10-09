import PageTransitionCertificates.TrajectoryImport
namespace PageTransitionCertificates
def generatedTrajectory : WireTrajectory := trajectory_bundle% "PageTransitionCertificates/trajectory_generated.json"
example : generatedTrajectory.Valid := by lin_cert using ()
end PageTransitionCertificates
