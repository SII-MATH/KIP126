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
  | 33 => []
  | 80 => []
  | 83 => []
  | 89 => []
  | 101 => []
  | 128 => []
  | 150 => []
  | 156 => []
  | 168 => []
  | 169 => []
  | 176 => []
  | 177 => []
  | 187 => []
  | 188 => []
  | 195 => []
  | 197 => []
  | 201 => []
  | 203 => []
  | 209 => []
  | 212 => []
  | 324 => []
  | 352 => []
  | 396 => []
  | 1057 => []
  | 1118 => []
  | 1120 => []
  | 1213 => []
  | 1215 => []
  | 1226 => []
  | 1270 => []
  | 1273 => []
  | 1296 => []
  | 1297 => []
  | 1330 => []
  | 1332 => []
  | 1340 => []
  | 1342 => []
  | 1346 => []
  | 1354 => []
  | 1356 => []
  | 1391 => []
  | 1410 => []
  | 1414 => []
  | 1417 => []
  | 1418 => []
  | 1436 => []
  | 1452 => []
  | 1453 => []
  | 1454 => []
  | 1477 => []
  | 1496 => []
  | 1510 => []
  | 1524 => []
  | 1525 => []
  | 1526 => []
  | 1527 => []
  | 1563 => []
  | 1564 => []
  | 1601 => []
  | 1602 => []
  | 1603 => []
  | 1675 => []
  | 1676 => []
  | 1708 => []
  | 1709 => []
  | 1731 => []
  | 1732 => []
  | 1795 => []
  | 1796 => []
  | 1797 => []
  | 1798 => []
  | 1799 => []
  | 1800 => []
  | 1824 => []
  | 1825 => []
  | 1846 => []
  | 1847 => []
  | 1848 => []
  | 1879 => []
  | 1880 => []
  | 1881 => []
  | 1882 => []
  | 1883 => []
  | 1897 => []
  | 1920 => []
  | 1921 => []
  | 1953 => []
  | 1979 => []
  | 1980 => []
  | 1981 => []
  | _ => []
