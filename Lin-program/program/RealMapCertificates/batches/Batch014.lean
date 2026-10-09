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
  | 6 => [[2,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 12 => [[3,4]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 68 => []
  | 69 => []
  | 70 => []
  | 95 => []
  | 107 => []
  | 134 => []
  | 163 => []
  | 264 => []
  | 324 => []
  | 352 => []
  | 367 => []
  | 376 => []
  | 392 => []
  | 393 => []
  | 394 => []
  | 396 => []
  | 397 => []
  | 398 => []
  | 415 => []
  | 429 => []
  | 443 => []
  | 444 => []
  | 445 => []
  | 446 => []
  | 451 => []
  | 464 => []
  | 465 => []
  | 479 => []
  | 480 => []
  | 504 => []
  | 505 => []
  | 506 => []
  | 513 => []
  | 514 => []
  | 523 => []
  | 524 => []
  | 525 => []
  | 526 => []
  | 535 => []
  | 545 => []
  | 546 => []
  | 547 => []
  | 565 => []
  | 566 => []
  | 576 => []
  | 577 => []
  | 584 => []
  | 617 => []
  | 633 => []
  | 659 => []
  | 676 => []
  | 684 => []
  | 696 => []
  | 697 => []
  | 698 => []
  | _ => []
def map_9_136 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2860 : InImage map_9_136 image2860 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2860 : Bundle := named_bundle% "RealMapCertificates/relations/basis2860.json"
theorem reductionProof2860 : EqualModuloRelations reduction2860.relations reduction2860.input reduction2860.output := by lin_cert using reduction2860.terms
theorem substitutionProof2860 : IsMapEvaluation generatorImages reduction2860.relations [1,393] reduction2860.output := by lin_cert using reduction2860.terms
def image2861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2861 : InImage map_9_136 image2861 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2861 : Bundle := named_bundle% "RealMapCertificates/relations/basis2861.json"
theorem reductionProof2861 : EqualModuloRelations reduction2861.relations reduction2861.input reduction2861.output := by lin_cert using reduction2861.terms
theorem substitutionProof2861 : IsMapEvaluation generatorImages reduction2861.relations [1,392] reduction2861.output := by lin_cert using reduction2861.terms
def image2862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2862 : InImage map_9_136 image2862 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2862 : Bundle := named_bundle% "RealMapCertificates/relations/basis2862.json"
theorem reductionProof2862 : EqualModuloRelations reduction2862.relations reduction2862.input reduction2862.output := by lin_cert using reduction2862.terms
theorem substitutionProof2862 : IsMapEvaluation generatorImages reduction2862.relations [0,415] reduction2862.output := by lin_cert using reduction2862.terms
def image2863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2863 : InImage map_9_136 image2863 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2863 : Bundle := named_bundle% "RealMapCertificates/relations/basis2863.json"
theorem reductionProof2863 : EqualModuloRelations reduction2863.relations reduction2863.input reduction2863.output := by lin_cert using reduction2863.terms
theorem substitutionProof2863 : IsMapEvaluation generatorImages reduction2863.relations [0,0,396] reduction2863.output := by lin_cert using reduction2863.terms
def image2864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2864 : InImage map_9_136 image2864 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2864 : Bundle := named_bundle% "RealMapCertificates/relations/basis2864.json"
theorem reductionProof2864 : EqualModuloRelations reduction2864.relations reduction2864.input reduction2864.output := by lin_cert using reduction2864.terms
theorem substitutionProof2864 : IsMapEvaluation generatorImages reduction2864.relations [0,0,0,0,0,0,0,0,324] reduction2864.output := by lin_cert using reduction2864.terms
def map_9_137 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2935 : InImage map_9_137 image2935 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2935 : Bundle := named_bundle% "RealMapCertificates/relations/basis2935.json"
theorem reductionProof2935 : EqualModuloRelations reduction2935.relations reduction2935.input reduction2935.output := by lin_cert using reduction2935.terms
theorem substitutionProof2935 : IsMapEvaluation generatorImages reduction2935.relations [2,376] reduction2935.output := by lin_cert using reduction2935.terms
def image2936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2936 : InImage map_9_137 image2936 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2936 : Bundle := named_bundle% "RealMapCertificates/relations/basis2936.json"
theorem reductionProof2936 : EqualModuloRelations reduction2936.relations reduction2936.input reduction2936.output := by lin_cert using reduction2936.terms
theorem substitutionProof2936 : IsMapEvaluation generatorImages reduction2936.relations [1,415] reduction2936.output := by lin_cert using reduction2936.terms
def image2937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2937 : InImage map_9_137 image2937 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2937 : Bundle := named_bundle% "RealMapCertificates/relations/basis2937.json"
theorem reductionProof2937 : EqualModuloRelations reduction2937.relations reduction2937.input reduction2937.output := by lin_cert using reduction2937.terms
theorem substitutionProof2937 : IsMapEvaluation generatorImages reduction2937.relations [0,3,68,69] reduction2937.output := by lin_cert using reduction2937.terms
def map_9_138 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3026 : InImage map_9_138 image3026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3026 : Bundle := named_bundle% "RealMapCertificates/relations/basis3026.json"
theorem reductionProof3026 : EqualModuloRelations reduction3026.relations reduction3026.input reduction3026.output := by lin_cert using reduction3026.terms
theorem substitutionProof3026 : IsMapEvaluation generatorImages reduction3026.relations [444] reduction3026.output := by lin_cert using reduction3026.terms
def image3027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3027 : InImage map_9_138 image3027 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3027 : Bundle := named_bundle% "RealMapCertificates/relations/basis3027.json"
theorem reductionProof3027 : EqualModuloRelations reduction3027.relations reduction3027.input reduction3027.output := by lin_cert using reduction3027.terms
theorem substitutionProof3027 : IsMapEvaluation generatorImages reduction3027.relations [443] reduction3027.output := by lin_cert using reduction3027.terms
def image3028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3028 : InImage map_9_138 image3028 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3028 : Bundle := named_bundle% "RealMapCertificates/relations/basis3028.json"
theorem reductionProof3028 : EqualModuloRelations reduction3028.relations reduction3028.input reduction3028.output := by lin_cert using reduction3028.terms
theorem substitutionProof3028 : IsMapEvaluation generatorImages reduction3028.relations [0,429] reduction3028.output := by lin_cert using reduction3028.terms
def image3029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3029 : InImage map_9_138 image3029 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3029 : Bundle := named_bundle% "RealMapCertificates/relations/basis3029.json"
theorem reductionProof3029 : EqualModuloRelations reduction3029.relations reduction3029.input reduction3029.output := by lin_cert using reduction3029.terms
theorem substitutionProof3029 : IsMapEvaluation generatorImages reduction3029.relations [0,69,95] reduction3029.output := by lin_cert using reduction3029.terms
def map_9_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3094 : InImage map_9_139 image3094 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3094 : Bundle := named_bundle% "RealMapCertificates/relations/basis3094.json"
theorem reductionProof3094 : EqualModuloRelations reduction3094.relations reduction3094.input reduction3094.output := by lin_cert using reduction3094.terms
theorem substitutionProof3094 : IsMapEvaluation generatorImages reduction3094.relations [3,352] reduction3094.output := by lin_cert using reduction3094.terms
def image3095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3095 : InImage map_9_139 image3095 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3095 : Bundle := named_bundle% "RealMapCertificates/relations/basis3095.json"
theorem reductionProof3095 : EqualModuloRelations reduction3095.relations reduction3095.input reduction3095.output := by lin_cert using reduction3095.terms
theorem substitutionProof3095 : IsMapEvaluation generatorImages reduction3095.relations [1,69,95] reduction3095.output := by lin_cert using reduction3095.terms
def image3096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3096 : InImage map_9_139 image3096 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3096 : Bundle := named_bundle% "RealMapCertificates/relations/basis3096.json"
theorem reductionProof3096 : EqualModuloRelations reduction3096.relations reduction3096.input reduction3096.output := by lin_cert using reduction3096.terms
theorem substitutionProof3096 : IsMapEvaluation generatorImages reduction3096.relations [0,445] reduction3096.output := by lin_cert using reduction3096.terms
def map_9_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3180 : InImage map_9_140 image3180 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3180 : Bundle := named_bundle% "RealMapCertificates/relations/basis3180.json"
theorem reductionProof3180 : EqualModuloRelations reduction3180.relations reduction3180.input reduction3180.output := by lin_cert using reduction3180.terms
theorem substitutionProof3180 : IsMapEvaluation generatorImages reduction3180.relations [464] reduction3180.output := by lin_cert using reduction3180.terms
def image3181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3181 : InImage map_9_140 image3181 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3181 : Bundle := named_bundle% "RealMapCertificates/relations/basis3181.json"
theorem reductionProof3181 : EqualModuloRelations reduction3181.relations reduction3181.input reduction3181.output := by lin_cert using reduction3181.terms
theorem substitutionProof3181 : IsMapEvaluation generatorImages reduction3181.relations [69,107] reduction3181.output := by lin_cert using reduction3181.terms
def image3182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3182 : InImage map_9_140 image3182 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3182 : Bundle := named_bundle% "RealMapCertificates/relations/basis3182.json"
theorem reductionProof3182 : EqualModuloRelations reduction3182.relations reduction3182.input reduction3182.output := by lin_cert using reduction3182.terms
theorem substitutionProof3182 : IsMapEvaluation generatorImages reduction3182.relations [3,367] reduction3182.output := by lin_cert using reduction3182.terms
def image3183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3183 : InImage map_9_140 image3183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3183 : Bundle := named_bundle% "RealMapCertificates/relations/basis3183.json"
theorem reductionProof3183 : EqualModuloRelations reduction3183.relations reduction3183.input reduction3183.output := by lin_cert using reduction3183.terms
theorem substitutionProof3183 : IsMapEvaluation generatorImages reduction3183.relations [1,445] reduction3183.output := by lin_cert using reduction3183.terms
def image3184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3184 : InImage map_9_140 image3184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3184 : Bundle := named_bundle% "RealMapCertificates/relations/basis3184.json"
theorem reductionProof3184 : EqualModuloRelations reduction3184.relations reduction3184.input reduction3184.output := by lin_cert using reduction3184.terms
theorem substitutionProof3184 : IsMapEvaluation generatorImages reduction3184.relations [0,451] reduction3184.output := by lin_cert using reduction3184.terms
def map_9_141 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3275 : InImage map_9_141 image3275 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3275 : Bundle := named_bundle% "RealMapCertificates/relations/basis3275.json"
theorem reductionProof3275 : EqualModuloRelations reduction3275.relations reduction3275.input reduction3275.output := by lin_cert using reduction3275.terms
theorem substitutionProof3275 : IsMapEvaluation generatorImages reduction3275.relations [479] reduction3275.output := by lin_cert using reduction3275.terms
def image3276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3276 : InImage map_9_141 image3276 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3276 : Bundle := named_bundle% "RealMapCertificates/relations/basis3276.json"
theorem reductionProof3276 : EqualModuloRelations reduction3276.relations reduction3276.input reduction3276.output := by lin_cert using reduction3276.terms
theorem substitutionProof3276 : IsMapEvaluation generatorImages reduction3276.relations [3,376] reduction3276.output := by lin_cert using reduction3276.terms
def image3277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3277 : InImage map_9_141 image3277 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3277 : Bundle := named_bundle% "RealMapCertificates/relations/basis3277.json"
theorem reductionProof3277 : EqualModuloRelations reduction3277.relations reduction3277.input reduction3277.output := by lin_cert using reduction3277.terms
theorem substitutionProof3277 : IsMapEvaluation generatorImages reduction3277.relations [2,69,95] reduction3277.output := by lin_cert using reduction3277.terms
def image3278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3278 : InImage map_9_141 image3278 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3278 : Bundle := named_bundle% "RealMapCertificates/relations/basis3278.json"
theorem reductionProof3278 : EqualModuloRelations reduction3278.relations reduction3278.input reduction3278.output := by lin_cert using reduction3278.terms
theorem substitutionProof3278 : IsMapEvaluation generatorImages reduction3278.relations [0,465] reduction3278.output := by lin_cert using reduction3278.terms
def image3279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3279 : InImage map_9_141 image3279 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3279 : Bundle := named_bundle% "RealMapCertificates/relations/basis3279.json"
theorem reductionProof3279 : EqualModuloRelations reduction3279.relations reduction3279.input reduction3279.output := by lin_cert using reduction3279.terms
theorem substitutionProof3279 : IsMapEvaluation generatorImages reduction3279.relations [0,0,0,446] reduction3279.output := by lin_cert using reduction3279.terms
def map_9_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3347 : InImage map_9_142 image3347 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3347 : Bundle := named_bundle% "RealMapCertificates/relations/basis3347.json"
theorem reductionProof3347 : EqualModuloRelations reduction3347.relations reduction3347.input reduction3347.output := by lin_cert using reduction3347.terms
theorem substitutionProof3347 : IsMapEvaluation generatorImages reduction3347.relations [3,394] reduction3347.output := by lin_cert using reduction3347.terms
def image3348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3348 : InImage map_9_142 image3348 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3348 : Bundle := named_bundle% "RealMapCertificates/relations/basis3348.json"
theorem reductionProof3348 : EqualModuloRelations reduction3348.relations reduction3348.input reduction3348.output := by lin_cert using reduction3348.terms
theorem substitutionProof3348 : IsMapEvaluation generatorImages reduction3348.relations [3,392] reduction3348.output := by lin_cert using reduction3348.terms
def image3349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3349 : InImage map_9_142 image3349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3349 : Bundle := named_bundle% "RealMapCertificates/relations/basis3349.json"
theorem reductionProof3349 : EqualModuloRelations reduction3349.relations reduction3349.input reduction3349.output := by lin_cert using reduction3349.terms
theorem substitutionProof3349 : IsMapEvaluation generatorImages reduction3349.relations [2,445] reduction3349.output := by lin_cert using reduction3349.terms
def image3350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3350 : InImage map_9_142 image3350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3350 : Bundle := named_bundle% "RealMapCertificates/relations/basis3350.json"
theorem reductionProof3350 : EqualModuloRelations reduction3350.relations reduction3350.input reduction3350.output := by lin_cert using reduction3350.terms
theorem substitutionProof3350 : IsMapEvaluation generatorImages reduction3350.relations [0,480] reduction3350.output := by lin_cert using reduction3350.terms
def map_9_143 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3435 : InImage map_9_143 image3435 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3435 : Bundle := named_bundle% "RealMapCertificates/relations/basis3435.json"
theorem reductionProof3435 : EqualModuloRelations reduction3435.relations reduction3435.input reduction3435.output := by lin_cert using reduction3435.terms
theorem substitutionProof3435 : IsMapEvaluation generatorImages reduction3435.relations [0,3,397] reduction3435.output := by lin_cert using reduction3435.terms
def image3436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3436 : InImage map_9_143 image3436 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3436 : Bundle := named_bundle% "RealMapCertificates/relations/basis3436.json"
theorem reductionProof3436 : EqualModuloRelations reduction3436.relations reduction3436.input reduction3436.output := by lin_cert using reduction3436.terms
theorem substitutionProof3436 : IsMapEvaluation generatorImages reduction3436.relations [0,3,396] reduction3436.output := by lin_cert using reduction3436.terms
def map_9_144 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3522 : InImage map_9_144 image3522 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3522 : Bundle := named_bundle% "RealMapCertificates/relations/basis3522.json"
theorem reductionProof3522 : EqualModuloRelations reduction3522.relations reduction3522.input reduction3522.output := by lin_cert using reduction3522.terms
theorem substitutionProof3522 : IsMapEvaluation generatorImages reduction3522.relations [504] reduction3522.output := by lin_cert using reduction3522.terms
def image3523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3523 : InImage map_9_144 image3523 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3523 : Bundle := named_bundle% "RealMapCertificates/relations/basis3523.json"
theorem reductionProof3523 : EqualModuloRelations reduction3523.relations reduction3523.input reduction3523.output := by lin_cert using reduction3523.terms
theorem substitutionProof3523 : IsMapEvaluation generatorImages reduction3523.relations [2,465] reduction3523.output := by lin_cert using reduction3523.terms
def map_9_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3591 : InImage map_9_145 image3591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3591 : Bundle := named_bundle% "RealMapCertificates/relations/basis3591.json"
theorem reductionProof3591 : EqualModuloRelations reduction3591.relations reduction3591.input reduction3591.output := by lin_cert using reduction3591.terms
theorem substitutionProof3591 : IsMapEvaluation generatorImages reduction3591.relations [514] reduction3591.output := by lin_cert using reduction3591.terms
def image3592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3592 : InImage map_9_145 image3592 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3592 : Bundle := named_bundle% "RealMapCertificates/relations/basis3592.json"
theorem reductionProof3592 : EqualModuloRelations reduction3592.relations reduction3592.input reduction3592.output := by lin_cert using reduction3592.terms
theorem substitutionProof3592 : IsMapEvaluation generatorImages reduction3592.relations [513] reduction3592.output := by lin_cert using reduction3592.terms
def map_9_146 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3679 : InImage map_9_146 image3679 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3679 : Bundle := named_bundle% "RealMapCertificates/relations/basis3679.json"
theorem reductionProof3679 : EqualModuloRelations reduction3679.relations reduction3679.input reduction3679.output := by lin_cert using reduction3679.terms
theorem substitutionProof3679 : IsMapEvaluation generatorImages reduction3679.relations [523] reduction3679.output := by lin_cert using reduction3679.terms
def image3680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3680 : InImage map_9_146 image3680 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3680 : Bundle := named_bundle% "RealMapCertificates/relations/basis3680.json"
theorem reductionProof3680 : EqualModuloRelations reduction3680.relations reduction3680.input reduction3680.output := by lin_cert using reduction3680.terms
theorem substitutionProof3680 : IsMapEvaluation generatorImages reduction3680.relations [0,0,6,69,69] reduction3680.output := by lin_cert using reduction3680.terms
def map_9_147 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3782 : InImage map_9_147 image3782 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3782 : Bundle := named_bundle% "RealMapCertificates/relations/basis3782.json"
theorem reductionProof3782 : EqualModuloRelations reduction3782.relations reduction3782.input reduction3782.output := by lin_cert using reduction3782.terms
theorem substitutionProof3782 : IsMapEvaluation generatorImages reduction3782.relations [535] reduction3782.output := by lin_cert using reduction3782.terms
def image3783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3783 : InImage map_9_147 image3783 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3783 : Bundle := named_bundle% "RealMapCertificates/relations/basis3783.json"
theorem reductionProof3783 : EqualModuloRelations reduction3783.relations reduction3783.input reduction3783.output := by lin_cert using reduction3783.terms
theorem substitutionProof3783 : IsMapEvaluation generatorImages reduction3783.relations [7,352] reduction3783.output := by lin_cert using reduction3783.terms
def image3784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3784 : InImage map_9_147 image3784 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3784 : Bundle := named_bundle% "RealMapCertificates/relations/basis3784.json"
theorem reductionProof3784 : EqualModuloRelations reduction3784.relations reduction3784.input reduction3784.output := by lin_cert using reduction3784.terms
theorem substitutionProof3784 : IsMapEvaluation generatorImages reduction3784.relations [0,524] reduction3784.output := by lin_cert using reduction3784.terms
def image3785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3785 : InImage map_9_147 image3785 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3785 : Bundle := named_bundle% "RealMapCertificates/relations/basis3785.json"
theorem reductionProof3785 : EqualModuloRelations reduction3785.relations reduction3785.input reduction3785.output := by lin_cert using reduction3785.terms
theorem substitutionProof3785 : IsMapEvaluation generatorImages reduction3785.relations [0,0,0,505] reduction3785.output := by lin_cert using reduction3785.terms
def map_9_148 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3852 : InImage map_9_148 image3852 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3852 : Bundle := named_bundle% "RealMapCertificates/relations/basis3852.json"
theorem reductionProof3852 : EqualModuloRelations reduction3852.relations reduction3852.input reduction3852.output := by lin_cert using reduction3852.terms
theorem substitutionProof3852 : IsMapEvaluation generatorImages reduction3852.relations [545] reduction3852.output := by lin_cert using reduction3852.terms
def image3853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3853 : InImage map_9_148 image3853 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3853 : Bundle := named_bundle% "RealMapCertificates/relations/basis3853.json"
theorem reductionProof3853 : EqualModuloRelations reduction3853.relations reduction3853.input reduction3853.output := by lin_cert using reduction3853.terms
theorem substitutionProof3853 : IsMapEvaluation generatorImages reduction3853.relations [7,367] reduction3853.output := by lin_cert using reduction3853.terms
def image3854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3854 : InImage map_9_148 image3854 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3854 : Bundle := named_bundle% "RealMapCertificates/relations/basis3854.json"
theorem reductionProof3854 : EqualModuloRelations reduction3854.relations reduction3854.input reduction3854.output := by lin_cert using reduction3854.terms
theorem substitutionProof3854 : IsMapEvaluation generatorImages reduction3854.relations [1,524] reduction3854.output := by lin_cert using reduction3854.terms
def image3855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3855 : InImage map_9_148 image3855 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3855 : Bundle := named_bundle% "RealMapCertificates/relations/basis3855.json"
theorem reductionProof3855 : EqualModuloRelations reduction3855.relations reduction3855.input reduction3855.output := by lin_cert using reduction3855.terms
theorem substitutionProof3855 : IsMapEvaluation generatorImages reduction3855.relations [0,0,0,0,506] reduction3855.output := by lin_cert using reduction3855.terms
def map_9_149 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3938 : InImage map_9_149 image3938 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3938 : Bundle := named_bundle% "RealMapCertificates/relations/basis3938.json"
theorem reductionProof3938 : EqualModuloRelations reduction3938.relations reduction3938.input reduction3938.output := by lin_cert using reduction3938.terms
theorem substitutionProof3938 : IsMapEvaluation generatorImages reduction3938.relations [69,134] reduction3938.output := by lin_cert using reduction3938.terms
def image3939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3939 : InImage map_9_149 image3939 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3939 : Bundle := named_bundle% "RealMapCertificates/relations/basis3939.json"
theorem reductionProof3939 : EqualModuloRelations reduction3939.relations reduction3939.input reduction3939.output := by lin_cert using reduction3939.terms
theorem substitutionProof3939 : IsMapEvaluation generatorImages reduction3939.relations [3,480] reduction3939.output := by lin_cert using reduction3939.terms
def image3940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3940 : InImage map_9_149 image3940 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3940 : Bundle := named_bundle% "RealMapCertificates/relations/basis3940.json"
theorem reductionProof3940 : EqualModuloRelations reduction3940.relations reduction3940.input reduction3940.output := by lin_cert using reduction3940.terms
theorem substitutionProof3940 : IsMapEvaluation generatorImages reduction3940.relations [0,546] reduction3940.output := by lin_cert using reduction3940.terms
def map_9_150 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image4045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4045 : InImage map_9_150 image4045 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction4045 : Bundle := named_bundle% "RealMapCertificates/relations/basis4045.json"
theorem reductionProof4045 : EqualModuloRelations reduction4045.relations reduction4045.input reduction4045.output := by lin_cert using reduction4045.terms
theorem substitutionProof4045 : IsMapEvaluation generatorImages reduction4045.relations [565] reduction4045.output := by lin_cert using reduction4045.terms
def image4046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4046 : InImage map_9_150 image4046 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction4046 : Bundle := named_bundle% "RealMapCertificates/relations/basis4046.json"
theorem reductionProof4046 : EqualModuloRelations reduction4046.relations reduction4046.input reduction4046.output := by lin_cert using reduction4046.terms
theorem substitutionProof4046 : IsMapEvaluation generatorImages reduction4046.relations [7,394] reduction4046.output := by lin_cert using reduction4046.terms
def image4047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4047 : InImage map_9_150 image4047 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction4047 : Bundle := named_bundle% "RealMapCertificates/relations/basis4047.json"
theorem reductionProof4047 : EqualModuloRelations reduction4047.relations reduction4047.input reduction4047.output := by lin_cert using reduction4047.terms
theorem substitutionProof4047 : IsMapEvaluation generatorImages reduction4047.relations [3,3,396] reduction4047.output := by lin_cert using reduction4047.terms
def image4048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4048 : InImage map_9_150 image4048 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction4048 : Bundle := named_bundle% "RealMapCertificates/relations/basis4048.json"
theorem reductionProof4048 : EqualModuloRelations reduction4048.relations reduction4048.input reduction4048.output := by lin_cert using reduction4048.terms
theorem substitutionProof4048 : IsMapEvaluation generatorImages reduction4048.relations [2,524] reduction4048.output := by lin_cert using reduction4048.terms
def image4049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4049 : InImage map_9_150 image4049 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction4049 : Bundle := named_bundle% "RealMapCertificates/relations/basis4049.json"
theorem reductionProof4049 : EqualModuloRelations reduction4049.relations reduction4049.input reduction4049.output := by lin_cert using reduction4049.terms
theorem substitutionProof4049 : IsMapEvaluation generatorImages reduction4049.relations [1,547] reduction4049.output := by lin_cert using reduction4049.terms
def image4050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4050 : InImage map_9_150 image4050 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction4050 : Bundle := named_bundle% "RealMapCertificates/relations/basis4050.json"
theorem reductionProof4050 : EqualModuloRelations reduction4050.relations reduction4050.input reduction4050.output := by lin_cert using reduction4050.terms
theorem substitutionProof4050 : IsMapEvaluation generatorImages reduction4050.relations [1,546] reduction4050.output := by lin_cert using reduction4050.terms
def image4051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4051 : InImage map_9_150 image4051 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction4051 : Bundle := named_bundle% "RealMapCertificates/relations/basis4051.json"
theorem reductionProof4051 : EqualModuloRelations reduction4051.relations reduction4051.input reduction4051.output := by lin_cert using reduction4051.terms
theorem substitutionProof4051 : IsMapEvaluation generatorImages reduction4051.relations [0,0,0,0,526] reduction4051.output := by lin_cert using reduction4051.terms
def map_9_151 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4130 : InImage map_9_151 image4130 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4130 : Bundle := named_bundle% "RealMapCertificates/relations/basis4130.json"
theorem reductionProof4130 : EqualModuloRelations reduction4130.relations reduction4130.input reduction4130.output := by lin_cert using reduction4130.terms
theorem substitutionProof4130 : IsMapEvaluation generatorImages reduction4130.relations [12,69,69] reduction4130.output := by lin_cert using reduction4130.terms
def image4131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4131 : InImage map_9_151 image4131 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4131 : Bundle := named_bundle% "RealMapCertificates/relations/basis4131.json"
theorem reductionProof4131 : EqualModuloRelations reduction4131.relations reduction4131.input reduction4131.output := by lin_cert using reduction4131.terms
theorem substitutionProof4131 : IsMapEvaluation generatorImages reduction4131.relations [7,415] reduction4131.output := by lin_cert using reduction4131.terms
def image4132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4132 : InImage map_9_151 image4132 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4132 : Bundle := named_bundle% "RealMapCertificates/relations/basis4132.json"
theorem reductionProof4132 : EqualModuloRelations reduction4132.relations reduction4132.input reduction4132.output := by lin_cert using reduction4132.terms
theorem substitutionProof4132 : IsMapEvaluation generatorImages reduction4132.relations [0,7,396] reduction4132.output := by lin_cert using reduction4132.terms
def image4133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4133 : InImage map_9_151 image4133 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4133 : Bundle := named_bundle% "RealMapCertificates/relations/basis4133.json"
theorem reductionProof4133 : EqualModuloRelations reduction4133.relations reduction4133.input reduction4133.output := by lin_cert using reduction4133.terms
theorem substitutionProof4133 : IsMapEvaluation generatorImages reduction4133.relations [0,3,3,398] reduction4133.output := by lin_cert using reduction4133.terms
def image4134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4134 : InImage map_9_151 image4134 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4134 : Bundle := named_bundle% "RealMapCertificates/relations/basis4134.json"
theorem reductionProof4134 : EqualModuloRelations reduction4134.relations reduction4134.input reduction4134.output := by lin_cert using reduction4134.terms
theorem substitutionProof4134 : IsMapEvaluation generatorImages reduction4134.relations [0,0,0,0,0,0,0,7,324] reduction4134.output := by lin_cert using reduction4134.terms
def map_9_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4220 : InImage map_9_152 image4220 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4220 : Bundle := named_bundle% "RealMapCertificates/relations/basis4220.json"
theorem reductionProof4220 : EqualModuloRelations reduction4220.relations reduction4220.input reduction4220.output := by lin_cert using reduction4220.terms
theorem substitutionProof4220 : IsMapEvaluation generatorImages reduction4220.relations [576] reduction4220.output := by lin_cert using reduction4220.terms
def image4221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4221 : InImage map_9_152 image4221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4221 : Bundle := named_bundle% "RealMapCertificates/relations/basis4221.json"
theorem reductionProof4221 : EqualModuloRelations reduction4221.relations reduction4221.input reduction4221.output := by lin_cert using reduction4221.terms
theorem substitutionProof4221 : IsMapEvaluation generatorImages reduction4221.relations [1,566] reduction4221.output := by lin_cert using reduction4221.terms
def image4222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4222 : InImage map_9_152 image4222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4222 : Bundle := named_bundle% "RealMapCertificates/relations/basis4222.json"
theorem reductionProof4222 : EqualModuloRelations reduction4222.relations reduction4222.input reduction4222.output := by lin_cert using reduction4222.terms
theorem substitutionProof4222 : IsMapEvaluation generatorImages reduction4222.relations [0,18,264] reduction4222.output := by lin_cert using reduction4222.terms
def image4223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4223 : InImage map_9_152 image4223 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4223 : Bundle := named_bundle% "RealMapCertificates/relations/basis4223.json"
theorem reductionProof4223 : EqualModuloRelations reduction4223.relations reduction4223.input reduction4223.output := by lin_cert using reduction4223.terms
theorem substitutionProof4223 : IsMapEvaluation generatorImages reduction4223.relations [0,0,0,9,69,69] reduction4223.output := by lin_cert using reduction4223.terms
def map_9_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4316 : InImage map_9_153 image4316 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4316 : Bundle := named_bundle% "RealMapCertificates/relations/basis4316.json"
theorem reductionProof4316 : EqualModuloRelations reduction4316.relations reduction4316.input reduction4316.output := by lin_cert using reduction4316.terms
theorem substitutionProof4316 : IsMapEvaluation generatorImages reduction4316.relations [1,12,324] reduction4316.output := by lin_cert using reduction4316.terms
def image4317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4317 : InImage map_9_153 image4317 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4317 : Bundle := named_bundle% "RealMapCertificates/relations/basis4317.json"
theorem reductionProof4317 : EqualModuloRelations reduction4317.relations reduction4317.input reduction4317.output := by lin_cert using reduction4317.terms
theorem substitutionProof4317 : IsMapEvaluation generatorImages reduction4317.relations [0,577] reduction4317.output := by lin_cert using reduction4317.terms
def map_9_154 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4378 : InImage map_9_154 image4378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4378 : Bundle := named_bundle% "RealMapCertificates/relations/basis4378.json"
theorem reductionProof4378 : EqualModuloRelations reduction4378.relations reduction4378.input reduction4378.output := by lin_cert using reduction4378.terms
theorem substitutionProof4378 : IsMapEvaluation generatorImages reduction4378.relations [3,524] reduction4378.output := by lin_cert using reduction4378.terms
def image4379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4379 : InImage map_9_154 image4379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4379 : Bundle := named_bundle% "RealMapCertificates/relations/basis4379.json"
theorem reductionProof4379 : EqualModuloRelations reduction4379.relations reduction4379.input reduction4379.output := by lin_cert using reduction4379.terms
theorem substitutionProof4379 : IsMapEvaluation generatorImages reduction4379.relations [2,566] reduction4379.output := by lin_cert using reduction4379.terms
def image4380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4380 : InImage map_9_154 image4380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4380 : Bundle := named_bundle% "RealMapCertificates/relations/basis4380.json"
theorem reductionProof4380 : EqualModuloRelations reduction4380.relations reduction4380.input reduction4380.output := by lin_cert using reduction4380.terms
theorem substitutionProof4380 : IsMapEvaluation generatorImages reduction4380.relations [2,7,396] reduction4380.output := by lin_cert using reduction4380.terms
def image4381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4381 : InImage map_9_154 image4381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4381 : Bundle := named_bundle% "RealMapCertificates/relations/basis4381.json"
theorem reductionProof4381 : EqualModuloRelations reduction4381.relations reduction4381.input reduction4381.output := by lin_cert using reduction4381.terms
theorem substitutionProof4381 : IsMapEvaluation generatorImages reduction4381.relations [1,577] reduction4381.output := by lin_cert using reduction4381.terms
def map_9_155 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4465 : InImage map_9_155 image4465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4465 : Bundle := named_bundle% "RealMapCertificates/relations/basis4465.json"
theorem reductionProof4465 : EqualModuloRelations reduction4465.relations reduction4465.input reduction4465.output := by lin_cert using reduction4465.terms
theorem substitutionProof4465 : IsMapEvaluation generatorImages reduction4465.relations [2,18,264] reduction4465.output := by lin_cert using reduction4465.terms
def image4466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4466 : InImage map_9_155 image4466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4466 : Bundle := named_bundle% "RealMapCertificates/relations/basis4466.json"
theorem reductionProof4466 : EqualModuloRelations reduction4466.relations reduction4466.input reduction4466.output := by lin_cert using reduction4466.terms
theorem substitutionProof4466 : IsMapEvaluation generatorImages reduction4466.relations [0,0,584] reduction4466.output := by lin_cert using reduction4466.terms
def map_9_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4579 : InImage map_9_156 image4579 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4579 : Bundle := named_bundle% "RealMapCertificates/relations/basis4579.json"
theorem reductionProof4579 : EqualModuloRelations reduction4579.relations reduction4579.input reduction4579.output := by lin_cert using reduction4579.terms
theorem substitutionProof4579 : IsMapEvaluation generatorImages reduction4579.relations [1,3,525] reduction4579.output := by lin_cert using reduction4579.terms
def image4580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4580 : InImage map_9_156 image4580 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4580 : Bundle := named_bundle% "RealMapCertificates/relations/basis4580.json"
theorem reductionProof4580 : EqualModuloRelations reduction4580.relations reduction4580.input reduction4580.output := by lin_cert using reduction4580.terms
theorem substitutionProof4580 : IsMapEvaluation generatorImages reduction4580.relations [0,0,7,446] reduction4580.output := by lin_cert using reduction4580.terms
def map_9_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4653 : InImage map_9_157 image4653 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4653 : Bundle := named_bundle% "RealMapCertificates/relations/basis4653.json"
theorem reductionProof4653 : EqualModuloRelations reduction4653.relations reduction4653.input reduction4653.output := by lin_cert using reduction4653.terms
theorem substitutionProof4653 : IsMapEvaluation generatorImages reduction4653.relations [7,480] reduction4653.output := by lin_cert using reduction4653.terms
def map_9_158 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4733 : InImage map_9_158 image4733 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4733 : Bundle := named_bundle% "RealMapCertificates/relations/basis4733.json"
theorem reductionProof4733 : EqualModuloRelations reduction4733.relations reduction4733.input reduction4733.output := by lin_cert using reduction4733.terms
theorem substitutionProof4733 : IsMapEvaluation generatorImages reduction4733.relations [633] reduction4733.output := by lin_cert using reduction4733.terms
def image4734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4734 : InImage map_9_158 image4734 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4734 : Bundle := named_bundle% "RealMapCertificates/relations/basis4734.json"
theorem reductionProof4734 : EqualModuloRelations reduction4734.relations reduction4734.input reduction4734.output := by lin_cert using reduction4734.terms
theorem substitutionProof4734 : IsMapEvaluation generatorImages reduction4734.relations [17,69,69] reduction4734.output := by lin_cert using reduction4734.terms
def image4735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4735 : InImage map_9_158 image4735 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4735 : Bundle := named_bundle% "RealMapCertificates/relations/basis4735.json"
theorem reductionProof4735 : EqualModuloRelations reduction4735.relations reduction4735.input reduction4735.output := by lin_cert using reduction4735.terms
theorem substitutionProof4735 : IsMapEvaluation generatorImages reduction4735.relations [16,324] reduction4735.output := by lin_cert using reduction4735.terms
def image4736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4736 : InImage map_9_158 image4736 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4736 : Bundle := named_bundle% "RealMapCertificates/relations/basis4736.json"
theorem reductionProof4736 : EqualModuloRelations reduction4736.relations reduction4736.input reduction4736.output := by lin_cert using reduction4736.terms
theorem substitutionProof4736 : IsMapEvaluation generatorImages reduction4736.relations [0,0,617] reduction4736.output := by lin_cert using reduction4736.terms
def map_9_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4837 : InImage map_9_159 image4837 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4837 : Bundle := named_bundle% "RealMapCertificates/relations/basis4837.json"
theorem reductionProof4837 : EqualModuloRelations reduction4837.relations reduction4837.input reduction4837.output := by lin_cert using reduction4837.terms
theorem substitutionProof4837 : IsMapEvaluation generatorImages reduction4837.relations [0,17,324] reduction4837.output := by lin_cert using reduction4837.terms
def map_9_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4911 : InImage map_9_160 image4911 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4911 : Bundle := named_bundle% "RealMapCertificates/relations/basis4911.json"
theorem reductionProof4911 : EqualModuloRelations reduction4911.relations reduction4911.input reduction4911.output := by lin_cert using reduction4911.terms
theorem substitutionProof4911 : IsMapEvaluation generatorImages reduction4911.relations [3,577] reduction4911.output := by lin_cert using reduction4911.terms
def map_9_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4997 : InImage map_9_161 image4997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4997 : Bundle := named_bundle% "RealMapCertificates/relations/basis4997.json"
theorem reductionProof4997 : EqualModuloRelations reduction4997.relations reduction4997.input reduction4997.output := by lin_cert using reduction4997.terms
theorem substitutionProof4997 : IsMapEvaluation generatorImages reduction4997.relations [659] reduction4997.output := by lin_cert using reduction4997.terms
def image4998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4998 : InImage map_9_161 image4998 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4998 : Bundle := named_bundle% "RealMapCertificates/relations/basis4998.json"
theorem reductionProof4998 : EqualModuloRelations reduction4998.relations reduction4998.input reduction4998.output := by lin_cert using reduction4998.terms
theorem substitutionProof4998 : IsMapEvaluation generatorImages reduction4998.relations [20,69,69] reduction4998.output := by lin_cert using reduction4998.terms
def image4999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4999 : InImage map_9_161 image4999 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4999 : Bundle := named_bundle% "RealMapCertificates/relations/basis4999.json"
theorem reductionProof4999 : EqualModuloRelations reduction4999.relations reduction4999.input reduction4999.output := by lin_cert using reduction4999.terms
theorem substitutionProof4999 : IsMapEvaluation generatorImages reduction4999.relations [19,324] reduction4999.output := by lin_cert using reduction4999.terms
def map_9_162 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5121 : InImage map_9_162 image5121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5121 : Bundle := named_bundle% "RealMapCertificates/relations/basis5121.json"
theorem reductionProof5121 : EqualModuloRelations reduction5121.relations reduction5121.input reduction5121.output := by lin_cert using reduction5121.terms
theorem substitutionProof5121 : IsMapEvaluation generatorImages reduction5121.relations [0,20,324] reduction5121.output := by lin_cert using reduction5121.terms
def map_9_163 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5197 : InImage map_9_163 image5197 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5197 : Bundle := named_bundle% "RealMapCertificates/relations/basis5197.json"
theorem reductionProof5197 : EqualModuloRelations reduction5197.relations reduction5197.input reduction5197.output := by lin_cert using reduction5197.terms
theorem substitutionProof5197 : IsMapEvaluation generatorImages reduction5197.relations [18,352] reduction5197.output := by lin_cert using reduction5197.terms
def image5198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5198 : InImage map_9_163 image5198 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5198 : Bundle := named_bundle% "RealMapCertificates/relations/basis5198.json"
theorem reductionProof5198 : EqualModuloRelations reduction5198.relations reduction5198.input reduction5198.output := by lin_cert using reduction5198.terms
theorem substitutionProof5198 : IsMapEvaluation generatorImages reduction5198.relations [1,70,163] reduction5198.output := by lin_cert using reduction5198.terms
def image5199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5199 : InImage map_9_163 image5199 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5199 : Bundle := named_bundle% "RealMapCertificates/relations/basis5199.json"
theorem reductionProof5199 : EqualModuloRelations reduction5199.relations reduction5199.input reduction5199.output := by lin_cert using reduction5199.terms
theorem substitutionProof5199 : IsMapEvaluation generatorImages reduction5199.relations [0,676] reduction5199.output := by lin_cert using reduction5199.terms
def map_9_164 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5288 : InImage map_9_164 image5288 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5288 : Bundle := named_bundle% "RealMapCertificates/relations/basis5288.json"
theorem reductionProof5288 : EqualModuloRelations reduction5288.relations reduction5288.input reduction5288.output := by lin_cert using reduction5288.terms
theorem substitutionProof5288 : IsMapEvaluation generatorImages reduction5288.relations [18,367] reduction5288.output := by lin_cert using reduction5288.terms
def image5289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5289 : InImage map_9_164 image5289 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5289 : Bundle := named_bundle% "RealMapCertificates/relations/basis5289.json"
theorem reductionProof5289 : EqualModuloRelations reduction5289.relations reduction5289.input reduction5289.output := by lin_cert using reduction5289.terms
theorem substitutionProof5289 : IsMapEvaluation generatorImages reduction5289.relations [8,8,324] reduction5289.output := by lin_cert using reduction5289.terms
def image5290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5290 : InImage map_9_164 image5290 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5290 : Bundle := named_bundle% "RealMapCertificates/relations/basis5290.json"
theorem reductionProof5290 : EqualModuloRelations reduction5290.relations reduction5290.input reduction5290.output := by lin_cert using reduction5290.terms
theorem substitutionProof5290 : IsMapEvaluation generatorImages reduction5290.relations [7,546] reduction5290.output := by lin_cert using reduction5290.terms
def image5291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5291 : InImage map_9_164 image5291 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5291 : Bundle := named_bundle% "RealMapCertificates/relations/basis5291.json"
theorem reductionProof5291 : EqualModuloRelations reduction5291.relations reduction5291.input reduction5291.output := by lin_cert using reduction5291.terms
theorem substitutionProof5291 : IsMapEvaluation generatorImages reduction5291.relations [1,676] reduction5291.output := by lin_cert using reduction5291.terms
def image5292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5292 : InImage map_9_164 image5292 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5292 : Bundle := named_bundle% "RealMapCertificates/relations/basis5292.json"
theorem reductionProof5292 : EqualModuloRelations reduction5292.relations reduction5292.input reduction5292.output := by lin_cert using reduction5292.terms
theorem substitutionProof5292 : IsMapEvaluation generatorImages reduction5292.relations [0,684] reduction5292.output := by lin_cert using reduction5292.terms
def map_9_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5418 : InImage map_9_165 image5418 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5418 : Bundle := named_bundle% "RealMapCertificates/relations/basis5418.json"
theorem reductionProof5418 : EqualModuloRelations reduction5418.relations reduction5418.input reduction5418.output := by lin_cert using reduction5418.terms
theorem substitutionProof5418 : IsMapEvaluation generatorImages reduction5418.relations [18,376] reduction5418.output := by lin_cert using reduction5418.terms
def image5419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5419 : InImage map_9_165 image5419 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5419 : Bundle := named_bundle% "RealMapCertificates/relations/basis5419.json"
theorem reductionProof5419 : EqualModuloRelations reduction5419.relations reduction5419.input reduction5419.output := by lin_cert using reduction5419.terms
theorem substitutionProof5419 : IsMapEvaluation generatorImages reduction5419.relations [1,684] reduction5419.output := by lin_cert using reduction5419.terms
def image5420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5420 : InImage map_9_165 image5420 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5420 : Bundle := named_bundle% "RealMapCertificates/relations/basis5420.json"
theorem reductionProof5420 : EqualModuloRelations reduction5420.relations reduction5420.input reduction5420.output := by lin_cert using reduction5420.terms
theorem substitutionProof5420 : IsMapEvaluation generatorImages reduction5420.relations [0,696] reduction5420.output := by lin_cert using reduction5420.terms
def image5421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5421 : InImage map_9_165 image5421 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5421 : Bundle := named_bundle% "RealMapCertificates/relations/basis5421.json"
theorem reductionProof5421 : EqualModuloRelations reduction5421.relations reduction5421.input reduction5421.output := by lin_cert using reduction5421.terms
theorem substitutionProof5421 : IsMapEvaluation generatorImages reduction5421.relations [0,22,324] reduction5421.output := by lin_cert using reduction5421.terms
def map_9_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5514 : InImage map_9_166 image5514 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5514 : Bundle := named_bundle% "RealMapCertificates/relations/basis5514.json"
theorem reductionProof5514 : EqualModuloRelations reduction5514.relations reduction5514.input reduction5514.output := by lin_cert using reduction5514.terms
theorem substitutionProof5514 : IsMapEvaluation generatorImages reduction5514.relations [2,676] reduction5514.output := by lin_cert using reduction5514.terms
def image5515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5515 : InImage map_9_166 image5515 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5515 : Bundle := named_bundle% "RealMapCertificates/relations/basis5515.json"
theorem reductionProof5515 : EqualModuloRelations reduction5515.relations reduction5515.input reduction5515.output := by lin_cert using reduction5515.terms
theorem substitutionProof5515 : IsMapEvaluation generatorImages reduction5515.relations [1,697] reduction5515.output := by lin_cert using reduction5515.terms
def image5516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5516 : InImage map_9_166 image5516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5516 : Bundle := named_bundle% "RealMapCertificates/relations/basis5516.json"
theorem reductionProof5516 : EqualModuloRelations reduction5516.relations reduction5516.input reduction5516.output := by lin_cert using reduction5516.terms
theorem substitutionProof5516 : IsMapEvaluation generatorImages reduction5516.relations [0,0,698] reduction5516.output := by lin_cert using reduction5516.terms
def image5517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5517 : InImage map_9_166 image5517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5517 : Bundle := named_bundle% "RealMapCertificates/relations/basis5517.json"
theorem reductionProof5517 : EqualModuloRelations reduction5517.relations reduction5517.input reduction5517.output := by lin_cert using reduction5517.terms
theorem substitutionProof5517 : IsMapEvaluation generatorImages reduction5517.relations [0,0,23,324] reduction5517.output := by lin_cert using reduction5517.terms
end RealMapCertificates
