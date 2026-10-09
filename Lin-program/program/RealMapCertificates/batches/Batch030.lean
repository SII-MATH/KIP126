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
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 43 => []
  | 45 => [[5,5,8]]
  | 64 => []
  | 66 => [[2,2,12]]
  | 68 => []
  | 72 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 81 => []
  | 89 => []
  | 90 => []
  | 163 => []
  | 264 => []
  | 324 => []
  | 333 => []
  | 352 => []
  | 392 => []
  | 396 => []
  | 397 => []
  | 446 => []
  | 563 => []
  | 566 => []
  | 591 => []
  | 615 => []
  | 632 => []
  | 659 => []
  | 676 => []
  | 696 => []
  | 719 => []
  | 734 => []
  | 735 => []
  | 746 => []
  | 755 => []
  | 756 => []
  | 757 => []
  | 789 => []
  | 790 => []
  | 791 => []
  | 793 => []
  | 816 => []
  | 817 => []
  | 818 => []
  | 826 => []
  | 846 => []
  | 860 => []
  | 861 => []
  | 869 => []
  | 883 => []
  | 884 => []
  | 893 => []
  | 912 => []
  | 937 => []
  | 938 => []
  | 961 => []
  | 968 => []
  | 993 => []
  | 1026 => []
  | 1027 => []
  | 1028 => []
  | 1058 => []
  | 1074 => []
  | 1118 => []
  | 1119 => []
  | 1120 => []
  | 1136 => []
  | 1138 => []
  | 1161 => []
  | 1162 => []
  | 1163 => []
  | 1178 => []
  | 1196 => []
  | 1198 => []
  | 1215 => []
  | 1227 => []
  | 1228 => []
  | 1229 => []
  | 1230 => []
  | 1232 => []
  | _ => []
