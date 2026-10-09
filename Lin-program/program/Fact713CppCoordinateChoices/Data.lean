import HomologyCoordinateChoice.Basic
import Fact713ComparisonBatches.Imported
namespace Fact713CppCoordinateChoices
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def old237 : WireComparison := (Fact713ComparisonBatches.batch05[37]).wire
theorem old237_valid : old237.Valid :=
  (Fact713ComparisonBatches.batch05_valid _ (List.getElem_mem (show 37 < Fact713ComparisonBatches.batch05.length from by decide))).2
def cpp237 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case237.json"
theorem cpp237_valid : cpp237.Valid := by lin_cert using ()
theorem same_complex237 : old237.outgoing = cpp237.outgoing ∧ old237.incoming = cpp237.incoming := by decide
def coordinates237 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 2 old237.outgoing)
    (matrixOf 2 0 old237.incoming) old237.comparison cpp237.comparison
    old237_valid.2 (by
      have hc := cpp237_valid.2
      change HomologyComparison (h := 2) (matrixOf 1 2 cpp237.outgoing)
        (matrixOf 2 0 cpp237.incoming) cpp237.comparison at hc
      simpa only [← same_complex237.1,← same_complex237.2] using hc)
#print axioms coordinates237
def old240 : WireComparison := (Fact713ComparisonBatches.batch06[0]).wire
theorem old240_valid : old240.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 0 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp240 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case240.json"
theorem cpp240_valid : cpp240.Valid := by lin_cert using ()
theorem same_complex240 : old240.outgoing = cpp240.outgoing ∧ old240.incoming = cpp240.incoming := by decide
def coordinates240 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old240.outgoing)
    (matrixOf 3 1 old240.incoming) old240.comparison cpp240.comparison
    old240_valid.2 (by
      have hc := cpp240_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 3 cpp240.outgoing)
        (matrixOf 3 1 cpp240.incoming) cpp240.comparison at hc
      simpa only [← same_complex240.1,← same_complex240.2] using hc)
#print axioms coordinates240
def old249 : WireComparison := (Fact713ComparisonBatches.batch06[9]).wire
theorem old249_valid : old249.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 9 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp249 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case249.json"
theorem cpp249_valid : cpp249.Valid := by lin_cert using ()
theorem same_complex249 : old249.outgoing = cpp249.outgoing ∧ old249.incoming = cpp249.incoming := by decide
def coordinates249 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 2 old249.outgoing)
    (matrixOf 2 3 old249.incoming) old249.comparison cpp249.comparison
    old249_valid.2 (by
      have hc := cpp249_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 2 cpp249.outgoing)
        (matrixOf 2 3 cpp249.incoming) cpp249.comparison at hc
      simpa only [← same_complex249.1,← same_complex249.2] using hc)
#print axioms coordinates249
def old250 : WireComparison := (Fact713ComparisonBatches.batch06[10]).wire
theorem old250_valid : old250.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 10 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp250 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case250.json"
theorem cpp250_valid : cpp250.Valid := by lin_cert using ()
theorem same_complex250 : old250.outgoing = cpp250.outgoing ∧ old250.incoming = cpp250.incoming := by decide
def coordinates250 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 5 3 old250.outgoing)
    (matrixOf 3 1 old250.incoming) old250.comparison cpp250.comparison
    old250_valid.2 (by
      have hc := cpp250_valid.2
      change HomologyComparison (h := 2) (matrixOf 5 3 cpp250.outgoing)
        (matrixOf 3 1 cpp250.incoming) cpp250.comparison at hc
      simpa only [← same_complex250.1,← same_complex250.2] using hc)
#print axioms coordinates250
def old251 : WireComparison := (Fact713ComparisonBatches.batch06[11]).wire
theorem old251_valid : old251.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 11 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp251 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case251.json"
theorem cpp251_valid : cpp251.Valid := by lin_cert using ()
theorem same_complex251 : old251.outgoing = cpp251.outgoing ∧ old251.incoming = cpp251.incoming := by decide
def coordinates251 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 5 5 old251.outgoing)
    (matrixOf 5 2 old251.incoming) old251.comparison cpp251.comparison
    old251_valid.2 (by
      have hc := cpp251_valid.2
      change HomologyComparison (h := 3) (matrixOf 5 5 cpp251.outgoing)
        (matrixOf 5 2 cpp251.incoming) cpp251.comparison at hc
      simpa only [← same_complex251.1,← same_complex251.2] using hc)
