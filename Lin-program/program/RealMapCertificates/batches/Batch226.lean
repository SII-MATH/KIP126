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
  | 59 => []
  | 64 => []
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 915 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1048 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1075 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1092 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1101 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
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
  | 1468 => [[4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1480 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1533 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1736 => []
  | 1737 => []
  | 1748 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1828 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1888 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1962 => [[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1965 => []
  | 2035 => []
  | 2487 => []
  | _ => []
def map_64_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13802 : InImage map_64_223 image13802 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13802 : Bundle := named_bundle% "RealMapCertificates/relations/basis13802.json"
theorem reductionProof13802 : EqualModuloRelations reduction13802.relations reduction13802.input reduction13802.output := by lin_cert using reduction13802.terms
theorem substitutionProof13802 : IsMapEvaluation generatorImages reduction13802.relations [1,5,1312] reduction13802.output := by lin_cert using reduction13802.terms
def image13803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13803 : InImage map_64_223 image13803 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13803 : Bundle := named_bundle% "RealMapCertificates/relations/basis13803.json"
theorem reductionProof13803 : EqualModuloRelations reduction13803.relations reduction13803.input reduction13803.output := by lin_cert using reduction13803.terms
theorem substitutionProof13803 : IsMapEvaluation generatorImages reduction13803.relations [0,0,0,0,0,0,0,0,0,0,0,1397] reduction13803.output := by lin_cert using reduction13803.terms
def map_64_224 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13938 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13938 : InImage map_64_224 image13938 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13938 : Bundle := named_bundle% "RealMapCertificates/relations/basis13938.json"
theorem reductionProof13938 : EqualModuloRelations reduction13938.relations reduction13938.input reduction13938.output := by lin_cert using reduction13938.terms
theorem substitutionProof13938 : IsMapEvaluation generatorImages reduction13938.relations [0,0,1587] reduction13938.output := by lin_cert using reduction13938.terms
def map_64_225 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14160 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14160 : InImage map_64_225 image14160 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14160 : Bundle := named_bundle% "RealMapCertificates/relations/basis14160.json"
theorem reductionProof14160 : EqualModuloRelations reduction14160.relations reduction14160.input reduction14160.output := by lin_cert using reduction14160.terms
theorem substitutionProof14160 : IsMapEvaluation generatorImages reduction14160.relations [8,8,8,8,578] reduction14160.output := by lin_cert using reduction14160.terms
def map_64_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14509 : InImage map_64_227 image14509 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14509 : Bundle := named_bundle% "RealMapCertificates/relations/basis14509.json"
theorem reductionProof14509 : EqualModuloRelations reduction14509.relations reduction14509.input reduction14509.output := by lin_cert using reduction14509.terms
theorem substitutionProof14509 : IsMapEvaluation generatorImages reduction14509.relations [0,0,8,1312] reduction14509.output := by lin_cert using reduction14509.terms
def map_64_228 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14719 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14719 : InImage map_64_228 image14719 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14719 : Bundle := named_bundle% "RealMapCertificates/relations/basis14719.json"
theorem reductionProof14719 : EqualModuloRelations reduction14719.relations reduction14719.input reduction14719.output := by lin_cert using reduction14719.terms
theorem substitutionProof14719 : IsMapEvaluation generatorImages reduction14719.relations [8,8,8,8,8,431] reduction14719.output := by lin_cert using reduction14719.terms
def map_64_230 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image15099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15099 : InImage map_64_230 image15099 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15099 : Bundle := named_bundle% "RealMapCertificates/relations/basis15099.json"
theorem reductionProof15099 : EqualModuloRelations reduction15099.relations reduction15099.input reduction15099.output := by lin_cert using reduction15099.terms
theorem substitutionProof15099 : IsMapEvaluation generatorImages reduction15099.relations [0,0,8,1360] reduction15099.output := by lin_cert using reduction15099.terms
def map_64_231 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image15339 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15339 : InImage map_64_231 image15339 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15339 : Bundle := named_bundle% "RealMapCertificates/relations/basis15339.json"
theorem reductionProof15339 : EqualModuloRelations reduction15339.relations reduction15339.input reduction15339.output := by lin_cert using reduction15339.terms
theorem substitutionProof15339 : IsMapEvaluation generatorImages reduction15339.relations [8,8,8,8,8,469] reduction15339.output := by lin_cert using reduction15339.terms
def map_64_233 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image15751 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15751 : InImage map_64_233 image15751 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15751 : Bundle := named_bundle% "RealMapCertificates/relations/basis15751.json"
theorem reductionProof15751 : EqualModuloRelations reduction15751.relations reduction15751.input reduction15751.output := by lin_cert using reduction15751.terms
theorem substitutionProof15751 : IsMapEvaluation generatorImages reduction15751.relations [0,0,8,16,916] reduction15751.output := by lin_cert using reduction15751.terms
def map_64_234 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image15986 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15986 : InImage map_64_234 image15986 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15986 : Bundle := named_bundle% "RealMapCertificates/relations/basis15986.json"
theorem reductionProof15986 : EqualModuloRelations reduction15986.relations reduction15986.input reduction15986.output := by lin_cert using reduction15986.terms
theorem substitutionProof15986 : IsMapEvaluation generatorImages reduction15986.relations [8,8,8,8,8,8,295] reduction15986.output := by lin_cert using reduction15986.terms
def map_64_236 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16416 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16416 : InImage map_64_236 image16416 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16416 : Bundle := named_bundle% "RealMapCertificates/relations/basis16416.json"
theorem reductionProof16416 : EqualModuloRelations reduction16416.relations reduction16416.input reduction16416.output := by lin_cert using reduction16416.terms
theorem substitutionProof16416 : IsMapEvaluation generatorImages reduction16416.relations [1888] reduction16416.output := by lin_cert using reduction16416.terms
def map_64_237 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image16657 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16657 : InImage map_64_237 image16657 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16657 : Bundle := named_bundle% "RealMapCertificates/relations/basis16657.json"
theorem reductionProof16657 : EqualModuloRelations reduction16657.relations reduction16657.input reduction16657.output := by lin_cert using reduction16657.terms
theorem substitutionProof16657 : IsMapEvaluation generatorImages reduction16657.relations [17,1313] reduction16657.output := by lin_cert using reduction16657.terms
def image16658 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16658 : InImage map_64_237 image16658 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16658 : Bundle := named_bundle% "RealMapCertificates/relations/basis16658.json"
theorem reductionProof16658 : EqualModuloRelations reduction16658.relations reduction16658.input reduction16658.output := by lin_cert using reduction16658.terms
theorem substitutionProof16658 : IsMapEvaluation generatorImages reduction16658.relations [8,8,8,8,8,8,325] reduction16658.output := by lin_cert using reduction16658.terms
def map_64_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17105 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17105 : InImage map_64_239 image17105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17105 : Bundle := named_bundle% "RealMapCertificates/relations/basis17105.json"
theorem reductionProof17105 : EqualModuloRelations reduction17105.relations reduction17105.input reduction17105.output := by lin_cert using reduction17105.terms
theorem substitutionProof17105 : IsMapEvaluation generatorImages reduction17105.relations [1962] reduction17105.output := by lin_cert using reduction17105.terms
def map_64_240 : Matrix 6 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17356 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17356 : InImage map_64_240 image17356 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17356 : Bundle := named_bundle% "RealMapCertificates/relations/basis17356.json"
theorem reductionProof17356 : EqualModuloRelations reduction17356.relations reduction17356.input reduction17356.output := by lin_cert using reduction17356.terms
theorem substitutionProof17356 : IsMapEvaluation generatorImages reduction17356.relations [17,1361] reduction17356.output := by lin_cert using reduction17356.terms
def image17357 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17357 : InImage map_64_240 image17357 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17357 : Bundle := named_bundle% "RealMapCertificates/relations/basis17357.json"
theorem reductionProof17357 : EqualModuloRelations reduction17357.relations reduction17357.input reduction17357.output := by lin_cert using reduction17357.terms
theorem substitutionProof17357 : IsMapEvaluation generatorImages reduction17357.relations [8,8,8,8,8,8,8,236] reduction17357.output := by lin_cert using reduction17357.terms
def map_64_242 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17864 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17864 : InImage map_64_242 image17864 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17864 : Bundle := named_bundle% "RealMapCertificates/relations/basis17864.json"
theorem reductionProof17864 : EqualModuloRelations reduction17864.relations reduction17864.input reduction17864.output := by lin_cert using reduction17864.terms
theorem substitutionProof17864 : IsMapEvaluation generatorImages reduction17864.relations [16,1395] reduction17864.output := by lin_cert using reduction17864.terms
def map_64_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18132 : InImage map_64_243 image18132 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18132 : Bundle := named_bundle% "RealMapCertificates/relations/basis18132.json"
theorem reductionProof18132 : EqualModuloRelations reduction18132.relations reduction18132.input reduction18132.output := by lin_cert using reduction18132.terms
theorem substitutionProof18132 : IsMapEvaluation generatorImages reduction18132.relations [16,17,917] reduction18132.output := by lin_cert using reduction18132.terms
def image18133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18133 : InImage map_64_243 image18133 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18133 : Bundle := named_bundle% "RealMapCertificates/relations/basis18133.json"
theorem reductionProof18133 : EqualModuloRelations reduction18133.relations reduction18133.input reduction18133.output := by lin_cert using reduction18133.terms
theorem substitutionProof18133 : IsMapEvaluation generatorImages reduction18133.relations [8,8,8,8,8,8,8,252] reduction18133.output := by lin_cert using reduction18133.terms
def image18134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18134 : InImage map_64_243 image18134 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18134 : Bundle := named_bundle% "RealMapCertificates/relations/basis18134.json"
theorem reductionProof18134 : EqualModuloRelations reduction18134.relations reduction18134.input reduction18134.output := by lin_cert using reduction18134.terms
theorem substitutionProof18134 : IsMapEvaluation generatorImages reduction18134.relations [0,17,1395] reduction18134.output := by lin_cert using reduction18134.terms
def map_64_244 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18398 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18398 : InImage map_64_244 image18398 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18398 : Bundle := named_bundle% "RealMapCertificates/relations/basis18398.json"
theorem reductionProof18398 : EqualModuloRelations reduction18398.relations reduction18398.input reduction18398.output := by lin_cert using reduction18398.terms
theorem substitutionProof18398 : IsMapEvaluation generatorImages reduction18398.relations [0,17,17,917] reduction18398.output := by lin_cert using reduction18398.terms
def map_64_245 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image18607 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18607 : InImage map_64_245 image18607 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18607 : Bundle := named_bundle% "RealMapCertificates/relations/basis18607.json"
theorem reductionProof18607 : EqualModuloRelations reduction18607.relations reduction18607.input reduction18607.output := by lin_cert using reduction18607.terms
theorem substitutionProof18607 : IsMapEvaluation generatorImages reduction18607.relations [8,1679] reduction18607.output := by lin_cert using reduction18607.terms
def image18608 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18608 : InImage map_64_245 image18608 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18608 : Bundle := named_bundle% "RealMapCertificates/relations/basis18608.json"
theorem reductionProof18608 : EqualModuloRelations reduction18608.relations reduction18608.input reduction18608.output := by lin_cert using reduction18608.terms
theorem substitutionProof18608 : IsMapEvaluation generatorImages reduction18608.relations [1,59,916] reduction18608.output := by lin_cert using reduction18608.terms
def image18609 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18609 : InImage map_64_245 image18609 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18609 : Bundle := named_bundle% "RealMapCertificates/relations/basis18609.json"
theorem reductionProof18609 : EqualModuloRelations reduction18609.relations reduction18609.input reduction18609.output := by lin_cert using reduction18609.terms
theorem substitutionProof18609 : IsMapEvaluation generatorImages reduction18609.relations [0,0,0,0,0,0,1965] reduction18609.output := by lin_cert using reduction18609.terms
def map_64_246 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18881 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18881 : InImage map_64_246 image18881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18881 : Bundle := named_bundle% "RealMapCertificates/relations/basis18881.json"
theorem reductionProof18881 : EqualModuloRelations reduction18881.relations reduction18881.input reduction18881.output := by lin_cert using reduction18881.terms
theorem substitutionProof18881 : IsMapEvaluation generatorImages reduction18881.relations [8,17,1142] reduction18881.output := by lin_cert using reduction18881.terms
def image18882 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18882 : InImage map_64_246 image18882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18882 : Bundle := named_bundle% "RealMapCertificates/relations/basis18882.json"
theorem reductionProof18882 : EqualModuloRelations reduction18882.relations reduction18882.input reduction18882.output := by lin_cert using reduction18882.terms
theorem substitutionProof18882 : IsMapEvaluation generatorImages reduction18882.relations [8,8,8,8,8,8,8,8,182] reduction18882.output := by lin_cert using reduction18882.terms
def image18883 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18883 : InImage map_64_246 image18883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18883 : Bundle := named_bundle% "RealMapCertificates/relations/basis18883.json"
theorem reductionProof18883 : EqualModuloRelations reduction18883.relations reduction18883.input reduction18883.output := by lin_cert using reduction18883.terms
theorem substitutionProof18883 : IsMapEvaluation generatorImages reduction18883.relations [0,0,0,0,0,2035] reduction18883.output := by lin_cert using reduction18883.terms
def map_64_248 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19403 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19403 : InImage map_64_248 image19403 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19403 : Bundle := named_bundle% "RealMapCertificates/relations/basis19403.json"
theorem reductionProof19403 : EqualModuloRelations reduction19403.relations reduction19403.input reduction19403.output := by lin_cert using reduction19403.terms
theorem substitutionProof19403 : IsMapEvaluation generatorImages reduction19403.relations [8,8,1395] reduction19403.output := by lin_cert using reduction19403.terms
def map_64_249 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image19697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19697 : InImage map_64_249 image19697 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19697 : Bundle := named_bundle% "RealMapCertificates/relations/basis19697.json"
theorem reductionProof19697 : EqualModuloRelations reduction19697.relations reduction19697.input reduction19697.output := by lin_cert using reduction19697.terms
theorem substitutionProof19697 : IsMapEvaluation generatorImages reduction19697.relations [8,8,17,917] reduction19697.output := by lin_cert using reduction19697.terms
def image19698 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19698 : InImage map_64_249 image19698 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19698 : Bundle := named_bundle% "RealMapCertificates/relations/basis19698.json"
theorem reductionProof19698 : EqualModuloRelations reduction19698.relations reduction19698.input reduction19698.output := by lin_cert using reduction19698.terms
theorem substitutionProof19698 : IsMapEvaluation generatorImages reduction19698.relations [8,8,8,8,8,8,8,8,199] reduction19698.output := by lin_cert using reduction19698.terms
def map_64_250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19975 : InImage map_64_250 image19975 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19975 : Bundle := named_bundle% "RealMapCertificates/relations/basis19975.json"
theorem reductionProof19975 : EqualModuloRelations reduction19975.relations reduction19975.input reduction19975.output := by lin_cert using reduction19975.terms
theorem substitutionProof19975 : IsMapEvaluation generatorImages reduction19975.relations [0,0,0,0,64,916] reduction19975.output := by lin_cert using reduction19975.terms
def map_64_251 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20210 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20210 : InImage map_64_251 image20210 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20210 : Bundle := named_bundle% "RealMapCertificates/relations/basis20210.json"
theorem reductionProof20210 : EqualModuloRelations reduction20210.relations reduction20210.input reduction20210.output := by lin_cert using reduction20210.terms
theorem substitutionProof20210 : IsMapEvaluation generatorImages reduction20210.relations [8,8,1468] reduction20210.output := by lin_cert using reduction20210.terms
def image20211 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20211 : InImage map_64_251 image20211 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20211 : Bundle := named_bundle% "RealMapCertificates/relations/basis20211.json"
theorem reductionProof20211 : EqualModuloRelations reduction20211.relations reduction20211.input reduction20211.output := by lin_cert using reduction20211.terms
theorem substitutionProof20211 : IsMapEvaluation generatorImages reduction20211.relations [0,0,0,0,0,64,917] reduction20211.output := by lin_cert using reduction20211.terms
def map_64_252 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image20499 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20499 : InImage map_64_252 image20499 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20499 : Bundle := named_bundle% "RealMapCertificates/relations/basis20499.json"
theorem reductionProof20499 : EqualModuloRelations reduction20499.relations reduction20499.input reduction20499.output := by lin_cert using reduction20499.terms
theorem substitutionProof20499 : IsMapEvaluation generatorImages reduction20499.relations [8,8,17,953] reduction20499.output := by lin_cert using reduction20499.terms
def image20500 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20500 : InImage map_64_252 image20500 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20500 : Bundle := named_bundle% "RealMapCertificates/relations/basis20500.json"
theorem reductionProof20500 : EqualModuloRelations reduction20500.relations reduction20500.input reduction20500.output := by lin_cert using reduction20500.terms
theorem substitutionProof20500 : IsMapEvaluation generatorImages reduction20500.relations [8,8,8,8,8,8,8,8,8,145] reduction20500.output := by lin_cert using reduction20500.terms
def map_64_254 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21034 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21034 : InImage map_64_254 image21034 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21034 : Bundle := named_bundle% "RealMapCertificates/relations/basis21034.json"
theorem reductionProof21034 : EqualModuloRelations reduction21034.relations reduction21034.input reduction21034.output := by lin_cert using reduction21034.terms
theorem substitutionProof21034 : IsMapEvaluation generatorImages reduction21034.relations [8,8,16,969] reduction21034.output := by lin_cert using reduction21034.terms
def image21035 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21035 : InImage map_64_254 image21035 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21035 : Bundle := named_bundle% "RealMapCertificates/relations/basis21035.json"
theorem reductionProof21035 : EqualModuloRelations reduction21035.relations reduction21035.input reduction21035.output := by lin_cert using reduction21035.terms
theorem substitutionProof21035 : IsMapEvaluation generatorImages reduction21035.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction21035.output := by lin_cert using reduction21035.terms
def map_64_255 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image21371 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21371 : InImage map_64_255 image21371 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21371 : Bundle := named_bundle% "RealMapCertificates/relations/basis21371.json"
theorem reductionProof21371 : EqualModuloRelations reduction21371.relations reduction21371.input reduction21371.output := by lin_cert using reduction21371.terms
theorem substitutionProof21371 : IsMapEvaluation generatorImages reduction21371.relations [8,8,16,17,636] reduction21371.output := by lin_cert using reduction21371.terms
def image21372 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21372 : InImage map_64_255 image21372 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21372 : Bundle := named_bundle% "RealMapCertificates/relations/basis21372.json"
theorem reductionProof21372 : EqualModuloRelations reduction21372.relations reduction21372.input reduction21372.output := by lin_cert using reduction21372.terms
theorem substitutionProof21372 : IsMapEvaluation generatorImages reduction21372.relations [8,8,8,8,8,8,8,8,8,152] reduction21372.output := by lin_cert using reduction21372.terms
def image21373 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21373 : InImage map_64_255 image21373 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21373 : Bundle := named_bundle% "RealMapCertificates/relations/basis21373.json"
theorem reductionProof21373 : EqualModuloRelations reduction21373.relations reduction21373.input reduction21373.output := by lin_cert using reduction21373.terms
theorem substitutionProof21373 : IsMapEvaluation generatorImages reduction21373.relations [1,5,1965] reduction21373.output := by lin_cert using reduction21373.terms
def image21374 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21374 : InImage map_64_255 image21374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21374 : Bundle := named_bundle% "RealMapCertificates/relations/basis21374.json"
theorem reductionProof21374 : EqualModuloRelations reduction21374.relations reduction21374.input reduction21374.output := by lin_cert using reduction21374.terms
theorem substitutionProof21374 : IsMapEvaluation generatorImages reduction21374.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction21374.output := by lin_cert using reduction21374.terms
def map_64_256 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21689 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21689 : InImage map_64_256 image21689 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21689 : Bundle := named_bundle% "RealMapCertificates/relations/basis21689.json"
theorem reductionProof21689 : EqualModuloRelations reduction21689.relations reduction21689.input reduction21689.output := by lin_cert using reduction21689.terms
theorem substitutionProof21689 : IsMapEvaluation generatorImages reduction21689.relations [0,0,2487] reduction21689.output := by lin_cert using reduction21689.terms
def map_64_257 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image21983 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21983 : InImage map_64_257 image21983 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21983 : Bundle := named_bundle% "RealMapCertificates/relations/basis21983.json"
theorem reductionProof21983 : EqualModuloRelations reduction21983.relations reduction21983.input reduction21983.output := by lin_cert using reduction21983.terms
theorem substitutionProof21983 : IsMapEvaluation generatorImages reduction21983.relations [8,8,8,1239] reduction21983.output := by lin_cert using reduction21983.terms
def image21984 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21984 : InImage map_64_257 image21984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21984 : Bundle := named_bundle% "RealMapCertificates/relations/basis21984.json"
theorem reductionProof21984 : EqualModuloRelations reduction21984.relations reduction21984.input reduction21984.output := by lin_cert using reduction21984.terms
theorem substitutionProof21984 : IsMapEvaluation generatorImages reduction21984.relations [0,0,0,0,0,0,64,969] reduction21984.output := by lin_cert using reduction21984.terms
def map_64_258 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image22330 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22330 : InImage map_64_258 image22330 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22330 : Bundle := named_bundle% "RealMapCertificates/relations/basis22330.json"
theorem reductionProof22330 : EqualModuloRelations reduction22330.relations reduction22330.input reduction22330.output := by lin_cert using reduction22330.terms
theorem substitutionProof22330 : IsMapEvaluation generatorImages reduction22330.relations [8,8,8,17,806] reduction22330.output := by lin_cert using reduction22330.terms
def image22331 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22331 : InImage map_64_258 image22331 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22331 : Bundle := named_bundle% "RealMapCertificates/relations/basis22331.json"
theorem reductionProof22331 : EqualModuloRelations reduction22331.relations reduction22331.input reduction22331.output := by lin_cert using reduction22331.terms
theorem substitutionProof22331 : IsMapEvaluation generatorImages reduction22331.relations [8,8,8,8,8,8,8,8,8,8,110] reduction22331.output := by lin_cert using reduction22331.terms
def map_64_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22694 : InImage map_64_259 image22694 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22694 : Bundle := named_bundle% "RealMapCertificates/relations/basis22694.json"
theorem reductionProof22694 : EqualModuloRelations reduction22694.relations reduction22694.input reduction22694.output := by lin_cert using reduction22694.terms
theorem substitutionProof22694 : IsMapEvaluation generatorImages reduction22694.relations [0,0,8,1965] reduction22694.output := by lin_cert using reduction22694.terms
def map_64_260 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image23010 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23010 : InImage map_64_260 image23010 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23010 : Bundle := named_bundle% "RealMapCertificates/relations/basis23010.json"
theorem reductionProof23010 : EqualModuloRelations reduction23010.relations reduction23010.input reduction23010.output := by lin_cert using reduction23010.terms
theorem substitutionProof23010 : IsMapEvaluation generatorImages reduction23010.relations [8,8,8,8,969] reduction23010.output := by lin_cert using reduction23010.terms
def map_64_261 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image23441 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23441 : InImage map_64_261 image23441 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23441 : Bundle := named_bundle% "RealMapCertificates/relations/basis23441.json"
theorem reductionProof23441 : EqualModuloRelations reduction23441.relations reduction23441.input reduction23441.output := by lin_cert using reduction23441.terms
theorem substitutionProof23441 : IsMapEvaluation generatorImages reduction23441.relations [64,1141] reduction23441.output := by lin_cert using reduction23441.terms
def image23442 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23442 : InImage map_64_261 image23442 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23442 : Bundle := named_bundle% "RealMapCertificates/relations/basis23442.json"
theorem reductionProof23442 : EqualModuloRelations reduction23442.relations reduction23442.input reduction23442.output := by lin_cert using reduction23442.terms
theorem substitutionProof23442 : IsMapEvaluation generatorImages reduction23442.relations [8,8,8,8,17,636] reduction23442.output := by lin_cert using reduction23442.terms
def image23443 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23443 : InImage map_64_261 image23443 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23443 : Bundle := named_bundle% "RealMapCertificates/relations/basis23443.json"
theorem reductionProof23443 : EqualModuloRelations reduction23443.relations reduction23443.input reduction23443.output := by lin_cert using reduction23443.terms
theorem substitutionProof23443 : IsMapEvaluation generatorImages reduction23443.relations [8,8,8,8,8,8,8,8,8,8,116] reduction23443.output := by lin_cert using reduction23443.terms
def map_65_65 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image402 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation402 : InImage map_65_65 image402 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction402 : Bundle := named_bundle% "RealMapCertificates/relations/basis402.json"
theorem reductionProof402 : EqualModuloRelations reduction402.relations reduction402.input reduction402.output := by lin_cert using reduction402.terms
theorem substitutionProof402 : IsMapEvaluation generatorImages reduction402.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction402.output := by lin_cert using reduction402.terms
def map_65_194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8702 : InImage map_65_194 image8702 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8702 : Bundle := named_bundle% "RealMapCertificates/relations/basis8702.json"
theorem reductionProof8702 : EqualModuloRelations reduction8702.relations reduction8702.input reduction8702.output := by lin_cert using reduction8702.terms
theorem substitutionProof8702 : IsMapEvaluation generatorImages reduction8702.relations [1075] reduction8702.output := by lin_cert using reduction8702.terms
def map_65_196 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9006 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9006 : InImage map_65_196 image9006 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9006 : Bundle := named_bundle% "RealMapCertificates/relations/basis9006.json"
theorem reductionProof9006 : EqualModuloRelations reduction9006.relations reduction9006.input reduction9006.output := by lin_cert using reduction9006.terms
theorem substitutionProof9006 : IsMapEvaluation generatorImages reduction9006.relations [1101] reduction9006.output := by lin_cert using reduction9006.terms
def map_65_199 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9469 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9469 : InImage map_65_199 image9469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9469 : Bundle := named_bundle% "RealMapCertificates/relations/basis9469.json"
theorem reductionProof9469 : EqualModuloRelations reduction9469.relations reduction9469.input reduction9469.output := by lin_cert using reduction9469.terms
theorem substitutionProof9469 : IsMapEvaluation generatorImages reduction9469.relations [0,1139] reduction9469.output := by lin_cert using reduction9469.terms
def map_65_200 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image9592 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9592 : InImage map_65_200 image9592 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9592 : Bundle := named_bundle% "RealMapCertificates/relations/basis9592.json"
theorem reductionProof9592 : EqualModuloRelations reduction9592.relations reduction9592.input reduction9592.output := by lin_cert using reduction9592.terms
theorem substitutionProof9592 : IsMapEvaluation generatorImages reduction9592.relations [1,1139] reduction9592.output := by lin_cert using reduction9592.terms
def image9593 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9593 : InImage map_65_200 image9593 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9593 : Bundle := named_bundle% "RealMapCertificates/relations/basis9593.json"
theorem reductionProof9593 : EqualModuloRelations reduction9593.relations reduction9593.input reduction9593.output := by lin_cert using reduction9593.terms
theorem substitutionProof9593 : IsMapEvaluation generatorImages reduction9593.relations [0,0,1140] reduction9593.output := by lin_cert using reduction9593.terms
def map_65_202 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9947 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9947 : InImage map_65_202 image9947 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9947 : Bundle := named_bundle% "RealMapCertificates/relations/basis9947.json"
theorem reductionProof9947 : EqualModuloRelations reduction9947.relations reduction9947.input reduction9947.output := by lin_cert using reduction9947.terms
theorem substitutionProof9947 : IsMapEvaluation generatorImages reduction9947.relations [0,1202] reduction9947.output := by lin_cert using reduction9947.terms
def map_65_203 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10088 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10088 : InImage map_65_203 image10088 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10088 : Bundle := named_bundle% "RealMapCertificates/relations/basis10088.json"
theorem reductionProof10088 : EqualModuloRelations reduction10088.relations reduction10088.input reduction10088.output := by lin_cert using reduction10088.terms
theorem substitutionProof10088 : IsMapEvaluation generatorImages reduction10088.relations [0,0,1203] reduction10088.output := by lin_cert using reduction10088.terms
def map_65_205 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10470 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10470 : InImage map_65_205 image10470 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10470 : Bundle := named_bundle% "RealMapCertificates/relations/basis10470.json"
theorem reductionProof10470 : EqualModuloRelations reduction10470.relations reduction10470.input reduction10470.output := by lin_cert using reduction10470.terms
theorem substitutionProof10470 : IsMapEvaluation generatorImages reduction10470.relations [0,8,951] reduction10470.output := by lin_cert using reduction10470.terms
def map_65_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10610 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10610 : InImage map_65_206 image10610 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10610 : Bundle := named_bundle% "RealMapCertificates/relations/basis10610.json"
theorem reductionProof10610 : EqualModuloRelations reduction10610.relations reduction10610.input reduction10610.output := by lin_cert using reduction10610.terms
theorem substitutionProof10610 : IsMapEvaluation generatorImages reduction10610.relations [0,0,16,804] reduction10610.output := by lin_cert using reduction10610.terms
def map_65_207 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10809 : InImage map_65_207 image10809 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10809 : Bundle := named_bundle% "RealMapCertificates/relations/basis10809.json"
theorem reductionProof10809 : EqualModuloRelations reduction10809.relations reduction10809.input reduction10809.output := by lin_cert using reduction10809.terms
theorem substitutionProof10809 : IsMapEvaluation generatorImages reduction10809.relations [0,0,0,17,804] reduction10809.output := by lin_cert using reduction10809.terms
def map_65_208 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10988 : InImage map_65_208 image10988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10988 : Bundle := named_bundle% "RealMapCertificates/relations/basis10988.json"
theorem reductionProof10988 : EqualModuloRelations reduction10988.relations reduction10988.input reduction10988.output := by lin_cert using reduction10988.terms
theorem substitutionProof10988 : IsMapEvaluation generatorImages reduction10988.relations [0,8,995] reduction10988.output := by lin_cert using reduction10988.terms
def image10989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10989 : InImage map_65_208 image10989 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10989 : Bundle := named_bundle% "RealMapCertificates/relations/basis10989.json"
theorem reductionProof10989 : EqualModuloRelations reduction10989.relations reduction10989.input reduction10989.output := by lin_cert using reduction10989.terms
theorem substitutionProof10989 : IsMapEvaluation generatorImages reduction10989.relations [0,0,0,0,1253] reduction10989.output := by lin_cert using reduction10989.terms
def map_65_209 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11140 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11140 : InImage map_65_209 image11140 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11140 : Bundle := named_bundle% "RealMapCertificates/relations/basis11140.json"
theorem reductionProof11140 : EqualModuloRelations reduction11140.relations reduction11140.input reduction11140.output := by lin_cert using reduction11140.terms
theorem substitutionProof11140 : IsMapEvaluation generatorImages reduction11140.relations [0,0,8,996] reduction11140.output := by lin_cert using reduction11140.terms
def map_65_211 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11535 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11535 : InImage map_65_211 image11535 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11535 : Bundle := named_bundle% "RealMapCertificates/relations/basis11535.json"
theorem reductionProof11535 : EqualModuloRelations reduction11535.relations reduction11535.input reduction11535.output := by lin_cert using reduction11535.terms
theorem substitutionProof11535 : IsMapEvaluation generatorImages reduction11535.relations [0,8,8,803] reduction11535.output := by lin_cert using reduction11535.terms
def map_65_212 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11669 : InImage map_65_212 image11669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11669 : Bundle := named_bundle% "RealMapCertificates/relations/basis11669.json"
theorem reductionProof11669 : EqualModuloRelations reduction11669.relations reduction11669.input reduction11669.output := by lin_cert using reduction11669.terms
theorem substitutionProof11669 : IsMapEvaluation generatorImages reduction11669.relations [0,0,8,8,804] reduction11669.output := by lin_cert using reduction11669.terms
def map_65_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12109 : InImage map_65_214 image12109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12109 : Bundle := named_bundle% "RealMapCertificates/relations/basis12109.json"
theorem reductionProof12109 : EqualModuloRelations reduction12109.relations reduction12109.input reduction12109.output := by lin_cert using reduction12109.terms
theorem substitutionProof12109 : IsMapEvaluation generatorImages reduction12109.relations [0,0,0,0,0,0,0,1312] reduction12109.output := by lin_cert using reduction12109.terms
def map_65_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12272 : InImage map_65_215 image12272 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12272 : Bundle := named_bundle% "RealMapCertificates/relations/basis12272.json"
theorem reductionProof12272 : EqualModuloRelations reduction12272.relations reduction12272.input reduction12272.output := by lin_cert using reduction12272.terms
theorem substitutionProof12272 : IsMapEvaluation generatorImages reduction12272.relations [0,0,0,0,0,0,0,0,1313] reduction12272.output := by lin_cert using reduction12272.terms
def map_65_216 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12455 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12455 : InImage map_65_216 image12455 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12455 : Bundle := named_bundle% "RealMapCertificates/relations/basis12455.json"
theorem reductionProof12455 : EqualModuloRelations reduction12455.relations reduction12455.input reduction12455.output := by lin_cert using reduction12455.terms
theorem substitutionProof12455 : IsMapEvaluation generatorImages reduction12455.relations [1480] reduction12455.output := by lin_cert using reduction12455.terms
def map_65_219 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13038 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13038 : InImage map_65_219 image13038 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13038 : Bundle := named_bundle% "RealMapCertificates/relations/basis13038.json"
theorem reductionProof13038 : EqualModuloRelations reduction13038.relations reduction13038.input reduction13038.output := by lin_cert using reduction13038.terms
theorem substitutionProof13038 : IsMapEvaluation generatorImages reduction13038.relations [1533] reduction13038.output := by lin_cert using reduction13038.terms
def map_65_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13584 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13584 : InImage map_65_222 image13584 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13584 : Bundle := named_bundle% "RealMapCertificates/relations/basis13584.json"
theorem reductionProof13584 : EqualModuloRelations reduction13584.relations reduction13584.input reduction13584.output := by lin_cert using reduction13584.terms
theorem substitutionProof13584 : IsMapEvaluation generatorImages reduction13584.relations [8,1254] reduction13584.output := by lin_cert using reduction13584.terms
def map_65_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13801 : InImage map_65_223 image13801 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13801 : Bundle := named_bundle% "RealMapCertificates/relations/basis13801.json"
theorem reductionProof13801 : EqualModuloRelations reduction13801.relations reduction13801.input reduction13801.output := by lin_cert using reduction13801.terms
theorem substitutionProof13801 : IsMapEvaluation generatorImages reduction13801.relations [0,0,0,0,0,0,0,0,0,0,0,1396] reduction13801.output := by lin_cert using reduction13801.terms
def map_65_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13937 : InImage map_65_224 image13937 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13937 : Bundle := named_bundle% "RealMapCertificates/relations/basis13937.json"
theorem reductionProof13937 : EqualModuloRelations reduction13937.relations reduction13937.input reduction13937.output := by lin_cert using reduction13937.terms
theorem substitutionProof13937 : IsMapEvaluation generatorImages reduction13937.relations [0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction13937.output := by lin_cert using reduction13937.terms
def map_65_225 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14158 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14158 : InImage map_65_225 image14158 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14158 : Bundle := named_bundle% "RealMapCertificates/relations/basis14158.json"
theorem reductionProof14158 : EqualModuloRelations reduction14158.relations reduction14158.input reduction14158.output := by lin_cert using reduction14158.terms
theorem substitutionProof14158 : IsMapEvaluation generatorImages reduction14158.relations [8,1311] reduction14158.output := by lin_cert using reduction14158.terms
def image14159 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14159 : InImage map_65_225 image14159 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14159 : Bundle := named_bundle% "RealMapCertificates/relations/basis14159.json"
theorem reductionProof14159 : EqualModuloRelations reduction14159.relations reduction14159.input reduction14159.output := by lin_cert using reduction14159.terms
theorem substitutionProof14159 : IsMapEvaluation generatorImages reduction14159.relations [0,0,0,1587] reduction14159.output := by lin_cert using reduction14159.terms
def map_65_228 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14718 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14718 : InImage map_65_228 image14718 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14718 : Bundle := named_bundle% "RealMapCertificates/relations/basis14718.json"
theorem reductionProof14718 : EqualModuloRelations reduction14718.relations reduction14718.input reduction14718.output := by lin_cert using reduction14718.terms
theorem substitutionProof14718 : IsMapEvaluation generatorImages reduction14718.relations [8,8,1048] reduction14718.output := by lin_cert using reduction14718.terms
def map_65_231 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image15337 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15337 : InImage map_65_231 image15337 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15337 : Bundle := named_bundle% "RealMapCertificates/relations/basis15337.json"
theorem reductionProof15337 : EqualModuloRelations reduction15337.relations reduction15337.input reduction15337.output := by lin_cert using reduction15337.terms
theorem substitutionProof15337 : IsMapEvaluation generatorImages reduction15337.relations [1748] reduction15337.output := by lin_cert using reduction15337.terms
def image15338 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15338 : InImage map_65_231 image15338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15338 : Bundle := named_bundle% "RealMapCertificates/relations/basis15338.json"
theorem reductionProof15338 : EqualModuloRelations reduction15338.relations reduction15338.input reduction15338.output := by lin_cert using reduction15338.terms
theorem substitutionProof15338 : IsMapEvaluation generatorImages reduction15338.relations [8,8,1092] reduction15338.output := by lin_cert using reduction15338.terms
def map_65_234 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image15984 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15984 : InImage map_65_234 image15984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15984 : Bundle := named_bundle% "RealMapCertificates/relations/basis15984.json"
theorem reductionProof15984 : EqualModuloRelations reduction15984.relations reduction15984.input reduction15984.output := by lin_cert using reduction15984.terms
theorem substitutionProof15984 : IsMapEvaluation generatorImages reduction15984.relations [1828] reduction15984.output := by lin_cert using reduction15984.terms
def image15985 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15985 : InImage map_65_234 image15985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15985 : Bundle := named_bundle% "RealMapCertificates/relations/basis15985.json"
theorem reductionProof15985 : EqualModuloRelations reduction15985.relations reduction15985.input reduction15985.output := by lin_cert using reduction15985.terms
theorem substitutionProof15985 : IsMapEvaluation generatorImages reduction15985.relations [8,8,8,886] reduction15985.output := by lin_cert using reduction15985.terms
def map_65_237 : Matrix 6 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16654 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16654 : InImage map_65_237 image16654 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16654 : Bundle := named_bundle% "RealMapCertificates/relations/basis16654.json"
theorem reductionProof16654 : EqualModuloRelations reduction16654.relations reduction16654.input reduction16654.output := by lin_cert using reduction16654.terms
theorem substitutionProof16654 : IsMapEvaluation generatorImages reduction16654.relations [16,1313] reduction16654.output := by lin_cert using reduction16654.terms
def image16655 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16655 : InImage map_65_237 image16655 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16655 : Bundle := named_bundle% "RealMapCertificates/relations/basis16655.json"
theorem reductionProof16655 : EqualModuloRelations reduction16655.relations reduction16655.input reduction16655.output := by lin_cert using reduction16655.terms
theorem substitutionProof16655 : IsMapEvaluation generatorImages reduction16655.relations [8,8,8,915] reduction16655.output := by lin_cert using reduction16655.terms
def image16656 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16656 : InImage map_65_237 image16656 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16656 : Bundle := named_bundle% "RealMapCertificates/relations/basis16656.json"
theorem reductionProof16656 : EqualModuloRelations reduction16656.relations reduction16656.input reduction16656.output := by lin_cert using reduction16656.terms
theorem substitutionProof16656 : IsMapEvaluation generatorImages reduction16656.relations [0,1888] reduction16656.output := by lin_cert using reduction16656.terms
def map_65_238 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image16898 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16898 : InImage map_65_238 image16898 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16898 : Bundle := named_bundle% "RealMapCertificates/relations/basis16898.json"
theorem reductionProof16898 : EqualModuloRelations reduction16898.relations reduction16898.input reduction16898.output := by lin_cert using reduction16898.terms
theorem substitutionProof16898 : IsMapEvaluation generatorImages reduction16898.relations [1,1888] reduction16898.output := by lin_cert using reduction16898.terms
def image16899 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16899 : InImage map_65_238 image16899 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16899 : Bundle := named_bundle% "RealMapCertificates/relations/basis16899.json"
theorem reductionProof16899 : EqualModuloRelations reduction16899.relations reduction16899.input reduction16899.output := by lin_cert using reduction16899.terms
theorem substitutionProof16899 : IsMapEvaluation generatorImages reduction16899.relations [0,17,1313] reduction16899.output := by lin_cert using reduction16899.terms
def map_65_240 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image17353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17353 : InImage map_65_240 image17353 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17353 : Bundle := named_bundle% "RealMapCertificates/relations/basis17353.json"
theorem reductionProof17353 : EqualModuloRelations reduction17353.relations reduction17353.input reduction17353.output := by lin_cert using reduction17353.terms
theorem substitutionProof17353 : IsMapEvaluation generatorImages reduction17353.relations [8,1588] reduction17353.output := by lin_cert using reduction17353.terms
def image17354 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17354 : InImage map_65_240 image17354 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17354 : Bundle := named_bundle% "RealMapCertificates/relations/basis17354.json"
theorem reductionProof17354 : EqualModuloRelations reduction17354.relations reduction17354.input reduction17354.output := by lin_cert using reduction17354.terms
theorem substitutionProof17354 : IsMapEvaluation generatorImages reduction17354.relations [8,8,8,8,736] reduction17354.output := by lin_cert using reduction17354.terms
def image17355 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17355 : InImage map_65_240 image17355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17355 : Bundle := named_bundle% "RealMapCertificates/relations/basis17355.json"
theorem reductionProof17355 : EqualModuloRelations reduction17355.relations reduction17355.input reduction17355.output := by lin_cert using reduction17355.terms
theorem substitutionProof17355 : IsMapEvaluation generatorImages reduction17355.relations [0,1962] reduction17355.output := by lin_cert using reduction17355.terms
def map_65_241 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17663 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17663 : InImage map_65_241 image17663 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17663 : Bundle := named_bundle% "RealMapCertificates/relations/basis17663.json"
theorem reductionProof17663 : EqualModuloRelations reduction17663.relations reduction17663.input reduction17663.output := by lin_cert using reduction17663.terms
theorem substitutionProof17663 : IsMapEvaluation generatorImages reduction17663.relations [0,17,1361] reduction17663.output := by lin_cert using reduction17663.terms
def map_65_243 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image18129 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18129 : InImage map_65_243 image18129 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18129 : Bundle := named_bundle% "RealMapCertificates/relations/basis18129.json"
theorem reductionProof18129 : EqualModuloRelations reduction18129.relations reduction18129.input reduction18129.output := by lin_cert using reduction18129.terms
theorem substitutionProof18129 : IsMapEvaluation generatorImages reduction18129.relations [8,8,1313] reduction18129.output := by lin_cert using reduction18129.terms
def image18130 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18130 : InImage map_65_243 image18130 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18130 : Bundle := named_bundle% "RealMapCertificates/relations/basis18130.json"
theorem reductionProof18130 : EqualModuloRelations reduction18130.relations reduction18130.input reduction18130.output := by lin_cert using reduction18130.terms
theorem substitutionProof18130 : IsMapEvaluation generatorImages reduction18130.relations [8,8,8,8,777] reduction18130.output := by lin_cert using reduction18130.terms
def image18131 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18131 : InImage map_65_243 image18131 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18131 : Bundle := named_bundle% "RealMapCertificates/relations/basis18131.json"
theorem reductionProof18131 : EqualModuloRelations reduction18131.relations reduction18131.input reduction18131.output := by lin_cert using reduction18131.terms
theorem substitutionProof18131 : IsMapEvaluation generatorImages reduction18131.relations [0,16,1395] reduction18131.output := by lin_cert using reduction18131.terms
def map_65_244 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18396 : InImage map_65_244 image18396 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18396 : Bundle := named_bundle% "RealMapCertificates/relations/basis18396.json"
theorem reductionProof18396 : EqualModuloRelations reduction18396.relations reduction18396.input reduction18396.output := by lin_cert using reduction18396.terms
theorem substitutionProof18396 : IsMapEvaluation generatorImages reduction18396.relations [0,16,17,917] reduction18396.output := by lin_cert using reduction18396.terms
def image18397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18397 : InImage map_65_244 image18397 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18397 : Bundle := named_bundle% "RealMapCertificates/relations/basis18397.json"
theorem reductionProof18397 : EqualModuloRelations reduction18397.relations reduction18397.input reduction18397.output := by lin_cert using reduction18397.terms
theorem substitutionProof18397 : IsMapEvaluation generatorImages reduction18397.relations [0,0,17,1395] reduction18397.output := by lin_cert using reduction18397.terms
def map_65_245 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18606 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18606 : InImage map_65_245 image18606 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18606 : Bundle := named_bundle% "RealMapCertificates/relations/basis18606.json"
theorem reductionProof18606 : EqualModuloRelations reduction18606.relations reduction18606.input reduction18606.output := by lin_cert using reduction18606.terms
theorem substitutionProof18606 : IsMapEvaluation generatorImages reduction18606.relations [0,0,17,17,917] reduction18606.output := by lin_cert using reduction18606.terms
def map_65_246 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18878 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18878 : InImage map_65_246 image18878 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18878 : Bundle := named_bundle% "RealMapCertificates/relations/basis18878.json"
theorem reductionProof18878 : EqualModuloRelations reduction18878.relations reduction18878.input reduction18878.output := by lin_cert using reduction18878.terms
theorem substitutionProof18878 : IsMapEvaluation generatorImages reduction18878.relations [8,8,1361] reduction18878.output := by lin_cert using reduction18878.terms
def image18879 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18879 : InImage map_65_246 image18879 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18879 : Bundle := named_bundle% "RealMapCertificates/relations/basis18879.json"
theorem reductionProof18879 : EqualModuloRelations reduction18879.relations reduction18879.input reduction18879.output := by lin_cert using reduction18879.terms
theorem substitutionProof18879 : IsMapEvaluation generatorImages reduction18879.relations [8,8,8,8,8,607] reduction18879.output := by lin_cert using reduction18879.terms
def image18880 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18880 : InImage map_65_246 image18880 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18880 : Bundle := named_bundle% "RealMapCertificates/relations/basis18880.json"
theorem reductionProof18880 : EqualModuloRelations reduction18880.relations reduction18880.input reduction18880.output := by lin_cert using reduction18880.terms
theorem substitutionProof18880 : IsMapEvaluation generatorImages reduction18880.relations [0,0,0,0,0,0,0,1965] reduction18880.output := by lin_cert using reduction18880.terms
def map_65_247 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19192 : InImage map_65_247 image19192 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19192 : Bundle := named_bundle% "RealMapCertificates/relations/basis19192.json"
theorem reductionProof19192 : EqualModuloRelations reduction19192.relations reduction19192.input reduction19192.output := by lin_cert using reduction19192.terms
theorem substitutionProof19192 : IsMapEvaluation generatorImages reduction19192.relations [0,8,17,1142] reduction19192.output := by lin_cert using reduction19192.terms
def image19193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19193 : InImage map_65_247 image19193 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19193 : Bundle := named_bundle% "RealMapCertificates/relations/basis19193.json"
theorem reductionProof19193 : EqualModuloRelations reduction19193.relations reduction19193.input reduction19193.output := by lin_cert using reduction19193.terms
theorem substitutionProof19193 : IsMapEvaluation generatorImages reduction19193.relations [0,0,0,0,0,0,2035] reduction19193.output := by lin_cert using reduction19193.terms
end RealMapCertificates
