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
  | 13 => [[9]]
  | 15 => [[2,4,4]]
  | 17 => [[4,7]]
  | 18 => []
  | 21 => [[3,4,4]]
  | 43 => []
  | 67 => []
  | 76 => []
  | 95 => []
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
  | 271 => []
  | 282 => []
  | 313 => []
  | 314 => []
  | 324 => []
  | 333 => []
  | 338 => []
  | 352 => []
  | 366 => []
  | 367 => []
  | 373 => []
  | 378 => []
  | 1058 => []
  | 1281 => []
  | 1282 => []
  | 1284 => []
  | 1286 => []
  | 1347 => []
  | 1348 => []
  | 1420 => []
  | 1421 => []
  | 1422 => []
  | 1531 => []
  | 1549 => []
  | 1584 => []
  | 1633 => []
  | 1634 => []
  | 1649 => []
  | 1676 => []
  | 1677 => []
  | 1684 => []
  | 1711 => []
  | 1712 => []
  | 1713 => []
  | 1808 => []
  | 1809 => []
  | 1810 => []
  | 1924 => []
  | 1957 => []
  | 1958 => []
  | 2032 => []
  | 2033 => []
  | 2158 => []
  | 2159 => []
  | 2160 => []
  | 2188 => []
  | 2329 => []
  | 2399 => []
  | 2625 => []
  | 2667 => []
  | 2736 => []
  | 2787 => []
  | 2848 => []
  | 2849 => []
  | 2850 => []
  | 2909 => []
  | _ => []
