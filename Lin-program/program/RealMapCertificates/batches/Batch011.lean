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
  | 18 => []
  | 23 => [[7,7]]
  | 24 => []
  | 28 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 33 => []
  | 34 => []
  | 36 => []
  | 43 => []
  | 48 => []
  | 53 => []
  | 54 => []
  | 61 => []
  | 67 => []
  | 68 => []
  | 69 => []
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
  | 324 => []
  | 368 => []
  | 378 => []
  | 398 => []
  | 446 => []
  | 506 => []
  | 525 => []
  | 617 => []
  | 660 => []
  | 698 => []
  | 699 => []
  | 720 => []
  | 747 => []
  | 748 => []
  | 749 => []
  | 750 => []
  | 751 => []
  | 776 => []
  | 794 => []
  | 819 => []
  | 848 => []
  | 849 => []
  | 850 => []
  | 885 => []
  | 888 => []
  | 894 => []
  | 913 => []
  | 994 => []
  | 1058 => []
  | 1166 => []
  | 1237 => []
  | 1284 => []
  | 1285 => []
  | 1286 => []
  | 1299 => []
  | 1347 => []
  | 1348 => []
  | _ => []
def map_8_165 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5422 : InImage map_8_165 image5422 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5422 : Bundle := named_bundle% "RealMapCertificates/relations/basis5422.json"
theorem reductionProof5422 : EqualModuloRelations reduction5422.relations reduction5422.input reduction5422.output := by lin_cert using reduction5422.terms
theorem substitutionProof5422 : IsMapEvaluation generatorImages reduction5422.relations [0,698] reduction5422.output := by lin_cert using reduction5422.terms
def image5423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5423 : InImage map_8_165 image5423 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5423 : Bundle := named_bundle% "RealMapCertificates/relations/basis5423.json"
theorem reductionProof5423 : EqualModuloRelations reduction5423.relations reduction5423.input reduction5423.output := by lin_cert using reduction5423.terms
theorem substitutionProof5423 : IsMapEvaluation generatorImages reduction5423.relations [0,23,324] reduction5423.output := by lin_cert using reduction5423.terms
def map_8_166 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5518 : InImage map_8_166 image5518 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5518 : Bundle := named_bundle% "RealMapCertificates/relations/basis5518.json"
theorem reductionProof5518 : EqualModuloRelations reduction5518.relations reduction5518.input reduction5518.output := by lin_cert using reduction5518.terms
theorem substitutionProof5518 : IsMapEvaluation generatorImages reduction5518.relations [720] reduction5518.output := by lin_cert using reduction5518.terms
def image5519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5519 : InImage map_8_166 image5519 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5519 : Bundle := named_bundle% "RealMapCertificates/relations/basis5519.json"
theorem reductionProof5519 : EqualModuloRelations reduction5519.relations reduction5519.input reduction5519.output := by lin_cert using reduction5519.terms
theorem substitutionProof5519 : IsMapEvaluation generatorImages reduction5519.relations [7,7,398] reduction5519.output := by lin_cert using reduction5519.terms
def image5520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5520 : InImage map_8_166 image5520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5520 : Bundle := named_bundle% "RealMapCertificates/relations/basis5520.json"
theorem reductionProof5520 : EqualModuloRelations reduction5520.relations reduction5520.input reduction5520.output := by lin_cert using reduction5520.terms
theorem substitutionProof5520 : IsMapEvaluation generatorImages reduction5520.relations [1,18,368] reduction5520.output := by lin_cert using reduction5520.terms
def image5521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5521 : InImage map_8_166 image5521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5521 : Bundle := named_bundle% "RealMapCertificates/relations/basis5521.json"
theorem reductionProof5521 : EqualModuloRelations reduction5521.relations reduction5521.input reduction5521.output := by lin_cert using reduction5521.terms
theorem substitutionProof5521 : IsMapEvaluation generatorImages reduction5521.relations [0,0,699] reduction5521.output := by lin_cert using reduction5521.terms
def image5522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5522 : InImage map_8_166 image5522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5522 : Bundle := named_bundle% "RealMapCertificates/relations/basis5522.json"
theorem reductionProof5522 : EqualModuloRelations reduction5522.relations reduction5522.input reduction5522.output := by lin_cert using reduction5522.terms
theorem substitutionProof5522 : IsMapEvaluation generatorImages reduction5522.relations [0,0,0,0,0,0,18,324] reduction5522.output := by lin_cert using reduction5522.terms
def map_8_167 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5622 : InImage map_8_167 image5622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5622 : Bundle := named_bundle% "RealMapCertificates/relations/basis5622.json"
theorem reductionProof5622 : EqualModuloRelations reduction5622.relations reduction5622.input reduction5622.output := by lin_cert using reduction5622.terms
theorem substitutionProof5622 : IsMapEvaluation generatorImages reduction5622.relations [29,324] reduction5622.output := by lin_cert using reduction5622.terms
def image5623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5623 : InImage map_8_167 image5623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5623 : Bundle := named_bundle% "RealMapCertificates/relations/basis5623.json"
theorem reductionProof5623 : EqualModuloRelations reduction5623.relations reduction5623.input reduction5623.output := by lin_cert using reduction5623.terms
theorem substitutionProof5623 : IsMapEvaluation generatorImages reduction5623.relations [0,0,2,660] reduction5623.output := by lin_cert using reduction5623.terms
def map_8_168 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5753 : InImage map_8_168 image5753 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5753 : Bundle := named_bundle% "RealMapCertificates/relations/basis5753.json"
theorem reductionProof5753 : EqualModuloRelations reduction5753.relations reduction5753.input reduction5753.output := by lin_cert using reduction5753.terms
theorem substitutionProof5753 : IsMapEvaluation generatorImages reduction5753.relations [2,698] reduction5753.output := by lin_cert using reduction5753.terms
def image5754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5754 : InImage map_8_168 image5754 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5754 : Bundle := named_bundle% "RealMapCertificates/relations/basis5754.json"
theorem reductionProof5754 : EqualModuloRelations reduction5754.relations reduction5754.input reduction5754.output := by lin_cert using reduction5754.terms
theorem substitutionProof5754 : IsMapEvaluation generatorImages reduction5754.relations [2,24,69,69] reduction5754.output := by lin_cert using reduction5754.terms
def image5755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5755 : InImage map_8_168 image5755 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5755 : Bundle := named_bundle% "RealMapCertificates/relations/basis5755.json"
theorem reductionProof5755 : EqualModuloRelations reduction5755.relations reduction5755.input reduction5755.output := by lin_cert using reduction5755.terms
theorem substitutionProof5755 : IsMapEvaluation generatorImages reduction5755.relations [2,18,368] reduction5755.output := by lin_cert using reduction5755.terms
def image5756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5756 : InImage map_8_168 image5756 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5756 : Bundle := named_bundle% "RealMapCertificates/relations/basis5756.json"
theorem reductionProof5756 : EqualModuloRelations reduction5756.relations reduction5756.input reduction5756.output := by lin_cert using reduction5756.terms
theorem substitutionProof5756 : IsMapEvaluation generatorImages reduction5756.relations [1,28,324] reduction5756.output := by lin_cert using reduction5756.terms
def map_8_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5849 : InImage map_8_169 image5849 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5849 : Bundle := named_bundle% "RealMapCertificates/relations/basis5849.json"
theorem reductionProof5849 : EqualModuloRelations reduction5849.relations reduction5849.input reduction5849.output := by lin_cert using reduction5849.terms
theorem substitutionProof5849 : IsMapEvaluation generatorImages reduction5849.relations [0,748] reduction5849.output := by lin_cert using reduction5849.terms
def image5850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5850 : InImage map_8_169 image5850 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5850 : Bundle := named_bundle% "RealMapCertificates/relations/basis5850.json"
theorem reductionProof5850 : EqualModuloRelations reduction5850.relations reduction5850.input reduction5850.output := by lin_cert using reduction5850.terms
theorem substitutionProof5850 : IsMapEvaluation generatorImages reduction5850.relations [0,747] reduction5850.output := by lin_cert using reduction5850.terms
def map_8_170 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5954 : InImage map_8_170 image5954 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5954 : Bundle := named_bundle% "RealMapCertificates/relations/basis5954.json"
theorem reductionProof5954 : EqualModuloRelations reduction5954.relations reduction5954.input reduction5954.output := by lin_cert using reduction5954.terms
theorem substitutionProof5954 : IsMapEvaluation generatorImages reduction5954.relations [776] reduction5954.output := by lin_cert using reduction5954.terms
def image5955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5955 : InImage map_8_170 image5955 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5955 : Bundle := named_bundle% "RealMapCertificates/relations/basis5955.json"
theorem reductionProof5955 : EqualModuloRelations reduction5955.relations reduction5955.input reduction5955.output := by lin_cert using reduction5955.terms
theorem substitutionProof5955 : IsMapEvaluation generatorImages reduction5955.relations [32,324] reduction5955.output := by lin_cert using reduction5955.terms
def image5956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5956 : InImage map_8_170 image5956 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5956 : Bundle := named_bundle% "RealMapCertificates/relations/basis5956.json"
theorem reductionProof5956 : EqualModuloRelations reduction5956.relations reduction5956.input reduction5956.output := by lin_cert using reduction5956.terms
theorem substitutionProof5956 : IsMapEvaluation generatorImages reduction5956.relations [1,748] reduction5956.output := by lin_cert using reduction5956.terms
def image5957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5957 : InImage map_8_170 image5957 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5957 : Bundle := named_bundle% "RealMapCertificates/relations/basis5957.json"
theorem reductionProof5957 : EqualModuloRelations reduction5957.relations reduction5957.input reduction5957.output := by lin_cert using reduction5957.terms
theorem substitutionProof5957 : IsMapEvaluation generatorImages reduction5957.relations [1,747] reduction5957.output := by lin_cert using reduction5957.terms
def image5958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5958 : InImage map_8_170 image5958 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5958 : Bundle := named_bundle% "RealMapCertificates/relations/basis5958.json"
theorem reductionProof5958 : EqualModuloRelations reduction5958.relations reduction5958.input reduction5958.output := by lin_cert using reduction5958.terms
theorem substitutionProof5958 : IsMapEvaluation generatorImages reduction5958.relations [0,0,749] reduction5958.output := by lin_cert using reduction5958.terms
def map_8_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6098 : InImage map_8_171 image6098 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6098 : Bundle := named_bundle% "RealMapCertificates/relations/basis6098.json"
theorem reductionProof6098 : EqualModuloRelations reduction6098.relations reduction6098.input reduction6098.output := by lin_cert using reduction6098.terms
theorem substitutionProof6098 : IsMapEvaluation generatorImages reduction6098.relations [0,18,446] reduction6098.output := by lin_cert using reduction6098.terms
def image6099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6099 : InImage map_8_171 image6099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6099 : Bundle := named_bundle% "RealMapCertificates/relations/basis6099.json"
theorem reductionProof6099 : EqualModuloRelations reduction6099.relations reduction6099.input reduction6099.output := by lin_cert using reduction6099.terms
theorem substitutionProof6099 : IsMapEvaluation generatorImages reduction6099.relations [0,0,0,750] reduction6099.output := by lin_cert using reduction6099.terms
def map_8_172 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6180 : InImage map_8_172 image6180 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6180 : Bundle := named_bundle% "RealMapCertificates/relations/basis6180.json"
theorem reductionProof6180 : EqualModuloRelations reduction6180.relations reduction6180.input reduction6180.output := by lin_cert using reduction6180.terms
theorem substitutionProof6180 : IsMapEvaluation generatorImages reduction6180.relations [794] reduction6180.output := by lin_cert using reduction6180.terms
def image6181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6181 : InImage map_8_172 image6181 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6181 : Bundle := named_bundle% "RealMapCertificates/relations/basis6181.json"
theorem reductionProof6181 : EqualModuloRelations reduction6181.relations reduction6181.input reduction6181.output := by lin_cert using reduction6181.terms
theorem substitutionProof6181 : IsMapEvaluation generatorImages reduction6181.relations [1,33,324] reduction6181.output := by lin_cert using reduction6181.terms
def image6182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6182 : InImage map_8_172 image6182 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6182 : Bundle := named_bundle% "RealMapCertificates/relations/basis6182.json"
theorem reductionProof6182 : EqualModuloRelations reduction6182.relations reduction6182.input reduction6182.output := by lin_cert using reduction6182.terms
theorem substitutionProof6182 : IsMapEvaluation generatorImages reduction6182.relations [1,18,446] reduction6182.output := by lin_cert using reduction6182.terms
def image6183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6183 : InImage map_8_172 image6183 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6183 : Bundle := named_bundle% "RealMapCertificates/relations/basis6183.json"
theorem reductionProof6183 : EqualModuloRelations reduction6183.relations reduction6183.input reduction6183.output := by lin_cert using reduction6183.terms
theorem substitutionProof6183 : IsMapEvaluation generatorImages reduction6183.relations [1,1,749] reduction6183.output := by lin_cert using reduction6183.terms
def image6184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6184 : InImage map_8_172 image6184 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6184 : Bundle := named_bundle% "RealMapCertificates/relations/basis6184.json"
theorem reductionProof6184 : EqualModuloRelations reduction6184.relations reduction6184.input reduction6184.output := by lin_cert using reduction6184.terms
theorem substitutionProof6184 : IsMapEvaluation generatorImages reduction6184.relations [0,0,34,324] reduction6184.output := by lin_cert using reduction6184.terms
def image6185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6185 : InImage map_8_172 image6185 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6185 : Bundle := named_bundle% "RealMapCertificates/relations/basis6185.json"
theorem reductionProof6185 : EqualModuloRelations reduction6185.relations reduction6185.input reduction6185.output := by lin_cert using reduction6185.terms
theorem substitutionProof6185 : IsMapEvaluation generatorImages reduction6185.relations [0,0,0,0,751] reduction6185.output := by lin_cert using reduction6185.terms
def map_8_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6284 : InImage map_8_173 image6284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6284 : Bundle := named_bundle% "RealMapCertificates/relations/basis6284.json"
theorem reductionProof6284 : EqualModuloRelations reduction6284.relations reduction6284.input reduction6284.output := by lin_cert using reduction6284.terms
theorem substitutionProof6284 : IsMapEvaluation generatorImages reduction6284.relations [0,36,324] reduction6284.output := by lin_cert using reduction6284.terms
def map_8_174 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6434 : InImage map_8_174 image6434 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6434 : Bundle := named_bundle% "RealMapCertificates/relations/basis6434.json"
theorem reductionProof6434 : EqualModuloRelations reduction6434.relations reduction6434.input reduction6434.output := by lin_cert using reduction6434.terms
theorem substitutionProof6434 : IsMapEvaluation generatorImages reduction6434.relations [819] reduction6434.output := by lin_cert using reduction6434.terms
def image6435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6435 : InImage map_8_174 image6435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6435 : Bundle := named_bundle% "RealMapCertificates/relations/basis6435.json"
theorem reductionProof6435 : EqualModuloRelations reduction6435.relations reduction6435.input reduction6435.output := by lin_cert using reduction6435.terms
theorem substitutionProof6435 : IsMapEvaluation generatorImages reduction6435.relations [1,36,324] reduction6435.output := by lin_cert using reduction6435.terms
def image6436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6436 : InImage map_8_174 image6436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6436 : Bundle := named_bundle% "RealMapCertificates/relations/basis6436.json"
theorem reductionProof6436 : EqualModuloRelations reduction6436.relations reduction6436.input reduction6436.output := by lin_cert using reduction6436.terms
theorem substitutionProof6436 : IsMapEvaluation generatorImages reduction6436.relations [0,3,18,378] reduction6436.output := by lin_cert using reduction6436.terms
def map_8_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6636 : InImage map_8_176 image6636 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6636 : Bundle := named_bundle% "RealMapCertificates/relations/basis6636.json"
theorem reductionProof6636 : EqualModuloRelations reduction6636.relations reduction6636.input reduction6636.output := by lin_cert using reduction6636.terms
theorem substitutionProof6636 : IsMapEvaluation generatorImages reduction6636.relations [848] reduction6636.output := by lin_cert using reduction6636.terms
def image6637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6637 : InImage map_8_176 image6637 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6637 : Bundle := named_bundle% "RealMapCertificates/relations/basis6637.json"
theorem reductionProof6637 : EqualModuloRelations reduction6637.relations reduction6637.input reduction6637.output := by lin_cert using reduction6637.terms
theorem substitutionProof6637 : IsMapEvaluation generatorImages reduction6637.relations [1,5,18,324] reduction6637.output := by lin_cert using reduction6637.terms
def map_8_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6773 : InImage map_8_177 image6773 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6773 : Bundle := named_bundle% "RealMapCertificates/relations/basis6773.json"
theorem reductionProof6773 : EqualModuloRelations reduction6773.relations reduction6773.input reduction6773.output := by lin_cert using reduction6773.terms
theorem substitutionProof6773 : IsMapEvaluation generatorImages reduction6773.relations [0,6,18,324] reduction6773.output := by lin_cert using reduction6773.terms
def image6774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6774 : InImage map_8_177 image6774 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6774 : Bundle := named_bundle% "RealMapCertificates/relations/basis6774.json"
theorem reductionProof6774 : EqualModuloRelations reduction6774.relations reduction6774.input reduction6774.output := by lin_cert using reduction6774.terms
theorem substitutionProof6774 : IsMapEvaluation generatorImages reduction6774.relations [0,3,749] reduction6774.output := by lin_cert using reduction6774.terms
def map_8_178 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6877 : InImage map_8_178 image6877 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6877 : Bundle := named_bundle% "RealMapCertificates/relations/basis6877.json"
theorem reductionProof6877 : EqualModuloRelations reduction6877.relations reduction6877.input reduction6877.output := by lin_cert using reduction6877.terms
theorem substitutionProof6877 : IsMapEvaluation generatorImages reduction6877.relations [18,525] reduction6877.output := by lin_cert using reduction6877.terms
def image6878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6878 : InImage map_8_178 image6878 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6878 : Bundle := named_bundle% "RealMapCertificates/relations/basis6878.json"
theorem reductionProof6878 : EqualModuloRelations reduction6878.relations reduction6878.input reduction6878.output := by lin_cert using reduction6878.terms
theorem substitutionProof6878 : IsMapEvaluation generatorImages reduction6878.relations [0,0,18,506] reduction6878.output := by lin_cert using reduction6878.terms
def map_8_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7000 : InImage map_8_179 image7000 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7000 : Bundle := named_bundle% "RealMapCertificates/relations/basis7000.json"
theorem reductionProof7000 : EqualModuloRelations reduction7000.relations reduction7000.input reduction7000.output := by lin_cert using reduction7000.terms
theorem substitutionProof7000 : IsMapEvaluation generatorImages reduction7000.relations [885] reduction7000.output := by lin_cert using reduction7000.terms
def map_8_180 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7145 : InImage map_8_180 image7145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7145 : Bundle := named_bundle% "RealMapCertificates/relations/basis7145.json"
theorem reductionProof7145 : EqualModuloRelations reduction7145.relations reduction7145.input reduction7145.output := by lin_cert using reduction7145.terms
theorem substitutionProof7145 : IsMapEvaluation generatorImages reduction7145.relations [888] reduction7145.output := by lin_cert using reduction7145.terms
def image7146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7146 : InImage map_8_180 image7146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7146 : Bundle := named_bundle% "RealMapCertificates/relations/basis7146.json"
theorem reductionProof7146 : EqualModuloRelations reduction7146.relations reduction7146.input reduction7146.output := by lin_cert using reduction7146.terms
theorem substitutionProof7146 : IsMapEvaluation generatorImages reduction7146.relations [7,698] reduction7146.output := by lin_cert using reduction7146.terms
def image7147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7147 : InImage map_8_180 image7147 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7147 : Bundle := named_bundle% "RealMapCertificates/relations/basis7147.json"
theorem reductionProof7147 : EqualModuloRelations reduction7147.relations reduction7147.input reduction7147.output := by lin_cert using reduction7147.terms
theorem substitutionProof7147 : IsMapEvaluation generatorImages reduction7147.relations [1,1,18,506] reduction7147.output := by lin_cert using reduction7147.terms
def image7148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7148 : InImage map_8_180 image7148 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7148 : Bundle := named_bundle% "RealMapCertificates/relations/basis7148.json"
theorem reductionProof7148 : EqualModuloRelations reduction7148.relations reduction7148.input reduction7148.output := by lin_cert using reduction7148.terms
theorem substitutionProof7148 : IsMapEvaluation generatorImages reduction7148.relations [0,0,8,18,324] reduction7148.output := by lin_cert using reduction7148.terms
def image7149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7149 : InImage map_8_180 image7149 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7149 : Bundle := named_bundle% "RealMapCertificates/relations/basis7149.json"
theorem reductionProof7149 : EqualModuloRelations reduction7149.relations reduction7149.input reduction7149.output := by lin_cert using reduction7149.terms
theorem substitutionProof7149 : IsMapEvaluation generatorImages reduction7149.relations [0,0,0,0,849] reduction7149.output := by lin_cert using reduction7149.terms
def map_8_181 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7236 : InImage map_8_181 image7236 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7236 : Bundle := named_bundle% "RealMapCertificates/relations/basis7236.json"
theorem reductionProof7236 : EqualModuloRelations reduction7236.relations reduction7236.input reduction7236.output := by lin_cert using reduction7236.terms
theorem substitutionProof7236 : IsMapEvaluation generatorImages reduction7236.relations [48,324] reduction7236.output := by lin_cert using reduction7236.terms
def image7237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7237 : InImage map_8_181 image7237 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7237 : Bundle := named_bundle% "RealMapCertificates/relations/basis7237.json"
theorem reductionProof7237 : EqualModuloRelations reduction7237.relations reduction7237.input reduction7237.output := by lin_cert using reduction7237.terms
theorem substitutionProof7237 : IsMapEvaluation generatorImages reduction7237.relations [0,2,18,506] reduction7237.output := by lin_cert using reduction7237.terms
def image7238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7238 : InImage map_8_181 image7238 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7238 : Bundle := named_bundle% "RealMapCertificates/relations/basis7238.json"
theorem reductionProof7238 : EqualModuloRelations reduction7238.relations reduction7238.input reduction7238.output := by lin_cert using reduction7238.terms
theorem substitutionProof7238 : IsMapEvaluation generatorImages reduction7238.relations [0,0,0,0,0,850] reduction7238.output := by lin_cert using reduction7238.terms
def map_8_182 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7359 : InImage map_8_182 image7359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7359 : Bundle := named_bundle% "RealMapCertificates/relations/basis7359.json"
theorem reductionProof7359 : EqualModuloRelations reduction7359.relations reduction7359.input reduction7359.output := by lin_cert using reduction7359.terms
theorem substitutionProof7359 : IsMapEvaluation generatorImages reduction7359.relations [1,1,8,18,324] reduction7359.output := by lin_cert using reduction7359.terms
def image7360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7360 : InImage map_8_182 image7360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7360 : Bundle := named_bundle% "RealMapCertificates/relations/basis7360.json"
theorem reductionProof7360 : EqualModuloRelations reduction7360.relations reduction7360.input reduction7360.output := by lin_cert using reduction7360.terms
theorem substitutionProof7360 : IsMapEvaluation generatorImages reduction7360.relations [0,894] reduction7360.output := by lin_cert using reduction7360.terms
def map_8_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7505 : InImage map_8_183 image7505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7505 : Bundle := named_bundle% "RealMapCertificates/relations/basis7505.json"
theorem reductionProof7505 : EqualModuloRelations reduction7505.relations reduction7505.input reduction7505.output := by lin_cert using reduction7505.terms
theorem substitutionProof7505 : IsMapEvaluation generatorImages reduction7505.relations [53,324] reduction7505.output := by lin_cert using reduction7505.terms
def image7506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7506 : InImage map_8_183 image7506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7506 : Bundle := named_bundle% "RealMapCertificates/relations/basis7506.json"
theorem reductionProof7506 : EqualModuloRelations reduction7506.relations reduction7506.input reduction7506.output := by lin_cert using reduction7506.terms
theorem substitutionProof7506 : IsMapEvaluation generatorImages reduction7506.relations [0,913] reduction7506.output := by lin_cert using reduction7506.terms
def image7507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7507 : InImage map_8_183 image7507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7507 : Bundle := named_bundle% "RealMapCertificates/relations/basis7507.json"
theorem reductionProof7507 : EqualModuloRelations reduction7507.relations reduction7507.input reduction7507.output := by lin_cert using reduction7507.terms
theorem substitutionProof7507 : IsMapEvaluation generatorImages reduction7507.relations [0,0,9,18,324] reduction7507.output := by lin_cert using reduction7507.terms
def map_8_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7723 : InImage map_8_185 image7723 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7723 : Bundle := named_bundle% "RealMapCertificates/relations/basis7723.json"
theorem reductionProof7723 : EqualModuloRelations reduction7723.relations reduction7723.input reduction7723.output := by lin_cert using reduction7723.terms
theorem substitutionProof7723 : IsMapEvaluation generatorImages reduction7723.relations [2,894] reduction7723.output := by lin_cert using reduction7723.terms
def map_8_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7865 : InImage map_8_186 image7865 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7865 : Bundle := named_bundle% "RealMapCertificates/relations/basis7865.json"
theorem reductionProof7865 : EqualModuloRelations reduction7865.relations reduction7865.input reduction7865.output := by lin_cert using reduction7865.terms
theorem substitutionProof7865 : IsMapEvaluation generatorImages reduction7865.relations [2,913] reduction7865.output := by lin_cert using reduction7865.terms
def image7866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7866 : InImage map_8_186 image7866 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7866 : Bundle := named_bundle% "RealMapCertificates/relations/basis7866.json"
theorem reductionProof7866 : EqualModuloRelations reduction7866.relations reduction7866.input reduction7866.output := by lin_cert using reduction7866.terms
theorem substitutionProof7866 : IsMapEvaluation generatorImages reduction7866.relations [0,0,3,43,324] reduction7866.output := by lin_cert using reduction7866.terms
def map_8_188 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8072 : InImage map_8_188 image8072 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8072 : Bundle := named_bundle% "RealMapCertificates/relations/basis8072.json"
theorem reductionProof8072 : EqualModuloRelations reduction8072.relations reduction8072.input reduction8072.output := by lin_cert using reduction8072.terms
theorem substitutionProof8072 : IsMapEvaluation generatorImages reduction8072.relations [18,617] reduction8072.output := by lin_cert using reduction8072.terms
def image8073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8073 : InImage map_8_188 image8073 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8073 : Bundle := named_bundle% "RealMapCertificates/relations/basis8073.json"
theorem reductionProof8073 : EqualModuloRelations reduction8073.relations reduction8073.input reduction8073.output := by lin_cert using reduction8073.terms
theorem substitutionProof8073 : IsMapEvaluation generatorImages reduction8073.relations [2,54,324] reduction8073.output := by lin_cert using reduction8073.terms
def map_8_189 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8215 : InImage map_8_189 image8215 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8215 : Bundle := named_bundle% "RealMapCertificates/relations/basis8215.json"
theorem reductionProof8215 : EqualModuloRelations reduction8215.relations reduction8215.input reduction8215.output := by lin_cert using reduction8215.terms
theorem substitutionProof8215 : IsMapEvaluation generatorImages reduction8215.relations [1,4,849] reduction8215.output := by lin_cert using reduction8215.terms
def image8216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8216 : InImage map_8_189 image8216 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8216 : Bundle := named_bundle% "RealMapCertificates/relations/basis8216.json"
theorem reductionProof8216 : EqualModuloRelations reduction8216.relations reduction8216.input reduction8216.output := by lin_cert using reduction8216.terms
theorem substitutionProof8216 : IsMapEvaluation generatorImages reduction8216.relations [0,994] reduction8216.output := by lin_cert using reduction8216.terms
def map_8_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8326 : InImage map_8_190 image8326 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8326 : Bundle := named_bundle% "RealMapCertificates/relations/basis8326.json"
theorem reductionProof8326 : EqualModuloRelations reduction8326.relations reduction8326.input reduction8326.output := by lin_cert using reduction8326.terms
theorem substitutionProof8326 : IsMapEvaluation generatorImages reduction8326.relations [1,61,324] reduction8326.output := by lin_cert using reduction8326.terms
def map_8_192 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8597 : InImage map_8_192 image8597 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8597 : Bundle := named_bundle% "RealMapCertificates/relations/basis8597.json"
theorem reductionProof8597 : EqualModuloRelations reduction8597.relations reduction8597.input reduction8597.output := by lin_cert using reduction8597.terms
theorem substitutionProof8597 : IsMapEvaluation generatorImages reduction8597.relations [67,324] reduction8597.output := by lin_cert using reduction8597.terms
def image8598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8598 : InImage map_8_192 image8598 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8598 : Bundle := named_bundle% "RealMapCertificates/relations/basis8598.json"
theorem reductionProof8598 : EqualModuloRelations reduction8598.relations reduction8598.input reduction8598.output := by lin_cert using reduction8598.terms
theorem substitutionProof8598 : IsMapEvaluation generatorImages reduction8598.relations [2,994] reduction8598.output := by lin_cert using reduction8598.terms
def map_8_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8696 : InImage map_8_193 image8696 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8696 : Bundle := named_bundle% "RealMapCertificates/relations/basis8696.json"
theorem reductionProof8696 : EqualModuloRelations reduction8696.relations reduction8696.input reduction8696.output := by lin_cert using reduction8696.terms
theorem substitutionProof8696 : IsMapEvaluation generatorImages reduction8696.relations [0,68,324] reduction8696.output := by lin_cert using reduction8696.terms
def map_8_195 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8995 : InImage map_8_195 image8995 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8995 : Bundle := named_bundle% "RealMapCertificates/relations/basis8995.json"
theorem reductionProof8995 : EqualModuloRelations reduction8995.relations reduction8995.input reduction8995.output := by lin_cert using reduction8995.terms
theorem substitutionProof8995 : IsMapEvaluation generatorImages reduction8995.relations [73,324] reduction8995.output := by lin_cert using reduction8995.terms
def image8996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8996 : InImage map_8_195 image8996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8996 : Bundle := named_bundle% "RealMapCertificates/relations/basis8996.json"
theorem reductionProof8996 : EqualModuloRelations reduction8996.relations reduction8996.input reduction8996.output := by lin_cert using reduction8996.terms
theorem substitutionProof8996 : IsMapEvaluation generatorImages reduction8996.relations [0,0,18,660] reduction8996.output := by lin_cert using reduction8996.terms
def map_8_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9119 : InImage map_8_196 image9119 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9119 : Bundle := named_bundle% "RealMapCertificates/relations/basis9119.json"
theorem reductionProof9119 : EqualModuloRelations reduction9119.relations reduction9119.input reduction9119.output := by lin_cert using reduction9119.terms
theorem substitutionProof9119 : IsMapEvaluation generatorImages reduction9119.relations [0,75,324] reduction9119.output := by lin_cert using reduction9119.terms
def image9120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9120 : InImage map_8_196 image9120 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9120 : Bundle := named_bundle% "RealMapCertificates/relations/basis9120.json"
theorem reductionProof9120 : EqualModuloRelations reduction9120.relations reduction9120.input reduction9120.output := by lin_cert using reduction9120.terms
theorem substitutionProof9120 : IsMapEvaluation generatorImages reduction9120.relations [0,74,324] reduction9120.output := by lin_cert using reduction9120.terms
def image9121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9121 : InImage map_8_196 image9121 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9121 : Bundle := named_bundle% "RealMapCertificates/relations/basis9121.json"
theorem reductionProof9121 : EqualModuloRelations reduction9121.relations reduction9121.input reduction9121.output := by lin_cert using reduction9121.terms
theorem substitutionProof9121 : IsMapEvaluation generatorImages reduction9121.relations [0,0,0,0,1058] reduction9121.output := by lin_cert using reduction9121.terms
def map_8_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9274 : InImage map_8_197 image9274 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9274 : Bundle := named_bundle% "RealMapCertificates/relations/basis9274.json"
theorem reductionProof9274 : EqualModuloRelations reduction9274.relations reduction9274.input reduction9274.output := by lin_cert using reduction9274.terms
theorem substitutionProof9274 : IsMapEvaluation generatorImages reduction9274.relations [1,1,18,660] reduction9274.output := by lin_cert using reduction9274.terms
def image9275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9275 : InImage map_8_197 image9275 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9275 : Bundle := named_bundle% "RealMapCertificates/relations/basis9275.json"
theorem reductionProof9275 : EqualModuloRelations reduction9275.relations reduction9275.input reduction9275.output := by lin_cert using reduction9275.terms
theorem substitutionProof9275 : IsMapEvaluation generatorImages reduction9275.relations [0,0,0,0,0,18,18,324] reduction9275.output := by lin_cert using reduction9275.terms
def map_8_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9460 : InImage map_8_198 image9460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9460 : Bundle := named_bundle% "RealMapCertificates/relations/basis9460.json"
theorem reductionProof9460 : EqualModuloRelations reduction9460.relations reduction9460.input reduction9460.output := by lin_cert using reduction9460.terms
theorem substitutionProof9460 : IsMapEvaluation generatorImages reduction9460.relations [1166] reduction9460.output := by lin_cert using reduction9460.terms
def image9461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9461 : InImage map_8_198 image9461 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9461 : Bundle := named_bundle% "RealMapCertificates/relations/basis9461.json"
theorem reductionProof9461 : EqualModuloRelations reduction9461.relations reduction9461.input reduction9461.output := by lin_cert using reduction9461.terms
theorem substitutionProof9461 : IsMapEvaluation generatorImages reduction9461.relations [85,324] reduction9461.output := by lin_cert using reduction9461.terms
def image9462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9462 : InImage map_8_198 image9462 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9462 : Bundle := named_bundle% "RealMapCertificates/relations/basis9462.json"
theorem reductionProof9462 : EqualModuloRelations reduction9462.relations reduction9462.input reduction9462.output := by lin_cert using reduction9462.terms
theorem substitutionProof9462 : IsMapEvaluation generatorImages reduction9462.relations [84,324] reduction9462.output := by lin_cert using reduction9462.terms
def image9463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9463 : InImage map_8_198 image9463 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9463 : Bundle := named_bundle% "RealMapCertificates/relations/basis9463.json"
theorem reductionProof9463 : EqualModuloRelations reduction9463.relations reduction9463.input reduction9463.output := by lin_cert using reduction9463.terms
theorem substitutionProof9463 : IsMapEvaluation generatorImages reduction9463.relations [0,2,18,660] reduction9463.output := by lin_cert using reduction9463.terms
def map_8_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9587 : InImage map_8_199 image9587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9587 : Bundle := named_bundle% "RealMapCertificates/relations/basis9587.json"
theorem reductionProof9587 : EqualModuloRelations reduction9587.relations reduction9587.input reduction9587.output := by lin_cert using reduction9587.terms
theorem substitutionProof9587 : IsMapEvaluation generatorImages reduction9587.relations [2,75,324] reduction9587.output := by lin_cert using reduction9587.terms
def image9588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9588 : InImage map_8_199 image9588 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9588 : Bundle := named_bundle% "RealMapCertificates/relations/basis9588.json"
theorem reductionProof9588 : EqualModuloRelations reduction9588.relations reduction9588.input reduction9588.output := by lin_cert using reduction9588.terms
theorem substitutionProof9588 : IsMapEvaluation generatorImages reduction9588.relations [0,86,324] reduction9588.output := by lin_cert using reduction9588.terms
def map_8_200 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9763 : InImage map_8_200 image9763 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9763 : Bundle := named_bundle% "RealMapCertificates/relations/basis9763.json"
theorem reductionProof9763 : EqualModuloRelations reduction9763.relations reduction9763.input reduction9763.output := by lin_cert using reduction9763.terms
theorem substitutionProof9763 : IsMapEvaluation generatorImages reduction9763.relations [3,68,324] reduction9763.output := by lin_cert using reduction9763.terms
def image9764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9764 : InImage map_8_200 image9764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9764 : Bundle := named_bundle% "RealMapCertificates/relations/basis9764.json"
theorem reductionProof9764 : EqualModuloRelations reduction9764.relations reduction9764.input reduction9764.output := by lin_cert using reduction9764.terms
theorem substitutionProof9764 : IsMapEvaluation generatorImages reduction9764.relations [2,18,24,324] reduction9764.output := by lin_cert using reduction9764.terms
def map_8_201 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9937 : InImage map_8_201 image9937 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9937 : Bundle := named_bundle% "RealMapCertificates/relations/basis9937.json"
theorem reductionProof9937 : EqualModuloRelations reduction9937.relations reduction9937.input reduction9937.output := by lin_cert using reduction9937.terms
theorem substitutionProof9937 : IsMapEvaluation generatorImages reduction9937.relations [95,324] reduction9937.output := by lin_cert using reduction9937.terms
def image9938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9938 : InImage map_8_201 image9938 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9938 : Bundle := named_bundle% "RealMapCertificates/relations/basis9938.json"
theorem reductionProof9938 : EqualModuloRelations reduction9938.relations reduction9938.input reduction9938.output := by lin_cert using reduction9938.terms
theorem substitutionProof9938 : IsMapEvaluation generatorImages reduction9938.relations [0,91,324] reduction9938.output := by lin_cert using reduction9938.terms
def map_8_202 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10076 : InImage map_8_202 image10076 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10076 : Bundle := named_bundle% "RealMapCertificates/relations/basis10076.json"
theorem reductionProof10076 : EqualModuloRelations reduction10076.relations reduction10076.input reduction10076.output := by lin_cert using reduction10076.terms
theorem substitutionProof10076 : IsMapEvaluation generatorImages reduction10076.relations [1237] reduction10076.output := by lin_cert using reduction10076.terms
def image10077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10077 : InImage map_8_202 image10077 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10077 : Bundle := named_bundle% "RealMapCertificates/relations/basis10077.json"
theorem reductionProof10077 : EqualModuloRelations reduction10077.relations reduction10077.input reduction10077.output := by lin_cert using reduction10077.terms
theorem substitutionProof10077 : IsMapEvaluation generatorImages reduction10077.relations [18,18,446] reduction10077.output := by lin_cert using reduction10077.terms
def image10078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10078 : InImage map_8_202 image10078 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10078 : Bundle := named_bundle% "RealMapCertificates/relations/basis10078.json"
theorem reductionProof10078 : EqualModuloRelations reduction10078.relations reduction10078.input reduction10078.output := by lin_cert using reduction10078.terms
theorem substitutionProof10078 : IsMapEvaluation generatorImages reduction10078.relations [0,0,92,324] reduction10078.output := by lin_cert using reduction10078.terms
def map_8_203 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10251 : InImage map_8_203 image10251 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10251 : Bundle := named_bundle% "RealMapCertificates/relations/basis10251.json"
theorem reductionProof10251 : EqualModuloRelations reduction10251.relations reduction10251.input reduction10251.output := by lin_cert using reduction10251.terms
theorem substitutionProof10251 : IsMapEvaluation generatorImages reduction10251.relations [3,74,324] reduction10251.output := by lin_cert using reduction10251.terms
def image10252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10252 : InImage map_8_203 image10252 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10252 : Bundle := named_bundle% "RealMapCertificates/relations/basis10252.json"
theorem reductionProof10252 : EqualModuloRelations reduction10252.relations reduction10252.input reduction10252.output := by lin_cert using reduction10252.terms
theorem substitutionProof10252 : IsMapEvaluation generatorImages reduction10252.relations [2,2,76,324] reduction10252.output := by lin_cert using reduction10252.terms
def image10253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10253 : InImage map_8_203 image10253 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10253 : Bundle := named_bundle% "RealMapCertificates/relations/basis10253.json"
theorem reductionProof10253 : EqualModuloRelations reduction10253.relations reduction10253.input reduction10253.output := by lin_cert using reduction10253.terms
theorem substitutionProof10253 : IsMapEvaluation generatorImages reduction10253.relations [0,0,0,3,1058] reduction10253.output := by lin_cert using reduction10253.terms
def map_8_204 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10462 : InImage map_8_204 image10462 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10462 : Bundle := named_bundle% "RealMapCertificates/relations/basis10462.json"
theorem reductionProof10462 : EqualModuloRelations reduction10462.relations reduction10462.input reduction10462.output := by lin_cert using reduction10462.terms
theorem substitutionProof10462 : IsMapEvaluation generatorImages reduction10462.relations [1285] reduction10462.output := by lin_cert using reduction10462.terms
def image10463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10463 : InImage map_8_204 image10463 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10463 : Bundle := named_bundle% "RealMapCertificates/relations/basis10463.json"
theorem reductionProof10463 : EqualModuloRelations reduction10463.relations reduction10463.input reduction10463.output := by lin_cert using reduction10463.terms
theorem substitutionProof10463 : IsMapEvaluation generatorImages reduction10463.relations [1284] reduction10463.output := by lin_cert using reduction10463.terms
def image10464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10464 : InImage map_8_204 image10464 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10464 : Bundle := named_bundle% "RealMapCertificates/relations/basis10464.json"
theorem reductionProof10464 : EqualModuloRelations reduction10464.relations reduction10464.input reduction10464.output := by lin_cert using reduction10464.terms
theorem substitutionProof10464 : IsMapEvaluation generatorImages reduction10464.relations [0,0,0,96,324] reduction10464.output := by lin_cert using reduction10464.terms
def map_8_205 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10600 : InImage map_8_205 image10600 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10600 : Bundle := named_bundle% "RealMapCertificates/relations/basis10600.json"
theorem reductionProof10600 : EqualModuloRelations reduction10600.relations reduction10600.input reduction10600.output := by lin_cert using reduction10600.terms
theorem substitutionProof10600 : IsMapEvaluation generatorImages reduction10600.relations [1,4,1058] reduction10600.output := by lin_cert using reduction10600.terms
def image10601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10601 : InImage map_8_205 image10601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10601 : Bundle := named_bundle% "RealMapCertificates/relations/basis10601.json"
theorem reductionProof10601 : EqualModuloRelations reduction10601.relations reduction10601.input reduction10601.output := by lin_cert using reduction10601.terms
theorem substitutionProof10601 : IsMapEvaluation generatorImages reduction10601.relations [1,3,76,324] reduction10601.output := by lin_cert using reduction10601.terms
def image10602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10602 : InImage map_8_205 image10602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10602 : Bundle := named_bundle% "RealMapCertificates/relations/basis10602.json"
theorem reductionProof10602 : EqualModuloRelations reduction10602.relations reduction10602.input reduction10602.output := by lin_cert using reduction10602.terms
theorem substitutionProof10602 : IsMapEvaluation generatorImages reduction10602.relations [0,1286] reduction10602.output := by lin_cert using reduction10602.terms
def image10603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10603 : InImage map_8_205 image10603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10603 : Bundle := named_bundle% "RealMapCertificates/relations/basis10603.json"
theorem reductionProof10603 : EqualModuloRelations reduction10603.relations reduction10603.input reduction10603.output := by lin_cert using reduction10603.terms
theorem substitutionProof10603 : IsMapEvaluation generatorImages reduction10603.relations [0,2,92,324] reduction10603.output := by lin_cert using reduction10603.terms
def map_8_206 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10806 : InImage map_8_206 image10806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10806 : Bundle := named_bundle% "RealMapCertificates/relations/basis10806.json"
theorem reductionProof10806 : EqualModuloRelations reduction10806.relations reduction10806.input reduction10806.output := by lin_cert using reduction10806.terms
theorem substitutionProof10806 : IsMapEvaluation generatorImages reduction10806.relations [0,1299] reduction10806.output := by lin_cert using reduction10806.terms
def image10807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10807 : InImage map_8_206 image10807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10807 : Bundle := named_bundle% "RealMapCertificates/relations/basis10807.json"
theorem reductionProof10807 : EqualModuloRelations reduction10807.relations reduction10807.input reduction10807.output := by lin_cert using reduction10807.terms
theorem substitutionProof10807 : IsMapEvaluation generatorImages reduction10807.relations [0,109,324] reduction10807.output := by lin_cert using reduction10807.terms
def map_8_208 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11127 : InImage map_8_208 image11127 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11127 : Bundle := named_bundle% "RealMapCertificates/relations/basis11127.json"
theorem reductionProof11127 : EqualModuloRelations reduction11127.relations reduction11127.input reduction11127.output := by lin_cert using reduction11127.terms
theorem substitutionProof11127 : IsMapEvaluation generatorImages reduction11127.relations [1347] reduction11127.output := by lin_cert using reduction11127.terms
def image11128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11128 : InImage map_8_208 image11128 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11128 : Bundle := named_bundle% "RealMapCertificates/relations/basis11128.json"
theorem reductionProof11128 : EqualModuloRelations reduction11128.relations reduction11128.input reduction11128.output := by lin_cert using reduction11128.terms
theorem substitutionProof11128 : IsMapEvaluation generatorImages reduction11128.relations [7,68,324] reduction11128.output := by lin_cert using reduction11128.terms
def image11129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11129 : InImage map_8_208 image11129 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11129 : Bundle := named_bundle% "RealMapCertificates/relations/basis11129.json"
theorem reductionProof11129 : EqualModuloRelations reduction11129.relations reduction11129.input reduction11129.output := by lin_cert using reduction11129.terms
theorem substitutionProof11129 : IsMapEvaluation generatorImages reduction11129.relations [2,2,92,324] reduction11129.output := by lin_cert using reduction11129.terms
def map_8_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11309 : InImage map_8_209 image11309 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11309 : Bundle := named_bundle% "RealMapCertificates/relations/basis11309.json"
theorem reductionProof11309 : EqualModuloRelations reduction11309.relations reduction11309.input reduction11309.output := by lin_cert using reduction11309.terms
theorem substitutionProof11309 : IsMapEvaluation generatorImages reduction11309.relations [0,1348] reduction11309.output := by lin_cert using reduction11309.terms
def map_8_210 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11525 : InImage map_8_210 image11525 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11525 : Bundle := named_bundle% "RealMapCertificates/relations/basis11525.json"
theorem reductionProof11525 : EqualModuloRelations reduction11525.relations reduction11525.input reduction11525.output := by lin_cert using reduction11525.terms
theorem substitutionProof11525 : IsMapEvaluation generatorImages reduction11525.relations [121,324] reduction11525.output := by lin_cert using reduction11525.terms
def image11526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11526 : InImage map_8_210 image11526 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11526 : Bundle := named_bundle% "RealMapCertificates/relations/basis11526.json"
theorem reductionProof11526 : EqualModuloRelations reduction11526.relations reduction11526.input reduction11526.output := by lin_cert using reduction11526.terms
theorem substitutionProof11526 : IsMapEvaluation generatorImages reduction11526.relations [1,1348] reduction11526.output := by lin_cert using reduction11526.terms
end RealMapCertificates