#print axioms coordinates251
def old255 : WireComparison := (Fact713ComparisonBatches.batch06[15]).wire
theorem old255_valid : old255.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 15 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp255 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case255.json"
theorem cpp255_valid : cpp255.Valid := by lin_cert using ()
theorem same_complex255 : old255.outgoing = cpp255.outgoing ∧ old255.incoming = cpp255.incoming := by decide
def coordinates255 : Vec 4 ≃ Vec 4 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 5 old255.outgoing)
    (matrixOf 5 2 old255.incoming) old255.comparison cpp255.comparison
    old255_valid.2 (by
      have hc := cpp255_valid.2
      change HomologyComparison (h := 4) (matrixOf 3 5 cpp255.outgoing)
        (matrixOf 5 2 cpp255.incoming) cpp255.comparison at hc
      simpa only [← same_complex255.1,← same_complex255.2] using hc)
#print axioms coordinates255
def old258 : WireComparison := (Fact713ComparisonBatches.batch06[18]).wire
theorem old258_valid : old258.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 18 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp258 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case258.json"
theorem cpp258_valid : cpp258.Valid := by lin_cert using ()
theorem same_complex258 : old258.outgoing = cpp258.outgoing ∧ old258.incoming = cpp258.incoming := by decide
def coordinates258 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 2 old258.outgoing)
    (matrixOf 2 2 old258.incoming) old258.comparison cpp258.comparison
    old258_valid.2 (by
      have hc := cpp258_valid.2
      change HomologyComparison (h := 2) (matrixOf 1 2 cpp258.outgoing)
        (matrixOf 2 2 cpp258.incoming) cpp258.comparison at hc
      simpa only [← same_complex258.1,← same_complex258.2] using hc)
#print axioms coordinates258
def old259 : WireComparison := (Fact713ComparisonBatches.batch06[19]).wire
theorem old259_valid : old259.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 19 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp259 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case259.json"
theorem cpp259_valid : cpp259.Valid := by lin_cert using ()
theorem same_complex259 : old259.outgoing = cpp259.outgoing ∧ old259.incoming = cpp259.incoming := by decide
def coordinates259 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 5 old259.outgoing)
    (matrixOf 5 3 old259.incoming) old259.comparison cpp259.comparison
    old259_valid.2 (by
      have hc := cpp259_valid.2
      change HomologyComparison (h := 3) (matrixOf 3 5 cpp259.outgoing)
        (matrixOf 5 3 cpp259.incoming) cpp259.comparison at hc
      simpa only [← same_complex259.1,← same_complex259.2] using hc)
#print axioms coordinates259
def old261 : WireComparison := (Fact713ComparisonBatches.batch06[21]).wire
theorem old261_valid : old261.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 21 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp261 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case261.json"
theorem cpp261_valid : cpp261.Valid := by lin_cert using ()
theorem same_complex261 : old261.outgoing = cpp261.outgoing ∧ old261.incoming = cpp261.incoming := by decide
def coordinates261 : Vec 4 ≃ Vec 4 :=
  HomologyCoordinateChoice.equivalence (matrixOf 4 5 old261.outgoing)
    (matrixOf 5 6 old261.incoming) old261.comparison cpp261.comparison
    old261_valid.2 (by
      have hc := cpp261_valid.2
      change HomologyComparison (h := 4) (matrixOf 4 5 cpp261.outgoing)
        (matrixOf 5 6 cpp261.incoming) cpp261.comparison at hc
      simpa only [← same_complex261.1,← same_complex261.2] using hc)
#print axioms coordinates261
def old262 : WireComparison := (Fact713ComparisonBatches.batch06[22]).wire
theorem old262_valid : old262.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 22 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp262 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case262.json"
theorem cpp262_valid : cpp262.Valid := by lin_cert using ()
theorem same_complex262 : old262.outgoing = cpp262.outgoing ∧ old262.incoming = cpp262.incoming := by decide
def coordinates262 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 5 old262.outgoing)
    (matrixOf 5 1 old262.incoming) old262.comparison cpp262.comparison
    old262_valid.2 (by
      have hc := cpp262_valid.2
      change HomologyComparison (h := 3) (matrixOf 2 5 cpp262.outgoing)
        (matrixOf 5 1 cpp262.incoming) cpp262.comparison at hc
      simpa only [← same_complex262.1,← same_complex262.2] using hc)
