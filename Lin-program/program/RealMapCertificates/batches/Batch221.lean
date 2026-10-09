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
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 138 => [[0,4,6,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 246 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
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
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1301 => []
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1471 => []
  | 1514 => []
  | 1566 => []
  | 1589 => []
  | 1680 => [[4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1734 => []
  | 1736 => []
  | 1737 => []
  | 1749 => [[0,0,4,4,4,4,4,4,4,4,8,12,12]]
  | 1965 => []
  | 2035 => []
  | 2057 => []
  | 2089 => [[0,0,4,4,4,4,4,4,4,4,4,8,12,12]]
  | 2193 => []
  | 2330 => []
  | 2627 => []
  | _ => []
def map_59_192 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8449 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8449 : InImage map_59_192 image8449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8449 : Bundle := named_bundle% "RealMapCertificates/relations/basis8449.json"
theorem reductionProof8449 : EqualModuloRelations reduction8449.relations reduction8449.input reduction8449.output := by lin_cert using reduction8449.terms
theorem substitutionProof8449 : IsMapEvaluation generatorImages reduction8449.relations [8,804] reduction8449.output := by lin_cert using reduction8449.terms
def map_59_195 : Matrix 6 1 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8850 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8850 : InImage map_59_195 image8850 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8850 : Bundle := named_bundle% "RealMapCertificates/relations/basis8850.json"
theorem reductionProof8850 : EqualModuloRelations reduction8850.relations reduction8850.input reduction8850.output := by lin_cert using reduction8850.terms
theorem substitutionProof8850 : IsMapEvaluation generatorImages reduction8850.relations [8,852] reduction8850.output := by lin_cert using reduction8850.terms
def map_59_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9009 : InImage map_59_196 image9009 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9009 : Bundle := named_bundle% "RealMapCertificates/relations/basis9009.json"
theorem reductionProof9009 : EqualModuloRelations reduction9009.relations reduction9009.input reduction9009.output := by lin_cert using reduction9009.terms
theorem substitutionProof9009 : IsMapEvaluation generatorImages reduction9009.relations [0,17,701] reduction9009.output := by lin_cert using reduction9009.terms
def map_59_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9286 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9286 : InImage map_59_198 image9286 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9286 : Bundle := named_bundle% "RealMapCertificates/relations/basis9286.json"
theorem reductionProof9286 : EqualModuloRelations reduction9286.relations reduction9286.input reduction9286.output := by lin_cert using reduction9286.terms
theorem substitutionProof9286 : IsMapEvaluation generatorImages reduction9286.relations [8,16,554] reduction9286.output := by lin_cert using reduction9286.terms
def map_59_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9776 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9776 : InImage map_59_201 image9776 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9776 : Bundle := named_bundle% "RealMapCertificates/relations/basis9776.json"
theorem reductionProof9776 : EqualModuloRelations reduction9776.relations reduction9776.input reduction9776.output := by lin_cert using reduction9776.terms
theorem substitutionProof9776 : IsMapEvaluation generatorImages reduction9776.relations [8,8,701] reduction9776.output := by lin_cert using reduction9776.terms
def map_59_204 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10266 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10266 : InImage map_59_204 image10266 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10266 : Bundle := named_bundle% "RealMapCertificates/relations/basis10266.json"
theorem reductionProof10266 : EqualModuloRelations reduction10266.relations reduction10266.input reduction10266.output := by lin_cert using reduction10266.terms
theorem substitutionProof10266 : IsMapEvaluation generatorImages reduction10266.relations [8,8,8,554] reduction10266.output := by lin_cert using reduction10266.terms
def map_59_207 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10816 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10816 : InImage map_59_207 image10816 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10816 : Bundle := named_bundle% "RealMapCertificates/relations/basis10816.json"
theorem reductionProof10816 : EqualModuloRelations reduction10816.relations reduction10816.input reduction10816.output := by lin_cert using reduction10816.terms
theorem substitutionProof10816 : IsMapEvaluation generatorImages reduction10816.relations [8,8,8,579] reduction10816.output := by lin_cert using reduction10816.terms
def map_59_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10992 : InImage map_59_208 image10992 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10992 : Bundle := named_bundle% "RealMapCertificates/relations/basis10992.json"
theorem reductionProof10992 : EqualModuloRelations reduction10992.relations reduction10992.input reduction10992.output := by lin_cert using reduction10992.terms
theorem substitutionProof10992 : IsMapEvaluation generatorImages reduction10992.relations [0,1312] reduction10992.output := by lin_cert using reduction10992.terms
def map_59_209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11142 : InImage map_59_209 image11142 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11142 : Bundle := named_bundle% "RealMapCertificates/relations/basis11142.json"
theorem reductionProof11142 : EqualModuloRelations reduction11142.relations reduction11142.input reduction11142.output := by lin_cert using reduction11142.terms
theorem substitutionProof11142 : IsMapEvaluation generatorImages reduction11142.relations [1,1312] reduction11142.output := by lin_cert using reduction11142.terms
def image11143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11143 : InImage map_59_209 image11143 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11143 : Bundle := named_bundle% "RealMapCertificates/relations/basis11143.json"
theorem reductionProof11143 : EqualModuloRelations reduction11143.relations reduction11143.input reduction11143.output := by lin_cert using reduction11143.terms
theorem substitutionProof11143 : IsMapEvaluation generatorImages reduction11143.relations [0,0,1313] reduction11143.output := by lin_cert using reduction11143.terms
def map_59_210 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11325 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11325 : InImage map_59_210 image11325 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11325 : Bundle := named_bundle% "RealMapCertificates/relations/basis11325.json"
theorem reductionProof11325 : EqualModuloRelations reduction11325.relations reduction11325.input reduction11325.output := by lin_cert using reduction11325.terms
theorem substitutionProof11325 : IsMapEvaluation generatorImages reduction11325.relations [8,8,8,16,296] reduction11325.output := by lin_cert using reduction11325.terms
def map_59_211 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11540 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11540 : InImage map_59_211 image11540 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11540 : Bundle := named_bundle% "RealMapCertificates/relations/basis11540.json"
theorem reductionProof11540 : EqualModuloRelations reduction11540.relations reduction11540.input reduction11540.output := by lin_cert using reduction11540.terms
theorem substitutionProof11540 : IsMapEvaluation generatorImages reduction11540.relations [0,1360] reduction11540.output := by lin_cert using reduction11540.terms
def map_59_212 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11673 : InImage map_59_212 image11673 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11673 : Bundle := named_bundle% "RealMapCertificates/relations/basis11673.json"
theorem reductionProof11673 : EqualModuloRelations reduction11673.relations reduction11673.input reduction11673.output := by lin_cert using reduction11673.terms
theorem substitutionProof11673 : IsMapEvaluation generatorImages reduction11673.relations [0,0,1361] reduction11673.output := by lin_cert using reduction11673.terms
def map_59_213 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11899 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11899 : InImage map_59_213 image11899 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11899 : Bundle := named_bundle% "RealMapCertificates/relations/basis11899.json"
theorem reductionProof11899 : EqualModuloRelations reduction11899.relations reduction11899.input reduction11899.output := by lin_cert using reduction11899.terms
theorem substitutionProof11899 : IsMapEvaluation generatorImages reduction11899.relations [8,8,8,8,470] reduction11899.output := by lin_cert using reduction11899.terms
def map_59_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12111 : InImage map_59_214 image12111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12111 : Bundle := named_bundle% "RealMapCertificates/relations/basis12111.json"
theorem reductionProof12111 : EqualModuloRelations reduction12111.relations reduction12111.input reduction12111.output := by lin_cert using reduction12111.terms
theorem substitutionProof12111 : IsMapEvaluation generatorImages reduction12111.relations [0,16,916] reduction12111.output := by lin_cert using reduction12111.terms
def map_59_215 : Matrix 5 2 := fun i j => ([false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12274 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12274 : InImage map_59_215 image12274 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12274 : Bundle := named_bundle% "RealMapCertificates/relations/basis12274.json"
theorem reductionProof12274 : EqualModuloRelations reduction12274.relations reduction12274.input reduction12274.output := by lin_cert using reduction12274.terms
theorem substitutionProof12274 : IsMapEvaluation generatorImages reduction12274.relations [0,0,16,917] reduction12274.output := by lin_cert using reduction12274.terms
def image12275 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12275 : InImage map_59_215 image12275 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12275 : Bundle := named_bundle% "RealMapCertificates/relations/basis12275.json"
theorem reductionProof12275 : EqualModuloRelations reduction12275.relations reduction12275.input reduction12275.output := by lin_cert using reduction12275.terms
theorem substitutionProof12275 : IsMapEvaluation generatorImages reduction12275.relations [0,0,0,1395] reduction12275.output := by lin_cert using reduction12275.terms
def map_59_216 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12462 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12462 : InImage map_59_216 image12462 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12462 : Bundle := named_bundle% "RealMapCertificates/relations/basis12462.json"
theorem reductionProof12462 : EqualModuloRelations reduction12462.relations reduction12462.input reduction12462.output := by lin_cert using reduction12462.terms
theorem substitutionProof12462 : IsMapEvaluation generatorImages reduction12462.relations [8,8,8,8,8,296] reduction12462.output := by lin_cert using reduction12462.terms
def image12463 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12463 : InImage map_59_216 image12463 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12463 : Bundle := named_bundle% "RealMapCertificates/relations/basis12463.json"
theorem reductionProof12463 : EqualModuloRelations reduction12463.relations reduction12463.input reduction12463.output := by lin_cert using reduction12463.terms
theorem substitutionProof12463 : IsMapEvaluation generatorImages reduction12463.relations [0,0,0,17,917] reduction12463.output := by lin_cert using reduction12463.terms
def map_59_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12684 : InImage map_59_217 image12684 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12684 : Bundle := named_bundle% "RealMapCertificates/relations/basis12684.json"
theorem reductionProof12684 : EqualModuloRelations reduction12684.relations reduction12684.input reduction12684.output := by lin_cert using reduction12684.terms
theorem substitutionProof12684 : IsMapEvaluation generatorImages reduction12684.relations [0,8,1141] reduction12684.output := by lin_cert using reduction12684.terms
def image12685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12685 : InImage map_59_217 image12685 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12685 : Bundle := named_bundle% "RealMapCertificates/relations/basis12685.json"
theorem reductionProof12685 : EqualModuloRelations reduction12685.relations reduction12685.input reduction12685.output := by lin_cert using reduction12685.terms
theorem substitutionProof12685 : IsMapEvaluation generatorImages reduction12685.relations [0,0,0,0,0,1396] reduction12685.output := by lin_cert using reduction12685.terms
def map_59_218 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image12823 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12823 : InImage map_59_218 image12823 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12823 : Bundle := named_bundle% "RealMapCertificates/relations/basis12823.json"
theorem reductionProof12823 : EqualModuloRelations reduction12823.relations reduction12823.input reduction12823.output := by lin_cert using reduction12823.terms
theorem substitutionProof12823 : IsMapEvaluation generatorImages reduction12823.relations [0,0,8,1142] reduction12823.output := by lin_cert using reduction12823.terms
def image12824 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12824 : InImage map_59_218 image12824 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12824 : Bundle := named_bundle% "RealMapCertificates/relations/basis12824.json"
theorem reductionProof12824 : EqualModuloRelations reduction12824.relations reduction12824.input reduction12824.output := by lin_cert using reduction12824.terms
theorem substitutionProof12824 : IsMapEvaluation generatorImages reduction12824.relations [0,0,0,1468] reduction12824.output := by lin_cert using reduction12824.terms
def image12825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12825 : InImage map_59_218 image12825 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12825 : Bundle := named_bundle% "RealMapCertificates/relations/basis12825.json"
theorem reductionProof12825 : EqualModuloRelations reduction12825.relations reduction12825.input reduction12825.output := by lin_cert using reduction12825.terms
theorem substitutionProof12825 : IsMapEvaluation generatorImages reduction12825.relations [0,0,0,0,0,0,1397] reduction12825.output := by lin_cert using reduction12825.terms
def map_59_219 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13046 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13046 : InImage map_59_219 image13046 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13046 : Bundle := named_bundle% "RealMapCertificates/relations/basis13046.json"
theorem reductionProof13046 : EqualModuloRelations reduction13046.relations reduction13046.input reduction13046.output := by lin_cert using reduction13046.terms
theorem substitutionProof13046 : IsMapEvaluation generatorImages reduction13046.relations [8,8,8,8,8,326] reduction13046.output := by lin_cert using reduction13046.terms
def map_59_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13240 : InImage map_59_220 image13240 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13240 : Bundle := named_bundle% "RealMapCertificates/relations/basis13240.json"
theorem reductionProof13240 : EqualModuloRelations reduction13240.relations reduction13240.input reduction13240.output := by lin_cert using reduction13240.terms
theorem substitutionProof13240 : IsMapEvaluation generatorImages reduction13240.relations [0,8,8,916] reduction13240.output := by lin_cert using reduction13240.terms
def map_59_221 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13392 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13392 : InImage map_59_221 image13392 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13392 : Bundle := named_bundle% "RealMapCertificates/relations/basis13392.json"
theorem reductionProof13392 : EqualModuloRelations reduction13392.relations reduction13392.input reduction13392.output := by lin_cert using reduction13392.terms
theorem substitutionProof13392 : IsMapEvaluation generatorImages reduction13392.relations [0,0,8,8,917] reduction13392.output := by lin_cert using reduction13392.terms
def map_59_222 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13594 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13594 : InImage map_59_222 image13594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13594 : Bundle := named_bundle% "RealMapCertificates/relations/basis13594.json"
theorem reductionProof13594 : EqualModuloRelations reduction13594.relations reduction13594.input reduction13594.output := by lin_cert using reduction13594.terms
theorem substitutionProof13594 : IsMapEvaluation generatorImages reduction13594.relations [8,8,8,8,8,16,183] reduction13594.output := by lin_cert using reduction13594.terms
def image13595 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13595 : InImage map_59_222 image13595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13595 : Bundle := named_bundle% "RealMapCertificates/relations/basis13595.json"
theorem reductionProof13595 : EqualModuloRelations reduction13595.relations reduction13595.input reduction13595.output := by lin_cert using reduction13595.terms
theorem substitutionProof13595 : IsMapEvaluation generatorImages reduction13595.relations [0,0,0,0,17,969] reduction13595.output := by lin_cert using reduction13595.terms
def map_59_223 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13807 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13807 : InImage map_59_223 image13807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13807 : Bundle := named_bundle% "RealMapCertificates/relations/basis13807.json"
theorem reductionProof13807 : EqualModuloRelations reduction13807.relations reduction13807.input reduction13807.output := by lin_cert using reduction13807.terms
theorem substitutionProof13807 : IsMapEvaluation generatorImages reduction13807.relations [0,8,8,952] reduction13807.output := by lin_cert using reduction13807.terms
def image13808 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13808 : InImage map_59_223 image13808 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13808 : Bundle := named_bundle% "RealMapCertificates/relations/basis13808.json"
theorem reductionProof13808 : EqualModuloRelations reduction13808.relations reduction13808.input reduction13808.output := by lin_cert using reduction13808.terms
theorem substitutionProof13808 : IsMapEvaluation generatorImages reduction13808.relations [0,0,0,0,17,17,636] reduction13808.output := by lin_cert using reduction13808.terms
def map_59_224 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13941 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13941 : InImage map_59_224 image13941 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13941 : Bundle := named_bundle% "RealMapCertificates/relations/basis13941.json"
theorem reductionProof13941 : EqualModuloRelations reduction13941.relations reduction13941.input reduction13941.output := by lin_cert using reduction13941.terms
theorem substitutionProof13941 : IsMapEvaluation generatorImages reduction13941.relations [0,0,8,8,953] reduction13941.output := by lin_cert using reduction13941.terms
def map_59_225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14167 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14167 : InImage map_59_225 image14167 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14167 : Bundle := named_bundle% "RealMapCertificates/relations/basis14167.json"
theorem reductionProof14167 : EqualModuloRelations reduction14167.relations reduction14167.input reduction14167.output := by lin_cert using reduction14167.terms
theorem substitutionProof14167 : IsMapEvaluation generatorImages reduction14167.relations [8,8,8,8,8,8,253] reduction14167.output := by lin_cert using reduction14167.terms
def map_59_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14360 : InImage map_59_226 image14360 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14360 : Bundle := named_bundle% "RealMapCertificates/relations/basis14360.json"
theorem reductionProof14360 : EqualModuloRelations reduction14360.relations reduction14360.input reduction14360.output := by lin_cert using reduction14360.terms
theorem substitutionProof14360 : IsMapEvaluation generatorImages reduction14360.relations [0,8,8,16,635] reduction14360.output := by lin_cert using reduction14360.terms
def map_59_227 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14512 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14512 : InImage map_59_227 image14512 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14512 : Bundle := named_bundle% "RealMapCertificates/relations/basis14512.json"
theorem reductionProof14512 : EqualModuloRelations reduction14512.relations reduction14512.input reduction14512.output := by lin_cert using reduction14512.terms
theorem substitutionProof14512 : IsMapEvaluation generatorImages reduction14512.relations [0,0,8,8,16,636] reduction14512.output := by lin_cert using reduction14512.terms
def map_59_228 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14729 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14729 : InImage map_59_228 image14729 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14729 : Bundle := named_bundle% "RealMapCertificates/relations/basis14729.json"
theorem reductionProof14729 : EqualModuloRelations reduction14729.relations reduction14729.input reduction14729.output := by lin_cert using reduction14729.terms
theorem substitutionProof14729 : IsMapEvaluation generatorImages reduction14729.relations [8,8,8,8,8,8,8,183] reduction14729.output := by lin_cert using reduction14729.terms
def image14730 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14730 : InImage map_59_228 image14730 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14730 : Bundle := named_bundle% "RealMapCertificates/relations/basis14730.json"
theorem reductionProof14730 : EqualModuloRelations reduction14730.relations reduction14730.input reduction14730.output := by lin_cert using reduction14730.terms
theorem substitutionProof14730 : IsMapEvaluation generatorImages reduction14730.relations [0,1680] reduction14730.output := by lin_cert using reduction14730.terms
def map_59_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14959 : InImage map_59_229 image14959 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14959 : Bundle := named_bundle% "RealMapCertificates/relations/basis14959.json"
theorem reductionProof14959 : EqualModuloRelations reduction14959.relations reduction14959.input reduction14959.output := by lin_cert using reduction14959.terms
theorem substitutionProof14959 : IsMapEvaluation generatorImages reduction14959.relations [0,0,0,0,0,0,0,64,635] reduction14959.output := by lin_cert using reduction14959.terms
def map_59_230 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image15103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15103 : InImage map_59_230 image15103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15103 : Bundle := named_bundle% "RealMapCertificates/relations/basis15103.json"
theorem reductionProof15103 : EqualModuloRelations reduction15103.relations reduction15103.input reduction15103.output := by lin_cert using reduction15103.terms
theorem substitutionProof15103 : IsMapEvaluation generatorImages reduction15103.relations [0,0,0,0,0,0,0,0,64,636] reduction15103.output := by lin_cert using reduction15103.terms
def map_59_231 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15348 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15348 : InImage map_59_231 image15348 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15348 : Bundle := named_bundle% "RealMapCertificates/relations/basis15348.json"
theorem reductionProof15348 : EqualModuloRelations reduction15348.relations reduction15348.input reduction15348.output := by lin_cert using reduction15348.terms
theorem substitutionProof15348 : IsMapEvaluation generatorImages reduction15348.relations [42,916] reduction15348.output := by lin_cert using reduction15348.terms
def image15349 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15349 : InImage map_59_231 image15349 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15349 : Bundle := named_bundle% "RealMapCertificates/relations/basis15349.json"
theorem reductionProof15349 : EqualModuloRelations reduction15349.relations reduction15349.input reduction15349.output := by lin_cert using reduction15349.terms
theorem substitutionProof15349 : IsMapEvaluation generatorImages reduction15349.relations [8,8,8,8,8,8,8,200] reduction15349.output := by lin_cert using reduction15349.terms
def map_59_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15577 : InImage map_59_232 image15577 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15577 : Bundle := named_bundle% "RealMapCertificates/relations/basis15577.json"
theorem reductionProof15577 : EqualModuloRelations reduction15577.relations reduction15577.input reduction15577.output := by lin_cert using reduction15577.terms
theorem substitutionProof15577 : IsMapEvaluation generatorImages reduction15577.relations [0,0,0,0,0,0,0,0,0,0,1589] reduction15577.output := by lin_cert using reduction15577.terms
def map_59_233 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15756 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15756 : InImage map_59_233 image15756 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15756 : Bundle := named_bundle% "RealMapCertificates/relations/basis15756.json"
theorem reductionProof15756 : EqualModuloRelations reduction15756.relations reduction15756.input reduction15756.output := by lin_cert using reduction15756.terms
theorem substitutionProof15756 : IsMapEvaluation generatorImages reduction15756.relations [17,1239] reduction15756.output := by lin_cert using reduction15756.terms
def image15757 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15757 : InImage map_59_233 image15757 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15757 : Bundle := named_bundle% "RealMapCertificates/relations/basis15757.json"
theorem reductionProof15757 : EqualModuloRelations reduction15757.relations reduction15757.input reduction15757.output := by lin_cert using reduction15757.terms
theorem substitutionProof15757 : IsMapEvaluation generatorImages reduction15757.relations [0,0,0,0,0,0,0,0,0,0,0,0,1566] reduction15757.output := by lin_cert using reduction15757.terms
def map_59_234 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15996 : InImage map_59_234 image15996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15996 : Bundle := named_bundle% "RealMapCertificates/relations/basis15996.json"
theorem reductionProof15996 : EqualModuloRelations reduction15996.relations reduction15996.input reduction15996.output := by lin_cert using reduction15996.terms
theorem substitutionProof15996 : IsMapEvaluation generatorImages reduction15996.relations [17,17,806] reduction15996.output := by lin_cert using reduction15996.terms
def image15997 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15997 : InImage map_59_234 image15997 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15997 : Bundle := named_bundle% "RealMapCertificates/relations/basis15997.json"
theorem reductionProof15997 : EqualModuloRelations reduction15997.relations reduction15997.input reduction15997.output := by lin_cert using reduction15997.terms
theorem substitutionProof15997 : IsMapEvaluation generatorImages reduction15997.relations [8,8,8,8,8,8,8,16,111] reduction15997.output := by lin_cert using reduction15997.terms
def map_59_236 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16420 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16420 : InImage map_59_236 image16420 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16420 : Bundle := named_bundle% "RealMapCertificates/relations/basis16420.json"
theorem reductionProof16420 : EqualModuloRelations reduction16420.relations reduction16420.input reduction16420.output := by lin_cert using reduction16420.terms
theorem substitutionProof16420 : IsMapEvaluation generatorImages reduction16420.relations [8,17,969] reduction16420.output := by lin_cert using reduction16420.terms
def map_59_237 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16666 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16666 : InImage map_59_237 image16666 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16666 : Bundle := named_bundle% "RealMapCertificates/relations/basis16666.json"
theorem reductionProof16666 : EqualModuloRelations reduction16666.relations reduction16666.input reduction16666.output := by lin_cert using reduction16666.terms
theorem substitutionProof16666 : IsMapEvaluation generatorImages reduction16666.relations [8,17,17,636] reduction16666.output := by lin_cert using reduction16666.terms
def image16667 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16667 : InImage map_59_237 image16667 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16667 : Bundle := named_bundle% "RealMapCertificates/relations/basis16667.json"
theorem reductionProof16667 : EqualModuloRelations reduction16667.relations reduction16667.input reduction16667.output := by lin_cert using reduction16667.terms
theorem substitutionProof16667 : IsMapEvaluation generatorImages reduction16667.relations [8,8,8,8,8,8,8,8,153] reduction16667.output := by lin_cert using reduction16667.terms
def map_59_239 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17110 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17110 : InImage map_59_239 image17110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17110 : Bundle := named_bundle% "RealMapCertificates/relations/basis17110.json"
theorem reductionProof17110 : EqualModuloRelations reduction17110.relations reduction17110.input reduction17110.output := by lin_cert using reduction17110.terms
theorem substitutionProof17110 : IsMapEvaluation generatorImages reduction17110.relations [8,17,1030] reduction17110.output := by lin_cert using reduction17110.terms
def map_59_240 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image17366 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17366 : InImage map_59_240 image17366 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17366 : Bundle := named_bundle% "RealMapCertificates/relations/basis17366.json"
theorem reductionProof17366 : EqualModuloRelations reduction17366.relations reduction17366.input reduction17366.output := by lin_cert using reduction17366.terms
theorem substitutionProof17366 : IsMapEvaluation generatorImages reduction17366.relations [8,17,17,663] reduction17366.output := by lin_cert using reduction17366.terms
def image17367 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17367 : InImage map_59_240 image17367 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17367 : Bundle := named_bundle% "RealMapCertificates/relations/basis17367.json"
theorem reductionProof17367 : EqualModuloRelations reduction17367.relations reduction17367.input reduction17367.output := by lin_cert using reduction17367.terms
theorem substitutionProof17367 : IsMapEvaluation generatorImages reduction17367.relations [8,8,8,8,8,8,8,8,8,111] reduction17367.output := by lin_cert using reduction17367.terms
def image17368 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17368 : InImage map_59_240 image17368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17368 : Bundle := named_bundle% "RealMapCertificates/relations/basis17368.json"
theorem reductionProof17368 : EqualModuloRelations reduction17368.relations reduction17368.input reduction17368.output := by lin_cert using reduction17368.terms
theorem substitutionProof17368 : IsMapEvaluation generatorImages reduction17368.relations [0,1965] reduction17368.output := by lin_cert using reduction17368.terms
def map_59_241 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17665 : InImage map_59_241 image17665 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17665 : Bundle := named_bundle% "RealMapCertificates/relations/basis17665.json"
theorem reductionProof17665 : EqualModuloRelations reduction17665.relations reduction17665.input reduction17665.output := by lin_cert using reduction17665.terms
theorem substitutionProof17665 : IsMapEvaluation generatorImages reduction17665.relations [2035] reduction17665.output := by lin_cert using reduction17665.terms
def image17666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17666 : InImage map_59_241 image17666 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17666 : Bundle := named_bundle% "RealMapCertificates/relations/basis17666.json"
theorem reductionProof17666 : EqualModuloRelations reduction17666.relations reduction17666.input reduction17666.output := by lin_cert using reduction17666.terms
theorem substitutionProof17666 : IsMapEvaluation generatorImages reduction17666.relations [1,1965] reduction17666.output := by lin_cert using reduction17666.terms
def map_59_242 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17871 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17871 : InImage map_59_242 image17871 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17871 : Bundle := named_bundle% "RealMapCertificates/relations/basis17871.json"
theorem reductionProof17871 : EqualModuloRelations reduction17871.relations reduction17871.input reduction17871.output := by lin_cert using reduction17871.terms
theorem substitutionProof17871 : IsMapEvaluation generatorImages reduction17871.relations [8,16,17,685] reduction17871.output := by lin_cert using reduction17871.terms
def map_59_243 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18147 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18147 : InImage map_59_243 image18147 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18147 : Bundle := named_bundle% "RealMapCertificates/relations/basis18147.json"
theorem reductionProof18147 : EqualModuloRelations reduction18147.relations reduction18147.input reduction18147.output := by lin_cert using reduction18147.terms
theorem substitutionProof18147 : IsMapEvaluation generatorImages reduction18147.relations [8,8,42,635] reduction18147.output := by lin_cert using reduction18147.terms
def image18148 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18148 : InImage map_59_243 image18148 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18148 : Bundle := named_bundle% "RealMapCertificates/relations/basis18148.json"
theorem reductionProof18148 : EqualModuloRelations reduction18148.relations reduction18148.input reduction18148.output := by lin_cert using reduction18148.terms
theorem substitutionProof18148 : IsMapEvaluation generatorImages reduction18148.relations [8,8,8,8,8,8,8,8,8,117] reduction18148.output := by lin_cert using reduction18148.terms
def image18149 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18149 : InImage map_59_243 image18149 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18149 : Bundle := named_bundle% "RealMapCertificates/relations/basis18149.json"
theorem reductionProof18149 : EqualModuloRelations reduction18149.relations reduction18149.input reduction18149.output := by lin_cert using reduction18149.terms
theorem substitutionProof18149 : IsMapEvaluation generatorImages reduction18149.relations [0,2057] reduction18149.output := by lin_cert using reduction18149.terms
def map_59_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18402 : InImage map_59_244 image18402 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18402 : Bundle := named_bundle% "RealMapCertificates/relations/basis18402.json"
theorem reductionProof18402 : EqualModuloRelations reduction18402.relations reduction18402.input reduction18402.output := by lin_cert using reduction18402.terms
theorem substitutionProof18402 : IsMapEvaluation generatorImages reduction18402.relations [0,2089] reduction18402.output := by lin_cert using reduction18402.terms
def map_59_245 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18616 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18616 : InImage map_59_245 image18616 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18616 : Bundle := named_bundle% "RealMapCertificates/relations/basis18616.json"
theorem reductionProof18616 : EqualModuloRelations reduction18616.relations reduction18616.input reduction18616.output := by lin_cert using reduction18616.terms
theorem substitutionProof18616 : IsMapEvaluation generatorImages reduction18616.relations [8,8,17,871] reduction18616.output := by lin_cert using reduction18616.terms
def map_59_246 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image18893 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18893 : InImage map_59_246 image18893 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18893 : Bundle := named_bundle% "RealMapCertificates/relations/basis18893.json"
theorem reductionProof18893 : EqualModuloRelations reduction18893.relations reduction18893.input reduction18893.output := by lin_cert using reduction18893.terms
theorem substitutionProof18893 : IsMapEvaluation generatorImages reduction18893.relations [64,917] reduction18893.output := by lin_cert using reduction18893.terms
def image18894 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18894 : InImage map_59_246 image18894 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18894 : Bundle := named_bundle% "RealMapCertificates/relations/basis18894.json"
theorem reductionProof18894 : EqualModuloRelations reduction18894.relations reduction18894.input reduction18894.output := by lin_cert using reduction18894.terms
theorem substitutionProof18894 : IsMapEvaluation generatorImages reduction18894.relations [8,8,17,17,556] reduction18894.output := by lin_cert using reduction18894.terms
def image18895 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18895 : InImage map_59_246 image18895 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18895 : Bundle := named_bundle% "RealMapCertificates/relations/basis18895.json"
theorem reductionProof18895 : EqualModuloRelations reduction18895.relations reduction18895.input reduction18895.output := by lin_cert using reduction18895.terms
theorem substitutionProof18895 : IsMapEvaluation generatorImages reduction18895.relations [8,8,8,8,8,8,8,8,8,16,50] reduction18895.output := by lin_cert using reduction18895.terms
def image18896 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18896 : InImage map_59_246 image18896 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18896 : Bundle := named_bundle% "RealMapCertificates/relations/basis18896.json"
theorem reductionProof18896 : EqualModuloRelations reduction18896.relations reduction18896.input reduction18896.output := by lin_cert using reduction18896.terms
theorem substitutionProof18896 : IsMapEvaluation generatorImages reduction18896.relations [0,16,1471] reduction18896.output := by lin_cert using reduction18896.terms
def map_59_247 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19197 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19197 : InImage map_59_247 image19197 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19197 : Bundle := named_bundle% "RealMapCertificates/relations/basis19197.json"
theorem reductionProof19197 : EqualModuloRelations reduction19197.relations reduction19197.input reduction19197.output := by lin_cert using reduction19197.terms
theorem substitutionProof19197 : IsMapEvaluation generatorImages reduction19197.relations [0,138,636] reduction19197.output := by lin_cert using reduction19197.terms
def image19198 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19198 : InImage map_59_247 image19198 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19198 : Bundle := named_bundle% "RealMapCertificates/relations/basis19198.json"
theorem reductionProof19198 : EqualModuloRelations reduction19198.relations reduction19198.input reduction19198.output := by lin_cert using reduction19198.terms
theorem substitutionProof19198 : IsMapEvaluation generatorImages reduction19198.relations [0,0,17,1471] reduction19198.output := by lin_cert using reduction19198.terms
def map_59_248 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image19412 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19412 : InImage map_59_248 image19412 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19412 : Bundle := named_bundle% "RealMapCertificates/relations/basis19412.json"
theorem reductionProof19412 : EqualModuloRelations reduction19412.relations reduction19412.input reduction19412.output := by lin_cert using reduction19412.terms
theorem substitutionProof19412 : IsMapEvaluation generatorImages reduction19412.relations [8,8,8,17,685] reduction19412.output := by lin_cert using reduction19412.terms
def image19413 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19413 : InImage map_59_248 image19413 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19413 : Bundle := named_bundle% "RealMapCertificates/relations/basis19413.json"
theorem reductionProof19413 : EqualModuloRelations reduction19413.relations reduction19413.input reduction19413.output := by lin_cert using reduction19413.terms
theorem substitutionProof19413 : IsMapEvaluation generatorImages reduction19413.relations [0,0,2193] reduction19413.output := by lin_cert using reduction19413.terms
def map_59_249 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image19712 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19712 : InImage map_59_249 image19712 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19712 : Bundle := named_bundle% "RealMapCertificates/relations/basis19712.json"
theorem reductionProof19712 : EqualModuloRelations reduction19712.relations reduction19712.input reduction19712.output := by lin_cert using reduction19712.terms
theorem substitutionProof19712 : IsMapEvaluation generatorImages reduction19712.relations [64,953] reduction19712.output := by lin_cert using reduction19712.terms
def image19713 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19713 : InImage map_59_249 image19713 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19713 : Bundle := named_bundle% "RealMapCertificates/relations/basis19713.json"
theorem reductionProof19713 : EqualModuloRelations reduction19713.relations reduction19713.input reduction19713.output := by lin_cert using reduction19713.terms
theorem substitutionProof19713 : IsMapEvaluation generatorImages reduction19713.relations [8,8,8,17,17,403] reduction19713.output := by lin_cert using reduction19713.terms
def image19714 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19714 : InImage map_59_249 image19714 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19714 : Bundle := named_bundle% "RealMapCertificates/relations/basis19714.json"
theorem reductionProof19714 : EqualModuloRelations reduction19714.relations reduction19714.input reduction19714.output := by lin_cert using reduction19714.terms
theorem substitutionProof19714 : IsMapEvaluation generatorImages reduction19714.relations [8,8,8,8,8,8,8,8,8,8,78] reduction19714.output := by lin_cert using reduction19714.terms
def image19715 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19715 : InImage map_59_249 image19715 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19715 : Bundle := named_bundle% "RealMapCertificates/relations/basis19715.json"
theorem reductionProof19715 : EqualModuloRelations reduction19715.relations reduction19715.input reduction19715.output := by lin_cert using reduction19715.terms
theorem substitutionProof19715 : IsMapEvaluation generatorImages reduction19715.relations [0,8,1734] reduction19715.output := by lin_cert using reduction19715.terms
def image19716 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19716 : InImage map_59_249 image19716 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19716 : Bundle := named_bundle% "RealMapCertificates/relations/basis19716.json"
theorem reductionProof19716 : EqualModuloRelations reduction19716.relations reduction19716.input reduction19716.output := by lin_cert using reduction19716.terms
theorem substitutionProof19716 : IsMapEvaluation generatorImages reduction19716.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction19716.output := by lin_cert using reduction19716.terms
def map_59_250 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image19984 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19984 : InImage map_59_250 image19984 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19984 : Bundle := named_bundle% "RealMapCertificates/relations/basis19984.json"
theorem reductionProof19984 : EqualModuloRelations reduction19984.relations reduction19984.input reduction19984.output := by lin_cert using reduction19984.terms
theorem substitutionProof19984 : IsMapEvaluation generatorImages reduction19984.relations [0,8,1749] reduction19984.output := by lin_cert using reduction19984.terms
def image19985 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19985 : InImage map_59_250 image19985 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19985 : Bundle := named_bundle% "RealMapCertificates/relations/basis19985.json"
theorem reductionProof19985 : EqualModuloRelations reduction19985.relations reduction19985.input reduction19985.output := by lin_cert using reduction19985.terms
theorem substitutionProof19985 : IsMapEvaluation generatorImages reduction19985.relations [0,0,17,1514] reduction19985.output := by lin_cert using reduction19985.terms
def image19986 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19986 : InImage map_59_250 image19986 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19986 : Bundle := named_bundle% "RealMapCertificates/relations/basis19986.json"
theorem reductionProof19986 : EqualModuloRelations reduction19986.relations reduction19986.input reduction19986.output := by lin_cert using reduction19986.terms
theorem substitutionProof19986 : IsMapEvaluation generatorImages reduction19986.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction19986.output := by lin_cert using reduction19986.terms
def map_59_251 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20220 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20220 : InImage map_59_251 image20220 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20220 : Bundle := named_bundle% "RealMapCertificates/relations/basis20220.json"
theorem reductionProof20220 : EqualModuloRelations reduction20220.relations reduction20220.input reduction20220.output := by lin_cert using reduction20220.terms
theorem substitutionProof20220 : IsMapEvaluation generatorImages reduction20220.relations [8,8,8,17,722] reduction20220.output := by lin_cert using reduction20220.terms
def map_59_252 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image20513 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20513 : InImage map_59_252 image20513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20513 : Bundle := named_bundle% "RealMapCertificates/relations/basis20513.json"
theorem reductionProof20513 : EqualModuloRelations reduction20513.relations reduction20513.input reduction20513.output := by lin_cert using reduction20513.terms
theorem substitutionProof20513 : IsMapEvaluation generatorImages reduction20513.relations [16,64,636] reduction20513.output := by lin_cert using reduction20513.terms
def image20514 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20514 : InImage map_59_252 image20514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20514 : Bundle := named_bundle% "RealMapCertificates/relations/basis20514.json"
theorem reductionProof20514 : EqualModuloRelations reduction20514.relations reduction20514.input reduction20514.output := by lin_cert using reduction20514.terms
theorem substitutionProof20514 : IsMapEvaluation generatorImages reduction20514.relations [8,8,8,17,17,433] reduction20514.output := by lin_cert using reduction20514.terms
def image20515 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20515 : InImage map_59_252 image20515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20515 : Bundle := named_bundle% "RealMapCertificates/relations/basis20515.json"
theorem reductionProof20515 : EqualModuloRelations reduction20515.relations reduction20515.input reduction20515.output := by lin_cert using reduction20515.terms
theorem substitutionProof20515 : IsMapEvaluation generatorImages reduction20515.relations [8,8,8,8,8,8,8,8,8,8,8,50] reduction20515.output := by lin_cert using reduction20515.terms
def image20516 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20516 : InImage map_59_252 image20516 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20516 : Bundle := named_bundle% "RealMapCertificates/relations/basis20516.json"
theorem reductionProof20516 : EqualModuloRelations reduction20516.relations reduction20516.input reduction20516.output := by lin_cert using reduction20516.terms
theorem substitutionProof20516 : IsMapEvaluation generatorImages reduction20516.relations [0,64,969] reduction20516.output := by lin_cert using reduction20516.terms
def image20517 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20517 : InImage map_59_252 image20517 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20517 : Bundle := named_bundle% "RealMapCertificates/relations/basis20517.json"
theorem reductionProof20517 : EqualModuloRelations reduction20517.relations reduction20517.input reduction20517.output := by lin_cert using reduction20517.terms
theorem substitutionProof20517 : IsMapEvaluation generatorImages reduction20517.relations [0,8,8,1471] reduction20517.output := by lin_cert using reduction20517.terms
def map_59_253 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image20807 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20807 : InImage map_59_253 image20807 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20807 : Bundle := named_bundle% "RealMapCertificates/relations/basis20807.json"
theorem reductionProof20807 : EqualModuloRelations reduction20807.relations reduction20807.input reduction20807.output := by lin_cert using reduction20807.terms
theorem substitutionProof20807 : IsMapEvaluation generatorImages reduction20807.relations [1,64,969] reduction20807.output := by lin_cert using reduction20807.terms
def image20808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20808 : InImage map_59_253 image20808 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20808 : Bundle := named_bundle% "RealMapCertificates/relations/basis20808.json"
theorem reductionProof20808 : EqualModuloRelations reduction20808.relations reduction20808.input reduction20808.output := by lin_cert using reduction20808.terms
theorem substitutionProof20808 : IsMapEvaluation generatorImages reduction20808.relations [0,0,138,685] reduction20808.output := by lin_cert using reduction20808.terms
def image20809 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20809 : InImage map_59_253 image20809 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20809 : Bundle := named_bundle% "RealMapCertificates/relations/basis20809.json"
theorem reductionProof20809 : EqualModuloRelations reduction20809.relations reduction20809.input reduction20809.output := by lin_cert using reduction20809.terms
theorem substitutionProof20809 : IsMapEvaluation generatorImages reduction20809.relations [0,0,16,17,1033] reduction20809.output := by lin_cert using reduction20809.terms
def map_59_254 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image21045 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21045 : InImage map_59_254 image21045 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21045 : Bundle := named_bundle% "RealMapCertificates/relations/basis21045.json"
theorem reductionProof21045 : EqualModuloRelations reduction21045.relations reduction21045.input reduction21045.output := by lin_cert using reduction21045.terms
theorem substitutionProof21045 : IsMapEvaluation generatorImages reduction21045.relations [8,8,8,16,17,452] reduction21045.output := by lin_cert using reduction21045.terms
def image21046 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21046 : InImage map_59_254 image21046 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21046 : Bundle := named_bundle% "RealMapCertificates/relations/basis21046.json"
theorem reductionProof21046 : EqualModuloRelations reduction21046.relations reduction21046.input reduction21046.output := by lin_cert using reduction21046.terms
theorem substitutionProof21046 : IsMapEvaluation generatorImages reduction21046.relations [0,0,0,17,17,1033] reduction21046.output := by lin_cert using reduction21046.terms
def map_59_255 : Matrix 4 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image21390 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21390 : InImage map_59_255 image21390 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21390 : Bundle := named_bundle% "RealMapCertificates/relations/basis21390.json"
theorem reductionProof21390 : EqualModuloRelations reduction21390.relations reduction21390.input reduction21390.output := by lin_cert using reduction21390.terms
theorem substitutionProof21390 : IsMapEvaluation generatorImages reduction21390.relations [8,64,806] reduction21390.output := by lin_cert using reduction21390.terms
def image21391 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21391 : InImage map_59_255 image21391 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21391 : Bundle := named_bundle% "RealMapCertificates/relations/basis21391.json"
theorem reductionProof21391 : EqualModuloRelations reduction21391.relations reduction21391.input reduction21391.output := by lin_cert using reduction21391.terms
theorem substitutionProof21391 : IsMapEvaluation generatorImages reduction21391.relations [8,8,8,8,42,402] reduction21391.output := by lin_cert using reduction21391.terms
def image21392 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21392 : InImage map_59_255 image21392 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21392 : Bundle := named_bundle% "RealMapCertificates/relations/basis21392.json"
theorem reductionProof21392 : EqualModuloRelations reduction21392.relations reduction21392.input reduction21392.output := by lin_cert using reduction21392.terms
theorem substitutionProof21392 : IsMapEvaluation generatorImages reduction21392.relations [8,8,8,8,8,8,8,8,8,8,8,56] reduction21392.output := by lin_cert using reduction21392.terms
def image21393 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21393 : InImage map_59_255 image21393 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21393 : Bundle := named_bundle% "RealMapCertificates/relations/basis21393.json"
theorem reductionProof21393 : EqualModuloRelations reduction21393.relations reduction21393.input reduction21393.output := by lin_cert using reduction21393.terms
theorem substitutionProof21393 : IsMapEvaluation generatorImages reduction21393.relations [0,8,8,1514] reduction21393.output := by lin_cert using reduction21393.terms
def image21394 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21394 : InImage map_59_255 image21394 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21394 : Bundle := named_bundle% "RealMapCertificates/relations/basis21394.json"
theorem reductionProof21394 : EqualModuloRelations reduction21394.relations reduction21394.input reduction21394.output := by lin_cert using reduction21394.terms
theorem substitutionProof21394 : IsMapEvaluation generatorImages reduction21394.relations [0,0,0,0,246,402] reduction21394.output := by lin_cert using reduction21394.terms
def image21395 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21395 : InImage map_59_255 image21395 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21395 : Bundle := named_bundle% "RealMapCertificates/relations/basis21395.json"
theorem reductionProof21395 : EqualModuloRelations reduction21395.relations reduction21395.input reduction21395.output := by lin_cert using reduction21395.terms
theorem substitutionProof21395 : IsMapEvaluation generatorImages reduction21395.relations [0,0,0,0,59,1033] reduction21395.output := by lin_cert using reduction21395.terms
def map_59_256 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image21697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21697 : InImage map_59_256 image21697 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21697 : Bundle := named_bundle% "RealMapCertificates/relations/basis21697.json"
theorem reductionProof21697 : EqualModuloRelations reduction21697.relations reduction21697.input reduction21697.output := by lin_cert using reduction21697.terms
theorem substitutionProof21697 : IsMapEvaluation generatorImages reduction21697.relations [0,0,8,17,1301] reduction21697.output := by lin_cert using reduction21697.terms
def image21698 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21698 : InImage map_59_256 image21698 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21698 : Bundle := named_bundle% "RealMapCertificates/relations/basis21698.json"
theorem reductionProof21698 : EqualModuloRelations reduction21698.relations reduction21698.input reduction21698.output := by lin_cert using reduction21698.terms
theorem substitutionProof21698 : IsMapEvaluation generatorImages reduction21698.relations [0,0,0,0,0,0,2330] reduction21698.output := by lin_cert using reduction21698.terms
def map_59_257 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21993 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21993 : InImage map_59_257 image21993 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21993 : Bundle := named_bundle% "RealMapCertificates/relations/basis21993.json"
theorem reductionProof21993 : EqualModuloRelations reduction21993.relations reduction21993.input reduction21993.output := by lin_cert using reduction21993.terms
theorem substitutionProof21993 : IsMapEvaluation generatorImages reduction21993.relations [2627] reduction21993.output := by lin_cert using reduction21993.terms
def image21994 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21994 : InImage map_59_257 image21994 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21994 : Bundle := named_bundle% "RealMapCertificates/relations/basis21994.json"
theorem reductionProof21994 : EqualModuloRelations reduction21994.relations reduction21994.input reduction21994.output := by lin_cert using reduction21994.terms
theorem substitutionProof21994 : IsMapEvaluation generatorImages reduction21994.relations [8,8,8,8,17,595] reduction21994.output := by lin_cert using reduction21994.terms
def map_59_258 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22344 : InImage map_59_258 image22344 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22344 : Bundle := named_bundle% "RealMapCertificates/relations/basis22344.json"
theorem reductionProof22344 : EqualModuloRelations reduction22344.relations reduction22344.input reduction22344.output := by lin_cert using reduction22344.terms
theorem substitutionProof22344 : IsMapEvaluation generatorImages reduction22344.relations [8,8,64,636] reduction22344.output := by lin_cert using reduction22344.terms
def image22345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22345 : InImage map_59_258 image22345 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22345 : Bundle := named_bundle% "RealMapCertificates/relations/basis22345.json"
theorem reductionProof22345 : EqualModuloRelations reduction22345.relations reduction22345.input reduction22345.output := by lin_cert using reduction22345.terms
theorem substitutionProof22345 : IsMapEvaluation generatorImages reduction22345.relations [8,8,8,8,17,17,298] reduction22345.output := by lin_cert using reduction22345.terms
def image22346 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22346 : InImage map_59_258 image22346 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22346 : Bundle := named_bundle% "RealMapCertificates/relations/basis22346.json"
theorem reductionProof22346 : EqualModuloRelations reduction22346.relations reduction22346.input reduction22346.output := by lin_cert using reduction22346.terms
theorem substitutionProof22346 : IsMapEvaluation generatorImages reduction22346.relations [8,8,8,8,8,8,8,8,8,8,8,16,17] reduction22346.output := by lin_cert using reduction22346.terms
def image22347 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22347 : InImage map_59_258 image22347 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22347 : Bundle := named_bundle% "RealMapCertificates/relations/basis22347.json"
theorem reductionProof22347 : EqualModuloRelations reduction22347.relations reduction22347.input reduction22347.output := by lin_cert using reduction22347.terms
theorem substitutionProof22347 : IsMapEvaluation generatorImages reduction22347.relations [0,8,8,16,1033] reduction22347.output := by lin_cert using reduction22347.terms
end RealMapCertificates
