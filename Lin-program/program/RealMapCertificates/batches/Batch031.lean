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
  | 67 => []
  | 68 => []
  | 72 => []
  | 75 => []
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
  | 324 => []
  | 1120 => []
  | 1137 => []
  | 1162 => []
  | 1178 => []
  | 1197 => []
  | 1198 => []
  | 1216 => []
  | 1230 => []
  | 1231 => []
  | 1232 => []
  | 1234 => []
  | 1252 => []
  | 1273 => []
  | 1274 => []
  | 1275 => []
  | 1276 => []
  | 1277 => []
  | 1278 => []
  | 1279 => []
  | 1280 => []
  | 1281 => []
  | 1298 => []
  | 1332 => []
  | 1342 => []
  | 1343 => []
  | 1344 => []
  | 1345 => []
  | 1346 => []
  | 1356 => []
  | 1357 => []
  | 1358 => []
  | 1380 => []
  | 1394 => []
  | 1413 => []
  | 1414 => []
  | 1415 => []
  | 1416 => []
  | 1417 => []
  | 1418 => []
  | 1420 => []
  | 1458 => []
  | 1459 => []
  | 1460 => []
  | 1461 => []
  | 1478 => []
  | 1479 => []
  | 1528 => []
  | 1529 => []
  | 1530 => []
  | 1531 => []
  | 1582 => []
  | 1583 => []
  | 1603 => []
  | _ => []
