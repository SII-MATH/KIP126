import LinearCertificates.Checker
namespace ReleaseComplex8
open LinearCertificates LinProgramCertificates
-- CW_2_eta_nu_sigma s=22 t=147
def outgoing800 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming800 : Matrix 1 4 := fun i j => ([false, true, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex800 : IsComplex outgoing800 incoming800 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=22 t=148
def outgoing801 : Matrix 3 2 := fun i j => ([true, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming801 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex801 : IsComplex outgoing801 incoming801 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=23 t=146
def outgoing802 : Matrix 2 3 := fun i j => ([false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming802 : Matrix 3 2 := fun i j => ([false, false, true, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex802 : IsComplex outgoing802 incoming802 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=23 t=148
def outgoing803 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming803 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex803 : IsComplex outgoing803 incoming803 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=24 t=146
def outgoing804 : Matrix 1 3 := fun i j => ([false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming804 : Matrix 3 1 := fun i j => ([false, true, false] : List Bool)[i.val * 1 + j.val]!
theorem complex804 : IsComplex outgoing804 incoming804 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=24 t=147
def outgoing805 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
def incoming805 : Matrix 1 2 := fun i j => ([false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex805 : IsComplex outgoing805 incoming805 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=24 t=148
def outgoing806 : Matrix 2 2 := fun i j => ([false, false, true, false] : List Bool)[i.val * 2 + j.val]!
def incoming806 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex806 : IsComplex outgoing806 incoming806 := by lin_cert using ()
-- CW_2_eta_nu_sigma s=25 t=147
def outgoing807 : Matrix 1 2 := fun i j => ([true, false] : List Bool)[i.val * 2 + j.val]!
def incoming807 : Matrix 2 3 := fun i j => ([false, false, false, true, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex807 : IsComplex outgoing807 incoming807 := by lin_cert using ()
-- CW_eta_2 s=1 t=128
def outgoing808 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming808 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex808 : IsComplex outgoing808 incoming808 := by lin_cert using ()
-- CW_eta_2 s=2 t=129
def outgoing809 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming809 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex809 : IsComplex outgoing809 incoming809 := by lin_cert using ()
-- CW_eta_2 s=3 t=129
def outgoing810 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming810 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex810 : IsComplex outgoing810 incoming810 := by lin_cert using ()
-- CW_eta_2 s=3 t=130
def outgoing811 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming811 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex811 : IsComplex outgoing811 incoming811 := by lin_cert using ()
-- CW_eta_2 s=4 t=130
def outgoing812 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming812 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex812 : IsComplex outgoing812 incoming812 := by lin_cert using ()
-- CW_eta_2 s=4 t=131
def outgoing813 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming813 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex813 : IsComplex outgoing813 incoming813 := by lin_cert using ()
-- CW_eta_2 s=5 t=130
def outgoing814 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming814 : Matrix 4 1 := fun i j => ([false, false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex814 : IsComplex outgoing814 incoming814 := by lin_cert using ()
-- CW_eta_2 s=5 t=132
def outgoing815 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming815 : Matrix 3 2 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex815 : IsComplex outgoing815 incoming815 := by lin_cert using ()
-- CW_eta_2 s=6 t=130
def outgoing816 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming816 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex816 : IsComplex outgoing816 incoming816 := by lin_cert using ()
-- CW_eta_2 s=6 t=131
def outgoing817 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming817 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex817 : IsComplex outgoing817 incoming817 := by lin_cert using ()
-- CW_eta_2 s=6 t=132
def outgoing818 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming818 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex818 : IsComplex outgoing818 incoming818 := by lin_cert using ()
-- CW_eta_2 s=6 t=133
def outgoing819 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming819 : Matrix 5 2 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex819 : IsComplex outgoing819 incoming819 := by lin_cert using ()
-- CW_eta_2 s=7 t=131
def outgoing820 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming820 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex820 : IsComplex outgoing820 incoming820 := by lin_cert using ()
-- CW_eta_2 s=7 t=133
def outgoing821 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming821 : Matrix 5 3 := fun i j => ([false, false, false, true, false, false, true, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex821 : IsComplex outgoing821 incoming821 := by lin_cert using ()
-- CW_eta_2 s=7 t=134
def outgoing822 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming822 : Matrix 6 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, true, true, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex822 : IsComplex outgoing822 incoming822 := by lin_cert using ()
-- CW_eta_2 s=8 t=131
def outgoing823 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming823 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex823 : IsComplex outgoing823 incoming823 := by lin_cert using ()
-- CW_eta_2 s=8 t=132
def outgoing824 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming824 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, true, true] : List Bool)[i.val * 2 + j.val]!
theorem complex824 : IsComplex outgoing824 incoming824 := by lin_cert using ()
-- CW_eta_2 s=8 t=133
def outgoing825 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming825 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex825 : IsComplex outgoing825 incoming825 := by lin_cert using ()
-- CW_eta_2 s=8 t=134
def outgoing826 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
def incoming826 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex826 : IsComplex outgoing826 incoming826 := by lin_cert using ()
-- CW_eta_2 s=8 t=135
def outgoing827 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming827 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex827 : IsComplex outgoing827 incoming827 := by lin_cert using ()
-- CW_eta_2 s=9 t=132
def outgoing828 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming828 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex828 : IsComplex outgoing828 incoming828 := by lin_cert using ()
-- CW_eta_2 s=9 t=133
def outgoing829 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming829 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex829 : IsComplex outgoing829 incoming829 := by lin_cert using ()
-- CW_eta_2 s=9 t=134
def outgoing830 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming830 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex830 : IsComplex outgoing830 incoming830 := by lin_cert using ()
-- CW_eta_2 s=9 t=135
def outgoing831 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming831 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex831 : IsComplex outgoing831 incoming831 := by lin_cert using ()
-- CW_eta_2 s=9 t=136
def outgoing832 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
def incoming832 : Matrix 6 5 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex832 : IsComplex outgoing832 incoming832 := by lin_cert using ()
-- CW_eta_2 s=10 t=132
def outgoing833 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming833 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex833 : IsComplex outgoing833 incoming833 := by lin_cert using ()
-- CW_eta_2 s=10 t=133
def outgoing834 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming834 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, true, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex834 : IsComplex outgoing834 incoming834 := by lin_cert using ()
-- CW_eta_2 s=10 t=134
def outgoing835 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming835 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex835 : IsComplex outgoing835 incoming835 := by lin_cert using ()
-- CW_eta_2 s=10 t=135
def outgoing836 : Matrix 4 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming836 : Matrix 5 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex836 : IsComplex outgoing836 incoming836 := by lin_cert using ()
-- CW_eta_2 s=10 t=136
def outgoing837 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming837 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex837 : IsComplex outgoing837 incoming837 := by lin_cert using ()
-- CW_eta_2 s=10 t=137
def outgoing838 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming838 : Matrix 3 5 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex838 : IsComplex outgoing838 incoming838 := by lin_cert using ()
-- CW_eta_2 s=11 t=133
def outgoing839 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming839 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex839 : IsComplex outgoing839 incoming839 := by lin_cert using ()
-- CW_eta_2 s=11 t=134
def outgoing840 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming840 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex840 : IsComplex outgoing840 incoming840 := by lin_cert using ()
-- CW_eta_2 s=11 t=135
def outgoing841 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming841 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex841 : IsComplex outgoing841 incoming841 := by lin_cert using ()
-- CW_eta_2 s=11 t=136
def outgoing842 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming842 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex842 : IsComplex outgoing842 incoming842 := by lin_cert using ()
-- CW_eta_2 s=11 t=137
def outgoing843 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming843 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex843 : IsComplex outgoing843 incoming843 := by lin_cert using ()
-- CW_eta_2 s=11 t=138
def outgoing844 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming844 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex844 : IsComplex outgoing844 incoming844 := by lin_cert using ()
-- CW_eta_2 s=12 t=134
def outgoing845 : Matrix 6 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming845 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex845 : IsComplex outgoing845 incoming845 := by lin_cert using ()
-- CW_eta_2 s=12 t=135
def outgoing846 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming846 : Matrix 2 5 := fun i j => ([false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex846 : IsComplex outgoing846 incoming846 := by lin_cert using ()
-- CW_eta_2 s=12 t=136
def outgoing847 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming847 : Matrix 4 5 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex847 : IsComplex outgoing847 incoming847 := by lin_cert using ()
-- CW_eta_2 s=12 t=137
def outgoing848 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming848 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex848 : IsComplex outgoing848 incoming848 := by lin_cert using ()
-- CW_eta_2 s=12 t=138
def outgoing849 : Matrix 4 2 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming849 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex849 : IsComplex outgoing849 incoming849 := by lin_cert using ()
-- CW_eta_2 s=12 t=139
def outgoing850 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
def incoming850 : Matrix 7 6 := fun i j => ([false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex850 : IsComplex outgoing850 incoming850 := by lin_cert using ()
-- CW_eta_2 s=13 t=135
def outgoing851 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming851 : Matrix 4 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex851 : IsComplex outgoing851 incoming851 := by lin_cert using ()
-- CW_eta_2 s=13 t=136
def outgoing852 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming852 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex852 : IsComplex outgoing852 incoming852 := by lin_cert using ()
-- CW_eta_2 s=13 t=137
def outgoing853 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming853 : Matrix 3 4 := fun i j => ([false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex853 : IsComplex outgoing853 incoming853 := by lin_cert using ()
-- CW_eta_2 s=13 t=138
def outgoing854 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
def incoming854 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex854 : IsComplex outgoing854 incoming854 := by lin_cert using ()
-- CW_eta_2 s=13 t=139
def outgoing855 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming855 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, true, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex855 : IsComplex outgoing855 incoming855 := by lin_cert using ()
-- CW_eta_2 s=13 t=140
def outgoing856 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming856 : Matrix 4 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 7 + j.val]!
theorem complex856 : IsComplex outgoing856 incoming856 := by lin_cert using ()
-- CW_eta_2 s=14 t=136
def outgoing857 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming857 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex857 : IsComplex outgoing857 incoming857 := by lin_cert using ()
-- CW_eta_2 s=14 t=137
def outgoing858 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming858 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex858 : IsComplex outgoing858 incoming858 := by lin_cert using ()
-- CW_eta_2 s=14 t=138
def outgoing859 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming859 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex859 : IsComplex outgoing859 incoming859 := by lin_cert using ()
-- CW_eta_2 s=14 t=139
def outgoing860 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming860 : Matrix 4 2 := fun i j => ([false, false, false, true, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex860 : IsComplex outgoing860 incoming860 := by lin_cert using ()
-- CW_eta_2 s=14 t=140
def outgoing861 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming861 : Matrix 5 7 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false] : List Bool)[i.val * 7 + j.val]!
theorem complex861 : IsComplex outgoing861 incoming861 := by lin_cert using ()
-- CW_eta_2 s=14 t=141
def outgoing862 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming862 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex862 : IsComplex outgoing862 incoming862 := by lin_cert using ()
-- CW_eta_2 s=15 t=137
def outgoing863 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, true] : List Bool)[i.val * 5 + j.val]!
def incoming863 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex863 : IsComplex outgoing863 incoming863 := by lin_cert using ()
-- CW_eta_2 s=15 t=138
def outgoing864 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming864 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex864 : IsComplex outgoing864 incoming864 := by lin_cert using ()
-- CW_eta_2 s=15 t=139
def outgoing865 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
def incoming865 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 5 + j.val]!
theorem complex865 : IsComplex outgoing865 incoming865 := by lin_cert using ()
-- CW_eta_2 s=15 t=140
def outgoing866 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming866 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex866 : IsComplex outgoing866 incoming866 := by lin_cert using ()
-- CW_eta_2 s=15 t=141
def outgoing867 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming867 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex867 : IsComplex outgoing867 incoming867 := by lin_cert using ()
-- CW_eta_2 s=15 t=142
def outgoing868 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming868 : Matrix 4 6 := fun i j => ([false, false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 6 + j.val]!
theorem complex868 : IsComplex outgoing868 incoming868 := by lin_cert using ()
-- CW_eta_2 s=16 t=138
def outgoing869 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
def incoming869 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex869 : IsComplex outgoing869 incoming869 := by lin_cert using ()
-- CW_eta_2 s=16 t=139
def outgoing870 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming870 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex870 : IsComplex outgoing870 incoming870 := by lin_cert using ()
-- CW_eta_2 s=16 t=140
def outgoing871 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
def incoming871 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex871 : IsComplex outgoing871 incoming871 := by lin_cert using ()
-- CW_eta_2 s=16 t=141
def outgoing872 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming872 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 5 + j.val]!
theorem complex872 : IsComplex outgoing872 incoming872 := by lin_cert using ()
-- CW_eta_2 s=16 t=142
def outgoing873 : Matrix 3 3 := fun i j => ([false, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming873 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex873 : IsComplex outgoing873 incoming873 := by lin_cert using ()
-- CW_eta_2 s=16 t=143
def outgoing874 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming874 : Matrix 3 6 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false] : List Bool)[i.val * 6 + j.val]!
theorem complex874 : IsComplex outgoing874 incoming874 := by lin_cert using ()
-- CW_eta_2 s=17 t=139
def outgoing875 : Matrix 2 2 := fun i j => ([false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def incoming875 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex875 : IsComplex outgoing875 incoming875 := by lin_cert using ()
-- CW_eta_2 s=17 t=140
def outgoing876 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming876 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, true, true, false] : List Bool)[i.val * 4 + j.val]!
theorem complex876 : IsComplex outgoing876 incoming876 := by lin_cert using ()
-- CW_eta_2 s=17 t=141
def outgoing877 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming877 : Matrix 2 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex877 : IsComplex outgoing877 incoming877 := by lin_cert using ()
-- CW_eta_2 s=17 t=142
def outgoing878 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming878 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex878 : IsComplex outgoing878 incoming878 := by lin_cert using ()
-- CW_eta_2 s=17 t=143
def outgoing879 : Matrix 3 4 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming879 : Matrix 4 4 := fun i j => ([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex879 : IsComplex outgoing879 incoming879 := by lin_cert using ()
-- CW_eta_2 s=18 t=140
def outgoing880 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming880 : Matrix 3 4 := fun i j => ([false, false, false, false, false, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
theorem complex880 : IsComplex outgoing880 incoming880 := by lin_cert using ()
-- CW_eta_2 s=18 t=141
def outgoing881 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
def incoming881 : Matrix 5 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false, false, true, false] : List Bool)[i.val * 3 + j.val]!
theorem complex881 : IsComplex outgoing881 incoming881 := by lin_cert using ()
-- CW_eta_2 s=18 t=142
def outgoing882 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming882 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex882 : IsComplex outgoing882 incoming882 := by lin_cert using ()
-- CW_eta_2 s=18 t=143
def outgoing883 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val * 3 + j.val]!
def incoming883 : Matrix 3 3 := fun i j => ([false, false, false, true, true, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
theorem complex883 : IsComplex outgoing883 incoming883 := by lin_cert using ()
-- CW_eta_2 s=19 t=141
def outgoing884 : Matrix 2 3 := fun i j => ([false, false, false, false, false, true] : List Bool)[i.val * 3 + j.val]!
def incoming884 : Matrix 3 3 := fun i j => ([false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
theorem complex884 : IsComplex outgoing884 incoming884 := by lin_cert using ()
-- CW_eta_2 s=19 t=142
def outgoing885 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
def incoming885 : Matrix 4 2 := fun i j => ([false, false, false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex885 : IsComplex outgoing885 incoming885 := by lin_cert using ()
-- CW_eta_2 s=19 t=143
def outgoing886 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming886 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex886 : IsComplex outgoing886 incoming886 := by lin_cert using ()
-- CW_eta_2 s=20 t=142
def outgoing887 : Matrix 2 4 := fun i j => ([false, false, false, false, true, true, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming887 : Matrix 4 5 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false] : List Bool)[i.val * 5 + j.val]!
theorem complex887 : IsComplex outgoing887 incoming887 := by lin_cert using ()
-- CW_eta_2 s=20 t=143
def outgoing888 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming888 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex888 : IsComplex outgoing888 incoming888 := by lin_cert using ()
-- CW_eta_2 s=21 t=143
def outgoing889 : Matrix 2 3 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming889 : Matrix 3 4 := fun i j => ([false, true, false, false, false, false, false, false, false, false, false, true] : List Bool)[i.val * 4 + j.val]!
theorem complex889 : IsComplex outgoing889 incoming889 := by lin_cert using ()
-- CW_eta_nu s=1 t=128
def outgoing890 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
def incoming890 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex890 : IsComplex outgoing890 incoming890 := by lin_cert using ()
-- CW_eta_nu s=2 t=129
def outgoing891 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming891 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex891 : IsComplex outgoing891 incoming891 := by lin_cert using ()
-- CW_eta_nu s=3 t=129
def outgoing892 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
def incoming892 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val * 1 + j.val]!
theorem complex892 : IsComplex outgoing892 incoming892 := by lin_cert using ()
-- CW_eta_nu s=3 t=130
def outgoing893 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val * 1 + j.val]!
def incoming893 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val * 1 + j.val]!
theorem complex893 : IsComplex outgoing893 incoming893 := by lin_cert using ()
-- CW_eta_nu s=4 t=130
def outgoing894 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming894 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex894 : IsComplex outgoing894 incoming894 := by lin_cert using ()
-- CW_eta_nu s=4 t=131
def outgoing895 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming895 : Matrix 2 1 := fun i j => ([false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex895 : IsComplex outgoing895 incoming895 := by lin_cert using ()
-- CW_eta_nu s=5 t=130
def outgoing896 : Matrix 4 3 := fun i j => ([false, false, false, false, false, false, false, false, false, false, false, false] : List Bool)[i.val * 3 + j.val]!
def incoming896 : Matrix 3 1 := fun i j => ([false, false, true] : List Bool)[i.val * 1 + j.val]!
theorem complex896 : IsComplex outgoing896 incoming896 := by lin_cert using ()
-- CW_eta_nu s=5 t=132
def outgoing897 : Matrix 5 4 := fun i j => ([false, false, false, false, false, false, false, false, true, false, false, false, true, true, false, false, false, false, false, false] : List Bool)[i.val * 4 + j.val]!
def incoming897 : Matrix 4 2 := fun i j => ([false, false, false, false, true, false, false, true] : List Bool)[i.val * 2 + j.val]!
theorem complex897 : IsComplex outgoing897 incoming897 := by lin_cert using ()
-- CW_eta_nu s=6 t=130
def outgoing898 : Matrix 3 2 := fun i j => ([false, false, false, false, false, false] : List Bool)[i.val * 2 + j.val]!
def incoming898 : Matrix 2 1 := fun i j => ([false, false] : List Bool)[i.val * 1 + j.val]!
theorem complex898 : IsComplex outgoing898 incoming898 := by lin_cert using ()
-- CW_eta_nu s=6 t=131
def outgoing899 : Matrix 2 2 := fun i j => ([false, false, true, true] : List Bool)[i.val * 2 + j.val]!
def incoming899 : Matrix 2 2 := fun i j => ([false, false, false, false] : List Bool)[i.val * 2 + j.val]!
theorem complex899 : IsComplex outgoing899 incoming899 := by lin_cert using ()
end ReleaseComplex8
