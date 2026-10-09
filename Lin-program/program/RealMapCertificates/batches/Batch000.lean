import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 3 => []
  | 4 => [[3]]
  | 7 => []
  | 11 => []
  | 18 => []
  | 38 => []
  | 69 => []
  | 143 => []
  | 324 => []
  | 850 => []
  | 2626 => []
  | _ => []
def map_0_0 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image0 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation0 : InImage map_0_0 image0 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction0 : Bundle := named_bundle% "RealMapCertificates/relations/basis0.json"
theorem reductionProof0 : EqualModuloRelations reduction0.relations reduction0.input reduction0.output := by lin_cert using reduction0.terms
theorem substitutionProof0 : IsMapEvaluation generatorImages reduction0.relations [] reduction0.output := by lin_cert using reduction0.terms
def map_1_1 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1 : InImage map_1_1 image1 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1 : Bundle := named_bundle% "RealMapCertificates/relations/basis1.json"
theorem reductionProof1 : EqualModuloRelations reduction1.relations reduction1.input reduction1.output := by lin_cert using reduction1.terms
theorem substitutionProof1 : IsMapEvaluation generatorImages reduction1.relations [0] reduction1.output := by lin_cert using reduction1.terms
def map_1_2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3 : InImage map_1_2 image3 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3 : Bundle := named_bundle% "RealMapCertificates/relations/basis3.json"
theorem reductionProof3 : EqualModuloRelations reduction3.relations reduction3.input reduction3.output := by lin_cert using reduction3.terms
theorem substitutionProof3 : IsMapEvaluation generatorImages reduction3.relations [1] reduction3.output := by lin_cert using reduction3.terms
def map_1_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7 : InImage map_1_4 image7 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7 : Bundle := named_bundle% "RealMapCertificates/relations/basis7.json"
theorem reductionProof7 : EqualModuloRelations reduction7.relations reduction7.input reduction7.output := by lin_cert using reduction7.terms
theorem substitutionProof7 : IsMapEvaluation generatorImages reduction7.relations [2] reduction7.output := by lin_cert using reduction7.terms
def map_1_8 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15 : InImage map_1_8 image15 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15 : Bundle := named_bundle% "RealMapCertificates/relations/basis15.json"
theorem reductionProof15 : EqualModuloRelations reduction15.relations reduction15.input reduction15.output := by lin_cert using reduction15.terms
theorem substitutionProof15 : IsMapEvaluation generatorImages reduction15.relations [3] reduction15.output := by lin_cert using reduction15.terms
def map_1_16 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image35 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation35 : InImage map_1_16 image35 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction35 : Bundle := named_bundle% "RealMapCertificates/relations/basis35.json"
theorem reductionProof35 : EqualModuloRelations reduction35.relations reduction35.input reduction35.output := by lin_cert using reduction35.terms
theorem substitutionProof35 : IsMapEvaluation generatorImages reduction35.relations [7] reduction35.output := by lin_cert using reduction35.terms
def map_1_32 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation105 : InImage map_1_32 image105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction105 : Bundle := named_bundle% "RealMapCertificates/relations/basis105.json"
theorem reductionProof105 : EqualModuloRelations reduction105.relations reduction105.input reduction105.output := by lin_cert using reduction105.terms
theorem substitutionProof105 : IsMapEvaluation generatorImages reduction105.relations [18] reduction105.output := by lin_cert using reduction105.terms
def map_1_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation401 : InImage map_1_64 image401 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction401 : Bundle := named_bundle% "RealMapCertificates/relations/basis401.json"
theorem reductionProof401 : EqualModuloRelations reduction401.relations reduction401.input reduction401.output := by lin_cert using reduction401.terms
theorem substitutionProof401 : IsMapEvaluation generatorImages reduction401.relations [69] reduction401.output := by lin_cert using reduction401.terms
def map_1_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2315 : InImage map_1_128 image2315 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2315 : Bundle := named_bundle% "RealMapCertificates/relations/basis2315.json"
theorem reductionProof2315 : EqualModuloRelations reduction2315.relations reduction2315.input reduction2315.output := by lin_cert using reduction2315.terms
theorem substitutionProof2315 : IsMapEvaluation generatorImages reduction2315.relations [324] reduction2315.output := by lin_cert using reduction2315.terms
def map_1_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21963 : InImage map_1_256 image21963 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21963 : Bundle := named_bundle% "RealMapCertificates/relations/basis21963.json"
theorem reductionProof21963 : EqualModuloRelations reduction21963.relations reduction21963.input reduction21963.output := by lin_cert using reduction21963.terms
theorem substitutionProof21963 : IsMapEvaluation generatorImages reduction21963.relations [2626] reduction21963.output := by lin_cert using reduction21963.terms
def map_2_2 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2 : InImage map_2_2 image2 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2 : Bundle := named_bundle% "RealMapCertificates/relations/basis2.json"
theorem reductionProof2 : EqualModuloRelations reduction2.relations reduction2.input reduction2.output := by lin_cert using reduction2.terms
theorem substitutionProof2 : IsMapEvaluation generatorImages reduction2.relations [0,0] reduction2.output := by lin_cert using reduction2.terms
def map_2_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6 : InImage map_2_4 image6 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6 : Bundle := named_bundle% "RealMapCertificates/relations/basis6.json"
theorem reductionProof6 : EqualModuloRelations reduction6.relations reduction6.input reduction6.output := by lin_cert using reduction6.terms
theorem substitutionProof6 : IsMapEvaluation generatorImages reduction6.relations [1,1] reduction6.output := by lin_cert using reduction6.terms
def map_2_5 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9 : InImage map_2_5 image9 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9 : Bundle := named_bundle% "RealMapCertificates/relations/basis9.json"
theorem reductionProof9 : EqualModuloRelations reduction9.relations reduction9.input reduction9.output := by lin_cert using reduction9.terms
theorem substitutionProof9 : IsMapEvaluation generatorImages reduction9.relations [0,2] reduction9.output := by lin_cert using reduction9.terms
def map_2_8 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14 : InImage map_2_8 image14 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14 : Bundle := named_bundle% "RealMapCertificates/relations/basis14.json"
theorem reductionProof14 : EqualModuloRelations reduction14.relations reduction14.input reduction14.output := by lin_cert using reduction14.terms
theorem substitutionProof14 : IsMapEvaluation generatorImages reduction14.relations [2,2] reduction14.output := by lin_cert using reduction14.terms
def map_2_9 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17 : InImage map_2_9 image17 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17 : Bundle := named_bundle% "RealMapCertificates/relations/basis17.json"
theorem reductionProof17 : EqualModuloRelations reduction17.relations reduction17.input reduction17.output := by lin_cert using reduction17.terms
theorem substitutionProof17 : IsMapEvaluation generatorImages reduction17.relations [0,3] reduction17.output := by lin_cert using reduction17.terms
def map_2_10 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20 : InImage map_2_10 image20 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20 : Bundle := named_bundle% "RealMapCertificates/relations/basis20.json"
theorem reductionProof20 : EqualModuloRelations reduction20.relations reduction20.input reduction20.output := by lin_cert using reduction20.terms
theorem substitutionProof20 : IsMapEvaluation generatorImages reduction20.relations [1,3] reduction20.output := by lin_cert using reduction20.terms
def map_2_16 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image34 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation34 : InImage map_2_16 image34 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction34 : Bundle := named_bundle% "RealMapCertificates/relations/basis34.json"
theorem reductionProof34 : EqualModuloRelations reduction34.relations reduction34.input reduction34.output := by lin_cert using reduction34.terms
theorem substitutionProof34 : IsMapEvaluation generatorImages reduction34.relations [3,3] reduction34.output := by lin_cert using reduction34.terms
def map_2_17 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image39 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation39 : InImage map_2_17 image39 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction39 : Bundle := named_bundle% "RealMapCertificates/relations/basis39.json"
theorem reductionProof39 : EqualModuloRelations reduction39.relations reduction39.input reduction39.output := by lin_cert using reduction39.terms
theorem substitutionProof39 : IsMapEvaluation generatorImages reduction39.relations [0,7] reduction39.output := by lin_cert using reduction39.terms
def map_2_18 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image44 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation44 : InImage map_2_18 image44 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction44 : Bundle := named_bundle% "RealMapCertificates/relations/basis44.json"
theorem reductionProof44 : EqualModuloRelations reduction44.relations reduction44.input reduction44.output := by lin_cert using reduction44.terms
theorem substitutionProof44 : IsMapEvaluation generatorImages reduction44.relations [1,7] reduction44.output := by lin_cert using reduction44.terms
def map_2_20 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image53 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation53 : InImage map_2_20 image53 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction53 : Bundle := named_bundle% "RealMapCertificates/relations/basis53.json"
theorem reductionProof53 : EqualModuloRelations reduction53.relations reduction53.input reduction53.output := by lin_cert using reduction53.terms
theorem substitutionProof53 : IsMapEvaluation generatorImages reduction53.relations [2,7] reduction53.output := by lin_cert using reduction53.terms
def map_2_32 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation104 : InImage map_2_32 image104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction104 : Bundle := named_bundle% "RealMapCertificates/relations/basis104.json"
theorem reductionProof104 : EqualModuloRelations reduction104.relations reduction104.input reduction104.output := by lin_cert using reduction104.terms
theorem substitutionProof104 : IsMapEvaluation generatorImages reduction104.relations [7,7] reduction104.output := by lin_cert using reduction104.terms
def map_2_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation111 : InImage map_2_33 image111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction111 : Bundle := named_bundle% "RealMapCertificates/relations/basis111.json"
theorem reductionProof111 : EqualModuloRelations reduction111.relations reduction111.input reduction111.output := by lin_cert using reduction111.terms
theorem substitutionProof111 : IsMapEvaluation generatorImages reduction111.relations [0,18] reduction111.output := by lin_cert using reduction111.terms
def map_2_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation120 : InImage map_2_34 image120 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction120 : Bundle := named_bundle% "RealMapCertificates/relations/basis120.json"
theorem reductionProof120 : EqualModuloRelations reduction120.relations reduction120.input reduction120.output := by lin_cert using reduction120.terms
theorem substitutionProof120 : IsMapEvaluation generatorImages reduction120.relations [1,18] reduction120.output := by lin_cert using reduction120.terms
def map_2_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation137 : InImage map_2_36 image137 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction137 : Bundle := named_bundle% "RealMapCertificates/relations/basis137.json"
theorem reductionProof137 : EqualModuloRelations reduction137.relations reduction137.input reduction137.output := by lin_cert using reduction137.terms
theorem substitutionProof137 : IsMapEvaluation generatorImages reduction137.relations [2,18] reduction137.output := by lin_cert using reduction137.terms
def map_2_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation171 : InImage map_2_40 image171 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction171 : Bundle := named_bundle% "RealMapCertificates/relations/basis171.json"
theorem reductionProof171 : EqualModuloRelations reduction171.relations reduction171.input reduction171.output := by lin_cert using reduction171.terms
theorem substitutionProof171 : IsMapEvaluation generatorImages reduction171.relations [3,18] reduction171.output := by lin_cert using reduction171.terms
def map_2_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation400 : InImage map_2_64 image400 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction400 : Bundle := named_bundle% "RealMapCertificates/relations/basis400.json"
theorem reductionProof400 : EqualModuloRelations reduction400.relations reduction400.input reduction400.output := by lin_cert using reduction400.terms
theorem substitutionProof400 : IsMapEvaluation generatorImages reduction400.relations [18,18] reduction400.output := by lin_cert using reduction400.terms
def map_2_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation417 : InImage map_2_65 image417 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction417 : Bundle := named_bundle% "RealMapCertificates/relations/basis417.json"
theorem reductionProof417 : EqualModuloRelations reduction417.relations reduction417.input reduction417.output := by lin_cert using reduction417.terms
theorem substitutionProof417 : IsMapEvaluation generatorImages reduction417.relations [0,69] reduction417.output := by lin_cert using reduction417.terms
def map_2_66 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation438 : InImage map_2_66 image438 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction438 : Bundle := named_bundle% "RealMapCertificates/relations/basis438.json"
theorem reductionProof438 : EqualModuloRelations reduction438.relations reduction438.input reduction438.output := by lin_cert using reduction438.terms
theorem substitutionProof438 : IsMapEvaluation generatorImages reduction438.relations [1,69] reduction438.output := by lin_cert using reduction438.terms
def map_2_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation475 : InImage map_2_68 image475 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction475 : Bundle := named_bundle% "RealMapCertificates/relations/basis475.json"
theorem reductionProof475 : EqualModuloRelations reduction475.relations reduction475.input reduction475.output := by lin_cert using reduction475.terms
theorem substitutionProof475 : IsMapEvaluation generatorImages reduction475.relations [2,69] reduction475.output := by lin_cert using reduction475.terms
def map_2_72 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation563 : InImage map_2_72 image563 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction563 : Bundle := named_bundle% "RealMapCertificates/relations/basis563.json"
theorem reductionProof563 : EqualModuloRelations reduction563.relations reduction563.input reduction563.output := by lin_cert using reduction563.terms
theorem substitutionProof563 : IsMapEvaluation generatorImages reduction563.relations [3,69] reduction563.output := by lin_cert using reduction563.terms
def map_2_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation733 : InImage map_2_80 image733 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction733 : Bundle := named_bundle% "RealMapCertificates/relations/basis733.json"
theorem reductionProof733 : EqualModuloRelations reduction733.relations reduction733.input reduction733.output := by lin_cert using reduction733.terms
theorem substitutionProof733 : IsMapEvaluation generatorImages reduction733.relations [7,69] reduction733.output := by lin_cert using reduction733.terms
def map_2_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2314 : InImage map_2_128 image2314 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2314 : Bundle := named_bundle% "RealMapCertificates/relations/basis2314.json"
theorem reductionProof2314 : EqualModuloRelations reduction2314.relations reduction2314.input reduction2314.output := by lin_cert using reduction2314.terms
theorem substitutionProof2314 : IsMapEvaluation generatorImages reduction2314.relations [69,69] reduction2314.output := by lin_cert using reduction2314.terms
def map_2_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2381 : InImage map_2_129 image2381 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2381 : Bundle := named_bundle% "RealMapCertificates/relations/basis2381.json"
theorem reductionProof2381 : EqualModuloRelations reduction2381.relations reduction2381.input reduction2381.output := by lin_cert using reduction2381.terms
theorem substitutionProof2381 : IsMapEvaluation generatorImages reduction2381.relations [0,324] reduction2381.output := by lin_cert using reduction2381.terms
def map_2_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2440 : InImage map_2_130 image2440 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2440 : Bundle := named_bundle% "RealMapCertificates/relations/basis2440.json"
theorem reductionProof2440 : EqualModuloRelations reduction2440.relations reduction2440.input reduction2440.output := by lin_cert using reduction2440.terms
theorem substitutionProof2440 : IsMapEvaluation generatorImages reduction2440.relations [1,324] reduction2440.output := by lin_cert using reduction2440.terms
def map_2_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2579 : InImage map_2_132 image2579 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2579 : Bundle := named_bundle% "RealMapCertificates/relations/basis2579.json"
theorem reductionProof2579 : EqualModuloRelations reduction2579.relations reduction2579.input reduction2579.output := by lin_cert using reduction2579.terms
theorem substitutionProof2579 : IsMapEvaluation generatorImages reduction2579.relations [2,324] reduction2579.output := by lin_cert using reduction2579.terms
def map_2_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2871 : InImage map_2_136 image2871 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2871 : Bundle := named_bundle% "RealMapCertificates/relations/basis2871.json"
theorem reductionProof2871 : EqualModuloRelations reduction2871.relations reduction2871.input reduction2871.output := by lin_cert using reduction2871.terms
theorem substitutionProof2871 : IsMapEvaluation generatorImages reduction2871.relations [3,324] reduction2871.output := by lin_cert using reduction2871.terms
def map_2_144 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3535 : InImage map_2_144 image3535 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3535 : Bundle := named_bundle% "RealMapCertificates/relations/basis3535.json"
theorem reductionProof3535 : EqualModuloRelations reduction3535.relations reduction3535.input reduction3535.output := by lin_cert using reduction3535.terms
theorem substitutionProof3535 : IsMapEvaluation generatorImages reduction3535.relations [7,324] reduction3535.output := by lin_cert using reduction3535.terms
def map_2_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4917 : InImage map_2_160 image4917 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4917 : Bundle := named_bundle% "RealMapCertificates/relations/basis4917.json"
theorem reductionProof4917 : EqualModuloRelations reduction4917.relations reduction4917.input reduction4917.output := by lin_cert using reduction4917.terms
theorem substitutionProof4917 : IsMapEvaluation generatorImages reduction4917.relations [18,324] reduction4917.output := by lin_cert using reduction4917.terms
def map_2_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21962 : InImage map_2_256 image21962 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21962 : Bundle := named_bundle% "RealMapCertificates/relations/basis21962.json"
theorem reductionProof21962 : EqualModuloRelations reduction21962.relations reduction21962.input reduction21962.output := by lin_cert using reduction21962.terms
theorem substitutionProof21962 : IsMapEvaluation generatorImages reduction21962.relations [324,324] reduction21962.output := by lin_cert using reduction21962.terms
def map_2_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22297 : InImage map_2_257 image22297 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22297 : Bundle := named_bundle% "RealMapCertificates/relations/basis22297.json"
theorem reductionProof22297 : EqualModuloRelations reduction22297.relations reduction22297.input reduction22297.output := by lin_cert using reduction22297.terms
theorem substitutionProof22297 : IsMapEvaluation generatorImages reduction22297.relations [0,2626] reduction22297.output := by lin_cert using reduction22297.terms
def map_2_258 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22678 : InImage map_2_258 image22678 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22678 : Bundle := named_bundle% "RealMapCertificates/relations/basis22678.json"
theorem reductionProof22678 : EqualModuloRelations reduction22678.relations reduction22678.input reduction22678.output := by lin_cert using reduction22678.terms
theorem substitutionProof22678 : IsMapEvaluation generatorImages reduction22678.relations [1,2626] reduction22678.output := by lin_cert using reduction22678.terms
def map_2_260 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image23405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23405 : InImage map_2_260 image23405 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23405 : Bundle := named_bundle% "RealMapCertificates/relations/basis23405.json"
theorem reductionProof23405 : EqualModuloRelations reduction23405.relations reduction23405.input reduction23405.output := by lin_cert using reduction23405.terms
theorem substitutionProof23405 : IsMapEvaluation generatorImages reduction23405.relations [2,2626] reduction23405.output := by lin_cert using reduction23405.terms
def map_3_3 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4 : InImage map_3_3 image4 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4 : Bundle := named_bundle% "RealMapCertificates/relations/basis4.json"
theorem reductionProof4 : EqualModuloRelations reduction4.relations reduction4.input reduction4.output := by lin_cert using reduction4.terms
theorem substitutionProof4 : IsMapEvaluation generatorImages reduction4.relations [0,0,0] reduction4.output := by lin_cert using reduction4.terms
def map_3_6 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11 : InImage map_3_6 image11 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11 : Bundle := named_bundle% "RealMapCertificates/relations/basis11.json"
theorem reductionProof11 : EqualModuloRelations reduction11.relations reduction11.input reduction11.output := by lin_cert using reduction11.terms
theorem substitutionProof11 : IsMapEvaluation generatorImages reduction11.relations [0,0,2] reduction11.output := by lin_cert using reduction11.terms
def map_3_10 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19 : InImage map_3_10 image19 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19 : Bundle := named_bundle% "RealMapCertificates/relations/basis19.json"
theorem reductionProof19 : EqualModuloRelations reduction19.relations reduction19.input reduction19.output := by lin_cert using reduction19.terms
theorem substitutionProof19 : IsMapEvaluation generatorImages reduction19.relations [0,0,3] reduction19.output := by lin_cert using reduction19.terms
def map_3_11 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image23 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23 : InImage map_3_11 image23 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23 : Bundle := named_bundle% "RealMapCertificates/relations/basis23.json"
theorem reductionProof23 : EqualModuloRelations reduction23.relations reduction23.input reduction23.output := by lin_cert using reduction23.terms
theorem substitutionProof23 : IsMapEvaluation generatorImages reduction23.relations [4] reduction23.output := by lin_cert using reduction23.terms
def map_3_12 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image25 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation25 : InImage map_3_12 image25 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction25 : Bundle := named_bundle% "RealMapCertificates/relations/basis25.json"
theorem reductionProof25 : EqualModuloRelations reduction25.relations reduction25.input reduction25.output := by lin_cert using reduction25.terms
theorem substitutionProof25 : IsMapEvaluation generatorImages reduction25.relations [1,1,3] reduction25.output := by lin_cert using reduction25.terms
def map_3_17 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image38 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation38 : InImage map_3_17 image38 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction38 : Bundle := named_bundle% "RealMapCertificates/relations/basis38.json"
theorem reductionProof38 : EqualModuloRelations reduction38.relations reduction38.input reduction38.output := by lin_cert using reduction38.terms
theorem substitutionProof38 : IsMapEvaluation generatorImages reduction38.relations [0,3,3] reduction38.output := by lin_cert using reduction38.terms
def map_3_18 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image43 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation43 : InImage map_3_18 image43 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction43 : Bundle := named_bundle% "RealMapCertificates/relations/basis43.json"
theorem reductionProof43 : EqualModuloRelations reduction43.relations reduction43.input reduction43.output := by lin_cert using reduction43.terms
theorem substitutionProof43 : IsMapEvaluation generatorImages reduction43.relations [0,0,7] reduction43.output := by lin_cert using reduction43.terms
def map_3_20 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image52 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation52 : InImage map_3_20 image52 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction52 : Bundle := named_bundle% "RealMapCertificates/relations/basis52.json"
theorem reductionProof52 : EqualModuloRelations reduction52.relations reduction52.input reduction52.output := by lin_cert using reduction52.terms
theorem substitutionProof52 : IsMapEvaluation generatorImages reduction52.relations [1,1,7] reduction52.output := by lin_cert using reduction52.terms
def map_3_21 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image57 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation57 : InImage map_3_21 image57 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction57 : Bundle := named_bundle% "RealMapCertificates/relations/basis57.json"
theorem reductionProof57 : EqualModuloRelations reduction57.relations reduction57.input reduction57.output := by lin_cert using reduction57.terms
theorem substitutionProof57 : IsMapEvaluation generatorImages reduction57.relations [0,2,7] reduction57.output := by lin_cert using reduction57.terms
def map_3_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image64 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation64 : InImage map_3_22 image64 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction64 : Bundle := named_bundle% "RealMapCertificates/relations/basis64.json"
theorem reductionProof64 : EqualModuloRelations reduction64.relations reduction64.input reduction64.output := by lin_cert using reduction64.terms
theorem substitutionProof64 : IsMapEvaluation generatorImages reduction64.relations [11] reduction64.output := by lin_cert using reduction64.terms
def map_3_24 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image73 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation73 : InImage map_3_24 image73 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction73 : Bundle := named_bundle% "RealMapCertificates/relations/basis73.json"
theorem reductionProof73 : EqualModuloRelations reduction73.relations reduction73.input reduction73.output := by lin_cert using reduction73.terms
theorem substitutionProof73 : IsMapEvaluation generatorImages reduction73.relations [2,2,7] reduction73.output := by lin_cert using reduction73.terms
def map_3_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation110 : InImage map_3_33 image110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction110 : Bundle := named_bundle% "RealMapCertificates/relations/basis110.json"
theorem reductionProof110 : EqualModuloRelations reduction110.relations reduction110.input reduction110.output := by lin_cert using reduction110.terms
theorem substitutionProof110 : IsMapEvaluation generatorImages reduction110.relations [0,7,7] reduction110.output := by lin_cert using reduction110.terms
def map_3_34 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation118 : InImage map_3_34 image118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction118 : Bundle := named_bundle% "RealMapCertificates/relations/basis118.json"
theorem reductionProof118 : EqualModuloRelations reduction118.relations reduction118.input reduction118.output := by lin_cert using reduction118.terms
theorem substitutionProof118 : IsMapEvaluation generatorImages reduction118.relations [1,7,7] reduction118.output := by lin_cert using reduction118.terms
def image119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation119 : InImage map_3_34 image119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction119 : Bundle := named_bundle% "RealMapCertificates/relations/basis119.json"
theorem reductionProof119 : EqualModuloRelations reduction119.relations reduction119.input reduction119.output := by lin_cert using reduction119.terms
theorem substitutionProof119 : IsMapEvaluation generatorImages reduction119.relations [0,0,18] reduction119.output := by lin_cert using reduction119.terms
def map_3_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation136 : InImage map_3_36 image136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction136 : Bundle := named_bundle% "RealMapCertificates/relations/basis136.json"
theorem reductionProof136 : EqualModuloRelations reduction136.relations reduction136.input reduction136.output := by lin_cert using reduction136.terms
theorem substitutionProof136 : IsMapEvaluation generatorImages reduction136.relations [1,1,18] reduction136.output := by lin_cert using reduction136.terms
def map_3_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation145 : InImage map_3_37 image145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction145 : Bundle := named_bundle% "RealMapCertificates/relations/basis145.json"
theorem reductionProof145 : EqualModuloRelations reduction145.relations reduction145.input reduction145.output := by lin_cert using reduction145.terms
theorem substitutionProof145 : IsMapEvaluation generatorImages reduction145.relations [0,2,18] reduction145.output := by lin_cert using reduction145.terms
def map_3_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation170 : InImage map_3_40 image170 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction170 : Bundle := named_bundle% "RealMapCertificates/relations/basis170.json"
theorem reductionProof170 : EqualModuloRelations reduction170.relations reduction170.input reduction170.output := by lin_cert using reduction170.terms
theorem substitutionProof170 : IsMapEvaluation generatorImages reduction170.relations [2,2,18] reduction170.output := by lin_cert using reduction170.terms
def map_3_41 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation178 : InImage map_3_41 image178 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction178 : Bundle := named_bundle% "RealMapCertificates/relations/basis178.json"
theorem reductionProof178 : EqualModuloRelations reduction178.relations reduction178.input reduction178.output := by lin_cert using reduction178.terms
theorem substitutionProof178 : IsMapEvaluation generatorImages reduction178.relations [0,3,18] reduction178.output := by lin_cert using reduction178.terms
def map_3_42 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation189 : InImage map_3_42 image189 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction189 : Bundle := named_bundle% "RealMapCertificates/relations/basis189.json"
theorem reductionProof189 : EqualModuloRelations reduction189.relations reduction189.input reduction189.output := by lin_cert using reduction189.terms
theorem substitutionProof189 : IsMapEvaluation generatorImages reduction189.relations [1,3,18] reduction189.output := by lin_cert using reduction189.terms
def map_3_44 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation211 : InImage map_3_44 image211 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction211 : Bundle := named_bundle% "RealMapCertificates/relations/basis211.json"
theorem reductionProof211 : EqualModuloRelations reduction211.relations reduction211.input reduction211.output := by lin_cert using reduction211.terms
theorem substitutionProof211 : IsMapEvaluation generatorImages reduction211.relations [38] reduction211.output := by lin_cert using reduction211.terms
def map_3_48 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation249 : InImage map_3_48 image249 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction249 : Bundle := named_bundle% "RealMapCertificates/relations/basis249.json"
theorem reductionProof249 : EqualModuloRelations reduction249.relations reduction249.input reduction249.output := by lin_cert using reduction249.terms
theorem substitutionProof249 : IsMapEvaluation generatorImages reduction249.relations [3,3,18] reduction249.output := by lin_cert using reduction249.terms
def map_3_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation416 : InImage map_3_65 image416 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction416 : Bundle := named_bundle% "RealMapCertificates/relations/basis416.json"
theorem reductionProof416 : EqualModuloRelations reduction416.relations reduction416.input reduction416.output := by lin_cert using reduction416.terms
theorem substitutionProof416 : IsMapEvaluation generatorImages reduction416.relations [0,18,18] reduction416.output := by lin_cert using reduction416.terms
def map_3_66 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation436 : InImage map_3_66 image436 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction436 : Bundle := named_bundle% "RealMapCertificates/relations/basis436.json"
theorem reductionProof436 : EqualModuloRelations reduction436.relations reduction436.input reduction436.output := by lin_cert using reduction436.terms
theorem substitutionProof436 : IsMapEvaluation generatorImages reduction436.relations [1,18,18] reduction436.output := by lin_cert using reduction436.terms
def image437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation437 : InImage map_3_66 image437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction437 : Bundle := named_bundle% "RealMapCertificates/relations/basis437.json"
theorem reductionProof437 : EqualModuloRelations reduction437.relations reduction437.input reduction437.output := by lin_cert using reduction437.terms
theorem substitutionProof437 : IsMapEvaluation generatorImages reduction437.relations [0,0,69] reduction437.output := by lin_cert using reduction437.terms
def map_3_68 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation473 : InImage map_3_68 image473 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction473 : Bundle := named_bundle% "RealMapCertificates/relations/basis473.json"
theorem reductionProof473 : EqualModuloRelations reduction473.relations reduction473.input reduction473.output := by lin_cert using reduction473.terms
theorem substitutionProof473 : IsMapEvaluation generatorImages reduction473.relations [2,18,18] reduction473.output := by lin_cert using reduction473.terms
def image474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation474 : InImage map_3_68 image474 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction474 : Bundle := named_bundle% "RealMapCertificates/relations/basis474.json"
theorem reductionProof474 : EqualModuloRelations reduction474.relations reduction474.input reduction474.output := by lin_cert using reduction474.terms
theorem substitutionProof474 : IsMapEvaluation generatorImages reduction474.relations [1,1,69] reduction474.output := by lin_cert using reduction474.terms
def map_3_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation497 : InImage map_3_69 image497 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction497 : Bundle := named_bundle% "RealMapCertificates/relations/basis497.json"
theorem reductionProof497 : EqualModuloRelations reduction497.relations reduction497.input reduction497.output := by lin_cert using reduction497.terms
theorem substitutionProof497 : IsMapEvaluation generatorImages reduction497.relations [0,2,69] reduction497.output := by lin_cert using reduction497.terms
def map_3_72 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation562 : InImage map_3_72 image562 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction562 : Bundle := named_bundle% "RealMapCertificates/relations/basis562.json"
theorem reductionProof562 : EqualModuloRelations reduction562.relations reduction562.input reduction562.output := by lin_cert using reduction562.terms
theorem substitutionProof562 : IsMapEvaluation generatorImages reduction562.relations [2,2,69] reduction562.output := by lin_cert using reduction562.terms
def map_3_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation582 : InImage map_3_73 image582 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction582 : Bundle := named_bundle% "RealMapCertificates/relations/basis582.json"
theorem reductionProof582 : EqualModuloRelations reduction582.relations reduction582.input reduction582.output := by lin_cert using reduction582.terms
theorem substitutionProof582 : IsMapEvaluation generatorImages reduction582.relations [0,3,69] reduction582.output := by lin_cert using reduction582.terms
def map_3_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation605 : InImage map_3_74 image605 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction605 : Bundle := named_bundle% "RealMapCertificates/relations/basis605.json"
theorem reductionProof605 : EqualModuloRelations reduction605.relations reduction605.input reduction605.output := by lin_cert using reduction605.terms
theorem substitutionProof605 : IsMapEvaluation generatorImages reduction605.relations [1,3,69] reduction605.output := by lin_cert using reduction605.terms
def map_3_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation732 : InImage map_3_80 image732 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction732 : Bundle := named_bundle% "RealMapCertificates/relations/basis732.json"
theorem reductionProof732 : EqualModuloRelations reduction732.relations reduction732.input reduction732.output := by lin_cert using reduction732.terms
theorem substitutionProof732 : IsMapEvaluation generatorImages reduction732.relations [3,3,69] reduction732.output := by lin_cert using reduction732.terms
def map_3_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation758 : InImage map_3_81 image758 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction758 : Bundle := named_bundle% "RealMapCertificates/relations/basis758.json"
theorem reductionProof758 : EqualModuloRelations reduction758.relations reduction758.input reduction758.output := by lin_cert using reduction758.terms
theorem substitutionProof758 : IsMapEvaluation generatorImages reduction758.relations [0,7,69] reduction758.output := by lin_cert using reduction758.terms
def map_3_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation779 : InImage map_3_82 image779 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction779 : Bundle := named_bundle% "RealMapCertificates/relations/basis779.json"
theorem reductionProof779 : EqualModuloRelations reduction779.relations reduction779.input reduction779.output := by lin_cert using reduction779.terms
theorem substitutionProof779 : IsMapEvaluation generatorImages reduction779.relations [1,7,69] reduction779.output := by lin_cert using reduction779.terms
def map_3_84 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation835 : InImage map_3_84 image835 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction835 : Bundle := named_bundle% "RealMapCertificates/relations/basis835.json"
theorem reductionProof835 : EqualModuloRelations reduction835.relations reduction835.input reduction835.output := by lin_cert using reduction835.terms
theorem substitutionProof835 : IsMapEvaluation generatorImages reduction835.relations [2,7,69] reduction835.output := by lin_cert using reduction835.terms
def map_3_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation934 : InImage map_3_88 image934 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction934 : Bundle := named_bundle% "RealMapCertificates/relations/basis934.json"
theorem reductionProof934 : EqualModuloRelations reduction934.relations reduction934.input reduction934.output := by lin_cert using reduction934.terms
theorem substitutionProof934 : IsMapEvaluation generatorImages reduction934.relations [143] reduction934.output := by lin_cert using reduction934.terms
def map_3_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1141 : InImage map_3_96 image1141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1141 : Bundle := named_bundle% "RealMapCertificates/relations/basis1141.json"
theorem reductionProof1141 : EqualModuloRelations reduction1141.relations reduction1141.input reduction1141.output := by lin_cert using reduction1141.terms
theorem substitutionProof1141 : IsMapEvaluation generatorImages reduction1141.relations [7,7,69] reduction1141.output := by lin_cert using reduction1141.terms
def map_3_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2380 : InImage map_3_129 image2380 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2380 : Bundle := named_bundle% "RealMapCertificates/relations/basis2380.json"
theorem reductionProof2380 : EqualModuloRelations reduction2380.relations reduction2380.input reduction2380.output := by lin_cert using reduction2380.terms
theorem substitutionProof2380 : IsMapEvaluation generatorImages reduction2380.relations [0,69,69] reduction2380.output := by lin_cert using reduction2380.terms
def map_3_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2438 : InImage map_3_130 image2438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2438 : Bundle := named_bundle% "RealMapCertificates/relations/basis2438.json"
theorem reductionProof2438 : EqualModuloRelations reduction2438.relations reduction2438.input reduction2438.output := by lin_cert using reduction2438.terms
theorem substitutionProof2438 : IsMapEvaluation generatorImages reduction2438.relations [1,69,69] reduction2438.output := by lin_cert using reduction2438.terms
def image2439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2439 : InImage map_3_130 image2439 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2439 : Bundle := named_bundle% "RealMapCertificates/relations/basis2439.json"
theorem reductionProof2439 : EqualModuloRelations reduction2439.relations reduction2439.input reduction2439.output := by lin_cert using reduction2439.terms
theorem substitutionProof2439 : IsMapEvaluation generatorImages reduction2439.relations [0,0,324] reduction2439.output := by lin_cert using reduction2439.terms
def map_3_132 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2577 : InImage map_3_132 image2577 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2577 : Bundle := named_bundle% "RealMapCertificates/relations/basis2577.json"
theorem reductionProof2577 : EqualModuloRelations reduction2577.relations reduction2577.input reduction2577.output := by lin_cert using reduction2577.terms
theorem substitutionProof2577 : IsMapEvaluation generatorImages reduction2577.relations [2,69,69] reduction2577.output := by lin_cert using reduction2577.terms
def image2578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2578 : InImage map_3_132 image2578 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2578 : Bundle := named_bundle% "RealMapCertificates/relations/basis2578.json"
theorem reductionProof2578 : EqualModuloRelations reduction2578.relations reduction2578.input reduction2578.output := by lin_cert using reduction2578.terms
theorem substitutionProof2578 : IsMapEvaluation generatorImages reduction2578.relations [1,1,324] reduction2578.output := by lin_cert using reduction2578.terms
def map_3_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2637 : InImage map_3_133 image2637 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2637 : Bundle := named_bundle% "RealMapCertificates/relations/basis2637.json"
theorem reductionProof2637 : EqualModuloRelations reduction2637.relations reduction2637.input reduction2637.output := by lin_cert using reduction2637.terms
theorem substitutionProof2637 : IsMapEvaluation generatorImages reduction2637.relations [0,2,324] reduction2637.output := by lin_cert using reduction2637.terms
def map_3_136 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2869 : InImage map_3_136 image2869 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2869 : Bundle := named_bundle% "RealMapCertificates/relations/basis2869.json"
theorem reductionProof2869 : EqualModuloRelations reduction2869.relations reduction2869.input reduction2869.output := by lin_cert using reduction2869.terms
theorem substitutionProof2869 : IsMapEvaluation generatorImages reduction2869.relations [3,69,69] reduction2869.output := by lin_cert using reduction2869.terms
def image2870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2870 : InImage map_3_136 image2870 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2870 : Bundle := named_bundle% "RealMapCertificates/relations/basis2870.json"
theorem reductionProof2870 : EqualModuloRelations reduction2870.relations reduction2870.input reduction2870.output := by lin_cert using reduction2870.terms
theorem substitutionProof2870 : IsMapEvaluation generatorImages reduction2870.relations [2,2,324] reduction2870.output := by lin_cert using reduction2870.terms
def map_3_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2942 : InImage map_3_137 image2942 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2942 : Bundle := named_bundle% "RealMapCertificates/relations/basis2942.json"
theorem reductionProof2942 : EqualModuloRelations reduction2942.relations reduction2942.input reduction2942.output := by lin_cert using reduction2942.terms
theorem substitutionProof2942 : IsMapEvaluation generatorImages reduction2942.relations [0,3,324] reduction2942.output := by lin_cert using reduction2942.terms
def map_3_138 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3041 : InImage map_3_138 image3041 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3041 : Bundle := named_bundle% "RealMapCertificates/relations/basis3041.json"
theorem reductionProof3041 : EqualModuloRelations reduction3041.relations reduction3041.input reduction3041.output := by lin_cert using reduction3041.terms
theorem substitutionProof3041 : IsMapEvaluation generatorImages reduction3041.relations [1,3,324] reduction3041.output := by lin_cert using reduction3041.terms
def map_3_144 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3534 : InImage map_3_144 image3534 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3534 : Bundle := named_bundle% "RealMapCertificates/relations/basis3534.json"
theorem reductionProof3534 : EqualModuloRelations reduction3534.relations reduction3534.input reduction3534.output := by lin_cert using reduction3534.terms
theorem substitutionProof3534 : IsMapEvaluation generatorImages reduction3534.relations [3,3,324] reduction3534.output := by lin_cert using reduction3534.terms
def map_3_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3600 : InImage map_3_145 image3600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3600 : Bundle := named_bundle% "RealMapCertificates/relations/basis3600.json"
theorem reductionProof3600 : EqualModuloRelations reduction3600.relations reduction3600.input reduction3600.output := by lin_cert using reduction3600.terms
theorem substitutionProof3600 : IsMapEvaluation generatorImages reduction3600.relations [0,7,324] reduction3600.output := by lin_cert using reduction3600.terms
def map_3_146 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3697 : InImage map_3_146 image3697 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3697 : Bundle := named_bundle% "RealMapCertificates/relations/basis3697.json"
theorem reductionProof3697 : EqualModuloRelations reduction3697.relations reduction3697.input reduction3697.output := by lin_cert using reduction3697.terms
theorem substitutionProof3697 : IsMapEvaluation generatorImages reduction3697.relations [1,7,324] reduction3697.output := by lin_cert using reduction3697.terms
def map_3_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3871 : InImage map_3_148 image3871 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3871 : Bundle := named_bundle% "RealMapCertificates/relations/basis3871.json"
theorem reductionProof3871 : EqualModuloRelations reduction3871.relations reduction3871.input reduction3871.output := by lin_cert using reduction3871.terms
theorem substitutionProof3871 : IsMapEvaluation generatorImages reduction3871.relations [2,7,324] reduction3871.output := by lin_cert using reduction3871.terms
def map_3_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4916 : InImage map_3_160 image4916 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4916 : Bundle := named_bundle% "RealMapCertificates/relations/basis4916.json"
theorem reductionProof4916 : EqualModuloRelations reduction4916.relations reduction4916.input reduction4916.output := by lin_cert using reduction4916.terms
theorem substitutionProof4916 : IsMapEvaluation generatorImages reduction4916.relations [7,7,324] reduction4916.output := by lin_cert using reduction4916.terms
def map_3_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5006 : InImage map_3_161 image5006 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5006 : Bundle := named_bundle% "RealMapCertificates/relations/basis5006.json"
theorem reductionProof5006 : EqualModuloRelations reduction5006.relations reduction5006.input reduction5006.output := by lin_cert using reduction5006.terms
theorem substitutionProof5006 : IsMapEvaluation generatorImages reduction5006.relations [0,18,324] reduction5006.output := by lin_cert using reduction5006.terms
def map_3_162 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5131 : InImage map_3_162 image5131 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5131 : Bundle := named_bundle% "RealMapCertificates/relations/basis5131.json"
theorem reductionProof5131 : EqualModuloRelations reduction5131.relations reduction5131.input reduction5131.output := by lin_cert using reduction5131.terms
theorem substitutionProof5131 : IsMapEvaluation generatorImages reduction5131.relations [1,18,324] reduction5131.output := by lin_cert using reduction5131.terms
def map_3_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5307 : InImage map_3_164 image5307 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5307 : Bundle := named_bundle% "RealMapCertificates/relations/basis5307.json"
theorem reductionProof5307 : EqualModuloRelations reduction5307.relations reduction5307.input reduction5307.output := by lin_cert using reduction5307.terms
theorem substitutionProof5307 : IsMapEvaluation generatorImages reduction5307.relations [2,18,324] reduction5307.output := by lin_cert using reduction5307.terms
def map_3_168 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5766 : InImage map_3_168 image5766 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5766 : Bundle := named_bundle% "RealMapCertificates/relations/basis5766.json"
theorem reductionProof5766 : EqualModuloRelations reduction5766.relations reduction5766.input reduction5766.output := by lin_cert using reduction5766.terms
theorem substitutionProof5766 : IsMapEvaluation generatorImages reduction5766.relations [3,18,324] reduction5766.output := by lin_cert using reduction5766.terms
def map_3_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6646 : InImage map_3_176 image6646 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6646 : Bundle := named_bundle% "RealMapCertificates/relations/basis6646.json"
theorem reductionProof6646 : EqualModuloRelations reduction6646.relations reduction6646.input reduction6646.output := by lin_cert using reduction6646.terms
theorem substitutionProof6646 : IsMapEvaluation generatorImages reduction6646.relations [850] reduction6646.output := by lin_cert using reduction6646.terms
def map_3_192 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8601 : InImage map_3_192 image8601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8601 : Bundle := named_bundle% "RealMapCertificates/relations/basis8601.json"
theorem reductionProof8601 : EqualModuloRelations reduction8601.relations reduction8601.input reduction8601.output := by lin_cert using reduction8601.terms
theorem substitutionProof8601 : IsMapEvaluation generatorImages reduction8601.relations [18,18,324] reduction8601.output := by lin_cert using reduction8601.terms
def map_3_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22296 : InImage map_3_257 image22296 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22296 : Bundle := named_bundle% "RealMapCertificates/relations/basis22296.json"
theorem reductionProof22296 : EqualModuloRelations reduction22296.relations reduction22296.input reduction22296.output := by lin_cert using reduction22296.terms
theorem substitutionProof22296 : IsMapEvaluation generatorImages reduction22296.relations [0,324,324] reduction22296.output := by lin_cert using reduction22296.terms
end RealMapCertificates
