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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 21 => [[3,4,4]]
  | 22 => [[5,8]]
  | 24 => []
  | 27 => [[1,4,4,4]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 43 => []
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 69 => []
  | 72 => []
  | 76 => []
  | 80 => []
  | 81 => []
  | 90 => []
  | 105 => []
  | 107 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 119 => [[1,9,12]]
  | 124 => []
  | 126 => []
  | 127 => []
  | 128 => []
  | 133 => []
  | 141 => []
  | 144 => []
  | 150 => []
  | 151 => []
  | 155 => []
  | 169 => []
  | 170 => []
  | 177 => []
  | 178 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 195 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 221 => []
  | 234 => []
  | 235 => []
  | 250 => []
  | 261 => []
  | 268 => []
  | 275 => []
  | 280 => []
  | 287 => []
  | 324 => []
  | 333 => []
  | 351 => []
  | 365 => []
  | 2735 => []
  | 2785 => []
  | 2786 => []
  | 2847 => []
  | 2904 => []
  | 2905 => []
  | _ => []
def map_12_259 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image22976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22976 : InImage map_12_259 image22976 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22976 : Bundle := named_bundle% "RealMapCertificates/relations/basis22976.json"
theorem reductionProof22976 : EqualModuloRelations reduction22976.relations reduction22976.input reduction22976.output := by lin_cert using reduction22976.terms
theorem substitutionProof22976 : IsMapEvaluation generatorImages reduction22976.relations [2785] reduction22976.output := by lin_cert using reduction22976.terms
def image22977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22977 : InImage map_12_259 image22977 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22977 : Bundle := named_bundle% "RealMapCertificates/relations/basis22977.json"
theorem reductionProof22977 : EqualModuloRelations reduction22977.relations reduction22977.input reduction22977.output := by lin_cert using reduction22977.terms
theorem substitutionProof22977 : IsMapEvaluation generatorImages reduction22977.relations [324,351] reduction22977.output := by lin_cert using reduction22977.terms
def image22978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22978 : InImage map_12_259 image22978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22978 : Bundle := named_bundle% "RealMapCertificates/relations/basis22978.json"
theorem reductionProof22978 : EqualModuloRelations reduction22978.relations reduction22978.input reduction22978.output := by lin_cert using reduction22978.terms
theorem substitutionProof22978 : IsMapEvaluation generatorImages reduction22978.relations [0,2735] reduction22978.output := by lin_cert using reduction22978.terms
def image22979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22979 : InImage map_12_259 image22979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22979 : Bundle := named_bundle% "RealMapCertificates/relations/basis22979.json"
theorem reductionProof22979 : EqualModuloRelations reduction22979.relations reduction22979.input reduction22979.output := by lin_cert using reduction22979.terms
theorem substitutionProof22979 : IsMapEvaluation generatorImages reduction22979.relations [0,0,324,333] reduction22979.output := by lin_cert using reduction22979.terms
def map_12_260 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image23376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23376 : InImage map_12_260 image23376 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction23376 : Bundle := named_bundle% "RealMapCertificates/relations/basis23376.json"
theorem reductionProof23376 : EqualModuloRelations reduction23376.relations reduction23376.input reduction23376.output := by lin_cert using reduction23376.terms
theorem substitutionProof23376 : IsMapEvaluation generatorImages reduction23376.relations [324,365] reduction23376.output := by lin_cert using reduction23376.terms
def image23377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23377 : InImage map_12_260 image23377 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction23377 : Bundle := named_bundle% "RealMapCertificates/relations/basis23377.json"
theorem reductionProof23377 : EqualModuloRelations reduction23377.relations reduction23377.input reduction23377.output := by lin_cert using reduction23377.terms
theorem substitutionProof23377 : IsMapEvaluation generatorImages reduction23377.relations [0,2786] reduction23377.output := by lin_cert using reduction23377.terms
def map_12_261 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23791 : InImage map_12_261 image23791 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23791 : Bundle := named_bundle% "RealMapCertificates/relations/basis23791.json"
theorem reductionProof23791 : EqualModuloRelations reduction23791.relations reduction23791.input reduction23791.output := by lin_cert using reduction23791.terms
theorem substitutionProof23791 : IsMapEvaluation generatorImages reduction23791.relations [2905] reduction23791.output := by lin_cert using reduction23791.terms
def image23792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23792 : InImage map_12_261 image23792 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23792 : Bundle := named_bundle% "RealMapCertificates/relations/basis23792.json"
theorem reductionProof23792 : EqualModuloRelations reduction23792.relations reduction23792.input reduction23792.output := by lin_cert using reduction23792.terms
theorem substitutionProof23792 : IsMapEvaluation generatorImages reduction23792.relations [2904] reduction23792.output := by lin_cert using reduction23792.terms
def image23793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23793 : InImage map_12_261 image23793 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23793 : Bundle := named_bundle% "RealMapCertificates/relations/basis23793.json"
theorem reductionProof23793 : EqualModuloRelations reduction23793.relations reduction23793.input reduction23793.output := by lin_cert using reduction23793.terms
theorem substitutionProof23793 : IsMapEvaluation generatorImages reduction23793.relations [1,2786] reduction23793.output := by lin_cert using reduction23793.terms
def image23794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23794 : InImage map_12_261 image23794 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23794 : Bundle := named_bundle% "RealMapCertificates/relations/basis23794.json"
theorem reductionProof23794 : EqualModuloRelations reduction23794.relations reduction23794.input reduction23794.output := by lin_cert using reduction23794.terms
theorem substitutionProof23794 : IsMapEvaluation generatorImages reduction23794.relations [0,2847] reduction23794.output := by lin_cert using reduction23794.terms
def map_13_13 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image26 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation26 : InImage map_13_13 image26 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction26 : Bundle := named_bundle% "RealMapCertificates/relations/basis26.json"
theorem reductionProof26 : EqualModuloRelations reduction26.relations reduction26.input reduction26.output := by lin_cert using reduction26.terms
theorem substitutionProof26 : IsMapEvaluation generatorImages reduction26.relations [0,0,0,0,0,0,0,0,0,0,0,0,0] reduction26.output := by lin_cert using reduction26.terms
def map_13_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image147 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation147 : InImage map_13_38 image147 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction147 : Bundle := named_bundle% "RealMapCertificates/relations/basis147.json"
theorem reductionProof147 : EqualModuloRelations reduction147.relations reduction147.input reduction147.output := by lin_cert using reduction147.terms
theorem substitutionProof147 : IsMapEvaluation generatorImages reduction147.relations [27] reduction147.output := by lin_cert using reduction147.terms
def map_13_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation162 : InImage map_13_40 image162 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction162 : Bundle := named_bundle% "RealMapCertificates/relations/basis162.json"
theorem reductionProof162 : EqualModuloRelations reduction162.relations reduction162.input reduction162.output := by lin_cert using reduction162.terms
theorem substitutionProof162 : IsMapEvaluation generatorImages reduction162.relations [30] reduction162.output := by lin_cert using reduction162.terms
def map_13_43 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image191 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation191 : InImage map_13_43 image191 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction191 : Bundle := named_bundle% "RealMapCertificates/relations/basis191.json"
theorem reductionProof191 : EqualModuloRelations reduction191.relations reduction191.input reduction191.output := by lin_cert using reduction191.terms
theorem substitutionProof191 : IsMapEvaluation generatorImages reduction191.relations [0,31] reduction191.output := by lin_cert using reduction191.terms
def map_13_44 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image200 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation200 : InImage map_13_44 image200 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction200 : Bundle := named_bundle% "RealMapCertificates/relations/basis200.json"
theorem reductionProof200 : EqualModuloRelations reduction200.relations reduction200.input reduction200.output := by lin_cert using reduction200.terms
theorem substitutionProof200 : IsMapEvaluation generatorImages reduction200.relations [1,31] reduction200.output := by lin_cert using reduction200.terms
def image201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation201 : InImage map_13_44 image201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction201 : Bundle := named_bundle% "RealMapCertificates/relations/basis201.json"
theorem reductionProof201 : EqualModuloRelations reduction201.relations reduction201.input reduction201.output := by lin_cert using reduction201.terms
theorem substitutionProof201 : IsMapEvaluation generatorImages reduction201.relations [0,0,0,0,0,0,0,0,0,0,0,0,18] reduction201.output := by lin_cert using reduction201.terms
def map_13_46 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image225 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation225 : InImage map_13_46 image225 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction225 : Bundle := named_bundle% "RealMapCertificates/relations/basis225.json"
theorem reductionProof225 : EqualModuloRelations reduction225.relations reduction225.input reduction225.output := by lin_cert using reduction225.terms
theorem substitutionProof225 : IsMapEvaluation generatorImages reduction225.relations [0,39] reduction225.output := by lin_cert using reduction225.terms
def map_13_47 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image237 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation237 : InImage map_13_47 image237 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction237 : Bundle := named_bundle% "RealMapCertificates/relations/basis237.json"
theorem reductionProof237 : EqualModuloRelations reduction237.relations reduction237.input reduction237.output := by lin_cert using reduction237.terms
theorem substitutionProof237 : IsMapEvaluation generatorImages reduction237.relations [0,0,40] reduction237.output := by lin_cert using reduction237.terms
def map_13_49 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image252 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation252 : InImage map_13_49 image252 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction252 : Bundle := named_bundle% "RealMapCertificates/relations/basis252.json"
theorem reductionProof252 : EqualModuloRelations reduction252.relations reduction252.input reduction252.output := by lin_cert using reduction252.terms
theorem substitutionProof252 : IsMapEvaluation generatorImages reduction252.relations [0,8,16] reduction252.output := by lin_cert using reduction252.terms
def map_13_50 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image260 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation260 : InImage map_13_50 image260 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction260 : Bundle := named_bundle% "RealMapCertificates/relations/basis260.json"
theorem reductionProof260 : EqualModuloRelations reduction260.relations reduction260.input reduction260.output := by lin_cert using reduction260.terms
theorem substitutionProof260 : IsMapEvaluation generatorImages reduction260.relations [0,0,8,17] reduction260.output := by lin_cert using reduction260.terms
def map_13_52 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation275 : InImage map_13_52 image275 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction275 : Bundle := named_bundle% "RealMapCertificates/relations/basis275.json"
theorem reductionProof275 : EqualModuloRelations reduction275.relations reduction275.input reduction275.output := by lin_cert using reduction275.terms
theorem substitutionProof275 : IsMapEvaluation generatorImages reduction275.relations [0,8,19] reduction275.output := by lin_cert using reduction275.terms
def map_13_53 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image285 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation285 : InImage map_13_53 image285 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction285 : Bundle := named_bundle% "RealMapCertificates/relations/basis285.json"
theorem reductionProof285 : EqualModuloRelations reduction285.relations reduction285.input reduction285.output := by lin_cert using reduction285.terms
theorem substitutionProof285 : IsMapEvaluation generatorImages reduction285.relations [0,0,8,20] reduction285.output := by lin_cert using reduction285.terms
def map_13_55 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image305 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation305 : InImage map_13_55 image305 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction305 : Bundle := named_bundle% "RealMapCertificates/relations/basis305.json"
theorem reductionProof305 : EqualModuloRelations reduction305.relations reduction305.input reduction305.output := by lin_cert using reduction305.terms
theorem substitutionProof305 : IsMapEvaluation generatorImages reduction305.relations [0,8,8,8] reduction305.output := by lin_cert using reduction305.terms
def map_13_56 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation317 : InImage map_13_56 image317 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction317 : Bundle := named_bundle% "RealMapCertificates/relations/basis317.json"
theorem reductionProof317 : EqualModuloRelations reduction317.relations reduction317.input reduction317.output := by lin_cert using reduction317.terms
theorem substitutionProof317 : IsMapEvaluation generatorImages reduction317.relations [0,0,8,22] reduction317.output := by lin_cert using reduction317.terms
def map_13_60 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation351 : InImage map_13_60 image351 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction351 : Bundle := named_bundle% "RealMapCertificates/relations/basis351.json"
theorem reductionProof351 : EqualModuloRelations reduction351.relations reduction351.input reduction351.output := by lin_cert using reduction351.terms
theorem substitutionProof351 : IsMapEvaluation generatorImages reduction351.relations [60] reduction351.output := by lin_cert using reduction351.terms
def image352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation352 : InImage map_13_60 image352 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction352 : Bundle := named_bundle% "RealMapCertificates/relations/basis352.json"
theorem reductionProof352 : EqualModuloRelations reduction352.relations reduction352.input reduction352.output := by lin_cert using reduction352.terms
theorem substitutionProof352 : IsMapEvaluation generatorImages reduction352.relations [59] reduction352.output := by lin_cert using reduction352.terms
def map_13_63 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image382 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation382 : InImage map_13_63 image382 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction382 : Bundle := named_bundle% "RealMapCertificates/relations/basis382.json"
theorem reductionProof382 : EqualModuloRelations reduction382.relations reduction382.input reduction382.output := by lin_cert using reduction382.terms
theorem substitutionProof382 : IsMapEvaluation generatorImages reduction382.relations [63] reduction382.output := by lin_cert using reduction382.terms
def map_13_66 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image425 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation425 : InImage map_13_66 image425 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction425 : Bundle := named_bundle% "RealMapCertificates/relations/basis425.json"
theorem reductionProof425 : EqualModuloRelations reduction425.relations reduction425.input reduction425.output := by lin_cert using reduction425.terms
theorem substitutionProof425 : IsMapEvaluation generatorImages reduction425.relations [8,42] reduction425.output := by lin_cert using reduction425.terms
def image426 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation426 : InImage map_13_66 image426 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction426 : Bundle := named_bundle% "RealMapCertificates/relations/basis426.json"
theorem reductionProof426 : EqualModuloRelations reduction426.relations reduction426.input reduction426.output := by lin_cert using reduction426.terms
theorem substitutionProof426 : IsMapEvaluation generatorImages reduction426.relations [0,0,0,64] reduction426.output := by lin_cert using reduction426.terms
def map_13_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation445 : InImage map_13_67 image445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction445 : Bundle := named_bundle% "RealMapCertificates/relations/basis445.json"
theorem reductionProof445 : EqualModuloRelations reduction445.relations reduction445.input reduction445.output := by lin_cert using reduction445.terms
theorem substitutionProof445 : IsMapEvaluation generatorImages reduction445.relations [0,0,0,66] reduction445.output := by lin_cert using reduction445.terms
def map_13_69 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image485 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation485 : InImage map_13_69 image485 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction485 : Bundle := named_bundle% "RealMapCertificates/relations/basis485.json"
theorem reductionProof485 : EqualModuloRelations reduction485.relations reduction485.input reduction485.output := by lin_cert using reduction485.terms
theorem substitutionProof485 : IsMapEvaluation generatorImages reduction485.relations [8,46] reduction485.output := by lin_cert using reduction485.terms
def image486 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation486 : InImage map_13_69 image486 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction486 : Bundle := named_bundle% "RealMapCertificates/relations/basis486.json"
theorem reductionProof486 : EqualModuloRelations reduction486.relations reduction486.input reduction486.output := by lin_cert using reduction486.terms
theorem substitutionProof486 : IsMapEvaluation generatorImages reduction486.relations [0,0,0,72] reduction486.output := by lin_cert using reduction486.terms
def map_13_72 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image542 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation542 : InImage map_13_72 image542 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction542 : Bundle := named_bundle% "RealMapCertificates/relations/basis542.json"
theorem reductionProof542 : EqualModuloRelations reduction542.relations reduction542.input reduction542.output := by lin_cert using reduction542.terms
theorem substitutionProof542 : IsMapEvaluation generatorImages reduction542.relations [8,51] reduction542.output := by lin_cert using reduction542.terms
def map_13_73 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image568 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation568 : InImage map_13_73 image568 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction568 : Bundle := named_bundle% "RealMapCertificates/relations/basis568.json"
theorem reductionProof568 : EqualModuloRelations reduction568.relations reduction568.input reduction568.output := by lin_cert using reduction568.terms
theorem substitutionProof568 : IsMapEvaluation generatorImages reduction568.relations [0,0,0,0,80] reduction568.output := by lin_cert using reduction568.terms
def map_13_74 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation589 : InImage map_13_74 image589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction589 : Bundle := named_bundle% "RealMapCertificates/relations/basis589.json"
theorem reductionProof589 : EqualModuloRelations reduction589.relations reduction589.input reduction589.output := by lin_cert using reduction589.terms
theorem substitutionProof589 : IsMapEvaluation generatorImages reduction589.relations [0,0,0,0,81] reduction589.output := by lin_cert using reduction589.terms
def map_13_75 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image614 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation614 : InImage map_13_75 image614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction614 : Bundle := named_bundle% "RealMapCertificates/relations/basis614.json"
theorem reductionProof614 : EqualModuloRelations reduction614.relations reduction614.input reduction614.output := by lin_cert using reduction614.terms
theorem substitutionProof614 : IsMapEvaluation generatorImages reduction614.relations [9,51] reduction614.output := by lin_cert using reduction614.terms
def image615 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation615 : InImage map_13_75 image615 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction615 : Bundle := named_bundle% "RealMapCertificates/relations/basis615.json"
theorem reductionProof615 : EqualModuloRelations reduction615.relations reduction615.input reduction615.output := by lin_cert using reduction615.terms
theorem substitutionProof615 : IsMapEvaluation generatorImages reduction615.relations [0,0,0,90] reduction615.output := by lin_cert using reduction615.terms
def map_13_76 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image633 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation633 : InImage map_13_76 image633 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction633 : Bundle := named_bundle% "RealMapCertificates/relations/basis633.json"
theorem reductionProof633 : EqualModuloRelations reduction633.relations reduction633.input reduction633.output := by lin_cert using reduction633.terms
theorem substitutionProof633 : IsMapEvaluation generatorImages reduction633.relations [0,0,0,0,0,0,0,0,0,0,0,0,69] reduction633.output := by lin_cert using reduction633.terms
def map_13_78 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image680 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation680 : InImage map_13_78 image680 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction680 : Bundle := named_bundle% "RealMapCertificates/relations/basis680.json"
theorem reductionProof680 : EqualModuloRelations reduction680.relations reduction680.input reduction680.output := by lin_cert using reduction680.terms
theorem substitutionProof680 : IsMapEvaluation generatorImages reduction680.relations [113] reduction680.output := by lin_cert using reduction680.terms
def image681 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation681 : InImage map_13_78 image681 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction681 : Bundle := named_bundle% "RealMapCertificates/relations/basis681.json"
theorem reductionProof681 : EqualModuloRelations reduction681.relations reduction681.input reduction681.output := by lin_cert using reduction681.terms
theorem substitutionProof681 : IsMapEvaluation generatorImages reduction681.relations [13,51] reduction681.output := by lin_cert using reduction681.terms
def map_13_81 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image749 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation749 : InImage map_13_81 image749 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction749 : Bundle := named_bundle% "RealMapCertificates/relations/basis749.json"
theorem reductionProof749 : EqualModuloRelations reduction749.relations reduction749.input reduction749.output := by lin_cert using reduction749.terms
theorem substitutionProof749 : IsMapEvaluation generatorImages reduction749.relations [118] reduction749.output := by lin_cert using reduction749.terms
def image750 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation750 : InImage map_13_81 image750 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction750 : Bundle := named_bundle% "RealMapCertificates/relations/basis750.json"
theorem reductionProof750 : EqualModuloRelations reduction750.relations reduction750.input reduction750.output := by lin_cert using reduction750.terms
theorem substitutionProof750 : IsMapEvaluation generatorImages reduction750.relations [0,0,0,0,0,107] reduction750.output := by lin_cert using reduction750.terms
def map_13_82 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image768 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation768 : InImage map_13_82 image768 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction768 : Bundle := named_bundle% "RealMapCertificates/relations/basis768.json"
theorem reductionProof768 : EqualModuloRelations reduction768.relations reduction768.input reduction768.output := by lin_cert using reduction768.terms
theorem substitutionProof768 : IsMapEvaluation generatorImages reduction768.relations [119] reduction768.output := by lin_cert using reduction768.terms
def map_13_84 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation816 : InImage map_13_84 image816 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction816 : Bundle := named_bundle% "RealMapCertificates/relations/basis816.json"
theorem reductionProof816 : EqualModuloRelations reduction816.relations reduction816.input reduction816.output := by lin_cert using reduction816.terms
theorem substitutionProof816 : IsMapEvaluation generatorImages reduction816.relations [127] reduction816.output := by lin_cert using reduction816.terms
def image817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation817 : InImage map_13_84 image817 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction817 : Bundle := named_bundle% "RealMapCertificates/relations/basis817.json"
theorem reductionProof817 : EqualModuloRelations reduction817.relations reduction817.input reduction817.output := by lin_cert using reduction817.terms
theorem substitutionProof817 : IsMapEvaluation generatorImages reduction817.relations [126] reduction817.output := by lin_cert using reduction817.terms
def image818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation818 : InImage map_13_84 image818 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction818 : Bundle := named_bundle% "RealMapCertificates/relations/basis818.json"
theorem reductionProof818 : EqualModuloRelations reduction818.relations reduction818.input reduction818.output := by lin_cert using reduction818.terms
theorem substitutionProof818 : IsMapEvaluation generatorImages reduction818.relations [13,13,24] reduction818.output := by lin_cert using reduction818.terms
def map_13_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation845 : InImage map_13_85 image845 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction845 : Bundle := named_bundle% "RealMapCertificates/relations/basis845.json"
theorem reductionProof845 : EqualModuloRelations reduction845.relations reduction845.input reduction845.output := by lin_cert using reduction845.terms
theorem substitutionProof845 : IsMapEvaluation generatorImages reduction845.relations [1,124] reduction845.output := by lin_cert using reduction845.terms
def map_13_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation900 : InImage map_13_87 image900 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction900 : Bundle := named_bundle% "RealMapCertificates/relations/basis900.json"
theorem reductionProof900 : EqualModuloRelations reduction900.relations reduction900.input reduction900.output := by lin_cert using reduction900.terms
theorem substitutionProof900 : IsMapEvaluation generatorImages reduction900.relations [8,80] reduction900.output := by lin_cert using reduction900.terms
def map_13_90 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation978 : InImage map_13_90 image978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction978 : Bundle := named_bundle% "RealMapCertificates/relations/basis978.json"
theorem reductionProof978 : EqualModuloRelations reduction978.relations reduction978.input reduction978.output := by lin_cert using reduction978.terms
theorem substitutionProof978 : IsMapEvaluation generatorImages reduction978.relations [9,80] reduction978.output := by lin_cert using reduction978.terms
def image979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation979 : InImage map_13_90 image979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction979 : Bundle := named_bundle% "RealMapCertificates/relations/basis979.json"
theorem reductionProof979 : EqualModuloRelations reduction979.relations reduction979.input reduction979.output := by lin_cert using reduction979.terms
theorem substitutionProof979 : IsMapEvaluation generatorImages reduction979.relations [0,0,0,0,0,0,128] reduction979.output := by lin_cert using reduction979.terms
def map_13_91 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1007 : InImage map_13_91 image1007 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1007 : Bundle := named_bundle% "RealMapCertificates/relations/basis1007.json"
theorem reductionProof1007 : EqualModuloRelations reduction1007.relations reduction1007.input reduction1007.output := by lin_cert using reduction1007.terms
theorem substitutionProof1007 : IsMapEvaluation generatorImages reduction1007.relations [1,144] reduction1007.output := by lin_cert using reduction1007.terms
def image1008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1008 : InImage map_13_91 image1008 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1008 : Bundle := named_bundle% "RealMapCertificates/relations/basis1008.json"
theorem reductionProof1008 : EqualModuloRelations reduction1008.relations reduction1008.input reduction1008.output := by lin_cert using reduction1008.terms
theorem substitutionProof1008 : IsMapEvaluation generatorImages reduction1008.relations [0,0,0,141] reduction1008.output := by lin_cert using reduction1008.terms
def map_13_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1028 : InImage map_13_92 image1028 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1028 : Bundle := named_bundle% "RealMapCertificates/relations/basis1028.json"
theorem reductionProof1028 : EqualModuloRelations reduction1028.relations reduction1028.input reduction1028.output := by lin_cert using reduction1028.terms
theorem substitutionProof1028 : IsMapEvaluation generatorImages reduction1028.relations [150] reduction1028.output := by lin_cert using reduction1028.terms
def map_13_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1059 : InImage map_13_93 image1059 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1059 : Bundle := named_bundle% "RealMapCertificates/relations/basis1059.json"
theorem reductionProof1059 : EqualModuloRelations reduction1059.relations reduction1059.input reduction1059.output := by lin_cert using reduction1059.terms
theorem substitutionProof1059 : IsMapEvaluation generatorImages reduction1059.relations [13,80] reduction1059.output := by lin_cert using reduction1059.terms
def map_13_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1083 : InImage map_13_94 image1083 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1083 : Bundle := named_bundle% "RealMapCertificates/relations/basis1083.json"
theorem reductionProof1083 : EqualModuloRelations reduction1083.relations reduction1083.input reduction1083.output := by lin_cert using reduction1083.terms
theorem substitutionProof1083 : IsMapEvaluation generatorImages reduction1083.relations [0,155] reduction1083.output := by lin_cert using reduction1083.terms
def map_13_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1131 : InImage map_13_96 image1131 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1131 : Bundle := named_bundle% "RealMapCertificates/relations/basis1131.json"
theorem reductionProof1131 : EqualModuloRelations reduction1131.relations reduction1131.input reduction1131.output := by lin_cert using reduction1131.terms
theorem substitutionProof1131 : IsMapEvaluation generatorImages reduction1131.relations [2,151] reduction1131.output := by lin_cert using reduction1131.terms
def map_13_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1174 : InImage map_13_98 image1174 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1174 : Bundle := named_bundle% "RealMapCertificates/relations/basis1174.json"
theorem reductionProof1174 : EqualModuloRelations reduction1174.relations reduction1174.input reduction1174.output := by lin_cert using reduction1174.terms
theorem substitutionProof1174 : IsMapEvaluation generatorImages reduction1174.relations [169] reduction1174.output := by lin_cert using reduction1174.terms
def map_13_99 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1206 : InImage map_13_99 image1206 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1206 : Bundle := named_bundle% "RealMapCertificates/relations/basis1206.json"
theorem reductionProof1206 : EqualModuloRelations reduction1206.relations reduction1206.input reduction1206.output := by lin_cert using reduction1206.terms
theorem substitutionProof1206 : IsMapEvaluation generatorImages reduction1206.relations [0,0,0,0,0,17,69] reduction1206.output := by lin_cert using reduction1206.terms
def map_13_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1230 : InImage map_13_100 image1230 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1230 : Bundle := named_bundle% "RealMapCertificates/relations/basis1230.json"
theorem reductionProof1230 : EqualModuloRelations reduction1230.relations reduction1230.input reduction1230.output := by lin_cert using reduction1230.terms
theorem substitutionProof1230 : IsMapEvaluation generatorImages reduction1230.relations [13,105] reduction1230.output := by lin_cert using reduction1230.terms
def image1231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1231 : InImage map_13_100 image1231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1231 : Bundle := named_bundle% "RealMapCertificates/relations/basis1231.json"
theorem reductionProof1231 : EqualModuloRelations reduction1231.relations reduction1231.input reduction1231.output := by lin_cert using reduction1231.terms
theorem substitutionProof1231 : IsMapEvaluation generatorImages reduction1231.relations [1,170] reduction1231.output := by lin_cert using reduction1231.terms
def map_13_101 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1259 : InImage map_13_101 image1259 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1259 : Bundle := named_bundle% "RealMapCertificates/relations/basis1259.json"
theorem reductionProof1259 : EqualModuloRelations reduction1259.relations reduction1259.input reduction1259.output := by lin_cert using reduction1259.terms
theorem substitutionProof1259 : IsMapEvaluation generatorImages reduction1259.relations [1,21,69] reduction1259.output := by lin_cert using reduction1259.terms
def image1260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1260 : InImage map_13_101 image1260 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1260 : Bundle := named_bundle% "RealMapCertificates/relations/basis1260.json"
theorem reductionProof1260 : EqualModuloRelations reduction1260.relations reduction1260.input reduction1260.output := by lin_cert using reduction1260.terms
theorem substitutionProof1260 : IsMapEvaluation generatorImages reduction1260.relations [0,177] reduction1260.output := by lin_cert using reduction1260.terms
def map_13_102 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1301 : InImage map_13_102 image1301 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1301 : Bundle := named_bundle% "RealMapCertificates/relations/basis1301.json"
theorem reductionProof1301 : EqualModuloRelations reduction1301.relations reduction1301.input reduction1301.output := by lin_cert using reduction1301.terms
theorem substitutionProof1301 : IsMapEvaluation generatorImages reduction1301.relations [0,0,178] reduction1301.output := by lin_cert using reduction1301.terms
def map_13_103 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1327 : InImage map_13_103 image1327 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1327 : Bundle := named_bundle% "RealMapCertificates/relations/basis1327.json"
theorem reductionProof1327 : EqualModuloRelations reduction1327.relations reduction1327.input reduction1327.output := by lin_cert using reduction1327.terms
theorem substitutionProof1327 : IsMapEvaluation generatorImages reduction1327.relations [0,187] reduction1327.output := by lin_cert using reduction1327.terms
def map_13_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1355 : InImage map_13_104 image1355 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1355 : Bundle := named_bundle% "RealMapCertificates/relations/basis1355.json"
theorem reductionProof1355 : EqualModuloRelations reduction1355.relations reduction1355.input reduction1355.output := by lin_cert using reduction1355.terms
theorem substitutionProof1355 : IsMapEvaluation generatorImages reduction1355.relations [1,187] reduction1355.output := by lin_cert using reduction1355.terms
def image1356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1356 : InImage map_13_104 image1356 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1356 : Bundle := named_bundle% "RealMapCertificates/relations/basis1356.json"
theorem reductionProof1356 : EqualModuloRelations reduction1356.relations reduction1356.input reduction1356.output := by lin_cert using reduction1356.terms
theorem substitutionProof1356 : IsMapEvaluation generatorImages reduction1356.relations [0,0,188] reduction1356.output := by lin_cert using reduction1356.terms
def map_13_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1398 : InImage map_13_105 image1398 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1398 : Bundle := named_bundle% "RealMapCertificates/relations/basis1398.json"
theorem reductionProof1398 : EqualModuloRelations reduction1398.relations reduction1398.input reduction1398.output := by lin_cert using reduction1398.terms
theorem substitutionProof1398 : IsMapEvaluation generatorImages reduction1398.relations [0,195] reduction1398.output := by lin_cert using reduction1398.terms
def map_13_106 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image1427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1427 : InImage map_13_106 image1427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1427 : Bundle := named_bundle% "RealMapCertificates/relations/basis1427.json"
theorem reductionProof1427 : EqualModuloRelations reduction1427.relations reduction1427.input reduction1427.output := by lin_cert using reduction1427.terms
theorem substitutionProof1427 : IsMapEvaluation generatorImages reduction1427.relations [31,69] reduction1427.output := by lin_cert using reduction1427.terms
def image1428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1428 : InImage map_13_106 image1428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1428 : Bundle := named_bundle% "RealMapCertificates/relations/basis1428.json"
theorem reductionProof1428 : EqualModuloRelations reduction1428.relations reduction1428.input reduction1428.output := by lin_cert using reduction1428.terms
theorem substitutionProof1428 : IsMapEvaluation generatorImages reduction1428.relations [9,133] reduction1428.output := by lin_cert using reduction1428.terms
def image1429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1429 : InImage map_13_106 image1429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1429 : Bundle := named_bundle% "RealMapCertificates/relations/basis1429.json"
theorem reductionProof1429 : EqualModuloRelations reduction1429.relations reduction1429.input reduction1429.output := by lin_cert using reduction1429.terms
theorem substitutionProof1429 : IsMapEvaluation generatorImages reduction1429.relations [1,195] reduction1429.output := by lin_cert using reduction1429.terms
def image1430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1430 : InImage map_13_106 image1430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1430 : Bundle := named_bundle% "RealMapCertificates/relations/basis1430.json"
theorem reductionProof1430 : EqualModuloRelations reduction1430.relations reduction1430.input reduction1430.output := by lin_cert using reduction1430.terms
theorem substitutionProof1430 : IsMapEvaluation generatorImages reduction1430.relations [0,201] reduction1430.output := by lin_cert using reduction1430.terms
def map_13_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1461 : InImage map_13_107 image1461 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1461 : Bundle := named_bundle% "RealMapCertificates/relations/basis1461.json"
theorem reductionProof1461 : EqualModuloRelations reduction1461.relations reduction1461.input reduction1461.output := by lin_cert using reduction1461.terms
theorem substitutionProof1461 : IsMapEvaluation generatorImages reduction1461.relations [0,2,188] reduction1461.output := by lin_cert using reduction1461.terms
def map_13_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1501 : InImage map_13_108 image1501 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1501 : Bundle := named_bundle% "RealMapCertificates/relations/basis1501.json"
theorem reductionProof1501 : EqualModuloRelations reduction1501.relations reduction1501.input reduction1501.output := by lin_cert using reduction1501.terms
theorem substitutionProof1501 : IsMapEvaluation generatorImages reduction1501.relations [2,195] reduction1501.output := by lin_cert using reduction1501.terms
def map_13_109 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1534 : InImage map_13_109 image1534 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1534 : Bundle := named_bundle% "RealMapCertificates/relations/basis1534.json"
theorem reductionProof1534 : EqualModuloRelations reduction1534.relations reduction1534.input reduction1534.output := by lin_cert using reduction1534.terms
theorem substitutionProof1534 : IsMapEvaluation generatorImages reduction1534.relations [39,69] reduction1534.output := by lin_cert using reduction1534.terms
def image1535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1535 : InImage map_13_109 image1535 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1535 : Bundle := named_bundle% "RealMapCertificates/relations/basis1535.json"
theorem reductionProof1535 : EqualModuloRelations reduction1535.relations reduction1535.input reduction1535.output := by lin_cert using reduction1535.terms
theorem substitutionProof1535 : IsMapEvaluation generatorImages reduction1535.relations [13,133] reduction1535.output := by lin_cert using reduction1535.terms
def image1536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1536 : InImage map_13_109 image1536 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1536 : Bundle := named_bundle% "RealMapCertificates/relations/basis1536.json"
theorem reductionProof1536 : EqualModuloRelations reduction1536.relations reduction1536.input reduction1536.output := by lin_cert using reduction1536.terms
theorem substitutionProof1536 : IsMapEvaluation generatorImages reduction1536.relations [0,212] reduction1536.output := by lin_cert using reduction1536.terms
def map_13_110 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1569 : InImage map_13_110 image1569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1569 : Bundle := named_bundle% "RealMapCertificates/relations/basis1569.json"
theorem reductionProof1569 : EqualModuloRelations reduction1569.relations reduction1569.input reduction1569.output := by lin_cert using reduction1569.terms
theorem substitutionProof1569 : IsMapEvaluation generatorImages reduction1569.relations [1,212] reduction1569.output := by lin_cert using reduction1569.terms
def image1570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1570 : InImage map_13_110 image1570 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1570 : Bundle := named_bundle% "RealMapCertificates/relations/basis1570.json"
theorem reductionProof1570 : EqualModuloRelations reduction1570.relations reduction1570.input reduction1570.output := by lin_cert using reduction1570.terms
theorem substitutionProof1570 : IsMapEvaluation generatorImages reduction1570.relations [0,40,69] reduction1570.output := by lin_cert using reduction1570.terms
def image1571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1571 : InImage map_13_110 image1571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1571 : Bundle := named_bundle% "RealMapCertificates/relations/basis1571.json"
theorem reductionProof1571 : EqualModuloRelations reduction1571.relations reduction1571.input reduction1571.output := by lin_cert using reduction1571.terms
theorem substitutionProof1571 : IsMapEvaluation generatorImages reduction1571.relations [0,0,0,209] reduction1571.output := by lin_cert using reduction1571.terms
def map_13_111 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1621 : InImage map_13_111 image1621 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1621 : Bundle := named_bundle% "RealMapCertificates/relations/basis1621.json"
theorem reductionProof1621 : EqualModuloRelations reduction1621.relations reduction1621.input reduction1621.output := by lin_cert using reduction1621.terms
theorem substitutionProof1621 : IsMapEvaluation generatorImages reduction1621.relations [0,3,188] reduction1621.output := by lin_cert using reduction1621.terms
def map_13_112 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1650 : InImage map_13_112 image1650 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1650 : Bundle := named_bundle% "RealMapCertificates/relations/basis1650.json"
theorem reductionProof1650 : EqualModuloRelations reduction1650.relations reduction1650.input reduction1650.output := by lin_cert using reduction1650.terms
theorem substitutionProof1650 : IsMapEvaluation generatorImages reduction1650.relations [3,195] reduction1650.output := by lin_cert using reduction1650.terms
def image1651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1651 : InImage map_13_112 image1651 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1651 : Bundle := named_bundle% "RealMapCertificates/relations/basis1651.json"
theorem reductionProof1651 : EqualModuloRelations reduction1651.relations reduction1651.input reduction1651.output := by lin_cert using reduction1651.terms
theorem substitutionProof1651 : IsMapEvaluation generatorImages reduction1651.relations [2,212] reduction1651.output := by lin_cert using reduction1651.terms
def image1652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1652 : InImage map_13_112 image1652 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1652 : Bundle := named_bundle% "RealMapCertificates/relations/basis1652.json"
theorem reductionProof1652 : EqualModuloRelations reduction1652.relations reduction1652.input reduction1652.output := by lin_cert using reduction1652.terms
theorem substitutionProof1652 : IsMapEvaluation generatorImages reduction1652.relations [0,0,3,189] reduction1652.output := by lin_cert using reduction1652.terms
def map_13_113 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1688 : InImage map_13_113 image1688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1688 : Bundle := named_bundle% "RealMapCertificates/relations/basis1688.json"
theorem reductionProof1688 : EqualModuloRelations reduction1688.relations reduction1688.input reduction1688.output := by lin_cert using reduction1688.terms
theorem substitutionProof1688 : IsMapEvaluation generatorImages reduction1688.relations [234] reduction1688.output := by lin_cert using reduction1688.terms
def image1689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1689 : InImage map_13_113 image1689 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1689 : Bundle := named_bundle% "RealMapCertificates/relations/basis1689.json"
theorem reductionProof1689 : EqualModuloRelations reduction1689.relations reduction1689.input reduction1689.output := by lin_cert using reduction1689.terms
theorem substitutionProof1689 : IsMapEvaluation generatorImages reduction1689.relations [0,8,17,69] reduction1689.output := by lin_cert using reduction1689.terms
def image1690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1690 : InImage map_13_113 image1690 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1690 : Bundle := named_bundle% "RealMapCertificates/relations/basis1690.json"
theorem reductionProof1690 : EqualModuloRelations reduction1690.relations reduction1690.input reduction1690.output := by lin_cert using reduction1690.terms
theorem substitutionProof1690 : IsMapEvaluation generatorImages reduction1690.relations [0,0,0,221] reduction1690.output := by lin_cert using reduction1690.terms
def map_13_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1729 : InImage map_13_114 image1729 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1729 : Bundle := named_bundle% "RealMapCertificates/relations/basis1729.json"
theorem reductionProof1729 : EqualModuloRelations reduction1729.relations reduction1729.input reduction1729.output := by lin_cert using reduction1729.terms
theorem substitutionProof1729 : IsMapEvaluation generatorImages reduction1729.relations [0,0,43,67] reduction1729.output := by lin_cert using reduction1729.terms
def map_13_115 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1755 : InImage map_13_115 image1755 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1755 : Bundle := named_bundle% "RealMapCertificates/relations/basis1755.json"
theorem reductionProof1755 : EqualModuloRelations reduction1755.relations reduction1755.input reduction1755.output := by lin_cert using reduction1755.terms
theorem substitutionProof1755 : IsMapEvaluation generatorImages reduction1755.relations [13,13,76] reduction1755.output := by lin_cert using reduction1755.terms
def image1756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1756 : InImage map_13_115 image1756 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1756 : Bundle := named_bundle% "RealMapCertificates/relations/basis1756.json"
theorem reductionProof1756 : EqualModuloRelations reduction1756.relations reduction1756.input reduction1756.output := by lin_cert using reduction1756.terms
theorem substitutionProof1756 : IsMapEvaluation generatorImages reduction1756.relations [8,19,69] reduction1756.output := by lin_cert using reduction1756.terms
def map_13_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1792 : InImage map_13_116 image1792 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1792 : Bundle := named_bundle% "RealMapCertificates/relations/basis1792.json"
theorem reductionProof1792 : EqualModuloRelations reduction1792.relations reduction1792.input reduction1792.output := by lin_cert using reduction1792.terms
theorem substitutionProof1792 : IsMapEvaluation generatorImages reduction1792.relations [0,8,20,69] reduction1792.output := by lin_cert using reduction1792.terms
def map_13_117 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1838 : InImage map_13_117 image1838 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1838 : Bundle := named_bundle% "RealMapCertificates/relations/basis1838.json"
theorem reductionProof1838 : EqualModuloRelations reduction1838.relations reduction1838.input reduction1838.output := by lin_cert using reduction1838.terms
theorem substitutionProof1838 : IsMapEvaluation generatorImages reduction1838.relations [0,250] reduction1838.output := by lin_cert using reduction1838.terms
def image1839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1839 : InImage map_13_117 image1839 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1839 : Bundle := named_bundle% "RealMapCertificates/relations/basis1839.json"
theorem reductionProof1839 : EqualModuloRelations reduction1839.relations reduction1839.input reduction1839.output := by lin_cert using reduction1839.terms
theorem substitutionProof1839 : IsMapEvaluation generatorImages reduction1839.relations [0,0,0,0,235] reduction1839.output := by lin_cert using reduction1839.terms
def map_13_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1870 : InImage map_13_118 image1870 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1870 : Bundle := named_bundle% "RealMapCertificates/relations/basis1870.json"
theorem reductionProof1870 : EqualModuloRelations reduction1870.relations reduction1870.input reduction1870.output := by lin_cert using reduction1870.terms
theorem substitutionProof1870 : IsMapEvaluation generatorImages reduction1870.relations [3,3,188] reduction1870.output := by lin_cert using reduction1870.terms
def image1871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1871 : InImage map_13_118 image1871 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1871 : Bundle := named_bundle% "RealMapCertificates/relations/basis1871.json"
theorem reductionProof1871 : EqualModuloRelations reduction1871.relations reduction1871.input reduction1871.output := by lin_cert using reduction1871.terms
theorem substitutionProof1871 : IsMapEvaluation generatorImages reduction1871.relations [1,250] reduction1871.output := by lin_cert using reduction1871.terms
def map_13_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1906 : InImage map_13_119 image1906 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1906 : Bundle := named_bundle% "RealMapCertificates/relations/basis1906.json"
theorem reductionProof1906 : EqualModuloRelations reduction1906.relations reduction1906.input reduction1906.output := by lin_cert using reduction1906.terms
theorem substitutionProof1906 : IsMapEvaluation generatorImages reduction1906.relations [0,7,188] reduction1906.output := by lin_cert using reduction1906.terms
def map_13_120 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1956 : InImage map_13_120 image1956 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1956 : Bundle := named_bundle% "RealMapCertificates/relations/basis1956.json"
theorem reductionProof1956 : EqualModuloRelations reduction1956.relations reduction1956.input reduction1956.output := by lin_cert using reduction1956.terms
theorem substitutionProof1956 : IsMapEvaluation generatorImages reduction1956.relations [268] reduction1956.output := by lin_cert using reduction1956.terms
def map_13_121 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1994 : InImage map_13_121 image1994 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1994 : Bundle := named_bundle% "RealMapCertificates/relations/basis1994.json"
theorem reductionProof1994 : EqualModuloRelations reduction1994.relations reduction1994.input reduction1994.output := by lin_cert using reduction1994.terms
theorem substitutionProof1994 : IsMapEvaluation generatorImages reduction1994.relations [1,261] reduction1994.output := by lin_cert using reduction1994.terms
def map_13_122 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2030 : InImage map_13_122 image2030 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2030 : Bundle := named_bundle% "RealMapCertificates/relations/basis2030.json"
theorem reductionProof2030 : EqualModuloRelations reduction2030.relations reduction2030.input reduction2030.output := by lin_cert using reduction2030.terms
theorem substitutionProof2030 : IsMapEvaluation generatorImages reduction2030.relations [280] reduction2030.output := by lin_cert using reduction2030.terms
def map_13_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2078 : InImage map_13_123 image2078 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2078 : Bundle := named_bundle% "RealMapCertificates/relations/basis2078.json"
theorem reductionProof2078 : EqualModuloRelations reduction2078.relations reduction2078.input reduction2078.output := by lin_cert using reduction2078.terms
theorem substitutionProof2078 : IsMapEvaluation generatorImages reduction2078.relations [287] reduction2078.output := by lin_cert using reduction2078.terms
def image2079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2079 : InImage map_13_123 image2079 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2079 : Bundle := named_bundle% "RealMapCertificates/relations/basis2079.json"
theorem reductionProof2079 : EqualModuloRelations reduction2079.relations reduction2079.input reduction2079.output := by lin_cert using reduction2079.terms
theorem substitutionProof2079 : IsMapEvaluation generatorImages reduction2079.relations [1,275] reduction2079.output := by lin_cert using reduction2079.terms
end RealMapCertificates
