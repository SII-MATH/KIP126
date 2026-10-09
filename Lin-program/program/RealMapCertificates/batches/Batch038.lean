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
  | 23 => [[7,7]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 75 => []
  | 134 => []
  | 178 => []
  | 181 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 195 => []
  | 197 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 221 => []
  | 243 => []
  | 250 => []
  | 261 => []
  | 262 => []
  | 275 => []
  | 314 => []
  | 324 => []
  | 335 => []
  | 400 => []
  | 1417 => []
  | 1418 => []
  | 1603 => []
  | 1684 => []
  | 1769 => []
  | 1801 => []
  | 1802 => []
  | 1803 => []
  | 1804 => []
  | 1805 => []
  | 1825 => []
  | 1849 => []
  | 1850 => []
  | 1851 => []
  | 1852 => []
  | 1853 => []
  | 1885 => []
  | 1886 => []
  | 1897 => []
  | 1898 => []
  | 1922 => []
  | 1923 => []
  | 1954 => []
  | 1955 => []
  | 1957 => []
  | 1984 => []
  | 1985 => []
  | 1986 => []
  | 1987 => []
  | 2029 => []
  | 2030 => []
  | 2033 => []
  | 2082 => []
  | 2083 => []
  | 2084 => []
  | 2085 => []
  | 2117 => []
  | 2152 => []
  | 2153 => []
  | 2154 => []
  | 2155 => []
  | 2236 => []
  | 2272 => []
  | 2372 => []
  | 2373 => []
  | 2484 => []
  | 2485 => []
  | 2530 => []
  | 2531 => []
  | 2576 => []
  | 2577 => []
  | 2622 => []
  | 2724 => []
  | 2725 => []
  | 2726 => []
  | 2727 => []
  | 2728 => []
  | _ => []
def map_13_230 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15304 : InImage map_13_230 image15304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15304 : Bundle := named_bundle% "RealMapCertificates/relations/basis15304.json"
theorem reductionProof15304 : EqualModuloRelations reduction15304.relations reduction15304.input reduction15304.output := by lin_cert using reduction15304.terms
theorem substitutionProof15304 : IsMapEvaluation generatorImages reduction15304.relations [187,324] reduction15304.output := by lin_cert using reduction15304.terms
def image15305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15305 : InImage map_13_230 image15305 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15305 : Bundle := named_bundle% "RealMapCertificates/relations/basis15305.json"
theorem reductionProof15305 : EqualModuloRelations reduction15305.relations reduction15305.input reduction15305.output := by lin_cert using reduction15305.terms
theorem substitutionProof15305 : IsMapEvaluation generatorImages reduction15305.relations [0,0,7,1418] reduction15305.output := by lin_cert using reduction15305.terms
def image15306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15306 : InImage map_13_230 image15306 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15306 : Bundle := named_bundle% "RealMapCertificates/relations/basis15306.json"
theorem reductionProof15306 : EqualModuloRelations reduction15306.relations reduction15306.input reduction15306.output := by lin_cert using reduction15306.terms
theorem substitutionProof15306 : IsMapEvaluation generatorImages reduction15306.relations [0,0,7,1417] reduction15306.output := by lin_cert using reduction15306.terms
def map_13_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15550 : InImage map_13_231 image15550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15550 : Bundle := named_bundle% "RealMapCertificates/relations/basis15550.json"
theorem reductionProof15550 : EqualModuloRelations reduction15550.relations reduction15550.input reduction15550.output := by lin_cert using reduction15550.terms
theorem substitutionProof15550 : IsMapEvaluation generatorImages reduction15550.relations [1769] reduction15550.output := by lin_cert using reduction15550.terms
def image15551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15551 : InImage map_13_231 image15551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15551 : Bundle := named_bundle% "RealMapCertificates/relations/basis15551.json"
theorem reductionProof15551 : EqualModuloRelations reduction15551.relations reduction15551.input reduction15551.output := by lin_cert using reduction15551.terms
theorem substitutionProof15551 : IsMapEvaluation generatorImages reduction15551.relations [23,75,324] reduction15551.output := by lin_cert using reduction15551.terms
def image15552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15552 : InImage map_13_231 image15552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15552 : Bundle := named_bundle% "RealMapCertificates/relations/basis15552.json"
theorem reductionProof15552 : EqualModuloRelations reduction15552.relations reduction15552.input reduction15552.output := by lin_cert using reduction15552.terms
theorem substitutionProof15552 : IsMapEvaluation generatorImages reduction15552.relations [0,188,324] reduction15552.output := by lin_cert using reduction15552.terms
def image15553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15553 : InImage map_13_231 image15553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15553 : Bundle := named_bundle% "RealMapCertificates/relations/basis15553.json"
theorem reductionProof15553 : EqualModuloRelations reduction15553.relations reduction15553.input reduction15553.output := by lin_cert using reduction15553.terms
theorem substitutionProof15553 : IsMapEvaluation generatorImages reduction15553.relations [0,0,0,0,1684] reduction15553.output := by lin_cert using reduction15553.terms
def map_13_232 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15719 : InImage map_13_232 image15719 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15719 : Bundle := named_bundle% "RealMapCertificates/relations/basis15719.json"
theorem reductionProof15719 : EqualModuloRelations reduction15719.relations reduction15719.input reduction15719.output := by lin_cert using reduction15719.terms
theorem substitutionProof15719 : IsMapEvaluation generatorImages reduction15719.relations [1803] reduction15719.output := by lin_cert using reduction15719.terms
def image15720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15720 : InImage map_13_232 image15720 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15720 : Bundle := named_bundle% "RealMapCertificates/relations/basis15720.json"
theorem reductionProof15720 : EqualModuloRelations reduction15720.relations reduction15720.input reduction15720.output := by lin_cert using reduction15720.terms
theorem substitutionProof15720 : IsMapEvaluation generatorImages reduction15720.relations [1802] reduction15720.output := by lin_cert using reduction15720.terms
def image15721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15721 : InImage map_13_232 image15721 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15721 : Bundle := named_bundle% "RealMapCertificates/relations/basis15721.json"
theorem reductionProof15721 : EqualModuloRelations reduction15721.relations reduction15721.input reduction15721.output := by lin_cert using reduction15721.terms
theorem substitutionProof15721 : IsMapEvaluation generatorImages reduction15721.relations [1801] reduction15721.output := by lin_cert using reduction15721.terms
def image15722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15722 : InImage map_13_232 image15722 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15722 : Bundle := named_bundle% "RealMapCertificates/relations/basis15722.json"
theorem reductionProof15722 : EqualModuloRelations reduction15722.relations reduction15722.input reduction15722.output := by lin_cert using reduction15722.terms
theorem substitutionProof15722 : IsMapEvaluation generatorImages reduction15722.relations [195,324] reduction15722.output := by lin_cert using reduction15722.terms
def image15723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15723 : InImage map_13_232 image15723 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15723 : Bundle := named_bundle% "RealMapCertificates/relations/basis15723.json"
theorem reductionProof15723 : EqualModuloRelations reduction15723.relations reduction15723.input reduction15723.output := by lin_cert using reduction15723.terms
theorem substitutionProof15723 : IsMapEvaluation generatorImages reduction15723.relations [0,0,189,324] reduction15723.output := by lin_cert using reduction15723.terms
def map_13_233 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15957 : InImage map_13_233 image15957 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15957 : Bundle := named_bundle% "RealMapCertificates/relations/basis15957.json"
theorem reductionProof15957 : EqualModuloRelations reduction15957.relations reduction15957.input reduction15957.output := by lin_cert using reduction15957.terms
theorem substitutionProof15957 : IsMapEvaluation generatorImages reduction15957.relations [201,324] reduction15957.output := by lin_cert using reduction15957.terms
def image15958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15958 : InImage map_13_233 image15958 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15958 : Bundle := named_bundle% "RealMapCertificates/relations/basis15958.json"
theorem reductionProof15958 : EqualModuloRelations reduction15958.relations reduction15958.input reduction15958.output := by lin_cert using reduction15958.terms
theorem substitutionProof15958 : IsMapEvaluation generatorImages reduction15958.relations [0,1805] reduction15958.output := by lin_cert using reduction15958.terms
def map_13_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16209 : InImage map_13_234 image16209 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16209 : Bundle := named_bundle% "RealMapCertificates/relations/basis16209.json"
theorem reductionProof16209 : EqualModuloRelations reduction16209.relations reduction16209.input reduction16209.output := by lin_cert using reduction16209.terms
theorem substitutionProof16209 : IsMapEvaluation generatorImages reduction16209.relations [1851] reduction16209.output := by lin_cert using reduction16209.terms
def image16210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16210 : InImage map_13_234 image16210 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16210 : Bundle := named_bundle% "RealMapCertificates/relations/basis16210.json"
theorem reductionProof16210 : EqualModuloRelations reduction16210.relations reduction16210.input reduction16210.output := by lin_cert using reduction16210.terms
theorem substitutionProof16210 : IsMapEvaluation generatorImages reduction16210.relations [1850] reduction16210.output := by lin_cert using reduction16210.terms
def image16211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16211 : InImage map_13_234 image16211 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16211 : Bundle := named_bundle% "RealMapCertificates/relations/basis16211.json"
theorem reductionProof16211 : EqualModuloRelations reduction16211.relations reduction16211.input reduction16211.output := by lin_cert using reduction16211.terms
theorem substitutionProof16211 : IsMapEvaluation generatorImages reduction16211.relations [1849] reduction16211.output := by lin_cert using reduction16211.terms
def image16212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16212 : InImage map_13_234 image16212 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16212 : Bundle := named_bundle% "RealMapCertificates/relations/basis16212.json"
theorem reductionProof16212 : EqualModuloRelations reduction16212.relations reduction16212.input reduction16212.output := by lin_cert using reduction16212.terms
theorem substitutionProof16212 : IsMapEvaluation generatorImages reduction16212.relations [2,188,324] reduction16212.output := by lin_cert using reduction16212.terms
def image16213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16213 : InImage map_13_234 image16213 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16213 : Bundle := named_bundle% "RealMapCertificates/relations/basis16213.json"
theorem reductionProof16213 : EqualModuloRelations reduction16213.relations reduction16213.input reduction16213.output := by lin_cert using reduction16213.terms
theorem substitutionProof16213 : IsMapEvaluation generatorImages reduction16213.relations [1,1,189,324] reduction16213.output := by lin_cert using reduction16213.terms
def image16214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16214 : InImage map_13_234 image16214 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16214 : Bundle := named_bundle% "RealMapCertificates/relations/basis16214.json"
theorem reductionProof16214 : EqualModuloRelations reduction16214.relations reduction16214.input reduction16214.output := by lin_cert using reduction16214.terms
theorem substitutionProof16214 : IsMapEvaluation generatorImages reduction16214.relations [0,1825] reduction16214.output := by lin_cert using reduction16214.terms
def map_13_235 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16397 : InImage map_13_235 image16397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16397 : Bundle := named_bundle% "RealMapCertificates/relations/basis16397.json"
theorem reductionProof16397 : EqualModuloRelations reduction16397.relations reduction16397.input reduction16397.output := by lin_cert using reduction16397.terms
theorem substitutionProof16397 : IsMapEvaluation generatorImages reduction16397.relations [1886] reduction16397.output := by lin_cert using reduction16397.terms
def image16398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16398 : InImage map_13_235 image16398 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16398 : Bundle := named_bundle% "RealMapCertificates/relations/basis16398.json"
theorem reductionProof16398 : EqualModuloRelations reduction16398.relations reduction16398.input reduction16398.output := by lin_cert using reduction16398.terms
theorem substitutionProof16398 : IsMapEvaluation generatorImages reduction16398.relations [1885] reduction16398.output := by lin_cert using reduction16398.terms
def image16399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16399 : InImage map_13_235 image16399 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16399 : Bundle := named_bundle% "RealMapCertificates/relations/basis16399.json"
theorem reductionProof16399 : EqualModuloRelations reduction16399.relations reduction16399.input reduction16399.output := by lin_cert using reduction16399.terms
theorem substitutionProof16399 : IsMapEvaluation generatorImages reduction16399.relations [0,1852] reduction16399.output := by lin_cert using reduction16399.terms
def map_13_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16624 : InImage map_13_236 image16624 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16624 : Bundle := named_bundle% "RealMapCertificates/relations/basis16624.json"
theorem reductionProof16624 : EqualModuloRelations reduction16624.relations reduction16624.input reduction16624.output := by lin_cert using reduction16624.terms
theorem substitutionProof16624 : IsMapEvaluation generatorImages reduction16624.relations [1897] reduction16624.output := by lin_cert using reduction16624.terms
def image16625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16625 : InImage map_13_236 image16625 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16625 : Bundle := named_bundle% "RealMapCertificates/relations/basis16625.json"
theorem reductionProof16625 : EqualModuloRelations reduction16625.relations reduction16625.input reduction16625.output := by lin_cert using reduction16625.terms
theorem substitutionProof16625 : IsMapEvaluation generatorImages reduction16625.relations [212,324] reduction16625.output := by lin_cert using reduction16625.terms
def image16626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16626 : InImage map_13_236 image16626 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16626 : Bundle := named_bundle% "RealMapCertificates/relations/basis16626.json"
theorem reductionProof16626 : EqualModuloRelations reduction16626.relations reduction16626.input reduction16626.output := by lin_cert using reduction16626.terms
theorem substitutionProof16626 : IsMapEvaluation generatorImages reduction16626.relations [3,178,324] reduction16626.output := by lin_cert using reduction16626.terms
def image16627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16627 : InImage map_13_236 image16627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16627 : Bundle := named_bundle% "RealMapCertificates/relations/basis16627.json"
theorem reductionProof16627 : EqualModuloRelations reduction16627.relations reduction16627.input reduction16627.output := by lin_cert using reduction16627.terms
theorem substitutionProof16627 : IsMapEvaluation generatorImages reduction16627.relations [2,1804] reduction16627.output := by lin_cert using reduction16627.terms
def map_13_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16873 : InImage map_13_237 image16873 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16873 : Bundle := named_bundle% "RealMapCertificates/relations/basis16873.json"
theorem reductionProof16873 : EqualModuloRelations reduction16873.relations reduction16873.input reduction16873.output := by lin_cert using reduction16873.terms
theorem substitutionProof16873 : IsMapEvaluation generatorImages reduction16873.relations [1922] reduction16873.output := by lin_cert using reduction16873.terms
def image16874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16874 : InImage map_13_237 image16874 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16874 : Bundle := named_bundle% "RealMapCertificates/relations/basis16874.json"
theorem reductionProof16874 : EqualModuloRelations reduction16874.relations reduction16874.input reduction16874.output := by lin_cert using reduction16874.terms
theorem substitutionProof16874 : IsMapEvaluation generatorImages reduction16874.relations [13,134,324] reduction16874.output := by lin_cert using reduction16874.terms
def image16875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16875 : InImage map_13_237 image16875 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16875 : Bundle := named_bundle% "RealMapCertificates/relations/basis16875.json"
theorem reductionProof16875 : EqualModuloRelations reduction16875.relations reduction16875.input reduction16875.output := by lin_cert using reduction16875.terms
theorem substitutionProof16875 : IsMapEvaluation generatorImages reduction16875.relations [2,1825] reduction16875.output := by lin_cert using reduction16875.terms
def image16876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16876 : InImage map_13_237 image16876 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16876 : Bundle := named_bundle% "RealMapCertificates/relations/basis16876.json"
theorem reductionProof16876 : EqualModuloRelations reduction16876.relations reduction16876.input reduction16876.output := by lin_cert using reduction16876.terms
theorem substitutionProof16876 : IsMapEvaluation generatorImages reduction16876.relations [0,1898] reduction16876.output := by lin_cert using reduction16876.terms
def image16877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16877 : InImage map_13_237 image16877 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16877 : Bundle := named_bundle% "RealMapCertificates/relations/basis16877.json"
theorem reductionProof16877 : EqualModuloRelations reduction16877.relations reduction16877.input reduction16877.output := by lin_cert using reduction16877.terms
theorem substitutionProof16877 : IsMapEvaluation generatorImages reduction16877.relations [0,0,209,324] reduction16877.output := by lin_cert using reduction16877.terms
def map_13_238 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17068 : InImage map_13_238 image17068 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17068 : Bundle := named_bundle% "RealMapCertificates/relations/basis17068.json"
theorem reductionProof17068 : EqualModuloRelations reduction17068.relations reduction17068.input reduction17068.output := by lin_cert using reduction17068.terms
theorem substitutionProof17068 : IsMapEvaluation generatorImages reduction17068.relations [197,400] reduction17068.output := by lin_cert using reduction17068.terms
def image17069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17069 : InImage map_13_238 image17069 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17069 : Bundle := named_bundle% "RealMapCertificates/relations/basis17069.json"
theorem reductionProof17069 : EqualModuloRelations reduction17069.relations reduction17069.input reduction17069.output := by lin_cert using reduction17069.terms
theorem substitutionProof17069 : IsMapEvaluation generatorImages reduction17069.relations [7,1603] reduction17069.output := by lin_cert using reduction17069.terms
def image17070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17070 : InImage map_13_238 image17070 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17070 : Bundle := named_bundle% "RealMapCertificates/relations/basis17070.json"
theorem reductionProof17070 : EqualModuloRelations reduction17070.relations reduction17070.input reduction17070.output := by lin_cert using reduction17070.terms
theorem substitutionProof17070 : IsMapEvaluation generatorImages reduction17070.relations [3,188,324] reduction17070.output := by lin_cert using reduction17070.terms
def image17071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17071 : InImage map_13_238 image17071 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17071 : Bundle := named_bundle% "RealMapCertificates/relations/basis17071.json"
theorem reductionProof17071 : EqualModuloRelations reduction17071.relations reduction17071.input reduction17071.output := by lin_cert using reduction17071.terms
theorem substitutionProof17071 : IsMapEvaluation generatorImages reduction17071.relations [2,1852] reduction17071.output := by lin_cert using reduction17071.terms
def image17072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17072 : InImage map_13_238 image17072 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17072 : Bundle := named_bundle% "RealMapCertificates/relations/basis17072.json"
theorem reductionProof17072 : EqualModuloRelations reduction17072.relations reduction17072.input reduction17072.output := by lin_cert using reduction17072.terms
theorem substitutionProof17072 : IsMapEvaluation generatorImages reduction17072.relations [2,2,189,324] reduction17072.output := by lin_cert using reduction17072.terms
def image17073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17073 : InImage map_13_238 image17073 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17073 : Bundle := named_bundle% "RealMapCertificates/relations/basis17073.json"
theorem reductionProof17073 : EqualModuloRelations reduction17073.relations reduction17073.input reduction17073.output := by lin_cert using reduction17073.terms
theorem substitutionProof17073 : IsMapEvaluation generatorImages reduction17073.relations [1,1898] reduction17073.output := by lin_cert using reduction17073.terms
def image17074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17074 : InImage map_13_238 image17074 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17074 : Bundle := named_bundle% "RealMapCertificates/relations/basis17074.json"
theorem reductionProof17074 : EqualModuloRelations reduction17074.relations reduction17074.input reduction17074.output := by lin_cert using reduction17074.terms
theorem substitutionProof17074 : IsMapEvaluation generatorImages reduction17074.relations [0,1923] reduction17074.output := by lin_cert using reduction17074.terms
def map_13_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17321 : InImage map_13_239 image17321 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17321 : Bundle := named_bundle% "RealMapCertificates/relations/basis17321.json"
theorem reductionProof17321 : EqualModuloRelations reduction17321.relations reduction17321.input reduction17321.output := by lin_cert using reduction17321.terms
theorem substitutionProof17321 : IsMapEvaluation generatorImages reduction17321.relations [1985] reduction17321.output := by lin_cert using reduction17321.terms
def image17322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17322 : InImage map_13_239 image17322 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17322 : Bundle := named_bundle% "RealMapCertificates/relations/basis17322.json"
theorem reductionProof17322 : EqualModuloRelations reduction17322.relations reduction17322.input reduction17322.output := by lin_cert using reduction17322.terms
theorem substitutionProof17322 : IsMapEvaluation generatorImages reduction17322.relations [1984] reduction17322.output := by lin_cert using reduction17322.terms
def image17323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17323 : InImage map_13_239 image17323 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17323 : Bundle := named_bundle% "RealMapCertificates/relations/basis17323.json"
theorem reductionProof17323 : EqualModuloRelations reduction17323.relations reduction17323.input reduction17323.output := by lin_cert using reduction17323.terms
theorem substitutionProof17323 : IsMapEvaluation generatorImages reduction17323.relations [1,1,209,324] reduction17323.output := by lin_cert using reduction17323.terms
def image17324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17324 : InImage map_13_239 image17324 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17324 : Bundle := named_bundle% "RealMapCertificates/relations/basis17324.json"
theorem reductionProof17324 : EqualModuloRelations reduction17324.relations reduction17324.input reduction17324.output := by lin_cert using reduction17324.terms
theorem substitutionProof17324 : IsMapEvaluation generatorImages reduction17324.relations [0,1954] reduction17324.output := by lin_cert using reduction17324.terms
def image17325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17325 : InImage map_13_239 image17325 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17325 : Bundle := named_bundle% "RealMapCertificates/relations/basis17325.json"
theorem reductionProof17325 : EqualModuloRelations reduction17325.relations reduction17325.input reduction17325.output := by lin_cert using reduction17325.terms
theorem substitutionProof17325 : IsMapEvaluation generatorImages reduction17325.relations [0,3,189,324] reduction17325.output := by lin_cert using reduction17325.terms
def map_13_240 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image17618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17618 : InImage map_13_240 image17618 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction17618 : Bundle := named_bundle% "RealMapCertificates/relations/basis17618.json"
theorem reductionProof17618 : EqualModuloRelations reduction17618.relations reduction17618.input reduction17618.output := by lin_cert using reduction17618.terms
theorem substitutionProof17618 : IsMapEvaluation generatorImages reduction17618.relations [2029] reduction17618.output := by lin_cert using reduction17618.terms
def image17619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17619 : InImage map_13_240 image17619 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction17619 : Bundle := named_bundle% "RealMapCertificates/relations/basis17619.json"
theorem reductionProof17619 : EqualModuloRelations reduction17619.relations reduction17619.input reduction17619.output := by lin_cert using reduction17619.terms
theorem substitutionProof17619 : IsMapEvaluation generatorImages reduction17619.relations [3,1805] reduction17619.output := by lin_cert using reduction17619.terms
def image17620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17620 : InImage map_13_240 image17620 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction17620 : Bundle := named_bundle% "RealMapCertificates/relations/basis17620.json"
theorem reductionProof17620 : EqualModuloRelations reduction17620.relations reduction17620.input reduction17620.output := by lin_cert using reduction17620.terms
theorem substitutionProof17620 : IsMapEvaluation generatorImages reduction17620.relations [3,1804] reduction17620.output := by lin_cert using reduction17620.terms
def image17621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17621 : InImage map_13_240 image17621 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction17621 : Bundle := named_bundle% "RealMapCertificates/relations/basis17621.json"
theorem reductionProof17621 : EqualModuloRelations reduction17621.relations reduction17621.input reduction17621.output := by lin_cert using reduction17621.terms
theorem substitutionProof17621 : IsMapEvaluation generatorImages reduction17621.relations [1,1954] reduction17621.output := by lin_cert using reduction17621.terms
def image17622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17622 : InImage map_13_240 image17622 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction17622 : Bundle := named_bundle% "RealMapCertificates/relations/basis17622.json"
theorem reductionProof17622 : EqualModuloRelations reduction17622.relations reduction17622.input reduction17622.output := by lin_cert using reduction17622.terms
theorem substitutionProof17622 : IsMapEvaluation generatorImages reduction17622.relations [1,3,189,324] reduction17622.output := by lin_cert using reduction17622.terms
def image17623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17623 : InImage map_13_240 image17623 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction17623 : Bundle := named_bundle% "RealMapCertificates/relations/basis17623.json"
theorem reductionProof17623 : EqualModuloRelations reduction17623.relations reduction17623.input reduction17623.output := by lin_cert using reduction17623.terms
theorem substitutionProof17623 : IsMapEvaluation generatorImages reduction17623.relations [0,1987] reduction17623.output := by lin_cert using reduction17623.terms
def image17624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17624 : InImage map_13_240 image17624 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction17624 : Bundle := named_bundle% "RealMapCertificates/relations/basis17624.json"
theorem reductionProof17624 : EqualModuloRelations reduction17624.relations reduction17624.input reduction17624.output := by lin_cert using reduction17624.terms
theorem substitutionProof17624 : IsMapEvaluation generatorImages reduction17624.relations [0,1986] reduction17624.output := by lin_cert using reduction17624.terms
def image17625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17625 : InImage map_13_240 image17625 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction17625 : Bundle := named_bundle% "RealMapCertificates/relations/basis17625.json"
theorem reductionProof17625 : EqualModuloRelations reduction17625.relations reduction17625.input reduction17625.output := by lin_cert using reduction17625.terms
theorem substitutionProof17625 : IsMapEvaluation generatorImages reduction17625.relations [0,0,1955] reduction17625.output := by lin_cert using reduction17625.terms
def image17626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17626 : InImage map_13_240 image17626 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction17626 : Bundle := named_bundle% "RealMapCertificates/relations/basis17626.json"
theorem reductionProof17626 : EqualModuloRelations reduction17626.relations reduction17626.input reduction17626.output := by lin_cert using reduction17626.terms
theorem substitutionProof17626 : IsMapEvaluation generatorImages reduction17626.relations [0,0,221,324] reduction17626.output := by lin_cert using reduction17626.terms
def map_13_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17842 : InImage map_13_241 image17842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17842 : Bundle := named_bundle% "RealMapCertificates/relations/basis17842.json"
theorem reductionProof17842 : EqualModuloRelations reduction17842.relations reduction17842.input reduction17842.output := by lin_cert using reduction17842.terms
theorem substitutionProof17842 : IsMapEvaluation generatorImages reduction17842.relations [3,1825] reduction17842.output := by lin_cert using reduction17842.terms
def image17843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17843 : InImage map_13_241 image17843 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17843 : Bundle := named_bundle% "RealMapCertificates/relations/basis17843.json"
theorem reductionProof17843 : EqualModuloRelations reduction17843.relations reduction17843.input reduction17843.output := by lin_cert using reduction17843.terms
theorem substitutionProof17843 : IsMapEvaluation generatorImages reduction17843.relations [0,43,67,324] reduction17843.output := by lin_cert using reduction17843.terms
def image17844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17844 : InImage map_13_241 image17844 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17844 : Bundle := named_bundle% "RealMapCertificates/relations/basis17844.json"
theorem reductionProof17844 : EqualModuloRelations reduction17844.relations reduction17844.input reduction17844.output := by lin_cert using reduction17844.terms
theorem substitutionProof17844 : IsMapEvaluation generatorImages reduction17844.relations [0,0,0,1957] reduction17844.output := by lin_cert using reduction17844.terms
def map_13_242 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18100 : InImage map_13_242 image18100 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18100 : Bundle := named_bundle% "RealMapCertificates/relations/basis18100.json"
theorem reductionProof18100 : EqualModuloRelations reduction18100.relations reduction18100.input reduction18100.output := by lin_cert using reduction18100.terms
theorem substitutionProof18100 : IsMapEvaluation generatorImages reduction18100.relations [2084] reduction18100.output := by lin_cert using reduction18100.terms
def image18101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18101 : InImage map_13_242 image18101 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18101 : Bundle := named_bundle% "RealMapCertificates/relations/basis18101.json"
theorem reductionProof18101 : EqualModuloRelations reduction18101.relations reduction18101.input reduction18101.output := by lin_cert using reduction18101.terms
theorem substitutionProof18101 : IsMapEvaluation generatorImages reduction18101.relations [2083] reduction18101.output := by lin_cert using reduction18101.terms
def image18102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18102 : InImage map_13_242 image18102 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18102 : Bundle := named_bundle% "RealMapCertificates/relations/basis18102.json"
theorem reductionProof18102 : EqualModuloRelations reduction18102.relations reduction18102.input reduction18102.output := by lin_cert using reduction18102.terms
theorem substitutionProof18102 : IsMapEvaluation generatorImages reduction18102.relations [2082] reduction18102.output := by lin_cert using reduction18102.terms
def image18103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18103 : InImage map_13_242 image18103 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18103 : Bundle := named_bundle% "RealMapCertificates/relations/basis18103.json"
theorem reductionProof18103 : EqualModuloRelations reduction18103.relations reduction18103.input reduction18103.output := by lin_cert using reduction18103.terms
theorem substitutionProof18103 : IsMapEvaluation generatorImages reduction18103.relations [3,1852] reduction18103.output := by lin_cert using reduction18103.terms
def image18104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18104 : InImage map_13_242 image18104 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18104 : Bundle := named_bundle% "RealMapCertificates/relations/basis18104.json"
theorem reductionProof18104 : EqualModuloRelations reduction18104.relations reduction18104.input reduction18104.output := by lin_cert using reduction18104.terms
theorem substitutionProof18104 : IsMapEvaluation generatorImages reduction18104.relations [0,0,43,68,324] reduction18104.output := by lin_cert using reduction18104.terms
def map_13_243 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image18378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18378 : InImage map_13_243 image18378 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18378 : Bundle := named_bundle% "RealMapCertificates/relations/basis18378.json"
theorem reductionProof18378 : EqualModuloRelations reduction18378.relations reduction18378.input reduction18378.output := by lin_cert using reduction18378.terms
theorem substitutionProof18378 : IsMapEvaluation generatorImages reduction18378.relations [243,324] reduction18378.output := by lin_cert using reduction18378.terms
def map_13_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18580 : InImage map_13_244 image18580 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18580 : Bundle := named_bundle% "RealMapCertificates/relations/basis18580.json"
theorem reductionProof18580 : EqualModuloRelations reduction18580.relations reduction18580.input reduction18580.output := by lin_cert using reduction18580.terms
theorem substitutionProof18580 : IsMapEvaluation generatorImages reduction18580.relations [2153] reduction18580.output := by lin_cert using reduction18580.terms
def image18581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18581 : InImage map_13_244 image18581 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18581 : Bundle := named_bundle% "RealMapCertificates/relations/basis18581.json"
theorem reductionProof18581 : EqualModuloRelations reduction18581.relations reduction18581.input reduction18581.output := by lin_cert using reduction18581.terms
theorem substitutionProof18581 : IsMapEvaluation generatorImages reduction18581.relations [2152] reduction18581.output := by lin_cert using reduction18581.terms
def image18582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18582 : InImage map_13_244 image18582 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18582 : Bundle := named_bundle% "RealMapCertificates/relations/basis18582.json"
theorem reductionProof18582 : EqualModuloRelations reduction18582.relations reduction18582.input reduction18582.output := by lin_cert using reduction18582.terms
theorem substitutionProof18582 : IsMapEvaluation generatorImages reduction18582.relations [250,324] reduction18582.output := by lin_cert using reduction18582.terms
def image18583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18583 : InImage map_13_244 image18583 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18583 : Bundle := named_bundle% "RealMapCertificates/relations/basis18583.json"
theorem reductionProof18583 : EqualModuloRelations reduction18583.relations reduction18583.input reduction18583.output := by lin_cert using reduction18583.terms
theorem substitutionProof18583 : IsMapEvaluation generatorImages reduction18583.relations [3,1898] reduction18583.output := by lin_cert using reduction18583.terms
def image18584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18584 : InImage map_13_244 image18584 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18584 : Bundle := named_bundle% "RealMapCertificates/relations/basis18584.json"
theorem reductionProof18584 : EqualModuloRelations reduction18584.relations reduction18584.input reduction18584.output := by lin_cert using reduction18584.terms
theorem substitutionProof18584 : IsMapEvaluation generatorImages reduction18584.relations [0,0,0,0,2033] reduction18584.output := by lin_cert using reduction18584.terms
def map_13_245 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18850 : InImage map_13_245 image18850 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18850 : Bundle := named_bundle% "RealMapCertificates/relations/basis18850.json"
theorem reductionProof18850 : EqualModuloRelations reduction18850.relations reduction18850.input reduction18850.output := by lin_cert using reduction18850.terms
theorem substitutionProof18850 : IsMapEvaluation generatorImages reduction18850.relations [3,1923] reduction18850.output := by lin_cert using reduction18850.terms
def image18851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18851 : InImage map_13_245 image18851 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18851 : Bundle := named_bundle% "RealMapCertificates/relations/basis18851.json"
theorem reductionProof18851 : EqualModuloRelations reduction18851.relations reduction18851.input reduction18851.output := by lin_cert using reduction18851.terms
theorem substitutionProof18851 : IsMapEvaluation generatorImages reduction18851.relations [0,2155] reduction18851.output := by lin_cert using reduction18851.terms
def image18852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18852 : InImage map_13_245 image18852 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18852 : Bundle := named_bundle% "RealMapCertificates/relations/basis18852.json"
theorem reductionProof18852 : EqualModuloRelations reduction18852.relations reduction18852.input reduction18852.output := by lin_cert using reduction18852.terms
theorem substitutionProof18852 : IsMapEvaluation generatorImages reduction18852.relations [0,0,2117] reduction18852.output := by lin_cert using reduction18852.terms
def map_13_246 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19163 : InImage map_13_246 image19163 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19163 : Bundle := named_bundle% "RealMapCertificates/relations/basis19163.json"
theorem reductionProof19163 : EqualModuloRelations reduction19163.relations reduction19163.input reduction19163.output := by lin_cert using reduction19163.terms
theorem substitutionProof19163 : IsMapEvaluation generatorImages reduction19163.relations [2236] reduction19163.output := by lin_cert using reduction19163.terms
def image19164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19164 : InImage map_13_246 image19164 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19164 : Bundle := named_bundle% "RealMapCertificates/relations/basis19164.json"
theorem reductionProof19164 : EqualModuloRelations reduction19164.relations reduction19164.input reduction19164.output := by lin_cert using reduction19164.terms
theorem substitutionProof19164 : IsMapEvaluation generatorImages reduction19164.relations [3,1954] reduction19164.output := by lin_cert using reduction19164.terms
def image19165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19165 : InImage map_13_246 image19165 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19165 : Bundle := named_bundle% "RealMapCertificates/relations/basis19165.json"
theorem reductionProof19165 : EqualModuloRelations reduction19165.relations reduction19165.input reduction19165.output := by lin_cert using reduction19165.terms
theorem substitutionProof19165 : IsMapEvaluation generatorImages reduction19165.relations [3,3,189,324] reduction19165.output := by lin_cert using reduction19165.terms
def image19166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19166 : InImage map_13_246 image19166 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19166 : Bundle := named_bundle% "RealMapCertificates/relations/basis19166.json"
theorem reductionProof19166 : EqualModuloRelations reduction19166.relations reduction19166.input reduction19166.output := by lin_cert using reduction19166.terms
theorem substitutionProof19166 : IsMapEvaluation generatorImages reduction19166.relations [1,2154] reduction19166.output := by lin_cert using reduction19166.terms
def map_13_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19381 : InImage map_13_247 image19381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19381 : Bundle := named_bundle% "RealMapCertificates/relations/basis19381.json"
theorem reductionProof19381 : EqualModuloRelations reduction19381.relations reduction19381.input reduction19381.output := by lin_cert using reduction19381.terms
theorem substitutionProof19381 : IsMapEvaluation generatorImages reduction19381.relations [2272] reduction19381.output := by lin_cert using reduction19381.terms
def image19382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19382 : InImage map_13_247 image19382 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19382 : Bundle := named_bundle% "RealMapCertificates/relations/basis19382.json"
theorem reductionProof19382 : EqualModuloRelations reduction19382.relations reduction19382.input reduction19382.output := by lin_cert using reduction19382.terms
theorem substitutionProof19382 : IsMapEvaluation generatorImages reduction19382.relations [261,324] reduction19382.output := by lin_cert using reduction19382.terms
def image19383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19383 : InImage map_13_247 image19383 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19383 : Bundle := named_bundle% "RealMapCertificates/relations/basis19383.json"
theorem reductionProof19383 : EqualModuloRelations reduction19383.relations reduction19383.input reduction19383.output := by lin_cert using reduction19383.terms
theorem substitutionProof19383 : IsMapEvaluation generatorImages reduction19383.relations [3,1986] reduction19383.output := by lin_cert using reduction19383.terms
def image19384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19384 : InImage map_13_247 image19384 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19384 : Bundle := named_bundle% "RealMapCertificates/relations/basis19384.json"
theorem reductionProof19384 : EqualModuloRelations reduction19384.relations reduction19384.input reduction19384.output := by lin_cert using reduction19384.terms
theorem substitutionProof19384 : IsMapEvaluation generatorImages reduction19384.relations [0,3,1955] reduction19384.output := by lin_cert using reduction19384.terms
def map_13_248 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19659 : InImage map_13_248 image19659 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19659 : Bundle := named_bundle% "RealMapCertificates/relations/basis19659.json"
theorem reductionProof19659 : EqualModuloRelations reduction19659.relations reduction19659.input reduction19659.output := by lin_cert using reduction19659.terms
theorem substitutionProof19659 : IsMapEvaluation generatorImages reduction19659.relations [3,2030] reduction19659.output := by lin_cert using reduction19659.terms
def image19660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19660 : InImage map_13_248 image19660 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19660 : Bundle := named_bundle% "RealMapCertificates/relations/basis19660.json"
theorem reductionProof19660 : EqualModuloRelations reduction19660.relations reduction19660.input reduction19660.output := by lin_cert using reduction19660.terms
theorem substitutionProof19660 : IsMapEvaluation generatorImages reduction19660.relations [2,2154] reduction19660.output := by lin_cert using reduction19660.terms
def map_13_249 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19961 : InImage map_13_249 image19961 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19961 : Bundle := named_bundle% "RealMapCertificates/relations/basis19961.json"
theorem reductionProof19961 : EqualModuloRelations reduction19961.relations reduction19961.input reduction19961.output := by lin_cert using reduction19961.terms
theorem substitutionProof19961 : IsMapEvaluation generatorImages reduction19961.relations [275,324] reduction19961.output := by lin_cert using reduction19961.terms
def image19962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19962 : InImage map_13_249 image19962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19962 : Bundle := named_bundle% "RealMapCertificates/relations/basis19962.json"
theorem reductionProof19962 : EqualModuloRelations reduction19962.relations reduction19962.input reduction19962.output := by lin_cert using reduction19962.terms
theorem substitutionProof19962 : IsMapEvaluation generatorImages reduction19962.relations [7,1825] reduction19962.output := by lin_cert using reduction19962.terms
def map_13_250 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image20189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20189 : InImage map_13_250 image20189 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20189 : Bundle := named_bundle% "RealMapCertificates/relations/basis20189.json"
theorem reductionProof20189 : EqualModuloRelations reduction20189.relations reduction20189.input reduction20189.output := by lin_cert using reduction20189.terms
theorem substitutionProof20189 : IsMapEvaluation generatorImages reduction20189.relations [2372] reduction20189.output := by lin_cert using reduction20189.terms
def image20190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20190 : InImage map_13_250 image20190 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20190 : Bundle := named_bundle% "RealMapCertificates/relations/basis20190.json"
theorem reductionProof20190 : EqualModuloRelations reduction20190.relations reduction20190.input reduction20190.output := by lin_cert using reduction20190.terms
theorem substitutionProof20190 : IsMapEvaluation generatorImages reduction20190.relations [3,2085] reduction20190.output := by lin_cert using reduction20190.terms
def image20191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20191 : InImage map_13_250 image20191 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20191 : Bundle := named_bundle% "RealMapCertificates/relations/basis20191.json"
theorem reductionProof20191 : EqualModuloRelations reduction20191.relations reduction20191.input reduction20191.output := by lin_cert using reduction20191.terms
theorem substitutionProof20191 : IsMapEvaluation generatorImages reduction20191.relations [3,3,1853] reduction20191.output := by lin_cert using reduction20191.terms
def map_13_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20462 : InImage map_13_251 image20462 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20462 : Bundle := named_bundle% "RealMapCertificates/relations/basis20462.json"
theorem reductionProof20462 : EqualModuloRelations reduction20462.relations reduction20462.input reduction20462.output := by lin_cert using reduction20462.terms
theorem substitutionProof20462 : IsMapEvaluation generatorImages reduction20462.relations [2,262,324] reduction20462.output := by lin_cert using reduction20462.terms
def map_13_253 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21016 : InImage map_13_253 image21016 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21016 : Bundle := named_bundle% "RealMapCertificates/relations/basis21016.json"
theorem reductionProof21016 : EqualModuloRelations reduction21016.relations reduction21016.input reduction21016.output := by lin_cert using reduction21016.terms
theorem substitutionProof21016 : IsMapEvaluation generatorImages reduction21016.relations [2484] reduction21016.output := by lin_cert using reduction21016.terms
def image21017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21017 : InImage map_13_253 image21017 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21017 : Bundle := named_bundle% "RealMapCertificates/relations/basis21017.json"
theorem reductionProof21017 : EqualModuloRelations reduction21017.relations reduction21017.input reduction21017.output := by lin_cert using reduction21017.terms
theorem substitutionProof21017 : IsMapEvaluation generatorImages reduction21017.relations [13,181,324] reduction21017.output := by lin_cert using reduction21017.terms
def map_13_254 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21334 : InImage map_13_254 image21334 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21334 : Bundle := named_bundle% "RealMapCertificates/relations/basis21334.json"
theorem reductionProof21334 : EqualModuloRelations reduction21334.relations reduction21334.input reduction21334.output := by lin_cert using reduction21334.terms
theorem substitutionProof21334 : IsMapEvaluation generatorImages reduction21334.relations [2531] reduction21334.output := by lin_cert using reduction21334.terms
def image21335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21335 : InImage map_13_254 image21335 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21335 : Bundle := named_bundle% "RealMapCertificates/relations/basis21335.json"
theorem reductionProof21335 : EqualModuloRelations reduction21335.relations reduction21335.input reduction21335.output := by lin_cert using reduction21335.terms
theorem substitutionProof21335 : IsMapEvaluation generatorImages reduction21335.relations [2530] reduction21335.output := by lin_cert using reduction21335.terms
def image21336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21336 : InImage map_13_254 image21336 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21336 : Bundle := named_bundle% "RealMapCertificates/relations/basis21336.json"
theorem reductionProof21336 : EqualModuloRelations reduction21336.relations reduction21336.input reduction21336.output := by lin_cert using reduction21336.terms
theorem substitutionProof21336 : IsMapEvaluation generatorImages reduction21336.relations [13,190,324] reduction21336.output := by lin_cert using reduction21336.terms
def image21337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21337 : InImage map_13_254 image21337 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21337 : Bundle := named_bundle% "RealMapCertificates/relations/basis21337.json"
theorem reductionProof21337 : EqualModuloRelations reduction21337.relations reduction21337.input reduction21337.output := by lin_cert using reduction21337.terms
theorem substitutionProof21337 : IsMapEvaluation generatorImages reduction21337.relations [2,2373] reduction21337.output := by lin_cert using reduction21337.terms
def image21338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21338 : InImage map_13_254 image21338 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21338 : Bundle := named_bundle% "RealMapCertificates/relations/basis21338.json"
theorem reductionProof21338 : EqualModuloRelations reduction21338.relations reduction21338.input reduction21338.output := by lin_cert using reduction21338.terms
theorem substitutionProof21338 : IsMapEvaluation generatorImages reduction21338.relations [0,2485] reduction21338.output := by lin_cert using reduction21338.terms
def map_13_255 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21667 : InImage map_13_255 image21667 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21667 : Bundle := named_bundle% "RealMapCertificates/relations/basis21667.json"
theorem reductionProof21667 : EqualModuloRelations reduction21667.relations reduction21667.input reduction21667.output := by lin_cert using reduction21667.terms
theorem substitutionProof21667 : IsMapEvaluation generatorImages reduction21667.relations [2576] reduction21667.output := by lin_cert using reduction21667.terms
def image21668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21668 : InImage map_13_255 image21668 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21668 : Bundle := named_bundle% "RealMapCertificates/relations/basis21668.json"
theorem reductionProof21668 : EqualModuloRelations reduction21668.relations reduction21668.input reduction21668.output := by lin_cert using reduction21668.terms
theorem substitutionProof21668 : IsMapEvaluation generatorImages reduction21668.relations [1,2485] reduction21668.output := by lin_cert using reduction21668.terms
def map_13_256 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image21952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21952 : InImage map_13_256 image21952 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21952 : Bundle := named_bundle% "RealMapCertificates/relations/basis21952.json"
theorem reductionProof21952 : EqualModuloRelations reduction21952.relations reduction21952.input reduction21952.output := by lin_cert using reduction21952.terms
theorem substitutionProof21952 : IsMapEvaluation generatorImages reduction21952.relations [2622] reduction21952.output := by lin_cert using reduction21952.terms
def image21953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21953 : InImage map_13_256 image21953 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21953 : Bundle := named_bundle% "RealMapCertificates/relations/basis21953.json"
theorem reductionProof21953 : EqualModuloRelations reduction21953.relations reduction21953.input reduction21953.output := by lin_cert using reduction21953.terms
theorem substitutionProof21953 : IsMapEvaluation generatorImages reduction21953.relations [0,2577] reduction21953.output := by lin_cert using reduction21953.terms
def map_13_257 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image22286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22286 : InImage map_13_257 image22286 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22286 : Bundle := named_bundle% "RealMapCertificates/relations/basis22286.json"
theorem reductionProof22286 : EqualModuloRelations reduction22286.relations reduction22286.input reduction22286.output := by lin_cert using reduction22286.terms
theorem substitutionProof22286 : IsMapEvaluation generatorImages reduction22286.relations [1,2577] reduction22286.output := by lin_cert using reduction22286.terms
def map_13_258 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22652 : InImage map_13_258 image22652 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22652 : Bundle := named_bundle% "RealMapCertificates/relations/basis22652.json"
theorem reductionProof22652 : EqualModuloRelations reduction22652.relations reduction22652.input reduction22652.output := by lin_cert using reduction22652.terms
theorem substitutionProof22652 : IsMapEvaluation generatorImages reduction22652.relations [2728] reduction22652.output := by lin_cert using reduction22652.terms
def image22653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22653 : InImage map_13_258 image22653 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22653 : Bundle := named_bundle% "RealMapCertificates/relations/basis22653.json"
theorem reductionProof22653 : EqualModuloRelations reduction22653.relations reduction22653.input reduction22653.output := by lin_cert using reduction22653.terms
theorem substitutionProof22653 : IsMapEvaluation generatorImages reduction22653.relations [2727] reduction22653.output := by lin_cert using reduction22653.terms
def image22654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22654 : InImage map_13_258 image22654 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22654 : Bundle := named_bundle% "RealMapCertificates/relations/basis22654.json"
theorem reductionProof22654 : EqualModuloRelations reduction22654.relations reduction22654.input reduction22654.output := by lin_cert using reduction22654.terms
theorem substitutionProof22654 : IsMapEvaluation generatorImages reduction22654.relations [2726] reduction22654.output := by lin_cert using reduction22654.terms
def image22655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22655 : InImage map_13_258 image22655 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22655 : Bundle := named_bundle% "RealMapCertificates/relations/basis22655.json"
theorem reductionProof22655 : EqualModuloRelations reduction22655.relations reduction22655.input reduction22655.output := by lin_cert using reduction22655.terms
theorem substitutionProof22655 : IsMapEvaluation generatorImages reduction22655.relations [2725] reduction22655.output := by lin_cert using reduction22655.terms
def image22656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22656 : InImage map_13_258 image22656 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22656 : Bundle := named_bundle% "RealMapCertificates/relations/basis22656.json"
theorem reductionProof22656 : EqualModuloRelations reduction22656.relations reduction22656.input reduction22656.output := by lin_cert using reduction22656.terms
theorem substitutionProof22656 : IsMapEvaluation generatorImages reduction22656.relations [2724] reduction22656.output := by lin_cert using reduction22656.terms
def image22657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22657 : InImage map_13_258 image22657 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22657 : Bundle := named_bundle% "RealMapCertificates/relations/basis22657.json"
theorem reductionProof22657 : EqualModuloRelations reduction22657.relations reduction22657.input reduction22657.output := by lin_cert using reduction22657.terms
theorem substitutionProof22657 : IsMapEvaluation generatorImages reduction22657.relations [324,335] reduction22657.output := by lin_cert using reduction22657.terms
def image22658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22658 : InImage map_13_258 image22658 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22658 : Bundle := named_bundle% "RealMapCertificates/relations/basis22658.json"
theorem reductionProof22658 : EqualModuloRelations reduction22658.relations reduction22658.input reduction22658.output := by lin_cert using reduction22658.terms
theorem substitutionProof22658 : IsMapEvaluation generatorImages reduction22658.relations [0,0,0,314,324] reduction22658.output := by lin_cert using reduction22658.terms
end RealMapCertificates
