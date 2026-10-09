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
  | 13 => [[9]]
  | 18 => []
  | 23 => [[7,7]]
  | 24 => []
  | 28 => []
  | 33 => []
  | 34 => []
  | 36 => []
  | 68 => []
  | 69 => []
  | 75 => []
  | 76 => []
  | 93 => []
  | 273 => []
  | 323 => []
  | 324 => []
  | 339 => []
  | 340 => []
  | 353 => []
  | 368 => []
  | 377 => []
  | 378 => []
  | 396 => []
  | 397 => []
  | 398 => []
  | 399 => []
  | 400 => []
  | 430 => []
  | 446 => []
  | 467 => []
  | 505 => []
  | 506 => []
  | 507 => []
  | 508 => []
  | 525 => []
  | 526 => []
  | 584 => []
  | 592 => []
  | 593 => []
  | 605 => []
  | 617 => []
  | 660 => []
  | 698 => []
  | 699 => []
  | 747 => []
  | 748 => []
  | 749 => []
  | 750 => []
  | 751 => []
  | _ => []
def map_7_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2125 : InImage map_7_124 image2125 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2125 : Bundle := named_bundle% "RealMapCertificates/relations/basis2125.json"
theorem reductionProof2125 : EqualModuloRelations reduction2125.relations reduction2125.input reduction2125.output := by lin_cert using reduction2125.terms
theorem substitutionProof2125 : IsMapEvaluation generatorImages reduction2125.relations [2,273] reduction2125.output := by lin_cert using reduction2125.terms
def map_7_128 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2312 : InImage map_7_128 image2312 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2312 : Bundle := named_bundle% "RealMapCertificates/relations/basis2312.json"
theorem reductionProof2312 : EqualModuloRelations reduction2312.relations reduction2312.input reduction2312.output := by lin_cert using reduction2312.terms
theorem substitutionProof2312 : IsMapEvaluation generatorImages reduction2312.relations [323] reduction2312.output := by lin_cert using reduction2312.terms
def image2313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2313 : InImage map_7_128 image2313 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2313 : Bundle := named_bundle% "RealMapCertificates/relations/basis2313.json"
theorem reductionProof2313 : EqualModuloRelations reduction2313.relations reduction2313.input reduction2313.output := by lin_cert using reduction2313.terms
theorem substitutionProof2313 : IsMapEvaluation generatorImages reduction2313.relations [68,69] reduction2313.output := by lin_cert using reduction2313.terms
def map_7_131 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2489 : InImage map_7_131 image2489 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2489 : Bundle := named_bundle% "RealMapCertificates/relations/basis2489.json"
theorem reductionProof2489 : EqualModuloRelations reduction2489.relations reduction2489.input reduction2489.output := by lin_cert using reduction2489.terms
theorem substitutionProof2489 : IsMapEvaluation generatorImages reduction2489.relations [353] reduction2489.output := by lin_cert using reduction2489.terms
def image2490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2490 : InImage map_7_131 image2490 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2490 : Bundle := named_bundle% "RealMapCertificates/relations/basis2490.json"
theorem reductionProof2490 : EqualModuloRelations reduction2490.relations reduction2490.input reduction2490.output := by lin_cert using reduction2490.terms
theorem substitutionProof2490 : IsMapEvaluation generatorImages reduction2490.relations [69,75] reduction2490.output := by lin_cert using reduction2490.terms
def image2491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2491 : InImage map_7_131 image2491 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2491 : Bundle := named_bundle% "RealMapCertificates/relations/basis2491.json"
theorem reductionProof2491 : EqualModuloRelations reduction2491.relations reduction2491.input reduction2491.output := by lin_cert using reduction2491.terms
theorem substitutionProof2491 : IsMapEvaluation generatorImages reduction2491.relations [0,339] reduction2491.output := by lin_cert using reduction2491.terms
def map_7_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2572 : InImage map_7_132 image2572 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2572 : Bundle := named_bundle% "RealMapCertificates/relations/basis2572.json"
theorem reductionProof2572 : EqualModuloRelations reduction2572.relations reduction2572.input reduction2572.output := by lin_cert using reduction2572.terms
theorem substitutionProof2572 : IsMapEvaluation generatorImages reduction2572.relations [0,0,340] reduction2572.output := by lin_cert using reduction2572.terms
def map_7_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2631 : InImage map_7_133 image2631 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2631 : Bundle := named_bundle% "RealMapCertificates/relations/basis2631.json"
theorem reductionProof2631 : EqualModuloRelations reduction2631.relations reduction2631.input reduction2631.output := by lin_cert using reduction2631.terms
theorem substitutionProof2631 : IsMapEvaluation generatorImages reduction2631.relations [1,69,76] reduction2631.output := by lin_cert using reduction2631.terms
def image2632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2632 : InImage map_7_133 image2632 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2632 : Bundle := named_bundle% "RealMapCertificates/relations/basis2632.json"
theorem reductionProof2632 : EqualModuloRelations reduction2632.relations reduction2632.input reduction2632.output := by lin_cert using reduction2632.terms
theorem substitutionProof2632 : IsMapEvaluation generatorImages reduction2632.relations [0,0,0,0,0,69,69] reduction2632.output := by lin_cert using reduction2632.terms
def map_7_134 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2706 : InImage map_7_134 image2706 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2706 : Bundle := named_bundle% "RealMapCertificates/relations/basis2706.json"
theorem reductionProof2706 : EqualModuloRelations reduction2706.relations reduction2706.input reduction2706.output := by lin_cert using reduction2706.terms
theorem substitutionProof2706 : IsMapEvaluation generatorImages reduction2706.relations [397] reduction2706.output := by lin_cert using reduction2706.terms
def image2707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2707 : InImage map_7_134 image2707 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2707 : Bundle := named_bundle% "RealMapCertificates/relations/basis2707.json"
theorem reductionProof2707 : EqualModuloRelations reduction2707.relations reduction2707.input reduction2707.output := by lin_cert using reduction2707.terms
theorem substitutionProof2707 : IsMapEvaluation generatorImages reduction2707.relations [396] reduction2707.output := by lin_cert using reduction2707.terms
def image2708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2708 : InImage map_7_134 image2708 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2708 : Bundle := named_bundle% "RealMapCertificates/relations/basis2708.json"
theorem reductionProof2708 : EqualModuloRelations reduction2708.relations reduction2708.input reduction2708.output := by lin_cert using reduction2708.terms
theorem substitutionProof2708 : IsMapEvaluation generatorImages reduction2708.relations [1,368] reduction2708.output := by lin_cert using reduction2708.terms
def image2709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2709 : InImage map_7_134 image2709 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2709 : Bundle := named_bundle% "RealMapCertificates/relations/basis2709.json"
theorem reductionProof2709 : EqualModuloRelations reduction2709.relations reduction2709.input reduction2709.output := by lin_cert using reduction2709.terms
theorem substitutionProof2709 : IsMapEvaluation generatorImages reduction2709.relations [0,377] reduction2709.output := by lin_cert using reduction2709.terms
def image2710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2710 : InImage map_7_134 image2710 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2710 : Bundle := named_bundle% "RealMapCertificates/relations/basis2710.json"
theorem reductionProof2710 : EqualModuloRelations reduction2710.relations reduction2710.input reduction2710.output := by lin_cert using reduction2710.terms
theorem substitutionProof2710 : IsMapEvaluation generatorImages reduction2710.relations [0,0,0,0,0,0,324] reduction2710.output := by lin_cert using reduction2710.terms
def map_7_135 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2801 : InImage map_7_135 image2801 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2801 : Bundle := named_bundle% "RealMapCertificates/relations/basis2801.json"
theorem reductionProof2801 : EqualModuloRelations reduction2801.relations reduction2801.input reduction2801.output := by lin_cert using reduction2801.terms
theorem substitutionProof2801 : IsMapEvaluation generatorImages reduction2801.relations [2,69,76] reduction2801.output := by lin_cert using reduction2801.terms
def image2802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2802 : InImage map_7_135 image2802 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2802 : Bundle := named_bundle% "RealMapCertificates/relations/basis2802.json"
theorem reductionProof2802 : EqualModuloRelations reduction2802.relations reduction2802.input reduction2802.output := by lin_cert using reduction2802.terms
theorem substitutionProof2802 : IsMapEvaluation generatorImages reduction2802.relations [0,398] reduction2802.output := by lin_cert using reduction2802.terms
def image2803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2803 : InImage map_7_135 image2803 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2803 : Bundle := named_bundle% "RealMapCertificates/relations/basis2803.json"
theorem reductionProof2803 : EqualModuloRelations reduction2803.relations reduction2803.input reduction2803.output := by lin_cert using reduction2803.terms
theorem substitutionProof2803 : IsMapEvaluation generatorImages reduction2803.relations [0,0,378] reduction2803.output := by lin_cert using reduction2803.terms
def map_7_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2866 : InImage map_7_136 image2866 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2866 : Bundle := named_bundle% "RealMapCertificates/relations/basis2866.json"
theorem reductionProof2866 : EqualModuloRelations reduction2866.relations reduction2866.input reduction2866.output := by lin_cert using reduction2866.terms
theorem substitutionProof2866 : IsMapEvaluation generatorImages reduction2866.relations [2,368] reduction2866.output := by lin_cert using reduction2866.terms
def map_7_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2940 : InImage map_7_137 image2940 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2940 : Bundle := named_bundle% "RealMapCertificates/relations/basis2940.json"
theorem reductionProof2940 : EqualModuloRelations reduction2940.relations reduction2940.input reduction2940.output := by lin_cert using reduction2940.terms
theorem substitutionProof2940 : IsMapEvaluation generatorImages reduction2940.relations [430] reduction2940.output := by lin_cert using reduction2940.terms
def map_7_138 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3032 : InImage map_7_138 image3032 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3032 : Bundle := named_bundle% "RealMapCertificates/relations/basis3032.json"
theorem reductionProof3032 : EqualModuloRelations reduction3032.relations reduction3032.input reduction3032.output := by lin_cert using reduction3032.terms
theorem substitutionProof3032 : IsMapEvaluation generatorImages reduction3032.relations [3,339] reduction3032.output := by lin_cert using reduction3032.terms
def image3033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3033 : InImage map_7_138 image3033 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3033 : Bundle := named_bundle% "RealMapCertificates/relations/basis3033.json"
theorem reductionProof3033 : EqualModuloRelations reduction3033.relations reduction3033.input reduction3033.output := by lin_cert using reduction3033.terms
theorem substitutionProof3033 : IsMapEvaluation generatorImages reduction3033.relations [2,398] reduction3033.output := by lin_cert using reduction3033.terms
def map_7_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3101 : InImage map_7_139 image3101 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3101 : Bundle := named_bundle% "RealMapCertificates/relations/basis3101.json"
theorem reductionProof3101 : EqualModuloRelations reduction3101.relations reduction3101.input reduction3101.output := by lin_cert using reduction3101.terms
theorem substitutionProof3101 : IsMapEvaluation generatorImages reduction3101.relations [3,69,76] reduction3101.output := by lin_cert using reduction3101.terms
def image3102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3102 : InImage map_7_139 image3102 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3102 : Bundle := named_bundle% "RealMapCertificates/relations/basis3102.json"
theorem reductionProof3102 : EqualModuloRelations reduction3102.relations reduction3102.input reduction3102.output := by lin_cert using reduction3102.terms
theorem substitutionProof3102 : IsMapEvaluation generatorImages reduction3102.relations [0,446] reduction3102.output := by lin_cert using reduction3102.terms
def image3103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3103 : InImage map_7_139 image3103 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3103 : Bundle := named_bundle% "RealMapCertificates/relations/basis3103.json"
theorem reductionProof3103 : EqualModuloRelations reduction3103.relations reduction3103.input reduction3103.output := by lin_cert using reduction3103.terms
theorem substitutionProof3103 : IsMapEvaluation generatorImages reduction3103.relations [0,3,340] reduction3103.output := by lin_cert using reduction3103.terms
def map_7_140 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3190 : InImage map_7_140 image3190 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3190 : Bundle := named_bundle% "RealMapCertificates/relations/basis3190.json"
theorem reductionProof3190 : EqualModuloRelations reduction3190.relations reduction3190.input reduction3190.output := by lin_cert using reduction3190.terms
theorem substitutionProof3190 : IsMapEvaluation generatorImages reduction3190.relations [467] reduction3190.output := by lin_cert using reduction3190.terms
def image3191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3191 : InImage map_7_140 image3191 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3191 : Bundle := named_bundle% "RealMapCertificates/relations/basis3191.json"
theorem reductionProof3191 : EqualModuloRelations reduction3191.relations reduction3191.input reduction3191.output := by lin_cert using reduction3191.terms
theorem substitutionProof3191 : IsMapEvaluation generatorImages reduction3191.relations [3,368] reduction3191.output := by lin_cert using reduction3191.terms
def image3192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3192 : InImage map_7_140 image3192 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3192 : Bundle := named_bundle% "RealMapCertificates/relations/basis3192.json"
theorem reductionProof3192 : EqualModuloRelations reduction3192.relations reduction3192.input reduction3192.output := by lin_cert using reduction3192.terms
theorem substitutionProof3192 : IsMapEvaluation generatorImages reduction3192.relations [1,446] reduction3192.output := by lin_cert using reduction3192.terms
def map_7_141 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3282 : InImage map_7_141 image3282 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3282 : Bundle := named_bundle% "RealMapCertificates/relations/basis3282.json"
theorem reductionProof3282 : EqualModuloRelations reduction3282.relations reduction3282.input reduction3282.output := by lin_cert using reduction3282.terms
theorem substitutionProof3282 : IsMapEvaluation generatorImages reduction3282.relations [3,377] reduction3282.output := by lin_cert using reduction3282.terms
def map_7_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3355 : InImage map_7_142 image3355 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3355 : Bundle := named_bundle% "RealMapCertificates/relations/basis3355.json"
theorem reductionProof3355 : EqualModuloRelations reduction3355.relations reduction3355.input reduction3355.output := by lin_cert using reduction3355.terms
theorem substitutionProof3355 : IsMapEvaluation generatorImages reduction3355.relations [5,69,69] reduction3355.output := by lin_cert using reduction3355.terms
def image3356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3356 : InImage map_7_142 image3356 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3356 : Bundle := named_bundle% "RealMapCertificates/relations/basis3356.json"
theorem reductionProof3356 : EqualModuloRelations reduction3356.relations reduction3356.input reduction3356.output := by lin_cert using reduction3356.terms
theorem substitutionProof3356 : IsMapEvaluation generatorImages reduction3356.relations [3,399] reduction3356.output := by lin_cert using reduction3356.terms
def image3357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3357 : InImage map_7_142 image3357 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3357 : Bundle := named_bundle% "RealMapCertificates/relations/basis3357.json"
theorem reductionProof3357 : EqualModuloRelations reduction3357.relations reduction3357.input reduction3357.output := by lin_cert using reduction3357.terms
theorem substitutionProof3357 : IsMapEvaluation generatorImages reduction3357.relations [3,398] reduction3357.output := by lin_cert using reduction3357.terms
def image3358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3358 : InImage map_7_142 image3358 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3358 : Bundle := named_bundle% "RealMapCertificates/relations/basis3358.json"
theorem reductionProof3358 : EqualModuloRelations reduction3358.relations reduction3358.input reduction3358.output := by lin_cert using reduction3358.terms
theorem substitutionProof3358 : IsMapEvaluation generatorImages reduction3358.relations [0,3,378] reduction3358.output := by lin_cert using reduction3358.terms
def map_7_144 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3526 : InImage map_7_144 image3526 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3526 : Bundle := named_bundle% "RealMapCertificates/relations/basis3526.json"
theorem reductionProof3526 : EqualModuloRelations reduction3526.relations reduction3526.input reduction3526.output := by lin_cert using reduction3526.terms
theorem substitutionProof3526 : IsMapEvaluation generatorImages reduction3526.relations [6,69,69] reduction3526.output := by lin_cert using reduction3526.terms
def image3527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3527 : InImage map_7_144 image3527 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3527 : Bundle := named_bundle% "RealMapCertificates/relations/basis3527.json"
theorem reductionProof3527 : EqualModuloRelations reduction3527.relations reduction3527.input reduction3527.output := by lin_cert using reduction3527.terms
theorem substitutionProof3527 : IsMapEvaluation generatorImages reduction3527.relations [3,69,93] reduction3527.output := by lin_cert using reduction3527.terms
def image3528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3528 : InImage map_7_144 image3528 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3528 : Bundle := named_bundle% "RealMapCertificates/relations/basis3528.json"
theorem reductionProof3528 : EqualModuloRelations reduction3528.relations reduction3528.input reduction3528.output := by lin_cert using reduction3528.terms
theorem substitutionProof3528 : IsMapEvaluation generatorImages reduction3528.relations [1,5,324] reduction3528.output := by lin_cert using reduction3528.terms
def map_7_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3594 : InImage map_7_145 image3594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3594 : Bundle := named_bundle% "RealMapCertificates/relations/basis3594.json"
theorem reductionProof3594 : EqualModuloRelations reduction3594.relations reduction3594.input reduction3594.output := by lin_cert using reduction3594.terms
theorem substitutionProof3594 : IsMapEvaluation generatorImages reduction3594.relations [0,505] reduction3594.output := by lin_cert using reduction3594.terms
def image3595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3595 : InImage map_7_145 image3595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3595 : Bundle := named_bundle% "RealMapCertificates/relations/basis3595.json"
theorem reductionProof3595 : EqualModuloRelations reduction3595.relations reduction3595.input reduction3595.output := by lin_cert using reduction3595.terms
theorem substitutionProof3595 : IsMapEvaluation generatorImages reduction3595.relations [0,6,324] reduction3595.output := by lin_cert using reduction3595.terms
def map_7_146 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3684 : InImage map_7_146 image3684 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3684 : Bundle := named_bundle% "RealMapCertificates/relations/basis3684.json"
theorem reductionProof3684 : EqualModuloRelations reduction3684.relations reduction3684.input reduction3684.output := by lin_cert using reduction3684.terms
theorem substitutionProof3684 : IsMapEvaluation generatorImages reduction3684.relations [525] reduction3684.output := by lin_cert using reduction3684.terms
def image3685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3685 : InImage map_7_146 image3685 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3685 : Bundle := named_bundle% "RealMapCertificates/relations/basis3685.json"
theorem reductionProof3685 : EqualModuloRelations reduction3685.relations reduction3685.input reduction3685.output := by lin_cert using reduction3685.terms
theorem substitutionProof3685 : IsMapEvaluation generatorImages reduction3685.relations [1,505] reduction3685.output := by lin_cert using reduction3685.terms
def image3686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3686 : InImage map_7_146 image3686 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3686 : Bundle := named_bundle% "RealMapCertificates/relations/basis3686.json"
theorem reductionProof3686 : EqualModuloRelations reduction3686.relations reduction3686.input reduction3686.output := by lin_cert using reduction3686.terms
theorem substitutionProof3686 : IsMapEvaluation generatorImages reduction3686.relations [0,0,507] reduction3686.output := by lin_cert using reduction3686.terms
def image3687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3687 : InImage map_7_146 image3687 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3687 : Bundle := named_bundle% "RealMapCertificates/relations/basis3687.json"
theorem reductionProof3687 : EqualModuloRelations reduction3687.relations reduction3687.input reduction3687.output := by lin_cert using reduction3687.terms
theorem substitutionProof3687 : IsMapEvaluation generatorImages reduction3687.relations [0,0,506] reduction3687.output := by lin_cert using reduction3687.terms
def map_7_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3789 : InImage map_7_147 image3789 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3789 : Bundle := named_bundle% "RealMapCertificates/relations/basis3789.json"
theorem reductionProof3789 : EqualModuloRelations reduction3789.relations reduction3789.input reduction3789.output := by lin_cert using reduction3789.terms
theorem substitutionProof3789 : IsMapEvaluation generatorImages reduction3789.relations [0,8,69,69] reduction3789.output := by lin_cert using reduction3789.terms
def image3790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3790 : InImage map_7_147 image3790 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3790 : Bundle := named_bundle% "RealMapCertificates/relations/basis3790.json"
theorem reductionProof3790 : EqualModuloRelations reduction3790.relations reduction3790.input reduction3790.output := by lin_cert using reduction3790.terms
theorem substitutionProof3790 : IsMapEvaluation generatorImages reduction3790.relations [0,0,0,508] reduction3790.output := by lin_cert using reduction3790.terms
def map_7_148 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3860 : InImage map_7_148 image3860 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3860 : Bundle := named_bundle% "RealMapCertificates/relations/basis3860.json"
theorem reductionProof3860 : EqualModuloRelations reduction3860.relations reduction3860.input reduction3860.output := by lin_cert using reduction3860.terms
theorem substitutionProof3860 : IsMapEvaluation generatorImages reduction3860.relations [7,368] reduction3860.output := by lin_cert using reduction3860.terms
def image3861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3861 : InImage map_7_148 image3861 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3861 : Bundle := named_bundle% "RealMapCertificates/relations/basis3861.json"
theorem reductionProof3861 : EqualModuloRelations reduction3861.relations reduction3861.input reduction3861.output := by lin_cert using reduction3861.terms
theorem substitutionProof3861 : IsMapEvaluation generatorImages reduction3861.relations [1,8,69,69] reduction3861.output := by lin_cert using reduction3861.terms
def image3862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3862 : InImage map_7_148 image3862 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3862 : Bundle := named_bundle% "RealMapCertificates/relations/basis3862.json"
theorem reductionProof3862 : EqualModuloRelations reduction3862.relations reduction3862.input reduction3862.output := by lin_cert using reduction3862.terms
theorem substitutionProof3862 : IsMapEvaluation generatorImages reduction3862.relations [1,1,506] reduction3862.output := by lin_cert using reduction3862.terms
def image3863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3863 : InImage map_7_148 image3863 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3863 : Bundle := named_bundle% "RealMapCertificates/relations/basis3863.json"
theorem reductionProof3863 : EqualModuloRelations reduction3863.relations reduction3863.input reduction3863.output := by lin_cert using reduction3863.terms
theorem substitutionProof3863 : IsMapEvaluation generatorImages reduction3863.relations [0,0,526] reduction3863.output := by lin_cert using reduction3863.terms
def image3864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3864 : InImage map_7_148 image3864 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3864 : Bundle := named_bundle% "RealMapCertificates/relations/basis3864.json"
theorem reductionProof3864 : EqualModuloRelations reduction3864.relations reduction3864.input reduction3864.output := by lin_cert using reduction3864.terms
theorem substitutionProof3864 : IsMapEvaluation generatorImages reduction3864.relations [0,0,8,324] reduction3864.output := by lin_cert using reduction3864.terms
def map_7_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3942 : InImage map_7_149 image3942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3942 : Bundle := named_bundle% "RealMapCertificates/relations/basis3942.json"
theorem reductionProof3942 : EqualModuloRelations reduction3942.relations reduction3942.input reduction3942.output := by lin_cert using reduction3942.terms
theorem substitutionProof3942 : IsMapEvaluation generatorImages reduction3942.relations [0,2,506] reduction3942.output := by lin_cert using reduction3942.terms
def image3943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3943 : InImage map_7_149 image3943 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3943 : Bundle := named_bundle% "RealMapCertificates/relations/basis3943.json"
theorem reductionProof3943 : EqualModuloRelations reduction3943.relations reduction3943.input reduction3943.output := by lin_cert using reduction3943.terms
theorem substitutionProof3943 : IsMapEvaluation generatorImages reduction3943.relations [0,0,0,0,0,7,324] reduction3943.output := by lin_cert using reduction3943.terms
def map_7_150 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4059 : InImage map_7_150 image4059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4059 : Bundle := named_bundle% "RealMapCertificates/relations/basis4059.json"
theorem reductionProof4059 : EqualModuloRelations reduction4059.relations reduction4059.input reduction4059.output := by lin_cert using reduction4059.terms
theorem substitutionProof4059 : IsMapEvaluation generatorImages reduction4059.relations [7,398] reduction4059.output := by lin_cert using reduction4059.terms
def image4060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4060 : InImage map_7_150 image4060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4060 : Bundle := named_bundle% "RealMapCertificates/relations/basis4060.json"
theorem reductionProof4060 : EqualModuloRelations reduction4060.relations reduction4060.input reduction4060.output := by lin_cert using reduction4060.terms
theorem substitutionProof4060 : IsMapEvaluation generatorImages reduction4060.relations [3,3,400] reduction4060.output := by lin_cert using reduction4060.terms
def image4061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4061 : InImage map_7_150 image4061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4061 : Bundle := named_bundle% "RealMapCertificates/relations/basis4061.json"
theorem reductionProof4061 : EqualModuloRelations reduction4061.relations reduction4061.input reduction4061.output := by lin_cert using reduction4061.terms
theorem substitutionProof4061 : IsMapEvaluation generatorImages reduction4061.relations [1,1,8,324] reduction4061.output := by lin_cert using reduction4061.terms
def image4062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4062 : InImage map_7_150 image4062 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4062 : Bundle := named_bundle% "RealMapCertificates/relations/basis4062.json"
theorem reductionProof4062 : EqualModuloRelations reduction4062.relations reduction4062.input reduction4062.output := by lin_cert using reduction4062.terms
theorem substitutionProof4062 : IsMapEvaluation generatorImages reduction4062.relations [0,9,69,69] reduction4062.output := by lin_cert using reduction4062.terms
def image4063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4063 : InImage map_7_150 image4063 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4063 : Bundle := named_bundle% "RealMapCertificates/relations/basis4063.json"
theorem reductionProof4063 : EqualModuloRelations reduction4063.relations reduction4063.input reduction4063.output := by lin_cert using reduction4063.terms
theorem substitutionProof4063 : IsMapEvaluation generatorImages reduction4063.relations [0,7,378] reduction4063.output := by lin_cert using reduction4063.terms
def map_7_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4139 : InImage map_7_151 image4139 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4139 : Bundle := named_bundle% "RealMapCertificates/relations/basis4139.json"
theorem reductionProof4139 : EqualModuloRelations reduction4139.relations reduction4139.input reduction4139.output := by lin_cert using reduction4139.terms
theorem substitutionProof4139 : IsMapEvaluation generatorImages reduction4139.relations [0,2,526] reduction4139.output := by lin_cert using reduction4139.terms
def image4140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4140 : InImage map_7_151 image4140 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4140 : Bundle := named_bundle% "RealMapCertificates/relations/basis4140.json"
theorem reductionProof4140 : EqualModuloRelations reduction4140.relations reduction4140.input reduction4140.output := by lin_cert using reduction4140.terms
theorem substitutionProof4140 : IsMapEvaluation generatorImages reduction4140.relations [0,0,9,324] reduction4140.output := by lin_cert using reduction4140.terms
def map_7_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4319 : InImage map_7_153 image4319 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4319 : Bundle := named_bundle% "RealMapCertificates/relations/basis4319.json"
theorem reductionProof4319 : EqualModuloRelations reduction4319.relations reduction4319.input reduction4319.output := by lin_cert using reduction4319.terms
theorem substitutionProof4319 : IsMapEvaluation generatorImages reduction4319.relations [584] reduction4319.output := by lin_cert using reduction4319.terms
def image4320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4320 : InImage map_7_153 image4320 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4320 : Bundle := named_bundle% "RealMapCertificates/relations/basis4320.json"
theorem reductionProof4320 : EqualModuloRelations reduction4320.relations reduction4320.input reduction4320.output := by lin_cert using reduction4320.terms
theorem substitutionProof4320 : IsMapEvaluation generatorImages reduction4320.relations [0,3,506] reduction4320.output := by lin_cert using reduction4320.terms
def map_7_154 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4387 : InImage map_7_154 image4387 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4387 : Bundle := named_bundle% "RealMapCertificates/relations/basis4387.json"
theorem reductionProof4387 : EqualModuloRelations reduction4387.relations reduction4387.input reduction4387.output := by lin_cert using reduction4387.terms
theorem substitutionProof4387 : IsMapEvaluation generatorImages reduction4387.relations [592] reduction4387.output := by lin_cert using reduction4387.terms
def image4388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4388 : InImage map_7_154 image4388 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4388 : Bundle := named_bundle% "RealMapCertificates/relations/basis4388.json"
theorem reductionProof4388 : EqualModuloRelations reduction4388.relations reduction4388.input reduction4388.output := by lin_cert using reduction4388.terms
theorem substitutionProof4388 : IsMapEvaluation generatorImages reduction4388.relations [7,446] reduction4388.output := by lin_cert using reduction4388.terms
def image4389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4389 : InImage map_7_154 image4389 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4389 : Bundle := named_bundle% "RealMapCertificates/relations/basis4389.json"
theorem reductionProof4389 : EqualModuloRelations reduction4389.relations reduction4389.input reduction4389.output := by lin_cert using reduction4389.terms
theorem substitutionProof4389 : IsMapEvaluation generatorImages reduction4389.relations [2,7,400] reduction4389.output := by lin_cert using reduction4389.terms
def image4390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4390 : InImage map_7_154 image4390 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4390 : Bundle := named_bundle% "RealMapCertificates/relations/basis4390.json"
theorem reductionProof4390 : EqualModuloRelations reduction4390.relations reduction4390.input reduction4390.output := by lin_cert using reduction4390.terms
theorem substitutionProof4390 : IsMapEvaluation generatorImages reduction4390.relations [1,3,506] reduction4390.output := by lin_cert using reduction4390.terms
def image4391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4391 : InImage map_7_154 image4391 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4391 : Bundle := named_bundle% "RealMapCertificates/relations/basis4391.json"
theorem reductionProof4391 : EqualModuloRelations reduction4391.relations reduction4391.input reduction4391.output := by lin_cert using reduction4391.terms
theorem substitutionProof4391 : IsMapEvaluation generatorImages reduction4391.relations [0,0,13,324] reduction4391.output := by lin_cert using reduction4391.terms
def map_7_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4583 : InImage map_7_156 image4583 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4583 : Bundle := named_bundle% "RealMapCertificates/relations/basis4583.json"
theorem reductionProof4583 : EqualModuloRelations reduction4583.relations reduction4583.input reduction4583.output := by lin_cert using reduction4583.terms
theorem substitutionProof4583 : IsMapEvaluation generatorImages reduction4583.relations [617] reduction4583.output := by lin_cert using reduction4583.terms
def image4584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4584 : InImage map_7_156 image4584 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4584 : Bundle := named_bundle% "RealMapCertificates/relations/basis4584.json"
theorem reductionProof4584 : EqualModuloRelations reduction4584.relations reduction4584.input reduction4584.output := by lin_cert using reduction4584.terms
theorem substitutionProof4584 : IsMapEvaluation generatorImages reduction4584.relations [1,593] reduction4584.output := by lin_cert using reduction4584.terms
def map_7_157 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4655 : InImage map_7_157 image4655 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4655 : Bundle := named_bundle% "RealMapCertificates/relations/basis4655.json"
theorem reductionProof4655 : EqualModuloRelations reduction4655.relations reduction4655.input reduction4655.output := by lin_cert using reduction4655.terms
theorem substitutionProof4655 : IsMapEvaluation generatorImages reduction4655.relations [1,605] reduction4655.output := by lin_cert using reduction4655.terms
def image4656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4656 : InImage map_7_157 image4656 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4656 : Bundle := named_bundle% "RealMapCertificates/relations/basis4656.json"
theorem reductionProof4656 : EqualModuloRelations reduction4656.relations reduction4656.input reduction4656.output := by lin_cert using reduction4656.terms
theorem substitutionProof4656 : IsMapEvaluation generatorImages reduction4656.relations [0,2,13,324] reduction4656.output := by lin_cert using reduction4656.terms
def map_7_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4913 : InImage map_7_160 image4913 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4913 : Bundle := named_bundle% "RealMapCertificates/relations/basis4913.json"
theorem reductionProof4913 : EqualModuloRelations reduction4913.relations reduction4913.input reduction4913.output := by lin_cert using reduction4913.terms
theorem substitutionProof4913 : IsMapEvaluation generatorImages reduction4913.relations [2,2,13,324] reduction4913.output := by lin_cert using reduction4913.terms
def map_7_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5002 : InImage map_7_161 image5002 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5002 : Bundle := named_bundle% "RealMapCertificates/relations/basis5002.json"
theorem reductionProof5002 : EqualModuloRelations reduction5002.relations reduction5002.input reduction5002.output := by lin_cert using reduction5002.terms
theorem substitutionProof5002 : IsMapEvaluation generatorImages reduction5002.relations [0,7,507] reduction5002.output := by lin_cert using reduction5002.terms
def map_7_162 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5123 : InImage map_7_162 image5123 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5123 : Bundle := named_bundle% "RealMapCertificates/relations/basis5123.json"
theorem reductionProof5123 : EqualModuloRelations reduction5123.relations reduction5123.input reduction5123.output := by lin_cert using reduction5123.terms
theorem substitutionProof5123 : IsMapEvaluation generatorImages reduction5123.relations [18,339] reduction5123.output := by lin_cert using reduction5123.terms
def image5124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5124 : InImage map_7_162 image5124 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5124 : Bundle := named_bundle% "RealMapCertificates/relations/basis5124.json"
theorem reductionProof5124 : EqualModuloRelations reduction5124.relations reduction5124.input reduction5124.output := by lin_cert using reduction5124.terms
theorem substitutionProof5124 : IsMapEvaluation generatorImages reduction5124.relations [0,0,7,508] reduction5124.output := by lin_cert using reduction5124.terms
def map_7_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5202 : InImage map_7_163 image5202 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5202 : Bundle := named_bundle% "RealMapCertificates/relations/basis5202.json"
theorem reductionProof5202 : EqualModuloRelations reduction5202.relations reduction5202.input reduction5202.output := by lin_cert using reduction5202.terms
theorem substitutionProof5202 : IsMapEvaluation generatorImages reduction5202.relations [0,0,660] reduction5202.output := by lin_cert using reduction5202.terms
def map_7_164 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5298 : InImage map_7_164 image5298 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5298 : Bundle := named_bundle% "RealMapCertificates/relations/basis5298.json"
theorem reductionProof5298 : EqualModuloRelations reduction5298.relations reduction5298.input reduction5298.output := by lin_cert using reduction5298.terms
theorem substitutionProof5298 : IsMapEvaluation generatorImages reduction5298.relations [698] reduction5298.output := by lin_cert using reduction5298.terms
def image5299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5299 : InImage map_7_164 image5299 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5299 : Bundle := named_bundle% "RealMapCertificates/relations/basis5299.json"
theorem reductionProof5299 : EqualModuloRelations reduction5299.relations reduction5299.input reduction5299.output := by lin_cert using reduction5299.terms
theorem substitutionProof5299 : IsMapEvaluation generatorImages reduction5299.relations [24,69,69] reduction5299.output := by lin_cert using reduction5299.terms
def image5300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5300 : InImage map_7_164 image5300 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5300 : Bundle := named_bundle% "RealMapCertificates/relations/basis5300.json"
theorem reductionProof5300 : EqualModuloRelations reduction5300.relations reduction5300.input reduction5300.output := by lin_cert using reduction5300.terms
theorem substitutionProof5300 : IsMapEvaluation generatorImages reduction5300.relations [23,324] reduction5300.output := by lin_cert using reduction5300.terms
def image5301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5301 : InImage map_7_164 image5301 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5301 : Bundle := named_bundle% "RealMapCertificates/relations/basis5301.json"
theorem reductionProof5301 : EqualModuloRelations reduction5301.relations reduction5301.input reduction5301.output := by lin_cert using reduction5301.terms
theorem substitutionProof5301 : IsMapEvaluation generatorImages reduction5301.relations [18,368] reduction5301.output := by lin_cert using reduction5301.terms
def map_7_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5424 : InImage map_7_165 image5424 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5424 : Bundle := named_bundle% "RealMapCertificates/relations/basis5424.json"
theorem reductionProof5424 : EqualModuloRelations reduction5424.relations reduction5424.input reduction5424.output := by lin_cert using reduction5424.terms
theorem substitutionProof5424 : IsMapEvaluation generatorImages reduction5424.relations [1,1,660] reduction5424.output := by lin_cert using reduction5424.terms
def image5425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5425 : InImage map_7_165 image5425 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5425 : Bundle := named_bundle% "RealMapCertificates/relations/basis5425.json"
theorem reductionProof5425 : EqualModuloRelations reduction5425.relations reduction5425.input reduction5425.output := by lin_cert using reduction5425.terms
theorem substitutionProof5425 : IsMapEvaluation generatorImages reduction5425.relations [0,699] reduction5425.output := by lin_cert using reduction5425.terms
def image5426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5426 : InImage map_7_165 image5426 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5426 : Bundle := named_bundle% "RealMapCertificates/relations/basis5426.json"
theorem reductionProof5426 : EqualModuloRelations reduction5426.relations reduction5426.input reduction5426.output := by lin_cert using reduction5426.terms
theorem substitutionProof5426 : IsMapEvaluation generatorImages reduction5426.relations [0,0,0,0,0,18,324] reduction5426.output := by lin_cert using reduction5426.terms
def map_7_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5523 : InImage map_7_166 image5523 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5523 : Bundle := named_bundle% "RealMapCertificates/relations/basis5523.json"
theorem reductionProof5523 : EqualModuloRelations reduction5523.relations reduction5523.input reduction5523.output := by lin_cert using reduction5523.terms
theorem substitutionProof5523 : IsMapEvaluation generatorImages reduction5523.relations [28,324] reduction5523.output := by lin_cert using reduction5523.terms
def image5524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5524 : InImage map_7_166 image5524 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5524 : Bundle := named_bundle% "RealMapCertificates/relations/basis5524.json"
theorem reductionProof5524 : EqualModuloRelations reduction5524.relations reduction5524.input reduction5524.output := by lin_cert using reduction5524.terms
theorem substitutionProof5524 : IsMapEvaluation generatorImages reduction5524.relations [7,7,400] reduction5524.output := by lin_cert using reduction5524.terms
def image5525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5525 : InImage map_7_166 image5525 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5525 : Bundle := named_bundle% "RealMapCertificates/relations/basis5525.json"
theorem reductionProof5525 : EqualModuloRelations reduction5525.relations reduction5525.input reduction5525.output := by lin_cert using reduction5525.terms
theorem substitutionProof5525 : IsMapEvaluation generatorImages reduction5525.relations [0,18,378] reduction5525.output := by lin_cert using reduction5525.terms
def image5526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5526 : InImage map_7_166 image5526 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5526 : Bundle := named_bundle% "RealMapCertificates/relations/basis5526.json"
theorem reductionProof5526 : EqualModuloRelations reduction5526.relations reduction5526.input reduction5526.output := by lin_cert using reduction5526.terms
theorem substitutionProof5526 : IsMapEvaluation generatorImages reduction5526.relations [0,2,660] reduction5526.output := by lin_cert using reduction5526.terms
def map_7_168 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5757 : InImage map_7_168 image5757 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5757 : Bundle := named_bundle% "RealMapCertificates/relations/basis5757.json"
theorem reductionProof5757 : EqualModuloRelations reduction5757.relations reduction5757.input reduction5757.output := by lin_cert using reduction5757.terms
theorem substitutionProof5757 : IsMapEvaluation generatorImages reduction5757.relations [748] reduction5757.output := by lin_cert using reduction5757.terms
def image5758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5758 : InImage map_7_168 image5758 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5758 : Bundle := named_bundle% "RealMapCertificates/relations/basis5758.json"
theorem reductionProof5758 : EqualModuloRelations reduction5758.relations reduction5758.input reduction5758.output := by lin_cert using reduction5758.terms
theorem substitutionProof5758 : IsMapEvaluation generatorImages reduction5758.relations [747] reduction5758.output := by lin_cert using reduction5758.terms
def image5759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5759 : InImage map_7_168 image5759 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5759 : Bundle := named_bundle% "RealMapCertificates/relations/basis5759.json"
theorem reductionProof5759 : EqualModuloRelations reduction5759.relations reduction5759.input reduction5759.output := by lin_cert using reduction5759.terms
theorem substitutionProof5759 : IsMapEvaluation generatorImages reduction5759.relations [2,699] reduction5759.output := by lin_cert using reduction5759.terms
def image5760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5760 : InImage map_7_168 image5760 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5760 : Bundle := named_bundle% "RealMapCertificates/relations/basis5760.json"
theorem reductionProof5760 : EqualModuloRelations reduction5760.relations reduction5760.input reduction5760.output := by lin_cert using reduction5760.terms
theorem substitutionProof5760 : IsMapEvaluation generatorImages reduction5760.relations [2,24,324] reduction5760.output := by lin_cert using reduction5760.terms
def map_7_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5851 : InImage map_7_169 image5851 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5851 : Bundle := named_bundle% "RealMapCertificates/relations/basis5851.json"
theorem reductionProof5851 : EqualModuloRelations reduction5851.relations reduction5851.input reduction5851.output := by lin_cert using reduction5851.terms
theorem substitutionProof5851 : IsMapEvaluation generatorImages reduction5851.relations [2,2,660] reduction5851.output := by lin_cert using reduction5851.terms
def image5852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5852 : InImage map_7_169 image5852 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5852 : Bundle := named_bundle% "RealMapCertificates/relations/basis5852.json"
theorem reductionProof5852 : EqualModuloRelations reduction5852.relations reduction5852.input reduction5852.output := by lin_cert using reduction5852.terms
theorem substitutionProof5852 : IsMapEvaluation generatorImages reduction5852.relations [0,749] reduction5852.output := by lin_cert using reduction5852.terms
def map_7_170 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5959 : InImage map_7_170 image5959 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5959 : Bundle := named_bundle% "RealMapCertificates/relations/basis5959.json"
theorem reductionProof5959 : EqualModuloRelations reduction5959.relations reduction5959.input reduction5959.output := by lin_cert using reduction5959.terms
theorem substitutionProof5959 : IsMapEvaluation generatorImages reduction5959.relations [33,324] reduction5959.output := by lin_cert using reduction5959.terms
def image5960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5960 : InImage map_7_170 image5960 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5960 : Bundle := named_bundle% "RealMapCertificates/relations/basis5960.json"
theorem reductionProof5960 : EqualModuloRelations reduction5960.relations reduction5960.input reduction5960.output := by lin_cert using reduction5960.terms
theorem substitutionProof5960 : IsMapEvaluation generatorImages reduction5960.relations [18,446] reduction5960.output := by lin_cert using reduction5960.terms
def image5961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5961 : InImage map_7_170 image5961 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5961 : Bundle := named_bundle% "RealMapCertificates/relations/basis5961.json"
theorem reductionProof5961 : EqualModuloRelations reduction5961.relations reduction5961.input reduction5961.output := by lin_cert using reduction5961.terms
theorem substitutionProof5961 : IsMapEvaluation generatorImages reduction5961.relations [1,749] reduction5961.output := by lin_cert using reduction5961.terms
def image5962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5962 : InImage map_7_170 image5962 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5962 : Bundle := named_bundle% "RealMapCertificates/relations/basis5962.json"
theorem reductionProof5962 : EqualModuloRelations reduction5962.relations reduction5962.input reduction5962.output := by lin_cert using reduction5962.terms
theorem substitutionProof5962 : IsMapEvaluation generatorImages reduction5962.relations [0,0,750] reduction5962.output := by lin_cert using reduction5962.terms
def map_7_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6100 : InImage map_7_171 image6100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6100 : Bundle := named_bundle% "RealMapCertificates/relations/basis6100.json"
theorem reductionProof6100 : EqualModuloRelations reduction6100.relations reduction6100.input reduction6100.output := by lin_cert using reduction6100.terms
theorem substitutionProof6100 : IsMapEvaluation generatorImages reduction6100.relations [0,34,324] reduction6100.output := by lin_cert using reduction6100.terms
def image6101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6101 : InImage map_7_171 image6101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6101 : Bundle := named_bundle% "RealMapCertificates/relations/basis6101.json"
theorem reductionProof6101 : EqualModuloRelations reduction6101.relations reduction6101.input reduction6101.output := by lin_cert using reduction6101.terms
theorem substitutionProof6101 : IsMapEvaluation generatorImages reduction6101.relations [0,0,0,751] reduction6101.output := by lin_cert using reduction6101.terms
def map_7_172 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6186 : InImage map_7_172 image6186 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6186 : Bundle := named_bundle% "RealMapCertificates/relations/basis6186.json"
theorem reductionProof6186 : EqualModuloRelations reduction6186.relations reduction6186.input reduction6186.output := by lin_cert using reduction6186.terms
theorem substitutionProof6186 : IsMapEvaluation generatorImages reduction6186.relations [36,324] reduction6186.output := by lin_cert using reduction6186.terms
def image6187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6187 : InImage map_7_172 image6187 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6187 : Bundle := named_bundle% "RealMapCertificates/relations/basis6187.json"
theorem reductionProof6187 : EqualModuloRelations reduction6187.relations reduction6187.input reduction6187.output := by lin_cert using reduction6187.terms
theorem substitutionProof6187 : IsMapEvaluation generatorImages reduction6187.relations [3,699] reduction6187.output := by lin_cert using reduction6187.terms
def image6188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6188 : InImage map_7_172 image6188 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6188 : Bundle := named_bundle% "RealMapCertificates/relations/basis6188.json"
theorem reductionProof6188 : EqualModuloRelations reduction6188.relations reduction6188.input reduction6188.output := by lin_cert using reduction6188.terms
theorem substitutionProof6188 : IsMapEvaluation generatorImages reduction6188.relations [1,34,324] reduction6188.output := by lin_cert using reduction6188.terms
def map_7_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6285 : InImage map_7_173 image6285 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6285 : Bundle := named_bundle% "RealMapCertificates/relations/basis6285.json"
theorem reductionProof6285 : EqualModuloRelations reduction6285.relations reduction6285.input reduction6285.output := by lin_cert using reduction6285.terms
theorem substitutionProof6285 : IsMapEvaluation generatorImages reduction6285.relations [3,18,378] reduction6285.output := by lin_cert using reduction6285.terms
end RealMapCertificates
