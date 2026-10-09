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
  | 6 => [[2,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 12 => [[3,4]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 25 => []
  | 28 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 33 => []
  | 34 => []
  | 36 => []
  | 48 => []
  | 52 => []
  | 53 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 73 => []
  | 74 => []
  | 75 => []
  | 82 => []
  | 83 => []
  | 84 => []
  | 86 => []
  | 92 => []
  | 95 => []
  | 107 => []
  | 108 => []
  | 120 => []
  | 121 => []
  | 122 => []
  | 128 => []
  | 129 => []
  | 130 => []
  | 134 => []
  | 142 => []
  | 143 => []
  | 158 => []
  | 163 => []
  | 174 => []
  | 181 => []
  | 190 => []
  | 191 => []
  | 197 => []
  | 198 => []
  | 203 => []
  | 214 => []
  | 216 => []
  | 230 => []
  | _ => []
def map_8_8 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13 : InImage map_8_8 image13 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13 : Bundle := named_bundle% "RealMapCertificates/relations/basis13.json"
theorem reductionProof13 : EqualModuloRelations reduction13.relations reduction13.input reduction13.output := by lin_cert using reduction13.terms
theorem substitutionProof13 : IsMapEvaluation generatorImages reduction13.relations [0,0,0,0,0,0,0,0] reduction13.output := by lin_cert using reduction13.terms
def map_8_23 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image66 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation66 : InImage map_8_23 image66 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction66 : Bundle := named_bundle% "RealMapCertificates/relations/basis66.json"
theorem reductionProof66 : EqualModuloRelations reduction66.relations reduction66.input reduction66.output := by lin_cert using reduction66.terms
theorem substitutionProof66 : IsMapEvaluation generatorImages reduction66.relations [0,0,0,0,0,0,0,7] reduction66.output := by lin_cert using reduction66.terms
def map_8_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image75 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation75 : InImage map_8_25 image75 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction75 : Bundle := named_bundle% "RealMapCertificates/relations/basis75.json"
theorem reductionProof75 : EqualModuloRelations reduction75.relations reduction75.input reduction75.output := by lin_cert using reduction75.terms
theorem substitutionProof75 : IsMapEvaluation generatorImages reduction75.relations [1,12] reduction75.output := by lin_cert using reduction75.terms
def map_8_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image94 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation94 : InImage map_8_30 image94 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction94 : Bundle := named_bundle% "RealMapCertificates/relations/basis94.json"
theorem reductionProof94 : EqualModuloRelations reduction94.relations reduction94.input reduction94.output := by lin_cert using reduction94.terms
theorem substitutionProof94 : IsMapEvaluation generatorImages reduction94.relations [16] reduction94.output := by lin_cert using reduction94.terms
def map_8_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image98 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation98 : InImage map_8_31 image98 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction98 : Bundle := named_bundle% "RealMapCertificates/relations/basis98.json"
theorem reductionProof98 : EqualModuloRelations reduction98.relations reduction98.input reduction98.output := by lin_cert using reduction98.terms
theorem substitutionProof98 : IsMapEvaluation generatorImages reduction98.relations [0,17] reduction98.output := by lin_cert using reduction98.terms
def map_8_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image108 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation108 : InImage map_8_33 image108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction108 : Bundle := named_bundle% "RealMapCertificates/relations/basis108.json"
theorem reductionProof108 : EqualModuloRelations reduction108.relations reduction108.input reduction108.output := by lin_cert using reduction108.terms
theorem substitutionProof108 : IsMapEvaluation generatorImages reduction108.relations [19] reduction108.output := by lin_cert using reduction108.terms
def map_8_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image116 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation116 : InImage map_8_34 image116 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction116 : Bundle := named_bundle% "RealMapCertificates/relations/basis116.json"
theorem reductionProof116 : EqualModuloRelations reduction116.relations reduction116.input reduction116.output := by lin_cert using reduction116.terms
theorem substitutionProof116 : IsMapEvaluation generatorImages reduction116.relations [0,20] reduction116.output := by lin_cert using reduction116.terms
def map_8_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image130 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation130 : InImage map_8_36 image130 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction130 : Bundle := named_bundle% "RealMapCertificates/relations/basis130.json"
theorem reductionProof130 : EqualModuloRelations reduction130.relations reduction130.input reduction130.output := by lin_cert using reduction130.terms
theorem substitutionProof130 : IsMapEvaluation generatorImages reduction130.relations [8,8] reduction130.output := by lin_cert using reduction130.terms
def map_8_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image141 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation141 : InImage map_8_37 image141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction141 : Bundle := named_bundle% "RealMapCertificates/relations/basis141.json"
theorem reductionProof141 : EqualModuloRelations reduction141.relations reduction141.input reduction141.output := by lin_cert using reduction141.terms
theorem substitutionProof141 : IsMapEvaluation generatorImages reduction141.relations [0,22] reduction141.output := by lin_cert using reduction141.terms
def map_8_38 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation150 : InImage map_8_38 image150 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction150 : Bundle := named_bundle% "RealMapCertificates/relations/basis150.json"
theorem reductionProof150 : EqualModuloRelations reduction150.relations reduction150.input reduction150.output := by lin_cert using reduction150.terms
theorem substitutionProof150 : IsMapEvaluation generatorImages reduction150.relations [0,0,23] reduction150.output := by lin_cert using reduction150.terms
def map_8_39 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation157 : InImage map_8_39 image157 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction157 : Bundle := named_bundle% "RealMapCertificates/relations/basis157.json"
theorem reductionProof157 : EqualModuloRelations reduction157.relations reduction157.input reduction157.output := by lin_cert using reduction157.terms
theorem substitutionProof157 : IsMapEvaluation generatorImages reduction157.relations [8,9] reduction157.output := by lin_cert using reduction157.terms
def image158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation158 : InImage map_8_39 image158 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction158 : Bundle := named_bundle% "RealMapCertificates/relations/basis158.json"
theorem reductionProof158 : EqualModuloRelations reduction158.relations reduction158.input reduction158.output := by lin_cert using reduction158.terms
theorem substitutionProof158 : IsMapEvaluation generatorImages reduction158.relations [0,0,0,0,0,0,0,18] reduction158.output := by lin_cert using reduction158.terms
def map_8_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image166 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation166 : InImage map_8_40 image166 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction166 : Bundle := named_bundle% "RealMapCertificates/relations/basis166.json"
theorem reductionProof166 : EqualModuloRelations reduction166.relations reduction166.input reduction166.output := by lin_cert using reduction166.terms
theorem substitutionProof166 : IsMapEvaluation generatorImages reduction166.relations [0,29] reduction166.output := by lin_cert using reduction166.terms
def map_8_42 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image183 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation183 : InImage map_8_42 image183 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction183 : Bundle := named_bundle% "RealMapCertificates/relations/basis183.json"
theorem reductionProof183 : EqualModuloRelations reduction183.relations reduction183.input reduction183.output := by lin_cert using reduction183.terms
theorem substitutionProof183 : IsMapEvaluation generatorImages reduction183.relations [8,13] reduction183.output := by lin_cert using reduction183.terms
def map_8_43 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation194 : InImage map_8_43 image194 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction194 : Bundle := named_bundle% "RealMapCertificates/relations/basis194.json"
theorem reductionProof194 : EqualModuloRelations reduction194.relations reduction194.input reduction194.output := by lin_cert using reduction194.terms
theorem substitutionProof194 : IsMapEvaluation generatorImages reduction194.relations [0,32] reduction194.output := by lin_cert using reduction194.terms
def map_8_45 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image216 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation216 : InImage map_8_45 image216 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction216 : Bundle := named_bundle% "RealMapCertificates/relations/basis216.json"
theorem reductionProof216 : EqualModuloRelations reduction216.relations reduction216.input reduction216.output := by lin_cert using reduction216.terms
theorem substitutionProof216 : IsMapEvaluation generatorImages reduction216.relations [9,13] reduction216.output := by lin_cert using reduction216.terms
def image217 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation217 : InImage map_8_45 image217 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction217 : Bundle := named_bundle% "RealMapCertificates/relations/basis217.json"
theorem reductionProof217 : EqualModuloRelations reduction217.relations reduction217.input reduction217.output := by lin_cert using reduction217.terms
theorem substitutionProof217 : IsMapEvaluation generatorImages reduction217.relations [0,0,0,34] reduction217.output := by lin_cert using reduction217.terms
def map_8_46 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation228 : InImage map_8_46 image228 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction228 : Bundle := named_bundle% "RealMapCertificates/relations/basis228.json"
theorem reductionProof228 : EqualModuloRelations reduction228.relations reduction228.input reduction228.output := by lin_cert using reduction228.terms
theorem substitutionProof228 : IsMapEvaluation generatorImages reduction228.relations [0,0,36] reduction228.output := by lin_cert using reduction228.terms
def map_8_48 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image245 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation245 : InImage map_8_48 image245 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction245 : Bundle := named_bundle% "RealMapCertificates/relations/basis245.json"
theorem reductionProof245 : EqualModuloRelations reduction245.relations reduction245.input reduction245.output := by lin_cert using reduction245.terms
theorem substitutionProof245 : IsMapEvaluation generatorImages reduction245.relations [13,13] reduction245.output := by lin_cert using reduction245.terms
def map_8_50 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation262 : InImage map_8_50 image262 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction262 : Bundle := named_bundle% "RealMapCertificates/relations/basis262.json"
theorem reductionProof262 : EqualModuloRelations reduction262.relations reduction262.input reduction262.output := by lin_cert using reduction262.terms
theorem substitutionProof262 : IsMapEvaluation generatorImages reduction262.relations [0,0,6,18] reduction262.output := by lin_cert using reduction262.terms
def map_8_54 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation297 : InImage map_8_54 image297 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction297 : Bundle := named_bundle% "RealMapCertificates/relations/basis297.json"
theorem reductionProof297 : EqualModuloRelations reduction297.relations reduction297.input reduction297.output := by lin_cert using reduction297.terms
theorem substitutionProof297 : IsMapEvaluation generatorImages reduction297.relations [52] reduction297.output := by lin_cert using reduction297.terms
def map_8_55 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation307 : InImage map_8_55 image307 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction307 : Bundle := named_bundle% "RealMapCertificates/relations/basis307.json"
theorem reductionProof307 : EqualModuloRelations reduction307.relations reduction307.input reduction307.output := by lin_cert using reduction307.terms
theorem substitutionProof307 : IsMapEvaluation generatorImages reduction307.relations [12,18] reduction307.output := by lin_cert using reduction307.terms
def image308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation308 : InImage map_8_55 image308 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction308 : Bundle := named_bundle% "RealMapCertificates/relations/basis308.json"
theorem reductionProof308 : EqualModuloRelations reduction308.relations reduction308.input reduction308.output := by lin_cert using reduction308.terms
theorem substitutionProof308 : IsMapEvaluation generatorImages reduction308.relations [1,48] reduction308.output := by lin_cert using reduction308.terms
def map_8_56 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image318 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation318 : InImage map_8_56 image318 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction318 : Bundle := named_bundle% "RealMapCertificates/relations/basis318.json"
theorem reductionProof318 : EqualModuloRelations reduction318.relations reduction318.input reduction318.output := by lin_cert using reduction318.terms
theorem substitutionProof318 : IsMapEvaluation generatorImages reduction318.relations [0,53] reduction318.output := by lin_cert using reduction318.terms
def map_8_59 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation345 : InImage map_8_59 image345 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction345 : Bundle := named_bundle% "RealMapCertificates/relations/basis345.json"
theorem reductionProof345 : EqualModuloRelations reduction345.relations reduction345.input reduction345.output := by lin_cert using reduction345.terms
theorem substitutionProof345 : IsMapEvaluation generatorImages reduction345.relations [2,53] reduction345.output := by lin_cert using reduction345.terms
def map_8_60 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation357 : InImage map_8_60 image357 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction357 : Bundle := named_bundle% "RealMapCertificates/relations/basis357.json"
theorem reductionProof357 : EqualModuloRelations reduction357.relations reduction357.input reduction357.output := by lin_cert using reduction357.terms
theorem substitutionProof357 : IsMapEvaluation generatorImages reduction357.relations [13,25] reduction357.output := by lin_cert using reduction357.terms
def map_8_62 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation374 : InImage map_8_62 image374 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction374 : Bundle := named_bundle% "RealMapCertificates/relations/basis374.json"
theorem reductionProof374 : EqualModuloRelations reduction374.relations reduction374.input reduction374.output := by lin_cert using reduction374.terms
theorem substitutionProof374 : IsMapEvaluation generatorImages reduction374.relations [17,18] reduction374.output := by lin_cert using reduction374.terms
def map_8_65 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation412 : InImage map_8_65 image412 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction412 : Bundle := named_bundle% "RealMapCertificates/relations/basis412.json"
theorem reductionProof412 : EqualModuloRelations reduction412.relations reduction412.input reduction412.output := by lin_cert using reduction412.terms
theorem substitutionProof412 : IsMapEvaluation generatorImages reduction412.relations [18,20] reduction412.output := by lin_cert using reduction412.terms
def image413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation413 : InImage map_8_65 image413 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction413 : Bundle := named_bundle% "RealMapCertificates/relations/basis413.json"
theorem reductionProof413 : EqualModuloRelations reduction413.relations reduction413.input reduction413.output := by lin_cert using reduction413.terms
theorem substitutionProof413 : IsMapEvaluation generatorImages reduction413.relations [0,67] reduction413.output := by lin_cert using reduction413.terms
def map_8_66 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation434 : InImage map_8_66 image434 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction434 : Bundle := named_bundle% "RealMapCertificates/relations/basis434.json"
theorem reductionProof434 : EqualModuloRelations reduction434.relations reduction434.input reduction434.output := by lin_cert using reduction434.terms
theorem substitutionProof434 : IsMapEvaluation generatorImages reduction434.relations [0,0,68] reduction434.output := by lin_cert using reduction434.terms
def map_8_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation466 : InImage map_8_68 image466 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction466 : Bundle := named_bundle% "RealMapCertificates/relations/basis466.json"
theorem reductionProof466 : EqualModuloRelations reduction466.relations reduction466.input reduction466.output := by lin_cert using reduction466.terms
theorem substitutionProof466 : IsMapEvaluation generatorImages reduction466.relations [0,73] reduction466.output := by lin_cert using reduction466.terms
def map_8_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation491 : InImage map_8_69 image491 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction491 : Bundle := named_bundle% "RealMapCertificates/relations/basis491.json"
theorem reductionProof491 : EqualModuloRelations reduction491.relations reduction491.input reduction491.output := by lin_cert using reduction491.terms
theorem substitutionProof491 : IsMapEvaluation generatorImages reduction491.relations [0,0,74] reduction491.output := by lin_cert using reduction491.terms
def map_8_70 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation508 : InImage map_8_70 image508 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction508 : Bundle := named_bundle% "RealMapCertificates/relations/basis508.json"
theorem reductionProof508 : EqualModuloRelations reduction508.relations reduction508.input reduction508.output := by lin_cert using reduction508.terms
theorem substitutionProof508 : IsMapEvaluation generatorImages reduction508.relations [83] reduction508.output := by lin_cert using reduction508.terms
def image509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation509 : InImage map_8_70 image509 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction509 : Bundle := named_bundle% "RealMapCertificates/relations/basis509.json"
theorem reductionProof509 : EqualModuloRelations reduction509.relations reduction509.input reduction509.output := by lin_cert using reduction509.terms
theorem substitutionProof509 : IsMapEvaluation generatorImages reduction509.relations [82] reduction509.output := by lin_cert using reduction509.terms
def image510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation510 : InImage map_8_70 image510 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction510 : Bundle := named_bundle% "RealMapCertificates/relations/basis510.json"
theorem reductionProof510 : EqualModuloRelations reduction510.relations reduction510.input reduction510.output := by lin_cert using reduction510.terms
theorem substitutionProof510 : IsMapEvaluation generatorImages reduction510.relations [0,0,0,0,0,0,18,18] reduction510.output := by lin_cert using reduction510.terms
def map_8_71 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation529 : InImage map_8_71 image529 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction529 : Bundle := named_bundle% "RealMapCertificates/relations/basis529.json"
theorem reductionProof529 : EqualModuloRelations reduction529.relations reduction529.input reduction529.output := by lin_cert using reduction529.terms
theorem substitutionProof529 : IsMapEvaluation generatorImages reduction529.relations [0,84] reduction529.output := by lin_cert using reduction529.terms
def image530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation530 : InImage map_8_71 image530 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction530 : Bundle := named_bundle% "RealMapCertificates/relations/basis530.json"
theorem reductionProof530 : EqualModuloRelations reduction530.relations reduction530.input reduction530.output := by lin_cert using reduction530.terms
theorem substitutionProof530 : IsMapEvaluation generatorImages reduction530.relations [0,0,0,0,0,0,0,69] reduction530.output := by lin_cert using reduction530.terms
def map_8_72 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation553 : InImage map_8_72 image553 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction553 : Bundle := named_bundle% "RealMapCertificates/relations/basis553.json"
theorem reductionProof553 : EqualModuloRelations reduction553.relations reduction553.input reduction553.output := by lin_cert using reduction553.terms
theorem substitutionProof553 : IsMapEvaluation generatorImages reduction553.relations [3,67] reduction553.output := by lin_cert using reduction553.terms
def image554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation554 : InImage map_8_72 image554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction554 : Bundle := named_bundle% "RealMapCertificates/relations/basis554.json"
theorem reductionProof554 : EqualModuloRelations reduction554.relations reduction554.input reduction554.output := by lin_cert using reduction554.terms
theorem substitutionProof554 : IsMapEvaluation generatorImages reduction554.relations [0,2,75] reduction554.output := by lin_cert using reduction554.terms
def image555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation555 : InImage map_8_72 image555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction555 : Bundle := named_bundle% "RealMapCertificates/relations/basis555.json"
theorem reductionProof555 : EqualModuloRelations reduction555.relations reduction555.input reduction555.output := by lin_cert using reduction555.terms
theorem substitutionProof555 : IsMapEvaluation generatorImages reduction555.relations [0,0,86] reduction555.output := by lin_cert using reduction555.terms
def map_8_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation575 : InImage map_8_73 image575 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction575 : Bundle := named_bundle% "RealMapCertificates/relations/basis575.json"
theorem reductionProof575 : EqualModuloRelations reduction575.relations reduction575.input reduction575.output := by lin_cert using reduction575.terms
theorem substitutionProof575 : IsMapEvaluation generatorImages reduction575.relations [0,3,68] reduction575.output := by lin_cert using reduction575.terms
def map_8_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation599 : InImage map_8_74 image599 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction599 : Bundle := named_bundle% "RealMapCertificates/relations/basis599.json"
theorem reductionProof599 : EqualModuloRelations reduction599.relations reduction599.input reduction599.output := by lin_cert using reduction599.terms
theorem substitutionProof599 : IsMapEvaluation generatorImages reduction599.relations [0,95] reduction599.output := by lin_cert using reduction599.terms
def map_8_75 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation618 : InImage map_8_75 image618 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction618 : Bundle := named_bundle% "RealMapCertificates/relations/basis618.json"
theorem reductionProof618 : EqualModuloRelations reduction618.relations reduction618.input reduction618.output := by lin_cert using reduction618.terms
theorem substitutionProof618 : IsMapEvaluation generatorImages reduction618.relations [1,95] reduction618.output := by lin_cert using reduction618.terms
def map_8_76 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation640 : InImage map_8_76 image640 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction640 : Bundle := named_bundle% "RealMapCertificates/relations/basis640.json"
theorem reductionProof640 : EqualModuloRelations reduction640.relations reduction640.input reduction640.output := by lin_cert using reduction640.terms
theorem substitutionProof640 : IsMapEvaluation generatorImages reduction640.relations [107] reduction640.output := by lin_cert using reduction640.terms
def image641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation641 : InImage map_8_76 image641 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction641 : Bundle := named_bundle% "RealMapCertificates/relations/basis641.json"
theorem reductionProof641 : EqualModuloRelations reduction641.relations reduction641.input reduction641.output := by lin_cert using reduction641.terms
theorem substitutionProof641 : IsMapEvaluation generatorImages reduction641.relations [0,3,74] reduction641.output := by lin_cert using reduction641.terms
def map_8_77 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation659 : InImage map_8_77 image659 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction659 : Bundle := named_bundle% "RealMapCertificates/relations/basis659.json"
theorem reductionProof659 : EqualModuloRelations reduction659.relations reduction659.input reduction659.output := by lin_cert using reduction659.terms
theorem substitutionProof659 : IsMapEvaluation generatorImages reduction659.relations [108] reduction659.output := by lin_cert using reduction659.terms
def image660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation660 : InImage map_8_77 image660 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction660 : Bundle := named_bundle% "RealMapCertificates/relations/basis660.json"
theorem reductionProof660 : EqualModuloRelations reduction660.relations reduction660.input reduction660.output := by lin_cert using reduction660.terms
theorem substitutionProof660 : IsMapEvaluation generatorImages reduction660.relations [2,95] reduction660.output := by lin_cert using reduction660.terms
def map_8_78 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation690 : InImage map_8_78 image690 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction690 : Bundle := named_bundle% "RealMapCertificates/relations/basis690.json"
theorem reductionProof690 : EqualModuloRelations reduction690.relations reduction690.input reduction690.output := by lin_cert using reduction690.terms
theorem substitutionProof690 : IsMapEvaluation generatorImages reduction690.relations [3,84] reduction690.output := by lin_cert using reduction690.terms
def map_8_80 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation724 : InImage map_8_80 image724 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction724 : Bundle := named_bundle% "RealMapCertificates/relations/basis724.json"
theorem reductionProof724 : EqualModuloRelations reduction724.relations reduction724.input reduction724.output := by lin_cert using reduction724.terms
theorem substitutionProof724 : IsMapEvaluation generatorImages reduction724.relations [7,67] reduction724.output := by lin_cert using reduction724.terms
def image725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation725 : InImage map_8_80 image725 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction725 : Bundle := named_bundle% "RealMapCertificates/relations/basis725.json"
theorem reductionProof725 : EqualModuloRelations reduction725.relations reduction725.input reduction725.output := by lin_cert using reduction725.terms
theorem substitutionProof725 : IsMapEvaluation generatorImages reduction725.relations [3,3,68] reduction725.output := by lin_cert using reduction725.terms
def map_8_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation753 : InImage map_8_81 image753 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction753 : Bundle := named_bundle% "RealMapCertificates/relations/basis753.json"
theorem reductionProof753 : EqualModuloRelations reduction753.relations reduction753.input reduction753.output := by lin_cert using reduction753.terms
theorem substitutionProof753 : IsMapEvaluation generatorImages reduction753.relations [0,7,68] reduction753.output := by lin_cert using reduction753.terms
def map_8_82 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation773 : InImage map_8_82 image773 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction773 : Bundle := named_bundle% "RealMapCertificates/relations/basis773.json"
theorem reductionProof773 : EqualModuloRelations reduction773.relations reduction773.input reduction773.output := by lin_cert using reduction773.terms
theorem substitutionProof773 : IsMapEvaluation generatorImages reduction773.relations [120] reduction773.output := by lin_cert using reduction773.terms
def image774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation774 : InImage map_8_82 image774 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction774 : Bundle := named_bundle% "RealMapCertificates/relations/basis774.json"
theorem reductionProof774 : EqualModuloRelations reduction774.relations reduction774.input reduction774.output := by lin_cert using reduction774.terms
theorem substitutionProof774 : IsMapEvaluation generatorImages reduction774.relations [0,0,6,69] reduction774.output := by lin_cert using reduction774.terms
def map_8_83 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation793 : InImage map_8_83 image793 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction793 : Bundle := named_bundle% "RealMapCertificates/relations/basis793.json"
theorem reductionProof793 : EqualModuloRelations reduction793.relations reduction793.input reduction793.output := by lin_cert using reduction793.terms
theorem substitutionProof793 : IsMapEvaluation generatorImages reduction793.relations [4,92] reduction793.output := by lin_cert using reduction793.terms
def image794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation794 : InImage map_8_83 image794 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction794 : Bundle := named_bundle% "RealMapCertificates/relations/basis794.json"
theorem reductionProof794 : EqualModuloRelations reduction794.relations reduction794.input reduction794.output := by lin_cert using reduction794.terms
theorem substitutionProof794 : IsMapEvaluation generatorImages reduction794.relations [0,121] reduction794.output := by lin_cert using reduction794.terms
def map_8_84 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation823 : InImage map_8_84 image823 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction823 : Bundle := named_bundle% "RealMapCertificates/relations/basis823.json"
theorem reductionProof823 : EqualModuloRelations reduction823.relations reduction823.input reduction823.output := by lin_cert using reduction823.terms
theorem substitutionProof823 : IsMapEvaluation generatorImages reduction823.relations [1,121] reduction823.output := by lin_cert using reduction823.terms
def image824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation824 : InImage map_8_84 image824 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction824 : Bundle := named_bundle% "RealMapCertificates/relations/basis824.json"
theorem reductionProof824 : EqualModuloRelations reduction824.relations reduction824.input reduction824.output := by lin_cert using reduction824.terms
theorem substitutionProof824 : IsMapEvaluation generatorImages reduction824.relations [0,0,122] reduction824.output := by lin_cert using reduction824.terms
def map_8_85 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation850 : InImage map_8_85 image850 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction850 : Bundle := named_bundle% "RealMapCertificates/relations/basis850.json"
theorem reductionProof850 : EqualModuloRelations reduction850.relations reduction850.input reduction850.output := by lin_cert using reduction850.terms
theorem substitutionProof850 : IsMapEvaluation generatorImages reduction850.relations [134] reduction850.output := by lin_cert using reduction850.terms
def image851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation851 : InImage map_8_85 image851 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction851 : Bundle := named_bundle% "RealMapCertificates/relations/basis851.json"
theorem reductionProof851 : EqualModuloRelations reduction851.relations reduction851.input reduction851.output := by lin_cert using reduction851.terms
theorem substitutionProof851 : IsMapEvaluation generatorImages reduction851.relations [0,129] reduction851.output := by lin_cert using reduction851.terms
def image852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation852 : InImage map_8_85 image852 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction852 : Bundle := named_bundle% "RealMapCertificates/relations/basis852.json"
theorem reductionProof852 : EqualModuloRelations reduction852.relations reduction852.input reduction852.output := by lin_cert using reduction852.terms
theorem substitutionProof852 : IsMapEvaluation generatorImages reduction852.relations [0,128] reduction852.output := by lin_cert using reduction852.terms
def map_8_86 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation874 : InImage map_8_86 image874 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction874 : Bundle := named_bundle% "RealMapCertificates/relations/basis874.json"
theorem reductionProof874 : EqualModuloRelations reduction874.relations reduction874.input reduction874.output := by lin_cert using reduction874.terms
theorem substitutionProof874 : IsMapEvaluation generatorImages reduction874.relations [1,1,122] reduction874.output := by lin_cert using reduction874.terms
def image875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation875 : InImage map_8_86 image875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction875 : Bundle := named_bundle% "RealMapCertificates/relations/basis875.json"
theorem reductionProof875 : EqualModuloRelations reduction875.relations reduction875.input reduction875.output := by lin_cert using reduction875.terms
theorem substitutionProof875 : IsMapEvaluation generatorImages reduction875.relations [0,0,130] reduction875.output := by lin_cert using reduction875.terms
def image876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation876 : InImage map_8_86 image876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction876 : Bundle := named_bundle% "RealMapCertificates/relations/basis876.json"
theorem reductionProof876 : EqualModuloRelations reduction876.relations reduction876.input reduction876.output := by lin_cert using reduction876.terms
theorem substitutionProof876 : IsMapEvaluation generatorImages reduction876.relations [0,0,0,0,0,0,7,69] reduction876.output := by lin_cert using reduction876.terms
def map_8_87 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation904 : InImage map_8_87 image904 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction904 : Bundle := named_bundle% "RealMapCertificates/relations/basis904.json"
theorem reductionProof904 : EqualModuloRelations reduction904.relations reduction904.input reduction904.output := by lin_cert using reduction904.terms
theorem substitutionProof904 : IsMapEvaluation generatorImages reduction904.relations [12,69] reduction904.output := by lin_cert using reduction904.terms
def image905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation905 : InImage map_8_87 image905 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction905 : Bundle := named_bundle% "RealMapCertificates/relations/basis905.json"
theorem reductionProof905 : EqualModuloRelations reduction905.relations reduction905.input reduction905.output := by lin_cert using reduction905.terms
theorem substitutionProof905 : IsMapEvaluation generatorImages reduction905.relations [0,2,122] reduction905.output := by lin_cert using reduction905.terms
def map_8_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation926 : InImage map_8_88 image926 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction926 : Bundle := named_bundle% "RealMapCertificates/relations/basis926.json"
theorem reductionProof926 : EqualModuloRelations reduction926.relations reduction926.input reduction926.output := by lin_cert using reduction926.terms
theorem substitutionProof926 : IsMapEvaluation generatorImages reduction926.relations [0,0,0,9,69] reduction926.output := by lin_cert using reduction926.terms
def map_8_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation952 : InImage map_8_89 image952 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction952 : Bundle := named_bundle% "RealMapCertificates/relations/basis952.json"
theorem reductionProof952 : EqualModuloRelations reduction952.relations reduction952.input reduction952.output := by lin_cert using reduction952.terms
theorem substitutionProof952 : IsMapEvaluation generatorImages reduction952.relations [7,95] reduction952.output := by lin_cert using reduction952.terms
def map_8_90 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation984 : InImage map_8_90 image984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction984 : Bundle := named_bundle% "RealMapCertificates/relations/basis984.json"
theorem reductionProof984 : EqualModuloRelations reduction984.relations reduction984.input reduction984.output := by lin_cert using reduction984.terms
theorem substitutionProof984 : IsMapEvaluation generatorImages reduction984.relations [3,121] reduction984.output := by lin_cert using reduction984.terms
def image985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation985 : InImage map_8_90 image985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction985 : Bundle := named_bundle% "RealMapCertificates/relations/basis985.json"
theorem reductionProof985 : EqualModuloRelations reduction985.relations reduction985.input reduction985.output := by lin_cert using reduction985.terms
theorem substitutionProof985 : IsMapEvaluation generatorImages reduction985.relations [0,0,7,92] reduction985.output := by lin_cert using reduction985.terms
def map_8_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1033 : InImage map_8_92 image1033 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1033 : Bundle := named_bundle% "RealMapCertificates/relations/basis1033.json"
theorem reductionProof1033 : EqualModuloRelations reduction1033.relations reduction1033.input reduction1033.output := by lin_cert using reduction1033.terms
theorem substitutionProof1033 : IsMapEvaluation generatorImages reduction1033.relations [0,0,0,0,142] reduction1033.output := by lin_cert using reduction1033.terms
def map_8_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1064 : InImage map_8_93 image1064 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1064 : Bundle := named_bundle% "RealMapCertificates/relations/basis1064.json"
theorem reductionProof1064 : EqualModuloRelations reduction1064.relations reduction1064.input reduction1064.output := by lin_cert using reduction1064.terms
theorem substitutionProof1064 : IsMapEvaluation generatorImages reduction1064.relations [0,0,0,0,0,143] reduction1064.output := by lin_cert using reduction1064.terms
def map_8_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1089 : InImage map_8_94 image1089 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1089 : Bundle := named_bundle% "RealMapCertificates/relations/basis1089.json"
theorem reductionProof1089 : EqualModuloRelations reduction1089.relations reduction1089.input reduction1089.output := by lin_cert using reduction1089.terms
theorem substitutionProof1089 : IsMapEvaluation generatorImages reduction1089.relations [17,69] reduction1089.output := by lin_cert using reduction1089.terms
def map_8_96 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1137 : InImage map_8_96 image1137 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1137 : Bundle := named_bundle% "RealMapCertificates/relations/basis1137.json"
theorem reductionProof1137 : EqualModuloRelations reduction1137.relations reduction1137.input reduction1137.output := by lin_cert using reduction1137.terms
theorem substitutionProof1137 : IsMapEvaluation generatorImages reduction1137.relations [7,7,68] reduction1137.output := by lin_cert using reduction1137.terms
def image1138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1138 : InImage map_8_96 image1138 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1138 : Bundle := named_bundle% "RealMapCertificates/relations/basis1138.json"
theorem reductionProof1138 : EqualModuloRelations reduction1138.relations reduction1138.input reduction1138.output := by lin_cert using reduction1138.terms
theorem substitutionProof1138 : IsMapEvaluation generatorImages reduction1138.relations [1,158] reduction1138.output := by lin_cert using reduction1138.terms
def map_8_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1157 : InImage map_8_97 image1157 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1157 : Bundle := named_bundle% "RealMapCertificates/relations/basis1157.json"
theorem reductionProof1157 : EqualModuloRelations reduction1157.relations reduction1157.input reduction1157.output := by lin_cert using reduction1157.terms
theorem substitutionProof1157 : IsMapEvaluation generatorImages reduction1157.relations [20,69] reduction1157.output := by lin_cert using reduction1157.terms
def map_8_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1210 : InImage map_8_99 image1210 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1210 : Bundle := named_bundle% "RealMapCertificates/relations/basis1210.json"
theorem reductionProof1210 : EqualModuloRelations reduction1210.relations reduction1210.input reduction1210.output := by lin_cert using reduction1210.terms
theorem substitutionProof1210 : IsMapEvaluation generatorImages reduction1210.relations [174] reduction1210.output := by lin_cert using reduction1210.terms
def map_8_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1239 : InImage map_8_100 image1239 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1239 : Bundle := named_bundle% "RealMapCertificates/relations/basis1239.json"
theorem reductionProof1239 : EqualModuloRelations reduction1239.relations reduction1239.input reduction1239.output := by lin_cert using reduction1239.terms
theorem substitutionProof1239 : IsMapEvaluation generatorImages reduction1239.relations [22,69] reduction1239.output := by lin_cert using reduction1239.terms
def image1240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1240 : InImage map_8_100 image1240 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1240 : Bundle := named_bundle% "RealMapCertificates/relations/basis1240.json"
theorem reductionProof1240 : EqualModuloRelations reduction1240.relations reduction1240.input reduction1240.output := by lin_cert using reduction1240.terms
theorem substitutionProof1240 : IsMapEvaluation generatorImages reduction1240.relations [0,0,0,0,163] reduction1240.output := by lin_cert using reduction1240.terms
def map_8_101 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1267 : InImage map_8_101 image1267 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1267 : Bundle := named_bundle% "RealMapCertificates/relations/basis1267.json"
theorem reductionProof1267 : EqualModuloRelations reduction1267.relations reduction1267.input reduction1267.output := by lin_cert using reduction1267.terms
theorem substitutionProof1267 : IsMapEvaluation generatorImages reduction1267.relations [181] reduction1267.output := by lin_cert using reduction1267.terms
def image1268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1268 : InImage map_8_101 image1268 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1268 : Bundle := named_bundle% "RealMapCertificates/relations/basis1268.json"
theorem reductionProof1268 : EqualModuloRelations reduction1268.relations reduction1268.input reduction1268.output := by lin_cert using reduction1268.terms
theorem substitutionProof1268 : IsMapEvaluation generatorImages reduction1268.relations [0,23,69] reduction1268.output := by lin_cert using reduction1268.terms
def map_8_102 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1308 : InImage map_8_102 image1308 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1308 : Bundle := named_bundle% "RealMapCertificates/relations/basis1308.json"
theorem reductionProof1308 : EqualModuloRelations reduction1308.relations reduction1308.input reduction1308.output := by lin_cert using reduction1308.terms
theorem substitutionProof1308 : IsMapEvaluation generatorImages reduction1308.relations [190] reduction1308.output := by lin_cert using reduction1308.terms
def map_8_103 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1338 : InImage map_8_103 image1338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1338 : Bundle := named_bundle% "RealMapCertificates/relations/basis1338.json"
theorem reductionProof1338 : EqualModuloRelations reduction1338.relations reduction1338.input reduction1338.output := by lin_cert using reduction1338.terms
theorem substitutionProof1338 : IsMapEvaluation generatorImages reduction1338.relations [29,69] reduction1338.output := by lin_cert using reduction1338.terms
def image1339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1339 : InImage map_8_103 image1339 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1339 : Bundle := named_bundle% "RealMapCertificates/relations/basis1339.json"
theorem reductionProof1339 : EqualModuloRelations reduction1339.relations reduction1339.input reduction1339.output := by lin_cert using reduction1339.terms
theorem substitutionProof1339 : IsMapEvaluation generatorImages reduction1339.relations [0,191] reduction1339.output := by lin_cert using reduction1339.terms
def map_8_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1366 : InImage map_8_104 image1366 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1366 : Bundle := named_bundle% "RealMapCertificates/relations/basis1366.json"
theorem reductionProof1366 : EqualModuloRelations reduction1366.relations reduction1366.input reduction1366.output := by lin_cert using reduction1366.terms
theorem substitutionProof1366 : IsMapEvaluation generatorImages reduction1366.relations [197] reduction1366.output := by lin_cert using reduction1366.terms
def image1367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1367 : InImage map_8_104 image1367 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1367 : Bundle := named_bundle% "RealMapCertificates/relations/basis1367.json"
theorem reductionProof1367 : EqualModuloRelations reduction1367.relations reduction1367.input reduction1367.output := by lin_cert using reduction1367.terms
theorem substitutionProof1367 : IsMapEvaluation generatorImages reduction1367.relations [1,28,69] reduction1367.output := by lin_cert using reduction1367.terms
def map_8_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1407 : InImage map_8_105 image1407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1407 : Bundle := named_bundle% "RealMapCertificates/relations/basis1407.json"
theorem reductionProof1407 : EqualModuloRelations reduction1407.relations reduction1407.input reduction1407.output := by lin_cert using reduction1407.terms
theorem substitutionProof1407 : IsMapEvaluation generatorImages reduction1407.relations [0,198] reduction1407.output := by lin_cert using reduction1407.terms
def map_8_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1438 : InImage map_8_106 image1438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1438 : Bundle := named_bundle% "RealMapCertificates/relations/basis1438.json"
theorem reductionProof1438 : EqualModuloRelations reduction1438.relations reduction1438.input reduction1438.output := by lin_cert using reduction1438.terms
theorem substitutionProof1438 : IsMapEvaluation generatorImages reduction1438.relations [32,69] reduction1438.output := by lin_cert using reduction1438.terms
def image1439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1439 : InImage map_8_106 image1439 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1439 : Bundle := named_bundle% "RealMapCertificates/relations/basis1439.json"
theorem reductionProof1439 : EqualModuloRelations reduction1439.relations reduction1439.input reduction1439.output := by lin_cert using reduction1439.terms
theorem substitutionProof1439 : IsMapEvaluation generatorImages reduction1439.relations [2,191] reduction1439.output := by lin_cert using reduction1439.terms
def map_8_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1466 : InImage map_8_107 image1466 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1466 : Bundle := named_bundle% "RealMapCertificates/relations/basis1466.json"
theorem reductionProof1466 : EqualModuloRelations reduction1466.relations reduction1466.input reduction1466.output := by lin_cert using reduction1466.terms
theorem substitutionProof1466 : IsMapEvaluation generatorImages reduction1466.relations [0,203] reduction1466.output := by lin_cert using reduction1466.terms
def map_8_108 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image1510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1510 : InImage map_8_108 image1510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1510 : Bundle := named_bundle% "RealMapCertificates/relations/basis1510.json"
theorem reductionProof1510 : EqualModuloRelations reduction1510.relations reduction1510.input reduction1510.output := by lin_cert using reduction1510.terms
theorem substitutionProof1510 : IsMapEvaluation generatorImages reduction1510.relations [2,198] reduction1510.output := by lin_cert using reduction1510.terms
def image1511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1511 : InImage map_8_108 image1511 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1511 : Bundle := named_bundle% "RealMapCertificates/relations/basis1511.json"
theorem reductionProof1511 : EqualModuloRelations reduction1511.relations reduction1511.input reduction1511.output := by lin_cert using reduction1511.terms
theorem substitutionProof1511 : IsMapEvaluation generatorImages reduction1511.relations [1,203] reduction1511.output := by lin_cert using reduction1511.terms
def image1512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1512 : InImage map_8_108 image1512 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1512 : Bundle := named_bundle% "RealMapCertificates/relations/basis1512.json"
theorem reductionProof1512 : EqualModuloRelations reduction1512.relations reduction1512.input reduction1512.output := by lin_cert using reduction1512.terms
theorem substitutionProof1512 : IsMapEvaluation generatorImages reduction1512.relations [1,33,69] reduction1512.output := by lin_cert using reduction1512.terms
def image1513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1513 : InImage map_8_108 image1513 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1513 : Bundle := named_bundle% "RealMapCertificates/relations/basis1513.json"
theorem reductionProof1513 : EqualModuloRelations reduction1513.relations reduction1513.input reduction1513.output := by lin_cert using reduction1513.terms
theorem substitutionProof1513 : IsMapEvaluation generatorImages reduction1513.relations [0,0,34,69] reduction1513.output := by lin_cert using reduction1513.terms
def map_8_109 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1547 : InImage map_8_109 image1547 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1547 : Bundle := named_bundle% "RealMapCertificates/relations/basis1547.json"
theorem reductionProof1547 : EqualModuloRelations reduction1547.relations reduction1547.input reduction1547.output := by lin_cert using reduction1547.terms
theorem substitutionProof1547 : IsMapEvaluation generatorImages reduction1547.relations [216] reduction1547.output := by lin_cert using reduction1547.terms
def image1548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1548 : InImage map_8_109 image1548 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1548 : Bundle := named_bundle% "RealMapCertificates/relations/basis1548.json"
theorem reductionProof1548 : EqualModuloRelations reduction1548.relations reduction1548.input reduction1548.output := by lin_cert using reduction1548.terms
theorem substitutionProof1548 : IsMapEvaluation generatorImages reduction1548.relations [0,36,69] reduction1548.output := by lin_cert using reduction1548.terms
def map_8_110 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1582 : InImage map_8_110 image1582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1582 : Bundle := named_bundle% "RealMapCertificates/relations/basis1582.json"
theorem reductionProof1582 : EqualModuloRelations reduction1582.relations reduction1582.input reduction1582.output := by lin_cert using reduction1582.terms
theorem substitutionProof1582 : IsMapEvaluation generatorImages reduction1582.relations [3,191] reduction1582.output := by lin_cert using reduction1582.terms
def image1583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1583 : InImage map_8_110 image1583 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1583 : Bundle := named_bundle% "RealMapCertificates/relations/basis1583.json"
theorem reductionProof1583 : EqualModuloRelations reduction1583.relations reduction1583.input reduction1583.output := by lin_cert using reduction1583.terms
theorem substitutionProof1583 : IsMapEvaluation generatorImages reduction1583.relations [1,214] reduction1583.output := by lin_cert using reduction1583.terms
def image1584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1584 : InImage map_8_110 image1584 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1584 : Bundle := named_bundle% "RealMapCertificates/relations/basis1584.json"
theorem reductionProof1584 : EqualModuloRelations reduction1584.relations reduction1584.input reduction1584.output := by lin_cert using reduction1584.terms
theorem substitutionProof1584 : IsMapEvaluation generatorImages reduction1584.relations [1,36,69] reduction1584.output := by lin_cert using reduction1584.terms
def map_8_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1663 : InImage map_8_112 image1663 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1663 : Bundle := named_bundle% "RealMapCertificates/relations/basis1663.json"
theorem reductionProof1663 : EqualModuloRelations reduction1663.relations reduction1663.input reduction1663.output := by lin_cert using reduction1663.terms
theorem substitutionProof1663 : IsMapEvaluation generatorImages reduction1663.relations [3,198] reduction1663.output := by lin_cert using reduction1663.terms
def map_8_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1696 : InImage map_8_113 image1696 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1696 : Bundle := named_bundle% "RealMapCertificates/relations/basis1696.json"
theorem reductionProof1696 : EqualModuloRelations reduction1696.relations reduction1696.input reduction1696.output := by lin_cert using reduction1696.terms
theorem substitutionProof1696 : IsMapEvaluation generatorImages reduction1696.relations [0,230] reduction1696.output := by lin_cert using reduction1696.terms
end RealMapCertificates