def map_10_219 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13225 : InImage map_10_219 image13225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13225 : Bundle := named_bundle% "RealMapCertificates/relations/basis13225.json"
theorem reductionProof13225 : EqualModuloRelations reduction13225.relations reduction13225.input reduction13225.output := by lin_cert using reduction13225.terms
theorem substitutionProof13225 : IsMapEvaluation generatorImages reduction13225.relations [1549] reduction13225.output := by lin_cert using reduction13225.terms
def image13226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13226 : InImage map_10_219 image13226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13226 : Bundle := named_bundle% "RealMapCertificates/relations/basis13226.json"
theorem reductionProof13226 : EqualModuloRelations reduction13226.relations reduction13226.input reduction13226.output := by lin_cert using reduction13226.terms
theorem substitutionProof13226 : IsMapEvaluation generatorImages reduction13226.relations [13,76,324] reduction13226.output := by lin_cert using reduction13226.terms
def image13227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13227 : InImage map_10_219 image13227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13227 : Bundle := named_bundle% "RealMapCertificates/relations/basis13227.json"
theorem reductionProof13227 : EqualModuloRelations reduction13227.relations reduction13227.input reduction13227.output := by lin_cert using reduction13227.terms
theorem substitutionProof13227 : IsMapEvaluation generatorImages reduction13227.relations [0,1531] reduction13227.output := by lin_cert using reduction13227.terms
def map_10_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13370 : InImage map_10_220 image13370 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13370 : Bundle := named_bundle% "RealMapCertificates/relations/basis13370.json"
theorem reductionProof13370 : EqualModuloRelations reduction13370.relations reduction13370.input reduction13370.output := by lin_cert using reduction13370.terms
theorem substitutionProof13370 : IsMapEvaluation generatorImages reduction13370.relations [7,1282] reduction13370.output := by lin_cert using reduction13370.terms
def image13371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13371 : InImage map_10_220 image13371 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13371 : Bundle := named_bundle% "RealMapCertificates/relations/basis13371.json"
theorem reductionProof13371 : EqualModuloRelations reduction13371.relations reduction13371.input reduction13371.output := by lin_cert using reduction13371.terms
theorem substitutionProof13371 : IsMapEvaluation generatorImages reduction13371.relations [7,1281] reduction13371.output := by lin_cert using reduction13371.terms
def image13372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13372 : InImage map_10_220 image13372 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13372 : Bundle := named_bundle% "RealMapCertificates/relations/basis13372.json"
theorem reductionProof13372 : EqualModuloRelations reduction13372.relations reduction13372.input reduction13372.output := by lin_cert using reduction13372.terms
theorem substitutionProof13372 : IsMapEvaluation generatorImages reduction13372.relations [2,2,1422] reduction13372.output := by lin_cert using reduction13372.terms
def image13373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13373 : InImage map_10_220 image13373 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13373 : Bundle := named_bundle% "RealMapCertificates/relations/basis13373.json"
theorem reductionProof13373 : EqualModuloRelations reduction13373.relations reduction13373.input reduction13373.output := by lin_cert using reduction13373.terms
theorem substitutionProof13373 : IsMapEvaluation generatorImages reduction13373.relations [1,1531] reduction13373.output := by lin_cert using reduction13373.terms
def map_10_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13569 : InImage map_10_221 image13569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13569 : Bundle := named_bundle% "RealMapCertificates/relations/basis13569.json"
theorem reductionProof13569 : EqualModuloRelations reduction13569.relations reduction13569.input reduction13569.output := by lin_cert using reduction13569.terms
theorem substitutionProof13569 : IsMapEvaluation generatorImages reduction13569.relations [1584] reduction13569.output := by lin_cert using reduction13569.terms
def image13570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13570 : InImage map_10_221 image13570 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13570 : Bundle := named_bundle% "RealMapCertificates/relations/basis13570.json"
theorem reductionProof13570 : EqualModuloRelations reduction13570.relations reduction13570.input reduction13570.output := by lin_cert using reduction13570.terms
theorem substitutionProof13570 : IsMapEvaluation generatorImages reduction13570.relations [2,7,95,324] reduction13570.output := by lin_cert using reduction13570.terms
def image13571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13571 : InImage map_10_221 image13571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13571 : Bundle := named_bundle% "RealMapCertificates/relations/basis13571.json"
theorem reductionProof13571 : EqualModuloRelations reduction13571.relations reduction13571.input reduction13571.output := by lin_cert using reduction13571.terms
theorem substitutionProof13571 : IsMapEvaluation generatorImages reduction13571.relations [0,7,1284] reduction13571.output := by lin_cert using reduction13571.terms
def map_10_222 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13793 : InImage map_10_222 image13793 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13793 : Bundle := named_bundle% "RealMapCertificates/relations/basis13793.json"
theorem reductionProof13793 : EqualModuloRelations reduction13793.relations reduction13793.input reduction13793.output := by lin_cert using reduction13793.terms
theorem substitutionProof13793 : IsMapEvaluation generatorImages reduction13793.relations [0,0,7,1286] reduction13793.output := by lin_cert using reduction13793.terms
def map_10_224 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14141 : InImage map_10_224 image14141 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14141 : Bundle := named_bundle% "RealMapCertificates/relations/basis14141.json"
theorem reductionProof14141 : EqualModuloRelations reduction14141.relations reduction14141.input reduction14141.output := by lin_cert using reduction14141.terms
theorem substitutionProof14141 : IsMapEvaluation generatorImages reduction14141.relations [1633] reduction14141.output := by lin_cert using reduction14141.terms
def image14142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14142 : InImage map_10_224 image14142 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14142 : Bundle := named_bundle% "RealMapCertificates/relations/basis14142.json"
theorem reductionProof14142 : EqualModuloRelations reduction14142.relations reduction14142.input reduction14142.output := by lin_cert using reduction14142.terms
theorem substitutionProof14142 : IsMapEvaluation generatorImages reduction14142.relations [7,7,67,324] reduction14142.output := by lin_cert using reduction14142.terms
def map_10_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14343 : InImage map_10_225 image14343 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14343 : Bundle := named_bundle% "RealMapCertificates/relations/basis14343.json"
theorem reductionProof14343 : EqualModuloRelations reduction14343.relations reduction14343.input reduction14343.output := by lin_cert using reduction14343.terms
theorem substitutionProof14343 : IsMapEvaluation generatorImages reduction14343.relations [1649] reduction14343.output := by lin_cert using reduction14343.terms
def image14344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14344 : InImage map_10_225 image14344 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14344 : Bundle := named_bundle% "RealMapCertificates/relations/basis14344.json"
theorem reductionProof14344 : EqualModuloRelations reduction14344.relations reduction14344.input reduction14344.output := by lin_cert using reduction14344.terms
theorem substitutionProof14344 : IsMapEvaluation generatorImages reduction14344.relations [0,7,1347] reduction14344.output := by lin_cert using reduction14344.terms
def map_10_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14495 : InImage map_10_226 image14495 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14495 : Bundle := named_bundle% "RealMapCertificates/relations/basis14495.json"
theorem reductionProof14495 : EqualModuloRelations reduction14495.relations reduction14495.input reduction14495.output := by lin_cert using reduction14495.terms
theorem substitutionProof14495 : IsMapEvaluation generatorImages reduction14495.relations [1676] reduction14495.output := by lin_cert using reduction14495.terms
def image14496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14496 : InImage map_10_226 image14496 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14496 : Bundle := named_bundle% "RealMapCertificates/relations/basis14496.json"
theorem reductionProof14496 : EqualModuloRelations reduction14496.relations reduction14496.input reduction14496.output := by lin_cert using reduction14496.terms
theorem substitutionProof14496 : IsMapEvaluation generatorImages reduction14496.relations [0,0,7,1348] reduction14496.output := by lin_cert using reduction14496.terms
def map_10_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14703 : InImage map_10_227 image14703 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14703 : Bundle := named_bundle% "RealMapCertificates/relations/basis14703.json"
theorem reductionProof14703 : EqualModuloRelations reduction14703.relations reduction14703.input reduction14703.output := by lin_cert using reduction14703.terms
theorem substitutionProof14703 : IsMapEvaluation generatorImages reduction14703.relations [0,0,0,1634] reduction14703.output := by lin_cert using reduction14703.terms
def map_10_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14933 : InImage map_10_228 image14933 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14933 : Bundle := named_bundle% "RealMapCertificates/relations/basis14933.json"
theorem reductionProof14933 : EqualModuloRelations reduction14933.relations reduction14933.input reduction14933.output := by lin_cert using reduction14933.terms
theorem substitutionProof14933 : IsMapEvaluation generatorImages reduction14933.relations [7,1421] reduction14933.output := by lin_cert using reduction14933.terms
def image14934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14934 : InImage map_10_228 image14934 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14934 : Bundle := named_bundle% "RealMapCertificates/relations/basis14934.json"
theorem reductionProof14934 : EqualModuloRelations reduction14934.relations reduction14934.input reduction14934.output := by lin_cert using reduction14934.terms
theorem substitutionProof14934 : IsMapEvaluation generatorImages reduction14934.relations [7,1420] reduction14934.output := by lin_cert using reduction14934.terms
def image14935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14935 : InImage map_10_228 image14935 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14935 : Bundle := named_bundle% "RealMapCertificates/relations/basis14935.json"
theorem reductionProof14935 : EqualModuloRelations reduction14935.relations reduction14935.input reduction14935.output := by lin_cert using reduction14935.terms
theorem substitutionProof14935 : IsMapEvaluation generatorImages reduction14935.relations [1,1677] reduction14935.output := by lin_cert using reduction14935.terms
def image14936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14936 : InImage map_10_228 image14936 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14936 : Bundle := named_bundle% "RealMapCertificates/relations/basis14936.json"
theorem reductionProof14936 : EqualModuloRelations reduction14936.relations reduction14936.input reduction14936.output := by lin_cert using reduction14936.terms
theorem substitutionProof14936 : IsMapEvaluation generatorImages reduction14936.relations [0,1684] reduction14936.output := by lin_cert using reduction14936.terms
def image14937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14937 : InImage map_10_228 image14937 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14937 : Bundle := named_bundle% "RealMapCertificates/relations/basis14937.json"
theorem reductionProof14937 : EqualModuloRelations reduction14937.relations reduction14937.input reduction14937.output := by lin_cert using reduction14937.terms
theorem substitutionProof14937 : IsMapEvaluation generatorImages reduction14937.relations [0,174,324] reduction14937.output := by lin_cert using reduction14937.terms
def map_10_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15081 : InImage map_10_229 image15081 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15081 : Bundle := named_bundle% "RealMapCertificates/relations/basis15081.json"
theorem reductionProof15081 : EqualModuloRelations reduction15081.relations reduction15081.input reduction15081.output := by lin_cert using reduction15081.terms
theorem substitutionProof15081 : IsMapEvaluation generatorImages reduction15081.relations [1,174,324] reduction15081.output := by lin_cert using reduction15081.terms
def image15082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15082 : InImage map_10_229 image15082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15082 : Bundle := named_bundle% "RealMapCertificates/relations/basis15082.json"
theorem reductionProof15082 : EqualModuloRelations reduction15082.relations reduction15082.input reduction15082.output := by lin_cert using reduction15082.terms
theorem substitutionProof15082 : IsMapEvaluation generatorImages reduction15082.relations [0,1712] reduction15082.output := by lin_cert using reduction15082.terms
def image15083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15083 : InImage map_10_229 image15083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15083 : Bundle := named_bundle% "RealMapCertificates/relations/basis15083.json"
theorem reductionProof15083 : EqualModuloRelations reduction15083.relations reduction15083.input reduction15083.output := by lin_cert using reduction15083.terms
theorem substitutionProof15083 : IsMapEvaluation generatorImages reduction15083.relations [0,1711] reduction15083.output := by lin_cert using reduction15083.terms
def image15084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15084 : InImage map_10_229 image15084 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15084 : Bundle := named_bundle% "RealMapCertificates/relations/basis15084.json"
theorem reductionProof15084 : EqualModuloRelations reduction15084.relations reduction15084.input reduction15084.output := by lin_cert using reduction15084.terms
theorem substitutionProof15084 : IsMapEvaluation generatorImages reduction15084.relations [0,0,0,0,0,18,1058] reduction15084.output := by lin_cert using reduction15084.terms
def map_10_230 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15316 : InImage map_10_230 image15316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15316 : Bundle := named_bundle% "RealMapCertificates/relations/basis15316.json"
theorem reductionProof15316 : EqualModuloRelations reduction15316.relations reduction15316.input reduction15316.output := by lin_cert using reduction15316.terms
theorem substitutionProof15316 : IsMapEvaluation generatorImages reduction15316.relations [1,1712] reduction15316.output := by lin_cert using reduction15316.terms
def image15317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15317 : InImage map_10_230 image15317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15317 : Bundle := named_bundle% "RealMapCertificates/relations/basis15317.json"
theorem reductionProof15317 : EqualModuloRelations reduction15317.relations reduction15317.input reduction15317.output := by lin_cert using reduction15317.terms
theorem substitutionProof15317 : IsMapEvaluation generatorImages reduction15317.relations [1,7,1422] reduction15317.output := by lin_cert using reduction15317.terms
def image15318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15318 : InImage map_10_230 image15318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15318 : Bundle := named_bundle% "RealMapCertificates/relations/basis15318.json"
theorem reductionProof15318 : EqualModuloRelations reduction15318.relations reduction15318.input reduction15318.output := by lin_cert using reduction15318.terms
theorem substitutionProof15318 : IsMapEvaluation generatorImages reduction15318.relations [0,163,378] reduction15318.output := by lin_cert using reduction15318.terms
def image15319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15319 : InImage map_10_230 image15319 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15319 : Bundle := named_bundle% "RealMapCertificates/relations/basis15319.json"
theorem reductionProof15319 : EqualModuloRelations reduction15319.relations reduction15319.input reduction15319.output := by lin_cert using reduction15319.terms
theorem substitutionProof15319 : IsMapEvaluation generatorImages reduction15319.relations [0,0,1713] reduction15319.output := by lin_cert using reduction15319.terms
def map_10_231 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15560 : InImage map_10_231 image15560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15560 : Bundle := named_bundle% "RealMapCertificates/relations/basis15560.json"
theorem reductionProof15560 : EqualModuloRelations reduction15560.relations reduction15560.input reduction15560.output := by lin_cert using reduction15560.terms
theorem substitutionProof15560 : IsMapEvaluation generatorImages reduction15560.relations [1,181,324] reduction15560.output := by lin_cert using reduction15560.terms
def image15561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15561 : InImage map_10_231 image15561 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15561 : Bundle := named_bundle% "RealMapCertificates/relations/basis15561.json"
theorem reductionProof15561 : EqualModuloRelations reduction15561.relations reduction15561.input reduction15561.output := by lin_cert using reduction15561.terms
theorem substitutionProof15561 : IsMapEvaluation generatorImages reduction15561.relations [0,190,324] reduction15561.output := by lin_cert using reduction15561.terms
def map_10_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15732 : InImage map_10_232 image15732 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15732 : Bundle := named_bundle% "RealMapCertificates/relations/basis15732.json"
theorem reductionProof15732 : EqualModuloRelations reduction15732.relations reduction15732.input reduction15732.output := by lin_cert using reduction15732.terms
theorem substitutionProof15732 : IsMapEvaluation generatorImages reduction15732.relations [1808] reduction15732.output := by lin_cert using reduction15732.terms
def image15733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15733 : InImage map_10_232 image15733 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15733 : Bundle := named_bundle% "RealMapCertificates/relations/basis15733.json"
theorem reductionProof15733 : EqualModuloRelations reduction15733.relations reduction15733.input reduction15733.output := by lin_cert using reduction15733.terms
theorem substitutionProof15733 : IsMapEvaluation generatorImages reduction15733.relations [2,1711] reduction15733.output := by lin_cert using reduction15733.terms
def image15734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15734 : InImage map_10_232 image15734 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15734 : Bundle := named_bundle% "RealMapCertificates/relations/basis15734.json"
theorem reductionProof15734 : EqualModuloRelations reduction15734.relations reduction15734.input reduction15734.output := by lin_cert using reduction15734.terms
theorem substitutionProof15734 : IsMapEvaluation generatorImages reduction15734.relations [1,190,324] reduction15734.output := by lin_cert using reduction15734.terms
def map_10_233 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15964 : InImage map_10_233 image15964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15964 : Bundle := named_bundle% "RealMapCertificates/relations/basis15964.json"
theorem reductionProof15964 : EqualModuloRelations reduction15964.relations reduction15964.input reduction15964.output := by lin_cert using reduction15964.terms
theorem substitutionProof15964 : IsMapEvaluation generatorImages reduction15964.relations [2,181,324] reduction15964.output := by lin_cert using reduction15964.terms
def image15965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15965 : InImage map_10_233 image15965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15965 : Bundle := named_bundle% "RealMapCertificates/relations/basis15965.json"
theorem reductionProof15965 : EqualModuloRelations reduction15965.relations reduction15965.input reduction15965.output := by lin_cert using reduction15965.terms
theorem substitutionProof15965 : IsMapEvaluation generatorImages reduction15965.relations [0,1809] reduction15965.output := by lin_cert using reduction15965.terms
def image15966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15966 : InImage map_10_233 image15966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15966 : Bundle := named_bundle% "RealMapCertificates/relations/basis15966.json"
theorem reductionProof15966 : EqualModuloRelations reduction15966.relations reduction15966.input reduction15966.output := by lin_cert using reduction15966.terms
theorem substitutionProof15966 : IsMapEvaluation generatorImages reduction15966.relations [0,197,324] reduction15966.output := by lin_cert using reduction15966.terms
def map_10_234 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16222 : InImage map_10_234 image16222 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16222 : Bundle := named_bundle% "RealMapCertificates/relations/basis16222.json"
theorem reductionProof16222 : EqualModuloRelations reduction16222.relations reduction16222.input reduction16222.output := by lin_cert using reduction16222.terms
theorem substitutionProof16222 : IsMapEvaluation generatorImages reduction16222.relations [7,1531] reduction16222.output := by lin_cert using reduction16222.terms
def image16223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16223 : InImage map_10_234 image16223 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16223 : Bundle := named_bundle% "RealMapCertificates/relations/basis16223.json"
theorem reductionProof16223 : EqualModuloRelations reduction16223.relations reduction16223.input reduction16223.output := by lin_cert using reduction16223.terms
theorem substitutionProof16223 : IsMapEvaluation generatorImages reduction16223.relations [1,1809] reduction16223.output := by lin_cert using reduction16223.terms
def image16224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16224 : InImage map_10_234 image16224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16224 : Bundle := named_bundle% "RealMapCertificates/relations/basis16224.json"
theorem reductionProof16224 : EqualModuloRelations reduction16224.relations reduction16224.input reduction16224.output := by lin_cert using reduction16224.terms
theorem substitutionProof16224 : IsMapEvaluation generatorImages reduction16224.relations [0,0,198,324] reduction16224.output := by lin_cert using reduction16224.terms
def map_10_235 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16404 : InImage map_10_235 image16404 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16404 : Bundle := named_bundle% "RealMapCertificates/relations/basis16404.json"
theorem reductionProof16404 : EqualModuloRelations reduction16404.relations reduction16404.input reduction16404.output := by lin_cert using reduction16404.terms
theorem substitutionProof16404 : IsMapEvaluation generatorImages reduction16404.relations [3,174,324] reduction16404.output := by lin_cert using reduction16404.terms
def map_10_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16632 : InImage map_10_236 image16632 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16632 : Bundle := named_bundle% "RealMapCertificates/relations/basis16632.json"
theorem reductionProof16632 : EqualModuloRelations reduction16632.relations reduction16632.input reduction16632.output := by lin_cert using reduction16632.terms
theorem substitutionProof16632 : IsMapEvaluation generatorImages reduction16632.relations [213,324] reduction16632.output := by lin_cert using reduction16632.terms
def image16633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16633 : InImage map_10_236 image16633 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16633 : Bundle := named_bundle% "RealMapCertificates/relations/basis16633.json"
theorem reductionProof16633 : EqualModuloRelations reduction16633.relations reduction16633.input reduction16633.output := by lin_cert using reduction16633.terms
theorem substitutionProof16633 : IsMapEvaluation generatorImages reduction16633.relations [0,0,203,324] reduction16633.output := by lin_cert using reduction16633.terms
def map_10_237 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16884 : InImage map_10_237 image16884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16884 : Bundle := named_bundle% "RealMapCertificates/relations/basis16884.json"
theorem reductionProof16884 : EqualModuloRelations reduction16884.relations reduction16884.input reduction16884.output := by lin_cert using reduction16884.terms
theorem substitutionProof16884 : IsMapEvaluation generatorImages reduction16884.relations [3,181,324] reduction16884.output := by lin_cert using reduction16884.terms
def image16885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16885 : InImage map_10_237 image16885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16885 : Bundle := named_bundle% "RealMapCertificates/relations/basis16885.json"
theorem reductionProof16885 : EqualModuloRelations reduction16885.relations reduction16885.input reduction16885.output := by lin_cert using reduction16885.terms
theorem substitutionProof16885 : IsMapEvaluation generatorImages reduction16885.relations [0,7,7,1286] reduction16885.output := by lin_cert using reduction16885.terms
def map_10_238 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17083 : InImage map_10_238 image17083 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17083 : Bundle := named_bundle% "RealMapCertificates/relations/basis17083.json"
theorem reductionProof17083 : EqualModuloRelations reduction17083.relations reduction17083.input reduction17083.output := by lin_cert using reduction17083.terms
theorem substitutionProof17083 : IsMapEvaluation generatorImages reduction17083.relations [1957] reduction17083.output := by lin_cert using reduction17083.terms
def image17084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17084 : InImage map_10_238 image17084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17084 : Bundle := named_bundle% "RealMapCertificates/relations/basis17084.json"
theorem reductionProof17084 : EqualModuloRelations reduction17084.relations reduction17084.input reduction17084.output := by lin_cert using reduction17084.terms
theorem substitutionProof17084 : IsMapEvaluation generatorImages reduction17084.relations [3,190,324] reduction17084.output := by lin_cert using reduction17084.terms
def image17085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17085 : InImage map_10_238 image17085 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17085 : Bundle := named_bundle% "RealMapCertificates/relations/basis17085.json"
theorem reductionProof17085 : EqualModuloRelations reduction17085.relations reduction17085.input reduction17085.output := by lin_cert using reduction17085.terms
theorem substitutionProof17085 : IsMapEvaluation generatorImages reduction17085.relations [1,1,203,324] reduction17085.output := by lin_cert using reduction17085.terms
def image17086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17086 : InImage map_10_238 image17086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17086 : Bundle := named_bundle% "RealMapCertificates/relations/basis17086.json"
theorem reductionProof17086 : EqualModuloRelations reduction17086.relations reduction17086.input reduction17086.output := by lin_cert using reduction17086.terms
theorem substitutionProof17086 : IsMapEvaluation generatorImages reduction17086.relations [0,1924] reduction17086.output := by lin_cert using reduction17086.terms
def image17087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17087 : InImage map_10_238 image17087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17087 : Bundle := named_bundle% "RealMapCertificates/relations/basis17087.json"
theorem reductionProof17087 : EqualModuloRelations reduction17087.relations reduction17087.input reduction17087.output := by lin_cert using reduction17087.terms
theorem substitutionProof17087 : IsMapEvaluation generatorImages reduction17087.relations [0,216,324] reduction17087.output := by lin_cert using reduction17087.terms
def map_10_239 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17334 : InImage map_10_239 image17334 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17334 : Bundle := named_bundle% "RealMapCertificates/relations/basis17334.json"
theorem reductionProof17334 : EqualModuloRelations reduction17334.relations reduction17334.input reduction17334.output := by lin_cert using reduction17334.terms
theorem substitutionProof17334 : IsMapEvaluation generatorImages reduction17334.relations [0,1958] reduction17334.output := by lin_cert using reduction17334.terms
def image17335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17335 : InImage map_10_239 image17335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17335 : Bundle := named_bundle% "RealMapCertificates/relations/basis17335.json"
theorem reductionProof17335 : EqualModuloRelations reduction17335.relations reduction17335.input reduction17335.output := by lin_cert using reduction17335.terms
theorem substitutionProof17335 : IsMapEvaluation generatorImages reduction17335.relations [0,3,191,324] reduction17335.output := by lin_cert using reduction17335.terms
def map_10_240 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17640 : InImage map_10_240 image17640 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17640 : Bundle := named_bundle% "RealMapCertificates/relations/basis17640.json"
theorem reductionProof17640 : EqualModuloRelations reduction17640.relations reduction17640.input reduction17640.output := by lin_cert using reduction17640.terms
theorem substitutionProof17640 : IsMapEvaluation generatorImages reduction17640.relations [2032] reduction17640.output := by lin_cert using reduction17640.terms
def image17641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17641 : InImage map_10_240 image17641 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17641 : Bundle := named_bundle% "RealMapCertificates/relations/basis17641.json"
theorem reductionProof17641 : EqualModuloRelations reduction17641.relations reduction17641.input reduction17641.output := by lin_cert using reduction17641.terms
theorem substitutionProof17641 : IsMapEvaluation generatorImages reduction17641.relations [3,1810] reduction17641.output := by lin_cert using reduction17641.terms
def image17642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17642 : InImage map_10_240 image17642 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17642 : Bundle := named_bundle% "RealMapCertificates/relations/basis17642.json"
theorem reductionProof17642 : EqualModuloRelations reduction17642.relations reduction17642.input reduction17642.output := by lin_cert using reduction17642.terms
theorem substitutionProof17642 : IsMapEvaluation generatorImages reduction17642.relations [3,1809] reduction17642.output := by lin_cert using reduction17642.terms
def image17643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17643 : InImage map_10_240 image17643 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17643 : Bundle := named_bundle% "RealMapCertificates/relations/basis17643.json"
theorem reductionProof17643 : EqualModuloRelations reduction17643.relations reduction17643.input reduction17643.output := by lin_cert using reduction17643.terms
theorem substitutionProof17643 : IsMapEvaluation generatorImages reduction17643.relations [3,197,324] reduction17643.output := by lin_cert using reduction17643.terms
def image17644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17644 : InImage map_10_240 image17644 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17644 : Bundle := named_bundle% "RealMapCertificates/relations/basis17644.json"
theorem reductionProof17644 : EqualModuloRelations reduction17644.relations reduction17644.input reduction17644.output := by lin_cert using reduction17644.terms
theorem substitutionProof17644 : IsMapEvaluation generatorImages reduction17644.relations [1,1958] reduction17644.output := by lin_cert using reduction17644.terms
def map_10_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17848 : InImage map_10_241 image17848 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17848 : Bundle := named_bundle% "RealMapCertificates/relations/basis17848.json"
theorem reductionProof17848 : EqualModuloRelations reduction17848.relations reduction17848.input reduction17848.output := by lin_cert using reduction17848.terms
theorem substitutionProof17848 : IsMapEvaluation generatorImages reduction17848.relations [0,2033] reduction17848.output := by lin_cert using reduction17848.terms
def image17849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17849 : InImage map_10_241 image17849 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17849 : Bundle := named_bundle% "RealMapCertificates/relations/basis17849.json"
theorem reductionProof17849 : EqualModuloRelations reduction17849.relations reduction17849.input reduction17849.output := by lin_cert using reduction17849.terms
theorem substitutionProof17849 : IsMapEvaluation generatorImages reduction17849.relations [0,7,7,1348] reduction17849.output := by lin_cert using reduction17849.terms
def image17850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17850 : InImage map_10_241 image17850 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17850 : Bundle := named_bundle% "RealMapCertificates/relations/basis17850.json"
theorem reductionProof17850 : EqualModuloRelations reduction17850.relations reduction17850.input reduction17850.output := by lin_cert using reduction17850.terms
theorem substitutionProof17850 : IsMapEvaluation generatorImages reduction17850.relations [0,3,198,324] reduction17850.output := by lin_cert using reduction17850.terms
def map_10_242 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18111 : InImage map_10_242 image18111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18111 : Bundle := named_bundle% "RealMapCertificates/relations/basis18111.json"
theorem reductionProof18111 : EqualModuloRelations reduction18111.relations reduction18111.input reduction18111.output := by lin_cert using reduction18111.terms
theorem substitutionProof18111 : IsMapEvaluation generatorImages reduction18111.relations [1,2033] reduction18111.output := by lin_cert using reduction18111.terms
def map_10_243 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18383 : InImage map_10_243 image18383 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18383 : Bundle := named_bundle% "RealMapCertificates/relations/basis18383.json"
theorem reductionProof18383 : EqualModuloRelations reduction18383.relations reduction18383.input reduction18383.output := by lin_cert using reduction18383.terms
theorem substitutionProof18383 : IsMapEvaluation generatorImages reduction18383.relations [43,76,324] reduction18383.output := by lin_cert using reduction18383.terms
def image18384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18384 : InImage map_10_243 image18384 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18384 : Bundle := named_bundle% "RealMapCertificates/relations/basis18384.json"
theorem reductionProof18384 : EqualModuloRelations reduction18384.relations reduction18384.input reduction18384.output := by lin_cert using reduction18384.terms
theorem substitutionProof18384 : IsMapEvaluation generatorImages reduction18384.relations [0,3,203,324] reduction18384.output := by lin_cert using reduction18384.terms
def map_10_244 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18594 : InImage map_10_244 image18594 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18594 : Bundle := named_bundle% "RealMapCertificates/relations/basis18594.json"
theorem reductionProof18594 : EqualModuloRelations reduction18594.relations reduction18594.input reduction18594.output := by lin_cert using reduction18594.terms
theorem substitutionProof18594 : IsMapEvaluation generatorImages reduction18594.relations [2159] reduction18594.output := by lin_cert using reduction18594.terms
def image18595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18595 : InImage map_10_244 image18595 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18595 : Bundle := named_bundle% "RealMapCertificates/relations/basis18595.json"
theorem reductionProof18595 : EqualModuloRelations reduction18595.relations reduction18595.input reduction18595.output := by lin_cert using reduction18595.terms
theorem substitutionProof18595 : IsMapEvaluation generatorImages reduction18595.relations [2158] reduction18595.output := by lin_cert using reduction18595.terms
def image18596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18596 : InImage map_10_244 image18596 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18596 : Bundle := named_bundle% "RealMapCertificates/relations/basis18596.json"
theorem reductionProof18596 : EqualModuloRelations reduction18596.relations reduction18596.input reduction18596.output := by lin_cert using reduction18596.terms
theorem substitutionProof18596 : IsMapEvaluation generatorImages reduction18596.relations [2,2033] reduction18596.output := by lin_cert using reduction18596.terms
def map_10_245 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18855 : InImage map_10_245 image18855 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18855 : Bundle := named_bundle% "RealMapCertificates/relations/basis18855.json"
theorem reductionProof18855 : EqualModuloRelations reduction18855.relations reduction18855.input reduction18855.output := by lin_cert using reduction18855.terms
theorem substitutionProof18855 : IsMapEvaluation generatorImages reduction18855.relations [3,216,324] reduction18855.output := by lin_cert using reduction18855.terms
def image18856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18856 : InImage map_10_245 image18856 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18856 : Bundle := named_bundle% "RealMapCertificates/relations/basis18856.json"
theorem reductionProof18856 : EqualModuloRelations reduction18856.relations reduction18856.input reduction18856.output := by lin_cert using reduction18856.terms
theorem substitutionProof18856 : IsMapEvaluation generatorImages reduction18856.relations [0,2160] reduction18856.output := by lin_cert using reduction18856.terms
def map_10_246 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19173 : InImage map_10_246 image19173 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19173 : Bundle := named_bundle% "RealMapCertificates/relations/basis19173.json"
theorem reductionProof19173 : EqualModuloRelations reduction19173.relations reduction19173.input reduction19173.output := by lin_cert using reduction19173.terms
theorem substitutionProof19173 : IsMapEvaluation generatorImages reduction19173.relations [3,1958] reduction19173.output := by lin_cert using reduction19173.terms
def image19174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19174 : InImage map_10_246 image19174 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19174 : Bundle := named_bundle% "RealMapCertificates/relations/basis19174.json"
theorem reductionProof19174 : EqualModuloRelations reduction19174.relations reduction19174.input reduction19174.output := by lin_cert using reduction19174.terms
theorem substitutionProof19174 : IsMapEvaluation generatorImages reduction19174.relations [3,3,191,324] reduction19174.output := by lin_cert using reduction19174.terms
def image19175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19175 : InImage map_10_246 image19175 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19175 : Bundle := named_bundle% "RealMapCertificates/relations/basis19175.json"
theorem reductionProof19175 : EqualModuloRelations reduction19175.relations reduction19175.input reduction19175.output := by lin_cert using reduction19175.terms
theorem substitutionProof19175 : IsMapEvaluation generatorImages reduction19175.relations [0,2188] reduction19175.output := by lin_cert using reduction19175.terms
def map_10_248 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19669 : InImage map_10_248 image19669 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19669 : Bundle := named_bundle% "RealMapCertificates/relations/basis19669.json"
theorem reductionProof19669 : EqualModuloRelations reduction19669.relations reduction19669.input reduction19669.output := by lin_cert using reduction19669.terms
theorem substitutionProof19669 : IsMapEvaluation generatorImages reduction19669.relations [271,324] reduction19669.output := by lin_cert using reduction19669.terms
def image19670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19670 : InImage map_10_248 image19670 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19670 : Bundle := named_bundle% "RealMapCertificates/relations/basis19670.json"
theorem reductionProof19670 : EqualModuloRelations reduction19670.relations reduction19670.input reduction19670.output := by lin_cert using reduction19670.terms
theorem substitutionProof19670 : IsMapEvaluation generatorImages reduction19670.relations [3,3,198,324] reduction19670.output := by lin_cert using reduction19670.terms
def image19671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19671 : InImage map_10_248 image19671 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19671 : Bundle := named_bundle% "RealMapCertificates/relations/basis19671.json"
theorem reductionProof19671 : EqualModuloRelations reduction19671.relations reduction19671.input reduction19671.output := by lin_cert using reduction19671.terms
theorem substitutionProof19671 : IsMapEvaluation generatorImages reduction19671.relations [2,2160] reduction19671.output := by lin_cert using reduction19671.terms
def map_10_249 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image19963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19963 : InImage map_10_249 image19963 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19963 : Bundle := named_bundle% "RealMapCertificates/relations/basis19963.json"
theorem reductionProof19963 : EqualModuloRelations reduction19963.relations reduction19963.input reduction19963.output := by lin_cert using reduction19963.terms
theorem substitutionProof19963 : IsMapEvaluation generatorImages reduction19963.relations [2329] reduction19963.output := by lin_cert using reduction19963.terms
def map_10_250 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20197 : InImage map_10_250 image20197 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20197 : Bundle := named_bundle% "RealMapCertificates/relations/basis20197.json"
theorem reductionProof20197 : EqualModuloRelations reduction20197.relations reduction20197.input reduction20197.output := by lin_cert using reduction20197.terms
theorem substitutionProof20197 : IsMapEvaluation generatorImages reduction20197.relations [282,324] reduction20197.output := by lin_cert using reduction20197.terms
def map_10_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20467 : InImage map_10_251 image20467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20467 : Bundle := named_bundle% "RealMapCertificates/relations/basis20467.json"
theorem reductionProof20467 : EqualModuloRelations reduction20467.relations reduction20467.input reduction20467.output := by lin_cert using reduction20467.terms
theorem substitutionProof20467 : IsMapEvaluation generatorImages reduction20467.relations [2399] reduction20467.output := by lin_cert using reduction20467.terms
def map_10_255 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21671 : InImage map_10_255 image21671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21671 : Bundle := named_bundle% "RealMapCertificates/relations/basis21671.json"
theorem reductionProof21671 : EqualModuloRelations reduction21671.relations reduction21671.input reduction21671.output := by lin_cert using reduction21671.terms
theorem substitutionProof21671 : IsMapEvaluation generatorImages reduction21671.relations [314,324] reduction21671.output := by lin_cert using reduction21671.terms
def image21672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21672 : InImage map_10_255 image21672 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21672 : Bundle := named_bundle% "RealMapCertificates/relations/basis21672.json"
theorem reductionProof21672 : EqualModuloRelations reduction21672.relations reduction21672.input reduction21672.output := by lin_cert using reduction21672.terms
theorem substitutionProof21672 : IsMapEvaluation generatorImages reduction21672.relations [313,324] reduction21672.output := by lin_cert using reduction21672.terms
def map_10_256 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21959 : InImage map_10_256 image21959 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21959 : Bundle := named_bundle% "RealMapCertificates/relations/basis21959.json"
theorem reductionProof21959 : EqualModuloRelations reduction21959.relations reduction21959.input reduction21959.output := by lin_cert using reduction21959.terms
theorem substitutionProof21959 : IsMapEvaluation generatorImages reduction21959.relations [7,2033] reduction21959.output := by lin_cert using reduction21959.terms
def map_10_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22291 : InImage map_10_257 image22291 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22291 : Bundle := named_bundle% "RealMapCertificates/relations/basis22291.json"
theorem reductionProof22291 : EqualModuloRelations reduction22291.relations reduction22291.input reduction22291.output := by lin_cert using reduction22291.terms
theorem substitutionProof22291 : IsMapEvaluation generatorImages reduction22291.relations [324,333] reduction22291.output := by lin_cert using reduction22291.terms
def map_10_258 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image22669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22669 : InImage map_10_258 image22669 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22669 : Bundle := named_bundle% "RealMapCertificates/relations/basis22669.json"
theorem reductionProof22669 : EqualModuloRelations reduction22669.relations reduction22669.input reduction22669.output := by lin_cert using reduction22669.terms
theorem substitutionProof22669 : IsMapEvaluation generatorImages reduction22669.relations [2736] reduction22669.output := by lin_cert using reduction22669.terms
def image22670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22670 : InImage map_10_258 image22670 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22670 : Bundle := named_bundle% "RealMapCertificates/relations/basis22670.json"
theorem reductionProof22670 : EqualModuloRelations reduction22670.relations reduction22670.input reduction22670.output := by lin_cert using reduction22670.terms
theorem substitutionProof22670 : IsMapEvaluation generatorImages reduction22670.relations [324,338] reduction22670.output := by lin_cert using reduction22670.terms
def image22671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22671 : InImage map_10_258 image22671 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22671 : Bundle := named_bundle% "RealMapCertificates/relations/basis22671.json"
theorem reductionProof22671 : EqualModuloRelations reduction22671.relations reduction22671.input reduction22671.output := by lin_cert using reduction22671.terms
theorem substitutionProof22671 : IsMapEvaluation generatorImages reduction22671.relations [0,2667] reduction22671.output := by lin_cert using reduction22671.terms
def image22672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22672 : InImage map_10_258 image22672 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22672 : Bundle := named_bundle% "RealMapCertificates/relations/basis22672.json"
theorem reductionProof22672 : EqualModuloRelations reduction22672.relations reduction22672.input reduction22672.output := by lin_cert using reduction22672.terms
theorem substitutionProof22672 : IsMapEvaluation generatorImages reduction22672.relations [0,0,2625] reduction22672.output := by lin_cert using reduction22672.terms
def map_10_260 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23380 : InImage map_10_260 image23380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23380 : Bundle := named_bundle% "RealMapCertificates/relations/basis23380.json"
theorem reductionProof23380 : EqualModuloRelations reduction23380.relations reduction23380.input reduction23380.output := by lin_cert using reduction23380.terms
theorem substitutionProof23380 : IsMapEvaluation generatorImages reduction23380.relations [2849] reduction23380.output := by lin_cert using reduction23380.terms
def image23381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23381 : InImage map_10_260 image23381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23381 : Bundle := named_bundle% "RealMapCertificates/relations/basis23381.json"
theorem reductionProof23381 : EqualModuloRelations reduction23381.relations reduction23381.input reduction23381.output := by lin_cert using reduction23381.terms
theorem substitutionProof23381 : IsMapEvaluation generatorImages reduction23381.relations [2848] reduction23381.output := by lin_cert using reduction23381.terms
def image23382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23382 : InImage map_10_260 image23382 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23382 : Bundle := named_bundle% "RealMapCertificates/relations/basis23382.json"
theorem reductionProof23382 : EqualModuloRelations reduction23382.relations reduction23382.input reduction23382.output := by lin_cert using reduction23382.terms
theorem substitutionProof23382 : IsMapEvaluation generatorImages reduction23382.relations [324,366] reduction23382.output := by lin_cert using reduction23382.terms
def image23383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23383 : InImage map_10_260 image23383 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23383 : Bundle := named_bundle% "RealMapCertificates/relations/basis23383.json"
theorem reductionProof23383 : EqualModuloRelations reduction23383.relations reduction23383.input reduction23383.output := by lin_cert using reduction23383.terms
theorem substitutionProof23383 : IsMapEvaluation generatorImages reduction23383.relations [0,324,352] reduction23383.output := by lin_cert using reduction23383.terms
def map_10_261 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23801 : InImage map_10_261 image23801 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23801 : Bundle := named_bundle% "RealMapCertificates/relations/basis23801.json"
theorem reductionProof23801 : EqualModuloRelations reduction23801.relations reduction23801.input reduction23801.output := by lin_cert using reduction23801.terms
theorem substitutionProof23801 : IsMapEvaluation generatorImages reduction23801.relations [2909] reduction23801.output := by lin_cert using reduction23801.terms
def image23802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23802 : InImage map_10_261 image23802 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23802 : Bundle := named_bundle% "RealMapCertificates/relations/basis23802.json"
theorem reductionProof23802 : EqualModuloRelations reduction23802.relations reduction23802.input reduction23802.output := by lin_cert using reduction23802.terms
theorem substitutionProof23802 : IsMapEvaluation generatorImages reduction23802.relations [324,373] reduction23802.output := by lin_cert using reduction23802.terms
def image23803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23803 : InImage map_10_261 image23803 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23803 : Bundle := named_bundle% "RealMapCertificates/relations/basis23803.json"
theorem reductionProof23803 : EqualModuloRelations reduction23803.relations reduction23803.input reduction23803.output := by lin_cert using reduction23803.terms
theorem substitutionProof23803 : IsMapEvaluation generatorImages reduction23803.relations [0,2850] reduction23803.output := by lin_cert using reduction23803.terms
def image23804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23804 : InImage map_10_261 image23804 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23804 : Bundle := named_bundle% "RealMapCertificates/relations/basis23804.json"
theorem reductionProof23804 : EqualModuloRelations reduction23804.relations reduction23804.input reduction23804.output := by lin_cert using reduction23804.terms
theorem substitutionProof23804 : IsMapEvaluation generatorImages reduction23804.relations [0,324,367] reduction23804.output := by lin_cert using reduction23804.terms
def image23805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23805 : InImage map_10_261 image23805 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23805 : Bundle := named_bundle% "RealMapCertificates/relations/basis23805.json"
theorem reductionProof23805 : EqualModuloRelations reduction23805.relations reduction23805.input reduction23805.output := by lin_cert using reduction23805.terms
theorem substitutionProof23805 : IsMapEvaluation generatorImages reduction23805.relations [0,0,2787] reduction23805.output := by lin_cert using reduction23805.terms
def map_11_11 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21 : InImage map_11_11 image21 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21 : Bundle := named_bundle% "RealMapCertificates/relations/basis21.json"
theorem reductionProof21 : EqualModuloRelations reduction21.relations reduction21.input reduction21.output := by lin_cert using reduction21.terms
theorem substitutionProof21 : IsMapEvaluation generatorImages reduction21.relations [0,0,0,0,0,0,0,0,0,0,0] reduction21.output := by lin_cert using reduction21.terms
def map_11_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image93 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation93 : InImage map_11_30 image93 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction93 : Bundle := named_bundle% "RealMapCertificates/relations/basis93.json"
theorem reductionProof93 : EqualModuloRelations reduction93.relations reduction93.input reduction93.output := by lin_cert using reduction93.terms
theorem substitutionProof93 : IsMapEvaluation generatorImages reduction93.relations [0,0,15] reduction93.output := by lin_cert using reduction93.terms
def map_11_34 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation113 : InImage map_11_34 image113 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction113 : Bundle := named_bundle% "RealMapCertificates/relations/basis113.json"
theorem reductionProof113 : EqualModuloRelations reduction113.relations reduction113.input reduction113.output := by lin_cert using reduction113.terms
theorem substitutionProof113 : IsMapEvaluation generatorImages reduction113.relations [0,0,0,0,17] reduction113.output := by lin_cert using reduction113.terms
def map_11_35 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image123 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation123 : InImage map_11_35 image123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction123 : Bundle := named_bundle% "RealMapCertificates/relations/basis123.json"
theorem reductionProof123 : EqualModuloRelations reduction123.relations reduction123.input reduction123.output := by lin_cert using reduction123.terms
theorem substitutionProof123 : IsMapEvaluation generatorImages reduction123.relations [21] reduction123.output := by lin_cert using reduction123.terms
end RealMapCertificates
