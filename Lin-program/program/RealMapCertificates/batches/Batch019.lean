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
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 34 => []
  | 36 => []
  | 42 => [[5,5,7]]
  | 68 => []
  | 69 => []
  | 76 => []
  | 134 => []
  | 163 => []
  | 314 => []
  | 324 => []
  | 333 => []
  | 338 => []
  | 352 => []
  | 366 => []
  | 367 => []
  | 368 => []
  | 373 => []
  | 376 => []
  | 394 => []
  | 396 => []
  | 414 => []
  | 415 => []
  | 443 => []
  | 445 => []
  | 446 => []
  | 479 => []
  | 504 => []
  | 523 => []
  | 524 => []
  | 526 => []
  | 535 => []
  | 546 => []
  | 565 => []
  | 571 => []
  | 577 => []
  | 632 => []
  | 633 => []
  | 658 => []
  | 659 => []
  | 676 => []
  | 684 => []
  | 696 => []
  | 714 => []
  | 720 => []
  | 746 => []
  | 747 => []
  | 756 => []
  | 757 => []
  | 771 => []
  | 772 => []
  | 773 => []
  | 774 => []
  | 782 => []
  | 791 => []
  | 792 => []
  | 793 => []
  | 802 => []
  | 818 => []
  | 828 => []
  | 846 => []
  | 847 => []
  | 848 => []
  | _ => []
