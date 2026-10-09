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
  | 13 => [[9]]
  | 18 => []
  | 23 => [[7,7]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 74 => []
  | 76 => []
  | 95 => []
  | 157 => []
  | 163 => []
  | 174 => []
  | 178 => []
  | 179 => []
  | 188 => []
  | 189 => []
  | 192 => []
  | 198 => []
  | 202 => []
  | 209 => []
  | 216 => []
  | 221 => []
  | 262 => []
  | 269 => []
  | 310 => []
  | 311 => []
  | 314 => []
  | 320 => []
  | 321 => []
  | 323 => []
  | 324 => []
  | 331 => []
  | 336 => []
  | 400 => []
  | 1216 => []
  | 1281 => []
  | 1345 => []
  | 1346 => []
  | 1357 => []
  | 1380 => []
  | 1414 => []
  | 1416 => []
  | 1417 => []
  | 1418 => []
  | 1419 => []
  | 1462 => []
  | 1583 => []
  | 1631 => []
  | 1632 => []
  | 1633 => []
  | 1676 => []
  | 1684 => []
  | 1712 => []
  | 1804 => []
  | 1805 => []
  | 1806 => []
  | 1807 => []
  | 1809 => []
  | 1825 => []
  | 1852 => []
  | 1853 => []
  | 1887 => []
  | 1898 => []
  | 1923 => []
  | 1954 => []
  | 1955 => []
  | 1957 => []
  | 1986 => []
  | 1987 => []
  | 2030 => []
  | 2031 => []
  | 2033 => []
  | 2085 => []
  | 2086 => []
  | 2087 => []
  | 2117 => []
  | 2154 => []
  | 2155 => []
  | 2156 => []
  | 2297 => []
  | 2329 => []
  | 2373 => []
  | 2485 => []
  | 2532 => []
  | 2577 => []
  | 2666 => []
  | 2729 => []
  | 2730 => []
  | 2731 => []
  | 2732 => []
  | _ => []
def map_12_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13928 : InImage map_12_223 image13928 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13928 : Bundle := named_bundle% "RealMapCertificates/relations/basis13928.json"
theorem reductionProof13928 : EqualModuloRelations reduction13928.relations reduction13928.input reduction13928.output := by lin_cert using reduction13928.terms
theorem substitutionProof13928 : IsMapEvaluation generatorImages reduction13928.relations [1,1583] reduction13928.output := by lin_cert using reduction13928.terms
def map_12_224 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14135 : InImage map_12_224 image14135 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14135 : Bundle := named_bundle% "RealMapCertificates/relations/basis14135.json"
theorem reductionProof14135 : EqualModuloRelations reduction14135.relations reduction14135.input reduction14135.output := by lin_cert using reduction14135.terms
theorem substitutionProof14135 : IsMapEvaluation generatorImages reduction14135.relations [1631] reduction14135.output := by lin_cert using reduction14135.terms
def image14136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14136 : InImage map_12_224 image14136 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14136 : Bundle := named_bundle% "RealMapCertificates/relations/basis14136.json"
theorem reductionProof14136 : EqualModuloRelations reduction14136.relations reduction14136.input reduction14136.output := by lin_cert using reduction14136.terms
theorem substitutionProof14136 : IsMapEvaluation generatorImages reduction14136.relations [7,1346] reduction14136.output := by lin_cert using reduction14136.terms
def image14137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14137 : InImage map_12_224 image14137 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14137 : Bundle := named_bundle% "RealMapCertificates/relations/basis14137.json"
theorem reductionProof14137 : EqualModuloRelations reduction14137.relations reduction14137.input reduction14137.output := by lin_cert using reduction14137.terms
theorem substitutionProof14137 : IsMapEvaluation generatorImages reduction14137.relations [7,1345] reduction14137.output := by lin_cert using reduction14137.terms
def image14138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14138 : InImage map_12_224 image14138 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14138 : Bundle := named_bundle% "RealMapCertificates/relations/basis14138.json"
theorem reductionProof14138 : EqualModuloRelations reduction14138.relations reduction14138.input reduction14138.output := by lin_cert using reduction14138.terms
theorem substitutionProof14138 : IsMapEvaluation generatorImages reduction14138.relations [1,157,324] reduction14138.output := by lin_cert using reduction14138.terms
def map_12_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14338 : InImage map_12_225 image14338 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14338 : Bundle := named_bundle% "RealMapCertificates/relations/basis14338.json"
theorem reductionProof14338 : EqualModuloRelations reduction14338.relations reduction14338.input reduction14338.output := by lin_cert using reduction14338.terms
theorem substitutionProof14338 : IsMapEvaluation generatorImages reduction14338.relations [13,95,324] reduction14338.output := by lin_cert using reduction14338.terms
def image14339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14339 : InImage map_12_225 image14339 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14339 : Bundle := named_bundle% "RealMapCertificates/relations/basis14339.json"
theorem reductionProof14339 : EqualModuloRelations reduction14339.relations reduction14339.input reduction14339.output := by lin_cert using reduction14339.terms
theorem substitutionProof14339 : IsMapEvaluation generatorImages reduction14339.relations [7,1357] reduction14339.output := by lin_cert using reduction14339.terms
def image14340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14340 : InImage map_12_225 image14340 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14340 : Bundle := named_bundle% "RealMapCertificates/relations/basis14340.json"
theorem reductionProof14340 : EqualModuloRelations reduction14340.relations reduction14340.input reduction14340.output := by lin_cert using reduction14340.terms
theorem substitutionProof14340 : IsMapEvaluation generatorImages reduction14340.relations [0,1632] reduction14340.output := by lin_cert using reduction14340.terms
def map_12_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14491 : InImage map_12_226 image14491 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14491 : Bundle := named_bundle% "RealMapCertificates/relations/basis14491.json"
theorem reductionProof14491 : EqualModuloRelations reduction14491.relations reduction14491.input reduction14491.output := by lin_cert using reduction14491.terms
theorem substitutionProof14491 : IsMapEvaluation generatorImages reduction14491.relations [1,163,323] reduction14491.output := by lin_cert using reduction14491.terms
def image14492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14492 : InImage map_12_226 image14492 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14492 : Bundle := named_bundle% "RealMapCertificates/relations/basis14492.json"
theorem reductionProof14492 : EqualModuloRelations reduction14492.relations reduction14492.input reduction14492.output := by lin_cert using reduction14492.terms
theorem substitutionProof14492 : IsMapEvaluation generatorImages reduction14492.relations [0,0,1633] reduction14492.output := by lin_cert using reduction14492.terms
def map_12_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14700 : InImage map_12_227 image14700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14700 : Bundle := named_bundle% "RealMapCertificates/relations/basis14700.json"
theorem reductionProof14700 : EqualModuloRelations reduction14700.relations reduction14700.input reduction14700.output := by lin_cert using reduction14700.terms
theorem substitutionProof14700 : IsMapEvaluation generatorImages reduction14700.relations [0,7,1380] reduction14700.output := by lin_cert using reduction14700.terms
def map_12_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14923 : InImage map_12_228 image14923 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14923 : Bundle := named_bundle% "RealMapCertificates/relations/basis14923.json"
theorem reductionProof14923 : EqualModuloRelations reduction14923.relations reduction14923.input reduction14923.output := by lin_cert using reduction14923.terms
theorem substitutionProof14923 : IsMapEvaluation generatorImages reduction14923.relations [178,324] reduction14923.output := by lin_cert using reduction14923.terms
def image14924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14924 : InImage map_12_228 image14924 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14924 : Bundle := named_bundle% "RealMapCertificates/relations/basis14924.json"
theorem reductionProof14924 : EqualModuloRelations reduction14924.relations reduction14924.input reduction14924.output := by lin_cert using reduction14924.terms
theorem substitutionProof14924 : IsMapEvaluation generatorImages reduction14924.relations [7,1416] reduction14924.output := by lin_cert using reduction14924.terms
def image14925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14925 : InImage map_12_228 image14925 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14925 : Bundle := named_bundle% "RealMapCertificates/relations/basis14925.json"
theorem reductionProof14925 : EqualModuloRelations reduction14925.relations reduction14925.input reduction14925.output := by lin_cert using reduction14925.terms
theorem substitutionProof14925 : IsMapEvaluation generatorImages reduction14925.relations [7,1414] reduction14925.output := by lin_cert using reduction14925.terms
def image14926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14926 : InImage map_12_228 image14926 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14926 : Bundle := named_bundle% "RealMapCertificates/relations/basis14926.json"
theorem reductionProof14926 : EqualModuloRelations reduction14926.relations reduction14926.input reduction14926.output := by lin_cert using reduction14926.terms
theorem substitutionProof14926 : IsMapEvaluation generatorImages reduction14926.relations [1,7,1380] reduction14926.output := by lin_cert using reduction14926.terms
def image14927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14927 : InImage map_12_228 image14927 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14927 : Bundle := named_bundle% "RealMapCertificates/relations/basis14927.json"
theorem reductionProof14927 : EqualModuloRelations reduction14927.relations reduction14927.input reduction14927.output := by lin_cert using reduction14927.terms
theorem substitutionProof14927 : IsMapEvaluation generatorImages reduction14927.relations [0,0,1676] reduction14927.output := by lin_cert using reduction14927.terms
def map_12_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15077 : InImage map_12_229 image15077 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15077 : Bundle := named_bundle% "RealMapCertificates/relations/basis15077.json"
theorem reductionProof15077 : EqualModuloRelations reduction15077.relations reduction15077.input reduction15077.output := by lin_cert using reduction15077.terms
theorem substitutionProof15077 : IsMapEvaluation generatorImages reduction15077.relations [0,179,324] reduction15077.output := by lin_cert using reduction15077.terms
def image15078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15078 : InImage map_12_229 image15078 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15078 : Bundle := named_bundle% "RealMapCertificates/relations/basis15078.json"
theorem reductionProof15078 : EqualModuloRelations reduction15078.relations reduction15078.input reduction15078.output := by lin_cert using reduction15078.terms
theorem substitutionProof15078 : IsMapEvaluation generatorImages reduction15078.relations [0,7,1418] reduction15078.output := by lin_cert using reduction15078.terms
def image15079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15079 : InImage map_12_229 image15079 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15079 : Bundle := named_bundle% "RealMapCertificates/relations/basis15079.json"
theorem reductionProof15079 : EqualModuloRelations reduction15079.relations reduction15079.input reduction15079.output := by lin_cert using reduction15079.terms
theorem substitutionProof15079 : IsMapEvaluation generatorImages reduction15079.relations [0,7,1417] reduction15079.output := by lin_cert using reduction15079.terms
def map_12_230 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15307 : InImage map_12_230 image15307 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15307 : Bundle := named_bundle% "RealMapCertificates/relations/basis15307.json"
theorem reductionProof15307 : EqualModuloRelations reduction15307.relations reduction15307.input reduction15307.output := by lin_cert using reduction15307.terms
theorem substitutionProof15307 : IsMapEvaluation generatorImages reduction15307.relations [188,324] reduction15307.output := by lin_cert using reduction15307.terms
def image15308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15308 : InImage map_12_230 image15308 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15308 : Bundle := named_bundle% "RealMapCertificates/relations/basis15308.json"
theorem reductionProof15308 : EqualModuloRelations reduction15308.relations reduction15308.input reduction15308.output := by lin_cert using reduction15308.terms
theorem substitutionProof15308 : IsMapEvaluation generatorImages reduction15308.relations [1,7,1419] reduction15308.output := by lin_cert using reduction15308.terms
def image15309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15309 : InImage map_12_230 image15309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15309 : Bundle := named_bundle% "RealMapCertificates/relations/basis15309.json"
theorem reductionProof15309 : EqualModuloRelations reduction15309.relations reduction15309.input reduction15309.output := by lin_cert using reduction15309.terms
theorem substitutionProof15309 : IsMapEvaluation generatorImages reduction15309.relations [1,7,1418] reduction15309.output := by lin_cert using reduction15309.terms
def image15310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15310 : InImage map_12_230 image15310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15310 : Bundle := named_bundle% "RealMapCertificates/relations/basis15310.json"
theorem reductionProof15310 : EqualModuloRelations reduction15310.relations reduction15310.input reduction15310.output := by lin_cert using reduction15310.terms
theorem substitutionProof15310 : IsMapEvaluation generatorImages reduction15310.relations [0,0,0,1684] reduction15310.output := by lin_cert using reduction15310.terms
def map_12_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15554 : InImage map_12_231 image15554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15554 : Bundle := named_bundle% "RealMapCertificates/relations/basis15554.json"
theorem reductionProof15554 : EqualModuloRelations reduction15554.relations reduction15554.input reduction15554.output := by lin_cert using reduction15554.terms
theorem substitutionProof15554 : IsMapEvaluation generatorImages reduction15554.relations [23,76,324] reduction15554.output := by lin_cert using reduction15554.terms
def image15555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15555 : InImage map_12_231 image15555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15555 : Bundle := named_bundle% "RealMapCertificates/relations/basis15555.json"
theorem reductionProof15555 : EqualModuloRelations reduction15555.relations reduction15555.input reduction15555.output := by lin_cert using reduction15555.terms
theorem substitutionProof15555 : IsMapEvaluation generatorImages reduction15555.relations [0,189,324] reduction15555.output := by lin_cert using reduction15555.terms
def image15556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15556 : InImage map_12_231 image15556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15556 : Bundle := named_bundle% "RealMapCertificates/relations/basis15556.json"
theorem reductionProof15556 : EqualModuloRelations reduction15556.relations reduction15556.input reduction15556.output := by lin_cert using reduction15556.terms
theorem substitutionProof15556 : IsMapEvaluation generatorImages reduction15556.relations [0,0,0,1712] reduction15556.output := by lin_cert using reduction15556.terms
def map_12_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15724 : InImage map_12_232 image15724 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15724 : Bundle := named_bundle% "RealMapCertificates/relations/basis15724.json"
theorem reductionProof15724 : EqualModuloRelations reduction15724.relations reduction15724.input reduction15724.output := by lin_cert using reduction15724.terms
theorem substitutionProof15724 : IsMapEvaluation generatorImages reduction15724.relations [1805] reduction15724.output := by lin_cert using reduction15724.terms
def image15725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15725 : InImage map_12_232 image15725 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15725 : Bundle := named_bundle% "RealMapCertificates/relations/basis15725.json"
theorem reductionProof15725 : EqualModuloRelations reduction15725.relations reduction15725.input reduction15725.output := by lin_cert using reduction15725.terms
theorem substitutionProof15725 : IsMapEvaluation generatorImages reduction15725.relations [1804] reduction15725.output := by lin_cert using reduction15725.terms
def image15726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15726 : InImage map_12_232 image15726 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15726 : Bundle := named_bundle% "RealMapCertificates/relations/basis15726.json"
theorem reductionProof15726 : EqualModuloRelations reduction15726.relations reduction15726.input reduction15726.output := by lin_cert using reduction15726.terms
theorem substitutionProof15726 : IsMapEvaluation generatorImages reduction15726.relations [1,189,324] reduction15726.output := by lin_cert using reduction15726.terms
def image15727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15727 : InImage map_12_232 image15727 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15727 : Bundle := named_bundle% "RealMapCertificates/relations/basis15727.json"
theorem reductionProof15727 : EqualModuloRelations reduction15727.relations reduction15727.input reduction15727.output := by lin_cert using reduction15727.terms
theorem substitutionProof15727 : IsMapEvaluation generatorImages reduction15727.relations [1,7,1462] reduction15727.output := by lin_cert using reduction15727.terms
def map_12_233 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15959 : InImage map_12_233 image15959 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15959 : Bundle := named_bundle% "RealMapCertificates/relations/basis15959.json"
theorem reductionProof15959 : EqualModuloRelations reduction15959.relations reduction15959.input reduction15959.output := by lin_cert using reduction15959.terms
theorem substitutionProof15959 : IsMapEvaluation generatorImages reduction15959.relations [1825] reduction15959.output := by lin_cert using reduction15959.terms
def image15960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15960 : InImage map_12_233 image15960 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15960 : Bundle := named_bundle% "RealMapCertificates/relations/basis15960.json"
theorem reductionProof15960 : EqualModuloRelations reduction15960.relations reduction15960.input reduction15960.output := by lin_cert using reduction15960.terms
theorem substitutionProof15960 : IsMapEvaluation generatorImages reduction15960.relations [7,7,1216] reduction15960.output := by lin_cert using reduction15960.terms
def image15961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15961 : InImage map_12_233 image15961 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15961 : Bundle := named_bundle% "RealMapCertificates/relations/basis15961.json"
theorem reductionProof15961 : EqualModuloRelations reduction15961.relations reduction15961.input reduction15961.output := by lin_cert using reduction15961.terms
theorem substitutionProof15961 : IsMapEvaluation generatorImages reduction15961.relations [1,192,324] reduction15961.output := by lin_cert using reduction15961.terms
def map_12_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16215 : InImage map_12_234 image16215 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16215 : Bundle := named_bundle% "RealMapCertificates/relations/basis16215.json"
theorem reductionProof16215 : EqualModuloRelations reduction16215.relations reduction16215.input reduction16215.output := by lin_cert using reduction16215.terms
theorem substitutionProof16215 : IsMapEvaluation generatorImages reduction16215.relations [1852] reduction16215.output := by lin_cert using reduction16215.terms
def image16216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16216 : InImage map_12_234 image16216 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16216 : Bundle := named_bundle% "RealMapCertificates/relations/basis16216.json"
theorem reductionProof16216 : EqualModuloRelations reduction16216.relations reduction16216.input reduction16216.output := by lin_cert using reduction16216.terms
theorem substitutionProof16216 : IsMapEvaluation generatorImages reduction16216.relations [2,189,324] reduction16216.output := by lin_cert using reduction16216.terms
def image16217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16217 : InImage map_12_234 image16217 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16217 : Bundle := named_bundle% "RealMapCertificates/relations/basis16217.json"
theorem reductionProof16217 : EqualModuloRelations reduction16217.relations reduction16217.input reduction16217.output := by lin_cert using reduction16217.terms
theorem substitutionProof16217 : IsMapEvaluation generatorImages reduction16217.relations [1,1807] reduction16217.output := by lin_cert using reduction16217.terms
def image16218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16218 : InImage map_12_234 image16218 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16218 : Bundle := named_bundle% "RealMapCertificates/relations/basis16218.json"
theorem reductionProof16218 : EqualModuloRelations reduction16218.relations reduction16218.input reduction16218.output := by lin_cert using reduction16218.terms
theorem substitutionProof16218 : IsMapEvaluation generatorImages reduction16218.relations [0,202,324] reduction16218.output := by lin_cert using reduction16218.terms
def map_12_235 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16400 : InImage map_12_235 image16400 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16400 : Bundle := named_bundle% "RealMapCertificates/relations/basis16400.json"
theorem reductionProof16400 : EqualModuloRelations reduction16400.relations reduction16400.input reduction16400.output := by lin_cert using reduction16400.terms
theorem substitutionProof16400 : IsMapEvaluation generatorImages reduction16400.relations [1887] reduction16400.output := by lin_cert using reduction16400.terms
def image16401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16401 : InImage map_12_235 image16401 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16401 : Bundle := named_bundle% "RealMapCertificates/relations/basis16401.json"
theorem reductionProof16401 : EqualModuloRelations reduction16401.relations reduction16401.input reduction16401.output := by lin_cert using reduction16401.terms
theorem substitutionProof16401 : IsMapEvaluation generatorImages reduction16401.relations [0,0,0,1809] reduction16401.output := by lin_cert using reduction16401.terms
def map_12_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16628 : InImage map_12_236 image16628 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16628 : Bundle := named_bundle% "RealMapCertificates/relations/basis16628.json"
theorem reductionProof16628 : EqualModuloRelations reduction16628.relations reduction16628.input reduction16628.output := by lin_cert using reduction16628.terms
theorem substitutionProof16628 : IsMapEvaluation generatorImages reduction16628.relations [1898] reduction16628.output := by lin_cert using reduction16628.terms
def image16629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16629 : InImage map_12_236 image16629 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16629 : Bundle := named_bundle% "RealMapCertificates/relations/basis16629.json"
theorem reductionProof16629 : EqualModuloRelations reduction16629.relations reduction16629.input reduction16629.output := by lin_cert using reduction16629.terms
theorem substitutionProof16629 : IsMapEvaluation generatorImages reduction16629.relations [0,209,324] reduction16629.output := by lin_cert using reduction16629.terms
def map_12_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16878 : InImage map_12_237 image16878 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16878 : Bundle := named_bundle% "RealMapCertificates/relations/basis16878.json"
theorem reductionProof16878 : EqualModuloRelations reduction16878.relations reduction16878.input reduction16878.output := by lin_cert using reduction16878.terms
theorem substitutionProof16878 : IsMapEvaluation generatorImages reduction16878.relations [1923] reduction16878.output := by lin_cert using reduction16878.terms
def image16879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16879 : InImage map_12_237 image16879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16879 : Bundle := named_bundle% "RealMapCertificates/relations/basis16879.json"
theorem reductionProof16879 : EqualModuloRelations reduction16879.relations reduction16879.input reduction16879.output := by lin_cert using reduction16879.terms
theorem substitutionProof16879 : IsMapEvaluation generatorImages reduction16879.relations [2,202,324] reduction16879.output := by lin_cert using reduction16879.terms
def image16880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16880 : InImage map_12_237 image16880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16880 : Bundle := named_bundle% "RealMapCertificates/relations/basis16880.json"
theorem reductionProof16880 : EqualModuloRelations reduction16880.relations reduction16880.input reduction16880.output := by lin_cert using reduction16880.terms
theorem substitutionProof16880 : IsMapEvaluation generatorImages reduction16880.relations [1,209,324] reduction16880.output := by lin_cert using reduction16880.terms
def image16881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16881 : InImage map_12_237 image16881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16881 : Bundle := named_bundle% "RealMapCertificates/relations/basis16881.json"
theorem reductionProof16881 : EqualModuloRelations reduction16881.relations reduction16881.input reduction16881.output := by lin_cert using reduction16881.terms
theorem substitutionProof16881 : IsMapEvaluation generatorImages reduction16881.relations [0,7,7,1281] reduction16881.output := by lin_cert using reduction16881.terms
def map_12_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17075 : InImage map_12_238 image17075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17075 : Bundle := named_bundle% "RealMapCertificates/relations/basis17075.json"
theorem reductionProof17075 : EqualModuloRelations reduction17075.relations reduction17075.input reduction17075.output := by lin_cert using reduction17075.terms
theorem substitutionProof17075 : IsMapEvaluation generatorImages reduction17075.relations [1954] reduction17075.output := by lin_cert using reduction17075.terms
def image17076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17076 : InImage map_12_238 image17076 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17076 : Bundle := named_bundle% "RealMapCertificates/relations/basis17076.json"
theorem reductionProof17076 : EqualModuloRelations reduction17076.relations reduction17076.input reduction17076.output := by lin_cert using reduction17076.terms
theorem substitutionProof17076 : IsMapEvaluation generatorImages reduction17076.relations [198,400] reduction17076.output := by lin_cert using reduction17076.terms
def image17077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17077 : InImage map_12_238 image17077 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17077 : Bundle := named_bundle% "RealMapCertificates/relations/basis17077.json"
theorem reductionProof17077 : EqualModuloRelations reduction17077.relations reduction17077.input reduction17077.output := by lin_cert using reduction17077.terms
theorem substitutionProof17077 : IsMapEvaluation generatorImages reduction17077.relations [3,189,324] reduction17077.output := by lin_cert using reduction17077.terms
def image17078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17078 : InImage map_12_238 image17078 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17078 : Bundle := named_bundle% "RealMapCertificates/relations/basis17078.json"
theorem reductionProof17078 : EqualModuloRelations reduction17078.relations reduction17078.input reduction17078.output := by lin_cert using reduction17078.terms
theorem substitutionProof17078 : IsMapEvaluation generatorImages reduction17078.relations [2,1853] reduction17078.output := by lin_cert using reduction17078.terms
def map_12_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17326 : InImage map_12_239 image17326 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17326 : Bundle := named_bundle% "RealMapCertificates/relations/basis17326.json"
theorem reductionProof17326 : EqualModuloRelations reduction17326.relations reduction17326.input reduction17326.output := by lin_cert using reduction17326.terms
theorem substitutionProof17326 : IsMapEvaluation generatorImages reduction17326.relations [1987] reduction17326.output := by lin_cert using reduction17326.terms
def image17327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17327 : InImage map_12_239 image17327 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17327 : Bundle := named_bundle% "RealMapCertificates/relations/basis17327.json"
theorem reductionProof17327 : EqualModuloRelations reduction17327.relations reduction17327.input reduction17327.output := by lin_cert using reduction17327.terms
theorem substitutionProof17327 : IsMapEvaluation generatorImages reduction17327.relations [1986] reduction17327.output := by lin_cert using reduction17327.terms
def image17328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17328 : InImage map_12_239 image17328 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17328 : Bundle := named_bundle% "RealMapCertificates/relations/basis17328.json"
theorem reductionProof17328 : EqualModuloRelations reduction17328.relations reduction17328.input reduction17328.output := by lin_cert using reduction17328.terms
theorem substitutionProof17328 : IsMapEvaluation generatorImages reduction17328.relations [2,209,324] reduction17328.output := by lin_cert using reduction17328.terms
def image17329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17329 : InImage map_12_239 image17329 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17329 : Bundle := named_bundle% "RealMapCertificates/relations/basis17329.json"
theorem reductionProof17329 : EqualModuloRelations reduction17329.relations reduction17329.input reduction17329.output := by lin_cert using reduction17329.terms
theorem substitutionProof17329 : IsMapEvaluation generatorImages reduction17329.relations [0,1955] reduction17329.output := by lin_cert using reduction17329.terms
def image17330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17330 : InImage map_12_239 image17330 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17330 : Bundle := named_bundle% "RealMapCertificates/relations/basis17330.json"
theorem reductionProof17330 : EqualModuloRelations reduction17330.relations reduction17330.input reduction17330.output := by lin_cert using reduction17330.terms
theorem substitutionProof17330 : IsMapEvaluation generatorImages reduction17330.relations [0,221,324] reduction17330.output := by lin_cert using reduction17330.terms
def map_12_240 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17627 : InImage map_12_240 image17627 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17627 : Bundle := named_bundle% "RealMapCertificates/relations/basis17627.json"
theorem reductionProof17627 : EqualModuloRelations reduction17627.relations reduction17627.input reduction17627.output := by lin_cert using reduction17627.terms
theorem substitutionProof17627 : IsMapEvaluation generatorImages reduction17627.relations [2030] reduction17627.output := by lin_cert using reduction17627.terms
def image17628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17628 : InImage map_12_240 image17628 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17628 : Bundle := named_bundle% "RealMapCertificates/relations/basis17628.json"
theorem reductionProof17628 : EqualModuloRelations reduction17628.relations reduction17628.input reduction17628.output := by lin_cert using reduction17628.terms
theorem substitutionProof17628 : IsMapEvaluation generatorImages reduction17628.relations [43,67,324] reduction17628.output := by lin_cert using reduction17628.terms
def image17629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17629 : InImage map_12_240 image17629 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17629 : Bundle := named_bundle% "RealMapCertificates/relations/basis17629.json"
theorem reductionProof17629 : EqualModuloRelations reduction17629.relations reduction17629.input reduction17629.output := by lin_cert using reduction17629.terms
theorem substitutionProof17629 : IsMapEvaluation generatorImages reduction17629.relations [18,1345] reduction17629.output := by lin_cert using reduction17629.terms
def image17630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17630 : InImage map_12_240 image17630 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17630 : Bundle := named_bundle% "RealMapCertificates/relations/basis17630.json"
theorem reductionProof17630 : EqualModuloRelations reduction17630.relations reduction17630.input reduction17630.output := by lin_cert using reduction17630.terms
theorem substitutionProof17630 : IsMapEvaluation generatorImages reduction17630.relations [3,1806] reduction17630.output := by lin_cert using reduction17630.terms
def image17631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17631 : InImage map_12_240 image17631 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17631 : Bundle := named_bundle% "RealMapCertificates/relations/basis17631.json"
theorem reductionProof17631 : EqualModuloRelations reduction17631.relations reduction17631.input reduction17631.output := by lin_cert using reduction17631.terms
theorem substitutionProof17631 : IsMapEvaluation generatorImages reduction17631.relations [1,1955] reduction17631.output := by lin_cert using reduction17631.terms
def image17632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17632 : InImage map_12_240 image17632 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17632 : Bundle := named_bundle% "RealMapCertificates/relations/basis17632.json"
theorem reductionProof17632 : EqualModuloRelations reduction17632.relations reduction17632.input reduction17632.output := by lin_cert using reduction17632.terms
theorem substitutionProof17632 : IsMapEvaluation generatorImages reduction17632.relations [0,0,1957] reduction17632.output := by lin_cert using reduction17632.terms
def image17633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17633 : InImage map_12_240 image17633 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17633 : Bundle := named_bundle% "RealMapCertificates/relations/basis17633.json"
theorem reductionProof17633 : EqualModuloRelations reduction17633.relations reduction17633.input reduction17633.output := by lin_cert using reduction17633.terms
theorem substitutionProof17633 : IsMapEvaluation generatorImages reduction17633.relations [0,0,0,216,324] reduction17633.output := by lin_cert using reduction17633.terms
def map_12_241 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17845 : InImage map_12_241 image17845 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17845 : Bundle := named_bundle% "RealMapCertificates/relations/basis17845.json"
theorem reductionProof17845 : EqualModuloRelations reduction17845.relations reduction17845.input reduction17845.output := by lin_cert using reduction17845.terms
theorem substitutionProof17845 : IsMapEvaluation generatorImages reduction17845.relations [0,43,68,324] reduction17845.output := by lin_cert using reduction17845.terms
def map_12_242 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18105 : InImage map_12_242 image18105 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18105 : Bundle := named_bundle% "RealMapCertificates/relations/basis18105.json"
theorem reductionProof18105 : EqualModuloRelations reduction18105.relations reduction18105.input reduction18105.output := by lin_cert using reduction18105.terms
theorem substitutionProof18105 : IsMapEvaluation generatorImages reduction18105.relations [2086] reduction18105.output := by lin_cert using reduction18105.terms
def image18106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18106 : InImage map_12_242 image18106 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18106 : Bundle := named_bundle% "RealMapCertificates/relations/basis18106.json"
theorem reductionProof18106 : EqualModuloRelations reduction18106.relations reduction18106.input reduction18106.output := by lin_cert using reduction18106.terms
theorem substitutionProof18106 : IsMapEvaluation generatorImages reduction18106.relations [2085] reduction18106.output := by lin_cert using reduction18106.terms
def image18107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18107 : InImage map_12_242 image18107 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18107 : Bundle := named_bundle% "RealMapCertificates/relations/basis18107.json"
theorem reductionProof18107 : EqualModuloRelations reduction18107.relations reduction18107.input reduction18107.output := by lin_cert using reduction18107.terms
theorem substitutionProof18107 : IsMapEvaluation generatorImages reduction18107.relations [7,7,1380] reduction18107.output := by lin_cert using reduction18107.terms
def image18108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18108 : InImage map_12_242 image18108 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18108 : Bundle := named_bundle% "RealMapCertificates/relations/basis18108.json"
theorem reductionProof18108 : EqualModuloRelations reduction18108.relations reduction18108.input reduction18108.output := by lin_cert using reduction18108.terms
theorem substitutionProof18108 : IsMapEvaluation generatorImages reduction18108.relations [3,1853] reduction18108.output := by lin_cert using reduction18108.terms
def map_12_243 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18379 : InImage map_12_243 image18379 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18379 : Bundle := named_bundle% "RealMapCertificates/relations/basis18379.json"
theorem reductionProof18379 : EqualModuloRelations reduction18379.relations reduction18379.input reduction18379.output := by lin_cert using reduction18379.terms
theorem substitutionProof18379 : IsMapEvaluation generatorImages reduction18379.relations [0,0,0,2033] reduction18379.output := by lin_cert using reduction18379.terms
def map_12_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18585 : InImage map_12_244 image18585 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18585 : Bundle := named_bundle% "RealMapCertificates/relations/basis18585.json"
theorem reductionProof18585 : EqualModuloRelations reduction18585.relations reduction18585.input reduction18585.output := by lin_cert using reduction18585.terms
theorem substitutionProof18585 : IsMapEvaluation generatorImages reduction18585.relations [2155] reduction18585.output := by lin_cert using reduction18585.terms
def image18586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18586 : InImage map_12_244 image18586 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18586 : Bundle := named_bundle% "RealMapCertificates/relations/basis18586.json"
theorem reductionProof18586 : EqualModuloRelations reduction18586.relations reduction18586.input reduction18586.output := by lin_cert using reduction18586.terms
theorem substitutionProof18586 : IsMapEvaluation generatorImages reduction18586.relations [2154] reduction18586.output := by lin_cert using reduction18586.terms
def image18587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18587 : InImage map_12_244 image18587 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18587 : Bundle := named_bundle% "RealMapCertificates/relations/basis18587.json"
theorem reductionProof18587 : EqualModuloRelations reduction18587.relations reduction18587.input reduction18587.output := by lin_cert using reduction18587.terms
theorem substitutionProof18587 : IsMapEvaluation generatorImages reduction18587.relations [0,2117] reduction18587.output := by lin_cert using reduction18587.terms
def image18588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18588 : InImage map_12_244 image18588 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18588 : Bundle := named_bundle% "RealMapCertificates/relations/basis18588.json"
theorem reductionProof18588 : EqualModuloRelations reduction18588.relations reduction18588.input reduction18588.output := by lin_cert using reduction18588.terms
theorem substitutionProof18588 : IsMapEvaluation generatorImages reduction18588.relations [0,43,74,324] reduction18588.output := by lin_cert using reduction18588.terms
def image18589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18589 : InImage map_12_244 image18589 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18589 : Bundle := named_bundle% "RealMapCertificates/relations/basis18589.json"
theorem reductionProof18589 : EqualModuloRelations reduction18589.relations reduction18589.input reduction18589.output := by lin_cert using reduction18589.terms
theorem substitutionProof18589 : IsMapEvaluation generatorImages reduction18589.relations [0,3,3,174,324] reduction18589.output := by lin_cert using reduction18589.terms
def map_12_245 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18853 : InImage map_12_245 image18853 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18853 : Bundle := named_bundle% "RealMapCertificates/relations/basis18853.json"
theorem reductionProof18853 : EqualModuloRelations reduction18853.relations reduction18853.input reduction18853.output := by lin_cert using reduction18853.terms
theorem substitutionProof18853 : IsMapEvaluation generatorImages reduction18853.relations [1,2117] reduction18853.output := by lin_cert using reduction18853.terms
def map_12_246 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19167 : InImage map_12_246 image19167 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19167 : Bundle := named_bundle% "RealMapCertificates/relations/basis19167.json"
theorem reductionProof19167 : EqualModuloRelations reduction19167.relations reduction19167.input reduction19167.output := by lin_cert using reduction19167.terms
theorem substitutionProof19167 : IsMapEvaluation generatorImages reduction19167.relations [3,1955] reduction19167.output := by lin_cert using reduction19167.terms
def image19168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19168 : InImage map_12_246 image19168 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19168 : Bundle := named_bundle% "RealMapCertificates/relations/basis19168.json"
theorem reductionProof19168 : EqualModuloRelations reduction19168.relations reduction19168.input reduction19168.output := by lin_cert using reduction19168.terms
theorem substitutionProof19168 : IsMapEvaluation generatorImages reduction19168.relations [1,2156] reduction19168.output := by lin_cert using reduction19168.terms
def image19169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19169 : InImage map_12_246 image19169 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19169 : Bundle := named_bundle% "RealMapCertificates/relations/basis19169.json"
theorem reductionProof19169 : EqualModuloRelations reduction19169.relations reduction19169.input reduction19169.output := by lin_cert using reduction19169.terms
theorem substitutionProof19169 : IsMapEvaluation generatorImages reduction19169.relations [0,0,2,2033] reduction19169.output := by lin_cert using reduction19169.terms
def map_12_247 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19385 : InImage map_12_247 image19385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19385 : Bundle := named_bundle% "RealMapCertificates/relations/basis19385.json"
theorem reductionProof19385 : EqualModuloRelations reduction19385.relations reduction19385.input reduction19385.output := by lin_cert using reduction19385.terms
theorem substitutionProof19385 : IsMapEvaluation generatorImages reduction19385.relations [262,324] reduction19385.output := by lin_cert using reduction19385.terms
def image19386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19386 : InImage map_12_247 image19386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19386 : Bundle := named_bundle% "RealMapCertificates/relations/basis19386.json"
theorem reductionProof19386 : EqualModuloRelations reduction19386.relations reduction19386.input reduction19386.output := by lin_cert using reduction19386.terms
theorem substitutionProof19386 : IsMapEvaluation generatorImages reduction19386.relations [0,3,1957] reduction19386.output := by lin_cert using reduction19386.terms
def image19387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19387 : InImage map_12_247 image19387 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19387 : Bundle := named_bundle% "RealMapCertificates/relations/basis19387.json"
theorem reductionProof19387 : EqualModuloRelations reduction19387.relations reduction19387.input reduction19387.output := by lin_cert using reduction19387.terms
theorem substitutionProof19387 : IsMapEvaluation generatorImages reduction19387.relations [0,0,3,216,324] reduction19387.output := by lin_cert using reduction19387.terms
def map_12_248 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19661 : InImage map_12_248 image19661 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19661 : Bundle := named_bundle% "RealMapCertificates/relations/basis19661.json"
theorem reductionProof19661 : EqualModuloRelations reduction19661.relations reduction19661.input reduction19661.output := by lin_cert using reduction19661.terms
theorem substitutionProof19661 : IsMapEvaluation generatorImages reduction19661.relations [2297] reduction19661.output := by lin_cert using reduction19661.terms
def image19662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19662 : InImage map_12_248 image19662 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19662 : Bundle := named_bundle% "RealMapCertificates/relations/basis19662.json"
theorem reductionProof19662 : EqualModuloRelations reduction19662.relations reduction19662.input reduction19662.output := by lin_cert using reduction19662.terms
theorem substitutionProof19662 : IsMapEvaluation generatorImages reduction19662.relations [3,2031] reduction19662.output := by lin_cert using reduction19662.terms
def image19663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19663 : InImage map_12_248 image19663 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19663 : Bundle := named_bundle% "RealMapCertificates/relations/basis19663.json"
theorem reductionProof19663 : EqualModuloRelations reduction19663.relations reduction19663.input reduction19663.output := by lin_cert using reduction19663.terms
theorem substitutionProof19663 : IsMapEvaluation generatorImages reduction19663.relations [2,2156] reduction19663.output := by lin_cert using reduction19663.terms
def map_12_250 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image20192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20192 : InImage map_12_250 image20192 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20192 : Bundle := named_bundle% "RealMapCertificates/relations/basis20192.json"
theorem reductionProof20192 : EqualModuloRelations reduction20192.relations reduction20192.input reduction20192.output := by lin_cert using reduction20192.terms
theorem substitutionProof20192 : IsMapEvaluation generatorImages reduction20192.relations [2373] reduction20192.output := by lin_cert using reduction20192.terms
def image20193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20193 : InImage map_12_250 image20193 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20193 : Bundle := named_bundle% "RealMapCertificates/relations/basis20193.json"
theorem reductionProof20193 : EqualModuloRelations reduction20193.relations reduction20193.input reduction20193.output := by lin_cert using reduction20193.terms
theorem substitutionProof20193 : IsMapEvaluation generatorImages reduction20193.relations [3,2087] reduction20193.output := by lin_cert using reduction20193.terms
def image20194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20194 : InImage map_12_250 image20194 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20194 : Bundle := named_bundle% "RealMapCertificates/relations/basis20194.json"
theorem reductionProof20194 : EqualModuloRelations reduction20194.relations reduction20194.input reduction20194.output := by lin_cert using reduction20194.terms
theorem substitutionProof20194 : IsMapEvaluation generatorImages reduction20194.relations [1,269,324] reduction20194.output := by lin_cert using reduction20194.terms
def map_12_251 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20463 : InImage map_12_251 image20463 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20463 : Bundle := named_bundle% "RealMapCertificates/relations/basis20463.json"
theorem reductionProof20463 : EqualModuloRelations reduction20463.relations reduction20463.input reduction20463.output := by lin_cert using reduction20463.terms
theorem substitutionProof20463 : IsMapEvaluation generatorImages reduction20463.relations [3,2117] reduction20463.output := by lin_cert using reduction20463.terms
def image20464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20464 : InImage map_12_251 image20464 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20464 : Bundle := named_bundle% "RealMapCertificates/relations/basis20464.json"
theorem reductionProof20464 : EqualModuloRelations reduction20464.relations reduction20464.input reduction20464.output := by lin_cert using reduction20464.terms
theorem substitutionProof20464 : IsMapEvaluation generatorImages reduction20464.relations [0,0,2329] reduction20464.output := by lin_cert using reduction20464.terms
def map_12_253 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21018 : InImage map_12_253 image21018 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21018 : Bundle := named_bundle% "RealMapCertificates/relations/basis21018.json"
theorem reductionProof21018 : EqualModuloRelations reduction21018.relations reduction21018.input reduction21018.output := by lin_cert using reduction21018.terms
theorem substitutionProof21018 : IsMapEvaluation generatorImages reduction21018.relations [2485] reduction21018.output := by lin_cert using reduction21018.terms
def map_12_254 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image21339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21339 : InImage map_12_254 image21339 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21339 : Bundle := named_bundle% "RealMapCertificates/relations/basis21339.json"
theorem reductionProof21339 : EqualModuloRelations reduction21339.relations reduction21339.input reduction21339.output := by lin_cert using reduction21339.terms
theorem substitutionProof21339 : IsMapEvaluation generatorImages reduction21339.relations [2532] reduction21339.output := by lin_cert using reduction21339.terms
def image21340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21340 : InImage map_12_254 image21340 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21340 : Bundle := named_bundle% "RealMapCertificates/relations/basis21340.json"
theorem reductionProof21340 : EqualModuloRelations reduction21340.relations reduction21340.input reduction21340.output := by lin_cert using reduction21340.terms
theorem substitutionProof21340 : IsMapEvaluation generatorImages reduction21340.relations [310,324] reduction21340.output := by lin_cert using reduction21340.terms
def image21341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21341 : InImage map_12_254 image21341 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21341 : Bundle := named_bundle% "RealMapCertificates/relations/basis21341.json"
theorem reductionProof21341 : EqualModuloRelations reduction21341.relations reduction21341.input reduction21341.output := by lin_cert using reduction21341.terms
theorem substitutionProof21341 : IsMapEvaluation generatorImages reduction21341.relations [0,2,2329] reduction21341.output := by lin_cert using reduction21341.terms
def map_12_255 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21669 : InImage map_12_255 image21669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21669 : Bundle := named_bundle% "RealMapCertificates/relations/basis21669.json"
theorem reductionProof21669 : EqualModuloRelations reduction21669.relations reduction21669.input reduction21669.output := by lin_cert using reduction21669.terms
theorem substitutionProof21669 : IsMapEvaluation generatorImages reduction21669.relations [2577] reduction21669.output := by lin_cert using reduction21669.terms
def map_12_256 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21954 : InImage map_12_256 image21954 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21954 : Bundle := named_bundle% "RealMapCertificates/relations/basis21954.json"
theorem reductionProof21954 : EqualModuloRelations reduction21954.relations reduction21954.input reduction21954.output := by lin_cert using reduction21954.terms
theorem substitutionProof21954 : IsMapEvaluation generatorImages reduction21954.relations [320,324] reduction21954.output := by lin_cert using reduction21954.terms
def image21955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21955 : InImage map_12_256 image21955 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21955 : Bundle := named_bundle% "RealMapCertificates/relations/basis21955.json"
theorem reductionProof21955 : EqualModuloRelations reduction21955.relations reduction21955.input reduction21955.output := by lin_cert using reduction21955.terms
theorem substitutionProof21955 : IsMapEvaluation generatorImages reduction21955.relations [0,311,324] reduction21955.output := by lin_cert using reduction21955.terms
def map_12_257 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image22287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22287 : InImage map_12_257 image22287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22287 : Bundle := named_bundle% "RealMapCertificates/relations/basis22287.json"
theorem reductionProof22287 : EqualModuloRelations reduction22287.relations reduction22287.input reduction22287.output := by lin_cert using reduction22287.terms
theorem substitutionProof22287 : IsMapEvaluation generatorImages reduction22287.relations [2666] reduction22287.output := by lin_cert using reduction22287.terms
def image22288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22288 : InImage map_12_257 image22288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22288 : Bundle := named_bundle% "RealMapCertificates/relations/basis22288.json"
theorem reductionProof22288 : EqualModuloRelations reduction22288.relations reduction22288.input reduction22288.output := by lin_cert using reduction22288.terms
theorem substitutionProof22288 : IsMapEvaluation generatorImages reduction22288.relations [324,331] reduction22288.output := by lin_cert using reduction22288.terms
def image22289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22289 : InImage map_12_257 image22289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22289 : Bundle := named_bundle% "RealMapCertificates/relations/basis22289.json"
theorem reductionProof22289 : EqualModuloRelations reduction22289.relations reduction22289.input reduction22289.output := by lin_cert using reduction22289.terms
theorem substitutionProof22289 : IsMapEvaluation generatorImages reduction22289.relations [0,0,314,324] reduction22289.output := by lin_cert using reduction22289.terms
def map_12_258 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22659 : InImage map_12_258 image22659 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22659 : Bundle := named_bundle% "RealMapCertificates/relations/basis22659.json"
theorem reductionProof22659 : EqualModuloRelations reduction22659.relations reduction22659.input reduction22659.output := by lin_cert using reduction22659.terms
theorem substitutionProof22659 : IsMapEvaluation generatorImages reduction22659.relations [2732] reduction22659.output := by lin_cert using reduction22659.terms
def image22660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22660 : InImage map_12_258 image22660 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22660 : Bundle := named_bundle% "RealMapCertificates/relations/basis22660.json"
theorem reductionProof22660 : EqualModuloRelations reduction22660.relations reduction22660.input reduction22660.output := by lin_cert using reduction22660.terms
theorem substitutionProof22660 : IsMapEvaluation generatorImages reduction22660.relations [2731] reduction22660.output := by lin_cert using reduction22660.terms
def image22661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22661 : InImage map_12_258 image22661 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22661 : Bundle := named_bundle% "RealMapCertificates/relations/basis22661.json"
theorem reductionProof22661 : EqualModuloRelations reduction22661.relations reduction22661.input reduction22661.output := by lin_cert using reduction22661.terms
theorem substitutionProof22661 : IsMapEvaluation generatorImages reduction22661.relations [2730] reduction22661.output := by lin_cert using reduction22661.terms
def image22662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22662 : InImage map_12_258 image22662 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22662 : Bundle := named_bundle% "RealMapCertificates/relations/basis22662.json"
theorem reductionProof22662 : EqualModuloRelations reduction22662.relations reduction22662.input reduction22662.output := by lin_cert using reduction22662.terms
theorem substitutionProof22662 : IsMapEvaluation generatorImages reduction22662.relations [2729] reduction22662.output := by lin_cert using reduction22662.terms
def image22663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22663 : InImage map_12_258 image22663 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22663 : Bundle := named_bundle% "RealMapCertificates/relations/basis22663.json"
theorem reductionProof22663 : EqualModuloRelations reduction22663.relations reduction22663.input reduction22663.output := by lin_cert using reduction22663.terms
theorem substitutionProof22663 : IsMapEvaluation generatorImages reduction22663.relations [324,336] reduction22663.output := by lin_cert using reduction22663.terms
def image22664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22664 : InImage map_12_258 image22664 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22664 : Bundle := named_bundle% "RealMapCertificates/relations/basis22664.json"
theorem reductionProof22664 : EqualModuloRelations reduction22664.relations reduction22664.input reduction22664.output := by lin_cert using reduction22664.terms
theorem substitutionProof22664 : IsMapEvaluation generatorImages reduction22664.relations [1,321,324] reduction22664.output := by lin_cert using reduction22664.terms
end RealMapCertificates
