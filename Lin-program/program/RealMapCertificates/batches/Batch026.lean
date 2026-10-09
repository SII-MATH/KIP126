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
  | 13 => [[9]]
  | 43 => []
  | 68 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 120 => []
  | 128 => []
  | 133 => []
  | 139 => []
  | 141 => []
  | 157 => []
  | 163 => []
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
  | 323 => []
  | 324 => []
  | 1164 => []
  | 1216 => []
  | 1235 => []
  | 1280 => []
  | 1281 => []
  | 1284 => []
  | 1358 => []
  | 1380 => []
  | 1417 => []
  | 1418 => []
  | 1419 => []
  | 1420 => []
  | 1460 => []
  | 1461 => []
  | 1462 => []
  | 1463 => []
  | 1464 => []
  | 1478 => []
  | 1479 => []
  | 1529 => []
  | 1530 => []
  | 1531 => []
  | 1549 => []
  | 1583 => []
  | 1584 => []
  | 1632 => []
  | 1633 => []
  | 1649 => []
  | 1676 => []
  | 1684 => []
  | 1710 => []
  | 1711 => []
  | 1712 => []
  | 1713 => []
  | 1806 => []
  | 1807 => []
  | 1808 => []
  | 1809 => []
  | 1853 => []
  | 1955 => []
  | 1956 => []
  | 1957 => []
  | 1958 => []
  | 1988 => []
  | 2031 => []
  | 2033 => []
  | 2087 => []
  | 2117 => []
  | 2156 => []
  | 2157 => []
  | _ => []
