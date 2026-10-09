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
  | 9 => [[8]]
  | 13 => [[9]]
  | 23 => [[7,7]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 74 => []
  | 76 => []
  | 80 => []
  | 107 => []
  | 113 => [[0,8,12]]
  | 181 => []
  | 189 => []
  | 190 => []
  | 209 => []
  | 251 => []
  | 275 => []
  | 281 => []
  | 287 => []
  | 288 => []
  | 306 => []
  | 308 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 319 => []
  | 324 => []
  | 332 => []
  | 333 => []
  | 335 => []
  | 337 => []
  | 338 => []
  | 361 => []
  | 362 => []
  | 363 => []
  | 366 => []
  | 367 => []
  | 370 => []
  | 385 => []
  | 386 => []
  | 406 => []
  | 407 => []
  | 414 => []
  | 415 => []
  | 417 => []
  | 418 => []
  | 419 => []
  | 425 => []
  | 439 => []
  | 440 => []
  | 443 => []
  | 449 => []
  | 450 => []
  | 457 => []
  | 460 => []
  | 475 => []
  | 482 => []
  | 483 => []
  | 484 => []
  | 485 => []
  | 486 => []
  | 502 => []
  | 531 => []
  | 533 => []
  | 534 => []
  | 540 => []
  | 562 => []
  | 575 => []
  | 589 => []
  | 620 => []
  | _ => []
def map_14_125 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2154 : InImage map_14_125 image2154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2154 : Bundle := named_bundle% "RealMapCertificates/relations/basis2154.json"
theorem reductionProof2154 : EqualModuloRelations reduction2154.relations reduction2154.input reduction2154.output := by lin_cert using reduction2154.terms
theorem substitutionProof2154 : IsMapEvaluation generatorImages reduction2154.relations [8,209] reduction2154.output := by lin_cert using reduction2154.terms
def image2155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2155 : InImage map_14_125 image2155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2155 : Bundle := named_bundle% "RealMapCertificates/relations/basis2155.json"
theorem reductionProof2155 : EqualModuloRelations reduction2155.relations reduction2155.input reduction2155.output := by lin_cert using reduction2155.terms
theorem substitutionProof2155 : IsMapEvaluation generatorImages reduction2155.relations [1,287] reduction2155.output := by lin_cert using reduction2155.terms
def map_14_126 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2211 : InImage map_14_126 image2211 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2211 : Bundle := named_bundle% "RealMapCertificates/relations/basis2211.json"
theorem reductionProof2211 : EqualModuloRelations reduction2211.relations reduction2211.input reduction2211.output := by lin_cert using reduction2211.terms
theorem substitutionProof2211 : IsMapEvaluation generatorImages reduction2211.relations [306] reduction2211.output := by lin_cert using reduction2211.terms
def image2212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2212 : InImage map_14_126 image2212 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2212 : Bundle := named_bundle% "RealMapCertificates/relations/basis2212.json"
theorem reductionProof2212 : EqualModuloRelations reduction2212.relations reduction2212.input reduction2212.output := by lin_cert using reduction2212.terms
theorem substitutionProof2212 : IsMapEvaluation generatorImages reduction2212.relations [13,189] reduction2212.output := by lin_cert using reduction2212.terms
def map_14_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2252 : InImage map_14_127 image2252 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2252 : Bundle := named_bundle% "RealMapCertificates/relations/basis2252.json"
theorem reductionProof2252 : EqualModuloRelations reduction2252.relations reduction2252.input reduction2252.output := by lin_cert using reduction2252.terms
theorem substitutionProof2252 : IsMapEvaluation generatorImages reduction2252.relations [2,287] reduction2252.output := by lin_cert using reduction2252.terms
def image2253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2253 : InImage map_14_127 image2253 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2253 : Bundle := named_bundle% "RealMapCertificates/relations/basis2253.json"
theorem reductionProof2253 : EqualModuloRelations reduction2253.relations reduction2253.input reduction2253.output := by lin_cert using reduction2253.terms
theorem substitutionProof2253 : IsMapEvaluation generatorImages reduction2253.relations [0,308] reduction2253.output := by lin_cert using reduction2253.terms
def map_14_128 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2297 : InImage map_14_128 image2297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2297 : Bundle := named_bundle% "RealMapCertificates/relations/basis2297.json"
theorem reductionProof2297 : EqualModuloRelations reduction2297.relations reduction2297.input reduction2297.output := by lin_cert using reduction2297.terms
theorem substitutionProof2297 : IsMapEvaluation generatorImages reduction2297.relations [67,67] reduction2297.output := by lin_cert using reduction2297.terms
def image2298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2298 : InImage map_14_128 image2298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2298 : Bundle := named_bundle% "RealMapCertificates/relations/basis2298.json"
theorem reductionProof2298 : EqualModuloRelations reduction2298.relations reduction2298.input reduction2298.output := by lin_cert using reduction2298.terms
theorem substitutionProof2298 : IsMapEvaluation generatorImages reduction2298.relations [9,209] reduction2298.output := by lin_cert using reduction2298.terms
def image2299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2299 : InImage map_14_128 image2299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2299 : Bundle := named_bundle% "RealMapCertificates/relations/basis2299.json"
theorem reductionProof2299 : EqualModuloRelations reduction2299.relations reduction2299.input reduction2299.output := by lin_cert using reduction2299.terms
theorem substitutionProof2299 : IsMapEvaluation generatorImages reduction2299.relations [1,308] reduction2299.output := by lin_cert using reduction2299.terms
def map_14_129 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2364 : InImage map_14_129 image2364 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2364 : Bundle := named_bundle% "RealMapCertificates/relations/basis2364.json"
theorem reductionProof2364 : EqualModuloRelations reduction2364.relations reduction2364.input reduction2364.output := by lin_cert using reduction2364.terms
theorem substitutionProof2364 : IsMapEvaluation generatorImages reduction2364.relations [0,319] reduction2364.output := by lin_cert using reduction2364.terms
def image2365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2365 : InImage map_14_129 image2365 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2365 : Bundle := named_bundle% "RealMapCertificates/relations/basis2365.json"
theorem reductionProof2365 : EqualModuloRelations reduction2365.relations reduction2365.input reduction2365.output := by lin_cert using reduction2365.terms
theorem substitutionProof2365 : IsMapEvaluation generatorImages reduction2365.relations [0,67,68] reduction2365.output := by lin_cert using reduction2365.terms
def map_14_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2418 : InImage map_14_130 image2418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2418 : Bundle := named_bundle% "RealMapCertificates/relations/basis2418.json"
theorem reductionProof2418 : EqualModuloRelations reduction2418.relations reduction2418.input reduction2418.output := by lin_cert using reduction2418.terms
theorem substitutionProof2418 : IsMapEvaluation generatorImages reduction2418.relations [1,319] reduction2418.output := by lin_cert using reduction2418.terms
def map_14_131 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2473 : InImage map_14_131 image2473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2473 : Bundle := named_bundle% "RealMapCertificates/relations/basis2473.json"
theorem reductionProof2473 : EqualModuloRelations reduction2473.relations reduction2473.input reduction2473.output := by lin_cert using reduction2473.terms
theorem substitutionProof2473 : IsMapEvaluation generatorImages reduction2473.relations [13,209] reduction2473.output := by lin_cert using reduction2473.terms
def image2474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2474 : InImage map_14_131 image2474 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2474 : Bundle := named_bundle% "RealMapCertificates/relations/basis2474.json"
theorem reductionProof2474 : EqualModuloRelations reduction2474.relations reduction2474.input reduction2474.output := by lin_cert using reduction2474.terms
theorem substitutionProof2474 : IsMapEvaluation generatorImages reduction2474.relations [3,287] reduction2474.output := by lin_cert using reduction2474.terms
def image2475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2475 : InImage map_14_131 image2475 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2475 : Bundle := named_bundle% "RealMapCertificates/relations/basis2475.json"
theorem reductionProof2475 : EqualModuloRelations reduction2475.relations reduction2475.input reduction2475.output := by lin_cert using reduction2475.terms
theorem substitutionProof2475 : IsMapEvaluation generatorImages reduction2475.relations [0,0,0,0,312] reduction2475.output := by lin_cert using reduction2475.terms
def image2476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2476 : InImage map_14_131 image2476 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2476 : Bundle := named_bundle% "RealMapCertificates/relations/basis2476.json"
theorem reductionProof2476 : EqualModuloRelations reduction2476.relations reduction2476.input reduction2476.output := by lin_cert using reduction2476.terms
theorem substitutionProof2476 : IsMapEvaluation generatorImages reduction2476.relations [0,0,0,0,311] reduction2476.output := by lin_cert using reduction2476.terms
def map_14_132 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2554 : InImage map_14_132 image2554 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2554 : Bundle := named_bundle% "RealMapCertificates/relations/basis2554.json"
theorem reductionProof2554 : EqualModuloRelations reduction2554.relations reduction2554.input reduction2554.output := by lin_cert using reduction2554.terms
theorem substitutionProof2554 : IsMapEvaluation generatorImages reduction2554.relations [362] reduction2554.output := by lin_cert using reduction2554.terms
def image2555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2555 : InImage map_14_132 image2555 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2555 : Bundle := named_bundle% "RealMapCertificates/relations/basis2555.json"
theorem reductionProof2555 : EqualModuloRelations reduction2555.relations reduction2555.input reduction2555.output := by lin_cert using reduction2555.terms
theorem substitutionProof2555 : IsMapEvaluation generatorImages reduction2555.relations [361] reduction2555.output := by lin_cert using reduction2555.terms
def image2556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2556 : InImage map_14_132 image2556 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2556 : Bundle := named_bundle% "RealMapCertificates/relations/basis2556.json"
theorem reductionProof2556 : EqualModuloRelations reduction2556.relations reduction2556.input reduction2556.output := by lin_cert using reduction2556.terms
theorem substitutionProof2556 : IsMapEvaluation generatorImages reduction2556.relations [0,0,335] reduction2556.output := by lin_cert using reduction2556.terms
def image2557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2557 : InImage map_14_132 image2557 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2557 : Bundle := named_bundle% "RealMapCertificates/relations/basis2557.json"
theorem reductionProof2557 : EqualModuloRelations reduction2557.relations reduction2557.input reduction2557.output := by lin_cert using reduction2557.terms
theorem substitutionProof2557 : IsMapEvaluation generatorImages reduction2557.relations [0,0,0,0,0,314] reduction2557.output := by lin_cert using reduction2557.terms
def map_14_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2616 : InImage map_14_133 image2616 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2616 : Bundle := named_bundle% "RealMapCertificates/relations/basis2616.json"
theorem reductionProof2616 : EqualModuloRelations reduction2616.relations reduction2616.input reduction2616.output := by lin_cert using reduction2616.terms
theorem substitutionProof2616 : IsMapEvaluation generatorImages reduction2616.relations [370] reduction2616.output := by lin_cert using reduction2616.terms
def image2617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2617 : InImage map_14_133 image2617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2617 : Bundle := named_bundle% "RealMapCertificates/relations/basis2617.json"
theorem reductionProof2617 : EqualModuloRelations reduction2617.relations reduction2617.input reduction2617.output := by lin_cert using reduction2617.terms
theorem substitutionProof2617 : IsMapEvaluation generatorImages reduction2617.relations [0,0,0,69,72] reduction2617.output := by lin_cert using reduction2617.terms
def map_14_134 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2679 : InImage map_14_134 image2679 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2679 : Bundle := named_bundle% "RealMapCertificates/relations/basis2679.json"
theorem reductionProof2679 : EqualModuloRelations reduction2679.relations reduction2679.input reduction2679.output := by lin_cert using reduction2679.terms
theorem substitutionProof2679 : IsMapEvaluation generatorImages reduction2679.relations [385] reduction2679.output := by lin_cert using reduction2679.terms
def image2680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2680 : InImage map_14_134 image2680 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2680 : Bundle := named_bundle% "RealMapCertificates/relations/basis2680.json"
theorem reductionProof2680 : EqualModuloRelations reduction2680.relations reduction2680.input reduction2680.output := by lin_cert using reduction2680.terms
theorem substitutionProof2680 : IsMapEvaluation generatorImages reduction2680.relations [0,0,363] reduction2680.output := by lin_cert using reduction2680.terms
def map_14_135 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2771 : InImage map_14_135 image2771 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2771 : Bundle := named_bundle% "RealMapCertificates/relations/basis2771.json"
theorem reductionProof2771 : EqualModuloRelations reduction2771.relations reduction2771.input reduction2771.output := by lin_cert using reduction2771.terms
theorem substitutionProof2771 : IsMapEvaluation generatorImages reduction2771.relations [406] reduction2771.output := by lin_cert using reduction2771.terms
def map_14_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2841 : InImage map_14_136 image2841 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2841 : Bundle := named_bundle% "RealMapCertificates/relations/basis2841.json"
theorem reductionProof2841 : EqualModuloRelations reduction2841.relations reduction2841.input reduction2841.output := by lin_cert using reduction2841.terms
theorem substitutionProof2841 : IsMapEvaluation generatorImages reduction2841.relations [0,407] reduction2841.output := by lin_cert using reduction2841.terms
def map_14_137 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2911 : InImage map_14_137 image2911 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2911 : Bundle := named_bundle% "RealMapCertificates/relations/basis2911.json"
theorem reductionProof2911 : EqualModuloRelations reduction2911.relations reduction2911.input reduction2911.output := by lin_cert using reduction2911.terms
theorem substitutionProof2911 : IsMapEvaluation generatorImages reduction2911.relations [23,181] reduction2911.output := by lin_cert using reduction2911.terms
def image2912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2912 : InImage map_14_137 image2912 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2912 : Bundle := named_bundle% "RealMapCertificates/relations/basis2912.json"
theorem reductionProof2912 : EqualModuloRelations reduction2912.relations reduction2912.input reduction2912.output := by lin_cert using reduction2912.terms
theorem substitutionProof2912 : IsMapEvaluation generatorImages reduction2912.relations [0,418] reduction2912.output := by lin_cert using reduction2912.terms
def image2913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2913 : InImage map_14_137 image2913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2913 : Bundle := named_bundle% "RealMapCertificates/relations/basis2913.json"
theorem reductionProof2913 : EqualModuloRelations reduction2913.relations reduction2913.input reduction2913.output := by lin_cert using reduction2913.terms
theorem substitutionProof2913 : IsMapEvaluation generatorImages reduction2913.relations [0,0,0,386] reduction2913.output := by lin_cert using reduction2913.terms
def map_14_138 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3003 : InImage map_14_138 image3003 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3003 : Bundle := named_bundle% "RealMapCertificates/relations/basis3003.json"
theorem reductionProof3003 : EqualModuloRelations reduction3003.relations reduction3003.input reduction3003.output := by lin_cert using reduction3003.terms
theorem substitutionProof3003 : IsMapEvaluation generatorImages reduction3003.relations [440] reduction3003.output := by lin_cert using reduction3003.terms
def image3004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3004 : InImage map_14_138 image3004 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3004 : Bundle := named_bundle% "RealMapCertificates/relations/basis3004.json"
theorem reductionProof3004 : EqualModuloRelations reduction3004.relations reduction3004.input reduction3004.output := by lin_cert using reduction3004.terms
theorem substitutionProof3004 : IsMapEvaluation generatorImages reduction3004.relations [439] reduction3004.output := by lin_cert using reduction3004.terms
def image3005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3005 : InImage map_14_138 image3005 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3005 : Bundle := named_bundle% "RealMapCertificates/relations/basis3005.json"
theorem reductionProof3005 : EqualModuloRelations reduction3005.relations reduction3005.input reduction3005.output := by lin_cert using reduction3005.terms
theorem substitutionProof3005 : IsMapEvaluation generatorImages reduction3005.relations [23,190] reduction3005.output := by lin_cert using reduction3005.terms
def image3006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3006 : InImage map_14_138 image3006 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3006 : Bundle := named_bundle% "RealMapCertificates/relations/basis3006.json"
theorem reductionProof3006 : EqualModuloRelations reduction3006.relations reduction3006.input reduction3006.output := by lin_cert using reduction3006.terms
theorem substitutionProof3006 : IsMapEvaluation generatorImages reduction3006.relations [1,418] reduction3006.output := by lin_cert using reduction3006.terms
def image3007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3007 : InImage map_14_138 image3007 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3007 : Bundle := named_bundle% "RealMapCertificates/relations/basis3007.json"
theorem reductionProof3007 : EqualModuloRelations reduction3007.relations reduction3007.input reduction3007.output := by lin_cert using reduction3007.terms
theorem substitutionProof3007 : IsMapEvaluation generatorImages reduction3007.relations [1,417] reduction3007.output := by lin_cert using reduction3007.terms
def map_14_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3079 : InImage map_14_139 image3079 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3079 : Bundle := named_bundle% "RealMapCertificates/relations/basis3079.json"
theorem reductionProof3079 : EqualModuloRelations reduction3079.relations reduction3079.input reduction3079.output := by lin_cert using reduction3079.terms
theorem substitutionProof3079 : IsMapEvaluation generatorImages reduction3079.relations [449] reduction3079.output := by lin_cert using reduction3079.terms
def image3080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3080 : InImage map_14_139 image3080 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3080 : Bundle := named_bundle% "RealMapCertificates/relations/basis3080.json"
theorem reductionProof3080 : EqualModuloRelations reduction3080.relations reduction3080.input reduction3080.output := by lin_cert using reduction3080.terms
theorem substitutionProof3080 : IsMapEvaluation generatorImages reduction3080.relations [1,7,275] reduction3080.output := by lin_cert using reduction3080.terms
def image3081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3081 : InImage map_14_139 image3081 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3081 : Bundle := named_bundle% "RealMapCertificates/relations/basis3081.json"
theorem reductionProof3081 : EqualModuloRelations reduction3081.relations reduction3081.input reduction3081.output := by lin_cert using reduction3081.terms
theorem substitutionProof3081 : IsMapEvaluation generatorImages reduction3081.relations [0,0,425] reduction3081.output := by lin_cert using reduction3081.terms
def map_14_140 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3155 : InImage map_14_140 image3155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3155 : Bundle := named_bundle% "RealMapCertificates/relations/basis3155.json"
theorem reductionProof3155 : EqualModuloRelations reduction3155.relations reduction3155.input reduction3155.output := by lin_cert using reduction3155.terms
theorem substitutionProof3155 : IsMapEvaluation generatorImages reduction3155.relations [457] reduction3155.output := by lin_cert using reduction3155.terms
def image3156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3156 : InImage map_14_140 image3156 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3156 : Bundle := named_bundle% "RealMapCertificates/relations/basis3156.json"
theorem reductionProof3156 : EqualModuloRelations reduction3156.relations reduction3156.input reduction3156.output := by lin_cert using reduction3156.terms
theorem substitutionProof3156 : IsMapEvaluation generatorImages reduction3156.relations [68,107] reduction3156.output := by lin_cert using reduction3156.terms
def image3157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3157 : InImage map_14_140 image3157 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3157 : Bundle := named_bundle% "RealMapCertificates/relations/basis3157.json"
theorem reductionProof3157 : EqualModuloRelations reduction3157.relations reduction3157.input reduction3157.output := by lin_cert using reduction3157.terms
theorem substitutionProof3157 : IsMapEvaluation generatorImages reduction3157.relations [1,3,335] reduction3157.output := by lin_cert using reduction3157.terms
def image3158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3158 : InImage map_14_140 image3158 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3158 : Bundle := named_bundle% "RealMapCertificates/relations/basis3158.json"
theorem reductionProof3158 : EqualModuloRelations reduction3158.relations reduction3158.input reduction3158.output := by lin_cert using reduction3158.terms
theorem substitutionProof3158 : IsMapEvaluation generatorImages reduction3158.relations [0,0,0,0,0,0,0,0,0,0,0,0,69,69] reduction3158.output := by lin_cert using reduction3158.terms
def map_14_141 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3259 : InImage map_14_141 image3259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3259 : Bundle := named_bundle% "RealMapCertificates/relations/basis3259.json"
theorem reductionProof3259 : EqualModuloRelations reduction3259.relations reduction3259.input reduction3259.output := by lin_cert using reduction3259.terms
theorem substitutionProof3259 : IsMapEvaluation generatorImages reduction3259.relations [0,13,251] reduction3259.output := by lin_cert using reduction3259.terms
def image3260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3260 : InImage map_14_141 image3260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3260 : Bundle := named_bundle% "RealMapCertificates/relations/basis3260.json"
theorem reductionProof3260 : EqualModuloRelations reduction3260.relations reduction3260.input reduction3260.output := by lin_cert using reduction3260.terms
theorem substitutionProof3260 : IsMapEvaluation generatorImages reduction3260.relations [0,3,363] reduction3260.output := by lin_cert using reduction3260.terms
def image3261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3261 : InImage map_14_141 image3261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3261 : Bundle := named_bundle% "RealMapCertificates/relations/basis3261.json"
theorem reductionProof3261 : EqualModuloRelations reduction3261.relations reduction3261.input reduction3261.output := by lin_cert using reduction3261.terms
theorem substitutionProof3261 : IsMapEvaluation generatorImages reduction3261.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3261.output := by lin_cert using reduction3261.terms
def map_14_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3329 : InImage map_14_142 image3329 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3329 : Bundle := named_bundle% "RealMapCertificates/relations/basis3329.json"
theorem reductionProof3329 : EqualModuloRelations reduction3329.relations reduction3329.input reduction3329.output := by lin_cert using reduction3329.terms
theorem substitutionProof3329 : IsMapEvaluation generatorImages reduction3329.relations [482] reduction3329.output := by lin_cert using reduction3329.terms
def image3330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3330 : InImage map_14_142 image3330 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3330 : Bundle := named_bundle% "RealMapCertificates/relations/basis3330.json"
theorem reductionProof3330 : EqualModuloRelations reduction3330.relations reduction3330.input reduction3330.output := by lin_cert using reduction3330.terms
theorem substitutionProof3330 : IsMapEvaluation generatorImages reduction3330.relations [69,113] reduction3330.output := by lin_cert using reduction3330.terms
def image3331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3331 : InImage map_14_142 image3331 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3331 : Bundle := named_bundle% "RealMapCertificates/relations/basis3331.json"
theorem reductionProof3331 : EqualModuloRelations reduction3331.relations reduction3331.input reduction3331.output := by lin_cert using reduction3331.terms
theorem substitutionProof3331 : IsMapEvaluation generatorImages reduction3331.relations [0,475] reduction3331.output := by lin_cert using reduction3331.terms
def image3332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3332 : InImage map_14_142 image3332 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3332 : Bundle := named_bundle% "RealMapCertificates/relations/basis3332.json"
theorem reductionProof3332 : EqualModuloRelations reduction3332.relations reduction3332.input reduction3332.output := by lin_cert using reduction3332.terms
theorem substitutionProof3332 : IsMapEvaluation generatorImages reduction3332.relations [0,0,460] reduction3332.output := by lin_cert using reduction3332.terms
def map_14_143 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3408 : InImage map_14_143 image3408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3408 : Bundle := named_bundle% "RealMapCertificates/relations/basis3408.json"
theorem reductionProof3408 : EqualModuloRelations reduction3408.relations reduction3408.input reduction3408.output := by lin_cert using reduction3408.terms
theorem substitutionProof3408 : IsMapEvaluation generatorImages reduction3408.relations [74,107] reduction3408.output := by lin_cert using reduction3408.terms
def image3409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3409 : InImage map_14_143 image3409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3409 : Bundle := named_bundle% "RealMapCertificates/relations/basis3409.json"
theorem reductionProof3409 : EqualModuloRelations reduction3409.relations reduction3409.input reduction3409.output := by lin_cert using reduction3409.terms
theorem substitutionProof3409 : IsMapEvaluation generatorImages reduction3409.relations [9,281] reduction3409.output := by lin_cert using reduction3409.terms
def image3410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3410 : InImage map_14_143 image3410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3410 : Bundle := named_bundle% "RealMapCertificates/relations/basis3410.json"
theorem reductionProof3410 : EqualModuloRelations reduction3410.relations reduction3410.input reduction3410.output := by lin_cert using reduction3410.terms
theorem substitutionProof3410 : IsMapEvaluation generatorImages reduction3410.relations [3,407] reduction3410.output := by lin_cert using reduction3410.terms
def image3411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3411 : InImage map_14_143 image3411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3411 : Bundle := named_bundle% "RealMapCertificates/relations/basis3411.json"
theorem reductionProof3411 : EqualModuloRelations reduction3411.relations reduction3411.input reduction3411.output := by lin_cert using reduction3411.terms
theorem substitutionProof3411 : IsMapEvaluation generatorImages reduction3411.relations [0,483] reduction3411.output := by lin_cert using reduction3411.terms
def map_14_144 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3505 : InImage map_14_144 image3505 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3505 : Bundle := named_bundle% "RealMapCertificates/relations/basis3505.json"
theorem reductionProof3505 : EqualModuloRelations reduction3505.relations reduction3505.input reduction3505.output := by lin_cert using reduction3505.terms
theorem substitutionProof3505 : IsMapEvaluation generatorImages reduction3505.relations [9,288] reduction3505.output := by lin_cert using reduction3505.terms
def image3506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3506 : InImage map_14_144 image3506 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3506 : Bundle := named_bundle% "RealMapCertificates/relations/basis3506.json"
theorem reductionProof3506 : EqualModuloRelations reduction3506.relations reduction3506.input reduction3506.output := by lin_cert using reduction3506.terms
theorem substitutionProof3506 : IsMapEvaluation generatorImages reduction3506.relations [7,319] reduction3506.output := by lin_cert using reduction3506.terms
def image3507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3507 : InImage map_14_144 image3507 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3507 : Bundle := named_bundle% "RealMapCertificates/relations/basis3507.json"
theorem reductionProof3507 : EqualModuloRelations reduction3507.relations reduction3507.input reduction3507.output := by lin_cert using reduction3507.terms
theorem substitutionProof3507 : IsMapEvaluation generatorImages reduction3507.relations [3,417] reduction3507.output := by lin_cert using reduction3507.terms
def image3508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3508 : InImage map_14_144 image3508 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3508 : Bundle := named_bundle% "RealMapCertificates/relations/basis3508.json"
theorem reductionProof3508 : EqualModuloRelations reduction3508.relations reduction3508.input reduction3508.output := by lin_cert using reduction3508.terms
theorem substitutionProof3508 : IsMapEvaluation generatorImages reduction3508.relations [0,0,484] reduction3508.output := by lin_cert using reduction3508.terms
def map_14_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3574 : InImage map_14_145 image3574 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3574 : Bundle := named_bundle% "RealMapCertificates/relations/basis3574.json"
theorem reductionProof3574 : EqualModuloRelations reduction3574.relations reduction3574.input reduction3574.output := by lin_cert using reduction3574.terms
theorem substitutionProof3574 : IsMapEvaluation generatorImages reduction3574.relations [8,312] reduction3574.output := by lin_cert using reduction3574.terms
def image3575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3575 : InImage map_14_145 image3575 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3575 : Bundle := named_bundle% "RealMapCertificates/relations/basis3575.json"
theorem reductionProof3575 : EqualModuloRelations reduction3575.relations reduction3575.input reduction3575.output := by lin_cert using reduction3575.terms
theorem substitutionProof3575 : IsMapEvaluation generatorImages reduction3575.relations [1,76,107] reduction3575.output := by lin_cert using reduction3575.terms
def image3576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3576 : InImage map_14_145 image3576 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3576 : Bundle := named_bundle% "RealMapCertificates/relations/basis3576.json"
theorem reductionProof3576 : EqualModuloRelations reduction3576.relations reduction3576.input reduction3576.output := by lin_cert using reduction3576.terms
theorem substitutionProof3576 : IsMapEvaluation generatorImages reduction3576.relations [0,502] reduction3576.output := by lin_cert using reduction3576.terms
def map_14_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3653 : InImage map_14_146 image3653 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3653 : Bundle := named_bundle% "RealMapCertificates/relations/basis3653.json"
theorem reductionProof3653 : EqualModuloRelations reduction3653.relations reduction3653.input reduction3653.output := by lin_cert using reduction3653.terms
theorem substitutionProof3653 : IsMapEvaluation generatorImages reduction3653.relations [13,281] reduction3653.output := by lin_cert using reduction3653.terms
def image3654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3654 : InImage map_14_146 image3654 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3654 : Bundle := named_bundle% "RealMapCertificates/relations/basis3654.json"
theorem reductionProof3654 : EqualModuloRelations reduction3654.relations reduction3654.input reduction3654.output := by lin_cert using reduction3654.terms
theorem substitutionProof3654 : IsMapEvaluation generatorImages reduction3654.relations [3,3,335] reduction3654.output := by lin_cert using reduction3654.terms
def image3655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3655 : InImage map_14_146 image3655 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3655 : Bundle := named_bundle% "RealMapCertificates/relations/basis3655.json"
theorem reductionProof3655 : EqualModuloRelations reduction3655.relations reduction3655.input reduction3655.output := by lin_cert using reduction3655.terms
theorem substitutionProof3655 : IsMapEvaluation generatorImages reduction3655.relations [0,8,314] reduction3655.output := by lin_cert using reduction3655.terms
def image3656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3656 : InImage map_14_146 image3656 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3656 : Bundle := named_bundle% "RealMapCertificates/relations/basis3656.json"
theorem reductionProof3656 : EqualModuloRelations reduction3656.relations reduction3656.input reduction3656.output := by lin_cert using reduction3656.terms
theorem substitutionProof3656 : IsMapEvaluation generatorImages reduction3656.relations [0,3,425] reduction3656.output := by lin_cert using reduction3656.terms
def image3657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3657 : InImage map_14_146 image3657 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3657 : Bundle := named_bundle% "RealMapCertificates/relations/basis3657.json"
theorem reductionProof3657 : EqualModuloRelations reduction3657.relations reduction3657.input reduction3657.output := by lin_cert using reduction3657.terms
theorem substitutionProof3657 : IsMapEvaluation generatorImages reduction3657.relations [0,0,0,7,311] reduction3657.output := by lin_cert using reduction3657.terms
def map_14_147 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3764 : InImage map_14_147 image3764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3764 : Bundle := named_bundle% "RealMapCertificates/relations/basis3764.json"
theorem reductionProof3764 : EqualModuloRelations reduction3764.relations reduction3764.input reduction3764.output := by lin_cert using reduction3764.terms
theorem substitutionProof3764 : IsMapEvaluation generatorImages reduction3764.relations [531] reduction3764.output := by lin_cert using reduction3764.terms
def image3765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3765 : InImage map_14_147 image3765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3765 : Bundle := named_bundle% "RealMapCertificates/relations/basis3765.json"
theorem reductionProof3765 : EqualModuloRelations reduction3765.relations reduction3765.input reduction3765.output := by lin_cert using reduction3765.terms
theorem substitutionProof3765 : IsMapEvaluation generatorImages reduction3765.relations [13,288] reduction3765.output := by lin_cert using reduction3765.terms
def image3766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3766 : InImage map_14_147 image3766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3766 : Bundle := named_bundle% "RealMapCertificates/relations/basis3766.json"
theorem reductionProof3766 : EqualModuloRelations reduction3766.relations reduction3766.input reduction3766.output := by lin_cert using reduction3766.terms
theorem substitutionProof3766 : IsMapEvaluation generatorImages reduction3766.relations [0,2,484] reduction3766.output := by lin_cert using reduction3766.terms
def image3767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3767 : InImage map_14_147 image3767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3767 : Bundle := named_bundle% "RealMapCertificates/relations/basis3767.json"
theorem reductionProof3767 : EqualModuloRelations reduction3767.relations reduction3767.input reduction3767.output := by lin_cert using reduction3767.terms
theorem substitutionProof3767 : IsMapEvaluation generatorImages reduction3767.relations [0,0,0,0,7,314] reduction3767.output := by lin_cert using reduction3767.terms
def map_14_148 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3829 : InImage map_14_148 image3829 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3829 : Bundle := named_bundle% "RealMapCertificates/relations/basis3829.json"
theorem reductionProof3829 : EqualModuloRelations reduction3829.relations reduction3829.input reduction3829.output := by lin_cert using reduction3829.terms
theorem substitutionProof3829 : IsMapEvaluation generatorImages reduction3829.relations [8,337] reduction3829.output := by lin_cert using reduction3829.terms
def image3830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3830 : InImage map_14_148 image3830 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3830 : Bundle := named_bundle% "RealMapCertificates/relations/basis3830.json"
theorem reductionProof3830 : EqualModuloRelations reduction3830.relations reduction3830.input reduction3830.output := by lin_cert using reduction3830.terms
theorem substitutionProof3830 : IsMapEvaluation generatorImages reduction3830.relations [3,3,363] reduction3830.output := by lin_cert using reduction3830.terms
def image3831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3831 : InImage map_14_148 image3831 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3831 : Bundle := named_bundle% "RealMapCertificates/relations/basis3831.json"
theorem reductionProof3831 : EqualModuloRelations reduction3831.relations reduction3831.input reduction3831.output := by lin_cert using reduction3831.terms
theorem substitutionProof3831 : IsMapEvaluation generatorImages reduction3831.relations [0,533] reduction3831.output := by lin_cert using reduction3831.terms
def image3832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3832 : InImage map_14_148 image3832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3832 : Bundle := named_bundle% "RealMapCertificates/relations/basis3832.json"
theorem reductionProof3832 : EqualModuloRelations reduction3832.relations reduction3832.input reduction3832.output := by lin_cert using reduction3832.terms
theorem substitutionProof3832 : IsMapEvaluation generatorImages reduction3832.relations [0,8,333] reduction3832.output := by lin_cert using reduction3832.terms
def image3833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3833 : InImage map_14_148 image3833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3833 : Bundle := named_bundle% "RealMapCertificates/relations/basis3833.json"
theorem reductionProof3833 : EqualModuloRelations reduction3833.relations reduction3833.input reduction3833.output := by lin_cert using reduction3833.terms
theorem substitutionProof3833 : IsMapEvaluation generatorImages reduction3833.relations [0,0,2,486] reduction3833.output := by lin_cert using reduction3833.terms
def map_14_149 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3922 : InImage map_14_149 image3922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3922 : Bundle := named_bundle% "RealMapCertificates/relations/basis3922.json"
theorem reductionProof3922 : EqualModuloRelations reduction3922.relations reduction3922.input reduction3922.output := by lin_cert using reduction3922.terms
theorem substitutionProof3922 : IsMapEvaluation generatorImages reduction3922.relations [1,533] reduction3922.output := by lin_cert using reduction3922.terms
def image3923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3923 : InImage map_14_149 image3923 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3923 : Bundle := named_bundle% "RealMapCertificates/relations/basis3923.json"
theorem reductionProof3923 : EqualModuloRelations reduction3923.relations reduction3923.input reduction3923.output := by lin_cert using reduction3923.terms
theorem substitutionProof3923 : IsMapEvaluation generatorImages reduction3923.relations [0,540] reduction3923.output := by lin_cert using reduction3923.terms
def image3924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3924 : InImage map_14_149 image3924 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3924 : Bundle := named_bundle% "RealMapCertificates/relations/basis3924.json"
theorem reductionProof3924 : EqualModuloRelations reduction3924.relations reduction3924.input reduction3924.output := by lin_cert using reduction3924.terms
theorem substitutionProof3924 : IsMapEvaluation generatorImages reduction3924.relations [0,8,338] reduction3924.output := by lin_cert using reduction3924.terms
def image3925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3925 : InImage map_14_149 image3925 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3925 : Bundle := named_bundle% "RealMapCertificates/relations/basis3925.json"
theorem reductionProof3925 : EqualModuloRelations reduction3925.relations reduction3925.input reduction3925.output := by lin_cert using reduction3925.terms
theorem substitutionProof3925 : IsMapEvaluation generatorImages reduction3925.relations [0,0,534] reduction3925.output := by lin_cert using reduction3925.terms
def map_14_150 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4023 : InImage map_14_150 image4023 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4023 : Bundle := named_bundle% "RealMapCertificates/relations/basis4023.json"
theorem reductionProof4023 : EqualModuloRelations reduction4023.relations reduction4023.input reduction4023.output := by lin_cert using reduction4023.terms
theorem substitutionProof4023 : IsMapEvaluation generatorImages reduction4023.relations [43,189] reduction4023.output := by lin_cert using reduction4023.terms
def image4024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4024 : InImage map_14_150 image4024 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4024 : Bundle := named_bundle% "RealMapCertificates/relations/basis4024.json"
theorem reductionProof4024 : EqualModuloRelations reduction4024.relations reduction4024.input reduction4024.output := by lin_cert using reduction4024.terms
theorem substitutionProof4024 : IsMapEvaluation generatorImages reduction4024.relations [1,540] reduction4024.output := by lin_cert using reduction4024.terms
def map_14_151 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4110 : InImage map_14_151 image4110 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4110 : Bundle := named_bundle% "RealMapCertificates/relations/basis4110.json"
theorem reductionProof4110 : EqualModuloRelations reduction4110.relations reduction4110.input reduction4110.output := by lin_cert using reduction4110.terms
theorem substitutionProof4110 : IsMapEvaluation generatorImages reduction4110.relations [8,69,80] reduction4110.output := by lin_cert using reduction4110.terms
def image4111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4111 : InImage map_14_151 image4111 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4111 : Bundle := named_bundle% "RealMapCertificates/relations/basis4111.json"
theorem reductionProof4111 : EqualModuloRelations reduction4111.relations reduction4111.input reduction4111.output := by lin_cert using reduction4111.terms
theorem substitutionProof4111 : IsMapEvaluation generatorImages reduction4111.relations [0,8,366] reduction4111.output := by lin_cert using reduction4111.terms
def image4112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4112 : InImage map_14_151 image4112 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4112 : Bundle := named_bundle% "RealMapCertificates/relations/basis4112.json"
theorem reductionProof4112 : EqualModuloRelations reduction4112.relations reduction4112.input reduction4112.output := by lin_cert using reduction4112.terms
theorem substitutionProof4112 : IsMapEvaluation generatorImages reduction4112.relations [0,3,484] reduction4112.output := by lin_cert using reduction4112.terms
def map_14_152 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4201 : InImage map_14_152 image4201 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4201 : Bundle := named_bundle% "RealMapCertificates/relations/basis4201.json"
theorem reductionProof4201 : EqualModuloRelations reduction4201.relations reduction4201.input reduction4201.output := by lin_cert using reduction4201.terms
theorem substitutionProof4201 : IsMapEvaluation generatorImages reduction4201.relations [2,540] reduction4201.output := by lin_cert using reduction4201.terms
def image4202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4202 : InImage map_14_152 image4202 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4202 : Bundle := named_bundle% "RealMapCertificates/relations/basis4202.json"
theorem reductionProof4202 : EqualModuloRelations reduction4202.relations reduction4202.input reduction4202.output := by lin_cert using reduction4202.terms
theorem substitutionProof4202 : IsMapEvaluation generatorImages reduction4202.relations [0,0,8,367] reduction4202.output := by lin_cert using reduction4202.terms
def image4203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4203 : InImage map_14_152 image4203 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4203 : Bundle := named_bundle% "RealMapCertificates/relations/basis4203.json"
theorem reductionProof4203 : EqualModuloRelations reduction4203.relations reduction4203.input reduction4203.output := by lin_cert using reduction4203.terms
theorem substitutionProof4203 : IsMapEvaluation generatorImages reduction4203.relations [0,0,3,485] reduction4203.output := by lin_cert using reduction4203.terms
def map_14_153 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4297 : InImage map_14_153 image4297 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4297 : Bundle := named_bundle% "RealMapCertificates/relations/basis4297.json"
theorem reductionProof4297 : EqualModuloRelations reduction4297.relations reduction4297.input reduction4297.output := by lin_cert using reduction4297.terms
theorem substitutionProof4297 : IsMapEvaluation generatorImages reduction4297.relations [13,332] reduction4297.output := by lin_cert using reduction4297.terms
def image4298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4298 : InImage map_14_153 image4298 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4298 : Bundle := named_bundle% "RealMapCertificates/relations/basis4298.json"
theorem reductionProof4298 : EqualModuloRelations reduction4298.relations reduction4298.input reduction4298.output := by lin_cert using reduction4298.terms
theorem substitutionProof4298 : IsMapEvaluation generatorImages reduction4298.relations [4,486] reduction4298.output := by lin_cert using reduction4298.terms
def image4299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4299 : InImage map_14_153 image4299 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4299 : Bundle := named_bundle% "RealMapCertificates/relations/basis4299.json"
theorem reductionProof4299 : EqualModuloRelations reduction4299.relations reduction4299.input reduction4299.output := by lin_cert using reduction4299.terms
theorem substitutionProof4299 : IsMapEvaluation generatorImages reduction4299.relations [3,3,425] reduction4299.output := by lin_cert using reduction4299.terms
def image4300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4300 : InImage map_14_153 image4300 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4300 : Bundle := named_bundle% "RealMapCertificates/relations/basis4300.json"
theorem reductionProof4300 : EqualModuloRelations reduction4300.relations reduction4300.input reduction4300.output := by lin_cert using reduction4300.terms
theorem substitutionProof4300 : IsMapEvaluation generatorImages reduction4300.relations [0,0,0,562] reduction4300.output := by lin_cert using reduction4300.terms
def map_14_154 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4361 : InImage map_14_154 image4361 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4361 : Bundle := named_bundle% "RealMapCertificates/relations/basis4361.json"
theorem reductionProof4361 : EqualModuloRelations reduction4361.relations reduction4361.input reduction4361.output := by lin_cert using reduction4361.terms
theorem substitutionProof4361 : IsMapEvaluation generatorImages reduction4361.relations [8,419] reduction4361.output := by lin_cert using reduction4361.terms
def image4362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4362 : InImage map_14_154 image4362 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4362 : Bundle := named_bundle% "RealMapCertificates/relations/basis4362.json"
theorem reductionProof4362 : EqualModuloRelations reduction4362.relations reduction4362.input reduction4362.output := by lin_cert using reduction4362.terms
theorem substitutionProof4362 : IsMapEvaluation generatorImages reduction4362.relations [0,8,414] reduction4362.output := by lin_cert using reduction4362.terms
def image4363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4363 : InImage map_14_154 image4363 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4363 : Bundle := named_bundle% "RealMapCertificates/relations/basis4363.json"
theorem reductionProof4363 : EqualModuloRelations reduction4363.relations reduction4363.input reduction4363.output := by lin_cert using reduction4363.terms
theorem substitutionProof4363 : IsMapEvaluation generatorImages reduction4363.relations [0,0,575] reduction4363.output := by lin_cert using reduction4363.terms
def map_14_155 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4454 : InImage map_14_155 image4454 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4454 : Bundle := named_bundle% "RealMapCertificates/relations/basis4454.json"
theorem reductionProof4454 : EqualModuloRelations reduction4454.relations reduction4454.input reduction4454.output := by lin_cert using reduction4454.terms
theorem substitutionProof4454 : IsMapEvaluation generatorImages reduction4454.relations [0,589] reduction4454.output := by lin_cert using reduction4454.terms
def image4455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4455 : InImage map_14_155 image4455 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4455 : Bundle := named_bundle% "RealMapCertificates/relations/basis4455.json"
theorem reductionProof4455 : EqualModuloRelations reduction4455.relations reduction4455.input reduction4455.output := by lin_cert using reduction4455.terms
theorem substitutionProof4455 : IsMapEvaluation generatorImages reduction4455.relations [0,0,8,415] reduction4455.output := by lin_cert using reduction4455.terms
def map_14_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4559 : InImage map_14_156 image4559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4559 : Bundle := named_bundle% "RealMapCertificates/relations/basis4559.json"
theorem reductionProof4559 : EqualModuloRelations reduction4559.relations reduction4559.input reduction4559.output := by lin_cert using reduction4559.terms
theorem substitutionProof4559 : IsMapEvaluation generatorImages reduction4559.relations [3,540] reduction4559.output := by lin_cert using reduction4559.terms
def image4560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4560 : InImage map_14_156 image4560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4560 : Bundle := named_bundle% "RealMapCertificates/relations/basis4560.json"
theorem reductionProof4560 : EqualModuloRelations reduction4560.relations reduction4560.input reduction4560.output := by lin_cert using reduction4560.terms
theorem substitutionProof4560 : IsMapEvaluation generatorImages reduction4560.relations [1,1,575] reduction4560.output := by lin_cert using reduction4560.terms
def map_14_157 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4637 : InImage map_14_157 image4637 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4637 : Bundle := named_bundle% "RealMapCertificates/relations/basis4637.json"
theorem reductionProof4637 : EqualModuloRelations reduction4637.relations reduction4637.input reduction4637.output := by lin_cert using reduction4637.terms
theorem substitutionProof4637 : IsMapEvaluation generatorImages reduction4637.relations [620] reduction4637.output := by lin_cert using reduction4637.terms
def image4638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4638 : InImage map_14_157 image4638 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4638 : Bundle := named_bundle% "RealMapCertificates/relations/basis4638.json"
theorem reductionProof4638 : EqualModuloRelations reduction4638.relations reduction4638.input reduction4638.output := by lin_cert using reduction4638.terms
theorem substitutionProof4638 : IsMapEvaluation generatorImages reduction4638.relations [8,450] reduction4638.output := by lin_cert using reduction4638.terms
def image4639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4639 : InImage map_14_157 image4639 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4639 : Bundle := named_bundle% "RealMapCertificates/relations/basis4639.json"
theorem reductionProof4639 : EqualModuloRelations reduction4639.relations reduction4639.input reduction4639.output := by lin_cert using reduction4639.terms
theorem substitutionProof4639 : IsMapEvaluation generatorImages reduction4639.relations [0,8,443] reduction4639.output := by lin_cert using reduction4639.terms
def image4640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4640 : InImage map_14_157 image4640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4640 : Bundle := named_bundle% "RealMapCertificates/relations/basis4640.json"
theorem reductionProof4640 : EqualModuloRelations reduction4640.relations reduction4640.input reduction4640.output := by lin_cert using reduction4640.terms
theorem substitutionProof4640 : IsMapEvaluation generatorImages reduction4640.relations [0,2,575] reduction4640.output := by lin_cert using reduction4640.terms
end RealMapCertificates
