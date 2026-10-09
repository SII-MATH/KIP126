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
  | 48 => []
  | 53 => []
  | 54 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 70 => []
  | 75 => []
  | 76 => []
  | 85 => []
  | 95 => []
  | 163 => []
  | 203 => []
  | 222 => []
  | 230 => []
  | 240 => []
  | 264 => []
  | 272 => []
  | 323 => []
  | 324 => []
  | 339 => []
  | 340 => []
  | 341 => []
  | 352 => []
  | 353 => []
  | 367 => []
  | 368 => []
  | 375 => []
  | 376 => []
  | 377 => []
  | 392 => []
  | 393 => []
  | 394 => []
  | 395 => []
  | 396 => []
  | 397 => []
  | 398 => []
  | 415 => []
  | 429 => []
  | 430 => []
  | 445 => []
  | 446 => []
  | 451 => []
  | 465 => []
  | 466 => []
  | 480 => []
  | 505 => []
  | 506 => []
  | 507 => []
  | 508 => []
  | 524 => []
  | 525 => []
  | 526 => []
  | 546 => []
  | 547 => []
  | 566 => []
  | 567 => []
  | 577 => []
  | 584 => []
  | 592 => []
  | 617 => []
  | 660 => []
  | 676 => []
  | 684 => []
  | 695 => []
  | 696 => []
  | 697 => []
  | _ => []
