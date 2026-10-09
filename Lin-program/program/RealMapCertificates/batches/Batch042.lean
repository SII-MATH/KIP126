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
  | 75 => []
  | 80 => []
  | 81 => []
  | 90 => []
  | 92 => []
  | 113 => [[0,8,12]]
  | 191 => []
  | 198 => []
  | 287 => []
  | 324 => []
  | 333 => []
  | 366 => []
  | 367 => []
  | 376 => []
  | 397 => []
  | 544 => []
  | 615 => []
  | 683 => []
  | 769 => []
  | 912 => []
  | 924 => []
  | 935 => []
  | 949 => []
  | 990 => []
  | 991 => []
  | 992 => []
  | 1006 => []
  | 1007 => []
  | 1008 => []
  | 1023 => []
  | 1024 => []
  | 1047 => []
  | 1055 => []
  | 1056 => []
  | 1057 => []
  | 1058 => []
  | 1073 => []
  | 1089 => []
  | 1090 => []
  | 1091 => []
  | 1098 => []
  | 1099 => []
  | 1100 => []
  | 1114 => []
  | 1115 => []
  | 1118 => []
  | 1120 => []
  | 1132 => []
  | 1133 => []
  | 1134 => []
  | 1135 => []
  | 1136 => []
  | 1159 => []
  | 1160 => []
  | 1161 => []
  | 1162 => []
  | 1190 => []
  | 1191 => []
  | 1192 => []
  | 1193 => []
  | 1194 => []
  | 1195 => []
  | 1211 => []
  | 1212 => []
  | 1213 => []
  | 1214 => []
  | 1215 => []
  | 1225 => []
  | 1226 => []
  | 1227 => []
  | 1270 => []
  | 1271 => []
  | 1272 => []
  | 1273 => []
  | 1296 => []
  | 1297 => []
  | _ => []
