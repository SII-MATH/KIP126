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
  | 9 => [[8]]
  | 18 => []
  | 43 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 104 => []
  | 189 => []
  | 191 => []
  | 209 => []
  | 270 => []
  | 311 => []
  | 314 => []
  | 321 => []
  | 322 => []
  | 324 => []
  | 331 => []
  | 333 => []
  | 336 => []
  | 337 => []
  | 351 => []
  | 352 => []
  | 365 => []
  | 366 => []
  | 367 => []
  | 371 => []
  | 373 => []
  | 375 => []
  | 386 => []
  | 387 => []
  | 388 => []
  | 389 => []
  | 390 => []
  | 391 => []
  | 394 => []
  | 409 => []
  | 410 => []
  | 411 => []
  | 412 => []
  | 413 => []
  | 414 => []
  | 415 => []
  | 419 => []
  | 427 => []
  | 428 => []
  | 441 => []
  | 442 => []
  | 443 => []
  | 446 => []
  | 450 => []
  | 451 => []
  | 461 => []
  | 462 => []
  | 463 => []
  | 477 => []
  | 478 => []
  | 479 => []
  | 485 => []
  | 486 => []
  | 503 => []
  | 504 => []
  | 512 => []
  | 513 => []
  | 520 => []
  | 521 => []
  | 523 => []
  | 524 => []
  | 543 => []
  | 544 => []
  | 546 => []
  | 562 => []
  | 563 => []
  | 570 => []
  | 571 => []
  | 583 => []
  | _ => []
