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
  | 11 => []
  | 13 => [[9]]
  | 43 => []
  | 69 => []
  | 70 => []
  | 75 => []
  | 164 => []
  | 188 => []
  | 189 => []
  | 197 => []
  | 209 => []
  | 212 => []
  | 228 => []
  | 267 => []
  | 279 => []
  | 285 => []
  | 286 => []
  | 287 => []
  | 324 => []
  | 398 => []
  | 938 => []
  | 1057 => []
  | 1120 => []
  | 1798 => []
  | 1799 => []
  | 1800 => []
  | 1801 => []
  | 1825 => []
  | 1848 => []
  | 1882 => []
  | 1897 => []
  | 1898 => []
  | 1921 => []
  | 1954 => []
  | 1982 => []
  | 1983 => []
  | 1984 => []
  | 1985 => []
  | 2024 => []
  | 2025 => []
  | 2026 => []
  | 2027 => []
  | 2033 => []
  | 2078 => []
  | 2079 => []
  | 2080 => []
  | 2081 => []
  | 2082 => []
  | 2116 => []
  | 2148 => []
  | 2149 => []
  | 2150 => []
  | 2151 => []
  | 2152 => []
  | 2153 => []
  | 2187 => []
  | 2232 => []
  | 2233 => []
  | 2234 => []
  | 2271 => []
  | 2295 => []
  | 2296 => []
  | 2368 => []
  | 2369 => []
  | 2370 => []
  | 2398 => []
  | 2433 => []
  | 2434 => []
  | 2479 => []
  | 2480 => []
  | 2481 => []
  | 2482 => []
  | 2524 => []
  | 2525 => []
  | 2526 => []
  | 2527 => []
  | 2528 => []
  | 2574 => []
  | 2620 => []
  | 2622 => []
  | 2665 => []
  | 2710 => []
  | 2711 => []
  | 2712 => []
  | 2713 => []
  | 2714 => []
  | 2715 => []
  | 2716 => []
  | 2719 => []
  | 2720 => []
  | 2721 => []
  | 2722 => []
  | 2774 => []
  | 2775 => []
  | 2776 => []
  | 2777 => []
  | 2778 => []
  | _ => []
