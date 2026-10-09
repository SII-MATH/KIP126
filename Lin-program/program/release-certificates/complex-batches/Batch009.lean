import LinearCertificates.Checker
namespace ReleaseComplex9
open LinearCertificates LinProgramCertificates
-- CW_eta_nu s=6 t=132
def outgoing900 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming900 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex900 : IsComplex outgoing900 incoming900 := by lin_cert using ()
-- CW_eta_nu s=6 t=133
def outgoing901 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming901 : Matrix 6 3 := fun i j => ([false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex901 : IsComplex outgoing901 incoming901 := by lin_cert using ()
-- CW_eta_nu s=7 t=131
def outgoing902 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming902 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex902 : IsComplex outgoing902 incoming902 := by lin_cert using ()
-- CW_eta_nu s=7 t=133
def outgoing903 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming903 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex903 : IsComplex outgoing903 incoming903 := by lin_cert using ()
-- CW_eta_nu s=7 t=134
def outgoing904 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming904 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex904 : IsComplex outgoing904 incoming904 := by lin_cert using ()
-- CW_eta_nu s=8 t=130
def outgoing905 : Matrix 3 3 := fun i j => ([false, false, false, true, false, false, false, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming905 : Matrix 3 1 := fun i j => ([false, false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex905 : IsComplex outgoing905 incoming905 := by lin_cert using ()
-- CW_eta_nu s=8 t=131
def outgoing906 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming906 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex906 : IsComplex outgoing906 incoming906 := by lin_cert using ()
-- CW_eta_nu s=8 t=132
def outgoing907 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming907 : Matrix 2 2 := fun i j => ([false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex907 : IsComplex outgoing907 incoming907 := by lin_cert using ()
-- CW_eta_nu s=8 t=133
def outgoing908 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming908 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, true, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex908 : IsComplex outgoing908 incoming908 := by lin_cert using ()
-- CW_eta_nu s=8 t=134
def outgoing909 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
def incoming909 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex909 : IsComplex outgoing909 incoming909 := by lin_cert using ()
-- CW_eta_nu s=8 t=135
def outgoing910 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming910 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex910 : IsComplex outgoing910 incoming910 := by lin_cert using ()
-- CW_eta_nu s=9 t=132
def outgoing911 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming911 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex911 : IsComplex outgoing911 incoming911 := by lin_cert using ()
-- CW_eta_nu s=9 t=133
def outgoing912 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming912 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex912 : IsComplex outgoing912 incoming912 := by lin_cert using ()
-- CW_eta_nu s=9 t=134
def outgoing913 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming913 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex913 : IsComplex outgoing913 incoming913 := by lin_cert using ()
-- CW_eta_nu s=9 t=135
def outgoing914 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming914 : Matrix 6 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex914 : IsComplex outgoing914 incoming914 := by lin_cert using ()
-- CW_eta_nu s=9 t=136
def outgoing915 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming915 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex915 : IsComplex outgoing915 incoming915 := by lin_cert using ()
-- CW_eta_nu s=10 t=132
def outgoing916 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming916 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex916 : IsComplex outgoing916 incoming916 := by lin_cert using ()
-- CW_eta_nu s=10 t=133
def outgoing917 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming917 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
theorem complex917 : IsComplex outgoing917 incoming917 := by lin_cert using ()
-- CW_eta_nu s=10 t=134
def outgoing918 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming918 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex918 : IsComplex outgoing918 incoming918 := by lin_cert using ()
-- CW_eta_nu s=10 t=135
def outgoing919 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming919 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex919 : IsComplex outgoing919 incoming919 := by lin_cert using ()
-- CW_eta_nu s=10 t=136
def outgoing920 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming920 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex920 : IsComplex outgoing920 incoming920 := by lin_cert using ()
-- CW_eta_nu s=10 t=137
def outgoing921 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
def incoming921 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex921 : IsComplex outgoing921 incoming921 := by lin_cert using ()
-- CW_eta_nu s=11 t=133
def outgoing922 : Matrix 2 3 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming922 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex922 : IsComplex outgoing922 incoming922 := by lin_cert using ()
-- CW_eta_nu s=11 t=134
def outgoing923 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming923 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex923 : IsComplex outgoing923 incoming923 := by lin_cert using ()
-- CW_eta_nu s=11 t=135
def outgoing924 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming924 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex924 : IsComplex outgoing924 incoming924 := by lin_cert using ()
-- CW_eta_nu s=11 t=136
def outgoing925 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming925 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex925 : IsComplex outgoing925 incoming925 := by lin_cert using ()
-- CW_eta_nu s=11 t=137
def outgoing926 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming926 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex926 : IsComplex outgoing926 incoming926 := by lin_cert using ()
-- CW_eta_nu s=11 t=138
def outgoing927 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming927 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex927 : IsComplex outgoing927 incoming927 := by lin_cert using ()
-- CW_eta_nu s=12 t=134
def outgoing928 : Matrix 3 2 := fun i j => ([false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming928 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex928 : IsComplex outgoing928 incoming928 := by lin_cert using ()
-- CW_eta_nu s=12 t=135
def outgoing929 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming929 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex929 : IsComplex outgoing929 incoming929 := by lin_cert using ()
-- CW_eta_nu s=12 t=136
def outgoing930 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming930 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex930 : IsComplex outgoing930 incoming930 := by lin_cert using ()
-- CW_eta_nu s=12 t=137
def outgoing931 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming931 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex931 : IsComplex outgoing931 incoming931 := by lin_cert using ()
-- CW_eta_nu s=12 t=138
def outgoing932 : Matrix 6 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming932 : Matrix 6 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
theorem complex932 : IsComplex outgoing932 incoming932 := by lin_cert using ()
-- CW_eta_nu s=12 t=139
def outgoing933 : Matrix 5 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming933 : Matrix 7 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex933 : IsComplex outgoing933 incoming933 := by lin_cert using ()
-- CW_eta_nu s=13 t=135
def outgoing934 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming934 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex934 : IsComplex outgoing934 incoming934 := by lin_cert using ()
-- CW_eta_nu s=13 t=136
def outgoing935 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming935 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex935 : IsComplex outgoing935 incoming935 := by lin_cert using ()
-- CW_eta_nu s=13 t=137
def outgoing936 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming936 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex936 : IsComplex outgoing936 incoming936 := by lin_cert using ()
-- CW_eta_nu s=13 t=138
def outgoing937 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
def incoming937 : Matrix 7 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex937 : IsComplex outgoing937 incoming937 := by lin_cert using ()
-- CW_eta_nu s=13 t=139
def outgoing938 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming938 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex938 : IsComplex outgoing938 incoming938 := by lin_cert using ()
-- CW_eta_nu s=13 t=140
def outgoing939 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming939 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex939 : IsComplex outgoing939 incoming939 := by lin_cert using ()
-- CW_eta_nu s=14 t=136
def outgoing940 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming940 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex940 : IsComplex outgoing940 incoming940 := by lin_cert using ()
-- CW_eta_nu s=14 t=137
def outgoing941 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming941 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex941 : IsComplex outgoing941 incoming941 := by lin_cert using ()
-- CW_eta_nu s=14 t=138
def outgoing942 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
def incoming942 : Matrix 8 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true, false, false, false, true, true, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex942 : IsComplex outgoing942 incoming942 := by lin_cert using ()
-- CW_eta_nu s=14 t=139
def outgoing943 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming943 : Matrix 6 6 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex943 : IsComplex outgoing943 incoming943 := by lin_cert using ()
-- CW_eta_nu s=14 t=140
def outgoing944 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming944 : Matrix 5 7 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex944 : IsComplex outgoing944 incoming944 := by lin_cert using ()
-- CW_eta_nu s=14 t=141
def outgoing945 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming945 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex945 : IsComplex outgoing945 incoming945 := by lin_cert using ()
-- CW_eta_nu s=15 t=137
def outgoing946 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 3 + j.val]!
def incoming946 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex946 : IsComplex outgoing946 incoming946 := by lin_cert using ()
-- CW_eta_nu s=15 t=138
def outgoing947 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming947 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex947 : IsComplex outgoing947 incoming947 := by lin_cert using ()
-- CW_eta_nu s=15 t=139
def outgoing948 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
def incoming948 : Matrix 8 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 7 + j.val]!
theorem complex948 : IsComplex outgoing948 incoming948 := by lin_cert using ()
-- CW_eta_nu s=15 t=140
def outgoing949 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming949 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex949 : IsComplex outgoing949 incoming949 := by lin_cert using ()
-- CW_eta_nu s=15 t=141
def outgoing950 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming950 : Matrix 5 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, true, true, false, false, true, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex950 : IsComplex outgoing950 incoming950 := by lin_cert using ()
-- CW_eta_nu s=15 t=142
def outgoing951 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming951 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 8 + j.val]!
theorem complex951 : IsComplex outgoing951 incoming951 := by lin_cert using ()
-- CW_eta_nu s=16 t=138
def outgoing952 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming952 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex952 : IsComplex outgoing952 incoming952 := by lin_cert using ()
-- CW_eta_nu s=16 t=139
def outgoing953 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming953 : Matrix 7 8 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 8 + j.val]!
theorem complex953 : IsComplex outgoing953 incoming953 := by lin_cert using ()
-- CW_eta_nu s=16 t=140
def outgoing954 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
def incoming954 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex954 : IsComplex outgoing954 incoming954 := by lin_cert using ()
-- CW_eta_nu s=16 t=141
def outgoing955 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming955 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex955 : IsComplex outgoing955 incoming955 := by lin_cert using ()
-- CW_eta_nu s=16 t=142
def outgoing956 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming956 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex956 : IsComplex outgoing956 incoming956 := by lin_cert using ()
-- CW_eta_nu s=16 t=143
def outgoing957 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming957 : Matrix 4 7 := fun i j => ([true, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex957 : IsComplex outgoing957 incoming957 := by lin_cert using ()
-- CW_eta_nu s=17 t=139
def outgoing958 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming958 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex958 : IsComplex outgoing958 incoming958 := by lin_cert using ()
-- CW_eta_nu s=17 t=140
def outgoing959 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming959 : Matrix 5 8 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 8 + j.val]!
theorem complex959 : IsComplex outgoing959 incoming959 := by lin_cert using ()
-- CW_eta_nu s=17 t=141
def outgoing960 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming960 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex960 : IsComplex outgoing960 incoming960 := by lin_cert using ()
-- CW_eta_nu s=17 t=142
def outgoing961 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming961 : Matrix 3 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex961 : IsComplex outgoing961 incoming961 := by lin_cert using ()
-- CW_eta_nu s=17 t=143
def outgoing962 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming962 : Matrix 5 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex962 : IsComplex outgoing962 incoming962 := by lin_cert using ()
-- CW_eta_nu s=17 t=144
def outgoing963 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming963 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex963 : IsComplex outgoing963 incoming963 := by lin_cert using ()
-- CW_eta_nu s=18 t=140
def outgoing964 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming964 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex964 : IsComplex outgoing964 incoming964 := by lin_cert using ()
-- CW_eta_nu s=18 t=141
def outgoing965 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming965 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 6 + j.val]!
theorem complex965 : IsComplex outgoing965 incoming965 := by lin_cert using ()
-- CW_eta_nu s=18 t=142
def outgoing966 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
def incoming966 : Matrix 1 4 := fun i j => ([false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex966 : IsComplex outgoing966 incoming966 := by lin_cert using ()
-- CW_eta_nu s=18 t=143
def outgoing967 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val * 4 + j.val]!
def incoming967 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex967 : IsComplex outgoing967 incoming967 := by lin_cert using ()
-- CW_eta_nu s=18 t=144
def outgoing968 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming968 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex968 : IsComplex outgoing968 incoming968 := by lin_cert using ()
-- CW_eta_nu s=18 t=145
def outgoing969 : Matrix 3 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming969 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, false, false, true, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex969 : IsComplex outgoing969 incoming969 := by lin_cert using ()
-- CW_eta_nu s=19 t=141
def outgoing970 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming970 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex970 : IsComplex outgoing970 incoming970 := by lin_cert using ()
-- CW_eta_nu s=19 t=142
def outgoing971 : Matrix 3 7 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
def incoming971 : Matrix 7 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, true, false, true, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex971 : IsComplex outgoing971 incoming971 := by lin_cert using ()
-- CW_eta_nu s=19 t=143
def outgoing972 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
def incoming972 : Matrix 1 3 := fun i j => ([false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex972 : IsComplex outgoing972 incoming972 := by lin_cert using ()
-- CW_eta_nu s=19 t=144
def outgoing973 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming973 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex973 : IsComplex outgoing973 incoming973 := by lin_cert using ()
-- CW_eta_nu s=19 t=145
def outgoing974 : Matrix 2 3 := fun i j => ([false, true, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming974 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex974 : IsComplex outgoing974 incoming974 := by lin_cert using ()
-- CW_eta_nu s=19 t=146
def outgoing975 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming975 : Matrix 6 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex975 : IsComplex outgoing975 incoming975 := by lin_cert using ()
-- CW_eta_nu s=20 t=142
def outgoing976 : Matrix 2 4 := fun i j => ([false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming976 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex976 : IsComplex outgoing976 incoming976 := by lin_cert using ()
-- CW_eta_nu s=20 t=143
def outgoing977 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming977 : Matrix 2 1 := fun i j => ([true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex977 : IsComplex outgoing977 incoming977 := by lin_cert using ()
-- CW_eta_nu s=20 t=145
def outgoing978 : Matrix 1 6 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming978 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex978 : IsComplex outgoing978 incoming978 := by lin_cert using ()
-- CW_eta_nu s=20 t=146
def outgoing979 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming979 : Matrix 3 6 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex979 : IsComplex outgoing979 incoming979 := by lin_cert using ()
-- CW_eta_nu s=20 t=147
def outgoing980 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming980 : Matrix 4 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex980 : IsComplex outgoing980 incoming980 := by lin_cert using ()
-- CW_eta_nu s=21 t=143
def outgoing981 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming981 : Matrix 3 7 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex981 : IsComplex outgoing981 incoming981 := by lin_cert using ()
-- CW_eta_nu s=21 t=144
def outgoing982 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming982 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex982 : IsComplex outgoing982 incoming982 := by lin_cert using ()
-- CW_eta_nu s=21 t=145
def outgoing983 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming983 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex983 : IsComplex outgoing983 incoming983 := by lin_cert using ()
-- CW_eta_nu s=21 t=146
def outgoing984 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming984 : Matrix 2 3 := fun i j => ([false, true, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex984 : IsComplex outgoing984 incoming984 := by lin_cert using ()
-- CW_eta_nu s=21 t=147
def outgoing985 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming985 : Matrix 2 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex985 : IsComplex outgoing985 incoming985 := by lin_cert using ()
-- CW_eta_nu s=21 t=148
def outgoing986 : Matrix 1 5 := fun i j => ([false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming986 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex986 : IsComplex outgoing986 incoming986 := by lin_cert using ()
-- CW_eta_nu s=22 t=144
def outgoing987 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming987 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex987 : IsComplex outgoing987 incoming987 := by lin_cert using ()
-- CW_eta_nu s=22 t=146
def outgoing988 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming988 : Matrix 1 6 := fun i j => ([true, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex988 : IsComplex outgoing988 incoming988 := by lin_cert using ()
-- CW_eta_nu s=22 t=147
def outgoing989 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming989 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex989 : IsComplex outgoing989 incoming989 := by lin_cert using ()
-- CW_eta_nu s=22 t=148
def outgoing990 : Matrix 2 2 := fun i j => ([true, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming990 : Matrix 2 4 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex990 : IsComplex outgoing990 incoming990 := by lin_cert using ()
-- CW_eta_nu s=23 t=145
def outgoing991 : Matrix 2 3 := fun i j => ([false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming991 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex991 : IsComplex outgoing991 incoming991 := by lin_cert using ()
-- CW_eta_nu s=23 t=147
def outgoing992 : Matrix 2 2 := fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming992 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex992 : IsComplex outgoing992 incoming992 := by lin_cert using ()
-- CW_eta_nu s=23 t=148
def outgoing993 : Matrix 3 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming993 : Matrix 4 2 := fun i j => ([false, false, true, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex993 : IsComplex outgoing993 incoming993 := by lin_cert using ()
-- CW_eta_nu s=24 t=146
def outgoing994 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming994 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex994 : IsComplex outgoing994 incoming994 := by lin_cert using ()
-- CW_eta_nu s=24 t=147
def outgoing995 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming995 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex995 : IsComplex outgoing995 incoming995 := by lin_cert using ()
-- CW_eta_nu s=24 t=148
def outgoing996 : Matrix 1 4 := fun i j => ([true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming996 : Matrix 4 3 := fun i j => ([false, false, false, true, false, false, false, true, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex996 : IsComplex outgoing996 incoming996 := by lin_cert using ()
-- CW_eta_nu s=25 t=148
def outgoing997 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val * 2 + j.val]!
def incoming997 : Matrix 2 2 := fun i j => ([true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex997 : IsComplex outgoing997 incoming997 := by lin_cert using ()
-- CW_eta_nu_sigma s=1 t=128
def outgoing998 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming998 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex998 : IsComplex outgoing998 incoming998 := by lin_cert using ()
-- CW_eta_nu_sigma s=2 t=129
def outgoing999 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming999 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex999 : IsComplex outgoing999 incoming999 := by lin_cert using ()
end ReleaseComplex9
