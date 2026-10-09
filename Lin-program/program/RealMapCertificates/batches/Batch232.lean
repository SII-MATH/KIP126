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
  | 1397 => []
  | 1585 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1586 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 1636 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1637 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1826 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 1899 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 1900 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 1961 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2056 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2118 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2189 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 2190 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 2299 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 2300 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 2374 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2400 => []
  | 2486 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2534 => []
  | 2535 => [[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]]
  | 2578 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 2670 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 2859 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 2860 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | _ => []
def map_79_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18861 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18861 : InImage map_79_246 image18861 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18861 : Bundle := named_bundle% "RealMapCertificates/relations/basis18861.json"
theorem reductionProof18861 : EqualModuloRelations reduction18861.relations reduction18861.input reduction18861.output := by lin_cert using reduction18861.terms
theorem substitutionProof18861 : IsMapEvaluation generatorImages reduction18861.relations [2190] reduction18861.output := by lin_cert using reduction18861.terms
def map_79_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19679 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19679 : InImage map_79_249 image19679 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19679 : Bundle := named_bundle% "RealMapCertificates/relations/basis19679.json"
theorem reductionProof19679 : EqualModuloRelations reduction19679.relations reduction19679.input reduction19679.output := by lin_cert using reduction19679.terms
theorem substitutionProof19679 : IsMapEvaluation generatorImages reduction19679.relations [2300] reduction19679.output := by lin_cert using reduction19679.terms
def map_79_252 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20473 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20473 : InImage map_79_252 image20473 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20473 : Bundle := named_bundle% "RealMapCertificates/relations/basis20473.json"
theorem reductionProof20473 : EqualModuloRelations reduction20473.relations reduction20473.input reduction20473.output := by lin_cert using reduction20473.terms
theorem substitutionProof20473 : IsMapEvaluation generatorImages reduction20473.relations [16,1586] reduction20473.output := by lin_cert using reduction20473.terms
def map_79_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20792 : InImage map_79_253 image20792 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20792 : Bundle := named_bundle% "RealMapCertificates/relations/basis20792.json"
theorem reductionProof20792 : EqualModuloRelations reduction20792.relations reduction20792.input reduction20792.output := by lin_cert using reduction20792.terms
theorem substitutionProof20792 : IsMapEvaluation generatorImages reduction20792.relations [0,17,1586] reduction20792.output := by lin_cert using reduction20792.terms
def map_79_254 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21025 : InImage map_79_254 image21025 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21025 : Bundle := named_bundle% "RealMapCertificates/relations/basis21025.json"
theorem reductionProof21025 : EqualModuloRelations reduction21025.relations reduction21025.input reduction21025.output := by lin_cert using reduction21025.terms
theorem substitutionProof21025 : IsMapEvaluation generatorImages reduction21025.relations [0,0,2400] reduction21025.output := by lin_cert using reduction21025.terms
def map_79_255 : Matrix 8 1 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21346 : Vec 8 := fun i => ([false,true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21346 : InImage map_79_255 image21346 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21346 : Bundle := named_bundle% "RealMapCertificates/relations/basis21346.json"
theorem reductionProof21346 : EqualModuloRelations reduction21346.relations reduction21346.input reduction21346.output := by lin_cert using reduction21346.terms
theorem substitutionProof21346 : IsMapEvaluation generatorImages reduction21346.relations [8,1900] reduction21346.output := by lin_cert using reduction21346.terms
def map_79_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21680 : InImage map_79_256 image21680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21680 : Bundle := named_bundle% "RealMapCertificates/relations/basis21680.json"
theorem reductionProof21680 : EqualModuloRelations reduction21680.relations reduction21680.input reduction21680.output := by lin_cert using reduction21680.terms
theorem substitutionProof21680 : IsMapEvaluation generatorImages reduction21680.relations [0,17,1637] reduction21680.output := by lin_cert using reduction21680.terms
def map_79_258 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22303 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22303 : InImage map_79_258 image22303 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22303 : Bundle := named_bundle% "RealMapCertificates/relations/basis22303.json"
theorem reductionProof22303 : EqualModuloRelations reduction22303.relations reduction22303.input reduction22303.output := by lin_cert using reduction22303.terms
theorem substitutionProof22303 : IsMapEvaluation generatorImages reduction22303.relations [8,8,1586] reduction22303.output := by lin_cert using reduction22303.terms
def map_79_260 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22996 : InImage map_79_260 image22996 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22996 : Bundle := named_bundle% "RealMapCertificates/relations/basis22996.json"
theorem reductionProof22996 : EqualModuloRelations reduction22996.relations reduction22996.input reduction22996.output := by lin_cert using reduction22996.terms
theorem substitutionProof22996 : IsMapEvaluation generatorImages reduction22996.relations [0,0,0,0,0,2534] reduction22996.output := by lin_cert using reduction22996.terms
def map_79_261 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image23412 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23412 : InImage map_79_261 image23412 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23412 : Bundle := named_bundle% "RealMapCertificates/relations/basis23412.json"
theorem reductionProof23412 : EqualModuloRelations reduction23412.relations reduction23412.input reduction23412.output := by lin_cert using reduction23412.terms
theorem substitutionProof23412 : IsMapEvaluation generatorImages reduction23412.relations [8,8,1637] reduction23412.output := by lin_cert using reduction23412.terms
def image23413 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23413 : InImage map_79_261 image23413 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23413 : Bundle := named_bundle% "RealMapCertificates/relations/basis23413.json"
theorem reductionProof23413 : EqualModuloRelations reduction23413.relations reduction23413.input reduction23413.output := by lin_cert using reduction23413.terms
theorem substitutionProof23413 : IsMapEvaluation generatorImages reduction23413.relations [0,0,0,0,0,0,2535] reduction23413.output := by lin_cert using reduction23413.terms
def map_80_80 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image708 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation708 : InImage map_80_80 image708 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction708 : Bundle := named_bundle% "RealMapCertificates/relations/basis708.json"
theorem reductionProof708 : EqualModuloRelations reduction708.relations reduction708.input reduction708.output := by lin_cert using reduction708.terms
theorem substitutionProof708 : IsMapEvaluation generatorImages reduction708.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction708.output := by lin_cert using reduction708.terms
def map_80_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17095 : InImage map_80_239 image17095 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17095 : Bundle := named_bundle% "RealMapCertificates/relations/basis17095.json"
theorem reductionProof17095 : EqualModuloRelations reduction17095.relations reduction17095.input reduction17095.output := by lin_cert using reduction17095.terms
theorem substitutionProof17095 : IsMapEvaluation generatorImages reduction17095.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1397] reduction17095.output := by lin_cert using reduction17095.terms
def map_80_241 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17655 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17655 : InImage map_80_241 image17655 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17655 : Bundle := named_bundle% "RealMapCertificates/relations/basis17655.json"
theorem reductionProof17655 : EqualModuloRelations reduction17655.relations reduction17655.input reduction17655.output := by lin_cert using reduction17655.terms
theorem substitutionProof17655 : IsMapEvaluation generatorImages reduction17655.relations [1,1961] reduction17655.output := by lin_cert using reduction17655.terms
def map_80_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18860 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18860 : InImage map_80_246 image18860 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18860 : Bundle := named_bundle% "RealMapCertificates/relations/basis18860.json"
theorem reductionProof18860 : EqualModuloRelations reduction18860.relations reduction18860.input reduction18860.output := by lin_cert using reduction18860.terms
theorem substitutionProof18860 : IsMapEvaluation generatorImages reduction18860.relations [2189] reduction18860.output := by lin_cert using reduction18860.terms
def map_80_247 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19181 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19181 : InImage map_80_247 image19181 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19181 : Bundle := named_bundle% "RealMapCertificates/relations/basis19181.json"
theorem reductionProof19181 : EqualModuloRelations reduction19181.relations reduction19181.input reduction19181.output := by lin_cert using reduction19181.terms
theorem substitutionProof19181 : IsMapEvaluation generatorImages reduction19181.relations [0,2190] reduction19181.output := by lin_cert using reduction19181.terms
def map_80_249 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19678 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19678 : InImage map_80_249 image19678 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19678 : Bundle := named_bundle% "RealMapCertificates/relations/basis19678.json"
theorem reductionProof19678 : EqualModuloRelations reduction19678.relations reduction19678.input reduction19678.output := by lin_cert using reduction19678.terms
theorem substitutionProof19678 : IsMapEvaluation generatorImages reduction19678.relations [2299] reduction19678.output := by lin_cert using reduction19678.terms
def map_80_250 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19968 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19968 : InImage map_80_250 image19968 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19968 : Bundle := named_bundle% "RealMapCertificates/relations/basis19968.json"
theorem reductionProof19968 : EqualModuloRelations reduction19968.relations reduction19968.input reduction19968.output := by lin_cert using reduction19968.terms
theorem substitutionProof19968 : IsMapEvaluation generatorImages reduction19968.relations [0,2300] reduction19968.output := by lin_cert using reduction19968.terms
def map_80_252 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20472 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20472 : InImage map_80_252 image20472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20472 : Bundle := named_bundle% "RealMapCertificates/relations/basis20472.json"
theorem reductionProof20472 : EqualModuloRelations reduction20472.relations reduction20472.input reduction20472.output := by lin_cert using reduction20472.terms
theorem substitutionProof20472 : IsMapEvaluation generatorImages reduction20472.relations [8,1826] reduction20472.output := by lin_cert using reduction20472.terms
def map_80_253 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20791 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20791 : InImage map_80_253 image20791 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20791 : Bundle := named_bundle% "RealMapCertificates/relations/basis20791.json"
theorem reductionProof20791 : EqualModuloRelations reduction20791.relations reduction20791.input reduction20791.output := by lin_cert using reduction20791.terms
theorem substitutionProof20791 : IsMapEvaluation generatorImages reduction20791.relations [0,16,1586] reduction20791.output := by lin_cert using reduction20791.terms
def map_80_254 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21024 : InImage map_80_254 image21024 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21024 : Bundle := named_bundle% "RealMapCertificates/relations/basis21024.json"
theorem reductionProof21024 : EqualModuloRelations reduction21024.relations reduction21024.input reduction21024.output := by lin_cert using reduction21024.terms
theorem substitutionProof21024 : IsMapEvaluation generatorImages reduction21024.relations [0,0,17,1586] reduction21024.output := by lin_cert using reduction21024.terms
def map_80_255 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21344 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21344 : InImage map_80_255 image21344 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21344 : Bundle := named_bundle% "RealMapCertificates/relations/basis21344.json"
theorem reductionProof21344 : EqualModuloRelations reduction21344.relations reduction21344.input reduction21344.output := by lin_cert using reduction21344.terms
theorem substitutionProof21344 : IsMapEvaluation generatorImages reduction21344.relations [8,1899] reduction21344.output := by lin_cert using reduction21344.terms
def image21345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21345 : InImage map_80_255 image21345 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21345 : Bundle := named_bundle% "RealMapCertificates/relations/basis21345.json"
theorem reductionProof21345 : EqualModuloRelations reduction21345.relations reduction21345.input reduction21345.output := by lin_cert using reduction21345.terms
theorem substitutionProof21345 : IsMapEvaluation generatorImages reduction21345.relations [0,0,0,2400] reduction21345.output := by lin_cert using reduction21345.terms
def map_80_256 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21679 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21679 : InImage map_80_256 image21679 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21679 : Bundle := named_bundle% "RealMapCertificates/relations/basis21679.json"
theorem reductionProof21679 : EqualModuloRelations reduction21679.relations reduction21679.input reduction21679.output := by lin_cert using reduction21679.terms
theorem substitutionProof21679 : IsMapEvaluation generatorImages reduction21679.relations [0,8,1900] reduction21679.output := by lin_cert using reduction21679.terms
def map_80_258 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22302 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22302 : InImage map_80_258 image22302 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22302 : Bundle := named_bundle% "RealMapCertificates/relations/basis22302.json"
theorem reductionProof22302 : EqualModuloRelations reduction22302.relations reduction22302.input reduction22302.output := by lin_cert using reduction22302.terms
theorem substitutionProof22302 : IsMapEvaluation generatorImages reduction22302.relations [8,8,1585] reduction22302.output := by lin_cert using reduction22302.terms
def map_80_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22683 : InImage map_80_259 image22683 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22683 : Bundle := named_bundle% "RealMapCertificates/relations/basis22683.json"
theorem reductionProof22683 : EqualModuloRelations reduction22683.relations reduction22683.input reduction22683.output := by lin_cert using reduction22683.terms
theorem substitutionProof22683 : IsMapEvaluation generatorImages reduction22683.relations [0,8,8,1586] reduction22683.output := by lin_cert using reduction22683.terms
def map_80_261 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image23410 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23410 : InImage map_80_261 image23410 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23410 : Bundle := named_bundle% "RealMapCertificates/relations/basis23410.json"
theorem reductionProof23410 : EqualModuloRelations reduction23410.relations reduction23410.input reduction23410.output := by lin_cert using reduction23410.terms
theorem substitutionProof23410 : IsMapEvaluation generatorImages reduction23410.relations [8,8,1636] reduction23410.output := by lin_cert using reduction23410.terms
def image23411 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23411 : InImage map_80_261 image23411 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23411 : Bundle := named_bundle% "RealMapCertificates/relations/basis23411.json"
theorem reductionProof23411 : EqualModuloRelations reduction23411.relations reduction23411.input reduction23411.output := by lin_cert using reduction23411.terms
theorem substitutionProof23411 : IsMapEvaluation generatorImages reduction23411.relations [0,0,0,0,0,0,2534] reduction23411.output := by lin_cert using reduction23411.terms
def map_81_81 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image734 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation734 : InImage map_81_81 image734 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction734 : Bundle := named_bundle% "RealMapCertificates/relations/basis734.json"
theorem reductionProof734 : EqualModuloRelations reduction734.relations reduction734.input reduction734.output := by lin_cert using reduction734.terms
theorem substitutionProof734 : IsMapEvaluation generatorImages reduction734.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction734.output := by lin_cert using reduction734.terms
def map_81_242 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17855 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17855 : InImage map_81_242 image17855 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17855 : Bundle := named_bundle% "RealMapCertificates/relations/basis17855.json"
theorem reductionProof17855 : EqualModuloRelations reduction17855.relations reduction17855.input reduction17855.output := by lin_cert using reduction17855.terms
theorem substitutionProof17855 : IsMapEvaluation generatorImages reduction17855.relations [2056] reduction17855.output := by lin_cert using reduction17855.terms
def map_81_244 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18389 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18389 : InImage map_81_244 image18389 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18389 : Bundle := named_bundle% "RealMapCertificates/relations/basis18389.json"
theorem reductionProof18389 : EqualModuloRelations reduction18389.relations reduction18389.input reduction18389.output := by lin_cert using reduction18389.terms
theorem substitutionProof18389 : IsMapEvaluation generatorImages reduction18389.relations [2118] reduction18389.output := by lin_cert using reduction18389.terms
def map_81_247 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19180 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19180 : InImage map_81_247 image19180 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19180 : Bundle := named_bundle% "RealMapCertificates/relations/basis19180.json"
theorem reductionProof19180 : EqualModuloRelations reduction19180.relations reduction19180.input reduction19180.output := by lin_cert using reduction19180.terms
theorem substitutionProof19180 : IsMapEvaluation generatorImages reduction19180.relations [0,2189] reduction19180.output := by lin_cert using reduction19180.terms
def map_81_248 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image19394 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19394 : InImage map_81_248 image19394 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19394 : Bundle := named_bundle% "RealMapCertificates/relations/basis19394.json"
theorem reductionProof19394 : EqualModuloRelations reduction19394.relations reduction19394.input reduction19394.output := by lin_cert using reduction19394.terms
theorem substitutionProof19394 : IsMapEvaluation generatorImages reduction19394.relations [1,2189] reduction19394.output := by lin_cert using reduction19394.terms
def image19395 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19395 : InImage map_81_248 image19395 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19395 : Bundle := named_bundle% "RealMapCertificates/relations/basis19395.json"
theorem reductionProof19395 : EqualModuloRelations reduction19395.relations reduction19395.input reduction19395.output := by lin_cert using reduction19395.terms
theorem substitutionProof19395 : IsMapEvaluation generatorImages reduction19395.relations [0,0,2190] reduction19395.output := by lin_cert using reduction19395.terms
def map_81_250 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19967 : InImage map_81_250 image19967 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19967 : Bundle := named_bundle% "RealMapCertificates/relations/basis19967.json"
theorem reductionProof19967 : EqualModuloRelations reduction19967.relations reduction19967.input reduction19967.output := by lin_cert using reduction19967.terms
theorem substitutionProof19967 : IsMapEvaluation generatorImages reduction19967.relations [0,2299] reduction19967.output := by lin_cert using reduction19967.terms
def map_81_251 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20202 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20202 : InImage map_81_251 image20202 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20202 : Bundle := named_bundle% "RealMapCertificates/relations/basis20202.json"
theorem reductionProof20202 : EqualModuloRelations reduction20202.relations reduction20202.input reduction20202.output := by lin_cert using reduction20202.terms
theorem substitutionProof20202 : IsMapEvaluation generatorImages reduction20202.relations [0,0,2300] reduction20202.output := by lin_cert using reduction20202.terms
def map_81_253 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20790 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20790 : InImage map_81_253 image20790 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20790 : Bundle := named_bundle% "RealMapCertificates/relations/basis20790.json"
theorem reductionProof20790 : EqualModuloRelations reduction20790.relations reduction20790.input reduction20790.output := by lin_cert using reduction20790.terms
theorem substitutionProof20790 : IsMapEvaluation generatorImages reduction20790.relations [0,8,1826] reduction20790.output := by lin_cert using reduction20790.terms
def map_81_254 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21023 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21023 : InImage map_81_254 image21023 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21023 : Bundle := named_bundle% "RealMapCertificates/relations/basis21023.json"
theorem reductionProof21023 : EqualModuloRelations reduction21023.relations reduction21023.input reduction21023.output := by lin_cert using reduction21023.terms
theorem substitutionProof21023 : IsMapEvaluation generatorImages reduction21023.relations [0,0,16,1586] reduction21023.output := by lin_cert using reduction21023.terms
def map_81_255 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21343 : InImage map_81_255 image21343 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21343 : Bundle := named_bundle% "RealMapCertificates/relations/basis21343.json"
theorem reductionProof21343 : EqualModuloRelations reduction21343.relations reduction21343.input reduction21343.output := by lin_cert using reduction21343.terms
theorem substitutionProof21343 : IsMapEvaluation generatorImages reduction21343.relations [0,0,0,17,1586] reduction21343.output := by lin_cert using reduction21343.terms
def map_81_256 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21677 : InImage map_81_256 image21677 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21677 : Bundle := named_bundle% "RealMapCertificates/relations/basis21677.json"
theorem reductionProof21677 : EqualModuloRelations reduction21677.relations reduction21677.input reduction21677.output := by lin_cert using reduction21677.terms
theorem substitutionProof21677 : IsMapEvaluation generatorImages reduction21677.relations [0,8,1899] reduction21677.output := by lin_cert using reduction21677.terms
def image21678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21678 : InImage map_81_256 image21678 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21678 : Bundle := named_bundle% "RealMapCertificates/relations/basis21678.json"
theorem reductionProof21678 : EqualModuloRelations reduction21678.relations reduction21678.input reduction21678.output := by lin_cert using reduction21678.terms
theorem substitutionProof21678 : IsMapEvaluation generatorImages reduction21678.relations [0,0,0,0,2400] reduction21678.output := by lin_cert using reduction21678.terms
def map_81_257 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21969 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21969 : InImage map_81_257 image21969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21969 : Bundle := named_bundle% "RealMapCertificates/relations/basis21969.json"
theorem reductionProof21969 : EqualModuloRelations reduction21969.relations reduction21969.input reduction21969.output := by lin_cert using reduction21969.terms
theorem substitutionProof21969 : IsMapEvaluation generatorImages reduction21969.relations [0,0,8,1900] reduction21969.output := by lin_cert using reduction21969.terms
def map_81_259 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22682 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22682 : InImage map_81_259 image22682 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22682 : Bundle := named_bundle% "RealMapCertificates/relations/basis22682.json"
theorem reductionProof22682 : EqualModuloRelations reduction22682.relations reduction22682.input reduction22682.output := by lin_cert using reduction22682.terms
theorem substitutionProof22682 : IsMapEvaluation generatorImages reduction22682.relations [0,8,8,1585] reduction22682.output := by lin_cert using reduction22682.terms
def map_81_260 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22995 : InImage map_81_260 image22995 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22995 : Bundle := named_bundle% "RealMapCertificates/relations/basis22995.json"
theorem reductionProof22995 : EqualModuloRelations reduction22995.relations reduction22995.input reduction22995.output := by lin_cert using reduction22995.terms
theorem substitutionProof22995 : IsMapEvaluation generatorImages reduction22995.relations [0,0,8,8,1586] reduction22995.output := by lin_cert using reduction22995.terms
def map_82_82 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image759 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation759 : InImage map_82_82 image759 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction759 : Bundle := named_bundle% "RealMapCertificates/relations/basis759.json"
theorem reductionProof759 : EqualModuloRelations reduction759.relations reduction759.input reduction759.output := by lin_cert using reduction759.terms
theorem substitutionProof759 : IsMapEvaluation generatorImages reduction759.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction759.output := by lin_cert using reduction759.terms
def map_82_244 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18388 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18388 : InImage map_82_244 image18388 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18388 : Bundle := named_bundle% "RealMapCertificates/relations/basis18388.json"
theorem reductionProof18388 : EqualModuloRelations reduction18388.relations reduction18388.input reduction18388.output := by lin_cert using reduction18388.terms
theorem substitutionProof18388 : IsMapEvaluation generatorImages reduction18388.relations [1,2056] reduction18388.output := by lin_cert using reduction18388.terms
def map_82_245 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18599 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18599 : InImage map_82_245 image18599 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18599 : Bundle := named_bundle% "RealMapCertificates/relations/basis18599.json"
theorem reductionProof18599 : EqualModuloRelations reduction18599.relations reduction18599.input reduction18599.output := by lin_cert using reduction18599.terms
theorem substitutionProof18599 : IsMapEvaluation generatorImages reduction18599.relations [0,2118] reduction18599.output := by lin_cert using reduction18599.terms
def map_82_248 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19393 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19393 : InImage map_82_248 image19393 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19393 : Bundle := named_bundle% "RealMapCertificates/relations/basis19393.json"
theorem reductionProof19393 : EqualModuloRelations reduction19393.relations reduction19393.input reduction19393.output := by lin_cert using reduction19393.terms
theorem substitutionProof19393 : IsMapEvaluation generatorImages reduction19393.relations [0,0,2189] reduction19393.output := by lin_cert using reduction19393.terms
def map_82_249 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19677 : InImage map_82_249 image19677 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19677 : Bundle := named_bundle% "RealMapCertificates/relations/basis19677.json"
theorem reductionProof19677 : EqualModuloRelations reduction19677.relations reduction19677.input reduction19677.output := by lin_cert using reduction19677.terms
theorem substitutionProof19677 : IsMapEvaluation generatorImages reduction19677.relations [0,0,0,2190] reduction19677.output := by lin_cert using reduction19677.terms
def map_82_250 : Matrix 7 1 := fun i j => ([false,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19966 : Vec 7 := fun i => ([false,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19966 : InImage map_82_250 image19966 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19966 : Bundle := named_bundle% "RealMapCertificates/relations/basis19966.json"
theorem reductionProof19966 : EqualModuloRelations reduction19966.relations reduction19966.input reduction19966.output := by lin_cert using reduction19966.terms
theorem substitutionProof19966 : IsMapEvaluation generatorImages reduction19966.relations [1,1,2189] reduction19966.output := by lin_cert using reduction19966.terms
def map_82_251 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20201 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20201 : InImage map_82_251 image20201 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20201 : Bundle := named_bundle% "RealMapCertificates/relations/basis20201.json"
theorem reductionProof20201 : EqualModuloRelations reduction20201.relations reduction20201.input reduction20201.output := by lin_cert using reduction20201.terms
theorem substitutionProof20201 : IsMapEvaluation generatorImages reduction20201.relations [0,0,2299] reduction20201.output := by lin_cert using reduction20201.terms
def map_82_254 : Matrix 7 1 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image21022 : Vec 7 := fun i => ([true,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation21022 : InImage map_82_254 image21022 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21022 : Bundle := named_bundle% "RealMapCertificates/relations/basis21022.json"
theorem reductionProof21022 : EqualModuloRelations reduction21022.relations reduction21022.input reduction21022.output := by lin_cert using reduction21022.terms
theorem substitutionProof21022 : IsMapEvaluation generatorImages reduction21022.relations [0,0,8,1826] reduction21022.output := by lin_cert using reduction21022.terms
def map_82_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21676 : InImage map_82_256 image21676 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21676 : Bundle := named_bundle% "RealMapCertificates/relations/basis21676.json"
theorem reductionProof21676 : EqualModuloRelations reduction21676.relations reduction21676.input reduction21676.output := by lin_cert using reduction21676.terms
theorem substitutionProof21676 : IsMapEvaluation generatorImages reduction21676.relations [0,0,0,0,17,1586] reduction21676.output := by lin_cert using reduction21676.terms
def map_82_257 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21967 : InImage map_82_257 image21967 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21967 : Bundle := named_bundle% "RealMapCertificates/relations/basis21967.json"
theorem reductionProof21967 : EqualModuloRelations reduction21967.relations reduction21967.input reduction21967.output := by lin_cert using reduction21967.terms
theorem substitutionProof21967 : IsMapEvaluation generatorImages reduction21967.relations [0,0,8,1899] reduction21967.output := by lin_cert using reduction21967.terms
def image21968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21968 : InImage map_82_257 image21968 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21968 : Bundle := named_bundle% "RealMapCertificates/relations/basis21968.json"
theorem reductionProof21968 : EqualModuloRelations reduction21968.relations reduction21968.input reduction21968.output := by lin_cert using reduction21968.terms
theorem substitutionProof21968 : IsMapEvaluation generatorImages reduction21968.relations [0,0,0,0,0,2400] reduction21968.output := by lin_cert using reduction21968.terms
def map_82_260 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image22994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22994 : InImage map_82_260 image22994 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22994 : Bundle := named_bundle% "RealMapCertificates/relations/basis22994.json"
theorem reductionProof22994 : EqualModuloRelations reduction22994.relations reduction22994.input reduction22994.output := by lin_cert using reduction22994.terms
theorem substitutionProof22994 : IsMapEvaluation generatorImages reduction22994.relations [0,0,8,8,1585] reduction22994.output := by lin_cert using reduction22994.terms
def map_83_83 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image780 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation780 : InImage map_83_83 image780 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction780 : Bundle := named_bundle% "RealMapCertificates/relations/basis780.json"
theorem reductionProof780 : EqualModuloRelations reduction780.relations reduction780.input reduction780.output := by lin_cert using reduction780.terms
theorem substitutionProof780 : IsMapEvaluation generatorImages reduction780.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction780.output := by lin_cert using reduction780.terms
def map_83_246 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18859 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18859 : InImage map_83_246 image18859 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18859 : Bundle := named_bundle% "RealMapCertificates/relations/basis18859.json"
theorem reductionProof18859 : EqualModuloRelations reduction18859.relations reduction18859.input reduction18859.output := by lin_cert using reduction18859.terms
theorem substitutionProof18859 : IsMapEvaluation generatorImages reduction18859.relations [0,0,2118] reduction18859.output := by lin_cert using reduction18859.terms
def map_83_250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19965 : InImage map_83_250 image19965 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19965 : Bundle := named_bundle% "RealMapCertificates/relations/basis19965.json"
theorem reductionProof19965 : EqualModuloRelations reduction19965.relations reduction19965.input reduction19965.output := by lin_cert using reduction19965.terms
theorem substitutionProof19965 : IsMapEvaluation generatorImages reduction19965.relations [0,0,0,0,2190] reduction19965.output := by lin_cert using reduction19965.terms
def map_83_251 : Matrix 8 1 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image20200 : Vec 8 := fun i => ([true,false,false,false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation20200 : InImage map_83_251 image20200 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20200 : Bundle := named_bundle% "RealMapCertificates/relations/basis20200.json"
theorem reductionProof20200 : EqualModuloRelations reduction20200.relations reduction20200.input reduction20200.output := by lin_cert using reduction20200.terms
theorem substitutionProof20200 : IsMapEvaluation generatorImages reduction20200.relations [2374] reduction20200.output := by lin_cert using reduction20200.terms
def map_83_252 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20471 : InImage map_83_252 image20471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20471 : Bundle := named_bundle% "RealMapCertificates/relations/basis20471.json"
theorem reductionProof20471 : EqualModuloRelations reduction20471.relations reduction20471.input reduction20471.output := by lin_cert using reduction20471.terms
theorem substitutionProof20471 : IsMapEvaluation generatorImages reduction20471.relations [0,0,0,2299] reduction20471.output := by lin_cert using reduction20471.terms
def map_83_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21966 : InImage map_83_257 image21966 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21966 : Bundle := named_bundle% "RealMapCertificates/relations/basis21966.json"
theorem reductionProof21966 : EqualModuloRelations reduction21966.relations reduction21966.input reduction21966.output := by lin_cert using reduction21966.terms
theorem substitutionProof21966 : IsMapEvaluation generatorImages reduction21966.relations [0,0,0,0,0,17,1586] reduction21966.output := by lin_cert using reduction21966.terms
def map_83_258 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image22301 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22301 : InImage map_83_258 image22301 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22301 : Bundle := named_bundle% "RealMapCertificates/relations/basis22301.json"
theorem reductionProof22301 : EqualModuloRelations reduction22301.relations reduction22301.input reduction22301.output := by lin_cert using reduction22301.terms
theorem substitutionProof22301 : IsMapEvaluation generatorImages reduction22301.relations [0,0,0,0,0,0,2400] reduction22301.output := by lin_cert using reduction22301.terms
def map_83_261 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23409 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23409 : InImage map_83_261 image23409 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23409 : Bundle := named_bundle% "RealMapCertificates/relations/basis23409.json"
theorem reductionProof23409 : EqualModuloRelations reduction23409.relations reduction23409.input reduction23409.output := by lin_cert using reduction23409.terms
theorem substitutionProof23409 : IsMapEvaluation generatorImages reduction23409.relations [2860] reduction23409.output := by lin_cert using reduction23409.terms
def map_84_84 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image800 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation800 : InImage map_84_84 image800 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction800 : Bundle := named_bundle% "RealMapCertificates/relations/basis800.json"
theorem reductionProof800 : EqualModuloRelations reduction800.relations reduction800.input reduction800.output := by lin_cert using reduction800.terms
theorem substitutionProof800 : IsMapEvaluation generatorImages reduction800.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction800.output := by lin_cert using reduction800.terms
def map_84_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20199 : InImage map_84_251 image20199 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20199 : Bundle := named_bundle% "RealMapCertificates/relations/basis20199.json"
theorem reductionProof20199 : EqualModuloRelations reduction20199.relations reduction20199.input reduction20199.output := by lin_cert using reduction20199.terms
theorem substitutionProof20199 : IsMapEvaluation generatorImages reduction20199.relations [0,0,0,0,0,2190] reduction20199.output := by lin_cert using reduction20199.terms
def map_84_253 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20789 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20789 : InImage map_84_253 image20789 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20789 : Bundle := named_bundle% "RealMapCertificates/relations/basis20789.json"
theorem reductionProof20789 : EqualModuloRelations reduction20789.relations reduction20789.input reduction20789.output := by lin_cert using reduction20789.terms
theorem substitutionProof20789 : IsMapEvaluation generatorImages reduction20789.relations [1,2374] reduction20789.output := by lin_cert using reduction20789.terms
def map_84_258 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22300 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22300 : InImage map_84_258 image22300 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22300 : Bundle := named_bundle% "RealMapCertificates/relations/basis22300.json"
theorem reductionProof22300 : EqualModuloRelations reduction22300.relations reduction22300.input reduction22300.output := by lin_cert using reduction22300.terms
theorem substitutionProof22300 : IsMapEvaluation generatorImages reduction22300.relations [2670] reduction22300.output := by lin_cert using reduction22300.terms
def map_84_259 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image22681 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22681 : InImage map_84_259 image22681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22681 : Bundle := named_bundle% "RealMapCertificates/relations/basis22681.json"
theorem reductionProof22681 : EqualModuloRelations reduction22681.relations reduction22681.input reduction22681.output := by lin_cert using reduction22681.terms
theorem substitutionProof22681 : IsMapEvaluation generatorImages reduction22681.relations [0,0,0,0,0,0,0,2400] reduction22681.output := by lin_cert using reduction22681.terms
def map_84_261 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23408 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23408 : InImage map_84_261 image23408 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23408 : Bundle := named_bundle% "RealMapCertificates/relations/basis23408.json"
theorem reductionProof23408 : EqualModuloRelations reduction23408.relations reduction23408.input reduction23408.output := by lin_cert using reduction23408.terms
theorem substitutionProof23408 : IsMapEvaluation generatorImages reduction23408.relations [2859] reduction23408.output := by lin_cert using reduction23408.terms
def map_85_85 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image836 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation836 : InImage map_85_85 image836 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction836 : Bundle := named_bundle% "RealMapCertificates/relations/basis836.json"
theorem reductionProof836 : EqualModuloRelations reduction836.relations reduction836.input reduction836.output := by lin_cert using reduction836.terms
theorem substitutionProof836 : IsMapEvaluation generatorImages reduction836.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction836.output := by lin_cert using reduction836.terms
def map_85_254 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21021 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21021 : InImage map_85_254 image21021 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21021 : Bundle := named_bundle% "RealMapCertificates/relations/basis21021.json"
theorem reductionProof21021 : EqualModuloRelations reduction21021.relations reduction21021.input reduction21021.output := by lin_cert using reduction21021.terms
theorem substitutionProof21021 : IsMapEvaluation generatorImages reduction21021.relations [2486] reduction21021.output := by lin_cert using reduction21021.terms
def map_85_256 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21675 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21675 : InImage map_85_256 image21675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21675 : Bundle := named_bundle% "RealMapCertificates/relations/basis21675.json"
theorem reductionProof21675 : EqualModuloRelations reduction21675.relations reduction21675.input reduction21675.output := by lin_cert using reduction21675.terms
theorem substitutionProof21675 : IsMapEvaluation generatorImages reduction21675.relations [2578] reduction21675.output := by lin_cert using reduction21675.terms
def map_85_259 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22680 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22680 : InImage map_85_259 image22680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22680 : Bundle := named_bundle% "RealMapCertificates/relations/basis22680.json"
theorem reductionProof22680 : EqualModuloRelations reduction22680.relations reduction22680.input reduction22680.output := by lin_cert using reduction22680.terms
theorem substitutionProof22680 : IsMapEvaluation generatorImages reduction22680.relations [0,2670] reduction22680.output := by lin_cert using reduction22680.terms
def map_85_260 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image22992 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22992 : InImage map_85_260 image22992 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22992 : Bundle := named_bundle% "RealMapCertificates/relations/basis22992.json"
theorem reductionProof22992 : EqualModuloRelations reduction22992.relations reduction22992.input reduction22992.output := by lin_cert using reduction22992.terms
theorem substitutionProof22992 : IsMapEvaluation generatorImages reduction22992.relations [1,2670] reduction22992.output := by lin_cert using reduction22992.terms
def image22993 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22993 : InImage map_85_260 image22993 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22993 : Bundle := named_bundle% "RealMapCertificates/relations/basis22993.json"
theorem reductionProof22993 : EqualModuloRelations reduction22993.relations reduction22993.input reduction22993.output := by lin_cert using reduction22993.terms
theorem substitutionProof22993 : IsMapEvaluation generatorImages reduction22993.relations [0,0,0,0,0,0,0,0,2400] reduction22993.output := by lin_cert using reduction22993.terms
def map_86_86 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image859 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation859 : InImage map_86_86 image859 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction859 : Bundle := named_bundle% "RealMapCertificates/relations/basis859.json"
theorem reductionProof859 : EqualModuloRelations reduction859.relations reduction859.input reduction859.output := by lin_cert using reduction859.terms
theorem substitutionProof859 : IsMapEvaluation generatorImages reduction859.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction859.output := by lin_cert using reduction859.terms
def map_86_256 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21674 : InImage map_86_256 image21674 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21674 : Bundle := named_bundle% "RealMapCertificates/relations/basis21674.json"
theorem reductionProof21674 : EqualModuloRelations reduction21674.relations reduction21674.input reduction21674.output := by lin_cert using reduction21674.terms
theorem substitutionProof21674 : IsMapEvaluation generatorImages reduction21674.relations [1,2486] reduction21674.output := by lin_cert using reduction21674.terms
def map_86_257 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21965 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21965 : InImage map_86_257 image21965 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21965 : Bundle := named_bundle% "RealMapCertificates/relations/basis21965.json"
theorem reductionProof21965 : EqualModuloRelations reduction21965.relations reduction21965.input reduction21965.output := by lin_cert using reduction21965.terms
theorem substitutionProof21965 : IsMapEvaluation generatorImages reduction21965.relations [0,2578] reduction21965.output := by lin_cert using reduction21965.terms
def map_86_260 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22991 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22991 : InImage map_86_260 image22991 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22991 : Bundle := named_bundle% "RealMapCertificates/relations/basis22991.json"
theorem reductionProof22991 : EqualModuloRelations reduction22991.relations reduction22991.input reduction22991.output := by lin_cert using reduction22991.terms
theorem substitutionProof22991 : IsMapEvaluation generatorImages reduction22991.relations [0,0,2670] reduction22991.output := by lin_cert using reduction22991.terms
def map_86_261 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image23407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23407 : InImage map_86_261 image23407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23407 : Bundle := named_bundle% "RealMapCertificates/relations/basis23407.json"
theorem reductionProof23407 : EqualModuloRelations reduction23407.relations reduction23407.input reduction23407.output := by lin_cert using reduction23407.terms
theorem substitutionProof23407 : IsMapEvaluation generatorImages reduction23407.relations [0,0,0,0,0,0,0,0,0,2400] reduction23407.output := by lin_cert using reduction23407.terms
def map_87_87 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image884 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation884 : InImage map_87_87 image884 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction884 : Bundle := named_bundle% "RealMapCertificates/relations/basis884.json"
theorem reductionProof884 : EqualModuloRelations reduction884.relations reduction884.input reduction884.output := by lin_cert using reduction884.terms
theorem substitutionProof884 : IsMapEvaluation generatorImages reduction884.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction884.output := by lin_cert using reduction884.terms
def map_87_258 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image22299 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22299 : InImage map_87_258 image22299 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22299 : Bundle := named_bundle% "RealMapCertificates/relations/basis22299.json"
theorem reductionProof22299 : EqualModuloRelations reduction22299.relations reduction22299.input reduction22299.output := by lin_cert using reduction22299.terms
theorem substitutionProof22299 : IsMapEvaluation generatorImages reduction22299.relations [0,0,2578] reduction22299.output := by lin_cert using reduction22299.terms
def map_88_88 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image908 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation908 : InImage map_88_88 image908 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction908 : Bundle := named_bundle% "RealMapCertificates/relations/basis908.json"
theorem reductionProof908 : EqualModuloRelations reduction908.relations reduction908.input reduction908.output := by lin_cert using reduction908.terms
theorem substitutionProof908 : IsMapEvaluation generatorImages reduction908.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction908.output := by lin_cert using reduction908.terms
def map_89_89 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image935 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation935 : InImage map_89_89 image935 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction935 : Bundle := named_bundle% "RealMapCertificates/relations/basis935.json"
theorem reductionProof935 : EqualModuloRelations reduction935.relations reduction935.input reduction935.output := by lin_cert using reduction935.terms
theorem substitutionProof935 : IsMapEvaluation generatorImages reduction935.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction935.output := by lin_cert using reduction935.terms
def map_90_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image958 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation958 : InImage map_90_90 image958 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction958 : Bundle := named_bundle% "RealMapCertificates/relations/basis958.json"
theorem reductionProof958 : EqualModuloRelations reduction958.relations reduction958.input reduction958.output := by lin_cert using reduction958.terms
theorem substitutionProof958 : IsMapEvaluation generatorImages reduction958.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction958.output := by lin_cert using reduction958.terms
def map_91_91 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image994 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation994 : InImage map_91_91 image994 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction994 : Bundle := named_bundle% "RealMapCertificates/relations/basis994.json"
theorem reductionProof994 : EqualModuloRelations reduction994.relations reduction994.input reduction994.output := by lin_cert using reduction994.terms
theorem substitutionProof994 : IsMapEvaluation generatorImages reduction994.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction994.output := by lin_cert using reduction994.terms
def map_92_92 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1016 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1016 : InImage map_92_92 image1016 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1016 : Bundle := named_bundle% "RealMapCertificates/relations/basis1016.json"
theorem reductionProof1016 : EqualModuloRelations reduction1016.relations reduction1016.input reduction1016.output := by lin_cert using reduction1016.terms
theorem substitutionProof1016 : IsMapEvaluation generatorImages reduction1016.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1016.output := by lin_cert using reduction1016.terms
def map_93_93 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1038 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1038 : InImage map_93_93 image1038 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1038 : Bundle := named_bundle% "RealMapCertificates/relations/basis1038.json"
theorem reductionProof1038 : EqualModuloRelations reduction1038.relations reduction1038.input reduction1038.output := by lin_cert using reduction1038.terms
theorem substitutionProof1038 : IsMapEvaluation generatorImages reduction1038.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1038.output := by lin_cert using reduction1038.terms
def map_94_94 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1068 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1068 : InImage map_94_94 image1068 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1068 : Bundle := named_bundle% "RealMapCertificates/relations/basis1068.json"
theorem reductionProof1068 : EqualModuloRelations reduction1068.relations reduction1068.input reduction1068.output := by lin_cert using reduction1068.terms
theorem substitutionProof1068 : IsMapEvaluation generatorImages reduction1068.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1068.output := by lin_cert using reduction1068.terms
def map_95_95 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1091 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1091 : InImage map_95_95 image1091 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1091 : Bundle := named_bundle% "RealMapCertificates/relations/basis1091.json"
theorem reductionProof1091 : EqualModuloRelations reduction1091.relations reduction1091.input reduction1091.output := by lin_cert using reduction1091.terms
theorem substitutionProof1091 : IsMapEvaluation generatorImages reduction1091.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1091.output := by lin_cert using reduction1091.terms
def map_96_96 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1106 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1106 : InImage map_96_96 image1106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1106 : Bundle := named_bundle% "RealMapCertificates/relations/basis1106.json"
theorem reductionProof1106 : EqualModuloRelations reduction1106.relations reduction1106.input reduction1106.output := by lin_cert using reduction1106.terms
theorem substitutionProof1106 : IsMapEvaluation generatorImages reduction1106.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1106.output := by lin_cert using reduction1106.terms
def map_97_97 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1142 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1142 : InImage map_97_97 image1142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1142 : Bundle := named_bundle% "RealMapCertificates/relations/basis1142.json"
theorem reductionProof1142 : EqualModuloRelations reduction1142.relations reduction1142.input reduction1142.output := by lin_cert using reduction1142.terms
theorem substitutionProof1142 : IsMapEvaluation generatorImages reduction1142.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1142.output := by lin_cert using reduction1142.terms
def map_98_98 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1161 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1161 : InImage map_98_98 image1161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1161 : Bundle := named_bundle% "RealMapCertificates/relations/basis1161.json"
theorem reductionProof1161 : EqualModuloRelations reduction1161.relations reduction1161.input reduction1161.output := by lin_cert using reduction1161.terms
theorem substitutionProof1161 : IsMapEvaluation generatorImages reduction1161.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1161.output := by lin_cert using reduction1161.terms
def map_99_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1184 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1184 : InImage map_99_99 image1184 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1184 : Bundle := named_bundle% "RealMapCertificates/relations/basis1184.json"
theorem reductionProof1184 : EqualModuloRelations reduction1184.relations reduction1184.input reduction1184.output := by lin_cert using reduction1184.terms
theorem substitutionProof1184 : IsMapEvaluation generatorImages reduction1184.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1184.output := by lin_cert using reduction1184.terms
def map_100_100 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1214 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1214 : InImage map_100_100 image1214 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1214 : Bundle := named_bundle% "RealMapCertificates/relations/basis1214.json"
theorem reductionProof1214 : EqualModuloRelations reduction1214.relations reduction1214.input reduction1214.output := by lin_cert using reduction1214.terms
theorem substitutionProof1214 : IsMapEvaluation generatorImages reduction1214.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1214.output := by lin_cert using reduction1214.terms
def map_101_101 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1246 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1246 : InImage map_101_101 image1246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1246 : Bundle := named_bundle% "RealMapCertificates/relations/basis1246.json"
theorem reductionProof1246 : EqualModuloRelations reduction1246.relations reduction1246.input reduction1246.output := by lin_cert using reduction1246.terms
theorem substitutionProof1246 : IsMapEvaluation generatorImages reduction1246.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1246.output := by lin_cert using reduction1246.terms
def map_102_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1271 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1271 : InImage map_102_102 image1271 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1271 : Bundle := named_bundle% "RealMapCertificates/relations/basis1271.json"
theorem reductionProof1271 : EqualModuloRelations reduction1271.relations reduction1271.input reduction1271.output := by lin_cert using reduction1271.terms
theorem substitutionProof1271 : IsMapEvaluation generatorImages reduction1271.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1271.output := by lin_cert using reduction1271.terms
def map_103_103 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1312 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1312 : InImage map_103_103 image1312 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1312 : Bundle := named_bundle% "RealMapCertificates/relations/basis1312.json"
theorem reductionProof1312 : EqualModuloRelations reduction1312.relations reduction1312.input reduction1312.output := by lin_cert using reduction1312.terms
theorem substitutionProof1312 : IsMapEvaluation generatorImages reduction1312.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1312.output := by lin_cert using reduction1312.terms
def map_104_104 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1340 : InImage map_104_104 image1340 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1340 : Bundle := named_bundle% "RealMapCertificates/relations/basis1340.json"
theorem reductionProof1340 : EqualModuloRelations reduction1340.relations reduction1340.input reduction1340.output := by lin_cert using reduction1340.terms
theorem substitutionProof1340 : IsMapEvaluation generatorImages reduction1340.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction1340.output := by lin_cert using reduction1340.terms
end RealMapCertificates
