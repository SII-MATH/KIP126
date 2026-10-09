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
  | 23 => [[7,7]]
  | 34 => []
  | 42 => [[5,5,7]]
  | 45 => [[5,5,8]]
  | 68 => []
  | 69 => []
  | 75 => []
  | 76 => []
  | 163 => []
  | 311 => []
  | 314 => []
  | 321 => []
  | 324 => []
  | 332 => []
  | 333 => []
  | 352 => []
  | 366 => []
  | 367 => []
  | 373 => []
  | 376 => []
  | 414 => []
  | 415 => []
  | 419 => []
  | 443 => []
  | 445 => []
  | 446 => []
  | 450 => []
  | 478 => []
  | 479 => []
  | 504 => []
  | 521 => []
  | 523 => []
  | 524 => []
  | 544 => []
  | 546 => []
  | 571 => []
  | 577 => []
  | 591 => []
  | 615 => []
  | 616 => []
  | 631 => []
  | 632 => []
  | 633 => []
  | 658 => []
  | 659 => []
  | 674 => []
  | 675 => []
  | 676 => []
  | 696 => []
  | 712 => []
  | 713 => []
  | 719 => []
  | 720 => []
  | 734 => []
  | 735 => []
  | 743 => []
  | 744 => []
  | 745 => []
  | 746 => []
  | 755 => []
  | 756 => []
  | 757 => []
  | 770 => []
  | 771 => []
  | 772 => []
  | 773 => []
  | 789 => []
  | 790 => []
  | 791 => []
  | 792 => []
  | 793 => []
  | 802 => []
  | 818 => []
  | 827 => []
  | 828 => []
  | 846 => []
  | 884 => []
  | _ => []
