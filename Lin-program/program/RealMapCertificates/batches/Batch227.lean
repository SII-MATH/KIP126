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
  | 64 => []
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1075 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1101 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1238 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1253 => []
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1426 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1480 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1618 => [[4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1736 => []
  | 1737 => []
  | 1747 => []
  | 1748 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1827 => []
  | 1828 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1888 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1889 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1962 => [[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1963 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1964 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1965 => []
  | 2274 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 2376 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 2377 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 2487 => []
  | _ => []
def map_65_248 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19402 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19402 : InImage map_65_248 image19402 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19402 : Bundle := named_bundle% "RealMapCertificates/relations/basis19402.json"
theorem reductionProof19402 : EqualModuloRelations reduction19402.relations reduction19402.input reduction19402.output := by lin_cert using reduction19402.terms
theorem substitutionProof19402 : IsMapEvaluation generatorImages reduction19402.relations [2274] reduction19402.output := by lin_cert using reduction19402.terms
def map_65_249 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19695 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19695 : InImage map_65_249 image19695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19695 : Bundle := named_bundle% "RealMapCertificates/relations/basis19695.json"
theorem reductionProof19695 : EqualModuloRelations reduction19695.relations reduction19695.input reduction19695.output := by lin_cert using reduction19695.terms
theorem substitutionProof19695 : IsMapEvaluation generatorImages reduction19695.relations [8,8,16,917] reduction19695.output := by lin_cert using reduction19695.terms
def image19696 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19696 : InImage map_65_249 image19696 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19696 : Bundle := named_bundle% "RealMapCertificates/relations/basis19696.json"
theorem reductionProof19696 : EqualModuloRelations reduction19696.relations reduction19696.input reduction19696.output := by lin_cert using reduction19696.terms
theorem substitutionProof19696 : IsMapEvaluation generatorImages reduction19696.relations [8,8,8,8,8,634] reduction19696.output := by lin_cert using reduction19696.terms
def map_65_251 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20208 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20208 : InImage map_65_251 image20208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20208 : Bundle := named_bundle% "RealMapCertificates/relations/basis20208.json"
theorem reductionProof20208 : EqualModuloRelations reduction20208.relations reduction20208.input reduction20208.output := by lin_cert using reduction20208.terms
theorem substitutionProof20208 : IsMapEvaluation generatorImages reduction20208.relations [2377] reduction20208.output := by lin_cert using reduction20208.terms
def image20209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20209 : InImage map_65_251 image20209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20209 : Bundle := named_bundle% "RealMapCertificates/relations/basis20209.json"
theorem reductionProof20209 : EqualModuloRelations reduction20209.relations reduction20209.input reduction20209.output := by lin_cert using reduction20209.terms
theorem substitutionProof20209 : IsMapEvaluation generatorImages reduction20209.relations [0,0,0,0,0,64,916] reduction20209.output := by lin_cert using reduction20209.terms
def map_65_252 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20496 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20496 : InImage map_65_252 image20496 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20496 : Bundle := named_bundle% "RealMapCertificates/relations/basis20496.json"
theorem reductionProof20496 : EqualModuloRelations reduction20496.relations reduction20496.input reduction20496.output := by lin_cert using reduction20496.terms
theorem substitutionProof20496 : IsMapEvaluation generatorImages reduction20496.relations [8,8,8,1142] reduction20496.output := by lin_cert using reduction20496.terms
def image20497 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20497 : InImage map_65_252 image20497 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20497 : Bundle := named_bundle% "RealMapCertificates/relations/basis20497.json"
theorem reductionProof20497 : EqualModuloRelations reduction20497.relations reduction20497.input reduction20497.output := by lin_cert using reduction20497.terms
theorem substitutionProof20497 : IsMapEvaluation generatorImages reduction20497.relations [8,8,8,8,8,8,498] reduction20497.output := by lin_cert using reduction20497.terms
def image20498 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20498 : InImage map_65_252 image20498 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20498 : Bundle := named_bundle% "RealMapCertificates/relations/basis20498.json"
theorem reductionProof20498 : EqualModuloRelations reduction20498.relations reduction20498.input reduction20498.output := by lin_cert using reduction20498.terms
theorem substitutionProof20498 : IsMapEvaluation generatorImages reduction20498.relations [0,0,0,0,0,0,64,917] reduction20498.output := by lin_cert using reduction20498.terms
def map_65_254 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21033 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21033 : InImage map_65_254 image21033 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21033 : Bundle := named_bundle% "RealMapCertificates/relations/basis21033.json"
theorem reductionProof21033 : EqualModuloRelations reduction21033.relations reduction21033.input reduction21033.output := by lin_cert using reduction21033.terms
theorem substitutionProof21033 : IsMapEvaluation generatorImages reduction21033.relations [8,1889] reduction21033.output := by lin_cert using reduction21033.terms
def map_65_255 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image21368 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21368 : InImage map_65_255 image21368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21368 : Bundle := named_bundle% "RealMapCertificates/relations/basis21368.json"
theorem reductionProof21368 : EqualModuloRelations reduction21368.relations reduction21368.input reduction21368.output := by lin_cert using reduction21368.terms
theorem substitutionProof21368 : IsMapEvaluation generatorImages reduction21368.relations [8,8,8,8,917] reduction21368.output := by lin_cert using reduction21368.terms
def image21369 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21369 : InImage map_65_255 image21369 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21369 : Bundle := named_bundle% "RealMapCertificates/relations/basis21369.json"
theorem reductionProof21369 : EqualModuloRelations reduction21369.relations reduction21369.input reduction21369.output := by lin_cert using reduction21369.terms
theorem substitutionProof21369 : IsMapEvaluation generatorImages reduction21369.relations [8,8,8,8,8,8,528] reduction21369.output := by lin_cert using reduction21369.terms
def image21370 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21370 : InImage map_65_255 image21370 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21370 : Bundle := named_bundle% "RealMapCertificates/relations/basis21370.json"
theorem reductionProof21370 : EqualModuloRelations reduction21370.relations reduction21370.input reduction21370.output := by lin_cert using reduction21370.terms
theorem substitutionProof21370 : IsMapEvaluation generatorImages reduction21370.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction21370.output := by lin_cert using reduction21370.terms
def map_65_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21688 : InImage map_65_256 image21688 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21688 : Bundle := named_bundle% "RealMapCertificates/relations/basis21688.json"
theorem reductionProof21688 : EqualModuloRelations reduction21688.relations reduction21688.input reduction21688.output := by lin_cert using reduction21688.terms
theorem substitutionProof21688 : IsMapEvaluation generatorImages reduction21688.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction21688.output := by lin_cert using reduction21688.terms
def map_65_257 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image21981 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21981 : InImage map_65_257 image21981 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21981 : Bundle := named_bundle% "RealMapCertificates/relations/basis21981.json"
theorem reductionProof21981 : EqualModuloRelations reduction21981.relations reduction21981.input reduction21981.output := by lin_cert using reduction21981.terms
theorem substitutionProof21981 : IsMapEvaluation generatorImages reduction21981.relations [8,1964] reduction21981.output := by lin_cert using reduction21981.terms
def image21982 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21982 : InImage map_65_257 image21982 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21982 : Bundle := named_bundle% "RealMapCertificates/relations/basis21982.json"
theorem reductionProof21982 : EqualModuloRelations reduction21982.relations reduction21982.input reduction21982.output := by lin_cert using reduction21982.terms
theorem substitutionProof21982 : IsMapEvaluation generatorImages reduction21982.relations [0,0,0,2487] reduction21982.output := by lin_cert using reduction21982.terms
def map_65_258 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image22328 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22328 : InImage map_65_258 image22328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22328 : Bundle := named_bundle% "RealMapCertificates/relations/basis22328.json"
theorem reductionProof22328 : EqualModuloRelations reduction22328.relations reduction22328.input reduction22328.output := by lin_cert using reduction22328.terms
theorem substitutionProof22328 : IsMapEvaluation generatorImages reduction22328.relations [8,8,8,8,953] reduction22328.output := by lin_cert using reduction22328.terms
def image22329 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22329 : InImage map_65_258 image22329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22329 : Bundle := named_bundle% "RealMapCertificates/relations/basis22329.json"
theorem reductionProof22329 : EqualModuloRelations reduction22329.relations reduction22329.input reduction22329.output := by lin_cert using reduction22329.terms
theorem substitutionProof22329 : IsMapEvaluation generatorImages reduction22329.relations [8,8,8,8,8,8,8,354] reduction22329.output := by lin_cert using reduction22329.terms
def map_65_260 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image23008 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23008 : InImage map_65_260 image23008 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23008 : Bundle := named_bundle% "RealMapCertificates/relations/basis23008.json"
theorem reductionProof23008 : EqualModuloRelations reduction23008.relations reduction23008.input reduction23008.output := by lin_cert using reduction23008.terms
theorem substitutionProof23008 : IsMapEvaluation generatorImages reduction23008.relations [8,8,1618] reduction23008.output := by lin_cert using reduction23008.terms
def image23009 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23009 : InImage map_65_260 image23009 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23009 : Bundle := named_bundle% "RealMapCertificates/relations/basis23009.json"
theorem reductionProof23009 : EqualModuloRelations reduction23009.relations reduction23009.input reduction23009.output := by lin_cert using reduction23009.terms
theorem substitutionProof23009 : IsMapEvaluation generatorImages reduction23009.relations [5,64,916] reduction23009.output := by lin_cert using reduction23009.terms
def map_65_261 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image23439 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23439 : InImage map_65_261 image23439 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23439 : Bundle := named_bundle% "RealMapCertificates/relations/basis23439.json"
theorem reductionProof23439 : EqualModuloRelations reduction23439.relations reduction23439.input reduction23439.output := by lin_cert using reduction23439.terms
theorem substitutionProof23439 : IsMapEvaluation generatorImages reduction23439.relations [8,8,8,8,16,636] reduction23439.output := by lin_cert using reduction23439.terms
def image23440 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23440 : InImage map_65_261 image23440 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23440 : Bundle := named_bundle% "RealMapCertificates/relations/basis23440.json"
theorem reductionProof23440 : EqualModuloRelations reduction23440.relations reduction23440.input reduction23440.output := by lin_cert using reduction23440.terms
theorem substitutionProof23440 : IsMapEvaluation generatorImages reduction23440.relations [8,8,8,8,8,8,8,401] reduction23440.output := by lin_cert using reduction23440.terms
def map_66_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image418 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation418 : InImage map_66_66 image418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction418 : Bundle := named_bundle% "RealMapCertificates/relations/basis418.json"
theorem reductionProof418 : EqualModuloRelations reduction418.relations reduction418.input reduction418.output := by lin_cert using reduction418.terms
theorem substitutionProof418 : IsMapEvaluation generatorImages reduction418.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction418.output := by lin_cert using reduction418.terms
def map_66_196 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9005 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9005 : InImage map_66_196 image9005 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9005 : Bundle := named_bundle% "RealMapCertificates/relations/basis9005.json"
theorem reductionProof9005 : EqualModuloRelations reduction9005.relations reduction9005.input reduction9005.output := by lin_cert using reduction9005.terms
theorem substitutionProof9005 : IsMapEvaluation generatorImages reduction9005.relations [1,1075] reduction9005.output := by lin_cert using reduction9005.terms
def map_66_197 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9129 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9129 : InImage map_66_197 image9129 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9129 : Bundle := named_bundle% "RealMapCertificates/relations/basis9129.json"
theorem reductionProof9129 : EqualModuloRelations reduction9129.relations reduction9129.input reduction9129.output := by lin_cert using reduction9129.terms
theorem substitutionProof9129 : IsMapEvaluation generatorImages reduction9129.relations [0,1101] reduction9129.output := by lin_cert using reduction9129.terms
def map_66_200 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9591 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9591 : InImage map_66_200 image9591 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9591 : Bundle := named_bundle% "RealMapCertificates/relations/basis9591.json"
theorem reductionProof9591 : EqualModuloRelations reduction9591.relations reduction9591.input reduction9591.output := by lin_cert using reduction9591.terms
theorem substitutionProof9591 : IsMapEvaluation generatorImages reduction9591.relations [0,0,1139] reduction9591.output := by lin_cert using reduction9591.terms
def map_66_201 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9772 : InImage map_66_201 image9772 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9772 : Bundle := named_bundle% "RealMapCertificates/relations/basis9772.json"
theorem reductionProof9772 : EqualModuloRelations reduction9772.relations reduction9772.input reduction9772.output := by lin_cert using reduction9772.terms
theorem substitutionProof9772 : IsMapEvaluation generatorImages reduction9772.relations [0,0,0,1140] reduction9772.output := by lin_cert using reduction9772.terms
def map_66_202 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9946 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9946 : InImage map_66_202 image9946 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9946 : Bundle := named_bundle% "RealMapCertificates/relations/basis9946.json"
theorem reductionProof9946 : EqualModuloRelations reduction9946.relations reduction9946.input reduction9946.output := by lin_cert using reduction9946.terms
theorem substitutionProof9946 : IsMapEvaluation generatorImages reduction9946.relations [1,1,1139] reduction9946.output := by lin_cert using reduction9946.terms
def map_66_203 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10087 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10087 : InImage map_66_203 image10087 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10087 : Bundle := named_bundle% "RealMapCertificates/relations/basis10087.json"
theorem reductionProof10087 : EqualModuloRelations reduction10087.relations reduction10087.input reduction10087.output := by lin_cert using reduction10087.terms
theorem substitutionProof10087 : IsMapEvaluation generatorImages reduction10087.relations [0,0,1202] reduction10087.output := by lin_cert using reduction10087.terms
def map_66_206 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10609 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10609 : InImage map_66_206 image10609 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10609 : Bundle := named_bundle% "RealMapCertificates/relations/basis10609.json"
theorem reductionProof10609 : EqualModuloRelations reduction10609.relations reduction10609.input reduction10609.output := by lin_cert using reduction10609.terms
theorem substitutionProof10609 : IsMapEvaluation generatorImages reduction10609.relations [0,0,8,951] reduction10609.output := by lin_cert using reduction10609.terms
def map_66_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10987 : InImage map_66_208 image10987 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10987 : Bundle := named_bundle% "RealMapCertificates/relations/basis10987.json"
theorem reductionProof10987 : EqualModuloRelations reduction10987.relations reduction10987.input reduction10987.output := by lin_cert using reduction10987.terms
theorem substitutionProof10987 : IsMapEvaluation generatorImages reduction10987.relations [0,0,0,0,17,804] reduction10987.output := by lin_cert using reduction10987.terms
def map_66_209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11138 : InImage map_66_209 image11138 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11138 : Bundle := named_bundle% "RealMapCertificates/relations/basis11138.json"
theorem reductionProof11138 : EqualModuloRelations reduction11138.relations reduction11138.input reduction11138.output := by lin_cert using reduction11138.terms
theorem substitutionProof11138 : IsMapEvaluation generatorImages reduction11138.relations [0,0,8,995] reduction11138.output := by lin_cert using reduction11138.terms
def image11139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11139 : InImage map_66_209 image11139 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11139 : Bundle := named_bundle% "RealMapCertificates/relations/basis11139.json"
theorem reductionProof11139 : EqualModuloRelations reduction11139.relations reduction11139.input reduction11139.output := by lin_cert using reduction11139.terms
theorem substitutionProof11139 : IsMapEvaluation generatorImages reduction11139.relations [0,0,0,0,0,1253] reduction11139.output := by lin_cert using reduction11139.terms
def map_66_212 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11668 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11668 : InImage map_66_212 image11668 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11668 : Bundle := named_bundle% "RealMapCertificates/relations/basis11668.json"
theorem reductionProof11668 : EqualModuloRelations reduction11668.relations reduction11668.input reduction11668.output := by lin_cert using reduction11668.terms
theorem substitutionProof11668 : IsMapEvaluation generatorImages reduction11668.relations [0,0,8,8,803] reduction11668.output := by lin_cert using reduction11668.terms
def map_66_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12271 : InImage map_66_215 image12271 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12271 : Bundle := named_bundle% "RealMapCertificates/relations/basis12271.json"
theorem reductionProof12271 : EqualModuloRelations reduction12271.relations reduction12271.input reduction12271.output := by lin_cert using reduction12271.terms
theorem substitutionProof12271 : IsMapEvaluation generatorImages reduction12271.relations [0,0,0,0,0,0,0,0,1312] reduction12271.output := by lin_cert using reduction12271.terms
def map_66_218 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12818 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12818 : InImage map_66_218 image12818 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12818 : Bundle := named_bundle% "RealMapCertificates/relations/basis12818.json"
theorem reductionProof12818 : EqualModuloRelations reduction12818.relations reduction12818.input reduction12818.output := by lin_cert using reduction12818.terms
theorem substitutionProof12818 : IsMapEvaluation generatorImages reduction12818.relations [1,1480] reduction12818.output := by lin_cert using reduction12818.terms
def map_66_219 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13037 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13037 : InImage map_66_219 image13037 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13037 : Bundle := named_bundle% "RealMapCertificates/relations/basis13037.json"
theorem reductionProof13037 : EqualModuloRelations reduction13037.relations reduction13037.input reduction13037.output := by lin_cert using reduction13037.terms
theorem substitutionProof13037 : IsMapEvaluation generatorImages reduction13037.relations [17,996] reduction13037.output := by lin_cert using reduction13037.terms
def map_66_222 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13583 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13583 : InImage map_66_222 image13583 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13583 : Bundle := named_bundle% "RealMapCertificates/relations/basis13583.json"
theorem reductionProof13583 : EqualModuloRelations reduction13583.relations reduction13583.input reduction13583.output := by lin_cert using reduction13583.terms
theorem substitutionProof13583 : IsMapEvaluation generatorImages reduction13583.relations [8,17,804] reduction13583.output := by lin_cert using reduction13583.terms
def map_66_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13936 : InImage map_66_224 image13936 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13936 : Bundle := named_bundle% "RealMapCertificates/relations/basis13936.json"
theorem reductionProof13936 : EqualModuloRelations reduction13936.relations reduction13936.input reduction13936.output := by lin_cert using reduction13936.terms
theorem substitutionProof13936 : IsMapEvaluation generatorImages reduction13936.relations [0,0,0,0,0,0,0,0,0,0,0,0,1396] reduction13936.output := by lin_cert using reduction13936.terms
def map_66_225 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14156 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14156 : InImage map_66_225 image14156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14156 : Bundle := named_bundle% "RealMapCertificates/relations/basis14156.json"
theorem reductionProof14156 : EqualModuloRelations reduction14156.relations reduction14156.input reduction14156.output := by lin_cert using reduction14156.terms
theorem substitutionProof14156 : IsMapEvaluation generatorImages reduction14156.relations [8,17,852] reduction14156.output := by lin_cert using reduction14156.terms
def image14157 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14157 : InImage map_66_225 image14157 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14157 : Bundle := named_bundle% "RealMapCertificates/relations/basis14157.json"
theorem reductionProof14157 : EqualModuloRelations reduction14157.relations reduction14157.input reduction14157.output := by lin_cert using reduction14157.terms
theorem substitutionProof14157 : IsMapEvaluation generatorImages reduction14157.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction14157.output := by lin_cert using reduction14157.terms
def map_66_228 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14717 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14717 : InImage map_66_228 image14717 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14717 : Bundle := named_bundle% "RealMapCertificates/relations/basis14717.json"
theorem reductionProof14717 : EqualModuloRelations reduction14717.relations reduction14717.input reduction14717.output := by lin_cert using reduction14717.terms
theorem substitutionProof14717 : IsMapEvaluation generatorImages reduction14717.relations [8,16,17,554] reduction14717.output := by lin_cert using reduction14717.terms
def map_66_231 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15335 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15335 : InImage map_66_231 image15335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15335 : Bundle := named_bundle% "RealMapCertificates/relations/basis15335.json"
theorem reductionProof15335 : EqualModuloRelations reduction15335.relations reduction15335.input reduction15335.output := by lin_cert using reduction15335.terms
theorem substitutionProof15335 : IsMapEvaluation generatorImages reduction15335.relations [1747] reduction15335.output := by lin_cert using reduction15335.terms
def image15336 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15336 : InImage map_66_231 image15336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15336 : Bundle := named_bundle% "RealMapCertificates/relations/basis15336.json"
theorem reductionProof15336 : EqualModuloRelations reduction15336.relations reduction15336.input reduction15336.output := by lin_cert using reduction15336.terms
theorem substitutionProof15336 : IsMapEvaluation generatorImages reduction15336.relations [8,8,17,701] reduction15336.output := by lin_cert using reduction15336.terms
def map_66_232 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15572 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15572 : InImage map_66_232 image15572 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15572 : Bundle := named_bundle% "RealMapCertificates/relations/basis15572.json"
theorem reductionProof15572 : EqualModuloRelations reduction15572.relations reduction15572.input reduction15572.output := by lin_cert using reduction15572.terms
theorem substitutionProof15572 : IsMapEvaluation generatorImages reduction15572.relations [0,1748] reduction15572.output := by lin_cert using reduction15572.terms
def map_66_234 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15982 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15982 : InImage map_66_234 image15982 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15982 : Bundle := named_bundle% "RealMapCertificates/relations/basis15982.json"
theorem reductionProof15982 : EqualModuloRelations reduction15982.relations reduction15982.input reduction15982.output := by lin_cert using reduction15982.terms
theorem substitutionProof15982 : IsMapEvaluation generatorImages reduction15982.relations [1827] reduction15982.output := by lin_cert using reduction15982.terms
def image15983 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15983 : InImage map_66_234 image15983 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15983 : Bundle := named_bundle% "RealMapCertificates/relations/basis15983.json"
theorem reductionProof15983 : EqualModuloRelations reduction15983.relations reduction15983.input reduction15983.output := by lin_cert using reduction15983.terms
theorem substitutionProof15983 : IsMapEvaluation generatorImages reduction15983.relations [8,8,8,17,554] reduction15983.output := by lin_cert using reduction15983.terms
def map_66_235 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16239 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16239 : InImage map_66_235 image16239 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16239 : Bundle := named_bundle% "RealMapCertificates/relations/basis16239.json"
theorem reductionProof16239 : EqualModuloRelations reduction16239.relations reduction16239.input reduction16239.output := by lin_cert using reduction16239.terms
theorem substitutionProof16239 : IsMapEvaluation generatorImages reduction16239.relations [0,1828] reduction16239.output := by lin_cert using reduction16239.terms
def map_66_237 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16652 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16652 : InImage map_66_237 image16652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16652 : Bundle := named_bundle% "RealMapCertificates/relations/basis16652.json"
theorem reductionProof16652 : EqualModuloRelations reduction16652.relations reduction16652.input reduction16652.output := by lin_cert using reduction16652.terms
theorem substitutionProof16652 : IsMapEvaluation generatorImages reduction16652.relations [16,1312] reduction16652.output := by lin_cert using reduction16652.terms
def image16653 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16653 : InImage map_66_237 image16653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16653 : Bundle := named_bundle% "RealMapCertificates/relations/basis16653.json"
theorem reductionProof16653 : EqualModuloRelations reduction16653.relations reduction16653.input reduction16653.output := by lin_cert using reduction16653.terms
theorem substitutionProof16653 : IsMapEvaluation generatorImages reduction16653.relations [8,8,8,17,579] reduction16653.output := by lin_cert using reduction16653.terms
def map_66_238 : Matrix 5 2 := fun i j => ([true,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16896 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16896 : InImage map_66_238 image16896 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16896 : Bundle := named_bundle% "RealMapCertificates/relations/basis16896.json"
theorem reductionProof16896 : EqualModuloRelations reduction16896.relations reduction16896.input reduction16896.output := by lin_cert using reduction16896.terms
theorem substitutionProof16896 : IsMapEvaluation generatorImages reduction16896.relations [0,16,1313] reduction16896.output := by lin_cert using reduction16896.terms
def image16897 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16897 : InImage map_66_238 image16897 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16897 : Bundle := named_bundle% "RealMapCertificates/relations/basis16897.json"
theorem reductionProof16897 : EqualModuloRelations reduction16897.relations reduction16897.input reduction16897.output := by lin_cert using reduction16897.terms
theorem substitutionProof16897 : IsMapEvaluation generatorImages reduction16897.relations [0,0,1888] reduction16897.output := by lin_cert using reduction16897.terms
def map_66_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17104 : InImage map_66_239 image17104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17104 : Bundle := named_bundle% "RealMapCertificates/relations/basis17104.json"
theorem reductionProof17104 : EqualModuloRelations reduction17104.relations reduction17104.input reduction17104.output := by lin_cert using reduction17104.terms
theorem substitutionProof17104 : IsMapEvaluation generatorImages reduction17104.relations [0,0,17,1313] reduction17104.output := by lin_cert using reduction17104.terms
def map_66_240 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image17350 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17350 : InImage map_66_240 image17350 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17350 : Bundle := named_bundle% "RealMapCertificates/relations/basis17350.json"
theorem reductionProof17350 : EqualModuloRelations reduction17350.relations reduction17350.input reduction17350.output := by lin_cert using reduction17350.terms
theorem substitutionProof17350 : IsMapEvaluation generatorImages reduction17350.relations [8,1587] reduction17350.output := by lin_cert using reduction17350.terms
def image17351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17351 : InImage map_66_240 image17351 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17351 : Bundle := named_bundle% "RealMapCertificates/relations/basis17351.json"
theorem reductionProof17351 : EqualModuloRelations reduction17351.relations reduction17351.input reduction17351.output := by lin_cert using reduction17351.terms
theorem substitutionProof17351 : IsMapEvaluation generatorImages reduction17351.relations [8,8,8,16,17,296] reduction17351.output := by lin_cert using reduction17351.terms
def image17352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17352 : InImage map_66_240 image17352 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17352 : Bundle := named_bundle% "RealMapCertificates/relations/basis17352.json"
theorem reductionProof17352 : EqualModuloRelations reduction17352.relations reduction17352.input reduction17352.output := by lin_cert using reduction17352.terms
theorem substitutionProof17352 : IsMapEvaluation generatorImages reduction17352.relations [1,1,1888] reduction17352.output := by lin_cert using reduction17352.terms
def map_66_241 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17661 : InImage map_66_241 image17661 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17661 : Bundle := named_bundle% "RealMapCertificates/relations/basis17661.json"
theorem reductionProof17661 : EqualModuloRelations reduction17661.relations reduction17661.input reduction17661.output := by lin_cert using reduction17661.terms
theorem substitutionProof17661 : IsMapEvaluation generatorImages reduction17661.relations [0,8,1588] reduction17661.output := by lin_cert using reduction17661.terms
def image17662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17662 : InImage map_66_241 image17662 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17662 : Bundle := named_bundle% "RealMapCertificates/relations/basis17662.json"
theorem reductionProof17662 : EqualModuloRelations reduction17662.relations reduction17662.input reduction17662.output := by lin_cert using reduction17662.terms
theorem substitutionProof17662 : IsMapEvaluation generatorImages reduction17662.relations [0,0,1962] reduction17662.output := by lin_cert using reduction17662.terms
def map_66_243 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image18127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18127 : InImage map_66_243 image18127 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18127 : Bundle := named_bundle% "RealMapCertificates/relations/basis18127.json"
theorem reductionProof18127 : EqualModuloRelations reduction18127.relations reduction18127.input reduction18127.output := by lin_cert using reduction18127.terms
theorem substitutionProof18127 : IsMapEvaluation generatorImages reduction18127.relations [8,8,1312] reduction18127.output := by lin_cert using reduction18127.terms
def image18128 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18128 : InImage map_66_243 image18128 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18128 : Bundle := named_bundle% "RealMapCertificates/relations/basis18128.json"
theorem reductionProof18128 : EqualModuloRelations reduction18128.relations reduction18128.input reduction18128.output := by lin_cert using reduction18128.terms
theorem substitutionProof18128 : IsMapEvaluation generatorImages reduction18128.relations [8,8,8,8,17,470] reduction18128.output := by lin_cert using reduction18128.terms
def map_66_244 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image18394 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18394 : InImage map_66_244 image18394 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18394 : Bundle := named_bundle% "RealMapCertificates/relations/basis18394.json"
theorem reductionProof18394 : EqualModuloRelations reduction18394.relations reduction18394.input reduction18394.output := by lin_cert using reduction18394.terms
theorem substitutionProof18394 : IsMapEvaluation generatorImages reduction18394.relations [0,8,8,1313] reduction18394.output := by lin_cert using reduction18394.terms
def image18395 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18395 : InImage map_66_244 image18395 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18395 : Bundle := named_bundle% "RealMapCertificates/relations/basis18395.json"
theorem reductionProof18395 : EqualModuloRelations reduction18395.relations reduction18395.input reduction18395.output := by lin_cert using reduction18395.terms
theorem substitutionProof18395 : IsMapEvaluation generatorImages reduction18395.relations [0,0,16,1395] reduction18395.output := by lin_cert using reduction18395.terms
def map_66_245 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image18605 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18605 : InImage map_66_245 image18605 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18605 : Bundle := named_bundle% "RealMapCertificates/relations/basis18605.json"
theorem reductionProof18605 : EqualModuloRelations reduction18605.relations reduction18605.input reduction18605.output := by lin_cert using reduction18605.terms
theorem substitutionProof18605 : IsMapEvaluation generatorImages reduction18605.relations [0,0,0,17,1395] reduction18605.output := by lin_cert using reduction18605.terms
def map_66_246 : Matrix 6 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18875 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18875 : InImage map_66_246 image18875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18875 : Bundle := named_bundle% "RealMapCertificates/relations/basis18875.json"
theorem reductionProof18875 : EqualModuloRelations reduction18875.relations reduction18875.input reduction18875.output := by lin_cert using reduction18875.terms
theorem substitutionProof18875 : IsMapEvaluation generatorImages reduction18875.relations [8,8,1360] reduction18875.output := by lin_cert using reduction18875.terms
def image18876 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18876 : InImage map_66_246 image18876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18876 : Bundle := named_bundle% "RealMapCertificates/relations/basis18876.json"
theorem reductionProof18876 : EqualModuloRelations reduction18876.relations reduction18876.input reduction18876.output := by lin_cert using reduction18876.terms
theorem substitutionProof18876 : IsMapEvaluation generatorImages reduction18876.relations [8,8,8,8,8,17,296] reduction18876.output := by lin_cert using reduction18876.terms
def image18877 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18877 : InImage map_66_246 image18877 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18877 : Bundle := named_bundle% "RealMapCertificates/relations/basis18877.json"
theorem reductionProof18877 : EqualModuloRelations reduction18877.relations reduction18877.input reduction18877.output := by lin_cert using reduction18877.terms
theorem substitutionProof18877 : IsMapEvaluation generatorImages reduction18877.relations [0,0,0,17,17,917] reduction18877.output := by lin_cert using reduction18877.terms
def map_66_247 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19190 : InImage map_66_247 image19190 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19190 : Bundle := named_bundle% "RealMapCertificates/relations/basis19190.json"
theorem reductionProof19190 : EqualModuloRelations reduction19190.relations reduction19190.input reduction19190.output := by lin_cert using reduction19190.terms
theorem substitutionProof19190 : IsMapEvaluation generatorImages reduction19190.relations [0,8,8,1361] reduction19190.output := by lin_cert using reduction19190.terms
def image19191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19191 : InImage map_66_247 image19191 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19191 : Bundle := named_bundle% "RealMapCertificates/relations/basis19191.json"
theorem reductionProof19191 : EqualModuloRelations reduction19191.relations reduction19191.input reduction19191.output := by lin_cert using reduction19191.terms
theorem substitutionProof19191 : IsMapEvaluation generatorImages reduction19191.relations [0,0,0,0,0,0,0,0,1965] reduction19191.output := by lin_cert using reduction19191.terms
def map_66_249 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image19693 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19693 : InImage map_66_249 image19693 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19693 : Bundle := named_bundle% "RealMapCertificates/relations/basis19693.json"
theorem reductionProof19693 : EqualModuloRelations reduction19693.relations reduction19693.input reduction19693.output := by lin_cert using reduction19693.terms
theorem substitutionProof19693 : IsMapEvaluation generatorImages reduction19693.relations [8,8,16,916] reduction19693.output := by lin_cert using reduction19693.terms
def image19694 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19694 : InImage map_66_249 image19694 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19694 : Bundle := named_bundle% "RealMapCertificates/relations/basis19694.json"
theorem reductionProof19694 : EqualModuloRelations reduction19694.relations reduction19694.input reduction19694.output := by lin_cert using reduction19694.terms
theorem substitutionProof19694 : IsMapEvaluation generatorImages reduction19694.relations [8,8,8,8,8,17,326] reduction19694.output := by lin_cert using reduction19694.terms
def map_66_250 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19973 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19973 : InImage map_66_250 image19973 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19973 : Bundle := named_bundle% "RealMapCertificates/relations/basis19973.json"
theorem reductionProof19973 : EqualModuloRelations reduction19973.relations reduction19973.input reduction19973.output := by lin_cert using reduction19973.terms
theorem substitutionProof19973 : IsMapEvaluation generatorImages reduction19973.relations [1,2274] reduction19973.output := by lin_cert using reduction19973.terms
def image19974 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation19974 : InImage map_66_250 image19974 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19974 : Bundle := named_bundle% "RealMapCertificates/relations/basis19974.json"
theorem reductionProof19974 : EqualModuloRelations reduction19974.relations reduction19974.input reduction19974.output := by lin_cert using reduction19974.terms
theorem substitutionProof19974 : IsMapEvaluation generatorImages reduction19974.relations [0,8,8,16,917] reduction19974.output := by lin_cert using reduction19974.terms
def map_66_251 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20207 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20207 : InImage map_66_251 image20207 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20207 : Bundle := named_bundle% "RealMapCertificates/relations/basis20207.json"
theorem reductionProof20207 : EqualModuloRelations reduction20207.relations reduction20207.input reduction20207.output := by lin_cert using reduction20207.terms
theorem substitutionProof20207 : IsMapEvaluation generatorImages reduction20207.relations [2376] reduction20207.output := by lin_cert using reduction20207.terms
def map_66_252 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20493 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20493 : InImage map_66_252 image20493 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20493 : Bundle := named_bundle% "RealMapCertificates/relations/basis20493.json"
theorem reductionProof20493 : EqualModuloRelations reduction20493.relations reduction20493.input reduction20493.output := by lin_cert using reduction20493.terms
theorem substitutionProof20493 : IsMapEvaluation generatorImages reduction20493.relations [8,8,8,1141] reduction20493.output := by lin_cert using reduction20493.terms
def image20494 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20494 : InImage map_66_252 image20494 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20494 : Bundle := named_bundle% "RealMapCertificates/relations/basis20494.json"
theorem reductionProof20494 : EqualModuloRelations reduction20494.relations reduction20494.input reduction20494.output := by lin_cert using reduction20494.terms
theorem substitutionProof20494 : IsMapEvaluation generatorImages reduction20494.relations [8,8,8,8,8,16,17,183] reduction20494.output := by lin_cert using reduction20494.terms
def image20495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20495 : InImage map_66_252 image20495 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20495 : Bundle := named_bundle% "RealMapCertificates/relations/basis20495.json"
theorem reductionProof20495 : EqualModuloRelations reduction20495.relations reduction20495.input reduction20495.output := by lin_cert using reduction20495.terms
theorem substitutionProof20495 : IsMapEvaluation generatorImages reduction20495.relations [0,0,0,0,0,0,64,916] reduction20495.output := by lin_cert using reduction20495.terms
def map_66_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20799 : InImage map_66_253 image20799 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20799 : Bundle := named_bundle% "RealMapCertificates/relations/basis20799.json"
theorem reductionProof20799 : EqualModuloRelations reduction20799.relations reduction20799.input reduction20799.output := by lin_cert using reduction20799.terms
theorem substitutionProof20799 : IsMapEvaluation generatorImages reduction20799.relations [0,0,0,0,0,0,0,64,917] reduction20799.output := by lin_cert using reduction20799.terms
def map_66_254 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21032 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21032 : InImage map_66_254 image21032 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21032 : Bundle := named_bundle% "RealMapCertificates/relations/basis21032.json"
theorem reductionProof21032 : EqualModuloRelations reduction21032.relations reduction21032.input reduction21032.output := by lin_cert using reduction21032.terms
theorem substitutionProof21032 : IsMapEvaluation generatorImages reduction21032.relations [31,1396] reduction21032.output := by lin_cert using reduction21032.terms
def map_66_255 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21366 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21366 : InImage map_66_255 image21366 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21366 : Bundle := named_bundle% "RealMapCertificates/relations/basis21366.json"
theorem reductionProof21366 : EqualModuloRelations reduction21366.relations reduction21366.input reduction21366.output := by lin_cert using reduction21366.terms
theorem substitutionProof21366 : IsMapEvaluation generatorImages reduction21366.relations [8,8,8,8,916] reduction21366.output := by lin_cert using reduction21366.terms
def image21367 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21367 : InImage map_66_255 image21367 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21367 : Bundle := named_bundle% "RealMapCertificates/relations/basis21367.json"
theorem reductionProof21367 : EqualModuloRelations reduction21367.relations reduction21367.input reduction21367.output := by lin_cert using reduction21367.terms
theorem substitutionProof21367 : IsMapEvaluation generatorImages reduction21367.relations [8,8,8,8,8,8,17,253] reduction21367.output := by lin_cert using reduction21367.terms
def map_66_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21687 : InImage map_66_256 image21687 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21687 : Bundle := named_bundle% "RealMapCertificates/relations/basis21687.json"
theorem reductionProof21687 : EqualModuloRelations reduction21687.relations reduction21687.input reduction21687.output := by lin_cert using reduction21687.terms
theorem substitutionProof21687 : IsMapEvaluation generatorImages reduction21687.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction21687.output := by lin_cert using reduction21687.terms
def map_66_257 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21979 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21979 : InImage map_66_257 image21979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21979 : Bundle := named_bundle% "RealMapCertificates/relations/basis21979.json"
theorem reductionProof21979 : EqualModuloRelations reduction21979.relations reduction21979.input reduction21979.output := by lin_cert using reduction21979.terms
theorem substitutionProof21979 : IsMapEvaluation generatorImages reduction21979.relations [8,1963] reduction21979.output := by lin_cert using reduction21979.terms
def image21980 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21980 : InImage map_66_257 image21980 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21980 : Bundle := named_bundle% "RealMapCertificates/relations/basis21980.json"
theorem reductionProof21980 : EqualModuloRelations reduction21980.relations reduction21980.input reduction21980.output := by lin_cert using reduction21980.terms
theorem substitutionProof21980 : IsMapEvaluation generatorImages reduction21980.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction21980.output := by lin_cert using reduction21980.terms
def map_66_258 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image22326 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22326 : InImage map_66_258 image22326 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22326 : Bundle := named_bundle% "RealMapCertificates/relations/basis22326.json"
theorem reductionProof22326 : EqualModuloRelations reduction22326.relations reduction22326.input reduction22326.output := by lin_cert using reduction22326.terms
theorem substitutionProof22326 : IsMapEvaluation generatorImages reduction22326.relations [8,8,8,8,952] reduction22326.output := by lin_cert using reduction22326.terms
def image22327 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22327 : InImage map_66_258 image22327 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22327 : Bundle := named_bundle% "RealMapCertificates/relations/basis22327.json"
theorem reductionProof22327 : EqualModuloRelations reduction22327.relations reduction22327.input reduction22327.output := by lin_cert using reduction22327.terms
theorem substitutionProof22327 : IsMapEvaluation generatorImages reduction22327.relations [8,8,8,8,8,8,8,17,183] reduction22327.output := by lin_cert using reduction22327.terms
def map_66_260 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image23007 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23007 : InImage map_66_260 image23007 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23007 : Bundle := named_bundle% "RealMapCertificates/relations/basis23007.json"
theorem reductionProof23007 : EqualModuloRelations reduction23007.relations reduction23007.input reduction23007.output := by lin_cert using reduction23007.terms
theorem substitutionProof23007 : IsMapEvaluation generatorImages reduction23007.relations [8,16,1396] reduction23007.output := by lin_cert using reduction23007.terms
def map_66_261 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image23437 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23437 : InImage map_66_261 image23437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23437 : Bundle := named_bundle% "RealMapCertificates/relations/basis23437.json"
theorem reductionProof23437 : EqualModuloRelations reduction23437.relations reduction23437.input reduction23437.output := by lin_cert using reduction23437.terms
theorem substitutionProof23437 : IsMapEvaluation generatorImages reduction23437.relations [8,8,8,8,16,635] reduction23437.output := by lin_cert using reduction23437.terms
def image23438 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23438 : InImage map_66_261 image23438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23438 : Bundle := named_bundle% "RealMapCertificates/relations/basis23438.json"
theorem reductionProof23438 : EqualModuloRelations reduction23438.relations reduction23438.input reduction23438.output := by lin_cert using reduction23438.terms
theorem substitutionProof23438 : IsMapEvaluation generatorImages reduction23438.relations [8,8,8,8,8,8,8,17,200] reduction23438.output := by lin_cert using reduction23438.terms
def map_67_67 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image439 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation439 : InImage map_67_67 image439 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction439 : Bundle := named_bundle% "RealMapCertificates/relations/basis439.json"
theorem reductionProof439 : EqualModuloRelations reduction439.relations reduction439.input reduction439.output := by lin_cert using reduction439.terms
theorem substitutionProof439 : IsMapEvaluation generatorImages reduction439.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction439.output := by lin_cert using reduction439.terms
def map_67_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9282 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9282 : InImage map_67_198 image9282 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9282 : Bundle := named_bundle% "RealMapCertificates/relations/basis9282.json"
theorem reductionProof9282 : EqualModuloRelations reduction9282.relations reduction9282.input reduction9282.output := by lin_cert using reduction9282.terms
theorem substitutionProof9282 : IsMapEvaluation generatorImages reduction9282.relations [0,0,1101] reduction9282.output := by lin_cert using reduction9282.terms
def map_67_202 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9945 : InImage map_67_202 image9945 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9945 : Bundle := named_bundle% "RealMapCertificates/relations/basis9945.json"
theorem reductionProof9945 : EqualModuloRelations reduction9945.relations reduction9945.input reduction9945.output := by lin_cert using reduction9945.terms
theorem substitutionProof9945 : IsMapEvaluation generatorImages reduction9945.relations [0,0,0,0,1140] reduction9945.output := by lin_cert using reduction9945.terms
def map_67_203 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10086 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10086 : InImage map_67_203 image10086 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10086 : Bundle := named_bundle% "RealMapCertificates/relations/basis10086.json"
theorem reductionProof10086 : EqualModuloRelations reduction10086.relations reduction10086.input reduction10086.output := by lin_cert using reduction10086.terms
theorem substitutionProof10086 : IsMapEvaluation generatorImages reduction10086.relations [1238] reduction10086.output := by lin_cert using reduction10086.terms
def map_67_204 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10259 : InImage map_67_204 image10259 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10259 : Bundle := named_bundle% "RealMapCertificates/relations/basis10259.json"
theorem reductionProof10259 : EqualModuloRelations reduction10259.relations reduction10259.input reduction10259.output := by lin_cert using reduction10259.terms
theorem substitutionProof10259 : IsMapEvaluation generatorImages reduction10259.relations [0,0,0,1202] reduction10259.output := by lin_cert using reduction10259.terms
def map_67_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11137 : InImage map_67_209 image11137 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11137 : Bundle := named_bundle% "RealMapCertificates/relations/basis11137.json"
theorem reductionProof11137 : EqualModuloRelations reduction11137.relations reduction11137.input reduction11137.output := by lin_cert using reduction11137.terms
theorem substitutionProof11137 : IsMapEvaluation generatorImages reduction11137.relations [0,0,0,0,0,17,804] reduction11137.output := by lin_cert using reduction11137.terms
def map_67_210 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11317 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11317 : InImage map_67_210 image11317 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11317 : Bundle := named_bundle% "RealMapCertificates/relations/basis11317.json"
theorem reductionProof11317 : EqualModuloRelations reduction11317.relations reduction11317.input reduction11317.output := by lin_cert using reduction11317.terms
theorem substitutionProof11317 : IsMapEvaluation generatorImages reduction11317.relations [0,0,0,0,0,0,1253] reduction11317.output := by lin_cert using reduction11317.terms
def map_67_213 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11890 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11890 : InImage map_67_213 image11890 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11890 : Bundle := named_bundle% "RealMapCertificates/relations/basis11890.json"
theorem reductionProof11890 : EqualModuloRelations reduction11890.relations reduction11890.input reduction11890.output := by lin_cert using reduction11890.terms
theorem substitutionProof11890 : IsMapEvaluation generatorImages reduction11890.relations [1426] reduction11890.output := by lin_cert using reduction11890.terms
def map_67_216 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12454 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12454 : InImage map_67_216 image12454 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12454 : Bundle := named_bundle% "RealMapCertificates/relations/basis12454.json"
theorem reductionProof12454 : EqualModuloRelations reduction12454.relations reduction12454.input reduction12454.output := by lin_cert using reduction12454.terms
theorem substitutionProof12454 : IsMapEvaluation generatorImages reduction12454.relations [8,1140] reduction12454.output := by lin_cert using reduction12454.terms
def map_67_219 : Matrix 7 1 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13036 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13036 : InImage map_67_219 image13036 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13036 : Bundle := named_bundle% "RealMapCertificates/relations/basis13036.json"
theorem reductionProof13036 : EqualModuloRelations reduction13036.relations reduction13036.input reduction13036.output := by lin_cert using reduction13036.terms
theorem substitutionProof13036 : IsMapEvaluation generatorImages reduction13036.relations [8,1203] reduction13036.output := by lin_cert using reduction13036.terms
def map_67_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13237 : InImage map_67_220 image13237 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13237 : Bundle := named_bundle% "RealMapCertificates/relations/basis13237.json"
theorem reductionProof13237 : EqualModuloRelations reduction13237.relations reduction13237.input reduction13237.output := by lin_cert using reduction13237.terms
theorem substitutionProof13237 : IsMapEvaluation generatorImages reduction13237.relations [0,17,996] reduction13237.output := by lin_cert using reduction13237.terms
def map_67_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13582 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13582 : InImage map_67_222 image13582 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13582 : Bundle := named_bundle% "RealMapCertificates/relations/basis13582.json"
theorem reductionProof13582 : EqualModuloRelations reduction13582.relations reduction13582.input reduction13582.output := by lin_cert using reduction13582.terms
theorem substitutionProof13582 : IsMapEvaluation generatorImages reduction13582.relations [8,16,804] reduction13582.output := by lin_cert using reduction13582.terms
def map_67_225 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14154 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14154 : InImage map_67_225 image14154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14154 : Bundle := named_bundle% "RealMapCertificates/relations/basis14154.json"
theorem reductionProof14154 : EqualModuloRelations reduction14154.relations reduction14154.input reduction14154.output := by lin_cert using reduction14154.terms
theorem substitutionProof14154 : IsMapEvaluation generatorImages reduction14154.relations [8,8,996] reduction14154.output := by lin_cert using reduction14154.terms
def image14155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14155 : InImage map_67_225 image14155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14155 : Bundle := named_bundle% "RealMapCertificates/relations/basis14155.json"
theorem reductionProof14155 : EqualModuloRelations reduction14155.relations reduction14155.input reduction14155.output := by lin_cert using reduction14155.terms
theorem substitutionProof14155 : IsMapEvaluation generatorImages reduction14155.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1396] reduction14155.output := by lin_cert using reduction14155.terms
end RealMapCertificates
