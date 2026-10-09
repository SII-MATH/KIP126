import Lake
open Lake DSL
package CertificateCacheRegression

target certificateInputsCacheCertificate (pkg : NPackage _package.name) : Array System.FilePath := do
  let paths : Array System.FilePath := #["certificate.txt"]
  let jobs ← paths.mapM fun path => inputBinFile (pkg.dir / path)
  return Job.collectArray jobs

@[default_target]
lean_lib CacheCertificate where
  needs := #[certificateInputsCacheCertificate]

@[default_target]
lean_lib Independent