def map_11_154 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4371 : InImage map_11_154 image4371 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4371 : Bundle := named_bundle% "RealMapCertificates/relations/basis4371.json"
theorem reductionProof4371 : EqualModuloRelations reduction4371.relations reduction4371.input reduction4371.output := by lin_cert using reduction4371.terms
theorem substitutionProof4371 : IsMapEvaluation generatorImages reduction4371.relations [591] reduction4371.output := by lin_cert using reduction4371.terms
def image4372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4372 : InImage map_11_154 image4372 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4372 : Bundle := named_bundle% "RealMapCertificates/relations/basis4372.json"
theorem reductionProof4372 : EqualModuloRelations reduction4372.relations reduction4372.input reduction4372.output := by lin_cert using reduction4372.terms
theorem substitutionProof4372 : IsMapEvaluation generatorImages reduction4372.relations [3,521] reduction4372.output := by lin_cert using reduction4372.terms
def image4373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4373 : InImage map_11_154 image4373 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4373 : Bundle := named_bundle% "RealMapCertificates/relations/basis4373.json"
theorem reductionProof4373 : EqualModuloRelations reduction4373.relations reduction4373.input reduction4373.output := by lin_cert using reduction4373.terms
theorem substitutionProof4373 : IsMapEvaluation generatorImages reduction4373.relations [1,3,504] reduction4373.output := by lin_cert using reduction4373.terms
def map_11_155 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4458 : InImage map_11_155 image4458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4458 : Bundle := named_bundle% "RealMapCertificates/relations/basis4458.json"
theorem reductionProof4458 : EqualModuloRelations reduction4458.relations reduction4458.input reduction4458.output := by lin_cert using reduction4458.terms
theorem substitutionProof4458 : IsMapEvaluation generatorImages reduction4458.relations [13,69,75] reduction4458.output := by lin_cert using reduction4458.terms
def image4459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4459 : InImage map_11_155 image4459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4459 : Bundle := named_bundle% "RealMapCertificates/relations/basis4459.json"
theorem reductionProof4459 : EqualModuloRelations reduction4459.relations reduction4459.input reduction4459.output := by lin_cert using reduction4459.terms
theorem substitutionProof4459 : IsMapEvaluation generatorImages reduction4459.relations [7,450] reduction4459.output := by lin_cert using reduction4459.terms
def image4460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4460 : InImage map_11_155 image4460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4460 : Bundle := named_bundle% "RealMapCertificates/relations/basis4460.json"
theorem reductionProof4460 : EqualModuloRelations reduction4460.relations reduction4460.input reduction4460.output := by lin_cert using reduction4460.terms
theorem substitutionProof4460 : IsMapEvaluation generatorImages reduction4460.relations [0,3,523] reduction4460.output := by lin_cert using reduction4460.terms
def image4461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4461 : InImage map_11_155 image4461 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4461 : Bundle := named_bundle% "RealMapCertificates/relations/basis4461.json"
theorem reductionProof4461 : EqualModuloRelations reduction4461.relations reduction4461.input reduction4461.output := by lin_cert using reduction4461.terms
theorem substitutionProof4461 : IsMapEvaluation generatorImages reduction4461.relations [0,0,0,577] reduction4461.output := by lin_cert using reduction4461.terms
def map_11_156 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4570 : InImage map_11_156 image4570 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4570 : Bundle := named_bundle% "RealMapCertificates/relations/basis4570.json"
theorem reductionProof4570 : EqualModuloRelations reduction4570.relations reduction4570.input reduction4570.output := by lin_cert using reduction4570.terms
theorem substitutionProof4570 : IsMapEvaluation generatorImages reduction4570.relations [616] reduction4570.output := by lin_cert using reduction4570.terms
def image4571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4571 : InImage map_11_156 image4571 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4571 : Bundle := named_bundle% "RealMapCertificates/relations/basis4571.json"
theorem reductionProof4571 : EqualModuloRelations reduction4571.relations reduction4571.input reduction4571.output := by lin_cert using reduction4571.terms
theorem substitutionProof4571 : IsMapEvaluation generatorImages reduction4571.relations [615] reduction4571.output := by lin_cert using reduction4571.terms
def image4572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4572 : InImage map_11_156 image4572 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4572 : Bundle := named_bundle% "RealMapCertificates/relations/basis4572.json"
theorem reductionProof4572 : EqualModuloRelations reduction4572.relations reduction4572.input reduction4572.output := by lin_cert using reduction4572.terms
theorem substitutionProof4572 : IsMapEvaluation generatorImages reduction4572.relations [3,544] reduction4572.output := by lin_cert using reduction4572.terms
def image4573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4573 : InImage map_11_156 image4573 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4573 : Bundle := named_bundle% "RealMapCertificates/relations/basis4573.json"
theorem reductionProof4573 : EqualModuloRelations reduction4573.relations reduction4573.input reduction4573.output := by lin_cert using reduction4573.terms
theorem substitutionProof4573 : IsMapEvaluation generatorImages reduction4573.relations [1,14,324] reduction4573.output := by lin_cert using reduction4573.terms
def image4574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4574 : InImage map_11_156 image4574 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4574 : Bundle := named_bundle% "RealMapCertificates/relations/basis4574.json"
theorem reductionProof4574 : EqualModuloRelations reduction4574.relations reduction4574.input reduction4574.output := by lin_cert using reduction4574.terms
theorem substitutionProof4574 : IsMapEvaluation generatorImages reduction4574.relations [0,0,3,524] reduction4574.output := by lin_cert using reduction4574.terms
def map_11_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4648 : InImage map_11_157 image4648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4648 : Bundle := named_bundle% "RealMapCertificates/relations/basis4648.json"
theorem reductionProof4648 : EqualModuloRelations reduction4648.relations reduction4648.input reduction4648.output := by lin_cert using reduction4648.terms
theorem substitutionProof4648 : IsMapEvaluation generatorImages reduction4648.relations [7,478] reduction4648.output := by lin_cert using reduction4648.terms
def image4649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4649 : InImage map_11_157 image4649 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4649 : Bundle := named_bundle% "RealMapCertificates/relations/basis4649.json"
theorem reductionProof4649 : EqualModuloRelations reduction4649.relations reduction4649.input reduction4649.output := by lin_cert using reduction4649.terms
theorem substitutionProof4649 : IsMapEvaluation generatorImages reduction4649.relations [1,13,69,76] reduction4649.output := by lin_cert using reduction4649.terms
def image4650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4650 : InImage map_11_157 image4650 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4650 : Bundle := named_bundle% "RealMapCertificates/relations/basis4650.json"
theorem reductionProof4650 : EqualModuloRelations reduction4650.relations reduction4650.input reduction4650.output := by lin_cert using reduction4650.terms
theorem substitutionProof4650 : IsMapEvaluation generatorImages reduction4650.relations [0,15,324] reduction4650.output := by lin_cert using reduction4650.terms
def map_11_158 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4730 : InImage map_11_158 image4730 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4730 : Bundle := named_bundle% "RealMapCertificates/relations/basis4730.json"
theorem reductionProof4730 : EqualModuloRelations reduction4730.relations reduction4730.input reduction4730.output := by lin_cert using reduction4730.terms
theorem substitutionProof4730 : IsMapEvaluation generatorImages reduction4730.relations [631] reduction4730.output := by lin_cert using reduction4730.terms
def map_11_159 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4830 : InImage map_11_159 image4830 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4830 : Bundle := named_bundle% "RealMapCertificates/relations/basis4830.json"
theorem reductionProof4830 : EqualModuloRelations reduction4830.relations reduction4830.input reduction4830.output := by lin_cert using reduction4830.terms
theorem substitutionProof4830 : IsMapEvaluation generatorImages reduction4830.relations [18,311] reduction4830.output := by lin_cert using reduction4830.terms
def image4831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4831 : InImage map_11_159 image4831 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4831 : Bundle := named_bundle% "RealMapCertificates/relations/basis4831.json"
theorem reductionProof4831 : EqualModuloRelations reduction4831.relations reduction4831.input reduction4831.output := by lin_cert using reduction4831.terms
theorem substitutionProof4831 : IsMapEvaluation generatorImages reduction4831.relations [7,7,314] reduction4831.output := by lin_cert using reduction4831.terms
def image4832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4832 : InImage map_11_159 image4832 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4832 : Bundle := named_bundle% "RealMapCertificates/relations/basis4832.json"
theorem reductionProof4832 : EqualModuloRelations reduction4832.relations reduction4832.input reduction4832.output := by lin_cert using reduction4832.terms
theorem substitutionProof4832 : IsMapEvaluation generatorImages reduction4832.relations [1,7,479] reduction4832.output := by lin_cert using reduction4832.terms
def image4833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4833 : InImage map_11_159 image4833 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4833 : Bundle := named_bundle% "RealMapCertificates/relations/basis4833.json"
theorem reductionProof4833 : EqualModuloRelations reduction4833.relations reduction4833.input reduction4833.output := by lin_cert using reduction4833.terms
theorem substitutionProof4833 : IsMapEvaluation generatorImages reduction4833.relations [0,16,69,69] reduction4833.output := by lin_cert using reduction4833.terms
def map_11_160 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image4901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4901 : InImage map_11_160 image4901 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction4901 : Bundle := named_bundle% "RealMapCertificates/relations/basis4901.json"
theorem reductionProof4901 : EqualModuloRelations reduction4901.relations reduction4901.input reduction4901.output := by lin_cert using reduction4901.terms
theorem substitutionProof4901 : IsMapEvaluation generatorImages reduction4901.relations [18,321] reduction4901.output := by lin_cert using reduction4901.terms
def image4902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4902 : InImage map_11_160 image4902 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction4902 : Bundle := named_bundle% "RealMapCertificates/relations/basis4902.json"
theorem reductionProof4902 : EqualModuloRelations reduction4902.relations reduction4902.input reduction4902.output := by lin_cert using reduction4902.terms
theorem substitutionProof4902 : IsMapEvaluation generatorImages reduction4902.relations [1,632] reduction4902.output := by lin_cert using reduction4902.terms
def image4903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4903 : InImage map_11_160 image4903 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction4903 : Bundle := named_bundle% "RealMapCertificates/relations/basis4903.json"
theorem reductionProof4903 : EqualModuloRelations reduction4903.relations reduction4903.input reduction4903.output := by lin_cert using reduction4903.terms
theorem substitutionProof4903 : IsMapEvaluation generatorImages reduction4903.relations [1,16,69,69] reduction4903.output := by lin_cert using reduction4903.terms
def image4904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4904 : InImage map_11_160 image4904 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction4904 : Bundle := named_bundle% "RealMapCertificates/relations/basis4904.json"
theorem reductionProof4904 : EqualModuloRelations reduction4904.relations reduction4904.input reduction4904.output := by lin_cert using reduction4904.terms
theorem substitutionProof4904 : IsMapEvaluation generatorImages reduction4904.relations [0,18,314] reduction4904.output := by lin_cert using reduction4904.terms
def image4905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4905 : InImage map_11_160 image4905 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction4905 : Bundle := named_bundle% "RealMapCertificates/relations/basis4905.json"
theorem reductionProof4905 : EqualModuloRelations reduction4905.relations reduction4905.input reduction4905.output := by lin_cert using reduction4905.terms
theorem substitutionProof4905 : IsMapEvaluation generatorImages reduction4905.relations [0,0,17,69,69] reduction4905.output := by lin_cert using reduction4905.terms
def image4906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4906 : InImage map_11_160 image4906 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction4906 : Bundle := named_bundle% "RealMapCertificates/relations/basis4906.json"
theorem reductionProof4906 : EqualModuloRelations reduction4906.relations reduction4906.input reduction4906.output := by lin_cert using reduction4906.terms
theorem substitutionProof4906 : IsMapEvaluation generatorImages reduction4906.relations [0,0,16,324] reduction4906.output := by lin_cert using reduction4906.terms
def map_11_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4991 : InImage map_11_161 image4991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4991 : Bundle := named_bundle% "RealMapCertificates/relations/basis4991.json"
theorem reductionProof4991 : EqualModuloRelations reduction4991.relations reduction4991.input reduction4991.output := by lin_cert using reduction4991.terms
theorem substitutionProof4991 : IsMapEvaluation generatorImages reduction4991.relations [18,332] reduction4991.output := by lin_cert using reduction4991.terms
def image4992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4992 : InImage map_11_161 image4992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4992 : Bundle := named_bundle% "RealMapCertificates/relations/basis4992.json"
theorem reductionProof4992 : EqualModuloRelations reduction4992.relations reduction4992.input reduction4992.output := by lin_cert using reduction4992.terms
theorem substitutionProof4992 : IsMapEvaluation generatorImages reduction4992.relations [0,68,163] reduction4992.output := by lin_cert using reduction4992.terms
def image4993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4993 : InImage map_11_161 image4993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4993 : Bundle := named_bundle% "RealMapCertificates/relations/basis4993.json"
theorem reductionProof4993 : EqualModuloRelations reduction4993.relations reduction4993.input reduction4993.output := by lin_cert using reduction4993.terms
theorem substitutionProof4993 : IsMapEvaluation generatorImages reduction4993.relations [0,0,0,17,324] reduction4993.output := by lin_cert using reduction4993.terms
def map_11_162 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5111 : InImage map_11_162 image5111 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5111 : Bundle := named_bundle% "RealMapCertificates/relations/basis5111.json"
theorem reductionProof5111 : EqualModuloRelations reduction5111.relations reduction5111.input reduction5111.output := by lin_cert using reduction5111.terms
theorem substitutionProof5111 : IsMapEvaluation generatorImages reduction5111.relations [675] reduction5111.output := by lin_cert using reduction5111.terms
def image5112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5112 : InImage map_11_162 image5112 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5112 : Bundle := named_bundle% "RealMapCertificates/relations/basis5112.json"
theorem reductionProof5112 : EqualModuloRelations reduction5112.relations reduction5112.input reduction5112.output := by lin_cert using reduction5112.terms
theorem substitutionProof5112 : IsMapEvaluation generatorImages reduction5112.relations [674] reduction5112.output := by lin_cert using reduction5112.terms
def image5113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5113 : InImage map_11_162 image5113 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5113 : Bundle := named_bundle% "RealMapCertificates/relations/basis5113.json"
theorem reductionProof5113 : EqualModuloRelations reduction5113.relations reduction5113.input reduction5113.output := by lin_cert using reduction5113.terms
theorem substitutionProof5113 : IsMapEvaluation generatorImages reduction5113.relations [1,1,16,324] reduction5113.output := by lin_cert using reduction5113.terms
def image5114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5114 : InImage map_11_162 image5114 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5114 : Bundle := named_bundle% "RealMapCertificates/relations/basis5114.json"
theorem reductionProof5114 : EqualModuloRelations reduction5114.relations reduction5114.input reduction5114.output := by lin_cert using reduction5114.terms
theorem substitutionProof5114 : IsMapEvaluation generatorImages reduction5114.relations [0,658] reduction5114.output := by lin_cert using reduction5114.terms
def image5115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5115 : InImage map_11_162 image5115 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5115 : Bundle := named_bundle% "RealMapCertificates/relations/basis5115.json"
theorem reductionProof5115 : EqualModuloRelations reduction5115.relations reduction5115.input reduction5115.output := by lin_cert using reduction5115.terms
theorem substitutionProof5115 : IsMapEvaluation generatorImages reduction5115.relations [0,19,69,69] reduction5115.output := by lin_cert using reduction5115.terms
def image5116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5116 : InImage map_11_162 image5116 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5116 : Bundle := named_bundle% "RealMapCertificates/relations/basis5116.json"
theorem reductionProof5116 : EqualModuloRelations reduction5116.relations reduction5116.input reduction5116.output := by lin_cert using reduction5116.terms
theorem substitutionProof5116 : IsMapEvaluation generatorImages reduction5116.relations [0,18,333] reduction5116.output := by lin_cert using reduction5116.terms
def map_11_163 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5192 : InImage map_11_163 image5192 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5192 : Bundle := named_bundle% "RealMapCertificates/relations/basis5192.json"
theorem reductionProof5192 : EqualModuloRelations reduction5192.relations reduction5192.input reduction5192.output := by lin_cert using reduction5192.terms
theorem substitutionProof5192 : IsMapEvaluation generatorImages reduction5192.relations [0,0,659] reduction5192.output := by lin_cert using reduction5192.terms
def image5193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5193 : InImage map_11_163 image5193 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5193 : Bundle := named_bundle% "RealMapCertificates/relations/basis5193.json"
theorem reductionProof5193 : EqualModuloRelations reduction5193.relations reduction5193.input reduction5193.output := by lin_cert using reduction5193.terms
theorem substitutionProof5193 : IsMapEvaluation generatorImages reduction5193.relations [0,0,20,69,69] reduction5193.output := by lin_cert using reduction5193.terms
def image5194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5194 : InImage map_11_163 image5194 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5194 : Bundle := named_bundle% "RealMapCertificates/relations/basis5194.json"
theorem reductionProof5194 : EqualModuloRelations reduction5194.relations reduction5194.input reduction5194.output := by lin_cert using reduction5194.terms
theorem substitutionProof5194 : IsMapEvaluation generatorImages reduction5194.relations [0,0,19,324] reduction5194.output := by lin_cert using reduction5194.terms
def map_11_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5284 : InImage map_11_164 image5284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5284 : Bundle := named_bundle% "RealMapCertificates/relations/basis5284.json"
theorem reductionProof5284 : EqualModuloRelations reduction5284.relations reduction5284.input reduction5284.output := by lin_cert using reduction5284.terms
theorem substitutionProof5284 : IsMapEvaluation generatorImages reduction5284.relations [0,7,7,352] reduction5284.output := by lin_cert using reduction5284.terms
def map_11_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5408 : InImage map_11_165 image5408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5408 : Bundle := named_bundle% "RealMapCertificates/relations/basis5408.json"
theorem reductionProof5408 : EqualModuloRelations reduction5408.relations reduction5408.input reduction5408.output := by lin_cert using reduction5408.terms
theorem substitutionProof5408 : IsMapEvaluation generatorImages reduction5408.relations [713] reduction5408.output := by lin_cert using reduction5408.terms
def image5409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5409 : InImage map_11_165 image5409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5409 : Bundle := named_bundle% "RealMapCertificates/relations/basis5409.json"
theorem reductionProof5409 : EqualModuloRelations reduction5409.relations reduction5409.input reduction5409.output := by lin_cert using reduction5409.terms
theorem substitutionProof5409 : IsMapEvaluation generatorImages reduction5409.relations [712] reduction5409.output := by lin_cert using reduction5409.terms
def image5410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5410 : InImage map_11_165 image5410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5410 : Bundle := named_bundle% "RealMapCertificates/relations/basis5410.json"
theorem reductionProof5410 : EqualModuloRelations reduction5410.relations reduction5410.input reduction5410.output := by lin_cert using reduction5410.terms
theorem substitutionProof5410 : IsMapEvaluation generatorImages reduction5410.relations [0,18,366] reduction5410.output := by lin_cert using reduction5410.terms
def image5411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5411 : InImage map_11_165 image5411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5411 : Bundle := named_bundle% "RealMapCertificates/relations/basis5411.json"
theorem reductionProof5411 : EqualModuloRelations reduction5411.relations reduction5411.input reduction5411.output := by lin_cert using reduction5411.terms
theorem substitutionProof5411 : IsMapEvaluation generatorImages reduction5411.relations [0,0,0,676] reduction5411.output := by lin_cert using reduction5411.terms
def map_11_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5507 : InImage map_11_166 image5507 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5507 : Bundle := named_bundle% "RealMapCertificates/relations/basis5507.json"
theorem reductionProof5507 : EqualModuloRelations reduction5507.relations reduction5507.input reduction5507.output := by lin_cert using reduction5507.terms
theorem substitutionProof5507 : IsMapEvaluation generatorImages reduction5507.relations [719] reduction5507.output := by lin_cert using reduction5507.terms
def image5508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5508 : InImage map_11_166 image5508 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5508 : Bundle := named_bundle% "RealMapCertificates/relations/basis5508.json"
theorem reductionProof5508 : EqualModuloRelations reduction5508.relations reduction5508.input reduction5508.output := by lin_cert using reduction5508.terms
theorem substitutionProof5508 : IsMapEvaluation generatorImages reduction5508.relations [0,0,18,367] reduction5508.output := by lin_cert using reduction5508.terms
def image5509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5509 : InImage map_11_166 image5509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5509 : Bundle := named_bundle% "RealMapCertificates/relations/basis5509.json"
theorem reductionProof5509 : EqualModuloRelations reduction5509.relations reduction5509.input reduction5509.output := by lin_cert using reduction5509.terms
theorem substitutionProof5509 : IsMapEvaluation generatorImages reduction5509.relations [0,0,8,8,324] reduction5509.output := by lin_cert using reduction5509.terms
def image5510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5510 : InImage map_11_166 image5510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5510 : Bundle := named_bundle% "RealMapCertificates/relations/basis5510.json"
theorem reductionProof5510 : EqualModuloRelations reduction5510.relations reduction5510.input reduction5510.output := by lin_cert using reduction5510.terms
theorem substitutionProof5510 : IsMapEvaluation generatorImages reduction5510.relations [0,0,7,546] reduction5510.output := by lin_cert using reduction5510.terms
def map_11_167 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5608 : InImage map_11_167 image5608 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5608 : Bundle := named_bundle% "RealMapCertificates/relations/basis5608.json"
theorem reductionProof5608 : EqualModuloRelations reduction5608.relations reduction5608.input reduction5608.output := by lin_cert using reduction5608.terms
theorem substitutionProof5608 : IsMapEvaluation generatorImages reduction5608.relations [735] reduction5608.output := by lin_cert using reduction5608.terms
def image5609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5609 : InImage map_11_167 image5609 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5609 : Bundle := named_bundle% "RealMapCertificates/relations/basis5609.json"
theorem reductionProof5609 : EqualModuloRelations reduction5609.relations reduction5609.input reduction5609.output := by lin_cert using reduction5609.terms
theorem substitutionProof5609 : IsMapEvaluation generatorImages reduction5609.relations [734] reduction5609.output := by lin_cert using reduction5609.terms
def image5610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5610 : InImage map_11_167 image5610 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5610 : Bundle := named_bundle% "RealMapCertificates/relations/basis5610.json"
theorem reductionProof5610 : EqualModuloRelations reduction5610.relations reduction5610.input reduction5610.output := by lin_cert using reduction5610.terms
theorem substitutionProof5610 : IsMapEvaluation generatorImages reduction5610.relations [7,571] reduction5610.output := by lin_cert using reduction5610.terms
def image5611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5611 : InImage map_11_167 image5611 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5611 : Bundle := named_bundle% "RealMapCertificates/relations/basis5611.json"
theorem reductionProof5611 : EqualModuloRelations reduction5611.relations reduction5611.input reduction5611.output := by lin_cert using reduction5611.terms
theorem substitutionProof5611 : IsMapEvaluation generatorImages reduction5611.relations [0,0,0,696] reduction5611.output := by lin_cert using reduction5611.terms
def map_11_168 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5739 : InImage map_11_168 image5739 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5739 : Bundle := named_bundle% "RealMapCertificates/relations/basis5739.json"
theorem reductionProof5739 : EqualModuloRelations reduction5739.relations reduction5739.input reduction5739.output := by lin_cert using reduction5739.terms
theorem substitutionProof5739 : IsMapEvaluation generatorImages reduction5739.relations [745] reduction5739.output := by lin_cert using reduction5739.terms
def image5740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5740 : InImage map_11_168 image5740 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5740 : Bundle := named_bundle% "RealMapCertificates/relations/basis5740.json"
theorem reductionProof5740 : EqualModuloRelations reduction5740.relations reduction5740.input reduction5740.output := by lin_cert using reduction5740.terms
theorem substitutionProof5740 : IsMapEvaluation generatorImages reduction5740.relations [744] reduction5740.output := by lin_cert using reduction5740.terms
def image5741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5741 : InImage map_11_168 image5741 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5741 : Bundle := named_bundle% "RealMapCertificates/relations/basis5741.json"
theorem reductionProof5741 : EqualModuloRelations reduction5741.relations reduction5741.input reduction5741.output := by lin_cert using reduction5741.terms
theorem substitutionProof5741 : IsMapEvaluation generatorImages reduction5741.relations [743] reduction5741.output := by lin_cert using reduction5741.terms
def image5742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5742 : InImage map_11_168 image5742 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5742 : Bundle := named_bundle% "RealMapCertificates/relations/basis5742.json"
theorem reductionProof5742 : EqualModuloRelations reduction5742.relations reduction5742.input reduction5742.output := by lin_cert using reduction5742.terms
theorem substitutionProof5742 : IsMapEvaluation generatorImages reduction5742.relations [18,419] reduction5742.output := by lin_cert using reduction5742.terms
def image5743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5743 : InImage map_11_168 image5743 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5743 : Bundle := named_bundle% "RealMapCertificates/relations/basis5743.json"
theorem reductionProof5743 : EqualModuloRelations reduction5743.relations reduction5743.input reduction5743.output := by lin_cert using reduction5743.terms
theorem substitutionProof5743 : IsMapEvaluation generatorImages reduction5743.relations [0,18,414] reduction5743.output := by lin_cert using reduction5743.terms
def image5744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5744 : InImage map_11_168 image5744 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5744 : Bundle := named_bundle% "RealMapCertificates/relations/basis5744.json"
theorem reductionProof5744 : EqualModuloRelations reduction5744.relations reduction5744.input reduction5744.output := by lin_cert using reduction5744.terms
theorem substitutionProof5744 : IsMapEvaluation generatorImages reduction5744.relations [0,0,0,0,23,324] reduction5744.output := by lin_cert using reduction5744.terms
def map_11_169 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image5835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5835 : InImage map_11_169 image5835 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction5835 : Bundle := named_bundle% "RealMapCertificates/relations/basis5835.json"
theorem reductionProof5835 : EqualModuloRelations reduction5835.relations reduction5835.input reduction5835.output := by lin_cert using reduction5835.terms
theorem substitutionProof5835 : IsMapEvaluation generatorImages reduction5835.relations [755] reduction5835.output := by lin_cert using reduction5835.terms
def image5836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5836 : InImage map_11_169 image5836 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction5836 : Bundle := named_bundle% "RealMapCertificates/relations/basis5836.json"
theorem reductionProof5836 : EqualModuloRelations reduction5836.relations reduction5836.input reduction5836.output := by lin_cert using reduction5836.terms
theorem substitutionProof5836 : IsMapEvaluation generatorImages reduction5836.relations [3,18,333] reduction5836.output := by lin_cert using reduction5836.terms
def image5837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5837 : InImage map_11_169 image5837 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction5837 : Bundle := named_bundle% "RealMapCertificates/relations/basis5837.json"
theorem reductionProof5837 : EqualModuloRelations reduction5837.relations reduction5837.input reduction5837.output := by lin_cert using reduction5837.terms
theorem substitutionProof5837 : IsMapEvaluation generatorImages reduction5837.relations [2,18,373] reduction5837.output := by lin_cert using reduction5837.terms
def image5838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5838 : InImage map_11_169 image5838 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction5838 : Bundle := named_bundle% "RealMapCertificates/relations/basis5838.json"
theorem reductionProof5838 : EqualModuloRelations reduction5838.relations reduction5838.input reduction5838.output := by lin_cert using reduction5838.terms
theorem substitutionProof5838 : IsMapEvaluation generatorImages reduction5838.relations [0,746] reduction5838.output := by lin_cert using reduction5838.terms
def image5839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5839 : InImage map_11_169 image5839 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction5839 : Bundle := named_bundle% "RealMapCertificates/relations/basis5839.json"
theorem reductionProof5839 : EqualModuloRelations reduction5839.relations reduction5839.input reduction5839.output := by lin_cert using reduction5839.terms
theorem substitutionProof5839 : IsMapEvaluation generatorImages reduction5839.relations [0,0,18,415] reduction5839.output := by lin_cert using reduction5839.terms
def image5840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5840 : InImage map_11_169 image5840 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction5840 : Bundle := named_bundle% "RealMapCertificates/relations/basis5840.json"
theorem reductionProof5840 : EqualModuloRelations reduction5840.relations reduction5840.input reduction5840.output := by lin_cert using reduction5840.terms
theorem substitutionProof5840 : IsMapEvaluation generatorImages reduction5840.relations [0,0,8,9,324] reduction5840.output := by lin_cert using reduction5840.terms
def image5841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5841 : InImage map_11_169 image5841 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction5841 : Bundle := named_bundle% "RealMapCertificates/relations/basis5841.json"
theorem reductionProof5841 : EqualModuloRelations reduction5841.relations reduction5841.input reduction5841.output := by lin_cert using reduction5841.terms
theorem substitutionProof5841 : IsMapEvaluation generatorImages reduction5841.relations [0,0,0,720] reduction5841.output := by lin_cert using reduction5841.terms
def image5842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5842 : InImage map_11_169 image5842 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction5842 : Bundle := named_bundle% "RealMapCertificates/relations/basis5842.json"
theorem reductionProof5842 : EqualModuloRelations reduction5842.relations reduction5842.input reduction5842.output := by lin_cert using reduction5842.terms
theorem substitutionProof5842 : IsMapEvaluation generatorImages reduction5842.relations [0,0,0,0,0,0,0,0,0,18,324] reduction5842.output := by lin_cert using reduction5842.terms
def map_11_170 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5941 : InImage map_11_170 image5941 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5941 : Bundle := named_bundle% "RealMapCertificates/relations/basis5941.json"
theorem reductionProof5941 : EqualModuloRelations reduction5941.relations reduction5941.input reduction5941.output := by lin_cert using reduction5941.terms
theorem substitutionProof5941 : IsMapEvaluation generatorImages reduction5941.relations [770] reduction5941.output := by lin_cert using reduction5941.terms
def image5942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5942 : InImage map_11_170 image5942 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5942 : Bundle := named_bundle% "RealMapCertificates/relations/basis5942.json"
theorem reductionProof5942 : EqualModuloRelations reduction5942.relations reduction5942.input reduction5942.output := by lin_cert using reduction5942.terms
theorem substitutionProof5942 : IsMapEvaluation generatorImages reduction5942.relations [0,757] reduction5942.output := by lin_cert using reduction5942.terms
def image5943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5943 : InImage map_11_170 image5943 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5943 : Bundle := named_bundle% "RealMapCertificates/relations/basis5943.json"
theorem reductionProof5943 : EqualModuloRelations reduction5943.relations reduction5943.input reduction5943.output := by lin_cert using reduction5943.terms
theorem substitutionProof5943 : IsMapEvaluation generatorImages reduction5943.relations [0,756] reduction5943.output := by lin_cert using reduction5943.terms
def image5944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5944 : InImage map_11_170 image5944 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5944 : Bundle := named_bundle% "RealMapCertificates/relations/basis5944.json"
theorem reductionProof5944 : EqualModuloRelations reduction5944.relations reduction5944.input reduction5944.output := by lin_cert using reduction5944.terms
theorem substitutionProof5944 : IsMapEvaluation generatorImages reduction5944.relations [0,3,659] reduction5944.output := by lin_cert using reduction5944.terms
def map_11_171 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6088 : InImage map_11_171 image6088 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6088 : Bundle := named_bundle% "RealMapCertificates/relations/basis6088.json"
theorem reductionProof6088 : EqualModuloRelations reduction6088.relations reduction6088.input reduction6088.output := by lin_cert using reduction6088.terms
theorem substitutionProof6088 : IsMapEvaluation generatorImages reduction6088.relations [1,756] reduction6088.output := by lin_cert using reduction6088.terms
def image6089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6089 : InImage map_11_171 image6089 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6089 : Bundle := named_bundle% "RealMapCertificates/relations/basis6089.json"
theorem reductionProof6089 : EqualModuloRelations reduction6089.relations reduction6089.input reduction6089.output := by lin_cert using reduction6089.terms
theorem substitutionProof6089 : IsMapEvaluation generatorImages reduction6089.relations [0,772] reduction6089.output := by lin_cert using reduction6089.terms
def image6090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6090 : InImage map_11_171 image6090 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6090 : Bundle := named_bundle% "RealMapCertificates/relations/basis6090.json"
theorem reductionProof6090 : EqualModuloRelations reduction6090.relations reduction6090.input reduction6090.output := by lin_cert using reduction6090.terms
theorem substitutionProof6090 : IsMapEvaluation generatorImages reduction6090.relations [0,18,443] reduction6090.output := by lin_cert using reduction6090.terms
def map_11_172 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6166 : InImage map_11_172 image6166 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6166 : Bundle := named_bundle% "RealMapCertificates/relations/basis6166.json"
theorem reductionProof6166 : EqualModuloRelations reduction6166.relations reduction6166.input reduction6166.output := by lin_cert using reduction6166.terms
theorem substitutionProof6166 : IsMapEvaluation generatorImages reduction6166.relations [790] reduction6166.output := by lin_cert using reduction6166.terms
def image6167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6167 : InImage map_11_172 image6167 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6167 : Bundle := named_bundle% "RealMapCertificates/relations/basis6167.json"
theorem reductionProof6167 : EqualModuloRelations reduction6167.relations reduction6167.input reduction6167.output := by lin_cert using reduction6167.terms
theorem substitutionProof6167 : IsMapEvaluation generatorImages reduction6167.relations [789] reduction6167.output := by lin_cert using reduction6167.terms
def image6168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6168 : InImage map_11_172 image6168 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6168 : Bundle := named_bundle% "RealMapCertificates/relations/basis6168.json"
theorem reductionProof6168 : EqualModuloRelations reduction6168.relations reduction6168.input reduction6168.output := by lin_cert using reduction6168.terms
theorem substitutionProof6168 : IsMapEvaluation generatorImages reduction6168.relations [2,746] reduction6168.output := by lin_cert using reduction6168.terms
def image6169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6169 : InImage map_11_172 image6169 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6169 : Bundle := named_bundle% "RealMapCertificates/relations/basis6169.json"
theorem reductionProof6169 : EqualModuloRelations reduction6169.relations reduction6169.input reduction6169.output := by lin_cert using reduction6169.terms
theorem substitutionProof6169 : IsMapEvaluation generatorImages reduction6169.relations [0,0,18,445] reduction6169.output := by lin_cert using reduction6169.terms
def image6170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6170 : InImage map_11_172 image6170 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6170 : Bundle := named_bundle% "RealMapCertificates/relations/basis6170.json"
theorem reductionProof6170 : EqualModuloRelations reduction6170.relations reduction6170.input reduction6170.output := by lin_cert using reduction6170.terms
theorem substitutionProof6170 : IsMapEvaluation generatorImages reduction6170.relations [0,0,8,13,324] reduction6170.output := by lin_cert using reduction6170.terms
def map_11_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6275 : InImage map_11_173 image6275 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6275 : Bundle := named_bundle% "RealMapCertificates/relations/basis6275.json"
theorem reductionProof6275 : EqualModuloRelations reduction6275.relations reduction6275.input reduction6275.output := by lin_cert using reduction6275.terms
theorem substitutionProof6275 : IsMapEvaluation generatorImages reduction6275.relations [2,2,18,376] reduction6275.output := by lin_cert using reduction6275.terms
def image6276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6276 : InImage map_11_173 image6276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6276 : Bundle := named_bundle% "RealMapCertificates/relations/basis6276.json"
theorem reductionProof6276 : EqualModuloRelations reduction6276.relations reduction6276.input reduction6276.output := by lin_cert using reduction6276.terms
theorem substitutionProof6276 : IsMapEvaluation generatorImages reduction6276.relations [0,793] reduction6276.output := by lin_cert using reduction6276.terms
def image6277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6277 : InImage map_11_173 image6277 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6277 : Bundle := named_bundle% "RealMapCertificates/relations/basis6277.json"
theorem reductionProof6277 : EqualModuloRelations reduction6277.relations reduction6277.input reduction6277.output := by lin_cert using reduction6277.terms
theorem substitutionProof6277 : IsMapEvaluation generatorImages reduction6277.relations [0,791] reduction6277.output := by lin_cert using reduction6277.terms
def map_11_174 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6422 : InImage map_11_174 image6422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6422 : Bundle := named_bundle% "RealMapCertificates/relations/basis6422.json"
theorem reductionProof6422 : EqualModuloRelations reduction6422.relations reduction6422.input reduction6422.output := by lin_cert using reduction6422.terms
theorem substitutionProof6422 : IsMapEvaluation generatorImages reduction6422.relations [7,632] reduction6422.output := by lin_cert using reduction6422.terms
def image6423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6423 : InImage map_11_174 image6423 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6423 : Bundle := named_bundle% "RealMapCertificates/relations/basis6423.json"
theorem reductionProof6423 : EqualModuloRelations reduction6423.relations reduction6423.input reduction6423.output := by lin_cert using reduction6423.terms
theorem substitutionProof6423 : IsMapEvaluation generatorImages reduction6423.relations [2,773] reduction6423.output := by lin_cert using reduction6423.terms
def image6424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6424 : InImage map_11_174 image6424 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6424 : Bundle := named_bundle% "RealMapCertificates/relations/basis6424.json"
theorem reductionProof6424 : EqualModuloRelations reduction6424.relations reduction6424.input reduction6424.output := by lin_cert using reduction6424.terms
theorem substitutionProof6424 : IsMapEvaluation generatorImages reduction6424.relations [1,792] reduction6424.output := by lin_cert using reduction6424.terms
def image6425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6425 : InImage map_11_174 image6425 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6425 : Bundle := named_bundle% "RealMapCertificates/relations/basis6425.json"
theorem reductionProof6425 : EqualModuloRelations reduction6425.relations reduction6425.input reduction6425.output := by lin_cert using reduction6425.terms
theorem substitutionProof6425 : IsMapEvaluation generatorImages reduction6425.relations [0,18,479] reduction6425.output := by lin_cert using reduction6425.terms
def image6426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6426 : InImage map_11_174 image6426 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6426 : Bundle := named_bundle% "RealMapCertificates/relations/basis6426.json"
theorem reductionProof6426 : EqualModuloRelations reduction6426.relations reduction6426.input reduction6426.output := by lin_cert using reduction6426.terms
theorem substitutionProof6426 : IsMapEvaluation generatorImages reduction6426.relations [0,0,0,0,18,446] reduction6426.output := by lin_cert using reduction6426.terms
def map_11_175 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6521 : InImage map_11_175 image6521 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6521 : Bundle := named_bundle% "RealMapCertificates/relations/basis6521.json"
theorem reductionProof6521 : EqualModuloRelations reduction6521.relations reduction6521.input reduction6521.output := by lin_cert using reduction6521.terms
theorem substitutionProof6521 : IsMapEvaluation generatorImages reduction6521.relations [827] reduction6521.output := by lin_cert using reduction6521.terms
def image6522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6522 : InImage map_11_175 image6522 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6522 : Bundle := named_bundle% "RealMapCertificates/relations/basis6522.json"
theorem reductionProof6522 : EqualModuloRelations reduction6522.relations reduction6522.input reduction6522.output := by lin_cert using reduction6522.terms
theorem substitutionProof6522 : IsMapEvaluation generatorImages reduction6522.relations [0,818] reduction6522.output := by lin_cert using reduction6522.terms
def image6523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6523 : InImage map_11_175 image6523 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6523 : Bundle := named_bundle% "RealMapCertificates/relations/basis6523.json"
theorem reductionProof6523 : EqualModuloRelations reduction6523.relations reduction6523.input reduction6523.output := by lin_cert using reduction6523.terms
theorem substitutionProof6523 : IsMapEvaluation generatorImages reduction6523.relations [0,0,802] reduction6523.output := by lin_cert using reduction6523.terms
def image6524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6524 : InImage map_11_175 image6524 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6524 : Bundle := named_bundle% "RealMapCertificates/relations/basis6524.json"
theorem reductionProof6524 : EqualModuloRelations reduction6524.relations reduction6524.input reduction6524.output := by lin_cert using reduction6524.terms
theorem substitutionProof6524 : IsMapEvaluation generatorImages reduction6524.relations [0,0,0,0,0,34,324] reduction6524.output := by lin_cert using reduction6524.terms
def map_11_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6627 : InImage map_11_176 image6627 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6627 : Bundle := named_bundle% "RealMapCertificates/relations/basis6627.json"
theorem reductionProof6627 : EqualModuloRelations reduction6627.relations reduction6627.input reduction6627.output := by lin_cert using reduction6627.terms
theorem substitutionProof6627 : IsMapEvaluation generatorImages reduction6627.relations [7,68,163] reduction6627.output := by lin_cert using reduction6627.terms
def image6628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6628 : InImage map_11_176 image6628 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6628 : Bundle := named_bundle% "RealMapCertificates/relations/basis6628.json"
theorem reductionProof6628 : EqualModuloRelations reduction6628.relations reduction6628.input reduction6628.output := by lin_cert using reduction6628.terms
theorem substitutionProof6628 : IsMapEvaluation generatorImages reduction6628.relations [1,7,633] reduction6628.output := by lin_cert using reduction6628.terms
def image6629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6629 : InImage map_11_176 image6629 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6629 : Bundle := named_bundle% "RealMapCertificates/relations/basis6629.json"
theorem reductionProof6629 : EqualModuloRelations reduction6629.relations reduction6629.input reduction6629.output := by lin_cert using reduction6629.terms
theorem substitutionProof6629 : IsMapEvaluation generatorImages reduction6629.relations [0,828] reduction6629.output := by lin_cert using reduction6629.terms
def map_11_177 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6766 : InImage map_11_177 image6766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6766 : Bundle := named_bundle% "RealMapCertificates/relations/basis6766.json"
theorem reductionProof6766 : EqualModuloRelations reduction6766.relations reduction6766.input reduction6766.output := by lin_cert using reduction6766.terms
theorem substitutionProof6766 : IsMapEvaluation generatorImages reduction6766.relations [3,757] reduction6766.output := by lin_cert using reduction6766.terms
def image6767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6767 : InImage map_11_177 image6767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6767 : Bundle := named_bundle% "RealMapCertificates/relations/basis6767.json"
theorem reductionProof6767 : EqualModuloRelations reduction6767.relations reduction6767.input reduction6767.output := by lin_cert using reduction6767.terms
theorem substitutionProof6767 : IsMapEvaluation generatorImages reduction6767.relations [3,756] reduction6767.output := by lin_cert using reduction6767.terms
def image6768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6768 : InImage map_11_177 image6768 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6768 : Bundle := named_bundle% "RealMapCertificates/relations/basis6768.json"
theorem reductionProof6768 : EqualModuloRelations reduction6768.relations reduction6768.input reduction6768.output := by lin_cert using reduction6768.terms
theorem substitutionProof6768 : IsMapEvaluation generatorImages reduction6768.relations [0,846] reduction6768.output := by lin_cert using reduction6768.terms
def image6769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6769 : InImage map_11_177 image6769 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6769 : Bundle := named_bundle% "RealMapCertificates/relations/basis6769.json"
theorem reductionProof6769 : EqualModuloRelations reduction6769.relations reduction6769.input reduction6769.output := by lin_cert using reduction6769.terms
theorem substitutionProof6769 : IsMapEvaluation generatorImages reduction6769.relations [0,18,504] reduction6769.output := by lin_cert using reduction6769.terms
def map_11_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6866 : InImage map_11_178 image6866 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6866 : Bundle := named_bundle% "RealMapCertificates/relations/basis6866.json"
theorem reductionProof6866 : EqualModuloRelations reduction6866.relations reduction6866.input reduction6866.output := by lin_cert using reduction6866.terms
theorem substitutionProof6866 : IsMapEvaluation generatorImages reduction6866.relations [3,771] reduction6866.output := by lin_cert using reduction6866.terms
def image6867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6867 : InImage map_11_178 image6867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6867 : Bundle := named_bundle% "RealMapCertificates/relations/basis6867.json"
theorem reductionProof6867 : EqualModuloRelations reduction6867.relations reduction6867.input reduction6867.output := by lin_cert using reduction6867.terms
theorem substitutionProof6867 : IsMapEvaluation generatorImages reduction6867.relations [1,42,324] reduction6867.output := by lin_cert using reduction6867.terms
def image6868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6868 : InImage map_11_178 image6868 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6868 : Bundle := named_bundle% "RealMapCertificates/relations/basis6868.json"
theorem reductionProof6868 : EqualModuloRelations reduction6868.relations reduction6868.input reduction6868.output := by lin_cert using reduction6868.terms
theorem substitutionProof6868 : IsMapEvaluation generatorImages reduction6868.relations [0,2,802] reduction6868.output := by lin_cert using reduction6868.terms
def map_11_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6993 : InImage map_11_179 image6993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6993 : Bundle := named_bundle% "RealMapCertificates/relations/basis6993.json"
theorem reductionProof6993 : EqualModuloRelations reduction6993.relations reduction6993.input reduction6993.output := by lin_cert using reduction6993.terms
theorem substitutionProof6993 : IsMapEvaluation generatorImages reduction6993.relations [884] reduction6993.output := by lin_cert using reduction6993.terms
def image6994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6994 : InImage map_11_179 image6994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6994 : Bundle := named_bundle% "RealMapCertificates/relations/basis6994.json"
theorem reductionProof6994 : EqualModuloRelations reduction6994.relations reduction6994.input reduction6994.output := by lin_cert using reduction6994.terms
theorem substitutionProof6994 : IsMapEvaluation generatorImages reduction6994.relations [45,324] reduction6994.output := by lin_cert using reduction6994.terms
def image6995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6995 : InImage map_11_179 image6995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6995 : Bundle := named_bundle% "RealMapCertificates/relations/basis6995.json"
theorem reductionProof6995 : EqualModuloRelations reduction6995.relations reduction6995.input reduction6995.output := by lin_cert using reduction6995.terms
theorem substitutionProof6995 : IsMapEvaluation generatorImages reduction6995.relations [0,18,523] reduction6995.output := by lin_cert using reduction6995.terms
end RealMapCertificates
