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
  | 40 => [[4,5,6]]
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
  | 95 => []
  | 98 => []
  | 101 => []
  | 103 => []
  | 104 => []
  | 106 => []
  | 107 => []
  | 114 => []
  | 115 => []
  | 120 => []
  | 128 => []
  | 141 => []
  | 157 => []
  | 174 => []
  | 178 => []
  | 179 => []
  | 188 => []
  | 189 => []
  | 192 => []
  | 197 => []
  | 202 => []
  | 209 => []
  | 213 => []
  | 216 => []
  | 221 => []
  | 229 => []
  | 235 => []
  | 239 => []
  | 251 => []
  | 262 => []
  | 269 => []
  | 270 => []
  | 281 => []
  | 310 => []
  | 311 => []
  | 312 => []
  | 320 => []
  | _ => []
def map_11_36 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation129 : InImage map_11_36 image129 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction129 : Bundle := named_bundle% "RealMapCertificates/relations/basis129.json"
theorem reductionProof129 : EqualModuloRelations reduction129.relations reduction129.input reduction129.output := by lin_cert using reduction129.terms
theorem substitutionProof129 : IsMapEvaluation generatorImages reduction129.relations [0,0,0,19] reduction129.output := by lin_cert using reduction129.terms
def map_11_41 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation174 : InImage map_11_41 image174 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction174 : Bundle := named_bundle% "RealMapCertificates/relations/basis174.json"
theorem reductionProof174 : EqualModuloRelations reduction174.relations reduction174.input reduction174.output := by lin_cert using reduction174.terms
theorem substitutionProof174 : IsMapEvaluation generatorImages reduction174.relations [0,0,0,0,0,23] reduction174.output := by lin_cert using reduction174.terms
def map_11_42 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image182 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation182 : InImage map_11_42 image182 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction182 : Bundle := named_bundle% "RealMapCertificates/relations/basis182.json"
theorem reductionProof182 : EqualModuloRelations reduction182.relations reduction182.input reduction182.output := by lin_cert using reduction182.terms
theorem substitutionProof182 : IsMapEvaluation generatorImages reduction182.relations [0,0,0,0,0,0,0,0,0,0,18] reduction182.output := by lin_cert using reduction182.terms
def map_11_45 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image215 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation215 : InImage map_11_45 image215 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction215 : Bundle := named_bundle% "RealMapCertificates/relations/basis215.json"
theorem reductionProof215 : EqualModuloRelations reduction215.relations reduction215.input reduction215.output := by lin_cert using reduction215.terms
theorem substitutionProof215 : IsMapEvaluation generatorImages reduction215.relations [40] reduction215.output := by lin_cert using reduction215.terms
def map_11_48 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image243 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation243 : InImage map_11_48 image243 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction243 : Bundle := named_bundle% "RealMapCertificates/relations/basis243.json"
theorem reductionProof243 : EqualModuloRelations reduction243.relations reduction243.input reduction243.output := by lin_cert using reduction243.terms
theorem substitutionProof243 : IsMapEvaluation generatorImages reduction243.relations [8,17] reduction243.output := by lin_cert using reduction243.terms
def map_11_51 : Matrix 2 1 := fun i j => ([false,true] : List Bool)[i.val*1+j.val]!
def image268 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation268 : InImage map_11_51 image268 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction268 : Bundle := named_bundle% "RealMapCertificates/relations/basis268.json"
theorem reductionProof268 : EqualModuloRelations reduction268.relations reduction268.input reduction268.output := by lin_cert using reduction268.terms
theorem substitutionProof268 : IsMapEvaluation generatorImages reduction268.relations [8,20] reduction268.output := by lin_cert using reduction268.terms
def map_11_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation277 : InImage map_11_52 image277 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction277 : Bundle := named_bundle% "RealMapCertificates/relations/basis277.json"
theorem reductionProof277 : EqualModuloRelations reduction277.relations reduction277.input reduction277.output := by lin_cert using reduction277.terms
theorem substitutionProof277 : IsMapEvaluation generatorImages reduction277.relations [0,45] reduction277.output := by lin_cert using reduction277.terms
def map_11_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image294 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation294 : InImage map_11_54 image294 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction294 : Bundle := named_bundle% "RealMapCertificates/relations/basis294.json"
theorem reductionProof294 : EqualModuloRelations reduction294.relations reduction294.input reduction294.output := by lin_cert using reduction294.terms
theorem substitutionProof294 : IsMapEvaluation generatorImages reduction294.relations [8,22] reduction294.output := by lin_cert using reduction294.terms
def map_11_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image326 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation326 : InImage map_11_57 image326 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction326 : Bundle := named_bundle% "RealMapCertificates/relations/basis326.json"
theorem reductionProof326 : EqualModuloRelations reduction326.relations reduction326.input reduction326.output := by lin_cert using reduction326.terms
theorem substitutionProof326 : IsMapEvaluation generatorImages reduction326.relations [8,29] reduction326.output := by lin_cert using reduction326.terms
def map_11_60 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image354 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation354 : InImage map_11_60 image354 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction354 : Bundle := named_bundle% "RealMapCertificates/relations/basis354.json"
theorem reductionProof354 : EqualModuloRelations reduction354.relations reduction354.input reduction354.output := by lin_cert using reduction354.terms
theorem substitutionProof354 : IsMapEvaluation generatorImages reduction354.relations [8,32] reduction354.output := by lin_cert using reduction354.terms
def map_11_63 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image384 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation384 : InImage map_11_63 image384 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction384 : Bundle := named_bundle% "RealMapCertificates/relations/basis384.json"
theorem reductionProof384 : EqualModuloRelations reduction384.relations reduction384.input reduction384.output := by lin_cert using reduction384.terms
theorem substitutionProof384 : IsMapEvaluation generatorImages reduction384.relations [9,32] reduction384.output := by lin_cert using reduction384.terms
def map_11_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation395 : InImage map_11_64 image395 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction395 : Bundle := named_bundle% "RealMapCertificates/relations/basis395.json"
theorem reductionProof395 : EqualModuloRelations reduction395.relations reduction395.input reduction395.output := by lin_cert using reduction395.terms
theorem substitutionProof395 : IsMapEvaluation generatorImages reduction395.relations [0,64] reduction395.output := by lin_cert using reduction395.terms
def map_11_65 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation409 : InImage map_11_65 image409 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction409 : Bundle := named_bundle% "RealMapCertificates/relations/basis409.json"
theorem reductionProof409 : EqualModuloRelations reduction409.relations reduction409.input reduction409.output := by lin_cert using reduction409.terms
theorem substitutionProof409 : IsMapEvaluation generatorImages reduction409.relations [1,64] reduction409.output := by lin_cert using reduction409.terms
def image410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation410 : InImage map_11_65 image410 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction410 : Bundle := named_bundle% "RealMapCertificates/relations/basis410.json"
theorem reductionProof410 : EqualModuloRelations reduction410.relations reduction410.input reduction410.output := by lin_cert using reduction410.terms
theorem substitutionProof410 : IsMapEvaluation generatorImages reduction410.relations [0,66] reduction410.output := by lin_cert using reduction410.terms
def map_11_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image429 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation429 : InImage map_11_66 image429 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction429 : Bundle := named_bundle% "RealMapCertificates/relations/basis429.json"
theorem reductionProof429 : EqualModuloRelations reduction429.relations reduction429.input reduction429.output := by lin_cert using reduction429.terms
theorem substitutionProof429 : IsMapEvaluation generatorImages reduction429.relations [13,32] reduction429.output := by lin_cert using reduction429.terms
def map_11_67 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image447 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation447 : InImage map_11_67 image447 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction447 : Bundle := named_bundle% "RealMapCertificates/relations/basis447.json"
theorem reductionProof447 : EqualModuloRelations reduction447.relations reduction447.input reduction447.output := by lin_cert using reduction447.terms
theorem substitutionProof447 : IsMapEvaluation generatorImages reduction447.relations [0,72] reduction447.output := by lin_cert using reduction447.terms
def map_11_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation465 : InImage map_11_68 image465 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction465 : Bundle := named_bundle% "RealMapCertificates/relations/basis465.json"
theorem reductionProof465 : EqualModuloRelations reduction465.relations reduction465.input reduction465.output := by lin_cert using reduction465.terms
theorem substitutionProof465 : IsMapEvaluation generatorImages reduction465.relations [1,72] reduction465.output := by lin_cert using reduction465.terms
def map_11_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation505 : InImage map_11_70 image505 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction505 : Bundle := named_bundle% "RealMapCertificates/relations/basis505.json"
theorem reductionProof505 : EqualModuloRelations reduction505.relations reduction505.input reduction505.output := by lin_cert using reduction505.terms
theorem substitutionProof505 : IsMapEvaluation generatorImages reduction505.relations [0,79] reduction505.output := by lin_cert using reduction505.terms
def map_11_71 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image525 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation525 : InImage map_11_71 image525 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction525 : Bundle := named_bundle% "RealMapCertificates/relations/basis525.json"
theorem reductionProof525 : EqualModuloRelations reduction525.relations reduction525.input reduction525.output := by lin_cert using reduction525.terms
theorem substitutionProof525 : IsMapEvaluation generatorImages reduction525.relations [1,79] reduction525.output := by lin_cert using reduction525.terms
def image526 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation526 : InImage map_11_71 image526 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction526 : Bundle := named_bundle% "RealMapCertificates/relations/basis526.json"
theorem reductionProof526 : EqualModuloRelations reduction526.relations reduction526.input reduction526.output := by lin_cert using reduction526.terms
theorem substitutionProof526 : IsMapEvaluation generatorImages reduction526.relations [0,0,80] reduction526.output := by lin_cert using reduction526.terms
def map_11_72 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation545 : InImage map_11_72 image545 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction545 : Bundle := named_bundle% "RealMapCertificates/relations/basis545.json"
theorem reductionProof545 : EqualModuloRelations reduction545.relations reduction545.input reduction545.output := by lin_cert using reduction545.terms
theorem substitutionProof545 : IsMapEvaluation generatorImages reduction545.relations [23,24] reduction545.output := by lin_cert using reduction545.terms
def image546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation546 : InImage map_11_72 image546 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction546 : Bundle := named_bundle% "RealMapCertificates/relations/basis546.json"
theorem reductionProof546 : EqualModuloRelations reduction546.relations reduction546.input reduction546.output := by lin_cert using reduction546.terms
theorem substitutionProof546 : IsMapEvaluation generatorImages reduction546.relations [0,0,81] reduction546.output := by lin_cert using reduction546.terms
def map_11_73 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation570 : InImage map_11_73 image570 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction570 : Bundle := named_bundle% "RealMapCertificates/relations/basis570.json"
theorem reductionProof570 : EqualModuloRelations reduction570.relations reduction570.input reduction570.output := by lin_cert using reduction570.terms
theorem substitutionProof570 : IsMapEvaluation generatorImages reduction570.relations [0,90] reduction570.output := by lin_cert using reduction570.terms
def image571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation571 : InImage map_11_73 image571 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction571 : Bundle := named_bundle% "RealMapCertificates/relations/basis571.json"
theorem reductionProof571 : EqualModuloRelations reduction571.relations reduction571.input reduction571.output := by lin_cert using reduction571.terms
theorem substitutionProof571 : IsMapEvaluation generatorImages reduction571.relations [0,89] reduction571.output := by lin_cert using reduction571.terms
def map_11_74 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image592 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation592 : InImage map_11_74 image592 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction592 : Bundle := named_bundle% "RealMapCertificates/relations/basis592.json"
theorem reductionProof592 : EqualModuloRelations reduction592.relations reduction592.input reduction592.output := by lin_cert using reduction592.terms
theorem substitutionProof592 : IsMapEvaluation generatorImages reduction592.relations [1,1,81] reduction592.output := by lin_cert using reduction592.terms
def image593 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation593 : InImage map_11_74 image593 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction593 : Bundle := named_bundle% "RealMapCertificates/relations/basis593.json"
theorem reductionProof593 : EqualModuloRelations reduction593.relations reduction593.input reduction593.output := by lin_cert using reduction593.terms
theorem substitutionProof593 : IsMapEvaluation generatorImages reduction593.relations [0,2,80] reduction593.output := by lin_cert using reduction593.terms
def image594 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation594 : InImage map_11_74 image594 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction594 : Bundle := named_bundle% "RealMapCertificates/relations/basis594.json"
theorem reductionProof594 : EqualModuloRelations reduction594.relations reduction594.input reduction594.output := by lin_cert using reduction594.terms
theorem substitutionProof594 : IsMapEvaluation generatorImages reduction594.relations [0,0,0,0,0,0,0,0,0,0,69] reduction594.output := by lin_cert using reduction594.terms
def map_11_76 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation634 : InImage map_11_76 image634 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction634 : Bundle := named_bundle% "RealMapCertificates/relations/basis634.json"
theorem reductionProof634 : EqualModuloRelations reduction634.relations reduction634.input reduction634.output := by lin_cert using reduction634.terms
theorem substitutionProof634 : IsMapEvaluation generatorImages reduction634.relations [1,98] reduction634.output := by lin_cert using reduction634.terms
def image635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation635 : InImage map_11_76 image635 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction635 : Bundle := named_bundle% "RealMapCertificates/relations/basis635.json"
theorem reductionProof635 : EqualModuloRelations reduction635.relations reduction635.input reduction635.output := by lin_cert using reduction635.terms
theorem substitutionProof635 : IsMapEvaluation generatorImages reduction635.relations [0,101] reduction635.output := by lin_cert using reduction635.terms
def map_11_77 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation655 : InImage map_11_77 image655 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction655 : Bundle := named_bundle% "RealMapCertificates/relations/basis655.json"
theorem reductionProof655 : EqualModuloRelations reduction655.relations reduction655.input reduction655.output := by lin_cert using reduction655.terms
theorem substitutionProof655 : IsMapEvaluation generatorImages reduction655.relations [0,104] reduction655.output := by lin_cert using reduction655.terms
def image656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation656 : InImage map_11_77 image656 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction656 : Bundle := named_bundle% "RealMapCertificates/relations/basis656.json"
theorem reductionProof656 : EqualModuloRelations reduction656.relations reduction656.input reduction656.output := by lin_cert using reduction656.terms
theorem substitutionProof656 : IsMapEvaluation generatorImages reduction656.relations [0,103] reduction656.output := by lin_cert using reduction656.terms
def map_11_78 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation684 : InImage map_11_78 image684 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction684 : Bundle := named_bundle% "RealMapCertificates/relations/basis684.json"
theorem reductionProof684 : EqualModuloRelations reduction684.relations reduction684.input reduction684.output := by lin_cert using reduction684.terms
theorem substitutionProof684 : IsMapEvaluation generatorImages reduction684.relations [114] reduction684.output := by lin_cert using reduction684.terms
def image685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation685 : InImage map_11_78 image685 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction685 : Bundle := named_bundle% "RealMapCertificates/relations/basis685.json"
theorem reductionProof685 : EqualModuloRelations reduction685.relations reduction685.input reduction685.output := by lin_cert using reduction685.terms
theorem substitutionProof685 : IsMapEvaluation generatorImages reduction685.relations [0,0,106] reduction685.output := by lin_cert using reduction685.terms
def map_11_79 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation704 : InImage map_11_79 image704 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction704 : Bundle := named_bundle% "RealMapCertificates/relations/basis704.json"
theorem reductionProof704 : EqualModuloRelations reduction704.relations reduction704.input reduction704.output := by lin_cert using reduction704.terms
theorem substitutionProof704 : IsMapEvaluation generatorImages reduction704.relations [2,101] reduction704.output := by lin_cert using reduction704.terms
def image705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation705 : InImage map_11_79 image705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction705 : Bundle := named_bundle% "RealMapCertificates/relations/basis705.json"
theorem reductionProof705 : EqualModuloRelations reduction705.relations reduction705.input reduction705.output := by lin_cert using reduction705.terms
theorem substitutionProof705 : IsMapEvaluation generatorImages reduction705.relations [0,0,0,107] reduction705.output := by lin_cert using reduction705.terms
def map_11_80 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation720 : InImage map_11_80 image720 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction720 : Bundle := named_bundle% "RealMapCertificates/relations/basis720.json"
theorem reductionProof720 : EqualModuloRelations reduction720.relations reduction720.input reduction720.output := by lin_cert using reduction720.terms
theorem substitutionProof720 : IsMapEvaluation generatorImages reduction720.relations [2,103] reduction720.output := by lin_cert using reduction720.terms
def image721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation721 : InImage map_11_80 image721 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction721 : Bundle := named_bundle% "RealMapCertificates/relations/basis721.json"
theorem reductionProof721 : EqualModuloRelations reduction721.relations reduction721.input reduction721.output := by lin_cert using reduction721.terms
theorem substitutionProof721 : IsMapEvaluation generatorImages reduction721.relations [0,115] reduction721.output := by lin_cert using reduction721.terms
def map_11_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation770 : InImage map_11_82 image770 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction770 : Bundle := named_bundle% "RealMapCertificates/relations/basis770.json"
theorem reductionProof770 : EqualModuloRelations reduction770.relations reduction770.input reduction770.output := by lin_cert using reduction770.terms
theorem substitutionProof770 : IsMapEvaluation generatorImages reduction770.relations [7,72] reduction770.output := by lin_cert using reduction770.terms
def map_11_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation791 : InImage map_11_83 image791 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction791 : Bundle := named_bundle% "RealMapCertificates/relations/basis791.json"
theorem reductionProof791 : EqualModuloRelations reduction791.relations reduction791.input reduction791.output := by lin_cert using reduction791.terms
theorem substitutionProof791 : IsMapEvaluation generatorImages reduction791.relations [0,8,68] reduction791.output := by lin_cert using reduction791.terms
def map_11_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation846 : InImage map_11_85 image846 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction846 : Bundle := named_bundle% "RealMapCertificates/relations/basis846.json"
theorem reductionProof846 : EqualModuloRelations reduction846.relations reduction846.input reduction846.output := by lin_cert using reduction846.terms
theorem substitutionProof846 : IsMapEvaluation generatorImages reduction846.relations [0,0,0,120] reduction846.output := by lin_cert using reduction846.terms
def map_11_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation870 : InImage map_11_86 image870 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction870 : Bundle := named_bundle% "RealMapCertificates/relations/basis870.json"
theorem reductionProof870 : EqualModuloRelations reduction870.relations reduction870.input reduction870.output := by lin_cert using reduction870.terms
theorem substitutionProof870 : IsMapEvaluation generatorImages reduction870.relations [0,0,3,107] reduction870.output := by lin_cert using reduction870.terms
def map_11_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation921 : InImage map_11_88 image921 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction921 : Bundle := named_bundle% "RealMapCertificates/relations/basis921.json"
theorem reductionProof921 : EqualModuloRelations reduction921.relations reduction921.input reduction921.output := by lin_cert using reduction921.terms
theorem substitutionProof921 : IsMapEvaluation generatorImages reduction921.relations [13,67] reduction921.output := by lin_cert using reduction921.terms
def image922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation922 : InImage map_11_88 image922 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction922 : Bundle := named_bundle% "RealMapCertificates/relations/basis922.json"
theorem reductionProof922 : EqualModuloRelations reduction922.relations reduction922.input reduction922.output := by lin_cert using reduction922.terms
theorem substitutionProof922 : IsMapEvaluation generatorImages reduction922.relations [0,0,0,0,128] reduction922.output := by lin_cert using reduction922.terms
def map_11_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation948 : InImage map_11_89 image948 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction948 : Bundle := named_bundle% "RealMapCertificates/relations/basis948.json"
theorem reductionProof948 : EqualModuloRelations reduction948.relations reduction948.input reduction948.output := by lin_cert using reduction948.terms
theorem substitutionProof948 : IsMapEvaluation generatorImages reduction948.relations [0,141] reduction948.output := by lin_cert using reduction948.terms
def map_11_90 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation981 : InImage map_11_90 image981 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction981 : Bundle := named_bundle% "RealMapCertificates/relations/basis981.json"
theorem reductionProof981 : EqualModuloRelations reduction981.relations reduction981.input reduction981.output := by lin_cert using reduction981.terms
theorem substitutionProof981 : IsMapEvaluation generatorImages reduction981.relations [1,141] reduction981.output := by lin_cert using reduction981.terms
def map_11_92 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1030 : InImage map_11_92 image1030 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1030 : Bundle := named_bundle% "RealMapCertificates/relations/basis1030.json"
theorem reductionProof1030 : EqualModuloRelations reduction1030.relations reduction1030.input reduction1030.output := by lin_cert using reduction1030.terms
theorem substitutionProof1030 : IsMapEvaluation generatorImages reduction1030.relations [1,14,69] reduction1030.output := by lin_cert using reduction1030.terms
def image1031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1031 : InImage map_11_92 image1031 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1031 : Bundle := named_bundle% "RealMapCertificates/relations/basis1031.json"
theorem reductionProof1031 : EqualModuloRelations reduction1031.relations reduction1031.input reduction1031.output := by lin_cert using reduction1031.terms
theorem substitutionProof1031 : IsMapEvaluation generatorImages reduction1031.relations [0,13,75] reduction1031.output := by lin_cert using reduction1031.terms
def map_11_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1061 : InImage map_11_93 image1061 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1061 : Bundle := named_bundle% "RealMapCertificates/relations/basis1061.json"
theorem reductionProof1061 : EqualModuloRelations reduction1061.relations reduction1061.input reduction1061.output := by lin_cert using reduction1061.terms
theorem substitutionProof1061 : IsMapEvaluation generatorImages reduction1061.relations [0,15,69] reduction1061.output := by lin_cert using reduction1061.terms
def map_11_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1086 : InImage map_11_94 image1086 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1086 : Bundle := named_bundle% "RealMapCertificates/relations/basis1086.json"
theorem reductionProof1086 : EqualModuloRelations reduction1086.relations reduction1086.input reduction1086.output := by lin_cert using reduction1086.terms
theorem substitutionProof1086 : IsMapEvaluation generatorImages reduction1086.relations [9,95] reduction1086.output := by lin_cert using reduction1086.terms
def map_11_96 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1132 : InImage map_11_96 image1132 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1132 : Bundle := named_bundle% "RealMapCertificates/relations/basis1132.json"
theorem reductionProof1132 : EqualModuloRelations reduction1132.relations reduction1132.input reduction1132.output := by lin_cert using reduction1132.terms
theorem substitutionProof1132 : IsMapEvaluation generatorImages reduction1132.relations [1,157] reduction1132.output := by lin_cert using reduction1132.terms
def image1133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1133 : InImage map_11_96 image1133 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1133 : Bundle := named_bundle% "RealMapCertificates/relations/basis1133.json"
theorem reductionProof1133 : EqualModuloRelations reduction1133.relations reduction1133.input reduction1133.output := by lin_cert using reduction1133.terms
theorem substitutionProof1133 : IsMapEvaluation generatorImages reduction1133.relations [0,0,16,69] reduction1133.output := by lin_cert using reduction1133.terms
def map_11_97 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1152 : InImage map_11_97 image1152 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1152 : Bundle := named_bundle% "RealMapCertificates/relations/basis1152.json"
theorem reductionProof1152 : EqualModuloRelations reduction1152.relations reduction1152.input reduction1152.output := by lin_cert using reduction1152.terms
theorem substitutionProof1152 : IsMapEvaluation generatorImages reduction1152.relations [13,95] reduction1152.output := by lin_cert using reduction1152.terms
def image1153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1153 : InImage map_11_97 image1153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1153 : Bundle := named_bundle% "RealMapCertificates/relations/basis1153.json"
theorem reductionProof1153 : EqualModuloRelations reduction1153.relations reduction1153.input reduction1153.output := by lin_cert using reduction1153.terms
theorem substitutionProof1153 : IsMapEvaluation generatorImages reduction1153.relations [0,0,0,17,69] reduction1153.output := by lin_cert using reduction1153.terms
def map_11_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1177 : InImage map_11_98 image1177 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1177 : Bundle := named_bundle% "RealMapCertificates/relations/basis1177.json"
theorem reductionProof1177 : EqualModuloRelations reduction1177.relations reduction1177.input reduction1177.output := by lin_cert using reduction1177.terms
theorem substitutionProof1177 : IsMapEvaluation generatorImages reduction1177.relations [1,1,16,69] reduction1177.output := by lin_cert using reduction1177.terms
def map_11_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1208 : InImage map_11_99 image1208 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1208 : Bundle := named_bundle% "RealMapCertificates/relations/basis1208.json"
theorem reductionProof1208 : EqualModuloRelations reduction1208.relations reduction1208.input reduction1208.output := by lin_cert using reduction1208.terms
theorem substitutionProof1208 : IsMapEvaluation generatorImages reduction1208.relations [0,0,19,69] reduction1208.output := by lin_cert using reduction1208.terms
def map_11_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1235 : InImage map_11_100 image1235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1235 : Bundle := named_bundle% "RealMapCertificates/relations/basis1235.json"
theorem reductionProof1235 : EqualModuloRelations reduction1235.relations reduction1235.input reduction1235.output := by lin_cert using reduction1235.terms
theorem substitutionProof1235 : IsMapEvaluation generatorImages reduction1235.relations [178] reduction1235.output := by lin_cert using reduction1235.terms
def map_11_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1262 : InImage map_11_101 image1262 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1262 : Bundle := named_bundle% "RealMapCertificates/relations/basis1262.json"
theorem reductionProof1262 : EqualModuloRelations reduction1262.relations reduction1262.input reduction1262.output := by lin_cert using reduction1262.terms
theorem substitutionProof1262 : IsMapEvaluation generatorImages reduction1262.relations [0,179] reduction1262.output := by lin_cert using reduction1262.terms
def map_11_102 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1303 : InImage map_11_102 image1303 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1303 : Bundle := named_bundle% "RealMapCertificates/relations/basis1303.json"
theorem reductionProof1303 : EqualModuloRelations reduction1303.relations reduction1303.input reduction1303.output := by lin_cert using reduction1303.terms
theorem substitutionProof1303 : IsMapEvaluation generatorImages reduction1303.relations [188] reduction1303.output := by lin_cert using reduction1303.terms
def image1304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1304 : InImage map_11_102 image1304 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1304 : Bundle := named_bundle% "RealMapCertificates/relations/basis1304.json"
theorem reductionProof1304 : EqualModuloRelations reduction1304.relations reduction1304.input reduction1304.output := by lin_cert using reduction1304.terms
theorem substitutionProof1304 : IsMapEvaluation generatorImages reduction1304.relations [0,0,8,8,69] reduction1304.output := by lin_cert using reduction1304.terms
def map_11_103 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1330 : InImage map_11_103 image1330 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1330 : Bundle := named_bundle% "RealMapCertificates/relations/basis1330.json"
theorem reductionProof1330 : EqualModuloRelations reduction1330.relations reduction1330.input reduction1330.output := by lin_cert using reduction1330.terms
theorem substitutionProof1330 : IsMapEvaluation generatorImages reduction1330.relations [23,76] reduction1330.output := by lin_cert using reduction1330.terms
def image1331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1331 : InImage map_11_103 image1331 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1331 : Bundle := named_bundle% "RealMapCertificates/relations/basis1331.json"
theorem reductionProof1331 : EqualModuloRelations reduction1331.relations reduction1331.input reduction1331.output := by lin_cert using reduction1331.terms
theorem substitutionProof1331 : IsMapEvaluation generatorImages reduction1331.relations [0,189] reduction1331.output := by lin_cert using reduction1331.terms
def map_11_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1359 : InImage map_11_104 image1359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1359 : Bundle := named_bundle% "RealMapCertificates/relations/basis1359.json"
theorem reductionProof1359 : EqualModuloRelations reduction1359.relations reduction1359.input reduction1359.output := by lin_cert using reduction1359.terms
theorem substitutionProof1359 : IsMapEvaluation generatorImages reduction1359.relations [1,189] reduction1359.output := by lin_cert using reduction1359.terms
def image1360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1360 : InImage map_11_104 image1360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1360 : Bundle := named_bundle% "RealMapCertificates/relations/basis1360.json"
theorem reductionProof1360 : EqualModuloRelations reduction1360.relations reduction1360.input reduction1360.output := by lin_cert using reduction1360.terms
theorem substitutionProof1360 : IsMapEvaluation generatorImages reduction1360.relations [0,0,0,0,23,69] reduction1360.output := by lin_cert using reduction1360.terms
def map_11_105 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1401 : InImage map_11_105 image1401 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1401 : Bundle := named_bundle% "RealMapCertificates/relations/basis1401.json"
theorem reductionProof1401 : EqualModuloRelations reduction1401.relations reduction1401.input reduction1401.output := by lin_cert using reduction1401.terms
theorem substitutionProof1401 : IsMapEvaluation generatorImages reduction1401.relations [1,192] reduction1401.output := by lin_cert using reduction1401.terms
def image1402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1402 : InImage map_11_105 image1402 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1402 : Bundle := named_bundle% "RealMapCertificates/relations/basis1402.json"
theorem reductionProof1402 : EqualModuloRelations reduction1402.relations reduction1402.input reduction1402.output := by lin_cert using reduction1402.terms
theorem substitutionProof1402 : IsMapEvaluation generatorImages reduction1402.relations [0,0,8,9,69] reduction1402.output := by lin_cert using reduction1402.terms
def map_11_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1433 : InImage map_11_106 image1433 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1433 : Bundle := named_bundle% "RealMapCertificates/relations/basis1433.json"
theorem reductionProof1433 : EqualModuloRelations reduction1433.relations reduction1433.input reduction1433.output := by lin_cert using reduction1433.terms
theorem substitutionProof1433 : IsMapEvaluation generatorImages reduction1433.relations [2,189] reduction1433.output := by lin_cert using reduction1433.terms
def image1434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1434 : InImage map_11_106 image1434 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1434 : Bundle := named_bundle% "RealMapCertificates/relations/basis1434.json"
theorem reductionProof1434 : EqualModuloRelations reduction1434.relations reduction1434.input reduction1434.output := by lin_cert using reduction1434.terms
theorem substitutionProof1434 : IsMapEvaluation generatorImages reduction1434.relations [0,202] reduction1434.output := by lin_cert using reduction1434.terms
def map_11_108 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1504 : InImage map_11_108 image1504 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1504 : Bundle := named_bundle% "RealMapCertificates/relations/basis1504.json"
theorem reductionProof1504 : EqualModuloRelations reduction1504.relations reduction1504.input reduction1504.output := by lin_cert using reduction1504.terms
theorem substitutionProof1504 : IsMapEvaluation generatorImages reduction1504.relations [0,209] reduction1504.output := by lin_cert using reduction1504.terms
def image1505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1505 : InImage map_11_108 image1505 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1505 : Bundle := named_bundle% "RealMapCertificates/relations/basis1505.json"
theorem reductionProof1505 : EqualModuloRelations reduction1505.relations reduction1505.input reduction1505.output := by lin_cert using reduction1505.terms
theorem substitutionProof1505 : IsMapEvaluation generatorImages reduction1505.relations [0,0,8,13,69] reduction1505.output := by lin_cert using reduction1505.terms
def map_11_109 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1540 : InImage map_11_109 image1540 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1540 : Bundle := named_bundle% "RealMapCertificates/relations/basis1540.json"
theorem reductionProof1540 : EqualModuloRelations reduction1540.relations reduction1540.input reduction1540.output := by lin_cert using reduction1540.terms
theorem substitutionProof1540 : IsMapEvaluation generatorImages reduction1540.relations [2,202] reduction1540.output := by lin_cert using reduction1540.terms
def image1541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1541 : InImage map_11_109 image1541 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1541 : Bundle := named_bundle% "RealMapCertificates/relations/basis1541.json"
theorem reductionProof1541 : EqualModuloRelations reduction1541.relations reduction1541.input reduction1541.output := by lin_cert using reduction1541.terms
theorem substitutionProof1541 : IsMapEvaluation generatorImages reduction1541.relations [1,209] reduction1541.output := by lin_cert using reduction1541.terms
def map_11_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1574 : InImage map_11_110 image1574 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1574 : Bundle := named_bundle% "RealMapCertificates/relations/basis1574.json"
theorem reductionProof1574 : EqualModuloRelations reduction1574.relations reduction1574.input reduction1574.output := by lin_cert using reduction1574.terms
theorem substitutionProof1574 : IsMapEvaluation generatorImages reduction1574.relations [3,189] reduction1574.output := by lin_cert using reduction1574.terms
def map_11_111 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1624 : InImage map_11_111 image1624 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1624 : Bundle := named_bundle% "RealMapCertificates/relations/basis1624.json"
theorem reductionProof1624 : EqualModuloRelations reduction1624.relations reduction1624.input reduction1624.output := by lin_cert using reduction1624.terms
theorem substitutionProof1624 : IsMapEvaluation generatorImages reduction1624.relations [2,209] reduction1624.output := by lin_cert using reduction1624.terms
def image1625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1625 : InImage map_11_111 image1625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1625 : Bundle := named_bundle% "RealMapCertificates/relations/basis1625.json"
theorem reductionProof1625 : EqualModuloRelations reduction1625.relations reduction1625.input reduction1625.output := by lin_cert using reduction1625.terms
theorem substitutionProof1625 : IsMapEvaluation generatorImages reduction1625.relations [0,221] reduction1625.output := by lin_cert using reduction1625.terms
def image1626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1626 : InImage map_11_111 image1626 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1626 : Bundle := named_bundle% "RealMapCertificates/relations/basis1626.json"
theorem reductionProof1626 : EqualModuloRelations reduction1626.relations reduction1626.input reduction1626.output := by lin_cert using reduction1626.terms
theorem substitutionProof1626 : IsMapEvaluation generatorImages reduction1626.relations [0,0,0,0,0,34,69] reduction1626.output := by lin_cert using reduction1626.terms
def map_11_112 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1656 : InImage map_11_112 image1656 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1656 : Bundle := named_bundle% "RealMapCertificates/relations/basis1656.json"
theorem reductionProof1656 : EqualModuloRelations reduction1656.relations reduction1656.input reduction1656.output := by lin_cert using reduction1656.terms
theorem substitutionProof1656 : IsMapEvaluation generatorImages reduction1656.relations [229] reduction1656.output := by lin_cert using reduction1656.terms
def image1657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1657 : InImage map_11_112 image1657 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1657 : Bundle := named_bundle% "RealMapCertificates/relations/basis1657.json"
theorem reductionProof1657 : EqualModuloRelations reduction1657.relations reduction1657.input reduction1657.output := by lin_cert using reduction1657.terms
theorem substitutionProof1657 : IsMapEvaluation generatorImages reduction1657.relations [43,67] reduction1657.output := by lin_cert using reduction1657.terms
def image1658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1658 : InImage map_11_112 image1658 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1658 : Bundle := named_bundle% "RealMapCertificates/relations/basis1658.json"
theorem reductionProof1658 : EqualModuloRelations reduction1658.relations reduction1658.input reduction1658.output := by lin_cert using reduction1658.terms
theorem substitutionProof1658 : IsMapEvaluation generatorImages reduction1658.relations [0,0,0,216] reduction1658.output := by lin_cert using reduction1658.terms
def map_11_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1692 : InImage map_11_113 image1692 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1692 : Bundle := named_bundle% "RealMapCertificates/relations/basis1692.json"
theorem reductionProof1692 : EqualModuloRelations reduction1692.relations reduction1692.input reduction1692.output := by lin_cert using reduction1692.terms
theorem substitutionProof1692 : IsMapEvaluation generatorImages reduction1692.relations [0,43,68] reduction1692.output := by lin_cert using reduction1692.terms
def map_11_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1731 : InImage map_11_114 image1731 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1731 : Bundle := named_bundle% "RealMapCertificates/relations/basis1731.json"
theorem reductionProof1731 : EqualModuloRelations reduction1731.relations reduction1731.input reduction1731.output := by lin_cert using reduction1731.terms
theorem substitutionProof1731 : IsMapEvaluation generatorImages reduction1731.relations [1,42,69] reduction1731.output := by lin_cert using reduction1731.terms
def map_11_115 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1759 : InImage map_11_115 image1759 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1759 : Bundle := named_bundle% "RealMapCertificates/relations/basis1759.json"
theorem reductionProof1759 : EqualModuloRelations reduction1759.relations reduction1759.input reduction1759.output := by lin_cert using reduction1759.terms
theorem substitutionProof1759 : IsMapEvaluation generatorImages reduction1759.relations [3,209] reduction1759.output := by lin_cert using reduction1759.terms
def image1760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1760 : InImage map_11_115 image1760 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1760 : Bundle := named_bundle% "RealMapCertificates/relations/basis1760.json"
theorem reductionProof1760 : EqualModuloRelations reduction1760.relations reduction1760.input reduction1760.output := by lin_cert using reduction1760.terms
theorem substitutionProof1760 : IsMapEvaluation generatorImages reduction1760.relations [0,0,235] reduction1760.output := by lin_cert using reduction1760.terms
def map_11_116 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1796 : InImage map_11_116 image1796 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1796 : Bundle := named_bundle% "RealMapCertificates/relations/basis1796.json"
theorem reductionProof1796 : EqualModuloRelations reduction1796.relations reduction1796.input reduction1796.output := by lin_cert using reduction1796.terms
theorem substitutionProof1796 : IsMapEvaluation generatorImages reduction1796.relations [0,43,74] reduction1796.output := by lin_cert using reduction1796.terms
def image1797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1797 : InImage map_11_116 image1797 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1797 : Bundle := named_bundle% "RealMapCertificates/relations/basis1797.json"
theorem reductionProof1797 : EqualModuloRelations reduction1797.relations reduction1797.input reduction1797.output := by lin_cert using reduction1797.terms
theorem substitutionProof1797 : IsMapEvaluation generatorImages reduction1797.relations [0,3,3,174] reduction1797.output := by lin_cert using reduction1797.terms
def map_11_118 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1874 : InImage map_11_118 image1874 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1874 : Bundle := named_bundle% "RealMapCertificates/relations/basis1874.json"
theorem reductionProof1874 : EqualModuloRelations reduction1874.relations reduction1874.input reduction1874.output := by lin_cert using reduction1874.terms
theorem substitutionProof1874 : IsMapEvaluation generatorImages reduction1874.relations [1,3,213] reduction1874.output := by lin_cert using reduction1874.terms
def image1875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1875 : InImage map_11_118 image1875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1875 : Bundle := named_bundle% "RealMapCertificates/relations/basis1875.json"
theorem reductionProof1875 : EqualModuloRelations reduction1875.relations reduction1875.input reduction1875.output := by lin_cert using reduction1875.terms
theorem substitutionProof1875 : IsMapEvaluation generatorImages reduction1875.relations [1,1,239] reduction1875.output := by lin_cert using reduction1875.terms
def image1876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1876 : InImage map_11_118 image1876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1876 : Bundle := named_bundle% "RealMapCertificates/relations/basis1876.json"
theorem reductionProof1876 : EqualModuloRelations reduction1876.relations reduction1876.input reduction1876.output := by lin_cert using reduction1876.terms
theorem substitutionProof1876 : IsMapEvaluation generatorImages reduction1876.relations [0,0,251] reduction1876.output := by lin_cert using reduction1876.terms
def map_11_119 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1908 : InImage map_11_119 image1908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1908 : Bundle := named_bundle% "RealMapCertificates/relations/basis1908.json"
theorem reductionProof1908 : EqualModuloRelations reduction1908.relations reduction1908.input reduction1908.output := by lin_cert using reduction1908.terms
theorem substitutionProof1908 : IsMapEvaluation generatorImages reduction1908.relations [262] reduction1908.output := by lin_cert using reduction1908.terms
def image1909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1909 : InImage map_11_119 image1909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1909 : Bundle := named_bundle% "RealMapCertificates/relations/basis1909.json"
theorem reductionProof1909 : EqualModuloRelations reduction1909.relations reduction1909.input reduction1909.output := by lin_cert using reduction1909.terms
theorem substitutionProof1909 : IsMapEvaluation generatorImages reduction1909.relations [0,0,3,216] reduction1909.output := by lin_cert using reduction1909.terms
def map_11_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1997 : InImage map_11_121 image1997 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1997 : Bundle := named_bundle% "RealMapCertificates/relations/basis1997.json"
theorem reductionProof1997 : EqualModuloRelations reduction1997.relations reduction1997.input reduction1997.output := by lin_cert using reduction1997.terms
theorem substitutionProof1997 : IsMapEvaluation generatorImages reduction1997.relations [0,3,3,197] reduction1997.output := by lin_cert using reduction1997.terms
def image1998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1998 : InImage map_11_121 image1998 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1998 : Bundle := named_bundle% "RealMapCertificates/relations/basis1998.json"
theorem reductionProof1998 : EqualModuloRelations reduction1998.relations reduction1998.input reduction1998.output := by lin_cert using reduction1998.terms
theorem substitutionProof1998 : IsMapEvaluation generatorImages reduction1998.relations [0,2,251] reduction1998.output := by lin_cert using reduction1998.terms
def map_11_122 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2031 : InImage map_11_122 image2031 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2031 : Bundle := named_bundle% "RealMapCertificates/relations/basis2031.json"
theorem reductionProof2031 : EqualModuloRelations reduction2031.relations reduction2031.input reduction2031.output := by lin_cert using reduction2031.terms
theorem substitutionProof2031 : IsMapEvaluation generatorImages reduction2031.relations [1,269] reduction2031.output := by lin_cert using reduction2031.terms
def image2032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2032 : InImage map_11_122 image2032 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2032 : Bundle := named_bundle% "RealMapCertificates/relations/basis2032.json"
theorem reductionProof2032 : EqualModuloRelations reduction2032.relations reduction2032.input reduction2032.output := by lin_cert using reduction2032.terms
theorem substitutionProof2032 : IsMapEvaluation generatorImages reduction2032.relations [0,0,270] reduction2032.output := by lin_cert using reduction2032.terms
def map_11_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2082 : InImage map_11_123 image2082 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2082 : Bundle := named_bundle% "RealMapCertificates/relations/basis2082.json"
theorem reductionProof2082 : EqualModuloRelations reduction2082.relations reduction2082.input reduction2082.output := by lin_cert using reduction2082.terms
theorem substitutionProof2082 : IsMapEvaluation generatorImages reduction2082.relations [7,209] reduction2082.output := by lin_cert using reduction2082.terms
def image2083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2083 : InImage map_11_123 image2083 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2083 : Bundle := named_bundle% "RealMapCertificates/relations/basis2083.json"
theorem reductionProof2083 : EqualModuloRelations reduction2083.relations reduction2083.input reduction2083.output := by lin_cert using reduction2083.terms
theorem substitutionProof2083 : IsMapEvaluation generatorImages reduction2083.relations [0,281] reduction2083.output := by lin_cert using reduction2083.terms
def map_11_124 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2119 : InImage map_11_124 image2119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2119 : Bundle := named_bundle% "RealMapCertificates/relations/basis2119.json"
theorem reductionProof2119 : EqualModuloRelations reduction2119.relations reduction2119.input reduction2119.output := by lin_cert using reduction2119.terms
theorem substitutionProof2119 : IsMapEvaluation generatorImages reduction2119.relations [1,281] reduction2119.output := by lin_cert using reduction2119.terms
def image2120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2120 : InImage map_11_124 image2120 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2120 : Bundle := named_bundle% "RealMapCertificates/relations/basis2120.json"
theorem reductionProof2120 : EqualModuloRelations reduction2120.relations reduction2120.input reduction2120.output := by lin_cert using reduction2120.terms
theorem substitutionProof2120 : IsMapEvaluation generatorImages reduction2120.relations [1,1,270] reduction2120.output := by lin_cert using reduction2120.terms
def map_11_126 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2217 : InImage map_11_126 image2217 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2217 : Bundle := named_bundle% "RealMapCertificates/relations/basis2217.json"
theorem reductionProof2217 : EqualModuloRelations reduction2217.relations reduction2217.input reduction2217.output := by lin_cert using reduction2217.terms
theorem substitutionProof2217 : IsMapEvaluation generatorImages reduction2217.relations [310] reduction2217.output := by lin_cert using reduction2217.terms
def map_11_127 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2254 : InImage map_11_127 image2254 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2254 : Bundle := named_bundle% "RealMapCertificates/relations/basis2254.json"
theorem reductionProof2254 : EqualModuloRelations reduction2254.relations reduction2254.input reduction2254.output := by lin_cert using reduction2254.terms
theorem substitutionProof2254 : IsMapEvaluation generatorImages reduction2254.relations [64,69] reduction2254.output := by lin_cert using reduction2254.terms
def map_11_128 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2304 : InImage map_11_128 image2304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2304 : Bundle := named_bundle% "RealMapCertificates/relations/basis2304.json"
theorem reductionProof2304 : EqualModuloRelations reduction2304.relations reduction2304.input reduction2304.output := by lin_cert using reduction2304.terms
theorem substitutionProof2304 : IsMapEvaluation generatorImages reduction2304.relations [320] reduction2304.output := by lin_cert using reduction2304.terms
def image2305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2305 : InImage map_11_128 image2305 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2305 : Bundle := named_bundle% "RealMapCertificates/relations/basis2305.json"
theorem reductionProof2305 : EqualModuloRelations reduction2305.relations reduction2305.input reduction2305.output := by lin_cert using reduction2305.terms
theorem substitutionProof2305 : IsMapEvaluation generatorImages reduction2305.relations [0,312] reduction2305.output := by lin_cert using reduction2305.terms
def image2306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2306 : InImage map_11_128 image2306 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2306 : Bundle := named_bundle% "RealMapCertificates/relations/basis2306.json"
theorem reductionProof2306 : EqualModuloRelations reduction2306.relations reduction2306.input reduction2306.output := by lin_cert using reduction2306.terms
theorem substitutionProof2306 : IsMapEvaluation generatorImages reduction2306.relations [0,311] reduction2306.output := by lin_cert using reduction2306.terms
end RealMapCertificates