def map_15_240 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image17596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17596 : InImage map_15_240 image17596 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction17596 : Bundle := named_bundle% "RealMapCertificates/relations/basis17596.json"
theorem reductionProof17596 : EqualModuloRelations reduction17596.relations reduction17596.input reduction17596.output := by lin_cert using reduction17596.terms
theorem substitutionProof17596 : IsMapEvaluation generatorImages reduction17596.relations [2026] reduction17596.output := by lin_cert using reduction17596.terms
def image17597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17597 : InImage map_15_240 image17597 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction17597 : Bundle := named_bundle% "RealMapCertificates/relations/basis17597.json"
theorem reductionProof17597 : EqualModuloRelations reduction17597.relations reduction17597.input reduction17597.output := by lin_cert using reduction17597.terms
theorem substitutionProof17597 : IsMapEvaluation generatorImages reduction17597.relations [2025] reduction17597.output := by lin_cert using reduction17597.terms
def image17598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17598 : InImage map_15_240 image17598 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction17598 : Bundle := named_bundle% "RealMapCertificates/relations/basis17598.json"
theorem reductionProof17598 : EqualModuloRelations reduction17598.relations reduction17598.input reduction17598.output := by lin_cert using reduction17598.terms
theorem substitutionProof17598 : IsMapEvaluation generatorImages reduction17598.relations [2024] reduction17598.output := by lin_cert using reduction17598.terms
def image17599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17599 : InImage map_15_240 image17599 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction17599 : Bundle := named_bundle% "RealMapCertificates/relations/basis17599.json"
theorem reductionProof17599 : EqualModuloRelations reduction17599.relations reduction17599.input reduction17599.output := by lin_cert using reduction17599.terms
theorem substitutionProof17599 : IsMapEvaluation generatorImages reduction17599.relations [228,324] reduction17599.output := by lin_cert using reduction17599.terms
def image17600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17600 : InImage map_15_240 image17600 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction17600 : Bundle := named_bundle% "RealMapCertificates/relations/basis17600.json"
theorem reductionProof17600 : EqualModuloRelations reduction17600.relations reduction17600.input reduction17600.output := by lin_cert using reduction17600.terms
theorem substitutionProof17600 : IsMapEvaluation generatorImages reduction17600.relations [9,13,75,324] reduction17600.output := by lin_cert using reduction17600.terms
def image17601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17601 : InImage map_15_240 image17601 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction17601 : Bundle := named_bundle% "RealMapCertificates/relations/basis17601.json"
theorem reductionProof17601 : EqualModuloRelations reduction17601.relations reduction17601.input reduction17601.output := by lin_cert using reduction17601.terms
theorem substitutionProof17601 : IsMapEvaluation generatorImages reduction17601.relations [3,1800] reduction17601.output := by lin_cert using reduction17601.terms
def image17602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17602 : InImage map_15_240 image17602 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction17602 : Bundle := named_bundle% "RealMapCertificates/relations/basis17602.json"
theorem reductionProof17602 : EqualModuloRelations reduction17602.relations reduction17602.input reduction17602.output := by lin_cert using reduction17602.terms
theorem substitutionProof17602 : IsMapEvaluation generatorImages reduction17602.relations [3,1799] reduction17602.output := by lin_cert using reduction17602.terms
def image17603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17603 : InImage map_15_240 image17603 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction17603 : Bundle := named_bundle% "RealMapCertificates/relations/basis17603.json"
theorem reductionProof17603 : EqualModuloRelations reduction17603.relations reduction17603.input reduction17603.output := by lin_cert using reduction17603.terms
theorem substitutionProof17603 : IsMapEvaluation generatorImages reduction17603.relations [3,1798] reduction17603.output := by lin_cert using reduction17603.terms
def image17604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17604 : InImage map_15_240 image17604 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction17604 : Bundle := named_bundle% "RealMapCertificates/relations/basis17604.json"
theorem reductionProof17604 : EqualModuloRelations reduction17604.relations reduction17604.input reduction17604.output := by lin_cert using reduction17604.terms
theorem substitutionProof17604 : IsMapEvaluation generatorImages reduction17604.relations [2,2,1801] reduction17604.output := by lin_cert using reduction17604.terms
def image17605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17605 : InImage map_15_240 image17605 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction17605 : Bundle := named_bundle% "RealMapCertificates/relations/basis17605.json"
theorem reductionProof17605 : EqualModuloRelations reduction17605.relations reduction17605.input reduction17605.output := by lin_cert using reduction17605.terms
theorem substitutionProof17605 : IsMapEvaluation generatorImages reduction17605.relations [0,1983] reduction17605.output := by lin_cert using reduction17605.terms
def image17606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17606 : InImage map_15_240 image17606 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction17606 : Bundle := named_bundle% "RealMapCertificates/relations/basis17606.json"
theorem reductionProof17606 : EqualModuloRelations reduction17606.relations reduction17606.input reduction17606.output := by lin_cert using reduction17606.terms
theorem substitutionProof17606 : IsMapEvaluation generatorImages reduction17606.relations [0,1982] reduction17606.output := by lin_cert using reduction17606.terms
def image17607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17607 : InImage map_15_240 image17607 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction17607 : Bundle := named_bundle% "RealMapCertificates/relations/basis17607.json"
theorem reductionProof17607 : EqualModuloRelations reduction17607.relations reduction17607.input reduction17607.output := by lin_cert using reduction17607.terms
theorem substitutionProof17607 : IsMapEvaluation generatorImages reduction17607.relations [0,0,3,188,324] reduction17607.output := by lin_cert using reduction17607.terms
def map_15_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17834 : InImage map_15_241 image17834 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17834 : Bundle := named_bundle% "RealMapCertificates/relations/basis17834.json"
theorem reductionProof17834 : EqualModuloRelations reduction17834.relations reduction17834.input reduction17834.output := by lin_cert using reduction17834.terms
theorem substitutionProof17834 : IsMapEvaluation generatorImages reduction17834.relations [0,2,212,324] reduction17834.output := by lin_cert using reduction17834.terms
def image17835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17835 : InImage map_15_241 image17835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17835 : Bundle := named_bundle% "RealMapCertificates/relations/basis17835.json"
theorem reductionProof17835 : EqualModuloRelations reduction17835.relations reduction17835.input reduction17835.output := by lin_cert using reduction17835.terms
theorem substitutionProof17835 : IsMapEvaluation generatorImages reduction17835.relations [0,0,1985] reduction17835.output := by lin_cert using reduction17835.terms
def image17836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17836 : InImage map_15_241 image17836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17836 : Bundle := named_bundle% "RealMapCertificates/relations/basis17836.json"
theorem reductionProof17836 : EqualModuloRelations reduction17836.relations reduction17836.input reduction17836.output := by lin_cert using reduction17836.terms
theorem substitutionProof17836 : IsMapEvaluation generatorImages reduction17836.relations [0,0,0,1954] reduction17836.output := by lin_cert using reduction17836.terms
def map_15_242 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18092 : InImage map_15_242 image18092 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18092 : Bundle := named_bundle% "RealMapCertificates/relations/basis18092.json"
theorem reductionProof18092 : EqualModuloRelations reduction18092.relations reduction18092.input reduction18092.output := by lin_cert using reduction18092.terms
theorem substitutionProof18092 : IsMapEvaluation generatorImages reduction18092.relations [2079] reduction18092.output := by lin_cert using reduction18092.terms
def image18093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18093 : InImage map_15_242 image18093 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18093 : Bundle := named_bundle% "RealMapCertificates/relations/basis18093.json"
theorem reductionProof18093 : EqualModuloRelations reduction18093.relations reduction18093.input reduction18093.output := by lin_cert using reduction18093.terms
theorem substitutionProof18093 : IsMapEvaluation generatorImages reduction18093.relations [2078] reduction18093.output := by lin_cert using reduction18093.terms
def image18094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18094 : InImage map_15_242 image18094 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18094 : Bundle := named_bundle% "RealMapCertificates/relations/basis18094.json"
theorem reductionProof18094 : EqualModuloRelations reduction18094.relations reduction18094.input reduction18094.output := by lin_cert using reduction18094.terms
theorem substitutionProof18094 : IsMapEvaluation generatorImages reduction18094.relations [3,1848] reduction18094.output := by lin_cert using reduction18094.terms
def image18095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18095 : InImage map_15_242 image18095 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18095 : Bundle := named_bundle% "RealMapCertificates/relations/basis18095.json"
theorem reductionProof18095 : EqualModuloRelations reduction18095.relations reduction18095.input reduction18095.output := by lin_cert using reduction18095.terms
theorem substitutionProof18095 : IsMapEvaluation generatorImages reduction18095.relations [1,3,1801] reduction18095.output := by lin_cert using reduction18095.terms
def map_15_243 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18368 : InImage map_15_243 image18368 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18368 : Bundle := named_bundle% "RealMapCertificates/relations/basis18368.json"
theorem reductionProof18368 : EqualModuloRelations reduction18368.relations reduction18368.input reduction18368.output := by lin_cert using reduction18368.terms
theorem substitutionProof18368 : IsMapEvaluation generatorImages reduction18368.relations [2116] reduction18368.output := by lin_cert using reduction18368.terms
def image18369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18369 : InImage map_15_243 image18369 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18369 : Bundle := named_bundle% "RealMapCertificates/relations/basis18369.json"
theorem reductionProof18369 : EqualModuloRelations reduction18369.relations reduction18369.input reduction18369.output := by lin_cert using reduction18369.terms
theorem substitutionProof18369 : IsMapEvaluation generatorImages reduction18369.relations [13,13,75,324] reduction18369.output := by lin_cert using reduction18369.terms
def image18370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18370 : InImage map_15_243 image18370 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18370 : Bundle := named_bundle% "RealMapCertificates/relations/basis18370.json"
theorem reductionProof18370 : EqualModuloRelations reduction18370.relations reduction18370.input reduction18370.output := by lin_cert using reduction18370.terms
theorem substitutionProof18370 : IsMapEvaluation generatorImages reduction18370.relations [3,1882] reduction18370.output := by lin_cert using reduction18370.terms
def image18371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18371 : InImage map_15_243 image18371 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18371 : Bundle := named_bundle% "RealMapCertificates/relations/basis18371.json"
theorem reductionProof18371 : EqualModuloRelations reduction18371.relations reduction18371.input reduction18371.output := by lin_cert using reduction18371.terms
theorem substitutionProof18371 : IsMapEvaluation generatorImages reduction18371.relations [0,2081] reduction18371.output := by lin_cert using reduction18371.terms
def image18372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18372 : InImage map_15_243 image18372 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18372 : Bundle := named_bundle% "RealMapCertificates/relations/basis18372.json"
theorem reductionProof18372 : EqualModuloRelations reduction18372.relations reduction18372.input reduction18372.output := by lin_cert using reduction18372.terms
theorem substitutionProof18372 : IsMapEvaluation generatorImages reduction18372.relations [0,2080] reduction18372.output := by lin_cert using reduction18372.terms
def image18373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18373 : InImage map_15_243 image18373 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18373 : Bundle := named_bundle% "RealMapCertificates/relations/basis18373.json"
theorem reductionProof18373 : EqualModuloRelations reduction18373.relations reduction18373.input reduction18373.output := by lin_cert using reduction18373.terms
theorem substitutionProof18373 : IsMapEvaluation generatorImages reduction18373.relations [0,0,3,1825] reduction18373.output := by lin_cert using reduction18373.terms
def map_15_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18572 : InImage map_15_244 image18572 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18572 : Bundle := named_bundle% "RealMapCertificates/relations/basis18572.json"
theorem reductionProof18572 : EqualModuloRelations reduction18572.relations reduction18572.input reduction18572.output := by lin_cert using reduction18572.terms
theorem substitutionProof18572 : IsMapEvaluation generatorImages reduction18572.relations [2148] reduction18572.output := by lin_cert using reduction18572.terms
def image18573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18573 : InImage map_15_244 image18573 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18573 : Bundle := named_bundle% "RealMapCertificates/relations/basis18573.json"
theorem reductionProof18573 : EqualModuloRelations reduction18573.relations reduction18573.input reduction18573.output := by lin_cert using reduction18573.terms
theorem substitutionProof18573 : IsMapEvaluation generatorImages reduction18573.relations [43,1120] reduction18573.output := by lin_cert using reduction18573.terms
def image18574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18574 : InImage map_15_244 image18574 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18574 : Bundle := named_bundle% "RealMapCertificates/relations/basis18574.json"
theorem reductionProof18574 : EqualModuloRelations reduction18574.relations reduction18574.input reduction18574.output := by lin_cert using reduction18574.terms
theorem substitutionProof18574 : IsMapEvaluation generatorImages reduction18574.relations [2,2027] reduction18574.output := by lin_cert using reduction18574.terms
def image18575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18575 : InImage map_15_244 image18575 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18575 : Bundle := named_bundle% "RealMapCertificates/relations/basis18575.json"
theorem reductionProof18575 : EqualModuloRelations reduction18575.relations reduction18575.input reduction18575.output := by lin_cert using reduction18575.terms
theorem substitutionProof18575 : IsMapEvaluation generatorImages reduction18575.relations [0,0,2082] reduction18575.output := by lin_cert using reduction18575.terms
def map_15_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18840 : InImage map_15_245 image18840 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18840 : Bundle := named_bundle% "RealMapCertificates/relations/basis18840.json"
theorem reductionProof18840 : EqualModuloRelations reduction18840.relations reduction18840.input reduction18840.output := by lin_cert using reduction18840.terms
theorem substitutionProof18840 : IsMapEvaluation generatorImages reduction18840.relations [2187] reduction18840.output := by lin_cert using reduction18840.terms
def image18841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18841 : InImage map_15_245 image18841 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18841 : Bundle := named_bundle% "RealMapCertificates/relations/basis18841.json"
theorem reductionProof18841 : EqualModuloRelations reduction18841.relations reduction18841.input reduction18841.output := by lin_cert using reduction18841.terms
theorem substitutionProof18841 : IsMapEvaluation generatorImages reduction18841.relations [3,1921] reduction18841.output := by lin_cert using reduction18841.terms
def image18842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18842 : InImage map_15_245 image18842 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18842 : Bundle := named_bundle% "RealMapCertificates/relations/basis18842.json"
theorem reductionProof18842 : EqualModuloRelations reduction18842.relations reduction18842.input reduction18842.output := by lin_cert using reduction18842.terms
theorem substitutionProof18842 : IsMapEvaluation generatorImages reduction18842.relations [0,2151] reduction18842.output := by lin_cert using reduction18842.terms
def image18843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18843 : InImage map_15_245 image18843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18843 : Bundle := named_bundle% "RealMapCertificates/relations/basis18843.json"
theorem reductionProof18843 : EqualModuloRelations reduction18843.relations reduction18843.input reduction18843.output := by lin_cert using reduction18843.terms
theorem substitutionProof18843 : IsMapEvaluation generatorImages reduction18843.relations [0,2149] reduction18843.output := by lin_cert using reduction18843.terms
def image18844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18844 : InImage map_15_245 image18844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18844 : Bundle := named_bundle% "RealMapCertificates/relations/basis18844.json"
theorem reductionProof18844 : EqualModuloRelations reduction18844.relations reduction18844.input reduction18844.output := by lin_cert using reduction18844.terms
theorem substitutionProof18844 : IsMapEvaluation generatorImages reduction18844.relations [0,3,1897] reduction18844.output := by lin_cert using reduction18844.terms
def map_15_246 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19151 : InImage map_15_246 image19151 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19151 : Bundle := named_bundle% "RealMapCertificates/relations/basis19151.json"
theorem reductionProof19151 : EqualModuloRelations reduction19151.relations reduction19151.input reduction19151.output := by lin_cert using reduction19151.terms
theorem substitutionProof19151 : IsMapEvaluation generatorImages reduction19151.relations [2233] reduction19151.output := by lin_cert using reduction19151.terms
def image19152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19152 : InImage map_15_246 image19152 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19152 : Bundle := named_bundle% "RealMapCertificates/relations/basis19152.json"
theorem reductionProof19152 : EqualModuloRelations reduction19152.relations reduction19152.input reduction19152.output := by lin_cert using reduction19152.terms
theorem substitutionProof19152 : IsMapEvaluation generatorImages reduction19152.relations [2232] reduction19152.output := by lin_cert using reduction19152.terms
def image19153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19153 : InImage map_15_246 image19153 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19153 : Bundle := named_bundle% "RealMapCertificates/relations/basis19153.json"
theorem reductionProof19153 : EqualModuloRelations reduction19153.relations reduction19153.input reduction19153.output := by lin_cert using reduction19153.terms
theorem substitutionProof19153 : IsMapEvaluation generatorImages reduction19153.relations [3,197,398] reduction19153.output := by lin_cert using reduction19153.terms
def image19154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19154 : InImage map_15_246 image19154 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19154 : Bundle := named_bundle% "RealMapCertificates/relations/basis19154.json"
theorem reductionProof19154 : EqualModuloRelations reduction19154.relations reduction19154.input reduction19154.output := by lin_cert using reduction19154.terms
theorem substitutionProof19154 : IsMapEvaluation generatorImages reduction19154.relations [0,0,2152] reduction19154.output := by lin_cert using reduction19154.terms
def image19155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19155 : InImage map_15_246 image19155 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19155 : Bundle := named_bundle% "RealMapCertificates/relations/basis19155.json"
theorem reductionProof19155 : EqualModuloRelations reduction19155.relations reduction19155.input reduction19155.output := by lin_cert using reduction19155.terms
theorem substitutionProof19155 : IsMapEvaluation generatorImages reduction19155.relations [0,0,3,1898] reduction19155.output := by lin_cert using reduction19155.terms
def image19156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19156 : InImage map_15_246 image19156 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19156 : Bundle := named_bundle% "RealMapCertificates/relations/basis19156.json"
theorem reductionProof19156 : EqualModuloRelations reduction19156.relations reduction19156.input reduction19156.output := by lin_cert using reduction19156.terms
theorem substitutionProof19156 : IsMapEvaluation generatorImages reduction19156.relations [0,0,0,0,0,0,2033] reduction19156.output := by lin_cert using reduction19156.terms
def map_15_247 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19375 : InImage map_15_247 image19375 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19375 : Bundle := named_bundle% "RealMapCertificates/relations/basis19375.json"
theorem reductionProof19375 : EqualModuloRelations reduction19375.relations reduction19375.input reduction19375.output := by lin_cert using reduction19375.terms
theorem substitutionProof19375 : IsMapEvaluation generatorImages reduction19375.relations [2271] reduction19375.output := by lin_cert using reduction19375.terms
def image19376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19376 : InImage map_15_247 image19376 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19376 : Bundle := named_bundle% "RealMapCertificates/relations/basis19376.json"
theorem reductionProof19376 : EqualModuloRelations reduction19376.relations reduction19376.input reduction19376.output := by lin_cert using reduction19376.terms
theorem substitutionProof19376 : IsMapEvaluation generatorImages reduction19376.relations [3,1982] reduction19376.output := by lin_cert using reduction19376.terms
def image19377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19377 : InImage map_15_247 image19377 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19377 : Bundle := named_bundle% "RealMapCertificates/relations/basis19377.json"
theorem reductionProof19377 : EqualModuloRelations reduction19377.relations reduction19377.input reduction19377.output := by lin_cert using reduction19377.terms
theorem substitutionProof19377 : IsMapEvaluation generatorImages reduction19377.relations [0,2234] reduction19377.output := by lin_cert using reduction19377.terms
def map_15_248 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19645 : InImage map_15_248 image19645 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19645 : Bundle := named_bundle% "RealMapCertificates/relations/basis19645.json"
theorem reductionProof19645 : EqualModuloRelations reduction19645.relations reduction19645.input reduction19645.output := by lin_cert using reduction19645.terms
theorem substitutionProof19645 : IsMapEvaluation generatorImages reduction19645.relations [2296] reduction19645.output := by lin_cert using reduction19645.terms
def image19646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19646 : InImage map_15_248 image19646 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19646 : Bundle := named_bundle% "RealMapCertificates/relations/basis19646.json"
theorem reductionProof19646 : EqualModuloRelations reduction19646.relations reduction19646.input reduction19646.output := by lin_cert using reduction19646.terms
theorem substitutionProof19646 : IsMapEvaluation generatorImages reduction19646.relations [2295] reduction19646.output := by lin_cert using reduction19646.terms
def image19647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19647 : InImage map_15_248 image19647 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19647 : Bundle := named_bundle% "RealMapCertificates/relations/basis19647.json"
theorem reductionProof19647 : EqualModuloRelations reduction19647.relations reduction19647.input reduction19647.output := by lin_cert using reduction19647.terms
theorem substitutionProof19647 : IsMapEvaluation generatorImages reduction19647.relations [267,324] reduction19647.output := by lin_cert using reduction19647.terms
def image19648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19648 : InImage map_15_248 image19648 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19648 : Bundle := named_bundle% "RealMapCertificates/relations/basis19648.json"
theorem reductionProof19648 : EqualModuloRelations reduction19648.relations reduction19648.input reduction19648.output := by lin_cert using reduction19648.terms
theorem substitutionProof19648 : IsMapEvaluation generatorImages reduction19648.relations [7,1798] reduction19648.output := by lin_cert using reduction19648.terms
def image19649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19649 : InImage map_15_248 image19649 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19649 : Bundle := named_bundle% "RealMapCertificates/relations/basis19649.json"
theorem reductionProof19649 : EqualModuloRelations reduction19649.relations reduction19649.input reduction19649.output := by lin_cert using reduction19649.terms
theorem substitutionProof19649 : IsMapEvaluation generatorImages reduction19649.relations [3,3,1801] reduction19649.output := by lin_cert using reduction19649.terms
def image19650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19650 : InImage map_15_248 image19650 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19650 : Bundle := named_bundle% "RealMapCertificates/relations/basis19650.json"
theorem reductionProof19650 : EqualModuloRelations reduction19650.relations reduction19650.input reduction19650.output := by lin_cert using reduction19650.terms
theorem substitutionProof19650 : IsMapEvaluation generatorImages reduction19650.relations [2,2150] reduction19650.output := by lin_cert using reduction19650.terms
def image19651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19651 : InImage map_15_248 image19651 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19651 : Bundle := named_bundle% "RealMapCertificates/relations/basis19651.json"
theorem reductionProof19651 : EqualModuloRelations reduction19651.relations reduction19651.input reduction19651.output := by lin_cert using reduction19651.terms
theorem substitutionProof19651 : IsMapEvaluation generatorImages reduction19651.relations [0,3,1985] reduction19651.output := by lin_cert using reduction19651.terms
def image19652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19652 : InImage map_15_248 image19652 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19652 : Bundle := named_bundle% "RealMapCertificates/relations/basis19652.json"
theorem reductionProof19652 : EqualModuloRelations reduction19652.relations reduction19652.input reduction19652.output := by lin_cert using reduction19652.terms
theorem substitutionProof19652 : IsMapEvaluation generatorImages reduction19652.relations [0,3,1984] reduction19652.output := by lin_cert using reduction19652.terms
def map_15_249 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19956 : InImage map_15_249 image19956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19956 : Bundle := named_bundle% "RealMapCertificates/relations/basis19956.json"
theorem reductionProof19956 : EqualModuloRelations reduction19956.relations reduction19956.input reduction19956.output := by lin_cert using reduction19956.terms
theorem substitutionProof19956 : IsMapEvaluation generatorImages reduction19956.relations [70,938] reduction19956.output := by lin_cert using reduction19956.terms
def image19957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19957 : InImage map_15_249 image19957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19957 : Bundle := named_bundle% "RealMapCertificates/relations/basis19957.json"
theorem reductionProof19957 : EqualModuloRelations reduction19957.relations reduction19957.input reduction19957.output := by lin_cert using reduction19957.terms
theorem substitutionProof19957 : IsMapEvaluation generatorImages reduction19957.relations [13,164,324] reduction19957.output := by lin_cert using reduction19957.terms
def image19958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19958 : InImage map_15_249 image19958 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19958 : Bundle := named_bundle% "RealMapCertificates/relations/basis19958.json"
theorem reductionProof19958 : EqualModuloRelations reduction19958.relations reduction19958.input reduction19958.output := by lin_cert using reduction19958.terms
theorem substitutionProof19958 : IsMapEvaluation generatorImages reduction19958.relations [0,2,2153] reduction19958.output := by lin_cert using reduction19958.terms
def map_15_250 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20178 : InImage map_15_250 image20178 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20178 : Bundle := named_bundle% "RealMapCertificates/relations/basis20178.json"
theorem reductionProof20178 : EqualModuloRelations reduction20178.relations reduction20178.input reduction20178.output := by lin_cert using reduction20178.terms
theorem substitutionProof20178 : IsMapEvaluation generatorImages reduction20178.relations [2370] reduction20178.output := by lin_cert using reduction20178.terms
def image20179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20179 : InImage map_15_250 image20179 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20179 : Bundle := named_bundle% "RealMapCertificates/relations/basis20179.json"
theorem reductionProof20179 : EqualModuloRelations reduction20179.relations reduction20179.input reduction20179.output := by lin_cert using reduction20179.terms
theorem substitutionProof20179 : IsMapEvaluation generatorImages reduction20179.relations [2369] reduction20179.output := by lin_cert using reduction20179.terms
def image20180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20180 : InImage map_15_250 image20180 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20180 : Bundle := named_bundle% "RealMapCertificates/relations/basis20180.json"
theorem reductionProof20180 : EqualModuloRelations reduction20180.relations reduction20180.input reduction20180.output := by lin_cert using reduction20180.terms
theorem substitutionProof20180 : IsMapEvaluation generatorImages reduction20180.relations [2368] reduction20180.output := by lin_cert using reduction20180.terms
def image20181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20181 : InImage map_15_250 image20181 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20181 : Bundle := named_bundle% "RealMapCertificates/relations/basis20181.json"
theorem reductionProof20181 : EqualModuloRelations reduction20181.relations reduction20181.input reduction20181.output := by lin_cert using reduction20181.terms
theorem substitutionProof20181 : IsMapEvaluation generatorImages reduction20181.relations [279,324] reduction20181.output := by lin_cert using reduction20181.terms
def image20182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20182 : InImage map_15_250 image20182 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20182 : Bundle := named_bundle% "RealMapCertificates/relations/basis20182.json"
theorem reductionProof20182 : EqualModuloRelations reduction20182.relations reduction20182.input reduction20182.output := by lin_cert using reduction20182.terms
theorem substitutionProof20182 : IsMapEvaluation generatorImages reduction20182.relations [2,2234] reduction20182.output := by lin_cert using reduction20182.terms
def image20183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20183 : InImage map_15_250 image20183 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20183 : Bundle := named_bundle% "RealMapCertificates/relations/basis20183.json"
theorem reductionProof20183 : EqualModuloRelations reduction20183.relations reduction20183.input reduction20183.output := by lin_cert using reduction20183.terms
theorem substitutionProof20183 : IsMapEvaluation generatorImages reduction20183.relations [0,3,3,1825] reduction20183.output := by lin_cert using reduction20183.terms
def map_15_251 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image20458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20458 : InImage map_15_251 image20458 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20458 : Bundle := named_bundle% "RealMapCertificates/relations/basis20458.json"
theorem reductionProof20458 : EqualModuloRelations reduction20458.relations reduction20458.input reduction20458.output := by lin_cert using reduction20458.terms
theorem substitutionProof20458 : IsMapEvaluation generatorImages reduction20458.relations [2398] reduction20458.output := by lin_cert using reduction20458.terms
def image20459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20459 : InImage map_15_251 image20459 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20459 : Bundle := named_bundle% "RealMapCertificates/relations/basis20459.json"
theorem reductionProof20459 : EqualModuloRelations reduction20459.relations reduction20459.input reduction20459.output := by lin_cert using reduction20459.terms
theorem substitutionProof20459 : IsMapEvaluation generatorImages reduction20459.relations [286,324] reduction20459.output := by lin_cert using reduction20459.terms
def image20460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20460 : InImage map_15_251 image20460 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20460 : Bundle := named_bundle% "RealMapCertificates/relations/basis20460.json"
theorem reductionProof20460 : EqualModuloRelations reduction20460.relations reduction20460.input reduction20460.output := by lin_cert using reduction20460.terms
theorem substitutionProof20460 : IsMapEvaluation generatorImages reduction20460.relations [285,324] reduction20460.output := by lin_cert using reduction20460.terms
def map_15_252 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20784 : InImage map_15_252 image20784 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20784 : Bundle := named_bundle% "RealMapCertificates/relations/basis20784.json"
theorem reductionProof20784 : EqualModuloRelations reduction20784.relations reduction20784.input reduction20784.output := by lin_cert using reduction20784.terms
theorem substitutionProof20784 : IsMapEvaluation generatorImages reduction20784.relations [2433] reduction20784.output := by lin_cert using reduction20784.terms
def image20785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20785 : InImage map_15_252 image20785 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20785 : Bundle := named_bundle% "RealMapCertificates/relations/basis20785.json"
theorem reductionProof20785 : EqualModuloRelations reduction20785.relations reduction20785.input reduction20785.output := by lin_cert using reduction20785.terms
theorem substitutionProof20785 : IsMapEvaluation generatorImages reduction20785.relations [2,7,1801] reduction20785.output := by lin_cert using reduction20785.terms
def map_15_253 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21007 : InImage map_15_253 image21007 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21007 : Bundle := named_bundle% "RealMapCertificates/relations/basis21007.json"
theorem reductionProof21007 : EqualModuloRelations reduction21007.relations reduction21007.input reduction21007.output := by lin_cert using reduction21007.terms
theorem substitutionProof21007 : IsMapEvaluation generatorImages reduction21007.relations [2481] reduction21007.output := by lin_cert using reduction21007.terms
def image21008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21008 : InImage map_15_253 image21008 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21008 : Bundle := named_bundle% "RealMapCertificates/relations/basis21008.json"
theorem reductionProof21008 : EqualModuloRelations reduction21008.relations reduction21008.input reduction21008.output := by lin_cert using reduction21008.terms
theorem substitutionProof21008 : IsMapEvaluation generatorImages reduction21008.relations [2480] reduction21008.output := by lin_cert using reduction21008.terms
def image21009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21009 : InImage map_15_253 image21009 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21009 : Bundle := named_bundle% "RealMapCertificates/relations/basis21009.json"
theorem reductionProof21009 : EqualModuloRelations reduction21009.relations reduction21009.input reduction21009.output := by lin_cert using reduction21009.terms
theorem substitutionProof21009 : IsMapEvaluation generatorImages reduction21009.relations [2479] reduction21009.output := by lin_cert using reduction21009.terms
def image21010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21010 : InImage map_15_253 image21010 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21010 : Bundle := named_bundle% "RealMapCertificates/relations/basis21010.json"
theorem reductionProof21010 : EqualModuloRelations reduction21010.relations reduction21010.input reduction21010.output := by lin_cert using reduction21010.terms
theorem substitutionProof21010 : IsMapEvaluation generatorImages reduction21010.relations [8,209,324] reduction21010.output := by lin_cert using reduction21010.terms
def image21011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21011 : InImage map_15_253 image21011 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21011 : Bundle := named_bundle% "RealMapCertificates/relations/basis21011.json"
theorem reductionProof21011 : EqualModuloRelations reduction21011.relations reduction21011.input reduction21011.output := by lin_cert using reduction21011.terms
theorem substitutionProof21011 : IsMapEvaluation generatorImages reduction21011.relations [1,287,324] reduction21011.output := by lin_cert using reduction21011.terms
def map_15_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21324 : InImage map_15_254 image21324 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21324 : Bundle := named_bundle% "RealMapCertificates/relations/basis21324.json"
theorem reductionProof21324 : EqualModuloRelations reduction21324.relations reduction21324.input reduction21324.output := by lin_cert using reduction21324.terms
theorem substitutionProof21324 : IsMapEvaluation generatorImages reduction21324.relations [2526] reduction21324.output := by lin_cert using reduction21324.terms
def image21325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21325 : InImage map_15_254 image21325 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21325 : Bundle := named_bundle% "RealMapCertificates/relations/basis21325.json"
theorem reductionProof21325 : EqualModuloRelations reduction21325.relations reduction21325.input reduction21325.output := by lin_cert using reduction21325.terms
theorem substitutionProof21325 : IsMapEvaluation generatorImages reduction21325.relations [2525] reduction21325.output := by lin_cert using reduction21325.terms
def image21326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21326 : InImage map_15_254 image21326 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21326 : Bundle := named_bundle% "RealMapCertificates/relations/basis21326.json"
theorem reductionProof21326 : EqualModuloRelations reduction21326.relations reduction21326.input reduction21326.output := by lin_cert using reduction21326.terms
theorem substitutionProof21326 : IsMapEvaluation generatorImages reduction21326.relations [2524] reduction21326.output := by lin_cert using reduction21326.terms
def image21327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21327 : InImage map_15_254 image21327 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21327 : Bundle := named_bundle% "RealMapCertificates/relations/basis21327.json"
theorem reductionProof21327 : EqualModuloRelations reduction21327.relations reduction21327.input reduction21327.output := by lin_cert using reduction21327.terms
theorem substitutionProof21327 : IsMapEvaluation generatorImages reduction21327.relations [13,189,324] reduction21327.output := by lin_cert using reduction21327.terms
def image21328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21328 : InImage map_15_254 image21328 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21328 : Bundle := named_bundle% "RealMapCertificates/relations/basis21328.json"
theorem reductionProof21328 : EqualModuloRelations reduction21328.relations reduction21328.input reduction21328.output := by lin_cert using reduction21328.terms
theorem substitutionProof21328 : IsMapEvaluation generatorImages reduction21328.relations [1,2434] reduction21328.output := by lin_cert using reduction21328.terms
def image21329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21329 : InImage map_15_254 image21329 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21329 : Bundle := named_bundle% "RealMapCertificates/relations/basis21329.json"
theorem reductionProof21329 : EqualModuloRelations reduction21329.relations reduction21329.input reduction21329.output := by lin_cert using reduction21329.terms
theorem substitutionProof21329 : IsMapEvaluation generatorImages reduction21329.relations [0,2482] reduction21329.output := by lin_cert using reduction21329.terms
def map_15_255 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21662 : InImage map_15_255 image21662 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21662 : Bundle := named_bundle% "RealMapCertificates/relations/basis21662.json"
theorem reductionProof21662 : EqualModuloRelations reduction21662.relations reduction21662.input reduction21662.output := by lin_cert using reduction21662.terms
theorem substitutionProof21662 : IsMapEvaluation generatorImages reduction21662.relations [2574] reduction21662.output := by lin_cert using reduction21662.terms
def image21663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21663 : InImage map_15_255 image21663 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21663 : Bundle := named_bundle% "RealMapCertificates/relations/basis21663.json"
theorem reductionProof21663 : EqualModuloRelations reduction21663.relations reduction21663.input reduction21663.output := by lin_cert using reduction21663.terms
theorem substitutionProof21663 : IsMapEvaluation generatorImages reduction21663.relations [11,1825] reduction21663.output := by lin_cert using reduction21663.terms
def image21664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21664 : InImage map_15_255 image21664 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21664 : Bundle := named_bundle% "RealMapCertificates/relations/basis21664.json"
theorem reductionProof21664 : EqualModuloRelations reduction21664.relations reduction21664.input reduction21664.output := by lin_cert using reduction21664.terms
theorem substitutionProof21664 : IsMapEvaluation generatorImages reduction21664.relations [2,287,324] reduction21664.output := by lin_cert using reduction21664.terms
def image21665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21665 : InImage map_15_255 image21665 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21665 : Bundle := named_bundle% "RealMapCertificates/relations/basis21665.json"
theorem reductionProof21665 : EqualModuloRelations reduction21665.relations reduction21665.input reduction21665.output := by lin_cert using reduction21665.terms
theorem substitutionProof21665 : IsMapEvaluation generatorImages reduction21665.relations [0,2528] reduction21665.output := by lin_cert using reduction21665.terms
def map_15_256 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21944 : InImage map_15_256 image21944 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21944 : Bundle := named_bundle% "RealMapCertificates/relations/basis21944.json"
theorem reductionProof21944 : EqualModuloRelations reduction21944.relations reduction21944.input reduction21944.output := by lin_cert using reduction21944.terms
theorem substitutionProof21944 : IsMapEvaluation generatorImages reduction21944.relations [2620] reduction21944.output := by lin_cert using reduction21944.terms
def image21945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21945 : InImage map_15_256 image21945 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21945 : Bundle := named_bundle% "RealMapCertificates/relations/basis21945.json"
theorem reductionProof21945 : EqualModuloRelations reduction21945.relations reduction21945.input reduction21945.output := by lin_cert using reduction21945.terms
theorem substitutionProof21945 : IsMapEvaluation generatorImages reduction21945.relations [9,209,324] reduction21945.output := by lin_cert using reduction21945.terms
def image21946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21946 : InImage map_15_256 image21946 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21946 : Bundle := named_bundle% "RealMapCertificates/relations/basis21946.json"
theorem reductionProof21946 : EqualModuloRelations reduction21946.relations reduction21946.input reduction21946.output := by lin_cert using reduction21946.terms
theorem substitutionProof21946 : IsMapEvaluation generatorImages reduction21946.relations [2,2434] reduction21946.output := by lin_cert using reduction21946.terms
def image21947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21947 : InImage map_15_256 image21947 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21947 : Bundle := named_bundle% "RealMapCertificates/relations/basis21947.json"
theorem reductionProof21947 : EqualModuloRelations reduction21947.relations reduction21947.input reduction21947.output := by lin_cert using reduction21947.terms
theorem substitutionProof21947 : IsMapEvaluation generatorImages reduction21947.relations [1,2527] reduction21947.output := by lin_cert using reduction21947.terms
def map_15_257 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image22282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22282 : InImage map_15_257 image22282 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22282 : Bundle := named_bundle% "RealMapCertificates/relations/basis22282.json"
theorem reductionProof22282 : EqualModuloRelations reduction22282.relations reduction22282.input reduction22282.output := by lin_cert using reduction22282.terms
theorem substitutionProof22282 : IsMapEvaluation generatorImages reduction22282.relations [2665] reduction22282.output := by lin_cert using reduction22282.terms
def image22283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22283 : InImage map_15_257 image22283 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22283 : Bundle := named_bundle% "RealMapCertificates/relations/basis22283.json"
theorem reductionProof22283 : EqualModuloRelations reduction22283.relations reduction22283.input reduction22283.output := by lin_cert using reduction22283.terms
theorem substitutionProof22283 : IsMapEvaluation generatorImages reduction22283.relations [0,69,1057] reduction22283.output := by lin_cert using reduction22283.terms
def map_15_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22636 : InImage map_15_258 image22636 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22636 : Bundle := named_bundle% "RealMapCertificates/relations/basis22636.json"
theorem reductionProof22636 : EqualModuloRelations reduction22636.relations reduction22636.input reduction22636.output := by lin_cert using reduction22636.terms
theorem substitutionProof22636 : IsMapEvaluation generatorImages reduction22636.relations [2716] reduction22636.output := by lin_cert using reduction22636.terms
def image22637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22637 : InImage map_15_258 image22637 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22637 : Bundle := named_bundle% "RealMapCertificates/relations/basis22637.json"
theorem reductionProof22637 : EqualModuloRelations reduction22637.relations reduction22637.input reduction22637.output := by lin_cert using reduction22637.terms
theorem substitutionProof22637 : IsMapEvaluation generatorImages reduction22637.relations [2715] reduction22637.output := by lin_cert using reduction22637.terms
def image22638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22638 : InImage map_15_258 image22638 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22638 : Bundle := named_bundle% "RealMapCertificates/relations/basis22638.json"
theorem reductionProof22638 : EqualModuloRelations reduction22638.relations reduction22638.input reduction22638.output := by lin_cert using reduction22638.terms
theorem substitutionProof22638 : IsMapEvaluation generatorImages reduction22638.relations [2714] reduction22638.output := by lin_cert using reduction22638.terms
def image22639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22639 : InImage map_15_258 image22639 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22639 : Bundle := named_bundle% "RealMapCertificates/relations/basis22639.json"
theorem reductionProof22639 : EqualModuloRelations reduction22639.relations reduction22639.input reduction22639.output := by lin_cert using reduction22639.terms
theorem substitutionProof22639 : IsMapEvaluation generatorImages reduction22639.relations [2713] reduction22639.output := by lin_cert using reduction22639.terms
def image22640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22640 : InImage map_15_258 image22640 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22640 : Bundle := named_bundle% "RealMapCertificates/relations/basis22640.json"
theorem reductionProof22640 : EqualModuloRelations reduction22640.relations reduction22640.input reduction22640.output := by lin_cert using reduction22640.terms
theorem substitutionProof22640 : IsMapEvaluation generatorImages reduction22640.relations [2712] reduction22640.output := by lin_cert using reduction22640.terms
def image22641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22641 : InImage map_15_258 image22641 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22641 : Bundle := named_bundle% "RealMapCertificates/relations/basis22641.json"
theorem reductionProof22641 : EqualModuloRelations reduction22641.relations reduction22641.input reduction22641.output := by lin_cert using reduction22641.terms
theorem substitutionProof22641 : IsMapEvaluation generatorImages reduction22641.relations [2711] reduction22641.output := by lin_cert using reduction22641.terms
def image22642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22642 : InImage map_15_258 image22642 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22642 : Bundle := named_bundle% "RealMapCertificates/relations/basis22642.json"
theorem reductionProof22642 : EqualModuloRelations reduction22642.relations reduction22642.input reduction22642.output := by lin_cert using reduction22642.terms
theorem substitutionProof22642 : IsMapEvaluation generatorImages reduction22642.relations [2710] reduction22642.output := by lin_cert using reduction22642.terms
def image22643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22643 : InImage map_15_258 image22643 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22643 : Bundle := named_bundle% "RealMapCertificates/relations/basis22643.json"
theorem reductionProof22643 : EqualModuloRelations reduction22643.relations reduction22643.input reduction22643.output := by lin_cert using reduction22643.terms
theorem substitutionProof22643 : IsMapEvaluation generatorImages reduction22643.relations [0,0,2622] reduction22643.output := by lin_cert using reduction22643.terms
def map_15_259 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image22953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22953 : InImage map_15_259 image22953 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction22953 : Bundle := named_bundle% "RealMapCertificates/relations/basis22953.json"
theorem reductionProof22953 : EqualModuloRelations reduction22953.relations reduction22953.input reduction22953.output := by lin_cert using reduction22953.terms
theorem substitutionProof22953 : IsMapEvaluation generatorImages reduction22953.relations [2778] reduction22953.output := by lin_cert using reduction22953.terms
def image22954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22954 : InImage map_15_259 image22954 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction22954 : Bundle := named_bundle% "RealMapCertificates/relations/basis22954.json"
theorem reductionProof22954 : EqualModuloRelations reduction22954.relations reduction22954.input reduction22954.output := by lin_cert using reduction22954.terms
theorem substitutionProof22954 : IsMapEvaluation generatorImages reduction22954.relations [2777] reduction22954.output := by lin_cert using reduction22954.terms
def image22955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22955 : InImage map_15_259 image22955 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction22955 : Bundle := named_bundle% "RealMapCertificates/relations/basis22955.json"
theorem reductionProof22955 : EqualModuloRelations reduction22955.relations reduction22955.input reduction22955.output := by lin_cert using reduction22955.terms
theorem substitutionProof22955 : IsMapEvaluation generatorImages reduction22955.relations [2776] reduction22955.output := by lin_cert using reduction22955.terms
def image22956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22956 : InImage map_15_259 image22956 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction22956 : Bundle := named_bundle% "RealMapCertificates/relations/basis22956.json"
theorem reductionProof22956 : EqualModuloRelations reduction22956.relations reduction22956.input reduction22956.output := by lin_cert using reduction22956.terms
theorem substitutionProof22956 : IsMapEvaluation generatorImages reduction22956.relations [2775] reduction22956.output := by lin_cert using reduction22956.terms
def image22957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22957 : InImage map_15_259 image22957 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction22957 : Bundle := named_bundle% "RealMapCertificates/relations/basis22957.json"
theorem reductionProof22957 : EqualModuloRelations reduction22957.relations reduction22957.input reduction22957.output := by lin_cert using reduction22957.terms
theorem substitutionProof22957 : IsMapEvaluation generatorImages reduction22957.relations [2774] reduction22957.output := by lin_cert using reduction22957.terms
def image22958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22958 : InImage map_15_259 image22958 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction22958 : Bundle := named_bundle% "RealMapCertificates/relations/basis22958.json"
theorem reductionProof22958 : EqualModuloRelations reduction22958.relations reduction22958.input reduction22958.output := by lin_cert using reduction22958.terms
theorem substitutionProof22958 : IsMapEvaluation generatorImages reduction22958.relations [13,209,324] reduction22958.output := by lin_cert using reduction22958.terms
def image22959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22959 : InImage map_15_259 image22959 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction22959 : Bundle := named_bundle% "RealMapCertificates/relations/basis22959.json"
theorem reductionProof22959 : EqualModuloRelations reduction22959.relations reduction22959.input reduction22959.output := by lin_cert using reduction22959.terms
theorem substitutionProof22959 : IsMapEvaluation generatorImages reduction22959.relations [3,287,324] reduction22959.output := by lin_cert using reduction22959.terms
def image22960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22960 : InImage map_15_259 image22960 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction22960 : Bundle := named_bundle% "RealMapCertificates/relations/basis22960.json"
theorem reductionProof22960 : EqualModuloRelations reduction22960.relations reduction22960.input reduction22960.output := by lin_cert using reduction22960.terms
theorem substitutionProof22960 : IsMapEvaluation generatorImages reduction22960.relations [0,2722] reduction22960.output := by lin_cert using reduction22960.terms
def image22961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22961 : InImage map_15_259 image22961 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction22961 : Bundle := named_bundle% "RealMapCertificates/relations/basis22961.json"
theorem reductionProof22961 : EqualModuloRelations reduction22961.relations reduction22961.input reduction22961.output := by lin_cert using reduction22961.terms
theorem substitutionProof22961 : IsMapEvaluation generatorImages reduction22961.relations [0,2721] reduction22961.output := by lin_cert using reduction22961.terms
def image22962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22962 : InImage map_15_259 image22962 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction22962 : Bundle := named_bundle% "RealMapCertificates/relations/basis22962.json"
theorem reductionProof22962 : EqualModuloRelations reduction22962.relations reduction22962.input reduction22962.output := by lin_cert using reduction22962.terms
theorem substitutionProof22962 : IsMapEvaluation generatorImages reduction22962.relations [0,2720] reduction22962.output := by lin_cert using reduction22962.terms
def image22963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22963 : InImage map_15_259 image22963 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction22963 : Bundle := named_bundle% "RealMapCertificates/relations/basis22963.json"
theorem reductionProof22963 : EqualModuloRelations reduction22963.relations reduction22963.input reduction22963.output := by lin_cert using reduction22963.terms
theorem substitutionProof22963 : IsMapEvaluation generatorImages reduction22963.relations [0,2719] reduction22963.output := by lin_cert using reduction22963.terms
end RealMapCertificates
