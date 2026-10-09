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
  | 25 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 34 => []
  | 36 => []
  | 43 => []
  | 48 => []
  | 52 => []
  | 53 => []
  | 67 => []
  | 68 => []
  | 73 => []
  | 74 => []
  | 75 => []
  | 82 => []
  | 83 => []
  | 84 => []
  | 86 => []
  | 95 => []
  | 107 => []
  | 108 => []
  | 324 => []
  | 368 => []
  | 398 => []
  | 400 => []
  | 415 => []
  | 445 => []
  | 446 => []
  | 506 => []
  | 524 => []
  | 525 => []
  | 617 => []
  | 660 => []
  | 676 => []
  | 684 => []
  | 695 => []
  | 696 => []
  | 697 => []
  | 698 => []
  | 720 => []
  | 747 => []
  | 749 => []
  | 750 => []
  | 774 => []
  | 775 => []
  | 776 => []
  | 782 => []
  | 794 => []
  | 802 => []
  | 819 => []
  | 847 => []
  | 848 => []
  | 849 => []
  | 850 => []
  | 885 => []
  | 888 => []
  | 894 => []
  | 994 => []
  | 1058 => []
  | 1165 => []
  | 1166 => []
  | 1201 => []
  | 1217 => []
  | 1235 => []
  | 1236 => []
  | 1281 => []
  | 1282 => []
  | 1283 => []
  | 1284 => []
  | 1286 => []
  | _ => []