def map_15_217 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12778 : InImage map_15_217 image12778 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12778 : Bundle := named_bundle% "RealMapCertificates/relations/basis12778.json"
theorem reductionProof12778 : EqualModuloRelations reduction12778.relations reduction12778.input reduction12778.output := by lin_cert using reduction12778.terms
theorem substitutionProof12778 : IsMapEvaluation generatorImages reduction12778.relations [1510] reduction12778.output := by lin_cert using reduction12778.terms
def image12779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12779 : InImage map_15_217 image12779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12779 : Bundle := named_bundle% "RealMapCertificates/relations/basis12779.json"
theorem reductionProof12779 : EqualModuloRelations reduction12779.relations reduction12779.input reduction12779.output := by lin_cert using reduction12779.terms
theorem substitutionProof12779 : IsMapEvaluation generatorImages reduction12779.relations [3,1354] reduction12779.output := by lin_cert using reduction12779.terms
def image12780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12780 : InImage map_15_217 image12780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12780 : Bundle := named_bundle% "RealMapCertificates/relations/basis12780.json"
theorem reductionProof12780 : EqualModuloRelations reduction12780.relations reduction12780.input reduction12780.output := by lin_cert using reduction12780.terms
theorem substitutionProof12780 : IsMapEvaluation generatorImages reduction12780.relations [0,0,3,1332] reduction12780.output := by lin_cert using reduction12780.terms
def image12781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12781 : InImage map_15_217 image12781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12781 : Bundle := named_bundle% "RealMapCertificates/relations/basis12781.json"
theorem reductionProof12781 : EqualModuloRelations reduction12781.relations reduction12781.input reduction12781.output := by lin_cert using reduction12781.terms
theorem substitutionProof12781 : IsMapEvaluation generatorImages reduction12781.relations [0,0,0,0,0,1418] reduction12781.output := by lin_cert using reduction12781.terms
def image12782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12782 : InImage map_15_217 image12782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12782 : Bundle := named_bundle% "RealMapCertificates/relations/basis12782.json"
theorem reductionProof12782 : EqualModuloRelations reduction12782.relations reduction12782.input reduction12782.output := by lin_cert using reduction12782.terms
theorem substitutionProof12782 : IsMapEvaluation generatorImages reduction12782.relations [0,0,0,0,0,1417] reduction12782.output := by lin_cert using reduction12782.terms
def map_15_218 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12983 : InImage map_15_218 image12983 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12983 : Bundle := named_bundle% "RealMapCertificates/relations/basis12983.json"
theorem reductionProof12983 : EqualModuloRelations reduction12983.relations reduction12983.input reduction12983.output := by lin_cert using reduction12983.terms
theorem substitutionProof12983 : IsMapEvaluation generatorImages reduction12983.relations [1524] reduction12983.output := by lin_cert using reduction12983.terms
def image12984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12984 : InImage map_15_218 image12984 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12984 : Bundle := named_bundle% "RealMapCertificates/relations/basis12984.json"
theorem reductionProof12984 : EqualModuloRelations reduction12984.relations reduction12984.input reduction12984.output := by lin_cert using reduction12984.terms
theorem substitutionProof12984 : IsMapEvaluation generatorImages reduction12984.relations [13,13,33,324] reduction12984.output := by lin_cert using reduction12984.terms
def image12985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12985 : InImage map_15_218 image12985 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12985 : Bundle := named_bundle% "RealMapCertificates/relations/basis12985.json"
theorem reductionProof12985 : EqualModuloRelations reduction12985.relations reduction12985.input reduction12985.output := by lin_cert using reduction12985.terms
theorem substitutionProof12985 : IsMapEvaluation generatorImages reduction12985.relations [8,89,324] reduction12985.output := by lin_cert using reduction12985.terms
def image12986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12986 : InImage map_15_218 image12986 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12986 : Bundle := named_bundle% "RealMapCertificates/relations/basis12986.json"
theorem reductionProof12986 : EqualModuloRelations reduction12986.relations reduction12986.input reduction12986.output := by lin_cert using reduction12986.terms
theorem substitutionProof12986 : IsMapEvaluation generatorImages reduction12986.relations [3,3,1226] reduction12986.output := by lin_cert using reduction12986.terms
def image12987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12987 : InImage map_15_218 image12987 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12987 : Bundle := named_bundle% "RealMapCertificates/relations/basis12987.json"
theorem reductionProof12987 : EqualModuloRelations reduction12987.relations reduction12987.input reduction12987.output := by lin_cert using reduction12987.terms
theorem substitutionProof12987 : IsMapEvaluation generatorImages reduction12987.relations [2,1453] reduction12987.output := by lin_cert using reduction12987.terms
def image12988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12988 : InImage map_15_218 image12988 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12988 : Bundle := named_bundle% "RealMapCertificates/relations/basis12988.json"
theorem reductionProof12988 : EqualModuloRelations reduction12988.relations reduction12988.input reduction12988.output := by lin_cert using reduction12988.terms
theorem substitutionProof12988 : IsMapEvaluation generatorImages reduction12988.relations [2,1452] reduction12988.output := by lin_cert using reduction12988.terms
def image12989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12989 : InImage map_15_218 image12989 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12989 : Bundle := named_bundle% "RealMapCertificates/relations/basis12989.json"
theorem reductionProof12989 : EqualModuloRelations reduction12989.relations reduction12989.input reduction12989.output := by lin_cert using reduction12989.terms
theorem substitutionProof12989 : IsMapEvaluation generatorImages reduction12989.relations [0,3,3,1215] reduction12989.output := by lin_cert using reduction12989.terms
def image12990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12990 : InImage map_15_218 image12990 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12990 : Bundle := named_bundle% "RealMapCertificates/relations/basis12990.json"
theorem reductionProof12990 : EqualModuloRelations reduction12990.relations reduction12990.input reduction12990.output := by lin_cert using reduction12990.terms
theorem substitutionProof12990 : IsMapEvaluation generatorImages reduction12990.relations [0,0,1496] reduction12990.output := by lin_cert using reduction12990.terms
def map_15_219 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13207 : InImage map_15_219 image13207 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13207 : Bundle := named_bundle% "RealMapCertificates/relations/basis13207.json"
theorem reductionProof13207 : EqualModuloRelations reduction13207.relations reduction13207.input reduction13207.output := by lin_cert using reduction13207.terms
theorem substitutionProof13207 : IsMapEvaluation generatorImages reduction13207.relations [1,7,1213] reduction13207.output := by lin_cert using reduction13207.terms
def image13208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13208 : InImage map_15_219 image13208 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13208 : Bundle := named_bundle% "RealMapCertificates/relations/basis13208.json"
theorem reductionProof13208 : EqualModuloRelations reduction13208.relations reduction13208.input reduction13208.output := by lin_cert using reduction13208.terms
theorem substitutionProof13208 : IsMapEvaluation generatorImages reduction13208.relations [0,1525] reduction13208.output := by lin_cert using reduction13208.terms
def image13209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13209 : InImage map_15_219 image13209 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13209 : Bundle := named_bundle% "RealMapCertificates/relations/basis13209.json"
theorem reductionProof13209 : EqualModuloRelations reduction13209.relations reduction13209.input reduction13209.output := by lin_cert using reduction13209.terms
theorem substitutionProof13209 : IsMapEvaluation generatorImages reduction13209.relations [0,9,80,324] reduction13209.output := by lin_cert using reduction13209.terms
def image13210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13210 : InImage map_15_219 image13210 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13210 : Bundle := named_bundle% "RealMapCertificates/relations/basis13210.json"
theorem reductionProof13210 : EqualModuloRelations reduction13210.relations reduction13210.input reduction13210.output := by lin_cert using reduction13210.terms
theorem substitutionProof13210 : IsMapEvaluation generatorImages reduction13210.relations [0,2,1454] reduction13210.output := by lin_cert using reduction13210.terms
def image13211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13211 : InImage map_15_219 image13211 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13211 : Bundle := named_bundle% "RealMapCertificates/relations/basis13211.json"
theorem reductionProof13211 : EqualModuloRelations reduction13211.relations reduction13211.input reduction13211.output := by lin_cert using reduction13211.terms
theorem substitutionProof13211 : IsMapEvaluation generatorImages reduction13211.relations [0,0,0,0,0,0,0,128,324] reduction13211.output := by lin_cert using reduction13211.terms
def map_15_220 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13341 : InImage map_15_220 image13341 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13341 : Bundle := named_bundle% "RealMapCertificates/relations/basis13341.json"
theorem reductionProof13341 : EqualModuloRelations reduction13341.relations reduction13341.input reduction13341.output := by lin_cert using reduction13341.terms
theorem substitutionProof13341 : IsMapEvaluation generatorImages reduction13341.relations [13,1120] reduction13341.output := by lin_cert using reduction13341.terms
def image13342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13342 : InImage map_15_220 image13342 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13342 : Bundle := named_bundle% "RealMapCertificates/relations/basis13342.json"
theorem reductionProof13342 : EqualModuloRelations reduction13342.relations reduction13342.input reduction13342.output := by lin_cert using reduction13342.terms
theorem substitutionProof13342 : IsMapEvaluation generatorImages reduction13342.relations [7,1270] reduction13342.output := by lin_cert using reduction13342.terms
def image13343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13343 : InImage map_15_220 image13343 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13343 : Bundle := named_bundle% "RealMapCertificates/relations/basis13343.json"
theorem reductionProof13343 : EqualModuloRelations reduction13343.relations reduction13343.input reduction13343.output := by lin_cert using reduction13343.terms
theorem substitutionProof13343 : IsMapEvaluation generatorImages reduction13343.relations [3,1410] reduction13343.output := by lin_cert using reduction13343.terms
def image13344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13344 : InImage map_15_220 image13344 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13344 : Bundle := named_bundle% "RealMapCertificates/relations/basis13344.json"
theorem reductionProof13344 : EqualModuloRelations reduction13344.relations reduction13344.input reduction13344.output := by lin_cert using reduction13344.terms
theorem substitutionProof13344 : IsMapEvaluation generatorImages reduction13344.relations [1,1526] reduction13344.output := by lin_cert using reduction13344.terms
def image13345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13345 : InImage map_15_220 image13345 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13345 : Bundle := named_bundle% "RealMapCertificates/relations/basis13345.json"
theorem reductionProof13345 : EqualModuloRelations reduction13345.relations reduction13345.input reduction13345.output := by lin_cert using reduction13345.terms
theorem substitutionProof13345 : IsMapEvaluation generatorImages reduction13345.relations [1,1525] reduction13345.output := by lin_cert using reduction13345.terms
def image13346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13346 : InImage map_15_220 image13346 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13346 : Bundle := named_bundle% "RealMapCertificates/relations/basis13346.json"
theorem reductionProof13346 : EqualModuloRelations reduction13346.relations reduction13346.input reduction13346.output := by lin_cert using reduction13346.terms
theorem substitutionProof13346 : IsMapEvaluation generatorImages reduction13346.relations [0,0,1527] reduction13346.output := by lin_cert using reduction13346.terms
def map_15_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13553 : InImage map_15_221 image13553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13553 : Bundle := named_bundle% "RealMapCertificates/relations/basis13553.json"
theorem reductionProof13553 : EqualModuloRelations reduction13553.relations reduction13553.input reduction13553.output := by lin_cert using reduction13553.terms
theorem substitutionProof13553 : IsMapEvaluation generatorImages reduction13553.relations [8,101,324] reduction13553.output := by lin_cert using reduction13553.terms
def image13554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13554 : InImage map_15_221 image13554 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13554 : Bundle := named_bundle% "RealMapCertificates/relations/basis13554.json"
theorem reductionProof13554 : EqualModuloRelations reduction13554.relations reduction13554.input reduction13554.output := by lin_cert using reduction13554.terms
theorem substitutionProof13554 : IsMapEvaluation generatorImages reduction13554.relations [7,1297] reduction13554.output := by lin_cert using reduction13554.terms
def image13555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13555 : InImage map_15_221 image13555 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13555 : Bundle := named_bundle% "RealMapCertificates/relations/basis13555.json"
theorem reductionProof13555 : EqualModuloRelations reduction13555.relations reduction13555.input reduction13555.output := by lin_cert using reduction13555.terms
theorem substitutionProof13555 : IsMapEvaluation generatorImages reduction13555.relations [7,1296] reduction13555.output := by lin_cert using reduction13555.terms
def image13556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13556 : InImage map_15_221 image13556 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13556 : Bundle := named_bundle% "RealMapCertificates/relations/basis13556.json"
theorem reductionProof13556 : EqualModuloRelations reduction13556.relations reduction13556.input reduction13556.output := by lin_cert using reduction13556.terms
theorem substitutionProof13556 : IsMapEvaluation generatorImages reduction13556.relations [3,1436] reduction13556.output := by lin_cert using reduction13556.terms
def map_15_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13776 : InImage map_15_222 image13776 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13776 : Bundle := named_bundle% "RealMapCertificates/relations/basis13776.json"
theorem reductionProof13776 : EqualModuloRelations reduction13776.relations reduction13776.input reduction13776.output := by lin_cert using reduction13776.terms
theorem substitutionProof13776 : IsMapEvaluation generatorImages reduction13776.relations [156,324] reduction13776.output := by lin_cert using reduction13776.terms
def image13777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13777 : InImage map_15_222 image13777 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13777 : Bundle := named_bundle% "RealMapCertificates/relations/basis13777.json"
theorem reductionProof13777 : EqualModuloRelations reduction13777.relations reduction13777.input reduction13777.output := by lin_cert using reduction13777.terms
theorem substitutionProof13777 : IsMapEvaluation generatorImages reduction13777.relations [0,13,80,324] reduction13777.output := by lin_cert using reduction13777.terms
def image13778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13778 : InImage map_15_222 image13778 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13778 : Bundle := named_bundle% "RealMapCertificates/relations/basis13778.json"
theorem reductionProof13778 : EqualModuloRelations reduction13778.relations reduction13778.input reduction13778.output := by lin_cert using reduction13778.terms
theorem substitutionProof13778 : IsMapEvaluation generatorImages reduction13778.relations [0,0,1564] reduction13778.output := by lin_cert using reduction13778.terms
def image13779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13779 : InImage map_15_222 image13779 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13779 : Bundle := named_bundle% "RealMapCertificates/relations/basis13779.json"
theorem reductionProof13779 : EqualModuloRelations reduction13779.relations reduction13779.input reduction13779.output := by lin_cert using reduction13779.terms
theorem substitutionProof13779 : IsMapEvaluation generatorImages reduction13779.relations [0,0,7,1273] reduction13779.output := by lin_cert using reduction13779.terms
def map_15_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13919 : InImage map_15_223 image13919 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13919 : Bundle := named_bundle% "RealMapCertificates/relations/basis13919.json"
theorem reductionProof13919 : EqualModuloRelations reduction13919.relations reduction13919.input reduction13919.output := by lin_cert using reduction13919.terms
theorem substitutionProof13919 : IsMapEvaluation generatorImages reduction13919.relations [3,3,1330] reduction13919.output := by lin_cert using reduction13919.terms
def image13920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13920 : InImage map_15_223 image13920 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13920 : Bundle := named_bundle% "RealMapCertificates/relations/basis13920.json"
theorem reductionProof13920 : EqualModuloRelations reduction13920.relations reduction13920.input reduction13920.output := by lin_cert using reduction13920.terms
theorem substitutionProof13920 : IsMapEvaluation generatorImages reduction13920.relations [0,1601] reduction13920.output := by lin_cert using reduction13920.terms
def map_15_224 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image14119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14119 : InImage map_15_224 image14119 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14119 : Bundle := named_bundle% "RealMapCertificates/relations/basis14119.json"
theorem reductionProof14119 : EqualModuloRelations reduction14119.relations reduction14119.input reduction14119.output := by lin_cert using reduction14119.terms
theorem substitutionProof14119 : IsMapEvaluation generatorImages reduction14119.relations [9,101,324] reduction14119.output := by lin_cert using reduction14119.terms
def image14120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14120 : InImage map_15_224 image14120 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14120 : Bundle := named_bundle% "RealMapCertificates/relations/basis14120.json"
theorem reductionProof14120 : EqualModuloRelations reduction14120.relations reduction14120.input reduction14120.output := by lin_cert using reduction14120.terms
theorem substitutionProof14120 : IsMapEvaluation generatorImages reduction14120.relations [7,1340] reduction14120.output := by lin_cert using reduction14120.terms
def image14121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14121 : InImage map_15_224 image14121 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14121 : Bundle := named_bundle% "RealMapCertificates/relations/basis14121.json"
theorem reductionProof14121 : EqualModuloRelations reduction14121.relations reduction14121.input reduction14121.output := by lin_cert using reduction14121.terms
theorem substitutionProof14121 : IsMapEvaluation generatorImages reduction14121.relations [7,7,1057] reduction14121.output := by lin_cert using reduction14121.terms
def image14122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14122 : InImage map_15_224 image14122 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14122 : Bundle := named_bundle% "RealMapCertificates/relations/basis14122.json"
theorem reductionProof14122 : EqualModuloRelations reduction14122.relations reduction14122.input reduction14122.output := by lin_cert using reduction14122.terms
theorem substitutionProof14122 : IsMapEvaluation generatorImages reduction14122.relations [2,1563] reduction14122.output := by lin_cert using reduction14122.terms
def image14123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14123 : InImage map_15_224 image14123 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14123 : Bundle := named_bundle% "RealMapCertificates/relations/basis14123.json"
theorem reductionProof14123 : EqualModuloRelations reduction14123.relations reduction14123.input reduction14123.output := by lin_cert using reduction14123.terms
theorem substitutionProof14123 : IsMapEvaluation generatorImages reduction14123.relations [2,150,324] reduction14123.output := by lin_cert using reduction14123.terms
def image14124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14124 : InImage map_15_224 image14124 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14124 : Bundle := named_bundle% "RealMapCertificates/relations/basis14124.json"
theorem reductionProof14124 : EqualModuloRelations reduction14124.relations reduction14124.input reduction14124.output := by lin_cert using reduction14124.terms
theorem substitutionProof14124 : IsMapEvaluation generatorImages reduction14124.relations [1,1601] reduction14124.output := by lin_cert using reduction14124.terms
def image14125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14125 : InImage map_15_224 image14125 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14125 : Bundle := named_bundle% "RealMapCertificates/relations/basis14125.json"
theorem reductionProof14125 : EqualModuloRelations reduction14125.relations reduction14125.input reduction14125.output := by lin_cert using reduction14125.terms
theorem substitutionProof14125 : IsMapEvaluation generatorImages reduction14125.relations [0,0,1602] reduction14125.output := by lin_cert using reduction14125.terms
def map_15_225 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14332 : InImage map_15_225 image14332 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14332 : Bundle := named_bundle% "RealMapCertificates/relations/basis14332.json"
theorem reductionProof14332 : EqualModuloRelations reduction14332.relations reduction14332.input reduction14332.output := by lin_cert using reduction14332.terms
theorem substitutionProof14332 : IsMapEvaluation generatorImages reduction14332.relations [0,0,0,1603] reduction14332.output := by lin_cert using reduction14332.terms
def map_15_226 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14476 : InImage map_15_226 image14476 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14476 : Bundle := named_bundle% "RealMapCertificates/relations/basis14476.json"
theorem reductionProof14476 : EqualModuloRelations reduction14476.relations reduction14476.input reduction14476.output := by lin_cert using reduction14476.terms
theorem substitutionProof14476 : IsMapEvaluation generatorImages reduction14476.relations [1675] reduction14476.output := by lin_cert using reduction14476.terms
def image14477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14477 : InImage map_15_226 image14477 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14477 : Bundle := named_bundle% "RealMapCertificates/relations/basis14477.json"
theorem reductionProof14477 : EqualModuloRelations reduction14477.relations reduction14477.input reduction14477.output := by lin_cert using reduction14477.terms
theorem substitutionProof14477 : IsMapEvaluation generatorImages reduction14477.relations [168,324] reduction14477.output := by lin_cert using reduction14477.terms
def image14478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14478 : InImage map_15_226 image14478 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14478 : Bundle := named_bundle% "RealMapCertificates/relations/basis14478.json"
theorem reductionProof14478 : EqualModuloRelations reduction14478.relations reduction14478.input reduction14478.output := by lin_cert using reduction14478.terms
theorem substitutionProof14478 : IsMapEvaluation generatorImages reduction14478.relations [2,1601] reduction14478.output := by lin_cert using reduction14478.terms
def image14479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14479 : InImage map_15_226 image14479 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14479 : Bundle := named_bundle% "RealMapCertificates/relations/basis14479.json"
theorem reductionProof14479 : EqualModuloRelations reduction14479.relations reduction14479.input reduction14479.output := by lin_cert using reduction14479.terms
theorem substitutionProof14479 : IsMapEvaluation generatorImages reduction14479.relations [1,1,1602] reduction14479.output := by lin_cert using reduction14479.terms
def image14480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14480 : InImage map_15_226 image14480 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14480 : Bundle := named_bundle% "RealMapCertificates/relations/basis14480.json"
theorem reductionProof14480 : EqualModuloRelations reduction14480.relations reduction14480.input reduction14480.output := by lin_cert using reduction14480.terms
theorem substitutionProof14480 : IsMapEvaluation generatorImages reduction14480.relations [0,0,7,1342] reduction14480.output := by lin_cert using reduction14480.terms
def map_15_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14694 : InImage map_15_227 image14694 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14694 : Bundle := named_bundle% "RealMapCertificates/relations/basis14694.json"
theorem reductionProof14694 : EqualModuloRelations reduction14694.relations reduction14694.input reduction14694.output := by lin_cert using reduction14694.terms
theorem substitutionProof14694 : IsMapEvaluation generatorImages reduction14694.relations [13,101,324] reduction14694.output := by lin_cert using reduction14694.terms
def image14695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14695 : InImage map_15_227 image14695 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14695 : Bundle := named_bundle% "RealMapCertificates/relations/basis14695.json"
theorem reductionProof14695 : EqualModuloRelations reduction14695.relations reduction14695.input reduction14695.output := by lin_cert using reduction14695.terms
theorem substitutionProof14695 : IsMapEvaluation generatorImages reduction14695.relations [7,1391] reduction14695.output := by lin_cert using reduction14695.terms
def image14696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14696 : InImage map_15_227 image14696 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14696 : Bundle := named_bundle% "RealMapCertificates/relations/basis14696.json"
theorem reductionProof14696 : EqualModuloRelations reduction14696.relations reduction14696.input reduction14696.output := by lin_cert using reduction14696.terms
theorem substitutionProof14696 : IsMapEvaluation generatorImages reduction14696.relations [0,169,324] reduction14696.output := by lin_cert using reduction14696.terms
def image14697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14697 : InImage map_15_227 image14697 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14697 : Bundle := named_bundle% "RealMapCertificates/relations/basis14697.json"
theorem reductionProof14697 : EqualModuloRelations reduction14697.relations reduction14697.input reduction14697.output := by lin_cert using reduction14697.terms
theorem substitutionProof14697 : IsMapEvaluation generatorImages reduction14697.relations [0,0,7,1356] reduction14697.output := by lin_cert using reduction14697.terms
def image14698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14698 : InImage map_15_227 image14698 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14698 : Bundle := named_bundle% "RealMapCertificates/relations/basis14698.json"
theorem reductionProof14698 : EqualModuloRelations reduction14698.relations reduction14698.input reduction14698.output := by lin_cert using reduction14698.terms
theorem substitutionProof14698 : IsMapEvaluation generatorImages reduction14698.relations [0,0,0,7,1346] reduction14698.output := by lin_cert using reduction14698.terms
def map_15_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14912 : InImage map_15_228 image14912 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14912 : Bundle := named_bundle% "RealMapCertificates/relations/basis14912.json"
theorem reductionProof14912 : EqualModuloRelations reduction14912.relations reduction14912.input reduction14912.output := by lin_cert using reduction14912.terms
theorem substitutionProof14912 : IsMapEvaluation generatorImages reduction14912.relations [1709] reduction14912.output := by lin_cert using reduction14912.terms
def image14913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14913 : InImage map_15_228 image14913 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14913 : Bundle := named_bundle% "RealMapCertificates/relations/basis14913.json"
theorem reductionProof14913 : EqualModuloRelations reduction14913.relations reduction14913.input reduction14913.output := by lin_cert using reduction14913.terms
theorem substitutionProof14913 : IsMapEvaluation generatorImages reduction14913.relations [1708] reduction14913.output := by lin_cert using reduction14913.terms
def image14914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14914 : InImage map_15_228 image14914 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14914 : Bundle := named_bundle% "RealMapCertificates/relations/basis14914.json"
theorem reductionProof14914 : EqualModuloRelations reduction14914.relations reduction14914.input reduction14914.output := by lin_cert using reduction14914.terms
theorem substitutionProof14914 : IsMapEvaluation generatorImages reduction14914.relations [176,324] reduction14914.output := by lin_cert using reduction14914.terms
def image14915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14915 : InImage map_15_228 image14915 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14915 : Bundle := named_bundle% "RealMapCertificates/relations/basis14915.json"
theorem reductionProof14915 : EqualModuloRelations reduction14915.relations reduction14915.input reduction14915.output := by lin_cert using reduction14915.terms
theorem substitutionProof14915 : IsMapEvaluation generatorImages reduction14915.relations [1,169,324] reduction14915.output := by lin_cert using reduction14915.terms
def map_15_229 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15070 : InImage map_15_229 image15070 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15070 : Bundle := named_bundle% "RealMapCertificates/relations/basis15070.json"
theorem reductionProof15070 : EqualModuloRelations reduction15070.relations reduction15070.input reduction15070.output := by lin_cert using reduction15070.terms
theorem substitutionProof15070 : IsMapEvaluation generatorImages reduction15070.relations [1731] reduction15070.output := by lin_cert using reduction15070.terms
def map_15_230 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15298 : InImage map_15_230 image15298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15298 : Bundle := named_bundle% "RealMapCertificates/relations/basis15298.json"
theorem reductionProof15298 : EqualModuloRelations reduction15298.relations reduction15298.input reduction15298.output := by lin_cert using reduction15298.terms
theorem substitutionProof15298 : IsMapEvaluation generatorImages reduction15298.relations [1,7,7,1118] reduction15298.output := by lin_cert using reduction15298.terms
def image15299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15299 : InImage map_15_230 image15299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15299 : Bundle := named_bundle% "RealMapCertificates/relations/basis15299.json"
theorem reductionProof15299 : EqualModuloRelations reduction15299.relations reduction15299.input reduction15299.output := by lin_cert using reduction15299.terms
theorem substitutionProof15299 : IsMapEvaluation generatorImages reduction15299.relations [0,1732] reduction15299.output := by lin_cert using reduction15299.terms
def image15300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15300 : InImage map_15_230 image15300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15300 : Bundle := named_bundle% "RealMapCertificates/relations/basis15300.json"
theorem reductionProof15300 : EqualModuloRelations reduction15300.relations reduction15300.input reduction15300.output := by lin_cert using reduction15300.terms
theorem substitutionProof15300 : IsMapEvaluation generatorImages reduction15300.relations [0,0,177,324] reduction15300.output := by lin_cert using reduction15300.terms
def map_15_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15543 : InImage map_15_231 image15543 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15543 : Bundle := named_bundle% "RealMapCertificates/relations/basis15543.json"
theorem reductionProof15543 : EqualModuloRelations reduction15543.relations reduction15543.input reduction15543.output := by lin_cert using reduction15543.terms
theorem substitutionProof15543 : IsMapEvaluation generatorImages reduction15543.relations [1,1732] reduction15543.output := by lin_cert using reduction15543.terms
def image15544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15544 : InImage map_15_231 image15544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15544 : Bundle := named_bundle% "RealMapCertificates/relations/basis15544.json"
theorem reductionProof15544 : EqualModuloRelations reduction15544.relations reduction15544.input reduction15544.output := by lin_cert using reduction15544.terms
theorem substitutionProof15544 : IsMapEvaluation generatorImages reduction15544.relations [0,0,0,7,1414] reduction15544.output := by lin_cert using reduction15544.terms
def image15545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15545 : InImage map_15_231 image15545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15545 : Bundle := named_bundle% "RealMapCertificates/relations/basis15545.json"
theorem reductionProof15545 : EqualModuloRelations reduction15545.relations reduction15545.input reduction15545.output := by lin_cert using reduction15545.terms
theorem substitutionProof15545 : IsMapEvaluation generatorImages reduction15545.relations [0,0,0,0,0,1676] reduction15545.output := by lin_cert using reduction15545.terms
def map_15_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15710 : InImage map_15_232 image15710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15710 : Bundle := named_bundle% "RealMapCertificates/relations/basis15710.json"
theorem reductionProof15710 : EqualModuloRelations reduction15710.relations reduction15710.input reduction15710.output := by lin_cert using reduction15710.terms
theorem substitutionProof15710 : IsMapEvaluation generatorImages reduction15710.relations [1797] reduction15710.output := by lin_cert using reduction15710.terms
def image15711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15711 : InImage map_15_232 image15711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15711 : Bundle := named_bundle% "RealMapCertificates/relations/basis15711.json"
theorem reductionProof15711 : EqualModuloRelations reduction15711.relations reduction15711.input reduction15711.output := by lin_cert using reduction15711.terms
theorem substitutionProof15711 : IsMapEvaluation generatorImages reduction15711.relations [1796] reduction15711.output := by lin_cert using reduction15711.terms
def image15712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15712 : InImage map_15_232 image15712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15712 : Bundle := named_bundle% "RealMapCertificates/relations/basis15712.json"
theorem reductionProof15712 : EqualModuloRelations reduction15712.relations reduction15712.input reduction15712.output := by lin_cert using reduction15712.terms
theorem substitutionProof15712 : IsMapEvaluation generatorImages reduction15712.relations [1795] reduction15712.output := by lin_cert using reduction15712.terms
def image15713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15713 : InImage map_15_232 image15713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15713 : Bundle := named_bundle% "RealMapCertificates/relations/basis15713.json"
theorem reductionProof15713 : EqualModuloRelations reduction15713.relations reduction15713.input reduction15713.output := by lin_cert using reduction15713.terms
theorem substitutionProof15713 : IsMapEvaluation generatorImages reduction15713.relations [0,0,187,324] reduction15713.output := by lin_cert using reduction15713.terms
def map_15_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15948 : InImage map_15_233 image15948 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15948 : Bundle := named_bundle% "RealMapCertificates/relations/basis15948.json"
theorem reductionProof15948 : EqualModuloRelations reduction15948.relations reduction15948.input reduction15948.output := by lin_cert using reduction15948.terms
theorem substitutionProof15948 : IsMapEvaluation generatorImages reduction15948.relations [1824] reduction15948.output := by lin_cert using reduction15948.terms
def image15949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15949 : InImage map_15_233 image15949 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15949 : Bundle := named_bundle% "RealMapCertificates/relations/basis15949.json"
theorem reductionProof15949 : EqualModuloRelations reduction15949.relations reduction15949.input reduction15949.output := by lin_cert using reduction15949.terms
theorem substitutionProof15949 : IsMapEvaluation generatorImages reduction15949.relations [1,7,1477] reduction15949.output := by lin_cert using reduction15949.terms
def image15950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15950 : InImage map_15_233 image15950 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15950 : Bundle := named_bundle% "RealMapCertificates/relations/basis15950.json"
theorem reductionProof15950 : EqualModuloRelations reduction15950.relations reduction15950.input reduction15950.output := by lin_cert using reduction15950.terms
theorem substitutionProof15950 : IsMapEvaluation generatorImages reduction15950.relations [0,1800] reduction15950.output := by lin_cert using reduction15950.terms
def image15951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15951 : InImage map_15_233 image15951 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15951 : Bundle := named_bundle% "RealMapCertificates/relations/basis15951.json"
theorem reductionProof15951 : EqualModuloRelations reduction15951.relations reduction15951.input reduction15951.output := by lin_cert using reduction15951.terms
theorem substitutionProof15951 : IsMapEvaluation generatorImages reduction15951.relations [0,1799] reduction15951.output := by lin_cert using reduction15951.terms
def image15952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15952 : InImage map_15_233 image15952 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15952 : Bundle := named_bundle% "RealMapCertificates/relations/basis15952.json"
theorem reductionProof15952 : EqualModuloRelations reduction15952.relations reduction15952.input reduction15952.output := by lin_cert using reduction15952.terms
theorem substitutionProof15952 : IsMapEvaluation generatorImages reduction15952.relations [0,1798] reduction15952.output := by lin_cert using reduction15952.terms
def image15953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15953 : InImage map_15_233 image15953 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15953 : Bundle := named_bundle% "RealMapCertificates/relations/basis15953.json"
theorem reductionProof15953 : EqualModuloRelations reduction15953.relations reduction15953.input reduction15953.output := by lin_cert using reduction15953.terms
theorem substitutionProof15953 : IsMapEvaluation generatorImages reduction15953.relations [0,0,0,188,324] reduction15953.output := by lin_cert using reduction15953.terms
def map_15_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16196 : InImage map_15_234 image16196 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16196 : Bundle := named_bundle% "RealMapCertificates/relations/basis16196.json"
theorem reductionProof16196 : EqualModuloRelations reduction16196.relations reduction16196.input reduction16196.output := by lin_cert using reduction16196.terms
theorem substitutionProof16196 : IsMapEvaluation generatorImages reduction16196.relations [1846] reduction16196.output := by lin_cert using reduction16196.terms
def image16197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16197 : InImage map_15_234 image16197 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16197 : Bundle := named_bundle% "RealMapCertificates/relations/basis16197.json"
theorem reductionProof16197 : EqualModuloRelations reduction16197.relations reduction16197.input reduction16197.output := by lin_cert using reduction16197.terms
theorem substitutionProof16197 : IsMapEvaluation generatorImages reduction16197.relations [23,83,324] reduction16197.output := by lin_cert using reduction16197.terms
def image16198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16198 : InImage map_15_234 image16198 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16198 : Bundle := named_bundle% "RealMapCertificates/relations/basis16198.json"
theorem reductionProof16198 : EqualModuloRelations reduction16198.relations reduction16198.input reduction16198.output := by lin_cert using reduction16198.terms
theorem substitutionProof16198 : IsMapEvaluation generatorImages reduction16198.relations [7,1526] reduction16198.output := by lin_cert using reduction16198.terms
def image16199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16199 : InImage map_15_234 image16199 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16199 : Bundle := named_bundle% "RealMapCertificates/relations/basis16199.json"
theorem reductionProof16199 : EqualModuloRelations reduction16199.relations reduction16199.input reduction16199.output := by lin_cert using reduction16199.terms
theorem substitutionProof16199 : IsMapEvaluation generatorImages reduction16199.relations [1,1799] reduction16199.output := by lin_cert using reduction16199.terms
def image16200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16200 : InImage map_15_234 image16200 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16200 : Bundle := named_bundle% "RealMapCertificates/relations/basis16200.json"
theorem reductionProof16200 : EqualModuloRelations reduction16200.relations reduction16200.input reduction16200.output := by lin_cert using reduction16200.terms
theorem substitutionProof16200 : IsMapEvaluation generatorImages reduction16200.relations [1,1,187,324] reduction16200.output := by lin_cert using reduction16200.terms
def image16201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16201 : InImage map_15_234 image16201 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16201 : Bundle := named_bundle% "RealMapCertificates/relations/basis16201.json"
theorem reductionProof16201 : EqualModuloRelations reduction16201.relations reduction16201.input reduction16201.output := by lin_cert using reduction16201.terms
theorem substitutionProof16201 : IsMapEvaluation generatorImages reduction16201.relations [0,0,195,324] reduction16201.output := by lin_cert using reduction16201.terms
def map_15_235 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16386 : InImage map_15_235 image16386 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16386 : Bundle := named_bundle% "RealMapCertificates/relations/basis16386.json"
theorem reductionProof16386 : EqualModuloRelations reduction16386.relations reduction16386.input reduction16386.output := by lin_cert using reduction16386.terms
theorem substitutionProof16386 : IsMapEvaluation generatorImages reduction16386.relations [1881] reduction16386.output := by lin_cert using reduction16386.terms
def image16387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16387 : InImage map_15_235 image16387 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16387 : Bundle := named_bundle% "RealMapCertificates/relations/basis16387.json"
theorem reductionProof16387 : EqualModuloRelations reduction16387.relations reduction16387.input reduction16387.output := by lin_cert using reduction16387.terms
theorem substitutionProof16387 : IsMapEvaluation generatorImages reduction16387.relations [1880] reduction16387.output := by lin_cert using reduction16387.terms
def image16388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16388 : InImage map_15_235 image16388 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16388 : Bundle := named_bundle% "RealMapCertificates/relations/basis16388.json"
theorem reductionProof16388 : EqualModuloRelations reduction16388.relations reduction16388.input reduction16388.output := by lin_cert using reduction16388.terms
theorem substitutionProof16388 : IsMapEvaluation generatorImages reduction16388.relations [1879] reduction16388.output := by lin_cert using reduction16388.terms
def image16389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16389 : InImage map_15_235 image16389 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16389 : Bundle := named_bundle% "RealMapCertificates/relations/basis16389.json"
theorem reductionProof16389 : EqualModuloRelations reduction16389.relations reduction16389.input reduction16389.output := by lin_cert using reduction16389.terms
theorem substitutionProof16389 : IsMapEvaluation generatorImages reduction16389.relations [0,1848] reduction16389.output := by lin_cert using reduction16389.terms
def image16390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16390 : InImage map_15_235 image16390 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16390 : Bundle := named_bundle% "RealMapCertificates/relations/basis16390.json"
theorem reductionProof16390 : EqualModuloRelations reduction16390.relations reduction16390.input reduction16390.output := by lin_cert using reduction16390.terms
theorem substitutionProof16390 : IsMapEvaluation generatorImages reduction16390.relations [0,1847] reduction16390.output := by lin_cert using reduction16390.terms
def image16391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16391 : InImage map_15_235 image16391 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16391 : Bundle := named_bundle% "RealMapCertificates/relations/basis16391.json"
theorem reductionProof16391 : EqualModuloRelations reduction16391.relations reduction16391.input reduction16391.output := by lin_cert using reduction16391.terms
theorem substitutionProof16391 : IsMapEvaluation generatorImages reduction16391.relations [0,0,201,324] reduction16391.output := by lin_cert using reduction16391.terms
def map_15_236 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16618 : InImage map_15_236 image16618 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16618 : Bundle := named_bundle% "RealMapCertificates/relations/basis16618.json"
theorem reductionProof16618 : EqualModuloRelations reduction16618.relations reduction16618.input reduction16618.output := by lin_cert using reduction16618.terms
theorem substitutionProof16618 : IsMapEvaluation generatorImages reduction16618.relations [0,1883] reduction16618.output := by lin_cert using reduction16618.terms
def image16619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16619 : InImage map_15_236 image16619 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16619 : Bundle := named_bundle% "RealMapCertificates/relations/basis16619.json"
theorem reductionProof16619 : EqualModuloRelations reduction16619.relations reduction16619.input reduction16619.output := by lin_cert using reduction16619.terms
theorem substitutionProof16619 : IsMapEvaluation generatorImages reduction16619.relations [0,1882] reduction16619.output := by lin_cert using reduction16619.terms
def image16620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16620 : InImage map_15_236 image16620 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16620 : Bundle := named_bundle% "RealMapCertificates/relations/basis16620.json"
theorem reductionProof16620 : EqualModuloRelations reduction16620.relations reduction16620.input reduction16620.output := by lin_cert using reduction16620.terms
theorem substitutionProof16620 : IsMapEvaluation generatorImages reduction16620.relations [0,0,0,1825] reduction16620.output := by lin_cert using reduction16620.terms
def map_15_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16864 : InImage map_15_237 image16864 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16864 : Bundle := named_bundle% "RealMapCertificates/relations/basis16864.json"
theorem reductionProof16864 : EqualModuloRelations reduction16864.relations reduction16864.input reduction16864.output := by lin_cert using reduction16864.terms
theorem substitutionProof16864 : IsMapEvaluation generatorImages reduction16864.relations [1920] reduction16864.output := by lin_cert using reduction16864.terms
def image16865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16865 : InImage map_15_237 image16865 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16865 : Bundle := named_bundle% "RealMapCertificates/relations/basis16865.json"
theorem reductionProof16865 : EqualModuloRelations reduction16865.relations reduction16865.input reduction16865.output := by lin_cert using reduction16865.terms
theorem substitutionProof16865 : IsMapEvaluation generatorImages reduction16865.relations [203,352] reduction16865.output := by lin_cert using reduction16865.terms
def image16866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16866 : InImage map_15_237 image16866 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16866 : Bundle := named_bundle% "RealMapCertificates/relations/basis16866.json"
theorem reductionProof16866 : EqualModuloRelations reduction16866.relations reduction16866.input reduction16866.output := by lin_cert using reduction16866.terms
theorem substitutionProof16866 : IsMapEvaluation generatorImages reduction16866.relations [3,1732] reduction16866.output := by lin_cert using reduction16866.terms
def image16867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16867 : InImage map_15_237 image16867 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16867 : Bundle := named_bundle% "RealMapCertificates/relations/basis16867.json"
theorem reductionProof16867 : EqualModuloRelations reduction16867.relations reduction16867.input reduction16867.output := by lin_cert using reduction16867.terms
theorem substitutionProof16867 : IsMapEvaluation generatorImages reduction16867.relations [0,2,195,324] reduction16867.output := by lin_cert using reduction16867.terms
def map_15_238 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17056 : InImage map_15_238 image17056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17056 : Bundle := named_bundle% "RealMapCertificates/relations/basis17056.json"
theorem reductionProof17056 : EqualModuloRelations reduction17056.relations reduction17056.input reduction17056.output := by lin_cert using reduction17056.terms
theorem substitutionProof17056 : IsMapEvaluation generatorImages reduction17056.relations [1953] reduction17056.output := by lin_cert using reduction17056.terms
def image17057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17057 : InImage map_15_238 image17057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17057 : Bundle := named_bundle% "RealMapCertificates/relations/basis17057.json"
theorem reductionProof17057 : EqualModuloRelations reduction17057.relations reduction17057.input reduction17057.output := by lin_cert using reduction17057.terms
theorem substitutionProof17057 : IsMapEvaluation generatorImages reduction17057.relations [197,396] reduction17057.output := by lin_cert using reduction17057.terms
def image17058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17058 : InImage map_15_238 image17058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17058 : Bundle := named_bundle% "RealMapCertificates/relations/basis17058.json"
theorem reductionProof17058 : EqualModuloRelations reduction17058.relations reduction17058.input reduction17058.output := by lin_cert using reduction17058.terms
theorem substitutionProof17058 : IsMapEvaluation generatorImages reduction17058.relations [0,1921] reduction17058.output := by lin_cert using reduction17058.terms
def image17059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17059 : InImage map_15_238 image17059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17059 : Bundle := named_bundle% "RealMapCertificates/relations/basis17059.json"
theorem reductionProof17059 : EqualModuloRelations reduction17059.relations reduction17059.input reduction17059.output := by lin_cert using reduction17059.terms
theorem substitutionProof17059 : IsMapEvaluation generatorImages reduction17059.relations [0,0,1897] reduction17059.output := by lin_cert using reduction17059.terms
def image17060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17060 : InImage map_15_238 image17060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17060 : Bundle := named_bundle% "RealMapCertificates/relations/basis17060.json"
theorem reductionProof17060 : EqualModuloRelations reduction17060.relations reduction17060.input reduction17060.output := by lin_cert using reduction17060.terms
theorem substitutionProof17060 : IsMapEvaluation generatorImages reduction17060.relations [0,0,212,324] reduction17060.output := by lin_cert using reduction17060.terms
def map_15_239 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17313 : InImage map_15_239 image17313 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17313 : Bundle := named_bundle% "RealMapCertificates/relations/basis17313.json"
theorem reductionProof17313 : EqualModuloRelations reduction17313.relations reduction17313.input reduction17313.output := by lin_cert using reduction17313.terms
theorem substitutionProof17313 : IsMapEvaluation generatorImages reduction17313.relations [1981] reduction17313.output := by lin_cert using reduction17313.terms
def image17314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17314 : InImage map_15_239 image17314 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17314 : Bundle := named_bundle% "RealMapCertificates/relations/basis17314.json"
theorem reductionProof17314 : EqualModuloRelations reduction17314.relations reduction17314.input reduction17314.output := by lin_cert using reduction17314.terms
theorem substitutionProof17314 : IsMapEvaluation generatorImages reduction17314.relations [1980] reduction17314.output := by lin_cert using reduction17314.terms
def image17315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17315 : InImage map_15_239 image17315 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17315 : Bundle := named_bundle% "RealMapCertificates/relations/basis17315.json"
theorem reductionProof17315 : EqualModuloRelations reduction17315.relations reduction17315.input reduction17315.output := by lin_cert using reduction17315.terms
theorem substitutionProof17315 : IsMapEvaluation generatorImages reduction17315.relations [1979] reduction17315.output := by lin_cert using reduction17315.terms
def image17316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17316 : InImage map_15_239 image17316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17316 : Bundle := named_bundle% "RealMapCertificates/relations/basis17316.json"
theorem reductionProof17316 : EqualModuloRelations reduction17316.relations reduction17316.input reduction17316.output := by lin_cert using reduction17316.terms
theorem substitutionProof17316 : IsMapEvaluation generatorImages reduction17316.relations [0,0,0,0,209,324] reduction17316.output := by lin_cert using reduction17316.terms
end RealMapCertificates
