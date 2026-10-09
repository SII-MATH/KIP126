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
  | 23 => [[7,7]]
  | 24 => []
  | 27 => [[1,4,4,4]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 74 => []
  | 76 => []
  | 80 => []
  | 95 => []
  | 107 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 156 => []
  | 167 => [[7,9,12]]
  | 168 => []
  | 169 => []
  | 172 => []
  | 173 => []
  | 176 => []
  | 186 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 195 => []
  | 201 => []
  | 209 => []
  | 213 => []
  | 215 => []
  | 226 => []
  | 228 => []
  | 249 => []
  | 255 => []
  | 262 => []
  | 266 => []
  | 267 => []
  | 279 => []
  | 284 => []
  | 285 => []
  | 286 => []
  | 287 => []
  | 293 => []
  | 304 => []
  | 305 => []
  | 306 => []
  | 308 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 319 => []
  | 324 => []
  | 328 => []
  | 349 => []
  | 350 => []
  | 360 => []
  | 361 => []
  | 370 => []
  | 384 => []
  | 385 => []
  | 407 => []
  | 418 => []
  | 423 => []
  | 424 => []
  | 425 => []
  | 438 => []
  | 439 => []
  | 440 => []
  | 448 => []
  | 449 => []
  | 456 => []
  | 457 => []
  | 475 => []
  | 481 => []
  | 482 => []
  | 484 => []
  | 495 => []
  | _ => []
def map_15_96 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1127 : InImage map_15_96 image1127 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1127 : Bundle := named_bundle% "RealMapCertificates/relations/basis1127.json"
theorem reductionProof1127 : EqualModuloRelations reduction1127.relations reduction1127.input reduction1127.output := by lin_cert using reduction1127.terms
theorem substitutionProof1127 : IsMapEvaluation generatorImages reduction1127.relations [13,23,24] reduction1127.output := by lin_cert using reduction1127.terms
def image1128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1128 : InImage map_15_96 image1128 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1128 : Bundle := named_bundle% "RealMapCertificates/relations/basis1128.json"
theorem reductionProof1128 : EqualModuloRelations reduction1128.relations reduction1128.input reduction1128.output := by lin_cert using reduction1128.terms
theorem substitutionProof1128 : IsMapEvaluation generatorImages reduction1128.relations [1,156] reduction1128.output := by lin_cert using reduction1128.terms
def map_15_98 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1172 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1172 : InImage map_15_98 image1172 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1172 : Bundle := named_bundle% "RealMapCertificates/relations/basis1172.json"
theorem reductionProof1172 : EqualModuloRelations reduction1172.relations reduction1172.input reduction1172.output := by lin_cert using reduction1172.terms
theorem substitutionProof1172 : IsMapEvaluation generatorImages reduction1172.relations [167] reduction1172.output := by lin_cert using reduction1172.terms
def map_15_99 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1202 : InImage map_15_99 image1202 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1202 : Bundle := named_bundle% "RealMapCertificates/relations/basis1202.json"
theorem reductionProof1202 : EqualModuloRelations reduction1202.relations reduction1202.input reduction1202.output := by lin_cert using reduction1202.terms
theorem substitutionProof1202 : IsMapEvaluation generatorImages reduction1202.relations [173] reduction1202.output := by lin_cert using reduction1202.terms
def image1203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1203 : InImage map_15_99 image1203 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1203 : Bundle := named_bundle% "RealMapCertificates/relations/basis1203.json"
theorem reductionProof1203 : EqualModuloRelations reduction1203.relations reduction1203.input reduction1203.output := by lin_cert using reduction1203.terms
theorem substitutionProof1203 : IsMapEvaluation generatorImages reduction1203.relations [172] reduction1203.output := by lin_cert using reduction1203.terms
def map_15_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1226 : InImage map_15_100 image1226 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1226 : Bundle := named_bundle% "RealMapCertificates/relations/basis1226.json"
theorem reductionProof1226 : EqualModuloRelations reduction1226.relations reduction1226.input reduction1226.output := by lin_cert using reduction1226.terms
theorem substitutionProof1226 : IsMapEvaluation generatorImages reduction1226.relations [1,168] reduction1226.output := by lin_cert using reduction1226.terms
def image1227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1227 : InImage map_15_100 image1227 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1227 : Bundle := named_bundle% "RealMapCertificates/relations/basis1227.json"
theorem reductionProof1227 : EqualModuloRelations reduction1227.relations reduction1227.input reduction1227.output := by lin_cert using reduction1227.terms
theorem substitutionProof1227 : IsMapEvaluation generatorImages reduction1227.relations [0,0,169] reduction1227.output := by lin_cert using reduction1227.terms
def map_15_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1258 : InImage map_15_101 image1258 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1258 : Bundle := named_bundle% "RealMapCertificates/relations/basis1258.json"
theorem reductionProof1258 : EqualModuloRelations reduction1258.relations reduction1258.input reduction1258.output := by lin_cert using reduction1258.terms
theorem substitutionProof1258 : IsMapEvaluation generatorImages reduction1258.relations [0,176] reduction1258.output := by lin_cert using reduction1258.terms
def map_15_102 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1297 : InImage map_15_102 image1297 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1297 : Bundle := named_bundle% "RealMapCertificates/relations/basis1297.json"
theorem reductionProof1297 : EqualModuloRelations reduction1297.relations reduction1297.input reduction1297.output := by lin_cert using reduction1297.terms
theorem substitutionProof1297 : IsMapEvaluation generatorImages reduction1297.relations [186] reduction1297.output := by lin_cert using reduction1297.terms
def image1298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1298 : InImage map_15_102 image1298 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1298 : Bundle := named_bundle% "RealMapCertificates/relations/basis1298.json"
theorem reductionProof1298 : EqualModuloRelations reduction1298.relations reduction1298.input reduction1298.output := by lin_cert using reduction1298.terms
theorem substitutionProof1298 : IsMapEvaluation generatorImages reduction1298.relations [1,176] reduction1298.output := by lin_cert using reduction1298.terms
def map_15_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1352 : InImage map_15_104 image1352 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1352 : Bundle := named_bundle% "RealMapCertificates/relations/basis1352.json"
theorem reductionProof1352 : EqualModuloRelations reduction1352.relations reduction1352.input reduction1352.output := by lin_cert using reduction1352.terms
theorem substitutionProof1352 : IsMapEvaluation generatorImages reduction1352.relations [1,27,69] reduction1352.output := by lin_cert using reduction1352.terms
def map_15_105 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1394 : InImage map_15_105 image1394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1394 : Bundle := named_bundle% "RealMapCertificates/relations/basis1394.json"
theorem reductionProof1394 : EqualModuloRelations reduction1394.relations reduction1394.input reduction1394.output := by lin_cert using reduction1394.terms
theorem substitutionProof1394 : IsMapEvaluation generatorImages reduction1394.relations [23,80] reduction1394.output := by lin_cert using reduction1394.terms
def image1395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1395 : InImage map_15_105 image1395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1395 : Bundle := named_bundle% "RealMapCertificates/relations/basis1395.json"
theorem reductionProof1395 : EqualModuloRelations reduction1395.relations reduction1395.input reduction1395.output := by lin_cert using reduction1395.terms
theorem substitutionProof1395 : IsMapEvaluation generatorImages reduction1395.relations [0,30,69] reduction1395.output := by lin_cert using reduction1395.terms
def image1396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1396 : InImage map_15_105 image1396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1396 : Bundle := named_bundle% "RealMapCertificates/relations/basis1396.json"
theorem reductionProof1396 : EqualModuloRelations reduction1396.relations reduction1396.input reduction1396.output := by lin_cert using reduction1396.terms
theorem substitutionProof1396 : IsMapEvaluation generatorImages reduction1396.relations [0,0,0,187] reduction1396.output := by lin_cert using reduction1396.terms
def map_15_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1423 : InImage map_15_106 image1423 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1423 : Bundle := named_bundle% "RealMapCertificates/relations/basis1423.json"
theorem reductionProof1423 : EqualModuloRelations reduction1423.relations reduction1423.input reduction1423.output := by lin_cert using reduction1423.terms
theorem substitutionProof1423 : IsMapEvaluation generatorImages reduction1423.relations [0,0,0,0,188] reduction1423.output := by lin_cert using reduction1423.terms
def map_15_108 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1498 : InImage map_15_108 image1498 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1498 : Bundle := named_bundle% "RealMapCertificates/relations/basis1498.json"
theorem reductionProof1498 : EqualModuloRelations reduction1498.relations reduction1498.input reduction1498.output := by lin_cert using reduction1498.terms
theorem substitutionProof1498 : IsMapEvaluation generatorImages reduction1498.relations [0,0,31,69] reduction1498.output := by lin_cert using reduction1498.terms
def image1499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1499 : InImage map_15_108 image1499 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1499 : Bundle := named_bundle% "RealMapCertificates/relations/basis1499.json"
theorem reductionProof1499 : EqualModuloRelations reduction1499.relations reduction1499.input reduction1499.output := by lin_cert using reduction1499.terms
theorem substitutionProof1499 : IsMapEvaluation generatorImages reduction1499.relations [0,0,0,201] reduction1499.output := by lin_cert using reduction1499.terms
def map_15_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1532 : InImage map_15_109 image1532 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1532 : Bundle := named_bundle% "RealMapCertificates/relations/basis1532.json"
theorem reductionProof1532 : EqualModuloRelations reduction1532.relations reduction1532.input reduction1532.output := by lin_cert using reduction1532.terms
theorem substitutionProof1532 : IsMapEvaluation generatorImages reduction1532.relations [215] reduction1532.output := by lin_cert using reduction1532.terms
def map_15_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1566 : InImage map_15_110 image1566 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1566 : Bundle := named_bundle% "RealMapCertificates/relations/basis1566.json"
theorem reductionProof1566 : EqualModuloRelations reduction1566.relations reduction1566.input reduction1566.output := by lin_cert using reduction1566.terms
theorem substitutionProof1566 : IsMapEvaluation generatorImages reduction1566.relations [1,1,31,69] reduction1566.output := by lin_cert using reduction1566.terms
def map_15_111 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1617 : InImage map_15_111 image1617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1617 : Bundle := named_bundle% "RealMapCertificates/relations/basis1617.json"
theorem reductionProof1617 : EqualModuloRelations reduction1617.relations reduction1617.input reduction1617.output := by lin_cert using reduction1617.terms
theorem substitutionProof1617 : IsMapEvaluation generatorImages reduction1617.relations [226] reduction1617.output := by lin_cert using reduction1617.terms
def image1618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1618 : InImage map_15_111 image1618 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1618 : Bundle := named_bundle% "RealMapCertificates/relations/basis1618.json"
theorem reductionProof1618 : EqualModuloRelations reduction1618.relations reduction1618.input reduction1618.output := by lin_cert using reduction1618.terms
theorem substitutionProof1618 : IsMapEvaluation generatorImages reduction1618.relations [0,0,39,69] reduction1618.output := by lin_cert using reduction1618.terms
def map_15_112 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1645 : InImage map_15_112 image1645 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1645 : Bundle := named_bundle% "RealMapCertificates/relations/basis1645.json"
theorem reductionProof1645 : EqualModuloRelations reduction1645.relations reduction1645.input reduction1645.output := by lin_cert using reduction1645.terms
theorem substitutionProof1645 : IsMapEvaluation generatorImages reduction1645.relations [13,13,67] reduction1645.output := by lin_cert using reduction1645.terms
def image1646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1646 : InImage map_15_112 image1646 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1646 : Bundle := named_bundle% "RealMapCertificates/relations/basis1646.json"
theorem reductionProof1646 : EqualModuloRelations reduction1646.relations reduction1646.input reduction1646.output := by lin_cert using reduction1646.terms
theorem substitutionProof1646 : IsMapEvaluation generatorImages reduction1646.relations [0,0,0,0,0,209] reduction1646.output := by lin_cert using reduction1646.terms
def map_15_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1685 : InImage map_15_113 image1685 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1685 : Bundle := named_bundle% "RealMapCertificates/relations/basis1685.json"
theorem reductionProof1685 : EqualModuloRelations reduction1685.relations reduction1685.input reduction1685.output := by lin_cert using reduction1685.terms
theorem substitutionProof1685 : IsMapEvaluation generatorImages reduction1685.relations [0,0,0,3,188] reduction1685.output := by lin_cert using reduction1685.terms
def map_15_114 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1727 : InImage map_15_114 image1727 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1727 : Bundle := named_bundle% "RealMapCertificates/relations/basis1727.json"
theorem reductionProof1727 : EqualModuloRelations reduction1727.relations reduction1727.input reduction1727.output := by lin_cert using reduction1727.terms
theorem substitutionProof1727 : IsMapEvaluation generatorImages reduction1727.relations [0,0,3,195] reduction1727.output := by lin_cert using reduction1727.terms
def map_15_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1789 : InImage map_15_116 image1789 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1789 : Bundle := named_bundle% "RealMapCertificates/relations/basis1789.json"
theorem reductionProof1789 : EqualModuloRelations reduction1789.relations reduction1789.input reduction1789.output := by lin_cert using reduction1789.terms
theorem substitutionProof1789 : IsMapEvaluation generatorImages reduction1789.relations [2,228] reduction1789.output := by lin_cert using reduction1789.terms
def map_15_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1836 : InImage map_15_117 image1836 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1836 : Bundle := named_bundle% "RealMapCertificates/relations/basis1836.json"
theorem reductionProof1836 : EqualModuloRelations reduction1836.relations reduction1836.input reduction1836.output := by lin_cert using reduction1836.terms
theorem substitutionProof1836 : IsMapEvaluation generatorImages reduction1836.relations [255] reduction1836.output := by lin_cert using reduction1836.terms
def map_15_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1867 : InImage map_15_118 image1867 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1867 : Bundle := named_bundle% "RealMapCertificates/relations/basis1867.json"
theorem reductionProof1867 : EqualModuloRelations reduction1867.relations reduction1867.input reduction1867.output := by lin_cert using reduction1867.terms
theorem substitutionProof1867 : IsMapEvaluation generatorImages reduction1867.relations [9,13,95] reduction1867.output := by lin_cert using reduction1867.terms
def image1868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1868 : InImage map_15_118 image1868 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1868 : Bundle := named_bundle% "RealMapCertificates/relations/basis1868.json"
theorem reductionProof1868 : EqualModuloRelations reduction1868.relations reduction1868.input reduction1868.output := by lin_cert using reduction1868.terms
theorem substitutionProof1868 : IsMapEvaluation generatorImages reduction1868.relations [1,249] reduction1868.output := by lin_cert using reduction1868.terms
def map_15_120 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1952 : InImage map_15_120 image1952 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1952 : Bundle := named_bundle% "RealMapCertificates/relations/basis1952.json"
theorem reductionProof1952 : EqualModuloRelations reduction1952.relations reduction1952.input reduction1952.output := by lin_cert using reduction1952.terms
theorem substitutionProof1952 : IsMapEvaluation generatorImages reduction1952.relations [266] reduction1952.output := by lin_cert using reduction1952.terms
def image1953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1953 : InImage map_15_120 image1953 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1953 : Bundle := named_bundle% "RealMapCertificates/relations/basis1953.json"
theorem reductionProof1953 : EqualModuloRelations reduction1953.relations reduction1953.input reduction1953.output := by lin_cert using reduction1953.terms
theorem substitutionProof1953 : IsMapEvaluation generatorImages reduction1953.relations [8,188] reduction1953.output := by lin_cert using reduction1953.terms
def map_15_121 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1990 : InImage map_15_121 image1990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1990 : Bundle := named_bundle% "RealMapCertificates/relations/basis1990.json"
theorem reductionProof1990 : EqualModuloRelations reduction1990.relations reduction1990.input reduction1990.output := by lin_cert using reduction1990.terms
theorem substitutionProof1990 : IsMapEvaluation generatorImages reduction1990.relations [13,13,95] reduction1990.output := by lin_cert using reduction1990.terms
def image1991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1991 : InImage map_15_121 image1991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1991 : Bundle := named_bundle% "RealMapCertificates/relations/basis1991.json"
theorem reductionProof1991 : EqualModuloRelations reduction1991.relations reduction1991.input reduction1991.output := by lin_cert using reduction1991.terms
theorem substitutionProof1991 : IsMapEvaluation generatorImages reduction1991.relations [5,209] reduction1991.output := by lin_cert using reduction1991.terms
def image1992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1992 : InImage map_15_121 image1992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1992 : Bundle := named_bundle% "RealMapCertificates/relations/basis1992.json"
theorem reductionProof1992 : EqualModuloRelations reduction1992.relations reduction1992.input reduction1992.output := by lin_cert using reduction1992.terms
theorem substitutionProof1992 : IsMapEvaluation generatorImages reduction1992.relations [0,267] reduction1992.output := by lin_cert using reduction1992.terms
def map_15_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2074 : InImage map_15_123 image2074 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2074 : Bundle := named_bundle% "RealMapCertificates/relations/basis2074.json"
theorem reductionProof2074 : EqualModuloRelations reduction2074.relations reduction2074.input reduction2074.output := by lin_cert using reduction2074.terms
theorem substitutionProof2074 : IsMapEvaluation generatorImages reduction2074.relations [284] reduction2074.output := by lin_cert using reduction2074.terms
def image2075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2075 : InImage map_15_123 image2075 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2075 : Bundle := named_bundle% "RealMapCertificates/relations/basis2075.json"
theorem reductionProof2075 : EqualModuloRelations reduction2075.relations reduction2075.input reduction2075.output := by lin_cert using reduction2075.terms
theorem substitutionProof2075 : IsMapEvaluation generatorImages reduction2075.relations [9,188] reduction2075.output := by lin_cert using reduction2075.terms
def map_15_124 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2111 : InImage map_15_124 image2111 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2111 : Bundle := named_bundle% "RealMapCertificates/relations/basis2111.json"
theorem reductionProof2111 : EqualModuloRelations reduction2111.relations reduction2111.input reduction2111.output := by lin_cert using reduction2111.terms
theorem substitutionProof2111 : IsMapEvaluation generatorImages reduction2111.relations [1,279] reduction2111.output := by lin_cert using reduction2111.terms
def image2112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2112 : InImage map_15_124 image2112 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2112 : Bundle := named_bundle% "RealMapCertificates/relations/basis2112.json"
theorem reductionProof2112 : EqualModuloRelations reduction2112.relations reduction2112.input reduction2112.output := by lin_cert using reduction2112.terms
theorem substitutionProof2112 : IsMapEvaluation generatorImages reduction2112.relations [0,286] reduction2112.output := by lin_cert using reduction2112.terms
def image2113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2113 : InImage map_15_124 image2113 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2113 : Bundle := named_bundle% "RealMapCertificates/relations/basis2113.json"
theorem reductionProof2113 : EqualModuloRelations reduction2113.relations reduction2113.input reduction2113.output := by lin_cert using reduction2113.terms
theorem substitutionProof2113 : IsMapEvaluation generatorImages reduction2113.relations [0,285] reduction2113.output := by lin_cert using reduction2113.terms
def map_15_125 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2152 : InImage map_15_125 image2152 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2152 : Bundle := named_bundle% "RealMapCertificates/relations/basis2152.json"
theorem reductionProof2152 : EqualModuloRelations reduction2152.relations reduction2152.input reduction2152.output := by lin_cert using reduction2152.terms
theorem substitutionProof2152 : IsMapEvaluation generatorImages reduction2152.relations [293] reduction2152.output := by lin_cert using reduction2152.terms
def image2153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2153 : InImage map_15_125 image2153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2153 : Bundle := named_bundle% "RealMapCertificates/relations/basis2153.json"
theorem reductionProof2153 : EqualModuloRelations reduction2153.relations reduction2153.input reduction2153.output := by lin_cert using reduction2153.terms
theorem substitutionProof2153 : IsMapEvaluation generatorImages reduction2153.relations [0,59,69] reduction2153.output := by lin_cert using reduction2153.terms
def map_15_126 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2207 : InImage map_15_126 image2207 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2207 : Bundle := named_bundle% "RealMapCertificates/relations/basis2207.json"
theorem reductionProof2207 : EqualModuloRelations reduction2207.relations reduction2207.input reduction2207.output := by lin_cert using reduction2207.terms
theorem substitutionProof2207 : IsMapEvaluation generatorImages reduction2207.relations [305] reduction2207.output := by lin_cert using reduction2207.terms
def image2208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2208 : InImage map_15_126 image2208 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2208 : Bundle := named_bundle% "RealMapCertificates/relations/basis2208.json"
theorem reductionProof2208 : EqualModuloRelations reduction2208.relations reduction2208.input reduction2208.output := by lin_cert using reduction2208.terms
theorem substitutionProof2208 : IsMapEvaluation generatorImages reduction2208.relations [304] reduction2208.output := by lin_cert using reduction2208.terms
def image2209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2209 : InImage map_15_126 image2209 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2209 : Bundle := named_bundle% "RealMapCertificates/relations/basis2209.json"
theorem reductionProof2209 : EqualModuloRelations reduction2209.relations reduction2209.input reduction2209.output := by lin_cert using reduction2209.terms
theorem substitutionProof2209 : IsMapEvaluation generatorImages reduction2209.relations [13,188] reduction2209.output := by lin_cert using reduction2209.terms
def image2210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2210 : InImage map_15_126 image2210 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2210 : Bundle := named_bundle% "RealMapCertificates/relations/basis2210.json"
theorem reductionProof2210 : EqualModuloRelations reduction2210.relations reduction2210.input reduction2210.output := by lin_cert using reduction2210.terms
theorem substitutionProof2210 : IsMapEvaluation generatorImages reduction2210.relations [0,8,209] reduction2210.output := by lin_cert using reduction2210.terms
def map_15_127 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2248 : InImage map_15_127 image2248 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2248 : Bundle := named_bundle% "RealMapCertificates/relations/basis2248.json"
theorem reductionProof2248 : EqualModuloRelations reduction2248.relations reduction2248.input reduction2248.output := by lin_cert using reduction2248.terms
theorem substitutionProof2248 : IsMapEvaluation generatorImages reduction2248.relations [13,23,76] reduction2248.output := by lin_cert using reduction2248.terms
def image2249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2249 : InImage map_15_127 image2249 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2249 : Bundle := named_bundle% "RealMapCertificates/relations/basis2249.json"
theorem reductionProof2249 : EqualModuloRelations reduction2249.relations reduction2249.input reduction2249.output := by lin_cert using reduction2249.terms
theorem substitutionProof2249 : IsMapEvaluation generatorImages reduction2249.relations [2,286] reduction2249.output := by lin_cert using reduction2249.terms
def image2250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2250 : InImage map_15_127 image2250 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2250 : Bundle := named_bundle% "RealMapCertificates/relations/basis2250.json"
theorem reductionProof2250 : EqualModuloRelations reduction2250.relations reduction2250.input reduction2250.output := by lin_cert using reduction2250.terms
theorem substitutionProof2250 : IsMapEvaluation generatorImages reduction2250.relations [1,8,209] reduction2250.output := by lin_cert using reduction2250.terms
def image2251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2251 : InImage map_15_127 image2251 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2251 : Bundle := named_bundle% "RealMapCertificates/relations/basis2251.json"
theorem reductionProof2251 : EqualModuloRelations reduction2251.relations reduction2251.input reduction2251.output := by lin_cert using reduction2251.terms
theorem substitutionProof2251 : IsMapEvaluation generatorImages reduction2251.relations [0,306] reduction2251.output := by lin_cert using reduction2251.terms
def map_15_128 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2295 : InImage map_15_128 image2295 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2295 : Bundle := named_bundle% "RealMapCertificates/relations/basis2295.json"
theorem reductionProof2295 : EqualModuloRelations reduction2295.relations reduction2295.input reduction2295.output := by lin_cert using reduction2295.terms
theorem substitutionProof2295 : IsMapEvaluation generatorImages reduction2295.relations [3,267] reduction2295.output := by lin_cert using reduction2295.terms
def image2296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2296 : InImage map_15_128 image2296 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2296 : Bundle := named_bundle% "RealMapCertificates/relations/basis2296.json"
theorem reductionProof2296 : EqualModuloRelations reduction2296.relations reduction2296.input reduction2296.output := by lin_cert using reduction2296.terms
theorem substitutionProof2296 : IsMapEvaluation generatorImages reduction2296.relations [1,13,189] reduction2296.output := by lin_cert using reduction2296.terms
def map_15_129 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2362 : InImage map_15_129 image2362 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2362 : Bundle := named_bundle% "RealMapCertificates/relations/basis2362.json"
theorem reductionProof2362 : EqualModuloRelations reduction2362.relations reduction2362.input reduction2362.output := by lin_cert using reduction2362.terms
theorem substitutionProof2362 : IsMapEvaluation generatorImages reduction2362.relations [328] reduction2362.output := by lin_cert using reduction2362.terms
def image2363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2363 : InImage map_15_129 image2363 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2363 : Bundle := named_bundle% "RealMapCertificates/relations/basis2363.json"
theorem reductionProof2363 : EqualModuloRelations reduction2363.relations reduction2363.input reduction2363.output := by lin_cert using reduction2363.terms
theorem substitutionProof2363 : IsMapEvaluation generatorImages reduction2363.relations [0,67,67] reduction2363.output := by lin_cert using reduction2363.terms
def map_15_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2416 : InImage map_15_130 image2416 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2416 : Bundle := named_bundle% "RealMapCertificates/relations/basis2416.json"
theorem reductionProof2416 : EqualModuloRelations reduction2416.relations reduction2416.input reduction2416.output := by lin_cert using reduction2416.terms
theorem substitutionProof2416 : IsMapEvaluation generatorImages reduction2416.relations [1,1,308] reduction2416.output := by lin_cert using reduction2416.terms
def image2417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2417 : InImage map_15_130 image2417 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2417 : Bundle := named_bundle% "RealMapCertificates/relations/basis2417.json"
theorem reductionProof2417 : EqualModuloRelations reduction2417.relations reduction2417.input reduction2417.output := by lin_cert using reduction2417.terms
theorem substitutionProof2417 : IsMapEvaluation generatorImages reduction2417.relations [0,0,319] reduction2417.output := by lin_cert using reduction2417.terms
def map_15_131 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2469 : InImage map_15_131 image2469 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2469 : Bundle := named_bundle% "RealMapCertificates/relations/basis2469.json"
theorem reductionProof2469 : EqualModuloRelations reduction2469.relations reduction2469.input reduction2469.output := by lin_cert using reduction2469.terms
theorem substitutionProof2469 : IsMapEvaluation generatorImages reduction2469.relations [350] reduction2469.output := by lin_cert using reduction2469.terms
def image2470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2470 : InImage map_15_131 image2470 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2470 : Bundle := named_bundle% "RealMapCertificates/relations/basis2470.json"
theorem reductionProof2470 : EqualModuloRelations reduction2470.relations reduction2470.input reduction2470.output := by lin_cert using reduction2470.terms
theorem substitutionProof2470 : IsMapEvaluation generatorImages reduction2470.relations [349] reduction2470.output := by lin_cert using reduction2470.terms
def image2471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2471 : InImage map_15_131 image2471 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2471 : Bundle := named_bundle% "RealMapCertificates/relations/basis2471.json"
theorem reductionProof2471 : EqualModuloRelations reduction2471.relations reduction2471.input reduction2471.output := by lin_cert using reduction2471.terms
theorem substitutionProof2471 : IsMapEvaluation generatorImages reduction2471.relations [3,285] reduction2471.output := by lin_cert using reduction2471.terms
def image2472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2472 : InImage map_15_131 image2472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2472 : Bundle := named_bundle% "RealMapCertificates/relations/basis2472.json"
theorem reductionProof2472 : EqualModuloRelations reduction2472.relations reduction2472.input reduction2472.output := by lin_cert using reduction2472.terms
theorem substitutionProof2472 : IsMapEvaluation generatorImages reduction2472.relations [2,2,287] reduction2472.output := by lin_cert using reduction2472.terms
def map_15_132 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2551 : InImage map_15_132 image2551 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2551 : Bundle := named_bundle% "RealMapCertificates/relations/basis2551.json"
theorem reductionProof2551 : EqualModuloRelations reduction2551.relations reduction2551.input reduction2551.output := by lin_cert using reduction2551.terms
theorem substitutionProof2551 : IsMapEvaluation generatorImages reduction2551.relations [360] reduction2551.output := by lin_cert using reduction2551.terms
def image2552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2552 : InImage map_15_132 image2552 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2552 : Bundle := named_bundle% "RealMapCertificates/relations/basis2552.json"
theorem reductionProof2552 : EqualModuloRelations reduction2552.relations reduction2552.input reduction2552.output := by lin_cert using reduction2552.terms
theorem substitutionProof2552 : IsMapEvaluation generatorImages reduction2552.relations [0,0,0,0,0,312] reduction2552.output := by lin_cert using reduction2552.terms
def image2553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2553 : InImage map_15_132 image2553 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2553 : Bundle := named_bundle% "RealMapCertificates/relations/basis2553.json"
theorem reductionProof2553 : EqualModuloRelations reduction2553.relations reduction2553.input reduction2553.output := by lin_cert using reduction2553.terms
theorem substitutionProof2553 : IsMapEvaluation generatorImages reduction2553.relations [0,0,0,0,0,311] reduction2553.output := by lin_cert using reduction2553.terms
def map_15_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2614 : InImage map_15_133 image2614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2614 : Bundle := named_bundle% "RealMapCertificates/relations/basis2614.json"
theorem reductionProof2614 : EqualModuloRelations reduction2614.relations reduction2614.input reduction2614.output := by lin_cert using reduction2614.terms
theorem substitutionProof2614 : IsMapEvaluation generatorImages reduction2614.relations [1,3,287] reduction2614.output := by lin_cert using reduction2614.terms
def image2615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2615 : InImage map_15_133 image2615 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2615 : Bundle := named_bundle% "RealMapCertificates/relations/basis2615.json"
theorem reductionProof2615 : EqualModuloRelations reduction2615.relations reduction2615.input reduction2615.output := by lin_cert using reduction2615.terms
theorem substitutionProof2615 : IsMapEvaluation generatorImages reduction2615.relations [0,0,0,0,0,0,314] reduction2615.output := by lin_cert using reduction2615.terms
def map_15_134 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2676 : InImage map_15_134 image2676 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2676 : Bundle := named_bundle% "RealMapCertificates/relations/basis2676.json"
theorem reductionProof2676 : EqualModuloRelations reduction2676.relations reduction2676.input reduction2676.output := by lin_cert using reduction2676.terms
theorem substitutionProof2676 : IsMapEvaluation generatorImages reduction2676.relations [384] reduction2676.output := by lin_cert using reduction2676.terms
def image2677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2677 : InImage map_15_134 image2677 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2677 : Bundle := named_bundle% "RealMapCertificates/relations/basis2677.json"
theorem reductionProof2677 : EqualModuloRelations reduction2677.relations reduction2677.input reduction2677.output := by lin_cert using reduction2677.terms
theorem substitutionProof2677 : IsMapEvaluation generatorImages reduction2677.relations [1,361] reduction2677.output := by lin_cert using reduction2677.terms
def image2678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2678 : InImage map_15_134 image2678 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2678 : Bundle := named_bundle% "RealMapCertificates/relations/basis2678.json"
theorem reductionProof2678 : EqualModuloRelations reduction2678.relations reduction2678.input reduction2678.output := by lin_cert using reduction2678.terms
theorem substitutionProof2678 : IsMapEvaluation generatorImages reduction2678.relations [0,370] reduction2678.output := by lin_cert using reduction2678.terms
def map_15_136 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2839 : InImage map_15_136 image2839 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2839 : Bundle := named_bundle% "RealMapCertificates/relations/basis2839.json"
theorem reductionProof2839 : EqualModuloRelations reduction2839.relations reduction2839.input reduction2839.output := by lin_cert using reduction2839.terms
theorem substitutionProof2839 : IsMapEvaluation generatorImages reduction2839.relations [7,267] reduction2839.output := by lin_cert using reduction2839.terms
def image2840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2840 : InImage map_15_136 image2840 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2840 : Bundle := named_bundle% "RealMapCertificates/relations/basis2840.json"
theorem reductionProof2840 : EqualModuloRelations reduction2840.relations reduction2840.input reduction2840.output := by lin_cert using reduction2840.terms
theorem substitutionProof2840 : IsMapEvaluation generatorImages reduction2840.relations [1,385] reduction2840.output := by lin_cert using reduction2840.terms
def map_15_137 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2909 : InImage map_15_137 image2909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2909 : Bundle := named_bundle% "RealMapCertificates/relations/basis2909.json"
theorem reductionProof2909 : EqualModuloRelations reduction2909.relations reduction2909.input reduction2909.output := by lin_cert using reduction2909.terms
theorem substitutionProof2909 : IsMapEvaluation generatorImages reduction2909.relations [424] reduction2909.output := by lin_cert using reduction2909.terms
def image2910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2910 : InImage map_15_137 image2910 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2910 : Bundle := named_bundle% "RealMapCertificates/relations/basis2910.json"
theorem reductionProof2910 : EqualModuloRelations reduction2910.relations reduction2910.input reduction2910.output := by lin_cert using reduction2910.terms
theorem substitutionProof2910 : IsMapEvaluation generatorImages reduction2910.relations [423] reduction2910.output := by lin_cert using reduction2910.terms
def map_15_138 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3000 : InImage map_15_138 image3000 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3000 : Bundle := named_bundle% "RealMapCertificates/relations/basis3000.json"
theorem reductionProof3000 : EqualModuloRelations reduction3000.relations reduction3000.input reduction3000.output := by lin_cert using reduction3000.terms
theorem substitutionProof3000 : IsMapEvaluation generatorImages reduction3000.relations [438] reduction3000.output := by lin_cert using reduction3000.terms
def image3001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3001 : InImage map_15_138 image3001 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3001 : Bundle := named_bundle% "RealMapCertificates/relations/basis3001.json"
theorem reductionProof3001 : EqualModuloRelations reduction3001.relations reduction3001.input reduction3001.output := by lin_cert using reduction3001.terms
theorem substitutionProof3001 : IsMapEvaluation generatorImages reduction3001.relations [7,279] reduction3001.output := by lin_cert using reduction3001.terms
def image3002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3002 : InImage map_15_138 image3002 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3002 : Bundle := named_bundle% "RealMapCertificates/relations/basis3002.json"
theorem reductionProof3002 : EqualModuloRelations reduction3002.relations reduction3002.input reduction3002.output := by lin_cert using reduction3002.terms
theorem substitutionProof3002 : IsMapEvaluation generatorImages reduction3002.relations [0,0,418] reduction3002.output := by lin_cert using reduction3002.terms
def map_15_139 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3075 : InImage map_15_139 image3075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3075 : Bundle := named_bundle% "RealMapCertificates/relations/basis3075.json"
theorem reductionProof3075 : EqualModuloRelations reduction3075.relations reduction3075.input reduction3075.output := by lin_cert using reduction3075.terms
theorem substitutionProof3075 : IsMapEvaluation generatorImages reduction3075.relations [448] reduction3075.output := by lin_cert using reduction3075.terms
def image3076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3076 : InImage map_15_139 image3076 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3076 : Bundle := named_bundle% "RealMapCertificates/relations/basis3076.json"
theorem reductionProof3076 : EqualModuloRelations reduction3076.relations reduction3076.input reduction3076.output := by lin_cert using reduction3076.terms
theorem substitutionProof3076 : IsMapEvaluation generatorImages reduction3076.relations [3,3,287] reduction3076.output := by lin_cert using reduction3076.terms
def image3077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3077 : InImage map_15_139 image3077 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3077 : Bundle := named_bundle% "RealMapCertificates/relations/basis3077.json"
theorem reductionProof3077 : EqualModuloRelations reduction3077.relations reduction3077.input reduction3077.output := by lin_cert using reduction3077.terms
theorem substitutionProof3077 : IsMapEvaluation generatorImages reduction3077.relations [0,440] reduction3077.output := by lin_cert using reduction3077.terms
def image3078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3078 : InImage map_15_139 image3078 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3078 : Bundle := named_bundle% "RealMapCertificates/relations/basis3078.json"
theorem reductionProof3078 : EqualModuloRelations reduction3078.relations reduction3078.input reduction3078.output := by lin_cert using reduction3078.terms
theorem substitutionProof3078 : IsMapEvaluation generatorImages reduction3078.relations [0,439] reduction3078.output := by lin_cert using reduction3078.terms
def map_15_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3150 : InImage map_15_140 image3150 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3150 : Bundle := named_bundle% "RealMapCertificates/relations/basis3150.json"
theorem reductionProof3150 : EqualModuloRelations reduction3150.relations reduction3150.input reduction3150.output := by lin_cert using reduction3150.terms
theorem substitutionProof3150 : IsMapEvaluation generatorImages reduction3150.relations [456] reduction3150.output := by lin_cert using reduction3150.terms
def image3151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3151 : InImage map_15_140 image3151 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3151 : Bundle := named_bundle% "RealMapCertificates/relations/basis3151.json"
theorem reductionProof3151 : EqualModuloRelations reduction3151.relations reduction3151.input reduction3151.output := by lin_cert using reduction3151.terms
theorem substitutionProof3151 : IsMapEvaluation generatorImages reduction3151.relations [67,107] reduction3151.output := by lin_cert using reduction3151.terms
def image3152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3152 : InImage map_15_140 image3152 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3152 : Bundle := named_bundle% "RealMapCertificates/relations/basis3152.json"
theorem reductionProof3152 : EqualModuloRelations reduction3152.relations reduction3152.input reduction3152.output := by lin_cert using reduction3152.terms
theorem substitutionProof3152 : IsMapEvaluation generatorImages reduction3152.relations [1,439] reduction3152.output := by lin_cert using reduction3152.terms
def image3153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3153 : InImage map_15_140 image3153 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3153 : Bundle := named_bundle% "RealMapCertificates/relations/basis3153.json"
theorem reductionProof3153 : EqualModuloRelations reduction3153.relations reduction3153.input reduction3153.output := by lin_cert using reduction3153.terms
theorem substitutionProof3153 : IsMapEvaluation generatorImages reduction3153.relations [0,449] reduction3153.output := by lin_cert using reduction3153.terms
def image3154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3154 : InImage map_15_140 image3154 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3154 : Bundle := named_bundle% "RealMapCertificates/relations/basis3154.json"
theorem reductionProof3154 : EqualModuloRelations reduction3154.relations reduction3154.input reduction3154.output := by lin_cert using reduction3154.terms
theorem substitutionProof3154 : IsMapEvaluation generatorImages reduction3154.relations [0,0,0,425] reduction3154.output := by lin_cert using reduction3154.terms
def map_15_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3257 : InImage map_15_141 image3257 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3257 : Bundle := named_bundle% "RealMapCertificates/relations/basis3257.json"
theorem reductionProof3257 : EqualModuloRelations reduction3257.relations reduction3257.input reduction3257.output := by lin_cert using reduction3257.terms
theorem substitutionProof3257 : IsMapEvaluation generatorImages reduction3257.relations [0,68,107] reduction3257.output := by lin_cert using reduction3257.terms
def image3258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3258 : InImage map_15_141 image3258 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3258 : Bundle := named_bundle% "RealMapCertificates/relations/basis3258.json"
theorem reductionProof3258 : EqualModuloRelations reduction3258.relations reduction3258.input reduction3258.output := by lin_cert using reduction3258.terms
theorem substitutionProof3258 : IsMapEvaluation generatorImages reduction3258.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,69,69] reduction3258.output := by lin_cert using reduction3258.terms
def map_15_142 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3324 : InImage map_15_142 image3324 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3324 : Bundle := named_bundle% "RealMapCertificates/relations/basis3324.json"
theorem reductionProof3324 : EqualModuloRelations reduction3324.relations reduction3324.input reduction3324.output := by lin_cert using reduction3324.terms
theorem substitutionProof3324 : IsMapEvaluation generatorImages reduction3324.relations [481] reduction3324.output := by lin_cert using reduction3324.terms
def image3325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3325 : InImage map_15_142 image3325 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3325 : Bundle := named_bundle% "RealMapCertificates/relations/basis3325.json"
theorem reductionProof3325 : EqualModuloRelations reduction3325.relations reduction3325.input reduction3325.output := by lin_cert using reduction3325.terms
theorem substitutionProof3325 : IsMapEvaluation generatorImages reduction3325.relations [69,112] reduction3325.output := by lin_cert using reduction3325.terms
def image3326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3326 : InImage map_15_142 image3326 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3326 : Bundle := named_bundle% "RealMapCertificates/relations/basis3326.json"
theorem reductionProof3326 : EqualModuloRelations reduction3326.relations reduction3326.input reduction3326.output := by lin_cert using reduction3326.terms
theorem substitutionProof3326 : IsMapEvaluation generatorImages reduction3326.relations [2,439] reduction3326.output := by lin_cert using reduction3326.terms
def image3327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3327 : InImage map_15_142 image3327 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3327 : Bundle := named_bundle% "RealMapCertificates/relations/basis3327.json"
theorem reductionProof3327 : EqualModuloRelations reduction3327.relations reduction3327.input reduction3327.output := by lin_cert using reduction3327.terms
theorem substitutionProof3327 : IsMapEvaluation generatorImages reduction3327.relations [1,457] reduction3327.output := by lin_cert using reduction3327.terms
def image3328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3328 : InImage map_15_142 image3328 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3328 : Bundle := named_bundle% "RealMapCertificates/relations/basis3328.json"
theorem reductionProof3328 : EqualModuloRelations reduction3328.relations reduction3328.input reduction3328.output := by lin_cert using reduction3328.terms
theorem substitutionProof3328 : IsMapEvaluation generatorImages reduction3328.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3328.output := by lin_cert using reduction3328.terms
def map_15_143 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3403 : InImage map_15_143 image3403 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3403 : Bundle := named_bundle% "RealMapCertificates/relations/basis3403.json"
theorem reductionProof3403 : EqualModuloRelations reduction3403.relations reduction3403.input reduction3403.output := by lin_cert using reduction3403.terms
theorem substitutionProof3403 : IsMapEvaluation generatorImages reduction3403.relations [495] reduction3403.output := by lin_cert using reduction3403.terms
def image3404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3404 : InImage map_15_143 image3404 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3404 : Bundle := named_bundle% "RealMapCertificates/relations/basis3404.json"
theorem reductionProof3404 : EqualModuloRelations reduction3404.relations reduction3404.input reduction3404.output := by lin_cert using reduction3404.terms
theorem substitutionProof3404 : IsMapEvaluation generatorImages reduction3404.relations [13,262] reduction3404.output := by lin_cert using reduction3404.terms
def image3405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3405 : InImage map_15_143 image3405 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3405 : Bundle := named_bundle% "RealMapCertificates/relations/basis3405.json"
theorem reductionProof3405 : EqualModuloRelations reduction3405.relations reduction3405.input reduction3405.output := by lin_cert using reduction3405.terms
theorem substitutionProof3405 : IsMapEvaluation generatorImages reduction3405.relations [0,482] reduction3405.output := by lin_cert using reduction3405.terms
def image3406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3406 : InImage map_15_143 image3406 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3406 : Bundle := named_bundle% "RealMapCertificates/relations/basis3406.json"
theorem reductionProof3406 : EqualModuloRelations reduction3406.relations reduction3406.input reduction3406.output := by lin_cert using reduction3406.terms
theorem substitutionProof3406 : IsMapEvaluation generatorImages reduction3406.relations [0,69,113] reduction3406.output := by lin_cert using reduction3406.terms
def image3407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3407 : InImage map_15_143 image3407 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3407 : Bundle := named_bundle% "RealMapCertificates/relations/basis3407.json"
theorem reductionProof3407 : EqualModuloRelations reduction3407.relations reduction3407.input reduction3407.output := by lin_cert using reduction3407.terms
theorem substitutionProof3407 : IsMapEvaluation generatorImages reduction3407.relations [0,0,475] reduction3407.output := by lin_cert using reduction3407.terms
def map_15_144 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3502 : InImage map_15_144 image3502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3502 : Bundle := named_bundle% "RealMapCertificates/relations/basis3502.json"
theorem reductionProof3502 : EqualModuloRelations reduction3502.relations reduction3502.input reduction3502.output := by lin_cert using reduction3502.terms
theorem substitutionProof3502 : IsMapEvaluation generatorImages reduction3502.relations [23,213] reduction3502.output := by lin_cert using reduction3502.terms
def image3503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3503 : InImage map_15_144 image3503 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3503 : Bundle := named_bundle% "RealMapCertificates/relations/basis3503.json"
theorem reductionProof3503 : EqualModuloRelations reduction3503.relations reduction3503.input reduction3503.output := by lin_cert using reduction3503.terms
theorem substitutionProof3503 : IsMapEvaluation generatorImages reduction3503.relations [0,74,107] reduction3503.output := by lin_cert using reduction3503.terms
def image3504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3504 : InImage map_15_144 image3504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3504 : Bundle := named_bundle% "RealMapCertificates/relations/basis3504.json"
theorem reductionProof3504 : EqualModuloRelations reduction3504.relations reduction3504.input reduction3504.output := by lin_cert using reduction3504.terms
theorem substitutionProof3504 : IsMapEvaluation generatorImages reduction3504.relations [0,3,407] reduction3504.output := by lin_cert using reduction3504.terms
def map_15_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3571 : InImage map_15_145 image3571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3571 : Bundle := named_bundle% "RealMapCertificates/relations/basis3571.json"
theorem reductionProof3571 : EqualModuloRelations reduction3571.relations reduction3571.input reduction3571.output := by lin_cert using reduction3571.terms
theorem substitutionProof3571 : IsMapEvaluation generatorImages reduction3571.relations [8,64,69] reduction3571.output := by lin_cert using reduction3571.terms
def image3572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3572 : InImage map_15_145 image3572 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3572 : Bundle := named_bundle% "RealMapCertificates/relations/basis3572.json"
theorem reductionProof3572 : EqualModuloRelations reduction3572.relations reduction3572.input reduction3572.output := by lin_cert using reduction3572.terms
theorem substitutionProof3572 : IsMapEvaluation generatorImages reduction3572.relations [0,7,319] reduction3572.output := by lin_cert using reduction3572.terms
def image3573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3573 : InImage map_15_145 image3573 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3573 : Bundle := named_bundle% "RealMapCertificates/relations/basis3573.json"
theorem reductionProof3573 : EqualModuloRelations reduction3573.relations reduction3573.input reduction3573.output := by lin_cert using reduction3573.terms
theorem substitutionProof3573 : IsMapEvaluation generatorImages reduction3573.relations [0,0,0,484] reduction3573.output := by lin_cert using reduction3573.terms
end RealMapCertificates
