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
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 915 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1048 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1092 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1253 => []
  | 1254 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1300 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1311 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1334 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1359 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1361 => [[0,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1425 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1426 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1467 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1480 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1533 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1586 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1637 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1685 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1736 => []
  | 1737 => []
  | 1746 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1747 => []
  | 1748 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1827 => []
  | 1828 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1888 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 2191 => []
  | 2192 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 2375 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 2790 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 2791 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | _ => []
def map_69_215 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12270 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12270 : InImage map_69_215 image12270 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12270 : Bundle := named_bundle% "RealMapCertificates/relations/basis12270.json"
theorem reductionProof12270 : EqualModuloRelations reduction12270.relations reduction12270.input reduction12270.output := by lin_cert using reduction12270.terms
theorem substitutionProof12270 : IsMapEvaluation generatorImages reduction12270.relations [0,0,1426] reduction12270.output := by lin_cert using reduction12270.terms
def map_69_217 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12680 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12680 : InImage map_69_217 image12680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12680 : Bundle := named_bundle% "RealMapCertificates/relations/basis12680.json"
theorem reductionProof12680 : EqualModuloRelations reduction12680.relations reduction12680.input reduction12680.output := by lin_cert using reduction12680.terms
theorem substitutionProof12680 : IsMapEvaluation generatorImages reduction12680.relations [0,8,1139] reduction12680.output := by lin_cert using reduction12680.terms
def map_69_218 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12817 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12817 : InImage map_69_218 image12817 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12817 : Bundle := named_bundle% "RealMapCertificates/relations/basis12817.json"
theorem reductionProof12817 : EqualModuloRelations reduction12817.relations reduction12817.input reduction12817.output := by lin_cert using reduction12817.terms
theorem substitutionProof12817 : IsMapEvaluation generatorImages reduction12817.relations [0,0,8,1140] reduction12817.output := by lin_cert using reduction12817.terms
def map_69_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13235 : InImage map_69_220 image13235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13235 : Bundle := named_bundle% "RealMapCertificates/relations/basis13235.json"
theorem reductionProof13235 : EqualModuloRelations reduction13235.relations reduction13235.input reduction13235.output := by lin_cert using reduction13235.terms
theorem substitutionProof13235 : IsMapEvaluation generatorImages reduction13235.relations [0,8,1202] reduction13235.output := by lin_cert using reduction13235.terms
def map_69_221 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13387 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13387 : InImage map_69_221 image13387 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13387 : Bundle := named_bundle% "RealMapCertificates/relations/basis13387.json"
theorem reductionProof13387 : EqualModuloRelations reduction13387.relations reduction13387.input reduction13387.output := by lin_cert using reduction13387.terms
theorem substitutionProof13387 : IsMapEvaluation generatorImages reduction13387.relations [0,0,8,1203] reduction13387.output := by lin_cert using reduction13387.terms
def map_69_223 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13799 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13799 : InImage map_69_223 image13799 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13799 : Bundle := named_bundle% "RealMapCertificates/relations/basis13799.json"
theorem reductionProof13799 : EqualModuloRelations reduction13799.relations reduction13799.input reduction13799.output := by lin_cert using reduction13799.terms
theorem substitutionProof13799 : IsMapEvaluation generatorImages reduction13799.relations [0,8,8,951] reduction13799.output := by lin_cert using reduction13799.terms
def map_69_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13935 : InImage map_69_224 image13935 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13935 : Bundle := named_bundle% "RealMapCertificates/relations/basis13935.json"
theorem reductionProof13935 : EqualModuloRelations reduction13935.relations reduction13935.input reduction13935.output := by lin_cert using reduction13935.terms
theorem substitutionProof13935 : IsMapEvaluation generatorImages reduction13935.relations [0,0,8,16,804] reduction13935.output := by lin_cert using reduction13935.terms
def map_69_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14507 : InImage map_69_227 image14507 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14507 : Bundle := named_bundle% "RealMapCertificates/relations/basis14507.json"
theorem reductionProof14507 : EqualModuloRelations reduction14507.relations reduction14507.input reduction14507.output := by lin_cert using reduction14507.terms
theorem substitutionProof14507 : IsMapEvaluation generatorImages reduction14507.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1396] reduction14507.output := by lin_cert using reduction14507.terms
def map_69_228 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14713 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14713 : InImage map_69_228 image14713 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14713 : Bundle := named_bundle% "RealMapCertificates/relations/basis14713.json"
theorem reductionProof14713 : EqualModuloRelations reduction14713.relations reduction14713.input reduction14713.output := by lin_cert using reduction14713.terms
theorem substitutionProof14713 : IsMapEvaluation generatorImages reduction14713.relations [1685] reduction14713.output := by lin_cert using reduction14713.terms
def image14714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14714 : InImage map_69_228 image14714 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14714 : Bundle := named_bundle% "RealMapCertificates/relations/basis14714.json"
theorem reductionProof14714 : EqualModuloRelations reduction14714.relations reduction14714.input reduction14714.output := by lin_cert using reduction14714.terms
theorem substitutionProof14714 : IsMapEvaluation generatorImages reduction14714.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction14714.output := by lin_cert using reduction14714.terms
def map_69_231 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15332 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15332 : InImage map_69_231 image15332 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15332 : Bundle := named_bundle% "RealMapCertificates/relations/basis15332.json"
theorem reductionProof15332 : EqualModuloRelations reduction15332.relations reduction15332.input reduction15332.output := by lin_cert using reduction15332.terms
theorem substitutionProof15332 : IsMapEvaluation generatorImages reduction15332.relations [1746] reduction15332.output := by lin_cert using reduction15332.terms
def map_69_234 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15977 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15977 : InImage map_69_234 image15977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15977 : Bundle := named_bundle% "RealMapCertificates/relations/basis15977.json"
theorem reductionProof15977 : EqualModuloRelations reduction15977.relations reduction15977.input reduction15977.output := by lin_cert using reduction15977.terms
theorem substitutionProof15977 : IsMapEvaluation generatorImages reduction15977.relations [8,1480] reduction15977.output := by lin_cert using reduction15977.terms
def image15978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15978 : InImage map_69_234 image15978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15978 : Bundle := named_bundle% "RealMapCertificates/relations/basis15978.json"
theorem reductionProof15978 : EqualModuloRelations reduction15978.relations reduction15978.input reduction15978.output := by lin_cert using reduction15978.terms
theorem substitutionProof15978 : IsMapEvaluation generatorImages reduction15978.relations [0,0,0,1747] reduction15978.output := by lin_cert using reduction15978.terms
def map_69_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16236 : InImage map_69_235 image16236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16236 : Bundle := named_bundle% "RealMapCertificates/relations/basis16236.json"
theorem reductionProof16236 : EqualModuloRelations reduction16236.relations reduction16236.input reduction16236.output := by lin_cert using reduction16236.terms
theorem substitutionProof16236 : IsMapEvaluation generatorImages reduction16236.relations [0,0,0,0,1748] reduction16236.output := by lin_cert using reduction16236.terms
def map_69_237 : Matrix 7 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16648 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16648 : InImage map_69_237 image16648 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16648 : Bundle := named_bundle% "RealMapCertificates/relations/basis16648.json"
theorem reductionProof16648 : EqualModuloRelations reduction16648.relations reduction16648.input reduction16648.output := by lin_cert using reduction16648.terms
theorem substitutionProof16648 : IsMapEvaluation generatorImages reduction16648.relations [8,1533] reduction16648.output := by lin_cert using reduction16648.terms
def image16649 : Vec 7 := fun i => ([false,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16649 : InImage map_69_237 image16649 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16649 : Bundle := named_bundle% "RealMapCertificates/relations/basis16649.json"
theorem reductionProof16649 : EqualModuloRelations reduction16649.relations reduction16649.input reduction16649.output := by lin_cert using reduction16649.terms
theorem substitutionProof16649 : IsMapEvaluation generatorImages reduction16649.relations [0,0,0,1827] reduction16649.output := by lin_cert using reduction16649.terms
def map_69_240 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17345 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17345 : InImage map_69_240 image17345 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17345 : Bundle := named_bundle% "RealMapCertificates/relations/basis17345.json"
theorem reductionProof17345 : EqualModuloRelations reduction17345.relations reduction17345.input reduction17345.output := by lin_cert using reduction17345.terms
theorem substitutionProof17345 : IsMapEvaluation generatorImages reduction17345.relations [8,8,1254] reduction17345.output := by lin_cert using reduction17345.terms
def map_69_241 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17658 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17658 : InImage map_69_241 image17658 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17658 : Bundle := named_bundle% "RealMapCertificates/relations/basis17658.json"
theorem reductionProof17658 : EqualModuloRelations reduction17658.relations reduction17658.input reduction17658.output := by lin_cert using reduction17658.terms
theorem substitutionProof17658 : IsMapEvaluation generatorImages reduction17658.relations [0,0,0,0,0,1888] reduction17658.output := by lin_cert using reduction17658.terms
def map_69_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17860 : InImage map_69_242 image17860 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17860 : Bundle := named_bundle% "RealMapCertificates/relations/basis17860.json"
theorem reductionProof17860 : EqualModuloRelations reduction17860.relations reduction17860.input reduction17860.output := by lin_cert using reduction17860.terms
theorem substitutionProof17860 : IsMapEvaluation generatorImages reduction17860.relations [0,0,0,0,0,17,1313] reduction17860.output := by lin_cert using reduction17860.terms
def map_69_243 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18124 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18124 : InImage map_69_243 image18124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18124 : Bundle := named_bundle% "RealMapCertificates/relations/basis18124.json"
theorem reductionProof18124 : EqualModuloRelations reduction18124.relations reduction18124.input reduction18124.output := by lin_cert using reduction18124.terms
theorem substitutionProof18124 : IsMapEvaluation generatorImages reduction18124.relations [8,8,1311] reduction18124.output := by lin_cert using reduction18124.terms
def map_69_246 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image18870 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18870 : InImage map_69_246 image18870 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18870 : Bundle := named_bundle% "RealMapCertificates/relations/basis18870.json"
theorem reductionProof18870 : EqualModuloRelations reduction18870.relations reduction18870.input reduction18870.output := by lin_cert using reduction18870.terms
theorem substitutionProof18870 : IsMapEvaluation generatorImages reduction18870.relations [2192] reduction18870.output := by lin_cert using reduction18870.terms
def image18871 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18871 : InImage map_69_246 image18871 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18871 : Bundle := named_bundle% "RealMapCertificates/relations/basis18871.json"
theorem reductionProof18871 : EqualModuloRelations reduction18871.relations reduction18871.input reduction18871.output := by lin_cert using reduction18871.terms
theorem substitutionProof18871 : IsMapEvaluation generatorImages reduction18871.relations [8,8,8,1048] reduction18871.output := by lin_cert using reduction18871.terms
def map_69_249 : Matrix 7 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19689 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19689 : InImage map_69_249 image19689 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19689 : Bundle := named_bundle% "RealMapCertificates/relations/basis19689.json"
theorem reductionProof19689 : EqualModuloRelations reduction19689.relations reduction19689.input reduction19689.output := by lin_cert using reduction19689.terms
theorem substitutionProof19689 : IsMapEvaluation generatorImages reduction19689.relations [8,1748] reduction19689.output := by lin_cert using reduction19689.terms
def image19690 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19690 : InImage map_69_249 image19690 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19690 : Bundle := named_bundle% "RealMapCertificates/relations/basis19690.json"
theorem reductionProof19690 : EqualModuloRelations reduction19690.relations reduction19690.input reduction19690.output := by lin_cert using reduction19690.terms
theorem substitutionProof19690 : IsMapEvaluation generatorImages reduction19690.relations [8,8,8,1092] reduction19690.output := by lin_cert using reduction19690.terms
def map_69_250 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19971 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19971 : InImage map_69_250 image19971 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19971 : Bundle := named_bundle% "RealMapCertificates/relations/basis19971.json"
theorem reductionProof19971 : EqualModuloRelations reduction19971.relations reduction19971.input reduction19971.output := by lin_cert using reduction19971.terms
theorem substitutionProof19971 : IsMapEvaluation generatorImages reduction19971.relations [5,1888] reduction19971.output := by lin_cert using reduction19971.terms
def map_69_252 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20486 : InImage map_69_252 image20486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20486 : Bundle := named_bundle% "RealMapCertificates/relations/basis20486.json"
theorem reductionProof20486 : EqualModuloRelations reduction20486.relations reduction20486.input reduction20486.output := by lin_cert using reduction20486.terms
theorem substitutionProof20486 : IsMapEvaluation generatorImages reduction20486.relations [8,1828] reduction20486.output := by lin_cert using reduction20486.terms
def image20487 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20487 : InImage map_69_252 image20487 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20487 : Bundle := named_bundle% "RealMapCertificates/relations/basis20487.json"
theorem reductionProof20487 : EqualModuloRelations reduction20487.relations reduction20487.input reduction20487.output := by lin_cert using reduction20487.terms
theorem substitutionProof20487 : IsMapEvaluation generatorImages reduction20487.relations [8,8,8,8,886] reduction20487.output := by lin_cert using reduction20487.terms
def image20488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20488 : InImage map_69_252 image20488 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20488 : Bundle := named_bundle% "RealMapCertificates/relations/basis20488.json"
theorem reductionProof20488 : EqualModuloRelations reduction20488.relations reduction20488.input reduction20488.output := by lin_cert using reduction20488.terms
theorem substitutionProof20488 : IsMapEvaluation generatorImages reduction20488.relations [0,2375] reduction20488.output := by lin_cert using reduction20488.terms
def map_69_253 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20797 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20797 : InImage map_69_253 image20797 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20797 : Bundle := named_bundle% "RealMapCertificates/relations/basis20797.json"
theorem reductionProof20797 : EqualModuloRelations reduction20797.relations reduction20797.input reduction20797.output := by lin_cert using reduction20797.terms
theorem substitutionProof20797 : IsMapEvaluation generatorImages reduction20797.relations [0,17,1588] reduction20797.output := by lin_cert using reduction20797.terms
def map_69_255 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image21359 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21359 : InImage map_69_255 image21359 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21359 : Bundle := named_bundle% "RealMapCertificates/relations/basis21359.json"
theorem reductionProof21359 : EqualModuloRelations reduction21359.relations reduction21359.input reduction21359.output := by lin_cert using reduction21359.terms
theorem substitutionProof21359 : IsMapEvaluation generatorImages reduction21359.relations [8,16,1313] reduction21359.output := by lin_cert using reduction21359.terms
def image21360 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21360 : InImage map_69_255 image21360 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21360 : Bundle := named_bundle% "RealMapCertificates/relations/basis21360.json"
theorem reductionProof21360 : EqualModuloRelations reduction21360.relations reduction21360.input reduction21360.output := by lin_cert using reduction21360.terms
theorem substitutionProof21360 : IsMapEvaluation generatorImages reduction21360.relations [8,8,8,8,915] reduction21360.output := by lin_cert using reduction21360.terms
def image21361 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21361 : InImage map_69_255 image21361 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21361 : Bundle := named_bundle% "RealMapCertificates/relations/basis21361.json"
theorem reductionProof21361 : EqualModuloRelations reduction21361.relations reduction21361.input reduction21361.output := by lin_cert using reduction21361.terms
theorem substitutionProof21361 : IsMapEvaluation generatorImages reduction21361.relations [0,8,1888] reduction21361.output := by lin_cert using reduction21361.terms
def map_69_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21686 : InImage map_69_256 image21686 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21686 : Bundle := named_bundle% "RealMapCertificates/relations/basis21686.json"
theorem reductionProof21686 : EqualModuloRelations reduction21686.relations reduction21686.input reduction21686.output := by lin_cert using reduction21686.terms
theorem substitutionProof21686 : IsMapEvaluation generatorImages reduction21686.relations [0,8,17,1313] reduction21686.output := by lin_cert using reduction21686.terms
def map_69_258 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image22318 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22318 : InImage map_69_258 image22318 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22318 : Bundle := named_bundle% "RealMapCertificates/relations/basis22318.json"
theorem reductionProof22318 : EqualModuloRelations reduction22318.relations reduction22318.input reduction22318.output := by lin_cert using reduction22318.terms
theorem substitutionProof22318 : IsMapEvaluation generatorImages reduction22318.relations [8,8,1588] reduction22318.output := by lin_cert using reduction22318.terms
def image22319 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22319 : InImage map_69_258 image22319 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22319 : Bundle := named_bundle% "RealMapCertificates/relations/basis22319.json"
theorem reductionProof22319 : EqualModuloRelations reduction22319.relations reduction22319.input reduction22319.output := by lin_cert using reduction22319.terms
theorem substitutionProof22319 : IsMapEvaluation generatorImages reduction22319.relations [8,8,8,8,8,736] reduction22319.output := by lin_cert using reduction22319.terms
def map_69_259 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22691 : InImage map_69_259 image22691 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22691 : Bundle := named_bundle% "RealMapCertificates/relations/basis22691.json"
theorem reductionProof22691 : EqualModuloRelations reduction22691.relations reduction22691.input reduction22691.output := by lin_cert using reduction22691.terms
theorem substitutionProof22691 : IsMapEvaluation generatorImages reduction22691.relations [0,8,17,1361] reduction22691.output := by lin_cert using reduction22691.terms
def image22692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22692 : InImage map_69_259 image22692 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22692 : Bundle := named_bundle% "RealMapCertificates/relations/basis22692.json"
theorem reductionProof22692 : EqualModuloRelations reduction22692.relations reduction22692.input reduction22692.output := by lin_cert using reduction22692.terms
theorem substitutionProof22692 : IsMapEvaluation generatorImages reduction22692.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction22692.output := by lin_cert using reduction22692.terms
def map_69_260 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image23003 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23003 : InImage map_69_260 image23003 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23003 : Bundle := named_bundle% "RealMapCertificates/relations/basis23003.json"
theorem reductionProof23003 : EqualModuloRelations reduction23003.relations reduction23003.input reduction23003.output := by lin_cert using reduction23003.terms
theorem substitutionProof23003 : IsMapEvaluation generatorImages reduction23003.relations [2791] reduction23003.output := by lin_cert using reduction23003.terms
def image23004 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23004 : InImage map_69_260 image23004 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23004 : Bundle := named_bundle% "RealMapCertificates/relations/basis23004.json"
theorem reductionProof23004 : EqualModuloRelations reduction23004.relations reduction23004.input reduction23004.output := by lin_cert using reduction23004.terms
theorem substitutionProof23004 : IsMapEvaluation generatorImages reduction23004.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction23004.output := by lin_cert using reduction23004.terms
def map_69_261 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image23431 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23431 : InImage map_69_261 image23431 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23431 : Bundle := named_bundle% "RealMapCertificates/relations/basis23431.json"
theorem reductionProof23431 : EqualModuloRelations reduction23431.relations reduction23431.input reduction23431.output := by lin_cert using reduction23431.terms
theorem substitutionProof23431 : IsMapEvaluation generatorImages reduction23431.relations [8,8,8,1313] reduction23431.output := by lin_cert using reduction23431.terms
def image23432 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23432 : InImage map_69_261 image23432 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23432 : Bundle := named_bundle% "RealMapCertificates/relations/basis23432.json"
theorem reductionProof23432 : EqualModuloRelations reduction23432.relations reduction23432.input reduction23432.output := by lin_cert using reduction23432.terms
theorem substitutionProof23432 : IsMapEvaluation generatorImages reduction23432.relations [8,8,8,8,8,777] reduction23432.output := by lin_cert using reduction23432.terms
def map_70_70 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image498 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation498 : InImage map_70_70 image498 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction498 : Bundle := named_bundle% "RealMapCertificates/relations/basis498.json"
theorem reductionProof498 : EqualModuloRelations reduction498.relations reduction498.input reduction498.output := by lin_cert using reduction498.terms
theorem substitutionProof498 : IsMapEvaluation generatorImages reduction498.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction498.output := by lin_cert using reduction498.terms
def map_70_208 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10985 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10985 : InImage map_70_208 image10985 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10985 : Bundle := named_bundle% "RealMapCertificates/relations/basis10985.json"
theorem reductionProof10985 : EqualModuloRelations reduction10985.relations reduction10985.input reduction10985.output := by lin_cert using reduction10985.terms
theorem substitutionProof10985 : IsMapEvaluation generatorImages reduction10985.relations [1,1300] reduction10985.output := by lin_cert using reduction10985.terms
def map_70_209 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11136 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11136 : InImage map_70_209 image11136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11136 : Bundle := named_bundle% "RealMapCertificates/relations/basis11136.json"
theorem reductionProof11136 : EqualModuloRelations reduction11136.relations reduction11136.input reduction11136.output := by lin_cert using reduction11136.terms
theorem substitutionProof11136 : IsMapEvaluation generatorImages reduction11136.relations [0,1334] reduction11136.output := by lin_cert using reduction11136.terms
def map_70_212 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11665 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11665 : InImage map_70_212 image11665 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11665 : Bundle := named_bundle% "RealMapCertificates/relations/basis11665.json"
theorem reductionProof11665 : EqualModuloRelations reduction11665.relations reduction11665.input reduction11665.output := by lin_cert using reduction11665.terms
theorem substitutionProof11665 : IsMapEvaluation generatorImages reduction11665.relations [0,0,1359] reduction11665.output := by lin_cert using reduction11665.terms
def map_70_213 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11888 : InImage map_70_213 image11888 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11888 : Bundle := named_bundle% "RealMapCertificates/relations/basis11888.json"
theorem reductionProof11888 : EqualModuloRelations reduction11888.relations reduction11888.input reduction11888.output := by lin_cert using reduction11888.terms
theorem substitutionProof11888 : IsMapEvaluation generatorImages reduction11888.relations [0,0,0,0,0,0,0,0,0,1253] reduction11888.output := by lin_cert using reduction11888.terms
def map_70_214 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12106 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12106 : InImage map_70_214 image12106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12106 : Bundle := named_bundle% "RealMapCertificates/relations/basis12106.json"
theorem reductionProof12106 : EqualModuloRelations reduction12106.relations reduction12106.input reduction12106.output := by lin_cert using reduction12106.terms
theorem substitutionProof12106 : IsMapEvaluation generatorImages reduction12106.relations [1,1,1359] reduction12106.output := by lin_cert using reduction12106.terms
def map_70_215 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12269 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12269 : InImage map_70_215 image12269 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12269 : Bundle := named_bundle% "RealMapCertificates/relations/basis12269.json"
theorem reductionProof12269 : EqualModuloRelations reduction12269.relations reduction12269.input reduction12269.output := by lin_cert using reduction12269.terms
theorem substitutionProof12269 : IsMapEvaluation generatorImages reduction12269.relations [0,0,1425] reduction12269.output := by lin_cert using reduction12269.terms
def map_70_218 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12816 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12816 : InImage map_70_218 image12816 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12816 : Bundle := named_bundle% "RealMapCertificates/relations/basis12816.json"
theorem reductionProof12816 : EqualModuloRelations reduction12816.relations reduction12816.input reduction12816.output := by lin_cert using reduction12816.terms
theorem substitutionProof12816 : IsMapEvaluation generatorImages reduction12816.relations [0,0,8,1139] reduction12816.output := by lin_cert using reduction12816.terms
def map_70_221 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13386 : InImage map_70_221 image13386 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13386 : Bundle := named_bundle% "RealMapCertificates/relations/basis13386.json"
theorem reductionProof13386 : EqualModuloRelations reduction13386.relations reduction13386.input reduction13386.output := by lin_cert using reduction13386.terms
theorem substitutionProof13386 : IsMapEvaluation generatorImages reduction13386.relations [0,0,8,1202] reduction13386.output := by lin_cert using reduction13386.terms
def map_70_224 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13934 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13934 : InImage map_70_224 image13934 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13934 : Bundle := named_bundle% "RealMapCertificates/relations/basis13934.json"
theorem reductionProof13934 : EqualModuloRelations reduction13934.relations reduction13934.input reduction13934.output := by lin_cert using reduction13934.terms
theorem substitutionProof13934 : IsMapEvaluation generatorImages reduction13934.relations [0,0,8,8,951] reduction13934.output := by lin_cert using reduction13934.terms
def map_70_228 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14712 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14712 : InImage map_70_228 image14712 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14712 : Bundle := named_bundle% "RealMapCertificates/relations/basis14712.json"
theorem reductionProof14712 : EqualModuloRelations reduction14712.relations reduction14712.input reduction14712.output := by lin_cert using reduction14712.terms
theorem substitutionProof14712 : IsMapEvaluation generatorImages reduction14712.relations [17,1140] reduction14712.output := by lin_cert using reduction14712.terms
def map_70_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14954 : InImage map_70_229 image14954 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14954 : Bundle := named_bundle% "RealMapCertificates/relations/basis14954.json"
theorem reductionProof14954 : EqualModuloRelations reduction14954.relations reduction14954.input reduction14954.output := by lin_cert using reduction14954.terms
theorem substitutionProof14954 : IsMapEvaluation generatorImages reduction14954.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction14954.output := by lin_cert using reduction14954.terms
def map_70_230 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15098 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15098 : InImage map_70_230 image15098 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15098 : Bundle := named_bundle% "RealMapCertificates/relations/basis15098.json"
theorem reductionProof15098 : EqualModuloRelations reduction15098.relations reduction15098.input reduction15098.output := by lin_cert using reduction15098.terms
theorem substitutionProof15098 : IsMapEvaluation generatorImages reduction15098.relations [1,1685] reduction15098.output := by lin_cert using reduction15098.terms
def map_70_231 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15331 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15331 : InImage map_70_231 image15331 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15331 : Bundle := named_bundle% "RealMapCertificates/relations/basis15331.json"
theorem reductionProof15331 : EqualModuloRelations reduction15331.relations reduction15331.input reduction15331.output := by lin_cert using reduction15331.terms
theorem substitutionProof15331 : IsMapEvaluation generatorImages reduction15331.relations [17,1203] reduction15331.output := by lin_cert using reduction15331.terms
def map_70_234 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15976 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15976 : InImage map_70_234 image15976 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15976 : Bundle := named_bundle% "RealMapCertificates/relations/basis15976.json"
theorem reductionProof15976 : EqualModuloRelations reduction15976.relations reduction15976.input reduction15976.output := by lin_cert using reduction15976.terms
theorem substitutionProof15976 : IsMapEvaluation generatorImages reduction15976.relations [16,17,804] reduction15976.output := by lin_cert using reduction15976.terms
def map_70_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16235 : InImage map_70_235 image16235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16235 : Bundle := named_bundle% "RealMapCertificates/relations/basis16235.json"
theorem reductionProof16235 : EqualModuloRelations reduction16235.relations reduction16235.input reduction16235.output := by lin_cert using reduction16235.terms
theorem substitutionProof16235 : IsMapEvaluation generatorImages reduction16235.relations [0,0,0,0,1747] reduction16235.output := by lin_cert using reduction16235.terms
def map_70_236 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16413 : InImage map_70_236 image16413 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16413 : Bundle := named_bundle% "RealMapCertificates/relations/basis16413.json"
theorem reductionProof16413 : EqualModuloRelations reduction16413.relations reduction16413.input reduction16413.output := by lin_cert using reduction16413.terms
theorem substitutionProof16413 : IsMapEvaluation generatorImages reduction16413.relations [0,0,0,0,0,1748] reduction16413.output := by lin_cert using reduction16413.terms
def map_70_237 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16647 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16647 : InImage map_70_237 image16647 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16647 : Bundle := named_bundle% "RealMapCertificates/relations/basis16647.json"
theorem reductionProof16647 : EqualModuloRelations reduction16647.relations reduction16647.input reduction16647.output := by lin_cert using reduction16647.terms
theorem substitutionProof16647 : IsMapEvaluation generatorImages reduction16647.relations [8,17,996] reduction16647.output := by lin_cert using reduction16647.terms
def map_70_240 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17344 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17344 : InImage map_70_240 image17344 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17344 : Bundle := named_bundle% "RealMapCertificates/relations/basis17344.json"
theorem reductionProof17344 : EqualModuloRelations reduction17344.relations reduction17344.input reduction17344.output := by lin_cert using reduction17344.terms
theorem substitutionProof17344 : IsMapEvaluation generatorImages reduction17344.relations [8,8,17,804] reduction17344.output := by lin_cert using reduction17344.terms
def map_70_242 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17859 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17859 : InImage map_70_242 image17859 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17859 : Bundle := named_bundle% "RealMapCertificates/relations/basis17859.json"
theorem reductionProof17859 : EqualModuloRelations reduction17859.relations reduction17859.input reduction17859.output := by lin_cert using reduction17859.terms
theorem substitutionProof17859 : IsMapEvaluation generatorImages reduction17859.relations [0,0,0,0,0,0,1888] reduction17859.output := by lin_cert using reduction17859.terms
def map_70_243 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18123 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18123 : InImage map_70_243 image18123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18123 : Bundle := named_bundle% "RealMapCertificates/relations/basis18123.json"
theorem reductionProof18123 : EqualModuloRelations reduction18123.relations reduction18123.input reduction18123.output := by lin_cert using reduction18123.terms
theorem substitutionProof18123 : IsMapEvaluation generatorImages reduction18123.relations [8,8,17,852] reduction18123.output := by lin_cert using reduction18123.terms
def map_70_246 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image18868 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18868 : InImage map_70_246 image18868 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18868 : Bundle := named_bundle% "RealMapCertificates/relations/basis18868.json"
theorem reductionProof18868 : EqualModuloRelations reduction18868.relations reduction18868.input reduction18868.output := by lin_cert using reduction18868.terms
theorem substitutionProof18868 : IsMapEvaluation generatorImages reduction18868.relations [2191] reduction18868.output := by lin_cert using reduction18868.terms
def image18869 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18869 : InImage map_70_246 image18869 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18869 : Bundle := named_bundle% "RealMapCertificates/relations/basis18869.json"
theorem reductionProof18869 : EqualModuloRelations reduction18869.relations reduction18869.input reduction18869.output := by lin_cert using reduction18869.terms
theorem substitutionProof18869 : IsMapEvaluation generatorImages reduction18869.relations [8,8,16,17,554] reduction18869.output := by lin_cert using reduction18869.terms
def map_70_247 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19186 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19186 : InImage map_70_247 image19186 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19186 : Bundle := named_bundle% "RealMapCertificates/relations/basis19186.json"
theorem reductionProof19186 : EqualModuloRelations reduction19186.relations reduction19186.input reduction19186.output := by lin_cert using reduction19186.terms
theorem substitutionProof19186 : IsMapEvaluation generatorImages reduction19186.relations [0,2192] reduction19186.output := by lin_cert using reduction19186.terms
def map_70_249 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image19687 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19687 : InImage map_70_249 image19687 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19687 : Bundle := named_bundle% "RealMapCertificates/relations/basis19687.json"
theorem reductionProof19687 : EqualModuloRelations reduction19687.relations reduction19687.input reduction19687.output := by lin_cert using reduction19687.terms
theorem substitutionProof19687 : IsMapEvaluation generatorImages reduction19687.relations [8,1747] reduction19687.output := by lin_cert using reduction19687.terms
def image19688 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19688 : InImage map_70_249 image19688 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19688 : Bundle := named_bundle% "RealMapCertificates/relations/basis19688.json"
theorem reductionProof19688 : EqualModuloRelations reduction19688.relations reduction19688.input reduction19688.output := by lin_cert using reduction19688.terms
theorem substitutionProof19688 : IsMapEvaluation generatorImages reduction19688.relations [8,8,8,17,701] reduction19688.output := by lin_cert using reduction19688.terms
def map_70_250 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19970 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19970 : InImage map_70_250 image19970 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19970 : Bundle := named_bundle% "RealMapCertificates/relations/basis19970.json"
theorem reductionProof19970 : EqualModuloRelations reduction19970.relations reduction19970.input reduction19970.output := by lin_cert using reduction19970.terms
theorem substitutionProof19970 : IsMapEvaluation generatorImages reduction19970.relations [0,8,1748] reduction19970.output := by lin_cert using reduction19970.terms
def map_70_252 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20483 : InImage map_70_252 image20483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20483 : Bundle := named_bundle% "RealMapCertificates/relations/basis20483.json"
theorem reductionProof20483 : EqualModuloRelations reduction20483.relations reduction20483.input reduction20483.output := by lin_cert using reduction20483.terms
theorem substitutionProof20483 : IsMapEvaluation generatorImages reduction20483.relations [8,1827] reduction20483.output := by lin_cert using reduction20483.terms
def image20484 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20484 : InImage map_70_252 image20484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20484 : Bundle := named_bundle% "RealMapCertificates/relations/basis20484.json"
theorem reductionProof20484 : EqualModuloRelations reduction20484.relations reduction20484.input reduction20484.output := by lin_cert using reduction20484.terms
theorem substitutionProof20484 : IsMapEvaluation generatorImages reduction20484.relations [8,8,8,8,17,554] reduction20484.output := by lin_cert using reduction20484.terms
def image20485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20485 : InImage map_70_252 image20485 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20485 : Bundle := named_bundle% "RealMapCertificates/relations/basis20485.json"
theorem reductionProof20485 : EqualModuloRelations reduction20485.relations reduction20485.input reduction20485.output := by lin_cert using reduction20485.terms
theorem substitutionProof20485 : IsMapEvaluation generatorImages reduction20485.relations [1,5,1888] reduction20485.output := by lin_cert using reduction20485.terms
def map_70_253 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20795 : InImage map_70_253 image20795 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20795 : Bundle := named_bundle% "RealMapCertificates/relations/basis20795.json"
theorem reductionProof20795 : EqualModuloRelations reduction20795.relations reduction20795.input reduction20795.output := by lin_cert using reduction20795.terms
theorem substitutionProof20795 : IsMapEvaluation generatorImages reduction20795.relations [0,8,1828] reduction20795.output := by lin_cert using reduction20795.terms
def image20796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20796 : InImage map_70_253 image20796 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20796 : Bundle := named_bundle% "RealMapCertificates/relations/basis20796.json"
theorem reductionProof20796 : EqualModuloRelations reduction20796.relations reduction20796.input reduction20796.output := by lin_cert using reduction20796.terms
theorem substitutionProof20796 : IsMapEvaluation generatorImages reduction20796.relations [0,0,2375] reduction20796.output := by lin_cert using reduction20796.terms
def map_70_255 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21357 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21357 : InImage map_70_255 image21357 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21357 : Bundle := named_bundle% "RealMapCertificates/relations/basis21357.json"
theorem reductionProof21357 : EqualModuloRelations reduction21357.relations reduction21357.input reduction21357.output := by lin_cert using reduction21357.terms
theorem substitutionProof21357 : IsMapEvaluation generatorImages reduction21357.relations [8,16,1312] reduction21357.output := by lin_cert using reduction21357.terms
def image21358 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21358 : InImage map_70_255 image21358 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21358 : Bundle := named_bundle% "RealMapCertificates/relations/basis21358.json"
theorem reductionProof21358 : EqualModuloRelations reduction21358.relations reduction21358.input reduction21358.output := by lin_cert using reduction21358.terms
theorem substitutionProof21358 : IsMapEvaluation generatorImages reduction21358.relations [8,8,8,8,17,579] reduction21358.output := by lin_cert using reduction21358.terms
def map_70_256 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image21684 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21684 : InImage map_70_256 image21684 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21684 : Bundle := named_bundle% "RealMapCertificates/relations/basis21684.json"
theorem reductionProof21684 : EqualModuloRelations reduction21684.relations reduction21684.input reduction21684.output := by lin_cert using reduction21684.terms
theorem substitutionProof21684 : IsMapEvaluation generatorImages reduction21684.relations [0,8,16,1313] reduction21684.output := by lin_cert using reduction21684.terms
def image21685 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21685 : InImage map_70_256 image21685 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21685 : Bundle := named_bundle% "RealMapCertificates/relations/basis21685.json"
theorem reductionProof21685 : EqualModuloRelations reduction21685.relations reduction21685.input reduction21685.output := by lin_cert using reduction21685.terms
theorem substitutionProof21685 : IsMapEvaluation generatorImages reduction21685.relations [0,0,8,1888] reduction21685.output := by lin_cert using reduction21685.terms
def map_70_258 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image22316 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22316 : InImage map_70_258 image22316 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22316 : Bundle := named_bundle% "RealMapCertificates/relations/basis22316.json"
theorem reductionProof22316 : EqualModuloRelations reduction22316.relations reduction22316.input reduction22316.output := by lin_cert using reduction22316.terms
theorem substitutionProof22316 : IsMapEvaluation generatorImages reduction22316.relations [8,8,1587] reduction22316.output := by lin_cert using reduction22316.terms
def image22317 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22317 : InImage map_70_258 image22317 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22317 : Bundle := named_bundle% "RealMapCertificates/relations/basis22317.json"
theorem reductionProof22317 : EqualModuloRelations reduction22317.relations reduction22317.input reduction22317.output := by lin_cert using reduction22317.terms
theorem substitutionProof22317 : IsMapEvaluation generatorImages reduction22317.relations [8,8,8,8,16,17,296] reduction22317.output := by lin_cert using reduction22317.terms
def map_70_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22690 : InImage map_70_259 image22690 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22690 : Bundle := named_bundle% "RealMapCertificates/relations/basis22690.json"
theorem reductionProof22690 : EqualModuloRelations reduction22690.relations reduction22690.input reduction22690.output := by lin_cert using reduction22690.terms
theorem substitutionProof22690 : IsMapEvaluation generatorImages reduction22690.relations [0,8,8,1588] reduction22690.output := by lin_cert using reduction22690.terms
def map_70_260 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23002 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23002 : InImage map_70_260 image23002 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23002 : Bundle := named_bundle% "RealMapCertificates/relations/basis23002.json"
theorem reductionProof23002 : EqualModuloRelations reduction23002.relations reduction23002.input reduction23002.output := by lin_cert using reduction23002.terms
theorem substitutionProof23002 : IsMapEvaluation generatorImages reduction23002.relations [2790] reduction23002.output := by lin_cert using reduction23002.terms
def map_70_261 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image23428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23428 : InImage map_70_261 image23428 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23428 : Bundle := named_bundle% "RealMapCertificates/relations/basis23428.json"
theorem reductionProof23428 : EqualModuloRelations reduction23428.relations reduction23428.input reduction23428.output := by lin_cert using reduction23428.terms
theorem substitutionProof23428 : IsMapEvaluation generatorImages reduction23428.relations [8,8,8,1312] reduction23428.output := by lin_cert using reduction23428.terms
def image23429 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23429 : InImage map_70_261 image23429 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23429 : Bundle := named_bundle% "RealMapCertificates/relations/basis23429.json"
theorem reductionProof23429 : EqualModuloRelations reduction23429.relations reduction23429.input reduction23429.output := by lin_cert using reduction23429.terms
theorem substitutionProof23429 : IsMapEvaluation generatorImages reduction23429.relations [8,8,8,8,8,17,470] reduction23429.output := by lin_cert using reduction23429.terms
def image23430 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23430 : InImage map_70_261 image23430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23430 : Bundle := named_bundle% "RealMapCertificates/relations/basis23430.json"
theorem reductionProof23430 : EqualModuloRelations reduction23430.relations reduction23430.input reduction23430.output := by lin_cert using reduction23430.terms
theorem substitutionProof23430 : IsMapEvaluation generatorImages reduction23430.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction23430.output := by lin_cert using reduction23430.terms
def map_71_71 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image517 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation517 : InImage map_71_71 image517 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction517 : Bundle := named_bundle% "RealMapCertificates/relations/basis517.json"
theorem reductionProof517 : EqualModuloRelations reduction517.relations reduction517.input reduction517.output := by lin_cert using reduction517.terms
theorem substitutionProof517 : IsMapEvaluation generatorImages reduction517.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction517.output := by lin_cert using reduction517.terms
def map_71_210 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11315 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11315 : InImage map_71_210 image11315 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11315 : Bundle := named_bundle% "RealMapCertificates/relations/basis11315.json"
theorem reductionProof11315 : EqualModuloRelations reduction11315.relations reduction11315.input reduction11315.output := by lin_cert using reduction11315.terms
theorem substitutionProof11315 : IsMapEvaluation generatorImages reduction11315.relations [0,0,1334] reduction11315.output := by lin_cert using reduction11315.terms
def map_71_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12105 : InImage map_71_214 image12105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12105 : Bundle := named_bundle% "RealMapCertificates/relations/basis12105.json"
theorem reductionProof12105 : EqualModuloRelations reduction12105.relations reduction12105.input reduction12105.output := by lin_cert using reduction12105.terms
theorem substitutionProof12105 : IsMapEvaluation generatorImages reduction12105.relations [0,0,0,0,0,0,0,0,0,0,1253] reduction12105.output := by lin_cert using reduction12105.terms
def map_71_215 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12268 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12268 : InImage map_71_215 image12268 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12268 : Bundle := named_bundle% "RealMapCertificates/relations/basis12268.json"
theorem reductionProof12268 : EqualModuloRelations reduction12268.relations reduction12268.input reduction12268.output := by lin_cert using reduction12268.terms
theorem substitutionProof12268 : IsMapEvaluation generatorImages reduction12268.relations [1467] reduction12268.output := by lin_cert using reduction12268.terms
def map_71_216 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12452 : InImage map_71_216 image12452 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12452 : Bundle := named_bundle% "RealMapCertificates/relations/basis12452.json"
theorem reductionProof12452 : EqualModuloRelations reduction12452.relations reduction12452.input reduction12452.output := by lin_cert using reduction12452.terms
theorem substitutionProof12452 : IsMapEvaluation generatorImages reduction12452.relations [0,0,0,1425] reduction12452.output := by lin_cert using reduction12452.terms
def map_71_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13580 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13580 : InImage map_71_222 image13580 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13580 : Bundle := named_bundle% "RealMapCertificates/relations/basis13580.json"
theorem reductionProof13580 : EqualModuloRelations reduction13580.relations reduction13580.input reduction13580.output := by lin_cert using reduction13580.terms
theorem substitutionProof13580 : IsMapEvaluation generatorImages reduction13580.relations [1586] reduction13580.output := by lin_cert using reduction13580.terms
def map_71_225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14152 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14152 : InImage map_71_225 image14152 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14152 : Bundle := named_bundle% "RealMapCertificates/relations/basis14152.json"
theorem reductionProof14152 : EqualModuloRelations reduction14152.relations reduction14152.input reduction14152.output := by lin_cert using reduction14152.terms
theorem substitutionProof14152 : IsMapEvaluation generatorImages reduction14152.relations [1637] reduction14152.output := by lin_cert using reduction14152.terms
def map_71_228 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14711 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14711 : InImage map_71_228 image14711 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14711 : Bundle := named_bundle% "RealMapCertificates/relations/basis14711.json"
theorem reductionProof14711 : EqualModuloRelations reduction14711.relations reduction14711.input reduction14711.output := by lin_cert using reduction14711.terms
theorem substitutionProof14711 : IsMapEvaluation generatorImages reduction14711.relations [16,1140] reduction14711.output := by lin_cert using reduction14711.terms
def map_71_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14953 : InImage map_71_229 image14953 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14953 : Bundle := named_bundle% "RealMapCertificates/relations/basis14953.json"
theorem reductionProof14953 : EqualModuloRelations reduction14953.relations reduction14953.input reduction14953.output := by lin_cert using reduction14953.terms
theorem substitutionProof14953 : IsMapEvaluation generatorImages reduction14953.relations [0,17,1140] reduction14953.output := by lin_cert using reduction14953.terms
def map_71_230 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15097 : InImage map_71_230 image15097 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15097 : Bundle := named_bundle% "RealMapCertificates/relations/basis15097.json"
theorem reductionProof15097 : EqualModuloRelations reduction15097.relations reduction15097.input reduction15097.output := by lin_cert using reduction15097.terms
theorem substitutionProof15097 : IsMapEvaluation generatorImages reduction15097.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction15097.output := by lin_cert using reduction15097.terms
def map_71_231 : Matrix 7 1 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15330 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15330 : InImage map_71_231 image15330 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15330 : Bundle := named_bundle% "RealMapCertificates/relations/basis15330.json"
theorem reductionProof15330 : EqualModuloRelations reduction15330.relations reduction15330.input reduction15330.output := by lin_cert using reduction15330.terms
theorem substitutionProof15330 : IsMapEvaluation generatorImages reduction15330.relations [8,1426] reduction15330.output := by lin_cert using reduction15330.terms
def map_71_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15570 : InImage map_71_232 image15570 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15570 : Bundle := named_bundle% "RealMapCertificates/relations/basis15570.json"
theorem reductionProof15570 : EqualModuloRelations reduction15570.relations reduction15570.input reduction15570.output := by lin_cert using reduction15570.terms
theorem substitutionProof15570 : IsMapEvaluation generatorImages reduction15570.relations [0,17,1203] reduction15570.output := by lin_cert using reduction15570.terms
def map_71_234 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15975 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15975 : InImage map_71_234 image15975 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15975 : Bundle := named_bundle% "RealMapCertificates/relations/basis15975.json"
theorem reductionProof15975 : EqualModuloRelations reduction15975.relations reduction15975.input reduction15975.output := by lin_cert using reduction15975.terms
theorem substitutionProof15975 : IsMapEvaluation generatorImages reduction15975.relations [8,8,1140] reduction15975.output := by lin_cert using reduction15975.terms
def map_71_236 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16412 : InImage map_71_236 image16412 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16412 : Bundle := named_bundle% "RealMapCertificates/relations/basis16412.json"
theorem reductionProof16412 : EqualModuloRelations reduction16412.relations reduction16412.input reduction16412.output := by lin_cert using reduction16412.terms
theorem substitutionProof16412 : IsMapEvaluation generatorImages reduction16412.relations [0,0,0,0,0,1747] reduction16412.output := by lin_cert using reduction16412.terms
def map_71_237 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image16645 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16645 : InImage map_71_237 image16645 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16645 : Bundle := named_bundle% "RealMapCertificates/relations/basis16645.json"
theorem reductionProof16645 : EqualModuloRelations reduction16645.relations reduction16645.input reduction16645.output := by lin_cert using reduction16645.terms
theorem substitutionProof16645 : IsMapEvaluation generatorImages reduction16645.relations [8,8,1203] reduction16645.output := by lin_cert using reduction16645.terms
def image16646 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16646 : InImage map_71_237 image16646 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16646 : Bundle := named_bundle% "RealMapCertificates/relations/basis16646.json"
theorem reductionProof16646 : EqualModuloRelations reduction16646.relations reduction16646.input reduction16646.output := by lin_cert using reduction16646.terms
theorem substitutionProof16646 : IsMapEvaluation generatorImages reduction16646.relations [0,0,0,0,0,0,1748] reduction16646.output := by lin_cert using reduction16646.terms
end RealMapCertificates
