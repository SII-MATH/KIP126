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
  | 23 => [[7,7]]
  | 24 => []
  | 25 => []
  | 26 => []
  | 28 => []
  | 33 => []
  | 34 => []
  | 35 => []
  | 36 => []
  | 37 => []
  | 38 => []
  | 43 => []
  | 54 => []
  | 61 => []
  | 68 => []
  | 70 => []
  | 74 => []
  | 75 => []
  | 94 => []
  | 96 => []
  | 99 => []
  | 132 => []
  | 142 => []
  | 143 => []
  | 324 => []
  | 341 => []
  | 508 => []
  | 527 => []
  | 548 => []
  | 660 => []
  | 750 => []
  | 751 => []
  | 849 => []
  | 850 => []
  | 1058 => []
  | 1716 => []
  | 2626 => []
  | 2669 => []
  | 2857 => []
  | 2858 => []
  | _ => []
def map_5_147 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3793 : InImage map_5_147 image3793 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3793 : Bundle := named_bundle% "RealMapCertificates/relations/basis3793.json"
theorem reductionProof3793 : EqualModuloRelations reduction3793.relations reduction3793.input reduction3793.output := by lin_cert using reduction3793.terms
theorem substitutionProof3793 : IsMapEvaluation generatorImages reduction3793.relations [0,0,0,7,324] reduction3793.output := by lin_cert using reduction3793.terms
def map_5_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3868 : InImage map_5_148 image3868 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3868 : Bundle := named_bundle% "RealMapCertificates/relations/basis3868.json"
theorem reductionProof3868 : EqualModuloRelations reduction3868.relations reduction3868.input reduction3868.output := by lin_cert using reduction3868.terms
theorem substitutionProof3868 : IsMapEvaluation generatorImages reduction3868.relations [1,527] reduction3868.output := by lin_cert using reduction3868.terms
def map_5_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3946 : InImage map_5_149 image3946 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3946 : Bundle := named_bundle% "RealMapCertificates/relations/basis3946.json"
theorem reductionProof3946 : EqualModuloRelations reduction3946.relations reduction3946.input reduction3946.output := by lin_cert using reduction3946.terms
theorem substitutionProof3946 : IsMapEvaluation generatorImages reduction3946.relations [9,324] reduction3946.output := by lin_cert using reduction3946.terms
def image3947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3947 : InImage map_5_149 image3947 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3947 : Bundle := named_bundle% "RealMapCertificates/relations/basis3947.json"
theorem reductionProof3947 : EqualModuloRelations reduction3947.relations reduction3947.input reduction3947.output := by lin_cert using reduction3947.terms
theorem substitutionProof3947 : IsMapEvaluation generatorImages reduction3947.relations [0,548] reduction3947.output := by lin_cert using reduction3947.terms
def map_5_150 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4068 : InImage map_5_150 image4068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4068 : Bundle := named_bundle% "RealMapCertificates/relations/basis4068.json"
theorem reductionProof4068 : EqualModuloRelations reduction4068.relations reduction4068.input reduction4068.output := by lin_cert using reduction4068.terms
theorem substitutionProof4068 : IsMapEvaluation generatorImages reduction4068.relations [10,324] reduction4068.output := by lin_cert using reduction4068.terms
def image4069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4069 : InImage map_5_150 image4069 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4069 : Bundle := named_bundle% "RealMapCertificates/relations/basis4069.json"
theorem reductionProof4069 : EqualModuloRelations reduction4069.relations reduction4069.input reduction4069.output := by lin_cert using reduction4069.terms
theorem substitutionProof4069 : IsMapEvaluation generatorImages reduction4069.relations [2,527] reduction4069.output := by lin_cert using reduction4069.terms
def image4070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4070 : InImage map_5_150 image4070 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4070 : Bundle := named_bundle% "RealMapCertificates/relations/basis4070.json"
theorem reductionProof4070 : EqualModuloRelations reduction4070.relations reduction4070.input reduction4070.output := by lin_cert using reduction4070.terms
theorem substitutionProof4070 : IsMapEvaluation generatorImages reduction4070.relations [0,0,2,7,324] reduction4070.output := by lin_cert using reduction4070.terms
def map_5_152 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4228 : InImage map_5_152 image4228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4228 : Bundle := named_bundle% "RealMapCertificates/relations/basis4228.json"
theorem reductionProof4228 : EqualModuloRelations reduction4228.relations reduction4228.input reduction4228.output := by lin_cert using reduction4228.terms
theorem substitutionProof4228 : IsMapEvaluation generatorImages reduction4228.relations [13,324] reduction4228.output := by lin_cert using reduction4228.terms
def image4229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4229 : InImage map_5_152 image4229 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4229 : Bundle := named_bundle% "RealMapCertificates/relations/basis4229.json"
theorem reductionProof4229 : EqualModuloRelations reduction4229.relations reduction4229.input reduction4229.output := by lin_cert using reduction4229.terms
theorem substitutionProof4229 : IsMapEvaluation generatorImages reduction4229.relations [2,548] reduction4229.output := by lin_cert using reduction4229.terms
def map_5_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4395 : InImage map_5_154 image4395 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4395 : Bundle := named_bundle% "RealMapCertificates/relations/basis4395.json"
theorem reductionProof4395 : EqualModuloRelations reduction4395.relations reduction4395.input reduction4395.output := by lin_cert using reduction4395.terms
theorem substitutionProof4395 : IsMapEvaluation generatorImages reduction4395.relations [2,11,324] reduction4395.output := by lin_cert using reduction4395.terms
def map_5_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4469 : InImage map_5_155 image4469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4469 : Bundle := named_bundle% "RealMapCertificates/relations/basis4469.json"
theorem reductionProof4469 : EqualModuloRelations reduction4469.relations reduction4469.input reduction4469.output := by lin_cert using reduction4469.terms
theorem substitutionProof4469 : IsMapEvaluation generatorImages reduction4469.relations [4,7,324] reduction4469.output := by lin_cert using reduction4469.terms
def map_5_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4915 : InImage map_5_160 image4915 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4915 : Bundle := named_bundle% "RealMapCertificates/relations/basis4915.json"
theorem reductionProof4915 : EqualModuloRelations reduction4915.relations reduction4915.input reduction4915.output := by lin_cert using reduction4915.terms
theorem substitutionProof4915 : IsMapEvaluation generatorImages reduction4915.relations [7,508] reduction4915.output := by lin_cert using reduction4915.terms
def map_5_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5004 : InImage map_5_161 image5004 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5004 : Bundle := named_bundle% "RealMapCertificates/relations/basis5004.json"
theorem reductionProof5004 : EqualModuloRelations reduction5004.relations reduction5004.input reduction5004.output := by lin_cert using reduction5004.terms
theorem substitutionProof5004 : IsMapEvaluation generatorImages reduction5004.relations [660] reduction5004.output := by lin_cert using reduction5004.terms
def map_5_162 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5127 : InImage map_5_162 image5127 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5127 : Bundle := named_bundle% "RealMapCertificates/relations/basis5127.json"
theorem reductionProof5127 : EqualModuloRelations reduction5127.relations reduction5127.input reduction5127.output := by lin_cert using reduction5127.terms
theorem substitutionProof5127 : IsMapEvaluation generatorImages reduction5127.relations [18,341] reduction5127.output := by lin_cert using reduction5127.terms
def image5128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5128 : InImage map_5_162 image5128 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5128 : Bundle := named_bundle% "RealMapCertificates/relations/basis5128.json"
theorem reductionProof5128 : EqualModuloRelations reduction5128.relations reduction5128.input reduction5128.output := by lin_cert using reduction5128.terms
theorem substitutionProof5128 : IsMapEvaluation generatorImages reduction5128.relations [0,0,7,7,324] reduction5128.output := by lin_cert using reduction5128.terms
def map_5_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5205 : InImage map_5_163 image5205 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5205 : Bundle := named_bundle% "RealMapCertificates/relations/basis5205.json"
theorem reductionProof5205 : EqualModuloRelations reduction5205.relations reduction5205.input reduction5205.output := by lin_cert using reduction5205.terms
theorem substitutionProof5205 : IsMapEvaluation generatorImages reduction5205.relations [0,0,0,18,324] reduction5205.output := by lin_cert using reduction5205.terms
def map_5_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5305 : InImage map_5_164 image5305 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5305 : Bundle := named_bundle% "RealMapCertificates/relations/basis5305.json"
theorem reductionProof5305 : EqualModuloRelations reduction5305.relations reduction5305.input reduction5305.output := by lin_cert using reduction5305.terms
theorem substitutionProof5305 : IsMapEvaluation generatorImages reduction5305.relations [25,324] reduction5305.output := by lin_cert using reduction5305.terms
def map_5_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5429 : InImage map_5_165 image5429 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5429 : Bundle := named_bundle% "RealMapCertificates/relations/basis5429.json"
theorem reductionProof5429 : EqualModuloRelations reduction5429.relations reduction5429.input reduction5429.output := by lin_cert using reduction5429.terms
theorem substitutionProof5429 : IsMapEvaluation generatorImages reduction5429.relations [26,324] reduction5429.output := by lin_cert using reduction5429.terms
def map_5_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5529 : InImage map_5_166 image5529 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5529 : Bundle := named_bundle% "RealMapCertificates/relations/basis5529.json"
theorem reductionProof5529 : EqualModuloRelations reduction5529.relations reduction5529.input reduction5529.output := by lin_cert using reduction5529.terms
theorem substitutionProof5529 : IsMapEvaluation generatorImages reduction5529.relations [0,0,2,18,324] reduction5529.output := by lin_cert using reduction5529.terms
def map_5_168 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5763 : InImage map_5_168 image5763 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5763 : Bundle := named_bundle% "RealMapCertificates/relations/basis5763.json"
theorem reductionProof5763 : EqualModuloRelations reduction5763.relations reduction5763.input reduction5763.output := by lin_cert using reduction5763.terms
theorem substitutionProof5763 : IsMapEvaluation generatorImages reduction5763.relations [750] reduction5763.output := by lin_cert using reduction5763.terms
def map_5_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5854 : InImage map_5_169 image5854 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5854 : Bundle := named_bundle% "RealMapCertificates/relations/basis5854.json"
theorem reductionProof5854 : EqualModuloRelations reduction5854.relations reduction5854.input reduction5854.output := by lin_cert using reduction5854.terms
theorem substitutionProof5854 : IsMapEvaluation generatorImages reduction5854.relations [0,751] reduction5854.output := by lin_cert using reduction5854.terms
def map_5_170 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5966 : InImage map_5_170 image5966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5966 : Bundle := named_bundle% "RealMapCertificates/relations/basis5966.json"
theorem reductionProof5966 : EqualModuloRelations reduction5966.relations reduction5966.input reduction5966.output := by lin_cert using reduction5966.terms
theorem substitutionProof5966 : IsMapEvaluation generatorImages reduction5966.relations [35,324] reduction5966.output := by lin_cert using reduction5966.terms
def image5967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5967 : InImage map_5_170 image5967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5967 : Bundle := named_bundle% "RealMapCertificates/relations/basis5967.json"
theorem reductionProof5967 : EqualModuloRelations reduction5967.relations reduction5967.input reduction5967.output := by lin_cert using reduction5967.terms
theorem substitutionProof5967 : IsMapEvaluation generatorImages reduction5967.relations [1,751] reduction5967.output := by lin_cert using reduction5967.terms
def image5968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5968 : InImage map_5_170 image5968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5968 : Bundle := named_bundle% "RealMapCertificates/relations/basis5968.json"
theorem reductionProof5968 : EqualModuloRelations reduction5968.relations reduction5968.input reduction5968.output := by lin_cert using reduction5968.terms
theorem substitutionProof5968 : IsMapEvaluation generatorImages reduction5968.relations [0,0,3,18,324] reduction5968.output := by lin_cert using reduction5968.terms
def map_5_171 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6103 : InImage map_5_171 image6103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6103 : Bundle := named_bundle% "RealMapCertificates/relations/basis6103.json"
theorem reductionProof6103 : EqualModuloRelations reduction6103.relations reduction6103.input reduction6103.output := by lin_cert using reduction6103.terms
theorem substitutionProof6103 : IsMapEvaluation generatorImages reduction6103.relations [4,18,324] reduction6103.output := by lin_cert using reduction6103.terms
def map_5_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6191 : InImage map_5_172 image6191 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6191 : Bundle := named_bundle% "RealMapCertificates/relations/basis6191.json"
theorem reductionProof6191 : EqualModuloRelations reduction6191.relations reduction6191.input reduction6191.output := by lin_cert using reduction6191.terms
theorem substitutionProof6191 : IsMapEvaluation generatorImages reduction6191.relations [37,324] reduction6191.output := by lin_cert using reduction6191.terms
def image6192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6192 : InImage map_5_172 image6192 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6192 : Bundle := named_bundle% "RealMapCertificates/relations/basis6192.json"
theorem reductionProof6192 : EqualModuloRelations reduction6192.relations reduction6192.input reduction6192.output := by lin_cert using reduction6192.terms
theorem substitutionProof6192 : IsMapEvaluation generatorImages reduction6192.relations [1,1,3,18,324] reduction6192.output := by lin_cert using reduction6192.terms
def map_5_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6288 : InImage map_5_173 image6288 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6288 : Bundle := named_bundle% "RealMapCertificates/relations/basis6288.json"
theorem reductionProof6288 : EqualModuloRelations reduction6288.relations reduction6288.input reduction6288.output := by lin_cert using reduction6288.terms
theorem substitutionProof6288 : IsMapEvaluation generatorImages reduction6288.relations [0,38,324] reduction6288.output := by lin_cert using reduction6288.terms
def map_5_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6642 : InImage map_5_176 image6642 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6642 : Bundle := named_bundle% "RealMapCertificates/relations/basis6642.json"
theorem reductionProof6642 : EqualModuloRelations reduction6642.relations reduction6642.input reduction6642.output := by lin_cert using reduction6642.terms
theorem substitutionProof6642 : IsMapEvaluation generatorImages reduction6642.relations [43,324] reduction6642.output := by lin_cert using reduction6642.terms
def image6643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6643 : InImage map_5_176 image6643 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6643 : Bundle := named_bundle% "RealMapCertificates/relations/basis6643.json"
theorem reductionProof6643 : EqualModuloRelations reduction6643.relations reduction6643.input reduction6643.output := by lin_cert using reduction6643.terms
theorem substitutionProof6643 : IsMapEvaluation generatorImages reduction6643.relations [3,751] reduction6643.output := by lin_cert using reduction6643.terms
def map_5_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6779 : InImage map_5_177 image6779 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6779 : Bundle := named_bundle% "RealMapCertificates/relations/basis6779.json"
theorem reductionProof6779 : EqualModuloRelations reduction6779.relations reduction6779.input reduction6779.output := by lin_cert using reduction6779.terms
theorem substitutionProof6779 : IsMapEvaluation generatorImages reduction6779.relations [0,849] reduction6779.output := by lin_cert using reduction6779.terms
def image6780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6780 : InImage map_5_177 image6780 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6780 : Bundle := named_bundle% "RealMapCertificates/relations/basis6780.json"
theorem reductionProof6780 : EqualModuloRelations reduction6780.relations reduction6780.input reduction6780.output := by lin_cert using reduction6780.terms
theorem substitutionProof6780 : IsMapEvaluation generatorImages reduction6780.relations [0,3,3,18,324] reduction6780.output := by lin_cert using reduction6780.terms
def map_5_178 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6885 : InImage map_5_178 image6885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6885 : Bundle := named_bundle% "RealMapCertificates/relations/basis6885.json"
theorem reductionProof6885 : EqualModuloRelations reduction6885.relations reduction6885.input reduction6885.output := by lin_cert using reduction6885.terms
theorem substitutionProof6885 : IsMapEvaluation generatorImages reduction6885.relations [1,849] reduction6885.output := by lin_cert using reduction6885.terms
def image6886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6886 : InImage map_5_178 image6886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6886 : Bundle := named_bundle% "RealMapCertificates/relations/basis6886.json"
theorem reductionProof6886 : EqualModuloRelations reduction6886.relations reduction6886.input reduction6886.output := by lin_cert using reduction6886.terms
theorem substitutionProof6886 : IsMapEvaluation generatorImages reduction6886.relations [0,0,850] reduction6886.output := by lin_cert using reduction6886.terms
def map_5_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7155 : InImage map_5_180 image7155 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7155 : Bundle := named_bundle% "RealMapCertificates/relations/basis7155.json"
theorem reductionProof7155 : EqualModuloRelations reduction7155.relations reduction7155.input reduction7155.output := by lin_cert using reduction7155.terms
theorem substitutionProof7155 : IsMapEvaluation generatorImages reduction7155.relations [3,38,324] reduction7155.output := by lin_cert using reduction7155.terms
def image7156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7156 : InImage map_5_180 image7156 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7156 : Bundle := named_bundle% "RealMapCertificates/relations/basis7156.json"
theorem reductionProof7156 : EqualModuloRelations reduction7156.relations reduction7156.input reduction7156.output := by lin_cert using reduction7156.terms
theorem substitutionProof7156 : IsMapEvaluation generatorImages reduction7156.relations [2,849] reduction7156.output := by lin_cert using reduction7156.terms
def image7157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7157 : InImage map_5_180 image7157 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7157 : Bundle := named_bundle% "RealMapCertificates/relations/basis7157.json"
theorem reductionProof7157 : EqualModuloRelations reduction7157.relations reduction7157.input reduction7157.output := by lin_cert using reduction7157.terms
theorem substitutionProof7157 : IsMapEvaluation generatorImages reduction7157.relations [1,1,850] reduction7157.output := by lin_cert using reduction7157.terms
def map_5_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7243 : InImage map_5_181 image7243 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7243 : Bundle := named_bundle% "RealMapCertificates/relations/basis7243.json"
theorem reductionProof7243 : EqualModuloRelations reduction7243.relations reduction7243.input reduction7243.output := by lin_cert using reduction7243.terms
theorem substitutionProof7243 : IsMapEvaluation generatorImages reduction7243.relations [0,2,850] reduction7243.output := by lin_cert using reduction7243.terms
def map_5_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7367 : InImage map_5_182 image7367 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7367 : Bundle := named_bundle% "RealMapCertificates/relations/basis7367.json"
theorem reductionProof7367 : EqualModuloRelations reduction7367.relations reduction7367.input reduction7367.output := by lin_cert using reduction7367.terms
theorem substitutionProof7367 : IsMapEvaluation generatorImages reduction7367.relations [11,18,324] reduction7367.output := by lin_cert using reduction7367.terms
def map_5_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7605 : InImage map_5_184 image7605 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7605 : Bundle := named_bundle% "RealMapCertificates/relations/basis7605.json"
theorem reductionProof7605 : EqualModuloRelations reduction7605.relations reduction7605.input reduction7605.output := by lin_cert using reduction7605.terms
theorem substitutionProof7605 : IsMapEvaluation generatorImages reduction7605.relations [2,2,850] reduction7605.output := by lin_cert using reduction7605.terms
def map_5_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8698 : InImage map_5_193 image8698 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8698 : Bundle := named_bundle% "RealMapCertificates/relations/basis8698.json"
theorem reductionProof8698 : EqualModuloRelations reduction8698.relations reduction8698.input reduction8698.output := by lin_cert using reduction8698.terms
theorem substitutionProof8698 : IsMapEvaluation generatorImages reduction8698.relations [70,324] reduction8698.output := by lin_cert using reduction8698.terms
def image8699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8699 : InImage map_5_193 image8699 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8699 : Bundle := named_bundle% "RealMapCertificates/relations/basis8699.json"
theorem reductionProof8699 : EqualModuloRelations reduction8699.relations reduction8699.input reduction8699.output := by lin_cert using reduction8699.terms
theorem substitutionProof8699 : IsMapEvaluation generatorImages reduction8699.relations [0,1058] reduction8699.output := by lin_cert using reduction8699.terms
def map_5_194 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8845 : InImage map_5_194 image8845 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8845 : Bundle := named_bundle% "RealMapCertificates/relations/basis8845.json"
theorem reductionProof8845 : EqualModuloRelations reduction8845.relations reduction8845.input reduction8845.output := by lin_cert using reduction8845.terms
theorem substitutionProof8845 : IsMapEvaluation generatorImages reduction8845.relations [1,1058] reduction8845.output := by lin_cert using reduction8845.terms
def image8846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8846 : InImage map_5_194 image8846 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8846 : Bundle := named_bundle% "RealMapCertificates/relations/basis8846.json"
theorem reductionProof8846 : EqualModuloRelations reduction8846.relations reduction8846.input reduction8846.output := by lin_cert using reduction8846.terms
theorem substitutionProof8846 : IsMapEvaluation generatorImages reduction8846.relations [0,0,18,18,324] reduction8846.output := by lin_cert using reduction8846.terms
def map_5_196 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9125 : InImage map_5_196 image9125 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9125 : Bundle := named_bundle% "RealMapCertificates/relations/basis9125.json"
theorem reductionProof9125 : EqualModuloRelations reduction9125.relations reduction9125.input reduction9125.output := by lin_cert using reduction9125.terms
theorem substitutionProof9125 : IsMapEvaluation generatorImages reduction9125.relations [2,1058] reduction9125.output := by lin_cert using reduction9125.terms
def image9126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9126 : InImage map_5_196 image9126 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9126 : Bundle := named_bundle% "RealMapCertificates/relations/basis9126.json"
theorem reductionProof9126 : EqualModuloRelations reduction9126.relations reduction9126.input reduction9126.output := by lin_cert using reduction9126.terms
theorem substitutionProof9126 : IsMapEvaluation generatorImages reduction9126.relations [1,1,18,18,324] reduction9126.output := by lin_cert using reduction9126.terms
def map_5_197 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9280 : InImage map_5_197 image9280 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9280 : Bundle := named_bundle% "RealMapCertificates/relations/basis9280.json"
theorem reductionProof9280 : EqualModuloRelations reduction9280.relations reduction9280.input reduction9280.output := by lin_cert using reduction9280.terms
theorem substitutionProof9280 : IsMapEvaluation generatorImages reduction9280.relations [0,2,18,18,324] reduction9280.output := by lin_cert using reduction9280.terms
def map_5_200 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9769 : InImage map_5_200 image9769 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9769 : Bundle := named_bundle% "RealMapCertificates/relations/basis9769.json"
theorem reductionProof9769 : EqualModuloRelations reduction9769.relations reduction9769.input reduction9769.output := by lin_cert using reduction9769.terms
theorem substitutionProof9769 : IsMapEvaluation generatorImages reduction9769.relations [94,324] reduction9769.output := by lin_cert using reduction9769.terms
def image9770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9770 : InImage map_5_200 image9770 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9770 : Bundle := named_bundle% "RealMapCertificates/relations/basis9770.json"
theorem reductionProof9770 : EqualModuloRelations reduction9770.relations reduction9770.input reduction9770.output := by lin_cert using reduction9770.terms
theorem substitutionProof9770 : IsMapEvaluation generatorImages reduction9770.relations [3,1058] reduction9770.output := by lin_cert using reduction9770.terms
def map_5_201 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9943 : InImage map_5_201 image9943 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9943 : Bundle := named_bundle% "RealMapCertificates/relations/basis9943.json"
theorem reductionProof9943 : EqualModuloRelations reduction9943.relations reduction9943.input reduction9943.output := by lin_cert using reduction9943.terms
theorem substitutionProof9943 : IsMapEvaluation generatorImages reduction9943.relations [96,324] reduction9943.output := by lin_cert using reduction9943.terms
def map_5_202 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10083 : InImage map_5_202 image10083 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10083 : Bundle := named_bundle% "RealMapCertificates/relations/basis10083.json"
theorem reductionProof10083 : EqualModuloRelations reduction10083.relations reduction10083.input reduction10083.output := by lin_cert using reduction10083.terms
theorem substitutionProof10083 : IsMapEvaluation generatorImages reduction10083.relations [99,324] reduction10083.output := by lin_cert using reduction10083.terms
def map_5_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11133 : InImage map_5_208 image11133 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11133 : Bundle := named_bundle% "RealMapCertificates/relations/basis11133.json"
theorem reductionProof11133 : EqualModuloRelations reduction11133.relations reduction11133.input reduction11133.output := by lin_cert using reduction11133.terms
theorem substitutionProof11133 : IsMapEvaluation generatorImages reduction11133.relations [7,1058] reduction11133.output := by lin_cert using reduction11133.terms
def map_5_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11313 : InImage map_5_209 image11313 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11313 : Bundle := named_bundle% "RealMapCertificates/relations/basis11313.json"
theorem reductionProof11313 : EqualModuloRelations reduction11313.relations reduction11313.input reduction11313.output := by lin_cert using reduction11313.terms
theorem substitutionProof11313 : IsMapEvaluation generatorImages reduction11313.relations [0,18,850] reduction11313.output := by lin_cert using reduction11313.terms
def map_5_210 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11531 : InImage map_5_210 image11531 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11531 : Bundle := named_bundle% "RealMapCertificates/relations/basis11531.json"
theorem reductionProof11531 : EqualModuloRelations reduction11531.relations reduction11531.input reduction11531.output := by lin_cert using reduction11531.terms
theorem substitutionProof11531 : IsMapEvaluation generatorImages reduction11531.relations [1,18,850] reduction11531.output := by lin_cert using reduction11531.terms
def map_5_212 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11886 : InImage map_5_212 image11886 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11886 : Bundle := named_bundle% "RealMapCertificates/relations/basis11886.json"
theorem reductionProof11886 : EqualModuloRelations reduction11886.relations reduction11886.input reduction11886.output := by lin_cert using reduction11886.terms
theorem substitutionProof11886 : IsMapEvaluation generatorImages reduction11886.relations [132,324] reduction11886.output := by lin_cert using reduction11886.terms
def map_5_216 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12676 : InImage map_5_216 image12676 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12676 : Bundle := named_bundle% "RealMapCertificates/relations/basis12676.json"
theorem reductionProof12676 : EqualModuloRelations reduction12676.relations reduction12676.input reduction12676.output := by lin_cert using reduction12676.terms
theorem substitutionProof12676 : IsMapEvaluation generatorImages reduction12676.relations [142,324] reduction12676.output := by lin_cert using reduction12676.terms
def map_5_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12813 : InImage map_5_217 image12813 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12813 : Bundle := named_bundle% "RealMapCertificates/relations/basis12813.json"
theorem reductionProof12813 : EqualModuloRelations reduction12813.relations reduction12813.input reduction12813.output := by lin_cert using reduction12813.terms
theorem substitutionProof12813 : IsMapEvaluation generatorImages reduction12813.relations [0,143,324] reduction12813.output := by lin_cert using reduction12813.terms
def map_5_218 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13033 : InImage map_5_218 image13033 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13033 : Bundle := named_bundle% "RealMapCertificates/relations/basis13033.json"
theorem reductionProof13033 : EqualModuloRelations reduction13033.relations reduction13033.input reduction13033.output := by lin_cert using reduction13033.terms
theorem substitutionProof13033 : IsMapEvaluation generatorImages reduction13033.relations [1,143,324] reduction13033.output := by lin_cert using reduction13033.terms
def map_5_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14148 : InImage map_5_224 image14148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14148 : Bundle := named_bundle% "RealMapCertificates/relations/basis14148.json"
theorem reductionProof14148 : EqualModuloRelations reduction14148.relations reduction14148.input reduction14148.output := by lin_cert using reduction14148.terms
theorem substitutionProof14148 : IsMapEvaluation generatorImages reduction14148.relations [18,1058] reduction14148.output := by lin_cert using reduction14148.terms
def map_5_228 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14948 : InImage map_5_228 image14948 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14948 : Bundle := named_bundle% "RealMapCertificates/relations/basis14948.json"
theorem reductionProof14948 : EqualModuloRelations reduction14948.relations reduction14948.input reduction14948.output := by lin_cert using reduction14948.terms
theorem substitutionProof14948 : IsMapEvaluation generatorImages reduction14948.relations [1716] reduction14948.output := by lin_cert using reduction14948.terms
def map_5_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15741 : InImage map_5_232 image15741 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15741 : Bundle := named_bundle% "RealMapCertificates/relations/basis15741.json"
theorem reductionProof15741 : EqualModuloRelations reduction15741.relations reduction15741.input reduction15741.output := by lin_cert using reduction15741.terms
theorem substitutionProof15741 : IsMapEvaluation generatorImages reduction15741.relations [7,143,324] reduction15741.output := by lin_cert using reduction15741.terms
def map_5_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22295 : InImage map_5_257 image22295 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22295 : Bundle := named_bundle% "RealMapCertificates/relations/basis22295.json"
theorem reductionProof22295 : EqualModuloRelations reduction22295.relations reduction22295.input reduction22295.output := by lin_cert using reduction22295.terms
theorem substitutionProof22295 : IsMapEvaluation generatorImages reduction22295.relations [2669] reduction22295.output := by lin_cert using reduction22295.terms
def map_5_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22988 : InImage map_5_259 image22988 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22988 : Bundle := named_bundle% "RealMapCertificates/relations/basis22988.json"
theorem reductionProof22988 : EqualModuloRelations reduction22988.relations reduction22988.input reduction22988.output := by lin_cert using reduction22988.terms
theorem substitutionProof22988 : IsMapEvaluation generatorImages reduction22988.relations [0,0,0,324,324] reduction22988.output := by lin_cert using reduction22988.terms
def map_5_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23399 : InImage map_5_260 image23399 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23399 : Bundle := named_bundle% "RealMapCertificates/relations/basis23399.json"
theorem reductionProof23399 : EqualModuloRelations reduction23399.relations reduction23399.input reduction23399.output := by lin_cert using reduction23399.terms
theorem substitutionProof23399 : IsMapEvaluation generatorImages reduction23399.relations [2857] reduction23399.output := by lin_cert using reduction23399.terms
def image23400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23400 : InImage map_5_260 image23400 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23400 : Bundle := named_bundle% "RealMapCertificates/relations/basis23400.json"
theorem reductionProof23400 : EqualModuloRelations reduction23400.relations reduction23400.input reduction23400.output := by lin_cert using reduction23400.terms
theorem substitutionProof23400 : IsMapEvaluation generatorImages reduction23400.relations [0,0,0,0,2626] reduction23400.output := by lin_cert using reduction23400.terms
def map_5_261 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image23819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23819 : InImage map_5_261 image23819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction23819 : Bundle := named_bundle% "RealMapCertificates/relations/basis23819.json"
theorem reductionProof23819 : EqualModuloRelations reduction23819.relations reduction23819.input reduction23819.output := by lin_cert using reduction23819.terms
theorem substitutionProof23819 : IsMapEvaluation generatorImages reduction23819.relations [0,2858] reduction23819.output := by lin_cert using reduction23819.terms
def map_6_6 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10 : InImage map_6_6 image10 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10 : Bundle := named_bundle% "RealMapCertificates/relations/basis10.json"
theorem reductionProof10 : EqualModuloRelations reduction10.relations reduction10.input reduction10.output := by lin_cert using reduction10.terms
theorem substitutionProof10 : IsMapEvaluation generatorImages reduction10.relations [0,0,0,0,0,0] reduction10.output := by lin_cert using reduction10.terms
def map_6_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image32 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation32 : InImage map_6_16 image32 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction32 : Bundle := named_bundle% "RealMapCertificates/relations/basis32.json"
theorem reductionProof32 : EqualModuloRelations reduction32.relations reduction32.input reduction32.output := by lin_cert using reduction32.terms
theorem substitutionProof32 : IsMapEvaluation generatorImages reduction32.relations [1,5] reduction32.output := by lin_cert using reduction32.terms
def map_6_17 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image37 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation37 : InImage map_6_17 image37 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction37 : Bundle := named_bundle% "RealMapCertificates/relations/basis37.json"
theorem reductionProof37 : EqualModuloRelations reduction37.relations reduction37.input reduction37.output := by lin_cert using reduction37.terms
theorem substitutionProof37 : IsMapEvaluation generatorImages reduction37.relations [0,6] reduction37.output := by lin_cert using reduction37.terms
def map_6_20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image49 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation49 : InImage map_6_20 image49 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction49 : Bundle := named_bundle% "RealMapCertificates/relations/basis49.json"
theorem reductionProof49 : EqualModuloRelations reduction49.relations reduction49.input reduction49.output := by lin_cert using reduction49.terms
theorem substitutionProof49 : IsMapEvaluation generatorImages reduction49.relations [0,0,8] reduction49.output := by lin_cert using reduction49.terms
def map_6_21 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image55 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation55 : InImage map_6_21 image55 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction55 : Bundle := named_bundle% "RealMapCertificates/relations/basis55.json"
theorem reductionProof55 : EqualModuloRelations reduction55.relations reduction55.input reduction55.output := by lin_cert using reduction55.terms
theorem substitutionProof55 : IsMapEvaluation generatorImages reduction55.relations [0,0,0,0,0,7] reduction55.output := by lin_cert using reduction55.terms
def map_6_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image60 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation60 : InImage map_6_22 image60 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction60 : Bundle := named_bundle% "RealMapCertificates/relations/basis60.json"
theorem reductionProof60 : EqualModuloRelations reduction60.relations reduction60.input reduction60.output := by lin_cert using reduction60.terms
theorem substitutionProof60 : IsMapEvaluation generatorImages reduction60.relations [1,1,8] reduction60.output := by lin_cert using reduction60.terms
def map_6_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image68 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation68 : InImage map_6_23 image68 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction68 : Bundle := named_bundle% "RealMapCertificates/relations/basis68.json"
theorem reductionProof68 : EqualModuloRelations reduction68.relations reduction68.input reduction68.output := by lin_cert using reduction68.terms
theorem substitutionProof68 : IsMapEvaluation generatorImages reduction68.relations [0,0,9] reduction68.output := by lin_cert using reduction68.terms
def map_6_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image79 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation79 : InImage map_6_26 image79 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction79 : Bundle := named_bundle% "RealMapCertificates/relations/basis79.json"
theorem reductionProof79 : EqualModuloRelations reduction79.relations reduction79.input reduction79.output := by lin_cert using reduction79.terms
theorem substitutionProof79 : IsMapEvaluation generatorImages reduction79.relations [0,0,13] reduction79.output := by lin_cert using reduction79.terms
def map_6_29 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image90 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation90 : InImage map_6_29 image90 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction90 : Bundle := named_bundle% "RealMapCertificates/relations/basis90.json"
theorem reductionProof90 : EqualModuloRelations reduction90.relations reduction90.input reduction90.output := by lin_cert using reduction90.terms
theorem substitutionProof90 : IsMapEvaluation generatorImages reduction90.relations [0,2,13] reduction90.output := by lin_cert using reduction90.terms
def map_6_32 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation103 : InImage map_6_32 image103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction103 : Bundle := named_bundle% "RealMapCertificates/relations/basis103.json"
theorem reductionProof103 : EqualModuloRelations reduction103.relations reduction103.input reduction103.output := by lin_cert using reduction103.terms
theorem substitutionProof103 : IsMapEvaluation generatorImages reduction103.relations [2,2,13] reduction103.output := by lin_cert using reduction103.terms
def map_6_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image132 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation132 : InImage map_6_36 image132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction132 : Bundle := named_bundle% "RealMapCertificates/relations/basis132.json"
theorem reductionProof132 : EqualModuloRelations reduction132.relations reduction132.input reduction132.output := by lin_cert using reduction132.terms
theorem substitutionProof132 : IsMapEvaluation generatorImages reduction132.relations [23] reduction132.output := by lin_cert using reduction132.terms
def map_6_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation143 : InImage map_6_37 image143 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction143 : Bundle := named_bundle% "RealMapCertificates/relations/basis143.json"
theorem reductionProof143 : EqualModuloRelations reduction143.relations reduction143.input reduction143.output := by lin_cert using reduction143.terms
theorem substitutionProof143 : IsMapEvaluation generatorImages reduction143.relations [0,0,0,0,0,18] reduction143.output := by lin_cert using reduction143.terms
def map_6_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation152 : InImage map_6_38 image152 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction152 : Bundle := named_bundle% "RealMapCertificates/relations/basis152.json"
theorem reductionProof152 : EqualModuloRelations reduction152.relations reduction152.input reduction152.output := by lin_cert using reduction152.terms
theorem substitutionProof152 : IsMapEvaluation generatorImages reduction152.relations [28] reduction152.output := by lin_cert using reduction152.terms
def map_6_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation168 : InImage map_6_40 image168 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction168 : Bundle := named_bundle% "RealMapCertificates/relations/basis168.json"
theorem reductionProof168 : EqualModuloRelations reduction168.relations reduction168.input reduction168.output := by lin_cert using reduction168.terms
theorem substitutionProof168 : IsMapEvaluation generatorImages reduction168.relations [2,24] reduction168.output := by lin_cert using reduction168.terms
def map_6_42 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation185 : InImage map_6_42 image185 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction185 : Bundle := named_bundle% "RealMapCertificates/relations/basis185.json"
theorem reductionProof185 : EqualModuloRelations reduction185.relations reduction185.input reduction185.output := by lin_cert using reduction185.terms
theorem substitutionProof185 : IsMapEvaluation generatorImages reduction185.relations [33] reduction185.output := by lin_cert using reduction185.terms
def map_6_43 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation195 : InImage map_6_43 image195 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction195 : Bundle := named_bundle% "RealMapCertificates/relations/basis195.json"
theorem reductionProof195 : EqualModuloRelations reduction195.relations reduction195.input reduction195.output := by lin_cert using reduction195.terms
theorem substitutionProof195 : IsMapEvaluation generatorImages reduction195.relations [0,34] reduction195.output := by lin_cert using reduction195.terms
def map_6_44 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation206 : InImage map_6_44 image206 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction206 : Bundle := named_bundle% "RealMapCertificates/relations/basis206.json"
theorem reductionProof206 : EqualModuloRelations reduction206.relations reduction206.input reduction206.output := by lin_cert using reduction206.terms
theorem substitutionProof206 : IsMapEvaluation generatorImages reduction206.relations [36] reduction206.output := by lin_cert using reduction206.terms
def image207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation207 : InImage map_6_44 image207 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction207 : Bundle := named_bundle% "RealMapCertificates/relations/basis207.json"
theorem reductionProof207 : EqualModuloRelations reduction207.relations reduction207.input reduction207.output := by lin_cert using reduction207.terms
theorem substitutionProof207 : IsMapEvaluation generatorImages reduction207.relations [1,34] reduction207.output := by lin_cert using reduction207.terms
def map_6_46 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation230 : InImage map_6_46 image230 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction230 : Bundle := named_bundle% "RealMapCertificates/relations/basis230.json"
theorem reductionProof230 : EqualModuloRelations reduction230.relations reduction230.input reduction230.output := by lin_cert using reduction230.terms
theorem substitutionProof230 : IsMapEvaluation generatorImages reduction230.relations [5,18] reduction230.output := by lin_cert using reduction230.terms
def image231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation231 : InImage map_6_46 image231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction231 : Bundle := named_bundle% "RealMapCertificates/relations/basis231.json"
theorem reductionProof231 : EqualModuloRelations reduction231.relations reduction231.input reduction231.output := by lin_cert using reduction231.terms
theorem substitutionProof231 : IsMapEvaluation generatorImages reduction231.relations [0,0,37] reduction231.output := by lin_cert using reduction231.terms
def map_6_48 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation247 : InImage map_6_48 image247 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction247 : Bundle := named_bundle% "RealMapCertificates/relations/basis247.json"
theorem reductionProof247 : EqualModuloRelations reduction247.relations reduction247.input reduction247.output := by lin_cert using reduction247.terms
theorem substitutionProof247 : IsMapEvaluation generatorImages reduction247.relations [6,18] reduction247.output := by lin_cert using reduction247.terms
def map_6_50 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation263 : InImage map_6_50 image263 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction263 : Bundle := named_bundle% "RealMapCertificates/relations/basis263.json"
theorem reductionProof263 : EqualModuloRelations reduction263.relations reduction263.input reduction263.output := by lin_cert using reduction263.terms
theorem substitutionProof263 : IsMapEvaluation generatorImages reduction263.relations [0,0,43] reduction263.output := by lin_cert using reduction263.terms
def map_6_51 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation271 : InImage map_6_51 image271 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction271 : Bundle := named_bundle% "RealMapCertificates/relations/basis271.json"
theorem reductionProof271 : EqualModuloRelations reduction271.relations reduction271.input reduction271.output := by lin_cert using reduction271.terms
theorem substitutionProof271 : IsMapEvaluation generatorImages reduction271.relations [0,8,18] reduction271.output := by lin_cert using reduction271.terms
def map_6_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation279 : InImage map_6_52 image279 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction279 : Bundle := named_bundle% "RealMapCertificates/relations/basis279.json"
theorem reductionProof279 : EqualModuloRelations reduction279.relations reduction279.input reduction279.output := by lin_cert using reduction279.terms
theorem substitutionProof279 : IsMapEvaluation generatorImages reduction279.relations [1,8,18] reduction279.output := by lin_cert using reduction279.terms
def map_6_53 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation287 : InImage map_6_53 image287 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction287 : Bundle := named_bundle% "RealMapCertificates/relations/basis287.json"
theorem reductionProof287 : EqualModuloRelations reduction287.relations reduction287.input reduction287.output := by lin_cert using reduction287.terms
theorem substitutionProof287 : IsMapEvaluation generatorImages reduction287.relations [0,2,43] reduction287.output := by lin_cert using reduction287.terms
def map_6_54 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation299 : InImage map_6_54 image299 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction299 : Bundle := named_bundle% "RealMapCertificates/relations/basis299.json"
theorem reductionProof299 : EqualModuloRelations reduction299.relations reduction299.input reduction299.output := by lin_cert using reduction299.terms
theorem substitutionProof299 : IsMapEvaluation generatorImages reduction299.relations [0,9,18] reduction299.output := by lin_cert using reduction299.terms
def map_6_55 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation311 : InImage map_6_55 image311 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction311 : Bundle := named_bundle% "RealMapCertificates/relations/basis311.json"
theorem reductionProof311 : EqualModuloRelations reduction311.relations reduction311.input reduction311.output := by lin_cert using reduction311.terms
theorem substitutionProof311 : IsMapEvaluation generatorImages reduction311.relations [0,10,18] reduction311.output := by lin_cert using reduction311.terms
def map_6_56 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation319 : InImage map_6_56 image319 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction319 : Bundle := named_bundle% "RealMapCertificates/relations/basis319.json"
theorem reductionProof319 : EqualModuloRelations reduction319.relations reduction319.input reduction319.output := by lin_cert using reduction319.terms
theorem substitutionProof319 : IsMapEvaluation generatorImages reduction319.relations [54] reduction319.output := by lin_cert using reduction319.terms
def map_6_57 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation330 : InImage map_6_57 image330 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction330 : Bundle := named_bundle% "RealMapCertificates/relations/basis330.json"
theorem reductionProof330 : EqualModuloRelations reduction330.relations reduction330.input reduction330.output := by lin_cert using reduction330.terms
theorem substitutionProof330 : IsMapEvaluation generatorImages reduction330.relations [0,3,43] reduction330.output := by lin_cert using reduction330.terms
def map_6_58 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation338 : InImage map_6_58 image338 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction338 : Bundle := named_bundle% "RealMapCertificates/relations/basis338.json"
theorem reductionProof338 : EqualModuloRelations reduction338.relations reduction338.input reduction338.output := by lin_cert using reduction338.terms
theorem substitutionProof338 : IsMapEvaluation generatorImages reduction338.relations [1,3,43] reduction338.output := by lin_cert using reduction338.terms
def map_6_60 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation359 : InImage map_6_60 image359 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction359 : Bundle := named_bundle% "RealMapCertificates/relations/basis359.json"
theorem reductionProof359 : EqualModuloRelations reduction359.relations reduction359.input reduction359.output := by lin_cert using reduction359.terms
theorem substitutionProof359 : IsMapEvaluation generatorImages reduction359.relations [61] reduction359.output := by lin_cert using reduction359.terms
def map_6_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation399 : InImage map_6_64 image399 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction399 : Bundle := named_bundle% "RealMapCertificates/relations/basis399.json"
theorem reductionProof399 : EqualModuloRelations reduction399.relations reduction399.input reduction399.output := by lin_cert using reduction399.terms
theorem substitutionProof399 : IsMapEvaluation generatorImages reduction399.relations [68] reduction399.output := by lin_cert using reduction399.terms
def map_6_67 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation450 : InImage map_6_67 image450 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction450 : Bundle := named_bundle% "RealMapCertificates/relations/basis450.json"
theorem reductionProof450 : EqualModuloRelations reduction450.relations reduction450.input reduction450.output := by lin_cert using reduction450.terms
theorem substitutionProof450 : IsMapEvaluation generatorImages reduction450.relations [75] reduction450.output := by lin_cert using reduction450.terms
def image451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation451 : InImage map_6_67 image451 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction451 : Bundle := named_bundle% "RealMapCertificates/relations/basis451.json"
theorem reductionProof451 : EqualModuloRelations reduction451.relations reduction451.input reduction451.output := by lin_cert using reduction451.terms
theorem substitutionProof451 : IsMapEvaluation generatorImages reduction451.relations [74] reduction451.output := by lin_cert using reduction451.terms
end RealMapCertificates
