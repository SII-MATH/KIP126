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
  | 18 => []
  | 24 => []
  | 37 => []
  | 43 => []
  | 54 => []
  | 61 => []
  | 68 => []
  | 70 => []
  | 74 => []
  | 75 => []
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
  | 231 => []
  | 241 => []
  | 324 => []
  | 341 => []
  | 368 => []
  | 506 => []
  | 660 => []
  | 749 => []
  | 750 => []
  | 751 => []
  | 849 => []
  | 850 => []
  | 894 => []
  | 913 => []
  | 914 => []
  | 994 => []
  | 1058 => []
  | 1286 => []
  | 1299 => []
  | 1348 => []
  | 1423 => []
  | 1424 => []
  | 1437 => []
  | 1498 => []
  | 1512 => []
  | 1565 => []
  | 1634 => []
  | 1635 => []
  | 1714 => []
  | 1715 => []
  | 1716 => []
  | 1960 => []
  | 2034 => []
  | 2273 => []
  | 2737 => []
  | 2788 => []
  | 2854 => []
  | 2855 => []
  | 2913 => []
  | _ => []
def map_7_174 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6437 : InImage map_7_174 image6437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6437 : Bundle := named_bundle% "RealMapCertificates/relations/basis6437.json"
theorem reductionProof6437 : EqualModuloRelations reduction6437.relations reduction6437.input reduction6437.output := by lin_cert using reduction6437.terms
theorem substitutionProof6437 : IsMapEvaluation generatorImages reduction6437.relations [5,18,324] reduction6437.output := by lin_cert using reduction6437.terms
def image6438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6438 : InImage map_7_174 image6438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6438 : Bundle := named_bundle% "RealMapCertificates/relations/basis6438.json"
theorem reductionProof6438 : EqualModuloRelations reduction6438.relations reduction6438.input reduction6438.output := by lin_cert using reduction6438.terms
theorem substitutionProof6438 : IsMapEvaluation generatorImages reduction6438.relations [0,0,37,324] reduction6438.output := by lin_cert using reduction6438.terms
def map_7_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6638 : InImage map_7_176 image6638 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6638 : Bundle := named_bundle% "RealMapCertificates/relations/basis6638.json"
theorem reductionProof6638 : EqualModuloRelations reduction6638.relations reduction6638.input reduction6638.output := by lin_cert using reduction6638.terms
theorem substitutionProof6638 : IsMapEvaluation generatorImages reduction6638.relations [6,18,324] reduction6638.output := by lin_cert using reduction6638.terms
def image6639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6639 : InImage map_7_176 image6639 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6639 : Bundle := named_bundle% "RealMapCertificates/relations/basis6639.json"
theorem reductionProof6639 : EqualModuloRelations reduction6639.relations reduction6639.input reduction6639.output := by lin_cert using reduction6639.terms
theorem substitutionProof6639 : IsMapEvaluation generatorImages reduction6639.relations [3,749] reduction6639.output := by lin_cert using reduction6639.terms
def map_7_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6775 : InImage map_7_177 image6775 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6775 : Bundle := named_bundle% "RealMapCertificates/relations/basis6775.json"
theorem reductionProof6775 : EqualModuloRelations reduction6775.relations reduction6775.input reduction6775.output := by lin_cert using reduction6775.terms
theorem substitutionProof6775 : IsMapEvaluation generatorImages reduction6775.relations [0,18,506] reduction6775.output := by lin_cert using reduction6775.terms
def image6776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6776 : InImage map_7_177 image6776 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6776 : Bundle := named_bundle% "RealMapCertificates/relations/basis6776.json"
theorem reductionProof6776 : EqualModuloRelations reduction6776.relations reduction6776.input reduction6776.output := by lin_cert using reduction6776.terms
theorem substitutionProof6776 : IsMapEvaluation generatorImages reduction6776.relations [0,3,750] reduction6776.output := by lin_cert using reduction6776.terms
def map_7_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6879 : InImage map_7_178 image6879 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6879 : Bundle := named_bundle% "RealMapCertificates/relations/basis6879.json"
theorem reductionProof6879 : EqualModuloRelations reduction6879.relations reduction6879.input reduction6879.output := by lin_cert using reduction6879.terms
theorem substitutionProof6879 : IsMapEvaluation generatorImages reduction6879.relations [1,18,506] reduction6879.output := by lin_cert using reduction6879.terms
def image6880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6880 : InImage map_7_178 image6880 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6880 : Bundle := named_bundle% "RealMapCertificates/relations/basis6880.json"
theorem reductionProof6880 : EqualModuloRelations reduction6880.relations reduction6880.input reduction6880.output := by lin_cert using reduction6880.terms
theorem substitutionProof6880 : IsMapEvaluation generatorImages reduction6880.relations [0,0,43,324] reduction6880.output := by lin_cert using reduction6880.terms
def image6881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6881 : InImage map_7_178 image6881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6881 : Bundle := named_bundle% "RealMapCertificates/relations/basis6881.json"
theorem reductionProof6881 : EqualModuloRelations reduction6881.relations reduction6881.input reduction6881.output := by lin_cert using reduction6881.terms
theorem substitutionProof6881 : IsMapEvaluation generatorImages reduction6881.relations [0,0,3,751] reduction6881.output := by lin_cert using reduction6881.terms
def map_7_179 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7001 : InImage map_7_179 image7001 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7001 : Bundle := named_bundle% "RealMapCertificates/relations/basis7001.json"
theorem reductionProof7001 : EqualModuloRelations reduction7001.relations reduction7001.input reduction7001.output := by lin_cert using reduction7001.terms
theorem substitutionProof7001 : IsMapEvaluation generatorImages reduction7001.relations [0,8,18,324] reduction7001.output := by lin_cert using reduction7001.terms
def image7002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7002 : InImage map_7_179 image7002 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7002 : Bundle := named_bundle% "RealMapCertificates/relations/basis7002.json"
theorem reductionProof7002 : EqualModuloRelations reduction7002.relations reduction7002.input reduction7002.output := by lin_cert using reduction7002.terms
theorem substitutionProof7002 : IsMapEvaluation generatorImages reduction7002.relations [0,0,0,849] reduction7002.output := by lin_cert using reduction7002.terms
def map_7_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7150 : InImage map_7_180 image7150 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7150 : Bundle := named_bundle% "RealMapCertificates/relations/basis7150.json"
theorem reductionProof7150 : EqualModuloRelations reduction7150.relations reduction7150.input reduction7150.output := by lin_cert using reduction7150.terms
theorem substitutionProof7150 : IsMapEvaluation generatorImages reduction7150.relations [2,18,506] reduction7150.output := by lin_cert using reduction7150.terms
def image7151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7151 : InImage map_7_180 image7151 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7151 : Bundle := named_bundle% "RealMapCertificates/relations/basis7151.json"
theorem reductionProof7151 : EqualModuloRelations reduction7151.relations reduction7151.input reduction7151.output := by lin_cert using reduction7151.terms
theorem substitutionProof7151 : IsMapEvaluation generatorImages reduction7151.relations [1,8,18,324] reduction7151.output := by lin_cert using reduction7151.terms
def image7152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7152 : InImage map_7_180 image7152 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7152 : Bundle := named_bundle% "RealMapCertificates/relations/basis7152.json"
theorem reductionProof7152 : EqualModuloRelations reduction7152.relations reduction7152.input reduction7152.output := by lin_cert using reduction7152.terms
theorem substitutionProof7152 : IsMapEvaluation generatorImages reduction7152.relations [0,0,0,0,850] reduction7152.output := by lin_cert using reduction7152.terms
def map_7_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7239 : InImage map_7_181 image7239 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7239 : Bundle := named_bundle% "RealMapCertificates/relations/basis7239.json"
theorem reductionProof7239 : EqualModuloRelations reduction7239.relations reduction7239.input reduction7239.output := by lin_cert using reduction7239.terms
theorem substitutionProof7239 : IsMapEvaluation generatorImages reduction7239.relations [894] reduction7239.output := by lin_cert using reduction7239.terms
def image7240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7240 : InImage map_7_181 image7240 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7240 : Bundle := named_bundle% "RealMapCertificates/relations/basis7240.json"
theorem reductionProof7240 : EqualModuloRelations reduction7240.relations reduction7240.input reduction7240.output := by lin_cert using reduction7240.terms
theorem substitutionProof7240 : IsMapEvaluation generatorImages reduction7240.relations [0,2,43,324] reduction7240.output := by lin_cert using reduction7240.terms
def map_7_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7361 : InImage map_7_182 image7361 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7361 : Bundle := named_bundle% "RealMapCertificates/relations/basis7361.json"
theorem reductionProof7361 : EqualModuloRelations reduction7361.relations reduction7361.input reduction7361.output := by lin_cert using reduction7361.terms
theorem substitutionProof7361 : IsMapEvaluation generatorImages reduction7361.relations [913] reduction7361.output := by lin_cert using reduction7361.terms
def image7362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7362 : InImage map_7_182 image7362 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7362 : Bundle := named_bundle% "RealMapCertificates/relations/basis7362.json"
theorem reductionProof7362 : EqualModuloRelations reduction7362.relations reduction7362.input reduction7362.output := by lin_cert using reduction7362.terms
theorem substitutionProof7362 : IsMapEvaluation generatorImages reduction7362.relations [0,9,18,324] reduction7362.output := by lin_cert using reduction7362.terms
def image7363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7363 : InImage map_7_182 image7363 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7363 : Bundle := named_bundle% "RealMapCertificates/relations/basis7363.json"
theorem reductionProof7363 : EqualModuloRelations reduction7363.relations reduction7363.input reduction7363.output := by lin_cert using reduction7363.terms
theorem substitutionProof7363 : IsMapEvaluation generatorImages reduction7363.relations [0,0,2,849] reduction7363.output := by lin_cert using reduction7363.terms
def map_7_183 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7508 : InImage map_7_183 image7508 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7508 : Bundle := named_bundle% "RealMapCertificates/relations/basis7508.json"
theorem reductionProof7508 : EqualModuloRelations reduction7508.relations reduction7508.input reduction7508.output := by lin_cert using reduction7508.terms
theorem substitutionProof7508 : IsMapEvaluation generatorImages reduction7508.relations [0,10,18,324] reduction7508.output := by lin_cert using reduction7508.terms
def map_7_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7602 : InImage map_7_184 image7602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7602 : Bundle := named_bundle% "RealMapCertificates/relations/basis7602.json"
theorem reductionProof7602 : EqualModuloRelations reduction7602.relations reduction7602.input reduction7602.output := by lin_cert using reduction7602.terms
theorem substitutionProof7602 : IsMapEvaluation generatorImages reduction7602.relations [54,324] reduction7602.output := by lin_cert using reduction7602.terms
def map_7_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7724 : InImage map_7_185 image7724 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7724 : Bundle := named_bundle% "RealMapCertificates/relations/basis7724.json"
theorem reductionProof7724 : EqualModuloRelations reduction7724.relations reduction7724.input reduction7724.output := by lin_cert using reduction7724.terms
theorem substitutionProof7724 : IsMapEvaluation generatorImages reduction7724.relations [0,3,43,324] reduction7724.output := by lin_cert using reduction7724.terms
def map_7_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7867 : InImage map_7_186 image7867 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7867 : Bundle := named_bundle% "RealMapCertificates/relations/basis7867.json"
theorem reductionProof7867 : EqualModuloRelations reduction7867.relations reduction7867.input reduction7867.output := by lin_cert using reduction7867.terms
theorem substitutionProof7867 : IsMapEvaluation generatorImages reduction7867.relations [2,914] reduction7867.output := by lin_cert using reduction7867.terms
def image7868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7868 : InImage map_7_186 image7868 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7868 : Bundle := named_bundle% "RealMapCertificates/relations/basis7868.json"
theorem reductionProof7868 : EqualModuloRelations reduction7868.relations reduction7868.input reduction7868.output := by lin_cert using reduction7868.terms
theorem substitutionProof7868 : IsMapEvaluation generatorImages reduction7868.relations [1,3,43,324] reduction7868.output := by lin_cert using reduction7868.terms
def map_7_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7944 : InImage map_7_187 image7944 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7944 : Bundle := named_bundle% "RealMapCertificates/relations/basis7944.json"
theorem reductionProof7944 : EqualModuloRelations reduction7944.relations reduction7944.input reduction7944.output := by lin_cert using reduction7944.terms
theorem substitutionProof7944 : IsMapEvaluation generatorImages reduction7944.relations [4,849] reduction7944.output := by lin_cert using reduction7944.terms
def map_7_188 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8074 : InImage map_7_188 image8074 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8074 : Bundle := named_bundle% "RealMapCertificates/relations/basis8074.json"
theorem reductionProof8074 : EqualModuloRelations reduction8074.relations reduction8074.input reduction8074.output := by lin_cert using reduction8074.terms
theorem substitutionProof8074 : IsMapEvaluation generatorImages reduction8074.relations [994] reduction8074.output := by lin_cert using reduction8074.terms
def image8075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8075 : InImage map_7_188 image8075 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8075 : Bundle := named_bundle% "RealMapCertificates/relations/basis8075.json"
theorem reductionProof8075 : EqualModuloRelations reduction8075.relations reduction8075.input reduction8075.output := by lin_cert using reduction8075.terms
theorem substitutionProof8075 : IsMapEvaluation generatorImages reduction8075.relations [61,324] reduction8075.output := by lin_cert using reduction8075.terms
def map_7_189 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8217 : InImage map_7_189 image8217 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8217 : Bundle := named_bundle% "RealMapCertificates/relations/basis8217.json"
theorem reductionProof8217 : EqualModuloRelations reduction8217.relations reduction8217.input reduction8217.output := by lin_cert using reduction8217.terms
theorem substitutionProof8217 : IsMapEvaluation generatorImages reduction8217.relations [1,4,850] reduction8217.output := by lin_cert using reduction8217.terms
def map_7_192 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8599 : InImage map_7_192 image8599 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8599 : Bundle := named_bundle% "RealMapCertificates/relations/basis8599.json"
theorem reductionProof8599 : EqualModuloRelations reduction8599.relations reduction8599.input reduction8599.output := by lin_cert using reduction8599.terms
theorem substitutionProof8599 : IsMapEvaluation generatorImages reduction8599.relations [68,324] reduction8599.output := by lin_cert using reduction8599.terms
def map_7_194 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8842 : InImage map_7_194 image8842 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8842 : Bundle := named_bundle% "RealMapCertificates/relations/basis8842.json"
theorem reductionProof8842 : EqualModuloRelations reduction8842.relations reduction8842.input reduction8842.output := by lin_cert using reduction8842.terms
theorem substitutionProof8842 : IsMapEvaluation generatorImages reduction8842.relations [0,18,660] reduction8842.output := by lin_cert using reduction8842.terms
def map_7_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8997 : InImage map_7_195 image8997 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8997 : Bundle := named_bundle% "RealMapCertificates/relations/basis8997.json"
theorem reductionProof8997 : EqualModuloRelations reduction8997.relations reduction8997.input reduction8997.output := by lin_cert using reduction8997.terms
theorem substitutionProof8997 : IsMapEvaluation generatorImages reduction8997.relations [75,324] reduction8997.output := by lin_cert using reduction8997.terms
def image8998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8998 : InImage map_7_195 image8998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8998 : Bundle := named_bundle% "RealMapCertificates/relations/basis8998.json"
theorem reductionProof8998 : EqualModuloRelations reduction8998.relations reduction8998.input reduction8998.output := by lin_cert using reduction8998.terms
theorem substitutionProof8998 : IsMapEvaluation generatorImages reduction8998.relations [74,324] reduction8998.output := by lin_cert using reduction8998.terms
def image8999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8999 : InImage map_7_195 image8999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8999 : Bundle := named_bundle% "RealMapCertificates/relations/basis8999.json"
theorem reductionProof8999 : EqualModuloRelations reduction8999.relations reduction8999.input reduction8999.output := by lin_cert using reduction8999.terms
theorem substitutionProof8999 : IsMapEvaluation generatorImages reduction8999.relations [1,18,660] reduction8999.output := by lin_cert using reduction8999.terms
def image9000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9000 : InImage map_7_195 image9000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9000 : Bundle := named_bundle% "RealMapCertificates/relations/basis9000.json"
theorem reductionProof9000 : EqualModuloRelations reduction9000.relations reduction9000.input reduction9000.output := by lin_cert using reduction9000.terms
theorem substitutionProof9000 : IsMapEvaluation generatorImages reduction9000.relations [0,0,0,1058] reduction9000.output := by lin_cert using reduction9000.terms
def map_7_196 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9122 : InImage map_7_196 image9122 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9122 : Bundle := named_bundle% "RealMapCertificates/relations/basis9122.json"
theorem reductionProof9122 : EqualModuloRelations reduction9122.relations reduction9122.input reduction9122.output := by lin_cert using reduction9122.terms
theorem substitutionProof9122 : IsMapEvaluation generatorImages reduction9122.relations [18,24,324] reduction9122.output := by lin_cert using reduction9122.terms
def image9123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9123 : InImage map_7_196 image9123 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9123 : Bundle := named_bundle% "RealMapCertificates/relations/basis9123.json"
theorem reductionProof9123 : EqualModuloRelations reduction9123.relations reduction9123.input reduction9123.output := by lin_cert using reduction9123.terms
theorem substitutionProof9123 : IsMapEvaluation generatorImages reduction9123.relations [0,0,0,0,18,18,324] reduction9123.output := by lin_cert using reduction9123.terms
def map_7_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9276 : InImage map_7_197 image9276 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9276 : Bundle := named_bundle% "RealMapCertificates/relations/basis9276.json"
theorem reductionProof9276 : EqualModuloRelations reduction9276.relations reduction9276.input reduction9276.output := by lin_cert using reduction9276.terms
theorem substitutionProof9276 : IsMapEvaluation generatorImages reduction9276.relations [2,18,660] reduction9276.output := by lin_cert using reduction9276.terms
def image9277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9277 : InImage map_7_197 image9277 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9277 : Bundle := named_bundle% "RealMapCertificates/relations/basis9277.json"
theorem reductionProof9277 : EqualModuloRelations reduction9277.relations reduction9277.input reduction9277.output := by lin_cert using reduction9277.terms
theorem substitutionProof9277 : IsMapEvaluation generatorImages reduction9277.relations [1,76,324] reduction9277.output := by lin_cert using reduction9277.terms
def map_7_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9464 : InImage map_7_198 image9464 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9464 : Bundle := named_bundle% "RealMapCertificates/relations/basis9464.json"
theorem reductionProof9464 : EqualModuloRelations reduction9464.relations reduction9464.input reduction9464.output := by lin_cert using reduction9464.terms
theorem substitutionProof9464 : IsMapEvaluation generatorImages reduction9464.relations [86,324] reduction9464.output := by lin_cert using reduction9464.terms
def image9465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9465 : InImage map_7_198 image9465 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9465 : Bundle := named_bundle% "RealMapCertificates/relations/basis9465.json"
theorem reductionProof9465 : EqualModuloRelations reduction9465.relations reduction9465.input reduction9465.output := by lin_cert using reduction9465.terms
theorem substitutionProof9465 : IsMapEvaluation generatorImages reduction9465.relations [2,18,18,341] reduction9465.output := by lin_cert using reduction9465.terms
def image9466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9466 : InImage map_7_198 image9466 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9466 : Bundle := named_bundle% "RealMapCertificates/relations/basis9466.json"
theorem reductionProof9466 : EqualModuloRelations reduction9466.relations reduction9466.input reduction9466.output := by lin_cert using reduction9466.terms
theorem substitutionProof9466 : IsMapEvaluation generatorImages reduction9466.relations [0,0,2,1058] reduction9466.output := by lin_cert using reduction9466.terms
def map_7_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9589 : InImage map_7_199 image9589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9589 : Bundle := named_bundle% "RealMapCertificates/relations/basis9589.json"
theorem reductionProof9589 : EqualModuloRelations reduction9589.relations reduction9589.input reduction9589.output := by lin_cert using reduction9589.terms
theorem substitutionProof9589 : IsMapEvaluation generatorImages reduction9589.relations [2,76,324] reduction9589.output := by lin_cert using reduction9589.terms
def map_7_200 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9765 : InImage map_7_200 image9765 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9765 : Bundle := named_bundle% "RealMapCertificates/relations/basis9765.json"
theorem reductionProof9765 : EqualModuloRelations reduction9765.relations reduction9765.input reduction9765.output := by lin_cert using reduction9765.terms
theorem substitutionProof9765 : IsMapEvaluation generatorImages reduction9765.relations [91,324] reduction9765.output := by lin_cert using reduction9765.terms
def map_7_201 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9939 : InImage map_7_201 image9939 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9939 : Bundle := named_bundle% "RealMapCertificates/relations/basis9939.json"
theorem reductionProof9939 : EqualModuloRelations reduction9939.relations reduction9939.input reduction9939.output := by lin_cert using reduction9939.terms
theorem substitutionProof9939 : IsMapEvaluation generatorImages reduction9939.relations [0,93,324] reduction9939.output := by lin_cert using reduction9939.terms
def image9940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9940 : InImage map_7_201 image9940 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9940 : Bundle := named_bundle% "RealMapCertificates/relations/basis9940.json"
theorem reductionProof9940 : EqualModuloRelations reduction9940.relations reduction9940.input reduction9940.output := by lin_cert using reduction9940.terms
theorem substitutionProof9940 : IsMapEvaluation generatorImages reduction9940.relations [0,92,324] reduction9940.output := by lin_cert using reduction9940.terms
def map_7_202 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10079 : InImage map_7_202 image10079 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10079 : Bundle := named_bundle% "RealMapCertificates/relations/basis10079.json"
theorem reductionProof10079 : EqualModuloRelations reduction10079.relations reduction10079.input reduction10079.output := by lin_cert using reduction10079.terms
theorem substitutionProof10079 : IsMapEvaluation generatorImages reduction10079.relations [1,92,324] reduction10079.output := by lin_cert using reduction10079.terms
def image10080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10080 : InImage map_7_202 image10080 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10080 : Bundle := named_bundle% "RealMapCertificates/relations/basis10080.json"
theorem reductionProof10080 : EqualModuloRelations reduction10080.relations reduction10080.input reduction10080.output := by lin_cert using reduction10080.terms
theorem substitutionProof10080 : IsMapEvaluation generatorImages reduction10080.relations [0,0,3,1058] reduction10080.output := by lin_cert using reduction10080.terms
def map_7_203 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10254 : InImage map_7_203 image10254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10254 : Bundle := named_bundle% "RealMapCertificates/relations/basis10254.json"
theorem reductionProof10254 : EqualModuloRelations reduction10254.relations reduction10254.input reduction10254.output := by lin_cert using reduction10254.terms
theorem substitutionProof10254 : IsMapEvaluation generatorImages reduction10254.relations [4,1058] reduction10254.output := by lin_cert using reduction10254.terms
def image10255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10255 : InImage map_7_203 image10255 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10255 : Bundle := named_bundle% "RealMapCertificates/relations/basis10255.json"
theorem reductionProof10255 : EqualModuloRelations reduction10255.relations reduction10255.input reduction10255.output := by lin_cert using reduction10255.terms
theorem substitutionProof10255 : IsMapEvaluation generatorImages reduction10255.relations [3,76,324] reduction10255.output := by lin_cert using reduction10255.terms
def image10256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10256 : InImage map_7_203 image10256 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10256 : Bundle := named_bundle% "RealMapCertificates/relations/basis10256.json"
theorem reductionProof10256 : EqualModuloRelations reduction10256.relations reduction10256.input reduction10256.output := by lin_cert using reduction10256.terms
theorem substitutionProof10256 : IsMapEvaluation generatorImages reduction10256.relations [0,0,96,324] reduction10256.output := by lin_cert using reduction10256.terms
def map_7_204 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10465 : InImage map_7_204 image10465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10465 : Bundle := named_bundle% "RealMapCertificates/relations/basis10465.json"
theorem reductionProof10465 : EqualModuloRelations reduction10465.relations reduction10465.input reduction10465.output := by lin_cert using reduction10465.terms
theorem substitutionProof10465 : IsMapEvaluation generatorImages reduction10465.relations [1286] reduction10465.output := by lin_cert using reduction10465.terms
def image10466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10466 : InImage map_7_204 image10466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10466 : Bundle := named_bundle% "RealMapCertificates/relations/basis10466.json"
theorem reductionProof10466 : EqualModuloRelations reduction10466.relations reduction10466.input reduction10466.output := by lin_cert using reduction10466.terms
theorem substitutionProof10466 : IsMapEvaluation generatorImages reduction10466.relations [2,92,324] reduction10466.output := by lin_cert using reduction10466.terms
def map_7_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10604 : InImage map_7_205 image10604 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10604 : Bundle := named_bundle% "RealMapCertificates/relations/basis10604.json"
theorem reductionProof10604 : EqualModuloRelations reduction10604.relations reduction10604.input reduction10604.output := by lin_cert using reduction10604.terms
theorem substitutionProof10604 : IsMapEvaluation generatorImages reduction10604.relations [1299] reduction10604.output := by lin_cert using reduction10604.terms
def image10605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10605 : InImage map_7_205 image10605 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10605 : Bundle := named_bundle% "RealMapCertificates/relations/basis10605.json"
theorem reductionProof10605 : EqualModuloRelations reduction10605.relations reduction10605.input reduction10605.output := by lin_cert using reduction10605.terms
theorem substitutionProof10605 : IsMapEvaluation generatorImages reduction10605.relations [109,324] reduction10605.output := by lin_cert using reduction10605.terms
def image10606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10606 : InImage map_7_205 image10606 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10606 : Bundle := named_bundle% "RealMapCertificates/relations/basis10606.json"
theorem reductionProof10606 : EqualModuloRelations reduction10606.relations reduction10606.input reduction10606.output := by lin_cert using reduction10606.terms
theorem substitutionProof10606 : IsMapEvaluation generatorImages reduction10606.relations [1,1,96,324] reduction10606.output := by lin_cert using reduction10606.terms
def map_7_208 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11130 : InImage map_7_208 image11130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11130 : Bundle := named_bundle% "RealMapCertificates/relations/basis11130.json"
theorem reductionProof11130 : EqualModuloRelations reduction11130.relations reduction11130.input reduction11130.output := by lin_cert using reduction11130.terms
theorem substitutionProof11130 : IsMapEvaluation generatorImages reduction11130.relations [1348] reduction11130.output := by lin_cert using reduction11130.terms
def image11131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11131 : InImage map_7_208 image11131 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11131 : Bundle := named_bundle% "RealMapCertificates/relations/basis11131.json"
theorem reductionProof11131 : EqualModuloRelations reduction11131.relations reduction11131.input reduction11131.output := by lin_cert using reduction11131.terms
theorem substitutionProof11131 : IsMapEvaluation generatorImages reduction11131.relations [3,93,324] reduction11131.output := by lin_cert using reduction11131.terms
def map_7_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11310 : InImage map_7_209 image11310 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11310 : Bundle := named_bundle% "RealMapCertificates/relations/basis11310.json"
theorem reductionProof11310 : EqualModuloRelations reduction11310.relations reduction11310.input reduction11310.output := by lin_cert using reduction11310.terms
theorem substitutionProof11310 : IsMapEvaluation generatorImages reduction11310.relations [0,3,94,324] reduction11310.output := by lin_cert using reduction11310.terms
def map_7_210 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11527 : InImage map_7_210 image11527 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11527 : Bundle := named_bundle% "RealMapCertificates/relations/basis11527.json"
theorem reductionProof11527 : EqualModuloRelations reduction11527.relations reduction11527.input reduction11527.output := by lin_cert using reduction11527.terms
theorem substitutionProof11527 : IsMapEvaluation generatorImages reduction11527.relations [122,324] reduction11527.output := by lin_cert using reduction11527.terms
def image11528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11528 : InImage map_7_210 image11528 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11528 : Bundle := named_bundle% "RealMapCertificates/relations/basis11528.json"
theorem reductionProof11528 : EqualModuloRelations reduction11528.relations reduction11528.input reduction11528.output := by lin_cert using reduction11528.terms
theorem substitutionProof11528 : IsMapEvaluation generatorImages reduction11528.relations [0,0,7,1058] reduction11528.output := by lin_cert using reduction11528.terms
def map_7_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11662 : InImage map_7_211 image11662 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11662 : Bundle := named_bundle% "RealMapCertificates/relations/basis11662.json"
theorem reductionProof11662 : EqualModuloRelations reduction11662.relations reduction11662.input reduction11662.output := by lin_cert using reduction11662.terms
theorem substitutionProof11662 : IsMapEvaluation generatorImages reduction11662.relations [1,7,70,324] reduction11662.output := by lin_cert using reduction11662.terms
def image11663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11663 : InImage map_7_211 image11663 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11663 : Bundle := named_bundle% "RealMapCertificates/relations/basis11663.json"
theorem reductionProof11663 : EqualModuloRelations reduction11663.relations reduction11663.input reduction11663.output := by lin_cert using reduction11663.terms
theorem substitutionProof11663 : IsMapEvaluation generatorImages reduction11663.relations [0,0,0,18,850] reduction11663.output := by lin_cert using reduction11663.terms
def map_7_212 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11881 : InImage map_7_212 image11881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11881 : Bundle := named_bundle% "RealMapCertificates/relations/basis11881.json"
theorem reductionProof11881 : EqualModuloRelations reduction11881.relations reduction11881.input reduction11881.output := by lin_cert using reduction11881.terms
theorem substitutionProof11881 : IsMapEvaluation generatorImages reduction11881.relations [1424] reduction11881.output := by lin_cert using reduction11881.terms
def image11882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11882 : InImage map_7_212 image11882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11882 : Bundle := named_bundle% "RealMapCertificates/relations/basis11882.json"
theorem reductionProof11882 : EqualModuloRelations reduction11882.relations reduction11882.input reduction11882.output := by lin_cert using reduction11882.terms
theorem substitutionProof11882 : IsMapEvaluation generatorImages reduction11882.relations [1423] reduction11882.output := by lin_cert using reduction11882.terms
def image11883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11883 : InImage map_7_212 image11883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11883 : Bundle := named_bundle% "RealMapCertificates/relations/basis11883.json"
theorem reductionProof11883 : EqualModuloRelations reduction11883.relations reduction11883.input reduction11883.output := by lin_cert using reduction11883.terms
theorem substitutionProof11883 : IsMapEvaluation generatorImages reduction11883.relations [130,324] reduction11883.output := by lin_cert using reduction11883.terms
def map_7_213 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12101 : InImage map_7_213 image12101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12101 : Bundle := named_bundle% "RealMapCertificates/relations/basis12101.json"
theorem reductionProof12101 : EqualModuloRelations reduction12101.relations reduction12101.input reduction12101.output := by lin_cert using reduction12101.terms
theorem substitutionProof12101 : IsMapEvaluation generatorImages reduction12101.relations [1437] reduction12101.output := by lin_cert using reduction12101.terms
def image12102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12102 : InImage map_7_213 image12102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12102 : Bundle := named_bundle% "RealMapCertificates/relations/basis12102.json"
theorem reductionProof12102 : EqualModuloRelations reduction12102.relations reduction12102.input reduction12102.output := by lin_cert using reduction12102.terms
theorem substitutionProof12102 : IsMapEvaluation generatorImages reduction12102.relations [0,131,324] reduction12102.output := by lin_cert using reduction12102.terms
def map_7_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12265 : InImage map_7_214 image12265 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12265 : Bundle := named_bundle% "RealMapCertificates/relations/basis12265.json"
theorem reductionProof12265 : EqualModuloRelations reduction12265.relations reduction12265.input reduction12265.output := by lin_cert using reduction12265.terms
theorem substitutionProof12265 : IsMapEvaluation generatorImages reduction12265.relations [0,0,132,324] reduction12265.output := by lin_cert using reduction12265.terms
def map_7_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12672 : InImage map_7_216 image12672 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12672 : Bundle := named_bundle% "RealMapCertificates/relations/basis12672.json"
theorem reductionProof12672 : EqualModuloRelations reduction12672.relations reduction12672.input reduction12672.output := by lin_cert using reduction12672.terms
theorem substitutionProof12672 : IsMapEvaluation generatorImages reduction12672.relations [1498] reduction12672.output := by lin_cert using reduction12672.terms
def image12673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12673 : InImage map_7_216 image12673 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12673 : Bundle := named_bundle% "RealMapCertificates/relations/basis12673.json"
theorem reductionProof12673 : EqualModuloRelations reduction12673.relations reduction12673.input reduction12673.output := by lin_cert using reduction12673.terms
theorem substitutionProof12673 : IsMapEvaluation generatorImages reduction12673.relations [7,92,324] reduction12673.output := by lin_cert using reduction12673.terms
def image12674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12674 : InImage map_7_216 image12674 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12674 : Bundle := named_bundle% "RealMapCertificates/relations/basis12674.json"
theorem reductionProof12674 : EqualModuloRelations reduction12674.relations reduction12674.input reduction12674.output := by lin_cert using reduction12674.terms
theorem substitutionProof12674 : IsMapEvaluation generatorImages reduction12674.relations [2,131,324] reduction12674.output := by lin_cert using reduction12674.terms
def map_7_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12811 : InImage map_7_217 image12811 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12811 : Bundle := named_bundle% "RealMapCertificates/relations/basis12811.json"
theorem reductionProof12811 : EqualModuloRelations reduction12811.relations reduction12811.input reduction12811.output := by lin_cert using reduction12811.terms
theorem substitutionProof12811 : IsMapEvaluation generatorImages reduction12811.relations [1512] reduction12811.output := by lin_cert using reduction12811.terms
def map_7_218 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13030 : InImage map_7_218 image13030 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13030 : Bundle := named_bundle% "RealMapCertificates/relations/basis13030.json"
theorem reductionProof13030 : EqualModuloRelations reduction13030.relations reduction13030.input reduction13030.output := by lin_cert using reduction13030.terms
theorem substitutionProof13030 : IsMapEvaluation generatorImages reduction13030.relations [0,0,142,324] reduction13030.output := by lin_cert using reduction13030.terms
def map_7_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13230 : InImage map_7_219 image13230 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13230 : Bundle := named_bundle% "RealMapCertificates/relations/basis13230.json"
theorem reductionProof13230 : EqualModuloRelations reduction13230.relations reduction13230.input reduction13230.output := by lin_cert using reduction13230.terms
theorem substitutionProof13230 : IsMapEvaluation generatorImages reduction13230.relations [148,324] reduction13230.output := by lin_cert using reduction13230.terms
def image13231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13231 : InImage map_7_219 image13231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13231 : Bundle := named_bundle% "RealMapCertificates/relations/basis13231.json"
theorem reductionProof13231 : EqualModuloRelations reduction13231.relations reduction13231.input reduction13231.output := by lin_cert using reduction13231.terms
theorem substitutionProof13231 : IsMapEvaluation generatorImages reduction13231.relations [0,0,0,143,324] reduction13231.output := by lin_cert using reduction13231.terms
def map_7_220 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13381 : InImage map_7_220 image13381 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13381 : Bundle := named_bundle% "RealMapCertificates/relations/basis13381.json"
theorem reductionProof13381 : EqualModuloRelations reduction13381.relations reduction13381.input reduction13381.output := by lin_cert using reduction13381.terms
theorem substitutionProof13381 : IsMapEvaluation generatorImages reduction13381.relations [1565] reduction13381.output := by lin_cert using reduction13381.terms
def image13382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13382 : InImage map_7_220 image13382 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13382 : Bundle := named_bundle% "RealMapCertificates/relations/basis13382.json"
theorem reductionProof13382 : EqualModuloRelations reduction13382.relations reduction13382.input reduction13382.output := by lin_cert using reduction13382.terms
theorem substitutionProof13382 : IsMapEvaluation generatorImages reduction13382.relations [1,1,142,324] reduction13382.output := by lin_cert using reduction13382.terms
def map_7_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14146 : InImage map_7_224 image14146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14146 : Bundle := named_bundle% "RealMapCertificates/relations/basis14146.json"
theorem reductionProof14146 : EqualModuloRelations reduction14146.relations reduction14146.input reduction14146.output := by lin_cert using reduction14146.terms
theorem substitutionProof14146 : IsMapEvaluation generatorImages reduction14146.relations [1634] reduction14146.output := by lin_cert using reduction14146.terms
def map_7_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14347 : InImage map_7_225 image14347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14347 : Bundle := named_bundle% "RealMapCertificates/relations/basis14347.json"
theorem reductionProof14347 : EqualModuloRelations reduction14347.relations reduction14347.input reduction14347.output := by lin_cert using reduction14347.terms
theorem substitutionProof14347 : IsMapEvaluation generatorImages reduction14347.relations [7,7,70,324] reduction14347.output := by lin_cert using reduction14347.terms
def image14348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14348 : InImage map_7_225 image14348 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14348 : Bundle := named_bundle% "RealMapCertificates/relations/basis14348.json"
theorem reductionProof14348 : EqualModuloRelations reduction14348.relations reduction14348.input reduction14348.output := by lin_cert using reduction14348.terms
theorem substitutionProof14348 : IsMapEvaluation generatorImages reduction14348.relations [0,1635] reduction14348.output := by lin_cert using reduction14348.terms
def map_7_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14500 : InImage map_7_226 image14500 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14500 : Bundle := named_bundle% "RealMapCertificates/relations/basis14500.json"
theorem reductionProof14500 : EqualModuloRelations reduction14500.relations reduction14500.input reduction14500.output := by lin_cert using reduction14500.terms
theorem substitutionProof14500 : IsMapEvaluation generatorImages reduction14500.relations [0,0,18,1058] reduction14500.output := by lin_cert using reduction14500.terms
def map_7_228 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14944 : InImage map_7_228 image14944 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14944 : Bundle := named_bundle% "RealMapCertificates/relations/basis14944.json"
theorem reductionProof14944 : EqualModuloRelations reduction14944.relations reduction14944.input reduction14944.output := by lin_cert using reduction14944.terms
theorem substitutionProof14944 : IsMapEvaluation generatorImages reduction14944.relations [1714] reduction14944.output := by lin_cert using reduction14944.terms
def image14945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14945 : InImage map_7_228 image14945 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14945 : Bundle := named_bundle% "RealMapCertificates/relations/basis14945.json"
theorem reductionProof14945 : EqualModuloRelations reduction14945.relations reduction14945.input reduction14945.output := by lin_cert using reduction14945.terms
theorem substitutionProof14945 : IsMapEvaluation generatorImages reduction14945.relations [1,1,18,1058] reduction14945.output := by lin_cert using reduction14945.terms
def map_7_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15089 : InImage map_7_229 image15089 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15089 : Bundle := named_bundle% "RealMapCertificates/relations/basis15089.json"
theorem reductionProof15089 : EqualModuloRelations reduction15089.relations reduction15089.input reduction15089.output := by lin_cert using reduction15089.terms
theorem substitutionProof15089 : IsMapEvaluation generatorImages reduction15089.relations [0,1715] reduction15089.output := by lin_cert using reduction15089.terms
def image15090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15090 : InImage map_7_229 image15090 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15090 : Bundle := named_bundle% "RealMapCertificates/relations/basis15090.json"
theorem reductionProof15090 : EqualModuloRelations reduction15090.relations reduction15090.input reduction15090.output := by lin_cert using reduction15090.terms
theorem substitutionProof15090 : IsMapEvaluation generatorImages reduction15090.relations [0,2,18,1058] reduction15090.output := by lin_cert using reduction15090.terms
def map_7_230 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15325 : InImage map_7_230 image15325 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15325 : Bundle := named_bundle% "RealMapCertificates/relations/basis15325.json"
theorem reductionProof15325 : EqualModuloRelations reduction15325.relations reduction15325.input reduction15325.output := by lin_cert using reduction15325.terms
theorem substitutionProof15325 : IsMapEvaluation generatorImages reduction15325.relations [0,0,1716] reduction15325.output := by lin_cert using reduction15325.terms
def map_7_233 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15968 : InImage map_7_233 image15968 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15968 : Bundle := named_bundle% "RealMapCertificates/relations/basis15968.json"
theorem reductionProof15968 : EqualModuloRelations reduction15968.relations reduction15968.input reduction15968.output := by lin_cert using reduction15968.terms
theorem substitutionProof15968 : IsMapEvaluation generatorImages reduction15968.relations [0,3,18,1058] reduction15968.output := by lin_cert using reduction15968.terms
def map_7_234 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16229 : InImage map_7_234 image16229 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16229 : Bundle := named_bundle% "RealMapCertificates/relations/basis16229.json"
theorem reductionProof16229 : EqualModuloRelations reduction16229.relations reduction16229.input reduction16229.output := by lin_cert using reduction16229.terms
theorem substitutionProof16229 : IsMapEvaluation generatorImages reduction16229.relations [0,0,7,143,324] reduction16229.output := by lin_cert using reduction16229.terms
def map_7_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17093 : InImage map_7_238 image17093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17093 : Bundle := named_bundle% "RealMapCertificates/relations/basis17093.json"
theorem reductionProof17093 : EqualModuloRelations reduction17093.relations reduction17093.input reduction17093.output := by lin_cert using reduction17093.terms
theorem substitutionProof17093 : IsMapEvaluation generatorImages reduction17093.relations [1960] reduction17093.output := by lin_cert using reduction17093.terms
def map_7_240 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17651 : InImage map_7_240 image17651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17651 : Bundle := named_bundle% "RealMapCertificates/relations/basis17651.json"
theorem reductionProof17651 : EqualModuloRelations reduction17651.relations reduction17651.input reduction17651.output := by lin_cert using reduction17651.terms
theorem substitutionProof17651 : IsMapEvaluation generatorImages reduction17651.relations [231,324] reduction17651.output := by lin_cert using reduction17651.terms
def image17652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17652 : InImage map_7_240 image17652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17652 : Bundle := named_bundle% "RealMapCertificates/relations/basis17652.json"
theorem reductionProof17652 : EqualModuloRelations reduction17652.relations reduction17652.input reduction17652.output := by lin_cert using reduction17652.terms
theorem substitutionProof17652 : IsMapEvaluation generatorImages reduction17652.relations [7,1635] reduction17652.output := by lin_cert using reduction17652.terms
def map_7_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18114 : InImage map_7_242 image18114 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18114 : Bundle := named_bundle% "RealMapCertificates/relations/basis18114.json"
theorem reductionProof18114 : EqualModuloRelations reduction18114.relations reduction18114.input reduction18114.output := by lin_cert using reduction18114.terms
theorem substitutionProof18114 : IsMapEvaluation generatorImages reduction18114.relations [241,324] reduction18114.output := by lin_cert using reduction18114.terms
def map_7_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19391 : InImage map_7_247 image19391 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19391 : Bundle := named_bundle% "RealMapCertificates/relations/basis19391.json"
theorem reductionProof19391 : EqualModuloRelations reduction19391.relations reduction19391.input reduction19391.output := by lin_cert using reduction19391.terms
theorem substitutionProof19391 : IsMapEvaluation generatorImages reduction19391.relations [2273] reduction19391.output := by lin_cert using reduction19391.terms
def map_7_248 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19675 : InImage map_7_248 image19675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19675 : Bundle := named_bundle% "RealMapCertificates/relations/basis19675.json"
theorem reductionProof19675 : EqualModuloRelations reduction19675.relations reduction19675.input reduction19675.output := by lin_cert using reduction19675.terms
theorem substitutionProof19675 : IsMapEvaluation generatorImages reduction19675.relations [3,2034] reduction19675.output := by lin_cert using reduction19675.terms
def map_7_258 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22674 : InImage map_7_258 image22674 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22674 : Bundle := named_bundle% "RealMapCertificates/relations/basis22674.json"
theorem reductionProof22674 : EqualModuloRelations reduction22674.relations reduction22674.input reduction22674.output := by lin_cert using reduction22674.terms
theorem substitutionProof22674 : IsMapEvaluation generatorImages reduction22674.relations [2737] reduction22674.output := by lin_cert using reduction22674.terms
def map_7_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22986 : InImage map_7_259 image22986 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22986 : Bundle := named_bundle% "RealMapCertificates/relations/basis22986.json"
theorem reductionProof22986 : EqualModuloRelations reduction22986.relations reduction22986.input reduction22986.output := by lin_cert using reduction22986.terms
theorem substitutionProof22986 : IsMapEvaluation generatorImages reduction22986.relations [2788] reduction22986.output := by lin_cert using reduction22986.terms
def map_7_260 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image23394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23394 : InImage map_7_260 image23394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23394 : Bundle := named_bundle% "RealMapCertificates/relations/basis23394.json"
theorem reductionProof23394 : EqualModuloRelations reduction23394.relations reduction23394.input reduction23394.output := by lin_cert using reduction23394.terms
theorem substitutionProof23394 : IsMapEvaluation generatorImages reduction23394.relations [2855] reduction23394.output := by lin_cert using reduction23394.terms
def image23395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23395 : InImage map_7_260 image23395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23395 : Bundle := named_bundle% "RealMapCertificates/relations/basis23395.json"
theorem reductionProof23395 : EqualModuloRelations reduction23395.relations reduction23395.input reduction23395.output := by lin_cert using reduction23395.terms
theorem substitutionProof23395 : IsMapEvaluation generatorImages reduction23395.relations [2854] reduction23395.output := by lin_cert using reduction23395.terms
def image23396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23396 : InImage map_7_260 image23396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23396 : Bundle := named_bundle% "RealMapCertificates/relations/basis23396.json"
theorem reductionProof23396 : EqualModuloRelations reduction23396.relations reduction23396.input reduction23396.output := by lin_cert using reduction23396.terms
theorem substitutionProof23396 : IsMapEvaluation generatorImages reduction23396.relations [324,368] reduction23396.output := by lin_cert using reduction23396.terms
def map_7_261 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23814 : InImage map_7_261 image23814 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23814 : Bundle := named_bundle% "RealMapCertificates/relations/basis23814.json"
theorem reductionProof23814 : EqualModuloRelations reduction23814.relations reduction23814.input reduction23814.output := by lin_cert using reduction23814.terms
theorem substitutionProof23814 : IsMapEvaluation generatorImages reduction23814.relations [2913] reduction23814.output := by lin_cert using reduction23814.terms
def image23815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23815 : InImage map_7_261 image23815 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23815 : Bundle := named_bundle% "RealMapCertificates/relations/basis23815.json"
theorem reductionProof23815 : EqualModuloRelations reduction23815.relations reduction23815.input reduction23815.output := by lin_cert using reduction23815.terms
theorem substitutionProof23815 : IsMapEvaluation generatorImages reduction23815.relations [0,0,0,0,0,324,324] reduction23815.output := by lin_cert using reduction23815.terms
end RealMapCertificates
