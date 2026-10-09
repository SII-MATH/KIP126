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
  | 8 => [[6]]
  | 9 => [[8]]
  | 10 => [[2,7]]
  | 11 => []
  | 13 => [[9]]
  | 18 => []
  | 25 => []
  | 26 => []
  | 35 => []
  | 37 => []
  | 38 => []
  | 43 => []
  | 69 => []
  | 70 => []
  | 94 => []
  | 96 => []
  | 99 => []
  | 132 => []
  | 142 => []
  | 143 => []
  | 163 => []
  | 324 => []
  | 341 => []
  | 508 => []
  | 527 => []
  | 548 => []
  | 751 => []
  | 849 => []
  | 850 => []
  | 1058 => []
  | 2626 => []
  | _ => []
def map_3_258 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22676 : InImage map_3_258 image22676 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22676 : Bundle := named_bundle% "RealMapCertificates/relations/basis22676.json"
theorem reductionProof22676 : EqualModuloRelations reduction22676.relations reduction22676.input reduction22676.output := by lin_cert using reduction22676.terms
theorem substitutionProof22676 : IsMapEvaluation generatorImages reduction22676.relations [1,324,324] reduction22676.output := by lin_cert using reduction22676.terms
def image22677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22677 : InImage map_3_258 image22677 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22677 : Bundle := named_bundle% "RealMapCertificates/relations/basis22677.json"
theorem reductionProof22677 : EqualModuloRelations reduction22677.relations reduction22677.input reduction22677.output := by lin_cert using reduction22677.terms
theorem substitutionProof22677 : IsMapEvaluation generatorImages reduction22677.relations [0,0,2626] reduction22677.output := by lin_cert using reduction22677.terms
def map_3_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23403 : InImage map_3_260 image23403 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23403 : Bundle := named_bundle% "RealMapCertificates/relations/basis23403.json"
theorem reductionProof23403 : EqualModuloRelations reduction23403.relations reduction23403.input reduction23403.output := by lin_cert using reduction23403.terms
theorem substitutionProof23403 : IsMapEvaluation generatorImages reduction23403.relations [2,324,324] reduction23403.output := by lin_cert using reduction23403.terms
def image23404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23404 : InImage map_3_260 image23404 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23404 : Bundle := named_bundle% "RealMapCertificates/relations/basis23404.json"
theorem reductionProof23404 : EqualModuloRelations reduction23404.relations reduction23404.input reduction23404.output := by lin_cert using reduction23404.terms
theorem substitutionProof23404 : IsMapEvaluation generatorImages reduction23404.relations [1,1,2626] reduction23404.output := by lin_cert using reduction23404.terms
def map_3_261 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image23821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23821 : InImage map_3_261 image23821 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23821 : Bundle := named_bundle% "RealMapCertificates/relations/basis23821.json"
theorem reductionProof23821 : EqualModuloRelations reduction23821.relations reduction23821.input reduction23821.output := by lin_cert using reduction23821.terms
theorem substitutionProof23821 : IsMapEvaluation generatorImages reduction23821.relations [0,2,2626] reduction23821.output := by lin_cert using reduction23821.terms
def map_4_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5 : InImage map_4_4 image5 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5 : Bundle := named_bundle% "RealMapCertificates/relations/basis5.json"
theorem reductionProof5 : EqualModuloRelations reduction5.relations reduction5.input reduction5.output := by lin_cert using reduction5.terms
theorem substitutionProof5 : IsMapEvaluation generatorImages reduction5.relations [0,0,0,0] reduction5.output := by lin_cert using reduction5.terms
def map_4_11 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22 : InImage map_4_11 image22 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22 : Bundle := named_bundle% "RealMapCertificates/relations/basis22.json"
theorem reductionProof22 : EqualModuloRelations reduction22.relations reduction22.input reduction22.output := by lin_cert using reduction22.terms
theorem substitutionProof22 : IsMapEvaluation generatorImages reduction22.relations [0,0,0,3] reduction22.output := by lin_cert using reduction22.terms
def map_4_13 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image27 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation27 : InImage map_4_13 image27 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction27 : Bundle := named_bundle% "RealMapCertificates/relations/basis27.json"
theorem reductionProof27 : EqualModuloRelations reduction27.relations reduction27.input reduction27.output := by lin_cert using reduction27.terms
theorem substitutionProof27 : IsMapEvaluation generatorImages reduction27.relations [1,4] reduction27.output := by lin_cert using reduction27.terms
def map_4_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image42 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation42 : InImage map_4_18 image42 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction42 : Bundle := named_bundle% "RealMapCertificates/relations/basis42.json"
theorem reductionProof42 : EqualModuloRelations reduction42.relations reduction42.input reduction42.output := by lin_cert using reduction42.terms
theorem substitutionProof42 : IsMapEvaluation generatorImages reduction42.relations [8] reduction42.output := by lin_cert using reduction42.terms
def map_4_19 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image47 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation47 : InImage map_4_19 image47 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction47 : Bundle := named_bundle% "RealMapCertificates/relations/basis47.json"
theorem reductionProof47 : EqualModuloRelations reduction47.relations reduction47.input reduction47.output := by lin_cert using reduction47.terms
theorem substitutionProof47 : IsMapEvaluation generatorImages reduction47.relations [0,0,0,7] reduction47.output := by lin_cert using reduction47.terms
def map_4_21 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image56 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation56 : InImage map_4_21 image56 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction56 : Bundle := named_bundle% "RealMapCertificates/relations/basis56.json"
theorem reductionProof56 : EqualModuloRelations reduction56.relations reduction56.input reduction56.output := by lin_cert using reduction56.terms
theorem substitutionProof56 : IsMapEvaluation generatorImages reduction56.relations [9] reduction56.output := by lin_cert using reduction56.terms
def map_4_22 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image62 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation62 : InImage map_4_22 image62 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction62 : Bundle := named_bundle% "RealMapCertificates/relations/basis62.json"
theorem reductionProof62 : EqualModuloRelations reduction62.relations reduction62.input reduction62.output := by lin_cert using reduction62.terms
theorem substitutionProof62 : IsMapEvaluation generatorImages reduction62.relations [10] reduction62.output := by lin_cert using reduction62.terms
def image63 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation63 : InImage map_4_22 image63 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction63 : Bundle := named_bundle% "RealMapCertificates/relations/basis63.json"
theorem reductionProof63 : EqualModuloRelations reduction63.relations reduction63.input reduction63.output := by lin_cert using reduction63.terms
theorem substitutionProof63 : IsMapEvaluation generatorImages reduction63.relations [0,0,2,7] reduction63.output := by lin_cert using reduction63.terms
def map_4_24 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image72 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation72 : InImage map_4_24 image72 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction72 : Bundle := named_bundle% "RealMapCertificates/relations/basis72.json"
theorem reductionProof72 : EqualModuloRelations reduction72.relations reduction72.input reduction72.output := by lin_cert using reduction72.terms
theorem substitutionProof72 : IsMapEvaluation generatorImages reduction72.relations [13] reduction72.output := by lin_cert using reduction72.terms
def map_4_26 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image81 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation81 : InImage map_4_26 image81 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction81 : Bundle := named_bundle% "RealMapCertificates/relations/basis81.json"
theorem reductionProof81 : EqualModuloRelations reduction81.relations reduction81.input reduction81.output := by lin_cert using reduction81.terms
theorem substitutionProof81 : IsMapEvaluation generatorImages reduction81.relations [2,11] reduction81.output := by lin_cert using reduction81.terms
def map_4_27 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image83 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation83 : InImage map_4_27 image83 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction83 : Bundle := named_bundle% "RealMapCertificates/relations/basis83.json"
theorem reductionProof83 : EqualModuloRelations reduction83.relations reduction83.input reduction83.output := by lin_cert using reduction83.terms
theorem substitutionProof83 : IsMapEvaluation generatorImages reduction83.relations [4,7] reduction83.output := by lin_cert using reduction83.terms
def map_4_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation117 : InImage map_4_34 image117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction117 : Bundle := named_bundle% "RealMapCertificates/relations/basis117.json"
theorem reductionProof117 : EqualModuloRelations reduction117.relations reduction117.input reduction117.output := by lin_cert using reduction117.terms
theorem substitutionProof117 : IsMapEvaluation generatorImages reduction117.relations [0,0,7,7] reduction117.output := by lin_cert using reduction117.terms
def map_4_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation127 : InImage map_4_35 image127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction127 : Bundle := named_bundle% "RealMapCertificates/relations/basis127.json"
theorem reductionProof127 : EqualModuloRelations reduction127.relations reduction127.input reduction127.output := by lin_cert using reduction127.terms
theorem substitutionProof127 : IsMapEvaluation generatorImages reduction127.relations [0,0,0,18] reduction127.output := by lin_cert using reduction127.terms
def map_4_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation135 : InImage map_4_36 image135 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction135 : Bundle := named_bundle% "RealMapCertificates/relations/basis135.json"
theorem reductionProof135 : EqualModuloRelations reduction135.relations reduction135.input reduction135.output := by lin_cert using reduction135.terms
theorem substitutionProof135 : IsMapEvaluation generatorImages reduction135.relations [25] reduction135.output := by lin_cert using reduction135.terms
def map_4_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation144 : InImage map_4_37 image144 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction144 : Bundle := named_bundle% "RealMapCertificates/relations/basis144.json"
theorem reductionProof144 : EqualModuloRelations reduction144.relations reduction144.input reduction144.output := by lin_cert using reduction144.terms
theorem substitutionProof144 : IsMapEvaluation generatorImages reduction144.relations [26] reduction144.output := by lin_cert using reduction144.terms
def map_4_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation154 : InImage map_4_38 image154 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction154 : Bundle := named_bundle% "RealMapCertificates/relations/basis154.json"
theorem reductionProof154 : EqualModuloRelations reduction154.relations reduction154.input reduction154.output := by lin_cert using reduction154.terms
theorem substitutionProof154 : IsMapEvaluation generatorImages reduction154.relations [0,0,2,18] reduction154.output := by lin_cert using reduction154.terms
def map_4_42 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation187 : InImage map_4_42 image187 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction187 : Bundle := named_bundle% "RealMapCertificates/relations/basis187.json"
theorem reductionProof187 : EqualModuloRelations reduction187.relations reduction187.input reduction187.output := by lin_cert using reduction187.terms
theorem substitutionProof187 : IsMapEvaluation generatorImages reduction187.relations [35] reduction187.output := by lin_cert using reduction187.terms
def image188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation188 : InImage map_4_42 image188 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction188 : Bundle := named_bundle% "RealMapCertificates/relations/basis188.json"
theorem reductionProof188 : EqualModuloRelations reduction188.relations reduction188.input reduction188.output := by lin_cert using reduction188.terms
theorem substitutionProof188 : IsMapEvaluation generatorImages reduction188.relations [0,0,3,18] reduction188.output := by lin_cert using reduction188.terms
def map_4_43 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation197 : InImage map_4_43 image197 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction197 : Bundle := named_bundle% "RealMapCertificates/relations/basis197.json"
theorem reductionProof197 : EqualModuloRelations reduction197.relations reduction197.input reduction197.output := by lin_cert using reduction197.terms
theorem substitutionProof197 : IsMapEvaluation generatorImages reduction197.relations [4,18] reduction197.output := by lin_cert using reduction197.terms
def map_4_44 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation209 : InImage map_4_44 image209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction209 : Bundle := named_bundle% "RealMapCertificates/relations/basis209.json"
theorem reductionProof209 : EqualModuloRelations reduction209.relations reduction209.input reduction209.output := by lin_cert using reduction209.terms
theorem substitutionProof209 : IsMapEvaluation generatorImages reduction209.relations [37] reduction209.output := by lin_cert using reduction209.terms
def image210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation210 : InImage map_4_44 image210 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction210 : Bundle := named_bundle% "RealMapCertificates/relations/basis210.json"
theorem reductionProof210 : EqualModuloRelations reduction210.relations reduction210.input reduction210.output := by lin_cert using reduction210.terms
theorem substitutionProof210 : IsMapEvaluation generatorImages reduction210.relations [1,1,3,18] reduction210.output := by lin_cert using reduction210.terms
def map_4_45 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation221 : InImage map_4_45 image221 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction221 : Bundle := named_bundle% "RealMapCertificates/relations/basis221.json"
theorem reductionProof221 : EqualModuloRelations reduction221.relations reduction221.input reduction221.output := by lin_cert using reduction221.terms
theorem substitutionProof221 : IsMapEvaluation generatorImages reduction221.relations [0,38] reduction221.output := by lin_cert using reduction221.terms
def map_4_48 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation248 : InImage map_4_48 image248 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction248 : Bundle := named_bundle% "RealMapCertificates/relations/basis248.json"
theorem reductionProof248 : EqualModuloRelations reduction248.relations reduction248.input reduction248.output := by lin_cert using reduction248.terms
theorem substitutionProof248 : IsMapEvaluation generatorImages reduction248.relations [43] reduction248.output := by lin_cert using reduction248.terms
def map_4_49 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation256 : InImage map_4_49 image256 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction256 : Bundle := named_bundle% "RealMapCertificates/relations/basis256.json"
theorem reductionProof256 : EqualModuloRelations reduction256.relations reduction256.input reduction256.output := by lin_cert using reduction256.terms
theorem substitutionProof256 : IsMapEvaluation generatorImages reduction256.relations [0,3,3,18] reduction256.output := by lin_cert using reduction256.terms
def map_4_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation281 : InImage map_4_52 image281 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction281 : Bundle := named_bundle% "RealMapCertificates/relations/basis281.json"
theorem reductionProof281 : EqualModuloRelations reduction281.relations reduction281.input reduction281.output := by lin_cert using reduction281.terms
theorem substitutionProof281 : IsMapEvaluation generatorImages reduction281.relations [3,38] reduction281.output := by lin_cert using reduction281.terms
def map_4_54 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation301 : InImage map_4_54 image301 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction301 : Bundle := named_bundle% "RealMapCertificates/relations/basis301.json"
theorem reductionProof301 : EqualModuloRelations reduction301.relations reduction301.input reduction301.output := by lin_cert using reduction301.terms
theorem substitutionProof301 : IsMapEvaluation generatorImages reduction301.relations [11,18] reduction301.output := by lin_cert using reduction301.terms
def map_4_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation415 : InImage map_4_65 image415 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction415 : Bundle := named_bundle% "RealMapCertificates/relations/basis415.json"
theorem reductionProof415 : EqualModuloRelations reduction415.relations reduction415.input reduction415.output := by lin_cert using reduction415.terms
theorem substitutionProof415 : IsMapEvaluation generatorImages reduction415.relations [70] reduction415.output := by lin_cert using reduction415.terms
def map_4_66 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation435 : InImage map_4_66 image435 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction435 : Bundle := named_bundle% "RealMapCertificates/relations/basis435.json"
theorem reductionProof435 : EqualModuloRelations reduction435.relations reduction435.input reduction435.output := by lin_cert using reduction435.terms
theorem substitutionProof435 : IsMapEvaluation generatorImages reduction435.relations [0,0,18,18] reduction435.output := by lin_cert using reduction435.terms
def map_4_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation455 : InImage map_4_67 image455 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction455 : Bundle := named_bundle% "RealMapCertificates/relations/basis455.json"
theorem reductionProof455 : EqualModuloRelations reduction455.relations reduction455.input reduction455.output := by lin_cert using reduction455.terms
theorem substitutionProof455 : IsMapEvaluation generatorImages reduction455.relations [0,0,0,69] reduction455.output := by lin_cert using reduction455.terms
def map_4_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation472 : InImage map_4_68 image472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction472 : Bundle := named_bundle% "RealMapCertificates/relations/basis472.json"
theorem reductionProof472 : EqualModuloRelations reduction472.relations reduction472.input reduction472.output := by lin_cert using reduction472.terms
theorem substitutionProof472 : IsMapEvaluation generatorImages reduction472.relations [1,1,18,18] reduction472.output := by lin_cert using reduction472.terms
def map_4_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation496 : InImage map_4_69 image496 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction496 : Bundle := named_bundle% "RealMapCertificates/relations/basis496.json"
theorem reductionProof496 : EqualModuloRelations reduction496.relations reduction496.input reduction496.output := by lin_cert using reduction496.terms
theorem substitutionProof496 : IsMapEvaluation generatorImages reduction496.relations [0,2,18,18] reduction496.output := by lin_cert using reduction496.terms
def map_4_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation516 : InImage map_4_70 image516 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction516 : Bundle := named_bundle% "RealMapCertificates/relations/basis516.json"
theorem reductionProof516 : EqualModuloRelations reduction516.relations reduction516.input reduction516.output := by lin_cert using reduction516.terms
theorem substitutionProof516 : IsMapEvaluation generatorImages reduction516.relations [0,0,2,69] reduction516.output := by lin_cert using reduction516.terms
def map_4_72 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation561 : InImage map_4_72 image561 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction561 : Bundle := named_bundle% "RealMapCertificates/relations/basis561.json"
theorem reductionProof561 : EqualModuloRelations reduction561.relations reduction561.input reduction561.output := by lin_cert using reduction561.terms
theorem substitutionProof561 : IsMapEvaluation generatorImages reduction561.relations [94] reduction561.output := by lin_cert using reduction561.terms
def map_4_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation581 : InImage map_4_73 image581 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction581 : Bundle := named_bundle% "RealMapCertificates/relations/basis581.json"
theorem reductionProof581 : EqualModuloRelations reduction581.relations reduction581.input reduction581.output := by lin_cert using reduction581.terms
theorem substitutionProof581 : IsMapEvaluation generatorImages reduction581.relations [96] reduction581.output := by lin_cert using reduction581.terms
def map_4_74 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation603 : InImage map_4_74 image603 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction603 : Bundle := named_bundle% "RealMapCertificates/relations/basis603.json"
theorem reductionProof603 : EqualModuloRelations reduction603.relations reduction603.input reduction603.output := by lin_cert using reduction603.terms
theorem substitutionProof603 : IsMapEvaluation generatorImages reduction603.relations [99] reduction603.output := by lin_cert using reduction603.terms
def image604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation604 : InImage map_4_74 image604 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction604 : Bundle := named_bundle% "RealMapCertificates/relations/basis604.json"
theorem reductionProof604 : EqualModuloRelations reduction604.relations reduction604.input reduction604.output := by lin_cert using reduction604.terms
theorem substitutionProof604 : IsMapEvaluation generatorImages reduction604.relations [0,0,3,69] reduction604.output := by lin_cert using reduction604.terms
def map_4_75 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation625 : InImage map_4_75 image625 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction625 : Bundle := named_bundle% "RealMapCertificates/relations/basis625.json"
theorem reductionProof625 : EqualModuloRelations reduction625.relations reduction625.input reduction625.output := by lin_cert using reduction625.terms
theorem substitutionProof625 : IsMapEvaluation generatorImages reduction625.relations [4,69] reduction625.output := by lin_cert using reduction625.terms
def map_4_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation645 : InImage map_4_76 image645 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction645 : Bundle := named_bundle% "RealMapCertificates/relations/basis645.json"
theorem reductionProof645 : EqualModuloRelations reduction645.relations reduction645.input reduction645.output := by lin_cert using reduction645.terms
theorem substitutionProof645 : IsMapEvaluation generatorImages reduction645.relations [1,1,3,69] reduction645.output := by lin_cert using reduction645.terms
def map_4_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation757 : InImage map_4_81 image757 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction757 : Bundle := named_bundle% "RealMapCertificates/relations/basis757.json"
theorem reductionProof757 : EqualModuloRelations reduction757.relations reduction757.input reduction757.output := by lin_cert using reduction757.terms
theorem substitutionProof757 : IsMapEvaluation generatorImages reduction757.relations [0,3,3,69] reduction757.output := by lin_cert using reduction757.terms
def map_4_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation778 : InImage map_4_82 image778 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction778 : Bundle := named_bundle% "RealMapCertificates/relations/basis778.json"
theorem reductionProof778 : EqualModuloRelations reduction778.relations reduction778.input reduction778.output := by lin_cert using reduction778.terms
theorem substitutionProof778 : IsMapEvaluation generatorImages reduction778.relations [0,0,7,69] reduction778.output := by lin_cert using reduction778.terms
def map_4_84 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation833 : InImage map_4_84 image833 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction833 : Bundle := named_bundle% "RealMapCertificates/relations/basis833.json"
theorem reductionProof833 : EqualModuloRelations reduction833.relations reduction833.input reduction833.output := by lin_cert using reduction833.terms
theorem substitutionProof833 : IsMapEvaluation generatorImages reduction833.relations [132] reduction833.output := by lin_cert using reduction833.terms
def image834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation834 : InImage map_4_84 image834 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction834 : Bundle := named_bundle% "RealMapCertificates/relations/basis834.json"
theorem reductionProof834 : EqualModuloRelations reduction834.relations reduction834.input reduction834.output := by lin_cert using reduction834.terms
theorem substitutionProof834 : IsMapEvaluation generatorImages reduction834.relations [1,1,7,69] reduction834.output := by lin_cert using reduction834.terms
def map_4_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation858 : InImage map_4_85 image858 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction858 : Bundle := named_bundle% "RealMapCertificates/relations/basis858.json"
theorem reductionProof858 : EqualModuloRelations reduction858.relations reduction858.input reduction858.output := by lin_cert using reduction858.terms
theorem substitutionProof858 : IsMapEvaluation generatorImages reduction858.relations [0,2,7,69] reduction858.output := by lin_cert using reduction858.terms
def map_4_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation883 : InImage map_4_86 image883 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction883 : Bundle := named_bundle% "RealMapCertificates/relations/basis883.json"
theorem reductionProof883 : EqualModuloRelations reduction883.relations reduction883.input reduction883.output := by lin_cert using reduction883.terms
theorem substitutionProof883 : IsMapEvaluation generatorImages reduction883.relations [11,69] reduction883.output := by lin_cert using reduction883.terms
def map_4_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation932 : InImage map_4_88 image932 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction932 : Bundle := named_bundle% "RealMapCertificates/relations/basis932.json"
theorem reductionProof932 : EqualModuloRelations reduction932.relations reduction932.input reduction932.output := by lin_cert using reduction932.terms
theorem substitutionProof932 : IsMapEvaluation generatorImages reduction932.relations [142] reduction932.output := by lin_cert using reduction932.terms
def image933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation933 : InImage map_4_88 image933 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction933 : Bundle := named_bundle% "RealMapCertificates/relations/basis933.json"
theorem reductionProof933 : EqualModuloRelations reduction933.relations reduction933.input reduction933.output := by lin_cert using reduction933.terms
theorem substitutionProof933 : IsMapEvaluation generatorImages reduction933.relations [2,2,7,69] reduction933.output := by lin_cert using reduction933.terms
def map_4_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation957 : InImage map_4_89 image957 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction957 : Bundle := named_bundle% "RealMapCertificates/relations/basis957.json"
theorem reductionProof957 : EqualModuloRelations reduction957.relations reduction957.input reduction957.output := by lin_cert using reduction957.terms
theorem substitutionProof957 : IsMapEvaluation generatorImages reduction957.relations [0,143] reduction957.output := by lin_cert using reduction957.terms
def map_4_90 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation993 : InImage map_4_90 image993 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction993 : Bundle := named_bundle% "RealMapCertificates/relations/basis993.json"
theorem reductionProof993 : EqualModuloRelations reduction993.relations reduction993.input reduction993.output := by lin_cert using reduction993.terms
theorem substitutionProof993 : IsMapEvaluation generatorImages reduction993.relations [1,143] reduction993.output := by lin_cert using reduction993.terms
def map_4_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1140 : InImage map_4_96 image1140 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1140 : Bundle := named_bundle% "RealMapCertificates/relations/basis1140.json"
theorem reductionProof1140 : EqualModuloRelations reduction1140.relations reduction1140.input reduction1140.output := by lin_cert using reduction1140.terms
theorem substitutionProof1140 : IsMapEvaluation generatorImages reduction1140.relations [163] reduction1140.output := by lin_cert using reduction1140.terms
def map_4_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1160 : InImage map_4_97 image1160 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1160 : Bundle := named_bundle% "RealMapCertificates/relations/basis1160.json"
theorem reductionProof1160 : EqualModuloRelations reduction1160.relations reduction1160.input reduction1160.output := by lin_cert using reduction1160.terms
theorem substitutionProof1160 : IsMapEvaluation generatorImages reduction1160.relations [0,7,7,69] reduction1160.output := by lin_cert using reduction1160.terms
def map_4_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1183 : InImage map_4_98 image1183 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1183 : Bundle := named_bundle% "RealMapCertificates/relations/basis1183.json"
theorem reductionProof1183 : EqualModuloRelations reduction1183.relations reduction1183.input reduction1183.output := by lin_cert using reduction1183.terms
theorem substitutionProof1183 : IsMapEvaluation generatorImages reduction1183.relations [1,7,7,69] reduction1183.output := by lin_cert using reduction1183.terms
def map_4_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1372 : InImage map_4_104 image1372 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1372 : Bundle := named_bundle% "RealMapCertificates/relations/basis1372.json"
theorem reductionProof1372 : EqualModuloRelations reduction1372.relations reduction1372.input reduction1372.output := by lin_cert using reduction1372.terms
theorem substitutionProof1372 : IsMapEvaluation generatorImages reduction1372.relations [7,143] reduction1372.output := by lin_cert using reduction1372.terms
def map_4_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1519 : InImage map_4_108 image1519 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1519 : Bundle := named_bundle% "RealMapCertificates/relations/basis1519.json"
theorem reductionProof1519 : EqualModuloRelations reduction1519.relations reduction1519.input reduction1519.output := by lin_cert using reduction1519.terms
theorem substitutionProof1519 : IsMapEvaluation generatorImages reduction1519.relations [38,69] reduction1519.output := by lin_cert using reduction1519.terms
def map_4_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2436 : InImage map_4_130 image2436 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2436 : Bundle := named_bundle% "RealMapCertificates/relations/basis2436.json"
theorem reductionProof2436 : EqualModuloRelations reduction2436.relations reduction2436.input reduction2436.output := by lin_cert using reduction2436.terms
theorem substitutionProof2436 : IsMapEvaluation generatorImages reduction2436.relations [341] reduction2436.output := by lin_cert using reduction2436.terms
def image2437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2437 : InImage map_4_130 image2437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2437 : Bundle := named_bundle% "RealMapCertificates/relations/basis2437.json"
theorem reductionProof2437 : EqualModuloRelations reduction2437.relations reduction2437.input reduction2437.output := by lin_cert using reduction2437.terms
theorem substitutionProof2437 : IsMapEvaluation generatorImages reduction2437.relations [0,0,69,69] reduction2437.output := by lin_cert using reduction2437.terms
def map_4_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2495 : InImage map_4_131 image2495 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2495 : Bundle := named_bundle% "RealMapCertificates/relations/basis2495.json"
theorem reductionProof2495 : EqualModuloRelations reduction2495.relations reduction2495.input reduction2495.output := by lin_cert using reduction2495.terms
theorem substitutionProof2495 : IsMapEvaluation generatorImages reduction2495.relations [0,0,0,324] reduction2495.output := by lin_cert using reduction2495.terms
def map_4_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2576 : InImage map_4_132 image2576 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2576 : Bundle := named_bundle% "RealMapCertificates/relations/basis2576.json"
theorem reductionProof2576 : EqualModuloRelations reduction2576.relations reduction2576.input reduction2576.output := by lin_cert using reduction2576.terms
theorem substitutionProof2576 : IsMapEvaluation generatorImages reduction2576.relations [1,1,69,69] reduction2576.output := by lin_cert using reduction2576.terms
def map_4_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2636 : InImage map_4_133 image2636 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2636 : Bundle := named_bundle% "RealMapCertificates/relations/basis2636.json"
theorem reductionProof2636 : EqualModuloRelations reduction2636.relations reduction2636.input reduction2636.output := by lin_cert using reduction2636.terms
theorem substitutionProof2636 : IsMapEvaluation generatorImages reduction2636.relations [0,2,69,69] reduction2636.output := by lin_cert using reduction2636.terms
def map_4_134 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2718 : InImage map_4_134 image2718 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2718 : Bundle := named_bundle% "RealMapCertificates/relations/basis2718.json"
theorem reductionProof2718 : EqualModuloRelations reduction2718.relations reduction2718.input reduction2718.output := by lin_cert using reduction2718.terms
theorem substitutionProof2718 : IsMapEvaluation generatorImages reduction2718.relations [0,0,2,324] reduction2718.output := by lin_cert using reduction2718.terms
def map_4_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2868 : InImage map_4_136 image2868 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2868 : Bundle := named_bundle% "RealMapCertificates/relations/basis2868.json"
theorem reductionProof2868 : EqualModuloRelations reduction2868.relations reduction2868.input reduction2868.output := by lin_cert using reduction2868.terms
theorem substitutionProof2868 : IsMapEvaluation generatorImages reduction2868.relations [2,2,69,69] reduction2868.output := by lin_cert using reduction2868.terms
def map_4_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2941 : InImage map_4_137 image2941 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2941 : Bundle := named_bundle% "RealMapCertificates/relations/basis2941.json"
theorem reductionProof2941 : EqualModuloRelations reduction2941.relations reduction2941.input reduction2941.output := by lin_cert using reduction2941.terms
theorem substitutionProof2941 : IsMapEvaluation generatorImages reduction2941.relations [0,3,69,69] reduction2941.output := by lin_cert using reduction2941.terms
def map_4_138 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3039 : InImage map_4_138 image3039 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3039 : Bundle := named_bundle% "RealMapCertificates/relations/basis3039.json"
theorem reductionProof3039 : EqualModuloRelations reduction3039.relations reduction3039.input reduction3039.output := by lin_cert using reduction3039.terms
theorem substitutionProof3039 : IsMapEvaluation generatorImages reduction3039.relations [1,3,69,69] reduction3039.output := by lin_cert using reduction3039.terms
def image3040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3040 : InImage map_4_138 image3040 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3040 : Bundle := named_bundle% "RealMapCertificates/relations/basis3040.json"
theorem reductionProof3040 : EqualModuloRelations reduction3040.relations reduction3040.input reduction3040.output := by lin_cert using reduction3040.terms
theorem substitutionProof3040 : IsMapEvaluation generatorImages reduction3040.relations [0,0,3,324] reduction3040.output := by lin_cert using reduction3040.terms
def map_4_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3107 : InImage map_4_139 image3107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3107 : Bundle := named_bundle% "RealMapCertificates/relations/basis3107.json"
theorem reductionProof3107 : EqualModuloRelations reduction3107.relations reduction3107.input reduction3107.output := by lin_cert using reduction3107.terms
theorem substitutionProof3107 : IsMapEvaluation generatorImages reduction3107.relations [4,324] reduction3107.output := by lin_cert using reduction3107.terms
def map_4_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3195 : InImage map_4_140 image3195 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3195 : Bundle := named_bundle% "RealMapCertificates/relations/basis3195.json"
theorem reductionProof3195 : EqualModuloRelations reduction3195.relations reduction3195.input reduction3195.output := by lin_cert using reduction3195.terms
theorem substitutionProof3195 : IsMapEvaluation generatorImages reduction3195.relations [1,1,3,324] reduction3195.output := by lin_cert using reduction3195.terms
def map_4_144 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3533 : InImage map_4_144 image3533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3533 : Bundle := named_bundle% "RealMapCertificates/relations/basis3533.json"
theorem reductionProof3533 : EqualModuloRelations reduction3533.relations reduction3533.input reduction3533.output := by lin_cert using reduction3533.terms
theorem substitutionProof3533 : IsMapEvaluation generatorImages reduction3533.relations [508] reduction3533.output := by lin_cert using reduction3533.terms
def map_4_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3599 : InImage map_4_145 image3599 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3599 : Bundle := named_bundle% "RealMapCertificates/relations/basis3599.json"
theorem reductionProof3599 : EqualModuloRelations reduction3599.relations reduction3599.input reduction3599.output := by lin_cert using reduction3599.terms
theorem substitutionProof3599 : IsMapEvaluation generatorImages reduction3599.relations [0,3,3,324] reduction3599.output := by lin_cert using reduction3599.terms
def map_4_146 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3695 : InImage map_4_146 image3695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3695 : Bundle := named_bundle% "RealMapCertificates/relations/basis3695.json"
theorem reductionProof3695 : EqualModuloRelations reduction3695.relations reduction3695.input reduction3695.output := by lin_cert using reduction3695.terms
theorem substitutionProof3695 : IsMapEvaluation generatorImages reduction3695.relations [527] reduction3695.output := by lin_cert using reduction3695.terms
def image3696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3696 : InImage map_4_146 image3696 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3696 : Bundle := named_bundle% "RealMapCertificates/relations/basis3696.json"
theorem reductionProof3696 : EqualModuloRelations reduction3696.relations reduction3696.input reduction3696.output := by lin_cert using reduction3696.terms
theorem substitutionProof3696 : IsMapEvaluation generatorImages reduction3696.relations [0,0,7,324] reduction3696.output := by lin_cert using reduction3696.terms
def map_4_148 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3869 : InImage map_4_148 image3869 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3869 : Bundle := named_bundle% "RealMapCertificates/relations/basis3869.json"
theorem reductionProof3869 : EqualModuloRelations reduction3869.relations reduction3869.input reduction3869.output := by lin_cert using reduction3869.terms
theorem substitutionProof3869 : IsMapEvaluation generatorImages reduction3869.relations [548] reduction3869.output := by lin_cert using reduction3869.terms
def image3870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3870 : InImage map_4_148 image3870 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3870 : Bundle := named_bundle% "RealMapCertificates/relations/basis3870.json"
theorem reductionProof3870 : EqualModuloRelations reduction3870.relations reduction3870.input reduction3870.output := by lin_cert using reduction3870.terms
theorem substitutionProof3870 : IsMapEvaluation generatorImages reduction3870.relations [1,1,7,324] reduction3870.output := by lin_cert using reduction3870.terms
def map_4_149 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3948 : InImage map_4_149 image3948 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3948 : Bundle := named_bundle% "RealMapCertificates/relations/basis3948.json"
theorem reductionProof3948 : EqualModuloRelations reduction3948.relations reduction3948.input reduction3948.output := by lin_cert using reduction3948.terms
theorem substitutionProof3948 : IsMapEvaluation generatorImages reduction3948.relations [0,2,7,324] reduction3948.output := by lin_cert using reduction3948.terms
def map_4_150 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4071 : InImage map_4_150 image4071 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4071 : Bundle := named_bundle% "RealMapCertificates/relations/basis4071.json"
theorem reductionProof4071 : EqualModuloRelations reduction4071.relations reduction4071.input reduction4071.output := by lin_cert using reduction4071.terms
theorem substitutionProof4071 : IsMapEvaluation generatorImages reduction4071.relations [11,324] reduction4071.output := by lin_cert using reduction4071.terms
def map_4_152 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4230 : InImage map_4_152 image4230 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4230 : Bundle := named_bundle% "RealMapCertificates/relations/basis4230.json"
theorem reductionProof4230 : EqualModuloRelations reduction4230.relations reduction4230.input reduction4230.output := by lin_cert using reduction4230.terms
theorem substitutionProof4230 : IsMapEvaluation generatorImages reduction4230.relations [2,2,7,324] reduction4230.output := by lin_cert using reduction4230.terms
def map_4_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5005 : InImage map_4_161 image5005 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5005 : Bundle := named_bundle% "RealMapCertificates/relations/basis5005.json"
theorem reductionProof5005 : EqualModuloRelations reduction5005.relations reduction5005.input reduction5005.output := by lin_cert using reduction5005.terms
theorem substitutionProof5005 : IsMapEvaluation generatorImages reduction5005.relations [0,7,7,324] reduction5005.output := by lin_cert using reduction5005.terms
def map_4_162 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5129 : InImage map_4_162 image5129 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5129 : Bundle := named_bundle% "RealMapCertificates/relations/basis5129.json"
theorem reductionProof5129 : EqualModuloRelations reduction5129.relations reduction5129.input reduction5129.output := by lin_cert using reduction5129.terms
theorem substitutionProof5129 : IsMapEvaluation generatorImages reduction5129.relations [1,7,7,324] reduction5129.output := by lin_cert using reduction5129.terms
def image5130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5130 : InImage map_4_162 image5130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5130 : Bundle := named_bundle% "RealMapCertificates/relations/basis5130.json"
theorem reductionProof5130 : EqualModuloRelations reduction5130.relations reduction5130.input reduction5130.output := by lin_cert using reduction5130.terms
theorem substitutionProof5130 : IsMapEvaluation generatorImages reduction5130.relations [0,0,18,324] reduction5130.output := by lin_cert using reduction5130.terms
def map_4_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5306 : InImage map_4_164 image5306 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5306 : Bundle := named_bundle% "RealMapCertificates/relations/basis5306.json"
theorem reductionProof5306 : EqualModuloRelations reduction5306.relations reduction5306.input reduction5306.output := by lin_cert using reduction5306.terms
theorem substitutionProof5306 : IsMapEvaluation generatorImages reduction5306.relations [1,1,18,324] reduction5306.output := by lin_cert using reduction5306.terms
def map_4_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5430 : InImage map_4_165 image5430 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5430 : Bundle := named_bundle% "RealMapCertificates/relations/basis5430.json"
theorem reductionProof5430 : EqualModuloRelations reduction5430.relations reduction5430.input reduction5430.output := by lin_cert using reduction5430.terms
theorem substitutionProof5430 : IsMapEvaluation generatorImages reduction5430.relations [0,2,18,324] reduction5430.output := by lin_cert using reduction5430.terms
def map_4_168 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5764 : InImage map_4_168 image5764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5764 : Bundle := named_bundle% "RealMapCertificates/relations/basis5764.json"
theorem reductionProof5764 : EqualModuloRelations reduction5764.relations reduction5764.input reduction5764.output := by lin_cert using reduction5764.terms
theorem substitutionProof5764 : IsMapEvaluation generatorImages reduction5764.relations [751] reduction5764.output := by lin_cert using reduction5764.terms
def image5765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5765 : InImage map_4_168 image5765 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5765 : Bundle := named_bundle% "RealMapCertificates/relations/basis5765.json"
theorem reductionProof5765 : EqualModuloRelations reduction5765.relations reduction5765.input reduction5765.output := by lin_cert using reduction5765.terms
theorem substitutionProof5765 : IsMapEvaluation generatorImages reduction5765.relations [2,2,18,324] reduction5765.output := by lin_cert using reduction5765.terms
def map_4_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5855 : InImage map_4_169 image5855 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5855 : Bundle := named_bundle% "RealMapCertificates/relations/basis5855.json"
theorem reductionProof5855 : EqualModuloRelations reduction5855.relations reduction5855.input reduction5855.output := by lin_cert using reduction5855.terms
theorem substitutionProof5855 : IsMapEvaluation generatorImages reduction5855.relations [0,3,18,324] reduction5855.output := by lin_cert using reduction5855.terms
def map_4_170 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5969 : InImage map_4_170 image5969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5969 : Bundle := named_bundle% "RealMapCertificates/relations/basis5969.json"
theorem reductionProof5969 : EqualModuloRelations reduction5969.relations reduction5969.input reduction5969.output := by lin_cert using reduction5969.terms
theorem substitutionProof5969 : IsMapEvaluation generatorImages reduction5969.relations [1,3,18,324] reduction5969.output := by lin_cert using reduction5969.terms
def map_4_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6193 : InImage map_4_172 image6193 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6193 : Bundle := named_bundle% "RealMapCertificates/relations/basis6193.json"
theorem reductionProof6193 : EqualModuloRelations reduction6193.relations reduction6193.input reduction6193.output := by lin_cert using reduction6193.terms
theorem substitutionProof6193 : IsMapEvaluation generatorImages reduction6193.relations [38,324] reduction6193.output := by lin_cert using reduction6193.terms
def map_4_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6644 : InImage map_4_176 image6644 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6644 : Bundle := named_bundle% "RealMapCertificates/relations/basis6644.json"
theorem reductionProof6644 : EqualModuloRelations reduction6644.relations reduction6644.input reduction6644.output := by lin_cert using reduction6644.terms
theorem substitutionProof6644 : IsMapEvaluation generatorImages reduction6644.relations [849] reduction6644.output := by lin_cert using reduction6644.terms
def image6645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6645 : InImage map_4_176 image6645 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6645 : Bundle := named_bundle% "RealMapCertificates/relations/basis6645.json"
theorem reductionProof6645 : EqualModuloRelations reduction6645.relations reduction6645.input reduction6645.output := by lin_cert using reduction6645.terms
theorem substitutionProof6645 : IsMapEvaluation generatorImages reduction6645.relations [3,3,18,324] reduction6645.output := by lin_cert using reduction6645.terms
def map_4_177 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6781 : InImage map_4_177 image6781 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6781 : Bundle := named_bundle% "RealMapCertificates/relations/basis6781.json"
theorem reductionProof6781 : EqualModuloRelations reduction6781.relations reduction6781.input reduction6781.output := by lin_cert using reduction6781.terms
theorem substitutionProof6781 : IsMapEvaluation generatorImages reduction6781.relations [0,850] reduction6781.output := by lin_cert using reduction6781.terms
def map_4_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6887 : InImage map_4_178 image6887 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6887 : Bundle := named_bundle% "RealMapCertificates/relations/basis6887.json"
theorem reductionProof6887 : EqualModuloRelations reduction6887.relations reduction6887.input reduction6887.output := by lin_cert using reduction6887.terms
theorem substitutionProof6887 : IsMapEvaluation generatorImages reduction6887.relations [1,850] reduction6887.output := by lin_cert using reduction6887.terms
def map_4_180 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7158 : InImage map_4_180 image7158 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7158 : Bundle := named_bundle% "RealMapCertificates/relations/basis7158.json"
theorem reductionProof7158 : EqualModuloRelations reduction7158.relations reduction7158.input reduction7158.output := by lin_cert using reduction7158.terms
theorem substitutionProof7158 : IsMapEvaluation generatorImages reduction7158.relations [2,850] reduction7158.output := by lin_cert using reduction7158.terms
def map_4_192 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8600 : InImage map_4_192 image8600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8600 : Bundle := named_bundle% "RealMapCertificates/relations/basis8600.json"
theorem reductionProof8600 : EqualModuloRelations reduction8600.relations reduction8600.input reduction8600.output := by lin_cert using reduction8600.terms
theorem substitutionProof8600 : IsMapEvaluation generatorImages reduction8600.relations [1058] reduction8600.output := by lin_cert using reduction8600.terms
def map_4_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8700 : InImage map_4_193 image8700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8700 : Bundle := named_bundle% "RealMapCertificates/relations/basis8700.json"
theorem reductionProof8700 : EqualModuloRelations reduction8700.relations reduction8700.input reduction8700.output := by lin_cert using reduction8700.terms
theorem substitutionProof8700 : IsMapEvaluation generatorImages reduction8700.relations [0,18,18,324] reduction8700.output := by lin_cert using reduction8700.terms
def map_4_194 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8847 : InImage map_4_194 image8847 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8847 : Bundle := named_bundle% "RealMapCertificates/relations/basis8847.json"
theorem reductionProof8847 : EqualModuloRelations reduction8847.relations reduction8847.input reduction8847.output := by lin_cert using reduction8847.terms
theorem substitutionProof8847 : IsMapEvaluation generatorImages reduction8847.relations [1,18,18,324] reduction8847.output := by lin_cert using reduction8847.terms
def map_4_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9127 : InImage map_4_196 image9127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9127 : Bundle := named_bundle% "RealMapCertificates/relations/basis9127.json"
theorem reductionProof9127 : EqualModuloRelations reduction9127.relations reduction9127.input reduction9127.output := by lin_cert using reduction9127.terms
theorem substitutionProof9127 : IsMapEvaluation generatorImages reduction9127.relations [2,18,18,324] reduction9127.output := by lin_cert using reduction9127.terms
def map_4_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11134 : InImage map_4_208 image11134 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11134 : Bundle := named_bundle% "RealMapCertificates/relations/basis11134.json"
theorem reductionProof11134 : EqualModuloRelations reduction11134.relations reduction11134.input reduction11134.output := by lin_cert using reduction11134.terms
theorem substitutionProof11134 : IsMapEvaluation generatorImages reduction11134.relations [18,850] reduction11134.output := by lin_cert using reduction11134.terms
def map_4_216 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12677 : InImage map_4_216 image12677 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12677 : Bundle := named_bundle% "RealMapCertificates/relations/basis12677.json"
theorem reductionProof12677 : EqualModuloRelations reduction12677.relations reduction12677.input reduction12677.output := by lin_cert using reduction12677.terms
theorem substitutionProof12677 : IsMapEvaluation generatorImages reduction12677.relations [143,324] reduction12677.output := by lin_cert using reduction12677.terms
end RealMapCertificates
