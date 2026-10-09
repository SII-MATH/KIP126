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
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 870 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1471 => []
  | 1514 => []
  | 1566 => []
  | 1589 => []
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1734 => []
  | 1736 => []
  | 1737 => []
  | 1965 => []
  | 2035 => []
  | 2057 => []
  | 2193 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | 2793 => []
  | _ => []
def map_59_259 : Matrix 5 2 := fun i j => ([false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image22698 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22698 : InImage map_59_259 image22698 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22698 : Bundle := named_bundle% "RealMapCertificates/relations/basis22698.json"
theorem reductionProof22698 : EqualModuloRelations reduction22698.relations reduction22698.input reduction22698.output := by lin_cert using reduction22698.terms
theorem substitutionProof22698 : IsMapEvaluation generatorImages reduction22698.relations [0,0,8,8,17,1033] reduction22698.output := by lin_cert using reduction22698.terms
def image22699 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22699 : InImage map_59_259 image22699 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22699 : Bundle := named_bundle% "RealMapCertificates/relations/basis22699.json"
theorem reductionProof22699 : EqualModuloRelations reduction22699.relations reduction22699.input reduction22699.output := by lin_cert using reduction22699.terms
theorem substitutionProof22699 : IsMapEvaluation generatorImages reduction22699.relations [0,0,0,149,685] reduction22699.output := by lin_cert using reduction22699.terms
def map_59_260 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image23020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23020 : InImage map_59_260 image23020 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23020 : Bundle := named_bundle% "RealMapCertificates/relations/basis23020.json"
theorem reductionProof23020 : EqualModuloRelations reduction23020.relations reduction23020.input reduction23020.output := by lin_cert using reduction23020.terms
theorem substitutionProof23020 : IsMapEvaluation generatorImages reduction23020.relations [2793] reduction23020.output := by lin_cert using reduction23020.terms
def image23021 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23021 : InImage map_59_260 image23021 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23021 : Bundle := named_bundle% "RealMapCertificates/relations/basis23021.json"
theorem reductionProof23021 : EqualModuloRelations reduction23021.relations reduction23021.input reduction23021.output := by lin_cert using reduction23021.terms
theorem substitutionProof23021 : IsMapEvaluation generatorImages reduction23021.relations [8,8,8,8,8,17,452] reduction23021.output := by lin_cert using reduction23021.terms
def image23022 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23022 : InImage map_59_260 image23022 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23022 : Bundle := named_bundle% "RealMapCertificates/relations/basis23022.json"
theorem reductionProof23022 : EqualModuloRelations reduction23022.relations reduction23022.input reduction23022.output := by lin_cert using reduction23022.terms
theorem substitutionProof23022 : IsMapEvaluation generatorImages reduction23022.relations [0,0,0,0,2579] reduction23022.output := by lin_cert using reduction23022.terms
def map_59_261 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image23461 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23461 : InImage map_59_261 image23461 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23461 : Bundle := named_bundle% "RealMapCertificates/relations/basis23461.json"
theorem reductionProof23461 : EqualModuloRelations reduction23461.relations reduction23461.input reduction23461.output := by lin_cert using reduction23461.terms
theorem substitutionProof23461 : IsMapEvaluation generatorImages reduction23461.relations [8,8,64,663] reduction23461.output := by lin_cert using reduction23461.terms
def image23462 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23462 : InImage map_59_261 image23462 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23462 : Bundle := named_bundle% "RealMapCertificates/relations/basis23462.json"
theorem reductionProof23462 : EqualModuloRelations reduction23462.relations reduction23462.input reduction23462.output := by lin_cert using reduction23462.terms
theorem substitutionProof23462 : IsMapEvaluation generatorImages reduction23462.relations [8,8,8,8,8,17,17,225] reduction23462.output := by lin_cert using reduction23462.terms
def image23463 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23463 : InImage map_59_261 image23463 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23463 : Bundle := named_bundle% "RealMapCertificates/relations/basis23463.json"
theorem reductionProof23463 : EqualModuloRelations reduction23463.relations reduction23463.input reduction23463.output := by lin_cert using reduction23463.terms
theorem substitutionProof23463 : IsMapEvaluation generatorImages reduction23463.relations [8,8,8,8,8,8,8,8,8,8,8,8,40] reduction23463.output := by lin_cert using reduction23463.terms
def image23464 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23464 : InImage map_59_261 image23464 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23464 : Bundle := named_bundle% "RealMapCertificates/relations/basis23464.json"
theorem reductionProof23464 : EqualModuloRelations reduction23464.relations reduction23464.input reduction23464.output := by lin_cert using reduction23464.terms
theorem substitutionProof23464 : IsMapEvaluation generatorImages reduction23464.relations [0,0,0,0,0,0,0,64,1033] reduction23464.output := by lin_cert using reduction23464.terms
def map_60_60 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image346 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation346 : InImage map_60_60 image346 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction346 : Bundle := named_bundle% "RealMapCertificates/relations/basis346.json"
theorem reductionProof346 : EqualModuloRelations reduction346.relations reduction346.input reduction346.output := by lin_cert using reduction346.terms
theorem substitutionProof346 : IsMapEvaluation generatorImages reduction346.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction346.output := by lin_cert using reduction346.terms
def map_60_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6889 : InImage map_60_179 image6889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6889 : Bundle := named_bundle% "RealMapCertificates/relations/basis6889.json"
theorem reductionProof6889 : EqualModuloRelations reduction6889.relations reduction6889.input reduction6889.output := by lin_cert using reduction6889.terms
theorem substitutionProof6889 : IsMapEvaluation generatorImages reduction6889.relations [0,0,0,0,0,804] reduction6889.output := by lin_cert using reduction6889.terms
def map_60_181 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7160 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7160 : InImage map_60_181 image7160 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7160 : Bundle := named_bundle% "RealMapCertificates/relations/basis7160.json"
theorem reductionProof7160 : EqualModuloRelations reduction7160.relations reduction7160.input reduction7160.output := by lin_cert using reduction7160.terms
theorem substitutionProof7160 : IsMapEvaluation generatorImages reduction7160.relations [1,870] reduction7160.output := by lin_cert using reduction7160.terms
def map_60_186 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7728 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7728 : InImage map_60_186 image7728 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7728 : Bundle := named_bundle% "RealMapCertificates/relations/basis7728.json"
theorem reductionProof7728 : EqualModuloRelations reduction7728.relations reduction7728.input reduction7728.output := by lin_cert using reduction7728.terms
theorem substitutionProof7728 : IsMapEvaluation generatorImages reduction7728.relations [951] reduction7728.output := by lin_cert using reduction7728.terms
def map_60_187 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7872 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7872 : InImage map_60_187 image7872 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7872 : Bundle := named_bundle% "RealMapCertificates/relations/basis7872.json"
theorem reductionProof7872 : EqualModuloRelations reduction7872.relations reduction7872.input reduction7872.output := by lin_cert using reduction7872.terms
theorem substitutionProof7872 : IsMapEvaluation generatorImages reduction7872.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7872.output := by lin_cert using reduction7872.terms
def map_60_189 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8078 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8078 : InImage map_60_189 image8078 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8078 : Bundle := named_bundle% "RealMapCertificates/relations/basis8078.json"
theorem reductionProof8078 : EqualModuloRelations reduction8078.relations reduction8078.input reduction8078.output := by lin_cert using reduction8078.terms
theorem substitutionProof8078 : IsMapEvaluation generatorImages reduction8078.relations [995] reduction8078.output := by lin_cert using reduction8078.terms
def map_60_190 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8222 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8222 : InImage map_60_190 image8222 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8222 : Bundle := named_bundle% "RealMapCertificates/relations/basis8222.json"
theorem reductionProof8222 : EqualModuloRelations reduction8222.relations reduction8222.input reduction8222.output := by lin_cert using reduction8222.terms
theorem substitutionProof8222 : IsMapEvaluation generatorImages reduction8222.relations [0,996] reduction8222.output := by lin_cert using reduction8222.terms
def map_60_192 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8448 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8448 : InImage map_60_192 image8448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8448 : Bundle := named_bundle% "RealMapCertificates/relations/basis8448.json"
theorem reductionProof8448 : EqualModuloRelations reduction8448.relations reduction8448.input reduction8448.output := by lin_cert using reduction8448.terms
theorem substitutionProof8448 : IsMapEvaluation generatorImages reduction8448.relations [8,803] reduction8448.output := by lin_cert using reduction8448.terms
def map_60_193 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8605 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8605 : InImage map_60_193 image8605 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8605 : Bundle := named_bundle% "RealMapCertificates/relations/basis8605.json"
theorem reductionProof8605 : EqualModuloRelations reduction8605.relations reduction8605.input reduction8605.output := by lin_cert using reduction8605.terms
theorem substitutionProof8605 : IsMapEvaluation generatorImages reduction8605.relations [0,8,804] reduction8605.output := by lin_cert using reduction8605.terms
def map_60_195 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8849 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8849 : InImage map_60_195 image8849 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8849 : Bundle := named_bundle% "RealMapCertificates/relations/basis8849.json"
theorem reductionProof8849 : EqualModuloRelations reduction8849.relations reduction8849.input reduction8849.output := by lin_cert using reduction8849.terms
theorem substitutionProof8849 : IsMapEvaluation generatorImages reduction8849.relations [8,851] reduction8849.output := by lin_cert using reduction8849.terms
def map_60_196 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9008 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9008 : InImage map_60_196 image9008 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9008 : Bundle := named_bundle% "RealMapCertificates/relations/basis9008.json"
theorem reductionProof9008 : EqualModuloRelations reduction9008.relations reduction9008.input reduction9008.output := by lin_cert using reduction9008.terms
theorem substitutionProof9008 : IsMapEvaluation generatorImages reduction9008.relations [0,8,852] reduction9008.output := by lin_cert using reduction9008.terms
def map_60_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9285 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9285 : InImage map_60_198 image9285 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9285 : Bundle := named_bundle% "RealMapCertificates/relations/basis9285.json"
theorem reductionProof9285 : EqualModuloRelations reduction9285.relations reduction9285.input reduction9285.output := by lin_cert using reduction9285.terms
theorem substitutionProof9285 : IsMapEvaluation generatorImages reduction9285.relations [8,8,661] reduction9285.output := by lin_cert using reduction9285.terms
def map_60_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9472 : InImage map_60_199 image9472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9472 : Bundle := named_bundle% "RealMapCertificates/relations/basis9472.json"
theorem reductionProof9472 : EqualModuloRelations reduction9472.relations reduction9472.input reduction9472.output := by lin_cert using reduction9472.terms
theorem substitutionProof9472 : IsMapEvaluation generatorImages reduction9472.relations [0,8,16,554] reduction9472.output := by lin_cert using reduction9472.terms
def map_60_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9775 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9775 : InImage map_60_201 image9775 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9775 : Bundle := named_bundle% "RealMapCertificates/relations/basis9775.json"
theorem reductionProof9775 : EqualModuloRelations reduction9775.relations reduction9775.input reduction9775.output := by lin_cert using reduction9775.terms
theorem substitutionProof9775 : IsMapEvaluation generatorImages reduction9775.relations [8,8,700] reduction9775.output := by lin_cert using reduction9775.terms
def map_60_204 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10265 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10265 : InImage map_60_204 image10265 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10265 : Bundle := named_bundle% "RealMapCertificates/relations/basis10265.json"
theorem reductionProof10265 : EqualModuloRelations reduction10265.relations reduction10265.input reduction10265.output := by lin_cert using reduction10265.terms
theorem substitutionProof10265 : IsMapEvaluation generatorImages reduction10265.relations [8,8,8,553] reduction10265.output := by lin_cert using reduction10265.terms
def map_60_207 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10815 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10815 : InImage map_60_207 image10815 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10815 : Bundle := named_bundle% "RealMapCertificates/relations/basis10815.json"
theorem reductionProof10815 : EqualModuloRelations reduction10815.relations reduction10815.input reduction10815.output := by lin_cert using reduction10815.terms
theorem substitutionProof10815 : IsMapEvaluation generatorImages reduction10815.relations [8,8,8,578] reduction10815.output := by lin_cert using reduction10815.terms
def map_60_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11141 : InImage map_60_209 image11141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11141 : Bundle := named_bundle% "RealMapCertificates/relations/basis11141.json"
theorem reductionProof11141 : EqualModuloRelations reduction11141.relations reduction11141.input reduction11141.output := by lin_cert using reduction11141.terms
theorem substitutionProof11141 : IsMapEvaluation generatorImages reduction11141.relations [0,0,1312] reduction11141.output := by lin_cert using reduction11141.terms
def map_60_210 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11323 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11323 : InImage map_60_210 image11323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11323 : Bundle := named_bundle% "RealMapCertificates/relations/basis11323.json"
theorem reductionProof11323 : EqualModuloRelations reduction11323.relations reduction11323.input reduction11323.output := by lin_cert using reduction11323.terms
theorem substitutionProof11323 : IsMapEvaluation generatorImages reduction11323.relations [8,8,8,8,431] reduction11323.output := by lin_cert using reduction11323.terms
def image11324 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11324 : InImage map_60_210 image11324 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11324 : Bundle := named_bundle% "RealMapCertificates/relations/basis11324.json"
theorem reductionProof11324 : EqualModuloRelations reduction11324.relations reduction11324.input reduction11324.output := by lin_cert using reduction11324.terms
theorem substitutionProof11324 : IsMapEvaluation generatorImages reduction11324.relations [0,0,0,1313] reduction11324.output := by lin_cert using reduction11324.terms
def map_60_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11539 : InImage map_60_211 image11539 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11539 : Bundle := named_bundle% "RealMapCertificates/relations/basis11539.json"
theorem reductionProof11539 : EqualModuloRelations reduction11539.relations reduction11539.input reduction11539.output := by lin_cert using reduction11539.terms
theorem substitutionProof11539 : IsMapEvaluation generatorImages reduction11539.relations [1,1,1312] reduction11539.output := by lin_cert using reduction11539.terms
def map_60_212 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11672 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11672 : InImage map_60_212 image11672 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11672 : Bundle := named_bundle% "RealMapCertificates/relations/basis11672.json"
theorem reductionProof11672 : EqualModuloRelations reduction11672.relations reduction11672.input reduction11672.output := by lin_cert using reduction11672.terms
theorem substitutionProof11672 : IsMapEvaluation generatorImages reduction11672.relations [0,0,1360] reduction11672.output := by lin_cert using reduction11672.terms
def map_60_213 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11898 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11898 : InImage map_60_213 image11898 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11898 : Bundle := named_bundle% "RealMapCertificates/relations/basis11898.json"
theorem reductionProof11898 : EqualModuloRelations reduction11898.relations reduction11898.input reduction11898.output := by lin_cert using reduction11898.terms
theorem substitutionProof11898 : IsMapEvaluation generatorImages reduction11898.relations [8,8,8,8,469] reduction11898.output := by lin_cert using reduction11898.terms
def map_60_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12273 : InImage map_60_215 image12273 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12273 : Bundle := named_bundle% "RealMapCertificates/relations/basis12273.json"
theorem reductionProof12273 : EqualModuloRelations reduction12273.relations reduction12273.input reduction12273.output := by lin_cert using reduction12273.terms
theorem substitutionProof12273 : IsMapEvaluation generatorImages reduction12273.relations [0,0,16,916] reduction12273.output := by lin_cert using reduction12273.terms
def map_60_216 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12460 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12460 : InImage map_60_216 image12460 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12460 : Bundle := named_bundle% "RealMapCertificates/relations/basis12460.json"
theorem reductionProof12460 : EqualModuloRelations reduction12460.relations reduction12460.input reduction12460.output := by lin_cert using reduction12460.terms
theorem substitutionProof12460 : IsMapEvaluation generatorImages reduction12460.relations [8,8,8,8,8,295] reduction12460.output := by lin_cert using reduction12460.terms
def image12461 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12461 : InImage map_60_216 image12461 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12461 : Bundle := named_bundle% "RealMapCertificates/relations/basis12461.json"
theorem reductionProof12461 : EqualModuloRelations reduction12461.relations reduction12461.input reduction12461.output := by lin_cert using reduction12461.terms
theorem substitutionProof12461 : IsMapEvaluation generatorImages reduction12461.relations [0,0,0,0,1395] reduction12461.output := by lin_cert using reduction12461.terms
def map_60_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12683 : InImage map_60_217 image12683 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12683 : Bundle := named_bundle% "RealMapCertificates/relations/basis12683.json"
theorem reductionProof12683 : EqualModuloRelations reduction12683.relations reduction12683.input reduction12683.output := by lin_cert using reduction12683.terms
theorem substitutionProof12683 : IsMapEvaluation generatorImages reduction12683.relations [0,0,0,0,17,917] reduction12683.output := by lin_cert using reduction12683.terms
def map_60_218 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12821 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12821 : InImage map_60_218 image12821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12821 : Bundle := named_bundle% "RealMapCertificates/relations/basis12821.json"
theorem reductionProof12821 : EqualModuloRelations reduction12821.relations reduction12821.input reduction12821.output := by lin_cert using reduction12821.terms
theorem substitutionProof12821 : IsMapEvaluation generatorImages reduction12821.relations [0,0,8,1141] reduction12821.output := by lin_cert using reduction12821.terms
def image12822 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12822 : InImage map_60_218 image12822 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12822 : Bundle := named_bundle% "RealMapCertificates/relations/basis12822.json"
theorem reductionProof12822 : EqualModuloRelations reduction12822.relations reduction12822.input reduction12822.output := by lin_cert using reduction12822.terms
theorem substitutionProof12822 : IsMapEvaluation generatorImages reduction12822.relations [0,0,0,0,0,0,1396] reduction12822.output := by lin_cert using reduction12822.terms
def map_60_219 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13044 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13044 : InImage map_60_219 image13044 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13044 : Bundle := named_bundle% "RealMapCertificates/relations/basis13044.json"
theorem reductionProof13044 : EqualModuloRelations reduction13044.relations reduction13044.input reduction13044.output := by lin_cert using reduction13044.terms
theorem substitutionProof13044 : IsMapEvaluation generatorImages reduction13044.relations [8,8,8,8,8,325] reduction13044.output := by lin_cert using reduction13044.terms
def image13045 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13045 : InImage map_60_219 image13045 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13045 : Bundle := named_bundle% "RealMapCertificates/relations/basis13045.json"
theorem reductionProof13045 : EqualModuloRelations reduction13045.relations reduction13045.input reduction13045.output := by lin_cert using reduction13045.terms
theorem substitutionProof13045 : IsMapEvaluation generatorImages reduction13045.relations [0,0,0,0,0,0,0,1397] reduction13045.output := by lin_cert using reduction13045.terms
def map_60_221 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13391 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13391 : InImage map_60_221 image13391 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13391 : Bundle := named_bundle% "RealMapCertificates/relations/basis13391.json"
theorem reductionProof13391 : EqualModuloRelations reduction13391.relations reduction13391.input reduction13391.output := by lin_cert using reduction13391.terms
theorem substitutionProof13391 : IsMapEvaluation generatorImages reduction13391.relations [0,0,8,8,916] reduction13391.output := by lin_cert using reduction13391.terms
def map_60_222 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image13593 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13593 : InImage map_60_222 image13593 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13593 : Bundle := named_bundle% "RealMapCertificates/relations/basis13593.json"
theorem reductionProof13593 : EqualModuloRelations reduction13593.relations reduction13593.input reduction13593.output := by lin_cert using reduction13593.terms
theorem substitutionProof13593 : IsMapEvaluation generatorImages reduction13593.relations [8,8,8,8,8,8,236] reduction13593.output := by lin_cert using reduction13593.terms
def map_60_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13806 : InImage map_60_223 image13806 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13806 : Bundle := named_bundle% "RealMapCertificates/relations/basis13806.json"
theorem reductionProof13806 : EqualModuloRelations reduction13806.relations reduction13806.input reduction13806.output := by lin_cert using reduction13806.terms
theorem substitutionProof13806 : IsMapEvaluation generatorImages reduction13806.relations [0,0,0,0,0,17,969] reduction13806.output := by lin_cert using reduction13806.terms
def map_60_224 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13940 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13940 : InImage map_60_224 image13940 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13940 : Bundle := named_bundle% "RealMapCertificates/relations/basis13940.json"
theorem reductionProof13940 : EqualModuloRelations reduction13940.relations reduction13940.input reduction13940.output := by lin_cert using reduction13940.terms
theorem substitutionProof13940 : IsMapEvaluation generatorImages reduction13940.relations [0,0,0,0,0,17,17,636] reduction13940.output := by lin_cert using reduction13940.terms
def map_60_225 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14166 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14166 : InImage map_60_225 image14166 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14166 : Bundle := named_bundle% "RealMapCertificates/relations/basis14166.json"
theorem reductionProof14166 : EqualModuloRelations reduction14166.relations reduction14166.input reduction14166.output := by lin_cert using reduction14166.terms
theorem substitutionProof14166 : IsMapEvaluation generatorImages reduction14166.relations [8,8,8,8,8,8,252] reduction14166.output := by lin_cert using reduction14166.terms
def map_60_227 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14511 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14511 : InImage map_60_227 image14511 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14511 : Bundle := named_bundle% "RealMapCertificates/relations/basis14511.json"
theorem reductionProof14511 : EqualModuloRelations reduction14511.relations reduction14511.input reduction14511.output := by lin_cert using reduction14511.terms
theorem substitutionProof14511 : IsMapEvaluation generatorImages reduction14511.relations [1679] reduction14511.output := by lin_cert using reduction14511.terms
def map_60_228 : Matrix 6 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14727 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14727 : InImage map_60_228 image14727 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14727 : Bundle := named_bundle% "RealMapCertificates/relations/basis14727.json"
theorem reductionProof14727 : EqualModuloRelations reduction14727.relations reduction14727.input reduction14727.output := by lin_cert using reduction14727.terms
theorem substitutionProof14727 : IsMapEvaluation generatorImages reduction14727.relations [17,1142] reduction14727.output := by lin_cert using reduction14727.terms
def image14728 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14728 : InImage map_60_228 image14728 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14728 : Bundle := named_bundle% "RealMapCertificates/relations/basis14728.json"
theorem reductionProof14728 : EqualModuloRelations reduction14728.relations reduction14728.input reduction14728.output := by lin_cert using reduction14728.terms
theorem substitutionProof14728 : IsMapEvaluation generatorImages reduction14728.relations [8,8,8,8,8,8,8,182] reduction14728.output := by lin_cert using reduction14728.terms
def map_60_230 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15102 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15102 : InImage map_60_230 image15102 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15102 : Bundle := named_bundle% "RealMapCertificates/relations/basis15102.json"
theorem reductionProof15102 : EqualModuloRelations reduction15102.relations reduction15102.input reduction15102.output := by lin_cert using reduction15102.terms
theorem substitutionProof15102 : IsMapEvaluation generatorImages reduction15102.relations [8,1395] reduction15102.output := by lin_cert using reduction15102.terms
def map_60_231 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15346 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15346 : InImage map_60_231 image15346 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15346 : Bundle := named_bundle% "RealMapCertificates/relations/basis15346.json"
theorem reductionProof15346 : EqualModuloRelations reduction15346.relations reduction15346.input reduction15346.output := by lin_cert using reduction15346.terms
theorem substitutionProof15346 : IsMapEvaluation generatorImages reduction15346.relations [8,17,917] reduction15346.output := by lin_cert using reduction15346.terms
def image15347 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15347 : InImage map_60_231 image15347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15347 : Bundle := named_bundle% "RealMapCertificates/relations/basis15347.json"
theorem reductionProof15347 : EqualModuloRelations reduction15347.relations reduction15347.input reduction15347.output := by lin_cert using reduction15347.terms
theorem substitutionProof15347 : IsMapEvaluation generatorImages reduction15347.relations [8,8,8,8,8,8,8,199] reduction15347.output := by lin_cert using reduction15347.terms
def map_60_233 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image15753 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15753 : InImage map_60_233 image15753 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15753 : Bundle := named_bundle% "RealMapCertificates/relations/basis15753.json"
theorem reductionProof15753 : EqualModuloRelations reduction15753.relations reduction15753.input reduction15753.output := by lin_cert using reduction15753.terms
theorem substitutionProof15753 : IsMapEvaluation generatorImages reduction15753.relations [8,1468] reduction15753.output := by lin_cert using reduction15753.terms
def image15754 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15754 : InImage map_60_233 image15754 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15754 : Bundle := named_bundle% "RealMapCertificates/relations/basis15754.json"
theorem reductionProof15754 : EqualModuloRelations reduction15754.relations reduction15754.input reduction15754.output := by lin_cert using reduction15754.terms
theorem substitutionProof15754 : IsMapEvaluation generatorImages reduction15754.relations [1,42,916] reduction15754.output := by lin_cert using reduction15754.terms
def image15755 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15755 : InImage map_60_233 image15755 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15755 : Bundle := named_bundle% "RealMapCertificates/relations/basis15755.json"
theorem reductionProof15755 : EqualModuloRelations reduction15755.relations reduction15755.input reduction15755.output := by lin_cert using reduction15755.terms
theorem substitutionProof15755 : IsMapEvaluation generatorImages reduction15755.relations [0,0,0,0,0,0,0,0,0,0,0,1589] reduction15755.output := by lin_cert using reduction15755.terms
def map_60_234 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15993 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15993 : InImage map_60_234 image15993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15993 : Bundle := named_bundle% "RealMapCertificates/relations/basis15993.json"
theorem reductionProof15993 : EqualModuloRelations reduction15993.relations reduction15993.input reduction15993.output := by lin_cert using reduction15993.terms
theorem substitutionProof15993 : IsMapEvaluation generatorImages reduction15993.relations [8,17,953] reduction15993.output := by lin_cert using reduction15993.terms
def image15994 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15994 : InImage map_60_234 image15994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15994 : Bundle := named_bundle% "RealMapCertificates/relations/basis15994.json"
theorem reductionProof15994 : EqualModuloRelations reduction15994.relations reduction15994.input reduction15994.output := by lin_cert using reduction15994.terms
theorem substitutionProof15994 : IsMapEvaluation generatorImages reduction15994.relations [8,8,8,8,8,8,8,8,145] reduction15994.output := by lin_cert using reduction15994.terms
def image15995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15995 : InImage map_60_234 image15995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15995 : Bundle := named_bundle% "RealMapCertificates/relations/basis15995.json"
theorem reductionProof15995 : EqualModuloRelations reduction15995.relations reduction15995.input reduction15995.output := by lin_cert using reduction15995.terms
theorem substitutionProof15995 : IsMapEvaluation generatorImages reduction15995.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1566] reduction15995.output := by lin_cert using reduction15995.terms
def map_60_236 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16419 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16419 : InImage map_60_236 image16419 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16419 : Bundle := named_bundle% "RealMapCertificates/relations/basis16419.json"
theorem reductionProof16419 : EqualModuloRelations reduction16419.relations reduction16419.input reduction16419.output := by lin_cert using reduction16419.terms
theorem substitutionProof16419 : IsMapEvaluation generatorImages reduction16419.relations [8,16,969] reduction16419.output := by lin_cert using reduction16419.terms
def map_60_237 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16664 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16664 : InImage map_60_237 image16664 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16664 : Bundle := named_bundle% "RealMapCertificates/relations/basis16664.json"
theorem reductionProof16664 : EqualModuloRelations reduction16664.relations reduction16664.input reduction16664.output := by lin_cert using reduction16664.terms
theorem substitutionProof16664 : IsMapEvaluation generatorImages reduction16664.relations [8,16,17,636] reduction16664.output := by lin_cert using reduction16664.terms
def image16665 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16665 : InImage map_60_237 image16665 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16665 : Bundle := named_bundle% "RealMapCertificates/relations/basis16665.json"
theorem reductionProof16665 : EqualModuloRelations reduction16665.relations reduction16665.input reduction16665.output := by lin_cert using reduction16665.terms
theorem substitutionProof16665 : IsMapEvaluation generatorImages reduction16665.relations [8,8,8,8,8,8,8,8,152] reduction16665.output := by lin_cert using reduction16665.terms
def map_60_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17109 : InImage map_60_239 image17109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17109 : Bundle := named_bundle% "RealMapCertificates/relations/basis17109.json"
theorem reductionProof17109 : EqualModuloRelations reduction17109.relations reduction17109.input reduction17109.output := by lin_cert using reduction17109.terms
theorem substitutionProof17109 : IsMapEvaluation generatorImages reduction17109.relations [8,8,1239] reduction17109.output := by lin_cert using reduction17109.terms
def map_60_240 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17364 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17364 : InImage map_60_240 image17364 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17364 : Bundle := named_bundle% "RealMapCertificates/relations/basis17364.json"
theorem reductionProof17364 : EqualModuloRelations reduction17364.relations reduction17364.input reduction17364.output := by lin_cert using reduction17364.terms
theorem substitutionProof17364 : IsMapEvaluation generatorImages reduction17364.relations [8,8,17,806] reduction17364.output := by lin_cert using reduction17364.terms
def image17365 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17365 : InImage map_60_240 image17365 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17365 : Bundle := named_bundle% "RealMapCertificates/relations/basis17365.json"
theorem reductionProof17365 : EqualModuloRelations reduction17365.relations reduction17365.input reduction17365.output := by lin_cert using reduction17365.terms
theorem substitutionProof17365 : IsMapEvaluation generatorImages reduction17365.relations [8,8,8,8,8,8,8,8,8,110] reduction17365.output := by lin_cert using reduction17365.terms
def map_60_241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17664 : InImage map_60_241 image17664 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17664 : Bundle := named_bundle% "RealMapCertificates/relations/basis17664.json"
theorem reductionProof17664 : EqualModuloRelations reduction17664.relations reduction17664.input reduction17664.output := by lin_cert using reduction17664.terms
theorem substitutionProof17664 : IsMapEvaluation generatorImages reduction17664.relations [0,0,1965] reduction17664.output := by lin_cert using reduction17664.terms
def map_60_242 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image17869 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17869 : InImage map_60_242 image17869 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17869 : Bundle := named_bundle% "RealMapCertificates/relations/basis17869.json"
theorem reductionProof17869 : EqualModuloRelations reduction17869.relations reduction17869.input reduction17869.output := by lin_cert using reduction17869.terms
theorem substitutionProof17869 : IsMapEvaluation generatorImages reduction17869.relations [8,8,8,969] reduction17869.output := by lin_cert using reduction17869.terms
def image17870 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17870 : InImage map_60_242 image17870 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17870 : Bundle := named_bundle% "RealMapCertificates/relations/basis17870.json"
theorem reductionProof17870 : EqualModuloRelations reduction17870.relations reduction17870.input reduction17870.output := by lin_cert using reduction17870.terms
theorem substitutionProof17870 : IsMapEvaluation generatorImages reduction17870.relations [0,2035] reduction17870.output := by lin_cert using reduction17870.terms
def map_60_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18144 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18144 : InImage map_60_243 image18144 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18144 : Bundle := named_bundle% "RealMapCertificates/relations/basis18144.json"
theorem reductionProof18144 : EqualModuloRelations reduction18144.relations reduction18144.input reduction18144.output := by lin_cert using reduction18144.terms
theorem substitutionProof18144 : IsMapEvaluation generatorImages reduction18144.relations [8,8,8,17,636] reduction18144.output := by lin_cert using reduction18144.terms
def image18145 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18145 : InImage map_60_243 image18145 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18145 : Bundle := named_bundle% "RealMapCertificates/relations/basis18145.json"
theorem reductionProof18145 : EqualModuloRelations reduction18145.relations reduction18145.input reduction18145.output := by lin_cert using reduction18145.terms
theorem substitutionProof18145 : IsMapEvaluation generatorImages reduction18145.relations [8,8,8,8,8,8,8,8,8,116] reduction18145.output := by lin_cert using reduction18145.terms
def image18146 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18146 : InImage map_60_243 image18146 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18146 : Bundle := named_bundle% "RealMapCertificates/relations/basis18146.json"
theorem reductionProof18146 : EqualModuloRelations reduction18146.relations reduction18146.input reduction18146.output := by lin_cert using reduction18146.terms
theorem substitutionProof18146 : IsMapEvaluation generatorImages reduction18146.relations [1,1,1965] reduction18146.output := by lin_cert using reduction18146.terms
def map_60_244 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18401 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18401 : InImage map_60_244 image18401 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18401 : Bundle := named_bundle% "RealMapCertificates/relations/basis18401.json"
theorem reductionProof18401 : EqualModuloRelations reduction18401.relations reduction18401.input reduction18401.output := by lin_cert using reduction18401.terms
theorem substitutionProof18401 : IsMapEvaluation generatorImages reduction18401.relations [0,0,2057] reduction18401.output := by lin_cert using reduction18401.terms
def map_60_245 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18615 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18615 : InImage map_60_245 image18615 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18615 : Bundle := named_bundle% "RealMapCertificates/relations/basis18615.json"
theorem reductionProof18615 : EqualModuloRelations reduction18615.relations reduction18615.input reduction18615.output := by lin_cert using reduction18615.terms
theorem substitutionProof18615 : IsMapEvaluation generatorImages reduction18615.relations [8,8,8,1030] reduction18615.output := by lin_cert using reduction18615.terms
def map_60_246 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image18890 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18890 : InImage map_60_246 image18890 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18890 : Bundle := named_bundle% "RealMapCertificates/relations/basis18890.json"
theorem reductionProof18890 : EqualModuloRelations reduction18890.relations reduction18890.input reduction18890.output := by lin_cert using reduction18890.terms
theorem substitutionProof18890 : IsMapEvaluation generatorImages reduction18890.relations [64,916] reduction18890.output := by lin_cert using reduction18890.terms
def image18891 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18891 : InImage map_60_246 image18891 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18891 : Bundle := named_bundle% "RealMapCertificates/relations/basis18891.json"
theorem reductionProof18891 : EqualModuloRelations reduction18891.relations reduction18891.input reduction18891.output := by lin_cert using reduction18891.terms
theorem substitutionProof18891 : IsMapEvaluation generatorImages reduction18891.relations [8,8,8,17,663] reduction18891.output := by lin_cert using reduction18891.terms
def image18892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18892 : InImage map_60_246 image18892 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18892 : Bundle := named_bundle% "RealMapCertificates/relations/basis18892.json"
theorem reductionProof18892 : EqualModuloRelations reduction18892.relations reduction18892.input reduction18892.output := by lin_cert using reduction18892.terms
theorem substitutionProof18892 : IsMapEvaluation generatorImages reduction18892.relations [8,8,8,8,8,8,8,8,8,8,71] reduction18892.output := by lin_cert using reduction18892.terms
def map_60_247 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19195 : InImage map_60_247 image19195 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19195 : Bundle := named_bundle% "RealMapCertificates/relations/basis19195.json"
theorem reductionProof19195 : EqualModuloRelations reduction19195.relations reduction19195.input reduction19195.output := by lin_cert using reduction19195.terms
theorem substitutionProof19195 : IsMapEvaluation generatorImages reduction19195.relations [0,64,917] reduction19195.output := by lin_cert using reduction19195.terms
def image19196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19196 : InImage map_60_247 image19196 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19196 : Bundle := named_bundle% "RealMapCertificates/relations/basis19196.json"
theorem reductionProof19196 : EqualModuloRelations reduction19196.relations reduction19196.input reduction19196.output := by lin_cert using reduction19196.terms
theorem substitutionProof19196 : IsMapEvaluation generatorImages reduction19196.relations [0,0,16,1471] reduction19196.output := by lin_cert using reduction19196.terms
def map_60_248 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19410 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19410 : InImage map_60_248 image19410 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19410 : Bundle := named_bundle% "RealMapCertificates/relations/basis19410.json"
theorem reductionProof19410 : EqualModuloRelations reduction19410.relations reduction19410.input reduction19410.output := by lin_cert using reduction19410.terms
theorem substitutionProof19410 : IsMapEvaluation generatorImages reduction19410.relations [8,8,8,16,685] reduction19410.output := by lin_cert using reduction19410.terms
def image19411 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19411 : InImage map_60_248 image19411 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19411 : Bundle := named_bundle% "RealMapCertificates/relations/basis19411.json"
theorem reductionProof19411 : EqualModuloRelations reduction19411.relations reduction19411.input reduction19411.output := by lin_cert using reduction19411.terms
theorem substitutionProof19411 : IsMapEvaluation generatorImages reduction19411.relations [0,0,0,17,1471] reduction19411.output := by lin_cert using reduction19411.terms
def map_60_249 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image19708 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19708 : InImage map_60_249 image19708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19708 : Bundle := named_bundle% "RealMapCertificates/relations/basis19708.json"
theorem reductionProof19708 : EqualModuloRelations reduction19708.relations reduction19708.input reduction19708.output := by lin_cert using reduction19708.terms
theorem substitutionProof19708 : IsMapEvaluation generatorImages reduction19708.relations [64,952] reduction19708.output := by lin_cert using reduction19708.terms
def image19709 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19709 : InImage map_60_249 image19709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19709 : Bundle := named_bundle% "RealMapCertificates/relations/basis19709.json"
theorem reductionProof19709 : EqualModuloRelations reduction19709.relations reduction19709.input reduction19709.output := by lin_cert using reduction19709.terms
theorem substitutionProof19709 : IsMapEvaluation generatorImages reduction19709.relations [8,8,8,16,17,403] reduction19709.output := by lin_cert using reduction19709.terms
def image19710 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19710 : InImage map_60_249 image19710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19710 : Bundle := named_bundle% "RealMapCertificates/relations/basis19710.json"
theorem reductionProof19710 : EqualModuloRelations reduction19710.relations reduction19710.input reduction19710.output := by lin_cert using reduction19710.terms
theorem substitutionProof19710 : IsMapEvaluation generatorImages reduction19710.relations [8,8,8,8,8,8,8,8,8,8,77] reduction19710.output := by lin_cert using reduction19710.terms
def image19711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19711 : InImage map_60_249 image19711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19711 : Bundle := named_bundle% "RealMapCertificates/relations/basis19711.json"
theorem reductionProof19711 : EqualModuloRelations reduction19711.relations reduction19711.input reduction19711.output := by lin_cert using reduction19711.terms
theorem substitutionProof19711 : IsMapEvaluation generatorImages reduction19711.relations [0,0,0,2193] reduction19711.output := by lin_cert using reduction19711.terms
def map_60_250 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image19981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19981 : InImage map_60_250 image19981 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19981 : Bundle := named_bundle% "RealMapCertificates/relations/basis19981.json"
theorem reductionProof19981 : EqualModuloRelations reduction19981.relations reduction19981.input reduction19981.output := by lin_cert using reduction19981.terms
theorem substitutionProof19981 : IsMapEvaluation generatorImages reduction19981.relations [0,64,953] reduction19981.output := by lin_cert using reduction19981.terms
def image19982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19982 : InImage map_60_250 image19982 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19982 : Bundle := named_bundle% "RealMapCertificates/relations/basis19982.json"
theorem reductionProof19982 : EqualModuloRelations reduction19982.relations reduction19982.input reduction19982.output := by lin_cert using reduction19982.terms
theorem substitutionProof19982 : IsMapEvaluation generatorImages reduction19982.relations [0,0,8,1734] reduction19982.output := by lin_cert using reduction19982.terms
def image19983 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19983 : InImage map_60_250 image19983 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19983 : Bundle := named_bundle% "RealMapCertificates/relations/basis19983.json"
theorem reductionProof19983 : EqualModuloRelations reduction19983.relations reduction19983.input reduction19983.output := by lin_cert using reduction19983.terms
theorem substitutionProof19983 : IsMapEvaluation generatorImages reduction19983.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction19983.output := by lin_cert using reduction19983.terms
def map_60_251 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image20218 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20218 : InImage map_60_251 image20218 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20218 : Bundle := named_bundle% "RealMapCertificates/relations/basis20218.json"
theorem reductionProof20218 : EqualModuloRelations reduction20218.relations reduction20218.input reduction20218.output := by lin_cert using reduction20218.terms
theorem substitutionProof20218 : IsMapEvaluation generatorImages reduction20218.relations [8,8,8,8,871] reduction20218.output := by lin_cert using reduction20218.terms
def image20219 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20219 : InImage map_60_251 image20219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20219 : Bundle := named_bundle% "RealMapCertificates/relations/basis20219.json"
theorem reductionProof20219 : EqualModuloRelations reduction20219.relations reduction20219.input reduction20219.output := by lin_cert using reduction20219.terms
theorem substitutionProof20219 : IsMapEvaluation generatorImages reduction20219.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction20219.output := by lin_cert using reduction20219.terms
def map_60_252 : Matrix 5 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20510 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20510 : InImage map_60_252 image20510 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20510 : Bundle := named_bundle% "RealMapCertificates/relations/basis20510.json"
theorem reductionProof20510 : EqualModuloRelations reduction20510.relations reduction20510.input reduction20510.output := by lin_cert using reduction20510.terms
theorem substitutionProof20510 : IsMapEvaluation generatorImages reduction20510.relations [16,64,635] reduction20510.output := by lin_cert using reduction20510.terms
def image20511 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20511 : InImage map_60_252 image20511 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20511 : Bundle := named_bundle% "RealMapCertificates/relations/basis20511.json"
theorem reductionProof20511 : EqualModuloRelations reduction20511.relations reduction20511.input reduction20511.output := by lin_cert using reduction20511.terms
theorem substitutionProof20511 : IsMapEvaluation generatorImages reduction20511.relations [8,8,8,8,17,556] reduction20511.output := by lin_cert using reduction20511.terms
def image20512 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20512 : InImage map_60_252 image20512 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20512 : Bundle := named_bundle% "RealMapCertificates/relations/basis20512.json"
theorem reductionProof20512 : EqualModuloRelations reduction20512.relations reduction20512.input reduction20512.output := by lin_cert using reduction20512.terms
theorem substitutionProof20512 : IsMapEvaluation generatorImages reduction20512.relations [8,8,8,8,8,8,8,8,8,8,8,49] reduction20512.output := by lin_cert using reduction20512.terms
def map_60_253 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image20804 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20804 : InImage map_60_253 image20804 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20804 : Bundle := named_bundle% "RealMapCertificates/relations/basis20804.json"
theorem reductionProof20804 : EqualModuloRelations reduction20804.relations reduction20804.input reduction20804.output := by lin_cert using reduction20804.terms
theorem substitutionProof20804 : IsMapEvaluation generatorImages reduction20804.relations [0,16,64,636] reduction20804.output := by lin_cert using reduction20804.terms
def image20805 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20805 : InImage map_60_253 image20805 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20805 : Bundle := named_bundle% "RealMapCertificates/relations/basis20805.json"
theorem reductionProof20805 : EqualModuloRelations reduction20805.relations reduction20805.input reduction20805.output := by lin_cert using reduction20805.terms
theorem substitutionProof20805 : IsMapEvaluation generatorImages reduction20805.relations [0,0,64,969] reduction20805.output := by lin_cert using reduction20805.terms
def image20806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20806 : InImage map_60_253 image20806 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20806 : Bundle := named_bundle% "RealMapCertificates/relations/basis20806.json"
theorem reductionProof20806 : EqualModuloRelations reduction20806.relations reduction20806.input reduction20806.output := by lin_cert using reduction20806.terms
theorem substitutionProof20806 : IsMapEvaluation generatorImages reduction20806.relations [0,0,8,8,1471] reduction20806.output := by lin_cert using reduction20806.terms
def map_60_254 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image21043 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21043 : InImage map_60_254 image21043 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21043 : Bundle := named_bundle% "RealMapCertificates/relations/basis21043.json"
theorem reductionProof21043 : EqualModuloRelations reduction21043.relations reduction21043.input reduction21043.output := by lin_cert using reduction21043.terms
theorem substitutionProof21043 : IsMapEvaluation generatorImages reduction21043.relations [8,8,8,8,8,685] reduction21043.output := by lin_cert using reduction21043.terms
def image21044 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21044 : InImage map_60_254 image21044 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21044 : Bundle := named_bundle% "RealMapCertificates/relations/basis21044.json"
theorem reductionProof21044 : EqualModuloRelations reduction21044.relations reduction21044.input reduction21044.output := by lin_cert using reduction21044.terms
theorem substitutionProof21044 : IsMapEvaluation generatorImages reduction21044.relations [0,0,0,138,685] reduction21044.output := by lin_cert using reduction21044.terms
def map_60_255 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image21385 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21385 : InImage map_60_255 image21385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21385 : Bundle := named_bundle% "RealMapCertificates/relations/basis21385.json"
theorem reductionProof21385 : EqualModuloRelations reduction21385.relations reduction21385.input reduction21385.output := by lin_cert using reduction21385.terms
theorem substitutionProof21385 : IsMapEvaluation generatorImages reduction21385.relations [8,64,805] reduction21385.output := by lin_cert using reduction21385.terms
def image21386 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21386 : InImage map_60_255 image21386 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21386 : Bundle := named_bundle% "RealMapCertificates/relations/basis21386.json"
theorem reductionProof21386 : EqualModuloRelations reduction21386.relations reduction21386.input reduction21386.output := by lin_cert using reduction21386.terms
theorem substitutionProof21386 : IsMapEvaluation generatorImages reduction21386.relations [8,8,8,8,8,17,403] reduction21386.output := by lin_cert using reduction21386.terms
def image21387 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21387 : InImage map_60_255 image21387 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21387 : Bundle := named_bundle% "RealMapCertificates/relations/basis21387.json"
theorem reductionProof21387 : EqualModuloRelations reduction21387.relations reduction21387.input reduction21387.output := by lin_cert using reduction21387.terms
theorem substitutionProof21387 : IsMapEvaluation generatorImages reduction21387.relations [8,8,8,8,8,8,8,8,8,8,8,55] reduction21387.output := by lin_cert using reduction21387.terms
def image21388 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21388 : InImage map_60_255 image21388 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21388 : Bundle := named_bundle% "RealMapCertificates/relations/basis21388.json"
theorem reductionProof21388 : EqualModuloRelations reduction21388.relations reduction21388.input reduction21388.output := by lin_cert using reduction21388.terms
theorem substitutionProof21388 : IsMapEvaluation generatorImages reduction21388.relations [1,1,64,969] reduction21388.output := by lin_cert using reduction21388.terms
def image21389 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21389 : InImage map_60_255 image21389 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21389 : Bundle := named_bundle% "RealMapCertificates/relations/basis21389.json"
theorem reductionProof21389 : EqualModuloRelations reduction21389.relations reduction21389.input reduction21389.output := by lin_cert using reduction21389.terms
theorem substitutionProof21389 : IsMapEvaluation generatorImages reduction21389.relations [0,0,0,0,17,17,1033] reduction21389.output := by lin_cert using reduction21389.terms
def map_60_256 : Matrix 4 3 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21694 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21694 : InImage map_60_256 image21694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21694 : Bundle := named_bundle% "RealMapCertificates/relations/basis21694.json"
theorem reductionProof21694 : EqualModuloRelations reduction21694.relations reduction21694.input reduction21694.output := by lin_cert using reduction21694.terms
theorem substitutionProof21694 : IsMapEvaluation generatorImages reduction21694.relations [0,0,8,8,1514] reduction21694.output := by lin_cert using reduction21694.terms
def image21695 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21695 : InImage map_60_256 image21695 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21695 : Bundle := named_bundle% "RealMapCertificates/relations/basis21695.json"
theorem reductionProof21695 : EqualModuloRelations reduction21695.relations reduction21695.input reduction21695.output := by lin_cert using reduction21695.terms
theorem substitutionProof21695 : IsMapEvaluation generatorImages reduction21695.relations [0,0,0,0,0,246,402] reduction21695.output := by lin_cert using reduction21695.terms
def image21696 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21696 : InImage map_60_256 image21696 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21696 : Bundle := named_bundle% "RealMapCertificates/relations/basis21696.json"
theorem reductionProof21696 : EqualModuloRelations reduction21696.relations reduction21696.input reduction21696.output := by lin_cert using reduction21696.terms
theorem substitutionProof21696 : IsMapEvaluation generatorImages reduction21696.relations [0,0,0,0,0,59,1033] reduction21696.output := by lin_cert using reduction21696.terms
end RealMapCertificates
