import LinearCertificates.Checker
import RealMapCertificates.Substitution
set_option maxRecDepth 4096
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 19 => [[4,8]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1141 => []
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1301 => []
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1471 => []
  | 1499 => []
  | 1514 => []
  | 1566 => []
  | 1589 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1734 => []
  | 1736 => []
  | 1737 => []
  | 2161 => []
  | 2275 => []
  | _ => []
def map_56_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6291 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6291 : InImage map_56_174 image6291 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6291 : Bundle := named_bundle% "RealMapCertificates/relations/basis6291.json"
theorem reductionProof6291 : EqualModuloRelations reduction6291.relations reduction6291.input reduction6291.output := by lin_cert using reduction6291.terms
theorem substitutionProof6291 : IsMapEvaluation generatorImages reduction6291.relations [803] reduction6291.output := by lin_cert using reduction6291.terms
def map_56_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6442 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6442 : InImage map_56_175 image6442 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6442 : Bundle := named_bundle% "RealMapCertificates/relations/basis6442.json"
theorem reductionProof6442 : EqualModuloRelations reduction6442.relations reduction6442.input reduction6442.output := by lin_cert using reduction6442.terms
theorem substitutionProof6442 : IsMapEvaluation generatorImages reduction6442.relations [0,804] reduction6442.output := by lin_cert using reduction6442.terms
def map_56_177 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6649 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6649 : InImage map_56_177 image6649 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6649 : Bundle := named_bundle% "RealMapCertificates/relations/basis6649.json"
theorem reductionProof6649 : EqualModuloRelations reduction6649.relations reduction6649.input reduction6649.output := by lin_cert using reduction6649.terms
theorem substitutionProof6649 : IsMapEvaluation generatorImages reduction6649.relations [851] reduction6649.output := by lin_cert using reduction6649.terms
def map_56_178 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6786 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6786 : InImage map_56_178 image6786 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6786 : Bundle := named_bundle% "RealMapCertificates/relations/basis6786.json"
theorem reductionProof6786 : EqualModuloRelations reduction6786.relations reduction6786.input reduction6786.output := by lin_cert using reduction6786.terms
theorem substitutionProof6786 : IsMapEvaluation generatorImages reduction6786.relations [0,852] reduction6786.output := by lin_cert using reduction6786.terms
def map_56_180 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7006 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7006 : InImage map_56_180 image7006 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7006 : Bundle := named_bundle% "RealMapCertificates/relations/basis7006.json"
theorem reductionProof7006 : EqualModuloRelations reduction7006.relations reduction7006.input reduction7006.output := by lin_cert using reduction7006.terms
theorem substitutionProof7006 : IsMapEvaluation generatorImages reduction7006.relations [8,661] reduction7006.output := by lin_cert using reduction7006.terms
def map_56_181 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7162 : InImage map_56_181 image7162 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7162 : Bundle := named_bundle% "RealMapCertificates/relations/basis7162.json"
theorem reductionProof7162 : EqualModuloRelations reduction7162.relations reduction7162.input reduction7162.output := by lin_cert using reduction7162.terms
theorem substitutionProof7162 : IsMapEvaluation generatorImages reduction7162.relations [0,16,554] reduction7162.output := by lin_cert using reduction7162.terms
def map_56_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7248 : InImage map_56_182 image7248 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7248 : Bundle := named_bundle% "RealMapCertificates/relations/basis7248.json"
theorem reductionProof7248 : EqualModuloRelations reduction7248.relations reduction7248.input reduction7248.output := by lin_cert using reduction7248.terms
theorem substitutionProof7248 : IsMapEvaluation generatorImages reduction7248.relations [0,0,17,554] reduction7248.output := by lin_cert using reduction7248.terms
def map_56_183 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7370 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7370 : InImage map_56_183 image7370 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7370 : Bundle := named_bundle% "RealMapCertificates/relations/basis7370.json"
theorem reductionProof7370 : EqualModuloRelations reduction7370.relations reduction7370.input reduction7370.output := by lin_cert using reduction7370.terms
theorem substitutionProof7370 : IsMapEvaluation generatorImages reduction7370.relations [8,700] reduction7370.output := by lin_cert using reduction7370.terms
def image7371 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7371 : InImage map_56_183 image7371 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7371 : Bundle := named_bundle% "RealMapCertificates/relations/basis7371.json"
theorem reductionProof7371 : EqualModuloRelations reduction7371.relations reduction7371.input reduction7371.output := by lin_cert using reduction7371.terms
theorem substitutionProof7371 : IsMapEvaluation generatorImages reduction7371.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7371.output := by lin_cert using reduction7371.terms
def map_56_184 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7515 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7515 : InImage map_56_184 image7515 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7515 : Bundle := named_bundle% "RealMapCertificates/relations/basis7515.json"
theorem reductionProof7515 : EqualModuloRelations reduction7515.relations reduction7515.input reduction7515.output := by lin_cert using reduction7515.terms
theorem substitutionProof7515 : IsMapEvaluation generatorImages reduction7515.relations [0,8,701] reduction7515.output := by lin_cert using reduction7515.terms
def map_56_186 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7730 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7730 : InImage map_56_186 image7730 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7730 : Bundle := named_bundle% "RealMapCertificates/relations/basis7730.json"
theorem reductionProof7730 : EqualModuloRelations reduction7730.relations reduction7730.input reduction7730.output := by lin_cert using reduction7730.terms
theorem substitutionProof7730 : IsMapEvaluation generatorImages reduction7730.relations [8,8,553] reduction7730.output := by lin_cert using reduction7730.terms
def map_56_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7874 : InImage map_56_187 image7874 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7874 : Bundle := named_bundle% "RealMapCertificates/relations/basis7874.json"
theorem reductionProof7874 : EqualModuloRelations reduction7874.relations reduction7874.input reduction7874.output := by lin_cert using reduction7874.terms
theorem substitutionProof7874 : IsMapEvaluation generatorImages reduction7874.relations [0,8,8,554] reduction7874.output := by lin_cert using reduction7874.terms
def map_56_189 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8080 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8080 : InImage map_56_189 image8080 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8080 : Bundle := named_bundle% "RealMapCertificates/relations/basis8080.json"
theorem reductionProof8080 : EqualModuloRelations reduction8080.relations reduction8080.input reduction8080.output := by lin_cert using reduction8080.terms
theorem substitutionProof8080 : IsMapEvaluation generatorImages reduction8080.relations [8,8,578] reduction8080.output := by lin_cert using reduction8080.terms
def image8081 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8081 : InImage map_56_189 image8081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8081 : Bundle := named_bundle% "RealMapCertificates/relations/basis8081.json"
theorem reductionProof8081 : EqualModuloRelations reduction8081.relations reduction8081.input reduction8081.output := by lin_cert using reduction8081.terms
theorem substitutionProof8081 : IsMapEvaluation generatorImages reduction8081.relations [0,0,0,0,0,0,916] reduction8081.output := by lin_cert using reduction8081.terms
def map_56_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8224 : InImage map_56_190 image8224 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8224 : Bundle := named_bundle% "RealMapCertificates/relations/basis8224.json"
theorem reductionProof8224 : EqualModuloRelations reduction8224.relations reduction8224.input reduction8224.output := by lin_cert using reduction8224.terms
theorem substitutionProof8224 : IsMapEvaluation generatorImages reduction8224.relations [0,0,0,0,0,0,0,917] reduction8224.output := by lin_cert using reduction8224.terms
def map_56_192 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8451 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8451 : InImage map_56_192 image8451 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8451 : Bundle := named_bundle% "RealMapCertificates/relations/basis8451.json"
theorem reductionProof8451 : EqualModuloRelations reduction8451.relations reduction8451.input reduction8451.output := by lin_cert using reduction8451.terms
theorem substitutionProof8451 : IsMapEvaluation generatorImages reduction8451.relations [8,8,8,431] reduction8451.output := by lin_cert using reduction8451.terms
def map_56_195 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8853 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8853 : InImage map_56_195 image8853 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8853 : Bundle := named_bundle% "RealMapCertificates/relations/basis8853.json"
theorem reductionProof8853 : EqualModuloRelations reduction8853.relations reduction8853.input reduction8853.output := by lin_cert using reduction8853.terms
theorem substitutionProof8853 : IsMapEvaluation generatorImages reduction8853.relations [8,8,8,469] reduction8853.output := by lin_cert using reduction8853.terms
def map_56_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9289 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9289 : InImage map_56_198 image9289 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9289 : Bundle := named_bundle% "RealMapCertificates/relations/basis9289.json"
theorem reductionProof9289 : EqualModuloRelations reduction9289.relations reduction9289.input reduction9289.output := by lin_cert using reduction9289.terms
theorem substitutionProof9289 : IsMapEvaluation generatorImages reduction9289.relations [8,8,8,8,295] reduction9289.output := by lin_cert using reduction9289.terms
def map_56_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9473 : InImage map_56_199 image9473 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9473 : Bundle := named_bundle% "RealMapCertificates/relations/basis9473.json"
theorem reductionProof9473 : EqualModuloRelations reduction9473.relations reduction9473.input reduction9473.output := by lin_cert using reduction9473.terms
theorem substitutionProof9473 : IsMapEvaluation generatorImages reduction9473.relations [1,5,916] reduction9473.output := by lin_cert using reduction9473.terms
def map_56_200 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9596 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9596 : InImage map_56_200 image9596 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9596 : Bundle := named_bundle% "RealMapCertificates/relations/basis9596.json"
theorem reductionProof9596 : EqualModuloRelations reduction9596.relations reduction9596.input reduction9596.output := by lin_cert using reduction9596.terms
theorem substitutionProof9596 : IsMapEvaluation generatorImages reduction9596.relations [0,0,1141] reduction9596.output := by lin_cert using reduction9596.terms
def map_56_201 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9780 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9780 : InImage map_56_201 image9780 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9780 : Bundle := named_bundle% "RealMapCertificates/relations/basis9780.json"
theorem reductionProof9780 : EqualModuloRelations reduction9780.relations reduction9780.input reduction9780.output := by lin_cert using reduction9780.terms
theorem substitutionProof9780 : IsMapEvaluation generatorImages reduction9780.relations [8,8,8,8,325] reduction9780.output := by lin_cert using reduction9780.terms
def map_56_203 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10089 : InImage map_56_203 image10089 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10089 : Bundle := named_bundle% "RealMapCertificates/relations/basis10089.json"
theorem reductionProof10089 : EqualModuloRelations reduction10089.relations reduction10089.input reduction10089.output := by lin_cert using reduction10089.terms
theorem substitutionProof10089 : IsMapEvaluation generatorImages reduction10089.relations [0,0,8,916] reduction10089.output := by lin_cert using reduction10089.terms
def map_56_204 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10269 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10269 : InImage map_56_204 image10269 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10269 : Bundle := named_bundle% "RealMapCertificates/relations/basis10269.json"
theorem reductionProof10269 : EqualModuloRelations reduction10269.relations reduction10269.input reduction10269.output := by lin_cert using reduction10269.terms
theorem substitutionProof10269 : IsMapEvaluation generatorImages reduction10269.relations [8,8,8,8,8,236] reduction10269.output := by lin_cert using reduction10269.terms
def map_56_206 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image10614 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10614 : InImage map_56_206 image10614 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10614 : Bundle := named_bundle% "RealMapCertificates/relations/basis10614.json"
theorem reductionProof10614 : EqualModuloRelations reduction10614.relations reduction10614.input reduction10614.output := by lin_cert using reduction10614.terms
theorem substitutionProof10614 : IsMapEvaluation generatorImages reduction10614.relations [0,0,8,952] reduction10614.output := by lin_cert using reduction10614.terms
def map_56_207 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image10821 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10821 : InImage map_56_207 image10821 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10821 : Bundle := named_bundle% "RealMapCertificates/relations/basis10821.json"
theorem reductionProof10821 : EqualModuloRelations reduction10821.relations reduction10821.input reduction10821.output := by lin_cert using reduction10821.terms
theorem substitutionProof10821 : IsMapEvaluation generatorImages reduction10821.relations [8,8,8,8,8,252] reduction10821.output := by lin_cert using reduction10821.terms
def map_56_209 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11144 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11144 : InImage map_56_209 image11144 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11144 : Bundle := named_bundle% "RealMapCertificates/relations/basis11144.json"
theorem reductionProof11144 : EqualModuloRelations reduction11144.relations reduction11144.input reduction11144.output := by lin_cert using reduction11144.terms
theorem substitutionProof11144 : IsMapEvaluation generatorImages reduction11144.relations [0,0,8,16,635] reduction11144.output := by lin_cert using reduction11144.terms
def map_56_210 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11330 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11330 : InImage map_56_210 image11330 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11330 : Bundle := named_bundle% "RealMapCertificates/relations/basis11330.json"
theorem reductionProof11330 : EqualModuloRelations reduction11330.relations reduction11330.input reduction11330.output := by lin_cert using reduction11330.terms
theorem substitutionProof11330 : IsMapEvaluation generatorImages reduction11330.relations [8,8,8,8,8,8,182] reduction11330.output := by lin_cert using reduction11330.terms
def map_56_212 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11674 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11674 : InImage map_56_212 image11674 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11674 : Bundle := named_bundle% "RealMapCertificates/relations/basis11674.json"
theorem reductionProof11674 : EqualModuloRelations reduction11674.relations reduction11674.input reduction11674.output := by lin_cert using reduction11674.terms
theorem substitutionProof11674 : IsMapEvaluation generatorImages reduction11674.relations [1395] reduction11674.output := by lin_cert using reduction11674.terms
def map_56_213 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image11905 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation11905 : InImage map_56_213 image11905 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11905 : Bundle := named_bundle% "RealMapCertificates/relations/basis11905.json"
theorem reductionProof11905 : EqualModuloRelations reduction11905.relations reduction11905.input reduction11905.output := by lin_cert using reduction11905.terms
theorem substitutionProof11905 : IsMapEvaluation generatorImages reduction11905.relations [17,917] reduction11905.output := by lin_cert using reduction11905.terms
def image11906 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11906 : InImage map_56_213 image11906 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11906 : Bundle := named_bundle% "RealMapCertificates/relations/basis11906.json"
theorem reductionProof11906 : EqualModuloRelations reduction11906.relations reduction11906.input reduction11906.output := by lin_cert using reduction11906.terms
theorem substitutionProof11906 : IsMapEvaluation generatorImages reduction11906.relations [8,8,8,8,8,8,199] reduction11906.output := by lin_cert using reduction11906.terms
def map_56_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12116 : InImage map_56_214 image12116 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12116 : Bundle := named_bundle% "RealMapCertificates/relations/basis12116.json"
theorem reductionProof12116 : EqualModuloRelations reduction12116.relations reduction12116.input reduction12116.output := by lin_cert using reduction12116.terms
theorem substitutionProof12116 : IsMapEvaluation generatorImages reduction12116.relations [0,0,1396] reduction12116.output := by lin_cert using reduction12116.terms
def map_56_215 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12278 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12278 : InImage map_56_215 image12278 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12278 : Bundle := named_bundle% "RealMapCertificates/relations/basis12278.json"
theorem reductionProof12278 : EqualModuloRelations reduction12278.relations reduction12278.input reduction12278.output := by lin_cert using reduction12278.terms
theorem substitutionProof12278 : IsMapEvaluation generatorImages reduction12278.relations [1468] reduction12278.output := by lin_cert using reduction12278.terms
def image12279 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12279 : InImage map_56_215 image12279 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12279 : Bundle := named_bundle% "RealMapCertificates/relations/basis12279.json"
theorem reductionProof12279 : EqualModuloRelations reduction12279.relations reduction12279.input reduction12279.output := by lin_cert using reduction12279.terms
theorem substitutionProof12279 : IsMapEvaluation generatorImages reduction12279.relations [0,0,0,1397] reduction12279.output := by lin_cert using reduction12279.terms
def map_56_216 : Matrix 5 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12472 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation12472 : InImage map_56_216 image12472 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12472 : Bundle := named_bundle% "RealMapCertificates/relations/basis12472.json"
theorem reductionProof12472 : EqualModuloRelations reduction12472.relations reduction12472.input reduction12472.output := by lin_cert using reduction12472.terms
theorem substitutionProof12472 : IsMapEvaluation generatorImages reduction12472.relations [17,953] reduction12472.output := by lin_cert using reduction12472.terms
def image12473 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12473 : InImage map_56_216 image12473 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12473 : Bundle := named_bundle% "RealMapCertificates/relations/basis12473.json"
theorem reductionProof12473 : EqualModuloRelations reduction12473.relations reduction12473.input reduction12473.output := by lin_cert using reduction12473.terms
theorem substitutionProof12473 : IsMapEvaluation generatorImages reduction12473.relations [8,8,8,8,8,8,8,145] reduction12473.output := by lin_cert using reduction12473.terms
def map_56_218 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12826 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12826 : InImage map_56_218 image12826 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12826 : Bundle := named_bundle% "RealMapCertificates/relations/basis12826.json"
theorem reductionProof12826 : EqualModuloRelations reduction12826.relations reduction12826.input reduction12826.output := by lin_cert using reduction12826.terms
theorem substitutionProof12826 : IsMapEvaluation generatorImages reduction12826.relations [16,969] reduction12826.output := by lin_cert using reduction12826.terms
def map_56_219 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13052 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13052 : InImage map_56_219 image13052 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13052 : Bundle := named_bundle% "RealMapCertificates/relations/basis13052.json"
theorem reductionProof13052 : EqualModuloRelations reduction13052.relations reduction13052.input reduction13052.output := by lin_cert using reduction13052.terms
theorem substitutionProof13052 : IsMapEvaluation generatorImages reduction13052.relations [16,17,636] reduction13052.output := by lin_cert using reduction13052.terms
def image13053 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13053 : InImage map_56_219 image13053 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13053 : Bundle := named_bundle% "RealMapCertificates/relations/basis13053.json"
theorem reductionProof13053 : EqualModuloRelations reduction13053.relations reduction13053.input reduction13053.output := by lin_cert using reduction13053.terms
theorem substitutionProof13053 : IsMapEvaluation generatorImages reduction13053.relations [8,8,8,8,8,8,8,152] reduction13053.output := by lin_cert using reduction13053.terms
def image13054 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13054 : InImage map_56_219 image13054 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13054 : Bundle := named_bundle% "RealMapCertificates/relations/basis13054.json"
theorem reductionProof13054 : EqualModuloRelations reduction13054.relations reduction13054.input reduction13054.output := by lin_cert using reduction13054.terms
theorem substitutionProof13054 : IsMapEvaluation generatorImages reduction13054.relations [0,17,969] reduction13054.output := by lin_cert using reduction13054.terms
def map_56_220 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image13245 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13245 : InImage map_56_220 image13245 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13245 : Bundle := named_bundle% "RealMapCertificates/relations/basis13245.json"
theorem reductionProof13245 : EqualModuloRelations reduction13245.relations reduction13245.input reduction13245.output := by lin_cert using reduction13245.terms
theorem substitutionProof13245 : IsMapEvaluation generatorImages reduction13245.relations [0,17,17,636] reduction13245.output := by lin_cert using reduction13245.terms
def map_56_221 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13395 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13395 : InImage map_56_221 image13395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13395 : Bundle := named_bundle% "RealMapCertificates/relations/basis13395.json"
theorem reductionProof13395 : EqualModuloRelations reduction13395.relations reduction13395.input reduction13395.output := by lin_cert using reduction13395.terms
theorem substitutionProof13395 : IsMapEvaluation generatorImages reduction13395.relations [8,1239] reduction13395.output := by lin_cert using reduction13395.terms
def image13396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13396 : InImage map_56_221 image13396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13396 : Bundle := named_bundle% "RealMapCertificates/relations/basis13396.json"
theorem reductionProof13396 : EqualModuloRelations reduction13396.relations reduction13396.input reduction13396.output := by lin_cert using reduction13396.terms
theorem substitutionProof13396 : IsMapEvaluation generatorImages reduction13396.relations [1,59,635] reduction13396.output := by lin_cert using reduction13396.terms
def image13397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13397 : InImage map_56_221 image13397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13397 : Bundle := named_bundle% "RealMapCertificates/relations/basis13397.json"
theorem reductionProof13397 : EqualModuloRelations reduction13397.relations reduction13397.input reduction13397.output := by lin_cert using reduction13397.terms
theorem substitutionProof13397 : IsMapEvaluation generatorImages reduction13397.relations [0,0,0,0,0,0,1471] reduction13397.output := by lin_cert using reduction13397.terms
def map_56_222 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13602 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13602 : InImage map_56_222 image13602 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13602 : Bundle := named_bundle% "RealMapCertificates/relations/basis13602.json"
theorem reductionProof13602 : EqualModuloRelations reduction13602.relations reduction13602.input reduction13602.output := by lin_cert using reduction13602.terms
theorem substitutionProof13602 : IsMapEvaluation generatorImages reduction13602.relations [8,17,806] reduction13602.output := by lin_cert using reduction13602.terms
def image13603 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13603 : InImage map_56_222 image13603 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13603 : Bundle := named_bundle% "RealMapCertificates/relations/basis13603.json"
theorem reductionProof13603 : EqualModuloRelations reduction13603.relations reduction13603.input reduction13603.output := by lin_cert using reduction13603.terms
theorem substitutionProof13603 : IsMapEvaluation generatorImages reduction13603.relations [8,8,8,8,8,8,8,8,110] reduction13603.output := by lin_cert using reduction13603.terms
def image13604 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13604 : InImage map_56_222 image13604 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13604 : Bundle := named_bundle% "RealMapCertificates/relations/basis13604.json"
theorem reductionProof13604 : EqualModuloRelations reduction13604.relations reduction13604.input reduction13604.output := by lin_cert using reduction13604.terms
theorem substitutionProof13604 : IsMapEvaluation generatorImages reduction13604.relations [0,0,0,0,0,1499] reduction13604.output := by lin_cert using reduction13604.terms
def map_56_224 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13943 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13943 : InImage map_56_224 image13943 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13943 : Bundle := named_bundle% "RealMapCertificates/relations/basis13943.json"
theorem reductionProof13943 : EqualModuloRelations reduction13943.relations reduction13943.input reduction13943.output := by lin_cert using reduction13943.terms
theorem substitutionProof13943 : IsMapEvaluation generatorImages reduction13943.relations [8,8,969] reduction13943.output := by lin_cert using reduction13943.terms
def map_56_225 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image14172 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14172 : InImage map_56_225 image14172 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14172 : Bundle := named_bundle% "RealMapCertificates/relations/basis14172.json"
theorem reductionProof14172 : EqualModuloRelations reduction14172.relations reduction14172.input reduction14172.output := by lin_cert using reduction14172.terms
theorem substitutionProof14172 : IsMapEvaluation generatorImages reduction14172.relations [8,8,17,636] reduction14172.output := by lin_cert using reduction14172.terms
def image14173 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14173 : InImage map_56_225 image14173 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14173 : Bundle := named_bundle% "RealMapCertificates/relations/basis14173.json"
theorem reductionProof14173 : EqualModuloRelations reduction14173.relations reduction14173.input reduction14173.output := by lin_cert using reduction14173.terms
theorem substitutionProof14173 : IsMapEvaluation generatorImages reduction14173.relations [8,8,8,8,8,8,8,8,116] reduction14173.output := by lin_cert using reduction14173.terms
def map_56_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14363 : InImage map_56_226 image14363 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14363 : Bundle := named_bundle% "RealMapCertificates/relations/basis14363.json"
theorem reductionProof14363 : EqualModuloRelations reduction14363.relations reduction14363.input reduction14363.output := by lin_cert using reduction14363.terms
theorem substitutionProof14363 : IsMapEvaluation generatorImages reduction14363.relations [0,0,0,0,64,635] reduction14363.output := by lin_cert using reduction14363.terms
def map_56_227 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14516 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14516 : InImage map_56_227 image14516 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14516 : Bundle := named_bundle% "RealMapCertificates/relations/basis14516.json"
theorem reductionProof14516 : EqualModuloRelations reduction14516.relations reduction14516.input reduction14516.output := by lin_cert using reduction14516.terms
theorem substitutionProof14516 : IsMapEvaluation generatorImages reduction14516.relations [8,8,1030] reduction14516.output := by lin_cert using reduction14516.terms
def image14517 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14517 : InImage map_56_227 image14517 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14517 : Bundle := named_bundle% "RealMapCertificates/relations/basis14517.json"
theorem reductionProof14517 : EqualModuloRelations reduction14517.relations reduction14517.input reduction14517.output := by lin_cert using reduction14517.terms
theorem substitutionProof14517 : IsMapEvaluation generatorImages reduction14517.relations [0,0,0,0,0,64,636] reduction14517.output := by lin_cert using reduction14517.terms
def map_56_228 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14737 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14737 : InImage map_56_228 image14737 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14737 : Bundle := named_bundle% "RealMapCertificates/relations/basis14737.json"
theorem reductionProof14737 : EqualModuloRelations reduction14737.relations reduction14737.input reduction14737.output := by lin_cert using reduction14737.terms
theorem substitutionProof14737 : IsMapEvaluation generatorImages reduction14737.relations [8,8,17,663] reduction14737.output := by lin_cert using reduction14737.terms
def image14738 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14738 : InImage map_56_228 image14738 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14738 : Bundle := named_bundle% "RealMapCertificates/relations/basis14738.json"
theorem reductionProof14738 : EqualModuloRelations reduction14738.relations reduction14738.input reduction14738.output := by lin_cert using reduction14738.terms
theorem substitutionProof14738 : IsMapEvaluation generatorImages reduction14738.relations [8,8,8,8,8,8,8,8,8,71] reduction14738.output := by lin_cert using reduction14738.terms
def map_56_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14961 : InImage map_56_229 image14961 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14961 : Bundle := named_bundle% "RealMapCertificates/relations/basis14961.json"
theorem reductionProof14961 : EqualModuloRelations reduction14961.relations reduction14961.input reduction14961.output := by lin_cert using reduction14961.terms
theorem substitutionProof14961 : IsMapEvaluation generatorImages reduction14961.relations [0,0,0,0,0,0,0,1589] reduction14961.output := by lin_cert using reduction14961.terms
def map_56_230 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15107 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15107 : InImage map_56_230 image15107 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15107 : Bundle := named_bundle% "RealMapCertificates/relations/basis15107.json"
theorem reductionProof15107 : EqualModuloRelations reduction15107.relations reduction15107.input reduction15107.output := by lin_cert using reduction15107.terms
theorem substitutionProof15107 : IsMapEvaluation generatorImages reduction15107.relations [8,8,16,685] reduction15107.output := by lin_cert using reduction15107.terms
def image15108 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15108 : InImage map_56_230 image15108 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15108 : Bundle := named_bundle% "RealMapCertificates/relations/basis15108.json"
theorem reductionProof15108 : EqualModuloRelations reduction15108.relations reduction15108.input reduction15108.output := by lin_cert using reduction15108.terms
theorem substitutionProof15108 : IsMapEvaluation generatorImages reduction15108.relations [0,0,0,0,0,0,0,0,0,1566] reduction15108.output := by lin_cert using reduction15108.terms
def map_56_231 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15356 : InImage map_56_231 image15356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15356 : Bundle := named_bundle% "RealMapCertificates/relations/basis15356.json"
theorem reductionProof15356 : EqualModuloRelations reduction15356.relations reduction15356.input reduction15356.output := by lin_cert using reduction15356.terms
theorem substitutionProof15356 : IsMapEvaluation generatorImages reduction15356.relations [8,8,16,17,403] reduction15356.output := by lin_cert using reduction15356.terms
def image15357 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15357 : InImage map_56_231 image15357 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15357 : Bundle := named_bundle% "RealMapCertificates/relations/basis15357.json"
theorem reductionProof15357 : EqualModuloRelations reduction15357.relations reduction15357.input reduction15357.output := by lin_cert using reduction15357.terms
theorem substitutionProof15357 : IsMapEvaluation generatorImages reduction15357.relations [8,8,8,8,8,8,8,8,8,77] reduction15357.output := by lin_cert using reduction15357.terms
def image15358 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15358 : InImage map_56_231 image15358 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15358 : Bundle := named_bundle% "RealMapCertificates/relations/basis15358.json"
theorem reductionProof15358 : EqualModuloRelations reduction15358.relations reduction15358.input reduction15358.output := by lin_cert using reduction15358.terms
theorem substitutionProof15358 : IsMapEvaluation generatorImages reduction15358.relations [1,5,1471] reduction15358.output := by lin_cert using reduction15358.terms
def map_56_232 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15579 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15579 : InImage map_56_232 image15579 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15579 : Bundle := named_bundle% "RealMapCertificates/relations/basis15579.json"
theorem reductionProof15579 : EqualModuloRelations reduction15579.relations reduction15579.input reduction15579.output := by lin_cert using reduction15579.terms
theorem substitutionProof15579 : IsMapEvaluation generatorImages reduction15579.relations [0,0,1734] reduction15579.output := by lin_cert using reduction15579.terms
def map_56_233 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image15761 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15761 : InImage map_56_233 image15761 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15761 : Bundle := named_bundle% "RealMapCertificates/relations/basis15761.json"
theorem reductionProof15761 : EqualModuloRelations reduction15761.relations reduction15761.input reduction15761.output := by lin_cert using reduction15761.terms
theorem substitutionProof15761 : IsMapEvaluation generatorImages reduction15761.relations [8,8,8,871] reduction15761.output := by lin_cert using reduction15761.terms
def image15762 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15762 : InImage map_56_233 image15762 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15762 : Bundle := named_bundle% "RealMapCertificates/relations/basis15762.json"
theorem reductionProof15762 : EqualModuloRelations reduction15762.relations reduction15762.input reduction15762.output := by lin_cert using reduction15762.terms
theorem substitutionProof15762 : IsMapEvaluation generatorImages reduction15762.relations [0,0,0,0,0,0,64,685] reduction15762.output := by lin_cert using reduction15762.terms
def map_56_234 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16002 : InImage map_56_234 image16002 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16002 : Bundle := named_bundle% "RealMapCertificates/relations/basis16002.json"
theorem reductionProof16002 : EqualModuloRelations reduction16002.relations reduction16002.input reduction16002.output := by lin_cert using reduction16002.terms
theorem substitutionProof16002 : IsMapEvaluation generatorImages reduction16002.relations [8,8,8,17,556] reduction16002.output := by lin_cert using reduction16002.terms
def image16003 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16003 : InImage map_56_234 image16003 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16003 : Bundle := named_bundle% "RealMapCertificates/relations/basis16003.json"
theorem reductionProof16003 : EqualModuloRelations reduction16003.relations reduction16003.input reduction16003.output := by lin_cert using reduction16003.terms
theorem substitutionProof16003 : IsMapEvaluation generatorImages reduction16003.relations [8,8,8,8,8,8,8,8,8,8,49] reduction16003.output := by lin_cert using reduction16003.terms
def map_56_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16245 : InImage map_56_235 image16245 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16245 : Bundle := named_bundle% "RealMapCertificates/relations/basis16245.json"
theorem reductionProof16245 : EqualModuloRelations reduction16245.relations reduction16245.input reduction16245.output := by lin_cert using reduction16245.terms
theorem substitutionProof16245 : IsMapEvaluation generatorImages reduction16245.relations [0,0,8,1471] reduction16245.output := by lin_cert using reduction16245.terms
def map_56_236 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16424 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16424 : InImage map_56_236 image16424 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16424 : Bundle := named_bundle% "RealMapCertificates/relations/basis16424.json"
theorem reductionProof16424 : EqualModuloRelations reduction16424.relations reduction16424.input reduction16424.output := by lin_cert using reduction16424.terms
theorem substitutionProof16424 : IsMapEvaluation generatorImages reduction16424.relations [8,8,8,8,685] reduction16424.output := by lin_cert using reduction16424.terms
def map_56_237 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image16672 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16672 : InImage map_56_237 image16672 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16672 : Bundle := named_bundle% "RealMapCertificates/relations/basis16672.json"
theorem reductionProof16672 : EqualModuloRelations reduction16672.relations reduction16672.input reduction16672.output := by lin_cert using reduction16672.terms
theorem substitutionProof16672 : IsMapEvaluation generatorImages reduction16672.relations [64,805] reduction16672.output := by lin_cert using reduction16672.terms
def image16673 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16673 : InImage map_56_237 image16673 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16673 : Bundle := named_bundle% "RealMapCertificates/relations/basis16673.json"
theorem reductionProof16673 : EqualModuloRelations reduction16673.relations reduction16673.input reduction16673.output := by lin_cert using reduction16673.terms
theorem substitutionProof16673 : IsMapEvaluation generatorImages reduction16673.relations [8,8,8,8,17,403] reduction16673.output := by lin_cert using reduction16673.terms
def image16674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16674 : InImage map_56_237 image16674 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16674 : Bundle := named_bundle% "RealMapCertificates/relations/basis16674.json"
theorem reductionProof16674 : EqualModuloRelations reduction16674.relations reduction16674.input reduction16674.output := by lin_cert using reduction16674.terms
theorem substitutionProof16674 : IsMapEvaluation generatorImages reduction16674.relations [8,8,8,8,8,8,8,8,8,8,55] reduction16674.output := by lin_cert using reduction16674.terms
def map_56_238 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image16905 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16905 : InImage map_56_238 image16905 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16905 : Bundle := named_bundle% "RealMapCertificates/relations/basis16905.json"
theorem reductionProof16905 : EqualModuloRelations reduction16905.relations reduction16905.input reduction16905.output := by lin_cert using reduction16905.terms
theorem substitutionProof16905 : IsMapEvaluation generatorImages reduction16905.relations [0,64,806] reduction16905.output := by lin_cert using reduction16905.terms
def image16906 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16906 : InImage map_56_238 image16906 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16906 : Bundle := named_bundle% "RealMapCertificates/relations/basis16906.json"
theorem reductionProof16906 : EqualModuloRelations reduction16906.relations reduction16906.input reduction16906.output := by lin_cert using reduction16906.terms
theorem substitutionProof16906 : IsMapEvaluation generatorImages reduction16906.relations [0,0,8,1514] reduction16906.output := by lin_cert using reduction16906.terms
def map_56_239 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17115 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17115 : InImage map_56_239 image17115 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17115 : Bundle := named_bundle% "RealMapCertificates/relations/basis17115.json"
theorem reductionProof17115 : EqualModuloRelations reduction17115.relations reduction17115.input reduction17115.output := by lin_cert using reduction17115.terms
theorem substitutionProof17115 : IsMapEvaluation generatorImages reduction17115.relations [8,8,8,8,722] reduction17115.output := by lin_cert using reduction17115.terms
def map_56_240 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image17373 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17373 : InImage map_56_240 image17373 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17373 : Bundle := named_bundle% "RealMapCertificates/relations/basis17373.json"
theorem reductionProof17373 : EqualModuloRelations reduction17373.relations reduction17373.input reduction17373.output := by lin_cert using reduction17373.terms
theorem substitutionProof17373 : IsMapEvaluation generatorImages reduction17373.relations [8,64,635] reduction17373.output := by lin_cert using reduction17373.terms
def image17374 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17374 : InImage map_56_240 image17374 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17374 : Bundle := named_bundle% "RealMapCertificates/relations/basis17374.json"
theorem reductionProof17374 : EqualModuloRelations reduction17374.relations reduction17374.input reduction17374.output := by lin_cert using reduction17374.terms
theorem substitutionProof17374 : IsMapEvaluation generatorImages reduction17374.relations [8,8,8,8,17,433] reduction17374.output := by lin_cert using reduction17374.terms
def image17375 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17375 : InImage map_56_240 image17375 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17375 : Bundle := named_bundle% "RealMapCertificates/relations/basis17375.json"
theorem reductionProof17375 : EqualModuloRelations reduction17375.relations reduction17375.input reduction17375.output := by lin_cert using reduction17375.terms
theorem substitutionProof17375 : IsMapEvaluation generatorImages reduction17375.relations [8,8,8,8,8,8,8,8,8,8,8,31] reduction17375.output := by lin_cert using reduction17375.terms
def map_56_241 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image17668 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17668 : InImage map_56_241 image17668 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17668 : Bundle := named_bundle% "RealMapCertificates/relations/basis17668.json"
theorem reductionProof17668 : EqualModuloRelations reduction17668.relations reduction17668.input reduction17668.output := by lin_cert using reduction17668.terms
theorem substitutionProof17668 : IsMapEvaluation generatorImages reduction17668.relations [0,8,64,636] reduction17668.output := by lin_cert using reduction17668.terms
def image17669 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17669 : InImage map_56_241 image17669 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17669 : Bundle := named_bundle% "RealMapCertificates/relations/basis17669.json"
theorem reductionProof17669 : EqualModuloRelations reduction17669.relations reduction17669.input reduction17669.output := by lin_cert using reduction17669.terms
theorem substitutionProof17669 : IsMapEvaluation generatorImages reduction17669.relations [0,0,8,16,1033] reduction17669.output := by lin_cert using reduction17669.terms
def map_56_242 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17876 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17876 : InImage map_56_242 image17876 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17876 : Bundle := named_bundle% "RealMapCertificates/relations/basis17876.json"
theorem reductionProof17876 : EqualModuloRelations reduction17876.relations reduction17876.input reduction17876.output := by lin_cert using reduction17876.terms
theorem substitutionProof17876 : IsMapEvaluation generatorImages reduction17876.relations [8,8,8,8,16,452] reduction17876.output := by lin_cert using reduction17876.terms
def map_56_243 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image18155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18155 : InImage map_56_243 image18155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18155 : Bundle := named_bundle% "RealMapCertificates/relations/basis18155.json"
theorem reductionProof18155 : EqualModuloRelations reduction18155.relations reduction18155.input reduction18155.output := by lin_cert using reduction18155.terms
theorem substitutionProof18155 : IsMapEvaluation generatorImages reduction18155.relations [8,64,662] reduction18155.output := by lin_cert using reduction18155.terms
def image18156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18156 : InImage map_56_243 image18156 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18156 : Bundle := named_bundle% "RealMapCertificates/relations/basis18156.json"
theorem reductionProof18156 : EqualModuloRelations reduction18156.relations reduction18156.input reduction18156.output := by lin_cert using reduction18156.terms
theorem substitutionProof18156 : IsMapEvaluation generatorImages reduction18156.relations [8,8,8,8,16,17,225] reduction18156.output := by lin_cert using reduction18156.terms
def image18157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18157 : InImage map_56_243 image18157 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18157 : Bundle := named_bundle% "RealMapCertificates/relations/basis18157.json"
theorem reductionProof18157 : EqualModuloRelations reduction18157.relations reduction18157.input reduction18157.output := by lin_cert using reduction18157.terms
theorem substitutionProof18157 : IsMapEvaluation generatorImages reduction18157.relations [8,8,8,8,8,8,8,8,8,8,8,39] reduction18157.output := by lin_cert using reduction18157.terms
def image18158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18158 : InImage map_56_243 image18158 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18158 : Bundle := named_bundle% "RealMapCertificates/relations/basis18158.json"
theorem reductionProof18158 : EqualModuloRelations reduction18158.relations reduction18158.input reduction18158.output := by lin_cert using reduction18158.terms
theorem substitutionProof18158 : IsMapEvaluation generatorImages reduction18158.relations [1,5,64,685] reduction18158.output := by lin_cert using reduction18158.terms
def map_56_244 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image18403 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18403 : InImage map_56_244 image18403 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18403 : Bundle := named_bundle% "RealMapCertificates/relations/basis18403.json"
theorem reductionProof18403 : EqualModuloRelations reduction18403.relations reduction18403.input reduction18403.output := by lin_cert using reduction18403.terms
theorem substitutionProof18403 : IsMapEvaluation generatorImages reduction18403.relations [0,0,8,8,1301] reduction18403.output := by lin_cert using reduction18403.terms
def image18404 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18404 : InImage map_56_244 image18404 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18404 : Bundle := named_bundle% "RealMapCertificates/relations/basis18404.json"
theorem reductionProof18404 : EqualModuloRelations reduction18404.relations reduction18404.input reduction18404.output := by lin_cert using reduction18404.terms
theorem substitutionProof18404 : IsMapEvaluation generatorImages reduction18404.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction18404.output := by lin_cert using reduction18404.terms
def map_56_245 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18622 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18622 : InImage map_56_245 image18622 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18622 : Bundle := named_bundle% "RealMapCertificates/relations/basis18622.json"
theorem reductionProof18622 : EqualModuloRelations reduction18622.relations reduction18622.input reduction18622.output := by lin_cert using reduction18622.terms
theorem substitutionProof18622 : IsMapEvaluation generatorImages reduction18622.relations [8,8,8,8,8,595] reduction18622.output := by lin_cert using reduction18622.terms
def map_56_246 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image18905 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18905 : InImage map_56_246 image18905 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18905 : Bundle := named_bundle% "RealMapCertificates/relations/basis18905.json"
theorem reductionProof18905 : EqualModuloRelations reduction18905.relations reduction18905.input reduction18905.output := by lin_cert using reduction18905.terms
theorem substitutionProof18905 : IsMapEvaluation generatorImages reduction18905.relations [8,16,64,402] reduction18905.output := by lin_cert using reduction18905.terms
def image18906 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18906 : InImage map_56_246 image18906 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18906 : Bundle := named_bundle% "RealMapCertificates/relations/basis18906.json"
theorem reductionProof18906 : EqualModuloRelations reduction18906.relations reduction18906.input reduction18906.output := by lin_cert using reduction18906.terms
theorem substitutionProof18906 : IsMapEvaluation generatorImages reduction18906.relations [8,8,8,8,8,17,298] reduction18906.output := by lin_cert using reduction18906.terms
def image18907 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18907 : InImage map_56_246 image18907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18907 : Bundle := named_bundle% "RealMapCertificates/relations/basis18907.json"
theorem reductionProof18907 : EqualModuloRelations reduction18907.relations reduction18907.input reduction18907.output := by lin_cert using reduction18907.terms
theorem substitutionProof18907 : IsMapEvaluation generatorImages reduction18907.relations [8,8,8,8,8,8,8,8,8,8,8,8,16] reduction18907.output := by lin_cert using reduction18907.terms
def image18908 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18908 : InImage map_56_246 image18908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18908 : Bundle := named_bundle% "RealMapCertificates/relations/basis18908.json"
theorem reductionProof18908 : EqualModuloRelations reduction18908.relations reduction18908.input reduction18908.output := by lin_cert using reduction18908.terms
theorem substitutionProof18908 : IsMapEvaluation generatorImages reduction18908.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction18908.output := by lin_cert using reduction18908.terms
def map_56_247 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image19201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19201 : InImage map_56_247 image19201 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19201 : Bundle := named_bundle% "RealMapCertificates/relations/basis19201.json"
theorem reductionProof19201 : EqualModuloRelations reduction19201.relations reduction19201.input reduction19201.output := by lin_cert using reduction19201.terms
theorem substitutionProof19201 : IsMapEvaluation generatorImages reduction19201.relations [1,2161] reduction19201.output := by lin_cert using reduction19201.terms
def image19202 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19202 : InImage map_56_247 image19202 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19202 : Bundle := named_bundle% "RealMapCertificates/relations/basis19202.json"
theorem reductionProof19202 : EqualModuloRelations reduction19202.relations reduction19202.input reduction19202.output := by lin_cert using reduction19202.terms
theorem substitutionProof19202 : IsMapEvaluation generatorImages reduction19202.relations [0,0,8,8,8,1033] reduction19202.output := by lin_cert using reduction19202.terms
def image19203 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19203 : InImage map_56_247 image19203 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19203 : Bundle := named_bundle% "RealMapCertificates/relations/basis19203.json"
theorem reductionProof19203 : EqualModuloRelations reduction19203.relations reduction19203.input reduction19203.output := by lin_cert using reduction19203.terms
theorem substitutionProof19203 : IsMapEvaluation generatorImages reduction19203.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction19203.output := by lin_cert using reduction19203.terms
def map_56_248 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19421 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19421 : InImage map_56_248 image19421 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19421 : Bundle := named_bundle% "RealMapCertificates/relations/basis19421.json"
theorem reductionProof19421 : EqualModuloRelations reduction19421.relations reduction19421.input reduction19421.output := by lin_cert using reduction19421.terms
theorem substitutionProof19421 : IsMapEvaluation generatorImages reduction19421.relations [2275] reduction19421.output := by lin_cert using reduction19421.terms
def image19422 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19422 : InImage map_56_248 image19422 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19422 : Bundle := named_bundle% "RealMapCertificates/relations/basis19422.json"
theorem reductionProof19422 : EqualModuloRelations reduction19422.relations reduction19422.input reduction19422.output := by lin_cert using reduction19422.terms
theorem substitutionProof19422 : IsMapEvaluation generatorImages reduction19422.relations [8,8,8,8,8,8,452] reduction19422.output := by lin_cert using reduction19422.terms
def map_56_249 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image19726 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19726 : InImage map_56_249 image19726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19726 : Bundle := named_bundle% "RealMapCertificates/relations/basis19726.json"
theorem reductionProof19726 : EqualModuloRelations reduction19726.relations reduction19726.input reduction19726.output := by lin_cert using reduction19726.terms
theorem substitutionProof19726 : IsMapEvaluation generatorImages reduction19726.relations [8,8,64,555] reduction19726.output := by lin_cert using reduction19726.terms
def image19727 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19727 : InImage map_56_249 image19727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19727 : Bundle := named_bundle% "RealMapCertificates/relations/basis19727.json"
theorem reductionProof19727 : EqualModuloRelations reduction19727.relations reduction19727.input reduction19727.output := by lin_cert using reduction19727.terms
theorem substitutionProof19727 : IsMapEvaluation generatorImages reduction19727.relations [8,8,8,8,8,8,17,225] reduction19727.output := by lin_cert using reduction19727.terms
def image19728 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19728 : InImage map_56_249 image19728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19728 : Bundle := named_bundle% "RealMapCertificates/relations/basis19728.json"
theorem reductionProof19728 : EqualModuloRelations reduction19728.relations reduction19728.input reduction19728.output := by lin_cert using reduction19728.terms
theorem substitutionProof19728 : IsMapEvaluation generatorImages reduction19728.relations [8,8,8,8,8,8,8,8,8,8,8,8,19] reduction19728.output := by lin_cert using reduction19728.terms
def map_56_251 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20227 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20227 : InImage map_56_251 image20227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20227 : Bundle := named_bundle% "RealMapCertificates/relations/basis20227.json"
theorem reductionProof20227 : EqualModuloRelations reduction20227.relations reduction20227.input reduction20227.output := by lin_cert using reduction20227.terms
theorem substitutionProof20227 : IsMapEvaluation generatorImages reduction20227.relations [137,686] reduction20227.output := by lin_cert using reduction20227.terms
def image20228 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20228 : InImage map_56_251 image20228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20228 : Bundle := named_bundle% "RealMapCertificates/relations/basis20228.json"
theorem reductionProof20228 : EqualModuloRelations reduction20228.relations reduction20228.input reduction20228.output := by lin_cert using reduction20228.terms
theorem substitutionProof20228 : IsMapEvaluation generatorImages reduction20228.relations [17,17,1033] reduction20228.output := by lin_cert using reduction20228.terms
def image20229 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20229 : InImage map_56_251 image20229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20229 : Bundle := named_bundle% "RealMapCertificates/relations/basis20229.json"
theorem reductionProof20229 : EqualModuloRelations reduction20229.relations reduction20229.input reduction20229.output := by lin_cert using reduction20229.terms
theorem substitutionProof20229 : IsMapEvaluation generatorImages reduction20229.relations [8,8,8,8,8,8,488] reduction20229.output := by lin_cert using reduction20229.terms
end RealMapCertificates
