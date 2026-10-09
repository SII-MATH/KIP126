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
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1253 => []
  | 1254 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1311 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1312 => []
  | 1313 => [[0,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1359 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1397 => []
  | 1425 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1426 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1467 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1480 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1513 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1533 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1550 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1585 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1586 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1587 => []
  | 1588 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1636 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1637 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1685 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 1746 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 1747 => []
  | 1748 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 1827 => []
  | 1828 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1989 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 2088 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 2191 => []
  | 2192 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 2375 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]]
  | 2535 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 2672 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 2789 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]]
  | 2790 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | _ => []
def map_71_240 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17343 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17343 : InImage map_71_240 image17343 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17343 : Bundle := named_bundle% "RealMapCertificates/relations/basis17343.json"
theorem reductionProof17343 : EqualModuloRelations reduction17343.relations reduction17343.input reduction17343.output := by lin_cert using reduction17343.terms
theorem substitutionProof17343 : IsMapEvaluation generatorImages reduction17343.relations [8,8,16,804] reduction17343.output := by lin_cert using reduction17343.terms
def map_71_243 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18122 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18122 : InImage map_71_243 image18122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18122 : Bundle := named_bundle% "RealMapCertificates/relations/basis18122.json"
theorem reductionProof18122 : EqualModuloRelations reduction18122.relations reduction18122.input reduction18122.output := by lin_cert using reduction18122.terms
theorem substitutionProof18122 : IsMapEvaluation generatorImages reduction18122.relations [8,8,8,996] reduction18122.output := by lin_cert using reduction18122.terms
def map_71_245 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18602 : InImage map_71_245 image18602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18602 : Bundle := named_bundle% "RealMapCertificates/relations/basis18602.json"
theorem reductionProof18602 : EqualModuloRelations reduction18602.relations reduction18602.input reduction18602.output := by lin_cert using reduction18602.terms
theorem substitutionProof18602 : IsMapEvaluation generatorImages reduction18602.relations [5,1747] reduction18602.output := by lin_cert using reduction18602.terms
def map_71_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18867 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18867 : InImage map_71_246 image18867 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18867 : Bundle := named_bundle% "RealMapCertificates/relations/basis18867.json"
theorem reductionProof18867 : EqualModuloRelations reduction18867.relations reduction18867.input reduction18867.output := by lin_cert using reduction18867.terms
theorem substitutionProof18867 : IsMapEvaluation generatorImages reduction18867.relations [8,8,8,8,804] reduction18867.output := by lin_cert using reduction18867.terms
def map_71_247 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19185 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19185 : InImage map_71_247 image19185 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19185 : Bundle := named_bundle% "RealMapCertificates/relations/basis19185.json"
theorem reductionProof19185 : EqualModuloRelations reduction19185.relations reduction19185.input reduction19185.output := by lin_cert using reduction19185.terms
theorem substitutionProof19185 : IsMapEvaluation generatorImages reduction19185.relations [0,2191] reduction19185.output := by lin_cert using reduction19185.terms
def map_71_248 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19399 : InImage map_71_248 image19399 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19399 : Bundle := named_bundle% "RealMapCertificates/relations/basis19399.json"
theorem reductionProof19399 : EqualModuloRelations reduction19399.relations reduction19399.input reduction19399.output := by lin_cert using reduction19399.terms
theorem substitutionProof19399 : IsMapEvaluation generatorImages reduction19399.relations [0,0,2192] reduction19399.output := by lin_cert using reduction19399.terms
def map_71_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19686 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19686 : InImage map_71_249 image19686 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19686 : Bundle := named_bundle% "RealMapCertificates/relations/basis19686.json"
theorem reductionProof19686 : EqualModuloRelations reduction19686.relations reduction19686.input reduction19686.output := by lin_cert using reduction19686.terms
theorem substitutionProof19686 : IsMapEvaluation generatorImages reduction19686.relations [8,8,8,8,852] reduction19686.output := by lin_cert using reduction19686.terms
def map_71_250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19969 : InImage map_71_250 image19969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19969 : Bundle := named_bundle% "RealMapCertificates/relations/basis19969.json"
theorem reductionProof19969 : EqualModuloRelations reduction19969.relations reduction19969.input reduction19969.output := by lin_cert using reduction19969.terms
theorem substitutionProof19969 : IsMapEvaluation generatorImages reduction19969.relations [0,8,1747] reduction19969.output := by lin_cert using reduction19969.terms
def map_71_251 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20204 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20204 : InImage map_71_251 image20204 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20204 : Bundle := named_bundle% "RealMapCertificates/relations/basis20204.json"
theorem reductionProof20204 : EqualModuloRelations reduction20204.relations reduction20204.input reduction20204.output := by lin_cert using reduction20204.terms
theorem substitutionProof20204 : IsMapEvaluation generatorImages reduction20204.relations [0,0,8,1748] reduction20204.output := by lin_cert using reduction20204.terms
def map_71_252 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20482 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20482 : InImage map_71_252 image20482 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20482 : Bundle := named_bundle% "RealMapCertificates/relations/basis20482.json"
theorem reductionProof20482 : EqualModuloRelations reduction20482.relations reduction20482.input reduction20482.output := by lin_cert using reduction20482.terms
theorem substitutionProof20482 : IsMapEvaluation generatorImages reduction20482.relations [8,8,8,8,16,554] reduction20482.output := by lin_cert using reduction20482.terms
def map_71_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20794 : InImage map_71_253 image20794 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20794 : Bundle := named_bundle% "RealMapCertificates/relations/basis20794.json"
theorem reductionProof20794 : EqualModuloRelations reduction20794.relations reduction20794.input reduction20794.output := by lin_cert using reduction20794.terms
theorem substitutionProof20794 : IsMapEvaluation generatorImages reduction20794.relations [0,8,1827] reduction20794.output := by lin_cert using reduction20794.terms
def map_71_254 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image21028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21028 : InImage map_71_254 image21028 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21028 : Bundle := named_bundle% "RealMapCertificates/relations/basis21028.json"
theorem reductionProof21028 : EqualModuloRelations reduction21028.relations reduction21028.input reduction21028.output := by lin_cert using reduction21028.terms
theorem substitutionProof21028 : IsMapEvaluation generatorImages reduction21028.relations [0,0,8,1828] reduction21028.output := by lin_cert using reduction21028.terms
def image21029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21029 : InImage map_71_254 image21029 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21029 : Bundle := named_bundle% "RealMapCertificates/relations/basis21029.json"
theorem reductionProof21029 : EqualModuloRelations reduction21029.relations reduction21029.input reduction21029.output := by lin_cert using reduction21029.terms
theorem substitutionProof21029 : IsMapEvaluation generatorImages reduction21029.relations [0,0,0,2375] reduction21029.output := by lin_cert using reduction21029.terms
def map_71_255 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21356 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21356 : InImage map_71_255 image21356 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21356 : Bundle := named_bundle% "RealMapCertificates/relations/basis21356.json"
theorem reductionProof21356 : EqualModuloRelations reduction21356.relations reduction21356.input reduction21356.output := by lin_cert using reduction21356.terms
theorem substitutionProof21356 : IsMapEvaluation generatorImages reduction21356.relations [8,8,8,8,8,701] reduction21356.output := by lin_cert using reduction21356.terms
def map_71_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21683 : InImage map_71_256 image21683 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21683 : Bundle := named_bundle% "RealMapCertificates/relations/basis21683.json"
theorem reductionProof21683 : EqualModuloRelations reduction21683.relations reduction21683.input reduction21683.output := by lin_cert using reduction21683.terms
theorem substitutionProof21683 : IsMapEvaluation generatorImages reduction21683.relations [0,8,16,1312] reduction21683.output := by lin_cert using reduction21683.terms
def map_71_257 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image21974 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21974 : InImage map_71_257 image21974 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21974 : Bundle := named_bundle% "RealMapCertificates/relations/basis21974.json"
theorem reductionProof21974 : EqualModuloRelations reduction21974.relations reduction21974.input reduction21974.output := by lin_cert using reduction21974.terms
theorem substitutionProof21974 : IsMapEvaluation generatorImages reduction21974.relations [0,0,8,16,1313] reduction21974.output := by lin_cert using reduction21974.terms
def map_71_258 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image22315 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22315 : InImage map_71_258 image22315 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22315 : Bundle := named_bundle% "RealMapCertificates/relations/basis22315.json"
theorem reductionProof22315 : EqualModuloRelations reduction22315.relations reduction22315.input reduction22315.output := by lin_cert using reduction22315.terms
theorem substitutionProof22315 : IsMapEvaluation generatorImages reduction22315.relations [8,8,8,8,8,8,554] reduction22315.output := by lin_cert using reduction22315.terms
def map_71_259 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image22689 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22689 : InImage map_71_259 image22689 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22689 : Bundle := named_bundle% "RealMapCertificates/relations/basis22689.json"
theorem reductionProof22689 : EqualModuloRelations reduction22689.relations reduction22689.input reduction22689.output := by lin_cert using reduction22689.terms
theorem substitutionProof22689 : IsMapEvaluation generatorImages reduction22689.relations [0,8,8,1587] reduction22689.output := by lin_cert using reduction22689.terms
def map_71_260 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image23001 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23001 : InImage map_71_260 image23001 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23001 : Bundle := named_bundle% "RealMapCertificates/relations/basis23001.json"
theorem reductionProof23001 : EqualModuloRelations reduction23001.relations reduction23001.input reduction23001.output := by lin_cert using reduction23001.terms
theorem substitutionProof23001 : IsMapEvaluation generatorImages reduction23001.relations [0,0,8,8,1588] reduction23001.output := by lin_cert using reduction23001.terms
def map_71_261 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image23426 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23426 : InImage map_71_261 image23426 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23426 : Bundle := named_bundle% "RealMapCertificates/relations/basis23426.json"
theorem reductionProof23426 : EqualModuloRelations reduction23426.relations reduction23426.input reduction23426.output := by lin_cert using reduction23426.terms
theorem substitutionProof23426 : IsMapEvaluation generatorImages reduction23426.relations [8,8,8,8,8,8,579] reduction23426.output := by lin_cert using reduction23426.terms
def image23427 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23427 : InImage map_71_261 image23427 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23427 : Bundle := named_bundle% "RealMapCertificates/relations/basis23427.json"
theorem reductionProof23427 : EqualModuloRelations reduction23427.relations reduction23427.input reduction23427.output := by lin_cert using reduction23427.terms
theorem substitutionProof23427 : IsMapEvaluation generatorImages reduction23427.relations [0,2790] reduction23427.output := by lin_cert using reduction23427.terms
def map_72_72 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image534 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation534 : InImage map_72_72 image534 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction534 : Bundle := named_bundle% "RealMapCertificates/relations/basis534.json"
theorem reductionProof534 : EqualModuloRelations reduction534.relations reduction534.input reduction534.output := by lin_cert using reduction534.terms
theorem substitutionProof534 : IsMapEvaluation generatorImages reduction534.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction534.output := by lin_cert using reduction534.terms
def map_72_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12267 : InImage map_72_215 image12267 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12267 : Bundle := named_bundle% "RealMapCertificates/relations/basis12267.json"
theorem reductionProof12267 : EqualModuloRelations reduction12267.relations reduction12267.input reduction12267.output := by lin_cert using reduction12267.terms
theorem substitutionProof12267 : IsMapEvaluation generatorImages reduction12267.relations [0,0,0,0,0,0,0,0,0,0,0,1253] reduction12267.output := by lin_cert using reduction12267.terms
def map_72_217 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12679 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12679 : InImage map_72_217 image12679 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12679 : Bundle := named_bundle% "RealMapCertificates/relations/basis12679.json"
theorem reductionProof12679 : EqualModuloRelations reduction12679.relations reduction12679.input reduction12679.output := by lin_cert using reduction12679.terms
theorem substitutionProof12679 : IsMapEvaluation generatorImages reduction12679.relations [1,1467] reduction12679.output := by lin_cert using reduction12679.terms
def map_72_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13579 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13579 : InImage map_72_222 image13579 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13579 : Bundle := named_bundle% "RealMapCertificates/relations/basis13579.json"
theorem reductionProof13579 : EqualModuloRelations reduction13579.relations reduction13579.input reduction13579.output := by lin_cert using reduction13579.terms
theorem substitutionProof13579 : IsMapEvaluation generatorImages reduction13579.relations [1585] reduction13579.output := by lin_cert using reduction13579.terms
def map_72_223 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13798 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13798 : InImage map_72_223 image13798 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13798 : Bundle := named_bundle% "RealMapCertificates/relations/basis13798.json"
theorem reductionProof13798 : EqualModuloRelations reduction13798.relations reduction13798.input reduction13798.output := by lin_cert using reduction13798.terms
theorem substitutionProof13798 : IsMapEvaluation generatorImages reduction13798.relations [0,1586] reduction13798.output := by lin_cert using reduction13798.terms
def map_72_225 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14151 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14151 : InImage map_72_225 image14151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14151 : Bundle := named_bundle% "RealMapCertificates/relations/basis14151.json"
theorem reductionProof14151 : EqualModuloRelations reduction14151.relations reduction14151.input reduction14151.output := by lin_cert using reduction14151.terms
theorem substitutionProof14151 : IsMapEvaluation generatorImages reduction14151.relations [1636] reduction14151.output := by lin_cert using reduction14151.terms
def map_72_226 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14354 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14354 : InImage map_72_226 image14354 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14354 : Bundle := named_bundle% "RealMapCertificates/relations/basis14354.json"
theorem reductionProof14354 : EqualModuloRelations reduction14354.relations reduction14354.input reduction14354.output := by lin_cert using reduction14354.terms
theorem substitutionProof14354 : IsMapEvaluation generatorImages reduction14354.relations [0,1637] reduction14354.output := by lin_cert using reduction14354.terms
def map_72_228 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14710 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14710 : InImage map_72_228 image14710 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14710 : Bundle := named_bundle% "RealMapCertificates/relations/basis14710.json"
theorem reductionProof14710 : EqualModuloRelations reduction14710.relations reduction14710.input reduction14710.output := by lin_cert using reduction14710.terms
theorem substitutionProof14710 : IsMapEvaluation generatorImages reduction14710.relations [8,1359] reduction14710.output := by lin_cert using reduction14710.terms
def map_72_229 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14952 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14952 : InImage map_72_229 image14952 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14952 : Bundle := named_bundle% "RealMapCertificates/relations/basis14952.json"
theorem reductionProof14952 : EqualModuloRelations reduction14952.relations reduction14952.input reduction14952.output := by lin_cert using reduction14952.terms
theorem substitutionProof14952 : IsMapEvaluation generatorImages reduction14952.relations [0,16,1140] reduction14952.output := by lin_cert using reduction14952.terms
def map_72_230 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15096 : InImage map_72_230 image15096 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15096 : Bundle := named_bundle% "RealMapCertificates/relations/basis15096.json"
theorem reductionProof15096 : EqualModuloRelations reduction15096.relations reduction15096.input reduction15096.output := by lin_cert using reduction15096.terms
theorem substitutionProof15096 : IsMapEvaluation generatorImages reduction15096.relations [0,0,17,1140] reduction15096.output := by lin_cert using reduction15096.terms
def map_72_231 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15328 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15328 : InImage map_72_231 image15328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15328 : Bundle := named_bundle% "RealMapCertificates/relations/basis15328.json"
theorem reductionProof15328 : EqualModuloRelations reduction15328.relations reduction15328.input reduction15328.output := by lin_cert using reduction15328.terms
theorem substitutionProof15328 : IsMapEvaluation generatorImages reduction15328.relations [8,1425] reduction15328.output := by lin_cert using reduction15328.terms
def image15329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15329 : InImage map_72_231 image15329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15329 : Bundle := named_bundle% "RealMapCertificates/relations/basis15329.json"
theorem reductionProof15329 : EqualModuloRelations reduction15329.relations reduction15329.input reduction15329.output := by lin_cert using reduction15329.terms
theorem substitutionProof15329 : IsMapEvaluation generatorImages reduction15329.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction15329.output := by lin_cert using reduction15329.terms
def map_72_232 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15569 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15569 : InImage map_72_232 image15569 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15569 : Bundle := named_bundle% "RealMapCertificates/relations/basis15569.json"
theorem reductionProof15569 : EqualModuloRelations reduction15569.relations reduction15569.input reduction15569.output := by lin_cert using reduction15569.terms
theorem substitutionProof15569 : IsMapEvaluation generatorImages reduction15569.relations [0,8,1426] reduction15569.output := by lin_cert using reduction15569.terms
def map_72_234 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15974 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15974 : InImage map_72_234 image15974 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15974 : Bundle := named_bundle% "RealMapCertificates/relations/basis15974.json"
theorem reductionProof15974 : EqualModuloRelations reduction15974.relations reduction15974.input reduction15974.output := by lin_cert using reduction15974.terms
theorem substitutionProof15974 : IsMapEvaluation generatorImages reduction15974.relations [8,8,1139] reduction15974.output := by lin_cert using reduction15974.terms
def map_72_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16234 : InImage map_72_235 image16234 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16234 : Bundle := named_bundle% "RealMapCertificates/relations/basis16234.json"
theorem reductionProof16234 : EqualModuloRelations reduction16234.relations reduction16234.input reduction16234.output := by lin_cert using reduction16234.terms
theorem substitutionProof16234 : IsMapEvaluation generatorImages reduction16234.relations [0,8,8,1140] reduction16234.output := by lin_cert using reduction16234.terms
def map_72_237 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image16643 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16643 : InImage map_72_237 image16643 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16643 : Bundle := named_bundle% "RealMapCertificates/relations/basis16643.json"
theorem reductionProof16643 : EqualModuloRelations reduction16643.relations reduction16643.input reduction16643.output := by lin_cert using reduction16643.terms
theorem substitutionProof16643 : IsMapEvaluation generatorImages reduction16643.relations [8,8,1202] reduction16643.output := by lin_cert using reduction16643.terms
def image16644 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16644 : InImage map_72_237 image16644 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16644 : Bundle := named_bundle% "RealMapCertificates/relations/basis16644.json"
theorem reductionProof16644 : EqualModuloRelations reduction16644.relations reduction16644.input reduction16644.output := by lin_cert using reduction16644.terms
theorem substitutionProof16644 : IsMapEvaluation generatorImages reduction16644.relations [0,0,0,0,0,0,1747] reduction16644.output := by lin_cert using reduction16644.terms
def map_72_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16894 : InImage map_72_238 image16894 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16894 : Bundle := named_bundle% "RealMapCertificates/relations/basis16894.json"
theorem reductionProof16894 : EqualModuloRelations reduction16894.relations reduction16894.input reduction16894.output := by lin_cert using reduction16894.terms
theorem substitutionProof16894 : IsMapEvaluation generatorImages reduction16894.relations [0,0,0,0,0,0,0,1748] reduction16894.output := by lin_cert using reduction16894.terms
def map_72_240 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17342 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17342 : InImage map_72_240 image17342 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17342 : Bundle := named_bundle% "RealMapCertificates/relations/basis17342.json"
theorem reductionProof17342 : EqualModuloRelations reduction17342.relations reduction17342.input reduction17342.output := by lin_cert using reduction17342.terms
theorem substitutionProof17342 : IsMapEvaluation generatorImages reduction17342.relations [8,8,8,951] reduction17342.output := by lin_cert using reduction17342.terms
def map_72_243 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18121 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18121 : InImage map_72_243 image18121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18121 : Bundle := named_bundle% "RealMapCertificates/relations/basis18121.json"
theorem reductionProof18121 : EqualModuloRelations reduction18121.relations reduction18121.input reduction18121.output := by lin_cert using reduction18121.terms
theorem substitutionProof18121 : IsMapEvaluation generatorImages reduction18121.relations [8,8,8,995] reduction18121.output := by lin_cert using reduction18121.terms
def map_72_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18866 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18866 : InImage map_72_246 image18866 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18866 : Bundle := named_bundle% "RealMapCertificates/relations/basis18866.json"
theorem reductionProof18866 : EqualModuloRelations reduction18866.relations reduction18866.input reduction18866.output := by lin_cert using reduction18866.terms
theorem substitutionProof18866 : IsMapEvaluation generatorImages reduction18866.relations [8,8,8,8,803] reduction18866.output := by lin_cert using reduction18866.terms
def map_72_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19184 : InImage map_72_247 image19184 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19184 : Bundle := named_bundle% "RealMapCertificates/relations/basis19184.json"
theorem reductionProof19184 : EqualModuloRelations reduction19184.relations reduction19184.input reduction19184.output := by lin_cert using reduction19184.terms
theorem substitutionProof19184 : IsMapEvaluation generatorImages reduction19184.relations [1,5,1747] reduction19184.output := by lin_cert using reduction19184.terms
def map_72_248 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19398 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19398 : InImage map_72_248 image19398 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19398 : Bundle := named_bundle% "RealMapCertificates/relations/basis19398.json"
theorem reductionProof19398 : EqualModuloRelations reduction19398.relations reduction19398.input reduction19398.output := by lin_cert using reduction19398.terms
theorem substitutionProof19398 : IsMapEvaluation generatorImages reduction19398.relations [0,0,2191] reduction19398.output := by lin_cert using reduction19398.terms
def map_72_249 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image19685 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19685 : InImage map_72_249 image19685 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19685 : Bundle := named_bundle% "RealMapCertificates/relations/basis19685.json"
theorem reductionProof19685 : EqualModuloRelations reduction19685.relations reduction19685.input reduction19685.output := by lin_cert using reduction19685.terms
theorem substitutionProof19685 : IsMapEvaluation generatorImages reduction19685.relations [8,8,8,8,851] reduction19685.output := by lin_cert using reduction19685.terms
def map_72_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20203 : InImage map_72_251 image20203 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20203 : Bundle := named_bundle% "RealMapCertificates/relations/basis20203.json"
theorem reductionProof20203 : EqualModuloRelations reduction20203.relations reduction20203.input reduction20203.output := by lin_cert using reduction20203.terms
theorem substitutionProof20203 : IsMapEvaluation generatorImages reduction20203.relations [0,0,8,1747] reduction20203.output := by lin_cert using reduction20203.terms
def map_72_252 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20481 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20481 : InImage map_72_252 image20481 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20481 : Bundle := named_bundle% "RealMapCertificates/relations/basis20481.json"
theorem reductionProof20481 : EqualModuloRelations reduction20481.relations reduction20481.input reduction20481.output := by lin_cert using reduction20481.terms
theorem substitutionProof20481 : IsMapEvaluation generatorImages reduction20481.relations [8,8,8,8,8,661] reduction20481.output := by lin_cert using reduction20481.terms
def map_72_254 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image21027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21027 : InImage map_72_254 image21027 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21027 : Bundle := named_bundle% "RealMapCertificates/relations/basis21027.json"
theorem reductionProof21027 : EqualModuloRelations reduction21027.relations reduction21027.input reduction21027.output := by lin_cert using reduction21027.terms
theorem substitutionProof21027 : IsMapEvaluation generatorImages reduction21027.relations [0,0,8,1827] reduction21027.output := by lin_cert using reduction21027.terms
def map_72_255 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image21355 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21355 : InImage map_72_255 image21355 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21355 : Bundle := named_bundle% "RealMapCertificates/relations/basis21355.json"
theorem reductionProof21355 : EqualModuloRelations reduction21355.relations reduction21355.input reduction21355.output := by lin_cert using reduction21355.terms
theorem substitutionProof21355 : IsMapEvaluation generatorImages reduction21355.relations [8,8,8,8,8,700] reduction21355.output := by lin_cert using reduction21355.terms
def map_72_257 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image21973 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21973 : InImage map_72_257 image21973 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21973 : Bundle := named_bundle% "RealMapCertificates/relations/basis21973.json"
theorem reductionProof21973 : EqualModuloRelations reduction21973.relations reduction21973.input reduction21973.output := by lin_cert using reduction21973.terms
theorem substitutionProof21973 : IsMapEvaluation generatorImages reduction21973.relations [0,0,8,16,1312] reduction21973.output := by lin_cert using reduction21973.terms
def map_72_258 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image22314 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22314 : InImage map_72_258 image22314 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22314 : Bundle := named_bundle% "RealMapCertificates/relations/basis22314.json"
theorem reductionProof22314 : EqualModuloRelations reduction22314.relations reduction22314.input reduction22314.output := by lin_cert using reduction22314.terms
theorem substitutionProof22314 : IsMapEvaluation generatorImages reduction22314.relations [8,8,8,8,8,8,553] reduction22314.output := by lin_cert using reduction22314.terms
def map_72_260 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image23000 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23000 : InImage map_72_260 image23000 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23000 : Bundle := named_bundle% "RealMapCertificates/relations/basis23000.json"
theorem reductionProof23000 : EqualModuloRelations reduction23000.relations reduction23000.input reduction23000.output := by lin_cert using reduction23000.terms
theorem substitutionProof23000 : IsMapEvaluation generatorImages reduction23000.relations [2789] reduction23000.output := by lin_cert using reduction23000.terms
def map_72_261 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image23424 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation23424 : InImage map_72_261 image23424 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23424 : Bundle := named_bundle% "RealMapCertificates/relations/basis23424.json"
theorem reductionProof23424 : EqualModuloRelations reduction23424.relations reduction23424.input reduction23424.output := by lin_cert using reduction23424.terms
theorem substitutionProof23424 : IsMapEvaluation generatorImages reduction23424.relations [17,1748] reduction23424.output := by lin_cert using reduction23424.terms
def image23425 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23425 : InImage map_72_261 image23425 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23425 : Bundle := named_bundle% "RealMapCertificates/relations/basis23425.json"
theorem reductionProof23425 : EqualModuloRelations reduction23425.relations reduction23425.input reduction23425.output := by lin_cert using reduction23425.terms
theorem substitutionProof23425 : IsMapEvaluation generatorImages reduction23425.relations [8,8,8,8,8,8,578] reduction23425.output := by lin_cert using reduction23425.terms
def map_73_73 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image564 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation564 : InImage map_73_73 image564 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction564 : Bundle := named_bundle% "RealMapCertificates/relations/basis564.json"
theorem reductionProof564 : EqualModuloRelations reduction564.relations reduction564.input reduction564.output := by lin_cert using reduction564.terms
theorem substitutionProof564 : IsMapEvaluation generatorImages reduction564.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction564.output := by lin_cert using reduction564.terms
def map_73_218 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12815 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12815 : InImage map_73_218 image12815 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12815 : Bundle := named_bundle% "RealMapCertificates/relations/basis12815.json"
theorem reductionProof12815 : EqualModuloRelations reduction12815.relations reduction12815.input reduction12815.output := by lin_cert using reduction12815.terms
theorem substitutionProof12815 : IsMapEvaluation generatorImages reduction12815.relations [1513] reduction12815.output := by lin_cert using reduction12815.terms
def map_73_220 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13234 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13234 : InImage map_73_220 image13234 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13234 : Bundle := named_bundle% "RealMapCertificates/relations/basis13234.json"
theorem reductionProof13234 : EqualModuloRelations reduction13234.relations reduction13234.input reduction13234.output := by lin_cert using reduction13234.terms
theorem substitutionProof13234 : IsMapEvaluation generatorImages reduction13234.relations [1550] reduction13234.output := by lin_cert using reduction13234.terms
def map_73_223 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13797 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13797 : InImage map_73_223 image13797 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13797 : Bundle := named_bundle% "RealMapCertificates/relations/basis13797.json"
theorem reductionProof13797 : EqualModuloRelations reduction13797.relations reduction13797.input reduction13797.output := by lin_cert using reduction13797.terms
theorem substitutionProof13797 : IsMapEvaluation generatorImages reduction13797.relations [0,1585] reduction13797.output := by lin_cert using reduction13797.terms
def map_73_224 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image13932 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13932 : InImage map_73_224 image13932 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13932 : Bundle := named_bundle% "RealMapCertificates/relations/basis13932.json"
theorem reductionProof13932 : EqualModuloRelations reduction13932.relations reduction13932.input reduction13932.output := by lin_cert using reduction13932.terms
theorem substitutionProof13932 : IsMapEvaluation generatorImages reduction13932.relations [1,1585] reduction13932.output := by lin_cert using reduction13932.terms
def image13933 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13933 : InImage map_73_224 image13933 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13933 : Bundle := named_bundle% "RealMapCertificates/relations/basis13933.json"
theorem reductionProof13933 : EqualModuloRelations reduction13933.relations reduction13933.input reduction13933.output := by lin_cert using reduction13933.terms
theorem substitutionProof13933 : IsMapEvaluation generatorImages reduction13933.relations [0,0,1586] reduction13933.output := by lin_cert using reduction13933.terms
def map_73_226 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14353 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14353 : InImage map_73_226 image14353 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14353 : Bundle := named_bundle% "RealMapCertificates/relations/basis14353.json"
theorem reductionProof14353 : EqualModuloRelations reduction14353.relations reduction14353.input reduction14353.output := by lin_cert using reduction14353.terms
theorem substitutionProof14353 : IsMapEvaluation generatorImages reduction14353.relations [0,1636] reduction14353.output := by lin_cert using reduction14353.terms
def map_73_227 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14506 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14506 : InImage map_73_227 image14506 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14506 : Bundle := named_bundle% "RealMapCertificates/relations/basis14506.json"
theorem reductionProof14506 : EqualModuloRelations reduction14506.relations reduction14506.input reduction14506.output := by lin_cert using reduction14506.terms
theorem substitutionProof14506 : IsMapEvaluation generatorImages reduction14506.relations [0,0,1637] reduction14506.output := by lin_cert using reduction14506.terms
def map_73_229 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14951 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14951 : InImage map_73_229 image14951 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14951 : Bundle := named_bundle% "RealMapCertificates/relations/basis14951.json"
theorem reductionProof14951 : EqualModuloRelations reduction14951.relations reduction14951.input reduction14951.output := by lin_cert using reduction14951.terms
theorem substitutionProof14951 : IsMapEvaluation generatorImages reduction14951.relations [0,8,1359] reduction14951.output := by lin_cert using reduction14951.terms
def map_73_230 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15095 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15095 : InImage map_73_230 image15095 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15095 : Bundle := named_bundle% "RealMapCertificates/relations/basis15095.json"
theorem reductionProof15095 : EqualModuloRelations reduction15095.relations reduction15095.input reduction15095.output := by lin_cert using reduction15095.terms
theorem substitutionProof15095 : IsMapEvaluation generatorImages reduction15095.relations [0,0,16,1140] reduction15095.output := by lin_cert using reduction15095.terms
def map_73_231 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15327 : InImage map_73_231 image15327 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15327 : Bundle := named_bundle% "RealMapCertificates/relations/basis15327.json"
theorem reductionProof15327 : EqualModuloRelations reduction15327.relations reduction15327.input reduction15327.output := by lin_cert using reduction15327.terms
theorem substitutionProof15327 : IsMapEvaluation generatorImages reduction15327.relations [0,0,0,17,1140] reduction15327.output := by lin_cert using reduction15327.terms
def map_73_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15567 : InImage map_73_232 image15567 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15567 : Bundle := named_bundle% "RealMapCertificates/relations/basis15567.json"
theorem reductionProof15567 : EqualModuloRelations reduction15567.relations reduction15567.input reduction15567.output := by lin_cert using reduction15567.terms
theorem substitutionProof15567 : IsMapEvaluation generatorImages reduction15567.relations [0,8,1425] reduction15567.output := by lin_cert using reduction15567.terms
def image15568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15568 : InImage map_73_232 image15568 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15568 : Bundle := named_bundle% "RealMapCertificates/relations/basis15568.json"
theorem reductionProof15568 : EqualModuloRelations reduction15568.relations reduction15568.input reduction15568.output := by lin_cert using reduction15568.terms
theorem substitutionProof15568 : IsMapEvaluation generatorImages reduction15568.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction15568.output := by lin_cert using reduction15568.terms
def map_73_233 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15747 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15747 : InImage map_73_233 image15747 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15747 : Bundle := named_bundle% "RealMapCertificates/relations/basis15747.json"
theorem reductionProof15747 : EqualModuloRelations reduction15747.relations reduction15747.input reduction15747.output := by lin_cert using reduction15747.terms
theorem substitutionProof15747 : IsMapEvaluation generatorImages reduction15747.relations [0,0,8,1426] reduction15747.output := by lin_cert using reduction15747.terms
def map_73_235 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16233 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16233 : InImage map_73_235 image16233 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16233 : Bundle := named_bundle% "RealMapCertificates/relations/basis16233.json"
theorem reductionProof16233 : EqualModuloRelations reduction16233.relations reduction16233.input reduction16233.output := by lin_cert using reduction16233.terms
theorem substitutionProof16233 : IsMapEvaluation generatorImages reduction16233.relations [0,8,8,1139] reduction16233.output := by lin_cert using reduction16233.terms
def map_73_236 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16411 : InImage map_73_236 image16411 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16411 : Bundle := named_bundle% "RealMapCertificates/relations/basis16411.json"
theorem reductionProof16411 : EqualModuloRelations reduction16411.relations reduction16411.input reduction16411.output := by lin_cert using reduction16411.terms
theorem substitutionProof16411 : IsMapEvaluation generatorImages reduction16411.relations [0,0,8,8,1140] reduction16411.output := by lin_cert using reduction16411.terms
def map_73_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16893 : InImage map_73_238 image16893 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16893 : Bundle := named_bundle% "RealMapCertificates/relations/basis16893.json"
theorem reductionProof16893 : EqualModuloRelations reduction16893.relations reduction16893.input reduction16893.output := by lin_cert using reduction16893.terms
theorem substitutionProof16893 : IsMapEvaluation generatorImages reduction16893.relations [0,0,0,0,0,0,0,1747] reduction16893.output := by lin_cert using reduction16893.terms
def map_73_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17100 : InImage map_73_239 image17100 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17100 : Bundle := named_bundle% "RealMapCertificates/relations/basis17100.json"
theorem reductionProof17100 : EqualModuloRelations reduction17100.relations reduction17100.input reduction17100.output := by lin_cert using reduction17100.terms
theorem substitutionProof17100 : IsMapEvaluation generatorImages reduction17100.relations [0,0,0,0,0,0,0,0,1748] reduction17100.output := by lin_cert using reduction17100.terms
def map_73_240 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17341 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17341 : InImage map_73_240 image17341 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17341 : Bundle := named_bundle% "RealMapCertificates/relations/basis17341.json"
theorem reductionProof17341 : EqualModuloRelations reduction17341.relations reduction17341.input reduction17341.output := by lin_cert using reduction17341.terms
theorem substitutionProof17341 : IsMapEvaluation generatorImages reduction17341.relations [1989] reduction17341.output := by lin_cert using reduction17341.terms
def map_73_243 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18120 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18120 : InImage map_73_243 image18120 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18120 : Bundle := named_bundle% "RealMapCertificates/relations/basis18120.json"
theorem reductionProof18120 : EqualModuloRelations reduction18120.relations reduction18120.input reduction18120.output := by lin_cert using reduction18120.terms
theorem substitutionProof18120 : IsMapEvaluation generatorImages reduction18120.relations [2088] reduction18120.output := by lin_cert using reduction18120.terms
def map_73_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18865 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18865 : InImage map_73_246 image18865 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18865 : Bundle := named_bundle% "RealMapCertificates/relations/basis18865.json"
theorem reductionProof18865 : EqualModuloRelations reduction18865.relations reduction18865.input reduction18865.output := by lin_cert using reduction18865.terms
theorem substitutionProof18865 : IsMapEvaluation generatorImages reduction18865.relations [8,1685] reduction18865.output := by lin_cert using reduction18865.terms
def map_73_249 : Matrix 7 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19683 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19683 : InImage map_73_249 image19683 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19683 : Bundle := named_bundle% "RealMapCertificates/relations/basis19683.json"
theorem reductionProof19683 : EqualModuloRelations reduction19683.relations reduction19683.input reduction19683.output := by lin_cert using reduction19683.terms
theorem substitutionProof19683 : IsMapEvaluation generatorImages reduction19683.relations [8,1746] reduction19683.output := by lin_cert using reduction19683.terms
def image19684 : Vec 7 := fun i => ([false,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19684 : InImage map_73_249 image19684 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19684 : Bundle := named_bundle% "RealMapCertificates/relations/basis19684.json"
theorem reductionProof19684 : EqualModuloRelations reduction19684.relations reduction19684.input reduction19684.output := by lin_cert using reduction19684.terms
theorem substitutionProof19684 : IsMapEvaluation generatorImages reduction19684.relations [0,0,0,2191] reduction19684.output := by lin_cert using reduction19684.terms
def map_73_252 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image20480 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20480 : InImage map_73_252 image20480 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20480 : Bundle := named_bundle% "RealMapCertificates/relations/basis20480.json"
theorem reductionProof20480 : EqualModuloRelations reduction20480.relations reduction20480.input reduction20480.output := by lin_cert using reduction20480.terms
theorem substitutionProof20480 : IsMapEvaluation generatorImages reduction20480.relations [8,8,1480] reduction20480.output := by lin_cert using reduction20480.terms
def map_73_255 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image21353 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21353 : InImage map_73_255 image21353 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21353 : Bundle := named_bundle% "RealMapCertificates/relations/basis21353.json"
theorem reductionProof21353 : EqualModuloRelations reduction21353.relations reduction21353.input reduction21353.output := by lin_cert using reduction21353.terms
theorem substitutionProof21353 : IsMapEvaluation generatorImages reduction21353.relations [2535] reduction21353.output := by lin_cert using reduction21353.terms
def image21354 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21354 : InImage map_73_255 image21354 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21354 : Bundle := named_bundle% "RealMapCertificates/relations/basis21354.json"
theorem reductionProof21354 : EqualModuloRelations reduction21354.relations reduction21354.input reduction21354.output := by lin_cert using reduction21354.terms
theorem substitutionProof21354 : IsMapEvaluation generatorImages reduction21354.relations [8,8,1533] reduction21354.output := by lin_cert using reduction21354.terms
def map_73_258 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image22312 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22312 : InImage map_73_258 image22312 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22312 : Bundle := named_bundle% "RealMapCertificates/relations/basis22312.json"
theorem reductionProof22312 : EqualModuloRelations reduction22312.relations reduction22312.input reduction22312.output := by lin_cert using reduction22312.terms
theorem substitutionProof22312 : IsMapEvaluation generatorImages reduction22312.relations [2672] reduction22312.output := by lin_cert using reduction22312.terms
def image22313 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22313 : InImage map_73_258 image22313 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22313 : Bundle := named_bundle% "RealMapCertificates/relations/basis22313.json"
theorem reductionProof22313 : EqualModuloRelations reduction22313.relations reduction22313.input reduction22313.output := by lin_cert using reduction22313.terms
theorem substitutionProof22313 : IsMapEvaluation generatorImages reduction22313.relations [8,8,8,1254] reduction22313.output := by lin_cert using reduction22313.terms
def map_73_261 : Matrix 7 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image23421 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23421 : InImage map_73_261 image23421 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23421 : Bundle := named_bundle% "RealMapCertificates/relations/basis23421.json"
theorem reductionProof23421 : EqualModuloRelations reduction23421.relations reduction23421.input reduction23421.output := by lin_cert using reduction23421.terms
theorem substitutionProof23421 : IsMapEvaluation generatorImages reduction23421.relations [16,1748] reduction23421.output := by lin_cert using reduction23421.terms
def image23422 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23422 : InImage map_73_261 image23422 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23422 : Bundle := named_bundle% "RealMapCertificates/relations/basis23422.json"
theorem reductionProof23422 : EqualModuloRelations reduction23422.relations reduction23422.input reduction23422.output := by lin_cert using reduction23422.terms
theorem substitutionProof23422 : IsMapEvaluation generatorImages reduction23422.relations [8,8,8,1311] reduction23422.output := by lin_cert using reduction23422.terms
def image23423 : Vec 7 := fun i => ([false,true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23423 : InImage map_73_261 image23423 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23423 : Bundle := named_bundle% "RealMapCertificates/relations/basis23423.json"
theorem reductionProof23423 : EqualModuloRelations reduction23423.relations reduction23423.input reduction23423.output := by lin_cert using reduction23423.terms
theorem substitutionProof23423 : IsMapEvaluation generatorImages reduction23423.relations [0,2789] reduction23423.output := by lin_cert using reduction23423.terms
def map_74_74 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image583 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation583 : InImage map_74_74 image583 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction583 : Bundle := named_bundle% "RealMapCertificates/relations/basis583.json"
theorem reductionProof583 : EqualModuloRelations reduction583.relations reduction583.input reduction583.output := by lin_cert using reduction583.terms
theorem substitutionProof583 : IsMapEvaluation generatorImages reduction583.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction583.output := by lin_cert using reduction583.terms
def map_74_220 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13233 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13233 : InImage map_74_220 image13233 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13233 : Bundle := named_bundle% "RealMapCertificates/relations/basis13233.json"
theorem reductionProof13233 : EqualModuloRelations reduction13233.relations reduction13233.input reduction13233.output := by lin_cert using reduction13233.terms
theorem substitutionProof13233 : IsMapEvaluation generatorImages reduction13233.relations [1,1513] reduction13233.output := by lin_cert using reduction13233.terms
def map_74_221 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13385 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13385 : InImage map_74_221 image13385 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13385 : Bundle := named_bundle% "RealMapCertificates/relations/basis13385.json"
theorem reductionProof13385 : EqualModuloRelations reduction13385.relations reduction13385.input reduction13385.output := by lin_cert using reduction13385.terms
theorem substitutionProof13385 : IsMapEvaluation generatorImages reduction13385.relations [0,1550] reduction13385.output := by lin_cert using reduction13385.terms
def map_74_224 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13931 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13931 : InImage map_74_224 image13931 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13931 : Bundle := named_bundle% "RealMapCertificates/relations/basis13931.json"
theorem reductionProof13931 : EqualModuloRelations reduction13931.relations reduction13931.input reduction13931.output := by lin_cert using reduction13931.terms
theorem substitutionProof13931 : IsMapEvaluation generatorImages reduction13931.relations [0,0,1585] reduction13931.output := by lin_cert using reduction13931.terms
def map_74_225 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14150 : InImage map_74_225 image14150 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14150 : Bundle := named_bundle% "RealMapCertificates/relations/basis14150.json"
theorem reductionProof14150 : EqualModuloRelations reduction14150.relations reduction14150.input reduction14150.output := by lin_cert using reduction14150.terms
theorem substitutionProof14150 : IsMapEvaluation generatorImages reduction14150.relations [0,0,0,1586] reduction14150.output := by lin_cert using reduction14150.terms
def map_74_226 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14352 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14352 : InImage map_74_226 image14352 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14352 : Bundle := named_bundle% "RealMapCertificates/relations/basis14352.json"
theorem reductionProof14352 : EqualModuloRelations reduction14352.relations reduction14352.input reduction14352.output := by lin_cert using reduction14352.terms
theorem substitutionProof14352 : IsMapEvaluation generatorImages reduction14352.relations [1,1,1585] reduction14352.output := by lin_cert using reduction14352.terms
def map_74_227 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14505 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14505 : InImage map_74_227 image14505 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14505 : Bundle := named_bundle% "RealMapCertificates/relations/basis14505.json"
theorem reductionProof14505 : EqualModuloRelations reduction14505.relations reduction14505.input reduction14505.output := by lin_cert using reduction14505.terms
theorem substitutionProof14505 : IsMapEvaluation generatorImages reduction14505.relations [0,0,1636] reduction14505.output := by lin_cert using reduction14505.terms
def map_74_230 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image15094 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15094 : InImage map_74_230 image15094 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15094 : Bundle := named_bundle% "RealMapCertificates/relations/basis15094.json"
theorem reductionProof15094 : EqualModuloRelations reduction15094.relations reduction15094.input reduction15094.output := by lin_cert using reduction15094.terms
theorem substitutionProof15094 : IsMapEvaluation generatorImages reduction15094.relations [0,0,8,1359] reduction15094.output := by lin_cert using reduction15094.terms
def map_74_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15566 : InImage map_74_232 image15566 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15566 : Bundle := named_bundle% "RealMapCertificates/relations/basis15566.json"
theorem reductionProof15566 : EqualModuloRelations reduction15566.relations reduction15566.input reduction15566.output := by lin_cert using reduction15566.terms
theorem substitutionProof15566 : IsMapEvaluation generatorImages reduction15566.relations [0,0,0,0,17,1140] reduction15566.output := by lin_cert using reduction15566.terms
def map_74_233 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15745 : InImage map_74_233 image15745 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15745 : Bundle := named_bundle% "RealMapCertificates/relations/basis15745.json"
theorem reductionProof15745 : EqualModuloRelations reduction15745.relations reduction15745.input reduction15745.output := by lin_cert using reduction15745.terms
theorem substitutionProof15745 : IsMapEvaluation generatorImages reduction15745.relations [0,0,8,1425] reduction15745.output := by lin_cert using reduction15745.terms
def image15746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15746 : InImage map_74_233 image15746 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15746 : Bundle := named_bundle% "RealMapCertificates/relations/basis15746.json"
theorem reductionProof15746 : EqualModuloRelations reduction15746.relations reduction15746.input reduction15746.output := by lin_cert using reduction15746.terms
theorem substitutionProof15746 : IsMapEvaluation generatorImages reduction15746.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction15746.output := by lin_cert using reduction15746.terms
def map_74_236 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16410 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16410 : InImage map_74_236 image16410 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16410 : Bundle := named_bundle% "RealMapCertificates/relations/basis16410.json"
theorem reductionProof16410 : EqualModuloRelations reduction16410.relations reduction16410.input reduction16410.output := by lin_cert using reduction16410.terms
theorem substitutionProof16410 : IsMapEvaluation generatorImages reduction16410.relations [0,0,8,8,1139] reduction16410.output := by lin_cert using reduction16410.terms
def map_74_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17099 : InImage map_74_239 image17099 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17099 : Bundle := named_bundle% "RealMapCertificates/relations/basis17099.json"
theorem reductionProof17099 : EqualModuloRelations reduction17099.relations reduction17099.input reduction17099.output := by lin_cert using reduction17099.terms
theorem substitutionProof17099 : IsMapEvaluation generatorImages reduction17099.relations [0,0,0,0,0,0,0,0,1747] reduction17099.output := by lin_cert using reduction17099.terms
def map_74_242 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17858 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17858 : InImage map_74_242 image17858 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17858 : Bundle := named_bundle% "RealMapCertificates/relations/basis17858.json"
theorem reductionProof17858 : EqualModuloRelations reduction17858.relations reduction17858.input reduction17858.output := by lin_cert using reduction17858.terms
theorem substitutionProof17858 : IsMapEvaluation generatorImages reduction17858.relations [1,1989] reduction17858.output := by lin_cert using reduction17858.terms
def map_74_243 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18119 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18119 : InImage map_74_243 image18119 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18119 : Bundle := named_bundle% "RealMapCertificates/relations/basis18119.json"
theorem reductionProof18119 : EqualModuloRelations reduction18119.relations reduction18119.input reduction18119.output := by lin_cert using reduction18119.terms
theorem substitutionProof18119 : IsMapEvaluation generatorImages reduction18119.relations [17,1426] reduction18119.output := by lin_cert using reduction18119.terms
end RealMapCertificates
