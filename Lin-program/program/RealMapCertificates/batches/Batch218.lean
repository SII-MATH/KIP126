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
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 59 => []
  | 64 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 185 => [[0,4,4,8,12]]
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 224 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 297 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 402 => []
  | 432 => []
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 758 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 783 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 896 => []
  | 915 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1033 => []
  | 1048 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1059 => []
  | 1076 => []
  | 1092 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1179 => [[4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1398 => [[4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1470 => [[4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1471 => []
  | 1499 => []
  | 1566 => []
  | 1589 => []
  | 1618 => [[4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1619 => []
  | 1681 => [[4,4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1734 => []
  | 1890 => []
  | 1966 => []
  | 2330 => []
  | 2537 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | _ => []
def map_56_252 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20527 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20527 : InImage map_56_252 image20527 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20527 : Bundle := named_bundle% "RealMapCertificates/relations/basis20527.json"
theorem reductionProof20527 : EqualModuloRelations reduction20527.relations reduction20527.input reduction20527.output := by lin_cert using reduction20527.terms
theorem substitutionProof20527 : IsMapEvaluation generatorImages reduction20527.relations [8,8,8,64,402] reduction20527.output := by lin_cert using reduction20527.terms
def image20528 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20528 : InImage map_56_252 image20528 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20528 : Bundle := named_bundle% "RealMapCertificates/relations/basis20528.json"
theorem reductionProof20528 : EqualModuloRelations reduction20528.relations reduction20528.input reduction20528.output := by lin_cert using reduction20528.terms
theorem substitutionProof20528 : IsMapEvaluation generatorImages reduction20528.relations [8,8,8,8,8,8,17,238] reduction20528.output := by lin_cert using reduction20528.terms
def image20529 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation20529 : InImage map_56_252 image20529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20529 : Bundle := named_bundle% "RealMapCertificates/relations/basis20529.json"
theorem reductionProof20529 : EqualModuloRelations reduction20529.relations reduction20529.input reduction20529.output := by lin_cert using reduction20529.terms
theorem substitutionProof20529 : IsMapEvaluation generatorImages reduction20529.relations [8,8,8,8,8,8,8,8,8,8,8,8,8,8] reduction20529.output := by lin_cert using reduction20529.terms
def image20530 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20530 : InImage map_56_252 image20530 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20530 : Bundle := named_bundle% "RealMapCertificates/relations/basis20530.json"
theorem reductionProof20530 : EqualModuloRelations reduction20530.relations reduction20530.input reduction20530.output := by lin_cert using reduction20530.terms
theorem substitutionProof20530 : IsMapEvaluation generatorImages reduction20530.relations [0,246,402] reduction20530.output := by lin_cert using reduction20530.terms
def image20531 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20531 : InImage map_56_252 image20531 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20531 : Bundle := named_bundle% "RealMapCertificates/relations/basis20531.json"
theorem reductionProof20531 : EqualModuloRelations reduction20531.relations reduction20531.input reduction20531.output := by lin_cert using reduction20531.terms
theorem substitutionProof20531 : IsMapEvaluation generatorImages reduction20531.relations [0,59,1033] reduction20531.output := by lin_cert using reduction20531.terms
def map_56_253 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image20813 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20813 : InImage map_56_253 image20813 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20813 : Bundle := named_bundle% "RealMapCertificates/relations/basis20813.json"
theorem reductionProof20813 : EqualModuloRelations reduction20813.relations reduction20813.input reduction20813.output := by lin_cert using reduction20813.terms
theorem substitutionProof20813 : IsMapEvaluation generatorImages reduction20813.relations [1,59,1033] reduction20813.output := by lin_cert using reduction20813.terms
def image20814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20814 : InImage map_56_253 image20814 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20814 : Bundle := named_bundle% "RealMapCertificates/relations/basis20814.json"
theorem reductionProof20814 : EqualModuloRelations reduction20814.relations reduction20814.input reduction20814.output := by lin_cert using reduction20814.terms
theorem substitutionProof20814 : IsMapEvaluation generatorImages reduction20814.relations [0,0,0,2330] reduction20814.output := by lin_cert using reduction20814.terms
def map_56_254 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image21056 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21056 : InImage map_56_254 image21056 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21056 : Bundle := named_bundle% "RealMapCertificates/relations/basis21056.json"
theorem reductionProof21056 : EqualModuloRelations reduction21056.relations reduction21056.input reduction21056.output := by lin_cert using reduction21056.terms
theorem substitutionProof21056 : IsMapEvaluation generatorImages reduction21056.relations [17,17,1076] reduction21056.output := by lin_cert using reduction21056.terms
def image21057 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21057 : InImage map_56_254 image21057 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21057 : Bundle := named_bundle% "RealMapCertificates/relations/basis21057.json"
theorem reductionProof21057 : EqualModuloRelations reduction21057.relations reduction21057.input reduction21057.output := by lin_cert using reduction21057.terms
theorem substitutionProof21057 : IsMapEvaluation generatorImages reduction21057.relations [8,1890] reduction21057.output := by lin_cert using reduction21057.terms
def image21058 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21058 : InImage map_56_254 image21058 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21058 : Bundle := named_bundle% "RealMapCertificates/relations/basis21058.json"
theorem reductionProof21058 : EqualModuloRelations reduction21058.relations reduction21058.input reduction21058.output := by lin_cert using reduction21058.terms
theorem substitutionProof21058 : IsMapEvaluation generatorImages reduction21058.relations [8,8,8,8,8,8,16,244] reduction21058.output := by lin_cert using reduction21058.terms
def map_56_255 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image21405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21405 : InImage map_56_255 image21405 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21405 : Bundle := named_bundle% "RealMapCertificates/relations/basis21405.json"
theorem reductionProof21405 : EqualModuloRelations reduction21405.relations reduction21405.input reduction21405.output := by lin_cert using reduction21405.terms
theorem substitutionProof21405 : IsMapEvaluation generatorImages reduction21405.relations [8,8,8,64,432] reduction21405.output := by lin_cert using reduction21405.terms
def image21406 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21406 : InImage map_56_255 image21406 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21406 : Bundle := named_bundle% "RealMapCertificates/relations/basis21406.json"
theorem reductionProof21406 : EqualModuloRelations reduction21406.relations reduction21406.input reduction21406.output := by lin_cert using reduction21406.terms
theorem substitutionProof21406 : IsMapEvaluation generatorImages reduction21406.relations [8,8,8,8,8,8,16,17,138] reduction21406.output := by lin_cert using reduction21406.terms
def image21407 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21407 : InImage map_56_255 image21407 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21407 : Bundle := named_bundle% "RealMapCertificates/relations/basis21407.json"
theorem reductionProof21407 : EqualModuloRelations reduction21407.relations reduction21407.input reduction21407.output := by lin_cert using reduction21407.terms
theorem substitutionProof21407 : IsMapEvaluation generatorImages reduction21407.relations [8,8,8,8,8,8,8,8,8,8,8,8,8,9] reduction21407.output := by lin_cert using reduction21407.terms
def map_56_256 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image21699 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21699 : InImage map_56_256 image21699 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21699 : Bundle := named_bundle% "RealMapCertificates/relations/basis21699.json"
theorem reductionProof21699 : EqualModuloRelations reduction21699.relations reduction21699.input reduction21699.output := by lin_cert using reduction21699.terms
theorem substitutionProof21699 : IsMapEvaluation generatorImages reduction21699.relations [149,685] reduction21699.output := by lin_cert using reduction21699.terms
def map_56_257 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22002 : InImage map_56_257 image22002 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22002 : Bundle := named_bundle% "RealMapCertificates/relations/basis22002.json"
theorem reductionProof22002 : EqualModuloRelations reduction22002.relations reduction22002.input reduction22002.output := by lin_cert using reduction22002.terms
theorem substitutionProof22002 : IsMapEvaluation generatorImages reduction22002.relations [16,17,17,725] reduction22002.output := by lin_cert using reduction22002.terms
def image22003 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22003 : InImage map_56_257 image22003 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22003 : Bundle := named_bundle% "RealMapCertificates/relations/basis22003.json"
theorem reductionProof22003 : EqualModuloRelations reduction22003.relations reduction22003.input reduction22003.output := by lin_cert using reduction22003.terms
theorem substitutionProof22003 : IsMapEvaluation generatorImages reduction22003.relations [8,1966] reduction22003.output := by lin_cert using reduction22003.terms
def image22004 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22004 : InImage map_56_257 image22004 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22004 : Bundle := named_bundle% "RealMapCertificates/relations/basis22004.json"
theorem reductionProof22004 : EqualModuloRelations reduction22004.relations reduction22004.input reduction22004.output := by lin_cert using reduction22004.terms
theorem substitutionProof22004 : IsMapEvaluation generatorImages reduction22004.relations [8,8,8,8,8,8,8,343] reduction22004.output := by lin_cert using reduction22004.terms
def image22005 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22005 : InImage map_56_257 image22005 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22005 : Bundle := named_bundle% "RealMapCertificates/relations/basis22005.json"
theorem reductionProof22005 : EqualModuloRelations reduction22005.relations reduction22005.input reduction22005.output := by lin_cert using reduction22005.terms
theorem substitutionProof22005 : IsMapEvaluation generatorImages reduction22005.relations [0,2579] reduction22005.output := by lin_cert using reduction22005.terms
def map_56_258 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22358 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22358 : InImage map_56_258 image22358 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22358 : Bundle := named_bundle% "RealMapCertificates/relations/basis22358.json"
theorem reductionProof22358 : EqualModuloRelations reduction22358.relations reduction22358.input reduction22358.output := by lin_cert using reduction22358.terms
theorem substitutionProof22358 : IsMapEvaluation generatorImages reduction22358.relations [8,8,8,16,64,224] reduction22358.output := by lin_cert using reduction22358.terms
def image22359 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22359 : InImage map_56_258 image22359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22359 : Bundle := named_bundle% "RealMapCertificates/relations/basis22359.json"
theorem reductionProof22359 : EqualModuloRelations reduction22359.relations reduction22359.input reduction22359.output := by lin_cert using reduction22359.terms
theorem substitutionProof22359 : IsMapEvaluation generatorImages reduction22359.relations [8,8,8,8,8,8,8,17,185] reduction22359.output := by lin_cert using reduction22359.terms
def image22360 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22360 : InImage map_56_258 image22360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22360 : Bundle := named_bundle% "RealMapCertificates/relations/basis22360.json"
theorem reductionProof22360 : EqualModuloRelations reduction22360.relations reduction22360.input reduction22360.output := by lin_cert using reduction22360.terms
theorem substitutionProof22360 : IsMapEvaluation generatorImages reduction22360.relations [8,8,8,8,8,8,8,8,8,8,8,8,8,13] reduction22360.output := by lin_cert using reduction22360.terms
def image22361 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22361 : InImage map_56_258 image22361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22361 : Bundle := named_bundle% "RealMapCertificates/relations/basis22361.json"
theorem reductionProof22361 : EqualModuloRelations reduction22361.relations reduction22361.input reduction22361.output := by lin_cert using reduction22361.terms
theorem substitutionProof22361 : IsMapEvaluation generatorImages reduction22361.relations [0,0,0,0,64,1033] reduction22361.output := by lin_cert using reduction22361.terms
def map_56_259 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image22702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22702 : InImage map_56_259 image22702 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22702 : Bundle := named_bundle% "RealMapCertificates/relations/basis22702.json"
theorem reductionProof22702 : EqualModuloRelations reduction22702.relations reduction22702.input reduction22702.output := by lin_cert using reduction22702.terms
theorem substitutionProof22702 : IsMapEvaluation generatorImages reduction22702.relations [149,722] reduction22702.output := by lin_cert using reduction22702.terms
def image22703 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22703 : InImage map_56_259 image22703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22703 : Bundle := named_bundle% "RealMapCertificates/relations/basis22703.json"
theorem reductionProof22703 : EqualModuloRelations reduction22703.relations reduction22703.input reduction22703.output := by lin_cert using reduction22703.terms
theorem substitutionProof22703 : IsMapEvaluation generatorImages reduction22703.relations [0,0,0,64,1059] reduction22703.output := by lin_cert using reduction22703.terms
def image22704 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22704 : InImage map_56_259 image22704 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22704 : Bundle := named_bundle% "RealMapCertificates/relations/basis22704.json"
theorem reductionProof22704 : EqualModuloRelations reduction22704.relations reduction22704.input reduction22704.output := by lin_cert using reduction22704.terms
theorem substitutionProof22704 : IsMapEvaluation generatorImages reduction22704.relations [0,0,0,0,0,138,725] reduction22704.output := by lin_cert using reduction22704.terms
def map_56_260 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image23033 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23033 : InImage map_56_260 image23033 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23033 : Bundle := named_bundle% "RealMapCertificates/relations/basis23033.json"
theorem reductionProof23033 : EqualModuloRelations reduction23033.relations reduction23033.input reduction23033.output := by lin_cert using reduction23033.terms
theorem substitutionProof23033 : IsMapEvaluation generatorImages reduction23033.relations [8,17,17,896] reduction23033.output := by lin_cert using reduction23033.terms
def image23034 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23034 : InImage map_56_260 image23034 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23034 : Bundle := named_bundle% "RealMapCertificates/relations/basis23034.json"
theorem reductionProof23034 : EqualModuloRelations reduction23034.relations reduction23034.input reduction23034.output := by lin_cert using reduction23034.terms
theorem substitutionProof23034 : IsMapEvaluation generatorImages reduction23034.relations [8,8,1619] reduction23034.output := by lin_cert using reduction23034.terms
def image23035 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation23035 : InImage map_56_260 image23035 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23035 : Bundle := named_bundle% "RealMapCertificates/relations/basis23035.json"
theorem reductionProof23035 : EqualModuloRelations reduction23035.relations reduction23035.input reduction23035.output := by lin_cert using reduction23035.terms
theorem substitutionProof23035 : IsMapEvaluation generatorImages reduction23035.relations [8,8,8,8,8,8,8,8,244] reduction23035.output := by lin_cert using reduction23035.terms
def image23036 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23036 : InImage map_56_260 image23036 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23036 : Bundle := named_bundle% "RealMapCertificates/relations/basis23036.json"
theorem reductionProof23036 : EqualModuloRelations reduction23036.relations reduction23036.input reduction23036.output := by lin_cert using reduction23036.terms
theorem substitutionProof23036 : IsMapEvaluation generatorImages reduction23036.relations [0,0,0,0,0,2537] reduction23036.output := by lin_cert using reduction23036.terms
def map_56_261 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image23474 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23474 : InImage map_56_261 image23474 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23474 : Bundle := named_bundle% "RealMapCertificates/relations/basis23474.json"
theorem reductionProof23474 : EqualModuloRelations reduction23474.relations reduction23474.input reduction23474.output := by lin_cert using reduction23474.terms
theorem substitutionProof23474 : IsMapEvaluation generatorImages reduction23474.relations [8,8,8,8,64,297] reduction23474.output := by lin_cert using reduction23474.terms
def image23475 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23475 : InImage map_56_261 image23475 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23475 : Bundle := named_bundle% "RealMapCertificates/relations/basis23475.json"
theorem reductionProof23475 : EqualModuloRelations reduction23475.relations reduction23475.input reduction23475.output := by lin_cert using reduction23475.terms
theorem substitutionProof23475 : IsMapEvaluation generatorImages reduction23475.relations [8,8,8,8,8,8,8,8,17,138] reduction23475.output := by lin_cert using reduction23475.terms
def image23476 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23476 : InImage map_56_261 image23476 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23476 : Bundle := named_bundle% "RealMapCertificates/relations/basis23476.json"
theorem reductionProof23476 : EqualModuloRelations reduction23476.relations reduction23476.input reduction23476.output := by lin_cert using reduction23476.terms
theorem substitutionProof23476 : IsMapEvaluation generatorImages reduction23476.relations [8,8,8,8,8,8,8,8,8,8,8,8,9,13] reduction23476.output := by lin_cert using reduction23476.terms
def map_57_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image321 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation321 : InImage map_57_57 image321 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction321 : Bundle := named_bundle% "RealMapCertificates/relations/basis321.json"
theorem reductionProof321 : EqualModuloRelations reduction321.relations reduction321.input reduction321.output := by lin_cert using reduction321.terms
theorem substitutionProof321 : IsMapEvaluation generatorImages reduction321.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction321.output := by lin_cert using reduction321.terms
def map_57_170 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5857 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5857 : InImage map_57_170 image5857 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5857 : Bundle := named_bundle% "RealMapCertificates/relations/basis5857.json"
theorem reductionProof5857 : EqualModuloRelations reduction5857.relations reduction5857.input reduction5857.output := by lin_cert using reduction5857.terms
theorem substitutionProof5857 : IsMapEvaluation generatorImages reduction5857.relations [758] reduction5857.output := by lin_cert using reduction5857.terms
def map_57_172 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6106 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6106 : InImage map_57_172 image6106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6106 : Bundle := named_bundle% "RealMapCertificates/relations/basis6106.json"
theorem reductionProof6106 : EqualModuloRelations reduction6106.relations reduction6106.input reduction6106.output := by lin_cert using reduction6106.terms
theorem substitutionProof6106 : IsMapEvaluation generatorImages reduction6106.relations [783] reduction6106.output := by lin_cert using reduction6106.terms
def map_57_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6441 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6441 : InImage map_57_175 image6441 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6441 : Bundle := named_bundle% "RealMapCertificates/relations/basis6441.json"
theorem reductionProof6441 : EqualModuloRelations reduction6441.relations reduction6441.input reduction6441.output := by lin_cert using reduction6441.terms
theorem substitutionProof6441 : IsMapEvaluation generatorImages reduction6441.relations [0,803] reduction6441.output := by lin_cert using reduction6441.terms
def map_57_176 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image6530 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6530 : InImage map_57_176 image6530 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6530 : Bundle := named_bundle% "RealMapCertificates/relations/basis6530.json"
theorem reductionProof6530 : EqualModuloRelations reduction6530.relations reduction6530.input reduction6530.output := by lin_cert using reduction6530.terms
theorem substitutionProof6530 : IsMapEvaluation generatorImages reduction6530.relations [1,803] reduction6530.output := by lin_cert using reduction6530.terms
def image6531 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6531 : InImage map_57_176 image6531 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6531 : Bundle := named_bundle% "RealMapCertificates/relations/basis6531.json"
theorem reductionProof6531 : EqualModuloRelations reduction6531.relations reduction6531.input reduction6531.output := by lin_cert using reduction6531.terms
theorem substitutionProof6531 : IsMapEvaluation generatorImages reduction6531.relations [0,0,804] reduction6531.output := by lin_cert using reduction6531.terms
def map_57_178 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6785 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6785 : InImage map_57_178 image6785 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6785 : Bundle := named_bundle% "RealMapCertificates/relations/basis6785.json"
theorem reductionProof6785 : EqualModuloRelations reduction6785.relations reduction6785.input reduction6785.output := by lin_cert using reduction6785.terms
theorem substitutionProof6785 : IsMapEvaluation generatorImages reduction6785.relations [0,851] reduction6785.output := by lin_cert using reduction6785.terms
def map_57_179 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6892 : InImage map_57_179 image6892 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6892 : Bundle := named_bundle% "RealMapCertificates/relations/basis6892.json"
theorem reductionProof6892 : EqualModuloRelations reduction6892.relations reduction6892.input reduction6892.output := by lin_cert using reduction6892.terms
theorem substitutionProof6892 : IsMapEvaluation generatorImages reduction6892.relations [0,0,852] reduction6892.output := by lin_cert using reduction6892.terms
def map_57_181 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7161 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7161 : InImage map_57_181 image7161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7161 : Bundle := named_bundle% "RealMapCertificates/relations/basis7161.json"
theorem reductionProof7161 : EqualModuloRelations reduction7161.relations reduction7161.input reduction7161.output := by lin_cert using reduction7161.terms
theorem substitutionProof7161 : IsMapEvaluation generatorImages reduction7161.relations [0,8,661] reduction7161.output := by lin_cert using reduction7161.terms
def map_57_182 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7247 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7247 : InImage map_57_182 image7247 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7247 : Bundle := named_bundle% "RealMapCertificates/relations/basis7247.json"
theorem reductionProof7247 : EqualModuloRelations reduction7247.relations reduction7247.input reduction7247.output := by lin_cert using reduction7247.terms
theorem substitutionProof7247 : IsMapEvaluation generatorImages reduction7247.relations [0,0,16,554] reduction7247.output := by lin_cert using reduction7247.terms
def map_57_183 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7369 : InImage map_57_183 image7369 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7369 : Bundle := named_bundle% "RealMapCertificates/relations/basis7369.json"
theorem reductionProof7369 : EqualModuloRelations reduction7369.relations reduction7369.input reduction7369.output := by lin_cert using reduction7369.terms
theorem substitutionProof7369 : IsMapEvaluation generatorImages reduction7369.relations [0,0,0,17,554] reduction7369.output := by lin_cert using reduction7369.terms
def map_57_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7513 : InImage map_57_184 image7513 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7513 : Bundle := named_bundle% "RealMapCertificates/relations/basis7513.json"
theorem reductionProof7513 : EqualModuloRelations reduction7513.relations reduction7513.input reduction7513.output := by lin_cert using reduction7513.terms
theorem substitutionProof7513 : IsMapEvaluation generatorImages reduction7513.relations [0,8,700] reduction7513.output := by lin_cert using reduction7513.terms
def image7514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7514 : InImage map_57_184 image7514 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7514 : Bundle := named_bundle% "RealMapCertificates/relations/basis7514.json"
theorem reductionProof7514 : EqualModuloRelations reduction7514.relations reduction7514.input reduction7514.output := by lin_cert using reduction7514.terms
theorem substitutionProof7514 : IsMapEvaluation generatorImages reduction7514.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7514.output := by lin_cert using reduction7514.terms
def map_57_185 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7611 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7611 : InImage map_57_185 image7611 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7611 : Bundle := named_bundle% "RealMapCertificates/relations/basis7611.json"
theorem reductionProof7611 : EqualModuloRelations reduction7611.relations reduction7611.input reduction7611.output := by lin_cert using reduction7611.terms
theorem substitutionProof7611 : IsMapEvaluation generatorImages reduction7611.relations [0,0,8,701] reduction7611.output := by lin_cert using reduction7611.terms
def map_57_187 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7873 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7873 : InImage map_57_187 image7873 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7873 : Bundle := named_bundle% "RealMapCertificates/relations/basis7873.json"
theorem reductionProof7873 : EqualModuloRelations reduction7873.relations reduction7873.input reduction7873.output := by lin_cert using reduction7873.terms
theorem substitutionProof7873 : IsMapEvaluation generatorImages reduction7873.relations [0,8,8,553] reduction7873.output := by lin_cert using reduction7873.terms
def map_57_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7951 : InImage map_57_188 image7951 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7951 : Bundle := named_bundle% "RealMapCertificates/relations/basis7951.json"
theorem reductionProof7951 : EqualModuloRelations reduction7951.relations reduction7951.input reduction7951.output := by lin_cert using reduction7951.terms
theorem substitutionProof7951 : IsMapEvaluation generatorImages reduction7951.relations [0,0,8,8,554] reduction7951.output := by lin_cert using reduction7951.terms
def map_57_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8223 : InImage map_57_190 image8223 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8223 : Bundle := named_bundle% "RealMapCertificates/relations/basis8223.json"
theorem reductionProof8223 : EqualModuloRelations reduction8223.relations reduction8223.input reduction8223.output := by lin_cert using reduction8223.terms
theorem substitutionProof8223 : IsMapEvaluation generatorImages reduction8223.relations [0,0,0,0,0,0,0,916] reduction8223.output := by lin_cert using reduction8223.terms
def map_57_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8333 : InImage map_57_191 image8333 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8333 : Bundle := named_bundle% "RealMapCertificates/relations/basis8333.json"
theorem reductionProof8333 : EqualModuloRelations reduction8333.relations reduction8333.input reduction8333.output := by lin_cert using reduction8333.terms
theorem substitutionProof8333 : IsMapEvaluation generatorImages reduction8333.relations [0,0,0,0,0,0,0,0,917] reduction8333.output := by lin_cert using reduction8333.terms
def map_57_192 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8450 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8450 : InImage map_57_192 image8450 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8450 : Bundle := named_bundle% "RealMapCertificates/relations/basis8450.json"
theorem reductionProof8450 : EqualModuloRelations reduction8450.relations reduction8450.input reduction8450.output := by lin_cert using reduction8450.terms
theorem substitutionProof8450 : IsMapEvaluation generatorImages reduction8450.relations [1048] reduction8450.output := by lin_cert using reduction8450.terms
def map_57_195 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8852 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8852 : InImage map_57_195 image8852 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8852 : Bundle := named_bundle% "RealMapCertificates/relations/basis8852.json"
theorem reductionProof8852 : EqualModuloRelations reduction8852.relations reduction8852.input reduction8852.output := by lin_cert using reduction8852.terms
theorem substitutionProof8852 : IsMapEvaluation generatorImages reduction8852.relations [1092] reduction8852.output := by lin_cert using reduction8852.terms
def map_57_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9288 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9288 : InImage map_57_198 image9288 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9288 : Bundle := named_bundle% "RealMapCertificates/relations/basis9288.json"
theorem reductionProof9288 : EqualModuloRelations reduction9288.relations reduction9288.input reduction9288.output := by lin_cert using reduction9288.terms
theorem substitutionProof9288 : IsMapEvaluation generatorImages reduction9288.relations [8,886] reduction9288.output := by lin_cert using reduction9288.terms
def map_57_201 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9778 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9778 : InImage map_57_201 image9778 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9778 : Bundle := named_bundle% "RealMapCertificates/relations/basis9778.json"
theorem reductionProof9778 : EqualModuloRelations reduction9778.relations reduction9778.input reduction9778.output := by lin_cert using reduction9778.terms
theorem substitutionProof9778 : IsMapEvaluation generatorImages reduction9778.relations [8,915] reduction9778.output := by lin_cert using reduction9778.terms
def image9779 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9779 : InImage map_57_201 image9779 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9779 : Bundle := named_bundle% "RealMapCertificates/relations/basis9779.json"
theorem reductionProof9779 : EqualModuloRelations reduction9779.relations reduction9779.input reduction9779.output := by lin_cert using reduction9779.terms
theorem substitutionProof9779 : IsMapEvaluation generatorImages reduction9779.relations [0,0,0,1141] reduction9779.output := by lin_cert using reduction9779.terms
def map_57_204 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image10268 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10268 : InImage map_57_204 image10268 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10268 : Bundle := named_bundle% "RealMapCertificates/relations/basis10268.json"
theorem reductionProof10268 : EqualModuloRelations reduction10268.relations reduction10268.input reduction10268.output := by lin_cert using reduction10268.terms
theorem substitutionProof10268 : IsMapEvaluation generatorImages reduction10268.relations [8,8,736] reduction10268.output := by lin_cert using reduction10268.terms
def map_57_207 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image10819 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10819 : InImage map_57_207 image10819 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10819 : Bundle := named_bundle% "RealMapCertificates/relations/basis10819.json"
theorem reductionProof10819 : EqualModuloRelations reduction10819.relations reduction10819.input reduction10819.output := by lin_cert using reduction10819.terms
theorem substitutionProof10819 : IsMapEvaluation generatorImages reduction10819.relations [1313] reduction10819.output := by lin_cert using reduction10819.terms
def image10820 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10820 : InImage map_57_207 image10820 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10820 : Bundle := named_bundle% "RealMapCertificates/relations/basis10820.json"
theorem reductionProof10820 : EqualModuloRelations reduction10820.relations reduction10820.input reduction10820.output := by lin_cert using reduction10820.terms
theorem substitutionProof10820 : IsMapEvaluation generatorImages reduction10820.relations [8,8,777] reduction10820.output := by lin_cert using reduction10820.terms
def map_57_210 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image11328 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation11328 : InImage map_57_210 image11328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11328 : Bundle := named_bundle% "RealMapCertificates/relations/basis11328.json"
theorem reductionProof11328 : EqualModuloRelations reduction11328.relations reduction11328.input reduction11328.output := by lin_cert using reduction11328.terms
theorem substitutionProof11328 : IsMapEvaluation generatorImages reduction11328.relations [1361] reduction11328.output := by lin_cert using reduction11328.terms
def image11329 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11329 : InImage map_57_210 image11329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11329 : Bundle := named_bundle% "RealMapCertificates/relations/basis11329.json"
theorem reductionProof11329 : EqualModuloRelations reduction11329.relations reduction11329.input reduction11329.output := by lin_cert using reduction11329.terms
theorem substitutionProof11329 : IsMapEvaluation generatorImages reduction11329.relations [8,8,8,607] reduction11329.output := by lin_cert using reduction11329.terms
def map_57_213 : Matrix 6 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11902 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11902 : InImage map_57_213 image11902 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11902 : Bundle := named_bundle% "RealMapCertificates/relations/basis11902.json"
theorem reductionProof11902 : EqualModuloRelations reduction11902.relations reduction11902.input reduction11902.output := by lin_cert using reduction11902.terms
theorem substitutionProof11902 : IsMapEvaluation generatorImages reduction11902.relations [16,917] reduction11902.output := by lin_cert using reduction11902.terms
def image11903 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11903 : InImage map_57_213 image11903 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11903 : Bundle := named_bundle% "RealMapCertificates/relations/basis11903.json"
theorem reductionProof11903 : EqualModuloRelations reduction11903.relations reduction11903.input reduction11903.output := by lin_cert using reduction11903.terms
theorem substitutionProof11903 : IsMapEvaluation generatorImages reduction11903.relations [8,8,8,634] reduction11903.output := by lin_cert using reduction11903.terms
def image11904 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11904 : InImage map_57_213 image11904 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11904 : Bundle := named_bundle% "RealMapCertificates/relations/basis11904.json"
theorem reductionProof11904 : EqualModuloRelations reduction11904.relations reduction11904.input reduction11904.output := by lin_cert using reduction11904.terms
theorem substitutionProof11904 : IsMapEvaluation generatorImages reduction11904.relations [0,1395] reduction11904.output := by lin_cert using reduction11904.terms
def map_57_214 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image12114 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12114 : InImage map_57_214 image12114 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12114 : Bundle := named_bundle% "RealMapCertificates/relations/basis12114.json"
theorem reductionProof12114 : EqualModuloRelations reduction12114.relations reduction12114.input reduction12114.output := by lin_cert using reduction12114.terms
theorem substitutionProof12114 : IsMapEvaluation generatorImages reduction12114.relations [1,1395] reduction12114.output := by lin_cert using reduction12114.terms
def image12115 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12115 : InImage map_57_214 image12115 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12115 : Bundle := named_bundle% "RealMapCertificates/relations/basis12115.json"
theorem reductionProof12115 : EqualModuloRelations reduction12115.relations reduction12115.input reduction12115.output := by lin_cert using reduction12115.terms
theorem substitutionProof12115 : IsMapEvaluation generatorImages reduction12115.relations [0,17,917] reduction12115.output := by lin_cert using reduction12115.terms
def map_57_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12277 : InImage map_57_215 image12277 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12277 : Bundle := named_bundle% "RealMapCertificates/relations/basis12277.json"
theorem reductionProof12277 : EqualModuloRelations reduction12277.relations reduction12277.input reduction12277.output := by lin_cert using reduction12277.terms
theorem substitutionProof12277 : IsMapEvaluation generatorImages reduction12277.relations [0,0,0,1396] reduction12277.output := by lin_cert using reduction12277.terms
def map_57_216 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image12468 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12468 : InImage map_57_216 image12468 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12468 : Bundle := named_bundle% "RealMapCertificates/relations/basis12468.json"
theorem reductionProof12468 : EqualModuloRelations reduction12468.relations reduction12468.input reduction12468.output := by lin_cert using reduction12468.terms
theorem substitutionProof12468 : IsMapEvaluation generatorImages reduction12468.relations [8,1142] reduction12468.output := by lin_cert using reduction12468.terms
def image12469 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12469 : InImage map_57_216 image12469 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12469 : Bundle := named_bundle% "RealMapCertificates/relations/basis12469.json"
theorem reductionProof12469 : EqualModuloRelations reduction12469.relations reduction12469.input reduction12469.output := by lin_cert using reduction12469.terms
theorem substitutionProof12469 : IsMapEvaluation generatorImages reduction12469.relations [8,8,8,8,498] reduction12469.output := by lin_cert using reduction12469.terms
def image12470 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12470 : InImage map_57_216 image12470 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12470 : Bundle := named_bundle% "RealMapCertificates/relations/basis12470.json"
theorem reductionProof12470 : EqualModuloRelations reduction12470.relations reduction12470.input reduction12470.output := by lin_cert using reduction12470.terms
theorem substitutionProof12470 : IsMapEvaluation generatorImages reduction12470.relations [0,1468] reduction12470.output := by lin_cert using reduction12470.terms
def image12471 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12471 : InImage map_57_216 image12471 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12471 : Bundle := named_bundle% "RealMapCertificates/relations/basis12471.json"
theorem reductionProof12471 : EqualModuloRelations reduction12471.relations reduction12471.input reduction12471.output := by lin_cert using reduction12471.terms
theorem substitutionProof12471 : IsMapEvaluation generatorImages reduction12471.relations [0,0,0,0,1397] reduction12471.output := by lin_cert using reduction12471.terms
def map_57_217 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image12689 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12689 : InImage map_57_217 image12689 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12689 : Bundle := named_bundle% "RealMapCertificates/relations/basis12689.json"
theorem reductionProof12689 : EqualModuloRelations reduction12689.relations reduction12689.input reduction12689.output := by lin_cert using reduction12689.terms
theorem substitutionProof12689 : IsMapEvaluation generatorImages reduction12689.relations [0,17,953] reduction12689.output := by lin_cert using reduction12689.terms
def map_57_219 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image13049 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13049 : InImage map_57_219 image13049 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13049 : Bundle := named_bundle% "RealMapCertificates/relations/basis13049.json"
theorem reductionProof13049 : EqualModuloRelations reduction13049.relations reduction13049.input reduction13049.output := by lin_cert using reduction13049.terms
theorem substitutionProof13049 : IsMapEvaluation generatorImages reduction13049.relations [8,8,917] reduction13049.output := by lin_cert using reduction13049.terms
def image13050 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13050 : InImage map_57_219 image13050 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13050 : Bundle := named_bundle% "RealMapCertificates/relations/basis13050.json"
theorem reductionProof13050 : EqualModuloRelations reduction13050.relations reduction13050.input reduction13050.output := by lin_cert using reduction13050.terms
theorem substitutionProof13050 : IsMapEvaluation generatorImages reduction13050.relations [8,8,8,8,528] reduction13050.output := by lin_cert using reduction13050.terms
def image13051 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13051 : InImage map_57_219 image13051 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13051 : Bundle := named_bundle% "RealMapCertificates/relations/basis13051.json"
theorem reductionProof13051 : EqualModuloRelations reduction13051.relations reduction13051.input reduction13051.output := by lin_cert using reduction13051.terms
theorem substitutionProof13051 : IsMapEvaluation generatorImages reduction13051.relations [0,16,969] reduction13051.output := by lin_cert using reduction13051.terms
def map_57_220 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13243 : InImage map_57_220 image13243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13243 : Bundle := named_bundle% "RealMapCertificates/relations/basis13243.json"
theorem reductionProof13243 : EqualModuloRelations reduction13243.relations reduction13243.input reduction13243.output := by lin_cert using reduction13243.terms
theorem substitutionProof13243 : IsMapEvaluation generatorImages reduction13243.relations [0,16,17,636] reduction13243.output := by lin_cert using reduction13243.terms
def image13244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13244 : InImage map_57_220 image13244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13244 : Bundle := named_bundle% "RealMapCertificates/relations/basis13244.json"
theorem reductionProof13244 : EqualModuloRelations reduction13244.relations reduction13244.input reduction13244.output := by lin_cert using reduction13244.terms
theorem substitutionProof13244 : IsMapEvaluation generatorImages reduction13244.relations [0,0,17,969] reduction13244.output := by lin_cert using reduction13244.terms
def map_57_221 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13394 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13394 : InImage map_57_221 image13394 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13394 : Bundle := named_bundle% "RealMapCertificates/relations/basis13394.json"
theorem reductionProof13394 : EqualModuloRelations reduction13394.relations reduction13394.input reduction13394.output := by lin_cert using reduction13394.terms
theorem substitutionProof13394 : IsMapEvaluation generatorImages reduction13394.relations [0,0,17,17,636] reduction13394.output := by lin_cert using reduction13394.terms
def map_57_222 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13599 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13599 : InImage map_57_222 image13599 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13599 : Bundle := named_bundle% "RealMapCertificates/relations/basis13599.json"
theorem reductionProof13599 : EqualModuloRelations reduction13599.relations reduction13599.input reduction13599.output := by lin_cert using reduction13599.terms
theorem substitutionProof13599 : IsMapEvaluation generatorImages reduction13599.relations [8,8,953] reduction13599.output := by lin_cert using reduction13599.terms
def image13600 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13600 : InImage map_57_222 image13600 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13600 : Bundle := named_bundle% "RealMapCertificates/relations/basis13600.json"
theorem reductionProof13600 : EqualModuloRelations reduction13600.relations reduction13600.input reduction13600.output := by lin_cert using reduction13600.terms
theorem substitutionProof13600 : IsMapEvaluation generatorImages reduction13600.relations [8,8,8,8,8,354] reduction13600.output := by lin_cert using reduction13600.terms
def image13601 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13601 : InImage map_57_222 image13601 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13601 : Bundle := named_bundle% "RealMapCertificates/relations/basis13601.json"
theorem reductionProof13601 : EqualModuloRelations reduction13601.relations reduction13601.input reduction13601.output := by lin_cert using reduction13601.terms
theorem substitutionProof13601 : IsMapEvaluation generatorImages reduction13601.relations [0,0,0,0,0,0,0,1471] reduction13601.output := by lin_cert using reduction13601.terms
def map_57_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13811 : InImage map_57_223 image13811 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13811 : Bundle := named_bundle% "RealMapCertificates/relations/basis13811.json"
theorem reductionProof13811 : EqualModuloRelations reduction13811.relations reduction13811.input reduction13811.output := by lin_cert using reduction13811.terms
theorem substitutionProof13811 : IsMapEvaluation generatorImages reduction13811.relations [0,8,17,806] reduction13811.output := by lin_cert using reduction13811.terms
def image13812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13812 : InImage map_57_223 image13812 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13812 : Bundle := named_bundle% "RealMapCertificates/relations/basis13812.json"
theorem reductionProof13812 : EqualModuloRelations reduction13812.relations reduction13812.input reduction13812.output := by lin_cert using reduction13812.terms
theorem substitutionProof13812 : IsMapEvaluation generatorImages reduction13812.relations [0,0,0,0,0,0,1499] reduction13812.output := by lin_cert using reduction13812.terms
def map_57_224 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13942 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13942 : InImage map_57_224 image13942 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13942 : Bundle := named_bundle% "RealMapCertificates/relations/basis13942.json"
theorem reductionProof13942 : EqualModuloRelations reduction13942.relations reduction13942.input reduction13942.output := by lin_cert using reduction13942.terms
theorem substitutionProof13942 : IsMapEvaluation generatorImages reduction13942.relations [1618] reduction13942.output := by lin_cert using reduction13942.terms
def map_57_225 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14170 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14170 : InImage map_57_225 image14170 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14170 : Bundle := named_bundle% "RealMapCertificates/relations/basis14170.json"
theorem reductionProof14170 : EqualModuloRelations reduction14170.relations reduction14170.input reduction14170.output := by lin_cert using reduction14170.terms
theorem substitutionProof14170 : IsMapEvaluation generatorImages reduction14170.relations [8,8,16,636] reduction14170.output := by lin_cert using reduction14170.terms
def image14171 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14171 : InImage map_57_225 image14171 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14171 : Bundle := named_bundle% "RealMapCertificates/relations/basis14171.json"
theorem reductionProof14171 : EqualModuloRelations reduction14171.relations reduction14171.input reduction14171.output := by lin_cert using reduction14171.terms
theorem substitutionProof14171 : IsMapEvaluation generatorImages reduction14171.relations [8,8,8,8,8,401] reduction14171.output := by lin_cert using reduction14171.terms
def map_57_227 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14514 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14514 : InImage map_57_227 image14514 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14514 : Bundle := named_bundle% "RealMapCertificates/relations/basis14514.json"
theorem reductionProof14514 : EqualModuloRelations reduction14514.relations reduction14514.input reduction14514.output := by lin_cert using reduction14514.terms
theorem substitutionProof14514 : IsMapEvaluation generatorImages reduction14514.relations [1681] reduction14514.output := by lin_cert using reduction14514.terms
def image14515 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14515 : InImage map_57_227 image14515 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14515 : Bundle := named_bundle% "RealMapCertificates/relations/basis14515.json"
theorem reductionProof14515 : EqualModuloRelations reduction14515.relations reduction14515.input reduction14515.output := by lin_cert using reduction14515.terms
theorem substitutionProof14515 : IsMapEvaluation generatorImages reduction14515.relations [0,0,0,0,0,64,635] reduction14515.output := by lin_cert using reduction14515.terms
def map_57_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14734 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14734 : InImage map_57_228 image14734 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14734 : Bundle := named_bundle% "RealMapCertificates/relations/basis14734.json"
theorem reductionProof14734 : EqualModuloRelations reduction14734.relations reduction14734.input reduction14734.output := by lin_cert using reduction14734.terms
theorem substitutionProof14734 : IsMapEvaluation generatorImages reduction14734.relations [8,8,8,806] reduction14734.output := by lin_cert using reduction14734.terms
def image14735 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14735 : InImage map_57_228 image14735 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14735 : Bundle := named_bundle% "RealMapCertificates/relations/basis14735.json"
theorem reductionProof14735 : EqualModuloRelations reduction14735.relations reduction14735.input reduction14735.output := by lin_cert using reduction14735.terms
theorem substitutionProof14735 : IsMapEvaluation generatorImages reduction14735.relations [8,8,8,8,8,8,265] reduction14735.output := by lin_cert using reduction14735.terms
def image14736 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14736 : InImage map_57_228 image14736 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14736 : Bundle := named_bundle% "RealMapCertificates/relations/basis14736.json"
theorem reductionProof14736 : EqualModuloRelations reduction14736.relations reduction14736.input reduction14736.output := by lin_cert using reduction14736.terms
theorem substitutionProof14736 : IsMapEvaluation generatorImages reduction14736.relations [0,0,0,0,0,0,64,636] reduction14736.output := by lin_cert using reduction14736.terms
def map_57_230 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15105 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15105 : InImage map_57_230 image15105 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15105 : Bundle := named_bundle% "RealMapCertificates/relations/basis15105.json"
theorem reductionProof15105 : EqualModuloRelations reduction15105.relations reduction15105.input reduction15105.output := by lin_cert using reduction15105.terms
theorem substitutionProof15105 : IsMapEvaluation generatorImages reduction15105.relations [8,1398] reduction15105.output := by lin_cert using reduction15105.terms
def image15106 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15106 : InImage map_57_230 image15106 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15106 : Bundle := named_bundle% "RealMapCertificates/relations/basis15106.json"
theorem reductionProof15106 : EqualModuloRelations reduction15106.relations reduction15106.input reduction15106.output := by lin_cert using reduction15106.terms
theorem substitutionProof15106 : IsMapEvaluation generatorImages reduction15106.relations [0,0,0,0,0,0,0,0,1589] reduction15106.output := by lin_cert using reduction15106.terms
def map_57_231 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15353 : InImage map_57_231 image15353 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15353 : Bundle := named_bundle% "RealMapCertificates/relations/basis15353.json"
theorem reductionProof15353 : EqualModuloRelations reduction15353.relations reduction15353.input reduction15353.output := by lin_cert using reduction15353.terms
theorem substitutionProof15353 : IsMapEvaluation generatorImages reduction15353.relations [8,8,8,8,636] reduction15353.output := by lin_cert using reduction15353.terms
def image15354 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15354 : InImage map_57_231 image15354 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15354 : Bundle := named_bundle% "RealMapCertificates/relations/basis15354.json"
theorem reductionProof15354 : EqualModuloRelations reduction15354.relations reduction15354.input reduction15354.output := by lin_cert using reduction15354.terms
theorem substitutionProof15354 : IsMapEvaluation generatorImages reduction15354.relations [8,8,8,8,8,8,283] reduction15354.output := by lin_cert using reduction15354.terms
def image15355 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15355 : InImage map_57_231 image15355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15355 : Bundle := named_bundle% "RealMapCertificates/relations/basis15355.json"
theorem reductionProof15355 : EqualModuloRelations reduction15355.relations reduction15355.input reduction15355.output := by lin_cert using reduction15355.terms
theorem substitutionProof15355 : IsMapEvaluation generatorImages reduction15355.relations [0,0,0,0,0,0,0,0,0,0,1566] reduction15355.output := by lin_cert using reduction15355.terms
def map_57_233 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15759 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15759 : InImage map_57_233 image15759 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15759 : Bundle := named_bundle% "RealMapCertificates/relations/basis15759.json"
theorem reductionProof15759 : EqualModuloRelations reduction15759.relations reduction15759.input reduction15759.output := by lin_cert using reduction15759.terms
theorem substitutionProof15759 : IsMapEvaluation generatorImages reduction15759.relations [8,1470] reduction15759.output := by lin_cert using reduction15759.terms
def image15760 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15760 : InImage map_57_233 image15760 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15760 : Bundle := named_bundle% "RealMapCertificates/relations/basis15760.json"
theorem reductionProof15760 : EqualModuloRelations reduction15760.relations reduction15760.input reduction15760.output := by lin_cert using reduction15760.terms
theorem substitutionProof15760 : IsMapEvaluation generatorImages reduction15760.relations [0,0,0,1734] reduction15760.output := by lin_cert using reduction15760.terms
def map_57_234 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image16000 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16000 : InImage map_57_234 image16000 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16000 : Bundle := named_bundle% "RealMapCertificates/relations/basis16000.json"
theorem reductionProof16000 : EqualModuloRelations reduction16000.relations reduction16000.input reduction16000.output := by lin_cert using reduction16000.terms
theorem substitutionProof16000 : IsMapEvaluation generatorImages reduction16000.relations [8,8,8,8,663] reduction16000.output := by lin_cert using reduction16000.terms
def image16001 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16001 : InImage map_57_234 image16001 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16001 : Bundle := named_bundle% "RealMapCertificates/relations/basis16001.json"
theorem reductionProof16001 : EqualModuloRelations reduction16001.relations reduction16001.input reduction16001.output := by lin_cert using reduction16001.terms
theorem substitutionProof16001 : IsMapEvaluation generatorImages reduction16001.relations [8,8,8,8,8,8,8,211] reduction16001.output := by lin_cert using reduction16001.terms
def map_57_236 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image16422 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16422 : InImage map_57_236 image16422 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16422 : Bundle := named_bundle% "RealMapCertificates/relations/basis16422.json"
theorem reductionProof16422 : EqualModuloRelations reduction16422.relations reduction16422.input reduction16422.output := by lin_cert using reduction16422.terms
theorem substitutionProof16422 : IsMapEvaluation generatorImages reduction16422.relations [8,8,1179] reduction16422.output := by lin_cert using reduction16422.terms
def image16423 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16423 : InImage map_57_236 image16423 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16423 : Bundle := named_bundle% "RealMapCertificates/relations/basis16423.json"
theorem reductionProof16423 : EqualModuloRelations reduction16423.relations reduction16423.input reduction16423.output := by lin_cert using reduction16423.terms
theorem substitutionProof16423 : IsMapEvaluation generatorImages reduction16423.relations [5,64,635] reduction16423.output := by lin_cert using reduction16423.terms
end RealMapCertificates