def map_14_185 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7706 : InImage map_14_185 image7706 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7706 : Bundle := named_bundle% "RealMapCertificates/relations/basis7706.json"
theorem reductionProof7706 : EqualModuloRelations reduction7706.relations reduction7706.input reduction7706.output := by lin_cert using reduction7706.terms
theorem substitutionProof7706 : IsMapEvaluation generatorImages reduction7706.relations [949] reduction7706.output := by lin_cert using reduction7706.terms
def image7707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7707 : InImage map_14_185 image7707 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7707 : Bundle := named_bundle% "RealMapCertificates/relations/basis7707.json"
theorem reductionProof7707 : EqualModuloRelations reduction7707.relations reduction7707.input reduction7707.output := by lin_cert using reduction7707.terms
theorem substitutionProof7707 : IsMapEvaluation generatorImages reduction7707.relations [3,43,333] reduction7707.output := by lin_cert using reduction7707.terms
def image7708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7708 : InImage map_14_185 image7708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7708 : Bundle := named_bundle% "RealMapCertificates/relations/basis7708.json"
theorem reductionProof7708 : EqualModuloRelations reduction7708.relations reduction7708.input reduction7708.output := by lin_cert using reduction7708.terms
theorem substitutionProof7708 : IsMapEvaluation generatorImages reduction7708.relations [1,924] reduction7708.output := by lin_cert using reduction7708.terms
def image7709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7709 : InImage map_14_185 image7709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7709 : Bundle := named_bundle% "RealMapCertificates/relations/basis7709.json"
theorem reductionProof7709 : EqualModuloRelations reduction7709.relations reduction7709.input reduction7709.output := by lin_cert using reduction7709.terms
theorem substitutionProof7709 : IsMapEvaluation generatorImages reduction7709.relations [0,935] reduction7709.output := by lin_cert using reduction7709.terms
def map_14_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7849 : InImage map_14_186 image7849 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7849 : Bundle := named_bundle% "RealMapCertificates/relations/basis7849.json"
theorem reductionProof7849 : EqualModuloRelations reduction7849.relations reduction7849.input reduction7849.output := by lin_cert using reduction7849.terms
theorem substitutionProof7849 : IsMapEvaluation generatorImages reduction7849.relations [3,3,769] reduction7849.output := by lin_cert using reduction7849.terms
def image7850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7850 : InImage map_14_186 image7850 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7850 : Bundle := named_bundle% "RealMapCertificates/relations/basis7850.json"
theorem reductionProof7850 : EqualModuloRelations reduction7850.relations reduction7850.input reduction7850.output := by lin_cert using reduction7850.terms
theorem substitutionProof7850 : IsMapEvaluation generatorImages reduction7850.relations [1,935] reduction7850.output := by lin_cert using reduction7850.terms
def map_14_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7937 : InImage map_14_187 image7937 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7937 : Bundle := named_bundle% "RealMapCertificates/relations/basis7937.json"
theorem reductionProof7937 : EqualModuloRelations reduction7937.relations reduction7937.input reduction7937.output := by lin_cert using reduction7937.terms
theorem substitutionProof7937 : IsMapEvaluation generatorImages reduction7937.relations [69,287] reduction7937.output := by lin_cert using reduction7937.terms
def image7938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7938 : InImage map_14_187 image7938 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7938 : Bundle := named_bundle% "RealMapCertificates/relations/basis7938.json"
theorem reductionProof7938 : EqualModuloRelations reduction7938.relations reduction7938.input reduction7938.output := by lin_cert using reduction7938.terms
theorem substitutionProof7938 : IsMapEvaluation generatorImages reduction7938.relations [0,2,912] reduction7938.output := by lin_cert using reduction7938.terms
def map_14_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8051 : InImage map_14_188 image8051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8051 : Bundle := named_bundle% "RealMapCertificates/relations/basis8051.json"
theorem reductionProof8051 : EqualModuloRelations reduction8051.relations reduction8051.input reduction8051.output := by lin_cert using reduction8051.terms
theorem substitutionProof8051 : IsMapEvaluation generatorImages reduction8051.relations [991] reduction8051.output := by lin_cert using reduction8051.terms
def image8052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8052 : InImage map_14_188 image8052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8052 : Bundle := named_bundle% "RealMapCertificates/relations/basis8052.json"
theorem reductionProof8052 : EqualModuloRelations reduction8052.relations reduction8052.input reduction8052.output := by lin_cert using reduction8052.terms
theorem substitutionProof8052 : IsMapEvaluation generatorImages reduction8052.relations [990] reduction8052.output := by lin_cert using reduction8052.terms
def image8053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8053 : InImage map_14_188 image8053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8053 : Bundle := named_bundle% "RealMapCertificates/relations/basis8053.json"
theorem reductionProof8053 : EqualModuloRelations reduction8053.relations reduction8053.input reduction8053.output := by lin_cert using reduction8053.terms
theorem substitutionProof8053 : IsMapEvaluation generatorImages reduction8053.relations [60,324] reduction8053.output := by lin_cert using reduction8053.terms
def image8054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8054 : InImage map_14_188 image8054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8054 : Bundle := named_bundle% "RealMapCertificates/relations/basis8054.json"
theorem reductionProof8054 : EqualModuloRelations reduction8054.relations reduction8054.input reduction8054.output := by lin_cert using reduction8054.terms
theorem substitutionProof8054 : IsMapEvaluation generatorImages reduction8054.relations [59,324] reduction8054.output := by lin_cert using reduction8054.terms
def image8055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8055 : InImage map_14_188 image8055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8055 : Bundle := named_bundle% "RealMapCertificates/relations/basis8055.json"
theorem reductionProof8055 : EqualModuloRelations reduction8055.relations reduction8055.input reduction8055.output := by lin_cert using reduction8055.terms
theorem substitutionProof8055 : IsMapEvaluation generatorImages reduction8055.relations [2,935] reduction8055.output := by lin_cert using reduction8055.terms
def map_14_189 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8207 : InImage map_14_189 image8207 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8207 : Bundle := named_bundle% "RealMapCertificates/relations/basis8207.json"
theorem reductionProof8207 : EqualModuloRelations reduction8207.relations reduction8207.input reduction8207.output := by lin_cert using reduction8207.terms
theorem substitutionProof8207 : IsMapEvaluation generatorImages reduction8207.relations [1007] reduction8207.output := by lin_cert using reduction8207.terms
def image8208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8208 : InImage map_14_189 image8208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8208 : Bundle := named_bundle% "RealMapCertificates/relations/basis8208.json"
theorem reductionProof8208 : EqualModuloRelations reduction8208.relations reduction8208.input reduction8208.output := by lin_cert using reduction8208.terms
theorem substitutionProof8208 : IsMapEvaluation generatorImages reduction8208.relations [1006] reduction8208.output := by lin_cert using reduction8208.terms
def map_14_190 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8312 : InImage map_14_190 image8312 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8312 : Bundle := named_bundle% "RealMapCertificates/relations/basis8312.json"
theorem reductionProof8312 : EqualModuloRelations reduction8312.relations reduction8312.input reduction8312.output := by lin_cert using reduction8312.terms
theorem substitutionProof8312 : IsMapEvaluation generatorImages reduction8312.relations [1024] reduction8312.output := by lin_cert using reduction8312.terms
def image8313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8313 : InImage map_14_190 image8313 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8313 : Bundle := named_bundle% "RealMapCertificates/relations/basis8313.json"
theorem reductionProof8313 : EqualModuloRelations reduction8313.relations reduction8313.input reduction8313.output := by lin_cert using reduction8313.terms
theorem substitutionProof8313 : IsMapEvaluation generatorImages reduction8313.relations [1023] reduction8313.output := by lin_cert using reduction8313.terms
def image8314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8314 : InImage map_14_190 image8314 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8314 : Bundle := named_bundle% "RealMapCertificates/relations/basis8314.json"
theorem reductionProof8314 : EqualModuloRelations reduction8314.relations reduction8314.input reduction8314.output := by lin_cert using reduction8314.terms
theorem substitutionProof8314 : IsMapEvaluation generatorImages reduction8314.relations [1,992] reduction8314.output := by lin_cert using reduction8314.terms
def image8315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8315 : InImage map_14_190 image8315 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8315 : Bundle := named_bundle% "RealMapCertificates/relations/basis8315.json"
theorem reductionProof8315 : EqualModuloRelations reduction8315.relations reduction8315.input reduction8315.output := by lin_cert using reduction8315.terms
theorem substitutionProof8315 : IsMapEvaluation generatorImages reduction8315.relations [0,1008] reduction8315.output := by lin_cert using reduction8315.terms
def image8316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8316 : InImage map_14_190 image8316 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8316 : Bundle := named_bundle% "RealMapCertificates/relations/basis8316.json"
theorem reductionProof8316 : EqualModuloRelations reduction8316.relations reduction8316.input reduction8316.output := by lin_cert using reduction8316.terms
theorem substitutionProof8316 : IsMapEvaluation generatorImages reduction8316.relations [0,0,18,615] reduction8316.output := by lin_cert using reduction8316.terms
def map_14_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8438 : InImage map_14_191 image8438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8438 : Bundle := named_bundle% "RealMapCertificates/relations/basis8438.json"
theorem reductionProof8438 : EqualModuloRelations reduction8438.relations reduction8438.input reduction8438.output := by lin_cert using reduction8438.terms
theorem substitutionProof8438 : IsMapEvaluation generatorImages reduction8438.relations [1047] reduction8438.output := by lin_cert using reduction8438.terms
def image8439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8439 : InImage map_14_191 image8439 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8439 : Bundle := named_bundle% "RealMapCertificates/relations/basis8439.json"
theorem reductionProof8439 : EqualModuloRelations reduction8439.relations reduction8439.input reduction8439.output := by lin_cert using reduction8439.terms
theorem substitutionProof8439 : IsMapEvaluation generatorImages reduction8439.relations [63,324] reduction8439.output := by lin_cert using reduction8439.terms
def map_14_192 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8586 : InImage map_14_192 image8586 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8586 : Bundle := named_bundle% "RealMapCertificates/relations/basis8586.json"
theorem reductionProof8586 : EqualModuloRelations reduction8586.relations reduction8586.input reduction8586.output := by lin_cert using reduction8586.terms
theorem substitutionProof8586 : IsMapEvaluation generatorImages reduction8586.relations [1056] reduction8586.output := by lin_cert using reduction8586.terms
def image8587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8587 : InImage map_14_192 image8587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8587 : Bundle := named_bundle% "RealMapCertificates/relations/basis8587.json"
theorem reductionProof8587 : EqualModuloRelations reduction8587.relations reduction8587.input reduction8587.output := by lin_cert using reduction8587.terms
theorem substitutionProof8587 : IsMapEvaluation generatorImages reduction8587.relations [1055] reduction8587.output := by lin_cert using reduction8587.terms
def map_14_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8682 : InImage map_14_193 image8682 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8682 : Bundle := named_bundle% "RealMapCertificates/relations/basis8682.json"
theorem reductionProof8682 : EqualModuloRelations reduction8682.relations reduction8682.input reduction8682.output := by lin_cert using reduction8682.terms
theorem substitutionProof8682 : IsMapEvaluation generatorImages reduction8682.relations [1073] reduction8682.output := by lin_cert using reduction8682.terms
def image8683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8683 : InImage map_14_193 image8683 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8683 : Bundle := named_bundle% "RealMapCertificates/relations/basis8683.json"
theorem reductionProof8683 : EqualModuloRelations reduction8683.relations reduction8683.input reduction8683.output := by lin_cert using reduction8683.terms
theorem substitutionProof8683 : IsMapEvaluation generatorImages reduction8683.relations [2,1008] reduction8683.output := by lin_cert using reduction8683.terms
def image8684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8684 : InImage map_14_193 image8684 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8684 : Bundle := named_bundle% "RealMapCertificates/relations/basis8684.json"
theorem reductionProof8684 : EqualModuloRelations reduction8684.relations reduction8684.input reduction8684.output := by lin_cert using reduction8684.terms
theorem substitutionProof8684 : IsMapEvaluation generatorImages reduction8684.relations [0,1057] reduction8684.output := by lin_cert using reduction8684.terms
def map_14_194 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8826 : InImage map_14_194 image8826 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8826 : Bundle := named_bundle% "RealMapCertificates/relations/basis8826.json"
theorem reductionProof8826 : EqualModuloRelations reduction8826.relations reduction8826.input reduction8826.output := by lin_cert using reduction8826.terms
theorem substitutionProof8826 : IsMapEvaluation generatorImages reduction8826.relations [1090] reduction8826.output := by lin_cert using reduction8826.terms
def image8827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8827 : InImage map_14_194 image8827 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8827 : Bundle := named_bundle% "RealMapCertificates/relations/basis8827.json"
theorem reductionProof8827 : EqualModuloRelations reduction8827.relations reduction8827.input reduction8827.output := by lin_cert using reduction8827.terms
theorem substitutionProof8827 : IsMapEvaluation generatorImages reduction8827.relations [1089] reduction8827.output := by lin_cert using reduction8827.terms
def image8828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8828 : InImage map_14_194 image8828 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8828 : Bundle := named_bundle% "RealMapCertificates/relations/basis8828.json"
theorem reductionProof8828 : EqualModuloRelations reduction8828.relations reduction8828.input reduction8828.output := by lin_cert using reduction8828.terms
theorem substitutionProof8828 : IsMapEvaluation generatorImages reduction8828.relations [8,42,324] reduction8828.output := by lin_cert using reduction8828.terms
def image8829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8829 : InImage map_14_194 image8829 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8829 : Bundle := named_bundle% "RealMapCertificates/relations/basis8829.json"
theorem reductionProof8829 : EqualModuloRelations reduction8829.relations reduction8829.input reduction8829.output := by lin_cert using reduction8829.terms
theorem substitutionProof8829 : IsMapEvaluation generatorImages reduction8829.relations [1,1057] reduction8829.output := by lin_cert using reduction8829.terms
def image8830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8830 : InImage map_14_194 image8830 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8830 : Bundle := named_bundle% "RealMapCertificates/relations/basis8830.json"
theorem reductionProof8830 : EqualModuloRelations reduction8830.relations reduction8830.input reduction8830.output := by lin_cert using reduction8830.terms
theorem substitutionProof8830 : IsMapEvaluation generatorImages reduction8830.relations [0,0,0,64,324] reduction8830.output := by lin_cert using reduction8830.terms
def map_14_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8984 : InImage map_14_195 image8984 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8984 : Bundle := named_bundle% "RealMapCertificates/relations/basis8984.json"
theorem reductionProof8984 : EqualModuloRelations reduction8984.relations reduction8984.input reduction8984.output := by lin_cert using reduction8984.terms
theorem substitutionProof8984 : IsMapEvaluation generatorImages reduction8984.relations [1098] reduction8984.output := by lin_cert using reduction8984.terms
def image8985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8985 : InImage map_14_195 image8985 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8985 : Bundle := named_bundle% "RealMapCertificates/relations/basis8985.json"
theorem reductionProof8985 : EqualModuloRelations reduction8985.relations reduction8985.input reduction8985.output := by lin_cert using reduction8985.terms
theorem substitutionProof8985 : IsMapEvaluation generatorImages reduction8985.relations [18,683] reduction8985.output := by lin_cert using reduction8985.terms
def image8986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8986 : InImage map_14_195 image8986 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8986 : Bundle := named_bundle% "RealMapCertificates/relations/basis8986.json"
theorem reductionProof8986 : EqualModuloRelations reduction8986.relations reduction8986.input reduction8986.output := by lin_cert using reduction8986.terms
theorem substitutionProof8986 : IsMapEvaluation generatorImages reduction8986.relations [0,1091] reduction8986.output := by lin_cert using reduction8986.terms
def image8987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8987 : InImage map_14_195 image8987 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8987 : Bundle := named_bundle% "RealMapCertificates/relations/basis8987.json"
theorem reductionProof8987 : EqualModuloRelations reduction8987.relations reduction8987.input reduction8987.output := by lin_cert using reduction8987.terms
theorem substitutionProof8987 : IsMapEvaluation generatorImages reduction8987.relations [0,0,0,66,324] reduction8987.output := by lin_cert using reduction8987.terms
def map_14_196 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9106 : InImage map_14_196 image9106 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9106 : Bundle := named_bundle% "RealMapCertificates/relations/basis9106.json"
theorem reductionProof9106 : EqualModuloRelations reduction9106.relations reduction9106.input reduction9106.output := by lin_cert using reduction9106.terms
theorem substitutionProof9106 : IsMapEvaluation generatorImages reduction9106.relations [1115] reduction9106.output := by lin_cert using reduction9106.terms
def image9107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9107 : InImage map_14_196 image9107 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9107 : Bundle := named_bundle% "RealMapCertificates/relations/basis9107.json"
theorem reductionProof9107 : EqualModuloRelations reduction9107.relations reduction9107.input reduction9107.output := by lin_cert using reduction9107.terms
theorem substitutionProof9107 : IsMapEvaluation generatorImages reduction9107.relations [1114] reduction9107.output := by lin_cert using reduction9107.terms
def image9108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9108 : InImage map_14_196 image9108 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9108 : Bundle := named_bundle% "RealMapCertificates/relations/basis9108.json"
theorem reductionProof9108 : EqualModuloRelations reduction9108.relations reduction9108.input reduction9108.output := by lin_cert using reduction9108.terms
theorem substitutionProof9108 : IsMapEvaluation generatorImages reduction9108.relations [43,544] reduction9108.output := by lin_cert using reduction9108.terms
def image9109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9109 : InImage map_14_196 image9109 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9109 : Bundle := named_bundle% "RealMapCertificates/relations/basis9109.json"
theorem reductionProof9109 : EqualModuloRelations reduction9109.relations reduction9109.input reduction9109.output := by lin_cert using reduction9109.terms
theorem substitutionProof9109 : IsMapEvaluation generatorImages reduction9109.relations [2,1057] reduction9109.output := by lin_cert using reduction9109.terms
def image9110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9110 : InImage map_14_196 image9110 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9110 : Bundle := named_bundle% "RealMapCertificates/relations/basis9110.json"
theorem reductionProof9110 : EqualModuloRelations reduction9110.relations reduction9110.input reduction9110.output := by lin_cert using reduction9110.terms
theorem substitutionProof9110 : IsMapEvaluation generatorImages reduction9110.relations [0,1099] reduction9110.output := by lin_cert using reduction9110.terms
def map_14_197 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9255 : InImage map_14_197 image9255 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9255 : Bundle := named_bundle% "RealMapCertificates/relations/basis9255.json"
theorem reductionProof9255 : EqualModuloRelations reduction9255.relations reduction9255.input reduction9255.output := by lin_cert using reduction9255.terms
theorem substitutionProof9255 : IsMapEvaluation generatorImages reduction9255.relations [1134] reduction9255.output := by lin_cert using reduction9255.terms
def image9256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9256 : InImage map_14_197 image9256 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9256 : Bundle := named_bundle% "RealMapCertificates/relations/basis9256.json"
theorem reductionProof9256 : EqualModuloRelations reduction9256.relations reduction9256.input reduction9256.output := by lin_cert using reduction9256.terms
theorem substitutionProof9256 : IsMapEvaluation generatorImages reduction9256.relations [1133] reduction9256.output := by lin_cert using reduction9256.terms
def image9257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9257 : InImage map_14_197 image9257 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9257 : Bundle := named_bundle% "RealMapCertificates/relations/basis9257.json"
theorem reductionProof9257 : EqualModuloRelations reduction9257.relations reduction9257.input reduction9257.output := by lin_cert using reduction9257.terms
theorem substitutionProof9257 : IsMapEvaluation generatorImages reduction9257.relations [1132] reduction9257.output := by lin_cert using reduction9257.terms
def image9258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9258 : InImage map_14_197 image9258 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9258 : Bundle := named_bundle% "RealMapCertificates/relations/basis9258.json"
theorem reductionProof9258 : EqualModuloRelations reduction9258.relations reduction9258.input reduction9258.output := by lin_cert using reduction9258.terms
theorem substitutionProof9258 : IsMapEvaluation generatorImages reduction9258.relations [8,46,324] reduction9258.output := by lin_cert using reduction9258.terms
def image9259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9259 : InImage map_14_197 image9259 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9259 : Bundle := named_bundle% "RealMapCertificates/relations/basis9259.json"
theorem reductionProof9259 : EqualModuloRelations reduction9259.relations reduction9259.input reduction9259.output := by lin_cert using reduction9259.terms
theorem substitutionProof9259 : IsMapEvaluation generatorImages reduction9259.relations [1,1100] reduction9259.output := by lin_cert using reduction9259.terms
def image9260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9260 : InImage map_14_197 image9260 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9260 : Bundle := named_bundle% "RealMapCertificates/relations/basis9260.json"
theorem reductionProof9260 : EqualModuloRelations reduction9260.relations reduction9260.input reduction9260.output := by lin_cert using reduction9260.terms
theorem substitutionProof9260 : IsMapEvaluation generatorImages reduction9260.relations [0,0,0,72,324] reduction9260.output := by lin_cert using reduction9260.terms
def map_14_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9439 : InImage map_14_198 image9439 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9439 : Bundle := named_bundle% "RealMapCertificates/relations/basis9439.json"
theorem reductionProof9439 : EqualModuloRelations reduction9439.relations reduction9439.input reduction9439.output := by lin_cert using reduction9439.terms
theorem substitutionProof9439 : IsMapEvaluation generatorImages reduction9439.relations [1159] reduction9439.output := by lin_cert using reduction9439.terms
def image9440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9440 : InImage map_14_198 image9440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9440 : Bundle := named_bundle% "RealMapCertificates/relations/basis9440.json"
theorem reductionProof9440 : EqualModuloRelations reduction9440.relations reduction9440.input reduction9440.output := by lin_cert using reduction9440.terms
theorem substitutionProof9440 : IsMapEvaluation generatorImages reduction9440.relations [67,397] reduction9440.output := by lin_cert using reduction9440.terms
def image9441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9441 : InImage map_14_198 image9441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9441 : Bundle := named_bundle% "RealMapCertificates/relations/basis9441.json"
theorem reductionProof9441 : EqualModuloRelations reduction9441.relations reduction9441.input reduction9441.output := by lin_cert using reduction9441.terms
theorem substitutionProof9441 : IsMapEvaluation generatorImages reduction9441.relations [0,1135] reduction9441.output := by lin_cert using reduction9441.terms
def image9442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9442 : InImage map_14_198 image9442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9442 : Bundle := named_bundle% "RealMapCertificates/relations/basis9442.json"
theorem reductionProof9442 : EqualModuloRelations reduction9442.relations reduction9442.input reduction9442.output := by lin_cert using reduction9442.terms
theorem substitutionProof9442 : IsMapEvaluation generatorImages reduction9442.relations [0,0,1118] reduction9442.output := by lin_cert using reduction9442.terms
def map_14_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9572 : InImage map_14_199 image9572 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9572 : Bundle := named_bundle% "RealMapCertificates/relations/basis9572.json"
theorem reductionProof9572 : EqualModuloRelations reduction9572.relations reduction9572.input reduction9572.output := by lin_cert using reduction9572.terms
theorem substitutionProof9572 : IsMapEvaluation generatorImages reduction9572.relations [7,924] reduction9572.output := by lin_cert using reduction9572.terms
def image9573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9573 : InImage map_14_199 image9573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9573 : Bundle := named_bundle% "RealMapCertificates/relations/basis9573.json"
theorem reductionProof9573 : EqualModuloRelations reduction9573.relations reduction9573.input reduction9573.output := by lin_cert using reduction9573.terms
theorem substitutionProof9573 : IsMapEvaluation generatorImages reduction9573.relations [0,1160] reduction9573.output := by lin_cert using reduction9573.terms
def map_14_200 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9725 : InImage map_14_200 image9725 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9725 : Bundle := named_bundle% "RealMapCertificates/relations/basis9725.json"
theorem reductionProof9725 : EqualModuloRelations reduction9725.relations reduction9725.input reduction9725.output := by lin_cert using reduction9725.terms
theorem substitutionProof9725 : IsMapEvaluation generatorImages reduction9725.relations [1192] reduction9725.output := by lin_cert using reduction9725.terms
def image9726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9726 : InImage map_14_200 image9726 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9726 : Bundle := named_bundle% "RealMapCertificates/relations/basis9726.json"
theorem reductionProof9726 : EqualModuloRelations reduction9726.relations reduction9726.input reduction9726.output := by lin_cert using reduction9726.terms
theorem substitutionProof9726 : IsMapEvaluation generatorImages reduction9726.relations [1191] reduction9726.output := by lin_cert using reduction9726.terms
def image9727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9727 : InImage map_14_200 image9727 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9727 : Bundle := named_bundle% "RealMapCertificates/relations/basis9727.json"
theorem reductionProof9727 : EqualModuloRelations reduction9727.relations reduction9727.input reduction9727.output := by lin_cert using reduction9727.terms
theorem substitutionProof9727 : IsMapEvaluation generatorImages reduction9727.relations [1190] reduction9727.output := by lin_cert using reduction9727.terms
def image9728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9728 : InImage map_14_200 image9728 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9728 : Bundle := named_bundle% "RealMapCertificates/relations/basis9728.json"
theorem reductionProof9728 : EqualModuloRelations reduction9728.relations reduction9728.input reduction9728.output := by lin_cert using reduction9728.terms
theorem substitutionProof9728 : IsMapEvaluation generatorImages reduction9728.relations [75,376] reduction9728.output := by lin_cert using reduction9728.terms
def image9729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9729 : InImage map_14_200 image9729 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9729 : Bundle := named_bundle% "RealMapCertificates/relations/basis9729.json"
theorem reductionProof9729 : EqualModuloRelations reduction9729.relations reduction9729.input reduction9729.output := by lin_cert using reduction9729.terms
theorem substitutionProof9729 : IsMapEvaluation generatorImages reduction9729.relations [8,51,324] reduction9729.output := by lin_cert using reduction9729.terms
def image9730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9730 : InImage map_14_200 image9730 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9730 : Bundle := named_bundle% "RealMapCertificates/relations/basis9730.json"
theorem reductionProof9730 : EqualModuloRelations reduction9730.relations reduction9730.input reduction9730.output := by lin_cert using reduction9730.terms
theorem substitutionProof9730 : IsMapEvaluation generatorImages reduction9730.relations [3,1057] reduction9730.output := by lin_cert using reduction9730.terms
def image9731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9731 : InImage map_14_200 image9731 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9731 : Bundle := named_bundle% "RealMapCertificates/relations/basis9731.json"
theorem reductionProof9731 : EqualModuloRelations reduction9731.relations reduction9731.input reduction9731.output := by lin_cert using reduction9731.terms
theorem substitutionProof9731 : IsMapEvaluation generatorImages reduction9731.relations [1,1,1118] reduction9731.output := by lin_cert using reduction9731.terms
def image9732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9732 : InImage map_14_200 image9732 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9732 : Bundle := named_bundle% "RealMapCertificates/relations/basis9732.json"
theorem reductionProof9732 : EqualModuloRelations reduction9732.relations reduction9732.input reduction9732.output := by lin_cert using reduction9732.terms
theorem substitutionProof9732 : IsMapEvaluation generatorImages reduction9732.relations [0,0,1161] reduction9732.output := by lin_cert using reduction9732.terms
def map_14_201 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image9913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9913 : InImage map_14_201 image9913 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction9913 : Bundle := named_bundle% "RealMapCertificates/relations/basis9913.json"
theorem reductionProof9913 : EqualModuloRelations reduction9913.relations reduction9913.input reduction9913.output := by lin_cert using reduction9913.terms
theorem substitutionProof9913 : IsMapEvaluation generatorImages reduction9913.relations [92,333] reduction9913.output := by lin_cert using reduction9913.terms
def image9914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9914 : InImage map_14_201 image9914 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction9914 : Bundle := named_bundle% "RealMapCertificates/relations/basis9914.json"
theorem reductionProof9914 : EqualModuloRelations reduction9914.relations reduction9914.input reduction9914.output := by lin_cert using reduction9914.terms
theorem substitutionProof9914 : IsMapEvaluation generatorImages reduction9914.relations [0,1195] reduction9914.output := by lin_cert using reduction9914.terms
def image9915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9915 : InImage map_14_201 image9915 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction9915 : Bundle := named_bundle% "RealMapCertificates/relations/basis9915.json"
theorem reductionProof9915 : EqualModuloRelations reduction9915.relations reduction9915.input reduction9915.output := by lin_cert using reduction9915.terms
theorem substitutionProof9915 : IsMapEvaluation generatorImages reduction9915.relations [0,1194] reduction9915.output := by lin_cert using reduction9915.terms
def image9916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9916 : InImage map_14_201 image9916 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction9916 : Bundle := named_bundle% "RealMapCertificates/relations/basis9916.json"
theorem reductionProof9916 : EqualModuloRelations reduction9916.relations reduction9916.input reduction9916.output := by lin_cert using reduction9916.terms
theorem substitutionProof9916 : IsMapEvaluation generatorImages reduction9916.relations [0,1193] reduction9916.output := by lin_cert using reduction9916.terms
def image9917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9917 : InImage map_14_201 image9917 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction9917 : Bundle := named_bundle% "RealMapCertificates/relations/basis9917.json"
theorem reductionProof9917 : EqualModuloRelations reduction9917.relations reduction9917.input reduction9917.output := by lin_cert using reduction9917.terms
theorem substitutionProof9917 : IsMapEvaluation generatorImages reduction9917.relations [0,2,1118] reduction9917.output := by lin_cert using reduction9917.terms
def image9918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9918 : InImage map_14_201 image9918 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction9918 : Bundle := named_bundle% "RealMapCertificates/relations/basis9918.json"
theorem reductionProof9918 : EqualModuloRelations reduction9918.relations reduction9918.input reduction9918.output := by lin_cert using reduction9918.terms
theorem substitutionProof9918 : IsMapEvaluation generatorImages reduction9918.relations [0,0,0,1162] reduction9918.output := by lin_cert using reduction9918.terms
def image9919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9919 : InImage map_14_201 image9919 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction9919 : Bundle := named_bundle% "RealMapCertificates/relations/basis9919.json"
theorem reductionProof9919 : EqualModuloRelations reduction9919.relations reduction9919.input reduction9919.output := by lin_cert using reduction9919.terms
theorem substitutionProof9919 : IsMapEvaluation generatorImages reduction9919.relations [0,0,0,0,80,324] reduction9919.output := by lin_cert using reduction9919.terms
def map_14_202 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10045 : InImage map_14_202 image10045 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10045 : Bundle := named_bundle% "RealMapCertificates/relations/basis10045.json"
theorem reductionProof10045 : EqualModuloRelations reduction10045.relations reduction10045.input reduction10045.output := by lin_cert using reduction10045.terms
theorem substitutionProof10045 : IsMapEvaluation generatorImages reduction10045.relations [1225] reduction10045.output := by lin_cert using reduction10045.terms
def image10046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10046 : InImage map_14_202 image10046 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10046 : Bundle := named_bundle% "RealMapCertificates/relations/basis10046.json"
theorem reductionProof10046 : EqualModuloRelations reduction10046.relations reduction10046.input reduction10046.output := by lin_cert using reduction10046.terms
theorem substitutionProof10046 : IsMapEvaluation generatorImages reduction10046.relations [3,1091] reduction10046.output := by lin_cert using reduction10046.terms
def image10047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10047 : InImage map_14_202 image10047 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10047 : Bundle := named_bundle% "RealMapCertificates/relations/basis10047.json"
theorem reductionProof10047 : EqualModuloRelations reduction10047.relations reduction10047.input reduction10047.output := by lin_cert using reduction10047.terms
theorem substitutionProof10047 : IsMapEvaluation generatorImages reduction10047.relations [0,1212] reduction10047.output := by lin_cert using reduction10047.terms
def image10048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10048 : InImage map_14_202 image10048 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10048 : Bundle := named_bundle% "RealMapCertificates/relations/basis10048.json"
theorem reductionProof10048 : EqualModuloRelations reduction10048.relations reduction10048.input reduction10048.output := by lin_cert using reduction10048.terms
theorem substitutionProof10048 : IsMapEvaluation generatorImages reduction10048.relations [0,1211] reduction10048.output := by lin_cert using reduction10048.terms
def image10049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10049 : InImage map_14_202 image10049 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10049 : Bundle := named_bundle% "RealMapCertificates/relations/basis10049.json"
theorem reductionProof10049 : EqualModuloRelations reduction10049.relations reduction10049.input reduction10049.output := by lin_cert using reduction10049.terms
theorem substitutionProof10049 : IsMapEvaluation generatorImages reduction10049.relations [0,0,0,0,81,324] reduction10049.output := by lin_cert using reduction10049.terms
def image10050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10050 : InImage map_14_202 image10050 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10050 : Bundle := named_bundle% "RealMapCertificates/relations/basis10050.json"
theorem reductionProof10050 : EqualModuloRelations reduction10050.relations reduction10050.input reduction10050.output := by lin_cert using reduction10050.terms
theorem substitutionProof10050 : IsMapEvaluation generatorImages reduction10050.relations [0,0,0,0,0,0,0,0,0,0,1058] reduction10050.output := by lin_cert using reduction10050.terms
def map_14_203 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image10230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10230 : InImage map_14_203 image10230 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction10230 : Bundle := named_bundle% "RealMapCertificates/relations/basis10230.json"
theorem reductionProof10230 : EqualModuloRelations reduction10230.relations reduction10230.input reduction10230.output := by lin_cert using reduction10230.terms
theorem substitutionProof10230 : IsMapEvaluation generatorImages reduction10230.relations [9,51,324] reduction10230.output := by lin_cert using reduction10230.terms
def image10231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10231 : InImage map_14_203 image10231 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction10231 : Bundle := named_bundle% "RealMapCertificates/relations/basis10231.json"
theorem reductionProof10231 : EqualModuloRelations reduction10231.relations reduction10231.input reduction10231.output := by lin_cert using reduction10231.terms
theorem substitutionProof10231 : IsMapEvaluation generatorImages reduction10231.relations [3,1099] reduction10231.output := by lin_cert using reduction10231.terms
def image10232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10232 : InImage map_14_203 image10232 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction10232 : Bundle := named_bundle% "RealMapCertificates/relations/basis10232.json"
theorem reductionProof10232 : EqualModuloRelations reduction10232.relations reduction10232.input reduction10232.output := by lin_cert using reduction10232.terms
theorem substitutionProof10232 : IsMapEvaluation generatorImages reduction10232.relations [1,1214] reduction10232.output := by lin_cert using reduction10232.terms
def image10233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10233 : InImage map_14_203 image10233 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction10233 : Bundle := named_bundle% "RealMapCertificates/relations/basis10233.json"
theorem reductionProof10233 : EqualModuloRelations reduction10233.relations reduction10233.input reduction10233.output := by lin_cert using reduction10233.terms
theorem substitutionProof10233 : IsMapEvaluation generatorImages reduction10233.relations [1,1213] reduction10233.output := by lin_cert using reduction10233.terms
def image10234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10234 : InImage map_14_203 image10234 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction10234 : Bundle := named_bundle% "RealMapCertificates/relations/basis10234.json"
theorem reductionProof10234 : EqualModuloRelations reduction10234.relations reduction10234.input reduction10234.output := by lin_cert using reduction10234.terms
theorem substitutionProof10234 : IsMapEvaluation generatorImages reduction10234.relations [1,1211] reduction10234.output := by lin_cert using reduction10234.terms
def image10235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10235 : InImage map_14_203 image10235 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction10235 : Bundle := named_bundle% "RealMapCertificates/relations/basis10235.json"
theorem reductionProof10235 : EqualModuloRelations reduction10235.relations reduction10235.input reduction10235.output := by lin_cert using reduction10235.terms
theorem substitutionProof10235 : IsMapEvaluation generatorImages reduction10235.relations [0,1226] reduction10235.output := by lin_cert using reduction10235.terms
def image10236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10236 : InImage map_14_203 image10236 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction10236 : Bundle := named_bundle% "RealMapCertificates/relations/basis10236.json"
theorem reductionProof10236 : EqualModuloRelations reduction10236.relations reduction10236.input reduction10236.output := by lin_cert using reduction10236.terms
theorem substitutionProof10236 : IsMapEvaluation generatorImages reduction10236.relations [0,0,1215] reduction10236.output := by lin_cert using reduction10236.terms
def image10237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10237 : InImage map_14_203 image10237 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction10237 : Bundle := named_bundle% "RealMapCertificates/relations/basis10237.json"
theorem reductionProof10237 : EqualModuloRelations reduction10237.relations reduction10237.input reduction10237.output := by lin_cert using reduction10237.terms
theorem substitutionProof10237 : IsMapEvaluation generatorImages reduction10237.relations [0,0,0,90,324] reduction10237.output := by lin_cert using reduction10237.terms
def map_14_204 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10428 : InImage map_14_204 image10428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10428 : Bundle := named_bundle% "RealMapCertificates/relations/basis10428.json"
theorem reductionProof10428 : EqualModuloRelations reduction10428.relations reduction10428.input reduction10428.output := by lin_cert using reduction10428.terms
theorem substitutionProof10428 : IsMapEvaluation generatorImages reduction10428.relations [1270] reduction10428.output := by lin_cert using reduction10428.terms
def image10429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10429 : InImage map_14_204 image10429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10429 : Bundle := named_bundle% "RealMapCertificates/relations/basis10429.json"
theorem reductionProof10429 : EqualModuloRelations reduction10429.relations reduction10429.input reduction10429.output := by lin_cert using reduction10429.terms
theorem substitutionProof10429 : IsMapEvaluation generatorImages reduction10429.relations [92,366] reduction10429.output := by lin_cert using reduction10429.terms
def image10430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10430 : InImage map_14_204 image10430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10430 : Bundle := named_bundle% "RealMapCertificates/relations/basis10430.json"
theorem reductionProof10430 : EqualModuloRelations reduction10430.relations reduction10430.input reduction10430.output := by lin_cert using reduction10430.terms
theorem substitutionProof10430 : IsMapEvaluation generatorImages reduction10430.relations [2,2,1118] reduction10430.output := by lin_cert using reduction10430.terms
def image10431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10431 : InImage map_14_204 image10431 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10431 : Bundle := named_bundle% "RealMapCertificates/relations/basis10431.json"
theorem reductionProof10431 : EqualModuloRelations reduction10431.relations reduction10431.input reduction10431.output := by lin_cert using reduction10431.terms
theorem substitutionProof10431 : IsMapEvaluation generatorImages reduction10431.relations [0,0,1227] reduction10431.output := by lin_cert using reduction10431.terms
def map_14_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10572 : InImage map_14_205 image10572 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10572 : Bundle := named_bundle% "RealMapCertificates/relations/basis10572.json"
theorem reductionProof10572 : EqualModuloRelations reduction10572.relations reduction10572.input reduction10572.output := by lin_cert using reduction10572.terms
theorem substitutionProof10572 : IsMapEvaluation generatorImages reduction10572.relations [1297] reduction10572.output := by lin_cert using reduction10572.terms
def image10573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10573 : InImage map_14_205 image10573 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10573 : Bundle := named_bundle% "RealMapCertificates/relations/basis10573.json"
theorem reductionProof10573 : EqualModuloRelations reduction10573.relations reduction10573.input reduction10573.output := by lin_cert using reduction10573.terms
theorem substitutionProof10573 : IsMapEvaluation generatorImages reduction10573.relations [1296] reduction10573.output := by lin_cert using reduction10573.terms
def image10574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10574 : InImage map_14_205 image10574 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10574 : Bundle := named_bundle% "RealMapCertificates/relations/basis10574.json"
theorem reductionProof10574 : EqualModuloRelations reduction10574.relations reduction10574.input reduction10574.output := by lin_cert using reduction10574.terms
theorem substitutionProof10574 : IsMapEvaluation generatorImages reduction10574.relations [3,1135] reduction10574.output := by lin_cert using reduction10574.terms
def image10575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10575 : InImage map_14_205 image10575 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10575 : Bundle := named_bundle% "RealMapCertificates/relations/basis10575.json"
theorem reductionProof10575 : EqualModuloRelations reduction10575.relations reduction10575.input reduction10575.output := by lin_cert using reduction10575.terms
theorem substitutionProof10575 : IsMapEvaluation generatorImages reduction10575.relations [0,1271] reduction10575.output := by lin_cert using reduction10575.terms
def image10576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10576 : InImage map_14_205 image10576 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10576 : Bundle := named_bundle% "RealMapCertificates/relations/basis10576.json"
theorem reductionProof10576 : EqualModuloRelations reduction10576.relations reduction10576.input reduction10576.output := by lin_cert using reduction10576.terms
theorem substitutionProof10576 : IsMapEvaluation generatorImages reduction10576.relations [0,92,367] reduction10576.output := by lin_cert using reduction10576.terms
def image10577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10577 : InImage map_14_205 image10577 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10577 : Bundle := named_bundle% "RealMapCertificates/relations/basis10577.json"
theorem reductionProof10577 : EqualModuloRelations reduction10577.relations reduction10577.input reduction10577.output := by lin_cert using reduction10577.terms
theorem substitutionProof10577 : IsMapEvaluation generatorImages reduction10577.relations [0,3,1118] reduction10577.output := by lin_cert using reduction10577.terms
def map_14_206 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image10771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10771 : InImage map_14_206 image10771 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction10771 : Bundle := named_bundle% "RealMapCertificates/relations/basis10771.json"
theorem reductionProof10771 : EqualModuloRelations reduction10771.relations reduction10771.input reduction10771.output := by lin_cert using reduction10771.terms
theorem substitutionProof10771 : IsMapEvaluation generatorImages reduction10771.relations [191,198] reduction10771.output := by lin_cert using reduction10771.terms
def image10772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10772 : InImage map_14_206 image10772 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction10772 : Bundle := named_bundle% "RealMapCertificates/relations/basis10772.json"
theorem reductionProof10772 : EqualModuloRelations reduction10772.relations reduction10772.input reduction10772.output := by lin_cert using reduction10772.terms
theorem substitutionProof10772 : IsMapEvaluation generatorImages reduction10772.relations [113,324] reduction10772.output := by lin_cert using reduction10772.terms
def image10773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10773 : InImage map_14_206 image10773 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction10773 : Bundle := named_bundle% "RealMapCertificates/relations/basis10773.json"
theorem reductionProof10773 : EqualModuloRelations reduction10773.relations reduction10773.input reduction10773.output := by lin_cert using reduction10773.terms
theorem substitutionProof10773 : IsMapEvaluation generatorImages reduction10773.relations [13,51,324] reduction10773.output := by lin_cert using reduction10773.terms
def image10774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10774 : InImage map_14_206 image10774 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction10774 : Bundle := named_bundle% "RealMapCertificates/relations/basis10774.json"
theorem reductionProof10774 : EqualModuloRelations reduction10774.relations reduction10774.input reduction10774.output := by lin_cert using reduction10774.terms
theorem substitutionProof10774 : IsMapEvaluation generatorImages reduction10774.relations [1,1272] reduction10774.output := by lin_cert using reduction10774.terms
def image10775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10775 : InImage map_14_206 image10775 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction10775 : Bundle := named_bundle% "RealMapCertificates/relations/basis10775.json"
theorem reductionProof10775 : EqualModuloRelations reduction10775.relations reduction10775.input reduction10775.output := by lin_cert using reduction10775.terms
theorem substitutionProof10775 : IsMapEvaluation generatorImages reduction10775.relations [0,3,1136] reduction10775.output := by lin_cert using reduction10775.terms
def image10776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10776 : InImage map_14_206 image10776 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction10776 : Bundle := named_bundle% "RealMapCertificates/relations/basis10776.json"
theorem reductionProof10776 : EqualModuloRelations reduction10776.relations reduction10776.input reduction10776.output := by lin_cert using reduction10776.terms
theorem substitutionProof10776 : IsMapEvaluation generatorImages reduction10776.relations [0,2,1215] reduction10776.output := by lin_cert using reduction10776.terms
def image10777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10777 : InImage map_14_206 image10777 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction10777 : Bundle := named_bundle% "RealMapCertificates/relations/basis10777.json"
theorem reductionProof10777 : EqualModuloRelations reduction10777.relations reduction10777.input reduction10777.output := by lin_cert using reduction10777.terms
theorem substitutionProof10777 : IsMapEvaluation generatorImages reduction10777.relations [0,0,1273] reduction10777.output := by lin_cert using reduction10777.terms
def image10778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10778 : InImage map_14_206 image10778 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction10778 : Bundle := named_bundle% "RealMapCertificates/relations/basis10778.json"
theorem reductionProof10778 : EqualModuloRelations reduction10778.relations reduction10778.input reduction10778.output := by lin_cert using reduction10778.terms
theorem substitutionProof10778 : IsMapEvaluation generatorImages reduction10778.relations [0,0,3,1120] reduction10778.output := by lin_cert using reduction10778.terms
end RealMapCertificates