def map_12_204 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10437 : InImage map_12_204 image10437 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10437 : Bundle := named_bundle% "RealMapCertificates/relations/basis10437.json"
theorem reductionProof10437 : EqualModuloRelations reduction10437.relations reduction10437.input reduction10437.output := by lin_cert using reduction10437.terms
theorem substitutionProof10437 : IsMapEvaluation generatorImages reduction10437.relations [1274] reduction10437.output := by lin_cert using reduction10437.terms
def image10438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10438 : InImage map_12_204 image10438 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10438 : Bundle := named_bundle% "RealMapCertificates/relations/basis10438.json"
theorem reductionProof10438 : EqualModuloRelations reduction10438.relations reduction10438.input reduction10438.output := by lin_cert using reduction10438.terms
theorem substitutionProof10438 : IsMapEvaluation generatorImages reduction10438.relations [1273] reduction10438.output := by lin_cert using reduction10438.terms
def image10439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10439 : InImage map_12_204 image10439 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10439 : Bundle := named_bundle% "RealMapCertificates/relations/basis10439.json"
theorem reductionProof10439 : EqualModuloRelations reduction10439.relations reduction10439.input reduction10439.output := by lin_cert using reduction10439.terms
theorem substitutionProof10439 : IsMapEvaluation generatorImages reduction10439.relations [3,1120] reduction10439.output := by lin_cert using reduction10439.terms
def image10440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10440 : InImage map_12_204 image10440 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10440 : Bundle := named_bundle% "RealMapCertificates/relations/basis10440.json"
theorem reductionProof10440 : EqualModuloRelations reduction10440.relations reduction10440.input reduction10440.output := by lin_cert using reduction10440.terms
theorem substitutionProof10440 : IsMapEvaluation generatorImages reduction10440.relations [2,1197] reduction10440.output := by lin_cert using reduction10440.terms
def image10441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10441 : InImage map_12_204 image10441 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10441 : Bundle := named_bundle% "RealMapCertificates/relations/basis10441.json"
theorem reductionProof10441 : EqualModuloRelations reduction10441.relations reduction10441.input reduction10441.output := by lin_cert using reduction10441.terms
theorem substitutionProof10441 : IsMapEvaluation generatorImages reduction10441.relations [1,98,324] reduction10441.output := by lin_cert using reduction10441.terms
def image10442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10442 : InImage map_12_204 image10442 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10442 : Bundle := named_bundle% "RealMapCertificates/relations/basis10442.json"
theorem reductionProof10442 : EqualModuloRelations reduction10442.relations reduction10442.input reduction10442.output := by lin_cert using reduction10442.terms
theorem substitutionProof10442 : IsMapEvaluation generatorImages reduction10442.relations [0,1252] reduction10442.output := by lin_cert using reduction10442.terms
def image10443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10443 : InImage map_12_204 image10443 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10443 : Bundle := named_bundle% "RealMapCertificates/relations/basis10443.json"
theorem reductionProof10443 : EqualModuloRelations reduction10443.relations reduction10443.input reduction10443.output := by lin_cert using reduction10443.terms
theorem substitutionProof10443 : IsMapEvaluation generatorImages reduction10443.relations [0,101,324] reduction10443.output := by lin_cert using reduction10443.terms
def map_12_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10584 : InImage map_12_205 image10584 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10584 : Bundle := named_bundle% "RealMapCertificates/relations/basis10584.json"
theorem reductionProof10584 : EqualModuloRelations reduction10584.relations reduction10584.input reduction10584.output := by lin_cert using reduction10584.terms
theorem substitutionProof10584 : IsMapEvaluation generatorImages reduction10584.relations [1298] reduction10584.output := by lin_cert using reduction10584.terms
def image10585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10585 : InImage map_12_205 image10585 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10585 : Bundle := named_bundle% "RealMapCertificates/relations/basis10585.json"
theorem reductionProof10585 : EqualModuloRelations reduction10585.relations reduction10585.input reduction10585.output := by lin_cert using reduction10585.terms
theorem substitutionProof10585 : IsMapEvaluation generatorImages reduction10585.relations [0,1277] reduction10585.output := by lin_cert using reduction10585.terms
def image10586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10586 : InImage map_12_205 image10586 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10586 : Bundle := named_bundle% "RealMapCertificates/relations/basis10586.json"
theorem reductionProof10586 : EqualModuloRelations reduction10586.relations reduction10586.input reduction10586.output := by lin_cert using reduction10586.terms
theorem substitutionProof10586 : IsMapEvaluation generatorImages reduction10586.relations [0,1276] reduction10586.output := by lin_cert using reduction10586.terms
def image10587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10587 : InImage map_12_205 image10587 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10587 : Bundle := named_bundle% "RealMapCertificates/relations/basis10587.json"
theorem reductionProof10587 : EqualModuloRelations reduction10587.relations reduction10587.input reduction10587.output := by lin_cert using reduction10587.terms
theorem substitutionProof10587 : IsMapEvaluation generatorImages reduction10587.relations [0,1275] reduction10587.output := by lin_cert using reduction10587.terms
def image10588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10588 : InImage map_12_205 image10588 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10588 : Bundle := named_bundle% "RealMapCertificates/relations/basis10588.json"
theorem reductionProof10588 : EqualModuloRelations reduction10588.relations reduction10588.input reduction10588.output := by lin_cert using reduction10588.terms
theorem substitutionProof10588 : IsMapEvaluation generatorImages reduction10588.relations [0,104,324] reduction10588.output := by lin_cert using reduction10588.terms
def image10589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10589 : InImage map_12_205 image10589 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10589 : Bundle := named_bundle% "RealMapCertificates/relations/basis10589.json"
theorem reductionProof10589 : EqualModuloRelations reduction10589.relations reduction10589.input reduction10589.output := by lin_cert using reduction10589.terms
theorem substitutionProof10589 : IsMapEvaluation generatorImages reduction10589.relations [0,103,324] reduction10589.output := by lin_cert using reduction10589.terms
def map_12_206 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10785 : InImage map_12_206 image10785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10785 : Bundle := named_bundle% "RealMapCertificates/relations/basis10785.json"
theorem reductionProof10785 : EqualModuloRelations reduction10785.relations reduction10785.input reduction10785.output := by lin_cert using reduction10785.terms
theorem substitutionProof10785 : IsMapEvaluation generatorImages reduction10785.relations [114,324] reduction10785.output := by lin_cert using reduction10785.terms
def image10786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10786 : InImage map_12_206 image10786 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10786 : Bundle := named_bundle% "RealMapCertificates/relations/basis10786.json"
theorem reductionProof10786 : EqualModuloRelations reduction10786.relations reduction10786.input reduction10786.output := by lin_cert using reduction10786.terms
theorem substitutionProof10786 : IsMapEvaluation generatorImages reduction10786.relations [2,1230] reduction10786.output := by lin_cert using reduction10786.terms
def image10787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10787 : InImage map_12_206 image10787 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10787 : Bundle := named_bundle% "RealMapCertificates/relations/basis10787.json"
theorem reductionProof10787 : EqualModuloRelations reduction10787.relations reduction10787.input reduction10787.output := by lin_cert using reduction10787.terms
theorem substitutionProof10787 : IsMapEvaluation generatorImages reduction10787.relations [0,0,1279] reduction10787.output := by lin_cert using reduction10787.terms
def image10788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10788 : InImage map_12_206 image10788 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10788 : Bundle := named_bundle% "RealMapCertificates/relations/basis10788.json"
theorem reductionProof10788 : EqualModuloRelations reduction10788.relations reduction10788.input reduction10788.output := by lin_cert using reduction10788.terms
theorem substitutionProof10788 : IsMapEvaluation generatorImages reduction10788.relations [0,0,1278] reduction10788.output := by lin_cert using reduction10788.terms
def image10789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10789 : InImage map_12_206 image10789 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10789 : Bundle := named_bundle% "RealMapCertificates/relations/basis10789.json"
theorem reductionProof10789 : EqualModuloRelations reduction10789.relations reduction10789.input reduction10789.output := by lin_cert using reduction10789.terms
theorem substitutionProof10789 : IsMapEvaluation generatorImages reduction10789.relations [0,0,106,324] reduction10789.output := by lin_cert using reduction10789.terms
def map_12_207 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10976 : InImage map_12_207 image10976 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10976 : Bundle := named_bundle% "RealMapCertificates/relations/basis10976.json"
theorem reductionProof10976 : EqualModuloRelations reduction10976.relations reduction10976.input reduction10976.output := by lin_cert using reduction10976.terms
theorem substitutionProof10976 : IsMapEvaluation generatorImages reduction10976.relations [1332] reduction10976.output := by lin_cert using reduction10976.terms
def image10977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10977 : InImage map_12_207 image10977 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10977 : Bundle := named_bundle% "RealMapCertificates/relations/basis10977.json"
theorem reductionProof10977 : EqualModuloRelations reduction10977.relations reduction10977.input reduction10977.output := by lin_cert using reduction10977.terms
theorem substitutionProof10977 : IsMapEvaluation generatorImages reduction10977.relations [3,1178] reduction10977.output := by lin_cert using reduction10977.terms
def image10978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10978 : InImage map_12_207 image10978 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10978 : Bundle := named_bundle% "RealMapCertificates/relations/basis10978.json"
theorem reductionProof10978 : EqualModuloRelations reduction10978.relations reduction10978.input reduction10978.output := by lin_cert using reduction10978.terms
theorem substitutionProof10978 : IsMapEvaluation generatorImages reduction10978.relations [2,101,324] reduction10978.output := by lin_cert using reduction10978.terms
def image10979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10979 : InImage map_12_207 image10979 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10979 : Bundle := named_bundle% "RealMapCertificates/relations/basis10979.json"
theorem reductionProof10979 : EqualModuloRelations reduction10979.relations reduction10979.input reduction10979.output := by lin_cert using reduction10979.terms
theorem substitutionProof10979 : IsMapEvaluation generatorImages reduction10979.relations [0,0,0,1281] reduction10979.output := by lin_cert using reduction10979.terms
def image10980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10980 : InImage map_12_207 image10980 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10980 : Bundle := named_bundle% "RealMapCertificates/relations/basis10980.json"
theorem reductionProof10980 : EqualModuloRelations reduction10980.relations reduction10980.input reduction10980.output := by lin_cert using reduction10980.terms
theorem substitutionProof10980 : IsMapEvaluation generatorImages reduction10980.relations [0,0,0,107,324] reduction10980.output := by lin_cert using reduction10980.terms
def map_12_208 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11111 : InImage map_12_208 image11111 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11111 : Bundle := named_bundle% "RealMapCertificates/relations/basis11111.json"
theorem reductionProof11111 : EqualModuloRelations reduction11111.relations reduction11111.input reduction11111.output := by lin_cert using reduction11111.terms
theorem substitutionProof11111 : IsMapEvaluation generatorImages reduction11111.relations [1344] reduction11111.output := by lin_cert using reduction11111.terms
def image11112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11112 : InImage map_12_208 image11112 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11112 : Bundle := named_bundle% "RealMapCertificates/relations/basis11112.json"
theorem reductionProof11112 : EqualModuloRelations reduction11112.relations reduction11112.input reduction11112.output := by lin_cert using reduction11112.terms
theorem substitutionProof11112 : IsMapEvaluation generatorImages reduction11112.relations [1343] reduction11112.output := by lin_cert using reduction11112.terms
def image11113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11113 : InImage map_12_208 image11113 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11113 : Bundle := named_bundle% "RealMapCertificates/relations/basis11113.json"
theorem reductionProof11113 : EqualModuloRelations reduction11113.relations reduction11113.input reduction11113.output := by lin_cert using reduction11113.terms
theorem substitutionProof11113 : IsMapEvaluation generatorImages reduction11113.relations [1342] reduction11113.output := by lin_cert using reduction11113.terms
def image11114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11114 : InImage map_12_208 image11114 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11114 : Bundle := named_bundle% "RealMapCertificates/relations/basis11114.json"
theorem reductionProof11114 : EqualModuloRelations reduction11114.relations reduction11114.input reduction11114.output := by lin_cert using reduction11114.terms
theorem substitutionProof11114 : IsMapEvaluation generatorImages reduction11114.relations [3,1198] reduction11114.output := by lin_cert using reduction11114.terms
def image11115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11115 : InImage map_12_208 image11115 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11115 : Bundle := named_bundle% "RealMapCertificates/relations/basis11115.json"
theorem reductionProof11115 : EqualModuloRelations reduction11115.relations reduction11115.input reduction11115.output := by lin_cert using reduction11115.terms
theorem substitutionProof11115 : IsMapEvaluation generatorImages reduction11115.relations [3,1197] reduction11115.output := by lin_cert using reduction11115.terms
def image11116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11116 : InImage map_12_208 image11116 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11116 : Bundle := named_bundle% "RealMapCertificates/relations/basis11116.json"
theorem reductionProof11116 : EqualModuloRelations reduction11116.relations reduction11116.input reduction11116.output := by lin_cert using reduction11116.terms
theorem substitutionProof11116 : IsMapEvaluation generatorImages reduction11116.relations [2,103,324] reduction11116.output := by lin_cert using reduction11116.terms
def image11117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11117 : InImage map_12_208 image11117 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11117 : Bundle := named_bundle% "RealMapCertificates/relations/basis11117.json"
theorem reductionProof11117 : EqualModuloRelations reduction11117.relations reduction11117.input reduction11117.output := by lin_cert using reduction11117.terms
theorem substitutionProof11117 : IsMapEvaluation generatorImages reduction11117.relations [0,115,324] reduction11117.output := by lin_cert using reduction11117.terms
def map_12_209 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11298 : InImage map_12_209 image11298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11298 : Bundle := named_bundle% "RealMapCertificates/relations/basis11298.json"
theorem reductionProof11298 : EqualModuloRelations reduction11298.relations reduction11298.input reduction11298.output := by lin_cert using reduction11298.terms
theorem substitutionProof11298 : IsMapEvaluation generatorImages reduction11298.relations [1356] reduction11298.output := by lin_cert using reduction11298.terms
def image11299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11299 : InImage map_12_209 image11299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11299 : Bundle := named_bundle% "RealMapCertificates/relations/basis11299.json"
theorem reductionProof11299 : EqualModuloRelations reduction11299.relations reduction11299.input reduction11299.output := by lin_cert using reduction11299.terms
theorem substitutionProof11299 : IsMapEvaluation generatorImages reduction11299.relations [0,1346] reduction11299.output := by lin_cert using reduction11299.terms
def image11300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11300 : InImage map_12_209 image11300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11300 : Bundle := named_bundle% "RealMapCertificates/relations/basis11300.json"
theorem reductionProof11300 : EqualModuloRelations reduction11300.relations reduction11300.input reduction11300.output := by lin_cert using reduction11300.terms
theorem substitutionProof11300 : IsMapEvaluation generatorImages reduction11300.relations [0,1345] reduction11300.output := by lin_cert using reduction11300.terms
def map_12_210 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11505 : InImage map_12_210 image11505 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11505 : Bundle := named_bundle% "RealMapCertificates/relations/basis11505.json"
theorem reductionProof11505 : EqualModuloRelations reduction11505.relations reduction11505.input reduction11505.output := by lin_cert using reduction11505.terms
theorem substitutionProof11505 : IsMapEvaluation generatorImages reduction11505.relations [7,72,324] reduction11505.output := by lin_cert using reduction11505.terms
def image11506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11506 : InImage map_12_210 image11506 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11506 : Bundle := named_bundle% "RealMapCertificates/relations/basis11506.json"
theorem reductionProof11506 : EqualModuloRelations reduction11506.relations reduction11506.input reduction11506.output := by lin_cert using reduction11506.terms
theorem substitutionProof11506 : IsMapEvaluation generatorImages reduction11506.relations [3,1232] reduction11506.output := by lin_cert using reduction11506.terms
def image11507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11507 : InImage map_12_210 image11507 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11507 : Bundle := named_bundle% "RealMapCertificates/relations/basis11507.json"
theorem reductionProof11507 : EqualModuloRelations reduction11507.relations reduction11507.input reduction11507.output := by lin_cert using reduction11507.terms
theorem substitutionProof11507 : IsMapEvaluation generatorImages reduction11507.relations [3,1231] reduction11507.output := by lin_cert using reduction11507.terms
def image11508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11508 : InImage map_12_210 image11508 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11508 : Bundle := named_bundle% "RealMapCertificates/relations/basis11508.json"
theorem reductionProof11508 : EqualModuloRelations reduction11508.relations reduction11508.input reduction11508.output := by lin_cert using reduction11508.terms
theorem substitutionProof11508 : IsMapEvaluation generatorImages reduction11508.relations [3,1230] reduction11508.output := by lin_cert using reduction11508.terms
def image11509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11509 : InImage map_12_210 image11509 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11509 : Bundle := named_bundle% "RealMapCertificates/relations/basis11509.json"
theorem reductionProof11509 : EqualModuloRelations reduction11509.relations reduction11509.input reduction11509.output := by lin_cert using reduction11509.terms
theorem substitutionProof11509 : IsMapEvaluation generatorImages reduction11509.relations [1,1346] reduction11509.output := by lin_cert using reduction11509.terms
def image11510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11510 : InImage map_12_210 image11510 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11510 : Bundle := named_bundle% "RealMapCertificates/relations/basis11510.json"
theorem reductionProof11510 : EqualModuloRelations reduction11510.relations reduction11510.input reduction11510.output := by lin_cert using reduction11510.terms
theorem substitutionProof11510 : IsMapEvaluation generatorImages reduction11510.relations [1,1345] reduction11510.output := by lin_cert using reduction11510.terms
def image11511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11511 : InImage map_12_210 image11511 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11511 : Bundle := named_bundle% "RealMapCertificates/relations/basis11511.json"
theorem reductionProof11511 : EqualModuloRelations reduction11511.relations reduction11511.input reduction11511.output := by lin_cert using reduction11511.terms
theorem substitutionProof11511 : IsMapEvaluation generatorImages reduction11511.relations [0,1357] reduction11511.output := by lin_cert using reduction11511.terms
def image11512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11512 : InImage map_12_210 image11512 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11512 : Bundle := named_bundle% "RealMapCertificates/relations/basis11512.json"
theorem reductionProof11512 : EqualModuloRelations reduction11512.relations reduction11512.input reduction11512.output := by lin_cert using reduction11512.terms
theorem substitutionProof11512 : IsMapEvaluation generatorImages reduction11512.relations [0,3,1216] reduction11512.output := by lin_cert using reduction11512.terms
def map_12_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11652 : InImage map_12_211 image11652 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11652 : Bundle := named_bundle% "RealMapCertificates/relations/basis11652.json"
theorem reductionProof11652 : EqualModuloRelations reduction11652.relations reduction11652.input reduction11652.output := by lin_cert using reduction11652.terms
theorem substitutionProof11652 : IsMapEvaluation generatorImages reduction11652.relations [1394] reduction11652.output := by lin_cert using reduction11652.terms
def image11653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11653 : InImage map_12_211 image11653 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11653 : Bundle := named_bundle% "RealMapCertificates/relations/basis11653.json"
theorem reductionProof11653 : EqualModuloRelations reduction11653.relations reduction11653.input reduction11653.output := by lin_cert using reduction11653.terms
theorem substitutionProof11653 : IsMapEvaluation generatorImages reduction11653.relations [0,8,68,324] reduction11653.output := by lin_cert using reduction11653.terms
def image11654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11654 : InImage map_12_211 image11654 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11654 : Bundle := named_bundle% "RealMapCertificates/relations/basis11654.json"
theorem reductionProof11654 : EqualModuloRelations reduction11654.relations reduction11654.input reduction11654.output := by lin_cert using reduction11654.terms
theorem substitutionProof11654 : IsMapEvaluation generatorImages reduction11654.relations [0,0,1358] reduction11654.output := by lin_cert using reduction11654.terms
def map_12_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11851 : InImage map_12_212 image11851 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11851 : Bundle := named_bundle% "RealMapCertificates/relations/basis11851.json"
theorem reductionProof11851 : EqualModuloRelations reduction11851.relations reduction11851.input reduction11851.output := by lin_cert using reduction11851.terms
theorem substitutionProof11851 : IsMapEvaluation generatorImages reduction11851.relations [1413] reduction11851.output := by lin_cert using reduction11851.terms
def image11852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11852 : InImage map_12_212 image11852 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11852 : Bundle := named_bundle% "RealMapCertificates/relations/basis11852.json"
theorem reductionProof11852 : EqualModuloRelations reduction11852.relations reduction11852.input reduction11852.output := by lin_cert using reduction11852.terms
theorem substitutionProof11852 : IsMapEvaluation generatorImages reduction11852.relations [7,1120] reduction11852.output := by lin_cert using reduction11852.terms
def image11853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11853 : InImage map_12_212 image11853 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11853 : Bundle := named_bundle% "RealMapCertificates/relations/basis11853.json"
theorem reductionProof11853 : EqualModuloRelations reduction11853.relations reduction11853.input reduction11853.output := by lin_cert using reduction11853.terms
theorem substitutionProof11853 : IsMapEvaluation generatorImages reduction11853.relations [3,1276] reduction11853.output := by lin_cert using reduction11853.terms
def image11854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11854 : InImage map_12_212 image11854 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11854 : Bundle := named_bundle% "RealMapCertificates/relations/basis11854.json"
theorem reductionProof11854 : EqualModuloRelations reduction11854.relations reduction11854.input reduction11854.output := by lin_cert using reduction11854.terms
theorem substitutionProof11854 : IsMapEvaluation generatorImages reduction11854.relations [2,1345] reduction11854.output := by lin_cert using reduction11854.terms
def image11855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11855 : InImage map_12_212 image11855 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11855 : Bundle := named_bundle% "RealMapCertificates/relations/basis11855.json"
theorem reductionProof11855 : EqualModuloRelations reduction11855.relations reduction11855.input reduction11855.output := by lin_cert using reduction11855.terms
theorem substitutionProof11855 : IsMapEvaluation generatorImages reduction11855.relations [0,0,1380] reduction11855.output := by lin_cert using reduction11855.terms
def map_12_213 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12084 : InImage map_12_213 image12084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12084 : Bundle := named_bundle% "RealMapCertificates/relations/basis12084.json"
theorem reductionProof12084 : EqualModuloRelations reduction12084.relations reduction12084.input reduction12084.output := by lin_cert using reduction12084.terms
theorem substitutionProof12084 : IsMapEvaluation generatorImages reduction12084.relations [7,1137] reduction12084.output := by lin_cert using reduction12084.terms
def image12085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12085 : InImage map_12_213 image12085 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12085 : Bundle := named_bundle% "RealMapCertificates/relations/basis12085.json"
theorem reductionProof12085 : EqualModuloRelations reduction12085.relations reduction12085.input reduction12085.output := by lin_cert using reduction12085.terms
theorem substitutionProof12085 : IsMapEvaluation generatorImages reduction12085.relations [0,1416] reduction12085.output := by lin_cert using reduction12085.terms
def image12086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12086 : InImage map_12_213 image12086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12086 : Bundle := named_bundle% "RealMapCertificates/relations/basis12086.json"
theorem reductionProof12086 : EqualModuloRelations reduction12086.relations reduction12086.input reduction12086.output := by lin_cert using reduction12086.terms
theorem substitutionProof12086 : IsMapEvaluation generatorImages reduction12086.relations [0,1414] reduction12086.output := by lin_cert using reduction12086.terms
def image12087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12087 : InImage map_12_213 image12087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12087 : Bundle := named_bundle% "RealMapCertificates/relations/basis12087.json"
theorem reductionProof12087 : EqualModuloRelations reduction12087.relations reduction12087.input reduction12087.output := by lin_cert using reduction12087.terms
theorem substitutionProof12087 : IsMapEvaluation generatorImages reduction12087.relations [0,3,1279] reduction12087.output := by lin_cert using reduction12087.terms
def image12088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12088 : InImage map_12_213 image12088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12088 : Bundle := named_bundle% "RealMapCertificates/relations/basis12088.json"
theorem reductionProof12088 : EqualModuloRelations reduction12088.relations reduction12088.input reduction12088.output := by lin_cert using reduction12088.terms
theorem substitutionProof12088 : IsMapEvaluation generatorImages reduction12088.relations [0,0,0,120,324] reduction12088.output := by lin_cert using reduction12088.terms
def map_12_214 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12236 : InImage map_12_214 image12236 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12236 : Bundle := named_bundle% "RealMapCertificates/relations/basis12236.json"
theorem reductionProof12236 : EqualModuloRelations reduction12236.relations reduction12236.input reduction12236.output := by lin_cert using reduction12236.terms
theorem substitutionProof12236 : IsMapEvaluation generatorImages reduction12236.relations [1459] reduction12236.output := by lin_cert using reduction12236.terms
def image12237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12237 : InImage map_12_214 image12237 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12237 : Bundle := named_bundle% "RealMapCertificates/relations/basis12237.json"
theorem reductionProof12237 : EqualModuloRelations reduction12237.relations reduction12237.input reduction12237.output := by lin_cert using reduction12237.terms
theorem substitutionProof12237 : IsMapEvaluation generatorImages reduction12237.relations [1458] reduction12237.output := by lin_cert using reduction12237.terms
def image12238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12238 : InImage map_12_214 image12238 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12238 : Bundle := named_bundle% "RealMapCertificates/relations/basis12238.json"
theorem reductionProof12238 : EqualModuloRelations reduction12238.relations reduction12238.input reduction12238.output := by lin_cert using reduction12238.terms
theorem substitutionProof12238 : IsMapEvaluation generatorImages reduction12238.relations [7,1162] reduction12238.output := by lin_cert using reduction12238.terms
def image12239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12239 : InImage map_12_214 image12239 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12239 : Bundle := named_bundle% "RealMapCertificates/relations/basis12239.json"
theorem reductionProof12239 : EqualModuloRelations reduction12239.relations reduction12239.input reduction12239.output := by lin_cert using reduction12239.terms
theorem substitutionProof12239 : IsMapEvaluation generatorImages reduction12239.relations [1,1414] reduction12239.output := by lin_cert using reduction12239.terms
def image12240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12240 : InImage map_12_214 image12240 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12240 : Bundle := named_bundle% "RealMapCertificates/relations/basis12240.json"
theorem reductionProof12240 : EqualModuloRelations reduction12240.relations reduction12240.input reduction12240.output := by lin_cert using reduction12240.terms
theorem substitutionProof12240 : IsMapEvaluation generatorImages reduction12240.relations [1,1,1380] reduction12240.output := by lin_cert using reduction12240.terms
def image12241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12241 : InImage map_12_214 image12241 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12241 : Bundle := named_bundle% "RealMapCertificates/relations/basis12241.json"
theorem reductionProof12241 : EqualModuloRelations reduction12241.relations reduction12241.input reduction12241.output := by lin_cert using reduction12241.terms
theorem substitutionProof12241 : IsMapEvaluation generatorImages reduction12241.relations [0,0,1418] reduction12241.output := by lin_cert using reduction12241.terms
def image12242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12242 : InImage map_12_214 image12242 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12242 : Bundle := named_bundle% "RealMapCertificates/relations/basis12242.json"
theorem reductionProof12242 : EqualModuloRelations reduction12242.relations reduction12242.input reduction12242.output := by lin_cert using reduction12242.terms
theorem substitutionProof12242 : IsMapEvaluation generatorImages reduction12242.relations [0,0,1417] reduction12242.output := by lin_cert using reduction12242.terms
def image12243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12243 : InImage map_12_214 image12243 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12243 : Bundle := named_bundle% "RealMapCertificates/relations/basis12243.json"
theorem reductionProof12243 : EqualModuloRelations reduction12243.relations reduction12243.input reduction12243.output := by lin_cert using reduction12243.terms
theorem substitutionProof12243 : IsMapEvaluation generatorImages reduction12243.relations [0,0,3,107,324] reduction12243.output := by lin_cert using reduction12243.terms
def map_12_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12440 : InImage map_12_215 image12440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12440 : Bundle := named_bundle% "RealMapCertificates/relations/basis12440.json"
theorem reductionProof12440 : EqualModuloRelations reduction12440.relations reduction12440.input reduction12440.output := by lin_cert using reduction12440.terms
theorem substitutionProof12440 : IsMapEvaluation generatorImages reduction12440.relations [7,1178] reduction12440.output := by lin_cert using reduction12440.terms
def image12441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12441 : InImage map_12_215 image12441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12441 : Bundle := named_bundle% "RealMapCertificates/relations/basis12441.json"
theorem reductionProof12441 : EqualModuloRelations reduction12441.relations reduction12441.input reduction12441.output := by lin_cert using reduction12441.terms
theorem substitutionProof12441 : IsMapEvaluation generatorImages reduction12441.relations [0,1460] reduction12441.output := by lin_cert using reduction12441.terms
def image12442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12442 : InImage map_12_215 image12442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12442 : Bundle := named_bundle% "RealMapCertificates/relations/basis12442.json"
theorem reductionProof12442 : EqualModuloRelations reduction12442.relations reduction12442.input reduction12442.output := by lin_cert using reduction12442.terms
theorem substitutionProof12442 : IsMapEvaluation generatorImages reduction12442.relations [0,2,1380] reduction12442.output := by lin_cert using reduction12442.terms
def image12443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12443 : InImage map_12_215 image12443 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12443 : Bundle := named_bundle% "RealMapCertificates/relations/basis12443.json"
theorem reductionProof12443 : EqualModuloRelations reduction12443.relations reduction12443.input reduction12443.output := by lin_cert using reduction12443.terms
theorem substitutionProof12443 : IsMapEvaluation generatorImages reduction12443.relations [0,0,0,1420] reduction12443.output := by lin_cert using reduction12443.terms
def map_12_216 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image12649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12649 : InImage map_12_216 image12649 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction12649 : Bundle := named_bundle% "RealMapCertificates/relations/basis12649.json"
theorem reductionProof12649 : EqualModuloRelations reduction12649.relations reduction12649.input reduction12649.output := by lin_cert using reduction12649.terms
theorem substitutionProof12649 : IsMapEvaluation generatorImages reduction12649.relations [13,67,324] reduction12649.output := by lin_cert using reduction12649.terms
def image12650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12650 : InImage map_12_216 image12650 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction12650 : Bundle := named_bundle% "RealMapCertificates/relations/basis12650.json"
theorem reductionProof12650 : EqualModuloRelations reduction12650.relations reduction12650.input reduction12650.output := by lin_cert using reduction12650.terms
theorem substitutionProof12650 : IsMapEvaluation generatorImages reduction12650.relations [3,1345] reduction12650.output := by lin_cert using reduction12650.terms
def image12651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12651 : InImage map_12_216 image12651 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction12651 : Bundle := named_bundle% "RealMapCertificates/relations/basis12651.json"
theorem reductionProof12651 : EqualModuloRelations reduction12651.relations reduction12651.input reduction12651.output := by lin_cert using reduction12651.terms
theorem substitutionProof12651 : IsMapEvaluation generatorImages reduction12651.relations [2,1415] reduction12651.output := by lin_cert using reduction12651.terms
def image12652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12652 : InImage map_12_216 image12652 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction12652 : Bundle := named_bundle% "RealMapCertificates/relations/basis12652.json"
theorem reductionProof12652 : EqualModuloRelations reduction12652.relations reduction12652.input reduction12652.output := by lin_cert using reduction12652.terms
theorem substitutionProof12652 : IsMapEvaluation generatorImages reduction12652.relations [2,1414] reduction12652.output := by lin_cert using reduction12652.terms
def image12653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12653 : InImage map_12_216 image12653 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction12653 : Bundle := named_bundle% "RealMapCertificates/relations/basis12653.json"
theorem reductionProof12653 : EqualModuloRelations reduction12653.relations reduction12653.input reduction12653.output := by lin_cert using reduction12653.terms
theorem substitutionProof12653 : IsMapEvaluation generatorImages reduction12653.relations [1,1,1418] reduction12653.output := by lin_cert using reduction12653.terms
def image12654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12654 : InImage map_12_216 image12654 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction12654 : Bundle := named_bundle% "RealMapCertificates/relations/basis12654.json"
theorem reductionProof12654 : EqualModuloRelations reduction12654.relations reduction12654.input reduction12654.output := by lin_cert using reduction12654.terms
theorem substitutionProof12654 : IsMapEvaluation generatorImages reduction12654.relations [0,1479] reduction12654.output := by lin_cert using reduction12654.terms
def image12655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12655 : InImage map_12_216 image12655 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction12655 : Bundle := named_bundle% "RealMapCertificates/relations/basis12655.json"
theorem reductionProof12655 : EqualModuloRelations reduction12655.relations reduction12655.input reduction12655.output := by lin_cert using reduction12655.terms
theorem substitutionProof12655 : IsMapEvaluation generatorImages reduction12655.relations [0,1478] reduction12655.output := by lin_cert using reduction12655.terms
def image12656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12656 : InImage map_12_216 image12656 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction12656 : Bundle := named_bundle% "RealMapCertificates/relations/basis12656.json"
theorem reductionProof12656 : EqualModuloRelations reduction12656.relations reduction12656.input reduction12656.output := by lin_cert using reduction12656.terms
theorem substitutionProof12656 : IsMapEvaluation generatorImages reduction12656.relations [0,0,1461] reduction12656.output := by lin_cert using reduction12656.terms
def image12657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12657 : InImage map_12_216 image12657 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction12657 : Bundle := named_bundle% "RealMapCertificates/relations/basis12657.json"
theorem reductionProof12657 : EqualModuloRelations reduction12657.relations reduction12657.input reduction12657.output := by lin_cert using reduction12657.terms
theorem substitutionProof12657 : IsMapEvaluation generatorImages reduction12657.relations [0,0,0,0,128,324] reduction12657.output := by lin_cert using reduction12657.terms
def map_12_217 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12796 : InImage map_12_217 image12796 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12796 : Bundle := named_bundle% "RealMapCertificates/relations/basis12796.json"
theorem reductionProof12796 : EqualModuloRelations reduction12796.relations reduction12796.input reduction12796.output := by lin_cert using reduction12796.terms
theorem substitutionProof12796 : IsMapEvaluation generatorImages reduction12796.relations [3,3,1216] reduction12796.output := by lin_cert using reduction12796.terms
def image12797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12797 : InImage map_12_217 image12797 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12797 : Bundle := named_bundle% "RealMapCertificates/relations/basis12797.json"
theorem reductionProof12797 : EqualModuloRelations reduction12797.relations reduction12797.input reduction12797.output := by lin_cert using reduction12797.terms
theorem substitutionProof12797 : IsMapEvaluation generatorImages reduction12797.relations [1,1479] reduction12797.output := by lin_cert using reduction12797.terms
def image12798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12798 : InImage map_12_217 image12798 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12798 : Bundle := named_bundle% "RealMapCertificates/relations/basis12798.json"
theorem reductionProof12798 : EqualModuloRelations reduction12798.relations reduction12798.input reduction12798.output := by lin_cert using reduction12798.terms
theorem substitutionProof12798 : IsMapEvaluation generatorImages reduction12798.relations [0,141,324] reduction12798.output := by lin_cert using reduction12798.terms
def image12799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12799 : InImage map_12_217 image12799 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12799 : Bundle := named_bundle% "RealMapCertificates/relations/basis12799.json"
theorem reductionProof12799 : EqualModuloRelations reduction12799.relations reduction12799.input reduction12799.output := by lin_cert using reduction12799.terms
theorem substitutionProof12799 : IsMapEvaluation generatorImages reduction12799.relations [0,2,1418] reduction12799.output := by lin_cert using reduction12799.terms
def image12800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12800 : InImage map_12_217 image12800 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12800 : Bundle := named_bundle% "RealMapCertificates/relations/basis12800.json"
theorem reductionProof12800 : EqualModuloRelations reduction12800.relations reduction12800.input reduction12800.output := by lin_cert using reduction12800.terms
theorem substitutionProof12800 : IsMapEvaluation generatorImages reduction12800.relations [0,2,1417] reduction12800.output := by lin_cert using reduction12800.terms
def map_12_218 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image13006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13006 : InImage map_12_218 image13006 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13006 : Bundle := named_bundle% "RealMapCertificates/relations/basis13006.json"
theorem reductionProof13006 : EqualModuloRelations reduction13006.relations reduction13006.input reduction13006.output := by lin_cert using reduction13006.terms
theorem substitutionProof13006 : IsMapEvaluation generatorImages reduction13006.relations [1528] reduction13006.output := by lin_cert using reduction13006.terms
def image13007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13007 : InImage map_12_218 image13007 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13007 : Bundle := named_bundle% "RealMapCertificates/relations/basis13007.json"
theorem reductionProof13007 : EqualModuloRelations reduction13007.relations reduction13007.input reduction13007.output := by lin_cert using reduction13007.terms
theorem substitutionProof13007 : IsMapEvaluation generatorImages reduction13007.relations [7,1232] reduction13007.output := by lin_cert using reduction13007.terms
def image13008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13008 : InImage map_12_218 image13008 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13008 : Bundle := named_bundle% "RealMapCertificates/relations/basis13008.json"
theorem reductionProof13008 : EqualModuloRelations reduction13008.relations reduction13008.input reduction13008.output := by lin_cert using reduction13008.terms
theorem substitutionProof13008 : IsMapEvaluation generatorImages reduction13008.relations [3,3,1234] reduction13008.output := by lin_cert using reduction13008.terms
def image13009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13009 : InImage map_12_218 image13009 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13009 : Bundle := named_bundle% "RealMapCertificates/relations/basis13009.json"
theorem reductionProof13009 : EqualModuloRelations reduction13009.relations reduction13009.input reduction13009.output := by lin_cert using reduction13009.terms
theorem substitutionProof13009 : IsMapEvaluation generatorImages reduction13009.relations [2,1460] reduction13009.output := by lin_cert using reduction13009.terms
def image13010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13010 : InImage map_12_218 image13010 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13010 : Bundle := named_bundle% "RealMapCertificates/relations/basis13010.json"
theorem reductionProof13010 : EqualModuloRelations reduction13010.relations reduction13010.input reduction13010.output := by lin_cert using reduction13010.terms
theorem substitutionProof13010 : IsMapEvaluation generatorImages reduction13010.relations [1,141,324] reduction13010.output := by lin_cert using reduction13010.terms
def image13011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13011 : InImage map_12_218 image13011 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13011 : Bundle := named_bundle% "RealMapCertificates/relations/basis13011.json"
theorem reductionProof13011 : EqualModuloRelations reduction13011.relations reduction13011.input reduction13011.output := by lin_cert using reduction13011.terms
theorem substitutionProof13011 : IsMapEvaluation generatorImages reduction13011.relations [0,7,1216] reduction13011.output := by lin_cert using reduction13011.terms
def image13012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13012 : InImage map_12_218 image13012 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13012 : Bundle := named_bundle% "RealMapCertificates/relations/basis13012.json"
theorem reductionProof13012 : EqualModuloRelations reduction13012.relations reduction13012.input reduction13012.output := by lin_cert using reduction13012.terms
theorem substitutionProof13012 : IsMapEvaluation generatorImages reduction13012.relations [0,3,1358] reduction13012.output := by lin_cert using reduction13012.terms
def map_12_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13219 : InImage map_12_219 image13219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13219 : Bundle := named_bundle% "RealMapCertificates/relations/basis13219.json"
theorem reductionProof13219 : EqualModuloRelations reduction13219.relations reduction13219.input reduction13219.output := by lin_cert using reduction13219.terms
theorem substitutionProof13219 : IsMapEvaluation generatorImages reduction13219.relations [0,1529] reduction13219.output := by lin_cert using reduction13219.terms
def image13220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13220 : InImage map_12_219 image13220 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13220 : Bundle := named_bundle% "RealMapCertificates/relations/basis13220.json"
theorem reductionProof13220 : EqualModuloRelations reduction13220.relations reduction13220.input reduction13220.output := by lin_cert using reduction13220.terms
theorem substitutionProof13220 : IsMapEvaluation generatorImages reduction13220.relations [0,3,1380] reduction13220.output := by lin_cert using reduction13220.terms
def map_12_220 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13361 : InImage map_12_220 image13361 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13361 : Bundle := named_bundle% "RealMapCertificates/relations/basis13361.json"
theorem reductionProof13361 : EqualModuloRelations reduction13361.relations reduction13361.input reduction13361.output := by lin_cert using reduction13361.terms
theorem substitutionProof13361 : IsMapEvaluation generatorImages reduction13361.relations [3,1415] reduction13361.output := by lin_cert using reduction13361.terms
def image13362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13362 : InImage map_12_220 image13362 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13362 : Bundle := named_bundle% "RealMapCertificates/relations/basis13362.json"
theorem reductionProof13362 : EqualModuloRelations reduction13362.relations reduction13362.input reduction13362.output := by lin_cert using reduction13362.terms
theorem substitutionProof13362 : IsMapEvaluation generatorImages reduction13362.relations [2,2,1418] reduction13362.output := by lin_cert using reduction13362.terms
def image13363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13363 : InImage map_12_220 image13363 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13363 : Bundle := named_bundle% "RealMapCertificates/relations/basis13363.json"
theorem reductionProof13363 : EqualModuloRelations reduction13363.relations reduction13363.input reduction13363.output := by lin_cert using reduction13363.terms
theorem substitutionProof13363 : IsMapEvaluation generatorImages reduction13363.relations [1,1529] reduction13363.output := by lin_cert using reduction13363.terms
def image13364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13364 : InImage map_12_220 image13364 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13364 : Bundle := named_bundle% "RealMapCertificates/relations/basis13364.json"
theorem reductionProof13364 : EqualModuloRelations reduction13364.relations reduction13364.input reduction13364.output := by lin_cert using reduction13364.terms
theorem substitutionProof13364 : IsMapEvaluation generatorImages reduction13364.relations [0,13,75,324] reduction13364.output := by lin_cert using reduction13364.terms
def image13365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13365 : InImage map_12_220 image13365 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13365 : Bundle := named_bundle% "RealMapCertificates/relations/basis13365.json"
theorem reductionProof13365 : EqualModuloRelations reduction13365.relations reduction13365.input reduction13365.output := by lin_cert using reduction13365.terms
theorem substitutionProof13365 : IsMapEvaluation generatorImages reduction13365.relations [0,0,1530] reduction13365.output := by lin_cert using reduction13365.terms
def map_12_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13562 : InImage map_12_221 image13562 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13562 : Bundle := named_bundle% "RealMapCertificates/relations/basis13562.json"
theorem reductionProof13562 : EqualModuloRelations reduction13562.relations reduction13562.input reduction13562.output := by lin_cert using reduction13562.terms
theorem substitutionProof13562 : IsMapEvaluation generatorImages reduction13562.relations [1582] reduction13562.output := by lin_cert using reduction13562.terms
def image13563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13563 : InImage map_12_221 image13563 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13563 : Bundle := named_bundle% "RealMapCertificates/relations/basis13563.json"
theorem reductionProof13563 : EqualModuloRelations reduction13563.relations reduction13563.input reduction13563.output := by lin_cert using reduction13563.terms
theorem substitutionProof13563 : IsMapEvaluation generatorImages reduction13563.relations [0,7,1280] reduction13563.output := by lin_cert using reduction13563.terms
def image13564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13564 : InImage map_12_221 image13564 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13564 : Bundle := named_bundle% "RealMapCertificates/relations/basis13564.json"
theorem reductionProof13564 : EqualModuloRelations reduction13564.relations reduction13564.input reduction13564.output := by lin_cert using reduction13564.terms
theorem substitutionProof13564 : IsMapEvaluation generatorImages reduction13564.relations [0,0,0,1531] reduction13564.output := by lin_cert using reduction13564.terms
def map_12_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13786 : InImage map_12_222 image13786 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13786 : Bundle := named_bundle% "RealMapCertificates/relations/basis13786.json"
theorem reductionProof13786 : EqualModuloRelations reduction13786.relations reduction13786.input reduction13786.output := by lin_cert using reduction13786.terms
theorem substitutionProof13786 : IsMapEvaluation generatorImages reduction13786.relations [1603] reduction13786.output := by lin_cert using reduction13786.terms
def image13787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13787 : InImage map_12_222 image13787 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13787 : Bundle := named_bundle% "RealMapCertificates/relations/basis13787.json"
theorem reductionProof13787 : EqualModuloRelations reduction13787.relations reduction13787.input reduction13787.output := by lin_cert using reduction13787.terms
theorem substitutionProof13787 : IsMapEvaluation generatorImages reduction13787.relations [9,95,324] reduction13787.output := by lin_cert using reduction13787.terms
def image13788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13788 : InImage map_12_222 image13788 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13788 : Bundle := named_bundle% "RealMapCertificates/relations/basis13788.json"
theorem reductionProof13788 : EqualModuloRelations reduction13788.relations reduction13788.input reduction13788.output := by lin_cert using reduction13788.terms
theorem substitutionProof13788 : IsMapEvaluation generatorImages reduction13788.relations [0,1583] reduction13788.output := by lin_cert using reduction13788.terms
def image13789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13789 : InImage map_12_222 image13789 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13789 : Bundle := named_bundle% "RealMapCertificates/relations/basis13789.json"
theorem reductionProof13789 : EqualModuloRelations reduction13789.relations reduction13789.input reduction13789.output := by lin_cert using reduction13789.terms
theorem substitutionProof13789 : IsMapEvaluation generatorImages reduction13789.relations [0,0,7,1281] reduction13789.output := by lin_cert using reduction13789.terms
end RealMapCertificates
