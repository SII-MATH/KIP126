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
  | 24 => []
  | 80 => []
  | 92 => []
  | 107 => []
  | 118 => [[0,9,12]]
  | 119 => [[1,9,12]]
  | 124 => []
  | 126 => []
  | 127 => []
  | 128 => []
  | 141 => []
  | 144 => []
  | 150 => []
  | 155 => []
  | 324 => []
  | 414 => []
  | 1057 => []
  | 1091 => []
  | 1099 => []
  | 1118 => []
  | 1120 => []
  | 1160 => []
  | 1178 => []
  | 1213 => []
  | 1215 => []
  | 1226 => []
  | 1227 => []
  | 1232 => []
  | 1271 => []
  | 1273 => []
  | 1310 => []
  | 1327 => []
  | 1328 => []
  | 1329 => []
  | 1330 => []
  | 1331 => []
  | 1332 => []
  | 1340 => []
  | 1341 => []
  | 1342 => []
  | 1343 => []
  | 1345 => []
  | 1346 => []
  | 1354 => []
  | 1355 => []
  | 1356 => []
  | 1378 => []
  | 1380 => []
  | 1390 => []
  | 1391 => []
  | 1392 => []
  | 1393 => []
  | 1409 => []
  | 1410 => []
  | 1411 => []
  | 1412 => []
  | 1414 => []
  | 1417 => []
  | 1418 => []
  | 1436 => []
  | 1452 => []
  | 1453 => []
  | 1454 => []
  | 1455 => []
  | 1456 => []
  | 1459 => []
  | 1477 => []
  | 1496 => []
  | 1511 => []
  | 1525 => []
  | 1526 => []
  | 1527 => []
  | 1531 => []
  | 1563 => []
  | 1564 => []
  | 1601 => []
  | 1602 => []
  | _ => []
