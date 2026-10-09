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
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 30 => [[2,4,4,4]]
  | 32 => [[7,9]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 41 => [[3,4,4,4]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 90 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 126 => []
  | 127 => []
  | 213 => []
  | 268 => []
  | 280 => []
  | 287 => []
  | 294 => []
  | 307 => []
  | 314 => []
  | 324 => []
  | 335 => []
  | 1057 => []
  | 1801 => []
  | 1804 => []
  | 1825 => []
  | 1852 => []
  | 1954 => []
  | 1984 => []
  | 1985 => []
  | 1986 => []
  | 2152 => []
  | 2153 => []
  | 2236 => []
  | 2272 => []
  | 2371 => []
  | 2434 => []
  | 2482 => []
  | 2483 => []
  | 2485 => []
  | 2527 => []
  | 2528 => []
  | 2529 => []
  | 2530 => []
  | 2575 => []
  | 2621 => []
  | 2622 => []
  | 2717 => []
  | 2718 => []
  | 2719 => []
  | 2720 => []
  | 2721 => []
  | 2722 => []
  | 2723 => []
  | 2724 => []
  | 2727 => []
  | 2732 => []
  | 2779 => []
  | 2780 => []
  | 2781 => []
  | 2783 => []
  | 2784 => []
  | 2845 => []
  | 2846 => []
  | 2898 => []
  | 2899 => []
  | 2900 => []
  | 2901 => []
  | _ => []
def map_14_247 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19378 : InImage map_14_247 image19378 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19378 : Bundle := named_bundle% "RealMapCertificates/relations/basis19378.json"
theorem reductionProof19378 : EqualModuloRelations reduction19378.relations reduction19378.input reduction19378.output := by lin_cert using reduction19378.terms
theorem substitutionProof19378 : IsMapEvaluation generatorImages reduction19378.relations [3,1985] reduction19378.output := by lin_cert using reduction19378.terms
def image19379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19379 : InImage map_14_247 image19379 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19379 : Bundle := named_bundle% "RealMapCertificates/relations/basis19379.json"
theorem reductionProof19379 : EqualModuloRelations reduction19379.relations reduction19379.input reduction19379.output := by lin_cert using reduction19379.terms
theorem substitutionProof19379 : IsMapEvaluation generatorImages reduction19379.relations [3,1984] reduction19379.output := by lin_cert using reduction19379.terms
def image19380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19380 : InImage map_14_247 image19380 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19380 : Bundle := named_bundle% "RealMapCertificates/relations/basis19380.json"
theorem reductionProof19380 : EqualModuloRelations reduction19380.relations reduction19380.input reduction19380.output := by lin_cert using reduction19380.terms
theorem substitutionProof19380 : IsMapEvaluation generatorImages reduction19380.relations [0,3,1954] reduction19380.output := by lin_cert using reduction19380.terms
def map_14_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19653 : InImage map_14_248 image19653 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19653 : Bundle := named_bundle% "RealMapCertificates/relations/basis19653.json"
theorem reductionProof19653 : EqualModuloRelations reduction19653.relations reduction19653.input reduction19653.output := by lin_cert using reduction19653.terms
theorem substitutionProof19653 : IsMapEvaluation generatorImages reduction19653.relations [268,324] reduction19653.output := by lin_cert using reduction19653.terms
def image19654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19654 : InImage map_14_248 image19654 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19654 : Bundle := named_bundle% "RealMapCertificates/relations/basis19654.json"
theorem reductionProof19654 : EqualModuloRelations reduction19654.relations reduction19654.input reduction19654.output := by lin_cert using reduction19654.terms
theorem substitutionProof19654 : IsMapEvaluation generatorImages reduction19654.relations [7,1801] reduction19654.output := by lin_cert using reduction19654.terms
def image19655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19655 : InImage map_14_248 image19655 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19655 : Bundle := named_bundle% "RealMapCertificates/relations/basis19655.json"
theorem reductionProof19655 : EqualModuloRelations reduction19655.relations reduction19655.input reduction19655.output := by lin_cert using reduction19655.terms
theorem substitutionProof19655 : IsMapEvaluation generatorImages reduction19655.relations [3,3,1804] reduction19655.output := by lin_cert using reduction19655.terms
def image19656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19656 : InImage map_14_248 image19656 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19656 : Bundle := named_bundle% "RealMapCertificates/relations/basis19656.json"
theorem reductionProof19656 : EqualModuloRelations reduction19656.relations reduction19656.input reduction19656.output := by lin_cert using reduction19656.terms
theorem substitutionProof19656 : IsMapEvaluation generatorImages reduction19656.relations [2,2153] reduction19656.output := by lin_cert using reduction19656.terms
def image19657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19657 : InImage map_14_248 image19657 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19657 : Bundle := named_bundle% "RealMapCertificates/relations/basis19657.json"
theorem reductionProof19657 : EqualModuloRelations reduction19657.relations reduction19657.input reduction19657.output := by lin_cert using reduction19657.terms
theorem substitutionProof19657 : IsMapEvaluation generatorImages reduction19657.relations [2,2152] reduction19657.output := by lin_cert using reduction19657.terms
def image19658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19658 : InImage map_14_248 image19658 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19658 : Bundle := named_bundle% "RealMapCertificates/relations/basis19658.json"
theorem reductionProof19658 : EqualModuloRelations reduction19658.relations reduction19658.input reduction19658.output := by lin_cert using reduction19658.terms
theorem substitutionProof19658 : IsMapEvaluation generatorImages reduction19658.relations [0,3,1986] reduction19658.output := by lin_cert using reduction19658.terms
def map_14_249 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19959 : InImage map_14_249 image19959 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19959 : Bundle := named_bundle% "RealMapCertificates/relations/basis19959.json"
theorem reductionProof19959 : EqualModuloRelations reduction19959.relations reduction19959.input reduction19959.output := by lin_cert using reduction19959.terms
theorem substitutionProof19959 : IsMapEvaluation generatorImages reduction19959.relations [3,3,1825] reduction19959.output := by lin_cert using reduction19959.terms
def image19960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19960 : InImage map_14_249 image19960 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19960 : Bundle := named_bundle% "RealMapCertificates/relations/basis19960.json"
theorem reductionProof19960 : EqualModuloRelations reduction19960.relations reduction19960.input reduction19960.output := by lin_cert using reduction19960.terms
theorem substitutionProof19960 : IsMapEvaluation generatorImages reduction19960.relations [1,2272] reduction19960.output := by lin_cert using reduction19960.terms
def map_14_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20184 : InImage map_14_250 image20184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20184 : Bundle := named_bundle% "RealMapCertificates/relations/basis20184.json"
theorem reductionProof20184 : EqualModuloRelations reduction20184.relations reduction20184.input reduction20184.output := by lin_cert using reduction20184.terms
theorem substitutionProof20184 : IsMapEvaluation generatorImages reduction20184.relations [2371] reduction20184.output := by lin_cert using reduction20184.terms
def image20185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20185 : InImage map_14_250 image20185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20185 : Bundle := named_bundle% "RealMapCertificates/relations/basis20185.json"
theorem reductionProof20185 : EqualModuloRelations reduction20185.relations reduction20185.input reduction20185.output := by lin_cert using reduction20185.terms
theorem substitutionProof20185 : IsMapEvaluation generatorImages reduction20185.relations [280,324] reduction20185.output := by lin_cert using reduction20185.terms
def image20186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20186 : InImage map_14_250 image20186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20186 : Bundle := named_bundle% "RealMapCertificates/relations/basis20186.json"
theorem reductionProof20186 : EqualModuloRelations reduction20186.relations reduction20186.input reduction20186.output := by lin_cert using reduction20186.terms
theorem substitutionProof20186 : IsMapEvaluation generatorImages reduction20186.relations [3,3,1852] reduction20186.output := by lin_cert using reduction20186.terms
def image20187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20187 : InImage map_14_250 image20187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20187 : Bundle := named_bundle% "RealMapCertificates/relations/basis20187.json"
theorem reductionProof20187 : EqualModuloRelations reduction20187.relations reduction20187.input reduction20187.output := by lin_cert using reduction20187.terms
theorem substitutionProof20187 : IsMapEvaluation generatorImages reduction20187.relations [2,2236] reduction20187.output := by lin_cert using reduction20187.terms
def image20188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20188 : InImage map_14_250 image20188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20188 : Bundle := named_bundle% "RealMapCertificates/relations/basis20188.json"
theorem reductionProof20188 : EqualModuloRelations reduction20188.relations reduction20188.input reduction20188.output := by lin_cert using reduction20188.terms
theorem substitutionProof20188 : IsMapEvaluation generatorImages reduction20188.relations [0,7,1825] reduction20188.output := by lin_cert using reduction20188.terms
def map_14_251 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20461 : InImage map_14_251 image20461 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20461 : Bundle := named_bundle% "RealMapCertificates/relations/basis20461.json"
theorem reductionProof20461 : EqualModuloRelations reduction20461.relations reduction20461.input reduction20461.output := by lin_cert using reduction20461.terms
theorem substitutionProof20461 : IsMapEvaluation generatorImages reduction20461.relations [287,324] reduction20461.output := by lin_cert using reduction20461.terms
def map_14_252 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image20786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20786 : InImage map_14_252 image20786 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20786 : Bundle := named_bundle% "RealMapCertificates/relations/basis20786.json"
theorem reductionProof20786 : EqualModuloRelations reduction20786.relations reduction20786.input reduction20786.output := by lin_cert using reduction20786.terms
theorem substitutionProof20786 : IsMapEvaluation generatorImages reduction20786.relations [2434] reduction20786.output := by lin_cert using reduction20786.terms
def map_14_253 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21012 : InImage map_14_253 image21012 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21012 : Bundle := named_bundle% "RealMapCertificates/relations/basis21012.json"
theorem reductionProof21012 : EqualModuloRelations reduction21012.relations reduction21012.input reduction21012.output := by lin_cert using reduction21012.terms
theorem substitutionProof21012 : IsMapEvaluation generatorImages reduction21012.relations [2483] reduction21012.output := by lin_cert using reduction21012.terms
def image21013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21013 : InImage map_14_253 image21013 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21013 : Bundle := named_bundle% "RealMapCertificates/relations/basis21013.json"
theorem reductionProof21013 : EqualModuloRelations reduction21013.relations reduction21013.input reduction21013.output := by lin_cert using reduction21013.terms
theorem substitutionProof21013 : IsMapEvaluation generatorImages reduction21013.relations [2482] reduction21013.output := by lin_cert using reduction21013.terms
def image21014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21014 : InImage map_14_253 image21014 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21014 : Bundle := named_bundle% "RealMapCertificates/relations/basis21014.json"
theorem reductionProof21014 : EqualModuloRelations reduction21014.relations reduction21014.input reduction21014.output := by lin_cert using reduction21014.terms
theorem substitutionProof21014 : IsMapEvaluation generatorImages reduction21014.relations [294,324] reduction21014.output := by lin_cert using reduction21014.terms
def image21015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21015 : InImage map_14_253 image21015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21015 : Bundle := named_bundle% "RealMapCertificates/relations/basis21015.json"
theorem reductionProof21015 : EqualModuloRelations reduction21015.relations reduction21015.input reduction21015.output := by lin_cert using reduction21015.terms
theorem substitutionProof21015 : IsMapEvaluation generatorImages reduction21015.relations [2,7,1825] reduction21015.output := by lin_cert using reduction21015.terms
def map_14_254 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21330 : InImage map_14_254 image21330 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21330 : Bundle := named_bundle% "RealMapCertificates/relations/basis21330.json"
theorem reductionProof21330 : EqualModuloRelations reduction21330.relations reduction21330.input reduction21330.output := by lin_cert using reduction21330.terms
theorem substitutionProof21330 : IsMapEvaluation generatorImages reduction21330.relations [2529] reduction21330.output := by lin_cert using reduction21330.terms
def image21331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21331 : InImage map_14_254 image21331 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21331 : Bundle := named_bundle% "RealMapCertificates/relations/basis21331.json"
theorem reductionProof21331 : EqualModuloRelations reduction21331.relations reduction21331.input reduction21331.output := by lin_cert using reduction21331.terms
theorem substitutionProof21331 : IsMapEvaluation generatorImages reduction21331.relations [2528] reduction21331.output := by lin_cert using reduction21331.terms
def image21332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21332 : InImage map_14_254 image21332 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21332 : Bundle := named_bundle% "RealMapCertificates/relations/basis21332.json"
theorem reductionProof21332 : EqualModuloRelations reduction21332.relations reduction21332.input reduction21332.output := by lin_cert using reduction21332.terms
theorem substitutionProof21332 : IsMapEvaluation generatorImages reduction21332.relations [2527] reduction21332.output := by lin_cert using reduction21332.terms
def image21333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21333 : InImage map_14_254 image21333 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21333 : Bundle := named_bundle% "RealMapCertificates/relations/basis21333.json"
theorem reductionProof21333 : EqualModuloRelations reduction21333.relations reduction21333.input reduction21333.output := by lin_cert using reduction21333.terms
theorem substitutionProof21333 : IsMapEvaluation generatorImages reduction21333.relations [307,324] reduction21333.output := by lin_cert using reduction21333.terms
def map_14_255 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image21666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21666 : InImage map_14_255 image21666 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21666 : Bundle := named_bundle% "RealMapCertificates/relations/basis21666.json"
theorem reductionProof21666 : EqualModuloRelations reduction21666.relations reduction21666.input reduction21666.output := by lin_cert using reduction21666.terms
theorem substitutionProof21666 : IsMapEvaluation generatorImages reduction21666.relations [2575] reduction21666.output := by lin_cert using reduction21666.terms
def map_14_256 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21948 : InImage map_14_256 image21948 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21948 : Bundle := named_bundle% "RealMapCertificates/relations/basis21948.json"
theorem reductionProof21948 : EqualModuloRelations reduction21948.relations reduction21948.input reduction21948.output := by lin_cert using reduction21948.terms
theorem substitutionProof21948 : IsMapEvaluation generatorImages reduction21948.relations [2621] reduction21948.output := by lin_cert using reduction21948.terms
def image21949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21949 : InImage map_14_256 image21949 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21949 : Bundle := named_bundle% "RealMapCertificates/relations/basis21949.json"
theorem reductionProof21949 : EqualModuloRelations reduction21949.relations reduction21949.input reduction21949.output := by lin_cert using reduction21949.terms
theorem substitutionProof21949 : IsMapEvaluation generatorImages reduction21949.relations [69,1057] reduction21949.output := by lin_cert using reduction21949.terms
def image21950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21950 : InImage map_14_256 image21950 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21950 : Bundle := named_bundle% "RealMapCertificates/relations/basis21950.json"
theorem reductionProof21950 : EqualModuloRelations reduction21950.relations reduction21950.input reduction21950.output := by lin_cert using reduction21950.terms
theorem substitutionProof21950 : IsMapEvaluation generatorImages reduction21950.relations [67,68,324] reduction21950.output := by lin_cert using reduction21950.terms
def image21951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21951 : InImage map_14_256 image21951 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21951 : Bundle := named_bundle% "RealMapCertificates/relations/basis21951.json"
theorem reductionProof21951 : EqualModuloRelations reduction21951.relations reduction21951.input reduction21951.output := by lin_cert using reduction21951.terms
theorem substitutionProof21951 : IsMapEvaluation generatorImages reduction21951.relations [1,2530] reduction21951.output := by lin_cert using reduction21951.terms
def map_14_257 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22284 : InImage map_14_257 image22284 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22284 : Bundle := named_bundle% "RealMapCertificates/relations/basis22284.json"
theorem reductionProof22284 : EqualModuloRelations reduction22284.relations reduction22284.input reduction22284.output := by lin_cert using reduction22284.terms
theorem substitutionProof22284 : IsMapEvaluation generatorImages reduction22284.relations [1,1,2485] reduction22284.output := by lin_cert using reduction22284.terms
def image22285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22285 : InImage map_14_257 image22285 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22285 : Bundle := named_bundle% "RealMapCertificates/relations/basis22285.json"
theorem reductionProof22285 : EqualModuloRelations reduction22285.relations reduction22285.input reduction22285.output := by lin_cert using reduction22285.terms
theorem substitutionProof22285 : IsMapEvaluation generatorImages reduction22285.relations [0,2622] reduction22285.output := by lin_cert using reduction22285.terms
def map_14_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22644 : InImage map_14_258 image22644 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22644 : Bundle := named_bundle% "RealMapCertificates/relations/basis22644.json"
theorem reductionProof22644 : EqualModuloRelations reduction22644.relations reduction22644.input reduction22644.output := by lin_cert using reduction22644.terms
theorem substitutionProof22644 : IsMapEvaluation generatorImages reduction22644.relations [2723] reduction22644.output := by lin_cert using reduction22644.terms
def image22645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22645 : InImage map_14_258 image22645 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22645 : Bundle := named_bundle% "RealMapCertificates/relations/basis22645.json"
theorem reductionProof22645 : EqualModuloRelations reduction22645.relations reduction22645.input reduction22645.output := by lin_cert using reduction22645.terms
theorem substitutionProof22645 : IsMapEvaluation generatorImages reduction22645.relations [2722] reduction22645.output := by lin_cert using reduction22645.terms
def image22646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22646 : InImage map_14_258 image22646 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22646 : Bundle := named_bundle% "RealMapCertificates/relations/basis22646.json"
theorem reductionProof22646 : EqualModuloRelations reduction22646.relations reduction22646.input reduction22646.output := by lin_cert using reduction22646.terms
theorem substitutionProof22646 : IsMapEvaluation generatorImages reduction22646.relations [2721] reduction22646.output := by lin_cert using reduction22646.terms
def image22647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22647 : InImage map_14_258 image22647 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22647 : Bundle := named_bundle% "RealMapCertificates/relations/basis22647.json"
theorem reductionProof22647 : EqualModuloRelations reduction22647.relations reduction22647.input reduction22647.output := by lin_cert using reduction22647.terms
theorem substitutionProof22647 : IsMapEvaluation generatorImages reduction22647.relations [2720] reduction22647.output := by lin_cert using reduction22647.terms
def image22648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22648 : InImage map_14_258 image22648 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22648 : Bundle := named_bundle% "RealMapCertificates/relations/basis22648.json"
theorem reductionProof22648 : EqualModuloRelations reduction22648.relations reduction22648.input reduction22648.output := by lin_cert using reduction22648.terms
theorem substitutionProof22648 : IsMapEvaluation generatorImages reduction22648.relations [2719] reduction22648.output := by lin_cert using reduction22648.terms
def image22649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22649 : InImage map_14_258 image22649 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22649 : Bundle := named_bundle% "RealMapCertificates/relations/basis22649.json"
theorem reductionProof22649 : EqualModuloRelations reduction22649.relations reduction22649.input reduction22649.output := by lin_cert using reduction22649.terms
theorem substitutionProof22649 : IsMapEvaluation generatorImages reduction22649.relations [2718] reduction22649.output := by lin_cert using reduction22649.terms
def image22650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22650 : InImage map_14_258 image22650 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22650 : Bundle := named_bundle% "RealMapCertificates/relations/basis22650.json"
theorem reductionProof22650 : EqualModuloRelations reduction22650.relations reduction22650.input reduction22650.output := by lin_cert using reduction22650.terms
theorem substitutionProof22650 : IsMapEvaluation generatorImages reduction22650.relations [2717] reduction22650.output := by lin_cert using reduction22650.terms
def image22651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22651 : InImage map_14_258 image22651 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22651 : Bundle := named_bundle% "RealMapCertificates/relations/basis22651.json"
theorem reductionProof22651 : EqualModuloRelations reduction22651.relations reduction22651.input reduction22651.output := by lin_cert using reduction22651.terms
theorem substitutionProof22651 : IsMapEvaluation generatorImages reduction22651.relations [1,2622] reduction22651.output := by lin_cert using reduction22651.terms
def map_14_259 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22964 : InImage map_14_259 image22964 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22964 : Bundle := named_bundle% "RealMapCertificates/relations/basis22964.json"
theorem reductionProof22964 : EqualModuloRelations reduction22964.relations reduction22964.input reduction22964.output := by lin_cert using reduction22964.terms
theorem substitutionProof22964 : IsMapEvaluation generatorImages reduction22964.relations [2781] reduction22964.output := by lin_cert using reduction22964.terms
def image22965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22965 : InImage map_14_259 image22965 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22965 : Bundle := named_bundle% "RealMapCertificates/relations/basis22965.json"
theorem reductionProof22965 : EqualModuloRelations reduction22965.relations reduction22965.input reduction22965.output := by lin_cert using reduction22965.terms
theorem substitutionProof22965 : IsMapEvaluation generatorImages reduction22965.relations [2780] reduction22965.output := by lin_cert using reduction22965.terms
def image22966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22966 : InImage map_14_259 image22966 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22966 : Bundle := named_bundle% "RealMapCertificates/relations/basis22966.json"
theorem reductionProof22966 : EqualModuloRelations reduction22966.relations reduction22966.input reduction22966.output := by lin_cert using reduction22966.terms
theorem substitutionProof22966 : IsMapEvaluation generatorImages reduction22966.relations [2779] reduction22966.output := by lin_cert using reduction22966.terms
def image22967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22967 : InImage map_14_259 image22967 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22967 : Bundle := named_bundle% "RealMapCertificates/relations/basis22967.json"
theorem reductionProof22967 : EqualModuloRelations reduction22967.relations reduction22967.input reduction22967.output := by lin_cert using reduction22967.terms
theorem substitutionProof22967 : IsMapEvaluation generatorImages reduction22967.relations [67,75,324] reduction22967.output := by lin_cert using reduction22967.terms
def image22968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22968 : InImage map_14_259 image22968 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22968 : Bundle := named_bundle% "RealMapCertificates/relations/basis22968.json"
theorem reductionProof22968 : EqualModuloRelations reduction22968.relations reduction22968.input reduction22968.output := by lin_cert using reduction22968.terms
theorem substitutionProof22968 : IsMapEvaluation generatorImages reduction22968.relations [0,2727] reduction22968.output := by lin_cert using reduction22968.terms
def image22969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22969 : InImage map_14_259 image22969 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22969 : Bundle := named_bundle% "RealMapCertificates/relations/basis22969.json"
theorem reductionProof22969 : EqualModuloRelations reduction22969.relations reduction22969.input reduction22969.output := by lin_cert using reduction22969.terms
theorem substitutionProof22969 : IsMapEvaluation generatorImages reduction22969.relations [0,324,335] reduction22969.output := by lin_cert using reduction22969.terms
def image22970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22970 : InImage map_14_259 image22970 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22970 : Bundle := named_bundle% "RealMapCertificates/relations/basis22970.json"
theorem reductionProof22970 : EqualModuloRelations reduction22970.relations reduction22970.input reduction22970.output := by lin_cert using reduction22970.terms
theorem substitutionProof22970 : IsMapEvaluation generatorImages reduction22970.relations [0,0,0,0,314,324] reduction22970.output := by lin_cert using reduction22970.terms
def map_14_260 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image23363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23363 : InImage map_14_260 image23363 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23363 : Bundle := named_bundle% "RealMapCertificates/relations/basis23363.json"
theorem reductionProof23363 : EqualModuloRelations reduction23363.relations reduction23363.input reduction23363.output := by lin_cert using reduction23363.terms
theorem substitutionProof23363 : IsMapEvaluation generatorImages reduction23363.relations [2845] reduction23363.output := by lin_cert using reduction23363.terms
def image23364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23364 : InImage map_14_260 image23364 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23364 : Bundle := named_bundle% "RealMapCertificates/relations/basis23364.json"
theorem reductionProof23364 : EqualModuloRelations reduction23364.relations reduction23364.input reduction23364.output := by lin_cert using reduction23364.terms
theorem substitutionProof23364 : IsMapEvaluation generatorImages reduction23364.relations [13,213,324] reduction23364.output := by lin_cert using reduction23364.terms
def image23365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23365 : InImage map_14_260 image23365 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23365 : Bundle := named_bundle% "RealMapCertificates/relations/basis23365.json"
theorem reductionProof23365 : EqualModuloRelations reduction23365.relations reduction23365.input reduction23365.output := by lin_cert using reduction23365.terms
theorem substitutionProof23365 : IsMapEvaluation generatorImages reduction23365.relations [1,2727] reduction23365.output := by lin_cert using reduction23365.terms
def image23366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23366 : InImage map_14_260 image23366 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23366 : Bundle := named_bundle% "RealMapCertificates/relations/basis23366.json"
theorem reductionProof23366 : EqualModuloRelations reduction23366.relations reduction23366.input reduction23366.output := by lin_cert using reduction23366.terms
theorem substitutionProof23366 : IsMapEvaluation generatorImages reduction23366.relations [1,2724] reduction23366.output := by lin_cert using reduction23366.terms
def image23367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23367 : InImage map_14_260 image23367 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23367 : Bundle := named_bundle% "RealMapCertificates/relations/basis23367.json"
theorem reductionProof23367 : EqualModuloRelations reduction23367.relations reduction23367.input reduction23367.output := by lin_cert using reduction23367.terms
theorem substitutionProof23367 : IsMapEvaluation generatorImages reduction23367.relations [1,324,335] reduction23367.output := by lin_cert using reduction23367.terms
def image23368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23368 : InImage map_14_260 image23368 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23368 : Bundle := named_bundle% "RealMapCertificates/relations/basis23368.json"
theorem reductionProof23368 : EqualModuloRelations reduction23368.relations reduction23368.input reduction23368.output := by lin_cert using reduction23368.terms
theorem substitutionProof23368 : IsMapEvaluation generatorImages reduction23368.relations [0,2783] reduction23368.output := by lin_cert using reduction23368.terms
def image23369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23369 : InImage map_14_260 image23369 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23369 : Bundle := named_bundle% "RealMapCertificates/relations/basis23369.json"
theorem reductionProof23369 : EqualModuloRelations reduction23369.relations reduction23369.input reduction23369.output := by lin_cert using reduction23369.terms
theorem substitutionProof23369 : IsMapEvaluation generatorImages reduction23369.relations [0,0,2732] reduction23369.output := by lin_cert using reduction23369.terms
def map_14_261 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23782 : InImage map_14_261 image23782 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23782 : Bundle := named_bundle% "RealMapCertificates/relations/basis23782.json"
theorem reductionProof23782 : EqualModuloRelations reduction23782.relations reduction23782.input reduction23782.output := by lin_cert using reduction23782.terms
theorem substitutionProof23782 : IsMapEvaluation generatorImages reduction23782.relations [2901] reduction23782.output := by lin_cert using reduction23782.terms
def image23783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23783 : InImage map_14_261 image23783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23783 : Bundle := named_bundle% "RealMapCertificates/relations/basis23783.json"
theorem reductionProof23783 : EqualModuloRelations reduction23783.relations reduction23783.input reduction23783.output := by lin_cert using reduction23783.terms
theorem substitutionProof23783 : IsMapEvaluation generatorImages reduction23783.relations [2900] reduction23783.output := by lin_cert using reduction23783.terms
def image23784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23784 : InImage map_14_261 image23784 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23784 : Bundle := named_bundle% "RealMapCertificates/relations/basis23784.json"
theorem reductionProof23784 : EqualModuloRelations reduction23784.relations reduction23784.input reduction23784.output := by lin_cert using reduction23784.terms
theorem substitutionProof23784 : IsMapEvaluation generatorImages reduction23784.relations [2899] reduction23784.output := by lin_cert using reduction23784.terms
def image23785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23785 : InImage map_14_261 image23785 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23785 : Bundle := named_bundle% "RealMapCertificates/relations/basis23785.json"
theorem reductionProof23785 : EqualModuloRelations reduction23785.relations reduction23785.input reduction23785.output := by lin_cert using reduction23785.terms
theorem substitutionProof23785 : IsMapEvaluation generatorImages reduction23785.relations [2898] reduction23785.output := by lin_cert using reduction23785.terms
def image23786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23786 : InImage map_14_261 image23786 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23786 : Bundle := named_bundle% "RealMapCertificates/relations/basis23786.json"
theorem reductionProof23786 : EqualModuloRelations reduction23786.relations reduction23786.input reduction23786.output := by lin_cert using reduction23786.terms
theorem substitutionProof23786 : IsMapEvaluation generatorImages reduction23786.relations [1,2784] reduction23786.output := by lin_cert using reduction23786.terms
def image23787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23787 : InImage map_14_261 image23787 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23787 : Bundle := named_bundle% "RealMapCertificates/relations/basis23787.json"
theorem reductionProof23787 : EqualModuloRelations reduction23787.relations reduction23787.input reduction23787.output := by lin_cert using reduction23787.terms
theorem substitutionProof23787 : IsMapEvaluation generatorImages reduction23787.relations [0,2846] reduction23787.output := by lin_cert using reduction23787.terms
def map_15_15 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image30 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation30 : InImage map_15_15 image30 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction30 : Bundle := named_bundle% "RealMapCertificates/relations/basis30.json"
theorem reductionProof30 : EqualModuloRelations reduction30.relations reduction30.input reduction30.output := by lin_cert using reduction30.terms
theorem substitutionProof30 : IsMapEvaluation generatorImages reduction30.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction30.output := by lin_cert using reduction30.terms
def map_15_42 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image180 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation180 : InImage map_15_42 image180 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction180 : Bundle := named_bundle% "RealMapCertificates/relations/basis180.json"
theorem reductionProof180 : EqualModuloRelations reduction180.relations reduction180.input reduction180.output := by lin_cert using reduction180.terms
theorem substitutionProof180 : IsMapEvaluation generatorImages reduction180.relations [0,0,30] reduction180.output := by lin_cert using reduction180.terms
def map_15_46 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation223 : InImage map_15_46 image223 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction223 : Bundle := named_bundle% "RealMapCertificates/relations/basis223.json"
theorem reductionProof223 : EqualModuloRelations reduction223.relations reduction223.input reduction223.output := by lin_cert using reduction223.terms
theorem substitutionProof223 : IsMapEvaluation generatorImages reduction223.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,18] reduction223.output := by lin_cert using reduction223.terms
def map_15_47 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image235 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation235 : InImage map_15_47 image235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction235 : Bundle := named_bundle% "RealMapCertificates/relations/basis235.json"
theorem reductionProof235 : EqualModuloRelations reduction235.relations reduction235.input reduction235.output := by lin_cert using reduction235.terms
theorem substitutionProof235 : IsMapEvaluation generatorImages reduction235.relations [41] reduction235.output := by lin_cert using reduction235.terms
def map_15_48 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation241 : InImage map_15_48 image241 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction241 : Bundle := named_bundle% "RealMapCertificates/relations/basis241.json"
theorem reductionProof241 : EqualModuloRelations reduction241.relations reduction241.input reduction241.output := by lin_cert using reduction241.terms
theorem substitutionProof241 : IsMapEvaluation generatorImages reduction241.relations [0,0,0,39] reduction241.output := by lin_cert using reduction241.terms
def map_15_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image292 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation292 : InImage map_15_54 image292 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction292 : Bundle := named_bundle% "RealMapCertificates/relations/basis292.json"
theorem reductionProof292 : EqualModuloRelations reduction292.relations reduction292.input reduction292.output := by lin_cert using reduction292.terms
theorem substitutionProof292 : IsMapEvaluation generatorImages reduction292.relations [50] reduction292.output := by lin_cert using reduction292.terms
def map_15_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image324 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation324 : InImage map_15_57 image324 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction324 : Bundle := named_bundle% "RealMapCertificates/relations/basis324.json"
theorem reductionProof324 : EqualModuloRelations reduction324.relations reduction324.input reduction324.output := by lin_cert using reduction324.terms
theorem substitutionProof324 : IsMapEvaluation generatorImages reduction324.relations [56] reduction324.output := by lin_cert using reduction324.terms
def map_15_60 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image349 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation349 : InImage map_15_60 image349 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction349 : Bundle := named_bundle% "RealMapCertificates/relations/basis349.json"
theorem reductionProof349 : EqualModuloRelations reduction349.relations reduction349.input reduction349.output := by lin_cert using reduction349.terms
theorem substitutionProof349 : IsMapEvaluation generatorImages reduction349.relations [16,17] reduction349.output := by lin_cert using reduction349.terms
def map_15_61 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation364 : InImage map_15_61 image364 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction364 : Bundle := named_bundle% "RealMapCertificates/relations/basis364.json"
theorem reductionProof364 : EqualModuloRelations reduction364.relations reduction364.input reduction364.output := by lin_cert using reduction364.terms
theorem substitutionProof364 : IsMapEvaluation generatorImages reduction364.relations [0,17,17] reduction364.output := by lin_cert using reduction364.terms
def map_15_62 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation371 : InImage map_15_62 image371 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction371 : Bundle := named_bundle% "RealMapCertificates/relations/basis371.json"
theorem reductionProof371 : EqualModuloRelations reduction371.relations reduction371.input reduction371.output := by lin_cert using reduction371.terms
theorem substitutionProof371 : IsMapEvaluation generatorImages reduction371.relations [0,0,59] reduction371.output := by lin_cert using reduction371.terms
def map_15_63 : Matrix 3 1 := fun i j => ([false,true,false] : List Bool)[i.val*1+j.val]!
def image380 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation380 : InImage map_15_63 image380 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction380 : Bundle := named_bundle% "RealMapCertificates/relations/basis380.json"
theorem reductionProof380 : EqualModuloRelations reduction380.relations reduction380.input reduction380.output := by lin_cert using reduction380.terms
theorem substitutionProof380 : IsMapEvaluation generatorImages reduction380.relations [8,40] reduction380.output := by lin_cert using reduction380.terms
def map_15_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation394 : InImage map_15_64 image394 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction394 : Bundle := named_bundle% "RealMapCertificates/relations/basis394.json"
theorem reductionProof394 : EqualModuloRelations reduction394.relations reduction394.input reduction394.output := by lin_cert using reduction394.terms
theorem substitutionProof394 : IsMapEvaluation generatorImages reduction394.relations [0,17,20] reduction394.output := by lin_cert using reduction394.terms
def map_15_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image423 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation423 : InImage map_15_66 image423 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction423 : Bundle := named_bundle% "RealMapCertificates/relations/basis423.json"
theorem reductionProof423 : EqualModuloRelations reduction423.relations reduction423.input reduction423.output := by lin_cert using reduction423.terms
theorem substitutionProof423 : IsMapEvaluation generatorImages reduction423.relations [8,8,17] reduction423.output := by lin_cert using reduction423.terms
def map_15_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation462 : InImage map_15_68 image462 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction462 : Bundle := named_bundle% "RealMapCertificates/relations/basis462.json"
theorem reductionProof462 : EqualModuloRelations reduction462.relations reduction462.input reduction462.output := by lin_cert using reduction462.terms
theorem substitutionProof462 : IsMapEvaluation generatorImages reduction462.relations [0,0,0,0,0,64] reduction462.output := by lin_cert using reduction462.terms
def map_15_69 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image482 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation482 : InImage map_15_69 image482 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction482 : Bundle := named_bundle% "RealMapCertificates/relations/basis482.json"
theorem reductionProof482 : EqualModuloRelations reduction482.relations reduction482.input reduction482.output := by lin_cert using reduction482.terms
theorem substitutionProof482 : IsMapEvaluation generatorImages reduction482.relations [8,8,20] reduction482.output := by lin_cert using reduction482.terms
def image483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation483 : InImage map_15_69 image483 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction483 : Bundle := named_bundle% "RealMapCertificates/relations/basis483.json"
theorem reductionProof483 : EqualModuloRelations reduction483.relations reduction483.input reduction483.output := by lin_cert using reduction483.terms
theorem substitutionProof483 : IsMapEvaluation generatorImages reduction483.relations [0,0,0,0,0,66] reduction483.output := by lin_cert using reduction483.terms
def map_15_72 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image540 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation540 : InImage map_15_72 image540 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction540 : Bundle := named_bundle% "RealMapCertificates/relations/basis540.json"
theorem reductionProof540 : EqualModuloRelations reduction540.relations reduction540.input reduction540.output := by lin_cert using reduction540.terms
theorem substitutionProof540 : IsMapEvaluation generatorImages reduction540.relations [8,8,22] reduction540.output := by lin_cert using reduction540.terms
def map_15_75 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image612 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation612 : InImage map_15_75 image612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction612 : Bundle := named_bundle% "RealMapCertificates/relations/basis612.json"
theorem reductionProof612 : EqualModuloRelations reduction612.relations reduction612.input reduction612.output := by lin_cert using reduction612.terms
theorem substitutionProof612 : IsMapEvaluation generatorImages reduction612.relations [8,8,29] reduction612.output := by lin_cert using reduction612.terms
def map_15_77 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation650 : InImage map_15_77 image650 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction650 : Bundle := named_bundle% "RealMapCertificates/relations/basis650.json"
theorem reductionProof650 : EqualModuloRelations reduction650.relations reduction650.input reduction650.output := by lin_cert using reduction650.terms
theorem substitutionProof650 : IsMapEvaluation generatorImages reduction650.relations [5,64] reduction650.output := by lin_cert using reduction650.terms
def image651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation651 : InImage map_15_77 image651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction651 : Bundle := named_bundle% "RealMapCertificates/relations/basis651.json"
theorem reductionProof651 : EqualModuloRelations reduction651.relations reduction651.input reduction651.output := by lin_cert using reduction651.terms
theorem substitutionProof651 : IsMapEvaluation generatorImages reduction651.relations [0,0,0,0,0,90] reduction651.output := by lin_cert using reduction651.terms
def map_15_78 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image676 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation676 : InImage map_15_78 image676 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction676 : Bundle := named_bundle% "RealMapCertificates/relations/basis676.json"
theorem reductionProof676 : EqualModuloRelations reduction676.relations reduction676.input reduction676.output := by lin_cert using reduction676.terms
theorem substitutionProof676 : IsMapEvaluation generatorImages reduction676.relations [8,8,32] reduction676.output := by lin_cert using reduction676.terms
def image677 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation677 : InImage map_15_78 image677 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction677 : Bundle := named_bundle% "RealMapCertificates/relations/basis677.json"
theorem reductionProof677 : EqualModuloRelations reduction677.relations reduction677.input reduction677.output := by lin_cert using reduction677.terms
theorem substitutionProof677 : IsMapEvaluation generatorImages reduction677.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction677.output := by lin_cert using reduction677.terms
def map_15_79 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation701 : InImage map_15_79 image701 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction701 : Bundle := named_bundle% "RealMapCertificates/relations/basis701.json"
theorem reductionProof701 : EqualModuloRelations reduction701.relations reduction701.input reduction701.output := by lin_cert using reduction701.terms
theorem substitutionProof701 : IsMapEvaluation generatorImages reduction701.relations [0,112] reduction701.output := by lin_cert using reduction701.terms
def map_15_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation717 : InImage map_15_80 image717 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction717 : Bundle := named_bundle% "RealMapCertificates/relations/basis717.json"
theorem reductionProof717 : EqualModuloRelations reduction717.relations reduction717.input reduction717.output := by lin_cert using reduction717.terms
theorem substitutionProof717 : IsMapEvaluation generatorImages reduction717.relations [0,0,113] reduction717.output := by lin_cert using reduction717.terms
def map_15_81 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image746 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation746 : InImage map_15_81 image746 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction746 : Bundle := named_bundle% "RealMapCertificates/relations/basis746.json"
theorem reductionProof746 : EqualModuloRelations reduction746.relations reduction746.input reduction746.output := by lin_cert using reduction746.terms
theorem substitutionProof746 : IsMapEvaluation generatorImages reduction746.relations [8,9,32] reduction746.output := by lin_cert using reduction746.terms
def map_15_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation766 : InImage map_15_82 image766 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction766 : Bundle := named_bundle% "RealMapCertificates/relations/basis766.json"
theorem reductionProof766 : EqualModuloRelations reduction766.relations reduction766.input reduction766.output := by lin_cert using reduction766.terms
theorem substitutionProof766 : IsMapEvaluation generatorImages reduction766.relations [0,8,64] reduction766.output := by lin_cert using reduction766.terms
def map_15_83 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image788 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation788 : InImage map_15_83 image788 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction788 : Bundle := named_bundle% "RealMapCertificates/relations/basis788.json"
theorem reductionProof788 : EqualModuloRelations reduction788.relations reduction788.input reduction788.output := by lin_cert using reduction788.terms
theorem substitutionProof788 : IsMapEvaluation generatorImages reduction788.relations [0,0,118] reduction788.output := by lin_cert using reduction788.terms
def map_15_84 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image812 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation812 : InImage map_15_84 image812 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction812 : Bundle := named_bundle% "RealMapCertificates/relations/basis812.json"
theorem reductionProof812 : EqualModuloRelations reduction812.relations reduction812.input reduction812.output := by lin_cert using reduction812.terms
theorem substitutionProof812 : IsMapEvaluation generatorImages reduction812.relations [8,13,32] reduction812.output := by lin_cert using reduction812.terms
def map_15_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation842 : InImage map_15_85 image842 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction842 : Bundle := named_bundle% "RealMapCertificates/relations/basis842.json"
theorem reductionProof842 : EqualModuloRelations reduction842.relations reduction842.input reduction842.output := by lin_cert using reduction842.terms
theorem substitutionProof842 : IsMapEvaluation generatorImages reduction842.relations [0,8,72] reduction842.output := by lin_cert using reduction842.terms
def map_15_86 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image867 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation867 : InImage map_15_86 image867 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction867 : Bundle := named_bundle% "RealMapCertificates/relations/basis867.json"
theorem reductionProof867 : EqualModuloRelations reduction867.relations reduction867.input reduction867.output := by lin_cert using reduction867.terms
theorem substitutionProof867 : IsMapEvaluation generatorImages reduction867.relations [0,0,127] reduction867.output := by lin_cert using reduction867.terms
def image868 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation868 : InImage map_15_86 image868 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction868 : Bundle := named_bundle% "RealMapCertificates/relations/basis868.json"
theorem reductionProof868 : EqualModuloRelations reduction868.relations reduction868.input reduction868.output := by lin_cert using reduction868.terms
theorem substitutionProof868 : IsMapEvaluation generatorImages reduction868.relations [0,0,126] reduction868.output := by lin_cert using reduction868.terms
def map_15_87 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image898 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation898 : InImage map_15_87 image898 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction898 : Bundle := named_bundle% "RealMapCertificates/relations/basis898.json"
theorem reductionProof898 : EqualModuloRelations reduction898.relations reduction898.input reduction898.output := by lin_cert using reduction898.terms
theorem substitutionProof898 : IsMapEvaluation generatorImages reduction898.relations [9,13,32] reduction898.output := by lin_cert using reduction898.terms
def map_15_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation918 : InImage map_15_88 image918 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction918 : Bundle := named_bundle% "RealMapCertificates/relations/basis918.json"
theorem reductionProof918 : EqualModuloRelations reduction918.relations reduction918.input reduction918.output := by lin_cert using reduction918.terms
theorem substitutionProof918 : IsMapEvaluation generatorImages reduction918.relations [0,8,79] reduction918.output := by lin_cert using reduction918.terms
def map_15_89 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image945 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation945 : InImage map_15_89 image945 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction945 : Bundle := named_bundle% "RealMapCertificates/relations/basis945.json"
theorem reductionProof945 : EqualModuloRelations reduction945.relations reduction945.input reduction945.output := by lin_cert using reduction945.terms
theorem substitutionProof945 : IsMapEvaluation generatorImages reduction945.relations [0,0,8,80] reduction945.output := by lin_cert using reduction945.terms
def map_15_90 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image975 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation975 : InImage map_15_90 image975 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction975 : Bundle := named_bundle% "RealMapCertificates/relations/basis975.json"
theorem reductionProof975 : EqualModuloRelations reduction975.relations reduction975.input reduction975.output := by lin_cert using reduction975.terms
theorem substitutionProof975 : IsMapEvaluation generatorImages reduction975.relations [13,13,32] reduction975.output := by lin_cert using reduction975.terms
def map_15_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1004 : InImage map_15_91 image1004 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1004 : Bundle := named_bundle% "RealMapCertificates/relations/basis1004.json"
theorem reductionProof1004 : EqualModuloRelations reduction1004.relations reduction1004.input reduction1004.output := by lin_cert using reduction1004.terms
theorem substitutionProof1004 : IsMapEvaluation generatorImages reduction1004.relations [0,8,89] reduction1004.output := by lin_cert using reduction1004.terms
def map_15_92 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1027 : InImage map_15_92 image1027 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1027 : Bundle := named_bundle% "RealMapCertificates/relations/basis1027.json"
theorem reductionProof1027 : EqualModuloRelations reduction1027.relations reduction1027.input reduction1027.output := by lin_cert using reduction1027.terms
theorem substitutionProof1027 : IsMapEvaluation generatorImages reduction1027.relations [0,0,9,80] reduction1027.output := by lin_cert using reduction1027.terms
def map_15_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1080 : InImage map_15_94 image1080 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1080 : Bundle := named_bundle% "RealMapCertificates/relations/basis1080.json"
theorem reductionProof1080 : EqualModuloRelations reduction1080.relations reduction1080.input reduction1080.output := by lin_cert using reduction1080.terms
theorem substitutionProof1080 : IsMapEvaluation generatorImages reduction1080.relations [0,8,101] reduction1080.output := by lin_cert using reduction1080.terms
def map_15_95 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1103 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1103 : InImage map_15_95 image1103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1103 : Bundle := named_bundle% "RealMapCertificates/relations/basis1103.json"
theorem reductionProof1103 : EqualModuloRelations reduction1103.relations reduction1103.input reduction1103.output := by lin_cert using reduction1103.terms
theorem substitutionProof1103 : IsMapEvaluation generatorImages reduction1103.relations [0,0,13,80] reduction1103.output := by lin_cert using reduction1103.terms
end RealMapCertificates
