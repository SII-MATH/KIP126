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
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 12 => [[3,4]]
  | 13 => [[9]]
  | 14 => [[1,4,4]]
  | 15 => [[2,4,4]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 34 => []
  | 36 => []
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 53 => []
  | 67 => []
  | 70 => []
  | 73 => []
  | 76 => []
  | 80 => []
  | 81 => []
  | 92 => []
  | 122 => []
  | 128 => []
  | 129 => []
  | 130 => []
  | 131 => []
  | 142 => []
  | 143 => []
  | 148 => []
  | 158 => []
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
  | 324 => []
  | 1058 => []
  | 1286 => []
  | 1348 => []
  | 1422 => []
  | 1423 => []
  | 1424 => []
  | 1437 => []
  | 1466 => []
  | 1498 => []
  | 1512 => []
  | 1532 => []
  | 1565 => []
  | 1634 => []
  | 1635 => []
  | 1713 => []
  | 1714 => []
  | 1715 => []
  | 1811 => []
  | 1959 => []
  | 1960 => []
  | 2273 => []
  | 2625 => []
  | 2668 => []
  | 2737 => []
  | 2787 => []
  | 2788 => []
  | 2851 => []
  | 2852 => []
  | 2853 => []
  | 2855 => []
  | 2911 => []
  | 2912 => []
  | _ => []
def map_8_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11659 : InImage map_8_211 image11659 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11659 : Bundle := named_bundle% "RealMapCertificates/relations/basis11659.json"
theorem reductionProof11659 : EqualModuloRelations reduction11659.relations reduction11659.input reduction11659.output := by lin_cert using reduction11659.terms
theorem substitutionProof11659 : IsMapEvaluation generatorImages reduction11659.relations [3,3,76,324] reduction11659.output := by lin_cert using reduction11659.terms
def image11660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11660 : InImage map_8_211 image11660 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11660 : Bundle := named_bundle% "RealMapCertificates/relations/basis11660.json"
theorem reductionProof11660 : EqualModuloRelations reduction11660.relations reduction11660.input reduction11660.output := by lin_cert using reduction11660.terms
theorem substitutionProof11660 : IsMapEvaluation generatorImages reduction11660.relations [0,122,324] reduction11660.output := by lin_cert using reduction11660.terms
def image11661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11661 : InImage map_8_211 image11661 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11661 : Bundle := named_bundle% "RealMapCertificates/relations/basis11661.json"
theorem reductionProof11661 : EqualModuloRelations reduction11661.relations reduction11661.input reduction11661.output := by lin_cert using reduction11661.terms
theorem substitutionProof11661 : IsMapEvaluation generatorImages reduction11661.relations [0,0,0,7,1058] reduction11661.output := by lin_cert using reduction11661.terms
def map_8_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11876 : InImage map_8_212 image11876 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11876 : Bundle := named_bundle% "RealMapCertificates/relations/basis11876.json"
theorem reductionProof11876 : EqualModuloRelations reduction11876.relations reduction11876.input reduction11876.output := by lin_cert using reduction11876.terms
theorem substitutionProof11876 : IsMapEvaluation generatorImages reduction11876.relations [1422] reduction11876.output := by lin_cert using reduction11876.terms
def image11877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11877 : InImage map_8_212 image11877 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11877 : Bundle := named_bundle% "RealMapCertificates/relations/basis11877.json"
theorem reductionProof11877 : EqualModuloRelations reduction11877.relations reduction11877.input reduction11877.output := by lin_cert using reduction11877.terms
theorem substitutionProof11877 : IsMapEvaluation generatorImages reduction11877.relations [129,324] reduction11877.output := by lin_cert using reduction11877.terms
def image11878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11878 : InImage map_8_212 image11878 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11878 : Bundle := named_bundle% "RealMapCertificates/relations/basis11878.json"
theorem reductionProof11878 : EqualModuloRelations reduction11878.relations reduction11878.input reduction11878.output := by lin_cert using reduction11878.terms
theorem substitutionProof11878 : IsMapEvaluation generatorImages reduction11878.relations [128,324] reduction11878.output := by lin_cert using reduction11878.terms
def image11879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11879 : InImage map_8_212 image11879 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11879 : Bundle := named_bundle% "RealMapCertificates/relations/basis11879.json"
theorem reductionProof11879 : EqualModuloRelations reduction11879.relations reduction11879.input reduction11879.output := by lin_cert using reduction11879.terms
theorem substitutionProof11879 : IsMapEvaluation generatorImages reduction11879.relations [3,1286] reduction11879.output := by lin_cert using reduction11879.terms
def image11880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11880 : InImage map_8_212 image11880 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11880 : Bundle := named_bundle% "RealMapCertificates/relations/basis11880.json"
theorem reductionProof11880 : EqualModuloRelations reduction11880.relations reduction11880.input reduction11880.output := by lin_cert using reduction11880.terms
theorem substitutionProof11880 : IsMapEvaluation generatorImages reduction11880.relations [1,122,324] reduction11880.output := by lin_cert using reduction11880.terms
def map_8_213 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12099 : InImage map_8_213 image12099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12099 : Bundle := named_bundle% "RealMapCertificates/relations/basis12099.json"
theorem reductionProof12099 : EqualModuloRelations reduction12099.relations reduction12099.input reduction12099.output := by lin_cert using reduction12099.terms
theorem substitutionProof12099 : IsMapEvaluation generatorImages reduction12099.relations [0,1423] reduction12099.output := by lin_cert using reduction12099.terms
def image12100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12100 : InImage map_8_213 image12100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12100 : Bundle := named_bundle% "RealMapCertificates/relations/basis12100.json"
theorem reductionProof12100 : EqualModuloRelations reduction12100.relations reduction12100.input reduction12100.output := by lin_cert using reduction12100.terms
theorem substitutionProof12100 : IsMapEvaluation generatorImages reduction12100.relations [0,130,324] reduction12100.output := by lin_cert using reduction12100.terms
def map_8_214 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12262 : InImage map_8_214 image12262 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12262 : Bundle := named_bundle% "RealMapCertificates/relations/basis12262.json"
theorem reductionProof12262 : EqualModuloRelations reduction12262.relations reduction12262.input reduction12262.output := by lin_cert using reduction12262.terms
theorem substitutionProof12262 : IsMapEvaluation generatorImages reduction12262.relations [1466] reduction12262.output := by lin_cert using reduction12262.terms
def image12263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12263 : InImage map_8_214 image12263 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12263 : Bundle := named_bundle% "RealMapCertificates/relations/basis12263.json"
theorem reductionProof12263 : EqualModuloRelations reduction12263.relations reduction12263.input reduction12263.output := by lin_cert using reduction12263.terms
theorem substitutionProof12263 : IsMapEvaluation generatorImages reduction12263.relations [2,122,324] reduction12263.output := by lin_cert using reduction12263.terms
def image12264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12264 : InImage map_8_214 image12264 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12264 : Bundle := named_bundle% "RealMapCertificates/relations/basis12264.json"
theorem reductionProof12264 : EqualModuloRelations reduction12264.relations reduction12264.input reduction12264.output := by lin_cert using reduction12264.terms
theorem substitutionProof12264 : IsMapEvaluation generatorImages reduction12264.relations [0,1437] reduction12264.output := by lin_cert using reduction12264.terms
def map_8_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12669 : InImage map_8_216 image12669 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12669 : Bundle := named_bundle% "RealMapCertificates/relations/basis12669.json"
theorem reductionProof12669 : EqualModuloRelations reduction12669.relations reduction12669.input reduction12669.output := by lin_cert using reduction12669.terms
theorem substitutionProof12669 : IsMapEvaluation generatorImages reduction12669.relations [3,1348] reduction12669.output := by lin_cert using reduction12669.terms
def image12670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12670 : InImage map_8_216 image12670 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12670 : Bundle := named_bundle% "RealMapCertificates/relations/basis12670.json"
theorem reductionProof12670 : EqualModuloRelations reduction12670.relations reduction12670.input reduction12670.output := by lin_cert using reduction12670.terms
theorem substitutionProof12670 : IsMapEvaluation generatorImages reduction12670.relations [2,1424] reduction12670.output := by lin_cert using reduction12670.terms
def image12671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12671 : InImage map_8_216 image12671 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12671 : Bundle := named_bundle% "RealMapCertificates/relations/basis12671.json"
theorem reductionProof12671 : EqualModuloRelations reduction12671.relations reduction12671.input reduction12671.output := by lin_cert using reduction12671.terms
theorem substitutionProof12671 : IsMapEvaluation generatorImages reduction12671.relations [2,130,324] reduction12671.output := by lin_cert using reduction12671.terms
def map_8_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12808 : InImage map_8_217 image12808 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12808 : Bundle := named_bundle% "RealMapCertificates/relations/basis12808.json"
theorem reductionProof12808 : EqualModuloRelations reduction12808.relations reduction12808.input reduction12808.output := by lin_cert using reduction12808.terms
theorem substitutionProof12808 : IsMapEvaluation generatorImages reduction12808.relations [0,1498] reduction12808.output := by lin_cert using reduction12808.terms
def image12809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12809 : InImage map_8_217 image12809 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12809 : Bundle := named_bundle% "RealMapCertificates/relations/basis12809.json"
theorem reductionProof12809 : EqualModuloRelations reduction12809.relations reduction12809.input reduction12809.output := by lin_cert using reduction12809.terms
theorem substitutionProof12809 : IsMapEvaluation generatorImages reduction12809.relations [0,7,92,324] reduction12809.output := by lin_cert using reduction12809.terms
def image12810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12810 : InImage map_8_217 image12810 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12810 : Bundle := named_bundle% "RealMapCertificates/relations/basis12810.json"
theorem reductionProof12810 : EqualModuloRelations reduction12810.relations reduction12810.input reduction12810.output := by lin_cert using reduction12810.terms
theorem substitutionProof12810 : IsMapEvaluation generatorImages reduction12810.relations [0,2,131,324] reduction12810.output := by lin_cert using reduction12810.terms
def map_8_218 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13028 : InImage map_8_218 image13028 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13028 : Bundle := named_bundle% "RealMapCertificates/relations/basis13028.json"
theorem reductionProof13028 : EqualModuloRelations reduction13028.relations reduction13028.input reduction13028.output := by lin_cert using reduction13028.terms
theorem substitutionProof13028 : IsMapEvaluation generatorImages reduction13028.relations [1532] reduction13028.output := by lin_cert using reduction13028.terms
def image13029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13029 : InImage map_8_218 image13029 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13029 : Bundle := named_bundle% "RealMapCertificates/relations/basis13029.json"
theorem reductionProof13029 : EqualModuloRelations reduction13029.relations reduction13029.input reduction13029.output := by lin_cert using reduction13029.terms
theorem substitutionProof13029 : IsMapEvaluation generatorImages reduction13029.relations [1,7,92,324] reduction13029.output := by lin_cert using reduction13029.terms
def map_8_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13228 : InImage map_8_219 image13228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13228 : Bundle := named_bundle% "RealMapCertificates/relations/basis13228.json"
theorem reductionProof13228 : EqualModuloRelations reduction13228.relations reduction13228.input reduction13228.output := by lin_cert using reduction13228.terms
theorem substitutionProof13228 : IsMapEvaluation generatorImages reduction13228.relations [1,1512] reduction13228.output := by lin_cert using reduction13228.terms
def image13229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13229 : InImage map_8_219 image13229 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13229 : Bundle := named_bundle% "RealMapCertificates/relations/basis13229.json"
theorem reductionProof13229 : EqualModuloRelations reduction13229.relations reduction13229.input reduction13229.output := by lin_cert using reduction13229.terms
theorem substitutionProof13229 : IsMapEvaluation generatorImages reduction13229.relations [0,0,0,142,324] reduction13229.output := by lin_cert using reduction13229.terms
def map_8_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13378 : InImage map_8_220 image13378 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13378 : Bundle := named_bundle% "RealMapCertificates/relations/basis13378.json"
theorem reductionProof13378 : EqualModuloRelations reduction13378.relations reduction13378.input reduction13378.output := by lin_cert using reduction13378.terms
theorem substitutionProof13378 : IsMapEvaluation generatorImages reduction13378.relations [7,1286] reduction13378.output := by lin_cert using reduction13378.terms
def image13379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13379 : InImage map_8_220 image13379 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13379 : Bundle := named_bundle% "RealMapCertificates/relations/basis13379.json"
theorem reductionProof13379 : EqualModuloRelations reduction13379.relations reduction13379.input reduction13379.output := by lin_cert using reduction13379.terms
theorem substitutionProof13379 : IsMapEvaluation generatorImages reduction13379.relations [2,1498] reduction13379.output := by lin_cert using reduction13379.terms
def image13380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13380 : InImage map_8_220 image13380 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13380 : Bundle := named_bundle% "RealMapCertificates/relations/basis13380.json"
theorem reductionProof13380 : EqualModuloRelations reduction13380.relations reduction13380.input reduction13380.output := by lin_cert using reduction13380.terms
theorem substitutionProof13380 : IsMapEvaluation generatorImages reduction13380.relations [0,0,0,0,143,324] reduction13380.output := by lin_cert using reduction13380.terms
def map_8_221 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13575 : InImage map_8_221 image13575 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13575 : Bundle := named_bundle% "RealMapCertificates/relations/basis13575.json"
theorem reductionProof13575 : EqualModuloRelations reduction13575.relations reduction13575.input reduction13575.output := by lin_cert using reduction13575.terms
theorem substitutionProof13575 : IsMapEvaluation generatorImages reduction13575.relations [1,148,324] reduction13575.output := by lin_cert using reduction13575.terms
def image13576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13576 : InImage map_8_221 image13576 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13576 : Bundle := named_bundle% "RealMapCertificates/relations/basis13576.json"
theorem reductionProof13576 : EqualModuloRelations reduction13576.relations reduction13576.input reduction13576.output := by lin_cert using reduction13576.terms
theorem substitutionProof13576 : IsMapEvaluation generatorImages reduction13576.relations [0,1565] reduction13576.output := by lin_cert using reduction13576.terms
def map_8_222 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13795 : InImage map_8_222 image13795 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13795 : Bundle := named_bundle% "RealMapCertificates/relations/basis13795.json"
theorem reductionProof13795 : EqualModuloRelations reduction13795.relations reduction13795.input reduction13795.output := by lin_cert using reduction13795.terms
theorem substitutionProof13795 : IsMapEvaluation generatorImages reduction13795.relations [158,324] reduction13795.output := by lin_cert using reduction13795.terms
def map_8_224 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14145 : InImage map_8_224 image14145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14145 : Bundle := named_bundle% "RealMapCertificates/relations/basis14145.json"
theorem reductionProof14145 : EqualModuloRelations reduction14145.relations reduction14145.input reduction14145.output := by lin_cert using reduction14145.terms
theorem substitutionProof14145 : IsMapEvaluation generatorImages reduction14145.relations [7,1348] reduction14145.output := by lin_cert using reduction14145.terms
def map_8_225 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14346 : InImage map_8_225 image14346 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14346 : Bundle := named_bundle% "RealMapCertificates/relations/basis14346.json"
theorem reductionProof14346 : EqualModuloRelations reduction14346.relations reduction14346.input reduction14346.output := by lin_cert using reduction14346.terms
theorem substitutionProof14346 : IsMapEvaluation generatorImages reduction14346.relations [0,1634] reduction14346.output := by lin_cert using reduction14346.terms
def map_8_226 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14499 : InImage map_8_226 image14499 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14499 : Bundle := named_bundle% "RealMapCertificates/relations/basis14499.json"
theorem reductionProof14499 : EqualModuloRelations reduction14499.relations reduction14499.input reduction14499.output := by lin_cert using reduction14499.terms
theorem substitutionProof14499 : IsMapEvaluation generatorImages reduction14499.relations [1,1634] reduction14499.output := by lin_cert using reduction14499.terms
def map_8_227 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14706 : InImage map_8_227 image14706 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14706 : Bundle := named_bundle% "RealMapCertificates/relations/basis14706.json"
theorem reductionProof14706 : EqualModuloRelations reduction14706.relations reduction14706.input reduction14706.output := by lin_cert using reduction14706.terms
theorem substitutionProof14706 : IsMapEvaluation generatorImages reduction14706.relations [1,7,7,70,324] reduction14706.output := by lin_cert using reduction14706.terms
def image14707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14707 : InImage map_8_227 image14707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14707 : Bundle := named_bundle% "RealMapCertificates/relations/basis14707.json"
theorem reductionProof14707 : EqualModuloRelations reduction14707.relations reduction14707.input reduction14707.output := by lin_cert using reduction14707.terms
theorem substitutionProof14707 : IsMapEvaluation generatorImages reduction14707.relations [0,0,0,18,1058] reduction14707.output := by lin_cert using reduction14707.terms
def map_8_228 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14942 : InImage map_8_228 image14942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14942 : Bundle := named_bundle% "RealMapCertificates/relations/basis14942.json"
theorem reductionProof14942 : EqualModuloRelations reduction14942.relations reduction14942.input reduction14942.output := by lin_cert using reduction14942.terms
theorem substitutionProof14942 : IsMapEvaluation generatorImages reduction14942.relations [1713] reduction14942.output := by lin_cert using reduction14942.terms
def image14943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14943 : InImage map_8_228 image14943 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14943 : Bundle := named_bundle% "RealMapCertificates/relations/basis14943.json"
theorem reductionProof14943 : EqualModuloRelations reduction14943.relations reduction14943.input reduction14943.output := by lin_cert using reduction14943.terms
theorem substitutionProof14943 : IsMapEvaluation generatorImages reduction14943.relations [7,1424] reduction14943.output := by lin_cert using reduction14943.terms
def map_8_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15088 : InImage map_8_229 image15088 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15088 : Bundle := named_bundle% "RealMapCertificates/relations/basis15088.json"
theorem reductionProof15088 : EqualModuloRelations reduction15088.relations reduction15088.input reduction15088.output := by lin_cert using reduction15088.terms
theorem substitutionProof15088 : IsMapEvaluation generatorImages reduction15088.relations [0,1714] reduction15088.output := by lin_cert using reduction15088.terms
def map_8_230 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15323 : InImage map_8_230 image15323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15323 : Bundle := named_bundle% "RealMapCertificates/relations/basis15323.json"
theorem reductionProof15323 : EqualModuloRelations reduction15323.relations reduction15323.input reduction15323.output := by lin_cert using reduction15323.terms
theorem substitutionProof15323 : IsMapEvaluation generatorImages reduction15323.relations [191,324] reduction15323.output := by lin_cert using reduction15323.terms
def image15324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15324 : InImage map_8_230 image15324 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15324 : Bundle := named_bundle% "RealMapCertificates/relations/basis15324.json"
theorem reductionProof15324 : EqualModuloRelations reduction15324.relations reduction15324.input reduction15324.output := by lin_cert using reduction15324.terms
theorem substitutionProof15324 : IsMapEvaluation generatorImages reduction15324.relations [0,0,1715] reduction15324.output := by lin_cert using reduction15324.terms
def map_8_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15738 : InImage map_8_232 image15738 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15738 : Bundle := named_bundle% "RealMapCertificates/relations/basis15738.json"
theorem reductionProof15738 : EqualModuloRelations reduction15738.relations reduction15738.input reduction15738.output := by lin_cert using reduction15738.terms
theorem substitutionProof15738 : IsMapEvaluation generatorImages reduction15738.relations [1811] reduction15738.output := by lin_cert using reduction15738.terms
def image15739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15739 : InImage map_8_232 image15739 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15739 : Bundle := named_bundle% "RealMapCertificates/relations/basis15739.json"
theorem reductionProof15739 : EqualModuloRelations reduction15739.relations reduction15739.input reduction15739.output := by lin_cert using reduction15739.terms
theorem substitutionProof15739 : IsMapEvaluation generatorImages reduction15739.relations [198,324] reduction15739.output := by lin_cert using reduction15739.terms
def map_8_234 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16227 : InImage map_8_234 image16227 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16227 : Bundle := named_bundle% "RealMapCertificates/relations/basis16227.json"
theorem reductionProof16227 : EqualModuloRelations reduction16227.relations reduction16227.input reduction16227.output := by lin_cert using reduction16227.terms
theorem substitutionProof16227 : IsMapEvaluation generatorImages reduction16227.relations [204,324] reduction16227.output := by lin_cert using reduction16227.terms
def image16228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16228 : InImage map_8_234 image16228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16228 : Bundle := named_bundle% "RealMapCertificates/relations/basis16228.json"
theorem reductionProof16228 : EqualModuloRelations reduction16228.relations reduction16228.input reduction16228.output := by lin_cert using reduction16228.terms
theorem substitutionProof16228 : IsMapEvaluation generatorImages reduction16228.relations [203,324] reduction16228.output := by lin_cert using reduction16228.terms
def map_8_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16637 : InImage map_8_236 image16637 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16637 : Bundle := named_bundle% "RealMapCertificates/relations/basis16637.json"
theorem reductionProof16637 : EqualModuloRelations reduction16637.relations reduction16637.input reduction16637.output := by lin_cert using reduction16637.terms
theorem substitutionProof16637 : IsMapEvaluation generatorImages reduction16637.relations [214,324] reduction16637.output := by lin_cert using reduction16637.terms
def image16638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16638 : InImage map_8_236 image16638 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16638 : Bundle := named_bundle% "RealMapCertificates/relations/basis16638.json"
theorem reductionProof16638 : EqualModuloRelations reduction16638.relations reduction16638.input reduction16638.output := by lin_cert using reduction16638.terms
theorem substitutionProof16638 : IsMapEvaluation generatorImages reduction16638.relations [7,1565] reduction16638.output := by lin_cert using reduction16638.terms
def map_8_238 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17091 : InImage map_8_238 image17091 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17091 : Bundle := named_bundle% "RealMapCertificates/relations/basis17091.json"
theorem reductionProof17091 : EqualModuloRelations reduction17091.relations reduction17091.input reduction17091.output := by lin_cert using reduction17091.terms
theorem substitutionProof17091 : IsMapEvaluation generatorImages reduction17091.relations [1959] reduction17091.output := by lin_cert using reduction17091.terms
def image17092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17092 : InImage map_8_238 image17092 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17092 : Bundle := named_bundle% "RealMapCertificates/relations/basis17092.json"
theorem reductionProof17092 : EqualModuloRelations reduction17092.relations reduction17092.input reduction17092.output := by lin_cert using reduction17092.terms
theorem substitutionProof17092 : IsMapEvaluation generatorImages reduction17092.relations [222,324] reduction17092.output := by lin_cert using reduction17092.terms
def map_8_240 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17649 : InImage map_8_240 image17649 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17649 : Bundle := named_bundle% "RealMapCertificates/relations/basis17649.json"
theorem reductionProof17649 : EqualModuloRelations reduction17649.relations reduction17649.input reduction17649.output := by lin_cert using reduction17649.terms
theorem substitutionProof17649 : IsMapEvaluation generatorImages reduction17649.relations [230,324] reduction17649.output := by lin_cert using reduction17649.terms
def image17650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17650 : InImage map_8_240 image17650 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17650 : Bundle := named_bundle% "RealMapCertificates/relations/basis17650.json"
theorem reductionProof17650 : EqualModuloRelations reduction17650.relations reduction17650.input reduction17650.output := by lin_cert using reduction17650.terms
theorem substitutionProof17650 : IsMapEvaluation generatorImages reduction17650.relations [7,1634] reduction17650.output := by lin_cert using reduction17650.terms
def map_8_241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17853 : InImage map_8_241 image17853 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17853 : Bundle := named_bundle% "RealMapCertificates/relations/basis17853.json"
theorem reductionProof17853 : EqualModuloRelations reduction17853.relations reduction17853.input reduction17853.output := by lin_cert using reduction17853.terms
theorem substitutionProof17853 : IsMapEvaluation generatorImages reduction17853.relations [0,7,1635] reduction17853.output := by lin_cert using reduction17853.terms
def map_8_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18113 : InImage map_8_242 image18113 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18113 : Bundle := named_bundle% "RealMapCertificates/relations/basis18113.json"
theorem reductionProof18113 : EqualModuloRelations reduction18113.relations reduction18113.input reduction18113.output := by lin_cert using reduction18113.terms
theorem substitutionProof18113 : IsMapEvaluation generatorImages reduction18113.relations [240,324] reduction18113.output := by lin_cert using reduction18113.terms
def map_8_243 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18386 : InImage map_8_243 image18386 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18386 : Bundle := named_bundle% "RealMapCertificates/relations/basis18386.json"
theorem reductionProof18386 : EqualModuloRelations reduction18386.relations reduction18386.input reduction18386.output := by lin_cert using reduction18386.terms
theorem substitutionProof18386 : IsMapEvaluation generatorImages reduction18386.relations [0,241,324] reduction18386.output := by lin_cert using reduction18386.terms
def map_8_246 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19178 : InImage map_8_246 image19178 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19178 : Bundle := named_bundle% "RealMapCertificates/relations/basis19178.json"
theorem reductionProof19178 : EqualModuloRelations reduction19178.relations reduction19178.input reduction19178.output := by lin_cert using reduction19178.terms
theorem substitutionProof19178 : IsMapEvaluation generatorImages reduction19178.relations [3,1960] reduction19178.output := by lin_cert using reduction19178.terms
def map_8_247 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19390 : InImage map_8_247 image19390 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19390 : Bundle := named_bundle% "RealMapCertificates/relations/basis19390.json"
theorem reductionProof19390 : EqualModuloRelations reduction19390.relations reduction19390.input reduction19390.output := by lin_cert using reduction19390.terms
theorem substitutionProof19390 : IsMapEvaluation generatorImages reduction19390.relations [264,324] reduction19390.output := by lin_cert using reduction19390.terms
def map_8_248 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19674 : InImage map_8_248 image19674 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19674 : Bundle := named_bundle% "RealMapCertificates/relations/basis19674.json"
theorem reductionProof19674 : EqualModuloRelations reduction19674.relations reduction19674.input reduction19674.output := by lin_cert using reduction19674.terms
theorem substitutionProof19674 : IsMapEvaluation generatorImages reduction19674.relations [3,231,324] reduction19674.output := by lin_cert using reduction19674.terms
def map_8_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20469 : InImage map_8_251 image20469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20469 : Bundle := named_bundle% "RealMapCertificates/relations/basis20469.json"
theorem reductionProof20469 : EqualModuloRelations reduction20469.relations reduction20469.input reduction20469.output := by lin_cert using reduction20469.terms
theorem substitutionProof20469 : IsMapEvaluation generatorImages reduction20469.relations [2,2273] reduction20469.output := by lin_cert using reduction20469.terms
def map_8_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21961 : InImage map_8_256 image21961 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21961 : Bundle := named_bundle% "RealMapCertificates/relations/basis21961.json"
theorem reductionProof21961 : EqualModuloRelations reduction21961.relations reduction21961.input reduction21961.output := by lin_cert using reduction21961.terms
theorem substitutionProof21961 : IsMapEvaluation generatorImages reduction21961.relations [2625] reduction21961.output := by lin_cert using reduction21961.terms
def map_8_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22294 : InImage map_8_257 image22294 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22294 : Bundle := named_bundle% "RealMapCertificates/relations/basis22294.json"
theorem reductionProof22294 : EqualModuloRelations reduction22294.relations reduction22294.input reduction22294.output := by lin_cert using reduction22294.terms
theorem substitutionProof22294 : IsMapEvaluation generatorImages reduction22294.relations [2668] reduction22294.output := by lin_cert using reduction22294.terms
def map_8_259 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22984 : InImage map_8_259 image22984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22984 : Bundle := named_bundle% "RealMapCertificates/relations/basis22984.json"
theorem reductionProof22984 : EqualModuloRelations reduction22984.relations reduction22984.input reduction22984.output := by lin_cert using reduction22984.terms
theorem substitutionProof22984 : IsMapEvaluation generatorImages reduction22984.relations [2787] reduction22984.output := by lin_cert using reduction22984.terms
def image22985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22985 : InImage map_8_259 image22985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22985 : Bundle := named_bundle% "RealMapCertificates/relations/basis22985.json"
theorem reductionProof22985 : EqualModuloRelations reduction22985.relations reduction22985.input reduction22985.output := by lin_cert using reduction22985.terms
theorem substitutionProof22985 : IsMapEvaluation generatorImages reduction22985.relations [0,2737] reduction22985.output := by lin_cert using reduction22985.terms
def map_8_260 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23389 : InImage map_8_260 image23389 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23389 : Bundle := named_bundle% "RealMapCertificates/relations/basis23389.json"
theorem reductionProof23389 : EqualModuloRelations reduction23389.relations reduction23389.input reduction23389.output := by lin_cert using reduction23389.terms
theorem substitutionProof23389 : IsMapEvaluation generatorImages reduction23389.relations [2853] reduction23389.output := by lin_cert using reduction23389.terms
def image23390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23390 : InImage map_8_260 image23390 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23390 : Bundle := named_bundle% "RealMapCertificates/relations/basis23390.json"
theorem reductionProof23390 : EqualModuloRelations reduction23390.relations reduction23390.input reduction23390.output := by lin_cert using reduction23390.terms
theorem substitutionProof23390 : IsMapEvaluation generatorImages reduction23390.relations [2852] reduction23390.output := by lin_cert using reduction23390.terms
def image23391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23391 : InImage map_8_260 image23391 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23391 : Bundle := named_bundle% "RealMapCertificates/relations/basis23391.json"
theorem reductionProof23391 : EqualModuloRelations reduction23391.relations reduction23391.input reduction23391.output := by lin_cert using reduction23391.terms
theorem substitutionProof23391 : IsMapEvaluation generatorImages reduction23391.relations [2851] reduction23391.output := by lin_cert using reduction23391.terms
def image23392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23392 : InImage map_8_260 image23392 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23392 : Bundle := named_bundle% "RealMapCertificates/relations/basis23392.json"
theorem reductionProof23392 : EqualModuloRelations reduction23392.relations reduction23392.input reduction23392.output := by lin_cert using reduction23392.terms
theorem substitutionProof23392 : IsMapEvaluation generatorImages reduction23392.relations [1,2737] reduction23392.output := by lin_cert using reduction23392.terms
def image23393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23393 : InImage map_8_260 image23393 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23393 : Bundle := named_bundle% "RealMapCertificates/relations/basis23393.json"
theorem reductionProof23393 : EqualModuloRelations reduction23393.relations reduction23393.input reduction23393.output := by lin_cert using reduction23393.terms
theorem substitutionProof23393 : IsMapEvaluation generatorImages reduction23393.relations [0,2788] reduction23393.output := by lin_cert using reduction23393.terms
def map_8_261 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image23811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23811 : InImage map_8_261 image23811 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23811 : Bundle := named_bundle% "RealMapCertificates/relations/basis23811.json"
theorem reductionProof23811 : EqualModuloRelations reduction23811.relations reduction23811.input reduction23811.output := by lin_cert using reduction23811.terms
theorem substitutionProof23811 : IsMapEvaluation generatorImages reduction23811.relations [2912] reduction23811.output := by lin_cert using reduction23811.terms
def image23812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23812 : InImage map_8_261 image23812 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23812 : Bundle := named_bundle% "RealMapCertificates/relations/basis23812.json"
theorem reductionProof23812 : EqualModuloRelations reduction23812.relations reduction23812.input reduction23812.output := by lin_cert using reduction23812.terms
theorem substitutionProof23812 : IsMapEvaluation generatorImages reduction23812.relations [2911] reduction23812.output := by lin_cert using reduction23812.terms
def image23813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23813 : InImage map_8_261 image23813 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23813 : Bundle := named_bundle% "RealMapCertificates/relations/basis23813.json"
theorem reductionProof23813 : EqualModuloRelations reduction23813.relations reduction23813.input reduction23813.output := by lin_cert using reduction23813.terms
theorem substitutionProof23813 : IsMapEvaluation generatorImages reduction23813.relations [0,2855] reduction23813.output := by lin_cert using reduction23813.terms
def map_9_9 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16 : InImage map_9_9 image16 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16 : Bundle := named_bundle% "RealMapCertificates/relations/basis16.json"
theorem reductionProof16 : EqualModuloRelations reduction16.relations reduction16.input reduction16.output := by lin_cert using reduction16.terms
theorem substitutionProof16 : IsMapEvaluation generatorImages reduction16.relations [0,0,0,0,0,0,0,0,0] reduction16.output := by lin_cert using reduction16.terms
def map_9_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image78 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation78 : InImage map_9_26 image78 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction78 : Bundle := named_bundle% "RealMapCertificates/relations/basis78.json"
theorem reductionProof78 : EqualModuloRelations reduction78.relations reduction78.input reduction78.output := by lin_cert using reduction78.terms
theorem substitutionProof78 : IsMapEvaluation generatorImages reduction78.relations [14] reduction78.output := by lin_cert using reduction78.terms
def map_9_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image86 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation86 : InImage map_9_28 image86 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction86 : Bundle := named_bundle% "RealMapCertificates/relations/basis86.json"
theorem reductionProof86 : EqualModuloRelations reduction86.relations reduction86.input reduction86.output := by lin_cert using reduction86.terms
theorem substitutionProof86 : IsMapEvaluation generatorImages reduction86.relations [15] reduction86.output := by lin_cert using reduction86.terms
def map_9_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image97 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation97 : InImage map_9_31 image97 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction97 : Bundle := named_bundle% "RealMapCertificates/relations/basis97.json"
theorem reductionProof97 : EqualModuloRelations reduction97.relations reduction97.input reduction97.output := by lin_cert using reduction97.terms
theorem substitutionProof97 : IsMapEvaluation generatorImages reduction97.relations [0,16] reduction97.output := by lin_cert using reduction97.terms
def map_9_32 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image101 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation101 : InImage map_9_32 image101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction101 : Bundle := named_bundle% "RealMapCertificates/relations/basis101.json"
theorem reductionProof101 : EqualModuloRelations reduction101.relations reduction101.input reduction101.output := by lin_cert using reduction101.terms
theorem substitutionProof101 : IsMapEvaluation generatorImages reduction101.relations [1,16] reduction101.output := by lin_cert using reduction101.terms
def image102 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation102 : InImage map_9_32 image102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction102 : Bundle := named_bundle% "RealMapCertificates/relations/basis102.json"
theorem reductionProof102 : EqualModuloRelations reduction102.relations reduction102.input reduction102.output := by lin_cert using reduction102.terms
theorem substitutionProof102 : IsMapEvaluation generatorImages reduction102.relations [0,0,17] reduction102.output := by lin_cert using reduction102.terms
def map_9_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image115 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation115 : InImage map_9_34 image115 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction115 : Bundle := named_bundle% "RealMapCertificates/relations/basis115.json"
theorem reductionProof115 : EqualModuloRelations reduction115.relations reduction115.input reduction115.output := by lin_cert using reduction115.terms
theorem substitutionProof115 : IsMapEvaluation generatorImages reduction115.relations [0,19] reduction115.output := by lin_cert using reduction115.terms
def map_9_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image125 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation125 : InImage map_9_35 image125 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction125 : Bundle := named_bundle% "RealMapCertificates/relations/basis125.json"
theorem reductionProof125 : EqualModuloRelations reduction125.relations reduction125.input reduction125.output := by lin_cert using reduction125.terms
theorem substitutionProof125 : IsMapEvaluation generatorImages reduction125.relations [0,0,20] reduction125.output := by lin_cert using reduction125.terms
def map_9_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image140 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation140 : InImage map_9_37 image140 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction140 : Bundle := named_bundle% "RealMapCertificates/relations/basis140.json"
theorem reductionProof140 : EqualModuloRelations reduction140.relations reduction140.input reduction140.output := by lin_cert using reduction140.terms
theorem substitutionProof140 : IsMapEvaluation generatorImages reduction140.relations [0,8,8] reduction140.output := by lin_cert using reduction140.terms
def map_9_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image149 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation149 : InImage map_9_38 image149 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction149 : Bundle := named_bundle% "RealMapCertificates/relations/basis149.json"
theorem reductionProof149 : EqualModuloRelations reduction149.relations reduction149.input reduction149.output := by lin_cert using reduction149.terms
theorem substitutionProof149 : IsMapEvaluation generatorImages reduction149.relations [0,0,22] reduction149.output := by lin_cert using reduction149.terms
def map_9_39 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation156 : InImage map_9_39 image156 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction156 : Bundle := named_bundle% "RealMapCertificates/relations/basis156.json"
theorem reductionProof156 : EqualModuloRelations reduction156.relations reduction156.input reduction156.output := by lin_cert using reduction156.terms
theorem substitutionProof156 : IsMapEvaluation generatorImages reduction156.relations [0,0,0,23] reduction156.output := by lin_cert using reduction156.terms
def map_9_40 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation164 : InImage map_9_40 image164 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction164 : Bundle := named_bundle% "RealMapCertificates/relations/basis164.json"
theorem reductionProof164 : EqualModuloRelations reduction164.relations reduction164.input reduction164.output := by lin_cert using reduction164.terms
theorem substitutionProof164 : IsMapEvaluation generatorImages reduction164.relations [0,8,9] reduction164.output := by lin_cert using reduction164.terms
def image165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation165 : InImage map_9_40 image165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction165 : Bundle := named_bundle% "RealMapCertificates/relations/basis165.json"
theorem reductionProof165 : EqualModuloRelations reduction165.relations reduction165.input reduction165.output := by lin_cert using reduction165.terms
theorem substitutionProof165 : IsMapEvaluation generatorImages reduction165.relations [0,0,0,0,0,0,0,0,18] reduction165.output := by lin_cert using reduction165.terms
def map_9_41 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image177 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation177 : InImage map_9_41 image177 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction177 : Bundle := named_bundle% "RealMapCertificates/relations/basis177.json"
theorem reductionProof177 : EqualModuloRelations reduction177.relations reduction177.input reduction177.output := by lin_cert using reduction177.terms
theorem substitutionProof177 : IsMapEvaluation generatorImages reduction177.relations [0,0,29] reduction177.output := by lin_cert using reduction177.terms
def map_9_43 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image193 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation193 : InImage map_9_43 image193 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction193 : Bundle := named_bundle% "RealMapCertificates/relations/basis193.json"
theorem reductionProof193 : EqualModuloRelations reduction193.relations reduction193.input reduction193.output := by lin_cert using reduction193.terms
theorem substitutionProof193 : IsMapEvaluation generatorImages reduction193.relations [0,8,13] reduction193.output := by lin_cert using reduction193.terms
def map_9_44 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation203 : InImage map_9_44 image203 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction203 : Bundle := named_bundle% "RealMapCertificates/relations/basis203.json"
theorem reductionProof203 : EqualModuloRelations reduction203.relations reduction203.input reduction203.output := by lin_cert using reduction203.terms
theorem substitutionProof203 : IsMapEvaluation generatorImages reduction203.relations [0,0,32] reduction203.output := by lin_cert using reduction203.terms
def map_9_46 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation227 : InImage map_9_46 image227 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction227 : Bundle := named_bundle% "RealMapCertificates/relations/basis227.json"
theorem reductionProof227 : EqualModuloRelations reduction227.relations reduction227.input reduction227.output := by lin_cert using reduction227.terms
theorem substitutionProof227 : IsMapEvaluation generatorImages reduction227.relations [0,0,0,0,34] reduction227.output := by lin_cert using reduction227.terms
def map_9_47 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation239 : InImage map_9_47 image239 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction239 : Bundle := named_bundle% "RealMapCertificates/relations/basis239.json"
theorem reductionProof239 : EqualModuloRelations reduction239.relations reduction239.input reduction239.output := by lin_cert using reduction239.terms
theorem substitutionProof239 : IsMapEvaluation generatorImages reduction239.relations [0,0,0,36] reduction239.output := by lin_cert using reduction239.terms
def map_9_48 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image244 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation244 : InImage map_9_48 image244 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction244 : Bundle := named_bundle% "RealMapCertificates/relations/basis244.json"
theorem reductionProof244 : EqualModuloRelations reduction244.relations reduction244.input reduction244.output := by lin_cert using reduction244.terms
theorem substitutionProof244 : IsMapEvaluation generatorImages reduction244.relations [42] reduction244.output := by lin_cert using reduction244.terms
def map_9_51 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image270 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation270 : InImage map_9_51 image270 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction270 : Bundle := named_bundle% "RealMapCertificates/relations/basis270.json"
theorem reductionProof270 : EqualModuloRelations reduction270.relations reduction270.input reduction270.output := by lin_cert using reduction270.terms
theorem substitutionProof270 : IsMapEvaluation generatorImages reduction270.relations [46] reduction270.output := by lin_cert using reduction270.terms
def map_9_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image296 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation296 : InImage map_9_54 image296 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction296 : Bundle := named_bundle% "RealMapCertificates/relations/basis296.json"
theorem reductionProof296 : EqualModuloRelations reduction296.relations reduction296.input reduction296.output := by lin_cert using reduction296.terms
theorem substitutionProof296 : IsMapEvaluation generatorImages reduction296.relations [51] reduction296.output := by lin_cert using reduction296.terms
def map_9_57 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image328 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation328 : InImage map_9_57 image328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction328 : Bundle := named_bundle% "RealMapCertificates/relations/basis328.json"
theorem reductionProof328 : EqualModuloRelations reduction328.relations reduction328.input reduction328.output := by lin_cert using reduction328.terms
theorem substitutionProof328 : IsMapEvaluation generatorImages reduction328.relations [1,12,18] reduction328.output := by lin_cert using reduction328.terms
def image329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation329 : InImage map_9_57 image329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction329 : Bundle := named_bundle% "RealMapCertificates/relations/basis329.json"
theorem reductionProof329 : EqualModuloRelations reduction329.relations reduction329.input reduction329.output := by lin_cert using reduction329.terms
theorem substitutionProof329 : IsMapEvaluation generatorImages reduction329.relations [0,0,53] reduction329.output := by lin_cert using reduction329.terms
def map_9_60 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation356 : InImage map_9_60 image356 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction356 : Bundle := named_bundle% "RealMapCertificates/relations/basis356.json"
theorem reductionProof356 : EqualModuloRelations reduction356.relations reduction356.input reduction356.output := by lin_cert using reduction356.terms
theorem substitutionProof356 : IsMapEvaluation generatorImages reduction356.relations [13,24] reduction356.output := by lin_cert using reduction356.terms
def map_9_62 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation373 : InImage map_9_62 image373 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction373 : Bundle := named_bundle% "RealMapCertificates/relations/basis373.json"
theorem reductionProof373 : EqualModuloRelations reduction373.relations reduction373.input reduction373.output := by lin_cert using reduction373.terms
theorem substitutionProof373 : IsMapEvaluation generatorImages reduction373.relations [16,18] reduction373.output := by lin_cert using reduction373.terms
def map_9_63 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation386 : InImage map_9_63 image386 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction386 : Bundle := named_bundle% "RealMapCertificates/relations/basis386.json"
theorem reductionProof386 : EqualModuloRelations reduction386.relations reduction386.input reduction386.output := by lin_cert using reduction386.terms
theorem substitutionProof386 : IsMapEvaluation generatorImages reduction386.relations [0,17,18] reduction386.output := by lin_cert using reduction386.terms
def map_9_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation411 : InImage map_9_65 image411 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction411 : Bundle := named_bundle% "RealMapCertificates/relations/basis411.json"
theorem reductionProof411 : EqualModuloRelations reduction411.relations reduction411.input reduction411.output := by lin_cert using reduction411.terms
theorem substitutionProof411 : IsMapEvaluation generatorImages reduction411.relations [18,19] reduction411.output := by lin_cert using reduction411.terms
def map_9_66 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation432 : InImage map_9_66 image432 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction432 : Bundle := named_bundle% "RealMapCertificates/relations/basis432.json"
theorem reductionProof432 : EqualModuloRelations reduction432.relations reduction432.input reduction432.output := by lin_cert using reduction432.terms
theorem substitutionProof432 : IsMapEvaluation generatorImages reduction432.relations [0,18,20] reduction432.output := by lin_cert using reduction432.terms
def image433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation433 : InImage map_9_66 image433 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction433 : Bundle := named_bundle% "RealMapCertificates/relations/basis433.json"
theorem reductionProof433 : EqualModuloRelations reduction433.relations reduction433.input reduction433.output := by lin_cert using reduction433.terms
theorem substitutionProof433 : IsMapEvaluation generatorImages reduction433.relations [0,0,67] reduction433.output := by lin_cert using reduction433.terms
def map_9_69 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation489 : InImage map_9_69 image489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction489 : Bundle := named_bundle% "RealMapCertificates/relations/basis489.json"
theorem reductionProof489 : EqualModuloRelations reduction489.relations reduction489.input reduction489.output := by lin_cert using reduction489.terms
theorem substitutionProof489 : IsMapEvaluation generatorImages reduction489.relations [80] reduction489.output := by lin_cert using reduction489.terms
def image490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation490 : InImage map_9_69 image490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction490 : Bundle := named_bundle% "RealMapCertificates/relations/basis490.json"
theorem reductionProof490 : EqualModuloRelations reduction490.relations reduction490.input reduction490.output := by lin_cert using reduction490.terms
theorem substitutionProof490 : IsMapEvaluation generatorImages reduction490.relations [0,0,73] reduction490.output := by lin_cert using reduction490.terms
def map_9_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation507 : InImage map_9_70 image507 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction507 : Bundle := named_bundle% "RealMapCertificates/relations/basis507.json"
theorem reductionProof507 : EqualModuloRelations reduction507.relations reduction507.input reduction507.output := by lin_cert using reduction507.terms
theorem substitutionProof507 : IsMapEvaluation generatorImages reduction507.relations [81] reduction507.output := by lin_cert using reduction507.terms
end RealMapCertificates