def map_14_207 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10966 : InImage map_14_207 image10966 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10966 : Bundle := named_bundle% "RealMapCertificates/relations/basis10966.json"
theorem reductionProof10966 : EqualModuloRelations reduction10966.relations reduction10966.input reduction10966.output := by lin_cert using reduction10966.terms
theorem substitutionProof10966 : IsMapEvaluation generatorImages reduction10966.relations [1329] reduction10966.output := by lin_cert using reduction10966.terms
def image10967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10967 : InImage map_14_207 image10967 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10967 : Bundle := named_bundle% "RealMapCertificates/relations/basis10967.json"
theorem reductionProof10967 : EqualModuloRelations reduction10967.relations reduction10967.input reduction10967.output := by lin_cert using reduction10967.terms
theorem substitutionProof10967 : IsMapEvaluation generatorImages reduction10967.relations [1328] reduction10967.output := by lin_cert using reduction10967.terms
def image10968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10968 : InImage map_14_207 image10968 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10968 : Bundle := named_bundle% "RealMapCertificates/relations/basis10968.json"
theorem reductionProof10968 : EqualModuloRelations reduction10968.relations reduction10968.input reduction10968.output := by lin_cert using reduction10968.terms
theorem substitutionProof10968 : IsMapEvaluation generatorImages reduction10968.relations [1327] reduction10968.output := by lin_cert using reduction10968.terms
def image10969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10969 : InImage map_14_207 image10969 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10969 : Bundle := named_bundle% "RealMapCertificates/relations/basis10969.json"
theorem reductionProof10969 : EqualModuloRelations reduction10969.relations reduction10969.input reduction10969.output := by lin_cert using reduction10969.terms
theorem substitutionProof10969 : IsMapEvaluation generatorImages reduction10969.relations [92,414] reduction10969.output := by lin_cert using reduction10969.terms
def map_14_208 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11098 : InImage map_14_208 image11098 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11098 : Bundle := named_bundle% "RealMapCertificates/relations/basis11098.json"
theorem reductionProof11098 : EqualModuloRelations reduction11098.relations reduction11098.input reduction11098.output := by lin_cert using reduction11098.terms
theorem substitutionProof11098 : IsMapEvaluation generatorImages reduction11098.relations [1340] reduction11098.output := by lin_cert using reduction11098.terms
def image11099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11099 : InImage map_14_208 image11099 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11099 : Bundle := named_bundle% "RealMapCertificates/relations/basis11099.json"
theorem reductionProof11099 : EqualModuloRelations reduction11099.relations reduction11099.input reduction11099.output := by lin_cert using reduction11099.terms
theorem substitutionProof11099 : IsMapEvaluation generatorImages reduction11099.relations [7,1057] reduction11099.output := by lin_cert using reduction11099.terms
def image11100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11100 : InImage map_14_208 image11100 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11100 : Bundle := named_bundle% "RealMapCertificates/relations/basis11100.json"
theorem reductionProof11100 : EqualModuloRelations reduction11100.relations reduction11100.input reduction11100.output := by lin_cert using reduction11100.terms
theorem substitutionProof11100 : IsMapEvaluation generatorImages reduction11100.relations [2,1271] reduction11100.output := by lin_cert using reduction11100.terms
def image11101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11101 : InImage map_14_208 image11101 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11101 : Bundle := named_bundle% "RealMapCertificates/relations/basis11101.json"
theorem reductionProof11101 : EqualModuloRelations reduction11101.relations reduction11101.input reduction11101.output := by lin_cert using reduction11101.terms
theorem substitutionProof11101 : IsMapEvaluation generatorImages reduction11101.relations [1,1310] reduction11101.output := by lin_cert using reduction11101.terms
def image11102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11102 : InImage map_14_208 image11102 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11102 : Bundle := named_bundle% "RealMapCertificates/relations/basis11102.json"
theorem reductionProof11102 : EqualModuloRelations reduction11102.relations reduction11102.input reduction11102.output := by lin_cert using reduction11102.terms
theorem substitutionProof11102 : IsMapEvaluation generatorImages reduction11102.relations [0,1331] reduction11102.output := by lin_cert using reduction11102.terms
def image11103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11103 : InImage map_14_208 image11103 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11103 : Bundle := named_bundle% "RealMapCertificates/relations/basis11103.json"
theorem reductionProof11103 : EqualModuloRelations reduction11103.relations reduction11103.input reduction11103.output := by lin_cert using reduction11103.terms
theorem substitutionProof11103 : IsMapEvaluation generatorImages reduction11103.relations [0,1330] reduction11103.output := by lin_cert using reduction11103.terms
def map_14_209 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11288 : InImage map_14_209 image11288 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11288 : Bundle := named_bundle% "RealMapCertificates/relations/basis11288.json"
theorem reductionProof11288 : EqualModuloRelations reduction11288.relations reduction11288.input reduction11288.output := by lin_cert using reduction11288.terms
theorem substitutionProof11288 : IsMapEvaluation generatorImages reduction11288.relations [1354] reduction11288.output := by lin_cert using reduction11288.terms
def image11289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11289 : InImage map_14_209 image11289 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11289 : Bundle := named_bundle% "RealMapCertificates/relations/basis11289.json"
theorem reductionProof11289 : EqualModuloRelations reduction11289.relations reduction11289.input reduction11289.output := by lin_cert using reduction11289.terms
theorem substitutionProof11289 : IsMapEvaluation generatorImages reduction11289.relations [118,324] reduction11289.output := by lin_cert using reduction11289.terms
def image11290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11290 : InImage map_14_209 image11290 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11290 : Bundle := named_bundle% "RealMapCertificates/relations/basis11290.json"
theorem reductionProof11290 : EqualModuloRelations reduction11290.relations reduction11290.input reduction11290.output := by lin_cert using reduction11290.terms
theorem substitutionProof11290 : IsMapEvaluation generatorImages reduction11290.relations [1,1330] reduction11290.output := by lin_cert using reduction11290.terms
def image11291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11291 : InImage map_14_209 image11291 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11291 : Bundle := named_bundle% "RealMapCertificates/relations/basis11291.json"
theorem reductionProof11291 : EqualModuloRelations reduction11291.relations reduction11291.input reduction11291.output := by lin_cert using reduction11291.terms
theorem substitutionProof11291 : IsMapEvaluation generatorImages reduction11291.relations [0,2,1273] reduction11291.output := by lin_cert using reduction11291.terms
def image11292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11292 : InImage map_14_209 image11292 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11292 : Bundle := named_bundle% "RealMapCertificates/relations/basis11292.json"
theorem reductionProof11292 : EqualModuloRelations reduction11292.relations reduction11292.input reduction11292.output := by lin_cert using reduction11292.terms
theorem substitutionProof11292 : IsMapEvaluation generatorImages reduction11292.relations [0,0,1332] reduction11292.output := by lin_cert using reduction11292.terms
def image11293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11293 : InImage map_14_209 image11293 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11293 : Bundle := named_bundle% "RealMapCertificates/relations/basis11293.json"
theorem reductionProof11293 : EqualModuloRelations reduction11293.relations reduction11293.input reduction11293.output := by lin_cert using reduction11293.terms
theorem substitutionProof11293 : IsMapEvaluation generatorImages reduction11293.relations [0,0,0,0,0,107,324] reduction11293.output := by lin_cert using reduction11293.terms
def map_14_210 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11487 : InImage map_14_210 image11487 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11487 : Bundle := named_bundle% "RealMapCertificates/relations/basis11487.json"
theorem reductionProof11487 : EqualModuloRelations reduction11487.relations reduction11487.input reduction11487.output := by lin_cert using reduction11487.terms
theorem substitutionProof11487 : IsMapEvaluation generatorImages reduction11487.relations [1378] reduction11487.output := by lin_cert using reduction11487.terms
def image11488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11488 : InImage map_14_210 image11488 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11488 : Bundle := named_bundle% "RealMapCertificates/relations/basis11488.json"
theorem reductionProof11488 : EqualModuloRelations reduction11488.relations reduction11488.input reduction11488.output := by lin_cert using reduction11488.terms
theorem substitutionProof11488 : IsMapEvaluation generatorImages reduction11488.relations [119,324] reduction11488.output := by lin_cert using reduction11488.terms
def image11489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11489 : InImage map_14_210 image11489 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11489 : Bundle := named_bundle% "RealMapCertificates/relations/basis11489.json"
theorem reductionProof11489 : EqualModuloRelations reduction11489.relations reduction11489.input reduction11489.output := by lin_cert using reduction11489.terms
theorem substitutionProof11489 : IsMapEvaluation generatorImages reduction11489.relations [7,1091] reduction11489.output := by lin_cert using reduction11489.terms
def image11490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11490 : InImage map_14_210 image11490 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11490 : Bundle := named_bundle% "RealMapCertificates/relations/basis11490.json"
theorem reductionProof11490 : EqualModuloRelations reduction11490.relations reduction11490.input reduction11490.output := by lin_cert using reduction11490.terms
theorem substitutionProof11490 : IsMapEvaluation generatorImages reduction11490.relations [3,1226] reduction11490.output := by lin_cert using reduction11490.terms
def image11491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11491 : InImage map_14_210 image11491 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11491 : Bundle := named_bundle% "RealMapCertificates/relations/basis11491.json"
theorem reductionProof11491 : EqualModuloRelations reduction11491.relations reduction11491.input reduction11491.output := by lin_cert using reduction11491.terms
theorem substitutionProof11491 : IsMapEvaluation generatorImages reduction11491.relations [1,1341] reduction11491.output := by lin_cert using reduction11491.terms
def image11492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11492 : InImage map_14_210 image11492 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11492 : Bundle := named_bundle% "RealMapCertificates/relations/basis11492.json"
theorem reductionProof11492 : EqualModuloRelations reduction11492.relations reduction11492.input reduction11492.output := by lin_cert using reduction11492.terms
theorem substitutionProof11492 : IsMapEvaluation generatorImages reduction11492.relations [0,1355] reduction11492.output := by lin_cert using reduction11492.terms
def image11493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11493 : InImage map_14_210 image11493 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11493 : Bundle := named_bundle% "RealMapCertificates/relations/basis11493.json"
theorem reductionProof11493 : EqualModuloRelations reduction11493.relations reduction11493.input reduction11493.output := by lin_cert using reduction11493.terms
theorem substitutionProof11493 : IsMapEvaluation generatorImages reduction11493.relations [0,3,1215] reduction11493.output := by lin_cert using reduction11493.terms
def image11494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11494 : InImage map_14_210 image11494 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11494 : Bundle := named_bundle% "RealMapCertificates/relations/basis11494.json"
theorem reductionProof11494 : EqualModuloRelations reduction11494.relations reduction11494.input reduction11494.output := by lin_cert using reduction11494.terms
theorem substitutionProof11494 : IsMapEvaluation generatorImages reduction11494.relations [0,0,1342] reduction11494.output := by lin_cert using reduction11494.terms
def map_14_211 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11639 : InImage map_14_211 image11639 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11639 : Bundle := named_bundle% "RealMapCertificates/relations/basis11639.json"
theorem reductionProof11639 : EqualModuloRelations reduction11639.relations reduction11639.input reduction11639.output := by lin_cert using reduction11639.terms
theorem substitutionProof11639 : IsMapEvaluation generatorImages reduction11639.relations [1391] reduction11639.output := by lin_cert using reduction11639.terms
def image11640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11640 : InImage map_14_211 image11640 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11640 : Bundle := named_bundle% "RealMapCertificates/relations/basis11640.json"
theorem reductionProof11640 : EqualModuloRelations reduction11640.relations reduction11640.input reduction11640.output := by lin_cert using reduction11640.terms
theorem substitutionProof11640 : IsMapEvaluation generatorImages reduction11640.relations [1390] reduction11640.output := by lin_cert using reduction11640.terms
def image11641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11641 : InImage map_14_211 image11641 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11641 : Bundle := named_bundle% "RealMapCertificates/relations/basis11641.json"
theorem reductionProof11641 : EqualModuloRelations reduction11641.relations reduction11641.input reduction11641.output := by lin_cert using reduction11641.terms
theorem substitutionProof11641 : IsMapEvaluation generatorImages reduction11641.relations [7,1099] reduction11641.output := by lin_cert using reduction11641.terms
def image11642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11642 : InImage map_14_211 image11642 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11642 : Bundle := named_bundle% "RealMapCertificates/relations/basis11642.json"
theorem reductionProof11642 : EqualModuloRelations reduction11642.relations reduction11642.input reduction11642.output := by lin_cert using reduction11642.terms
theorem substitutionProof11642 : IsMapEvaluation generatorImages reduction11642.relations [0,3,1227] reduction11642.output := by lin_cert using reduction11642.terms
def image11643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11643 : InImage map_14_211 image11643 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11643 : Bundle := named_bundle% "RealMapCertificates/relations/basis11643.json"
theorem reductionProof11643 : EqualModuloRelations reduction11643.relations reduction11643.input reduction11643.output := by lin_cert using reduction11643.terms
theorem substitutionProof11643 : IsMapEvaluation generatorImages reduction11643.relations [0,0,1356] reduction11643.output := by lin_cert using reduction11643.terms
def image11644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11644 : InImage map_14_211 image11644 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11644 : Bundle := named_bundle% "RealMapCertificates/relations/basis11644.json"
theorem reductionProof11644 : EqualModuloRelations reduction11644.relations reduction11644.input reduction11644.output := by lin_cert using reduction11644.terms
theorem substitutionProof11644 : IsMapEvaluation generatorImages reduction11644.relations [0,0,0,1346] reduction11644.output := by lin_cert using reduction11644.terms
def image11645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11645 : InImage map_14_211 image11645 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11645 : Bundle := named_bundle% "RealMapCertificates/relations/basis11645.json"
theorem reductionProof11645 : EqualModuloRelations reduction11645.relations reduction11645.input reduction11645.output := by lin_cert using reduction11645.terms
theorem substitutionProof11645 : IsMapEvaluation generatorImages reduction11645.relations [0,0,0,1345] reduction11645.output := by lin_cert using reduction11645.terms
def map_14_212 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image11835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11835 : InImage map_14_212 image11835 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction11835 : Bundle := named_bundle% "RealMapCertificates/relations/basis11835.json"
theorem reductionProof11835 : EqualModuloRelations reduction11835.relations reduction11835.input reduction11835.output := by lin_cert using reduction11835.terms
theorem substitutionProof11835 : IsMapEvaluation generatorImages reduction11835.relations [1410] reduction11835.output := by lin_cert using reduction11835.terms
def image11836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11836 : InImage map_14_212 image11836 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction11836 : Bundle := named_bundle% "RealMapCertificates/relations/basis11836.json"
theorem reductionProof11836 : EqualModuloRelations reduction11836.relations reduction11836.input reduction11836.output := by lin_cert using reduction11836.terms
theorem substitutionProof11836 : IsMapEvaluation generatorImages reduction11836.relations [1409] reduction11836.output := by lin_cert using reduction11836.terms
def image11837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11837 : InImage map_14_212 image11837 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction11837 : Bundle := named_bundle% "RealMapCertificates/relations/basis11837.json"
theorem reductionProof11837 : EqualModuloRelations reduction11837.relations reduction11837.input reduction11837.output := by lin_cert using reduction11837.terms
theorem substitutionProof11837 : IsMapEvaluation generatorImages reduction11837.relations [127,324] reduction11837.output := by lin_cert using reduction11837.terms
def image11838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11838 : InImage map_14_212 image11838 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction11838 : Bundle := named_bundle% "RealMapCertificates/relations/basis11838.json"
theorem reductionProof11838 : EqualModuloRelations reduction11838.relations reduction11838.input reduction11838.output := by lin_cert using reduction11838.terms
theorem substitutionProof11838 : IsMapEvaluation generatorImages reduction11838.relations [126,324] reduction11838.output := by lin_cert using reduction11838.terms
def image11839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11839 : InImage map_14_212 image11839 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction11839 : Bundle := named_bundle% "RealMapCertificates/relations/basis11839.json"
theorem reductionProof11839 : EqualModuloRelations reduction11839.relations reduction11839.input reduction11839.output := by lin_cert using reduction11839.terms
theorem substitutionProof11839 : IsMapEvaluation generatorImages reduction11839.relations [13,13,24,324] reduction11839.output := by lin_cert using reduction11839.terms
def image11840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11840 : InImage map_14_212 image11840 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction11840 : Bundle := named_bundle% "RealMapCertificates/relations/basis11840.json"
theorem reductionProof11840 : EqualModuloRelations reduction11840.relations reduction11840.input reduction11840.output := by lin_cert using reduction11840.terms
theorem substitutionProof11840 : IsMapEvaluation generatorImages reduction11840.relations [3,3,1118] reduction11840.output := by lin_cert using reduction11840.terms
def image11841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11841 : InImage map_14_212 image11841 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction11841 : Bundle := named_bundle% "RealMapCertificates/relations/basis11841.json"
theorem reductionProof11841 : EqualModuloRelations reduction11841.relations reduction11841.input reduction11841.output := by lin_cert using reduction11841.terms
theorem substitutionProof11841 : IsMapEvaluation generatorImages reduction11841.relations [1,1,1343] reduction11841.output := by lin_cert using reduction11841.terms
def image11842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11842 : InImage map_14_212 image11842 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction11842 : Bundle := named_bundle% "RealMapCertificates/relations/basis11842.json"
theorem reductionProof11842 : EqualModuloRelations reduction11842.relations reduction11842.input reduction11842.output := by lin_cert using reduction11842.terms
theorem substitutionProof11842 : IsMapEvaluation generatorImages reduction11842.relations [1,1,1342] reduction11842.output := by lin_cert using reduction11842.terms
def image11843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11843 : InImage map_14_212 image11843 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction11843 : Bundle := named_bundle% "RealMapCertificates/relations/basis11843.json"
theorem reductionProof11843 : EqualModuloRelations reduction11843.relations reduction11843.input reduction11843.output := by lin_cert using reduction11843.terms
theorem substitutionProof11843 : IsMapEvaluation generatorImages reduction11843.relations [0,1393] reduction11843.output := by lin_cert using reduction11843.terms
def image11844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11844 : InImage map_14_212 image11844 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction11844 : Bundle := named_bundle% "RealMapCertificates/relations/basis11844.json"
theorem reductionProof11844 : EqualModuloRelations reduction11844.relations reduction11844.input reduction11844.output := by lin_cert using reduction11844.terms
theorem substitutionProof11844 : IsMapEvaluation generatorImages reduction11844.relations [0,1392] reduction11844.output := by lin_cert using reduction11844.terms
def map_14_213 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12073 : InImage map_14_213 image12073 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12073 : Bundle := named_bundle% "RealMapCertificates/relations/basis12073.json"
theorem reductionProof12073 : EqualModuloRelations reduction12073.relations reduction12073.input reduction12073.output := by lin_cert using reduction12073.terms
theorem substitutionProof12073 : IsMapEvaluation generatorImages reduction12073.relations [1436] reduction12073.output := by lin_cert using reduction12073.terms
def image12074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12074 : InImage map_14_213 image12074 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12074 : Bundle := named_bundle% "RealMapCertificates/relations/basis12074.json"
theorem reductionProof12074 : EqualModuloRelations reduction12074.relations reduction12074.input reduction12074.output := by lin_cert using reduction12074.terms
theorem substitutionProof12074 : IsMapEvaluation generatorImages reduction12074.relations [1,1392] reduction12074.output := by lin_cert using reduction12074.terms
def image12075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12075 : InImage map_14_213 image12075 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12075 : Bundle := named_bundle% "RealMapCertificates/relations/basis12075.json"
theorem reductionProof12075 : EqualModuloRelations reduction12075.relations reduction12075.input reduction12075.output := by lin_cert using reduction12075.terms
theorem substitutionProof12075 : IsMapEvaluation generatorImages reduction12075.relations [1,124,324] reduction12075.output := by lin_cert using reduction12075.terms
def image12076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12076 : InImage map_14_213 image12076 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12076 : Bundle := named_bundle% "RealMapCertificates/relations/basis12076.json"
theorem reductionProof12076 : EqualModuloRelations reduction12076.relations reduction12076.input reduction12076.output := by lin_cert using reduction12076.terms
theorem substitutionProof12076 : IsMapEvaluation generatorImages reduction12076.relations [0,1412] reduction12076.output := by lin_cert using reduction12076.terms
def image12077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12077 : InImage map_14_213 image12077 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12077 : Bundle := named_bundle% "RealMapCertificates/relations/basis12077.json"
theorem reductionProof12077 : EqualModuloRelations reduction12077.relations reduction12077.input reduction12077.output := by lin_cert using reduction12077.terms
theorem substitutionProof12077 : IsMapEvaluation generatorImages reduction12077.relations [0,1411] reduction12077.output := by lin_cert using reduction12077.terms
def image12078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12078 : InImage map_14_213 image12078 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12078 : Bundle := named_bundle% "RealMapCertificates/relations/basis12078.json"
theorem reductionProof12078 : EqualModuloRelations reduction12078.relations reduction12078.input reduction12078.output := by lin_cert using reduction12078.terms
theorem substitutionProof12078 : IsMapEvaluation generatorImages reduction12078.relations [0,7,1118] reduction12078.output := by lin_cert using reduction12078.terms
def image12079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12079 : InImage map_14_213 image12079 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12079 : Bundle := named_bundle% "RealMapCertificates/relations/basis12079.json"
theorem reductionProof12079 : EqualModuloRelations reduction12079.relations reduction12079.input reduction12079.output := by lin_cert using reduction12079.terms
theorem substitutionProof12079 : IsMapEvaluation generatorImages reduction12079.relations [0,3,3,1120] reduction12079.output := by lin_cert using reduction12079.terms
def map_14_214 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12222 : InImage map_14_214 image12222 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12222 : Bundle := named_bundle% "RealMapCertificates/relations/basis12222.json"
theorem reductionProof12222 : EqualModuloRelations reduction12222.relations reduction12222.input reduction12222.output := by lin_cert using reduction12222.terms
theorem substitutionProof12222 : IsMapEvaluation generatorImages reduction12222.relations [1453] reduction12222.output := by lin_cert using reduction12222.terms
def image12223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12223 : InImage map_14_214 image12223 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12223 : Bundle := named_bundle% "RealMapCertificates/relations/basis12223.json"
theorem reductionProof12223 : EqualModuloRelations reduction12223.relations reduction12223.input reduction12223.output := by lin_cert using reduction12223.terms
theorem substitutionProof12223 : IsMapEvaluation generatorImages reduction12223.relations [1452] reduction12223.output := by lin_cert using reduction12223.terms
def image12224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12224 : InImage map_14_214 image12224 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12224 : Bundle := named_bundle% "RealMapCertificates/relations/basis12224.json"
theorem reductionProof12224 : EqualModuloRelations reduction12224.relations reduction12224.input reduction12224.output := by lin_cert using reduction12224.terms
theorem substitutionProof12224 : IsMapEvaluation generatorImages reduction12224.relations [7,1160] reduction12224.output := by lin_cert using reduction12224.terms
def image12225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12225 : InImage map_14_214 image12225 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12225 : Bundle := named_bundle% "RealMapCertificates/relations/basis12225.json"
theorem reductionProof12225 : EqualModuloRelations reduction12225.relations reduction12225.input reduction12225.output := by lin_cert using reduction12225.terms
theorem substitutionProof12225 : IsMapEvaluation generatorImages reduction12225.relations [1,1412] reduction12225.output := by lin_cert using reduction12225.terms
def image12226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12226 : InImage map_14_214 image12226 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12226 : Bundle := named_bundle% "RealMapCertificates/relations/basis12226.json"
theorem reductionProof12226 : EqualModuloRelations reduction12226.relations reduction12226.input reduction12226.output := by lin_cert using reduction12226.terms
theorem substitutionProof12226 : IsMapEvaluation generatorImages reduction12226.relations [1,7,1118] reduction12226.output := by lin_cert using reduction12226.terms
def image12227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12227 : InImage map_14_214 image12227 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12227 : Bundle := named_bundle% "RealMapCertificates/relations/basis12227.json"
theorem reductionProof12227 : EqualModuloRelations reduction12227.relations reduction12227.input reduction12227.output := by lin_cert using reduction12227.terms
theorem substitutionProof12227 : IsMapEvaluation generatorImages reduction12227.relations [0,0,7,1120] reduction12227.output := by lin_cert using reduction12227.terms
def map_14_215 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12428 : InImage map_14_215 image12428 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12428 : Bundle := named_bundle% "RealMapCertificates/relations/basis12428.json"
theorem reductionProof12428 : EqualModuloRelations reduction12428.relations reduction12428.input reduction12428.output := by lin_cert using reduction12428.terms
theorem substitutionProof12428 : IsMapEvaluation generatorImages reduction12428.relations [8,80,324] reduction12428.output := by lin_cert using reduction12428.terms
def image12429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12429 : InImage map_14_215 image12429 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12429 : Bundle := named_bundle% "RealMapCertificates/relations/basis12429.json"
theorem reductionProof12429 : EqualModuloRelations reduction12429.relations reduction12429.input reduction12429.output := by lin_cert using reduction12429.terms
theorem substitutionProof12429 : IsMapEvaluation generatorImages reduction12429.relations [3,1331] reduction12429.output := by lin_cert using reduction12429.terms
def image12430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12430 : InImage map_14_215 image12430 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12430 : Bundle := named_bundle% "RealMapCertificates/relations/basis12430.json"
theorem reductionProof12430 : EqualModuloRelations reduction12430.relations reduction12430.input reduction12430.output := by lin_cert using reduction12430.terms
theorem substitutionProof12430 : IsMapEvaluation generatorImages reduction12430.relations [3,1330] reduction12430.output := by lin_cert using reduction12430.terms
def image12431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12431 : InImage map_14_215 image12431 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12431 : Bundle := named_bundle% "RealMapCertificates/relations/basis12431.json"
theorem reductionProof12431 : EqualModuloRelations reduction12431.relations reduction12431.input reduction12431.output := by lin_cert using reduction12431.terms
theorem substitutionProof12431 : IsMapEvaluation generatorImages reduction12431.relations [0,1456] reduction12431.output := by lin_cert using reduction12431.terms
def image12432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12432 : InImage map_14_215 image12432 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12432 : Bundle := named_bundle% "RealMapCertificates/relations/basis12432.json"
theorem reductionProof12432 : EqualModuloRelations reduction12432.relations reduction12432.input reduction12432.output := by lin_cert using reduction12432.terms
theorem substitutionProof12432 : IsMapEvaluation generatorImages reduction12432.relations [0,1455] reduction12432.output := by lin_cert using reduction12432.terms
def image12433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12433 : InImage map_14_215 image12433 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12433 : Bundle := named_bundle% "RealMapCertificates/relations/basis12433.json"
theorem reductionProof12433 : EqualModuloRelations reduction12433.relations reduction12433.input reduction12433.output := by lin_cert using reduction12433.terms
theorem substitutionProof12433 : IsMapEvaluation generatorImages reduction12433.relations [0,1454] reduction12433.output := by lin_cert using reduction12433.terms
def image12434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12434 : InImage map_14_215 image12434 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12434 : Bundle := named_bundle% "RealMapCertificates/relations/basis12434.json"
theorem reductionProof12434 : EqualModuloRelations reduction12434.relations reduction12434.input reduction12434.output := by lin_cert using reduction12434.terms
theorem substitutionProof12434 : IsMapEvaluation generatorImages reduction12434.relations [0,0,0,1414] reduction12434.output := by lin_cert using reduction12434.terms
def map_14_216 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12636 : InImage map_14_216 image12636 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12636 : Bundle := named_bundle% "RealMapCertificates/relations/basis12636.json"
theorem reductionProof12636 : EqualModuloRelations reduction12636.relations reduction12636.input reduction12636.output := by lin_cert using reduction12636.terms
theorem substitutionProof12636 : IsMapEvaluation generatorImages reduction12636.relations [1,1455] reduction12636.output := by lin_cert using reduction12636.terms
def image12637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12637 : InImage map_14_216 image12637 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12637 : Bundle := named_bundle% "RealMapCertificates/relations/basis12637.json"
theorem reductionProof12637 : EqualModuloRelations reduction12637.relations reduction12637.input reduction12637.output := by lin_cert using reduction12637.terms
theorem substitutionProof12637 : IsMapEvaluation generatorImages reduction12637.relations [1,1454] reduction12637.output := by lin_cert using reduction12637.terms
def image12638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12638 : InImage map_14_216 image12638 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12638 : Bundle := named_bundle% "RealMapCertificates/relations/basis12638.json"
theorem reductionProof12638 : EqualModuloRelations reduction12638.relations reduction12638.input reduction12638.output := by lin_cert using reduction12638.terms
theorem substitutionProof12638 : IsMapEvaluation generatorImages reduction12638.relations [0,3,1332] reduction12638.output := by lin_cert using reduction12638.terms
def image12639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12639 : InImage map_14_216 image12639 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12639 : Bundle := named_bundle% "RealMapCertificates/relations/basis12639.json"
theorem reductionProof12639 : EqualModuloRelations reduction12639.relations reduction12639.input reduction12639.output := by lin_cert using reduction12639.terms
theorem substitutionProof12639 : IsMapEvaluation generatorImages reduction12639.relations [0,0,1459] reduction12639.output := by lin_cert using reduction12639.terms
def image12640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12640 : InImage map_14_216 image12640 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12640 : Bundle := named_bundle% "RealMapCertificates/relations/basis12640.json"
theorem reductionProof12640 : EqualModuloRelations reduction12640.relations reduction12640.input reduction12640.output := by lin_cert using reduction12640.terms
theorem substitutionProof12640 : IsMapEvaluation generatorImages reduction12640.relations [0,0,0,0,1418] reduction12640.output := by lin_cert using reduction12640.terms
def image12641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12641 : InImage map_14_216 image12641 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12641 : Bundle := named_bundle% "RealMapCertificates/relations/basis12641.json"
theorem reductionProof12641 : EqualModuloRelations reduction12641.relations reduction12641.input reduction12641.output := by lin_cert using reduction12641.terms
theorem substitutionProof12641 : IsMapEvaluation generatorImages reduction12641.relations [0,0,0,0,1417] reduction12641.output := by lin_cert using reduction12641.terms
def map_14_217 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12783 : InImage map_14_217 image12783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12783 : Bundle := named_bundle% "RealMapCertificates/relations/basis12783.json"
theorem reductionProof12783 : EqualModuloRelations reduction12783.relations reduction12783.input reduction12783.output := by lin_cert using reduction12783.terms
theorem substitutionProof12783 : IsMapEvaluation generatorImages reduction12783.relations [7,1213] reduction12783.output := by lin_cert using reduction12783.terms
def image12784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12784 : InImage map_14_217 image12784 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12784 : Bundle := named_bundle% "RealMapCertificates/relations/basis12784.json"
theorem reductionProof12784 : EqualModuloRelations reduction12784.relations reduction12784.input reduction12784.output := by lin_cert using reduction12784.terms
theorem substitutionProof12784 : IsMapEvaluation generatorImages reduction12784.relations [3,1355] reduction12784.output := by lin_cert using reduction12784.terms
def image12785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12785 : InImage map_14_217 image12785 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12785 : Bundle := named_bundle% "RealMapCertificates/relations/basis12785.json"
theorem reductionProof12785 : EqualModuloRelations reduction12785.relations reduction12785.input reduction12785.output := by lin_cert using reduction12785.terms
theorem substitutionProof12785 : IsMapEvaluation generatorImages reduction12785.relations [3,3,1215] reduction12785.output := by lin_cert using reduction12785.terms
def image12786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12786 : InImage map_14_217 image12786 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12786 : Bundle := named_bundle% "RealMapCertificates/relations/basis12786.json"
theorem reductionProof12786 : EqualModuloRelations reduction12786.relations reduction12786.input reduction12786.output := by lin_cert using reduction12786.terms
theorem substitutionProof12786 : IsMapEvaluation generatorImages reduction12786.relations [1,1477] reduction12786.output := by lin_cert using reduction12786.terms
def image12787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12787 : InImage map_14_217 image12787 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12787 : Bundle := named_bundle% "RealMapCertificates/relations/basis12787.json"
theorem reductionProof12787 : EqualModuloRelations reduction12787.relations reduction12787.input reduction12787.output := by lin_cert using reduction12787.terms
theorem substitutionProof12787 : IsMapEvaluation generatorImages reduction12787.relations [0,1496] reduction12787.output := by lin_cert using reduction12787.terms
def image12788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12788 : InImage map_14_217 image12788 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12788 : Bundle := named_bundle% "RealMapCertificates/relations/basis12788.json"
theorem reductionProof12788 : EqualModuloRelations reduction12788.relations reduction12788.input reduction12788.output := by lin_cert using reduction12788.terms
theorem substitutionProof12788 : IsMapEvaluation generatorImages reduction12788.relations [0,0,7,1178] reduction12788.output := by lin_cert using reduction12788.terms
def map_14_218 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12991 : InImage map_14_218 image12991 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12991 : Bundle := named_bundle% "RealMapCertificates/relations/basis12991.json"
theorem reductionProof12991 : EqualModuloRelations reduction12991.relations reduction12991.input reduction12991.output := by lin_cert using reduction12991.terms
theorem substitutionProof12991 : IsMapEvaluation generatorImages reduction12991.relations [1526] reduction12991.output := by lin_cert using reduction12991.terms
def image12992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12992 : InImage map_14_218 image12992 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12992 : Bundle := named_bundle% "RealMapCertificates/relations/basis12992.json"
theorem reductionProof12992 : EqualModuloRelations reduction12992.relations reduction12992.input reduction12992.output := by lin_cert using reduction12992.terms
theorem substitutionProof12992 : IsMapEvaluation generatorImages reduction12992.relations [1525] reduction12992.output := by lin_cert using reduction12992.terms
def image12993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12993 : InImage map_14_218 image12993 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12993 : Bundle := named_bundle% "RealMapCertificates/relations/basis12993.json"
theorem reductionProof12993 : EqualModuloRelations reduction12993.relations reduction12993.input reduction12993.output := by lin_cert using reduction12993.terms
theorem substitutionProof12993 : IsMapEvaluation generatorImages reduction12993.relations [9,80,324] reduction12993.output := by lin_cert using reduction12993.terms
def image12994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12994 : InImage map_14_218 image12994 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12994 : Bundle := named_bundle% "RealMapCertificates/relations/basis12994.json"
theorem reductionProof12994 : EqualModuloRelations reduction12994.relations reduction12994.input reduction12994.output := by lin_cert using reduction12994.terms
theorem substitutionProof12994 : IsMapEvaluation generatorImages reduction12994.relations [3,3,1227] reduction12994.output := by lin_cert using reduction12994.terms
def image12995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12995 : InImage map_14_218 image12995 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12995 : Bundle := named_bundle% "RealMapCertificates/relations/basis12995.json"
theorem reductionProof12995 : EqualModuloRelations reduction12995.relations reduction12995.input reduction12995.output := by lin_cert using reduction12995.terms
theorem substitutionProof12995 : IsMapEvaluation generatorImages reduction12995.relations [2,1454] reduction12995.output := by lin_cert using reduction12995.terms
def image12996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12996 : InImage map_14_218 image12996 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12996 : Bundle := named_bundle% "RealMapCertificates/relations/basis12996.json"
theorem reductionProof12996 : EqualModuloRelations reduction12996.relations reduction12996.input reduction12996.output := by lin_cert using reduction12996.terms
theorem substitutionProof12996 : IsMapEvaluation generatorImages reduction12996.relations [0,1511] reduction12996.output := by lin_cert using reduction12996.terms
def image12997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12997 : InImage map_14_218 image12997 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12997 : Bundle := named_bundle% "RealMapCertificates/relations/basis12997.json"
theorem reductionProof12997 : EqualModuloRelations reduction12997.relations reduction12997.input reduction12997.output := by lin_cert using reduction12997.terms
theorem substitutionProof12997 : IsMapEvaluation generatorImages reduction12997.relations [0,0,3,1345] reduction12997.output := by lin_cert using reduction12997.terms
def image12998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12998 : InImage map_14_218 image12998 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12998 : Bundle := named_bundle% "RealMapCertificates/relations/basis12998.json"
theorem reductionProof12998 : EqualModuloRelations reduction12998.relations reduction12998.input reduction12998.output := by lin_cert using reduction12998.terms
theorem substitutionProof12998 : IsMapEvaluation generatorImages reduction12998.relations [0,0,0,0,0,0,128,324] reduction12998.output := by lin_cert using reduction12998.terms
def map_14_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13212 : InImage map_14_219 image13212 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13212 : Bundle := named_bundle% "RealMapCertificates/relations/basis13212.json"
theorem reductionProof13212 : EqualModuloRelations reduction13212.relations reduction13212.input reduction13212.output := by lin_cert using reduction13212.terms
theorem substitutionProof13212 : IsMapEvaluation generatorImages reduction13212.relations [1,144,324] reduction13212.output := by lin_cert using reduction13212.terms
def image13213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13213 : InImage map_14_219 image13213 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13213 : Bundle := named_bundle% "RealMapCertificates/relations/basis13213.json"
theorem reductionProof13213 : EqualModuloRelations reduction13213.relations reduction13213.input reduction13213.output := by lin_cert using reduction13213.terms
theorem substitutionProof13213 : IsMapEvaluation generatorImages reduction13213.relations [1,7,1215] reduction13213.output := by lin_cert using reduction13213.terms
def image13214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13214 : InImage map_14_219 image13214 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13214 : Bundle := named_bundle% "RealMapCertificates/relations/basis13214.json"
theorem reductionProof13214 : EqualModuloRelations reduction13214.relations reduction13214.input reduction13214.output := by lin_cert using reduction13214.terms
theorem substitutionProof13214 : IsMapEvaluation generatorImages reduction13214.relations [0,1527] reduction13214.output := by lin_cert using reduction13214.terms
def image13215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13215 : InImage map_14_219 image13215 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13215 : Bundle := named_bundle% "RealMapCertificates/relations/basis13215.json"
theorem reductionProof13215 : EqualModuloRelations reduction13215.relations reduction13215.input reduction13215.output := by lin_cert using reduction13215.terms
theorem substitutionProof13215 : IsMapEvaluation generatorImages reduction13215.relations [0,0,0,141,324] reduction13215.output := by lin_cert using reduction13215.terms
def map_14_220 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image13347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13347 : InImage map_14_220 image13347 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13347 : Bundle := named_bundle% "RealMapCertificates/relations/basis13347.json"
theorem reductionProof13347 : EqualModuloRelations reduction13347.relations reduction13347.input reduction13347.output := by lin_cert using reduction13347.terms
theorem substitutionProof13347 : IsMapEvaluation generatorImages reduction13347.relations [1563] reduction13347.output := by lin_cert using reduction13347.terms
def image13348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13348 : InImage map_14_220 image13348 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13348 : Bundle := named_bundle% "RealMapCertificates/relations/basis13348.json"
theorem reductionProof13348 : EqualModuloRelations reduction13348.relations reduction13348.input reduction13348.output := by lin_cert using reduction13348.terms
theorem substitutionProof13348 : IsMapEvaluation generatorImages reduction13348.relations [150,324] reduction13348.output := by lin_cert using reduction13348.terms
def image13349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13349 : InImage map_14_220 image13349 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13349 : Bundle := named_bundle% "RealMapCertificates/relations/basis13349.json"
theorem reductionProof13349 : EqualModuloRelations reduction13349.relations reduction13349.input reduction13349.output := by lin_cert using reduction13349.terms
theorem substitutionProof13349 : IsMapEvaluation generatorImages reduction13349.relations [7,1271] reduction13349.output := by lin_cert using reduction13349.terms
def image13350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13350 : InImage map_14_220 image13350 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13350 : Bundle := named_bundle% "RealMapCertificates/relations/basis13350.json"
theorem reductionProof13350 : EqualModuloRelations reduction13350.relations reduction13350.input reduction13350.output := by lin_cert using reduction13350.terms
theorem substitutionProof13350 : IsMapEvaluation generatorImages reduction13350.relations [3,1411] reduction13350.output := by lin_cert using reduction13350.terms
def image13351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13351 : InImage map_14_220 image13351 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13351 : Bundle := named_bundle% "RealMapCertificates/relations/basis13351.json"
theorem reductionProof13351 : EqualModuloRelations reduction13351.relations reduction13351.input reduction13351.output := by lin_cert using reduction13351.terms
theorem substitutionProof13351 : IsMapEvaluation generatorImages reduction13351.relations [2,1496] reduction13351.output := by lin_cert using reduction13351.terms
def image13352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13352 : InImage map_14_220 image13352 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13352 : Bundle := named_bundle% "RealMapCertificates/relations/basis13352.json"
theorem reductionProof13352 : EqualModuloRelations reduction13352.relations reduction13352.input reduction13352.output := by lin_cert using reduction13352.terms
theorem substitutionProof13352 : IsMapEvaluation generatorImages reduction13352.relations [1,1527] reduction13352.output := by lin_cert using reduction13352.terms
def image13353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13353 : InImage map_14_220 image13353 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13353 : Bundle := named_bundle% "RealMapCertificates/relations/basis13353.json"
theorem reductionProof13353 : EqualModuloRelations reduction13353.relations reduction13353.input reduction13353.output := by lin_cert using reduction13353.terms
theorem substitutionProof13353 : IsMapEvaluation generatorImages reduction13353.relations [0,0,7,1232] reduction13353.output := by lin_cert using reduction13353.terms
def map_14_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13557 : InImage map_14_221 image13557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13557 : Bundle := named_bundle% "RealMapCertificates/relations/basis13557.json"
theorem reductionProof13557 : EqualModuloRelations reduction13557.relations reduction13557.input reduction13557.output := by lin_cert using reduction13557.terms
theorem substitutionProof13557 : IsMapEvaluation generatorImages reduction13557.relations [13,80,324] reduction13557.output := by lin_cert using reduction13557.terms
def image13558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13558 : InImage map_14_221 image13558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13558 : Bundle := named_bundle% "RealMapCertificates/relations/basis13558.json"
theorem reductionProof13558 : EqualModuloRelations reduction13558.relations reduction13558.input reduction13558.output := by lin_cert using reduction13558.terms
theorem substitutionProof13558 : IsMapEvaluation generatorImages reduction13558.relations [0,1564] reduction13558.output := by lin_cert using reduction13558.terms
def image13559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13559 : InImage map_14_221 image13559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13559 : Bundle := named_bundle% "RealMapCertificates/relations/basis13559.json"
theorem reductionProof13559 : EqualModuloRelations reduction13559.relations reduction13559.input reduction13559.output := by lin_cert using reduction13559.terms
theorem substitutionProof13559 : IsMapEvaluation generatorImages reduction13559.relations [0,7,1273] reduction13559.output := by lin_cert using reduction13559.terms
def map_14_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13780 : InImage map_14_222 image13780 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13780 : Bundle := named_bundle% "RealMapCertificates/relations/basis13780.json"
theorem reductionProof13780 : EqualModuloRelations reduction13780.relations reduction13780.input reduction13780.output := by lin_cert using reduction13780.terms
theorem substitutionProof13780 : IsMapEvaluation generatorImages reduction13780.relations [1601] reduction13780.output := by lin_cert using reduction13780.terms
def image13781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13781 : InImage map_14_222 image13781 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13781 : Bundle := named_bundle% "RealMapCertificates/relations/basis13781.json"
theorem reductionProof13781 : EqualModuloRelations reduction13781.relations reduction13781.input reduction13781.output := by lin_cert using reduction13781.terms
theorem substitutionProof13781 : IsMapEvaluation generatorImages reduction13781.relations [1,7,1273] reduction13781.output := by lin_cert using reduction13781.terms
def image13782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13782 : InImage map_14_222 image13782 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13782 : Bundle := named_bundle% "RealMapCertificates/relations/basis13782.json"
theorem reductionProof13782 : EqualModuloRelations reduction13782.relations reduction13782.input reduction13782.output := by lin_cert using reduction13782.terms
theorem substitutionProof13782 : IsMapEvaluation generatorImages reduction13782.relations [0,155,324] reduction13782.output := by lin_cert using reduction13782.terms
def map_14_223 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13921 : InImage map_14_223 image13921 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13921 : Bundle := named_bundle% "RealMapCertificates/relations/basis13921.json"
theorem reductionProof13921 : EqualModuloRelations reduction13921.relations reduction13921.input reduction13921.output := by lin_cert using reduction13921.terms
theorem substitutionProof13921 : IsMapEvaluation generatorImages reduction13921.relations [3,3,1332] reduction13921.output := by lin_cert using reduction13921.terms
def image13922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13922 : InImage map_14_223 image13922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13922 : Bundle := named_bundle% "RealMapCertificates/relations/basis13922.json"
theorem reductionProof13922 : EqualModuloRelations reduction13922.relations reduction13922.input reduction13922.output := by lin_cert using reduction13922.terms
theorem substitutionProof13922 : IsMapEvaluation generatorImages reduction13922.relations [1,4,1380] reduction13922.output := by lin_cert using reduction13922.terms
def image13923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13923 : InImage map_14_223 image13923 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13923 : Bundle := named_bundle% "RealMapCertificates/relations/basis13923.json"
theorem reductionProof13923 : EqualModuloRelations reduction13923.relations reduction13923.input reduction13923.output := by lin_cert using reduction13923.terms
theorem substitutionProof13923 : IsMapEvaluation generatorImages reduction13923.relations [0,1602] reduction13923.output := by lin_cert using reduction13923.terms
def image13924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13924 : InImage map_14_223 image13924 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13924 : Bundle := named_bundle% "RealMapCertificates/relations/basis13924.json"
theorem reductionProof13924 : EqualModuloRelations reduction13924.relations reduction13924.input reduction13924.output := by lin_cert using reduction13924.terms
theorem substitutionProof13924 : IsMapEvaluation generatorImages reduction13924.relations [0,0,0,0,0,1531] reduction13924.output := by lin_cert using reduction13924.terms
end RealMapCertificates
