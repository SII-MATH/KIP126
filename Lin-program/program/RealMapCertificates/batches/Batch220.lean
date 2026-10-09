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
  | 20 => [[5,6]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 224 => []
  | 237 => []
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 297 => []
  | 324 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 555 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 725 => []
  | 783 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 870 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1031 => [[4,4,4,4,4,4,4,5,5,8,12]]
  | 1033 => []
  | 1059 => []
  | 1240 => [[4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1469 => [[4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1471 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1566 => []
  | 1589 => []
  | 1618 => [[4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1680 => [[4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1734 => []
  | 1736 => []
  | 1737 => []
  | 1749 => [[0,0,4,4,4,4,4,4,4,4,8,12,12]]
  | 1829 => [[0,0,4,4,4,4,4,4,4,4,9,12,12]]
  | 1965 => []
  | 2057 => []
  | 2089 => [[0,0,4,4,4,4,4,4,4,4,4,8,12,12]]
  | 2193 => []
  | 2330 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | _ => []
def map_58_220 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image13241 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13241 : InImage map_58_220 image13241 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13241 : Bundle := named_bundle% "RealMapCertificates/relations/basis13241.json"
theorem reductionProof13241 : EqualModuloRelations reduction13241.relations reduction13241.input reduction13241.output := by lin_cert using reduction13241.terms
theorem substitutionProof13241 : IsMapEvaluation generatorImages reduction13241.relations [0,8,8,917] reduction13241.output := by lin_cert using reduction13241.terms
def image13242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13242 : InImage map_58_220 image13242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13242 : Bundle := named_bundle% "RealMapCertificates/relations/basis13242.json"
theorem reductionProof13242 : EqualModuloRelations reduction13242.relations reduction13242.input reduction13242.output := by lin_cert using reduction13242.terms
theorem substitutionProof13242 : IsMapEvaluation generatorImages reduction13242.relations [0,0,16,969] reduction13242.output := by lin_cert using reduction13242.terms
def map_58_221 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13393 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13393 : InImage map_58_221 image13393 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13393 : Bundle := named_bundle% "RealMapCertificates/relations/basis13393.json"
theorem reductionProof13393 : EqualModuloRelations reduction13393.relations reduction13393.input reduction13393.output := by lin_cert using reduction13393.terms
theorem substitutionProof13393 : IsMapEvaluation generatorImages reduction13393.relations [0,0,0,17,969] reduction13393.output := by lin_cert using reduction13393.terms
def map_58_222 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13596 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13596 : InImage map_58_222 image13596 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13596 : Bundle := named_bundle% "RealMapCertificates/relations/basis13596.json"
theorem reductionProof13596 : EqualModuloRelations reduction13596.relations reduction13596.input reduction13596.output := by lin_cert using reduction13596.terms
theorem substitutionProof13596 : IsMapEvaluation generatorImages reduction13596.relations [8,8,952] reduction13596.output := by lin_cert using reduction13596.terms
def image13597 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13597 : InImage map_58_222 image13597 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13597 : Bundle := named_bundle% "RealMapCertificates/relations/basis13597.json"
theorem reductionProof13597 : EqualModuloRelations reduction13597.relations reduction13597.input reduction13597.output := by lin_cert using reduction13597.terms
theorem substitutionProof13597 : IsMapEvaluation generatorImages reduction13597.relations [8,8,8,8,8,17,183] reduction13597.output := by lin_cert using reduction13597.terms
def image13598 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13598 : InImage map_58_222 image13598 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13598 : Bundle := named_bundle% "RealMapCertificates/relations/basis13598.json"
theorem reductionProof13598 : EqualModuloRelations reduction13598.relations reduction13598.input reduction13598.output := by lin_cert using reduction13598.terms
theorem substitutionProof13598 : IsMapEvaluation generatorImages reduction13598.relations [0,0,0,17,17,636] reduction13598.output := by lin_cert using reduction13598.terms
def map_58_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13809 : InImage map_58_223 image13809 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13809 : Bundle := named_bundle% "RealMapCertificates/relations/basis13809.json"
theorem reductionProof13809 : EqualModuloRelations reduction13809.relations reduction13809.input reduction13809.output := by lin_cert using reduction13809.terms
theorem substitutionProof13809 : IsMapEvaluation generatorImages reduction13809.relations [0,8,8,953] reduction13809.output := by lin_cert using reduction13809.terms
def image13810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13810 : InImage map_58_223 image13810 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13810 : Bundle := named_bundle% "RealMapCertificates/relations/basis13810.json"
theorem reductionProof13810 : EqualModuloRelations reduction13810.relations reduction13810.input reduction13810.output := by lin_cert using reduction13810.terms
theorem substitutionProof13810 : IsMapEvaluation generatorImages reduction13810.relations [0,0,0,0,0,0,0,0,1471] reduction13810.output := by lin_cert using reduction13810.terms
def map_58_225 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image14168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14168 : InImage map_58_225 image14168 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14168 : Bundle := named_bundle% "RealMapCertificates/relations/basis14168.json"
theorem reductionProof14168 : EqualModuloRelations reduction14168.relations reduction14168.input reduction14168.output := by lin_cert using reduction14168.terms
theorem substitutionProof14168 : IsMapEvaluation generatorImages reduction14168.relations [8,8,16,635] reduction14168.output := by lin_cert using reduction14168.terms
def image14169 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14169 : InImage map_58_225 image14169 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14169 : Bundle := named_bundle% "RealMapCertificates/relations/basis14169.json"
theorem reductionProof14169 : EqualModuloRelations reduction14169.relations reduction14169.input reduction14169.output := by lin_cert using reduction14169.terms
theorem substitutionProof14169 : IsMapEvaluation generatorImages reduction14169.relations [8,8,8,8,8,17,200] reduction14169.output := by lin_cert using reduction14169.terms
def map_58_226 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14361 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14361 : InImage map_58_226 image14361 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14361 : Bundle := named_bundle% "RealMapCertificates/relations/basis14361.json"
theorem reductionProof14361 : EqualModuloRelations reduction14361.relations reduction14361.input reduction14361.output := by lin_cert using reduction14361.terms
theorem substitutionProof14361 : IsMapEvaluation generatorImages reduction14361.relations [1,1618] reduction14361.output := by lin_cert using reduction14361.terms
def image14362 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14362 : InImage map_58_226 image14362 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14362 : Bundle := named_bundle% "RealMapCertificates/relations/basis14362.json"
theorem reductionProof14362 : EqualModuloRelations reduction14362.relations reduction14362.input reduction14362.output := by lin_cert using reduction14362.terms
theorem substitutionProof14362 : IsMapEvaluation generatorImages reduction14362.relations [0,8,8,16,636] reduction14362.output := by lin_cert using reduction14362.terms
def map_58_227 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14513 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14513 : InImage map_58_227 image14513 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14513 : Bundle := named_bundle% "RealMapCertificates/relations/basis14513.json"
theorem reductionProof14513 : EqualModuloRelations reduction14513.relations reduction14513.input reduction14513.output := by lin_cert using reduction14513.terms
theorem substitutionProof14513 : IsMapEvaluation generatorImages reduction14513.relations [1680] reduction14513.output := by lin_cert using reduction14513.terms
def map_58_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14731 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14731 : InImage map_58_228 image14731 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14731 : Bundle := named_bundle% "RealMapCertificates/relations/basis14731.json"
theorem reductionProof14731 : EqualModuloRelations reduction14731.relations reduction14731.input reduction14731.output := by lin_cert using reduction14731.terms
theorem substitutionProof14731 : IsMapEvaluation generatorImages reduction14731.relations [8,8,8,805] reduction14731.output := by lin_cert using reduction14731.terms
def image14732 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14732 : InImage map_58_228 image14732 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14732 : Bundle := named_bundle% "RealMapCertificates/relations/basis14732.json"
theorem reductionProof14732 : EqualModuloRelations reduction14732.relations reduction14732.input reduction14732.output := by lin_cert using reduction14732.terms
theorem substitutionProof14732 : IsMapEvaluation generatorImages reduction14732.relations [8,8,8,8,8,16,17,111] reduction14732.output := by lin_cert using reduction14732.terms
def image14733 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14733 : InImage map_58_228 image14733 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14733 : Bundle := named_bundle% "RealMapCertificates/relations/basis14733.json"
theorem reductionProof14733 : EqualModuloRelations reduction14733.relations reduction14733.input reduction14733.output := by lin_cert using reduction14733.terms
theorem substitutionProof14733 : IsMapEvaluation generatorImages reduction14733.relations [0,0,0,0,0,0,64,635] reduction14733.output := by lin_cert using reduction14733.terms
def map_58_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14960 : InImage map_58_229 image14960 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14960 : Bundle := named_bundle% "RealMapCertificates/relations/basis14960.json"
theorem reductionProof14960 : EqualModuloRelations reduction14960.relations reduction14960.input reduction14960.output := by lin_cert using reduction14960.terms
theorem substitutionProof14960 : IsMapEvaluation generatorImages reduction14960.relations [0,0,0,0,0,0,0,64,636] reduction14960.output := by lin_cert using reduction14960.terms
def map_58_230 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image15104 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15104 : InImage map_58_230 image15104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15104 : Bundle := named_bundle% "RealMapCertificates/relations/basis15104.json"
theorem reductionProof15104 : EqualModuloRelations reduction15104.relations reduction15104.input reduction15104.output := by lin_cert using reduction15104.terms
theorem substitutionProof15104 : IsMapEvaluation generatorImages reduction15104.relations [8,1396] reduction15104.output := by lin_cert using reduction15104.terms
def map_58_231 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15350 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15350 : InImage map_58_231 image15350 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15350 : Bundle := named_bundle% "RealMapCertificates/relations/basis15350.json"
theorem reductionProof15350 : EqualModuloRelations reduction15350.relations reduction15350.input reduction15350.output := by lin_cert using reduction15350.terms
theorem substitutionProof15350 : IsMapEvaluation generatorImages reduction15350.relations [8,8,8,8,635] reduction15350.output := by lin_cert using reduction15350.terms
def image15351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15351 : InImage map_58_231 image15351 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15351 : Bundle := named_bundle% "RealMapCertificates/relations/basis15351.json"
theorem reductionProof15351 : EqualModuloRelations reduction15351.relations reduction15351.input reduction15351.output := by lin_cert using reduction15351.terms
theorem substitutionProof15351 : IsMapEvaluation generatorImages reduction15351.relations [8,8,8,8,8,8,17,153] reduction15351.output := by lin_cert using reduction15351.terms
def image15352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15352 : InImage map_58_231 image15352 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15352 : Bundle := named_bundle% "RealMapCertificates/relations/basis15352.json"
theorem reductionProof15352 : EqualModuloRelations reduction15352.relations reduction15352.input reduction15352.output := by lin_cert using reduction15352.terms
theorem substitutionProof15352 : IsMapEvaluation generatorImages reduction15352.relations [0,0,0,0,0,0,0,0,0,1589] reduction15352.output := by lin_cert using reduction15352.terms
def map_58_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15578 : InImage map_58_232 image15578 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15578 : Bundle := named_bundle% "RealMapCertificates/relations/basis15578.json"
theorem reductionProof15578 : EqualModuloRelations reduction15578.relations reduction15578.input reduction15578.output := by lin_cert using reduction15578.terms
theorem substitutionProof15578 : IsMapEvaluation generatorImages reduction15578.relations [0,0,0,0,0,0,0,0,0,0,0,1566] reduction15578.output := by lin_cert using reduction15578.terms
def map_58_233 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15758 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15758 : InImage map_58_233 image15758 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15758 : Bundle := named_bundle% "RealMapCertificates/relations/basis15758.json"
theorem reductionProof15758 : EqualModuloRelations reduction15758.relations reduction15758.input reduction15758.output := by lin_cert using reduction15758.terms
theorem substitutionProof15758 : IsMapEvaluation generatorImages reduction15758.relations [8,1469] reduction15758.output := by lin_cert using reduction15758.terms
def map_58_234 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15998 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15998 : InImage map_58_234 image15998 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15998 : Bundle := named_bundle% "RealMapCertificates/relations/basis15998.json"
theorem reductionProof15998 : EqualModuloRelations reduction15998.relations reduction15998.input reduction15998.output := by lin_cert using reduction15998.terms
theorem substitutionProof15998 : IsMapEvaluation generatorImages reduction15998.relations [8,8,8,8,662] reduction15998.output := by lin_cert using reduction15998.terms
def image15999 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15999 : InImage map_58_234 image15999 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15999 : Bundle := named_bundle% "RealMapCertificates/relations/basis15999.json"
theorem reductionProof15999 : EqualModuloRelations reduction15999.relations reduction15999.input reduction15999.output := by lin_cert using reduction15999.terms
theorem substitutionProof15999 : IsMapEvaluation generatorImages reduction15999.relations [8,8,8,8,8,8,8,17,111] reduction15999.output := by lin_cert using reduction15999.terms
def map_58_236 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image16421 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16421 : InImage map_58_236 image16421 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16421 : Bundle := named_bundle% "RealMapCertificates/relations/basis16421.json"
theorem reductionProof16421 : EqualModuloRelations reduction16421.relations reduction16421.input reduction16421.output := by lin_cert using reduction16421.terms
theorem substitutionProof16421 : IsMapEvaluation generatorImages reduction16421.relations [8,49,686] reduction16421.output := by lin_cert using reduction16421.terms
def map_58_237 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image16668 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16668 : InImage map_58_237 image16668 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16668 : Bundle := named_bundle% "RealMapCertificates/relations/basis16668.json"
theorem reductionProof16668 : EqualModuloRelations reduction16668.relations reduction16668.input reduction16668.output := by lin_cert using reduction16668.terms
theorem substitutionProof16668 : IsMapEvaluation generatorImages reduction16668.relations [8,8,8,8,16,402] reduction16668.output := by lin_cert using reduction16668.terms
def image16669 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16669 : InImage map_58_237 image16669 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16669 : Bundle := named_bundle% "RealMapCertificates/relations/basis16669.json"
theorem reductionProof16669 : EqualModuloRelations reduction16669.relations reduction16669.input reduction16669.output := by lin_cert using reduction16669.terms
theorem substitutionProof16669 : IsMapEvaluation generatorImages reduction16669.relations [8,8,8,8,8,8,8,17,117] reduction16669.output := by lin_cert using reduction16669.terms
def map_58_238 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16903 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16903 : InImage map_58_238 image16903 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16903 : Bundle := named_bundle% "RealMapCertificates/relations/basis16903.json"
theorem reductionProof16903 : EqualModuloRelations reduction16903.relations reduction16903.input reduction16903.output := by lin_cert using reduction16903.terms
theorem substitutionProof16903 : IsMapEvaluation generatorImages reduction16903.relations [1,5,64,635] reduction16903.output := by lin_cert using reduction16903.terms
def map_58_239 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17111 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17111 : InImage map_58_239 image17111 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17111 : Bundle := named_bundle% "RealMapCertificates/relations/basis17111.json"
theorem reductionProof17111 : EqualModuloRelations reduction17111.relations reduction17111.input reduction17111.output := by lin_cert using reduction17111.terms
theorem substitutionProof17111 : IsMapEvaluation generatorImages reduction17111.relations [1965] reduction17111.output := by lin_cert using reduction17111.terms
def image17112 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17112 : InImage map_58_239 image17112 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17112 : Bundle := named_bundle% "RealMapCertificates/relations/basis17112.json"
theorem reductionProof17112 : EqualModuloRelations reduction17112.relations reduction17112.input reduction17112.output := by lin_cert using reduction17112.terms
theorem substitutionProof17112 : IsMapEvaluation generatorImages reduction17112.relations [8,8,1240] reduction17112.output := by lin_cert using reduction17112.terms
def map_58_240 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image17369 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17369 : InImage map_58_240 image17369 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17369 : Bundle := named_bundle% "RealMapCertificates/relations/basis17369.json"
theorem reductionProof17369 : EqualModuloRelations reduction17369.relations reduction17369.input reduction17369.output := by lin_cert using reduction17369.terms
theorem substitutionProof17369 : IsMapEvaluation generatorImages reduction17369.relations [8,8,8,8,8,555] reduction17369.output := by lin_cert using reduction17369.terms
def image17370 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17370 : InImage map_58_240 image17370 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17370 : Bundle := named_bundle% "RealMapCertificates/relations/basis17370.json"
theorem reductionProof17370 : EqualModuloRelations reduction17370.relations reduction17370.input reduction17370.output := by lin_cert using reduction17370.terms
theorem substitutionProof17370 : IsMapEvaluation generatorImages reduction17370.relations [8,8,8,8,8,8,8,16,17,50] reduction17370.output := by lin_cert using reduction17370.terms
def map_58_242 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17872 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17872 : InImage map_58_242 image17872 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17872 : Bundle := named_bundle% "RealMapCertificates/relations/basis17872.json"
theorem reductionProof17872 : EqualModuloRelations reduction17872.relations reduction17872.input reduction17872.output := by lin_cert using reduction17872.terms
theorem substitutionProof17872 : IsMapEvaluation generatorImages reduction17872.relations [2057] reduction17872.output := by lin_cert using reduction17872.terms
def image17873 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17873 : InImage map_58_242 image17873 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17873 : Bundle := named_bundle% "RealMapCertificates/relations/basis17873.json"
theorem reductionProof17873 : EqualModuloRelations reduction17873.relations reduction17873.input reduction17873.output := by lin_cert using reduction17873.terms
theorem substitutionProof17873 : IsMapEvaluation generatorImages reduction17873.relations [8,8,31,686] reduction17873.output := by lin_cert using reduction17873.terms
def map_58_243 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image18150 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18150 : InImage map_58_243 image18150 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18150 : Bundle := named_bundle% "RealMapCertificates/relations/basis18150.json"
theorem reductionProof18150 : EqualModuloRelations reduction18150.relations reduction18150.input reduction18150.output := by lin_cert using reduction18150.terms
theorem substitutionProof18150 : IsMapEvaluation generatorImages reduction18150.relations [2089] reduction18150.output := by lin_cert using reduction18150.terms
def image18151 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18151 : InImage map_58_243 image18151 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18151 : Bundle := named_bundle% "RealMapCertificates/relations/basis18151.json"
theorem reductionProof18151 : EqualModuloRelations reduction18151.relations reduction18151.input reduction18151.output := by lin_cert using reduction18151.terms
theorem substitutionProof18151 : IsMapEvaluation generatorImages reduction18151.relations [8,8,8,8,8,8,402] reduction18151.output := by lin_cert using reduction18151.terms
def image18152 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18152 : InImage map_58_243 image18152 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18152 : Bundle := named_bundle% "RealMapCertificates/relations/basis18152.json"
theorem reductionProof18152 : EqualModuloRelations reduction18152.relations reduction18152.input reduction18152.output := by lin_cert using reduction18152.terms
theorem substitutionProof18152 : IsMapEvaluation generatorImages reduction18152.relations [8,8,8,8,8,8,8,8,17,78] reduction18152.output := by lin_cert using reduction18152.terms
def map_58_245 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image18617 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18617 : InImage map_58_245 image18617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18617 : Bundle := named_bundle% "RealMapCertificates/relations/basis18617.json"
theorem reductionProof18617 : EqualModuloRelations reduction18617.relations reduction18617.input reduction18617.output := by lin_cert using reduction18617.terms
theorem substitutionProof18617 : IsMapEvaluation generatorImages reduction18617.relations [16,1471] reduction18617.output := by lin_cert using reduction18617.terms
def image18618 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18618 : InImage map_58_245 image18618 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18618 : Bundle := named_bundle% "RealMapCertificates/relations/basis18618.json"
theorem reductionProof18618 : EqualModuloRelations reduction18618.relations reduction18618.input reduction18618.output := by lin_cert using reduction18618.terms
theorem substitutionProof18618 : IsMapEvaluation generatorImages reduction18618.relations [8,8,8,1031] reduction18618.output := by lin_cert using reduction18618.terms
def map_58_246 : Matrix 5 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18897 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation18897 : InImage map_58_246 image18897 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18897 : Bundle := named_bundle% "RealMapCertificates/relations/basis18897.json"
theorem reductionProof18897 : EqualModuloRelations reduction18897.relations reduction18897.input reduction18897.output := by lin_cert using reduction18897.terms
theorem substitutionProof18897 : IsMapEvaluation generatorImages reduction18897.relations [138,636] reduction18897.output := by lin_cert using reduction18897.terms
def image18898 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18898 : InImage map_58_246 image18898 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18898 : Bundle := named_bundle% "RealMapCertificates/relations/basis18898.json"
theorem reductionProof18898 : EqualModuloRelations reduction18898.relations reduction18898.input reduction18898.output := by lin_cert using reduction18898.terms
theorem substitutionProof18898 : IsMapEvaluation generatorImages reduction18898.relations [8,8,8,8,8,8,432] reduction18898.output := by lin_cert using reduction18898.terms
def image18899 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18899 : InImage map_58_246 image18899 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18899 : Bundle := named_bundle% "RealMapCertificates/relations/basis18899.json"
theorem reductionProof18899 : EqualModuloRelations reduction18899.relations reduction18899.input reduction18899.output := by lin_cert using reduction18899.terms
theorem substitutionProof18899 : IsMapEvaluation generatorImages reduction18899.relations [8,8,8,8,8,8,8,8,8,17,50] reduction18899.output := by lin_cert using reduction18899.terms
def image18900 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18900 : InImage map_58_246 image18900 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18900 : Bundle := named_bundle% "RealMapCertificates/relations/basis18900.json"
theorem reductionProof18900 : EqualModuloRelations reduction18900.relations reduction18900.input reduction18900.output := by lin_cert using reduction18900.terms
theorem substitutionProof18900 : IsMapEvaluation generatorImages reduction18900.relations [0,17,1471] reduction18900.output := by lin_cert using reduction18900.terms
def map_58_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19199 : InImage map_58_247 image19199 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19199 : Bundle := named_bundle% "RealMapCertificates/relations/basis19199.json"
theorem reductionProof19199 : EqualModuloRelations reduction19199.relations reduction19199.input reduction19199.output := by lin_cert using reduction19199.terms
theorem substitutionProof19199 : IsMapEvaluation generatorImages reduction19199.relations [0,2193] reduction19199.output := by lin_cert using reduction19199.terms
def map_58_248 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image19414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19414 : InImage map_58_248 image19414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19414 : Bundle := named_bundle% "RealMapCertificates/relations/basis19414.json"
theorem reductionProof19414 : EqualModuloRelations reduction19414.relations reduction19414.input reduction19414.output := by lin_cert using reduction19414.terms
theorem substitutionProof19414 : IsMapEvaluation generatorImages reduction19414.relations [8,1734] reduction19414.output := by lin_cert using reduction19414.terms
def image19415 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19415 : InImage map_58_248 image19415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19415 : Bundle := named_bundle% "RealMapCertificates/relations/basis19415.json"
theorem reductionProof19415 : EqualModuloRelations reduction19415.relations reduction19415.input reduction19415.output := by lin_cert using reduction19415.terms
theorem substitutionProof19415 : IsMapEvaluation generatorImages reduction19415.relations [8,8,8,16,686] reduction19415.output := by lin_cert using reduction19415.terms
def image19416 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19416 : InImage map_58_248 image19416 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19416 : Bundle := named_bundle% "RealMapCertificates/relations/basis19416.json"
theorem reductionProof19416 : EqualModuloRelations reduction19416.relations reduction19416.input reduction19416.output := by lin_cert using reduction19416.terms
theorem substitutionProof19416 : IsMapEvaluation generatorImages reduction19416.relations [1,2193] reduction19416.output := by lin_cert using reduction19416.terms
def image19417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19417 : InImage map_58_248 image19417 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19417 : Bundle := named_bundle% "RealMapCertificates/relations/basis19417.json"
theorem reductionProof19417 : EqualModuloRelations reduction19417.relations reduction19417.input reduction19417.output := by lin_cert using reduction19417.terms
theorem substitutionProof19417 : IsMapEvaluation generatorImages reduction19417.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction19417.output := by lin_cert using reduction19417.terms
def map_58_249 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image19717 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19717 : InImage map_58_249 image19717 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19717 : Bundle := named_bundle% "RealMapCertificates/relations/basis19717.json"
theorem reductionProof19717 : EqualModuloRelations reduction19717.relations reduction19717.input reduction19717.output := by lin_cert using reduction19717.terms
theorem substitutionProof19717 : IsMapEvaluation generatorImages reduction19717.relations [8,1749] reduction19717.output := by lin_cert using reduction19717.terms
def image19718 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19718 : InImage map_58_249 image19718 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19718 : Bundle := named_bundle% "RealMapCertificates/relations/basis19718.json"
theorem reductionProof19718 : EqualModuloRelations reduction19718.relations reduction19718.input reduction19718.output := by lin_cert using reduction19718.terms
theorem substitutionProof19718 : IsMapEvaluation generatorImages reduction19718.relations [8,8,8,8,8,8,16,224] reduction19718.output := by lin_cert using reduction19718.terms
def image19719 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19719 : InImage map_58_249 image19719 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19719 : Bundle := named_bundle% "RealMapCertificates/relations/basis19719.json"
theorem reductionProof19719 : EqualModuloRelations reduction19719.relations reduction19719.input reduction19719.output := by lin_cert using reduction19719.terms
theorem substitutionProof19719 : IsMapEvaluation generatorImages reduction19719.relations [8,8,8,8,8,8,8,8,8,17,56] reduction19719.output := by lin_cert using reduction19719.terms
def image19720 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19720 : InImage map_58_249 image19720 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19720 : Bundle := named_bundle% "RealMapCertificates/relations/basis19720.json"
theorem reductionProof19720 : EqualModuloRelations reduction19720.relations reduction19720.input reduction19720.output := by lin_cert using reduction19720.terms
theorem substitutionProof19720 : IsMapEvaluation generatorImages reduction19720.relations [0,17,1514] reduction19720.output := by lin_cert using reduction19720.terms
def image19721 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19721 : InImage map_58_249 image19721 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19721 : Bundle := named_bundle% "RealMapCertificates/relations/basis19721.json"
theorem reductionProof19721 : EqualModuloRelations reduction19721.relations reduction19721.input reduction19721.output := by lin_cert using reduction19721.terms
theorem substitutionProof19721 : IsMapEvaluation generatorImages reduction19721.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction19721.output := by lin_cert using reduction19721.terms
def map_58_251 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20221 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20221 : InImage map_58_251 image20221 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20221 : Bundle := named_bundle% "RealMapCertificates/relations/basis20221.json"
theorem reductionProof20221 : EqualModuloRelations reduction20221.relations reduction20221.input reduction20221.output := by lin_cert using reduction20221.terms
theorem substitutionProof20221 : IsMapEvaluation generatorImages reduction20221.relations [64,969] reduction20221.output := by lin_cert using reduction20221.terms
def image20222 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20222 : InImage map_58_251 image20222 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20222 : Bundle := named_bundle% "RealMapCertificates/relations/basis20222.json"
theorem reductionProof20222 : EqualModuloRelations reduction20222.relations reduction20222.input reduction20222.output := by lin_cert using reduction20222.terms
theorem substitutionProof20222 : IsMapEvaluation generatorImages reduction20222.relations [8,8,1471] reduction20222.output := by lin_cert using reduction20222.terms
def image20223 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20223 : InImage map_58_251 image20223 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20223 : Bundle := named_bundle% "RealMapCertificates/relations/basis20223.json"
theorem reductionProof20223 : EqualModuloRelations reduction20223.relations reduction20223.input reduction20223.output := by lin_cert using reduction20223.terms
theorem substitutionProof20223 : IsMapEvaluation generatorImages reduction20223.relations [8,8,8,8,872] reduction20223.output := by lin_cert using reduction20223.terms
def map_58_252 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20518 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20518 : InImage map_58_252 image20518 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20518 : Bundle := named_bundle% "RealMapCertificates/relations/basis20518.json"
theorem reductionProof20518 : EqualModuloRelations reduction20518.relations reduction20518.input reduction20518.output := by lin_cert using reduction20518.terms
theorem substitutionProof20518 : IsMapEvaluation generatorImages reduction20518.relations [8,1829] reduction20518.output := by lin_cert using reduction20518.terms
def image20519 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20519 : InImage map_58_252 image20519 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20519 : Bundle := named_bundle% "RealMapCertificates/relations/basis20519.json"
theorem reductionProof20519 : EqualModuloRelations reduction20519.relations reduction20519.input reduction20519.output := by lin_cert using reduction20519.terms
theorem substitutionProof20519 : IsMapEvaluation generatorImages reduction20519.relations [8,8,8,8,8,8,8,297] reduction20519.output := by lin_cert using reduction20519.terms
def image20520 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20520 : InImage map_58_252 image20520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20520 : Bundle := named_bundle% "RealMapCertificates/relations/basis20520.json"
theorem reductionProof20520 : EqualModuloRelations reduction20520.relations reduction20520.input reduction20520.output := by lin_cert using reduction20520.terms
theorem substitutionProof20520 : IsMapEvaluation generatorImages reduction20520.relations [8,8,8,8,8,8,8,8,8,16,17,17] reduction20520.output := by lin_cert using reduction20520.terms
def image20521 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20521 : InImage map_58_252 image20521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20521 : Bundle := named_bundle% "RealMapCertificates/relations/basis20521.json"
theorem reductionProof20521 : EqualModuloRelations reduction20521.relations reduction20521.input reduction20521.output := by lin_cert using reduction20521.terms
theorem substitutionProof20521 : IsMapEvaluation generatorImages reduction20521.relations [0,138,685] reduction20521.output := by lin_cert using reduction20521.terms
def image20522 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20522 : InImage map_58_252 image20522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20522 : Bundle := named_bundle% "RealMapCertificates/relations/basis20522.json"
theorem reductionProof20522 : EqualModuloRelations reduction20522.relations reduction20522.input reduction20522.output := by lin_cert using reduction20522.terms
theorem substitutionProof20522 : IsMapEvaluation generatorImages reduction20522.relations [0,16,17,1033] reduction20522.output := by lin_cert using reduction20522.terms
def map_58_253 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image20810 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20810 : InImage map_58_253 image20810 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20810 : Bundle := named_bundle% "RealMapCertificates/relations/basis20810.json"
theorem reductionProof20810 : EqualModuloRelations reduction20810.relations reduction20810.input reduction20810.output := by lin_cert using reduction20810.terms
theorem substitutionProof20810 : IsMapEvaluation generatorImages reduction20810.relations [0,0,17,17,1033] reduction20810.output := by lin_cert using reduction20810.terms
def map_58_254 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21047 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21047 : InImage map_58_254 image21047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21047 : Bundle := named_bundle% "RealMapCertificates/relations/basis21047.json"
theorem reductionProof21047 : EqualModuloRelations reduction21047.relations reduction21047.input reduction21047.output := by lin_cert using reduction21047.terms
theorem substitutionProof21047 : IsMapEvaluation generatorImages reduction21047.relations [64,1030] reduction21047.output := by lin_cert using reduction21047.terms
def image21048 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21048 : InImage map_58_254 image21048 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21048 : Bundle := named_bundle% "RealMapCertificates/relations/basis21048.json"
theorem reductionProof21048 : EqualModuloRelations reduction21048.relations reduction21048.input reduction21048.output := by lin_cert using reduction21048.terms
theorem substitutionProof21048 : IsMapEvaluation generatorImages reduction21048.relations [8,8,1514] reduction21048.output := by lin_cert using reduction21048.terms
def image21049 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21049 : InImage map_58_254 image21049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21049 : Bundle := named_bundle% "RealMapCertificates/relations/basis21049.json"
theorem reductionProof21049 : EqualModuloRelations reduction21049.relations reduction21049.input reduction21049.output := by lin_cert using reduction21049.terms
theorem substitutionProof21049 : IsMapEvaluation generatorImages reduction21049.relations [8,8,8,8,8,686] reduction21049.output := by lin_cert using reduction21049.terms
def image21050 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21050 : InImage map_58_254 image21050 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21050 : Bundle := named_bundle% "RealMapCertificates/relations/basis21050.json"
theorem reductionProof21050 : EqualModuloRelations reduction21050.relations reduction21050.input reduction21050.output := by lin_cert using reduction21050.terms
theorem substitutionProof21050 : IsMapEvaluation generatorImages reduction21050.relations [0,0,0,246,402] reduction21050.output := by lin_cert using reduction21050.terms
def image21051 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21051 : InImage map_58_254 image21051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21051 : Bundle := named_bundle% "RealMapCertificates/relations/basis21051.json"
theorem reductionProof21051 : EqualModuloRelations reduction21051.relations reduction21051.input reduction21051.output := by lin_cert using reduction21051.terms
theorem substitutionProof21051 : IsMapEvaluation generatorImages reduction21051.relations [0,0,0,59,1033] reduction21051.output := by lin_cert using reduction21051.terms
def map_58_255 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image21396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21396 : InImage map_58_255 image21396 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21396 : Bundle := named_bundle% "RealMapCertificates/relations/basis21396.json"
theorem reductionProof21396 : EqualModuloRelations reduction21396.relations reduction21396.input reduction21396.output := by lin_cert using reduction21396.terms
theorem substitutionProof21396 : IsMapEvaluation generatorImages reduction21396.relations [8,8,1534] reduction21396.output := by lin_cert using reduction21396.terms
def image21397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21397 : InImage map_58_255 image21397 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21397 : Bundle := named_bundle% "RealMapCertificates/relations/basis21397.json"
theorem reductionProof21397 : EqualModuloRelations reduction21397.relations reduction21397.input reduction21397.output := by lin_cert using reduction21397.terms
theorem substitutionProof21397 : IsMapEvaluation generatorImages reduction21397.relations [8,8,8,8,8,8,8,8,224] reduction21397.output := by lin_cert using reduction21397.terms
def image21398 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21398 : InImage map_58_255 image21398 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21398 : Bundle := named_bundle% "RealMapCertificates/relations/basis21398.json"
theorem reductionProof21398 : EqualModuloRelations reduction21398.relations reduction21398.input reduction21398.output := by lin_cert using reduction21398.terms
theorem substitutionProof21398 : IsMapEvaluation generatorImages reduction21398.relations [8,8,8,8,8,8,8,8,8,8,17,40] reduction21398.output := by lin_cert using reduction21398.terms
def image21399 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21399 : InImage map_58_255 image21399 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21399 : Bundle := named_bundle% "RealMapCertificates/relations/basis21399.json"
theorem reductionProof21399 : EqualModuloRelations reduction21399.relations reduction21399.input reduction21399.output := by lin_cert using reduction21399.terms
theorem substitutionProof21399 : IsMapEvaluation generatorImages reduction21399.relations [0,8,17,1301] reduction21399.output := by lin_cert using reduction21399.terms
def image21400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21400 : InImage map_58_255 image21400 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21400 : Bundle := named_bundle% "RealMapCertificates/relations/basis21400.json"
theorem reductionProof21400 : EqualModuloRelations reduction21400.relations reduction21400.input reduction21400.output := by lin_cert using reduction21400.terms
theorem substitutionProof21400 : IsMapEvaluation generatorImages reduction21400.relations [0,0,0,0,0,2330] reduction21400.output := by lin_cert using reduction21400.terms
def map_58_257 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image21995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21995 : InImage map_58_257 image21995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21995 : Bundle := named_bundle% "RealMapCertificates/relations/basis21995.json"
theorem reductionProof21995 : EqualModuloRelations reduction21995.relations reduction21995.input reduction21995.output := by lin_cert using reduction21995.terms
theorem substitutionProof21995 : IsMapEvaluation generatorImages reduction21995.relations [16,64,685] reduction21995.output := by lin_cert using reduction21995.terms
def image21996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21996 : InImage map_58_257 image21996 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21996 : Bundle := named_bundle% "RealMapCertificates/relations/basis21996.json"
theorem reductionProof21996 : EqualModuloRelations reduction21996.relations reduction21996.input reduction21996.output := by lin_cert using reduction21996.terms
theorem substitutionProof21996 : IsMapEvaluation generatorImages reduction21996.relations [8,8,16,1033] reduction21996.output := by lin_cert using reduction21996.terms
def image21997 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21997 : InImage map_58_257 image21997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21997 : Bundle := named_bundle% "RealMapCertificates/relations/basis21997.json"
theorem reductionProof21997 : EqualModuloRelations reduction21997.relations reduction21997.input reduction21997.output := by lin_cert using reduction21997.terms
theorem substitutionProof21997 : IsMapEvaluation generatorImages reduction21997.relations [8,8,8,8,8,723] reduction21997.output := by lin_cert using reduction21997.terms
def map_58_258 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22348 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22348 : InImage map_58_258 image22348 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22348 : Bundle := named_bundle% "RealMapCertificates/relations/basis22348.json"
theorem reductionProof22348 : EqualModuloRelations reduction22348.relations reduction22348.input reduction22348.output := by lin_cert using reduction22348.terms
theorem substitutionProof22348 : IsMapEvaluation generatorImages reduction22348.relations [8,8,138,403] reduction22348.output := by lin_cert using reduction22348.terms
def image22349 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22349 : InImage map_58_258 image22349 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22349 : Bundle := named_bundle% "RealMapCertificates/relations/basis22349.json"
theorem reductionProof22349 : EqualModuloRelations reduction22349.relations reduction22349.input reduction22349.output := by lin_cert using reduction22349.terms
theorem substitutionProof22349 : IsMapEvaluation generatorImages reduction22349.relations [8,8,8,8,8,8,8,8,237] reduction22349.output := by lin_cert using reduction22349.terms
def image22350 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation22350 : InImage map_58_258 image22350 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22350 : Bundle := named_bundle% "RealMapCertificates/relations/basis22350.json"
theorem reductionProof22350 : EqualModuloRelations reduction22350.relations reduction22350.input reduction22350.output := by lin_cert using reduction22350.terms
theorem substitutionProof22350 : IsMapEvaluation generatorImages reduction22350.relations [8,8,8,8,8,8,8,8,8,8,8,17,17] reduction22350.output := by lin_cert using reduction22350.terms
def image22351 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22351 : InImage map_58_258 image22351 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22351 : Bundle := named_bundle% "RealMapCertificates/relations/basis22351.json"
theorem reductionProof22351 : EqualModuloRelations reduction22351.relations reduction22351.input reduction22351.output := by lin_cert using reduction22351.terms
theorem substitutionProof22351 : IsMapEvaluation generatorImages reduction22351.relations [0,8,8,17,1033] reduction22351.output := by lin_cert using reduction22351.terms
def image22352 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22352 : InImage map_58_258 image22352 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22352 : Bundle := named_bundle% "RealMapCertificates/relations/basis22352.json"
theorem reductionProof22352 : EqualModuloRelations reduction22352.relations reduction22352.input reduction22352.output := by lin_cert using reduction22352.terms
theorem substitutionProof22352 : IsMapEvaluation generatorImages reduction22352.relations [0,0,149,685] reduction22352.output := by lin_cert using reduction22352.terms
def map_58_259 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image22700 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22700 : InImage map_58_259 image22700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22700 : Bundle := named_bundle% "RealMapCertificates/relations/basis22700.json"
theorem reductionProof22700 : EqualModuloRelations reduction22700.relations reduction22700.input reduction22700.output := by lin_cert using reduction22700.terms
theorem substitutionProof22700 : IsMapEvaluation generatorImages reduction22700.relations [0,0,0,2579] reduction22700.output := by lin_cert using reduction22700.terms
def map_58_260 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image23023 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23023 : InImage map_58_260 image23023 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23023 : Bundle := named_bundle% "RealMapCertificates/relations/basis23023.json"
theorem reductionProof23023 : EqualModuloRelations reduction23023.relations reduction23023.input reduction23023.output := by lin_cert using reduction23023.terms
theorem substitutionProof23023 : IsMapEvaluation generatorImages reduction23023.relations [8,64,871] reduction23023.output := by lin_cert using reduction23023.terms
def image23024 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23024 : InImage map_58_260 image23024 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23024 : Bundle := named_bundle% "RealMapCertificates/relations/basis23024.json"
theorem reductionProof23024 : EqualModuloRelations reduction23024.relations reduction23024.input reduction23024.output := by lin_cert using reduction23024.terms
theorem substitutionProof23024 : IsMapEvaluation generatorImages reduction23024.relations [8,8,8,1301] reduction23024.output := by lin_cert using reduction23024.terms
def image23025 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23025 : InImage map_58_260 image23025 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23025 : Bundle := named_bundle% "RealMapCertificates/relations/basis23025.json"
theorem reductionProof23025 : EqualModuloRelations reduction23025.relations reduction23025.input reduction23025.output := by lin_cert using reduction23025.terms
theorem substitutionProof23025 : IsMapEvaluation generatorImages reduction23025.relations [8,8,8,8,8,49,245] reduction23025.output := by lin_cert using reduction23025.terms
def image23026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23026 : InImage map_58_260 image23026 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23026 : Bundle := named_bundle% "RealMapCertificates/relations/basis23026.json"
theorem reductionProof23026 : EqualModuloRelations reduction23026.relations reduction23026.input reduction23026.output := by lin_cert using reduction23026.terms
theorem substitutionProof23026 : IsMapEvaluation generatorImages reduction23026.relations [1,1,149,685] reduction23026.output := by lin_cert using reduction23026.terms
def image23027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23027 : InImage map_58_260 image23027 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23027 : Bundle := named_bundle% "RealMapCertificates/relations/basis23027.json"
theorem reductionProof23027 : EqualModuloRelations reduction23027.relations reduction23027.input reduction23027.output := by lin_cert using reduction23027.terms
theorem substitutionProof23027 : IsMapEvaluation generatorImages reduction23027.relations [0,0,0,0,0,0,64,1033] reduction23027.output := by lin_cert using reduction23027.terms
def map_58_261 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image23465 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23465 : InImage map_58_261 image23465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23465 : Bundle := named_bundle% "RealMapCertificates/relations/basis23465.json"
theorem reductionProof23465 : EqualModuloRelations reduction23465.relations reduction23465.input reduction23465.output := by lin_cert using reduction23465.terms
theorem substitutionProof23465 : IsMapEvaluation generatorImages reduction23465.relations [8,8,8,1314] reduction23465.output := by lin_cert using reduction23465.terms
def image23466 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23466 : InImage map_58_261 image23466 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23466 : Bundle := named_bundle% "RealMapCertificates/relations/basis23466.json"
theorem reductionProof23466 : EqualModuloRelations reduction23466.relations reduction23466.input reduction23466.output := by lin_cert using reduction23466.terms
theorem substitutionProof23466 : IsMapEvaluation generatorImages reduction23466.relations [8,8,8,8,8,8,8,8,16,137] reduction23466.output := by lin_cert using reduction23466.terms
def image23467 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23467 : InImage map_58_261 image23467 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23467 : Bundle := named_bundle% "RealMapCertificates/relations/basis23467.json"
theorem reductionProof23467 : EqualModuloRelations reduction23467.relations reduction23467.input reduction23467.output := by lin_cert using reduction23467.terms
theorem substitutionProof23467 : IsMapEvaluation generatorImages reduction23467.relations [8,8,8,8,8,8,8,8,8,8,8,17,20] reduction23467.output := by lin_cert using reduction23467.terms
def image23468 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23468 : InImage map_58_261 image23468 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23468 : Bundle := named_bundle% "RealMapCertificates/relations/basis23468.json"
theorem reductionProof23468 : EqualModuloRelations reduction23468.relations reduction23468.input reduction23468.output := by lin_cert using reduction23468.terms
theorem substitutionProof23468 : IsMapEvaluation generatorImages reduction23468.relations [0,0,0,0,0,64,1059] reduction23468.output := by lin_cert using reduction23468.terms
def image23469 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23469 : InImage map_58_261 image23469 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23469 : Bundle := named_bundle% "RealMapCertificates/relations/basis23469.json"
theorem reductionProof23469 : EqualModuloRelations reduction23469.relations reduction23469.input reduction23469.output := by lin_cert using reduction23469.terms
theorem substitutionProof23469 : IsMapEvaluation generatorImages reduction23469.relations [0,0,0,0,0,0,0,138,725] reduction23469.output := by lin_cert using reduction23469.terms
def map_59_59 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation340 : InImage map_59_59 image340 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction340 : Bundle := named_bundle% "RealMapCertificates/relations/basis340.json"
theorem reductionProof340 : EqualModuloRelations reduction340.relations reduction340.input reduction340.output := by lin_cert using reduction340.terms
theorem substitutionProof340 : IsMapEvaluation generatorImages reduction340.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction340.output := by lin_cert using reduction340.terms
def map_59_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6290 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6290 : InImage map_59_174 image6290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6290 : Bundle := named_bundle% "RealMapCertificates/relations/basis6290.json"
theorem reductionProof6290 : EqualModuloRelations reduction6290.relations reduction6290.input reduction6290.output := by lin_cert using reduction6290.terms
theorem substitutionProof6290 : IsMapEvaluation generatorImages reduction6290.relations [0,0,783] reduction6290.output := by lin_cert using reduction6290.terms
def map_59_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6783 : InImage map_59_178 image6783 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6783 : Bundle := named_bundle% "RealMapCertificates/relations/basis6783.json"
theorem reductionProof6783 : EqualModuloRelations reduction6783.relations reduction6783.input reduction6783.output := by lin_cert using reduction6783.terms
theorem substitutionProof6783 : IsMapEvaluation generatorImages reduction6783.relations [0,0,0,0,804] reduction6783.output := by lin_cert using reduction6783.terms
def map_59_179 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6890 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6890 : InImage map_59_179 image6890 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6890 : Bundle := named_bundle% "RealMapCertificates/relations/basis6890.json"
theorem reductionProof6890 : EqualModuloRelations reduction6890.relations reduction6890.input reduction6890.output := by lin_cert using reduction6890.terms
theorem substitutionProof6890 : IsMapEvaluation generatorImages reduction6890.relations [870] reduction6890.output := by lin_cert using reduction6890.terms
def map_59_180 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7005 : InImage map_59_180 image7005 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7005 : Bundle := named_bundle% "RealMapCertificates/relations/basis7005.json"
theorem reductionProof7005 : EqualModuloRelations reduction7005.relations reduction7005.input reduction7005.output := by lin_cert using reduction7005.terms
theorem substitutionProof7005 : IsMapEvaluation generatorImages reduction7005.relations [0,0,0,851] reduction7005.output := by lin_cert using reduction7005.terms
def map_59_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7608 : InImage map_59_185 image7608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7608 : Bundle := named_bundle% "RealMapCertificates/relations/basis7608.json"
theorem reductionProof7608 : EqualModuloRelations reduction7608.relations reduction7608.input reduction7608.output := by lin_cert using reduction7608.terms
theorem substitutionProof7608 : IsMapEvaluation generatorImages reduction7608.relations [0,0,0,0,0,17,554] reduction7608.output := by lin_cert using reduction7608.terms
def map_59_186 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7729 : InImage map_59_186 image7729 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7729 : Bundle := named_bundle% "RealMapCertificates/relations/basis7729.json"
theorem reductionProof7729 : EqualModuloRelations reduction7729.relations reduction7729.input reduction7729.output := by lin_cert using reduction7729.terms
theorem substitutionProof7729 : IsMapEvaluation generatorImages reduction7729.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7729.output := by lin_cert using reduction7729.terms
def map_59_189 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8079 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8079 : InImage map_59_189 image8079 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8079 : Bundle := named_bundle% "RealMapCertificates/relations/basis8079.json"
theorem reductionProof8079 : EqualModuloRelations reduction8079.relations reduction8079.input reduction8079.output := by lin_cert using reduction8079.terms
theorem substitutionProof8079 : IsMapEvaluation generatorImages reduction8079.relations [996] reduction8079.output := by lin_cert using reduction8079.terms
end RealMapCertificates