def map_12_174 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6416 : InImage map_12_174 image6416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6416 : Bundle := named_bundle% "RealMapCertificates/relations/basis6416.json"
theorem reductionProof6416 : EqualModuloRelations reduction6416.relations reduction6416.input reduction6416.output := by lin_cert using reduction6416.terms
theorem substitutionProof6416 : IsMapEvaluation generatorImages reduction6416.relations [817] reduction6416.output := by lin_cert using reduction6416.terms
def image6417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6417 : InImage map_12_174 image6417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6417 : Bundle := named_bundle% "RealMapCertificates/relations/basis6417.json"
theorem reductionProof6417 : EqualModuloRelations reduction6417.relations reduction6417.input reduction6417.output := by lin_cert using reduction6417.terms
theorem substitutionProof6417 : IsMapEvaluation generatorImages reduction6417.relations [816] reduction6417.output := by lin_cert using reduction6417.terms
def image6418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6418 : InImage map_12_174 image6418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6418 : Bundle := named_bundle% "RealMapCertificates/relations/basis6418.json"
theorem reductionProof6418 : EqualModuloRelations reduction6418.relations reduction6418.input reduction6418.output := by lin_cert using reduction6418.terms
theorem substitutionProof6418 : IsMapEvaluation generatorImages reduction6418.relations [13,566] reduction6418.output := by lin_cert using reduction6418.terms
def image6419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6419 : InImage map_12_174 image6419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6419 : Bundle := named_bundle% "RealMapCertificates/relations/basis6419.json"
theorem reductionProof6419 : EqualModuloRelations reduction6419.relations reduction6419.input reduction6419.output := by lin_cert using reduction6419.terms
theorem substitutionProof6419 : IsMapEvaluation generatorImages reduction6419.relations [3,719] reduction6419.output := by lin_cert using reduction6419.terms
def image6420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6420 : InImage map_12_174 image6420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6420 : Bundle := named_bundle% "RealMapCertificates/relations/basis6420.json"
theorem reductionProof6420 : EqualModuloRelations reduction6420.relations reduction6420.input reduction6420.output := by lin_cert using reduction6420.terms
theorem substitutionProof6420 : IsMapEvaluation generatorImages reduction6420.relations [1,789] reduction6420.output := by lin_cert using reduction6420.terms
def image6421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6421 : InImage map_12_174 image6421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6421 : Bundle := named_bundle% "RealMapCertificates/relations/basis6421.json"
theorem reductionProof6421 : EqualModuloRelations reduction6421.relations reduction6421.input reduction6421.output := by lin_cert using reduction6421.terms
theorem substitutionProof6421 : IsMapEvaluation generatorImages reduction6421.relations [0,0,793] reduction6421.output := by lin_cert using reduction6421.terms
def map_12_175 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6517 : InImage map_12_175 image6517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6517 : Bundle := named_bundle% "RealMapCertificates/relations/basis6517.json"
theorem reductionProof6517 : EqualModuloRelations reduction6517.relations reduction6517.input reduction6517.output := by lin_cert using reduction6517.terms
theorem substitutionProof6517 : IsMapEvaluation generatorImages reduction6517.relations [826] reduction6517.output := by lin_cert using reduction6517.terms
def image6518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6518 : InImage map_12_175 image6518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6518 : Bundle := named_bundle% "RealMapCertificates/relations/basis6518.json"
theorem reductionProof6518 : EqualModuloRelations reduction6518.relations reduction6518.input reduction6518.output := by lin_cert using reduction6518.terms
theorem substitutionProof6518 : IsMapEvaluation generatorImages reduction6518.relations [3,735] reduction6518.output := by lin_cert using reduction6518.terms
def image6519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6519 : InImage map_12_175 image6519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6519 : Bundle := named_bundle% "RealMapCertificates/relations/basis6519.json"
theorem reductionProof6519 : EqualModuloRelations reduction6519.relations reduction6519.input reduction6519.output := by lin_cert using reduction6519.terms
theorem substitutionProof6519 : IsMapEvaluation generatorImages reduction6519.relations [3,734] reduction6519.output := by lin_cert using reduction6519.terms
def image6520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6520 : InImage map_12_175 image6520 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6520 : Bundle := named_bundle% "RealMapCertificates/relations/basis6520.json"
theorem reductionProof6520 : EqualModuloRelations reduction6520.relations reduction6520.input reduction6520.output := by lin_cert using reduction6520.terms
theorem substitutionProof6520 : IsMapEvaluation generatorImages reduction6520.relations [0,0,0,0,0,18,446] reduction6520.output := by lin_cert using reduction6520.terms
def map_12_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6624 : InImage map_12_176 image6624 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6624 : Bundle := named_bundle% "RealMapCertificates/relations/basis6624.json"
theorem reductionProof6624 : EqualModuloRelations reduction6624.relations reduction6624.input reduction6624.output := by lin_cert using reduction6624.terms
theorem substitutionProof6624 : IsMapEvaluation generatorImages reduction6624.relations [8,17,324] reduction6624.output := by lin_cert using reduction6624.terms
def image6625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6625 : InImage map_12_176 image6625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6625 : Bundle := named_bundle% "RealMapCertificates/relations/basis6625.json"
theorem reductionProof6625 : EqualModuloRelations reduction6625.relations reduction6625.input reduction6625.output := by lin_cert using reduction6625.terms
theorem substitutionProof6625 : IsMapEvaluation generatorImages reduction6625.relations [1,7,632] reduction6625.output := by lin_cert using reduction6625.terms
def image6626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6626 : InImage map_12_176 image6626 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6626 : Bundle := named_bundle% "RealMapCertificates/relations/basis6626.json"
theorem reductionProof6626 : EqualModuloRelations reduction6626.relations reduction6626.input reduction6626.output := by lin_cert using reduction6626.terms
theorem substitutionProof6626 : IsMapEvaluation generatorImages reduction6626.relations [0,0,818] reduction6626.output := by lin_cert using reduction6626.terms
def map_12_177 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6762 : InImage map_12_177 image6762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6762 : Bundle := named_bundle% "RealMapCertificates/relations/basis6762.json"
theorem reductionProof6762 : EqualModuloRelations reduction6762.relations reduction6762.input reduction6762.output := by lin_cert using reduction6762.terms
theorem substitutionProof6762 : IsMapEvaluation generatorImages reduction6762.relations [861] reduction6762.output := by lin_cert using reduction6762.terms
def image6763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6763 : InImage map_12_177 image6763 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6763 : Bundle := named_bundle% "RealMapCertificates/relations/basis6763.json"
theorem reductionProof6763 : EqualModuloRelations reduction6763.relations reduction6763.input reduction6763.output := by lin_cert using reduction6763.terms
theorem substitutionProof6763 : IsMapEvaluation generatorImages reduction6763.relations [860] reduction6763.output := by lin_cert using reduction6763.terms
def image6764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6764 : InImage map_12_177 image6764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6764 : Bundle := named_bundle% "RealMapCertificates/relations/basis6764.json"
theorem reductionProof6764 : EqualModuloRelations reduction6764.relations reduction6764.input reduction6764.output := by lin_cert using reduction6764.terms
theorem substitutionProof6764 : IsMapEvaluation generatorImages reduction6764.relations [3,755] reduction6764.output := by lin_cert using reduction6764.terms
def image6765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6765 : InImage map_12_177 image6765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6765 : Bundle := named_bundle% "RealMapCertificates/relations/basis6765.json"
theorem reductionProof6765 : EqualModuloRelations reduction6765.relations reduction6765.input reduction6765.output := by lin_cert using reduction6765.terms
theorem substitutionProof6765 : IsMapEvaluation generatorImages reduction6765.relations [0,7,68,163] reduction6765.output := by lin_cert using reduction6765.terms
def map_12_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6862 : InImage map_12_178 image6862 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6862 : Bundle := named_bundle% "RealMapCertificates/relations/basis6862.json"
theorem reductionProof6862 : EqualModuloRelations reduction6862.relations reduction6862.input reduction6862.output := by lin_cert using reduction6862.terms
theorem substitutionProof6862 : IsMapEvaluation generatorImages reduction6862.relations [869] reduction6862.output := by lin_cert using reduction6862.terms
def image6863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6863 : InImage map_12_178 image6863 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6863 : Bundle := named_bundle% "RealMapCertificates/relations/basis6863.json"
theorem reductionProof6863 : EqualModuloRelations reduction6863.relations reduction6863.input reduction6863.output := by lin_cert using reduction6863.terms
theorem substitutionProof6863 : IsMapEvaluation generatorImages reduction6863.relations [0,3,757] reduction6863.output := by lin_cert using reduction6863.terms
def image6864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6864 : InImage map_12_178 image6864 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6864 : Bundle := named_bundle% "RealMapCertificates/relations/basis6864.json"
theorem reductionProof6864 : EqualModuloRelations reduction6864.relations reduction6864.input reduction6864.output := by lin_cert using reduction6864.terms
theorem substitutionProof6864 : IsMapEvaluation generatorImages reduction6864.relations [0,3,756] reduction6864.output := by lin_cert using reduction6864.terms
def image6865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6865 : InImage map_12_178 image6865 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6865 : Bundle := named_bundle% "RealMapCertificates/relations/basis6865.json"
theorem reductionProof6865 : EqualModuloRelations reduction6865.relations reduction6865.input reduction6865.output := by lin_cert using reduction6865.terms
theorem substitutionProof6865 : IsMapEvaluation generatorImages reduction6865.relations [0,0,846] reduction6865.output := by lin_cert using reduction6865.terms
def map_12_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6990 : InImage map_12_179 image6990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6990 : Bundle := named_bundle% "RealMapCertificates/relations/basis6990.json"
theorem reductionProof6990 : EqualModuloRelations reduction6990.relations reduction6990.input reduction6990.output := by lin_cert using reduction6990.terms
theorem substitutionProof6990 : IsMapEvaluation generatorImages reduction6990.relations [883] reduction6990.output := by lin_cert using reduction6990.terms
def image6991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6991 : InImage map_12_179 image6991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6991 : Bundle := named_bundle% "RealMapCertificates/relations/basis6991.json"
theorem reductionProof6991 : EqualModuloRelations reduction6991.relations reduction6991.input reduction6991.output := by lin_cert using reduction6991.terms
theorem substitutionProof6991 : IsMapEvaluation generatorImages reduction6991.relations [43,352] reduction6991.output := by lin_cert using reduction6991.terms
def image6992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6992 : InImage map_12_179 image6992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6992 : Bundle := named_bundle% "RealMapCertificates/relations/basis6992.json"
theorem reductionProof6992 : EqualModuloRelations reduction6992.relations reduction6992.input reduction6992.output := by lin_cert using reduction6992.terms
theorem substitutionProof6992 : IsMapEvaluation generatorImages reduction6992.relations [8,20,324] reduction6992.output := by lin_cert using reduction6992.terms
def map_12_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7132 : InImage map_12_180 image7132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7132 : Bundle := named_bundle% "RealMapCertificates/relations/basis7132.json"
theorem reductionProof7132 : EqualModuloRelations reduction7132.relations reduction7132.input reduction7132.output := by lin_cert using reduction7132.terms
theorem substitutionProof7132 : IsMapEvaluation generatorImages reduction7132.relations [3,790] reduction7132.output := by lin_cert using reduction7132.terms
def image7133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7133 : InImage map_12_180 image7133 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7133 : Bundle := named_bundle% "RealMapCertificates/relations/basis7133.json"
theorem reductionProof7133 : EqualModuloRelations reduction7133.relations reduction7133.input reduction7133.output := by lin_cert using reduction7133.terms
theorem substitutionProof7133 : IsMapEvaluation generatorImages reduction7133.relations [3,789] reduction7133.output := by lin_cert using reduction7133.terms
def image7134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7134 : InImage map_12_180 image7134 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7134 : Bundle := named_bundle% "RealMapCertificates/relations/basis7134.json"
theorem reductionProof7134 : EqualModuloRelations reduction7134.relations reduction7134.input reduction7134.output := by lin_cert using reduction7134.terms
theorem substitutionProof7134 : IsMapEvaluation generatorImages reduction7134.relations [0,884] reduction7134.output := by lin_cert using reduction7134.terms
def image7135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7135 : InImage map_12_180 image7135 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7135 : Bundle := named_bundle% "RealMapCertificates/relations/basis7135.json"
theorem reductionProof7135 : EqualModuloRelations reduction7135.relations reduction7135.input reduction7135.output := by lin_cert using reduction7135.terms
theorem substitutionProof7135 : IsMapEvaluation generatorImages reduction7135.relations [0,45,324] reduction7135.output := by lin_cert using reduction7135.terms
def map_12_181 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7229 : InImage map_12_181 image7229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7229 : Bundle := named_bundle% "RealMapCertificates/relations/basis7229.json"
theorem reductionProof7229 : EqualModuloRelations reduction7229.relations reduction7229.input reduction7229.output := by lin_cert using reduction7229.terms
theorem substitutionProof7229 : IsMapEvaluation generatorImages reduction7229.relations [1,884] reduction7229.output := by lin_cert using reduction7229.terms
def image7230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7230 : InImage map_12_181 image7230 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7230 : Bundle := named_bundle% "RealMapCertificates/relations/basis7230.json"
theorem reductionProof7230 : EqualModuloRelations reduction7230.relations reduction7230.input reduction7230.output := by lin_cert using reduction7230.terms
theorem substitutionProof7230 : IsMapEvaluation generatorImages reduction7230.relations [0,3,791] reduction7230.output := by lin_cert using reduction7230.terms
def image7231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7231 : InImage map_12_181 image7231 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7231 : Bundle := named_bundle% "RealMapCertificates/relations/basis7231.json"
theorem reductionProof7231 : EqualModuloRelations reduction7231.relations reduction7231.input reduction7231.output := by lin_cert using reduction7231.terms
theorem substitutionProof7231 : IsMapEvaluation generatorImages reduction7231.relations [0,0,0,7,676] reduction7231.output := by lin_cert using reduction7231.terms
def map_12_182 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7338 : InImage map_12_182 image7338 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7338 : Bundle := named_bundle% "RealMapCertificates/relations/basis7338.json"
theorem reductionProof7338 : EqualModuloRelations reduction7338.relations reduction7338.input reduction7338.output := by lin_cert using reduction7338.terms
theorem substitutionProof7338 : IsMapEvaluation generatorImages reduction7338.relations [912] reduction7338.output := by lin_cert using reduction7338.terms
def image7339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7339 : InImage map_12_182 image7339 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7339 : Bundle := named_bundle% "RealMapCertificates/relations/basis7339.json"
theorem reductionProof7339 : EqualModuloRelations reduction7339.relations reduction7339.input reduction7339.output := by lin_cert using reduction7339.terms
theorem substitutionProof7339 : IsMapEvaluation generatorImages reduction7339.relations [43,392] reduction7339.output := by lin_cert using reduction7339.terms
def image7340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7340 : InImage map_12_182 image7340 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7340 : Bundle := named_bundle% "RealMapCertificates/relations/basis7340.json"
theorem reductionProof7340 : EqualModuloRelations reduction7340.relations reduction7340.input reduction7340.output := by lin_cert using reduction7340.terms
theorem substitutionProof7340 : IsMapEvaluation generatorImages reduction7340.relations [8,696] reduction7340.output := by lin_cert using reduction7340.terms
def image7341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7341 : InImage map_12_182 image7341 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7341 : Bundle := named_bundle% "RealMapCertificates/relations/basis7341.json"
theorem reductionProof7341 : EqualModuloRelations reduction7341.relations reduction7341.input reduction7341.output := by lin_cert using reduction7341.terms
theorem substitutionProof7341 : IsMapEvaluation generatorImages reduction7341.relations [8,22,324] reduction7341.output := by lin_cert using reduction7341.terms
def image7342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7342 : InImage map_12_182 image7342 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7342 : Bundle := named_bundle% "RealMapCertificates/relations/basis7342.json"
theorem reductionProof7342 : EqualModuloRelations reduction7342.relations reduction7342.input reduction7342.output := by lin_cert using reduction7342.terms
theorem substitutionProof7342 : IsMapEvaluation generatorImages reduction7342.relations [0,893] reduction7342.output := by lin_cert using reduction7342.terms
def map_12_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7493 : InImage map_12_183 image7493 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7493 : Bundle := named_bundle% "RealMapCertificates/relations/basis7493.json"
theorem reductionProof7493 : EqualModuloRelations reduction7493.relations reduction7493.input reduction7493.output := by lin_cert using reduction7493.terms
theorem substitutionProof7493 : IsMapEvaluation generatorImages reduction7493.relations [2,884] reduction7493.output := by lin_cert using reduction7493.terms
def image7494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7494 : InImage map_12_183 image7494 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7494 : Bundle := named_bundle% "RealMapCertificates/relations/basis7494.json"
theorem reductionProof7494 : EqualModuloRelations reduction7494.relations reduction7494.input reduction7494.output := by lin_cert using reduction7494.terms
theorem substitutionProof7494 : IsMapEvaluation generatorImages reduction7494.relations [0,43,397] reduction7494.output := by lin_cert using reduction7494.terms
def image7495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7495 : InImage map_12_183 image7495 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7495 : Bundle := named_bundle% "RealMapCertificates/relations/basis7495.json"
theorem reductionProof7495 : EqualModuloRelations reduction7495.relations reduction7495.input reduction7495.output := by lin_cert using reduction7495.terms
theorem substitutionProof7495 : IsMapEvaluation generatorImages reduction7495.relations [0,43,396] reduction7495.output := by lin_cert using reduction7495.terms
def image7496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7496 : InImage map_12_183 image7496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7496 : Bundle := named_bundle% "RealMapCertificates/relations/basis7496.json"
theorem reductionProof7496 : EqualModuloRelations reduction7496.relations reduction7496.input reduction7496.output := by lin_cert using reduction7496.terms
theorem substitutionProof7496 : IsMapEvaluation generatorImages reduction7496.relations [0,3,818] reduction7496.output := by lin_cert using reduction7496.terms
def map_12_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7595 : InImage map_12_184 image7595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7595 : Bundle := named_bundle% "RealMapCertificates/relations/basis7595.json"
theorem reductionProof7595 : EqualModuloRelations reduction7595.relations reduction7595.input reduction7595.output := by lin_cert using reduction7595.terms
theorem substitutionProof7595 : IsMapEvaluation generatorImages reduction7595.relations [937] reduction7595.output := by lin_cert using reduction7595.terms
def image7596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7596 : InImage map_12_184 image7596 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7596 : Bundle := named_bundle% "RealMapCertificates/relations/basis7596.json"
theorem reductionProof7596 : EqualModuloRelations reduction7596.relations reduction7596.input reduction7596.output := by lin_cert using reduction7596.terms
theorem substitutionProof7596 : IsMapEvaluation generatorImages reduction7596.relations [1,18,563] reduction7596.output := by lin_cert using reduction7596.terms
def map_12_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7714 : InImage map_12_185 image7714 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7714 : Bundle := named_bundle% "RealMapCertificates/relations/basis7714.json"
theorem reductionProof7714 : EqualModuloRelations reduction7714.relations reduction7714.input reduction7714.output := by lin_cert using reduction7714.terms
theorem substitutionProof7714 : IsMapEvaluation generatorImages reduction7714.relations [8,29,324] reduction7714.output := by lin_cert using reduction7714.terms
def image7715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7715 : InImage map_12_185 image7715 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7715 : Bundle := named_bundle% "RealMapCertificates/relations/basis7715.json"
theorem reductionProof7715 : EqualModuloRelations reduction7715.relations reduction7715.input reduction7715.output := by lin_cert using reduction7715.terms
theorem substitutionProof7715 : IsMapEvaluation generatorImages reduction7715.relations [2,893] reduction7715.output := by lin_cert using reduction7715.terms
def image7716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7716 : InImage map_12_185 image7716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7716 : Bundle := named_bundle% "RealMapCertificates/relations/basis7716.json"
theorem reductionProof7716 : EqualModuloRelations reduction7716.relations reduction7716.input reduction7716.output := by lin_cert using reduction7716.terms
theorem substitutionProof7716 : IsMapEvaluation generatorImages reduction7716.relations [0,938] reduction7716.output := by lin_cert using reduction7716.terms
def map_12_186 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7854 : InImage map_12_186 image7854 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7854 : Bundle := named_bundle% "RealMapCertificates/relations/basis7854.json"
theorem reductionProof7854 : EqualModuloRelations reduction7854.relations reduction7854.input reduction7854.output := by lin_cert using reduction7854.terms
theorem substitutionProof7854 : IsMapEvaluation generatorImages reduction7854.relations [76,264] reduction7854.output := by lin_cert using reduction7854.terms
def image7855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7855 : InImage map_12_186 image7855 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7855 : Bundle := named_bundle% "RealMapCertificates/relations/basis7855.json"
theorem reductionProof7855 : EqualModuloRelations reduction7855.relations reduction7855.input reduction7855.output := by lin_cert using reduction7855.terms
theorem substitutionProof7855 : IsMapEvaluation generatorImages reduction7855.relations [18,591] reduction7855.output := by lin_cert using reduction7855.terms
def image7856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7856 : InImage map_12_186 image7856 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7856 : Bundle := named_bundle% "RealMapCertificates/relations/basis7856.json"
theorem reductionProof7856 : EqualModuloRelations reduction7856.relations reduction7856.input reduction7856.output := by lin_cert using reduction7856.terms
theorem substitutionProof7856 : IsMapEvaluation generatorImages reduction7856.relations [2,43,396] reduction7856.output := by lin_cert using reduction7856.terms
def image7857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7857 : InImage map_12_186 image7857 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7857 : Bundle := named_bundle% "RealMapCertificates/relations/basis7857.json"
theorem reductionProof7857 : EqualModuloRelations reduction7857.relations reduction7857.input reduction7857.output := by lin_cert using reduction7857.terms
theorem substitutionProof7857 : IsMapEvaluation generatorImages reduction7857.relations [1,938] reduction7857.output := by lin_cert using reduction7857.terms
def map_12_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7940 : InImage map_12_187 image7940 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7940 : Bundle := named_bundle% "RealMapCertificates/relations/basis7940.json"
theorem reductionProof7940 : EqualModuloRelations reduction7940.relations reduction7940.input reduction7940.output := by lin_cert using reduction7940.terms
theorem substitutionProof7940 : IsMapEvaluation generatorImages reduction7940.relations [3,884] reduction7940.output := by lin_cert using reduction7940.terms
def map_12_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8061 : InImage map_12_188 image8061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8061 : Bundle := named_bundle% "RealMapCertificates/relations/basis8061.json"
theorem reductionProof8061 : EqualModuloRelations reduction8061.relations reduction8061.input reduction8061.output := by lin_cert using reduction8061.terms
theorem substitutionProof8061 : IsMapEvaluation generatorImages reduction8061.relations [18,615] reduction8061.output := by lin_cert using reduction8061.terms
def image8062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8062 : InImage map_12_188 image8062 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8062 : Bundle := named_bundle% "RealMapCertificates/relations/basis8062.json"
theorem reductionProof8062 : EqualModuloRelations reduction8062.relations reduction8062.input reduction8062.output := by lin_cert using reduction8062.terms
theorem substitutionProof8062 : IsMapEvaluation generatorImages reduction8062.relations [8,32,324] reduction8062.output := by lin_cert using reduction8062.terms
def image8063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8063 : InImage map_12_188 image8063 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8063 : Bundle := named_bundle% "RealMapCertificates/relations/basis8063.json"
theorem reductionProof8063 : EqualModuloRelations reduction8063.relations reduction8063.input reduction8063.output := by lin_cert using reduction8063.terms
theorem substitutionProof8063 : IsMapEvaluation generatorImages reduction8063.relations [2,938] reduction8063.output := by lin_cert using reduction8063.terms
def image8064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8064 : InImage map_12_188 image8064 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8064 : Bundle := named_bundle% "RealMapCertificates/relations/basis8064.json"
theorem reductionProof8064 : EqualModuloRelations reduction8064.relations reduction8064.input reduction8064.output := by lin_cert using reduction8064.terms
theorem substitutionProof8064 : IsMapEvaluation generatorImages reduction8064.relations [2,7,746] reduction8064.output := by lin_cert using reduction8064.terms
def image8065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8065 : InImage map_12_188 image8065 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8065 : Bundle := named_bundle% "RealMapCertificates/relations/basis8065.json"
theorem reductionProof8065 : EqualModuloRelations reduction8065.relations reduction8065.input reduction8065.output := by lin_cert using reduction8065.terms
theorem substitutionProof8065 : IsMapEvaluation generatorImages reduction8065.relations [1,961] reduction8065.output := by lin_cert using reduction8065.terms
def map_12_189 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8212 : InImage map_12_189 image8212 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8212 : Bundle := named_bundle% "RealMapCertificates/relations/basis8212.json"
theorem reductionProof8212 : EqualModuloRelations reduction8212.relations reduction8212.input reduction8212.output := by lin_cert using reduction8212.terms
theorem substitutionProof8212 : IsMapEvaluation generatorImages reduction8212.relations [1,968] reduction8212.output := by lin_cert using reduction8212.terms
def image8213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8213 : InImage map_12_189 image8213 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8213 : Bundle := named_bundle% "RealMapCertificates/relations/basis8213.json"
theorem reductionProof8213 : EqualModuloRelations reduction8213.relations reduction8213.input reduction8213.output := by lin_cert using reduction8213.terms
theorem substitutionProof8213 : IsMapEvaluation generatorImages reduction8213.relations [0,993] reduction8213.output := by lin_cert using reduction8213.terms
def map_12_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8320 : InImage map_12_190 image8320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8320 : Bundle := named_bundle% "RealMapCertificates/relations/basis8320.json"
theorem reductionProof8320 : EqualModuloRelations reduction8320.relations reduction8320.input reduction8320.output := by lin_cert using reduction8320.terms
theorem substitutionProof8320 : IsMapEvaluation generatorImages reduction8320.relations [1026] reduction8320.output := by lin_cert using reduction8320.terms
def map_12_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8441 : InImage map_12_191 image8441 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8441 : Bundle := named_bundle% "RealMapCertificates/relations/basis8441.json"
theorem reductionProof8441 : EqualModuloRelations reduction8441.relations reduction8441.input reduction8441.output := by lin_cert using reduction8441.terms
theorem substitutionProof8441 : IsMapEvaluation generatorImages reduction8441.relations [9,32,324] reduction8441.output := by lin_cert using reduction8441.terms
def image8442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8442 : InImage map_12_191 image8442 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8442 : Bundle := named_bundle% "RealMapCertificates/relations/basis8442.json"
theorem reductionProof8442 : EqualModuloRelations reduction8442.relations reduction8442.input reduction8442.output := by lin_cert using reduction8442.terms
theorem substitutionProof8442 : IsMapEvaluation generatorImages reduction8442.relations [0,1027] reduction8442.output := by lin_cert using reduction8442.terms
def map_12_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8591 : InImage map_12_192 image8591 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8591 : Bundle := named_bundle% "RealMapCertificates/relations/basis8591.json"
theorem reductionProof8591 : EqualModuloRelations reduction8591.relations reduction8591.input reduction8591.output := by lin_cert using reduction8591.terms
theorem substitutionProof8591 : IsMapEvaluation generatorImages reduction8591.relations [1,1027] reduction8591.output := by lin_cert using reduction8591.terms
def image8592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8592 : InImage map_12_192 image8592 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8592 : Bundle := named_bundle% "RealMapCertificates/relations/basis8592.json"
theorem reductionProof8592 : EqualModuloRelations reduction8592.relations reduction8592.input reduction8592.output := by lin_cert using reduction8592.terms
theorem substitutionProof8592 : IsMapEvaluation generatorImages reduction8592.relations [0,64,324] reduction8592.output := by lin_cert using reduction8592.terms
def image8593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8593 : InImage map_12_192 image8593 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8593 : Bundle := named_bundle% "RealMapCertificates/relations/basis8593.json"
theorem reductionProof8593 : EqualModuloRelations reduction8593.relations reduction8593.input reduction8593.output := by lin_cert using reduction8593.terms
theorem substitutionProof8593 : IsMapEvaluation generatorImages reduction8593.relations [0,0,1028] reduction8593.output := by lin_cert using reduction8593.terms
def map_12_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8687 : InImage map_12_193 image8687 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8687 : Bundle := named_bundle% "RealMapCertificates/relations/basis8687.json"
theorem reductionProof8687 : EqualModuloRelations reduction8687.relations reduction8687.input reduction8687.output := by lin_cert using reduction8687.terms
theorem substitutionProof8687 : IsMapEvaluation generatorImages reduction8687.relations [1074] reduction8687.output := by lin_cert using reduction8687.terms
def image8688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8688 : InImage map_12_193 image8688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8688 : Bundle := named_bundle% "RealMapCertificates/relations/basis8688.json"
theorem reductionProof8688 : EqualModuloRelations reduction8688.relations reduction8688.input reduction8688.output := by lin_cert using reduction8688.terms
theorem substitutionProof8688 : IsMapEvaluation generatorImages reduction8688.relations [1,64,324] reduction8688.output := by lin_cert using reduction8688.terms
def image8689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8689 : InImage map_12_193 image8689 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8689 : Bundle := named_bundle% "RealMapCertificates/relations/basis8689.json"
theorem reductionProof8689 : EqualModuloRelations reduction8689.relations reduction8689.input reduction8689.output := by lin_cert using reduction8689.terms
theorem substitutionProof8689 : IsMapEvaluation generatorImages reduction8689.relations [0,66,324] reduction8689.output := by lin_cert using reduction8689.terms
def map_12_194 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8834 : InImage map_12_194 image8834 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8834 : Bundle := named_bundle% "RealMapCertificates/relations/basis8834.json"
theorem reductionProof8834 : EqualModuloRelations reduction8834.relations reduction8834.input reduction8834.output := by lin_cert using reduction8834.terms
theorem substitutionProof8834 : IsMapEvaluation generatorImages reduction8834.relations [13,32,324] reduction8834.output := by lin_cert using reduction8834.terms
def image8835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8835 : InImage map_12_194 image8835 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8835 : Bundle := named_bundle% "RealMapCertificates/relations/basis8835.json"
theorem reductionProof8835 : EqualModuloRelations reduction8835.relations reduction8835.input reduction8835.output := by lin_cert using reduction8835.terms
theorem substitutionProof8835 : IsMapEvaluation generatorImages reduction8835.relations [0,18,18,333] reduction8835.output := by lin_cert using reduction8835.terms
def map_12_195 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8991 : InImage map_12_195 image8991 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8991 : Bundle := named_bundle% "RealMapCertificates/relations/basis8991.json"
theorem reductionProof8991 : EqualModuloRelations reduction8991.relations reduction8991.input reduction8991.output := by lin_cert using reduction8991.terms
theorem substitutionProof8991 : IsMapEvaluation generatorImages reduction8991.relations [0,72,324] reduction8991.output := by lin_cert using reduction8991.terms
def image8992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8992 : InImage map_12_195 image8992 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8992 : Bundle := named_bundle% "RealMapCertificates/relations/basis8992.json"
theorem reductionProof8992 : EqualModuloRelations reduction8992.relations reduction8992.input reduction8992.output := by lin_cert using reduction8992.terms
theorem substitutionProof8992 : IsMapEvaluation generatorImages reduction8992.relations [0,0,18,659] reduction8992.output := by lin_cert using reduction8992.terms
def map_12_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9114 : InImage map_12_196 image9114 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9114 : Bundle := named_bundle% "RealMapCertificates/relations/basis9114.json"
theorem reductionProof9114 : EqualModuloRelations reduction9114.relations reduction9114.input reduction9114.output := by lin_cert using reduction9114.terms
theorem substitutionProof9114 : IsMapEvaluation generatorImages reduction9114.relations [1119] reduction9114.output := by lin_cert using reduction9114.terms
def image9115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9115 : InImage map_12_196 image9115 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9115 : Bundle := named_bundle% "RealMapCertificates/relations/basis9115.json"
theorem reductionProof9115 : EqualModuloRelations reduction9115.relations reduction9115.input reduction9115.output := by lin_cert using reduction9115.terms
theorem substitutionProof9115 : IsMapEvaluation generatorImages reduction9115.relations [1118] reduction9115.output := by lin_cert using reduction9115.terms
def image9116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9116 : InImage map_12_196 image9116 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9116 : Bundle := named_bundle% "RealMapCertificates/relations/basis9116.json"
theorem reductionProof9116 : EqualModuloRelations reduction9116.relations reduction9116.input reduction9116.output := by lin_cert using reduction9116.terms
theorem substitutionProof9116 : IsMapEvaluation generatorImages reduction9116.relations [1,72,324] reduction9116.output := by lin_cert using reduction9116.terms
def map_12_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9264 : InImage map_12_197 image9264 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9264 : Bundle := named_bundle% "RealMapCertificates/relations/basis9264.json"
theorem reductionProof9264 : EqualModuloRelations reduction9264.relations reduction9264.input reduction9264.output := by lin_cert using reduction9264.terms
theorem substitutionProof9264 : IsMapEvaluation generatorImages reduction9264.relations [1136] reduction9264.output := by lin_cert using reduction9264.terms
def image9265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9265 : InImage map_12_197 image9265 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9265 : Bundle := named_bundle% "RealMapCertificates/relations/basis9265.json"
theorem reductionProof9265 : EqualModuloRelations reduction9265.relations reduction9265.input reduction9265.output := by lin_cert using reduction9265.terms
theorem substitutionProof9265 : IsMapEvaluation generatorImages reduction9265.relations [0,1120] reduction9265.output := by lin_cert using reduction9265.terms
def map_12_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9447 : InImage map_12_198 image9447 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9447 : Bundle := named_bundle% "RealMapCertificates/relations/basis9447.json"
theorem reductionProof9447 : EqualModuloRelations reduction9447.relations reduction9447.input reduction9447.output := by lin_cert using reduction9447.terms
theorem substitutionProof9447 : IsMapEvaluation generatorImages reduction9447.relations [1161] reduction9447.output := by lin_cert using reduction9447.terms
def image9448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9448 : InImage map_12_198 image9448 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9448 : Bundle := named_bundle% "RealMapCertificates/relations/basis9448.json"
theorem reductionProof9448 : EqualModuloRelations reduction9448.relations reduction9448.input reduction9448.output := by lin_cert using reduction9448.terms
theorem substitutionProof9448 : IsMapEvaluation generatorImages reduction9448.relations [0,1138] reduction9448.output := by lin_cert using reduction9448.terms
def image9449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9449 : InImage map_12_198 image9449 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9449 : Bundle := named_bundle% "RealMapCertificates/relations/basis9449.json"
theorem reductionProof9449 : EqualModuloRelations reduction9449.relations reduction9449.input reduction9449.output := by lin_cert using reduction9449.terms
theorem substitutionProof9449 : IsMapEvaluation generatorImages reduction9449.relations [0,79,324] reduction9449.output := by lin_cert using reduction9449.terms
def map_12_199 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9576 : InImage map_12_199 image9576 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9576 : Bundle := named_bundle% "RealMapCertificates/relations/basis9576.json"
theorem reductionProof9576 : EqualModuloRelations reduction9576.relations reduction9576.input reduction9576.output := by lin_cert using reduction9576.terms
theorem substitutionProof9576 : IsMapEvaluation generatorImages reduction9576.relations [1,79,324] reduction9576.output := by lin_cert using reduction9576.terms
def image9577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9577 : InImage map_12_199 image9577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9577 : Bundle := named_bundle% "RealMapCertificates/relations/basis9577.json"
theorem reductionProof9577 : EqualModuloRelations reduction9577.relations reduction9577.input reduction9577.output := by lin_cert using reduction9577.terms
theorem substitutionProof9577 : IsMapEvaluation generatorImages reduction9577.relations [0,1163] reduction9577.output := by lin_cert using reduction9577.terms
def image9578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9578 : InImage map_12_199 image9578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9578 : Bundle := named_bundle% "RealMapCertificates/relations/basis9578.json"
theorem reductionProof9578 : EqualModuloRelations reduction9578.relations reduction9578.input reduction9578.output := by lin_cert using reduction9578.terms
theorem substitutionProof9578 : IsMapEvaluation generatorImages reduction9578.relations [0,1162] reduction9578.output := by lin_cert using reduction9578.terms
def image9579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9579 : InImage map_12_199 image9579 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9579 : Bundle := named_bundle% "RealMapCertificates/relations/basis9579.json"
theorem reductionProof9579 : EqualModuloRelations reduction9579.relations reduction9579.input reduction9579.output := by lin_cert using reduction9579.terms
theorem substitutionProof9579 : IsMapEvaluation generatorImages reduction9579.relations [0,0,80,324] reduction9579.output := by lin_cert using reduction9579.terms
def map_12_200 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9741 : InImage map_12_200 image9741 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9741 : Bundle := named_bundle% "RealMapCertificates/relations/basis9741.json"
theorem reductionProof9741 : EqualModuloRelations reduction9741.relations reduction9741.input reduction9741.output := by lin_cert using reduction9741.terms
theorem substitutionProof9741 : IsMapEvaluation generatorImages reduction9741.relations [1196] reduction9741.output := by lin_cert using reduction9741.terms
def image9742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9742 : InImage map_12_200 image9742 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9742 : Bundle := named_bundle% "RealMapCertificates/relations/basis9742.json"
theorem reductionProof9742 : EqualModuloRelations reduction9742.relations reduction9742.input reduction9742.output := by lin_cert using reduction9742.terms
theorem substitutionProof9742 : IsMapEvaluation generatorImages reduction9742.relations [23,24,324] reduction9742.output := by lin_cert using reduction9742.terms
def image9743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9743 : InImage map_12_200 image9743 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9743 : Bundle := named_bundle% "RealMapCertificates/relations/basis9743.json"
theorem reductionProof9743 : EqualModuloRelations reduction9743.relations reduction9743.input reduction9743.output := by lin_cert using reduction9743.terms
theorem substitutionProof9743 : IsMapEvaluation generatorImages reduction9743.relations [2,1120] reduction9743.output := by lin_cert using reduction9743.terms
def image9744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9744 : InImage map_12_200 image9744 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9744 : Bundle := named_bundle% "RealMapCertificates/relations/basis9744.json"
theorem reductionProof9744 : EqualModuloRelations reduction9744.relations reduction9744.input reduction9744.output := by lin_cert using reduction9744.terms
theorem substitutionProof9744 : IsMapEvaluation generatorImages reduction9744.relations [1,1163] reduction9744.output := by lin_cert using reduction9744.terms
def image9745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9745 : InImage map_12_200 image9745 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9745 : Bundle := named_bundle% "RealMapCertificates/relations/basis9745.json"
theorem reductionProof9745 : EqualModuloRelations reduction9745.relations reduction9745.input reduction9745.output := by lin_cert using reduction9745.terms
theorem substitutionProof9745 : IsMapEvaluation generatorImages reduction9745.relations [1,1162] reduction9745.output := by lin_cert using reduction9745.terms
def image9746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9746 : InImage map_12_200 image9746 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9746 : Bundle := named_bundle% "RealMapCertificates/relations/basis9746.json"
theorem reductionProof9746 : EqualModuloRelations reduction9746.relations reduction9746.input reduction9746.output := by lin_cert using reduction9746.terms
theorem substitutionProof9746 : IsMapEvaluation generatorImages reduction9746.relations [0,1178] reduction9746.output := by lin_cert using reduction9746.terms
def image9747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9747 : InImage map_12_200 image9747 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9747 : Bundle := named_bundle% "RealMapCertificates/relations/basis9747.json"
theorem reductionProof9747 : EqualModuloRelations reduction9747.relations reduction9747.input reduction9747.output := by lin_cert using reduction9747.terms
theorem substitutionProof9747 : IsMapEvaluation generatorImages reduction9747.relations [0,0,81,324] reduction9747.output := by lin_cert using reduction9747.terms
def image9748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9748 : InImage map_12_200 image9748 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9748 : Bundle := named_bundle% "RealMapCertificates/relations/basis9748.json"
theorem reductionProof9748 : EqualModuloRelations reduction9748.relations reduction9748.input reduction9748.output := by lin_cert using reduction9748.terms
theorem substitutionProof9748 : IsMapEvaluation generatorImages reduction9748.relations [0,0,0,0,0,0,0,0,1058] reduction9748.output := by lin_cert using reduction9748.terms
def map_12_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9928 : InImage map_12_201 image9928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9928 : Bundle := named_bundle% "RealMapCertificates/relations/basis9928.json"
theorem reductionProof9928 : EqualModuloRelations reduction9928.relations reduction9928.input reduction9928.output := by lin_cert using reduction9928.terms
theorem substitutionProof9928 : IsMapEvaluation generatorImages reduction9928.relations [1215] reduction9928.output := by lin_cert using reduction9928.terms
def image9929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9929 : InImage map_12_201 image9929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9929 : Bundle := named_bundle% "RealMapCertificates/relations/basis9929.json"
theorem reductionProof9929 : EqualModuloRelations reduction9929.relations reduction9929.input reduction9929.output := by lin_cert using reduction9929.terms
theorem substitutionProof9929 : IsMapEvaluation generatorImages reduction9929.relations [0,1198] reduction9929.output := by lin_cert using reduction9929.terms
def image9930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9930 : InImage map_12_201 image9930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9930 : Bundle := named_bundle% "RealMapCertificates/relations/basis9930.json"
theorem reductionProof9930 : EqualModuloRelations reduction9930.relations reduction9930.input reduction9930.output := by lin_cert using reduction9930.terms
theorem substitutionProof9930 : IsMapEvaluation generatorImages reduction9930.relations [0,90,324] reduction9930.output := by lin_cert using reduction9930.terms
def image9931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9931 : InImage map_12_201 image9931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9931 : Bundle := named_bundle% "RealMapCertificates/relations/basis9931.json"
theorem reductionProof9931 : EqualModuloRelations reduction9931.relations reduction9931.input reduction9931.output := by lin_cert using reduction9931.terms
theorem substitutionProof9931 : IsMapEvaluation generatorImages reduction9931.relations [0,89,324] reduction9931.output := by lin_cert using reduction9931.terms
def map_12_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10056 : InImage map_12_202 image10056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10056 : Bundle := named_bundle% "RealMapCertificates/relations/basis10056.json"
theorem reductionProof10056 : EqualModuloRelations reduction10056.relations reduction10056.input reduction10056.output := by lin_cert using reduction10056.terms
theorem substitutionProof10056 : IsMapEvaluation generatorImages reduction10056.relations [1229] reduction10056.output := by lin_cert using reduction10056.terms
def image10057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10057 : InImage map_12_202 image10057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10057 : Bundle := named_bundle% "RealMapCertificates/relations/basis10057.json"
theorem reductionProof10057 : EqualModuloRelations reduction10057.relations reduction10057.input reduction10057.output := by lin_cert using reduction10057.terms
theorem substitutionProof10057 : IsMapEvaluation generatorImages reduction10057.relations [1228] reduction10057.output := by lin_cert using reduction10057.terms
def image10058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10058 : InImage map_12_202 image10058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10058 : Bundle := named_bundle% "RealMapCertificates/relations/basis10058.json"
theorem reductionProof10058 : EqualModuloRelations reduction10058.relations reduction10058.input reduction10058.output := by lin_cert using reduction10058.terms
theorem substitutionProof10058 : IsMapEvaluation generatorImages reduction10058.relations [1227] reduction10058.output := by lin_cert using reduction10058.terms
def image10059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10059 : InImage map_12_202 image10059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10059 : Bundle := named_bundle% "RealMapCertificates/relations/basis10059.json"
theorem reductionProof10059 : EqualModuloRelations reduction10059.relations reduction10059.input reduction10059.output := by lin_cert using reduction10059.terms
theorem substitutionProof10059 : IsMapEvaluation generatorImages reduction10059.relations [1,1,81,324] reduction10059.output := by lin_cert using reduction10059.terms
def image10060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10060 : InImage map_12_202 image10060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10060 : Bundle := named_bundle% "RealMapCertificates/relations/basis10060.json"
theorem reductionProof10060 : EqualModuloRelations reduction10060.relations reduction10060.input reduction10060.output := by lin_cert using reduction10060.terms
theorem substitutionProof10060 : IsMapEvaluation generatorImages reduction10060.relations [0,2,80,324] reduction10060.output := by lin_cert using reduction10060.terms
def map_12_203 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10242 : InImage map_12_203 image10242 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10242 : Bundle := named_bundle% "RealMapCertificates/relations/basis10242.json"
theorem reductionProof10242 : EqualModuloRelations reduction10242.relations reduction10242.input reduction10242.output := by lin_cert using reduction10242.terms
theorem substitutionProof10242 : IsMapEvaluation generatorImages reduction10242.relations [7,968] reduction10242.output := by lin_cert using reduction10242.terms
def image10243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10243 : InImage map_12_203 image10243 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10243 : Bundle := named_bundle% "RealMapCertificates/relations/basis10243.json"
theorem reductionProof10243 : EqualModuloRelations reduction10243.relations reduction10243.input reduction10243.output := by lin_cert using reduction10243.terms
theorem substitutionProof10243 : IsMapEvaluation generatorImages reduction10243.relations [0,1232] reduction10243.output := by lin_cert using reduction10243.terms
def image10244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10244 : InImage map_12_203 image10244 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10244 : Bundle := named_bundle% "RealMapCertificates/relations/basis10244.json"
theorem reductionProof10244 : EqualModuloRelations reduction10244.relations reduction10244.input reduction10244.output := by lin_cert using reduction10244.terms
theorem substitutionProof10244 : IsMapEvaluation generatorImages reduction10244.relations [0,1230] reduction10244.output := by lin_cert using reduction10244.terms
end RealMapCertificates
