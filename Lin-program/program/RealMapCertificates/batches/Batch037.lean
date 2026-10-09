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
  | 4 => [[3]]
  | 7 => []
  | 8 => [[6]]
  | 13 => [[9]]
  | 68 => []
  | 72 => []
  | 83 => []
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
  | 324 => []
  | 1118 => []
  | 1120 => []
  | 1161 => []
  | 1178 => []
  | 1197 => []
  | 1215 => []
  | 1216 => []
  | 1227 => []
  | 1228 => []
  | 1229 => []
  | 1230 => []
  | 1232 => []
  | 1273 => []
  | 1274 => []
  | 1276 => []
  | 1281 => []
  | 1332 => []
  | 1342 => []
  | 1343 => []
  | 1344 => []
  | 1345 => []
  | 1346 => []
  | 1355 => []
  | 1356 => []
  | 1357 => []
  | 1358 => []
  | 1380 => []
  | 1392 => []
  | 1393 => []
  | 1411 => []
  | 1412 => []
  | 1414 => []
  | 1416 => []
  | 1417 => []
  | 1418 => []
  | 1420 => []
  | 1454 => []
  | 1455 => []
  | 1456 => []
  | 1457 => []
  | 1458 => []
  | 1459 => []
  | 1477 => []
  | 1478 => []
  | 1479 => []
  | 1496 => []
  | 1511 => []
  | 1527 => []
  | 1528 => []
  | 1529 => []
  | 1531 => []
  | 1564 => []
  | 1582 => []
  | 1602 => []
  | 1603 => []
  | 1676 => []
  | _ => []
