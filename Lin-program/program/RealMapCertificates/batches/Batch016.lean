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
  | 7 => []
  | 18 => []
  | 68 => []
  | 92 => []
  | 95 => []
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
  | 222 => []
  | 230 => []
  | 240 => []
  | 264 => []
  | 324 => []
  | 352 => []
  | 367 => []
  | 376 => []
  | 378 => []
  | 1058 => []
  | 1237 => []
  | 1284 => []
  | 1286 => []
  | 1347 => []
  | 1348 => []
  | 1420 => []
  | 1421 => []
  | 1422 => []
  | 1424 => []
  | 1464 => []
  | 1465 => []
  | 1466 => []
  | 1497 => []
  | 1498 => []
  | 1531 => []
  | 1532 => []
  | 1565 => []
  | 1634 => []
  | 1677 => []
  | 1684 => []
  | 1711 => []
  | 1712 => []
  | 1713 => []
  | 1714 => []
  | 1809 => []
  | 1810 => []
  | 1811 => []
  | 1924 => []
  | 1958 => []
  | 1959 => []
  | 2033 => []
  | 2160 => []
  | 2188 => []
  | 2624 => []
  | 2625 => []
  | 2667 => []
  | 2668 => []
  | 2737 => []
  | 2787 => []
  | 2788 => []
  | 2850 => []
  | 2851 => []
  | 2852 => []
  | 2910 => []
  | _ => []
