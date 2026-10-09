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
  | 13 => [[9]]
  | 18 => []
  | 24 => []
  | 25 => []
  | 26 => []
  | 34 => []
  | 35 => []
  | 37 => []
  | 38 => []
  | 57 => []
  | 69 => []
  | 70 => []
  | 76 => []
  | 86 => []
  | 91 => []
  | 92 => []
  | 93 => []
  | 94 => []
  | 96 => []
  | 109 => []
  | 122 => []
  | 130 => []
  | 131 => []
  | 132 => []
  | 142 => []
  | 143 => []
  | 148 => []
  | 163 => []
  | 231 => []
  | 241 => []
  | 273 => []
  | 324 => []
  | 339 => []
  | 340 => []
  | 368 => []
  | 377 => []
  | 378 => []
  | 398 => []
  | 399 => []
  | 400 => []
  | 446 => []
  | 468 => []
  | 505 => []
  | 506 => []
  | 507 => []
  | 508 => []
  | 526 => []
  | 548 => []
  | _ => []
def map_6_68 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation469 : InImage map_6_68 image469 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction469 : Bundle := named_bundle% "RealMapCertificates/relations/basis469.json"
theorem reductionProof469 : EqualModuloRelations reduction469.relations reduction469.input reduction469.output := by lin_cert using reduction469.terms
theorem substitutionProof469 : IsMapEvaluation generatorImages reduction469.relations [18,24] reduction469.output := by lin_cert using reduction469.terms
def image470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation470 : InImage map_6_68 image470 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction470 : Bundle := named_bundle% "RealMapCertificates/relations/basis470.json"
theorem reductionProof470 : EqualModuloRelations reduction470.relations reduction470.input reduction470.output := by lin_cert using reduction470.terms
theorem substitutionProof470 : IsMapEvaluation generatorImages reduction470.relations [0,0,0,0,18,18] reduction470.output := by lin_cert using reduction470.terms
def map_6_69 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation493 : InImage map_6_69 image493 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction493 : Bundle := named_bundle% "RealMapCertificates/relations/basis493.json"
theorem reductionProof493 : EqualModuloRelations reduction493.relations reduction493.input reduction493.output := by lin_cert using reduction493.terms
theorem substitutionProof493 : IsMapEvaluation generatorImages reduction493.relations [1,76] reduction493.output := by lin_cert using reduction493.terms
def image494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation494 : InImage map_6_69 image494 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction494 : Bundle := named_bundle% "RealMapCertificates/relations/basis494.json"
theorem reductionProof494 : EqualModuloRelations reduction494.relations reduction494.input reduction494.output := by lin_cert using reduction494.terms
theorem substitutionProof494 : IsMapEvaluation generatorImages reduction494.relations [0,0,0,0,0,69] reduction494.output := by lin_cert using reduction494.terms
def map_6_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation514 : InImage map_6_70 image514 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction514 : Bundle := named_bundle% "RealMapCertificates/relations/basis514.json"
theorem reductionProof514 : EqualModuloRelations reduction514.relations reduction514.input reduction514.output := by lin_cert using reduction514.terms
theorem substitutionProof514 : IsMapEvaluation generatorImages reduction514.relations [86] reduction514.output := by lin_cert using reduction514.terms
def map_6_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation533 : InImage map_6_71 image533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction533 : Bundle := named_bundle% "RealMapCertificates/relations/basis533.json"
theorem reductionProof533 : EqualModuloRelations reduction533.relations reduction533.input reduction533.output := by lin_cert using reduction533.terms
theorem substitutionProof533 : IsMapEvaluation generatorImages reduction533.relations [2,76] reduction533.output := by lin_cert using reduction533.terms
def map_6_72 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation558 : InImage map_6_72 image558 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction558 : Bundle := named_bundle% "RealMapCertificates/relations/basis558.json"
theorem reductionProof558 : EqualModuloRelations reduction558.relations reduction558.input reduction558.output := by lin_cert using reduction558.terms
theorem substitutionProof558 : IsMapEvaluation generatorImages reduction558.relations [91] reduction558.output := by lin_cert using reduction558.terms
def map_6_73 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation578 : InImage map_6_73 image578 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction578 : Bundle := named_bundle% "RealMapCertificates/relations/basis578.json"
theorem reductionProof578 : EqualModuloRelations reduction578.relations reduction578.input reduction578.output := by lin_cert using reduction578.terms
theorem substitutionProof578 : IsMapEvaluation generatorImages reduction578.relations [0,93] reduction578.output := by lin_cert using reduction578.terms
def image579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation579 : InImage map_6_73 image579 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction579 : Bundle := named_bundle% "RealMapCertificates/relations/basis579.json"
theorem reductionProof579 : EqualModuloRelations reduction579.relations reduction579.input reduction579.output := by lin_cert using reduction579.terms
theorem substitutionProof579 : IsMapEvaluation generatorImages reduction579.relations [0,92] reduction579.output := by lin_cert using reduction579.terms
def map_6_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation601 : InImage map_6_74 image601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction601 : Bundle := named_bundle% "RealMapCertificates/relations/basis601.json"
theorem reductionProof601 : EqualModuloRelations reduction601.relations reduction601.input reduction601.output := by lin_cert using reduction601.terms
theorem substitutionProof601 : IsMapEvaluation generatorImages reduction601.relations [1,92] reduction601.output := by lin_cert using reduction601.terms
def map_6_75 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation621 : InImage map_6_75 image621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction621 : Bundle := named_bundle% "RealMapCertificates/relations/basis621.json"
theorem reductionProof621 : EqualModuloRelations reduction621.relations reduction621.input reduction621.output := by lin_cert using reduction621.terms
theorem substitutionProof621 : IsMapEvaluation generatorImages reduction621.relations [3,76] reduction621.output := by lin_cert using reduction621.terms
def image622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation622 : InImage map_6_75 image622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction622 : Bundle := named_bundle% "RealMapCertificates/relations/basis622.json"
theorem reductionProof622 : EqualModuloRelations reduction622.relations reduction622.input reduction622.output := by lin_cert using reduction622.terms
theorem substitutionProof622 : IsMapEvaluation generatorImages reduction622.relations [0,0,96] reduction622.output := by lin_cert using reduction622.terms
def map_6_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation643 : InImage map_6_76 image643 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction643 : Bundle := named_bundle% "RealMapCertificates/relations/basis643.json"
theorem reductionProof643 : EqualModuloRelations reduction643.relations reduction643.input reduction643.output := by lin_cert using reduction643.terms
theorem substitutionProof643 : IsMapEvaluation generatorImages reduction643.relations [2,92] reduction643.output := by lin_cert using reduction643.terms
def map_6_77 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation663 : InImage map_6_77 image663 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction663 : Bundle := named_bundle% "RealMapCertificates/relations/basis663.json"
theorem reductionProof663 : EqualModuloRelations reduction663.relations reduction663.input reduction663.output := by lin_cert using reduction663.terms
theorem substitutionProof663 : IsMapEvaluation generatorImages reduction663.relations [109] reduction663.output := by lin_cert using reduction663.terms
def image664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation664 : InImage map_6_77 image664 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction664 : Bundle := named_bundle% "RealMapCertificates/relations/basis664.json"
theorem reductionProof664 : EqualModuloRelations reduction664.relations reduction664.input reduction664.output := by lin_cert using reduction664.terms
theorem substitutionProof664 : IsMapEvaluation generatorImages reduction664.relations [1,1,96] reduction664.output := by lin_cert using reduction664.terms
def map_6_78 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation692 : InImage map_6_78 image692 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction692 : Bundle := named_bundle% "RealMapCertificates/relations/basis692.json"
theorem reductionProof692 : EqualModuloRelations reduction692.relations reduction692.input reduction692.output := by lin_cert using reduction692.terms
theorem substitutionProof692 : IsMapEvaluation generatorImages reduction692.relations [5,69] reduction692.output := by lin_cert using reduction692.terms
def map_6_80 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation729 : InImage map_6_80 image729 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction729 : Bundle := named_bundle% "RealMapCertificates/relations/basis729.json"
theorem reductionProof729 : EqualModuloRelations reduction729.relations reduction729.input reduction729.output := by lin_cert using reduction729.terms
theorem substitutionProof729 : IsMapEvaluation generatorImages reduction729.relations [6,69] reduction729.output := by lin_cert using reduction729.terms
def image730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation730 : InImage map_6_80 image730 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction730 : Bundle := named_bundle% "RealMapCertificates/relations/basis730.json"
theorem reductionProof730 : EqualModuloRelations reduction730.relations reduction730.input reduction730.output := by lin_cert using reduction730.terms
theorem substitutionProof730 : IsMapEvaluation generatorImages reduction730.relations [3,93] reduction730.output := by lin_cert using reduction730.terms
def map_6_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation755 : InImage map_6_81 image755 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction755 : Bundle := named_bundle% "RealMapCertificates/relations/basis755.json"
theorem reductionProof755 : EqualModuloRelations reduction755.relations reduction755.input reduction755.output := by lin_cert using reduction755.terms
theorem substitutionProof755 : IsMapEvaluation generatorImages reduction755.relations [0,3,94] reduction755.output := by lin_cert using reduction755.terms
def map_6_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation776 : InImage map_6_82 image776 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction776 : Bundle := named_bundle% "RealMapCertificates/relations/basis776.json"
theorem reductionProof776 : EqualModuloRelations reduction776.relations reduction776.input reduction776.output := by lin_cert using reduction776.terms
theorem substitutionProof776 : IsMapEvaluation generatorImages reduction776.relations [122] reduction776.output := by lin_cert using reduction776.terms
def map_6_83 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation797 : InImage map_6_83 image797 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction797 : Bundle := named_bundle% "RealMapCertificates/relations/basis797.json"
theorem reductionProof797 : EqualModuloRelations reduction797.relations reduction797.input reduction797.output := by lin_cert using reduction797.terms
theorem substitutionProof797 : IsMapEvaluation generatorImages reduction797.relations [1,7,70] reduction797.output := by lin_cert using reduction797.terms
def image798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation798 : InImage map_6_83 image798 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction798 : Bundle := named_bundle% "RealMapCertificates/relations/basis798.json"
theorem reductionProof798 : EqualModuloRelations reduction798.relations reduction798.input reduction798.output := by lin_cert using reduction798.terms
theorem substitutionProof798 : IsMapEvaluation generatorImages reduction798.relations [0,8,69] reduction798.output := by lin_cert using reduction798.terms
def map_6_84 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation829 : InImage map_6_84 image829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction829 : Bundle := named_bundle% "RealMapCertificates/relations/basis829.json"
theorem reductionProof829 : EqualModuloRelations reduction829.relations reduction829.input reduction829.output := by lin_cert using reduction829.terms
theorem substitutionProof829 : IsMapEvaluation generatorImages reduction829.relations [130] reduction829.output := by lin_cert using reduction829.terms
def image830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation830 : InImage map_6_84 image830 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction830 : Bundle := named_bundle% "RealMapCertificates/relations/basis830.json"
theorem reductionProof830 : EqualModuloRelations reduction830.relations reduction830.input reduction830.output := by lin_cert using reduction830.terms
theorem substitutionProof830 : IsMapEvaluation generatorImages reduction830.relations [1,8,69] reduction830.output := by lin_cert using reduction830.terms
def image831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation831 : InImage map_6_84 image831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction831 : Bundle := named_bundle% "RealMapCertificates/relations/basis831.json"
theorem reductionProof831 : EqualModuloRelations reduction831.relations reduction831.input reduction831.output := by lin_cert using reduction831.terms
theorem substitutionProof831 : IsMapEvaluation generatorImages reduction831.relations [0,0,0,0,7,69] reduction831.output := by lin_cert using reduction831.terms
def map_6_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation855 : InImage map_6_85 image855 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction855 : Bundle := named_bundle% "RealMapCertificates/relations/basis855.json"
theorem reductionProof855 : EqualModuloRelations reduction855.relations reduction855.input reduction855.output := by lin_cert using reduction855.terms
theorem substitutionProof855 : IsMapEvaluation generatorImages reduction855.relations [0,131] reduction855.output := by lin_cert using reduction855.terms
def map_6_86 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation879 : InImage map_6_86 image879 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction879 : Bundle := named_bundle% "RealMapCertificates/relations/basis879.json"
theorem reductionProof879 : EqualModuloRelations reduction879.relations reduction879.input reduction879.output := by lin_cert using reduction879.terms
theorem substitutionProof879 : IsMapEvaluation generatorImages reduction879.relations [0,9,69] reduction879.output := by lin_cert using reduction879.terms
def image880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation880 : InImage map_6_86 image880 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction880 : Bundle := named_bundle% "RealMapCertificates/relations/basis880.json"
theorem reductionProof880 : EqualModuloRelations reduction880.relations reduction880.input reduction880.output := by lin_cert using reduction880.terms
theorem substitutionProof880 : IsMapEvaluation generatorImages reduction880.relations [0,0,132] reduction880.output := by lin_cert using reduction880.terms
def map_6_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation907 : InImage map_6_87 image907 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction907 : Bundle := named_bundle% "RealMapCertificates/relations/basis907.json"
theorem reductionProof907 : EqualModuloRelations reduction907.relations reduction907.input reduction907.output := by lin_cert using reduction907.terms
theorem substitutionProof907 : IsMapEvaluation generatorImages reduction907.relations [0,10,69] reduction907.output := by lin_cert using reduction907.terms
def map_6_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation928 : InImage map_6_88 image928 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction928 : Bundle := named_bundle% "RealMapCertificates/relations/basis928.json"
theorem reductionProof928 : EqualModuloRelations reduction928.relations reduction928.input reduction928.output := by lin_cert using reduction928.terms
theorem substitutionProof928 : IsMapEvaluation generatorImages reduction928.relations [7,92] reduction928.output := by lin_cert using reduction928.terms
def image929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation929 : InImage map_6_88 image929 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction929 : Bundle := named_bundle% "RealMapCertificates/relations/basis929.json"
theorem reductionProof929 : EqualModuloRelations reduction929.relations reduction929.input reduction929.output := by lin_cert using reduction929.terms
theorem substitutionProof929 : IsMapEvaluation generatorImages reduction929.relations [2,131] reduction929.output := by lin_cert using reduction929.terms
def map_6_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation955 : InImage map_6_89 image955 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction955 : Bundle := named_bundle% "RealMapCertificates/relations/basis955.json"
theorem reductionProof955 : EqualModuloRelations reduction955.relations reduction955.input reduction955.output := by lin_cert using reduction955.terms
theorem substitutionProof955 : IsMapEvaluation generatorImages reduction955.relations [0,13,69] reduction955.output := by lin_cert using reduction955.terms
def map_6_90 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation988 : InImage map_6_90 image988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction988 : Bundle := named_bundle% "RealMapCertificates/relations/basis988.json"
theorem reductionProof988 : EqualModuloRelations reduction988.relations reduction988.input reduction988.output := by lin_cert using reduction988.terms
theorem substitutionProof988 : IsMapEvaluation generatorImages reduction988.relations [1,13,69] reduction988.output := by lin_cert using reduction988.terms
def image989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation989 : InImage map_6_90 image989 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction989 : Bundle := named_bundle% "RealMapCertificates/relations/basis989.json"
theorem reductionProof989 : EqualModuloRelations reduction989.relations reduction989.input reduction989.output := by lin_cert using reduction989.terms
theorem substitutionProof989 : IsMapEvaluation generatorImages reduction989.relations [0,0,142] reduction989.output := by lin_cert using reduction989.terms
def map_6_91 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1013 : InImage map_6_91 image1013 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1013 : Bundle := named_bundle% "RealMapCertificates/relations/basis1013.json"
theorem reductionProof1013 : EqualModuloRelations reduction1013.relations reduction1013.input reduction1013.output := by lin_cert using reduction1013.terms
theorem substitutionProof1013 : IsMapEvaluation generatorImages reduction1013.relations [148] reduction1013.output := by lin_cert using reduction1013.terms
def image1014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1014 : InImage map_6_91 image1014 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1014 : Bundle := named_bundle% "RealMapCertificates/relations/basis1014.json"
theorem reductionProof1014 : EqualModuloRelations reduction1014.relations reduction1014.input reduction1014.output := by lin_cert using reduction1014.terms
theorem substitutionProof1014 : IsMapEvaluation generatorImages reduction1014.relations [0,0,0,143] reduction1014.output := by lin_cert using reduction1014.terms
def map_6_92 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1035 : InImage map_6_92 image1035 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1035 : Bundle := named_bundle% "RealMapCertificates/relations/basis1035.json"
theorem reductionProof1035 : EqualModuloRelations reduction1035.relations reduction1035.input reduction1035.output := by lin_cert using reduction1035.terms
theorem substitutionProof1035 : IsMapEvaluation generatorImages reduction1035.relations [2,13,69] reduction1035.output := by lin_cert using reduction1035.terms
def image1036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1036 : InImage map_6_92 image1036 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1036 : Bundle := named_bundle% "RealMapCertificates/relations/basis1036.json"
theorem reductionProof1036 : EqualModuloRelations reduction1036.relations reduction1036.input reduction1036.output := by lin_cert using reduction1036.terms
theorem substitutionProof1036 : IsMapEvaluation generatorImages reduction1036.relations [1,1,142] reduction1036.output := by lin_cert using reduction1036.terms
def map_6_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1067 : InImage map_6_93 image1067 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1067 : Bundle := named_bundle% "RealMapCertificates/relations/basis1067.json"
theorem reductionProof1067 : EqualModuloRelations reduction1067.relations reduction1067.input reduction1067.output := by lin_cert using reduction1067.terms
theorem substitutionProof1067 : IsMapEvaluation generatorImages reduction1067.relations [1,4,7,69] reduction1067.output := by lin_cert using reduction1067.terms
def map_6_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1158 : InImage map_6_97 image1158 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1158 : Bundle := named_bundle% "RealMapCertificates/relations/basis1158.json"
theorem reductionProof1158 : EqualModuloRelations reduction1158.relations reduction1158.input reduction1158.output := by lin_cert using reduction1158.terms
theorem substitutionProof1158 : IsMapEvaluation generatorImages reduction1158.relations [7,7,70] reduction1158.output := by lin_cert using reduction1158.terms
def map_6_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1180 : InImage map_6_98 image1180 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1180 : Bundle := named_bundle% "RealMapCertificates/relations/basis1180.json"
theorem reductionProof1180 : EqualModuloRelations reduction1180.relations reduction1180.input reduction1180.output := by lin_cert using reduction1180.terms
theorem substitutionProof1180 : IsMapEvaluation generatorImages reduction1180.relations [0,0,163] reduction1180.output := by lin_cert using reduction1180.terms
def map_6_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1213 : InImage map_6_99 image1213 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1213 : Bundle := named_bundle% "RealMapCertificates/relations/basis1213.json"
theorem reductionProof1213 : EqualModuloRelations reduction1213.relations reduction1213.input reduction1213.output := by lin_cert using reduction1213.terms
theorem substitutionProof1213 : IsMapEvaluation generatorImages reduction1213.relations [0,0,0,7,7,69] reduction1213.output := by lin_cert using reduction1213.terms
def map_6_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1242 : InImage map_6_100 image1242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1242 : Bundle := named_bundle% "RealMapCertificates/relations/basis1242.json"
theorem reductionProof1242 : EqualModuloRelations reduction1242.relations reduction1242.input reduction1242.output := by lin_cert using reduction1242.terms
theorem substitutionProof1242 : IsMapEvaluation generatorImages reduction1242.relations [24,69] reduction1242.output := by lin_cert using reduction1242.terms
def image1243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1243 : InImage map_6_100 image1243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1243 : Bundle := named_bundle% "RealMapCertificates/relations/basis1243.json"
theorem reductionProof1243 : EqualModuloRelations reduction1243.relations reduction1243.input reduction1243.output := by lin_cert using reduction1243.terms
theorem substitutionProof1243 : IsMapEvaluation generatorImages reduction1243.relations [1,1,163] reduction1243.output := by lin_cert using reduction1243.terms
def map_6_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1269 : InImage map_6_101 image1269 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1269 : Bundle := named_bundle% "RealMapCertificates/relations/basis1269.json"
theorem reductionProof1269 : EqualModuloRelations reduction1269.relations reduction1269.input reduction1269.output := by lin_cert using reduction1269.terms
theorem substitutionProof1269 : IsMapEvaluation generatorImages reduction1269.relations [0,2,163] reduction1269.output := by lin_cert using reduction1269.terms
def map_6_102 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1311 : InImage map_6_102 image1311 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1311 : Bundle := named_bundle% "RealMapCertificates/relations/basis1311.json"
theorem reductionProof1311 : EqualModuloRelations reduction1311.relations reduction1311.input reduction1311.output := by lin_cert using reduction1311.terms
theorem substitutionProof1311 : IsMapEvaluation generatorImages reduction1311.relations [0,26,69] reduction1311.output := by lin_cert using reduction1311.terms
def map_6_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1370 : InImage map_6_104 image1370 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1370 : Bundle := named_bundle% "RealMapCertificates/relations/basis1370.json"
theorem reductionProof1370 : EqualModuloRelations reduction1370.relations reduction1370.input reduction1370.output := by lin_cert using reduction1370.terms
theorem substitutionProof1370 : IsMapEvaluation generatorImages reduction1370.relations [2,25,69] reduction1370.output := by lin_cert using reduction1370.terms
def map_6_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1408 : InImage map_6_105 image1408 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1408 : Bundle := named_bundle% "RealMapCertificates/relations/basis1408.json"
theorem reductionProof1408 : EqualModuloRelations reduction1408.relations reduction1408.input reduction1408.output := by lin_cert using reduction1408.terms
theorem substitutionProof1408 : IsMapEvaluation generatorImages reduction1408.relations [0,3,163] reduction1408.output := by lin_cert using reduction1408.terms
def map_6_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1443 : InImage map_6_106 image1443 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1443 : Bundle := named_bundle% "RealMapCertificates/relations/basis1443.json"
theorem reductionProof1443 : EqualModuloRelations reduction1443.relations reduction1443.input reduction1443.output := by lin_cert using reduction1443.terms
theorem substitutionProof1443 : IsMapEvaluation generatorImages reduction1443.relations [34,69] reduction1443.output := by lin_cert using reduction1443.terms
def image1444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1444 : InImage map_6_106 image1444 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1444 : Bundle := named_bundle% "RealMapCertificates/relations/basis1444.json"
theorem reductionProof1444 : EqualModuloRelations reduction1444.relations reduction1444.input reduction1444.output := by lin_cert using reduction1444.terms
theorem substitutionProof1444 : IsMapEvaluation generatorImages reduction1444.relations [0,0,7,143] reduction1444.output := by lin_cert using reduction1444.terms
def map_6_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1517 : InImage map_6_108 image1517 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1517 : Bundle := named_bundle% "RealMapCertificates/relations/basis1517.json"
theorem reductionProof1517 : EqualModuloRelations reduction1517.relations reduction1517.input reduction1517.output := by lin_cert using reduction1517.terms
theorem substitutionProof1517 : IsMapEvaluation generatorImages reduction1517.relations [1,35,69] reduction1517.output := by lin_cert using reduction1517.terms
def map_6_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1549 : InImage map_6_109 image1549 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1549 : Bundle := named_bundle% "RealMapCertificates/relations/basis1549.json"
theorem reductionProof1549 : EqualModuloRelations reduction1549.relations reduction1549.input reduction1549.output := by lin_cert using reduction1549.terms
theorem substitutionProof1549 : IsMapEvaluation generatorImages reduction1549.relations [0,37,69] reduction1549.output := by lin_cert using reduction1549.terms
def map_6_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1587 : InImage map_6_110 image1587 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1587 : Bundle := named_bundle% "RealMapCertificates/relations/basis1587.json"
theorem reductionProof1587 : EqualModuloRelations reduction1587.relations reduction1587.input reduction1587.output := by lin_cert using reduction1587.terms
theorem substitutionProof1587 : IsMapEvaluation generatorImages reduction1587.relations [0,0,38,69] reduction1587.output := by lin_cert using reduction1587.terms
def map_6_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1665 : InImage map_6_112 image1665 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1665 : Bundle := named_bundle% "RealMapCertificates/relations/basis1665.json"
theorem reductionProof1665 : EqualModuloRelations reduction1665.relations reduction1665.input reduction1665.output := by lin_cert using reduction1665.terms
theorem substitutionProof1665 : IsMapEvaluation generatorImages reduction1665.relations [231] reduction1665.output := by lin_cert using reduction1665.terms
def map_6_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1697 : InImage map_6_113 image1697 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1697 : Bundle := named_bundle% "RealMapCertificates/relations/basis1697.json"
theorem reductionProof1697 : EqualModuloRelations reduction1697.relations reduction1697.input reduction1697.output := by lin_cert using reduction1697.terms
theorem substitutionProof1697 : IsMapEvaluation generatorImages reduction1697.relations [0,7,163] reduction1697.output := by lin_cert using reduction1697.terms
def map_6_114 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1737 : InImage map_6_114 image1737 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1737 : Bundle := named_bundle% "RealMapCertificates/relations/basis1737.json"
theorem reductionProof1737 : EqualModuloRelations reduction1737.relations reduction1737.input reduction1737.output := by lin_cert using reduction1737.terms
theorem substitutionProof1737 : IsMapEvaluation generatorImages reduction1737.relations [241] reduction1737.output := by lin_cert using reduction1737.terms
def image1738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1738 : InImage map_6_114 image1738 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1738 : Bundle := named_bundle% "RealMapCertificates/relations/basis1738.json"
theorem reductionProof1738 : EqualModuloRelations reduction1738.relations reduction1738.input reduction1738.output := by lin_cert using reduction1738.terms
theorem substitutionProof1738 : IsMapEvaluation generatorImages reduction1738.relations [1,7,163] reduction1738.output := by lin_cert using reduction1738.terms
def map_6_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1801 : InImage map_6_116 image1801 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1801 : Bundle := named_bundle% "RealMapCertificates/relations/basis1801.json"
theorem reductionProof1801 : EqualModuloRelations reduction1801.relations reduction1801.input reduction1801.output := by lin_cert using reduction1801.terms
theorem substitutionProof1801 : IsMapEvaluation generatorImages reduction1801.relations [2,7,163] reduction1801.output := by lin_cert using reduction1801.terms
def map_6_120 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1969 : InImage map_6_120 image1969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1969 : Bundle := named_bundle% "RealMapCertificates/relations/basis1969.json"
theorem reductionProof1969 : EqualModuloRelations reduction1969.relations reduction1969.input reduction1969.output := by lin_cert using reduction1969.terms
theorem substitutionProof1969 : IsMapEvaluation generatorImages reduction1969.relations [273] reduction1969.output := by lin_cert using reduction1969.terms
def map_6_121 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2001 : InImage map_6_121 image2001 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2001 : Bundle := named_bundle% "RealMapCertificates/relations/basis2001.json"
theorem reductionProof2001 : EqualModuloRelations reduction2001.relations reduction2001.input reduction2001.output := by lin_cert using reduction2001.terms
theorem substitutionProof2001 : IsMapEvaluation generatorImages reduction2001.relations [57,69] reduction2001.output := by lin_cert using reduction2001.terms
def map_6_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2434 : InImage map_6_130 image2434 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2434 : Bundle := named_bundle% "RealMapCertificates/relations/basis2434.json"
theorem reductionProof2434 : EqualModuloRelations reduction2434.relations reduction2434.input reduction2434.output := by lin_cert using reduction2434.terms
theorem substitutionProof2434 : IsMapEvaluation generatorImages reduction2434.relations [339] reduction2434.output := by lin_cert using reduction2434.terms
def map_6_131 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2492 : InImage map_6_131 image2492 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2492 : Bundle := named_bundle% "RealMapCertificates/relations/basis2492.json"
theorem reductionProof2492 : EqualModuloRelations reduction2492.relations reduction2492.input reduction2492.output := by lin_cert using reduction2492.terms
theorem substitutionProof2492 : IsMapEvaluation generatorImages reduction2492.relations [69,76] reduction2492.output := by lin_cert using reduction2492.terms
def image2493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2493 : InImage map_6_131 image2493 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2493 : Bundle := named_bundle% "RealMapCertificates/relations/basis2493.json"
theorem reductionProof2493 : EqualModuloRelations reduction2493.relations reduction2493.input reduction2493.output := by lin_cert using reduction2493.terms
theorem substitutionProof2493 : IsMapEvaluation generatorImages reduction2493.relations [0,340] reduction2493.output := by lin_cert using reduction2493.terms
def map_6_132 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2573 : InImage map_6_132 image2573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2573 : Bundle := named_bundle% "RealMapCertificates/relations/basis2573.json"
theorem reductionProof2573 : EqualModuloRelations reduction2573.relations reduction2573.input reduction2573.output := by lin_cert using reduction2573.terms
theorem substitutionProof2573 : IsMapEvaluation generatorImages reduction2573.relations [368] reduction2573.output := by lin_cert using reduction2573.terms
def image2574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2574 : InImage map_6_132 image2574 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2574 : Bundle := named_bundle% "RealMapCertificates/relations/basis2574.json"
theorem reductionProof2574 : EqualModuloRelations reduction2574.relations reduction2574.input reduction2574.output := by lin_cert using reduction2574.terms
theorem substitutionProof2574 : IsMapEvaluation generatorImages reduction2574.relations [0,0,0,0,69,69] reduction2574.output := by lin_cert using reduction2574.terms
def map_6_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2633 : InImage map_6_133 image2633 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2633 : Bundle := named_bundle% "RealMapCertificates/relations/basis2633.json"
theorem reductionProof2633 : EqualModuloRelations reduction2633.relations reduction2633.input reduction2633.output := by lin_cert using reduction2633.terms
theorem substitutionProof2633 : IsMapEvaluation generatorImages reduction2633.relations [377] reduction2633.output := by lin_cert using reduction2633.terms
def image2634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2634 : InImage map_6_133 image2634 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2634 : Bundle := named_bundle% "RealMapCertificates/relations/basis2634.json"
theorem reductionProof2634 : EqualModuloRelations reduction2634.relations reduction2634.input reduction2634.output := by lin_cert using reduction2634.terms
theorem substitutionProof2634 : IsMapEvaluation generatorImages reduction2634.relations [0,0,0,0,0,324] reduction2634.output := by lin_cert using reduction2634.terms
def map_6_134 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2711 : InImage map_6_134 image2711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2711 : Bundle := named_bundle% "RealMapCertificates/relations/basis2711.json"
theorem reductionProof2711 : EqualModuloRelations reduction2711.relations reduction2711.input reduction2711.output := by lin_cert using reduction2711.terms
theorem substitutionProof2711 : IsMapEvaluation generatorImages reduction2711.relations [399] reduction2711.output := by lin_cert using reduction2711.terms
def image2712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2712 : InImage map_6_134 image2712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2712 : Bundle := named_bundle% "RealMapCertificates/relations/basis2712.json"
theorem reductionProof2712 : EqualModuloRelations reduction2712.relations reduction2712.input reduction2712.output := by lin_cert using reduction2712.terms
theorem substitutionProof2712 : IsMapEvaluation generatorImages reduction2712.relations [398] reduction2712.output := by lin_cert using reduction2712.terms
def image2713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2713 : InImage map_6_134 image2713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2713 : Bundle := named_bundle% "RealMapCertificates/relations/basis2713.json"
theorem reductionProof2713 : EqualModuloRelations reduction2713.relations reduction2713.input reduction2713.output := by lin_cert using reduction2713.terms
theorem substitutionProof2713 : IsMapEvaluation generatorImages reduction2713.relations [2,340] reduction2713.output := by lin_cert using reduction2713.terms
def image2714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2714 : InImage map_6_134 image2714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2714 : Bundle := named_bundle% "RealMapCertificates/relations/basis2714.json"
theorem reductionProof2714 : EqualModuloRelations reduction2714.relations reduction2714.input reduction2714.output := by lin_cert using reduction2714.terms
theorem substitutionProof2714 : IsMapEvaluation generatorImages reduction2714.relations [0,378] reduction2714.output := by lin_cert using reduction2714.terms
def map_6_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2867 : InImage map_6_136 image2867 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2867 : Bundle := named_bundle% "RealMapCertificates/relations/basis2867.json"
theorem reductionProof2867 : EqualModuloRelations reduction2867.relations reduction2867.input reduction2867.output := by lin_cert using reduction2867.terms
theorem substitutionProof2867 : IsMapEvaluation generatorImages reduction2867.relations [69,93] reduction2867.output := by lin_cert using reduction2867.terms
def map_6_138 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3034 : InImage map_6_138 image3034 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3034 : Bundle := named_bundle% "RealMapCertificates/relations/basis3034.json"
theorem reductionProof3034 : EqualModuloRelations reduction3034.relations reduction3034.input reduction3034.output := by lin_cert using reduction3034.terms
theorem substitutionProof3034 : IsMapEvaluation generatorImages reduction3034.relations [446] reduction3034.output := by lin_cert using reduction3034.terms
def image3035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3035 : InImage map_6_138 image3035 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3035 : Bundle := named_bundle% "RealMapCertificates/relations/basis3035.json"
theorem reductionProof3035 : EqualModuloRelations reduction3035.relations reduction3035.input reduction3035.output := by lin_cert using reduction3035.terms
theorem substitutionProof3035 : IsMapEvaluation generatorImages reduction3035.relations [3,340] reduction3035.output := by lin_cert using reduction3035.terms
def image3036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3036 : InImage map_6_138 image3036 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3036 : Bundle := named_bundle% "RealMapCertificates/relations/basis3036.json"
theorem reductionProof3036 : EqualModuloRelations reduction3036.relations reduction3036.input reduction3036.output := by lin_cert using reduction3036.terms
theorem substitutionProof3036 : IsMapEvaluation generatorImages reduction3036.relations [2,400] reduction3036.output := by lin_cert using reduction3036.terms
def map_6_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3104 : InImage map_6_139 image3104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3104 : Bundle := named_bundle% "RealMapCertificates/relations/basis3104.json"
theorem reductionProof3104 : EqualModuloRelations reduction3104.relations reduction3104.input reduction3104.output := by lin_cert using reduction3104.terms
theorem substitutionProof3104 : IsMapEvaluation generatorImages reduction3104.relations [0,0,0,3,69,69] reduction3104.output := by lin_cert using reduction3104.terms
def map_6_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3193 : InImage map_6_140 image3193 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3193 : Bundle := named_bundle% "RealMapCertificates/relations/basis3193.json"
theorem reductionProof3193 : EqualModuloRelations reduction3193.relations reduction3193.input reduction3193.output := by lin_cert using reduction3193.terms
theorem substitutionProof3193 : IsMapEvaluation generatorImages reduction3193.relations [468] reduction3193.output := by lin_cert using reduction3193.terms
def map_6_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3283 : InImage map_6_141 image3283 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3283 : Bundle := named_bundle% "RealMapCertificates/relations/basis3283.json"
theorem reductionProof3283 : EqualModuloRelations reduction3283.relations reduction3283.input reduction3283.output := by lin_cert using reduction3283.terms
theorem substitutionProof3283 : IsMapEvaluation generatorImages reduction3283.relations [3,378] reduction3283.output := by lin_cert using reduction3283.terms
def image3284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3284 : InImage map_6_141 image3284 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3284 : Bundle := named_bundle% "RealMapCertificates/relations/basis3284.json"
theorem reductionProof3284 : EqualModuloRelations reduction3284.relations reduction3284.input reduction3284.output := by lin_cert using reduction3284.terms
theorem substitutionProof3284 : IsMapEvaluation generatorImages reduction3284.relations [1,4,69,69] reduction3284.output := by lin_cert using reduction3284.terms
def map_6_142 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3359 : InImage map_6_142 image3359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3359 : Bundle := named_bundle% "RealMapCertificates/relations/basis3359.json"
theorem reductionProof3359 : EqualModuloRelations reduction3359.relations reduction3359.input reduction3359.output := by lin_cert using reduction3359.terms
theorem substitutionProof3359 : IsMapEvaluation generatorImages reduction3359.relations [5,324] reduction3359.output := by lin_cert using reduction3359.terms
def image3360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3360 : InImage map_6_142 image3360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3360 : Bundle := named_bundle% "RealMapCertificates/relations/basis3360.json"
theorem reductionProof3360 : EqualModuloRelations reduction3360.relations reduction3360.input reduction3360.output := by lin_cert using reduction3360.terms
theorem substitutionProof3360 : IsMapEvaluation generatorImages reduction3360.relations [3,400] reduction3360.output := by lin_cert using reduction3360.terms
def map_6_144 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3529 : InImage map_6_144 image3529 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3529 : Bundle := named_bundle% "RealMapCertificates/relations/basis3529.json"
theorem reductionProof3529 : EqualModuloRelations reduction3529.relations reduction3529.input reduction3529.output := by lin_cert using reduction3529.terms
theorem substitutionProof3529 : IsMapEvaluation generatorImages reduction3529.relations [505] reduction3529.output := by lin_cert using reduction3529.terms
def image3530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3530 : InImage map_6_144 image3530 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3530 : Bundle := named_bundle% "RealMapCertificates/relations/basis3530.json"
theorem reductionProof3530 : EqualModuloRelations reduction3530.relations reduction3530.input reduction3530.output := by lin_cert using reduction3530.terms
theorem substitutionProof3530 : IsMapEvaluation generatorImages reduction3530.relations [6,324] reduction3530.output := by lin_cert using reduction3530.terms
def map_6_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3596 : InImage map_6_145 image3596 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3596 : Bundle := named_bundle% "RealMapCertificates/relations/basis3596.json"
theorem reductionProof3596 : EqualModuloRelations reduction3596.relations reduction3596.input reduction3596.output := by lin_cert using reduction3596.terms
theorem substitutionProof3596 : IsMapEvaluation generatorImages reduction3596.relations [0,507] reduction3596.output := by lin_cert using reduction3596.terms
def image3597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3597 : InImage map_6_145 image3597 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3597 : Bundle := named_bundle% "RealMapCertificates/relations/basis3597.json"
theorem reductionProof3597 : EqualModuloRelations reduction3597.relations reduction3597.input reduction3597.output := by lin_cert using reduction3597.terms
theorem substitutionProof3597 : IsMapEvaluation generatorImages reduction3597.relations [0,506] reduction3597.output := by lin_cert using reduction3597.terms
def map_6_146 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3688 : InImage map_6_146 image3688 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3688 : Bundle := named_bundle% "RealMapCertificates/relations/basis3688.json"
theorem reductionProof3688 : EqualModuloRelations reduction3688.relations reduction3688.input reduction3688.output := by lin_cert using reduction3688.terms
theorem substitutionProof3688 : IsMapEvaluation generatorImages reduction3688.relations [8,69,69] reduction3688.output := by lin_cert using reduction3688.terms
def image3689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3689 : InImage map_6_146 image3689 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3689 : Bundle := named_bundle% "RealMapCertificates/relations/basis3689.json"
theorem reductionProof3689 : EqualModuloRelations reduction3689.relations reduction3689.input reduction3689.output := by lin_cert using reduction3689.terms
theorem substitutionProof3689 : IsMapEvaluation generatorImages reduction3689.relations [1,507] reduction3689.output := by lin_cert using reduction3689.terms
def image3690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3690 : InImage map_6_146 image3690 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3690 : Bundle := named_bundle% "RealMapCertificates/relations/basis3690.json"
theorem reductionProof3690 : EqualModuloRelations reduction3690.relations reduction3690.input reduction3690.output := by lin_cert using reduction3690.terms
theorem substitutionProof3690 : IsMapEvaluation generatorImages reduction3690.relations [1,506] reduction3690.output := by lin_cert using reduction3690.terms
def image3691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3691 : InImage map_6_146 image3691 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3691 : Bundle := named_bundle% "RealMapCertificates/relations/basis3691.json"
theorem reductionProof3691 : EqualModuloRelations reduction3691.relations reduction3691.input reduction3691.output := by lin_cert using reduction3691.terms
theorem substitutionProof3691 : IsMapEvaluation generatorImages reduction3691.relations [0,0,508] reduction3691.output := by lin_cert using reduction3691.terms
def map_6_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3791 : InImage map_6_147 image3791 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3791 : Bundle := named_bundle% "RealMapCertificates/relations/basis3791.json"
theorem reductionProof3791 : EqualModuloRelations reduction3791.relations reduction3791.input reduction3791.output := by lin_cert using reduction3791.terms
theorem substitutionProof3791 : IsMapEvaluation generatorImages reduction3791.relations [0,526] reduction3791.output := by lin_cert using reduction3791.terms
def image3792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3792 : InImage map_6_147 image3792 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3792 : Bundle := named_bundle% "RealMapCertificates/relations/basis3792.json"
theorem reductionProof3792 : EqualModuloRelations reduction3792.relations reduction3792.input reduction3792.output := by lin_cert using reduction3792.terms
theorem substitutionProof3792 : IsMapEvaluation generatorImages reduction3792.relations [0,8,324] reduction3792.output := by lin_cert using reduction3792.terms
def map_6_148 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3865 : InImage map_6_148 image3865 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3865 : Bundle := named_bundle% "RealMapCertificates/relations/basis3865.json"
theorem reductionProof3865 : EqualModuloRelations reduction3865.relations reduction3865.input reduction3865.output := by lin_cert using reduction3865.terms
theorem substitutionProof3865 : IsMapEvaluation generatorImages reduction3865.relations [2,506] reduction3865.output := by lin_cert using reduction3865.terms
def image3866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3866 : InImage map_6_148 image3866 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3866 : Bundle := named_bundle% "RealMapCertificates/relations/basis3866.json"
theorem reductionProof3866 : EqualModuloRelations reduction3866.relations reduction3866.input reduction3866.output := by lin_cert using reduction3866.terms
theorem substitutionProof3866 : IsMapEvaluation generatorImages reduction3866.relations [1,8,324] reduction3866.output := by lin_cert using reduction3866.terms
def image3867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3867 : InImage map_6_148 image3867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3867 : Bundle := named_bundle% "RealMapCertificates/relations/basis3867.json"
theorem reductionProof3867 : EqualModuloRelations reduction3867.relations reduction3867.input reduction3867.output := by lin_cert using reduction3867.terms
theorem substitutionProof3867 : IsMapEvaluation generatorImages reduction3867.relations [0,0,0,0,7,324] reduction3867.output := by lin_cert using reduction3867.terms
def map_6_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3944 : InImage map_6_149 image3944 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3944 : Bundle := named_bundle% "RealMapCertificates/relations/basis3944.json"
theorem reductionProof3944 : EqualModuloRelations reduction3944.relations reduction3944.input reduction3944.output := by lin_cert using reduction3944.terms
theorem substitutionProof3944 : IsMapEvaluation generatorImages reduction3944.relations [9,69,69] reduction3944.output := by lin_cert using reduction3944.terms
def image3945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3945 : InImage map_6_149 image3945 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3945 : Bundle := named_bundle% "RealMapCertificates/relations/basis3945.json"
theorem reductionProof3945 : EqualModuloRelations reduction3945.relations reduction3945.input reduction3945.output := by lin_cert using reduction3945.terms
theorem substitutionProof3945 : IsMapEvaluation generatorImages reduction3945.relations [7,378] reduction3945.output := by lin_cert using reduction3945.terms
def map_6_150 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4064 : InImage map_6_150 image4064 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4064 : Bundle := named_bundle% "RealMapCertificates/relations/basis4064.json"
theorem reductionProof4064 : EqualModuloRelations reduction4064.relations reduction4064.input reduction4064.output := by lin_cert using reduction4064.terms
theorem substitutionProof4064 : IsMapEvaluation generatorImages reduction4064.relations [7,400] reduction4064.output := by lin_cert using reduction4064.terms
def image4065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4065 : InImage map_6_150 image4065 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4065 : Bundle := named_bundle% "RealMapCertificates/relations/basis4065.json"
theorem reductionProof4065 : EqualModuloRelations reduction4065.relations reduction4065.input reduction4065.output := by lin_cert using reduction4065.terms
theorem substitutionProof4065 : IsMapEvaluation generatorImages reduction4065.relations [2,526] reduction4065.output := by lin_cert using reduction4065.terms
def image4066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4066 : InImage map_6_150 image4066 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4066 : Bundle := named_bundle% "RealMapCertificates/relations/basis4066.json"
theorem reductionProof4066 : EqualModuloRelations reduction4066.relations reduction4066.input reduction4066.output := by lin_cert using reduction4066.terms
theorem substitutionProof4066 : IsMapEvaluation generatorImages reduction4066.relations [0,9,324] reduction4066.output := by lin_cert using reduction4066.terms
def image4067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4067 : InImage map_6_150 image4067 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4067 : Bundle := named_bundle% "RealMapCertificates/relations/basis4067.json"
theorem reductionProof4067 : EqualModuloRelations reduction4067.relations reduction4067.input reduction4067.output := by lin_cert using reduction4067.terms
theorem substitutionProof4067 : IsMapEvaluation generatorImages reduction4067.relations [0,0,548] reduction4067.output := by lin_cert using reduction4067.terms
end RealMapCertificates
