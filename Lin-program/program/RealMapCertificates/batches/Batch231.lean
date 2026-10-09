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
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 951 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 995 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 996 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1139 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1140 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1202 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1203 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1359 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1397 => []
  | 1425 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1426 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1550 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1585 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1586 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1636 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1637 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1678 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1733 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1747 => []
  | 1770 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1826 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1899 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1900 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1961 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 1989 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 2088 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 2400 => []
  | 2401 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 2533 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 2534 => []
  | 2535 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 2671 => []
  | 2672 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]]
  | _ => []
def map_74_246 : Matrix 6 1 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18864 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18864 : InImage map_74_246 image18864 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18864 : Bundle := named_bundle% "RealMapCertificates/relations/basis18864.json"
theorem reductionProof18864 : EqualModuloRelations reduction18864.relations reduction18864.input reduction18864.output := by lin_cert using reduction18864.terms
theorem substitutionProof18864 : IsMapEvaluation generatorImages reduction18864.relations [8,17,1140] reduction18864.output := by lin_cert using reduction18864.terms
def map_74_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19682 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19682 : InImage map_74_249 image19682 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19682 : Bundle := named_bundle% "RealMapCertificates/relations/basis19682.json"
theorem reductionProof19682 : EqualModuloRelations reduction19682.relations reduction19682.input reduction19682.output := by lin_cert using reduction19682.terms
theorem substitutionProof19682 : IsMapEvaluation generatorImages reduction19682.relations [8,17,1203] reduction19682.output := by lin_cert using reduction19682.terms
def map_74_252 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image20479 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20479 : InImage map_74_252 image20479 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20479 : Bundle := named_bundle% "RealMapCertificates/relations/basis20479.json"
theorem reductionProof20479 : EqualModuloRelations reduction20479.relations reduction20479.input reduction20479.output := by lin_cert using reduction20479.terms
theorem substitutionProof20479 : IsMapEvaluation generatorImages reduction20479.relations [8,16,17,804] reduction20479.output := by lin_cert using reduction20479.terms
def map_74_255 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21351 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21351 : InImage map_74_255 image21351 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21351 : Bundle := named_bundle% "RealMapCertificates/relations/basis21351.json"
theorem reductionProof21351 : EqualModuloRelations reduction21351.relations reduction21351.input reduction21351.output := by lin_cert using reduction21351.terms
theorem substitutionProof21351 : IsMapEvaluation generatorImages reduction21351.relations [2534] reduction21351.output := by lin_cert using reduction21351.terms
def image21352 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21352 : InImage map_74_255 image21352 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21352 : Bundle := named_bundle% "RealMapCertificates/relations/basis21352.json"
theorem reductionProof21352 : EqualModuloRelations reduction21352.relations reduction21352.input reduction21352.output := by lin_cert using reduction21352.terms
theorem substitutionProof21352 : IsMapEvaluation generatorImages reduction21352.relations [8,8,17,996] reduction21352.output := by lin_cert using reduction21352.terms
def map_74_256 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21682 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21682 : InImage map_74_256 image21682 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21682 : Bundle := named_bundle% "RealMapCertificates/relations/basis21682.json"
theorem reductionProof21682 : EqualModuloRelations reduction21682.relations reduction21682.input reduction21682.output := by lin_cert using reduction21682.terms
theorem substitutionProof21682 : IsMapEvaluation generatorImages reduction21682.relations [0,2535] reduction21682.output := by lin_cert using reduction21682.terms
def map_74_258 : Matrix 6 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image22310 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22310 : InImage map_74_258 image22310 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22310 : Bundle := named_bundle% "RealMapCertificates/relations/basis22310.json"
theorem reductionProof22310 : EqualModuloRelations reduction22310.relations reduction22310.input reduction22310.output := by lin_cert using reduction22310.terms
theorem substitutionProof22310 : IsMapEvaluation generatorImages reduction22310.relations [2671] reduction22310.output := by lin_cert using reduction22310.terms
def image22311 : Vec 6 := fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22311 : InImage map_74_258 image22311 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22311 : Bundle := named_bundle% "RealMapCertificates/relations/basis22311.json"
theorem reductionProof22311 : EqualModuloRelations reduction22311.relations reduction22311.input reduction22311.output := by lin_cert using reduction22311.terms
theorem substitutionProof22311 : IsMapEvaluation generatorImages reduction22311.relations [8,8,8,17,804] reduction22311.output := by lin_cert using reduction22311.terms
def map_74_259 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22688 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22688 : InImage map_74_259 image22688 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22688 : Bundle := named_bundle% "RealMapCertificates/relations/basis22688.json"
theorem reductionProof22688 : EqualModuloRelations reduction22688.relations reduction22688.input reduction22688.output := by lin_cert using reduction22688.terms
theorem substitutionProof22688 : IsMapEvaluation generatorImages reduction22688.relations [0,2672] reduction22688.output := by lin_cert using reduction22688.terms
def map_74_261 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image23419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23419 : InImage map_74_261 image23419 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23419 : Bundle := named_bundle% "RealMapCertificates/relations/basis23419.json"
theorem reductionProof23419 : EqualModuloRelations reduction23419.relations reduction23419.input reduction23419.output := by lin_cert using reduction23419.terms
theorem substitutionProof23419 : IsMapEvaluation generatorImages reduction23419.relations [16,1747] reduction23419.output := by lin_cert using reduction23419.terms
def image23420 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23420 : InImage map_74_261 image23420 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23420 : Bundle := named_bundle% "RealMapCertificates/relations/basis23420.json"
theorem reductionProof23420 : EqualModuloRelations reduction23420.relations reduction23420.input reduction23420.output := by lin_cert using reduction23420.terms
theorem substitutionProof23420 : IsMapEvaluation generatorImages reduction23420.relations [8,8,8,17,852] reduction23420.output := by lin_cert using reduction23420.terms
def map_75_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image606 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation606 : InImage map_75_75 image606 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction606 : Bundle := named_bundle% "RealMapCertificates/relations/basis606.json"
theorem reductionProof606 : EqualModuloRelations reduction606.relations reduction606.input reduction606.output := by lin_cert using reduction606.terms
theorem substitutionProof606 : IsMapEvaluation generatorImages reduction606.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction606.output := by lin_cert using reduction606.terms
def map_75_222 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13578 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13578 : InImage map_75_222 image13578 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13578 : Bundle := named_bundle% "RealMapCertificates/relations/basis13578.json"
theorem reductionProof13578 : EqualModuloRelations reduction13578.relations reduction13578.input reduction13578.output := by lin_cert using reduction13578.terms
theorem substitutionProof13578 : IsMapEvaluation generatorImages reduction13578.relations [0,0,1550] reduction13578.output := by lin_cert using reduction13578.terms
def map_75_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14351 : InImage map_75_226 image14351 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14351 : Bundle := named_bundle% "RealMapCertificates/relations/basis14351.json"
theorem reductionProof14351 : EqualModuloRelations reduction14351.relations reduction14351.input reduction14351.output := by lin_cert using reduction14351.terms
theorem substitutionProof14351 : IsMapEvaluation generatorImages reduction14351.relations [0,0,0,0,1586] reduction14351.output := by lin_cert using reduction14351.terms
def map_75_227 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image14504 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation14504 : InImage map_75_227 image14504 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14504 : Bundle := named_bundle% "RealMapCertificates/relations/basis14504.json"
theorem reductionProof14504 : EqualModuloRelations reduction14504.relations reduction14504.input reduction14504.output := by lin_cert using reduction14504.terms
theorem substitutionProof14504 : IsMapEvaluation generatorImages reduction14504.relations [1678] reduction14504.output := by lin_cert using reduction14504.terms
def map_75_228 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14709 : InImage map_75_228 image14709 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14709 : Bundle := named_bundle% "RealMapCertificates/relations/basis14709.json"
theorem reductionProof14709 : EqualModuloRelations reduction14709.relations reduction14709.input reduction14709.output := by lin_cert using reduction14709.terms
theorem substitutionProof14709 : IsMapEvaluation generatorImages reduction14709.relations [0,0,0,1636] reduction14709.output := by lin_cert using reduction14709.terms
def map_75_233 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15744 : InImage map_75_233 image15744 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15744 : Bundle := named_bundle% "RealMapCertificates/relations/basis15744.json"
theorem reductionProof15744 : EqualModuloRelations reduction15744.relations reduction15744.input reduction15744.output := by lin_cert using reduction15744.terms
theorem substitutionProof15744 : IsMapEvaluation generatorImages reduction15744.relations [0,0,0,0,0,17,1140] reduction15744.output := by lin_cert using reduction15744.terms
def map_75_234 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image15973 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15973 : InImage map_75_234 image15973 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15973 : Bundle := named_bundle% "RealMapCertificates/relations/basis15973.json"
theorem reductionProof15973 : EqualModuloRelations reduction15973.relations reduction15973.input reduction15973.output := by lin_cert using reduction15973.terms
theorem substitutionProof15973 : IsMapEvaluation generatorImages reduction15973.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction15973.output := by lin_cert using reduction15973.terms
def map_75_237 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16642 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16642 : InImage map_75_237 image16642 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16642 : Bundle := named_bundle% "RealMapCertificates/relations/basis16642.json"
theorem reductionProof16642 : EqualModuloRelations reduction16642.relations reduction16642.input reduction16642.output := by lin_cert using reduction16642.terms
theorem substitutionProof16642 : IsMapEvaluation generatorImages reduction16642.relations [1900] reduction16642.output := by lin_cert using reduction16642.terms
def map_75_240 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17340 : InImage map_75_240 image17340 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17340 : Bundle := named_bundle% "RealMapCertificates/relations/basis17340.json"
theorem reductionProof17340 : EqualModuloRelations reduction17340.relations reduction17340.input reduction17340.output := by lin_cert using reduction17340.terms
theorem substitutionProof17340 : IsMapEvaluation generatorImages reduction17340.relations [8,1586] reduction17340.output := by lin_cert using reduction17340.terms
def map_75_243 : Matrix 8 1 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18118 : Vec 8 := fun i => ([false,true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18118 : InImage map_75_243 image18118 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18118 : Bundle := named_bundle% "RealMapCertificates/relations/basis18118.json"
theorem reductionProof18118 : EqualModuloRelations reduction18118.relations reduction18118.input reduction18118.output := by lin_cert using reduction18118.terms
theorem substitutionProof18118 : IsMapEvaluation generatorImages reduction18118.relations [8,1637] reduction18118.output := by lin_cert using reduction18118.terms
def map_75_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18392 : InImage map_75_244 image18392 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18392 : Bundle := named_bundle% "RealMapCertificates/relations/basis18392.json"
theorem reductionProof18392 : EqualModuloRelations reduction18392.relations reduction18392.input reduction18392.output := by lin_cert using reduction18392.terms
theorem substitutionProof18392 : IsMapEvaluation generatorImages reduction18392.relations [0,17,1426] reduction18392.output := by lin_cert using reduction18392.terms
def map_75_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18863 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18863 : InImage map_75_246 image18863 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18863 : Bundle := named_bundle% "RealMapCertificates/relations/basis18863.json"
theorem reductionProof18863 : EqualModuloRelations reduction18863.relations reduction18863.input reduction18863.output := by lin_cert using reduction18863.terms
theorem substitutionProof18863 : IsMapEvaluation generatorImages reduction18863.relations [8,16,1140] reduction18863.output := by lin_cert using reduction18863.terms
def map_75_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19681 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19681 : InImage map_75_249 image19681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19681 : Bundle := named_bundle% "RealMapCertificates/relations/basis19681.json"
theorem reductionProof19681 : EqualModuloRelations reduction19681.relations reduction19681.input reduction19681.output := by lin_cert using reduction19681.terms
theorem substitutionProof19681 : IsMapEvaluation generatorImages reduction19681.relations [8,8,1426] reduction19681.output := by lin_cert using reduction19681.terms
def map_75_252 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20478 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20478 : InImage map_75_252 image20478 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20478 : Bundle := named_bundle% "RealMapCertificates/relations/basis20478.json"
theorem reductionProof20478 : EqualModuloRelations reduction20478.relations reduction20478.input reduction20478.output := by lin_cert using reduction20478.terms
theorem substitutionProof20478 : IsMapEvaluation generatorImages reduction20478.relations [8,8,8,1140] reduction20478.output := by lin_cert using reduction20478.terms
def map_75_255 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21350 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21350 : InImage map_75_255 image21350 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21350 : Bundle := named_bundle% "RealMapCertificates/relations/basis21350.json"
theorem reductionProof21350 : EqualModuloRelations reduction21350.relations reduction21350.input reduction21350.output := by lin_cert using reduction21350.terms
theorem substitutionProof21350 : IsMapEvaluation generatorImages reduction21350.relations [8,8,8,1203] reduction21350.output := by lin_cert using reduction21350.terms
def map_75_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21681 : InImage map_75_256 image21681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21681 : Bundle := named_bundle% "RealMapCertificates/relations/basis21681.json"
theorem reductionProof21681 : EqualModuloRelations reduction21681.relations reduction21681.input reduction21681.output := by lin_cert using reduction21681.terms
theorem substitutionProof21681 : IsMapEvaluation generatorImages reduction21681.relations [0,2534] reduction21681.output := by lin_cert using reduction21681.terms
def map_75_257 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21971 : InImage map_75_257 image21971 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21971 : Bundle := named_bundle% "RealMapCertificates/relations/basis21971.json"
theorem reductionProof21971 : EqualModuloRelations reduction21971.relations reduction21971.input reduction21971.output := by lin_cert using reduction21971.terms
theorem substitutionProof21971 : IsMapEvaluation generatorImages reduction21971.relations [1,2534] reduction21971.output := by lin_cert using reduction21971.terms
def image21972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21972 : InImage map_75_257 image21972 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21972 : Bundle := named_bundle% "RealMapCertificates/relations/basis21972.json"
theorem reductionProof21972 : EqualModuloRelations reduction21972.relations reduction21972.input reduction21972.output := by lin_cert using reduction21972.terms
theorem substitutionProof21972 : IsMapEvaluation generatorImages reduction21972.relations [0,0,2535] reduction21972.output := by lin_cert using reduction21972.terms
def map_75_258 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22309 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22309 : InImage map_75_258 image22309 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22309 : Bundle := named_bundle% "RealMapCertificates/relations/basis22309.json"
theorem reductionProof22309 : EqualModuloRelations reduction22309.relations reduction22309.input reduction22309.output := by lin_cert using reduction22309.terms
theorem substitutionProof22309 : IsMapEvaluation generatorImages reduction22309.relations [8,8,8,16,804] reduction22309.output := by lin_cert using reduction22309.terms
def map_75_259 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image22687 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22687 : InImage map_75_259 image22687 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22687 : Bundle := named_bundle% "RealMapCertificates/relations/basis22687.json"
theorem reductionProof22687 : EqualModuloRelations reduction22687.relations reduction22687.input reduction22687.output := by lin_cert using reduction22687.terms
theorem substitutionProof22687 : IsMapEvaluation generatorImages reduction22687.relations [0,2671] reduction22687.output := by lin_cert using reduction22687.terms
def map_75_260 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22999 : InImage map_75_260 image22999 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22999 : Bundle := named_bundle% "RealMapCertificates/relations/basis22999.json"
theorem reductionProof22999 : EqualModuloRelations reduction22999.relations reduction22999.input reduction22999.output := by lin_cert using reduction22999.terms
theorem substitutionProof22999 : IsMapEvaluation generatorImages reduction22999.relations [0,0,2672] reduction22999.output := by lin_cert using reduction22999.terms
def map_75_261 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23418 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23418 : InImage map_75_261 image23418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23418 : Bundle := named_bundle% "RealMapCertificates/relations/basis23418.json"
theorem reductionProof23418 : EqualModuloRelations reduction23418.relations reduction23418.input reduction23418.output := by lin_cert using reduction23418.terms
theorem substitutionProof23418 : IsMapEvaluation generatorImages reduction23418.relations [8,8,8,8,996] reduction23418.output := by lin_cert using reduction23418.terms
def map_76_76 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image626 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation626 : InImage map_76_76 image626 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction626 : Bundle := named_bundle% "RealMapCertificates/relations/basis626.json"
theorem reductionProof626 : EqualModuloRelations reduction626.relations reduction626.input reduction626.output := by lin_cert using reduction626.terms
theorem substitutionProof626 : IsMapEvaluation generatorImages reduction626.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction626.output := by lin_cert using reduction626.terms
def map_76_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14503 : InImage map_76_227 image14503 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14503 : Bundle := named_bundle% "RealMapCertificates/relations/basis14503.json"
theorem reductionProof14503 : EqualModuloRelations reduction14503.relations reduction14503.input reduction14503.output := by lin_cert using reduction14503.terms
theorem substitutionProof14503 : IsMapEvaluation generatorImages reduction14503.relations [0,0,0,0,0,1586] reduction14503.output := by lin_cert using reduction14503.terms
def map_76_229 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14950 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14950 : InImage map_76_229 image14950 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14950 : Bundle := named_bundle% "RealMapCertificates/relations/basis14950.json"
theorem reductionProof14950 : EqualModuloRelations reduction14950.relations reduction14950.input reduction14950.output := by lin_cert using reduction14950.terms
theorem substitutionProof14950 : IsMapEvaluation generatorImages reduction14950.relations [1,1678] reduction14950.output := by lin_cert using reduction14950.terms
def map_76_234 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15972 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15972 : InImage map_76_234 image15972 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15972 : Bundle := named_bundle% "RealMapCertificates/relations/basis15972.json"
theorem reductionProof15972 : EqualModuloRelations reduction15972.relations reduction15972.input reduction15972.output := by lin_cert using reduction15972.terms
theorem substitutionProof15972 : IsMapEvaluation generatorImages reduction15972.relations [1826] reduction15972.output := by lin_cert using reduction15972.terms
def map_76_235 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16232 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16232 : InImage map_76_235 image16232 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16232 : Bundle := named_bundle% "RealMapCertificates/relations/basis16232.json"
theorem reductionProof16232 : EqualModuloRelations reduction16232.relations reduction16232.input reduction16232.output := by lin_cert using reduction16232.terms
theorem substitutionProof16232 : IsMapEvaluation generatorImages reduction16232.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction16232.output := by lin_cert using reduction16232.terms
def map_76_237 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16641 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16641 : InImage map_76_237 image16641 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16641 : Bundle := named_bundle% "RealMapCertificates/relations/basis16641.json"
theorem reductionProof16641 : EqualModuloRelations reduction16641.relations reduction16641.input reduction16641.output := by lin_cert using reduction16641.terms
theorem substitutionProof16641 : IsMapEvaluation generatorImages reduction16641.relations [1899] reduction16641.output := by lin_cert using reduction16641.terms
def map_76_238 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16892 : InImage map_76_238 image16892 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16892 : Bundle := named_bundle% "RealMapCertificates/relations/basis16892.json"
theorem reductionProof16892 : EqualModuloRelations reduction16892.relations reduction16892.input reduction16892.output := by lin_cert using reduction16892.terms
theorem substitutionProof16892 : IsMapEvaluation generatorImages reduction16892.relations [0,1900] reduction16892.output := by lin_cert using reduction16892.terms
def map_76_240 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17339 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17339 : InImage map_76_240 image17339 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17339 : Bundle := named_bundle% "RealMapCertificates/relations/basis17339.json"
theorem reductionProof17339 : EqualModuloRelations reduction17339.relations reduction17339.input reduction17339.output := by lin_cert using reduction17339.terms
theorem substitutionProof17339 : IsMapEvaluation generatorImages reduction17339.relations [8,1585] reduction17339.output := by lin_cert using reduction17339.terms
def map_76_241 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17657 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17657 : InImage map_76_241 image17657 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17657 : Bundle := named_bundle% "RealMapCertificates/relations/basis17657.json"
theorem reductionProof17657 : EqualModuloRelations reduction17657.relations reduction17657.input reduction17657.output := by lin_cert using reduction17657.terms
theorem substitutionProof17657 : IsMapEvaluation generatorImages reduction17657.relations [0,8,1586] reduction17657.output := by lin_cert using reduction17657.terms
def map_76_243 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18117 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18117 : InImage map_76_243 image18117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18117 : Bundle := named_bundle% "RealMapCertificates/relations/basis18117.json"
theorem reductionProof18117 : EqualModuloRelations reduction18117.relations reduction18117.input reduction18117.output := by lin_cert using reduction18117.terms
theorem substitutionProof18117 : IsMapEvaluation generatorImages reduction18117.relations [8,1636] reduction18117.output := by lin_cert using reduction18117.terms
def map_76_244 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18391 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18391 : InImage map_76_244 image18391 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18391 : Bundle := named_bundle% "RealMapCertificates/relations/basis18391.json"
theorem reductionProof18391 : EqualModuloRelations reduction18391.relations reduction18391.input reduction18391.output := by lin_cert using reduction18391.terms
theorem substitutionProof18391 : IsMapEvaluation generatorImages reduction18391.relations [0,8,1637] reduction18391.output := by lin_cert using reduction18391.terms
def map_76_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18862 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18862 : InImage map_76_246 image18862 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18862 : Bundle := named_bundle% "RealMapCertificates/relations/basis18862.json"
theorem reductionProof18862 : EqualModuloRelations reduction18862.relations reduction18862.input reduction18862.output := by lin_cert using reduction18862.terms
theorem substitutionProof18862 : IsMapEvaluation generatorImages reduction18862.relations [8,8,1359] reduction18862.output := by lin_cert using reduction18862.terms
def map_76_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19183 : InImage map_76_247 image19183 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19183 : Bundle := named_bundle% "RealMapCertificates/relations/basis19183.json"
theorem reductionProof19183 : EqualModuloRelations reduction19183.relations reduction19183.input reduction19183.output := by lin_cert using reduction19183.terms
theorem substitutionProof19183 : IsMapEvaluation generatorImages reduction19183.relations [0,8,16,1140] reduction19183.output := by lin_cert using reduction19183.terms
def map_76_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19680 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19680 : InImage map_76_249 image19680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19680 : Bundle := named_bundle% "RealMapCertificates/relations/basis19680.json"
theorem reductionProof19680 : EqualModuloRelations reduction19680.relations reduction19680.input reduction19680.output := by lin_cert using reduction19680.terms
theorem substitutionProof19680 : IsMapEvaluation generatorImages reduction19680.relations [8,8,1425] reduction19680.output := by lin_cert using reduction19680.terms
def map_76_252 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20477 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20477 : InImage map_76_252 image20477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20477 : Bundle := named_bundle% "RealMapCertificates/relations/basis20477.json"
theorem reductionProof20477 : EqualModuloRelations reduction20477.relations reduction20477.input reduction20477.output := by lin_cert using reduction20477.terms
theorem substitutionProof20477 : IsMapEvaluation generatorImages reduction20477.relations [8,8,8,1139] reduction20477.output := by lin_cert using reduction20477.terms
def map_76_255 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21349 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21349 : InImage map_76_255 image21349 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21349 : Bundle := named_bundle% "RealMapCertificates/relations/basis21349.json"
theorem reductionProof21349 : EqualModuloRelations reduction21349.relations reduction21349.input reduction21349.output := by lin_cert using reduction21349.terms
theorem substitutionProof21349 : IsMapEvaluation generatorImages reduction21349.relations [8,8,8,1202] reduction21349.output := by lin_cert using reduction21349.terms
def map_76_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21970 : InImage map_76_257 image21970 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21970 : Bundle := named_bundle% "RealMapCertificates/relations/basis21970.json"
theorem reductionProof21970 : EqualModuloRelations reduction21970.relations reduction21970.input reduction21970.output := by lin_cert using reduction21970.terms
theorem substitutionProof21970 : IsMapEvaluation generatorImages reduction21970.relations [0,0,2534] reduction21970.output := by lin_cert using reduction21970.terms
def map_76_258 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image22307 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22307 : InImage map_76_258 image22307 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22307 : Bundle := named_bundle% "RealMapCertificates/relations/basis22307.json"
theorem reductionProof22307 : EqualModuloRelations reduction22307.relations reduction22307.input reduction22307.output := by lin_cert using reduction22307.terms
theorem substitutionProof22307 : IsMapEvaluation generatorImages reduction22307.relations [8,8,8,8,951] reduction22307.output := by lin_cert using reduction22307.terms
def image22308 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22308 : InImage map_76_258 image22308 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22308 : Bundle := named_bundle% "RealMapCertificates/relations/basis22308.json"
theorem reductionProof22308 : EqualModuloRelations reduction22308.relations reduction22308.input reduction22308.output := by lin_cert using reduction22308.terms
theorem substitutionProof22308 : IsMapEvaluation generatorImages reduction22308.relations [0,0,0,2535] reduction22308.output := by lin_cert using reduction22308.terms
def map_76_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22686 : InImage map_76_259 image22686 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22686 : Bundle := named_bundle% "RealMapCertificates/relations/basis22686.json"
theorem reductionProof22686 : EqualModuloRelations reduction22686.relations reduction22686.input reduction22686.output := by lin_cert using reduction22686.terms
theorem substitutionProof22686 : IsMapEvaluation generatorImages reduction22686.relations [1,1,2534] reduction22686.output := by lin_cert using reduction22686.terms
def map_76_260 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image22998 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22998 : InImage map_76_260 image22998 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22998 : Bundle := named_bundle% "RealMapCertificates/relations/basis22998.json"
theorem reductionProof22998 : EqualModuloRelations reduction22998.relations reduction22998.input reduction22998.output := by lin_cert using reduction22998.terms
theorem substitutionProof22998 : IsMapEvaluation generatorImages reduction22998.relations [0,0,2671] reduction22998.output := by lin_cert using reduction22998.terms
def map_76_261 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image23417 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23417 : InImage map_76_261 image23417 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23417 : Bundle := named_bundle% "RealMapCertificates/relations/basis23417.json"
theorem reductionProof23417 : EqualModuloRelations reduction23417.relations reduction23417.input reduction23417.output := by lin_cert using reduction23417.terms
theorem substitutionProof23417 : IsMapEvaluation generatorImages reduction23417.relations [8,8,8,8,995] reduction23417.output := by lin_cert using reduction23417.terms
def map_77_77 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image646 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation646 : InImage map_77_77 image646 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction646 : Bundle := named_bundle% "RealMapCertificates/relations/basis646.json"
theorem reductionProof646 : EqualModuloRelations reduction646.relations reduction646.input reduction646.output := by lin_cert using reduction646.terms
theorem substitutionProof646 : IsMapEvaluation generatorImages reduction646.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction646.output := by lin_cert using reduction646.terms
def map_77_230 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15093 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15093 : InImage map_77_230 image15093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15093 : Bundle := named_bundle% "RealMapCertificates/relations/basis15093.json"
theorem reductionProof15093 : EqualModuloRelations reduction15093.relations reduction15093.input reduction15093.output := by lin_cert using reduction15093.terms
theorem substitutionProof15093 : IsMapEvaluation generatorImages reduction15093.relations [1733] reduction15093.output := by lin_cert using reduction15093.terms
def map_77_232 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15565 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15565 : InImage map_77_232 image15565 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15565 : Bundle := named_bundle% "RealMapCertificates/relations/basis15565.json"
theorem reductionProof15565 : EqualModuloRelations reduction15565.relations reduction15565.input reduction15565.output := by lin_cert using reduction15565.terms
theorem substitutionProof15565 : IsMapEvaluation generatorImages reduction15565.relations [1770] reduction15565.output := by lin_cert using reduction15565.terms
def map_77_235 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16231 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16231 : InImage map_77_235 image16231 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16231 : Bundle := named_bundle% "RealMapCertificates/relations/basis16231.json"
theorem reductionProof16231 : EqualModuloRelations reduction16231.relations reduction16231.input reduction16231.output := by lin_cert using reduction16231.terms
theorem substitutionProof16231 : IsMapEvaluation generatorImages reduction16231.relations [0,1826] reduction16231.output := by lin_cert using reduction16231.terms
def map_77_236 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image16408 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16408 : InImage map_77_236 image16408 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16408 : Bundle := named_bundle% "RealMapCertificates/relations/basis16408.json"
theorem reductionProof16408 : EqualModuloRelations reduction16408.relations reduction16408.input reduction16408.output := by lin_cert using reduction16408.terms
theorem substitutionProof16408 : IsMapEvaluation generatorImages reduction16408.relations [1,1826] reduction16408.output := by lin_cert using reduction16408.terms
def image16409 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16409 : InImage map_77_236 image16409 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16409 : Bundle := named_bundle% "RealMapCertificates/relations/basis16409.json"
theorem reductionProof16409 : EqualModuloRelations reduction16409.relations reduction16409.input reduction16409.output := by lin_cert using reduction16409.terms
theorem substitutionProof16409 : IsMapEvaluation generatorImages reduction16409.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction16409.output := by lin_cert using reduction16409.terms
def map_77_238 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16891 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16891 : InImage map_77_238 image16891 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16891 : Bundle := named_bundle% "RealMapCertificates/relations/basis16891.json"
theorem reductionProof16891 : EqualModuloRelations reduction16891.relations reduction16891.input reduction16891.output := by lin_cert using reduction16891.terms
theorem substitutionProof16891 : IsMapEvaluation generatorImages reduction16891.relations [0,1899] reduction16891.output := by lin_cert using reduction16891.terms
def map_77_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17098 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17098 : InImage map_77_239 image17098 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17098 : Bundle := named_bundle% "RealMapCertificates/relations/basis17098.json"
theorem reductionProof17098 : EqualModuloRelations reduction17098.relations reduction17098.input reduction17098.output := by lin_cert using reduction17098.terms
theorem substitutionProof17098 : IsMapEvaluation generatorImages reduction17098.relations [0,0,1900] reduction17098.output := by lin_cert using reduction17098.terms
def map_77_241 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17656 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17656 : InImage map_77_241 image17656 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17656 : Bundle := named_bundle% "RealMapCertificates/relations/basis17656.json"
theorem reductionProof17656 : EqualModuloRelations reduction17656.relations reduction17656.input reduction17656.output := by lin_cert using reduction17656.terms
theorem substitutionProof17656 : IsMapEvaluation generatorImages reduction17656.relations [0,8,1585] reduction17656.output := by lin_cert using reduction17656.terms
def map_77_242 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17857 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17857 : InImage map_77_242 image17857 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17857 : Bundle := named_bundle% "RealMapCertificates/relations/basis17857.json"
theorem reductionProof17857 : EqualModuloRelations reduction17857.relations reduction17857.input reduction17857.output := by lin_cert using reduction17857.terms
theorem substitutionProof17857 : IsMapEvaluation generatorImages reduction17857.relations [0,0,8,1586] reduction17857.output := by lin_cert using reduction17857.terms
def map_77_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18390 : InImage map_77_244 image18390 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18390 : Bundle := named_bundle% "RealMapCertificates/relations/basis18390.json"
theorem reductionProof18390 : EqualModuloRelations reduction18390.relations reduction18390.input reduction18390.output := by lin_cert using reduction18390.terms
theorem substitutionProof18390 : IsMapEvaluation generatorImages reduction18390.relations [0,8,1636] reduction18390.output := by lin_cert using reduction18390.terms
def map_77_245 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image18601 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation18601 : InImage map_77_245 image18601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18601 : Bundle := named_bundle% "RealMapCertificates/relations/basis18601.json"
theorem reductionProof18601 : EqualModuloRelations reduction18601.relations reduction18601.input reduction18601.output := by lin_cert using reduction18601.terms
theorem substitutionProof18601 : IsMapEvaluation generatorImages reduction18601.relations [0,0,8,1637] reduction18601.output := by lin_cert using reduction18601.terms
def map_77_247 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19182 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19182 : InImage map_77_247 image19182 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19182 : Bundle := named_bundle% "RealMapCertificates/relations/basis19182.json"
theorem reductionProof19182 : EqualModuloRelations reduction19182.relations reduction19182.input reduction19182.output := by lin_cert using reduction19182.terms
theorem substitutionProof19182 : IsMapEvaluation generatorImages reduction19182.relations [0,8,8,1359] reduction19182.output := by lin_cert using reduction19182.terms
def map_77_248 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19397 : InImage map_77_248 image19397 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19397 : Bundle := named_bundle% "RealMapCertificates/relations/basis19397.json"
theorem reductionProof19397 : EqualModuloRelations reduction19397.relations reduction19397.input reduction19397.output := by lin_cert using reduction19397.terms
theorem substitutionProof19397 : IsMapEvaluation generatorImages reduction19397.relations [0,0,8,16,1140] reduction19397.output := by lin_cert using reduction19397.terms
def map_77_252 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20475 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20475 : InImage map_77_252 image20475 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20475 : Bundle := named_bundle% "RealMapCertificates/relations/basis20475.json"
theorem reductionProof20475 : EqualModuloRelations reduction20475.relations reduction20475.input reduction20475.output := by lin_cert using reduction20475.terms
theorem substitutionProof20475 : IsMapEvaluation generatorImages reduction20475.relations [2401] reduction20475.output := by lin_cert using reduction20475.terms
def image20476 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20476 : InImage map_77_252 image20476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20476 : Bundle := named_bundle% "RealMapCertificates/relations/basis20476.json"
theorem reductionProof20476 : EqualModuloRelations reduction20476.relations reduction20476.input reduction20476.output := by lin_cert using reduction20476.terms
theorem substitutionProof20476 : IsMapEvaluation generatorImages reduction20476.relations [2400] reduction20476.output := by lin_cert using reduction20476.terms
def map_77_255 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21348 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21348 : InImage map_77_255 image21348 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21348 : Bundle := named_bundle% "RealMapCertificates/relations/basis21348.json"
theorem reductionProof21348 : EqualModuloRelations reduction21348.relations reduction21348.input reduction21348.output := by lin_cert using reduction21348.terms
theorem substitutionProof21348 : IsMapEvaluation generatorImages reduction21348.relations [2533] reduction21348.output := by lin_cert using reduction21348.terms
def map_77_258 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image22305 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22305 : InImage map_77_258 image22305 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22305 : Bundle := named_bundle% "RealMapCertificates/relations/basis22305.json"
theorem reductionProof22305 : EqualModuloRelations reduction22305.relations reduction22305.input reduction22305.output := by lin_cert using reduction22305.terms
theorem substitutionProof22305 : IsMapEvaluation generatorImages reduction22305.relations [8,1989] reduction22305.output := by lin_cert using reduction22305.terms
def image22306 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22306 : InImage map_77_258 image22306 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22306 : Bundle := named_bundle% "RealMapCertificates/relations/basis22306.json"
theorem reductionProof22306 : EqualModuloRelations reduction22306.relations reduction22306.input reduction22306.output := by lin_cert using reduction22306.terms
theorem substitutionProof22306 : IsMapEvaluation generatorImages reduction22306.relations [0,0,0,2534] reduction22306.output := by lin_cert using reduction22306.terms
def map_77_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22685 : InImage map_77_259 image22685 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22685 : Bundle := named_bundle% "RealMapCertificates/relations/basis22685.json"
theorem reductionProof22685 : EqualModuloRelations reduction22685.relations reduction22685.input reduction22685.output := by lin_cert using reduction22685.terms
theorem substitutionProof22685 : IsMapEvaluation generatorImages reduction22685.relations [0,0,0,0,2535] reduction22685.output := by lin_cert using reduction22685.terms
def map_77_261 : Matrix 7 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image23415 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23415 : InImage map_77_261 image23415 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23415 : Bundle := named_bundle% "RealMapCertificates/relations/basis23415.json"
theorem reductionProof23415 : EqualModuloRelations reduction23415.relations reduction23415.input reduction23415.output := by lin_cert using reduction23415.terms
theorem substitutionProof23415 : IsMapEvaluation generatorImages reduction23415.relations [8,2088] reduction23415.output := by lin_cert using reduction23415.terms
def image23416 : Vec 7 := fun i => ([false,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation23416 : InImage map_77_261 image23416 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23416 : Bundle := named_bundle% "RealMapCertificates/relations/basis23416.json"
theorem reductionProof23416 : EqualModuloRelations reduction23416.relations reduction23416.input reduction23416.output := by lin_cert using reduction23416.terms
theorem substitutionProof23416 : IsMapEvaluation generatorImages reduction23416.relations [0,0,0,2671] reduction23416.output := by lin_cert using reduction23416.terms
def map_78_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image666 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation666 : InImage map_78_78 image666 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction666 : Bundle := named_bundle% "RealMapCertificates/relations/basis666.json"
theorem reductionProof666 : EqualModuloRelations reduction666.relations reduction666.input reduction666.output := by lin_cert using reduction666.terms
theorem substitutionProof666 : IsMapEvaluation generatorImages reduction666.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction666.output := by lin_cert using reduction666.terms
def map_78_232 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15564 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15564 : InImage map_78_232 image15564 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15564 : Bundle := named_bundle% "RealMapCertificates/relations/basis15564.json"
theorem reductionProof15564 : EqualModuloRelations reduction15564.relations reduction15564.input reduction15564.output := by lin_cert using reduction15564.terms
theorem substitutionProof15564 : IsMapEvaluation generatorImages reduction15564.relations [1,1733] reduction15564.output := by lin_cert using reduction15564.terms
def map_78_233 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15743 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15743 : InImage map_78_233 image15743 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15743 : Bundle := named_bundle% "RealMapCertificates/relations/basis15743.json"
theorem reductionProof15743 : EqualModuloRelations reduction15743.relations reduction15743.input reduction15743.output := by lin_cert using reduction15743.terms
theorem substitutionProof15743 : IsMapEvaluation generatorImages reduction15743.relations [0,1770] reduction15743.output := by lin_cert using reduction15743.terms
def map_78_236 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16407 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16407 : InImage map_78_236 image16407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16407 : Bundle := named_bundle% "RealMapCertificates/relations/basis16407.json"
theorem reductionProof16407 : EqualModuloRelations reduction16407.relations reduction16407.input reduction16407.output := by lin_cert using reduction16407.terms
theorem substitutionProof16407 : IsMapEvaluation generatorImages reduction16407.relations [0,0,1826] reduction16407.output := by lin_cert using reduction16407.terms
def map_78_237 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16640 : InImage map_78_237 image16640 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16640 : Bundle := named_bundle% "RealMapCertificates/relations/basis16640.json"
theorem reductionProof16640 : EqualModuloRelations reduction16640.relations reduction16640.input reduction16640.output := by lin_cert using reduction16640.terms
theorem substitutionProof16640 : IsMapEvaluation generatorImages reduction16640.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction16640.output := by lin_cert using reduction16640.terms
def map_78_238 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16890 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16890 : InImage map_78_238 image16890 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16890 : Bundle := named_bundle% "RealMapCertificates/relations/basis16890.json"
theorem reductionProof16890 : EqualModuloRelations reduction16890.relations reduction16890.input reduction16890.output := by lin_cert using reduction16890.terms
theorem substitutionProof16890 : IsMapEvaluation generatorImages reduction16890.relations [1,1,1826] reduction16890.output := by lin_cert using reduction16890.terms
def map_78_239 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17097 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17097 : InImage map_78_239 image17097 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17097 : Bundle := named_bundle% "RealMapCertificates/relations/basis17097.json"
theorem reductionProof17097 : EqualModuloRelations reduction17097.relations reduction17097.input reduction17097.output := by lin_cert using reduction17097.terms
theorem substitutionProof17097 : IsMapEvaluation generatorImages reduction17097.relations [0,0,1899] reduction17097.output := by lin_cert using reduction17097.terms
def map_78_242 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17856 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17856 : InImage map_78_242 image17856 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17856 : Bundle := named_bundle% "RealMapCertificates/relations/basis17856.json"
theorem reductionProof17856 : EqualModuloRelations reduction17856.relations reduction17856.input reduction17856.output := by lin_cert using reduction17856.terms
theorem substitutionProof17856 : IsMapEvaluation generatorImages reduction17856.relations [0,0,8,1585] reduction17856.output := by lin_cert using reduction17856.terms
def map_78_245 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18600 : InImage map_78_245 image18600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18600 : Bundle := named_bundle% "RealMapCertificates/relations/basis18600.json"
theorem reductionProof18600 : EqualModuloRelations reduction18600.relations reduction18600.input reduction18600.output := by lin_cert using reduction18600.terms
theorem substitutionProof18600 : IsMapEvaluation generatorImages reduction18600.relations [0,0,8,1636] reduction18600.output := by lin_cert using reduction18600.terms
def map_78_248 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image19396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19396 : InImage map_78_248 image19396 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19396 : Bundle := named_bundle% "RealMapCertificates/relations/basis19396.json"
theorem reductionProof19396 : EqualModuloRelations reduction19396.relations reduction19396.input reduction19396.output := by lin_cert using reduction19396.terms
theorem substitutionProof19396 : IsMapEvaluation generatorImages reduction19396.relations [0,0,8,8,1359] reduction19396.output := by lin_cert using reduction19396.terms
def map_78_252 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20474 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20474 : InImage map_78_252 image20474 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20474 : Bundle := named_bundle% "RealMapCertificates/relations/basis20474.json"
theorem reductionProof20474 : EqualModuloRelations reduction20474.relations reduction20474.input reduction20474.output := by lin_cert using reduction20474.terms
theorem substitutionProof20474 : IsMapEvaluation generatorImages reduction20474.relations [17,1586] reduction20474.output := by lin_cert using reduction20474.terms
def map_78_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20793 : InImage map_78_253 image20793 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20793 : Bundle := named_bundle% "RealMapCertificates/relations/basis20793.json"
theorem reductionProof20793 : EqualModuloRelations reduction20793.relations reduction20793.input reduction20793.output := by lin_cert using reduction20793.terms
theorem substitutionProof20793 : IsMapEvaluation generatorImages reduction20793.relations [0,2400] reduction20793.output := by lin_cert using reduction20793.terms
def map_78_254 : Matrix 6 1 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21026 : Vec 6 := fun i => ([false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21026 : InImage map_78_254 image21026 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21026 : Bundle := named_bundle% "RealMapCertificates/relations/basis21026.json"
theorem reductionProof21026 : EqualModuloRelations reduction21026.relations reduction21026.input reduction21026.output := by lin_cert using reduction21026.terms
theorem substitutionProof21026 : IsMapEvaluation generatorImages reduction21026.relations [1,2400] reduction21026.output := by lin_cert using reduction21026.terms
def map_78_255 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21347 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21347 : InImage map_78_255 image21347 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21347 : Bundle := named_bundle% "RealMapCertificates/relations/basis21347.json"
theorem reductionProof21347 : EqualModuloRelations reduction21347.relations reduction21347.input reduction21347.output := by lin_cert using reduction21347.terms
theorem substitutionProof21347 : IsMapEvaluation generatorImages reduction21347.relations [17,1637] reduction21347.output := by lin_cert using reduction21347.terms
def map_78_258 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image22304 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation22304 : InImage map_78_258 image22304 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22304 : Bundle := named_bundle% "RealMapCertificates/relations/basis22304.json"
theorem reductionProof22304 : EqualModuloRelations reduction22304.relations reduction22304.input reduction22304.output := by lin_cert using reduction22304.terms
theorem substitutionProof22304 : IsMapEvaluation generatorImages reduction22304.relations [16,17,1140] reduction22304.output := by lin_cert using reduction22304.terms
def map_78_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22684 : InImage map_78_259 image22684 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22684 : Bundle := named_bundle% "RealMapCertificates/relations/basis22684.json"
theorem reductionProof22684 : EqualModuloRelations reduction22684.relations reduction22684.input reduction22684.output := by lin_cert using reduction22684.terms
theorem substitutionProof22684 : IsMapEvaluation generatorImages reduction22684.relations [0,0,0,0,2534] reduction22684.output := by lin_cert using reduction22684.terms
def map_78_260 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22997 : InImage map_78_260 image22997 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22997 : Bundle := named_bundle% "RealMapCertificates/relations/basis22997.json"
theorem reductionProof22997 : EqualModuloRelations reduction22997.relations reduction22997.input reduction22997.output := by lin_cert using reduction22997.terms
theorem substitutionProof22997 : IsMapEvaluation generatorImages reduction22997.relations [0,0,0,0,0,2535] reduction22997.output := by lin_cert using reduction22997.terms
def map_78_261 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23414 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23414 : InImage map_78_261 image23414 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23414 : Bundle := named_bundle% "RealMapCertificates/relations/basis23414.json"
theorem reductionProof23414 : EqualModuloRelations reduction23414.relations reduction23414.input reduction23414.output := by lin_cert using reduction23414.terms
theorem substitutionProof23414 : IsMapEvaluation generatorImages reduction23414.relations [8,17,1426] reduction23414.output := by lin_cert using reduction23414.terms
def map_79_79 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image693 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation693 : InImage map_79_79 image693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction693 : Bundle := named_bundle% "RealMapCertificates/relations/basis693.json"
theorem reductionProof693 : EqualModuloRelations reduction693.relations reduction693.input reduction693.output := by lin_cert using reduction693.terms
theorem substitutionProof693 : IsMapEvaluation generatorImages reduction693.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction693.output := by lin_cert using reduction693.terms
def map_79_234 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15971 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15971 : InImage map_79_234 image15971 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15971 : Bundle := named_bundle% "RealMapCertificates/relations/basis15971.json"
theorem reductionProof15971 : EqualModuloRelations reduction15971.relations reduction15971.input reduction15971.output := by lin_cert using reduction15971.terms
theorem substitutionProof15971 : IsMapEvaluation generatorImages reduction15971.relations [0,0,1770] reduction15971.output := by lin_cert using reduction15971.terms
def map_79_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16889 : InImage map_79_238 image16889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16889 : Bundle := named_bundle% "RealMapCertificates/relations/basis16889.json"
theorem reductionProof16889 : EqualModuloRelations reduction16889.relations reduction16889.input reduction16889.output := by lin_cert using reduction16889.terms
theorem substitutionProof16889 : IsMapEvaluation generatorImages reduction16889.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction16889.output := by lin_cert using reduction16889.terms
def map_79_239 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image17096 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation17096 : InImage map_79_239 image17096 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17096 : Bundle := named_bundle% "RealMapCertificates/relations/basis17096.json"
theorem reductionProof17096 : EqualModuloRelations reduction17096.relations reduction17096.input reduction17096.output := by lin_cert using reduction17096.terms
theorem substitutionProof17096 : IsMapEvaluation generatorImages reduction17096.relations [1961] reduction17096.output := by lin_cert using reduction17096.terms
def map_79_240 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17338 : InImage map_79_240 image17338 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17338 : Bundle := named_bundle% "RealMapCertificates/relations/basis17338.json"
theorem reductionProof17338 : EqualModuloRelations reduction17338.relations reduction17338.input reduction17338.output := by lin_cert using reduction17338.terms
theorem substitutionProof17338 : IsMapEvaluation generatorImages reduction17338.relations [0,0,0,1899] reduction17338.output := by lin_cert using reduction17338.terms
end RealMapCertificates