def map_13_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11294 : InImage map_13_209 image11294 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11294 : Bundle := named_bundle% "RealMapCertificates/relations/basis11294.json"
theorem reductionProof11294 : EqualModuloRelations reduction11294.relations reduction11294.input reduction11294.output := by lin_cert using reduction11294.terms
theorem substitutionProof11294 : IsMapEvaluation generatorImages reduction11294.relations [1355] reduction11294.output := by lin_cert using reduction11294.terms
def image11295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11295 : InImage map_13_209 image11295 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11295 : Bundle := named_bundle% "RealMapCertificates/relations/basis11295.json"
theorem reductionProof11295 : EqualModuloRelations reduction11295.relations reduction11295.input reduction11295.output := by lin_cert using reduction11295.terms
theorem substitutionProof11295 : IsMapEvaluation generatorImages reduction11295.relations [3,1215] reduction11295.output := by lin_cert using reduction11295.terms
def image11296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11296 : InImage map_13_209 image11296 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11296 : Bundle := named_bundle% "RealMapCertificates/relations/basis11296.json"
theorem reductionProof11296 : EqualModuloRelations reduction11296.relations reduction11296.input reduction11296.output := by lin_cert using reduction11296.terms
theorem substitutionProof11296 : IsMapEvaluation generatorImages reduction11296.relations [0,1343] reduction11296.output := by lin_cert using reduction11296.terms
def image11297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11297 : InImage map_13_209 image11297 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11297 : Bundle := named_bundle% "RealMapCertificates/relations/basis11297.json"
theorem reductionProof11297 : EqualModuloRelations reduction11297.relations reduction11297.input reduction11297.output := by lin_cert using reduction11297.terms
theorem substitutionProof11297 : IsMapEvaluation generatorImages reduction11297.relations [0,1342] reduction11297.output := by lin_cert using reduction11297.terms
def map_13_210 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image11495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11495 : InImage map_13_210 image11495 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction11495 : Bundle := named_bundle% "RealMapCertificates/relations/basis11495.json"
theorem reductionProof11495 : EqualModuloRelations reduction11495.relations reduction11495.input reduction11495.output := by lin_cert using reduction11495.terms
theorem substitutionProof11495 : IsMapEvaluation generatorImages reduction11495.relations [3,1229] reduction11495.output := by lin_cert using reduction11495.terms
def image11496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11496 : InImage map_13_210 image11496 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction11496 : Bundle := named_bundle% "RealMapCertificates/relations/basis11496.json"
theorem reductionProof11496 : EqualModuloRelations reduction11496.relations reduction11496.input reduction11496.output := by lin_cert using reduction11496.terms
theorem substitutionProof11496 : IsMapEvaluation generatorImages reduction11496.relations [3,1228] reduction11496.output := by lin_cert using reduction11496.terms
def image11497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11497 : InImage map_13_210 image11497 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction11497 : Bundle := named_bundle% "RealMapCertificates/relations/basis11497.json"
theorem reductionProof11497 : EqualModuloRelations reduction11497.relations reduction11497.input reduction11497.output := by lin_cert using reduction11497.terms
theorem substitutionProof11497 : IsMapEvaluation generatorImages reduction11497.relations [3,1227] reduction11497.output := by lin_cert using reduction11497.terms
def image11498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11498 : InImage map_13_210 image11498 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction11498 : Bundle := named_bundle% "RealMapCertificates/relations/basis11498.json"
theorem reductionProof11498 : EqualModuloRelations reduction11498.relations reduction11498.input reduction11498.output := by lin_cert using reduction11498.terms
theorem substitutionProof11498 : IsMapEvaluation generatorImages reduction11498.relations [2,114,324] reduction11498.output := by lin_cert using reduction11498.terms
def image11499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11499 : InImage map_13_210 image11499 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction11499 : Bundle := named_bundle% "RealMapCertificates/relations/basis11499.json"
theorem reductionProof11499 : EqualModuloRelations reduction11499.relations reduction11499.input reduction11499.output := by lin_cert using reduction11499.terms
theorem substitutionProof11499 : IsMapEvaluation generatorImages reduction11499.relations [1,1344] reduction11499.output := by lin_cert using reduction11499.terms
def image11500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11500 : InImage map_13_210 image11500 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction11500 : Bundle := named_bundle% "RealMapCertificates/relations/basis11500.json"
theorem reductionProof11500 : EqualModuloRelations reduction11500.relations reduction11500.input reduction11500.output := by lin_cert using reduction11500.terms
theorem substitutionProof11500 : IsMapEvaluation generatorImages reduction11500.relations [1,1343] reduction11500.output := by lin_cert using reduction11500.terms
def image11501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11501 : InImage map_13_210 image11501 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction11501 : Bundle := named_bundle% "RealMapCertificates/relations/basis11501.json"
theorem reductionProof11501 : EqualModuloRelations reduction11501.relations reduction11501.input reduction11501.output := by lin_cert using reduction11501.terms
theorem substitutionProof11501 : IsMapEvaluation generatorImages reduction11501.relations [1,1342] reduction11501.output := by lin_cert using reduction11501.terms
def image11502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11502 : InImage map_13_210 image11502 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction11502 : Bundle := named_bundle% "RealMapCertificates/relations/basis11502.json"
theorem reductionProof11502 : EqualModuloRelations reduction11502.relations reduction11502.input reduction11502.output := by lin_cert using reduction11502.terms
theorem substitutionProof11502 : IsMapEvaluation generatorImages reduction11502.relations [0,1356] reduction11502.output := by lin_cert using reduction11502.terms
def image11503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11503 : InImage map_13_210 image11503 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction11503 : Bundle := named_bundle% "RealMapCertificates/relations/basis11503.json"
theorem reductionProof11503 : EqualModuloRelations reduction11503.relations reduction11503.input reduction11503.output := by lin_cert using reduction11503.terms
theorem substitutionProof11503 : IsMapEvaluation generatorImages reduction11503.relations [0,0,1346] reduction11503.output := by lin_cert using reduction11503.terms
def image11504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11504 : InImage map_13_210 image11504 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction11504 : Bundle := named_bundle% "RealMapCertificates/relations/basis11504.json"
theorem reductionProof11504 : EqualModuloRelations reduction11504.relations reduction11504.input reduction11504.output := by lin_cert using reduction11504.terms
theorem substitutionProof11504 : IsMapEvaluation generatorImages reduction11504.relations [0,0,1345] reduction11504.output := by lin_cert using reduction11504.terms
def map_13_211 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11646 : InImage map_13_211 image11646 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11646 : Bundle := named_bundle% "RealMapCertificates/relations/basis11646.json"
theorem reductionProof11646 : EqualModuloRelations reduction11646.relations reduction11646.input reduction11646.output := by lin_cert using reduction11646.terms
theorem substitutionProof11646 : IsMapEvaluation generatorImages reduction11646.relations [1393] reduction11646.output := by lin_cert using reduction11646.terms
def image11647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11647 : InImage map_13_211 image11647 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11647 : Bundle := named_bundle% "RealMapCertificates/relations/basis11647.json"
theorem reductionProof11647 : EqualModuloRelations reduction11647.relations reduction11647.input reduction11647.output := by lin_cert using reduction11647.terms
theorem substitutionProof11647 : IsMapEvaluation generatorImages reduction11647.relations [1392] reduction11647.output := by lin_cert using reduction11647.terms
def image11648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11648 : InImage map_13_211 image11648 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11648 : Bundle := named_bundle% "RealMapCertificates/relations/basis11648.json"
theorem reductionProof11648 : EqualModuloRelations reduction11648.relations reduction11648.input reduction11648.output := by lin_cert using reduction11648.terms
theorem substitutionProof11648 : IsMapEvaluation generatorImages reduction11648.relations [124,324] reduction11648.output := by lin_cert using reduction11648.terms
def image11649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11649 : InImage map_13_211 image11649 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11649 : Bundle := named_bundle% "RealMapCertificates/relations/basis11649.json"
theorem reductionProof11649 : EqualModuloRelations reduction11649.relations reduction11649.input reduction11649.output := by lin_cert using reduction11649.terms
theorem substitutionProof11649 : IsMapEvaluation generatorImages reduction11649.relations [0,7,72,324] reduction11649.output := by lin_cert using reduction11649.terms
def image11650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11650 : InImage map_13_211 image11650 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11650 : Bundle := named_bundle% "RealMapCertificates/relations/basis11650.json"
theorem reductionProof11650 : EqualModuloRelations reduction11650.relations reduction11650.input reduction11650.output := by lin_cert using reduction11650.terms
theorem substitutionProof11650 : IsMapEvaluation generatorImages reduction11650.relations [0,3,1230] reduction11650.output := by lin_cert using reduction11650.terms
def image11651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11651 : InImage map_13_211 image11651 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11651 : Bundle := named_bundle% "RealMapCertificates/relations/basis11651.json"
theorem reductionProof11651 : EqualModuloRelations reduction11651.relations reduction11651.input reduction11651.output := by lin_cert using reduction11651.terms
theorem substitutionProof11651 : IsMapEvaluation generatorImages reduction11651.relations [0,0,1357] reduction11651.output := by lin_cert using reduction11651.terms
def map_13_212 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11845 : InImage map_13_212 image11845 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11845 : Bundle := named_bundle% "RealMapCertificates/relations/basis11845.json"
theorem reductionProof11845 : EqualModuloRelations reduction11845.relations reduction11845.input reduction11845.output := by lin_cert using reduction11845.terms
theorem substitutionProof11845 : IsMapEvaluation generatorImages reduction11845.relations [1412] reduction11845.output := by lin_cert using reduction11845.terms
def image11846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11846 : InImage map_13_212 image11846 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11846 : Bundle := named_bundle% "RealMapCertificates/relations/basis11846.json"
theorem reductionProof11846 : EqualModuloRelations reduction11846.relations reduction11846.input reduction11846.output := by lin_cert using reduction11846.terms
theorem substitutionProof11846 : IsMapEvaluation generatorImages reduction11846.relations [1411] reduction11846.output := by lin_cert using reduction11846.terms
def image11847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11847 : InImage map_13_212 image11847 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11847 : Bundle := named_bundle% "RealMapCertificates/relations/basis11847.json"
theorem reductionProof11847 : EqualModuloRelations reduction11847.relations reduction11847.input reduction11847.output := by lin_cert using reduction11847.terms
theorem substitutionProof11847 : IsMapEvaluation generatorImages reduction11847.relations [7,1118] reduction11847.output := by lin_cert using reduction11847.terms
def image11848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11848 : InImage map_13_212 image11848 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11848 : Bundle := named_bundle% "RealMapCertificates/relations/basis11848.json"
theorem reductionProof11848 : EqualModuloRelations reduction11848.relations reduction11848.input reduction11848.output := by lin_cert using reduction11848.terms
theorem substitutionProof11848 : IsMapEvaluation generatorImages reduction11848.relations [3,3,1120] reduction11848.output := by lin_cert using reduction11848.terms
def image11849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11849 : InImage map_13_212 image11849 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11849 : Bundle := named_bundle% "RealMapCertificates/relations/basis11849.json"
theorem reductionProof11849 : EqualModuloRelations reduction11849.relations reduction11849.input reduction11849.output := by lin_cert using reduction11849.terms
theorem substitutionProof11849 : IsMapEvaluation generatorImages reduction11849.relations [1,1,1346] reduction11849.output := by lin_cert using reduction11849.terms
def image11850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11850 : InImage map_13_212 image11850 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11850 : Bundle := named_bundle% "RealMapCertificates/relations/basis11850.json"
theorem reductionProof11850 : EqualModuloRelations reduction11850.relations reduction11850.input reduction11850.output := by lin_cert using reduction11850.terms
theorem substitutionProof11850 : IsMapEvaluation generatorImages reduction11850.relations [0,0,8,68,324] reduction11850.output := by lin_cert using reduction11850.terms
def map_13_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12080 : InImage map_13_213 image12080 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12080 : Bundle := named_bundle% "RealMapCertificates/relations/basis12080.json"
theorem reductionProof12080 : EqualModuloRelations reduction12080.relations reduction12080.input reduction12080.output := by lin_cert using reduction12080.terms
theorem substitutionProof12080 : IsMapEvaluation generatorImages reduction12080.relations [0,7,1120] reduction12080.output := by lin_cert using reduction12080.terms
def image12081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12081 : InImage map_13_213 image12081 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12081 : Bundle := named_bundle% "RealMapCertificates/relations/basis12081.json"
theorem reductionProof12081 : EqualModuloRelations reduction12081.relations reduction12081.input reduction12081.output := by lin_cert using reduction12081.terms
theorem substitutionProof12081 : IsMapEvaluation generatorImages reduction12081.relations [0,3,1276] reduction12081.output := by lin_cert using reduction12081.terms
def image12082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12082 : InImage map_13_213 image12082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12082 : Bundle := named_bundle% "RealMapCertificates/relations/basis12082.json"
theorem reductionProof12082 : EqualModuloRelations reduction12082.relations reduction12082.input reduction12082.output := by lin_cert using reduction12082.terms
theorem substitutionProof12082 : IsMapEvaluation generatorImages reduction12082.relations [0,2,1345] reduction12082.output := by lin_cert using reduction12082.terms
def image12083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12083 : InImage map_13_213 image12083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12083 : Bundle := named_bundle% "RealMapCertificates/relations/basis12083.json"
theorem reductionProof12083 : EqualModuloRelations reduction12083.relations reduction12083.input reduction12083.output := by lin_cert using reduction12083.terms
theorem substitutionProof12083 : IsMapEvaluation generatorImages reduction12083.relations [0,0,0,1380] reduction12083.output := by lin_cert using reduction12083.terms
def map_13_214 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12228 : InImage map_13_214 image12228 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12228 : Bundle := named_bundle% "RealMapCertificates/relations/basis12228.json"
theorem reductionProof12228 : EqualModuloRelations reduction12228.relations reduction12228.input reduction12228.output := by lin_cert using reduction12228.terms
theorem substitutionProof12228 : IsMapEvaluation generatorImages reduction12228.relations [1457] reduction12228.output := by lin_cert using reduction12228.terms
def image12229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12229 : InImage map_13_214 image12229 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12229 : Bundle := named_bundle% "RealMapCertificates/relations/basis12229.json"
theorem reductionProof12229 : EqualModuloRelations reduction12229.relations reduction12229.input reduction12229.output := by lin_cert using reduction12229.terms
theorem substitutionProof12229 : IsMapEvaluation generatorImages reduction12229.relations [1456] reduction12229.output := by lin_cert using reduction12229.terms
def image12230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12230 : InImage map_13_214 image12230 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12230 : Bundle := named_bundle% "RealMapCertificates/relations/basis12230.json"
theorem reductionProof12230 : EqualModuloRelations reduction12230.relations reduction12230.input reduction12230.output := by lin_cert using reduction12230.terms
theorem substitutionProof12230 : IsMapEvaluation generatorImages reduction12230.relations [1455] reduction12230.output := by lin_cert using reduction12230.terms
def image12231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12231 : InImage map_13_214 image12231 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12231 : Bundle := named_bundle% "RealMapCertificates/relations/basis12231.json"
theorem reductionProof12231 : EqualModuloRelations reduction12231.relations reduction12231.input reduction12231.output := by lin_cert using reduction12231.terms
theorem substitutionProof12231 : IsMapEvaluation generatorImages reduction12231.relations [1454] reduction12231.output := by lin_cert using reduction12231.terms
def image12232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12232 : InImage map_13_214 image12232 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12232 : Bundle := named_bundle% "RealMapCertificates/relations/basis12232.json"
theorem reductionProof12232 : EqualModuloRelations reduction12232.relations reduction12232.input reduction12232.output := by lin_cert using reduction12232.terms
theorem substitutionProof12232 : IsMapEvaluation generatorImages reduction12232.relations [7,1161] reduction12232.output := by lin_cert using reduction12232.terms
def image12233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12233 : InImage map_13_214 image12233 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12233 : Bundle := named_bundle% "RealMapCertificates/relations/basis12233.json"
theorem reductionProof12233 : EqualModuloRelations reduction12233.relations reduction12233.input reduction12233.output := by lin_cert using reduction12233.terms
theorem substitutionProof12233 : IsMapEvaluation generatorImages reduction12233.relations [0,0,1416] reduction12233.output := by lin_cert using reduction12233.terms
def image12234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12234 : InImage map_13_214 image12234 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12234 : Bundle := named_bundle% "RealMapCertificates/relations/basis12234.json"
theorem reductionProof12234 : EqualModuloRelations reduction12234.relations reduction12234.input reduction12234.output := by lin_cert using reduction12234.terms
theorem substitutionProof12234 : IsMapEvaluation generatorImages reduction12234.relations [0,0,1414] reduction12234.output := by lin_cert using reduction12234.terms
def image12235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12235 : InImage map_13_214 image12235 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12235 : Bundle := named_bundle% "RealMapCertificates/relations/basis12235.json"
theorem reductionProof12235 : EqualModuloRelations reduction12235.relations reduction12235.input reduction12235.output := by lin_cert using reduction12235.terms
theorem substitutionProof12235 : IsMapEvaluation generatorImages reduction12235.relations [0,0,0,0,120,324] reduction12235.output := by lin_cert using reduction12235.terms
def map_13_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12435 : InImage map_13_215 image12435 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12435 : Bundle := named_bundle% "RealMapCertificates/relations/basis12435.json"
theorem reductionProof12435 : EqualModuloRelations reduction12435.relations reduction12435.input reduction12435.output := by lin_cert using reduction12435.terms
theorem substitutionProof12435 : IsMapEvaluation generatorImages reduction12435.relations [1477] reduction12435.output := by lin_cert using reduction12435.terms
def image12436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12436 : InImage map_13_215 image12436 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12436 : Bundle := named_bundle% "RealMapCertificates/relations/basis12436.json"
theorem reductionProof12436 : EqualModuloRelations reduction12436.relations reduction12436.input reduction12436.output := by lin_cert using reduction12436.terms
theorem substitutionProof12436 : IsMapEvaluation generatorImages reduction12436.relations [3,1332] reduction12436.output := by lin_cert using reduction12436.terms
def image12437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12437 : InImage map_13_215 image12437 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12437 : Bundle := named_bundle% "RealMapCertificates/relations/basis12437.json"
theorem reductionProof12437 : EqualModuloRelations reduction12437.relations reduction12437.input reduction12437.output := by lin_cert using reduction12437.terms
theorem substitutionProof12437 : IsMapEvaluation generatorImages reduction12437.relations [0,1459] reduction12437.output := by lin_cert using reduction12437.terms
def image12438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12438 : InImage map_13_215 image12438 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12438 : Bundle := named_bundle% "RealMapCertificates/relations/basis12438.json"
theorem reductionProof12438 : EqualModuloRelations reduction12438.relations reduction12438.input reduction12438.output := by lin_cert using reduction12438.terms
theorem substitutionProof12438 : IsMapEvaluation generatorImages reduction12438.relations [0,0,0,1418] reduction12438.output := by lin_cert using reduction12438.terms
def image12439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12439 : InImage map_13_215 image12439 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12439 : Bundle := named_bundle% "RealMapCertificates/relations/basis12439.json"
theorem reductionProof12439 : EqualModuloRelations reduction12439.relations reduction12439.input reduction12439.output := by lin_cert using reduction12439.terms
theorem substitutionProof12439 : IsMapEvaluation generatorImages reduction12439.relations [0,0,0,1417] reduction12439.output := by lin_cert using reduction12439.terms
def map_13_216 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12642 : InImage map_13_216 image12642 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12642 : Bundle := named_bundle% "RealMapCertificates/relations/basis12642.json"
theorem reductionProof12642 : EqualModuloRelations reduction12642.relations reduction12642.input reduction12642.output := by lin_cert using reduction12642.terms
theorem substitutionProof12642 : IsMapEvaluation generatorImages reduction12642.relations [1496] reduction12642.output := by lin_cert using reduction12642.terms
def image12643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12643 : InImage map_13_216 image12643 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12643 : Bundle := named_bundle% "RealMapCertificates/relations/basis12643.json"
theorem reductionProof12643 : EqualModuloRelations reduction12643.relations reduction12643.input reduction12643.output := by lin_cert using reduction12643.terms
theorem substitutionProof12643 : IsMapEvaluation generatorImages reduction12643.relations [3,3,1197] reduction12643.output := by lin_cert using reduction12643.terms
def image12644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12644 : InImage map_13_216 image12644 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12644 : Bundle := named_bundle% "RealMapCertificates/relations/basis12644.json"
theorem reductionProof12644 : EqualModuloRelations reduction12644.relations reduction12644.input reduction12644.output := by lin_cert using reduction12644.terms
theorem substitutionProof12644 : IsMapEvaluation generatorImages reduction12644.relations [1,1458] reduction12644.output := by lin_cert using reduction12644.terms
def image12645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12645 : InImage map_13_216 image12645 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12645 : Bundle := named_bundle% "RealMapCertificates/relations/basis12645.json"
theorem reductionProof12645 : EqualModuloRelations reduction12645.relations reduction12645.input reduction12645.output := by lin_cert using reduction12645.terms
theorem substitutionProof12645 : IsMapEvaluation generatorImages reduction12645.relations [1,1,1414] reduction12645.output := by lin_cert using reduction12645.terms
def image12646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12646 : InImage map_13_216 image12646 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12646 : Bundle := named_bundle% "RealMapCertificates/relations/basis12646.json"
theorem reductionProof12646 : EqualModuloRelations reduction12646.relations reduction12646.input reduction12646.output := by lin_cert using reduction12646.terms
theorem substitutionProof12646 : IsMapEvaluation generatorImages reduction12646.relations [0,7,1178] reduction12646.output := by lin_cert using reduction12646.terms
def image12647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12647 : InImage map_13_216 image12647 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12647 : Bundle := named_bundle% "RealMapCertificates/relations/basis12647.json"
theorem reductionProof12647 : EqualModuloRelations reduction12647.relations reduction12647.input reduction12647.output := by lin_cert using reduction12647.terms
theorem substitutionProof12647 : IsMapEvaluation generatorImages reduction12647.relations [0,0,2,1380] reduction12647.output := by lin_cert using reduction12647.terms
def image12648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12648 : InImage map_13_216 image12648 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12648 : Bundle := named_bundle% "RealMapCertificates/relations/basis12648.json"
theorem reductionProof12648 : EqualModuloRelations reduction12648.relations reduction12648.input reduction12648.output := by lin_cert using reduction12648.terms
theorem substitutionProof12648 : IsMapEvaluation generatorImages reduction12648.relations [0,0,0,0,1420] reduction12648.output := by lin_cert using reduction12648.terms
def map_13_217 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12789 : InImage map_13_217 image12789 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12789 : Bundle := named_bundle% "RealMapCertificates/relations/basis12789.json"
theorem reductionProof12789 : EqualModuloRelations reduction12789.relations reduction12789.input reduction12789.output := by lin_cert using reduction12789.terms
theorem substitutionProof12789 : IsMapEvaluation generatorImages reduction12789.relations [1511] reduction12789.output := by lin_cert using reduction12789.terms
def image12790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12790 : InImage map_13_217 image12790 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12790 : Bundle := named_bundle% "RealMapCertificates/relations/basis12790.json"
theorem reductionProof12790 : EqualModuloRelations reduction12790.relations reduction12790.input reduction12790.output := by lin_cert using reduction12790.terms
theorem substitutionProof12790 : IsMapEvaluation generatorImages reduction12790.relations [144,324] reduction12790.output := by lin_cert using reduction12790.terms
def image12791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12791 : InImage map_13_217 image12791 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12791 : Bundle := named_bundle% "RealMapCertificates/relations/basis12791.json"
theorem reductionProof12791 : EqualModuloRelations reduction12791.relations reduction12791.input reduction12791.output := by lin_cert using reduction12791.terms
theorem substitutionProof12791 : IsMapEvaluation generatorImages reduction12791.relations [7,1215] reduction12791.output := by lin_cert using reduction12791.terms
def image12792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12792 : InImage map_13_217 image12792 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12792 : Bundle := named_bundle% "RealMapCertificates/relations/basis12792.json"
theorem reductionProof12792 : EqualModuloRelations reduction12792.relations reduction12792.input reduction12792.output := by lin_cert using reduction12792.terms
theorem substitutionProof12792 : IsMapEvaluation generatorImages reduction12792.relations [0,3,1345] reduction12792.output := by lin_cert using reduction12792.terms
def image12793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12793 : InImage map_13_217 image12793 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12793 : Bundle := named_bundle% "RealMapCertificates/relations/basis12793.json"
theorem reductionProof12793 : EqualModuloRelations reduction12793.relations reduction12793.input reduction12793.output := by lin_cert using reduction12793.terms
theorem substitutionProof12793 : IsMapEvaluation generatorImages reduction12793.relations [0,0,1479] reduction12793.output := by lin_cert using reduction12793.terms
def image12794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12794 : InImage map_13_217 image12794 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12794 : Bundle := named_bundle% "RealMapCertificates/relations/basis12794.json"
theorem reductionProof12794 : EqualModuloRelations reduction12794.relations reduction12794.input reduction12794.output := by lin_cert using reduction12794.terms
theorem substitutionProof12794 : IsMapEvaluation generatorImages reduction12794.relations [0,0,1478] reduction12794.output := by lin_cert using reduction12794.terms
def image12795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12795 : InImage map_13_217 image12795 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12795 : Bundle := named_bundle% "RealMapCertificates/relations/basis12795.json"
theorem reductionProof12795 : EqualModuloRelations reduction12795.relations reduction12795.input reduction12795.output := by lin_cert using reduction12795.terms
theorem substitutionProof12795 : IsMapEvaluation generatorImages reduction12795.relations [0,0,0,0,0,128,324] reduction12795.output := by lin_cert using reduction12795.terms
def map_13_218 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12999 : InImage map_13_218 image12999 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12999 : Bundle := named_bundle% "RealMapCertificates/relations/basis12999.json"
theorem reductionProof12999 : EqualModuloRelations reduction12999.relations reduction12999.input reduction12999.output := by lin_cert using reduction12999.terms
theorem substitutionProof12999 : IsMapEvaluation generatorImages reduction12999.relations [1527] reduction12999.output := by lin_cert using reduction12999.terms
def image13000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13000 : InImage map_13_218 image13000 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13000 : Bundle := named_bundle% "RealMapCertificates/relations/basis13000.json"
theorem reductionProof13000 : EqualModuloRelations reduction13000.relations reduction13000.input reduction13000.output := by lin_cert using reduction13000.terms
theorem substitutionProof13000 : IsMapEvaluation generatorImages reduction13000.relations [3,3,1230] reduction13000.output := by lin_cert using reduction13000.terms
def image13001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13001 : InImage map_13_218 image13001 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13001 : Bundle := named_bundle% "RealMapCertificates/relations/basis13001.json"
theorem reductionProof13001 : EqualModuloRelations reduction13001.relations reduction13001.input reduction13001.output := by lin_cert using reduction13001.terms
theorem substitutionProof13001 : IsMapEvaluation generatorImages reduction13001.relations [2,1458] reduction13001.output := by lin_cert using reduction13001.terms
def image13002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13002 : InImage map_13_218 image13002 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13002 : Bundle := named_bundle% "RealMapCertificates/relations/basis13002.json"
theorem reductionProof13002 : EqualModuloRelations reduction13002.relations reduction13002.input reduction13002.output := by lin_cert using reduction13002.terms
theorem substitutionProof13002 : IsMapEvaluation generatorImages reduction13002.relations [1,3,1345] reduction13002.output := by lin_cert using reduction13002.terms
def image13003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13003 : InImage map_13_218 image13003 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13003 : Bundle := named_bundle% "RealMapCertificates/relations/basis13003.json"
theorem reductionProof13003 : EqualModuloRelations reduction13003.relations reduction13003.input reduction13003.output := by lin_cert using reduction13003.terms
theorem substitutionProof13003 : IsMapEvaluation generatorImages reduction13003.relations [0,3,3,1216] reduction13003.output := by lin_cert using reduction13003.terms
def image13004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13004 : InImage map_13_218 image13004 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13004 : Bundle := named_bundle% "RealMapCertificates/relations/basis13004.json"
theorem reductionProof13004 : EqualModuloRelations reduction13004.relations reduction13004.input reduction13004.output := by lin_cert using reduction13004.terms
theorem substitutionProof13004 : IsMapEvaluation generatorImages reduction13004.relations [0,0,141,324] reduction13004.output := by lin_cert using reduction13004.terms
def image13005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13005 : InImage map_13_218 image13005 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13005 : Bundle := named_bundle% "RealMapCertificates/relations/basis13005.json"
theorem reductionProof13005 : EqualModuloRelations reduction13005.relations reduction13005.input reduction13005.output := by lin_cert using reduction13005.terms
theorem substitutionProof13005 : IsMapEvaluation generatorImages reduction13005.relations [0,0,2,1418] reduction13005.output := by lin_cert using reduction13005.terms
def map_13_219 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13216 : InImage map_13_219 image13216 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13216 : Bundle := named_bundle% "RealMapCertificates/relations/basis13216.json"
theorem reductionProof13216 : EqualModuloRelations reduction13216.relations reduction13216.input reduction13216.output := by lin_cert using reduction13216.terms
theorem substitutionProof13216 : IsMapEvaluation generatorImages reduction13216.relations [1,1,1479] reduction13216.output := by lin_cert using reduction13216.terms
def image13217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13217 : InImage map_13_219 image13217 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13217 : Bundle := named_bundle% "RealMapCertificates/relations/basis13217.json"
theorem reductionProof13217 : EqualModuloRelations reduction13217.relations reduction13217.input reduction13217.output := by lin_cert using reduction13217.terms
theorem substitutionProof13217 : IsMapEvaluation generatorImages reduction13217.relations [0,7,1232] reduction13217.output := by lin_cert using reduction13217.terms
def image13218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13218 : InImage map_13_219 image13218 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13218 : Bundle := named_bundle% "RealMapCertificates/relations/basis13218.json"
theorem reductionProof13218 : EqualModuloRelations reduction13218.relations reduction13218.input reduction13218.output := by lin_cert using reduction13218.terms
theorem substitutionProof13218 : IsMapEvaluation generatorImages reduction13218.relations [0,0,3,1358] reduction13218.output := by lin_cert using reduction13218.terms
def map_13_220 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image13354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13354 : InImage map_13_220 image13354 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13354 : Bundle := named_bundle% "RealMapCertificates/relations/basis13354.json"
theorem reductionProof13354 : EqualModuloRelations reduction13354.relations reduction13354.input reduction13354.output := by lin_cert using reduction13354.terms
theorem substitutionProof13354 : IsMapEvaluation generatorImages reduction13354.relations [1564] reduction13354.output := by lin_cert using reduction13354.terms
def image13355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13355 : InImage map_13_220 image13355 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13355 : Bundle := named_bundle% "RealMapCertificates/relations/basis13355.json"
theorem reductionProof13355 : EqualModuloRelations reduction13355.relations reduction13355.input reduction13355.output := by lin_cert using reduction13355.terms
theorem substitutionProof13355 : IsMapEvaluation generatorImages reduction13355.relations [151,324] reduction13355.output := by lin_cert using reduction13355.terms
def image13356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13356 : InImage map_13_220 image13356 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13356 : Bundle := named_bundle% "RealMapCertificates/relations/basis13356.json"
theorem reductionProof13356 : EqualModuloRelations reduction13356.relations reduction13356.input reduction13356.output := by lin_cert using reduction13356.terms
theorem substitutionProof13356 : IsMapEvaluation generatorImages reduction13356.relations [7,1274] reduction13356.output := by lin_cert using reduction13356.terms
def image13357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13357 : InImage map_13_220 image13357 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13357 : Bundle := named_bundle% "RealMapCertificates/relations/basis13357.json"
theorem reductionProof13357 : EqualModuloRelations reduction13357.relations reduction13357.input reduction13357.output := by lin_cert using reduction13357.terms
theorem substitutionProof13357 : IsMapEvaluation generatorImages reduction13357.relations [7,1273] reduction13357.output := by lin_cert using reduction13357.terms
def image13358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13358 : InImage map_13_220 image13358 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13358 : Bundle := named_bundle% "RealMapCertificates/relations/basis13358.json"
theorem reductionProof13358 : EqualModuloRelations reduction13358.relations reduction13358.input reduction13358.output := by lin_cert using reduction13358.terms
theorem substitutionProof13358 : IsMapEvaluation generatorImages reduction13358.relations [1,1528] reduction13358.output := by lin_cert using reduction13358.terms
def image13359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13359 : InImage map_13_220 image13359 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13359 : Bundle := named_bundle% "RealMapCertificates/relations/basis13359.json"
theorem reductionProof13359 : EqualModuloRelations reduction13359.relations reduction13359.input reduction13359.output := by lin_cert using reduction13359.terms
theorem substitutionProof13359 : IsMapEvaluation generatorImages reduction13359.relations [0,0,1529] reduction13359.output := by lin_cert using reduction13359.terms
def image13360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13360 : InImage map_13_220 image13360 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13360 : Bundle := named_bundle% "RealMapCertificates/relations/basis13360.json"
theorem reductionProof13360 : EqualModuloRelations reduction13360.relations reduction13360.input reduction13360.output := by lin_cert using reduction13360.terms
theorem substitutionProof13360 : IsMapEvaluation generatorImages reduction13360.relations [0,0,3,1380] reduction13360.output := by lin_cert using reduction13360.terms
def map_13_221 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13560 : InImage map_13_221 image13560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13560 : Bundle := named_bundle% "RealMapCertificates/relations/basis13560.json"
theorem reductionProof13560 : EqualModuloRelations reduction13560.relations reduction13560.input reduction13560.output := by lin_cert using reduction13560.terms
theorem substitutionProof13560 : IsMapEvaluation generatorImages reduction13560.relations [155,324] reduction13560.output := by lin_cert using reduction13560.terms
def image13561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13561 : InImage map_13_221 image13561 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13561 : Bundle := named_bundle% "RealMapCertificates/relations/basis13561.json"
theorem reductionProof13561 : EqualModuloRelations reduction13561.relations reduction13561.input reduction13561.output := by lin_cert using reduction13561.terms
theorem substitutionProof13561 : IsMapEvaluation generatorImages reduction13561.relations [4,1380] reduction13561.output := by lin_cert using reduction13561.terms
def map_13_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13783 : InImage map_13_222 image13783 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13783 : Bundle := named_bundle% "RealMapCertificates/relations/basis13783.json"
theorem reductionProof13783 : EqualModuloRelations reduction13783.relations reduction13783.input reduction13783.output := by lin_cert using reduction13783.terms
theorem substitutionProof13783 : IsMapEvaluation generatorImages reduction13783.relations [1602] reduction13783.output := by lin_cert using reduction13783.terms
def image13784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13784 : InImage map_13_222 image13784 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13784 : Bundle := named_bundle% "RealMapCertificates/relations/basis13784.json"
theorem reductionProof13784 : EqualModuloRelations reduction13784.relations reduction13784.input reduction13784.output := by lin_cert using reduction13784.terms
theorem substitutionProof13784 : IsMapEvaluation generatorImages reduction13784.relations [13,83,324] reduction13784.output := by lin_cert using reduction13784.terms
def image13785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13785 : InImage map_13_222 image13785 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13785 : Bundle := named_bundle% "RealMapCertificates/relations/basis13785.json"
theorem reductionProof13785 : EqualModuloRelations reduction13785.relations reduction13785.input reduction13785.output := by lin_cert using reduction13785.terms
theorem substitutionProof13785 : IsMapEvaluation generatorImages reduction13785.relations [0,0,0,0,1531] reduction13785.output := by lin_cert using reduction13785.terms
def map_13_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13925 : InImage map_13_223 image13925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13925 : Bundle := named_bundle% "RealMapCertificates/relations/basis13925.json"
theorem reductionProof13925 : EqualModuloRelations reduction13925.relations reduction13925.input reduction13925.output := by lin_cert using reduction13925.terms
theorem substitutionProof13925 : IsMapEvaluation generatorImages reduction13925.relations [1,1582] reduction13925.output := by lin_cert using reduction13925.terms
def image13926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13926 : InImage map_13_223 image13926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13926 : Bundle := named_bundle% "RealMapCertificates/relations/basis13926.json"
theorem reductionProof13926 : EqualModuloRelations reduction13926.relations reduction13926.input reduction13926.output := by lin_cert using reduction13926.terms
theorem substitutionProof13926 : IsMapEvaluation generatorImages reduction13926.relations [0,1603] reduction13926.output := by lin_cert using reduction13926.terms
def image13927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13927 : InImage map_13_223 image13927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13927 : Bundle := named_bundle% "RealMapCertificates/relations/basis13927.json"
theorem reductionProof13927 : EqualModuloRelations reduction13927.relations reduction13927.input reduction13927.output := by lin_cert using reduction13927.terms
theorem substitutionProof13927 : IsMapEvaluation generatorImages reduction13927.relations [0,0,0,7,1281] reduction13927.output := by lin_cert using reduction13927.terms
def map_13_224 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14131 : InImage map_13_224 image14131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14131 : Bundle := named_bundle% "RealMapCertificates/relations/basis14131.json"
theorem reductionProof14131 : EqualModuloRelations reduction14131.relations reduction14131.input reduction14131.output := by lin_cert using reduction14131.terms
theorem substitutionProof14131 : IsMapEvaluation generatorImages reduction14131.relations [7,1343] reduction14131.output := by lin_cert using reduction14131.terms
def image14132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14132 : InImage map_13_224 image14132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14132 : Bundle := named_bundle% "RealMapCertificates/relations/basis14132.json"
theorem reductionProof14132 : EqualModuloRelations reduction14132.relations reduction14132.input reduction14132.output := by lin_cert using reduction14132.terms
theorem substitutionProof14132 : IsMapEvaluation generatorImages reduction14132.relations [7,1342] reduction14132.output := by lin_cert using reduction14132.terms
def image14133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14133 : InImage map_13_224 image14133 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14133 : Bundle := named_bundle% "RealMapCertificates/relations/basis14133.json"
theorem reductionProof14133 : EqualModuloRelations reduction14133.relations reduction14133.input reduction14133.output := by lin_cert using reduction14133.terms
theorem substitutionProof14133 : IsMapEvaluation generatorImages reduction14133.relations [3,3,1345] reduction14133.output := by lin_cert using reduction14133.terms
def image14134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14134 : InImage map_13_224 image14134 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14134 : Bundle := named_bundle% "RealMapCertificates/relations/basis14134.json"
theorem reductionProof14134 : EqualModuloRelations reduction14134.relations reduction14134.input reduction14134.output := by lin_cert using reduction14134.terms
theorem substitutionProof14134 : IsMapEvaluation generatorImages reduction14134.relations [1,1603] reduction14134.output := by lin_cert using reduction14134.terms
def map_13_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14335 : InImage map_13_225 image14335 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14335 : Bundle := named_bundle% "RealMapCertificates/relations/basis14335.json"
theorem reductionProof14335 : EqualModuloRelations reduction14335.relations reduction14335.input reduction14335.output := by lin_cert using reduction14335.terms
theorem substitutionProof14335 : IsMapEvaluation generatorImages reduction14335.relations [7,1356] reduction14335.output := by lin_cert using reduction14335.terms
def image14336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14336 : InImage map_13_225 image14336 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14336 : Bundle := named_bundle% "RealMapCertificates/relations/basis14336.json"
theorem reductionProof14336 : EqualModuloRelations reduction14336.relations reduction14336.input reduction14336.output := by lin_cert using reduction14336.terms
theorem substitutionProof14336 : IsMapEvaluation generatorImages reduction14336.relations [0,7,1346] reduction14336.output := by lin_cert using reduction14336.terms
def image14337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14337 : InImage map_13_225 image14337 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14337 : Bundle := named_bundle% "RealMapCertificates/relations/basis14337.json"
theorem reductionProof14337 : EqualModuloRelations reduction14337.relations reduction14337.input reduction14337.output := by lin_cert using reduction14337.terms
theorem substitutionProof14337 : IsMapEvaluation generatorImages reduction14337.relations [0,7,1345] reduction14337.output := by lin_cert using reduction14337.terms
def map_13_226 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14487 : InImage map_13_226 image14487 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14487 : Bundle := named_bundle% "RealMapCertificates/relations/basis14487.json"
theorem reductionProof14487 : EqualModuloRelations reduction14487.relations reduction14487.input reduction14487.output := by lin_cert using reduction14487.terms
theorem substitutionProof14487 : IsMapEvaluation generatorImages reduction14487.relations [170,324] reduction14487.output := by lin_cert using reduction14487.terms
def image14488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14488 : InImage map_13_226 image14488 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14488 : Bundle := named_bundle% "RealMapCertificates/relations/basis14488.json"
theorem reductionProof14488 : EqualModuloRelations reduction14488.relations reduction14488.input reduction14488.output := by lin_cert using reduction14488.terms
theorem substitutionProof14488 : IsMapEvaluation generatorImages reduction14488.relations [1,7,1346] reduction14488.output := by lin_cert using reduction14488.terms
def image14489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14489 : InImage map_13_226 image14489 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14489 : Bundle := named_bundle% "RealMapCertificates/relations/basis14489.json"
theorem reductionProof14489 : EqualModuloRelations reduction14489.relations reduction14489.input reduction14489.output := by lin_cert using reduction14489.terms
theorem substitutionProof14489 : IsMapEvaluation generatorImages reduction14489.relations [1,7,1345] reduction14489.output := by lin_cert using reduction14489.terms
def image14490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14490 : InImage map_13_226 image14490 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14490 : Bundle := named_bundle% "RealMapCertificates/relations/basis14490.json"
theorem reductionProof14490 : EqualModuloRelations reduction14490.relations reduction14490.input reduction14490.output := by lin_cert using reduction14490.terms
theorem substitutionProof14490 : IsMapEvaluation generatorImages reduction14490.relations [0,7,1357] reduction14490.output := by lin_cert using reduction14490.terms
def map_13_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14919 : InImage map_13_228 image14919 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14919 : Bundle := named_bundle% "RealMapCertificates/relations/basis14919.json"
theorem reductionProof14919 : EqualModuloRelations reduction14919.relations reduction14919.input reduction14919.output := by lin_cert using reduction14919.terms
theorem substitutionProof14919 : IsMapEvaluation generatorImages reduction14919.relations [177,324] reduction14919.output := by lin_cert using reduction14919.terms
def image14920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14920 : InImage map_13_228 image14920 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14920 : Bundle := named_bundle% "RealMapCertificates/relations/basis14920.json"
theorem reductionProof14920 : EqualModuloRelations reduction14920.relations reduction14920.input reduction14920.output := by lin_cert using reduction14920.terms
theorem substitutionProof14920 : IsMapEvaluation generatorImages reduction14920.relations [13,107,324] reduction14920.output := by lin_cert using reduction14920.terms
def image14921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14921 : InImage map_13_228 image14921 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14921 : Bundle := named_bundle% "RealMapCertificates/relations/basis14921.json"
theorem reductionProof14921 : EqualModuloRelations reduction14921.relations reduction14921.input reduction14921.output := by lin_cert using reduction14921.terms
theorem substitutionProof14921 : IsMapEvaluation generatorImages reduction14921.relations [7,7,1120] reduction14921.output := by lin_cert using reduction14921.terms
def image14922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14922 : InImage map_13_228 image14922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14922 : Bundle := named_bundle% "RealMapCertificates/relations/basis14922.json"
theorem reductionProof14922 : EqualModuloRelations reduction14922.relations reduction14922.input reduction14922.output := by lin_cert using reduction14922.terms
theorem substitutionProof14922 : IsMapEvaluation generatorImages reduction14922.relations [0,0,7,1380] reduction14922.output := by lin_cert using reduction14922.terms
def map_13_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15073 : InImage map_13_229 image15073 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15073 : Bundle := named_bundle% "RealMapCertificates/relations/basis15073.json"
theorem reductionProof15073 : EqualModuloRelations reduction15073.relations reduction15073.input reduction15073.output := by lin_cert using reduction15073.terms
theorem substitutionProof15073 : IsMapEvaluation generatorImages reduction15073.relations [0,178,324] reduction15073.output := by lin_cert using reduction15073.terms
def image15074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15074 : InImage map_13_229 image15074 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15074 : Bundle := named_bundle% "RealMapCertificates/relations/basis15074.json"
theorem reductionProof15074 : EqualModuloRelations reduction15074.relations reduction15074.input reduction15074.output := by lin_cert using reduction15074.terms
theorem substitutionProof15074 : IsMapEvaluation generatorImages reduction15074.relations [0,7,1416] reduction15074.output := by lin_cert using reduction15074.terms
def image15075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15075 : InImage map_13_229 image15075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15075 : Bundle := named_bundle% "RealMapCertificates/relations/basis15075.json"
theorem reductionProof15075 : EqualModuloRelations reduction15075.relations reduction15075.input reduction15075.output := by lin_cert using reduction15075.terms
theorem substitutionProof15075 : IsMapEvaluation generatorImages reduction15075.relations [0,7,1414] reduction15075.output := by lin_cert using reduction15075.terms
def image15076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15076 : InImage map_13_229 image15076 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15076 : Bundle := named_bundle% "RealMapCertificates/relations/basis15076.json"
theorem reductionProof15076 : EqualModuloRelations reduction15076.relations reduction15076.input reduction15076.output := by lin_cert using reduction15076.terms
theorem substitutionProof15076 : IsMapEvaluation generatorImages reduction15076.relations [0,0,0,1676] reduction15076.output := by lin_cert using reduction15076.terms
end RealMapCertificates
