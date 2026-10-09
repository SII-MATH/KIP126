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
  | 17 => [[4,7]]
  | 18 => []
  | 23 => [[7,7]]
  | 27 => [[1,4,4,4]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 43 => []
  | 67 => []
  | 69 => []
  | 70 => []
  | 72 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 174 => []
  | 189 => []
  | 190 => []
  | 191 => []
  | 197 => []
  | 203 => []
  | 209 => []
  | 213 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 319 => []
  | 324 => []
  | 331 => []
  | 333 => []
  | 337 => []
  | 351 => []
  | 363 => []
  | 366 => []
  | 367 => []
  | 373 => []
  | 385 => []
  | 411 => []
  | 414 => []
  | 415 => []
  | 417 => []
  | 425 => []
  | 443 => []
  | 475 => []
  | 482 => []
  | 484 => []
  | 485 => []
  | 486 => []
  | 502 => []
  | 531 => []
  | 533 => []
  | 540 => []
  | 562 => []
  | 570 => []
  | 575 => []
  | 583 => []
  | 589 => []
  | 614 => []
  | 619 => []
  | 630 => []
  | 650 => []
  | 652 => []
  | 669 => []
  | 670 => []
  | 671 => []
  | 676 => []
  | 678 => []
  | 679 => []
  | 680 => []
  | 694 => []
  | 708 => []
  | 709 => []
  | 719 => []
  | 730 => []
  | 731 => []
  | 732 => []
  | 740 => []
  | 741 => []
  | 743 => []
  | 764 => []
  | 765 => []
  | 766 => []
  | 767 => []
  | 787 => []
  | 799 => []
  | 800 => []
  | 801 => []
  | 814 => []
  | 815 => []
  | 824 => []
  | 825 => []
  | 841 => []
  | 843 => []
  | _ => []
def map_15_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3648 : InImage map_15_146 image3648 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3648 : Bundle := named_bundle% "RealMapCertificates/relations/basis3648.json"
theorem reductionProof3648 : EqualModuloRelations reduction3648.relations reduction3648.input reduction3648.output := by lin_cert using reduction3648.terms
theorem substitutionProof3648 : IsMapEvaluation generatorImages reduction3648.relations [2,482] reduction3648.output := by lin_cert using reduction3648.terms
def image3649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3649 : InImage map_15_146 image3649 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3649 : Bundle := named_bundle% "RealMapCertificates/relations/basis3649.json"
theorem reductionProof3649 : EqualModuloRelations reduction3649.relations reduction3649.input reduction3649.output := by lin_cert using reduction3649.terms
theorem substitutionProof3649 : IsMapEvaluation generatorImages reduction3649.relations [1,7,319] reduction3649.output := by lin_cert using reduction3649.terms
def image3650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3650 : InImage map_15_146 image3650 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3650 : Bundle := named_bundle% "RealMapCertificates/relations/basis3650.json"
theorem reductionProof3650 : EqualModuloRelations reduction3650.relations reduction3650.input reduction3650.output := by lin_cert using reduction3650.terms
theorem substitutionProof3650 : IsMapEvaluation generatorImages reduction3650.relations [1,3,417] reduction3650.output := by lin_cert using reduction3650.terms
def image3651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3651 : InImage map_15_146 image3651 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3651 : Bundle := named_bundle% "RealMapCertificates/relations/basis3651.json"
theorem reductionProof3651 : EqualModuloRelations reduction3651.relations reduction3651.input reduction3651.output := by lin_cert using reduction3651.terms
theorem substitutionProof3651 : IsMapEvaluation generatorImages reduction3651.relations [0,8,312] reduction3651.output := by lin_cert using reduction3651.terms
def image3652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3652 : InImage map_15_146 image3652 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3652 : Bundle := named_bundle% "RealMapCertificates/relations/basis3652.json"
theorem reductionProof3652 : EqualModuloRelations reduction3652.relations reduction3652.input reduction3652.output := by lin_cert using reduction3652.terms
theorem substitutionProof3652 : IsMapEvaluation generatorImages reduction3652.relations [0,0,502] reduction3652.output := by lin_cert using reduction3652.terms
def map_15_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3762 : InImage map_15_147 image3762 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3762 : Bundle := named_bundle% "RealMapCertificates/relations/basis3762.json"
theorem reductionProof3762 : EqualModuloRelations reduction3762.relations reduction3762.input reduction3762.output := by lin_cert using reduction3762.terms
theorem substitutionProof3762 : IsMapEvaluation generatorImages reduction3762.relations [0,0,3,425] reduction3762.output := by lin_cert using reduction3762.terms
def image3763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3763 : InImage map_15_147 image3763 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3763 : Bundle := named_bundle% "RealMapCertificates/relations/basis3763.json"
theorem reductionProof3763 : EqualModuloRelations reduction3763.relations reduction3763.input reduction3763.output := by lin_cert using reduction3763.terms
theorem substitutionProof3763 : IsMapEvaluation generatorImages reduction3763.relations [0,0,0,0,7,311] reduction3763.output := by lin_cert using reduction3763.terms
def map_15_148 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3827 : InImage map_15_148 image3827 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3827 : Bundle := named_bundle% "RealMapCertificates/relations/basis3827.json"
theorem reductionProof3827 : EqualModuloRelations reduction3827.relations reduction3827.input reduction3827.output := by lin_cert using reduction3827.terms
theorem substitutionProof3827 : IsMapEvaluation generatorImages reduction3827.relations [8,69,72] reduction3827.output := by lin_cert using reduction3827.terms
def image3828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3828 : InImage map_15_148 image3828 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3828 : Bundle := named_bundle% "RealMapCertificates/relations/basis3828.json"
theorem reductionProof3828 : EqualModuloRelations reduction3828.relations reduction3828.input reduction3828.output := by lin_cert using reduction3828.terms
theorem substitutionProof3828 : IsMapEvaluation generatorImages reduction3828.relations [0,0,0,0,0,7,314] reduction3828.output := by lin_cert using reduction3828.terms
def map_15_149 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3916 : InImage map_15_149 image3916 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3916 : Bundle := named_bundle% "RealMapCertificates/relations/basis3916.json"
theorem reductionProof3916 : EqualModuloRelations reduction3916.relations reduction3916.input reduction3916.output := by lin_cert using reduction3916.terms
theorem substitutionProof3916 : IsMapEvaluation generatorImages reduction3916.relations [8,351] reduction3916.output := by lin_cert using reduction3916.terms
def image3917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3917 : InImage map_15_149 image3917 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3917 : Bundle := named_bundle% "RealMapCertificates/relations/basis3917.json"
theorem reductionProof3917 : EqualModuloRelations reduction3917.relations reduction3917.input reduction3917.output := by lin_cert using reduction3917.terms
theorem substitutionProof3917 : IsMapEvaluation generatorImages reduction3917.relations [1,531] reduction3917.output := by lin_cert using reduction3917.terms
def image3918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3918 : InImage map_15_149 image3918 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3918 : Bundle := named_bundle% "RealMapCertificates/relations/basis3918.json"
theorem reductionProof3918 : EqualModuloRelations reduction3918.relations reduction3918.input reduction3918.output := by lin_cert using reduction3918.terms
theorem substitutionProof3918 : IsMapEvaluation generatorImages reduction3918.relations [0,8,337] reduction3918.output := by lin_cert using reduction3918.terms
def image3919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3919 : InImage map_15_149 image3919 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3919 : Bundle := named_bundle% "RealMapCertificates/relations/basis3919.json"
theorem reductionProof3919 : EqualModuloRelations reduction3919.relations reduction3919.input reduction3919.output := by lin_cert using reduction3919.terms
theorem substitutionProof3919 : IsMapEvaluation generatorImages reduction3919.relations [0,3,3,363] reduction3919.output := by lin_cert using reduction3919.terms
def image3920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3920 : InImage map_15_149 image3920 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3920 : Bundle := named_bundle% "RealMapCertificates/relations/basis3920.json"
theorem reductionProof3920 : EqualModuloRelations reduction3920.relations reduction3920.input reduction3920.output := by lin_cert using reduction3920.terms
theorem substitutionProof3920 : IsMapEvaluation generatorImages reduction3920.relations [0,0,533] reduction3920.output := by lin_cert using reduction3920.terms
def image3921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3921 : InImage map_15_149 image3921 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3921 : Bundle := named_bundle% "RealMapCertificates/relations/basis3921.json"
theorem reductionProof3921 : EqualModuloRelations reduction3921.relations reduction3921.input reduction3921.output := by lin_cert using reduction3921.terms
theorem substitutionProof3921 : IsMapEvaluation generatorImages reduction3921.relations [0,0,8,333] reduction3921.output := by lin_cert using reduction3921.terms
def map_15_150 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4020 : InImage map_15_150 image4020 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4020 : Bundle := named_bundle% "RealMapCertificates/relations/basis4020.json"
theorem reductionProof4020 : EqualModuloRelations reduction4020.relations reduction4020.input reduction4020.output := by lin_cert using reduction4020.terms
theorem substitutionProof4020 : IsMapEvaluation generatorImages reduction4020.relations [9,331] reduction4020.output := by lin_cert using reduction4020.terms
def image4021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4021 : InImage map_15_150 image4021 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4021 : Bundle := named_bundle% "RealMapCertificates/relations/basis4021.json"
theorem reductionProof4021 : EqualModuloRelations reduction4021.relations reduction4021.input reduction4021.output := by lin_cert using reduction4021.terms
theorem substitutionProof4021 : IsMapEvaluation generatorImages reduction4021.relations [7,385] reduction4021.output := by lin_cert using reduction4021.terms
def image4022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4022 : InImage map_15_150 image4022 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4022 : Bundle := named_bundle% "RealMapCertificates/relations/basis4022.json"
theorem reductionProof4022 : EqualModuloRelations reduction4022.relations reduction4022.input reduction4022.output := by lin_cert using reduction4022.terms
theorem substitutionProof4022 : IsMapEvaluation generatorImages reduction4022.relations [0,0,540] reduction4022.output := by lin_cert using reduction4022.terms
def map_15_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4109 : InImage map_15_151 image4109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4109 : Bundle := named_bundle% "RealMapCertificates/relations/basis4109.json"
theorem reductionProof4109 : EqualModuloRelations reduction4109.relations reduction4109.input reduction4109.output := by lin_cert using reduction4109.terms
theorem substitutionProof4109 : IsMapEvaluation generatorImages reduction4109.relations [8,69,79] reduction4109.output := by lin_cert using reduction4109.terms
def map_15_152 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4196 : InImage map_15_152 image4196 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4196 : Bundle := named_bundle% "RealMapCertificates/relations/basis4196.json"
theorem reductionProof4196 : EqualModuloRelations reduction4196.relations reduction4196.input reduction4196.output := by lin_cert using reduction4196.terms
theorem substitutionProof4196 : IsMapEvaluation generatorImages reduction4196.relations [1,43,189] reduction4196.output := by lin_cert using reduction4196.terms
def image4197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4197 : InImage map_15_152 image4197 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4197 : Bundle := named_bundle% "RealMapCertificates/relations/basis4197.json"
theorem reductionProof4197 : EqualModuloRelations reduction4197.relations reduction4197.input reduction4197.output := by lin_cert using reduction4197.terms
theorem substitutionProof4197 : IsMapEvaluation generatorImages reduction4197.relations [1,1,540] reduction4197.output := by lin_cert using reduction4197.terms
def image4198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4198 : InImage map_15_152 image4198 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4198 : Bundle := named_bundle% "RealMapCertificates/relations/basis4198.json"
theorem reductionProof4198 : EqualModuloRelations reduction4198.relations reduction4198.input reduction4198.output := by lin_cert using reduction4198.terms
theorem substitutionProof4198 : IsMapEvaluation generatorImages reduction4198.relations [0,8,69,80] reduction4198.output := by lin_cert using reduction4198.terms
def image4199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4199 : InImage map_15_152 image4199 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4199 : Bundle := named_bundle% "RealMapCertificates/relations/basis4199.json"
theorem reductionProof4199 : EqualModuloRelations reduction4199.relations reduction4199.input reduction4199.output := by lin_cert using reduction4199.terms
theorem substitutionProof4199 : IsMapEvaluation generatorImages reduction4199.relations [0,0,8,366] reduction4199.output := by lin_cert using reduction4199.terms
def image4200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4200 : InImage map_15_152 image4200 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4200 : Bundle := named_bundle% "RealMapCertificates/relations/basis4200.json"
theorem reductionProof4200 : EqualModuloRelations reduction4200.relations reduction4200.input reduction4200.output := by lin_cert using reduction4200.terms
theorem substitutionProof4200 : IsMapEvaluation generatorImages reduction4200.relations [0,0,3,484] reduction4200.output := by lin_cert using reduction4200.terms
def map_15_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4296 : InImage map_15_153 image4296 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4296 : Bundle := named_bundle% "RealMapCertificates/relations/basis4296.json"
theorem reductionProof4296 : EqualModuloRelations reduction4296.relations reduction4296.input reduction4296.output := by lin_cert using reduction4296.terms
theorem substitutionProof4296 : IsMapEvaluation generatorImages reduction4296.relations [13,331] reduction4296.output := by lin_cert using reduction4296.terms
def map_15_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4359 : InImage map_15_154 image4359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4359 : Bundle := named_bundle% "RealMapCertificates/relations/basis4359.json"
theorem reductionProof4359 : EqualModuloRelations reduction4359.relations reduction4359.input reduction4359.output := by lin_cert using reduction4359.terms
theorem substitutionProof4359 : IsMapEvaluation generatorImages reduction4359.relations [8,69,89] reduction4359.output := by lin_cert using reduction4359.terms
def image4360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4360 : InImage map_15_154 image4360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4360 : Bundle := named_bundle% "RealMapCertificates/relations/basis4360.json"
theorem reductionProof4360 : EqualModuloRelations reduction4360.relations reduction4360.input reduction4360.output := by lin_cert using reduction4360.terms
theorem substitutionProof4360 : IsMapEvaluation generatorImages reduction4360.relations [0,0,0,0,562] reduction4360.output := by lin_cert using reduction4360.terms
def map_15_155 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4451 : InImage map_15_155 image4451 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4451 : Bundle := named_bundle% "RealMapCertificates/relations/basis4451.json"
theorem reductionProof4451 : EqualModuloRelations reduction4451.relations reduction4451.input reduction4451.output := by lin_cert using reduction4451.terms
theorem substitutionProof4451 : IsMapEvaluation generatorImages reduction4451.relations [1,4,486] reduction4451.output := by lin_cert using reduction4451.terms
def image4452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4452 : InImage map_15_155 image4452 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4452 : Bundle := named_bundle% "RealMapCertificates/relations/basis4452.json"
theorem reductionProof4452 : EqualModuloRelations reduction4452.relations reduction4452.input reduction4452.output := by lin_cert using reduction4452.terms
theorem substitutionProof4452 : IsMapEvaluation generatorImages reduction4452.relations [0,0,8,414] reduction4452.output := by lin_cert using reduction4452.terms
def image4453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4453 : InImage map_15_155 image4453 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4453 : Bundle := named_bundle% "RealMapCertificates/relations/basis4453.json"
theorem reductionProof4453 : EqualModuloRelations reduction4453.relations reduction4453.input reduction4453.output := by lin_cert using reduction4453.terms
theorem substitutionProof4453 : IsMapEvaluation generatorImages reduction4453.relations [0,0,0,575] reduction4453.output := by lin_cert using reduction4453.terms
def map_15_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4557 : InImage map_15_156 image4557 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4557 : Bundle := named_bundle% "RealMapCertificates/relations/basis4557.json"
theorem reductionProof4557 : EqualModuloRelations reduction4557.relations reduction4557.input reduction4557.output := by lin_cert using reduction4557.terms
theorem substitutionProof4557 : IsMapEvaluation generatorImages reduction4557.relations [614] reduction4557.output := by lin_cert using reduction4557.terms
def image4558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4558 : InImage map_15_156 image4558 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4558 : Bundle := named_bundle% "RealMapCertificates/relations/basis4558.json"
theorem reductionProof4558 : EqualModuloRelations reduction4558.relations reduction4558.input reduction4558.output := by lin_cert using reduction4558.terms
theorem substitutionProof4558 : IsMapEvaluation generatorImages reduction4558.relations [0,0,589] reduction4558.output := by lin_cert using reduction4558.terms
def map_15_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4634 : InImage map_15_157 image4634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4634 : Bundle := named_bundle% "RealMapCertificates/relations/basis4634.json"
theorem reductionProof4634 : EqualModuloRelations reduction4634.relations reduction4634.input reduction4634.output := by lin_cert using reduction4634.terms
theorem substitutionProof4634 : IsMapEvaluation generatorImages reduction4634.relations [619] reduction4634.output := by lin_cert using reduction4634.terms
def image4635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4635 : InImage map_15_157 image4635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4635 : Bundle := named_bundle% "RealMapCertificates/relations/basis4635.json"
theorem reductionProof4635 : EqualModuloRelations reduction4635.relations reduction4635.input reduction4635.output := by lin_cert using reduction4635.terms
theorem substitutionProof4635 : IsMapEvaluation generatorImages reduction4635.relations [8,18,209] reduction4635.output := by lin_cert using reduction4635.terms
def image4636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4636 : InImage map_15_157 image4636 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4636 : Bundle := named_bundle% "RealMapCertificates/relations/basis4636.json"
theorem reductionProof4636 : EqualModuloRelations reduction4636.relations reduction4636.input reduction4636.output := by lin_cert using reduction4636.terms
theorem substitutionProof4636 : IsMapEvaluation generatorImages reduction4636.relations [0,3,540] reduction4636.output := by lin_cert using reduction4636.terms
def map_15_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4718 : InImage map_15_158 image4718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4718 : Bundle := named_bundle% "RealMapCertificates/relations/basis4718.json"
theorem reductionProof4718 : EqualModuloRelations reduction4718.relations reduction4718.input reduction4718.output := by lin_cert using reduction4718.terms
theorem substitutionProof4718 : IsMapEvaluation generatorImages reduction4718.relations [630] reduction4718.output := by lin_cert using reduction4718.terms
def image4719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4719 : InImage map_15_158 image4719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4719 : Bundle := named_bundle% "RealMapCertificates/relations/basis4719.json"
theorem reductionProof4719 : EqualModuloRelations reduction4719.relations reduction4719.input reduction4719.output := by lin_cert using reduction4719.terms
theorem substitutionProof4719 : IsMapEvaluation generatorImages reduction4719.relations [1,3,540] reduction4719.output := by lin_cert using reduction4719.terms
def image4720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4720 : InImage map_15_158 image4720 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4720 : Bundle := named_bundle% "RealMapCertificates/relations/basis4720.json"
theorem reductionProof4720 : EqualModuloRelations reduction4720.relations reduction4720.input reduction4720.output := by lin_cert using reduction4720.terms
theorem substitutionProof4720 : IsMapEvaluation generatorImages reduction4720.relations [0,0,8,443] reduction4720.output := by lin_cert using reduction4720.terms
def map_15_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4823 : InImage map_15_159 image4823 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4823 : Bundle := named_bundle% "RealMapCertificates/relations/basis4823.json"
theorem reductionProof4823 : EqualModuloRelations reduction4823.relations reduction4823.input reduction4823.output := by lin_cert using reduction4823.terms
theorem substitutionProof4823 : IsMapEvaluation generatorImages reduction4823.relations [13,411] reduction4823.output := by lin_cert using reduction4823.terms
def map_15_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4891 : InImage map_15_160 image4891 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4891 : Bundle := named_bundle% "RealMapCertificates/relations/basis4891.json"
theorem reductionProof4891 : EqualModuloRelations reduction4891.relations reduction4891.input reduction4891.output := by lin_cert using reduction4891.terms
theorem substitutionProof4891 : IsMapEvaluation generatorImages reduction4891.relations [650] reduction4891.output := by lin_cert using reduction4891.terms
def image4892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4892 : InImage map_15_160 image4892 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4892 : Bundle := named_bundle% "RealMapCertificates/relations/basis4892.json"
theorem reductionProof4892 : EqualModuloRelations reduction4892.relations reduction4892.input reduction4892.output := by lin_cert using reduction4892.terms
theorem substitutionProof4892 : IsMapEvaluation generatorImages reduction4892.relations [8,486] reduction4892.output := by lin_cert using reduction4892.terms
def map_15_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5097 : InImage map_15_162 image5097 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5097 : Bundle := named_bundle% "RealMapCertificates/relations/basis5097.json"
theorem reductionProof5097 : EqualModuloRelations reduction5097.relations reduction5097.input reduction5097.output := by lin_cert using reduction5097.terms
theorem substitutionProof5097 : IsMapEvaluation generatorImages reduction5097.relations [670] reduction5097.output := by lin_cert using reduction5097.terms
def image5098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5098 : InImage map_15_162 image5098 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5098 : Bundle := named_bundle% "RealMapCertificates/relations/basis5098.json"
theorem reductionProof5098 : EqualModuloRelations reduction5098.relations reduction5098.input reduction5098.output := by lin_cert using reduction5098.terms
theorem substitutionProof5098 : IsMapEvaluation generatorImages reduction5098.relations [669] reduction5098.output := by lin_cert using reduction5098.terms
def image5099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5099 : InImage map_15_162 image5099 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5099 : Bundle := named_bundle% "RealMapCertificates/relations/basis5099.json"
theorem reductionProof5099 : EqualModuloRelations reduction5099.relations reduction5099.input reduction5099.output := by lin_cert using reduction5099.terms
theorem substitutionProof5099 : IsMapEvaluation generatorImages reduction5099.relations [17,367] reduction5099.output := by lin_cert using reduction5099.terms
def map_15_163 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5173 : InImage map_15_163 image5173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5173 : Bundle := named_bundle% "RealMapCertificates/relations/basis5173.json"
theorem reductionProof5173 : EqualModuloRelations reduction5173.relations reduction5173.input reduction5173.output := by lin_cert using reduction5173.terms
theorem substitutionProof5173 : IsMapEvaluation generatorImages reduction5173.relations [679] reduction5173.output := by lin_cert using reduction5173.terms
def image5174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5174 : InImage map_15_163 image5174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5174 : Bundle := named_bundle% "RealMapCertificates/relations/basis5174.json"
theorem reductionProof5174 : EqualModuloRelations reduction5174.relations reduction5174.input reduction5174.output := by lin_cert using reduction5174.terms
theorem substitutionProof5174 : IsMapEvaluation generatorImages reduction5174.relations [678] reduction5174.output := by lin_cert using reduction5174.terms
def image5175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5175 : InImage map_15_163 image5175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5175 : Bundle := named_bundle% "RealMapCertificates/relations/basis5175.json"
theorem reductionProof5175 : EqualModuloRelations reduction5175.relations reduction5175.input reduction5175.output := by lin_cert using reduction5175.terms
theorem substitutionProof5175 : IsMapEvaluation generatorImages reduction5175.relations [67,174] reduction5175.output := by lin_cert using reduction5175.terms
def image5176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5176 : InImage map_15_163 image5176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5176 : Bundle := named_bundle% "RealMapCertificates/relations/basis5176.json"
theorem reductionProof5176 : EqualModuloRelations reduction5176.relations reduction5176.input reduction5176.output := by lin_cert using reduction5176.terms
theorem substitutionProof5176 : IsMapEvaluation generatorImages reduction5176.relations [0,671] reduction5176.output := by lin_cert using reduction5176.terms
def image5177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5177 : InImage map_15_163 image5177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5177 : Bundle := named_bundle% "RealMapCertificates/relations/basis5177.json"
theorem reductionProof5177 : EqualModuloRelations reduction5177.relations reduction5177.input reduction5177.output := by lin_cert using reduction5177.terms
theorem substitutionProof5177 : IsMapEvaluation generatorImages reduction5177.relations [0,0,0,652] reduction5177.output := by lin_cert using reduction5177.terms
def map_15_164 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5275 : InImage map_15_164 image5275 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5275 : Bundle := named_bundle% "RealMapCertificates/relations/basis5275.json"
theorem reductionProof5275 : EqualModuloRelations reduction5275.relations reduction5275.input reduction5275.output := by lin_cert using reduction5275.terms
theorem substitutionProof5275 : IsMapEvaluation generatorImages reduction5275.relations [694] reduction5275.output := by lin_cert using reduction5275.terms
def image5276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5276 : InImage map_15_164 image5276 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5276 : Bundle := named_bundle% "RealMapCertificates/relations/basis5276.json"
theorem reductionProof5276 : EqualModuloRelations reduction5276.relations reduction5276.input reduction5276.output := by lin_cert using reduction5276.terms
theorem substitutionProof5276 : IsMapEvaluation generatorImages reduction5276.relations [1,671] reduction5276.output := by lin_cert using reduction5276.terms
def map_15_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5399 : InImage map_15_165 image5399 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5399 : Bundle := named_bundle% "RealMapCertificates/relations/basis5399.json"
theorem reductionProof5399 : EqualModuloRelations reduction5399.relations reduction5399.input reduction5399.output := by lin_cert using reduction5399.terms
theorem substitutionProof5399 : IsMapEvaluation generatorImages reduction5399.relations [708] reduction5399.output := by lin_cert using reduction5399.terms
def image5400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5400 : InImage map_15_165 image5400 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5400 : Bundle := named_bundle% "RealMapCertificates/relations/basis5400.json"
theorem reductionProof5400 : EqualModuloRelations reduction5400.relations reduction5400.input reduction5400.output := by lin_cert using reduction5400.terms
theorem substitutionProof5400 : IsMapEvaluation generatorImages reduction5400.relations [17,415] reduction5400.output := by lin_cert using reduction5400.terms
def image5401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5401 : InImage map_15_165 image5401 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5401 : Bundle := named_bundle% "RealMapCertificates/relations/basis5401.json"
theorem reductionProof5401 : EqualModuloRelations reduction5401.relations reduction5401.input reduction5401.output := by lin_cert using reduction5401.terms
theorem substitutionProof5401 : IsMapEvaluation generatorImages reduction5401.relations [1,680] reduction5401.output := by lin_cert using reduction5401.terms
def map_15_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5496 : InImage map_15_166 image5496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5496 : Bundle := named_bundle% "RealMapCertificates/relations/basis5496.json"
theorem reductionProof5496 : EqualModuloRelations reduction5496.relations reduction5496.input reduction5496.output := by lin_cert using reduction5496.terms
theorem substitutionProof5496 : IsMapEvaluation generatorImages reduction5496.relations [67,190] reduction5496.output := by lin_cert using reduction5496.terms
def image5497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5497 : InImage map_15_166 image5497 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5497 : Bundle := named_bundle% "RealMapCertificates/relations/basis5497.json"
theorem reductionProof5497 : EqualModuloRelations reduction5497.relations reduction5497.input reduction5497.output := by lin_cert using reduction5497.terms
theorem substitutionProof5497 : IsMapEvaluation generatorImages reduction5497.relations [18,385] reduction5497.output := by lin_cert using reduction5497.terms
def image5498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5498 : InImage map_15_166 image5498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5498 : Bundle := named_bundle% "RealMapCertificates/relations/basis5498.json"
theorem reductionProof5498 : EqualModuloRelations reduction5498.relations reduction5498.input reduction5498.output := by lin_cert using reduction5498.terms
theorem substitutionProof5498 : IsMapEvaluation generatorImages reduction5498.relations [13,485] reduction5498.output := by lin_cert using reduction5498.terms
def image5499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5499 : InImage map_15_166 image5499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5499 : Bundle := named_bundle% "RealMapCertificates/relations/basis5499.json"
theorem reductionProof5499 : EqualModuloRelations reduction5499.relations reduction5499.input reduction5499.output := by lin_cert using reduction5499.terms
theorem substitutionProof5499 : IsMapEvaluation generatorImages reduction5499.relations [0,709] reduction5499.output := by lin_cert using reduction5499.terms
def map_15_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5597 : InImage map_15_167 image5597 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5597 : Bundle := named_bundle% "RealMapCertificates/relations/basis5597.json"
theorem reductionProof5597 : EqualModuloRelations reduction5597.relations reduction5597.input reduction5597.output := by lin_cert using reduction5597.terms
theorem substitutionProof5597 : IsMapEvaluation generatorImages reduction5597.relations [0,67,191] reduction5597.output := by lin_cert using reduction5597.terms
def map_15_168 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5720 : InImage map_15_168 image5720 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5720 : Bundle := named_bundle% "RealMapCertificates/relations/basis5720.json"
theorem reductionProof5720 : EqualModuloRelations reduction5720.relations reduction5720.input reduction5720.output := by lin_cert using reduction5720.terms
theorem substitutionProof5720 : IsMapEvaluation generatorImages reduction5720.relations [741] reduction5720.output := by lin_cert using reduction5720.terms
def image5721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5721 : InImage map_15_168 image5721 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5721 : Bundle := named_bundle% "RealMapCertificates/relations/basis5721.json"
theorem reductionProof5721 : EqualModuloRelations reduction5721.relations reduction5721.input reduction5721.output := by lin_cert using reduction5721.terms
theorem substitutionProof5721 : IsMapEvaluation generatorImages reduction5721.relations [740] reduction5721.output := by lin_cert using reduction5721.terms
def image5722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5722 : InImage map_15_168 image5722 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5722 : Bundle := named_bundle% "RealMapCertificates/relations/basis5722.json"
theorem reductionProof5722 : EqualModuloRelations reduction5722.relations reduction5722.input reduction5722.output := by lin_cert using reduction5722.terms
theorem substitutionProof5722 : IsMapEvaluation generatorImages reduction5722.relations [67,197] reduction5722.output := by lin_cert using reduction5722.terms
def image5723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5723 : InImage map_15_168 image5723 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5723 : Bundle := named_bundle% "RealMapCertificates/relations/basis5723.json"
theorem reductionProof5723 : EqualModuloRelations reduction5723.relations reduction5723.input reduction5723.output := by lin_cert using reduction5723.terms
theorem substitutionProof5723 : IsMapEvaluation generatorImages reduction5723.relations [8,562] reduction5723.output := by lin_cert using reduction5723.terms
def image5724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5724 : InImage map_15_168 image5724 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5724 : Bundle := named_bundle% "RealMapCertificates/relations/basis5724.json"
theorem reductionProof5724 : EqualModuloRelations reduction5724.relations reduction5724.input reduction5724.output := by lin_cert using reduction5724.terms
theorem substitutionProof5724 : IsMapEvaluation generatorImages reduction5724.relations [1,27,324] reduction5724.output := by lin_cert using reduction5724.terms
def map_15_169 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5819 : InImage map_15_169 image5819 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5819 : Bundle := named_bundle% "RealMapCertificates/relations/basis5819.json"
theorem reductionProof5819 : EqualModuloRelations reduction5819.relations reduction5819.input reduction5819.output := by lin_cert using reduction5819.terms
theorem substitutionProof5819 : IsMapEvaluation generatorImages reduction5819.relations [76,189] reduction5819.output := by lin_cert using reduction5819.terms
def image5820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5820 : InImage map_15_169 image5820 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5820 : Bundle := named_bundle% "RealMapCertificates/relations/basis5820.json"
theorem reductionProof5820 : EqualModuloRelations reduction5820.relations reduction5820.input reduction5820.output := by lin_cert using reduction5820.terms
theorem substitutionProof5820 : IsMapEvaluation generatorImages reduction5820.relations [23,373] reduction5820.output := by lin_cert using reduction5820.terms
def image5821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5821 : InImage map_15_169 image5821 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5821 : Bundle := named_bundle% "RealMapCertificates/relations/basis5821.json"
theorem reductionProof5821 : EqualModuloRelations reduction5821.relations reduction5821.input reduction5821.output := by lin_cert using reduction5821.terms
theorem substitutionProof5821 : IsMapEvaluation generatorImages reduction5821.relations [0,30,324] reduction5821.output := by lin_cert using reduction5821.terms
def image5822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5822 : InImage map_15_169 image5822 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5822 : Bundle := named_bundle% "RealMapCertificates/relations/basis5822.json"
theorem reductionProof5822 : EqualModuloRelations reduction5822.relations reduction5822.input reduction5822.output := by lin_cert using reduction5822.terms
theorem substitutionProof5822 : IsMapEvaluation generatorImages reduction5822.relations [0,0,0,0,0,0,0,676] reduction5822.output := by lin_cert using reduction5822.terms
def map_15_170 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5923 : InImage map_15_170 image5923 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5923 : Bundle := named_bundle% "RealMapCertificates/relations/basis5923.json"
theorem reductionProof5923 : EqualModuloRelations reduction5923.relations reduction5923.input reduction5923.output := by lin_cert using reduction5923.terms
theorem substitutionProof5923 : IsMapEvaluation generatorImages reduction5923.relations [765] reduction5923.output := by lin_cert using reduction5923.terms
def image5924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5924 : InImage map_15_170 image5924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5924 : Bundle := named_bundle% "RealMapCertificates/relations/basis5924.json"
theorem reductionProof5924 : EqualModuloRelations reduction5924.relations reduction5924.input reduction5924.output := by lin_cert using reduction5924.terms
theorem substitutionProof5924 : IsMapEvaluation generatorImages reduction5924.relations [764] reduction5924.output := by lin_cert using reduction5924.terms
def image5925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5925 : InImage map_15_170 image5925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5925 : Bundle := named_bundle% "RealMapCertificates/relations/basis5925.json"
theorem reductionProof5925 : EqualModuloRelations reduction5925.relations reduction5925.input reduction5925.output := by lin_cert using reduction5925.terms
theorem substitutionProof5925 : IsMapEvaluation generatorImages reduction5925.relations [0,0,0,732] reduction5925.output := by lin_cert using reduction5925.terms
def map_15_171 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6067 : InImage map_15_171 image6067 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6067 : Bundle := named_bundle% "RealMapCertificates/relations/basis6067.json"
theorem reductionProof6067 : EqualModuloRelations reduction6067.relations reduction6067.input reduction6067.output := by lin_cert using reduction6067.terms
theorem substitutionProof6067 : IsMapEvaluation generatorImages reduction6067.relations [8,583] reduction6067.output := by lin_cert using reduction6067.terms
def image6068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6068 : InImage map_15_171 image6068 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6068 : Bundle := named_bundle% "RealMapCertificates/relations/basis6068.json"
theorem reductionProof6068 : EqualModuloRelations reduction6068.relations reduction6068.input reduction6068.output := by lin_cert using reduction6068.terms
theorem substitutionProof6068 : IsMapEvaluation generatorImages reduction6068.relations [3,680] reduction6068.output := by lin_cert using reduction6068.terms
def image6069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6069 : InImage map_15_171 image6069 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6069 : Bundle := named_bundle% "RealMapCertificates/relations/basis6069.json"
theorem reductionProof6069 : EqualModuloRelations reduction6069.relations reduction6069.input reduction6069.output := by lin_cert using reduction6069.terms
theorem substitutionProof6069 : IsMapEvaluation generatorImages reduction6069.relations [0,767] reduction6069.output := by lin_cert using reduction6069.terms
def image6070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6070 : InImage map_15_171 image6070 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6070 : Bundle := named_bundle% "RealMapCertificates/relations/basis6070.json"
theorem reductionProof6070 : EqualModuloRelations reduction6070.relations reduction6070.input reduction6070.output := by lin_cert using reduction6070.terms
theorem substitutionProof6070 : IsMapEvaluation generatorImages reduction6070.relations [0,766] reduction6070.output := by lin_cert using reduction6070.terms
def image6071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6071 : InImage map_15_171 image6071 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6071 : Bundle := named_bundle% "RealMapCertificates/relations/basis6071.json"
theorem reductionProof6071 : EqualModuloRelations reduction6071.relations reduction6071.input reduction6071.output := by lin_cert using reduction6071.terms
theorem substitutionProof6071 : IsMapEvaluation generatorImages reduction6071.relations [0,67,203] reduction6071.output := by lin_cert using reduction6071.terms
def map_15_172 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6156 : InImage map_15_172 image6156 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6156 : Bundle := named_bundle% "RealMapCertificates/relations/basis6156.json"
theorem reductionProof6156 : EqualModuloRelations reduction6156.relations reduction6156.input reduction6156.output := by lin_cert using reduction6156.terms
theorem substitutionProof6156 : IsMapEvaluation generatorImages reduction6156.relations [1,766] reduction6156.output := by lin_cert using reduction6156.terms
def image6157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6157 : InImage map_15_172 image6157 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6157 : Bundle := named_bundle% "RealMapCertificates/relations/basis6157.json"
theorem reductionProof6157 : EqualModuloRelations reduction6157.relations reduction6157.input reduction6157.output := by lin_cert using reduction6157.terms
theorem substitutionProof6157 : IsMapEvaluation generatorImages reduction6157.relations [0,74,197] reduction6157.output := by lin_cert using reduction6157.terms
def image6158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6158 : InImage map_15_172 image6158 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6158 : Bundle := named_bundle% "RealMapCertificates/relations/basis6158.json"
theorem reductionProof6158 : EqualModuloRelations reduction6158.relations reduction6158.input reduction6158.output := by lin_cert using reduction6158.terms
theorem substitutionProof6158 : IsMapEvaluation generatorImages reduction6158.relations [0,0,31,324] reduction6158.output := by lin_cert using reduction6158.terms
def image6159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6159 : InImage map_15_172 image6159 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6159 : Bundle := named_bundle% "RealMapCertificates/relations/basis6159.json"
theorem reductionProof6159 : EqualModuloRelations reduction6159.relations reduction6159.input reduction6159.output := by lin_cert using reduction6159.terms
theorem substitutionProof6159 : IsMapEvaluation generatorImages reduction6159.relations [0,0,0,0,743] reduction6159.output := by lin_cert using reduction6159.terms
def map_15_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6259 : InImage map_15_173 image6259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6259 : Bundle := named_bundle% "RealMapCertificates/relations/basis6259.json"
theorem reductionProof6259 : EqualModuloRelations reduction6259.relations reduction6259.input reduction6259.output := by lin_cert using reduction6259.terms
theorem substitutionProof6259 : IsMapEvaluation generatorImages reduction6259.relations [799] reduction6259.output := by lin_cert using reduction6259.terms
def image6260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6260 : InImage map_15_173 image6260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6260 : Bundle := named_bundle% "RealMapCertificates/relations/basis6260.json"
theorem reductionProof6260 : EqualModuloRelations reduction6260.relations reduction6260.input reduction6260.output := by lin_cert using reduction6260.terms
theorem substitutionProof6260 : IsMapEvaluation generatorImages reduction6260.relations [3,709] reduction6260.output := by lin_cert using reduction6260.terms
def image6261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6261 : InImage map_15_173 image6261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6261 : Bundle := named_bundle% "RealMapCertificates/relations/basis6261.json"
theorem reductionProof6261 : EqualModuloRelations reduction6261.relations reduction6261.input reduction6261.output := by lin_cert using reduction6261.terms
theorem substitutionProof6261 : IsMapEvaluation generatorImages reduction6261.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,18,324] reduction6261.output := by lin_cert using reduction6261.terms
def map_15_174 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6402 : InImage map_15_174 image6402 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6402 : Bundle := named_bundle% "RealMapCertificates/relations/basis6402.json"
theorem reductionProof6402 : EqualModuloRelations reduction6402.relations reduction6402.input reduction6402.output := by lin_cert using reduction6402.terms
theorem substitutionProof6402 : IsMapEvaluation generatorImages reduction6402.relations [1,70,209] reduction6402.output := by lin_cert using reduction6402.terms
def image6403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6403 : InImage map_15_174 image6403 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6403 : Bundle := named_bundle% "RealMapCertificates/relations/basis6403.json"
theorem reductionProof6403 : EqualModuloRelations reduction6403.relations reduction6403.input reduction6403.output := by lin_cert using reduction6403.terms
theorem substitutionProof6403 : IsMapEvaluation generatorImages reduction6403.relations [1,1,31,324] reduction6403.output := by lin_cert using reduction6403.terms
def image6404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6404 : InImage map_15_174 image6404 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6404 : Bundle := named_bundle% "RealMapCertificates/relations/basis6404.json"
theorem reductionProof6404 : EqualModuloRelations reduction6404.relations reduction6404.input reduction6404.output := by lin_cert using reduction6404.terms
theorem substitutionProof6404 : IsMapEvaluation generatorImages reduction6404.relations [0,800] reduction6404.output := by lin_cert using reduction6404.terms
def image6405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6405 : InImage map_15_174 image6405 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6405 : Bundle := named_bundle% "RealMapCertificates/relations/basis6405.json"
theorem reductionProof6405 : EqualModuloRelations reduction6405.relations reduction6405.input reduction6405.output := by lin_cert using reduction6405.terms
theorem substitutionProof6405 : IsMapEvaluation generatorImages reduction6405.relations [0,18,475] reduction6405.output := by lin_cert using reduction6405.terms
def image6406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6406 : InImage map_15_174 image6406 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6406 : Bundle := named_bundle% "RealMapCertificates/relations/basis6406.json"
theorem reductionProof6406 : EqualModuloRelations reduction6406.relations reduction6406.input reduction6406.output := by lin_cert using reduction6406.terms
theorem substitutionProof6406 : IsMapEvaluation generatorImages reduction6406.relations [0,0,787] reduction6406.output := by lin_cert using reduction6406.terms
def map_15_175 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image6499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6499 : InImage map_15_175 image6499 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction6499 : Bundle := named_bundle% "RealMapCertificates/relations/basis6499.json"
theorem reductionProof6499 : EqualModuloRelations reduction6499.relations reduction6499.input reduction6499.output := by lin_cert using reduction6499.terms
theorem substitutionProof6499 : IsMapEvaluation generatorImages reduction6499.relations [825] reduction6499.output := by lin_cert using reduction6499.terms
def image6500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6500 : InImage map_15_175 image6500 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction6500 : Bundle := named_bundle% "RealMapCertificates/relations/basis6500.json"
theorem reductionProof6500 : EqualModuloRelations reduction6500.relations reduction6500.input reduction6500.output := by lin_cert using reduction6500.terms
theorem substitutionProof6500 : IsMapEvaluation generatorImages reduction6500.relations [824] reduction6500.output := by lin_cert using reduction6500.terms
def image6501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6501 : InImage map_15_175 image6501 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction6501 : Bundle := named_bundle% "RealMapCertificates/relations/basis6501.json"
theorem reductionProof6501 : EqualModuloRelations reduction6501.relations reduction6501.input reduction6501.output := by lin_cert using reduction6501.terms
theorem substitutionProof6501 : IsMapEvaluation generatorImages reduction6501.relations [75,213] reduction6501.output := by lin_cert using reduction6501.terms
def image6502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6502 : InImage map_15_175 image6502 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction6502 : Bundle := named_bundle% "RealMapCertificates/relations/basis6502.json"
theorem reductionProof6502 : EqualModuloRelations reduction6502.relations reduction6502.input reduction6502.output := by lin_cert using reduction6502.terms
theorem substitutionProof6502 : IsMapEvaluation generatorImages reduction6502.relations [13,570] reduction6502.output := by lin_cert using reduction6502.terms
def image6503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6503 : InImage map_15_175 image6503 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction6503 : Bundle := named_bundle% "RealMapCertificates/relations/basis6503.json"
theorem reductionProof6503 : EqualModuloRelations reduction6503.relations reduction6503.input reduction6503.output := by lin_cert using reduction6503.terms
theorem substitutionProof6503 : IsMapEvaluation generatorImages reduction6503.relations [0,814] reduction6503.output := by lin_cert using reduction6503.terms
def image6504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6504 : InImage map_15_175 image6504 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction6504 : Bundle := named_bundle% "RealMapCertificates/relations/basis6504.json"
theorem reductionProof6504 : EqualModuloRelations reduction6504.relations reduction6504.input reduction6504.output := by lin_cert using reduction6504.terms
theorem substitutionProof6504 : IsMapEvaluation generatorImages reduction6504.relations [0,0,801] reduction6504.output := by lin_cert using reduction6504.terms
def image6505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6505 : InImage map_15_175 image6505 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction6505 : Bundle := named_bundle% "RealMapCertificates/relations/basis6505.json"
theorem reductionProof6505 : EqualModuloRelations reduction6505.relations reduction6505.input reduction6505.output := by lin_cert using reduction6505.terms
theorem substitutionProof6505 : IsMapEvaluation generatorImages reduction6505.relations [0,0,39,324] reduction6505.output := by lin_cert using reduction6505.terms
def map_15_176 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6609 : InImage map_15_176 image6609 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6609 : Bundle := named_bundle% "RealMapCertificates/relations/basis6609.json"
theorem reductionProof6609 : EqualModuloRelations reduction6609.relations reduction6609.input reduction6609.output := by lin_cert using reduction6609.terms
theorem substitutionProof6609 : IsMapEvaluation generatorImages reduction6609.relations [841] reduction6609.output := by lin_cert using reduction6609.terms
def image6610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6610 : InImage map_15_176 image6610 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6610 : Bundle := named_bundle% "RealMapCertificates/relations/basis6610.json"
theorem reductionProof6610 : EqualModuloRelations reduction6610.relations reduction6610.input reduction6610.output := by lin_cert using reduction6610.terms
theorem substitutionProof6610 : IsMapEvaluation generatorImages reduction6610.relations [0,3,731] reduction6610.output := by lin_cert using reduction6610.terms
def image6611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6611 : InImage map_15_176 image6611 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6611 : Bundle := named_bundle% "RealMapCertificates/relations/basis6611.json"
theorem reductionProof6611 : EqualModuloRelations reduction6611.relations reduction6611.input reduction6611.output := by lin_cert using reduction6611.terms
theorem substitutionProof6611 : IsMapEvaluation generatorImages reduction6611.relations [0,3,730] reduction6611.output := by lin_cert using reduction6611.terms
def image6612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6612 : InImage map_15_176 image6612 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6612 : Bundle := named_bundle% "RealMapCertificates/relations/basis6612.json"
theorem reductionProof6612 : EqualModuloRelations reduction6612.relations reduction6612.input reduction6612.output := by lin_cert using reduction6612.terms
theorem substitutionProof6612 : IsMapEvaluation generatorImages reduction6612.relations [0,0,815] reduction6612.output := by lin_cert using reduction6612.terms
def map_15_177 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6749 : InImage map_15_177 image6749 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6749 : Bundle := named_bundle% "RealMapCertificates/relations/basis6749.json"
theorem reductionProof6749 : EqualModuloRelations reduction6749.relations reduction6749.input reduction6749.output := by lin_cert using reduction6749.terms
theorem substitutionProof6749 : IsMapEvaluation generatorImages reduction6749.relations [0,843] reduction6749.output := by lin_cert using reduction6749.terms
def image6750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6750 : InImage map_15_177 image6750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6750 : Bundle := named_bundle% "RealMapCertificates/relations/basis6750.json"
theorem reductionProof6750 : EqualModuloRelations reduction6750.relations reduction6750.input reduction6750.output := by lin_cert using reduction6750.terms
theorem substitutionProof6750 : IsMapEvaluation generatorImages reduction6750.relations [0,18,502] reduction6750.output := by lin_cert using reduction6750.terms
def image6751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6751 : InImage map_15_177 image6751 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6751 : Bundle := named_bundle% "RealMapCertificates/relations/basis6751.json"
theorem reductionProof6751 : EqualModuloRelations reduction6751.relations reduction6751.input reduction6751.output := by lin_cert using reduction6751.terms
theorem substitutionProof6751 : IsMapEvaluation generatorImages reduction6751.relations [0,0,0,3,719] reduction6751.output := by lin_cert using reduction6751.terms
end RealMapCertificates
