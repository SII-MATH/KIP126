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
  | 24 => []
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 82 => []
  | 107 => []
  | 174 => []
  | 190 => []
  | 213 => []
  | 250 => []
  | 251 => []
  | 270 => []
  | 275 => []
  | 294 => []
  | 307 => []
  | 308 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 319 => []
  | 324 => []
  | 329 => []
  | 333 => []
  | 335 => []
  | 336 => []
  | 338 => []
  | 351 => []
  | 363 => []
  | 365 => []
  | 366 => []
  | 367 => []
  | 371 => []
  | 373 => []
  | 375 => []
  | 386 => []
  | 389 => []
  | 391 => []
  | 407 => []
  | 414 => []
  | 415 => []
  | 417 => []
  | 418 => []
  | 425 => []
  | 426 => []
  | 428 => []
  | 458 => []
  | 459 => []
  | 460 => []
  | 474 => []
  | 475 => []
  | 477 => []
  | 483 => []
  | 484 => []
  | 485 => []
  | 486 => []
  | 496 => []
  | 497 => []
  | 502 => []
  | 511 => []
  | 521 => []
  | 532 => []
  | 533 => []
  | 534 => []
  | 540 => []
  | 543 => []
  | 546 => []
  | 562 => []
  | 569 => []
  | 575 => []
  | 589 => []
  | _ => []
