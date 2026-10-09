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
  | 9 => [[8]]
  | 13 => [[9]]
  | 43 => []
  | 67 => []
  | 76 => []
  | 105 => []
  | 133 => []
  | 151 => []
  | 169 => []
  | 170 => []
  | 177 => []
  | 178 => []
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
  | 234 => []
  | 250 => []
  | 324 => []
  | 398 => []
  | 400 => []
  | 1118 => []
  | 1273 => []
  | 1342 => []
  | 1343 => []
  | 1345 => []
  | 1346 => []
  | 1356 => []
  | 1357 => []
  | 1414 => []
  | 1417 => []
  | 1418 => []
  | 1477 => []
  | 1564 => []
  | 1602 => []
  | 1603 => []
  | 1676 => []
  | 1732 => []
  | 1798 => []
  | 1799 => []
  | 1800 => []
  | 1801 => []
  | 1802 => []
  | 1803 => []
  | 1805 => []
  | 1825 => []
  | 1847 => []
  | 1848 => []
  | 1852 => []
  | 1882 => []
  | 1883 => []
  | 1884 => []
  | 1886 => []
  | 1897 => []
  | 1898 => []
  | 1921 => []
  | 1922 => []
  | 1923 => []
  | 1954 => []
  | 1955 => []
  | 1982 => []
  | 1983 => []
  | 1984 => []
  | 1985 => []
  | 2027 => []
  | 2028 => []
  | 2033 => []
  | 2080 => []
  | 2081 => []
  | 2082 => []
  | 2084 => []
  | 2117 => []
  | 2149 => []
  | 2150 => []
  | 2151 => []
  | 2152 => []
  | 2153 => []
  | 2155 => []
  | 2234 => []
  | 2235 => []
  | _ => []