def map_8_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1734 : InImage map_8_114 image1734 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1734 : Bundle := named_bundle% "RealMapCertificates/relations/basis1734.json"
theorem reductionProof1734 : EqualModuloRelations reduction1734.relations reduction1734.input reduction1734.output := by lin_cert using reduction1734.terms
theorem substitutionProof1734 : IsMapEvaluation generatorImages reduction1734.relations [3,203] reduction1734.output := by lin_cert using reduction1734.terms
def map_8_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1766 : InImage map_8_115 image1766 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1766 : Bundle := named_bundle% "RealMapCertificates/relations/basis1766.json"
theorem reductionProof1766 : EqualModuloRelations reduction1766.relations reduction1766.input reduction1766.output := by lin_cert using reduction1766.terms
theorem substitutionProof1766 : IsMapEvaluation generatorImages reduction1766.relations [0,240] reduction1766.output := by lin_cert using reduction1766.terms
def map_8_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1842 : InImage map_8_117 image1842 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1842 : Bundle := named_bundle% "RealMapCertificates/relations/basis1842.json"
theorem reductionProof1842 : EqualModuloRelations reduction1842.relations reduction1842.input reduction1842.output := by lin_cert using reduction1842.terms
theorem substitutionProof1842 : IsMapEvaluation generatorImages reduction1842.relations [48,69] reduction1842.output := by lin_cert using reduction1842.terms
def map_8_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1881 : InImage map_8_118 image1881 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1881 : Bundle := named_bundle% "RealMapCertificates/relations/basis1881.json"
theorem reductionProof1881 : EqualModuloRelations reduction1881.relations reduction1881.input reduction1881.output := by lin_cert using reduction1881.terms
theorem substitutionProof1881 : IsMapEvaluation generatorImages reduction1881.relations [3,222] reduction1881.output := by lin_cert using reduction1881.terms
def map_8_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1913 : InImage map_8_119 image1913 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1913 : Bundle := named_bundle% "RealMapCertificates/relations/basis1913.json"
theorem reductionProof1913 : EqualModuloRelations reduction1913.relations reduction1913.input reduction1913.output := by lin_cert using reduction1913.terms
theorem substitutionProof1913 : IsMapEvaluation generatorImages reduction1913.relations [53,69] reduction1913.output := by lin_cert using reduction1913.terms
def map_8_120 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1964 : InImage map_8_120 image1964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1964 : Bundle := named_bundle% "RealMapCertificates/relations/basis1964.json"
theorem reductionProof1964 : EqualModuloRelations reduction1964.relations reduction1964.input reduction1964.output := by lin_cert using reduction1964.terms
theorem substitutionProof1964 : IsMapEvaluation generatorImages reduction1964.relations [272] reduction1964.output := by lin_cert using reduction1964.terms
def image1965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1965 : InImage map_8_120 image1965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1965 : Bundle := named_bundle% "RealMapCertificates/relations/basis1965.json"
theorem reductionProof1965 : EqualModuloRelations reduction1965.relations reduction1965.input reduction1965.output := by lin_cert using reduction1965.terms
theorem substitutionProof1965 : IsMapEvaluation generatorImages reduction1965.relations [3,230] reduction1965.output := by lin_cert using reduction1965.terms
def image1966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1966 : InImage map_8_120 image1966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1966 : Bundle := named_bundle% "RealMapCertificates/relations/basis1966.json"
theorem reductionProof1966 : EqualModuloRelations reduction1966.relations reduction1966.input reduction1966.output := by lin_cert using reduction1966.terms
theorem substitutionProof1966 : IsMapEvaluation generatorImages reduction1966.relations [0,264] reduction1966.output := by lin_cert using reduction1966.terms
def map_8_123 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2087 : InImage map_8_123 image2087 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2087 : Bundle := named_bundle% "RealMapCertificates/relations/basis2087.json"
theorem reductionProof2087 : EqualModuloRelations reduction2087.relations reduction2087.input reduction2087.output := by lin_cert using reduction2087.terms
theorem substitutionProof2087 : IsMapEvaluation generatorImages reduction2087.relations [2,264] reduction2087.output := by lin_cert using reduction2087.terms
def map_8_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2124 : InImage map_8_124 image2124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2124 : Bundle := named_bundle% "RealMapCertificates/relations/basis2124.json"
theorem reductionProof2124 : EqualModuloRelations reduction2124.relations reduction2124.input reduction2124.output := by lin_cert using reduction2124.terms
theorem substitutionProof2124 : IsMapEvaluation generatorImages reduction2124.relations [2,54,69] reduction2124.output := by lin_cert using reduction2124.terms
def map_8_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2311 : InImage map_8_128 image2311 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2311 : Bundle := named_bundle% "RealMapCertificates/relations/basis2311.json"
theorem reductionProof2311 : EqualModuloRelations reduction2311.relations reduction2311.input reduction2311.output := by lin_cert using reduction2311.terms
theorem substitutionProof2311 : IsMapEvaluation generatorImages reduction2311.relations [67,69] reduction2311.output := by lin_cert using reduction2311.terms
def map_8_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2379 : InImage map_8_129 image2379 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2379 : Bundle := named_bundle% "RealMapCertificates/relations/basis2379.json"
theorem reductionProof2379 : EqualModuloRelations reduction2379.relations reduction2379.input reduction2379.output := by lin_cert using reduction2379.terms
theorem substitutionProof2379 : IsMapEvaluation generatorImages reduction2379.relations [0,68,69] reduction2379.output := by lin_cert using reduction2379.terms
def map_8_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2433 : InImage map_8_130 image2433 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2433 : Bundle := named_bundle% "RealMapCertificates/relations/basis2433.json"
theorem reductionProof2433 : EqualModuloRelations reduction2433.relations reduction2433.input reduction2433.output := by lin_cert using reduction2433.terms
theorem substitutionProof2433 : IsMapEvaluation generatorImages reduction2433.relations [1,323] reduction2433.output := by lin_cert using reduction2433.terms
def map_8_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2488 : InImage map_8_131 image2488 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2488 : Bundle := named_bundle% "RealMapCertificates/relations/basis2488.json"
theorem reductionProof2488 : EqualModuloRelations reduction2488.relations reduction2488.input reduction2488.output := by lin_cert using reduction2488.terms
theorem substitutionProof2488 : IsMapEvaluation generatorImages reduction2488.relations [352] reduction2488.output := by lin_cert using reduction2488.terms
def map_8_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2571 : InImage map_8_132 image2571 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2571 : Bundle := named_bundle% "RealMapCertificates/relations/basis2571.json"
theorem reductionProof2571 : EqualModuloRelations reduction2571.relations reduction2571.input reduction2571.output := by lin_cert using reduction2571.terms
theorem substitutionProof2571 : IsMapEvaluation generatorImages reduction2571.relations [367] reduction2571.output := by lin_cert using reduction2571.terms
def map_8_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2629 : InImage map_8_133 image2629 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2629 : Bundle := named_bundle% "RealMapCertificates/relations/basis2629.json"
theorem reductionProof2629 : EqualModuloRelations reduction2629.relations reduction2629.input reduction2629.output := by lin_cert using reduction2629.terms
theorem substitutionProof2629 : IsMapEvaluation generatorImages reduction2629.relations [376] reduction2629.output := by lin_cert using reduction2629.terms
def image2630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2630 : InImage map_8_133 image2630 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2630 : Bundle := named_bundle% "RealMapCertificates/relations/basis2630.json"
theorem reductionProof2630 : EqualModuloRelations reduction2630.relations reduction2630.input reduction2630.output := by lin_cert using reduction2630.terms
theorem substitutionProof2630 : IsMapEvaluation generatorImages reduction2630.relations [375] reduction2630.output := by lin_cert using reduction2630.terms
def map_8_134 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image2700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2700 : InImage map_8_134 image2700 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction2700 : Bundle := named_bundle% "RealMapCertificates/relations/basis2700.json"
theorem reductionProof2700 : EqualModuloRelations reduction2700.relations reduction2700.input reduction2700.output := by lin_cert using reduction2700.terms
theorem substitutionProof2700 : IsMapEvaluation generatorImages reduction2700.relations [395] reduction2700.output := by lin_cert using reduction2700.terms
def image2701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2701 : InImage map_8_134 image2701 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction2701 : Bundle := named_bundle% "RealMapCertificates/relations/basis2701.json"
theorem reductionProof2701 : EqualModuloRelations reduction2701.relations reduction2701.input reduction2701.output := by lin_cert using reduction2701.terms
theorem substitutionProof2701 : IsMapEvaluation generatorImages reduction2701.relations [394] reduction2701.output := by lin_cert using reduction2701.terms
def image2702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2702 : InImage map_8_134 image2702 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction2702 : Bundle := named_bundle% "RealMapCertificates/relations/basis2702.json"
theorem reductionProof2702 : EqualModuloRelations reduction2702.relations reduction2702.input reduction2702.output := by lin_cert using reduction2702.terms
theorem substitutionProof2702 : IsMapEvaluation generatorImages reduction2702.relations [393] reduction2702.output := by lin_cert using reduction2702.terms
def image2703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2703 : InImage map_8_134 image2703 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction2703 : Bundle := named_bundle% "RealMapCertificates/relations/basis2703.json"
theorem reductionProof2703 : EqualModuloRelations reduction2703.relations reduction2703.input reduction2703.output := by lin_cert using reduction2703.terms
theorem substitutionProof2703 : IsMapEvaluation generatorImages reduction2703.relations [392] reduction2703.output := by lin_cert using reduction2703.terms
def image2704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2704 : InImage map_8_134 image2704 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction2704 : Bundle := named_bundle% "RealMapCertificates/relations/basis2704.json"
theorem reductionProof2704 : EqualModuloRelations reduction2704.relations reduction2704.input reduction2704.output := by lin_cert using reduction2704.terms
theorem substitutionProof2704 : IsMapEvaluation generatorImages reduction2704.relations [69,85] reduction2704.output := by lin_cert using reduction2704.terms
def image2705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2705 : InImage map_8_134 image2705 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction2705 : Bundle := named_bundle% "RealMapCertificates/relations/basis2705.json"
theorem reductionProof2705 : EqualModuloRelations reduction2705.relations reduction2705.input reduction2705.output := by lin_cert using reduction2705.terms
theorem substitutionProof2705 : IsMapEvaluation generatorImages reduction2705.relations [0,0,0,0,0,0,69,69] reduction2705.output := by lin_cert using reduction2705.terms
def map_8_135 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image2794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2794 : InImage map_8_135 image2794 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction2794 : Bundle := named_bundle% "RealMapCertificates/relations/basis2794.json"
theorem reductionProof2794 : EqualModuloRelations reduction2794.relations reduction2794.input reduction2794.output := by lin_cert using reduction2794.terms
theorem substitutionProof2794 : IsMapEvaluation generatorImages reduction2794.relations [415] reduction2794.output := by lin_cert using reduction2794.terms
def image2795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2795 : InImage map_8_135 image2795 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction2795 : Bundle := named_bundle% "RealMapCertificates/relations/basis2795.json"
theorem reductionProof2795 : EqualModuloRelations reduction2795.relations reduction2795.input reduction2795.output := by lin_cert using reduction2795.terms
theorem substitutionProof2795 : IsMapEvaluation generatorImages reduction2795.relations [2,353] reduction2795.output := by lin_cert using reduction2795.terms
def image2796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2796 : InImage map_8_135 image2796 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction2796 : Bundle := named_bundle% "RealMapCertificates/relations/basis2796.json"
theorem reductionProof2796 : EqualModuloRelations reduction2796.relations reduction2796.input reduction2796.output := by lin_cert using reduction2796.terms
theorem substitutionProof2796 : IsMapEvaluation generatorImages reduction2796.relations [2,69,75] reduction2796.output := by lin_cert using reduction2796.terms
def image2797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2797 : InImage map_8_135 image2797 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction2797 : Bundle := named_bundle% "RealMapCertificates/relations/basis2797.json"
theorem reductionProof2797 : EqualModuloRelations reduction2797.relations reduction2797.input reduction2797.output := by lin_cert using reduction2797.terms
theorem substitutionProof2797 : IsMapEvaluation generatorImages reduction2797.relations [0,397] reduction2797.output := by lin_cert using reduction2797.terms
def image2798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2798 : InImage map_8_135 image2798 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction2798 : Bundle := named_bundle% "RealMapCertificates/relations/basis2798.json"
theorem reductionProof2798 : EqualModuloRelations reduction2798.relations reduction2798.input reduction2798.output := by lin_cert using reduction2798.terms
theorem substitutionProof2798 : IsMapEvaluation generatorImages reduction2798.relations [0,396] reduction2798.output := by lin_cert using reduction2798.terms
def image2799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2799 : InImage map_8_135 image2799 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction2799 : Bundle := named_bundle% "RealMapCertificates/relations/basis2799.json"
theorem reductionProof2799 : EqualModuloRelations reduction2799.relations reduction2799.input reduction2799.output := by lin_cert using reduction2799.terms
theorem substitutionProof2799 : IsMapEvaluation generatorImages reduction2799.relations [0,0,377] reduction2799.output := by lin_cert using reduction2799.terms
def image2800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2800 : InImage map_8_135 image2800 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction2800 : Bundle := named_bundle% "RealMapCertificates/relations/basis2800.json"
theorem reductionProof2800 : EqualModuloRelations reduction2800.relations reduction2800.input reduction2800.output := by lin_cert using reduction2800.terms
theorem substitutionProof2800 : IsMapEvaluation generatorImages reduction2800.relations [0,0,0,0,0,0,0,324] reduction2800.output := by lin_cert using reduction2800.terms
def map_8_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2865 : InImage map_8_136 image2865 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2865 : Bundle := named_bundle% "RealMapCertificates/relations/basis2865.json"
theorem reductionProof2865 : EqualModuloRelations reduction2865.relations reduction2865.input reduction2865.output := by lin_cert using reduction2865.terms
theorem substitutionProof2865 : IsMapEvaluation generatorImages reduction2865.relations [3,68,69] reduction2865.output := by lin_cert using reduction2865.terms
def map_8_137 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2938 : InImage map_8_137 image2938 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2938 : Bundle := named_bundle% "RealMapCertificates/relations/basis2938.json"
theorem reductionProof2938 : EqualModuloRelations reduction2938.relations reduction2938.input reduction2938.output := by lin_cert using reduction2938.terms
theorem substitutionProof2938 : IsMapEvaluation generatorImages reduction2938.relations [429] reduction2938.output := by lin_cert using reduction2938.terms
def image2939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2939 : InImage map_8_137 image2939 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2939 : Bundle := named_bundle% "RealMapCertificates/relations/basis2939.json"
theorem reductionProof2939 : EqualModuloRelations reduction2939.relations reduction2939.input reduction2939.output := by lin_cert using reduction2939.terms
theorem substitutionProof2939 : IsMapEvaluation generatorImages reduction2939.relations [69,95] reduction2939.output := by lin_cert using reduction2939.terms
def map_8_138 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3030 : InImage map_8_138 image3030 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3030 : Bundle := named_bundle% "RealMapCertificates/relations/basis3030.json"
theorem reductionProof3030 : EqualModuloRelations reduction3030.relations reduction3030.input reduction3030.output := by lin_cert using reduction3030.terms
theorem substitutionProof3030 : IsMapEvaluation generatorImages reduction3030.relations [445] reduction3030.output := by lin_cert using reduction3030.terms
def image3031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3031 : InImage map_8_138 image3031 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3031 : Bundle := named_bundle% "RealMapCertificates/relations/basis3031.json"
theorem reductionProof3031 : EqualModuloRelations reduction3031.relations reduction3031.input reduction3031.output := by lin_cert using reduction3031.terms
theorem substitutionProof3031 : IsMapEvaluation generatorImages reduction3031.relations [2,396] reduction3031.output := by lin_cert using reduction3031.terms
def map_8_139 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3097 : InImage map_8_139 image3097 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3097 : Bundle := named_bundle% "RealMapCertificates/relations/basis3097.json"
theorem reductionProof3097 : EqualModuloRelations reduction3097.relations reduction3097.input reduction3097.output := by lin_cert using reduction3097.terms
theorem substitutionProof3097 : IsMapEvaluation generatorImages reduction3097.relations [451] reduction3097.output := by lin_cert using reduction3097.terms
def image3098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3098 : InImage map_8_139 image3098 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3098 : Bundle := named_bundle% "RealMapCertificates/relations/basis3098.json"
theorem reductionProof3098 : EqualModuloRelations reduction3098.relations reduction3098.input reduction3098.output := by lin_cert using reduction3098.terms
theorem substitutionProof3098 : IsMapEvaluation generatorImages reduction3098.relations [2,2,69,76] reduction3098.output := by lin_cert using reduction3098.terms
def image3099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3099 : InImage map_8_139 image3099 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3099 : Bundle := named_bundle% "RealMapCertificates/relations/basis3099.json"
theorem reductionProof3099 : EqualModuloRelations reduction3099.relations reduction3099.input reduction3099.output := by lin_cert using reduction3099.terms
theorem substitutionProof3099 : IsMapEvaluation generatorImages reduction3099.relations [0,3,339] reduction3099.output := by lin_cert using reduction3099.terms
def image3100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3100 : InImage map_8_139 image3100 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3100 : Bundle := named_bundle% "RealMapCertificates/relations/basis3100.json"
theorem reductionProof3100 : EqualModuloRelations reduction3100.relations reduction3100.input reduction3100.output := by lin_cert using reduction3100.terms
theorem substitutionProof3100 : IsMapEvaluation generatorImages reduction3100.relations [0,2,398] reduction3100.output := by lin_cert using reduction3100.terms
def map_8_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3185 : InImage map_8_140 image3185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3185 : Bundle := named_bundle% "RealMapCertificates/relations/basis3185.json"
theorem reductionProof3185 : EqualModuloRelations reduction3185.relations reduction3185.input reduction3185.output := by lin_cert using reduction3185.terms
theorem substitutionProof3185 : IsMapEvaluation generatorImages reduction3185.relations [466] reduction3185.output := by lin_cert using reduction3185.terms
def image3186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3186 : InImage map_8_140 image3186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3186 : Bundle := named_bundle% "RealMapCertificates/relations/basis3186.json"
theorem reductionProof3186 : EqualModuloRelations reduction3186.relations reduction3186.input reduction3186.output := by lin_cert using reduction3186.terms
theorem substitutionProof3186 : IsMapEvaluation generatorImages reduction3186.relations [465] reduction3186.output := by lin_cert using reduction3186.terms
def image3187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3187 : InImage map_8_140 image3187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3187 : Bundle := named_bundle% "RealMapCertificates/relations/basis3187.json"
theorem reductionProof3187 : EqualModuloRelations reduction3187.relations reduction3187.input reduction3187.output := by lin_cert using reduction3187.terms
theorem substitutionProof3187 : IsMapEvaluation generatorImages reduction3187.relations [2,2,368] reduction3187.output := by lin_cert using reduction3187.terms
def image3188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3188 : InImage map_8_140 image3188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3188 : Bundle := named_bundle% "RealMapCertificates/relations/basis3188.json"
theorem reductionProof3188 : EqualModuloRelations reduction3188.relations reduction3188.input reduction3188.output := by lin_cert using reduction3188.terms
theorem substitutionProof3188 : IsMapEvaluation generatorImages reduction3188.relations [0,0,446] reduction3188.output := by lin_cert using reduction3188.terms
def image3189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3189 : InImage map_8_140 image3189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3189 : Bundle := named_bundle% "RealMapCertificates/relations/basis3189.json"
theorem reductionProof3189 : EqualModuloRelations reduction3189.relations reduction3189.input reduction3189.output := by lin_cert using reduction3189.terms
theorem substitutionProof3189 : IsMapEvaluation generatorImages reduction3189.relations [0,0,3,340] reduction3189.output := by lin_cert using reduction3189.terms
def map_8_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3280 : InImage map_8_141 image3280 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3280 : Bundle := named_bundle% "RealMapCertificates/relations/basis3280.json"
theorem reductionProof3280 : EqualModuloRelations reduction3280.relations reduction3280.input reduction3280.output := by lin_cert using reduction3280.terms
theorem substitutionProof3280 : IsMapEvaluation generatorImages reduction3280.relations [480] reduction3280.output := by lin_cert using reduction3280.terms
def image3281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3281 : InImage map_8_141 image3281 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3281 : Bundle := named_bundle% "RealMapCertificates/relations/basis3281.json"
theorem reductionProof3281 : EqualModuloRelations reduction3281.relations reduction3281.input reduction3281.output := by lin_cert using reduction3281.terms
theorem substitutionProof3281 : IsMapEvaluation generatorImages reduction3281.relations [1,3,69,76] reduction3281.output := by lin_cert using reduction3281.terms
def map_8_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3351 : InImage map_8_142 image3351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3351 : Bundle := named_bundle% "RealMapCertificates/relations/basis3351.json"
theorem reductionProof3351 : EqualModuloRelations reduction3351.relations reduction3351.input reduction3351.output := by lin_cert using reduction3351.terms
theorem substitutionProof3351 : IsMapEvaluation generatorImages reduction3351.relations [3,397] reduction3351.output := by lin_cert using reduction3351.terms
def image3352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3352 : InImage map_8_142 image3352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3352 : Bundle := named_bundle% "RealMapCertificates/relations/basis3352.json"
theorem reductionProof3352 : EqualModuloRelations reduction3352.relations reduction3352.input reduction3352.output := by lin_cert using reduction3352.terms
theorem substitutionProof3352 : IsMapEvaluation generatorImages reduction3352.relations [3,396] reduction3352.output := by lin_cert using reduction3352.terms
def image3353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3353 : InImage map_8_142 image3353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3353 : Bundle := named_bundle% "RealMapCertificates/relations/basis3353.json"
theorem reductionProof3353 : EqualModuloRelations reduction3353.relations reduction3353.input reduction3353.output := by lin_cert using reduction3353.terms
theorem substitutionProof3353 : IsMapEvaluation generatorImages reduction3353.relations [1,1,446] reduction3353.output := by lin_cert using reduction3353.terms
def image3354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3354 : InImage map_8_142 image3354 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3354 : Bundle := named_bundle% "RealMapCertificates/relations/basis3354.json"
theorem reductionProof3354 : EqualModuloRelations reduction3354.relations reduction3354.input reduction3354.output := by lin_cert using reduction3354.terms
theorem substitutionProof3354 : IsMapEvaluation generatorImages reduction3354.relations [0,3,377] reduction3354.output := by lin_cert using reduction3354.terms
def map_8_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3437 : InImage map_8_143 image3437 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3437 : Bundle := named_bundle% "RealMapCertificates/relations/basis3437.json"
theorem reductionProof3437 : EqualModuloRelations reduction3437.relations reduction3437.input reduction3437.output := by lin_cert using reduction3437.terms
theorem substitutionProof3437 : IsMapEvaluation generatorImages reduction3437.relations [0,3,398] reduction3437.output := by lin_cert using reduction3437.terms
def map_8_144 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3524 : InImage map_8_144 image3524 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3524 : Bundle := named_bundle% "RealMapCertificates/relations/basis3524.json"
theorem reductionProof3524 : EqualModuloRelations reduction3524.relations reduction3524.input reduction3524.output := by lin_cert using reduction3524.terms
theorem substitutionProof3524 : IsMapEvaluation generatorImages reduction3524.relations [7,323] reduction3524.output := by lin_cert using reduction3524.terms
def image3525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3525 : InImage map_8_144 image3525 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3525 : Bundle := named_bundle% "RealMapCertificates/relations/basis3525.json"
theorem reductionProof3525 : EqualModuloRelations reduction3525.relations reduction3525.input reduction3525.output := by lin_cert using reduction3525.terms
theorem substitutionProof3525 : IsMapEvaluation generatorImages reduction3525.relations [1,5,69,69] reduction3525.output := by lin_cert using reduction3525.terms
def map_8_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3593 : InImage map_8_145 image3593 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3593 : Bundle := named_bundle% "RealMapCertificates/relations/basis3593.json"
theorem reductionProof3593 : EqualModuloRelations reduction3593.relations reduction3593.input reduction3593.output := by lin_cert using reduction3593.terms
theorem substitutionProof3593 : IsMapEvaluation generatorImages reduction3593.relations [0,6,69,69] reduction3593.output := by lin_cert using reduction3593.terms
def map_8_146 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3681 : InImage map_8_146 image3681 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3681 : Bundle := named_bundle% "RealMapCertificates/relations/basis3681.json"
theorem reductionProof3681 : EqualModuloRelations reduction3681.relations reduction3681.input reduction3681.output := by lin_cert using reduction3681.terms
theorem substitutionProof3681 : IsMapEvaluation generatorImages reduction3681.relations [524] reduction3681.output := by lin_cert using reduction3681.terms
def image3682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3682 : InImage map_8_146 image3682 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3682 : Bundle := named_bundle% "RealMapCertificates/relations/basis3682.json"
theorem reductionProof3682 : EqualModuloRelations reduction3682.relations reduction3682.input reduction3682.output := by lin_cert using reduction3682.terms
theorem substitutionProof3682 : IsMapEvaluation generatorImages reduction3682.relations [0,0,505] reduction3682.output := by lin_cert using reduction3682.terms
def image3683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3683 : InImage map_8_146 image3683 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3683 : Bundle := named_bundle% "RealMapCertificates/relations/basis3683.json"
theorem reductionProof3683 : EqualModuloRelations reduction3683.relations reduction3683.input reduction3683.output := by lin_cert using reduction3683.terms
theorem substitutionProof3683 : IsMapEvaluation generatorImages reduction3683.relations [0,0,6,324] reduction3683.output := by lin_cert using reduction3683.terms
def map_8_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3786 : InImage map_8_147 image3786 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3786 : Bundle := named_bundle% "RealMapCertificates/relations/basis3786.json"
theorem reductionProof3786 : EqualModuloRelations reduction3786.relations reduction3786.input reduction3786.output := by lin_cert using reduction3786.terms
theorem substitutionProof3786 : IsMapEvaluation generatorImages reduction3786.relations [7,353] reduction3786.output := by lin_cert using reduction3786.terms
def image3787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3787 : InImage map_8_147 image3787 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3787 : Bundle := named_bundle% "RealMapCertificates/relations/basis3787.json"
theorem reductionProof3787 : EqualModuloRelations reduction3787.relations reduction3787.input reduction3787.output := by lin_cert using reduction3787.terms
theorem substitutionProof3787 : IsMapEvaluation generatorImages reduction3787.relations [0,0,0,507] reduction3787.output := by lin_cert using reduction3787.terms
def image3788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3788 : InImage map_8_147 image3788 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3788 : Bundle := named_bundle% "RealMapCertificates/relations/basis3788.json"
theorem reductionProof3788 : EqualModuloRelations reduction3788.relations reduction3788.input reduction3788.output := by lin_cert using reduction3788.terms
theorem substitutionProof3788 : IsMapEvaluation generatorImages reduction3788.relations [0,0,0,506] reduction3788.output := by lin_cert using reduction3788.terms
def map_8_148 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3856 : InImage map_8_148 image3856 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3856 : Bundle := named_bundle% "RealMapCertificates/relations/basis3856.json"
theorem reductionProof3856 : EqualModuloRelations reduction3856.relations reduction3856.input reduction3856.output := by lin_cert using reduction3856.terms
theorem substitutionProof3856 : IsMapEvaluation generatorImages reduction3856.relations [547] reduction3856.output := by lin_cert using reduction3856.terms
def image3857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3857 : InImage map_8_148 image3857 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3857 : Bundle := named_bundle% "RealMapCertificates/relations/basis3857.json"
theorem reductionProof3857 : EqualModuloRelations reduction3857.relations reduction3857.input reduction3857.output := by lin_cert using reduction3857.terms
theorem substitutionProof3857 : IsMapEvaluation generatorImages reduction3857.relations [546] reduction3857.output := by lin_cert using reduction3857.terms
def image3858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3858 : InImage map_8_148 image3858 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3858 : Bundle := named_bundle% "RealMapCertificates/relations/basis3858.json"
theorem reductionProof3858 : EqualModuloRelations reduction3858.relations reduction3858.input reduction3858.output := by lin_cert using reduction3858.terms
theorem substitutionProof3858 : IsMapEvaluation generatorImages reduction3858.relations [1,525] reduction3858.output := by lin_cert using reduction3858.terms
def image3859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3859 : InImage map_8_148 image3859 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3859 : Bundle := named_bundle% "RealMapCertificates/relations/basis3859.json"
theorem reductionProof3859 : EqualModuloRelations reduction3859.relations reduction3859.input reduction3859.output := by lin_cert using reduction3859.terms
theorem substitutionProof3859 : IsMapEvaluation generatorImages reduction3859.relations [0,0,8,69,69] reduction3859.output := by lin_cert using reduction3859.terms
def map_8_149 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3941 : InImage map_8_149 image3941 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3941 : Bundle := named_bundle% "RealMapCertificates/relations/basis3941.json"
theorem reductionProof3941 : EqualModuloRelations reduction3941.relations reduction3941.input reduction3941.output := by lin_cert using reduction3941.terms
theorem substitutionProof3941 : IsMapEvaluation generatorImages reduction3941.relations [0,0,0,526] reduction3941.output := by lin_cert using reduction3941.terms
def map_8_150 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image4052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4052 : InImage map_8_150 image4052 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction4052 : Bundle := named_bundle% "RealMapCertificates/relations/basis4052.json"
theorem reductionProof4052 : EqualModuloRelations reduction4052.relations reduction4052.input reduction4052.output := by lin_cert using reduction4052.terms
theorem substitutionProof4052 : IsMapEvaluation generatorImages reduction4052.relations [567] reduction4052.output := by lin_cert using reduction4052.terms
def image4053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4053 : InImage map_8_150 image4053 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction4053 : Bundle := named_bundle% "RealMapCertificates/relations/basis4053.json"
theorem reductionProof4053 : EqualModuloRelations reduction4053.relations reduction4053.input reduction4053.output := by lin_cert using reduction4053.terms
theorem substitutionProof4053 : IsMapEvaluation generatorImages reduction4053.relations [566] reduction4053.output := by lin_cert using reduction4053.terms
def image4054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4054 : InImage map_8_150 image4054 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction4054 : Bundle := named_bundle% "RealMapCertificates/relations/basis4054.json"
theorem reductionProof4054 : EqualModuloRelations reduction4054.relations reduction4054.input reduction4054.output := by lin_cert using reduction4054.terms
theorem substitutionProof4054 : IsMapEvaluation generatorImages reduction4054.relations [7,396] reduction4054.output := by lin_cert using reduction4054.terms
def image4055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4055 : InImage map_8_150 image4055 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction4055 : Bundle := named_bundle% "RealMapCertificates/relations/basis4055.json"
theorem reductionProof4055 : EqualModuloRelations reduction4055.relations reduction4055.input reduction4055.output := by lin_cert using reduction4055.terms
theorem substitutionProof4055 : IsMapEvaluation generatorImages reduction4055.relations [3,3,398] reduction4055.output := by lin_cert using reduction4055.terms
def image4056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4056 : InImage map_8_150 image4056 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction4056 : Bundle := named_bundle% "RealMapCertificates/relations/basis4056.json"
theorem reductionProof4056 : EqualModuloRelations reduction4056.relations reduction4056.input reduction4056.output := by lin_cert using reduction4056.terms
theorem substitutionProof4056 : IsMapEvaluation generatorImages reduction4056.relations [2,525] reduction4056.output := by lin_cert using reduction4056.terms
def image4057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4057 : InImage map_8_150 image4057 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction4057 : Bundle := named_bundle% "RealMapCertificates/relations/basis4057.json"
theorem reductionProof4057 : EqualModuloRelations reduction4057.relations reduction4057.input reduction4057.output := by lin_cert using reduction4057.terms
theorem substitutionProof4057 : IsMapEvaluation generatorImages reduction4057.relations [1,1,8,69,69] reduction4057.output := by lin_cert using reduction4057.terms
def image4058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4058 : InImage map_8_150 image4058 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction4058 : Bundle := named_bundle% "RealMapCertificates/relations/basis4058.json"
theorem reductionProof4058 : EqualModuloRelations reduction4058.relations reduction4058.input reduction4058.output := by lin_cert using reduction4058.terms
theorem substitutionProof4058 : IsMapEvaluation generatorImages reduction4058.relations [0,0,0,0,0,0,7,324] reduction4058.output := by lin_cert using reduction4058.terms
def map_8_151 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4135 : InImage map_8_151 image4135 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4135 : Bundle := named_bundle% "RealMapCertificates/relations/basis4135.json"
theorem reductionProof4135 : EqualModuloRelations reduction4135.relations reduction4135.input reduction4135.output := by lin_cert using reduction4135.terms
theorem substitutionProof4135 : IsMapEvaluation generatorImages reduction4135.relations [18,264] reduction4135.output := by lin_cert using reduction4135.terms
def image4136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4136 : InImage map_8_151 image4136 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4136 : Bundle := named_bundle% "RealMapCertificates/relations/basis4136.json"
theorem reductionProof4136 : EqualModuloRelations reduction4136.relations reduction4136.input reduction4136.output := by lin_cert using reduction4136.terms
theorem substitutionProof4136 : IsMapEvaluation generatorImages reduction4136.relations [12,324] reduction4136.output := by lin_cert using reduction4136.terms
def image4137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4137 : InImage map_8_151 image4137 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4137 : Bundle := named_bundle% "RealMapCertificates/relations/basis4137.json"
theorem reductionProof4137 : EqualModuloRelations reduction4137.relations reduction4137.input reduction4137.output := by lin_cert using reduction4137.terms
theorem substitutionProof4137 : IsMapEvaluation generatorImages reduction4137.relations [0,7,398] reduction4137.output := by lin_cert using reduction4137.terms
def image4138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4138 : InImage map_8_151 image4138 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4138 : Bundle := named_bundle% "RealMapCertificates/relations/basis4138.json"
theorem reductionProof4138 : EqualModuloRelations reduction4138.relations reduction4138.input reduction4138.output := by lin_cert using reduction4138.terms
theorem substitutionProof4138 : IsMapEvaluation generatorImages reduction4138.relations [0,0,9,69,69] reduction4138.output := by lin_cert using reduction4138.terms
def map_8_152 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4224 : InImage map_8_152 image4224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4224 : Bundle := named_bundle% "RealMapCertificates/relations/basis4224.json"
theorem reductionProof4224 : EqualModuloRelations reduction4224.relations reduction4224.input reduction4224.output := by lin_cert using reduction4224.terms
theorem substitutionProof4224 : IsMapEvaluation generatorImages reduction4224.relations [577] reduction4224.output := by lin_cert using reduction4224.terms
def image4225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4225 : InImage map_8_152 image4225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4225 : Bundle := named_bundle% "RealMapCertificates/relations/basis4225.json"
theorem reductionProof4225 : EqualModuloRelations reduction4225.relations reduction4225.input reduction4225.output := by lin_cert using reduction4225.terms
theorem substitutionProof4225 : IsMapEvaluation generatorImages reduction4225.relations [2,7,368] reduction4225.output := by lin_cert using reduction4225.terms
def image4226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4226 : InImage map_8_152 image4226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4226 : Bundle := named_bundle% "RealMapCertificates/relations/basis4226.json"
theorem reductionProof4226 : EqualModuloRelations reduction4226.relations reduction4226.input reduction4226.output := by lin_cert using reduction4226.terms
theorem substitutionProof4226 : IsMapEvaluation generatorImages reduction4226.relations [0,0,0,9,324] reduction4226.output := by lin_cert using reduction4226.terms
def map_8_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4318 : InImage map_8_153 image4318 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4318 : Bundle := named_bundle% "RealMapCertificates/relations/basis4318.json"
theorem reductionProof4318 : EqualModuloRelations reduction4318.relations reduction4318.input reduction4318.output := by lin_cert using reduction4318.terms
theorem substitutionProof4318 : IsMapEvaluation generatorImages reduction4318.relations [7,430] reduction4318.output := by lin_cert using reduction4318.terms
def map_8_154 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4382 : InImage map_8_154 image4382 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4382 : Bundle := named_bundle% "RealMapCertificates/relations/basis4382.json"
theorem reductionProof4382 : EqualModuloRelations reduction4382.relations reduction4382.input reduction4382.output := by lin_cert using reduction4382.terms
theorem substitutionProof4382 : IsMapEvaluation generatorImages reduction4382.relations [13,341] reduction4382.output := by lin_cert using reduction4382.terms
def image4383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4383 : InImage map_8_154 image4383 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4383 : Bundle := named_bundle% "RealMapCertificates/relations/basis4383.json"
theorem reductionProof4383 : EqualModuloRelations reduction4383.relations reduction4383.input reduction4383.output := by lin_cert using reduction4383.terms
theorem substitutionProof4383 : IsMapEvaluation generatorImages reduction4383.relations [3,525] reduction4383.output := by lin_cert using reduction4383.terms
def image4384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4384 : InImage map_8_154 image4384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4384 : Bundle := named_bundle% "RealMapCertificates/relations/basis4384.json"
theorem reductionProof4384 : EqualModuloRelations reduction4384.relations reduction4384.input reduction4384.output := by lin_cert using reduction4384.terms
theorem substitutionProof4384 : IsMapEvaluation generatorImages reduction4384.relations [2,7,398] reduction4384.output := by lin_cert using reduction4384.terms
def image4385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4385 : InImage map_8_154 image4385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4385 : Bundle := named_bundle% "RealMapCertificates/relations/basis4385.json"
theorem reductionProof4385 : EqualModuloRelations reduction4385.relations reduction4385.input reduction4385.output := by lin_cert using reduction4385.terms
theorem substitutionProof4385 : IsMapEvaluation generatorImages reduction4385.relations [0,584] reduction4385.output := by lin_cert using reduction4385.terms
def image4386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4386 : InImage map_8_154 image4386 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4386 : Bundle := named_bundle% "RealMapCertificates/relations/basis4386.json"
theorem reductionProof4386 : EqualModuloRelations reduction4386.relations reduction4386.input reduction4386.output := by lin_cert using reduction4386.terms
theorem substitutionProof4386 : IsMapEvaluation generatorImages reduction4386.relations [0,0,3,506] reduction4386.output := by lin_cert using reduction4386.terms
def map_8_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4467 : InImage map_8_155 image4467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4467 : Bundle := named_bundle% "RealMapCertificates/relations/basis4467.json"
theorem reductionProof4467 : EqualModuloRelations reduction4467.relations reduction4467.input reduction4467.output := by lin_cert using reduction4467.terms
theorem substitutionProof4467 : IsMapEvaluation generatorImages reduction4467.relations [0,7,446] reduction4467.output := by lin_cert using reduction4467.terms
def map_8_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4581 : InImage map_8_156 image4581 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4581 : Bundle := named_bundle% "RealMapCertificates/relations/basis4581.json"
theorem reductionProof4581 : EqualModuloRelations reduction4581.relations reduction4581.input reduction4581.output := by lin_cert using reduction4581.terms
theorem substitutionProof4581 : IsMapEvaluation generatorImages reduction4581.relations [1,592] reduction4581.output := by lin_cert using reduction4581.terms
def image4582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4582 : InImage map_8_156 image4582 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4582 : Bundle := named_bundle% "RealMapCertificates/relations/basis4582.json"
theorem reductionProof4582 : EqualModuloRelations reduction4582.relations reduction4582.input reduction4582.output := by lin_cert using reduction4582.terms
theorem substitutionProof4582 : IsMapEvaluation generatorImages reduction4582.relations [1,7,446] reduction4582.output := by lin_cert using reduction4582.terms
def map_8_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4654 : InImage map_8_157 image4654 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4654 : Bundle := named_bundle% "RealMapCertificates/relations/basis4654.json"
theorem reductionProof4654 : EqualModuloRelations reduction4654.relations reduction4654.input reduction4654.output := by lin_cert using reduction4654.terms
theorem substitutionProof4654 : IsMapEvaluation generatorImages reduction4654.relations [0,617] reduction4654.output := by lin_cert using reduction4654.terms
def map_8_158 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4737 : InImage map_8_158 image4737 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4737 : Bundle := named_bundle% "RealMapCertificates/relations/basis4737.json"
theorem reductionProof4737 : EqualModuloRelations reduction4737.relations reduction4737.input reduction4737.output := by lin_cert using reduction4737.terms
theorem substitutionProof4737 : IsMapEvaluation generatorImages reduction4737.relations [17,324] reduction4737.output := by lin_cert using reduction4737.terms
def image4738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4738 : InImage map_8_158 image4738 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4738 : Bundle := named_bundle% "RealMapCertificates/relations/basis4738.json"
theorem reductionProof4738 : EqualModuloRelations reduction4738.relations reduction4738.input reduction4738.output := by lin_cert using reduction4738.terms
theorem substitutionProof4738 : IsMapEvaluation generatorImages reduction4738.relations [1,617] reduction4738.output := by lin_cert using reduction4738.terms
def map_8_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4912 : InImage map_8_160 image4912 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4912 : Bundle := named_bundle% "RealMapCertificates/relations/basis4912.json"
theorem reductionProof4912 : EqualModuloRelations reduction4912.relations reduction4912.input reduction4912.output := by lin_cert using reduction4912.terms
theorem substitutionProof4912 : IsMapEvaluation generatorImages reduction4912.relations [2,617] reduction4912.output := by lin_cert using reduction4912.terms
def map_8_161 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5000 : InImage map_8_161 image5000 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5000 : Bundle := named_bundle% "RealMapCertificates/relations/basis5000.json"
theorem reductionProof5000 : EqualModuloRelations reduction5000.relations reduction5000.input reduction5000.output := by lin_cert using reduction5000.terms
theorem substitutionProof5000 : IsMapEvaluation generatorImages reduction5000.relations [70,163] reduction5000.output := by lin_cert using reduction5000.terms
def image5001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5001 : InImage map_8_161 image5001 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5001 : Bundle := named_bundle% "RealMapCertificates/relations/basis5001.json"
theorem reductionProof5001 : EqualModuloRelations reduction5001.relations reduction5001.input reduction5001.output := by lin_cert using reduction5001.terms
theorem substitutionProof5001 : IsMapEvaluation generatorImages reduction5001.relations [20,324] reduction5001.output := by lin_cert using reduction5001.terms
def map_8_162 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5122 : InImage map_8_162 image5122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5122 : Bundle := named_bundle% "RealMapCertificates/relations/basis5122.json"
theorem reductionProof5122 : EqualModuloRelations reduction5122.relations reduction5122.input reduction5122.output := by lin_cert using reduction5122.terms
theorem substitutionProof5122 : IsMapEvaluation generatorImages reduction5122.relations [676] reduction5122.output := by lin_cert using reduction5122.terms
def map_8_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5200 : InImage map_8_163 image5200 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5200 : Bundle := named_bundle% "RealMapCertificates/relations/basis5200.json"
theorem reductionProof5200 : EqualModuloRelations reduction5200.relations reduction5200.input reduction5200.output := by lin_cert using reduction5200.terms
theorem substitutionProof5200 : IsMapEvaluation generatorImages reduction5200.relations [684] reduction5200.output := by lin_cert using reduction5200.terms
def image5201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5201 : InImage map_8_163 image5201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5201 : Bundle := named_bundle% "RealMapCertificates/relations/basis5201.json"
theorem reductionProof5201 : EqualModuloRelations reduction5201.relations reduction5201.input reduction5201.output := by lin_cert using reduction5201.terms
theorem substitutionProof5201 : IsMapEvaluation generatorImages reduction5201.relations [0,0,0,7,508] reduction5201.output := by lin_cert using reduction5201.terms
def map_8_164 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5293 : InImage map_8_164 image5293 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5293 : Bundle := named_bundle% "RealMapCertificates/relations/basis5293.json"
theorem reductionProof5293 : EqualModuloRelations reduction5293.relations reduction5293.input reduction5293.output := by lin_cert using reduction5293.terms
theorem substitutionProof5293 : IsMapEvaluation generatorImages reduction5293.relations [697] reduction5293.output := by lin_cert using reduction5293.terms
def image5294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5294 : InImage map_8_164 image5294 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5294 : Bundle := named_bundle% "RealMapCertificates/relations/basis5294.json"
theorem reductionProof5294 : EqualModuloRelations reduction5294.relations reduction5294.input reduction5294.output := by lin_cert using reduction5294.terms
theorem substitutionProof5294 : IsMapEvaluation generatorImages reduction5294.relations [696] reduction5294.output := by lin_cert using reduction5294.terms
def image5295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5295 : InImage map_8_164 image5295 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5295 : Bundle := named_bundle% "RealMapCertificates/relations/basis5295.json"
theorem reductionProof5295 : EqualModuloRelations reduction5295.relations reduction5295.input reduction5295.output := by lin_cert using reduction5295.terms
theorem substitutionProof5295 : IsMapEvaluation generatorImages reduction5295.relations [695] reduction5295.output := by lin_cert using reduction5295.terms
def image5296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5296 : InImage map_8_164 image5296 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5296 : Bundle := named_bundle% "RealMapCertificates/relations/basis5296.json"
theorem reductionProof5296 : EqualModuloRelations reduction5296.relations reduction5296.input reduction5296.output := by lin_cert using reduction5296.terms
theorem substitutionProof5296 : IsMapEvaluation generatorImages reduction5296.relations [22,324] reduction5296.output := by lin_cert using reduction5296.terms
def image5297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5297 : InImage map_8_164 image5297 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5297 : Bundle := named_bundle% "RealMapCertificates/relations/basis5297.json"
theorem reductionProof5297 : EqualModuloRelations reduction5297.relations reduction5297.input reduction5297.output := by lin_cert using reduction5297.terms
theorem substitutionProof5297 : IsMapEvaluation generatorImages reduction5297.relations [0,0,0,660] reduction5297.output := by lin_cert using reduction5297.terms
end RealMapCertificates
