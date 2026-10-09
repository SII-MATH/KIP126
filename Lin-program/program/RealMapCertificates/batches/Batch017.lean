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
  | 8 => [[6]]
  | 9 => [[8]]
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
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 33 => []
  | 34 => []
  | 36 => []
  | 42 => [[5,5,7]]
  | 43 => []
  | 45 => [[5,5,8]]
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 81 => []
  | 89 => []
  | 90 => []
  | 98 => []
  | 101 => []
  | 103 => []
  | 104 => []
  | 105 => []
  | 106 => []
  | 107 => []
  | 115 => []
  | 120 => []
  | 128 => []
  | 133 => []
  | 139 => []
  | 141 => []
  | 157 => []
  | 164 => []
  | 174 => []
  | 179 => []
  | 181 => []
  | 189 => []
  | 190 => []
  | 192 => []
  | 196 => []
  | 197 => []
  | 202 => []
  | 203 => []
  | 209 => []
  | 213 => []
  | 216 => []
  | 221 => []
  | 235 => []
  | 239 => []
  | 251 => []
  | _ => []
def map_10_10 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18 : InImage map_10_10 image18 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18 : Bundle := named_bundle% "RealMapCertificates/relations/basis18.json"
theorem reductionProof18 : EqualModuloRelations reduction18.relations reduction18.input reduction18.output := by lin_cert using reduction18.terms
theorem substitutionProof18 : IsMapEvaluation generatorImages reduction18.relations [0,0,0,0,0,0,0,0,0,0] reduction18.output := by lin_cert using reduction18.terms
def map_10_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image85 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation85 : InImage map_10_28 image85 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction85 : Bundle := named_bundle% "RealMapCertificates/relations/basis85.json"
theorem reductionProof85 : EqualModuloRelations reduction85.relations reduction85.input reduction85.output := by lin_cert using reduction85.terms
theorem substitutionProof85 : IsMapEvaluation generatorImages reduction85.relations [1,14] reduction85.output := by lin_cert using reduction85.terms
def map_10_29 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image89 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation89 : InImage map_10_29 image89 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction89 : Bundle := named_bundle% "RealMapCertificates/relations/basis89.json"
theorem reductionProof89 : EqualModuloRelations reduction89.relations reduction89.input reduction89.output := by lin_cert using reduction89.terms
theorem substitutionProof89 : IsMapEvaluation generatorImages reduction89.relations [0,15] reduction89.output := by lin_cert using reduction89.terms
def map_10_32 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image100 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation100 : InImage map_10_32 image100 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction100 : Bundle := named_bundle% "RealMapCertificates/relations/basis100.json"
theorem reductionProof100 : EqualModuloRelations reduction100.relations reduction100.input reduction100.output := by lin_cert using reduction100.terms
theorem substitutionProof100 : IsMapEvaluation generatorImages reduction100.relations [0,0,16] reduction100.output := by lin_cert using reduction100.terms
def map_10_33 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation107 : InImage map_10_33 image107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction107 : Bundle := named_bundle% "RealMapCertificates/relations/basis107.json"
theorem reductionProof107 : EqualModuloRelations reduction107.relations reduction107.input reduction107.output := by lin_cert using reduction107.terms
theorem substitutionProof107 : IsMapEvaluation generatorImages reduction107.relations [0,0,0,17] reduction107.output := by lin_cert using reduction107.terms
def map_10_34 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image114 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation114 : InImage map_10_34 image114 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction114 : Bundle := named_bundle% "RealMapCertificates/relations/basis114.json"
theorem reductionProof114 : EqualModuloRelations reduction114.relations reduction114.input reduction114.output := by lin_cert using reduction114.terms
theorem substitutionProof114 : IsMapEvaluation generatorImages reduction114.relations [1,1,16] reduction114.output := by lin_cert using reduction114.terms
def map_10_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image124 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation124 : InImage map_10_35 image124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction124 : Bundle := named_bundle% "RealMapCertificates/relations/basis124.json"
theorem reductionProof124 : EqualModuloRelations reduction124.relations reduction124.input reduction124.output := by lin_cert using reduction124.terms
theorem substitutionProof124 : IsMapEvaluation generatorImages reduction124.relations [0,0,19] reduction124.output := by lin_cert using reduction124.terms
def map_10_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image148 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation148 : InImage map_10_38 image148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction148 : Bundle := named_bundle% "RealMapCertificates/relations/basis148.json"
theorem reductionProof148 : EqualModuloRelations reduction148.relations reduction148.input reduction148.output := by lin_cert using reduction148.terms
theorem substitutionProof148 : IsMapEvaluation generatorImages reduction148.relations [0,0,8,8] reduction148.output := by lin_cert using reduction148.terms
def map_10_40 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation163 : InImage map_10_40 image163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction163 : Bundle := named_bundle% "RealMapCertificates/relations/basis163.json"
theorem reductionProof163 : EqualModuloRelations reduction163.relations reduction163.input reduction163.output := by lin_cert using reduction163.terms
theorem substitutionProof163 : IsMapEvaluation generatorImages reduction163.relations [0,0,0,0,23] reduction163.output := by lin_cert using reduction163.terms
def map_10_41 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation175 : InImage map_10_41 image175 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction175 : Bundle := named_bundle% "RealMapCertificates/relations/basis175.json"
theorem reductionProof175 : EqualModuloRelations reduction175.relations reduction175.input reduction175.output := by lin_cert using reduction175.terms
theorem substitutionProof175 : IsMapEvaluation generatorImages reduction175.relations [0,0,8,9] reduction175.output := by lin_cert using reduction175.terms
def image176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation176 : InImage map_10_41 image176 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction176 : Bundle := named_bundle% "RealMapCertificates/relations/basis176.json"
theorem reductionProof176 : EqualModuloRelations reduction176.relations reduction176.input reduction176.output := by lin_cert using reduction176.terms
theorem substitutionProof176 : IsMapEvaluation generatorImages reduction176.relations [0,0,0,0,0,0,0,0,0,18] reduction176.output := by lin_cert using reduction176.terms
def map_10_44 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image202 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation202 : InImage map_10_44 image202 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction202 : Bundle := named_bundle% "RealMapCertificates/relations/basis202.json"
theorem reductionProof202 : EqualModuloRelations reduction202.relations reduction202.input reduction202.output := by lin_cert using reduction202.terms
theorem substitutionProof202 : IsMapEvaluation generatorImages reduction202.relations [0,0,8,13] reduction202.output := by lin_cert using reduction202.terms
def map_10_47 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation238 : InImage map_10_47 image238 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction238 : Bundle := named_bundle% "RealMapCertificates/relations/basis238.json"
theorem reductionProof238 : EqualModuloRelations reduction238.relations reduction238.input reduction238.output := by lin_cert using reduction238.terms
theorem substitutionProof238 : IsMapEvaluation generatorImages reduction238.relations [0,0,0,0,0,34] reduction238.output := by lin_cert using reduction238.terms
def map_10_50 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation261 : InImage map_10_50 image261 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction261 : Bundle := named_bundle% "RealMapCertificates/relations/basis261.json"
theorem reductionProof261 : EqualModuloRelations reduction261.relations reduction261.input reduction261.output := by lin_cert using reduction261.terms
theorem substitutionProof261 : IsMapEvaluation generatorImages reduction261.relations [1,42] reduction261.output := by lin_cert using reduction261.terms
def map_10_51 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image269 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation269 : InImage map_10_51 image269 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction269 : Bundle := named_bundle% "RealMapCertificates/relations/basis269.json"
theorem reductionProof269 : EqualModuloRelations reduction269.relations reduction269.input reduction269.output := by lin_cert using reduction269.terms
theorem substitutionProof269 : IsMapEvaluation generatorImages reduction269.relations [45] reduction269.output := by lin_cert using reduction269.terms
def map_10_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image295 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation295 : InImage map_10_54 image295 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction295 : Bundle := named_bundle% "RealMapCertificates/relations/basis295.json"
theorem reductionProof295 : EqualModuloRelations reduction295.relations reduction295.input reduction295.output := by lin_cert using reduction295.terms
theorem substitutionProof295 : IsMapEvaluation generatorImages reduction295.relations [8,23] reduction295.output := by lin_cert using reduction295.terms
def map_10_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image327 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation327 : InImage map_10_57 image327 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction327 : Bundle := named_bundle% "RealMapCertificates/relations/basis327.json"
theorem reductionProof327 : EqualModuloRelations reduction327.relations reduction327.input reduction327.output := by lin_cert using reduction327.terms
theorem substitutionProof327 : IsMapEvaluation generatorImages reduction327.relations [9,23] reduction327.output := by lin_cert using reduction327.terms
def map_10_60 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image355 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation355 : InImage map_10_60 image355 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction355 : Bundle := named_bundle% "RealMapCertificates/relations/basis355.json"
theorem reductionProof355 : EqualModuloRelations reduction355.relations reduction355.input reduction355.output := by lin_cert using reduction355.terms
theorem substitutionProof355 : IsMapEvaluation generatorImages reduction355.relations [13,23] reduction355.output := by lin_cert using reduction355.terms
def map_10_63 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation385 : InImage map_10_63 image385 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction385 : Bundle := named_bundle% "RealMapCertificates/relations/basis385.json"
theorem reductionProof385 : EqualModuloRelations reduction385.relations reduction385.input reduction385.output := by lin_cert using reduction385.terms
theorem substitutionProof385 : IsMapEvaluation generatorImages reduction385.relations [64] reduction385.output := by lin_cert using reduction385.terms
def map_10_64 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image396 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation396 : InImage map_10_64 image396 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction396 : Bundle := named_bundle% "RealMapCertificates/relations/basis396.json"
theorem reductionProof396 : EqualModuloRelations reduction396.relations reduction396.input reduction396.output := by lin_cert using reduction396.terms
theorem substitutionProof396 : IsMapEvaluation generatorImages reduction396.relations [66] reduction396.output := by lin_cert using reduction396.terms
def image397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation397 : InImage map_10_64 image397 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction397 : Bundle := named_bundle% "RealMapCertificates/relations/basis397.json"
theorem reductionProof397 : EqualModuloRelations reduction397.relations reduction397.input reduction397.output := by lin_cert using reduction397.terms
theorem substitutionProof397 : IsMapEvaluation generatorImages reduction397.relations [0,0,17,18] reduction397.output := by lin_cert using reduction397.terms
def map_10_66 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation430 : InImage map_10_66 image430 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction430 : Bundle := named_bundle% "RealMapCertificates/relations/basis430.json"
theorem reductionProof430 : EqualModuloRelations reduction430.relations reduction430.input reduction430.output := by lin_cert using reduction430.terms
theorem substitutionProof430 : IsMapEvaluation generatorImages reduction430.relations [72] reduction430.output := by lin_cert using reduction430.terms
def image431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation431 : InImage map_10_66 image431 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction431 : Bundle := named_bundle% "RealMapCertificates/relations/basis431.json"
theorem reductionProof431 : EqualModuloRelations reduction431.relations reduction431.input reduction431.output := by lin_cert using reduction431.terms
theorem substitutionProof431 : IsMapEvaluation generatorImages reduction431.relations [13,33] reduction431.output := by lin_cert using reduction431.terms
def map_10_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation448 : InImage map_10_67 image448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction448 : Bundle := named_bundle% "RealMapCertificates/relations/basis448.json"
theorem reductionProof448 : EqualModuloRelations reduction448.relations reduction448.input reduction448.output := by lin_cert using reduction448.terms
theorem substitutionProof448 : IsMapEvaluation generatorImages reduction448.relations [0,0,18,20] reduction448.output := by lin_cert using reduction448.terms
def map_10_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation488 : InImage map_10_69 image488 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction488 : Bundle := named_bundle% "RealMapCertificates/relations/basis488.json"
theorem reductionProof488 : EqualModuloRelations reduction488.relations reduction488.input reduction488.output := by lin_cert using reduction488.terms
theorem substitutionProof488 : IsMapEvaluation generatorImages reduction488.relations [79] reduction488.output := by lin_cert using reduction488.terms
def map_10_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation506 : InImage map_10_70 image506 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction506 : Bundle := named_bundle% "RealMapCertificates/relations/basis506.json"
theorem reductionProof506 : EqualModuloRelations reduction506.relations reduction506.input reduction506.output := by lin_cert using reduction506.terms
theorem substitutionProof506 : IsMapEvaluation generatorImages reduction506.relations [0,80] reduction506.output := by lin_cert using reduction506.terms
def map_10_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation527 : InImage map_10_71 image527 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction527 : Bundle := named_bundle% "RealMapCertificates/relations/basis527.json"
theorem reductionProof527 : EqualModuloRelations reduction527.relations reduction527.input reduction527.output := by lin_cert using reduction527.terms
theorem substitutionProof527 : IsMapEvaluation generatorImages reduction527.relations [0,81] reduction527.output := by lin_cert using reduction527.terms
def map_10_72 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation547 : InImage map_10_72 image547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction547 : Bundle := named_bundle% "RealMapCertificates/relations/basis547.json"
theorem reductionProof547 : EqualModuloRelations reduction547.relations reduction547.input reduction547.output := by lin_cert using reduction547.terms
theorem substitutionProof547 : IsMapEvaluation generatorImages reduction547.relations [90] reduction547.output := by lin_cert using reduction547.terms
def image548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation548 : InImage map_10_72 image548 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction548 : Bundle := named_bundle% "RealMapCertificates/relations/basis548.json"
theorem reductionProof548 : EqualModuloRelations reduction548.relations reduction548.input reduction548.output := by lin_cert using reduction548.terms
theorem substitutionProof548 : IsMapEvaluation generatorImages reduction548.relations [89] reduction548.output := by lin_cert using reduction548.terms
def image549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation549 : InImage map_10_72 image549 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction549 : Bundle := named_bundle% "RealMapCertificates/relations/basis549.json"
theorem reductionProof549 : EqualModuloRelations reduction549.relations reduction549.input reduction549.output := by lin_cert using reduction549.terms
theorem substitutionProof549 : IsMapEvaluation generatorImages reduction549.relations [1,81] reduction549.output := by lin_cert using reduction549.terms
def map_10_73 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation572 : InImage map_10_73 image572 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction572 : Bundle := named_bundle% "RealMapCertificates/relations/basis572.json"
theorem reductionProof572 : EqualModuloRelations reduction572.relations reduction572.input reduction572.output := by lin_cert using reduction572.terms
theorem substitutionProof572 : IsMapEvaluation generatorImages reduction572.relations [2,80] reduction572.output := by lin_cert using reduction572.terms
def image573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation573 : InImage map_10_73 image573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction573 : Bundle := named_bundle% "RealMapCertificates/relations/basis573.json"
theorem reductionProof573 : EqualModuloRelations reduction573.relations reduction573.input reduction573.output := by lin_cert using reduction573.terms
theorem substitutionProof573 : IsMapEvaluation generatorImages reduction573.relations [0,0,0,0,0,0,0,0,0,69] reduction573.output := by lin_cert using reduction573.terms
def map_10_74 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation595 : InImage map_10_74 image595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction595 : Bundle := named_bundle% "RealMapCertificates/relations/basis595.json"
theorem reductionProof595 : EqualModuloRelations reduction595.relations reduction595.input reduction595.output := by lin_cert using reduction595.terms
theorem substitutionProof595 : IsMapEvaluation generatorImages reduction595.relations [98] reduction595.output := by lin_cert using reduction595.terms
def image596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation596 : InImage map_10_74 image596 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction596 : Bundle := named_bundle% "RealMapCertificates/relations/basis596.json"
theorem reductionProof596 : EqualModuloRelations reduction596.relations reduction596.input reduction596.output := by lin_cert using reduction596.terms
theorem substitutionProof596 : IsMapEvaluation generatorImages reduction596.relations [0,0,3,67] reduction596.output := by lin_cert using reduction596.terms
def map_10_75 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation617 : InImage map_10_75 image617 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction617 : Bundle := named_bundle% "RealMapCertificates/relations/basis617.json"
theorem reductionProof617 : EqualModuloRelations reduction617.relations reduction617.input reduction617.output := by lin_cert using reduction617.terms
theorem substitutionProof617 : IsMapEvaluation generatorImages reduction617.relations [101] reduction617.output := by lin_cert using reduction617.terms
def map_10_76 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation636 : InImage map_10_76 image636 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction636 : Bundle := named_bundle% "RealMapCertificates/relations/basis636.json"
theorem reductionProof636 : EqualModuloRelations reduction636.relations reduction636.input reduction636.output := by lin_cert using reduction636.terms
theorem substitutionProof636 : IsMapEvaluation generatorImages reduction636.relations [104] reduction636.output := by lin_cert using reduction636.terms
def image637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation637 : InImage map_10_76 image637 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction637 : Bundle := named_bundle% "RealMapCertificates/relations/basis637.json"
theorem reductionProof637 : EqualModuloRelations reduction637.relations reduction637.input reduction637.output := by lin_cert using reduction637.terms
theorem substitutionProof637 : IsMapEvaluation generatorImages reduction637.relations [103] reduction637.output := by lin_cert using reduction637.terms
def map_10_77 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation657 : InImage map_10_77 image657 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction657 : Bundle := named_bundle% "RealMapCertificates/relations/basis657.json"
theorem reductionProof657 : EqualModuloRelations reduction657.relations reduction657.input reduction657.output := by lin_cert using reduction657.terms
theorem substitutionProof657 : IsMapEvaluation generatorImages reduction657.relations [0,106] reduction657.output := by lin_cert using reduction657.terms
def map_10_78 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation686 : InImage map_10_78 image686 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction686 : Bundle := named_bundle% "RealMapCertificates/relations/basis686.json"
theorem reductionProof686 : EqualModuloRelations reduction686.relations reduction686.input reduction686.output := by lin_cert using reduction686.terms
theorem substitutionProof686 : IsMapEvaluation generatorImages reduction686.relations [1,105] reduction686.output := by lin_cert using reduction686.terms
def image687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation687 : InImage map_10_78 image687 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction687 : Bundle := named_bundle% "RealMapCertificates/relations/basis687.json"
theorem reductionProof687 : EqualModuloRelations reduction687.relations reduction687.input reduction687.output := by lin_cert using reduction687.terms
theorem substitutionProof687 : IsMapEvaluation generatorImages reduction687.relations [0,0,107] reduction687.output := by lin_cert using reduction687.terms
def map_10_79 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation706 : InImage map_10_79 image706 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction706 : Bundle := named_bundle% "RealMapCertificates/relations/basis706.json"
theorem reductionProof706 : EqualModuloRelations reduction706.relations reduction706.input reduction706.output := by lin_cert using reduction706.terms
theorem substitutionProof706 : IsMapEvaluation generatorImages reduction706.relations [115] reduction706.output := by lin_cert using reduction706.terms
def map_10_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation722 : InImage map_10_80 image722 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction722 : Bundle := named_bundle% "RealMapCertificates/relations/basis722.json"
theorem reductionProof722 : EqualModuloRelations reduction722.relations reduction722.input reduction722.output := by lin_cert using reduction722.terms
theorem substitutionProof722 : IsMapEvaluation generatorImages reduction722.relations [1,1,107] reduction722.output := by lin_cert using reduction722.terms
def map_10_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation751 : InImage map_10_81 image751 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction751 : Bundle := named_bundle% "RealMapCertificates/relations/basis751.json"
theorem reductionProof751 : EqualModuloRelations reduction751.relations reduction751.input reduction751.output := by lin_cert using reduction751.terms
theorem substitutionProof751 : IsMapEvaluation generatorImages reduction751.relations [0,2,107] reduction751.output := by lin_cert using reduction751.terms
def map_10_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation771 : InImage map_10_82 image771 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction771 : Bundle := named_bundle% "RealMapCertificates/relations/basis771.json"
theorem reductionProof771 : EqualModuloRelations reduction771.relations reduction771.input reduction771.output := by lin_cert using reduction771.terms
theorem substitutionProof771 : IsMapEvaluation generatorImages reduction771.relations [8,68] reduction771.output := by lin_cert using reduction771.terms
def map_10_84 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation820 : InImage map_10_84 image820 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction820 : Bundle := named_bundle% "RealMapCertificates/relations/basis820.json"
theorem reductionProof820 : EqualModuloRelations reduction820.relations reduction820.input reduction820.output := by lin_cert using reduction820.terms
theorem substitutionProof820 : IsMapEvaluation generatorImages reduction820.relations [0,0,120] reduction820.output := by lin_cert using reduction820.terms
def map_10_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation847 : InImage map_10_85 image847 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction847 : Bundle := named_bundle% "RealMapCertificates/relations/basis847.json"
theorem reductionProof847 : EqualModuloRelations reduction847.relations reduction847.input reduction847.output := by lin_cert using reduction847.terms
theorem substitutionProof847 : IsMapEvaluation generatorImages reduction847.relations [0,3,107] reduction847.output := by lin_cert using reduction847.terms
def map_10_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation871 : InImage map_10_86 image871 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction871 : Bundle := named_bundle% "RealMapCertificates/relations/basis871.json"
theorem reductionProof871 : EqualModuloRelations reduction871.relations reduction871.input reduction871.output := by lin_cert using reduction871.terms
theorem substitutionProof871 : IsMapEvaluation generatorImages reduction871.relations [0,133] reduction871.output := by lin_cert using reduction871.terms
def map_10_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation901 : InImage map_10_87 image901 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction901 : Bundle := named_bundle% "RealMapCertificates/relations/basis901.json"
theorem reductionProof901 : EqualModuloRelations reduction901.relations reduction901.input reduction901.output := by lin_cert using reduction901.terms
theorem substitutionProof901 : IsMapEvaluation generatorImages reduction901.relations [0,0,0,128] reduction901.output := by lin_cert using reduction901.terms
def map_10_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation923 : InImage map_10_88 image923 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction923 : Bundle := named_bundle% "RealMapCertificates/relations/basis923.json"
theorem reductionProof923 : EqualModuloRelations reduction923.relations reduction923.input reduction923.output := by lin_cert using reduction923.terms
theorem substitutionProof923 : IsMapEvaluation generatorImages reduction923.relations [141] reduction923.output := by lin_cert using reduction923.terms
def image924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation924 : InImage map_10_88 image924 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction924 : Bundle := named_bundle% "RealMapCertificates/relations/basis924.json"
theorem reductionProof924 : EqualModuloRelations reduction924.relations reduction924.input reduction924.output := by lin_cert using reduction924.terms
theorem substitutionProof924 : IsMapEvaluation generatorImages reduction924.relations [9,75] reduction924.output := by lin_cert using reduction924.terms
def map_10_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation949 : InImage map_10_89 image949 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction949 : Bundle := named_bundle% "RealMapCertificates/relations/basis949.json"
theorem reductionProof949 : EqualModuloRelations reduction949.relations reduction949.input reduction949.output := by lin_cert using reduction949.terms
theorem substitutionProof949 : IsMapEvaluation generatorImages reduction949.relations [1,139] reduction949.output := by lin_cert using reduction949.terms
def map_10_90 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation982 : InImage map_10_90 image982 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction982 : Bundle := named_bundle% "RealMapCertificates/relations/basis982.json"
theorem reductionProof982 : EqualModuloRelations reduction982.relations reduction982.input reduction982.output := by lin_cert using reduction982.terms
theorem substitutionProof982 : IsMapEvaluation generatorImages reduction982.relations [14,69] reduction982.output := by lin_cert using reduction982.terms
def map_10_91 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1009 : InImage map_10_91 image1009 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1009 : Bundle := named_bundle% "RealMapCertificates/relations/basis1009.json"
theorem reductionProof1009 : EqualModuloRelations reduction1009.relations reduction1009.input reduction1009.output := by lin_cert using reduction1009.terms
theorem substitutionProof1009 : IsMapEvaluation generatorImages reduction1009.relations [13,75] reduction1009.output := by lin_cert using reduction1009.terms
def image1010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1010 : InImage map_10_91 image1010 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1010 : Bundle := named_bundle% "RealMapCertificates/relations/basis1010.json"
theorem reductionProof1010 : EqualModuloRelations reduction1010.relations reduction1010.input reduction1010.output := by lin_cert using reduction1010.terms
theorem substitutionProof1010 : IsMapEvaluation generatorImages reduction1010.relations [0,3,120] reduction1010.output := by lin_cert using reduction1010.terms
def map_10_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1032 : InImage map_10_92 image1032 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1032 : Bundle := named_bundle% "RealMapCertificates/relations/basis1032.json"
theorem reductionProof1032 : EqualModuloRelations reduction1032.relations reduction1032.input reduction1032.output := by lin_cert using reduction1032.terms
theorem substitutionProof1032 : IsMapEvaluation generatorImages reduction1032.relations [15,69] reduction1032.output := by lin_cert using reduction1032.terms
def map_10_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1062 : InImage map_10_93 image1062 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1062 : Bundle := named_bundle% "RealMapCertificates/relations/basis1062.json"
theorem reductionProof1062 : EqualModuloRelations reduction1062.relations reduction1062.input reduction1062.output := by lin_cert using reduction1062.terms
theorem substitutionProof1062 : IsMapEvaluation generatorImages reduction1062.relations [1,13,76] reduction1062.output := by lin_cert using reduction1062.terms
def map_10_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1087 : InImage map_10_94 image1087 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1087 : Bundle := named_bundle% "RealMapCertificates/relations/basis1087.json"
theorem reductionProof1087 : EqualModuloRelations reduction1087.relations reduction1087.input reduction1087.output := by lin_cert using reduction1087.terms
theorem substitutionProof1087 : IsMapEvaluation generatorImages reduction1087.relations [157] reduction1087.output := by lin_cert using reduction1087.terms
def map_10_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1104 : InImage map_10_95 image1104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1104 : Bundle := named_bundle% "RealMapCertificates/relations/basis1104.json"
theorem reductionProof1104 : EqualModuloRelations reduction1104.relations reduction1104.input reduction1104.output := by lin_cert using reduction1104.terms
theorem substitutionProof1104 : IsMapEvaluation generatorImages reduction1104.relations [0,16,69] reduction1104.output := by lin_cert using reduction1104.terms
def map_10_96 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1134 : InImage map_10_96 image1134 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1134 : Bundle := named_bundle% "RealMapCertificates/relations/basis1134.json"
theorem reductionProof1134 : EqualModuloRelations reduction1134.relations reduction1134.input reduction1134.output := by lin_cert using reduction1134.terms
theorem substitutionProof1134 : IsMapEvaluation generatorImages reduction1134.relations [1,16,69] reduction1134.output := by lin_cert using reduction1134.terms
def image1135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1135 : InImage map_10_96 image1135 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1135 : Bundle := named_bundle% "RealMapCertificates/relations/basis1135.json"
theorem reductionProof1135 : EqualModuloRelations reduction1135.relations reduction1135.input reduction1135.output := by lin_cert using reduction1135.terms
theorem substitutionProof1135 : IsMapEvaluation generatorImages reduction1135.relations [0,0,17,69] reduction1135.output := by lin_cert using reduction1135.terms
def map_10_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1154 : InImage map_10_97 image1154 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1154 : Bundle := named_bundle% "RealMapCertificates/relations/basis1154.json"
theorem reductionProof1154 : EqualModuloRelations reduction1154.relations reduction1154.input reduction1154.output := by lin_cert using reduction1154.terms
theorem substitutionProof1154 : IsMapEvaluation generatorImages reduction1154.relations [164] reduction1154.output := by lin_cert using reduction1154.terms
def map_10_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1178 : InImage map_10_98 image1178 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1178 : Bundle := named_bundle% "RealMapCertificates/relations/basis1178.json"
theorem reductionProof1178 : EqualModuloRelations reduction1178.relations reduction1178.input reduction1178.output := by lin_cert using reduction1178.terms
theorem substitutionProof1178 : IsMapEvaluation generatorImages reduction1178.relations [0,19,69] reduction1178.output := by lin_cert using reduction1178.terms
def map_10_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1209 : InImage map_10_99 image1209 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1209 : Bundle := named_bundle% "RealMapCertificates/relations/basis1209.json"
theorem reductionProof1209 : EqualModuloRelations reduction1209.relations reduction1209.input reduction1209.output := by lin_cert using reduction1209.terms
theorem substitutionProof1209 : IsMapEvaluation generatorImages reduction1209.relations [0,0,20,69] reduction1209.output := by lin_cert using reduction1209.terms
def map_10_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1236 : InImage map_10_100 image1236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1236 : Bundle := named_bundle% "RealMapCertificates/relations/basis1236.json"
theorem reductionProof1236 : EqualModuloRelations reduction1236.relations reduction1236.input reduction1236.output := by lin_cert using reduction1236.terms
theorem substitutionProof1236 : IsMapEvaluation generatorImages reduction1236.relations [179] reduction1236.output := by lin_cert using reduction1236.terms
def map_10_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1263 : InImage map_10_101 image1263 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1263 : Bundle := named_bundle% "RealMapCertificates/relations/basis1263.json"
theorem reductionProof1263 : EqualModuloRelations reduction1263.relations reduction1263.input reduction1263.output := by lin_cert using reduction1263.terms
theorem substitutionProof1263 : IsMapEvaluation generatorImages reduction1263.relations [0,8,8,69] reduction1263.output := by lin_cert using reduction1263.terms
def map_10_102 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1305 : InImage map_10_102 image1305 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1305 : Bundle := named_bundle% "RealMapCertificates/relations/basis1305.json"
theorem reductionProof1305 : EqualModuloRelations reduction1305.relations reduction1305.input reduction1305.output := by lin_cert using reduction1305.terms
theorem substitutionProof1305 : IsMapEvaluation generatorImages reduction1305.relations [189] reduction1305.output := by lin_cert using reduction1305.terms
def image1306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1306 : InImage map_10_102 image1306 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1306 : Bundle := named_bundle% "RealMapCertificates/relations/basis1306.json"
theorem reductionProof1306 : EqualModuloRelations reduction1306.relations reduction1306.input reduction1306.output := by lin_cert using reduction1306.terms
theorem substitutionProof1306 : IsMapEvaluation generatorImages reduction1306.relations [0,0,22,69] reduction1306.output := by lin_cert using reduction1306.terms
def map_10_103 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1332 : InImage map_10_103 image1332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1332 : Bundle := named_bundle% "RealMapCertificates/relations/basis1332.json"
theorem reductionProof1332 : EqualModuloRelations reduction1332.relations reduction1332.input reduction1332.output := by lin_cert using reduction1332.terms
theorem substitutionProof1332 : IsMapEvaluation generatorImages reduction1332.relations [192] reduction1332.output := by lin_cert using reduction1332.terms
def image1333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1333 : InImage map_10_103 image1333 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1333 : Bundle := named_bundle% "RealMapCertificates/relations/basis1333.json"
theorem reductionProof1333 : EqualModuloRelations reduction1333.relations reduction1333.input reduction1333.output := by lin_cert using reduction1333.terms
theorem substitutionProof1333 : IsMapEvaluation generatorImages reduction1333.relations [1,1,174] reduction1333.output := by lin_cert using reduction1333.terms
def image1334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1334 : InImage map_10_103 image1334 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1334 : Bundle := named_bundle% "RealMapCertificates/relations/basis1334.json"
theorem reductionProof1334 : EqualModuloRelations reduction1334.relations reduction1334.input reduction1334.output := by lin_cert using reduction1334.terms
theorem substitutionProof1334 : IsMapEvaluation generatorImages reduction1334.relations [0,0,0,23,69] reduction1334.output := by lin_cert using reduction1334.terms
def map_10_104 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1361 : InImage map_10_104 image1361 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1361 : Bundle := named_bundle% "RealMapCertificates/relations/basis1361.json"
theorem reductionProof1361 : EqualModuloRelations reduction1361.relations reduction1361.input reduction1361.output := by lin_cert using reduction1361.terms
theorem substitutionProof1361 : IsMapEvaluation generatorImages reduction1361.relations [196] reduction1361.output := by lin_cert using reduction1361.terms
def image1362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1362 : InImage map_10_104 image1362 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1362 : Bundle := named_bundle% "RealMapCertificates/relations/basis1362.json"
theorem reductionProof1362 : EqualModuloRelations reduction1362.relations reduction1362.input reduction1362.output := by lin_cert using reduction1362.terms
theorem substitutionProof1362 : IsMapEvaluation generatorImages reduction1362.relations [0,8,9,69] reduction1362.output := by lin_cert using reduction1362.terms
def image1363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1363 : InImage map_10_104 image1363 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1363 : Bundle := named_bundle% "RealMapCertificates/relations/basis1363.json"
theorem reductionProof1363 : EqualModuloRelations reduction1363.relations reduction1363.input reduction1363.output := by lin_cert using reduction1363.terms
theorem substitutionProof1363 : IsMapEvaluation generatorImages reduction1363.relations [0,0,190] reduction1363.output := by lin_cert using reduction1363.terms
def map_10_105 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1403 : InImage map_10_105 image1403 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1403 : Bundle := named_bundle% "RealMapCertificates/relations/basis1403.json"
theorem reductionProof1403 : EqualModuloRelations reduction1403.relations reduction1403.input reduction1403.output := by lin_cert using reduction1403.terms
theorem substitutionProof1403 : IsMapEvaluation generatorImages reduction1403.relations [202] reduction1403.output := by lin_cert using reduction1403.terms
def image1404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1404 : InImage map_10_105 image1404 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1404 : Bundle := named_bundle% "RealMapCertificates/relations/basis1404.json"
theorem reductionProof1404 : EqualModuloRelations reduction1404.relations reduction1404.input reduction1404.output := by lin_cert using reduction1404.terms
theorem substitutionProof1404 : IsMapEvaluation generatorImages reduction1404.relations [0,0,29,69] reduction1404.output := by lin_cert using reduction1404.terms
def map_10_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1435 : InImage map_10_106 image1435 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1435 : Bundle := named_bundle% "RealMapCertificates/relations/basis1435.json"
theorem reductionProof1435 : EqualModuloRelations reduction1435.relations reduction1435.input reduction1435.output := by lin_cert using reduction1435.terms
theorem substitutionProof1435 : IsMapEvaluation generatorImages reduction1435.relations [0,0,197] reduction1435.output := by lin_cert using reduction1435.terms
def map_10_107 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1462 : InImage map_10_107 image1462 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1462 : Bundle := named_bundle% "RealMapCertificates/relations/basis1462.json"
theorem reductionProof1462 : EqualModuloRelations reduction1462.relations reduction1462.input reduction1462.output := by lin_cert using reduction1462.terms
theorem substitutionProof1462 : IsMapEvaluation generatorImages reduction1462.relations [209] reduction1462.output := by lin_cert using reduction1462.terms
def image1463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1463 : InImage map_10_107 image1463 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1463 : Bundle := named_bundle% "RealMapCertificates/relations/basis1463.json"
theorem reductionProof1463 : EqualModuloRelations reduction1463.relations reduction1463.input reduction1463.output := by lin_cert using reduction1463.terms
theorem substitutionProof1463 : IsMapEvaluation generatorImages reduction1463.relations [0,8,13,69] reduction1463.output := by lin_cert using reduction1463.terms
def map_10_108 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1506 : InImage map_10_108 image1506 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1506 : Bundle := named_bundle% "RealMapCertificates/relations/basis1506.json"
theorem reductionProof1506 : EqualModuloRelations reduction1506.relations reduction1506.input reduction1506.output := by lin_cert using reduction1506.terms
theorem substitutionProof1506 : IsMapEvaluation generatorImages reduction1506.relations [0,3,174] reduction1506.output := by lin_cert using reduction1506.terms
def image1507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1507 : InImage map_10_108 image1507 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1507 : Bundle := named_bundle% "RealMapCertificates/relations/basis1507.json"
theorem reductionProof1507 : EqualModuloRelations reduction1507.relations reduction1507.input reduction1507.output := by lin_cert using reduction1507.terms
theorem substitutionProof1507 : IsMapEvaluation generatorImages reduction1507.relations [0,0,32,69] reduction1507.output := by lin_cert using reduction1507.terms
def map_10_109 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1542 : InImage map_10_109 image1542 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1542 : Bundle := named_bundle% "RealMapCertificates/relations/basis1542.json"
theorem reductionProof1542 : EqualModuloRelations reduction1542.relations reduction1542.input reduction1542.output := by lin_cert using reduction1542.terms
theorem substitutionProof1542 : IsMapEvaluation generatorImages reduction1542.relations [2,2,181] reduction1542.output := by lin_cert using reduction1542.terms
def image1543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1543 : InImage map_10_109 image1543 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1543 : Bundle := named_bundle% "RealMapCertificates/relations/basis1543.json"
theorem reductionProof1543 : EqualModuloRelations reduction1543.relations reduction1543.input reduction1543.output := by lin_cert using reduction1543.terms
theorem substitutionProof1543 : IsMapEvaluation generatorImages reduction1543.relations [0,0,0,203] reduction1543.output := by lin_cert using reduction1543.terms
def map_10_110 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1575 : InImage map_10_110 image1575 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1575 : Bundle := named_bundle% "RealMapCertificates/relations/basis1575.json"
theorem reductionProof1575 : EqualModuloRelations reduction1575.relations reduction1575.input reduction1575.output := by lin_cert using reduction1575.terms
theorem substitutionProof1575 : IsMapEvaluation generatorImages reduction1575.relations [221] reduction1575.output := by lin_cert using reduction1575.terms
def image1576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1576 : InImage map_10_110 image1576 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1576 : Bundle := named_bundle% "RealMapCertificates/relations/basis1576.json"
theorem reductionProof1576 : EqualModuloRelations reduction1576.relations reduction1576.input reduction1576.output := by lin_cert using reduction1576.terms
theorem substitutionProof1576 : IsMapEvaluation generatorImages reduction1576.relations [1,213] reduction1576.output := by lin_cert using reduction1576.terms
def image1577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1577 : InImage map_10_110 image1577 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1577 : Bundle := named_bundle% "RealMapCertificates/relations/basis1577.json"
theorem reductionProof1577 : EqualModuloRelations reduction1577.relations reduction1577.input reduction1577.output := by lin_cert using reduction1577.terms
theorem substitutionProof1577 : IsMapEvaluation generatorImages reduction1577.relations [0,0,0,0,34,69] reduction1577.output := by lin_cert using reduction1577.terms
def map_10_111 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1627 : InImage map_10_111 image1627 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1627 : Bundle := named_bundle% "RealMapCertificates/relations/basis1627.json"
theorem reductionProof1627 : EqualModuloRelations reduction1627.relations reduction1627.input reduction1627.output := by lin_cert using reduction1627.terms
theorem substitutionProof1627 : IsMapEvaluation generatorImages reduction1627.relations [0,0,216] reduction1627.output := by lin_cert using reduction1627.terms
def image1628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1628 : InImage map_10_111 image1628 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1628 : Bundle := named_bundle% "RealMapCertificates/relations/basis1628.json"
theorem reductionProof1628 : EqualModuloRelations reduction1628.relations reduction1628.input reduction1628.output := by lin_cert using reduction1628.terms
theorem substitutionProof1628 : IsMapEvaluation generatorImages reduction1628.relations [0,0,0,36,69] reduction1628.output := by lin_cert using reduction1628.terms
def map_10_112 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1659 : InImage map_10_112 image1659 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1659 : Bundle := named_bundle% "RealMapCertificates/relations/basis1659.json"
theorem reductionProof1659 : EqualModuloRelations reduction1659.relations reduction1659.input reduction1659.output := by lin_cert using reduction1659.terms
theorem substitutionProof1659 : IsMapEvaluation generatorImages reduction1659.relations [43,68] reduction1659.output := by lin_cert using reduction1659.terms
def image1660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1660 : InImage map_10_112 image1660 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1660 : Bundle := named_bundle% "RealMapCertificates/relations/basis1660.json"
theorem reductionProof1660 : EqualModuloRelations reduction1660.relations reduction1660.input reduction1660.output := by lin_cert using reduction1660.terms
theorem substitutionProof1660 : IsMapEvaluation generatorImages reduction1660.relations [42,69] reduction1660.output := by lin_cert using reduction1660.terms
def image1661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1661 : InImage map_10_112 image1661 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1661 : Bundle := named_bundle% "RealMapCertificates/relations/basis1661.json"
theorem reductionProof1661 : EqualModuloRelations reduction1661.relations reduction1661.input reduction1661.output := by lin_cert using reduction1661.terms
theorem substitutionProof1661 : IsMapEvaluation generatorImages reduction1661.relations [1,3,190] reduction1661.output := by lin_cert using reduction1661.terms
def map_10_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1693 : InImage map_10_113 image1693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1693 : Bundle := named_bundle% "RealMapCertificates/relations/basis1693.json"
theorem reductionProof1693 : EqualModuloRelations reduction1693.relations reduction1693.input reduction1693.output := by lin_cert using reduction1693.terms
theorem substitutionProof1693 : IsMapEvaluation generatorImages reduction1693.relations [0,3,197] reduction1693.output := by lin_cert using reduction1693.terms
def map_10_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1732 : InImage map_10_114 image1732 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1732 : Bundle := named_bundle% "RealMapCertificates/relations/basis1732.json"
theorem reductionProof1732 : EqualModuloRelations reduction1732.relations reduction1732.input reduction1732.output := by lin_cert using reduction1732.terms
theorem substitutionProof1732 : IsMapEvaluation generatorImages reduction1732.relations [0,235] reduction1732.output := by lin_cert using reduction1732.terms
def map_10_115 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1761 : InImage map_10_115 image1761 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1761 : Bundle := named_bundle% "RealMapCertificates/relations/basis1761.json"
theorem reductionProof1761 : EqualModuloRelations reduction1761.relations reduction1761.input reduction1761.output := by lin_cert using reduction1761.terms
theorem substitutionProof1761 : IsMapEvaluation generatorImages reduction1761.relations [43,74] reduction1761.output := by lin_cert using reduction1761.terms
def image1762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1762 : InImage map_10_115 image1762 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1762 : Bundle := named_bundle% "RealMapCertificates/relations/basis1762.json"
theorem reductionProof1762 : EqualModuloRelations reduction1762.relations reduction1762.input reduction1762.output := by lin_cert using reduction1762.terms
theorem substitutionProof1762 : IsMapEvaluation generatorImages reduction1762.relations [3,3,174] reduction1762.output := by lin_cert using reduction1762.terms
def image1763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1763 : InImage map_10_115 image1763 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1763 : Bundle := named_bundle% "RealMapCertificates/relations/basis1763.json"
theorem reductionProof1763 : EqualModuloRelations reduction1763.relations reduction1763.input reduction1763.output := by lin_cert using reduction1763.terms
theorem substitutionProof1763 : IsMapEvaluation generatorImages reduction1763.relations [0,239] reduction1763.output := by lin_cert using reduction1763.terms
def map_10_116 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1798 : InImage map_10_116 image1798 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1798 : Bundle := named_bundle% "RealMapCertificates/relations/basis1798.json"
theorem reductionProof1798 : EqualModuloRelations reduction1798.relations reduction1798.input reduction1798.output := by lin_cert using reduction1798.terms
theorem substitutionProof1798 : IsMapEvaluation generatorImages reduction1798.relations [3,213] reduction1798.output := by lin_cert using reduction1798.terms
def image1799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1799 : InImage map_10_116 image1799 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1799 : Bundle := named_bundle% "RealMapCertificates/relations/basis1799.json"
theorem reductionProof1799 : EqualModuloRelations reduction1799.relations reduction1799.input reduction1799.output := by lin_cert using reduction1799.terms
theorem substitutionProof1799 : IsMapEvaluation generatorImages reduction1799.relations [1,239] reduction1799.output := by lin_cert using reduction1799.terms
def map_10_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1840 : InImage map_10_117 image1840 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1840 : Bundle := named_bundle% "RealMapCertificates/relations/basis1840.json"
theorem reductionProof1840 : EqualModuloRelations reduction1840.relations reduction1840.input reduction1840.output := by lin_cert using reduction1840.terms
theorem substitutionProof1840 : IsMapEvaluation generatorImages reduction1840.relations [0,251] reduction1840.output := by lin_cert using reduction1840.terms
def map_10_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1877 : InImage map_10_118 image1877 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1877 : Bundle := named_bundle% "RealMapCertificates/relations/basis1877.json"
theorem reductionProof1877 : EqualModuloRelations reduction1877.relations reduction1877.input reduction1877.output := by lin_cert using reduction1877.terms
theorem substitutionProof1877 : IsMapEvaluation generatorImages reduction1877.relations [1,251] reduction1877.output := by lin_cert using reduction1877.terms
def image1878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1878 : InImage map_10_118 image1878 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1878 : Bundle := named_bundle% "RealMapCertificates/relations/basis1878.json"
theorem reductionProof1878 : EqualModuloRelations reduction1878.relations reduction1878.input reduction1878.output := by lin_cert using reduction1878.terms
theorem substitutionProof1878 : IsMapEvaluation generatorImages reduction1878.relations [0,3,216] reduction1878.output := by lin_cert using reduction1878.terms
end RealMapCertificates
