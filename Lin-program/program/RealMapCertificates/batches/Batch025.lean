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
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 33 => []
  | 43 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 68 => []
  | 70 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 81 => []
  | 89 => []
  | 90 => []
  | 92 => []
  | 98 => []
  | 101 => []
  | 103 => []
  | 104 => []
  | 105 => []
  | 106 => []
  | 107 => []
  | 115 => []
  | 120 => []
  | 323 => []
  | 324 => []
  | 333 => []
  | 368 => []
  | 396 => []
  | 397 => []
  | 398 => []
  | 506 => []
  | 563 => []
  | 659 => []
  | 676 => []
  | 746 => []
  | 791 => []
  | 792 => []
  | 818 => []
  | 847 => []
  | 849 => []
  | 893 => []
  | 925 => []
  | 938 => []
  | 961 => []
  | 968 => []
  | 993 => []
  | 1027 => []
  | 1028 => []
  | 1058 => []
  | 1120 => []
  | 1137 => []
  | 1138 => []
  | 1162 => []
  | 1163 => []
  | 1178 => []
  | 1197 => []
  | 1198 => []
  | 1199 => []
  | 1200 => []
  | 1216 => []
  | 1217 => []
  | 1230 => []
  | 1231 => []
  | 1232 => []
  | 1233 => []
  | 1234 => []
  | 1252 => []
  | 1275 => []
  | 1276 => []
  | 1277 => []
  | 1278 => []
  | 1279 => []
  | 1280 => []
  | 1281 => []
  | 1283 => []
  | 1333 => []
  | 1345 => []
  | 1346 => []
  | 1357 => []
  | 1358 => []
  | 1379 => []
  | 1380 => []
  | 1414 => []
  | 1415 => []
  | 1416 => []
  | 1417 => []
  | 1418 => []
  | _ => []
