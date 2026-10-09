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
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 21 => [[3,4,4]]
  | 23 => [[7,7]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 68 => []
  | 69 => []
  | 95 => []
  | 163 => []
  | 174 => []
  | 191 => []
  | 311 => []
  | 314 => []
  | 321 => []
  | 324 => []
  | 333 => []
  | 351 => []
  | 366 => []
  | 367 => []
  | 368 => []
  | 371 => []
  | 376 => []
  | 411 => []
  | 412 => []
  | 414 => []
  | 415 => []
  | 443 => []
  | 445 => []
  | 477 => []
  | 478 => []
  | 485 => []
  | 486 => []
  | 504 => []
  | 521 => []
  | 523 => []
  | 534 => []
  | 541 => []
  | 542 => []
  | 543 => []
  | 544 => []
  | 546 => []
  | 562 => []
  | 569 => []
  | 570 => []
  | 571 => []
  | 575 => []
  | 583 => []
  | 590 => []
  | 591 => []
  | 615 => []
  | 631 => []
  | 652 => []
  | 673 => []
  | 674 => []
  | 676 => []
  | 696 => []
  | 711 => []
  | 712 => []
  | 719 => []
  | 732 => []
  | 733 => []
  | 734 => []
  | 743 => []
  | 744 => []
  | 746 => []
  | 755 => []
  | 757 => []
  | 769 => []
  | 770 => []
  | 788 => []
  | 789 => []
  | 790 => []
  | _ => []
def map_12_147 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3773 : InImage map_12_147 image3773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3773 : Bundle := named_bundle% "RealMapCertificates/relations/basis3773.json"
theorem reductionProof3773 : EqualModuloRelations reduction3773.relations reduction3773.input reduction3773.output := by lin_cert using reduction3773.terms
theorem substitutionProof3773 : IsMapEvaluation generatorImages reduction3773.relations [534] reduction3773.output := by lin_cert using reduction3773.terms
def image3774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3774 : InImage map_12_147 image3774 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3774 : Bundle := named_bundle% "RealMapCertificates/relations/basis3774.json"
theorem reductionProof3774 : EqualModuloRelations reduction3774.relations reduction3774.input reduction3774.output := by lin_cert using reduction3774.terms
theorem substitutionProof3774 : IsMapEvaluation generatorImages reduction3774.relations [43,174] reduction3774.output := by lin_cert using reduction3774.terms
def image3775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3775 : InImage map_12_147 image3775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3775 : Bundle := named_bundle% "RealMapCertificates/relations/basis3775.json"
theorem reductionProof3775 : EqualModuloRelations reduction3775.relations reduction3775.input reduction3775.output := by lin_cert using reduction3775.terms
theorem substitutionProof3775 : IsMapEvaluation generatorImages reduction3775.relations [7,351] reduction3775.output := by lin_cert using reduction3775.terms
def image3776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3776 : InImage map_12_147 image3776 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3776 : Bundle := named_bundle% "RealMapCertificates/relations/basis3776.json"
theorem reductionProof3776 : EqualModuloRelations reduction3776.relations reduction3776.input reduction3776.output := by lin_cert using reduction3776.terms
theorem substitutionProof3776 : IsMapEvaluation generatorImages reduction3776.relations [0,0,7,333] reduction3776.output := by lin_cert using reduction3776.terms
def map_12_148 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3840 : InImage map_12_148 image3840 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3840 : Bundle := named_bundle% "RealMapCertificates/relations/basis3840.json"
theorem reductionProof3840 : EqualModuloRelations reduction3840.relations reduction3840.input reduction3840.output := by lin_cert using reduction3840.terms
theorem substitutionProof3840 : IsMapEvaluation generatorImages reduction3840.relations [542] reduction3840.output := by lin_cert using reduction3840.terms
def image3841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3841 : InImage map_12_148 image3841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3841 : Bundle := named_bundle% "RealMapCertificates/relations/basis3841.json"
theorem reductionProof3841 : EqualModuloRelations reduction3841.relations reduction3841.input reduction3841.output := by lin_cert using reduction3841.terms
theorem substitutionProof3841 : IsMapEvaluation generatorImages reduction3841.relations [541] reduction3841.output := by lin_cert using reduction3841.terms
def image3842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3842 : InImage map_12_148 image3842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3842 : Bundle := named_bundle% "RealMapCertificates/relations/basis3842.json"
theorem reductionProof3842 : EqualModuloRelations reduction3842.relations reduction3842.input reduction3842.output := by lin_cert using reduction3842.terms
theorem substitutionProof3842 : IsMapEvaluation generatorImages reduction3842.relations [0,0,521] reduction3842.output := by lin_cert using reduction3842.terms
def map_12_149 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3927 : InImage map_12_149 image3927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3927 : Bundle := named_bundle% "RealMapCertificates/relations/basis3927.json"
theorem reductionProof3927 : EqualModuloRelations reduction3927.relations reduction3927.input reduction3927.output := by lin_cert using reduction3927.terms
theorem substitutionProof3927 : IsMapEvaluation generatorImages reduction3927.relations [7,371] reduction3927.output := by lin_cert using reduction3927.terms
def image3928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3928 : InImage map_12_149 image3928 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3928 : Bundle := named_bundle% "RealMapCertificates/relations/basis3928.json"
theorem reductionProof3928 : EqualModuloRelations reduction3928.relations reduction3928.input reduction3928.output := by lin_cert using reduction3928.terms
theorem substitutionProof3928 : IsMapEvaluation generatorImages reduction3928.relations [3,477] reduction3928.output := by lin_cert using reduction3928.terms
def image3929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3929 : InImage map_12_149 image3929 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3929 : Bundle := named_bundle% "RealMapCertificates/relations/basis3929.json"
theorem reductionProof3929 : EqualModuloRelations reduction3929.relations reduction3929.input reduction3929.output := by lin_cert using reduction3929.terms
theorem substitutionProof3929 : IsMapEvaluation generatorImages reduction3929.relations [0,543] reduction3929.output := by lin_cert using reduction3929.terms
def map_12_150 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4029 : InImage map_12_150 image4029 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4029 : Bundle := named_bundle% "RealMapCertificates/relations/basis4029.json"
theorem reductionProof4029 : EqualModuloRelations reduction4029.relations reduction4029.input reduction4029.output := by lin_cert using reduction4029.terms
theorem substitutionProof4029 : IsMapEvaluation generatorImages reduction4029.relations [8,367] reduction4029.output := by lin_cert using reduction4029.terms
def image4030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4030 : InImage map_12_150 image4030 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4030 : Bundle := named_bundle% "RealMapCertificates/relations/basis4030.json"
theorem reductionProof4030 : EqualModuloRelations reduction4030.relations reduction4030.input reduction4030.output := by lin_cert using reduction4030.terms
theorem substitutionProof4030 : IsMapEvaluation generatorImages reduction4030.relations [3,485] reduction4030.output := by lin_cert using reduction4030.terms
def image4031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4031 : InImage map_12_150 image4031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4031 : Bundle := named_bundle% "RealMapCertificates/relations/basis4031.json"
theorem reductionProof4031 : EqualModuloRelations reduction4031.relations reduction4031.input reduction4031.output := by lin_cert using reduction4031.terms
theorem substitutionProof4031 : IsMapEvaluation generatorImages reduction4031.relations [1,543] reduction4031.output := by lin_cert using reduction4031.terms
def image4032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4032 : InImage map_12_150 image4032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4032 : Bundle := named_bundle% "RealMapCertificates/relations/basis4032.json"
theorem reductionProof4032 : EqualModuloRelations reduction4032.relations reduction4032.input reduction4032.output := by lin_cert using reduction4032.terms
theorem substitutionProof4032 : IsMapEvaluation generatorImages reduction4032.relations [0,0,544] reduction4032.output := by lin_cert using reduction4032.terms
def image4033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4033 : InImage map_12_150 image4033 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4033 : Bundle := named_bundle% "RealMapCertificates/relations/basis4033.json"
theorem reductionProof4033 : EqualModuloRelations reduction4033.relations reduction4033.input reduction4033.output := by lin_cert using reduction4033.terms
theorem substitutionProof4033 : IsMapEvaluation generatorImages reduction4033.relations [0,0,7,366] reduction4033.output := by lin_cert using reduction4033.terms
def map_12_151 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4117 : InImage map_12_151 image4117 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4117 : Bundle := named_bundle% "RealMapCertificates/relations/basis4117.json"
theorem reductionProof4117 : EqualModuloRelations reduction4117.relations reduction4117.input reduction4117.output := by lin_cert using reduction4117.terms
theorem substitutionProof4117 : IsMapEvaluation generatorImages reduction4117.relations [569] reduction4117.output := by lin_cert using reduction4117.terms
def image4118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4118 : InImage map_12_151 image4118 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4118 : Bundle := named_bundle% "RealMapCertificates/relations/basis4118.json"
theorem reductionProof4118 : EqualModuloRelations reduction4118.relations reduction4118.input reduction4118.output := by lin_cert using reduction4118.terms
theorem substitutionProof4118 : IsMapEvaluation generatorImages reduction4118.relations [0,562] reduction4118.output := by lin_cert using reduction4118.terms
def image4119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4119 : InImage map_12_151 image4119 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4119 : Bundle := named_bundle% "RealMapCertificates/relations/basis4119.json"
theorem reductionProof4119 : EqualModuloRelations reduction4119.relations reduction4119.input reduction4119.output := by lin_cert using reduction4119.terms
theorem substitutionProof4119 : IsMapEvaluation generatorImages reduction4119.relations [0,43,191] reduction4119.output := by lin_cert using reduction4119.terms
def image4120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4120 : InImage map_12_151 image4120 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4120 : Bundle := named_bundle% "RealMapCertificates/relations/basis4120.json"
theorem reductionProof4120 : EqualModuloRelations reduction4120.relations reduction4120.input reduction4120.output := by lin_cert using reduction4120.terms
theorem substitutionProof4120 : IsMapEvaluation generatorImages reduction4120.relations [0,2,521] reduction4120.output := by lin_cert using reduction4120.terms
def map_12_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4207 : InImage map_12_152 image4207 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4207 : Bundle := named_bundle% "RealMapCertificates/relations/basis4207.json"
theorem reductionProof4207 : EqualModuloRelations reduction4207.relations reduction4207.input reduction4207.output := by lin_cert using reduction4207.terms
theorem substitutionProof4207 : IsMapEvaluation generatorImages reduction4207.relations [575] reduction4207.output := by lin_cert using reduction4207.terms
def image4208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4208 : InImage map_12_152 image4208 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4208 : Bundle := named_bundle% "RealMapCertificates/relations/basis4208.json"
theorem reductionProof4208 : EqualModuloRelations reduction4208.relations reduction4208.input reduction4208.output := by lin_cert using reduction4208.terms
theorem substitutionProof4208 : IsMapEvaluation generatorImages reduction4208.relations [2,543] reduction4208.output := by lin_cert using reduction4208.terms
def image4209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4209 : InImage map_12_152 image4209 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4209 : Bundle := named_bundle% "RealMapCertificates/relations/basis4209.json"
theorem reductionProof4209 : EqualModuloRelations reduction4209.relations reduction4209.input reduction4209.output := by lin_cert using reduction4209.terms
theorem substitutionProof4209 : IsMapEvaluation generatorImages reduction4209.relations [1,1,544] reduction4209.output := by lin_cert using reduction4209.terms
def image4210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4210 : InImage map_12_152 image4210 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4210 : Bundle := named_bundle% "RealMapCertificates/relations/basis4210.json"
theorem reductionProof4210 : EqualModuloRelations reduction4210.relations reduction4210.input reduction4210.output := by lin_cert using reduction4210.terms
theorem substitutionProof4210 : IsMapEvaluation generatorImages reduction4210.relations [0,0,0,0,546] reduction4210.output := by lin_cert using reduction4210.terms
def map_12_153 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4305 : InImage map_12_153 image4305 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4305 : Bundle := named_bundle% "RealMapCertificates/relations/basis4305.json"
theorem reductionProof4305 : EqualModuloRelations reduction4305.relations reduction4305.input reduction4305.output := by lin_cert using reduction4305.terms
theorem substitutionProof4305 : IsMapEvaluation generatorImages reduction4305.relations [8,415] reduction4305.output := by lin_cert using reduction4305.terms
def image4306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4306 : InImage map_12_153 image4306 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4306 : Bundle := named_bundle% "RealMapCertificates/relations/basis4306.json"
theorem reductionProof4306 : EqualModuloRelations reduction4306.relations reduction4306.input reduction4306.output := by lin_cert using reduction4306.terms
theorem substitutionProof4306 : IsMapEvaluation generatorImages reduction4306.relations [1,7,412] reduction4306.output := by lin_cert using reduction4306.terms
def image4307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4307 : InImage map_12_153 image4307 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4307 : Bundle := named_bundle% "RealMapCertificates/relations/basis4307.json"
theorem reductionProof4307 : EqualModuloRelations reduction4307.relations reduction4307.input reduction4307.output := by lin_cert using reduction4307.terms
theorem substitutionProof4307 : IsMapEvaluation generatorImages reduction4307.relations [0,2,544] reduction4307.output := by lin_cert using reduction4307.terms
def image4308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4308 : InImage map_12_153 image4308 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4308 : Bundle := named_bundle% "RealMapCertificates/relations/basis4308.json"
theorem reductionProof4308 : EqualModuloRelations reduction4308.relations reduction4308.input reduction4308.output := by lin_cert using reduction4308.terms
theorem substitutionProof4308 : IsMapEvaluation generatorImages reduction4308.relations [0,0,7,414] reduction4308.output := by lin_cert using reduction4308.terms
def map_12_154 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4368 : InImage map_12_154 image4368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4368 : Bundle := named_bundle% "RealMapCertificates/relations/basis4368.json"
theorem reductionProof4368 : EqualModuloRelations reduction4368.relations reduction4368.input reduction4368.output := by lin_cert using reduction4368.terms
theorem substitutionProof4368 : IsMapEvaluation generatorImages reduction4368.relations [590] reduction4368.output := by lin_cert using reduction4368.terms
def image4369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4369 : InImage map_12_154 image4369 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4369 : Bundle := named_bundle% "RealMapCertificates/relations/basis4369.json"
theorem reductionProof4369 : EqualModuloRelations reduction4369.relations reduction4369.input reduction4369.output := by lin_cert using reduction4369.terms
theorem substitutionProof4369 : IsMapEvaluation generatorImages reduction4369.relations [0,583] reduction4369.output := by lin_cert using reduction4369.terms
def image4370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4370 : InImage map_12_154 image4370 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4370 : Bundle := named_bundle% "RealMapCertificates/relations/basis4370.json"
theorem reductionProof4370 : EqualModuloRelations reduction4370.relations reduction4370.input reduction4370.output := by lin_cert using reduction4370.terms
theorem substitutionProof4370 : IsMapEvaluation generatorImages reduction4370.relations [0,0,3,504] reduction4370.output := by lin_cert using reduction4370.terms
def map_12_155 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4456 : InImage map_12_155 image4456 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4456 : Bundle := named_bundle% "RealMapCertificates/relations/basis4456.json"
theorem reductionProof4456 : EqualModuloRelations reduction4456.relations reduction4456.input reduction4456.output := by lin_cert using reduction4456.terms
theorem substitutionProof4456 : IsMapEvaluation generatorImages reduction4456.relations [2,570] reduction4456.output := by lin_cert using reduction4456.terms
def image4457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4457 : InImage map_12_155 image4457 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4457 : Bundle := named_bundle% "RealMapCertificates/relations/basis4457.json"
theorem reductionProof4457 : EqualModuloRelations reduction4457.relations reduction4457.input reduction4457.output := by lin_cert using reduction4457.terms
theorem substitutionProof4457 : IsMapEvaluation generatorImages reduction4457.relations [0,3,521] reduction4457.output := by lin_cert using reduction4457.terms
def map_12_156 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4565 : InImage map_12_156 image4565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4565 : Bundle := named_bundle% "RealMapCertificates/relations/basis4565.json"
theorem reductionProof4565 : EqualModuloRelations reduction4565.relations reduction4565.input reduction4565.output := by lin_cert using reduction4565.terms
theorem substitutionProof4565 : IsMapEvaluation generatorImages reduction4565.relations [8,445] reduction4565.output := by lin_cert using reduction4565.terms
def image4566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4566 : InImage map_12_156 image4566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4566 : Bundle := named_bundle% "RealMapCertificates/relations/basis4566.json"
theorem reductionProof4566 : EqualModuloRelations reduction4566.relations reduction4566.input reduction4566.output := by lin_cert using reduction4566.terms
theorem substitutionProof4566 : IsMapEvaluation generatorImages reduction4566.relations [3,543] reduction4566.output := by lin_cert using reduction4566.terms
def image4567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4567 : InImage map_12_156 image4567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4567 : Bundle := named_bundle% "RealMapCertificates/relations/basis4567.json"
theorem reductionProof4567 : EqualModuloRelations reduction4567.relations reduction4567.input reduction4567.output := by lin_cert using reduction4567.terms
theorem substitutionProof4567 : IsMapEvaluation generatorImages reduction4567.relations [2,2,544] reduction4567.output := by lin_cert using reduction4567.terms
def image4568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4568 : InImage map_12_156 image4568 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4568 : Bundle := named_bundle% "RealMapCertificates/relations/basis4568.json"
theorem reductionProof4568 : EqualModuloRelations reduction4568.relations reduction4568.input reduction4568.output := by lin_cert using reduction4568.terms
theorem substitutionProof4568 : IsMapEvaluation generatorImages reduction4568.relations [1,591] reduction4568.output := by lin_cert using reduction4568.terms
def image4569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4569 : InImage map_12_156 image4569 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4569 : Bundle := named_bundle% "RealMapCertificates/relations/basis4569.json"
theorem reductionProof4569 : EqualModuloRelations reduction4569.relations reduction4569.input reduction4569.output := by lin_cert using reduction4569.terms
theorem substitutionProof4569 : IsMapEvaluation generatorImages reduction4569.relations [0,0,3,523] reduction4569.output := by lin_cert using reduction4569.terms
def map_12_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4645 : InImage map_12_157 image4645 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4645 : Bundle := named_bundle% "RealMapCertificates/relations/basis4645.json"
theorem reductionProof4645 : EqualModuloRelations reduction4645.relations reduction4645.input reduction4645.output := by lin_cert using reduction4645.terms
theorem substitutionProof4645 : IsMapEvaluation generatorImages reduction4645.relations [13,376] reduction4645.output := by lin_cert using reduction4645.terms
def image4646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4646 : InImage map_12_157 image4646 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4646 : Bundle := named_bundle% "RealMapCertificates/relations/basis4646.json"
theorem reductionProof4646 : EqualModuloRelations reduction4646.relations reduction4646.input reduction4646.output := by lin_cert using reduction4646.terms
theorem substitutionProof4646 : IsMapEvaluation generatorImages reduction4646.relations [0,615] reduction4646.output := by lin_cert using reduction4646.terms
def image4647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4647 : InImage map_12_157 image4647 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4647 : Bundle := named_bundle% "RealMapCertificates/relations/basis4647.json"
theorem reductionProof4647 : EqualModuloRelations reduction4647.relations reduction4647.input reduction4647.output := by lin_cert using reduction4647.terms
theorem substitutionProof4647 : IsMapEvaluation generatorImages reduction4647.relations [0,3,544] reduction4647.output := by lin_cert using reduction4647.terms
def map_12_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4727 : InImage map_12_158 image4727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4727 : Bundle := named_bundle% "RealMapCertificates/relations/basis4727.json"
theorem reductionProof4727 : EqualModuloRelations reduction4727.relations reduction4727.input reduction4727.output := by lin_cert using reduction4727.terms
theorem substitutionProof4727 : IsMapEvaluation generatorImages reduction4727.relations [7,486] reduction4727.output := by lin_cert using reduction4727.terms
def image4728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4728 : InImage map_12_158 image4728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4728 : Bundle := named_bundle% "RealMapCertificates/relations/basis4728.json"
theorem reductionProof4728 : EqualModuloRelations reduction4728.relations reduction4728.input reduction4728.output := by lin_cert using reduction4728.terms
theorem substitutionProof4728 : IsMapEvaluation generatorImages reduction4728.relations [7,485] reduction4728.output := by lin_cert using reduction4728.terms
def image4729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4729 : InImage map_12_158 image4729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4729 : Bundle := named_bundle% "RealMapCertificates/relations/basis4729.json"
theorem reductionProof4729 : EqualModuloRelations reduction4729.relations reduction4729.input reduction4729.output := by lin_cert using reduction4729.terms
theorem substitutionProof4729 : IsMapEvaluation generatorImages reduction4729.relations [0,0,15,324] reduction4729.output := by lin_cert using reduction4729.terms
def map_12_159 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4827 : InImage map_12_159 image4827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4827 : Bundle := named_bundle% "RealMapCertificates/relations/basis4827.json"
theorem reductionProof4827 : EqualModuloRelations reduction4827.relations reduction4827.input reduction4827.output := by lin_cert using reduction4827.terms
theorem substitutionProof4827 : IsMapEvaluation generatorImages reduction4827.relations [9,445] reduction4827.output := by lin_cert using reduction4827.terms
def image4828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4828 : InImage map_12_159 image4828 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4828 : Bundle := named_bundle% "RealMapCertificates/relations/basis4828.json"
theorem reductionProof4828 : EqualModuloRelations reduction4828.relations reduction4828.input reduction4828.output := by lin_cert using reduction4828.terms
theorem substitutionProof4828 : IsMapEvaluation generatorImages reduction4828.relations [1,7,478] reduction4828.output := by lin_cert using reduction4828.terms
def image4829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4829 : InImage map_12_159 image4829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4829 : Bundle := named_bundle% "RealMapCertificates/relations/basis4829.json"
theorem reductionProof4829 : EqualModuloRelations reduction4829.relations reduction4829.input reduction4829.output := by lin_cert using reduction4829.terms
theorem substitutionProof4829 : IsMapEvaluation generatorImages reduction4829.relations [0,631] reduction4829.output := by lin_cert using reduction4829.terms
def map_12_160 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4897 : InImage map_12_160 image4897 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4897 : Bundle := named_bundle% "RealMapCertificates/relations/basis4897.json"
theorem reductionProof4897 : EqualModuloRelations reduction4897.relations reduction4897.input reduction4897.output := by lin_cert using reduction4897.terms
theorem substitutionProof4897 : IsMapEvaluation generatorImages reduction4897.relations [652] reduction4897.output := by lin_cert using reduction4897.terms
def image4898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4898 : InImage map_12_160 image4898 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4898 : Bundle := named_bundle% "RealMapCertificates/relations/basis4898.json"
theorem reductionProof4898 : EqualModuloRelations reduction4898.relations reduction4898.input reduction4898.output := by lin_cert using reduction4898.terms
theorem substitutionProof4898 : IsMapEvaluation generatorImages reduction4898.relations [1,631] reduction4898.output := by lin_cert using reduction4898.terms
def image4899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4899 : InImage map_12_160 image4899 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4899 : Bundle := named_bundle% "RealMapCertificates/relations/basis4899.json"
theorem reductionProof4899 : EqualModuloRelations reduction4899.relations reduction4899.input reduction4899.output := by lin_cert using reduction4899.terms
theorem substitutionProof4899 : IsMapEvaluation generatorImages reduction4899.relations [0,18,311] reduction4899.output := by lin_cert using reduction4899.terms
def image4900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4900 : InImage map_12_160 image4900 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4900 : Bundle := named_bundle% "RealMapCertificates/relations/basis4900.json"
theorem reductionProof4900 : EqualModuloRelations reduction4900.relations reduction4900.input reduction4900.output := by lin_cert using reduction4900.terms
theorem substitutionProof4900 : IsMapEvaluation generatorImages reduction4900.relations [0,7,7,314] reduction4900.output := by lin_cert using reduction4900.terms
def map_12_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4988 : InImage map_12_161 image4988 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4988 : Bundle := named_bundle% "RealMapCertificates/relations/basis4988.json"
theorem reductionProof4988 : EqualModuloRelations reduction4988.relations reduction4988.input reduction4988.output := by lin_cert using reduction4988.terms
theorem substitutionProof4988 : IsMapEvaluation generatorImages reduction4988.relations [13,69,95] reduction4988.output := by lin_cert using reduction4988.terms
def image4989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4989 : InImage map_12_161 image4989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4989 : Bundle := named_bundle% "RealMapCertificates/relations/basis4989.json"
theorem reductionProof4989 : EqualModuloRelations reduction4989.relations reduction4989.input reduction4989.output := by lin_cert using reduction4989.terms
theorem substitutionProof4989 : IsMapEvaluation generatorImages reduction4989.relations [0,0,18,314] reduction4989.output := by lin_cert using reduction4989.terms
def image4990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4990 : InImage map_12_161 image4990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4990 : Bundle := named_bundle% "RealMapCertificates/relations/basis4990.json"
theorem reductionProof4990 : EqualModuloRelations reduction4990.relations reduction4990.input reduction4990.output := by lin_cert using reduction4990.terms
theorem substitutionProof4990 : IsMapEvaluation generatorImages reduction4990.relations [0,0,0,17,69,69] reduction4990.output := by lin_cert using reduction4990.terms
def map_12_162 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5106 : InImage map_12_162 image5106 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5106 : Bundle := named_bundle% "RealMapCertificates/relations/basis5106.json"
theorem reductionProof5106 : EqualModuloRelations reduction5106.relations reduction5106.input reduction5106.output := by lin_cert using reduction5106.terms
theorem substitutionProof5106 : IsMapEvaluation generatorImages reduction5106.relations [673] reduction5106.output := by lin_cert using reduction5106.terms
def image5107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5107 : InImage map_12_162 image5107 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5107 : Bundle := named_bundle% "RealMapCertificates/relations/basis5107.json"
theorem reductionProof5107 : EqualModuloRelations reduction5107.relations reduction5107.input reduction5107.output := by lin_cert using reduction5107.terms
theorem substitutionProof5107 : IsMapEvaluation generatorImages reduction5107.relations [13,445] reduction5107.output := by lin_cert using reduction5107.terms
def image5108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5108 : InImage map_12_162 image5108 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5108 : Bundle := named_bundle% "RealMapCertificates/relations/basis5108.json"
theorem reductionProof5108 : EqualModuloRelations reduction5108.relations reduction5108.input reduction5108.output := by lin_cert using reduction5108.terms
theorem substitutionProof5108 : IsMapEvaluation generatorImages reduction5108.relations [1,18,321] reduction5108.output := by lin_cert using reduction5108.terms
def image5109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5109 : InImage map_12_162 image5109 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5109 : Bundle := named_bundle% "RealMapCertificates/relations/basis5109.json"
theorem reductionProof5109 : EqualModuloRelations reduction5109.relations reduction5109.input reduction5109.output := by lin_cert using reduction5109.terms
theorem substitutionProof5109 : IsMapEvaluation generatorImages reduction5109.relations [0,0,68,163] reduction5109.output := by lin_cert using reduction5109.terms
def image5110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5110 : InImage map_12_162 image5110 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5110 : Bundle := named_bundle% "RealMapCertificates/relations/basis5110.json"
theorem reductionProof5110 : EqualModuloRelations reduction5110.relations reduction5110.input reduction5110.output := by lin_cert using reduction5110.terms
theorem substitutionProof5110 : IsMapEvaluation generatorImages reduction5110.relations [0,0,0,0,17,324] reduction5110.output := by lin_cert using reduction5110.terms
def map_12_163 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5188 : InImage map_12_163 image5188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5188 : Bundle := named_bundle% "RealMapCertificates/relations/basis5188.json"
theorem reductionProof5188 : EqualModuloRelations reduction5188.relations reduction5188.input reduction5188.output := by lin_cert using reduction5188.terms
theorem substitutionProof5188 : IsMapEvaluation generatorImages reduction5188.relations [21,324] reduction5188.output := by lin_cert using reduction5188.terms
def image5189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5189 : InImage map_12_163 image5189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5189 : Bundle := named_bundle% "RealMapCertificates/relations/basis5189.json"
theorem reductionProof5189 : EqualModuloRelations reduction5189.relations reduction5189.input reduction5189.output := by lin_cert using reduction5189.terms
theorem substitutionProof5189 : IsMapEvaluation generatorImages reduction5189.relations [0,674] reduction5189.output := by lin_cert using reduction5189.terms
def image5190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5190 : InImage map_12_163 image5190 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5190 : Bundle := named_bundle% "RealMapCertificates/relations/basis5190.json"
theorem reductionProof5190 : EqualModuloRelations reduction5190.relations reduction5190.input reduction5190.output := by lin_cert using reduction5190.terms
theorem substitutionProof5190 : IsMapEvaluation generatorImages reduction5190.relations [0,0,19,69,69] reduction5190.output := by lin_cert using reduction5190.terms
def image5191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5191 : InImage map_12_163 image5191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5191 : Bundle := named_bundle% "RealMapCertificates/relations/basis5191.json"
theorem reductionProof5191 : EqualModuloRelations reduction5191.relations reduction5191.input reduction5191.output := by lin_cert using reduction5191.terms
theorem substitutionProof5191 : IsMapEvaluation generatorImages reduction5191.relations [0,0,18,333] reduction5191.output := by lin_cert using reduction5191.terms
def map_12_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5281 : InImage map_12_164 image5281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5281 : Bundle := named_bundle% "RealMapCertificates/relations/basis5281.json"
theorem reductionProof5281 : EqualModuloRelations reduction5281.relations reduction5281.input reduction5281.output := by lin_cert using reduction5281.terms
theorem substitutionProof5281 : IsMapEvaluation generatorImages reduction5281.relations [3,3,544] reduction5281.output := by lin_cert using reduction5281.terms
def image5282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5282 : InImage map_12_164 image5282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5282 : Bundle := named_bundle% "RealMapCertificates/relations/basis5282.json"
theorem reductionProof5282 : EqualModuloRelations reduction5282.relations reduction5282.input reduction5282.output := by lin_cert using reduction5282.terms
theorem substitutionProof5282 : IsMapEvaluation generatorImages reduction5282.relations [1,674] reduction5282.output := by lin_cert using reduction5282.terms
def image5283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5283 : InImage map_12_164 image5283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5283 : Bundle := named_bundle% "RealMapCertificates/relations/basis5283.json"
theorem reductionProof5283 : EqualModuloRelations reduction5283.relations reduction5283.input reduction5283.output := by lin_cert using reduction5283.terms
theorem substitutionProof5283 : IsMapEvaluation generatorImages reduction5283.relations [0,0,0,19,324] reduction5283.output := by lin_cert using reduction5283.terms
def map_12_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5407 : InImage map_12_165 image5407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5407 : Bundle := named_bundle% "RealMapCertificates/relations/basis5407.json"
theorem reductionProof5407 : EqualModuloRelations reduction5407.relations reduction5407.input reduction5407.output := by lin_cert using reduction5407.terms
theorem substitutionProof5407 : IsMapEvaluation generatorImages reduction5407.relations [711] reduction5407.output := by lin_cert using reduction5407.terms
def map_12_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5504 : InImage map_12_166 image5504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5504 : Bundle := named_bundle% "RealMapCertificates/relations/basis5504.json"
theorem reductionProof5504 : EqualModuloRelations reduction5504.relations reduction5504.input reduction5504.output := by lin_cert using reduction5504.terms
theorem substitutionProof5504 : IsMapEvaluation generatorImages reduction5504.relations [0,712] reduction5504.output := by lin_cert using reduction5504.terms
def image5505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5505 : InImage map_12_166 image5505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5505 : Bundle := named_bundle% "RealMapCertificates/relations/basis5505.json"
theorem reductionProof5505 : EqualModuloRelations reduction5505.relations reduction5505.input reduction5505.output := by lin_cert using reduction5505.terms
theorem substitutionProof5505 : IsMapEvaluation generatorImages reduction5505.relations [0,0,18,366] reduction5505.output := by lin_cert using reduction5505.terms
def image5506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5506 : InImage map_12_166 image5506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5506 : Bundle := named_bundle% "RealMapCertificates/relations/basis5506.json"
theorem reductionProof5506 : EqualModuloRelations reduction5506.relations reduction5506.input reduction5506.output := by lin_cert using reduction5506.terms
theorem substitutionProof5506 : IsMapEvaluation generatorImages reduction5506.relations [0,0,0,0,676] reduction5506.output := by lin_cert using reduction5506.terms
def map_12_167 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5602 : InImage map_12_167 image5602 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5602 : Bundle := named_bundle% "RealMapCertificates/relations/basis5602.json"
theorem reductionProof5602 : EqualModuloRelations reduction5602.relations reduction5602.input reduction5602.output := by lin_cert using reduction5602.terms
theorem substitutionProof5602 : IsMapEvaluation generatorImages reduction5602.relations [733] reduction5602.output := by lin_cert using reduction5602.terms
def image5603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5603 : InImage map_12_167 image5603 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5603 : Bundle := named_bundle% "RealMapCertificates/relations/basis5603.json"
theorem reductionProof5603 : EqualModuloRelations reduction5603.relations reduction5603.input reduction5603.output := by lin_cert using reduction5603.terms
theorem substitutionProof5603 : IsMapEvaluation generatorImages reduction5603.relations [732] reduction5603.output := by lin_cert using reduction5603.terms
def image5604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5604 : InImage map_12_167 image5604 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5604 : Bundle := named_bundle% "RealMapCertificates/relations/basis5604.json"
theorem reductionProof5604 : EqualModuloRelations reduction5604.relations reduction5604.input reduction5604.output := by lin_cert using reduction5604.terms
theorem substitutionProof5604 : IsMapEvaluation generatorImages reduction5604.relations [18,411] reduction5604.output := by lin_cert using reduction5604.terms
def image5605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5605 : InImage map_12_167 image5605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5605 : Bundle := named_bundle% "RealMapCertificates/relations/basis5605.json"
theorem reductionProof5605 : EqualModuloRelations reduction5605.relations reduction5605.input reduction5605.output := by lin_cert using reduction5605.terms
theorem substitutionProof5605 : IsMapEvaluation generatorImages reduction5605.relations [1,712] reduction5605.output := by lin_cert using reduction5605.terms
def image5606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5606 : InImage map_12_167 image5606 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5606 : Bundle := named_bundle% "RealMapCertificates/relations/basis5606.json"
theorem reductionProof5606 : EqualModuloRelations reduction5606.relations reduction5606.input reduction5606.output := by lin_cert using reduction5606.terms
theorem substitutionProof5606 : IsMapEvaluation generatorImages reduction5606.relations [0,719] reduction5606.output := by lin_cert using reduction5606.terms
def image5607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5607 : InImage map_12_167 image5607 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5607 : Bundle := named_bundle% "RealMapCertificates/relations/basis5607.json"
theorem reductionProof5607 : EqualModuloRelations reduction5607.relations reduction5607.input reduction5607.output := by lin_cert using reduction5607.terms
theorem substitutionProof5607 : IsMapEvaluation generatorImages reduction5607.relations [0,0,0,7,546] reduction5607.output := by lin_cert using reduction5607.terms
def map_12_168 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5735 : InImage map_12_168 image5735 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5735 : Bundle := named_bundle% "RealMapCertificates/relations/basis5735.json"
theorem reductionProof5735 : EqualModuloRelations reduction5735.relations reduction5735.input reduction5735.output := by lin_cert using reduction5735.terms
theorem substitutionProof5735 : IsMapEvaluation generatorImages reduction5735.relations [23,368] reduction5735.output := by lin_cert using reduction5735.terms
def image5736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5736 : InImage map_12_168 image5736 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5736 : Bundle := named_bundle% "RealMapCertificates/relations/basis5736.json"
theorem reductionProof5736 : EqualModuloRelations reduction5736.relations reduction5736.input reduction5736.output := by lin_cert using reduction5736.terms
theorem substitutionProof5736 : IsMapEvaluation generatorImages reduction5736.relations [1,719] reduction5736.output := by lin_cert using reduction5736.terms
def image5737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5737 : InImage map_12_168 image5737 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5737 : Bundle := named_bundle% "RealMapCertificates/relations/basis5737.json"
theorem reductionProof5737 : EqualModuloRelations reduction5737.relations reduction5737.input reduction5737.output := by lin_cert using reduction5737.terms
theorem substitutionProof5737 : IsMapEvaluation generatorImages reduction5737.relations [0,734] reduction5737.output := by lin_cert using reduction5737.terms
def image5738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5738 : InImage map_12_168 image5738 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5738 : Bundle := named_bundle% "RealMapCertificates/relations/basis5738.json"
theorem reductionProof5738 : EqualModuloRelations reduction5738.relations reduction5738.input reduction5738.output := by lin_cert using reduction5738.terms
theorem substitutionProof5738 : IsMapEvaluation generatorImages reduction5738.relations [0,0,0,0,696] reduction5738.output := by lin_cert using reduction5738.terms
def map_12_169 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5830 : InImage map_12_169 image5830 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5830 : Bundle := named_bundle% "RealMapCertificates/relations/basis5830.json"
theorem reductionProof5830 : EqualModuloRelations reduction5830.relations reduction5830.input reduction5830.output := by lin_cert using reduction5830.terms
theorem substitutionProof5830 : IsMapEvaluation generatorImages reduction5830.relations [1,734] reduction5830.output := by lin_cert using reduction5830.terms
def image5831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5831 : InImage map_12_169 image5831 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5831 : Bundle := named_bundle% "RealMapCertificates/relations/basis5831.json"
theorem reductionProof5831 : EqualModuloRelations reduction5831.relations reduction5831.input reduction5831.output := by lin_cert using reduction5831.terms
theorem substitutionProof5831 : IsMapEvaluation generatorImages reduction5831.relations [1,7,571] reduction5831.output := by lin_cert using reduction5831.terms
def image5832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5832 : InImage map_12_169 image5832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5832 : Bundle := named_bundle% "RealMapCertificates/relations/basis5832.json"
theorem reductionProof5832 : EqualModuloRelations reduction5832.relations reduction5832.input reduction5832.output := by lin_cert using reduction5832.terms
theorem substitutionProof5832 : IsMapEvaluation generatorImages reduction5832.relations [0,743] reduction5832.output := by lin_cert using reduction5832.terms
def image5833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5833 : InImage map_12_169 image5833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5833 : Bundle := named_bundle% "RealMapCertificates/relations/basis5833.json"
theorem reductionProof5833 : EqualModuloRelations reduction5833.relations reduction5833.input reduction5833.output := by lin_cert using reduction5833.terms
theorem substitutionProof5833 : IsMapEvaluation generatorImages reduction5833.relations [0,0,18,414] reduction5833.output := by lin_cert using reduction5833.terms
def image5834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5834 : InImage map_12_169 image5834 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5834 : Bundle := named_bundle% "RealMapCertificates/relations/basis5834.json"
theorem reductionProof5834 : EqualModuloRelations reduction5834.relations reduction5834.input reduction5834.output := by lin_cert using reduction5834.terms
theorem substitutionProof5834 : IsMapEvaluation generatorImages reduction5834.relations [0,0,0,0,0,23,324] reduction5834.output := by lin_cert using reduction5834.terms
def map_12_170 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5935 : InImage map_12_170 image5935 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5935 : Bundle := named_bundle% "RealMapCertificates/relations/basis5935.json"
theorem reductionProof5935 : EqualModuloRelations reduction5935.relations reduction5935.input reduction5935.output := by lin_cert using reduction5935.terms
theorem substitutionProof5935 : IsMapEvaluation generatorImages reduction5935.relations [769] reduction5935.output := by lin_cert using reduction5935.terms
def image5936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5936 : InImage map_12_170 image5936 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5936 : Bundle := named_bundle% "RealMapCertificates/relations/basis5936.json"
theorem reductionProof5936 : EqualModuloRelations reduction5936.relations reduction5936.input reduction5936.output := by lin_cert using reduction5936.terms
theorem substitutionProof5936 : IsMapEvaluation generatorImages reduction5936.relations [3,674] reduction5936.output := by lin_cert using reduction5936.terms
def image5937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5937 : InImage map_12_170 image5937 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5937 : Bundle := named_bundle% "RealMapCertificates/relations/basis5937.json"
theorem reductionProof5937 : EqualModuloRelations reduction5937.relations reduction5937.input reduction5937.output := by lin_cert using reduction5937.terms
theorem substitutionProof5937 : IsMapEvaluation generatorImages reduction5937.relations [2,719] reduction5937.output := by lin_cert using reduction5937.terms
def image5938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5938 : InImage map_12_170 image5938 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5938 : Bundle := named_bundle% "RealMapCertificates/relations/basis5938.json"
theorem reductionProof5938 : EqualModuloRelations reduction5938.relations reduction5938.input reduction5938.output := by lin_cert using reduction5938.terms
theorem substitutionProof5938 : IsMapEvaluation generatorImages reduction5938.relations [1,744] reduction5938.output := by lin_cert using reduction5938.terms
def image5939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5939 : InImage map_12_170 image5939 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5939 : Bundle := named_bundle% "RealMapCertificates/relations/basis5939.json"
theorem reductionProof5939 : EqualModuloRelations reduction5939.relations reduction5939.input reduction5939.output := by lin_cert using reduction5939.terms
theorem substitutionProof5939 : IsMapEvaluation generatorImages reduction5939.relations [0,755] reduction5939.output := by lin_cert using reduction5939.terms
def image5940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5940 : InImage map_12_170 image5940 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5940 : Bundle := named_bundle% "RealMapCertificates/relations/basis5940.json"
theorem reductionProof5940 : EqualModuloRelations reduction5940.relations reduction5940.input reduction5940.output := by lin_cert using reduction5940.terms
theorem substitutionProof5940 : IsMapEvaluation generatorImages reduction5940.relations [0,0,0,0,0,0,0,0,0,0,18,324] reduction5940.output := by lin_cert using reduction5940.terms
def map_12_171 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6085 : InImage map_12_171 image6085 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6085 : Bundle := named_bundle% "RealMapCertificates/relations/basis6085.json"
theorem reductionProof6085 : EqualModuloRelations reduction6085.relations reduction6085.input reduction6085.output := by lin_cert using reduction6085.terms
theorem substitutionProof6085 : IsMapEvaluation generatorImages reduction6085.relations [2,734] reduction6085.output := by lin_cert using reduction6085.terms
def image6086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6086 : InImage map_12_171 image6086 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6086 : Bundle := named_bundle% "RealMapCertificates/relations/basis6086.json"
theorem reductionProof6086 : EqualModuloRelations reduction6086.relations reduction6086.input reduction6086.output := by lin_cert using reduction6086.terms
theorem substitutionProof6086 : IsMapEvaluation generatorImages reduction6086.relations [0,770] reduction6086.output := by lin_cert using reduction6086.terms
def image6087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6087 : InImage map_12_171 image6087 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6087 : Bundle := named_bundle% "RealMapCertificates/relations/basis6087.json"
theorem reductionProof6087 : EqualModuloRelations reduction6087.relations reduction6087.input reduction6087.output := by lin_cert using reduction6087.terms
theorem substitutionProof6087 : IsMapEvaluation generatorImages reduction6087.relations [0,0,757] reduction6087.output := by lin_cert using reduction6087.terms
def map_12_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6164 : InImage map_12_172 image6164 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6164 : Bundle := named_bundle% "RealMapCertificates/relations/basis6164.json"
theorem reductionProof6164 : EqualModuloRelations reduction6164.relations reduction6164.input reduction6164.output := by lin_cert using reduction6164.terms
theorem substitutionProof6164 : IsMapEvaluation generatorImages reduction6164.relations [788] reduction6164.output := by lin_cert using reduction6164.terms
def image6165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6165 : InImage map_12_172 image6165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6165 : Bundle := named_bundle% "RealMapCertificates/relations/basis6165.json"
theorem reductionProof6165 : EqualModuloRelations reduction6165.relations reduction6165.input reduction6165.output := by lin_cert using reduction6165.terms
theorem substitutionProof6165 : IsMapEvaluation generatorImages reduction6165.relations [0,0,18,443] reduction6165.output := by lin_cert using reduction6165.terms
def map_12_173 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6270 : InImage map_12_173 image6270 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6270 : Bundle := named_bundle% "RealMapCertificates/relations/basis6270.json"
theorem reductionProof6270 : EqualModuloRelations reduction6270.relations reduction6270.input reduction6270.output := by lin_cert using reduction6270.terms
theorem substitutionProof6270 : IsMapEvaluation generatorImages reduction6270.relations [40,324] reduction6270.output := by lin_cert using reduction6270.terms
def image6271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6271 : InImage map_12_173 image6271 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6271 : Bundle := named_bundle% "RealMapCertificates/relations/basis6271.json"
theorem reductionProof6271 : EqualModuloRelations reduction6271.relations reduction6271.input reduction6271.output := by lin_cert using reduction6271.terms
theorem substitutionProof6271 : IsMapEvaluation generatorImages reduction6271.relations [3,712] reduction6271.output := by lin_cert using reduction6271.terms
def image6272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6272 : InImage map_12_173 image6272 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6272 : Bundle := named_bundle% "RealMapCertificates/relations/basis6272.json"
theorem reductionProof6272 : EqualModuloRelations reduction6272.relations reduction6272.input reduction6272.output := by lin_cert using reduction6272.terms
theorem substitutionProof6272 : IsMapEvaluation generatorImages reduction6272.relations [0,790] reduction6272.output := by lin_cert using reduction6272.terms
def image6273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6273 : InImage map_12_173 image6273 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6273 : Bundle := named_bundle% "RealMapCertificates/relations/basis6273.json"
theorem reductionProof6273 : EqualModuloRelations reduction6273.relations reduction6273.input reduction6273.output := by lin_cert using reduction6273.terms
theorem substitutionProof6273 : IsMapEvaluation generatorImages reduction6273.relations [0,789] reduction6273.output := by lin_cert using reduction6273.terms
def image6274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6274 : InImage map_12_173 image6274 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6274 : Bundle := named_bundle% "RealMapCertificates/relations/basis6274.json"
theorem reductionProof6274 : EqualModuloRelations reduction6274.relations reduction6274.input reduction6274.output := by lin_cert using reduction6274.terms
theorem substitutionProof6274 : IsMapEvaluation generatorImages reduction6274.relations [0,2,746] reduction6274.output := by lin_cert using reduction6274.terms
end RealMapCertificates
