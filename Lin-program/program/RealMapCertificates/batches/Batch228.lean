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
  | 64 => []
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 803 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 851 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1238 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1253 => []
  | 1300 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1334 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1359 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1360 => []
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1395 => [[4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1425 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1426 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1679 => [[4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1736 => []
  | 1737 => []
  | 1747 => []
  | 1748 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1827 => []
  | 1828 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1888 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 1962 => [[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 2375 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 2376 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | _ => []
def map_67_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14356 : InImage map_67_226 image14356 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14356 : Bundle := named_bundle% "RealMapCertificates/relations/basis14356.json"
theorem reductionProof14356 : EqualModuloRelations reduction14356.relations reduction14356.input reduction14356.output := by lin_cert using reduction14356.terms
theorem substitutionProof14356 : IsMapEvaluation generatorImages reduction14356.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction14356.output := by lin_cert using reduction14356.terms
def map_67_228 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14716 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14716 : InImage map_67_228 image14716 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14716 : Bundle := named_bundle% "RealMapCertificates/relations/basis14716.json"
theorem reductionProof14716 : EqualModuloRelations reduction14716.relations reduction14716.input reduction14716.output := by lin_cert using reduction14716.terms
theorem substitutionProof14716 : IsMapEvaluation generatorImages reduction14716.relations [8,8,8,804] reduction14716.output := by lin_cert using reduction14716.terms
def map_67_231 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15334 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15334 : InImage map_67_231 image15334 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15334 : Bundle := named_bundle% "RealMapCertificates/relations/basis15334.json"
theorem reductionProof15334 : EqualModuloRelations reduction15334.relations reduction15334.input reduction15334.output := by lin_cert using reduction15334.terms
theorem substitutionProof15334 : IsMapEvaluation generatorImages reduction15334.relations [8,8,8,852] reduction15334.output := by lin_cert using reduction15334.terms
def map_67_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15571 : InImage map_67_232 image15571 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15571 : Bundle := named_bundle% "RealMapCertificates/relations/basis15571.json"
theorem reductionProof15571 : EqualModuloRelations reduction15571.relations reduction15571.input reduction15571.output := by lin_cert using reduction15571.terms
theorem substitutionProof15571 : IsMapEvaluation generatorImages reduction15571.relations [0,1747] reduction15571.output := by lin_cert using reduction15571.terms
def map_67_233 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15749 : InImage map_67_233 image15749 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15749 : Bundle := named_bundle% "RealMapCertificates/relations/basis15749.json"
theorem reductionProof15749 : EqualModuloRelations reduction15749.relations reduction15749.input reduction15749.output := by lin_cert using reduction15749.terms
theorem substitutionProof15749 : IsMapEvaluation generatorImages reduction15749.relations [1,1747] reduction15749.output := by lin_cert using reduction15749.terms
def image15750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15750 : InImage map_67_233 image15750 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15750 : Bundle := named_bundle% "RealMapCertificates/relations/basis15750.json"
theorem reductionProof15750 : EqualModuloRelations reduction15750.relations reduction15750.input reduction15750.output := by lin_cert using reduction15750.terms
theorem substitutionProof15750 : IsMapEvaluation generatorImages reduction15750.relations [0,0,1748] reduction15750.output := by lin_cert using reduction15750.terms
def map_67_234 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15981 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15981 : InImage map_67_234 image15981 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15981 : Bundle := named_bundle% "RealMapCertificates/relations/basis15981.json"
theorem reductionProof15981 : EqualModuloRelations reduction15981.relations reduction15981.input reduction15981.output := by lin_cert using reduction15981.terms
theorem substitutionProof15981 : IsMapEvaluation generatorImages reduction15981.relations [8,8,8,16,554] reduction15981.output := by lin_cert using reduction15981.terms
def map_67_235 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16238 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16238 : InImage map_67_235 image16238 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16238 : Bundle := named_bundle% "RealMapCertificates/relations/basis16238.json"
theorem reductionProof16238 : EqualModuloRelations reduction16238.relations reduction16238.input reduction16238.output := by lin_cert using reduction16238.terms
theorem substitutionProof16238 : IsMapEvaluation generatorImages reduction16238.relations [0,1827] reduction16238.output := by lin_cert using reduction16238.terms
def map_67_236 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16415 : InImage map_67_236 image16415 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16415 : Bundle := named_bundle% "RealMapCertificates/relations/basis16415.json"
theorem reductionProof16415 : EqualModuloRelations reduction16415.relations reduction16415.input reduction16415.output := by lin_cert using reduction16415.terms
theorem substitutionProof16415 : IsMapEvaluation generatorImages reduction16415.relations [0,0,1828] reduction16415.output := by lin_cert using reduction16415.terms
def map_67_237 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16651 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16651 : InImage map_67_237 image16651 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16651 : Bundle := named_bundle% "RealMapCertificates/relations/basis16651.json"
theorem reductionProof16651 : EqualModuloRelations reduction16651.relations reduction16651.input reduction16651.output := by lin_cert using reduction16651.terms
theorem substitutionProof16651 : IsMapEvaluation generatorImages reduction16651.relations [8,8,8,8,701] reduction16651.output := by lin_cert using reduction16651.terms
def map_67_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16895 : InImage map_67_238 image16895 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16895 : Bundle := named_bundle% "RealMapCertificates/relations/basis16895.json"
theorem reductionProof16895 : EqualModuloRelations reduction16895.relations reduction16895.input reduction16895.output := by lin_cert using reduction16895.terms
theorem substitutionProof16895 : IsMapEvaluation generatorImages reduction16895.relations [0,16,1312] reduction16895.output := by lin_cert using reduction16895.terms
def map_67_239 : Matrix 5 2 := fun i j => ([false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17102 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17102 : InImage map_67_239 image17102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17102 : Bundle := named_bundle% "RealMapCertificates/relations/basis17102.json"
theorem reductionProof17102 : EqualModuloRelations reduction17102.relations reduction17102.input reduction17102.output := by lin_cert using reduction17102.terms
theorem substitutionProof17102 : IsMapEvaluation generatorImages reduction17102.relations [0,0,16,1313] reduction17102.output := by lin_cert using reduction17102.terms
def image17103 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17103 : InImage map_67_239 image17103 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17103 : Bundle := named_bundle% "RealMapCertificates/relations/basis17103.json"
theorem reductionProof17103 : EqualModuloRelations reduction17103.relations reduction17103.input reduction17103.output := by lin_cert using reduction17103.terms
theorem substitutionProof17103 : IsMapEvaluation generatorImages reduction17103.relations [0,0,0,1888] reduction17103.output := by lin_cert using reduction17103.terms
def map_67_240 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image17348 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17348 : InImage map_67_240 image17348 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17348 : Bundle := named_bundle% "RealMapCertificates/relations/basis17348.json"
theorem reductionProof17348 : EqualModuloRelations reduction17348.relations reduction17348.input reduction17348.output := by lin_cert using reduction17348.terms
theorem substitutionProof17348 : IsMapEvaluation generatorImages reduction17348.relations [8,8,8,8,8,554] reduction17348.output := by lin_cert using reduction17348.terms
def image17349 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17349 : InImage map_67_240 image17349 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17349 : Bundle := named_bundle% "RealMapCertificates/relations/basis17349.json"
theorem reductionProof17349 : EqualModuloRelations reduction17349.relations reduction17349.input reduction17349.output := by lin_cert using reduction17349.terms
theorem substitutionProof17349 : IsMapEvaluation generatorImages reduction17349.relations [0,0,0,17,1313] reduction17349.output := by lin_cert using reduction17349.terms
def map_67_241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17660 : InImage map_67_241 image17660 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17660 : Bundle := named_bundle% "RealMapCertificates/relations/basis17660.json"
theorem reductionProof17660 : EqualModuloRelations reduction17660.relations reduction17660.input reduction17660.output := by lin_cert using reduction17660.terms
theorem substitutionProof17660 : IsMapEvaluation generatorImages reduction17660.relations [0,8,1587] reduction17660.output := by lin_cert using reduction17660.terms
def map_67_242 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image17862 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17862 : InImage map_67_242 image17862 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17862 : Bundle := named_bundle% "RealMapCertificates/relations/basis17862.json"
theorem reductionProof17862 : EqualModuloRelations reduction17862.relations reduction17862.input reduction17862.output := by lin_cert using reduction17862.terms
theorem substitutionProof17862 : IsMapEvaluation generatorImages reduction17862.relations [0,0,8,1588] reduction17862.output := by lin_cert using reduction17862.terms
def image17863 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17863 : InImage map_67_242 image17863 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17863 : Bundle := named_bundle% "RealMapCertificates/relations/basis17863.json"
theorem reductionProof17863 : EqualModuloRelations reduction17863.relations reduction17863.input reduction17863.output := by lin_cert using reduction17863.terms
theorem substitutionProof17863 : IsMapEvaluation generatorImages reduction17863.relations [0,0,0,1962] reduction17863.output := by lin_cert using reduction17863.terms
def map_67_243 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18126 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18126 : InImage map_67_243 image18126 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18126 : Bundle := named_bundle% "RealMapCertificates/relations/basis18126.json"
theorem reductionProof18126 : EqualModuloRelations reduction18126.relations reduction18126.input reduction18126.output := by lin_cert using reduction18126.terms
theorem substitutionProof18126 : IsMapEvaluation generatorImages reduction18126.relations [8,8,8,8,8,579] reduction18126.output := by lin_cert using reduction18126.terms
def map_67_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18393 : InImage map_67_244 image18393 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18393 : Bundle := named_bundle% "RealMapCertificates/relations/basis18393.json"
theorem reductionProof18393 : EqualModuloRelations reduction18393.relations reduction18393.input reduction18393.output := by lin_cert using reduction18393.terms
theorem substitutionProof18393 : IsMapEvaluation generatorImages reduction18393.relations [0,8,8,1312] reduction18393.output := by lin_cert using reduction18393.terms
def map_67_245 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image18604 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18604 : InImage map_67_245 image18604 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18604 : Bundle := named_bundle% "RealMapCertificates/relations/basis18604.json"
theorem reductionProof18604 : EqualModuloRelations reduction18604.relations reduction18604.input reduction18604.output := by lin_cert using reduction18604.terms
theorem substitutionProof18604 : IsMapEvaluation generatorImages reduction18604.relations [0,0,8,8,1313] reduction18604.output := by lin_cert using reduction18604.terms
def map_67_246 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image18873 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18873 : InImage map_67_246 image18873 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18873 : Bundle := named_bundle% "RealMapCertificates/relations/basis18873.json"
theorem reductionProof18873 : EqualModuloRelations reduction18873.relations reduction18873.input reduction18873.output := by lin_cert using reduction18873.terms
theorem substitutionProof18873 : IsMapEvaluation generatorImages reduction18873.relations [8,8,8,8,8,16,296] reduction18873.output := by lin_cert using reduction18873.terms
def image18874 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18874 : InImage map_67_246 image18874 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18874 : Bundle := named_bundle% "RealMapCertificates/relations/basis18874.json"
theorem reductionProof18874 : EqualModuloRelations reduction18874.relations reduction18874.input reduction18874.output := by lin_cert using reduction18874.terms
theorem substitutionProof18874 : IsMapEvaluation generatorImages reduction18874.relations [0,0,0,0,17,1395] reduction18874.output := by lin_cert using reduction18874.terms
def map_67_247 : Matrix 5 2 := fun i j => ([false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19188 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19188 : InImage map_67_247 image19188 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19188 : Bundle := named_bundle% "RealMapCertificates/relations/basis19188.json"
theorem reductionProof19188 : EqualModuloRelations reduction19188.relations reduction19188.input reduction19188.output := by lin_cert using reduction19188.terms
theorem substitutionProof19188 : IsMapEvaluation generatorImages reduction19188.relations [0,8,8,1360] reduction19188.output := by lin_cert using reduction19188.terms
def image19189 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19189 : InImage map_67_247 image19189 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19189 : Bundle := named_bundle% "RealMapCertificates/relations/basis19189.json"
theorem reductionProof19189 : EqualModuloRelations reduction19189.relations reduction19189.input reduction19189.output := by lin_cert using reduction19189.terms
theorem substitutionProof19189 : IsMapEvaluation generatorImages reduction19189.relations [0,0,0,0,17,17,917] reduction19189.output := by lin_cert using reduction19189.terms
def map_67_248 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image19401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19401 : InImage map_67_248 image19401 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19401 : Bundle := named_bundle% "RealMapCertificates/relations/basis19401.json"
theorem reductionProof19401 : EqualModuloRelations reduction19401.relations reduction19401.input reduction19401.output := by lin_cert using reduction19401.terms
theorem substitutionProof19401 : IsMapEvaluation generatorImages reduction19401.relations [0,0,8,8,1361] reduction19401.output := by lin_cert using reduction19401.terms
def map_67_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19692 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19692 : InImage map_67_249 image19692 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19692 : Bundle := named_bundle% "RealMapCertificates/relations/basis19692.json"
theorem reductionProof19692 : EqualModuloRelations reduction19692.relations reduction19692.input reduction19692.output := by lin_cert using reduction19692.terms
theorem substitutionProof19692 : IsMapEvaluation generatorImages reduction19692.relations [8,8,8,8,8,8,470] reduction19692.output := by lin_cert using reduction19692.terms
def map_67_250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19972 : InImage map_67_250 image19972 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19972 : Bundle := named_bundle% "RealMapCertificates/relations/basis19972.json"
theorem reductionProof19972 : EqualModuloRelations reduction19972.relations reduction19972.input reduction19972.output := by lin_cert using reduction19972.terms
theorem substitutionProof19972 : IsMapEvaluation generatorImages reduction19972.relations [0,8,8,16,916] reduction19972.output := by lin_cert using reduction19972.terms
def map_67_251 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20206 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20206 : InImage map_67_251 image20206 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20206 : Bundle := named_bundle% "RealMapCertificates/relations/basis20206.json"
theorem reductionProof20206 : EqualModuloRelations reduction20206.relations reduction20206.input reduction20206.output := by lin_cert using reduction20206.terms
theorem substitutionProof20206 : IsMapEvaluation generatorImages reduction20206.relations [0,0,8,8,16,917] reduction20206.output := by lin_cert using reduction20206.terms
def map_67_252 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20491 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20491 : InImage map_67_252 image20491 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20491 : Bundle := named_bundle% "RealMapCertificates/relations/basis20491.json"
theorem reductionProof20491 : EqualModuloRelations reduction20491.relations reduction20491.input reduction20491.output := by lin_cert using reduction20491.terms
theorem substitutionProof20491 : IsMapEvaluation generatorImages reduction20491.relations [8,8,8,8,8,8,8,296] reduction20491.output := by lin_cert using reduction20491.terms
def image20492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20492 : InImage map_67_252 image20492 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20492 : Bundle := named_bundle% "RealMapCertificates/relations/basis20492.json"
theorem reductionProof20492 : EqualModuloRelations reduction20492.relations reduction20492.input reduction20492.output := by lin_cert using reduction20492.terms
theorem substitutionProof20492 : IsMapEvaluation generatorImages reduction20492.relations [0,2376] reduction20492.output := by lin_cert using reduction20492.terms
def map_67_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20798 : InImage map_67_253 image20798 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20798 : Bundle := named_bundle% "RealMapCertificates/relations/basis20798.json"
theorem reductionProof20798 : EqualModuloRelations reduction20798.relations reduction20798.input reduction20798.output := by lin_cert using reduction20798.terms
theorem substitutionProof20798 : IsMapEvaluation generatorImages reduction20798.relations [0,0,0,0,0,0,0,64,916] reduction20798.output := by lin_cert using reduction20798.terms
def map_67_254 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image21031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21031 : InImage map_67_254 image21031 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21031 : Bundle := named_bundle% "RealMapCertificates/relations/basis21031.json"
theorem reductionProof21031 : EqualModuloRelations reduction21031.relations reduction21031.input reduction21031.output := by lin_cert using reduction21031.terms
theorem substitutionProof21031 : IsMapEvaluation generatorImages reduction21031.relations [0,0,0,0,0,0,0,0,64,917] reduction21031.output := by lin_cert using reduction21031.terms
def map_67_255 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image21364 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21364 : InImage map_67_255 image21364 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21364 : Bundle := named_bundle% "RealMapCertificates/relations/basis21364.json"
theorem reductionProof21364 : EqualModuloRelations reduction21364.relations reduction21364.input reduction21364.output := by lin_cert using reduction21364.terms
theorem substitutionProof21364 : IsMapEvaluation generatorImages reduction21364.relations [42,1312] reduction21364.output := by lin_cert using reduction21364.terms
def image21365 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21365 : InImage map_67_255 image21365 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21365 : Bundle := named_bundle% "RealMapCertificates/relations/basis21365.json"
theorem reductionProof21365 : EqualModuloRelations reduction21365.relations reduction21365.input reduction21365.output := by lin_cert using reduction21365.terms
theorem substitutionProof21365 : IsMapEvaluation generatorImages reduction21365.relations [8,8,8,8,8,8,8,326] reduction21365.output := by lin_cert using reduction21365.terms
def map_67_257 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21977 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21977 : InImage map_67_257 image21977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21977 : Bundle := named_bundle% "RealMapCertificates/relations/basis21977.json"
theorem reductionProof21977 : EqualModuloRelations reduction21977.relations reduction21977.input reduction21977.output := by lin_cert using reduction21977.terms
theorem substitutionProof21977 : IsMapEvaluation generatorImages reduction21977.relations [17,1679] reduction21977.output := by lin_cert using reduction21977.terms
def image21978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21978 : InImage map_67_257 image21978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21978 : Bundle := named_bundle% "RealMapCertificates/relations/basis21978.json"
theorem reductionProof21978 : EqualModuloRelations reduction21978.relations reduction21978.input reduction21978.output := by lin_cert using reduction21978.terms
theorem substitutionProof21978 : IsMapEvaluation generatorImages reduction21978.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction21978.output := by lin_cert using reduction21978.terms
def map_67_258 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image22323 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22323 : InImage map_67_258 image22323 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22323 : Bundle := named_bundle% "RealMapCertificates/relations/basis22323.json"
theorem reductionProof22323 : EqualModuloRelations reduction22323.relations reduction22323.input reduction22323.output := by lin_cert using reduction22323.terms
theorem substitutionProof22323 : IsMapEvaluation generatorImages reduction22323.relations [17,17,1142] reduction22323.output := by lin_cert using reduction22323.terms
def image22324 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22324 : InImage map_67_258 image22324 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22324 : Bundle := named_bundle% "RealMapCertificates/relations/basis22324.json"
theorem reductionProof22324 : EqualModuloRelations reduction22324.relations reduction22324.input reduction22324.output := by lin_cert using reduction22324.terms
theorem substitutionProof22324 : IsMapEvaluation generatorImages reduction22324.relations [8,8,8,8,8,8,8,16,183] reduction22324.output := by lin_cert using reduction22324.terms
def image22325 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22325 : InImage map_67_258 image22325 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22325 : Bundle := named_bundle% "RealMapCertificates/relations/basis22325.json"
theorem reductionProof22325 : EqualModuloRelations reduction22325.relations reduction22325.input reduction22325.output := by lin_cert using reduction22325.terms
theorem substitutionProof22325 : IsMapEvaluation generatorImages reduction22325.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction22325.output := by lin_cert using reduction22325.terms
def map_67_260 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23006 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23006 : InImage map_67_260 image23006 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23006 : Bundle := named_bundle% "RealMapCertificates/relations/basis23006.json"
theorem reductionProof23006 : EqualModuloRelations reduction23006.relations reduction23006.input reduction23006.output := by lin_cert using reduction23006.terms
theorem substitutionProof23006 : IsMapEvaluation generatorImages reduction23006.relations [8,17,1395] reduction23006.output := by lin_cert using reduction23006.terms
def map_67_261 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image23435 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23435 : InImage map_67_261 image23435 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23435 : Bundle := named_bundle% "RealMapCertificates/relations/basis23435.json"
theorem reductionProof23435 : EqualModuloRelations reduction23435.relations reduction23435.input reduction23435.output := by lin_cert using reduction23435.terms
theorem substitutionProof23435 : IsMapEvaluation generatorImages reduction23435.relations [8,17,17,917] reduction23435.output := by lin_cert using reduction23435.terms
def image23436 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23436 : InImage map_67_261 image23436 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23436 : Bundle := named_bundle% "RealMapCertificates/relations/basis23436.json"
theorem reductionProof23436 : EqualModuloRelations reduction23436.relations reduction23436.input reduction23436.output := by lin_cert using reduction23436.terms
theorem substitutionProof23436 : IsMapEvaluation generatorImages reduction23436.relations [8,8,8,8,8,8,8,8,253] reduction23436.output := by lin_cert using reduction23436.terms
def map_68_68 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image456 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation456 : InImage map_68_68 image456 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction456 : Bundle := named_bundle% "RealMapCertificates/relations/basis456.json"
theorem reductionProof456 : EqualModuloRelations reduction456.relations reduction456.input reduction456.output := by lin_cert using reduction456.terms
theorem substitutionProof456 : IsMapEvaluation generatorImages reduction456.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction456.output := by lin_cert using reduction456.terms
def map_68_203 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10085 : InImage map_68_203 image10085 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10085 : Bundle := named_bundle% "RealMapCertificates/relations/basis10085.json"
theorem reductionProof10085 : EqualModuloRelations reduction10085.relations reduction10085.input reduction10085.output := by lin_cert using reduction10085.terms
theorem substitutionProof10085 : IsMapEvaluation generatorImages reduction10085.relations [0,0,0,0,0,1140] reduction10085.output := by lin_cert using reduction10085.terms
def map_68_205 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10469 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10469 : InImage map_68_205 image10469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10469 : Bundle := named_bundle% "RealMapCertificates/relations/basis10469.json"
theorem reductionProof10469 : EqualModuloRelations reduction10469.relations reduction10469.input reduction10469.output := by lin_cert using reduction10469.terms
theorem substitutionProof10469 : IsMapEvaluation generatorImages reduction10469.relations [1,1238] reduction10469.output := by lin_cert using reduction10469.terms
def map_68_210 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11316 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11316 : InImage map_68_210 image11316 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11316 : Bundle := named_bundle% "RealMapCertificates/relations/basis11316.json"
theorem reductionProof11316 : EqualModuloRelations reduction11316.relations reduction11316.input reduction11316.output := by lin_cert using reduction11316.terms
theorem substitutionProof11316 : IsMapEvaluation generatorImages reduction11316.relations [1359] reduction11316.output := by lin_cert using reduction11316.terms
def map_68_211 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11534 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11534 : InImage map_68_211 image11534 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11534 : Bundle := named_bundle% "RealMapCertificates/relations/basis11534.json"
theorem reductionProof11534 : EqualModuloRelations reduction11534.relations reduction11534.input reduction11534.output := by lin_cert using reduction11534.terms
theorem substitutionProof11534 : IsMapEvaluation generatorImages reduction11534.relations [0,0,0,0,0,0,0,1253] reduction11534.output := by lin_cert using reduction11534.terms
def map_68_213 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11889 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11889 : InImage map_68_213 image11889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11889 : Bundle := named_bundle% "RealMapCertificates/relations/basis11889.json"
theorem reductionProof11889 : EqualModuloRelations reduction11889.relations reduction11889.input reduction11889.output := by lin_cert using reduction11889.terms
theorem substitutionProof11889 : IsMapEvaluation generatorImages reduction11889.relations [1425] reduction11889.output := by lin_cert using reduction11889.terms
def map_68_214 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12108 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12108 : InImage map_68_214 image12108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12108 : Bundle := named_bundle% "RealMapCertificates/relations/basis12108.json"
theorem reductionProof12108 : EqualModuloRelations reduction12108.relations reduction12108.input reduction12108.output := by lin_cert using reduction12108.terms
theorem substitutionProof12108 : IsMapEvaluation generatorImages reduction12108.relations [0,1426] reduction12108.output := by lin_cert using reduction12108.terms
def map_68_216 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12453 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12453 : InImage map_68_216 image12453 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12453 : Bundle := named_bundle% "RealMapCertificates/relations/basis12453.json"
theorem reductionProof12453 : EqualModuloRelations reduction12453.relations reduction12453.input reduction12453.output := by lin_cert using reduction12453.terms
theorem substitutionProof12453 : IsMapEvaluation generatorImages reduction12453.relations [8,1139] reduction12453.output := by lin_cert using reduction12453.terms
def map_68_217 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12681 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12681 : InImage map_68_217 image12681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12681 : Bundle := named_bundle% "RealMapCertificates/relations/basis12681.json"
theorem reductionProof12681 : EqualModuloRelations reduction12681.relations reduction12681.input reduction12681.output := by lin_cert using reduction12681.terms
theorem substitutionProof12681 : IsMapEvaluation generatorImages reduction12681.relations [0,8,1140] reduction12681.output := by lin_cert using reduction12681.terms
def map_68_219 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13035 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13035 : InImage map_68_219 image13035 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13035 : Bundle := named_bundle% "RealMapCertificates/relations/basis13035.json"
theorem reductionProof13035 : EqualModuloRelations reduction13035.relations reduction13035.input reduction13035.output := by lin_cert using reduction13035.terms
theorem substitutionProof13035 : IsMapEvaluation generatorImages reduction13035.relations [8,1202] reduction13035.output := by lin_cert using reduction13035.terms
def map_68_220 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13236 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13236 : InImage map_68_220 image13236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13236 : Bundle := named_bundle% "RealMapCertificates/relations/basis13236.json"
theorem reductionProof13236 : EqualModuloRelations reduction13236.relations reduction13236.input reduction13236.output := by lin_cert using reduction13236.terms
theorem substitutionProof13236 : IsMapEvaluation generatorImages reduction13236.relations [0,8,1203] reduction13236.output := by lin_cert using reduction13236.terms
def map_68_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13581 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13581 : InImage map_68_222 image13581 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13581 : Bundle := named_bundle% "RealMapCertificates/relations/basis13581.json"
theorem reductionProof13581 : EqualModuloRelations reduction13581.relations reduction13581.input reduction13581.output := by lin_cert using reduction13581.terms
theorem substitutionProof13581 : IsMapEvaluation generatorImages reduction13581.relations [8,8,951] reduction13581.output := by lin_cert using reduction13581.terms
def map_68_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13800 : InImage map_68_223 image13800 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13800 : Bundle := named_bundle% "RealMapCertificates/relations/basis13800.json"
theorem reductionProof13800 : EqualModuloRelations reduction13800.relations reduction13800.input reduction13800.output := by lin_cert using reduction13800.terms
theorem substitutionProof13800 : IsMapEvaluation generatorImages reduction13800.relations [0,8,16,804] reduction13800.output := by lin_cert using reduction13800.terms
def map_68_225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14153 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14153 : InImage map_68_225 image14153 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14153 : Bundle := named_bundle% "RealMapCertificates/relations/basis14153.json"
theorem reductionProof14153 : EqualModuloRelations reduction14153.relations reduction14153.input reduction14153.output := by lin_cert using reduction14153.terms
theorem substitutionProof14153 : IsMapEvaluation generatorImages reduction14153.relations [8,8,995] reduction14153.output := by lin_cert using reduction14153.terms
def map_68_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14355 : InImage map_68_226 image14355 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14355 : Bundle := named_bundle% "RealMapCertificates/relations/basis14355.json"
theorem reductionProof14355 : EqualModuloRelations reduction14355.relations reduction14355.input reduction14355.output := by lin_cert using reduction14355.terms
theorem substitutionProof14355 : IsMapEvaluation generatorImages reduction14355.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1396] reduction14355.output := by lin_cert using reduction14355.terms
def map_68_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14508 : InImage map_68_227 image14508 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14508 : Bundle := named_bundle% "RealMapCertificates/relations/basis14508.json"
theorem reductionProof14508 : EqualModuloRelations reduction14508.relations reduction14508.input reduction14508.output := by lin_cert using reduction14508.terms
theorem substitutionProof14508 : IsMapEvaluation generatorImages reduction14508.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction14508.output := by lin_cert using reduction14508.terms
def map_68_228 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14715 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14715 : InImage map_68_228 image14715 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14715 : Bundle := named_bundle% "RealMapCertificates/relations/basis14715.json"
theorem reductionProof14715 : EqualModuloRelations reduction14715.relations reduction14715.input reduction14715.output := by lin_cert using reduction14715.terms
theorem substitutionProof14715 : IsMapEvaluation generatorImages reduction14715.relations [8,8,8,803] reduction14715.output := by lin_cert using reduction14715.terms
def map_68_231 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15333 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15333 : InImage map_68_231 image15333 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15333 : Bundle := named_bundle% "RealMapCertificates/relations/basis15333.json"
theorem reductionProof15333 : EqualModuloRelations reduction15333.relations reduction15333.input reduction15333.output := by lin_cert using reduction15333.terms
theorem substitutionProof15333 : IsMapEvaluation generatorImages reduction15333.relations [8,8,8,851] reduction15333.output := by lin_cert using reduction15333.terms
def map_68_233 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15748 : InImage map_68_233 image15748 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15748 : Bundle := named_bundle% "RealMapCertificates/relations/basis15748.json"
theorem reductionProof15748 : EqualModuloRelations reduction15748.relations reduction15748.input reduction15748.output := by lin_cert using reduction15748.terms
theorem substitutionProof15748 : IsMapEvaluation generatorImages reduction15748.relations [0,0,1747] reduction15748.output := by lin_cert using reduction15748.terms
def map_68_234 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15979 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15979 : InImage map_68_234 image15979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15979 : Bundle := named_bundle% "RealMapCertificates/relations/basis15979.json"
theorem reductionProof15979 : EqualModuloRelations reduction15979.relations reduction15979.input reduction15979.output := by lin_cert using reduction15979.terms
theorem substitutionProof15979 : IsMapEvaluation generatorImages reduction15979.relations [8,8,8,8,661] reduction15979.output := by lin_cert using reduction15979.terms
def image15980 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15980 : InImage map_68_234 image15980 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15980 : Bundle := named_bundle% "RealMapCertificates/relations/basis15980.json"
theorem reductionProof15980 : EqualModuloRelations reduction15980.relations reduction15980.input reduction15980.output := by lin_cert using reduction15980.terms
theorem substitutionProof15980 : IsMapEvaluation generatorImages reduction15980.relations [0,0,0,1748] reduction15980.output := by lin_cert using reduction15980.terms
def map_68_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16237 : InImage map_68_235 image16237 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16237 : Bundle := named_bundle% "RealMapCertificates/relations/basis16237.json"
theorem reductionProof16237 : EqualModuloRelations reduction16237.relations reduction16237.input reduction16237.output := by lin_cert using reduction16237.terms
theorem substitutionProof16237 : IsMapEvaluation generatorImages reduction16237.relations [1,1,1747] reduction16237.output := by lin_cert using reduction16237.terms
def map_68_236 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16414 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16414 : InImage map_68_236 image16414 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16414 : Bundle := named_bundle% "RealMapCertificates/relations/basis16414.json"
theorem reductionProof16414 : EqualModuloRelations reduction16414.relations reduction16414.input reduction16414.output := by lin_cert using reduction16414.terms
theorem substitutionProof16414 : IsMapEvaluation generatorImages reduction16414.relations [0,0,1827] reduction16414.output := by lin_cert using reduction16414.terms
def map_68_237 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image16650 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16650 : InImage map_68_237 image16650 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16650 : Bundle := named_bundle% "RealMapCertificates/relations/basis16650.json"
theorem reductionProof16650 : EqualModuloRelations reduction16650.relations reduction16650.input reduction16650.output := by lin_cert using reduction16650.terms
theorem substitutionProof16650 : IsMapEvaluation generatorImages reduction16650.relations [8,8,8,8,700] reduction16650.output := by lin_cert using reduction16650.terms
def map_68_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17101 : InImage map_68_239 image17101 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17101 : Bundle := named_bundle% "RealMapCertificates/relations/basis17101.json"
theorem reductionProof17101 : EqualModuloRelations reduction17101.relations reduction17101.input reduction17101.output := by lin_cert using reduction17101.terms
theorem substitutionProof17101 : IsMapEvaluation generatorImages reduction17101.relations [0,0,16,1312] reduction17101.output := by lin_cert using reduction17101.terms
def map_68_240 : Matrix 6 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17346 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17346 : InImage map_68_240 image17346 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17346 : Bundle := named_bundle% "RealMapCertificates/relations/basis17346.json"
theorem reductionProof17346 : EqualModuloRelations reduction17346.relations reduction17346.input reduction17346.output := by lin_cert using reduction17346.terms
theorem substitutionProof17346 : IsMapEvaluation generatorImages reduction17346.relations [8,8,8,8,8,553] reduction17346.output := by lin_cert using reduction17346.terms
def image17347 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17347 : InImage map_68_240 image17347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17347 : Bundle := named_bundle% "RealMapCertificates/relations/basis17347.json"
theorem reductionProof17347 : EqualModuloRelations reduction17347.relations reduction17347.input reduction17347.output := by lin_cert using reduction17347.terms
theorem substitutionProof17347 : IsMapEvaluation generatorImages reduction17347.relations [0,0,0,0,1888] reduction17347.output := by lin_cert using reduction17347.terms
def map_68_241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17659 : InImage map_68_241 image17659 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17659 : Bundle := named_bundle% "RealMapCertificates/relations/basis17659.json"
theorem reductionProof17659 : EqualModuloRelations reduction17659.relations reduction17659.input reduction17659.output := by lin_cert using reduction17659.terms
theorem substitutionProof17659 : IsMapEvaluation generatorImages reduction17659.relations [0,0,0,0,17,1313] reduction17659.output := by lin_cert using reduction17659.terms
def map_68_242 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image17861 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17861 : InImage map_68_242 image17861 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17861 : Bundle := named_bundle% "RealMapCertificates/relations/basis17861.json"
theorem reductionProof17861 : EqualModuloRelations reduction17861.relations reduction17861.input reduction17861.output := by lin_cert using reduction17861.terms
theorem substitutionProof17861 : IsMapEvaluation generatorImages reduction17861.relations [0,0,8,1587] reduction17861.output := by lin_cert using reduction17861.terms
def map_68_243 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18125 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18125 : InImage map_68_243 image18125 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18125 : Bundle := named_bundle% "RealMapCertificates/relations/basis18125.json"
theorem reductionProof18125 : EqualModuloRelations reduction18125.relations reduction18125.input reduction18125.output := by lin_cert using reduction18125.terms
theorem substitutionProof18125 : IsMapEvaluation generatorImages reduction18125.relations [8,8,8,8,8,578] reduction18125.output := by lin_cert using reduction18125.terms
def map_68_245 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image18603 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18603 : InImage map_68_245 image18603 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18603 : Bundle := named_bundle% "RealMapCertificates/relations/basis18603.json"
theorem reductionProof18603 : EqualModuloRelations reduction18603.relations reduction18603.input reduction18603.output := by lin_cert using reduction18603.terms
theorem substitutionProof18603 : IsMapEvaluation generatorImages reduction18603.relations [0,0,8,8,1312] reduction18603.output := by lin_cert using reduction18603.terms
def map_68_246 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18872 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18872 : InImage map_68_246 image18872 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18872 : Bundle := named_bundle% "RealMapCertificates/relations/basis18872.json"
theorem reductionProof18872 : EqualModuloRelations reduction18872.relations reduction18872.input reduction18872.output := by lin_cert using reduction18872.terms
theorem substitutionProof18872 : IsMapEvaluation generatorImages reduction18872.relations [8,8,8,8,8,8,431] reduction18872.output := by lin_cert using reduction18872.terms
def map_68_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19187 : InImage map_68_247 image19187 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19187 : Bundle := named_bundle% "RealMapCertificates/relations/basis19187.json"
theorem reductionProof19187 : EqualModuloRelations reduction19187.relations reduction19187.input reduction19187.output := by lin_cert using reduction19187.terms
theorem substitutionProof19187 : IsMapEvaluation generatorImages reduction19187.relations [0,0,0,0,0,17,1395] reduction19187.output := by lin_cert using reduction19187.terms
def map_68_248 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19400 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19400 : InImage map_68_248 image19400 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19400 : Bundle := named_bundle% "RealMapCertificates/relations/basis19400.json"
theorem reductionProof19400 : EqualModuloRelations reduction19400.relations reduction19400.input reduction19400.output := by lin_cert using reduction19400.terms
theorem substitutionProof19400 : IsMapEvaluation generatorImages reduction19400.relations [0,0,0,0,0,17,17,917] reduction19400.output := by lin_cert using reduction19400.terms
def map_68_249 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image19691 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19691 : InImage map_68_249 image19691 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19691 : Bundle := named_bundle% "RealMapCertificates/relations/basis19691.json"
theorem reductionProof19691 : EqualModuloRelations reduction19691.relations reduction19691.input reduction19691.output := by lin_cert using reduction19691.terms
theorem substitutionProof19691 : IsMapEvaluation generatorImages reduction19691.relations [8,8,8,8,8,8,469] reduction19691.output := by lin_cert using reduction19691.terms
def map_68_251 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20205 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20205 : InImage map_68_251 image20205 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20205 : Bundle := named_bundle% "RealMapCertificates/relations/basis20205.json"
theorem reductionProof20205 : EqualModuloRelations reduction20205.relations reduction20205.input reduction20205.output := by lin_cert using reduction20205.terms
theorem substitutionProof20205 : IsMapEvaluation generatorImages reduction20205.relations [2375] reduction20205.output := by lin_cert using reduction20205.terms
def map_68_252 : Matrix 6 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image20489 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20489 : InImage map_68_252 image20489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20489 : Bundle := named_bundle% "RealMapCertificates/relations/basis20489.json"
theorem reductionProof20489 : EqualModuloRelations reduction20489.relations reduction20489.input reduction20489.output := by lin_cert using reduction20489.terms
theorem substitutionProof20489 : IsMapEvaluation generatorImages reduction20489.relations [17,1588] reduction20489.output := by lin_cert using reduction20489.terms
def image20490 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20490 : InImage map_68_252 image20490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20490 : Bundle := named_bundle% "RealMapCertificates/relations/basis20490.json"
theorem reductionProof20490 : EqualModuloRelations reduction20490.relations reduction20490.input reduction20490.output := by lin_cert using reduction20490.terms
theorem substitutionProof20490 : IsMapEvaluation generatorImages reduction20490.relations [8,8,8,8,8,8,8,295] reduction20490.output := by lin_cert using reduction20490.terms
def map_68_254 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21030 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21030 : InImage map_68_254 image21030 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21030 : Bundle := named_bundle% "RealMapCertificates/relations/basis21030.json"
theorem reductionProof21030 : EqualModuloRelations reduction21030.relations reduction21030.input reduction21030.output := by lin_cert using reduction21030.terms
theorem substitutionProof21030 : IsMapEvaluation generatorImages reduction21030.relations [8,1888] reduction21030.output := by lin_cert using reduction21030.terms
def map_68_255 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21362 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21362 : InImage map_68_255 image21362 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21362 : Bundle := named_bundle% "RealMapCertificates/relations/basis21362.json"
theorem reductionProof21362 : EqualModuloRelations reduction21362.relations reduction21362.input reduction21362.output := by lin_cert using reduction21362.terms
theorem substitutionProof21362 : IsMapEvaluation generatorImages reduction21362.relations [8,17,1313] reduction21362.output := by lin_cert using reduction21362.terms
def image21363 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21363 : InImage map_68_255 image21363 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21363 : Bundle := named_bundle% "RealMapCertificates/relations/basis21363.json"
theorem reductionProof21363 : EqualModuloRelations reduction21363.relations reduction21363.input reduction21363.output := by lin_cert using reduction21363.terms
theorem substitutionProof21363 : IsMapEvaluation generatorImages reduction21363.relations [8,8,8,8,8,8,8,325] reduction21363.output := by lin_cert using reduction21363.terms
def map_68_257 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21975 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21975 : InImage map_68_257 image21975 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21975 : Bundle := named_bundle% "RealMapCertificates/relations/basis21975.json"
theorem reductionProof21975 : EqualModuloRelations reduction21975.relations reduction21975.input reduction21975.output := by lin_cert using reduction21975.terms
theorem substitutionProof21975 : IsMapEvaluation generatorImages reduction21975.relations [8,1962] reduction21975.output := by lin_cert using reduction21975.terms
def image21976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21976 : InImage map_68_257 image21976 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21976 : Bundle := named_bundle% "RealMapCertificates/relations/basis21976.json"
theorem reductionProof21976 : EqualModuloRelations reduction21976.relations reduction21976.input reduction21976.output := by lin_cert using reduction21976.terms
theorem substitutionProof21976 : IsMapEvaluation generatorImages reduction21976.relations [1,42,1312] reduction21976.output := by lin_cert using reduction21976.terms
def map_68_258 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image22320 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22320 : InImage map_68_258 image22320 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22320 : Bundle := named_bundle% "RealMapCertificates/relations/basis22320.json"
theorem reductionProof22320 : EqualModuloRelations reduction22320.relations reduction22320.input reduction22320.output := by lin_cert using reduction22320.terms
theorem substitutionProof22320 : IsMapEvaluation generatorImages reduction22320.relations [8,17,1361] reduction22320.output := by lin_cert using reduction22320.terms
def image22321 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22321 : InImage map_68_258 image22321 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22321 : Bundle := named_bundle% "RealMapCertificates/relations/basis22321.json"
theorem reductionProof22321 : EqualModuloRelations reduction22321.relations reduction22321.input reduction22321.output := by lin_cert using reduction22321.terms
theorem substitutionProof22321 : IsMapEvaluation generatorImages reduction22321.relations [8,8,8,8,8,8,8,8,236] reduction22321.output := by lin_cert using reduction22321.terms
def image22322 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22322 : InImage map_68_258 image22322 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22322 : Bundle := named_bundle% "RealMapCertificates/relations/basis22322.json"
theorem reductionProof22322 : EqualModuloRelations reduction22322.relations reduction22322.input reduction22322.output := by lin_cert using reduction22322.terms
theorem substitutionProof22322 : IsMapEvaluation generatorImages reduction22322.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction22322.output := by lin_cert using reduction22322.terms
def map_68_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22693 : InImage map_68_259 image22693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22693 : Bundle := named_bundle% "RealMapCertificates/relations/basis22693.json"
theorem reductionProof22693 : EqualModuloRelations reduction22693.relations reduction22693.input reduction22693.output := by lin_cert using reduction22693.terms
theorem substitutionProof22693 : IsMapEvaluation generatorImages reduction22693.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction22693.output := by lin_cert using reduction22693.terms
def map_68_260 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image23005 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23005 : InImage map_68_260 image23005 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23005 : Bundle := named_bundle% "RealMapCertificates/relations/basis23005.json"
theorem reductionProof23005 : EqualModuloRelations reduction23005.relations reduction23005.input reduction23005.output := by lin_cert using reduction23005.terms
theorem substitutionProof23005 : IsMapEvaluation generatorImages reduction23005.relations [8,16,1395] reduction23005.output := by lin_cert using reduction23005.terms
def map_68_261 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image23433 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23433 : InImage map_68_261 image23433 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23433 : Bundle := named_bundle% "RealMapCertificates/relations/basis23433.json"
theorem reductionProof23433 : EqualModuloRelations reduction23433.relations reduction23433.input reduction23433.output := by lin_cert using reduction23433.terms
theorem substitutionProof23433 : IsMapEvaluation generatorImages reduction23433.relations [8,16,17,917] reduction23433.output := by lin_cert using reduction23433.terms
def image23434 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23434 : InImage map_68_261 image23434 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23434 : Bundle := named_bundle% "RealMapCertificates/relations/basis23434.json"
theorem reductionProof23434 : EqualModuloRelations reduction23434.relations reduction23434.input reduction23434.output := by lin_cert using reduction23434.terms
theorem substitutionProof23434 : IsMapEvaluation generatorImages reduction23434.relations [8,8,8,8,8,8,8,8,252] reduction23434.output := by lin_cert using reduction23434.terms
def map_69_69 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image476 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation476 : InImage map_69_69 image476 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction476 : Bundle := named_bundle% "RealMapCertificates/relations/basis476.json"
theorem reductionProof476 : EqualModuloRelations reduction476.relations reduction476.input reduction476.output := by lin_cert using reduction476.terms
theorem substitutionProof476 : IsMapEvaluation generatorImages reduction476.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction476.output := by lin_cert using reduction476.terms
def map_69_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10608 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10608 : InImage map_69_206 image10608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10608 : Bundle := named_bundle% "RealMapCertificates/relations/basis10608.json"
theorem reductionProof10608 : EqualModuloRelations reduction10608.relations reduction10608.input reduction10608.output := by lin_cert using reduction10608.terms
theorem substitutionProof10608 : IsMapEvaluation generatorImages reduction10608.relations [1300] reduction10608.output := by lin_cert using reduction10608.terms
def map_69_208 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10986 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10986 : InImage map_69_208 image10986 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10986 : Bundle := named_bundle% "RealMapCertificates/relations/basis10986.json"
theorem reductionProof10986 : EqualModuloRelations reduction10986.relations reduction10986.input reduction10986.output := by lin_cert using reduction10986.terms
theorem substitutionProof10986 : IsMapEvaluation generatorImages reduction10986.relations [1334] reduction10986.output := by lin_cert using reduction10986.terms
def map_69_211 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11533 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11533 : InImage map_69_211 image11533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11533 : Bundle := named_bundle% "RealMapCertificates/relations/basis11533.json"
theorem reductionProof11533 : EqualModuloRelations reduction11533.relations reduction11533.input reduction11533.output := by lin_cert using reduction11533.terms
theorem substitutionProof11533 : IsMapEvaluation generatorImages reduction11533.relations [0,1359] reduction11533.output := by lin_cert using reduction11533.terms
def map_69_212 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11666 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11666 : InImage map_69_212 image11666 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11666 : Bundle := named_bundle% "RealMapCertificates/relations/basis11666.json"
theorem reductionProof11666 : EqualModuloRelations reduction11666.relations reduction11666.input reduction11666.output := by lin_cert using reduction11666.terms
theorem substitutionProof11666 : IsMapEvaluation generatorImages reduction11666.relations [1,1359] reduction11666.output := by lin_cert using reduction11666.terms
def image11667 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11667 : InImage map_69_212 image11667 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11667 : Bundle := named_bundle% "RealMapCertificates/relations/basis11667.json"
theorem reductionProof11667 : EqualModuloRelations reduction11667.relations reduction11667.input reduction11667.output := by lin_cert using reduction11667.terms
theorem substitutionProof11667 : IsMapEvaluation generatorImages reduction11667.relations [0,0,0,0,0,0,0,0,1253] reduction11667.output := by lin_cert using reduction11667.terms
def map_69_214 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12107 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12107 : InImage map_69_214 image12107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12107 : Bundle := named_bundle% "RealMapCertificates/relations/basis12107.json"
theorem reductionProof12107 : EqualModuloRelations reduction12107.relations reduction12107.input reduction12107.output := by lin_cert using reduction12107.terms
theorem substitutionProof12107 : IsMapEvaluation generatorImages reduction12107.relations [0,1425] reduction12107.output := by lin_cert using reduction12107.terms
end RealMapCertificates