#print axioms coordinates262
def old264 : WireComparison := (Fact713ComparisonBatches.batch06[24]).wire
theorem old264_valid : old264.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 24 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp264 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case264.json"
theorem cpp264_valid : cpp264.Valid := by lin_cert using ()
theorem same_complex264 : old264.outgoing = cpp264.outgoing ∧ old264.incoming = cpp264.incoming := by decide
def coordinates264 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 3 old264.outgoing)
    (matrixOf 3 3 old264.incoming) old264.comparison cpp264.comparison
    old264_valid.2 (by
      have hc := cpp264_valid.2
      change HomologyComparison (h := 2) (matrixOf 1 3 cpp264.outgoing)
        (matrixOf 3 3 cpp264.incoming) cpp264.comparison at hc
      simpa only [← same_complex264.1,← same_complex264.2] using hc)
#print axioms coordinates264
def old265 : WireComparison := (Fact713ComparisonBatches.batch06[25]).wire
theorem old265_valid : old265.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 25 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp265 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case265.json"
theorem cpp265_valid : cpp265.Valid := by lin_cert using ()
theorem same_complex265 : old265.outgoing = cpp265.outgoing ∧ old265.incoming = cpp265.incoming := by decide
def coordinates265 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 3 old265.outgoing)
    (matrixOf 3 5 old265.incoming) old265.comparison cpp265.comparison
    old265_valid.2 (by
      have hc := cpp265_valid.2
      change HomologyComparison (h := 3) (matrixOf 1 3 cpp265.outgoing)
        (matrixOf 3 5 cpp265.incoming) cpp265.comparison at hc
      simpa only [← same_complex265.1,← same_complex265.2] using hc)
#print axioms coordinates265
def old267 : WireComparison := (Fact713ComparisonBatches.batch06[27]).wire
theorem old267_valid : old267.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 27 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp267 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case267.json"
theorem cpp267_valid : cpp267.Valid := by lin_cert using ()
theorem same_complex267 : old267.outgoing = cpp267.outgoing ∧ old267.incoming = cpp267.incoming := by decide
def coordinates267 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 5 5 old267.outgoing)
    (matrixOf 5 5 old267.incoming) old267.comparison cpp267.comparison
    old267_valid.2 (by
      have hc := cpp267_valid.2
      change HomologyComparison (h := 2) (matrixOf 5 5 cpp267.outgoing)
        (matrixOf 5 5 cpp267.incoming) cpp267.comparison at hc
      simpa only [← same_complex267.1,← same_complex267.2] using hc)
#print axioms coordinates267
def old270 : WireComparison := (Fact713ComparisonBatches.batch06[30]).wire
theorem old270_valid : old270.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 30 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp270 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case270.json"
theorem cpp270_valid : cpp270.Valid := by lin_cert using ()
theorem same_complex270 : old270.outgoing = cpp270.outgoing ∧ old270.incoming = cpp270.incoming := by decide
def coordinates270 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old270.outgoing)
    (matrixOf 3 5 old270.incoming) old270.comparison cpp270.comparison
    old270_valid.2 (by
      have hc := cpp270_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 3 cpp270.outgoing)
        (matrixOf 3 5 cpp270.incoming) cpp270.comparison at hc
      simpa only [← same_complex270.1,← same_complex270.2] using hc)
#print axioms coordinates270
def old271 : WireComparison := (Fact713ComparisonBatches.batch06[31]).wire
theorem old271_valid : old271.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 31 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp271 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case271.json"
theorem cpp271_valid : cpp271.Valid := by lin_cert using ()
theorem same_complex271 : old271.outgoing = cpp271.outgoing ∧ old271.incoming = cpp271.incoming := by decide
def coordinates271 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old271.outgoing)
    (matrixOf 3 5 old271.incoming) old271.comparison cpp271.comparison
    old271_valid.2 (by
      have hc := cpp271_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 3 cpp271.outgoing)
        (matrixOf 3 5 cpp271.incoming) cpp271.comparison at hc
      simpa only [← same_complex271.1,← same_complex271.2] using hc)
