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
  | 23 => [[7,7]]
  | 43 => []
  | 64 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 90 => []
  | 92 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 119 => [[1,9,12]]
  | 126 => []
  | 127 => []
  | 190 => []
  | 198 => []
  | 324 => []
  | 366 => []
  | 367 => []
  | 376 => []
  | 450 => []
  | 674 => []
  | 719 => []
  | 1056 => []
  | 1057 => []
  | 1058 => []
  | 1089 => []
  | 1091 => []
  | 1098 => []
  | 1099 => []
  | 1118 => []
  | 1132 => []
  | 1133 => []
  | 1134 => []
  | 1135 => []
  | 1159 => []
  | 1160 => []
  | 1190 => []
  | 1191 => []
  | 1192 => []
  | 1211 => []
  | 1212 => []
  | 1215 => []
  | 1225 => []
  | 1226 => []
  | 1249 => []
  | 1250 => []
  | 1251 => []
  | 1268 => []
  | 1269 => []
  | 1270 => []
  | 1294 => []
  | 1295 => []
  | 1296 => []
  | 1297 => []
  | 1309 => []
  | 1326 => []
  | 1327 => []
  | 1328 => []
  | 1330 => []
  | 1331 => []
  | 1340 => []
  | 1342 => []
  | 1346 => []
  | 1353 => []
  | 1354 => []
  | 1355 => []
  | 1356 => []
  | 1376 => []
  | 1377 => []
  | 1389 => []
  | 1390 => []
  | 1391 => []
  | 1392 => []
  | 1409 => []
  | 1410 => []
  | 1411 => []
  | 1414 => []
  | 1436 => []
  | 1450 => []
  | 1451 => []
  | 1452 => []
  | 1453 => []
  | 1454 => []
  | 1455 => []
  | 1495 => []
  | _ => []