def map_11_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7136 : InImage map_11_180 image7136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7136 : Bundle := named_bundle% "RealMapCertificates/relations/basis7136.json"
theorem reductionProof7136 : EqualModuloRelations reduction7136.relations reduction7136.input reduction7136.output := by lin_cert using reduction7136.terms
theorem substitutionProof7136 : IsMapEvaluation generatorImages reduction7136.relations [3,792] reduction7136.output := by lin_cert using reduction7136.terms
def image7137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7137 : InImage map_11_180 image7137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7137 : Bundle := named_bundle% "RealMapCertificates/relations/basis7137.json"
theorem reductionProof7137 : EqualModuloRelations reduction7137.relations reduction7137.input reduction7137.output := by lin_cert using reduction7137.terms
theorem substitutionProof7137 : IsMapEvaluation generatorImages reduction7137.relations [3,791] reduction7137.output := by lin_cert using reduction7137.terms
def image7138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7138 : InImage map_11_180 image7138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7138 : Bundle := named_bundle% "RealMapCertificates/relations/basis7138.json"
theorem reductionProof7138 : EqualModuloRelations reduction7138.relations reduction7138.input reduction7138.output := by lin_cert using reduction7138.terms
theorem substitutionProof7138 : IsMapEvaluation generatorImages reduction7138.relations [0,0,7,676] reduction7138.output := by lin_cert using reduction7138.terms
def map_11_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7232 : InImage map_11_181 image7232 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7232 : Bundle := named_bundle% "RealMapCertificates/relations/basis7232.json"
theorem reductionProof7232 : EqualModuloRelations reduction7232.relations reduction7232.input reduction7232.output := by lin_cert using reduction7232.terms
theorem substitutionProof7232 : IsMapEvaluation generatorImages reduction7232.relations [893] reduction7232.output := by lin_cert using reduction7232.terms
def image7233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7233 : InImage map_11_181 image7233 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7233 : Bundle := named_bundle% "RealMapCertificates/relations/basis7233.json"
theorem reductionProof7233 : EqualModuloRelations reduction7233.relations reduction7233.input reduction7233.output := by lin_cert using reduction7233.terms
theorem substitutionProof7233 : IsMapEvaluation generatorImages reduction7233.relations [0,0,0,0,0,18,506] reduction7233.output := by lin_cert using reduction7233.terms
def map_11_182 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7343 : InImage map_11_182 image7343 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7343 : Bundle := named_bundle% "RealMapCertificates/relations/basis7343.json"
theorem reductionProof7343 : EqualModuloRelations reduction7343.relations reduction7343.input reduction7343.output := by lin_cert using reduction7343.terms
theorem substitutionProof7343 : IsMapEvaluation generatorImages reduction7343.relations [43,397] reduction7343.output := by lin_cert using reduction7343.terms
def image7344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7344 : InImage map_11_182 image7344 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7344 : Bundle := named_bundle% "RealMapCertificates/relations/basis7344.json"
theorem reductionProof7344 : EqualModuloRelations reduction7344.relations reduction7344.input reduction7344.output := by lin_cert using reduction7344.terms
theorem substitutionProof7344 : IsMapEvaluation generatorImages reduction7344.relations [43,396] reduction7344.output := by lin_cert using reduction7344.terms
def image7345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7345 : InImage map_11_182 image7345 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7345 : Bundle := named_bundle% "RealMapCertificates/relations/basis7345.json"
theorem reductionProof7345 : EqualModuloRelations reduction7345.relations reduction7345.input reduction7345.output := by lin_cert using reduction7345.terms
theorem substitutionProof7345 : IsMapEvaluation generatorImages reduction7345.relations [18,563] reduction7345.output := by lin_cert using reduction7345.terms
def image7346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7346 : InImage map_11_182 image7346 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7346 : Bundle := named_bundle% "RealMapCertificates/relations/basis7346.json"
theorem reductionProof7346 : EqualModuloRelations reduction7346.relations reduction7346.input reduction7346.output := by lin_cert using reduction7346.terms
theorem substitutionProof7346 : IsMapEvaluation generatorImages reduction7346.relations [8,23,324] reduction7346.output := by lin_cert using reduction7346.terms
def image7347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7347 : InImage map_11_182 image7347 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7347 : Bundle := named_bundle% "RealMapCertificates/relations/basis7347.json"
theorem reductionProof7347 : EqualModuloRelations reduction7347.relations reduction7347.input reduction7347.output := by lin_cert using reduction7347.terms
theorem substitutionProof7347 : IsMapEvaluation generatorImages reduction7347.relations [3,818] reduction7347.output := by lin_cert using reduction7347.terms
def map_11_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7497 : InImage map_11_183 image7497 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7497 : Bundle := named_bundle% "RealMapCertificates/relations/basis7497.json"
theorem reductionProof7497 : EqualModuloRelations reduction7497.relations reduction7497.input reduction7497.output := by lin_cert using reduction7497.terms
theorem substitutionProof7497 : IsMapEvaluation generatorImages reduction7497.relations [0,43,398] reduction7497.output := by lin_cert using reduction7497.terms
def image7498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7498 : InImage map_11_183 image7498 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7498 : Bundle := named_bundle% "RealMapCertificates/relations/basis7498.json"
theorem reductionProof7498 : EqualModuloRelations reduction7498.relations reduction7498.input reduction7498.output := by lin_cert using reduction7498.terms
theorem substitutionProof7498 : IsMapEvaluation generatorImages reduction7498.relations [0,0,0,0,0,0,0,849] reduction7498.output := by lin_cert using reduction7498.terms
def map_11_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7597 : InImage map_11_184 image7597 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7597 : Bundle := named_bundle% "RealMapCertificates/relations/basis7597.json"
theorem reductionProof7597 : EqualModuloRelations reduction7597.relations reduction7597.input reduction7597.output := by lin_cert using reduction7597.terms
theorem substitutionProof7597 : IsMapEvaluation generatorImages reduction7597.relations [938] reduction7597.output := by lin_cert using reduction7597.terms
def image7598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7598 : InImage map_11_184 image7598 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7598 : Bundle := named_bundle% "RealMapCertificates/relations/basis7598.json"
theorem reductionProof7598 : EqualModuloRelations reduction7598.relations reduction7598.input reduction7598.output := by lin_cert using reduction7598.terms
theorem substitutionProof7598 : IsMapEvaluation generatorImages reduction7598.relations [7,746] reduction7598.output := by lin_cert using reduction7598.terms
def map_11_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7717 : InImage map_11_185 image7717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7717 : Bundle := named_bundle% "RealMapCertificates/relations/basis7717.json"
theorem reductionProof7717 : EqualModuloRelations reduction7717.relations reduction7717.input reduction7717.output := by lin_cert using reduction7717.terms
theorem substitutionProof7717 : IsMapEvaluation generatorImages reduction7717.relations [9,23,324] reduction7717.output := by lin_cert using reduction7717.terms
def image7718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7718 : InImage map_11_185 image7718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7718 : Bundle := named_bundle% "RealMapCertificates/relations/basis7718.json"
theorem reductionProof7718 : EqualModuloRelations reduction7718.relations reduction7718.input reduction7718.output := by lin_cert using reduction7718.terms
theorem substitutionProof7718 : IsMapEvaluation generatorImages reduction7718.relations [1,925] reduction7718.output := by lin_cert using reduction7718.terms
def image7719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7719 : InImage map_11_185 image7719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7719 : Bundle := named_bundle% "RealMapCertificates/relations/basis7719.json"
theorem reductionProof7719 : EqualModuloRelations reduction7719.relations reduction7719.input reduction7719.output := by lin_cert using reduction7719.terms
theorem substitutionProof7719 : IsMapEvaluation generatorImages reduction7719.relations [0,3,847] reduction7719.output := by lin_cert using reduction7719.terms
def map_11_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7858 : InImage map_11_186 image7858 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7858 : Bundle := named_bundle% "RealMapCertificates/relations/basis7858.json"
theorem reductionProof7858 : EqualModuloRelations reduction7858.relations reduction7858.input reduction7858.output := by lin_cert using reduction7858.terms
theorem substitutionProof7858 : IsMapEvaluation generatorImages reduction7858.relations [961] reduction7858.output := by lin_cert using reduction7858.terms
def image7859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7859 : InImage map_11_186 image7859 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7859 : Bundle := named_bundle% "RealMapCertificates/relations/basis7859.json"
theorem reductionProof7859 : EqualModuloRelations reduction7859.relations reduction7859.input reduction7859.output := by lin_cert using reduction7859.terms
theorem substitutionProof7859 : IsMapEvaluation generatorImages reduction7859.relations [2,43,398] reduction7859.output := by lin_cert using reduction7859.terms
def image7860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7860 : InImage map_11_186 image7860 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7860 : Bundle := named_bundle% "RealMapCertificates/relations/basis7860.json"
theorem reductionProof7860 : EqualModuloRelations reduction7860.relations reduction7860.input reduction7860.output := by lin_cert using reduction7860.terms
theorem substitutionProof7860 : IsMapEvaluation generatorImages reduction7860.relations [1,3,847] reduction7860.output := by lin_cert using reduction7860.terms
def map_11_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7941 : InImage map_11_187 image7941 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7941 : Bundle := named_bundle% "RealMapCertificates/relations/basis7941.json"
theorem reductionProof7941 : EqualModuloRelations reduction7941.relations reduction7941.input reduction7941.output := by lin_cert using reduction7941.terms
theorem substitutionProof7941 : IsMapEvaluation generatorImages reduction7941.relations [968] reduction7941.output := by lin_cert using reduction7941.terms
def map_11_188 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8066 : InImage map_11_188 image8066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8066 : Bundle := named_bundle% "RealMapCertificates/relations/basis8066.json"
theorem reductionProof8066 : EqualModuloRelations reduction8066.relations reduction8066.input reduction8066.output := by lin_cert using reduction8066.terms
theorem substitutionProof8066 : IsMapEvaluation generatorImages reduction8066.relations [993] reduction8066.output := by lin_cert using reduction8066.terms
def image8067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8067 : InImage map_11_188 image8067 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8067 : Bundle := named_bundle% "RealMapCertificates/relations/basis8067.json"
theorem reductionProof8067 : EqualModuloRelations reduction8067.relations reduction8067.input reduction8067.output := by lin_cert using reduction8067.terms
theorem substitutionProof8067 : IsMapEvaluation generatorImages reduction8067.relations [13,23,324] reduction8067.output := by lin_cert using reduction8067.terms
def image8068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8068 : InImage map_11_188 image8068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8068 : Bundle := named_bundle% "RealMapCertificates/relations/basis8068.json"
theorem reductionProof8068 : EqualModuloRelations reduction8068.relations reduction8068.input reduction8068.output := by lin_cert using reduction8068.terms
theorem substitutionProof8068 : IsMapEvaluation generatorImages reduction8068.relations [3,43,368] reduction8068.output := by lin_cert using reduction8068.terms
def map_11_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8321 : InImage map_11_190 image8321 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8321 : Bundle := named_bundle% "RealMapCertificates/relations/basis8321.json"
theorem reductionProof8321 : EqualModuloRelations reduction8321.relations reduction8321.input reduction8321.output := by lin_cert using reduction8321.terms
theorem substitutionProof8321 : IsMapEvaluation generatorImages reduction8321.relations [1027] reduction8321.output := by lin_cert using reduction8321.terms
def map_11_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8443 : InImage map_11_191 image8443 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8443 : Bundle := named_bundle% "RealMapCertificates/relations/basis8443.json"
theorem reductionProof8443 : EqualModuloRelations reduction8443.relations reduction8443.input reduction8443.output := by lin_cert using reduction8443.terms
theorem substitutionProof8443 : IsMapEvaluation generatorImages reduction8443.relations [64,324] reduction8443.output := by lin_cert using reduction8443.terms
def image8444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8444 : InImage map_11_191 image8444 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8444 : Bundle := named_bundle% "RealMapCertificates/relations/basis8444.json"
theorem reductionProof8444 : EqualModuloRelations reduction8444.relations reduction8444.input reduction8444.output := by lin_cert using reduction8444.terms
theorem substitutionProof8444 : IsMapEvaluation generatorImages reduction8444.relations [0,1028] reduction8444.output := by lin_cert using reduction8444.terms
def map_11_192 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8594 : InImage map_11_192 image8594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8594 : Bundle := named_bundle% "RealMapCertificates/relations/basis8594.json"
theorem reductionProof8594 : EqualModuloRelations reduction8594.relations reduction8594.input reduction8594.output := by lin_cert using reduction8594.terms
theorem substitutionProof8594 : IsMapEvaluation generatorImages reduction8594.relations [66,324] reduction8594.output := by lin_cert using reduction8594.terms
def image8595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8595 : InImage map_11_192 image8595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8595 : Bundle := named_bundle% "RealMapCertificates/relations/basis8595.json"
theorem reductionProof8595 : EqualModuloRelations reduction8595.relations reduction8595.input reduction8595.output := by lin_cert using reduction8595.terms
theorem substitutionProof8595 : IsMapEvaluation generatorImages reduction8595.relations [0,0,17,18,324] reduction8595.output := by lin_cert using reduction8595.terms
def map_11_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8690 : InImage map_11_193 image8690 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8690 : Bundle := named_bundle% "RealMapCertificates/relations/basis8690.json"
theorem reductionProof8690 : EqualModuloRelations reduction8690.relations reduction8690.input reduction8690.output := by lin_cert using reduction8690.terms
theorem substitutionProof8690 : IsMapEvaluation generatorImages reduction8690.relations [70,323] reduction8690.output := by lin_cert using reduction8690.terms
def image8691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8691 : InImage map_11_193 image8691 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8691 : Bundle := named_bundle% "RealMapCertificates/relations/basis8691.json"
theorem reductionProof8691 : EqualModuloRelations reduction8691.relations reduction8691.input reduction8691.output := by lin_cert using reduction8691.terms
theorem substitutionProof8691 : IsMapEvaluation generatorImages reduction8691.relations [18,18,333] reduction8691.output := by lin_cert using reduction8691.terms
def map_11_194 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8836 : InImage map_11_194 image8836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8836 : Bundle := named_bundle% "RealMapCertificates/relations/basis8836.json"
theorem reductionProof8836 : EqualModuloRelations reduction8836.relations reduction8836.input reduction8836.output := by lin_cert using reduction8836.terms
theorem substitutionProof8836 : IsMapEvaluation generatorImages reduction8836.relations [72,324] reduction8836.output := by lin_cert using reduction8836.terms
def image8837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8837 : InImage map_11_194 image8837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8837 : Bundle := named_bundle% "RealMapCertificates/relations/basis8837.json"
theorem reductionProof8837 : EqualModuloRelations reduction8837.relations reduction8837.input reduction8837.output := by lin_cert using reduction8837.terms
theorem substitutionProof8837 : IsMapEvaluation generatorImages reduction8837.relations [13,33,324] reduction8837.output := by lin_cert using reduction8837.terms
def image8838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8838 : InImage map_11_194 image8838 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8838 : Bundle := named_bundle% "RealMapCertificates/relations/basis8838.json"
theorem reductionProof8838 : EqualModuloRelations reduction8838.relations reduction8838.input reduction8838.output := by lin_cert using reduction8838.terms
theorem substitutionProof8838 : IsMapEvaluation generatorImages reduction8838.relations [0,18,659] reduction8838.output := by lin_cert using reduction8838.terms
def map_11_195 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8993 : InImage map_11_195 image8993 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8993 : Bundle := named_bundle% "RealMapCertificates/relations/basis8993.json"
theorem reductionProof8993 : EqualModuloRelations reduction8993.relations reduction8993.input reduction8993.output := by lin_cert using reduction8993.terms
theorem substitutionProof8993 : IsMapEvaluation generatorImages reduction8993.relations [0,0,18,20,324] reduction8993.output := by lin_cert using reduction8993.terms
def map_11_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9117 : InImage map_11_196 image9117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9117 : Bundle := named_bundle% "RealMapCertificates/relations/basis9117.json"
theorem reductionProof9117 : EqualModuloRelations reduction9117.relations reduction9117.input reduction9117.output := by lin_cert using reduction9117.terms
theorem substitutionProof9117 : IsMapEvaluation generatorImages reduction9117.relations [1120] reduction9117.output := by lin_cert using reduction9117.terms
def map_11_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9266 : InImage map_11_197 image9266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9266 : Bundle := named_bundle% "RealMapCertificates/relations/basis9266.json"
theorem reductionProof9266 : EqualModuloRelations reduction9266.relations reduction9266.input reduction9266.output := by lin_cert using reduction9266.terms
theorem substitutionProof9266 : IsMapEvaluation generatorImages reduction9266.relations [1138] reduction9266.output := by lin_cert using reduction9266.terms
def image9267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9267 : InImage map_11_197 image9267 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9267 : Bundle := named_bundle% "RealMapCertificates/relations/basis9267.json"
theorem reductionProof9267 : EqualModuloRelations reduction9267.relations reduction9267.input reduction9267.output := by lin_cert using reduction9267.terms
theorem substitutionProof9267 : IsMapEvaluation generatorImages reduction9267.relations [1137] reduction9267.output := by lin_cert using reduction9267.terms
def image9268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9268 : InImage map_11_197 image9268 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9268 : Bundle := named_bundle% "RealMapCertificates/relations/basis9268.json"
theorem reductionProof9268 : EqualModuloRelations reduction9268.relations reduction9268.input reduction9268.output := by lin_cert using reduction9268.terms
theorem substitutionProof9268 : IsMapEvaluation generatorImages reduction9268.relations [79,324] reduction9268.output := by lin_cert using reduction9268.terms
def map_11_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9450 : InImage map_11_198 image9450 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9450 : Bundle := named_bundle% "RealMapCertificates/relations/basis9450.json"
theorem reductionProof9450 : EqualModuloRelations reduction9450.relations reduction9450.input reduction9450.output := by lin_cert using reduction9450.terms
theorem substitutionProof9450 : IsMapEvaluation generatorImages reduction9450.relations [1163] reduction9450.output := by lin_cert using reduction9450.terms
def image9451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9451 : InImage map_11_198 image9451 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9451 : Bundle := named_bundle% "RealMapCertificates/relations/basis9451.json"
theorem reductionProof9451 : EqualModuloRelations reduction9451.relations reduction9451.input reduction9451.output := by lin_cert using reduction9451.terms
theorem substitutionProof9451 : IsMapEvaluation generatorImages reduction9451.relations [1162] reduction9451.output := by lin_cert using reduction9451.terms
def image9452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9452 : InImage map_11_198 image9452 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9452 : Bundle := named_bundle% "RealMapCertificates/relations/basis9452.json"
theorem reductionProof9452 : EqualModuloRelations reduction9452.relations reduction9452.input reduction9452.output := by lin_cert using reduction9452.terms
theorem substitutionProof9452 : IsMapEvaluation generatorImages reduction9452.relations [0,80,324] reduction9452.output := by lin_cert using reduction9452.terms
def map_11_199 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9580 : InImage map_11_199 image9580 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9580 : Bundle := named_bundle% "RealMapCertificates/relations/basis9580.json"
theorem reductionProof9580 : EqualModuloRelations reduction9580.relations reduction9580.input reduction9580.output := by lin_cert using reduction9580.terms
theorem substitutionProof9580 : IsMapEvaluation generatorImages reduction9580.relations [1178] reduction9580.output := by lin_cert using reduction9580.terms
def image9581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9581 : InImage map_11_199 image9581 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9581 : Bundle := named_bundle% "RealMapCertificates/relations/basis9581.json"
theorem reductionProof9581 : EqualModuloRelations reduction9581.relations reduction9581.input reduction9581.output := by lin_cert using reduction9581.terms
theorem substitutionProof9581 : IsMapEvaluation generatorImages reduction9581.relations [0,81,324] reduction9581.output := by lin_cert using reduction9581.terms
def image9582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9582 : InImage map_11_199 image9582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9582 : Bundle := named_bundle% "RealMapCertificates/relations/basis9582.json"
theorem reductionProof9582 : EqualModuloRelations reduction9582.relations reduction9582.input reduction9582.output := by lin_cert using reduction9582.terms
theorem substitutionProof9582 : IsMapEvaluation generatorImages reduction9582.relations [0,0,0,0,0,0,0,1058] reduction9582.output := by lin_cert using reduction9582.terms
def map_11_200 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9749 : InImage map_11_200 image9749 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9749 : Bundle := named_bundle% "RealMapCertificates/relations/basis9749.json"
theorem reductionProof9749 : EqualModuloRelations reduction9749.relations reduction9749.input reduction9749.output := by lin_cert using reduction9749.terms
theorem substitutionProof9749 : IsMapEvaluation generatorImages reduction9749.relations [1199] reduction9749.output := by lin_cert using reduction9749.terms
def image9750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9750 : InImage map_11_200 image9750 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9750 : Bundle := named_bundle% "RealMapCertificates/relations/basis9750.json"
theorem reductionProof9750 : EqualModuloRelations reduction9750.relations reduction9750.input reduction9750.output := by lin_cert using reduction9750.terms
theorem substitutionProof9750 : IsMapEvaluation generatorImages reduction9750.relations [1198] reduction9750.output := by lin_cert using reduction9750.terms
def image9751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9751 : InImage map_11_200 image9751 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9751 : Bundle := named_bundle% "RealMapCertificates/relations/basis9751.json"
theorem reductionProof9751 : EqualModuloRelations reduction9751.relations reduction9751.input reduction9751.output := by lin_cert using reduction9751.terms
theorem substitutionProof9751 : IsMapEvaluation generatorImages reduction9751.relations [1197] reduction9751.output := by lin_cert using reduction9751.terms
def image9752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9752 : InImage map_11_200 image9752 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9752 : Bundle := named_bundle% "RealMapCertificates/relations/basis9752.json"
theorem reductionProof9752 : EqualModuloRelations reduction9752.relations reduction9752.input reduction9752.output := by lin_cert using reduction9752.terms
theorem substitutionProof9752 : IsMapEvaluation generatorImages reduction9752.relations [90,324] reduction9752.output := by lin_cert using reduction9752.terms
def image9753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9753 : InImage map_11_200 image9753 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9753 : Bundle := named_bundle% "RealMapCertificates/relations/basis9753.json"
theorem reductionProof9753 : EqualModuloRelations reduction9753.relations reduction9753.input reduction9753.output := by lin_cert using reduction9753.terms
theorem substitutionProof9753 : IsMapEvaluation generatorImages reduction9753.relations [89,324] reduction9753.output := by lin_cert using reduction9753.terms
def image9754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9754 : InImage map_11_200 image9754 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9754 : Bundle := named_bundle% "RealMapCertificates/relations/basis9754.json"
theorem reductionProof9754 : EqualModuloRelations reduction9754.relations reduction9754.input reduction9754.output := by lin_cert using reduction9754.terms
theorem substitutionProof9754 : IsMapEvaluation generatorImages reduction9754.relations [1,81,324] reduction9754.output := by lin_cert using reduction9754.terms
def map_11_201 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9932 : InImage map_11_201 image9932 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9932 : Bundle := named_bundle% "RealMapCertificates/relations/basis9932.json"
theorem reductionProof9932 : EqualModuloRelations reduction9932.relations reduction9932.input reduction9932.output := by lin_cert using reduction9932.terms
theorem substitutionProof9932 : IsMapEvaluation generatorImages reduction9932.relations [2,80,324] reduction9932.output := by lin_cert using reduction9932.terms
def map_11_202 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10061 : InImage map_11_202 image10061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10061 : Bundle := named_bundle% "RealMapCertificates/relations/basis10061.json"
theorem reductionProof10061 : EqualModuloRelations reduction10061.relations reduction10061.input reduction10061.output := by lin_cert using reduction10061.terms
theorem substitutionProof10061 : IsMapEvaluation generatorImages reduction10061.relations [1232] reduction10061.output := by lin_cert using reduction10061.terms
def image10062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10062 : InImage map_11_202 image10062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10062 : Bundle := named_bundle% "RealMapCertificates/relations/basis10062.json"
theorem reductionProof10062 : EqualModuloRelations reduction10062.relations reduction10062.input reduction10062.output := by lin_cert using reduction10062.terms
theorem substitutionProof10062 : IsMapEvaluation generatorImages reduction10062.relations [1231] reduction10062.output := by lin_cert using reduction10062.terms
def image10063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10063 : InImage map_11_202 image10063 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10063 : Bundle := named_bundle% "RealMapCertificates/relations/basis10063.json"
theorem reductionProof10063 : EqualModuloRelations reduction10063.relations reduction10063.input reduction10063.output := by lin_cert using reduction10063.terms
theorem substitutionProof10063 : IsMapEvaluation generatorImages reduction10063.relations [1230] reduction10063.output := by lin_cert using reduction10063.terms
def image10064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10064 : InImage map_11_202 image10064 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10064 : Bundle := named_bundle% "RealMapCertificates/relations/basis10064.json"
theorem reductionProof10064 : EqualModuloRelations reduction10064.relations reduction10064.input reduction10064.output := by lin_cert using reduction10064.terms
theorem substitutionProof10064 : IsMapEvaluation generatorImages reduction10064.relations [98,324] reduction10064.output := by lin_cert using reduction10064.terms
def image10065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10065 : InImage map_11_202 image10065 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10065 : Bundle := named_bundle% "RealMapCertificates/relations/basis10065.json"
theorem reductionProof10065 : EqualModuloRelations reduction10065.relations reduction10065.input reduction10065.output := by lin_cert using reduction10065.terms
theorem substitutionProof10065 : IsMapEvaluation generatorImages reduction10065.relations [0,1216] reduction10065.output := by lin_cert using reduction10065.terms
def image10066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10066 : InImage map_11_202 image10066 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10066 : Bundle := named_bundle% "RealMapCertificates/relations/basis10066.json"
theorem reductionProof10066 : EqualModuloRelations reduction10066.relations reduction10066.input reduction10066.output := by lin_cert using reduction10066.terms
theorem substitutionProof10066 : IsMapEvaluation generatorImages reduction10066.relations [0,0,3,67,324] reduction10066.output := by lin_cert using reduction10066.terms
def map_11_203 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10245 : InImage map_11_203 image10245 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10245 : Bundle := named_bundle% "RealMapCertificates/relations/basis10245.json"
theorem reductionProof10245 : EqualModuloRelations reduction10245.relations reduction10245.input reduction10245.output := by lin_cert using reduction10245.terms
theorem substitutionProof10245 : IsMapEvaluation generatorImages reduction10245.relations [1252] reduction10245.output := by lin_cert using reduction10245.terms
def image10246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10246 : InImage map_11_203 image10246 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10246 : Bundle := named_bundle% "RealMapCertificates/relations/basis10246.json"
theorem reductionProof10246 : EqualModuloRelations reduction10246.relations reduction10246.input reduction10246.output := by lin_cert using reduction10246.terms
theorem substitutionProof10246 : IsMapEvaluation generatorImages reduction10246.relations [101,324] reduction10246.output := by lin_cert using reduction10246.terms
def image10247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10247 : InImage map_11_203 image10247 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10247 : Bundle := named_bundle% "RealMapCertificates/relations/basis10247.json"
theorem reductionProof10247 : EqualModuloRelations reduction10247.relations reduction10247.input reduction10247.output := by lin_cert using reduction10247.terms
theorem substitutionProof10247 : IsMapEvaluation generatorImages reduction10247.relations [0,0,1217] reduction10247.output := by lin_cert using reduction10247.terms
def map_11_204 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10444 : InImage map_11_204 image10444 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10444 : Bundle := named_bundle% "RealMapCertificates/relations/basis10444.json"
theorem reductionProof10444 : EqualModuloRelations reduction10444.relations reduction10444.input reduction10444.output := by lin_cert using reduction10444.terms
theorem substitutionProof10444 : IsMapEvaluation generatorImages reduction10444.relations [1277] reduction10444.output := by lin_cert using reduction10444.terms
def image10445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10445 : InImage map_11_204 image10445 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10445 : Bundle := named_bundle% "RealMapCertificates/relations/basis10445.json"
theorem reductionProof10445 : EqualModuloRelations reduction10445.relations reduction10445.input reduction10445.output := by lin_cert using reduction10445.terms
theorem substitutionProof10445 : IsMapEvaluation generatorImages reduction10445.relations [1276] reduction10445.output := by lin_cert using reduction10445.terms
def image10446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10446 : InImage map_11_204 image10446 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10446 : Bundle := named_bundle% "RealMapCertificates/relations/basis10446.json"
theorem reductionProof10446 : EqualModuloRelations reduction10446.relations reduction10446.input reduction10446.output := by lin_cert using reduction10446.terms
theorem substitutionProof10446 : IsMapEvaluation generatorImages reduction10446.relations [1275] reduction10446.output := by lin_cert using reduction10446.terms
def image10447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10447 : InImage map_11_204 image10447 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10447 : Bundle := named_bundle% "RealMapCertificates/relations/basis10447.json"
theorem reductionProof10447 : EqualModuloRelations reduction10447.relations reduction10447.input reduction10447.output := by lin_cert using reduction10447.terms
theorem substitutionProof10447 : IsMapEvaluation generatorImages reduction10447.relations [104,324] reduction10447.output := by lin_cert using reduction10447.terms
def image10448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10448 : InImage map_11_204 image10448 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10448 : Bundle := named_bundle% "RealMapCertificates/relations/basis10448.json"
theorem reductionProof10448 : EqualModuloRelations reduction10448.relations reduction10448.input reduction10448.output := by lin_cert using reduction10448.terms
theorem substitutionProof10448 : IsMapEvaluation generatorImages reduction10448.relations [103,324] reduction10448.output := by lin_cert using reduction10448.terms
def image10449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10449 : InImage map_11_204 image10449 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10449 : Bundle := named_bundle% "RealMapCertificates/relations/basis10449.json"
theorem reductionProof10449 : EqualModuloRelations reduction10449.relations reduction10449.input reduction10449.output := by lin_cert using reduction10449.terms
theorem substitutionProof10449 : IsMapEvaluation generatorImages reduction10449.relations [92,368] reduction10449.output := by lin_cert using reduction10449.terms
def map_11_205 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10590 : InImage map_11_205 image10590 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10590 : Bundle := named_bundle% "RealMapCertificates/relations/basis10590.json"
theorem reductionProof10590 : EqualModuloRelations reduction10590.relations reduction10590.input reduction10590.output := by lin_cert using reduction10590.terms
theorem substitutionProof10590 : IsMapEvaluation generatorImages reduction10590.relations [0,1280] reduction10590.output := by lin_cert using reduction10590.terms
def image10591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10591 : InImage map_11_205 image10591 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10591 : Bundle := named_bundle% "RealMapCertificates/relations/basis10591.json"
theorem reductionProof10591 : EqualModuloRelations reduction10591.relations reduction10591.input reduction10591.output := by lin_cert using reduction10591.terms
theorem substitutionProof10591 : IsMapEvaluation generatorImages reduction10591.relations [0,1279] reduction10591.output := by lin_cert using reduction10591.terms
def image10592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10592 : InImage map_11_205 image10592 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10592 : Bundle := named_bundle% "RealMapCertificates/relations/basis10592.json"
theorem reductionProof10592 : EqualModuloRelations reduction10592.relations reduction10592.input reduction10592.output := by lin_cert using reduction10592.terms
theorem substitutionProof10592 : IsMapEvaluation generatorImages reduction10592.relations [0,1278] reduction10592.output := by lin_cert using reduction10592.terms
def image10593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10593 : InImage map_11_205 image10593 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10593 : Bundle := named_bundle% "RealMapCertificates/relations/basis10593.json"
theorem reductionProof10593 : EqualModuloRelations reduction10593.relations reduction10593.input reduction10593.output := by lin_cert using reduction10593.terms
theorem substitutionProof10593 : IsMapEvaluation generatorImages reduction10593.relations [0,106,324] reduction10593.output := by lin_cert using reduction10593.terms
def map_11_206 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10790 : InImage map_11_206 image10790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10790 : Bundle := named_bundle% "RealMapCertificates/relations/basis10790.json"
theorem reductionProof10790 : EqualModuloRelations reduction10790.relations reduction10790.input reduction10790.output := by lin_cert using reduction10790.terms
theorem substitutionProof10790 : IsMapEvaluation generatorImages reduction10790.relations [2,1234] reduction10790.output := by lin_cert using reduction10790.terms
def image10791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10791 : InImage map_11_206 image10791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10791 : Bundle := named_bundle% "RealMapCertificates/relations/basis10791.json"
theorem reductionProof10791 : EqualModuloRelations reduction10791.relations reduction10791.input reduction10791.output := by lin_cert using reduction10791.terms
theorem substitutionProof10791 : IsMapEvaluation generatorImages reduction10791.relations [1,1278] reduction10791.output := by lin_cert using reduction10791.terms
def image10792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10792 : InImage map_11_206 image10792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10792 : Bundle := named_bundle% "RealMapCertificates/relations/basis10792.json"
theorem reductionProof10792 : EqualModuloRelations reduction10792.relations reduction10792.input reduction10792.output := by lin_cert using reduction10792.terms
theorem substitutionProof10792 : IsMapEvaluation generatorImages reduction10792.relations [1,105,324] reduction10792.output := by lin_cert using reduction10792.terms
def image10793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10793 : InImage map_11_206 image10793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10793 : Bundle := named_bundle% "RealMapCertificates/relations/basis10793.json"
theorem reductionProof10793 : EqualModuloRelations reduction10793.relations reduction10793.input reduction10793.output := by lin_cert using reduction10793.terms
theorem substitutionProof10793 : IsMapEvaluation generatorImages reduction10793.relations [0,0,1283] reduction10793.output := by lin_cert using reduction10793.terms
def image10794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10794 : InImage map_11_206 image10794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10794 : Bundle := named_bundle% "RealMapCertificates/relations/basis10794.json"
theorem reductionProof10794 : EqualModuloRelations reduction10794.relations reduction10794.input reduction10794.output := by lin_cert using reduction10794.terms
theorem substitutionProof10794 : IsMapEvaluation generatorImages reduction10794.relations [0,0,1281] reduction10794.output := by lin_cert using reduction10794.terms
def image10795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10795 : InImage map_11_206 image10795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10795 : Bundle := named_bundle% "RealMapCertificates/relations/basis10795.json"
theorem reductionProof10795 : EqualModuloRelations reduction10795.relations reduction10795.input reduction10795.output := by lin_cert using reduction10795.terms
theorem substitutionProof10795 : IsMapEvaluation generatorImages reduction10795.relations [0,0,107,324] reduction10795.output := by lin_cert using reduction10795.terms
def map_11_207 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10981 : InImage map_11_207 image10981 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10981 : Bundle := named_bundle% "RealMapCertificates/relations/basis10981.json"
theorem reductionProof10981 : EqualModuloRelations reduction10981.relations reduction10981.input reduction10981.output := by lin_cert using reduction10981.terms
theorem substitutionProof10981 : IsMapEvaluation generatorImages reduction10981.relations [1333] reduction10981.output := by lin_cert using reduction10981.terms
def image10982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10982 : InImage map_11_207 image10982 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10982 : Bundle := named_bundle% "RealMapCertificates/relations/basis10982.json"
theorem reductionProof10982 : EqualModuloRelations reduction10982.relations reduction10982.input reduction10982.output := by lin_cert using reduction10982.terms
theorem substitutionProof10982 : IsMapEvaluation generatorImages reduction10982.relations [115,324] reduction10982.output := by lin_cert using reduction10982.terms
def map_11_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11118 : InImage map_11_208 image11118 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11118 : Bundle := named_bundle% "RealMapCertificates/relations/basis11118.json"
theorem reductionProof11118 : EqualModuloRelations reduction11118.relations reduction11118.input reduction11118.output := by lin_cert using reduction11118.terms
theorem substitutionProof11118 : IsMapEvaluation generatorImages reduction11118.relations [1346] reduction11118.output := by lin_cert using reduction11118.terms
def image11119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11119 : InImage map_11_208 image11119 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11119 : Bundle := named_bundle% "RealMapCertificates/relations/basis11119.json"
theorem reductionProof11119 : EqualModuloRelations reduction11119.relations reduction11119.input reduction11119.output := by lin_cert using reduction11119.terms
theorem substitutionProof11119 : IsMapEvaluation generatorImages reduction11119.relations [1345] reduction11119.output := by lin_cert using reduction11119.terms
def image11120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11120 : InImage map_11_208 image11120 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11120 : Bundle := named_bundle% "RealMapCertificates/relations/basis11120.json"
theorem reductionProof11120 : EqualModuloRelations reduction11120.relations reduction11120.input reduction11120.output := by lin_cert using reduction11120.terms
theorem substitutionProof11120 : IsMapEvaluation generatorImages reduction11120.relations [3,1200] reduction11120.output := by lin_cert using reduction11120.terms
def image11121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11121 : InImage map_11_208 image11121 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11121 : Bundle := named_bundle% "RealMapCertificates/relations/basis11121.json"
theorem reductionProof11121 : EqualModuloRelations reduction11121.relations reduction11121.input reduction11121.output := by lin_cert using reduction11121.terms
theorem substitutionProof11121 : IsMapEvaluation generatorImages reduction11121.relations [1,1,107,324] reduction11121.output := by lin_cert using reduction11121.terms
def map_11_209 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11301 : InImage map_11_209 image11301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11301 : Bundle := named_bundle% "RealMapCertificates/relations/basis11301.json"
theorem reductionProof11301 : EqualModuloRelations reduction11301.relations reduction11301.input reduction11301.output := by lin_cert using reduction11301.terms
theorem substitutionProof11301 : IsMapEvaluation generatorImages reduction11301.relations [1357] reduction11301.output := by lin_cert using reduction11301.terms
def image11302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11302 : InImage map_11_209 image11302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11302 : Bundle := named_bundle% "RealMapCertificates/relations/basis11302.json"
theorem reductionProof11302 : EqualModuloRelations reduction11302.relations reduction11302.input reduction11302.output := by lin_cert using reduction11302.terms
theorem substitutionProof11302 : IsMapEvaluation generatorImages reduction11302.relations [3,1216] reduction11302.output := by lin_cert using reduction11302.terms
def image11303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11303 : InImage map_11_209 image11303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11303 : Bundle := named_bundle% "RealMapCertificates/relations/basis11303.json"
theorem reductionProof11303 : EqualModuloRelations reduction11303.relations reduction11303.input reduction11303.output := by lin_cert using reduction11303.terms
theorem substitutionProof11303 : IsMapEvaluation generatorImages reduction11303.relations [0,2,107,324] reduction11303.output := by lin_cert using reduction11303.terms
def map_11_210 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11513 : InImage map_11_210 image11513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11513 : Bundle := named_bundle% "RealMapCertificates/relations/basis11513.json"
theorem reductionProof11513 : EqualModuloRelations reduction11513.relations reduction11513.input reduction11513.output := by lin_cert using reduction11513.terms
theorem substitutionProof11513 : IsMapEvaluation generatorImages reduction11513.relations [1379] reduction11513.output := by lin_cert using reduction11513.terms
def image11514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11514 : InImage map_11_210 image11514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11514 : Bundle := named_bundle% "RealMapCertificates/relations/basis11514.json"
theorem reductionProof11514 : EqualModuloRelations reduction11514.relations reduction11514.input reduction11514.output := by lin_cert using reduction11514.terms
theorem substitutionProof11514 : IsMapEvaluation generatorImages reduction11514.relations [8,68,324] reduction11514.output := by lin_cert using reduction11514.terms
def image11515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11515 : InImage map_11_210 image11515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11515 : Bundle := named_bundle% "RealMapCertificates/relations/basis11515.json"
theorem reductionProof11515 : EqualModuloRelations reduction11515.relations reduction11515.input reduction11515.output := by lin_cert using reduction11515.terms
theorem substitutionProof11515 : IsMapEvaluation generatorImages reduction11515.relations [3,1234] reduction11515.output := by lin_cert using reduction11515.terms
def image11516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11516 : InImage map_11_210 image11516 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11516 : Bundle := named_bundle% "RealMapCertificates/relations/basis11516.json"
theorem reductionProof11516 : EqualModuloRelations reduction11516.relations reduction11516.input reduction11516.output := by lin_cert using reduction11516.terms
theorem substitutionProof11516 : IsMapEvaluation generatorImages reduction11516.relations [3,1233] reduction11516.output := by lin_cert using reduction11516.terms
def image11517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11517 : InImage map_11_210 image11517 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11517 : Bundle := named_bundle% "RealMapCertificates/relations/basis11517.json"
theorem reductionProof11517 : EqualModuloRelations reduction11517.relations reduction11517.input reduction11517.output := by lin_cert using reduction11517.terms
theorem substitutionProof11517 : IsMapEvaluation generatorImages reduction11517.relations [0,1358] reduction11517.output := by lin_cert using reduction11517.terms
def map_11_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11655 : InImage map_11_211 image11655 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11655 : Bundle := named_bundle% "RealMapCertificates/relations/basis11655.json"
theorem reductionProof11655 : EqualModuloRelations reduction11655.relations reduction11655.input reduction11655.output := by lin_cert using reduction11655.terms
theorem substitutionProof11655 : IsMapEvaluation generatorImages reduction11655.relations [0,1380] reduction11655.output := by lin_cert using reduction11655.terms
def map_11_212 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11856 : InImage map_11_212 image11856 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11856 : Bundle := named_bundle% "RealMapCertificates/relations/basis11856.json"
theorem reductionProof11856 : EqualModuloRelations reduction11856.relations reduction11856.input reduction11856.output := by lin_cert using reduction11856.terms
theorem substitutionProof11856 : IsMapEvaluation generatorImages reduction11856.relations [1416] reduction11856.output := by lin_cert using reduction11856.terms
def image11857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11857 : InImage map_11_212 image11857 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11857 : Bundle := named_bundle% "RealMapCertificates/relations/basis11857.json"
theorem reductionProof11857 : EqualModuloRelations reduction11857.relations reduction11857.input reduction11857.output := by lin_cert using reduction11857.terms
theorem substitutionProof11857 : IsMapEvaluation generatorImages reduction11857.relations [1415] reduction11857.output := by lin_cert using reduction11857.terms
def image11858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11858 : InImage map_11_212 image11858 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11858 : Bundle := named_bundle% "RealMapCertificates/relations/basis11858.json"
theorem reductionProof11858 : EqualModuloRelations reduction11858.relations reduction11858.input reduction11858.output := by lin_cert using reduction11858.terms
theorem substitutionProof11858 : IsMapEvaluation generatorImages reduction11858.relations [1414] reduction11858.output := by lin_cert using reduction11858.terms
def image11859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11859 : InImage map_11_212 image11859 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11859 : Bundle := named_bundle% "RealMapCertificates/relations/basis11859.json"
theorem reductionProof11859 : EqualModuloRelations reduction11859.relations reduction11859.input reduction11859.output := by lin_cert using reduction11859.terms
theorem substitutionProof11859 : IsMapEvaluation generatorImages reduction11859.relations [3,1279] reduction11859.output := by lin_cert using reduction11859.terms
def image11860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11860 : InImage map_11_212 image11860 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11860 : Bundle := named_bundle% "RealMapCertificates/relations/basis11860.json"
theorem reductionProof11860 : EqualModuloRelations reduction11860.relations reduction11860.input reduction11860.output := by lin_cert using reduction11860.terms
theorem substitutionProof11860 : IsMapEvaluation generatorImages reduction11860.relations [3,1278] reduction11860.output := by lin_cert using reduction11860.terms
def image11861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11861 : InImage map_11_212 image11861 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11861 : Bundle := named_bundle% "RealMapCertificates/relations/basis11861.json"
theorem reductionProof11861 : EqualModuloRelations reduction11861.relations reduction11861.input reduction11861.output := by lin_cert using reduction11861.terms
theorem substitutionProof11861 : IsMapEvaluation generatorImages reduction11861.relations [1,1380] reduction11861.output := by lin_cert using reduction11861.terms
def image11862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11862 : InImage map_11_212 image11862 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11862 : Bundle := named_bundle% "RealMapCertificates/relations/basis11862.json"
theorem reductionProof11862 : EqualModuloRelations reduction11862.relations reduction11862.input reduction11862.output := by lin_cert using reduction11862.terms
theorem substitutionProof11862 : IsMapEvaluation generatorImages reduction11862.relations [0,0,120,324] reduction11862.output := by lin_cert using reduction11862.terms
def map_11_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12089 : InImage map_11_213 image12089 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12089 : Bundle := named_bundle% "RealMapCertificates/relations/basis12089.json"
theorem reductionProof12089 : EqualModuloRelations reduction12089.relations reduction12089.input reduction12089.output := by lin_cert using reduction12089.terms
theorem substitutionProof12089 : IsMapEvaluation generatorImages reduction12089.relations [0,1418] reduction12089.output := by lin_cert using reduction12089.terms
def image12090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12090 : InImage map_11_213 image12090 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12090 : Bundle := named_bundle% "RealMapCertificates/relations/basis12090.json"
theorem reductionProof12090 : EqualModuloRelations reduction12090.relations reduction12090.input reduction12090.output := by lin_cert using reduction12090.terms
theorem substitutionProof12090 : IsMapEvaluation generatorImages reduction12090.relations [0,1417] reduction12090.output := by lin_cert using reduction12090.terms
def image12091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12091 : InImage map_11_213 image12091 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12091 : Bundle := named_bundle% "RealMapCertificates/relations/basis12091.json"
theorem reductionProof12091 : EqualModuloRelations reduction12091.relations reduction12091.input reduction12091.output := by lin_cert using reduction12091.terms
theorem substitutionProof12091 : IsMapEvaluation generatorImages reduction12091.relations [0,3,1281] reduction12091.output := by lin_cert using reduction12091.terms
def image12092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12092 : InImage map_11_213 image12092 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12092 : Bundle := named_bundle% "RealMapCertificates/relations/basis12092.json"
theorem reductionProof12092 : EqualModuloRelations reduction12092.relations reduction12092.input reduction12092.output := by lin_cert using reduction12092.terms
theorem substitutionProof12092 : IsMapEvaluation generatorImages reduction12092.relations [0,3,107,324] reduction12092.output := by lin_cert using reduction12092.terms
end RealMapCertificates