def map_9_167 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5617 : InImage map_9_167 image5617 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5617 : Bundle := named_bundle% "RealMapCertificates/relations/basis5617.json"
theorem reductionProof5617 : EqualModuloRelations reduction5617.relations reduction5617.input reduction5617.output := by lin_cert using reduction5617.terms
theorem substitutionProof5617 : IsMapEvaluation generatorImages reduction5617.relations [18,415] reduction5617.output := by lin_cert using reduction5617.terms
def image5618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5618 : InImage map_9_167 image5618 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5618 : Bundle := named_bundle% "RealMapCertificates/relations/basis5618.json"
theorem reductionProof5618 : EqualModuloRelations reduction5618.relations reduction5618.input reduction5618.output := by lin_cert using reduction5618.terms
theorem substitutionProof5618 : IsMapEvaluation generatorImages reduction5618.relations [8,9,324] reduction5618.output := by lin_cert using reduction5618.terms
def image5619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5619 : InImage map_9_167 image5619 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5619 : Bundle := named_bundle% "RealMapCertificates/relations/basis5619.json"
theorem reductionProof5619 : EqualModuloRelations reduction5619.relations reduction5619.input reduction5619.output := by lin_cert using reduction5619.terms
theorem substitutionProof5619 : IsMapEvaluation generatorImages reduction5619.relations [0,720] reduction5619.output := by lin_cert using reduction5619.terms
def image5620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5620 : InImage map_9_167 image5620 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5620 : Bundle := named_bundle% "RealMapCertificates/relations/basis5620.json"
theorem reductionProof5620 : EqualModuloRelations reduction5620.relations reduction5620.input reduction5620.output := by lin_cert using reduction5620.terms
theorem substitutionProof5620 : IsMapEvaluation generatorImages reduction5620.relations [0,7,7,398] reduction5620.output := by lin_cert using reduction5620.terms
def image5621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5621 : InImage map_9_167 image5621 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5621 : Bundle := named_bundle% "RealMapCertificates/relations/basis5621.json"
theorem reductionProof5621 : EqualModuloRelations reduction5621.relations reduction5621.input reduction5621.output := by lin_cert using reduction5621.terms
theorem substitutionProof5621 : IsMapEvaluation generatorImages reduction5621.relations [0,0,0,0,0,0,0,18,324] reduction5621.output := by lin_cert using reduction5621.terms
def map_9_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5750 : InImage map_9_168 image5750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5750 : Bundle := named_bundle% "RealMapCertificates/relations/basis5750.json"
theorem reductionProof5750 : EqualModuloRelations reduction5750.relations reduction5750.input reduction5750.output := by lin_cert using reduction5750.terms
theorem substitutionProof5750 : IsMapEvaluation generatorImages reduction5750.relations [2,697] reduction5750.output := by lin_cert using reduction5750.terms
def image5751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5751 : InImage map_9_168 image5751 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5751 : Bundle := named_bundle% "RealMapCertificates/relations/basis5751.json"
theorem reductionProof5751 : EqualModuloRelations reduction5751.relations reduction5751.input reduction5751.output := by lin_cert using reduction5751.terms
theorem substitutionProof5751 : IsMapEvaluation generatorImages reduction5751.relations [1,720] reduction5751.output := by lin_cert using reduction5751.terms
def image5752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5752 : InImage map_9_168 image5752 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5752 : Bundle := named_bundle% "RealMapCertificates/relations/basis5752.json"
theorem reductionProof5752 : EqualModuloRelations reduction5752.relations reduction5752.input reduction5752.output := by lin_cert using reduction5752.terms
theorem substitutionProof5752 : IsMapEvaluation generatorImages reduction5752.relations [0,29,324] reduction5752.output := by lin_cert using reduction5752.terms
def map_9_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5848 : InImage map_9_169 image5848 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5848 : Bundle := named_bundle% "RealMapCertificates/relations/basis5848.json"
theorem reductionProof5848 : EqualModuloRelations reduction5848.relations reduction5848.input reduction5848.output := by lin_cert using reduction5848.terms
theorem substitutionProof5848 : IsMapEvaluation generatorImages reduction5848.relations [0,2,698] reduction5848.output := by lin_cert using reduction5848.terms
def map_9_170 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5949 : InImage map_9_170 image5949 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5949 : Bundle := named_bundle% "RealMapCertificates/relations/basis5949.json"
theorem reductionProof5949 : EqualModuloRelations reduction5949.relations reduction5949.input reduction5949.output := by lin_cert using reduction5949.terms
theorem substitutionProof5949 : IsMapEvaluation generatorImages reduction5949.relations [775] reduction5949.output := by lin_cert using reduction5949.terms
def image5950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5950 : InImage map_9_170 image5950 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5950 : Bundle := named_bundle% "RealMapCertificates/relations/basis5950.json"
theorem reductionProof5950 : EqualModuloRelations reduction5950.relations reduction5950.input reduction5950.output := by lin_cert using reduction5950.terms
theorem substitutionProof5950 : IsMapEvaluation generatorImages reduction5950.relations [774] reduction5950.output := by lin_cert using reduction5950.terms
def image5951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5951 : InImage map_9_170 image5951 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5951 : Bundle := named_bundle% "RealMapCertificates/relations/basis5951.json"
theorem reductionProof5951 : EqualModuloRelations reduction5951.relations reduction5951.input reduction5951.output := by lin_cert using reduction5951.terms
theorem substitutionProof5951 : IsMapEvaluation generatorImages reduction5951.relations [18,445] reduction5951.output := by lin_cert using reduction5951.terms
def image5952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5952 : InImage map_9_170 image5952 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5952 : Bundle := named_bundle% "RealMapCertificates/relations/basis5952.json"
theorem reductionProof5952 : EqualModuloRelations reduction5952.relations reduction5952.input reduction5952.output := by lin_cert using reduction5952.terms
theorem substitutionProof5952 : IsMapEvaluation generatorImages reduction5952.relations [8,13,324] reduction5952.output := by lin_cert using reduction5952.terms
def image5953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5953 : InImage map_9_170 image5953 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5953 : Bundle := named_bundle% "RealMapCertificates/relations/basis5953.json"
theorem reductionProof5953 : EqualModuloRelations reduction5953.relations reduction5953.input reduction5953.output := by lin_cert using reduction5953.terms
theorem substitutionProof5953 : IsMapEvaluation generatorImages reduction5953.relations [0,0,747] reduction5953.output := by lin_cert using reduction5953.terms
def map_9_171 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6095 : InImage map_9_171 image6095 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6095 : Bundle := named_bundle% "RealMapCertificates/relations/basis6095.json"
theorem reductionProof6095 : EqualModuloRelations reduction6095.relations reduction6095.input reduction6095.output := by lin_cert using reduction6095.terms
theorem substitutionProof6095 : IsMapEvaluation generatorImages reduction6095.relations [782] reduction6095.output := by lin_cert using reduction6095.terms
def image6096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6096 : InImage map_9_171 image6096 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6096 : Bundle := named_bundle% "RealMapCertificates/relations/basis6096.json"
theorem reductionProof6096 : EqualModuloRelations reduction6096.relations reduction6096.input reduction6096.output := by lin_cert using reduction6096.terms
theorem substitutionProof6096 : IsMapEvaluation generatorImages reduction6096.relations [0,32,324] reduction6096.output := by lin_cert using reduction6096.terms
def image6097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6097 : InImage map_9_171 image6097 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6097 : Bundle := named_bundle% "RealMapCertificates/relations/basis6097.json"
theorem reductionProof6097 : EqualModuloRelations reduction6097.relations reduction6097.input reduction6097.output := by lin_cert using reduction6097.terms
theorem substitutionProof6097 : IsMapEvaluation generatorImages reduction6097.relations [0,0,0,749] reduction6097.output := by lin_cert using reduction6097.terms
def map_9_172 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6175 : InImage map_9_172 image6175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6175 : Bundle := named_bundle% "RealMapCertificates/relations/basis6175.json"
theorem reductionProof6175 : EqualModuloRelations reduction6175.relations reduction6175.input reduction6175.output := by lin_cert using reduction6175.terms
theorem substitutionProof6175 : IsMapEvaluation generatorImages reduction6175.relations [3,696] reduction6175.output := by lin_cert using reduction6175.terms
def image6176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6176 : InImage map_9_172 image6176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6176 : Bundle := named_bundle% "RealMapCertificates/relations/basis6176.json"
theorem reductionProof6176 : EqualModuloRelations reduction6176.relations reduction6176.input reduction6176.output := by lin_cert using reduction6176.terms
theorem substitutionProof6176 : IsMapEvaluation generatorImages reduction6176.relations [2,2,18,368] reduction6176.output := by lin_cert using reduction6176.terms
def image6177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6177 : InImage map_9_172 image6177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6177 : Bundle := named_bundle% "RealMapCertificates/relations/basis6177.json"
theorem reductionProof6177 : EqualModuloRelations reduction6177.relations reduction6177.input reduction6177.output := by lin_cert using reduction6177.terms
theorem substitutionProof6177 : IsMapEvaluation generatorImages reduction6177.relations [1,1,747] reduction6177.output := by lin_cert using reduction6177.terms
def image6178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6178 : InImage map_9_172 image6178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6178 : Bundle := named_bundle% "RealMapCertificates/relations/basis6178.json"
theorem reductionProof6178 : EqualModuloRelations reduction6178.relations reduction6178.input reduction6178.output := by lin_cert using reduction6178.terms
theorem substitutionProof6178 : IsMapEvaluation generatorImages reduction6178.relations [0,0,18,446] reduction6178.output := by lin_cert using reduction6178.terms
def image6179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6179 : InImage map_9_172 image6179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6179 : Bundle := named_bundle% "RealMapCertificates/relations/basis6179.json"
theorem reductionProof6179 : EqualModuloRelations reduction6179.relations reduction6179.input reduction6179.output := by lin_cert using reduction6179.terms
theorem substitutionProof6179 : IsMapEvaluation generatorImages reduction6179.relations [0,0,0,0,750] reduction6179.output := by lin_cert using reduction6179.terms
def map_9_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6281 : InImage map_9_173 image6281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6281 : Bundle := named_bundle% "RealMapCertificates/relations/basis6281.json"
theorem reductionProof6281 : EqualModuloRelations reduction6281.relations reduction6281.input reduction6281.output := by lin_cert using reduction6281.terms
theorem substitutionProof6281 : IsMapEvaluation generatorImages reduction6281.relations [802] reduction6281.output := by lin_cert using reduction6281.terms
def image6282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6282 : InImage map_9_173 image6282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6282 : Bundle := named_bundle% "RealMapCertificates/relations/basis6282.json"
theorem reductionProof6282 : EqualModuloRelations reduction6282.relations reduction6282.input reduction6282.output := by lin_cert using reduction6282.terms
theorem substitutionProof6282 : IsMapEvaluation generatorImages reduction6282.relations [9,13,324] reduction6282.output := by lin_cert using reduction6282.terms
def image6283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6283 : InImage map_9_173 image6283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6283 : Bundle := named_bundle% "RealMapCertificates/relations/basis6283.json"
theorem reductionProof6283 : EqualModuloRelations reduction6283.relations reduction6283.input reduction6283.output := by lin_cert using reduction6283.terms
theorem substitutionProof6283 : IsMapEvaluation generatorImages reduction6283.relations [0,0,0,34,324] reduction6283.output := by lin_cert using reduction6283.terms
def map_9_174 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6431 : InImage map_9_174 image6431 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6431 : Bundle := named_bundle% "RealMapCertificates/relations/basis6431.json"
theorem reductionProof6431 : EqualModuloRelations reduction6431.relations reduction6431.input reduction6431.output := by lin_cert using reduction6431.terms
theorem substitutionProof6431 : IsMapEvaluation generatorImages reduction6431.relations [3,720] reduction6431.output := by lin_cert using reduction6431.terms
def image6432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6432 : InImage map_9_174 image6432 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6432 : Bundle := named_bundle% "RealMapCertificates/relations/basis6432.json"
theorem reductionProof6432 : EqualModuloRelations reduction6432.relations reduction6432.input reduction6432.output := by lin_cert using reduction6432.terms
theorem substitutionProof6432 : IsMapEvaluation generatorImages reduction6432.relations [1,1,18,446] reduction6432.output := by lin_cert using reduction6432.terms
def image6433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6433 : InImage map_9_174 image6433 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6433 : Bundle := named_bundle% "RealMapCertificates/relations/basis6433.json"
theorem reductionProof6433 : EqualModuloRelations reduction6433.relations reduction6433.input reduction6433.output := by lin_cert using reduction6433.terms
theorem substitutionProof6433 : IsMapEvaluation generatorImages reduction6433.relations [0,0,36,324] reduction6433.output := by lin_cert using reduction6433.terms
def map_9_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6633 : InImage map_9_176 image6633 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6633 : Bundle := named_bundle% "RealMapCertificates/relations/basis6633.json"
theorem reductionProof6633 : EqualModuloRelations reduction6633.relations reduction6633.input reduction6633.output := by lin_cert using reduction6633.terms
theorem substitutionProof6633 : IsMapEvaluation generatorImages reduction6633.relations [847] reduction6633.output := by lin_cert using reduction6633.terms
def image6634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6634 : InImage map_9_176 image6634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6634 : Bundle := named_bundle% "RealMapCertificates/relations/basis6634.json"
theorem reductionProof6634 : EqualModuloRelations reduction6634.relations reduction6634.input reduction6634.output := by lin_cert using reduction6634.terms
theorem substitutionProof6634 : IsMapEvaluation generatorImages reduction6634.relations [13,13,324] reduction6634.output := by lin_cert using reduction6634.terms
def image6635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6635 : InImage map_9_176 image6635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6635 : Bundle := named_bundle% "RealMapCertificates/relations/basis6635.json"
theorem reductionProof6635 : EqualModuloRelations reduction6635.relations reduction6635.input reduction6635.output := by lin_cert using reduction6635.terms
theorem substitutionProof6635 : IsMapEvaluation generatorImages reduction6635.relations [1,819] reduction6635.output := by lin_cert using reduction6635.terms
def map_9_177 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6772 : InImage map_9_177 image6772 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6772 : Bundle := named_bundle% "RealMapCertificates/relations/basis6772.json"
theorem reductionProof6772 : EqualModuloRelations reduction6772.relations reduction6772.input reduction6772.output := by lin_cert using reduction6772.terms
theorem substitutionProof6772 : IsMapEvaluation generatorImages reduction6772.relations [0,848] reduction6772.output := by lin_cert using reduction6772.terms
def map_9_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6873 : InImage map_9_178 image6873 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6873 : Bundle := named_bundle% "RealMapCertificates/relations/basis6873.json"
theorem reductionProof6873 : EqualModuloRelations reduction6873.relations reduction6873.input reduction6873.output := by lin_cert using reduction6873.terms
theorem substitutionProof6873 : IsMapEvaluation generatorImages reduction6873.relations [18,524] reduction6873.output := by lin_cert using reduction6873.terms
def image6874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6874 : InImage map_9_178 image6874 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6874 : Bundle := named_bundle% "RealMapCertificates/relations/basis6874.json"
theorem reductionProof6874 : EqualModuloRelations reduction6874.relations reduction6874.input reduction6874.output := by lin_cert using reduction6874.terms
theorem substitutionProof6874 : IsMapEvaluation generatorImages reduction6874.relations [7,676] reduction6874.output := by lin_cert using reduction6874.terms
def image6875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6875 : InImage map_9_178 image6875 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6875 : Bundle := named_bundle% "RealMapCertificates/relations/basis6875.json"
theorem reductionProof6875 : EqualModuloRelations reduction6875.relations reduction6875.input reduction6875.output := by lin_cert using reduction6875.terms
theorem substitutionProof6875 : IsMapEvaluation generatorImages reduction6875.relations [3,776] reduction6875.output := by lin_cert using reduction6875.terms
def image6876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6876 : InImage map_9_178 image6876 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6876 : Bundle := named_bundle% "RealMapCertificates/relations/basis6876.json"
theorem reductionProof6876 : EqualModuloRelations reduction6876.relations reduction6876.input reduction6876.output := by lin_cert using reduction6876.terms
theorem substitutionProof6876 : IsMapEvaluation generatorImages reduction6876.relations [0,0,6,18,324] reduction6876.output := by lin_cert using reduction6876.terms
def map_9_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6999 : InImage map_9_179 image6999 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6999 : Bundle := named_bundle% "RealMapCertificates/relations/basis6999.json"
theorem reductionProof6999 : EqualModuloRelations reduction6999.relations reduction6999.input reduction6999.output := by lin_cert using reduction6999.terms
theorem substitutionProof6999 : IsMapEvaluation generatorImages reduction6999.relations [0,0,0,18,506] reduction6999.output := by lin_cert using reduction6999.terms
def map_9_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7142 : InImage map_9_180 image7142 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7142 : Bundle := named_bundle% "RealMapCertificates/relations/basis7142.json"
theorem reductionProof7142 : EqualModuloRelations reduction7142.relations reduction7142.input reduction7142.output := by lin_cert using reduction7142.terms
theorem substitutionProof7142 : IsMapEvaluation generatorImages reduction7142.relations [7,695] reduction7142.output := by lin_cert using reduction7142.terms
def image7143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7143 : InImage map_9_180 image7143 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7143 : Bundle := named_bundle% "RealMapCertificates/relations/basis7143.json"
theorem reductionProof7143 : EqualModuloRelations reduction7143.relations reduction7143.input reduction7143.output := by lin_cert using reduction7143.terms
theorem substitutionProof7143 : IsMapEvaluation generatorImages reduction7143.relations [3,794] reduction7143.output := by lin_cert using reduction7143.terms
def image7144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7144 : InImage map_9_180 image7144 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7144 : Bundle := named_bundle% "RealMapCertificates/relations/basis7144.json"
theorem reductionProof7144 : EqualModuloRelations reduction7144.relations reduction7144.input reduction7144.output := by lin_cert using reduction7144.terms
theorem substitutionProof7144 : IsMapEvaluation generatorImages reduction7144.relations [0,885] reduction7144.output := by lin_cert using reduction7144.terms
def map_9_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7234 : InImage map_9_181 image7234 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7234 : Bundle := named_bundle% "RealMapCertificates/relations/basis7234.json"
theorem reductionProof7234 : EqualModuloRelations reduction7234.relations reduction7234.input reduction7234.output := by lin_cert using reduction7234.terms
theorem substitutionProof7234 : IsMapEvaluation generatorImages reduction7234.relations [0,7,698] reduction7234.output := by lin_cert using reduction7234.terms
def image7235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7235 : InImage map_9_181 image7235 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7235 : Bundle := named_bundle% "RealMapCertificates/relations/basis7235.json"
theorem reductionProof7235 : EqualModuloRelations reduction7235.relations reduction7235.input reduction7235.output := by lin_cert using reduction7235.terms
theorem substitutionProof7235 : IsMapEvaluation generatorImages reduction7235.relations [0,0,0,0,0,849] reduction7235.output := by lin_cert using reduction7235.terms
def map_9_182 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7354 : InImage map_9_182 image7354 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7354 : Bundle := named_bundle% "RealMapCertificates/relations/basis7354.json"
theorem reductionProof7354 : EqualModuloRelations reduction7354.relations reduction7354.input reduction7354.output := by lin_cert using reduction7354.terms
theorem substitutionProof7354 : IsMapEvaluation generatorImages reduction7354.relations [52,324] reduction7354.output := by lin_cert using reduction7354.terms
def image7355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7355 : InImage map_9_182 image7355 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7355 : Bundle := named_bundle% "RealMapCertificates/relations/basis7355.json"
theorem reductionProof7355 : EqualModuloRelations reduction7355.relations reduction7355.input reduction7355.output := by lin_cert using reduction7355.terms
theorem substitutionProof7355 : IsMapEvaluation generatorImages reduction7355.relations [43,400] reduction7355.output := by lin_cert using reduction7355.terms
def image7356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7356 : InImage map_9_182 image7356 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7356 : Bundle := named_bundle% "RealMapCertificates/relations/basis7356.json"
theorem reductionProof7356 : EqualModuloRelations reduction7356.relations reduction7356.input reduction7356.output := by lin_cert using reduction7356.terms
theorem substitutionProof7356 : IsMapEvaluation generatorImages reduction7356.relations [9,660] reduction7356.output := by lin_cert using reduction7356.terms
def image7357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7357 : InImage map_9_182 image7357 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7357 : Bundle := named_bundle% "RealMapCertificates/relations/basis7357.json"
theorem reductionProof7357 : EqualModuloRelations reduction7357.relations reduction7357.input reduction7357.output := by lin_cert using reduction7357.terms
theorem substitutionProof7357 : IsMapEvaluation generatorImages reduction7357.relations [1,888] reduction7357.output := by lin_cert using reduction7357.terms
def image7358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7358 : InImage map_9_182 image7358 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7358 : Bundle := named_bundle% "RealMapCertificates/relations/basis7358.json"
theorem reductionProof7358 : EqualModuloRelations reduction7358.relations reduction7358.input reduction7358.output := by lin_cert using reduction7358.terms
theorem substitutionProof7358 : IsMapEvaluation generatorImages reduction7358.relations [0,0,0,0,0,0,850] reduction7358.output := by lin_cert using reduction7358.terms
def map_9_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7501 : InImage map_9_183 image7501 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7501 : Bundle := named_bundle% "RealMapCertificates/relations/basis7501.json"
theorem reductionProof7501 : EqualModuloRelations reduction7501.relations reduction7501.input reduction7501.output := by lin_cert using reduction7501.terms
theorem substitutionProof7501 : IsMapEvaluation generatorImages reduction7501.relations [12,18,324] reduction7501.output := by lin_cert using reduction7501.terms
def image7502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7502 : InImage map_9_183 image7502 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7502 : Bundle := named_bundle% "RealMapCertificates/relations/basis7502.json"
theorem reductionProof7502 : EqualModuloRelations reduction7502.relations reduction7502.input reduction7502.output := by lin_cert using reduction7502.terms
theorem substitutionProof7502 : IsMapEvaluation generatorImages reduction7502.relations [2,885] reduction7502.output := by lin_cert using reduction7502.terms
def image7503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7503 : InImage map_9_183 image7503 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7503 : Bundle := named_bundle% "RealMapCertificates/relations/basis7503.json"
theorem reductionProof7503 : EqualModuloRelations reduction7503.relations reduction7503.input reduction7503.output := by lin_cert using reduction7503.terms
theorem substitutionProof7503 : IsMapEvaluation generatorImages reduction7503.relations [1,48,324] reduction7503.output := by lin_cert using reduction7503.terms
def image7504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7504 : InImage map_9_183 image7504 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7504 : Bundle := named_bundle% "RealMapCertificates/relations/basis7504.json"
theorem reductionProof7504 : EqualModuloRelations reduction7504.relations reduction7504.input reduction7504.output := by lin_cert using reduction7504.terms
theorem substitutionProof7504 : IsMapEvaluation generatorImages reduction7504.relations [0,0,894] reduction7504.output := by lin_cert using reduction7504.terms
def map_9_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7601 : InImage map_9_184 image7601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7601 : Bundle := named_bundle% "RealMapCertificates/relations/basis7601.json"
theorem reductionProof7601 : EqualModuloRelations reduction7601.relations reduction7601.input reduction7601.output := by lin_cert using reduction7601.terms
theorem substitutionProof7601 : IsMapEvaluation generatorImages reduction7601.relations [0,53,324] reduction7601.output := by lin_cert using reduction7601.terms
def map_9_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7722 : InImage map_9_185 image7722 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7722 : Bundle := named_bundle% "RealMapCertificates/relations/basis7722.json"
theorem reductionProof7722 : EqualModuloRelations reduction7722.relations reduction7722.input reduction7722.output := by lin_cert using reduction7722.terms
theorem substitutionProof7722 : IsMapEvaluation generatorImages reduction7722.relations [13,660] reduction7722.output := by lin_cert using reduction7722.terms
def map_9_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7863 : InImage map_9_186 image7863 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7863 : Bundle := named_bundle% "RealMapCertificates/relations/basis7863.json"
theorem reductionProof7863 : EqualModuloRelations reduction7863.relations reduction7863.input reduction7863.output := by lin_cert using reduction7863.terms
theorem substitutionProof7863 : IsMapEvaluation generatorImages reduction7863.relations [3,18,525] reduction7863.output := by lin_cert using reduction7863.terms
def image7864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7864 : InImage map_9_186 image7864 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7864 : Bundle := named_bundle% "RealMapCertificates/relations/basis7864.json"
theorem reductionProof7864 : EqualModuloRelations reduction7864.relations reduction7864.input reduction7864.output := by lin_cert using reduction7864.terms
theorem substitutionProof7864 : IsMapEvaluation generatorImages reduction7864.relations [0,2,894] reduction7864.output := by lin_cert using reduction7864.terms
def map_9_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7943 : InImage map_9_187 image7943 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7943 : Bundle := named_bundle% "RealMapCertificates/relations/basis7943.json"
theorem reductionProof7943 : EqualModuloRelations reduction7943.relations reduction7943.input reduction7943.output := by lin_cert using reduction7943.terms
theorem substitutionProof7943 : IsMapEvaluation generatorImages reduction7943.relations [2,53,324] reduction7943.output := by lin_cert using reduction7943.terms
def map_9_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8071 : InImage map_9_188 image8071 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8071 : Bundle := named_bundle% "RealMapCertificates/relations/basis8071.json"
theorem reductionProof8071 : EqualModuloRelations reduction8071.relations reduction8071.input reduction8071.output := by lin_cert using reduction8071.terms
theorem substitutionProof8071 : IsMapEvaluation generatorImages reduction8071.relations [13,25,324] reduction8071.output := by lin_cert using reduction8071.terms
def map_9_189 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8214 : InImage map_9_189 image8214 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8214 : Bundle := named_bundle% "RealMapCertificates/relations/basis8214.json"
theorem reductionProof8214 : EqualModuloRelations reduction8214.relations reduction8214.input reduction8214.output := by lin_cert using reduction8214.terms
theorem substitutionProof8214 : IsMapEvaluation generatorImages reduction8214.relations [0,18,617] reduction8214.output := by lin_cert using reduction8214.terms
def map_9_190 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8324 : InImage map_9_190 image8324 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8324 : Bundle := named_bundle% "RealMapCertificates/relations/basis8324.json"
theorem reductionProof8324 : EqualModuloRelations reduction8324.relations reduction8324.input reduction8324.output := by lin_cert using reduction8324.terms
theorem substitutionProof8324 : IsMapEvaluation generatorImages reduction8324.relations [17,18,324] reduction8324.output := by lin_cert using reduction8324.terms
def image8325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8325 : InImage map_9_190 image8325 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8325 : Bundle := named_bundle% "RealMapCertificates/relations/basis8325.json"
theorem reductionProof8325 : EqualModuloRelations reduction8325.relations reduction8325.input reduction8325.output := by lin_cert using reduction8325.terms
theorem substitutionProof8325 : IsMapEvaluation generatorImages reduction8325.relations [0,0,994] reduction8325.output := by lin_cert using reduction8325.terms
def map_9_192 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8596 : InImage map_9_192 image8596 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8596 : Bundle := named_bundle% "RealMapCertificates/relations/basis8596.json"
theorem reductionProof8596 : EqualModuloRelations reduction8596.relations reduction8596.input reduction8596.output := by lin_cert using reduction8596.terms
theorem substitutionProof8596 : IsMapEvaluation generatorImages reduction8596.relations [2,18,617] reduction8596.output := by lin_cert using reduction8596.terms
def map_9_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8694 : InImage map_9_193 image8694 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8694 : Bundle := named_bundle% "RealMapCertificates/relations/basis8694.json"
theorem reductionProof8694 : EqualModuloRelations reduction8694.relations reduction8694.input reduction8694.output := by lin_cert using reduction8694.terms
theorem substitutionProof8694 : IsMapEvaluation generatorImages reduction8694.relations [18,20,324] reduction8694.output := by lin_cert using reduction8694.terms
def image8695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8695 : InImage map_9_193 image8695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8695 : Bundle := named_bundle% "RealMapCertificates/relations/basis8695.json"
theorem reductionProof8695 : EqualModuloRelations reduction8695.relations reduction8695.input reduction8695.output := by lin_cert using reduction8695.terms
theorem substitutionProof8695 : IsMapEvaluation generatorImages reduction8695.relations [0,67,324] reduction8695.output := by lin_cert using reduction8695.terms
def map_9_194 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8841 : InImage map_9_194 image8841 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8841 : Bundle := named_bundle% "RealMapCertificates/relations/basis8841.json"
theorem reductionProof8841 : EqualModuloRelations reduction8841.relations reduction8841.input reduction8841.output := by lin_cert using reduction8841.terms
theorem substitutionProof8841 : IsMapEvaluation generatorImages reduction8841.relations [0,0,68,324] reduction8841.output := by lin_cert using reduction8841.terms
def map_9_195 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8994 : InImage map_9_195 image8994 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8994 : Bundle := named_bundle% "RealMapCertificates/relations/basis8994.json"
theorem reductionProof8994 : EqualModuloRelations reduction8994.relations reduction8994.input reduction8994.output := by lin_cert using reduction8994.terms
theorem substitutionProof8994 : IsMapEvaluation generatorImages reduction8994.relations [18,684] reduction8994.output := by lin_cert using reduction8994.terms
def map_9_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9118 : InImage map_9_196 image9118 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9118 : Bundle := named_bundle% "RealMapCertificates/relations/basis9118.json"
theorem reductionProof9118 : EqualModuloRelations reduction9118.relations reduction9118.input reduction9118.output := by lin_cert using reduction9118.terms
theorem substitutionProof9118 : IsMapEvaluation generatorImages reduction9118.relations [0,73,324] reduction9118.output := by lin_cert using reduction9118.terms
def map_9_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9272 : InImage map_9_197 image9272 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9272 : Bundle := named_bundle% "RealMapCertificates/relations/basis9272.json"
theorem reductionProof9272 : EqualModuloRelations reduction9272.relations reduction9272.input reduction9272.output := by lin_cert using reduction9272.terms
theorem substitutionProof9272 : IsMapEvaluation generatorImages reduction9272.relations [0,0,74,324] reduction9272.output := by lin_cert using reduction9272.terms
def image9273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9273 : InImage map_9_197 image9273 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9273 : Bundle := named_bundle% "RealMapCertificates/relations/basis9273.json"
theorem reductionProof9273 : EqualModuloRelations reduction9273.relations reduction9273.input reduction9273.output := by lin_cert using reduction9273.terms
theorem substitutionProof9273 : IsMapEvaluation generatorImages reduction9273.relations [0,0,0,0,0,1058] reduction9273.output := by lin_cert using reduction9273.terms
def map_9_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9456 : InImage map_9_198 image9456 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9456 : Bundle := named_bundle% "RealMapCertificates/relations/basis9456.json"
theorem reductionProof9456 : EqualModuloRelations reduction9456.relations reduction9456.input reduction9456.output := by lin_cert using reduction9456.terms
theorem substitutionProof9456 : IsMapEvaluation generatorImages reduction9456.relations [1165] reduction9456.output := by lin_cert using reduction9456.terms
def image9457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9457 : InImage map_9_198 image9457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9457 : Bundle := named_bundle% "RealMapCertificates/relations/basis9457.json"
theorem reductionProof9457 : EqualModuloRelations reduction9457.relations reduction9457.input reduction9457.output := by lin_cert using reduction9457.terms
theorem substitutionProof9457 : IsMapEvaluation generatorImages reduction9457.relations [83,324] reduction9457.output := by lin_cert using reduction9457.terms
def image9458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9458 : InImage map_9_198 image9458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9458 : Bundle := named_bundle% "RealMapCertificates/relations/basis9458.json"
theorem reductionProof9458 : EqualModuloRelations reduction9458.relations reduction9458.input reduction9458.output := by lin_cert using reduction9458.terms
theorem substitutionProof9458 : IsMapEvaluation generatorImages reduction9458.relations [82,324] reduction9458.output := by lin_cert using reduction9458.terms
def image9459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9459 : InImage map_9_198 image9459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9459 : Bundle := named_bundle% "RealMapCertificates/relations/basis9459.json"
theorem reductionProof9459 : EqualModuloRelations reduction9459.relations reduction9459.input reduction9459.output := by lin_cert using reduction9459.terms
theorem substitutionProof9459 : IsMapEvaluation generatorImages reduction9459.relations [0,0,0,0,0,0,18,18,324] reduction9459.output := by lin_cert using reduction9459.terms
def map_9_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9585 : InImage map_9_199 image9585 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9585 : Bundle := named_bundle% "RealMapCertificates/relations/basis9585.json"
theorem reductionProof9585 : EqualModuloRelations reduction9585.relations reduction9585.input reduction9585.output := by lin_cert using reduction9585.terms
theorem substitutionProof9585 : IsMapEvaluation generatorImages reduction9585.relations [0,84,324] reduction9585.output := by lin_cert using reduction9585.terms
def image9586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9586 : InImage map_9_199 image9586 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9586 : Bundle := named_bundle% "RealMapCertificates/relations/basis9586.json"
theorem reductionProof9586 : EqualModuloRelations reduction9586.relations reduction9586.input reduction9586.output := by lin_cert using reduction9586.terms
theorem substitutionProof9586 : IsMapEvaluation generatorImages reduction9586.relations [0,0,2,18,660] reduction9586.output := by lin_cert using reduction9586.terms
def map_9_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9759 : InImage map_9_200 image9759 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9759 : Bundle := named_bundle% "RealMapCertificates/relations/basis9759.json"
theorem reductionProof9759 : EqualModuloRelations reduction9759.relations reduction9759.input reduction9759.output := by lin_cert using reduction9759.terms
theorem substitutionProof9759 : IsMapEvaluation generatorImages reduction9759.relations [1201] reduction9759.output := by lin_cert using reduction9759.terms
def image9760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9760 : InImage map_9_200 image9760 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9760 : Bundle := named_bundle% "RealMapCertificates/relations/basis9760.json"
theorem reductionProof9760 : EqualModuloRelations reduction9760.relations reduction9760.input reduction9760.output := by lin_cert using reduction9760.terms
theorem substitutionProof9760 : IsMapEvaluation generatorImages reduction9760.relations [3,67,324] reduction9760.output := by lin_cert using reduction9760.terms
def image9761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9761 : InImage map_9_200 image9761 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9761 : Bundle := named_bundle% "RealMapCertificates/relations/basis9761.json"
theorem reductionProof9761 : EqualModuloRelations reduction9761.relations reduction9761.input reduction9761.output := by lin_cert using reduction9761.terms
theorem substitutionProof9761 : IsMapEvaluation generatorImages reduction9761.relations [0,2,75,324] reduction9761.output := by lin_cert using reduction9761.terms
def image9762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9762 : InImage map_9_200 image9762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9762 : Bundle := named_bundle% "RealMapCertificates/relations/basis9762.json"
theorem reductionProof9762 : EqualModuloRelations reduction9762.relations reduction9762.input reduction9762.output := by lin_cert using reduction9762.terms
theorem substitutionProof9762 : IsMapEvaluation generatorImages reduction9762.relations [0,0,86,324] reduction9762.output := by lin_cert using reduction9762.terms
def map_9_201 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9935 : InImage map_9_201 image9935 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9935 : Bundle := named_bundle% "RealMapCertificates/relations/basis9935.json"
theorem reductionProof9935 : EqualModuloRelations reduction9935.relations reduction9935.input reduction9935.output := by lin_cert using reduction9935.terms
theorem substitutionProof9935 : IsMapEvaluation generatorImages reduction9935.relations [1217] reduction9935.output := by lin_cert using reduction9935.terms
def image9936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9936 : InImage map_9_201 image9936 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9936 : Bundle := named_bundle% "RealMapCertificates/relations/basis9936.json"
theorem reductionProof9936 : EqualModuloRelations reduction9936.relations reduction9936.input reduction9936.output := by lin_cert using reduction9936.terms
theorem substitutionProof9936 : IsMapEvaluation generatorImages reduction9936.relations [0,3,68,324] reduction9936.output := by lin_cert using reduction9936.terms
def map_9_202 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10072 : InImage map_9_202 image10072 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10072 : Bundle := named_bundle% "RealMapCertificates/relations/basis10072.json"
theorem reductionProof10072 : EqualModuloRelations reduction10072.relations reduction10072.input reduction10072.output := by lin_cert using reduction10072.terms
theorem substitutionProof10072 : IsMapEvaluation generatorImages reduction10072.relations [1236] reduction10072.output := by lin_cert using reduction10072.terms
def image10073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10073 : InImage map_9_202 image10073 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10073 : Bundle := named_bundle% "RealMapCertificates/relations/basis10073.json"
theorem reductionProof10073 : EqualModuloRelations reduction10073.relations reduction10073.input reduction10073.output := by lin_cert using reduction10073.terms
theorem substitutionProof10073 : IsMapEvaluation generatorImages reduction10073.relations [1235] reduction10073.output := by lin_cert using reduction10073.terms
def image10074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10074 : InImage map_9_202 image10074 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10074 : Bundle := named_bundle% "RealMapCertificates/relations/basis10074.json"
theorem reductionProof10074 : EqualModuloRelations reduction10074.relations reduction10074.input reduction10074.output := by lin_cert using reduction10074.terms
theorem substitutionProof10074 : IsMapEvaluation generatorImages reduction10074.relations [2,1166] reduction10074.output := by lin_cert using reduction10074.terms
def image10075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10075 : InImage map_9_202 image10075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10075 : Bundle := named_bundle% "RealMapCertificates/relations/basis10075.json"
theorem reductionProof10075 : EqualModuloRelations reduction10075.relations reduction10075.input reduction10075.output := by lin_cert using reduction10075.terms
theorem substitutionProof10075 : IsMapEvaluation generatorImages reduction10075.relations [0,95,324] reduction10075.output := by lin_cert using reduction10075.terms
def map_9_203 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10249 : InImage map_9_203 image10249 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10249 : Bundle := named_bundle% "RealMapCertificates/relations/basis10249.json"
theorem reductionProof10249 : EqualModuloRelations reduction10249.relations reduction10249.input reduction10249.output := by lin_cert using reduction10249.terms
theorem substitutionProof10249 : IsMapEvaluation generatorImages reduction10249.relations [1,95,324] reduction10249.output := by lin_cert using reduction10249.terms
def image10250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10250 : InImage map_9_203 image10250 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10250 : Bundle := named_bundle% "RealMapCertificates/relations/basis10250.json"
theorem reductionProof10250 : EqualModuloRelations reduction10250.relations reduction10250.input reduction10250.output := by lin_cert using reduction10250.terms
theorem substitutionProof10250 : IsMapEvaluation generatorImages reduction10250.relations [0,18,18,446] reduction10250.output := by lin_cert using reduction10250.terms
def map_9_204 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10456 : InImage map_9_204 image10456 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10456 : Bundle := named_bundle% "RealMapCertificates/relations/basis10456.json"
theorem reductionProof10456 : EqualModuloRelations reduction10456.relations reduction10456.input reduction10456.output := by lin_cert using reduction10456.terms
theorem substitutionProof10456 : IsMapEvaluation generatorImages reduction10456.relations [1283] reduction10456.output := by lin_cert using reduction10456.terms
def image10457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10457 : InImage map_9_204 image10457 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10457 : Bundle := named_bundle% "RealMapCertificates/relations/basis10457.json"
theorem reductionProof10457 : EqualModuloRelations reduction10457.relations reduction10457.input reduction10457.output := by lin_cert using reduction10457.terms
theorem substitutionProof10457 : IsMapEvaluation generatorImages reduction10457.relations [1282] reduction10457.output := by lin_cert using reduction10457.terms
def image10458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10458 : InImage map_9_204 image10458 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10458 : Bundle := named_bundle% "RealMapCertificates/relations/basis10458.json"
theorem reductionProof10458 : EqualModuloRelations reduction10458.relations reduction10458.input reduction10458.output := by lin_cert using reduction10458.terms
theorem substitutionProof10458 : IsMapEvaluation generatorImages reduction10458.relations [1281] reduction10458.output := by lin_cert using reduction10458.terms
def image10459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10459 : InImage map_9_204 image10459 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10459 : Bundle := named_bundle% "RealMapCertificates/relations/basis10459.json"
theorem reductionProof10459 : EqualModuloRelations reduction10459.relations reduction10459.input reduction10459.output := by lin_cert using reduction10459.terms
theorem substitutionProof10459 : IsMapEvaluation generatorImages reduction10459.relations [107,324] reduction10459.output := by lin_cert using reduction10459.terms
def image10460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10460 : InImage map_9_204 image10460 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10460 : Bundle := named_bundle% "RealMapCertificates/relations/basis10460.json"
theorem reductionProof10460 : EqualModuloRelations reduction10460.relations reduction10460.input reduction10460.output := by lin_cert using reduction10460.terms
theorem substitutionProof10460 : IsMapEvaluation generatorImages reduction10460.relations [1,18,18,446] reduction10460.output := by lin_cert using reduction10460.terms
def image10461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10461 : InImage map_9_204 image10461 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10461 : Bundle := named_bundle% "RealMapCertificates/relations/basis10461.json"
theorem reductionProof10461 : EqualModuloRelations reduction10461.relations reduction10461.input reduction10461.output := by lin_cert using reduction10461.terms
theorem substitutionProof10461 : IsMapEvaluation generatorImages reduction10461.relations [0,3,74,324] reduction10461.output := by lin_cert using reduction10461.terms
def map_9_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10597 : InImage map_9_205 image10597 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10597 : Bundle := named_bundle% "RealMapCertificates/relations/basis10597.json"
theorem reductionProof10597 : EqualModuloRelations reduction10597.relations reduction10597.input reduction10597.output := by lin_cert using reduction10597.terms
theorem substitutionProof10597 : IsMapEvaluation generatorImages reduction10597.relations [108,324] reduction10597.output := by lin_cert using reduction10597.terms
def image10598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10598 : InImage map_9_205 image10598 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10598 : Bundle := named_bundle% "RealMapCertificates/relations/basis10598.json"
theorem reductionProof10598 : EqualModuloRelations reduction10598.relations reduction10598.input reduction10598.output := by lin_cert using reduction10598.terms
theorem substitutionProof10598 : IsMapEvaluation generatorImages reduction10598.relations [2,95,324] reduction10598.output := by lin_cert using reduction10598.terms
def image10599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10599 : InImage map_9_205 image10599 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10599 : Bundle := named_bundle% "RealMapCertificates/relations/basis10599.json"
theorem reductionProof10599 : EqualModuloRelations reduction10599.relations reduction10599.input reduction10599.output := by lin_cert using reduction10599.terms
theorem substitutionProof10599 : IsMapEvaluation generatorImages reduction10599.relations [0,1284] reduction10599.output := by lin_cert using reduction10599.terms
def map_9_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10802 : InImage map_9_206 image10802 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10802 : Bundle := named_bundle% "RealMapCertificates/relations/basis10802.json"
theorem reductionProof10802 : EqualModuloRelations reduction10802.relations reduction10802.input reduction10802.output := by lin_cert using reduction10802.terms
theorem substitutionProof10802 : IsMapEvaluation generatorImages reduction10802.relations [5,1058] reduction10802.output := by lin_cert using reduction10802.terms
def image10803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10803 : InImage map_9_206 image10803 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10803 : Bundle := named_bundle% "RealMapCertificates/relations/basis10803.json"
theorem reductionProof10803 : EqualModuloRelations reduction10803.relations reduction10803.input reduction10803.output := by lin_cert using reduction10803.terms
theorem substitutionProof10803 : IsMapEvaluation generatorImages reduction10803.relations [3,84,324] reduction10803.output := by lin_cert using reduction10803.terms
def image10804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10804 : InImage map_9_206 image10804 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10804 : Bundle := named_bundle% "RealMapCertificates/relations/basis10804.json"
theorem reductionProof10804 : EqualModuloRelations reduction10804.relations reduction10804.input reduction10804.output := by lin_cert using reduction10804.terms
theorem substitutionProof10804 : IsMapEvaluation generatorImages reduction10804.relations [1,1284] reduction10804.output := by lin_cert using reduction10804.terms
def image10805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10805 : InImage map_9_206 image10805 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10805 : Bundle := named_bundle% "RealMapCertificates/relations/basis10805.json"
theorem reductionProof10805 : EqualModuloRelations reduction10805.relations reduction10805.input reduction10805.output := by lin_cert using reduction10805.terms
theorem substitutionProof10805 : IsMapEvaluation generatorImages reduction10805.relations [0,0,1286] reduction10805.output := by lin_cert using reduction10805.terms
def map_9_208 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11124 : InImage map_9_208 image11124 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11124 : Bundle := named_bundle% "RealMapCertificates/relations/basis11124.json"
theorem reductionProof11124 : EqualModuloRelations reduction11124.relations reduction11124.input reduction11124.output := by lin_cert using reduction11124.terms
theorem substitutionProof11124 : IsMapEvaluation generatorImages reduction11124.relations [7,67,324] reduction11124.output := by lin_cert using reduction11124.terms
def image11125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11125 : InImage map_9_208 image11125 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11125 : Bundle := named_bundle% "RealMapCertificates/relations/basis11125.json"
theorem reductionProof11125 : EqualModuloRelations reduction11125.relations reduction11125.input reduction11125.output := by lin_cert using reduction11125.terms
theorem substitutionProof11125 : IsMapEvaluation generatorImages reduction11125.relations [3,3,68,324] reduction11125.output := by lin_cert using reduction11125.terms
def image11126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11126 : InImage map_9_208 image11126 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11126 : Bundle := named_bundle% "RealMapCertificates/relations/basis11126.json"
theorem reductionProof11126 : EqualModuloRelations reduction11126.relations reduction11126.input reduction11126.output := by lin_cert using reduction11126.terms
theorem substitutionProof11126 : IsMapEvaluation generatorImages reduction11126.relations [2,1284] reduction11126.output := by lin_cert using reduction11126.terms
end RealMapCertificates
