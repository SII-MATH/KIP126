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
  | 5 => [[1,4]]
  | 6 => [[2,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 10 => [[2,7]]
  | 11 => []
  | 13 => [[9]]
  | 18 => []
  | 24 => []
  | 25 => []
  | 26 => []
  | 34 => []
  | 35 => []
  | 37 => []
  | 38 => []
  | 43 => []
  | 57 => []
  | 69 => []
  | 70 => []
  | 76 => []
  | 92 => []
  | 93 => []
  | 94 => []
  | 96 => []
  | 99 => []
  | 131 => []
  | 132 => []
  | 142 => []
  | 143 => []
  | 163 => []
  | 242 => []
  | 324 => []
  | 340 => []
  | 341 => []
  | 378 => []
  | 400 => []
  | 506 => []
  | 507 => []
  | 508 => []
  | 526 => []
  | 2626 => []
  | 2858 => []
  | _ => []
def map_4_258 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22675 : InImage map_4_258 image22675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22675 : Bundle := named_bundle% "RealMapCertificates/relations/basis22675.json"
theorem reductionProof22675 : EqualModuloRelations reduction22675.relations reduction22675.input reduction22675.output := by lin_cert using reduction22675.terms
theorem substitutionProof22675 : IsMapEvaluation generatorImages reduction22675.relations [0,0,324,324] reduction22675.output := by lin_cert using reduction22675.terms
def map_4_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22989 : InImage map_4_259 image22989 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22989 : Bundle := named_bundle% "RealMapCertificates/relations/basis22989.json"
theorem reductionProof22989 : EqualModuloRelations reduction22989.relations reduction22989.input reduction22989.output := by lin_cert using reduction22989.terms
theorem substitutionProof22989 : IsMapEvaluation generatorImages reduction22989.relations [0,0,0,2626] reduction22989.output := by lin_cert using reduction22989.terms
def map_4_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23401 : InImage map_4_260 image23401 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23401 : Bundle := named_bundle% "RealMapCertificates/relations/basis23401.json"
theorem reductionProof23401 : EqualModuloRelations reduction23401.relations reduction23401.input reduction23401.output := by lin_cert using reduction23401.terms
theorem substitutionProof23401 : IsMapEvaluation generatorImages reduction23401.relations [2858] reduction23401.output := by lin_cert using reduction23401.terms
def image23402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23402 : InImage map_4_260 image23402 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23402 : Bundle := named_bundle% "RealMapCertificates/relations/basis23402.json"
theorem reductionProof23402 : EqualModuloRelations reduction23402.relations reduction23402.input reduction23402.output := by lin_cert using reduction23402.terms
theorem substitutionProof23402 : IsMapEvaluation generatorImages reduction23402.relations [1,1,324,324] reduction23402.output := by lin_cert using reduction23402.terms
def map_4_261 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image23820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23820 : InImage map_4_261 image23820 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23820 : Bundle := named_bundle% "RealMapCertificates/relations/basis23820.json"
theorem reductionProof23820 : EqualModuloRelations reduction23820.relations reduction23820.input reduction23820.output := by lin_cert using reduction23820.terms
theorem substitutionProof23820 : IsMapEvaluation generatorImages reduction23820.relations [0,2,324,324] reduction23820.output := by lin_cert using reduction23820.terms
def map_5_5 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8 : InImage map_5_5 image8 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8 : Bundle := named_bundle% "RealMapCertificates/relations/basis8.json"
theorem reductionProof8 : EqualModuloRelations reduction8.relations reduction8.input reduction8.output := by lin_cert using reduction8.terms
theorem substitutionProof8 : IsMapEvaluation generatorImages reduction8.relations [0,0,0,0,0] reduction8.output := by lin_cert using reduction8.terms
def map_5_14 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image29 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation29 : InImage map_5_14 image29 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction29 : Bundle := named_bundle% "RealMapCertificates/relations/basis29.json"
theorem reductionProof29 : EqualModuloRelations reduction29.relations reduction29.input reduction29.output := by lin_cert using reduction29.terms
theorem substitutionProof29 : IsMapEvaluation generatorImages reduction29.relations [5] reduction29.output := by lin_cert using reduction29.terms
def map_5_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image33 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation33 : InImage map_5_16 image33 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction33 : Bundle := named_bundle% "RealMapCertificates/relations/basis33.json"
theorem reductionProof33 : EqualModuloRelations reduction33.relations reduction33.input reduction33.output := by lin_cert using reduction33.terms
theorem substitutionProof33 : IsMapEvaluation generatorImages reduction33.relations [6] reduction33.output := by lin_cert using reduction33.terms
def map_5_19 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image46 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation46 : InImage map_5_19 image46 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction46 : Bundle := named_bundle% "RealMapCertificates/relations/basis46.json"
theorem reductionProof46 : EqualModuloRelations reduction46.relations reduction46.input reduction46.output := by lin_cert using reduction46.terms
theorem substitutionProof46 : IsMapEvaluation generatorImages reduction46.relations [0,8] reduction46.output := by lin_cert using reduction46.terms
def map_5_20 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image50 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation50 : InImage map_5_20 image50 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction50 : Bundle := named_bundle% "RealMapCertificates/relations/basis50.json"
theorem reductionProof50 : EqualModuloRelations reduction50.relations reduction50.input reduction50.output := by lin_cert using reduction50.terms
theorem substitutionProof50 : IsMapEvaluation generatorImages reduction50.relations [1,8] reduction50.output := by lin_cert using reduction50.terms
def image51 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation51 : InImage map_5_20 image51 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction51 : Bundle := named_bundle% "RealMapCertificates/relations/basis51.json"
theorem reductionProof51 : EqualModuloRelations reduction51.relations reduction51.input reduction51.output := by lin_cert using reduction51.terms
theorem substitutionProof51 : IsMapEvaluation generatorImages reduction51.relations [0,0,0,0,7] reduction51.output := by lin_cert using reduction51.terms
def map_5_22 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image61 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation61 : InImage map_5_22 image61 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction61 : Bundle := named_bundle% "RealMapCertificates/relations/basis61.json"
theorem reductionProof61 : EqualModuloRelations reduction61.relations reduction61.input reduction61.output := by lin_cert using reduction61.terms
theorem substitutionProof61 : IsMapEvaluation generatorImages reduction61.relations [0,9] reduction61.output := by lin_cert using reduction61.terms
def map_5_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image69 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation69 : InImage map_5_23 image69 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction69 : Bundle := named_bundle% "RealMapCertificates/relations/basis69.json"
theorem reductionProof69 : EqualModuloRelations reduction69.relations reduction69.input reduction69.output := by lin_cert using reduction69.terms
theorem substitutionProof69 : IsMapEvaluation generatorImages reduction69.relations [0,10] reduction69.output := by lin_cert using reduction69.terms
def map_5_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image76 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation76 : InImage map_5_25 image76 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction76 : Bundle := named_bundle% "RealMapCertificates/relations/basis76.json"
theorem reductionProof76 : EqualModuloRelations reduction76.relations reduction76.input reduction76.output := by lin_cert using reduction76.terms
theorem substitutionProof76 : IsMapEvaluation generatorImages reduction76.relations [0,13] reduction76.output := by lin_cert using reduction76.terms
def map_5_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image80 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation80 : InImage map_5_26 image80 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction80 : Bundle := named_bundle% "RealMapCertificates/relations/basis80.json"
theorem reductionProof80 : EqualModuloRelations reduction80.relations reduction80.input reduction80.output := by lin_cert using reduction80.terms
theorem substitutionProof80 : IsMapEvaluation generatorImages reduction80.relations [1,13] reduction80.output := by lin_cert using reduction80.terms
def map_5_28 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image87 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation87 : InImage map_5_28 image87 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction87 : Bundle := named_bundle% "RealMapCertificates/relations/basis87.json"
theorem reductionProof87 : EqualModuloRelations reduction87.relations reduction87.input reduction87.output := by lin_cert using reduction87.terms
theorem substitutionProof87 : IsMapEvaluation generatorImages reduction87.relations [2,13] reduction87.output := by lin_cert using reduction87.terms
def map_5_29 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image91 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation91 : InImage map_5_29 image91 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction91 : Bundle := named_bundle% "RealMapCertificates/relations/basis91.json"
theorem reductionProof91 : EqualModuloRelations reduction91.relations reduction91.input reduction91.output := by lin_cert using reduction91.terms
theorem substitutionProof91 : IsMapEvaluation generatorImages reduction91.relations [1,4,7] reduction91.output := by lin_cert using reduction91.terms
def map_5_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation126 : InImage map_5_35 image126 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction126 : Bundle := named_bundle% "RealMapCertificates/relations/basis126.json"
theorem reductionProof126 : EqualModuloRelations reduction126.relations reduction126.input reduction126.output := by lin_cert using reduction126.terms
theorem substitutionProof126 : IsMapEvaluation generatorImages reduction126.relations [0,0,0,7,7] reduction126.output := by lin_cert using reduction126.terms
def map_5_36 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation133 : InImage map_5_36 image133 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction133 : Bundle := named_bundle% "RealMapCertificates/relations/basis133.json"
theorem reductionProof133 : EqualModuloRelations reduction133.relations reduction133.input reduction133.output := by lin_cert using reduction133.terms
theorem substitutionProof133 : IsMapEvaluation generatorImages reduction133.relations [24] reduction133.output := by lin_cert using reduction133.terms
def image134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation134 : InImage map_5_36 image134 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction134 : Bundle := named_bundle% "RealMapCertificates/relations/basis134.json"
theorem reductionProof134 : EqualModuloRelations reduction134.relations reduction134.input reduction134.output := by lin_cert using reduction134.terms
theorem substitutionProof134 : IsMapEvaluation generatorImages reduction134.relations [0,0,0,0,18] reduction134.output := by lin_cert using reduction134.terms
def map_5_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation153 : InImage map_5_38 image153 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction153 : Bundle := named_bundle% "RealMapCertificates/relations/basis153.json"
theorem reductionProof153 : EqualModuloRelations reduction153.relations reduction153.input reduction153.output := by lin_cert using reduction153.terms
theorem substitutionProof153 : IsMapEvaluation generatorImages reduction153.relations [0,26] reduction153.output := by lin_cert using reduction153.terms
def map_5_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation169 : InImage map_5_40 image169 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction169 : Bundle := named_bundle% "RealMapCertificates/relations/basis169.json"
theorem reductionProof169 : EqualModuloRelations reduction169.relations reduction169.input reduction169.output := by lin_cert using reduction169.terms
theorem substitutionProof169 : IsMapEvaluation generatorImages reduction169.relations [2,25] reduction169.output := by lin_cert using reduction169.terms
def map_5_42 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation186 : InImage map_5_42 image186 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction186 : Bundle := named_bundle% "RealMapCertificates/relations/basis186.json"
theorem reductionProof186 : EqualModuloRelations reduction186.relations reduction186.input reduction186.output := by lin_cert using reduction186.terms
theorem substitutionProof186 : IsMapEvaluation generatorImages reduction186.relations [34] reduction186.output := by lin_cert using reduction186.terms
def map_5_43 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation196 : InImage map_5_43 image196 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction196 : Bundle := named_bundle% "RealMapCertificates/relations/basis196.json"
theorem reductionProof196 : EqualModuloRelations reduction196.relations reduction196.input reduction196.output := by lin_cert using reduction196.terms
theorem substitutionProof196 : IsMapEvaluation generatorImages reduction196.relations [0,0,0,3,18] reduction196.output := by lin_cert using reduction196.terms
def map_5_44 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation208 : InImage map_5_44 image208 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction208 : Bundle := named_bundle% "RealMapCertificates/relations/basis208.json"
theorem reductionProof208 : EqualModuloRelations reduction208.relations reduction208.input reduction208.output := by lin_cert using reduction208.terms
theorem substitutionProof208 : IsMapEvaluation generatorImages reduction208.relations [1,35] reduction208.output := by lin_cert using reduction208.terms
def map_5_45 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation219 : InImage map_5_45 image219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction219 : Bundle := named_bundle% "RealMapCertificates/relations/basis219.json"
theorem reductionProof219 : EqualModuloRelations reduction219.relations reduction219.input reduction219.output := by lin_cert using reduction219.terms
theorem substitutionProof219 : IsMapEvaluation generatorImages reduction219.relations [1,4,18] reduction219.output := by lin_cert using reduction219.terms
def image220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation220 : InImage map_5_45 image220 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction220 : Bundle := named_bundle% "RealMapCertificates/relations/basis220.json"
theorem reductionProof220 : EqualModuloRelations reduction220.relations reduction220.input reduction220.output := by lin_cert using reduction220.terms
theorem substitutionProof220 : IsMapEvaluation generatorImages reduction220.relations [0,37] reduction220.output := by lin_cert using reduction220.terms
def map_5_46 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation232 : InImage map_5_46 image232 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction232 : Bundle := named_bundle% "RealMapCertificates/relations/basis232.json"
theorem reductionProof232 : EqualModuloRelations reduction232.relations reduction232.input reduction232.output := by lin_cert using reduction232.terms
theorem substitutionProof232 : IsMapEvaluation generatorImages reduction232.relations [0,0,38] reduction232.output := by lin_cert using reduction232.terms
def map_5_49 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation255 : InImage map_5_49 image255 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction255 : Bundle := named_bundle% "RealMapCertificates/relations/basis255.json"
theorem reductionProof255 : EqualModuloRelations reduction255.relations reduction255.input reduction255.output := by lin_cert using reduction255.terms
theorem substitutionProof255 : IsMapEvaluation generatorImages reduction255.relations [0,43] reduction255.output := by lin_cert using reduction255.terms
def map_5_50 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation264 : InImage map_5_50 image264 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction264 : Bundle := named_bundle% "RealMapCertificates/relations/basis264.json"
theorem reductionProof264 : EqualModuloRelations reduction264.relations reduction264.input reduction264.output := by lin_cert using reduction264.terms
theorem substitutionProof264 : IsMapEvaluation generatorImages reduction264.relations [8,18] reduction264.output := by lin_cert using reduction264.terms
def image265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation265 : InImage map_5_50 image265 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction265 : Bundle := named_bundle% "RealMapCertificates/relations/basis265.json"
theorem reductionProof265 : EqualModuloRelations reduction265.relations reduction265.input reduction265.output := by lin_cert using reduction265.terms
theorem substitutionProof265 : IsMapEvaluation generatorImages reduction265.relations [1,43] reduction265.output := by lin_cert using reduction265.terms
def map_5_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation280 : InImage map_5_52 image280 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction280 : Bundle := named_bundle% "RealMapCertificates/relations/basis280.json"
theorem reductionProof280 : EqualModuloRelations reduction280.relations reduction280.input reduction280.output := by lin_cert using reduction280.terms
theorem substitutionProof280 : IsMapEvaluation generatorImages reduction280.relations [2,43] reduction280.output := by lin_cert using reduction280.terms
def map_5_53 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation288 : InImage map_5_53 image288 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction288 : Bundle := named_bundle% "RealMapCertificates/relations/basis288.json"
theorem reductionProof288 : EqualModuloRelations reduction288.relations reduction288.input reduction288.output := by lin_cert using reduction288.terms
theorem substitutionProof288 : IsMapEvaluation generatorImages reduction288.relations [9,18] reduction288.output := by lin_cert using reduction288.terms
def map_5_54 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation300 : InImage map_5_54 image300 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction300 : Bundle := named_bundle% "RealMapCertificates/relations/basis300.json"
theorem reductionProof300 : EqualModuloRelations reduction300.relations reduction300.input reduction300.output := by lin_cert using reduction300.terms
theorem substitutionProof300 : IsMapEvaluation generatorImages reduction300.relations [10,18] reduction300.output := by lin_cert using reduction300.terms
def map_5_56 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation320 : InImage map_5_56 image320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction320 : Bundle := named_bundle% "RealMapCertificates/relations/basis320.json"
theorem reductionProof320 : EqualModuloRelations reduction320.relations reduction320.input reduction320.output := by lin_cert using reduction320.terms
theorem substitutionProof320 : IsMapEvaluation generatorImages reduction320.relations [3,43] reduction320.output := by lin_cert using reduction320.terms
def map_5_57 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation331 : InImage map_5_57 image331 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction331 : Bundle := named_bundle% "RealMapCertificates/relations/basis331.json"
theorem reductionProof331 : EqualModuloRelations reduction331.relations reduction331.input reduction331.output := by lin_cert using reduction331.terms
theorem substitutionProof331 : IsMapEvaluation generatorImages reduction331.relations [57] reduction331.output := by lin_cert using reduction331.terms
def map_5_58 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation339 : InImage map_5_58 image339 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction339 : Bundle := named_bundle% "RealMapCertificates/relations/basis339.json"
theorem reductionProof339 : EqualModuloRelations reduction339.relations reduction339.input reduction339.output := by lin_cert using reduction339.terms
theorem substitutionProof339 : IsMapEvaluation generatorImages reduction339.relations [2,11,18] reduction339.output := by lin_cert using reduction339.terms
def map_5_67 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation452 : InImage map_5_67 image452 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction452 : Bundle := named_bundle% "RealMapCertificates/relations/basis452.json"
theorem reductionProof452 : EqualModuloRelations reduction452.relations reduction452.input reduction452.output := by lin_cert using reduction452.terms
theorem substitutionProof452 : IsMapEvaluation generatorImages reduction452.relations [76] reduction452.output := by lin_cert using reduction452.terms
def image453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation453 : InImage map_5_67 image453 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction453 : Bundle := named_bundle% "RealMapCertificates/relations/basis453.json"
theorem reductionProof453 : EqualModuloRelations reduction453.relations reduction453.input reduction453.output := by lin_cert using reduction453.terms
theorem substitutionProof453 : IsMapEvaluation generatorImages reduction453.relations [1,70] reduction453.output := by lin_cert using reduction453.terms
def image454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation454 : InImage map_5_67 image454 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction454 : Bundle := named_bundle% "RealMapCertificates/relations/basis454.json"
theorem reductionProof454 : EqualModuloRelations reduction454.relations reduction454.input reduction454.output := by lin_cert using reduction454.terms
theorem substitutionProof454 : IsMapEvaluation generatorImages reduction454.relations [0,0,0,18,18] reduction454.output := by lin_cert using reduction454.terms
def map_5_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation471 : InImage map_5_68 image471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction471 : Bundle := named_bundle% "RealMapCertificates/relations/basis471.json"
theorem reductionProof471 : EqualModuloRelations reduction471.relations reduction471.input reduction471.output := by lin_cert using reduction471.terms
theorem substitutionProof471 : IsMapEvaluation generatorImages reduction471.relations [0,0,0,0,69] reduction471.output := by lin_cert using reduction471.terms
def map_5_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation495 : InImage map_5_69 image495 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction495 : Bundle := named_bundle% "RealMapCertificates/relations/basis495.json"
theorem reductionProof495 : EqualModuloRelations reduction495.relations reduction495.input reduction495.output := by lin_cert using reduction495.terms
theorem substitutionProof495 : IsMapEvaluation generatorImages reduction495.relations [2,70] reduction495.output := by lin_cert using reduction495.terms
def map_5_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation515 : InImage map_5_70 image515 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction515 : Bundle := named_bundle% "RealMapCertificates/relations/basis515.json"
theorem reductionProof515 : EqualModuloRelations reduction515.relations reduction515.input reduction515.output := by lin_cert using reduction515.terms
theorem substitutionProof515 : IsMapEvaluation generatorImages reduction515.relations [0,0,2,18,18] reduction515.output := by lin_cert using reduction515.terms
def map_5_72 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation559 : InImage map_5_72 image559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction559 : Bundle := named_bundle% "RealMapCertificates/relations/basis559.json"
theorem reductionProof559 : EqualModuloRelations reduction559.relations reduction559.input reduction559.output := by lin_cert using reduction559.terms
theorem substitutionProof559 : IsMapEvaluation generatorImages reduction559.relations [93] reduction559.output := by lin_cert using reduction559.terms
def image560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation560 : InImage map_5_72 image560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction560 : Bundle := named_bundle% "RealMapCertificates/relations/basis560.json"
theorem reductionProof560 : EqualModuloRelations reduction560.relations reduction560.input reduction560.output := by lin_cert using reduction560.terms
theorem substitutionProof560 : IsMapEvaluation generatorImages reduction560.relations [92] reduction560.output := by lin_cert using reduction560.terms
def map_5_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation580 : InImage map_5_73 image580 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction580 : Bundle := named_bundle% "RealMapCertificates/relations/basis580.json"
theorem reductionProof580 : EqualModuloRelations reduction580.relations reduction580.input reduction580.output := by lin_cert using reduction580.terms
theorem substitutionProof580 : IsMapEvaluation generatorImages reduction580.relations [0,94] reduction580.output := by lin_cert using reduction580.terms
def map_5_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation602 : InImage map_5_74 image602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction602 : Bundle := named_bundle% "RealMapCertificates/relations/basis602.json"
theorem reductionProof602 : EqualModuloRelations reduction602.relations reduction602.input reduction602.output := by lin_cert using reduction602.terms
theorem substitutionProof602 : IsMapEvaluation generatorImages reduction602.relations [0,96] reduction602.output := by lin_cert using reduction602.terms
def map_5_75 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation623 : InImage map_5_75 image623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction623 : Bundle := named_bundle% "RealMapCertificates/relations/basis623.json"
theorem reductionProof623 : EqualModuloRelations reduction623.relations reduction623.input reduction623.output := by lin_cert using reduction623.terms
theorem substitutionProof623 : IsMapEvaluation generatorImages reduction623.relations [1,96] reduction623.output := by lin_cert using reduction623.terms
def image624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation624 : InImage map_5_75 image624 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction624 : Bundle := named_bundle% "RealMapCertificates/relations/basis624.json"
theorem reductionProof624 : EqualModuloRelations reduction624.relations reduction624.input reduction624.output := by lin_cert using reduction624.terms
theorem substitutionProof624 : IsMapEvaluation generatorImages reduction624.relations [0,0,0,3,69] reduction624.output := by lin_cert using reduction624.terms
def map_5_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation644 : InImage map_5_76 image644 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction644 : Bundle := named_bundle% "RealMapCertificates/relations/basis644.json"
theorem reductionProof644 : EqualModuloRelations reduction644.relations reduction644.input reduction644.output := by lin_cert using reduction644.terms
theorem substitutionProof644 : IsMapEvaluation generatorImages reduction644.relations [1,99] reduction644.output := by lin_cert using reduction644.terms
def map_5_77 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation665 : InImage map_5_77 image665 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction665 : Bundle := named_bundle% "RealMapCertificates/relations/basis665.json"
theorem reductionProof665 : EqualModuloRelations reduction665.relations reduction665.input reduction665.output := by lin_cert using reduction665.terms
theorem substitutionProof665 : IsMapEvaluation generatorImages reduction665.relations [1,4,69] reduction665.output := by lin_cert using reduction665.terms
def map_5_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation731 : InImage map_5_80 image731 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction731 : Bundle := named_bundle% "RealMapCertificates/relations/basis731.json"
theorem reductionProof731 : EqualModuloRelations reduction731.relations reduction731.input reduction731.output := by lin_cert using reduction731.terms
theorem substitutionProof731 : IsMapEvaluation generatorImages reduction731.relations [3,94] reduction731.output := by lin_cert using reduction731.terms
def map_5_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation756 : InImage map_5_81 image756 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction756 : Bundle := named_bundle% "RealMapCertificates/relations/basis756.json"
theorem reductionProof756 : EqualModuloRelations reduction756.relations reduction756.input reduction756.output := by lin_cert using reduction756.terms
theorem substitutionProof756 : IsMapEvaluation generatorImages reduction756.relations [7,70] reduction756.output := by lin_cert using reduction756.terms
def map_5_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation777 : InImage map_5_82 image777 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction777 : Bundle := named_bundle% "RealMapCertificates/relations/basis777.json"
theorem reductionProof777 : EqualModuloRelations reduction777.relations reduction777.input reduction777.output := by lin_cert using reduction777.terms
theorem substitutionProof777 : IsMapEvaluation generatorImages reduction777.relations [8,69] reduction777.output := by lin_cert using reduction777.terms
def map_5_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation799 : InImage map_5_83 image799 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction799 : Bundle := named_bundle% "RealMapCertificates/relations/basis799.json"
theorem reductionProof799 : EqualModuloRelations reduction799.relations reduction799.input reduction799.output := by lin_cert using reduction799.terms
theorem substitutionProof799 : IsMapEvaluation generatorImages reduction799.relations [0,0,0,7,69] reduction799.output := by lin_cert using reduction799.terms
def map_5_84 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation832 : InImage map_5_84 image832 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction832 : Bundle := named_bundle% "RealMapCertificates/relations/basis832.json"
theorem reductionProof832 : EqualModuloRelations reduction832.relations reduction832.input reduction832.output := by lin_cert using reduction832.terms
theorem substitutionProof832 : IsMapEvaluation generatorImages reduction832.relations [131] reduction832.output := by lin_cert using reduction832.terms
def map_5_85 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation856 : InImage map_5_85 image856 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction856 : Bundle := named_bundle% "RealMapCertificates/relations/basis856.json"
theorem reductionProof856 : EqualModuloRelations reduction856.relations reduction856.input reduction856.output := by lin_cert using reduction856.terms
theorem substitutionProof856 : IsMapEvaluation generatorImages reduction856.relations [9,69] reduction856.output := by lin_cert using reduction856.terms
def image857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation857 : InImage map_5_85 image857 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction857 : Bundle := named_bundle% "RealMapCertificates/relations/basis857.json"
theorem reductionProof857 : EqualModuloRelations reduction857.relations reduction857.input reduction857.output := by lin_cert using reduction857.terms
theorem substitutionProof857 : IsMapEvaluation generatorImages reduction857.relations [0,132] reduction857.output := by lin_cert using reduction857.terms
def map_5_86 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation881 : InImage map_5_86 image881 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction881 : Bundle := named_bundle% "RealMapCertificates/relations/basis881.json"
theorem reductionProof881 : EqualModuloRelations reduction881.relations reduction881.input reduction881.output := by lin_cert using reduction881.terms
theorem substitutionProof881 : IsMapEvaluation generatorImages reduction881.relations [10,69] reduction881.output := by lin_cert using reduction881.terms
def image882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation882 : InImage map_5_86 image882 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction882 : Bundle := named_bundle% "RealMapCertificates/relations/basis882.json"
theorem reductionProof882 : EqualModuloRelations reduction882.relations reduction882.input reduction882.output := by lin_cert using reduction882.terms
theorem substitutionProof882 : IsMapEvaluation generatorImages reduction882.relations [0,0,2,7,69] reduction882.output := by lin_cert using reduction882.terms
def map_5_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation930 : InImage map_5_88 image930 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction930 : Bundle := named_bundle% "RealMapCertificates/relations/basis930.json"
theorem reductionProof930 : EqualModuloRelations reduction930.relations reduction930.input reduction930.output := by lin_cert using reduction930.terms
theorem substitutionProof930 : IsMapEvaluation generatorImages reduction930.relations [13,69] reduction930.output := by lin_cert using reduction930.terms
def image931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation931 : InImage map_5_88 image931 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction931 : Bundle := named_bundle% "RealMapCertificates/relations/basis931.json"
theorem reductionProof931 : EqualModuloRelations reduction931.relations reduction931.input reduction931.output := by lin_cert using reduction931.terms
theorem substitutionProof931 : IsMapEvaluation generatorImages reduction931.relations [2,132] reduction931.output := by lin_cert using reduction931.terms
def map_5_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation956 : InImage map_5_89 image956 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction956 : Bundle := named_bundle% "RealMapCertificates/relations/basis956.json"
theorem reductionProof956 : EqualModuloRelations reduction956.relations reduction956.input reduction956.output := by lin_cert using reduction956.terms
theorem substitutionProof956 : IsMapEvaluation generatorImages reduction956.relations [0,142] reduction956.output := by lin_cert using reduction956.terms
def map_5_90 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation990 : InImage map_5_90 image990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction990 : Bundle := named_bundle% "RealMapCertificates/relations/basis990.json"
theorem reductionProof990 : EqualModuloRelations reduction990.relations reduction990.input reduction990.output := by lin_cert using reduction990.terms
theorem substitutionProof990 : IsMapEvaluation generatorImages reduction990.relations [2,11,69] reduction990.output := by lin_cert using reduction990.terms
def image991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation991 : InImage map_5_90 image991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction991 : Bundle := named_bundle% "RealMapCertificates/relations/basis991.json"
theorem reductionProof991 : EqualModuloRelations reduction991.relations reduction991.input reduction991.output := by lin_cert using reduction991.terms
theorem substitutionProof991 : IsMapEvaluation generatorImages reduction991.relations [1,142] reduction991.output := by lin_cert using reduction991.terms
def image992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation992 : InImage map_5_90 image992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction992 : Bundle := named_bundle% "RealMapCertificates/relations/basis992.json"
theorem reductionProof992 : EqualModuloRelations reduction992.relations reduction992.input reduction992.output := by lin_cert using reduction992.terms
theorem substitutionProof992 : IsMapEvaluation generatorImages reduction992.relations [0,0,143] reduction992.output := by lin_cert using reduction992.terms
def map_5_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1015 : InImage map_5_91 image1015 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1015 : Bundle := named_bundle% "RealMapCertificates/relations/basis1015.json"
theorem reductionProof1015 : EqualModuloRelations reduction1015.relations reduction1015.input reduction1015.output := by lin_cert using reduction1015.terms
theorem substitutionProof1015 : IsMapEvaluation generatorImages reduction1015.relations [4,7,69] reduction1015.output := by lin_cert using reduction1015.terms
def map_5_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1037 : InImage map_5_92 image1037 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1037 : Bundle := named_bundle% "RealMapCertificates/relations/basis1037.json"
theorem reductionProof1037 : EqualModuloRelations reduction1037.relations reduction1037.input reduction1037.output := by lin_cert using reduction1037.terms
theorem substitutionProof1037 : IsMapEvaluation generatorImages reduction1037.relations [1,1,143] reduction1037.output := by lin_cert using reduction1037.terms
def map_5_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1159 : InImage map_5_97 image1159 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1159 : Bundle := named_bundle% "RealMapCertificates/relations/basis1159.json"
theorem reductionProof1159 : EqualModuloRelations reduction1159.relations reduction1159.input reduction1159.output := by lin_cert using reduction1159.terms
theorem substitutionProof1159 : IsMapEvaluation generatorImages reduction1159.relations [0,163] reduction1159.output := by lin_cert using reduction1159.terms
def map_5_98 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1181 : InImage map_5_98 image1181 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1181 : Bundle := named_bundle% "RealMapCertificates/relations/basis1181.json"
theorem reductionProof1181 : EqualModuloRelations reduction1181.relations reduction1181.input reduction1181.output := by lin_cert using reduction1181.terms
theorem substitutionProof1181 : IsMapEvaluation generatorImages reduction1181.relations [1,163] reduction1181.output := by lin_cert using reduction1181.terms
def image1182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1182 : InImage map_5_98 image1182 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1182 : Bundle := named_bundle% "RealMapCertificates/relations/basis1182.json"
theorem reductionProof1182 : EqualModuloRelations reduction1182.relations reduction1182.input reduction1182.output := by lin_cert using reduction1182.terms
theorem substitutionProof1182 : IsMapEvaluation generatorImages reduction1182.relations [0,0,7,7,69] reduction1182.output := by lin_cert using reduction1182.terms
def map_5_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1244 : InImage map_5_100 image1244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1244 : Bundle := named_bundle% "RealMapCertificates/relations/basis1244.json"
theorem reductionProof1244 : EqualModuloRelations reduction1244.relations reduction1244.input reduction1244.output := by lin_cert using reduction1244.terms
theorem substitutionProof1244 : IsMapEvaluation generatorImages reduction1244.relations [25,69] reduction1244.output := by lin_cert using reduction1244.terms
def image1245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1245 : InImage map_5_100 image1245 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1245 : Bundle := named_bundle% "RealMapCertificates/relations/basis1245.json"
theorem reductionProof1245 : EqualModuloRelations reduction1245.relations reduction1245.input reduction1245.output := by lin_cert using reduction1245.terms
theorem substitutionProof1245 : IsMapEvaluation generatorImages reduction1245.relations [2,163] reduction1245.output := by lin_cert using reduction1245.terms
def map_5_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1270 : InImage map_5_101 image1270 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1270 : Bundle := named_bundle% "RealMapCertificates/relations/basis1270.json"
theorem reductionProof1270 : EqualModuloRelations reduction1270.relations reduction1270.input reduction1270.output := by lin_cert using reduction1270.terms
theorem substitutionProof1270 : IsMapEvaluation generatorImages reduction1270.relations [26,69] reduction1270.output := by lin_cert using reduction1270.terms
def map_5_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1371 : InImage map_5_104 image1371 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1371 : Bundle := named_bundle% "RealMapCertificates/relations/basis1371.json"
theorem reductionProof1371 : EqualModuloRelations reduction1371.relations reduction1371.input reduction1371.output := by lin_cert using reduction1371.terms
theorem substitutionProof1371 : IsMapEvaluation generatorImages reduction1371.relations [3,163] reduction1371.output := by lin_cert using reduction1371.terms
def map_5_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1409 : InImage map_5_105 image1409 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1409 : Bundle := named_bundle% "RealMapCertificates/relations/basis1409.json"
theorem reductionProof1409 : EqualModuloRelations reduction1409.relations reduction1409.input reduction1409.output := by lin_cert using reduction1409.terms
theorem substitutionProof1409 : IsMapEvaluation generatorImages reduction1409.relations [0,7,143] reduction1409.output := by lin_cert using reduction1409.terms
def map_5_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1445 : InImage map_5_106 image1445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1445 : Bundle := named_bundle% "RealMapCertificates/relations/basis1445.json"
theorem reductionProof1445 : EqualModuloRelations reduction1445.relations reduction1445.input reduction1445.output := by lin_cert using reduction1445.terms
theorem substitutionProof1445 : IsMapEvaluation generatorImages reduction1445.relations [35,69] reduction1445.output := by lin_cert using reduction1445.terms
def map_5_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1518 : InImage map_5_108 image1518 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1518 : Bundle := named_bundle% "RealMapCertificates/relations/basis1518.json"
theorem reductionProof1518 : EqualModuloRelations reduction1518.relations reduction1518.input reduction1518.output := by lin_cert using reduction1518.terms
theorem substitutionProof1518 : IsMapEvaluation generatorImages reduction1518.relations [37,69] reduction1518.output := by lin_cert using reduction1518.terms
def map_5_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1550 : InImage map_5_109 image1550 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1550 : Bundle := named_bundle% "RealMapCertificates/relations/basis1550.json"
theorem reductionProof1550 : EqualModuloRelations reduction1550.relations reduction1550.input reduction1550.output := by lin_cert using reduction1550.terms
theorem substitutionProof1550 : IsMapEvaluation generatorImages reduction1550.relations [0,38,69] reduction1550.output := by lin_cert using reduction1550.terms
def map_5_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1666 : InImage map_5_112 image1666 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1666 : Bundle := named_bundle% "RealMapCertificates/relations/basis1666.json"
theorem reductionProof1666 : EqualModuloRelations reduction1666.relations reduction1666.input reduction1666.output := by lin_cert using reduction1666.terms
theorem substitutionProof1666 : IsMapEvaluation generatorImages reduction1666.relations [7,163] reduction1666.output := by lin_cert using reduction1666.terms
def map_5_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1739 : InImage map_5_114 image1739 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1739 : Bundle := named_bundle% "RealMapCertificates/relations/basis1739.json"
theorem reductionProof1739 : EqualModuloRelations reduction1739.relations reduction1739.input reduction1739.output := by lin_cert using reduction1739.terms
theorem substitutionProof1739 : IsMapEvaluation generatorImages reduction1739.relations [242] reduction1739.output := by lin_cert using reduction1739.terms
def map_5_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1802 : InImage map_5_116 image1802 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1802 : Bundle := named_bundle% "RealMapCertificates/relations/basis1802.json"
theorem reductionProof1802 : EqualModuloRelations reduction1802.relations reduction1802.input reduction1802.output := by lin_cert using reduction1802.terms
theorem substitutionProof1802 : IsMapEvaluation generatorImages reduction1802.relations [3,38,69] reduction1802.output := by lin_cert using reduction1802.terms
def map_5_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2435 : InImage map_5_130 image2435 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2435 : Bundle := named_bundle% "RealMapCertificates/relations/basis2435.json"
theorem reductionProof2435 : EqualModuloRelations reduction2435.relations reduction2435.input reduction2435.output := by lin_cert using reduction2435.terms
theorem substitutionProof2435 : IsMapEvaluation generatorImages reduction2435.relations [340] reduction2435.output := by lin_cert using reduction2435.terms
def map_5_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2494 : InImage map_5_131 image2494 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2494 : Bundle := named_bundle% "RealMapCertificates/relations/basis2494.json"
theorem reductionProof2494 : EqualModuloRelations reduction2494.relations reduction2494.input reduction2494.output := by lin_cert using reduction2494.terms
theorem substitutionProof2494 : IsMapEvaluation generatorImages reduction2494.relations [0,0,0,69,69] reduction2494.output := by lin_cert using reduction2494.terms
def map_5_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2575 : InImage map_5_132 image2575 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2575 : Bundle := named_bundle% "RealMapCertificates/relations/basis2575.json"
theorem reductionProof2575 : EqualModuloRelations reduction2575.relations reduction2575.input reduction2575.output := by lin_cert using reduction2575.terms
theorem substitutionProof2575 : IsMapEvaluation generatorImages reduction2575.relations [0,0,0,0,324] reduction2575.output := by lin_cert using reduction2575.terms
def map_5_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2635 : InImage map_5_133 image2635 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2635 : Bundle := named_bundle% "RealMapCertificates/relations/basis2635.json"
theorem reductionProof2635 : EqualModuloRelations reduction2635.relations reduction2635.input reduction2635.output := by lin_cert using reduction2635.terms
theorem substitutionProof2635 : IsMapEvaluation generatorImages reduction2635.relations [378] reduction2635.output := by lin_cert using reduction2635.terms
def map_5_134 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2715 : InImage map_5_134 image2715 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2715 : Bundle := named_bundle% "RealMapCertificates/relations/basis2715.json"
theorem reductionProof2715 : EqualModuloRelations reduction2715.relations reduction2715.input reduction2715.output := by lin_cert using reduction2715.terms
theorem substitutionProof2715 : IsMapEvaluation generatorImages reduction2715.relations [400] reduction2715.output := by lin_cert using reduction2715.terms
def image2716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2716 : InImage map_5_134 image2716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2716 : Bundle := named_bundle% "RealMapCertificates/relations/basis2716.json"
theorem reductionProof2716 : EqualModuloRelations reduction2716.relations reduction2716.input reduction2716.output := by lin_cert using reduction2716.terms
theorem substitutionProof2716 : IsMapEvaluation generatorImages reduction2716.relations [2,341] reduction2716.output := by lin_cert using reduction2716.terms
def image2717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2717 : InImage map_5_134 image2717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2717 : Bundle := named_bundle% "RealMapCertificates/relations/basis2717.json"
theorem reductionProof2717 : EqualModuloRelations reduction2717.relations reduction2717.input reduction2717.output := by lin_cert using reduction2717.terms
theorem substitutionProof2717 : IsMapEvaluation generatorImages reduction2717.relations [0,0,2,69,69] reduction2717.output := by lin_cert using reduction2717.terms
def map_5_138 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3037 : InImage map_5_138 image3037 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3037 : Bundle := named_bundle% "RealMapCertificates/relations/basis3037.json"
theorem reductionProof3037 : EqualModuloRelations reduction3037.relations reduction3037.input reduction3037.output := by lin_cert using reduction3037.terms
theorem substitutionProof3037 : IsMapEvaluation generatorImages reduction3037.relations [3,341] reduction3037.output := by lin_cert using reduction3037.terms
def image3038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3038 : InImage map_5_138 image3038 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3038 : Bundle := named_bundle% "RealMapCertificates/relations/basis3038.json"
theorem reductionProof3038 : EqualModuloRelations reduction3038.relations reduction3038.input reduction3038.output := by lin_cert using reduction3038.terms
theorem substitutionProof3038 : IsMapEvaluation generatorImages reduction3038.relations [0,0,3,69,69] reduction3038.output := by lin_cert using reduction3038.terms
def map_5_139 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3105 : InImage map_5_139 image3105 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3105 : Bundle := named_bundle% "RealMapCertificates/relations/basis3105.json"
theorem reductionProof3105 : EqualModuloRelations reduction3105.relations reduction3105.input reduction3105.output := by lin_cert using reduction3105.terms
theorem substitutionProof3105 : IsMapEvaluation generatorImages reduction3105.relations [4,69,69] reduction3105.output := by lin_cert using reduction3105.terms
def image3106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3106 : InImage map_5_139 image3106 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3106 : Bundle := named_bundle% "RealMapCertificates/relations/basis3106.json"
theorem reductionProof3106 : EqualModuloRelations reduction3106.relations reduction3106.input reduction3106.output := by lin_cert using reduction3106.terms
theorem substitutionProof3106 : IsMapEvaluation generatorImages reduction3106.relations [0,0,0,3,324] reduction3106.output := by lin_cert using reduction3106.terms
def map_5_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3194 : InImage map_5_140 image3194 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3194 : Bundle := named_bundle% "RealMapCertificates/relations/basis3194.json"
theorem reductionProof3194 : EqualModuloRelations reduction3194.relations reduction3194.input reduction3194.output := by lin_cert using reduction3194.terms
theorem substitutionProof3194 : IsMapEvaluation generatorImages reduction3194.relations [1,1,3,69,69] reduction3194.output := by lin_cert using reduction3194.terms
def map_5_141 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3285 : InImage map_5_141 image3285 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3285 : Bundle := named_bundle% "RealMapCertificates/relations/basis3285.json"
theorem reductionProof3285 : EqualModuloRelations reduction3285.relations reduction3285.input reduction3285.output := by lin_cert using reduction3285.terms
theorem substitutionProof3285 : IsMapEvaluation generatorImages reduction3285.relations [1,4,324] reduction3285.output := by lin_cert using reduction3285.terms
def map_5_144 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3531 : InImage map_5_144 image3531 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3531 : Bundle := named_bundle% "RealMapCertificates/relations/basis3531.json"
theorem reductionProof3531 : EqualModuloRelations reduction3531.relations reduction3531.input reduction3531.output := by lin_cert using reduction3531.terms
theorem substitutionProof3531 : IsMapEvaluation generatorImages reduction3531.relations [507] reduction3531.output := by lin_cert using reduction3531.terms
def image3532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3532 : InImage map_5_144 image3532 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3532 : Bundle := named_bundle% "RealMapCertificates/relations/basis3532.json"
theorem reductionProof3532 : EqualModuloRelations reduction3532.relations reduction3532.input reduction3532.output := by lin_cert using reduction3532.terms
theorem substitutionProof3532 : IsMapEvaluation generatorImages reduction3532.relations [506] reduction3532.output := by lin_cert using reduction3532.terms
def map_5_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3598 : InImage map_5_145 image3598 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3598 : Bundle := named_bundle% "RealMapCertificates/relations/basis3598.json"
theorem reductionProof3598 : EqualModuloRelations reduction3598.relations reduction3598.input reduction3598.output := by lin_cert using reduction3598.terms
theorem substitutionProof3598 : IsMapEvaluation generatorImages reduction3598.relations [0,508] reduction3598.output := by lin_cert using reduction3598.terms
def map_5_146 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3692 : InImage map_5_146 image3692 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3692 : Bundle := named_bundle% "RealMapCertificates/relations/basis3692.json"
theorem reductionProof3692 : EqualModuloRelations reduction3692.relations reduction3692.input reduction3692.output := by lin_cert using reduction3692.terms
theorem substitutionProof3692 : IsMapEvaluation generatorImages reduction3692.relations [526] reduction3692.output := by lin_cert using reduction3692.terms
def image3693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3693 : InImage map_5_146 image3693 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3693 : Bundle := named_bundle% "RealMapCertificates/relations/basis3693.json"
theorem reductionProof3693 : EqualModuloRelations reduction3693.relations reduction3693.input reduction3693.output := by lin_cert using reduction3693.terms
theorem substitutionProof3693 : IsMapEvaluation generatorImages reduction3693.relations [8,324] reduction3693.output := by lin_cert using reduction3693.terms
def image3694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3694 : InImage map_5_146 image3694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3694 : Bundle := named_bundle% "RealMapCertificates/relations/basis3694.json"
theorem reductionProof3694 : EqualModuloRelations reduction3694.relations reduction3694.input reduction3694.output := by lin_cert using reduction3694.terms
theorem substitutionProof3694 : IsMapEvaluation generatorImages reduction3694.relations [1,508] reduction3694.output := by lin_cert using reduction3694.terms
end RealMapCertificates
