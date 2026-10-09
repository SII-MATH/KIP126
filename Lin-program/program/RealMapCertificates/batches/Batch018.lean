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
  | 18 => []
  | 53 => []
  | 68 => []
  | 69 => []
  | 80 => []
  | 82 => []
  | 95 => []
  | 133 => []
  | 191 => []
  | 197 => []
  | 213 => []
  | 251 => []
  | 263 => []
  | 269 => []
  | 270 => []
  | 281 => []
  | 282 => []
  | 288 => []
  | 289 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 321 => []
  | 322 => []
  | 324 => []
  | 332 => []
  | 333 => []
  | 337 => []
  | 338 => []
  | 352 => []
  | 366 => []
  | 367 => []
  | 372 => []
  | 373 => []
  | 375 => []
  | 376 => []
  | 388 => []
  | 389 => []
  | 390 => []
  | 391 => []
  | 392 => []
  | 394 => []
  | 412 => []
  | 413 => []
  | 414 => []
  | 415 => []
  | 419 => []
  | 428 => []
  | 429 => []
  | 441 => []
  | 442 => []
  | 443 => []
  | 445 => []
  | 446 => []
  | 450 => []
  | 451 => []
  | 463 => []
  | 464 => []
  | 478 => []
  | 479 => []
  | 480 => []
  | 504 => []
  | 506 => []
  | 512 => []
  | 513 => []
  | 514 => []
  | 521 => []
  | 522 => []
  | 523 => []
  | 524 => []
  | 535 => []
  | 544 => []
  | 545 => []
  | 546 => []
  | 563 => []
  | 564 => []
  | _ => []
