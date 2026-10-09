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
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 68 => []
  | 69 => []
  | 76 => []
  | 134 => []
  | 190 => []
  | 203 => []
  | 314 => []
  | 324 => []
  | 333 => []
  | 352 => []
  | 367 => []
  | 373 => []
  | 408 => []
  | 443 => []
  | 445 => []
  | 459 => []
  | 479 => []
  | 486 => []
  | 504 => []
  | 543 => []
  | 544 => []
  | 565 => []
  | 575 => []
  | 590 => []
  | 615 => []
  | 621 => []
  | 631 => []
  | 652 => []
  | 657 => []
  | 659 => []
  | 673 => []
  | 674 => []
  | 676 => []
  | 681 => []
  | 682 => []
  | 683 => []
  | 696 => []
  | 711 => []
  | 712 => []
  | 719 => []
  | 730 => []
  | 731 => []
  | 732 => []
  | 733 => []
  | 734 => []
  | 743 => []
  | 755 => []
  | 768 => []
  | 769 => []
  | 787 => []
  | 788 => []
  | 789 => []
  | 790 => []
  | 793 => []
  | 801 => []
  | 815 => []
  | 816 => []
  | 817 => []
  | 826 => []
  | 845 => []
  | 858 => []
  | 859 => []
  | 860 => []
  | 861 => []
  | 869 => []
  | 883 => []
  | 884 => []
  | _ => []
