import ExtComplexCertificates.ActualResolution
open ExtComplexCertificates.ActualResolution

/-- error: noncanonical/unknown/duplicate fields -/
#guard_msgs (error) in
#check (raw_resolution% "ExtComplexCertificates/actual-s0/bad-unknown.jsonl" : List RawGenerator)

/-- error: blank record at line 2 -/
#guard_msgs (error) in
#check (raw_resolution% "ExtComplexCertificates/actual-s0/bad-blank.jsonl" : List RawGenerator)
