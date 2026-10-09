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
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 27 => [[1,4,4,4]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 70 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 174 => []
  | 190 => []
  | 191 => []
  | 197 => []
  | 203 => []
  | 209 => []
  | 213 => []
  | 239 => []
  | 314 => []
  | 324 => []
  | 333 => []
  | 373 => []
  | 376 => []
  | 412 => []
  | 445 => []
  | 450 => []
  | 475 => []
  | 502 => []
  | 543 => []
  | 563 => []
  | 621 => []
  | 631 => []
  | 651 => []
  | 652 => []
  | 657 => []
  | 659 => []
  | 671 => []
  | 672 => []
  | 673 => []
  | 676 => []
  | 680 => []
  | 683 => []
  | 709 => []
  | 710 => []
  | 718 => []
  | 719 => []
  | 730 => []
  | 731 => []
  | 732 => []
  | 742 => []
  | 743 => []
  | 766 => []
  | 767 => []
  | 769 => []
  | 787 => []
  | 788 => []
  | 800 => []
  | 801 => []
  | 814 => []
  | 815 => []
  | 817 => []
  | 826 => []
  | 842 => []
  | 843 => []
  | 844 => []
  | 845 => []
  | 858 => []
  | 859 => []
  | 861 => []
  | 867 => []
  | 868 => []
  | 869 => []
  | 882 => []
  | 884 => []
  | 893 => []
  | 911 => []
  | 934 => []
  | _ => []
def map_14_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4721 : InImage map_14_158 image4721 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4721 : Bundle := named_bundle% "RealMapCertificates/relations/basis4721.json"
theorem reductionProof4721 : EqualModuloRelations reduction4721.relations reduction4721.input reduction4721.output := by lin_cert using reduction4721.terms
theorem substitutionProof4721 : IsMapEvaluation generatorImages reduction4721.relations [0,13,373] reduction4721.output := by lin_cert using reduction4721.terms
def image4722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4722 : InImage map_14_158 image4722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4722 : Bundle := named_bundle% "RealMapCertificates/relations/basis4722.json"
theorem reductionProof4722 : EqualModuloRelations reduction4722.relations reduction4722.input reduction4722.output := by lin_cert using reduction4722.terms
theorem substitutionProof4722 : IsMapEvaluation generatorImages reduction4722.relations [0,0,8,445] reduction4722.output := by lin_cert using reduction4722.terms
def image4723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4723 : InImage map_14_158 image4723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4723 : Bundle := named_bundle% "RealMapCertificates/relations/basis4723.json"
theorem reductionProof4723 : EqualModuloRelations reduction4723.relations reduction4723.input reduction4723.output := by lin_cert using reduction4723.terms
theorem substitutionProof4723 : IsMapEvaluation generatorImages reduction4723.relations [0,0,3,543] reduction4723.output := by lin_cert using reduction4723.terms
def map_14_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4824 : InImage map_14_159 image4824 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4824 : Bundle := named_bundle% "RealMapCertificates/relations/basis4824.json"
theorem reductionProof4824 : EqualModuloRelations reduction4824.relations reduction4824.input reduction4824.output := by lin_cert using reduction4824.terms
theorem substitutionProof4824 : IsMapEvaluation generatorImages reduction4824.relations [1,621] reduction4824.output := by lin_cert using reduction4824.terms
def map_14_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4893 : InImage map_14_160 image4893 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4893 : Bundle := named_bundle% "RealMapCertificates/relations/basis4893.json"
theorem reductionProof4893 : EqualModuloRelations reduction4893.relations reduction4893.input reduction4893.output := by lin_cert using reduction4893.terms
theorem substitutionProof4893 : IsMapEvaluation generatorImages reduction4893.relations [651] reduction4893.output := by lin_cert using reduction4893.terms
def image4894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4894 : InImage map_14_160 image4894 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4894 : Bundle := named_bundle% "RealMapCertificates/relations/basis4894.json"
theorem reductionProof4894 : EqualModuloRelations reduction4894.relations reduction4894.input reduction4894.output := by lin_cert using reduction4894.terms
theorem substitutionProof4894 : IsMapEvaluation generatorImages reduction4894.relations [9,450] reduction4894.output := by lin_cert using reduction4894.terms
def map_14_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4984 : InImage map_14_161 image4984 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4984 : Bundle := named_bundle% "RealMapCertificates/relations/basis4984.json"
theorem reductionProof4984 : EqualModuloRelations reduction4984.relations reduction4984.input reduction4984.output := by lin_cert using reduction4984.terms
theorem substitutionProof4984 : IsMapEvaluation generatorImages reduction4984.relations [0,0,0,631] reduction4984.output := by lin_cert using reduction4984.terms
def map_14_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5100 : InImage map_14_162 image5100 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5100 : Bundle := named_bundle% "RealMapCertificates/relations/basis5100.json"
theorem reductionProof5100 : EqualModuloRelations reduction5100.relations reduction5100.input reduction5100.output := by lin_cert using reduction5100.terms
theorem substitutionProof5100 : IsMapEvaluation generatorImages reduction5100.relations [672] reduction5100.output := by lin_cert using reduction5100.terms
def image5101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5101 : InImage map_14_162 image5101 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5101 : Bundle := named_bundle% "RealMapCertificates/relations/basis5101.json"
theorem reductionProof5101 : EqualModuloRelations reduction5101.relations reduction5101.input reduction5101.output := by lin_cert using reduction5101.terms
theorem substitutionProof5101 : IsMapEvaluation generatorImages reduction5101.relations [671] reduction5101.output := by lin_cert using reduction5101.terms
def image5102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5102 : InImage map_14_162 image5102 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5102 : Bundle := named_bundle% "RealMapCertificates/relations/basis5102.json"
theorem reductionProof5102 : EqualModuloRelations reduction5102.relations reduction5102.input reduction5102.output := by lin_cert using reduction5102.terms
theorem substitutionProof5102 : IsMapEvaluation generatorImages reduction5102.relations [0,0,652] reduction5102.output := by lin_cert using reduction5102.terms
def map_14_163 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5178 : InImage map_14_163 image5178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5178 : Bundle := named_bundle% "RealMapCertificates/relations/basis5178.json"
theorem reductionProof5178 : EqualModuloRelations reduction5178.relations reduction5178.input reduction5178.output := by lin_cert using reduction5178.terms
theorem substitutionProof5178 : IsMapEvaluation generatorImages reduction5178.relations [680] reduction5178.output := by lin_cert using reduction5178.terms
def image5179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5179 : InImage map_14_163 image5179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5179 : Bundle := named_bundle% "RealMapCertificates/relations/basis5179.json"
theorem reductionProof5179 : EqualModuloRelations reduction5179.relations reduction5179.input reduction5179.output := by lin_cert using reduction5179.terms
theorem substitutionProof5179 : IsMapEvaluation generatorImages reduction5179.relations [68,174] reduction5179.output := by lin_cert using reduction5179.terms
def image5180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5180 : InImage map_14_163 image5180 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5180 : Bundle := named_bundle% "RealMapCertificates/relations/basis5180.json"
theorem reductionProof5180 : EqualModuloRelations reduction5180.relations reduction5180.input reduction5180.output := by lin_cert using reduction5180.terms
theorem substitutionProof5180 : IsMapEvaluation generatorImages reduction5180.relations [13,450] reduction5180.output := by lin_cert using reduction5180.terms
def image5181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5181 : InImage map_14_163 image5181 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5181 : Bundle := named_bundle% "RealMapCertificates/relations/basis5181.json"
theorem reductionProof5181 : EqualModuloRelations reduction5181.relations reduction5181.input reduction5181.output := by lin_cert using reduction5181.terms
theorem substitutionProof5181 : IsMapEvaluation generatorImages reduction5181.relations [1,657] reduction5181.output := by lin_cert using reduction5181.terms
def image5182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5182 : InImage map_14_163 image5182 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5182 : Bundle := named_bundle% "RealMapCertificates/relations/basis5182.json"
theorem reductionProof5182 : EqualModuloRelations reduction5182.relations reduction5182.input reduction5182.output := by lin_cert using reduction5182.terms
theorem substitutionProof5182 : IsMapEvaluation generatorImages reduction5182.relations [0,0,0,0,18,314] reduction5182.output := by lin_cert using reduction5182.terms
def map_14_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5277 : InImage map_14_164 image5277 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5277 : Bundle := named_bundle% "RealMapCertificates/relations/basis5277.json"
theorem reductionProof5277 : EqualModuloRelations reduction5277.relations reduction5277.input reduction5277.output := by lin_cert using reduction5277.terms
theorem substitutionProof5277 : IsMapEvaluation generatorImages reduction5277.relations [0,0,673] reduction5277.output := by lin_cert using reduction5277.terms
def map_14_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5402 : InImage map_14_165 image5402 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5402 : Bundle := named_bundle% "RealMapCertificates/relations/basis5402.json"
theorem reductionProof5402 : EqualModuloRelations reduction5402.relations reduction5402.input reduction5402.output := by lin_cert using reduction5402.terms
theorem substitutionProof5402 : IsMapEvaluation generatorImages reduction5402.relations [710] reduction5402.output := by lin_cert using reduction5402.terms
def image5403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5403 : InImage map_14_165 image5403 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5403 : Bundle := named_bundle% "RealMapCertificates/relations/basis5403.json"
theorem reductionProof5403 : EqualModuloRelations reduction5403.relations reduction5403.input reduction5403.output := by lin_cert using reduction5403.terms
theorem substitutionProof5403 : IsMapEvaluation generatorImages reduction5403.relations [709] reduction5403.output := by lin_cert using reduction5403.terms
def image5404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5404 : InImage map_14_165 image5404 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5404 : Bundle := named_bundle% "RealMapCertificates/relations/basis5404.json"
theorem reductionProof5404 : EqualModuloRelations reduction5404.relations reduction5404.input reduction5404.output := by lin_cert using reduction5404.terms
theorem substitutionProof5404 : IsMapEvaluation generatorImages reduction5404.relations [1,683] reduction5404.output := by lin_cert using reduction5404.terms
def map_14_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5500 : InImage map_14_166 image5500 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5500 : Bundle := named_bundle% "RealMapCertificates/relations/basis5500.json"
theorem reductionProof5500 : EqualModuloRelations reduction5500.relations reduction5500.input reduction5500.output := by lin_cert using reduction5500.terms
theorem substitutionProof5500 : IsMapEvaluation generatorImages reduction5500.relations [718] reduction5500.output := by lin_cert using reduction5500.terms
def image5501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5501 : InImage map_14_166 image5501 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5501 : Bundle := named_bundle% "RealMapCertificates/relations/basis5501.json"
theorem reductionProof5501 : EqualModuloRelations reduction5501.relations reduction5501.input reduction5501.output := by lin_cert using reduction5501.terms
theorem substitutionProof5501 : IsMapEvaluation generatorImages reduction5501.relations [67,191] reduction5501.output := by lin_cert using reduction5501.terms
def image5502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5502 : InImage map_14_166 image5502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5502 : Bundle := named_bundle% "RealMapCertificates/relations/basis5502.json"
theorem reductionProof5502 : EqualModuloRelations reduction5502.relations reduction5502.input reduction5502.output := by lin_cert using reduction5502.terms
theorem substitutionProof5502 : IsMapEvaluation generatorImages reduction5502.relations [27,324] reduction5502.output := by lin_cert using reduction5502.terms
def map_14_168 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5725 : InImage map_14_168 image5725 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5725 : Bundle := named_bundle% "RealMapCertificates/relations/basis5725.json"
theorem reductionProof5725 : EqualModuloRelations reduction5725.relations reduction5725.input reduction5725.output := by lin_cert using reduction5725.terms
theorem substitutionProof5725 : IsMapEvaluation generatorImages reduction5725.relations [742] reduction5725.output := by lin_cert using reduction5725.terms
def image5726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5726 : InImage map_14_168 image5726 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5726 : Bundle := named_bundle% "RealMapCertificates/relations/basis5726.json"
theorem reductionProof5726 : EqualModuloRelations reduction5726.relations reduction5726.input reduction5726.output := by lin_cert using reduction5726.terms
theorem substitutionProof5726 : IsMapEvaluation generatorImages reduction5726.relations [30,324] reduction5726.output := by lin_cert using reduction5726.terms
def image5727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5727 : InImage map_14_168 image5727 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5727 : Bundle := named_bundle% "RealMapCertificates/relations/basis5727.json"
theorem reductionProof5727 : EqualModuloRelations reduction5727.relations reduction5727.input reduction5727.output := by lin_cert using reduction5727.terms
theorem substitutionProof5727 : IsMapEvaluation generatorImages reduction5727.relations [8,563] reduction5727.output := by lin_cert using reduction5727.terms
def image5728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5728 : InImage map_14_168 image5728 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5728 : Bundle := named_bundle% "RealMapCertificates/relations/basis5728.json"
theorem reductionProof5728 : EqualModuloRelations reduction5728.relations reduction5728.input reduction5728.output := by lin_cert using reduction5728.terms
theorem substitutionProof5728 : IsMapEvaluation generatorImages reduction5728.relations [0,731] reduction5728.output := by lin_cert using reduction5728.terms
def image5729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5729 : InImage map_14_168 image5729 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5729 : Bundle := named_bundle% "RealMapCertificates/relations/basis5729.json"
theorem reductionProof5729 : EqualModuloRelations reduction5729.relations reduction5729.input reduction5729.output := by lin_cert using reduction5729.terms
theorem substitutionProof5729 : IsMapEvaluation generatorImages reduction5729.relations [0,730] reduction5729.output := by lin_cert using reduction5729.terms
def image5730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5730 : InImage map_14_168 image5730 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5730 : Bundle := named_bundle% "RealMapCertificates/relations/basis5730.json"
theorem reductionProof5730 : EqualModuloRelations reduction5730.relations reduction5730.input reduction5730.output := by lin_cert using reduction5730.terms
theorem substitutionProof5730 : IsMapEvaluation generatorImages reduction5730.relations [0,0,0,0,0,0,676] reduction5730.output := by lin_cert using reduction5730.terms
def map_14_169 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5823 : InImage map_14_169 image5823 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5823 : Bundle := named_bundle% "RealMapCertificates/relations/basis5823.json"
theorem reductionProof5823 : EqualModuloRelations reduction5823.relations reduction5823.input reduction5823.output := by lin_cert using reduction5823.terms
theorem substitutionProof5823 : IsMapEvaluation generatorImages reduction5823.relations [75,190] reduction5823.output := by lin_cert using reduction5823.terms
def image5824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5824 : InImage map_14_169 image5824 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5824 : Bundle := named_bundle% "RealMapCertificates/relations/basis5824.json"
theorem reductionProof5824 : EqualModuloRelations reduction5824.relations reduction5824.input reduction5824.output := by lin_cert using reduction5824.terms
theorem substitutionProof5824 : IsMapEvaluation generatorImages reduction5824.relations [23,376] reduction5824.output := by lin_cert using reduction5824.terms
def image5825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5825 : InImage map_14_169 image5825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5825 : Bundle := named_bundle% "RealMapCertificates/relations/basis5825.json"
theorem reductionProof5825 : EqualModuloRelations reduction5825.relations reduction5825.input reduction5825.output := by lin_cert using reduction5825.terms
theorem substitutionProof5825 : IsMapEvaluation generatorImages reduction5825.relations [0,0,732] reduction5825.output := by lin_cert using reduction5825.terms
def image5826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5826 : InImage map_14_169 image5826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5826 : Bundle := named_bundle% "RealMapCertificates/relations/basis5826.json"
theorem reductionProof5826 : EqualModuloRelations reduction5826.relations reduction5826.input reduction5826.output := by lin_cert using reduction5826.terms
theorem substitutionProof5826 : IsMapEvaluation generatorImages reduction5826.relations [0,0,0,719] reduction5826.output := by lin_cert using reduction5826.terms
def map_14_170 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5926 : InImage map_14_170 image5926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5926 : Bundle := named_bundle% "RealMapCertificates/relations/basis5926.json"
theorem reductionProof5926 : EqualModuloRelations reduction5926.relations reduction5926.input reduction5926.output := by lin_cert using reduction5926.terms
theorem substitutionProof5926 : IsMapEvaluation generatorImages reduction5926.relations [767] reduction5926.output := by lin_cert using reduction5926.terms
def image5927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5927 : InImage map_14_170 image5927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5927 : Bundle := named_bundle% "RealMapCertificates/relations/basis5927.json"
theorem reductionProof5927 : EqualModuloRelations reduction5927.relations reduction5927.input reduction5927.output := by lin_cert using reduction5927.terms
theorem substitutionProof5927 : IsMapEvaluation generatorImages reduction5927.relations [766] reduction5927.output := by lin_cert using reduction5927.terms
def image5928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5928 : InImage map_14_170 image5928 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5928 : Bundle := named_bundle% "RealMapCertificates/relations/basis5928.json"
theorem reductionProof5928 : EqualModuloRelations reduction5928.relations reduction5928.input reduction5928.output := by lin_cert using reduction5928.terms
theorem substitutionProof5928 : IsMapEvaluation generatorImages reduction5928.relations [67,203] reduction5928.output := by lin_cert using reduction5928.terms
def map_14_171 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image6072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6072 : InImage map_14_171 image6072 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction6072 : Bundle := named_bundle% "RealMapCertificates/relations/basis6072.json"
theorem reductionProof6072 : EqualModuloRelations reduction6072.relations reduction6072.input reduction6072.output := by lin_cert using reduction6072.terms
theorem substitutionProof6072 : IsMapEvaluation generatorImages reduction6072.relations [74,197] reduction6072.output := by lin_cert using reduction6072.terms
def image6073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6073 : InImage map_14_171 image6073 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction6073 : Bundle := named_bundle% "RealMapCertificates/relations/basis6073.json"
theorem reductionProof6073 : EqualModuloRelations reduction6073.relations reduction6073.input reduction6073.output := by lin_cert using reduction6073.terms
theorem substitutionProof6073 : IsMapEvaluation generatorImages reduction6073.relations [9,563] reduction6073.output := by lin_cert using reduction6073.terms
def image6074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6074 : InImage map_14_171 image6074 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction6074 : Bundle := named_bundle% "RealMapCertificates/relations/basis6074.json"
theorem reductionProof6074 : EqualModuloRelations reduction6074.relations reduction6074.input reduction6074.output := by lin_cert using reduction6074.terms
theorem substitutionProof6074 : IsMapEvaluation generatorImages reduction6074.relations [1,76,190] reduction6074.output := by lin_cert using reduction6074.terms
def image6075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6075 : InImage map_14_171 image6075 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction6075 : Bundle := named_bundle% "RealMapCertificates/relations/basis6075.json"
theorem reductionProof6075 : EqualModuloRelations reduction6075.relations reduction6075.input reduction6075.output := by lin_cert using reduction6075.terms
theorem substitutionProof6075 : IsMapEvaluation generatorImages reduction6075.relations [0,68,203] reduction6075.output := by lin_cert using reduction6075.terms
def image6076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6076 : InImage map_14_171 image6076 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction6076 : Bundle := named_bundle% "RealMapCertificates/relations/basis6076.json"
theorem reductionProof6076 : EqualModuloRelations reduction6076.relations reduction6076.input reduction6076.output := by lin_cert using reduction6076.terms
theorem substitutionProof6076 : IsMapEvaluation generatorImages reduction6076.relations [0,31,324] reduction6076.output := by lin_cert using reduction6076.terms
def image6077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6077 : InImage map_14_171 image6077 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction6077 : Bundle := named_bundle% "RealMapCertificates/relations/basis6077.json"
theorem reductionProof6077 : EqualModuloRelations reduction6077.relations reduction6077.input reduction6077.output := by lin_cert using reduction6077.terms
theorem substitutionProof6077 : IsMapEvaluation generatorImages reduction6077.relations [0,3,673] reduction6077.output := by lin_cert using reduction6077.terms
def image6078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6078 : InImage map_14_171 image6078 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction6078 : Bundle := named_bundle% "RealMapCertificates/relations/basis6078.json"
theorem reductionProof6078 : EqualModuloRelations reduction6078.relations reduction6078.input reduction6078.output := by lin_cert using reduction6078.terms
theorem substitutionProof6078 : IsMapEvaluation generatorImages reduction6078.relations [0,0,0,743] reduction6078.output := by lin_cert using reduction6078.terms
def map_14_172 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6160 : InImage map_14_172 image6160 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6160 : Bundle := named_bundle% "RealMapCertificates/relations/basis6160.json"
theorem reductionProof6160 : EqualModuloRelations reduction6160.relations reduction6160.input reduction6160.output := by lin_cert using reduction6160.terms
theorem substitutionProof6160 : IsMapEvaluation generatorImages reduction6160.relations [70,209] reduction6160.output := by lin_cert using reduction6160.terms
def image6161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6161 : InImage map_14_172 image6161 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6161 : Bundle := named_bundle% "RealMapCertificates/relations/basis6161.json"
theorem reductionProof6161 : EqualModuloRelations reduction6161.relations reduction6161.input reduction6161.output := by lin_cert using reduction6161.terms
theorem substitutionProof6161 : IsMapEvaluation generatorImages reduction6161.relations [1,31,324] reduction6161.output := by lin_cert using reduction6161.terms
def image6162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6162 : InImage map_14_172 image6162 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6162 : Bundle := named_bundle% "RealMapCertificates/relations/basis6162.json"
theorem reductionProof6162 : EqualModuloRelations reduction6162.relations reduction6162.input reduction6162.output := by lin_cert using reduction6162.terms
theorem substitutionProof6162 : IsMapEvaluation generatorImages reduction6162.relations [0,0,0,0,0,0,0,0,0,0,0,0,18,324] reduction6162.output := by lin_cert using reduction6162.terms
def map_14_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6262 : InImage map_14_173 image6262 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6262 : Bundle := named_bundle% "RealMapCertificates/relations/basis6262.json"
theorem reductionProof6262 : EqualModuloRelations reduction6262.relations reduction6262.input reduction6262.output := by lin_cert using reduction6262.terms
theorem substitutionProof6262 : IsMapEvaluation generatorImages reduction6262.relations [800] reduction6262.output := by lin_cert using reduction6262.terms
def image6263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6263 : InImage map_14_173 image6263 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6263 : Bundle := named_bundle% "RealMapCertificates/relations/basis6263.json"
theorem reductionProof6263 : EqualModuloRelations reduction6263.relations reduction6263.input reduction6263.output := by lin_cert using reduction6263.terms
theorem substitutionProof6263 : IsMapEvaluation generatorImages reduction6263.relations [18,475] reduction6263.output := by lin_cert using reduction6263.terms
def image6264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6264 : InImage map_14_173 image6264 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6264 : Bundle := named_bundle% "RealMapCertificates/relations/basis6264.json"
theorem reductionProof6264 : EqualModuloRelations reduction6264.relations reduction6264.input reduction6264.output := by lin_cert using reduction6264.terms
theorem substitutionProof6264 : IsMapEvaluation generatorImages reduction6264.relations [0,787] reduction6264.output := by lin_cert using reduction6264.terms
def map_14_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6407 : InImage map_14_174 image6407 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6407 : Bundle := named_bundle% "RealMapCertificates/relations/basis6407.json"
theorem reductionProof6407 : EqualModuloRelations reduction6407.relations reduction6407.input reduction6407.output := by lin_cert using reduction6407.terms
theorem substitutionProof6407 : IsMapEvaluation generatorImages reduction6407.relations [814] reduction6407.output := by lin_cert using reduction6407.terms
def image6408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6408 : InImage map_14_174 image6408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6408 : Bundle := named_bundle% "RealMapCertificates/relations/basis6408.json"
theorem reductionProof6408 : EqualModuloRelations reduction6408.relations reduction6408.input reduction6408.output := by lin_cert using reduction6408.terms
theorem substitutionProof6408 : IsMapEvaluation generatorImages reduction6408.relations [0,801] reduction6408.output := by lin_cert using reduction6408.terms
def image6409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6409 : InImage map_14_174 image6409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6409 : Bundle := named_bundle% "RealMapCertificates/relations/basis6409.json"
theorem reductionProof6409 : EqualModuloRelations reduction6409.relations reduction6409.input reduction6409.output := by lin_cert using reduction6409.terms
theorem substitutionProof6409 : IsMapEvaluation generatorImages reduction6409.relations [0,39,324] reduction6409.output := by lin_cert using reduction6409.terms
def image6410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6410 : InImage map_14_174 image6410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6410 : Bundle := named_bundle% "RealMapCertificates/relations/basis6410.json"
theorem reductionProof6410 : EqualModuloRelations reduction6410.relations reduction6410.input reduction6410.output := by lin_cert using reduction6410.terms
theorem substitutionProof6410 : IsMapEvaluation generatorImages reduction6410.relations [0,0,788] reduction6410.output := by lin_cert using reduction6410.terms
def map_14_175 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6506 : InImage map_14_175 image6506 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6506 : Bundle := named_bundle% "RealMapCertificates/relations/basis6506.json"
theorem reductionProof6506 : EqualModuloRelations reduction6506.relations reduction6506.input reduction6506.output := by lin_cert using reduction6506.terms
theorem substitutionProof6506 : IsMapEvaluation generatorImages reduction6506.relations [76,213] reduction6506.output := by lin_cert using reduction6506.terms
def image6507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6507 : InImage map_14_175 image6507 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6507 : Bundle := named_bundle% "RealMapCertificates/relations/basis6507.json"
theorem reductionProof6507 : EqualModuloRelations reduction6507.relations reduction6507.input reduction6507.output := by lin_cert using reduction6507.terms
theorem substitutionProof6507 : IsMapEvaluation generatorImages reduction6507.relations [3,731] reduction6507.output := by lin_cert using reduction6507.terms
def image6508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6508 : InImage map_14_175 image6508 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6508 : Bundle := named_bundle% "RealMapCertificates/relations/basis6508.json"
theorem reductionProof6508 : EqualModuloRelations reduction6508.relations reduction6508.input reduction6508.output := by lin_cert using reduction6508.terms
theorem substitutionProof6508 : IsMapEvaluation generatorImages reduction6508.relations [3,730] reduction6508.output := by lin_cert using reduction6508.terms
def image6509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6509 : InImage map_14_175 image6509 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6509 : Bundle := named_bundle% "RealMapCertificates/relations/basis6509.json"
theorem reductionProof6509 : EqualModuloRelations reduction6509.relations reduction6509.input reduction6509.output := by lin_cert using reduction6509.terms
theorem substitutionProof6509 : IsMapEvaluation generatorImages reduction6509.relations [2,2,732] reduction6509.output := by lin_cert using reduction6509.terms
def image6510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6510 : InImage map_14_175 image6510 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6510 : Bundle := named_bundle% "RealMapCertificates/relations/basis6510.json"
theorem reductionProof6510 : EqualModuloRelations reduction6510.relations reduction6510.input reduction6510.output := by lin_cert using reduction6510.terms
theorem substitutionProof6510 : IsMapEvaluation generatorImages reduction6510.relations [0,815] reduction6510.output := by lin_cert using reduction6510.terms
def image6511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6511 : InImage map_14_175 image6511 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6511 : Bundle := named_bundle% "RealMapCertificates/relations/basis6511.json"
theorem reductionProof6511 : EqualModuloRelations reduction6511.relations reduction6511.input reduction6511.output := by lin_cert using reduction6511.terms
theorem substitutionProof6511 : IsMapEvaluation generatorImages reduction6511.relations [0,0,40,324] reduction6511.output := by lin_cert using reduction6511.terms
def map_14_176 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6613 : InImage map_14_176 image6613 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6613 : Bundle := named_bundle% "RealMapCertificates/relations/basis6613.json"
theorem reductionProof6613 : EqualModuloRelations reduction6613.relations reduction6613.input reduction6613.output := by lin_cert using reduction6613.terms
theorem substitutionProof6613 : IsMapEvaluation generatorImages reduction6613.relations [844] reduction6613.output := by lin_cert using reduction6613.terms
def image6614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6614 : InImage map_14_176 image6614 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6614 : Bundle := named_bundle% "RealMapCertificates/relations/basis6614.json"
theorem reductionProof6614 : EqualModuloRelations reduction6614.relations reduction6614.input reduction6614.output := by lin_cert using reduction6614.terms
theorem substitutionProof6614 : IsMapEvaluation generatorImages reduction6614.relations [843] reduction6614.output := by lin_cert using reduction6614.terms
def image6615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6615 : InImage map_14_176 image6615 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6615 : Bundle := named_bundle% "RealMapCertificates/relations/basis6615.json"
theorem reductionProof6615 : EqualModuloRelations reduction6615.relations reduction6615.input reduction6615.output := by lin_cert using reduction6615.terms
theorem substitutionProof6615 : IsMapEvaluation generatorImages reduction6615.relations [842] reduction6615.output := by lin_cert using reduction6615.terms
def image6616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6616 : InImage map_14_176 image6616 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6616 : Bundle := named_bundle% "RealMapCertificates/relations/basis6616.json"
theorem reductionProof6616 : EqualModuloRelations reduction6616.relations reduction6616.input reduction6616.output := by lin_cert using reduction6616.terms
theorem substitutionProof6616 : IsMapEvaluation generatorImages reduction6616.relations [18,502] reduction6616.output := by lin_cert using reduction6616.terms
def image6617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6617 : InImage map_14_176 image6617 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6617 : Bundle := named_bundle% "RealMapCertificates/relations/basis6617.json"
theorem reductionProof6617 : EqualModuloRelations reduction6617.relations reduction6617.input reduction6617.output := by lin_cert using reduction6617.terms
theorem substitutionProof6617 : IsMapEvaluation generatorImages reduction6617.relations [0,0,817] reduction6617.output := by lin_cert using reduction6617.terms
def image6618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6618 : InImage map_14_176 image6618 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6618 : Bundle := named_bundle% "RealMapCertificates/relations/basis6618.json"
theorem reductionProof6618 : EqualModuloRelations reduction6618.relations reduction6618.input reduction6618.output := by lin_cert using reduction6618.terms
theorem substitutionProof6618 : IsMapEvaluation generatorImages reduction6618.relations [0,0,3,719] reduction6618.output := by lin_cert using reduction6618.terms
def map_14_177 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6752 : InImage map_14_177 image6752 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6752 : Bundle := named_bundle% "RealMapCertificates/relations/basis6752.json"
theorem reductionProof6752 : EqualModuloRelations reduction6752.relations reduction6752.input reduction6752.output := by lin_cert using reduction6752.terms
theorem substitutionProof6752 : IsMapEvaluation generatorImages reduction6752.relations [3,76,190] reduction6752.output := by lin_cert using reduction6752.terms
def image6753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6753 : InImage map_14_177 image6753 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6753 : Bundle := named_bundle% "RealMapCertificates/relations/basis6753.json"
theorem reductionProof6753 : EqualModuloRelations reduction6753.relations reduction6753.input reduction6753.output := by lin_cert using reduction6753.terms
theorem substitutionProof6753 : IsMapEvaluation generatorImages reduction6753.relations [1,3,732] reduction6753.output := by lin_cert using reduction6753.terms
def image6754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6754 : InImage map_14_177 image6754 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6754 : Bundle := named_bundle% "RealMapCertificates/relations/basis6754.json"
theorem reductionProof6754 : EqualModuloRelations reduction6754.relations reduction6754.input reduction6754.output := by lin_cert using reduction6754.terms
theorem substitutionProof6754 : IsMapEvaluation generatorImages reduction6754.relations [0,845] reduction6754.output := by lin_cert using reduction6754.terms
def image6755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6755 : InImage map_14_177 image6755 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6755 : Bundle := named_bundle% "RealMapCertificates/relations/basis6755.json"
theorem reductionProof6755 : EqualModuloRelations reduction6755.relations reduction6755.input reduction6755.output := by lin_cert using reduction6755.terms
theorem substitutionProof6755 : IsMapEvaluation generatorImages reduction6755.relations [0,8,16,324] reduction6755.output := by lin_cert using reduction6755.terms
def image6756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6756 : InImage map_14_177 image6756 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6756 : Bundle := named_bundle% "RealMapCertificates/relations/basis6756.json"
theorem reductionProof6756 : EqualModuloRelations reduction6756.relations reduction6756.input reduction6756.output := by lin_cert using reduction6756.terms
theorem substitutionProof6756 : IsMapEvaluation generatorImages reduction6756.relations [0,0,826] reduction6756.output := by lin_cert using reduction6756.terms
def map_14_178 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image6850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6850 : InImage map_14_178 image6850 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction6850 : Bundle := named_bundle% "RealMapCertificates/relations/basis6850.json"
theorem reductionProof6850 : EqualModuloRelations reduction6850.relations reduction6850.input reduction6850.output := by lin_cert using reduction6850.terms
theorem substitutionProof6850 : IsMapEvaluation generatorImages reduction6850.relations [868] reduction6850.output := by lin_cert using reduction6850.terms
def image6851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6851 : InImage map_14_178 image6851 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction6851 : Bundle := named_bundle% "RealMapCertificates/relations/basis6851.json"
theorem reductionProof6851 : EqualModuloRelations reduction6851.relations reduction6851.input reduction6851.output := by lin_cert using reduction6851.terms
theorem substitutionProof6851 : IsMapEvaluation generatorImages reduction6851.relations [867] reduction6851.output := by lin_cert using reduction6851.terms
def image6852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6852 : InImage map_14_178 image6852 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction6852 : Bundle := named_bundle% "RealMapCertificates/relations/basis6852.json"
theorem reductionProof6852 : EqualModuloRelations reduction6852.relations reduction6852.input reduction6852.output := by lin_cert using reduction6852.terms
theorem substitutionProof6852 : IsMapEvaluation generatorImages reduction6852.relations [2,815] reduction6852.output := by lin_cert using reduction6852.terms
def image6853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6853 : InImage map_14_178 image6853 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction6853 : Bundle := named_bundle% "RealMapCertificates/relations/basis6853.json"
theorem reductionProof6853 : EqualModuloRelations reduction6853.relations reduction6853.input reduction6853.output := by lin_cert using reduction6853.terms
theorem substitutionProof6853 : IsMapEvaluation generatorImages reduction6853.relations [0,859] reduction6853.output := by lin_cert using reduction6853.terms
def image6854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6854 : InImage map_14_178 image6854 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction6854 : Bundle := named_bundle% "RealMapCertificates/relations/basis6854.json"
theorem reductionProof6854 : EqualModuloRelations reduction6854.relations reduction6854.input reduction6854.output := by lin_cert using reduction6854.terms
theorem substitutionProof6854 : IsMapEvaluation generatorImages reduction6854.relations [0,858] reduction6854.output := by lin_cert using reduction6854.terms
def image6855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6855 : InImage map_14_178 image6855 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction6855 : Bundle := named_bundle% "RealMapCertificates/relations/basis6855.json"
theorem reductionProof6855 : EqualModuloRelations reduction6855.relations reduction6855.input reduction6855.output := by lin_cert using reduction6855.terms
theorem substitutionProof6855 : IsMapEvaluation generatorImages reduction6855.relations [0,43,333] reduction6855.output := by lin_cert using reduction6855.terms
def image6856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6856 : InImage map_14_178 image6856 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction6856 : Bundle := named_bundle% "RealMapCertificates/relations/basis6856.json"
theorem reductionProof6856 : EqualModuloRelations reduction6856.relations reduction6856.input reduction6856.output := by lin_cert using reduction6856.terms
theorem substitutionProof6856 : IsMapEvaluation generatorImages reduction6856.relations [0,0,8,17,324] reduction6856.output := by lin_cert using reduction6856.terms
def map_14_179 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6981 : InImage map_14_179 image6981 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6981 : Bundle := named_bundle% "RealMapCertificates/relations/basis6981.json"
theorem reductionProof6981 : EqualModuloRelations reduction6981.relations reduction6981.input reduction6981.output := by lin_cert using reduction6981.terms
theorem substitutionProof6981 : IsMapEvaluation generatorImages reduction6981.relations [882] reduction6981.output := by lin_cert using reduction6981.terms
def image6982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6982 : InImage map_14_179 image6982 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6982 : Bundle := named_bundle% "RealMapCertificates/relations/basis6982.json"
theorem reductionProof6982 : EqualModuloRelations reduction6982.relations reduction6982.input reduction6982.output := by lin_cert using reduction6982.terms
theorem substitutionProof6982 : IsMapEvaluation generatorImages reduction6982.relations [8,18,333] reduction6982.output := by lin_cert using reduction6982.terms
def image6983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6983 : InImage map_14_179 image6983 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6983 : Bundle := named_bundle% "RealMapCertificates/relations/basis6983.json"
theorem reductionProof6983 : EqualModuloRelations reduction6983.relations reduction6983.input reduction6983.output := by lin_cert using reduction6983.terms
theorem substitutionProof6983 : IsMapEvaluation generatorImages reduction6983.relations [1,1,826] reduction6983.output := by lin_cert using reduction6983.terms
def image6984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6984 : InImage map_14_179 image6984 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6984 : Bundle := named_bundle% "RealMapCertificates/relations/basis6984.json"
theorem reductionProof6984 : EqualModuloRelations reduction6984.relations reduction6984.input reduction6984.output := by lin_cert using reduction6984.terms
theorem substitutionProof6984 : IsMapEvaluation generatorImages reduction6984.relations [0,3,769] reduction6984.output := by lin_cert using reduction6984.terms
def image6985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6985 : InImage map_14_179 image6985 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6985 : Bundle := named_bundle% "RealMapCertificates/relations/basis6985.json"
theorem reductionProof6985 : EqualModuloRelations reduction6985.relations reduction6985.input reduction6985.output := by lin_cert using reduction6985.terms
theorem substitutionProof6985 : IsMapEvaluation generatorImages reduction6985.relations [0,0,861] reduction6985.output := by lin_cert using reduction6985.terms
def map_14_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7124 : InImage map_14_180 image7124 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7124 : Bundle := named_bundle% "RealMapCertificates/relations/basis7124.json"
theorem reductionProof7124 : EqualModuloRelations reduction7124.relations reduction7124.input reduction7124.output := by lin_cert using reduction7124.terms
theorem substitutionProof7124 : IsMapEvaluation generatorImages reduction7124.relations [3,787] reduction7124.output := by lin_cert using reduction7124.terms
def image7125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7125 : InImage map_14_180 image7125 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7125 : Bundle := named_bundle% "RealMapCertificates/relations/basis7125.json"
theorem reductionProof7125 : EqualModuloRelations reduction7125.relations reduction7125.input reduction7125.output := by lin_cert using reduction7125.terms
theorem substitutionProof7125 : IsMapEvaluation generatorImages reduction7125.relations [0,8,659] reduction7125.output := by lin_cert using reduction7125.terms
def image7126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7126 : InImage map_14_180 image7126 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7126 : Bundle := named_bundle% "RealMapCertificates/relations/basis7126.json"
theorem reductionProof7126 : EqualModuloRelations reduction7126.relations reduction7126.input reduction7126.output := by lin_cert using reduction7126.terms
theorem substitutionProof7126 : IsMapEvaluation generatorImages reduction7126.relations [0,8,19,324] reduction7126.output := by lin_cert using reduction7126.terms
def image7127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7127 : InImage map_14_180 image7127 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7127 : Bundle := named_bundle% "RealMapCertificates/relations/basis7127.json"
theorem reductionProof7127 : EqualModuloRelations reduction7127.relations reduction7127.input reduction7127.output := by lin_cert using reduction7127.terms
theorem substitutionProof7127 : IsMapEvaluation generatorImages reduction7127.relations [0,0,869] reduction7127.output := by lin_cert using reduction7127.terms
def map_14_181 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7223 : InImage map_14_181 image7223 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7223 : Bundle := named_bundle% "RealMapCertificates/relations/basis7223.json"
theorem reductionProof7223 : EqualModuloRelations reduction7223.relations reduction7223.input reduction7223.output := by lin_cert using reduction7223.terms
theorem substitutionProof7223 : IsMapEvaluation generatorImages reduction7223.relations [76,239] reduction7223.output := by lin_cert using reduction7223.terms
def image7224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7224 : InImage map_14_181 image7224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7224 : Bundle := named_bundle% "RealMapCertificates/relations/basis7224.json"
theorem reductionProof7224 : EqualModuloRelations reduction7224.relations reduction7224.input reduction7224.output := by lin_cert using reduction7224.terms
theorem substitutionProof7224 : IsMapEvaluation generatorImages reduction7224.relations [0,3,788] reduction7224.output := by lin_cert using reduction7224.terms
def image7225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7225 : InImage map_14_181 image7225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7225 : Bundle := named_bundle% "RealMapCertificates/relations/basis7225.json"
theorem reductionProof7225 : EqualModuloRelations reduction7225.relations reduction7225.input reduction7225.output := by lin_cert using reduction7225.terms
theorem substitutionProof7225 : IsMapEvaluation generatorImages reduction7225.relations [0,0,8,20,324] reduction7225.output := by lin_cert using reduction7225.terms
def map_14_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7330 : InImage map_14_182 image7330 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7330 : Bundle := named_bundle% "RealMapCertificates/relations/basis7330.json"
theorem reductionProof7330 : EqualModuloRelations reduction7330.relations reduction7330.input reduction7330.output := by lin_cert using reduction7330.terms
theorem substitutionProof7330 : IsMapEvaluation generatorImages reduction7330.relations [911] reduction7330.output := by lin_cert using reduction7330.terms
def image7331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7331 : InImage map_14_182 image7331 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7331 : Bundle := named_bundle% "RealMapCertificates/relations/basis7331.json"
theorem reductionProof7331 : EqualModuloRelations reduction7331.relations reduction7331.input reduction7331.output := by lin_cert using reduction7331.terms
theorem substitutionProof7331 : IsMapEvaluation generatorImages reduction7331.relations [3,815] reduction7331.output := by lin_cert using reduction7331.terms
def image7332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7332 : InImage map_14_182 image7332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7332 : Bundle := named_bundle% "RealMapCertificates/relations/basis7332.json"
theorem reductionProof7332 : EqualModuloRelations reduction7332.relations reduction7332.input reduction7332.output := by lin_cert using reduction7332.terms
theorem substitutionProof7332 : IsMapEvaluation generatorImages reduction7332.relations [0,0,0,884] reduction7332.output := by lin_cert using reduction7332.terms
def map_14_183 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image7481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7481 : InImage map_14_183 image7481 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7481 : Bundle := named_bundle% "RealMapCertificates/relations/basis7481.json"
theorem reductionProof7481 : EqualModuloRelations reduction7481.relations reduction7481.input reduction7481.output := by lin_cert using reduction7481.terms
theorem substitutionProof7481 : IsMapEvaluation generatorImages reduction7481.relations [43,412] reduction7481.output := by lin_cert using reduction7481.terms
def image7482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7482 : InImage map_14_183 image7482 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7482 : Bundle := named_bundle% "RealMapCertificates/relations/basis7482.json"
theorem reductionProof7482 : EqualModuloRelations reduction7482.relations reduction7482.input reduction7482.output := by lin_cert using reduction7482.terms
theorem substitutionProof7482 : IsMapEvaluation generatorImages reduction7482.relations [3,3,732] reduction7482.output := by lin_cert using reduction7482.terms
def image7483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7483 : InImage map_14_183 image7483 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7483 : Bundle := named_bundle% "RealMapCertificates/relations/basis7483.json"
theorem reductionProof7483 : EqualModuloRelations reduction7483.relations reduction7483.input reduction7483.output := by lin_cert using reduction7483.terms
theorem substitutionProof7483 : IsMapEvaluation generatorImages reduction7483.relations [0,8,8,8,324] reduction7483.output := by lin_cert using reduction7483.terms
def image7484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7484 : InImage map_14_183 image7484 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7484 : Bundle := named_bundle% "RealMapCertificates/relations/basis7484.json"
theorem reductionProof7484 : EqualModuloRelations reduction7484.relations reduction7484.input reduction7484.output := by lin_cert using reduction7484.terms
theorem substitutionProof7484 : IsMapEvaluation generatorImages reduction7484.relations [0,3,817] reduction7484.output := by lin_cert using reduction7484.terms
def image7485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7485 : InImage map_14_183 image7485 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7485 : Bundle := named_bundle% "RealMapCertificates/relations/basis7485.json"
theorem reductionProof7485 : EqualModuloRelations reduction7485.relations reduction7485.input reduction7485.output := by lin_cert using reduction7485.terms
theorem substitutionProof7485 : IsMapEvaluation generatorImages reduction7485.relations [0,3,3,719] reduction7485.output := by lin_cert using reduction7485.terms
def image7486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7486 : InImage map_14_183 image7486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7486 : Bundle := named_bundle% "RealMapCertificates/relations/basis7486.json"
theorem reductionProof7486 : EqualModuloRelations reduction7486.relations reduction7486.input reduction7486.output := by lin_cert using reduction7486.terms
theorem substitutionProof7486 : IsMapEvaluation generatorImages reduction7486.relations [0,0,0,0,0,7,676] reduction7486.output := by lin_cert using reduction7486.terms
def map_14_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7590 : InImage map_14_184 image7590 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7590 : Bundle := named_bundle% "RealMapCertificates/relations/basis7590.json"
theorem reductionProof7590 : EqualModuloRelations reduction7590.relations reduction7590.input reduction7590.output := by lin_cert using reduction7590.terms
theorem substitutionProof7590 : IsMapEvaluation generatorImages reduction7590.relations [934] reduction7590.output := by lin_cert using reduction7590.terms
def image7591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7591 : InImage map_14_184 image7591 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7591 : Bundle := named_bundle% "RealMapCertificates/relations/basis7591.json"
theorem reductionProof7591 : EqualModuloRelations reduction7591.relations reduction7591.input reduction7591.output := by lin_cert using reduction7591.terms
theorem substitutionProof7591 : IsMapEvaluation generatorImages reduction7591.relations [0,0,8,22,324] reduction7591.output := by lin_cert using reduction7591.terms
def image7592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7592 : InImage map_14_184 image7592 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7592 : Bundle := named_bundle% "RealMapCertificates/relations/basis7592.json"
theorem reductionProof7592 : EqualModuloRelations reduction7592.relations reduction7592.input reduction7592.output := by lin_cert using reduction7592.terms
theorem substitutionProof7592 : IsMapEvaluation generatorImages reduction7592.relations [0,0,0,893] reduction7592.output := by lin_cert using reduction7592.terms
end RealMapCertificates