#print axioms coordinates271
def old273 : WireComparison := (Fact713ComparisonBatches.batch06[33]).wire
theorem old273_valid : old273.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 33 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp273 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case273.json"
theorem cpp273_valid : cpp273.Valid := by lin_cert using ()
theorem same_complex273 : old273.outgoing = cpp273.outgoing ∧ old273.incoming = cpp273.incoming := by decide
def coordinates273 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 4 5 old273.outgoing)
    (matrixOf 5 6 old273.incoming) old273.comparison cpp273.comparison
    old273_valid.2 (by
      have hc := cpp273_valid.2
      change HomologyComparison (h := 3) (matrixOf 4 5 cpp273.outgoing)
        (matrixOf 5 6 cpp273.incoming) cpp273.comparison at hc
      simpa only [← same_complex273.1,← same_complex273.2] using hc)
#print axioms coordinates273
def old277 : WireComparison := (Fact713ComparisonBatches.batch06[37]).wire
theorem old277_valid : old277.Valid :=
  (Fact713ComparisonBatches.batch06_valid _ (List.getElem_mem (show 37 < Fact713ComparisonBatches.batch06.length from by decide))).2
def cpp277 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case277.json"
theorem cpp277_valid : cpp277.Valid := by lin_cert using ()
theorem same_complex277 : old277.outgoing = cpp277.outgoing ∧ old277.incoming = cpp277.incoming := by decide
def coordinates277 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old277.outgoing)
    (matrixOf 3 5 old277.incoming) old277.comparison cpp277.comparison
    old277_valid.2 (by
      have hc := cpp277_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 3 cpp277.outgoing)
        (matrixOf 3 5 cpp277.incoming) cpp277.comparison at hc
      simpa only [← same_complex277.1,← same_complex277.2] using hc)
#print axioms coordinates277
def old281 : WireComparison := (Fact713ComparisonBatches.batch07[1]).wire
theorem old281_valid : old281.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 1 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp281 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case281.json"
theorem cpp281_valid : cpp281.Valid := by lin_cert using ()
theorem same_complex281 : old281.outgoing = cpp281.outgoing ∧ old281.incoming = cpp281.incoming := by decide
def coordinates281 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 2 old281.outgoing)
    (matrixOf 2 3 old281.incoming) old281.comparison cpp281.comparison
    old281_valid.2 (by
      have hc := cpp281_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 2 cpp281.outgoing)
        (matrixOf 2 3 cpp281.incoming) cpp281.comparison at hc
      simpa only [← same_complex281.1,← same_complex281.2] using hc)
#print axioms coordinates281
def old286 : WireComparison := (Fact713ComparisonBatches.batch07[6]).wire
theorem old286_valid : old286.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 6 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp286 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case286.json"
theorem cpp286_valid : cpp286.Valid := by lin_cert using ()
theorem same_complex286 : old286.outgoing = cpp286.outgoing ∧ old286.incoming = cpp286.incoming := by decide
def coordinates286 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old286.outgoing)
    (matrixOf 3 1 old286.incoming) old286.comparison cpp286.comparison
    old286_valid.2 (by
      have hc := cpp286_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 3 cpp286.outgoing)
        (matrixOf 3 1 cpp286.incoming) cpp286.comparison at hc
      simpa only [← same_complex286.1,← same_complex286.2] using hc)
#print axioms coordinates286
def old287 : WireComparison := (Fact713ComparisonBatches.batch07[7]).wire
theorem old287_valid : old287.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 7 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp287 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case287.json"
theorem cpp287_valid : cpp287.Valid := by lin_cert using ()
theorem same_complex287 : old287.outgoing = cpp287.outgoing ∧ old287.incoming = cpp287.incoming := by decide
def coordinates287 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old287.outgoing)
    (matrixOf 3 3 old287.incoming) old287.comparison cpp287.comparison
    old287_valid.2 (by
      have hc := cpp287_valid.2
      change HomologyComparison (h := 3) (matrixOf 3 3 cpp287.outgoing)
        (matrixOf 3 3 cpp287.incoming) cpp287.comparison at hc
      simpa only [← same_complex287.1,← same_complex287.2] using hc)
#print axioms coordinates287
def old289 : WireComparison := (Fact713ComparisonBatches.batch07[9]).wire
theorem old289_valid : old289.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 9 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp289 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case289.json"
theorem cpp289_valid : cpp289.Valid := by lin_cert using ()
theorem same_complex289 : old289.outgoing = cpp289.outgoing ∧ old289.incoming = cpp289.incoming := by decide
def coordinates289 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 5 old289.outgoing)
    (matrixOf 5 3 old289.incoming) old289.comparison cpp289.comparison
    old289_valid.2 (by
      have hc := cpp289_valid.2
      change HomologyComparison (h := 3) (matrixOf 3 5 cpp289.outgoing)
        (matrixOf 5 3 cpp289.incoming) cpp289.comparison at hc
      simpa only [← same_complex289.1,← same_complex289.2] using hc)