def map_14_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14126 : InImage map_14_224 image14126 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14126 : Bundle := named_bundle% "RealMapCertificates/relations/basis14126.json"
theorem reductionProof14126 : EqualModuloRelations reduction14126.relations reduction14126.input reduction14126.output := by lin_cert using reduction14126.terms
theorem substitutionProof14126 : IsMapEvaluation generatorImages reduction14126.relations [2,1564] reduction14126.output := by lin_cert using reduction14126.terms
def image14127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14127 : InImage map_14_224 image14127 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14127 : Bundle := named_bundle% "RealMapCertificates/relations/basis14127.json"
theorem reductionProof14127 : EqualModuloRelations reduction14127.relations reduction14127.input reduction14127.output := by lin_cert using reduction14127.terms
theorem substitutionProof14127 : IsMapEvaluation generatorImages reduction14127.relations [2,151,324] reduction14127.output := by lin_cert using reduction14127.terms
def image14128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14128 : InImage map_14_224 image14128 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14128 : Bundle := named_bundle% "RealMapCertificates/relations/basis14128.json"
theorem reductionProof14128 : EqualModuloRelations reduction14128.relations reduction14128.input reduction14128.output := by lin_cert using reduction14128.terms
theorem substitutionProof14128 : IsMapEvaluation generatorImages reduction14128.relations [2,7,1273] reduction14128.output := by lin_cert using reduction14128.terms
def image14129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14129 : InImage map_14_224 image14129 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14129 : Bundle := named_bundle% "RealMapCertificates/relations/basis14129.json"
theorem reductionProof14129 : EqualModuloRelations reduction14129.relations reduction14129.input reduction14129.output := by lin_cert using reduction14129.terms
theorem substitutionProof14129 : IsMapEvaluation generatorImages reduction14129.relations [1,1602] reduction14129.output := by lin_cert using reduction14129.terms
def image14130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14130 : InImage map_14_224 image14130 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14130 : Bundle := named_bundle% "RealMapCertificates/relations/basis14130.json"
theorem reductionProof14130 : EqualModuloRelations reduction14130.relations reduction14130.input reduction14130.output := by lin_cert using reduction14130.terms
theorem substitutionProof14130 : IsMapEvaluation generatorImages reduction14130.relations [0,0,1603] reduction14130.output := by lin_cert using reduction14130.terms
def map_14_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14333 : InImage map_14_225 image14333 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14333 : Bundle := named_bundle% "RealMapCertificates/relations/basis14333.json"
theorem reductionProof14333 : EqualModuloRelations reduction14333.relations reduction14333.input reduction14333.output := by lin_cert using reduction14333.terms
theorem substitutionProof14333 : IsMapEvaluation generatorImages reduction14333.relations [0,7,1342] reduction14333.output := by lin_cert using reduction14333.terms
def image14334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14334 : InImage map_14_225 image14334 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14334 : Bundle := named_bundle% "RealMapCertificates/relations/basis14334.json"
theorem reductionProof14334 : EqualModuloRelations reduction14334.relations reduction14334.input reduction14334.output := by lin_cert using reduction14334.terms
theorem substitutionProof14334 : IsMapEvaluation generatorImages reduction14334.relations [0,3,3,1345] reduction14334.output := by lin_cert using reduction14334.terms
def map_14_226 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14481 : InImage map_14_226 image14481 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14481 : Bundle := named_bundle% "RealMapCertificates/relations/basis14481.json"
theorem reductionProof14481 : EqualModuloRelations reduction14481.relations reduction14481.input reduction14481.output := by lin_cert using reduction14481.terms
theorem substitutionProof14481 : IsMapEvaluation generatorImages reduction14481.relations [169,324] reduction14481.output := by lin_cert using reduction14481.terms
def image14482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14482 : InImage map_14_226 image14482 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14482 : Bundle := named_bundle% "RealMapCertificates/relations/basis14482.json"
theorem reductionProof14482 : EqualModuloRelations reduction14482.relations reduction14482.input reduction14482.output := by lin_cert using reduction14482.terms
theorem substitutionProof14482 : IsMapEvaluation generatorImages reduction14482.relations [1,7,1343] reduction14482.output := by lin_cert using reduction14482.terms
def image14483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14483 : InImage map_14_226 image14483 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14483 : Bundle := named_bundle% "RealMapCertificates/relations/basis14483.json"
theorem reductionProof14483 : EqualModuloRelations reduction14483.relations reduction14483.input reduction14483.output := by lin_cert using reduction14483.terms
theorem substitutionProof14483 : IsMapEvaluation generatorImages reduction14483.relations [1,7,1342] reduction14483.output := by lin_cert using reduction14483.terms
def image14484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14484 : InImage map_14_226 image14484 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14484 : Bundle := named_bundle% "RealMapCertificates/relations/basis14484.json"
theorem reductionProof14484 : EqualModuloRelations reduction14484.relations reduction14484.input reduction14484.output := by lin_cert using reduction14484.terms
theorem substitutionProof14484 : IsMapEvaluation generatorImages reduction14484.relations [0,7,1356] reduction14484.output := by lin_cert using reduction14484.terms
def image14485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14485 : InImage map_14_226 image14485 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14485 : Bundle := named_bundle% "RealMapCertificates/relations/basis14485.json"
theorem reductionProof14485 : EqualModuloRelations reduction14485.relations reduction14485.input reduction14485.output := by lin_cert using reduction14485.terms
theorem substitutionProof14485 : IsMapEvaluation generatorImages reduction14485.relations [0,0,7,1346] reduction14485.output := by lin_cert using reduction14485.terms
def image14486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14486 : InImage map_14_226 image14486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14486 : Bundle := named_bundle% "RealMapCertificates/relations/basis14486.json"
theorem reductionProof14486 : EqualModuloRelations reduction14486.relations reduction14486.input reduction14486.output := by lin_cert using reduction14486.terms
theorem substitutionProof14486 : IsMapEvaluation generatorImages reduction14486.relations [0,0,7,1345] reduction14486.output := by lin_cert using reduction14486.terms
def map_14_227 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14699 : InImage map_14_227 image14699 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14699 : Bundle := named_bundle% "RealMapCertificates/relations/basis14699.json"
theorem reductionProof14699 : EqualModuloRelations reduction14699.relations reduction14699.input reduction14699.output := by lin_cert using reduction14699.terms
theorem substitutionProof14699 : IsMapEvaluation generatorImages reduction14699.relations [0,0,7,1357] reduction14699.output := by lin_cert using reduction14699.terms
def map_14_228 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14916 : InImage map_14_228 image14916 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14916 : Bundle := named_bundle% "RealMapCertificates/relations/basis14916.json"
theorem reductionProof14916 : EqualModuloRelations reduction14916.relations reduction14916.input reduction14916.output := by lin_cert using reduction14916.terms
theorem substitutionProof14916 : IsMapEvaluation generatorImages reduction14916.relations [13,105,324] reduction14916.output := by lin_cert using reduction14916.terms
def image14917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14917 : InImage map_14_228 image14917 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14917 : Bundle := named_bundle% "RealMapCertificates/relations/basis14917.json"
theorem reductionProof14917 : EqualModuloRelations reduction14917.relations reduction14917.input reduction14917.output := by lin_cert using reduction14917.terms
theorem substitutionProof14917 : IsMapEvaluation generatorImages reduction14917.relations [7,7,1118] reduction14917.output := by lin_cert using reduction14917.terms
def image14918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14918 : InImage map_14_228 image14918 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14918 : Bundle := named_bundle% "RealMapCertificates/relations/basis14918.json"
theorem reductionProof14918 : EqualModuloRelations reduction14918.relations reduction14918.input reduction14918.output := by lin_cert using reduction14918.terms
theorem substitutionProof14918 : IsMapEvaluation generatorImages reduction14918.relations [1,170,324] reduction14918.output := by lin_cert using reduction14918.terms
def map_14_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15071 : InImage map_14_229 image15071 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15071 : Bundle := named_bundle% "RealMapCertificates/relations/basis15071.json"
theorem reductionProof15071 : EqualModuloRelations reduction15071.relations reduction15071.input reduction15071.output := by lin_cert using reduction15071.terms
theorem substitutionProof15071 : IsMapEvaluation generatorImages reduction15071.relations [1732] reduction15071.output := by lin_cert using reduction15071.terms
def image15072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15072 : InImage map_14_229 image15072 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15072 : Bundle := named_bundle% "RealMapCertificates/relations/basis15072.json"
theorem reductionProof15072 : EqualModuloRelations reduction15072.relations reduction15072.input reduction15072.output := by lin_cert using reduction15072.terms
theorem substitutionProof15072 : IsMapEvaluation generatorImages reduction15072.relations [0,177,324] reduction15072.output := by lin_cert using reduction15072.terms
def map_14_230 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15301 : InImage map_14_230 image15301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15301 : Bundle := named_bundle% "RealMapCertificates/relations/basis15301.json"
theorem reductionProof15301 : EqualModuloRelations reduction15301.relations reduction15301.input reduction15301.output := by lin_cert using reduction15301.terms
theorem substitutionProof15301 : IsMapEvaluation generatorImages reduction15301.relations [0,0,178,324] reduction15301.output := by lin_cert using reduction15301.terms
def image15302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15302 : InImage map_14_230 image15302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15302 : Bundle := named_bundle% "RealMapCertificates/relations/basis15302.json"
theorem reductionProof15302 : EqualModuloRelations reduction15302.relations reduction15302.input reduction15302.output := by lin_cert using reduction15302.terms
theorem substitutionProof15302 : IsMapEvaluation generatorImages reduction15302.relations [0,0,7,1414] reduction15302.output := by lin_cert using reduction15302.terms
def image15303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15303 : InImage map_14_230 image15303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15303 : Bundle := named_bundle% "RealMapCertificates/relations/basis15303.json"
theorem reductionProof15303 : EqualModuloRelations reduction15303.relations reduction15303.input reduction15303.output := by lin_cert using reduction15303.terms
theorem substitutionProof15303 : IsMapEvaluation generatorImages reduction15303.relations [0,0,0,0,1676] reduction15303.output := by lin_cert using reduction15303.terms
def map_14_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15546 : InImage map_14_231 image15546 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15546 : Bundle := named_bundle% "RealMapCertificates/relations/basis15546.json"
theorem reductionProof15546 : EqualModuloRelations reduction15546.relations reduction15546.input reduction15546.output := by lin_cert using reduction15546.terms
theorem substitutionProof15546 : IsMapEvaluation generatorImages reduction15546.relations [7,1477] reduction15546.output := by lin_cert using reduction15546.terms
def image15547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15547 : InImage map_14_231 image15547 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15547 : Bundle := named_bundle% "RealMapCertificates/relations/basis15547.json"
theorem reductionProof15547 : EqualModuloRelations reduction15547.relations reduction15547.input reduction15547.output := by lin_cert using reduction15547.terms
theorem substitutionProof15547 : IsMapEvaluation generatorImages reduction15547.relations [0,187,324] reduction15547.output := by lin_cert using reduction15547.terms
def image15548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15548 : InImage map_14_231 image15548 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15548 : Bundle := named_bundle% "RealMapCertificates/relations/basis15548.json"
theorem reductionProof15548 : EqualModuloRelations reduction15548.relations reduction15548.input reduction15548.output := by lin_cert using reduction15548.terms
theorem substitutionProof15548 : IsMapEvaluation generatorImages reduction15548.relations [0,0,0,7,1418] reduction15548.output := by lin_cert using reduction15548.terms
def image15549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15549 : InImage map_14_231 image15549 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15549 : Bundle := named_bundle% "RealMapCertificates/relations/basis15549.json"
theorem reductionProof15549 : EqualModuloRelations reduction15549.relations reduction15549.input reduction15549.output := by lin_cert using reduction15549.terms
theorem substitutionProof15549 : IsMapEvaluation generatorImages reduction15549.relations [0,0,0,7,1417] reduction15549.output := by lin_cert using reduction15549.terms
def map_14_232 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15714 : InImage map_14_232 image15714 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15714 : Bundle := named_bundle% "RealMapCertificates/relations/basis15714.json"
theorem reductionProof15714 : EqualModuloRelations reduction15714.relations reduction15714.input reduction15714.output := by lin_cert using reduction15714.terms
theorem substitutionProof15714 : IsMapEvaluation generatorImages reduction15714.relations [1800] reduction15714.output := by lin_cert using reduction15714.terms
def image15715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15715 : InImage map_14_232 image15715 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15715 : Bundle := named_bundle% "RealMapCertificates/relations/basis15715.json"
theorem reductionProof15715 : EqualModuloRelations reduction15715.relations reduction15715.input reduction15715.output := by lin_cert using reduction15715.terms
theorem substitutionProof15715 : IsMapEvaluation generatorImages reduction15715.relations [1799] reduction15715.output := by lin_cert using reduction15715.terms
def image15716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15716 : InImage map_14_232 image15716 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15716 : Bundle := named_bundle% "RealMapCertificates/relations/basis15716.json"
theorem reductionProof15716 : EqualModuloRelations reduction15716.relations reduction15716.input reduction15716.output := by lin_cert using reduction15716.terms
theorem substitutionProof15716 : IsMapEvaluation generatorImages reduction15716.relations [1798] reduction15716.output := by lin_cert using reduction15716.terms
def image15717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15717 : InImage map_14_232 image15717 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15717 : Bundle := named_bundle% "RealMapCertificates/relations/basis15717.json"
theorem reductionProof15717 : EqualModuloRelations reduction15717.relations reduction15717.input reduction15717.output := by lin_cert using reduction15717.terms
theorem substitutionProof15717 : IsMapEvaluation generatorImages reduction15717.relations [1,187,324] reduction15717.output := by lin_cert using reduction15717.terms
def image15718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15718 : InImage map_14_232 image15718 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15718 : Bundle := named_bundle% "RealMapCertificates/relations/basis15718.json"
theorem reductionProof15718 : EqualModuloRelations reduction15718.relations reduction15718.input reduction15718.output := by lin_cert using reduction15718.terms
theorem substitutionProof15718 : IsMapEvaluation generatorImages reduction15718.relations [0,0,188,324] reduction15718.output := by lin_cert using reduction15718.terms
def map_14_233 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15954 : InImage map_14_233 image15954 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15954 : Bundle := named_bundle% "RealMapCertificates/relations/basis15954.json"
theorem reductionProof15954 : EqualModuloRelations reduction15954.relations reduction15954.input reduction15954.output := by lin_cert using reduction15954.terms
theorem substitutionProof15954 : IsMapEvaluation generatorImages reduction15954.relations [0,1803] reduction15954.output := by lin_cert using reduction15954.terms
def image15955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15955 : InImage map_14_233 image15955 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15955 : Bundle := named_bundle% "RealMapCertificates/relations/basis15955.json"
theorem reductionProof15955 : EqualModuloRelations reduction15955.relations reduction15955.input reduction15955.output := by lin_cert using reduction15955.terms
theorem substitutionProof15955 : IsMapEvaluation generatorImages reduction15955.relations [0,1801] reduction15955.output := by lin_cert using reduction15955.terms
def image15956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15956 : InImage map_14_233 image15956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15956 : Bundle := named_bundle% "RealMapCertificates/relations/basis15956.json"
theorem reductionProof15956 : EqualModuloRelations reduction15956.relations reduction15956.input reduction15956.output := by lin_cert using reduction15956.terms
theorem substitutionProof15956 : IsMapEvaluation generatorImages reduction15956.relations [0,195,324] reduction15956.output := by lin_cert using reduction15956.terms
def map_14_234 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16202 : InImage map_14_234 image16202 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16202 : Bundle := named_bundle% "RealMapCertificates/relations/basis16202.json"
theorem reductionProof16202 : EqualModuloRelations reduction16202.relations reduction16202.input reduction16202.output := by lin_cert using reduction16202.terms
theorem substitutionProof16202 : IsMapEvaluation generatorImages reduction16202.relations [1848] reduction16202.output := by lin_cert using reduction16202.terms
def image16203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16203 : InImage map_14_234 image16203 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16203 : Bundle := named_bundle% "RealMapCertificates/relations/basis16203.json"
theorem reductionProof16203 : EqualModuloRelations reduction16203.relations reduction16203.input reduction16203.output := by lin_cert using reduction16203.terms
theorem substitutionProof16203 : IsMapEvaluation generatorImages reduction16203.relations [1847] reduction16203.output := by lin_cert using reduction16203.terms
def image16204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16204 : InImage map_14_234 image16204 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16204 : Bundle := named_bundle% "RealMapCertificates/relations/basis16204.json"
theorem reductionProof16204 : EqualModuloRelations reduction16204.relations reduction16204.input reduction16204.output := by lin_cert using reduction16204.terms
theorem substitutionProof16204 : IsMapEvaluation generatorImages reduction16204.relations [9,133,324] reduction16204.output := by lin_cert using reduction16204.terms
def image16205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16205 : InImage map_14_234 image16205 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16205 : Bundle := named_bundle% "RealMapCertificates/relations/basis16205.json"
theorem reductionProof16205 : EqualModuloRelations reduction16205.relations reduction16205.input reduction16205.output := by lin_cert using reduction16205.terms
theorem substitutionProof16205 : IsMapEvaluation generatorImages reduction16205.relations [1,1802] reduction16205.output := by lin_cert using reduction16205.terms
def image16206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16206 : InImage map_14_234 image16206 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16206 : Bundle := named_bundle% "RealMapCertificates/relations/basis16206.json"
theorem reductionProof16206 : EqualModuloRelations reduction16206.relations reduction16206.input reduction16206.output := by lin_cert using reduction16206.terms
theorem substitutionProof16206 : IsMapEvaluation generatorImages reduction16206.relations [1,1801] reduction16206.output := by lin_cert using reduction16206.terms
def image16207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16207 : InImage map_14_234 image16207 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16207 : Bundle := named_bundle% "RealMapCertificates/relations/basis16207.json"
theorem reductionProof16207 : EqualModuloRelations reduction16207.relations reduction16207.input reduction16207.output := by lin_cert using reduction16207.terms
theorem substitutionProof16207 : IsMapEvaluation generatorImages reduction16207.relations [1,195,324] reduction16207.output := by lin_cert using reduction16207.terms
def image16208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16208 : InImage map_14_234 image16208 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16208 : Bundle := named_bundle% "RealMapCertificates/relations/basis16208.json"
theorem reductionProof16208 : EqualModuloRelations reduction16208.relations reduction16208.input reduction16208.output := by lin_cert using reduction16208.terms
theorem substitutionProof16208 : IsMapEvaluation generatorImages reduction16208.relations [0,201,324] reduction16208.output := by lin_cert using reduction16208.terms
def map_14_235 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16392 : InImage map_14_235 image16392 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16392 : Bundle := named_bundle% "RealMapCertificates/relations/basis16392.json"
theorem reductionProof16392 : EqualModuloRelations reduction16392.relations reduction16392.input reduction16392.output := by lin_cert using reduction16392.terms
theorem substitutionProof16392 : IsMapEvaluation generatorImages reduction16392.relations [1884] reduction16392.output := by lin_cert using reduction16392.terms
def image16393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16393 : InImage map_14_235 image16393 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16393 : Bundle := named_bundle% "RealMapCertificates/relations/basis16393.json"
theorem reductionProof16393 : EqualModuloRelations reduction16393.relations reduction16393.input reduction16393.output := by lin_cert using reduction16393.terms
theorem substitutionProof16393 : IsMapEvaluation generatorImages reduction16393.relations [1883] reduction16393.output := by lin_cert using reduction16393.terms
def image16394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16394 : InImage map_14_235 image16394 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16394 : Bundle := named_bundle% "RealMapCertificates/relations/basis16394.json"
theorem reductionProof16394 : EqualModuloRelations reduction16394.relations reduction16394.input reduction16394.output := by lin_cert using reduction16394.terms
theorem substitutionProof16394 : IsMapEvaluation generatorImages reduction16394.relations [1882] reduction16394.output := by lin_cert using reduction16394.terms
def image16395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16395 : InImage map_14_235 image16395 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16395 : Bundle := named_bundle% "RealMapCertificates/relations/basis16395.json"
theorem reductionProof16395 : EqualModuloRelations reduction16395.relations reduction16395.input reduction16395.output := by lin_cert using reduction16395.terms
theorem substitutionProof16395 : IsMapEvaluation generatorImages reduction16395.relations [0,2,188,324] reduction16395.output := by lin_cert using reduction16395.terms
def image16396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16396 : InImage map_14_235 image16396 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16396 : Bundle := named_bundle% "RealMapCertificates/relations/basis16396.json"
theorem reductionProof16396 : EqualModuloRelations reduction16396.relations reduction16396.input reduction16396.output := by lin_cert using reduction16396.terms
theorem substitutionProof16396 : IsMapEvaluation generatorImages reduction16396.relations [0,0,1825] reduction16396.output := by lin_cert using reduction16396.terms
def map_14_236 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16621 : InImage map_14_236 image16621 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16621 : Bundle := named_bundle% "RealMapCertificates/relations/basis16621.json"
theorem reductionProof16621 : EqualModuloRelations reduction16621.relations reduction16621.input reduction16621.output := by lin_cert using reduction16621.terms
theorem substitutionProof16621 : IsMapEvaluation generatorImages reduction16621.relations [190,398] reduction16621.output := by lin_cert using reduction16621.terms
def image16622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16622 : InImage map_14_236 image16622 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16622 : Bundle := named_bundle% "RealMapCertificates/relations/basis16622.json"
theorem reductionProof16622 : EqualModuloRelations reduction16622.relations reduction16622.input reduction16622.output := by lin_cert using reduction16622.terms
theorem substitutionProof16622 : IsMapEvaluation generatorImages reduction16622.relations [2,1801] reduction16622.output := by lin_cert using reduction16622.terms
def image16623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16623 : InImage map_14_236 image16623 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16623 : Bundle := named_bundle% "RealMapCertificates/relations/basis16623.json"
theorem reductionProof16623 : EqualModuloRelations reduction16623.relations reduction16623.input reduction16623.output := by lin_cert using reduction16623.terms
theorem substitutionProof16623 : IsMapEvaluation generatorImages reduction16623.relations [2,195,324] reduction16623.output := by lin_cert using reduction16623.terms
def map_14_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16868 : InImage map_14_237 image16868 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16868 : Bundle := named_bundle% "RealMapCertificates/relations/basis16868.json"
theorem reductionProof16868 : EqualModuloRelations reduction16868.relations reduction16868.input reduction16868.output := by lin_cert using reduction16868.terms
theorem substitutionProof16868 : IsMapEvaluation generatorImages reduction16868.relations [1921] reduction16868.output := by lin_cert using reduction16868.terms
def image16869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16869 : InImage map_14_237 image16869 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16869 : Bundle := named_bundle% "RealMapCertificates/relations/basis16869.json"
theorem reductionProof16869 : EqualModuloRelations reduction16869.relations reduction16869.input reduction16869.output := by lin_cert using reduction16869.terms
theorem substitutionProof16869 : IsMapEvaluation generatorImages reduction16869.relations [13,133,324] reduction16869.output := by lin_cert using reduction16869.terms
def image16870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16870 : InImage map_14_237 image16870 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16870 : Bundle := named_bundle% "RealMapCertificates/relations/basis16870.json"
theorem reductionProof16870 : EqualModuloRelations reduction16870.relations reduction16870.input reduction16870.output := by lin_cert using reduction16870.terms
theorem substitutionProof16870 : IsMapEvaluation generatorImages reduction16870.relations [1,1886] reduction16870.output := by lin_cert using reduction16870.terms
def image16871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16871 : InImage map_14_237 image16871 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16871 : Bundle := named_bundle% "RealMapCertificates/relations/basis16871.json"
theorem reductionProof16871 : EqualModuloRelations reduction16871.relations reduction16871.input reduction16871.output := by lin_cert using reduction16871.terms
theorem substitutionProof16871 : IsMapEvaluation generatorImages reduction16871.relations [0,1897] reduction16871.output := by lin_cert using reduction16871.terms
def image16872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16872 : InImage map_14_237 image16872 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16872 : Bundle := named_bundle% "RealMapCertificates/relations/basis16872.json"
theorem reductionProof16872 : EqualModuloRelations reduction16872.relations reduction16872.input reduction16872.output := by lin_cert using reduction16872.terms
theorem substitutionProof16872 : IsMapEvaluation generatorImages reduction16872.relations [0,212,324] reduction16872.output := by lin_cert using reduction16872.terms
def map_14_238 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17061 : InImage map_14_238 image17061 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17061 : Bundle := named_bundle% "RealMapCertificates/relations/basis17061.json"
theorem reductionProof17061 : EqualModuloRelations reduction17061.relations reduction17061.input reduction17061.output := by lin_cert using reduction17061.terms
theorem substitutionProof17061 : IsMapEvaluation generatorImages reduction17061.relations [197,398] reduction17061.output := by lin_cert using reduction17061.terms
def image17062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17062 : InImage map_14_238 image17062 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17062 : Bundle := named_bundle% "RealMapCertificates/relations/basis17062.json"
theorem reductionProof17062 : EqualModuloRelations reduction17062.relations reduction17062.input reduction17062.output := by lin_cert using reduction17062.terms
theorem substitutionProof17062 : IsMapEvaluation generatorImages reduction17062.relations [1,1897] reduction17062.output := by lin_cert using reduction17062.terms
def image17063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17063 : InImage map_14_238 image17063 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17063 : Bundle := named_bundle% "RealMapCertificates/relations/basis17063.json"
theorem reductionProof17063 : EqualModuloRelations reduction17063.relations reduction17063.input reduction17063.output := by lin_cert using reduction17063.terms
theorem substitutionProof17063 : IsMapEvaluation generatorImages reduction17063.relations [1,212,324] reduction17063.output := by lin_cert using reduction17063.terms
def image17064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17064 : InImage map_14_238 image17064 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17064 : Bundle := named_bundle% "RealMapCertificates/relations/basis17064.json"
theorem reductionProof17064 : EqualModuloRelations reduction17064.relations reduction17064.input reduction17064.output := by lin_cert using reduction17064.terms
theorem substitutionProof17064 : IsMapEvaluation generatorImages reduction17064.relations [0,1922] reduction17064.output := by lin_cert using reduction17064.terms
def image17065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17065 : InImage map_14_238 image17065 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17065 : Bundle := named_bundle% "RealMapCertificates/relations/basis17065.json"
theorem reductionProof17065 : EqualModuloRelations reduction17065.relations reduction17065.input reduction17065.output := by lin_cert using reduction17065.terms
theorem substitutionProof17065 : IsMapEvaluation generatorImages reduction17065.relations [0,2,1825] reduction17065.output := by lin_cert using reduction17065.terms
def image17066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17066 : InImage map_14_238 image17066 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17066 : Bundle := named_bundle% "RealMapCertificates/relations/basis17066.json"
theorem reductionProof17066 : EqualModuloRelations reduction17066.relations reduction17066.input reduction17066.output := by lin_cert using reduction17066.terms
theorem substitutionProof17066 : IsMapEvaluation generatorImages reduction17066.relations [0,0,1898] reduction17066.output := by lin_cert using reduction17066.terms
def image17067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17067 : InImage map_14_238 image17067 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17067 : Bundle := named_bundle% "RealMapCertificates/relations/basis17067.json"
theorem reductionProof17067 : EqualModuloRelations reduction17067.relations reduction17067.input reduction17067.output := by lin_cert using reduction17067.terms
theorem substitutionProof17067 : IsMapEvaluation generatorImages reduction17067.relations [0,0,0,209,324] reduction17067.output := by lin_cert using reduction17067.terms
def map_14_239 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17317 : InImage map_14_239 image17317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17317 : Bundle := named_bundle% "RealMapCertificates/relations/basis17317.json"
theorem reductionProof17317 : EqualModuloRelations reduction17317.relations reduction17317.input reduction17317.output := by lin_cert using reduction17317.terms
theorem substitutionProof17317 : IsMapEvaluation generatorImages reduction17317.relations [1983] reduction17317.output := by lin_cert using reduction17317.terms
def image17318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17318 : InImage map_14_239 image17318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17318 : Bundle := named_bundle% "RealMapCertificates/relations/basis17318.json"
theorem reductionProof17318 : EqualModuloRelations reduction17318.relations reduction17318.input reduction17318.output := by lin_cert using reduction17318.terms
theorem substitutionProof17318 : IsMapEvaluation generatorImages reduction17318.relations [1982] reduction17318.output := by lin_cert using reduction17318.terms
def image17319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17319 : InImage map_14_239 image17319 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17319 : Bundle := named_bundle% "RealMapCertificates/relations/basis17319.json"
theorem reductionProof17319 : EqualModuloRelations reduction17319.relations reduction17319.input reduction17319.output := by lin_cert using reduction17319.terms
theorem substitutionProof17319 : IsMapEvaluation generatorImages reduction17319.relations [0,3,188,324] reduction17319.output := by lin_cert using reduction17319.terms
def image17320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17320 : InImage map_14_239 image17320 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17320 : Bundle := named_bundle% "RealMapCertificates/relations/basis17320.json"
theorem reductionProof17320 : EqualModuloRelations reduction17320.relations reduction17320.input reduction17320.output := by lin_cert using reduction17320.terms
theorem substitutionProof17320 : IsMapEvaluation generatorImages reduction17320.relations [0,0,1923] reduction17320.output := by lin_cert using reduction17320.terms
def map_14_240 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image17608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17608 : InImage map_14_240 image17608 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction17608 : Bundle := named_bundle% "RealMapCertificates/relations/basis17608.json"
theorem reductionProof17608 : EqualModuloRelations reduction17608.relations reduction17608.input reduction17608.output := by lin_cert using reduction17608.terms
theorem substitutionProof17608 : IsMapEvaluation generatorImages reduction17608.relations [2028] reduction17608.output := by lin_cert using reduction17608.terms
def image17609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17609 : InImage map_14_240 image17609 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction17609 : Bundle := named_bundle% "RealMapCertificates/relations/basis17609.json"
theorem reductionProof17609 : EqualModuloRelations reduction17609.relations reduction17609.input reduction17609.output := by lin_cert using reduction17609.terms
theorem substitutionProof17609 : IsMapEvaluation generatorImages reduction17609.relations [2027] reduction17609.output := by lin_cert using reduction17609.terms
def image17610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17610 : InImage map_14_240 image17610 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction17610 : Bundle := named_bundle% "RealMapCertificates/relations/basis17610.json"
theorem reductionProof17610 : EqualModuloRelations reduction17610.relations reduction17610.input reduction17610.output := by lin_cert using reduction17610.terms
theorem substitutionProof17610 : IsMapEvaluation generatorImages reduction17610.relations [3,1801] reduction17610.output := by lin_cert using reduction17610.terms
def image17611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17611 : InImage map_14_240 image17611 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction17611 : Bundle := named_bundle% "RealMapCertificates/relations/basis17611.json"
theorem reductionProof17611 : EqualModuloRelations reduction17611.relations reduction17611.input reduction17611.output := by lin_cert using reduction17611.terms
theorem substitutionProof17611 : IsMapEvaluation generatorImages reduction17611.relations [2,212,324] reduction17611.output := by lin_cert using reduction17611.terms
def image17612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17612 : InImage map_14_240 image17612 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction17612 : Bundle := named_bundle% "RealMapCertificates/relations/basis17612.json"
theorem reductionProof17612 : EqualModuloRelations reduction17612.relations reduction17612.input reduction17612.output := by lin_cert using reduction17612.terms
theorem substitutionProof17612 : IsMapEvaluation generatorImages reduction17612.relations [1,7,1603] reduction17612.output := by lin_cert using reduction17612.terms
def image17613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17613 : InImage map_14_240 image17613 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction17613 : Bundle := named_bundle% "RealMapCertificates/relations/basis17613.json"
theorem reductionProof17613 : EqualModuloRelations reduction17613.relations reduction17613.input reduction17613.output := by lin_cert using reduction17613.terms
theorem substitutionProof17613 : IsMapEvaluation generatorImages reduction17613.relations [1,1,1898] reduction17613.output := by lin_cert using reduction17613.terms
def image17614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17614 : InImage map_14_240 image17614 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction17614 : Bundle := named_bundle% "RealMapCertificates/relations/basis17614.json"
theorem reductionProof17614 : EqualModuloRelations reduction17614.relations reduction17614.input reduction17614.output := by lin_cert using reduction17614.terms
theorem substitutionProof17614 : IsMapEvaluation generatorImages reduction17614.relations [0,1985] reduction17614.output := by lin_cert using reduction17614.terms
def image17615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17615 : InImage map_14_240 image17615 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction17615 : Bundle := named_bundle% "RealMapCertificates/relations/basis17615.json"
theorem reductionProof17615 : EqualModuloRelations reduction17615.relations reduction17615.input reduction17615.output := by lin_cert using reduction17615.terms
theorem substitutionProof17615 : IsMapEvaluation generatorImages reduction17615.relations [0,1984] reduction17615.output := by lin_cert using reduction17615.terms
def image17616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17616 : InImage map_14_240 image17616 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction17616 : Bundle := named_bundle% "RealMapCertificates/relations/basis17616.json"
theorem reductionProof17616 : EqualModuloRelations reduction17616.relations reduction17616.input reduction17616.output := by lin_cert using reduction17616.terms
theorem substitutionProof17616 : IsMapEvaluation generatorImages reduction17616.relations [0,0,1954] reduction17616.output := by lin_cert using reduction17616.terms
def image17617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17617 : InImage map_14_240 image17617 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction17617 : Bundle := named_bundle% "RealMapCertificates/relations/basis17617.json"
theorem reductionProof17617 : EqualModuloRelations reduction17617.relations reduction17617.input reduction17617.output := by lin_cert using reduction17617.terms
theorem substitutionProof17617 : IsMapEvaluation generatorImages reduction17617.relations [0,0,3,189,324] reduction17617.output := by lin_cert using reduction17617.terms
def map_14_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17837 : InImage map_14_241 image17837 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17837 : Bundle := named_bundle% "RealMapCertificates/relations/basis17837.json"
theorem reductionProof17837 : EqualModuloRelations reduction17837.relations reduction17837.input reduction17837.output := by lin_cert using reduction17837.terms
theorem substitutionProof17837 : IsMapEvaluation generatorImages reduction17837.relations [234,324] reduction17837.output := by lin_cert using reduction17837.terms
def image17838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17838 : InImage map_14_241 image17838 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17838 : Bundle := named_bundle% "RealMapCertificates/relations/basis17838.json"
theorem reductionProof17838 : EqualModuloRelations reduction17838.relations reduction17838.input reduction17838.output := by lin_cert using reduction17838.terms
theorem substitutionProof17838 : IsMapEvaluation generatorImages reduction17838.relations [1,1985] reduction17838.output := by lin_cert using reduction17838.terms
def image17839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17839 : InImage map_14_241 image17839 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17839 : Bundle := named_bundle% "RealMapCertificates/relations/basis17839.json"
theorem reductionProof17839 : EqualModuloRelations reduction17839.relations reduction17839.input reduction17839.output := by lin_cert using reduction17839.terms
theorem substitutionProof17839 : IsMapEvaluation generatorImages reduction17839.relations [0,3,1805] reduction17839.output := by lin_cert using reduction17839.terms
def image17840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17840 : InImage map_14_241 image17840 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17840 : Bundle := named_bundle% "RealMapCertificates/relations/basis17840.json"
theorem reductionProof17840 : EqualModuloRelations reduction17840.relations reduction17840.input reduction17840.output := by lin_cert using reduction17840.terms
theorem substitutionProof17840 : IsMapEvaluation generatorImages reduction17840.relations [0,0,0,1955] reduction17840.output := by lin_cert using reduction17840.terms
def image17841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17841 : InImage map_14_241 image17841 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17841 : Bundle := named_bundle% "RealMapCertificates/relations/basis17841.json"
theorem reductionProof17841 : EqualModuloRelations reduction17841.relations reduction17841.input reduction17841.output := by lin_cert using reduction17841.terms
theorem substitutionProof17841 : IsMapEvaluation generatorImages reduction17841.relations [0,0,0,221,324] reduction17841.output := by lin_cert using reduction17841.terms
def map_14_242 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18096 : InImage map_14_242 image18096 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18096 : Bundle := named_bundle% "RealMapCertificates/relations/basis18096.json"
theorem reductionProof18096 : EqualModuloRelations reduction18096.relations reduction18096.input reduction18096.output := by lin_cert using reduction18096.terms
theorem substitutionProof18096 : IsMapEvaluation generatorImages reduction18096.relations [2081] reduction18096.output := by lin_cert using reduction18096.terms
def image18097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18097 : InImage map_14_242 image18097 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18097 : Bundle := named_bundle% "RealMapCertificates/relations/basis18097.json"
theorem reductionProof18097 : EqualModuloRelations reduction18097.relations reduction18097.input reduction18097.output := by lin_cert using reduction18097.terms
theorem substitutionProof18097 : IsMapEvaluation generatorImages reduction18097.relations [2080] reduction18097.output := by lin_cert using reduction18097.terms
def image18098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18098 : InImage map_14_242 image18098 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18098 : Bundle := named_bundle% "RealMapCertificates/relations/basis18098.json"
theorem reductionProof18098 : EqualModuloRelations reduction18098.relations reduction18098.input reduction18098.output := by lin_cert using reduction18098.terms
theorem substitutionProof18098 : IsMapEvaluation generatorImages reduction18098.relations [0,3,1825] reduction18098.output := by lin_cert using reduction18098.terms
def image18099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18099 : InImage map_14_242 image18099 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18099 : Bundle := named_bundle% "RealMapCertificates/relations/basis18099.json"
theorem reductionProof18099 : EqualModuloRelations reduction18099.relations reduction18099.input reduction18099.output := by lin_cert using reduction18099.terms
theorem substitutionProof18099 : IsMapEvaluation generatorImages reduction18099.relations [0,0,43,67,324] reduction18099.output := by lin_cert using reduction18099.terms
def map_14_243 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18374 : InImage map_14_243 image18374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18374 : Bundle := named_bundle% "RealMapCertificates/relations/basis18374.json"
theorem reductionProof18374 : EqualModuloRelations reduction18374.relations reduction18374.input reduction18374.output := by lin_cert using reduction18374.terms
theorem substitutionProof18374 : IsMapEvaluation generatorImages reduction18374.relations [13,13,76,324] reduction18374.output := by lin_cert using reduction18374.terms
def image18375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18375 : InImage map_14_243 image18375 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18375 : Bundle := named_bundle% "RealMapCertificates/relations/basis18375.json"
theorem reductionProof18375 : EqualModuloRelations reduction18375.relations reduction18375.input reduction18375.output := by lin_cert using reduction18375.terms
theorem substitutionProof18375 : IsMapEvaluation generatorImages reduction18375.relations [0,2084] reduction18375.output := by lin_cert using reduction18375.terms
def image18376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18376 : InImage map_14_243 image18376 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18376 : Bundle := named_bundle% "RealMapCertificates/relations/basis18376.json"
theorem reductionProof18376 : EqualModuloRelations reduction18376.relations reduction18376.input reduction18376.output := by lin_cert using reduction18376.terms
theorem substitutionProof18376 : IsMapEvaluation generatorImages reduction18376.relations [0,2082] reduction18376.output := by lin_cert using reduction18376.terms
def image18377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18377 : InImage map_14_243 image18377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18377 : Bundle := named_bundle% "RealMapCertificates/relations/basis18377.json"
theorem reductionProof18377 : EqualModuloRelations reduction18377.relations reduction18377.input reduction18377.output := by lin_cert using reduction18377.terms
theorem substitutionProof18377 : IsMapEvaluation generatorImages reduction18377.relations [0,3,1852] reduction18377.output := by lin_cert using reduction18377.terms
def map_14_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18576 : InImage map_14_244 image18576 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18576 : Bundle := named_bundle% "RealMapCertificates/relations/basis18576.json"
theorem reductionProof18576 : EqualModuloRelations reduction18576.relations reduction18576.input reduction18576.output := by lin_cert using reduction18576.terms
theorem substitutionProof18576 : IsMapEvaluation generatorImages reduction18576.relations [2151] reduction18576.output := by lin_cert using reduction18576.terms
def image18577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18577 : InImage map_14_244 image18577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18577 : Bundle := named_bundle% "RealMapCertificates/relations/basis18577.json"
theorem reductionProof18577 : EqualModuloRelations reduction18577.relations reduction18577.input reduction18577.output := by lin_cert using reduction18577.terms
theorem substitutionProof18577 : IsMapEvaluation generatorImages reduction18577.relations [2150] reduction18577.output := by lin_cert using reduction18577.terms
def image18578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18578 : InImage map_14_244 image18578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18578 : Bundle := named_bundle% "RealMapCertificates/relations/basis18578.json"
theorem reductionProof18578 : EqualModuloRelations reduction18578.relations reduction18578.input reduction18578.output := by lin_cert using reduction18578.terms
theorem substitutionProof18578 : IsMapEvaluation generatorImages reduction18578.relations [2149] reduction18578.output := by lin_cert using reduction18578.terms
def image18579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18579 : InImage map_14_244 image18579 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18579 : Bundle := named_bundle% "RealMapCertificates/relations/basis18579.json"
theorem reductionProof18579 : EqualModuloRelations reduction18579.relations reduction18579.input reduction18579.output := by lin_cert using reduction18579.terms
theorem substitutionProof18579 : IsMapEvaluation generatorImages reduction18579.relations [3,1897] reduction18579.output := by lin_cert using reduction18579.terms
def map_14_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18845 : InImage map_14_245 image18845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18845 : Bundle := named_bundle% "RealMapCertificates/relations/basis18845.json"
theorem reductionProof18845 : EqualModuloRelations reduction18845.relations reduction18845.input reduction18845.output := by lin_cert using reduction18845.terms
theorem substitutionProof18845 : IsMapEvaluation generatorImages reduction18845.relations [0,2153] reduction18845.output := by lin_cert using reduction18845.terms
def image18846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18846 : InImage map_14_245 image18846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18846 : Bundle := named_bundle% "RealMapCertificates/relations/basis18846.json"
theorem reductionProof18846 : EqualModuloRelations reduction18846.relations reduction18846.input reduction18846.output := by lin_cert using reduction18846.terms
theorem substitutionProof18846 : IsMapEvaluation generatorImages reduction18846.relations [0,2152] reduction18846.output := by lin_cert using reduction18846.terms
def image18847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18847 : InImage map_14_245 image18847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18847 : Bundle := named_bundle% "RealMapCertificates/relations/basis18847.json"
theorem reductionProof18847 : EqualModuloRelations reduction18847.relations reduction18847.input reduction18847.output := by lin_cert using reduction18847.terms
theorem substitutionProof18847 : IsMapEvaluation generatorImages reduction18847.relations [0,250,324] reduction18847.output := by lin_cert using reduction18847.terms
def image18848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18848 : InImage map_14_245 image18848 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18848 : Bundle := named_bundle% "RealMapCertificates/relations/basis18848.json"
theorem reductionProof18848 : EqualModuloRelations reduction18848.relations reduction18848.input reduction18848.output := by lin_cert using reduction18848.terms
theorem substitutionProof18848 : IsMapEvaluation generatorImages reduction18848.relations [0,3,1898] reduction18848.output := by lin_cert using reduction18848.terms
def image18849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18849 : InImage map_14_245 image18849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18849 : Bundle := named_bundle% "RealMapCertificates/relations/basis18849.json"
theorem reductionProof18849 : EqualModuloRelations reduction18849.relations reduction18849.input reduction18849.output := by lin_cert using reduction18849.terms
theorem substitutionProof18849 : IsMapEvaluation generatorImages reduction18849.relations [0,0,0,0,0,2033] reduction18849.output := by lin_cert using reduction18849.terms
def map_14_246 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19157 : InImage map_14_246 image19157 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19157 : Bundle := named_bundle% "RealMapCertificates/relations/basis19157.json"
theorem reductionProof19157 : EqualModuloRelations reduction19157.relations reduction19157.input reduction19157.output := by lin_cert using reduction19157.terms
theorem substitutionProof19157 : IsMapEvaluation generatorImages reduction19157.relations [2235] reduction19157.output := by lin_cert using reduction19157.terms
def image19158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19158 : InImage map_14_246 image19158 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19158 : Bundle := named_bundle% "RealMapCertificates/relations/basis19158.json"
theorem reductionProof19158 : EqualModuloRelations reduction19158.relations reduction19158.input reduction19158.output := by lin_cert using reduction19158.terms
theorem substitutionProof19158 : IsMapEvaluation generatorImages reduction19158.relations [2234] reduction19158.output := by lin_cert using reduction19158.terms
def image19159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19159 : InImage map_14_246 image19159 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19159 : Bundle := named_bundle% "RealMapCertificates/relations/basis19159.json"
theorem reductionProof19159 : EqualModuloRelations reduction19159.relations reduction19159.input reduction19159.output := by lin_cert using reduction19159.terms
theorem substitutionProof19159 : IsMapEvaluation generatorImages reduction19159.relations [3,197,400] reduction19159.output := by lin_cert using reduction19159.terms
def image19160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19160 : InImage map_14_246 image19160 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19160 : Bundle := named_bundle% "RealMapCertificates/relations/basis19160.json"
theorem reductionProof19160 : EqualModuloRelations reduction19160.relations reduction19160.input reduction19160.output := by lin_cert using reduction19160.terms
theorem substitutionProof19160 : IsMapEvaluation generatorImages reduction19160.relations [1,3,1898] reduction19160.output := by lin_cert using reduction19160.terms
def image19161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19161 : InImage map_14_246 image19161 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19161 : Bundle := named_bundle% "RealMapCertificates/relations/basis19161.json"
theorem reductionProof19161 : EqualModuloRelations reduction19161.relations reduction19161.input reduction19161.output := by lin_cert using reduction19161.terms
theorem substitutionProof19161 : IsMapEvaluation generatorImages reduction19161.relations [0,0,2155] reduction19161.output := by lin_cert using reduction19161.terms
def image19162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19162 : InImage map_14_246 image19162 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19162 : Bundle := named_bundle% "RealMapCertificates/relations/basis19162.json"
theorem reductionProof19162 : EqualModuloRelations reduction19162.relations reduction19162.input reduction19162.output := by lin_cert using reduction19162.terms
theorem substitutionProof19162 : IsMapEvaluation generatorImages reduction19162.relations [0,0,0,2117] reduction19162.output := by lin_cert using reduction19162.terms
end RealMapCertificates
