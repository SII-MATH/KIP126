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
  | 18 => []
  | 22 => [[5,8]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 52 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 72 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 81 => []
  | 89 => []
  | 90 => []
  | 92 => []
  | 101 => []
  | 103 => []
  | 106 => []
  | 107 => []
  | 264 => []
  | 324 => []
  | 367 => []
  | 376 => []
  | 392 => []
  | 415 => []
  | 591 => []
  | 615 => []
  | 769 => []
  | 860 => []
  | 861 => []
  | 884 => []
  | 893 => []
  | 912 => []
  | 924 => []
  | 935 => []
  | 936 => []
  | 937 => []
  | 938 => []
  | 950 => []
  | 992 => []
  | 993 => []
  | 1008 => []
  | 1025 => []
  | 1026 => []
  | 1027 => []
  | 1057 => []
  | 1058 => []
  | 1091 => []
  | 1099 => []
  | 1100 => []
  | 1116 => []
  | 1117 => []
  | 1118 => []
  | 1120 => []
  | 1135 => []
  | 1136 => []
  | 1160 => []
  | 1161 => []
  | 1162 => []
  | 1163 => []
  | 1178 => []
  | 1193 => []
  | 1194 => []
  | 1195 => []
  | 1196 => []
  | 1211 => []
  | 1212 => []
  | 1213 => []
  | 1214 => []
  | 1215 => []
  | 1226 => []
  | 1227 => []
  | 1228 => []
  | 1229 => []
  | 1232 => []
  | 1271 => []
  | 1272 => []
  | 1273 => []
  | 1275 => []
  | 1278 => []
  | 1298 => []
  | 1310 => []
  | 1330 => []
  | 1331 => []
  | 1332 => []
  | 1341 => []
  | _ => []
def map_13_183 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image7487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7487 : InImage map_13_183 image7487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7487 : Bundle := named_bundle% "RealMapCertificates/relations/basis7487.json"
theorem reductionProof7487 : EqualModuloRelations reduction7487.relations reduction7487.input reduction7487.output := by lin_cert using reduction7487.terms
theorem substitutionProof7487 : IsMapEvaluation generatorImages reduction7487.relations [924] reduction7487.output := by lin_cert using reduction7487.terms
def image7488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7488 : InImage map_13_183 image7488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7488 : Bundle := named_bundle% "RealMapCertificates/relations/basis7488.json"
theorem reductionProof7488 : EqualModuloRelations reduction7488.relations reduction7488.input reduction7488.output := by lin_cert using reduction7488.terms
theorem substitutionProof7488 : IsMapEvaluation generatorImages reduction7488.relations [1,1,884] reduction7488.output := by lin_cert using reduction7488.terms
def image7489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7489 : InImage map_13_183 image7489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7489 : Bundle := named_bundle% "RealMapCertificates/relations/basis7489.json"
theorem reductionProof7489 : EqualModuloRelations reduction7489.relations reduction7489.input reduction7489.output := by lin_cert using reduction7489.terms
theorem substitutionProof7489 : IsMapEvaluation generatorImages reduction7489.relations [0,912] reduction7489.output := by lin_cert using reduction7489.terms
def image7490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7490 : InImage map_13_183 image7490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7490 : Bundle := named_bundle% "RealMapCertificates/relations/basis7490.json"
theorem reductionProof7490 : EqualModuloRelations reduction7490.relations reduction7490.input reduction7490.output := by lin_cert using reduction7490.terms
theorem substitutionProof7490 : IsMapEvaluation generatorImages reduction7490.relations [0,43,392] reduction7490.output := by lin_cert using reduction7490.terms
def image7491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7491 : InImage map_13_183 image7491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7491 : Bundle := named_bundle% "RealMapCertificates/relations/basis7491.json"
theorem reductionProof7491 : EqualModuloRelations reduction7491.relations reduction7491.input reduction7491.output := by lin_cert using reduction7491.terms
theorem substitutionProof7491 : IsMapEvaluation generatorImages reduction7491.relations [0,8,22,324] reduction7491.output := by lin_cert using reduction7491.terms
def image7492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7492 : InImage map_13_183 image7492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7492 : Bundle := named_bundle% "RealMapCertificates/relations/basis7492.json"
theorem reductionProof7492 : EqualModuloRelations reduction7492.relations reduction7492.input reduction7492.output := by lin_cert using reduction7492.terms
theorem substitutionProof7492 : IsMapEvaluation generatorImages reduction7492.relations [0,0,893] reduction7492.output := by lin_cert using reduction7492.terms
def map_13_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7593 : InImage map_13_184 image7593 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7593 : Bundle := named_bundle% "RealMapCertificates/relations/basis7593.json"
theorem reductionProof7593 : EqualModuloRelations reduction7593.relations reduction7593.input reduction7593.output := by lin_cert using reduction7593.terms
theorem substitutionProof7593 : IsMapEvaluation generatorImages reduction7593.relations [936] reduction7593.output := by lin_cert using reduction7593.terms
def image7594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7594 : InImage map_13_184 image7594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7594 : Bundle := named_bundle% "RealMapCertificates/relations/basis7594.json"
theorem reductionProof7594 : EqualModuloRelations reduction7594.relations reduction7594.input reduction7594.output := by lin_cert using reduction7594.terms
theorem substitutionProof7594 : IsMapEvaluation generatorImages reduction7594.relations [935] reduction7594.output := by lin_cert using reduction7594.terms
def map_13_185 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7710 : InImage map_13_185 image7710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7710 : Bundle := named_bundle% "RealMapCertificates/relations/basis7710.json"
theorem reductionProof7710 : EqualModuloRelations reduction7710.relations reduction7710.input reduction7710.output := by lin_cert using reduction7710.terms
theorem substitutionProof7710 : IsMapEvaluation generatorImages reduction7710.relations [950] reduction7710.output := by lin_cert using reduction7710.terms
def image7711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7711 : InImage map_13_185 image7711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7711 : Bundle := named_bundle% "RealMapCertificates/relations/basis7711.json"
theorem reductionProof7711 : EqualModuloRelations reduction7711.relations reduction7711.input reduction7711.output := by lin_cert using reduction7711.terms
theorem substitutionProof7711 : IsMapEvaluation generatorImages reduction7711.relations [8,8,9,324] reduction7711.output := by lin_cert using reduction7711.terms
def image7712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7712 : InImage map_13_185 image7712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7712 : Bundle := named_bundle% "RealMapCertificates/relations/basis7712.json"
theorem reductionProof7712 : EqualModuloRelations reduction7712.relations reduction7712.input reduction7712.output := by lin_cert using reduction7712.terms
theorem substitutionProof7712 : IsMapEvaluation generatorImages reduction7712.relations [3,861] reduction7712.output := by lin_cert using reduction7712.terms
def image7713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7713 : InImage map_13_185 image7713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7713 : Bundle := named_bundle% "RealMapCertificates/relations/basis7713.json"
theorem reductionProof7713 : EqualModuloRelations reduction7713.relations reduction7713.input reduction7713.output := by lin_cert using reduction7713.terms
theorem substitutionProof7713 : IsMapEvaluation generatorImages reduction7713.relations [0,937] reduction7713.output := by lin_cert using reduction7713.terms
def map_13_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7851 : InImage map_13_186 image7851 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7851 : Bundle := named_bundle% "RealMapCertificates/relations/basis7851.json"
theorem reductionProof7851 : EqualModuloRelations reduction7851.relations reduction7851.input reduction7851.output := by lin_cert using reduction7851.terms
theorem substitutionProof7851 : IsMapEvaluation generatorImages reduction7851.relations [7,769] reduction7851.output := by lin_cert using reduction7851.terms
def image7852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7852 : InImage map_13_186 image7852 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7852 : Bundle := named_bundle% "RealMapCertificates/relations/basis7852.json"
theorem reductionProof7852 : EqualModuloRelations reduction7852.relations reduction7852.input reduction7852.output := by lin_cert using reduction7852.terms
theorem substitutionProof7852 : IsMapEvaluation generatorImages reduction7852.relations [2,912] reduction7852.output := by lin_cert using reduction7852.terms
def image7853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7853 : InImage map_13_186 image7853 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7853 : Bundle := named_bundle% "RealMapCertificates/relations/basis7853.json"
theorem reductionProof7853 : EqualModuloRelations reduction7853.relations reduction7853.input reduction7853.output := by lin_cert using reduction7853.terms
theorem substitutionProof7853 : IsMapEvaluation generatorImages reduction7853.relations [0,0,938] reduction7853.output := by lin_cert using reduction7853.terms
def map_13_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7939 : InImage map_13_187 image7939 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7939 : Bundle := named_bundle% "RealMapCertificates/relations/basis7939.json"
theorem reductionProof7939 : EqualModuloRelations reduction7939.relations reduction7939.input reduction7939.output := by lin_cert using reduction7939.terms
theorem substitutionProof7939 : IsMapEvaluation generatorImages reduction7939.relations [2,2,884] reduction7939.output := by lin_cert using reduction7939.terms
def map_13_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8056 : InImage map_13_188 image8056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8056 : Bundle := named_bundle% "RealMapCertificates/relations/basis8056.json"
theorem reductionProof8056 : EqualModuloRelations reduction8056.relations reduction8056.input reduction8056.output := by lin_cert using reduction8056.terms
theorem substitutionProof8056 : IsMapEvaluation generatorImages reduction8056.relations [992] reduction8056.output := by lin_cert using reduction8056.terms
def image8057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8057 : InImage map_13_188 image8057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8057 : Bundle := named_bundle% "RealMapCertificates/relations/basis8057.json"
theorem reductionProof8057 : EqualModuloRelations reduction8057.relations reduction8057.input reduction8057.output := by lin_cert using reduction8057.terms
theorem substitutionProof8057 : IsMapEvaluation generatorImages reduction8057.relations [8,8,13,324] reduction8057.output := by lin_cert using reduction8057.terms
def image8058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8058 : InImage map_13_188 image8058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8058 : Bundle := named_bundle% "RealMapCertificates/relations/basis8058.json"
theorem reductionProof8058 : EqualModuloRelations reduction8058.relations reduction8058.input reduction8058.output := by lin_cert using reduction8058.terms
theorem substitutionProof8058 : IsMapEvaluation generatorImages reduction8058.relations [1,18,591] reduction8058.output := by lin_cert using reduction8058.terms
def image8059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8059 : InImage map_13_188 image8059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8059 : Bundle := named_bundle% "RealMapCertificates/relations/basis8059.json"
theorem reductionProof8059 : EqualModuloRelations reduction8059.relations reduction8059.input reduction8059.output := by lin_cert using reduction8059.terms
theorem substitutionProof8059 : IsMapEvaluation generatorImages reduction8059.relations [1,1,938] reduction8059.output := by lin_cert using reduction8059.terms
def image8060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8060 : InImage map_13_188 image8060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8060 : Bundle := named_bundle% "RealMapCertificates/relations/basis8060.json"
theorem reductionProof8060 : EqualModuloRelations reduction8060.relations reduction8060.input reduction8060.output := by lin_cert using reduction8060.terms
theorem substitutionProof8060 : IsMapEvaluation generatorImages reduction8060.relations [0,3,884] reduction8060.output := by lin_cert using reduction8060.terms
def map_13_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8209 : InImage map_13_189 image8209 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8209 : Bundle := named_bundle% "RealMapCertificates/relations/basis8209.json"
theorem reductionProof8209 : EqualModuloRelations reduction8209.relations reduction8209.input reduction8209.output := by lin_cert using reduction8209.terms
theorem substitutionProof8209 : IsMapEvaluation generatorImages reduction8209.relations [1008] reduction8209.output := by lin_cert using reduction8209.terms
def image8210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8210 : InImage map_13_189 image8210 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8210 : Bundle := named_bundle% "RealMapCertificates/relations/basis8210.json"
theorem reductionProof8210 : EqualModuloRelations reduction8210.relations reduction8210.input reduction8210.output := by lin_cert using reduction8210.terms
theorem substitutionProof8210 : IsMapEvaluation generatorImages reduction8210.relations [1,3,884] reduction8210.output := by lin_cert using reduction8210.terms
def image8211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8211 : InImage map_13_189 image8211 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8211 : Bundle := named_bundle% "RealMapCertificates/relations/basis8211.json"
theorem reductionProof8211 : EqualModuloRelations reduction8211.relations reduction8211.input reduction8211.output := by lin_cert using reduction8211.terms
theorem substitutionProof8211 : IsMapEvaluation generatorImages reduction8211.relations [0,18,615] reduction8211.output := by lin_cert using reduction8211.terms
def map_13_190 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8317 : InImage map_13_190 image8317 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8317 : Bundle := named_bundle% "RealMapCertificates/relations/basis8317.json"
theorem reductionProof8317 : EqualModuloRelations reduction8317.relations reduction8317.input reduction8317.output := by lin_cert using reduction8317.terms
theorem substitutionProof8317 : IsMapEvaluation generatorImages reduction8317.relations [1025] reduction8317.output := by lin_cert using reduction8317.terms
def image8318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8318 : InImage map_13_190 image8318 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8318 : Bundle := named_bundle% "RealMapCertificates/relations/basis8318.json"
theorem reductionProof8318 : EqualModuloRelations reduction8318.relations reduction8318.input reduction8318.output := by lin_cert using reduction8318.terms
theorem substitutionProof8318 : IsMapEvaluation generatorImages reduction8318.relations [2,76,264] reduction8318.output := by lin_cert using reduction8318.terms
def image8319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8319 : InImage map_13_190 image8319 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8319 : Bundle := named_bundle% "RealMapCertificates/relations/basis8319.json"
theorem reductionProof8319 : EqualModuloRelations reduction8319.relations reduction8319.input reduction8319.output := by lin_cert using reduction8319.terms
theorem substitutionProof8319 : IsMapEvaluation generatorImages reduction8319.relations [0,0,993] reduction8319.output := by lin_cert using reduction8319.terms
def map_13_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8440 : InImage map_13_191 image8440 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8440 : Bundle := named_bundle% "RealMapCertificates/relations/basis8440.json"
theorem reductionProof8440 : EqualModuloRelations reduction8440.relations reduction8440.input reduction8440.output := by lin_cert using reduction8440.terms
theorem substitutionProof8440 : IsMapEvaluation generatorImages reduction8440.relations [8,9,13,324] reduction8440.output := by lin_cert using reduction8440.terms
def map_13_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8588 : InImage map_13_192 image8588 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8588 : Bundle := named_bundle% "RealMapCertificates/relations/basis8588.json"
theorem reductionProof8588 : EqualModuloRelations reduction8588.relations reduction8588.input reduction8588.output := by lin_cert using reduction8588.terms
theorem substitutionProof8588 : IsMapEvaluation generatorImages reduction8588.relations [1057] reduction8588.output := by lin_cert using reduction8588.terms
def image8589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8589 : InImage map_13_192 image8589 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8589 : Bundle := named_bundle% "RealMapCertificates/relations/basis8589.json"
theorem reductionProof8589 : EqualModuloRelations reduction8589.relations reduction8589.input reduction8589.output := by lin_cert using reduction8589.terms
theorem substitutionProof8589 : IsMapEvaluation generatorImages reduction8589.relations [1,1026] reduction8589.output := by lin_cert using reduction8589.terms
def image8590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8590 : InImage map_13_192 image8590 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8590 : Bundle := named_bundle% "RealMapCertificates/relations/basis8590.json"
theorem reductionProof8590 : EqualModuloRelations reduction8590.relations reduction8590.input reduction8590.output := by lin_cert using reduction8590.terms
theorem substitutionProof8590 : IsMapEvaluation generatorImages reduction8590.relations [0,0,1027] reduction8590.output := by lin_cert using reduction8590.terms
def map_13_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8685 : InImage map_13_193 image8685 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8685 : Bundle := named_bundle% "RealMapCertificates/relations/basis8685.json"
theorem reductionProof8685 : EqualModuloRelations reduction8685.relations reduction8685.input reduction8685.output := by lin_cert using reduction8685.terms
theorem substitutionProof8685 : IsMapEvaluation generatorImages reduction8685.relations [7,860] reduction8685.output := by lin_cert using reduction8685.terms
def image8686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8686 : InImage map_13_193 image8686 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8686 : Bundle := named_bundle% "RealMapCertificates/relations/basis8686.json"
theorem reductionProof8686 : EqualModuloRelations reduction8686.relations reduction8686.input reduction8686.output := by lin_cert using reduction8686.terms
theorem substitutionProof8686 : IsMapEvaluation generatorImages reduction8686.relations [0,0,64,324] reduction8686.output := by lin_cert using reduction8686.terms
def map_13_194 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8831 : InImage map_13_194 image8831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8831 : Bundle := named_bundle% "RealMapCertificates/relations/basis8831.json"
theorem reductionProof8831 : EqualModuloRelations reduction8831.relations reduction8831.input reduction8831.output := by lin_cert using reduction8831.terms
theorem substitutionProof8831 : IsMapEvaluation generatorImages reduction8831.relations [1091] reduction8831.output := by lin_cert using reduction8831.terms
def image8832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8832 : InImage map_13_194 image8832 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8832 : Bundle := named_bundle% "RealMapCertificates/relations/basis8832.json"
theorem reductionProof8832 : EqualModuloRelations reduction8832.relations reduction8832.input reduction8832.output := by lin_cert using reduction8832.terms
theorem substitutionProof8832 : IsMapEvaluation generatorImages reduction8832.relations [8,13,13,324] reduction8832.output := by lin_cert using reduction8832.terms
def image8833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8833 : InImage map_13_194 image8833 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8833 : Bundle := named_bundle% "RealMapCertificates/relations/basis8833.json"
theorem reductionProof8833 : EqualModuloRelations reduction8833.relations reduction8833.input reduction8833.output := by lin_cert using reduction8833.terms
theorem substitutionProof8833 : IsMapEvaluation generatorImages reduction8833.relations [0,0,66,324] reduction8833.output := by lin_cert using reduction8833.terms
def map_13_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8988 : InImage map_13_195 image8988 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8988 : Bundle := named_bundle% "RealMapCertificates/relations/basis8988.json"
theorem reductionProof8988 : EqualModuloRelations reduction8988.relations reduction8988.input reduction8988.output := by lin_cert using reduction8988.terms
theorem substitutionProof8988 : IsMapEvaluation generatorImages reduction8988.relations [1100] reduction8988.output := by lin_cert using reduction8988.terms
def image8989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8989 : InImage map_13_195 image8989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8989 : Bundle := named_bundle% "RealMapCertificates/relations/basis8989.json"
theorem reductionProof8989 : EqualModuloRelations reduction8989.relations reduction8989.input reduction8989.output := by lin_cert using reduction8989.terms
theorem substitutionProof8989 : IsMapEvaluation generatorImages reduction8989.relations [1099] reduction8989.output := by lin_cert using reduction8989.terms
def image8990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8990 : InImage map_13_195 image8990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8990 : Bundle := named_bundle% "RealMapCertificates/relations/basis8990.json"
theorem reductionProof8990 : EqualModuloRelations reduction8990.relations reduction8990.input reduction8990.output := by lin_cert using reduction8990.terms
theorem substitutionProof8990 : IsMapEvaluation generatorImages reduction8990.relations [1,1,64,324] reduction8990.output := by lin_cert using reduction8990.terms
def map_13_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9111 : InImage map_13_196 image9111 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9111 : Bundle := named_bundle% "RealMapCertificates/relations/basis9111.json"
theorem reductionProof9111 : EqualModuloRelations reduction9111.relations reduction9111.input reduction9111.output := by lin_cert using reduction9111.terms
theorem substitutionProof9111 : IsMapEvaluation generatorImages reduction9111.relations [1117] reduction9111.output := by lin_cert using reduction9111.terms
def image9112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9112 : InImage map_13_196 image9112 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9112 : Bundle := named_bundle% "RealMapCertificates/relations/basis9112.json"
theorem reductionProof9112 : EqualModuloRelations reduction9112.relations reduction9112.input reduction9112.output := by lin_cert using reduction9112.terms
theorem substitutionProof9112 : IsMapEvaluation generatorImages reduction9112.relations [1116] reduction9112.output := by lin_cert using reduction9112.terms
def image9113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9113 : InImage map_13_196 image9113 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9113 : Bundle := named_bundle% "RealMapCertificates/relations/basis9113.json"
theorem reductionProof9113 : EqualModuloRelations reduction9113.relations reduction9113.input reduction9113.output := by lin_cert using reduction9113.terms
theorem substitutionProof9113 : IsMapEvaluation generatorImages reduction9113.relations [0,0,72,324] reduction9113.output := by lin_cert using reduction9113.terms
def map_13_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9261 : InImage map_13_197 image9261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9261 : Bundle := named_bundle% "RealMapCertificates/relations/basis9261.json"
theorem reductionProof9261 : EqualModuloRelations reduction9261.relations reduction9261.input reduction9261.output := by lin_cert using reduction9261.terms
theorem substitutionProof9261 : IsMapEvaluation generatorImages reduction9261.relations [1135] reduction9261.output := by lin_cert using reduction9261.terms
def image9262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9262 : InImage map_13_197 image9262 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9262 : Bundle := named_bundle% "RealMapCertificates/relations/basis9262.json"
theorem reductionProof9262 : EqualModuloRelations reduction9262.relations reduction9262.input reduction9262.output := by lin_cert using reduction9262.terms
theorem substitutionProof9262 : IsMapEvaluation generatorImages reduction9262.relations [9,13,13,324] reduction9262.output := by lin_cert using reduction9262.terms
def image9263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9263 : InImage map_13_197 image9263 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9263 : Bundle := named_bundle% "RealMapCertificates/relations/basis9263.json"
theorem reductionProof9263 : EqualModuloRelations reduction9263.relations reduction9263.input reduction9263.output := by lin_cert using reduction9263.terms
theorem substitutionProof9263 : IsMapEvaluation generatorImages reduction9263.relations [0,1118] reduction9263.output := by lin_cert using reduction9263.terms
def map_13_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9443 : InImage map_13_198 image9443 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9443 : Bundle := named_bundle% "RealMapCertificates/relations/basis9443.json"
theorem reductionProof9443 : EqualModuloRelations reduction9443.relations reduction9443.input reduction9443.output := by lin_cert using reduction9443.terms
theorem substitutionProof9443 : IsMapEvaluation generatorImages reduction9443.relations [1160] reduction9443.output := by lin_cert using reduction9443.terms
def image9444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9444 : InImage map_13_198 image9444 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9444 : Bundle := named_bundle% "RealMapCertificates/relations/basis9444.json"
theorem reductionProof9444 : EqualModuloRelations reduction9444.relations reduction9444.input reduction9444.output := by lin_cert using reduction9444.terms
theorem substitutionProof9444 : IsMapEvaluation generatorImages reduction9444.relations [1,1118] reduction9444.output := by lin_cert using reduction9444.terms
def image9445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9445 : InImage map_13_198 image9445 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9445 : Bundle := named_bundle% "RealMapCertificates/relations/basis9445.json"
theorem reductionProof9445 : EqualModuloRelations reduction9445.relations reduction9445.input reduction9445.output := by lin_cert using reduction9445.terms
theorem substitutionProof9445 : IsMapEvaluation generatorImages reduction9445.relations [0,1136] reduction9445.output := by lin_cert using reduction9445.terms
def image9446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9446 : InImage map_13_198 image9446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9446 : Bundle := named_bundle% "RealMapCertificates/relations/basis9446.json"
theorem reductionProof9446 : EqualModuloRelations reduction9446.relations reduction9446.input reduction9446.output := by lin_cert using reduction9446.terms
theorem substitutionProof9446 : IsMapEvaluation generatorImages reduction9446.relations [0,0,1120] reduction9446.output := by lin_cert using reduction9446.terms
def map_13_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9574 : InImage map_13_199 image9574 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9574 : Bundle := named_bundle% "RealMapCertificates/relations/basis9574.json"
theorem reductionProof9574 : EqualModuloRelations reduction9574.relations reduction9574.input reduction9574.output := by lin_cert using reduction9574.terms
theorem substitutionProof9574 : IsMapEvaluation generatorImages reduction9574.relations [0,1161] reduction9574.output := by lin_cert using reduction9574.terms
def image9575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9575 : InImage map_13_199 image9575 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9575 : Bundle := named_bundle% "RealMapCertificates/relations/basis9575.json"
theorem reductionProof9575 : EqualModuloRelations reduction9575.relations reduction9575.input reduction9575.output := by lin_cert using reduction9575.terms
theorem substitutionProof9575 : IsMapEvaluation generatorImages reduction9575.relations [0,0,79,324] reduction9575.output := by lin_cert using reduction9575.terms
def map_13_200 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9733 : InImage map_13_200 image9733 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9733 : Bundle := named_bundle% "RealMapCertificates/relations/basis9733.json"
theorem reductionProof9733 : EqualModuloRelations reduction9733.relations reduction9733.input reduction9733.output := by lin_cert using reduction9733.terms
theorem substitutionProof9733 : IsMapEvaluation generatorImages reduction9733.relations [1195] reduction9733.output := by lin_cert using reduction9733.terms
def image9734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9734 : InImage map_13_200 image9734 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9734 : Bundle := named_bundle% "RealMapCertificates/relations/basis9734.json"
theorem reductionProof9734 : EqualModuloRelations reduction9734.relations reduction9734.input reduction9734.output := by lin_cert using reduction9734.terms
theorem substitutionProof9734 : IsMapEvaluation generatorImages reduction9734.relations [1194] reduction9734.output := by lin_cert using reduction9734.terms
def image9735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9735 : InImage map_13_200 image9735 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9735 : Bundle := named_bundle% "RealMapCertificates/relations/basis9735.json"
theorem reductionProof9735 : EqualModuloRelations reduction9735.relations reduction9735.input reduction9735.output := by lin_cert using reduction9735.terms
theorem substitutionProof9735 : IsMapEvaluation generatorImages reduction9735.relations [1193] reduction9735.output := by lin_cert using reduction9735.terms
def image9736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9736 : InImage map_13_200 image9736 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9736 : Bundle := named_bundle% "RealMapCertificates/relations/basis9736.json"
theorem reductionProof9736 : EqualModuloRelations reduction9736.relations reduction9736.input reduction9736.output := by lin_cert using reduction9736.terms
theorem substitutionProof9736 : IsMapEvaluation generatorImages reduction9736.relations [76,376] reduction9736.output := by lin_cert using reduction9736.terms
def image9737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9737 : InImage map_13_200 image9737 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9737 : Bundle := named_bundle% "RealMapCertificates/relations/basis9737.json"
theorem reductionProof9737 : EqualModuloRelations reduction9737.relations reduction9737.input reduction9737.output := by lin_cert using reduction9737.terms
theorem substitutionProof9737 : IsMapEvaluation generatorImages reduction9737.relations [13,13,13,324] reduction9737.output := by lin_cert using reduction9737.terms
def image9738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9738 : InImage map_13_200 image9738 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9738 : Bundle := named_bundle% "RealMapCertificates/relations/basis9738.json"
theorem reductionProof9738 : EqualModuloRelations reduction9738.relations reduction9738.input reduction9738.output := by lin_cert using reduction9738.terms
theorem substitutionProof9738 : IsMapEvaluation generatorImages reduction9738.relations [2,1118] reduction9738.output := by lin_cert using reduction9738.terms
def image9739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9739 : InImage map_13_200 image9739 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9739 : Bundle := named_bundle% "RealMapCertificates/relations/basis9739.json"
theorem reductionProof9739 : EqualModuloRelations reduction9739.relations reduction9739.input reduction9739.output := by lin_cert using reduction9739.terms
theorem substitutionProof9739 : IsMapEvaluation generatorImages reduction9739.relations [0,0,1162] reduction9739.output := by lin_cert using reduction9739.terms
def image9740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9740 : InImage map_13_200 image9740 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9740 : Bundle := named_bundle% "RealMapCertificates/relations/basis9740.json"
theorem reductionProof9740 : EqualModuloRelations reduction9740.relations reduction9740.input reduction9740.output := by lin_cert using reduction9740.terms
theorem substitutionProof9740 : IsMapEvaluation generatorImages reduction9740.relations [0,0,0,80,324] reduction9740.output := by lin_cert using reduction9740.terms
def map_13_201 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9920 : InImage map_13_201 image9920 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9920 : Bundle := named_bundle% "RealMapCertificates/relations/basis9920.json"
theorem reductionProof9920 : EqualModuloRelations reduction9920.relations reduction9920.input reduction9920.output := by lin_cert using reduction9920.terms
theorem substitutionProof9920 : IsMapEvaluation generatorImages reduction9920.relations [1214] reduction9920.output := by lin_cert using reduction9920.terms
def image9921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9921 : InImage map_13_201 image9921 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9921 : Bundle := named_bundle% "RealMapCertificates/relations/basis9921.json"
theorem reductionProof9921 : EqualModuloRelations reduction9921.relations reduction9921.input reduction9921.output := by lin_cert using reduction9921.terms
theorem substitutionProof9921 : IsMapEvaluation generatorImages reduction9921.relations [1213] reduction9921.output := by lin_cert using reduction9921.terms
def image9922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9922 : InImage map_13_201 image9922 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9922 : Bundle := named_bundle% "RealMapCertificates/relations/basis9922.json"
theorem reductionProof9922 : EqualModuloRelations reduction9922.relations reduction9922.input reduction9922.output := by lin_cert using reduction9922.terms
theorem substitutionProof9922 : IsMapEvaluation generatorImages reduction9922.relations [1212] reduction9922.output := by lin_cert using reduction9922.terms
def image9923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9923 : InImage map_13_201 image9923 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9923 : Bundle := named_bundle% "RealMapCertificates/relations/basis9923.json"
theorem reductionProof9923 : EqualModuloRelations reduction9923.relations reduction9923.input reduction9923.output := by lin_cert using reduction9923.terms
theorem substitutionProof9923 : IsMapEvaluation generatorImages reduction9923.relations [1211] reduction9923.output := by lin_cert using reduction9923.terms
def image9924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9924 : InImage map_13_201 image9924 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9924 : Bundle := named_bundle% "RealMapCertificates/relations/basis9924.json"
theorem reductionProof9924 : EqualModuloRelations reduction9924.relations reduction9924.input reduction9924.output := by lin_cert using reduction9924.terms
theorem substitutionProof9924 : IsMapEvaluation generatorImages reduction9924.relations [0,1196] reduction9924.output := by lin_cert using reduction9924.terms
def image9925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9925 : InImage map_13_201 image9925 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9925 : Bundle := named_bundle% "RealMapCertificates/relations/basis9925.json"
theorem reductionProof9925 : EqualModuloRelations reduction9925.relations reduction9925.input reduction9925.output := by lin_cert using reduction9925.terms
theorem substitutionProof9925 : IsMapEvaluation generatorImages reduction9925.relations [0,0,1178] reduction9925.output := by lin_cert using reduction9925.terms
def image9926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9926 : InImage map_13_201 image9926 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9926 : Bundle := named_bundle% "RealMapCertificates/relations/basis9926.json"
theorem reductionProof9926 : EqualModuloRelations reduction9926.relations reduction9926.input reduction9926.output := by lin_cert using reduction9926.terms
theorem substitutionProof9926 : IsMapEvaluation generatorImages reduction9926.relations [0,0,0,81,324] reduction9926.output := by lin_cert using reduction9926.terms
def image9927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9927 : InImage map_13_201 image9927 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9927 : Bundle := named_bundle% "RealMapCertificates/relations/basis9927.json"
theorem reductionProof9927 : EqualModuloRelations reduction9927.relations reduction9927.input reduction9927.output := by lin_cert using reduction9927.terms
theorem substitutionProof9927 : IsMapEvaluation generatorImages reduction9927.relations [0,0,0,0,0,0,0,0,0,1058] reduction9927.output := by lin_cert using reduction9927.terms
def map_13_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10051 : InImage map_13_202 image10051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10051 : Bundle := named_bundle% "RealMapCertificates/relations/basis10051.json"
theorem reductionProof10051 : EqualModuloRelations reduction10051.relations reduction10051.input reduction10051.output := by lin_cert using reduction10051.terms
theorem substitutionProof10051 : IsMapEvaluation generatorImages reduction10051.relations [1226] reduction10051.output := by lin_cert using reduction10051.terms
def image10052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10052 : InImage map_13_202 image10052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10052 : Bundle := named_bundle% "RealMapCertificates/relations/basis10052.json"
theorem reductionProof10052 : EqualModuloRelations reduction10052.relations reduction10052.input reduction10052.output := by lin_cert using reduction10052.terms
theorem substitutionProof10052 : IsMapEvaluation generatorImages reduction10052.relations [1,1,1163] reduction10052.output := by lin_cert using reduction10052.terms
def image10053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10053 : InImage map_13_202 image10053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10053 : Bundle := named_bundle% "RealMapCertificates/relations/basis10053.json"
theorem reductionProof10053 : EqualModuloRelations reduction10053.relations reduction10053.input reduction10053.output := by lin_cert using reduction10053.terms
theorem substitutionProof10053 : IsMapEvaluation generatorImages reduction10053.relations [0,1215] reduction10053.output := by lin_cert using reduction10053.terms
def image10054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10054 : InImage map_13_202 image10054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10054 : Bundle := named_bundle% "RealMapCertificates/relations/basis10054.json"
theorem reductionProof10054 : EqualModuloRelations reduction10054.relations reduction10054.input reduction10054.output := by lin_cert using reduction10054.terms
theorem substitutionProof10054 : IsMapEvaluation generatorImages reduction10054.relations [0,0,90,324] reduction10054.output := by lin_cert using reduction10054.terms
def image10055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10055 : InImage map_13_202 image10055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10055 : Bundle := named_bundle% "RealMapCertificates/relations/basis10055.json"
theorem reductionProof10055 : EqualModuloRelations reduction10055.relations reduction10055.input reduction10055.output := by lin_cert using reduction10055.terms
theorem substitutionProof10055 : IsMapEvaluation generatorImages reduction10055.relations [0,0,89,324] reduction10055.output := by lin_cert using reduction10055.terms
def map_13_203 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10238 : InImage map_13_203 image10238 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10238 : Bundle := named_bundle% "RealMapCertificates/relations/basis10238.json"
theorem reductionProof10238 : EqualModuloRelations reduction10238.relations reduction10238.input reduction10238.output := by lin_cert using reduction10238.terms
theorem substitutionProof10238 : IsMapEvaluation generatorImages reduction10238.relations [1,1215] reduction10238.output := by lin_cert using reduction10238.terms
def image10239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10239 : InImage map_13_203 image10239 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10239 : Bundle := named_bundle% "RealMapCertificates/relations/basis10239.json"
theorem reductionProof10239 : EqualModuloRelations reduction10239.relations reduction10239.input reduction10239.output := by lin_cert using reduction10239.terms
theorem substitutionProof10239 : IsMapEvaluation generatorImages reduction10239.relations [0,1229] reduction10239.output := by lin_cert using reduction10239.terms
def image10240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10240 : InImage map_13_203 image10240 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10240 : Bundle := named_bundle% "RealMapCertificates/relations/basis10240.json"
theorem reductionProof10240 : EqualModuloRelations reduction10240.relations reduction10240.input reduction10240.output := by lin_cert using reduction10240.terms
theorem substitutionProof10240 : IsMapEvaluation generatorImages reduction10240.relations [0,1228] reduction10240.output := by lin_cert using reduction10240.terms
def image10241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10241 : InImage map_13_203 image10241 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10241 : Bundle := named_bundle% "RealMapCertificates/relations/basis10241.json"
theorem reductionProof10241 : EqualModuloRelations reduction10241.relations reduction10241.input reduction10241.output := by lin_cert using reduction10241.terms
theorem substitutionProof10241 : IsMapEvaluation generatorImages reduction10241.relations [0,1227] reduction10241.output := by lin_cert using reduction10241.terms
def map_13_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10432 : InImage map_13_204 image10432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10432 : Bundle := named_bundle% "RealMapCertificates/relations/basis10432.json"
theorem reductionProof10432 : EqualModuloRelations reduction10432.relations reduction10432.input reduction10432.output := by lin_cert using reduction10432.terms
theorem substitutionProof10432 : IsMapEvaluation generatorImages reduction10432.relations [1272] reduction10432.output := by lin_cert using reduction10432.terms
def image10433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10433 : InImage map_13_204 image10433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10433 : Bundle := named_bundle% "RealMapCertificates/relations/basis10433.json"
theorem reductionProof10433 : EqualModuloRelations reduction10433.relations reduction10433.input reduction10433.output := by lin_cert using reduction10433.terms
theorem substitutionProof10433 : IsMapEvaluation generatorImages reduction10433.relations [1271] reduction10433.output := by lin_cert using reduction10433.terms
def image10434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10434 : InImage map_13_204 image10434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10434 : Bundle := named_bundle% "RealMapCertificates/relations/basis10434.json"
theorem reductionProof10434 : EqualModuloRelations reduction10434.relations reduction10434.input reduction10434.output := by lin_cert using reduction10434.terms
theorem substitutionProof10434 : IsMapEvaluation generatorImages reduction10434.relations [92,367] reduction10434.output := by lin_cert using reduction10434.terms
def image10435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10435 : InImage map_13_204 image10435 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10435 : Bundle := named_bundle% "RealMapCertificates/relations/basis10435.json"
theorem reductionProof10435 : EqualModuloRelations reduction10435.relations reduction10435.input reduction10435.output := by lin_cert using reduction10435.terms
theorem substitutionProof10435 : IsMapEvaluation generatorImages reduction10435.relations [3,1118] reduction10435.output := by lin_cert using reduction10435.terms
def image10436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10436 : InImage map_13_204 image10436 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10436 : Bundle := named_bundle% "RealMapCertificates/relations/basis10436.json"
theorem reductionProof10436 : EqualModuloRelations reduction10436.relations reduction10436.input reduction10436.output := by lin_cert using reduction10436.terms
theorem substitutionProof10436 : IsMapEvaluation generatorImages reduction10436.relations [0,0,1232] reduction10436.output := by lin_cert using reduction10436.terms
def map_13_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10578 : InImage map_13_205 image10578 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10578 : Bundle := named_bundle% "RealMapCertificates/relations/basis10578.json"
theorem reductionProof10578 : EqualModuloRelations reduction10578.relations reduction10578.input reduction10578.output := by lin_cert using reduction10578.terms
theorem substitutionProof10578 : IsMapEvaluation generatorImages reduction10578.relations [18,40,324] reduction10578.output := by lin_cert using reduction10578.terms
def image10579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10579 : InImage map_13_205 image10579 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10579 : Bundle := named_bundle% "RealMapCertificates/relations/basis10579.json"
theorem reductionProof10579 : EqualModuloRelations reduction10579.relations reduction10579.input reduction10579.output := by lin_cert using reduction10579.terms
theorem substitutionProof10579 : IsMapEvaluation generatorImages reduction10579.relations [3,1136] reduction10579.output := by lin_cert using reduction10579.terms
def image10580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10580 : InImage map_13_205 image10580 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10580 : Bundle := named_bundle% "RealMapCertificates/relations/basis10580.json"
theorem reductionProof10580 : EqualModuloRelations reduction10580.relations reduction10580.input reduction10580.output := by lin_cert using reduction10580.terms
theorem substitutionProof10580 : IsMapEvaluation generatorImages reduction10580.relations [2,1215] reduction10580.output := by lin_cert using reduction10580.terms
def image10581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10581 : InImage map_13_205 image10581 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10581 : Bundle := named_bundle% "RealMapCertificates/relations/basis10581.json"
theorem reductionProof10581 : EqualModuloRelations reduction10581.relations reduction10581.input reduction10581.output := by lin_cert using reduction10581.terms
theorem substitutionProof10581 : IsMapEvaluation generatorImages reduction10581.relations [0,1273] reduction10581.output := by lin_cert using reduction10581.terms
def image10582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10582 : InImage map_13_205 image10582 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10582 : Bundle := named_bundle% "RealMapCertificates/relations/basis10582.json"
theorem reductionProof10582 : EqualModuloRelations reduction10582.relations reduction10582.input reduction10582.output := by lin_cert using reduction10582.terms
theorem substitutionProof10582 : IsMapEvaluation generatorImages reduction10582.relations [0,3,1120] reduction10582.output := by lin_cert using reduction10582.terms
def image10583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10583 : InImage map_13_205 image10583 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10583 : Bundle := named_bundle% "RealMapCertificates/relations/basis10583.json"
theorem reductionProof10583 : EqualModuloRelations reduction10583.relations reduction10583.input reduction10583.output := by lin_cert using reduction10583.terms
theorem substitutionProof10583 : IsMapEvaluation generatorImages reduction10583.relations [0,0,101,324] reduction10583.output := by lin_cert using reduction10583.terms
def map_13_206 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10779 : InImage map_13_206 image10779 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10779 : Bundle := named_bundle% "RealMapCertificates/relations/basis10779.json"
theorem reductionProof10779 : EqualModuloRelations reduction10779.relations reduction10779.input reduction10779.output := by lin_cert using reduction10779.terms
theorem substitutionProof10779 : IsMapEvaluation generatorImages reduction10779.relations [1310] reduction10779.output := by lin_cert using reduction10779.terms
def image10780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10780 : InImage map_13_206 image10780 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10780 : Bundle := named_bundle% "RealMapCertificates/relations/basis10780.json"
theorem reductionProof10780 : EqualModuloRelations reduction10780.relations reduction10780.input reduction10780.output := by lin_cert using reduction10780.terms
theorem substitutionProof10780 : IsMapEvaluation generatorImages reduction10780.relations [13,52,324] reduction10780.output := by lin_cert using reduction10780.terms
def image10781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10781 : InImage map_13_206 image10781 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10781 : Bundle := named_bundle% "RealMapCertificates/relations/basis10781.json"
theorem reductionProof10781 : EqualModuloRelations reduction10781.relations reduction10781.input reduction10781.output := by lin_cert using reduction10781.terms
theorem substitutionProof10781 : IsMapEvaluation generatorImages reduction10781.relations [2,1227] reduction10781.output := by lin_cert using reduction10781.terms
def image10782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10782 : InImage map_13_206 image10782 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10782 : Bundle := named_bundle% "RealMapCertificates/relations/basis10782.json"
theorem reductionProof10782 : EqualModuloRelations reduction10782.relations reduction10782.input reduction10782.output := by lin_cert using reduction10782.terms
theorem substitutionProof10782 : IsMapEvaluation generatorImages reduction10782.relations [1,1273] reduction10782.output := by lin_cert using reduction10782.terms
def image10783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10783 : InImage map_13_206 image10783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10783 : Bundle := named_bundle% "RealMapCertificates/relations/basis10783.json"
theorem reductionProof10783 : EqualModuloRelations reduction10783.relations reduction10783.input reduction10783.output := by lin_cert using reduction10783.terms
theorem substitutionProof10783 : IsMapEvaluation generatorImages reduction10783.relations [0,0,1275] reduction10783.output := by lin_cert using reduction10783.terms
def image10784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10784 : InImage map_13_206 image10784 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10784 : Bundle := named_bundle% "RealMapCertificates/relations/basis10784.json"
theorem reductionProof10784 : EqualModuloRelations reduction10784.relations reduction10784.input reduction10784.output := by lin_cert using reduction10784.terms
theorem substitutionProof10784 : IsMapEvaluation generatorImages reduction10784.relations [0,0,103,324] reduction10784.output := by lin_cert using reduction10784.terms
def map_13_207 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10970 : InImage map_13_207 image10970 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10970 : Bundle := named_bundle% "RealMapCertificates/relations/basis10970.json"
theorem reductionProof10970 : EqualModuloRelations reduction10970.relations reduction10970.input reduction10970.output := by lin_cert using reduction10970.terms
theorem substitutionProof10970 : IsMapEvaluation generatorImages reduction10970.relations [1331] reduction10970.output := by lin_cert using reduction10970.terms
def image10971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10971 : InImage map_13_207 image10971 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10971 : Bundle := named_bundle% "RealMapCertificates/relations/basis10971.json"
theorem reductionProof10971 : EqualModuloRelations reduction10971.relations reduction10971.input reduction10971.output := by lin_cert using reduction10971.terms
theorem substitutionProof10971 : IsMapEvaluation generatorImages reduction10971.relations [1330] reduction10971.output := by lin_cert using reduction10971.terms
def image10972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10972 : InImage map_13_207 image10972 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10972 : Bundle := named_bundle% "RealMapCertificates/relations/basis10972.json"
theorem reductionProof10972 : EqualModuloRelations reduction10972.relations reduction10972.input reduction10972.output := by lin_cert using reduction10972.terms
theorem substitutionProof10972 : IsMapEvaluation generatorImages reduction10972.relations [92,415] reduction10972.output := by lin_cert using reduction10972.terms
def image10973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10973 : InImage map_13_207 image10973 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10973 : Bundle := named_bundle% "RealMapCertificates/relations/basis10973.json"
theorem reductionProof10973 : EqualModuloRelations reduction10973.relations reduction10973.input reduction10973.output := by lin_cert using reduction10973.terms
theorem substitutionProof10973 : IsMapEvaluation generatorImages reduction10973.relations [1,1298] reduction10973.output := by lin_cert using reduction10973.terms
def image10974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10974 : InImage map_13_207 image10974 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10974 : Bundle := named_bundle% "RealMapCertificates/relations/basis10974.json"
theorem reductionProof10974 : EqualModuloRelations reduction10974.relations reduction10974.input reduction10974.output := by lin_cert using reduction10974.terms
theorem substitutionProof10974 : IsMapEvaluation generatorImages reduction10974.relations [0,0,0,1278] reduction10974.output := by lin_cert using reduction10974.terms
def image10975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10975 : InImage map_13_207 image10975 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10975 : Bundle := named_bundle% "RealMapCertificates/relations/basis10975.json"
theorem reductionProof10975 : EqualModuloRelations reduction10975.relations reduction10975.input reduction10975.output := by lin_cert using reduction10975.terms
theorem substitutionProof10975 : IsMapEvaluation generatorImages reduction10975.relations [0,0,0,106,324] reduction10975.output := by lin_cert using reduction10975.terms
def map_13_208 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11104 : InImage map_13_208 image11104 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11104 : Bundle := named_bundle% "RealMapCertificates/relations/basis11104.json"
theorem reductionProof11104 : EqualModuloRelations reduction11104.relations reduction11104.input reduction11104.output := by lin_cert using reduction11104.terms
theorem substitutionProof11104 : IsMapEvaluation generatorImages reduction11104.relations [1341] reduction11104.output := by lin_cert using reduction11104.terms
def image11105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11105 : InImage map_13_208 image11105 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11105 : Bundle := named_bundle% "RealMapCertificates/relations/basis11105.json"
theorem reductionProof11105 : EqualModuloRelations reduction11105.relations reduction11105.input reduction11105.output := by lin_cert using reduction11105.terms
theorem substitutionProof11105 : IsMapEvaluation generatorImages reduction11105.relations [3,1196] reduction11105.output := by lin_cert using reduction11105.terms
def image11106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11106 : InImage map_13_208 image11106 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11106 : Bundle := named_bundle% "RealMapCertificates/relations/basis11106.json"
theorem reductionProof11106 : EqualModuloRelations reduction11106.relations reduction11106.input reduction11106.output := by lin_cert using reduction11106.terms
theorem substitutionProof11106 : IsMapEvaluation generatorImages reduction11106.relations [2,1273] reduction11106.output := by lin_cert using reduction11106.terms
def image11107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11107 : InImage map_13_208 image11107 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11107 : Bundle := named_bundle% "RealMapCertificates/relations/basis11107.json"
theorem reductionProof11107 : EqualModuloRelations reduction11107.relations reduction11107.input reduction11107.output := by lin_cert using reduction11107.terms
theorem substitutionProof11107 : IsMapEvaluation generatorImages reduction11107.relations [0,1332] reduction11107.output := by lin_cert using reduction11107.terms
def image11108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11108 : InImage map_13_208 image11108 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11108 : Bundle := named_bundle% "RealMapCertificates/relations/basis11108.json"
theorem reductionProof11108 : EqualModuloRelations reduction11108.relations reduction11108.input reduction11108.output := by lin_cert using reduction11108.terms
theorem substitutionProof11108 : IsMapEvaluation generatorImages reduction11108.relations [0,3,1178] reduction11108.output := by lin_cert using reduction11108.terms
def image11109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11109 : InImage map_13_208 image11109 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11109 : Bundle := named_bundle% "RealMapCertificates/relations/basis11109.json"
theorem reductionProof11109 : EqualModuloRelations reduction11109.relations reduction11109.input reduction11109.output := by lin_cert using reduction11109.terms
theorem substitutionProof11109 : IsMapEvaluation generatorImages reduction11109.relations [0,2,101,324] reduction11109.output := by lin_cert using reduction11109.terms
def image11110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11110 : InImage map_13_208 image11110 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11110 : Bundle := named_bundle% "RealMapCertificates/relations/basis11110.json"
theorem reductionProof11110 : EqualModuloRelations reduction11110.relations reduction11110.input reduction11110.output := by lin_cert using reduction11110.terms
theorem substitutionProof11110 : IsMapEvaluation generatorImages reduction11110.relations [0,0,0,0,107,324] reduction11110.output := by lin_cert using reduction11110.terms
end RealMapCertificates