#print axioms coordinates289
def old290 : WireComparison := (Fact713ComparisonBatches.batch07[10]).wire
theorem old290_valid : old290.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 10 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp290 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case290.json"
theorem cpp290_valid : cpp290.Valid := by lin_cert using ()
theorem same_complex290 : old290.outgoing = cpp290.outgoing ∧ old290.incoming = cpp290.incoming := by decide
def coordinates290 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old290.outgoing)
    (matrixOf 3 2 old290.incoming) old290.comparison cpp290.comparison
    old290_valid.2 (by
      have hc := cpp290_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 3 cpp290.outgoing)
        (matrixOf 3 2 cpp290.incoming) cpp290.comparison at hc
      simpa only [← same_complex290.1,← same_complex290.2] using hc)
#print axioms coordinates290
def old292 : WireComparison := (Fact713ComparisonBatches.batch07[12]).wire
theorem old292_valid : old292.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 12 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp292 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case292.json"
theorem cpp292_valid : cpp292.Valid := by lin_cert using ()
theorem same_complex292 : old292.outgoing = cpp292.outgoing ∧ old292.incoming = cpp292.incoming := by decide
def coordinates292 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 2 old292.outgoing)
    (matrixOf 2 3 old292.incoming) old292.comparison cpp292.comparison
    old292_valid.2 (by
      have hc := cpp292_valid.2
      change HomologyComparison (h := 2) (matrixOf 1 2 cpp292.outgoing)
        (matrixOf 2 3 cpp292.incoming) cpp292.comparison at hc
      simpa only [← same_complex292.1,← same_complex292.2] using hc)
#print axioms coordinates292
def old297 : WireComparison := (Fact713ComparisonBatches.batch07[17]).wire
theorem old297_valid : old297.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 17 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp297 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case297.json"
theorem cpp297_valid : cpp297.Valid := by lin_cert using ()
theorem same_complex297 : old297.outgoing = cpp297.outgoing ∧ old297.incoming = cpp297.incoming := by decide
def coordinates297 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old297.outgoing)
    (matrixOf 3 3 old297.incoming) old297.comparison cpp297.comparison
    old297_valid.2 (by
      have hc := cpp297_valid.2
      change HomologyComparison (h := 3) (matrixOf 2 3 cpp297.outgoing)
        (matrixOf 3 3 cpp297.incoming) cpp297.comparison at hc
      simpa only [← same_complex297.1,← same_complex297.2] using hc)
#print axioms coordinates297
def old303 : WireComparison := (Fact713ComparisonBatches.batch07[23]).wire
theorem old303_valid : old303.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 23 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp303 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case303.json"
theorem cpp303_valid : cpp303.Valid := by lin_cert using ()
theorem same_complex303 : old303.outgoing = cpp303.outgoing ∧ old303.incoming = cpp303.incoming := by decide
def coordinates303 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 4 old303.outgoing)
    (matrixOf 4 4 old303.incoming) old303.comparison cpp303.comparison
    old303_valid.2 (by
      have hc := cpp303_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 4 cpp303.outgoing)
        (matrixOf 4 4 cpp303.incoming) cpp303.comparison at hc
      simpa only [← same_complex303.1,← same_complex303.2] using hc)
#print axioms coordinates303
def old305 : WireComparison := (Fact713ComparisonBatches.batch07[25]).wire
theorem old305_valid : old305.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 25 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp305 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case305.json"
theorem cpp305_valid : cpp305.Valid := by lin_cert using ()
theorem same_complex305 : old305.outgoing = cpp305.outgoing ∧ old305.incoming = cpp305.incoming := by decide
def coordinates305 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old305.outgoing)
    (matrixOf 3 3 old305.incoming) old305.comparison cpp305.comparison
    old305_valid.2 (by
      have hc := cpp305_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 3 cpp305.outgoing)
        (matrixOf 3 3 cpp305.incoming) cpp305.comparison at hc
      simpa only [← same_complex305.1,← same_complex305.2] using hc)