def map_11_129 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2373 : InImage map_11_129 image2373 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2373 : Bundle := named_bundle% "RealMapCertificates/relations/basis2373.json"
theorem reductionProof2373 : EqualModuloRelations reduction2373.relations reduction2373.input reduction2373.output := by lin_cert using reduction2373.terms
theorem substitutionProof2373 : IsMapEvaluation generatorImages reduction2373.relations [331] reduction2373.output := by lin_cert using reduction2373.terms
def image2374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2374 : InImage map_11_129 image2374 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2374 : Bundle := named_bundle% "RealMapCertificates/relations/basis2374.json"
theorem reductionProof2374 : EqualModuloRelations reduction2374.relations reduction2374.input reduction2374.output := by lin_cert using reduction2374.terms
theorem substitutionProof2374 : IsMapEvaluation generatorImages reduction2374.relations [0,3,270] reduction2374.output := by lin_cert using reduction2374.terms
def image2375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2375 : InImage map_11_129 image2375 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2375 : Bundle := named_bundle% "RealMapCertificates/relations/basis2375.json"
theorem reductionProof2375 : EqualModuloRelations reduction2375.relations reduction2375.input reduction2375.output := by lin_cert using reduction2375.terms
theorem substitutionProof2375 : IsMapEvaluation generatorImages reduction2375.relations [0,0,314] reduction2375.output := by lin_cert using reduction2375.terms
def map_11_130 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2424 : InImage map_11_130 image2424 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2424 : Bundle := named_bundle% "RealMapCertificates/relations/basis2424.json"
theorem reductionProof2424 : EqualModuloRelations reduction2424.relations reduction2424.input reduction2424.output := by lin_cert using reduction2424.terms
theorem substitutionProof2424 : IsMapEvaluation generatorImages reduction2424.relations [336] reduction2424.output := by lin_cert using reduction2424.terms
def image2425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2425 : InImage map_11_130 image2425 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2425 : Bundle := named_bundle% "RealMapCertificates/relations/basis2425.json"
theorem reductionProof2425 : EqualModuloRelations reduction2425.relations reduction2425.input reduction2425.output := by lin_cert using reduction2425.terms
theorem substitutionProof2425 : IsMapEvaluation generatorImages reduction2425.relations [69,72] reduction2425.output := by lin_cert using reduction2425.terms
def image2426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2426 : InImage map_11_130 image2426 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2426 : Bundle := named_bundle% "RealMapCertificates/relations/basis2426.json"
theorem reductionProof2426 : EqualModuloRelations reduction2426.relations reduction2426.input reduction2426.output := by lin_cert using reduction2426.terms
theorem substitutionProof2426 : IsMapEvaluation generatorImages reduction2426.relations [1,321] reduction2426.output := by lin_cert using reduction2426.terms
def image2427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2427 : InImage map_11_130 image2427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2427 : Bundle := named_bundle% "RealMapCertificates/relations/basis2427.json"
theorem reductionProof2427 : EqualModuloRelations reduction2427.relations reduction2427.input reduction2427.output := by lin_cert using reduction2427.terms
theorem substitutionProof2427 : IsMapEvaluation generatorImages reduction2427.relations [1,3,270] reduction2427.output := by lin_cert using reduction2427.terms
def map_11_131 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2484 : InImage map_11_131 image2484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2484 : Bundle := named_bundle% "RealMapCertificates/relations/basis2484.json"
theorem reductionProof2484 : EqualModuloRelations reduction2484.relations reduction2484.input reduction2484.output := by lin_cert using reduction2484.terms
theorem substitutionProof2484 : IsMapEvaluation generatorImages reduction2484.relations [351] reduction2484.output := by lin_cert using reduction2484.terms
def image2485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2485 : InImage map_11_131 image2485 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2485 : Bundle := named_bundle% "RealMapCertificates/relations/basis2485.json"
theorem reductionProof2485 : EqualModuloRelations reduction2485.relations reduction2485.input reduction2485.output := by lin_cert using reduction2485.terms
theorem substitutionProof2485 : IsMapEvaluation generatorImages reduction2485.relations [0,337] reduction2485.output := by lin_cert using reduction2485.terms
def image2486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2486 : InImage map_11_131 image2486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2486 : Bundle := named_bundle% "RealMapCertificates/relations/basis2486.json"
theorem reductionProof2486 : EqualModuloRelations reduction2486.relations reduction2486.input reduction2486.output := by lin_cert using reduction2486.terms
theorem substitutionProof2486 : IsMapEvaluation generatorImages reduction2486.relations [0,0,333] reduction2486.output := by lin_cert using reduction2486.terms
def map_11_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2568 : InImage map_11_132 image2568 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2568 : Bundle := named_bundle% "RealMapCertificates/relations/basis2568.json"
theorem reductionProof2568 : EqualModuloRelations reduction2568.relations reduction2568.input reduction2568.output := by lin_cert using reduction2568.terms
theorem substitutionProof2568 : IsMapEvaluation generatorImages reduction2568.relations [365] reduction2568.output := by lin_cert using reduction2568.terms
def map_11_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2621 : InImage map_11_133 image2621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2621 : Bundle := named_bundle% "RealMapCertificates/relations/basis2621.json"
theorem reductionProof2621 : EqualModuloRelations reduction2621.relations reduction2621.input reduction2621.output := by lin_cert using reduction2621.terms
theorem substitutionProof2621 : IsMapEvaluation generatorImages reduction2621.relations [371] reduction2621.output := by lin_cert using reduction2621.terms
def image2622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2622 : InImage map_11_133 image2622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2622 : Bundle := named_bundle% "RealMapCertificates/relations/basis2622.json"
theorem reductionProof2622 : EqualModuloRelations reduction2622.relations reduction2622.input reduction2622.output := by lin_cert using reduction2622.terms
theorem substitutionProof2622 : IsMapEvaluation generatorImages reduction2622.relations [69,79] reduction2622.output := by lin_cert using reduction2622.terms
def map_11_134 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2685 : InImage map_11_134 image2685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2685 : Bundle := named_bundle% "RealMapCertificates/relations/basis2685.json"
theorem reductionProof2685 : EqualModuloRelations reduction2685.relations reduction2685.input reduction2685.output := by lin_cert using reduction2685.terms
theorem substitutionProof2685 : IsMapEvaluation generatorImages reduction2685.relations [387] reduction2685.output := by lin_cert using reduction2685.terms
def image2686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2686 : InImage map_11_134 image2686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2686 : Bundle := named_bundle% "RealMapCertificates/relations/basis2686.json"
theorem reductionProof2686 : EqualModuloRelations reduction2686.relations reduction2686.input reduction2686.output := by lin_cert using reduction2686.terms
theorem substitutionProof2686 : IsMapEvaluation generatorImages reduction2686.relations [386] reduction2686.output := by lin_cert using reduction2686.terms
def image2687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2687 : InImage map_11_134 image2687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2687 : Bundle := named_bundle% "RealMapCertificates/relations/basis2687.json"
theorem reductionProof2687 : EqualModuloRelations reduction2687.relations reduction2687.input reduction2687.output := by lin_cert using reduction2687.terms
theorem substitutionProof2687 : IsMapEvaluation generatorImages reduction2687.relations [18,189] reduction2687.output := by lin_cert using reduction2687.terms
def image2688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2688 : InImage map_11_134 image2688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2688 : Bundle := named_bundle% "RealMapCertificates/relations/basis2688.json"
theorem reductionProof2688 : EqualModuloRelations reduction2688.relations reduction2688.input reduction2688.output := by lin_cert using reduction2688.terms
theorem substitutionProof2688 : IsMapEvaluation generatorImages reduction2688.relations [0,69,80] reduction2688.output := by lin_cert using reduction2688.terms
def image2689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2689 : InImage map_11_134 image2689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2689 : Bundle := named_bundle% "RealMapCertificates/relations/basis2689.json"
theorem reductionProof2689 : EqualModuloRelations reduction2689.relations reduction2689.input reduction2689.output := by lin_cert using reduction2689.terms
theorem substitutionProof2689 : IsMapEvaluation generatorImages reduction2689.relations [0,0,366] reduction2689.output := by lin_cert using reduction2689.terms
def map_11_135 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2778 : InImage map_11_135 image2778 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2778 : Bundle := named_bundle% "RealMapCertificates/relations/basis2778.json"
theorem reductionProof2778 : EqualModuloRelations reduction2778.relations reduction2778.input reduction2778.output := by lin_cert using reduction2778.terms
theorem substitutionProof2778 : IsMapEvaluation generatorImages reduction2778.relations [411] reduction2778.output := by lin_cert using reduction2778.terms
def image2779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2779 : InImage map_11_135 image2779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2779 : Bundle := named_bundle% "RealMapCertificates/relations/basis2779.json"
theorem reductionProof2779 : EqualModuloRelations reduction2779.relations reduction2779.input reduction2779.output := by lin_cert using reduction2779.terms
theorem substitutionProof2779 : IsMapEvaluation generatorImages reduction2779.relations [410] reduction2779.output := by lin_cert using reduction2779.terms
def image2780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2780 : InImage map_11_135 image2780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2780 : Bundle := named_bundle% "RealMapCertificates/relations/basis2780.json"
theorem reductionProof2780 : EqualModuloRelations reduction2780.relations reduction2780.input reduction2780.output := by lin_cert using reduction2780.terms
theorem substitutionProof2780 : IsMapEvaluation generatorImages reduction2780.relations [409] reduction2780.output := by lin_cert using reduction2780.terms
def image2781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2781 : InImage map_11_135 image2781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2781 : Bundle := named_bundle% "RealMapCertificates/relations/basis2781.json"
theorem reductionProof2781 : EqualModuloRelations reduction2781.relations reduction2781.input reduction2781.output := by lin_cert using reduction2781.terms
theorem substitutionProof2781 : IsMapEvaluation generatorImages reduction2781.relations [0,389] reduction2781.output := by lin_cert using reduction2781.terms
def image2782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2782 : InImage map_11_135 image2782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2782 : Bundle := named_bundle% "RealMapCertificates/relations/basis2782.json"
theorem reductionProof2782 : EqualModuloRelations reduction2782.relations reduction2782.input reduction2782.output := by lin_cert using reduction2782.terms
theorem substitutionProof2782 : IsMapEvaluation generatorImages reduction2782.relations [0,0,0,367] reduction2782.output := by lin_cert using reduction2782.terms
def map_11_136 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2850 : InImage map_11_136 image2850 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2850 : Bundle := named_bundle% "RealMapCertificates/relations/basis2850.json"
theorem reductionProof2850 : EqualModuloRelations reduction2850.relations reduction2850.input reduction2850.output := by lin_cert using reduction2850.terms
theorem substitutionProof2850 : IsMapEvaluation generatorImages reduction2850.relations [69,89] reduction2850.output := by lin_cert using reduction2850.terms
def image2851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2851 : InImage map_11_136 image2851 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2851 : Bundle := named_bundle% "RealMapCertificates/relations/basis2851.json"
theorem reductionProof2851 : EqualModuloRelations reduction2851.relations reduction2851.input reduction2851.output := by lin_cert using reduction2851.terms
theorem substitutionProof2851 : IsMapEvaluation generatorImages reduction2851.relations [1,389] reduction2851.output := by lin_cert using reduction2851.terms
def image2852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2852 : InImage map_11_136 image2852 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2852 : Bundle := named_bundle% "RealMapCertificates/relations/basis2852.json"
theorem reductionProof2852 : EqualModuloRelations reduction2852.relations reduction2852.input reduction2852.output := by lin_cert using reduction2852.terms
theorem substitutionProof2852 : IsMapEvaluation generatorImages reduction2852.relations [1,388] reduction2852.output := by lin_cert using reduction2852.terms
def image2853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2853 : InImage map_11_136 image2853 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2853 : Bundle := named_bundle% "RealMapCertificates/relations/basis2853.json"
theorem reductionProof2853 : EqualModuloRelations reduction2853.relations reduction2853.input reduction2853.output := by lin_cert using reduction2853.terms
theorem substitutionProof2853 : IsMapEvaluation generatorImages reduction2853.relations [0,0,391] reduction2853.output := by lin_cert using reduction2853.terms
def image2854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2854 : InImage map_11_136 image2854 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2854 : Bundle := named_bundle% "RealMapCertificates/relations/basis2854.json"
theorem reductionProof2854 : EqualModuloRelations reduction2854.relations reduction2854.input reduction2854.output := by lin_cert using reduction2854.terms
theorem substitutionProof2854 : IsMapEvaluation generatorImages reduction2854.relations [0,0,0,375] reduction2854.output := by lin_cert using reduction2854.terms
def map_11_137 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image2923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2923 : InImage map_11_137 image2923 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction2923 : Bundle := named_bundle% "RealMapCertificates/relations/basis2923.json"
theorem reductionProof2923 : EqualModuloRelations reduction2923.relations reduction2923.input reduction2923.output := by lin_cert using reduction2923.terms
theorem substitutionProof2923 : IsMapEvaluation generatorImages reduction2923.relations [427] reduction2923.output := by lin_cert using reduction2923.terms
def image2924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2924 : InImage map_11_137 image2924 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction2924 : Bundle := named_bundle% "RealMapCertificates/relations/basis2924.json"
theorem reductionProof2924 : EqualModuloRelations reduction2924.relations reduction2924.input reduction2924.output := by lin_cert using reduction2924.terms
theorem substitutionProof2924 : IsMapEvaluation generatorImages reduction2924.relations [1,413] reduction2924.output := by lin_cert using reduction2924.terms
def image2925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2925 : InImage map_11_137 image2925 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction2925 : Bundle := named_bundle% "RealMapCertificates/relations/basis2925.json"
theorem reductionProof2925 : EqualModuloRelations reduction2925.relations reduction2925.input reduction2925.output := by lin_cert using reduction2925.terms
theorem substitutionProof2925 : IsMapEvaluation generatorImages reduction2925.relations [1,412] reduction2925.output := by lin_cert using reduction2925.terms
def image2926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2926 : InImage map_11_137 image2926 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction2926 : Bundle := named_bundle% "RealMapCertificates/relations/basis2926.json"
theorem reductionProof2926 : EqualModuloRelations reduction2926.relations reduction2926.input reduction2926.output := by lin_cert using reduction2926.terms
theorem substitutionProof2926 : IsMapEvaluation generatorImages reduction2926.relations [0,419] reduction2926.output := by lin_cert using reduction2926.terms
def image2927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2927 : InImage map_11_137 image2927 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction2927 : Bundle := named_bundle% "RealMapCertificates/relations/basis2927.json"
theorem reductionProof2927 : EqualModuloRelations reduction2927.relations reduction2927.input reduction2927.output := by lin_cert using reduction2927.terms
theorem substitutionProof2927 : IsMapEvaluation generatorImages reduction2927.relations [0,0,414] reduction2927.output := by lin_cert using reduction2927.terms
def image2928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2928 : InImage map_11_137 image2928 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction2928 : Bundle := named_bundle% "RealMapCertificates/relations/basis2928.json"
theorem reductionProof2928 : EqualModuloRelations reduction2928.relations reduction2928.input reduction2928.output := by lin_cert using reduction2928.terms
theorem substitutionProof2928 : IsMapEvaluation generatorImages reduction2928.relations [0,0,0,0,0,0,0,0,0,69,69] reduction2928.output := by lin_cert using reduction2928.terms
def map_11_138 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3018 : InImage map_11_138 image3018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3018 : Bundle := named_bundle% "RealMapCertificates/relations/basis3018.json"
theorem reductionProof3018 : EqualModuloRelations reduction3018.relations reduction3018.input reduction3018.output := by lin_cert using reduction3018.terms
theorem substitutionProof3018 : IsMapEvaluation generatorImages reduction3018.relations [0,428] reduction3018.output := by lin_cert using reduction3018.terms
def image3019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3019 : InImage map_11_138 image3019 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3019 : Bundle := named_bundle% "RealMapCertificates/relations/basis3019.json"
theorem reductionProof3019 : EqualModuloRelations reduction3019.relations reduction3019.input reduction3019.output := by lin_cert using reduction3019.terms
theorem substitutionProof3019 : IsMapEvaluation generatorImages reduction3019.relations [0,3,333] reduction3019.output := by lin_cert using reduction3019.terms
def image3020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3020 : InImage map_11_138 image3020 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3020 : Bundle := named_bundle% "RealMapCertificates/relations/basis3020.json"
theorem reductionProof3020 : EqualModuloRelations reduction3020.relations reduction3020.input reduction3020.output := by lin_cert using reduction3020.terms
theorem substitutionProof3020 : IsMapEvaluation generatorImages reduction3020.relations [0,2,373] reduction3020.output := by lin_cert using reduction3020.terms
def image3021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3021 : InImage map_11_138 image3021 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3021 : Bundle := named_bundle% "RealMapCertificates/relations/basis3021.json"
theorem reductionProof3021 : EqualModuloRelations reduction3021.relations reduction3021.input reduction3021.output := by lin_cert using reduction3021.terms
theorem substitutionProof3021 : IsMapEvaluation generatorImages reduction3021.relations [0,0,0,0,0,0,0,0,0,0,324] reduction3021.output := by lin_cert using reduction3021.terms
def map_11_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3088 : InImage map_11_139 image3088 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3088 : Bundle := named_bundle% "RealMapCertificates/relations/basis3088.json"
theorem reductionProof3088 : EqualModuloRelations reduction3088.relations reduction3088.input reduction3088.output := by lin_cert using reduction3088.terms
theorem substitutionProof3088 : IsMapEvaluation generatorImages reduction3088.relations [18,209] reduction3088.output := by lin_cert using reduction3088.terms
def image3089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3089 : InImage map_11_139 image3089 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3089 : Bundle := named_bundle% "RealMapCertificates/relations/basis3089.json"
theorem reductionProof3089 : EqualModuloRelations reduction3089.relations reduction3089.input reduction3089.output := by lin_cert using reduction3089.terms
theorem substitutionProof3089 : IsMapEvaluation generatorImages reduction3089.relations [0,442] reduction3089.output := by lin_cert using reduction3089.terms
def image3090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3090 : InImage map_11_139 image3090 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3090 : Bundle := named_bundle% "RealMapCertificates/relations/basis3090.json"
theorem reductionProof3090 : EqualModuloRelations reduction3090.relations reduction3090.input reduction3090.output := by lin_cert using reduction3090.terms
theorem substitutionProof3090 : IsMapEvaluation generatorImages reduction3090.relations [0,441] reduction3090.output := by lin_cert using reduction3090.terms
def map_11_140 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3169 : InImage map_11_140 image3169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3169 : Bundle := named_bundle% "RealMapCertificates/relations/basis3169.json"
theorem reductionProof3169 : EqualModuloRelations reduction3169.relations reduction3169.input reduction3169.output := by lin_cert using reduction3169.terms
theorem substitutionProof3169 : IsMapEvaluation generatorImages reduction3169.relations [462] reduction3169.output := by lin_cert using reduction3169.terms
def image3170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3170 : InImage map_11_140 image3170 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3170 : Bundle := named_bundle% "RealMapCertificates/relations/basis3170.json"
theorem reductionProof3170 : EqualModuloRelations reduction3170.relations reduction3170.input reduction3170.output := by lin_cert using reduction3170.terms
theorem substitutionProof3170 : IsMapEvaluation generatorImages reduction3170.relations [461] reduction3170.output := by lin_cert using reduction3170.terms
def image3171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3171 : InImage map_11_140 image3171 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3171 : Bundle := named_bundle% "RealMapCertificates/relations/basis3171.json"
theorem reductionProof3171 : EqualModuloRelations reduction3171.relations reduction3171.input reduction3171.output := by lin_cert using reduction3171.terms
theorem substitutionProof3171 : IsMapEvaluation generatorImages reduction3171.relations [69,104] reduction3171.output := by lin_cert using reduction3171.terms
def image3172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3172 : InImage map_11_140 image3172 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3172 : Bundle := named_bundle% "RealMapCertificates/relations/basis3172.json"
theorem reductionProof3172 : EqualModuloRelations reduction3172.relations reduction3172.input reduction3172.output := by lin_cert using reduction3172.terms
theorem substitutionProof3172 : IsMapEvaluation generatorImages reduction3172.relations [1,442] reduction3172.output := by lin_cert using reduction3172.terms
def image3173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3173 : InImage map_11_140 image3173 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3173 : Bundle := named_bundle% "RealMapCertificates/relations/basis3173.json"
theorem reductionProof3173 : EqualModuloRelations reduction3173.relations reduction3173.input reduction3173.output := by lin_cert using reduction3173.terms
theorem substitutionProof3173 : IsMapEvaluation generatorImages reduction3173.relations [0,450] reduction3173.output := by lin_cert using reduction3173.terms
def image3174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3174 : InImage map_11_140 image3174 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3174 : Bundle := named_bundle% "RealMapCertificates/relations/basis3174.json"
theorem reductionProof3174 : EqualModuloRelations reduction3174.relations reduction3174.input reduction3174.output := by lin_cert using reduction3174.terms
theorem substitutionProof3174 : IsMapEvaluation generatorImages reduction3174.relations [0,0,443] reduction3174.output := by lin_cert using reduction3174.terms
def map_11_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3269 : InImage map_11_141 image3269 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3269 : Bundle := named_bundle% "RealMapCertificates/relations/basis3269.json"
theorem reductionProof3269 : EqualModuloRelations reduction3269.relations reduction3269.input reduction3269.output := by lin_cert using reduction3269.terms
theorem substitutionProof3269 : IsMapEvaluation generatorImages reduction3269.relations [477] reduction3269.output := by lin_cert using reduction3269.terms
def image3270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3270 : InImage map_11_141 image3270 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3270 : Bundle := named_bundle% "RealMapCertificates/relations/basis3270.json"
theorem reductionProof3270 : EqualModuloRelations reduction3270.relations reduction3270.input reduction3270.output := by lin_cert using reduction3270.terms
theorem substitutionProof3270 : IsMapEvaluation generatorImages reduction3270.relations [1,450] reduction3270.output := by lin_cert using reduction3270.terms
def map_11_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3338 : InImage map_11_142 image3338 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3338 : Bundle := named_bundle% "RealMapCertificates/relations/basis3338.json"
theorem reductionProof3338 : EqualModuloRelations reduction3338.relations reduction3338.input reduction3338.output := by lin_cert using reduction3338.terms
theorem substitutionProof3338 : IsMapEvaluation generatorImages reduction3338.relations [486] reduction3338.output := by lin_cert using reduction3338.terms
def image3339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3339 : InImage map_11_142 image3339 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3339 : Bundle := named_bundle% "RealMapCertificates/relations/basis3339.json"
theorem reductionProof3339 : EqualModuloRelations reduction3339.relations reduction3339.input reduction3339.output := by lin_cert using reduction3339.terms
theorem substitutionProof3339 : IsMapEvaluation generatorImages reduction3339.relations [485] reduction3339.output := by lin_cert using reduction3339.terms
def image3340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3340 : InImage map_11_142 image3340 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3340 : Bundle := named_bundle% "RealMapCertificates/relations/basis3340.json"
theorem reductionProof3340 : EqualModuloRelations reduction3340.relations reduction3340.input reduction3340.output := by lin_cert using reduction3340.terms
theorem substitutionProof3340 : IsMapEvaluation generatorImages reduction3340.relations [3,389] reduction3340.output := by lin_cert using reduction3340.terms
def image3341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3341 : InImage map_11_142 image3341 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3341 : Bundle := named_bundle% "RealMapCertificates/relations/basis3341.json"
theorem reductionProof3341 : EqualModuloRelations reduction3341.relations reduction3341.input reduction3341.output := by lin_cert using reduction3341.terms
theorem substitutionProof3341 : IsMapEvaluation generatorImages reduction3341.relations [0,0,0,451] reduction3341.output := by lin_cert using reduction3341.terms
def map_11_143 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image3422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3422 : InImage map_11_143 image3422 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction3422 : Bundle := named_bundle% "RealMapCertificates/relations/basis3422.json"
theorem reductionProof3422 : EqualModuloRelations reduction3422.relations reduction3422.input reduction3422.output := by lin_cert using reduction3422.terms
theorem substitutionProof3422 : IsMapEvaluation generatorImages reduction3422.relations [7,311] reduction3422.output := by lin_cert using reduction3422.terms
def image3423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3423 : InImage map_11_143 image3423 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction3423 : Bundle := named_bundle% "RealMapCertificates/relations/basis3423.json"
theorem reductionProof3423 : EqualModuloRelations reduction3423.relations reduction3423.input reduction3423.output := by lin_cert using reduction3423.terms
theorem substitutionProof3423 : IsMapEvaluation generatorImages reduction3423.relations [3,412] reduction3423.output := by lin_cert using reduction3423.terms
def image3424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3424 : InImage map_11_143 image3424 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction3424 : Bundle := named_bundle% "RealMapCertificates/relations/basis3424.json"
theorem reductionProof3424 : EqualModuloRelations reduction3424.relations reduction3424.input reduction3424.output := by lin_cert using reduction3424.terms
theorem substitutionProof3424 : IsMapEvaluation generatorImages reduction3424.relations [2,450] reduction3424.output := by lin_cert using reduction3424.terms
def image3425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3425 : InImage map_11_143 image3425 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction3425 : Bundle := named_bundle% "RealMapCertificates/relations/basis3425.json"
theorem reductionProof3425 : EqualModuloRelations reduction3425.relations reduction3425.input reduction3425.output := by lin_cert using reduction3425.terms
theorem substitutionProof3425 : IsMapEvaluation generatorImages reduction3425.relations [1,478] reduction3425.output := by lin_cert using reduction3425.terms
def image3426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3426 : InImage map_11_143 image3426 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction3426 : Bundle := named_bundle% "RealMapCertificates/relations/basis3426.json"
theorem reductionProof3426 : EqualModuloRelations reduction3426.relations reduction3426.input reduction3426.output := by lin_cert using reduction3426.terms
theorem substitutionProof3426 : IsMapEvaluation generatorImages reduction3426.relations [0,3,391] reduction3426.output := by lin_cert using reduction3426.terms
def image3427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3427 : InImage map_11_143 image3427 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction3427 : Bundle := named_bundle% "RealMapCertificates/relations/basis3427.json"
theorem reductionProof3427 : EqualModuloRelations reduction3427.relations reduction3427.input reduction3427.output := by lin_cert using reduction3427.terms
theorem substitutionProof3427 : IsMapEvaluation generatorImages reduction3427.relations [0,3,390] reduction3427.output := by lin_cert using reduction3427.terms
def image3428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3428 : InImage map_11_143 image3428 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction3428 : Bundle := named_bundle% "RealMapCertificates/relations/basis3428.json"
theorem reductionProof3428 : EqualModuloRelations reduction3428.relations reduction3428.input reduction3428.output := by lin_cert using reduction3428.terms
theorem substitutionProof3428 : IsMapEvaluation generatorImages reduction3428.relations [0,0,479] reduction3428.output := by lin_cert using reduction3428.terms
def image3429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3429 : InImage map_11_143 image3429 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction3429 : Bundle := named_bundle% "RealMapCertificates/relations/basis3429.json"
theorem reductionProof3429 : EqualModuloRelations reduction3429.relations reduction3429.input reduction3429.output := by lin_cert using reduction3429.terms
theorem substitutionProof3429 : IsMapEvaluation generatorImages reduction3429.relations [0,0,0,0,0,446] reduction3429.output := by lin_cert using reduction3429.terms
def map_11_144 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3518 : InImage map_11_144 image3518 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3518 : Bundle := named_bundle% "RealMapCertificates/relations/basis3518.json"
theorem reductionProof3518 : EqualModuloRelations reduction3518.relations reduction3518.input reduction3518.output := by lin_cert using reduction3518.terms
theorem substitutionProof3518 : IsMapEvaluation generatorImages reduction3518.relations [503] reduction3518.output := by lin_cert using reduction3518.terms
def image3519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3519 : InImage map_11_144 image3519 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3519 : Bundle := named_bundle% "RealMapCertificates/relations/basis3519.json"
theorem reductionProof3519 : EqualModuloRelations reduction3519.relations reduction3519.input reduction3519.output := by lin_cert using reduction3519.terms
theorem substitutionProof3519 : IsMapEvaluation generatorImages reduction3519.relations [7,321] reduction3519.output := by lin_cert using reduction3519.terms
def image3520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3520 : InImage map_11_144 image3520 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3520 : Bundle := named_bundle% "RealMapCertificates/relations/basis3520.json"
theorem reductionProof3520 : EqualModuloRelations reduction3520.relations reduction3520.input reduction3520.output := by lin_cert using reduction3520.terms
theorem substitutionProof3520 : IsMapEvaluation generatorImages reduction3520.relations [0,7,314] reduction3520.output := by lin_cert using reduction3520.terms
def map_11_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3584 : InImage map_11_145 image3584 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3584 : Bundle := named_bundle% "RealMapCertificates/relations/basis3584.json"
theorem reductionProof3584 : EqualModuloRelations reduction3584.relations reduction3584.input reduction3584.output := by lin_cert using reduction3584.terms
theorem substitutionProof3584 : IsMapEvaluation generatorImages reduction3584.relations [3,428] reduction3584.output := by lin_cert using reduction3584.terms
def image3585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3585 : InImage map_11_145 image3585 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3585 : Bundle := named_bundle% "RealMapCertificates/relations/basis3585.json"
theorem reductionProof3585 : EqualModuloRelations reduction3585.relations reduction3585.input reduction3585.output := by lin_cert using reduction3585.terms
theorem substitutionProof3585 : IsMapEvaluation generatorImages reduction3585.relations [3,3,333] reduction3585.output := by lin_cert using reduction3585.terms
def image3586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3586 : InImage map_11_145 image3586 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3586 : Bundle := named_bundle% "RealMapCertificates/relations/basis3586.json"
theorem reductionProof3586 : EqualModuloRelations reduction3586.relations reduction3586.input reduction3586.output := by lin_cert using reduction3586.terms
theorem substitutionProof3586 : IsMapEvaluation generatorImages reduction3586.relations [0,7,322] reduction3586.output := by lin_cert using reduction3586.terms
def map_11_146 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3668 : InImage map_11_146 image3668 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3668 : Bundle := named_bundle% "RealMapCertificates/relations/basis3668.json"
theorem reductionProof3668 : EqualModuloRelations reduction3668.relations reduction3668.input reduction3668.output := by lin_cert using reduction3668.terms
theorem substitutionProof3668 : IsMapEvaluation generatorImages reduction3668.relations [520] reduction3668.output := by lin_cert using reduction3668.terms
def image3669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3669 : InImage map_11_146 image3669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3669 : Bundle := named_bundle% "RealMapCertificates/relations/basis3669.json"
theorem reductionProof3669 : EqualModuloRelations reduction3669.relations reduction3669.input reduction3669.output := by lin_cert using reduction3669.terms
theorem substitutionProof3669 : IsMapEvaluation generatorImages reduction3669.relations [1,7,322] reduction3669.output := by lin_cert using reduction3669.terms
def image3670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3670 : InImage map_11_146 image3670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3670 : Bundle := named_bundle% "RealMapCertificates/relations/basis3670.json"
theorem reductionProof3670 : EqualModuloRelations reduction3670.relations reduction3670.input reduction3670.output := by lin_cert using reduction3670.terms
theorem substitutionProof3670 : IsMapEvaluation generatorImages reduction3670.relations [0,512] reduction3670.output := by lin_cert using reduction3670.terms
def image3671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3671 : InImage map_11_146 image3671 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3671 : Bundle := named_bundle% "RealMapCertificates/relations/basis3671.json"
theorem reductionProof3671 : EqualModuloRelations reduction3671.relations reduction3671.input reduction3671.output := by lin_cert using reduction3671.terms
theorem substitutionProof3671 : IsMapEvaluation generatorImages reduction3671.relations [0,7,333] reduction3671.output := by lin_cert using reduction3671.terms
def image3672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3672 : InImage map_11_146 image3672 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3672 : Bundle := named_bundle% "RealMapCertificates/relations/basis3672.json"
theorem reductionProof3672 : EqualModuloRelations reduction3672.relations reduction3672.input reduction3672.output := by lin_cert using reduction3672.terms
theorem substitutionProof3672 : IsMapEvaluation generatorImages reduction3672.relations [0,2,479] reduction3672.output := by lin_cert using reduction3672.terms
def image3673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3673 : InImage map_11_146 image3673 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3673 : Bundle := named_bundle% "RealMapCertificates/relations/basis3673.json"
theorem reductionProof3673 : EqualModuloRelations reduction3673.relations reduction3673.input reduction3673.output := by lin_cert using reduction3673.terms
theorem substitutionProof3673 : IsMapEvaluation generatorImages reduction3673.relations [0,0,504] reduction3673.output := by lin_cert using reduction3673.terms
def map_11_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3777 : InImage map_11_147 image3777 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3777 : Bundle := named_bundle% "RealMapCertificates/relations/basis3777.json"
theorem reductionProof3777 : EqualModuloRelations reduction3777.relations reduction3777.input reduction3777.output := by lin_cert using reduction3777.terms
theorem substitutionProof3777 : IsMapEvaluation generatorImages reduction3777.relations [0,521] reduction3777.output := by lin_cert using reduction3777.terms
def image3778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3778 : InImage map_11_147 image3778 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3778 : Bundle := named_bundle% "RealMapCertificates/relations/basis3778.json"
theorem reductionProof3778 : EqualModuloRelations reduction3778.relations reduction3778.input reduction3778.output := by lin_cert using reduction3778.terms
theorem substitutionProof3778 : IsMapEvaluation generatorImages reduction3778.relations [0,0,513] reduction3778.output := by lin_cert using reduction3778.terms
def map_11_148 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3843 : InImage map_11_148 image3843 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3843 : Bundle := named_bundle% "RealMapCertificates/relations/basis3843.json"
theorem reductionProof3843 : EqualModuloRelations reduction3843.relations reduction3843.input reduction3843.output := by lin_cert using reduction3843.terms
theorem substitutionProof3843 : IsMapEvaluation generatorImages reduction3843.relations [543] reduction3843.output := by lin_cert using reduction3843.terms
def image3844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3844 : InImage map_11_148 image3844 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3844 : Bundle := named_bundle% "RealMapCertificates/relations/basis3844.json"
theorem reductionProof3844 : EqualModuloRelations reduction3844.relations reduction3844.input reduction3844.output := by lin_cert using reduction3844.terms
theorem substitutionProof3844 : IsMapEvaluation generatorImages reduction3844.relations [3,463] reduction3844.output := by lin_cert using reduction3844.terms
def image3845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3845 : InImage map_11_148 image3845 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3845 : Bundle := named_bundle% "RealMapCertificates/relations/basis3845.json"
theorem reductionProof3845 : EqualModuloRelations reduction3845.relations reduction3845.input reduction3845.output := by lin_cert using reduction3845.terms
theorem substitutionProof3845 : IsMapEvaluation generatorImages reduction3845.relations [0,3,3,352] reduction3845.output := by lin_cert using reduction3845.terms
def image3846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3846 : InImage map_11_148 image3846 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3846 : Bundle := named_bundle% "RealMapCertificates/relations/basis3846.json"
theorem reductionProof3846 : EqualModuloRelations reduction3846.relations reduction3846.input reduction3846.output := by lin_cert using reduction3846.terms
theorem substitutionProof3846 : IsMapEvaluation generatorImages reduction3846.relations [0,0,523] reduction3846.output := by lin_cert using reduction3846.terms
def map_11_149 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3930 : InImage map_11_149 image3930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3930 : Bundle := named_bundle% "RealMapCertificates/relations/basis3930.json"
theorem reductionProof3930 : EqualModuloRelations reduction3930.relations reduction3930.input reduction3930.output := by lin_cert using reduction3930.terms
theorem substitutionProof3930 : IsMapEvaluation generatorImages reduction3930.relations [1,1,513] reduction3930.output := by lin_cert using reduction3930.terms
def image3931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3931 : InImage map_11_149 image3931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3931 : Bundle := named_bundle% "RealMapCertificates/relations/basis3931.json"
theorem reductionProof3931 : EqualModuloRelations reduction3931.relations reduction3931.input reduction3931.output := by lin_cert using reduction3931.terms
theorem substitutionProof3931 : IsMapEvaluation generatorImages reduction3931.relations [0,544] reduction3931.output := by lin_cert using reduction3931.terms
def image3932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3932 : InImage map_11_149 image3932 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3932 : Bundle := named_bundle% "RealMapCertificates/relations/basis3932.json"
theorem reductionProof3932 : EqualModuloRelations reduction3932.relations reduction3932.input reduction3932.output := by lin_cert using reduction3932.terms
theorem substitutionProof3932 : IsMapEvaluation generatorImages reduction3932.relations [0,7,366] reduction3932.output := by lin_cert using reduction3932.terms
def image3933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3933 : InImage map_11_149 image3933 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3933 : Bundle := named_bundle% "RealMapCertificates/relations/basis3933.json"
theorem reductionProof3933 : EqualModuloRelations reduction3933.relations reduction3933.input reduction3933.output := by lin_cert using reduction3933.terms
theorem substitutionProof3933 : IsMapEvaluation generatorImages reduction3933.relations [0,0,0,524] reduction3933.output := by lin_cert using reduction3933.terms
def map_11_150 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4034 : InImage map_11_150 image4034 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4034 : Bundle := named_bundle% "RealMapCertificates/relations/basis4034.json"
theorem reductionProof4034 : EqualModuloRelations reduction4034.relations reduction4034.input reduction4034.output := by lin_cert using reduction4034.terms
theorem substitutionProof4034 : IsMapEvaluation generatorImages reduction4034.relations [562] reduction4034.output := by lin_cert using reduction4034.terms
def image4035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4035 : InImage map_11_150 image4035 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4035 : Bundle := named_bundle% "RealMapCertificates/relations/basis4035.json"
theorem reductionProof4035 : EqualModuloRelations reduction4035.relations reduction4035.input reduction4035.output := by lin_cert using reduction4035.terms
theorem substitutionProof4035 : IsMapEvaluation generatorImages reduction4035.relations [43,191] reduction4035.output := by lin_cert using reduction4035.terms
def image4036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4036 : InImage map_11_150 image4036 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4036 : Bundle := named_bundle% "RealMapCertificates/relations/basis4036.json"
theorem reductionProof4036 : EqualModuloRelations reduction4036.relations reduction4036.input reduction4036.output := by lin_cert using reduction4036.terms
theorem substitutionProof4036 : IsMapEvaluation generatorImages reduction4036.relations [2,521] reduction4036.output := by lin_cert using reduction4036.terms
def image4037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4037 : InImage map_11_150 image4037 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4037 : Bundle := named_bundle% "RealMapCertificates/relations/basis4037.json"
theorem reductionProof4037 : EqualModuloRelations reduction4037.relations reduction4037.input reduction4037.output := by lin_cert using reduction4037.terms
theorem substitutionProof4037 : IsMapEvaluation generatorImages reduction4037.relations [1,544] reduction4037.output := by lin_cert using reduction4037.terms
def image4038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4038 : InImage map_11_150 image4038 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4038 : Bundle := named_bundle% "RealMapCertificates/relations/basis4038.json"
theorem reductionProof4038 : EqualModuloRelations reduction4038.relations reduction4038.input reduction4038.output := by lin_cert using reduction4038.terms
theorem substitutionProof4038 : IsMapEvaluation generatorImages reduction4038.relations [0,0,7,367] reduction4038.output := by lin_cert using reduction4038.terms
def map_11_151 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4121 : InImage map_11_151 image4121 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4121 : Bundle := named_bundle% "RealMapCertificates/relations/basis4121.json"
theorem reductionProof4121 : EqualModuloRelations reduction4121.relations reduction4121.input reduction4121.output := by lin_cert using reduction4121.terms
theorem substitutionProof4121 : IsMapEvaluation generatorImages reduction4121.relations [570] reduction4121.output := by lin_cert using reduction4121.terms
def image4122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4122 : InImage map_11_151 image4122 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4122 : Bundle := named_bundle% "RealMapCertificates/relations/basis4122.json"
theorem reductionProof4122 : EqualModuloRelations reduction4122.relations reduction4122.input reduction4122.output := by lin_cert using reduction4122.terms
theorem substitutionProof4122 : IsMapEvaluation generatorImages reduction4122.relations [7,412] reduction4122.output := by lin_cert using reduction4122.terms
def image4123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4123 : InImage map_11_151 image4123 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4123 : Bundle := named_bundle% "RealMapCertificates/relations/basis4123.json"
theorem reductionProof4123 : EqualModuloRelations reduction4123.relations reduction4123.input reduction4123.output := by lin_cert using reduction4123.terms
theorem substitutionProof4123 : IsMapEvaluation generatorImages reduction4123.relations [0,2,523] reduction4123.output := by lin_cert using reduction4123.terms
def image4124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4124 : InImage map_11_151 image4124 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4124 : Bundle := named_bundle% "RealMapCertificates/relations/basis4124.json"
theorem reductionProof4124 : EqualModuloRelations reduction4124.relations reduction4124.input reduction4124.output := by lin_cert using reduction4124.terms
theorem substitutionProof4124 : IsMapEvaluation generatorImages reduction4124.relations [0,0,0,546] reduction4124.output := by lin_cert using reduction4124.terms
def map_11_152 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4211 : InImage map_11_152 image4211 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4211 : Bundle := named_bundle% "RealMapCertificates/relations/basis4211.json"
theorem reductionProof4211 : EqualModuloRelations reduction4211.relations reduction4211.input reduction4211.output := by lin_cert using reduction4211.terms
theorem substitutionProof4211 : IsMapEvaluation generatorImages reduction4211.relations [9,69,75] reduction4211.output := by lin_cert using reduction4211.terms
def image4212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4212 : InImage map_11_152 image4212 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4212 : Bundle := named_bundle% "RealMapCertificates/relations/basis4212.json"
theorem reductionProof4212 : EqualModuloRelations reduction4212.relations reduction4212.input reduction4212.output := by lin_cert using reduction4212.terms
theorem substitutionProof4212 : IsMapEvaluation generatorImages reduction4212.relations [2,544] reduction4212.output := by lin_cert using reduction4212.terms
def image4213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4213 : InImage map_11_152 image4213 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4213 : Bundle := named_bundle% "RealMapCertificates/relations/basis4213.json"
theorem reductionProof4213 : EqualModuloRelations reduction4213.relations reduction4213.input reduction4213.output := by lin_cert using reduction4213.terms
theorem substitutionProof4213 : IsMapEvaluation generatorImages reduction4213.relations [1,563] reduction4213.output := by lin_cert using reduction4213.terms
def image4214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4214 : InImage map_11_152 image4214 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4214 : Bundle := named_bundle% "RealMapCertificates/relations/basis4214.json"
theorem reductionProof4214 : EqualModuloRelations reduction4214.relations reduction4214.input reduction4214.output := by lin_cert using reduction4214.terms
theorem substitutionProof4214 : IsMapEvaluation generatorImages reduction4214.relations [0,7,414] reduction4214.output := by lin_cert using reduction4214.terms
def image4215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4215 : InImage map_11_152 image4215 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4215 : Bundle := named_bundle% "RealMapCertificates/relations/basis4215.json"
theorem reductionProof4215 : EqualModuloRelations reduction4215.relations reduction4215.input reduction4215.output := by lin_cert using reduction4215.terms
theorem substitutionProof4215 : IsMapEvaluation generatorImages reduction4215.relations [0,0,7,394] reduction4215.output := by lin_cert using reduction4215.terms
def map_11_153 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4309 : InImage map_11_153 image4309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4309 : Bundle := named_bundle% "RealMapCertificates/relations/basis4309.json"
theorem reductionProof4309 : EqualModuloRelations reduction4309.relations reduction4309.input reduction4309.output := by lin_cert using reduction4309.terms
theorem substitutionProof4309 : IsMapEvaluation generatorImages reduction4309.relations [583] reduction4309.output := by lin_cert using reduction4309.terms
def image4310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4310 : InImage map_11_153 image4310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4310 : Bundle := named_bundle% "RealMapCertificates/relations/basis4310.json"
theorem reductionProof4310 : EqualModuloRelations reduction4310.relations reduction4310.input reduction4310.output := by lin_cert using reduction4310.terms
theorem substitutionProof4310 : IsMapEvaluation generatorImages reduction4310.relations [1,571] reduction4310.output := by lin_cert using reduction4310.terms
def image4311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4311 : InImage map_11_153 image4311 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4311 : Bundle := named_bundle% "RealMapCertificates/relations/basis4311.json"
theorem reductionProof4311 : EqualModuloRelations reduction4311.relations reduction4311.input reduction4311.output := by lin_cert using reduction4311.terms
theorem substitutionProof4311 : IsMapEvaluation generatorImages reduction4311.relations [0,3,504] reduction4311.output := by lin_cert using reduction4311.terms
def image4312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4312 : InImage map_11_153 image4312 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4312 : Bundle := named_bundle% "RealMapCertificates/relations/basis4312.json"
theorem reductionProof4312 : EqualModuloRelations reduction4312.relations reduction4312.input reduction4312.output := by lin_cert using reduction4312.terms
theorem substitutionProof4312 : IsMapEvaluation generatorImages reduction4312.relations [0,0,7,415] reduction4312.output := by lin_cert using reduction4312.terms
end RealMapCertificates