def map_13_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2117 : InImage map_13_124 image2117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2117 : Bundle := named_bundle% "RealMapCertificates/relations/basis2117.json"
theorem reductionProof2117 : EqualModuloRelations reduction2117.relations reduction2117.input reduction2117.output := by lin_cert using reduction2117.terms
theorem substitutionProof2117 : IsMapEvaluation generatorImages reduction2117.relations [0,0,0,0,270] reduction2117.output := by lin_cert using reduction2117.terms
def map_13_125 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2156 : InImage map_13_125 image2156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2156 : Bundle := named_bundle% "RealMapCertificates/relations/basis2156.json"
theorem reductionProof2156 : EqualModuloRelations reduction2156.relations reduction2156.input reduction2156.output := by lin_cert using reduction2156.terms
theorem substitutionProof2156 : IsMapEvaluation generatorImages reduction2156.relations [294] reduction2156.output := by lin_cert using reduction2156.terms
def image2157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2157 : InImage map_13_125 image2157 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2157 : Bundle := named_bundle% "RealMapCertificates/relations/basis2157.json"
theorem reductionProof2157 : EqualModuloRelations reduction2157.relations reduction2157.input reduction2157.output := by lin_cert using reduction2157.terms
theorem substitutionProof2157 : IsMapEvaluation generatorImages reduction2157.relations [2,275] reduction2157.output := by lin_cert using reduction2157.terms
def map_13_126 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2213 : InImage map_13_126 image2213 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2213 : Bundle := named_bundle% "RealMapCertificates/relations/basis2213.json"
theorem reductionProof2213 : EqualModuloRelations reduction2213.relations reduction2213.input reduction2213.output := by lin_cert using reduction2213.terms
theorem substitutionProof2213 : IsMapEvaluation generatorImages reduction2213.relations [308] reduction2213.output := by lin_cert using reduction2213.terms
def image2214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2214 : InImage map_13_126 image2214 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2214 : Bundle := named_bundle% "RealMapCertificates/relations/basis2214.json"
theorem reductionProof2214 : EqualModuloRelations reduction2214.relations reduction2214.input reduction2214.output := by lin_cert using reduction2214.terms
theorem substitutionProof2214 : IsMapEvaluation generatorImages reduction2214.relations [307] reduction2214.output := by lin_cert using reduction2214.terms
def map_13_128 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2300 : InImage map_13_128 image2300 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2300 : Bundle := named_bundle% "RealMapCertificates/relations/basis2300.json"
theorem reductionProof2300 : EqualModuloRelations reduction2300.relations reduction2300.input reduction2300.output := by lin_cert using reduction2300.terms
theorem substitutionProof2300 : IsMapEvaluation generatorImages reduction2300.relations [319] reduction2300.output := by lin_cert using reduction2300.terms
def image2301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2301 : InImage map_13_128 image2301 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2301 : Bundle := named_bundle% "RealMapCertificates/relations/basis2301.json"
theorem reductionProof2301 : EqualModuloRelations reduction2301.relations reduction2301.input reduction2301.output := by lin_cert using reduction2301.terms
theorem substitutionProof2301 : IsMapEvaluation generatorImages reduction2301.relations [67,68] reduction2301.output := by lin_cert using reduction2301.terms
def map_13_129 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2366 : InImage map_13_129 image2366 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2366 : Bundle := named_bundle% "RealMapCertificates/relations/basis2366.json"
theorem reductionProof2366 : EqualModuloRelations reduction2366.relations reduction2366.input reduction2366.output := by lin_cert using reduction2366.terms
theorem substitutionProof2366 : IsMapEvaluation generatorImages reduction2366.relations [329] reduction2366.output := by lin_cert using reduction2366.terms
def image2367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2367 : InImage map_13_129 image2367 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2367 : Bundle := named_bundle% "RealMapCertificates/relations/basis2367.json"
theorem reductionProof2367 : EqualModuloRelations reduction2367.relations reduction2367.input reduction2367.output := by lin_cert using reduction2367.terms
theorem substitutionProof2367 : IsMapEvaluation generatorImages reduction2367.relations [0,68,68] reduction2367.output := by lin_cert using reduction2367.terms
def image2368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2368 : InImage map_13_129 image2368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2368 : Bundle := named_bundle% "RealMapCertificates/relations/basis2368.json"
theorem reductionProof2368 : EqualModuloRelations reduction2368.relations reduction2368.input reduction2368.output := by lin_cert using reduction2368.terms
theorem substitutionProof2368 : IsMapEvaluation generatorImages reduction2368.relations [0,0,64,69] reduction2368.output := by lin_cert using reduction2368.terms
def map_13_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2419 : InImage map_13_130 image2419 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2419 : Bundle := named_bundle% "RealMapCertificates/relations/basis2419.json"
theorem reductionProof2419 : EqualModuloRelations reduction2419.relations reduction2419.input reduction2419.output := by lin_cert using reduction2419.terms
theorem substitutionProof2419 : IsMapEvaluation generatorImages reduction2419.relations [0,0,0,312] reduction2419.output := by lin_cert using reduction2419.terms
def image2420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2420 : InImage map_13_130 image2420 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2420 : Bundle := named_bundle% "RealMapCertificates/relations/basis2420.json"
theorem reductionProof2420 : EqualModuloRelations reduction2420.relations reduction2420.input reduction2420.output := by lin_cert using reduction2420.terms
theorem substitutionProof2420 : IsMapEvaluation generatorImages reduction2420.relations [0,0,0,311] reduction2420.output := by lin_cert using reduction2420.terms
def map_13_131 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2477 : InImage map_13_131 image2477 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2477 : Bundle := named_bundle% "RealMapCertificates/relations/basis2477.json"
theorem reductionProof2477 : EqualModuloRelations reduction2477.relations reduction2477.input reduction2477.output := by lin_cert using reduction2477.terms
theorem substitutionProof2477 : IsMapEvaluation generatorImages reduction2477.relations [67,75] reduction2477.output := by lin_cert using reduction2477.terms
def image2478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2478 : InImage map_13_131 image2478 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2478 : Bundle := named_bundle% "RealMapCertificates/relations/basis2478.json"
theorem reductionProof2478 : EqualModuloRelations reduction2478.relations reduction2478.input reduction2478.output := by lin_cert using reduction2478.terms
theorem substitutionProof2478 : IsMapEvaluation generatorImages reduction2478.relations [1,1,64,69] reduction2478.output := by lin_cert using reduction2478.terms
def image2479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2479 : InImage map_13_131 image2479 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2479 : Bundle := named_bundle% "RealMapCertificates/relations/basis2479.json"
theorem reductionProof2479 : EqualModuloRelations reduction2479.relations reduction2479.input reduction2479.output := by lin_cert using reduction2479.terms
theorem substitutionProof2479 : IsMapEvaluation generatorImages reduction2479.relations [0,335] reduction2479.output := by lin_cert using reduction2479.terms
def image2480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2480 : InImage map_13_131 image2480 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2480 : Bundle := named_bundle% "RealMapCertificates/relations/basis2480.json"
theorem reductionProof2480 : EqualModuloRelations reduction2480.relations reduction2480.input reduction2480.output := by lin_cert using reduction2480.terms
theorem substitutionProof2480 : IsMapEvaluation generatorImages reduction2480.relations [0,0,0,0,314] reduction2480.output := by lin_cert using reduction2480.terms
def map_13_132 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2558 : InImage map_13_132 image2558 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2558 : Bundle := named_bundle% "RealMapCertificates/relations/basis2558.json"
theorem reductionProof2558 : EqualModuloRelations reduction2558.relations reduction2558.input reduction2558.output := by lin_cert using reduction2558.terms
theorem substitutionProof2558 : IsMapEvaluation generatorImages reduction2558.relations [13,213] reduction2558.output := by lin_cert using reduction2558.terms
def image2559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2559 : InImage map_13_132 image2559 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2559 : Bundle := named_bundle% "RealMapCertificates/relations/basis2559.json"
theorem reductionProof2559 : EqualModuloRelations reduction2559.relations reduction2559.input reduction2559.output := by lin_cert using reduction2559.terms
theorem substitutionProof2559 : IsMapEvaluation generatorImages reduction2559.relations [7,250] reduction2559.output := by lin_cert using reduction2559.terms
def image2560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2560 : InImage map_13_132 image2560 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2560 : Bundle := named_bundle% "RealMapCertificates/relations/basis2560.json"
theorem reductionProof2560 : EqualModuloRelations reduction2560.relations reduction2560.input reduction2560.output := by lin_cert using reduction2560.terms
theorem substitutionProof2560 : IsMapEvaluation generatorImages reduction2560.relations [1,335] reduction2560.output := by lin_cert using reduction2560.terms
def image2561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2561 : InImage map_13_132 image2561 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2561 : Bundle := named_bundle% "RealMapCertificates/relations/basis2561.json"
theorem reductionProof2561 : EqualModuloRelations reduction2561.relations reduction2561.input reduction2561.output := by lin_cert using reduction2561.terms
theorem substitutionProof2561 : IsMapEvaluation generatorImages reduction2561.relations [0,0,336] reduction2561.output := by lin_cert using reduction2561.terms
def image2562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2562 : InImage map_13_132 image2562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2562 : Bundle := named_bundle% "RealMapCertificates/relations/basis2562.json"
theorem reductionProof2562 : EqualModuloRelations reduction2562.relations reduction2562.input reduction2562.output := by lin_cert using reduction2562.terms
theorem substitutionProof2562 : IsMapEvaluation generatorImages reduction2562.relations [0,0,69,72] reduction2562.output := by lin_cert using reduction2562.terms
def map_13_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2618 : InImage map_13_133 image2618 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2618 : Bundle := named_bundle% "RealMapCertificates/relations/basis2618.json"
theorem reductionProof2618 : EqualModuloRelations reduction2618.relations reduction2618.input reduction2618.output := by lin_cert using reduction2618.terms
theorem substitutionProof2618 : IsMapEvaluation generatorImages reduction2618.relations [0,363] reduction2618.output := by lin_cert using reduction2618.terms
def map_13_134 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2681 : InImage map_13_134 image2681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2681 : Bundle := named_bundle% "RealMapCertificates/relations/basis2681.json"
theorem reductionProof2681 : EqualModuloRelations reduction2681.relations reduction2681.input reduction2681.output := by lin_cert using reduction2681.terms
theorem substitutionProof2681 : IsMapEvaluation generatorImages reduction2681.relations [0,0,365] reduction2681.output := by lin_cert using reduction2681.terms
def map_13_135 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2772 : InImage map_13_135 image2772 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2772 : Bundle := named_bundle% "RealMapCertificates/relations/basis2772.json"
theorem reductionProof2772 : EqualModuloRelations reduction2772.relations reduction2772.input reduction2772.output := by lin_cert using reduction2772.terms
theorem substitutionProof2772 : IsMapEvaluation generatorImages reduction2772.relations [407] reduction2772.output := by lin_cert using reduction2772.terms
def image2773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2773 : InImage map_13_135 image2773 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2773 : Bundle := named_bundle% "RealMapCertificates/relations/basis2773.json"
theorem reductionProof2773 : EqualModuloRelations reduction2773.relations reduction2773.input reduction2773.output := by lin_cert using reduction2773.terms
theorem substitutionProof2773 : IsMapEvaluation generatorImages reduction2773.relations [1,1,351] reduction2773.output := by lin_cert using reduction2773.terms
def image2774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2774 : InImage map_13_135 image2774 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2774 : Bundle := named_bundle% "RealMapCertificates/relations/basis2774.json"
theorem reductionProof2774 : EqualModuloRelations reduction2774.relations reduction2774.input reduction2774.output := by lin_cert using reduction2774.terms
theorem substitutionProof2774 : IsMapEvaluation generatorImages reduction2774.relations [0,0,69,79] reduction2774.output := by lin_cert using reduction2774.terms
def map_13_136 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2842 : InImage map_13_136 image2842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2842 : Bundle := named_bundle% "RealMapCertificates/relations/basis2842.json"
theorem reductionProof2842 : EqualModuloRelations reduction2842.relations reduction2842.input reduction2842.output := by lin_cert using reduction2842.terms
theorem substitutionProof2842 : IsMapEvaluation generatorImages reduction2842.relations [418] reduction2842.output := by lin_cert using reduction2842.terms
def image2843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2843 : InImage map_13_136 image2843 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2843 : Bundle := named_bundle% "RealMapCertificates/relations/basis2843.json"
theorem reductionProof2843 : EqualModuloRelations reduction2843.relations reduction2843.input reduction2843.output := by lin_cert using reduction2843.terms
theorem substitutionProof2843 : IsMapEvaluation generatorImages reduction2843.relations [417] reduction2843.output := by lin_cert using reduction2843.terms
def image2844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2844 : InImage map_13_136 image2844 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2844 : Bundle := named_bundle% "RealMapCertificates/relations/basis2844.json"
theorem reductionProof2844 : EqualModuloRelations reduction2844.relations reduction2844.input reduction2844.output := by lin_cert using reduction2844.terms
theorem substitutionProof2844 : IsMapEvaluation generatorImages reduction2844.relations [0,0,386] reduction2844.output := by lin_cert using reduction2844.terms
def map_13_137 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2914 : InImage map_13_137 image2914 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2914 : Bundle := named_bundle% "RealMapCertificates/relations/basis2914.json"
theorem reductionProof2914 : EqualModuloRelations reduction2914.relations reduction2914.input reduction2914.output := by lin_cert using reduction2914.terms
theorem substitutionProof2914 : IsMapEvaluation generatorImages reduction2914.relations [76,82] reduction2914.output := by lin_cert using reduction2914.terms
def image2915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2915 : InImage map_13_137 image2915 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2915 : Bundle := named_bundle% "RealMapCertificates/relations/basis2915.json"
theorem reductionProof2915 : EqualModuloRelations reduction2915.relations reduction2915.input reduction2915.output := by lin_cert using reduction2915.terms
theorem substitutionProof2915 : IsMapEvaluation generatorImages reduction2915.relations [9,251] reduction2915.output := by lin_cert using reduction2915.terms
def image2916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2916 : InImage map_13_137 image2916 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2916 : Bundle := named_bundle% "RealMapCertificates/relations/basis2916.json"
theorem reductionProof2916 : EqualModuloRelations reduction2916.relations reduction2916.input reduction2916.output := by lin_cert using reduction2916.terms
theorem substitutionProof2916 : IsMapEvaluation generatorImages reduction2916.relations [7,275] reduction2916.output := by lin_cert using reduction2916.terms
def image2917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2917 : InImage map_13_137 image2917 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2917 : Bundle := named_bundle% "RealMapCertificates/relations/basis2917.json"
theorem reductionProof2917 : EqualModuloRelations reduction2917.relations reduction2917.input reduction2917.output := by lin_cert using reduction2917.terms
theorem substitutionProof2917 : IsMapEvaluation generatorImages reduction2917.relations [0,0,0,0,0,367] reduction2917.output := by lin_cert using reduction2917.terms
def map_13_138 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3008 : InImage map_13_138 image3008 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3008 : Bundle := named_bundle% "RealMapCertificates/relations/basis3008.json"
theorem reductionProof3008 : EqualModuloRelations reduction3008.relations reduction3008.input reduction3008.output := by lin_cert using reduction3008.terms
theorem substitutionProof3008 : IsMapEvaluation generatorImages reduction3008.relations [24,190] reduction3008.output := by lin_cert using reduction3008.terms
def image3009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3009 : InImage map_13_138 image3009 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3009 : Bundle := named_bundle% "RealMapCertificates/relations/basis3009.json"
theorem reductionProof3009 : EqualModuloRelations reduction3009.relations reduction3009.input reduction3009.output := by lin_cert using reduction3009.terms
theorem substitutionProof3009 : IsMapEvaluation generatorImages reduction3009.relations [3,335] reduction3009.output := by lin_cert using reduction3009.terms
def image3010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3010 : InImage map_13_138 image3010 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3010 : Bundle := named_bundle% "RealMapCertificates/relations/basis3010.json"
theorem reductionProof3010 : EqualModuloRelations reduction3010.relations reduction3010.input reduction3010.output := by lin_cert using reduction3010.terms
theorem substitutionProof3010 : IsMapEvaluation generatorImages reduction3010.relations [0,425] reduction3010.output := by lin_cert using reduction3010.terms
def image3011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3011 : InImage map_13_138 image3011 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3011 : Bundle := named_bundle% "RealMapCertificates/relations/basis3011.json"
theorem reductionProof3011 : EqualModuloRelations reduction3011.relations reduction3011.input reduction3011.output := by lin_cert using reduction3011.terms
theorem substitutionProof3011 : IsMapEvaluation generatorImages reduction3011.relations [0,0,0,0,391] reduction3011.output := by lin_cert using reduction3011.terms
def image3012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3012 : InImage map_13_138 image3012 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3012 : Bundle := named_bundle% "RealMapCertificates/relations/basis3012.json"
theorem reductionProof3012 : EqualModuloRelations reduction3012.relations reduction3012.input reduction3012.output := by lin_cert using reduction3012.terms
theorem substitutionProof3012 : IsMapEvaluation generatorImages reduction3012.relations [0,0,0,0,0,375] reduction3012.output := by lin_cert using reduction3012.terms
def map_13_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3082 : InImage map_13_139 image3082 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3082 : Bundle := named_bundle% "RealMapCertificates/relations/basis3082.json"
theorem reductionProof3082 : EqualModuloRelations reduction3082.relations reduction3082.input reduction3082.output := by lin_cert using reduction3082.terms
theorem substitutionProof3082 : IsMapEvaluation generatorImages reduction3082.relations [1,426] reduction3082.output := by lin_cert using reduction3082.terms
def image3083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3083 : InImage map_13_139 image3083 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3083 : Bundle := named_bundle% "RealMapCertificates/relations/basis3083.json"
theorem reductionProof3083 : EqualModuloRelations reduction3083.relations reduction3083.input reduction3083.output := by lin_cert using reduction3083.terms
theorem substitutionProof3083 : IsMapEvaluation generatorImages reduction3083.relations [0,3,336] reduction3083.output := by lin_cert using reduction3083.terms
def image3084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3084 : InImage map_13_139 image3084 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3084 : Bundle := named_bundle% "RealMapCertificates/relations/basis3084.json"
theorem reductionProof3084 : EqualModuloRelations reduction3084.relations reduction3084.input reduction3084.output := by lin_cert using reduction3084.terms
theorem substitutionProof3084 : IsMapEvaluation generatorImages reduction3084.relations [0,0,0,0,0,0,0,0,0,0,0,69,69] reduction3084.output := by lin_cert using reduction3084.terms
def map_13_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3159 : InImage map_13_140 image3159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3159 : Bundle := named_bundle% "RealMapCertificates/relations/basis3159.json"
theorem reductionProof3159 : EqualModuloRelations reduction3159.relations reduction3159.input reduction3159.output := by lin_cert using reduction3159.terms
theorem substitutionProof3159 : IsMapEvaluation generatorImages reduction3159.relations [458] reduction3159.output := by lin_cert using reduction3159.terms
def image3160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3160 : InImage map_13_140 image3160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3160 : Bundle := named_bundle% "RealMapCertificates/relations/basis3160.json"
theorem reductionProof3160 : EqualModuloRelations reduction3160.relations reduction3160.input reduction3160.output := by lin_cert using reduction3160.terms
theorem substitutionProof3160 : IsMapEvaluation generatorImages reduction3160.relations [13,251] reduction3160.output := by lin_cert using reduction3160.terms
def image3161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3161 : InImage map_13_140 image3161 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3161 : Bundle := named_bundle% "RealMapCertificates/relations/basis3161.json"
theorem reductionProof3161 : EqualModuloRelations reduction3161.relations reduction3161.input reduction3161.output := by lin_cert using reduction3161.terms
theorem substitutionProof3161 : IsMapEvaluation generatorImages reduction3161.relations [3,363] reduction3161.output := by lin_cert using reduction3161.terms
def image3162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3162 : InImage map_13_140 image3162 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3162 : Bundle := named_bundle% "RealMapCertificates/relations/basis3162.json"
theorem reductionProof3162 : EqualModuloRelations reduction3162.relations reduction3162.input reduction3162.output := by lin_cert using reduction3162.terms
theorem substitutionProof3162 : IsMapEvaluation generatorImages reduction3162.relations [0,0,0,428] reduction3162.output := by lin_cert using reduction3162.terms
def image3163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3163 : InImage map_13_140 image3163 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3163 : Bundle := named_bundle% "RealMapCertificates/relations/basis3163.json"
theorem reductionProof3163 : EqualModuloRelations reduction3163.relations reduction3163.input reduction3163.output := by lin_cert using reduction3163.terms
theorem substitutionProof3163 : IsMapEvaluation generatorImages reduction3163.relations [0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3163.output := by lin_cert using reduction3163.terms
def map_13_141 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3262 : InImage map_13_141 image3262 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3262 : Bundle := named_bundle% "RealMapCertificates/relations/basis3262.json"
theorem reductionProof3262 : EqualModuloRelations reduction3262.relations reduction3262.input reduction3262.output := by lin_cert using reduction3262.terms
theorem substitutionProof3262 : IsMapEvaluation generatorImages reduction3262.relations [475] reduction3262.output := by lin_cert using reduction3262.terms
def image3263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3263 : InImage map_13_141 image3263 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3263 : Bundle := named_bundle% "RealMapCertificates/relations/basis3263.json"
theorem reductionProof3263 : EqualModuloRelations reduction3263.relations reduction3263.input reduction3263.output := by lin_cert using reduction3263.terms
theorem substitutionProof3263 : IsMapEvaluation generatorImages reduction3263.relations [474] reduction3263.output := by lin_cert using reduction3263.terms
def image3264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3264 : InImage map_13_141 image3264 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3264 : Bundle := named_bundle% "RealMapCertificates/relations/basis3264.json"
theorem reductionProof3264 : EqualModuloRelations reduction3264.relations reduction3264.input reduction3264.output := by lin_cert using reduction3264.terms
theorem substitutionProof3264 : IsMapEvaluation generatorImages reduction3264.relations [0,460] reduction3264.output := by lin_cert using reduction3264.terms
def image3265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3265 : InImage map_13_141 image3265 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3265 : Bundle := named_bundle% "RealMapCertificates/relations/basis3265.json"
theorem reductionProof3265 : EqualModuloRelations reduction3265.relations reduction3265.input reduction3265.output := by lin_cert using reduction3265.terms
theorem substitutionProof3265 : IsMapEvaluation generatorImages reduction3265.relations [0,3,365] reduction3265.output := by lin_cert using reduction3265.terms
def map_13_142 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3333 : InImage map_13_142 image3333 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3333 : Bundle := named_bundle% "RealMapCertificates/relations/basis3333.json"
theorem reductionProof3333 : EqualModuloRelations reduction3333.relations reduction3333.input reduction3333.output := by lin_cert using reduction3333.terms
theorem substitutionProof3333 : IsMapEvaluation generatorImages reduction3333.relations [483] reduction3333.output := by lin_cert using reduction3333.terms
def image3334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3334 : InImage map_13_142 image3334 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3334 : Bundle := named_bundle% "RealMapCertificates/relations/basis3334.json"
theorem reductionProof3334 : EqualModuloRelations reduction3334.relations reduction3334.input reduction3334.output := by lin_cert using reduction3334.terms
theorem substitutionProof3334 : IsMapEvaluation generatorImages reduction3334.relations [1,459] reduction3334.output := by lin_cert using reduction3334.terms
def map_13_143 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3412 : InImage map_13_143 image3412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3412 : Bundle := named_bundle% "RealMapCertificates/relations/basis3412.json"
theorem reductionProof3412 : EqualModuloRelations reduction3412.relations reduction3412.input reduction3412.output := by lin_cert using reduction3412.terms
theorem substitutionProof3412 : IsMapEvaluation generatorImages reduction3412.relations [496] reduction3412.output := by lin_cert using reduction3412.terms
def image3413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3413 : InImage map_13_143 image3413 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3413 : Bundle := named_bundle% "RealMapCertificates/relations/basis3413.json"
theorem reductionProof3413 : EqualModuloRelations reduction3413.relations reduction3413.input reduction3413.output := by lin_cert using reduction3413.terms
theorem substitutionProof3413 : IsMapEvaluation generatorImages reduction3413.relations [76,107] reduction3413.output := by lin_cert using reduction3413.terms
def image3414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3414 : InImage map_13_143 image3414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3414 : Bundle := named_bundle% "RealMapCertificates/relations/basis3414.json"
theorem reductionProof3414 : EqualModuloRelations reduction3414.relations reduction3414.input reduction3414.output := by lin_cert using reduction3414.terms
theorem substitutionProof3414 : IsMapEvaluation generatorImages reduction3414.relations [0,484] reduction3414.output := by lin_cert using reduction3414.terms
def image3415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3415 : InImage map_13_143 image3415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3415 : Bundle := named_bundle% "RealMapCertificates/relations/basis3415.json"
theorem reductionProof3415 : EqualModuloRelations reduction3415.relations reduction3415.input reduction3415.output := by lin_cert using reduction3415.terms
theorem substitutionProof3415 : IsMapEvaluation generatorImages reduction3415.relations [0,3,386] reduction3415.output := by lin_cert using reduction3415.terms
def map_13_144 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3509 : InImage map_13_144 image3509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3509 : Bundle := named_bundle% "RealMapCertificates/relations/basis3509.json"
theorem reductionProof3509 : EqualModuloRelations reduction3509.relations reduction3509.input reduction3509.output := by lin_cert using reduction3509.terms
theorem substitutionProof3509 : IsMapEvaluation generatorImages reduction3509.relations [502] reduction3509.output := by lin_cert using reduction3509.terms
def image3510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3510 : InImage map_13_144 image3510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3510 : Bundle := named_bundle% "RealMapCertificates/relations/basis3510.json"
theorem reductionProof3510 : EqualModuloRelations reduction3510.relations reduction3510.input reduction3510.output := by lin_cert using reduction3510.terms
theorem substitutionProof3510 : IsMapEvaluation generatorImages reduction3510.relations [0,0,486] reduction3510.output := by lin_cert using reduction3510.terms
def image3511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3511 : InImage map_13_144 image3511 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3511 : Bundle := named_bundle% "RealMapCertificates/relations/basis3511.json"
theorem reductionProof3511 : EqualModuloRelations reduction3511.relations reduction3511.input reduction3511.output := by lin_cert using reduction3511.terms
theorem substitutionProof3511 : IsMapEvaluation generatorImages reduction3511.relations [0,0,485] reduction3511.output := by lin_cert using reduction3511.terms
def image3512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3512 : InImage map_13_144 image3512 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3512 : Bundle := named_bundle% "RealMapCertificates/relations/basis3512.json"
theorem reductionProof3512 : EqualModuloRelations reduction3512.relations reduction3512.input reduction3512.output := by lin_cert using reduction3512.terms
theorem substitutionProof3512 : IsMapEvaluation generatorImages reduction3512.relations [0,0,3,389] reduction3512.output := by lin_cert using reduction3512.terms
def map_13_145 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3577 : InImage map_13_145 image3577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3577 : Bundle := named_bundle% "RealMapCertificates/relations/basis3577.json"
theorem reductionProof3577 : EqualModuloRelations reduction3577.relations reduction3577.input reduction3577.output := by lin_cert using reduction3577.terms
theorem substitutionProof3577 : IsMapEvaluation generatorImages reduction3577.relations [8,314] reduction3577.output := by lin_cert using reduction3577.terms
def image3578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3578 : InImage map_13_145 image3578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3578 : Bundle := named_bundle% "RealMapCertificates/relations/basis3578.json"
theorem reductionProof3578 : EqualModuloRelations reduction3578.relations reduction3578.input reduction3578.output := by lin_cert using reduction3578.terms
theorem substitutionProof3578 : IsMapEvaluation generatorImages reduction3578.relations [3,425] reduction3578.output := by lin_cert using reduction3578.terms
def image3579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3579 : InImage map_13_145 image3579 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3579 : Bundle := named_bundle% "RealMapCertificates/relations/basis3579.json"
theorem reductionProof3579 : EqualModuloRelations reduction3579.relations reduction3579.input reduction3579.output := by lin_cert using reduction3579.terms
theorem substitutionProof3579 : IsMapEvaluation generatorImages reduction3579.relations [1,497] reduction3579.output := by lin_cert using reduction3579.terms
def image3580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3580 : InImage map_13_145 image3580 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3580 : Bundle := named_bundle% "RealMapCertificates/relations/basis3580.json"
theorem reductionProof3580 : EqualModuloRelations reduction3580.relations reduction3580.input reduction3580.output := by lin_cert using reduction3580.terms
theorem substitutionProof3580 : IsMapEvaluation generatorImages reduction3580.relations [0,0,7,311] reduction3580.output := by lin_cert using reduction3580.terms
def map_13_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3658 : InImage map_13_146 image3658 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3658 : Bundle := named_bundle% "RealMapCertificates/relations/basis3658.json"
theorem reductionProof3658 : EqualModuloRelations reduction3658.relations reduction3658.input reduction3658.output := by lin_cert using reduction3658.terms
theorem substitutionProof3658 : IsMapEvaluation generatorImages reduction3658.relations [7,335] reduction3658.output := by lin_cert using reduction3658.terms
def image3659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3659 : InImage map_13_146 image3659 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3659 : Bundle := named_bundle% "RealMapCertificates/relations/basis3659.json"
theorem reductionProof3659 : EqualModuloRelations reduction3659.relations reduction3659.input reduction3659.output := by lin_cert using reduction3659.terms
theorem substitutionProof3659 : IsMapEvaluation generatorImages reduction3659.relations [2,484] reduction3659.output := by lin_cert using reduction3659.terms
def image3660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3660 : InImage map_13_146 image3660 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3660 : Bundle := named_bundle% "RealMapCertificates/relations/basis3660.json"
theorem reductionProof3660 : EqualModuloRelations reduction3660.relations reduction3660.input reduction3660.output := by lin_cert using reduction3660.terms
theorem substitutionProof3660 : IsMapEvaluation generatorImages reduction3660.relations [1,1,486] reduction3660.output := by lin_cert using reduction3660.terms
def image3661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3661 : InImage map_13_146 image3661 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3661 : Bundle := named_bundle% "RealMapCertificates/relations/basis3661.json"
theorem reductionProof3661 : EqualModuloRelations reduction3661.relations reduction3661.input reduction3661.output := by lin_cert using reduction3661.terms
theorem substitutionProof3661 : IsMapEvaluation generatorImages reduction3661.relations [1,1,485] reduction3661.output := by lin_cert using reduction3661.terms
def image3662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3662 : InImage map_13_146 image3662 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3662 : Bundle := named_bundle% "RealMapCertificates/relations/basis3662.json"
theorem reductionProof3662 : EqualModuloRelations reduction3662.relations reduction3662.input reduction3662.output := by lin_cert using reduction3662.terms
theorem substitutionProof3662 : IsMapEvaluation generatorImages reduction3662.relations [0,0,0,7,314] reduction3662.output := by lin_cert using reduction3662.terms
def map_13_147 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3768 : InImage map_13_147 image3768 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3768 : Bundle := named_bundle% "RealMapCertificates/relations/basis3768.json"
theorem reductionProof3768 : EqualModuloRelations reduction3768.relations reduction3768.input reduction3768.output := by lin_cert using reduction3768.terms
theorem substitutionProof3768 : IsMapEvaluation generatorImages reduction3768.relations [533] reduction3768.output := by lin_cert using reduction3768.terms
def image3769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3769 : InImage map_13_147 image3769 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3769 : Bundle := named_bundle% "RealMapCertificates/relations/basis3769.json"
theorem reductionProof3769 : EqualModuloRelations reduction3769.relations reduction3769.input reduction3769.output := by lin_cert using reduction3769.terms
theorem substitutionProof3769 : IsMapEvaluation generatorImages reduction3769.relations [532] reduction3769.output := by lin_cert using reduction3769.terms
def image3770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3770 : InImage map_13_147 image3770 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3770 : Bundle := named_bundle% "RealMapCertificates/relations/basis3770.json"
theorem reductionProof3770 : EqualModuloRelations reduction3770.relations reduction3770.input reduction3770.output := by lin_cert using reduction3770.terms
theorem substitutionProof3770 : IsMapEvaluation generatorImages reduction3770.relations [8,333] reduction3770.output := by lin_cert using reduction3770.terms
def image3771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3771 : InImage map_13_147 image3771 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3771 : Bundle := named_bundle% "RealMapCertificates/relations/basis3771.json"
theorem reductionProof3771 : EqualModuloRelations reduction3771.relations reduction3771.input reduction3771.output := by lin_cert using reduction3771.terms
theorem substitutionProof3771 : IsMapEvaluation generatorImages reduction3771.relations [1,511] reduction3771.output := by lin_cert using reduction3771.terms
def image3772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3772 : InImage map_13_147 image3772 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3772 : Bundle := named_bundle% "RealMapCertificates/relations/basis3772.json"
theorem reductionProof3772 : EqualModuloRelations reduction3772.relations reduction3772.input reduction3772.output := by lin_cert using reduction3772.terms
theorem substitutionProof3772 : IsMapEvaluation generatorImages reduction3772.relations [0,2,486] reduction3772.output := by lin_cert using reduction3772.terms
def map_13_148 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3834 : InImage map_13_148 image3834 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3834 : Bundle := named_bundle% "RealMapCertificates/relations/basis3834.json"
theorem reductionProof3834 : EqualModuloRelations reduction3834.relations reduction3834.input reduction3834.output := by lin_cert using reduction3834.terms
theorem substitutionProof3834 : IsMapEvaluation generatorImages reduction3834.relations [540] reduction3834.output := by lin_cert using reduction3834.terms
def image3835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3835 : InImage map_13_148 image3835 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3835 : Bundle := named_bundle% "RealMapCertificates/relations/basis3835.json"
theorem reductionProof3835 : EqualModuloRelations reduction3835.relations reduction3835.input reduction3835.output := by lin_cert using reduction3835.terms
theorem substitutionProof3835 : IsMapEvaluation generatorImages reduction3835.relations [8,338] reduction3835.output := by lin_cert using reduction3835.terms
def image3836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3836 : InImage map_13_148 image3836 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3836 : Bundle := named_bundle% "RealMapCertificates/relations/basis3836.json"
theorem reductionProof3836 : EqualModuloRelations reduction3836.relations reduction3836.input reduction3836.output := by lin_cert using reduction3836.terms
theorem substitutionProof3836 : IsMapEvaluation generatorImages reduction3836.relations [0,534] reduction3836.output := by lin_cert using reduction3836.terms
def image3837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3837 : InImage map_13_148 image3837 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3837 : Bundle := named_bundle% "RealMapCertificates/relations/basis3837.json"
theorem reductionProof3837 : EqualModuloRelations reduction3837.relations reduction3837.input reduction3837.output := by lin_cert using reduction3837.terms
theorem substitutionProof3837 : IsMapEvaluation generatorImages reduction3837.relations [0,43,174] reduction3837.output := by lin_cert using reduction3837.terms
def image3838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3838 : InImage map_13_148 image3838 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3838 : Bundle := named_bundle% "RealMapCertificates/relations/basis3838.json"
theorem reductionProof3838 : EqualModuloRelations reduction3838.relations reduction3838.input reduction3838.output := by lin_cert using reduction3838.terms
theorem substitutionProof3838 : IsMapEvaluation generatorImages reduction3838.relations [0,7,351] reduction3838.output := by lin_cert using reduction3838.terms
def image3839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3839 : InImage map_13_148 image3839 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3839 : Bundle := named_bundle% "RealMapCertificates/relations/basis3839.json"
theorem reductionProof3839 : EqualModuloRelations reduction3839.relations reduction3839.input reduction3839.output := by lin_cert using reduction3839.terms
theorem substitutionProof3839 : IsMapEvaluation generatorImages reduction3839.relations [0,0,0,7,333] reduction3839.output := by lin_cert using reduction3839.terms
def map_13_149 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3926 : InImage map_13_149 image3926 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3926 : Bundle := named_bundle% "RealMapCertificates/relations/basis3926.json"
theorem reductionProof3926 : EqualModuloRelations reduction3926.relations reduction3926.input reduction3926.output := by lin_cert using reduction3926.terms
theorem substitutionProof3926 : IsMapEvaluation generatorImages reduction3926.relations [0,0,0,521] reduction3926.output := by lin_cert using reduction3926.terms
def map_13_150 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4025 : InImage map_13_150 image4025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4025 : Bundle := named_bundle% "RealMapCertificates/relations/basis4025.json"
theorem reductionProof4025 : EqualModuloRelations reduction4025.relations reduction4025.input reduction4025.output := by lin_cert using reduction4025.terms
theorem substitutionProof4025 : IsMapEvaluation generatorImages reduction4025.relations [8,366] reduction4025.output := by lin_cert using reduction4025.terms
def image4026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4026 : InImage map_13_150 image4026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4026 : Bundle := named_bundle% "RealMapCertificates/relations/basis4026.json"
theorem reductionProof4026 : EqualModuloRelations reduction4026.relations reduction4026.input reduction4026.output := by lin_cert using reduction4026.terms
theorem substitutionProof4026 : IsMapEvaluation generatorImages reduction4026.relations [3,484] reduction4026.output := by lin_cert using reduction4026.terms
def image4027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4027 : InImage map_13_150 image4027 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4027 : Bundle := named_bundle% "RealMapCertificates/relations/basis4027.json"
theorem reductionProof4027 : EqualModuloRelations reduction4027.relations reduction4027.input reduction4027.output := by lin_cert using reduction4027.terms
theorem substitutionProof4027 : IsMapEvaluation generatorImages reduction4027.relations [0,7,371] reduction4027.output := by lin_cert using reduction4027.terms
def image4028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4028 : InImage map_13_150 image4028 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4028 : Bundle := named_bundle% "RealMapCertificates/relations/basis4028.json"
theorem reductionProof4028 : EqualModuloRelations reduction4028.relations reduction4028.input reduction4028.output := by lin_cert using reduction4028.terms
theorem substitutionProof4028 : IsMapEvaluation generatorImages reduction4028.relations [0,0,543] reduction4028.output := by lin_cert using reduction4028.terms
def map_13_151 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4113 : InImage map_13_151 image4113 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4113 : Bundle := named_bundle% "RealMapCertificates/relations/basis4113.json"
theorem reductionProof4113 : EqualModuloRelations reduction4113.relations reduction4113.input reduction4113.output := by lin_cert using reduction4113.terms
theorem substitutionProof4113 : IsMapEvaluation generatorImages reduction4113.relations [8,373] reduction4113.output := by lin_cert using reduction4113.terms
def image4114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4114 : InImage map_13_151 image4114 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4114 : Bundle := named_bundle% "RealMapCertificates/relations/basis4114.json"
theorem reductionProof4114 : EqualModuloRelations reduction4114.relations reduction4114.input reduction4114.output := by lin_cert using reduction4114.terms
theorem substitutionProof4114 : IsMapEvaluation generatorImages reduction4114.relations [1,3,477] reduction4114.output := by lin_cert using reduction4114.terms
def image4115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4115 : InImage map_13_151 image4115 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4115 : Bundle := named_bundle% "RealMapCertificates/relations/basis4115.json"
theorem reductionProof4115 : EqualModuloRelations reduction4115.relations reduction4115.input reduction4115.output := by lin_cert using reduction4115.terms
theorem substitutionProof4115 : IsMapEvaluation generatorImages reduction4115.relations [0,8,367] reduction4115.output := by lin_cert using reduction4115.terms
def image4116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4116 : InImage map_13_151 image4116 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4116 : Bundle := named_bundle% "RealMapCertificates/relations/basis4116.json"
theorem reductionProof4116 : EqualModuloRelations reduction4116.relations reduction4116.input reduction4116.output := by lin_cert using reduction4116.terms
theorem substitutionProof4116 : IsMapEvaluation generatorImages reduction4116.relations [0,3,485] reduction4116.output := by lin_cert using reduction4116.terms
def map_13_152 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4204 : InImage map_13_152 image4204 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4204 : Bundle := named_bundle% "RealMapCertificates/relations/basis4204.json"
theorem reductionProof4204 : EqualModuloRelations reduction4204.relations reduction4204.input reduction4204.output := by lin_cert using reduction4204.terms
theorem substitutionProof4204 : IsMapEvaluation generatorImages reduction4204.relations [1,3,485] reduction4204.output := by lin_cert using reduction4204.terms
def image4205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4205 : InImage map_13_152 image4205 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4205 : Bundle := named_bundle% "RealMapCertificates/relations/basis4205.json"
theorem reductionProof4205 : EqualModuloRelations reduction4205.relations reduction4205.input reduction4205.output := by lin_cert using reduction4205.terms
theorem substitutionProof4205 : IsMapEvaluation generatorImages reduction4205.relations [0,569] reduction4205.output := by lin_cert using reduction4205.terms
def image4206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4206 : InImage map_13_152 image4206 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4206 : Bundle := named_bundle% "RealMapCertificates/relations/basis4206.json"
theorem reductionProof4206 : EqualModuloRelations reduction4206.relations reduction4206.input reduction4206.output := by lin_cert using reduction4206.terms
theorem substitutionProof4206 : IsMapEvaluation generatorImages reduction4206.relations [0,0,562] reduction4206.output := by lin_cert using reduction4206.terms
def map_13_153 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4301 : InImage map_13_153 image4301 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4301 : Bundle := named_bundle% "RealMapCertificates/relations/basis4301.json"
theorem reductionProof4301 : EqualModuloRelations reduction4301.relations reduction4301.input reduction4301.output := by lin_cert using reduction4301.terms
theorem substitutionProof4301 : IsMapEvaluation generatorImages reduction4301.relations [8,414] reduction4301.output := by lin_cert using reduction4301.terms
def image4302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4302 : InImage map_13_153 image4302 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4302 : Bundle := named_bundle% "RealMapCertificates/relations/basis4302.json"
theorem reductionProof4302 : EqualModuloRelations reduction4302.relations reduction4302.input reduction4302.output := by lin_cert using reduction4302.terms
theorem substitutionProof4302 : IsMapEvaluation generatorImages reduction4302.relations [7,425] reduction4302.output := by lin_cert using reduction4302.terms
def image4303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4303 : InImage map_13_153 image4303 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4303 : Bundle := named_bundle% "RealMapCertificates/relations/basis4303.json"
theorem reductionProof4303 : EqualModuloRelations reduction4303.relations reduction4303.input reduction4303.output := by lin_cert using reduction4303.terms
theorem substitutionProof4303 : IsMapEvaluation generatorImages reduction4303.relations [0,575] reduction4303.output := by lin_cert using reduction4303.terms
def image4304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4304 : InImage map_13_153 image4304 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4304 : Bundle := named_bundle% "RealMapCertificates/relations/basis4304.json"
theorem reductionProof4304 : EqualModuloRelations reduction4304.relations reduction4304.input reduction4304.output := by lin_cert using reduction4304.terms
theorem substitutionProof4304 : IsMapEvaluation generatorImages reduction4304.relations [0,0,0,0,0,546] reduction4304.output := by lin_cert using reduction4304.terms
def map_13_154 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4364 : InImage map_13_154 image4364 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4364 : Bundle := named_bundle% "RealMapCertificates/relations/basis4364.json"
theorem reductionProof4364 : EqualModuloRelations reduction4364.relations reduction4364.input reduction4364.output := by lin_cert using reduction4364.terms
theorem substitutionProof4364 : IsMapEvaluation generatorImages reduction4364.relations [589] reduction4364.output := by lin_cert using reduction4364.terms
def image4365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4365 : InImage map_13_154 image4365 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4365 : Bundle := named_bundle% "RealMapCertificates/relations/basis4365.json"
theorem reductionProof4365 : EqualModuloRelations reduction4365.relations reduction4365.input reduction4365.output := by lin_cert using reduction4365.terms
theorem substitutionProof4365 : IsMapEvaluation generatorImages reduction4365.relations [9,373] reduction4365.output := by lin_cert using reduction4365.terms
def image4366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4366 : InImage map_13_154 image4366 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4366 : Bundle := named_bundle% "RealMapCertificates/relations/basis4366.json"
theorem reductionProof4366 : EqualModuloRelations reduction4366.relations reduction4366.input reduction4366.output := by lin_cert using reduction4366.terms
theorem substitutionProof4366 : IsMapEvaluation generatorImages reduction4366.relations [1,575] reduction4366.output := by lin_cert using reduction4366.terms
def image4367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4367 : InImage map_13_154 image4367 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4367 : Bundle := named_bundle% "RealMapCertificates/relations/basis4367.json"
theorem reductionProof4367 : EqualModuloRelations reduction4367.relations reduction4367.input reduction4367.output := by lin_cert using reduction4367.terms
theorem substitutionProof4367 : IsMapEvaluation generatorImages reduction4367.relations [0,8,415] reduction4367.output := by lin_cert using reduction4367.terms
end RealMapCertificates