#print axioms coordinates305
def old310 : WireComparison := (Fact713ComparisonBatches.batch07[30]).wire
theorem old310_valid : old310.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 30 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp310 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case310.json"
theorem cpp310_valid : cpp310.Valid := by lin_cert using ()
theorem same_complex310 : old310.outgoing = cpp310.outgoing ∧ old310.incoming = cpp310.incoming := by decide
def coordinates310 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 3 3 old310.outgoing)
    (matrixOf 3 3 old310.incoming) old310.comparison cpp310.comparison
    old310_valid.2 (by
      have hc := cpp310_valid.2
      change HomologyComparison (h := 2) (matrixOf 3 3 cpp310.outgoing)
        (matrixOf 3 3 cpp310.incoming) cpp310.comparison at hc
      simpa only [← same_complex310.1,← same_complex310.2] using hc)
#print axioms coordinates310
def old311 : WireComparison := (Fact713ComparisonBatches.batch07[31]).wire
theorem old311_valid : old311.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 31 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp311 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case311.json"
theorem cpp311_valid : cpp311.Valid := by lin_cert using ()
theorem same_complex311 : old311.outgoing = cpp311.outgoing ∧ old311.incoming = cpp311.incoming := by decide
def coordinates311 : Vec 3 ≃ Vec 3 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 4 old311.outgoing)
    (matrixOf 4 1 old311.incoming) old311.comparison cpp311.comparison
    old311_valid.2 (by
      have hc := cpp311_valid.2
      change HomologyComparison (h := 3) (matrixOf 2 4 cpp311.outgoing)
        (matrixOf 4 1 cpp311.incoming) cpp311.comparison at hc
      simpa only [← same_complex311.1,← same_complex311.2] using hc)
#print axioms coordinates311
def old316 : WireComparison := (Fact713ComparisonBatches.batch07[36]).wire
theorem old316_valid : old316.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 36 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp316 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case316.json"
theorem cpp316_valid : cpp316.Valid := by lin_cert using ()
theorem same_complex316 : old316.outgoing = cpp316.outgoing ∧ old316.incoming = cpp316.incoming := by decide
def coordinates316 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old316.outgoing)
    (matrixOf 3 3 old316.incoming) old316.comparison cpp316.comparison
    old316_valid.2 (by
      have hc := cpp316_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 3 cpp316.outgoing)
        (matrixOf 3 3 cpp316.incoming) cpp316.comparison at hc
      simpa only [← same_complex316.1,← same_complex316.2] using hc)
#print axioms coordinates316
def old319 : WireComparison := (Fact713ComparisonBatches.batch07[39]).wire
theorem old319_valid : old319.Valid :=
  (Fact713ComparisonBatches.batch07_valid _ (List.getElem_mem (show 39 < Fact713ComparisonBatches.batch07.length from by decide))).2
def cpp319 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case319.json"
theorem cpp319_valid : cpp319.Valid := by lin_cert using ()
theorem same_complex319 : old319.outgoing = cpp319.outgoing ∧ old319.incoming = cpp319.incoming := by decide
def coordinates319 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 2 3 old319.outgoing)
    (matrixOf 3 1 old319.incoming) old319.comparison cpp319.comparison
    old319_valid.2 (by
      have hc := cpp319_valid.2
      change HomologyComparison (h := 2) (matrixOf 2 3 cpp319.outgoing)
        (matrixOf 3 1 cpp319.incoming) cpp319.comparison at hc
      simpa only [← same_complex319.1,← same_complex319.2] using hc)
#print axioms coordinates319
def old324 : WireComparison := (Fact713ComparisonBatches.batch08[4]).wire
theorem old324_valid : old324.Valid :=
  (Fact713ComparisonBatches.batch08_valid _ (List.getElem_mem (show 4 < Fact713ComparisonBatches.batch08.length from by decide))).2
def cpp324 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case324.json"
theorem cpp324_valid : cpp324.Valid := by lin_cert using ()
theorem same_complex324 : old324.outgoing = cpp324.outgoing ∧ old324.incoming = cpp324.incoming := by decide
def coordinates324 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 4 old324.outgoing)
    (matrixOf 4 2 old324.incoming) old324.comparison cpp324.comparison
    old324_valid.2 (by
      have hc := cpp324_valid.2
      change HomologyComparison (h := 2) (matrixOf 1 4 cpp324.outgoing)
        (matrixOf 4 2 cpp324.incoming) cpp324.comparison at hc
      simpa only [← same_complex324.1,← same_complex324.2] using hc)