def map_11_214 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12244 : InImage map_11_214 image12244 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12244 : Bundle := named_bundle% "RealMapCertificates/relations/basis12244.json"
theorem reductionProof12244 : EqualModuloRelations reduction12244.relations reduction12244.input reduction12244.output := by lin_cert using reduction12244.terms
theorem substitutionProof12244 : IsMapEvaluation generatorImages reduction12244.relations [1460] reduction12244.output := by lin_cert using reduction12244.terms
def image12245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12245 : InImage map_11_214 image12245 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12245 : Bundle := named_bundle% "RealMapCertificates/relations/basis12245.json"
theorem reductionProof12245 : EqualModuloRelations reduction12245.relations reduction12245.input reduction12245.output := by lin_cert using reduction12245.terms
theorem substitutionProof12245 : IsMapEvaluation generatorImages reduction12245.relations [7,1164] reduction12245.output := by lin_cert using reduction12245.terms
def image12246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12246 : InImage map_11_214 image12246 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12246 : Bundle := named_bundle% "RealMapCertificates/relations/basis12246.json"
theorem reductionProof12246 : EqualModuloRelations reduction12246.relations reduction12246.input reduction12246.output := by lin_cert using reduction12246.terms
theorem substitutionProof12246 : IsMapEvaluation generatorImages reduction12246.relations [2,1380] reduction12246.output := by lin_cert using reduction12246.terms
def image12247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12247 : InImage map_11_214 image12247 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12247 : Bundle := named_bundle% "RealMapCertificates/relations/basis12247.json"
theorem reductionProof12247 : EqualModuloRelations reduction12247.relations reduction12247.input reduction12247.output := by lin_cert using reduction12247.terms
theorem substitutionProof12247 : IsMapEvaluation generatorImages reduction12247.relations [1,1419] reduction12247.output := by lin_cert using reduction12247.terms
def image12248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12248 : InImage map_11_214 image12248 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12248 : Bundle := named_bundle% "RealMapCertificates/relations/basis12248.json"
theorem reductionProof12248 : EqualModuloRelations reduction12248.relations reduction12248.input reduction12248.output := by lin_cert using reduction12248.terms
theorem substitutionProof12248 : IsMapEvaluation generatorImages reduction12248.relations [1,1418] reduction12248.output := by lin_cert using reduction12248.terms
def image12249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12249 : InImage map_11_214 image12249 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12249 : Bundle := named_bundle% "RealMapCertificates/relations/basis12249.json"
theorem reductionProof12249 : EqualModuloRelations reduction12249.relations reduction12249.input reduction12249.output := by lin_cert using reduction12249.terms
theorem substitutionProof12249 : IsMapEvaluation generatorImages reduction12249.relations [0,133,324] reduction12249.output := by lin_cert using reduction12249.terms
def image12250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12250 : InImage map_11_214 image12250 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12250 : Bundle := named_bundle% "RealMapCertificates/relations/basis12250.json"
theorem reductionProof12250 : EqualModuloRelations reduction12250.relations reduction12250.input reduction12250.output := by lin_cert using reduction12250.terms
theorem substitutionProof12250 : IsMapEvaluation generatorImages reduction12250.relations [0,0,1420] reduction12250.output := by lin_cert using reduction12250.terms
def map_11_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12444 : InImage map_11_215 image12444 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12444 : Bundle := named_bundle% "RealMapCertificates/relations/basis12444.json"
theorem reductionProof12444 : EqualModuloRelations reduction12444.relations reduction12444.input reduction12444.output := by lin_cert using reduction12444.terms
theorem substitutionProof12444 : IsMapEvaluation generatorImages reduction12444.relations [1479] reduction12444.output := by lin_cert using reduction12444.terms
def image12445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12445 : InImage map_11_215 image12445 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12445 : Bundle := named_bundle% "RealMapCertificates/relations/basis12445.json"
theorem reductionProof12445 : EqualModuloRelations reduction12445.relations reduction12445.input reduction12445.output := by lin_cert using reduction12445.terms
theorem substitutionProof12445 : IsMapEvaluation generatorImages reduction12445.relations [1478] reduction12445.output := by lin_cert using reduction12445.terms
def image12446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12446 : InImage map_11_215 image12446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12446 : Bundle := named_bundle% "RealMapCertificates/relations/basis12446.json"
theorem reductionProof12446 : EqualModuloRelations reduction12446.relations reduction12446.input reduction12446.output := by lin_cert using reduction12446.terms
theorem substitutionProof12446 : IsMapEvaluation generatorImages reduction12446.relations [0,1461] reduction12446.output := by lin_cert using reduction12446.terms
def image12447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12447 : InImage map_11_215 image12447 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12447 : Bundle := named_bundle% "RealMapCertificates/relations/basis12447.json"
theorem reductionProof12447 : EqualModuloRelations reduction12447.relations reduction12447.input reduction12447.output := by lin_cert using reduction12447.terms
theorem substitutionProof12447 : IsMapEvaluation generatorImages reduction12447.relations [0,0,0,128,324] reduction12447.output := by lin_cert using reduction12447.terms
def map_11_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12658 : InImage map_11_216 image12658 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12658 : Bundle := named_bundle% "RealMapCertificates/relations/basis12658.json"
theorem reductionProof12658 : EqualModuloRelations reduction12658.relations reduction12658.input reduction12658.output := by lin_cert using reduction12658.terms
theorem substitutionProof12658 : IsMapEvaluation generatorImages reduction12658.relations [141,324] reduction12658.output := by lin_cert using reduction12658.terms
def image12659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12659 : InImage map_11_216 image12659 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12659 : Bundle := named_bundle% "RealMapCertificates/relations/basis12659.json"
theorem reductionProof12659 : EqualModuloRelations reduction12659.relations reduction12659.input reduction12659.output := by lin_cert using reduction12659.terms
theorem substitutionProof12659 : IsMapEvaluation generatorImages reduction12659.relations [9,75,324] reduction12659.output := by lin_cert using reduction12659.terms
def image12660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12660 : InImage map_11_216 image12660 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12660 : Bundle := named_bundle% "RealMapCertificates/relations/basis12660.json"
theorem reductionProof12660 : EqualModuloRelations reduction12660.relations reduction12660.input reduction12660.output := by lin_cert using reduction12660.terms
theorem substitutionProof12660 : IsMapEvaluation generatorImages reduction12660.relations [2,1418] reduction12660.output := by lin_cert using reduction12660.terms
def image12661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12661 : InImage map_11_216 image12661 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12661 : Bundle := named_bundle% "RealMapCertificates/relations/basis12661.json"
theorem reductionProof12661 : EqualModuloRelations reduction12661.relations reduction12661.input reduction12661.output := by lin_cert using reduction12661.terms
theorem substitutionProof12661 : IsMapEvaluation generatorImages reduction12661.relations [2,1417] reduction12661.output := by lin_cert using reduction12661.terms
def image12662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12662 : InImage map_11_216 image12662 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12662 : Bundle := named_bundle% "RealMapCertificates/relations/basis12662.json"
theorem reductionProof12662 : EqualModuloRelations reduction12662.relations reduction12662.input reduction12662.output := by lin_cert using reduction12662.terms
theorem substitutionProof12662 : IsMapEvaluation generatorImages reduction12662.relations [1,1462] reduction12662.output := by lin_cert using reduction12662.terms
def map_11_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12801 : InImage map_11_217 image12801 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12801 : Bundle := named_bundle% "RealMapCertificates/relations/basis12801.json"
theorem reductionProof12801 : EqualModuloRelations reduction12801.relations reduction12801.input reduction12801.output := by lin_cert using reduction12801.terms
theorem substitutionProof12801 : IsMapEvaluation generatorImages reduction12801.relations [7,1216] reduction12801.output := by lin_cert using reduction12801.terms
def image12802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12802 : InImage map_11_217 image12802 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12802 : Bundle := named_bundle% "RealMapCertificates/relations/basis12802.json"
theorem reductionProof12802 : EqualModuloRelations reduction12802.relations reduction12802.input reduction12802.output := by lin_cert using reduction12802.terms
theorem substitutionProof12802 : IsMapEvaluation generatorImages reduction12802.relations [3,1358] reduction12802.output := by lin_cert using reduction12802.terms
def image12803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12803 : InImage map_11_217 image12803 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12803 : Bundle := named_bundle% "RealMapCertificates/relations/basis12803.json"
theorem reductionProof12803 : EqualModuloRelations reduction12803.relations reduction12803.input reduction12803.output := by lin_cert using reduction12803.terms
theorem substitutionProof12803 : IsMapEvaluation generatorImages reduction12803.relations [1,139,324] reduction12803.output := by lin_cert using reduction12803.terms
def map_11_218 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13013 : InImage map_11_218 image13013 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13013 : Bundle := named_bundle% "RealMapCertificates/relations/basis13013.json"
theorem reductionProof13013 : EqualModuloRelations reduction13013.relations reduction13013.input reduction13013.output := by lin_cert using reduction13013.terms
theorem substitutionProof13013 : IsMapEvaluation generatorImages reduction13013.relations [1529] reduction13013.output := by lin_cert using reduction13013.terms
def image13014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13014 : InImage map_11_218 image13014 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13014 : Bundle := named_bundle% "RealMapCertificates/relations/basis13014.json"
theorem reductionProof13014 : EqualModuloRelations reduction13014.relations reduction13014.input reduction13014.output := by lin_cert using reduction13014.terms
theorem substitutionProof13014 : IsMapEvaluation generatorImages reduction13014.relations [3,1380] reduction13014.output := by lin_cert using reduction13014.terms
def image13015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13015 : InImage map_11_218 image13015 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13015 : Bundle := named_bundle% "RealMapCertificates/relations/basis13015.json"
theorem reductionProof13015 : EqualModuloRelations reduction13015.relations reduction13015.input reduction13015.output := by lin_cert using reduction13015.terms
theorem substitutionProof13015 : IsMapEvaluation generatorImages reduction13015.relations [3,3,1235] reduction13015.output := by lin_cert using reduction13015.terms
def image13016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13016 : InImage map_11_218 image13016 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13016 : Bundle := named_bundle% "RealMapCertificates/relations/basis13016.json"
theorem reductionProof13016 : EqualModuloRelations reduction13016.relations reduction13016.input reduction13016.output := by lin_cert using reduction13016.terms
theorem substitutionProof13016 : IsMapEvaluation generatorImages reduction13016.relations [2,1463] reduction13016.output := by lin_cert using reduction13016.terms
def image13017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13017 : InImage map_11_218 image13017 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13017 : Bundle := named_bundle% "RealMapCertificates/relations/basis13017.json"
theorem reductionProof13017 : EqualModuloRelations reduction13017.relations reduction13017.input reduction13017.output := by lin_cert using reduction13017.terms
theorem substitutionProof13017 : IsMapEvaluation generatorImages reduction13017.relations [2,1462] reduction13017.output := by lin_cert using reduction13017.terms
def image13018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13018 : InImage map_11_218 image13018 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13018 : Bundle := named_bundle% "RealMapCertificates/relations/basis13018.json"
theorem reductionProof13018 : EqualModuloRelations reduction13018.relations reduction13018.input reduction13018.output := by lin_cert using reduction13018.terms
theorem substitutionProof13018 : IsMapEvaluation generatorImages reduction13018.relations [2,1461] reduction13018.output := by lin_cert using reduction13018.terms
def map_11_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13221 : InImage map_11_219 image13221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13221 : Bundle := named_bundle% "RealMapCertificates/relations/basis13221.json"
theorem reductionProof13221 : EqualModuloRelations reduction13221.relations reduction13221.input reduction13221.output := by lin_cert using reduction13221.terms
theorem substitutionProof13221 : IsMapEvaluation generatorImages reduction13221.relations [13,75,324] reduction13221.output := by lin_cert using reduction13221.terms
def image13222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13222 : InImage map_11_219 image13222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13222 : Bundle := named_bundle% "RealMapCertificates/relations/basis13222.json"
theorem reductionProof13222 : EqualModuloRelations reduction13222.relations reduction13222.input reduction13222.output := by lin_cert using reduction13222.terms
theorem substitutionProof13222 : IsMapEvaluation generatorImages reduction13222.relations [0,1530] reduction13222.output := by lin_cert using reduction13222.terms
def image13223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13223 : InImage map_11_219 image13223 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13223 : Bundle := named_bundle% "RealMapCertificates/relations/basis13223.json"
theorem reductionProof13223 : EqualModuloRelations reduction13223.relations reduction13223.input reduction13223.output := by lin_cert using reduction13223.terms
theorem substitutionProof13223 : IsMapEvaluation generatorImages reduction13223.relations [0,3,120,324] reduction13223.output := by lin_cert using reduction13223.terms
def image13224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13224 : InImage map_11_219 image13224 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13224 : Bundle := named_bundle% "RealMapCertificates/relations/basis13224.json"
theorem reductionProof13224 : EqualModuloRelations reduction13224.relations reduction13224.input reduction13224.output := by lin_cert using reduction13224.terms
theorem substitutionProof13224 : IsMapEvaluation generatorImages reduction13224.relations [0,2,1464] reduction13224.output := by lin_cert using reduction13224.terms
def map_11_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13366 : InImage map_11_220 image13366 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13366 : Bundle := named_bundle% "RealMapCertificates/relations/basis13366.json"
theorem reductionProof13366 : EqualModuloRelations reduction13366.relations reduction13366.input reduction13366.output := by lin_cert using reduction13366.terms
theorem substitutionProof13366 : IsMapEvaluation generatorImages reduction13366.relations [7,1280] reduction13366.output := by lin_cert using reduction13366.terms
def image13367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13367 : InImage map_11_220 image13367 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13367 : Bundle := named_bundle% "RealMapCertificates/relations/basis13367.json"
theorem reductionProof13367 : EqualModuloRelations reduction13367.relations reduction13367.input reduction13367.output := by lin_cert using reduction13367.terms
theorem substitutionProof13367 : IsMapEvaluation generatorImages reduction13367.relations [1,1530] reduction13367.output := by lin_cert using reduction13367.terms
def image13368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13368 : InImage map_11_220 image13368 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13368 : Bundle := named_bundle% "RealMapCertificates/relations/basis13368.json"
theorem reductionProof13368 : EqualModuloRelations reduction13368.relations reduction13368.input reduction13368.output := by lin_cert using reduction13368.terms
theorem substitutionProof13368 : IsMapEvaluation generatorImages reduction13368.relations [1,7,1235] reduction13368.output := by lin_cert using reduction13368.terms
def image13369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13369 : InImage map_11_220 image13369 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13369 : Bundle := named_bundle% "RealMapCertificates/relations/basis13369.json"
theorem reductionProof13369 : EqualModuloRelations reduction13369.relations reduction13369.input reduction13369.output := by lin_cert using reduction13369.terms
theorem substitutionProof13369 : IsMapEvaluation generatorImages reduction13369.relations [0,0,1531] reduction13369.output := by lin_cert using reduction13369.terms
def map_11_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13565 : InImage map_11_221 image13565 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13565 : Bundle := named_bundle% "RealMapCertificates/relations/basis13565.json"
theorem reductionProof13565 : EqualModuloRelations reduction13565.relations reduction13565.input reduction13565.output := by lin_cert using reduction13565.terms
theorem substitutionProof13565 : IsMapEvaluation generatorImages reduction13565.relations [1583] reduction13565.output := by lin_cert using reduction13565.terms
def image13566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13566 : InImage map_11_221 image13566 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13566 : Bundle := named_bundle% "RealMapCertificates/relations/basis13566.json"
theorem reductionProof13566 : EqualModuloRelations reduction13566.relations reduction13566.input reduction13566.output := by lin_cert using reduction13566.terms
theorem substitutionProof13566 : IsMapEvaluation generatorImages reduction13566.relations [1,1549] reduction13566.output := by lin_cert using reduction13566.terms
def image13567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13567 : InImage map_11_221 image13567 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13567 : Bundle := named_bundle% "RealMapCertificates/relations/basis13567.json"
theorem reductionProof13567 : EqualModuloRelations reduction13567.relations reduction13567.input reduction13567.output := by lin_cert using reduction13567.terms
theorem substitutionProof13567 : IsMapEvaluation generatorImages reduction13567.relations [1,13,76,324] reduction13567.output := by lin_cert using reduction13567.terms
def image13568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13568 : InImage map_11_221 image13568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13568 : Bundle := named_bundle% "RealMapCertificates/relations/basis13568.json"
theorem reductionProof13568 : EqualModuloRelations reduction13568.relations reduction13568.input reduction13568.output := by lin_cert using reduction13568.terms
theorem substitutionProof13568 : IsMapEvaluation generatorImages reduction13568.relations [0,7,1281] reduction13568.output := by lin_cert using reduction13568.terms
def map_11_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13790 : InImage map_11_222 image13790 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13790 : Bundle := named_bundle% "RealMapCertificates/relations/basis13790.json"
theorem reductionProof13790 : EqualModuloRelations reduction13790.relations reduction13790.input reduction13790.output := by lin_cert using reduction13790.terms
theorem substitutionProof13790 : IsMapEvaluation generatorImages reduction13790.relations [157,324] reduction13790.output := by lin_cert using reduction13790.terms
def image13791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13791 : InImage map_11_222 image13791 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13791 : Bundle := named_bundle% "RealMapCertificates/relations/basis13791.json"
theorem reductionProof13791 : EqualModuloRelations reduction13791.relations reduction13791.input reduction13791.output := by lin_cert using reduction13791.terms
theorem substitutionProof13791 : IsMapEvaluation generatorImages reduction13791.relations [1,7,1281] reduction13791.output := by lin_cert using reduction13791.terms
def image13792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13792 : InImage map_11_222 image13792 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13792 : Bundle := named_bundle% "RealMapCertificates/relations/basis13792.json"
theorem reductionProof13792 : EqualModuloRelations reduction13792.relations reduction13792.input reduction13792.output := by lin_cert using reduction13792.terms
theorem substitutionProof13792 : IsMapEvaluation generatorImages reduction13792.relations [0,0,7,1284] reduction13792.output := by lin_cert using reduction13792.terms
def map_11_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13929 : InImage map_11_223 image13929 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13929 : Bundle := named_bundle% "RealMapCertificates/relations/basis13929.json"
theorem reductionProof13929 : EqualModuloRelations reduction13929.relations reduction13929.input reduction13929.output := by lin_cert using reduction13929.terms
theorem substitutionProof13929 : IsMapEvaluation generatorImages reduction13929.relations [1,1584] reduction13929.output := by lin_cert using reduction13929.terms
def map_11_224 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14139 : InImage map_11_224 image14139 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14139 : Bundle := named_bundle% "RealMapCertificates/relations/basis14139.json"
theorem reductionProof14139 : EqualModuloRelations reduction14139.relations reduction14139.input reduction14139.output := by lin_cert using reduction14139.terms
theorem substitutionProof14139 : IsMapEvaluation generatorImages reduction14139.relations [1632] reduction14139.output := by lin_cert using reduction14139.terms
def image14140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14140 : InImage map_11_224 image14140 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14140 : Bundle := named_bundle% "RealMapCertificates/relations/basis14140.json"
theorem reductionProof14140 : EqualModuloRelations reduction14140.relations reduction14140.input reduction14140.output := by lin_cert using reduction14140.terms
theorem substitutionProof14140 : IsMapEvaluation generatorImages reduction14140.relations [163,323] reduction14140.output := by lin_cert using reduction14140.terms
def map_11_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14341 : InImage map_11_225 image14341 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14341 : Bundle := named_bundle% "RealMapCertificates/relations/basis14341.json"
theorem reductionProof14341 : EqualModuloRelations reduction14341.relations reduction14341.input reduction14341.output := by lin_cert using reduction14341.terms
theorem substitutionProof14341 : IsMapEvaluation generatorImages reduction14341.relations [164,324] reduction14341.output := by lin_cert using reduction14341.terms
def image14342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14342 : InImage map_11_225 image14342 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14342 : Bundle := named_bundle% "RealMapCertificates/relations/basis14342.json"
theorem reductionProof14342 : EqualModuloRelations reduction14342.relations reduction14342.input reduction14342.output := by lin_cert using reduction14342.terms
theorem substitutionProof14342 : IsMapEvaluation generatorImages reduction14342.relations [0,1633] reduction14342.output := by lin_cert using reduction14342.terms
def map_11_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14493 : InImage map_11_226 image14493 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14493 : Bundle := named_bundle% "RealMapCertificates/relations/basis14493.json"
theorem reductionProof14493 : EqualModuloRelations reduction14493.relations reduction14493.input reduction14493.output := by lin_cert using reduction14493.terms
theorem substitutionProof14493 : IsMapEvaluation generatorImages reduction14493.relations [7,1380] reduction14493.output := by lin_cert using reduction14493.terms
def image14494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14494 : InImage map_11_226 image14494 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14494 : Bundle := named_bundle% "RealMapCertificates/relations/basis14494.json"
theorem reductionProof14494 : EqualModuloRelations reduction14494.relations reduction14494.input reduction14494.output := by lin_cert using reduction14494.terms
theorem substitutionProof14494 : IsMapEvaluation generatorImages reduction14494.relations [0,1649] reduction14494.output := by lin_cert using reduction14494.terms
def map_11_227 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14701 : InImage map_11_227 image14701 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14701 : Bundle := named_bundle% "RealMapCertificates/relations/basis14701.json"
theorem reductionProof14701 : EqualModuloRelations reduction14701.relations reduction14701.input reduction14701.output := by lin_cert using reduction14701.terms
theorem substitutionProof14701 : IsMapEvaluation generatorImages reduction14701.relations [1,1649] reduction14701.output := by lin_cert using reduction14701.terms
def image14702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14702 : InImage map_11_227 image14702 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14702 : Bundle := named_bundle% "RealMapCertificates/relations/basis14702.json"
theorem reductionProof14702 : EqualModuloRelations reduction14702.relations reduction14702.input reduction14702.output := by lin_cert using reduction14702.terms
theorem substitutionProof14702 : IsMapEvaluation generatorImages reduction14702.relations [0,1676] reduction14702.output := by lin_cert using reduction14702.terms
def map_11_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14928 : InImage map_11_228 image14928 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14928 : Bundle := named_bundle% "RealMapCertificates/relations/basis14928.json"
theorem reductionProof14928 : EqualModuloRelations reduction14928.relations reduction14928.input reduction14928.output := by lin_cert using reduction14928.terms
theorem substitutionProof14928 : IsMapEvaluation generatorImages reduction14928.relations [1710] reduction14928.output := by lin_cert using reduction14928.terms
def image14929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14929 : InImage map_11_228 image14929 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14929 : Bundle := named_bundle% "RealMapCertificates/relations/basis14929.json"
theorem reductionProof14929 : EqualModuloRelations reduction14929.relations reduction14929.input reduction14929.output := by lin_cert using reduction14929.terms
theorem substitutionProof14929 : IsMapEvaluation generatorImages reduction14929.relations [179,324] reduction14929.output := by lin_cert using reduction14929.terms
def image14930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14930 : InImage map_11_228 image14930 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14930 : Bundle := named_bundle% "RealMapCertificates/relations/basis14930.json"
theorem reductionProof14930 : EqualModuloRelations reduction14930.relations reduction14930.input reduction14930.output := by lin_cert using reduction14930.terms
theorem substitutionProof14930 : IsMapEvaluation generatorImages reduction14930.relations [7,1419] reduction14930.output := by lin_cert using reduction14930.terms
def image14931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14931 : InImage map_11_228 image14931 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14931 : Bundle := named_bundle% "RealMapCertificates/relations/basis14931.json"
theorem reductionProof14931 : EqualModuloRelations reduction14931.relations reduction14931.input reduction14931.output := by lin_cert using reduction14931.terms
theorem substitutionProof14931 : IsMapEvaluation generatorImages reduction14931.relations [7,1418] reduction14931.output := by lin_cert using reduction14931.terms
def image14932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14932 : InImage map_11_228 image14932 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14932 : Bundle := named_bundle% "RealMapCertificates/relations/basis14932.json"
theorem reductionProof14932 : EqualModuloRelations reduction14932.relations reduction14932.input reduction14932.output := by lin_cert using reduction14932.terms
theorem substitutionProof14932 : IsMapEvaluation generatorImages reduction14932.relations [7,1417] reduction14932.output := by lin_cert using reduction14932.terms
def map_11_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15080 : InImage map_11_229 image15080 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15080 : Bundle := named_bundle% "RealMapCertificates/relations/basis15080.json"
theorem reductionProof15080 : EqualModuloRelations reduction15080.relations reduction15080.input reduction15080.output := by lin_cert using reduction15080.terms
theorem substitutionProof15080 : IsMapEvaluation generatorImages reduction15080.relations [0,0,1684] reduction15080.output := by lin_cert using reduction15080.terms
def map_11_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15311 : InImage map_11_230 image15311 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15311 : Bundle := named_bundle% "RealMapCertificates/relations/basis15311.json"
theorem reductionProof15311 : EqualModuloRelations reduction15311.relations reduction15311.input reduction15311.output := by lin_cert using reduction15311.terms
theorem substitutionProof15311 : IsMapEvaluation generatorImages reduction15311.relations [189,324] reduction15311.output := by lin_cert using reduction15311.terms
def image15312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15312 : InImage map_11_230 image15312 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15312 : Bundle := named_bundle% "RealMapCertificates/relations/basis15312.json"
theorem reductionProof15312 : EqualModuloRelations reduction15312.relations reduction15312.input reduction15312.output := by lin_cert using reduction15312.terms
theorem substitutionProof15312 : IsMapEvaluation generatorImages reduction15312.relations [7,1462] reduction15312.output := by lin_cert using reduction15312.terms
def image15313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15313 : InImage map_11_230 image15313 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15313 : Bundle := named_bundle% "RealMapCertificates/relations/basis15313.json"
theorem reductionProof15313 : EqualModuloRelations reduction15313.relations reduction15313.input reduction15313.output := by lin_cert using reduction15313.terms
theorem substitutionProof15313 : IsMapEvaluation generatorImages reduction15313.relations [1,7,1420] reduction15313.output := by lin_cert using reduction15313.terms
def image15314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15314 : InImage map_11_230 image15314 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15314 : Bundle := named_bundle% "RealMapCertificates/relations/basis15314.json"
theorem reductionProof15314 : EqualModuloRelations reduction15314.relations reduction15314.input reduction15314.output := by lin_cert using reduction15314.terms
theorem substitutionProof15314 : IsMapEvaluation generatorImages reduction15314.relations [0,0,1712] reduction15314.output := by lin_cert using reduction15314.terms
def image15315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15315 : InImage map_11_230 image15315 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15315 : Bundle := named_bundle% "RealMapCertificates/relations/basis15315.json"
theorem reductionProof15315 : EqualModuloRelations reduction15315.relations reduction15315.input reduction15315.output := by lin_cert using reduction15315.terms
theorem substitutionProof15315 : IsMapEvaluation generatorImages reduction15315.relations [0,0,1711] reduction15315.output := by lin_cert using reduction15315.terms
def map_11_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15557 : InImage map_11_231 image15557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15557 : Bundle := named_bundle% "RealMapCertificates/relations/basis15557.json"
theorem reductionProof15557 : EqualModuloRelations reduction15557.relations reduction15557.input reduction15557.output := by lin_cert using reduction15557.terms
theorem substitutionProof15557 : IsMapEvaluation generatorImages reduction15557.relations [192,324] reduction15557.output := by lin_cert using reduction15557.terms
def image15558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15558 : InImage map_11_231 image15558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15558 : Bundle := named_bundle% "RealMapCertificates/relations/basis15558.json"
theorem reductionProof15558 : EqualModuloRelations reduction15558.relations reduction15558.input reduction15558.output := by lin_cert using reduction15558.terms
theorem substitutionProof15558 : IsMapEvaluation generatorImages reduction15558.relations [1,1,174,324] reduction15558.output := by lin_cert using reduction15558.terms
def image15559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15559 : InImage map_11_231 image15559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15559 : Bundle := named_bundle% "RealMapCertificates/relations/basis15559.json"
theorem reductionProof15559 : EqualModuloRelations reduction15559.relations reduction15559.input reduction15559.output := by lin_cert using reduction15559.terms
theorem substitutionProof15559 : IsMapEvaluation generatorImages reduction15559.relations [0,0,0,1713] reduction15559.output := by lin_cert using reduction15559.terms
def map_11_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15728 : InImage map_11_232 image15728 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15728 : Bundle := named_bundle% "RealMapCertificates/relations/basis15728.json"
theorem reductionProof15728 : EqualModuloRelations reduction15728.relations reduction15728.input reduction15728.output := by lin_cert using reduction15728.terms
theorem substitutionProof15728 : IsMapEvaluation generatorImages reduction15728.relations [1807] reduction15728.output := by lin_cert using reduction15728.terms
def image15729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15729 : InImage map_11_232 image15729 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15729 : Bundle := named_bundle% "RealMapCertificates/relations/basis15729.json"
theorem reductionProof15729 : EqualModuloRelations reduction15729.relations reduction15729.input reduction15729.output := by lin_cert using reduction15729.terms
theorem substitutionProof15729 : IsMapEvaluation generatorImages reduction15729.relations [1806] reduction15729.output := by lin_cert using reduction15729.terms
def image15730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15730 : InImage map_11_232 image15730 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15730 : Bundle := named_bundle% "RealMapCertificates/relations/basis15730.json"
theorem reductionProof15730 : EqualModuloRelations reduction15730.relations reduction15730.input reduction15730.output := by lin_cert using reduction15730.terms
theorem substitutionProof15730 : IsMapEvaluation generatorImages reduction15730.relations [196,324] reduction15730.output := by lin_cert using reduction15730.terms
def image15731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15731 : InImage map_11_232 image15731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15731 : Bundle := named_bundle% "RealMapCertificates/relations/basis15731.json"
theorem reductionProof15731 : EqualModuloRelations reduction15731.relations reduction15731.input reduction15731.output := by lin_cert using reduction15731.terms
theorem substitutionProof15731 : IsMapEvaluation generatorImages reduction15731.relations [0,0,190,324] reduction15731.output := by lin_cert using reduction15731.terms
def map_11_233 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15962 : InImage map_11_233 image15962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15962 : Bundle := named_bundle% "RealMapCertificates/relations/basis15962.json"
theorem reductionProof15962 : EqualModuloRelations reduction15962.relations reduction15962.input reduction15962.output := by lin_cert using reduction15962.terms
theorem substitutionProof15962 : IsMapEvaluation generatorImages reduction15962.relations [202,324] reduction15962.output := by lin_cert using reduction15962.terms
def image15963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15963 : InImage map_11_233 image15963 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15963 : Bundle := named_bundle% "RealMapCertificates/relations/basis15963.json"
theorem reductionProof15963 : EqualModuloRelations reduction15963.relations reduction15963.input reduction15963.output := by lin_cert using reduction15963.terms
theorem substitutionProof15963 : IsMapEvaluation generatorImages reduction15963.relations [3,1649] reduction15963.output := by lin_cert using reduction15963.terms
def map_11_234 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16219 : InImage map_11_234 image16219 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16219 : Bundle := named_bundle% "RealMapCertificates/relations/basis16219.json"
theorem reductionProof16219 : EqualModuloRelations reduction16219.relations reduction16219.input reduction16219.output := by lin_cert using reduction16219.terms
theorem substitutionProof16219 : IsMapEvaluation generatorImages reduction16219.relations [1853] reduction16219.output := by lin_cert using reduction16219.terms
def image16220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16220 : InImage map_11_234 image16220 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16220 : Bundle := named_bundle% "RealMapCertificates/relations/basis16220.json"
theorem reductionProof16220 : EqualModuloRelations reduction16220.relations reduction16220.input reduction16220.output := by lin_cert using reduction16220.terms
theorem substitutionProof16220 : IsMapEvaluation generatorImages reduction16220.relations [0,0,1809] reduction16220.output := by lin_cert using reduction16220.terms
def image16221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16221 : InImage map_11_234 image16221 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16221 : Bundle := named_bundle% "RealMapCertificates/relations/basis16221.json"
theorem reductionProof16221 : EqualModuloRelations reduction16221.relations reduction16221.input reduction16221.output := by lin_cert using reduction16221.terms
theorem substitutionProof16221 : IsMapEvaluation generatorImages reduction16221.relations [0,0,197,324] reduction16221.output := by lin_cert using reduction16221.terms
def map_11_235 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16402 : InImage map_11_235 image16402 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16402 : Bundle := named_bundle% "RealMapCertificates/relations/basis16402.json"
theorem reductionProof16402 : EqualModuloRelations reduction16402.relations reduction16402.input reduction16402.output := by lin_cert using reduction16402.terms
theorem substitutionProof16402 : IsMapEvaluation generatorImages reduction16402.relations [209,324] reduction16402.output := by lin_cert using reduction16402.terms
def image16403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16403 : InImage map_11_235 image16403 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16403 : Bundle := named_bundle% "RealMapCertificates/relations/basis16403.json"
theorem reductionProof16403 : EqualModuloRelations reduction16403.relations reduction16403.input reduction16403.output := by lin_cert using reduction16403.terms
theorem substitutionProof16403 : IsMapEvaluation generatorImages reduction16403.relations [0,7,1531] reduction16403.output := by lin_cert using reduction16403.terms
def map_11_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16630 : InImage map_11_236 image16630 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16630 : Bundle := named_bundle% "RealMapCertificates/relations/basis16630.json"
theorem reductionProof16630 : EqualModuloRelations reduction16630.relations reduction16630.input reduction16630.output := by lin_cert using reduction16630.terms
theorem substitutionProof16630 : IsMapEvaluation generatorImages reduction16630.relations [7,7,1281] reduction16630.output := by lin_cert using reduction16630.terms
def image16631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16631 : InImage map_11_236 image16631 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16631 : Bundle := named_bundle% "RealMapCertificates/relations/basis16631.json"
theorem reductionProof16631 : EqualModuloRelations reduction16631.relations reduction16631.input reduction16631.output := by lin_cert using reduction16631.terms
theorem substitutionProof16631 : IsMapEvaluation generatorImages reduction16631.relations [0,3,174,324] reduction16631.output := by lin_cert using reduction16631.terms
def map_11_237 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16882 : InImage map_11_237 image16882 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16882 : Bundle := named_bundle% "RealMapCertificates/relations/basis16882.json"
theorem reductionProof16882 : EqualModuloRelations reduction16882.relations reduction16882.input reduction16882.output := by lin_cert using reduction16882.terms
theorem substitutionProof16882 : IsMapEvaluation generatorImages reduction16882.relations [2,2,181,324] reduction16882.output := by lin_cert using reduction16882.terms
def image16883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16883 : InImage map_11_237 image16883 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16883 : Bundle := named_bundle% "RealMapCertificates/relations/basis16883.json"
theorem reductionProof16883 : EqualModuloRelations reduction16883.relations reduction16883.input reduction16883.output := by lin_cert using reduction16883.terms
theorem substitutionProof16883 : IsMapEvaluation generatorImages reduction16883.relations [0,0,0,203,324] reduction16883.output := by lin_cert using reduction16883.terms
def map_11_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17079 : InImage map_11_238 image17079 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17079 : Bundle := named_bundle% "RealMapCertificates/relations/basis17079.json"
theorem reductionProof17079 : EqualModuloRelations reduction17079.relations reduction17079.input reduction17079.output := by lin_cert using reduction17079.terms
theorem substitutionProof17079 : IsMapEvaluation generatorImages reduction17079.relations [1956] reduction17079.output := by lin_cert using reduction17079.terms
def image17080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17080 : InImage map_11_238 image17080 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17080 : Bundle := named_bundle% "RealMapCertificates/relations/basis17080.json"
theorem reductionProof17080 : EqualModuloRelations reduction17080.relations reduction17080.input reduction17080.output := by lin_cert using reduction17080.terms
theorem substitutionProof17080 : IsMapEvaluation generatorImages reduction17080.relations [1955] reduction17080.output := by lin_cert using reduction17080.terms
def image17081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17081 : InImage map_11_238 image17081 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17081 : Bundle := named_bundle% "RealMapCertificates/relations/basis17081.json"
theorem reductionProof17081 : EqualModuloRelations reduction17081.relations reduction17081.input reduction17081.output := by lin_cert using reduction17081.terms
theorem substitutionProof17081 : IsMapEvaluation generatorImages reduction17081.relations [221,324] reduction17081.output := by lin_cert using reduction17081.terms
def image17082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17082 : InImage map_11_238 image17082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17082 : Bundle := named_bundle% "RealMapCertificates/relations/basis17082.json"
theorem reductionProof17082 : EqualModuloRelations reduction17082.relations reduction17082.input reduction17082.output := by lin_cert using reduction17082.terms
theorem substitutionProof17082 : IsMapEvaluation generatorImages reduction17082.relations [1,213,324] reduction17082.output := by lin_cert using reduction17082.terms
def map_11_239 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17331 : InImage map_11_239 image17331 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17331 : Bundle := named_bundle% "RealMapCertificates/relations/basis17331.json"
theorem reductionProof17331 : EqualModuloRelations reduction17331.relations reduction17331.input reduction17331.output := by lin_cert using reduction17331.terms
theorem substitutionProof17331 : IsMapEvaluation generatorImages reduction17331.relations [1988] reduction17331.output := by lin_cert using reduction17331.terms
def image17332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17332 : InImage map_11_239 image17332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17332 : Bundle := named_bundle% "RealMapCertificates/relations/basis17332.json"
theorem reductionProof17332 : EqualModuloRelations reduction17332.relations reduction17332.input reduction17332.output := by lin_cert using reduction17332.terms
theorem substitutionProof17332 : IsMapEvaluation generatorImages reduction17332.relations [0,1957] reduction17332.output := by lin_cert using reduction17332.terms
def image17333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17333 : InImage map_11_239 image17333 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17333 : Bundle := named_bundle% "RealMapCertificates/relations/basis17333.json"
theorem reductionProof17333 : EqualModuloRelations reduction17333.relations reduction17333.input reduction17333.output := by lin_cert using reduction17333.terms
theorem substitutionProof17333 : IsMapEvaluation generatorImages reduction17333.relations [0,0,216,324] reduction17333.output := by lin_cert using reduction17333.terms
def map_11_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17634 : InImage map_11_240 image17634 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17634 : Bundle := named_bundle% "RealMapCertificates/relations/basis17634.json"
theorem reductionProof17634 : EqualModuloRelations reduction17634.relations reduction17634.input reduction17634.output := by lin_cert using reduction17634.terms
theorem substitutionProof17634 : IsMapEvaluation generatorImages reduction17634.relations [2031] reduction17634.output := by lin_cert using reduction17634.terms
def image17635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17635 : InImage map_11_240 image17635 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17635 : Bundle := named_bundle% "RealMapCertificates/relations/basis17635.json"
theorem reductionProof17635 : EqualModuloRelations reduction17635.relations reduction17635.input reduction17635.output := by lin_cert using reduction17635.terms
theorem substitutionProof17635 : IsMapEvaluation generatorImages reduction17635.relations [43,68,324] reduction17635.output := by lin_cert using reduction17635.terms
def image17636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17636 : InImage map_11_240 image17636 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17636 : Bundle := named_bundle% "RealMapCertificates/relations/basis17636.json"
theorem reductionProof17636 : EqualModuloRelations reduction17636.relations reduction17636.input reduction17636.output := by lin_cert using reduction17636.terms
theorem substitutionProof17636 : IsMapEvaluation generatorImages reduction17636.relations [3,1808] reduction17636.output := by lin_cert using reduction17636.terms
def image17637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17637 : InImage map_11_240 image17637 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17637 : Bundle := named_bundle% "RealMapCertificates/relations/basis17637.json"
theorem reductionProof17637 : EqualModuloRelations reduction17637.relations reduction17637.input reduction17637.output := by lin_cert using reduction17637.terms
theorem substitutionProof17637 : IsMapEvaluation generatorImages reduction17637.relations [1,1957] reduction17637.output := by lin_cert using reduction17637.terms
def image17638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17638 : InImage map_11_240 image17638 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17638 : Bundle := named_bundle% "RealMapCertificates/relations/basis17638.json"
theorem reductionProof17638 : EqualModuloRelations reduction17638.relations reduction17638.input reduction17638.output := by lin_cert using reduction17638.terms
theorem substitutionProof17638 : IsMapEvaluation generatorImages reduction17638.relations [1,3,190,324] reduction17638.output := by lin_cert using reduction17638.terms
def image17639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17639 : InImage map_11_240 image17639 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17639 : Bundle := named_bundle% "RealMapCertificates/relations/basis17639.json"
theorem reductionProof17639 : EqualModuloRelations reduction17639.relations reduction17639.input reduction17639.output := by lin_cert using reduction17639.terms
theorem substitutionProof17639 : IsMapEvaluation generatorImages reduction17639.relations [0,0,1958] reduction17639.output := by lin_cert using reduction17639.terms
def map_11_241 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17846 : InImage map_11_241 image17846 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17846 : Bundle := named_bundle% "RealMapCertificates/relations/basis17846.json"
theorem reductionProof17846 : EqualModuloRelations reduction17846.relations reduction17846.input reduction17846.output := by lin_cert using reduction17846.terms
theorem substitutionProof17846 : IsMapEvaluation generatorImages reduction17846.relations [0,3,1809] reduction17846.output := by lin_cert using reduction17846.terms
def image17847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17847 : InImage map_11_241 image17847 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17847 : Bundle := named_bundle% "RealMapCertificates/relations/basis17847.json"
theorem reductionProof17847 : EqualModuloRelations reduction17847.relations reduction17847.input reduction17847.output := by lin_cert using reduction17847.terms
theorem substitutionProof17847 : IsMapEvaluation generatorImages reduction17847.relations [0,3,197,324] reduction17847.output := by lin_cert using reduction17847.terms
def map_11_242 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18109 : InImage map_11_242 image18109 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18109 : Bundle := named_bundle% "RealMapCertificates/relations/basis18109.json"
theorem reductionProof18109 : EqualModuloRelations reduction18109.relations reduction18109.input reduction18109.output := by lin_cert using reduction18109.terms
theorem substitutionProof18109 : IsMapEvaluation generatorImages reduction18109.relations [2087] reduction18109.output := by lin_cert using reduction18109.terms
def image18110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18110 : InImage map_11_242 image18110 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18110 : Bundle := named_bundle% "RealMapCertificates/relations/basis18110.json"
theorem reductionProof18110 : EqualModuloRelations reduction18110.relations reduction18110.input reduction18110.output := by lin_cert using reduction18110.terms
theorem substitutionProof18110 : IsMapEvaluation generatorImages reduction18110.relations [0,0,2033] reduction18110.output := by lin_cert using reduction18110.terms
def map_11_243 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18380 : InImage map_11_243 image18380 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18380 : Bundle := named_bundle% "RealMapCertificates/relations/basis18380.json"
theorem reductionProof18380 : EqualModuloRelations reduction18380.relations reduction18380.input reduction18380.output := by lin_cert using reduction18380.terms
theorem substitutionProof18380 : IsMapEvaluation generatorImages reduction18380.relations [2117] reduction18380.output := by lin_cert using reduction18380.terms
def image18381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18381 : InImage map_11_243 image18381 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18381 : Bundle := named_bundle% "RealMapCertificates/relations/basis18381.json"
theorem reductionProof18381 : EqualModuloRelations reduction18381.relations reduction18381.input reduction18381.output := by lin_cert using reduction18381.terms
theorem substitutionProof18381 : IsMapEvaluation generatorImages reduction18381.relations [43,74,324] reduction18381.output := by lin_cert using reduction18381.terms
def image18382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18382 : InImage map_11_243 image18382 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18382 : Bundle := named_bundle% "RealMapCertificates/relations/basis18382.json"
theorem reductionProof18382 : EqualModuloRelations reduction18382.relations reduction18382.input reduction18382.output := by lin_cert using reduction18382.terms
theorem substitutionProof18382 : IsMapEvaluation generatorImages reduction18382.relations [3,3,174,324] reduction18382.output := by lin_cert using reduction18382.terms
def map_11_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18590 : InImage map_11_244 image18590 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18590 : Bundle := named_bundle% "RealMapCertificates/relations/basis18590.json"
theorem reductionProof18590 : EqualModuloRelations reduction18590.relations reduction18590.input reduction18590.output := by lin_cert using reduction18590.terms
theorem substitutionProof18590 : IsMapEvaluation generatorImages reduction18590.relations [2157] reduction18590.output := by lin_cert using reduction18590.terms
def image18591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18591 : InImage map_11_244 image18591 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18591 : Bundle := named_bundle% "RealMapCertificates/relations/basis18591.json"
theorem reductionProof18591 : EqualModuloRelations reduction18591.relations reduction18591.input reduction18591.output := by lin_cert using reduction18591.terms
theorem substitutionProof18591 : IsMapEvaluation generatorImages reduction18591.relations [2156] reduction18591.output := by lin_cert using reduction18591.terms
def image18592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18592 : InImage map_11_244 image18592 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18592 : Bundle := named_bundle% "RealMapCertificates/relations/basis18592.json"
theorem reductionProof18592 : EqualModuloRelations reduction18592.relations reduction18592.input reduction18592.output := by lin_cert using reduction18592.terms
theorem substitutionProof18592 : IsMapEvaluation generatorImages reduction18592.relations [3,213,324] reduction18592.output := by lin_cert using reduction18592.terms
def image18593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18593 : InImage map_11_244 image18593 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18593 : Bundle := named_bundle% "RealMapCertificates/relations/basis18593.json"
theorem reductionProof18593 : EqualModuloRelations reduction18593.relations reduction18593.input reduction18593.output := by lin_cert using reduction18593.terms
theorem substitutionProof18593 : IsMapEvaluation generatorImages reduction18593.relations [1,1,2033] reduction18593.output := by lin_cert using reduction18593.terms
end RealMapCertificates