def map_10_151 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4125 : InImage map_10_151 image4125 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4125 : Bundle := named_bundle% "RealMapCertificates/relations/basis4125.json"
theorem reductionProof4125 : EqualModuloRelations reduction4125.relations reduction4125.input reduction4125.output := by lin_cert using reduction4125.terms
theorem substitutionProof4125 : IsMapEvaluation generatorImages reduction4125.relations [571] reduction4125.output := by lin_cert using reduction4125.terms
def image4126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4126 : InImage map_10_151 image4126 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4126 : Bundle := named_bundle% "RealMapCertificates/relations/basis4126.json"
theorem reductionProof4126 : EqualModuloRelations reduction4126.relations reduction4126.input reduction4126.output := by lin_cert using reduction4126.terms
theorem substitutionProof4126 : IsMapEvaluation generatorImages reduction4126.relations [7,414] reduction4126.output := by lin_cert using reduction4126.terms
def image4127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4127 : InImage map_10_151 image4127 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4127 : Bundle := named_bundle% "RealMapCertificates/relations/basis4127.json"
theorem reductionProof4127 : EqualModuloRelations reduction4127.relations reduction4127.input reduction4127.output := by lin_cert using reduction4127.terms
theorem substitutionProof4127 : IsMapEvaluation generatorImages reduction4127.relations [0,7,394] reduction4127.output := by lin_cert using reduction4127.terms
def image4128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4128 : InImage map_10_151 image4128 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4128 : Bundle := named_bundle% "RealMapCertificates/relations/basis4128.json"
theorem reductionProof4128 : EqualModuloRelations reduction4128.relations reduction4128.input reduction4128.output := by lin_cert using reduction4128.terms
theorem substitutionProof4128 : IsMapEvaluation generatorImages reduction4128.relations [0,2,524] reduction4128.output := by lin_cert using reduction4128.terms
def image4129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4129 : InImage map_10_151 image4129 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4129 : Bundle := named_bundle% "RealMapCertificates/relations/basis4129.json"
theorem reductionProof4129 : EqualModuloRelations reduction4129.relations reduction4129.input reduction4129.output := by lin_cert using reduction4129.terms
theorem substitutionProof4129 : IsMapEvaluation generatorImages reduction4129.relations [0,0,0,0,0,526] reduction4129.output := by lin_cert using reduction4129.terms
def map_10_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4216 : InImage map_10_152 image4216 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4216 : Bundle := named_bundle% "RealMapCertificates/relations/basis4216.json"
theorem reductionProof4216 : EqualModuloRelations reduction4216.relations reduction4216.input reduction4216.output := by lin_cert using reduction4216.terms
theorem substitutionProof4216 : IsMapEvaluation generatorImages reduction4216.relations [3,504] reduction4216.output := by lin_cert using reduction4216.terms
def image4217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4217 : InImage map_10_152 image4217 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4217 : Bundle := named_bundle% "RealMapCertificates/relations/basis4217.json"
theorem reductionProof4217 : EqualModuloRelations reduction4217.relations reduction4217.input reduction4217.output := by lin_cert using reduction4217.terms
theorem substitutionProof4217 : IsMapEvaluation generatorImages reduction4217.relations [1,1,546] reduction4217.output := by lin_cert using reduction4217.terms
def image4218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4218 : InImage map_10_152 image4218 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4218 : Bundle := named_bundle% "RealMapCertificates/relations/basis4218.json"
theorem reductionProof4218 : EqualModuloRelations reduction4218.relations reduction4218.input reduction4218.output := by lin_cert using reduction4218.terms
theorem substitutionProof4218 : IsMapEvaluation generatorImages reduction4218.relations [0,7,415] reduction4218.output := by lin_cert using reduction4218.terms
def image4219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4219 : InImage map_10_152 image4219 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4219 : Bundle := named_bundle% "RealMapCertificates/relations/basis4219.json"
theorem reductionProof4219 : EqualModuloRelations reduction4219.relations reduction4219.input reduction4219.output := by lin_cert using reduction4219.terms
theorem substitutionProof4219 : IsMapEvaluation generatorImages reduction4219.relations [0,0,7,396] reduction4219.output := by lin_cert using reduction4219.terms
def map_10_153 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4313 : InImage map_10_153 image4313 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4313 : Bundle := named_bundle% "RealMapCertificates/relations/basis4313.json"
theorem reductionProof4313 : EqualModuloRelations reduction4313.relations reduction4313.input reduction4313.output := by lin_cert using reduction4313.terms
theorem substitutionProof4313 : IsMapEvaluation generatorImages reduction4313.relations [2,69,134] reduction4313.output := by lin_cert using reduction4313.terms
def image4314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4314 : InImage map_10_153 image4314 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4314 : Bundle := named_bundle% "RealMapCertificates/relations/basis4314.json"
theorem reductionProof4314 : EqualModuloRelations reduction4314.relations reduction4314.input reduction4314.output := by lin_cert using reduction4314.terms
theorem substitutionProof4314 : IsMapEvaluation generatorImages reduction4314.relations [1,12,69,69] reduction4314.output := by lin_cert using reduction4314.terms
def image4315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4315 : InImage map_10_153 image4315 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4315 : Bundle := named_bundle% "RealMapCertificates/relations/basis4315.json"
theorem reductionProof4315 : EqualModuloRelations reduction4315.relations reduction4315.input reduction4315.output := by lin_cert using reduction4315.terms
theorem substitutionProof4315 : IsMapEvaluation generatorImages reduction4315.relations [1,7,415] reduction4315.output := by lin_cert using reduction4315.terms
def map_10_154 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4374 : InImage map_10_154 image4374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4374 : Bundle := named_bundle% "RealMapCertificates/relations/basis4374.json"
theorem reductionProof4374 : EqualModuloRelations reduction4374.relations reduction4374.input reduction4374.output := by lin_cert using reduction4374.terms
theorem substitutionProof4374 : IsMapEvaluation generatorImages reduction4374.relations [14,324] reduction4374.output := by lin_cert using reduction4374.terms
def image4375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4375 : InImage map_10_154 image4375 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4375 : Bundle := named_bundle% "RealMapCertificates/relations/basis4375.json"
theorem reductionProof4375 : EqualModuloRelations reduction4375.relations reduction4375.input reduction4375.output := by lin_cert using reduction4375.terms
theorem substitutionProof4375 : IsMapEvaluation generatorImages reduction4375.relations [3,523] reduction4375.output := by lin_cert using reduction4375.terms
def image4376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4376 : InImage map_10_154 image4376 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4376 : Bundle := named_bundle% "RealMapCertificates/relations/basis4376.json"
theorem reductionProof4376 : EqualModuloRelations reduction4376.relations reduction4376.input reduction4376.output := by lin_cert using reduction4376.terms
theorem substitutionProof4376 : IsMapEvaluation generatorImages reduction4376.relations [2,565] reduction4376.output := by lin_cert using reduction4376.terms
def image4377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4377 : InImage map_10_154 image4377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4377 : Bundle := named_bundle% "RealMapCertificates/relations/basis4377.json"
theorem reductionProof4377 : EqualModuloRelations reduction4377.relations reduction4377.input reduction4377.output := by lin_cert using reduction4377.terms
theorem substitutionProof4377 : IsMapEvaluation generatorImages reduction4377.relations [0,0,577] reduction4377.output := by lin_cert using reduction4377.terms
def map_10_155 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4462 : InImage map_10_155 image4462 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4462 : Bundle := named_bundle% "RealMapCertificates/relations/basis4462.json"
theorem reductionProof4462 : EqualModuloRelations reduction4462.relations reduction4462.input reduction4462.output := by lin_cert using reduction4462.terms
theorem substitutionProof4462 : IsMapEvaluation generatorImages reduction4462.relations [13,69,76] reduction4462.output := by lin_cert using reduction4462.terms
def image4463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4463 : InImage map_10_155 image4463 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4463 : Bundle := named_bundle% "RealMapCertificates/relations/basis4463.json"
theorem reductionProof4463 : EqualModuloRelations reduction4463.relations reduction4463.input reduction4463.output := by lin_cert using reduction4463.terms
theorem substitutionProof4463 : IsMapEvaluation generatorImages reduction4463.relations [3,535] reduction4463.output := by lin_cert using reduction4463.terms
def image4464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4464 : InImage map_10_155 image4464 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4464 : Bundle := named_bundle% "RealMapCertificates/relations/basis4464.json"
theorem reductionProof4464 : EqualModuloRelations reduction4464.relations reduction4464.input reduction4464.output := by lin_cert using reduction4464.terms
theorem substitutionProof4464 : IsMapEvaluation generatorImages reduction4464.relations [0,3,524] reduction4464.output := by lin_cert using reduction4464.terms
def map_10_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4575 : InImage map_10_156 image4575 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4575 : Bundle := named_bundle% "RealMapCertificates/relations/basis4575.json"
theorem reductionProof4575 : EqualModuloRelations reduction4575.relations reduction4575.input reduction4575.output := by lin_cert using reduction4575.terms
theorem substitutionProof4575 : IsMapEvaluation generatorImages reduction4575.relations [15,324] reduction4575.output := by lin_cert using reduction4575.terms
def image4576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4576 : InImage map_10_156 image4576 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4576 : Bundle := named_bundle% "RealMapCertificates/relations/basis4576.json"
theorem reductionProof4576 : EqualModuloRelations reduction4576.relations reduction4576.input reduction4576.output := by lin_cert using reduction4576.terms
theorem substitutionProof4576 : IsMapEvaluation generatorImages reduction4576.relations [13,368] reduction4576.output := by lin_cert using reduction4576.terms
def image4577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4577 : InImage map_10_156 image4577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4577 : Bundle := named_bundle% "RealMapCertificates/relations/basis4577.json"
theorem reductionProof4577 : EqualModuloRelations reduction4577.relations reduction4577.input reduction4577.output := by lin_cert using reduction4577.terms
theorem substitutionProof4577 : IsMapEvaluation generatorImages reduction4577.relations [1,3,524] reduction4577.output := by lin_cert using reduction4577.terms
def image4578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4578 : InImage map_10_156 image4578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4578 : Bundle := named_bundle% "RealMapCertificates/relations/basis4578.json"
theorem reductionProof4578 : EqualModuloRelations reduction4578.relations reduction4578.input reduction4578.output := by lin_cert using reduction4578.terms
theorem substitutionProof4578 : IsMapEvaluation generatorImages reduction4578.relations [1,1,577] reduction4578.output := by lin_cert using reduction4578.terms
def map_10_157 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4651 : InImage map_10_157 image4651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4651 : Bundle := named_bundle% "RealMapCertificates/relations/basis4651.json"
theorem reductionProof4651 : EqualModuloRelations reduction4651.relations reduction4651.input reduction4651.output := by lin_cert using reduction4651.terms
theorem substitutionProof4651 : IsMapEvaluation generatorImages reduction4651.relations [7,479] reduction4651.output := by lin_cert using reduction4651.terms
def image4652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4652 : InImage map_10_157 image4652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4652 : Bundle := named_bundle% "RealMapCertificates/relations/basis4652.json"
theorem reductionProof4652 : EqualModuloRelations reduction4652.relations reduction4652.input reduction4652.output := by lin_cert using reduction4652.terms
theorem substitutionProof4652 : IsMapEvaluation generatorImages reduction4652.relations [0,0,0,7,446] reduction4652.output := by lin_cert using reduction4652.terms
def map_10_158 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4731 : InImage map_10_158 image4731 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4731 : Bundle := named_bundle% "RealMapCertificates/relations/basis4731.json"
theorem reductionProof4731 : EqualModuloRelations reduction4731.relations reduction4731.input reduction4731.output := by lin_cert using reduction4731.terms
theorem substitutionProof4731 : IsMapEvaluation generatorImages reduction4731.relations [632] reduction4731.output := by lin_cert using reduction4731.terms
def image4732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4732 : InImage map_10_158 image4732 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4732 : Bundle := named_bundle% "RealMapCertificates/relations/basis4732.json"
theorem reductionProof4732 : EqualModuloRelations reduction4732.relations reduction4732.input reduction4732.output := by lin_cert using reduction4732.terms
theorem substitutionProof4732 : IsMapEvaluation generatorImages reduction4732.relations [16,69,69] reduction4732.output := by lin_cert using reduction4732.terms
def map_10_159 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4834 : InImage map_10_159 image4834 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4834 : Bundle := named_bundle% "RealMapCertificates/relations/basis4834.json"
theorem reductionProof4834 : EqualModuloRelations reduction4834.relations reduction4834.input reduction4834.output := by lin_cert using reduction4834.terms
theorem substitutionProof4834 : IsMapEvaluation generatorImages reduction4834.relations [18,314] reduction4834.output := by lin_cert using reduction4834.terms
def image4835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4835 : InImage map_10_159 image4835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4835 : Bundle := named_bundle% "RealMapCertificates/relations/basis4835.json"
theorem reductionProof4835 : EqualModuloRelations reduction4835.relations reduction4835.input reduction4835.output := by lin_cert using reduction4835.terms
theorem substitutionProof4835 : IsMapEvaluation generatorImages reduction4835.relations [0,17,69,69] reduction4835.output := by lin_cert using reduction4835.terms
def image4836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4836 : InImage map_10_159 image4836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4836 : Bundle := named_bundle% "RealMapCertificates/relations/basis4836.json"
theorem reductionProof4836 : EqualModuloRelations reduction4836.relations reduction4836.input reduction4836.output := by lin_cert using reduction4836.terms
theorem substitutionProof4836 : IsMapEvaluation generatorImages reduction4836.relations [0,16,324] reduction4836.output := by lin_cert using reduction4836.terms
def map_10_160 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4907 : InImage map_10_160 image4907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4907 : Bundle := named_bundle% "RealMapCertificates/relations/basis4907.json"
theorem reductionProof4907 : EqualModuloRelations reduction4907.relations reduction4907.input reduction4907.output := by lin_cert using reduction4907.terms
theorem substitutionProof4907 : IsMapEvaluation generatorImages reduction4907.relations [68,163] reduction4907.output := by lin_cert using reduction4907.terms
def image4908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4908 : InImage map_10_160 image4908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4908 : Bundle := named_bundle% "RealMapCertificates/relations/basis4908.json"
theorem reductionProof4908 : EqualModuloRelations reduction4908.relations reduction4908.input reduction4908.output := by lin_cert using reduction4908.terms
theorem substitutionProof4908 : IsMapEvaluation generatorImages reduction4908.relations [1,633] reduction4908.output := by lin_cert using reduction4908.terms
def image4909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4909 : InImage map_10_160 image4909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4909 : Bundle := named_bundle% "RealMapCertificates/relations/basis4909.json"
theorem reductionProof4909 : EqualModuloRelations reduction4909.relations reduction4909.input reduction4909.output := by lin_cert using reduction4909.terms
theorem substitutionProof4909 : IsMapEvaluation generatorImages reduction4909.relations [1,16,324] reduction4909.output := by lin_cert using reduction4909.terms
def image4910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4910 : InImage map_10_160 image4910 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4910 : Bundle := named_bundle% "RealMapCertificates/relations/basis4910.json"
theorem reductionProof4910 : EqualModuloRelations reduction4910.relations reduction4910.input reduction4910.output := by lin_cert using reduction4910.terms
theorem substitutionProof4910 : IsMapEvaluation generatorImages reduction4910.relations [0,0,17,324] reduction4910.output := by lin_cert using reduction4910.terms
def map_10_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4994 : InImage map_10_161 image4994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4994 : Bundle := named_bundle% "RealMapCertificates/relations/basis4994.json"
theorem reductionProof4994 : EqualModuloRelations reduction4994.relations reduction4994.input reduction4994.output := by lin_cert using reduction4994.terms
theorem substitutionProof4994 : IsMapEvaluation generatorImages reduction4994.relations [658] reduction4994.output := by lin_cert using reduction4994.terms
def image4995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4995 : InImage map_10_161 image4995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4995 : Bundle := named_bundle% "RealMapCertificates/relations/basis4995.json"
theorem reductionProof4995 : EqualModuloRelations reduction4995.relations reduction4995.input reduction4995.output := by lin_cert using reduction4995.terms
theorem substitutionProof4995 : IsMapEvaluation generatorImages reduction4995.relations [19,69,69] reduction4995.output := by lin_cert using reduction4995.terms
def image4996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4996 : InImage map_10_161 image4996 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4996 : Bundle := named_bundle% "RealMapCertificates/relations/basis4996.json"
theorem reductionProof4996 : EqualModuloRelations reduction4996.relations reduction4996.input reduction4996.output := by lin_cert using reduction4996.terms
theorem substitutionProof4996 : IsMapEvaluation generatorImages reduction4996.relations [18,333] reduction4996.output := by lin_cert using reduction4996.terms
def map_10_162 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5117 : InImage map_10_162 image5117 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5117 : Bundle := named_bundle% "RealMapCertificates/relations/basis5117.json"
theorem reductionProof5117 : EqualModuloRelations reduction5117.relations reduction5117.input reduction5117.output := by lin_cert using reduction5117.terms
theorem substitutionProof5117 : IsMapEvaluation generatorImages reduction5117.relations [18,338] reduction5117.output := by lin_cert using reduction5117.terms
def image5118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5118 : InImage map_10_162 image5118 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5118 : Bundle := named_bundle% "RealMapCertificates/relations/basis5118.json"
theorem reductionProof5118 : EqualModuloRelations reduction5118.relations reduction5118.input reduction5118.output := by lin_cert using reduction5118.terms
theorem substitutionProof5118 : IsMapEvaluation generatorImages reduction5118.relations [0,659] reduction5118.output := by lin_cert using reduction5118.terms
def image5119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5119 : InImage map_10_162 image5119 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5119 : Bundle := named_bundle% "RealMapCertificates/relations/basis5119.json"
theorem reductionProof5119 : EqualModuloRelations reduction5119.relations reduction5119.input reduction5119.output := by lin_cert using reduction5119.terms
theorem substitutionProof5119 : IsMapEvaluation generatorImages reduction5119.relations [0,20,69,69] reduction5119.output := by lin_cert using reduction5119.terms
def image5120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5120 : InImage map_10_162 image5120 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5120 : Bundle := named_bundle% "RealMapCertificates/relations/basis5120.json"
theorem reductionProof5120 : EqualModuloRelations reduction5120.relations reduction5120.input reduction5120.output := by lin_cert using reduction5120.terms
theorem substitutionProof5120 : IsMapEvaluation generatorImages reduction5120.relations [0,19,324] reduction5120.output := by lin_cert using reduction5120.terms
def map_10_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5195 : InImage map_10_163 image5195 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5195 : Bundle := named_bundle% "RealMapCertificates/relations/basis5195.json"
theorem reductionProof5195 : EqualModuloRelations reduction5195.relations reduction5195.input reduction5195.output := by lin_cert using reduction5195.terms
theorem substitutionProof5195 : IsMapEvaluation generatorImages reduction5195.relations [7,7,352] reduction5195.output := by lin_cert using reduction5195.terms
def image5196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5196 : InImage map_10_163 image5196 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5196 : Bundle := named_bundle% "RealMapCertificates/relations/basis5196.json"
theorem reductionProof5196 : EqualModuloRelations reduction5196.relations reduction5196.input reduction5196.output := by lin_cert using reduction5196.terms
theorem substitutionProof5196 : IsMapEvaluation generatorImages reduction5196.relations [0,0,20,324] reduction5196.output := by lin_cert using reduction5196.terms
def map_10_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5285 : InImage map_10_164 image5285 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5285 : Bundle := named_bundle% "RealMapCertificates/relations/basis5285.json"
theorem reductionProof5285 : EqualModuloRelations reduction5285.relations reduction5285.input reduction5285.output := by lin_cert using reduction5285.terms
theorem substitutionProof5285 : IsMapEvaluation generatorImages reduction5285.relations [18,366] reduction5285.output := by lin_cert using reduction5285.terms
def image5286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5286 : InImage map_10_164 image5286 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5286 : Bundle := named_bundle% "RealMapCertificates/relations/basis5286.json"
theorem reductionProof5286 : EqualModuloRelations reduction5286.relations reduction5286.input reduction5286.output := by lin_cert using reduction5286.terms
theorem substitutionProof5286 : IsMapEvaluation generatorImages reduction5286.relations [0,18,352] reduction5286.output := by lin_cert using reduction5286.terms
def image5287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5287 : InImage map_10_164 image5287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5287 : Bundle := named_bundle% "RealMapCertificates/relations/basis5287.json"
theorem reductionProof5287 : EqualModuloRelations reduction5287.relations reduction5287.input reduction5287.output := by lin_cert using reduction5287.terms
theorem substitutionProof5287 : IsMapEvaluation generatorImages reduction5287.relations [0,0,676] reduction5287.output := by lin_cert using reduction5287.terms
def map_10_165 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5412 : InImage map_10_165 image5412 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5412 : Bundle := named_bundle% "RealMapCertificates/relations/basis5412.json"
theorem reductionProof5412 : EqualModuloRelations reduction5412.relations reduction5412.input reduction5412.output := by lin_cert using reduction5412.terms
theorem substitutionProof5412 : IsMapEvaluation generatorImages reduction5412.relations [714] reduction5412.output := by lin_cert using reduction5412.terms
def image5413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5413 : InImage map_10_165 image5413 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5413 : Bundle := named_bundle% "RealMapCertificates/relations/basis5413.json"
theorem reductionProof5413 : EqualModuloRelations reduction5413.relations reduction5413.input reduction5413.output := by lin_cert using reduction5413.terms
theorem substitutionProof5413 : IsMapEvaluation generatorImages reduction5413.relations [18,373] reduction5413.output := by lin_cert using reduction5413.terms
def image5414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5414 : InImage map_10_165 image5414 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5414 : Bundle := named_bundle% "RealMapCertificates/relations/basis5414.json"
theorem reductionProof5414 : EqualModuloRelations reduction5414.relations reduction5414.input reduction5414.output := by lin_cert using reduction5414.terms
theorem substitutionProof5414 : IsMapEvaluation generatorImages reduction5414.relations [0,18,367] reduction5414.output := by lin_cert using reduction5414.terms
def image5415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5415 : InImage map_10_165 image5415 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5415 : Bundle := named_bundle% "RealMapCertificates/relations/basis5415.json"
theorem reductionProof5415 : EqualModuloRelations reduction5415.relations reduction5415.input reduction5415.output := by lin_cert using reduction5415.terms
theorem substitutionProof5415 : IsMapEvaluation generatorImages reduction5415.relations [0,8,8,324] reduction5415.output := by lin_cert using reduction5415.terms
def image5416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5416 : InImage map_10_165 image5416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5416 : Bundle := named_bundle% "RealMapCertificates/relations/basis5416.json"
theorem reductionProof5416 : EqualModuloRelations reduction5416.relations reduction5416.input reduction5416.output := by lin_cert using reduction5416.terms
theorem substitutionProof5416 : IsMapEvaluation generatorImages reduction5416.relations [0,7,546] reduction5416.output := by lin_cert using reduction5416.terms
def image5417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5417 : InImage map_10_165 image5417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5417 : Bundle := named_bundle% "RealMapCertificates/relations/basis5417.json"
theorem reductionProof5417 : EqualModuloRelations reduction5417.relations reduction5417.input reduction5417.output := by lin_cert using reduction5417.terms
theorem substitutionProof5417 : IsMapEvaluation generatorImages reduction5417.relations [0,0,684] reduction5417.output := by lin_cert using reduction5417.terms
def map_10_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5511 : InImage map_10_166 image5511 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5511 : Bundle := named_bundle% "RealMapCertificates/relations/basis5511.json"
theorem reductionProof5511 : EqualModuloRelations reduction5511.relations reduction5511.input reduction5511.output := by lin_cert using reduction5511.terms
theorem substitutionProof5511 : IsMapEvaluation generatorImages reduction5511.relations [1,7,546] reduction5511.output := by lin_cert using reduction5511.terms
def image5512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5512 : InImage map_10_166 image5512 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5512 : Bundle := named_bundle% "RealMapCertificates/relations/basis5512.json"
theorem reductionProof5512 : EqualModuloRelations reduction5512.relations reduction5512.input reduction5512.output := by lin_cert using reduction5512.terms
theorem substitutionProof5512 : IsMapEvaluation generatorImages reduction5512.relations [0,0,696] reduction5512.output := by lin_cert using reduction5512.terms
def image5513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5513 : InImage map_10_166 image5513 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5513 : Bundle := named_bundle% "RealMapCertificates/relations/basis5513.json"
theorem reductionProof5513 : EqualModuloRelations reduction5513.relations reduction5513.input reduction5513.output := by lin_cert using reduction5513.terms
theorem substitutionProof5513 : IsMapEvaluation generatorImages reduction5513.relations [0,0,22,324] reduction5513.output := by lin_cert using reduction5513.terms
def map_10_167 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5612 : InImage map_10_167 image5612 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5612 : Bundle := named_bundle% "RealMapCertificates/relations/basis5612.json"
theorem reductionProof5612 : EqualModuloRelations reduction5612.relations reduction5612.input reduction5612.output := by lin_cert using reduction5612.terms
theorem substitutionProof5612 : IsMapEvaluation generatorImages reduction5612.relations [18,414] reduction5612.output := by lin_cert using reduction5612.terms
def image5613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5613 : InImage map_10_167 image5613 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5613 : Bundle := named_bundle% "RealMapCertificates/relations/basis5613.json"
theorem reductionProof5613 : EqualModuloRelations reduction5613.relations reduction5613.input reduction5613.output := by lin_cert using reduction5613.terms
theorem substitutionProof5613 : IsMapEvaluation generatorImages reduction5613.relations [1,18,376] reduction5613.output := by lin_cert using reduction5613.terms
def image5614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5614 : InImage map_10_167 image5614 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5614 : Bundle := named_bundle% "RealMapCertificates/relations/basis5614.json"
theorem reductionProof5614 : EqualModuloRelations reduction5614.relations reduction5614.input reduction5614.output := by lin_cert using reduction5614.terms
theorem substitutionProof5614 : IsMapEvaluation generatorImages reduction5614.relations [1,1,684] reduction5614.output := by lin_cert using reduction5614.terms
def image5615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5615 : InImage map_10_167 image5615 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5615 : Bundle := named_bundle% "RealMapCertificates/relations/basis5615.json"
theorem reductionProof5615 : EqualModuloRelations reduction5615.relations reduction5615.input reduction5615.output := by lin_cert using reduction5615.terms
theorem substitutionProof5615 : IsMapEvaluation generatorImages reduction5615.relations [0,2,676] reduction5615.output := by lin_cert using reduction5615.terms
def image5616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5616 : InImage map_10_167 image5616 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5616 : Bundle := named_bundle% "RealMapCertificates/relations/basis5616.json"
theorem reductionProof5616 : EqualModuloRelations reduction5616.relations reduction5616.input reduction5616.output := by lin_cert using reduction5616.terms
theorem substitutionProof5616 : IsMapEvaluation generatorImages reduction5616.relations [0,0,0,23,324] reduction5616.output := by lin_cert using reduction5616.terms
def map_10_168 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5745 : InImage map_10_168 image5745 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5745 : Bundle := named_bundle% "RealMapCertificates/relations/basis5745.json"
theorem reductionProof5745 : EqualModuloRelations reduction5745.relations reduction5745.input reduction5745.output := by lin_cert using reduction5745.terms
theorem substitutionProof5745 : IsMapEvaluation generatorImages reduction5745.relations [746] reduction5745.output := by lin_cert using reduction5745.terms
def image5746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5746 : InImage map_10_168 image5746 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5746 : Bundle := named_bundle% "RealMapCertificates/relations/basis5746.json"
theorem reductionProof5746 : EqualModuloRelations reduction5746.relations reduction5746.input reduction5746.output := by lin_cert using reduction5746.terms
theorem substitutionProof5746 : IsMapEvaluation generatorImages reduction5746.relations [0,18,415] reduction5746.output := by lin_cert using reduction5746.terms
def image5747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5747 : InImage map_10_168 image5747 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5747 : Bundle := named_bundle% "RealMapCertificates/relations/basis5747.json"
theorem reductionProof5747 : EqualModuloRelations reduction5747.relations reduction5747.input reduction5747.output := by lin_cert using reduction5747.terms
theorem substitutionProof5747 : IsMapEvaluation generatorImages reduction5747.relations [0,8,9,324] reduction5747.output := by lin_cert using reduction5747.terms
def image5748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5748 : InImage map_10_168 image5748 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5748 : Bundle := named_bundle% "RealMapCertificates/relations/basis5748.json"
theorem reductionProof5748 : EqualModuloRelations reduction5748.relations reduction5748.input reduction5748.output := by lin_cert using reduction5748.terms
theorem substitutionProof5748 : IsMapEvaluation generatorImages reduction5748.relations [0,0,720] reduction5748.output := by lin_cert using reduction5748.terms
def image5749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5749 : InImage map_10_168 image5749 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5749 : Bundle := named_bundle% "RealMapCertificates/relations/basis5749.json"
theorem reductionProof5749 : EqualModuloRelations reduction5749.relations reduction5749.input reduction5749.output := by lin_cert using reduction5749.terms
theorem substitutionProof5749 : IsMapEvaluation generatorImages reduction5749.relations [0,0,0,0,0,0,0,0,18,324] reduction5749.output := by lin_cert using reduction5749.terms
def map_10_169 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5843 : InImage map_10_169 image5843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5843 : Bundle := named_bundle% "RealMapCertificates/relations/basis5843.json"
theorem reductionProof5843 : EqualModuloRelations reduction5843.relations reduction5843.input reduction5843.output := by lin_cert using reduction5843.terms
theorem substitutionProof5843 : IsMapEvaluation generatorImages reduction5843.relations [757] reduction5843.output := by lin_cert using reduction5843.terms
def image5844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5844 : InImage map_10_169 image5844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5844 : Bundle := named_bundle% "RealMapCertificates/relations/basis5844.json"
theorem reductionProof5844 : EqualModuloRelations reduction5844.relations reduction5844.input reduction5844.output := by lin_cert using reduction5844.terms
theorem substitutionProof5844 : IsMapEvaluation generatorImages reduction5844.relations [756] reduction5844.output := by lin_cert using reduction5844.terms
def image5845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5845 : InImage map_10_169 image5845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5845 : Bundle := named_bundle% "RealMapCertificates/relations/basis5845.json"
theorem reductionProof5845 : EqualModuloRelations reduction5845.relations reduction5845.input reduction5845.output := by lin_cert using reduction5845.terms
theorem substitutionProof5845 : IsMapEvaluation generatorImages reduction5845.relations [3,659] reduction5845.output := by lin_cert using reduction5845.terms
def image5846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5846 : InImage map_10_169 image5846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5846 : Bundle := named_bundle% "RealMapCertificates/relations/basis5846.json"
theorem reductionProof5846 : EqualModuloRelations reduction5846.relations reduction5846.input reduction5846.output := by lin_cert using reduction5846.terms
theorem substitutionProof5846 : IsMapEvaluation generatorImages reduction5846.relations [2,18,376] reduction5846.output := by lin_cert using reduction5846.terms
def image5847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5847 : InImage map_10_169 image5847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5847 : Bundle := named_bundle% "RealMapCertificates/relations/basis5847.json"
theorem reductionProof5847 : EqualModuloRelations reduction5847.relations reduction5847.input reduction5847.output := by lin_cert using reduction5847.terms
theorem substitutionProof5847 : IsMapEvaluation generatorImages reduction5847.relations [0,0,29,324] reduction5847.output := by lin_cert using reduction5847.terms
def map_10_170 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5945 : InImage map_10_170 image5945 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5945 : Bundle := named_bundle% "RealMapCertificates/relations/basis5945.json"
theorem reductionProof5945 : EqualModuloRelations reduction5945.relations reduction5945.input reduction5945.output := by lin_cert using reduction5945.terms
theorem substitutionProof5945 : IsMapEvaluation generatorImages reduction5945.relations [773] reduction5945.output := by lin_cert using reduction5945.terms
def image5946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5946 : InImage map_10_170 image5946 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5946 : Bundle := named_bundle% "RealMapCertificates/relations/basis5946.json"
theorem reductionProof5946 : EqualModuloRelations reduction5946.relations reduction5946.input reduction5946.output := by lin_cert using reduction5946.terms
theorem substitutionProof5946 : IsMapEvaluation generatorImages reduction5946.relations [772] reduction5946.output := by lin_cert using reduction5946.terms
def image5947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5947 : InImage map_10_170 image5947 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5947 : Bundle := named_bundle% "RealMapCertificates/relations/basis5947.json"
theorem reductionProof5947 : EqualModuloRelations reduction5947.relations reduction5947.input reduction5947.output := by lin_cert using reduction5947.terms
theorem substitutionProof5947 : IsMapEvaluation generatorImages reduction5947.relations [771] reduction5947.output := by lin_cert using reduction5947.terms
def image5948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5948 : InImage map_10_170 image5948 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5948 : Bundle := named_bundle% "RealMapCertificates/relations/basis5948.json"
theorem reductionProof5948 : EqualModuloRelations reduction5948.relations reduction5948.input reduction5948.output := by lin_cert using reduction5948.terms
theorem substitutionProof5948 : IsMapEvaluation generatorImages reduction5948.relations [18,443] reduction5948.output := by lin_cert using reduction5948.terms
def map_10_171 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6091 : InImage map_10_171 image6091 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6091 : Bundle := named_bundle% "RealMapCertificates/relations/basis6091.json"
theorem reductionProof6091 : EqualModuloRelations reduction6091.relations reduction6091.input reduction6091.output := by lin_cert using reduction6091.terms
theorem substitutionProof6091 : IsMapEvaluation generatorImages reduction6091.relations [3,18,352] reduction6091.output := by lin_cert using reduction6091.terms
def image6092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6092 : InImage map_10_171 image6092 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6092 : Bundle := named_bundle% "RealMapCertificates/relations/basis6092.json"
theorem reductionProof6092 : EqualModuloRelations reduction6092.relations reduction6092.input reduction6092.output := by lin_cert using reduction6092.terms
theorem substitutionProof6092 : IsMapEvaluation generatorImages reduction6092.relations [0,18,445] reduction6092.output := by lin_cert using reduction6092.terms
def image6093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6093 : InImage map_10_171 image6093 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6093 : Bundle := named_bundle% "RealMapCertificates/relations/basis6093.json"
theorem reductionProof6093 : EqualModuloRelations reduction6093.relations reduction6093.input reduction6093.output := by lin_cert using reduction6093.terms
theorem substitutionProof6093 : IsMapEvaluation generatorImages reduction6093.relations [0,8,13,324] reduction6093.output := by lin_cert using reduction6093.terms
def image6094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6094 : InImage map_10_171 image6094 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6094 : Bundle := named_bundle% "RealMapCertificates/relations/basis6094.json"
theorem reductionProof6094 : EqualModuloRelations reduction6094.relations reduction6094.input reduction6094.output := by lin_cert using reduction6094.terms
theorem substitutionProof6094 : IsMapEvaluation generatorImages reduction6094.relations [0,0,0,747] reduction6094.output := by lin_cert using reduction6094.terms
def map_10_172 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6171 : InImage map_10_172 image6171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6171 : Bundle := named_bundle% "RealMapCertificates/relations/basis6171.json"
theorem reductionProof6171 : EqualModuloRelations reduction6171.relations reduction6171.input reduction6171.output := by lin_cert using reduction6171.terms
theorem substitutionProof6171 : IsMapEvaluation generatorImages reduction6171.relations [793] reduction6171.output := by lin_cert using reduction6171.terms
def image6172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6172 : InImage map_10_172 image6172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6172 : Bundle := named_bundle% "RealMapCertificates/relations/basis6172.json"
theorem reductionProof6172 : EqualModuloRelations reduction6172.relations reduction6172.input reduction6172.output := by lin_cert using reduction6172.terms
theorem substitutionProof6172 : IsMapEvaluation generatorImages reduction6172.relations [792] reduction6172.output := by lin_cert using reduction6172.terms
def image6173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6173 : InImage map_10_172 image6173 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6173 : Bundle := named_bundle% "RealMapCertificates/relations/basis6173.json"
theorem reductionProof6173 : EqualModuloRelations reduction6173.relations reduction6173.input reduction6173.output := by lin_cert using reduction6173.terms
theorem substitutionProof6173 : IsMapEvaluation generatorImages reduction6173.relations [791] reduction6173.output := by lin_cert using reduction6173.terms
def image6174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6174 : InImage map_10_172 image6174 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6174 : Bundle := named_bundle% "RealMapCertificates/relations/basis6174.json"
theorem reductionProof6174 : EqualModuloRelations reduction6174.relations reduction6174.input reduction6174.output := by lin_cert using reduction6174.terms
theorem substitutionProof6174 : IsMapEvaluation generatorImages reduction6174.relations [0,0,32,324] reduction6174.output := by lin_cert using reduction6174.terms
def map_10_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6278 : InImage map_10_173 image6278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6278 : Bundle := named_bundle% "RealMapCertificates/relations/basis6278.json"
theorem reductionProof6278 : EqualModuloRelations reduction6278.relations reduction6278.input reduction6278.output := by lin_cert using reduction6278.terms
theorem substitutionProof6278 : IsMapEvaluation generatorImages reduction6278.relations [18,479] reduction6278.output := by lin_cert using reduction6278.terms
def image6279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6279 : InImage map_10_173 image6279 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6279 : Bundle := named_bundle% "RealMapCertificates/relations/basis6279.json"
theorem reductionProof6279 : EqualModuloRelations reduction6279.relations reduction6279.input reduction6279.output := by lin_cert using reduction6279.terms
theorem substitutionProof6279 : IsMapEvaluation generatorImages reduction6279.relations [1,782] reduction6279.output := by lin_cert using reduction6279.terms
def image6280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6280 : InImage map_10_173 image6280 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6280 : Bundle := named_bundle% "RealMapCertificates/relations/basis6280.json"
theorem reductionProof6280 : EqualModuloRelations reduction6280.relations reduction6280.input reduction6280.output := by lin_cert using reduction6280.terms
theorem substitutionProof6280 : IsMapEvaluation generatorImages reduction6280.relations [0,0,0,18,446] reduction6280.output := by lin_cert using reduction6280.terms
def map_10_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6427 : InImage map_10_174 image6427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6427 : Bundle := named_bundle% "RealMapCertificates/relations/basis6427.json"
theorem reductionProof6427 : EqualModuloRelations reduction6427.relations reduction6427.input reduction6427.output := by lin_cert using reduction6427.terms
theorem substitutionProof6427 : IsMapEvaluation generatorImages reduction6427.relations [818] reduction6427.output := by lin_cert using reduction6427.terms
def image6428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6428 : InImage map_10_174 image6428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6428 : Bundle := named_bundle% "RealMapCertificates/relations/basis6428.json"
theorem reductionProof6428 : EqualModuloRelations reduction6428.relations reduction6428.input reduction6428.output := by lin_cert using reduction6428.terms
theorem substitutionProof6428 : IsMapEvaluation generatorImages reduction6428.relations [7,633] reduction6428.output := by lin_cert using reduction6428.terms
def image6429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6429 : InImage map_10_174 image6429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6429 : Bundle := named_bundle% "RealMapCertificates/relations/basis6429.json"
theorem reductionProof6429 : EqualModuloRelations reduction6429.relations reduction6429.input reduction6429.output := by lin_cert using reduction6429.terms
theorem substitutionProof6429 : IsMapEvaluation generatorImages reduction6429.relations [0,802] reduction6429.output := by lin_cert using reduction6429.terms
def image6430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6430 : InImage map_10_174 image6430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6430 : Bundle := named_bundle% "RealMapCertificates/relations/basis6430.json"
theorem reductionProof6430 : EqualModuloRelations reduction6430.relations reduction6430.input reduction6430.output := by lin_cert using reduction6430.terms
theorem substitutionProof6430 : IsMapEvaluation generatorImages reduction6430.relations [0,0,0,0,34,324] reduction6430.output := by lin_cert using reduction6430.terms
def map_10_175 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6525 : InImage map_10_175 image6525 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6525 : Bundle := named_bundle% "RealMapCertificates/relations/basis6525.json"
theorem reductionProof6525 : EqualModuloRelations reduction6525.relations reduction6525.input reduction6525.output := by lin_cert using reduction6525.terms
theorem substitutionProof6525 : IsMapEvaluation generatorImages reduction6525.relations [828] reduction6525.output := by lin_cert using reduction6525.terms
def image6526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6526 : InImage map_10_175 image6526 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6526 : Bundle := named_bundle% "RealMapCertificates/relations/basis6526.json"
theorem reductionProof6526 : EqualModuloRelations reduction6526.relations reduction6526.input reduction6526.output := by lin_cert using reduction6526.terms
theorem substitutionProof6526 : IsMapEvaluation generatorImages reduction6526.relations [1,802] reduction6526.output := by lin_cert using reduction6526.terms
def image6527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6527 : InImage map_10_175 image6527 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6527 : Bundle := named_bundle% "RealMapCertificates/relations/basis6527.json"
theorem reductionProof6527 : EqualModuloRelations reduction6527.relations reduction6527.input reduction6527.output := by lin_cert using reduction6527.terms
theorem substitutionProof6527 : IsMapEvaluation generatorImages reduction6527.relations [0,0,0,36,324] reduction6527.output := by lin_cert using reduction6527.terms
def map_10_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6630 : InImage map_10_176 image6630 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6630 : Bundle := named_bundle% "RealMapCertificates/relations/basis6630.json"
theorem reductionProof6630 : EqualModuloRelations reduction6630.relations reduction6630.input reduction6630.output := by lin_cert using reduction6630.terms
theorem substitutionProof6630 : IsMapEvaluation generatorImages reduction6630.relations [846] reduction6630.output := by lin_cert using reduction6630.terms
def image6631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6631 : InImage map_10_176 image6631 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6631 : Bundle := named_bundle% "RealMapCertificates/relations/basis6631.json"
theorem reductionProof6631 : EqualModuloRelations reduction6631.relations reduction6631.input reduction6631.output := by lin_cert using reduction6631.terms
theorem substitutionProof6631 : IsMapEvaluation generatorImages reduction6631.relations [42,324] reduction6631.output := by lin_cert using reduction6631.terms
def image6632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6632 : InImage map_10_176 image6632 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6632 : Bundle := named_bundle% "RealMapCertificates/relations/basis6632.json"
theorem reductionProof6632 : EqualModuloRelations reduction6632.relations reduction6632.input reduction6632.output := by lin_cert using reduction6632.terms
theorem substitutionProof6632 : IsMapEvaluation generatorImages reduction6632.relations [18,504] reduction6632.output := by lin_cert using reduction6632.terms
def map_10_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6770 : InImage map_10_177 image6770 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6770 : Bundle := named_bundle% "RealMapCertificates/relations/basis6770.json"
theorem reductionProof6770 : EqualModuloRelations reduction6770.relations reduction6770.input reduction6770.output := by lin_cert using reduction6770.terms
theorem substitutionProof6770 : IsMapEvaluation generatorImages reduction6770.relations [2,802] reduction6770.output := by lin_cert using reduction6770.terms
def image6771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6771 : InImage map_10_177 image6771 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6771 : Bundle := named_bundle% "RealMapCertificates/relations/basis6771.json"
theorem reductionProof6771 : EqualModuloRelations reduction6771.relations reduction6771.input reduction6771.output := by lin_cert using reduction6771.terms
theorem substitutionProof6771 : IsMapEvaluation generatorImages reduction6771.relations [0,847] reduction6771.output := by lin_cert using reduction6771.terms
def map_10_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6869 : InImage map_10_178 image6869 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6869 : Bundle := named_bundle% "RealMapCertificates/relations/basis6869.json"
theorem reductionProof6869 : EqualModuloRelations reduction6869.relations reduction6869.input reduction6869.output := by lin_cert using reduction6869.terms
theorem substitutionProof6869 : IsMapEvaluation generatorImages reduction6869.relations [18,523] reduction6869.output := by lin_cert using reduction6869.terms
def image6870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6870 : InImage map_10_178 image6870 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6870 : Bundle := named_bundle% "RealMapCertificates/relations/basis6870.json"
theorem reductionProof6870 : EqualModuloRelations reduction6870.relations reduction6870.input reduction6870.output := by lin_cert using reduction6870.terms
theorem substitutionProof6870 : IsMapEvaluation generatorImages reduction6870.relations [3,774] reduction6870.output := by lin_cert using reduction6870.terms
def image6871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6871 : InImage map_10_178 image6871 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6871 : Bundle := named_bundle% "RealMapCertificates/relations/basis6871.json"
theorem reductionProof6871 : EqualModuloRelations reduction6871.relations reduction6871.input reduction6871.output := by lin_cert using reduction6871.terms
theorem substitutionProof6871 : IsMapEvaluation generatorImages reduction6871.relations [1,847] reduction6871.output := by lin_cert using reduction6871.terms
def image6872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6872 : InImage map_10_178 image6872 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6872 : Bundle := named_bundle% "RealMapCertificates/relations/basis6872.json"
theorem reductionProof6872 : EqualModuloRelations reduction6872.relations reduction6872.input reduction6872.output := by lin_cert using reduction6872.terms
theorem substitutionProof6872 : IsMapEvaluation generatorImages reduction6872.relations [0,0,848] reduction6872.output := by lin_cert using reduction6872.terms
end RealMapCertificates
