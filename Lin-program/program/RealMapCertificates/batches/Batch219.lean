import LinearCertificates.Checker
import RealMapCertificates.Substitution
set_option maxRecDepth 4096
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 246 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 758 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 783 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 873 => [[4,4,4,4,4,4,5,7,7,12]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 1032 => [[4,4,4,4,4,4,4,5,7,7,12]]
  | 1033 => []
  | 1048 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1241 => [[4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1301 => []
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1471 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1590 => [[0,0,4,4,4,4,4,4,5,8,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1830 => [[0,0,4,4,4,4,4,4,4,5,8,12,12]]
  | 2193 => []
  | 2194 => [[0,0,4,4,4,4,4,4,4,4,5,8,12,12]]
  | 2275 => []
  | 2330 => []
  | 2537 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | _ => []
def map_57_237 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16670 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16670 : InImage map_57_237 image16670 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16670 : Bundle := named_bundle% "RealMapCertificates/relations/basis16670.json"
theorem reductionProof16670 : EqualModuloRelations reduction16670.relations reduction16670.input reduction16670.output := by lin_cert using reduction16670.terms
theorem substitutionProof16670 : IsMapEvaluation generatorImages reduction16670.relations [8,8,8,8,16,403] reduction16670.output := by lin_cert using reduction16670.terms
def image16671 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16671 : InImage map_57_237 image16671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16671 : Bundle := named_bundle% "RealMapCertificates/relations/basis16671.json"
theorem reductionProof16671 : EqualModuloRelations reduction16671.relations reduction16671.input reduction16671.output := by lin_cert using reduction16671.terms
theorem substitutionProof16671 : IsMapEvaluation generatorImages reduction16671.relations [8,8,8,8,8,8,8,223] reduction16671.output := by lin_cert using reduction16671.terms
def map_57_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16904 : InImage map_57_238 image16904 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16904 : Bundle := named_bundle% "RealMapCertificates/relations/basis16904.json"
theorem reductionProof16904 : EqualModuloRelations reduction16904.relations reduction16904.input reduction16904.output := by lin_cert using reduction16904.terms
theorem substitutionProof16904 : IsMapEvaluation generatorImages reduction16904.relations [0,64,805] reduction16904.output := by lin_cert using reduction16904.terms
def map_57_239 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image17113 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17113 : InImage map_57_239 image17113 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17113 : Bundle := named_bundle% "RealMapCertificates/relations/basis17113.json"
theorem reductionProof17113 : EqualModuloRelations reduction17113.relations reduction17113.input reduction17113.output := by lin_cert using reduction17113.terms
theorem substitutionProof17113 : IsMapEvaluation generatorImages reduction17113.relations [8,8,1241] reduction17113.output := by lin_cert using reduction17113.terms
def image17114 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17114 : InImage map_57_239 image17114 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17114 : Bundle := named_bundle% "RealMapCertificates/relations/basis17114.json"
theorem reductionProof17114 : EqualModuloRelations reduction17114.relations reduction17114.input reduction17114.output := by lin_cert using reduction17114.terms
theorem substitutionProof17114 : IsMapEvaluation generatorImages reduction17114.relations [0,0,64,806] reduction17114.output := by lin_cert using reduction17114.terms
def map_57_240 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image17371 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17371 : InImage map_57_240 image17371 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17371 : Bundle := named_bundle% "RealMapCertificates/relations/basis17371.json"
theorem reductionProof17371 : EqualModuloRelations reduction17371.relations reduction17371.input reduction17371.output := by lin_cert using reduction17371.terms
theorem substitutionProof17371 : IsMapEvaluation generatorImages reduction17371.relations [8,8,8,8,8,556] reduction17371.output := by lin_cert using reduction17371.terms
def image17372 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17372 : InImage map_57_240 image17372 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17372 : Bundle := named_bundle% "RealMapCertificates/relations/basis17372.json"
theorem reductionProof17372 : EqualModuloRelations reduction17372.relations reduction17372.input reduction17372.output := by lin_cert using reduction17372.terms
theorem substitutionProof17372 : IsMapEvaluation generatorImages reduction17372.relations [8,8,8,8,8,8,8,8,161] reduction17372.output := by lin_cert using reduction17372.terms
def map_57_241 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image17667 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17667 : InImage map_57_241 image17667 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17667 : Bundle := named_bundle% "RealMapCertificates/relations/basis17667.json"
theorem reductionProof17667 : EqualModuloRelations reduction17667.relations reduction17667.input reduction17667.output := by lin_cert using reduction17667.terms
theorem substitutionProof17667 : IsMapEvaluation generatorImages reduction17667.relations [0,8,64,635] reduction17667.output := by lin_cert using reduction17667.terms
def map_57_242 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image17874 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17874 : InImage map_57_242 image17874 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17874 : Bundle := named_bundle% "RealMapCertificates/relations/basis17874.json"
theorem reductionProof17874 : EqualModuloRelations reduction17874.relations reduction17874.input reduction17874.output := by lin_cert using reduction17874.terms
theorem substitutionProof17874 : IsMapEvaluation generatorImages reduction17874.relations [8,8,8,970] reduction17874.output := by lin_cert using reduction17874.terms
def image17875 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17875 : InImage map_57_242 image17875 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17875 : Bundle := named_bundle% "RealMapCertificates/relations/basis17875.json"
theorem reductionProof17875 : EqualModuloRelations reduction17875.relations reduction17875.input reduction17875.output := by lin_cert using reduction17875.terms
theorem substitutionProof17875 : IsMapEvaluation generatorImages reduction17875.relations [0,0,8,64,636] reduction17875.output := by lin_cert using reduction17875.terms
def map_57_243 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image18153 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18153 : InImage map_57_243 image18153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18153 : Bundle := named_bundle% "RealMapCertificates/relations/basis18153.json"
theorem reductionProof18153 : EqualModuloRelations reduction18153.relations reduction18153.input reduction18153.output := by lin_cert using reduction18153.terms
theorem substitutionProof18153 : IsMapEvaluation generatorImages reduction18153.relations [8,8,8,8,8,8,403] reduction18153.output := by lin_cert using reduction18153.terms
def image18154 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18154 : InImage map_57_243 image18154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18154 : Bundle := named_bundle% "RealMapCertificates/relations/basis18154.json"
theorem reductionProof18154 : EqualModuloRelations reduction18154.relations reduction18154.input reduction18154.output := by lin_cert using reduction18154.terms
theorem substitutionProof18154 : IsMapEvaluation generatorImages reduction18154.relations [8,8,8,8,8,8,8,8,171] reduction18154.output := by lin_cert using reduction18154.terms
def map_57_245 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18619 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18619 : InImage map_57_245 image18619 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18619 : Bundle := named_bundle% "RealMapCertificates/relations/basis18619.json"
theorem reductionProof18619 : EqualModuloRelations reduction18619.relations reduction18619.input reduction18619.output := by lin_cert using reduction18619.terms
theorem substitutionProof18619 : IsMapEvaluation generatorImages reduction18619.relations [17,1471] reduction18619.output := by lin_cert using reduction18619.terms
def image18620 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18620 : InImage map_57_245 image18620 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18620 : Bundle := named_bundle% "RealMapCertificates/relations/basis18620.json"
theorem reductionProof18620 : EqualModuloRelations reduction18620.relations reduction18620.input reduction18620.output := by lin_cert using reduction18620.terms
theorem substitutionProof18620 : IsMapEvaluation generatorImages reduction18620.relations [8,8,8,1032] reduction18620.output := by lin_cert using reduction18620.terms
def image18621 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18621 : InImage map_57_245 image18621 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18621 : Bundle := named_bundle% "RealMapCertificates/relations/basis18621.json"
theorem reductionProof18621 : EqualModuloRelations reduction18621.relations reduction18621.input reduction18621.output := by lin_cert using reduction18621.terms
theorem substitutionProof18621 : IsMapEvaluation generatorImages reduction18621.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction18621.output := by lin_cert using reduction18621.terms
def map_57_246 : Matrix 2 4 := fun i j => ([false,false,false,true,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image18901 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18901 : InImage map_57_246 image18901 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18901 : Bundle := named_bundle% "RealMapCertificates/relations/basis18901.json"
theorem reductionProof18901 : EqualModuloRelations reduction18901.relations reduction18901.input reduction18901.output := by lin_cert using reduction18901.terms
theorem substitutionProof18901 : IsMapEvaluation generatorImages reduction18901.relations [2194] reduction18901.output := by lin_cert using reduction18901.terms
def image18902 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18902 : InImage map_57_246 image18902 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18902 : Bundle := named_bundle% "RealMapCertificates/relations/basis18902.json"
theorem reductionProof18902 : EqualModuloRelations reduction18902.relations reduction18902.input reduction18902.output := by lin_cert using reduction18902.terms
theorem substitutionProof18902 : IsMapEvaluation generatorImages reduction18902.relations [2193] reduction18902.output := by lin_cert using reduction18902.terms
def image18903 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18903 : InImage map_57_246 image18903 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18903 : Bundle := named_bundle% "RealMapCertificates/relations/basis18903.json"
theorem reductionProof18903 : EqualModuloRelations reduction18903.relations reduction18903.input reduction18903.output := by lin_cert using reduction18903.terms
theorem substitutionProof18903 : IsMapEvaluation generatorImages reduction18903.relations [8,8,8,8,8,8,433] reduction18903.output := by lin_cert using reduction18903.terms
def image18904 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18904 : InImage map_57_246 image18904 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18904 : Bundle := named_bundle% "RealMapCertificates/relations/basis18904.json"
theorem reductionProof18904 : EqualModuloRelations reduction18904.relations reduction18904.input reduction18904.output := by lin_cert using reduction18904.terms
theorem substitutionProof18904 : IsMapEvaluation generatorImages reduction18904.relations [8,8,8,8,8,8,8,8,8,125] reduction18904.output := by lin_cert using reduction18904.terms
def map_57_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19200 : InImage map_57_247 image19200 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19200 : Bundle := named_bundle% "RealMapCertificates/relations/basis19200.json"
theorem reductionProof19200 : EqualModuloRelations reduction19200.relations reduction19200.input reduction19200.output := by lin_cert using reduction19200.terms
theorem substitutionProof19200 : IsMapEvaluation generatorImages reduction19200.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction19200.output := by lin_cert using reduction19200.terms
def map_57_248 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image19418 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19418 : InImage map_57_248 image19418 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19418 : Bundle := named_bundle% "RealMapCertificates/relations/basis19418.json"
theorem reductionProof19418 : EqualModuloRelations reduction19418.relations reduction19418.input reduction19418.output := by lin_cert using reduction19418.terms
theorem substitutionProof19418 : IsMapEvaluation generatorImages reduction19418.relations [17,1514] reduction19418.output := by lin_cert using reduction19418.terms
def image19419 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19419 : InImage map_57_248 image19419 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19419 : Bundle := named_bundle% "RealMapCertificates/relations/basis19419.json"
theorem reductionProof19419 : EqualModuloRelations reduction19419.relations reduction19419.input reduction19419.output := by lin_cert using reduction19419.terms
theorem substitutionProof19419 : IsMapEvaluation generatorImages reduction19419.relations [8,8,8,8,829] reduction19419.output := by lin_cert using reduction19419.terms
def image19420 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19420 : InImage map_57_248 image19420 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19420 : Bundle := named_bundle% "RealMapCertificates/relations/basis19420.json"
theorem reductionProof19420 : EqualModuloRelations reduction19420.relations reduction19420.input reduction19420.output := by lin_cert using reduction19420.terms
theorem substitutionProof19420 : IsMapEvaluation generatorImages reduction19420.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction19420.output := by lin_cert using reduction19420.terms
def map_57_249 : Matrix 5 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19722 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation19722 : InImage map_57_249 image19722 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19722 : Bundle := named_bundle% "RealMapCertificates/relations/basis19722.json"
theorem reductionProof19722 : EqualModuloRelations reduction19722.relations reduction19722.input reduction19722.output := by lin_cert using reduction19722.terms
theorem substitutionProof19722 : IsMapEvaluation generatorImages reduction19722.relations [17,1534] reduction19722.output := by lin_cert using reduction19722.terms
def image19723 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19723 : InImage map_57_249 image19723 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19723 : Bundle := named_bundle% "RealMapCertificates/relations/basis19723.json"
theorem reductionProof19723 : EqualModuloRelations reduction19723.relations reduction19723.input reduction19723.output := by lin_cert using reduction19723.terms
theorem substitutionProof19723 : IsMapEvaluation generatorImages reduction19723.relations [8,8,8,8,8,8,16,225] reduction19723.output := by lin_cert using reduction19723.terms
def image19724 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19724 : InImage map_57_249 image19724 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19724 : Bundle := named_bundle% "RealMapCertificates/relations/basis19724.json"
theorem reductionProof19724 : EqualModuloRelations reduction19724.relations reduction19724.input reduction19724.output := by lin_cert using reduction19724.terms
theorem substitutionProof19724 : IsMapEvaluation generatorImages reduction19724.relations [8,8,8,8,8,8,8,8,8,136] reduction19724.output := by lin_cert using reduction19724.terms
def image19725 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19725 : InImage map_57_249 image19725 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19725 : Bundle := named_bundle% "RealMapCertificates/relations/basis19725.json"
theorem reductionProof19725 : EqualModuloRelations reduction19725.relations reduction19725.input reduction19725.output := by lin_cert using reduction19725.terms
theorem substitutionProof19725 : IsMapEvaluation generatorImages reduction19725.relations [0,2275] reduction19725.output := by lin_cert using reduction19725.terms
def map_57_251 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image20224 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation20224 : InImage map_57_251 image20224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20224 : Bundle := named_bundle% "RealMapCertificates/relations/basis20224.json"
theorem reductionProof20224 : EqualModuloRelations reduction20224.relations reduction20224.input reduction20224.output := by lin_cert using reduction20224.terms
theorem substitutionProof20224 : IsMapEvaluation generatorImages reduction20224.relations [138,685] reduction20224.output := by lin_cert using reduction20224.terms
def image20225 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20225 : InImage map_57_251 image20225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20225 : Bundle := named_bundle% "RealMapCertificates/relations/basis20225.json"
theorem reductionProof20225 : EqualModuloRelations reduction20225.relations reduction20225.input reduction20225.output := by lin_cert using reduction20225.terms
theorem substitutionProof20225 : IsMapEvaluation generatorImages reduction20225.relations [16,17,1033] reduction20225.output := by lin_cert using reduction20225.terms
def image20226 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20226 : InImage map_57_251 image20226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20226 : Bundle := named_bundle% "RealMapCertificates/relations/basis20226.json"
theorem reductionProof20226 : EqualModuloRelations reduction20226.relations reduction20226.input reduction20226.output := by lin_cert using reduction20226.terms
theorem substitutionProof20226 : IsMapEvaluation generatorImages reduction20226.relations [8,8,8,8,873] reduction20226.output := by lin_cert using reduction20226.terms
def map_57_252 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image20523 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20523 : InImage map_57_252 image20523 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20523 : Bundle := named_bundle% "RealMapCertificates/relations/basis20523.json"
theorem reductionProof20523 : EqualModuloRelations reduction20523.relations reduction20523.input reduction20523.output := by lin_cert using reduction20523.terms
theorem substitutionProof20523 : IsMapEvaluation generatorImages reduction20523.relations [8,1830] reduction20523.output := by lin_cert using reduction20523.terms
def image20524 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20524 : InImage map_57_252 image20524 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20524 : Bundle := named_bundle% "RealMapCertificates/relations/basis20524.json"
theorem reductionProof20524 : EqualModuloRelations reduction20524.relations reduction20524.input reduction20524.output := by lin_cert using reduction20524.terms
theorem substitutionProof20524 : IsMapEvaluation generatorImages reduction20524.relations [8,8,8,8,8,8,8,298] reduction20524.output := by lin_cert using reduction20524.terms
def image20525 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20525 : InImage map_57_252 image20525 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20525 : Bundle := named_bundle% "RealMapCertificates/relations/basis20525.json"
theorem reductionProof20525 : EqualModuloRelations reduction20525.relations reduction20525.input reduction20525.output := by lin_cert using reduction20525.terms
theorem substitutionProof20525 : IsMapEvaluation generatorImages reduction20525.relations [8,8,8,8,8,8,8,8,8,8,88] reduction20525.output := by lin_cert using reduction20525.terms
def image20526 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20526 : InImage map_57_252 image20526 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20526 : Bundle := named_bundle% "RealMapCertificates/relations/basis20526.json"
theorem reductionProof20526 : EqualModuloRelations reduction20526.relations reduction20526.input reduction20526.output := by lin_cert using reduction20526.terms
theorem substitutionProof20526 : IsMapEvaluation generatorImages reduction20526.relations [0,17,17,1033] reduction20526.output := by lin_cert using reduction20526.terms
def map_57_253 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image20811 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20811 : InImage map_57_253 image20811 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20811 : Bundle := named_bundle% "RealMapCertificates/relations/basis20811.json"
theorem reductionProof20811 : EqualModuloRelations reduction20811.relations reduction20811.input reduction20811.output := by lin_cert using reduction20811.terms
theorem substitutionProof20811 : IsMapEvaluation generatorImages reduction20811.relations [0,0,246,402] reduction20811.output := by lin_cert using reduction20811.terms
def image20812 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20812 : InImage map_57_253 image20812 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20812 : Bundle := named_bundle% "RealMapCertificates/relations/basis20812.json"
theorem reductionProof20812 : EqualModuloRelations reduction20812.relations reduction20812.input reduction20812.output := by lin_cert using reduction20812.terms
theorem substitutionProof20812 : IsMapEvaluation generatorImages reduction20812.relations [0,0,59,1033] reduction20812.output := by lin_cert using reduction20812.terms
def map_57_254 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21052 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21052 : InImage map_57_254 image21052 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21052 : Bundle := named_bundle% "RealMapCertificates/relations/basis21052.json"
theorem reductionProof21052 : EqualModuloRelations reduction21052.relations reduction21052.input reduction21052.output := by lin_cert using reduction21052.terms
theorem substitutionProof21052 : IsMapEvaluation generatorImages reduction21052.relations [138,722] reduction21052.output := by lin_cert using reduction21052.terms
def image21053 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21053 : InImage map_57_254 image21053 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21053 : Bundle := named_bundle% "RealMapCertificates/relations/basis21053.json"
theorem reductionProof21053 : EqualModuloRelations reduction21053.relations reduction21053.input reduction21053.output := by lin_cert using reduction21053.terms
theorem substitutionProof21053 : IsMapEvaluation generatorImages reduction21053.relations [8,17,1301] reduction21053.output := by lin_cert using reduction21053.terms
def image21054 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21054 : InImage map_57_254 image21054 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21054 : Bundle := named_bundle% "RealMapCertificates/relations/basis21054.json"
theorem reductionProof21054 : EqualModuloRelations reduction21054.relations reduction21054.input reduction21054.output := by lin_cert using reduction21054.terms
theorem substitutionProof21054 : IsMapEvaluation generatorImages reduction21054.relations [8,8,8,8,8,687] reduction21054.output := by lin_cert using reduction21054.terms
def image21055 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21055 : InImage map_57_254 image21055 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21055 : Bundle := named_bundle% "RealMapCertificates/relations/basis21055.json"
theorem reductionProof21055 : EqualModuloRelations reduction21055.relations reduction21055.input reduction21055.output := by lin_cert using reduction21055.terms
theorem substitutionProof21055 : IsMapEvaluation generatorImages reduction21055.relations [0,0,0,0,2330] reduction21055.output := by lin_cert using reduction21055.terms
def map_57_255 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21401 : InImage map_57_255 image21401 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21401 : Bundle := named_bundle% "RealMapCertificates/relations/basis21401.json"
theorem reductionProof21401 : EqualModuloRelations reduction21401.relations reduction21401.input reduction21401.output := by lin_cert using reduction21401.terms
theorem substitutionProof21401 : IsMapEvaluation generatorImages reduction21401.relations [8,17,1314] reduction21401.output := by lin_cert using reduction21401.terms
def image21402 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21402 : InImage map_57_255 image21402 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21402 : Bundle := named_bundle% "RealMapCertificates/relations/basis21402.json"
theorem reductionProof21402 : EqualModuloRelations reduction21402.relations reduction21402.input reduction21402.output := by lin_cert using reduction21402.terms
theorem substitutionProof21402 : IsMapEvaluation generatorImages reduction21402.relations [8,8,8,8,8,8,8,8,225] reduction21402.output := by lin_cert using reduction21402.terms
def image21403 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21403 : InImage map_57_255 image21403 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21403 : Bundle := named_bundle% "RealMapCertificates/relations/basis21403.json"
theorem reductionProof21403 : EqualModuloRelations reduction21403.relations reduction21403.input reduction21403.output := by lin_cert using reduction21403.terms
theorem substitutionProof21403 : IsMapEvaluation generatorImages reduction21403.relations [8,8,8,8,8,8,8,8,8,8,100] reduction21403.output := by lin_cert using reduction21403.terms
def image21404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21404 : InImage map_57_255 image21404 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21404 : Bundle := named_bundle% "RealMapCertificates/relations/basis21404.json"
theorem reductionProof21404 : EqualModuloRelations reduction21404.relations reduction21404.input reduction21404.output := by lin_cert using reduction21404.terms
theorem substitutionProof21404 : IsMapEvaluation generatorImages reduction21404.relations [0,17,17,1076] reduction21404.output := by lin_cert using reduction21404.terms
def map_57_257 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image21998 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21998 : InImage map_57_257 image21998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21998 : Bundle := named_bundle% "RealMapCertificates/relations/basis21998.json"
theorem reductionProof21998 : EqualModuloRelations reduction21998.relations reduction21998.input reduction21998.output := by lin_cert using reduction21998.terms
theorem substitutionProof21998 : IsMapEvaluation generatorImages reduction21998.relations [16,138,452] reduction21998.output := by lin_cert using reduction21998.terms
def image21999 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21999 : InImage map_57_257 image21999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21999 : Bundle := named_bundle% "RealMapCertificates/relations/basis21999.json"
theorem reductionProof21999 : EqualModuloRelations reduction21999.relations reduction21999.input reduction21999.output := by lin_cert using reduction21999.terms
theorem substitutionProof21999 : IsMapEvaluation generatorImages reduction21999.relations [8,8,17,1033] reduction21999.output := by lin_cert using reduction21999.terms
def image22000 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation22000 : InImage map_57_257 image22000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22000 : Bundle := named_bundle% "RealMapCertificates/relations/basis22000.json"
theorem reductionProof22000 : EqualModuloRelations reduction22000.relations reduction22000.input reduction22000.output := by lin_cert using reduction22000.terms
theorem substitutionProof22000 : IsMapEvaluation generatorImages reduction22000.relations [8,8,8,8,8,724] reduction22000.output := by lin_cert using reduction22000.terms
def image22001 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22001 : InImage map_57_257 image22001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22001 : Bundle := named_bundle% "RealMapCertificates/relations/basis22001.json"
theorem reductionProof22001 : EqualModuloRelations reduction22001.relations reduction22001.input reduction22001.output := by lin_cert using reduction22001.terms
theorem substitutionProof22001 : IsMapEvaluation generatorImages reduction22001.relations [0,149,685] reduction22001.output := by lin_cert using reduction22001.terms
def map_57_258 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image22353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22353 : InImage map_57_258 image22353 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22353 : Bundle := named_bundle% "RealMapCertificates/relations/basis22353.json"
theorem reductionProof22353 : EqualModuloRelations reduction22353.relations reduction22353.input reduction22353.output := by lin_cert using reduction22353.terms
theorem substitutionProof22353 : IsMapEvaluation generatorImages reduction22353.relations [8,8,1590] reduction22353.output := by lin_cert using reduction22353.terms
def image22354 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22354 : InImage map_57_258 image22354 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22354 : Bundle := named_bundle% "RealMapCertificates/relations/basis22354.json"
theorem reductionProof22354 : EqualModuloRelations reduction22354.relations reduction22354.input reduction22354.output := by lin_cert using reduction22354.terms
theorem substitutionProof22354 : IsMapEvaluation generatorImages reduction22354.relations [8,8,8,8,8,8,8,8,238] reduction22354.output := by lin_cert using reduction22354.terms
def image22355 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22355 : InImage map_57_258 image22355 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22355 : Bundle := named_bundle% "RealMapCertificates/relations/basis22355.json"
theorem reductionProof22355 : EqualModuloRelations reduction22355.relations reduction22355.input reduction22355.output := by lin_cert using reduction22355.terms
theorem substitutionProof22355 : IsMapEvaluation generatorImages reduction22355.relations [8,8,8,8,8,8,8,8,8,8,8,60] reduction22355.output := by lin_cert using reduction22355.terms
def image22356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22356 : InImage map_57_258 image22356 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22356 : Bundle := named_bundle% "RealMapCertificates/relations/basis22356.json"
theorem reductionProof22356 : EqualModuloRelations reduction22356.relations reduction22356.input reduction22356.output := by lin_cert using reduction22356.terms
theorem substitutionProof22356 : IsMapEvaluation generatorImages reduction22356.relations [1,149,685] reduction22356.output := by lin_cert using reduction22356.terms
def image22357 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22357 : InImage map_57_258 image22357 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22357 : Bundle := named_bundle% "RealMapCertificates/relations/basis22357.json"
theorem reductionProof22357 : EqualModuloRelations reduction22357.relations reduction22357.input reduction22357.output := by lin_cert using reduction22357.terms
theorem substitutionProof22357 : IsMapEvaluation generatorImages reduction22357.relations [0,0,2579] reduction22357.output := by lin_cert using reduction22357.terms
def map_57_259 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image22701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22701 : InImage map_57_259 image22701 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22701 : Bundle := named_bundle% "RealMapCertificates/relations/basis22701.json"
theorem reductionProof22701 : EqualModuloRelations reduction22701.relations reduction22701.input reduction22701.output := by lin_cert using reduction22701.terms
theorem substitutionProof22701 : IsMapEvaluation generatorImages reduction22701.relations [0,0,0,0,0,64,1033] reduction22701.output := by lin_cert using reduction22701.terms
def map_57_260 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image23028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23028 : InImage map_57_260 image23028 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23028 : Bundle := named_bundle% "RealMapCertificates/relations/basis23028.json"
theorem reductionProof23028 : EqualModuloRelations reduction23028.relations reduction23028.input reduction23028.output := by lin_cert using reduction23028.terms
theorem substitutionProof23028 : IsMapEvaluation generatorImages reduction23028.relations [8,113,685] reduction23028.output := by lin_cert using reduction23028.terms
def image23029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23029 : InImage map_57_260 image23029 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23029 : Bundle := named_bundle% "RealMapCertificates/relations/basis23029.json"
theorem reductionProof23029 : EqualModuloRelations reduction23029.relations reduction23029.input reduction23029.output := by lin_cert using reduction23029.terms
theorem substitutionProof23029 : IsMapEvaluation generatorImages reduction23029.relations [8,8,17,1076] reduction23029.output := by lin_cert using reduction23029.terms
def image23030 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23030 : InImage map_57_260 image23030 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23030 : Bundle := named_bundle% "RealMapCertificates/relations/basis23030.json"
theorem reductionProof23030 : EqualModuloRelations reduction23030.relations reduction23030.input reduction23030.output := by lin_cert using reduction23030.terms
theorem substitutionProof23030 : IsMapEvaluation generatorImages reduction23030.relations [8,8,8,8,8,8,572] reduction23030.output := by lin_cert using reduction23030.terms
def image23031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23031 : InImage map_57_260 image23031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23031 : Bundle := named_bundle% "RealMapCertificates/relations/basis23031.json"
theorem reductionProof23031 : EqualModuloRelations reduction23031.relations reduction23031.input reduction23031.output := by lin_cert using reduction23031.terms
theorem substitutionProof23031 : IsMapEvaluation generatorImages reduction23031.relations [0,0,0,0,64,1059] reduction23031.output := by lin_cert using reduction23031.terms
def image23032 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23032 : InImage map_57_260 image23032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23032 : Bundle := named_bundle% "RealMapCertificates/relations/basis23032.json"
theorem reductionProof23032 : EqualModuloRelations reduction23032.relations reduction23032.input reduction23032.output := by lin_cert using reduction23032.terms
theorem substitutionProof23032 : IsMapEvaluation generatorImages reduction23032.relations [0,0,0,0,0,0,138,725] reduction23032.output := by lin_cert using reduction23032.terms
def map_57_261 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image23470 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23470 : InImage map_57_261 image23470 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23470 : Bundle := named_bundle% "RealMapCertificates/relations/basis23470.json"
theorem reductionProof23470 : EqualModuloRelations reduction23470.relations reduction23470.input reduction23470.output := by lin_cert using reduction23470.terms
theorem substitutionProof23470 : IsMapEvaluation generatorImages reduction23470.relations [8,8,17,1093] reduction23470.output := by lin_cert using reduction23470.terms
def image23471 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23471 : InImage map_57_261 image23471 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23471 : Bundle := named_bundle% "RealMapCertificates/relations/basis23471.json"
theorem reductionProof23471 : EqualModuloRelations reduction23471.relations reduction23471.input reduction23471.output := by lin_cert using reduction23471.terms
theorem substitutionProof23471 : IsMapEvaluation generatorImages reduction23471.relations [8,8,8,8,8,8,8,8,16,138] reduction23471.output := by lin_cert using reduction23471.terms
def image23472 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation23472 : InImage map_57_261 image23472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23472 : Bundle := named_bundle% "RealMapCertificates/relations/basis23472.json"
theorem reductionProof23472 : EqualModuloRelations reduction23472.relations reduction23472.input reduction23472.output := by lin_cert using reduction23472.terms
theorem substitutionProof23472 : IsMapEvaluation generatorImages reduction23472.relations [8,8,8,8,8,8,8,8,8,8,8,63] reduction23472.output := by lin_cert using reduction23472.terms
def image23473 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23473 : InImage map_57_261 image23473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23473 : Bundle := named_bundle% "RealMapCertificates/relations/basis23473.json"
theorem reductionProof23473 : EqualModuloRelations reduction23473.relations reduction23473.input reduction23473.output := by lin_cert using reduction23473.terms
theorem substitutionProof23473 : IsMapEvaluation generatorImages reduction23473.relations [0,0,0,0,0,0,2537] reduction23473.output := by lin_cert using reduction23473.terms
def map_58_58 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image332 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation332 : InImage map_58_58 image332 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction332 : Bundle := named_bundle% "RealMapCertificates/relations/basis332.json"
theorem reductionProof332 : EqualModuloRelations reduction332.relations reduction332.input reduction332.output := by lin_cert using reduction332.terms
theorem substitutionProof332 : IsMapEvaluation generatorImages reduction332.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction332.output := by lin_cert using reduction332.terms
def map_58_172 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6105 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6105 : InImage map_58_172 image6105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6105 : Bundle := named_bundle% "RealMapCertificates/relations/basis6105.json"
theorem reductionProof6105 : EqualModuloRelations reduction6105.relations reduction6105.input reduction6105.output := by lin_cert using reduction6105.terms
theorem substitutionProof6105 : IsMapEvaluation generatorImages reduction6105.relations [1,758] reduction6105.output := by lin_cert using reduction6105.terms
def map_58_173 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6195 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6195 : InImage map_58_173 image6195 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6195 : Bundle := named_bundle% "RealMapCertificates/relations/basis6195.json"
theorem reductionProof6195 : EqualModuloRelations reduction6195.relations reduction6195.input reduction6195.output := by lin_cert using reduction6195.terms
theorem substitutionProof6195 : IsMapEvaluation generatorImages reduction6195.relations [0,783] reduction6195.output := by lin_cert using reduction6195.terms
def map_58_176 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6529 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6529 : InImage map_58_176 image6529 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6529 : Bundle := named_bundle% "RealMapCertificates/relations/basis6529.json"
theorem reductionProof6529 : EqualModuloRelations reduction6529.relations reduction6529.input reduction6529.output := by lin_cert using reduction6529.terms
theorem substitutionProof6529 : IsMapEvaluation generatorImages reduction6529.relations [0,0,803] reduction6529.output := by lin_cert using reduction6529.terms
def map_58_177 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6648 : InImage map_58_177 image6648 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6648 : Bundle := named_bundle% "RealMapCertificates/relations/basis6648.json"
theorem reductionProof6648 : EqualModuloRelations reduction6648.relations reduction6648.input reduction6648.output := by lin_cert using reduction6648.terms
theorem substitutionProof6648 : IsMapEvaluation generatorImages reduction6648.relations [0,0,0,804] reduction6648.output := by lin_cert using reduction6648.terms
def map_58_178 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6784 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6784 : InImage map_58_178 image6784 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6784 : Bundle := named_bundle% "RealMapCertificates/relations/basis6784.json"
theorem reductionProof6784 : EqualModuloRelations reduction6784.relations reduction6784.input reduction6784.output := by lin_cert using reduction6784.terms
theorem substitutionProof6784 : IsMapEvaluation generatorImages reduction6784.relations [1,1,803] reduction6784.output := by lin_cert using reduction6784.terms
def map_58_179 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6891 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6891 : InImage map_58_179 image6891 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6891 : Bundle := named_bundle% "RealMapCertificates/relations/basis6891.json"
theorem reductionProof6891 : EqualModuloRelations reduction6891.relations reduction6891.input reduction6891.output := by lin_cert using reduction6891.terms
theorem substitutionProof6891 : IsMapEvaluation generatorImages reduction6891.relations [0,0,851] reduction6891.output := by lin_cert using reduction6891.terms
def map_58_182 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7246 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7246 : InImage map_58_182 image7246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7246 : Bundle := named_bundle% "RealMapCertificates/relations/basis7246.json"
theorem reductionProof7246 : EqualModuloRelations reduction7246.relations reduction7246.input reduction7246.output := by lin_cert using reduction7246.terms
theorem substitutionProof7246 : IsMapEvaluation generatorImages reduction7246.relations [0,0,8,661] reduction7246.output := by lin_cert using reduction7246.terms
def map_58_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7512 : InImage map_58_184 image7512 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7512 : Bundle := named_bundle% "RealMapCertificates/relations/basis7512.json"
theorem reductionProof7512 : EqualModuloRelations reduction7512.relations reduction7512.input reduction7512.output := by lin_cert using reduction7512.terms
theorem substitutionProof7512 : IsMapEvaluation generatorImages reduction7512.relations [0,0,0,0,17,554] reduction7512.output := by lin_cert using reduction7512.terms
def map_58_185 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7609 : InImage map_58_185 image7609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7609 : Bundle := named_bundle% "RealMapCertificates/relations/basis7609.json"
theorem reductionProof7609 : EqualModuloRelations reduction7609.relations reduction7609.input reduction7609.output := by lin_cert using reduction7609.terms
theorem substitutionProof7609 : IsMapEvaluation generatorImages reduction7609.relations [0,0,8,700] reduction7609.output := by lin_cert using reduction7609.terms
def image7610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7610 : InImage map_58_185 image7610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7610 : Bundle := named_bundle% "RealMapCertificates/relations/basis7610.json"
theorem reductionProof7610 : EqualModuloRelations reduction7610.relations reduction7610.input reduction7610.output := by lin_cert using reduction7610.terms
theorem substitutionProof7610 : IsMapEvaluation generatorImages reduction7610.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7610.output := by lin_cert using reduction7610.terms
def map_58_188 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7950 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7950 : InImage map_58_188 image7950 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7950 : Bundle := named_bundle% "RealMapCertificates/relations/basis7950.json"
theorem reductionProof7950 : EqualModuloRelations reduction7950.relations reduction7950.input reduction7950.output := by lin_cert using reduction7950.terms
theorem substitutionProof7950 : IsMapEvaluation generatorImages reduction7950.relations [0,0,8,8,553] reduction7950.output := by lin_cert using reduction7950.terms
def map_58_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8332 : InImage map_58_191 image8332 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8332 : Bundle := named_bundle% "RealMapCertificates/relations/basis8332.json"
theorem reductionProof8332 : EqualModuloRelations reduction8332.relations reduction8332.input reduction8332.output := by lin_cert using reduction8332.terms
theorem substitutionProof8332 : IsMapEvaluation generatorImages reduction8332.relations [0,0,0,0,0,0,0,0,916] reduction8332.output := by lin_cert using reduction8332.terms
def map_58_194 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8705 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8705 : InImage map_58_194 image8705 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8705 : Bundle := named_bundle% "RealMapCertificates/relations/basis8705.json"
theorem reductionProof8705 : EqualModuloRelations reduction8705.relations reduction8705.input reduction8705.output := by lin_cert using reduction8705.terms
theorem substitutionProof8705 : IsMapEvaluation generatorImages reduction8705.relations [1,1048] reduction8705.output := by lin_cert using reduction8705.terms
def map_58_195 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8851 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8851 : InImage map_58_195 image8851 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8851 : Bundle := named_bundle% "RealMapCertificates/relations/basis8851.json"
theorem reductionProof8851 : EqualModuloRelations reduction8851.relations reduction8851.input reduction8851.output := by lin_cert using reduction8851.terms
theorem substitutionProof8851 : IsMapEvaluation generatorImages reduction8851.relations [17,701] reduction8851.output := by lin_cert using reduction8851.terms
def map_58_198 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9287 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9287 : InImage map_58_198 image9287 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9287 : Bundle := named_bundle% "RealMapCertificates/relations/basis9287.json"
theorem reductionProof9287 : EqualModuloRelations reduction9287.relations reduction9287.input reduction9287.output := by lin_cert using reduction9287.terms
theorem substitutionProof9287 : IsMapEvaluation generatorImages reduction9287.relations [8,17,554] reduction9287.output := by lin_cert using reduction9287.terms
def map_58_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9777 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9777 : InImage map_58_201 image9777 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9777 : Bundle := named_bundle% "RealMapCertificates/relations/basis9777.json"
theorem reductionProof9777 : EqualModuloRelations reduction9777.relations reduction9777.input reduction9777.output := by lin_cert using reduction9777.terms
theorem substitutionProof9777 : IsMapEvaluation generatorImages reduction9777.relations [8,17,579] reduction9777.output := by lin_cert using reduction9777.terms
def map_58_204 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image10267 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10267 : InImage map_58_204 image10267 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10267 : Bundle := named_bundle% "RealMapCertificates/relations/basis10267.json"
theorem reductionProof10267 : EqualModuloRelations reduction10267.relations reduction10267.input reduction10267.output := by lin_cert using reduction10267.terms
theorem substitutionProof10267 : IsMapEvaluation generatorImages reduction10267.relations [8,16,17,296] reduction10267.output := by lin_cert using reduction10267.terms
def map_58_207 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image10817 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10817 : InImage map_58_207 image10817 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10817 : Bundle := named_bundle% "RealMapCertificates/relations/basis10817.json"
theorem reductionProof10817 : EqualModuloRelations reduction10817.relations reduction10817.input reduction10817.output := by lin_cert using reduction10817.terms
theorem substitutionProof10817 : IsMapEvaluation generatorImages reduction10817.relations [1312] reduction10817.output := by lin_cert using reduction10817.terms
def image10818 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10818 : InImage map_58_207 image10818 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10818 : Bundle := named_bundle% "RealMapCertificates/relations/basis10818.json"
theorem reductionProof10818 : EqualModuloRelations reduction10818.relations reduction10818.input reduction10818.output := by lin_cert using reduction10818.terms
theorem substitutionProof10818 : IsMapEvaluation generatorImages reduction10818.relations [8,8,17,470] reduction10818.output := by lin_cert using reduction10818.terms
def map_58_208 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10993 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10993 : InImage map_58_208 image10993 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10993 : Bundle := named_bundle% "RealMapCertificates/relations/basis10993.json"
theorem reductionProof10993 : EqualModuloRelations reduction10993.relations reduction10993.input reduction10993.output := by lin_cert using reduction10993.terms
theorem substitutionProof10993 : IsMapEvaluation generatorImages reduction10993.relations [0,1313] reduction10993.output := by lin_cert using reduction10993.terms
def map_58_210 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11326 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11326 : InImage map_58_210 image11326 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11326 : Bundle := named_bundle% "RealMapCertificates/relations/basis11326.json"
theorem reductionProof11326 : EqualModuloRelations reduction11326.relations reduction11326.input reduction11326.output := by lin_cert using reduction11326.terms
theorem substitutionProof11326 : IsMapEvaluation generatorImages reduction11326.relations [1360] reduction11326.output := by lin_cert using reduction11326.terms
def image11327 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11327 : InImage map_58_210 image11327 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11327 : Bundle := named_bundle% "RealMapCertificates/relations/basis11327.json"
theorem reductionProof11327 : EqualModuloRelations reduction11327.relations reduction11327.input reduction11327.output := by lin_cert using reduction11327.terms
theorem substitutionProof11327 : IsMapEvaluation generatorImages reduction11327.relations [8,8,8,17,296] reduction11327.output := by lin_cert using reduction11327.terms
def map_58_211 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11541 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11541 : InImage map_58_211 image11541 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11541 : Bundle := named_bundle% "RealMapCertificates/relations/basis11541.json"
theorem reductionProof11541 : EqualModuloRelations reduction11541.relations reduction11541.input reduction11541.output := by lin_cert using reduction11541.terms
theorem substitutionProof11541 : IsMapEvaluation generatorImages reduction11541.relations [0,1361] reduction11541.output := by lin_cert using reduction11541.terms
def map_58_213 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11900 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11900 : InImage map_58_213 image11900 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11900 : Bundle := named_bundle% "RealMapCertificates/relations/basis11900.json"
theorem reductionProof11900 : EqualModuloRelations reduction11900.relations reduction11900.input reduction11900.output := by lin_cert using reduction11900.terms
theorem substitutionProof11900 : IsMapEvaluation generatorImages reduction11900.relations [16,916] reduction11900.output := by lin_cert using reduction11900.terms
def image11901 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11901 : InImage map_58_213 image11901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11901 : Bundle := named_bundle% "RealMapCertificates/relations/basis11901.json"
theorem reductionProof11901 : EqualModuloRelations reduction11901.relations reduction11901.input reduction11901.output := by lin_cert using reduction11901.terms
theorem substitutionProof11901 : IsMapEvaluation generatorImages reduction11901.relations [8,8,8,17,326] reduction11901.output := by lin_cert using reduction11901.terms
def map_58_214 : Matrix 5 2 := fun i j => ([true,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12112 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12112 : InImage map_58_214 image12112 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12112 : Bundle := named_bundle% "RealMapCertificates/relations/basis12112.json"
theorem reductionProof12112 : EqualModuloRelations reduction12112.relations reduction12112.input reduction12112.output := by lin_cert using reduction12112.terms
theorem substitutionProof12112 : IsMapEvaluation generatorImages reduction12112.relations [0,16,917] reduction12112.output := by lin_cert using reduction12112.terms
def image12113 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12113 : InImage map_58_214 image12113 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12113 : Bundle := named_bundle% "RealMapCertificates/relations/basis12113.json"
theorem reductionProof12113 : EqualModuloRelations reduction12113.relations reduction12113.input reduction12113.output := by lin_cert using reduction12113.terms
theorem substitutionProof12113 : IsMapEvaluation generatorImages reduction12113.relations [0,0,1395] reduction12113.output := by lin_cert using reduction12113.terms
def map_58_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12276 : InImage map_58_215 image12276 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12276 : Bundle := named_bundle% "RealMapCertificates/relations/basis12276.json"
theorem reductionProof12276 : EqualModuloRelations reduction12276.relations reduction12276.input reduction12276.output := by lin_cert using reduction12276.terms
theorem substitutionProof12276 : IsMapEvaluation generatorImages reduction12276.relations [0,0,17,917] reduction12276.output := by lin_cert using reduction12276.terms
def map_58_216 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image12464 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12464 : InImage map_58_216 image12464 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12464 : Bundle := named_bundle% "RealMapCertificates/relations/basis12464.json"
theorem reductionProof12464 : EqualModuloRelations reduction12464.relations reduction12464.input reduction12464.output := by lin_cert using reduction12464.terms
theorem substitutionProof12464 : IsMapEvaluation generatorImages reduction12464.relations [8,1141] reduction12464.output := by lin_cert using reduction12464.terms
def image12465 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12465 : InImage map_58_216 image12465 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12465 : Bundle := named_bundle% "RealMapCertificates/relations/basis12465.json"
theorem reductionProof12465 : EqualModuloRelations reduction12465.relations reduction12465.input reduction12465.output := by lin_cert using reduction12465.terms
theorem substitutionProof12465 : IsMapEvaluation generatorImages reduction12465.relations [8,8,8,16,17,183] reduction12465.output := by lin_cert using reduction12465.terms
def image12466 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12466 : InImage map_58_216 image12466 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12466 : Bundle := named_bundle% "RealMapCertificates/relations/basis12466.json"
theorem reductionProof12466 : EqualModuloRelations reduction12466.relations reduction12466.input reduction12466.output := by lin_cert using reduction12466.terms
theorem substitutionProof12466 : IsMapEvaluation generatorImages reduction12466.relations [1,1,1395] reduction12466.output := by lin_cert using reduction12466.terms
def image12467 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12467 : InImage map_58_216 image12467 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12467 : Bundle := named_bundle% "RealMapCertificates/relations/basis12467.json"
theorem reductionProof12467 : EqualModuloRelations reduction12467.relations reduction12467.input reduction12467.output := by lin_cert using reduction12467.terms
theorem substitutionProof12467 : IsMapEvaluation generatorImages reduction12467.relations [0,0,0,0,1396] reduction12467.output := by lin_cert using reduction12467.terms
def map_58_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12686 : InImage map_58_217 image12686 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12686 : Bundle := named_bundle% "RealMapCertificates/relations/basis12686.json"
theorem reductionProof12686 : EqualModuloRelations reduction12686.relations reduction12686.input reduction12686.output := by lin_cert using reduction12686.terms
theorem substitutionProof12686 : IsMapEvaluation generatorImages reduction12686.relations [0,8,1142] reduction12686.output := by lin_cert using reduction12686.terms
def image12687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12687 : InImage map_58_217 image12687 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12687 : Bundle := named_bundle% "RealMapCertificates/relations/basis12687.json"
theorem reductionProof12687 : EqualModuloRelations reduction12687.relations reduction12687.input reduction12687.output := by lin_cert using reduction12687.terms
theorem substitutionProof12687 : IsMapEvaluation generatorImages reduction12687.relations [0,0,1468] reduction12687.output := by lin_cert using reduction12687.terms
def image12688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12688 : InImage map_58_217 image12688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12688 : Bundle := named_bundle% "RealMapCertificates/relations/basis12688.json"
theorem reductionProof12688 : EqualModuloRelations reduction12688.relations reduction12688.input reduction12688.output := by lin_cert using reduction12688.terms
theorem substitutionProof12688 : IsMapEvaluation generatorImages reduction12688.relations [0,0,0,0,0,1397] reduction12688.output := by lin_cert using reduction12688.terms
def map_58_219 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13047 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13047 : InImage map_58_219 image13047 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13047 : Bundle := named_bundle% "RealMapCertificates/relations/basis13047.json"
theorem reductionProof13047 : EqualModuloRelations reduction13047.relations reduction13047.input reduction13047.output := by lin_cert using reduction13047.terms
theorem substitutionProof13047 : IsMapEvaluation generatorImages reduction13047.relations [8,8,916] reduction13047.output := by lin_cert using reduction13047.terms
def image13048 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13048 : InImage map_58_219 image13048 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13048 : Bundle := named_bundle% "RealMapCertificates/relations/basis13048.json"
theorem reductionProof13048 : EqualModuloRelations reduction13048.relations reduction13048.input reduction13048.output := by lin_cert using reduction13048.terms
theorem substitutionProof13048 : IsMapEvaluation generatorImages reduction13048.relations [8,8,8,8,17,253] reduction13048.output := by lin_cert using reduction13048.terms
end RealMapCertificates
