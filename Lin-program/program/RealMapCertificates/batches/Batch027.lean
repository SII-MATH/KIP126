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
  | 15 => [[2,4,4]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 21 => [[3,4,4]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 52 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 68 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 81 => []
  | 83 => []
  | 89 => []
  | 90 => []
  | 101 => []
  | 103 => []
  | 106 => []
  | 107 => []
  | 114 => []
  | 120 => []
  | 124 => []
  | 128 => []
  | 141 => []
  | 144 => []
  | 151 => []
  | 155 => []
  | 170 => []
  | 177 => []
  | 178 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 191 => []
  | 195 => []
  | 201 => []
  | 216 => []
  | 263 => []
  | 269 => []
  | 281 => []
  | 282 => []
  | 288 => []
  | 311 => []
  | 314 => []
  | 321 => []
  | 324 => []
  | 332 => []
  | 333 => []
  | 366 => []
  | 1957 => []
  | 2032 => []
  | 2033 => []
  | 2158 => []
  | 2159 => []
  | 2298 => []
  | 2329 => []
  | 2623 => []
  | 2667 => []
  | 2733 => []
  | 2734 => []
  | 2735 => []
  | 2736 => []
  | 2786 => []
  | 2847 => []
  | 2848 => []
  | 2849 => []
  | 2906 => []
  | 2907 => []
  | 2908 => []
  | _ => []
def map_11_245 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18854 : InImage map_11_245 image18854 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18854 : Bundle := named_bundle% "RealMapCertificates/relations/basis18854.json"
theorem reductionProof18854 : EqualModuloRelations reduction18854.relations reduction18854.input reduction18854.output := by lin_cert using reduction18854.terms
theorem substitutionProof18854 : IsMapEvaluation generatorImages reduction18854.relations [0,2,2033] reduction18854.output := by lin_cert using reduction18854.terms
def map_11_246 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19170 : InImage map_11_246 image19170 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19170 : Bundle := named_bundle% "RealMapCertificates/relations/basis19170.json"
theorem reductionProof19170 : EqualModuloRelations reduction19170.relations reduction19170.input reduction19170.output := by lin_cert using reduction19170.terms
theorem substitutionProof19170 : IsMapEvaluation generatorImages reduction19170.relations [3,1957] reduction19170.output := by lin_cert using reduction19170.terms
def image19171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19171 : InImage map_11_246 image19171 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19171 : Bundle := named_bundle% "RealMapCertificates/relations/basis19171.json"
theorem reductionProof19171 : EqualModuloRelations reduction19171.relations reduction19171.input reduction19171.output := by lin_cert using reduction19171.terms
theorem substitutionProof19171 : IsMapEvaluation generatorImages reduction19171.relations [1,2159] reduction19171.output := by lin_cert using reduction19171.terms
def image19172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19172 : InImage map_11_246 image19172 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19172 : Bundle := named_bundle% "RealMapCertificates/relations/basis19172.json"
theorem reductionProof19172 : EqualModuloRelations reduction19172.relations reduction19172.input reduction19172.output := by lin_cert using reduction19172.terms
theorem substitutionProof19172 : IsMapEvaluation generatorImages reduction19172.relations [0,3,216,324] reduction19172.output := by lin_cert using reduction19172.terms
def map_11_247 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19388 : InImage map_11_247 image19388 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19388 : Bundle := named_bundle% "RealMapCertificates/relations/basis19388.json"
theorem reductionProof19388 : EqualModuloRelations reduction19388.relations reduction19388.input reduction19388.output := by lin_cert using reduction19388.terms
theorem substitutionProof19388 : IsMapEvaluation generatorImages reduction19388.relations [263,324] reduction19388.output := by lin_cert using reduction19388.terms
def image19389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19389 : InImage map_11_247 image19389 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19389 : Bundle := named_bundle% "RealMapCertificates/relations/basis19389.json"
theorem reductionProof19389 : EqualModuloRelations reduction19389.relations reduction19389.input reduction19389.output := by lin_cert using reduction19389.terms
theorem substitutionProof19389 : IsMapEvaluation generatorImages reduction19389.relations [0,3,3,191,324] reduction19389.output := by lin_cert using reduction19389.terms
def map_11_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19664 : InImage map_11_248 image19664 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19664 : Bundle := named_bundle% "RealMapCertificates/relations/basis19664.json"
theorem reductionProof19664 : EqualModuloRelations reduction19664.relations reduction19664.input reduction19664.output := by lin_cert using reduction19664.terms
theorem substitutionProof19664 : IsMapEvaluation generatorImages reduction19664.relations [2298] reduction19664.output := by lin_cert using reduction19664.terms
def image19665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19665 : InImage map_11_248 image19665 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19665 : Bundle := named_bundle% "RealMapCertificates/relations/basis19665.json"
theorem reductionProof19665 : EqualModuloRelations reduction19665.relations reduction19665.input reduction19665.output := by lin_cert using reduction19665.terms
theorem substitutionProof19665 : IsMapEvaluation generatorImages reduction19665.relations [269,324] reduction19665.output := by lin_cert using reduction19665.terms
def image19666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19666 : InImage map_11_248 image19666 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19666 : Bundle := named_bundle% "RealMapCertificates/relations/basis19666.json"
theorem reductionProof19666 : EqualModuloRelations reduction19666.relations reduction19666.input reduction19666.output := by lin_cert using reduction19666.terms
theorem substitutionProof19666 : IsMapEvaluation generatorImages reduction19666.relations [3,2032] reduction19666.output := by lin_cert using reduction19666.terms
def image19667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19667 : InImage map_11_248 image19667 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19667 : Bundle := named_bundle% "RealMapCertificates/relations/basis19667.json"
theorem reductionProof19667 : EqualModuloRelations reduction19667.relations reduction19667.input reduction19667.output := by lin_cert using reduction19667.terms
theorem substitutionProof19667 : IsMapEvaluation generatorImages reduction19667.relations [2,2158] reduction19667.output := by lin_cert using reduction19667.terms
def image19668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19668 : InImage map_11_248 image19668 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19668 : Bundle := named_bundle% "RealMapCertificates/relations/basis19668.json"
theorem reductionProof19668 : EqualModuloRelations reduction19668.relations reduction19668.input reduction19668.output := by lin_cert using reduction19668.terms
theorem substitutionProof19668 : IsMapEvaluation generatorImages reduction19668.relations [2,2,2033] reduction19668.output := by lin_cert using reduction19668.terms
def map_11_250 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20195 : InImage map_11_250 image20195 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20195 : Bundle := named_bundle% "RealMapCertificates/relations/basis20195.json"
theorem reductionProof20195 : EqualModuloRelations reduction20195.relations reduction20195.input reduction20195.output := by lin_cert using reduction20195.terms
theorem substitutionProof20195 : IsMapEvaluation generatorImages reduction20195.relations [281,324] reduction20195.output := by lin_cert using reduction20195.terms
def image20196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20196 : InImage map_11_250 image20196 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20196 : Bundle := named_bundle% "RealMapCertificates/relations/basis20196.json"
theorem reductionProof20196 : EqualModuloRelations reduction20196.relations reduction20196.input reduction20196.output := by lin_cert using reduction20196.terms
theorem substitutionProof20196 : IsMapEvaluation generatorImages reduction20196.relations [0,2329] reduction20196.output := by lin_cert using reduction20196.terms
def map_11_251 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20465 : InImage map_11_251 image20465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20465 : Bundle := named_bundle% "RealMapCertificates/relations/basis20465.json"
theorem reductionProof20465 : EqualModuloRelations reduction20465.relations reduction20465.input reduction20465.output := by lin_cert using reduction20465.terms
theorem substitutionProof20465 : IsMapEvaluation generatorImages reduction20465.relations [288,324] reduction20465.output := by lin_cert using reduction20465.terms
def image20466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20466 : InImage map_11_251 image20466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20466 : Bundle := named_bundle% "RealMapCertificates/relations/basis20466.json"
theorem reductionProof20466 : EqualModuloRelations reduction20466.relations reduction20466.input reduction20466.output := by lin_cert using reduction20466.terms
theorem substitutionProof20466 : IsMapEvaluation generatorImages reduction20466.relations [1,2329] reduction20466.output := by lin_cert using reduction20466.terms
def map_11_252 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20787 : InImage map_11_252 image20787 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20787 : Bundle := named_bundle% "RealMapCertificates/relations/basis20787.json"
theorem reductionProof20787 : EqualModuloRelations reduction20787.relations reduction20787.input reduction20787.output := by lin_cert using reduction20787.terms
theorem substitutionProof20787 : IsMapEvaluation generatorImages reduction20787.relations [1,282,324] reduction20787.output := by lin_cert using reduction20787.terms
def map_11_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21019 : InImage map_11_253 image21019 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21019 : Bundle := named_bundle% "RealMapCertificates/relations/basis21019.json"
theorem reductionProof21019 : EqualModuloRelations reduction21019.relations reduction21019.input reduction21019.output := by lin_cert using reduction21019.terms
theorem substitutionProof21019 : IsMapEvaluation generatorImages reduction21019.relations [2,2329] reduction21019.output := by lin_cert using reduction21019.terms
def map_11_255 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21670 : InImage map_11_255 image21670 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21670 : Bundle := named_bundle% "RealMapCertificates/relations/basis21670.json"
theorem reductionProof21670 : EqualModuloRelations reduction21670.relations reduction21670.input reduction21670.output := by lin_cert using reduction21670.terms
theorem substitutionProof21670 : IsMapEvaluation generatorImages reduction21670.relations [311,324] reduction21670.output := by lin_cert using reduction21670.terms
def map_11_256 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image21956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21956 : InImage map_11_256 image21956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21956 : Bundle := named_bundle% "RealMapCertificates/relations/basis21956.json"
theorem reductionProof21956 : EqualModuloRelations reduction21956.relations reduction21956.input reduction21956.output := by lin_cert using reduction21956.terms
theorem substitutionProof21956 : IsMapEvaluation generatorImages reduction21956.relations [2623] reduction21956.output := by lin_cert using reduction21956.terms
def image21957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21957 : InImage map_11_256 image21957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21957 : Bundle := named_bundle% "RealMapCertificates/relations/basis21957.json"
theorem reductionProof21957 : EqualModuloRelations reduction21957.relations reduction21957.input reduction21957.output := by lin_cert using reduction21957.terms
theorem substitutionProof21957 : IsMapEvaluation generatorImages reduction21957.relations [321,324] reduction21957.output := by lin_cert using reduction21957.terms
def image21958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21958 : InImage map_11_256 image21958 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21958 : Bundle := named_bundle% "RealMapCertificates/relations/basis21958.json"
theorem reductionProof21958 : EqualModuloRelations reduction21958.relations reduction21958.input reduction21958.output := by lin_cert using reduction21958.terms
theorem substitutionProof21958 : IsMapEvaluation generatorImages reduction21958.relations [0,314,324] reduction21958.output := by lin_cert using reduction21958.terms
def map_11_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22290 : InImage map_11_257 image22290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22290 : Bundle := named_bundle% "RealMapCertificates/relations/basis22290.json"
theorem reductionProof22290 : EqualModuloRelations reduction22290.relations reduction22290.input reduction22290.output := by lin_cert using reduction22290.terms
theorem substitutionProof22290 : IsMapEvaluation generatorImages reduction22290.relations [324,332] reduction22290.output := by lin_cert using reduction22290.terms
def map_11_258 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image22665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22665 : InImage map_11_258 image22665 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22665 : Bundle := named_bundle% "RealMapCertificates/relations/basis22665.json"
theorem reductionProof22665 : EqualModuloRelations reduction22665.relations reduction22665.input reduction22665.output := by lin_cert using reduction22665.terms
theorem substitutionProof22665 : IsMapEvaluation generatorImages reduction22665.relations [2735] reduction22665.output := by lin_cert using reduction22665.terms
def image22666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22666 : InImage map_11_258 image22666 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22666 : Bundle := named_bundle% "RealMapCertificates/relations/basis22666.json"
theorem reductionProof22666 : EqualModuloRelations reduction22666.relations reduction22666.input reduction22666.output := by lin_cert using reduction22666.terms
theorem substitutionProof22666 : IsMapEvaluation generatorImages reduction22666.relations [2734] reduction22666.output := by lin_cert using reduction22666.terms
def image22667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22667 : InImage map_11_258 image22667 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22667 : Bundle := named_bundle% "RealMapCertificates/relations/basis22667.json"
theorem reductionProof22667 : EqualModuloRelations reduction22667.relations reduction22667.input reduction22667.output := by lin_cert using reduction22667.terms
theorem substitutionProof22667 : IsMapEvaluation generatorImages reduction22667.relations [2733] reduction22667.output := by lin_cert using reduction22667.terms
def image22668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22668 : InImage map_11_258 image22668 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22668 : Bundle := named_bundle% "RealMapCertificates/relations/basis22668.json"
theorem reductionProof22668 : EqualModuloRelations reduction22668.relations reduction22668.input reduction22668.output := by lin_cert using reduction22668.terms
theorem substitutionProof22668 : IsMapEvaluation generatorImages reduction22668.relations [0,324,333] reduction22668.output := by lin_cert using reduction22668.terms
def map_11_259 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image22980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22980 : InImage map_11_259 image22980 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22980 : Bundle := named_bundle% "RealMapCertificates/relations/basis22980.json"
theorem reductionProof22980 : EqualModuloRelations reduction22980.relations reduction22980.input reduction22980.output := by lin_cert using reduction22980.terms
theorem substitutionProof22980 : IsMapEvaluation generatorImages reduction22980.relations [2786] reduction22980.output := by lin_cert using reduction22980.terms
def image22981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22981 : InImage map_11_259 image22981 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22981 : Bundle := named_bundle% "RealMapCertificates/relations/basis22981.json"
theorem reductionProof22981 : EqualModuloRelations reduction22981.relations reduction22981.input reduction22981.output := by lin_cert using reduction22981.terms
theorem substitutionProof22981 : IsMapEvaluation generatorImages reduction22981.relations [0,2736] reduction22981.output := by lin_cert using reduction22981.terms
def image22982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22982 : InImage map_11_259 image22982 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22982 : Bundle := named_bundle% "RealMapCertificates/relations/basis22982.json"
theorem reductionProof22982 : EqualModuloRelations reduction22982.relations reduction22982.input reduction22982.output := by lin_cert using reduction22982.terms
theorem substitutionProof22982 : IsMapEvaluation generatorImages reduction22982.relations [0,0,2667] reduction22982.output := by lin_cert using reduction22982.terms
def map_11_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23378 : InImage map_11_260 image23378 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23378 : Bundle := named_bundle% "RealMapCertificates/relations/basis23378.json"
theorem reductionProof23378 : EqualModuloRelations reduction23378.relations reduction23378.input reduction23378.output := by lin_cert using reduction23378.terms
theorem substitutionProof23378 : IsMapEvaluation generatorImages reduction23378.relations [2847] reduction23378.output := by lin_cert using reduction23378.terms
def image23379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23379 : InImage map_11_260 image23379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23379 : Bundle := named_bundle% "RealMapCertificates/relations/basis23379.json"
theorem reductionProof23379 : EqualModuloRelations reduction23379.relations reduction23379.input reduction23379.output := by lin_cert using reduction23379.terms
theorem substitutionProof23379 : IsMapEvaluation generatorImages reduction23379.relations [1,2736] reduction23379.output := by lin_cert using reduction23379.terms
def map_11_261 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23795 : InImage map_11_261 image23795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23795 : Bundle := named_bundle% "RealMapCertificates/relations/basis23795.json"
theorem reductionProof23795 : EqualModuloRelations reduction23795.relations reduction23795.input reduction23795.output := by lin_cert using reduction23795.terms
theorem substitutionProof23795 : IsMapEvaluation generatorImages reduction23795.relations [2908] reduction23795.output := by lin_cert using reduction23795.terms
def image23796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23796 : InImage map_11_261 image23796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23796 : Bundle := named_bundle% "RealMapCertificates/relations/basis23796.json"
theorem reductionProof23796 : EqualModuloRelations reduction23796.relations reduction23796.input reduction23796.output := by lin_cert using reduction23796.terms
theorem substitutionProof23796 : IsMapEvaluation generatorImages reduction23796.relations [2907] reduction23796.output := by lin_cert using reduction23796.terms
def image23797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23797 : InImage map_11_261 image23797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23797 : Bundle := named_bundle% "RealMapCertificates/relations/basis23797.json"
theorem reductionProof23797 : EqualModuloRelations reduction23797.relations reduction23797.input reduction23797.output := by lin_cert using reduction23797.terms
theorem substitutionProof23797 : IsMapEvaluation generatorImages reduction23797.relations [2906] reduction23797.output := by lin_cert using reduction23797.terms
def image23798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23798 : InImage map_11_261 image23798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23798 : Bundle := named_bundle% "RealMapCertificates/relations/basis23798.json"
theorem reductionProof23798 : EqualModuloRelations reduction23798.relations reduction23798.input reduction23798.output := by lin_cert using reduction23798.terms
theorem substitutionProof23798 : IsMapEvaluation generatorImages reduction23798.relations [0,2849] reduction23798.output := by lin_cert using reduction23798.terms
def image23799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23799 : InImage map_11_261 image23799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23799 : Bundle := named_bundle% "RealMapCertificates/relations/basis23799.json"
theorem reductionProof23799 : EqualModuloRelations reduction23799.relations reduction23799.input reduction23799.output := by lin_cert using reduction23799.terms
theorem substitutionProof23799 : IsMapEvaluation generatorImages reduction23799.relations [0,2848] reduction23799.output := by lin_cert using reduction23799.terms
def image23800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23800 : InImage map_11_261 image23800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23800 : Bundle := named_bundle% "RealMapCertificates/relations/basis23800.json"
theorem reductionProof23800 : EqualModuloRelations reduction23800.relations reduction23800.input reduction23800.output := by lin_cert using reduction23800.terms
theorem substitutionProof23800 : IsMapEvaluation generatorImages reduction23800.relations [0,324,366] reduction23800.output := by lin_cert using reduction23800.terms
def map_12_12 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image24 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation24 : InImage map_12_12 image24 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction24 : Bundle := named_bundle% "RealMapCertificates/relations/basis24.json"
theorem reductionProof24 : EqualModuloRelations reduction24.relations reduction24.input reduction24.output := by lin_cert using reduction24.terms
theorem substitutionProof24 : IsMapEvaluation generatorImages reduction24.relations [0,0,0,0,0,0,0,0,0,0,0,0] reduction24.output := by lin_cert using reduction24.terms
def map_12_35 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation122 : InImage map_12_35 image122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction122 : Bundle := named_bundle% "RealMapCertificates/relations/basis122.json"
theorem reductionProof122 : EqualModuloRelations reduction122.relations reduction122.input reduction122.output := by lin_cert using reduction122.terms
theorem substitutionProof122 : IsMapEvaluation generatorImages reduction122.relations [0,0,0,0,0,17] reduction122.output := by lin_cert using reduction122.terms
def map_12_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image139 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation139 : InImage map_12_37 image139 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction139 : Bundle := named_bundle% "RealMapCertificates/relations/basis139.json"
theorem reductionProof139 : EqualModuloRelations reduction139.relations reduction139.input reduction139.output := by lin_cert using reduction139.terms
theorem substitutionProof139 : IsMapEvaluation generatorImages reduction139.relations [1,21] reduction139.output := by lin_cert using reduction139.terms
def map_12_42 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image181 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation181 : InImage map_12_42 image181 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction181 : Bundle := named_bundle% "RealMapCertificates/relations/basis181.json"
theorem reductionProof181 : EqualModuloRelations reduction181.relations reduction181.input reduction181.output := by lin_cert using reduction181.terms
theorem substitutionProof181 : IsMapEvaluation generatorImages reduction181.relations [31] reduction181.output := by lin_cert using reduction181.terms
def map_12_43 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image192 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation192 : InImage map_12_43 image192 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction192 : Bundle := named_bundle% "RealMapCertificates/relations/basis192.json"
theorem reductionProof192 : EqualModuloRelations reduction192.relations reduction192.input reduction192.output := by lin_cert using reduction192.terms
theorem substitutionProof192 : IsMapEvaluation generatorImages reduction192.relations [0,0,0,0,0,0,0,0,0,0,0,18] reduction192.output := by lin_cert using reduction192.terms
def map_12_45 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image214 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation214 : InImage map_12_45 image214 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction214 : Bundle := named_bundle% "RealMapCertificates/relations/basis214.json"
theorem reductionProof214 : EqualModuloRelations reduction214.relations reduction214.input reduction214.output := by lin_cert using reduction214.terms
theorem substitutionProof214 : IsMapEvaluation generatorImages reduction214.relations [39] reduction214.output := by lin_cert using reduction214.terms
def map_12_46 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image226 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation226 : InImage map_12_46 image226 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction226 : Bundle := named_bundle% "RealMapCertificates/relations/basis226.json"
theorem reductionProof226 : EqualModuloRelations reduction226.relations reduction226.input reduction226.output := by lin_cert using reduction226.terms
theorem substitutionProof226 : IsMapEvaluation generatorImages reduction226.relations [0,40] reduction226.output := by lin_cert using reduction226.terms
def map_12_48 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image242 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation242 : InImage map_12_48 image242 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction242 : Bundle := named_bundle% "RealMapCertificates/relations/basis242.json"
theorem reductionProof242 : EqualModuloRelations reduction242.relations reduction242.input reduction242.output := by lin_cert using reduction242.terms
theorem substitutionProof242 : IsMapEvaluation generatorImages reduction242.relations [8,16] reduction242.output := by lin_cert using reduction242.terms
def map_12_49 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image253 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation253 : InImage map_12_49 image253 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction253 : Bundle := named_bundle% "RealMapCertificates/relations/basis253.json"
theorem reductionProof253 : EqualModuloRelations reduction253.relations reduction253.input reduction253.output := by lin_cert using reduction253.terms
theorem substitutionProof253 : IsMapEvaluation generatorImages reduction253.relations [0,8,17] reduction253.output := by lin_cert using reduction253.terms
def map_12_51 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image267 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation267 : InImage map_12_51 image267 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction267 : Bundle := named_bundle% "RealMapCertificates/relations/basis267.json"
theorem reductionProof267 : EqualModuloRelations reduction267.relations reduction267.input reduction267.output := by lin_cert using reduction267.terms
theorem substitutionProof267 : IsMapEvaluation generatorImages reduction267.relations [8,19] reduction267.output := by lin_cert using reduction267.terms
def map_12_52 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image276 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation276 : InImage map_12_52 image276 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction276 : Bundle := named_bundle% "RealMapCertificates/relations/basis276.json"
theorem reductionProof276 : EqualModuloRelations reduction276.relations reduction276.input reduction276.output := by lin_cert using reduction276.terms
theorem substitutionProof276 : IsMapEvaluation generatorImages reduction276.relations [0,8,20] reduction276.output := by lin_cert using reduction276.terms
def map_12_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image293 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation293 : InImage map_12_54 image293 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction293 : Bundle := named_bundle% "RealMapCertificates/relations/basis293.json"
theorem reductionProof293 : EqualModuloRelations reduction293.relations reduction293.input reduction293.output := by lin_cert using reduction293.terms
theorem substitutionProof293 : IsMapEvaluation generatorImages reduction293.relations [8,8,8] reduction293.output := by lin_cert using reduction293.terms
def map_12_55 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation306 : InImage map_12_55 image306 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction306 : Bundle := named_bundle% "RealMapCertificates/relations/basis306.json"
theorem reductionProof306 : EqualModuloRelations reduction306.relations reduction306.input reduction306.output := by lin_cert using reduction306.terms
theorem substitutionProof306 : IsMapEvaluation generatorImages reduction306.relations [0,8,22] reduction306.output := by lin_cert using reduction306.terms
def map_12_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image325 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation325 : InImage map_12_57 image325 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction325 : Bundle := named_bundle% "RealMapCertificates/relations/basis325.json"
theorem reductionProof325 : EqualModuloRelations reduction325.relations reduction325.input reduction325.output := by lin_cert using reduction325.terms
theorem substitutionProof325 : IsMapEvaluation generatorImages reduction325.relations [8,8,9] reduction325.output := by lin_cert using reduction325.terms
def map_12_60 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image353 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation353 : InImage map_12_60 image353 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction353 : Bundle := named_bundle% "RealMapCertificates/relations/basis353.json"
theorem reductionProof353 : EqualModuloRelations reduction353.relations reduction353.input reduction353.output := by lin_cert using reduction353.terms
theorem substitutionProof353 : IsMapEvaluation generatorImages reduction353.relations [8,8,13] reduction353.output := by lin_cert using reduction353.terms
def map_12_63 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image383 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation383 : InImage map_12_63 image383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction383 : Bundle := named_bundle% "RealMapCertificates/relations/basis383.json"
theorem reductionProof383 : EqualModuloRelations reduction383.relations reduction383.input reduction383.output := by lin_cert using reduction383.terms
theorem substitutionProof383 : IsMapEvaluation generatorImages reduction383.relations [8,9,13] reduction383.output := by lin_cert using reduction383.terms
def map_12_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation408 : InImage map_12_65 image408 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction408 : Bundle := named_bundle% "RealMapCertificates/relations/basis408.json"
theorem reductionProof408 : EqualModuloRelations reduction408.relations reduction408.input reduction408.output := by lin_cert using reduction408.terms
theorem substitutionProof408 : IsMapEvaluation generatorImages reduction408.relations [0,0,64] reduction408.output := by lin_cert using reduction408.terms
def map_12_66 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image427 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation427 : InImage map_12_66 image427 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction427 : Bundle := named_bundle% "RealMapCertificates/relations/basis427.json"
theorem reductionProof427 : EqualModuloRelations reduction427.relations reduction427.input reduction427.output := by lin_cert using reduction427.terms
theorem substitutionProof427 : IsMapEvaluation generatorImages reduction427.relations [8,13,13] reduction427.output := by lin_cert using reduction427.terms
def image428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation428 : InImage map_12_66 image428 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction428 : Bundle := named_bundle% "RealMapCertificates/relations/basis428.json"
theorem reductionProof428 : EqualModuloRelations reduction428.relations reduction428.input reduction428.output := by lin_cert using reduction428.terms
theorem substitutionProof428 : IsMapEvaluation generatorImages reduction428.relations [0,0,66] reduction428.output := by lin_cert using reduction428.terms
def map_12_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation446 : InImage map_12_67 image446 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction446 : Bundle := named_bundle% "RealMapCertificates/relations/basis446.json"
theorem reductionProof446 : EqualModuloRelations reduction446.relations reduction446.input reduction446.output := by lin_cert using reduction446.terms
theorem substitutionProof446 : IsMapEvaluation generatorImages reduction446.relations [1,1,64] reduction446.output := by lin_cert using reduction446.terms
def map_12_68 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image464 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation464 : InImage map_12_68 image464 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction464 : Bundle := named_bundle% "RealMapCertificates/relations/basis464.json"
theorem reductionProof464 : EqualModuloRelations reduction464.relations reduction464.input reduction464.output := by lin_cert using reduction464.terms
theorem substitutionProof464 : IsMapEvaluation generatorImages reduction464.relations [0,0,72] reduction464.output := by lin_cert using reduction464.terms
def map_12_69 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image487 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation487 : InImage map_12_69 image487 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction487 : Bundle := named_bundle% "RealMapCertificates/relations/basis487.json"
theorem reductionProof487 : EqualModuloRelations reduction487.relations reduction487.input reduction487.output := by lin_cert using reduction487.terms
theorem substitutionProof487 : IsMapEvaluation generatorImages reduction487.relations [9,13,13] reduction487.output := by lin_cert using reduction487.terms
def map_12_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation524 : InImage map_12_71 image524 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction524 : Bundle := named_bundle% "RealMapCertificates/relations/basis524.json"
theorem reductionProof524 : EqualModuloRelations reduction524.relations reduction524.input reduction524.output := by lin_cert using reduction524.terms
theorem substitutionProof524 : IsMapEvaluation generatorImages reduction524.relations [0,0,79] reduction524.output := by lin_cert using reduction524.terms
def map_12_72 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image543 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation543 : InImage map_12_72 image543 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction543 : Bundle := named_bundle% "RealMapCertificates/relations/basis543.json"
theorem reductionProof543 : EqualModuloRelations reduction543.relations reduction543.input reduction543.output := by lin_cert using reduction543.terms
theorem substitutionProof543 : IsMapEvaluation generatorImages reduction543.relations [13,13,13] reduction543.output := by lin_cert using reduction543.terms
def image544 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation544 : InImage map_12_72 image544 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction544 : Bundle := named_bundle% "RealMapCertificates/relations/basis544.json"
theorem reductionProof544 : EqualModuloRelations reduction544.relations reduction544.input reduction544.output := by lin_cert using reduction544.terms
theorem substitutionProof544 : IsMapEvaluation generatorImages reduction544.relations [0,0,0,80] reduction544.output := by lin_cert using reduction544.terms
def map_12_73 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation569 : InImage map_12_73 image569 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction569 : Bundle := named_bundle% "RealMapCertificates/relations/basis569.json"
theorem reductionProof569 : EqualModuloRelations reduction569.relations reduction569.input reduction569.output := by lin_cert using reduction569.terms
theorem substitutionProof569 : IsMapEvaluation generatorImages reduction569.relations [0,0,0,81] reduction569.output := by lin_cert using reduction569.terms
def map_12_74 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image590 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation590 : InImage map_12_74 image590 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction590 : Bundle := named_bundle% "RealMapCertificates/relations/basis590.json"
theorem reductionProof590 : EqualModuloRelations reduction590.relations reduction590.input reduction590.output := by lin_cert using reduction590.terms
theorem substitutionProof590 : IsMapEvaluation generatorImages reduction590.relations [0,0,90] reduction590.output := by lin_cert using reduction590.terms
def image591 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation591 : InImage map_12_74 image591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction591 : Bundle := named_bundle% "RealMapCertificates/relations/basis591.json"
theorem reductionProof591 : EqualModuloRelations reduction591.relations reduction591.input reduction591.output := by lin_cert using reduction591.terms
theorem substitutionProof591 : IsMapEvaluation generatorImages reduction591.relations [0,0,89] reduction591.output := by lin_cert using reduction591.terms
def map_12_75 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image616 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation616 : InImage map_12_75 image616 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction616 : Bundle := named_bundle% "RealMapCertificates/relations/basis616.json"
theorem reductionProof616 : EqualModuloRelations reduction616.relations reduction616.input reduction616.output := by lin_cert using reduction616.terms
theorem substitutionProof616 : IsMapEvaluation generatorImages reduction616.relations [0,0,0,0,0,0,0,0,0,0,0,69] reduction616.output := by lin_cert using reduction616.terms
def map_12_77 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image653 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation653 : InImage map_12_77 image653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction653 : Bundle := named_bundle% "RealMapCertificates/relations/basis653.json"
theorem reductionProof653 : EqualModuloRelations reduction653.relations reduction653.input reduction653.output := by lin_cert using reduction653.terms
theorem substitutionProof653 : IsMapEvaluation generatorImages reduction653.relations [18,40] reduction653.output := by lin_cert using reduction653.terms
def image654 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation654 : InImage map_12_77 image654 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction654 : Bundle := named_bundle% "RealMapCertificates/relations/basis654.json"
theorem reductionProof654 : EqualModuloRelations reduction654.relations reduction654.input reduction654.output := by lin_cert using reduction654.terms
theorem substitutionProof654 : IsMapEvaluation generatorImages reduction654.relations [0,0,101] reduction654.output := by lin_cert using reduction654.terms
def map_12_78 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image682 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation682 : InImage map_12_78 image682 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction682 : Bundle := named_bundle% "RealMapCertificates/relations/basis682.json"
theorem reductionProof682 : EqualModuloRelations reduction682.relations reduction682.input reduction682.output := by lin_cert using reduction682.terms
theorem substitutionProof682 : IsMapEvaluation generatorImages reduction682.relations [13,52] reduction682.output := by lin_cert using reduction682.terms
def image683 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation683 : InImage map_12_78 image683 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction683 : Bundle := named_bundle% "RealMapCertificates/relations/basis683.json"
theorem reductionProof683 : EqualModuloRelations reduction683.relations reduction683.input reduction683.output := by lin_cert using reduction683.terms
theorem substitutionProof683 : IsMapEvaluation generatorImages reduction683.relations [0,0,103] reduction683.output := by lin_cert using reduction683.terms
def map_12_79 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation703 : InImage map_12_79 image703 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction703 : Bundle := named_bundle% "RealMapCertificates/relations/basis703.json"
theorem reductionProof703 : EqualModuloRelations reduction703.relations reduction703.input reduction703.output := by lin_cert using reduction703.terms
theorem substitutionProof703 : IsMapEvaluation generatorImages reduction703.relations [0,0,0,106] reduction703.output := by lin_cert using reduction703.terms
def map_12_80 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image718 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation718 : InImage map_12_80 image718 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction718 : Bundle := named_bundle% "RealMapCertificates/relations/basis718.json"
theorem reductionProof718 : EqualModuloRelations reduction718.relations reduction718.input reduction718.output := by lin_cert using reduction718.terms
theorem substitutionProof718 : IsMapEvaluation generatorImages reduction718.relations [0,2,101] reduction718.output := by lin_cert using reduction718.terms
def image719 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation719 : InImage map_12_80 image719 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction719 : Bundle := named_bundle% "RealMapCertificates/relations/basis719.json"
theorem reductionProof719 : EqualModuloRelations reduction719.relations reduction719.input reduction719.output := by lin_cert using reduction719.terms
theorem substitutionProof719 : IsMapEvaluation generatorImages reduction719.relations [0,0,0,0,107] reduction719.output := by lin_cert using reduction719.terms
def map_12_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation769 : InImage map_12_82 image769 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction769 : Bundle := named_bundle% "RealMapCertificates/relations/basis769.json"
theorem reductionProof769 : EqualModuloRelations reduction769.relations reduction769.input reduction769.output := by lin_cert using reduction769.terms
theorem substitutionProof769 : IsMapEvaluation generatorImages reduction769.relations [2,114] reduction769.output := by lin_cert using reduction769.terms
def map_12_83 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation789 : InImage map_12_83 image789 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction789 : Bundle := named_bundle% "RealMapCertificates/relations/basis789.json"
theorem reductionProof789 : EqualModuloRelations reduction789.relations reduction789.input reduction789.output := by lin_cert using reduction789.terms
theorem substitutionProof789 : IsMapEvaluation generatorImages reduction789.relations [124] reduction789.output := by lin_cert using reduction789.terms
def image790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation790 : InImage map_12_83 image790 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction790 : Bundle := named_bundle% "RealMapCertificates/relations/basis790.json"
theorem reductionProof790 : EqualModuloRelations reduction790.relations reduction790.input reduction790.output := by lin_cert using reduction790.terms
theorem substitutionProof790 : IsMapEvaluation generatorImages reduction790.relations [0,7,72] reduction790.output := by lin_cert using reduction790.terms
def map_12_84 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation819 : InImage map_12_84 image819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction819 : Bundle := named_bundle% "RealMapCertificates/relations/basis819.json"
theorem reductionProof819 : EqualModuloRelations reduction819.relations reduction819.input reduction819.output := by lin_cert using reduction819.terms
theorem substitutionProof819 : IsMapEvaluation generatorImages reduction819.relations [0,0,8,68] reduction819.output := by lin_cert using reduction819.terms
def map_12_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation869 : InImage map_12_86 image869 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction869 : Bundle := named_bundle% "RealMapCertificates/relations/basis869.json"
theorem reductionProof869 : EqualModuloRelations reduction869.relations reduction869.input reduction869.output := by lin_cert using reduction869.terms
theorem substitutionProof869 : IsMapEvaluation generatorImages reduction869.relations [0,0,0,0,120] reduction869.output := by lin_cert using reduction869.terms
def map_12_89 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation946 : InImage map_12_89 image946 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction946 : Bundle := named_bundle% "RealMapCertificates/relations/basis946.json"
theorem reductionProof946 : EqualModuloRelations reduction946.relations reduction946.input reduction946.output := by lin_cert using reduction946.terms
theorem substitutionProof946 : IsMapEvaluation generatorImages reduction946.relations [144] reduction946.output := by lin_cert using reduction946.terms
def image947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation947 : InImage map_12_89 image947 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction947 : Bundle := named_bundle% "RealMapCertificates/relations/basis947.json"
theorem reductionProof947 : EqualModuloRelations reduction947.relations reduction947.input reduction947.output := by lin_cert using reduction947.terms
theorem substitutionProof947 : IsMapEvaluation generatorImages reduction947.relations [0,0,0,0,0,128] reduction947.output := by lin_cert using reduction947.terms
def map_12_90 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation980 : InImage map_12_90 image980 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction980 : Bundle := named_bundle% "RealMapCertificates/relations/basis980.json"
theorem reductionProof980 : EqualModuloRelations reduction980.relations reduction980.input reduction980.output := by lin_cert using reduction980.terms
theorem substitutionProof980 : IsMapEvaluation generatorImages reduction980.relations [0,0,141] reduction980.output := by lin_cert using reduction980.terms
def map_12_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1029 : InImage map_12_92 image1029 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1029 : Bundle := named_bundle% "RealMapCertificates/relations/basis1029.json"
theorem reductionProof1029 : EqualModuloRelations reduction1029.relations reduction1029.input reduction1029.output := by lin_cert using reduction1029.terms
theorem substitutionProof1029 : IsMapEvaluation generatorImages reduction1029.relations [151] reduction1029.output := by lin_cert using reduction1029.terms
def map_12_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1060 : InImage map_12_93 image1060 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1060 : Bundle := named_bundle% "RealMapCertificates/relations/basis1060.json"
theorem reductionProof1060 : EqualModuloRelations reduction1060.relations reduction1060.input reduction1060.output := by lin_cert using reduction1060.terms
theorem substitutionProof1060 : IsMapEvaluation generatorImages reduction1060.relations [155] reduction1060.output := by lin_cert using reduction1060.terms
def map_12_94 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1084 : InImage map_12_94 image1084 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1084 : Bundle := named_bundle% "RealMapCertificates/relations/basis1084.json"
theorem reductionProof1084 : EqualModuloRelations reduction1084.relations reduction1084.input reduction1084.output := by lin_cert using reduction1084.terms
theorem substitutionProof1084 : IsMapEvaluation generatorImages reduction1084.relations [13,83] reduction1084.output := by lin_cert using reduction1084.terms
def image1085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1085 : InImage map_12_94 image1085 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1085 : Bundle := named_bundle% "RealMapCertificates/relations/basis1085.json"
theorem reductionProof1085 : EqualModuloRelations reduction1085.relations reduction1085.input reduction1085.output := by lin_cert using reduction1085.terms
theorem substitutionProof1085 : IsMapEvaluation generatorImages reduction1085.relations [0,0,15,69] reduction1085.output := by lin_cert using reduction1085.terms
def map_12_98 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1175 : InImage map_12_98 image1175 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1175 : Bundle := named_bundle% "RealMapCertificates/relations/basis1175.json"
theorem reductionProof1175 : EqualModuloRelations reduction1175.relations reduction1175.input reduction1175.output := by lin_cert using reduction1175.terms
theorem substitutionProof1175 : IsMapEvaluation generatorImages reduction1175.relations [170] reduction1175.output := by lin_cert using reduction1175.terms
def image1176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1176 : InImage map_12_98 image1176 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1176 : Bundle := named_bundle% "RealMapCertificates/relations/basis1176.json"
theorem reductionProof1176 : EqualModuloRelations reduction1176.relations reduction1176.input reduction1176.output := by lin_cert using reduction1176.terms
theorem substitutionProof1176 : IsMapEvaluation generatorImages reduction1176.relations [0,0,0,0,17,69] reduction1176.output := by lin_cert using reduction1176.terms
def map_12_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1207 : InImage map_12_99 image1207 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1207 : Bundle := named_bundle% "RealMapCertificates/relations/basis1207.json"
theorem reductionProof1207 : EqualModuloRelations reduction1207.relations reduction1207.input reduction1207.output := by lin_cert using reduction1207.terms
theorem substitutionProof1207 : IsMapEvaluation generatorImages reduction1207.relations [21,69] reduction1207.output := by lin_cert using reduction1207.terms
def map_12_100 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1232 : InImage map_12_100 image1232 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1232 : Bundle := named_bundle% "RealMapCertificates/relations/basis1232.json"
theorem reductionProof1232 : EqualModuloRelations reduction1232.relations reduction1232.input reduction1232.output := by lin_cert using reduction1232.terms
theorem substitutionProof1232 : IsMapEvaluation generatorImages reduction1232.relations [177] reduction1232.output := by lin_cert using reduction1232.terms
def image1233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1233 : InImage map_12_100 image1233 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1233 : Bundle := named_bundle% "RealMapCertificates/relations/basis1233.json"
theorem reductionProof1233 : EqualModuloRelations reduction1233.relations reduction1233.input reduction1233.output := by lin_cert using reduction1233.terms
theorem substitutionProof1233 : IsMapEvaluation generatorImages reduction1233.relations [13,107] reduction1233.output := by lin_cert using reduction1233.terms
def image1234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1234 : InImage map_12_100 image1234 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1234 : Bundle := named_bundle% "RealMapCertificates/relations/basis1234.json"
theorem reductionProof1234 : EqualModuloRelations reduction1234.relations reduction1234.input reduction1234.output := by lin_cert using reduction1234.terms
theorem substitutionProof1234 : IsMapEvaluation generatorImages reduction1234.relations [0,0,0,19,69] reduction1234.output := by lin_cert using reduction1234.terms
def map_12_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1261 : InImage map_12_101 image1261 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1261 : Bundle := named_bundle% "RealMapCertificates/relations/basis1261.json"
theorem reductionProof1261 : EqualModuloRelations reduction1261.relations reduction1261.input reduction1261.output := by lin_cert using reduction1261.terms
theorem substitutionProof1261 : IsMapEvaluation generatorImages reduction1261.relations [0,178] reduction1261.output := by lin_cert using reduction1261.terms
def map_12_102 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1302 : InImage map_12_102 image1302 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1302 : Bundle := named_bundle% "RealMapCertificates/relations/basis1302.json"
theorem reductionProof1302 : EqualModuloRelations reduction1302.relations reduction1302.input reduction1302.output := by lin_cert using reduction1302.terms
theorem substitutionProof1302 : IsMapEvaluation generatorImages reduction1302.relations [187] reduction1302.output := by lin_cert using reduction1302.terms
def map_12_103 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1328 : InImage map_12_103 image1328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1328 : Bundle := named_bundle% "RealMapCertificates/relations/basis1328.json"
theorem reductionProof1328 : EqualModuloRelations reduction1328.relations reduction1328.input reduction1328.output := by lin_cert using reduction1328.terms
theorem substitutionProof1328 : IsMapEvaluation generatorImages reduction1328.relations [23,75] reduction1328.output := by lin_cert using reduction1328.terms
def image1329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1329 : InImage map_12_103 image1329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1329 : Bundle := named_bundle% "RealMapCertificates/relations/basis1329.json"
theorem reductionProof1329 : EqualModuloRelations reduction1329.relations reduction1329.input reduction1329.output := by lin_cert using reduction1329.terms
theorem substitutionProof1329 : IsMapEvaluation generatorImages reduction1329.relations [0,188] reduction1329.output := by lin_cert using reduction1329.terms
def map_12_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1357 : InImage map_12_104 image1357 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1357 : Bundle := named_bundle% "RealMapCertificates/relations/basis1357.json"
theorem reductionProof1357 : EqualModuloRelations reduction1357.relations reduction1357.input reduction1357.output := by lin_cert using reduction1357.terms
theorem substitutionProof1357 : IsMapEvaluation generatorImages reduction1357.relations [195] reduction1357.output := by lin_cert using reduction1357.terms
def image1358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1358 : InImage map_12_104 image1358 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1358 : Bundle := named_bundle% "RealMapCertificates/relations/basis1358.json"
theorem reductionProof1358 : EqualModuloRelations reduction1358.relations reduction1358.input reduction1358.output := by lin_cert using reduction1358.terms
theorem substitutionProof1358 : IsMapEvaluation generatorImages reduction1358.relations [0,0,189] reduction1358.output := by lin_cert using reduction1358.terms
def map_12_105 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1399 : InImage map_12_105 image1399 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1399 : Bundle := named_bundle% "RealMapCertificates/relations/basis1399.json"
theorem reductionProof1399 : EqualModuloRelations reduction1399.relations reduction1399.input reduction1399.output := by lin_cert using reduction1399.terms
theorem substitutionProof1399 : IsMapEvaluation generatorImages reduction1399.relations [201] reduction1399.output := by lin_cert using reduction1399.terms
def image1400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1400 : InImage map_12_105 image1400 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1400 : Bundle := named_bundle% "RealMapCertificates/relations/basis1400.json"
theorem reductionProof1400 : EqualModuloRelations reduction1400.relations reduction1400.input reduction1400.output := by lin_cert using reduction1400.terms
theorem substitutionProof1400 : IsMapEvaluation generatorImages reduction1400.relations [0,0,0,0,0,23,69] reduction1400.output := by lin_cert using reduction1400.terms
def map_12_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1431 : InImage map_12_106 image1431 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1431 : Bundle := named_bundle% "RealMapCertificates/relations/basis1431.json"
theorem reductionProof1431 : EqualModuloRelations reduction1431.relations reduction1431.input reduction1431.output := by lin_cert using reduction1431.terms
theorem substitutionProof1431 : IsMapEvaluation generatorImages reduction1431.relations [2,188] reduction1431.output := by lin_cert using reduction1431.terms
def image1432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1432 : InImage map_12_106 image1432 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1432 : Bundle := named_bundle% "RealMapCertificates/relations/basis1432.json"
theorem reductionProof1432 : EqualModuloRelations reduction1432.relations reduction1432.input reduction1432.output := by lin_cert using reduction1432.terms
theorem substitutionProof1432 : IsMapEvaluation generatorImages reduction1432.relations [1,1,189] reduction1432.output := by lin_cert using reduction1432.terms
end RealMapCertificates