#print axioms coordinates324
def old328 : WireComparison := (Fact713ComparisonBatches.batch08[8]).wire
theorem old328_valid : old328.Valid :=
  (Fact713ComparisonBatches.batch08_valid _ (List.getElem_mem (show 8 < Fact713ComparisonBatches.batch08.length from by decide))).2
def cpp328 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case328.json"
theorem cpp328_valid : cpp328.Valid := by lin_cert using ()
theorem same_complex328 : old328.outgoing = cpp328.outgoing ∧ old328.incoming = cpp328.incoming := by decide
def coordinates328 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 0 3 old328.outgoing)
    (matrixOf 3 2 old328.incoming) old328.comparison cpp328.comparison
    old328_valid.2 (by
      have hc := cpp328_valid.2
      change HomologyComparison (h := 2) (matrixOf 0 3 cpp328.outgoing)
        (matrixOf 3 2 cpp328.incoming) cpp328.comparison at hc
      simpa only [← same_complex328.1,← same_complex328.2] using hc)
#print axioms coordinates328
def old343 : WireComparison := (Fact713ComparisonBatches.batch08[23]).wire
theorem old343_valid : old343.Valid :=
  (Fact713ComparisonBatches.batch08_valid _ (List.getElem_mem (show 23 < Fact713ComparisonBatches.batch08.length from by decide))).2
def cpp343 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case343.json"
theorem cpp343_valid : cpp343.Valid := by lin_cert using ()
theorem same_complex343 : old343.outgoing = cpp343.outgoing ∧ old343.incoming = cpp343.incoming := by decide
def coordinates343 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 0 3 old343.outgoing)
    (matrixOf 3 2 old343.incoming) old343.comparison cpp343.comparison
    old343_valid.2 (by
      have hc := cpp343_valid.2
      change HomologyComparison (h := 2) (matrixOf 0 3 cpp343.outgoing)
        (matrixOf 3 2 cpp343.incoming) cpp343.comparison at hc
      simpa only [← same_complex343.1,← same_complex343.2] using hc)
#print axioms coordinates343
def old346 : WireComparison := (Fact713ComparisonBatches.batch08[26]).wire
theorem old346_valid : old346.Valid :=
  (Fact713ComparisonBatches.batch08_valid _ (List.getElem_mem (show 26 < Fact713ComparisonBatches.batch08.length from by decide))).2
def cpp346 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case346.json"
theorem cpp346_valid : cpp346.Valid := by lin_cert using ()
theorem same_complex346 : old346.outgoing = cpp346.outgoing ∧ old346.incoming = cpp346.incoming := by decide
def coordinates346 : Vec 1 ≃ Vec 1 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 4 old346.outgoing)
    (matrixOf 4 3 old346.incoming) old346.comparison cpp346.comparison
    old346_valid.2 (by
      have hc := cpp346_valid.2
      change HomologyComparison (h := 1) (matrixOf 1 4 cpp346.outgoing)
        (matrixOf 4 3 cpp346.incoming) cpp346.comparison at hc
      simpa only [← same_complex346.1,← same_complex346.2] using hc)
#print axioms coordinates346
def old347 : WireComparison := (Fact713ComparisonBatches.batch08[27]).wire
theorem old347_valid : old347.Valid :=
  (Fact713ComparisonBatches.batch08_valid _ (List.getElem_mem (show 27 < Fact713ComparisonBatches.batch08.length from by decide))).2
def cpp347 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case347.json"
theorem cpp347_valid : cpp347.Valid := by lin_cert using ()
theorem same_complex347 : old347.outgoing = cpp347.outgoing ∧ old347.incoming = cpp347.incoming := by decide
def coordinates347 : Vec 1 ≃ Vec 1 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 3 old347.outgoing)
    (matrixOf 3 2 old347.incoming) old347.comparison cpp347.comparison
    old347_valid.2 (by
      have hc := cpp347_valid.2
      change HomologyComparison (h := 1) (matrixOf 1 3 cpp347.outgoing)
        (matrixOf 3 2 cpp347.incoming) cpp347.comparison at hc
      simpa only [← same_complex347.1,← same_complex347.2] using hc)
