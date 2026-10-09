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
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 635 => []
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 662 => []
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 895 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 926 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 952 => []
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1240 => [[4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1253 => []
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1469 => [[4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1471 => []
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1589 => []
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1680 => [[4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1734 => []
  | 1736 => []
  | 1737 => []
  | 1749 => [[0,0,4,4,4,4,4,4,4,4,8,12,12]]
  | 1889 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1963 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1965 => []
  | 2035 => []
  | 2057 => []
  | 2089 => [[0,0,4,4,4,4,4,4,4,4,4,8,12,12]]
  | 2193 => []
  | 2487 => []
  | 2536 => [[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]]
  | 2673 => [[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]]
  | 2674 => [[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]]
  | 2792 => []
  | _ => []
def map_61_258 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image22338 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22338 : InImage map_61_258 image22338 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22338 : Bundle := named_bundle% "RealMapCertificates/relations/basis22338.json"
theorem reductionProof22338 : EqualModuloRelations reduction22338.relations reduction22338.input reduction22338.output := by lin_cert using reduction22338.terms
theorem substitutionProof22338 : IsMapEvaluation generatorImages reduction22338.relations [2674] reduction22338.output := by lin_cert using reduction22338.terms
def image22339 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22339 : InImage map_61_258 image22339 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22339 : Bundle := named_bundle% "RealMapCertificates/relations/basis22339.json"
theorem reductionProof22339 : EqualModuloRelations reduction22339.relations reduction22339.input reduction22339.output := by lin_cert using reduction22339.terms
theorem substitutionProof22339 : IsMapEvaluation generatorImages reduction22339.relations [8,8,8,8,8,8,556] reduction22339.output := by lin_cert using reduction22339.terms
def image22340 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22340 : InImage map_61_258 image22340 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22340 : Bundle := named_bundle% "RealMapCertificates/relations/basis22340.json"
theorem reductionProof22340 : EqualModuloRelations reduction22340.relations reduction22340.input reduction22340.output := by lin_cert using reduction22340.terms
theorem substitutionProof22340 : IsMapEvaluation generatorImages reduction22340.relations [8,8,8,8,8,8,8,8,8,161] reduction22340.output := by lin_cert using reduction22340.terms
def map_61_260 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image23015 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23015 : InImage map_61_260 image23015 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23015 : Bundle := named_bundle% "RealMapCertificates/relations/basis23015.json"
theorem reductionProof23015 : EqualModuloRelations reduction23015.relations reduction23015.input reduction23015.output := by lin_cert using reduction23015.terms
theorem substitutionProof23015 : IsMapEvaluation generatorImages reduction23015.relations [17,1734] reduction23015.output := by lin_cert using reduction23015.terms
def image23016 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23016 : InImage map_61_260 image23016 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23016 : Bundle := named_bundle% "RealMapCertificates/relations/basis23016.json"
theorem reductionProof23016 : EqualModuloRelations reduction23016.relations reduction23016.input reduction23016.output := by lin_cert using reduction23016.terms
theorem substitutionProof23016 : IsMapEvaluation generatorImages reduction23016.relations [8,8,8,8,970] reduction23016.output := by lin_cert using reduction23016.terms
def map_61_261 : Matrix 5 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image23452 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation23452 : InImage map_61_261 image23452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23452 : Bundle := named_bundle% "RealMapCertificates/relations/basis23452.json"
theorem reductionProof23452 : EqualModuloRelations reduction23452.relations reduction23452.input reduction23452.output := by lin_cert using reduction23452.terms
theorem substitutionProof23452 : IsMapEvaluation generatorImages reduction23452.relations [17,1749] reduction23452.output := by lin_cert using reduction23452.terms
def image23453 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23453 : InImage map_61_261 image23453 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23453 : Bundle := named_bundle% "RealMapCertificates/relations/basis23453.json"
theorem reductionProof23453 : EqualModuloRelations reduction23453.relations reduction23453.input reduction23453.output := by lin_cert using reduction23453.terms
theorem substitutionProof23453 : IsMapEvaluation generatorImages reduction23453.relations [8,8,8,8,8,8,8,403] reduction23453.output := by lin_cert using reduction23453.terms
def image23454 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23454 : InImage map_61_261 image23454 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23454 : Bundle := named_bundle% "RealMapCertificates/relations/basis23454.json"
theorem reductionProof23454 : EqualModuloRelations reduction23454.relations reduction23454.input reduction23454.output := by lin_cert using reduction23454.terms
theorem substitutionProof23454 : IsMapEvaluation generatorImages reduction23454.relations [8,8,8,8,8,8,8,8,8,171] reduction23454.output := by lin_cert using reduction23454.terms
def image23455 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23455 : InImage map_61_261 image23455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23455 : Bundle := named_bundle% "RealMapCertificates/relations/basis23455.json"
theorem reductionProof23455 : EqualModuloRelations reduction23455.relations reduction23455.input reduction23455.output := by lin_cert using reduction23455.terms
theorem substitutionProof23455 : IsMapEvaluation generatorImages reduction23455.relations [0,2792] reduction23455.output := by lin_cert using reduction23455.terms
def image23456 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23456 : InImage map_61_261 image23456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23456 : Bundle := named_bundle% "RealMapCertificates/relations/basis23456.json"
theorem reductionProof23456 : EqualModuloRelations reduction23456.relations reduction23456.input reduction23456.output := by lin_cert using reduction23456.terms
theorem substitutionProof23456 : IsMapEvaluation generatorImages reduction23456.relations [0,0,0,0,0,149,685] reduction23456.output := by lin_cert using reduction23456.terms
def map_62_62 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image366 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation366 : InImage map_62_62 image366 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction366 : Bundle := named_bundle% "RealMapCertificates/relations/basis366.json"
theorem reductionProof366 : EqualModuloRelations reduction366.relations reduction366.input reduction366.output := by lin_cert using reduction366.terms
theorem substitutionProof366 : IsMapEvaluation generatorImages reduction366.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction366.output := by lin_cert using reduction366.terms
def map_62_184 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7510 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7510 : InImage map_62_184 image7510 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7510 : Bundle := named_bundle% "RealMapCertificates/relations/basis7510.json"
theorem reductionProof7510 : EqualModuloRelations reduction7510.relations reduction7510.input reduction7510.output := by lin_cert using reduction7510.terms
theorem substitutionProof7510 : IsMapEvaluation generatorImages reduction7510.relations [1,895] reduction7510.output := by lin_cert using reduction7510.terms
def map_62_185 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7607 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7607 : InImage map_62_185 image7607 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7607 : Bundle := named_bundle% "RealMapCertificates/relations/basis7607.json"
theorem reductionProof7607 : EqualModuloRelations reduction7607.relations reduction7607.input reduction7607.output := by lin_cert using reduction7607.terms
theorem substitutionProof7607 : IsMapEvaluation generatorImages reduction7607.relations [0,926] reduction7607.output := by lin_cert using reduction7607.terms
def map_62_188 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7947 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7947 : InImage map_62_188 image7947 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7947 : Bundle := named_bundle% "RealMapCertificates/relations/basis7947.json"
theorem reductionProof7947 : EqualModuloRelations reduction7947.relations reduction7947.input reduction7947.output := by lin_cert using reduction7947.terms
theorem substitutionProof7947 : IsMapEvaluation generatorImages reduction7947.relations [0,0,951] reduction7947.output := by lin_cert using reduction7947.terms
def map_62_189 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8077 : InImage map_62_189 image8077 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8077 : Bundle := named_bundle% "RealMapCertificates/relations/basis8077.json"
theorem reductionProof8077 : EqualModuloRelations reduction8077.relations reduction8077.input reduction8077.output := by lin_cert using reduction8077.terms
theorem substitutionProof8077 : IsMapEvaluation generatorImages reduction8077.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction8077.output := by lin_cert using reduction8077.terms
def map_62_190 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8220 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8220 : InImage map_62_190 image8220 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8220 : Bundle := named_bundle% "RealMapCertificates/relations/basis8220.json"
theorem reductionProof8220 : EqualModuloRelations reduction8220.relations reduction8220.input reduction8220.output := by lin_cert using reduction8220.terms
theorem substitutionProof8220 : IsMapEvaluation generatorImages reduction8220.relations [1,1,951] reduction8220.output := by lin_cert using reduction8220.terms
def map_62_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8330 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8330 : InImage map_62_191 image8330 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8330 : Bundle := named_bundle% "RealMapCertificates/relations/basis8330.json"
theorem reductionProof8330 : EqualModuloRelations reduction8330.relations reduction8330.input reduction8330.output := by lin_cert using reduction8330.terms
theorem substitutionProof8330 : IsMapEvaluation generatorImages reduction8330.relations [0,0,995] reduction8330.output := by lin_cert using reduction8330.terms
def map_62_194 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8703 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8703 : InImage map_62_194 image8703 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8703 : Bundle := named_bundle% "RealMapCertificates/relations/basis8703.json"
theorem reductionProof8703 : EqualModuloRelations reduction8703.relations reduction8703.input reduction8703.output := by lin_cert using reduction8703.terms
theorem substitutionProof8703 : IsMapEvaluation generatorImages reduction8703.relations [0,0,8,803] reduction8703.output := by lin_cert using reduction8703.terms
def map_62_197 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9130 : InImage map_62_197 image9130 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9130 : Bundle := named_bundle% "RealMapCertificates/relations/basis9130.json"
theorem reductionProof9130 : EqualModuloRelations reduction9130.relations reduction9130.input reduction9130.output := by lin_cert using reduction9130.terms
theorem substitutionProof9130 : IsMapEvaluation generatorImages reduction9130.relations [0,0,8,851] reduction9130.output := by lin_cert using reduction9130.terms
def map_62_200 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9594 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9594 : InImage map_62_200 image9594 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9594 : Bundle := named_bundle% "RealMapCertificates/relations/basis9594.json"
theorem reductionProof9594 : EqualModuloRelations reduction9594.relations reduction9594.input reduction9594.output := by lin_cert using reduction9594.terms
theorem substitutionProof9594 : IsMapEvaluation generatorImages reduction9594.relations [0,0,8,8,661] reduction9594.output := by lin_cert using reduction9594.terms
def map_62_204 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10262 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10262 : InImage map_62_204 image10262 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10262 : Bundle := named_bundle% "RealMapCertificates/relations/basis10262.json"
theorem reductionProof10262 : EqualModuloRelations reduction10262.relations reduction10262.input reduction10262.output := by lin_cert using reduction10262.terms
theorem substitutionProof10262 : IsMapEvaluation generatorImages reduction10262.relations [17,804] reduction10262.output := by lin_cert using reduction10262.terms
def map_62_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10473 : InImage map_62_205 image10473 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10473 : Bundle := named_bundle% "RealMapCertificates/relations/basis10473.json"
theorem reductionProof10473 : EqualModuloRelations reduction10473.relations reduction10473.input reduction10473.output := by lin_cert using reduction10473.terms
theorem substitutionProof10473 : IsMapEvaluation generatorImages reduction10473.relations [0,1253] reduction10473.output := by lin_cert using reduction10473.terms
def map_62_206 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10613 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10613 : InImage map_62_206 image10613 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10613 : Bundle := named_bundle% "RealMapCertificates/relations/basis10613.json"
theorem reductionProof10613 : EqualModuloRelations reduction10613.relations reduction10613.input reduction10613.output := by lin_cert using reduction10613.terms
theorem substitutionProof10613 : IsMapEvaluation generatorImages reduction10613.relations [1,1253] reduction10613.output := by lin_cert using reduction10613.terms
def map_62_207 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10813 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10813 : InImage map_62_207 image10813 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10813 : Bundle := named_bundle% "RealMapCertificates/relations/basis10813.json"
theorem reductionProof10813 : EqualModuloRelations reduction10813.relations reduction10813.input reduction10813.output := by lin_cert using reduction10813.terms
theorem substitutionProof10813 : IsMapEvaluation generatorImages reduction10813.relations [17,852] reduction10813.output := by lin_cert using reduction10813.terms
def map_62_210 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11320 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11320 : InImage map_62_210 image11320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11320 : Bundle := named_bundle% "RealMapCertificates/relations/basis11320.json"
theorem reductionProof11320 : EqualModuloRelations reduction11320.relations reduction11320.input reduction11320.output := by lin_cert using reduction11320.terms
theorem substitutionProof11320 : IsMapEvaluation generatorImages reduction11320.relations [16,17,554] reduction11320.output := by lin_cert using reduction11320.terms
def map_62_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11537 : InImage map_62_211 image11537 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11537 : Bundle := named_bundle% "RealMapCertificates/relations/basis11537.json"
theorem reductionProof11537 : EqualModuloRelations reduction11537.relations reduction11537.input reduction11537.output := by lin_cert using reduction11537.terms
theorem substitutionProof11537 : IsMapEvaluation generatorImages reduction11537.relations [0,0,0,0,1312] reduction11537.output := by lin_cert using reduction11537.terms
def map_62_212 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11671 : InImage map_62_212 image11671 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11671 : Bundle := named_bundle% "RealMapCertificates/relations/basis11671.json"
theorem reductionProof11671 : EqualModuloRelations reduction11671.relations reduction11671.input reduction11671.output := by lin_cert using reduction11671.terms
theorem substitutionProof11671 : IsMapEvaluation generatorImages reduction11671.relations [0,0,0,0,0,1313] reduction11671.output := by lin_cert using reduction11671.terms
def map_62_213 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11895 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11895 : InImage map_62_213 image11895 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11895 : Bundle := named_bundle% "RealMapCertificates/relations/basis11895.json"
theorem reductionProof11895 : EqualModuloRelations reduction11895.relations reduction11895.input reduction11895.output := by lin_cert using reduction11895.terms
theorem substitutionProof11895 : IsMapEvaluation generatorImages reduction11895.relations [8,17,701] reduction11895.output := by lin_cert using reduction11895.terms
def map_62_216 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12458 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12458 : InImage map_62_216 image12458 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12458 : Bundle := named_bundle% "RealMapCertificates/relations/basis12458.json"
theorem reductionProof12458 : EqualModuloRelations reduction12458.relations reduction12458.input reduction12458.output := by lin_cert using reduction12458.terms
theorem substitutionProof12458 : IsMapEvaluation generatorImages reduction12458.relations [8,8,17,554] reduction12458.output := by lin_cert using reduction12458.terms
def map_62_218 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12819 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12819 : InImage map_62_218 image12819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12819 : Bundle := named_bundle% "RealMapCertificates/relations/basis12819.json"
theorem reductionProof12819 : EqualModuloRelations reduction12819.relations reduction12819.input reduction12819.output := by lin_cert using reduction12819.terms
theorem substitutionProof12819 : IsMapEvaluation generatorImages reduction12819.relations [0,0,0,0,0,0,1395] reduction12819.output := by lin_cert using reduction12819.terms
def map_62_219 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13041 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13041 : InImage map_62_219 image13041 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13041 : Bundle := named_bundle% "RealMapCertificates/relations/basis13041.json"
theorem reductionProof13041 : EqualModuloRelations reduction13041.relations reduction13041.input reduction13041.output := by lin_cert using reduction13041.terms
theorem substitutionProof13041 : IsMapEvaluation generatorImages reduction13041.relations [8,8,17,579] reduction13041.output := by lin_cert using reduction13041.terms
def map_62_220 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13238 : InImage map_62_220 image13238 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13238 : Bundle := named_bundle% "RealMapCertificates/relations/basis13238.json"
theorem reductionProof13238 : EqualModuloRelations reduction13238.relations reduction13238.input reduction13238.output := by lin_cert using reduction13238.terms
theorem substitutionProof13238 : IsMapEvaluation generatorImages reduction13238.relations [0,0,0,0,0,0,0,0,1396] reduction13238.output := by lin_cert using reduction13238.terms
def map_62_221 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13390 : InImage map_62_221 image13390 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13390 : Bundle := named_bundle% "RealMapCertificates/relations/basis13390.json"
theorem reductionProof13390 : EqualModuloRelations reduction13390.relations reduction13390.input reduction13390.output := by lin_cert using reduction13390.terms
theorem substitutionProof13390 : IsMapEvaluation generatorImages reduction13390.relations [0,0,0,0,0,0,0,0,0,1397] reduction13390.output := by lin_cert using reduction13390.terms
def map_62_222 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13589 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13589 : InImage map_62_222 image13589 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13589 : Bundle := named_bundle% "RealMapCertificates/relations/basis13589.json"
theorem reductionProof13589 : EqualModuloRelations reduction13589.relations reduction13589.input reduction13589.output := by lin_cert using reduction13589.terms
theorem substitutionProof13589 : IsMapEvaluation generatorImages reduction13589.relations [1587] reduction13589.output := by lin_cert using reduction13589.terms
def image13590 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13590 : InImage map_62_222 image13590 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13590 : Bundle := named_bundle% "RealMapCertificates/relations/basis13590.json"
theorem reductionProof13590 : EqualModuloRelations reduction13590.relations reduction13590.input reduction13590.output := by lin_cert using reduction13590.terms
theorem substitutionProof13590 : IsMapEvaluation generatorImages reduction13590.relations [8,8,16,17,296] reduction13590.output := by lin_cert using reduction13590.terms
def map_62_223 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13805 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13805 : InImage map_62_223 image13805 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13805 : Bundle := named_bundle% "RealMapCertificates/relations/basis13805.json"
theorem reductionProof13805 : EqualModuloRelations reduction13805.relations reduction13805.input reduction13805.output := by lin_cert using reduction13805.terms
theorem substitutionProof13805 : IsMapEvaluation generatorImages reduction13805.relations [0,1588] reduction13805.output := by lin_cert using reduction13805.terms
def map_62_225 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image14162 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14162 : InImage map_62_225 image14162 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14162 : Bundle := named_bundle% "RealMapCertificates/relations/basis14162.json"
theorem reductionProof14162 : EqualModuloRelations reduction14162.relations reduction14162.input reduction14162.output := by lin_cert using reduction14162.terms
theorem substitutionProof14162 : IsMapEvaluation generatorImages reduction14162.relations [8,1312] reduction14162.output := by lin_cert using reduction14162.terms
def image14163 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14163 : InImage map_62_225 image14163 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14163 : Bundle := named_bundle% "RealMapCertificates/relations/basis14163.json"
theorem reductionProof14163 : EqualModuloRelations reduction14163.relations reduction14163.input reduction14163.output := by lin_cert using reduction14163.terms
theorem substitutionProof14163 : IsMapEvaluation generatorImages reduction14163.relations [8,8,8,17,470] reduction14163.output := by lin_cert using reduction14163.terms
def map_62_226 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14358 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14358 : InImage map_62_226 image14358 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14358 : Bundle := named_bundle% "RealMapCertificates/relations/basis14358.json"
theorem reductionProof14358 : EqualModuloRelations reduction14358.relations reduction14358.input reduction14358.output := by lin_cert using reduction14358.terms
theorem substitutionProof14358 : IsMapEvaluation generatorImages reduction14358.relations [0,8,1313] reduction14358.output := by lin_cert using reduction14358.terms
def map_62_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14721 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14721 : InImage map_62_228 image14721 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14721 : Bundle := named_bundle% "RealMapCertificates/relations/basis14721.json"
theorem reductionProof14721 : EqualModuloRelations reduction14721.relations reduction14721.input reduction14721.output := by lin_cert using reduction14721.terms
theorem substitutionProof14721 : IsMapEvaluation generatorImages reduction14721.relations [8,1360] reduction14721.output := by lin_cert using reduction14721.terms
def image14722 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14722 : InImage map_62_228 image14722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14722 : Bundle := named_bundle% "RealMapCertificates/relations/basis14722.json"
theorem reductionProof14722 : EqualModuloRelations reduction14722.relations reduction14722.input reduction14722.output := by lin_cert using reduction14722.terms
theorem substitutionProof14722 : IsMapEvaluation generatorImages reduction14722.relations [8,8,8,8,17,296] reduction14722.output := by lin_cert using reduction14722.terms
def image14723 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14723 : InImage map_62_228 image14723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14723 : Bundle := named_bundle% "RealMapCertificates/relations/basis14723.json"
theorem reductionProof14723 : EqualModuloRelations reduction14723.relations reduction14723.input reduction14723.output := by lin_cert using reduction14723.terms
theorem substitutionProof14723 : IsMapEvaluation generatorImages reduction14723.relations [1,5,1395] reduction14723.output := by lin_cert using reduction14723.terms
def map_62_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14956 : InImage map_62_229 image14956 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14956 : Bundle := named_bundle% "RealMapCertificates/relations/basis14956.json"
theorem reductionProof14956 : EqualModuloRelations reduction14956.relations reduction14956.input reduction14956.output := by lin_cert using reduction14956.terms
theorem substitutionProof14956 : IsMapEvaluation generatorImages reduction14956.relations [0,8,1361] reduction14956.output := by lin_cert using reduction14956.terms
def image14957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14957 : InImage map_62_229 image14957 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14957 : Bundle := named_bundle% "RealMapCertificates/relations/basis14957.json"
theorem reductionProof14957 : EqualModuloRelations reduction14957.relations reduction14957.input reduction14957.output := by lin_cert using reduction14957.terms
theorem substitutionProof14957 : IsMapEvaluation generatorImages reduction14957.relations [0,0,1679] reduction14957.output := by lin_cert using reduction14957.terms
def map_62_231 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15341 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15341 : InImage map_62_231 image15341 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15341 : Bundle := named_bundle% "RealMapCertificates/relations/basis15341.json"
theorem reductionProof15341 : EqualModuloRelations reduction15341.relations reduction15341.input reduction15341.output := by lin_cert using reduction15341.terms
theorem substitutionProof15341 : IsMapEvaluation generatorImages reduction15341.relations [8,16,916] reduction15341.output := by lin_cert using reduction15341.terms
def image15342 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15342 : InImage map_62_231 image15342 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15342 : Bundle := named_bundle% "RealMapCertificates/relations/basis15342.json"
theorem reductionProof15342 : EqualModuloRelations reduction15342.relations reduction15342.input reduction15342.output := by lin_cert using reduction15342.terms
theorem substitutionProof15342 : IsMapEvaluation generatorImages reduction15342.relations [8,8,8,8,17,326] reduction15342.output := by lin_cert using reduction15342.terms
def map_62_232 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image15574 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15574 : InImage map_62_232 image15574 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15574 : Bundle := named_bundle% "RealMapCertificates/relations/basis15574.json"
theorem reductionProof15574 : EqualModuloRelations reduction15574.relations reduction15574.input reduction15574.output := by lin_cert using reduction15574.terms
theorem substitutionProof15574 : IsMapEvaluation generatorImages reduction15574.relations [0,8,16,917] reduction15574.output := by lin_cert using reduction15574.terms
def image15575 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15575 : InImage map_62_232 image15575 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15575 : Bundle := named_bundle% "RealMapCertificates/relations/basis15575.json"
theorem reductionProof15575 : EqualModuloRelations reduction15575.relations reduction15575.input reduction15575.output := by lin_cert using reduction15575.terms
theorem substitutionProof15575 : IsMapEvaluation generatorImages reduction15575.relations [0,0,8,1395] reduction15575.output := by lin_cert using reduction15575.terms
def map_62_234 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15988 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15988 : InImage map_62_234 image15988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15988 : Bundle := named_bundle% "RealMapCertificates/relations/basis15988.json"
theorem reductionProof15988 : EqualModuloRelations reduction15988.relations reduction15988.input reduction15988.output := by lin_cert using reduction15988.terms
theorem substitutionProof15988 : IsMapEvaluation generatorImages reduction15988.relations [8,8,1141] reduction15988.output := by lin_cert using reduction15988.terms
def image15989 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15989 : InImage map_62_234 image15989 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15989 : Bundle := named_bundle% "RealMapCertificates/relations/basis15989.json"
theorem reductionProof15989 : EqualModuloRelations reduction15989.relations reduction15989.input reduction15989.output := by lin_cert using reduction15989.terms
theorem substitutionProof15989 : IsMapEvaluation generatorImages reduction15989.relations [8,8,8,8,16,17,183] reduction15989.output := by lin_cert using reduction15989.terms
def map_62_235 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16241 : InImage map_62_235 image16241 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16241 : Bundle := named_bundle% "RealMapCertificates/relations/basis16241.json"
theorem reductionProof16241 : EqualModuloRelations reduction16241.relations reduction16241.input reduction16241.output := by lin_cert using reduction16241.terms
theorem substitutionProof16241 : IsMapEvaluation generatorImages reduction16241.relations [0,8,8,1142] reduction16241.output := by lin_cert using reduction16241.terms
def image16242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16242 : InImage map_62_235 image16242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16242 : Bundle := named_bundle% "RealMapCertificates/relations/basis16242.json"
theorem reductionProof16242 : EqualModuloRelations reduction16242.relations reduction16242.input reduction16242.output := by lin_cert using reduction16242.terms
theorem substitutionProof16242 : IsMapEvaluation generatorImages reduction16242.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1589] reduction16242.output := by lin_cert using reduction16242.terms
def map_62_237 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16660 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16660 : InImage map_62_237 image16660 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16660 : Bundle := named_bundle% "RealMapCertificates/relations/basis16660.json"
theorem reductionProof16660 : EqualModuloRelations reduction16660.relations reduction16660.input reduction16660.output := by lin_cert using reduction16660.terms
theorem substitutionProof16660 : IsMapEvaluation generatorImages reduction16660.relations [8,8,8,916] reduction16660.output := by lin_cert using reduction16660.terms
def image16661 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16661 : InImage map_62_237 image16661 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16661 : Bundle := named_bundle% "RealMapCertificates/relations/basis16661.json"
theorem reductionProof16661 : EqualModuloRelations reduction16661.relations reduction16661.input reduction16661.output := by lin_cert using reduction16661.terms
theorem substitutionProof16661 : IsMapEvaluation generatorImages reduction16661.relations [8,8,8,8,8,17,253] reduction16661.output := by lin_cert using reduction16661.terms
def map_62_238 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16901 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16901 : InImage map_62_238 image16901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16901 : Bundle := named_bundle% "RealMapCertificates/relations/basis16901.json"
theorem reductionProof16901 : EqualModuloRelations reduction16901.relations reduction16901.input reduction16901.output := by lin_cert using reduction16901.terms
theorem substitutionProof16901 : IsMapEvaluation generatorImages reduction16901.relations [1,1889] reduction16901.output := by lin_cert using reduction16901.terms
def image16902 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16902 : InImage map_62_238 image16902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16902 : Bundle := named_bundle% "RealMapCertificates/relations/basis16902.json"
theorem reductionProof16902 : EqualModuloRelations reduction16902.relations reduction16902.input reduction16902.output := by lin_cert using reduction16902.terms
theorem substitutionProof16902 : IsMapEvaluation generatorImages reduction16902.relations [0,8,8,8,917] reduction16902.output := by lin_cert using reduction16902.terms
def map_62_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17107 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17107 : InImage map_62_239 image17107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17107 : Bundle := named_bundle% "RealMapCertificates/relations/basis17107.json"
theorem reductionProof17107 : EqualModuloRelations reduction17107.relations reduction17107.input reduction17107.output := by lin_cert using reduction17107.terms
theorem substitutionProof17107 : IsMapEvaluation generatorImages reduction17107.relations [1963] reduction17107.output := by lin_cert using reduction17107.terms
def map_62_240 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17360 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17360 : InImage map_62_240 image17360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17360 : Bundle := named_bundle% "RealMapCertificates/relations/basis17360.json"
theorem reductionProof17360 : EqualModuloRelations reduction17360.relations reduction17360.input reduction17360.output := by lin_cert using reduction17360.terms
theorem substitutionProof17360 : IsMapEvaluation generatorImages reduction17360.relations [8,8,8,952] reduction17360.output := by lin_cert using reduction17360.terms
def image17361 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17361 : InImage map_62_240 image17361 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17361 : Bundle := named_bundle% "RealMapCertificates/relations/basis17361.json"
theorem reductionProof17361 : EqualModuloRelations reduction17361.relations reduction17361.input reduction17361.output := by lin_cert using reduction17361.terms
theorem substitutionProof17361 : IsMapEvaluation generatorImages reduction17361.relations [8,8,8,8,8,8,17,183] reduction17361.output := by lin_cert using reduction17361.terms
def map_62_242 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17866 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17866 : InImage map_62_242 image17866 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17866 : Bundle := named_bundle% "RealMapCertificates/relations/basis17866.json"
theorem reductionProof17866 : EqualModuloRelations reduction17866.relations reduction17866.input reduction17866.output := by lin_cert using reduction17866.terms
theorem substitutionProof17866 : IsMapEvaluation generatorImages reduction17866.relations [16,1396] reduction17866.output := by lin_cert using reduction17866.terms
def map_62_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18138 : InImage map_62_243 image18138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18138 : Bundle := named_bundle% "RealMapCertificates/relations/basis18138.json"
theorem reductionProof18138 : EqualModuloRelations reduction18138.relations reduction18138.input reduction18138.output := by lin_cert using reduction18138.terms
theorem substitutionProof18138 : IsMapEvaluation generatorImages reduction18138.relations [8,8,8,16,635] reduction18138.output := by lin_cert using reduction18138.terms
def image18139 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18139 : InImage map_62_243 image18139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18139 : Bundle := named_bundle% "RealMapCertificates/relations/basis18139.json"
theorem reductionProof18139 : EqualModuloRelations reduction18139.relations reduction18139.input reduction18139.output := by lin_cert using reduction18139.terms
theorem substitutionProof18139 : IsMapEvaluation generatorImages reduction18139.relations [8,8,8,8,8,8,17,200] reduction18139.output := by lin_cert using reduction18139.terms
def image18140 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18140 : InImage map_62_243 image18140 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18140 : Bundle := named_bundle% "RealMapCertificates/relations/basis18140.json"
theorem reductionProof18140 : EqualModuloRelations reduction18140.relations reduction18140.input reduction18140.output := by lin_cert using reduction18140.terms
theorem substitutionProof18140 : IsMapEvaluation generatorImages reduction18140.relations [0,0,0,0,1965] reduction18140.output := by lin_cert using reduction18140.terms
def map_62_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18400 : InImage map_62_244 image18400 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18400 : Bundle := named_bundle% "RealMapCertificates/relations/basis18400.json"
theorem reductionProof18400 : EqualModuloRelations reduction18400.relations reduction18400.input reduction18400.output := by lin_cert using reduction18400.terms
theorem substitutionProof18400 : IsMapEvaluation generatorImages reduction18400.relations [0,0,0,2035] reduction18400.output := by lin_cert using reduction18400.terms
def map_62_245 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18612 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18612 : InImage map_62_245 image18612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18612 : Bundle := named_bundle% "RealMapCertificates/relations/basis18612.json"
theorem reductionProof18612 : EqualModuloRelations reduction18612.relations reduction18612.input reduction18612.output := by lin_cert using reduction18612.terms
theorem substitutionProof18612 : IsMapEvaluation generatorImages reduction18612.relations [8,1680] reduction18612.output := by lin_cert using reduction18612.terms
def map_62_246 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image18886 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18886 : InImage map_62_246 image18886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18886 : Bundle := named_bundle% "RealMapCertificates/relations/basis18886.json"
theorem reductionProof18886 : EqualModuloRelations reduction18886.relations reduction18886.input reduction18886.output := by lin_cert using reduction18886.terms
theorem substitutionProof18886 : IsMapEvaluation generatorImages reduction18886.relations [8,8,8,8,805] reduction18886.output := by lin_cert using reduction18886.terms
def image18887 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18887 : InImage map_62_246 image18887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18887 : Bundle := named_bundle% "RealMapCertificates/relations/basis18887.json"
theorem reductionProof18887 : EqualModuloRelations reduction18887.relations reduction18887.input reduction18887.output := by lin_cert using reduction18887.terms
theorem substitutionProof18887 : IsMapEvaluation generatorImages reduction18887.relations [8,8,8,8,8,8,16,17,111] reduction18887.output := by lin_cert using reduction18887.terms
def map_62_248 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image19405 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19405 : InImage map_62_248 image19405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19405 : Bundle := named_bundle% "RealMapCertificates/relations/basis19405.json"
theorem reductionProof19405 : EqualModuloRelations reduction19405.relations reduction19405.input reduction19405.output := by lin_cert using reduction19405.terms
theorem substitutionProof19405 : IsMapEvaluation generatorImages reduction19405.relations [8,8,1396] reduction19405.output := by lin_cert using reduction19405.terms
def image19406 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19406 : InImage map_62_248 image19406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19406 : Bundle := named_bundle% "RealMapCertificates/relations/basis19406.json"
theorem reductionProof19406 : EqualModuloRelations reduction19406.relations reduction19406.input reduction19406.output := by lin_cert using reduction19406.terms
theorem substitutionProof19406 : IsMapEvaluation generatorImages reduction19406.relations [0,0,64,916] reduction19406.output := by lin_cert using reduction19406.terms
def map_62_249 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19702 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19702 : InImage map_62_249 image19702 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19702 : Bundle := named_bundle% "RealMapCertificates/relations/basis19702.json"
theorem reductionProof19702 : EqualModuloRelations reduction19702.relations reduction19702.input reduction19702.output := by lin_cert using reduction19702.terms
theorem substitutionProof19702 : IsMapEvaluation generatorImages reduction19702.relations [8,8,8,8,8,635] reduction19702.output := by lin_cert using reduction19702.terms
def image19703 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19703 : InImage map_62_249 image19703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19703 : Bundle := named_bundle% "RealMapCertificates/relations/basis19703.json"
theorem reductionProof19703 : EqualModuloRelations reduction19703.relations reduction19703.input reduction19703.output := by lin_cert using reduction19703.terms
theorem substitutionProof19703 : IsMapEvaluation generatorImages reduction19703.relations [8,8,8,8,8,8,8,17,153] reduction19703.output := by lin_cert using reduction19703.terms
def image19704 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19704 : InImage map_62_249 image19704 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19704 : Bundle := named_bundle% "RealMapCertificates/relations/basis19704.json"
theorem reductionProof19704 : EqualModuloRelations reduction19704.relations reduction19704.input reduction19704.output := by lin_cert using reduction19704.terms
theorem substitutionProof19704 : IsMapEvaluation generatorImages reduction19704.relations [0,0,0,64,917] reduction19704.output := by lin_cert using reduction19704.terms
def map_62_250 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19977 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19977 : InImage map_62_250 image19977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19977 : Bundle := named_bundle% "RealMapCertificates/relations/basis19977.json"
theorem reductionProof19977 : EqualModuloRelations reduction19977.relations reduction19977.input reduction19977.output := by lin_cert using reduction19977.terms
theorem substitutionProof19977 : IsMapEvaluation generatorImages reduction19977.relations [1,1,64,916] reduction19977.output := by lin_cert using reduction19977.terms
def image19978 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19978 : InImage map_62_250 image19978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19978 : Bundle := named_bundle% "RealMapCertificates/relations/basis19978.json"
theorem reductionProof19978 : EqualModuloRelations reduction19978.relations reduction19978.input reduction19978.output := by lin_cert using reduction19978.terms
theorem substitutionProof19978 : IsMapEvaluation generatorImages reduction19978.relations [0,0,0,0,0,17,1471] reduction19978.output := by lin_cert using reduction19978.terms
def map_62_251 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20213 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20213 : InImage map_62_251 image20213 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20213 : Bundle := named_bundle% "RealMapCertificates/relations/basis20213.json"
theorem reductionProof20213 : EqualModuloRelations reduction20213.relations reduction20213.input reduction20213.output := by lin_cert using reduction20213.terms
theorem substitutionProof20213 : IsMapEvaluation generatorImages reduction20213.relations [8,8,1469] reduction20213.output := by lin_cert using reduction20213.terms
def image20214 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20214 : InImage map_62_251 image20214 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20214 : Bundle := named_bundle% "RealMapCertificates/relations/basis20214.json"
theorem reductionProof20214 : EqualModuloRelations reduction20214.relations reduction20214.input reduction20214.output := by lin_cert using reduction20214.terms
theorem substitutionProof20214 : IsMapEvaluation generatorImages reduction20214.relations [0,0,0,0,0,2193] reduction20214.output := by lin_cert using reduction20214.terms
def map_62_252 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20504 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20504 : InImage map_62_252 image20504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20504 : Bundle := named_bundle% "RealMapCertificates/relations/basis20504.json"
theorem reductionProof20504 : EqualModuloRelations reduction20504.relations reduction20504.input reduction20504.output := by lin_cert using reduction20504.terms
theorem substitutionProof20504 : IsMapEvaluation generatorImages reduction20504.relations [8,8,8,8,8,662] reduction20504.output := by lin_cert using reduction20504.terms
def image20505 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20505 : InImage map_62_252 image20505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20505 : Bundle := named_bundle% "RealMapCertificates/relations/basis20505.json"
theorem reductionProof20505 : EqualModuloRelations reduction20505.relations reduction20505.input reduction20505.output := by lin_cert using reduction20505.terms
theorem substitutionProof20505 : IsMapEvaluation generatorImages reduction20505.relations [8,8,8,8,8,8,8,8,17,111] reduction20505.output := by lin_cert using reduction20505.terms
def image20506 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20506 : InImage map_62_252 image20506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20506 : Bundle := named_bundle% "RealMapCertificates/relations/basis20506.json"
theorem reductionProof20506 : EqualModuloRelations reduction20506.relations reduction20506.input reduction20506.output := by lin_cert using reduction20506.terms
theorem substitutionProof20506 : IsMapEvaluation generatorImages reduction20506.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction20506.output := by lin_cert using reduction20506.terms
def map_62_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20802 : InImage map_62_253 image20802 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20802 : Bundle := named_bundle% "RealMapCertificates/relations/basis20802.json"
theorem reductionProof20802 : EqualModuloRelations reduction20802.relations reduction20802.input reduction20802.output := by lin_cert using reduction20802.terms
theorem substitutionProof20802 : IsMapEvaluation generatorImages reduction20802.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction20802.output := by lin_cert using reduction20802.terms
def map_62_254 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image21038 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21038 : InImage map_62_254 image21038 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21038 : Bundle := named_bundle% "RealMapCertificates/relations/basis21038.json"
theorem reductionProof21038 : EqualModuloRelations reduction21038.relations reduction21038.input reduction21038.output := by lin_cert using reduction21038.terms
theorem substitutionProof21038 : IsMapEvaluation generatorImages reduction21038.relations [2487] reduction21038.output := by lin_cert using reduction21038.terms
def image21039 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21039 : InImage map_62_254 image21039 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21039 : Bundle := named_bundle% "RealMapCertificates/relations/basis21039.json"
theorem reductionProof21039 : EqualModuloRelations reduction21039.relations reduction21039.input reduction21039.output := by lin_cert using reduction21039.terms
theorem substitutionProof21039 : IsMapEvaluation generatorImages reduction21039.relations [8,8,49,686] reduction21039.output := by lin_cert using reduction21039.terms
def map_62_255 : Matrix 2 4 := fun i j => ([false,false,true,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image21378 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21378 : InImage map_62_255 image21378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21378 : Bundle := named_bundle% "RealMapCertificates/relations/basis21378.json"
theorem reductionProof21378 : EqualModuloRelations reduction21378.relations reduction21378.input reduction21378.output := by lin_cert using reduction21378.terms
theorem substitutionProof21378 : IsMapEvaluation generatorImages reduction21378.relations [2536] reduction21378.output := by lin_cert using reduction21378.terms
def image21379 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21379 : InImage map_62_255 image21379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21379 : Bundle := named_bundle% "RealMapCertificates/relations/basis21379.json"
theorem reductionProof21379 : EqualModuloRelations reduction21379.relations reduction21379.input reduction21379.output := by lin_cert using reduction21379.terms
theorem substitutionProof21379 : IsMapEvaluation generatorImages reduction21379.relations [8,8,8,8,8,16,402] reduction21379.output := by lin_cert using reduction21379.terms
def image21380 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21380 : InImage map_62_255 image21380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21380 : Bundle := named_bundle% "RealMapCertificates/relations/basis21380.json"
theorem reductionProof21380 : EqualModuloRelations reduction21380.relations reduction21380.input reduction21380.output := by lin_cert using reduction21380.terms
theorem substitutionProof21380 : IsMapEvaluation generatorImages reduction21380.relations [8,8,8,8,8,8,8,8,17,117] reduction21380.output := by lin_cert using reduction21380.terms
def image21381 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21381 : InImage map_62_255 image21381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21381 : Bundle := named_bundle% "RealMapCertificates/relations/basis21381.json"
theorem reductionProof21381 : EqualModuloRelations reduction21381.relations reduction21381.input reduction21381.output := by lin_cert using reduction21381.terms
theorem substitutionProof21381 : IsMapEvaluation generatorImages reduction21381.relations [0,0,0,0,64,969] reduction21381.output := by lin_cert using reduction21381.terms
def map_62_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21692 : InImage map_62_256 image21692 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21692 : Bundle := named_bundle% "RealMapCertificates/relations/basis21692.json"
theorem reductionProof21692 : EqualModuloRelations reduction21692.relations reduction21692.input reduction21692.output := by lin_cert using reduction21692.terms
theorem substitutionProof21692 : IsMapEvaluation generatorImages reduction21692.relations [0,0,0,0,0,138,685] reduction21692.output := by lin_cert using reduction21692.terms
def map_62_257 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21987 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21987 : InImage map_62_257 image21987 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21987 : Bundle := named_bundle% "RealMapCertificates/relations/basis21987.json"
theorem reductionProof21987 : EqualModuloRelations reduction21987.relations reduction21987.input reduction21987.output := by lin_cert using reduction21987.terms
theorem substitutionProof21987 : IsMapEvaluation generatorImages reduction21987.relations [8,1965] reduction21987.output := by lin_cert using reduction21987.terms
def image21988 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21988 : InImage map_62_257 image21988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21988 : Bundle := named_bundle% "RealMapCertificates/relations/basis21988.json"
theorem reductionProof21988 : EqualModuloRelations reduction21988.relations reduction21988.input reduction21988.output := by lin_cert using reduction21988.terms
theorem substitutionProof21988 : IsMapEvaluation generatorImages reduction21988.relations [8,8,8,1240] reduction21988.output := by lin_cert using reduction21988.terms
def map_62_258 : Matrix 5 3 := fun i j => ([false,false,true,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image22335 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation22335 : InImage map_62_258 image22335 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22335 : Bundle := named_bundle% "RealMapCertificates/relations/basis22335.json"
theorem reductionProof22335 : EqualModuloRelations reduction22335.relations reduction22335.input reduction22335.output := by lin_cert using reduction22335.terms
theorem substitutionProof22335 : IsMapEvaluation generatorImages reduction22335.relations [2673] reduction22335.output := by lin_cert using reduction22335.terms
def image22336 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22336 : InImage map_62_258 image22336 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22336 : Bundle := named_bundle% "RealMapCertificates/relations/basis22336.json"
theorem reductionProof22336 : EqualModuloRelations reduction22336.relations reduction22336.input reduction22336.output := by lin_cert using reduction22336.terms
theorem substitutionProof22336 : IsMapEvaluation generatorImages reduction22336.relations [8,8,8,8,8,8,555] reduction22336.output := by lin_cert using reduction22336.terms
def image22337 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22337 : InImage map_62_258 image22337 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22337 : Bundle := named_bundle% "RealMapCertificates/relations/basis22337.json"
theorem reductionProof22337 : EqualModuloRelations reduction22337.relations reduction22337.input reduction22337.output := by lin_cert using reduction22337.terms
theorem substitutionProof22337 : IsMapEvaluation generatorImages reduction22337.relations [8,8,8,8,8,8,8,8,16,17,50] reduction22337.output := by lin_cert using reduction22337.terms
def map_62_260 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image23012 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23012 : InImage map_62_260 image23012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23012 : Bundle := named_bundle% "RealMapCertificates/relations/basis23012.json"
theorem reductionProof23012 : EqualModuloRelations reduction23012.relations reduction23012.input reduction23012.output := by lin_cert using reduction23012.terms
theorem substitutionProof23012 : IsMapEvaluation generatorImages reduction23012.relations [8,2057] reduction23012.output := by lin_cert using reduction23012.terms
def image23013 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23013 : InImage map_62_260 image23013 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23013 : Bundle := named_bundle% "RealMapCertificates/relations/basis23013.json"
theorem reductionProof23013 : EqualModuloRelations reduction23013.relations reduction23013.input reduction23013.output := by lin_cert using reduction23013.terms
theorem substitutionProof23013 : IsMapEvaluation generatorImages reduction23013.relations [8,8,8,31,686] reduction23013.output := by lin_cert using reduction23013.terms
def image23014 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23014 : InImage map_62_260 image23014 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23014 : Bundle := named_bundle% "RealMapCertificates/relations/basis23014.json"
theorem reductionProof23014 : EqualModuloRelations reduction23014.relations reduction23014.input reduction23014.output := by lin_cert using reduction23014.terms
theorem substitutionProof23014 : IsMapEvaluation generatorImages reduction23014.relations [1,2674] reduction23014.output := by lin_cert using reduction23014.terms
def map_62_261 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image23448 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23448 : InImage map_62_261 image23448 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23448 : Bundle := named_bundle% "RealMapCertificates/relations/basis23448.json"
theorem reductionProof23448 : EqualModuloRelations reduction23448.relations reduction23448.input reduction23448.output := by lin_cert using reduction23448.terms
theorem substitutionProof23448 : IsMapEvaluation generatorImages reduction23448.relations [8,2089] reduction23448.output := by lin_cert using reduction23448.terms
def image23449 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23449 : InImage map_62_261 image23449 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23449 : Bundle := named_bundle% "RealMapCertificates/relations/basis23449.json"
theorem reductionProof23449 : EqualModuloRelations reduction23449.relations reduction23449.input reduction23449.output := by lin_cert using reduction23449.terms
theorem substitutionProof23449 : IsMapEvaluation generatorImages reduction23449.relations [8,8,8,8,8,8,8,402] reduction23449.output := by lin_cert using reduction23449.terms
def image23450 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23450 : InImage map_62_261 image23450 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23450 : Bundle := named_bundle% "RealMapCertificates/relations/basis23450.json"
theorem reductionProof23450 : EqualModuloRelations reduction23450.relations reduction23450.input reduction23450.output := by lin_cert using reduction23450.terms
theorem substitutionProof23450 : IsMapEvaluation generatorImages reduction23450.relations [8,8,8,8,8,8,8,8,8,17,78] reduction23450.output := by lin_cert using reduction23450.terms
def image23451 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23451 : InImage map_62_261 image23451 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23451 : Bundle := named_bundle% "RealMapCertificates/relations/basis23451.json"
theorem reductionProof23451 : EqualModuloRelations reduction23451.relations reduction23451.input reduction23451.output := by lin_cert using reduction23451.terms
theorem substitutionProof23451 : IsMapEvaluation generatorImages reduction23451.relations [0,17,1734] reduction23451.output := by lin_cert using reduction23451.terms
def map_63_63 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image376 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation376 : InImage map_63_63 image376 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction376 : Bundle := named_bundle% "RealMapCertificates/relations/basis376.json"
theorem reductionProof376 : EqualModuloRelations reduction376.relations reduction376.input reduction376.output := by lin_cert using reduction376.terms
theorem substitutionProof376 : IsMapEvaluation generatorImages reduction376.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction376.output := by lin_cert using reduction376.terms
end RealMapCertificates