def map_10_119 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1910 : InImage map_10_119 image1910 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1910 : Bundle := named_bundle% "RealMapCertificates/relations/basis1910.json"
theorem reductionProof1910 : EqualModuloRelations reduction1910.relations reduction1910.input reduction1910.output := by lin_cert using reduction1910.terms
theorem substitutionProof1910 : IsMapEvaluation generatorImages reduction1910.relations [263] reduction1910.output := by lin_cert using reduction1910.terms
def image1911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1911 : InImage map_10_119 image1911 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1911 : Bundle := named_bundle% "RealMapCertificates/relations/basis1911.json"
theorem reductionProof1911 : EqualModuloRelations reduction1911.relations reduction1911.input reduction1911.output := by lin_cert using reduction1911.terms
theorem substitutionProof1911 : IsMapEvaluation generatorImages reduction1911.relations [0,3,3,191] reduction1911.output := by lin_cert using reduction1911.terms
def map_10_120 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1957 : InImage map_10_120 image1957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1957 : Bundle := named_bundle% "RealMapCertificates/relations/basis1957.json"
theorem reductionProof1957 : EqualModuloRelations reduction1957.relations reduction1957.input reduction1957.output := by lin_cert using reduction1957.terms
theorem substitutionProof1957 : IsMapEvaluation generatorImages reduction1957.relations [269] reduction1957.output := by lin_cert using reduction1957.terms
def image1958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1958 : InImage map_10_120 image1958 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1958 : Bundle := named_bundle% "RealMapCertificates/relations/basis1958.json"
theorem reductionProof1958 : EqualModuloRelations reduction1958.relations reduction1958.input reduction1958.output := by lin_cert using reduction1958.terms
theorem substitutionProof1958 : IsMapEvaluation generatorImages reduction1958.relations [3,3,197] reduction1958.output := by lin_cert using reduction1958.terms
def image1959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1959 : InImage map_10_120 image1959 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1959 : Bundle := named_bundle% "RealMapCertificates/relations/basis1959.json"
theorem reductionProof1959 : EqualModuloRelations reduction1959.relations reduction1959.input reduction1959.output := by lin_cert using reduction1959.terms
theorem substitutionProof1959 : IsMapEvaluation generatorImages reduction1959.relations [2,251] reduction1959.output := by lin_cert using reduction1959.terms
def map_10_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1999 : InImage map_10_121 image1999 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1999 : Bundle := named_bundle% "RealMapCertificates/relations/basis1999.json"
theorem reductionProof1999 : EqualModuloRelations reduction1999.relations reduction1999.input reduction1999.output := by lin_cert using reduction1999.terms
theorem substitutionProof1999 : IsMapEvaluation generatorImages reduction1999.relations [0,270] reduction1999.output := by lin_cert using reduction1999.terms
def image2000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2000 : InImage map_10_121 image2000 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2000 : Bundle := named_bundle% "RealMapCertificates/relations/basis2000.json"
theorem reductionProof2000 : EqualModuloRelations reduction2000.relations reduction2000.input reduction2000.output := by lin_cert using reduction2000.terms
theorem substitutionProof2000 : IsMapEvaluation generatorImages reduction2000.relations [0,0,53,69] reduction2000.output := by lin_cert using reduction2000.terms
def map_10_122 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2033 : InImage map_10_122 image2033 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2033 : Bundle := named_bundle% "RealMapCertificates/relations/basis2033.json"
theorem reductionProof2033 : EqualModuloRelations reduction2033.relations reduction2033.input reduction2033.output := by lin_cert using reduction2033.terms
theorem substitutionProof2033 : IsMapEvaluation generatorImages reduction2033.relations [281] reduction2033.output := by lin_cert using reduction2033.terms
def image2034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2034 : InImage map_10_122 image2034 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2034 : Bundle := named_bundle% "RealMapCertificates/relations/basis2034.json"
theorem reductionProof2034 : EqualModuloRelations reduction2034.relations reduction2034.input reduction2034.output := by lin_cert using reduction2034.terms
theorem substitutionProof2034 : IsMapEvaluation generatorImages reduction2034.relations [1,270] reduction2034.output := by lin_cert using reduction2034.terms
def map_10_123 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2084 : InImage map_10_123 image2084 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2084 : Bundle := named_bundle% "RealMapCertificates/relations/basis2084.json"
theorem reductionProof2084 : EqualModuloRelations reduction2084.relations reduction2084.input reduction2084.output := by lin_cert using reduction2084.terms
theorem substitutionProof2084 : IsMapEvaluation generatorImages reduction2084.relations [288] reduction2084.output := by lin_cert using reduction2084.terms
def map_10_124 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2121 : InImage map_10_124 image2121 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2121 : Bundle := named_bundle% "RealMapCertificates/relations/basis2121.json"
theorem reductionProof2121 : EqualModuloRelations reduction2121.relations reduction2121.input reduction2121.output := by lin_cert using reduction2121.terms
theorem substitutionProof2121 : IsMapEvaluation generatorImages reduction2121.relations [2,270] reduction2121.output := by lin_cert using reduction2121.terms
def image2122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2122 : InImage map_10_124 image2122 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2122 : Bundle := named_bundle% "RealMapCertificates/relations/basis2122.json"
theorem reductionProof2122 : EqualModuloRelations reduction2122.relations reduction2122.input reduction2122.output := by lin_cert using reduction2122.terms
theorem substitutionProof2122 : IsMapEvaluation generatorImages reduction2122.relations [1,282] reduction2122.output := by lin_cert using reduction2122.terms
def map_10_125 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2159 : InImage map_10_125 image2159 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2159 : Bundle := named_bundle% "RealMapCertificates/relations/basis2159.json"
theorem reductionProof2159 : EqualModuloRelations reduction2159.relations reduction2159.input reduction2159.output := by lin_cert using reduction2159.terms
theorem substitutionProof2159 : IsMapEvaluation generatorImages reduction2159.relations [1,289] reduction2159.output := by lin_cert using reduction2159.terms
def map_10_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2255 : InImage map_10_127 image2255 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2255 : Bundle := named_bundle% "RealMapCertificates/relations/basis2255.json"
theorem reductionProof2255 : EqualModuloRelations reduction2255.relations reduction2255.input reduction2255.output := by lin_cert using reduction2255.terms
theorem substitutionProof2255 : IsMapEvaluation generatorImages reduction2255.relations [312] reduction2255.output := by lin_cert using reduction2255.terms
def image2256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2256 : InImage map_10_127 image2256 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2256 : Bundle := named_bundle% "RealMapCertificates/relations/basis2256.json"
theorem reductionProof2256 : EqualModuloRelations reduction2256.relations reduction2256.input reduction2256.output := by lin_cert using reduction2256.terms
theorem substitutionProof2256 : IsMapEvaluation generatorImages reduction2256.relations [311] reduction2256.output := by lin_cert using reduction2256.terms
def map_10_128 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2307 : InImage map_10_128 image2307 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2307 : Bundle := named_bundle% "RealMapCertificates/relations/basis2307.json"
theorem reductionProof2307 : EqualModuloRelations reduction2307.relations reduction2307.input reduction2307.output := by lin_cert using reduction2307.terms
theorem substitutionProof2307 : IsMapEvaluation generatorImages reduction2307.relations [321] reduction2307.output := by lin_cert using reduction2307.terms
def image2308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2308 : InImage map_10_128 image2308 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2308 : Bundle := named_bundle% "RealMapCertificates/relations/basis2308.json"
theorem reductionProof2308 : EqualModuloRelations reduction2308.relations reduction2308.input reduction2308.output := by lin_cert using reduction2308.terms
theorem substitutionProof2308 : IsMapEvaluation generatorImages reduction2308.relations [3,270] reduction2308.output := by lin_cert using reduction2308.terms
def image2309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2309 : InImage map_10_128 image2309 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2309 : Bundle := named_bundle% "RealMapCertificates/relations/basis2309.json"
theorem reductionProof2309 : EqualModuloRelations reduction2309.relations reduction2309.input reduction2309.output := by lin_cert using reduction2309.terms
theorem substitutionProof2309 : IsMapEvaluation generatorImages reduction2309.relations [0,314] reduction2309.output := by lin_cert using reduction2309.terms
def map_10_129 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2376 : InImage map_10_129 image2376 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2376 : Bundle := named_bundle% "RealMapCertificates/relations/basis2376.json"
theorem reductionProof2376 : EqualModuloRelations reduction2376.relations reduction2376.input reduction2376.output := by lin_cert using reduction2376.terms
theorem substitutionProof2376 : IsMapEvaluation generatorImages reduction2376.relations [332] reduction2376.output := by lin_cert using reduction2376.terms
def image2377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2377 : InImage map_10_129 image2377 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2377 : Bundle := named_bundle% "RealMapCertificates/relations/basis2377.json"
theorem reductionProof2377 : EqualModuloRelations reduction2377.relations reduction2377.input reduction2377.output := by lin_cert using reduction2377.terms
theorem substitutionProof2377 : IsMapEvaluation generatorImages reduction2377.relations [0,322] reduction2377.output := by lin_cert using reduction2377.terms
def map_10_130 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2428 : InImage map_10_130 image2428 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2428 : Bundle := named_bundle% "RealMapCertificates/relations/basis2428.json"
theorem reductionProof2428 : EqualModuloRelations reduction2428.relations reduction2428.input reduction2428.output := by lin_cert using reduction2428.terms
theorem substitutionProof2428 : IsMapEvaluation generatorImages reduction2428.relations [337] reduction2428.output := by lin_cert using reduction2428.terms
def image2429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2429 : InImage map_10_130 image2429 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2429 : Bundle := named_bundle% "RealMapCertificates/relations/basis2429.json"
theorem reductionProof2429 : EqualModuloRelations reduction2429.relations reduction2429.input reduction2429.output := by lin_cert using reduction2429.terms
theorem substitutionProof2429 : IsMapEvaluation generatorImages reduction2429.relations [1,322] reduction2429.output := by lin_cert using reduction2429.terms
def image2430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2430 : InImage map_10_130 image2430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2430 : Bundle := named_bundle% "RealMapCertificates/relations/basis2430.json"
theorem reductionProof2430 : EqualModuloRelations reduction2430.relations reduction2430.input reduction2430.output := by lin_cert using reduction2430.terms
theorem substitutionProof2430 : IsMapEvaluation generatorImages reduction2430.relations [0,333] reduction2430.output := by lin_cert using reduction2430.terms
def map_10_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2487 : InImage map_10_131 image2487 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2487 : Bundle := named_bundle% "RealMapCertificates/relations/basis2487.json"
theorem reductionProof2487 : EqualModuloRelations reduction2487.relations reduction2487.input reduction2487.output := by lin_cert using reduction2487.terms
theorem substitutionProof2487 : IsMapEvaluation generatorImages reduction2487.relations [0,338] reduction2487.output := by lin_cert using reduction2487.terms
def map_10_133 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2623 : InImage map_10_133 image2623 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2623 : Bundle := named_bundle% "RealMapCertificates/relations/basis2623.json"
theorem reductionProof2623 : EqualModuloRelations reduction2623.relations reduction2623.input reduction2623.output := by lin_cert using reduction2623.terms
theorem substitutionProof2623 : IsMapEvaluation generatorImages reduction2623.relations [372] reduction2623.output := by lin_cert using reduction2623.terms
def image2624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2624 : InImage map_10_133 image2624 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2624 : Bundle := named_bundle% "RealMapCertificates/relations/basis2624.json"
theorem reductionProof2624 : EqualModuloRelations reduction2624.relations reduction2624.input reduction2624.output := by lin_cert using reduction2624.terms
theorem substitutionProof2624 : IsMapEvaluation generatorImages reduction2624.relations [69,80] reduction2624.output := by lin_cert using reduction2624.terms
def image2625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2625 : InImage map_10_133 image2625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2625 : Bundle := named_bundle% "RealMapCertificates/relations/basis2625.json"
theorem reductionProof2625 : EqualModuloRelations reduction2625.relations reduction2625.input reduction2625.output := by lin_cert using reduction2625.terms
theorem substitutionProof2625 : IsMapEvaluation generatorImages reduction2625.relations [0,366] reduction2625.output := by lin_cert using reduction2625.terms
def map_10_134 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2690 : InImage map_10_134 image2690 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2690 : Bundle := named_bundle% "RealMapCertificates/relations/basis2690.json"
theorem reductionProof2690 : EqualModuloRelations reduction2690.relations reduction2690.input reduction2690.output := by lin_cert using reduction2690.terms
theorem substitutionProof2690 : IsMapEvaluation generatorImages reduction2690.relations [389] reduction2690.output := by lin_cert using reduction2690.terms
def image2691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2691 : InImage map_10_134 image2691 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2691 : Bundle := named_bundle% "RealMapCertificates/relations/basis2691.json"
theorem reductionProof2691 : EqualModuloRelations reduction2691.relations reduction2691.input reduction2691.output := by lin_cert using reduction2691.terms
theorem substitutionProof2691 : IsMapEvaluation generatorImages reduction2691.relations [388] reduction2691.output := by lin_cert using reduction2691.terms
def image2692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2692 : InImage map_10_134 image2692 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2692 : Bundle := named_bundle% "RealMapCertificates/relations/basis2692.json"
theorem reductionProof2692 : EqualModuloRelations reduction2692.relations reduction2692.input reduction2692.output := by lin_cert using reduction2692.terms
theorem substitutionProof2692 : IsMapEvaluation generatorImages reduction2692.relations [1,366] reduction2692.output := by lin_cert using reduction2692.terms
def image2693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2693 : InImage map_10_134 image2693 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2693 : Bundle := named_bundle% "RealMapCertificates/relations/basis2693.json"
theorem reductionProof2693 : EqualModuloRelations reduction2693.relations reduction2693.input reduction2693.output := by lin_cert using reduction2693.terms
theorem substitutionProof2693 : IsMapEvaluation generatorImages reduction2693.relations [0,373] reduction2693.output := by lin_cert using reduction2693.terms
def image2694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2694 : InImage map_10_134 image2694 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2694 : Bundle := named_bundle% "RealMapCertificates/relations/basis2694.json"
theorem reductionProof2694 : EqualModuloRelations reduction2694.relations reduction2694.input reduction2694.output := by lin_cert using reduction2694.terms
theorem substitutionProof2694 : IsMapEvaluation generatorImages reduction2694.relations [0,0,367] reduction2694.output := by lin_cert using reduction2694.terms
def map_10_135 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2783 : InImage map_10_135 image2783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2783 : Bundle := named_bundle% "RealMapCertificates/relations/basis2783.json"
theorem reductionProof2783 : EqualModuloRelations reduction2783.relations reduction2783.input reduction2783.output := by lin_cert using reduction2783.terms
theorem substitutionProof2783 : IsMapEvaluation generatorImages reduction2783.relations [413] reduction2783.output := by lin_cert using reduction2783.terms
def image2784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2784 : InImage map_10_135 image2784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2784 : Bundle := named_bundle% "RealMapCertificates/relations/basis2784.json"
theorem reductionProof2784 : EqualModuloRelations reduction2784.relations reduction2784.input reduction2784.output := by lin_cert using reduction2784.terms
theorem substitutionProof2784 : IsMapEvaluation generatorImages reduction2784.relations [412] reduction2784.output := by lin_cert using reduction2784.terms
def image2785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2785 : InImage map_10_135 image2785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2785 : Bundle := named_bundle% "RealMapCertificates/relations/basis2785.json"
theorem reductionProof2785 : EqualModuloRelations reduction2785.relations reduction2785.input reduction2785.output := by lin_cert using reduction2785.terms
theorem substitutionProof2785 : IsMapEvaluation generatorImages reduction2785.relations [0,391] reduction2785.output := by lin_cert using reduction2785.terms
def image2786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2786 : InImage map_10_135 image2786 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2786 : Bundle := named_bundle% "RealMapCertificates/relations/basis2786.json"
theorem reductionProof2786 : EqualModuloRelations reduction2786.relations reduction2786.input reduction2786.output := by lin_cert using reduction2786.terms
theorem substitutionProof2786 : IsMapEvaluation generatorImages reduction2786.relations [0,390] reduction2786.output := by lin_cert using reduction2786.terms
def image2787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2787 : InImage map_10_135 image2787 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2787 : Bundle := named_bundle% "RealMapCertificates/relations/basis2787.json"
theorem reductionProof2787 : EqualModuloRelations reduction2787.relations reduction2787.input reduction2787.output := by lin_cert using reduction2787.terms
theorem substitutionProof2787 : IsMapEvaluation generatorImages reduction2787.relations [0,0,375] reduction2787.output := by lin_cert using reduction2787.terms
def map_10_136 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2855 : InImage map_10_136 image2855 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2855 : Bundle := named_bundle% "RealMapCertificates/relations/basis2855.json"
theorem reductionProof2855 : EqualModuloRelations reduction2855.relations reduction2855.input reduction2855.output := by lin_cert using reduction2855.terms
theorem substitutionProof2855 : IsMapEvaluation generatorImages reduction2855.relations [419] reduction2855.output := by lin_cert using reduction2855.terms
def image2856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2856 : InImage map_10_136 image2856 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2856 : Bundle := named_bundle% "RealMapCertificates/relations/basis2856.json"
theorem reductionProof2856 : EqualModuloRelations reduction2856.relations reduction2856.input reduction2856.output := by lin_cert using reduction2856.terms
theorem substitutionProof2856 : IsMapEvaluation generatorImages reduction2856.relations [0,414] reduction2856.output := by lin_cert using reduction2856.terms
def image2857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2857 : InImage map_10_136 image2857 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2857 : Bundle := named_bundle% "RealMapCertificates/relations/basis2857.json"
theorem reductionProof2857 : EqualModuloRelations reduction2857.relations reduction2857.input reduction2857.output := by lin_cert using reduction2857.terms
theorem substitutionProof2857 : IsMapEvaluation generatorImages reduction2857.relations [0,0,394] reduction2857.output := by lin_cert using reduction2857.terms
def image2858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2858 : InImage map_10_136 image2858 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2858 : Bundle := named_bundle% "RealMapCertificates/relations/basis2858.json"
theorem reductionProof2858 : EqualModuloRelations reduction2858.relations reduction2858.input reduction2858.output := by lin_cert using reduction2858.terms
theorem substitutionProof2858 : IsMapEvaluation generatorImages reduction2858.relations [0,0,392] reduction2858.output := by lin_cert using reduction2858.terms
def image2859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2859 : InImage map_10_136 image2859 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2859 : Bundle := named_bundle% "RealMapCertificates/relations/basis2859.json"
theorem reductionProof2859 : EqualModuloRelations reduction2859.relations reduction2859.input reduction2859.output := by lin_cert using reduction2859.terms
theorem substitutionProof2859 : IsMapEvaluation generatorImages reduction2859.relations [0,0,0,0,0,0,0,0,69,69] reduction2859.output := by lin_cert using reduction2859.terms
def map_10_137 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image2929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2929 : InImage map_10_137 image2929 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction2929 : Bundle := named_bundle% "RealMapCertificates/relations/basis2929.json"
theorem reductionProof2929 : EqualModuloRelations reduction2929.relations reduction2929.input reduction2929.output := by lin_cert using reduction2929.terms
theorem substitutionProof2929 : IsMapEvaluation generatorImages reduction2929.relations [428] reduction2929.output := by lin_cert using reduction2929.terms
def image2930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2930 : InImage map_10_137 image2930 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction2930 : Bundle := named_bundle% "RealMapCertificates/relations/basis2930.json"
theorem reductionProof2930 : EqualModuloRelations reduction2930.relations reduction2930.input reduction2930.output := by lin_cert using reduction2930.terms
theorem substitutionProof2930 : IsMapEvaluation generatorImages reduction2930.relations [3,333] reduction2930.output := by lin_cert using reduction2930.terms
def image2931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2931 : InImage map_10_137 image2931 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction2931 : Bundle := named_bundle% "RealMapCertificates/relations/basis2931.json"
theorem reductionProof2931 : EqualModuloRelations reduction2931.relations reduction2931.input reduction2931.output := by lin_cert using reduction2931.terms
theorem substitutionProof2931 : IsMapEvaluation generatorImages reduction2931.relations [2,373] reduction2931.output := by lin_cert using reduction2931.terms
def image2932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2932 : InImage map_10_137 image2932 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction2932 : Bundle := named_bundle% "RealMapCertificates/relations/basis2932.json"
theorem reductionProof2932 : EqualModuloRelations reduction2932.relations reduction2932.input reduction2932.output := by lin_cert using reduction2932.terms
theorem substitutionProof2932 : IsMapEvaluation generatorImages reduction2932.relations [1,1,375] reduction2932.output := by lin_cert using reduction2932.terms
def image2933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2933 : InImage map_10_137 image2933 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction2933 : Bundle := named_bundle% "RealMapCertificates/relations/basis2933.json"
theorem reductionProof2933 : EqualModuloRelations reduction2933.relations reduction2933.input reduction2933.output := by lin_cert using reduction2933.terms
theorem substitutionProof2933 : IsMapEvaluation generatorImages reduction2933.relations [0,0,415] reduction2933.output := by lin_cert using reduction2933.terms
def image2934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2934 : InImage map_10_137 image2934 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction2934 : Bundle := named_bundle% "RealMapCertificates/relations/basis2934.json"
theorem reductionProof2934 : EqualModuloRelations reduction2934.relations reduction2934.input reduction2934.output := by lin_cert using reduction2934.terms
theorem substitutionProof2934 : IsMapEvaluation generatorImages reduction2934.relations [0,0,0,0,0,0,0,0,0,324] reduction2934.output := by lin_cert using reduction2934.terms
def map_10_138 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3022 : InImage map_10_138 image3022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3022 : Bundle := named_bundle% "RealMapCertificates/relations/basis3022.json"
theorem reductionProof3022 : EqualModuloRelations reduction3022.relations reduction3022.input reduction3022.output := by lin_cert using reduction3022.terms
theorem substitutionProof3022 : IsMapEvaluation generatorImages reduction3022.relations [442] reduction3022.output := by lin_cert using reduction3022.terms
def image3023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3023 : InImage map_10_138 image3023 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3023 : Bundle := named_bundle% "RealMapCertificates/relations/basis3023.json"
theorem reductionProof3023 : EqualModuloRelations reduction3023.relations reduction3023.input reduction3023.output := by lin_cert using reduction3023.terms
theorem substitutionProof3023 : IsMapEvaluation generatorImages reduction3023.relations [441] reduction3023.output := by lin_cert using reduction3023.terms
def image3024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3024 : InImage map_10_138 image3024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3024 : Bundle := named_bundle% "RealMapCertificates/relations/basis3024.json"
theorem reductionProof3024 : EqualModuloRelations reduction3024.relations reduction3024.input reduction3024.output := by lin_cert using reduction3024.terms
theorem substitutionProof3024 : IsMapEvaluation generatorImages reduction3024.relations [2,69,82] reduction3024.output := by lin_cert using reduction3024.terms
def image3025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3025 : InImage map_10_138 image3025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3025 : Bundle := named_bundle% "RealMapCertificates/relations/basis3025.json"
theorem reductionProof3025 : EqualModuloRelations reduction3025.relations reduction3025.input reduction3025.output := by lin_cert using reduction3025.terms
theorem substitutionProof3025 : IsMapEvaluation generatorImages reduction3025.relations [0,0,3,68,69] reduction3025.output := by lin_cert using reduction3025.terms
def map_10_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3091 : InImage map_10_139 image3091 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3091 : Bundle := named_bundle% "RealMapCertificates/relations/basis3091.json"
theorem reductionProof3091 : EqualModuloRelations reduction3091.relations reduction3091.input reduction3091.output := by lin_cert using reduction3091.terms
theorem substitutionProof3091 : IsMapEvaluation generatorImages reduction3091.relations [450] reduction3091.output := by lin_cert using reduction3091.terms
def image3092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3092 : InImage map_10_139 image3092 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3092 : Bundle := named_bundle% "RealMapCertificates/relations/basis3092.json"
theorem reductionProof3092 : EqualModuloRelations reduction3092.relations reduction3092.input reduction3092.output := by lin_cert using reduction3092.terms
theorem substitutionProof3092 : IsMapEvaluation generatorImages reduction3092.relations [0,443] reduction3092.output := by lin_cert using reduction3092.terms
def image3093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3093 : InImage map_10_139 image3093 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3093 : Bundle := named_bundle% "RealMapCertificates/relations/basis3093.json"
theorem reductionProof3093 : EqualModuloRelations reduction3093.relations reduction3093.input reduction3093.output := by lin_cert using reduction3093.terms
theorem substitutionProof3093 : IsMapEvaluation generatorImages reduction3093.relations [0,0,429] reduction3093.output := by lin_cert using reduction3093.terms
def map_10_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3175 : InImage map_10_140 image3175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3175 : Bundle := named_bundle% "RealMapCertificates/relations/basis3175.json"
theorem reductionProof3175 : EqualModuloRelations reduction3175.relations reduction3175.input reduction3175.output := by lin_cert using reduction3175.terms
theorem substitutionProof3175 : IsMapEvaluation generatorImages reduction3175.relations [463] reduction3175.output := by lin_cert using reduction3175.terms
def image3176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3176 : InImage map_10_140 image3176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3176 : Bundle := named_bundle% "RealMapCertificates/relations/basis3176.json"
theorem reductionProof3176 : EqualModuloRelations reduction3176.relations reduction3176.input reduction3176.output := by lin_cert using reduction3176.terms
theorem substitutionProof3176 : IsMapEvaluation generatorImages reduction3176.relations [18,213] reduction3176.output := by lin_cert using reduction3176.terms
def image3177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3177 : InImage map_10_140 image3177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3177 : Bundle := named_bundle% "RealMapCertificates/relations/basis3177.json"
theorem reductionProof3177 : EqualModuloRelations reduction3177.relations reduction3177.input reduction3177.output := by lin_cert using reduction3177.terms
theorem substitutionProof3177 : IsMapEvaluation generatorImages reduction3177.relations [3,366] reduction3177.output := by lin_cert using reduction3177.terms
def image3178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3178 : InImage map_10_140 image3178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3178 : Bundle := named_bundle% "RealMapCertificates/relations/basis3178.json"
theorem reductionProof3178 : EqualModuloRelations reduction3178.relations reduction3178.input reduction3178.output := by lin_cert using reduction3178.terms
theorem substitutionProof3178 : IsMapEvaluation generatorImages reduction3178.relations [0,3,352] reduction3178.output := by lin_cert using reduction3178.terms
def image3179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3179 : InImage map_10_140 image3179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3179 : Bundle := named_bundle% "RealMapCertificates/relations/basis3179.json"
theorem reductionProof3179 : EqualModuloRelations reduction3179.relations reduction3179.input reduction3179.output := by lin_cert using reduction3179.terms
theorem substitutionProof3179 : IsMapEvaluation generatorImages reduction3179.relations [0,0,445] reduction3179.output := by lin_cert using reduction3179.terms
def map_10_141 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3271 : InImage map_10_141 image3271 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3271 : Bundle := named_bundle% "RealMapCertificates/relations/basis3271.json"
theorem reductionProof3271 : EqualModuloRelations reduction3271.relations reduction3271.input reduction3271.output := by lin_cert using reduction3271.terms
theorem substitutionProof3271 : IsMapEvaluation generatorImages reduction3271.relations [478] reduction3271.output := by lin_cert using reduction3271.terms
def image3272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3272 : InImage map_10_141 image3272 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3272 : Bundle := named_bundle% "RealMapCertificates/relations/basis3272.json"
theorem reductionProof3272 : EqualModuloRelations reduction3272.relations reduction3272.input reduction3272.output := by lin_cert using reduction3272.terms
theorem substitutionProof3272 : IsMapEvaluation generatorImages reduction3272.relations [2,2,376] reduction3272.output := by lin_cert using reduction3272.terms
def image3273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3273 : InImage map_10_141 image3273 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3273 : Bundle := named_bundle% "RealMapCertificates/relations/basis3273.json"
theorem reductionProof3273 : EqualModuloRelations reduction3273.relations reduction3273.input reduction3273.output := by lin_cert using reduction3273.terms
theorem substitutionProof3273 : IsMapEvaluation generatorImages reduction3273.relations [0,464] reduction3273.output := by lin_cert using reduction3273.terms
def image3274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3274 : InImage map_10_141 image3274 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3274 : Bundle := named_bundle% "RealMapCertificates/relations/basis3274.json"
theorem reductionProof3274 : EqualModuloRelations reduction3274.relations reduction3274.input reduction3274.output := by lin_cert using reduction3274.terms
theorem substitutionProof3274 : IsMapEvaluation generatorImages reduction3274.relations [0,0,451] reduction3274.output := by lin_cert using reduction3274.terms
def map_10_142 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3342 : InImage map_10_142 image3342 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3342 : Bundle := named_bundle% "RealMapCertificates/relations/basis3342.json"
theorem reductionProof3342 : EqualModuloRelations reduction3342.relations reduction3342.input reduction3342.output := by lin_cert using reduction3342.terms
theorem substitutionProof3342 : IsMapEvaluation generatorImages reduction3342.relations [3,391] reduction3342.output := by lin_cert using reduction3342.terms
def image3343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3343 : InImage map_10_142 image3343 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3343 : Bundle := named_bundle% "RealMapCertificates/relations/basis3343.json"
theorem reductionProof3343 : EqualModuloRelations reduction3343.relations reduction3343.input reduction3343.output := by lin_cert using reduction3343.terms
theorem substitutionProof3343 : IsMapEvaluation generatorImages reduction3343.relations [3,390] reduction3343.output := by lin_cert using reduction3343.terms
def image3344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3344 : InImage map_10_142 image3344 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3344 : Bundle := named_bundle% "RealMapCertificates/relations/basis3344.json"
theorem reductionProof3344 : EqualModuloRelations reduction3344.relations reduction3344.input reduction3344.output := by lin_cert using reduction3344.terms
theorem substitutionProof3344 : IsMapEvaluation generatorImages reduction3344.relations [0,479] reduction3344.output := by lin_cert using reduction3344.terms
def image3345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3345 : InImage map_10_142 image3345 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3345 : Bundle := named_bundle% "RealMapCertificates/relations/basis3345.json"
theorem reductionProof3345 : EqualModuloRelations reduction3345.relations reduction3345.input reduction3345.output := by lin_cert using reduction3345.terms
theorem substitutionProof3345 : IsMapEvaluation generatorImages reduction3345.relations [0,2,69,95] reduction3345.output := by lin_cert using reduction3345.terms
def image3346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3346 : InImage map_10_142 image3346 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3346 : Bundle := named_bundle% "RealMapCertificates/relations/basis3346.json"
theorem reductionProof3346 : EqualModuloRelations reduction3346.relations reduction3346.input reduction3346.output := by lin_cert using reduction3346.terms
theorem substitutionProof3346 : IsMapEvaluation generatorImages reduction3346.relations [0,0,0,0,446] reduction3346.output := by lin_cert using reduction3346.terms
def map_10_143 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3430 : InImage map_10_143 image3430 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3430 : Bundle := named_bundle% "RealMapCertificates/relations/basis3430.json"
theorem reductionProof3430 : EqualModuloRelations reduction3430.relations reduction3430.input reduction3430.output := by lin_cert using reduction3430.terms
theorem substitutionProof3430 : IsMapEvaluation generatorImages reduction3430.relations [7,314] reduction3430.output := by lin_cert using reduction3430.terms
def image3431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3431 : InImage map_10_143 image3431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3431 : Bundle := named_bundle% "RealMapCertificates/relations/basis3431.json"
theorem reductionProof3431 : EqualModuloRelations reduction3431.relations reduction3431.input reduction3431.output := by lin_cert using reduction3431.terms
theorem substitutionProof3431 : IsMapEvaluation generatorImages reduction3431.relations [1,479] reduction3431.output := by lin_cert using reduction3431.terms
def image3432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3432 : InImage map_10_143 image3432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3432 : Bundle := named_bundle% "RealMapCertificates/relations/basis3432.json"
theorem reductionProof3432 : EqualModuloRelations reduction3432.relations reduction3432.input reduction3432.output := by lin_cert using reduction3432.terms
theorem substitutionProof3432 : IsMapEvaluation generatorImages reduction3432.relations [0,3,392] reduction3432.output := by lin_cert using reduction3432.terms
def image3433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3433 : InImage map_10_143 image3433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3433 : Bundle := named_bundle% "RealMapCertificates/relations/basis3433.json"
theorem reductionProof3433 : EqualModuloRelations reduction3433.relations reduction3433.input reduction3433.output := by lin_cert using reduction3433.terms
theorem substitutionProof3433 : IsMapEvaluation generatorImages reduction3433.relations [0,2,445] reduction3433.output := by lin_cert using reduction3433.terms
def image3434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3434 : InImage map_10_143 image3434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3434 : Bundle := named_bundle% "RealMapCertificates/relations/basis3434.json"
theorem reductionProof3434 : EqualModuloRelations reduction3434.relations reduction3434.input reduction3434.output := by lin_cert using reduction3434.terms
theorem substitutionProof3434 : IsMapEvaluation generatorImages reduction3434.relations [0,0,480] reduction3434.output := by lin_cert using reduction3434.terms
def map_10_144 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3521 : InImage map_10_144 image3521 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3521 : Bundle := named_bundle% "RealMapCertificates/relations/basis3521.json"
theorem reductionProof3521 : EqualModuloRelations reduction3521.relations reduction3521.input reduction3521.output := by lin_cert using reduction3521.terms
theorem substitutionProof3521 : IsMapEvaluation generatorImages reduction3521.relations [7,322] reduction3521.output := by lin_cert using reduction3521.terms
def map_10_145 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3587 : InImage map_10_145 image3587 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3587 : Bundle := named_bundle% "RealMapCertificates/relations/basis3587.json"
theorem reductionProof3587 : EqualModuloRelations reduction3587.relations reduction3587.input reduction3587.output := by lin_cert using reduction3587.terms
theorem substitutionProof3587 : IsMapEvaluation generatorImages reduction3587.relations [512] reduction3587.output := by lin_cert using reduction3587.terms
def image3588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3588 : InImage map_10_145 image3588 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3588 : Bundle := named_bundle% "RealMapCertificates/relations/basis3588.json"
theorem reductionProof3588 : EqualModuloRelations reduction3588.relations reduction3588.input reduction3588.output := by lin_cert using reduction3588.terms
theorem substitutionProof3588 : IsMapEvaluation generatorImages reduction3588.relations [7,333] reduction3588.output := by lin_cert using reduction3588.terms
def image3589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3589 : InImage map_10_145 image3589 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3589 : Bundle := named_bundle% "RealMapCertificates/relations/basis3589.json"
theorem reductionProof3589 : EqualModuloRelations reduction3589.relations reduction3589.input reduction3589.output := by lin_cert using reduction3589.terms
theorem substitutionProof3589 : IsMapEvaluation generatorImages reduction3589.relations [2,479] reduction3589.output := by lin_cert using reduction3589.terms
def image3590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3590 : InImage map_10_145 image3590 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3590 : Bundle := named_bundle% "RealMapCertificates/relations/basis3590.json"
theorem reductionProof3590 : EqualModuloRelations reduction3590.relations reduction3590.input reduction3590.output := by lin_cert using reduction3590.terms
theorem substitutionProof3590 : IsMapEvaluation generatorImages reduction3590.relations [0,504] reduction3590.output := by lin_cert using reduction3590.terms
def map_10_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3674 : InImage map_10_146 image3674 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3674 : Bundle := named_bundle% "RealMapCertificates/relations/basis3674.json"
theorem reductionProof3674 : EqualModuloRelations reduction3674.relations reduction3674.input reduction3674.output := by lin_cert using reduction3674.terms
theorem substitutionProof3674 : IsMapEvaluation generatorImages reduction3674.relations [522] reduction3674.output := by lin_cert using reduction3674.terms
def image3675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3675 : InImage map_10_146 image3675 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3675 : Bundle := named_bundle% "RealMapCertificates/relations/basis3675.json"
theorem reductionProof3675 : EqualModuloRelations reduction3675.relations reduction3675.input reduction3675.output := by lin_cert using reduction3675.terms
theorem substitutionProof3675 : IsMapEvaluation generatorImages reduction3675.relations [521] reduction3675.output := by lin_cert using reduction3675.terms
def image3676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3676 : InImage map_10_146 image3676 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3676 : Bundle := named_bundle% "RealMapCertificates/relations/basis3676.json"
theorem reductionProof3676 : EqualModuloRelations reduction3676.relations reduction3676.input reduction3676.output := by lin_cert using reduction3676.terms
theorem substitutionProof3676 : IsMapEvaluation generatorImages reduction3676.relations [1,504] reduction3676.output := by lin_cert using reduction3676.terms
def image3677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3677 : InImage map_10_146 image3677 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3677 : Bundle := named_bundle% "RealMapCertificates/relations/basis3677.json"
theorem reductionProof3677 : EqualModuloRelations reduction3677.relations reduction3677.input reduction3677.output := by lin_cert using reduction3677.terms
theorem substitutionProof3677 : IsMapEvaluation generatorImages reduction3677.relations [0,514] reduction3677.output := by lin_cert using reduction3677.terms
def image3678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3678 : InImage map_10_146 image3678 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3678 : Bundle := named_bundle% "RealMapCertificates/relations/basis3678.json"
theorem reductionProof3678 : EqualModuloRelations reduction3678.relations reduction3678.input reduction3678.output := by lin_cert using reduction3678.terms
theorem substitutionProof3678 : IsMapEvaluation generatorImages reduction3678.relations [0,513] reduction3678.output := by lin_cert using reduction3678.terms
def map_10_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3779 : InImage map_10_147 image3779 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3779 : Bundle := named_bundle% "RealMapCertificates/relations/basis3779.json"
theorem reductionProof3779 : EqualModuloRelations reduction3779.relations reduction3779.input reduction3779.output := by lin_cert using reduction3779.terms
theorem substitutionProof3779 : IsMapEvaluation generatorImages reduction3779.relations [3,3,352] reduction3779.output := by lin_cert using reduction3779.terms
def image3780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3780 : InImage map_10_147 image3780 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3780 : Bundle := named_bundle% "RealMapCertificates/relations/basis3780.json"
theorem reductionProof3780 : EqualModuloRelations reduction3780.relations reduction3780.input reduction3780.output := by lin_cert using reduction3780.terms
theorem substitutionProof3780 : IsMapEvaluation generatorImages reduction3780.relations [1,513] reduction3780.output := by lin_cert using reduction3780.terms
def image3781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3781 : InImage map_10_147 image3781 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3781 : Bundle := named_bundle% "RealMapCertificates/relations/basis3781.json"
theorem reductionProof3781 : EqualModuloRelations reduction3781.relations reduction3781.input reduction3781.output := by lin_cert using reduction3781.terms
theorem substitutionProof3781 : IsMapEvaluation generatorImages reduction3781.relations [0,523] reduction3781.output := by lin_cert using reduction3781.terms
def map_10_148 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3847 : InImage map_10_148 image3847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3847 : Bundle := named_bundle% "RealMapCertificates/relations/basis3847.json"
theorem reductionProof3847 : EqualModuloRelations reduction3847.relations reduction3847.input reduction3847.output := by lin_cert using reduction3847.terms
theorem substitutionProof3847 : IsMapEvaluation generatorImages reduction3847.relations [544] reduction3847.output := by lin_cert using reduction3847.terms
def image3848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3848 : InImage map_10_148 image3848 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3848 : Bundle := named_bundle% "RealMapCertificates/relations/basis3848.json"
theorem reductionProof3848 : EqualModuloRelations reduction3848.relations reduction3848.input reduction3848.output := by lin_cert using reduction3848.terms
theorem substitutionProof3848 : IsMapEvaluation generatorImages reduction3848.relations [7,366] reduction3848.output := by lin_cert using reduction3848.terms
def image3849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3849 : InImage map_10_148 image3849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3849 : Bundle := named_bundle% "RealMapCertificates/relations/basis3849.json"
theorem reductionProof3849 : EqualModuloRelations reduction3849.relations reduction3849.input reduction3849.output := by lin_cert using reduction3849.terms
theorem substitutionProof3849 : IsMapEvaluation generatorImages reduction3849.relations [1,523] reduction3849.output := by lin_cert using reduction3849.terms
def image3850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3850 : InImage map_10_148 image3850 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3850 : Bundle := named_bundle% "RealMapCertificates/relations/basis3850.json"
theorem reductionProof3850 : EqualModuloRelations reduction3850.relations reduction3850.input reduction3850.output := by lin_cert using reduction3850.terms
theorem substitutionProof3850 : IsMapEvaluation generatorImages reduction3850.relations [0,7,352] reduction3850.output := by lin_cert using reduction3850.terms
def image3851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3851 : InImage map_10_148 image3851 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3851 : Bundle := named_bundle% "RealMapCertificates/relations/basis3851.json"
theorem reductionProof3851 : EqualModuloRelations reduction3851.relations reduction3851.input reduction3851.output := by lin_cert using reduction3851.terms
theorem substitutionProof3851 : IsMapEvaluation generatorImages reduction3851.relations [0,0,524] reduction3851.output := by lin_cert using reduction3851.terms
def map_10_149 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3934 : InImage map_10_149 image3934 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3934 : Bundle := named_bundle% "RealMapCertificates/relations/basis3934.json"
theorem reductionProof3934 : EqualModuloRelations reduction3934.relations reduction3934.input reduction3934.output := by lin_cert using reduction3934.terms
theorem substitutionProof3934 : IsMapEvaluation generatorImages reduction3934.relations [69,133] reduction3934.output := by lin_cert using reduction3934.terms
def image3935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3935 : InImage map_10_149 image3935 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3935 : Bundle := named_bundle% "RealMapCertificates/relations/basis3935.json"
theorem reductionProof3935 : EqualModuloRelations reduction3935.relations reduction3935.input reduction3935.output := by lin_cert using reduction3935.terms
theorem substitutionProof3935 : IsMapEvaluation generatorImages reduction3935.relations [1,535] reduction3935.output := by lin_cert using reduction3935.terms
def image3936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3936 : InImage map_10_149 image3936 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3936 : Bundle := named_bundle% "RealMapCertificates/relations/basis3936.json"
theorem reductionProof3936 : EqualModuloRelations reduction3936.relations reduction3936.input reduction3936.output := by lin_cert using reduction3936.terms
theorem substitutionProof3936 : IsMapEvaluation generatorImages reduction3936.relations [0,7,367] reduction3936.output := by lin_cert using reduction3936.terms
def image3937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3937 : InImage map_10_149 image3937 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3937 : Bundle := named_bundle% "RealMapCertificates/relations/basis3937.json"
theorem reductionProof3937 : EqualModuloRelations reduction3937.relations reduction3937.input reduction3937.output := by lin_cert using reduction3937.terms
theorem substitutionProof3937 : IsMapEvaluation generatorImages reduction3937.relations [0,0,0,0,0,506] reduction3937.output := by lin_cert using reduction3937.terms
def map_10_150 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image4039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4039 : InImage map_10_150 image4039 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction4039 : Bundle := named_bundle% "RealMapCertificates/relations/basis4039.json"
theorem reductionProof4039 : EqualModuloRelations reduction4039.relations reduction4039.input reduction4039.output := by lin_cert using reduction4039.terms
theorem substitutionProof4039 : IsMapEvaluation generatorImages reduction4039.relations [564] reduction4039.output := by lin_cert using reduction4039.terms
def image4040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4040 : InImage map_10_150 image4040 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction4040 : Bundle := named_bundle% "RealMapCertificates/relations/basis4040.json"
theorem reductionProof4040 : EqualModuloRelations reduction4040.relations reduction4040.input reduction4040.output := by lin_cert using reduction4040.terms
theorem substitutionProof4040 : IsMapEvaluation generatorImages reduction4040.relations [563] reduction4040.output := by lin_cert using reduction4040.terms
def image4041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4041 : InImage map_10_150 image4041 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction4041 : Bundle := named_bundle% "RealMapCertificates/relations/basis4041.json"
theorem reductionProof4041 : EqualModuloRelations reduction4041.relations reduction4041.input reduction4041.output := by lin_cert using reduction4041.terms
theorem substitutionProof4041 : IsMapEvaluation generatorImages reduction4041.relations [2,523] reduction4041.output := by lin_cert using reduction4041.terms
def image4042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4042 : InImage map_10_150 image4042 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction4042 : Bundle := named_bundle% "RealMapCertificates/relations/basis4042.json"
theorem reductionProof4042 : EqualModuloRelations reduction4042.relations reduction4042.input reduction4042.output := by lin_cert using reduction4042.terms
theorem substitutionProof4042 : IsMapEvaluation generatorImages reduction4042.relations [1,545] reduction4042.output := by lin_cert using reduction4042.terms
def image4043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4043 : InImage map_10_150 image4043 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction4043 : Bundle := named_bundle% "RealMapCertificates/relations/basis4043.json"
theorem reductionProof4043 : EqualModuloRelations reduction4043.relations reduction4043.input reduction4043.output := by lin_cert using reduction4043.terms
theorem substitutionProof4043 : IsMapEvaluation generatorImages reduction4043.relations [0,3,480] reduction4043.output := by lin_cert using reduction4043.terms
def image4044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4044 : InImage map_10_150 image4044 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction4044 : Bundle := named_bundle% "RealMapCertificates/relations/basis4044.json"
theorem reductionProof4044 : EqualModuloRelations reduction4044.relations reduction4044.input reduction4044.output := by lin_cert using reduction4044.terms
theorem substitutionProof4044 : IsMapEvaluation generatorImages reduction4044.relations [0,0,546] reduction4044.output := by lin_cert using reduction4044.terms
end RealMapCertificates