#print axioms coordinates347
def old372 : WireComparison := (Fact713ComparisonBatches.batch09[12]).wire
theorem old372_valid : old372.Valid :=
  (Fact713ComparisonBatches.batch09_valid _ (List.getElem_mem (show 12 < Fact713ComparisonBatches.batch09.length from by decide))).2
def cpp372 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case372.json"
theorem cpp372_valid : cpp372.Valid := by lin_cert using ()
theorem same_complex372 : old372.outgoing = cpp372.outgoing ∧ old372.incoming = cpp372.incoming := by decide
def coordinates372 : Vec 1 ≃ Vec 1 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 2 old372.outgoing)
    (matrixOf 2 2 old372.incoming) old372.comparison cpp372.comparison
    old372_valid.2 (by
      have hc := cpp372_valid.2
      change HomologyComparison (h := 1) (matrixOf 1 2 cpp372.outgoing)
        (matrixOf 2 2 cpp372.incoming) cpp372.comparison at hc
      simpa only [← same_complex372.1,← same_complex372.2] using hc)
#print axioms coordinates372
def old385 : WireComparison := (Fact713ComparisonBatches.batch09[25]).wire
theorem old385_valid : old385.Valid :=
  (Fact713ComparisonBatches.batch09_valid _ (List.getElem_mem (show 25 < Fact713ComparisonBatches.batch09.length from by decide))).2
def cpp385 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case385.json"
theorem cpp385_valid : cpp385.Valid := by lin_cert using ()
theorem same_complex385 : old385.outgoing = cpp385.outgoing ∧ old385.incoming = cpp385.incoming := by decide
def coordinates385 : Vec 1 ≃ Vec 1 :=
  HomologyCoordinateChoice.equivalence (matrixOf 1 2 old385.outgoing)
    (matrixOf 2 2 old385.incoming) old385.comparison cpp385.comparison
    old385_valid.2 (by
      have hc := cpp385_valid.2
      change HomologyComparison (h := 1) (matrixOf 1 2 cpp385.outgoing)
        (matrixOf 2 2 cpp385.incoming) cpp385.comparison at hc
      simpa only [← same_complex385.1,← same_complex385.2] using hc)
#print axioms coordinates385
def old396 : WireComparison := (Fact713ComparisonBatches.batch09[36]).wire
theorem old396_valid : old396.Valid :=
  (Fact713ComparisonBatches.batch09_valid _ (List.getElem_mem (show 36 < Fact713ComparisonBatches.batch09.length from by decide))).2
def cpp396 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case396.json"
theorem cpp396_valid : cpp396.Valid := by lin_cert using ()
theorem same_complex396 : old396.outgoing = cpp396.outgoing ∧ old396.incoming = cpp396.incoming := by decide
def coordinates396 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 0 3 old396.outgoing)
    (matrixOf 3 1 old396.incoming) old396.comparison cpp396.comparison
    old396_valid.2 (by
      have hc := cpp396_valid.2
      change HomologyComparison (h := 2) (matrixOf 0 3 cpp396.outgoing)
        (matrixOf 3 1 cpp396.incoming) cpp396.comparison at hc
      simpa only [← same_complex396.1,← same_complex396.2] using hc)
#print axioms coordinates396
def old414 : WireComparison := (Fact713ComparisonBatches.batch10[14]).wire
theorem old414_valid : old414.Valid :=
  (Fact713ComparisonBatches.batch10_valid _ (List.getElem_mem (show 14 < Fact713ComparisonBatches.batch10.length from by decide))).2
def cpp414 : WireComparison := page_comparison% "Fact713CppCoordinateChoices/case414.json"
theorem cpp414_valid : cpp414.Valid := by lin_cert using ()
theorem same_complex414 : old414.outgoing = cpp414.outgoing ∧ old414.incoming = cpp414.incoming := by decide
def coordinates414 : Vec 2 ≃ Vec 2 :=
  HomologyCoordinateChoice.equivalence (matrixOf 0 2 old414.outgoing)
    (matrixOf 2 1 old414.incoming) old414.comparison cpp414.comparison
    old414_valid.2 (by
      have hc := cpp414_valid.2
      change HomologyComparison (h := 2) (matrixOf 0 2 cpp414.outgoing)
        (matrixOf 2 1 cpp414.incoming) cpp414.comparison at hc
      simpa only [← same_complex414.1,← same_complex414.2] using hc)
#print axioms coordinates414
end Fact713CppCoordinateChoices