def map_13_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4561 : InImage map_13_156 image4561 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4561 : Bundle := named_bundle% "RealMapCertificates/relations/basis4561.json"
theorem reductionProof4561 : EqualModuloRelations reduction4561.relations reduction4561.input reduction4561.output := by lin_cert using reduction4561.terms
theorem substitutionProof4561 : IsMapEvaluation generatorImages reduction4561.relations [8,443] reduction4561.output := by lin_cert using reduction4561.terms
def image4562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4562 : InImage map_13_156 image4562 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4562 : Bundle := named_bundle% "RealMapCertificates/relations/basis4562.json"
theorem reductionProof4562 : EqualModuloRelations reduction4562.relations reduction4562.input reduction4562.output := by lin_cert using reduction4562.terms
theorem substitutionProof4562 : IsMapEvaluation generatorImages reduction4562.relations [7,459] reduction4562.output := by lin_cert using reduction4562.terms
def image4563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4563 : InImage map_13_156 image4563 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4563 : Bundle := named_bundle% "RealMapCertificates/relations/basis4563.json"
theorem reductionProof4563 : EqualModuloRelations reduction4563.relations reduction4563.input reduction4563.output := by lin_cert using reduction4563.terms
theorem substitutionProof4563 : IsMapEvaluation generatorImages reduction4563.relations [2,575] reduction4563.output := by lin_cert using reduction4563.terms
def image4564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4564 : InImage map_13_156 image4564 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4564 : Bundle := named_bundle% "RealMapCertificates/relations/basis4564.json"
theorem reductionProof4564 : EqualModuloRelations reduction4564.relations reduction4564.input reduction4564.output := by lin_cert using reduction4564.terms
theorem substitutionProof4564 : IsMapEvaluation generatorImages reduction4564.relations [1,590] reduction4564.output := by lin_cert using reduction4564.terms
def map_13_157 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4641 : InImage map_13_157 image4641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4641 : Bundle := named_bundle% "RealMapCertificates/relations/basis4641.json"
theorem reductionProof4641 : EqualModuloRelations reduction4641.relations reduction4641.input reduction4641.output := by lin_cert using reduction4641.terms
theorem substitutionProof4641 : IsMapEvaluation generatorImages reduction4641.relations [621] reduction4641.output := by lin_cert using reduction4641.terms
def image4642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4642 : InImage map_13_157 image4642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4642 : Bundle := named_bundle% "RealMapCertificates/relations/basis4642.json"
theorem reductionProof4642 : EqualModuloRelations reduction4642.relations reduction4642.input reduction4642.output := by lin_cert using reduction4642.terms
theorem substitutionProof4642 : IsMapEvaluation generatorImages reduction4642.relations [13,373] reduction4642.output := by lin_cert using reduction4642.terms
def image4643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4643 : InImage map_13_157 image4643 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4643 : Bundle := named_bundle% "RealMapCertificates/relations/basis4643.json"
theorem reductionProof4643 : EqualModuloRelations reduction4643.relations reduction4643.input reduction4643.output := by lin_cert using reduction4643.terms
theorem substitutionProof4643 : IsMapEvaluation generatorImages reduction4643.relations [0,8,445] reduction4643.output := by lin_cert using reduction4643.terms
def image4644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4644 : InImage map_13_157 image4644 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4644 : Bundle := named_bundle% "RealMapCertificates/relations/basis4644.json"
theorem reductionProof4644 : EqualModuloRelations reduction4644.relations reduction4644.input reduction4644.output := by lin_cert using reduction4644.terms
theorem substitutionProof4644 : IsMapEvaluation generatorImages reduction4644.relations [0,3,543] reduction4644.output := by lin_cert using reduction4644.terms
def map_13_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4724 : InImage map_13_158 image4724 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4724 : Bundle := named_bundle% "RealMapCertificates/relations/basis4724.json"
theorem reductionProof4724 : EqualModuloRelations reduction4724.relations reduction4724.input reduction4724.output := by lin_cert using reduction4724.terms
theorem substitutionProof4724 : IsMapEvaluation generatorImages reduction4724.relations [2,590] reduction4724.output := by lin_cert using reduction4724.terms
def image4725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4725 : InImage map_13_158 image4725 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4725 : Bundle := named_bundle% "RealMapCertificates/relations/basis4725.json"
theorem reductionProof4725 : EqualModuloRelations reduction4725.relations reduction4725.input reduction4725.output := by lin_cert using reduction4725.terms
theorem substitutionProof4725 : IsMapEvaluation generatorImages reduction4725.relations [0,0,615] reduction4725.output := by lin_cert using reduction4725.terms
def image4726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4726 : InImage map_13_158 image4726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4726 : Bundle := named_bundle% "RealMapCertificates/relations/basis4726.json"
theorem reductionProof4726 : EqualModuloRelations reduction4726.relations reduction4726.input reduction4726.output := by lin_cert using reduction4726.terms
theorem substitutionProof4726 : IsMapEvaluation generatorImages reduction4726.relations [0,0,3,544] reduction4726.output := by lin_cert using reduction4726.terms
def map_13_159 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4825 : InImage map_13_159 image4825 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4825 : Bundle := named_bundle% "RealMapCertificates/relations/basis4825.json"
theorem reductionProof4825 : EqualModuloRelations reduction4825.relations reduction4825.input reduction4825.output := by lin_cert using reduction4825.terms
theorem substitutionProof4825 : IsMapEvaluation generatorImages reduction4825.relations [8,479] reduction4825.output := by lin_cert using reduction4825.terms
def image4826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4826 : InImage map_13_159 image4826 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4826 : Bundle := named_bundle% "RealMapCertificates/relations/basis4826.json"
theorem reductionProof4826 : EqualModuloRelations reduction4826.relations reduction4826.input reduction4826.output := by lin_cert using reduction4826.terms
theorem substitutionProof4826 : IsMapEvaluation generatorImages reduction4826.relations [0,7,486] reduction4826.output := by lin_cert using reduction4826.terms
def map_13_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4895 : InImage map_13_160 image4895 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4895 : Bundle := named_bundle% "RealMapCertificates/relations/basis4895.json"
theorem reductionProof4895 : EqualModuloRelations reduction4895.relations reduction4895.input reduction4895.output := by lin_cert using reduction4895.terms
theorem substitutionProof4895 : IsMapEvaluation generatorImages reduction4895.relations [1,7,486] reduction4895.output := by lin_cert using reduction4895.terms
def image4896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4896 : InImage map_13_160 image4896 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4896 : Bundle := named_bundle% "RealMapCertificates/relations/basis4896.json"
theorem reductionProof4896 : EqualModuloRelations reduction4896.relations reduction4896.input reduction4896.output := by lin_cert using reduction4896.terms
theorem substitutionProof4896 : IsMapEvaluation generatorImages reduction4896.relations [0,0,631] reduction4896.output := by lin_cert using reduction4896.terms
def map_13_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4985 : InImage map_13_161 image4985 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4985 : Bundle := named_bundle% "RealMapCertificates/relations/basis4985.json"
theorem reductionProof4985 : EqualModuloRelations reduction4985.relations reduction4985.input reduction4985.output := by lin_cert using reduction4985.terms
theorem substitutionProof4985 : IsMapEvaluation generatorImages reduction4985.relations [657] reduction4985.output := by lin_cert using reduction4985.terms
def image4986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4986 : InImage map_13_161 image4986 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4986 : Bundle := named_bundle% "RealMapCertificates/relations/basis4986.json"
theorem reductionProof4986 : EqualModuloRelations reduction4986.relations reduction4986.input reduction4986.output := by lin_cert using reduction4986.terms
theorem substitutionProof4986 : IsMapEvaluation generatorImages reduction4986.relations [0,652] reduction4986.output := by lin_cert using reduction4986.terms
def image4987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4987 : InImage map_13_161 image4987 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4987 : Bundle := named_bundle% "RealMapCertificates/relations/basis4987.json"
theorem reductionProof4987 : EqualModuloRelations reduction4987.relations reduction4987.input reduction4987.output := by lin_cert using reduction4987.terms
theorem substitutionProof4987 : IsMapEvaluation generatorImages reduction4987.relations [0,0,7,7,314] reduction4987.output := by lin_cert using reduction4987.terms
def map_13_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5103 : InImage map_13_162 image5103 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5103 : Bundle := named_bundle% "RealMapCertificates/relations/basis5103.json"
theorem reductionProof5103 : EqualModuloRelations reduction5103.relations reduction5103.input reduction5103.output := by lin_cert using reduction5103.terms
theorem substitutionProof5103 : IsMapEvaluation generatorImages reduction5103.relations [8,504] reduction5103.output := by lin_cert using reduction5103.terms
def image5104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5104 : InImage map_13_162 image5104 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5104 : Bundle := named_bundle% "RealMapCertificates/relations/basis5104.json"
theorem reductionProof5104 : EqualModuloRelations reduction5104.relations reduction5104.input reduction5104.output := by lin_cert using reduction5104.terms
theorem substitutionProof5104 : IsMapEvaluation generatorImages reduction5104.relations [1,652] reduction5104.output := by lin_cert using reduction5104.terms
def image5105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5105 : InImage map_13_162 image5105 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5105 : Bundle := named_bundle% "RealMapCertificates/relations/basis5105.json"
theorem reductionProof5105 : EqualModuloRelations reduction5105.relations reduction5105.input reduction5105.output := by lin_cert using reduction5105.terms
theorem substitutionProof5105 : IsMapEvaluation generatorImages reduction5105.relations [0,0,0,18,314] reduction5105.output := by lin_cert using reduction5105.terms
def map_13_163 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5183 : InImage map_13_163 image5183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5183 : Bundle := named_bundle% "RealMapCertificates/relations/basis5183.json"
theorem reductionProof5183 : EqualModuloRelations reduction5183.relations reduction5183.input reduction5183.output := by lin_cert using reduction5183.terms
theorem substitutionProof5183 : IsMapEvaluation generatorImages reduction5183.relations [683] reduction5183.output := by lin_cert using reduction5183.terms
def image5184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5184 : InImage map_13_163 image5184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5184 : Bundle := named_bundle% "RealMapCertificates/relations/basis5184.json"
theorem reductionProof5184 : EqualModuloRelations reduction5184.relations reduction5184.input reduction5184.output := by lin_cert using reduction5184.terms
theorem substitutionProof5184 : IsMapEvaluation generatorImages reduction5184.relations [682] reduction5184.output := by lin_cert using reduction5184.terms
def image5185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5185 : InImage map_13_163 image5185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5185 : Bundle := named_bundle% "RealMapCertificates/relations/basis5185.json"
theorem reductionProof5185 : EqualModuloRelations reduction5185.relations reduction5185.input reduction5185.output := by lin_cert using reduction5185.terms
theorem substitutionProof5185 : IsMapEvaluation generatorImages reduction5185.relations [681] reduction5185.output := by lin_cert using reduction5185.terms
def image5186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5186 : InImage map_13_163 image5186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5186 : Bundle := named_bundle% "RealMapCertificates/relations/basis5186.json"
theorem reductionProof5186 : EqualModuloRelations reduction5186.relations reduction5186.input reduction5186.output := by lin_cert using reduction5186.terms
theorem substitutionProof5186 : IsMapEvaluation generatorImages reduction5186.relations [0,673] reduction5186.output := by lin_cert using reduction5186.terms
def image5187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5187 : InImage map_13_163 image5187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5187 : Bundle := named_bundle% "RealMapCertificates/relations/basis5187.json"
theorem reductionProof5187 : EqualModuloRelations reduction5187.relations reduction5187.input reduction5187.output := by lin_cert using reduction5187.terms
theorem substitutionProof5187 : IsMapEvaluation generatorImages reduction5187.relations [0,0,0,0,0,17,324] reduction5187.output := by lin_cert using reduction5187.terms
def map_13_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5278 : InImage map_13_164 image5278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5278 : Bundle := named_bundle% "RealMapCertificates/relations/basis5278.json"
theorem reductionProof5278 : EqualModuloRelations reduction5278.relations reduction5278.input reduction5278.output := by lin_cert using reduction5278.terms
theorem substitutionProof5278 : IsMapEvaluation generatorImages reduction5278.relations [2,652] reduction5278.output := by lin_cert using reduction5278.terms
def image5279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5279 : InImage map_13_164 image5279 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5279 : Bundle := named_bundle% "RealMapCertificates/relations/basis5279.json"
theorem reductionProof5279 : EqualModuloRelations reduction5279.relations reduction5279.input reduction5279.output := by lin_cert using reduction5279.terms
theorem substitutionProof5279 : IsMapEvaluation generatorImages reduction5279.relations [1,673] reduction5279.output := by lin_cert using reduction5279.terms
def image5280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5280 : InImage map_13_164 image5280 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5280 : Bundle := named_bundle% "RealMapCertificates/relations/basis5280.json"
theorem reductionProof5280 : EqualModuloRelations reduction5280.relations reduction5280.input reduction5280.output := by lin_cert using reduction5280.terms
theorem substitutionProof5280 : IsMapEvaluation generatorImages reduction5280.relations [0,0,0,18,333] reduction5280.output := by lin_cert using reduction5280.terms
def map_13_165 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5405 : InImage map_13_165 image5405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5405 : Bundle := named_bundle% "RealMapCertificates/relations/basis5405.json"
theorem reductionProof5405 : EqualModuloRelations reduction5405.relations reduction5405.input reduction5405.output := by lin_cert using reduction5405.terms
theorem substitutionProof5405 : IsMapEvaluation generatorImages reduction5405.relations [9,504] reduction5405.output := by lin_cert using reduction5405.terms
def image5406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5406 : InImage map_13_165 image5406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5406 : Bundle := named_bundle% "RealMapCertificates/relations/basis5406.json"
theorem reductionProof5406 : EqualModuloRelations reduction5406.relations reduction5406.input reduction5406.output := by lin_cert using reduction5406.terms
theorem substitutionProof5406 : IsMapEvaluation generatorImages reduction5406.relations [1,21,324] reduction5406.output := by lin_cert using reduction5406.terms
def map_13_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5503 : InImage map_13_166 image5503 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5503 : Bundle := named_bundle% "RealMapCertificates/relations/basis5503.json"
theorem reductionProof5503 : EqualModuloRelations reduction5503.relations reduction5503.input reduction5503.output := by lin_cert using reduction5503.terms
theorem substitutionProof5503 : IsMapEvaluation generatorImages reduction5503.relations [0,711] reduction5503.output := by lin_cert using reduction5503.terms
def map_13_167 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5598 : InImage map_13_167 image5598 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5598 : Bundle := named_bundle% "RealMapCertificates/relations/basis5598.json"
theorem reductionProof5598 : EqualModuloRelations reduction5598.relations reduction5598.input reduction5598.output := by lin_cert using reduction5598.terms
theorem substitutionProof5598 : IsMapEvaluation generatorImages reduction5598.relations [731] reduction5598.output := by lin_cert using reduction5598.terms
def image5599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5599 : InImage map_13_167 image5599 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5599 : Bundle := named_bundle% "RealMapCertificates/relations/basis5599.json"
theorem reductionProof5599 : EqualModuloRelations reduction5599.relations reduction5599.input reduction5599.output := by lin_cert using reduction5599.terms
theorem substitutionProof5599 : IsMapEvaluation generatorImages reduction5599.relations [730] reduction5599.output := by lin_cert using reduction5599.terms
def image5600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5600 : InImage map_13_167 image5600 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5600 : Bundle := named_bundle% "RealMapCertificates/relations/basis5600.json"
theorem reductionProof5600 : EqualModuloRelations reduction5600.relations reduction5600.input reduction5600.output := by lin_cert using reduction5600.terms
theorem substitutionProof5600 : IsMapEvaluation generatorImages reduction5600.relations [18,408] reduction5600.output := by lin_cert using reduction5600.terms
def image5601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5601 : InImage map_13_167 image5601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5601 : Bundle := named_bundle% "RealMapCertificates/relations/basis5601.json"
theorem reductionProof5601 : EqualModuloRelations reduction5601.relations reduction5601.input reduction5601.output := by lin_cert using reduction5601.terms
theorem substitutionProof5601 : IsMapEvaluation generatorImages reduction5601.relations [0,0,0,0,0,676] reduction5601.output := by lin_cert using reduction5601.terms
def map_13_168 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5731 : InImage map_13_168 image5731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5731 : Bundle := named_bundle% "RealMapCertificates/relations/basis5731.json"
theorem reductionProof5731 : EqualModuloRelations reduction5731.relations reduction5731.input reduction5731.output := by lin_cert using reduction5731.terms
theorem substitutionProof5731 : IsMapEvaluation generatorImages reduction5731.relations [3,652] reduction5731.output := by lin_cert using reduction5731.terms
def image5732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5732 : InImage map_13_168 image5732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5732 : Bundle := named_bundle% "RealMapCertificates/relations/basis5732.json"
theorem reductionProof5732 : EqualModuloRelations reduction5732.relations reduction5732.input reduction5732.output := by lin_cert using reduction5732.terms
theorem substitutionProof5732 : IsMapEvaluation generatorImages reduction5732.relations [0,733] reduction5732.output := by lin_cert using reduction5732.terms
def image5733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5733 : InImage map_13_168 image5733 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5733 : Bundle := named_bundle% "RealMapCertificates/relations/basis5733.json"
theorem reductionProof5733 : EqualModuloRelations reduction5733.relations reduction5733.input reduction5733.output := by lin_cert using reduction5733.terms
theorem substitutionProof5733 : IsMapEvaluation generatorImages reduction5733.relations [0,732] reduction5733.output := by lin_cert using reduction5733.terms
def image5734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5734 : InImage map_13_168 image5734 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5734 : Bundle := named_bundle% "RealMapCertificates/relations/basis5734.json"
theorem reductionProof5734 : EqualModuloRelations reduction5734.relations reduction5734.input reduction5734.output := by lin_cert using reduction5734.terms
theorem substitutionProof5734 : IsMapEvaluation generatorImages reduction5734.relations [0,0,719] reduction5734.output := by lin_cert using reduction5734.terms
def map_13_169 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5827 : InImage map_13_169 image5827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5827 : Bundle := named_bundle% "RealMapCertificates/relations/basis5827.json"
theorem reductionProof5827 : EqualModuloRelations reduction5827.relations reduction5827.input reduction5827.output := by lin_cert using reduction5827.terms
theorem substitutionProof5827 : IsMapEvaluation generatorImages reduction5827.relations [76,190] reduction5827.output := by lin_cert using reduction5827.terms
def image5828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5828 : InImage map_13_169 image5828 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5828 : Bundle := named_bundle% "RealMapCertificates/relations/basis5828.json"
theorem reductionProof5828 : EqualModuloRelations reduction5828.relations reduction5828.input reduction5828.output := by lin_cert using reduction5828.terms
theorem substitutionProof5828 : IsMapEvaluation generatorImages reduction5828.relations [1,732] reduction5828.output := by lin_cert using reduction5828.terms
def image5829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5829 : InImage map_13_169 image5829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5829 : Bundle := named_bundle% "RealMapCertificates/relations/basis5829.json"
theorem reductionProof5829 : EqualModuloRelations reduction5829.relations reduction5829.input reduction5829.output := by lin_cert using reduction5829.terms
theorem substitutionProof5829 : IsMapEvaluation generatorImages reduction5829.relations [0,0,0,0,0,696] reduction5829.output := by lin_cert using reduction5829.terms
def map_13_170 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5929 : InImage map_13_170 image5929 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5929 : Bundle := named_bundle% "RealMapCertificates/relations/basis5929.json"
theorem reductionProof5929 : EqualModuloRelations reduction5929.relations reduction5929.input reduction5929.output := by lin_cert using reduction5929.terms
theorem substitutionProof5929 : IsMapEvaluation generatorImages reduction5929.relations [768] reduction5929.output := by lin_cert using reduction5929.terms
def image5930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5930 : InImage map_13_170 image5930 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5930 : Bundle := named_bundle% "RealMapCertificates/relations/basis5930.json"
theorem reductionProof5930 : EqualModuloRelations reduction5930.relations reduction5930.input reduction5930.output := by lin_cert using reduction5930.terms
theorem substitutionProof5930 : IsMapEvaluation generatorImages reduction5930.relations [68,203] reduction5930.output := by lin_cert using reduction5930.terms
def image5931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5931 : InImage map_13_170 image5931 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5931 : Bundle := named_bundle% "RealMapCertificates/relations/basis5931.json"
theorem reductionProof5931 : EqualModuloRelations reduction5931.relations reduction5931.input reduction5931.output := by lin_cert using reduction5931.terms
theorem substitutionProof5931 : IsMapEvaluation generatorImages reduction5931.relations [31,324] reduction5931.output := by lin_cert using reduction5931.terms
def image5932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5932 : InImage map_13_170 image5932 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5932 : Bundle := named_bundle% "RealMapCertificates/relations/basis5932.json"
theorem reductionProof5932 : EqualModuloRelations reduction5932.relations reduction5932.input reduction5932.output := by lin_cert using reduction5932.terms
theorem substitutionProof5932 : IsMapEvaluation generatorImages reduction5932.relations [3,673] reduction5932.output := by lin_cert using reduction5932.terms
def image5933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5933 : InImage map_13_170 image5933 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5933 : Bundle := named_bundle% "RealMapCertificates/relations/basis5933.json"
theorem reductionProof5933 : EqualModuloRelations reduction5933.relations reduction5933.input reduction5933.output := by lin_cert using reduction5933.terms
theorem substitutionProof5933 : IsMapEvaluation generatorImages reduction5933.relations [1,1,719] reduction5933.output := by lin_cert using reduction5933.terms
def image5934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5934 : InImage map_13_170 image5934 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5934 : Bundle := named_bundle% "RealMapCertificates/relations/basis5934.json"
theorem reductionProof5934 : EqualModuloRelations reduction5934.relations reduction5934.input reduction5934.output := by lin_cert using reduction5934.terms
theorem substitutionProof5934 : IsMapEvaluation generatorImages reduction5934.relations [0,0,743] reduction5934.output := by lin_cert using reduction5934.terms
def map_13_171 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6079 : InImage map_13_171 image6079 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6079 : Bundle := named_bundle% "RealMapCertificates/relations/basis6079.json"
theorem reductionProof6079 : EqualModuloRelations reduction6079.relations reduction6079.input reduction6079.output := by lin_cert using reduction6079.terms
theorem substitutionProof6079 : IsMapEvaluation generatorImages reduction6079.relations [2,732] reduction6079.output := by lin_cert using reduction6079.terms
def image6080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6080 : InImage map_13_171 image6080 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6080 : Bundle := named_bundle% "RealMapCertificates/relations/basis6080.json"
theorem reductionProof6080 : EqualModuloRelations reduction6080.relations reduction6080.input reduction6080.output := by lin_cert using reduction6080.terms
theorem substitutionProof6080 : IsMapEvaluation generatorImages reduction6080.relations [0,769] reduction6080.output := by lin_cert using reduction6080.terms
def image6081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6081 : InImage map_13_171 image6081 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6081 : Bundle := named_bundle% "RealMapCertificates/relations/basis6081.json"
theorem reductionProof6081 : EqualModuloRelations reduction6081.relations reduction6081.input reduction6081.output := by lin_cert using reduction6081.terms
theorem substitutionProof6081 : IsMapEvaluation generatorImages reduction6081.relations [0,3,674] reduction6081.output := by lin_cert using reduction6081.terms
def image6082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6082 : InImage map_13_171 image6082 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6082 : Bundle := named_bundle% "RealMapCertificates/relations/basis6082.json"
theorem reductionProof6082 : EqualModuloRelations reduction6082.relations reduction6082.input reduction6082.output := by lin_cert using reduction6082.terms
theorem substitutionProof6082 : IsMapEvaluation generatorImages reduction6082.relations [0,2,719] reduction6082.output := by lin_cert using reduction6082.terms
def image6083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6083 : InImage map_13_171 image6083 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6083 : Bundle := named_bundle% "RealMapCertificates/relations/basis6083.json"
theorem reductionProof6083 : EqualModuloRelations reduction6083.relations reduction6083.input reduction6083.output := by lin_cert using reduction6083.terms
theorem substitutionProof6083 : IsMapEvaluation generatorImages reduction6083.relations [0,0,755] reduction6083.output := by lin_cert using reduction6083.terms
def image6084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6084 : InImage map_13_171 image6084 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6084 : Bundle := named_bundle% "RealMapCertificates/relations/basis6084.json"
theorem reductionProof6084 : EqualModuloRelations reduction6084.relations reduction6084.input reduction6084.output := by lin_cert using reduction6084.terms
theorem substitutionProof6084 : IsMapEvaluation generatorImages reduction6084.relations [0,0,0,0,0,0,0,0,0,0,0,18,324] reduction6084.output := by lin_cert using reduction6084.terms
def map_13_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6163 : InImage map_13_172 image6163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6163 : Bundle := named_bundle% "RealMapCertificates/relations/basis6163.json"
theorem reductionProof6163 : EqualModuloRelations reduction6163.relations reduction6163.input reduction6163.output := by lin_cert using reduction6163.terms
theorem substitutionProof6163 : IsMapEvaluation generatorImages reduction6163.relations [787] reduction6163.output := by lin_cert using reduction6163.terms
def map_13_173 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6265 : InImage map_13_173 image6265 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6265 : Bundle := named_bundle% "RealMapCertificates/relations/basis6265.json"
theorem reductionProof6265 : EqualModuloRelations reduction6265.relations reduction6265.input reduction6265.output := by lin_cert using reduction6265.terms
theorem substitutionProof6265 : IsMapEvaluation generatorImages reduction6265.relations [801] reduction6265.output := by lin_cert using reduction6265.terms
def image6266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6266 : InImage map_13_173 image6266 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6266 : Bundle := named_bundle% "RealMapCertificates/relations/basis6266.json"
theorem reductionProof6266 : EqualModuloRelations reduction6266.relations reduction6266.input reduction6266.output := by lin_cert using reduction6266.terms
theorem substitutionProof6266 : IsMapEvaluation generatorImages reduction6266.relations [40,69,69] reduction6266.output := by lin_cert using reduction6266.terms
def image6267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6267 : InImage map_13_173 image6267 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6267 : Bundle := named_bundle% "RealMapCertificates/relations/basis6267.json"
theorem reductionProof6267 : EqualModuloRelations reduction6267.relations reduction6267.input reduction6267.output := by lin_cert using reduction6267.terms
theorem substitutionProof6267 : IsMapEvaluation generatorImages reduction6267.relations [39,324] reduction6267.output := by lin_cert using reduction6267.terms
def image6268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6268 : InImage map_13_173 image6268 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6268 : Bundle := named_bundle% "RealMapCertificates/relations/basis6268.json"
theorem reductionProof6268 : EqualModuloRelations reduction6268.relations reduction6268.input reduction6268.output := by lin_cert using reduction6268.terms
theorem substitutionProof6268 : IsMapEvaluation generatorImages reduction6268.relations [13,69,134] reduction6268.output := by lin_cert using reduction6268.terms
def image6269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6269 : InImage map_13_173 image6269 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6269 : Bundle := named_bundle% "RealMapCertificates/relations/basis6269.json"
theorem reductionProof6269 : EqualModuloRelations reduction6269.relations reduction6269.input reduction6269.output := by lin_cert using reduction6269.terms
theorem substitutionProof6269 : IsMapEvaluation generatorImages reduction6269.relations [0,788] reduction6269.output := by lin_cert using reduction6269.terms
def map_13_174 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6411 : InImage map_13_174 image6411 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6411 : Bundle := named_bundle% "RealMapCertificates/relations/basis6411.json"
theorem reductionProof6411 : EqualModuloRelations reduction6411.relations reduction6411.input reduction6411.output := by lin_cert using reduction6411.terms
theorem substitutionProof6411 : IsMapEvaluation generatorImages reduction6411.relations [815] reduction6411.output := by lin_cert using reduction6411.terms
def image6412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6412 : InImage map_13_174 image6412 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6412 : Bundle := named_bundle% "RealMapCertificates/relations/basis6412.json"
theorem reductionProof6412 : EqualModuloRelations reduction6412.relations reduction6412.input reduction6412.output := by lin_cert using reduction6412.terms
theorem substitutionProof6412 : IsMapEvaluation generatorImages reduction6412.relations [13,565] reduction6412.output := by lin_cert using reduction6412.terms
def image6413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6413 : InImage map_13_174 image6413 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6413 : Bundle := named_bundle% "RealMapCertificates/relations/basis6413.json"
theorem reductionProof6413 : EqualModuloRelations reduction6413.relations reduction6413.input reduction6413.output := by lin_cert using reduction6413.terms
theorem substitutionProof6413 : IsMapEvaluation generatorImages reduction6413.relations [0,40,324] reduction6413.output := by lin_cert using reduction6413.terms
def image6414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6414 : InImage map_13_174 image6414 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6414 : Bundle := named_bundle% "RealMapCertificates/relations/basis6414.json"
theorem reductionProof6414 : EqualModuloRelations reduction6414.relations reduction6414.input reduction6414.output := by lin_cert using reduction6414.terms
theorem substitutionProof6414 : IsMapEvaluation generatorImages reduction6414.relations [0,3,712] reduction6414.output := by lin_cert using reduction6414.terms
def image6415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6415 : InImage map_13_174 image6415 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6415 : Bundle := named_bundle% "RealMapCertificates/relations/basis6415.json"
theorem reductionProof6415 : EqualModuloRelations reduction6415.relations reduction6415.input reduction6415.output := by lin_cert using reduction6415.terms
theorem substitutionProof6415 : IsMapEvaluation generatorImages reduction6415.relations [0,0,789] reduction6415.output := by lin_cert using reduction6415.terms
def map_13_175 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6512 : InImage map_13_175 image6512 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6512 : Bundle := named_bundle% "RealMapCertificates/relations/basis6512.json"
theorem reductionProof6512 : EqualModuloRelations reduction6512.relations reduction6512.input reduction6512.output := by lin_cert using reduction6512.terms
theorem substitutionProof6512 : IsMapEvaluation generatorImages reduction6512.relations [3,732] reduction6512.output := by lin_cert using reduction6512.terms
def image6513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6513 : InImage map_13_175 image6513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6513 : Bundle := named_bundle% "RealMapCertificates/relations/basis6513.json"
theorem reductionProof6513 : EqualModuloRelations reduction6513.relations reduction6513.input reduction6513.output := by lin_cert using reduction6513.terms
theorem substitutionProof6513 : IsMapEvaluation generatorImages reduction6513.relations [2,2,734] reduction6513.output := by lin_cert using reduction6513.terms
def image6514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6514 : InImage map_13_175 image6514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6514 : Bundle := named_bundle% "RealMapCertificates/relations/basis6514.json"
theorem reductionProof6514 : EqualModuloRelations reduction6514.relations reduction6514.input reduction6514.output := by lin_cert using reduction6514.terms
theorem substitutionProof6514 : IsMapEvaluation generatorImages reduction6514.relations [0,817] reduction6514.output := by lin_cert using reduction6514.terms
def image6515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6515 : InImage map_13_175 image6515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6515 : Bundle := named_bundle% "RealMapCertificates/relations/basis6515.json"
theorem reductionProof6515 : EqualModuloRelations reduction6515.relations reduction6515.input reduction6515.output := by lin_cert using reduction6515.terms
theorem substitutionProof6515 : IsMapEvaluation generatorImages reduction6515.relations [0,3,719] reduction6515.output := by lin_cert using reduction6515.terms
def image6516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6516 : InImage map_13_175 image6516 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6516 : Bundle := named_bundle% "RealMapCertificates/relations/basis6516.json"
theorem reductionProof6516 : EqualModuloRelations reduction6516.relations reduction6516.input reduction6516.output := by lin_cert using reduction6516.terms
theorem substitutionProof6516 : IsMapEvaluation generatorImages reduction6516.relations [0,0,0,793] reduction6516.output := by lin_cert using reduction6516.terms
def map_13_176 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6619 : InImage map_13_176 image6619 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6619 : Bundle := named_bundle% "RealMapCertificates/relations/basis6619.json"
theorem reductionProof6619 : EqualModuloRelations reduction6619.relations reduction6619.input reduction6619.output := by lin_cert using reduction6619.terms
theorem substitutionProof6619 : IsMapEvaluation generatorImages reduction6619.relations [845] reduction6619.output := by lin_cert using reduction6619.terms
def image6620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6620 : InImage map_13_176 image6620 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6620 : Bundle := named_bundle% "RealMapCertificates/relations/basis6620.json"
theorem reductionProof6620 : EqualModuloRelations reduction6620.relations reduction6620.input reduction6620.output := by lin_cert using reduction6620.terms
theorem substitutionProof6620 : IsMapEvaluation generatorImages reduction6620.relations [8,16,324] reduction6620.output := by lin_cert using reduction6620.terms
def image6621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6621 : InImage map_13_176 image6621 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6621 : Bundle := named_bundle% "RealMapCertificates/relations/basis6621.json"
theorem reductionProof6621 : EqualModuloRelations reduction6621.relations reduction6621.input reduction6621.output := by lin_cert using reduction6621.terms
theorem substitutionProof6621 : IsMapEvaluation generatorImages reduction6621.relations [1,3,719] reduction6621.output := by lin_cert using reduction6621.terms
def image6622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6622 : InImage map_13_176 image6622 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6622 : Bundle := named_bundle% "RealMapCertificates/relations/basis6622.json"
theorem reductionProof6622 : EqualModuloRelations reduction6622.relations reduction6622.input reduction6622.output := by lin_cert using reduction6622.terms
theorem substitutionProof6622 : IsMapEvaluation generatorImages reduction6622.relations [0,826] reduction6622.output := by lin_cert using reduction6622.terms
def image6623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6623 : InImage map_13_176 image6623 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6623 : Bundle := named_bundle% "RealMapCertificates/relations/basis6623.json"
theorem reductionProof6623 : EqualModuloRelations reduction6623.relations reduction6623.input reduction6623.output := by lin_cert using reduction6623.terms
theorem substitutionProof6623 : IsMapEvaluation generatorImages reduction6623.relations [0,3,734] reduction6623.output := by lin_cert using reduction6623.terms
def map_13_177 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6757 : InImage map_13_177 image6757 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6757 : Bundle := named_bundle% "RealMapCertificates/relations/basis6757.json"
theorem reductionProof6757 : EqualModuloRelations reduction6757.relations reduction6757.input reduction6757.output := by lin_cert using reduction6757.terms
theorem substitutionProof6757 : IsMapEvaluation generatorImages reduction6757.relations [859] reduction6757.output := by lin_cert using reduction6757.terms
def image6758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6758 : InImage map_13_177 image6758 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6758 : Bundle := named_bundle% "RealMapCertificates/relations/basis6758.json"
theorem reductionProof6758 : EqualModuloRelations reduction6758.relations reduction6758.input reduction6758.output := by lin_cert using reduction6758.terms
theorem substitutionProof6758 : IsMapEvaluation generatorImages reduction6758.relations [858] reduction6758.output := by lin_cert using reduction6758.terms
def image6759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6759 : InImage map_13_177 image6759 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6759 : Bundle := named_bundle% "RealMapCertificates/relations/basis6759.json"
theorem reductionProof6759 : EqualModuloRelations reduction6759.relations reduction6759.input reduction6759.output := by lin_cert using reduction6759.terms
theorem substitutionProof6759 : IsMapEvaluation generatorImages reduction6759.relations [43,333] reduction6759.output := by lin_cert using reduction6759.terms
def image6760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6760 : InImage map_13_177 image6760 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6760 : Bundle := named_bundle% "RealMapCertificates/relations/basis6760.json"
theorem reductionProof6760 : EqualModuloRelations reduction6760.relations reduction6760.input reduction6760.output := by lin_cert using reduction6760.terms
theorem substitutionProof6760 : IsMapEvaluation generatorImages reduction6760.relations [1,826] reduction6760.output := by lin_cert using reduction6760.terms
def image6761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6761 : InImage map_13_177 image6761 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6761 : Bundle := named_bundle% "RealMapCertificates/relations/basis6761.json"
theorem reductionProof6761 : EqualModuloRelations reduction6761.relations reduction6761.input reduction6761.output := by lin_cert using reduction6761.terms
theorem substitutionProof6761 : IsMapEvaluation generatorImages reduction6761.relations [0,8,17,324] reduction6761.output := by lin_cert using reduction6761.terms
def map_13_178 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6857 : InImage map_13_178 image6857 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6857 : Bundle := named_bundle% "RealMapCertificates/relations/basis6857.json"
theorem reductionProof6857 : EqualModuloRelations reduction6857.relations reduction6857.input reduction6857.output := by lin_cert using reduction6857.terms
theorem substitutionProof6857 : IsMapEvaluation generatorImages reduction6857.relations [3,769] reduction6857.output := by lin_cert using reduction6857.terms
def image6858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6858 : InImage map_13_178 image6858 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6858 : Bundle := named_bundle% "RealMapCertificates/relations/basis6858.json"
theorem reductionProof6858 : EqualModuloRelations reduction6858.relations reduction6858.input reduction6858.output := by lin_cert using reduction6858.terms
theorem substitutionProof6858 : IsMapEvaluation generatorImages reduction6858.relations [2,817] reduction6858.output := by lin_cert using reduction6858.terms
def image6859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6859 : InImage map_13_178 image6859 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6859 : Bundle := named_bundle% "RealMapCertificates/relations/basis6859.json"
theorem reductionProof6859 : EqualModuloRelations reduction6859.relations reduction6859.input reduction6859.output := by lin_cert using reduction6859.terms
theorem substitutionProof6859 : IsMapEvaluation generatorImages reduction6859.relations [2,816] reduction6859.output := by lin_cert using reduction6859.terms
def image6860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6860 : InImage map_13_178 image6860 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6860 : Bundle := named_bundle% "RealMapCertificates/relations/basis6860.json"
theorem reductionProof6860 : EqualModuloRelations reduction6860.relations reduction6860.input reduction6860.output := by lin_cert using reduction6860.terms
theorem substitutionProof6860 : IsMapEvaluation generatorImages reduction6860.relations [0,861] reduction6860.output := by lin_cert using reduction6860.terms
def image6861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6861 : InImage map_13_178 image6861 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6861 : Bundle := named_bundle% "RealMapCertificates/relations/basis6861.json"
theorem reductionProof6861 : EqualModuloRelations reduction6861.relations reduction6861.input reduction6861.output := by lin_cert using reduction6861.terms
theorem substitutionProof6861 : IsMapEvaluation generatorImages reduction6861.relations [0,3,755] reduction6861.output := by lin_cert using reduction6861.terms
def map_13_179 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6986 : InImage map_13_179 image6986 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6986 : Bundle := named_bundle% "RealMapCertificates/relations/basis6986.json"
theorem reductionProof6986 : EqualModuloRelations reduction6986.relations reduction6986.input reduction6986.output := by lin_cert using reduction6986.terms
theorem substitutionProof6986 : IsMapEvaluation generatorImages reduction6986.relations [8,659] reduction6986.output := by lin_cert using reduction6986.terms
def image6987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6987 : InImage map_13_179 image6987 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6987 : Bundle := named_bundle% "RealMapCertificates/relations/basis6987.json"
theorem reductionProof6987 : EqualModuloRelations reduction6987.relations reduction6987.input reduction6987.output := by lin_cert using reduction6987.terms
theorem substitutionProof6987 : IsMapEvaluation generatorImages reduction6987.relations [8,19,324] reduction6987.output := by lin_cert using reduction6987.terms
def image6988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6988 : InImage map_13_179 image6988 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6988 : Bundle := named_bundle% "RealMapCertificates/relations/basis6988.json"
theorem reductionProof6988 : EqualModuloRelations reduction6988.relations reduction6988.input reduction6988.output := by lin_cert using reduction6988.terms
theorem substitutionProof6988 : IsMapEvaluation generatorImages reduction6988.relations [1,860] reduction6988.output := by lin_cert using reduction6988.terms
def image6989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6989 : InImage map_13_179 image6989 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6989 : Bundle := named_bundle% "RealMapCertificates/relations/basis6989.json"
theorem reductionProof6989 : EqualModuloRelations reduction6989.relations reduction6989.input reduction6989.output := by lin_cert using reduction6989.terms
theorem substitutionProof6989 : IsMapEvaluation generatorImages reduction6989.relations [0,869] reduction6989.output := by lin_cert using reduction6989.terms
def map_13_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7128 : InImage map_13_180 image7128 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7128 : Bundle := named_bundle% "RealMapCertificates/relations/basis7128.json"
theorem reductionProof7128 : EqualModuloRelations reduction7128.relations reduction7128.input reduction7128.output := by lin_cert using reduction7128.terms
theorem substitutionProof7128 : IsMapEvaluation generatorImages reduction7128.relations [3,788] reduction7128.output := by lin_cert using reduction7128.terms
def image7129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7129 : InImage map_13_180 image7129 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7129 : Bundle := named_bundle% "RealMapCertificates/relations/basis7129.json"
theorem reductionProof7129 : EqualModuloRelations reduction7129.relations reduction7129.input reduction7129.output := by lin_cert using reduction7129.terms
theorem substitutionProof7129 : IsMapEvaluation generatorImages reduction7129.relations [0,883] reduction7129.output := by lin_cert using reduction7129.terms
def image7130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7130 : InImage map_13_180 image7130 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7130 : Bundle := named_bundle% "RealMapCertificates/relations/basis7130.json"
theorem reductionProof7130 : EqualModuloRelations reduction7130.relations reduction7130.input reduction7130.output := by lin_cert using reduction7130.terms
theorem substitutionProof7130 : IsMapEvaluation generatorImages reduction7130.relations [0,43,352] reduction7130.output := by lin_cert using reduction7130.terms
def image7131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7131 : InImage map_13_180 image7131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7131 : Bundle := named_bundle% "RealMapCertificates/relations/basis7131.json"
theorem reductionProof7131 : EqualModuloRelations reduction7131.relations reduction7131.input reduction7131.output := by lin_cert using reduction7131.terms
theorem substitutionProof7131 : IsMapEvaluation generatorImages reduction7131.relations [0,8,20,324] reduction7131.output := by lin_cert using reduction7131.terms
def map_13_181 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7226 : InImage map_13_181 image7226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7226 : Bundle := named_bundle% "RealMapCertificates/relations/basis7226.json"
theorem reductionProof7226 : EqualModuloRelations reduction7226.relations reduction7226.input reduction7226.output := by lin_cert using reduction7226.terms
theorem substitutionProof7226 : IsMapEvaluation generatorImages reduction7226.relations [0,3,790] reduction7226.output := by lin_cert using reduction7226.terms
def image7227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7227 : InImage map_13_181 image7227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7227 : Bundle := named_bundle% "RealMapCertificates/relations/basis7227.json"
theorem reductionProof7227 : EqualModuloRelations reduction7227.relations reduction7227.input reduction7227.output := by lin_cert using reduction7227.terms
theorem substitutionProof7227 : IsMapEvaluation generatorImages reduction7227.relations [0,3,789] reduction7227.output := by lin_cert using reduction7227.terms
def image7228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7228 : InImage map_13_181 image7228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7228 : Bundle := named_bundle% "RealMapCertificates/relations/basis7228.json"
theorem reductionProof7228 : EqualModuloRelations reduction7228.relations reduction7228.input reduction7228.output := by lin_cert using reduction7228.terms
theorem substitutionProof7228 : IsMapEvaluation generatorImages reduction7228.relations [0,0,884] reduction7228.output := by lin_cert using reduction7228.terms
def map_13_182 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7333 : InImage map_13_182 image7333 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7333 : Bundle := named_bundle% "RealMapCertificates/relations/basis7333.json"
theorem reductionProof7333 : EqualModuloRelations reduction7333.relations reduction7333.input reduction7333.output := by lin_cert using reduction7333.terms
theorem substitutionProof7333 : IsMapEvaluation generatorImages reduction7333.relations [8,18,367] reduction7333.output := by lin_cert using reduction7333.terms
def image7334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7334 : InImage map_13_182 image7334 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7334 : Bundle := named_bundle% "RealMapCertificates/relations/basis7334.json"
theorem reductionProof7334 : EqualModuloRelations reduction7334.relations reduction7334.input reduction7334.output := by lin_cert using reduction7334.terms
theorem substitutionProof7334 : IsMapEvaluation generatorImages reduction7334.relations [8,8,8,324] reduction7334.output := by lin_cert using reduction7334.terms
def image7335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7335 : InImage map_13_182 image7335 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7335 : Bundle := named_bundle% "RealMapCertificates/relations/basis7335.json"
theorem reductionProof7335 : EqualModuloRelations reduction7335.relations reduction7335.input reduction7335.output := by lin_cert using reduction7335.terms
theorem substitutionProof7335 : IsMapEvaluation generatorImages reduction7335.relations [3,817] reduction7335.output := by lin_cert using reduction7335.terms
def image7336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7336 : InImage map_13_182 image7336 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7336 : Bundle := named_bundle% "RealMapCertificates/relations/basis7336.json"
theorem reductionProof7336 : EqualModuloRelations reduction7336.relations reduction7336.input reduction7336.output := by lin_cert using reduction7336.terms
theorem substitutionProof7336 : IsMapEvaluation generatorImages reduction7336.relations [3,3,719] reduction7336.output := by lin_cert using reduction7336.terms
def image7337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7337 : InImage map_13_182 image7337 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7337 : Bundle := named_bundle% "RealMapCertificates/relations/basis7337.json"
theorem reductionProof7337 : EqualModuloRelations reduction7337.relations reduction7337.input reduction7337.output := by lin_cert using reduction7337.terms
theorem substitutionProof7337 : IsMapEvaluation generatorImages reduction7337.relations [0,0,0,0,7,676] reduction7337.output := by lin_cert using reduction7337.terms
end RealMapCertificates