def map_15_203 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image10221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10221 : InImage map_15_203 image10221 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction10221 : Bundle := named_bundle% "RealMapCertificates/relations/basis10221.json"
theorem reductionProof10221 : EqualModuloRelations reduction10221.relations reduction10221.input reduction10221.output := by lin_cert using reduction10221.terms
theorem substitutionProof10221 : IsMapEvaluation generatorImages reduction10221.relations [1251] reduction10221.output := by lin_cert using reduction10221.terms
def image10222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10222 : InImage map_15_203 image10222 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction10222 : Bundle := named_bundle% "RealMapCertificates/relations/basis10222.json"
theorem reductionProof10222 : EqualModuloRelations reduction10222.relations reduction10222.input reduction10222.output := by lin_cert using reduction10222.terms
theorem substitutionProof10222 : IsMapEvaluation generatorImages reduction10222.relations [1250] reduction10222.output := by lin_cert using reduction10222.terms
def image10223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10223 : InImage map_15_203 image10223 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction10223 : Bundle := named_bundle% "RealMapCertificates/relations/basis10223.json"
theorem reductionProof10223 : EqualModuloRelations reduction10223.relations reduction10223.input reduction10223.output := by lin_cert using reduction10223.terms
theorem substitutionProof10223 : IsMapEvaluation generatorImages reduction10223.relations [1249] reduction10223.output := by lin_cert using reduction10223.terms
def image10224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10224 : InImage map_15_203 image10224 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction10224 : Bundle := named_bundle% "RealMapCertificates/relations/basis10224.json"
theorem reductionProof10224 : EqualModuloRelations reduction10224.relations reduction10224.input reduction10224.output := by lin_cert using reduction10224.terms
theorem substitutionProof10224 : IsMapEvaluation generatorImages reduction10224.relations [8,9,23,324] reduction10224.output := by lin_cert using reduction10224.terms
def image10225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10225 : InImage map_15_203 image10225 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction10225 : Bundle := named_bundle% "RealMapCertificates/relations/basis10225.json"
theorem reductionProof10225 : EqualModuloRelations reduction10225.relations reduction10225.input reduction10225.output := by lin_cert using reduction10225.terms
theorem substitutionProof10225 : IsMapEvaluation generatorImages reduction10225.relations [3,1098] reduction10225.output := by lin_cert using reduction10225.terms
def image10226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10226 : InImage map_15_203 image10226 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction10226 : Bundle := named_bundle% "RealMapCertificates/relations/basis10226.json"
theorem reductionProof10226 : EqualModuloRelations reduction10226.relations reduction10226.input reduction10226.output := by lin_cert using reduction10226.terms
theorem substitutionProof10226 : IsMapEvaluation generatorImages reduction10226.relations [0,1225] reduction10226.output := by lin_cert using reduction10226.terms
def image10227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10227 : InImage map_15_203 image10227 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction10227 : Bundle := named_bundle% "RealMapCertificates/relations/basis10227.json"
theorem reductionProof10227 : EqualModuloRelations reduction10227.relations reduction10227.input reduction10227.output := by lin_cert using reduction10227.terms
theorem substitutionProof10227 : IsMapEvaluation generatorImages reduction10227.relations [0,3,1091] reduction10227.output := by lin_cert using reduction10227.terms
def image10228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10228 : InImage map_15_203 image10228 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction10228 : Bundle := named_bundle% "RealMapCertificates/relations/basis10228.json"
theorem reductionProof10228 : EqualModuloRelations reduction10228.relations reduction10228.input reduction10228.output := by lin_cert using reduction10228.terms
theorem substitutionProof10228 : IsMapEvaluation generatorImages reduction10228.relations [0,0,1212] reduction10228.output := by lin_cert using reduction10228.terms
def image10229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10229 : InImage map_15_203 image10229 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction10229 : Bundle := named_bundle% "RealMapCertificates/relations/basis10229.json"
theorem reductionProof10229 : EqualModuloRelations reduction10229.relations reduction10229.input reduction10229.output := by lin_cert using reduction10229.terms
theorem substitutionProof10229 : IsMapEvaluation generatorImages reduction10229.relations [0,0,0,0,0,0,0,0,0,0,0,1058] reduction10229.output := by lin_cert using reduction10229.terms
def map_15_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10423 : InImage map_15_204 image10423 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10423 : Bundle := named_bundle% "RealMapCertificates/relations/basis10423.json"
theorem reductionProof10423 : EqualModuloRelations reduction10423.relations reduction10423.input reduction10423.output := by lin_cert using reduction10423.terms
theorem substitutionProof10423 : IsMapEvaluation generatorImages reduction10423.relations [1269] reduction10423.output := by lin_cert using reduction10423.terms
def image10424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10424 : InImage map_15_204 image10424 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10424 : Bundle := named_bundle% "RealMapCertificates/relations/basis10424.json"
theorem reductionProof10424 : EqualModuloRelations reduction10424.relations reduction10424.input reduction10424.output := by lin_cert using reduction10424.terms
theorem substitutionProof10424 : IsMapEvaluation generatorImages reduction10424.relations [1268] reduction10424.output := by lin_cert using reduction10424.terms
def image10425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10425 : InImage map_15_204 image10425 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10425 : Bundle := named_bundle% "RealMapCertificates/relations/basis10425.json"
theorem reductionProof10425 : EqualModuloRelations reduction10425.relations reduction10425.input reduction10425.output := by lin_cert using reduction10425.terms
theorem substitutionProof10425 : IsMapEvaluation generatorImages reduction10425.relations [2,75,376] reduction10425.output := by lin_cert using reduction10425.terms
def image10426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10426 : InImage map_15_204 image10426 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10426 : Bundle := named_bundle% "RealMapCertificates/relations/basis10426.json"
theorem reductionProof10426 : EqualModuloRelations reduction10426.relations reduction10426.input reduction10426.output := by lin_cert using reduction10426.terms
theorem substitutionProof10426 : IsMapEvaluation generatorImages reduction10426.relations [0,0,0,1215] reduction10426.output := by lin_cert using reduction10426.terms
def image10427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10427 : InImage map_15_204 image10427 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10427 : Bundle := named_bundle% "RealMapCertificates/relations/basis10427.json"
theorem reductionProof10427 : EqualModuloRelations reduction10427.relations reduction10427.input reduction10427.output := by lin_cert using reduction10427.terms
theorem substitutionProof10427 : IsMapEvaluation generatorImages reduction10427.relations [0,0,0,0,90,324] reduction10427.output := by lin_cert using reduction10427.terms
def map_15_205 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10565 : InImage map_15_205 image10565 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10565 : Bundle := named_bundle% "RealMapCertificates/relations/basis10565.json"
theorem reductionProof10565 : EqualModuloRelations reduction10565.relations reduction10565.input reduction10565.output := by lin_cert using reduction10565.terms
theorem substitutionProof10565 : IsMapEvaluation generatorImages reduction10565.relations [1295] reduction10565.output := by lin_cert using reduction10565.terms
def image10566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10566 : InImage map_15_205 image10566 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10566 : Bundle := named_bundle% "RealMapCertificates/relations/basis10566.json"
theorem reductionProof10566 : EqualModuloRelations reduction10566.relations reduction10566.input reduction10566.output := by lin_cert using reduction10566.terms
theorem substitutionProof10566 : IsMapEvaluation generatorImages reduction10566.relations [1294] reduction10566.output := by lin_cert using reduction10566.terms
def image10567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10567 : InImage map_15_205 image10567 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10567 : Bundle := named_bundle% "RealMapCertificates/relations/basis10567.json"
theorem reductionProof10567 : EqualModuloRelations reduction10567.relations reduction10567.input reduction10567.output := by lin_cert using reduction10567.terms
theorem substitutionProof10567 : IsMapEvaluation generatorImages reduction10567.relations [3,1133] reduction10567.output := by lin_cert using reduction10567.terms
def image10568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10568 : InImage map_15_205 image10568 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10568 : Bundle := named_bundle% "RealMapCertificates/relations/basis10568.json"
theorem reductionProof10568 : EqualModuloRelations reduction10568.relations reduction10568.input reduction10568.output := by lin_cert using reduction10568.terms
theorem substitutionProof10568 : IsMapEvaluation generatorImages reduction10568.relations [3,1132] reduction10568.output := by lin_cert using reduction10568.terms
def image10569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10569 : InImage map_15_205 image10569 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10569 : Bundle := named_bundle% "RealMapCertificates/relations/basis10569.json"
theorem reductionProof10569 : EqualModuloRelations reduction10569.relations reduction10569.input reduction10569.output := by lin_cert using reduction10569.terms
theorem substitutionProof10569 : IsMapEvaluation generatorImages reduction10569.relations [1,1,1211] reduction10569.output := by lin_cert using reduction10569.terms
def image10570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10570 : InImage map_15_205 image10570 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10570 : Bundle := named_bundle% "RealMapCertificates/relations/basis10570.json"
theorem reductionProof10570 : EqualModuloRelations reduction10570.relations reduction10570.input reduction10570.output := by lin_cert using reduction10570.terms
theorem substitutionProof10570 : IsMapEvaluation generatorImages reduction10570.relations [0,1270] reduction10570.output := by lin_cert using reduction10570.terms
def image10571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10571 : InImage map_15_205 image10571 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10571 : Bundle := named_bundle% "RealMapCertificates/relations/basis10571.json"
theorem reductionProof10571 : EqualModuloRelations reduction10571.relations reduction10571.input reduction10571.output := by lin_cert using reduction10571.terms
theorem substitutionProof10571 : IsMapEvaluation generatorImages reduction10571.relations [0,92,366] reduction10571.output := by lin_cert using reduction10571.terms
def map_15_206 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image10761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10761 : InImage map_15_206 image10761 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction10761 : Bundle := named_bundle% "RealMapCertificates/relations/basis10761.json"
theorem reductionProof10761 : EqualModuloRelations reduction10761.relations reduction10761.input reduction10761.output := by lin_cert using reduction10761.terms
theorem substitutionProof10761 : IsMapEvaluation generatorImages reduction10761.relations [1309] reduction10761.output := by lin_cert using reduction10761.terms
def image10762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10762 : InImage map_15_206 image10762 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction10762 : Bundle := named_bundle% "RealMapCertificates/relations/basis10762.json"
theorem reductionProof10762 : EqualModuloRelations reduction10762.relations reduction10762.input reduction10762.output := by lin_cert using reduction10762.terms
theorem substitutionProof10762 : IsMapEvaluation generatorImages reduction10762.relations [190,198] reduction10762.output := by lin_cert using reduction10762.terms
def image10763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10763 : InImage map_15_206 image10763 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction10763 : Bundle := named_bundle% "RealMapCertificates/relations/basis10763.json"
theorem reductionProof10763 : EqualModuloRelations reduction10763.relations reduction10763.input reduction10763.output := by lin_cert using reduction10763.terms
theorem substitutionProof10763 : IsMapEvaluation generatorImages reduction10763.relations [112,324] reduction10763.output := by lin_cert using reduction10763.terms
def image10764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10764 : InImage map_15_206 image10764 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction10764 : Bundle := named_bundle% "RealMapCertificates/relations/basis10764.json"
theorem reductionProof10764 : EqualModuloRelations reduction10764.relations reduction10764.input reduction10764.output := by lin_cert using reduction10764.terms
theorem substitutionProof10764 : IsMapEvaluation generatorImages reduction10764.relations [76,450] reduction10764.output := by lin_cert using reduction10764.terms
def image10765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10765 : InImage map_15_206 image10765 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction10765 : Bundle := named_bundle% "RealMapCertificates/relations/basis10765.json"
theorem reductionProof10765 : EqualModuloRelations reduction10765.relations reduction10765.input reduction10765.output := by lin_cert using reduction10765.terms
theorem substitutionProof10765 : IsMapEvaluation generatorImages reduction10765.relations [8,13,23,324] reduction10765.output := by lin_cert using reduction10765.terms
def image10766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10766 : InImage map_15_206 image10766 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction10766 : Bundle := named_bundle% "RealMapCertificates/relations/basis10766.json"
theorem reductionProof10766 : EqualModuloRelations reduction10766.relations reduction10766.input reduction10766.output := by lin_cert using reduction10766.terms
theorem substitutionProof10766 : IsMapEvaluation generatorImages reduction10766.relations [1,1270] reduction10766.output := by lin_cert using reduction10766.terms
def image10767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10767 : InImage map_15_206 image10767 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction10767 : Bundle := named_bundle% "RealMapCertificates/relations/basis10767.json"
theorem reductionProof10767 : EqualModuloRelations reduction10767.relations reduction10767.input reduction10767.output := by lin_cert using reduction10767.terms
theorem substitutionProof10767 : IsMapEvaluation generatorImages reduction10767.relations [0,1297] reduction10767.output := by lin_cert using reduction10767.terms
def image10768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10768 : InImage map_15_206 image10768 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction10768 : Bundle := named_bundle% "RealMapCertificates/relations/basis10768.json"
theorem reductionProof10768 : EqualModuloRelations reduction10768.relations reduction10768.input reduction10768.output := by lin_cert using reduction10768.terms
theorem substitutionProof10768 : IsMapEvaluation generatorImages reduction10768.relations [0,1296] reduction10768.output := by lin_cert using reduction10768.terms
def image10769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10769 : InImage map_15_206 image10769 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction10769 : Bundle := named_bundle% "RealMapCertificates/relations/basis10769.json"
theorem reductionProof10769 : EqualModuloRelations reduction10769.relations reduction10769.input reduction10769.output := by lin_cert using reduction10769.terms
theorem substitutionProof10769 : IsMapEvaluation generatorImages reduction10769.relations [0,3,1135] reduction10769.output := by lin_cert using reduction10769.terms
def image10770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10770 : InImage map_15_206 image10770 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction10770 : Bundle := named_bundle% "RealMapCertificates/relations/basis10770.json"
theorem reductionProof10770 : EqualModuloRelations reduction10770.relations reduction10770.input reduction10770.output := by lin_cert using reduction10770.terms
theorem substitutionProof10770 : IsMapEvaluation generatorImages reduction10770.relations [0,0,92,367] reduction10770.output := by lin_cert using reduction10770.terms
def map_15_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10963 : InImage map_15_207 image10963 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10963 : Bundle := named_bundle% "RealMapCertificates/relations/basis10963.json"
theorem reductionProof10963 : EqualModuloRelations reduction10963.relations reduction10963.input reduction10963.output := by lin_cert using reduction10963.terms
theorem substitutionProof10963 : IsMapEvaluation generatorImages reduction10963.relations [1326] reduction10963.output := by lin_cert using reduction10963.terms
def image10964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10964 : InImage map_15_207 image10964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10964 : Bundle := named_bundle% "RealMapCertificates/relations/basis10964.json"
theorem reductionProof10964 : EqualModuloRelations reduction10964.relations reduction10964.input reduction10964.output := by lin_cert using reduction10964.terms
theorem substitutionProof10964 : IsMapEvaluation generatorImages reduction10964.relations [1,1297] reduction10964.output := by lin_cert using reduction10964.terms
def image10965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10965 : InImage map_15_207 image10965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10965 : Bundle := named_bundle% "RealMapCertificates/relations/basis10965.json"
theorem reductionProof10965 : EqualModuloRelations reduction10965.relations reduction10965.input reduction10965.output := by lin_cert using reduction10965.terms
theorem substitutionProof10965 : IsMapEvaluation generatorImages reduction10965.relations [0,113,324] reduction10965.output := by lin_cert using reduction10965.terms
def map_15_208 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11092 : InImage map_15_208 image11092 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11092 : Bundle := named_bundle% "RealMapCertificates/relations/basis11092.json"
theorem reductionProof11092 : EqualModuloRelations reduction11092.relations reduction11092.input reduction11092.output := by lin_cert using reduction11092.terms
theorem substitutionProof11092 : IsMapEvaluation generatorImages reduction11092.relations [7,1056] reduction11092.output := by lin_cert using reduction11092.terms
def image11093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11093 : InImage map_15_208 image11093 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11093 : Bundle := named_bundle% "RealMapCertificates/relations/basis11093.json"
theorem reductionProof11093 : EqualModuloRelations reduction11093.relations reduction11093.input reduction11093.output := by lin_cert using reduction11093.terms
theorem substitutionProof11093 : IsMapEvaluation generatorImages reduction11093.relations [3,1192] reduction11093.output := by lin_cert using reduction11093.terms
def image11094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11094 : InImage map_15_208 image11094 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11094 : Bundle := named_bundle% "RealMapCertificates/relations/basis11094.json"
theorem reductionProof11094 : EqualModuloRelations reduction11094.relations reduction11094.input reduction11094.output := by lin_cert using reduction11094.terms
theorem substitutionProof11094 : IsMapEvaluation generatorImages reduction11094.relations [3,1191] reduction11094.output := by lin_cert using reduction11094.terms
def image11095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11095 : InImage map_15_208 image11095 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11095 : Bundle := named_bundle% "RealMapCertificates/relations/basis11095.json"
theorem reductionProof11095 : EqualModuloRelations reduction11095.relations reduction11095.input reduction11095.output := by lin_cert using reduction11095.terms
theorem substitutionProof11095 : IsMapEvaluation generatorImages reduction11095.relations [3,1190] reduction11095.output := by lin_cert using reduction11095.terms
def image11096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11096 : InImage map_15_208 image11096 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11096 : Bundle := named_bundle% "RealMapCertificates/relations/basis11096.json"
theorem reductionProof11096 : EqualModuloRelations reduction11096.relations reduction11096.input reduction11096.output := by lin_cert using reduction11096.terms
theorem substitutionProof11096 : IsMapEvaluation generatorImages reduction11096.relations [2,1270] reduction11096.output := by lin_cert using reduction11096.terms
def image11097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11097 : InImage map_15_208 image11097 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11097 : Bundle := named_bundle% "RealMapCertificates/relations/basis11097.json"
theorem reductionProof11097 : EqualModuloRelations reduction11097.relations reduction11097.input reduction11097.output := by lin_cert using reduction11097.terms
theorem substitutionProof11097 : IsMapEvaluation generatorImages reduction11097.relations [0,1328] reduction11097.output := by lin_cert using reduction11097.terms
def map_15_209 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11280 : InImage map_15_209 image11280 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11280 : Bundle := named_bundle% "RealMapCertificates/relations/basis11280.json"
theorem reductionProof11280 : EqualModuloRelations reduction11280.relations reduction11280.input reduction11280.output := by lin_cert using reduction11280.terms
theorem substitutionProof11280 : IsMapEvaluation generatorImages reduction11280.relations [1353] reduction11280.output := by lin_cert using reduction11280.terms
def image11281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11281 : InImage map_15_209 image11281 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11281 : Bundle := named_bundle% "RealMapCertificates/relations/basis11281.json"
theorem reductionProof11281 : EqualModuloRelations reduction11281.relations reduction11281.input reduction11281.output := by lin_cert using reduction11281.terms
theorem substitutionProof11281 : IsMapEvaluation generatorImages reduction11281.relations [9,13,23,324] reduction11281.output := by lin_cert using reduction11281.terms
def image11282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11282 : InImage map_15_209 image11282 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11282 : Bundle := named_bundle% "RealMapCertificates/relations/basis11282.json"
theorem reductionProof11282 : EqualModuloRelations reduction11282.relations reduction11282.input reduction11282.output := by lin_cert using reduction11282.terms
theorem substitutionProof11282 : IsMapEvaluation generatorImages reduction11282.relations [8,64,324] reduction11282.output := by lin_cert using reduction11282.terms
def image11283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11283 : InImage map_15_209 image11283 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11283 : Bundle := named_bundle% "RealMapCertificates/relations/basis11283.json"
theorem reductionProof11283 : EqualModuloRelations reduction11283.relations reduction11283.input reduction11283.output := by lin_cert using reduction11283.terms
theorem substitutionProof11283 : IsMapEvaluation generatorImages reduction11283.relations [1,1327] reduction11283.output := by lin_cert using reduction11283.terms
def image11284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11284 : InImage map_15_209 image11284 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11284 : Bundle := named_bundle% "RealMapCertificates/relations/basis11284.json"
theorem reductionProof11284 : EqualModuloRelations reduction11284.relations reduction11284.input reduction11284.output := by lin_cert using reduction11284.terms
theorem substitutionProof11284 : IsMapEvaluation generatorImages reduction11284.relations [0,1340] reduction11284.output := by lin_cert using reduction11284.terms
def image11285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11285 : InImage map_15_209 image11285 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11285 : Bundle := named_bundle% "RealMapCertificates/relations/basis11285.json"
theorem reductionProof11285 : EqualModuloRelations reduction11285.relations reduction11285.input reduction11285.output := by lin_cert using reduction11285.terms
theorem substitutionProof11285 : IsMapEvaluation generatorImages reduction11285.relations [0,7,1057] reduction11285.output := by lin_cert using reduction11285.terms
def image11286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11286 : InImage map_15_209 image11286 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11286 : Bundle := named_bundle% "RealMapCertificates/relations/basis11286.json"
theorem reductionProof11286 : EqualModuloRelations reduction11286.relations reduction11286.input reduction11286.output := by lin_cert using reduction11286.terms
theorem substitutionProof11286 : IsMapEvaluation generatorImages reduction11286.relations [0,0,1331] reduction11286.output := by lin_cert using reduction11286.terms
def image11287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11287 : InImage map_15_209 image11287 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11287 : Bundle := named_bundle% "RealMapCertificates/relations/basis11287.json"
theorem reductionProof11287 : EqualModuloRelations reduction11287.relations reduction11287.input reduction11287.output := by lin_cert using reduction11287.terms
theorem substitutionProof11287 : IsMapEvaluation generatorImages reduction11287.relations [0,0,1330] reduction11287.output := by lin_cert using reduction11287.terms
def map_15_210 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image11478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11478 : InImage map_15_210 image11478 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction11478 : Bundle := named_bundle% "RealMapCertificates/relations/basis11478.json"
theorem reductionProof11478 : EqualModuloRelations reduction11478.relations reduction11478.input reduction11478.output := by lin_cert using reduction11478.terms
theorem substitutionProof11478 : IsMapEvaluation generatorImages reduction11478.relations [1377] reduction11478.output := by lin_cert using reduction11478.terms
def image11479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11479 : InImage map_15_210 image11479 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction11479 : Bundle := named_bundle% "RealMapCertificates/relations/basis11479.json"
theorem reductionProof11479 : EqualModuloRelations reduction11479.relations reduction11479.input reduction11479.output := by lin_cert using reduction11479.terms
theorem substitutionProof11479 : IsMapEvaluation generatorImages reduction11479.relations [1376] reduction11479.output := by lin_cert using reduction11479.terms
def image11480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11480 : InImage map_15_210 image11480 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction11480 : Bundle := named_bundle% "RealMapCertificates/relations/basis11480.json"
theorem reductionProof11480 : EqualModuloRelations reduction11480.relations reduction11480.input reduction11480.output := by lin_cert using reduction11480.terms
theorem substitutionProof11480 : IsMapEvaluation generatorImages reduction11480.relations [43,674] reduction11480.output := by lin_cert using reduction11480.terms
def image11481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11481 : InImage map_15_210 image11481 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction11481 : Bundle := named_bundle% "RealMapCertificates/relations/basis11481.json"
theorem reductionProof11481 : EqualModuloRelations reduction11481.relations reduction11481.input reduction11481.output := by lin_cert using reduction11481.terms
theorem substitutionProof11481 : IsMapEvaluation generatorImages reduction11481.relations [7,1089] reduction11481.output := by lin_cert using reduction11481.terms
def image11482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11482 : InImage map_15_210 image11482 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction11482 : Bundle := named_bundle% "RealMapCertificates/relations/basis11482.json"
theorem reductionProof11482 : EqualModuloRelations reduction11482.relations reduction11482.input reduction11482.output := by lin_cert using reduction11482.terms
theorem substitutionProof11482 : IsMapEvaluation generatorImages reduction11482.relations [3,1225] reduction11482.output := by lin_cert using reduction11482.terms
def image11483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11483 : InImage map_15_210 image11483 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction11483 : Bundle := named_bundle% "RealMapCertificates/relations/basis11483.json"
theorem reductionProof11483 : EqualModuloRelations reduction11483.relations reduction11483.input reduction11483.output := by lin_cert using reduction11483.terms
theorem substitutionProof11483 : IsMapEvaluation generatorImages reduction11483.relations [3,3,1091] reduction11483.output := by lin_cert using reduction11483.terms
def image11484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11484 : InImage map_15_210 image11484 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction11484 : Bundle := named_bundle% "RealMapCertificates/relations/basis11484.json"
theorem reductionProof11484 : EqualModuloRelations reduction11484.relations reduction11484.input reduction11484.output := by lin_cert using reduction11484.terms
theorem substitutionProof11484 : IsMapEvaluation generatorImages reduction11484.relations [1,7,1057] reduction11484.output := by lin_cert using reduction11484.terms
def image11485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11485 : InImage map_15_210 image11485 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction11485 : Bundle := named_bundle% "RealMapCertificates/relations/basis11485.json"
theorem reductionProof11485 : EqualModuloRelations reduction11485.relations reduction11485.input reduction11485.output := by lin_cert using reduction11485.terms
theorem substitutionProof11485 : IsMapEvaluation generatorImages reduction11485.relations [0,1354] reduction11485.output := by lin_cert using reduction11485.terms
def image11486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11486 : InImage map_15_210 image11486 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction11486 : Bundle := named_bundle% "RealMapCertificates/relations/basis11486.json"
theorem reductionProof11486 : EqualModuloRelations reduction11486.relations reduction11486.input reduction11486.output := by lin_cert using reduction11486.terms
theorem substitutionProof11486 : IsMapEvaluation generatorImages reduction11486.relations [0,118,324] reduction11486.output := by lin_cert using reduction11486.terms
def map_15_211 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11632 : InImage map_15_211 image11632 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11632 : Bundle := named_bundle% "RealMapCertificates/relations/basis11632.json"
theorem reductionProof11632 : EqualModuloRelations reduction11632.relations reduction11632.input reduction11632.output := by lin_cert using reduction11632.terms
theorem substitutionProof11632 : IsMapEvaluation generatorImages reduction11632.relations [1389] reduction11632.output := by lin_cert using reduction11632.terms
def image11633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11633 : InImage map_15_211 image11633 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11633 : Bundle := named_bundle% "RealMapCertificates/relations/basis11633.json"
theorem reductionProof11633 : EqualModuloRelations reduction11633.relations reduction11633.input reduction11633.output := by lin_cert using reduction11633.terms
theorem substitutionProof11633 : IsMapEvaluation generatorImages reduction11633.relations [7,1098] reduction11633.output := by lin_cert using reduction11633.terms
def image11634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11634 : InImage map_15_211 image11634 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11634 : Bundle := named_bundle% "RealMapCertificates/relations/basis11634.json"
theorem reductionProof11634 : EqualModuloRelations reduction11634.relations reduction11634.input reduction11634.output := by lin_cert using reduction11634.terms
theorem substitutionProof11634 : IsMapEvaluation generatorImages reduction11634.relations [0,7,1091] reduction11634.output := by lin_cert using reduction11634.terms
def image11635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11635 : InImage map_15_211 image11635 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11635 : Bundle := named_bundle% "RealMapCertificates/relations/basis11635.json"
theorem reductionProof11635 : EqualModuloRelations reduction11635.relations reduction11635.input reduction11635.output := by lin_cert using reduction11635.terms
theorem substitutionProof11635 : IsMapEvaluation generatorImages reduction11635.relations [0,3,1226] reduction11635.output := by lin_cert using reduction11635.terms
def image11636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11636 : InImage map_15_211 image11636 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11636 : Bundle := named_bundle% "RealMapCertificates/relations/basis11636.json"
theorem reductionProof11636 : EqualModuloRelations reduction11636.relations reduction11636.input reduction11636.output := by lin_cert using reduction11636.terms
theorem substitutionProof11636 : IsMapEvaluation generatorImages reduction11636.relations [0,0,1355] reduction11636.output := by lin_cert using reduction11636.terms
def image11637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11637 : InImage map_15_211 image11637 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11637 : Bundle := named_bundle% "RealMapCertificates/relations/basis11637.json"
theorem reductionProof11637 : EqualModuloRelations reduction11637.relations reduction11637.input reduction11637.output := by lin_cert using reduction11637.terms
theorem substitutionProof11637 : IsMapEvaluation generatorImages reduction11637.relations [0,0,3,1215] reduction11637.output := by lin_cert using reduction11637.terms
def image11638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11638 : InImage map_15_211 image11638 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11638 : Bundle := named_bundle% "RealMapCertificates/relations/basis11638.json"
theorem reductionProof11638 : EqualModuloRelations reduction11638.relations reduction11638.input reduction11638.output := by lin_cert using reduction11638.terms
theorem substitutionProof11638 : IsMapEvaluation generatorImages reduction11638.relations [0,0,0,1342] reduction11638.output := by lin_cert using reduction11638.terms
def map_15_212 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11827 : InImage map_15_212 image11827 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11827 : Bundle := named_bundle% "RealMapCertificates/relations/basis11827.json"
theorem reductionProof11827 : EqualModuloRelations reduction11827.relations reduction11827.input reduction11827.output := by lin_cert using reduction11827.terms
theorem substitutionProof11827 : IsMapEvaluation generatorImages reduction11827.relations [13,13,23,324] reduction11827.output := by lin_cert using reduction11827.terms
def image11828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11828 : InImage map_15_212 image11828 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11828 : Bundle := named_bundle% "RealMapCertificates/relations/basis11828.json"
theorem reductionProof11828 : EqualModuloRelations reduction11828.relations reduction11828.input reduction11828.output := by lin_cert using reduction11828.terms
theorem substitutionProof11828 : IsMapEvaluation generatorImages reduction11828.relations [8,72,324] reduction11828.output := by lin_cert using reduction11828.terms
def image11829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11829 : InImage map_15_212 image11829 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11829 : Bundle := named_bundle% "RealMapCertificates/relations/basis11829.json"
theorem reductionProof11829 : EqualModuloRelations reduction11829.relations reduction11829.input reduction11829.output := by lin_cert using reduction11829.terms
theorem substitutionProof11829 : IsMapEvaluation generatorImages reduction11829.relations [1,119,324] reduction11829.output := by lin_cert using reduction11829.terms
def image11830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11830 : InImage map_15_212 image11830 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11830 : Bundle := named_bundle% "RealMapCertificates/relations/basis11830.json"
theorem reductionProof11830 : EqualModuloRelations reduction11830.relations reduction11830.input reduction11830.output := by lin_cert using reduction11830.terms
theorem substitutionProof11830 : IsMapEvaluation generatorImages reduction11830.relations [0,1391] reduction11830.output := by lin_cert using reduction11830.terms
def image11831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11831 : InImage map_15_212 image11831 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11831 : Bundle := named_bundle% "RealMapCertificates/relations/basis11831.json"
theorem reductionProof11831 : EqualModuloRelations reduction11831.relations reduction11831.input reduction11831.output := by lin_cert using reduction11831.terms
theorem substitutionProof11831 : IsMapEvaluation generatorImages reduction11831.relations [0,1390] reduction11831.output := by lin_cert using reduction11831.terms
def image11832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11832 : InImage map_15_212 image11832 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11832 : Bundle := named_bundle% "RealMapCertificates/relations/basis11832.json"
theorem reductionProof11832 : EqualModuloRelations reduction11832.relations reduction11832.input reduction11832.output := by lin_cert using reduction11832.terms
theorem substitutionProof11832 : IsMapEvaluation generatorImages reduction11832.relations [0,7,1099] reduction11832.output := by lin_cert using reduction11832.terms
def image11833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11833 : InImage map_15_212 image11833 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11833 : Bundle := named_bundle% "RealMapCertificates/relations/basis11833.json"
theorem reductionProof11833 : EqualModuloRelations reduction11833.relations reduction11833.input reduction11833.output := by lin_cert using reduction11833.terms
theorem substitutionProof11833 : IsMapEvaluation generatorImages reduction11833.relations [0,0,0,1356] reduction11833.output := by lin_cert using reduction11833.terms
def image11834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11834 : InImage map_15_212 image11834 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11834 : Bundle := named_bundle% "RealMapCertificates/relations/basis11834.json"
theorem reductionProof11834 : EqualModuloRelations reduction11834.relations reduction11834.input reduction11834.output := by lin_cert using reduction11834.terms
theorem substitutionProof11834 : IsMapEvaluation generatorImages reduction11834.relations [0,0,0,0,1346] reduction11834.output := by lin_cert using reduction11834.terms
def map_15_213 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image12063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12063 : InImage map_15_213 image12063 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction12063 : Bundle := named_bundle% "RealMapCertificates/relations/basis12063.json"
theorem reductionProof12063 : EqualModuloRelations reduction12063.relations reduction12063.input reduction12063.output := by lin_cert using reduction12063.terms
theorem substitutionProof12063 : IsMapEvaluation generatorImages reduction12063.relations [7,1134] reduction12063.output := by lin_cert using reduction12063.terms
def image12064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12064 : InImage map_15_213 image12064 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction12064 : Bundle := named_bundle% "RealMapCertificates/relations/basis12064.json"
theorem reductionProof12064 : EqualModuloRelations reduction12064.relations reduction12064.input reduction12064.output := by lin_cert using reduction12064.terms
theorem substitutionProof12064 : IsMapEvaluation generatorImages reduction12064.relations [3,1296] reduction12064.output := by lin_cert using reduction12064.terms
def image12065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12065 : InImage map_15_213 image12065 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction12065 : Bundle := named_bundle% "RealMapCertificates/relations/basis12065.json"
theorem reductionProof12065 : EqualModuloRelations reduction12065.relations reduction12065.input reduction12065.output := by lin_cert using reduction12065.terms
theorem substitutionProof12065 : IsMapEvaluation generatorImages reduction12065.relations [2,1354] reduction12065.output := by lin_cert using reduction12065.terms
def image12066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12066 : InImage map_15_213 image12066 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction12066 : Bundle := named_bundle% "RealMapCertificates/relations/basis12066.json"
theorem reductionProof12066 : EqualModuloRelations reduction12066.relations reduction12066.input reduction12066.output := by lin_cert using reduction12066.terms
theorem substitutionProof12066 : IsMapEvaluation generatorImages reduction12066.relations [1,1391] reduction12066.output := by lin_cert using reduction12066.terms
def image12067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12067 : InImage map_15_213 image12067 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction12067 : Bundle := named_bundle% "RealMapCertificates/relations/basis12067.json"
theorem reductionProof12067 : EqualModuloRelations reduction12067.relations reduction12067.input reduction12067.output := by lin_cert using reduction12067.terms
theorem substitutionProof12067 : IsMapEvaluation generatorImages reduction12067.relations [0,1410] reduction12067.output := by lin_cert using reduction12067.terms
def image12068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12068 : InImage map_15_213 image12068 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction12068 : Bundle := named_bundle% "RealMapCertificates/relations/basis12068.json"
theorem reductionProof12068 : EqualModuloRelations reduction12068.relations reduction12068.input reduction12068.output := by lin_cert using reduction12068.terms
theorem substitutionProof12068 : IsMapEvaluation generatorImages reduction12068.relations [0,1409] reduction12068.output := by lin_cert using reduction12068.terms
def image12069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12069 : InImage map_15_213 image12069 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction12069 : Bundle := named_bundle% "RealMapCertificates/relations/basis12069.json"
theorem reductionProof12069 : EqualModuloRelations reduction12069.relations reduction12069.input reduction12069.output := by lin_cert using reduction12069.terms
theorem substitutionProof12069 : IsMapEvaluation generatorImages reduction12069.relations [0,127,324] reduction12069.output := by lin_cert using reduction12069.terms
def image12070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12070 : InImage map_15_213 image12070 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction12070 : Bundle := named_bundle% "RealMapCertificates/relations/basis12070.json"
theorem reductionProof12070 : EqualModuloRelations reduction12070.relations reduction12070.input reduction12070.output := by lin_cert using reduction12070.terms
theorem substitutionProof12070 : IsMapEvaluation generatorImages reduction12070.relations [0,126,324] reduction12070.output := by lin_cert using reduction12070.terms
def image12071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12071 : InImage map_15_213 image12071 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction12071 : Bundle := named_bundle% "RealMapCertificates/relations/basis12071.json"
theorem reductionProof12071 : EqualModuloRelations reduction12071.relations reduction12071.input reduction12071.output := by lin_cert using reduction12071.terms
theorem substitutionProof12071 : IsMapEvaluation generatorImages reduction12071.relations [0,3,3,1118] reduction12071.output := by lin_cert using reduction12071.terms
def image12072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12072 : InImage map_15_213 image12072 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction12072 : Bundle := named_bundle% "RealMapCertificates/relations/basis12072.json"
theorem reductionProof12072 : EqualModuloRelations reduction12072.relations reduction12072.input reduction12072.output := by lin_cert using reduction12072.terms
theorem substitutionProof12072 : IsMapEvaluation generatorImages reduction12072.relations [0,0,1392] reduction12072.output := by lin_cert using reduction12072.terms
def map_15_214 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12215 : InImage map_15_214 image12215 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12215 : Bundle := named_bundle% "RealMapCertificates/relations/basis12215.json"
theorem reductionProof12215 : EqualModuloRelations reduction12215.relations reduction12215.input reduction12215.output := by lin_cert using reduction12215.terms
theorem substitutionProof12215 : IsMapEvaluation generatorImages reduction12215.relations [1451] reduction12215.output := by lin_cert using reduction12215.terms
def image12216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12216 : InImage map_15_214 image12216 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12216 : Bundle := named_bundle% "RealMapCertificates/relations/basis12216.json"
theorem reductionProof12216 : EqualModuloRelations reduction12216.relations reduction12216.input reduction12216.output := by lin_cert using reduction12216.terms
theorem substitutionProof12216 : IsMapEvaluation generatorImages reduction12216.relations [1450] reduction12216.output := by lin_cert using reduction12216.terms
def image12217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12217 : InImage map_15_214 image12217 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12217 : Bundle := named_bundle% "RealMapCertificates/relations/basis12217.json"
theorem reductionProof12217 : EqualModuloRelations reduction12217.relations reduction12217.input reduction12217.output := by lin_cert using reduction12217.terms
theorem substitutionProof12217 : IsMapEvaluation generatorImages reduction12217.relations [43,719] reduction12217.output := by lin_cert using reduction12217.terms
def image12218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12218 : InImage map_15_214 image12218 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12218 : Bundle := named_bundle% "RealMapCertificates/relations/basis12218.json"
theorem reductionProof12218 : EqualModuloRelations reduction12218.relations reduction12218.input reduction12218.output := by lin_cert using reduction12218.terms
theorem substitutionProof12218 : IsMapEvaluation generatorImages reduction12218.relations [7,1159] reduction12218.output := by lin_cert using reduction12218.terms
def image12219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12219 : InImage map_15_214 image12219 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12219 : Bundle := named_bundle% "RealMapCertificates/relations/basis12219.json"
theorem reductionProof12219 : EqualModuloRelations reduction12219.relations reduction12219.input reduction12219.output := by lin_cert using reduction12219.terms
theorem substitutionProof12219 : IsMapEvaluation generatorImages reduction12219.relations [1,1409] reduction12219.output := by lin_cert using reduction12219.terms
def image12220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12220 : InImage map_15_214 image12220 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12220 : Bundle := named_bundle% "RealMapCertificates/relations/basis12220.json"
theorem reductionProof12220 : EqualModuloRelations reduction12220.relations reduction12220.input reduction12220.output := by lin_cert using reduction12220.terms
theorem substitutionProof12220 : IsMapEvaluation generatorImages reduction12220.relations [0,0,1411] reduction12220.output := by lin_cert using reduction12220.terms
def image12221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12221 : InImage map_15_214 image12221 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12221 : Bundle := named_bundle% "RealMapCertificates/relations/basis12221.json"
theorem reductionProof12221 : EqualModuloRelations reduction12221.relations reduction12221.input reduction12221.output := by lin_cert using reduction12221.terms
theorem substitutionProof12221 : IsMapEvaluation generatorImages reduction12221.relations [0,0,7,1118] reduction12221.output := by lin_cert using reduction12221.terms
def map_15_215 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12422 : InImage map_15_215 image12422 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12422 : Bundle := named_bundle% "RealMapCertificates/relations/basis12422.json"
theorem reductionProof12422 : EqualModuloRelations reduction12422.relations reduction12422.input reduction12422.output := by lin_cert using reduction12422.terms
theorem substitutionProof12422 : IsMapEvaluation generatorImages reduction12422.relations [8,79,324] reduction12422.output := by lin_cert using reduction12422.terms
def image12423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12423 : InImage map_15_215 image12423 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12423 : Bundle := named_bundle% "RealMapCertificates/relations/basis12423.json"
theorem reductionProof12423 : EqualModuloRelations reduction12423.relations reduction12423.input reduction12423.output := by lin_cert using reduction12423.terms
theorem substitutionProof12423 : IsMapEvaluation generatorImages reduction12423.relations [3,1328] reduction12423.output := by lin_cert using reduction12423.terms
def image12424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12424 : InImage map_15_215 image12424 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12424 : Bundle := named_bundle% "RealMapCertificates/relations/basis12424.json"
theorem reductionProof12424 : EqualModuloRelations reduction12424.relations reduction12424.input reduction12424.output := by lin_cert using reduction12424.terms
theorem substitutionProof12424 : IsMapEvaluation generatorImages reduction12424.relations [1,1436] reduction12424.output := by lin_cert using reduction12424.terms
def image12425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12425 : InImage map_15_215 image12425 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12425 : Bundle := named_bundle% "RealMapCertificates/relations/basis12425.json"
theorem reductionProof12425 : EqualModuloRelations reduction12425.relations reduction12425.input reduction12425.output := by lin_cert using reduction12425.terms
theorem substitutionProof12425 : IsMapEvaluation generatorImages reduction12425.relations [0,1453] reduction12425.output := by lin_cert using reduction12425.terms
def image12426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12426 : InImage map_15_215 image12426 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12426 : Bundle := named_bundle% "RealMapCertificates/relations/basis12426.json"
theorem reductionProof12426 : EqualModuloRelations reduction12426.relations reduction12426.input reduction12426.output := by lin_cert using reduction12426.terms
theorem substitutionProof12426 : IsMapEvaluation generatorImages reduction12426.relations [0,1452] reduction12426.output := by lin_cert using reduction12426.terms
def image12427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12427 : InImage map_15_215 image12427 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12427 : Bundle := named_bundle% "RealMapCertificates/relations/basis12427.json"
theorem reductionProof12427 : EqualModuloRelations reduction12427.relations reduction12427.input reduction12427.output := by lin_cert using reduction12427.terms
theorem substitutionProof12427 : IsMapEvaluation generatorImages reduction12427.relations [0,7,1160] reduction12427.output := by lin_cert using reduction12427.terms
def map_15_216 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12629 : InImage map_15_216 image12629 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12629 : Bundle := named_bundle% "RealMapCertificates/relations/basis12629.json"
theorem reductionProof12629 : EqualModuloRelations reduction12629.relations reduction12629.input reduction12629.output := by lin_cert using reduction12629.terms
theorem substitutionProof12629 : IsMapEvaluation generatorImages reduction12629.relations [1495] reduction12629.output := by lin_cert using reduction12629.terms
def image12630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12630 : InImage map_15_216 image12630 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12630 : Bundle := named_bundle% "RealMapCertificates/relations/basis12630.json"
theorem reductionProof12630 : EqualModuloRelations reduction12630.relations reduction12630.input reduction12630.output := by lin_cert using reduction12630.terms
theorem substitutionProof12630 : IsMapEvaluation generatorImages reduction12630.relations [2,126,324] reduction12630.output := by lin_cert using reduction12630.terms
def image12631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12631 : InImage map_15_216 image12631 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12631 : Bundle := named_bundle% "RealMapCertificates/relations/basis12631.json"
theorem reductionProof12631 : EqualModuloRelations reduction12631.relations reduction12631.input reduction12631.output := by lin_cert using reduction12631.terms
theorem substitutionProof12631 : IsMapEvaluation generatorImages reduction12631.relations [0,8,80,324] reduction12631.output := by lin_cert using reduction12631.terms
def image12632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12632 : InImage map_15_216 image12632 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12632 : Bundle := named_bundle% "RealMapCertificates/relations/basis12632.json"
theorem reductionProof12632 : EqualModuloRelations reduction12632.relations reduction12632.input reduction12632.output := by lin_cert using reduction12632.terms
theorem substitutionProof12632 : IsMapEvaluation generatorImages reduction12632.relations [0,3,1331] reduction12632.output := by lin_cert using reduction12632.terms
def image12633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12633 : InImage map_15_216 image12633 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12633 : Bundle := named_bundle% "RealMapCertificates/relations/basis12633.json"
theorem reductionProof12633 : EqualModuloRelations reduction12633.relations reduction12633.input reduction12633.output := by lin_cert using reduction12633.terms
theorem substitutionProof12633 : IsMapEvaluation generatorImages reduction12633.relations [0,0,1455] reduction12633.output := by lin_cert using reduction12633.terms
def image12634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12634 : InImage map_15_216 image12634 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12634 : Bundle := named_bundle% "RealMapCertificates/relations/basis12634.json"
theorem reductionProof12634 : EqualModuloRelations reduction12634.relations reduction12634.input reduction12634.output := by lin_cert using reduction12634.terms
theorem substitutionProof12634 : IsMapEvaluation generatorImages reduction12634.relations [0,0,1454] reduction12634.output := by lin_cert using reduction12634.terms
def image12635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12635 : InImage map_15_216 image12635 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12635 : Bundle := named_bundle% "RealMapCertificates/relations/basis12635.json"
theorem reductionProof12635 : EqualModuloRelations reduction12635.relations reduction12635.input reduction12635.output := by lin_cert using reduction12635.terms
theorem substitutionProof12635 : IsMapEvaluation generatorImages reduction12635.relations [0,0,0,0,1414] reduction12635.output := by lin_cert using reduction12635.terms
end RealMapCertificates
