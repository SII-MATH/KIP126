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
  | 23 => [[7,7]]
  | 27 => [[1,4,4,4]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 33 => []
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 59 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 83 => []
  | 89 => []
  | 90 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 119 => [[1,9,12]]
  | 126 => []
  | 127 => []
  | 128 => []
  | 150 => []
  | 156 => []
  | 164 => []
  | 168 => []
  | 169 => []
  | 176 => []
  | 177 => []
  | 187 => []
  | 188 => []
  | 195 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 228 => []
  | 235 => []
  | 249 => []
  | 267 => []
  | 268 => []
  | 279 => []
  | 280 => []
  | 285 => []
  | 286 => []
  | 324 => []
  | 333 => []
  | 336 => []
  | 364 => []
  | 365 => []
  | 2729 => []
  | 2731 => []
  | 2732 => []
  | 2782 => []
  | 2783 => []
  | 2784 => []
  | 2785 => []
  | 2846 => []
  | 2902 => []
  | 2903 => []
  | _ => []
def map_13_259 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22971 : InImage map_13_259 image22971 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22971 : Bundle := named_bundle% "RealMapCertificates/relations/basis22971.json"
theorem reductionProof22971 : EqualModuloRelations reduction22971.relations reduction22971.input reduction22971.output := by lin_cert using reduction22971.terms
theorem substitutionProof22971 : IsMapEvaluation generatorImages reduction22971.relations [2784] reduction22971.output := by lin_cert using reduction22971.terms
def image22972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22972 : InImage map_13_259 image22972 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22972 : Bundle := named_bundle% "RealMapCertificates/relations/basis22972.json"
theorem reductionProof22972 : EqualModuloRelations reduction22972.relations reduction22972.input reduction22972.output := by lin_cert using reduction22972.terms
theorem substitutionProof22972 : IsMapEvaluation generatorImages reduction22972.relations [2783] reduction22972.output := by lin_cert using reduction22972.terms
def image22973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22973 : InImage map_13_259 image22973 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22973 : Bundle := named_bundle% "RealMapCertificates/relations/basis22973.json"
theorem reductionProof22973 : EqualModuloRelations reduction22973.relations reduction22973.input reduction22973.output := by lin_cert using reduction22973.terms
theorem substitutionProof22973 : IsMapEvaluation generatorImages reduction22973.relations [2782] reduction22973.output := by lin_cert using reduction22973.terms
def image22974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22974 : InImage map_13_259 image22974 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22974 : Bundle := named_bundle% "RealMapCertificates/relations/basis22974.json"
theorem reductionProof22974 : EqualModuloRelations reduction22974.relations reduction22974.input reduction22974.output := by lin_cert using reduction22974.terms
theorem substitutionProof22974 : IsMapEvaluation generatorImages reduction22974.relations [0,2732] reduction22974.output := by lin_cert using reduction22974.terms
def image22975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22975 : InImage map_13_259 image22975 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22975 : Bundle := named_bundle% "RealMapCertificates/relations/basis22975.json"
theorem reductionProof22975 : EqualModuloRelations reduction22975.relations reduction22975.input reduction22975.output := by lin_cert using reduction22975.terms
theorem substitutionProof22975 : IsMapEvaluation generatorImages reduction22975.relations [0,324,336] reduction22975.output := by lin_cert using reduction22975.terms
def map_13_260 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23370 : InImage map_13_260 image23370 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23370 : Bundle := named_bundle% "RealMapCertificates/relations/basis23370.json"
theorem reductionProof23370 : EqualModuloRelations reduction23370.relations reduction23370.input reduction23370.output := by lin_cert using reduction23370.terms
theorem substitutionProof23370 : IsMapEvaluation generatorImages reduction23370.relations [2846] reduction23370.output := by lin_cert using reduction23370.terms
def image23371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23371 : InImage map_13_260 image23371 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23371 : Bundle := named_bundle% "RealMapCertificates/relations/basis23371.json"
theorem reductionProof23371 : EqualModuloRelations reduction23371.relations reduction23371.input reduction23371.output := by lin_cert using reduction23371.terms
theorem substitutionProof23371 : IsMapEvaluation generatorImages reduction23371.relations [324,364] reduction23371.output := by lin_cert using reduction23371.terms
def image23372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23372 : InImage map_13_260 image23372 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23372 : Bundle := named_bundle% "RealMapCertificates/relations/basis23372.json"
theorem reductionProof23372 : EqualModuloRelations reduction23372.relations reduction23372.input reduction23372.output := by lin_cert using reduction23372.terms
theorem substitutionProof23372 : IsMapEvaluation generatorImages reduction23372.relations [1,2731] reduction23372.output := by lin_cert using reduction23372.terms
def image23373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23373 : InImage map_13_260 image23373 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23373 : Bundle := named_bundle% "RealMapCertificates/relations/basis23373.json"
theorem reductionProof23373 : EqualModuloRelations reduction23373.relations reduction23373.input reduction23373.output := by lin_cert using reduction23373.terms
theorem substitutionProof23373 : IsMapEvaluation generatorImages reduction23373.relations [1,2729] reduction23373.output := by lin_cert using reduction23373.terms
def image23374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23374 : InImage map_13_260 image23374 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23374 : Bundle := named_bundle% "RealMapCertificates/relations/basis23374.json"
theorem reductionProof23374 : EqualModuloRelations reduction23374.relations reduction23374.input reduction23374.output := by lin_cert using reduction23374.terms
theorem substitutionProof23374 : IsMapEvaluation generatorImages reduction23374.relations [0,2785] reduction23374.output := by lin_cert using reduction23374.terms
def image23375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23375 : InImage map_13_260 image23375 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23375 : Bundle := named_bundle% "RealMapCertificates/relations/basis23375.json"
theorem reductionProof23375 : EqualModuloRelations reduction23375.relations reduction23375.input reduction23375.output := by lin_cert using reduction23375.terms
theorem substitutionProof23375 : IsMapEvaluation generatorImages reduction23375.relations [0,0,0,324,333] reduction23375.output := by lin_cert using reduction23375.terms
def map_13_261 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image23788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23788 : InImage map_13_261 image23788 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23788 : Bundle := named_bundle% "RealMapCertificates/relations/basis23788.json"
theorem reductionProof23788 : EqualModuloRelations reduction23788.relations reduction23788.input reduction23788.output := by lin_cert using reduction23788.terms
theorem substitutionProof23788 : IsMapEvaluation generatorImages reduction23788.relations [2903] reduction23788.output := by lin_cert using reduction23788.terms
def image23789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23789 : InImage map_13_261 image23789 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23789 : Bundle := named_bundle% "RealMapCertificates/relations/basis23789.json"
theorem reductionProof23789 : EqualModuloRelations reduction23789.relations reduction23789.input reduction23789.output := by lin_cert using reduction23789.terms
theorem substitutionProof23789 : IsMapEvaluation generatorImages reduction23789.relations [2902] reduction23789.output := by lin_cert using reduction23789.terms
def image23790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23790 : InImage map_13_261 image23790 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23790 : Bundle := named_bundle% "RealMapCertificates/relations/basis23790.json"
theorem reductionProof23790 : EqualModuloRelations reduction23790.relations reduction23790.input reduction23790.output := by lin_cert using reduction23790.terms
theorem substitutionProof23790 : IsMapEvaluation generatorImages reduction23790.relations [0,324,365] reduction23790.output := by lin_cert using reduction23790.terms
def map_14_14 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image28 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation28 : InImage map_14_14 image28 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction28 : Bundle := named_bundle% "RealMapCertificates/relations/basis28.json"
theorem reductionProof28 : EqualModuloRelations reduction28.relations reduction28.input reduction28.output := by lin_cert using reduction28.terms
theorem substitutionProof28 : IsMapEvaluation generatorImages reduction28.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction28.output := by lin_cert using reduction28.terms
def map_14_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image161 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation161 : InImage map_14_40 image161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction161 : Bundle := named_bundle% "RealMapCertificates/relations/basis161.json"
theorem reductionProof161 : EqualModuloRelations reduction161.relations reduction161.input reduction161.output := by lin_cert using reduction161.terms
theorem substitutionProof161 : IsMapEvaluation generatorImages reduction161.relations [1,27] reduction161.output := by lin_cert using reduction161.terms
def map_14_41 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image173 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation173 : InImage map_14_41 image173 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction173 : Bundle := named_bundle% "RealMapCertificates/relations/basis173.json"
theorem reductionProof173 : EqualModuloRelations reduction173.relations reduction173.input reduction173.output := by lin_cert using reduction173.terms
theorem substitutionProof173 : IsMapEvaluation generatorImages reduction173.relations [0,30] reduction173.output := by lin_cert using reduction173.terms
def map_14_44 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image199 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation199 : InImage map_14_44 image199 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction199 : Bundle := named_bundle% "RealMapCertificates/relations/basis199.json"
theorem reductionProof199 : EqualModuloRelations reduction199.relations reduction199.input reduction199.output := by lin_cert using reduction199.terms
theorem substitutionProof199 : IsMapEvaluation generatorImages reduction199.relations [0,0,31] reduction199.output := by lin_cert using reduction199.terms
def map_14_45 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation213 : InImage map_14_45 image213 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction213 : Bundle := named_bundle% "RealMapCertificates/relations/basis213.json"
theorem reductionProof213 : EqualModuloRelations reduction213.relations reduction213.input reduction213.output := by lin_cert using reduction213.terms
theorem substitutionProof213 : IsMapEvaluation generatorImages reduction213.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,18] reduction213.output := by lin_cert using reduction213.terms
def map_14_46 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image224 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation224 : InImage map_14_46 image224 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction224 : Bundle := named_bundle% "RealMapCertificates/relations/basis224.json"
theorem reductionProof224 : EqualModuloRelations reduction224.relations reduction224.input reduction224.output := by lin_cert using reduction224.terms
theorem substitutionProof224 : IsMapEvaluation generatorImages reduction224.relations [1,1,31] reduction224.output := by lin_cert using reduction224.terms
def map_14_47 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image236 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation236 : InImage map_14_47 image236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction236 : Bundle := named_bundle% "RealMapCertificates/relations/basis236.json"
theorem reductionProof236 : EqualModuloRelations reduction236.relations reduction236.input reduction236.output := by lin_cert using reduction236.terms
theorem substitutionProof236 : IsMapEvaluation generatorImages reduction236.relations [0,0,39] reduction236.output := by lin_cert using reduction236.terms
def map_14_50 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image259 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation259 : InImage map_14_50 image259 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction259 : Bundle := named_bundle% "RealMapCertificates/relations/basis259.json"
theorem reductionProof259 : EqualModuloRelations reduction259.relations reduction259.input reduction259.output := by lin_cert using reduction259.terms
theorem substitutionProof259 : IsMapEvaluation generatorImages reduction259.relations [0,0,8,16] reduction259.output := by lin_cert using reduction259.terms
def map_14_53 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation284 : InImage map_14_53 image284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction284 : Bundle := named_bundle% "RealMapCertificates/relations/basis284.json"
theorem reductionProof284 : EqualModuloRelations reduction284.relations reduction284.input reduction284.output := by lin_cert using reduction284.terms
theorem substitutionProof284 : IsMapEvaluation generatorImages reduction284.relations [0,0,8,19] reduction284.output := by lin_cert using reduction284.terms
def map_14_56 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image316 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation316 : InImage map_14_56 image316 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction316 : Bundle := named_bundle% "RealMapCertificates/relations/basis316.json"
theorem reductionProof316 : EqualModuloRelations reduction316.relations reduction316.input reduction316.output := by lin_cert using reduction316.terms
theorem substitutionProof316 : IsMapEvaluation generatorImages reduction316.relations [0,0,8,8,8] reduction316.output := by lin_cert using reduction316.terms
def map_14_60 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image350 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation350 : InImage map_14_60 image350 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction350 : Bundle := named_bundle% "RealMapCertificates/relations/basis350.json"
theorem reductionProof350 : EqualModuloRelations reduction350.relations reduction350.input reduction350.output := by lin_cert using reduction350.terms
theorem substitutionProof350 : IsMapEvaluation generatorImages reduction350.relations [17,17] reduction350.output := by lin_cert using reduction350.terms
def map_14_61 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation365 : InImage map_14_61 image365 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction365 : Bundle := named_bundle% "RealMapCertificates/relations/basis365.json"
theorem reductionProof365 : EqualModuloRelations reduction365.relations reduction365.input reduction365.output := by lin_cert using reduction365.terms
theorem substitutionProof365 : IsMapEvaluation generatorImages reduction365.relations [0,59] reduction365.output := by lin_cert using reduction365.terms
def map_14_62 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation372 : InImage map_14_62 image372 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction372 : Bundle := named_bundle% "RealMapCertificates/relations/basis372.json"
theorem reductionProof372 : EqualModuloRelations reduction372.relations reduction372.input reduction372.output := by lin_cert using reduction372.terms
theorem substitutionProof372 : IsMapEvaluation generatorImages reduction372.relations [1,59] reduction372.output := by lin_cert using reduction372.terms
def map_14_63 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image381 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation381 : InImage map_14_63 image381 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction381 : Bundle := named_bundle% "RealMapCertificates/relations/basis381.json"
theorem reductionProof381 : EqualModuloRelations reduction381.relations reduction381.input reduction381.output := by lin_cert using reduction381.terms
theorem substitutionProof381 : IsMapEvaluation generatorImages reduction381.relations [17,20] reduction381.output := by lin_cert using reduction381.terms
def map_14_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image424 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation424 : InImage map_14_66 image424 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction424 : Bundle := named_bundle% "RealMapCertificates/relations/basis424.json"
theorem reductionProof424 : EqualModuloRelations reduction424.relations reduction424.input reduction424.output := by lin_cert using reduction424.terms
theorem substitutionProof424 : IsMapEvaluation generatorImages reduction424.relations [16,23] reduction424.output := by lin_cert using reduction424.terms
def map_14_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation444 : InImage map_14_67 image444 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction444 : Bundle := named_bundle% "RealMapCertificates/relations/basis444.json"
theorem reductionProof444 : EqualModuloRelations reduction444.relations reduction444.input reduction444.output := by lin_cert using reduction444.terms
theorem substitutionProof444 : IsMapEvaluation generatorImages reduction444.relations [0,0,0,0,64] reduction444.output := by lin_cert using reduction444.terms
def map_14_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation463 : InImage map_14_68 image463 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction463 : Bundle := named_bundle% "RealMapCertificates/relations/basis463.json"
theorem reductionProof463 : EqualModuloRelations reduction463.relations reduction463.input reduction463.output := by lin_cert using reduction463.terms
theorem substitutionProof463 : IsMapEvaluation generatorImages reduction463.relations [0,0,0,0,66] reduction463.output := by lin_cert using reduction463.terms
def map_14_69 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image484 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation484 : InImage map_14_69 image484 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction484 : Bundle := named_bundle% "RealMapCertificates/relations/basis484.json"
theorem reductionProof484 : EqualModuloRelations reduction484.relations reduction484.input reduction484.output := by lin_cert using reduction484.terms
theorem substitutionProof484 : IsMapEvaluation generatorImages reduction484.relations [8,45] reduction484.output := by lin_cert using reduction484.terms
def map_14_72 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image541 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation541 : InImage map_14_72 image541 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction541 : Bundle := named_bundle% "RealMapCertificates/relations/basis541.json"
theorem reductionProof541 : EqualModuloRelations reduction541.relations reduction541.input reduction541.output := by lin_cert using reduction541.terms
theorem substitutionProof541 : IsMapEvaluation generatorImages reduction541.relations [8,8,23] reduction541.output := by lin_cert using reduction541.terms
def map_14_74 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image588 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation588 : InImage map_14_74 image588 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction588 : Bundle := named_bundle% "RealMapCertificates/relations/basis588.json"
theorem reductionProof588 : EqualModuloRelations reduction588.relations reduction588.input reduction588.output := by lin_cert using reduction588.terms
theorem substitutionProof588 : IsMapEvaluation generatorImages reduction588.relations [0,0,0,0,0,80] reduction588.output := by lin_cert using reduction588.terms
def map_14_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image613 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation613 : InImage map_14_75 image613 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction613 : Bundle := named_bundle% "RealMapCertificates/relations/basis613.json"
theorem reductionProof613 : EqualModuloRelations reduction613.relations reduction613.input reduction613.output := by lin_cert using reduction613.terms
theorem substitutionProof613 : IsMapEvaluation generatorImages reduction613.relations [8,9,23] reduction613.output := by lin_cert using reduction613.terms
def map_14_76 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image632 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation632 : InImage map_14_76 image632 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction632 : Bundle := named_bundle% "RealMapCertificates/relations/basis632.json"
theorem reductionProof632 : EqualModuloRelations reduction632.relations reduction632.input reduction632.output := by lin_cert using reduction632.terms
theorem substitutionProof632 : IsMapEvaluation generatorImages reduction632.relations [0,0,0,0,90] reduction632.output := by lin_cert using reduction632.terms
def map_14_77 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation652 : InImage map_14_77 image652 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction652 : Bundle := named_bundle% "RealMapCertificates/relations/basis652.json"
theorem reductionProof652 : EqualModuloRelations reduction652.relations reduction652.input reduction652.output := by lin_cert using reduction652.terms
theorem substitutionProof652 : IsMapEvaluation generatorImages reduction652.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction652.output := by lin_cert using reduction652.terms
def map_14_78 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation678 : InImage map_14_78 image678 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction678 : Bundle := named_bundle% "RealMapCertificates/relations/basis678.json"
theorem reductionProof678 : EqualModuloRelations reduction678.relations reduction678.input reduction678.output := by lin_cert using reduction678.terms
theorem substitutionProof678 : IsMapEvaluation generatorImages reduction678.relations [112] reduction678.output := by lin_cert using reduction678.terms
def image679 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation679 : InImage map_14_78 image679 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction679 : Bundle := named_bundle% "RealMapCertificates/relations/basis679.json"
theorem reductionProof679 : EqualModuloRelations reduction679.relations reduction679.input reduction679.output := by lin_cert using reduction679.terms
theorem substitutionProof679 : IsMapEvaluation generatorImages reduction679.relations [8,13,23] reduction679.output := by lin_cert using reduction679.terms
def map_14_79 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation702 : InImage map_14_79 image702 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction702 : Bundle := named_bundle% "RealMapCertificates/relations/basis702.json"
theorem reductionProof702 : EqualModuloRelations reduction702.relations reduction702.input reduction702.output := by lin_cert using reduction702.terms
theorem substitutionProof702 : IsMapEvaluation generatorImages reduction702.relations [0,113] reduction702.output := by lin_cert using reduction702.terms
def map_14_81 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image747 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation747 : InImage map_14_81 image747 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction747 : Bundle := named_bundle% "RealMapCertificates/relations/basis747.json"
theorem reductionProof747 : EqualModuloRelations reduction747.relations reduction747.input reduction747.output := by lin_cert using reduction747.terms
theorem substitutionProof747 : IsMapEvaluation generatorImages reduction747.relations [9,13,23] reduction747.output := by lin_cert using reduction747.terms
def image748 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation748 : InImage map_14_81 image748 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction748 : Bundle := named_bundle% "RealMapCertificates/relations/basis748.json"
theorem reductionProof748 : EqualModuloRelations reduction748.relations reduction748.input reduction748.output := by lin_cert using reduction748.terms
theorem substitutionProof748 : IsMapEvaluation generatorImages reduction748.relations [8,64] reduction748.output := by lin_cert using reduction748.terms
def map_14_82 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image767 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation767 : InImage map_14_82 image767 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction767 : Bundle := named_bundle% "RealMapCertificates/relations/basis767.json"
theorem reductionProof767 : EqualModuloRelations reduction767.relations reduction767.input reduction767.output := by lin_cert using reduction767.terms
theorem substitutionProof767 : IsMapEvaluation generatorImages reduction767.relations [0,118] reduction767.output := by lin_cert using reduction767.terms
def map_14_84 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image813 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation813 : InImage map_14_84 image813 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction813 : Bundle := named_bundle% "RealMapCertificates/relations/basis813.json"
theorem reductionProof813 : EqualModuloRelations reduction813.relations reduction813.input reduction813.output := by lin_cert using reduction813.terms
theorem substitutionProof813 : IsMapEvaluation generatorImages reduction813.relations [13,13,23] reduction813.output := by lin_cert using reduction813.terms
def image814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation814 : InImage map_14_84 image814 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction814 : Bundle := named_bundle% "RealMapCertificates/relations/basis814.json"
theorem reductionProof814 : EqualModuloRelations reduction814.relations reduction814.input reduction814.output := by lin_cert using reduction814.terms
theorem substitutionProof814 : IsMapEvaluation generatorImages reduction814.relations [8,72] reduction814.output := by lin_cert using reduction814.terms
def image815 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation815 : InImage map_14_84 image815 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction815 : Bundle := named_bundle% "RealMapCertificates/relations/basis815.json"
theorem reductionProof815 : EqualModuloRelations reduction815.relations reduction815.input reduction815.output := by lin_cert using reduction815.terms
theorem substitutionProof815 : IsMapEvaluation generatorImages reduction815.relations [1,119] reduction815.output := by lin_cert using reduction815.terms
def map_14_85 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation843 : InImage map_14_85 image843 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction843 : Bundle := named_bundle% "RealMapCertificates/relations/basis843.json"
theorem reductionProof843 : EqualModuloRelations reduction843.relations reduction843.input reduction843.output := by lin_cert using reduction843.terms
theorem substitutionProof843 : IsMapEvaluation generatorImages reduction843.relations [0,127] reduction843.output := by lin_cert using reduction843.terms
def image844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation844 : InImage map_14_85 image844 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction844 : Bundle := named_bundle% "RealMapCertificates/relations/basis844.json"
theorem reductionProof844 : EqualModuloRelations reduction844.relations reduction844.input reduction844.output := by lin_cert using reduction844.terms
theorem substitutionProof844 : IsMapEvaluation generatorImages reduction844.relations [0,126] reduction844.output := by lin_cert using reduction844.terms
def map_14_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation899 : InImage map_14_87 image899 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction899 : Bundle := named_bundle% "RealMapCertificates/relations/basis899.json"
theorem reductionProof899 : EqualModuloRelations reduction899.relations reduction899.input reduction899.output := by lin_cert using reduction899.terms
theorem substitutionProof899 : IsMapEvaluation generatorImages reduction899.relations [8,79] reduction899.output := by lin_cert using reduction899.terms
def map_14_88 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image919 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation919 : InImage map_14_88 image919 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction919 : Bundle := named_bundle% "RealMapCertificates/relations/basis919.json"
theorem reductionProof919 : EqualModuloRelations reduction919.relations reduction919.input reduction919.output := by lin_cert using reduction919.terms
theorem substitutionProof919 : IsMapEvaluation generatorImages reduction919.relations [2,126] reduction919.output := by lin_cert using reduction919.terms
def image920 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation920 : InImage map_14_88 image920 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction920 : Bundle := named_bundle% "RealMapCertificates/relations/basis920.json"
theorem reductionProof920 : EqualModuloRelations reduction920.relations reduction920.input reduction920.output := by lin_cert using reduction920.terms
theorem substitutionProof920 : IsMapEvaluation generatorImages reduction920.relations [0,8,80] reduction920.output := by lin_cert using reduction920.terms
def map_14_90 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation976 : InImage map_14_90 image976 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction976 : Bundle := named_bundle% "RealMapCertificates/relations/basis976.json"
theorem reductionProof976 : EqualModuloRelations reduction976.relations reduction976.input reduction976.output := by lin_cert using reduction976.terms
theorem substitutionProof976 : IsMapEvaluation generatorImages reduction976.relations [13,13,33] reduction976.output := by lin_cert using reduction976.terms
def image977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation977 : InImage map_14_90 image977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction977 : Bundle := named_bundle% "RealMapCertificates/relations/basis977.json"
theorem reductionProof977 : EqualModuloRelations reduction977.relations reduction977.input reduction977.output := by lin_cert using reduction977.terms
theorem substitutionProof977 : IsMapEvaluation generatorImages reduction977.relations [8,89] reduction977.output := by lin_cert using reduction977.terms
def map_14_91 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1005 : InImage map_14_91 image1005 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1005 : Bundle := named_bundle% "RealMapCertificates/relations/basis1005.json"
theorem reductionProof1005 : EqualModuloRelations reduction1005.relations reduction1005.input reduction1005.output := by lin_cert using reduction1005.terms
theorem substitutionProof1005 : IsMapEvaluation generatorImages reduction1005.relations [0,9,80] reduction1005.output := by lin_cert using reduction1005.terms
def image1006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1006 : InImage map_14_91 image1006 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1006 : Bundle := named_bundle% "RealMapCertificates/relations/basis1006.json"
theorem reductionProof1006 : EqualModuloRelations reduction1006.relations reduction1006.input reduction1006.output := by lin_cert using reduction1006.terms
theorem substitutionProof1006 : IsMapEvaluation generatorImages reduction1006.relations [0,0,0,0,0,0,0,128] reduction1006.output := by lin_cert using reduction1006.terms
def map_14_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1058 : InImage map_14_93 image1058 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1058 : Bundle := named_bundle% "RealMapCertificates/relations/basis1058.json"
theorem reductionProof1058 : EqualModuloRelations reduction1058.relations reduction1058.input reduction1058.output := by lin_cert using reduction1058.terms
theorem substitutionProof1058 : IsMapEvaluation generatorImages reduction1058.relations [8,101] reduction1058.output := by lin_cert using reduction1058.terms
def map_14_94 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1081 : InImage map_14_94 image1081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1081 : Bundle := named_bundle% "RealMapCertificates/relations/basis1081.json"
theorem reductionProof1081 : EqualModuloRelations reduction1081.relations reduction1081.input reduction1081.output := by lin_cert using reduction1081.terms
theorem substitutionProof1081 : IsMapEvaluation generatorImages reduction1081.relations [156] reduction1081.output := by lin_cert using reduction1081.terms
def image1082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1082 : InImage map_14_94 image1082 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1082 : Bundle := named_bundle% "RealMapCertificates/relations/basis1082.json"
theorem reductionProof1082 : EqualModuloRelations reduction1082.relations reduction1082.input reduction1082.output := by lin_cert using reduction1082.terms
theorem substitutionProof1082 : IsMapEvaluation generatorImages reduction1082.relations [0,13,80] reduction1082.output := by lin_cert using reduction1082.terms
def map_14_96 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1129 : InImage map_14_96 image1129 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1129 : Bundle := named_bundle% "RealMapCertificates/relations/basis1129.json"
theorem reductionProof1129 : EqualModuloRelations reduction1129.relations reduction1129.input reduction1129.output := by lin_cert using reduction1129.terms
theorem substitutionProof1129 : IsMapEvaluation generatorImages reduction1129.relations [9,101] reduction1129.output := by lin_cert using reduction1129.terms
def image1130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1130 : InImage map_14_96 image1130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1130 : Bundle := named_bundle% "RealMapCertificates/relations/basis1130.json"
theorem reductionProof1130 : EqualModuloRelations reduction1130.relations reduction1130.input reduction1130.output := by lin_cert using reduction1130.terms
theorem substitutionProof1130 : IsMapEvaluation generatorImages reduction1130.relations [2,150] reduction1130.output := by lin_cert using reduction1130.terms
def map_14_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1173 : InImage map_14_98 image1173 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1173 : Bundle := named_bundle% "RealMapCertificates/relations/basis1173.json"
theorem reductionProof1173 : EqualModuloRelations reduction1173.relations reduction1173.input reduction1173.output := by lin_cert using reduction1173.terms
theorem substitutionProof1173 : IsMapEvaluation generatorImages reduction1173.relations [168] reduction1173.output := by lin_cert using reduction1173.terms
def map_14_99 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1204 : InImage map_14_99 image1204 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1204 : Bundle := named_bundle% "RealMapCertificates/relations/basis1204.json"
theorem reductionProof1204 : EqualModuloRelations reduction1204.relations reduction1204.input reduction1204.output := by lin_cert using reduction1204.terms
theorem substitutionProof1204 : IsMapEvaluation generatorImages reduction1204.relations [13,101] reduction1204.output := by lin_cert using reduction1204.terms
def image1205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1205 : InImage map_14_99 image1205 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1205 : Bundle := named_bundle% "RealMapCertificates/relations/basis1205.json"
theorem reductionProof1205 : EqualModuloRelations reduction1205.relations reduction1205.input reduction1205.output := by lin_cert using reduction1205.terms
theorem substitutionProof1205 : IsMapEvaluation generatorImages reduction1205.relations [0,169] reduction1205.output := by lin_cert using reduction1205.terms
def map_14_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1228 : InImage map_14_100 image1228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1228 : Bundle := named_bundle% "RealMapCertificates/relations/basis1228.json"
theorem reductionProof1228 : EqualModuloRelations reduction1228.relations reduction1228.input reduction1228.output := by lin_cert using reduction1228.terms
theorem substitutionProof1228 : IsMapEvaluation generatorImages reduction1228.relations [176] reduction1228.output := by lin_cert using reduction1228.terms
def image1229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1229 : InImage map_14_100 image1229 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1229 : Bundle := named_bundle% "RealMapCertificates/relations/basis1229.json"
theorem reductionProof1229 : EqualModuloRelations reduction1229.relations reduction1229.input reduction1229.output := by lin_cert using reduction1229.terms
theorem substitutionProof1229 : IsMapEvaluation generatorImages reduction1229.relations [1,169] reduction1229.output := by lin_cert using reduction1229.terms
def map_14_102 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1299 : InImage map_14_102 image1299 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1299 : Bundle := named_bundle% "RealMapCertificates/relations/basis1299.json"
theorem reductionProof1299 : EqualModuloRelations reduction1299.relations reduction1299.input reduction1299.output := by lin_cert using reduction1299.terms
theorem substitutionProof1299 : IsMapEvaluation generatorImages reduction1299.relations [27,69] reduction1299.output := by lin_cert using reduction1299.terms
def image1300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1300 : InImage map_14_102 image1300 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1300 : Bundle := named_bundle% "RealMapCertificates/relations/basis1300.json"
theorem reductionProof1300 : EqualModuloRelations reduction1300.relations reduction1300.input reduction1300.output := by lin_cert using reduction1300.terms
theorem substitutionProof1300 : IsMapEvaluation generatorImages reduction1300.relations [0,0,177] reduction1300.output := by lin_cert using reduction1300.terms
def map_14_104 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1353 : InImage map_14_104 image1353 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1353 : Bundle := named_bundle% "RealMapCertificates/relations/basis1353.json"
theorem reductionProof1353 : EqualModuloRelations reduction1353.relations reduction1353.input reduction1353.output := by lin_cert using reduction1353.terms
theorem substitutionProof1353 : IsMapEvaluation generatorImages reduction1353.relations [30,69] reduction1353.output := by lin_cert using reduction1353.terms
def image1354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1354 : InImage map_14_104 image1354 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1354 : Bundle := named_bundle% "RealMapCertificates/relations/basis1354.json"
theorem reductionProof1354 : EqualModuloRelations reduction1354.relations reduction1354.input reduction1354.output := by lin_cert using reduction1354.terms
theorem substitutionProof1354 : IsMapEvaluation generatorImages reduction1354.relations [0,0,187] reduction1354.output := by lin_cert using reduction1354.terms
def map_14_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1397 : InImage map_14_105 image1397 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1397 : Bundle := named_bundle% "RealMapCertificates/relations/basis1397.json"
theorem reductionProof1397 : EqualModuloRelations reduction1397.relations reduction1397.input reduction1397.output := by lin_cert using reduction1397.terms
theorem substitutionProof1397 : IsMapEvaluation generatorImages reduction1397.relations [0,0,0,188] reduction1397.output := by lin_cert using reduction1397.terms
def map_14_106 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1424 : InImage map_14_106 image1424 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1424 : Bundle := named_bundle% "RealMapCertificates/relations/basis1424.json"
theorem reductionProof1424 : EqualModuloRelations reduction1424.relations reduction1424.input reduction1424.output := by lin_cert using reduction1424.terms
theorem substitutionProof1424 : IsMapEvaluation generatorImages reduction1424.relations [23,83] reduction1424.output := by lin_cert using reduction1424.terms
def image1425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1425 : InImage map_14_106 image1425 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1425 : Bundle := named_bundle% "RealMapCertificates/relations/basis1425.json"
theorem reductionProof1425 : EqualModuloRelations reduction1425.relations reduction1425.input reduction1425.output := by lin_cert using reduction1425.terms
theorem substitutionProof1425 : IsMapEvaluation generatorImages reduction1425.relations [1,1,187] reduction1425.output := by lin_cert using reduction1425.terms
def image1426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1426 : InImage map_14_106 image1426 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1426 : Bundle := named_bundle% "RealMapCertificates/relations/basis1426.json"
theorem reductionProof1426 : EqualModuloRelations reduction1426.relations reduction1426.input reduction1426.output := by lin_cert using reduction1426.terms
theorem substitutionProof1426 : IsMapEvaluation generatorImages reduction1426.relations [0,0,195] reduction1426.output := by lin_cert using reduction1426.terms
def map_14_107 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1459 : InImage map_14_107 image1459 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1459 : Bundle := named_bundle% "RealMapCertificates/relations/basis1459.json"
theorem reductionProof1459 : EqualModuloRelations reduction1459.relations reduction1459.input reduction1459.output := by lin_cert using reduction1459.terms
theorem substitutionProof1459 : IsMapEvaluation generatorImages reduction1459.relations [0,31,69] reduction1459.output := by lin_cert using reduction1459.terms
def image1460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1460 : InImage map_14_107 image1460 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1460 : Bundle := named_bundle% "RealMapCertificates/relations/basis1460.json"
theorem reductionProof1460 : EqualModuloRelations reduction1460.relations reduction1460.input reduction1460.output := by lin_cert using reduction1460.terms
theorem substitutionProof1460 : IsMapEvaluation generatorImages reduction1460.relations [0,0,201] reduction1460.output := by lin_cert using reduction1460.terms
def map_14_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1500 : InImage map_14_108 image1500 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1500 : Bundle := named_bundle% "RealMapCertificates/relations/basis1500.json"
theorem reductionProof1500 : EqualModuloRelations reduction1500.relations reduction1500.input reduction1500.output := by lin_cert using reduction1500.terms
theorem substitutionProof1500 : IsMapEvaluation generatorImages reduction1500.relations [1,31,69] reduction1500.output := by lin_cert using reduction1500.terms
def map_14_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1533 : InImage map_14_109 image1533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1533 : Bundle := named_bundle% "RealMapCertificates/relations/basis1533.json"
theorem reductionProof1533 : EqualModuloRelations reduction1533.relations reduction1533.input reduction1533.output := by lin_cert using reduction1533.terms
theorem substitutionProof1533 : IsMapEvaluation generatorImages reduction1533.relations [0,2,195] reduction1533.output := by lin_cert using reduction1533.terms
def map_14_110 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1567 : InImage map_14_110 image1567 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1567 : Bundle := named_bundle% "RealMapCertificates/relations/basis1567.json"
theorem reductionProof1567 : EqualModuloRelations reduction1567.relations reduction1567.input reduction1567.output := by lin_cert using reduction1567.terms
theorem substitutionProof1567 : IsMapEvaluation generatorImages reduction1567.relations [0,39,69] reduction1567.output := by lin_cert using reduction1567.terms
def image1568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1568 : InImage map_14_110 image1568 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1568 : Bundle := named_bundle% "RealMapCertificates/relations/basis1568.json"
theorem reductionProof1568 : EqualModuloRelations reduction1568.relations reduction1568.input reduction1568.output := by lin_cert using reduction1568.terms
theorem substitutionProof1568 : IsMapEvaluation generatorImages reduction1568.relations [0,0,212] reduction1568.output := by lin_cert using reduction1568.terms
def map_14_111 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1619 : InImage map_14_111 image1619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1619 : Bundle := named_bundle% "RealMapCertificates/relations/basis1619.json"
theorem reductionProof1619 : EqualModuloRelations reduction1619.relations reduction1619.input reduction1619.output := by lin_cert using reduction1619.terms
theorem substitutionProof1619 : IsMapEvaluation generatorImages reduction1619.relations [0,0,40,69] reduction1619.output := by lin_cert using reduction1619.terms
def image1620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1620 : InImage map_14_111 image1620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1620 : Bundle := named_bundle% "RealMapCertificates/relations/basis1620.json"
theorem reductionProof1620 : EqualModuloRelations reduction1620.relations reduction1620.input reduction1620.output := by lin_cert using reduction1620.terms
theorem substitutionProof1620 : IsMapEvaluation generatorImages reduction1620.relations [0,0,0,0,209] reduction1620.output := by lin_cert using reduction1620.terms
def map_14_112 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1647 : InImage map_14_112 image1647 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1647 : Bundle := named_bundle% "RealMapCertificates/relations/basis1647.json"
theorem reductionProof1647 : EqualModuloRelations reduction1647.relations reduction1647.input reduction1647.output := by lin_cert using reduction1647.terms
theorem substitutionProof1647 : IsMapEvaluation generatorImages reduction1647.relations [228] reduction1647.output := by lin_cert using reduction1647.terms
def image1648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1648 : InImage map_14_112 image1648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1648 : Bundle := named_bundle% "RealMapCertificates/relations/basis1648.json"
theorem reductionProof1648 : EqualModuloRelations reduction1648.relations reduction1648.input reduction1648.output := by lin_cert using reduction1648.terms
theorem substitutionProof1648 : IsMapEvaluation generatorImages reduction1648.relations [9,13,75] reduction1648.output := by lin_cert using reduction1648.terms
def image1649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1649 : InImage map_14_112 image1649 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1649 : Bundle := named_bundle% "RealMapCertificates/relations/basis1649.json"
theorem reductionProof1649 : EqualModuloRelations reduction1649.relations reduction1649.input reduction1649.output := by lin_cert using reduction1649.terms
theorem substitutionProof1649 : IsMapEvaluation generatorImages reduction1649.relations [0,0,3,188] reduction1649.output := by lin_cert using reduction1649.terms
def map_14_113 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1686 : InImage map_14_113 image1686 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1686 : Bundle := named_bundle% "RealMapCertificates/relations/basis1686.json"
theorem reductionProof1686 : EqualModuloRelations reduction1686.relations reduction1686.input reduction1686.output := by lin_cert using reduction1686.terms
theorem substitutionProof1686 : IsMapEvaluation generatorImages reduction1686.relations [0,3,195] reduction1686.output := by lin_cert using reduction1686.terms
def image1687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1687 : InImage map_14_113 image1687 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1687 : Bundle := named_bundle% "RealMapCertificates/relations/basis1687.json"
theorem reductionProof1687 : EqualModuloRelations reduction1687.relations reduction1687.input reduction1687.output := by lin_cert using reduction1687.terms
theorem substitutionProof1687 : IsMapEvaluation generatorImages reduction1687.relations [0,2,212] reduction1687.output := by lin_cert using reduction1687.terms
def map_14_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1728 : InImage map_14_114 image1728 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1728 : Bundle := named_bundle% "RealMapCertificates/relations/basis1728.json"
theorem reductionProof1728 : EqualModuloRelations reduction1728.relations reduction1728.input reduction1728.output := by lin_cert using reduction1728.terms
theorem substitutionProof1728 : IsMapEvaluation generatorImages reduction1728.relations [0,0,8,17,69] reduction1728.output := by lin_cert using reduction1728.terms
def map_14_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1754 : InImage map_14_115 image1754 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1754 : Bundle := named_bundle% "RealMapCertificates/relations/basis1754.json"
theorem reductionProof1754 : EqualModuloRelations reduction1754.relations reduction1754.input reduction1754.output := by lin_cert using reduction1754.terms
theorem substitutionProof1754 : IsMapEvaluation generatorImages reduction1754.relations [13,13,75] reduction1754.output := by lin_cert using reduction1754.terms
def map_14_116 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1790 : InImage map_14_116 image1790 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1790 : Bundle := named_bundle% "RealMapCertificates/relations/basis1790.json"
theorem reductionProof1790 : EqualModuloRelations reduction1790.relations reduction1790.input reduction1790.output := by lin_cert using reduction1790.terms
theorem substitutionProof1790 : IsMapEvaluation generatorImages reduction1790.relations [249] reduction1790.output := by lin_cert using reduction1790.terms
def image1791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1791 : InImage map_14_116 image1791 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1791 : Bundle := named_bundle% "RealMapCertificates/relations/basis1791.json"
theorem reductionProof1791 : EqualModuloRelations reduction1791.relations reduction1791.input reduction1791.output := by lin_cert using reduction1791.terms
theorem substitutionProof1791 : IsMapEvaluation generatorImages reduction1791.relations [0,8,19,69] reduction1791.output := by lin_cert using reduction1791.terms
def map_14_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1837 : InImage map_14_117 image1837 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1837 : Bundle := named_bundle% "RealMapCertificates/relations/basis1837.json"
theorem reductionProof1837 : EqualModuloRelations reduction1837.relations reduction1837.input reduction1837.output := by lin_cert using reduction1837.terms
theorem substitutionProof1837 : IsMapEvaluation generatorImages reduction1837.relations [0,0,8,20,69] reduction1837.output := by lin_cert using reduction1837.terms
def map_14_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1869 : InImage map_14_118 image1869 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1869 : Bundle := named_bundle% "RealMapCertificates/relations/basis1869.json"
theorem reductionProof1869 : EqualModuloRelations reduction1869.relations reduction1869.input reduction1869.output := by lin_cert using reduction1869.terms
theorem substitutionProof1869 : IsMapEvaluation generatorImages reduction1869.relations [0,0,0,0,0,235] reduction1869.output := by lin_cert using reduction1869.terms
def map_14_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1905 : InImage map_14_119 image1905 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1905 : Bundle := named_bundle% "RealMapCertificates/relations/basis1905.json"
theorem reductionProof1905 : EqualModuloRelations reduction1905.relations reduction1905.input reduction1905.output := by lin_cert using reduction1905.terms
theorem substitutionProof1905 : IsMapEvaluation generatorImages reduction1905.relations [0,3,3,188] reduction1905.output := by lin_cert using reduction1905.terms
def map_14_120 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1954 : InImage map_14_120 image1954 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1954 : Bundle := named_bundle% "RealMapCertificates/relations/basis1954.json"
theorem reductionProof1954 : EqualModuloRelations reduction1954.relations reduction1954.input reduction1954.output := by lin_cert using reduction1954.terms
theorem substitutionProof1954 : IsMapEvaluation generatorImages reduction1954.relations [267] reduction1954.output := by lin_cert using reduction1954.terms
def image1955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1955 : InImage map_14_120 image1955 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1955 : Bundle := named_bundle% "RealMapCertificates/relations/basis1955.json"
theorem reductionProof1955 : EqualModuloRelations reduction1955.relations reduction1955.input reduction1955.output := by lin_cert using reduction1955.terms
theorem substitutionProof1955 : IsMapEvaluation generatorImages reduction1955.relations [0,0,7,188] reduction1955.output := by lin_cert using reduction1955.terms
def map_14_121 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1993 : InImage map_14_121 image1993 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1993 : Bundle := named_bundle% "RealMapCertificates/relations/basis1993.json"
theorem reductionProof1993 : EqualModuloRelations reduction1993.relations reduction1993.input reduction1993.output := by lin_cert using reduction1993.terms
theorem substitutionProof1993 : IsMapEvaluation generatorImages reduction1993.relations [13,164] reduction1993.output := by lin_cert using reduction1993.terms
def map_14_122 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2029 : InImage map_14_122 image2029 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2029 : Bundle := named_bundle% "RealMapCertificates/relations/basis2029.json"
theorem reductionProof2029 : EqualModuloRelations reduction2029.relations reduction2029.input reduction2029.output := by lin_cert using reduction2029.terms
theorem substitutionProof2029 : IsMapEvaluation generatorImages reduction2029.relations [279] reduction2029.output := by lin_cert using reduction2029.terms
def map_14_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2076 : InImage map_14_123 image2076 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2076 : Bundle := named_bundle% "RealMapCertificates/relations/basis2076.json"
theorem reductionProof2076 : EqualModuloRelations reduction2076.relations reduction2076.input reduction2076.output := by lin_cert using reduction2076.terms
theorem substitutionProof2076 : IsMapEvaluation generatorImages reduction2076.relations [286] reduction2076.output := by lin_cert using reduction2076.terms
def image2077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2077 : InImage map_14_123 image2077 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2077 : Bundle := named_bundle% "RealMapCertificates/relations/basis2077.json"
theorem reductionProof2077 : EqualModuloRelations reduction2077.relations reduction2077.input reduction2077.output := by lin_cert using reduction2077.terms
theorem substitutionProof2077 : IsMapEvaluation generatorImages reduction2077.relations [285] reduction2077.output := by lin_cert using reduction2077.terms
def map_14_124 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2114 : InImage map_14_124 image2114 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2114 : Bundle := named_bundle% "RealMapCertificates/relations/basis2114.json"
theorem reductionProof2114 : EqualModuloRelations reduction2114.relations reduction2114.input reduction2114.output := by lin_cert using reduction2114.terms
theorem substitutionProof2114 : IsMapEvaluation generatorImages reduction2114.relations [59,69] reduction2114.output := by lin_cert using reduction2114.terms
def image2115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2115 : InImage map_14_124 image2115 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2115 : Bundle := named_bundle% "RealMapCertificates/relations/basis2115.json"
theorem reductionProof2115 : EqualModuloRelations reduction2115.relations reduction2115.input reduction2115.output := by lin_cert using reduction2115.terms
theorem substitutionProof2115 : IsMapEvaluation generatorImages reduction2115.relations [2,268] reduction2115.output := by lin_cert using reduction2115.terms
def image2116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2116 : InImage map_14_124 image2116 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2116 : Bundle := named_bundle% "RealMapCertificates/relations/basis2116.json"
theorem reductionProof2116 : EqualModuloRelations reduction2116.relations reduction2116.input reduction2116.output := by lin_cert using reduction2116.terms
theorem substitutionProof2116 : IsMapEvaluation generatorImages reduction2116.relations [1,280] reduction2116.output := by lin_cert using reduction2116.terms
end RealMapCertificates
