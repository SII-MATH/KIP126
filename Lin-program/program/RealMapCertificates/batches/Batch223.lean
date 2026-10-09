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
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 59 => []
  | 64 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 225 => [[0,4,4,4,6,12]]
  | 246 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 324 => []
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 895 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 915 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 926 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1033 => []
  | 1048 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1092 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1179 => [[4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1241 => [[4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1253 => []
  | 1254 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1311 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1398 => [[4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1470 => [[4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1471 => []
  | 1566 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1589 => []
  | 1618 => [[4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1681 => [[4,4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1736 => []
  | 1737 => []
  | 1889 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1964 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1965 => []
  | 2035 => []
  | 2057 => []
  | 2193 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | 2627 => []
  | 2792 => []
  | _ => []
def map_60_257 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image21992 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21992 : InImage map_60_257 image21992 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21992 : Bundle := named_bundle% "RealMapCertificates/relations/basis21992.json"
theorem reductionProof21992 : EqualModuloRelations reduction21992.relations reduction21992.input reduction21992.output := by lin_cert using reduction21992.terms
theorem substitutionProof21992 : IsMapEvaluation generatorImages reduction21992.relations [8,8,8,8,8,722] reduction21992.output := by lin_cert using reduction21992.terms
def map_60_258 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image22341 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22341 : InImage map_60_258 image22341 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22341 : Bundle := named_bundle% "RealMapCertificates/relations/basis22341.json"
theorem reductionProof22341 : EqualModuloRelations reduction22341.relations reduction22341.input reduction22341.output := by lin_cert using reduction22341.terms
theorem substitutionProof22341 : IsMapEvaluation generatorImages reduction22341.relations [8,8,64,635] reduction22341.output := by lin_cert using reduction22341.terms
def image22342 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22342 : InImage map_60_258 image22342 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22342 : Bundle := named_bundle% "RealMapCertificates/relations/basis22342.json"
theorem reductionProof22342 : EqualModuloRelations reduction22342.relations reduction22342.input reduction22342.output := by lin_cert using reduction22342.terms
theorem substitutionProof22342 : IsMapEvaluation generatorImages reduction22342.relations [8,8,8,8,8,17,433] reduction22342.output := by lin_cert using reduction22342.terms
def image22343 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22343 : InImage map_60_258 image22343 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22343 : Bundle := named_bundle% "RealMapCertificates/relations/basis22343.json"
theorem reductionProof22343 : EqualModuloRelations reduction22343.relations reduction22343.input reduction22343.output := by lin_cert using reduction22343.terms
theorem substitutionProof22343 : IsMapEvaluation generatorImages reduction22343.relations [8,8,8,8,8,8,8,8,8,8,8,8,31] reduction22343.output := by lin_cert using reduction22343.terms
def map_60_259 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image22696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22696 : InImage map_60_259 image22696 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22696 : Bundle := named_bundle% "RealMapCertificates/relations/basis22696.json"
theorem reductionProof22696 : EqualModuloRelations reduction22696.relations reduction22696.input reduction22696.output := by lin_cert using reduction22696.terms
theorem substitutionProof22696 : IsMapEvaluation generatorImages reduction22696.relations [1,2627] reduction22696.output := by lin_cert using reduction22696.terms
def image22697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22697 : InImage map_60_259 image22697 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22697 : Bundle := named_bundle% "RealMapCertificates/relations/basis22697.json"
theorem reductionProof22697 : EqualModuloRelations reduction22697.relations reduction22697.input reduction22697.output := by lin_cert using reduction22697.terms
theorem substitutionProof22697 : IsMapEvaluation generatorImages reduction22697.relations [0,0,8,8,16,1033] reduction22697.output := by lin_cert using reduction22697.terms
def map_60_260 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image23017 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23017 : InImage map_60_260 image23017 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23017 : Bundle := named_bundle% "RealMapCertificates/relations/basis23017.json"
theorem reductionProof23017 : EqualModuloRelations reduction23017.relations reduction23017.input reduction23017.output := by lin_cert using reduction23017.terms
theorem substitutionProof23017 : IsMapEvaluation generatorImages reduction23017.relations [2792] reduction23017.output := by lin_cert using reduction23017.terms
def image23018 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23018 : InImage map_60_260 image23018 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23018 : Bundle := named_bundle% "RealMapCertificates/relations/basis23018.json"
theorem reductionProof23018 : EqualModuloRelations reduction23018.relations reduction23018.input reduction23018.output := by lin_cert using reduction23018.terms
theorem substitutionProof23018 : IsMapEvaluation generatorImages reduction23018.relations [8,8,8,8,8,16,452] reduction23018.output := by lin_cert using reduction23018.terms
def image23019 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23019 : InImage map_60_260 image23019 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23019 : Bundle := named_bundle% "RealMapCertificates/relations/basis23019.json"
theorem reductionProof23019 : EqualModuloRelations reduction23019.relations reduction23019.input reduction23019.output := by lin_cert using reduction23019.terms
theorem substitutionProof23019 : IsMapEvaluation generatorImages reduction23019.relations [0,0,0,0,149,685] reduction23019.output := by lin_cert using reduction23019.terms
def map_60_261 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image23457 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23457 : InImage map_60_261 image23457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23457 : Bundle := named_bundle% "RealMapCertificates/relations/basis23457.json"
theorem reductionProof23457 : EqualModuloRelations reduction23457.relations reduction23457.input reduction23457.output := by lin_cert using reduction23457.terms
theorem substitutionProof23457 : IsMapEvaluation generatorImages reduction23457.relations [8,8,64,662] reduction23457.output := by lin_cert using reduction23457.terms
def image23458 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23458 : InImage map_60_261 image23458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23458 : Bundle := named_bundle% "RealMapCertificates/relations/basis23458.json"
theorem reductionProof23458 : EqualModuloRelations reduction23458.relations reduction23458.input reduction23458.output := by lin_cert using reduction23458.terms
theorem substitutionProof23458 : IsMapEvaluation generatorImages reduction23458.relations [8,8,8,8,8,16,17,225] reduction23458.output := by lin_cert using reduction23458.terms
def image23459 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23459 : InImage map_60_261 image23459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23459 : Bundle := named_bundle% "RealMapCertificates/relations/basis23459.json"
theorem reductionProof23459 : EqualModuloRelations reduction23459.relations reduction23459.input reduction23459.output := by lin_cert using reduction23459.terms
theorem substitutionProof23459 : IsMapEvaluation generatorImages reduction23459.relations [8,8,8,8,8,8,8,8,8,8,8,8,39] reduction23459.output := by lin_cert using reduction23459.terms
def image23460 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23460 : InImage map_60_261 image23460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23460 : Bundle := named_bundle% "RealMapCertificates/relations/basis23460.json"
theorem reductionProof23460 : EqualModuloRelations reduction23460.relations reduction23460.input reduction23460.output := by lin_cert using reduction23460.terms
theorem substitutionProof23460 : IsMapEvaluation generatorImages reduction23460.relations [0,0,0,0,0,2579] reduction23460.output := by lin_cert using reduction23460.terms
def map_61_61 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image360 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation360 : InImage map_61_61 image360 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction360 : Bundle := named_bundle% "RealMapCertificates/relations/basis360.json"
theorem reductionProof360 : EqualModuloRelations reduction360.relations reduction360.input reduction360.output := by lin_cert using reduction360.terms
theorem substitutionProof360 : IsMapEvaluation generatorImages reduction360.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction360.output := by lin_cert using reduction360.terms
def map_61_182 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7245 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7245 : InImage map_61_182 image7245 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7245 : Bundle := named_bundle% "RealMapCertificates/relations/basis7245.json"
theorem reductionProof7245 : EqualModuloRelations reduction7245.relations reduction7245.input reduction7245.output := by lin_cert using reduction7245.terms
theorem substitutionProof7245 : IsMapEvaluation generatorImages reduction7245.relations [895] reduction7245.output := by lin_cert using reduction7245.terms
def map_61_184 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7511 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7511 : InImage map_61_184 image7511 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7511 : Bundle := named_bundle% "RealMapCertificates/relations/basis7511.json"
theorem reductionProof7511 : EqualModuloRelations reduction7511.relations reduction7511.input reduction7511.output := by lin_cert using reduction7511.terms
theorem substitutionProof7511 : IsMapEvaluation generatorImages reduction7511.relations [926] reduction7511.output := by lin_cert using reduction7511.terms
def map_61_187 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7871 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7871 : InImage map_61_187 image7871 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7871 : Bundle := named_bundle% "RealMapCertificates/relations/basis7871.json"
theorem reductionProof7871 : EqualModuloRelations reduction7871.relations reduction7871.input reduction7871.output := by lin_cert using reduction7871.terms
theorem substitutionProof7871 : IsMapEvaluation generatorImages reduction7871.relations [0,951] reduction7871.output := by lin_cert using reduction7871.terms
def map_61_188 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7948 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7948 : InImage map_61_188 image7948 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7948 : Bundle := named_bundle% "RealMapCertificates/relations/basis7948.json"
theorem reductionProof7948 : EqualModuloRelations reduction7948.relations reduction7948.input reduction7948.output := by lin_cert using reduction7948.terms
theorem substitutionProof7948 : IsMapEvaluation generatorImages reduction7948.relations [1,951] reduction7948.output := by lin_cert using reduction7948.terms
def image7949 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7949 : InImage map_61_188 image7949 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7949 : Bundle := named_bundle% "RealMapCertificates/relations/basis7949.json"
theorem reductionProof7949 : EqualModuloRelations reduction7949.relations reduction7949.input reduction7949.output := by lin_cert using reduction7949.terms
theorem substitutionProof7949 : IsMapEvaluation generatorImages reduction7949.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7949.output := by lin_cert using reduction7949.terms
def map_61_190 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8221 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8221 : InImage map_61_190 image8221 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8221 : Bundle := named_bundle% "RealMapCertificates/relations/basis8221.json"
theorem reductionProof8221 : EqualModuloRelations reduction8221.relations reduction8221.input reduction8221.output := by lin_cert using reduction8221.terms
theorem substitutionProof8221 : IsMapEvaluation generatorImages reduction8221.relations [0,995] reduction8221.output := by lin_cert using reduction8221.terms
def map_61_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8331 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8331 : InImage map_61_191 image8331 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8331 : Bundle := named_bundle% "RealMapCertificates/relations/basis8331.json"
theorem reductionProof8331 : EqualModuloRelations reduction8331.relations reduction8331.input reduction8331.output := by lin_cert using reduction8331.terms
theorem substitutionProof8331 : IsMapEvaluation generatorImages reduction8331.relations [0,0,996] reduction8331.output := by lin_cert using reduction8331.terms
def map_61_193 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8604 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8604 : InImage map_61_193 image8604 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8604 : Bundle := named_bundle% "RealMapCertificates/relations/basis8604.json"
theorem reductionProof8604 : EqualModuloRelations reduction8604.relations reduction8604.input reduction8604.output := by lin_cert using reduction8604.terms
theorem substitutionProof8604 : IsMapEvaluation generatorImages reduction8604.relations [0,8,803] reduction8604.output := by lin_cert using reduction8604.terms
def map_61_194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8704 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8704 : InImage map_61_194 image8704 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8704 : Bundle := named_bundle% "RealMapCertificates/relations/basis8704.json"
theorem reductionProof8704 : EqualModuloRelations reduction8704.relations reduction8704.input reduction8704.output := by lin_cert using reduction8704.terms
theorem substitutionProof8704 : IsMapEvaluation generatorImages reduction8704.relations [0,0,8,804] reduction8704.output := by lin_cert using reduction8704.terms
def map_61_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9007 : InImage map_61_196 image9007 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9007 : Bundle := named_bundle% "RealMapCertificates/relations/basis9007.json"
theorem reductionProof9007 : EqualModuloRelations reduction9007.relations reduction9007.input reduction9007.output := by lin_cert using reduction9007.terms
theorem substitutionProof9007 : IsMapEvaluation generatorImages reduction9007.relations [0,8,851] reduction9007.output := by lin_cert using reduction9007.terms
def map_61_197 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9131 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9131 : InImage map_61_197 image9131 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9131 : Bundle := named_bundle% "RealMapCertificates/relations/basis9131.json"
theorem reductionProof9131 : EqualModuloRelations reduction9131.relations reduction9131.input reduction9131.output := by lin_cert using reduction9131.terms
theorem substitutionProof9131 : IsMapEvaluation generatorImages reduction9131.relations [0,0,8,852] reduction9131.output := by lin_cert using reduction9131.terms
def map_61_199 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9471 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9471 : InImage map_61_199 image9471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9471 : Bundle := named_bundle% "RealMapCertificates/relations/basis9471.json"
theorem reductionProof9471 : EqualModuloRelations reduction9471.relations reduction9471.input reduction9471.output := by lin_cert using reduction9471.terms
theorem substitutionProof9471 : IsMapEvaluation generatorImages reduction9471.relations [0,8,8,661] reduction9471.output := by lin_cert using reduction9471.terms
def map_61_200 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9595 : InImage map_61_200 image9595 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9595 : Bundle := named_bundle% "RealMapCertificates/relations/basis9595.json"
theorem reductionProof9595 : EqualModuloRelations reduction9595.relations reduction9595.input reduction9595.output := by lin_cert using reduction9595.terms
theorem substitutionProof9595 : IsMapEvaluation generatorImages reduction9595.relations [0,0,8,16,554] reduction9595.output := by lin_cert using reduction9595.terms
def map_61_204 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10263 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10263 : InImage map_61_204 image10263 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10263 : Bundle := named_bundle% "RealMapCertificates/relations/basis10263.json"
theorem reductionProof10263 : EqualModuloRelations reduction10263.relations reduction10263.input reduction10263.output := by lin_cert using reduction10263.terms
theorem substitutionProof10263 : IsMapEvaluation generatorImages reduction10263.relations [1254] reduction10263.output := by lin_cert using reduction10263.terms
def image10264 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10264 : InImage map_61_204 image10264 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10264 : Bundle := named_bundle% "RealMapCertificates/relations/basis10264.json"
theorem reductionProof10264 : EqualModuloRelations reduction10264.relations reduction10264.input reduction10264.output := by lin_cert using reduction10264.terms
theorem substitutionProof10264 : IsMapEvaluation generatorImages reduction10264.relations [1253] reduction10264.output := by lin_cert using reduction10264.terms
def map_61_207 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10814 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10814 : InImage map_61_207 image10814 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10814 : Bundle := named_bundle% "RealMapCertificates/relations/basis10814.json"
theorem reductionProof10814 : EqualModuloRelations reduction10814.relations reduction10814.input reduction10814.output := by lin_cert using reduction10814.terms
theorem substitutionProof10814 : IsMapEvaluation generatorImages reduction10814.relations [1311] reduction10814.output := by lin_cert using reduction10814.terms
def map_61_210 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11321 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11321 : InImage map_61_210 image11321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11321 : Bundle := named_bundle% "RealMapCertificates/relations/basis11321.json"
theorem reductionProof11321 : EqualModuloRelations reduction11321.relations reduction11321.input reduction11321.output := by lin_cert using reduction11321.terms
theorem substitutionProof11321 : IsMapEvaluation generatorImages reduction11321.relations [8,1048] reduction11321.output := by lin_cert using reduction11321.terms
def image11322 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11322 : InImage map_61_210 image11322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11322 : Bundle := named_bundle% "RealMapCertificates/relations/basis11322.json"
theorem reductionProof11322 : EqualModuloRelations reduction11322.relations reduction11322.input reduction11322.output := by lin_cert using reduction11322.terms
theorem substitutionProof11322 : IsMapEvaluation generatorImages reduction11322.relations [0,0,0,1312] reduction11322.output := by lin_cert using reduction11322.terms
def map_61_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11538 : InImage map_61_211 image11538 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11538 : Bundle := named_bundle% "RealMapCertificates/relations/basis11538.json"
theorem reductionProof11538 : EqualModuloRelations reduction11538.relations reduction11538.input reduction11538.output := by lin_cert using reduction11538.terms
theorem substitutionProof11538 : IsMapEvaluation generatorImages reduction11538.relations [0,0,0,0,1313] reduction11538.output := by lin_cert using reduction11538.terms
def map_61_213 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11896 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11896 : InImage map_61_213 image11896 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11896 : Bundle := named_bundle% "RealMapCertificates/relations/basis11896.json"
theorem reductionProof11896 : EqualModuloRelations reduction11896.relations reduction11896.input reduction11896.output := by lin_cert using reduction11896.terms
theorem substitutionProof11896 : IsMapEvaluation generatorImages reduction11896.relations [8,1092] reduction11896.output := by lin_cert using reduction11896.terms
def image11897 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11897 : InImage map_61_213 image11897 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11897 : Bundle := named_bundle% "RealMapCertificates/relations/basis11897.json"
theorem reductionProof11897 : EqualModuloRelations reduction11897.relations reduction11897.input reduction11897.output := by lin_cert using reduction11897.terms
theorem substitutionProof11897 : IsMapEvaluation generatorImages reduction11897.relations [0,0,0,1360] reduction11897.output := by lin_cert using reduction11897.terms
def map_61_216 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12459 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12459 : InImage map_61_216 image12459 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12459 : Bundle := named_bundle% "RealMapCertificates/relations/basis12459.json"
theorem reductionProof12459 : EqualModuloRelations reduction12459.relations reduction12459.input reduction12459.output := by lin_cert using reduction12459.terms
theorem substitutionProof12459 : IsMapEvaluation generatorImages reduction12459.relations [8,8,886] reduction12459.output := by lin_cert using reduction12459.terms
def map_61_217 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12682 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12682 : InImage map_61_217 image12682 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12682 : Bundle := named_bundle% "RealMapCertificates/relations/basis12682.json"
theorem reductionProof12682 : EqualModuloRelations reduction12682.relations reduction12682.input reduction12682.output := by lin_cert using reduction12682.terms
theorem substitutionProof12682 : IsMapEvaluation generatorImages reduction12682.relations [0,0,0,0,0,1395] reduction12682.output := by lin_cert using reduction12682.terms
def map_61_218 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12820 : InImage map_61_218 image12820 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12820 : Bundle := named_bundle% "RealMapCertificates/relations/basis12820.json"
theorem reductionProof12820 : EqualModuloRelations reduction12820.relations reduction12820.input reduction12820.output := by lin_cert using reduction12820.terms
theorem substitutionProof12820 : IsMapEvaluation generatorImages reduction12820.relations [0,0,0,0,0,17,917] reduction12820.output := by lin_cert using reduction12820.terms
def map_61_219 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13042 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13042 : InImage map_61_219 image13042 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13042 : Bundle := named_bundle% "RealMapCertificates/relations/basis13042.json"
theorem reductionProof13042 : EqualModuloRelations reduction13042.relations reduction13042.input reduction13042.output := by lin_cert using reduction13042.terms
theorem substitutionProof13042 : IsMapEvaluation generatorImages reduction13042.relations [8,8,915] reduction13042.output := by lin_cert using reduction13042.terms
def image13043 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13043 : InImage map_61_219 image13043 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13043 : Bundle := named_bundle% "RealMapCertificates/relations/basis13043.json"
theorem reductionProof13043 : EqualModuloRelations reduction13043.relations reduction13043.input reduction13043.output := by lin_cert using reduction13043.terms
theorem substitutionProof13043 : IsMapEvaluation generatorImages reduction13043.relations [0,0,0,0,0,0,0,1396] reduction13043.output := by lin_cert using reduction13043.terms
def map_61_220 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13239 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13239 : InImage map_61_220 image13239 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13239 : Bundle := named_bundle% "RealMapCertificates/relations/basis13239.json"
theorem reductionProof13239 : EqualModuloRelations reduction13239.relations reduction13239.input reduction13239.output := by lin_cert using reduction13239.terms
theorem substitutionProof13239 : IsMapEvaluation generatorImages reduction13239.relations [0,0,0,0,0,0,0,0,1397] reduction13239.output := by lin_cert using reduction13239.terms
def map_61_222 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image13591 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13591 : InImage map_61_222 image13591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13591 : Bundle := named_bundle% "RealMapCertificates/relations/basis13591.json"
theorem reductionProof13591 : EqualModuloRelations reduction13591.relations reduction13591.input reduction13591.output := by lin_cert using reduction13591.terms
theorem substitutionProof13591 : IsMapEvaluation generatorImages reduction13591.relations [1588] reduction13591.output := by lin_cert using reduction13591.terms
def image13592 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13592 : InImage map_61_222 image13592 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13592 : Bundle := named_bundle% "RealMapCertificates/relations/basis13592.json"
theorem reductionProof13592 : EqualModuloRelations reduction13592.relations reduction13592.input reduction13592.output := by lin_cert using reduction13592.terms
theorem substitutionProof13592 : IsMapEvaluation generatorImages reduction13592.relations [8,8,8,736] reduction13592.output := by lin_cert using reduction13592.terms
def map_61_225 : Matrix 6 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14164 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14164 : InImage map_61_225 image14164 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14164 : Bundle := named_bundle% "RealMapCertificates/relations/basis14164.json"
theorem reductionProof14164 : EqualModuloRelations reduction14164.relations reduction14164.input reduction14164.output := by lin_cert using reduction14164.terms
theorem substitutionProof14164 : IsMapEvaluation generatorImages reduction14164.relations [8,1313] reduction14164.output := by lin_cert using reduction14164.terms
def image14165 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14165 : InImage map_61_225 image14165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14165 : Bundle := named_bundle% "RealMapCertificates/relations/basis14165.json"
theorem reductionProof14165 : EqualModuloRelations reduction14165.relations reduction14165.input reduction14165.output := by lin_cert using reduction14165.terms
theorem substitutionProof14165 : IsMapEvaluation generatorImages reduction14165.relations [8,8,8,777] reduction14165.output := by lin_cert using reduction14165.terms
def map_61_226 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14359 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14359 : InImage map_61_226 image14359 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14359 : Bundle := named_bundle% "RealMapCertificates/relations/basis14359.json"
theorem reductionProof14359 : EqualModuloRelations reduction14359.relations reduction14359.input reduction14359.output := by lin_cert using reduction14359.terms
theorem substitutionProof14359 : IsMapEvaluation generatorImages reduction14359.relations [5,1395] reduction14359.output := by lin_cert using reduction14359.terms
def map_61_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14724 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14724 : InImage map_61_228 image14724 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14724 : Bundle := named_bundle% "RealMapCertificates/relations/basis14724.json"
theorem reductionProof14724 : EqualModuloRelations reduction14724.relations reduction14724.input reduction14724.output := by lin_cert using reduction14724.terms
theorem substitutionProof14724 : IsMapEvaluation generatorImages reduction14724.relations [8,1361] reduction14724.output := by lin_cert using reduction14724.terms
def image14725 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14725 : InImage map_61_228 image14725 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14725 : Bundle := named_bundle% "RealMapCertificates/relations/basis14725.json"
theorem reductionProof14725 : EqualModuloRelations reduction14725.relations reduction14725.input reduction14725.output := by lin_cert using reduction14725.terms
theorem substitutionProof14725 : IsMapEvaluation generatorImages reduction14725.relations [8,8,8,8,607] reduction14725.output := by lin_cert using reduction14725.terms
def image14726 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14726 : InImage map_61_228 image14726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14726 : Bundle := named_bundle% "RealMapCertificates/relations/basis14726.json"
theorem reductionProof14726 : EqualModuloRelations reduction14726.relations reduction14726.input reduction14726.output := by lin_cert using reduction14726.terms
theorem substitutionProof14726 : IsMapEvaluation generatorImages reduction14726.relations [0,1679] reduction14726.output := by lin_cert using reduction14726.terms
def map_61_229 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14958 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14958 : InImage map_61_229 image14958 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14958 : Bundle := named_bundle% "RealMapCertificates/relations/basis14958.json"
theorem reductionProof14958 : EqualModuloRelations reduction14958.relations reduction14958.input reduction14958.output := by lin_cert using reduction14958.terms
theorem substitutionProof14958 : IsMapEvaluation generatorImages reduction14958.relations [0,17,1142] reduction14958.output := by lin_cert using reduction14958.terms
def map_61_231 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image15343 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15343 : InImage map_61_231 image15343 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15343 : Bundle := named_bundle% "RealMapCertificates/relations/basis15343.json"
theorem reductionProof15343 : EqualModuloRelations reduction15343.relations reduction15343.input reduction15343.output := by lin_cert using reduction15343.terms
theorem substitutionProof15343 : IsMapEvaluation generatorImages reduction15343.relations [8,16,917] reduction15343.output := by lin_cert using reduction15343.terms
def image15344 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15344 : InImage map_61_231 image15344 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15344 : Bundle := named_bundle% "RealMapCertificates/relations/basis15344.json"
theorem reductionProof15344 : EqualModuloRelations reduction15344.relations reduction15344.input reduction15344.output := by lin_cert using reduction15344.terms
theorem substitutionProof15344 : IsMapEvaluation generatorImages reduction15344.relations [8,8,8,8,634] reduction15344.output := by lin_cert using reduction15344.terms
def image15345 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15345 : InImage map_61_231 image15345 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15345 : Bundle := named_bundle% "RealMapCertificates/relations/basis15345.json"
theorem reductionProof15345 : EqualModuloRelations reduction15345.relations reduction15345.input reduction15345.output := by lin_cert using reduction15345.terms
theorem substitutionProof15345 : IsMapEvaluation generatorImages reduction15345.relations [0,8,1395] reduction15345.output := by lin_cert using reduction15345.terms
def map_61_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15576 : InImage map_61_232 image15576 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15576 : Bundle := named_bundle% "RealMapCertificates/relations/basis15576.json"
theorem reductionProof15576 : EqualModuloRelations reduction15576.relations reduction15576.input reduction15576.output := by lin_cert using reduction15576.terms
theorem substitutionProof15576 : IsMapEvaluation generatorImages reduction15576.relations [0,8,17,917] reduction15576.output := by lin_cert using reduction15576.terms
def map_61_234 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15990 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15990 : InImage map_61_234 image15990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15990 : Bundle := named_bundle% "RealMapCertificates/relations/basis15990.json"
theorem reductionProof15990 : EqualModuloRelations reduction15990.relations reduction15990.input reduction15990.output := by lin_cert using reduction15990.terms
theorem substitutionProof15990 : IsMapEvaluation generatorImages reduction15990.relations [8,8,1142] reduction15990.output := by lin_cert using reduction15990.terms
def image15991 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15991 : InImage map_61_234 image15991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15991 : Bundle := named_bundle% "RealMapCertificates/relations/basis15991.json"
theorem reductionProof15991 : EqualModuloRelations reduction15991.relations reduction15991.input reduction15991.output := by lin_cert using reduction15991.terms
theorem substitutionProof15991 : IsMapEvaluation generatorImages reduction15991.relations [8,8,8,8,8,498] reduction15991.output := by lin_cert using reduction15991.terms
def image15992 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15992 : InImage map_61_234 image15992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15992 : Bundle := named_bundle% "RealMapCertificates/relations/basis15992.json"
theorem reductionProof15992 : EqualModuloRelations reduction15992.relations reduction15992.input reduction15992.output := by lin_cert using reduction15992.terms
theorem substitutionProof15992 : IsMapEvaluation generatorImages reduction15992.relations [0,0,0,0,0,0,0,0,0,0,0,0,1589] reduction15992.output := by lin_cert using reduction15992.terms
def map_61_235 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16243 : InImage map_61_235 image16243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16243 : Bundle := named_bundle% "RealMapCertificates/relations/basis16243.json"
theorem reductionProof16243 : EqualModuloRelations reduction16243.relations reduction16243.input reduction16243.output := by lin_cert using reduction16243.terms
theorem substitutionProof16243 : IsMapEvaluation generatorImages reduction16243.relations [0,8,17,953] reduction16243.output := by lin_cert using reduction16243.terms
def image16244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16244 : InImage map_61_235 image16244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16244 : Bundle := named_bundle% "RealMapCertificates/relations/basis16244.json"
theorem reductionProof16244 : EqualModuloRelations reduction16244.relations reduction16244.input reduction16244.output := by lin_cert using reduction16244.terms
theorem substitutionProof16244 : IsMapEvaluation generatorImages reduction16244.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1566] reduction16244.output := by lin_cert using reduction16244.terms
def map_61_236 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16418 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16418 : InImage map_61_236 image16418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16418 : Bundle := named_bundle% "RealMapCertificates/relations/basis16418.json"
theorem reductionProof16418 : EqualModuloRelations reduction16418.relations reduction16418.input reduction16418.output := by lin_cert using reduction16418.terms
theorem substitutionProof16418 : IsMapEvaluation generatorImages reduction16418.relations [1889] reduction16418.output := by lin_cert using reduction16418.terms
def map_61_237 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16662 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16662 : InImage map_61_237 image16662 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16662 : Bundle := named_bundle% "RealMapCertificates/relations/basis16662.json"
theorem reductionProof16662 : EqualModuloRelations reduction16662.relations reduction16662.input reduction16662.output := by lin_cert using reduction16662.terms
theorem substitutionProof16662 : IsMapEvaluation generatorImages reduction16662.relations [8,8,8,917] reduction16662.output := by lin_cert using reduction16662.terms
def image16663 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16663 : InImage map_61_237 image16663 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16663 : Bundle := named_bundle% "RealMapCertificates/relations/basis16663.json"
theorem reductionProof16663 : EqualModuloRelations reduction16663.relations reduction16663.input reduction16663.output := by lin_cert using reduction16663.terms
theorem substitutionProof16663 : IsMapEvaluation generatorImages reduction16663.relations [8,8,8,8,8,528] reduction16663.output := by lin_cert using reduction16663.terms
def map_61_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17108 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17108 : InImage map_61_239 image17108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17108 : Bundle := named_bundle% "RealMapCertificates/relations/basis17108.json"
theorem reductionProof17108 : EqualModuloRelations reduction17108.relations reduction17108.input reduction17108.output := by lin_cert using reduction17108.terms
theorem substitutionProof17108 : IsMapEvaluation generatorImages reduction17108.relations [1964] reduction17108.output := by lin_cert using reduction17108.terms
def map_61_240 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17362 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17362 : InImage map_61_240 image17362 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17362 : Bundle := named_bundle% "RealMapCertificates/relations/basis17362.json"
theorem reductionProof17362 : EqualModuloRelations reduction17362.relations reduction17362.input reduction17362.output := by lin_cert using reduction17362.terms
theorem substitutionProof17362 : IsMapEvaluation generatorImages reduction17362.relations [8,8,8,953] reduction17362.output := by lin_cert using reduction17362.terms
def image17363 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17363 : InImage map_61_240 image17363 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17363 : Bundle := named_bundle% "RealMapCertificates/relations/basis17363.json"
theorem reductionProof17363 : EqualModuloRelations reduction17363.relations reduction17363.input reduction17363.output := by lin_cert using reduction17363.terms
theorem substitutionProof17363 : IsMapEvaluation generatorImages reduction17363.relations [8,8,8,8,8,8,354] reduction17363.output := by lin_cert using reduction17363.terms
def map_61_242 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image17867 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17867 : InImage map_61_242 image17867 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17867 : Bundle := named_bundle% "RealMapCertificates/relations/basis17867.json"
theorem reductionProof17867 : EqualModuloRelations reduction17867.relations reduction17867.input reduction17867.output := by lin_cert using reduction17867.terms
theorem substitutionProof17867 : IsMapEvaluation generatorImages reduction17867.relations [8,1618] reduction17867.output := by lin_cert using reduction17867.terms
def image17868 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17868 : InImage map_61_242 image17868 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17868 : Bundle := named_bundle% "RealMapCertificates/relations/basis17868.json"
theorem reductionProof17868 : EqualModuloRelations reduction17868.relations reduction17868.input reduction17868.output := by lin_cert using reduction17868.terms
theorem substitutionProof17868 : IsMapEvaluation generatorImages reduction17868.relations [0,0,0,1965] reduction17868.output := by lin_cert using reduction17868.terms
def map_61_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18141 : InImage map_61_243 image18141 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18141 : Bundle := named_bundle% "RealMapCertificates/relations/basis18141.json"
theorem reductionProof18141 : EqualModuloRelations reduction18141.relations reduction18141.input reduction18141.output := by lin_cert using reduction18141.terms
theorem substitutionProof18141 : IsMapEvaluation generatorImages reduction18141.relations [8,8,8,16,636] reduction18141.output := by lin_cert using reduction18141.terms
def image18142 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18142 : InImage map_61_243 image18142 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18142 : Bundle := named_bundle% "RealMapCertificates/relations/basis18142.json"
theorem reductionProof18142 : EqualModuloRelations reduction18142.relations reduction18142.input reduction18142.output := by lin_cert using reduction18142.terms
theorem substitutionProof18142 : IsMapEvaluation generatorImages reduction18142.relations [8,8,8,8,8,8,401] reduction18142.output := by lin_cert using reduction18142.terms
def image18143 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18143 : InImage map_61_243 image18143 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18143 : Bundle := named_bundle% "RealMapCertificates/relations/basis18143.json"
theorem reductionProof18143 : EqualModuloRelations reduction18143.relations reduction18143.input reduction18143.output := by lin_cert using reduction18143.terms
theorem substitutionProof18143 : IsMapEvaluation generatorImages reduction18143.relations [0,0,2035] reduction18143.output := by lin_cert using reduction18143.terms
def map_61_245 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image18613 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18613 : InImage map_61_245 image18613 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18613 : Bundle := named_bundle% "RealMapCertificates/relations/basis18613.json"
theorem reductionProof18613 : EqualModuloRelations reduction18613.relations reduction18613.input reduction18613.output := by lin_cert using reduction18613.terms
theorem substitutionProof18613 : IsMapEvaluation generatorImages reduction18613.relations [8,1681] reduction18613.output := by lin_cert using reduction18613.terms
def image18614 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18614 : InImage map_61_245 image18614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18614 : Bundle := named_bundle% "RealMapCertificates/relations/basis18614.json"
theorem reductionProof18614 : EqualModuloRelations reduction18614.relations reduction18614.input reduction18614.output := by lin_cert using reduction18614.terms
theorem substitutionProof18614 : IsMapEvaluation generatorImages reduction18614.relations [0,0,0,2057] reduction18614.output := by lin_cert using reduction18614.terms
def map_61_246 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image18888 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18888 : InImage map_61_246 image18888 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18888 : Bundle := named_bundle% "RealMapCertificates/relations/basis18888.json"
theorem reductionProof18888 : EqualModuloRelations reduction18888.relations reduction18888.input reduction18888.output := by lin_cert using reduction18888.terms
theorem substitutionProof18888 : IsMapEvaluation generatorImages reduction18888.relations [8,8,8,8,806] reduction18888.output := by lin_cert using reduction18888.terms
def image18889 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18889 : InImage map_61_246 image18889 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18889 : Bundle := named_bundle% "RealMapCertificates/relations/basis18889.json"
theorem reductionProof18889 : EqualModuloRelations reduction18889.relations reduction18889.input reduction18889.output := by lin_cert using reduction18889.terms
theorem substitutionProof18889 : IsMapEvaluation generatorImages reduction18889.relations [8,8,8,8,8,8,8,265] reduction18889.output := by lin_cert using reduction18889.terms
def map_61_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19194 : InImage map_61_247 image19194 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19194 : Bundle := named_bundle% "RealMapCertificates/relations/basis19194.json"
theorem reductionProof19194 : EqualModuloRelations reduction19194.relations reduction19194.input reduction19194.output := by lin_cert using reduction19194.terms
theorem substitutionProof19194 : IsMapEvaluation generatorImages reduction19194.relations [0,64,916] reduction19194.output := by lin_cert using reduction19194.terms
def map_61_248 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19407 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19407 : InImage map_61_248 image19407 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19407 : Bundle := named_bundle% "RealMapCertificates/relations/basis19407.json"
theorem reductionProof19407 : EqualModuloRelations reduction19407.relations reduction19407.input reduction19407.output := by lin_cert using reduction19407.terms
theorem substitutionProof19407 : IsMapEvaluation generatorImages reduction19407.relations [8,8,1398] reduction19407.output := by lin_cert using reduction19407.terms
def image19408 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19408 : InImage map_61_248 image19408 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19408 : Bundle := named_bundle% "RealMapCertificates/relations/basis19408.json"
theorem reductionProof19408 : EqualModuloRelations reduction19408.relations reduction19408.input reduction19408.output := by lin_cert using reduction19408.terms
theorem substitutionProof19408 : IsMapEvaluation generatorImages reduction19408.relations [1,64,916] reduction19408.output := by lin_cert using reduction19408.terms
def image19409 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19409 : InImage map_61_248 image19409 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19409 : Bundle := named_bundle% "RealMapCertificates/relations/basis19409.json"
theorem reductionProof19409 : EqualModuloRelations reduction19409.relations reduction19409.input reduction19409.output := by lin_cert using reduction19409.terms
theorem substitutionProof19409 : IsMapEvaluation generatorImages reduction19409.relations [0,0,64,917] reduction19409.output := by lin_cert using reduction19409.terms
def map_61_249 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19705 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19705 : InImage map_61_249 image19705 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19705 : Bundle := named_bundle% "RealMapCertificates/relations/basis19705.json"
theorem reductionProof19705 : EqualModuloRelations reduction19705.relations reduction19705.input reduction19705.output := by lin_cert using reduction19705.terms
theorem substitutionProof19705 : IsMapEvaluation generatorImages reduction19705.relations [8,8,8,8,8,636] reduction19705.output := by lin_cert using reduction19705.terms
def image19706 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19706 : InImage map_61_249 image19706 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19706 : Bundle := named_bundle% "RealMapCertificates/relations/basis19706.json"
theorem reductionProof19706 : EqualModuloRelations reduction19706.relations reduction19706.input reduction19706.output := by lin_cert using reduction19706.terms
theorem substitutionProof19706 : IsMapEvaluation generatorImages reduction19706.relations [8,8,8,8,8,8,8,283] reduction19706.output := by lin_cert using reduction19706.terms
def image19707 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19707 : InImage map_61_249 image19707 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19707 : Bundle := named_bundle% "RealMapCertificates/relations/basis19707.json"
theorem reductionProof19707 : EqualModuloRelations reduction19707.relations reduction19707.input reduction19707.output := by lin_cert using reduction19707.terms
theorem substitutionProof19707 : IsMapEvaluation generatorImages reduction19707.relations [0,0,0,0,17,1471] reduction19707.output := by lin_cert using reduction19707.terms
def map_61_250 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19979 : InImage map_61_250 image19979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19979 : Bundle := named_bundle% "RealMapCertificates/relations/basis19979.json"
theorem reductionProof19979 : EqualModuloRelations reduction19979.relations reduction19979.input reduction19979.output := by lin_cert using reduction19979.terms
theorem substitutionProof19979 : IsMapEvaluation generatorImages reduction19979.relations [0,64,952] reduction19979.output := by lin_cert using reduction19979.terms
def image19980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19980 : InImage map_61_250 image19980 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19980 : Bundle := named_bundle% "RealMapCertificates/relations/basis19980.json"
theorem reductionProof19980 : EqualModuloRelations reduction19980.relations reduction19980.input reduction19980.output := by lin_cert using reduction19980.terms
theorem substitutionProof19980 : IsMapEvaluation generatorImages reduction19980.relations [0,0,0,0,2193] reduction19980.output := by lin_cert using reduction19980.terms
def map_61_251 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20215 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20215 : InImage map_61_251 image20215 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20215 : Bundle := named_bundle% "RealMapCertificates/relations/basis20215.json"
theorem reductionProof20215 : EqualModuloRelations reduction20215.relations reduction20215.input reduction20215.output := by lin_cert using reduction20215.terms
theorem substitutionProof20215 : IsMapEvaluation generatorImages reduction20215.relations [8,8,1470] reduction20215.output := by lin_cert using reduction20215.terms
def image20216 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20216 : InImage map_61_251 image20216 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20216 : Bundle := named_bundle% "RealMapCertificates/relations/basis20216.json"
theorem reductionProof20216 : EqualModuloRelations reduction20216.relations reduction20216.input reduction20216.output := by lin_cert using reduction20216.terms
theorem substitutionProof20216 : IsMapEvaluation generatorImages reduction20216.relations [0,0,64,953] reduction20216.output := by lin_cert using reduction20216.terms
def image20217 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20217 : InImage map_61_251 image20217 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20217 : Bundle := named_bundle% "RealMapCertificates/relations/basis20217.json"
theorem reductionProof20217 : EqualModuloRelations reduction20217.relations reduction20217.input reduction20217.output := by lin_cert using reduction20217.terms
theorem substitutionProof20217 : IsMapEvaluation generatorImages reduction20217.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction20217.output := by lin_cert using reduction20217.terms
def map_61_252 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20507 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20507 : InImage map_61_252 image20507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20507 : Bundle := named_bundle% "RealMapCertificates/relations/basis20507.json"
theorem reductionProof20507 : EqualModuloRelations reduction20507.relations reduction20507.input reduction20507.output := by lin_cert using reduction20507.terms
theorem substitutionProof20507 : IsMapEvaluation generatorImages reduction20507.relations [8,8,8,8,8,663] reduction20507.output := by lin_cert using reduction20507.terms
def image20508 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20508 : InImage map_61_252 image20508 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20508 : Bundle := named_bundle% "RealMapCertificates/relations/basis20508.json"
theorem reductionProof20508 : EqualModuloRelations reduction20508.relations reduction20508.input reduction20508.output := by lin_cert using reduction20508.terms
theorem substitutionProof20508 : IsMapEvaluation generatorImages reduction20508.relations [8,8,8,8,8,8,8,8,211] reduction20508.output := by lin_cert using reduction20508.terms
def image20509 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20509 : InImage map_61_252 image20509 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20509 : Bundle := named_bundle% "RealMapCertificates/relations/basis20509.json"
theorem reductionProof20509 : EqualModuloRelations reduction20509.relations reduction20509.input reduction20509.output := by lin_cert using reduction20509.terms
theorem substitutionProof20509 : IsMapEvaluation generatorImages reduction20509.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction20509.output := by lin_cert using reduction20509.terms
def map_61_253 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20803 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20803 : InImage map_61_253 image20803 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20803 : Bundle := named_bundle% "RealMapCertificates/relations/basis20803.json"
theorem reductionProof20803 : EqualModuloRelations reduction20803.relations reduction20803.input reduction20803.output := by lin_cert using reduction20803.terms
theorem substitutionProof20803 : IsMapEvaluation generatorImages reduction20803.relations [0,16,64,635] reduction20803.output := by lin_cert using reduction20803.terms
def map_61_254 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21040 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21040 : InImage map_61_254 image21040 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21040 : Bundle := named_bundle% "RealMapCertificates/relations/basis21040.json"
theorem reductionProof21040 : EqualModuloRelations reduction21040.relations reduction21040.input reduction21040.output := by lin_cert using reduction21040.terms
theorem substitutionProof21040 : IsMapEvaluation generatorImages reduction21040.relations [8,8,8,1179] reduction21040.output := by lin_cert using reduction21040.terms
def image21041 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21041 : InImage map_61_254 image21041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21041 : Bundle := named_bundle% "RealMapCertificates/relations/basis21041.json"
theorem reductionProof21041 : EqualModuloRelations reduction21041.relations reduction21041.input reduction21041.output := by lin_cert using reduction21041.terms
theorem substitutionProof21041 : IsMapEvaluation generatorImages reduction21041.relations [0,0,16,64,636] reduction21041.output := by lin_cert using reduction21041.terms
def image21042 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21042 : InImage map_61_254 image21042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21042 : Bundle := named_bundle% "RealMapCertificates/relations/basis21042.json"
theorem reductionProof21042 : EqualModuloRelations reduction21042.relations reduction21042.input reduction21042.output := by lin_cert using reduction21042.terms
theorem substitutionProof21042 : IsMapEvaluation generatorImages reduction21042.relations [0,0,0,64,969] reduction21042.output := by lin_cert using reduction21042.terms
def map_61_255 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21382 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21382 : InImage map_61_255 image21382 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21382 : Bundle := named_bundle% "RealMapCertificates/relations/basis21382.json"
theorem reductionProof21382 : EqualModuloRelations reduction21382.relations reduction21382.input reduction21382.output := by lin_cert using reduction21382.terms
theorem substitutionProof21382 : IsMapEvaluation generatorImages reduction21382.relations [8,8,8,8,8,16,403] reduction21382.output := by lin_cert using reduction21382.terms
def image21383 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21383 : InImage map_61_255 image21383 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21383 : Bundle := named_bundle% "RealMapCertificates/relations/basis21383.json"
theorem reductionProof21383 : EqualModuloRelations reduction21383.relations reduction21383.input reduction21383.output := by lin_cert using reduction21383.terms
theorem substitutionProof21383 : IsMapEvaluation generatorImages reduction21383.relations [8,8,8,8,8,8,8,8,223] reduction21383.output := by lin_cert using reduction21383.terms
def image21384 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21384 : InImage map_61_255 image21384 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21384 : Bundle := named_bundle% "RealMapCertificates/relations/basis21384.json"
theorem reductionProof21384 : EqualModuloRelations reduction21384.relations reduction21384.input reduction21384.output := by lin_cert using reduction21384.terms
theorem substitutionProof21384 : IsMapEvaluation generatorImages reduction21384.relations [0,0,0,0,138,685] reduction21384.output := by lin_cert using reduction21384.terms
def map_61_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21693 : InImage map_61_256 image21693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21693 : Bundle := named_bundle% "RealMapCertificates/relations/basis21693.json"
theorem reductionProof21693 : EqualModuloRelations reduction21693.relations reduction21693.input reduction21693.output := by lin_cert using reduction21693.terms
theorem substitutionProof21693 : IsMapEvaluation generatorImages reduction21693.relations [0,0,0,0,0,17,17,1033] reduction21693.output := by lin_cert using reduction21693.terms
def map_61_257 : Matrix 5 3 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21989 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21989 : InImage map_61_257 image21989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21989 : Bundle := named_bundle% "RealMapCertificates/relations/basis21989.json"
theorem reductionProof21989 : EqualModuloRelations reduction21989.relations reduction21989.input reduction21989.output := by lin_cert using reduction21989.terms
theorem substitutionProof21989 : IsMapEvaluation generatorImages reduction21989.relations [8,8,8,1241] reduction21989.output := by lin_cert using reduction21989.terms
def image21990 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21990 : InImage map_61_257 image21990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21990 : Bundle := named_bundle% "RealMapCertificates/relations/basis21990.json"
theorem reductionProof21990 : EqualModuloRelations reduction21990.relations reduction21990.input reduction21990.output := by lin_cert using reduction21990.terms
theorem substitutionProof21990 : IsMapEvaluation generatorImages reduction21990.relations [0,0,0,0,0,0,246,402] reduction21990.output := by lin_cert using reduction21990.terms
def image21991 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21991 : InImage map_61_257 image21991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21991 : Bundle := named_bundle% "RealMapCertificates/relations/basis21991.json"
theorem reductionProof21991 : EqualModuloRelations reduction21991.relations reduction21991.input reduction21991.output := by lin_cert using reduction21991.terms
theorem substitutionProof21991 : IsMapEvaluation generatorImages reduction21991.relations [0,0,0,0,0,0,59,1033] reduction21991.output := by lin_cert using reduction21991.terms
end RealMapCertificates
