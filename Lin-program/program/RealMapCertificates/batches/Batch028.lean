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
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 25 => []
  | 29 => [[5,9]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 95 => []
  | 134 => []
  | 178 => []
  | 181 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 209 => []
  | 212 => []
  | 221 => []
  | 235 => []
  | 243 => []
  | 250 => []
  | 261 => []
  | 262 => []
  | 270 => []
  | 275 => []
  | 309 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 320 => []
  | 321 => []
  | 324 => []
  | 330 => []
  | 333 => []
  | 335 => []
  | 336 => []
  | 337 => []
  | 351 => []
  | 363 => []
  | 364 => []
  | 365 => []
  | 367 => []
  | 371 => []
  | 375 => []
  | 386 => []
  | 387 => []
  | 389 => []
  | 391 => []
  | 408 => []
  | 409 => []
  | 410 => []
  | 412 => []
  | 419 => []
  | 425 => []
  | 426 => []
  | 427 => []
  | 428 => []
  | 442 => []
  | 446 => []
  | 450 => []
  | 451 => []
  | 459 => []
  | 460 => []
  | 462 => []
  | 476 => []
  | 477 => []
  | 484 => []
  | 485 => []
  | 486 => []
  | 497 => []
  | 503 => []
  | 511 => []
  | _ => []
def map_12_108 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1502 : InImage map_12_108 image1502 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1502 : Bundle := named_bundle% "RealMapCertificates/relations/basis1502.json"
theorem reductionProof1502 : EqualModuloRelations reduction1502.relations reduction1502.input reduction1502.output := by lin_cert using reduction1502.terms
theorem substitutionProof1502 : IsMapEvaluation generatorImages reduction1502.relations [212] reduction1502.output := by lin_cert using reduction1502.terms
def image1503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1503 : InImage map_12_108 image1503 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1503 : Bundle := named_bundle% "RealMapCertificates/relations/basis1503.json"
theorem reductionProof1503 : EqualModuloRelations reduction1503.relations reduction1503.input reduction1503.output := by lin_cert using reduction1503.terms
theorem substitutionProof1503 : IsMapEvaluation generatorImages reduction1503.relations [3,178] reduction1503.output := by lin_cert using reduction1503.terms
def map_12_109 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1537 : InImage map_12_109 image1537 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1537 : Bundle := named_bundle% "RealMapCertificates/relations/basis1537.json"
theorem reductionProof1537 : EqualModuloRelations reduction1537.relations reduction1537.input reduction1537.output := by lin_cert using reduction1537.terms
theorem substitutionProof1537 : IsMapEvaluation generatorImages reduction1537.relations [40,69] reduction1537.output := by lin_cert using reduction1537.terms
def image1538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1538 : InImage map_12_109 image1538 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1538 : Bundle := named_bundle% "RealMapCertificates/relations/basis1538.json"
theorem reductionProof1538 : EqualModuloRelations reduction1538.relations reduction1538.input reduction1538.output := by lin_cert using reduction1538.terms
theorem substitutionProof1538 : IsMapEvaluation generatorImages reduction1538.relations [13,134] reduction1538.output := by lin_cert using reduction1538.terms
def image1539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1539 : InImage map_12_109 image1539 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1539 : Bundle := named_bundle% "RealMapCertificates/relations/basis1539.json"
theorem reductionProof1539 : EqualModuloRelations reduction1539.relations reduction1539.input reduction1539.output := by lin_cert using reduction1539.terms
theorem substitutionProof1539 : IsMapEvaluation generatorImages reduction1539.relations [0,0,209] reduction1539.output := by lin_cert using reduction1539.terms
def map_12_110 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1572 : InImage map_12_110 image1572 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1572 : Bundle := named_bundle% "RealMapCertificates/relations/basis1572.json"
theorem reductionProof1572 : EqualModuloRelations reduction1572.relations reduction1572.input reduction1572.output := by lin_cert using reduction1572.terms
theorem substitutionProof1572 : IsMapEvaluation generatorImages reduction1572.relations [3,188] reduction1572.output := by lin_cert using reduction1572.terms
def image1573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1573 : InImage map_12_110 image1573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1573 : Bundle := named_bundle% "RealMapCertificates/relations/basis1573.json"
theorem reductionProof1573 : EqualModuloRelations reduction1573.relations reduction1573.input reduction1573.output := by lin_cert using reduction1573.terms
theorem substitutionProof1573 : IsMapEvaluation generatorImages reduction1573.relations [2,2,189] reduction1573.output := by lin_cert using reduction1573.terms
def map_12_111 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1622 : InImage map_12_111 image1622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1622 : Bundle := named_bundle% "RealMapCertificates/relations/basis1622.json"
theorem reductionProof1622 : EqualModuloRelations reduction1622.relations reduction1622.input reduction1622.output := by lin_cert using reduction1622.terms
theorem substitutionProof1622 : IsMapEvaluation generatorImages reduction1622.relations [1,1,209] reduction1622.output := by lin_cert using reduction1622.terms
def image1623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1623 : InImage map_12_111 image1623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1623 : Bundle := named_bundle% "RealMapCertificates/relations/basis1623.json"
theorem reductionProof1623 : EqualModuloRelations reduction1623.relations reduction1623.input reduction1623.output := by lin_cert using reduction1623.terms
theorem substitutionProof1623 : IsMapEvaluation generatorImages reduction1623.relations [0,3,189] reduction1623.output := by lin_cert using reduction1623.terms
def map_12_112 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1653 : InImage map_12_112 image1653 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1653 : Bundle := named_bundle% "RealMapCertificates/relations/basis1653.json"
theorem reductionProof1653 : EqualModuloRelations reduction1653.relations reduction1653.input reduction1653.output := by lin_cert using reduction1653.terms
theorem substitutionProof1653 : IsMapEvaluation generatorImages reduction1653.relations [8,17,69] reduction1653.output := by lin_cert using reduction1653.terms
def image1654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1654 : InImage map_12_112 image1654 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1654 : Bundle := named_bundle% "RealMapCertificates/relations/basis1654.json"
theorem reductionProof1654 : EqualModuloRelations reduction1654.relations reduction1654.input reduction1654.output := by lin_cert using reduction1654.terms
theorem substitutionProof1654 : IsMapEvaluation generatorImages reduction1654.relations [1,3,189] reduction1654.output := by lin_cert using reduction1654.terms
def image1655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1655 : InImage map_12_112 image1655 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1655 : Bundle := named_bundle% "RealMapCertificates/relations/basis1655.json"
theorem reductionProof1655 : EqualModuloRelations reduction1655.relations reduction1655.input reduction1655.output := by lin_cert using reduction1655.terms
theorem substitutionProof1655 : IsMapEvaluation generatorImages reduction1655.relations [0,0,221] reduction1655.output := by lin_cert using reduction1655.terms
def map_12_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1691 : InImage map_12_113 image1691 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1691 : Bundle := named_bundle% "RealMapCertificates/relations/basis1691.json"
theorem reductionProof1691 : EqualModuloRelations reduction1691.relations reduction1691.input reduction1691.output := by lin_cert using reduction1691.terms
theorem substitutionProof1691 : IsMapEvaluation generatorImages reduction1691.relations [0,43,67] reduction1691.output := by lin_cert using reduction1691.terms
def map_12_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1730 : InImage map_12_114 image1730 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1730 : Bundle := named_bundle% "RealMapCertificates/relations/basis1730.json"
theorem reductionProof1730 : EqualModuloRelations reduction1730.relations reduction1730.input reduction1730.output := by lin_cert using reduction1730.terms
theorem substitutionProof1730 : IsMapEvaluation generatorImages reduction1730.relations [0,0,43,68] reduction1730.output := by lin_cert using reduction1730.terms
def map_12_115 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1757 : InImage map_12_115 image1757 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1757 : Bundle := named_bundle% "RealMapCertificates/relations/basis1757.json"
theorem reductionProof1757 : EqualModuloRelations reduction1757.relations reduction1757.input reduction1757.output := by lin_cert using reduction1757.terms
theorem substitutionProof1757 : IsMapEvaluation generatorImages reduction1757.relations [243] reduction1757.output := by lin_cert using reduction1757.terms
def image1758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1758 : InImage map_12_115 image1758 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1758 : Bundle := named_bundle% "RealMapCertificates/relations/basis1758.json"
theorem reductionProof1758 : EqualModuloRelations reduction1758.relations reduction1758.input reduction1758.output := by lin_cert using reduction1758.terms
theorem substitutionProof1758 : IsMapEvaluation generatorImages reduction1758.relations [8,20,69] reduction1758.output := by lin_cert using reduction1758.terms
def map_12_116 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1793 : InImage map_12_116 image1793 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1793 : Bundle := named_bundle% "RealMapCertificates/relations/basis1793.json"
theorem reductionProof1793 : EqualModuloRelations reduction1793.relations reduction1793.input reduction1793.output := by lin_cert using reduction1793.terms
theorem substitutionProof1793 : IsMapEvaluation generatorImages reduction1793.relations [250] reduction1793.output := by lin_cert using reduction1793.terms
def image1794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1794 : InImage map_12_116 image1794 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1794 : Bundle := named_bundle% "RealMapCertificates/relations/basis1794.json"
theorem reductionProof1794 : EqualModuloRelations reduction1794.relations reduction1794.input reduction1794.output := by lin_cert using reduction1794.terms
theorem substitutionProof1794 : IsMapEvaluation generatorImages reduction1794.relations [0,3,209] reduction1794.output := by lin_cert using reduction1794.terms
def image1795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1795 : InImage map_12_116 image1795 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1795 : Bundle := named_bundle% "RealMapCertificates/relations/basis1795.json"
theorem reductionProof1795 : EqualModuloRelations reduction1795.relations reduction1795.input reduction1795.output := by lin_cert using reduction1795.terms
theorem substitutionProof1795 : IsMapEvaluation generatorImages reduction1795.relations [0,0,0,235] reduction1795.output := by lin_cert using reduction1795.terms
def map_12_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1872 : InImage map_12_118 image1872 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1872 : Bundle := named_bundle% "RealMapCertificates/relations/basis1872.json"
theorem reductionProof1872 : EqualModuloRelations reduction1872.relations reduction1872.input reduction1872.output := by lin_cert using reduction1872.terms
theorem substitutionProof1872 : IsMapEvaluation generatorImages reduction1872.relations [7,188] reduction1872.output := by lin_cert using reduction1872.terms
def image1873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1873 : InImage map_12_118 image1873 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1873 : Bundle := named_bundle% "RealMapCertificates/relations/basis1873.json"
theorem reductionProof1873 : EqualModuloRelations reduction1873.relations reduction1873.input reduction1873.output := by lin_cert using reduction1873.terms
theorem substitutionProof1873 : IsMapEvaluation generatorImages reduction1873.relations [3,3,189] reduction1873.output := by lin_cert using reduction1873.terms
def map_12_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1907 : InImage map_12_119 image1907 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1907 : Bundle := named_bundle% "RealMapCertificates/relations/basis1907.json"
theorem reductionProof1907 : EqualModuloRelations reduction1907.relations reduction1907.input reduction1907.output := by lin_cert using reduction1907.terms
theorem substitutionProof1907 : IsMapEvaluation generatorImages reduction1907.relations [261] reduction1907.output := by lin_cert using reduction1907.terms
def map_12_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1995 : InImage map_12_121 image1995 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1995 : Bundle := named_bundle% "RealMapCertificates/relations/basis1995.json"
theorem reductionProof1995 : EqualModuloRelations reduction1995.relations reduction1995.input reduction1995.output := by lin_cert using reduction1995.terms
theorem substitutionProof1995 : IsMapEvaluation generatorImages reduction1995.relations [275] reduction1995.output := by lin_cert using reduction1995.terms
def image1996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1996 : InImage map_12_121 image1996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1996 : Bundle := named_bundle% "RealMapCertificates/relations/basis1996.json"
theorem reductionProof1996 : EqualModuloRelations reduction1996.relations reduction1996.input reduction1996.output := by lin_cert using reduction1996.terms
theorem substitutionProof1996 : IsMapEvaluation generatorImages reduction1996.relations [8,29,69] reduction1996.output := by lin_cert using reduction1996.terms
def map_12_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2080 : InImage map_12_123 image2080 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2080 : Bundle := named_bundle% "RealMapCertificates/relations/basis2080.json"
theorem reductionProof2080 : EqualModuloRelations reduction2080.relations reduction2080.input reduction2080.output := by lin_cert using reduction2080.terms
theorem substitutionProof2080 : IsMapEvaluation generatorImages reduction2080.relations [2,262] reduction2080.output := by lin_cert using reduction2080.terms
def image2081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2081 : InImage map_12_123 image2081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2081 : Bundle := named_bundle% "RealMapCertificates/relations/basis2081.json"
theorem reductionProof2081 : EqualModuloRelations reduction2081.relations reduction2081.input reduction2081.output := by lin_cert using reduction2081.terms
theorem substitutionProof2081 : IsMapEvaluation generatorImages reduction2081.relations [0,0,0,270] reduction2081.output := by lin_cert using reduction2081.terms
def map_12_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2118 : InImage map_12_124 image2118 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2118 : Bundle := named_bundle% "RealMapCertificates/relations/basis2118.json"
theorem reductionProof2118 : EqualModuloRelations reduction2118.relations reduction2118.input reduction2118.output := by lin_cert using reduction2118.terms
theorem substitutionProof2118 : IsMapEvaluation generatorImages reduction2118.relations [0,7,209] reduction2118.output := by lin_cert using reduction2118.terms
def map_12_125 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2158 : InImage map_12_125 image2158 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2158 : Bundle := named_bundle% "RealMapCertificates/relations/basis2158.json"
theorem reductionProof2158 : EqualModuloRelations reduction2158.relations reduction2158.input reduction2158.output := by lin_cert using reduction2158.terms
theorem substitutionProof2158 : IsMapEvaluation generatorImages reduction2158.relations [13,181] reduction2158.output := by lin_cert using reduction2158.terms
def map_12_126 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2215 : InImage map_12_126 image2215 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2215 : Bundle := named_bundle% "RealMapCertificates/relations/basis2215.json"
theorem reductionProof2215 : EqualModuloRelations reduction2215.relations reduction2215.input reduction2215.output := by lin_cert using reduction2215.terms
theorem substitutionProof2215 : IsMapEvaluation generatorImages reduction2215.relations [309] reduction2215.output := by lin_cert using reduction2215.terms
def image2216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2216 : InImage map_12_126 image2216 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2216 : Bundle := named_bundle% "RealMapCertificates/relations/basis2216.json"
theorem reductionProof2216 : EqualModuloRelations reduction2216.relations reduction2216.input reduction2216.output := by lin_cert using reduction2216.terms
theorem substitutionProof2216 : IsMapEvaluation generatorImages reduction2216.relations [13,190] reduction2216.output := by lin_cert using reduction2216.terms
def map_12_128 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2302 : InImage map_12_128 image2302 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2302 : Bundle := named_bundle% "RealMapCertificates/relations/basis2302.json"
theorem reductionProof2302 : EqualModuloRelations reduction2302.relations reduction2302.input reduction2302.output := by lin_cert using reduction2302.terms
theorem substitutionProof2302 : IsMapEvaluation generatorImages reduction2302.relations [68,68] reduction2302.output := by lin_cert using reduction2302.terms
def image2303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2303 : InImage map_12_128 image2303 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2303 : Bundle := named_bundle% "RealMapCertificates/relations/basis2303.json"
theorem reductionProof2303 : EqualModuloRelations reduction2303.relations reduction2303.input reduction2303.output := by lin_cert using reduction2303.terms
theorem substitutionProof2303 : IsMapEvaluation generatorImages reduction2303.relations [0,64,69] reduction2303.output := by lin_cert using reduction2303.terms
def map_12_129 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2369 : InImage map_12_129 image2369 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2369 : Bundle := named_bundle% "RealMapCertificates/relations/basis2369.json"
theorem reductionProof2369 : EqualModuloRelations reduction2369.relations reduction2369.input reduction2369.output := by lin_cert using reduction2369.terms
theorem substitutionProof2369 : IsMapEvaluation generatorImages reduction2369.relations [330] reduction2369.output := by lin_cert using reduction2369.terms
def image2370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2370 : InImage map_12_129 image2370 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2370 : Bundle := named_bundle% "RealMapCertificates/relations/basis2370.json"
theorem reductionProof2370 : EqualModuloRelations reduction2370.relations reduction2370.input reduction2370.output := by lin_cert using reduction2370.terms
theorem substitutionProof2370 : IsMapEvaluation generatorImages reduction2370.relations [1,64,69] reduction2370.output := by lin_cert using reduction2370.terms
def image2371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2371 : InImage map_12_129 image2371 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2371 : Bundle := named_bundle% "RealMapCertificates/relations/basis2371.json"
theorem reductionProof2371 : EqualModuloRelations reduction2371.relations reduction2371.input reduction2371.output := by lin_cert using reduction2371.terms
theorem substitutionProof2371 : IsMapEvaluation generatorImages reduction2371.relations [0,0,312] reduction2371.output := by lin_cert using reduction2371.terms
def image2372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2372 : InImage map_12_129 image2372 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2372 : Bundle := named_bundle% "RealMapCertificates/relations/basis2372.json"
theorem reductionProof2372 : EqualModuloRelations reduction2372.relations reduction2372.input reduction2372.output := by lin_cert using reduction2372.terms
theorem substitutionProof2372 : IsMapEvaluation generatorImages reduction2372.relations [0,0,311] reduction2372.output := by lin_cert using reduction2372.terms
def map_12_130 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2421 : InImage map_12_130 image2421 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2421 : Bundle := named_bundle% "RealMapCertificates/relations/basis2421.json"
theorem reductionProof2421 : EqualModuloRelations reduction2421.relations reduction2421.input reduction2421.output := by lin_cert using reduction2421.terms
theorem substitutionProof2421 : IsMapEvaluation generatorImages reduction2421.relations [335] reduction2421.output := by lin_cert using reduction2421.terms
def image2422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2422 : InImage map_12_130 image2422 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2422 : Bundle := named_bundle% "RealMapCertificates/relations/basis2422.json"
theorem reductionProof2422 : EqualModuloRelations reduction2422.relations reduction2422.input reduction2422.output := by lin_cert using reduction2422.terms
theorem substitutionProof2422 : IsMapEvaluation generatorImages reduction2422.relations [1,320] reduction2422.output := by lin_cert using reduction2422.terms
def image2423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2423 : InImage map_12_130 image2423 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2423 : Bundle := named_bundle% "RealMapCertificates/relations/basis2423.json"
theorem reductionProof2423 : EqualModuloRelations reduction2423.relations reduction2423.input reduction2423.output := by lin_cert using reduction2423.terms
theorem substitutionProof2423 : IsMapEvaluation generatorImages reduction2423.relations [0,0,0,314] reduction2423.output := by lin_cert using reduction2423.terms
def map_12_131 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2481 : InImage map_12_131 image2481 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2481 : Bundle := named_bundle% "RealMapCertificates/relations/basis2481.json"
theorem reductionProof2481 : EqualModuloRelations reduction2481.relations reduction2481.input reduction2481.output := by lin_cert using reduction2481.terms
theorem substitutionProof2481 : IsMapEvaluation generatorImages reduction2481.relations [67,76] reduction2481.output := by lin_cert using reduction2481.terms
def image2482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2482 : InImage map_12_131 image2482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2482 : Bundle := named_bundle% "RealMapCertificates/relations/basis2482.json"
theorem reductionProof2482 : EqualModuloRelations reduction2482.relations reduction2482.input reduction2482.output := by lin_cert using reduction2482.terms
theorem substitutionProof2482 : IsMapEvaluation generatorImages reduction2482.relations [0,336] reduction2482.output := by lin_cert using reduction2482.terms
def image2483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2483 : InImage map_12_131 image2483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2483 : Bundle := named_bundle% "RealMapCertificates/relations/basis2483.json"
theorem reductionProof2483 : EqualModuloRelations reduction2483.relations reduction2483.input reduction2483.output := by lin_cert using reduction2483.terms
theorem substitutionProof2483 : IsMapEvaluation generatorImages reduction2483.relations [0,69,72] reduction2483.output := by lin_cert using reduction2483.terms
def map_12_132 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2563 : InImage map_12_132 image2563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2563 : Bundle := named_bundle% "RealMapCertificates/relations/basis2563.json"
theorem reductionProof2563 : EqualModuloRelations reduction2563.relations reduction2563.input reduction2563.output := by lin_cert using reduction2563.terms
theorem substitutionProof2563 : IsMapEvaluation generatorImages reduction2563.relations [364] reduction2563.output := by lin_cert using reduction2563.terms
def image2564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2564 : InImage map_12_132 image2564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2564 : Bundle := named_bundle% "RealMapCertificates/relations/basis2564.json"
theorem reductionProof2564 : EqualModuloRelations reduction2564.relations reduction2564.input reduction2564.output := by lin_cert using reduction2564.terms
theorem substitutionProof2564 : IsMapEvaluation generatorImages reduction2564.relations [363] reduction2564.output := by lin_cert using reduction2564.terms
def image2565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2565 : InImage map_12_132 image2565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2565 : Bundle := named_bundle% "RealMapCertificates/relations/basis2565.json"
theorem reductionProof2565 : EqualModuloRelations reduction2565.relations reduction2565.input reduction2565.output := by lin_cert using reduction2565.terms
theorem substitutionProof2565 : IsMapEvaluation generatorImages reduction2565.relations [0,351] reduction2565.output := by lin_cert using reduction2565.terms
def image2566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2566 : InImage map_12_132 image2566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2566 : Bundle := named_bundle% "RealMapCertificates/relations/basis2566.json"
theorem reductionProof2566 : EqualModuloRelations reduction2566.relations reduction2566.input reduction2566.output := by lin_cert using reduction2566.terms
theorem substitutionProof2566 : IsMapEvaluation generatorImages reduction2566.relations [0,0,337] reduction2566.output := by lin_cert using reduction2566.terms
def image2567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2567 : InImage map_12_132 image2567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2567 : Bundle := named_bundle% "RealMapCertificates/relations/basis2567.json"
theorem reductionProof2567 : EqualModuloRelations reduction2567.relations reduction2567.input reduction2567.output := by lin_cert using reduction2567.terms
theorem substitutionProof2567 : IsMapEvaluation generatorImages reduction2567.relations [0,0,0,333] reduction2567.output := by lin_cert using reduction2567.terms
def map_12_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2619 : InImage map_12_133 image2619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2619 : Bundle := named_bundle% "RealMapCertificates/relations/basis2619.json"
theorem reductionProof2619 : EqualModuloRelations reduction2619.relations reduction2619.input reduction2619.output := by lin_cert using reduction2619.terms
theorem substitutionProof2619 : IsMapEvaluation generatorImages reduction2619.relations [1,351] reduction2619.output := by lin_cert using reduction2619.terms
def image2620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2620 : InImage map_12_133 image2620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2620 : Bundle := named_bundle% "RealMapCertificates/relations/basis2620.json"
theorem reductionProof2620 : EqualModuloRelations reduction2620.relations reduction2620.input reduction2620.output := by lin_cert using reduction2620.terms
theorem substitutionProof2620 : IsMapEvaluation generatorImages reduction2620.relations [0,365] reduction2620.output := by lin_cert using reduction2620.terms
def map_12_134 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2682 : InImage map_12_134 image2682 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2682 : Bundle := named_bundle% "RealMapCertificates/relations/basis2682.json"
theorem reductionProof2682 : EqualModuloRelations reduction2682.relations reduction2682.input reduction2682.output := by lin_cert using reduction2682.terms
theorem substitutionProof2682 : IsMapEvaluation generatorImages reduction2682.relations [18,188] reduction2682.output := by lin_cert using reduction2682.terms
def image2683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2683 : InImage map_12_134 image2683 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2683 : Bundle := named_bundle% "RealMapCertificates/relations/basis2683.json"
theorem reductionProof2683 : EqualModuloRelations reduction2683.relations reduction2683.input reduction2683.output := by lin_cert using reduction2683.terms
theorem substitutionProof2683 : IsMapEvaluation generatorImages reduction2683.relations [0,371] reduction2683.output := by lin_cert using reduction2683.terms
def image2684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2684 : InImage map_12_134 image2684 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2684 : Bundle := named_bundle% "RealMapCertificates/relations/basis2684.json"
theorem reductionProof2684 : EqualModuloRelations reduction2684.relations reduction2684.input reduction2684.output := by lin_cert using reduction2684.terms
theorem substitutionProof2684 : IsMapEvaluation generatorImages reduction2684.relations [0,69,79] reduction2684.output := by lin_cert using reduction2684.terms
def map_12_135 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2775 : InImage map_12_135 image2775 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2775 : Bundle := named_bundle% "RealMapCertificates/relations/basis2775.json"
theorem reductionProof2775 : EqualModuloRelations reduction2775.relations reduction2775.input reduction2775.output := by lin_cert using reduction2775.terms
theorem substitutionProof2775 : IsMapEvaluation generatorImages reduction2775.relations [408] reduction2775.output := by lin_cert using reduction2775.terms
def image2776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2776 : InImage map_12_135 image2776 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2776 : Bundle := named_bundle% "RealMapCertificates/relations/basis2776.json"
theorem reductionProof2776 : EqualModuloRelations reduction2776.relations reduction2776.input reduction2776.output := by lin_cert using reduction2776.terms
theorem substitutionProof2776 : IsMapEvaluation generatorImages reduction2776.relations [0,386] reduction2776.output := by lin_cert using reduction2776.terms
def image2777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2777 : InImage map_12_135 image2777 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2777 : Bundle := named_bundle% "RealMapCertificates/relations/basis2777.json"
theorem reductionProof2777 : EqualModuloRelations reduction2777.relations reduction2777.input reduction2777.output := by lin_cert using reduction2777.terms
theorem substitutionProof2777 : IsMapEvaluation generatorImages reduction2777.relations [0,0,69,80] reduction2777.output := by lin_cert using reduction2777.terms
def map_12_136 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2845 : InImage map_12_136 image2845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2845 : Bundle := named_bundle% "RealMapCertificates/relations/basis2845.json"
theorem reductionProof2845 : EqualModuloRelations reduction2845.relations reduction2845.input reduction2845.output := by lin_cert using reduction2845.terms
theorem substitutionProof2845 : IsMapEvaluation generatorImages reduction2845.relations [1,387] reduction2845.output := by lin_cert using reduction2845.terms
def image2846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2846 : InImage map_12_136 image2846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2846 : Bundle := named_bundle% "RealMapCertificates/relations/basis2846.json"
theorem reductionProof2846 : EqualModuloRelations reduction2846.relations reduction2846.input reduction2846.output := by lin_cert using reduction2846.terms
theorem substitutionProof2846 : IsMapEvaluation generatorImages reduction2846.relations [0,410] reduction2846.output := by lin_cert using reduction2846.terms
def image2847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2847 : InImage map_12_136 image2847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2847 : Bundle := named_bundle% "RealMapCertificates/relations/basis2847.json"
theorem reductionProof2847 : EqualModuloRelations reduction2847.relations reduction2847.input reduction2847.output := by lin_cert using reduction2847.terms
theorem substitutionProof2847 : IsMapEvaluation generatorImages reduction2847.relations [0,409] reduction2847.output := by lin_cert using reduction2847.terms
def image2848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2848 : InImage map_12_136 image2848 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2848 : Bundle := named_bundle% "RealMapCertificates/relations/basis2848.json"
theorem reductionProof2848 : EqualModuloRelations reduction2848.relations reduction2848.input reduction2848.output := by lin_cert using reduction2848.terms
theorem substitutionProof2848 : IsMapEvaluation generatorImages reduction2848.relations [0,0,389] reduction2848.output := by lin_cert using reduction2848.terms
def image2849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2849 : InImage map_12_136 image2849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2849 : Bundle := named_bundle% "RealMapCertificates/relations/basis2849.json"
theorem reductionProof2849 : EqualModuloRelations reduction2849.relations reduction2849.input reduction2849.output := by lin_cert using reduction2849.terms
theorem substitutionProof2849 : IsMapEvaluation generatorImages reduction2849.relations [0,0,0,0,367] reduction2849.output := by lin_cert using reduction2849.terms
def map_12_137 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2918 : InImage map_12_137 image2918 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2918 : Bundle := named_bundle% "RealMapCertificates/relations/basis2918.json"
theorem reductionProof2918 : EqualModuloRelations reduction2918.relations reduction2918.input reduction2918.output := by lin_cert using reduction2918.terms
theorem substitutionProof2918 : IsMapEvaluation generatorImages reduction2918.relations [426] reduction2918.output := by lin_cert using reduction2918.terms
def image2919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2919 : InImage map_12_137 image2919 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2919 : Bundle := named_bundle% "RealMapCertificates/relations/basis2919.json"
theorem reductionProof2919 : EqualModuloRelations reduction2919.relations reduction2919.input reduction2919.output := by lin_cert using reduction2919.terms
theorem substitutionProof2919 : IsMapEvaluation generatorImages reduction2919.relations [425] reduction2919.output := by lin_cert using reduction2919.terms
def image2920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2920 : InImage map_12_137 image2920 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2920 : Bundle := named_bundle% "RealMapCertificates/relations/basis2920.json"
theorem reductionProof2920 : EqualModuloRelations reduction2920.relations reduction2920.input reduction2920.output := by lin_cert using reduction2920.terms
theorem substitutionProof2920 : IsMapEvaluation generatorImages reduction2920.relations [0,69,89] reduction2920.output := by lin_cert using reduction2920.terms
def image2921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2921 : InImage map_12_137 image2921 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2921 : Bundle := named_bundle% "RealMapCertificates/relations/basis2921.json"
theorem reductionProof2921 : EqualModuloRelations reduction2921.relations reduction2921.input reduction2921.output := by lin_cert using reduction2921.terms
theorem substitutionProof2921 : IsMapEvaluation generatorImages reduction2921.relations [0,0,0,391] reduction2921.output := by lin_cert using reduction2921.terms
def image2922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2922 : InImage map_12_137 image2922 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2922 : Bundle := named_bundle% "RealMapCertificates/relations/basis2922.json"
theorem reductionProof2922 : EqualModuloRelations reduction2922.relations reduction2922.input reduction2922.output := by lin_cert using reduction2922.terms
theorem substitutionProof2922 : IsMapEvaluation generatorImages reduction2922.relations [0,0,0,0,375] reduction2922.output := by lin_cert using reduction2922.terms
def map_12_138 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3013 : InImage map_12_138 image3013 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3013 : Bundle := named_bundle% "RealMapCertificates/relations/basis3013.json"
theorem reductionProof3013 : EqualModuloRelations reduction3013.relations reduction3013.input reduction3013.output := by lin_cert using reduction3013.terms
theorem substitutionProof3013 : IsMapEvaluation generatorImages reduction3013.relations [25,190] reduction3013.output := by lin_cert using reduction3013.terms
def image3014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3014 : InImage map_12_138 image3014 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3014 : Bundle := named_bundle% "RealMapCertificates/relations/basis3014.json"
theorem reductionProof3014 : EqualModuloRelations reduction3014.relations reduction3014.input reduction3014.output := by lin_cert using reduction3014.terms
theorem substitutionProof3014 : IsMapEvaluation generatorImages reduction3014.relations [3,336] reduction3014.output := by lin_cert using reduction3014.terms
def image3015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3015 : InImage map_12_138 image3015 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3015 : Bundle := named_bundle% "RealMapCertificates/relations/basis3015.json"
theorem reductionProof3015 : EqualModuloRelations reduction3015.relations reduction3015.input reduction3015.output := by lin_cert using reduction3015.terms
theorem substitutionProof3015 : IsMapEvaluation generatorImages reduction3015.relations [0,427] reduction3015.output := by lin_cert using reduction3015.terms
def image3016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3016 : InImage map_12_138 image3016 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3016 : Bundle := named_bundle% "RealMapCertificates/relations/basis3016.json"
theorem reductionProof3016 : EqualModuloRelations reduction3016.relations reduction3016.input reduction3016.output := by lin_cert using reduction3016.terms
theorem substitutionProof3016 : IsMapEvaluation generatorImages reduction3016.relations [0,0,419] reduction3016.output := by lin_cert using reduction3016.terms
def image3017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3017 : InImage map_12_138 image3017 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3017 : Bundle := named_bundle% "RealMapCertificates/relations/basis3017.json"
theorem reductionProof3017 : EqualModuloRelations reduction3017.relations reduction3017.input reduction3017.output := by lin_cert using reduction3017.terms
theorem substitutionProof3017 : IsMapEvaluation generatorImages reduction3017.relations [0,0,0,0,0,0,0,0,0,0,69,69] reduction3017.output := by lin_cert using reduction3017.terms
def map_12_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3085 : InImage map_12_139 image3085 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3085 : Bundle := named_bundle% "RealMapCertificates/relations/basis3085.json"
theorem reductionProof3085 : EqualModuloRelations reduction3085.relations reduction3085.input reduction3085.output := by lin_cert using reduction3085.terms
theorem substitutionProof3085 : IsMapEvaluation generatorImages reduction3085.relations [1,427] reduction3085.output := by lin_cert using reduction3085.terms
def image3086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3086 : InImage map_12_139 image3086 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3086 : Bundle := named_bundle% "RealMapCertificates/relations/basis3086.json"
theorem reductionProof3086 : EqualModuloRelations reduction3086.relations reduction3086.input reduction3086.output := by lin_cert using reduction3086.terms
theorem substitutionProof3086 : IsMapEvaluation generatorImages reduction3086.relations [0,0,428] reduction3086.output := by lin_cert using reduction3086.terms
def image3087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3087 : InImage map_12_139 image3087 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3087 : Bundle := named_bundle% "RealMapCertificates/relations/basis3087.json"
theorem reductionProof3087 : EqualModuloRelations reduction3087.relations reduction3087.input reduction3087.output := by lin_cert using reduction3087.terms
theorem substitutionProof3087 : IsMapEvaluation generatorImages reduction3087.relations [0,0,0,0,0,0,0,0,0,0,0,324] reduction3087.output := by lin_cert using reduction3087.terms
def map_12_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3164 : InImage map_12_140 image3164 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3164 : Bundle := named_bundle% "RealMapCertificates/relations/basis3164.json"
theorem reductionProof3164 : EqualModuloRelations reduction3164.relations reduction3164.input reduction3164.output := by lin_cert using reduction3164.terms
theorem substitutionProof3164 : IsMapEvaluation generatorImages reduction3164.relations [460] reduction3164.output := by lin_cert using reduction3164.terms
def image3165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3165 : InImage map_12_140 image3165 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3165 : Bundle := named_bundle% "RealMapCertificates/relations/basis3165.json"
theorem reductionProof3165 : EqualModuloRelations reduction3165.relations reduction3165.input reduction3165.output := by lin_cert using reduction3165.terms
theorem substitutionProof3165 : IsMapEvaluation generatorImages reduction3165.relations [459] reduction3165.output := by lin_cert using reduction3165.terms
def image3166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3166 : InImage map_12_140 image3166 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3166 : Bundle := named_bundle% "RealMapCertificates/relations/basis3166.json"
theorem reductionProof3166 : EqualModuloRelations reduction3166.relations reduction3166.input reduction3166.output := by lin_cert using reduction3166.terms
theorem substitutionProof3166 : IsMapEvaluation generatorImages reduction3166.relations [76,95] reduction3166.output := by lin_cert using reduction3166.terms
def image3167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3167 : InImage map_12_140 image3167 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3167 : Bundle := named_bundle% "RealMapCertificates/relations/basis3167.json"
theorem reductionProof3167 : EqualModuloRelations reduction3167.relations reduction3167.input reduction3167.output := by lin_cert using reduction3167.terms
theorem substitutionProof3167 : IsMapEvaluation generatorImages reduction3167.relations [3,365] reduction3167.output := by lin_cert using reduction3167.terms
def image3168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3168 : InImage map_12_140 image3168 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3168 : Bundle := named_bundle% "RealMapCertificates/relations/basis3168.json"
theorem reductionProof3168 : EqualModuloRelations reduction3168.relations reduction3168.input reduction3168.output := by lin_cert using reduction3168.terms
theorem substitutionProof3168 : IsMapEvaluation generatorImages reduction3168.relations [0,18,209] reduction3168.output := by lin_cert using reduction3168.terms
def map_12_141 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3266 : InImage map_12_141 image3266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3266 : Bundle := named_bundle% "RealMapCertificates/relations/basis3266.json"
theorem reductionProof3266 : EqualModuloRelations reduction3266.relations reduction3266.input reduction3266.output := by lin_cert using reduction3266.terms
theorem substitutionProof3266 : IsMapEvaluation generatorImages reduction3266.relations [476] reduction3266.output := by lin_cert using reduction3266.terms
def image3267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3267 : InImage map_12_141 image3267 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3267 : Bundle := named_bundle% "RealMapCertificates/relations/basis3267.json"
theorem reductionProof3267 : EqualModuloRelations reduction3267.relations reduction3267.input reduction3267.output := by lin_cert using reduction3267.terms
theorem substitutionProof3267 : IsMapEvaluation generatorImages reduction3267.relations [0,462] reduction3267.output := by lin_cert using reduction3267.terms
def image3268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3268 : InImage map_12_141 image3268 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3268 : Bundle := named_bundle% "RealMapCertificates/relations/basis3268.json"
theorem reductionProof3268 : EqualModuloRelations reduction3268.relations reduction3268.input reduction3268.output := by lin_cert using reduction3268.terms
theorem substitutionProof3268 : IsMapEvaluation generatorImages reduction3268.relations [0,0,450] reduction3268.output := by lin_cert using reduction3268.terms
def map_12_142 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3335 : InImage map_12_142 image3335 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3335 : Bundle := named_bundle% "RealMapCertificates/relations/basis3335.json"
theorem reductionProof3335 : EqualModuloRelations reduction3335.relations reduction3335.input reduction3335.output := by lin_cert using reduction3335.terms
theorem substitutionProof3335 : IsMapEvaluation generatorImages reduction3335.relations [484] reduction3335.output := by lin_cert using reduction3335.terms
def image3336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3336 : InImage map_12_142 image3336 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3336 : Bundle := named_bundle% "RealMapCertificates/relations/basis3336.json"
theorem reductionProof3336 : EqualModuloRelations reduction3336.relations reduction3336.input reduction3336.output := by lin_cert using reduction3336.terms
theorem substitutionProof3336 : IsMapEvaluation generatorImages reduction3336.relations [3,386] reduction3336.output := by lin_cert using reduction3336.terms
def image3337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3337 : InImage map_12_142 image3337 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3337 : Bundle := named_bundle% "RealMapCertificates/relations/basis3337.json"
theorem reductionProof3337 : EqualModuloRelations reduction3337.relations reduction3337.input reduction3337.output := by lin_cert using reduction3337.terms
theorem substitutionProof3337 : IsMapEvaluation generatorImages reduction3337.relations [1,1,442] reduction3337.output := by lin_cert using reduction3337.terms
def map_12_143 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3416 : InImage map_12_143 image3416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3416 : Bundle := named_bundle% "RealMapCertificates/relations/basis3416.json"
theorem reductionProof3416 : EqualModuloRelations reduction3416.relations reduction3416.input reduction3416.output := by lin_cert using reduction3416.terms
theorem substitutionProof3416 : IsMapEvaluation generatorImages reduction3416.relations [497] reduction3416.output := by lin_cert using reduction3416.terms
def image3417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3417 : InImage map_12_143 image3417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3417 : Bundle := named_bundle% "RealMapCertificates/relations/basis3417.json"
theorem reductionProof3417 : EqualModuloRelations reduction3417.relations reduction3417.input reduction3417.output := by lin_cert using reduction3417.terms
theorem substitutionProof3417 : IsMapEvaluation generatorImages reduction3417.relations [1,477] reduction3417.output := by lin_cert using reduction3417.terms
def image3418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3418 : InImage map_12_143 image3418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3418 : Bundle := named_bundle% "RealMapCertificates/relations/basis3418.json"
theorem reductionProof3418 : EqualModuloRelations reduction3418.relations reduction3418.input reduction3418.output := by lin_cert using reduction3418.terms
theorem substitutionProof3418 : IsMapEvaluation generatorImages reduction3418.relations [0,486] reduction3418.output := by lin_cert using reduction3418.terms
def image3419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3419 : InImage map_12_143 image3419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3419 : Bundle := named_bundle% "RealMapCertificates/relations/basis3419.json"
theorem reductionProof3419 : EqualModuloRelations reduction3419.relations reduction3419.input reduction3419.output := by lin_cert using reduction3419.terms
theorem substitutionProof3419 : IsMapEvaluation generatorImages reduction3419.relations [0,485] reduction3419.output := by lin_cert using reduction3419.terms
def image3420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3420 : InImage map_12_143 image3420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3420 : Bundle := named_bundle% "RealMapCertificates/relations/basis3420.json"
theorem reductionProof3420 : EqualModuloRelations reduction3420.relations reduction3420.input reduction3420.output := by lin_cert using reduction3420.terms
theorem substitutionProof3420 : IsMapEvaluation generatorImages reduction3420.relations [0,3,389] reduction3420.output := by lin_cert using reduction3420.terms
def image3421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3421 : InImage map_12_143 image3421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3421 : Bundle := named_bundle% "RealMapCertificates/relations/basis3421.json"
theorem reductionProof3421 : EqualModuloRelations reduction3421.relations reduction3421.input reduction3421.output := by lin_cert using reduction3421.terms
theorem substitutionProof3421 : IsMapEvaluation generatorImages reduction3421.relations [0,0,0,0,451] reduction3421.output := by lin_cert using reduction3421.terms
def map_12_144 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3513 : InImage map_12_144 image3513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3513 : Bundle := named_bundle% "RealMapCertificates/relations/basis3513.json"
theorem reductionProof3513 : EqualModuloRelations reduction3513.relations reduction3513.input reduction3513.output := by lin_cert using reduction3513.terms
theorem substitutionProof3513 : IsMapEvaluation generatorImages reduction3513.relations [1,486] reduction3513.output := by lin_cert using reduction3513.terms
def image3514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3514 : InImage map_12_144 image3514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3514 : Bundle := named_bundle% "RealMapCertificates/relations/basis3514.json"
theorem reductionProof3514 : EqualModuloRelations reduction3514.relations reduction3514.input reduction3514.output := by lin_cert using reduction3514.terms
theorem substitutionProof3514 : IsMapEvaluation generatorImages reduction3514.relations [1,485] reduction3514.output := by lin_cert using reduction3514.terms
def image3515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3515 : InImage map_12_144 image3515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3515 : Bundle := named_bundle% "RealMapCertificates/relations/basis3515.json"
theorem reductionProof3515 : EqualModuloRelations reduction3515.relations reduction3515.input reduction3515.output := by lin_cert using reduction3515.terms
theorem substitutionProof3515 : IsMapEvaluation generatorImages reduction3515.relations [0,7,311] reduction3515.output := by lin_cert using reduction3515.terms
def image3516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3516 : InImage map_12_144 image3516 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3516 : Bundle := named_bundle% "RealMapCertificates/relations/basis3516.json"
theorem reductionProof3516 : EqualModuloRelations reduction3516.relations reduction3516.input reduction3516.output := by lin_cert using reduction3516.terms
theorem substitutionProof3516 : IsMapEvaluation generatorImages reduction3516.relations [0,0,3,391] reduction3516.output := by lin_cert using reduction3516.terms
def image3517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3517 : InImage map_12_144 image3517 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3517 : Bundle := named_bundle% "RealMapCertificates/relations/basis3517.json"
theorem reductionProof3517 : EqualModuloRelations reduction3517.relations reduction3517.input reduction3517.output := by lin_cert using reduction3517.terms
theorem substitutionProof3517 : IsMapEvaluation generatorImages reduction3517.relations [0,0,0,0,0,0,446] reduction3517.output := by lin_cert using reduction3517.terms
def map_12_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3581 : InImage map_12_145 image3581 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3581 : Bundle := named_bundle% "RealMapCertificates/relations/basis3581.json"
theorem reductionProof3581 : EqualModuloRelations reduction3581.relations reduction3581.input reduction3581.output := by lin_cert using reduction3581.terms
theorem substitutionProof3581 : IsMapEvaluation generatorImages reduction3581.relations [511] reduction3581.output := by lin_cert using reduction3581.terms
def image3582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3582 : InImage map_12_145 image3582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3582 : Bundle := named_bundle% "RealMapCertificates/relations/basis3582.json"
theorem reductionProof3582 : EqualModuloRelations reduction3582.relations reduction3582.input reduction3582.output := by lin_cert using reduction3582.terms
theorem substitutionProof3582 : IsMapEvaluation generatorImages reduction3582.relations [1,3,412] reduction3582.output := by lin_cert using reduction3582.terms
def image3583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3583 : InImage map_12_145 image3583 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3583 : Bundle := named_bundle% "RealMapCertificates/relations/basis3583.json"
theorem reductionProof3583 : EqualModuloRelations reduction3583.relations reduction3583.input reduction3583.output := by lin_cert using reduction3583.terms
theorem substitutionProof3583 : IsMapEvaluation generatorImages reduction3583.relations [0,0,7,314] reduction3583.output := by lin_cert using reduction3583.terms
def map_12_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3663 : InImage map_12_146 image3663 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3663 : Bundle := named_bundle% "RealMapCertificates/relations/basis3663.json"
theorem reductionProof3663 : EqualModuloRelations reduction3663.relations reduction3663.input reduction3663.output := by lin_cert using reduction3663.terms
theorem substitutionProof3663 : IsMapEvaluation generatorImages reduction3663.relations [2,486] reduction3663.output := by lin_cert using reduction3663.terms
def image3664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3664 : InImage map_12_146 image3664 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3664 : Bundle := named_bundle% "RealMapCertificates/relations/basis3664.json"
theorem reductionProof3664 : EqualModuloRelations reduction3664.relations reduction3664.input reduction3664.output := by lin_cert using reduction3664.terms
theorem substitutionProof3664 : IsMapEvaluation generatorImages reduction3664.relations [1,503] reduction3664.output := by lin_cert using reduction3664.terms
def image3665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3665 : InImage map_12_146 image3665 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3665 : Bundle := named_bundle% "RealMapCertificates/relations/basis3665.json"
theorem reductionProof3665 : EqualModuloRelations reduction3665.relations reduction3665.input reduction3665.output := by lin_cert using reduction3665.terms
theorem substitutionProof3665 : IsMapEvaluation generatorImages reduction3665.relations [1,7,321] reduction3665.output := by lin_cert using reduction3665.terms
def image3666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3666 : InImage map_12_146 image3666 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3666 : Bundle := named_bundle% "RealMapCertificates/relations/basis3666.json"
theorem reductionProof3666 : EqualModuloRelations reduction3666.relations reduction3666.input reduction3666.output := by lin_cert using reduction3666.terms
theorem substitutionProof3666 : IsMapEvaluation generatorImages reduction3666.relations [0,3,428] reduction3666.output := by lin_cert using reduction3666.terms
def image3667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3667 : InImage map_12_146 image3667 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3667 : Bundle := named_bundle% "RealMapCertificates/relations/basis3667.json"
theorem reductionProof3667 : EqualModuloRelations reduction3667.relations reduction3667.input reduction3667.output := by lin_cert using reduction3667.terms
theorem substitutionProof3667 : IsMapEvaluation generatorImages reduction3667.relations [0,3,3,333] reduction3667.output := by lin_cert using reduction3667.terms
end RealMapCertificates
