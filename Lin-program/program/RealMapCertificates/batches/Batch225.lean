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
  | 42 => [[5,5,7]]
  | 59 => []
  | 64 => []
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 138 => [[0,4,6,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 926 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1029 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1253 => []
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1736 => []
  | 1737 => []
  | 1963 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1965 => []
  | 2035 => []
  | 2057 => []
  | 2193 => []
  | 2487 => []
  | 2536 => [[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]]
  | 2673 => [[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]]
  | _ => []
def map_63_186 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7727 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7727 : InImage map_63_186 image7727 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7727 : Bundle := named_bundle% "RealMapCertificates/relations/basis7727.json"
theorem reductionProof7727 : EqualModuloRelations reduction7727.relations reduction7727.input reduction7727.output := by lin_cert using reduction7727.terms
theorem substitutionProof7727 : IsMapEvaluation generatorImages reduction7727.relations [0,0,926] reduction7727.output := by lin_cert using reduction7727.terms
def map_63_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8219 : InImage map_63_190 image8219 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8219 : Bundle := named_bundle% "RealMapCertificates/relations/basis8219.json"
theorem reductionProof8219 : EqualModuloRelations reduction8219.relations reduction8219.input reduction8219.output := by lin_cert using reduction8219.terms
theorem substitutionProof8219 : IsMapEvaluation generatorImages reduction8219.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction8219.output := by lin_cert using reduction8219.terms
def map_63_191 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8329 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8329 : InImage map_63_191 image8329 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8329 : Bundle := named_bundle% "RealMapCertificates/relations/basis8329.json"
theorem reductionProof8329 : EqualModuloRelations reduction8329.relations reduction8329.input reduction8329.output := by lin_cert using reduction8329.terms
theorem substitutionProof8329 : IsMapEvaluation generatorImages reduction8329.relations [1029] reduction8329.output := by lin_cert using reduction8329.terms
def map_63_192 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8447 : InImage map_63_192 image8447 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8447 : Bundle := named_bundle% "RealMapCertificates/relations/basis8447.json"
theorem reductionProof8447 : EqualModuloRelations reduction8447.relations reduction8447.input reduction8447.output := by lin_cert using reduction8447.terms
theorem substitutionProof8447 : IsMapEvaluation generatorImages reduction8447.relations [0,0,0,995] reduction8447.output := by lin_cert using reduction8447.terms
def map_63_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9284 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9284 : InImage map_63_198 image9284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9284 : Bundle := named_bundle% "RealMapCertificates/relations/basis9284.json"
theorem reductionProof9284 : EqualModuloRelations reduction9284.relations reduction9284.input reduction9284.output := by lin_cert using reduction9284.terms
theorem substitutionProof9284 : IsMapEvaluation generatorImages reduction9284.relations [1140] reduction9284.output := by lin_cert using reduction9284.terms
def map_63_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9774 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9774 : InImage map_63_201 image9774 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9774 : Bundle := named_bundle% "RealMapCertificates/relations/basis9774.json"
theorem reductionProof9774 : EqualModuloRelations reduction9774.relations reduction9774.input reduction9774.output := by lin_cert using reduction9774.terms
theorem substitutionProof9774 : IsMapEvaluation generatorImages reduction9774.relations [1203] reduction9774.output := by lin_cert using reduction9774.terms
def map_63_204 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10261 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10261 : InImage map_63_204 image10261 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10261 : Bundle := named_bundle% "RealMapCertificates/relations/basis10261.json"
theorem reductionProof10261 : EqualModuloRelations reduction10261.relations reduction10261.input reduction10261.output := by lin_cert using reduction10261.terms
theorem substitutionProof10261 : IsMapEvaluation generatorImages reduction10261.relations [16,804] reduction10261.output := by lin_cert using reduction10261.terms
def map_63_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10472 : InImage map_63_205 image10472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10472 : Bundle := named_bundle% "RealMapCertificates/relations/basis10472.json"
theorem reductionProof10472 : EqualModuloRelations reduction10472.relations reduction10472.input reduction10472.output := by lin_cert using reduction10472.terms
theorem substitutionProof10472 : IsMapEvaluation generatorImages reduction10472.relations [0,17,804] reduction10472.output := by lin_cert using reduction10472.terms
def map_63_206 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10612 : InImage map_63_206 image10612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10612 : Bundle := named_bundle% "RealMapCertificates/relations/basis10612.json"
theorem reductionProof10612 : EqualModuloRelations reduction10612.relations reduction10612.input reduction10612.output := by lin_cert using reduction10612.terms
theorem substitutionProof10612 : IsMapEvaluation generatorImages reduction10612.relations [0,0,1253] reduction10612.output := by lin_cert using reduction10612.terms
def map_63_207 : Matrix 7 1 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10812 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10812 : InImage map_63_207 image10812 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10812 : Bundle := named_bundle% "RealMapCertificates/relations/basis10812.json"
theorem reductionProof10812 : EqualModuloRelations reduction10812.relations reduction10812.input reduction10812.output := by lin_cert using reduction10812.terms
theorem substitutionProof10812 : IsMapEvaluation generatorImages reduction10812.relations [8,996] reduction10812.output := by lin_cert using reduction10812.terms
def map_63_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10991 : InImage map_63_208 image10991 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10991 : Bundle := named_bundle% "RealMapCertificates/relations/basis10991.json"
theorem reductionProof10991 : EqualModuloRelations reduction10991.relations reduction10991.input reduction10991.output := by lin_cert using reduction10991.terms
theorem substitutionProof10991 : IsMapEvaluation generatorImages reduction10991.relations [0,17,852] reduction10991.output := by lin_cert using reduction10991.terms
def map_63_210 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11319 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11319 : InImage map_63_210 image11319 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11319 : Bundle := named_bundle% "RealMapCertificates/relations/basis11319.json"
theorem reductionProof11319 : EqualModuloRelations reduction11319.relations reduction11319.input reduction11319.output := by lin_cert using reduction11319.terms
theorem substitutionProof11319 : IsMapEvaluation generatorImages reduction11319.relations [8,8,804] reduction11319.output := by lin_cert using reduction11319.terms
def map_63_212 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11670 : InImage map_63_212 image11670 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11670 : Bundle := named_bundle% "RealMapCertificates/relations/basis11670.json"
theorem reductionProof11670 : EqualModuloRelations reduction11670.relations reduction11670.input reduction11670.output := by lin_cert using reduction11670.terms
theorem substitutionProof11670 : IsMapEvaluation generatorImages reduction11670.relations [0,0,0,0,0,1312] reduction11670.output := by lin_cert using reduction11670.terms
def map_63_213 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11893 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11893 : InImage map_63_213 image11893 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11893 : Bundle := named_bundle% "RealMapCertificates/relations/basis11893.json"
theorem reductionProof11893 : EqualModuloRelations reduction11893.relations reduction11893.input reduction11893.output := by lin_cert using reduction11893.terms
theorem substitutionProof11893 : IsMapEvaluation generatorImages reduction11893.relations [8,8,852] reduction11893.output := by lin_cert using reduction11893.terms
def image11894 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11894 : InImage map_63_213 image11894 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11894 : Bundle := named_bundle% "RealMapCertificates/relations/basis11894.json"
theorem reductionProof11894 : EqualModuloRelations reduction11894.relations reduction11894.input reduction11894.output := by lin_cert using reduction11894.terms
theorem substitutionProof11894 : IsMapEvaluation generatorImages reduction11894.relations [0,0,0,0,0,0,1313] reduction11894.output := by lin_cert using reduction11894.terms
def map_63_216 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12457 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12457 : InImage map_63_216 image12457 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12457 : Bundle := named_bundle% "RealMapCertificates/relations/basis12457.json"
theorem reductionProof12457 : EqualModuloRelations reduction12457.relations reduction12457.input reduction12457.output := by lin_cert using reduction12457.terms
theorem substitutionProof12457 : IsMapEvaluation generatorImages reduction12457.relations [8,8,16,554] reduction12457.output := by lin_cert using reduction12457.terms
def map_63_219 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13040 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13040 : InImage map_63_219 image13040 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13040 : Bundle := named_bundle% "RealMapCertificates/relations/basis13040.json"
theorem reductionProof13040 : EqualModuloRelations reduction13040.relations reduction13040.input reduction13040.output := by lin_cert using reduction13040.terms
theorem substitutionProof13040 : IsMapEvaluation generatorImages reduction13040.relations [8,8,8,701] reduction13040.output := by lin_cert using reduction13040.terms
def map_63_221 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13388 : InImage map_63_221 image13388 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13388 : Bundle := named_bundle% "RealMapCertificates/relations/basis13388.json"
theorem reductionProof13388 : EqualModuloRelations reduction13388.relations reduction13388.input reduction13388.output := by lin_cert using reduction13388.terms
theorem substitutionProof13388 : IsMapEvaluation generatorImages reduction13388.relations [5,1312] reduction13388.output := by lin_cert using reduction13388.terms
def image13389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13389 : InImage map_63_221 image13389 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13389 : Bundle := named_bundle% "RealMapCertificates/relations/basis13389.json"
theorem reductionProof13389 : EqualModuloRelations reduction13389.relations reduction13389.input reduction13389.output := by lin_cert using reduction13389.terms
theorem substitutionProof13389 : IsMapEvaluation generatorImages reduction13389.relations [0,0,0,0,0,0,0,0,0,1396] reduction13389.output := by lin_cert using reduction13389.terms
def map_63_222 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image13587 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13587 : InImage map_63_222 image13587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13587 : Bundle := named_bundle% "RealMapCertificates/relations/basis13587.json"
theorem reductionProof13587 : EqualModuloRelations reduction13587.relations reduction13587.input reduction13587.output := by lin_cert using reduction13587.terms
theorem substitutionProof13587 : IsMapEvaluation generatorImages reduction13587.relations [8,8,8,8,554] reduction13587.output := by lin_cert using reduction13587.terms
def image13588 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13588 : InImage map_63_222 image13588 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13588 : Bundle := named_bundle% "RealMapCertificates/relations/basis13588.json"
theorem reductionProof13588 : EqualModuloRelations reduction13588.relations reduction13588.input reduction13588.output := by lin_cert using reduction13588.terms
theorem substitutionProof13588 : IsMapEvaluation generatorImages reduction13588.relations [0,0,0,0,0,0,0,0,0,0,1397] reduction13588.output := by lin_cert using reduction13588.terms
def map_63_223 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13804 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13804 : InImage map_63_223 image13804 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13804 : Bundle := named_bundle% "RealMapCertificates/relations/basis13804.json"
theorem reductionProof13804 : EqualModuloRelations reduction13804.relations reduction13804.input reduction13804.output := by lin_cert using reduction13804.terms
theorem substitutionProof13804 : IsMapEvaluation generatorImages reduction13804.relations [0,1587] reduction13804.output := by lin_cert using reduction13804.terms
def map_63_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13939 : InImage map_63_224 image13939 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13939 : Bundle := named_bundle% "RealMapCertificates/relations/basis13939.json"
theorem reductionProof13939 : EqualModuloRelations reduction13939.relations reduction13939.input reduction13939.output := by lin_cert using reduction13939.terms
theorem substitutionProof13939 : IsMapEvaluation generatorImages reduction13939.relations [0,0,1588] reduction13939.output := by lin_cert using reduction13939.terms
def map_63_225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14161 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14161 : InImage map_63_225 image14161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14161 : Bundle := named_bundle% "RealMapCertificates/relations/basis14161.json"
theorem reductionProof14161 : EqualModuloRelations reduction14161.relations reduction14161.input reduction14161.output := by lin_cert using reduction14161.terms
theorem substitutionProof14161 : IsMapEvaluation generatorImages reduction14161.relations [8,8,8,8,579] reduction14161.output := by lin_cert using reduction14161.terms
def map_63_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14357 : InImage map_63_226 image14357 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14357 : Bundle := named_bundle% "RealMapCertificates/relations/basis14357.json"
theorem reductionProof14357 : EqualModuloRelations reduction14357.relations reduction14357.input reduction14357.output := by lin_cert using reduction14357.terms
theorem substitutionProof14357 : IsMapEvaluation generatorImages reduction14357.relations [0,8,1312] reduction14357.output := by lin_cert using reduction14357.terms
def map_63_227 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14510 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14510 : InImage map_63_227 image14510 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14510 : Bundle := named_bundle% "RealMapCertificates/relations/basis14510.json"
theorem reductionProof14510 : EqualModuloRelations reduction14510.relations reduction14510.input reduction14510.output := by lin_cert using reduction14510.terms
theorem substitutionProof14510 : IsMapEvaluation generatorImages reduction14510.relations [0,0,8,1313] reduction14510.output := by lin_cert using reduction14510.terms
def map_63_228 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14720 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14720 : InImage map_63_228 image14720 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14720 : Bundle := named_bundle% "RealMapCertificates/relations/basis14720.json"
theorem reductionProof14720 : EqualModuloRelations reduction14720.relations reduction14720.input reduction14720.output := by lin_cert using reduction14720.terms
theorem substitutionProof14720 : IsMapEvaluation generatorImages reduction14720.relations [8,8,8,8,16,296] reduction14720.output := by lin_cert using reduction14720.terms
def map_63_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14955 : InImage map_63_229 image14955 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14955 : Bundle := named_bundle% "RealMapCertificates/relations/basis14955.json"
theorem reductionProof14955 : EqualModuloRelations reduction14955.relations reduction14955.input reduction14955.output := by lin_cert using reduction14955.terms
theorem substitutionProof14955 : IsMapEvaluation generatorImages reduction14955.relations [0,8,1360] reduction14955.output := by lin_cert using reduction14955.terms
def map_63_230 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image15100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15100 : InImage map_63_230 image15100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15100 : Bundle := named_bundle% "RealMapCertificates/relations/basis15100.json"
theorem reductionProof15100 : EqualModuloRelations reduction15100.relations reduction15100.input reduction15100.output := by lin_cert using reduction15100.terms
theorem substitutionProof15100 : IsMapEvaluation generatorImages reduction15100.relations [0,0,8,1361] reduction15100.output := by lin_cert using reduction15100.terms
def image15101 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15101 : InImage map_63_230 image15101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15101 : Bundle := named_bundle% "RealMapCertificates/relations/basis15101.json"
theorem reductionProof15101 : EqualModuloRelations reduction15101.relations reduction15101.input reduction15101.output := by lin_cert using reduction15101.terms
theorem substitutionProof15101 : IsMapEvaluation generatorImages reduction15101.relations [0,0,0,1679] reduction15101.output := by lin_cert using reduction15101.terms
def map_63_231 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15340 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15340 : InImage map_63_231 image15340 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15340 : Bundle := named_bundle% "RealMapCertificates/relations/basis15340.json"
theorem reductionProof15340 : EqualModuloRelations reduction15340.relations reduction15340.input reduction15340.output := by lin_cert using reduction15340.terms
theorem substitutionProof15340 : IsMapEvaluation generatorImages reduction15340.relations [8,8,8,8,8,470] reduction15340.output := by lin_cert using reduction15340.terms
def map_63_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15573 : InImage map_63_232 image15573 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15573 : Bundle := named_bundle% "RealMapCertificates/relations/basis15573.json"
theorem reductionProof15573 : EqualModuloRelations reduction15573.relations reduction15573.input reduction15573.output := by lin_cert using reduction15573.terms
theorem substitutionProof15573 : IsMapEvaluation generatorImages reduction15573.relations [0,8,16,916] reduction15573.output := by lin_cert using reduction15573.terms
def map_63_233 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image15752 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15752 : InImage map_63_233 image15752 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15752 : Bundle := named_bundle% "RealMapCertificates/relations/basis15752.json"
theorem reductionProof15752 : EqualModuloRelations reduction15752.relations reduction15752.input reduction15752.output := by lin_cert using reduction15752.terms
theorem substitutionProof15752 : IsMapEvaluation generatorImages reduction15752.relations [0,0,8,16,917] reduction15752.output := by lin_cert using reduction15752.terms
def map_63_234 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image15987 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15987 : InImage map_63_234 image15987 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15987 : Bundle := named_bundle% "RealMapCertificates/relations/basis15987.json"
theorem reductionProof15987 : EqualModuloRelations reduction15987.relations reduction15987.input reduction15987.output := by lin_cert using reduction15987.terms
theorem substitutionProof15987 : IsMapEvaluation generatorImages reduction15987.relations [8,8,8,8,8,8,296] reduction15987.output := by lin_cert using reduction15987.terms
def map_63_235 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16240 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16240 : InImage map_63_235 image16240 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16240 : Bundle := named_bundle% "RealMapCertificates/relations/basis16240.json"
theorem reductionProof16240 : EqualModuloRelations reduction16240.relations reduction16240.input reduction16240.output := by lin_cert using reduction16240.terms
theorem substitutionProof16240 : IsMapEvaluation generatorImages reduction16240.relations [0,8,8,1141] reduction16240.output := by lin_cert using reduction16240.terms
def map_63_236 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16417 : InImage map_63_236 image16417 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16417 : Bundle := named_bundle% "RealMapCertificates/relations/basis16417.json"
theorem reductionProof16417 : EqualModuloRelations reduction16417.relations reduction16417.input reduction16417.output := by lin_cert using reduction16417.terms
theorem substitutionProof16417 : IsMapEvaluation generatorImages reduction16417.relations [0,0,8,8,1142] reduction16417.output := by lin_cert using reduction16417.terms
def map_63_237 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16659 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16659 : InImage map_63_237 image16659 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16659 : Bundle := named_bundle% "RealMapCertificates/relations/basis16659.json"
theorem reductionProof16659 : EqualModuloRelations reduction16659.relations reduction16659.input reduction16659.output := by lin_cert using reduction16659.terms
theorem substitutionProof16659 : IsMapEvaluation generatorImages reduction16659.relations [8,8,8,8,8,8,326] reduction16659.output := by lin_cert using reduction16659.terms
def map_63_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16900 : InImage map_63_238 image16900 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16900 : Bundle := named_bundle% "RealMapCertificates/relations/basis16900.json"
theorem reductionProof16900 : EqualModuloRelations reduction16900.relations reduction16900.input reduction16900.output := by lin_cert using reduction16900.terms
theorem substitutionProof16900 : IsMapEvaluation generatorImages reduction16900.relations [0,8,8,8,916] reduction16900.output := by lin_cert using reduction16900.terms
def map_63_239 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17106 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17106 : InImage map_63_239 image17106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17106 : Bundle := named_bundle% "RealMapCertificates/relations/basis17106.json"
theorem reductionProof17106 : EqualModuloRelations reduction17106.relations reduction17106.input reduction17106.output := by lin_cert using reduction17106.terms
theorem substitutionProof17106 : IsMapEvaluation generatorImages reduction17106.relations [0,0,8,8,8,917] reduction17106.output := by lin_cert using reduction17106.terms
def map_63_240 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image17358 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17358 : InImage map_63_240 image17358 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17358 : Bundle := named_bundle% "RealMapCertificates/relations/basis17358.json"
theorem reductionProof17358 : EqualModuloRelations reduction17358.relations reduction17358.input reduction17358.output := by lin_cert using reduction17358.terms
theorem substitutionProof17358 : IsMapEvaluation generatorImages reduction17358.relations [8,8,8,8,8,8,16,183] reduction17358.output := by lin_cert using reduction17358.terms
def image17359 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17359 : InImage map_63_240 image17359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17359 : Bundle := named_bundle% "RealMapCertificates/relations/basis17359.json"
theorem reductionProof17359 : EqualModuloRelations reduction17359.relations reduction17359.input reduction17359.output := by lin_cert using reduction17359.terms
theorem substitutionProof17359 : IsMapEvaluation generatorImages reduction17359.relations [0,1963] reduction17359.output := by lin_cert using reduction17359.terms
def map_63_242 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17865 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17865 : InImage map_63_242 image17865 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17865 : Bundle := named_bundle% "RealMapCertificates/relations/basis17865.json"
theorem reductionProof17865 : EqualModuloRelations reduction17865.relations reduction17865.input reduction17865.output := by lin_cert using reduction17865.terms
theorem substitutionProof17865 : IsMapEvaluation generatorImages reduction17865.relations [17,1395] reduction17865.output := by lin_cert using reduction17865.terms
def map_63_243 : Matrix 5 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18135 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18135 : InImage map_63_243 image18135 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18135 : Bundle := named_bundle% "RealMapCertificates/relations/basis18135.json"
theorem reductionProof18135 : EqualModuloRelations reduction18135.relations reduction18135.input reduction18135.output := by lin_cert using reduction18135.terms
theorem substitutionProof18135 : IsMapEvaluation generatorImages reduction18135.relations [59,916] reduction18135.output := by lin_cert using reduction18135.terms
def image18136 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18136 : InImage map_63_243 image18136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18136 : Bundle := named_bundle% "RealMapCertificates/relations/basis18136.json"
theorem reductionProof18136 : EqualModuloRelations reduction18136.relations reduction18136.input reduction18136.output := by lin_cert using reduction18136.terms
theorem substitutionProof18136 : IsMapEvaluation generatorImages reduction18136.relations [17,17,917] reduction18136.output := by lin_cert using reduction18136.terms
def image18137 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18137 : InImage map_63_243 image18137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18137 : Bundle := named_bundle% "RealMapCertificates/relations/basis18137.json"
theorem reductionProof18137 : EqualModuloRelations reduction18137.relations reduction18137.input reduction18137.output := by lin_cert using reduction18137.terms
theorem substitutionProof18137 : IsMapEvaluation generatorImages reduction18137.relations [8,8,8,8,8,8,8,253] reduction18137.output := by lin_cert using reduction18137.terms
def map_63_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18399 : InImage map_63_244 image18399 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18399 : Bundle := named_bundle% "RealMapCertificates/relations/basis18399.json"
theorem reductionProof18399 : EqualModuloRelations reduction18399.relations reduction18399.input reduction18399.output := by lin_cert using reduction18399.terms
theorem substitutionProof18399 : IsMapEvaluation generatorImages reduction18399.relations [0,0,0,0,0,1965] reduction18399.output := by lin_cert using reduction18399.terms
def map_63_245 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image18610 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18610 : InImage map_63_245 image18610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18610 : Bundle := named_bundle% "RealMapCertificates/relations/basis18610.json"
theorem reductionProof18610 : EqualModuloRelations reduction18610.relations reduction18610.input reduction18610.output := by lin_cert using reduction18610.terms
theorem substitutionProof18610 : IsMapEvaluation generatorImages reduction18610.relations [17,1468] reduction18610.output := by lin_cert using reduction18610.terms
def image18611 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18611 : InImage map_63_245 image18611 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18611 : Bundle := named_bundle% "RealMapCertificates/relations/basis18611.json"
theorem reductionProof18611 : EqualModuloRelations reduction18611.relations reduction18611.input reduction18611.output := by lin_cert using reduction18611.terms
theorem substitutionProof18611 : IsMapEvaluation generatorImages reduction18611.relations [0,0,0,0,2035] reduction18611.output := by lin_cert using reduction18611.terms
def map_63_246 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image18884 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18884 : InImage map_63_246 image18884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18884 : Bundle := named_bundle% "RealMapCertificates/relations/basis18884.json"
theorem reductionProof18884 : EqualModuloRelations reduction18884.relations reduction18884.input reduction18884.output := by lin_cert using reduction18884.terms
theorem substitutionProof18884 : IsMapEvaluation generatorImages reduction18884.relations [17,17,953] reduction18884.output := by lin_cert using reduction18884.terms
def image18885 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18885 : InImage map_63_246 image18885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18885 : Bundle := named_bundle% "RealMapCertificates/relations/basis18885.json"
theorem reductionProof18885 : EqualModuloRelations reduction18885.relations reduction18885.input reduction18885.output := by lin_cert using reduction18885.terms
theorem substitutionProof18885 : IsMapEvaluation generatorImages reduction18885.relations [8,8,8,8,8,8,8,8,183] reduction18885.output := by lin_cert using reduction18885.terms
def map_63_248 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19404 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19404 : InImage map_63_248 image19404 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19404 : Bundle := named_bundle% "RealMapCertificates/relations/basis19404.json"
theorem reductionProof19404 : EqualModuloRelations reduction19404.relations reduction19404.input reduction19404.output := by lin_cert using reduction19404.terms
theorem substitutionProof19404 : IsMapEvaluation generatorImages reduction19404.relations [16,17,969] reduction19404.output := by lin_cert using reduction19404.terms
def map_63_249 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image19699 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19699 : InImage map_63_249 image19699 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19699 : Bundle := named_bundle% "RealMapCertificates/relations/basis19699.json"
theorem reductionProof19699 : EqualModuloRelations reduction19699.relations reduction19699.input reduction19699.output := by lin_cert using reduction19699.terms
theorem substitutionProof19699 : IsMapEvaluation generatorImages reduction19699.relations [8,42,916] reduction19699.output := by lin_cert using reduction19699.terms
def image19700 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19700 : InImage map_63_249 image19700 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19700 : Bundle := named_bundle% "RealMapCertificates/relations/basis19700.json"
theorem reductionProof19700 : EqualModuloRelations reduction19700.relations reduction19700.input reduction19700.output := by lin_cert using reduction19700.terms
theorem substitutionProof19700 : IsMapEvaluation generatorImages reduction19700.relations [8,8,8,8,8,8,8,8,200] reduction19700.output := by lin_cert using reduction19700.terms
def image19701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19701 : InImage map_63_249 image19701 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19701 : Bundle := named_bundle% "RealMapCertificates/relations/basis19701.json"
theorem reductionProof19701 : EqualModuloRelations reduction19701.relations reduction19701.input reduction19701.output := by lin_cert using reduction19701.terms
theorem substitutionProof19701 : IsMapEvaluation generatorImages reduction19701.relations [0,0,0,64,916] reduction19701.output := by lin_cert using reduction19701.terms
def map_63_250 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image19976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19976 : InImage map_63_250 image19976 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19976 : Bundle := named_bundle% "RealMapCertificates/relations/basis19976.json"
theorem reductionProof19976 : EqualModuloRelations reduction19976.relations reduction19976.input reduction19976.output := by lin_cert using reduction19976.terms
theorem substitutionProof19976 : IsMapEvaluation generatorImages reduction19976.relations [0,0,0,0,64,917] reduction19976.output := by lin_cert using reduction19976.terms
def map_63_251 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20212 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20212 : InImage map_63_251 image20212 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20212 : Bundle := named_bundle% "RealMapCertificates/relations/basis20212.json"
theorem reductionProof20212 : EqualModuloRelations reduction20212.relations reduction20212.input reduction20212.output := by lin_cert using reduction20212.terms
theorem substitutionProof20212 : IsMapEvaluation generatorImages reduction20212.relations [8,17,1239] reduction20212.output := by lin_cert using reduction20212.terms
def map_63_252 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20501 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20501 : InImage map_63_252 image20501 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20501 : Bundle := named_bundle% "RealMapCertificates/relations/basis20501.json"
theorem reductionProof20501 : EqualModuloRelations reduction20501.relations reduction20501.input reduction20501.output := by lin_cert using reduction20501.terms
theorem substitutionProof20501 : IsMapEvaluation generatorImages reduction20501.relations [8,17,17,806] reduction20501.output := by lin_cert using reduction20501.terms
def image20502 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20502 : InImage map_63_252 image20502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20502 : Bundle := named_bundle% "RealMapCertificates/relations/basis20502.json"
theorem reductionProof20502 : EqualModuloRelations reduction20502.relations reduction20502.input reduction20502.output := by lin_cert using reduction20502.terms
theorem substitutionProof20502 : IsMapEvaluation generatorImages reduction20502.relations [8,8,8,8,8,8,8,8,16,111] reduction20502.output := by lin_cert using reduction20502.terms
def image20503 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20503 : InImage map_63_252 image20503 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20503 : Bundle := named_bundle% "RealMapCertificates/relations/basis20503.json"
theorem reductionProof20503 : EqualModuloRelations reduction20503.relations reduction20503.input reduction20503.output := by lin_cert using reduction20503.terms
theorem substitutionProof20503 : IsMapEvaluation generatorImages reduction20503.relations [0,0,0,0,0,0,2193] reduction20503.output := by lin_cert using reduction20503.terms
def map_63_253 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20800 : InImage map_63_253 image20800 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20800 : Bundle := named_bundle% "RealMapCertificates/relations/basis20800.json"
theorem reductionProof20800 : EqualModuloRelations reduction20800.relations reduction20800.input reduction20800.output := by lin_cert using reduction20800.terms
theorem substitutionProof20800 : IsMapEvaluation generatorImages reduction20800.relations [5,1965] reduction20800.output := by lin_cert using reduction20800.terms
def image20801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20801 : InImage map_63_253 image20801 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20801 : Bundle := named_bundle% "RealMapCertificates/relations/basis20801.json"
theorem reductionProof20801 : EqualModuloRelations reduction20801.relations reduction20801.input reduction20801.output := by lin_cert using reduction20801.terms
theorem substitutionProof20801 : IsMapEvaluation generatorImages reduction20801.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction20801.output := by lin_cert using reduction20801.terms
def map_63_254 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21036 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21036 : InImage map_63_254 image21036 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21036 : Bundle := named_bundle% "RealMapCertificates/relations/basis21036.json"
theorem reductionProof21036 : EqualModuloRelations reduction21036.relations reduction21036.input reduction21036.output := by lin_cert using reduction21036.terms
theorem substitutionProof21036 : IsMapEvaluation generatorImages reduction21036.relations [8,8,17,969] reduction21036.output := by lin_cert using reduction21036.terms
def image21037 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21037 : InImage map_63_254 image21037 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21037 : Bundle := named_bundle% "RealMapCertificates/relations/basis21037.json"
theorem reductionProof21037 : EqualModuloRelations reduction21037.relations reduction21037.input reduction21037.output := by lin_cert using reduction21037.terms
theorem substitutionProof21037 : IsMapEvaluation generatorImages reduction21037.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction21037.output := by lin_cert using reduction21037.terms
def map_63_255 : Matrix 6 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21375 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21375 : InImage map_63_255 image21375 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21375 : Bundle := named_bundle% "RealMapCertificates/relations/basis21375.json"
theorem reductionProof21375 : EqualModuloRelations reduction21375.relations reduction21375.input reduction21375.output := by lin_cert using reduction21375.terms
theorem substitutionProof21375 : IsMapEvaluation generatorImages reduction21375.relations [8,8,17,17,636] reduction21375.output := by lin_cert using reduction21375.terms
def image21376 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21376 : InImage map_63_255 image21376 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21376 : Bundle := named_bundle% "RealMapCertificates/relations/basis21376.json"
theorem reductionProof21376 : EqualModuloRelations reduction21376.relations reduction21376.input reduction21376.output := by lin_cert using reduction21376.terms
theorem substitutionProof21376 : IsMapEvaluation generatorImages reduction21376.relations [8,8,8,8,8,8,8,8,8,153] reduction21376.output := by lin_cert using reduction21376.terms
def image21377 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21377 : InImage map_63_255 image21377 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21377 : Bundle := named_bundle% "RealMapCertificates/relations/basis21377.json"
theorem reductionProof21377 : EqualModuloRelations reduction21377.relations reduction21377.input reduction21377.output := by lin_cert using reduction21377.terms
theorem substitutionProof21377 : IsMapEvaluation generatorImages reduction21377.relations [0,2487] reduction21377.output := by lin_cert using reduction21377.terms
def map_63_256 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21690 : InImage map_63_256 image21690 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21690 : Bundle := named_bundle% "RealMapCertificates/relations/basis21690.json"
theorem reductionProof21690 : EqualModuloRelations reduction21690.relations reduction21690.input reduction21690.output := by lin_cert using reduction21690.terms
theorem substitutionProof21690 : IsMapEvaluation generatorImages reduction21690.relations [0,2536] reduction21690.output := by lin_cert using reduction21690.terms
def image21691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21691 : InImage map_63_256 image21691 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21691 : Bundle := named_bundle% "RealMapCertificates/relations/basis21691.json"
theorem reductionProof21691 : EqualModuloRelations reduction21691.relations reduction21691.input reduction21691.output := by lin_cert using reduction21691.terms
theorem substitutionProof21691 : IsMapEvaluation generatorImages reduction21691.relations [0,0,0,0,0,64,969] reduction21691.output := by lin_cert using reduction21691.terms
def map_63_257 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21985 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21985 : InImage map_63_257 image21985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21985 : Bundle := named_bundle% "RealMapCertificates/relations/basis21985.json"
theorem reductionProof21985 : EqualModuloRelations reduction21985.relations reduction21985.input reduction21985.output := by lin_cert using reduction21985.terms
theorem substitutionProof21985 : IsMapEvaluation generatorImages reduction21985.relations [8,8,17,1030] reduction21985.output := by lin_cert using reduction21985.terms
def image21986 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21986 : InImage map_63_257 image21986 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21986 : Bundle := named_bundle% "RealMapCertificates/relations/basis21986.json"
theorem reductionProof21986 : EqualModuloRelations reduction21986.relations reduction21986.input reduction21986.output := by lin_cert using reduction21986.terms
theorem substitutionProof21986 : IsMapEvaluation generatorImages reduction21986.relations [0,0,0,0,0,0,138,685] reduction21986.output := by lin_cert using reduction21986.terms
def map_63_258 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image22332 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22332 : InImage map_63_258 image22332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22332 : Bundle := named_bundle% "RealMapCertificates/relations/basis22332.json"
theorem reductionProof22332 : EqualModuloRelations reduction22332.relations reduction22332.input reduction22332.output := by lin_cert using reduction22332.terms
theorem substitutionProof22332 : IsMapEvaluation generatorImages reduction22332.relations [8,8,17,17,663] reduction22332.output := by lin_cert using reduction22332.terms
def image22333 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22333 : InImage map_63_258 image22333 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22333 : Bundle := named_bundle% "RealMapCertificates/relations/basis22333.json"
theorem reductionProof22333 : EqualModuloRelations reduction22333.relations reduction22333.input reduction22333.output := by lin_cert using reduction22333.terms
theorem substitutionProof22333 : IsMapEvaluation generatorImages reduction22333.relations [8,8,8,8,8,8,8,8,8,8,111] reduction22333.output := by lin_cert using reduction22333.terms
def image22334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22334 : InImage map_63_258 image22334 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22334 : Bundle := named_bundle% "RealMapCertificates/relations/basis22334.json"
theorem reductionProof22334 : EqualModuloRelations reduction22334.relations reduction22334.input reduction22334.output := by lin_cert using reduction22334.terms
theorem substitutionProof22334 : IsMapEvaluation generatorImages reduction22334.relations [0,8,1965] reduction22334.output := by lin_cert using reduction22334.terms
def map_63_259 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image22695 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22695 : InImage map_63_259 image22695 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22695 : Bundle := named_bundle% "RealMapCertificates/relations/basis22695.json"
theorem reductionProof22695 : EqualModuloRelations reduction22695.relations reduction22695.input reduction22695.output := by lin_cert using reduction22695.terms
theorem substitutionProof22695 : IsMapEvaluation generatorImages reduction22695.relations [0,2673] reduction22695.output := by lin_cert using reduction22695.terms
def map_63_260 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23011 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23011 : InImage map_63_260 image23011 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23011 : Bundle := named_bundle% "RealMapCertificates/relations/basis23011.json"
theorem reductionProof23011 : EqualModuloRelations reduction23011.relations reduction23011.input reduction23011.output := by lin_cert using reduction23011.terms
theorem substitutionProof23011 : IsMapEvaluation generatorImages reduction23011.relations [8,8,16,17,685] reduction23011.output := by lin_cert using reduction23011.terms
def map_63_261 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image23444 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23444 : InImage map_63_261 image23444 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23444 : Bundle := named_bundle% "RealMapCertificates/relations/basis23444.json"
theorem reductionProof23444 : EqualModuloRelations reduction23444.relations reduction23444.input reduction23444.output := by lin_cert using reduction23444.terms
theorem substitutionProof23444 : IsMapEvaluation generatorImages reduction23444.relations [64,1142] reduction23444.output := by lin_cert using reduction23444.terms
def image23445 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23445 : InImage map_63_261 image23445 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23445 : Bundle := named_bundle% "RealMapCertificates/relations/basis23445.json"
theorem reductionProof23445 : EqualModuloRelations reduction23445.relations reduction23445.input reduction23445.output := by lin_cert using reduction23445.terms
theorem substitutionProof23445 : IsMapEvaluation generatorImages reduction23445.relations [8,8,8,42,635] reduction23445.output := by lin_cert using reduction23445.terms
def image23446 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23446 : InImage map_63_261 image23446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23446 : Bundle := named_bundle% "RealMapCertificates/relations/basis23446.json"
theorem reductionProof23446 : EqualModuloRelations reduction23446.relations reduction23446.input reduction23446.output := by lin_cert using reduction23446.terms
theorem substitutionProof23446 : IsMapEvaluation generatorImages reduction23446.relations [8,8,8,8,8,8,8,8,8,8,117] reduction23446.output := by lin_cert using reduction23446.terms
def image23447 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23447 : InImage map_63_261 image23447 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23447 : Bundle := named_bundle% "RealMapCertificates/relations/basis23447.json"
theorem reductionProof23447 : EqualModuloRelations reduction23447.relations reduction23447.input reduction23447.output := by lin_cert using reduction23447.terms
theorem substitutionProof23447 : IsMapEvaluation generatorImages reduction23447.relations [0,8,2057] reduction23447.output := by lin_cert using reduction23447.terms
def map_64_64 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image387 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation387 : InImage map_64_64 image387 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction387 : Bundle := named_bundle% "RealMapCertificates/relations/basis387.json"
theorem reductionProof387 : EqualModuloRelations reduction387.relations reduction387.input reduction387.output := by lin_cert using reduction387.terms
theorem substitutionProof387 : IsMapEvaluation generatorImages reduction387.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction387.output := by lin_cert using reduction387.terms
def map_64_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8328 : InImage map_64_191 image8328 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8328 : Bundle := named_bundle% "RealMapCertificates/relations/basis8328.json"
theorem reductionProof8328 : EqualModuloRelations reduction8328.relations reduction8328.input reduction8328.output := by lin_cert using reduction8328.terms
theorem substitutionProof8328 : IsMapEvaluation generatorImages reduction8328.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction8328.output := by lin_cert using reduction8328.terms
def map_64_193 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8603 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8603 : InImage map_64_193 image8603 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8603 : Bundle := named_bundle% "RealMapCertificates/relations/basis8603.json"
theorem reductionProof8603 : EqualModuloRelations reduction8603.relations reduction8603.input reduction8603.output := by lin_cert using reduction8603.terms
theorem substitutionProof8603 : IsMapEvaluation generatorImages reduction8603.relations [1,1029] reduction8603.output := by lin_cert using reduction8603.terms
def map_64_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9283 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9283 : InImage map_64_198 image9283 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9283 : Bundle := named_bundle% "RealMapCertificates/relations/basis9283.json"
theorem reductionProof9283 : EqualModuloRelations reduction9283.relations reduction9283.input reduction9283.output := by lin_cert using reduction9283.terms
theorem substitutionProof9283 : IsMapEvaluation generatorImages reduction9283.relations [1139] reduction9283.output := by lin_cert using reduction9283.terms
def map_64_199 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9470 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9470 : InImage map_64_199 image9470 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9470 : Bundle := named_bundle% "RealMapCertificates/relations/basis9470.json"
theorem reductionProof9470 : EqualModuloRelations reduction9470.relations reduction9470.input reduction9470.output := by lin_cert using reduction9470.terms
theorem substitutionProof9470 : IsMapEvaluation generatorImages reduction9470.relations [0,1140] reduction9470.output := by lin_cert using reduction9470.terms
def map_64_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9773 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9773 : InImage map_64_201 image9773 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9773 : Bundle := named_bundle% "RealMapCertificates/relations/basis9773.json"
theorem reductionProof9773 : EqualModuloRelations reduction9773.relations reduction9773.input reduction9773.output := by lin_cert using reduction9773.terms
theorem substitutionProof9773 : IsMapEvaluation generatorImages reduction9773.relations [1202] reduction9773.output := by lin_cert using reduction9773.terms
def map_64_202 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9948 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9948 : InImage map_64_202 image9948 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9948 : Bundle := named_bundle% "RealMapCertificates/relations/basis9948.json"
theorem reductionProof9948 : EqualModuloRelations reduction9948.relations reduction9948.input reduction9948.output := by lin_cert using reduction9948.terms
theorem substitutionProof9948 : IsMapEvaluation generatorImages reduction9948.relations [0,1203] reduction9948.output := by lin_cert using reduction9948.terms
def map_64_204 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10260 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10260 : InImage map_64_204 image10260 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10260 : Bundle := named_bundle% "RealMapCertificates/relations/basis10260.json"
theorem reductionProof10260 : EqualModuloRelations reduction10260.relations reduction10260.input reduction10260.output := by lin_cert using reduction10260.terms
theorem substitutionProof10260 : IsMapEvaluation generatorImages reduction10260.relations [8,951] reduction10260.output := by lin_cert using reduction10260.terms
def map_64_205 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10471 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10471 : InImage map_64_205 image10471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10471 : Bundle := named_bundle% "RealMapCertificates/relations/basis10471.json"
theorem reductionProof10471 : EqualModuloRelations reduction10471.relations reduction10471.input reduction10471.output := by lin_cert using reduction10471.terms
theorem substitutionProof10471 : IsMapEvaluation generatorImages reduction10471.relations [0,16,804] reduction10471.output := by lin_cert using reduction10471.terms
def map_64_206 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10611 : InImage map_64_206 image10611 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10611 : Bundle := named_bundle% "RealMapCertificates/relations/basis10611.json"
theorem reductionProof10611 : EqualModuloRelations reduction10611.relations reduction10611.input reduction10611.output := by lin_cert using reduction10611.terms
theorem substitutionProof10611 : IsMapEvaluation generatorImages reduction10611.relations [0,0,17,804] reduction10611.output := by lin_cert using reduction10611.terms
def map_64_207 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10810 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10810 : InImage map_64_207 image10810 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10810 : Bundle := named_bundle% "RealMapCertificates/relations/basis10810.json"
theorem reductionProof10810 : EqualModuloRelations reduction10810.relations reduction10810.input reduction10810.output := by lin_cert using reduction10810.terms
theorem substitutionProof10810 : IsMapEvaluation generatorImages reduction10810.relations [8,995] reduction10810.output := by lin_cert using reduction10810.terms
def image10811 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10811 : InImage map_64_207 image10811 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10811 : Bundle := named_bundle% "RealMapCertificates/relations/basis10811.json"
theorem reductionProof10811 : EqualModuloRelations reduction10811.relations reduction10811.input reduction10811.output := by lin_cert using reduction10811.terms
theorem substitutionProof10811 : IsMapEvaluation generatorImages reduction10811.relations [0,0,0,1253] reduction10811.output := by lin_cert using reduction10811.terms
def map_64_208 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10990 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10990 : InImage map_64_208 image10990 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10990 : Bundle := named_bundle% "RealMapCertificates/relations/basis10990.json"
theorem reductionProof10990 : EqualModuloRelations reduction10990.relations reduction10990.input reduction10990.output := by lin_cert using reduction10990.terms
theorem substitutionProof10990 : IsMapEvaluation generatorImages reduction10990.relations [0,8,996] reduction10990.output := by lin_cert using reduction10990.terms
def map_64_210 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11318 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11318 : InImage map_64_210 image11318 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11318 : Bundle := named_bundle% "RealMapCertificates/relations/basis11318.json"
theorem reductionProof11318 : EqualModuloRelations reduction11318.relations reduction11318.input reduction11318.output := by lin_cert using reduction11318.terms
theorem substitutionProof11318 : IsMapEvaluation generatorImages reduction11318.relations [8,8,803] reduction11318.output := by lin_cert using reduction11318.terms
def map_64_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11536 : InImage map_64_211 image11536 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11536 : Bundle := named_bundle% "RealMapCertificates/relations/basis11536.json"
theorem reductionProof11536 : EqualModuloRelations reduction11536.relations reduction11536.input reduction11536.output := by lin_cert using reduction11536.terms
theorem substitutionProof11536 : IsMapEvaluation generatorImages reduction11536.relations [0,8,8,804] reduction11536.output := by lin_cert using reduction11536.terms
def map_64_213 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11891 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11891 : InImage map_64_213 image11891 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11891 : Bundle := named_bundle% "RealMapCertificates/relations/basis11891.json"
theorem reductionProof11891 : EqualModuloRelations reduction11891.relations reduction11891.input reduction11891.output := by lin_cert using reduction11891.terms
theorem substitutionProof11891 : IsMapEvaluation generatorImages reduction11891.relations [8,8,851] reduction11891.output := by lin_cert using reduction11891.terms
def image11892 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11892 : InImage map_64_213 image11892 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11892 : Bundle := named_bundle% "RealMapCertificates/relations/basis11892.json"
theorem reductionProof11892 : EqualModuloRelations reduction11892.relations reduction11892.input reduction11892.output := by lin_cert using reduction11892.terms
theorem substitutionProof11892 : IsMapEvaluation generatorImages reduction11892.relations [0,0,0,0,0,0,1312] reduction11892.output := by lin_cert using reduction11892.terms
def map_64_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12110 : InImage map_64_214 image12110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12110 : Bundle := named_bundle% "RealMapCertificates/relations/basis12110.json"
theorem reductionProof12110 : EqualModuloRelations reduction12110.relations reduction12110.input reduction12110.output := by lin_cert using reduction12110.terms
theorem substitutionProof12110 : IsMapEvaluation generatorImages reduction12110.relations [0,0,0,0,0,0,0,1313] reduction12110.output := by lin_cert using reduction12110.terms
def map_64_216 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12456 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12456 : InImage map_64_216 image12456 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12456 : Bundle := named_bundle% "RealMapCertificates/relations/basis12456.json"
theorem reductionProof12456 : EqualModuloRelations reduction12456.relations reduction12456.input reduction12456.output := by lin_cert using reduction12456.terms
theorem substitutionProof12456 : IsMapEvaluation generatorImages reduction12456.relations [8,8,8,661] reduction12456.output := by lin_cert using reduction12456.terms
def map_64_219 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13039 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13039 : InImage map_64_219 image13039 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13039 : Bundle := named_bundle% "RealMapCertificates/relations/basis13039.json"
theorem reductionProof13039 : EqualModuloRelations reduction13039.relations reduction13039.input reduction13039.output := by lin_cert using reduction13039.terms
theorem substitutionProof13039 : IsMapEvaluation generatorImages reduction13039.relations [8,8,8,700] reduction13039.output := by lin_cert using reduction13039.terms
def map_64_222 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image13585 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13585 : InImage map_64_222 image13585 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13585 : Bundle := named_bundle% "RealMapCertificates/relations/basis13585.json"
theorem reductionProof13585 : EqualModuloRelations reduction13585.relations reduction13585.input reduction13585.output := by lin_cert using reduction13585.terms
theorem substitutionProof13585 : IsMapEvaluation generatorImages reduction13585.relations [8,8,8,8,553] reduction13585.output := by lin_cert using reduction13585.terms
def image13586 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13586 : InImage map_64_222 image13586 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13586 : Bundle := named_bundle% "RealMapCertificates/relations/basis13586.json"
theorem reductionProof13586 : EqualModuloRelations reduction13586.relations reduction13586.input reduction13586.output := by lin_cert using reduction13586.terms
theorem substitutionProof13586 : IsMapEvaluation generatorImages reduction13586.relations [0,0,0,0,0,0,0,0,0,0,1396] reduction13586.output := by lin_cert using reduction13586.terms
end RealMapCertificates
