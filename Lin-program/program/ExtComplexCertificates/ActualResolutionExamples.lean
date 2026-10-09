import ExtComplexCertificates.ActualResolution
open ExtComplexCertificates.ActualResolution
set_option maxRecDepth 10000
set_option maxHeartbeats 5000000
def query5 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1048576.json"
theorem square5 : SquareZeroInWindow query5 := check_sound query5 (by decide)
def query6 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1048577.json"
theorem square6 : SquareZeroInWindow query6 := check_sound query6 (by decide)
def query7 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1048578.json"
theorem square7 : SquareZeroInWindow query7 := check_sound query7 (by decide)
def query8 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1048579.json"
theorem square8 : SquareZeroInWindow query8 := check_sound query8 (by decide)
def query9 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1572864.json"
theorem square9 : SquareZeroInWindow query9 := check_sound query9 (by decide)
def query10 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-1572865.json"
theorem square10 : SquareZeroInWindow query10 := check_sound query10 (by decide)
def query11 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-2097152.json"
theorem square11 : SquareZeroInWindow query11 := check_sound query11 (by decide)
def query12 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-2621440.json"
theorem square12 : SquareZeroInWindow query12 := check_sound query12 (by decide)
def query13 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-3145728.json"
theorem square13 : SquareZeroInWindow query13 := check_sound query13 (by decide)
def query14 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-3670016.json"
theorem square14 : SquareZeroInWindow query14 := check_sound query14 (by decide)
def query15 : Query := resolution_square% "ExtComplexCertificates/actual-s0/square-4194304.json"
theorem square15 : SquareZeroInWindow query15 := check_sound query15 (by decide)
