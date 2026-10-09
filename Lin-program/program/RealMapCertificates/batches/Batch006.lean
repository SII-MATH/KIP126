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
  | 5 => [[1,4]]
  | 6 => [[2,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 12 => [[3,4]]
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 28 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 33 => []
  | 34 => []
  | 36 => []
  | 37 => []
  | 43 => []
  | 48 => []
  | 53 => []
  | 54 => []
  | 61 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 70 => []
  | 73 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 84 => []
  | 85 => []
  | 86 => []
  | 91 => []
  | 92 => []
  | 95 => []
  | 96 => []
  | 109 => []
  | 121 => []
  | 122 => []
  | 128 => []
  | 129 => []
  | 130 => []
  | 131 => []
  | 142 => []
  | 143 => []
  | 148 => []
  | 158 => []
  | 163 => []
  | 191 => []
  | 198 => []
  | 203 => []
  | 204 => []
  | 214 => []
  | 222 => []
  | 230 => []
  | 231 => []
  | 240 => []
  | 241 => []
  | 264 => []
  | _ => []
def map_7_7 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12 : InImage map_7_7 image12 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12 : Bundle := named_bundle% "RealMapCertificates/relations/basis12.json"
theorem reductionProof12 : EqualModuloRelations reduction12.relations reduction12.input reduction12.output := by lin_cert using reduction12.terms
theorem substitutionProof12 : IsMapEvaluation generatorImages reduction12.relations [0,0,0,0,0,0,0] reduction12.output := by lin_cert using reduction12.terms
def map_7_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image41 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation41 : InImage map_7_18 image41 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction41 : Bundle := named_bundle% "RealMapCertificates/relations/basis41.json"
theorem reductionProof41 : EqualModuloRelations reduction41.relations reduction41.input reduction41.output := by lin_cert using reduction41.terms
theorem substitutionProof41 : IsMapEvaluation generatorImages reduction41.relations [0,0,6] reduction41.output := by lin_cert using reduction41.terms
def map_7_22 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image59 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation59 : InImage map_7_22 image59 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction59 : Bundle := named_bundle% "RealMapCertificates/relations/basis59.json"
theorem reductionProof59 : EqualModuloRelations reduction59.relations reduction59.input reduction59.output := by lin_cert using reduction59.terms
theorem substitutionProof59 : IsMapEvaluation generatorImages reduction59.relations [0,0,0,0,0,0,7] reduction59.output := by lin_cert using reduction59.terms
def map_7_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image67 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation67 : InImage map_7_23 image67 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction67 : Bundle := named_bundle% "RealMapCertificates/relations/basis67.json"
theorem reductionProof67 : EqualModuloRelations reduction67.relations reduction67.input reduction67.output := by lin_cert using reduction67.terms
theorem substitutionProof67 : IsMapEvaluation generatorImages reduction67.relations [12] reduction67.output := by lin_cert using reduction67.terms
def map_7_24 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image71 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation71 : InImage map_7_24 image71 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction71 : Bundle := named_bundle% "RealMapCertificates/relations/basis71.json"
theorem reductionProof71 : EqualModuloRelations reduction71.relations reduction71.input reduction71.output := by lin_cert using reduction71.terms
theorem substitutionProof71 : IsMapEvaluation generatorImages reduction71.relations [0,0,0,9] reduction71.output := by lin_cert using reduction71.terms
def map_7_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image95 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation95 : InImage map_7_30 image95 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction95 : Bundle := named_bundle% "RealMapCertificates/relations/basis95.json"
theorem reductionProof95 : EqualModuloRelations reduction95.relations reduction95.input reduction95.output := by lin_cert using reduction95.terms
theorem substitutionProof95 : IsMapEvaluation generatorImages reduction95.relations [17] reduction95.output := by lin_cert using reduction95.terms
def map_7_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation109 : InImage map_7_33 image109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction109 : Bundle := named_bundle% "RealMapCertificates/relations/basis109.json"
theorem reductionProof109 : EqualModuloRelations reduction109.relations reduction109.input reduction109.output := by lin_cert using reduction109.terms
theorem substitutionProof109 : IsMapEvaluation generatorImages reduction109.relations [20] reduction109.output := by lin_cert using reduction109.terms
def map_7_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image131 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation131 : InImage map_7_36 image131 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction131 : Bundle := named_bundle% "RealMapCertificates/relations/basis131.json"
theorem reductionProof131 : EqualModuloRelations reduction131.relations reduction131.input reduction131.output := by lin_cert using reduction131.terms
theorem substitutionProof131 : IsMapEvaluation generatorImages reduction131.relations [22] reduction131.output := by lin_cert using reduction131.terms
def map_7_37 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation142 : InImage map_7_37 image142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction142 : Bundle := named_bundle% "RealMapCertificates/relations/basis142.json"
theorem reductionProof142 : EqualModuloRelations reduction142.relations reduction142.input reduction142.output := by lin_cert using reduction142.terms
theorem substitutionProof142 : IsMapEvaluation generatorImages reduction142.relations [0,23] reduction142.output := by lin_cert using reduction142.terms
def map_7_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation151 : InImage map_7_38 image151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction151 : Bundle := named_bundle% "RealMapCertificates/relations/basis151.json"
theorem reductionProof151 : EqualModuloRelations reduction151.relations reduction151.input reduction151.output := by lin_cert using reduction151.terms
theorem substitutionProof151 : IsMapEvaluation generatorImages reduction151.relations [0,0,0,0,0,0,18] reduction151.output := by lin_cert using reduction151.terms
def map_7_39 : Matrix 2 1 := fun i j => ([false,true] : List Bool)[i.val*1+j.val]!
def image159 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation159 : InImage map_7_39 image159 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction159 : Bundle := named_bundle% "RealMapCertificates/relations/basis159.json"
theorem reductionProof159 : EqualModuloRelations reduction159.relations reduction159.input reduction159.output := by lin_cert using reduction159.terms
theorem substitutionProof159 : IsMapEvaluation generatorImages reduction159.relations [29] reduction159.output := by lin_cert using reduction159.terms
def map_7_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation167 : InImage map_7_40 image167 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction167 : Bundle := named_bundle% "RealMapCertificates/relations/basis167.json"
theorem reductionProof167 : EqualModuloRelations reduction167.relations reduction167.input reduction167.output := by lin_cert using reduction167.terms
theorem substitutionProof167 : IsMapEvaluation generatorImages reduction167.relations [1,28] reduction167.output := by lin_cert using reduction167.terms
def map_7_42 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image184 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation184 : InImage map_7_42 image184 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction184 : Bundle := named_bundle% "RealMapCertificates/relations/basis184.json"
theorem reductionProof184 : EqualModuloRelations reduction184.relations reduction184.input reduction184.output := by lin_cert using reduction184.terms
theorem substitutionProof184 : IsMapEvaluation generatorImages reduction184.relations [32] reduction184.output := by lin_cert using reduction184.terms
def map_7_44 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation204 : InImage map_7_44 image204 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction204 : Bundle := named_bundle% "RealMapCertificates/relations/basis204.json"
theorem reductionProof204 : EqualModuloRelations reduction204.relations reduction204.input reduction204.output := by lin_cert using reduction204.terms
theorem substitutionProof204 : IsMapEvaluation generatorImages reduction204.relations [1,33] reduction204.output := by lin_cert using reduction204.terms
def image205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation205 : InImage map_7_44 image205 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction205 : Bundle := named_bundle% "RealMapCertificates/relations/basis205.json"
theorem reductionProof205 : EqualModuloRelations reduction205.relations reduction205.input reduction205.output := by lin_cert using reduction205.terms
theorem substitutionProof205 : IsMapEvaluation generatorImages reduction205.relations [0,0,34] reduction205.output := by lin_cert using reduction205.terms
def map_7_45 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation218 : InImage map_7_45 image218 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction218 : Bundle := named_bundle% "RealMapCertificates/relations/basis218.json"
theorem reductionProof218 : EqualModuloRelations reduction218.relations reduction218.input reduction218.output := by lin_cert using reduction218.terms
theorem substitutionProof218 : IsMapEvaluation generatorImages reduction218.relations [0,36] reduction218.output := by lin_cert using reduction218.terms
def map_7_46 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation229 : InImage map_7_46 image229 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction229 : Bundle := named_bundle% "RealMapCertificates/relations/basis229.json"
theorem reductionProof229 : EqualModuloRelations reduction229.relations reduction229.input reduction229.output := by lin_cert using reduction229.terms
theorem substitutionProof229 : IsMapEvaluation generatorImages reduction229.relations [1,36] reduction229.output := by lin_cert using reduction229.terms
def map_7_48 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation246 : InImage map_7_48 image246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction246 : Bundle := named_bundle% "RealMapCertificates/relations/basis246.json"
theorem reductionProof246 : EqualModuloRelations reduction246.relations reduction246.input reduction246.output := by lin_cert using reduction246.terms
theorem substitutionProof246 : IsMapEvaluation generatorImages reduction246.relations [1,5,18] reduction246.output := by lin_cert using reduction246.terms
def map_7_49 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation254 : InImage map_7_49 image254 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction254 : Bundle := named_bundle% "RealMapCertificates/relations/basis254.json"
theorem reductionProof254 : EqualModuloRelations reduction254.relations reduction254.input reduction254.output := by lin_cert using reduction254.terms
theorem substitutionProof254 : IsMapEvaluation generatorImages reduction254.relations [0,6,18] reduction254.output := by lin_cert using reduction254.terms
def map_7_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation278 : InImage map_7_52 image278 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction278 : Bundle := named_bundle% "RealMapCertificates/relations/basis278.json"
theorem reductionProof278 : EqualModuloRelations reduction278.relations reduction278.input reduction278.output := by lin_cert using reduction278.terms
theorem substitutionProof278 : IsMapEvaluation generatorImages reduction278.relations [0,0,8,18] reduction278.output := by lin_cert using reduction278.terms
def map_7_53 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation286 : InImage map_7_53 image286 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction286 : Bundle := named_bundle% "RealMapCertificates/relations/basis286.json"
theorem reductionProof286 : EqualModuloRelations reduction286.relations reduction286.input reduction286.output := by lin_cert using reduction286.terms
theorem substitutionProof286 : IsMapEvaluation generatorImages reduction286.relations [48] reduction286.output := by lin_cert using reduction286.terms
def map_7_54 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation298 : InImage map_7_54 image298 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction298 : Bundle := named_bundle% "RealMapCertificates/relations/basis298.json"
theorem reductionProof298 : EqualModuloRelations reduction298.relations reduction298.input reduction298.output := by lin_cert using reduction298.terms
theorem substitutionProof298 : IsMapEvaluation generatorImages reduction298.relations [1,1,8,18] reduction298.output := by lin_cert using reduction298.terms
def map_7_55 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation309 : InImage map_7_55 image309 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction309 : Bundle := named_bundle% "RealMapCertificates/relations/basis309.json"
theorem reductionProof309 : EqualModuloRelations reduction309.relations reduction309.input reduction309.output := by lin_cert using reduction309.terms
theorem substitutionProof309 : IsMapEvaluation generatorImages reduction309.relations [53] reduction309.output := by lin_cert using reduction309.terms
def image310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation310 : InImage map_7_55 image310 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction310 : Bundle := named_bundle% "RealMapCertificates/relations/basis310.json"
theorem reductionProof310 : EqualModuloRelations reduction310.relations reduction310.input reduction310.output := by lin_cert using reduction310.terms
theorem substitutionProof310 : IsMapEvaluation generatorImages reduction310.relations [0,0,9,18] reduction310.output := by lin_cert using reduction310.terms
def map_7_58 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation337 : InImage map_7_58 image337 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction337 : Bundle := named_bundle% "RealMapCertificates/relations/basis337.json"
theorem reductionProof337 : EqualModuloRelations reduction337.relations reduction337.input reduction337.output := by lin_cert using reduction337.terms
theorem substitutionProof337 : IsMapEvaluation generatorImages reduction337.relations [0,0,3,43] reduction337.output := by lin_cert using reduction337.terms
def map_7_60 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation358 : InImage map_7_60 image358 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction358 : Bundle := named_bundle% "RealMapCertificates/relations/basis358.json"
theorem reductionProof358 : EqualModuloRelations reduction358.relations reduction358.input reduction358.output := by lin_cert using reduction358.terms
theorem substitutionProof358 : IsMapEvaluation generatorImages reduction358.relations [2,54] reduction358.output := by lin_cert using reduction358.terms
def map_7_62 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation375 : InImage map_7_62 image375 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction375 : Bundle := named_bundle% "RealMapCertificates/relations/basis375.json"
theorem reductionProof375 : EqualModuloRelations reduction375.relations reduction375.input reduction375.output := by lin_cert using reduction375.terms
theorem substitutionProof375 : IsMapEvaluation generatorImages reduction375.relations [1,61] reduction375.output := by lin_cert using reduction375.terms
def map_7_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation398 : InImage map_7_64 image398 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction398 : Bundle := named_bundle% "RealMapCertificates/relations/basis398.json"
theorem reductionProof398 : EqualModuloRelations reduction398.relations reduction398.input reduction398.output := by lin_cert using reduction398.terms
theorem substitutionProof398 : IsMapEvaluation generatorImages reduction398.relations [67] reduction398.output := by lin_cert using reduction398.terms
def map_7_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation414 : InImage map_7_65 image414 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction414 : Bundle := named_bundle% "RealMapCertificates/relations/basis414.json"
theorem reductionProof414 : EqualModuloRelations reduction414.relations reduction414.input reduction414.output := by lin_cert using reduction414.terms
theorem substitutionProof414 : IsMapEvaluation generatorImages reduction414.relations [0,68] reduction414.output := by lin_cert using reduction414.terms
def map_7_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation449 : InImage map_7_67 image449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction449 : Bundle := named_bundle% "RealMapCertificates/relations/basis449.json"
theorem reductionProof449 : EqualModuloRelations reduction449.relations reduction449.input reduction449.output := by lin_cert using reduction449.terms
theorem substitutionProof449 : IsMapEvaluation generatorImages reduction449.relations [73] reduction449.output := by lin_cert using reduction449.terms
def map_7_68 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation467 : InImage map_7_68 image467 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction467 : Bundle := named_bundle% "RealMapCertificates/relations/basis467.json"
theorem reductionProof467 : EqualModuloRelations reduction467.relations reduction467.input reduction467.output := by lin_cert using reduction467.terms
theorem substitutionProof467 : IsMapEvaluation generatorImages reduction467.relations [0,75] reduction467.output := by lin_cert using reduction467.terms
def image468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation468 : InImage map_7_68 image468 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction468 : Bundle := named_bundle% "RealMapCertificates/relations/basis468.json"
theorem reductionProof468 : EqualModuloRelations reduction468.relations reduction468.input reduction468.output := by lin_cert using reduction468.terms
theorem substitutionProof468 : IsMapEvaluation generatorImages reduction468.relations [0,74] reduction468.output := by lin_cert using reduction468.terms
def map_7_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation492 : InImage map_7_69 image492 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction492 : Bundle := named_bundle% "RealMapCertificates/relations/basis492.json"
theorem reductionProof492 : EqualModuloRelations reduction492.relations reduction492.input reduction492.output := by lin_cert using reduction492.terms
theorem substitutionProof492 : IsMapEvaluation generatorImages reduction492.relations [0,0,0,0,0,18,18] reduction492.output := by lin_cert using reduction492.terms
def map_7_70 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation511 : InImage map_7_70 image511 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction511 : Bundle := named_bundle% "RealMapCertificates/relations/basis511.json"
theorem reductionProof511 : EqualModuloRelations reduction511.relations reduction511.input reduction511.output := by lin_cert using reduction511.terms
theorem substitutionProof511 : IsMapEvaluation generatorImages reduction511.relations [85] reduction511.output := by lin_cert using reduction511.terms
def image512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation512 : InImage map_7_70 image512 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction512 : Bundle := named_bundle% "RealMapCertificates/relations/basis512.json"
theorem reductionProof512 : EqualModuloRelations reduction512.relations reduction512.input reduction512.output := by lin_cert using reduction512.terms
theorem substitutionProof512 : IsMapEvaluation generatorImages reduction512.relations [84] reduction512.output := by lin_cert using reduction512.terms
def image513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation513 : InImage map_7_70 image513 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction513 : Bundle := named_bundle% "RealMapCertificates/relations/basis513.json"
theorem reductionProof513 : EqualModuloRelations reduction513.relations reduction513.input reduction513.output := by lin_cert using reduction513.terms
theorem substitutionProof513 : IsMapEvaluation generatorImages reduction513.relations [0,0,0,0,0,0,69] reduction513.output := by lin_cert using reduction513.terms
def map_7_71 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation531 : InImage map_7_71 image531 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction531 : Bundle := named_bundle% "RealMapCertificates/relations/basis531.json"
theorem reductionProof531 : EqualModuloRelations reduction531.relations reduction531.input reduction531.output := by lin_cert using reduction531.terms
theorem substitutionProof531 : IsMapEvaluation generatorImages reduction531.relations [2,75] reduction531.output := by lin_cert using reduction531.terms
def image532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation532 : InImage map_7_71 image532 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction532 : Bundle := named_bundle% "RealMapCertificates/relations/basis532.json"
theorem reductionProof532 : EqualModuloRelations reduction532.relations reduction532.input reduction532.output := by lin_cert using reduction532.terms
theorem substitutionProof532 : IsMapEvaluation generatorImages reduction532.relations [0,86] reduction532.output := by lin_cert using reduction532.terms
def map_7_72 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation556 : InImage map_7_72 image556 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction556 : Bundle := named_bundle% "RealMapCertificates/relations/basis556.json"
theorem reductionProof556 : EqualModuloRelations reduction556.relations reduction556.input reduction556.output := by lin_cert using reduction556.terms
theorem substitutionProof556 : IsMapEvaluation generatorImages reduction556.relations [3,68] reduction556.output := by lin_cert using reduction556.terms
def image557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation557 : InImage map_7_72 image557 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction557 : Bundle := named_bundle% "RealMapCertificates/relations/basis557.json"
theorem reductionProof557 : EqualModuloRelations reduction557.relations reduction557.input reduction557.output := by lin_cert using reduction557.terms
theorem substitutionProof557 : IsMapEvaluation generatorImages reduction557.relations [2,18,24] reduction557.output := by lin_cert using reduction557.terms
def map_7_73 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation576 : InImage map_7_73 image576 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction576 : Bundle := named_bundle% "RealMapCertificates/relations/basis576.json"
theorem reductionProof576 : EqualModuloRelations reduction576.relations reduction576.input reduction576.output := by lin_cert using reduction576.terms
theorem substitutionProof576 : IsMapEvaluation generatorImages reduction576.relations [95] reduction576.output := by lin_cert using reduction576.terms
def image577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation577 : InImage map_7_73 image577 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction577 : Bundle := named_bundle% "RealMapCertificates/relations/basis577.json"
theorem reductionProof577 : EqualModuloRelations reduction577.relations reduction577.input reduction577.output := by lin_cert using reduction577.terms
theorem substitutionProof577 : IsMapEvaluation generatorImages reduction577.relations [0,91] reduction577.output := by lin_cert using reduction577.terms
def map_7_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation600 : InImage map_7_74 image600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction600 : Bundle := named_bundle% "RealMapCertificates/relations/basis600.json"
theorem reductionProof600 : EqualModuloRelations reduction600.relations reduction600.input reduction600.output := by lin_cert using reduction600.terms
theorem substitutionProof600 : IsMapEvaluation generatorImages reduction600.relations [0,0,92] reduction600.output := by lin_cert using reduction600.terms
def map_7_75 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation619 : InImage map_7_75 image619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction619 : Bundle := named_bundle% "RealMapCertificates/relations/basis619.json"
theorem reductionProof619 : EqualModuloRelations reduction619.relations reduction619.input reduction619.output := by lin_cert using reduction619.terms
theorem substitutionProof619 : IsMapEvaluation generatorImages reduction619.relations [3,74] reduction619.output := by lin_cert using reduction619.terms
def image620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation620 : InImage map_7_75 image620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction620 : Bundle := named_bundle% "RealMapCertificates/relations/basis620.json"
theorem reductionProof620 : EqualModuloRelations reduction620.relations reduction620.input reduction620.output := by lin_cert using reduction620.terms
theorem substitutionProof620 : IsMapEvaluation generatorImages reduction620.relations [2,2,76] reduction620.output := by lin_cert using reduction620.terms
def map_7_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation642 : InImage map_7_76 image642 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction642 : Bundle := named_bundle% "RealMapCertificates/relations/basis642.json"
theorem reductionProof642 : EqualModuloRelations reduction642.relations reduction642.input reduction642.output := by lin_cert using reduction642.terms
theorem substitutionProof642 : IsMapEvaluation generatorImages reduction642.relations [0,0,0,96] reduction642.output := by lin_cert using reduction642.terms
def map_7_77 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation661 : InImage map_7_77 image661 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction661 : Bundle := named_bundle% "RealMapCertificates/relations/basis661.json"
theorem reductionProof661 : EqualModuloRelations reduction661.relations reduction661.input reduction661.output := by lin_cert using reduction661.terms
theorem substitutionProof661 : IsMapEvaluation generatorImages reduction661.relations [1,3,76] reduction661.output := by lin_cert using reduction661.terms
def image662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation662 : InImage map_7_77 image662 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction662 : Bundle := named_bundle% "RealMapCertificates/relations/basis662.json"
theorem reductionProof662 : EqualModuloRelations reduction662.relations reduction662.input reduction662.output := by lin_cert using reduction662.terms
theorem substitutionProof662 : IsMapEvaluation generatorImages reduction662.relations [0,2,92] reduction662.output := by lin_cert using reduction662.terms
def map_7_78 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation691 : InImage map_7_78 image691 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction691 : Bundle := named_bundle% "RealMapCertificates/relations/basis691.json"
theorem reductionProof691 : EqualModuloRelations reduction691.relations reduction691.input reduction691.output := by lin_cert using reduction691.terms
theorem substitutionProof691 : IsMapEvaluation generatorImages reduction691.relations [0,109] reduction691.output := by lin_cert using reduction691.terms
def map_7_80 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation726 : InImage map_7_80 image726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction726 : Bundle := named_bundle% "RealMapCertificates/relations/basis726.json"
theorem reductionProof726 : EqualModuloRelations reduction726.relations reduction726.input reduction726.output := by lin_cert using reduction726.terms
theorem substitutionProof726 : IsMapEvaluation generatorImages reduction726.relations [7,68] reduction726.output := by lin_cert using reduction726.terms
def image727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation727 : InImage map_7_80 image727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction727 : Bundle := named_bundle% "RealMapCertificates/relations/basis727.json"
theorem reductionProof727 : EqualModuloRelations reduction727.relations reduction727.input reduction727.output := by lin_cert using reduction727.terms
theorem substitutionProof727 : IsMapEvaluation generatorImages reduction727.relations [2,2,92] reduction727.output := by lin_cert using reduction727.terms
def image728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation728 : InImage map_7_80 image728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction728 : Bundle := named_bundle% "RealMapCertificates/relations/basis728.json"
theorem reductionProof728 : EqualModuloRelations reduction728.relations reduction728.input reduction728.output := by lin_cert using reduction728.terms
theorem substitutionProof728 : IsMapEvaluation generatorImages reduction728.relations [1,5,69] reduction728.output := by lin_cert using reduction728.terms
def map_7_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation754 : InImage map_7_81 image754 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction754 : Bundle := named_bundle% "RealMapCertificates/relations/basis754.json"
theorem reductionProof754 : EqualModuloRelations reduction754.relations reduction754.input reduction754.output := by lin_cert using reduction754.terms
theorem substitutionProof754 : IsMapEvaluation generatorImages reduction754.relations [0,6,69] reduction754.output := by lin_cert using reduction754.terms
def map_7_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation775 : InImage map_7_82 image775 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction775 : Bundle := named_bundle% "RealMapCertificates/relations/basis775.json"
theorem reductionProof775 : EqualModuloRelations reduction775.relations reduction775.input reduction775.output := by lin_cert using reduction775.terms
theorem substitutionProof775 : IsMapEvaluation generatorImages reduction775.relations [121] reduction775.output := by lin_cert using reduction775.terms
def map_7_83 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation795 : InImage map_7_83 image795 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction795 : Bundle := named_bundle% "RealMapCertificates/relations/basis795.json"
theorem reductionProof795 : EqualModuloRelations reduction795.relations reduction795.input reduction795.output := by lin_cert using reduction795.terms
theorem substitutionProof795 : IsMapEvaluation generatorImages reduction795.relations [3,3,76] reduction795.output := by lin_cert using reduction795.terms
def image796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation796 : InImage map_7_83 image796 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction796 : Bundle := named_bundle% "RealMapCertificates/relations/basis796.json"
theorem reductionProof796 : EqualModuloRelations reduction796.relations reduction796.input reduction796.output := by lin_cert using reduction796.terms
theorem substitutionProof796 : IsMapEvaluation generatorImages reduction796.relations [0,122] reduction796.output := by lin_cert using reduction796.terms
def map_7_84 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation825 : InImage map_7_84 image825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction825 : Bundle := named_bundle% "RealMapCertificates/relations/basis825.json"
theorem reductionProof825 : EqualModuloRelations reduction825.relations reduction825.input reduction825.output := by lin_cert using reduction825.terms
theorem substitutionProof825 : IsMapEvaluation generatorImages reduction825.relations [129] reduction825.output := by lin_cert using reduction825.terms
def image826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation826 : InImage map_7_84 image826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction826 : Bundle := named_bundle% "RealMapCertificates/relations/basis826.json"
theorem reductionProof826 : EqualModuloRelations reduction826.relations reduction826.input reduction826.output := by lin_cert using reduction826.terms
theorem substitutionProof826 : IsMapEvaluation generatorImages reduction826.relations [128] reduction826.output := by lin_cert using reduction826.terms
def image827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation827 : InImage map_7_84 image827 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction827 : Bundle := named_bundle% "RealMapCertificates/relations/basis827.json"
theorem reductionProof827 : EqualModuloRelations reduction827.relations reduction827.input reduction827.output := by lin_cert using reduction827.terms
theorem substitutionProof827 : IsMapEvaluation generatorImages reduction827.relations [1,122] reduction827.output := by lin_cert using reduction827.terms
def image828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation828 : InImage map_7_84 image828 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction828 : Bundle := named_bundle% "RealMapCertificates/relations/basis828.json"
theorem reductionProof828 : EqualModuloRelations reduction828.relations reduction828.input reduction828.output := by lin_cert using reduction828.terms
theorem substitutionProof828 : IsMapEvaluation generatorImages reduction828.relations [0,0,8,69] reduction828.output := by lin_cert using reduction828.terms
def map_7_85 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation853 : InImage map_7_85 image853 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction853 : Bundle := named_bundle% "RealMapCertificates/relations/basis853.json"
theorem reductionProof853 : EqualModuloRelations reduction853.relations reduction853.input reduction853.output := by lin_cert using reduction853.terms
theorem substitutionProof853 : IsMapEvaluation generatorImages reduction853.relations [0,130] reduction853.output := by lin_cert using reduction853.terms
def image854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation854 : InImage map_7_85 image854 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction854 : Bundle := named_bundle% "RealMapCertificates/relations/basis854.json"
theorem reductionProof854 : EqualModuloRelations reduction854.relations reduction854.input reduction854.output := by lin_cert using reduction854.terms
theorem substitutionProof854 : IsMapEvaluation generatorImages reduction854.relations [0,0,0,0,0,7,69] reduction854.output := by lin_cert using reduction854.terms
def map_7_86 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation877 : InImage map_7_86 image877 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction877 : Bundle := named_bundle% "RealMapCertificates/relations/basis877.json"
theorem reductionProof877 : EqualModuloRelations reduction877.relations reduction877.input reduction877.output := by lin_cert using reduction877.terms
theorem substitutionProof877 : IsMapEvaluation generatorImages reduction877.relations [2,122] reduction877.output := by lin_cert using reduction877.terms
def image878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation878 : InImage map_7_86 image878 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction878 : Bundle := named_bundle% "RealMapCertificates/relations/basis878.json"
theorem reductionProof878 : EqualModuloRelations reduction878.relations reduction878.input reduction878.output := by lin_cert using reduction878.terms
theorem substitutionProof878 : IsMapEvaluation generatorImages reduction878.relations [1,1,8,69] reduction878.output := by lin_cert using reduction878.terms
def map_7_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation906 : InImage map_7_87 image906 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction906 : Bundle := named_bundle% "RealMapCertificates/relations/basis906.json"
theorem reductionProof906 : EqualModuloRelations reduction906.relations reduction906.input reduction906.output := by lin_cert using reduction906.terms
theorem substitutionProof906 : IsMapEvaluation generatorImages reduction906.relations [0,0,9,69] reduction906.output := by lin_cert using reduction906.terms
def map_7_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation927 : InImage map_7_88 image927 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction927 : Bundle := named_bundle% "RealMapCertificates/relations/basis927.json"
theorem reductionProof927 : EqualModuloRelations reduction927.relations reduction927.input reduction927.output := by lin_cert using reduction927.terms
theorem substitutionProof927 : IsMapEvaluation generatorImages reduction927.relations [2,130] reduction927.output := by lin_cert using reduction927.terms
def map_7_89 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation953 : InImage map_7_89 image953 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction953 : Bundle := named_bundle% "RealMapCertificates/relations/basis953.json"
theorem reductionProof953 : EqualModuloRelations reduction953.relations reduction953.input reduction953.output := by lin_cert using reduction953.terms
theorem substitutionProof953 : IsMapEvaluation generatorImages reduction953.relations [0,7,92] reduction953.output := by lin_cert using reduction953.terms
def image954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation954 : InImage map_7_89 image954 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction954 : Bundle := named_bundle% "RealMapCertificates/relations/basis954.json"
theorem reductionProof954 : EqualModuloRelations reduction954.relations reduction954.input reduction954.output := by lin_cert using reduction954.terms
theorem substitutionProof954 : IsMapEvaluation generatorImages reduction954.relations [0,2,131] reduction954.output := by lin_cert using reduction954.terms
def map_7_90 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation986 : InImage map_7_90 image986 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction986 : Bundle := named_bundle% "RealMapCertificates/relations/basis986.json"
theorem reductionProof986 : EqualModuloRelations reduction986.relations reduction986.input reduction986.output := by lin_cert using reduction986.terms
theorem substitutionProof986 : IsMapEvaluation generatorImages reduction986.relations [1,7,92] reduction986.output := by lin_cert using reduction986.terms
def image987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation987 : InImage map_7_90 image987 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction987 : Bundle := named_bundle% "RealMapCertificates/relations/basis987.json"
theorem reductionProof987 : EqualModuloRelations reduction987.relations reduction987.input reduction987.output := by lin_cert using reduction987.terms
theorem substitutionProof987 : IsMapEvaluation generatorImages reduction987.relations [0,0,13,69] reduction987.output := by lin_cert using reduction987.terms
def map_7_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1012 : InImage map_7_91 image1012 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1012 : Bundle := named_bundle% "RealMapCertificates/relations/basis1012.json"
theorem reductionProof1012 : EqualModuloRelations reduction1012.relations reduction1012.input reduction1012.output := by lin_cert using reduction1012.terms
theorem substitutionProof1012 : IsMapEvaluation generatorImages reduction1012.relations [0,0,0,142] reduction1012.output := by lin_cert using reduction1012.terms
def map_7_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1034 : InImage map_7_92 image1034 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1034 : Bundle := named_bundle% "RealMapCertificates/relations/basis1034.json"
theorem reductionProof1034 : EqualModuloRelations reduction1034.relations reduction1034.input reduction1034.output := by lin_cert using reduction1034.terms
theorem substitutionProof1034 : IsMapEvaluation generatorImages reduction1034.relations [0,0,0,0,143] reduction1034.output := by lin_cert using reduction1034.terms
def map_7_93 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1065 : InImage map_7_93 image1065 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1065 : Bundle := named_bundle% "RealMapCertificates/relations/basis1065.json"
theorem reductionProof1065 : EqualModuloRelations reduction1065.relations reduction1065.input reduction1065.output := by lin_cert using reduction1065.terms
theorem substitutionProof1065 : IsMapEvaluation generatorImages reduction1065.relations [1,148] reduction1065.output := by lin_cert using reduction1065.terms
def image1066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1066 : InImage map_7_93 image1066 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1066 : Bundle := named_bundle% "RealMapCertificates/relations/basis1066.json"
theorem reductionProof1066 : EqualModuloRelations reduction1066.relations reduction1066.input reduction1066.output := by lin_cert using reduction1066.terms
theorem substitutionProof1066 : IsMapEvaluation generatorImages reduction1066.relations [0,2,13,69] reduction1066.output := by lin_cert using reduction1066.terms
def map_7_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1090 : InImage map_7_94 image1090 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1090 : Bundle := named_bundle% "RealMapCertificates/relations/basis1090.json"
theorem reductionProof1090 : EqualModuloRelations reduction1090.relations reduction1090.input reduction1090.output := by lin_cert using reduction1090.terms
theorem substitutionProof1090 : IsMapEvaluation generatorImages reduction1090.relations [158] reduction1090.output := by lin_cert using reduction1090.terms
def map_7_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1139 : InImage map_7_96 image1139 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1139 : Bundle := named_bundle% "RealMapCertificates/relations/basis1139.json"
theorem reductionProof1139 : EqualModuloRelations reduction1139.relations reduction1139.input reduction1139.output := by lin_cert using reduction1139.terms
theorem substitutionProof1139 : IsMapEvaluation generatorImages reduction1139.relations [2,2,13,69] reduction1139.output := by lin_cert using reduction1139.terms
def map_7_99 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1211 : InImage map_7_99 image1211 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1211 : Bundle := named_bundle% "RealMapCertificates/relations/basis1211.json"
theorem reductionProof1211 : EqualModuloRelations reduction1211.relations reduction1211.input reduction1211.output := by lin_cert using reduction1211.terms
theorem substitutionProof1211 : IsMapEvaluation generatorImages reduction1211.relations [1,7,7,70] reduction1211.output := by lin_cert using reduction1211.terms
def image1212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1212 : InImage map_7_99 image1212 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1212 : Bundle := named_bundle% "RealMapCertificates/relations/basis1212.json"
theorem reductionProof1212 : EqualModuloRelations reduction1212.relations reduction1212.input reduction1212.output := by lin_cert using reduction1212.terms
theorem substitutionProof1212 : IsMapEvaluation generatorImages reduction1212.relations [0,0,0,163] reduction1212.output := by lin_cert using reduction1212.terms
def map_7_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1241 : InImage map_7_100 image1241 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1241 : Bundle := named_bundle% "RealMapCertificates/relations/basis1241.json"
theorem reductionProof1241 : EqualModuloRelations reduction1241.relations reduction1241.input reduction1241.output := by lin_cert using reduction1241.terms
theorem substitutionProof1241 : IsMapEvaluation generatorImages reduction1241.relations [23,69] reduction1241.output := by lin_cert using reduction1241.terms
def map_7_102 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1309 : InImage map_7_102 image1309 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1309 : Bundle := named_bundle% "RealMapCertificates/relations/basis1309.json"
theorem reductionProof1309 : EqualModuloRelations reduction1309.relations reduction1309.input reduction1309.output := by lin_cert using reduction1309.terms
theorem substitutionProof1309 : IsMapEvaluation generatorImages reduction1309.relations [191] reduction1309.output := by lin_cert using reduction1309.terms
def image1310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1310 : InImage map_7_102 image1310 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1310 : Bundle := named_bundle% "RealMapCertificates/relations/basis1310.json"
theorem reductionProof1310 : EqualModuloRelations reduction1310.relations reduction1310.input reduction1310.output := by lin_cert using reduction1310.terms
theorem substitutionProof1310 : IsMapEvaluation generatorImages reduction1310.relations [28,69] reduction1310.output := by lin_cert using reduction1310.terms
def map_7_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1368 : InImage map_7_104 image1368 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1368 : Bundle := named_bundle% "RealMapCertificates/relations/basis1368.json"
theorem reductionProof1368 : EqualModuloRelations reduction1368.relations reduction1368.input reduction1368.output := by lin_cert using reduction1368.terms
theorem substitutionProof1368 : IsMapEvaluation generatorImages reduction1368.relations [198] reduction1368.output := by lin_cert using reduction1368.terms
def image1369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1369 : InImage map_7_104 image1369 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1369 : Bundle := named_bundle% "RealMapCertificates/relations/basis1369.json"
theorem reductionProof1369 : EqualModuloRelations reduction1369.relations reduction1369.input reduction1369.output := by lin_cert using reduction1369.terms
theorem substitutionProof1369 : IsMapEvaluation generatorImages reduction1369.relations [2,24,69] reduction1369.output := by lin_cert using reduction1369.terms
def map_7_106 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1440 : InImage map_7_106 image1440 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1440 : Bundle := named_bundle% "RealMapCertificates/relations/basis1440.json"
theorem reductionProof1440 : EqualModuloRelations reduction1440.relations reduction1440.input reduction1440.output := by lin_cert using reduction1440.terms
theorem substitutionProof1440 : IsMapEvaluation generatorImages reduction1440.relations [204] reduction1440.output := by lin_cert using reduction1440.terms
def image1441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1441 : InImage map_7_106 image1441 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1441 : Bundle := named_bundle% "RealMapCertificates/relations/basis1441.json"
theorem reductionProof1441 : EqualModuloRelations reduction1441.relations reduction1441.input reduction1441.output := by lin_cert using reduction1441.terms
theorem substitutionProof1441 : IsMapEvaluation generatorImages reduction1441.relations [203] reduction1441.output := by lin_cert using reduction1441.terms
def image1442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1442 : InImage map_7_106 image1442 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1442 : Bundle := named_bundle% "RealMapCertificates/relations/basis1442.json"
theorem reductionProof1442 : EqualModuloRelations reduction1442.relations reduction1442.input reduction1442.output := by lin_cert using reduction1442.terms
theorem substitutionProof1442 : IsMapEvaluation generatorImages reduction1442.relations [33,69] reduction1442.output := by lin_cert using reduction1442.terms
def map_7_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1467 : InImage map_7_107 image1467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1467 : Bundle := named_bundle% "RealMapCertificates/relations/basis1467.json"
theorem reductionProof1467 : EqualModuloRelations reduction1467.relations reduction1467.input reduction1467.output := by lin_cert using reduction1467.terms
theorem substitutionProof1467 : IsMapEvaluation generatorImages reduction1467.relations [0,34,69] reduction1467.output := by lin_cert using reduction1467.terms
def map_7_108 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1514 : InImage map_7_108 image1514 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1514 : Bundle := named_bundle% "RealMapCertificates/relations/basis1514.json"
theorem reductionProof1514 : EqualModuloRelations reduction1514.relations reduction1514.input reduction1514.output := by lin_cert using reduction1514.terms
theorem substitutionProof1514 : IsMapEvaluation generatorImages reduction1514.relations [214] reduction1514.output := by lin_cert using reduction1514.terms
def image1515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1515 : InImage map_7_108 image1515 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1515 : Bundle := named_bundle% "RealMapCertificates/relations/basis1515.json"
theorem reductionProof1515 : EqualModuloRelations reduction1515.relations reduction1515.input reduction1515.output := by lin_cert using reduction1515.terms
theorem substitutionProof1515 : IsMapEvaluation generatorImages reduction1515.relations [36,69] reduction1515.output := by lin_cert using reduction1515.terms
def image1516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1516 : InImage map_7_108 image1516 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1516 : Bundle := named_bundle% "RealMapCertificates/relations/basis1516.json"
theorem reductionProof1516 : EqualModuloRelations reduction1516.relations reduction1516.input reduction1516.output := by lin_cert using reduction1516.terms
theorem substitutionProof1516 : IsMapEvaluation generatorImages reduction1516.relations [1,34,69] reduction1516.output := by lin_cert using reduction1516.terms
def map_7_110 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1585 : InImage map_7_110 image1585 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1585 : Bundle := named_bundle% "RealMapCertificates/relations/basis1585.json"
theorem reductionProof1585 : EqualModuloRelations reduction1585.relations reduction1585.input reduction1585.output := by lin_cert using reduction1585.terms
theorem substitutionProof1585 : IsMapEvaluation generatorImages reduction1585.relations [222] reduction1585.output := by lin_cert using reduction1585.terms
def image1586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1586 : InImage map_7_110 image1586 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1586 : Bundle := named_bundle% "RealMapCertificates/relations/basis1586.json"
theorem reductionProof1586 : EqualModuloRelations reduction1586.relations reduction1586.input reduction1586.output := by lin_cert using reduction1586.terms
theorem substitutionProof1586 : IsMapEvaluation generatorImages reduction1586.relations [0,0,37,69] reduction1586.output := by lin_cert using reduction1586.terms
def map_7_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1664 : InImage map_7_112 image1664 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1664 : Bundle := named_bundle% "RealMapCertificates/relations/basis1664.json"
theorem reductionProof1664 : EqualModuloRelations reduction1664.relations reduction1664.input reduction1664.output := by lin_cert using reduction1664.terms
theorem substitutionProof1664 : IsMapEvaluation generatorImages reduction1664.relations [230] reduction1664.output := by lin_cert using reduction1664.terms
def map_7_114 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1735 : InImage map_7_114 image1735 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1735 : Bundle := named_bundle% "RealMapCertificates/relations/basis1735.json"
theorem reductionProof1735 : EqualModuloRelations reduction1735.relations reduction1735.input reduction1735.output := by lin_cert using reduction1735.terms
theorem substitutionProof1735 : IsMapEvaluation generatorImages reduction1735.relations [240] reduction1735.output := by lin_cert using reduction1735.terms
def image1736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1736 : InImage map_7_114 image1736 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1736 : Bundle := named_bundle% "RealMapCertificates/relations/basis1736.json"
theorem reductionProof1736 : EqualModuloRelations reduction1736.relations reduction1736.input reduction1736.output := by lin_cert using reduction1736.terms
theorem substitutionProof1736 : IsMapEvaluation generatorImages reduction1736.relations [0,0,7,163] reduction1736.output := by lin_cert using reduction1736.terms
def map_7_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1767 : InImage map_7_115 image1767 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1767 : Bundle := named_bundle% "RealMapCertificates/relations/basis1767.json"
theorem reductionProof1767 : EqualModuloRelations reduction1767.relations reduction1767.input reduction1767.output := by lin_cert using reduction1767.terms
theorem substitutionProof1767 : IsMapEvaluation generatorImages reduction1767.relations [0,241] reduction1767.output := by lin_cert using reduction1767.terms
def map_7_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1843 : InImage map_7_117 image1843 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1843 : Bundle := named_bundle% "RealMapCertificates/relations/basis1843.json"
theorem reductionProof1843 : EqualModuloRelations reduction1843.relations reduction1843.input reduction1843.output := by lin_cert using reduction1843.terms
theorem substitutionProof1843 : IsMapEvaluation generatorImages reduction1843.relations [0,2,7,163] reduction1843.output := by lin_cert using reduction1843.terms
def map_7_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1914 : InImage map_7_119 image1914 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1914 : Bundle := named_bundle% "RealMapCertificates/relations/basis1914.json"
theorem reductionProof1914 : EqualModuloRelations reduction1914.relations reduction1914.input reduction1914.output := by lin_cert using reduction1914.terms
theorem substitutionProof1914 : IsMapEvaluation generatorImages reduction1914.relations [264] reduction1914.output := by lin_cert using reduction1914.terms
def map_7_120 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1967 : InImage map_7_120 image1967 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1967 : Bundle := named_bundle% "RealMapCertificates/relations/basis1967.json"
theorem reductionProof1967 : EqualModuloRelations reduction1967.relations reduction1967.input reduction1967.output := by lin_cert using reduction1967.terms
theorem substitutionProof1967 : IsMapEvaluation generatorImages reduction1967.relations [54,69] reduction1967.output := by lin_cert using reduction1967.terms
def image1968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1968 : InImage map_7_120 image1968 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1968 : Bundle := named_bundle% "RealMapCertificates/relations/basis1968.json"
theorem reductionProof1968 : EqualModuloRelations reduction1968.relations reduction1968.input reduction1968.output := by lin_cert using reduction1968.terms
theorem substitutionProof1968 : IsMapEvaluation generatorImages reduction1968.relations [3,231] reduction1968.output := by lin_cert using reduction1968.terms
end RealMapCertificates
