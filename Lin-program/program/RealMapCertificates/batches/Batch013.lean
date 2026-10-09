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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 34 => []
  | 36 => []
  | 43 => []
  | 48 => []
  | 53 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 76 => []
  | 82 => []
  | 84 => []
  | 95 => []
  | 105 => []
  | 106 => []
  | 107 => []
  | 108 => []
  | 120 => []
  | 121 => []
  | 122 => []
  | 128 => []
  | 129 => []
  | 133 => []
  | 134 => []
  | 139 => []
  | 163 => []
  | 174 => []
  | 181 => []
  | 190 => []
  | 191 => []
  | 197 => []
  | 198 => []
  | 203 => []
  | 213 => []
  | 216 => []
  | 235 => []
  | 239 => []
  | 251 => []
  | 270 => []
  | 271 => []
  | 272 => []
  | 282 => []
  | 289 => []
  | 313 => []
  | 314 => []
  | 322 => []
  | 333 => []
  | 338 => []
  | 352 => []
  | 366 => []
  | 367 => []
  | 373 => []
  | 374 => []
  | 375 => []
  | 376 => []
  | 390 => []
  | 391 => []
  | 392 => []
  | 394 => []
  | 414 => []
  | _ => []
def map_9_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation528 : InImage map_9_71 image528 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction528 : Bundle := named_bundle% "RealMapCertificates/relations/basis528.json"
theorem reductionProof528 : EqualModuloRelations reduction528.relations reduction528.input reduction528.output := by lin_cert using reduction528.terms
theorem substitutionProof528 : IsMapEvaluation generatorImages reduction528.relations [0,0,0,0,0,0,0,18,18] reduction528.output := by lin_cert using reduction528.terms
def map_9_72 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation550 : InImage map_9_72 image550 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction550 : Bundle := named_bundle% "RealMapCertificates/relations/basis550.json"
theorem reductionProof550 : EqualModuloRelations reduction550.relations reduction550.input reduction550.output := by lin_cert using reduction550.terms
theorem substitutionProof550 : IsMapEvaluation generatorImages reduction550.relations [1,82] reduction550.output := by lin_cert using reduction550.terms
def image551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation551 : InImage map_9_72 image551 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction551 : Bundle := named_bundle% "RealMapCertificates/relations/basis551.json"
theorem reductionProof551 : EqualModuloRelations reduction551.relations reduction551.input reduction551.output := by lin_cert using reduction551.terms
theorem substitutionProof551 : IsMapEvaluation generatorImages reduction551.relations [0,0,84] reduction551.output := by lin_cert using reduction551.terms
def image552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation552 : InImage map_9_72 image552 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction552 : Bundle := named_bundle% "RealMapCertificates/relations/basis552.json"
theorem reductionProof552 : EqualModuloRelations reduction552.relations reduction552.input reduction552.output := by lin_cert using reduction552.terms
theorem substitutionProof552 : IsMapEvaluation generatorImages reduction552.relations [0,0,0,0,0,0,0,0,69] reduction552.output := by lin_cert using reduction552.terms
def map_9_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation574 : InImage map_9_73 image574 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction574 : Bundle := named_bundle% "RealMapCertificates/relations/basis574.json"
theorem reductionProof574 : EqualModuloRelations reduction574.relations reduction574.input reduction574.output := by lin_cert using reduction574.terms
theorem substitutionProof574 : IsMapEvaluation generatorImages reduction574.relations [0,3,67] reduction574.output := by lin_cert using reduction574.terms
def map_9_74 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation597 : InImage map_9_74 image597 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction597 : Bundle := named_bundle% "RealMapCertificates/relations/basis597.json"
theorem reductionProof597 : EqualModuloRelations reduction597.relations reduction597.input reduction597.output := by lin_cert using reduction597.terms
theorem substitutionProof597 : IsMapEvaluation generatorImages reduction597.relations [2,82] reduction597.output := by lin_cert using reduction597.terms
def image598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation598 : InImage map_9_74 image598 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction598 : Bundle := named_bundle% "RealMapCertificates/relations/basis598.json"
theorem reductionProof598 : EqualModuloRelations reduction598.relations reduction598.input reduction598.output := by lin_cert using reduction598.terms
theorem substitutionProof598 : IsMapEvaluation generatorImages reduction598.relations [0,0,3,68] reduction598.output := by lin_cert using reduction598.terms
def map_9_76 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation638 : InImage map_9_76 image638 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction638 : Bundle := named_bundle% "RealMapCertificates/relations/basis638.json"
theorem reductionProof638 : EqualModuloRelations reduction638.relations reduction638.input reduction638.output := by lin_cert using reduction638.terms
theorem substitutionProof638 : IsMapEvaluation generatorImages reduction638.relations [106] reduction638.output := by lin_cert using reduction638.terms
def image639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation639 : InImage map_9_76 image639 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction639 : Bundle := named_bundle% "RealMapCertificates/relations/basis639.json"
theorem reductionProof639 : EqualModuloRelations reduction639.relations reduction639.input reduction639.output := by lin_cert using reduction639.terms
theorem substitutionProof639 : IsMapEvaluation generatorImages reduction639.relations [105] reduction639.output := by lin_cert using reduction639.terms
def map_9_77 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation658 : InImage map_9_77 image658 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction658 : Bundle := named_bundle% "RealMapCertificates/relations/basis658.json"
theorem reductionProof658 : EqualModuloRelations reduction658.relations reduction658.input reduction658.output := by lin_cert using reduction658.terms
theorem substitutionProof658 : IsMapEvaluation generatorImages reduction658.relations [0,107] reduction658.output := by lin_cert using reduction658.terms
def map_9_78 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation688 : InImage map_9_78 image688 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction688 : Bundle := named_bundle% "RealMapCertificates/relations/basis688.json"
theorem reductionProof688 : EqualModuloRelations reduction688.relations reduction688.input reduction688.output := by lin_cert using reduction688.terms
theorem substitutionProof688 : IsMapEvaluation generatorImages reduction688.relations [1,107] reduction688.output := by lin_cert using reduction688.terms
def image689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation689 : InImage map_9_78 image689 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction689 : Bundle := named_bundle% "RealMapCertificates/relations/basis689.json"
theorem reductionProof689 : EqualModuloRelations reduction689.relations reduction689.input reduction689.output := by lin_cert using reduction689.terms
theorem substitutionProof689 : IsMapEvaluation generatorImages reduction689.relations [0,2,95] reduction689.output := by lin_cert using reduction689.terms
def map_9_79 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation707 : InImage map_9_79 image707 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction707 : Bundle := named_bundle% "RealMapCertificates/relations/basis707.json"
theorem reductionProof707 : EqualModuloRelations reduction707.relations reduction707.input reduction707.output := by lin_cert using reduction707.terms
theorem substitutionProof707 : IsMapEvaluation generatorImages reduction707.relations [1,108] reduction707.output := by lin_cert using reduction707.terms
def map_9_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation723 : InImage map_9_80 image723 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction723 : Bundle := named_bundle% "RealMapCertificates/relations/basis723.json"
theorem reductionProof723 : EqualModuloRelations reduction723.relations reduction723.input reduction723.output := by lin_cert using reduction723.terms
theorem substitutionProof723 : IsMapEvaluation generatorImages reduction723.relations [2,107] reduction723.output := by lin_cert using reduction723.terms
def map_9_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation752 : InImage map_9_81 image752 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction752 : Bundle := named_bundle% "RealMapCertificates/relations/basis752.json"
theorem reductionProof752 : EqualModuloRelations reduction752.relations reduction752.input reduction752.output := by lin_cert using reduction752.terms
theorem substitutionProof752 : IsMapEvaluation generatorImages reduction752.relations [0,3,3,68] reduction752.output := by lin_cert using reduction752.terms
def map_9_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation772 : InImage map_9_82 image772 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction772 : Bundle := named_bundle% "RealMapCertificates/relations/basis772.json"
theorem reductionProof772 : EqualModuloRelations reduction772.relations reduction772.input reduction772.output := by lin_cert using reduction772.terms
theorem substitutionProof772 : IsMapEvaluation generatorImages reduction772.relations [0,0,7,68] reduction772.output := by lin_cert using reduction772.terms
def map_9_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation792 : InImage map_9_83 image792 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction792 : Bundle := named_bundle% "RealMapCertificates/relations/basis792.json"
theorem reductionProof792 : EqualModuloRelations reduction792.relations reduction792.input reduction792.output := by lin_cert using reduction792.terms
theorem substitutionProof792 : IsMapEvaluation generatorImages reduction792.relations [0,120] reduction792.output := by lin_cert using reduction792.terms
def map_9_84 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation821 : InImage map_9_84 image821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction821 : Bundle := named_bundle% "RealMapCertificates/relations/basis821.json"
theorem reductionProof821 : EqualModuloRelations reduction821.relations reduction821.input reduction821.output := by lin_cert using reduction821.terms
theorem substitutionProof821 : IsMapEvaluation generatorImages reduction821.relations [3,107] reduction821.output := by lin_cert using reduction821.terms
def image822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation822 : InImage map_9_84 image822 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction822 : Bundle := named_bundle% "RealMapCertificates/relations/basis822.json"
theorem reductionProof822 : EqualModuloRelations reduction822.relations reduction822.input reduction822.output := by lin_cert using reduction822.terms
theorem substitutionProof822 : IsMapEvaluation generatorImages reduction822.relations [0,0,121] reduction822.output := by lin_cert using reduction822.terms
def map_9_85 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation848 : InImage map_9_85 image848 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction848 : Bundle := named_bundle% "RealMapCertificates/relations/basis848.json"
theorem reductionProof848 : EqualModuloRelations reduction848.relations reduction848.input reduction848.output := by lin_cert using reduction848.terms
theorem substitutionProof848 : IsMapEvaluation generatorImages reduction848.relations [133] reduction848.output := by lin_cert using reduction848.terms
def image849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation849 : InImage map_9_85 image849 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction849 : Bundle := named_bundle% "RealMapCertificates/relations/basis849.json"
theorem reductionProof849 : EqualModuloRelations reduction849.relations reduction849.input reduction849.output := by lin_cert using reduction849.terms
theorem substitutionProof849 : IsMapEvaluation generatorImages reduction849.relations [0,0,0,122] reduction849.output := by lin_cert using reduction849.terms
def map_9_86 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation872 : InImage map_9_86 image872 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction872 : Bundle := named_bundle% "RealMapCertificates/relations/basis872.json"
theorem reductionProof872 : EqualModuloRelations reduction872.relations reduction872.input reduction872.output := by lin_cert using reduction872.terms
theorem substitutionProof872 : IsMapEvaluation generatorImages reduction872.relations [0,0,129] reduction872.output := by lin_cert using reduction872.terms
def image873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation873 : InImage map_9_86 image873 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction873 : Bundle := named_bundle% "RealMapCertificates/relations/basis873.json"
theorem reductionProof873 : EqualModuloRelations reduction873.relations reduction873.input reduction873.output := by lin_cert using reduction873.terms
theorem substitutionProof873 : IsMapEvaluation generatorImages reduction873.relations [0,0,128] reduction873.output := by lin_cert using reduction873.terms
def map_9_87 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation902 : InImage map_9_87 image902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction902 : Bundle := named_bundle% "RealMapCertificates/relations/basis902.json"
theorem reductionProof902 : EqualModuloRelations reduction902.relations reduction902.input reduction902.output := by lin_cert using reduction902.terms
theorem substitutionProof902 : IsMapEvaluation generatorImages reduction902.relations [139] reduction902.output := by lin_cert using reduction902.terms
def image903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation903 : InImage map_9_87 image903 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction903 : Bundle := named_bundle% "RealMapCertificates/relations/basis903.json"
theorem reductionProof903 : EqualModuloRelations reduction903.relations reduction903.input reduction903.output := by lin_cert using reduction903.terms
theorem substitutionProof903 : IsMapEvaluation generatorImages reduction903.relations [0,0,0,0,0,0,0,7,69] reduction903.output := by lin_cert using reduction903.terms
def map_9_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation925 : InImage map_9_88 image925 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction925 : Bundle := named_bundle% "RealMapCertificates/relations/basis925.json"
theorem reductionProof925 : EqualModuloRelations reduction925.relations reduction925.input reduction925.output := by lin_cert using reduction925.terms
theorem substitutionProof925 : IsMapEvaluation generatorImages reduction925.relations [0,0,2,122] reduction925.output := by lin_cert using reduction925.terms
def map_9_89 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation950 : InImage map_9_89 image950 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction950 : Bundle := named_bundle% "RealMapCertificates/relations/basis950.json"
theorem reductionProof950 : EqualModuloRelations reduction950.relations reduction950.input reduction950.output := by lin_cert using reduction950.terms
theorem substitutionProof950 : IsMapEvaluation generatorImages reduction950.relations [2,134] reduction950.output := by lin_cert using reduction950.terms
def image951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation951 : InImage map_9_89 image951 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction951 : Bundle := named_bundle% "RealMapCertificates/relations/basis951.json"
theorem reductionProof951 : EqualModuloRelations reduction951.relations reduction951.input reduction951.output := by lin_cert using reduction951.terms
theorem substitutionProof951 : IsMapEvaluation generatorImages reduction951.relations [1,12,69] reduction951.output := by lin_cert using reduction951.terms
def map_9_90 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation983 : InImage map_9_90 image983 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction983 : Bundle := named_bundle% "RealMapCertificates/relations/basis983.json"
theorem reductionProof983 : EqualModuloRelations reduction983.relations reduction983.input reduction983.output := by lin_cert using reduction983.terms
theorem substitutionProof983 : IsMapEvaluation generatorImages reduction983.relations [3,120] reduction983.output := by lin_cert using reduction983.terms
def map_9_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1011 : InImage map_9_91 image1011 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1011 : Bundle := named_bundle% "RealMapCertificates/relations/basis1011.json"
theorem reductionProof1011 : EqualModuloRelations reduction1011.relations reduction1011.input reduction1011.output := by lin_cert using reduction1011.terms
theorem substitutionProof1011 : IsMapEvaluation generatorImages reduction1011.relations [13,76] reduction1011.output := by lin_cert using reduction1011.terms
def map_9_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1063 : InImage map_9_93 image1063 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1063 : Bundle := named_bundle% "RealMapCertificates/relations/basis1063.json"
theorem reductionProof1063 : EqualModuloRelations reduction1063.relations reduction1063.input reduction1063.output := by lin_cert using reduction1063.terms
theorem substitutionProof1063 : IsMapEvaluation generatorImages reduction1063.relations [2,7,95] reduction1063.output := by lin_cert using reduction1063.terms
def map_9_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1088 : InImage map_9_94 image1088 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1088 : Bundle := named_bundle% "RealMapCertificates/relations/basis1088.json"
theorem reductionProof1088 : EqualModuloRelations reduction1088.relations reduction1088.input reduction1088.output := by lin_cert using reduction1088.terms
theorem substitutionProof1088 : IsMapEvaluation generatorImages reduction1088.relations [16,69] reduction1088.output := by lin_cert using reduction1088.terms
def map_9_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1105 : InImage map_9_95 image1105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1105 : Bundle := named_bundle% "RealMapCertificates/relations/basis1105.json"
theorem reductionProof1105 : EqualModuloRelations reduction1105.relations reduction1105.input reduction1105.output := by lin_cert using reduction1105.terms
theorem substitutionProof1105 : IsMapEvaluation generatorImages reduction1105.relations [0,17,69] reduction1105.output := by lin_cert using reduction1105.terms
def map_9_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1136 : InImage map_9_96 image1136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1136 : Bundle := named_bundle% "RealMapCertificates/relations/basis1136.json"
theorem reductionProof1136 : EqualModuloRelations reduction1136.relations reduction1136.input reduction1136.output := by lin_cert using reduction1136.terms
theorem substitutionProof1136 : IsMapEvaluation generatorImages reduction1136.relations [7,7,67] reduction1136.output := by lin_cert using reduction1136.terms
def map_9_97 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1155 : InImage map_9_97 image1155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1155 : Bundle := named_bundle% "RealMapCertificates/relations/basis1155.json"
theorem reductionProof1155 : EqualModuloRelations reduction1155.relations reduction1155.input reduction1155.output := by lin_cert using reduction1155.terms
theorem substitutionProof1155 : IsMapEvaluation generatorImages reduction1155.relations [19,69] reduction1155.output := by lin_cert using reduction1155.terms
def image1156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1156 : InImage map_9_97 image1156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1156 : Bundle := named_bundle% "RealMapCertificates/relations/basis1156.json"
theorem reductionProof1156 : EqualModuloRelations reduction1156.relations reduction1156.input reduction1156.output := by lin_cert using reduction1156.terms
theorem substitutionProof1156 : IsMapEvaluation generatorImages reduction1156.relations [0,7,7,68] reduction1156.output := by lin_cert using reduction1156.terms
def map_9_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1179 : InImage map_9_98 image1179 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1179 : Bundle := named_bundle% "RealMapCertificates/relations/basis1179.json"
theorem reductionProof1179 : EqualModuloRelations reduction1179.relations reduction1179.input reduction1179.output := by lin_cert using reduction1179.terms
theorem substitutionProof1179 : IsMapEvaluation generatorImages reduction1179.relations [0,20,69] reduction1179.output := by lin_cert using reduction1179.terms
def map_9_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1237 : InImage map_9_100 image1237 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1237 : Bundle := named_bundle% "RealMapCertificates/relations/basis1237.json"
theorem reductionProof1237 : EqualModuloRelations reduction1237.relations reduction1237.input reduction1237.output := by lin_cert using reduction1237.terms
theorem substitutionProof1237 : IsMapEvaluation generatorImages reduction1237.relations [8,8,69] reduction1237.output := by lin_cert using reduction1237.terms
def image1238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1238 : InImage map_9_100 image1238 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1238 : Bundle := named_bundle% "RealMapCertificates/relations/basis1238.json"
theorem reductionProof1238 : EqualModuloRelations reduction1238.relations reduction1238.input reduction1238.output := by lin_cert using reduction1238.terms
theorem substitutionProof1238 : IsMapEvaluation generatorImages reduction1238.relations [0,174] reduction1238.output := by lin_cert using reduction1238.terms
def map_9_101 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1264 : InImage map_9_101 image1264 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1264 : Bundle := named_bundle% "RealMapCertificates/relations/basis1264.json"
theorem reductionProof1264 : EqualModuloRelations reduction1264.relations reduction1264.input reduction1264.output := by lin_cert using reduction1264.terms
theorem substitutionProof1264 : IsMapEvaluation generatorImages reduction1264.relations [1,174] reduction1264.output := by lin_cert using reduction1264.terms
def image1265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1265 : InImage map_9_101 image1265 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1265 : Bundle := named_bundle% "RealMapCertificates/relations/basis1265.json"
theorem reductionProof1265 : EqualModuloRelations reduction1265.relations reduction1265.input reduction1265.output := by lin_cert using reduction1265.terms
theorem substitutionProof1265 : IsMapEvaluation generatorImages reduction1265.relations [0,22,69] reduction1265.output := by lin_cert using reduction1265.terms
def image1266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1266 : InImage map_9_101 image1266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1266 : Bundle := named_bundle% "RealMapCertificates/relations/basis1266.json"
theorem reductionProof1266 : EqualModuloRelations reduction1266.relations reduction1266.input reduction1266.output := by lin_cert using reduction1266.terms
theorem substitutionProof1266 : IsMapEvaluation generatorImages reduction1266.relations [0,0,0,0,0,163] reduction1266.output := by lin_cert using reduction1266.terms
def map_9_102 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1307 : InImage map_9_102 image1307 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1307 : Bundle := named_bundle% "RealMapCertificates/relations/basis1307.json"
theorem reductionProof1307 : EqualModuloRelations reduction1307.relations reduction1307.input reduction1307.output := by lin_cert using reduction1307.terms
theorem substitutionProof1307 : IsMapEvaluation generatorImages reduction1307.relations [0,0,23,69] reduction1307.output := by lin_cert using reduction1307.terms
def map_9_103 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1335 : InImage map_9_103 image1335 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1335 : Bundle := named_bundle% "RealMapCertificates/relations/basis1335.json"
theorem reductionProof1335 : EqualModuloRelations reduction1335.relations reduction1335.input reduction1335.output := by lin_cert using reduction1335.terms
theorem substitutionProof1335 : IsMapEvaluation generatorImages reduction1335.relations [8,9,69] reduction1335.output := by lin_cert using reduction1335.terms
def image1336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1336 : InImage map_9_103 image1336 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1336 : Bundle := named_bundle% "RealMapCertificates/relations/basis1336.json"
theorem reductionProof1336 : EqualModuloRelations reduction1336.relations reduction1336.input reduction1336.output := by lin_cert using reduction1336.terms
theorem substitutionProof1336 : IsMapEvaluation generatorImages reduction1336.relations [1,181] reduction1336.output := by lin_cert using reduction1336.terms
def image1337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1337 : InImage map_9_103 image1337 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1337 : Bundle := named_bundle% "RealMapCertificates/relations/basis1337.json"
theorem reductionProof1337 : EqualModuloRelations reduction1337.relations reduction1337.input reduction1337.output := by lin_cert using reduction1337.terms
theorem substitutionProof1337 : IsMapEvaluation generatorImages reduction1337.relations [0,190] reduction1337.output := by lin_cert using reduction1337.terms
def map_9_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1364 : InImage map_9_104 image1364 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1364 : Bundle := named_bundle% "RealMapCertificates/relations/basis1364.json"
theorem reductionProof1364 : EqualModuloRelations reduction1364.relations reduction1364.input reduction1364.output := by lin_cert using reduction1364.terms
theorem substitutionProof1364 : IsMapEvaluation generatorImages reduction1364.relations [1,190] reduction1364.output := by lin_cert using reduction1364.terms
def image1365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1365 : InImage map_9_104 image1365 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1365 : Bundle := named_bundle% "RealMapCertificates/relations/basis1365.json"
theorem reductionProof1365 : EqualModuloRelations reduction1365.relations reduction1365.input reduction1365.output := by lin_cert using reduction1365.terms
theorem substitutionProof1365 : IsMapEvaluation generatorImages reduction1365.relations [0,29,69] reduction1365.output := by lin_cert using reduction1365.terms
def map_9_105 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1405 : InImage map_9_105 image1405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1405 : Bundle := named_bundle% "RealMapCertificates/relations/basis1405.json"
theorem reductionProof1405 : EqualModuloRelations reduction1405.relations reduction1405.input reduction1405.output := by lin_cert using reduction1405.terms
theorem substitutionProof1405 : IsMapEvaluation generatorImages reduction1405.relations [2,181] reduction1405.output := by lin_cert using reduction1405.terms
def image1406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1406 : InImage map_9_105 image1406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1406 : Bundle := named_bundle% "RealMapCertificates/relations/basis1406.json"
theorem reductionProof1406 : EqualModuloRelations reduction1406.relations reduction1406.input reduction1406.output := by lin_cert using reduction1406.terms
theorem substitutionProof1406 : IsMapEvaluation generatorImages reduction1406.relations [0,197] reduction1406.output := by lin_cert using reduction1406.terms
def map_9_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1436 : InImage map_9_106 image1436 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1436 : Bundle := named_bundle% "RealMapCertificates/relations/basis1436.json"
theorem reductionProof1436 : EqualModuloRelations reduction1436.relations reduction1436.input reduction1436.output := by lin_cert using reduction1436.terms
theorem substitutionProof1436 : IsMapEvaluation generatorImages reduction1436.relations [8,13,69] reduction1436.output := by lin_cert using reduction1436.terms
def image1437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1437 : InImage map_9_106 image1437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1437 : Bundle := named_bundle% "RealMapCertificates/relations/basis1437.json"
theorem reductionProof1437 : EqualModuloRelations reduction1437.relations reduction1437.input reduction1437.output := by lin_cert using reduction1437.terms
theorem substitutionProof1437 : IsMapEvaluation generatorImages reduction1437.relations [0,0,198] reduction1437.output := by lin_cert using reduction1437.terms
def map_9_107 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1464 : InImage map_9_107 image1464 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1464 : Bundle := named_bundle% "RealMapCertificates/relations/basis1464.json"
theorem reductionProof1464 : EqualModuloRelations reduction1464.relations reduction1464.input reduction1464.output := by lin_cert using reduction1464.terms
theorem substitutionProof1464 : IsMapEvaluation generatorImages reduction1464.relations [3,174] reduction1464.output := by lin_cert using reduction1464.terms
def image1465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1465 : InImage map_9_107 image1465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1465 : Bundle := named_bundle% "RealMapCertificates/relations/basis1465.json"
theorem reductionProof1465 : EqualModuloRelations reduction1465.relations reduction1465.input reduction1465.output := by lin_cert using reduction1465.terms
theorem substitutionProof1465 : IsMapEvaluation generatorImages reduction1465.relations [0,32,69] reduction1465.output := by lin_cert using reduction1465.terms
def map_9_108 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1508 : InImage map_9_108 image1508 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1508 : Bundle := named_bundle% "RealMapCertificates/relations/basis1508.json"
theorem reductionProof1508 : EqualModuloRelations reduction1508.relations reduction1508.input reduction1508.output := by lin_cert using reduction1508.terms
theorem substitutionProof1508 : IsMapEvaluation generatorImages reduction1508.relations [213] reduction1508.output := by lin_cert using reduction1508.terms
def image1509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1509 : InImage map_9_108 image1509 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1509 : Bundle := named_bundle% "RealMapCertificates/relations/basis1509.json"
theorem reductionProof1509 : EqualModuloRelations reduction1509.relations reduction1509.input reduction1509.output := by lin_cert using reduction1509.terms
theorem substitutionProof1509 : IsMapEvaluation generatorImages reduction1509.relations [0,0,203] reduction1509.output := by lin_cert using reduction1509.terms
def map_9_109 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1544 : InImage map_9_109 image1544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1544 : Bundle := named_bundle% "RealMapCertificates/relations/basis1544.json"
theorem reductionProof1544 : EqualModuloRelations reduction1544.relations reduction1544.input reduction1544.output := by lin_cert using reduction1544.terms
theorem substitutionProof1544 : IsMapEvaluation generatorImages reduction1544.relations [9,13,69] reduction1544.output := by lin_cert using reduction1544.terms
def image1545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1545 : InImage map_9_109 image1545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1545 : Bundle := named_bundle% "RealMapCertificates/relations/basis1545.json"
theorem reductionProof1545 : EqualModuloRelations reduction1545.relations reduction1545.input reduction1545.output := by lin_cert using reduction1545.terms
theorem substitutionProof1545 : IsMapEvaluation generatorImages reduction1545.relations [3,181] reduction1545.output := by lin_cert using reduction1545.terms
def image1546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1546 : InImage map_9_109 image1546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1546 : Bundle := named_bundle% "RealMapCertificates/relations/basis1546.json"
theorem reductionProof1546 : EqualModuloRelations reduction1546.relations reduction1546.input reduction1546.output := by lin_cert using reduction1546.terms
theorem substitutionProof1546 : IsMapEvaluation generatorImages reduction1546.relations [0,0,0,34,69] reduction1546.output := by lin_cert using reduction1546.terms
def map_9_110 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image1578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1578 : InImage map_9_110 image1578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1578 : Bundle := named_bundle% "RealMapCertificates/relations/basis1578.json"
theorem reductionProof1578 : EqualModuloRelations reduction1578.relations reduction1578.input reduction1578.output := by lin_cert using reduction1578.terms
theorem substitutionProof1578 : IsMapEvaluation generatorImages reduction1578.relations [3,190] reduction1578.output := by lin_cert using reduction1578.terms
def image1579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1579 : InImage map_9_110 image1579 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1579 : Bundle := named_bundle% "RealMapCertificates/relations/basis1579.json"
theorem reductionProof1579 : EqualModuloRelations reduction1579.relations reduction1579.input reduction1579.output := by lin_cert using reduction1579.terms
theorem substitutionProof1579 : IsMapEvaluation generatorImages reduction1579.relations [1,1,203] reduction1579.output := by lin_cert using reduction1579.terms
def image1580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1580 : InImage map_9_110 image1580 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1580 : Bundle := named_bundle% "RealMapCertificates/relations/basis1580.json"
theorem reductionProof1580 : EqualModuloRelations reduction1580.relations reduction1580.input reduction1580.output := by lin_cert using reduction1580.terms
theorem substitutionProof1580 : IsMapEvaluation generatorImages reduction1580.relations [0,216] reduction1580.output := by lin_cert using reduction1580.terms
def image1581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1581 : InImage map_9_110 image1581 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1581 : Bundle := named_bundle% "RealMapCertificates/relations/basis1581.json"
theorem reductionProof1581 : EqualModuloRelations reduction1581.relations reduction1581.input reduction1581.output := by lin_cert using reduction1581.terms
theorem substitutionProof1581 : IsMapEvaluation generatorImages reduction1581.relations [0,0,36,69] reduction1581.output := by lin_cert using reduction1581.terms
def map_9_111 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1629 : InImage map_9_111 image1629 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1629 : Bundle := named_bundle% "RealMapCertificates/relations/basis1629.json"
theorem reductionProof1629 : EqualModuloRelations reduction1629.relations reduction1629.input reduction1629.output := by lin_cert using reduction1629.terms
theorem substitutionProof1629 : IsMapEvaluation generatorImages reduction1629.relations [0,3,191] reduction1629.output := by lin_cert using reduction1629.terms
def map_9_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1662 : InImage map_9_112 image1662 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1662 : Bundle := named_bundle% "RealMapCertificates/relations/basis1662.json"
theorem reductionProof1662 : EqualModuloRelations reduction1662.relations reduction1662.input reduction1662.output := by lin_cert using reduction1662.terms
theorem substitutionProof1662 : IsMapEvaluation generatorImages reduction1662.relations [3,197] reduction1662.output := by lin_cert using reduction1662.terms
def map_9_113 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1694 : InImage map_9_113 image1694 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1694 : Bundle := named_bundle% "RealMapCertificates/relations/basis1694.json"
theorem reductionProof1694 : EqualModuloRelations reduction1694.relations reduction1694.input reduction1694.output := by lin_cert using reduction1694.terms
theorem substitutionProof1694 : IsMapEvaluation generatorImages reduction1694.relations [235] reduction1694.output := by lin_cert using reduction1694.terms
def image1695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1695 : InImage map_9_113 image1695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1695 : Bundle := named_bundle% "RealMapCertificates/relations/basis1695.json"
theorem reductionProof1695 : EqualModuloRelations reduction1695.relations reduction1695.input reduction1695.output := by lin_cert using reduction1695.terms
theorem substitutionProof1695 : IsMapEvaluation generatorImages reduction1695.relations [0,3,198] reduction1695.output := by lin_cert using reduction1695.terms
def map_9_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1733 : InImage map_9_114 image1733 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1733 : Bundle := named_bundle% "RealMapCertificates/relations/basis1733.json"
theorem reductionProof1733 : EqualModuloRelations reduction1733.relations reduction1733.input reduction1733.output := by lin_cert using reduction1733.terms
theorem substitutionProof1733 : IsMapEvaluation generatorImages reduction1733.relations [239] reduction1733.output := by lin_cert using reduction1733.terms
def map_9_115 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1764 : InImage map_9_115 image1764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1764 : Bundle := named_bundle% "RealMapCertificates/relations/basis1764.json"
theorem reductionProof1764 : EqualModuloRelations reduction1764.relations reduction1764.input reduction1764.output := by lin_cert using reduction1764.terms
theorem substitutionProof1764 : IsMapEvaluation generatorImages reduction1764.relations [43,76] reduction1764.output := by lin_cert using reduction1764.terms
def image1765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1765 : InImage map_9_115 image1765 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1765 : Bundle := named_bundle% "RealMapCertificates/relations/basis1765.json"
theorem reductionProof1765 : EqualModuloRelations reduction1765.relations reduction1765.input reduction1765.output := by lin_cert using reduction1765.terms
theorem substitutionProof1765 : IsMapEvaluation generatorImages reduction1765.relations [0,3,203] reduction1765.output := by lin_cert using reduction1765.terms
def map_9_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1800 : InImage map_9_116 image1800 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1800 : Bundle := named_bundle% "RealMapCertificates/relations/basis1800.json"
theorem reductionProof1800 : EqualModuloRelations reduction1800.relations reduction1800.input reduction1800.output := by lin_cert using reduction1800.terms
theorem substitutionProof1800 : IsMapEvaluation generatorImages reduction1800.relations [251] reduction1800.output := by lin_cert using reduction1800.terms
def map_9_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1841 : InImage map_9_117 image1841 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1841 : Bundle := named_bundle% "RealMapCertificates/relations/basis1841.json"
theorem reductionProof1841 : EqualModuloRelations reduction1841.relations reduction1841.input reduction1841.output := by lin_cert using reduction1841.terms
theorem substitutionProof1841 : IsMapEvaluation generatorImages reduction1841.relations [3,216] reduction1841.output := by lin_cert using reduction1841.terms
def map_9_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1879 : InImage map_9_118 image1879 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1879 : Bundle := named_bundle% "RealMapCertificates/relations/basis1879.json"
theorem reductionProof1879 : EqualModuloRelations reduction1879.relations reduction1879.input reduction1879.output := by lin_cert using reduction1879.terms
theorem substitutionProof1879 : IsMapEvaluation generatorImages reduction1879.relations [7,190] reduction1879.output := by lin_cert using reduction1879.terms
def image1880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1880 : InImage map_9_118 image1880 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1880 : Bundle := named_bundle% "RealMapCertificates/relations/basis1880.json"
theorem reductionProof1880 : EqualModuloRelations reduction1880.relations reduction1880.input reduction1880.output := by lin_cert using reduction1880.terms
theorem substitutionProof1880 : IsMapEvaluation generatorImages reduction1880.relations [3,3,191] reduction1880.output := by lin_cert using reduction1880.terms
def map_9_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1912 : InImage map_9_119 image1912 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1912 : Bundle := named_bundle% "RealMapCertificates/relations/basis1912.json"
theorem reductionProof1912 : EqualModuloRelations reduction1912.relations reduction1912.input reduction1912.output := by lin_cert using reduction1912.terms
theorem substitutionProof1912 : IsMapEvaluation generatorImages reduction1912.relations [1,48,69] reduction1912.output := by lin_cert using reduction1912.terms
def map_9_120 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image1960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1960 : InImage map_9_120 image1960 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1960 : Bundle := named_bundle% "RealMapCertificates/relations/basis1960.json"
theorem reductionProof1960 : EqualModuloRelations reduction1960.relations reduction1960.input reduction1960.output := by lin_cert using reduction1960.terms
theorem substitutionProof1960 : IsMapEvaluation generatorImages reduction1960.relations [271] reduction1960.output := by lin_cert using reduction1960.terms
def image1961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1961 : InImage map_9_120 image1961 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1961 : Bundle := named_bundle% "RealMapCertificates/relations/basis1961.json"
theorem reductionProof1961 : EqualModuloRelations reduction1961.relations reduction1961.input reduction1961.output := by lin_cert using reduction1961.terms
theorem substitutionProof1961 : IsMapEvaluation generatorImages reduction1961.relations [270] reduction1961.output := by lin_cert using reduction1961.terms
def image1962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1962 : InImage map_9_120 image1962 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1962 : Bundle := named_bundle% "RealMapCertificates/relations/basis1962.json"
theorem reductionProof1962 : EqualModuloRelations reduction1962.relations reduction1962.input reduction1962.output := by lin_cert using reduction1962.terms
theorem substitutionProof1962 : IsMapEvaluation generatorImages reduction1962.relations [3,3,198] reduction1962.output := by lin_cert using reduction1962.terms
def image1963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1963 : InImage map_9_120 image1963 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1963 : Bundle := named_bundle% "RealMapCertificates/relations/basis1963.json"
theorem reductionProof1963 : EqualModuloRelations reduction1963.relations reduction1963.input reduction1963.output := by lin_cert using reduction1963.terms
theorem substitutionProof1963 : IsMapEvaluation generatorImages reduction1963.relations [0,53,69] reduction1963.output := by lin_cert using reduction1963.terms
def map_9_122 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2035 : InImage map_9_122 image2035 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2035 : Bundle := named_bundle% "RealMapCertificates/relations/basis2035.json"
theorem reductionProof2035 : EqualModuloRelations reduction2035.relations reduction2035.input reduction2035.output := by lin_cert using reduction2035.terms
theorem substitutionProof2035 : IsMapEvaluation generatorImages reduction2035.relations [282] reduction2035.output := by lin_cert using reduction2035.terms
def map_9_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2085 : InImage map_9_123 image2085 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2085 : Bundle := named_bundle% "RealMapCertificates/relations/basis2085.json"
theorem reductionProof2085 : EqualModuloRelations reduction2085.relations reduction2085.input reduction2085.output := by lin_cert using reduction2085.terms
theorem substitutionProof2085 : IsMapEvaluation generatorImages reduction2085.relations [289] reduction2085.output := by lin_cert using reduction2085.terms
def image2086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2086 : InImage map_9_123 image2086 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2086 : Bundle := named_bundle% "RealMapCertificates/relations/basis2086.json"
theorem reductionProof2086 : EqualModuloRelations reduction2086.relations reduction2086.input reduction2086.output := by lin_cert using reduction2086.terms
theorem substitutionProof2086 : IsMapEvaluation generatorImages reduction2086.relations [2,53,69] reduction2086.output := by lin_cert using reduction2086.terms
def map_9_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2123 : InImage map_9_124 image2123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2123 : Bundle := named_bundle% "RealMapCertificates/relations/basis2123.json"
theorem reductionProof2123 : EqualModuloRelations reduction2123.relations reduction2123.input reduction2123.output := by lin_cert using reduction2123.terms
theorem substitutionProof2123 : IsMapEvaluation generatorImages reduction2123.relations [2,272] reduction2123.output := by lin_cert using reduction2123.terms
def map_9_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2257 : InImage map_9_127 image2257 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2257 : Bundle := named_bundle% "RealMapCertificates/relations/basis2257.json"
theorem reductionProof2257 : EqualModuloRelations reduction2257.relations reduction2257.input reduction2257.output := by lin_cert using reduction2257.terms
theorem substitutionProof2257 : IsMapEvaluation generatorImages reduction2257.relations [314] reduction2257.output := by lin_cert using reduction2257.terms
def image2258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2258 : InImage map_9_127 image2258 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2258 : Bundle := named_bundle% "RealMapCertificates/relations/basis2258.json"
theorem reductionProof2258 : EqualModuloRelations reduction2258.relations reduction2258.input reduction2258.output := by lin_cert using reduction2258.terms
theorem substitutionProof2258 : IsMapEvaluation generatorImages reduction2258.relations [313] reduction2258.output := by lin_cert using reduction2258.terms
def map_9_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2310 : InImage map_9_128 image2310 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2310 : Bundle := named_bundle% "RealMapCertificates/relations/basis2310.json"
theorem reductionProof2310 : EqualModuloRelations reduction2310.relations reduction2310.input reduction2310.output := by lin_cert using reduction2310.terms
theorem substitutionProof2310 : IsMapEvaluation generatorImages reduction2310.relations [322] reduction2310.output := by lin_cert using reduction2310.terms
def map_9_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2378 : InImage map_9_129 image2378 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2378 : Bundle := named_bundle% "RealMapCertificates/relations/basis2378.json"
theorem reductionProof2378 : EqualModuloRelations reduction2378.relations reduction2378.input reduction2378.output := by lin_cert using reduction2378.terms
theorem substitutionProof2378 : IsMapEvaluation generatorImages reduction2378.relations [333] reduction2378.output := by lin_cert using reduction2378.terms
def map_9_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2431 : InImage map_9_130 image2431 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2431 : Bundle := named_bundle% "RealMapCertificates/relations/basis2431.json"
theorem reductionProof2431 : EqualModuloRelations reduction2431.relations reduction2431.input reduction2431.output := by lin_cert using reduction2431.terms
theorem substitutionProof2431 : IsMapEvaluation generatorImages reduction2431.relations [338] reduction2431.output := by lin_cert using reduction2431.terms
def image2432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2432 : InImage map_9_130 image2432 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2432 : Bundle := named_bundle% "RealMapCertificates/relations/basis2432.json"
theorem reductionProof2432 : EqualModuloRelations reduction2432.relations reduction2432.input reduction2432.output := by lin_cert using reduction2432.terms
theorem substitutionProof2432 : IsMapEvaluation generatorImages reduction2432.relations [0,0,68,69] reduction2432.output := by lin_cert using reduction2432.terms
def map_9_132 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2569 : InImage map_9_132 image2569 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2569 : Bundle := named_bundle% "RealMapCertificates/relations/basis2569.json"
theorem reductionProof2569 : EqualModuloRelations reduction2569.relations reduction2569.input reduction2569.output := by lin_cert using reduction2569.terms
theorem substitutionProof2569 : IsMapEvaluation generatorImages reduction2569.relations [366] reduction2569.output := by lin_cert using reduction2569.terms
def image2570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2570 : InImage map_9_132 image2570 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2570 : Bundle := named_bundle% "RealMapCertificates/relations/basis2570.json"
theorem reductionProof2570 : EqualModuloRelations reduction2570.relations reduction2570.input reduction2570.output := by lin_cert using reduction2570.terms
theorem substitutionProof2570 : IsMapEvaluation generatorImages reduction2570.relations [0,352] reduction2570.output := by lin_cert using reduction2570.terms
def map_9_133 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2626 : InImage map_9_133 image2626 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2626 : Bundle := named_bundle% "RealMapCertificates/relations/basis2626.json"
theorem reductionProof2626 : EqualModuloRelations reduction2626.relations reduction2626.input reduction2626.output := by lin_cert using reduction2626.terms
theorem substitutionProof2626 : IsMapEvaluation generatorImages reduction2626.relations [374] reduction2626.output := by lin_cert using reduction2626.terms
def image2627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2627 : InImage map_9_133 image2627 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2627 : Bundle := named_bundle% "RealMapCertificates/relations/basis2627.json"
theorem reductionProof2627 : EqualModuloRelations reduction2627.relations reduction2627.input reduction2627.output := by lin_cert using reduction2627.terms
theorem substitutionProof2627 : IsMapEvaluation generatorImages reduction2627.relations [373] reduction2627.output := by lin_cert using reduction2627.terms
def image2628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2628 : InImage map_9_133 image2628 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2628 : Bundle := named_bundle% "RealMapCertificates/relations/basis2628.json"
theorem reductionProof2628 : EqualModuloRelations reduction2628.relations reduction2628.input reduction2628.output := by lin_cert using reduction2628.terms
theorem substitutionProof2628 : IsMapEvaluation generatorImages reduction2628.relations [0,367] reduction2628.output := by lin_cert using reduction2628.terms
def map_9_134 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2695 : InImage map_9_134 image2695 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2695 : Bundle := named_bundle% "RealMapCertificates/relations/basis2695.json"
theorem reductionProof2695 : EqualModuloRelations reduction2695.relations reduction2695.input reduction2695.output := by lin_cert using reduction2695.terms
theorem substitutionProof2695 : IsMapEvaluation generatorImages reduction2695.relations [391] reduction2695.output := by lin_cert using reduction2695.terms
def image2696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2696 : InImage map_9_134 image2696 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2696 : Bundle := named_bundle% "RealMapCertificates/relations/basis2696.json"
theorem reductionProof2696 : EqualModuloRelations reduction2696.relations reduction2696.input reduction2696.output := by lin_cert using reduction2696.terms
theorem substitutionProof2696 : IsMapEvaluation generatorImages reduction2696.relations [390] reduction2696.output := by lin_cert using reduction2696.terms
def image2697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2697 : InImage map_9_134 image2697 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2697 : Bundle := named_bundle% "RealMapCertificates/relations/basis2697.json"
theorem reductionProof2697 : EqualModuloRelations reduction2697.relations reduction2697.input reduction2697.output := by lin_cert using reduction2697.terms
theorem substitutionProof2697 : IsMapEvaluation generatorImages reduction2697.relations [69,82] reduction2697.output := by lin_cert using reduction2697.terms
def image2698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2698 : InImage map_9_134 image2698 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2698 : Bundle := named_bundle% "RealMapCertificates/relations/basis2698.json"
theorem reductionProof2698 : EqualModuloRelations reduction2698.relations reduction2698.input reduction2698.output := by lin_cert using reduction2698.terms
theorem substitutionProof2698 : IsMapEvaluation generatorImages reduction2698.relations [18,190] reduction2698.output := by lin_cert using reduction2698.terms
def image2699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2699 : InImage map_9_134 image2699 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2699 : Bundle := named_bundle% "RealMapCertificates/relations/basis2699.json"
theorem reductionProof2699 : EqualModuloRelations reduction2699.relations reduction2699.input reduction2699.output := by lin_cert using reduction2699.terms
theorem substitutionProof2699 : IsMapEvaluation generatorImages reduction2699.relations [0,375] reduction2699.output := by lin_cert using reduction2699.terms
def map_9_135 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image2788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2788 : InImage map_9_135 image2788 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction2788 : Bundle := named_bundle% "RealMapCertificates/relations/basis2788.json"
theorem reductionProof2788 : EqualModuloRelations reduction2788.relations reduction2788.input reduction2788.output := by lin_cert using reduction2788.terms
theorem substitutionProof2788 : IsMapEvaluation generatorImages reduction2788.relations [414] reduction2788.output := by lin_cert using reduction2788.terms
def image2789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2789 : InImage map_9_135 image2789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction2789 : Bundle := named_bundle% "RealMapCertificates/relations/basis2789.json"
theorem reductionProof2789 : EqualModuloRelations reduction2789.relations reduction2789.input reduction2789.output := by lin_cert using reduction2789.terms
theorem substitutionProof2789 : IsMapEvaluation generatorImages reduction2789.relations [1,376] reduction2789.output := by lin_cert using reduction2789.terms
def image2790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2790 : InImage map_9_135 image2790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction2790 : Bundle := named_bundle% "RealMapCertificates/relations/basis2790.json"
theorem reductionProof2790 : EqualModuloRelations reduction2790.relations reduction2790.input reduction2790.output := by lin_cert using reduction2790.terms
theorem substitutionProof2790 : IsMapEvaluation generatorImages reduction2790.relations [1,375] reduction2790.output := by lin_cert using reduction2790.terms
def image2791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2791 : InImage map_9_135 image2791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction2791 : Bundle := named_bundle% "RealMapCertificates/relations/basis2791.json"
theorem reductionProof2791 : EqualModuloRelations reduction2791.relations reduction2791.input reduction2791.output := by lin_cert using reduction2791.terms
theorem substitutionProof2791 : IsMapEvaluation generatorImages reduction2791.relations [0,394] reduction2791.output := by lin_cert using reduction2791.terms
def image2792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2792 : InImage map_9_135 image2792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction2792 : Bundle := named_bundle% "RealMapCertificates/relations/basis2792.json"
theorem reductionProof2792 : EqualModuloRelations reduction2792.relations reduction2792.input reduction2792.output := by lin_cert using reduction2792.terms
theorem substitutionProof2792 : IsMapEvaluation generatorImages reduction2792.relations [0,392] reduction2792.output := by lin_cert using reduction2792.terms
def image2793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2793 : InImage map_9_135 image2793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction2793 : Bundle := named_bundle% "RealMapCertificates/relations/basis2793.json"
theorem reductionProof2793 : EqualModuloRelations reduction2793.relations reduction2793.input reduction2793.output := by lin_cert using reduction2793.terms
theorem substitutionProof2793 : IsMapEvaluation generatorImages reduction2793.relations [0,0,0,0,0,0,0,69,69] reduction2793.output := by lin_cert using reduction2793.terms
end RealMapCertificates
