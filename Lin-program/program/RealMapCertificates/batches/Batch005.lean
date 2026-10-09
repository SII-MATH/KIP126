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
  | 24 => []
  | 25 => []
  | 26 => []
  | 34 => []
  | 35 => []
  | 37 => []
  | 38 => []
  | 43 => []
  | 57 => []
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
  | 242 => []
  | 324 => []
  | 341 => []
  | 378 => []
  | 506 => []
  | 507 => []
  | 508 => []
  | 527 => []
  | 593 => []
  | 605 => []
  | 660 => []
  | 699 => []
  | 749 => []
  | 750 => []
  | 751 => []
  | 849 => []
  | 850 => []
  | 914 => []
  | 1058 => []
  | 1635 => []
  | 1715 => []
  | 1716 => []
  | 2034 => []
  | 2626 => []
  | 2669 => []
  | 2856 => []
  | 2857 => []
  | _ => []
def map_6_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4141 : InImage map_6_151 image4141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4141 : Bundle := named_bundle% "RealMapCertificates/relations/basis4141.json"
theorem reductionProof4141 : EqualModuloRelations reduction4141.relations reduction4141.input reduction4141.output := by lin_cert using reduction4141.terms
theorem substitutionProof4141 : IsMapEvaluation generatorImages reduction4141.relations [0,10,324] reduction4141.output := by lin_cert using reduction4141.terms
def map_6_152 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4227 : InImage map_6_152 image4227 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4227 : Bundle := named_bundle% "RealMapCertificates/relations/basis4227.json"
theorem reductionProof4227 : EqualModuloRelations reduction4227.relations reduction4227.input reduction4227.output := by lin_cert using reduction4227.terms
theorem substitutionProof4227 : IsMapEvaluation generatorImages reduction4227.relations [3,506] reduction4227.output := by lin_cert using reduction4227.terms
def map_6_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4321 : InImage map_6_153 image4321 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4321 : Bundle := named_bundle% "RealMapCertificates/relations/basis4321.json"
theorem reductionProof4321 : EqualModuloRelations reduction4321.relations reduction4321.input reduction4321.output := by lin_cert using reduction4321.terms
theorem substitutionProof4321 : IsMapEvaluation generatorImages reduction4321.relations [0,13,324] reduction4321.output := by lin_cert using reduction4321.terms
def map_6_154 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4392 : InImage map_6_154 image4392 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4392 : Bundle := named_bundle% "RealMapCertificates/relations/basis4392.json"
theorem reductionProof4392 : EqualModuloRelations reduction4392.relations reduction4392.input reduction4392.output := by lin_cert using reduction4392.terms
theorem substitutionProof4392 : IsMapEvaluation generatorImages reduction4392.relations [593] reduction4392.output := by lin_cert using reduction4392.terms
def image4393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4393 : InImage map_6_154 image4393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4393 : Bundle := named_bundle% "RealMapCertificates/relations/basis4393.json"
theorem reductionProof4393 : EqualModuloRelations reduction4393.relations reduction4393.input reduction4393.output := by lin_cert using reduction4393.terms
theorem substitutionProof4393 : IsMapEvaluation generatorImages reduction4393.relations [2,2,527] reduction4393.output := by lin_cert using reduction4393.terms
def image4394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4394 : InImage map_6_154 image4394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4394 : Bundle := named_bundle% "RealMapCertificates/relations/basis4394.json"
theorem reductionProof4394 : EqualModuloRelations reduction4394.relations reduction4394.input reduction4394.output := by lin_cert using reduction4394.terms
theorem substitutionProof4394 : IsMapEvaluation generatorImages reduction4394.relations [1,13,324] reduction4394.output := by lin_cert using reduction4394.terms
def map_6_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4468 : InImage map_6_155 image4468 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4468 : Bundle := named_bundle% "RealMapCertificates/relations/basis4468.json"
theorem reductionProof4468 : EqualModuloRelations reduction4468.relations reduction4468.input reduction4468.output := by lin_cert using reduction4468.terms
theorem substitutionProof4468 : IsMapEvaluation generatorImages reduction4468.relations [605] reduction4468.output := by lin_cert using reduction4468.terms
def map_6_156 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4585 : InImage map_6_156 image4585 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4585 : Bundle := named_bundle% "RealMapCertificates/relations/basis4585.json"
theorem reductionProof4585 : EqualModuloRelations reduction4585.relations reduction4585.input reduction4585.output := by lin_cert using reduction4585.terms
theorem substitutionProof4585 : IsMapEvaluation generatorImages reduction4585.relations [2,13,324] reduction4585.output := by lin_cert using reduction4585.terms
def map_6_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4657 : InImage map_6_157 image4657 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4657 : Bundle := named_bundle% "RealMapCertificates/relations/basis4657.json"
theorem reductionProof4657 : EqualModuloRelations reduction4657.relations reduction4657.input reduction4657.output := by lin_cert using reduction4657.terms
theorem substitutionProof4657 : IsMapEvaluation generatorImages reduction4657.relations [1,4,7,324] reduction4657.output := by lin_cert using reduction4657.terms
def map_6_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4914 : InImage map_6_160 image4914 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4914 : Bundle := named_bundle% "RealMapCertificates/relations/basis4914.json"
theorem reductionProof4914 : EqualModuloRelations reduction4914.relations reduction4914.input reduction4914.output := by lin_cert using reduction4914.terms
theorem substitutionProof4914 : IsMapEvaluation generatorImages reduction4914.relations [7,507] reduction4914.output := by lin_cert using reduction4914.terms
def map_6_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5003 : InImage map_6_161 image5003 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5003 : Bundle := named_bundle% "RealMapCertificates/relations/basis5003.json"
theorem reductionProof5003 : EqualModuloRelations reduction5003.relations reduction5003.input reduction5003.output := by lin_cert using reduction5003.terms
theorem substitutionProof5003 : IsMapEvaluation generatorImages reduction5003.relations [0,7,508] reduction5003.output := by lin_cert using reduction5003.terms
def map_6_162 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5125 : InImage map_6_162 image5125 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5125 : Bundle := named_bundle% "RealMapCertificates/relations/basis5125.json"
theorem reductionProof5125 : EqualModuloRelations reduction5125.relations reduction5125.input reduction5125.output := by lin_cert using reduction5125.terms
theorem substitutionProof5125 : IsMapEvaluation generatorImages reduction5125.relations [1,7,508] reduction5125.output := by lin_cert using reduction5125.terms
def image5126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5126 : InImage map_6_162 image5126 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5126 : Bundle := named_bundle% "RealMapCertificates/relations/basis5126.json"
theorem reductionProof5126 : EqualModuloRelations reduction5126.relations reduction5126.input reduction5126.output := by lin_cert using reduction5126.terms
theorem substitutionProof5126 : IsMapEvaluation generatorImages reduction5126.relations [0,660] reduction5126.output := by lin_cert using reduction5126.terms
def map_6_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5203 : InImage map_6_163 image5203 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5203 : Bundle := named_bundle% "RealMapCertificates/relations/basis5203.json"
theorem reductionProof5203 : EqualModuloRelations reduction5203.relations reduction5203.input reduction5203.output := by lin_cert using reduction5203.terms
theorem substitutionProof5203 : IsMapEvaluation generatorImages reduction5203.relations [1,660] reduction5203.output := by lin_cert using reduction5203.terms
def image5204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5204 : InImage map_6_163 image5204 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5204 : Bundle := named_bundle% "RealMapCertificates/relations/basis5204.json"
theorem reductionProof5204 : EqualModuloRelations reduction5204.relations reduction5204.input reduction5204.output := by lin_cert using reduction5204.terms
theorem substitutionProof5204 : IsMapEvaluation generatorImages reduction5204.relations [0,0,0,7,7,324] reduction5204.output := by lin_cert using reduction5204.terms
def map_6_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5302 : InImage map_6_164 image5302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5302 : Bundle := named_bundle% "RealMapCertificates/relations/basis5302.json"
theorem reductionProof5302 : EqualModuloRelations reduction5302.relations reduction5302.input reduction5302.output := by lin_cert using reduction5302.terms
theorem substitutionProof5302 : IsMapEvaluation generatorImages reduction5302.relations [699] reduction5302.output := by lin_cert using reduction5302.terms
def image5303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5303 : InImage map_6_164 image5303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5303 : Bundle := named_bundle% "RealMapCertificates/relations/basis5303.json"
theorem reductionProof5303 : EqualModuloRelations reduction5303.relations reduction5303.input reduction5303.output := by lin_cert using reduction5303.terms
theorem substitutionProof5303 : IsMapEvaluation generatorImages reduction5303.relations [24,324] reduction5303.output := by lin_cert using reduction5303.terms
def image5304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5304 : InImage map_6_164 image5304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5304 : Bundle := named_bundle% "RealMapCertificates/relations/basis5304.json"
theorem reductionProof5304 : EqualModuloRelations reduction5304.relations reduction5304.input reduction5304.output := by lin_cert using reduction5304.terms
theorem substitutionProof5304 : IsMapEvaluation generatorImages reduction5304.relations [0,0,0,0,18,324] reduction5304.output := by lin_cert using reduction5304.terms
def map_6_165 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5427 : InImage map_6_165 image5427 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5427 : Bundle := named_bundle% "RealMapCertificates/relations/basis5427.json"
theorem reductionProof5427 : EqualModuloRelations reduction5427.relations reduction5427.input reduction5427.output := by lin_cert using reduction5427.terms
theorem substitutionProof5427 : IsMapEvaluation generatorImages reduction5427.relations [18,378] reduction5427.output := by lin_cert using reduction5427.terms
def image5428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5428 : InImage map_6_165 image5428 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5428 : Bundle := named_bundle% "RealMapCertificates/relations/basis5428.json"
theorem reductionProof5428 : EqualModuloRelations reduction5428.relations reduction5428.input reduction5428.output := by lin_cert using reduction5428.terms
theorem substitutionProof5428 : IsMapEvaluation generatorImages reduction5428.relations [2,660] reduction5428.output := by lin_cert using reduction5428.terms
def map_6_166 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5527 : InImage map_6_166 image5527 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5527 : Bundle := named_bundle% "RealMapCertificates/relations/basis5527.json"
theorem reductionProof5527 : EqualModuloRelations reduction5527.relations reduction5527.input reduction5527.output := by lin_cert using reduction5527.terms
theorem substitutionProof5527 : IsMapEvaluation generatorImages reduction5527.relations [2,18,341] reduction5527.output := by lin_cert using reduction5527.terms
def image5528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5528 : InImage map_6_166 image5528 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5528 : Bundle := named_bundle% "RealMapCertificates/relations/basis5528.json"
theorem reductionProof5528 : EqualModuloRelations reduction5528.relations reduction5528.input reduction5528.output := by lin_cert using reduction5528.terms
theorem substitutionProof5528 : IsMapEvaluation generatorImages reduction5528.relations [0,26,324] reduction5528.output := by lin_cert using reduction5528.terms
def map_6_168 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5761 : InImage map_6_168 image5761 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5761 : Bundle := named_bundle% "RealMapCertificates/relations/basis5761.json"
theorem reductionProof5761 : EqualModuloRelations reduction5761.relations reduction5761.input reduction5761.output := by lin_cert using reduction5761.terms
theorem substitutionProof5761 : IsMapEvaluation generatorImages reduction5761.relations [749] reduction5761.output := by lin_cert using reduction5761.terms
def image5762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5762 : InImage map_6_168 image5762 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5762 : Bundle := named_bundle% "RealMapCertificates/relations/basis5762.json"
theorem reductionProof5762 : EqualModuloRelations reduction5762.relations reduction5762.input reduction5762.output := by lin_cert using reduction5762.terms
theorem substitutionProof5762 : IsMapEvaluation generatorImages reduction5762.relations [2,25,324] reduction5762.output := by lin_cert using reduction5762.terms
def map_6_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5853 : InImage map_6_169 image5853 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5853 : Bundle := named_bundle% "RealMapCertificates/relations/basis5853.json"
theorem reductionProof5853 : EqualModuloRelations reduction5853.relations reduction5853.input reduction5853.output := by lin_cert using reduction5853.terms
theorem substitutionProof5853 : IsMapEvaluation generatorImages reduction5853.relations [0,750] reduction5853.output := by lin_cert using reduction5853.terms
def map_6_170 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5963 : InImage map_6_170 image5963 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5963 : Bundle := named_bundle% "RealMapCertificates/relations/basis5963.json"
theorem reductionProof5963 : EqualModuloRelations reduction5963.relations reduction5963.input reduction5963.output := by lin_cert using reduction5963.terms
theorem substitutionProof5963 : IsMapEvaluation generatorImages reduction5963.relations [34,324] reduction5963.output := by lin_cert using reduction5963.terms
def image5964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5964 : InImage map_6_170 image5964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5964 : Bundle := named_bundle% "RealMapCertificates/relations/basis5964.json"
theorem reductionProof5964 : EqualModuloRelations reduction5964.relations reduction5964.input reduction5964.output := by lin_cert using reduction5964.terms
theorem substitutionProof5964 : IsMapEvaluation generatorImages reduction5964.relations [1,750] reduction5964.output := by lin_cert using reduction5964.terms
def image5965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5965 : InImage map_6_170 image5965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5965 : Bundle := named_bundle% "RealMapCertificates/relations/basis5965.json"
theorem reductionProof5965 : EqualModuloRelations reduction5965.relations reduction5965.input reduction5965.output := by lin_cert using reduction5965.terms
theorem substitutionProof5965 : IsMapEvaluation generatorImages reduction5965.relations [0,0,751] reduction5965.output := by lin_cert using reduction5965.terms
def map_6_171 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6102 : InImage map_6_171 image6102 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6102 : Bundle := named_bundle% "RealMapCertificates/relations/basis6102.json"
theorem reductionProof6102 : EqualModuloRelations reduction6102.relations reduction6102.input reduction6102.output := by lin_cert using reduction6102.terms
theorem substitutionProof6102 : IsMapEvaluation generatorImages reduction6102.relations [0,0,0,3,18,324] reduction6102.output := by lin_cert using reduction6102.terms
def map_6_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6189 : InImage map_6_172 image6189 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6189 : Bundle := named_bundle% "RealMapCertificates/relations/basis6189.json"
theorem reductionProof6189 : EqualModuloRelations reduction6189.relations reduction6189.input reduction6189.output := by lin_cert using reduction6189.terms
theorem substitutionProof6189 : IsMapEvaluation generatorImages reduction6189.relations [1,35,324] reduction6189.output := by lin_cert using reduction6189.terms
def image6190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6190 : InImage map_6_172 image6190 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6190 : Bundle := named_bundle% "RealMapCertificates/relations/basis6190.json"
theorem reductionProof6190 : EqualModuloRelations reduction6190.relations reduction6190.input reduction6190.output := by lin_cert using reduction6190.terms
theorem substitutionProof6190 : IsMapEvaluation generatorImages reduction6190.relations [1,1,751] reduction6190.output := by lin_cert using reduction6190.terms
def map_6_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6286 : InImage map_6_173 image6286 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6286 : Bundle := named_bundle% "RealMapCertificates/relations/basis6286.json"
theorem reductionProof6286 : EqualModuloRelations reduction6286.relations reduction6286.input reduction6286.output := by lin_cert using reduction6286.terms
theorem substitutionProof6286 : IsMapEvaluation generatorImages reduction6286.relations [1,4,18,324] reduction6286.output := by lin_cert using reduction6286.terms
def image6287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6287 : InImage map_6_173 image6287 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6287 : Bundle := named_bundle% "RealMapCertificates/relations/basis6287.json"
theorem reductionProof6287 : EqualModuloRelations reduction6287.relations reduction6287.input reduction6287.output := by lin_cert using reduction6287.terms
theorem substitutionProof6287 : IsMapEvaluation generatorImages reduction6287.relations [0,37,324] reduction6287.output := by lin_cert using reduction6287.terms
def map_6_174 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6439 : InImage map_6_174 image6439 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6439 : Bundle := named_bundle% "RealMapCertificates/relations/basis6439.json"
theorem reductionProof6439 : EqualModuloRelations reduction6439.relations reduction6439.input reduction6439.output := by lin_cert using reduction6439.terms
theorem substitutionProof6439 : IsMapEvaluation generatorImages reduction6439.relations [0,0,38,324] reduction6439.output := by lin_cert using reduction6439.terms
def map_6_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6640 : InImage map_6_176 image6640 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6640 : Bundle := named_bundle% "RealMapCertificates/relations/basis6640.json"
theorem reductionProof6640 : EqualModuloRelations reduction6640.relations reduction6640.input reduction6640.output := by lin_cert using reduction6640.terms
theorem substitutionProof6640 : IsMapEvaluation generatorImages reduction6640.relations [18,506] reduction6640.output := by lin_cert using reduction6640.terms
def image6641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6641 : InImage map_6_176 image6641 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6641 : Bundle := named_bundle% "RealMapCertificates/relations/basis6641.json"
theorem reductionProof6641 : EqualModuloRelations reduction6641.relations reduction6641.input reduction6641.output := by lin_cert using reduction6641.terms
theorem substitutionProof6641 : IsMapEvaluation generatorImages reduction6641.relations [3,750] reduction6641.output := by lin_cert using reduction6641.terms
def map_6_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6777 : InImage map_6_177 image6777 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6777 : Bundle := named_bundle% "RealMapCertificates/relations/basis6777.json"
theorem reductionProof6777 : EqualModuloRelations reduction6777.relations reduction6777.input reduction6777.output := by lin_cert using reduction6777.terms
theorem substitutionProof6777 : IsMapEvaluation generatorImages reduction6777.relations [0,43,324] reduction6777.output := by lin_cert using reduction6777.terms
def image6778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6778 : InImage map_6_177 image6778 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6778 : Bundle := named_bundle% "RealMapCertificates/relations/basis6778.json"
theorem reductionProof6778 : EqualModuloRelations reduction6778.relations reduction6778.input reduction6778.output := by lin_cert using reduction6778.terms
theorem substitutionProof6778 : IsMapEvaluation generatorImages reduction6778.relations [0,3,751] reduction6778.output := by lin_cert using reduction6778.terms
def map_6_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6882 : InImage map_6_178 image6882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6882 : Bundle := named_bundle% "RealMapCertificates/relations/basis6882.json"
theorem reductionProof6882 : EqualModuloRelations reduction6882.relations reduction6882.input reduction6882.output := by lin_cert using reduction6882.terms
theorem substitutionProof6882 : IsMapEvaluation generatorImages reduction6882.relations [8,18,324] reduction6882.output := by lin_cert using reduction6882.terms
def image6883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6883 : InImage map_6_178 image6883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6883 : Bundle := named_bundle% "RealMapCertificates/relations/basis6883.json"
theorem reductionProof6883 : EqualModuloRelations reduction6883.relations reduction6883.input reduction6883.output := by lin_cert using reduction6883.terms
theorem substitutionProof6883 : IsMapEvaluation generatorImages reduction6883.relations [1,43,324] reduction6883.output := by lin_cert using reduction6883.terms
def image6884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6884 : InImage map_6_178 image6884 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6884 : Bundle := named_bundle% "RealMapCertificates/relations/basis6884.json"
theorem reductionProof6884 : EqualModuloRelations reduction6884.relations reduction6884.input reduction6884.output := by lin_cert using reduction6884.terms
theorem substitutionProof6884 : IsMapEvaluation generatorImages reduction6884.relations [0,0,849] reduction6884.output := by lin_cert using reduction6884.terms
def map_6_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7003 : InImage map_6_179 image7003 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7003 : Bundle := named_bundle% "RealMapCertificates/relations/basis7003.json"
theorem reductionProof7003 : EqualModuloRelations reduction7003.relations reduction7003.input reduction7003.output := by lin_cert using reduction7003.terms
theorem substitutionProof7003 : IsMapEvaluation generatorImages reduction7003.relations [0,0,0,850] reduction7003.output := by lin_cert using reduction7003.terms
def map_6_180 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7153 : InImage map_6_180 image7153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7153 : Bundle := named_bundle% "RealMapCertificates/relations/basis7153.json"
theorem reductionProof7153 : EqualModuloRelations reduction7153.relations reduction7153.input reduction7153.output := by lin_cert using reduction7153.terms
theorem substitutionProof7153 : IsMapEvaluation generatorImages reduction7153.relations [2,43,324] reduction7153.output := by lin_cert using reduction7153.terms
def image7154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7154 : InImage map_6_180 image7154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7154 : Bundle := named_bundle% "RealMapCertificates/relations/basis7154.json"
theorem reductionProof7154 : EqualModuloRelations reduction7154.relations reduction7154.input reduction7154.output := by lin_cert using reduction7154.terms
theorem substitutionProof7154 : IsMapEvaluation generatorImages reduction7154.relations [1,1,849] reduction7154.output := by lin_cert using reduction7154.terms
def map_6_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7241 : InImage map_6_181 image7241 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7241 : Bundle := named_bundle% "RealMapCertificates/relations/basis7241.json"
theorem reductionProof7241 : EqualModuloRelations reduction7241.relations reduction7241.input reduction7241.output := by lin_cert using reduction7241.terms
theorem substitutionProof7241 : IsMapEvaluation generatorImages reduction7241.relations [9,18,324] reduction7241.output := by lin_cert using reduction7241.terms
def image7242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7242 : InImage map_6_181 image7242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7242 : Bundle := named_bundle% "RealMapCertificates/relations/basis7242.json"
theorem reductionProof7242 : EqualModuloRelations reduction7242.relations reduction7242.input reduction7242.output := by lin_cert using reduction7242.terms
theorem substitutionProof7242 : IsMapEvaluation generatorImages reduction7242.relations [0,2,849] reduction7242.output := by lin_cert using reduction7242.terms
def map_6_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7364 : InImage map_6_182 image7364 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7364 : Bundle := named_bundle% "RealMapCertificates/relations/basis7364.json"
theorem reductionProof7364 : EqualModuloRelations reduction7364.relations reduction7364.input reduction7364.output := by lin_cert using reduction7364.terms
theorem substitutionProof7364 : IsMapEvaluation generatorImages reduction7364.relations [914] reduction7364.output := by lin_cert using reduction7364.terms
def image7365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7365 : InImage map_6_182 image7365 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7365 : Bundle := named_bundle% "RealMapCertificates/relations/basis7365.json"
theorem reductionProof7365 : EqualModuloRelations reduction7365.relations reduction7365.input reduction7365.output := by lin_cert using reduction7365.terms
theorem substitutionProof7365 : IsMapEvaluation generatorImages reduction7365.relations [10,18,324] reduction7365.output := by lin_cert using reduction7365.terms
def image7366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7366 : InImage map_6_182 image7366 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7366 : Bundle := named_bundle% "RealMapCertificates/relations/basis7366.json"
theorem reductionProof7366 : EqualModuloRelations reduction7366.relations reduction7366.input reduction7366.output := by lin_cert using reduction7366.terms
theorem substitutionProof7366 : IsMapEvaluation generatorImages reduction7366.relations [0,0,2,850] reduction7366.output := by lin_cert using reduction7366.terms
def map_6_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7603 : InImage map_6_184 image7603 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7603 : Bundle := named_bundle% "RealMapCertificates/relations/basis7603.json"
theorem reductionProof7603 : EqualModuloRelations reduction7603.relations reduction7603.input reduction7603.output := by lin_cert using reduction7603.terms
theorem substitutionProof7603 : IsMapEvaluation generatorImages reduction7603.relations [3,43,324] reduction7603.output := by lin_cert using reduction7603.terms
def image7604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7604 : InImage map_6_184 image7604 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7604 : Bundle := named_bundle% "RealMapCertificates/relations/basis7604.json"
theorem reductionProof7604 : EqualModuloRelations reduction7604.relations reduction7604.input reduction7604.output := by lin_cert using reduction7604.terms
theorem substitutionProof7604 : IsMapEvaluation generatorImages reduction7604.relations [2,2,849] reduction7604.output := by lin_cert using reduction7604.terms
def map_6_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7725 : InImage map_6_185 image7725 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7725 : Bundle := named_bundle% "RealMapCertificates/relations/basis7725.json"
theorem reductionProof7725 : EqualModuloRelations reduction7725.relations reduction7725.input reduction7725.output := by lin_cert using reduction7725.terms
theorem substitutionProof7725 : IsMapEvaluation generatorImages reduction7725.relations [57,324] reduction7725.output := by lin_cert using reduction7725.terms
def map_6_186 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7869 : InImage map_6_186 image7869 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7869 : Bundle := named_bundle% "RealMapCertificates/relations/basis7869.json"
theorem reductionProof7869 : EqualModuloRelations reduction7869.relations reduction7869.input reduction7869.output := by lin_cert using reduction7869.terms
theorem substitutionProof7869 : IsMapEvaluation generatorImages reduction7869.relations [2,11,18,324] reduction7869.output := by lin_cert using reduction7869.terms
def map_6_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7945 : InImage map_6_187 image7945 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7945 : Bundle := named_bundle% "RealMapCertificates/relations/basis7945.json"
theorem reductionProof7945 : EqualModuloRelations reduction7945.relations reduction7945.input reduction7945.output := by lin_cert using reduction7945.terms
theorem substitutionProof7945 : IsMapEvaluation generatorImages reduction7945.relations [4,850] reduction7945.output := by lin_cert using reduction7945.terms
def map_6_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8697 : InImage map_6_193 image8697 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8697 : Bundle := named_bundle% "RealMapCertificates/relations/basis8697.json"
theorem reductionProof8697 : EqualModuloRelations reduction8697.relations reduction8697.input reduction8697.output := by lin_cert using reduction8697.terms
theorem substitutionProof8697 : IsMapEvaluation generatorImages reduction8697.relations [18,660] reduction8697.output := by lin_cert using reduction8697.terms
def map_6_194 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8843 : InImage map_6_194 image8843 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8843 : Bundle := named_bundle% "RealMapCertificates/relations/basis8843.json"
theorem reductionProof8843 : EqualModuloRelations reduction8843.relations reduction8843.input reduction8843.output := by lin_cert using reduction8843.terms
theorem substitutionProof8843 : IsMapEvaluation generatorImages reduction8843.relations [18,18,341] reduction8843.output := by lin_cert using reduction8843.terms
def image8844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8844 : InImage map_6_194 image8844 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8844 : Bundle := named_bundle% "RealMapCertificates/relations/basis8844.json"
theorem reductionProof8844 : EqualModuloRelations reduction8844.relations reduction8844.input reduction8844.output := by lin_cert using reduction8844.terms
theorem substitutionProof8844 : IsMapEvaluation generatorImages reduction8844.relations [0,0,1058] reduction8844.output := by lin_cert using reduction8844.terms
def map_6_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9001 : InImage map_6_195 image9001 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9001 : Bundle := named_bundle% "RealMapCertificates/relations/basis9001.json"
theorem reductionProof9001 : EqualModuloRelations reduction9001.relations reduction9001.input reduction9001.output := by lin_cert using reduction9001.terms
theorem substitutionProof9001 : IsMapEvaluation generatorImages reduction9001.relations [76,324] reduction9001.output := by lin_cert using reduction9001.terms
def image9002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9002 : InImage map_6_195 image9002 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9002 : Bundle := named_bundle% "RealMapCertificates/relations/basis9002.json"
theorem reductionProof9002 : EqualModuloRelations reduction9002.relations reduction9002.input reduction9002.output := by lin_cert using reduction9002.terms
theorem substitutionProof9002 : IsMapEvaluation generatorImages reduction9002.relations [1,70,324] reduction9002.output := by lin_cert using reduction9002.terms
def image9003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9003 : InImage map_6_195 image9003 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9003 : Bundle := named_bundle% "RealMapCertificates/relations/basis9003.json"
theorem reductionProof9003 : EqualModuloRelations reduction9003.relations reduction9003.input reduction9003.output := by lin_cert using reduction9003.terms
theorem substitutionProof9003 : IsMapEvaluation generatorImages reduction9003.relations [0,0,0,18,18,324] reduction9003.output := by lin_cert using reduction9003.terms
def map_6_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9124 : InImage map_6_196 image9124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9124 : Bundle := named_bundle% "RealMapCertificates/relations/basis9124.json"
theorem reductionProof9124 : EqualModuloRelations reduction9124.relations reduction9124.input reduction9124.output := by lin_cert using reduction9124.terms
theorem substitutionProof9124 : IsMapEvaluation generatorImages reduction9124.relations [1,1,1058] reduction9124.output := by lin_cert using reduction9124.terms
def map_6_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9278 : InImage map_6_197 image9278 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9278 : Bundle := named_bundle% "RealMapCertificates/relations/basis9278.json"
theorem reductionProof9278 : EqualModuloRelations reduction9278.relations reduction9278.input reduction9278.output := by lin_cert using reduction9278.terms
theorem substitutionProof9278 : IsMapEvaluation generatorImages reduction9278.relations [2,70,324] reduction9278.output := by lin_cert using reduction9278.terms
def image9279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9279 : InImage map_6_197 image9279 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9279 : Bundle := named_bundle% "RealMapCertificates/relations/basis9279.json"
theorem reductionProof9279 : EqualModuloRelations reduction9279.relations reduction9279.input reduction9279.output := by lin_cert using reduction9279.terms
theorem substitutionProof9279 : IsMapEvaluation generatorImages reduction9279.relations [0,2,1058] reduction9279.output := by lin_cert using reduction9279.terms
def map_6_198 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9467 : InImage map_6_198 image9467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9467 : Bundle := named_bundle% "RealMapCertificates/relations/basis9467.json"
theorem reductionProof9467 : EqualModuloRelations reduction9467.relations reduction9467.input reduction9467.output := by lin_cert using reduction9467.terms
theorem substitutionProof9467 : IsMapEvaluation generatorImages reduction9467.relations [0,0,2,18,18,324] reduction9467.output := by lin_cert using reduction9467.terms
def map_6_200 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9766 : InImage map_6_200 image9766 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9766 : Bundle := named_bundle% "RealMapCertificates/relations/basis9766.json"
theorem reductionProof9766 : EqualModuloRelations reduction9766.relations reduction9766.input reduction9766.output := by lin_cert using reduction9766.terms
theorem substitutionProof9766 : IsMapEvaluation generatorImages reduction9766.relations [93,324] reduction9766.output := by lin_cert using reduction9766.terms
def image9767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9767 : InImage map_6_200 image9767 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9767 : Bundle := named_bundle% "RealMapCertificates/relations/basis9767.json"
theorem reductionProof9767 : EqualModuloRelations reduction9767.relations reduction9767.input reduction9767.output := by lin_cert using reduction9767.terms
theorem substitutionProof9767 : IsMapEvaluation generatorImages reduction9767.relations [92,324] reduction9767.output := by lin_cert using reduction9767.terms
def image9768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9768 : InImage map_6_200 image9768 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9768 : Bundle := named_bundle% "RealMapCertificates/relations/basis9768.json"
theorem reductionProof9768 : EqualModuloRelations reduction9768.relations reduction9768.input reduction9768.output := by lin_cert using reduction9768.terms
theorem substitutionProof9768 : IsMapEvaluation generatorImages reduction9768.relations [2,2,1058] reduction9768.output := by lin_cert using reduction9768.terms
def map_6_201 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9941 : InImage map_6_201 image9941 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9941 : Bundle := named_bundle% "RealMapCertificates/relations/basis9941.json"
theorem reductionProof9941 : EqualModuloRelations reduction9941.relations reduction9941.input reduction9941.output := by lin_cert using reduction9941.terms
theorem substitutionProof9941 : IsMapEvaluation generatorImages reduction9941.relations [0,94,324] reduction9941.output := by lin_cert using reduction9941.terms
def image9942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9942 : InImage map_6_201 image9942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9942 : Bundle := named_bundle% "RealMapCertificates/relations/basis9942.json"
theorem reductionProof9942 : EqualModuloRelations reduction9942.relations reduction9942.input reduction9942.output := by lin_cert using reduction9942.terms
theorem substitutionProof9942 : IsMapEvaluation generatorImages reduction9942.relations [0,3,1058] reduction9942.output := by lin_cert using reduction9942.terms
def map_6_202 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10081 : InImage map_6_202 image10081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10081 : Bundle := named_bundle% "RealMapCertificates/relations/basis10081.json"
theorem reductionProof10081 : EqualModuloRelations reduction10081.relations reduction10081.input reduction10081.output := by lin_cert using reduction10081.terms
theorem substitutionProof10081 : IsMapEvaluation generatorImages reduction10081.relations [1,3,1058] reduction10081.output := by lin_cert using reduction10081.terms
def image10082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10082 : InImage map_6_202 image10082 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10082 : Bundle := named_bundle% "RealMapCertificates/relations/basis10082.json"
theorem reductionProof10082 : EqualModuloRelations reduction10082.relations reduction10082.input reduction10082.output := by lin_cert using reduction10082.terms
theorem substitutionProof10082 : IsMapEvaluation generatorImages reduction10082.relations [0,96,324] reduction10082.output := by lin_cert using reduction10082.terms
def map_6_203 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10257 : InImage map_6_203 image10257 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10257 : Bundle := named_bundle% "RealMapCertificates/relations/basis10257.json"
theorem reductionProof10257 : EqualModuloRelations reduction10257.relations reduction10257.input reduction10257.output := by lin_cert using reduction10257.terms
theorem substitutionProof10257 : IsMapEvaluation generatorImages reduction10257.relations [1,96,324] reduction10257.output := by lin_cert using reduction10257.terms
def map_6_204 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10467 : InImage map_6_204 image10467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10467 : Bundle := named_bundle% "RealMapCertificates/relations/basis10467.json"
theorem reductionProof10467 : EqualModuloRelations reduction10467.relations reduction10467.input reduction10467.output := by lin_cert using reduction10467.terms
theorem substitutionProof10467 : IsMapEvaluation generatorImages reduction10467.relations [1,99,324] reduction10467.output := by lin_cert using reduction10467.terms
def map_6_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11132 : InImage map_6_208 image11132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11132 : Bundle := named_bundle% "RealMapCertificates/relations/basis11132.json"
theorem reductionProof11132 : EqualModuloRelations reduction11132.relations reduction11132.input reduction11132.output := by lin_cert using reduction11132.terms
theorem substitutionProof11132 : IsMapEvaluation generatorImages reduction11132.relations [3,94,324] reduction11132.output := by lin_cert using reduction11132.terms
def map_6_209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11311 : InImage map_6_209 image11311 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11311 : Bundle := named_bundle% "RealMapCertificates/relations/basis11311.json"
theorem reductionProof11311 : EqualModuloRelations reduction11311.relations reduction11311.input reduction11311.output := by lin_cert using reduction11311.terms
theorem substitutionProof11311 : IsMapEvaluation generatorImages reduction11311.relations [7,70,324] reduction11311.output := by lin_cert using reduction11311.terms
def image11312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11312 : InImage map_6_209 image11312 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11312 : Bundle := named_bundle% "RealMapCertificates/relations/basis11312.json"
theorem reductionProof11312 : EqualModuloRelations reduction11312.relations reduction11312.input reduction11312.output := by lin_cert using reduction11312.terms
theorem substitutionProof11312 : IsMapEvaluation generatorImages reduction11312.relations [0,7,1058] reduction11312.output := by lin_cert using reduction11312.terms
def map_6_210 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11529 : InImage map_6_210 image11529 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11529 : Bundle := named_bundle% "RealMapCertificates/relations/basis11529.json"
theorem reductionProof11529 : EqualModuloRelations reduction11529.relations reduction11529.input reduction11529.output := by lin_cert using reduction11529.terms
theorem substitutionProof11529 : IsMapEvaluation generatorImages reduction11529.relations [1,7,1058] reduction11529.output := by lin_cert using reduction11529.terms
def image11530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11530 : InImage map_6_210 image11530 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11530 : Bundle := named_bundle% "RealMapCertificates/relations/basis11530.json"
theorem reductionProof11530 : EqualModuloRelations reduction11530.relations reduction11530.input reduction11530.output := by lin_cert using reduction11530.terms
theorem substitutionProof11530 : IsMapEvaluation generatorImages reduction11530.relations [0,0,18,850] reduction11530.output := by lin_cert using reduction11530.terms
def map_6_212 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11884 : InImage map_6_212 image11884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11884 : Bundle := named_bundle% "RealMapCertificates/relations/basis11884.json"
theorem reductionProof11884 : EqualModuloRelations reduction11884.relations reduction11884.input reduction11884.output := by lin_cert using reduction11884.terms
theorem substitutionProof11884 : IsMapEvaluation generatorImages reduction11884.relations [131,324] reduction11884.output := by lin_cert using reduction11884.terms
def image11885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11885 : InImage map_6_212 image11885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11885 : Bundle := named_bundle% "RealMapCertificates/relations/basis11885.json"
theorem reductionProof11885 : EqualModuloRelations reduction11885.relations reduction11885.input reduction11885.output := by lin_cert using reduction11885.terms
theorem substitutionProof11885 : IsMapEvaluation generatorImages reduction11885.relations [1,1,18,850] reduction11885.output := by lin_cert using reduction11885.terms
def map_6_213 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12103 : InImage map_6_213 image12103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12103 : Bundle := named_bundle% "RealMapCertificates/relations/basis12103.json"
theorem reductionProof12103 : EqualModuloRelations reduction12103.relations reduction12103.input reduction12103.output := by lin_cert using reduction12103.terms
theorem substitutionProof12103 : IsMapEvaluation generatorImages reduction12103.relations [0,132,324] reduction12103.output := by lin_cert using reduction12103.terms
def map_6_216 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12675 : InImage map_6_216 image12675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12675 : Bundle := named_bundle% "RealMapCertificates/relations/basis12675.json"
theorem reductionProof12675 : EqualModuloRelations reduction12675.relations reduction12675.input reduction12675.output := by lin_cert using reduction12675.terms
theorem substitutionProof12675 : IsMapEvaluation generatorImages reduction12675.relations [2,132,324] reduction12675.output := by lin_cert using reduction12675.terms
def map_6_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12812 : InImage map_6_217 image12812 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12812 : Bundle := named_bundle% "RealMapCertificates/relations/basis12812.json"
theorem reductionProof12812 : EqualModuloRelations reduction12812.relations reduction12812.input reduction12812.output := by lin_cert using reduction12812.terms
theorem substitutionProof12812 : IsMapEvaluation generatorImages reduction12812.relations [0,142,324] reduction12812.output := by lin_cert using reduction12812.terms
def map_6_218 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13031 : InImage map_6_218 image13031 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13031 : Bundle := named_bundle% "RealMapCertificates/relations/basis13031.json"
theorem reductionProof13031 : EqualModuloRelations reduction13031.relations reduction13031.input reduction13031.output := by lin_cert using reduction13031.terms
theorem substitutionProof13031 : IsMapEvaluation generatorImages reduction13031.relations [1,142,324] reduction13031.output := by lin_cert using reduction13031.terms
def image13032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13032 : InImage map_6_218 image13032 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13032 : Bundle := named_bundle% "RealMapCertificates/relations/basis13032.json"
theorem reductionProof13032 : EqualModuloRelations reduction13032.relations reduction13032.input reduction13032.output := by lin_cert using reduction13032.terms
theorem substitutionProof13032 : IsMapEvaluation generatorImages reduction13032.relations [0,0,143,324] reduction13032.output := by lin_cert using reduction13032.terms
def map_6_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13383 : InImage map_6_220 image13383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13383 : Bundle := named_bundle% "RealMapCertificates/relations/basis13383.json"
theorem reductionProof13383 : EqualModuloRelations reduction13383.relations reduction13383.input reduction13383.output := by lin_cert using reduction13383.terms
theorem substitutionProof13383 : IsMapEvaluation generatorImages reduction13383.relations [1,1,143,324] reduction13383.output := by lin_cert using reduction13383.terms
def map_6_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14147 : InImage map_6_224 image14147 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14147 : Bundle := named_bundle% "RealMapCertificates/relations/basis14147.json"
theorem reductionProof14147 : EqualModuloRelations reduction14147.relations reduction14147.input reduction14147.output := by lin_cert using reduction14147.terms
theorem substitutionProof14147 : IsMapEvaluation generatorImages reduction14147.relations [1635] reduction14147.output := by lin_cert using reduction14147.terms
def map_6_225 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14349 : InImage map_6_225 image14349 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14349 : Bundle := named_bundle% "RealMapCertificates/relations/basis14349.json"
theorem reductionProof14349 : EqualModuloRelations reduction14349.relations reduction14349.input reduction14349.output := by lin_cert using reduction14349.terms
theorem substitutionProof14349 : IsMapEvaluation generatorImages reduction14349.relations [0,18,1058] reduction14349.output := by lin_cert using reduction14349.terms
def map_6_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14501 : InImage map_6_226 image14501 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14501 : Bundle := named_bundle% "RealMapCertificates/relations/basis14501.json"
theorem reductionProof14501 : EqualModuloRelations reduction14501.relations reduction14501.input reduction14501.output := by lin_cert using reduction14501.terms
theorem substitutionProof14501 : IsMapEvaluation generatorImages reduction14501.relations [1,18,1058] reduction14501.output := by lin_cert using reduction14501.terms
def map_6_228 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14946 : InImage map_6_228 image14946 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14946 : Bundle := named_bundle% "RealMapCertificates/relations/basis14946.json"
theorem reductionProof14946 : EqualModuloRelations reduction14946.relations reduction14946.input reduction14946.output := by lin_cert using reduction14946.terms
theorem substitutionProof14946 : IsMapEvaluation generatorImages reduction14946.relations [1715] reduction14946.output := by lin_cert using reduction14946.terms
def image14947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14947 : InImage map_6_228 image14947 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14947 : Bundle := named_bundle% "RealMapCertificates/relations/basis14947.json"
theorem reductionProof14947 : EqualModuloRelations reduction14947.relations reduction14947.input reduction14947.output := by lin_cert using reduction14947.terms
theorem substitutionProof14947 : IsMapEvaluation generatorImages reduction14947.relations [2,18,1058] reduction14947.output := by lin_cert using reduction14947.terms
def map_6_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15091 : InImage map_6_229 image15091 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15091 : Bundle := named_bundle% "RealMapCertificates/relations/basis15091.json"
theorem reductionProof15091 : EqualModuloRelations reduction15091.relations reduction15091.input reduction15091.output := by lin_cert using reduction15091.terms
theorem substitutionProof15091 : IsMapEvaluation generatorImages reduction15091.relations [0,1716] reduction15091.output := by lin_cert using reduction15091.terms
def map_6_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15740 : InImage map_6_232 image15740 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15740 : Bundle := named_bundle% "RealMapCertificates/relations/basis15740.json"
theorem reductionProof15740 : EqualModuloRelations reduction15740.relations reduction15740.input reduction15740.output := by lin_cert using reduction15740.terms
theorem substitutionProof15740 : IsMapEvaluation generatorImages reduction15740.relations [3,18,1058] reduction15740.output := by lin_cert using reduction15740.terms
def map_6_233 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15969 : InImage map_6_233 image15969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15969 : Bundle := named_bundle% "RealMapCertificates/relations/basis15969.json"
theorem reductionProof15969 : EqualModuloRelations reduction15969.relations reduction15969.input reduction15969.output := by lin_cert using reduction15969.terms
theorem substitutionProof15969 : IsMapEvaluation generatorImages reduction15969.relations [0,7,143,324] reduction15969.output := by lin_cert using reduction15969.terms
def map_6_240 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17653 : InImage map_6_240 image17653 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17653 : Bundle := named_bundle% "RealMapCertificates/relations/basis17653.json"
theorem reductionProof17653 : EqualModuloRelations reduction17653.relations reduction17653.input reduction17653.output := by lin_cert using reduction17653.terms
theorem substitutionProof17653 : IsMapEvaluation generatorImages reduction17653.relations [2034] reduction17653.output := by lin_cert using reduction17653.terms
def map_6_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18115 : InImage map_6_242 image18115 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18115 : Bundle := named_bundle% "RealMapCertificates/relations/basis18115.json"
theorem reductionProof18115 : EqualModuloRelations reduction18115.relations reduction18115.input reduction18115.output := by lin_cert using reduction18115.terms
theorem substitutionProof18115 : IsMapEvaluation generatorImages reduction18115.relations [242,324] reduction18115.output := by lin_cert using reduction18115.terms
def map_6_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22987 : InImage map_6_259 image22987 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22987 : Bundle := named_bundle% "RealMapCertificates/relations/basis22987.json"
theorem reductionProof22987 : EqualModuloRelations reduction22987.relations reduction22987.input reduction22987.output := by lin_cert using reduction22987.terms
theorem substitutionProof22987 : IsMapEvaluation generatorImages reduction22987.relations [1,2669] reduction22987.output := by lin_cert using reduction22987.terms
def map_6_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23397 : InImage map_6_260 image23397 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23397 : Bundle := named_bundle% "RealMapCertificates/relations/basis23397.json"
theorem reductionProof23397 : EqualModuloRelations reduction23397.relations reduction23397.input reduction23397.output := by lin_cert using reduction23397.terms
theorem substitutionProof23397 : IsMapEvaluation generatorImages reduction23397.relations [2856] reduction23397.output := by lin_cert using reduction23397.terms
def image23398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23398 : InImage map_6_260 image23398 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23398 : Bundle := named_bundle% "RealMapCertificates/relations/basis23398.json"
theorem reductionProof23398 : EqualModuloRelations reduction23398.relations reduction23398.input reduction23398.output := by lin_cert using reduction23398.terms
theorem substitutionProof23398 : IsMapEvaluation generatorImages reduction23398.relations [0,0,0,0,324,324] reduction23398.output := by lin_cert using reduction23398.terms
def map_6_261 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image23816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23816 : InImage map_6_261 image23816 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23816 : Bundle := named_bundle% "RealMapCertificates/relations/basis23816.json"
theorem reductionProof23816 : EqualModuloRelations reduction23816.relations reduction23816.input reduction23816.output := by lin_cert using reduction23816.terms
theorem substitutionProof23816 : IsMapEvaluation generatorImages reduction23816.relations [2,2669] reduction23816.output := by lin_cert using reduction23816.terms
def image23817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23817 : InImage map_6_261 image23817 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23817 : Bundle := named_bundle% "RealMapCertificates/relations/basis23817.json"
theorem reductionProof23817 : EqualModuloRelations reduction23817.relations reduction23817.input reduction23817.output := by lin_cert using reduction23817.terms
theorem substitutionProof23817 : IsMapEvaluation generatorImages reduction23817.relations [0,2857] reduction23817.output := by lin_cert using reduction23817.terms
def image23818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23818 : InImage map_6_261 image23818 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23818 : Bundle := named_bundle% "RealMapCertificates/relations/basis23818.json"
theorem reductionProof23818 : EqualModuloRelations reduction23818.relations reduction23818.input reduction23818.output := by lin_cert using reduction23818.terms
theorem substitutionProof23818 : IsMapEvaluation generatorImages reduction23818.relations [0,0,0,0,0,2626] reduction23818.output := by lin_cert using reduction23818.terms
end RealMapCertificates
