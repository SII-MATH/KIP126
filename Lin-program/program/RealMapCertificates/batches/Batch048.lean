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
  | 8 => [[6]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 43 => []
  | 45 => [[5,5,8]]
  | 59 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 69 => []
  | 75 => []
  | 80 => []
  | 92 => []
  | 209 => []
  | 287 => []
  | 324 => []
  | 333 => []
  | 336 => []
  | 352 => []
  | 373 => []
  | 376 => []
  | 392 => []
  | 397 => []
  | 412 => []
  | 485 => []
  | 543 => []
  | 544 => []
  | 659 => []
  | 730 => []
  | 734 => []
  | 769 => []
  | 814 => []
  | 815 => []
  | 817 => []
  | 842 => []
  | 843 => []
  | 845 => []
  | 858 => []
  | 859 => []
  | 868 => []
  | 869 => []
  | 882 => []
  | 892 => []
  | 910 => []
  | 911 => []
  | 933 => []
  | 934 => []
  | 935 => []
  | 967 => []
  | 988 => []
  | 989 => []
  | 990 => []
  | 991 => []
  | 1005 => []
  | 1006 => []
  | 1020 => []
  | 1021 => []
  | 1022 => []
  | 1023 => []
  | 1024 => []
  | 1047 => []
  | 1055 => []
  | 1056 => []
  | 1057 => []
  | 1071 => []
  | 1072 => []
  | 1073 => []
  | 1088 => []
  | 1090 => []
  | 1091 => []
  | 1098 => []
  | 1099 => []
  | 1118 => []
  | 1130 => []
  | 1131 => []
  | 1132 => []
  | 1133 => []
  | 1158 => []
  | 1159 => []
  | 1160 => []
  | 1161 => []
  | 1162 => []
  | 1187 => []
  | 1188 => []
  | 1189 => []
  | 1190 => []
  | 1191 => []
  | 1192 => []
  | 1195 => []
  | 1210 => []
  | _ => []
def map_15_178 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6844 : InImage map_15_178 image6844 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6844 : Bundle := named_bundle% "RealMapCertificates/relations/basis6844.json"
theorem reductionProof6844 : EqualModuloRelations reduction6844.relations reduction6844.input reduction6844.output := by lin_cert using reduction6844.terms
theorem substitutionProof6844 : IsMapEvaluation generatorImages reduction6844.relations [43,336] reduction6844.output := by lin_cert using reduction6844.terms
def image6845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6845 : InImage map_15_178 image6845 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6845 : Bundle := named_bundle% "RealMapCertificates/relations/basis6845.json"
theorem reductionProof6845 : EqualModuloRelations reduction6845.relations reduction6845.input reduction6845.output := by lin_cert using reduction6845.terms
theorem substitutionProof6845 : IsMapEvaluation generatorImages reduction6845.relations [2,814] reduction6845.output := by lin_cert using reduction6845.terms
def image6846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6846 : InImage map_15_178 image6846 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6846 : Bundle := named_bundle% "RealMapCertificates/relations/basis6846.json"
theorem reductionProof6846 : EqualModuloRelations reduction6846.relations reduction6846.input reduction6846.output := by lin_cert using reduction6846.terms
theorem substitutionProof6846 : IsMapEvaluation generatorImages reduction6846.relations [1,843] reduction6846.output := by lin_cert using reduction6846.terms
def image6847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6847 : InImage map_15_178 image6847 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6847 : Bundle := named_bundle% "RealMapCertificates/relations/basis6847.json"
theorem reductionProof6847 : EqualModuloRelations reduction6847.relations reduction6847.input reduction6847.output := by lin_cert using reduction6847.terms
theorem substitutionProof6847 : IsMapEvaluation generatorImages reduction6847.relations [1,842] reduction6847.output := by lin_cert using reduction6847.terms
def image6848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6848 : InImage map_15_178 image6848 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6848 : Bundle := named_bundle% "RealMapCertificates/relations/basis6848.json"
theorem reductionProof6848 : EqualModuloRelations reduction6848.relations reduction6848.input reduction6848.output := by lin_cert using reduction6848.terms
theorem substitutionProof6848 : IsMapEvaluation generatorImages reduction6848.relations [0,0,845] reduction6848.output := by lin_cert using reduction6848.terms
def image6849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6849 : InImage map_15_178 image6849 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6849 : Bundle := named_bundle% "RealMapCertificates/relations/basis6849.json"
theorem reductionProof6849 : EqualModuloRelations reduction6849.relations reduction6849.input reduction6849.output := by lin_cert using reduction6849.terms
theorem substitutionProof6849 : IsMapEvaluation generatorImages reduction6849.relations [0,0,8,16,324] reduction6849.output := by lin_cert using reduction6849.terms
def map_15_179 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6977 : InImage map_15_179 image6977 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6977 : Bundle := named_bundle% "RealMapCertificates/relations/basis6977.json"
theorem reductionProof6977 : EqualModuloRelations reduction6977.relations reduction6977.input reduction6977.output := by lin_cert using reduction6977.terms
theorem substitutionProof6977 : IsMapEvaluation generatorImages reduction6977.relations [92,209] reduction6977.output := by lin_cert using reduction6977.terms
def image6978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6978 : InImage map_15_179 image6978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6978 : Bundle := named_bundle% "RealMapCertificates/relations/basis6978.json"
theorem reductionProof6978 : EqualModuloRelations reduction6978.relations reduction6978.input reduction6978.output := by lin_cert using reduction6978.terms
theorem substitutionProof6978 : IsMapEvaluation generatorImages reduction6978.relations [0,0,859] reduction6978.output := by lin_cert using reduction6978.terms
def image6979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6979 : InImage map_15_179 image6979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6979 : Bundle := named_bundle% "RealMapCertificates/relations/basis6979.json"
theorem reductionProof6979 : EqualModuloRelations reduction6979.relations reduction6979.input reduction6979.output := by lin_cert using reduction6979.terms
theorem substitutionProof6979 : IsMapEvaluation generatorImages reduction6979.relations [0,0,858] reduction6979.output := by lin_cert using reduction6979.terms
def image6980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6980 : InImage map_15_179 image6980 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6980 : Bundle := named_bundle% "RealMapCertificates/relations/basis6980.json"
theorem reductionProof6980 : EqualModuloRelations reduction6980.relations reduction6980.input reduction6980.output := by lin_cert using reduction6980.terms
theorem substitutionProof6980 : IsMapEvaluation generatorImages reduction6980.relations [0,0,43,333] reduction6980.output := by lin_cert using reduction6980.terms
def map_15_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7120 : InImage map_15_180 image7120 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7120 : Bundle := named_bundle% "RealMapCertificates/relations/basis7120.json"
theorem reductionProof7120 : EqualModuloRelations reduction7120.relations reduction7120.input reduction7120.output := by lin_cert using reduction7120.terms
theorem substitutionProof7120 : IsMapEvaluation generatorImages reduction7120.relations [2,843] reduction7120.output := by lin_cert using reduction7120.terms
def image7121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7121 : InImage map_15_180 image7121 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7121 : Bundle := named_bundle% "RealMapCertificates/relations/basis7121.json"
theorem reductionProof7121 : EqualModuloRelations reduction7121.relations reduction7121.input reduction7121.output := by lin_cert using reduction7121.terms
theorem substitutionProof7121 : IsMapEvaluation generatorImages reduction7121.relations [1,868] reduction7121.output := by lin_cert using reduction7121.terms
def image7122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7122 : InImage map_15_180 image7122 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7122 : Bundle := named_bundle% "RealMapCertificates/relations/basis7122.json"
theorem reductionProof7122 : EqualModuloRelations reduction7122.relations reduction7122.input reduction7122.output := by lin_cert using reduction7122.terms
theorem substitutionProof7122 : IsMapEvaluation generatorImages reduction7122.relations [0,882] reduction7122.output := by lin_cert using reduction7122.terms
def image7123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7123 : InImage map_15_180 image7123 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7123 : Bundle := named_bundle% "RealMapCertificates/relations/basis7123.json"
theorem reductionProof7123 : EqualModuloRelations reduction7123.relations reduction7123.input reduction7123.output := by lin_cert using reduction7123.terms
theorem substitutionProof7123 : IsMapEvaluation generatorImages reduction7123.relations [0,8,18,333] reduction7123.output := by lin_cert using reduction7123.terms
def map_15_181 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7219 : InImage map_15_181 image7219 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7219 : Bundle := named_bundle% "RealMapCertificates/relations/basis7219.json"
theorem reductionProof7219 : EqualModuloRelations reduction7219.relations reduction7219.input reduction7219.output := by lin_cert using reduction7219.terms
theorem substitutionProof7219 : IsMapEvaluation generatorImages reduction7219.relations [892] reduction7219.output := by lin_cert using reduction7219.terms
def image7220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7220 : InImage map_15_181 image7220 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7220 : Bundle := named_bundle% "RealMapCertificates/relations/basis7220.json"
theorem reductionProof7220 : EqualModuloRelations reduction7220.relations reduction7220.input reduction7220.output := by lin_cert using reduction7220.terms
theorem substitutionProof7220 : IsMapEvaluation generatorImages reduction7220.relations [0,0,8,659] reduction7220.output := by lin_cert using reduction7220.terms
def image7221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7221 : InImage map_15_181 image7221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7221 : Bundle := named_bundle% "RealMapCertificates/relations/basis7221.json"
theorem reductionProof7221 : EqualModuloRelations reduction7221.relations reduction7221.input reduction7221.output := by lin_cert using reduction7221.terms
theorem substitutionProof7221 : IsMapEvaluation generatorImages reduction7221.relations [0,0,8,19,324] reduction7221.output := by lin_cert using reduction7221.terms
def image7222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7222 : InImage map_15_181 image7222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7222 : Bundle := named_bundle% "RealMapCertificates/relations/basis7222.json"
theorem reductionProof7222 : EqualModuloRelations reduction7222.relations reduction7222.input reduction7222.output := by lin_cert using reduction7222.terms
theorem substitutionProof7222 : IsMapEvaluation generatorImages reduction7222.relations [0,0,0,869] reduction7222.output := by lin_cert using reduction7222.terms
def map_15_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7329 : InImage map_15_182 image7329 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7329 : Bundle := named_bundle% "RealMapCertificates/relations/basis7329.json"
theorem reductionProof7329 : EqualModuloRelations reduction7329.relations reduction7329.input reduction7329.output := by lin_cert using reduction7329.terms
theorem substitutionProof7329 : IsMapEvaluation generatorImages reduction7329.relations [910] reduction7329.output := by lin_cert using reduction7329.terms
def map_15_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7478 : InImage map_15_183 image7478 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7478 : Bundle := named_bundle% "RealMapCertificates/relations/basis7478.json"
theorem reductionProof7478 : EqualModuloRelations reduction7478.relations reduction7478.input reduction7478.output := by lin_cert using reduction7478.terms
theorem substitutionProof7478 : IsMapEvaluation generatorImages reduction7478.relations [3,3,730] reduction7478.output := by lin_cert using reduction7478.terms
def image7479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7479 : InImage map_15_183 image7479 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7479 : Bundle := named_bundle% "RealMapCertificates/relations/basis7479.json"
theorem reductionProof7479 : EqualModuloRelations reduction7479.relations reduction7479.input reduction7479.output := by lin_cert using reduction7479.terms
theorem substitutionProof7479 : IsMapEvaluation generatorImages reduction7479.relations [0,911] reduction7479.output := by lin_cert using reduction7479.terms
def image7480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7480 : InImage map_15_183 image7480 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7480 : Bundle := named_bundle% "RealMapCertificates/relations/basis7480.json"
theorem reductionProof7480 : EqualModuloRelations reduction7480.relations reduction7480.input reduction7480.output := by lin_cert using reduction7480.terms
theorem substitutionProof7480 : IsMapEvaluation generatorImages reduction7480.relations [0,3,815] reduction7480.output := by lin_cert using reduction7480.terms
def map_15_184 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7585 : InImage map_15_184 image7585 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7585 : Bundle := named_bundle% "RealMapCertificates/relations/basis7585.json"
theorem reductionProof7585 : EqualModuloRelations reduction7585.relations reduction7585.input reduction7585.output := by lin_cert using reduction7585.terms
theorem substitutionProof7585 : IsMapEvaluation generatorImages reduction7585.relations [933] reduction7585.output := by lin_cert using reduction7585.terms
def image7586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7586 : InImage map_15_184 image7586 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7586 : Bundle := named_bundle% "RealMapCertificates/relations/basis7586.json"
theorem reductionProof7586 : EqualModuloRelations reduction7586.relations reduction7586.input reduction7586.output := by lin_cert using reduction7586.terms
theorem substitutionProof7586 : IsMapEvaluation generatorImages reduction7586.relations [3,843] reduction7586.output := by lin_cert using reduction7586.terms
def image7587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7587 : InImage map_15_184 image7587 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7587 : Bundle := named_bundle% "RealMapCertificates/relations/basis7587.json"
theorem reductionProof7587 : EqualModuloRelations reduction7587.relations reduction7587.input reduction7587.output := by lin_cert using reduction7587.terms
theorem substitutionProof7587 : IsMapEvaluation generatorImages reduction7587.relations [3,842] reduction7587.output := by lin_cert using reduction7587.terms
def image7588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7588 : InImage map_15_184 image7588 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7588 : Bundle := named_bundle% "RealMapCertificates/relations/basis7588.json"
theorem reductionProof7588 : EqualModuloRelations reduction7588.relations reduction7588.input reduction7588.output := by lin_cert using reduction7588.terms
theorem substitutionProof7588 : IsMapEvaluation generatorImages reduction7588.relations [0,0,8,8,8,324] reduction7588.output := by lin_cert using reduction7588.terms
def image7589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7589 : InImage map_15_184 image7589 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7589 : Bundle := named_bundle% "RealMapCertificates/relations/basis7589.json"
theorem reductionProof7589 : EqualModuloRelations reduction7589.relations reduction7589.input reduction7589.output := by lin_cert using reduction7589.terms
theorem substitutionProof7589 : IsMapEvaluation generatorImages reduction7589.relations [0,0,3,817] reduction7589.output := by lin_cert using reduction7589.terms
def map_15_185 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7704 : InImage map_15_185 image7704 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7704 : Bundle := named_bundle% "RealMapCertificates/relations/basis7704.json"
theorem reductionProof7704 : EqualModuloRelations reduction7704.relations reduction7704.input reduction7704.output := by lin_cert using reduction7704.terms
theorem substitutionProof7704 : IsMapEvaluation generatorImages reduction7704.relations [1,43,412] reduction7704.output := by lin_cert using reduction7704.terms
def image7705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7705 : InImage map_15_185 image7705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7705 : Bundle := named_bundle% "RealMapCertificates/relations/basis7705.json"
theorem reductionProof7705 : EqualModuloRelations reduction7705.relations reduction7705.input reduction7705.output := by lin_cert using reduction7705.terms
theorem substitutionProof7705 : IsMapEvaluation generatorImages reduction7705.relations [0,934] reduction7705.output := by lin_cert using reduction7705.terms
def map_15_186 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7848 : InImage map_15_186 image7848 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7848 : Bundle := named_bundle% "RealMapCertificates/relations/basis7848.json"
theorem reductionProof7848 : EqualModuloRelations reduction7848.relations reduction7848.input reduction7848.output := by lin_cert using reduction7848.terms
theorem substitutionProof7848 : IsMapEvaluation generatorImages reduction7848.relations [0,0,935] reduction7848.output := by lin_cert using reduction7848.terms
def map_15_187 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7934 : InImage map_15_187 image7934 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7934 : Bundle := named_bundle% "RealMapCertificates/relations/basis7934.json"
theorem reductionProof7934 : EqualModuloRelations reduction7934.relations reduction7934.input reduction7934.output := by lin_cert using reduction7934.terms
theorem substitutionProof7934 : IsMapEvaluation generatorImages reduction7934.relations [967] reduction7934.output := by lin_cert using reduction7934.terms
def image7935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7935 : InImage map_15_187 image7935 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7935 : Bundle := named_bundle% "RealMapCertificates/relations/basis7935.json"
theorem reductionProof7935 : EqualModuloRelations reduction7935.relations reduction7935.input reduction7935.output := by lin_cert using reduction7935.terms
theorem substitutionProof7935 : IsMapEvaluation generatorImages reduction7935.relations [3,882] reduction7935.output := by lin_cert using reduction7935.terms
def image7936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7936 : InImage map_15_187 image7936 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7936 : Bundle := named_bundle% "RealMapCertificates/relations/basis7936.json"
theorem reductionProof7936 : EqualModuloRelations reduction7936.relations reduction7936.input reduction7936.output := by lin_cert using reduction7936.terms
theorem substitutionProof7936 : IsMapEvaluation generatorImages reduction7936.relations [0,3,3,769] reduction7936.output := by lin_cert using reduction7936.terms
def map_15_188 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8048 : InImage map_15_188 image8048 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8048 : Bundle := named_bundle% "RealMapCertificates/relations/basis8048.json"
theorem reductionProof8048 : EqualModuloRelations reduction8048.relations reduction8048.input reduction8048.output := by lin_cert using reduction8048.terms
theorem substitutionProof8048 : IsMapEvaluation generatorImages reduction8048.relations [989] reduction8048.output := by lin_cert using reduction8048.terms
def image8049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8049 : InImage map_15_188 image8049 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8049 : Bundle := named_bundle% "RealMapCertificates/relations/basis8049.json"
theorem reductionProof8049 : EqualModuloRelations reduction8049.relations reduction8049.input reduction8049.output := by lin_cert using reduction8049.terms
theorem substitutionProof8049 : IsMapEvaluation generatorImages reduction8049.relations [988] reduction8049.output := by lin_cert using reduction8049.terms
def image8050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8050 : InImage map_15_188 image8050 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8050 : Bundle := named_bundle% "RealMapCertificates/relations/basis8050.json"
theorem reductionProof8050 : EqualModuloRelations reduction8050.relations reduction8050.input reduction8050.output := by lin_cert using reduction8050.terms
theorem substitutionProof8050 : IsMapEvaluation generatorImages reduction8050.relations [17,17,324] reduction8050.output := by lin_cert using reduction8050.terms
def map_15_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8204 : InImage map_15_189 image8204 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8204 : Bundle := named_bundle% "RealMapCertificates/relations/basis8204.json"
theorem reductionProof8204 : EqualModuloRelations reduction8204.relations reduction8204.input reduction8204.output := by lin_cert using reduction8204.terms
theorem substitutionProof8204 : IsMapEvaluation generatorImages reduction8204.relations [1005] reduction8204.output := by lin_cert using reduction8204.terms
def image8205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8205 : InImage map_15_189 image8205 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8205 : Bundle := named_bundle% "RealMapCertificates/relations/basis8205.json"
theorem reductionProof8205 : EqualModuloRelations reduction8205.relations reduction8205.input reduction8205.output := by lin_cert using reduction8205.terms
theorem substitutionProof8205 : IsMapEvaluation generatorImages reduction8205.relations [1,69,287] reduction8205.output := by lin_cert using reduction8205.terms
def image8206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8206 : InImage map_15_189 image8206 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8206 : Bundle := named_bundle% "RealMapCertificates/relations/basis8206.json"
theorem reductionProof8206 : EqualModuloRelations reduction8206.relations reduction8206.input reduction8206.output := by lin_cert using reduction8206.terms
theorem substitutionProof8206 : IsMapEvaluation generatorImages reduction8206.relations [0,59,324] reduction8206.output := by lin_cert using reduction8206.terms
def map_15_190 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image8305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8305 : InImage map_15_190 image8305 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction8305 : Bundle := named_bundle% "RealMapCertificates/relations/basis8305.json"
theorem reductionProof8305 : EqualModuloRelations reduction8305.relations reduction8305.input reduction8305.output := by lin_cert using reduction8305.terms
theorem substitutionProof8305 : IsMapEvaluation generatorImages reduction8305.relations [1022] reduction8305.output := by lin_cert using reduction8305.terms
def image8306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8306 : InImage map_15_190 image8306 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction8306 : Bundle := named_bundle% "RealMapCertificates/relations/basis8306.json"
theorem reductionProof8306 : EqualModuloRelations reduction8306.relations reduction8306.input reduction8306.output := by lin_cert using reduction8306.terms
theorem substitutionProof8306 : IsMapEvaluation generatorImages reduction8306.relations [1021] reduction8306.output := by lin_cert using reduction8306.terms
def image8307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8307 : InImage map_15_190 image8307 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction8307 : Bundle := named_bundle% "RealMapCertificates/relations/basis8307.json"
theorem reductionProof8307 : EqualModuloRelations reduction8307.relations reduction8307.input reduction8307.output := by lin_cert using reduction8307.terms
theorem substitutionProof8307 : IsMapEvaluation generatorImages reduction8307.relations [1020] reduction8307.output := by lin_cert using reduction8307.terms
def image8308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8308 : InImage map_15_190 image8308 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction8308 : Bundle := named_bundle% "RealMapCertificates/relations/basis8308.json"
theorem reductionProof8308 : EqualModuloRelations reduction8308.relations reduction8308.input reduction8308.output := by lin_cert using reduction8308.terms
theorem substitutionProof8308 : IsMapEvaluation generatorImages reduction8308.relations [43,485] reduction8308.output := by lin_cert using reduction8308.terms
def image8309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8309 : InImage map_15_190 image8309 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction8309 : Bundle := named_bundle% "RealMapCertificates/relations/basis8309.json"
theorem reductionProof8309 : EqualModuloRelations reduction8309.relations reduction8309.input reduction8309.output := by lin_cert using reduction8309.terms
theorem substitutionProof8309 : IsMapEvaluation generatorImages reduction8309.relations [1,990] reduction8309.output := by lin_cert using reduction8309.terms
def image8310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8310 : InImage map_15_190 image8310 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction8310 : Bundle := named_bundle% "RealMapCertificates/relations/basis8310.json"
theorem reductionProof8310 : EqualModuloRelations reduction8310.relations reduction8310.input reduction8310.output := by lin_cert using reduction8310.terms
theorem substitutionProof8310 : IsMapEvaluation generatorImages reduction8310.relations [1,59,324] reduction8310.output := by lin_cert using reduction8310.terms
def image8311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8311 : InImage map_15_190 image8311 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction8311 : Bundle := named_bundle% "RealMapCertificates/relations/basis8311.json"
theorem reductionProof8311 : EqualModuloRelations reduction8311.relations reduction8311.input reduction8311.output := by lin_cert using reduction8311.terms
theorem substitutionProof8311 : IsMapEvaluation generatorImages reduction8311.relations [0,1006] reduction8311.output := by lin_cert using reduction8311.terms
def map_15_191 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8435 : InImage map_15_191 image8435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8435 : Bundle := named_bundle% "RealMapCertificates/relations/basis8435.json"
theorem reductionProof8435 : EqualModuloRelations reduction8435.relations reduction8435.input reduction8435.output := by lin_cert using reduction8435.terms
theorem substitutionProof8435 : IsMapEvaluation generatorImages reduction8435.relations [17,20,324] reduction8435.output := by lin_cert using reduction8435.terms
def image8436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8436 : InImage map_15_191 image8436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8436 : Bundle := named_bundle% "RealMapCertificates/relations/basis8436.json"
theorem reductionProof8436 : EqualModuloRelations reduction8436.relations reduction8436.input reduction8436.output := by lin_cert using reduction8436.terms
theorem substitutionProof8436 : IsMapEvaluation generatorImages reduction8436.relations [13,734] reduction8436.output := by lin_cert using reduction8436.terms
def image8437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8437 : InImage map_15_191 image8437 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8437 : Bundle := named_bundle% "RealMapCertificates/relations/basis8437.json"
theorem reductionProof8437 : EqualModuloRelations reduction8437.relations reduction8437.input reduction8437.output := by lin_cert using reduction8437.terms
theorem substitutionProof8437 : IsMapEvaluation generatorImages reduction8437.relations [0,1024] reduction8437.output := by lin_cert using reduction8437.terms
def map_15_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8583 : InImage map_15_192 image8583 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8583 : Bundle := named_bundle% "RealMapCertificates/relations/basis8583.json"
theorem reductionProof8583 : EqualModuloRelations reduction8583.relations reduction8583.input reduction8583.output := by lin_cert using reduction8583.terms
theorem substitutionProof8583 : IsMapEvaluation generatorImages reduction8583.relations [2,991] reduction8583.output := by lin_cert using reduction8583.terms
def image8584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8584 : InImage map_15_192 image8584 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8584 : Bundle := named_bundle% "RealMapCertificates/relations/basis8584.json"
theorem reductionProof8584 : EqualModuloRelations reduction8584.relations reduction8584.input reduction8584.output := by lin_cert using reduction8584.terms
theorem substitutionProof8584 : IsMapEvaluation generatorImages reduction8584.relations [2,990] reduction8584.output := by lin_cert using reduction8584.terms
def image8585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8585 : InImage map_15_192 image8585 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8585 : Bundle := named_bundle% "RealMapCertificates/relations/basis8585.json"
theorem reductionProof8585 : EqualModuloRelations reduction8585.relations reduction8585.input reduction8585.output := by lin_cert using reduction8585.terms
theorem substitutionProof8585 : IsMapEvaluation generatorImages reduction8585.relations [1,1023] reduction8585.output := by lin_cert using reduction8585.terms
def map_15_193 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8677 : InImage map_15_193 image8677 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8677 : Bundle := named_bundle% "RealMapCertificates/relations/basis8677.json"
theorem reductionProof8677 : EqualModuloRelations reduction8677.relations reduction8677.input reduction8677.output := by lin_cert using reduction8677.terms
theorem substitutionProof8677 : IsMapEvaluation generatorImages reduction8677.relations [1072] reduction8677.output := by lin_cert using reduction8677.terms
def image8678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8678 : InImage map_15_193 image8678 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8678 : Bundle := named_bundle% "RealMapCertificates/relations/basis8678.json"
theorem reductionProof8678 : EqualModuloRelations reduction8678.relations reduction8678.input reduction8678.output := by lin_cert using reduction8678.terms
theorem substitutionProof8678 : IsMapEvaluation generatorImages reduction8678.relations [1071] reduction8678.output := by lin_cert using reduction8678.terms
def image8679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8679 : InImage map_15_193 image8679 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8679 : Bundle := named_bundle% "RealMapCertificates/relations/basis8679.json"
theorem reductionProof8679 : EqualModuloRelations reduction8679.relations reduction8679.input reduction8679.output := by lin_cert using reduction8679.terms
theorem substitutionProof8679 : IsMapEvaluation generatorImages reduction8679.relations [1,1047] reduction8679.output := by lin_cert using reduction8679.terms
def image8680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8680 : InImage map_15_193 image8680 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8680 : Bundle := named_bundle% "RealMapCertificates/relations/basis8680.json"
theorem reductionProof8680 : EqualModuloRelations reduction8680.relations reduction8680.input reduction8680.output := by lin_cert using reduction8680.terms
theorem substitutionProof8680 : IsMapEvaluation generatorImages reduction8680.relations [0,1056] reduction8680.output := by lin_cert using reduction8680.terms
def image8681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8681 : InImage map_15_193 image8681 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8681 : Bundle := named_bundle% "RealMapCertificates/relations/basis8681.json"
theorem reductionProof8681 : EqualModuloRelations reduction8681.relations reduction8681.input reduction8681.output := by lin_cert using reduction8681.terms
theorem substitutionProof8681 : IsMapEvaluation generatorImages reduction8681.relations [0,1055] reduction8681.output := by lin_cert using reduction8681.terms
def map_15_194 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8821 : InImage map_15_194 image8821 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8821 : Bundle := named_bundle% "RealMapCertificates/relations/basis8821.json"
theorem reductionProof8821 : EqualModuloRelations reduction8821.relations reduction8821.input reduction8821.output := by lin_cert using reduction8821.terms
theorem substitutionProof8821 : IsMapEvaluation generatorImages reduction8821.relations [1088] reduction8821.output := by lin_cert using reduction8821.terms
def image8822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8822 : InImage map_15_194 image8822 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8822 : Bundle := named_bundle% "RealMapCertificates/relations/basis8822.json"
theorem reductionProof8822 : EqualModuloRelations reduction8822.relations reduction8822.input reduction8822.output := by lin_cert using reduction8822.terms
theorem substitutionProof8822 : IsMapEvaluation generatorImages reduction8822.relations [16,23,324] reduction8822.output := by lin_cert using reduction8822.terms
def image8823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8823 : InImage map_15_194 image8823 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8823 : Bundle := named_bundle% "RealMapCertificates/relations/basis8823.json"
theorem reductionProof8823 : EqualModuloRelations reduction8823.relations reduction8823.input reduction8823.output := by lin_cert using reduction8823.terms
theorem substitutionProof8823 : IsMapEvaluation generatorImages reduction8823.relations [1,1055] reduction8823.output := by lin_cert using reduction8823.terms
def image8824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8824 : InImage map_15_194 image8824 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8824 : Bundle := named_bundle% "RealMapCertificates/relations/basis8824.json"
theorem reductionProof8824 : EqualModuloRelations reduction8824.relations reduction8824.input reduction8824.output := by lin_cert using reduction8824.terms
theorem substitutionProof8824 : IsMapEvaluation generatorImages reduction8824.relations [0,1073] reduction8824.output := by lin_cert using reduction8824.terms
def image8825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8825 : InImage map_15_194 image8825 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8825 : Bundle := named_bundle% "RealMapCertificates/relations/basis8825.json"
theorem reductionProof8825 : EqualModuloRelations reduction8825.relations reduction8825.input reduction8825.output := by lin_cert using reduction8825.terms
theorem substitutionProof8825 : IsMapEvaluation generatorImages reduction8825.relations [0,0,1057] reduction8825.output := by lin_cert using reduction8825.terms
def map_15_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8981 : InImage map_15_195 image8981 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8981 : Bundle := named_bundle% "RealMapCertificates/relations/basis8981.json"
theorem reductionProof8981 : EqualModuloRelations reduction8981.relations reduction8981.input reduction8981.output := by lin_cert using reduction8981.terms
theorem substitutionProof8981 : IsMapEvaluation generatorImages reduction8981.relations [67,352] reduction8981.output := by lin_cert using reduction8981.terms
def image8982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8982 : InImage map_15_195 image8982 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8982 : Bundle := named_bundle% "RealMapCertificates/relations/basis8982.json"
theorem reductionProof8982 : EqualModuloRelations reduction8982.relations reduction8982.input reduction8982.output := by lin_cert using reduction8982.terms
theorem substitutionProof8982 : IsMapEvaluation generatorImages reduction8982.relations [0,1090] reduction8982.output := by lin_cert using reduction8982.terms
def image8983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8983 : InImage map_15_195 image8983 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8983 : Bundle := named_bundle% "RealMapCertificates/relations/basis8983.json"
theorem reductionProof8983 : EqualModuloRelations reduction8983.relations reduction8983.input reduction8983.output := by lin_cert using reduction8983.terms
theorem substitutionProof8983 : IsMapEvaluation generatorImages reduction8983.relations [0,0,0,0,64,324] reduction8983.output := by lin_cert using reduction8983.terms
def map_15_196 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9098 : InImage map_15_196 image9098 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9098 : Bundle := named_bundle% "RealMapCertificates/relations/basis9098.json"
theorem reductionProof9098 : EqualModuloRelations reduction9098.relations reduction9098.input reduction9098.output := by lin_cert using reduction9098.terms
theorem substitutionProof9098 : IsMapEvaluation generatorImages reduction9098.relations [43,543] reduction9098.output := by lin_cert using reduction9098.terms
def image9099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9099 : InImage map_15_196 image9099 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9099 : Bundle := named_bundle% "RealMapCertificates/relations/basis9099.json"
theorem reductionProof9099 : EqualModuloRelations reduction9099.relations reduction9099.input reduction9099.output := by lin_cert using reduction9099.terms
theorem substitutionProof9099 : IsMapEvaluation generatorImages reduction9099.relations [3,990] reduction9099.output := by lin_cert using reduction9099.terms
def image9100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9100 : InImage map_15_196 image9100 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9100 : Bundle := named_bundle% "RealMapCertificates/relations/basis9100.json"
theorem reductionProof9100 : EqualModuloRelations reduction9100.relations reduction9100.input reduction9100.output := by lin_cert using reduction9100.terms
theorem substitutionProof9100 : IsMapEvaluation generatorImages reduction9100.relations [2,1055] reduction9100.output := by lin_cert using reduction9100.terms
def image9101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9101 : InImage map_15_196 image9101 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9101 : Bundle := named_bundle% "RealMapCertificates/relations/basis9101.json"
theorem reductionProof9101 : EqualModuloRelations reduction9101.relations reduction9101.input reduction9101.output := by lin_cert using reduction9101.terms
theorem substitutionProof9101 : IsMapEvaluation generatorImages reduction9101.relations [1,1090] reduction9101.output := by lin_cert using reduction9101.terms
def image9102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9102 : InImage map_15_196 image9102 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9102 : Bundle := named_bundle% "RealMapCertificates/relations/basis9102.json"
theorem reductionProof9102 : EqualModuloRelations reduction9102.relations reduction9102.input reduction9102.output := by lin_cert using reduction9102.terms
theorem substitutionProof9102 : IsMapEvaluation generatorImages reduction9102.relations [1,1,1057] reduction9102.output := by lin_cert using reduction9102.terms
def image9103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9103 : InImage map_15_196 image9103 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9103 : Bundle := named_bundle% "RealMapCertificates/relations/basis9103.json"
theorem reductionProof9103 : EqualModuloRelations reduction9103.relations reduction9103.input reduction9103.output := by lin_cert using reduction9103.terms
theorem substitutionProof9103 : IsMapEvaluation generatorImages reduction9103.relations [0,1098] reduction9103.output := by lin_cert using reduction9103.terms
def image9104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9104 : InImage map_15_196 image9104 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9104 : Bundle := named_bundle% "RealMapCertificates/relations/basis9104.json"
theorem reductionProof9104 : EqualModuloRelations reduction9104.relations reduction9104.input reduction9104.output := by lin_cert using reduction9104.terms
theorem substitutionProof9104 : IsMapEvaluation generatorImages reduction9104.relations [0,0,1091] reduction9104.output := by lin_cert using reduction9104.terms
def image9105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9105 : InImage map_15_196 image9105 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9105 : Bundle := named_bundle% "RealMapCertificates/relations/basis9105.json"
theorem reductionProof9105 : EqualModuloRelations reduction9105.relations reduction9105.input reduction9105.output := by lin_cert using reduction9105.terms
theorem substitutionProof9105 : IsMapEvaluation generatorImages reduction9105.relations [0,0,0,0,66,324] reduction9105.output := by lin_cert using reduction9105.terms
def map_15_197 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image9248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9248 : InImage map_15_197 image9248 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction9248 : Bundle := named_bundle% "RealMapCertificates/relations/basis9248.json"
theorem reductionProof9248 : EqualModuloRelations reduction9248.relations reduction9248.input reduction9248.output := by lin_cert using reduction9248.terms
theorem substitutionProof9248 : IsMapEvaluation generatorImages reduction9248.relations [1131] reduction9248.output := by lin_cert using reduction9248.terms
def image9249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9249 : InImage map_15_197 image9249 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction9249 : Bundle := named_bundle% "RealMapCertificates/relations/basis9249.json"
theorem reductionProof9249 : EqualModuloRelations reduction9249.relations reduction9249.input reduction9249.output := by lin_cert using reduction9249.terms
theorem substitutionProof9249 : IsMapEvaluation generatorImages reduction9249.relations [1130] reduction9249.output := by lin_cert using reduction9249.terms
def image9250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9250 : InImage map_15_197 image9250 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction9250 : Bundle := named_bundle% "RealMapCertificates/relations/basis9250.json"
theorem reductionProof9250 : EqualModuloRelations reduction9250.relations reduction9250.input reduction9250.output := by lin_cert using reduction9250.terms
theorem substitutionProof9250 : IsMapEvaluation generatorImages reduction9250.relations [67,376] reduction9250.output := by lin_cert using reduction9250.terms
def image9251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9251 : InImage map_15_197 image9251 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction9251 : Bundle := named_bundle% "RealMapCertificates/relations/basis9251.json"
theorem reductionProof9251 : EqualModuloRelations reduction9251.relations reduction9251.input reduction9251.output := by lin_cert using reduction9251.terms
theorem substitutionProof9251 : IsMapEvaluation generatorImages reduction9251.relations [8,45,324] reduction9251.output := by lin_cert using reduction9251.terms
def image9252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9252 : InImage map_15_197 image9252 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction9252 : Bundle := named_bundle% "RealMapCertificates/relations/basis9252.json"
theorem reductionProof9252 : EqualModuloRelations reduction9252.relations reduction9252.input reduction9252.output := by lin_cert using reduction9252.terms
theorem substitutionProof9252 : IsMapEvaluation generatorImages reduction9252.relations [0,43,544] reduction9252.output := by lin_cert using reduction9252.terms
def image9253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9253 : InImage map_15_197 image9253 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction9253 : Bundle := named_bundle% "RealMapCertificates/relations/basis9253.json"
theorem reductionProof9253 : EqualModuloRelations reduction9253.relations reduction9253.input reduction9253.output := by lin_cert using reduction9253.terms
theorem substitutionProof9253 : IsMapEvaluation generatorImages reduction9253.relations [0,2,1057] reduction9253.output := by lin_cert using reduction9253.terms
def image9254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9254 : InImage map_15_197 image9254 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction9254 : Bundle := named_bundle% "RealMapCertificates/relations/basis9254.json"
theorem reductionProof9254 : EqualModuloRelations reduction9254.relations reduction9254.input reduction9254.output := by lin_cert using reduction9254.terms
theorem substitutionProof9254 : IsMapEvaluation generatorImages reduction9254.relations [0,0,1099] reduction9254.output := by lin_cert using reduction9254.terms
def map_15_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9435 : InImage map_15_198 image9435 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9435 : Bundle := named_bundle% "RealMapCertificates/relations/basis9435.json"
theorem reductionProof9435 : EqualModuloRelations reduction9435.relations reduction9435.input reduction9435.output := by lin_cert using reduction9435.terms
theorem substitutionProof9435 : IsMapEvaluation generatorImages reduction9435.relations [1158] reduction9435.output := by lin_cert using reduction9435.terms
def image9436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9436 : InImage map_15_198 image9436 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9436 : Bundle := named_bundle% "RealMapCertificates/relations/basis9436.json"
theorem reductionProof9436 : EqualModuloRelations reduction9436.relations reduction9436.input reduction9436.output := by lin_cert using reduction9436.terms
theorem substitutionProof9436 : IsMapEvaluation generatorImages reduction9436.relations [67,392] reduction9436.output := by lin_cert using reduction9436.terms
def image9437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9437 : InImage map_15_198 image9437 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9437 : Bundle := named_bundle% "RealMapCertificates/relations/basis9437.json"
theorem reductionProof9437 : EqualModuloRelations reduction9437.relations reduction9437.input reduction9437.output := by lin_cert using reduction9437.terms
theorem substitutionProof9437 : IsMapEvaluation generatorImages reduction9437.relations [0,1133] reduction9437.output := by lin_cert using reduction9437.terms
def image9438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9438 : InImage map_15_198 image9438 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9438 : Bundle := named_bundle% "RealMapCertificates/relations/basis9438.json"
theorem reductionProof9438 : EqualModuloRelations reduction9438.relations reduction9438.input reduction9438.output := by lin_cert using reduction9438.terms
theorem substitutionProof9438 : IsMapEvaluation generatorImages reduction9438.relations [0,1132] reduction9438.output := by lin_cert using reduction9438.terms
def map_15_199 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9569 : InImage map_15_199 image9569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9569 : Bundle := named_bundle% "RealMapCertificates/relations/basis9569.json"
theorem reductionProof9569 : EqualModuloRelations reduction9569.relations reduction9569.input reduction9569.output := by lin_cert using reduction9569.terms
theorem substitutionProof9569 : IsMapEvaluation generatorImages reduction9569.relations [0,1159] reduction9569.output := by lin_cert using reduction9569.terms
def image9570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9570 : InImage map_15_199 image9570 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9570 : Bundle := named_bundle% "RealMapCertificates/relations/basis9570.json"
theorem reductionProof9570 : EqualModuloRelations reduction9570.relations reduction9570.input reduction9570.output := by lin_cert using reduction9570.terms
theorem substitutionProof9570 : IsMapEvaluation generatorImages reduction9570.relations [0,67,397] reduction9570.output := by lin_cert using reduction9570.terms
def image9571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9571 : InImage map_15_199 image9571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9571 : Bundle := named_bundle% "RealMapCertificates/relations/basis9571.json"
theorem reductionProof9571 : EqualModuloRelations reduction9571.relations reduction9571.input reduction9571.output := by lin_cert using reduction9571.terms
theorem substitutionProof9571 : IsMapEvaluation generatorImages reduction9571.relations [0,0,0,1118] reduction9571.output := by lin_cert using reduction9571.terms
def map_15_200 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9717 : InImage map_15_200 image9717 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9717 : Bundle := named_bundle% "RealMapCertificates/relations/basis9717.json"
theorem reductionProof9717 : EqualModuloRelations reduction9717.relations reduction9717.input reduction9717.output := by lin_cert using reduction9717.terms
theorem substitutionProof9717 : IsMapEvaluation generatorImages reduction9717.relations [1189] reduction9717.output := by lin_cert using reduction9717.terms
def image9718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9718 : InImage map_15_200 image9718 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9718 : Bundle := named_bundle% "RealMapCertificates/relations/basis9718.json"
theorem reductionProof9718 : EqualModuloRelations reduction9718.relations reduction9718.input reduction9718.output := by lin_cert using reduction9718.terms
theorem substitutionProof9718 : IsMapEvaluation generatorImages reduction9718.relations [1188] reduction9718.output := by lin_cert using reduction9718.terms
def image9719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9719 : InImage map_15_200 image9719 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9719 : Bundle := named_bundle% "RealMapCertificates/relations/basis9719.json"
theorem reductionProof9719 : EqualModuloRelations reduction9719.relations reduction9719.input reduction9719.output := by lin_cert using reduction9719.terms
theorem substitutionProof9719 : IsMapEvaluation generatorImages reduction9719.relations [1187] reduction9719.output := by lin_cert using reduction9719.terms
def image9720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9720 : InImage map_15_200 image9720 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9720 : Bundle := named_bundle% "RealMapCertificates/relations/basis9720.json"
theorem reductionProof9720 : EqualModuloRelations reduction9720.relations reduction9720.input reduction9720.output := by lin_cert using reduction9720.terms
theorem substitutionProof9720 : IsMapEvaluation generatorImages reduction9720.relations [75,373] reduction9720.output := by lin_cert using reduction9720.terms
def image9721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9721 : InImage map_15_200 image9721 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9721 : Bundle := named_bundle% "RealMapCertificates/relations/basis9721.json"
theorem reductionProof9721 : EqualModuloRelations reduction9721.relations reduction9721.input reduction9721.output := by lin_cert using reduction9721.terms
theorem substitutionProof9721 : IsMapEvaluation generatorImages reduction9721.relations [8,8,23,324] reduction9721.output := by lin_cert using reduction9721.terms
def image9722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9722 : InImage map_15_200 image9722 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9722 : Bundle := named_bundle% "RealMapCertificates/relations/basis9722.json"
theorem reductionProof9722 : EqualModuloRelations reduction9722.relations reduction9722.input reduction9722.output := by lin_cert using reduction9722.terms
theorem substitutionProof9722 : IsMapEvaluation generatorImages reduction9722.relations [3,1056] reduction9722.output := by lin_cert using reduction9722.terms
def image9723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9723 : InImage map_15_200 image9723 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9723 : Bundle := named_bundle% "RealMapCertificates/relations/basis9723.json"
theorem reductionProof9723 : EqualModuloRelations reduction9723.relations reduction9723.input reduction9723.output := by lin_cert using reduction9723.terms
theorem substitutionProof9723 : IsMapEvaluation generatorImages reduction9723.relations [2,2,1057] reduction9723.output := by lin_cert using reduction9723.terms
def image9724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9724 : InImage map_15_200 image9724 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9724 : Bundle := named_bundle% "RealMapCertificates/relations/basis9724.json"
theorem reductionProof9724 : EqualModuloRelations reduction9724.relations reduction9724.input reduction9724.output := by lin_cert using reduction9724.terms
theorem substitutionProof9724 : IsMapEvaluation generatorImages reduction9724.relations [0,0,1160] reduction9724.output := by lin_cert using reduction9724.terms
def map_15_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9909 : InImage map_15_201 image9909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9909 : Bundle := named_bundle% "RealMapCertificates/relations/basis9909.json"
theorem reductionProof9909 : EqualModuloRelations reduction9909.relations reduction9909.input reduction9909.output := by lin_cert using reduction9909.terms
theorem substitutionProof9909 : IsMapEvaluation generatorImages reduction9909.relations [1210] reduction9909.output := by lin_cert using reduction9909.terms
def image9910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9910 : InImage map_15_201 image9910 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9910 : Bundle := named_bundle% "RealMapCertificates/relations/basis9910.json"
theorem reductionProof9910 : EqualModuloRelations reduction9910.relations reduction9910.input reduction9910.output := by lin_cert using reduction9910.terms
theorem substitutionProof9910 : IsMapEvaluation generatorImages reduction9910.relations [0,1191] reduction9910.output := by lin_cert using reduction9910.terms
def image9911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9911 : InImage map_15_201 image9911 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9911 : Bundle := named_bundle% "RealMapCertificates/relations/basis9911.json"
theorem reductionProof9911 : EqualModuloRelations reduction9911.relations reduction9911.input reduction9911.output := by lin_cert using reduction9911.terms
theorem substitutionProof9911 : IsMapEvaluation generatorImages reduction9911.relations [0,1190] reduction9911.output := by lin_cert using reduction9911.terms
def image9912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9912 : InImage map_15_201 image9912 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9912 : Bundle := named_bundle% "RealMapCertificates/relations/basis9912.json"
theorem reductionProof9912 : EqualModuloRelations reduction9912.relations reduction9912.input reduction9912.output := by lin_cert using reduction9912.terms
theorem substitutionProof9912 : IsMapEvaluation generatorImages reduction9912.relations [0,0,0,1161] reduction9912.output := by lin_cert using reduction9912.terms
def map_15_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10040 : InImage map_15_202 image10040 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10040 : Bundle := named_bundle% "RealMapCertificates/relations/basis10040.json"
theorem reductionProof10040 : EqualModuloRelations reduction10040.relations reduction10040.input reduction10040.output := by lin_cert using reduction10040.terms
theorem substitutionProof10040 : IsMapEvaluation generatorImages reduction10040.relations [1,1192] reduction10040.output := by lin_cert using reduction10040.terms
def image10041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10041 : InImage map_15_202 image10041 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10041 : Bundle := named_bundle% "RealMapCertificates/relations/basis10041.json"
theorem reductionProof10041 : EqualModuloRelations reduction10041.relations reduction10041.input reduction10041.output := by lin_cert using reduction10041.terms
theorem substitutionProof10041 : IsMapEvaluation generatorImages reduction10041.relations [0,92,333] reduction10041.output := by lin_cert using reduction10041.terms
def image10042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10042 : InImage map_15_202 image10042 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10042 : Bundle := named_bundle% "RealMapCertificates/relations/basis10042.json"
theorem reductionProof10042 : EqualModuloRelations reduction10042.relations reduction10042.input reduction10042.output := by lin_cert using reduction10042.terms
theorem substitutionProof10042 : IsMapEvaluation generatorImages reduction10042.relations [0,0,1195] reduction10042.output := by lin_cert using reduction10042.terms
def image10043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10043 : InImage map_15_202 image10043 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10043 : Bundle := named_bundle% "RealMapCertificates/relations/basis10043.json"
theorem reductionProof10043 : EqualModuloRelations reduction10043.relations reduction10043.input reduction10043.output := by lin_cert using reduction10043.terms
theorem substitutionProof10043 : IsMapEvaluation generatorImages reduction10043.relations [0,0,0,0,1162] reduction10043.output := by lin_cert using reduction10043.terms
def image10044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10044 : InImage map_15_202 image10044 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10044 : Bundle := named_bundle% "RealMapCertificates/relations/basis10044.json"
theorem reductionProof10044 : EqualModuloRelations reduction10044.relations reduction10044.input reduction10044.output := by lin_cert using reduction10044.terms
theorem substitutionProof10044 : IsMapEvaluation generatorImages reduction10044.relations [0,0,0,0,0,80,324] reduction10044.output := by lin_cert using reduction10044.terms
end RealMapCertificates