def map_9_209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11307 : InImage map_9_209 image11307 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11307 : Bundle := named_bundle% "RealMapCertificates/relations/basis11307.json"
theorem reductionProof11307 : EqualModuloRelations reduction11307.relations reduction11307.input reduction11307.output := by lin_cert using reduction11307.terms
theorem substitutionProof11307 : IsMapEvaluation generatorImages reduction11307.relations [0,1347] reduction11307.output := by lin_cert using reduction11307.terms
def image11308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11308 : InImage map_9_209 image11308 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11308 : Bundle := named_bundle% "RealMapCertificates/relations/basis11308.json"
theorem reductionProof11308 : EqualModuloRelations reduction11308.relations reduction11308.input reduction11308.output := by lin_cert using reduction11308.terms
theorem substitutionProof11308 : IsMapEvaluation generatorImages reduction11308.relations [0,7,68,324] reduction11308.output := by lin_cert using reduction11308.terms
def map_9_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11522 : InImage map_9_210 image11522 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11522 : Bundle := named_bundle% "RealMapCertificates/relations/basis11522.json"
theorem reductionProof11522 : EqualModuloRelations reduction11522.relations reduction11522.input reduction11522.output := by lin_cert using reduction11522.terms
theorem substitutionProof11522 : IsMapEvaluation generatorImages reduction11522.relations [120,324] reduction11522.output := by lin_cert using reduction11522.terms
def image11523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11523 : InImage map_9_210 image11523 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11523 : Bundle := named_bundle% "RealMapCertificates/relations/basis11523.json"
theorem reductionProof11523 : EqualModuloRelations reduction11523.relations reduction11523.input reduction11523.output := by lin_cert using reduction11523.terms
theorem substitutionProof11523 : IsMapEvaluation generatorImages reduction11523.relations [3,1237] reduction11523.output := by lin_cert using reduction11523.terms
def image11524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11524 : InImage map_9_210 image11524 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11524 : Bundle := named_bundle% "RealMapCertificates/relations/basis11524.json"
theorem reductionProof11524 : EqualModuloRelations reduction11524.relations reduction11524.input reduction11524.output := by lin_cert using reduction11524.terms
theorem substitutionProof11524 : IsMapEvaluation generatorImages reduction11524.relations [0,0,1348] reduction11524.output := by lin_cert using reduction11524.terms
def map_9_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11657 : InImage map_9_211 image11657 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11657 : Bundle := named_bundle% "RealMapCertificates/relations/basis11657.json"
theorem reductionProof11657 : EqualModuloRelations reduction11657.relations reduction11657.input reduction11657.output := by lin_cert using reduction11657.terms
theorem substitutionProof11657 : IsMapEvaluation generatorImages reduction11657.relations [4,92,324] reduction11657.output := by lin_cert using reduction11657.terms
def image11658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11658 : InImage map_9_211 image11658 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11658 : Bundle := named_bundle% "RealMapCertificates/relations/basis11658.json"
theorem reductionProof11658 : EqualModuloRelations reduction11658.relations reduction11658.input reduction11658.output := by lin_cert using reduction11658.terms
theorem substitutionProof11658 : IsMapEvaluation generatorImages reduction11658.relations [0,121,324] reduction11658.output := by lin_cert using reduction11658.terms
def map_9_212 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11870 : InImage map_9_212 image11870 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11870 : Bundle := named_bundle% "RealMapCertificates/relations/basis11870.json"
theorem reductionProof11870 : EqualModuloRelations reduction11870.relations reduction11870.input reduction11870.output := by lin_cert using reduction11870.terms
theorem substitutionProof11870 : IsMapEvaluation generatorImages reduction11870.relations [1421] reduction11870.output := by lin_cert using reduction11870.terms
def image11871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11871 : InImage map_9_212 image11871 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11871 : Bundle := named_bundle% "RealMapCertificates/relations/basis11871.json"
theorem reductionProof11871 : EqualModuloRelations reduction11871.relations reduction11871.input reduction11871.output := by lin_cert using reduction11871.terms
theorem substitutionProof11871 : IsMapEvaluation generatorImages reduction11871.relations [1420] reduction11871.output := by lin_cert using reduction11871.terms
def image11872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11872 : InImage map_9_212 image11872 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11872 : Bundle := named_bundle% "RealMapCertificates/relations/basis11872.json"
theorem reductionProof11872 : EqualModuloRelations reduction11872.relations reduction11872.input reduction11872.output := by lin_cert using reduction11872.terms
theorem substitutionProof11872 : IsMapEvaluation generatorImages reduction11872.relations [3,1284] reduction11872.output := by lin_cert using reduction11872.terms
def image11873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11873 : InImage map_9_212 image11873 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11873 : Bundle := named_bundle% "RealMapCertificates/relations/basis11873.json"
theorem reductionProof11873 : EqualModuloRelations reduction11873.relations reduction11873.input reduction11873.output := by lin_cert using reduction11873.terms
theorem substitutionProof11873 : IsMapEvaluation generatorImages reduction11873.relations [1,121,324] reduction11873.output := by lin_cert using reduction11873.terms
def image11874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11874 : InImage map_9_212 image11874 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11874 : Bundle := named_bundle% "RealMapCertificates/relations/basis11874.json"
theorem reductionProof11874 : EqualModuloRelations reduction11874.relations reduction11874.input reduction11874.output := by lin_cert using reduction11874.terms
theorem substitutionProof11874 : IsMapEvaluation generatorImages reduction11874.relations [1,1,1348] reduction11874.output := by lin_cert using reduction11874.terms
def image11875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11875 : InImage map_9_212 image11875 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11875 : Bundle := named_bundle% "RealMapCertificates/relations/basis11875.json"
theorem reductionProof11875 : EqualModuloRelations reduction11875.relations reduction11875.input reduction11875.output := by lin_cert using reduction11875.terms
theorem substitutionProof11875 : IsMapEvaluation generatorImages reduction11875.relations [0,0,122,324] reduction11875.output := by lin_cert using reduction11875.terms
def map_9_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12096 : InImage map_9_213 image12096 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12096 : Bundle := named_bundle% "RealMapCertificates/relations/basis12096.json"
theorem reductionProof12096 : EqualModuloRelations reduction12096.relations reduction12096.input reduction12096.output := by lin_cert using reduction12096.terms
theorem substitutionProof12096 : IsMapEvaluation generatorImages reduction12096.relations [134,324] reduction12096.output := by lin_cert using reduction12096.terms
def image12097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12097 : InImage map_9_213 image12097 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12097 : Bundle := named_bundle% "RealMapCertificates/relations/basis12097.json"
theorem reductionProof12097 : EqualModuloRelations reduction12097.relations reduction12097.input reduction12097.output := by lin_cert using reduction12097.terms
theorem substitutionProof12097 : IsMapEvaluation generatorImages reduction12097.relations [0,129,324] reduction12097.output := by lin_cert using reduction12097.terms
def image12098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12098 : InImage map_9_213 image12098 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12098 : Bundle := named_bundle% "RealMapCertificates/relations/basis12098.json"
theorem reductionProof12098 : EqualModuloRelations reduction12098.relations reduction12098.input reduction12098.output := by lin_cert using reduction12098.terms
theorem substitutionProof12098 : IsMapEvaluation generatorImages reduction12098.relations [0,128,324] reduction12098.output := by lin_cert using reduction12098.terms
def map_9_214 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12257 : InImage map_9_214 image12257 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12257 : Bundle := named_bundle% "RealMapCertificates/relations/basis12257.json"
theorem reductionProof12257 : EqualModuloRelations reduction12257.relations reduction12257.input reduction12257.output := by lin_cert using reduction12257.terms
theorem substitutionProof12257 : IsMapEvaluation generatorImages reduction12257.relations [1465] reduction12257.output := by lin_cert using reduction12257.terms
def image12258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12258 : InImage map_9_214 image12258 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12258 : Bundle := named_bundle% "RealMapCertificates/relations/basis12258.json"
theorem reductionProof12258 : EqualModuloRelations reduction12258.relations reduction12258.input reduction12258.output := by lin_cert using reduction12258.terms
theorem substitutionProof12258 : IsMapEvaluation generatorImages reduction12258.relations [1464] reduction12258.output := by lin_cert using reduction12258.terms
def image12259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12259 : InImage map_9_214 image12259 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12259 : Bundle := named_bundle% "RealMapCertificates/relations/basis12259.json"
theorem reductionProof12259 : EqualModuloRelations reduction12259.relations reduction12259.input reduction12259.output := by lin_cert using reduction12259.terms
theorem substitutionProof12259 : IsMapEvaluation generatorImages reduction12259.relations [1,1422] reduction12259.output := by lin_cert using reduction12259.terms
def image12260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12260 : InImage map_9_214 image12260 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12260 : Bundle := named_bundle% "RealMapCertificates/relations/basis12260.json"
theorem reductionProof12260 : EqualModuloRelations reduction12260.relations reduction12260.input reduction12260.output := by lin_cert using reduction12260.terms
theorem substitutionProof12260 : IsMapEvaluation generatorImages reduction12260.relations [1,1,122,324] reduction12260.output := by lin_cert using reduction12260.terms
def image12261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12261 : InImage map_9_214 image12261 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12261 : Bundle := named_bundle% "RealMapCertificates/relations/basis12261.json"
theorem reductionProof12261 : EqualModuloRelations reduction12261.relations reduction12261.input reduction12261.output := by lin_cert using reduction12261.terms
theorem substitutionProof12261 : IsMapEvaluation generatorImages reduction12261.relations [0,0,130,324] reduction12261.output := by lin_cert using reduction12261.terms
def map_9_215 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12450 : InImage map_9_215 image12450 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12450 : Bundle := named_bundle% "RealMapCertificates/relations/basis12450.json"
theorem reductionProof12450 : EqualModuloRelations reduction12450.relations reduction12450.input reduction12450.output := by lin_cert using reduction12450.terms
theorem substitutionProof12450 : IsMapEvaluation generatorImages reduction12450.relations [0,2,122,324] reduction12450.output := by lin_cert using reduction12450.terms
def map_9_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12666 : InImage map_9_216 image12666 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12666 : Bundle := named_bundle% "RealMapCertificates/relations/basis12666.json"
theorem reductionProof12666 : EqualModuloRelations reduction12666.relations reduction12666.input reduction12666.output := by lin_cert using reduction12666.terms
theorem substitutionProof12666 : IsMapEvaluation generatorImages reduction12666.relations [1497] reduction12666.output := by lin_cert using reduction12666.terms
def image12667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12667 : InImage map_9_216 image12667 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12667 : Bundle := named_bundle% "RealMapCertificates/relations/basis12667.json"
theorem reductionProof12667 : EqualModuloRelations reduction12667.relations reduction12667.input reduction12667.output := by lin_cert using reduction12667.terms
theorem substitutionProof12667 : IsMapEvaluation generatorImages reduction12667.relations [2,1422] reduction12667.output := by lin_cert using reduction12667.terms
def image12668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12668 : InImage map_9_216 image12668 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12668 : Bundle := named_bundle% "RealMapCertificates/relations/basis12668.json"
theorem reductionProof12668 : EqualModuloRelations reduction12668.relations reduction12668.input reduction12668.output := by lin_cert using reduction12668.terms
theorem substitutionProof12668 : IsMapEvaluation generatorImages reduction12668.relations [1,1466] reduction12668.output := by lin_cert using reduction12668.terms
def map_9_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12806 : InImage map_9_217 image12806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12806 : Bundle := named_bundle% "RealMapCertificates/relations/basis12806.json"
theorem reductionProof12806 : EqualModuloRelations reduction12806.relations reduction12806.input reduction12806.output := by lin_cert using reduction12806.terms
theorem substitutionProof12806 : IsMapEvaluation generatorImages reduction12806.relations [7,95,324] reduction12806.output := by lin_cert using reduction12806.terms
def image12807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12807 : InImage map_9_217 image12807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12807 : Bundle := named_bundle% "RealMapCertificates/relations/basis12807.json"
theorem reductionProof12807 : EqualModuloRelations reduction12807.relations reduction12807.input reduction12807.output := by lin_cert using reduction12807.terms
theorem substitutionProof12807 : IsMapEvaluation generatorImages reduction12807.relations [0,3,1348] reduction12807.output := by lin_cert using reduction12807.terms
def map_9_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13024 : InImage map_9_218 image13024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13024 : Bundle := named_bundle% "RealMapCertificates/relations/basis13024.json"
theorem reductionProof13024 : EqualModuloRelations reduction13024.relations reduction13024.input reduction13024.output := by lin_cert using reduction13024.terms
theorem substitutionProof13024 : IsMapEvaluation generatorImages reduction13024.relations [1531] reduction13024.output := by lin_cert using reduction13024.terms
def image13025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13025 : InImage map_9_218 image13025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13025 : Bundle := named_bundle% "RealMapCertificates/relations/basis13025.json"
theorem reductionProof13025 : EqualModuloRelations reduction13025.relations reduction13025.input reduction13025.output := by lin_cert using reduction13025.terms
theorem substitutionProof13025 : IsMapEvaluation generatorImages reduction13025.relations [7,1237] reduction13025.output := by lin_cert using reduction13025.terms
def image13026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13026 : InImage map_9_218 image13026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13026 : Bundle := named_bundle% "RealMapCertificates/relations/basis13026.json"
theorem reductionProof13026 : EqualModuloRelations reduction13026.relations reduction13026.input reduction13026.output := by lin_cert using reduction13026.terms
theorem substitutionProof13026 : IsMapEvaluation generatorImages reduction13026.relations [3,121,324] reduction13026.output := by lin_cert using reduction13026.terms
def image13027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13027 : InImage map_9_218 image13027 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13027 : Bundle := named_bundle% "RealMapCertificates/relations/basis13027.json"
theorem reductionProof13027 : EqualModuloRelations reduction13027.relations reduction13027.input reduction13027.output := by lin_cert using reduction13027.terms
theorem substitutionProof13027 : IsMapEvaluation generatorImages reduction13027.relations [0,0,7,92,324] reduction13027.output := by lin_cert using reduction13027.terms
def map_9_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13374 : InImage map_9_220 image13374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13374 : Bundle := named_bundle% "RealMapCertificates/relations/basis13374.json"
theorem reductionProof13374 : EqualModuloRelations reduction13374.relations reduction13374.input reduction13374.output := by lin_cert using reduction13374.terms
theorem substitutionProof13374 : IsMapEvaluation generatorImages reduction13374.relations [7,1284] reduction13374.output := by lin_cert using reduction13374.terms
def image13375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13375 : InImage map_9_220 image13375 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13375 : Bundle := named_bundle% "RealMapCertificates/relations/basis13375.json"
theorem reductionProof13375 : EqualModuloRelations reduction13375.relations reduction13375.input reduction13375.output := by lin_cert using reduction13375.terms
theorem substitutionProof13375 : IsMapEvaluation generatorImages reduction13375.relations [2,2,1424] reduction13375.output := by lin_cert using reduction13375.terms
def image13376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13376 : InImage map_9_220 image13376 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13376 : Bundle := named_bundle% "RealMapCertificates/relations/basis13376.json"
theorem reductionProof13376 : EqualModuloRelations reduction13376.relations reduction13376.input reduction13376.output := by lin_cert using reduction13376.terms
theorem substitutionProof13376 : IsMapEvaluation generatorImages reduction13376.relations [1,1532] reduction13376.output := by lin_cert using reduction13376.terms
def image13377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13377 : InImage map_9_220 image13377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13377 : Bundle := named_bundle% "RealMapCertificates/relations/basis13377.json"
theorem reductionProof13377 : EqualModuloRelations reduction13377.relations reduction13377.input reduction13377.output := by lin_cert using reduction13377.terms
theorem substitutionProof13377 : IsMapEvaluation generatorImages reduction13377.relations [0,0,0,0,142,324] reduction13377.output := by lin_cert using reduction13377.terms
def map_9_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13572 : InImage map_9_221 image13572 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13572 : Bundle := named_bundle% "RealMapCertificates/relations/basis13572.json"
theorem reductionProof13572 : EqualModuloRelations reduction13572.relations reduction13572.input reduction13572.output := by lin_cert using reduction13572.terms
theorem substitutionProof13572 : IsMapEvaluation generatorImages reduction13572.relations [0,7,1286] reduction13572.output := by lin_cert using reduction13572.terms
def image13573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13573 : InImage map_9_221 image13573 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13573 : Bundle := named_bundle% "RealMapCertificates/relations/basis13573.json"
theorem reductionProof13573 : EqualModuloRelations reduction13573.relations reduction13573.input reduction13573.output := by lin_cert using reduction13573.terms
theorem substitutionProof13573 : IsMapEvaluation generatorImages reduction13573.relations [0,2,1498] reduction13573.output := by lin_cert using reduction13573.terms
def image13574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13574 : InImage map_9_221 image13574 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13574 : Bundle := named_bundle% "RealMapCertificates/relations/basis13574.json"
theorem reductionProof13574 : EqualModuloRelations reduction13574.relations reduction13574.input reduction13574.output := by lin_cert using reduction13574.terms
theorem substitutionProof13574 : IsMapEvaluation generatorImages reduction13574.relations [0,0,0,0,0,143,324] reduction13574.output := by lin_cert using reduction13574.terms
def map_9_222 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13794 : InImage map_9_222 image13794 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13794 : Bundle := named_bundle% "RealMapCertificates/relations/basis13794.json"
theorem reductionProof13794 : EqualModuloRelations reduction13794.relations reduction13794.input reduction13794.output := by lin_cert using reduction13794.terms
theorem substitutionProof13794 : IsMapEvaluation generatorImages reduction13794.relations [0,0,1565] reduction13794.output := by lin_cert using reduction13794.terms
def map_9_224 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14143 : InImage map_9_224 image14143 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14143 : Bundle := named_bundle% "RealMapCertificates/relations/basis14143.json"
theorem reductionProof14143 : EqualModuloRelations reduction14143.relations reduction14143.input reduction14143.output := by lin_cert using reduction14143.terms
theorem substitutionProof14143 : IsMapEvaluation generatorImages reduction14143.relations [7,1347] reduction14143.output := by lin_cert using reduction14143.terms
def image14144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14144 : InImage map_9_224 image14144 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14144 : Bundle := named_bundle% "RealMapCertificates/relations/basis14144.json"
theorem reductionProof14144 : EqualModuloRelations reduction14144.relations reduction14144.input reduction14144.output := by lin_cert using reduction14144.terms
theorem substitutionProof14144 : IsMapEvaluation generatorImages reduction14144.relations [1,158,324] reduction14144.output := by lin_cert using reduction14144.terms
def map_9_225 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14345 : InImage map_9_225 image14345 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14345 : Bundle := named_bundle% "RealMapCertificates/relations/basis14345.json"
theorem reductionProof14345 : EqualModuloRelations reduction14345.relations reduction14345.input reduction14345.output := by lin_cert using reduction14345.terms
theorem substitutionProof14345 : IsMapEvaluation generatorImages reduction14345.relations [0,7,1348] reduction14345.output := by lin_cert using reduction14345.terms
def map_9_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14497 : InImage map_9_226 image14497 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14497 : Bundle := named_bundle% "RealMapCertificates/relations/basis14497.json"
theorem reductionProof14497 : EqualModuloRelations reduction14497.relations reduction14497.input reduction14497.output := by lin_cert using reduction14497.terms
theorem substitutionProof14497 : IsMapEvaluation generatorImages reduction14497.relations [1677] reduction14497.output := by lin_cert using reduction14497.terms
def image14498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14498 : InImage map_9_226 image14498 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14498 : Bundle := named_bundle% "RealMapCertificates/relations/basis14498.json"
theorem reductionProof14498 : EqualModuloRelations reduction14498.relations reduction14498.input reduction14498.output := by lin_cert using reduction14498.terms
theorem substitutionProof14498 : IsMapEvaluation generatorImages reduction14498.relations [0,0,1634] reduction14498.output := by lin_cert using reduction14498.terms
def map_9_227 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14704 : InImage map_9_227 image14704 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14704 : Bundle := named_bundle% "RealMapCertificates/relations/basis14704.json"
theorem reductionProof14704 : EqualModuloRelations reduction14704.relations reduction14704.input reduction14704.output := by lin_cert using reduction14704.terms
theorem substitutionProof14704 : IsMapEvaluation generatorImages reduction14704.relations [1684] reduction14704.output := by lin_cert using reduction14704.terms
def image14705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14705 : InImage map_9_227 image14705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14705 : Bundle := named_bundle% "RealMapCertificates/relations/basis14705.json"
theorem reductionProof14705 : EqualModuloRelations reduction14705.relations reduction14705.input reduction14705.output := by lin_cert using reduction14705.terms
theorem substitutionProof14705 : IsMapEvaluation generatorImages reduction14705.relations [174,324] reduction14705.output := by lin_cert using reduction14705.terms
def map_9_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14938 : InImage map_9_228 image14938 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14938 : Bundle := named_bundle% "RealMapCertificates/relations/basis14938.json"
theorem reductionProof14938 : EqualModuloRelations reduction14938.relations reduction14938.input reduction14938.output := by lin_cert using reduction14938.terms
theorem substitutionProof14938 : IsMapEvaluation generatorImages reduction14938.relations [1712] reduction14938.output := by lin_cert using reduction14938.terms
def image14939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14939 : InImage map_9_228 image14939 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14939 : Bundle := named_bundle% "RealMapCertificates/relations/basis14939.json"
theorem reductionProof14939 : EqualModuloRelations reduction14939.relations reduction14939.input reduction14939.output := by lin_cert using reduction14939.terms
theorem substitutionProof14939 : IsMapEvaluation generatorImages reduction14939.relations [1711] reduction14939.output := by lin_cert using reduction14939.terms
def image14940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14940 : InImage map_9_228 image14940 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14940 : Bundle := named_bundle% "RealMapCertificates/relations/basis14940.json"
theorem reductionProof14940 : EqualModuloRelations reduction14940.relations reduction14940.input reduction14940.output := by lin_cert using reduction14940.terms
theorem substitutionProof14940 : IsMapEvaluation generatorImages reduction14940.relations [7,1422] reduction14940.output := by lin_cert using reduction14940.terms
def image14941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14941 : InImage map_9_228 image14941 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14941 : Bundle := named_bundle% "RealMapCertificates/relations/basis14941.json"
theorem reductionProof14941 : EqualModuloRelations reduction14941.relations reduction14941.input reduction14941.output := by lin_cert using reduction14941.terms
theorem substitutionProof14941 : IsMapEvaluation generatorImages reduction14941.relations [0,0,0,0,18,1058] reduction14941.output := by lin_cert using reduction14941.terms
def map_9_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15085 : InImage map_9_229 image15085 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15085 : Bundle := named_bundle% "RealMapCertificates/relations/basis15085.json"
theorem reductionProof15085 : EqualModuloRelations reduction15085.relations reduction15085.input reduction15085.output := by lin_cert using reduction15085.terms
theorem substitutionProof15085 : IsMapEvaluation generatorImages reduction15085.relations [181,324] reduction15085.output := by lin_cert using reduction15085.terms
def image15086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15086 : InImage map_9_229 image15086 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15086 : Bundle := named_bundle% "RealMapCertificates/relations/basis15086.json"
theorem reductionProof15086 : EqualModuloRelations reduction15086.relations reduction15086.input reduction15086.output := by lin_cert using reduction15086.terms
theorem substitutionProof15086 : IsMapEvaluation generatorImages reduction15086.relations [163,378] reduction15086.output := by lin_cert using reduction15086.terms
def image15087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15087 : InImage map_9_229 image15087 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15087 : Bundle := named_bundle% "RealMapCertificates/relations/basis15087.json"
theorem reductionProof15087 : EqualModuloRelations reduction15087.relations reduction15087.input reduction15087.output := by lin_cert using reduction15087.terms
theorem substitutionProof15087 : IsMapEvaluation generatorImages reduction15087.relations [0,1713] reduction15087.output := by lin_cert using reduction15087.terms
def map_9_230 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15320 : InImage map_9_230 image15320 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15320 : Bundle := named_bundle% "RealMapCertificates/relations/basis15320.json"
theorem reductionProof15320 : EqualModuloRelations reduction15320.relations reduction15320.input reduction15320.output := by lin_cert using reduction15320.terms
theorem substitutionProof15320 : IsMapEvaluation generatorImages reduction15320.relations [190,324] reduction15320.output := by lin_cert using reduction15320.terms
def image15321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15321 : InImage map_9_230 image15321 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15321 : Bundle := named_bundle% "RealMapCertificates/relations/basis15321.json"
theorem reductionProof15321 : EqualModuloRelations reduction15321.relations reduction15321.input reduction15321.output := by lin_cert using reduction15321.terms
theorem substitutionProof15321 : IsMapEvaluation generatorImages reduction15321.relations [1,1713] reduction15321.output := by lin_cert using reduction15321.terms
def image15322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15322 : InImage map_9_230 image15322 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15322 : Bundle := named_bundle% "RealMapCertificates/relations/basis15322.json"
theorem reductionProof15322 : EqualModuloRelations reduction15322.relations reduction15322.input reduction15322.output := by lin_cert using reduction15322.terms
theorem substitutionProof15322 : IsMapEvaluation generatorImages reduction15322.relations [0,0,1714] reduction15322.output := by lin_cert using reduction15322.terms
def map_9_231 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15562 : InImage map_9_231 image15562 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15562 : Bundle := named_bundle% "RealMapCertificates/relations/basis15562.json"
theorem reductionProof15562 : EqualModuloRelations reduction15562.relations reduction15562.input reduction15562.output := by lin_cert using reduction15562.terms
theorem substitutionProof15562 : IsMapEvaluation generatorImages reduction15562.relations [0,191,324] reduction15562.output := by lin_cert using reduction15562.terms
def map_9_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15735 : InImage map_9_232 image15735 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15735 : Bundle := named_bundle% "RealMapCertificates/relations/basis15735.json"
theorem reductionProof15735 : EqualModuloRelations reduction15735.relations reduction15735.input reduction15735.output := by lin_cert using reduction15735.terms
theorem substitutionProof15735 : IsMapEvaluation generatorImages reduction15735.relations [1810] reduction15735.output := by lin_cert using reduction15735.terms
def image15736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15736 : InImage map_9_232 image15736 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15736 : Bundle := named_bundle% "RealMapCertificates/relations/basis15736.json"
theorem reductionProof15736 : EqualModuloRelations reduction15736.relations reduction15736.input reduction15736.output := by lin_cert using reduction15736.terms
theorem substitutionProof15736 : IsMapEvaluation generatorImages reduction15736.relations [1809] reduction15736.output := by lin_cert using reduction15736.terms
def image15737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15737 : InImage map_9_232 image15737 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15737 : Bundle := named_bundle% "RealMapCertificates/relations/basis15737.json"
theorem reductionProof15737 : EqualModuloRelations reduction15737.relations reduction15737.input reduction15737.output := by lin_cert using reduction15737.terms
theorem substitutionProof15737 : IsMapEvaluation generatorImages reduction15737.relations [197,324] reduction15737.output := by lin_cert using reduction15737.terms
def map_9_233 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15967 : InImage map_9_233 image15967 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15967 : Bundle := named_bundle% "RealMapCertificates/relations/basis15967.json"
theorem reductionProof15967 : EqualModuloRelations reduction15967.relations reduction15967.input reduction15967.output := by lin_cert using reduction15967.terms
theorem substitutionProof15967 : IsMapEvaluation generatorImages reduction15967.relations [0,198,324] reduction15967.output := by lin_cert using reduction15967.terms
def map_9_234 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16225 : InImage map_9_234 image16225 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16225 : Bundle := named_bundle% "RealMapCertificates/relations/basis16225.json"
theorem reductionProof16225 : EqualModuloRelations reduction16225.relations reduction16225.input reduction16225.output := by lin_cert using reduction16225.terms
theorem substitutionProof16225 : IsMapEvaluation generatorImages reduction16225.relations [7,1532] reduction16225.output := by lin_cert using reduction16225.terms
def image16226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16226 : InImage map_9_234 image16226 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16226 : Bundle := named_bundle% "RealMapCertificates/relations/basis16226.json"
theorem reductionProof16226 : EqualModuloRelations reduction16226.relations reduction16226.input reduction16226.output := by lin_cert using reduction16226.terms
theorem substitutionProof16226 : IsMapEvaluation generatorImages reduction16226.relations [2,191,324] reduction16226.output := by lin_cert using reduction16226.terms
def map_9_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16405 : InImage map_9_235 image16405 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16405 : Bundle := named_bundle% "RealMapCertificates/relations/basis16405.json"
theorem reductionProof16405 : EqualModuloRelations reduction16405.relations reduction16405.input reduction16405.output := by lin_cert using reduction16405.terms
theorem substitutionProof16405 : IsMapEvaluation generatorImages reduction16405.relations [0,203,324] reduction16405.output := by lin_cert using reduction16405.terms
def map_9_236 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16634 : InImage map_9_236 image16634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16634 : Bundle := named_bundle% "RealMapCertificates/relations/basis16634.json"
theorem reductionProof16634 : EqualModuloRelations reduction16634.relations reduction16634.input reduction16634.output := by lin_cert using reduction16634.terms
theorem substitutionProof16634 : IsMapEvaluation generatorImages reduction16634.relations [7,7,1286] reduction16634.output := by lin_cert using reduction16634.terms
def image16635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16635 : InImage map_9_236 image16635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16635 : Bundle := named_bundle% "RealMapCertificates/relations/basis16635.json"
theorem reductionProof16635 : EqualModuloRelations reduction16635.relations reduction16635.input reduction16635.output := by lin_cert using reduction16635.terms
theorem substitutionProof16635 : IsMapEvaluation generatorImages reduction16635.relations [2,198,324] reduction16635.output := by lin_cert using reduction16635.terms
def image16636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16636 : InImage map_9_236 image16636 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16636 : Bundle := named_bundle% "RealMapCertificates/relations/basis16636.json"
theorem reductionProof16636 : EqualModuloRelations reduction16636.relations reduction16636.input reduction16636.output := by lin_cert using reduction16636.terms
theorem substitutionProof16636 : IsMapEvaluation generatorImages reduction16636.relations [1,203,324] reduction16636.output := by lin_cert using reduction16636.terms
def map_9_237 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16886 : InImage map_9_237 image16886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16886 : Bundle := named_bundle% "RealMapCertificates/relations/basis16886.json"
theorem reductionProof16886 : EqualModuloRelations reduction16886.relations reduction16886.input reduction16886.output := by lin_cert using reduction16886.terms
theorem substitutionProof16886 : IsMapEvaluation generatorImages reduction16886.relations [1924] reduction16886.output := by lin_cert using reduction16886.terms
def image16887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16887 : InImage map_9_237 image16887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16887 : Bundle := named_bundle% "RealMapCertificates/relations/basis16887.json"
theorem reductionProof16887 : EqualModuloRelations reduction16887.relations reduction16887.input reduction16887.output := by lin_cert using reduction16887.terms
theorem substitutionProof16887 : IsMapEvaluation generatorImages reduction16887.relations [216,324] reduction16887.output := by lin_cert using reduction16887.terms
def map_9_238 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17088 : InImage map_9_238 image17088 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17088 : Bundle := named_bundle% "RealMapCertificates/relations/basis17088.json"
theorem reductionProof17088 : EqualModuloRelations reduction17088.relations reduction17088.input reduction17088.output := by lin_cert using reduction17088.terms
theorem substitutionProof17088 : IsMapEvaluation generatorImages reduction17088.relations [1958] reduction17088.output := by lin_cert using reduction17088.terms
def image17089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17089 : InImage map_9_238 image17089 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17089 : Bundle := named_bundle% "RealMapCertificates/relations/basis17089.json"
theorem reductionProof17089 : EqualModuloRelations reduction17089.relations reduction17089.input reduction17089.output := by lin_cert using reduction17089.terms
theorem substitutionProof17089 : IsMapEvaluation generatorImages reduction17089.relations [3,191,324] reduction17089.output := by lin_cert using reduction17089.terms
def image17090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17090 : InImage map_9_238 image17090 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17090 : Bundle := named_bundle% "RealMapCertificates/relations/basis17090.json"
theorem reductionProof17090 : EqualModuloRelations reduction17090.relations reduction17090.input reduction17090.output := by lin_cert using reduction17090.terms
theorem substitutionProof17090 : IsMapEvaluation generatorImages reduction17090.relations [1,214,324] reduction17090.output := by lin_cert using reduction17090.terms
def map_9_239 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17336 : InImage map_9_239 image17336 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17336 : Bundle := named_bundle% "RealMapCertificates/relations/basis17336.json"
theorem reductionProof17336 : EqualModuloRelations reduction17336.relations reduction17336.input reduction17336.output := by lin_cert using reduction17336.terms
theorem substitutionProof17336 : IsMapEvaluation generatorImages reduction17336.relations [0,1959] reduction17336.output := by lin_cert using reduction17336.terms
def map_9_240 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17645 : InImage map_9_240 image17645 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17645 : Bundle := named_bundle% "RealMapCertificates/relations/basis17645.json"
theorem reductionProof17645 : EqualModuloRelations reduction17645.relations reduction17645.input reduction17645.output := by lin_cert using reduction17645.terms
theorem substitutionProof17645 : IsMapEvaluation generatorImages reduction17645.relations [2033] reduction17645.output := by lin_cert using reduction17645.terms
def image17646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17646 : InImage map_9_240 image17646 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17646 : Bundle := named_bundle% "RealMapCertificates/relations/basis17646.json"
theorem reductionProof17646 : EqualModuloRelations reduction17646.relations reduction17646.input reduction17646.output := by lin_cert using reduction17646.terms
theorem substitutionProof17646 : IsMapEvaluation generatorImages reduction17646.relations [7,7,1348] reduction17646.output := by lin_cert using reduction17646.terms
def image17647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17647 : InImage map_9_240 image17647 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17647 : Bundle := named_bundle% "RealMapCertificates/relations/basis17647.json"
theorem reductionProof17647 : EqualModuloRelations reduction17647.relations reduction17647.input reduction17647.output := by lin_cert using reduction17647.terms
theorem substitutionProof17647 : IsMapEvaluation generatorImages reduction17647.relations [3,1811] reduction17647.output := by lin_cert using reduction17647.terms
def image17648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17648 : InImage map_9_240 image17648 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17648 : Bundle := named_bundle% "RealMapCertificates/relations/basis17648.json"
theorem reductionProof17648 : EqualModuloRelations reduction17648.relations reduction17648.input reduction17648.output := by lin_cert using reduction17648.terms
theorem substitutionProof17648 : IsMapEvaluation generatorImages reduction17648.relations [3,198,324] reduction17648.output := by lin_cert using reduction17648.terms
def map_9_241 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17851 : InImage map_9_241 image17851 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17851 : Bundle := named_bundle% "RealMapCertificates/relations/basis17851.json"
theorem reductionProof17851 : EqualModuloRelations reduction17851.relations reduction17851.input reduction17851.output := by lin_cert using reduction17851.terms
theorem substitutionProof17851 : IsMapEvaluation generatorImages reduction17851.relations [0,230,324] reduction17851.output := by lin_cert using reduction17851.terms
def image17852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17852 : InImage map_9_241 image17852 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17852 : Bundle := named_bundle% "RealMapCertificates/relations/basis17852.json"
theorem reductionProof17852 : EqualModuloRelations reduction17852.relations reduction17852.input reduction17852.output := by lin_cert using reduction17852.terms
theorem substitutionProof17852 : IsMapEvaluation generatorImages reduction17852.relations [0,7,1634] reduction17852.output := by lin_cert using reduction17852.terms
def map_9_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18112 : InImage map_9_242 image18112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18112 : Bundle := named_bundle% "RealMapCertificates/relations/basis18112.json"
theorem reductionProof18112 : EqualModuloRelations reduction18112.relations reduction18112.input reduction18112.output := by lin_cert using reduction18112.terms
theorem substitutionProof18112 : IsMapEvaluation generatorImages reduction18112.relations [3,203,324] reduction18112.output := by lin_cert using reduction18112.terms
def map_9_243 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18385 : InImage map_9_243 image18385 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18385 : Bundle := named_bundle% "RealMapCertificates/relations/basis18385.json"
theorem reductionProof18385 : EqualModuloRelations reduction18385.relations reduction18385.input reduction18385.output := by lin_cert using reduction18385.terms
theorem substitutionProof18385 : IsMapEvaluation generatorImages reduction18385.relations [0,240,324] reduction18385.output := by lin_cert using reduction18385.terms
def map_9_244 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18597 : InImage map_9_244 image18597 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18597 : Bundle := named_bundle% "RealMapCertificates/relations/basis18597.json"
theorem reductionProof18597 : EqualModuloRelations reduction18597.relations reduction18597.input reduction18597.output := by lin_cert using reduction18597.terms
theorem substitutionProof18597 : IsMapEvaluation generatorImages reduction18597.relations [2160] reduction18597.output := by lin_cert using reduction18597.terms
def map_9_245 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18857 : InImage map_9_245 image18857 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18857 : Bundle := named_bundle% "RealMapCertificates/relations/basis18857.json"
theorem reductionProof18857 : EqualModuloRelations reduction18857.relations reduction18857.input reduction18857.output := by lin_cert using reduction18857.terms
theorem substitutionProof18857 : IsMapEvaluation generatorImages reduction18857.relations [2188] reduction18857.output := by lin_cert using reduction18857.terms
def map_9_246 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19176 : InImage map_9_246 image19176 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19176 : Bundle := named_bundle% "RealMapCertificates/relations/basis19176.json"
theorem reductionProof19176 : EqualModuloRelations reduction19176.relations reduction19176.input reduction19176.output := by lin_cert using reduction19176.terms
theorem substitutionProof19176 : IsMapEvaluation generatorImages reduction19176.relations [3,1959] reduction19176.output := by lin_cert using reduction19176.terms
def image19177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19177 : InImage map_9_246 image19177 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19177 : Bundle := named_bundle% "RealMapCertificates/relations/basis19177.json"
theorem reductionProof19177 : EqualModuloRelations reduction19177.relations reduction19177.input reduction19177.output := by lin_cert using reduction19177.terms
theorem substitutionProof19177 : IsMapEvaluation generatorImages reduction19177.relations [3,222,324] reduction19177.output := by lin_cert using reduction19177.terms
def map_9_248 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19672 : InImage map_9_248 image19672 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19672 : Bundle := named_bundle% "RealMapCertificates/relations/basis19672.json"
theorem reductionProof19672 : EqualModuloRelations reduction19672.relations reduction19672.input reduction19672.output := by lin_cert using reduction19672.terms
theorem substitutionProof19672 : IsMapEvaluation generatorImages reduction19672.relations [3,230,324] reduction19672.output := by lin_cert using reduction19672.terms
def image19673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19673 : InImage map_9_248 image19673 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19673 : Bundle := named_bundle% "RealMapCertificates/relations/basis19673.json"
theorem reductionProof19673 : EqualModuloRelations reduction19673.relations reduction19673.input reduction19673.output := by lin_cert using reduction19673.terms
theorem substitutionProof19673 : IsMapEvaluation generatorImages reduction19673.relations [0,264,324] reduction19673.output := by lin_cert using reduction19673.terms
def map_9_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20468 : InImage map_9_251 image20468 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20468 : Bundle := named_bundle% "RealMapCertificates/relations/basis20468.json"
theorem reductionProof20468 : EqualModuloRelations reduction20468.relations reduction20468.input reduction20468.output := by lin_cert using reduction20468.terms
theorem substitutionProof20468 : IsMapEvaluation generatorImages reduction20468.relations [2,264,324] reduction20468.output := by lin_cert using reduction20468.terms
def map_9_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21960 : InImage map_9_256 image21960 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21960 : Bundle := named_bundle% "RealMapCertificates/relations/basis21960.json"
theorem reductionProof21960 : EqualModuloRelations reduction21960.relations reduction21960.input reduction21960.output := by lin_cert using reduction21960.terms
theorem substitutionProof21960 : IsMapEvaluation generatorImages reduction21960.relations [2624] reduction21960.output := by lin_cert using reduction21960.terms
def map_9_257 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22292 : InImage map_9_257 image22292 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22292 : Bundle := named_bundle% "RealMapCertificates/relations/basis22292.json"
theorem reductionProof22292 : EqualModuloRelations reduction22292.relations reduction22292.input reduction22292.output := by lin_cert using reduction22292.terms
theorem substitutionProof22292 : IsMapEvaluation generatorImages reduction22292.relations [2667] reduction22292.output := by lin_cert using reduction22292.terms
def image22293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22293 : InImage map_9_257 image22293 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22293 : Bundle := named_bundle% "RealMapCertificates/relations/basis22293.json"
theorem reductionProof22293 : EqualModuloRelations reduction22293.relations reduction22293.input reduction22293.output := by lin_cert using reduction22293.terms
theorem substitutionProof22293 : IsMapEvaluation generatorImages reduction22293.relations [0,2625] reduction22293.output := by lin_cert using reduction22293.terms
def map_9_258 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22673 : InImage map_9_258 image22673 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22673 : Bundle := named_bundle% "RealMapCertificates/relations/basis22673.json"
theorem reductionProof22673 : EqualModuloRelations reduction22673.relations reduction22673.input reduction22673.output := by lin_cert using reduction22673.terms
theorem substitutionProof22673 : IsMapEvaluation generatorImages reduction22673.relations [0,2668] reduction22673.output := by lin_cert using reduction22673.terms
def map_9_259 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22983 : InImage map_9_259 image22983 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22983 : Bundle := named_bundle% "RealMapCertificates/relations/basis22983.json"
theorem reductionProof22983 : EqualModuloRelations reduction22983.relations reduction22983.input reduction22983.output := by lin_cert using reduction22983.terms
theorem substitutionProof22983 : IsMapEvaluation generatorImages reduction22983.relations [324,352] reduction22983.output := by lin_cert using reduction22983.terms
def map_9_260 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23384 : InImage map_9_260 image23384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23384 : Bundle := named_bundle% "RealMapCertificates/relations/basis23384.json"
theorem reductionProof23384 : EqualModuloRelations reduction23384.relations reduction23384.input reduction23384.output := by lin_cert using reduction23384.terms
theorem substitutionProof23384 : IsMapEvaluation generatorImages reduction23384.relations [2850] reduction23384.output := by lin_cert using reduction23384.terms
def image23385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23385 : InImage map_9_260 image23385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23385 : Bundle := named_bundle% "RealMapCertificates/relations/basis23385.json"
theorem reductionProof23385 : EqualModuloRelations reduction23385.relations reduction23385.input reduction23385.output := by lin_cert using reduction23385.terms
theorem substitutionProof23385 : IsMapEvaluation generatorImages reduction23385.relations [324,367] reduction23385.output := by lin_cert using reduction23385.terms
def image23386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23386 : InImage map_9_260 image23386 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23386 : Bundle := named_bundle% "RealMapCertificates/relations/basis23386.json"
theorem reductionProof23386 : EqualModuloRelations reduction23386.relations reduction23386.input reduction23386.output := by lin_cert using reduction23386.terms
theorem substitutionProof23386 : IsMapEvaluation generatorImages reduction23386.relations [2,2625] reduction23386.output := by lin_cert using reduction23386.terms
def image23387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23387 : InImage map_9_260 image23387 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23387 : Bundle := named_bundle% "RealMapCertificates/relations/basis23387.json"
theorem reductionProof23387 : EqualModuloRelations reduction23387.relations reduction23387.input reduction23387.output := by lin_cert using reduction23387.terms
theorem substitutionProof23387 : IsMapEvaluation generatorImages reduction23387.relations [0,2787] reduction23387.output := by lin_cert using reduction23387.terms
def image23388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23388 : InImage map_9_260 image23388 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23388 : Bundle := named_bundle% "RealMapCertificates/relations/basis23388.json"
theorem reductionProof23388 : EqualModuloRelations reduction23388.relations reduction23388.input reduction23388.output := by lin_cert using reduction23388.terms
theorem substitutionProof23388 : IsMapEvaluation generatorImages reduction23388.relations [0,0,2737] reduction23388.output := by lin_cert using reduction23388.terms
def map_9_261 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23806 : InImage map_9_261 image23806 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23806 : Bundle := named_bundle% "RealMapCertificates/relations/basis23806.json"
theorem reductionProof23806 : EqualModuloRelations reduction23806.relations reduction23806.input reduction23806.output := by lin_cert using reduction23806.terms
theorem substitutionProof23806 : IsMapEvaluation generatorImages reduction23806.relations [2910] reduction23806.output := by lin_cert using reduction23806.terms
def image23807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23807 : InImage map_9_261 image23807 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23807 : Bundle := named_bundle% "RealMapCertificates/relations/basis23807.json"
theorem reductionProof23807 : EqualModuloRelations reduction23807.relations reduction23807.input reduction23807.output := by lin_cert using reduction23807.terms
theorem substitutionProof23807 : IsMapEvaluation generatorImages reduction23807.relations [324,376] reduction23807.output := by lin_cert using reduction23807.terms
def image23808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23808 : InImage map_9_261 image23808 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23808 : Bundle := named_bundle% "RealMapCertificates/relations/basis23808.json"
theorem reductionProof23808 : EqualModuloRelations reduction23808.relations reduction23808.input reduction23808.output := by lin_cert using reduction23808.terms
theorem substitutionProof23808 : IsMapEvaluation generatorImages reduction23808.relations [0,2852] reduction23808.output := by lin_cert using reduction23808.terms
def image23809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23809 : InImage map_9_261 image23809 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23809 : Bundle := named_bundle% "RealMapCertificates/relations/basis23809.json"
theorem reductionProof23809 : EqualModuloRelations reduction23809.relations reduction23809.input reduction23809.output := by lin_cert using reduction23809.terms
theorem substitutionProof23809 : IsMapEvaluation generatorImages reduction23809.relations [0,2851] reduction23809.output := by lin_cert using reduction23809.terms
def image23810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23810 : InImage map_9_261 image23810 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23810 : Bundle := named_bundle% "RealMapCertificates/relations/basis23810.json"
theorem reductionProof23810 : EqualModuloRelations reduction23810.relations reduction23810.input reduction23810.output := by lin_cert using reduction23810.terms
theorem substitutionProof23810 : IsMapEvaluation generatorImages reduction23810.relations [0,0,2788] reduction23810.output := by lin_cert using reduction23810.terms
end RealMapCertificates
