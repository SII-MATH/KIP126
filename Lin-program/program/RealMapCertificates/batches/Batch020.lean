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
  | 7 => []
  | 12 => [[3,4]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 24 => []
  | 43 => []
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 53 => []
  | 67 => []
  | 68 => []
  | 73 => []
  | 80 => []
  | 81 => []
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
  | 324 => []
  | 368 => []
  | 398 => []
  | 399 => []
  | 400 => []
  | 446 => []
  | 506 => []
  | 524 => []
  | 565 => []
  | 659 => []
  | 660 => []
  | 676 => []
  | 684 => []
  | 698 => []
  | 699 => []
  | 847 => []
  | 849 => []
  | 850 => []
  | 894 => []
  | 925 => []
  | 1028 => []
  | 1058 => []
  | 1164 => []
  | 1165 => []
  | 1200 => []
  | 1216 => []
  | 1217 => []
  | 1233 => []
  | 1234 => []
  | 1235 => []
  | 1236 => []
  | 1237 => []
  | 1278 => []
  | 1279 => []
  | 1280 => []
  | 1281 => []
  | 1282 => []
  | 1283 => []
  | 1284 => []
  | 1358 => []
  | 1380 => []
  | 1417 => []
  | 1418 => []
  | 1419 => []
  | 1420 => []
  | 1421 => []
  | 1461 => []
  | 1462 => []
  | 1463 => []
  | 1464 => []
  | 1465 => []
  | 1530 => []
  | _ => []
def map_10_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6996 : InImage map_10_179 image6996 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6996 : Bundle := named_bundle% "RealMapCertificates/relations/basis6996.json"
theorem reductionProof6996 : EqualModuloRelations reduction6996.relations reduction6996.input reduction6996.output := by lin_cert using reduction6996.terms
theorem substitutionProof6996 : IsMapEvaluation generatorImages reduction6996.relations [46,324] reduction6996.output := by lin_cert using reduction6996.terms
def image6997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6997 : InImage map_10_179 image6997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6997 : Bundle := named_bundle% "RealMapCertificates/relations/basis6997.json"
theorem reductionProof6997 : EqualModuloRelations reduction6997.relations reduction6997.input reduction6997.output := by lin_cert using reduction6997.terms
theorem substitutionProof6997 : IsMapEvaluation generatorImages reduction6997.relations [0,18,524] reduction6997.output := by lin_cert using reduction6997.terms
def image6998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6998 : InImage map_10_179 image6998 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6998 : Bundle := named_bundle% "RealMapCertificates/relations/basis6998.json"
theorem reductionProof6998 : EqualModuloRelations reduction6998.relations reduction6998.input reduction6998.output := by lin_cert using reduction6998.terms
theorem substitutionProof6998 : IsMapEvaluation generatorImages reduction6998.relations [0,7,676] reduction6998.output := by lin_cert using reduction6998.terms
def map_10_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7139 : InImage map_10_180 image7139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7139 : Bundle := named_bundle% "RealMapCertificates/relations/basis7139.json"
theorem reductionProof7139 : EqualModuloRelations reduction7139.relations reduction7139.input reduction7139.output := by lin_cert using reduction7139.terms
theorem substitutionProof7139 : IsMapEvaluation generatorImages reduction7139.relations [43,368] reduction7139.output := by lin_cert using reduction7139.terms
def image7140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7140 : InImage map_10_180 image7140 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7140 : Bundle := named_bundle% "RealMapCertificates/relations/basis7140.json"
theorem reductionProof7140 : EqualModuloRelations reduction7140.relations reduction7140.input reduction7140.output := by lin_cert using reduction7140.terms
theorem substitutionProof7140 : IsMapEvaluation generatorImages reduction7140.relations [1,7,676] reduction7140.output := by lin_cert using reduction7140.terms
def image7141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7141 : InImage map_10_180 image7141 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7141 : Bundle := named_bundle% "RealMapCertificates/relations/basis7141.json"
theorem reductionProof7141 : EqualModuloRelations reduction7141.relations reduction7141.input reduction7141.output := by lin_cert using reduction7141.terms
theorem substitutionProof7141 : IsMapEvaluation generatorImages reduction7141.relations [0,0,0,0,18,506] reduction7141.output := by lin_cert using reduction7141.terms
def map_10_182 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image7348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7348 : InImage map_10_182 image7348 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7348 : Bundle := named_bundle% "RealMapCertificates/relations/basis7348.json"
theorem reductionProof7348 : EqualModuloRelations reduction7348.relations reduction7348.input reduction7348.output := by lin_cert using reduction7348.terms
theorem substitutionProof7348 : IsMapEvaluation generatorImages reduction7348.relations [51,324] reduction7348.output := by lin_cert using reduction7348.terms
def image7349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7349 : InImage map_10_182 image7349 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7349 : Bundle := named_bundle% "RealMapCertificates/relations/basis7349.json"
theorem reductionProof7349 : EqualModuloRelations reduction7349.relations reduction7349.input reduction7349.output := by lin_cert using reduction7349.terms
theorem substitutionProof7349 : IsMapEvaluation generatorImages reduction7349.relations [43,399] reduction7349.output := by lin_cert using reduction7349.terms
def image7350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7350 : InImage map_10_182 image7350 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7350 : Bundle := named_bundle% "RealMapCertificates/relations/basis7350.json"
theorem reductionProof7350 : EqualModuloRelations reduction7350.relations reduction7350.input reduction7350.output := by lin_cert using reduction7350.terms
theorem substitutionProof7350 : IsMapEvaluation generatorImages reduction7350.relations [43,398] reduction7350.output := by lin_cert using reduction7350.terms
def image7351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7351 : InImage map_10_182 image7351 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7351 : Bundle := named_bundle% "RealMapCertificates/relations/basis7351.json"
theorem reductionProof7351 : EqualModuloRelations reduction7351.relations reduction7351.input reduction7351.output := by lin_cert using reduction7351.terms
theorem substitutionProof7351 : IsMapEvaluation generatorImages reduction7351.relations [18,565] reduction7351.output := by lin_cert using reduction7351.terms
def image7352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7352 : InImage map_10_182 image7352 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7352 : Bundle := named_bundle% "RealMapCertificates/relations/basis7352.json"
theorem reductionProof7352 : EqualModuloRelations reduction7352.relations reduction7352.input reduction7352.output := by lin_cert using reduction7352.terms
theorem substitutionProof7352 : IsMapEvaluation generatorImages reduction7352.relations [0,0,7,698] reduction7352.output := by lin_cert using reduction7352.terms
def image7353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7353 : InImage map_10_182 image7353 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7353 : Bundle := named_bundle% "RealMapCertificates/relations/basis7353.json"
theorem reductionProof7353 : EqualModuloRelations reduction7353.relations reduction7353.input reduction7353.output := by lin_cert using reduction7353.terms
theorem substitutionProof7353 : IsMapEvaluation generatorImages reduction7353.relations [0,0,0,0,0,0,849] reduction7353.output := by lin_cert using reduction7353.terms
def map_10_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7499 : InImage map_10_183 image7499 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7499 : Bundle := named_bundle% "RealMapCertificates/relations/basis7499.json"
theorem reductionProof7499 : EqualModuloRelations reduction7499.relations reduction7499.input reduction7499.output := by lin_cert using reduction7499.terms
theorem substitutionProof7499 : IsMapEvaluation generatorImages reduction7499.relations [925] reduction7499.output := by lin_cert using reduction7499.terms
def image7500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7500 : InImage map_10_183 image7500 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7500 : Bundle := named_bundle% "RealMapCertificates/relations/basis7500.json"
theorem reductionProof7500 : EqualModuloRelations reduction7500.relations reduction7500.input reduction7500.output := by lin_cert using reduction7500.terms
theorem substitutionProof7500 : IsMapEvaluation generatorImages reduction7500.relations [0,0,0,0,0,0,0,850] reduction7500.output := by lin_cert using reduction7500.terms
def map_10_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7599 : InImage map_10_184 image7599 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7599 : Bundle := named_bundle% "RealMapCertificates/relations/basis7599.json"
theorem reductionProof7599 : EqualModuloRelations reduction7599.relations reduction7599.input reduction7599.output := by lin_cert using reduction7599.terms
theorem substitutionProof7599 : IsMapEvaluation generatorImages reduction7599.relations [3,847] reduction7599.output := by lin_cert using reduction7599.terms
def image7600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7600 : InImage map_10_184 image7600 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7600 : Bundle := named_bundle% "RealMapCertificates/relations/basis7600.json"
theorem reductionProof7600 : EqualModuloRelations reduction7600.relations reduction7600.input reduction7600.output := by lin_cert using reduction7600.terms
theorem substitutionProof7600 : IsMapEvaluation generatorImages reduction7600.relations [0,0,0,894] reduction7600.output := by lin_cert using reduction7600.terms
def map_10_185 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7720 : InImage map_10_185 image7720 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7720 : Bundle := named_bundle% "RealMapCertificates/relations/basis7720.json"
theorem reductionProof7720 : EqualModuloRelations reduction7720.relations reduction7720.input reduction7720.output := by lin_cert using reduction7720.terms
theorem substitutionProof7720 : IsMapEvaluation generatorImages reduction7720.relations [1,12,18,324] reduction7720.output := by lin_cert using reduction7720.terms
def image7721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7721 : InImage map_10_185 image7721 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7721 : Bundle := named_bundle% "RealMapCertificates/relations/basis7721.json"
theorem reductionProof7721 : EqualModuloRelations reduction7721.relations reduction7721.input reduction7721.output := by lin_cert using reduction7721.terms
theorem substitutionProof7721 : IsMapEvaluation generatorImages reduction7721.relations [0,0,53,324] reduction7721.output := by lin_cert using reduction7721.terms
def map_10_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7861 : InImage map_10_186 image7861 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7861 : Bundle := named_bundle% "RealMapCertificates/relations/basis7861.json"
theorem reductionProof7861 : EqualModuloRelations reduction7861.relations reduction7861.input reduction7861.output := by lin_cert using reduction7861.terms
theorem substitutionProof7861 : IsMapEvaluation generatorImages reduction7861.relations [2,43,400] reduction7861.output := by lin_cert using reduction7861.terms
def image7862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7862 : InImage map_10_186 image7862 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7862 : Bundle := named_bundle% "RealMapCertificates/relations/basis7862.json"
theorem reductionProof7862 : EqualModuloRelations reduction7862.relations reduction7862.input reduction7862.output := by lin_cert using reduction7862.terms
theorem substitutionProof7862 : IsMapEvaluation generatorImages reduction7862.relations [0,13,660] reduction7862.output := by lin_cert using reduction7862.terms
def map_10_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7942 : InImage map_10_187 image7942 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7942 : Bundle := named_bundle% "RealMapCertificates/relations/basis7942.json"
theorem reductionProof7942 : EqualModuloRelations reduction7942.relations reduction7942.input reduction7942.output := by lin_cert using reduction7942.terms
theorem substitutionProof7942 : IsMapEvaluation generatorImages reduction7942.relations [1,13,660] reduction7942.output := by lin_cert using reduction7942.terms
def map_10_188 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8069 : InImage map_10_188 image8069 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8069 : Bundle := named_bundle% "RealMapCertificates/relations/basis8069.json"
theorem reductionProof8069 : EqualModuloRelations reduction8069.relations reduction8069.input reduction8069.output := by lin_cert using reduction8069.terms
theorem substitutionProof8069 : IsMapEvaluation generatorImages reduction8069.relations [13,699] reduction8069.output := by lin_cert using reduction8069.terms
def image8070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8070 : InImage map_10_188 image8070 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8070 : Bundle := named_bundle% "RealMapCertificates/relations/basis8070.json"
theorem reductionProof8070 : EqualModuloRelations reduction8070.relations reduction8070.input reduction8070.output := by lin_cert using reduction8070.terms
theorem substitutionProof8070 : IsMapEvaluation generatorImages reduction8070.relations [13,24,324] reduction8070.output := by lin_cert using reduction8070.terms
def map_10_190 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8322 : InImage map_10_190 image8322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8322 : Bundle := named_bundle% "RealMapCertificates/relations/basis8322.json"
theorem reductionProof8322 : EqualModuloRelations reduction8322.relations reduction8322.input reduction8322.output := by lin_cert using reduction8322.terms
theorem substitutionProof8322 : IsMapEvaluation generatorImages reduction8322.relations [1028] reduction8322.output := by lin_cert using reduction8322.terms
def image8323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8323 : InImage map_10_190 image8323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8323 : Bundle := named_bundle% "RealMapCertificates/relations/basis8323.json"
theorem reductionProof8323 : EqualModuloRelations reduction8323.relations reduction8323.input reduction8323.output := by lin_cert using reduction8323.terms
theorem substitutionProof8323 : IsMapEvaluation generatorImages reduction8323.relations [16,18,324] reduction8323.output := by lin_cert using reduction8323.terms
def map_10_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8445 : InImage map_10_191 image8445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8445 : Bundle := named_bundle% "RealMapCertificates/relations/basis8445.json"
theorem reductionProof8445 : EqualModuloRelations reduction8445.relations reduction8445.input reduction8445.output := by lin_cert using reduction8445.terms
theorem substitutionProof8445 : IsMapEvaluation generatorImages reduction8445.relations [0,17,18,324] reduction8445.output := by lin_cert using reduction8445.terms
def map_10_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8692 : InImage map_10_193 image8692 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8692 : Bundle := named_bundle% "RealMapCertificates/relations/basis8692.json"
theorem reductionProof8692 : EqualModuloRelations reduction8692.relations reduction8692.input reduction8692.output := by lin_cert using reduction8692.terms
theorem substitutionProof8692 : IsMapEvaluation generatorImages reduction8692.relations [18,659] reduction8692.output := by lin_cert using reduction8692.terms
def image8693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8693 : InImage map_10_193 image8693 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8693 : Bundle := named_bundle% "RealMapCertificates/relations/basis8693.json"
theorem reductionProof8693 : EqualModuloRelations reduction8693.relations reduction8693.input reduction8693.output := by lin_cert using reduction8693.terms
theorem substitutionProof8693 : IsMapEvaluation generatorImages reduction8693.relations [18,19,324] reduction8693.output := by lin_cert using reduction8693.terms
def map_10_194 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8839 : InImage map_10_194 image8839 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8839 : Bundle := named_bundle% "RealMapCertificates/relations/basis8839.json"
theorem reductionProof8839 : EqualModuloRelations reduction8839.relations reduction8839.input reduction8839.output := by lin_cert using reduction8839.terms
theorem substitutionProof8839 : IsMapEvaluation generatorImages reduction8839.relations [0,18,20,324] reduction8839.output := by lin_cert using reduction8839.terms
def image8840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8840 : InImage map_10_194 image8840 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8840 : Bundle := named_bundle% "RealMapCertificates/relations/basis8840.json"
theorem reductionProof8840 : EqualModuloRelations reduction8840.relations reduction8840.input reduction8840.output := by lin_cert using reduction8840.terms
theorem substitutionProof8840 : IsMapEvaluation generatorImages reduction8840.relations [0,0,67,324] reduction8840.output := by lin_cert using reduction8840.terms
def map_10_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9269 : InImage map_10_197 image9269 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9269 : Bundle := named_bundle% "RealMapCertificates/relations/basis9269.json"
theorem reductionProof9269 : EqualModuloRelations reduction9269.relations reduction9269.input reduction9269.output := by lin_cert using reduction9269.terms
theorem substitutionProof9269 : IsMapEvaluation generatorImages reduction9269.relations [80,324] reduction9269.output := by lin_cert using reduction9269.terms
def image9270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9270 : InImage map_10_197 image9270 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9270 : Bundle := named_bundle% "RealMapCertificates/relations/basis9270.json"
theorem reductionProof9270 : EqualModuloRelations reduction9270.relations reduction9270.input reduction9270.output := by lin_cert using reduction9270.terms
theorem substitutionProof9270 : IsMapEvaluation generatorImages reduction9270.relations [1,18,684] reduction9270.output := by lin_cert using reduction9270.terms
def image9271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9271 : InImage map_10_197 image9271 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9271 : Bundle := named_bundle% "RealMapCertificates/relations/basis9271.json"
theorem reductionProof9271 : EqualModuloRelations reduction9271.relations reduction9271.input reduction9271.output := by lin_cert using reduction9271.terms
theorem substitutionProof9271 : IsMapEvaluation generatorImages reduction9271.relations [0,0,73,324] reduction9271.output := by lin_cert using reduction9271.terms
def map_10_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9453 : InImage map_10_198 image9453 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9453 : Bundle := named_bundle% "RealMapCertificates/relations/basis9453.json"
theorem reductionProof9453 : EqualModuloRelations reduction9453.relations reduction9453.input reduction9453.output := by lin_cert using reduction9453.terms
theorem substitutionProof9453 : IsMapEvaluation generatorImages reduction9453.relations [1164] reduction9453.output := by lin_cert using reduction9453.terms
def image9454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9454 : InImage map_10_198 image9454 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9454 : Bundle := named_bundle% "RealMapCertificates/relations/basis9454.json"
theorem reductionProof9454 : EqualModuloRelations reduction9454.relations reduction9454.input reduction9454.output := by lin_cert using reduction9454.terms
theorem substitutionProof9454 : IsMapEvaluation generatorImages reduction9454.relations [81,324] reduction9454.output := by lin_cert using reduction9454.terms
def image9455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9455 : InImage map_10_198 image9455 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9455 : Bundle := named_bundle% "RealMapCertificates/relations/basis9455.json"
theorem reductionProof9455 : EqualModuloRelations reduction9455.relations reduction9455.input reduction9455.output := by lin_cert using reduction9455.terms
theorem substitutionProof9455 : IsMapEvaluation generatorImages reduction9455.relations [0,0,0,0,0,0,1058] reduction9455.output := by lin_cert using reduction9455.terms
def map_10_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9583 : InImage map_10_199 image9583 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9583 : Bundle := named_bundle% "RealMapCertificates/relations/basis9583.json"
theorem reductionProof9583 : EqualModuloRelations reduction9583.relations reduction9583.input reduction9583.output := by lin_cert using reduction9583.terms
theorem substitutionProof9583 : IsMapEvaluation generatorImages reduction9583.relations [0,1165] reduction9583.output := by lin_cert using reduction9583.terms
def image9584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9584 : InImage map_10_199 image9584 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9584 : Bundle := named_bundle% "RealMapCertificates/relations/basis9584.json"
theorem reductionProof9584 : EqualModuloRelations reduction9584.relations reduction9584.input reduction9584.output := by lin_cert using reduction9584.terms
theorem substitutionProof9584 : IsMapEvaluation generatorImages reduction9584.relations [0,0,0,0,0,0,0,18,18,324] reduction9584.output := by lin_cert using reduction9584.terms
def map_10_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9755 : InImage map_10_200 image9755 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9755 : Bundle := named_bundle% "RealMapCertificates/relations/basis9755.json"
theorem reductionProof9755 : EqualModuloRelations reduction9755.relations reduction9755.input reduction9755.output := by lin_cert using reduction9755.terms
theorem substitutionProof9755 : IsMapEvaluation generatorImages reduction9755.relations [1200] reduction9755.output := by lin_cert using reduction9755.terms
def image9756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9756 : InImage map_10_200 image9756 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9756 : Bundle := named_bundle% "RealMapCertificates/relations/basis9756.json"
theorem reductionProof9756 : EqualModuloRelations reduction9756.relations reduction9756.input reduction9756.output := by lin_cert using reduction9756.terms
theorem substitutionProof9756 : IsMapEvaluation generatorImages reduction9756.relations [1,1165] reduction9756.output := by lin_cert using reduction9756.terms
def image9757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9757 : InImage map_10_200 image9757 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9757 : Bundle := named_bundle% "RealMapCertificates/relations/basis9757.json"
theorem reductionProof9757 : EqualModuloRelations reduction9757.relations reduction9757.input reduction9757.output := by lin_cert using reduction9757.terms
theorem substitutionProof9757 : IsMapEvaluation generatorImages reduction9757.relations [1,82,324] reduction9757.output := by lin_cert using reduction9757.terms
def image9758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9758 : InImage map_10_200 image9758 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9758 : Bundle := named_bundle% "RealMapCertificates/relations/basis9758.json"
theorem reductionProof9758 : EqualModuloRelations reduction9758.relations reduction9758.input reduction9758.output := by lin_cert using reduction9758.terms
theorem substitutionProof9758 : IsMapEvaluation generatorImages reduction9758.relations [0,0,84,324] reduction9758.output := by lin_cert using reduction9758.terms
def map_10_201 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9933 : InImage map_10_201 image9933 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9933 : Bundle := named_bundle% "RealMapCertificates/relations/basis9933.json"
theorem reductionProof9933 : EqualModuloRelations reduction9933.relations reduction9933.input reduction9933.output := by lin_cert using reduction9933.terms
theorem substitutionProof9933 : IsMapEvaluation generatorImages reduction9933.relations [1216] reduction9933.output := by lin_cert using reduction9933.terms
def image9934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9934 : InImage map_10_201 image9934 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9934 : Bundle := named_bundle% "RealMapCertificates/relations/basis9934.json"
theorem reductionProof9934 : EqualModuloRelations reduction9934.relations reduction9934.input reduction9934.output := by lin_cert using reduction9934.terms
theorem substitutionProof9934 : IsMapEvaluation generatorImages reduction9934.relations [0,3,67,324] reduction9934.output := by lin_cert using reduction9934.terms
def map_10_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10067 : InImage map_10_202 image10067 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10067 : Bundle := named_bundle% "RealMapCertificates/relations/basis10067.json"
theorem reductionProof10067 : EqualModuloRelations reduction10067.relations reduction10067.input reduction10067.output := by lin_cert using reduction10067.terms
theorem substitutionProof10067 : IsMapEvaluation generatorImages reduction10067.relations [1234] reduction10067.output := by lin_cert using reduction10067.terms
def image10068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10068 : InImage map_10_202 image10068 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10068 : Bundle := named_bundle% "RealMapCertificates/relations/basis10068.json"
theorem reductionProof10068 : EqualModuloRelations reduction10068.relations reduction10068.input reduction10068.output := by lin_cert using reduction10068.terms
theorem substitutionProof10068 : IsMapEvaluation generatorImages reduction10068.relations [1233] reduction10068.output := by lin_cert using reduction10068.terms
def image10069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10069 : InImage map_10_202 image10069 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10069 : Bundle := named_bundle% "RealMapCertificates/relations/basis10069.json"
theorem reductionProof10069 : EqualModuloRelations reduction10069.relations reduction10069.input reduction10069.output := by lin_cert using reduction10069.terms
theorem substitutionProof10069 : IsMapEvaluation generatorImages reduction10069.relations [2,82,324] reduction10069.output := by lin_cert using reduction10069.terms
def image10070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10070 : InImage map_10_202 image10070 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10070 : Bundle := named_bundle% "RealMapCertificates/relations/basis10070.json"
theorem reductionProof10070 : EqualModuloRelations reduction10070.relations reduction10070.input reduction10070.output := by lin_cert using reduction10070.terms
theorem substitutionProof10070 : IsMapEvaluation generatorImages reduction10070.relations [0,1217] reduction10070.output := by lin_cert using reduction10070.terms
def image10071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10071 : InImage map_10_202 image10071 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10071 : Bundle := named_bundle% "RealMapCertificates/relations/basis10071.json"
theorem reductionProof10071 : EqualModuloRelations reduction10071.relations reduction10071.input reduction10071.output := by lin_cert using reduction10071.terms
theorem substitutionProof10071 : IsMapEvaluation generatorImages reduction10071.relations [0,0,3,68,324] reduction10071.output := by lin_cert using reduction10071.terms
def map_10_203 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10248 : InImage map_10_203 image10248 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10248 : Bundle := named_bundle% "RealMapCertificates/relations/basis10248.json"
theorem reductionProof10248 : EqualModuloRelations reduction10248.relations reduction10248.input reduction10248.output := by lin_cert using reduction10248.terms
theorem substitutionProof10248 : IsMapEvaluation generatorImages reduction10248.relations [0,1236] reduction10248.output := by lin_cert using reduction10248.terms
def map_10_204 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10450 : InImage map_10_204 image10450 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10450 : Bundle := named_bundle% "RealMapCertificates/relations/basis10450.json"
theorem reductionProof10450 : EqualModuloRelations reduction10450.relations reduction10450.input reduction10450.output := by lin_cert using reduction10450.terms
theorem substitutionProof10450 : IsMapEvaluation generatorImages reduction10450.relations [1280] reduction10450.output := by lin_cert using reduction10450.terms
def image10451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10451 : InImage map_10_204 image10451 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10451 : Bundle := named_bundle% "RealMapCertificates/relations/basis10451.json"
theorem reductionProof10451 : EqualModuloRelations reduction10451.relations reduction10451.input reduction10451.output := by lin_cert using reduction10451.terms
theorem substitutionProof10451 : IsMapEvaluation generatorImages reduction10451.relations [1279] reduction10451.output := by lin_cert using reduction10451.terms
def image10452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10452 : InImage map_10_204 image10452 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10452 : Bundle := named_bundle% "RealMapCertificates/relations/basis10452.json"
theorem reductionProof10452 : EqualModuloRelations reduction10452.relations reduction10452.input reduction10452.output := by lin_cert using reduction10452.terms
theorem substitutionProof10452 : IsMapEvaluation generatorImages reduction10452.relations [1278] reduction10452.output := by lin_cert using reduction10452.terms
def image10453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10453 : InImage map_10_204 image10453 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10453 : Bundle := named_bundle% "RealMapCertificates/relations/basis10453.json"
theorem reductionProof10453 : EqualModuloRelations reduction10453.relations reduction10453.input reduction10453.output := by lin_cert using reduction10453.terms
theorem substitutionProof10453 : IsMapEvaluation generatorImages reduction10453.relations [106,324] reduction10453.output := by lin_cert using reduction10453.terms
def image10454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10454 : InImage map_10_204 image10454 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10454 : Bundle := named_bundle% "RealMapCertificates/relations/basis10454.json"
theorem reductionProof10454 : EqualModuloRelations reduction10454.relations reduction10454.input reduction10454.output := by lin_cert using reduction10454.terms
theorem substitutionProof10454 : IsMapEvaluation generatorImages reduction10454.relations [105,324] reduction10454.output := by lin_cert using reduction10454.terms
def image10455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10455 : InImage map_10_204 image10455 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10455 : Bundle := named_bundle% "RealMapCertificates/relations/basis10455.json"
theorem reductionProof10455 : EqualModuloRelations reduction10455.relations reduction10455.input reduction10455.output := by lin_cert using reduction10455.terms
theorem substitutionProof10455 : IsMapEvaluation generatorImages reduction10455.relations [1,1235] reduction10455.output := by lin_cert using reduction10455.terms
def map_10_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10594 : InImage map_10_205 image10594 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10594 : Bundle := named_bundle% "RealMapCertificates/relations/basis10594.json"
theorem reductionProof10594 : EqualModuloRelations reduction10594.relations reduction10594.input reduction10594.output := by lin_cert using reduction10594.terms
theorem substitutionProof10594 : IsMapEvaluation generatorImages reduction10594.relations [0,1283] reduction10594.output := by lin_cert using reduction10594.terms
def image10595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10595 : InImage map_10_205 image10595 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10595 : Bundle := named_bundle% "RealMapCertificates/relations/basis10595.json"
theorem reductionProof10595 : EqualModuloRelations reduction10595.relations reduction10595.input reduction10595.output := by lin_cert using reduction10595.terms
theorem substitutionProof10595 : IsMapEvaluation generatorImages reduction10595.relations [0,1281] reduction10595.output := by lin_cert using reduction10595.terms
def image10596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10596 : InImage map_10_205 image10596 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10596 : Bundle := named_bundle% "RealMapCertificates/relations/basis10596.json"
theorem reductionProof10596 : EqualModuloRelations reduction10596.relations reduction10596.input reduction10596.output := by lin_cert using reduction10596.terms
theorem substitutionProof10596 : IsMapEvaluation generatorImages reduction10596.relations [0,107,324] reduction10596.output := by lin_cert using reduction10596.terms
def map_10_206 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10796 : InImage map_10_206 image10796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10796 : Bundle := named_bundle% "RealMapCertificates/relations/basis10796.json"
theorem reductionProof10796 : EqualModuloRelations reduction10796.relations reduction10796.input reduction10796.output := by lin_cert using reduction10796.terms
theorem substitutionProof10796 : IsMapEvaluation generatorImages reduction10796.relations [1,1282] reduction10796.output := by lin_cert using reduction10796.terms
def image10797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10797 : InImage map_10_206 image10797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10797 : Bundle := named_bundle% "RealMapCertificates/relations/basis10797.json"
theorem reductionProof10797 : EqualModuloRelations reduction10797.relations reduction10797.input reduction10797.output := by lin_cert using reduction10797.terms
theorem substitutionProof10797 : IsMapEvaluation generatorImages reduction10797.relations [1,1281] reduction10797.output := by lin_cert using reduction10797.terms
def image10798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10798 : InImage map_10_206 image10798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10798 : Bundle := named_bundle% "RealMapCertificates/relations/basis10798.json"
theorem reductionProof10798 : EqualModuloRelations reduction10798.relations reduction10798.input reduction10798.output := by lin_cert using reduction10798.terms
theorem substitutionProof10798 : IsMapEvaluation generatorImages reduction10798.relations [1,107,324] reduction10798.output := by lin_cert using reduction10798.terms
def image10799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10799 : InImage map_10_206 image10799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10799 : Bundle := named_bundle% "RealMapCertificates/relations/basis10799.json"
theorem reductionProof10799 : EqualModuloRelations reduction10799.relations reduction10799.input reduction10799.output := by lin_cert using reduction10799.terms
theorem substitutionProof10799 : IsMapEvaluation generatorImages reduction10799.relations [1,1,18,18,446] reduction10799.output := by lin_cert using reduction10799.terms
def image10800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10800 : InImage map_10_206 image10800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10800 : Bundle := named_bundle% "RealMapCertificates/relations/basis10800.json"
theorem reductionProof10800 : EqualModuloRelations reduction10800.relations reduction10800.input reduction10800.output := by lin_cert using reduction10800.terms
theorem substitutionProof10800 : IsMapEvaluation generatorImages reduction10800.relations [0,2,95,324] reduction10800.output := by lin_cert using reduction10800.terms
def image10801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10801 : InImage map_10_206 image10801 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10801 : Bundle := named_bundle% "RealMapCertificates/relations/basis10801.json"
theorem reductionProof10801 : EqualModuloRelations reduction10801.relations reduction10801.input reduction10801.output := by lin_cert using reduction10801.terms
theorem substitutionProof10801 : IsMapEvaluation generatorImages reduction10801.relations [0,0,1284] reduction10801.output := by lin_cert using reduction10801.terms
def map_10_207 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10983 : InImage map_10_207 image10983 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10983 : Bundle := named_bundle% "RealMapCertificates/relations/basis10983.json"
theorem reductionProof10983 : EqualModuloRelations reduction10983.relations reduction10983.input reduction10983.output := by lin_cert using reduction10983.terms
theorem substitutionProof10983 : IsMapEvaluation generatorImages reduction10983.relations [1,108,324] reduction10983.output := by lin_cert using reduction10983.terms
def map_10_208 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11122 : InImage map_10_208 image11122 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11122 : Bundle := named_bundle% "RealMapCertificates/relations/basis11122.json"
theorem reductionProof11122 : EqualModuloRelations reduction11122.relations reduction11122.input reduction11122.output := by lin_cert using reduction11122.terms
theorem substitutionProof11122 : IsMapEvaluation generatorImages reduction11122.relations [2,107,324] reduction11122.output := by lin_cert using reduction11122.terms
def image11123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11123 : InImage map_10_208 image11123 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11123 : Bundle := named_bundle% "RealMapCertificates/relations/basis11123.json"
theorem reductionProof11123 : EqualModuloRelations reduction11123.relations reduction11123.input reduction11123.output := by lin_cert using reduction11123.terms
theorem substitutionProof11123 : IsMapEvaluation generatorImages reduction11123.relations [1,5,1058] reduction11123.output := by lin_cert using reduction11123.terms
def map_10_209 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11304 : InImage map_10_209 image11304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11304 : Bundle := named_bundle% "RealMapCertificates/relations/basis11304.json"
theorem reductionProof11304 : EqualModuloRelations reduction11304.relations reduction11304.input reduction11304.output := by lin_cert using reduction11304.terms
theorem substitutionProof11304 : IsMapEvaluation generatorImages reduction11304.relations [1358] reduction11304.output := by lin_cert using reduction11304.terms
def image11305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11305 : InImage map_10_209 image11305 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11305 : Bundle := named_bundle% "RealMapCertificates/relations/basis11305.json"
theorem reductionProof11305 : EqualModuloRelations reduction11305.relations reduction11305.input reduction11305.output := by lin_cert using reduction11305.terms
theorem substitutionProof11305 : IsMapEvaluation generatorImages reduction11305.relations [0,3,3,68,324] reduction11305.output := by lin_cert using reduction11305.terms
def image11306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11306 : InImage map_10_209 image11306 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11306 : Bundle := named_bundle% "RealMapCertificates/relations/basis11306.json"
theorem reductionProof11306 : EqualModuloRelations reduction11306.relations reduction11306.input reduction11306.output := by lin_cert using reduction11306.terms
theorem substitutionProof11306 : IsMapEvaluation generatorImages reduction11306.relations [0,2,1284] reduction11306.output := by lin_cert using reduction11306.terms
def map_10_210 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11518 : InImage map_10_210 image11518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11518 : Bundle := named_bundle% "RealMapCertificates/relations/basis11518.json"
theorem reductionProof11518 : EqualModuloRelations reduction11518.relations reduction11518.input reduction11518.output := by lin_cert using reduction11518.terms
theorem substitutionProof11518 : IsMapEvaluation generatorImages reduction11518.relations [1380] reduction11518.output := by lin_cert using reduction11518.terms
def image11519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11519 : InImage map_10_210 image11519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11519 : Bundle := named_bundle% "RealMapCertificates/relations/basis11519.json"
theorem reductionProof11519 : EqualModuloRelations reduction11519.relations reduction11519.input reduction11519.output := by lin_cert using reduction11519.terms
theorem substitutionProof11519 : IsMapEvaluation generatorImages reduction11519.relations [3,1236] reduction11519.output := by lin_cert using reduction11519.terms
def image11520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11520 : InImage map_10_210 image11520 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11520 : Bundle := named_bundle% "RealMapCertificates/relations/basis11520.json"
theorem reductionProof11520 : EqualModuloRelations reduction11520.relations reduction11520.input reduction11520.output := by lin_cert using reduction11520.terms
theorem substitutionProof11520 : IsMapEvaluation generatorImages reduction11520.relations [3,1235] reduction11520.output := by lin_cert using reduction11520.terms
def image11521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11521 : InImage map_10_210 image11521 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11521 : Bundle := named_bundle% "RealMapCertificates/relations/basis11521.json"
theorem reductionProof11521 : EqualModuloRelations reduction11521.relations reduction11521.input reduction11521.output := by lin_cert using reduction11521.terms
theorem substitutionProof11521 : IsMapEvaluation generatorImages reduction11521.relations [0,0,7,68,324] reduction11521.output := by lin_cert using reduction11521.terms
def map_10_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11656 : InImage map_10_211 image11656 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11656 : Bundle := named_bundle% "RealMapCertificates/relations/basis11656.json"
theorem reductionProof11656 : EqualModuloRelations reduction11656.relations reduction11656.input reduction11656.output := by lin_cert using reduction11656.terms
theorem substitutionProof11656 : IsMapEvaluation generatorImages reduction11656.relations [0,120,324] reduction11656.output := by lin_cert using reduction11656.terms
def map_10_212 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11863 : InImage map_10_212 image11863 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11863 : Bundle := named_bundle% "RealMapCertificates/relations/basis11863.json"
theorem reductionProof11863 : EqualModuloRelations reduction11863.relations reduction11863.input reduction11863.output := by lin_cert using reduction11863.terms
theorem substitutionProof11863 : IsMapEvaluation generatorImages reduction11863.relations [1419] reduction11863.output := by lin_cert using reduction11863.terms
def image11864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11864 : InImage map_10_212 image11864 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11864 : Bundle := named_bundle% "RealMapCertificates/relations/basis11864.json"
theorem reductionProof11864 : EqualModuloRelations reduction11864.relations reduction11864.input reduction11864.output := by lin_cert using reduction11864.terms
theorem substitutionProof11864 : IsMapEvaluation generatorImages reduction11864.relations [1418] reduction11864.output := by lin_cert using reduction11864.terms
def image11865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11865 : InImage map_10_212 image11865 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11865 : Bundle := named_bundle% "RealMapCertificates/relations/basis11865.json"
theorem reductionProof11865 : EqualModuloRelations reduction11865.relations reduction11865.input reduction11865.output := by lin_cert using reduction11865.terms
theorem substitutionProof11865 : IsMapEvaluation generatorImages reduction11865.relations [1417] reduction11865.output := by lin_cert using reduction11865.terms
def image11866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11866 : InImage map_10_212 image11866 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11866 : Bundle := named_bundle% "RealMapCertificates/relations/basis11866.json"
theorem reductionProof11866 : EqualModuloRelations reduction11866.relations reduction11866.input reduction11866.output := by lin_cert using reduction11866.terms
theorem substitutionProof11866 : IsMapEvaluation generatorImages reduction11866.relations [3,1282] reduction11866.output := by lin_cert using reduction11866.terms
def image11867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11867 : InImage map_10_212 image11867 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11867 : Bundle := named_bundle% "RealMapCertificates/relations/basis11867.json"
theorem reductionProof11867 : EqualModuloRelations reduction11867.relations reduction11867.input reduction11867.output := by lin_cert using reduction11867.terms
theorem substitutionProof11867 : IsMapEvaluation generatorImages reduction11867.relations [3,1281] reduction11867.output := by lin_cert using reduction11867.terms
def image11868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11868 : InImage map_10_212 image11868 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11868 : Bundle := named_bundle% "RealMapCertificates/relations/basis11868.json"
theorem reductionProof11868 : EqualModuloRelations reduction11868.relations reduction11868.input reduction11868.output := by lin_cert using reduction11868.terms
theorem substitutionProof11868 : IsMapEvaluation generatorImages reduction11868.relations [3,107,324] reduction11868.output := by lin_cert using reduction11868.terms
def image11869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11869 : InImage map_10_212 image11869 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11869 : Bundle := named_bundle% "RealMapCertificates/relations/basis11869.json"
theorem reductionProof11869 : EqualModuloRelations reduction11869.relations reduction11869.input reduction11869.output := by lin_cert using reduction11869.terms
theorem substitutionProof11869 : IsMapEvaluation generatorImages reduction11869.relations [0,0,121,324] reduction11869.output := by lin_cert using reduction11869.terms
def map_10_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12093 : InImage map_10_213 image12093 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12093 : Bundle := named_bundle% "RealMapCertificates/relations/basis12093.json"
theorem reductionProof12093 : EqualModuloRelations reduction12093.relations reduction12093.input reduction12093.output := by lin_cert using reduction12093.terms
theorem substitutionProof12093 : IsMapEvaluation generatorImages reduction12093.relations [133,324] reduction12093.output := by lin_cert using reduction12093.terms
def image12094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12094 : InImage map_10_213 image12094 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12094 : Bundle := named_bundle% "RealMapCertificates/relations/basis12094.json"
theorem reductionProof12094 : EqualModuloRelations reduction12094.relations reduction12094.input reduction12094.output := by lin_cert using reduction12094.terms
theorem substitutionProof12094 : IsMapEvaluation generatorImages reduction12094.relations [0,1420] reduction12094.output := by lin_cert using reduction12094.terms
def image12095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12095 : InImage map_10_213 image12095 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12095 : Bundle := named_bundle% "RealMapCertificates/relations/basis12095.json"
theorem reductionProof12095 : EqualModuloRelations reduction12095.relations reduction12095.input reduction12095.output := by lin_cert using reduction12095.terms
theorem substitutionProof12095 : IsMapEvaluation generatorImages reduction12095.relations [0,0,0,122,324] reduction12095.output := by lin_cert using reduction12095.terms
def map_10_214 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12251 : InImage map_10_214 image12251 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12251 : Bundle := named_bundle% "RealMapCertificates/relations/basis12251.json"
theorem reductionProof12251 : EqualModuloRelations reduction12251.relations reduction12251.input reduction12251.output := by lin_cert using reduction12251.terms
theorem substitutionProof12251 : IsMapEvaluation generatorImages reduction12251.relations [1463] reduction12251.output := by lin_cert using reduction12251.terms
def image12252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12252 : InImage map_10_214 image12252 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12252 : Bundle := named_bundle% "RealMapCertificates/relations/basis12252.json"
theorem reductionProof12252 : EqualModuloRelations reduction12252.relations reduction12252.input reduction12252.output := by lin_cert using reduction12252.terms
theorem substitutionProof12252 : IsMapEvaluation generatorImages reduction12252.relations [1462] reduction12252.output := by lin_cert using reduction12252.terms
def image12253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12253 : InImage map_10_214 image12253 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12253 : Bundle := named_bundle% "RealMapCertificates/relations/basis12253.json"
theorem reductionProof12253 : EqualModuloRelations reduction12253.relations reduction12253.input reduction12253.output := by lin_cert using reduction12253.terms
theorem substitutionProof12253 : IsMapEvaluation generatorImages reduction12253.relations [1461] reduction12253.output := by lin_cert using reduction12253.terms
def image12254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12254 : InImage map_10_214 image12254 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12254 : Bundle := named_bundle% "RealMapCertificates/relations/basis12254.json"
theorem reductionProof12254 : EqualModuloRelations reduction12254.relations reduction12254.input reduction12254.output := by lin_cert using reduction12254.terms
theorem substitutionProof12254 : IsMapEvaluation generatorImages reduction12254.relations [1,1420] reduction12254.output := by lin_cert using reduction12254.terms
def image12255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12255 : InImage map_10_214 image12255 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12255 : Bundle := named_bundle% "RealMapCertificates/relations/basis12255.json"
theorem reductionProof12255 : EqualModuloRelations reduction12255.relations reduction12255.input reduction12255.output := by lin_cert using reduction12255.terms
theorem substitutionProof12255 : IsMapEvaluation generatorImages reduction12255.relations [0,0,129,324] reduction12255.output := by lin_cert using reduction12255.terms
def image12256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12256 : InImage map_10_214 image12256 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12256 : Bundle := named_bundle% "RealMapCertificates/relations/basis12256.json"
theorem reductionProof12256 : EqualModuloRelations reduction12256.relations reduction12256.input reduction12256.output := by lin_cert using reduction12256.terms
theorem substitutionProof12256 : IsMapEvaluation generatorImages reduction12256.relations [0,0,128,324] reduction12256.output := by lin_cert using reduction12256.terms
def map_10_215 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12448 : InImage map_10_215 image12448 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12448 : Bundle := named_bundle% "RealMapCertificates/relations/basis12448.json"
theorem reductionProof12448 : EqualModuloRelations reduction12448.relations reduction12448.input reduction12448.output := by lin_cert using reduction12448.terms
theorem substitutionProof12448 : IsMapEvaluation generatorImages reduction12448.relations [139,324] reduction12448.output := by lin_cert using reduction12448.terms
def image12449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12449 : InImage map_10_215 image12449 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12449 : Bundle := named_bundle% "RealMapCertificates/relations/basis12449.json"
theorem reductionProof12449 : EqualModuloRelations reduction12449.relations reduction12449.input reduction12449.output := by lin_cert using reduction12449.terms
theorem substitutionProof12449 : IsMapEvaluation generatorImages reduction12449.relations [0,1464] reduction12449.output := by lin_cert using reduction12449.terms
def map_10_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12663 : InImage map_10_216 image12663 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12663 : Bundle := named_bundle% "RealMapCertificates/relations/basis12663.json"
theorem reductionProof12663 : EqualModuloRelations reduction12663.relations reduction12663.input reduction12663.output := by lin_cert using reduction12663.terms
theorem substitutionProof12663 : IsMapEvaluation generatorImages reduction12663.relations [2,1421] reduction12663.output := by lin_cert using reduction12663.terms
def image12664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12664 : InImage map_10_216 image12664 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12664 : Bundle := named_bundle% "RealMapCertificates/relations/basis12664.json"
theorem reductionProof12664 : EqualModuloRelations reduction12664.relations reduction12664.input reduction12664.output := by lin_cert using reduction12664.terms
theorem substitutionProof12664 : IsMapEvaluation generatorImages reduction12664.relations [1,1465] reduction12664.output := by lin_cert using reduction12664.terms
def image12665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12665 : InImage map_10_216 image12665 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12665 : Bundle := named_bundle% "RealMapCertificates/relations/basis12665.json"
theorem reductionProof12665 : EqualModuloRelations reduction12665.relations reduction12665.input reduction12665.output := by lin_cert using reduction12665.terms
theorem substitutionProof12665 : IsMapEvaluation generatorImages reduction12665.relations [0,0,2,122,324] reduction12665.output := by lin_cert using reduction12665.terms
def map_10_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12804 : InImage map_10_217 image12804 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12804 : Bundle := named_bundle% "RealMapCertificates/relations/basis12804.json"
theorem reductionProof12804 : EqualModuloRelations reduction12804.relations reduction12804.input reduction12804.output := by lin_cert using reduction12804.terms
theorem substitutionProof12804 : IsMapEvaluation generatorImages reduction12804.relations [7,1217] reduction12804.output := by lin_cert using reduction12804.terms
def image12805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12805 : InImage map_10_217 image12805 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12805 : Bundle := named_bundle% "RealMapCertificates/relations/basis12805.json"
theorem reductionProof12805 : EqualModuloRelations reduction12805.relations reduction12805.input reduction12805.output := by lin_cert using reduction12805.terms
theorem substitutionProof12805 : IsMapEvaluation generatorImages reduction12805.relations [2,134,324] reduction12805.output := by lin_cert using reduction12805.terms
def map_10_218 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13019 : InImage map_10_218 image13019 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13019 : Bundle := named_bundle% "RealMapCertificates/relations/basis13019.json"
theorem reductionProof13019 : EqualModuloRelations reduction13019.relations reduction13019.input reduction13019.output := by lin_cert using reduction13019.terms
theorem substitutionProof13019 : IsMapEvaluation generatorImages reduction13019.relations [1530] reduction13019.output := by lin_cert using reduction13019.terms
def image13020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13020 : InImage map_10_218 image13020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13020 : Bundle := named_bundle% "RealMapCertificates/relations/basis13020.json"
theorem reductionProof13020 : EqualModuloRelations reduction13020.relations reduction13020.input reduction13020.output := by lin_cert using reduction13020.terms
theorem substitutionProof13020 : IsMapEvaluation generatorImages reduction13020.relations [7,1235] reduction13020.output := by lin_cert using reduction13020.terms
def image13021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13021 : InImage map_10_218 image13021 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13021 : Bundle := named_bundle% "RealMapCertificates/relations/basis13021.json"
theorem reductionProof13021 : EqualModuloRelations reduction13021.relations reduction13021.input reduction13021.output := by lin_cert using reduction13021.terms
theorem substitutionProof13021 : IsMapEvaluation generatorImages reduction13021.relations [3,120,324] reduction13021.output := by lin_cert using reduction13021.terms
def image13022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13022 : InImage map_10_218 image13022 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13022 : Bundle := named_bundle% "RealMapCertificates/relations/basis13022.json"
theorem reductionProof13022 : EqualModuloRelations reduction13022.relations reduction13022.input reduction13022.output := by lin_cert using reduction13022.terms
theorem substitutionProof13022 : IsMapEvaluation generatorImages reduction13022.relations [3,3,1237] reduction13022.output := by lin_cert using reduction13022.terms
def image13023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13023 : InImage map_10_218 image13023 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13023 : Bundle := named_bundle% "RealMapCertificates/relations/basis13023.json"
theorem reductionProof13023 : EqualModuloRelations reduction13023.relations reduction13023.input reduction13023.output := by lin_cert using reduction13023.terms
theorem substitutionProof13023 : IsMapEvaluation generatorImages reduction13023.relations [2,1464] reduction13023.output := by lin_cert using reduction13023.terms
end RealMapCertificates
