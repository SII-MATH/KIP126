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
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 30 => [[2,4,4,4]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 41 => [[3,4,4,4]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 52 => []
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 83 => []
  | 89 => []
  | 90 => []
  | 101 => []
  | 112 => []
  | 149 => [[4,9,12]]
  | 151 => []
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 176 => []
  | 180 => [[5,10,12]]
  | 187 => []
  | 188 => []
  | 194 => [[7,10,12]]
  | 201 => []
  | 209 => []
  | 212 => []
  | 215 => []
  | 220 => []
  | 226 => []
  | 254 => []
  | 255 => []
  | 266 => []
  | 267 => []
  | 284 => []
  | 285 => []
  | 293 => []
  | 302 => []
  | 303 => []
  | 304 => []
  | 314 => []
  | 324 => []
  | 335 => []
  | 2150 => []
  | 2482 => []
  | 2622 => []
  | 2719 => []
  | 2720 => []
  | 2727 => []
  | 2779 => []
  | 2780 => []
  | 2783 => []
  | 2843 => []
  | 2844 => []
  | 2896 => []
  | 2897 => []
  | _ => []
def map_15_260 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image23352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23352 : InImage map_15_260 image23352 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction23352 : Bundle := named_bundle% "RealMapCertificates/relations/basis23352.json"
theorem reductionProof23352 : EqualModuloRelations reduction23352.relations reduction23352.input reduction23352.output := by lin_cert using reduction23352.terms
theorem substitutionProof23352 : IsMapEvaluation generatorImages reduction23352.relations [2844] reduction23352.output := by lin_cert using reduction23352.terms
def image23353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23353 : InImage map_15_260 image23353 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction23353 : Bundle := named_bundle% "RealMapCertificates/relations/basis23353.json"
theorem reductionProof23353 : EqualModuloRelations reduction23353.relations reduction23353.input reduction23353.output := by lin_cert using reduction23353.terms
theorem substitutionProof23353 : IsMapEvaluation generatorImages reduction23353.relations [2843] reduction23353.output := by lin_cert using reduction23353.terms
def image23354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23354 : InImage map_15_260 image23354 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction23354 : Bundle := named_bundle% "RealMapCertificates/relations/basis23354.json"
theorem reductionProof23354 : EqualModuloRelations reduction23354.relations reduction23354.input reduction23354.output := by lin_cert using reduction23354.terms
theorem substitutionProof23354 : IsMapEvaluation generatorImages reduction23354.relations [7,2150] reduction23354.output := by lin_cert using reduction23354.terms
def image23355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23355 : InImage map_15_260 image23355 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction23355 : Bundle := named_bundle% "RealMapCertificates/relations/basis23355.json"
theorem reductionProof23355 : EqualModuloRelations reduction23355.relations reduction23355.input reduction23355.output := by lin_cert using reduction23355.terms
theorem substitutionProof23355 : IsMapEvaluation generatorImages reduction23355.relations [1,2720] reduction23355.output := by lin_cert using reduction23355.terms
def image23356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23356 : InImage map_15_260 image23356 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction23356 : Bundle := named_bundle% "RealMapCertificates/relations/basis23356.json"
theorem reductionProof23356 : EqualModuloRelations reduction23356.relations reduction23356.input reduction23356.output := by lin_cert using reduction23356.terms
theorem substitutionProof23356 : IsMapEvaluation generatorImages reduction23356.relations [1,2719] reduction23356.output := by lin_cert using reduction23356.terms
def image23357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23357 : InImage map_15_260 image23357 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction23357 : Bundle := named_bundle% "RealMapCertificates/relations/basis23357.json"
theorem reductionProof23357 : EqualModuloRelations reduction23357.relations reduction23357.input reduction23357.output := by lin_cert using reduction23357.terms
theorem substitutionProof23357 : IsMapEvaluation generatorImages reduction23357.relations [1,1,2622] reduction23357.output := by lin_cert using reduction23357.terms
def image23358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23358 : InImage map_15_260 image23358 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction23358 : Bundle := named_bundle% "RealMapCertificates/relations/basis23358.json"
theorem reductionProof23358 : EqualModuloRelations reduction23358.relations reduction23358.input reduction23358.output := by lin_cert using reduction23358.terms
theorem substitutionProof23358 : IsMapEvaluation generatorImages reduction23358.relations [0,2780] reduction23358.output := by lin_cert using reduction23358.terms
def image23359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23359 : InImage map_15_260 image23359 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction23359 : Bundle := named_bundle% "RealMapCertificates/relations/basis23359.json"
theorem reductionProof23359 : EqualModuloRelations reduction23359.relations reduction23359.input reduction23359.output := by lin_cert using reduction23359.terms
theorem substitutionProof23359 : IsMapEvaluation generatorImages reduction23359.relations [0,2779] reduction23359.output := by lin_cert using reduction23359.terms
def image23360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23360 : InImage map_15_260 image23360 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction23360 : Bundle := named_bundle% "RealMapCertificates/relations/basis23360.json"
theorem reductionProof23360 : EqualModuloRelations reduction23360.relations reduction23360.input reduction23360.output := by lin_cert using reduction23360.terms
theorem substitutionProof23360 : IsMapEvaluation generatorImages reduction23360.relations [0,0,2727] reduction23360.output := by lin_cert using reduction23360.terms
def image23361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23361 : InImage map_15_260 image23361 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction23361 : Bundle := named_bundle% "RealMapCertificates/relations/basis23361.json"
theorem reductionProof23361 : EqualModuloRelations reduction23361.relations reduction23361.input reduction23361.output := by lin_cert using reduction23361.terms
theorem substitutionProof23361 : IsMapEvaluation generatorImages reduction23361.relations [0,0,324,335] reduction23361.output := by lin_cert using reduction23361.terms
def image23362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23362 : InImage map_15_260 image23362 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction23362 : Bundle := named_bundle% "RealMapCertificates/relations/basis23362.json"
theorem reductionProof23362 : EqualModuloRelations reduction23362.relations reduction23362.input reduction23362.output := by lin_cert using reduction23362.terms
theorem substitutionProof23362 : IsMapEvaluation generatorImages reduction23362.relations [0,0,0,0,0,314,324] reduction23362.output := by lin_cert using reduction23362.terms
def map_15_261 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23777 : InImage map_15_261 image23777 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23777 : Bundle := named_bundle% "RealMapCertificates/relations/basis23777.json"
theorem reductionProof23777 : EqualModuloRelations reduction23777.relations reduction23777.input reduction23777.output := by lin_cert using reduction23777.terms
theorem substitutionProof23777 : IsMapEvaluation generatorImages reduction23777.relations [2897] reduction23777.output := by lin_cert using reduction23777.terms
def image23778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23778 : InImage map_15_261 image23778 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23778 : Bundle := named_bundle% "RealMapCertificates/relations/basis23778.json"
theorem reductionProof23778 : EqualModuloRelations reduction23778.relations reduction23778.input reduction23778.output := by lin_cert using reduction23778.terms
theorem substitutionProof23778 : IsMapEvaluation generatorImages reduction23778.relations [2896] reduction23778.output := by lin_cert using reduction23778.terms
def image23779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23779 : InImage map_15_261 image23779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23779 : Bundle := named_bundle% "RealMapCertificates/relations/basis23779.json"
theorem reductionProof23779 : EqualModuloRelations reduction23779.relations reduction23779.input reduction23779.output := by lin_cert using reduction23779.terms
theorem substitutionProof23779 : IsMapEvaluation generatorImages reduction23779.relations [3,2482] reduction23779.output := by lin_cert using reduction23779.terms
def image23780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23780 : InImage map_15_261 image23780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23780 : Bundle := named_bundle% "RealMapCertificates/relations/basis23780.json"
theorem reductionProof23780 : EqualModuloRelations reduction23780.relations reduction23780.input reduction23780.output := by lin_cert using reduction23780.terms
theorem substitutionProof23780 : IsMapEvaluation generatorImages reduction23780.relations [1,2780] reduction23780.output := by lin_cert using reduction23780.terms
def image23781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23781 : InImage map_15_261 image23781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23781 : Bundle := named_bundle% "RealMapCertificates/relations/basis23781.json"
theorem reductionProof23781 : EqualModuloRelations reduction23781.relations reduction23781.input reduction23781.output := by lin_cert using reduction23781.terms
theorem substitutionProof23781 : IsMapEvaluation generatorImages reduction23781.relations [0,0,2783] reduction23781.output := by lin_cert using reduction23781.terms
def map_16_16 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image31 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation31 : InImage map_16_16 image31 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction31 : Bundle := named_bundle% "RealMapCertificates/relations/basis31.json"
theorem reductionProof31 : EqualModuloRelations reduction31.relations reduction31.input reduction31.output := by lin_cert using reduction31.terms
theorem substitutionProof31 : IsMapEvaluation generatorImages reduction31.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction31.output := by lin_cert using reduction31.terms
def map_16_47 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation234 : InImage map_16_47 image234 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction234 : Bundle := named_bundle% "RealMapCertificates/relations/basis234.json"
theorem reductionProof234 : EqualModuloRelations reduction234.relations reduction234.input reduction234.output := by lin_cert using reduction234.terms
theorem substitutionProof234 : IsMapEvaluation generatorImages reduction234.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18] reduction234.output := by lin_cert using reduction234.terms
def map_16_49 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image251 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation251 : InImage map_16_49 image251 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction251 : Bundle := named_bundle% "RealMapCertificates/relations/basis251.json"
theorem reductionProof251 : EqualModuloRelations reduction251.relations reduction251.input reduction251.output := by lin_cert using reduction251.terms
theorem substitutionProof251 : IsMapEvaluation generatorImages reduction251.relations [1,41] reduction251.output := by lin_cert using reduction251.terms
def map_16_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image291 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation291 : InImage map_16_54 image291 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction291 : Bundle := named_bundle% "RealMapCertificates/relations/basis291.json"
theorem reductionProof291 : EqualModuloRelations reduction291.relations reduction291.input reduction291.output := by lin_cert using reduction291.terms
theorem substitutionProof291 : IsMapEvaluation generatorImages reduction291.relations [49] reduction291.output := by lin_cert using reduction291.terms
def map_16_55 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image304 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation304 : InImage map_16_55 image304 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction304 : Bundle := named_bundle% "RealMapCertificates/relations/basis304.json"
theorem reductionProof304 : EqualModuloRelations reduction304.relations reduction304.input reduction304.output := by lin_cert using reduction304.terms
theorem substitutionProof304 : IsMapEvaluation generatorImages reduction304.relations [0,50] reduction304.output := by lin_cert using reduction304.terms
def map_16_57 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image323 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation323 : InImage map_16_57 image323 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction323 : Bundle := named_bundle% "RealMapCertificates/relations/basis323.json"
theorem reductionProof323 : EqualModuloRelations reduction323.relations reduction323.input reduction323.output := by lin_cert using reduction323.terms
theorem substitutionProof323 : IsMapEvaluation generatorImages reduction323.relations [55] reduction323.output := by lin_cert using reduction323.terms
def map_16_58 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image336 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation336 : InImage map_16_58 image336 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction336 : Bundle := named_bundle% "RealMapCertificates/relations/basis336.json"
theorem reductionProof336 : EqualModuloRelations reduction336.relations reduction336.input reduction336.output := by lin_cert using reduction336.terms
theorem substitutionProof336 : IsMapEvaluation generatorImages reduction336.relations [0,56] reduction336.output := by lin_cert using reduction336.terms
def map_16_60 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image348 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation348 : InImage map_16_60 image348 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction348 : Bundle := named_bundle% "RealMapCertificates/relations/basis348.json"
theorem reductionProof348 : EqualModuloRelations reduction348.relations reduction348.input reduction348.output := by lin_cert using reduction348.terms
theorem substitutionProof348 : IsMapEvaluation generatorImages reduction348.relations [8,31] reduction348.output := by lin_cert using reduction348.terms
def map_16_61 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image363 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation363 : InImage map_16_61 image363 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction363 : Bundle := named_bundle% "RealMapCertificates/relations/basis363.json"
theorem reductionProof363 : EqualModuloRelations reduction363.relations reduction363.input reduction363.output := by lin_cert using reduction363.terms
theorem substitutionProof363 : IsMapEvaluation generatorImages reduction363.relations [0,16,17] reduction363.output := by lin_cert using reduction363.terms
def map_16_62 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation370 : InImage map_16_62 image370 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction370 : Bundle := named_bundle% "RealMapCertificates/relations/basis370.json"
theorem reductionProof370 : EqualModuloRelations reduction370.relations reduction370.input reduction370.output := by lin_cert using reduction370.terms
theorem substitutionProof370 : IsMapEvaluation generatorImages reduction370.relations [0,0,17,17] reduction370.output := by lin_cert using reduction370.terms
def map_16_63 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image378 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation378 : InImage map_16_63 image378 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction378 : Bundle := named_bundle% "RealMapCertificates/relations/basis378.json"
theorem reductionProof378 : EqualModuloRelations reduction378.relations reduction378.input reduction378.output := by lin_cert using reduction378.terms
theorem substitutionProof378 : IsMapEvaluation generatorImages reduction378.relations [8,39] reduction378.output := by lin_cert using reduction378.terms
def image379 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation379 : InImage map_16_63 image379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction379 : Bundle := named_bundle% "RealMapCertificates/relations/basis379.json"
theorem reductionProof379 : EqualModuloRelations reduction379.relations reduction379.input reduction379.output := by lin_cert using reduction379.terms
theorem substitutionProof379 : IsMapEvaluation generatorImages reduction379.relations [0,0,0,59] reduction379.output := by lin_cert using reduction379.terms
def map_16_64 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image393 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation393 : InImage map_16_64 image393 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction393 : Bundle := named_bundle% "RealMapCertificates/relations/basis393.json"
theorem reductionProof393 : EqualModuloRelations reduction393.relations reduction393.input reduction393.output := by lin_cert using reduction393.terms
theorem substitutionProof393 : IsMapEvaluation generatorImages reduction393.relations [0,8,40] reduction393.output := by lin_cert using reduction393.terms
def map_16_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image422 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation422 : InImage map_16_66 image422 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction422 : Bundle := named_bundle% "RealMapCertificates/relations/basis422.json"
theorem reductionProof422 : EqualModuloRelations reduction422.relations reduction422.input reduction422.output := by lin_cert using reduction422.terms
theorem substitutionProof422 : IsMapEvaluation generatorImages reduction422.relations [8,8,16] reduction422.output := by lin_cert using reduction422.terms
def map_16_67 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation443 : InImage map_16_67 image443 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction443 : Bundle := named_bundle% "RealMapCertificates/relations/basis443.json"
theorem reductionProof443 : EqualModuloRelations reduction443.relations reduction443.input reduction443.output := by lin_cert using reduction443.terms
theorem substitutionProof443 : IsMapEvaluation generatorImages reduction443.relations [0,8,8,17] reduction443.output := by lin_cert using reduction443.terms
def map_16_69 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image480 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation480 : InImage map_16_69 image480 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction480 : Bundle := named_bundle% "RealMapCertificates/relations/basis480.json"
theorem reductionProof480 : EqualModuloRelations reduction480.relations reduction480.input reduction480.output := by lin_cert using reduction480.terms
theorem substitutionProof480 : IsMapEvaluation generatorImages reduction480.relations [8,8,19] reduction480.output := by lin_cert using reduction480.terms
def image481 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation481 : InImage map_16_69 image481 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction481 : Bundle := named_bundle% "RealMapCertificates/relations/basis481.json"
theorem reductionProof481 : EqualModuloRelations reduction481.relations reduction481.input reduction481.output := by lin_cert using reduction481.terms
theorem substitutionProof481 : IsMapEvaluation generatorImages reduction481.relations [0,0,0,0,0,0,64] reduction481.output := by lin_cert using reduction481.terms
def map_16_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation504 : InImage map_16_70 image504 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction504 : Bundle := named_bundle% "RealMapCertificates/relations/basis504.json"
theorem reductionProof504 : EqualModuloRelations reduction504.relations reduction504.input reduction504.output := by lin_cert using reduction504.terms
theorem substitutionProof504 : IsMapEvaluation generatorImages reduction504.relations [0,0,0,0,0,0,66] reduction504.output := by lin_cert using reduction504.terms
def map_16_72 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image539 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation539 : InImage map_16_72 image539 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction539 : Bundle := named_bundle% "RealMapCertificates/relations/basis539.json"
theorem reductionProof539 : EqualModuloRelations reduction539.relations reduction539.input reduction539.output := by lin_cert using reduction539.terms
theorem substitutionProof539 : IsMapEvaluation generatorImages reduction539.relations [8,8,8,8] reduction539.output := by lin_cert using reduction539.terms
def map_16_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image611 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation611 : InImage map_16_75 image611 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction611 : Bundle := named_bundle% "RealMapCertificates/relations/basis611.json"
theorem reductionProof611 : EqualModuloRelations reduction611.relations reduction611.input reduction611.output := by lin_cert using reduction611.terms
theorem substitutionProof611 : IsMapEvaluation generatorImages reduction611.relations [8,8,8,9] reduction611.output := by lin_cert using reduction611.terms
def map_16_78 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation674 : InImage map_16_78 image674 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction674 : Bundle := named_bundle% "RealMapCertificates/relations/basis674.json"
theorem reductionProof674 : EqualModuloRelations reduction674.relations reduction674.input reduction674.output := by lin_cert using reduction674.terms
theorem substitutionProof674 : IsMapEvaluation generatorImages reduction674.relations [8,8,8,13] reduction674.output := by lin_cert using reduction674.terms
def image675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation675 : InImage map_16_78 image675 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction675 : Bundle := named_bundle% "RealMapCertificates/relations/basis675.json"
theorem reductionProof675 : EqualModuloRelations reduction675.relations reduction675.input reduction675.output := by lin_cert using reduction675.terms
theorem substitutionProof675 : IsMapEvaluation generatorImages reduction675.relations [0,0,0,0,0,0,90] reduction675.output := by lin_cert using reduction675.terms
def map_16_79 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation699 : InImage map_16_79 image699 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction699 : Bundle := named_bundle% "RealMapCertificates/relations/basis699.json"
theorem reductionProof699 : EqualModuloRelations reduction699.relations reduction699.input reduction699.output := by lin_cert using reduction699.terms
theorem substitutionProof699 : IsMapEvaluation generatorImages reduction699.relations [1,5,64] reduction699.output := by lin_cert using reduction699.terms
def image700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation700 : InImage map_16_79 image700 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction700 : Bundle := named_bundle% "RealMapCertificates/relations/basis700.json"
theorem reductionProof700 : EqualModuloRelations reduction700.relations reduction700.input reduction700.output := by lin_cert using reduction700.terms
theorem substitutionProof700 : IsMapEvaluation generatorImages reduction700.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction700.output := by lin_cert using reduction700.terms
def map_16_80 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image716 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation716 : InImage map_16_80 image716 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction716 : Bundle := named_bundle% "RealMapCertificates/relations/basis716.json"
theorem reductionProof716 : EqualModuloRelations reduction716.relations reduction716.input reduction716.output := by lin_cert using reduction716.terms
theorem substitutionProof716 : IsMapEvaluation generatorImages reduction716.relations [0,0,112] reduction716.output := by lin_cert using reduction716.terms
def map_16_81 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image745 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation745 : InImage map_16_81 image745 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction745 : Bundle := named_bundle% "RealMapCertificates/relations/basis745.json"
theorem reductionProof745 : EqualModuloRelations reduction745.relations reduction745.input reduction745.output := by lin_cert using reduction745.terms
theorem substitutionProof745 : IsMapEvaluation generatorImages reduction745.relations [8,8,9,13] reduction745.output := by lin_cert using reduction745.terms
def map_16_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation787 : InImage map_16_83 image787 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction787 : Bundle := named_bundle% "RealMapCertificates/relations/basis787.json"
theorem reductionProof787 : EqualModuloRelations reduction787.relations reduction787.input reduction787.output := by lin_cert using reduction787.terms
theorem substitutionProof787 : IsMapEvaluation generatorImages reduction787.relations [0,0,8,64] reduction787.output := by lin_cert using reduction787.terms
def map_16_84 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image811 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation811 : InImage map_16_84 image811 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction811 : Bundle := named_bundle% "RealMapCertificates/relations/basis811.json"
theorem reductionProof811 : EqualModuloRelations reduction811.relations reduction811.input reduction811.output := by lin_cert using reduction811.terms
theorem substitutionProof811 : IsMapEvaluation generatorImages reduction811.relations [8,8,13,13] reduction811.output := by lin_cert using reduction811.terms
def map_16_86 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image866 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation866 : InImage map_16_86 image866 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction866 : Bundle := named_bundle% "RealMapCertificates/relations/basis866.json"
theorem reductionProof866 : EqualModuloRelations reduction866.relations reduction866.input reduction866.output := by lin_cert using reduction866.terms
theorem substitutionProof866 : IsMapEvaluation generatorImages reduction866.relations [0,0,8,72] reduction866.output := by lin_cert using reduction866.terms
def map_16_87 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image897 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation897 : InImage map_16_87 image897 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction897 : Bundle := named_bundle% "RealMapCertificates/relations/basis897.json"
theorem reductionProof897 : EqualModuloRelations reduction897.relations reduction897.input reduction897.output := by lin_cert using reduction897.terms
theorem substitutionProof897 : IsMapEvaluation generatorImages reduction897.relations [8,9,13,13] reduction897.output := by lin_cert using reduction897.terms
def map_16_89 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image944 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation944 : InImage map_16_89 image944 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction944 : Bundle := named_bundle% "RealMapCertificates/relations/basis944.json"
theorem reductionProof944 : EqualModuloRelations reduction944.relations reduction944.input reduction944.output := by lin_cert using reduction944.terms
theorem substitutionProof944 : IsMapEvaluation generatorImages reduction944.relations [0,0,8,79] reduction944.output := by lin_cert using reduction944.terms
def map_16_90 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image974 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation974 : InImage map_16_90 image974 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction974 : Bundle := named_bundle% "RealMapCertificates/relations/basis974.json"
theorem reductionProof974 : EqualModuloRelations reduction974.relations reduction974.input reduction974.output := by lin_cert using reduction974.terms
theorem substitutionProof974 : IsMapEvaluation generatorImages reduction974.relations [8,13,13,13] reduction974.output := by lin_cert using reduction974.terms
def map_16_92 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1026 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1026 : InImage map_16_92 image1026 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1026 : Bundle := named_bundle% "RealMapCertificates/relations/basis1026.json"
theorem reductionProof1026 : EqualModuloRelations reduction1026.relations reduction1026.input reduction1026.output := by lin_cert using reduction1026.terms
theorem substitutionProof1026 : IsMapEvaluation generatorImages reduction1026.relations [149] reduction1026.output := by lin_cert using reduction1026.terms
def map_16_93 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1056 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1056 : InImage map_16_93 image1056 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1056 : Bundle := named_bundle% "RealMapCertificates/relations/basis1056.json"
theorem reductionProof1056 : EqualModuloRelations reduction1056.relations reduction1056.input reduction1056.output := by lin_cert using reduction1056.terms
theorem substitutionProof1056 : IsMapEvaluation generatorImages reduction1056.relations [154] reduction1056.output := by lin_cert using reduction1056.terms
def image1057 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1057 : InImage map_16_93 image1057 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1057 : Bundle := named_bundle% "RealMapCertificates/relations/basis1057.json"
theorem reductionProof1057 : EqualModuloRelations reduction1057.relations reduction1057.input reduction1057.output := by lin_cert using reduction1057.terms
theorem substitutionProof1057 : IsMapEvaluation generatorImages reduction1057.relations [9,13,13,13] reduction1057.output := by lin_cert using reduction1057.terms
def map_16_95 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1102 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1102 : InImage map_16_95 image1102 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1102 : Bundle := named_bundle% "RealMapCertificates/relations/basis1102.json"
theorem reductionProof1102 : EqualModuloRelations reduction1102.relations reduction1102.input reduction1102.output := by lin_cert using reduction1102.terms
theorem substitutionProof1102 : IsMapEvaluation generatorImages reduction1102.relations [160] reduction1102.output := by lin_cert using reduction1102.terms
def map_16_96 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1125 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1125 : InImage map_16_96 image1125 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1125 : Bundle := named_bundle% "RealMapCertificates/relations/basis1125.json"
theorem reductionProof1125 : EqualModuloRelations reduction1125.relations reduction1125.input reduction1125.output := by lin_cert using reduction1125.terms
theorem substitutionProof1125 : IsMapEvaluation generatorImages reduction1125.relations [162] reduction1125.output := by lin_cert using reduction1125.terms
def image1126 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1126 : InImage map_16_96 image1126 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1126 : Bundle := named_bundle% "RealMapCertificates/relations/basis1126.json"
theorem reductionProof1126 : EqualModuloRelations reduction1126.relations reduction1126.input reduction1126.output := by lin_cert using reduction1126.terms
theorem substitutionProof1126 : IsMapEvaluation generatorImages reduction1126.relations [13,13,13,13] reduction1126.output := by lin_cert using reduction1126.terms
def map_16_98 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1171 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1171 : InImage map_16_98 image1171 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1171 : Bundle := named_bundle% "RealMapCertificates/relations/basis1171.json"
theorem reductionProof1171 : EqualModuloRelations reduction1171.relations reduction1171.input reduction1171.output := by lin_cert using reduction1171.terms
theorem substitutionProof1171 : IsMapEvaluation generatorImages reduction1171.relations [166] reduction1171.output := by lin_cert using reduction1171.terms
def map_16_99 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1200 : InImage map_16_99 image1200 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1200 : Bundle := named_bundle% "RealMapCertificates/relations/basis1200.json"
theorem reductionProof1200 : EqualModuloRelations reduction1200.relations reduction1200.input reduction1200.output := by lin_cert using reduction1200.terms
theorem substitutionProof1200 : IsMapEvaluation generatorImages reduction1200.relations [17,80] reduction1200.output := by lin_cert using reduction1200.terms
def image1201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1201 : InImage map_16_99 image1201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1201 : Bundle := named_bundle% "RealMapCertificates/relations/basis1201.json"
theorem reductionProof1201 : EqualModuloRelations reduction1201.relations reduction1201.input reduction1201.output := by lin_cert using reduction1201.terms
theorem substitutionProof1201 : IsMapEvaluation generatorImages reduction1201.relations [0,167] reduction1201.output := by lin_cert using reduction1201.terms
def map_16_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1225 : InImage map_16_100 image1225 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1225 : Bundle := named_bundle% "RealMapCertificates/relations/basis1225.json"
theorem reductionProof1225 : EqualModuloRelations reduction1225.relations reduction1225.input reduction1225.output := by lin_cert using reduction1225.terms
theorem substitutionProof1225 : IsMapEvaluation generatorImages reduction1225.relations [0,172] reduction1225.output := by lin_cert using reduction1225.terms
def map_16_101 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image1255 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1255 : InImage map_16_101 image1255 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1255 : Bundle := named_bundle% "RealMapCertificates/relations/basis1255.json"
theorem reductionProof1255 : EqualModuloRelations reduction1255.relations reduction1255.input reduction1255.output := by lin_cert using reduction1255.terms
theorem substitutionProof1255 : IsMapEvaluation generatorImages reduction1255.relations [180] reduction1255.output := by lin_cert using reduction1255.terms
def image1256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1256 : InImage map_16_101 image1256 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1256 : Bundle := named_bundle% "RealMapCertificates/relations/basis1256.json"
theorem reductionProof1256 : EqualModuloRelations reduction1256.relations reduction1256.input reduction1256.output := by lin_cert using reduction1256.terms
theorem substitutionProof1256 : IsMapEvaluation generatorImages reduction1256.relations [1,172] reduction1256.output := by lin_cert using reduction1256.terms
def image1257 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1257 : InImage map_16_101 image1257 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1257 : Bundle := named_bundle% "RealMapCertificates/relations/basis1257.json"
theorem reductionProof1257 : EqualModuloRelations reduction1257.relations reduction1257.input reduction1257.output := by lin_cert using reduction1257.terms
theorem substitutionProof1257 : IsMapEvaluation generatorImages reduction1257.relations [0,0,0,169] reduction1257.output := by lin_cert using reduction1257.terms
def map_16_102 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1294 : InImage map_16_102 image1294 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1294 : Bundle := named_bundle% "RealMapCertificates/relations/basis1294.json"
theorem reductionProof1294 : EqualModuloRelations reduction1294.relations reduction1294.input reduction1294.output := by lin_cert using reduction1294.terms
theorem substitutionProof1294 : IsMapEvaluation generatorImages reduction1294.relations [20,80] reduction1294.output := by lin_cert using reduction1294.terms
def image1295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1295 : InImage map_16_102 image1295 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1295 : Bundle := named_bundle% "RealMapCertificates/relations/basis1295.json"
theorem reductionProof1295 : EqualModuloRelations reduction1295.relations reduction1295.input reduction1295.output := by lin_cert using reduction1295.terms
theorem substitutionProof1295 : IsMapEvaluation generatorImages reduction1295.relations [13,13,52] reduction1295.output := by lin_cert using reduction1295.terms
def image1296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1296 : InImage map_16_102 image1296 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1296 : Bundle := named_bundle% "RealMapCertificates/relations/basis1296.json"
theorem reductionProof1296 : EqualModuloRelations reduction1296.relations reduction1296.input reduction1296.output := by lin_cert using reduction1296.terms
theorem substitutionProof1296 : IsMapEvaluation generatorImages reduction1296.relations [0,0,176] reduction1296.output := by lin_cert using reduction1296.terms
def map_16_104 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1351 : InImage map_16_104 image1351 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1351 : Bundle := named_bundle% "RealMapCertificates/relations/basis1351.json"
theorem reductionProof1351 : EqualModuloRelations reduction1351.relations reduction1351.input reduction1351.output := by lin_cert using reduction1351.terms
theorem substitutionProof1351 : IsMapEvaluation generatorImages reduction1351.relations [194] reduction1351.output := by lin_cert using reduction1351.terms
def map_16_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1393 : InImage map_16_105 image1393 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1393 : Bundle := named_bundle% "RealMapCertificates/relations/basis1393.json"
theorem reductionProof1393 : EqualModuloRelations reduction1393.relations reduction1393.input reduction1393.output := by lin_cert using reduction1393.terms
theorem substitutionProof1393 : IsMapEvaluation generatorImages reduction1393.relations [22,80] reduction1393.output := by lin_cert using reduction1393.terms
def map_16_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1421 : InImage map_16_106 image1421 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1421 : Bundle := named_bundle% "RealMapCertificates/relations/basis1421.json"
theorem reductionProof1421 : EqualModuloRelations reduction1421.relations reduction1421.input reduction1421.output := by lin_cert using reduction1421.terms
theorem substitutionProof1421 : IsMapEvaluation generatorImages reduction1421.relations [0,0,30,69] reduction1421.output := by lin_cert using reduction1421.terms
def image1422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1422 : InImage map_16_106 image1422 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1422 : Bundle := named_bundle% "RealMapCertificates/relations/basis1422.json"
theorem reductionProof1422 : EqualModuloRelations reduction1422.relations reduction1422.input reduction1422.output := by lin_cert using reduction1422.terms
theorem substitutionProof1422 : IsMapEvaluation generatorImages reduction1422.relations [0,0,0,0,187] reduction1422.output := by lin_cert using reduction1422.terms
def map_16_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1458 : InImage map_16_107 image1458 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1458 : Bundle := named_bundle% "RealMapCertificates/relations/basis1458.json"
theorem reductionProof1458 : EqualModuloRelations reduction1458.relations reduction1458.input reduction1458.output := by lin_cert using reduction1458.terms
theorem substitutionProof1458 : IsMapEvaluation generatorImages reduction1458.relations [0,0,0,0,0,188] reduction1458.output := by lin_cert using reduction1458.terms
def map_16_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1497 : InImage map_16_108 image1497 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1497 : Bundle := named_bundle% "RealMapCertificates/relations/basis1497.json"
theorem reductionProof1497 : EqualModuloRelations reduction1497.relations reduction1497.input reduction1497.output := by lin_cert using reduction1497.terms
theorem substitutionProof1497 : IsMapEvaluation generatorImages reduction1497.relations [23,89] reduction1497.output := by lin_cert using reduction1497.terms
def map_16_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1565 : InImage map_16_110 image1565 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1565 : Bundle := named_bundle% "RealMapCertificates/relations/basis1565.json"
theorem reductionProof1565 : EqualModuloRelations reduction1565.relations reduction1565.input reduction1565.output := by lin_cert using reduction1565.terms
theorem substitutionProof1565 : IsMapEvaluation generatorImages reduction1565.relations [220] reduction1565.output := by lin_cert using reduction1565.terms
def map_16_111 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1614 : InImage map_16_111 image1614 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1614 : Bundle := named_bundle% "RealMapCertificates/relations/basis1614.json"
theorem reductionProof1614 : EqualModuloRelations reduction1614.relations reduction1614.input reduction1614.output := by lin_cert using reduction1614.terms
theorem substitutionProof1614 : IsMapEvaluation generatorImages reduction1614.relations [41,69] reduction1614.output := by lin_cert using reduction1614.terms
def image1615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1615 : InImage map_16_111 image1615 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1615 : Bundle := named_bundle% "RealMapCertificates/relations/basis1615.json"
theorem reductionProof1615 : EqualModuloRelations reduction1615.relations reduction1615.input reduction1615.output := by lin_cert using reduction1615.terms
theorem substitutionProof1615 : IsMapEvaluation generatorImages reduction1615.relations [23,101] reduction1615.output := by lin_cert using reduction1615.terms
def image1616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1616 : InImage map_16_111 image1616 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1616 : Bundle := named_bundle% "RealMapCertificates/relations/basis1616.json"
theorem reductionProof1616 : EqualModuloRelations reduction1616.relations reduction1616.input reduction1616.output := by lin_cert using reduction1616.terms
theorem substitutionProof1616 : IsMapEvaluation generatorImages reduction1616.relations [1,215] reduction1616.output := by lin_cert using reduction1616.terms
def map_16_112 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1644 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1644 : InImage map_16_112 image1644 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1644 : Bundle := named_bundle% "RealMapCertificates/relations/basis1644.json"
theorem reductionProof1644 : EqualModuloRelations reduction1644.relations reduction1644.input reduction1644.output := by lin_cert using reduction1644.terms
theorem substitutionProof1644 : IsMapEvaluation generatorImages reduction1644.relations [0,226] reduction1644.output := by lin_cert using reduction1644.terms
def map_16_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1684 : InImage map_16_113 image1684 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1684 : Bundle := named_bundle% "RealMapCertificates/relations/basis1684.json"
theorem reductionProof1684 : EqualModuloRelations reduction1684.relations reduction1684.input reduction1684.output := by lin_cert using reduction1684.terms
theorem substitutionProof1684 : IsMapEvaluation generatorImages reduction1684.relations [0,0,0,0,0,0,209] reduction1684.output := by lin_cert using reduction1684.terms
def map_16_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1753 : InImage map_16_115 image1753 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1753 : Bundle := named_bundle% "RealMapCertificates/relations/basis1753.json"
theorem reductionProof1753 : EqualModuloRelations reduction1753.relations reduction1753.input reduction1753.output := by lin_cert using reduction1753.terms
theorem substitutionProof1753 : IsMapEvaluation generatorImages reduction1753.relations [2,226] reduction1753.output := by lin_cert using reduction1753.terms
def map_16_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1788 : InImage map_16_116 image1788 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1788 : Bundle := named_bundle% "RealMapCertificates/relations/basis1788.json"
theorem reductionProof1788 : EqualModuloRelations reduction1788.relations reduction1788.input reduction1788.output := by lin_cert using reduction1788.terms
theorem substitutionProof1788 : IsMapEvaluation generatorImages reduction1788.relations [13,151] reduction1788.output := by lin_cert using reduction1788.terms
def map_16_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1835 : InImage map_16_117 image1835 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1835 : Bundle := named_bundle% "RealMapCertificates/relations/basis1835.json"
theorem reductionProof1835 : EqualModuloRelations reduction1835.relations reduction1835.input reduction1835.output := by lin_cert using reduction1835.terms
theorem substitutionProof1835 : IsMapEvaluation generatorImages reduction1835.relations [254] reduction1835.output := by lin_cert using reduction1835.terms
def map_16_118 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1864 : InImage map_16_118 image1864 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1864 : Bundle := named_bundle% "RealMapCertificates/relations/basis1864.json"
theorem reductionProof1864 : EqualModuloRelations reduction1864.relations reduction1864.input reduction1864.output := by lin_cert using reduction1864.terms
theorem substitutionProof1864 : IsMapEvaluation generatorImages reduction1864.relations [50,69] reduction1864.output := by lin_cert using reduction1864.terms
def image1865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1865 : InImage map_16_118 image1865 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1865 : Bundle := named_bundle% "RealMapCertificates/relations/basis1865.json"
theorem reductionProof1865 : EqualModuloRelations reduction1865.relations reduction1865.input reduction1865.output := by lin_cert using reduction1865.terms
theorem substitutionProof1865 : IsMapEvaluation generatorImages reduction1865.relations [13,13,83] reduction1865.output := by lin_cert using reduction1865.terms
def image1866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1866 : InImage map_16_118 image1866 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1866 : Bundle := named_bundle% "RealMapCertificates/relations/basis1866.json"
theorem reductionProof1866 : EqualModuloRelations reduction1866.relations reduction1866.input reduction1866.output := by lin_cert using reduction1866.terms
theorem substitutionProof1866 : IsMapEvaluation generatorImages reduction1866.relations [0,255] reduction1866.output := by lin_cert using reduction1866.terms
def map_16_120 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1951 : InImage map_16_120 image1951 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1951 : Bundle := named_bundle% "RealMapCertificates/relations/basis1951.json"
theorem reductionProof1951 : EqualModuloRelations reduction1951.relations reduction1951.input reduction1951.output := by lin_cert using reduction1951.terms
theorem substitutionProof1951 : IsMapEvaluation generatorImages reduction1951.relations [8,187] reduction1951.output := by lin_cert using reduction1951.terms
def map_16_121 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1987 : InImage map_16_121 image1987 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1987 : Bundle := named_bundle% "RealMapCertificates/relations/basis1987.json"
theorem reductionProof1987 : EqualModuloRelations reduction1987.relations reduction1987.input reduction1987.output := by lin_cert using reduction1987.terms
theorem substitutionProof1987 : IsMapEvaluation generatorImages reduction1987.relations [56,69] reduction1987.output := by lin_cert using reduction1987.terms
def image1988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1988 : InImage map_16_121 image1988 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1988 : Bundle := named_bundle% "RealMapCertificates/relations/basis1988.json"
theorem reductionProof1988 : EqualModuloRelations reduction1988.relations reduction1988.input reduction1988.output := by lin_cert using reduction1988.terms
theorem substitutionProof1988 : IsMapEvaluation generatorImages reduction1988.relations [0,266] reduction1988.output := by lin_cert using reduction1988.terms
def image1989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1989 : InImage map_16_121 image1989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1989 : Bundle := named_bundle% "RealMapCertificates/relations/basis1989.json"
theorem reductionProof1989 : EqualModuloRelations reduction1989.relations reduction1989.input reduction1989.output := by lin_cert using reduction1989.terms
theorem substitutionProof1989 : IsMapEvaluation generatorImages reduction1989.relations [0,8,188] reduction1989.output := by lin_cert using reduction1989.terms
def map_16_122 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2028 : InImage map_16_122 image2028 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2028 : Bundle := named_bundle% "RealMapCertificates/relations/basis2028.json"
theorem reductionProof2028 : EqualModuloRelations reduction2028.relations reduction2028.input reduction2028.output := by lin_cert using reduction2028.terms
theorem substitutionProof2028 : IsMapEvaluation generatorImages reduction2028.relations [0,0,267] reduction2028.output := by lin_cert using reduction2028.terms
def map_16_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2072 : InImage map_16_123 image2072 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2072 : Bundle := named_bundle% "RealMapCertificates/relations/basis2072.json"
theorem reductionProof2072 : EqualModuloRelations reduction2072.relations reduction2072.input reduction2072.output := by lin_cert using reduction2072.terms
theorem substitutionProof2072 : IsMapEvaluation generatorImages reduction2072.relations [8,201] reduction2072.output := by lin_cert using reduction2072.terms
def image2073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2073 : InImage map_16_123 image2073 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2073 : Bundle := named_bundle% "RealMapCertificates/relations/basis2073.json"
theorem reductionProof2073 : EqualModuloRelations reduction2073.relations reduction2073.input reduction2073.output := by lin_cert using reduction2073.terms
theorem substitutionProof2073 : IsMapEvaluation generatorImages reduction2073.relations [1,5,209] reduction2073.output := by lin_cert using reduction2073.terms
def map_16_124 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2108 : InImage map_16_124 image2108 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2108 : Bundle := named_bundle% "RealMapCertificates/relations/basis2108.json"
theorem reductionProof2108 : EqualModuloRelations reduction2108.relations reduction2108.input reduction2108.output := by lin_cert using reduction2108.terms
theorem substitutionProof2108 : IsMapEvaluation generatorImages reduction2108.relations [9,23,75] reduction2108.output := by lin_cert using reduction2108.terms
def image2109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2109 : InImage map_16_124 image2109 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2109 : Bundle := named_bundle% "RealMapCertificates/relations/basis2109.json"
theorem reductionProof2109 : EqualModuloRelations reduction2109.relations reduction2109.input reduction2109.output := by lin_cert using reduction2109.terms
theorem substitutionProof2109 : IsMapEvaluation generatorImages reduction2109.relations [0,284] reduction2109.output := by lin_cert using reduction2109.terms
def image2110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2110 : InImage map_16_124 image2110 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2110 : Bundle := named_bundle% "RealMapCertificates/relations/basis2110.json"
theorem reductionProof2110 : EqualModuloRelations reduction2110.relations reduction2110.input reduction2110.output := by lin_cert using reduction2110.terms
theorem substitutionProof2110 : IsMapEvaluation generatorImages reduction2110.relations [0,9,188] reduction2110.output := by lin_cert using reduction2110.terms
def map_16_125 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2151 : InImage map_16_125 image2151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2151 : Bundle := named_bundle% "RealMapCertificates/relations/basis2151.json"
theorem reductionProof2151 : EqualModuloRelations reduction2151.relations reduction2151.input reduction2151.output := by lin_cert using reduction2151.terms
theorem substitutionProof2151 : IsMapEvaluation generatorImages reduction2151.relations [0,0,285] reduction2151.output := by lin_cert using reduction2151.terms
def map_16_126 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2203 : InImage map_16_126 image2203 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2203 : Bundle := named_bundle% "RealMapCertificates/relations/basis2203.json"
theorem reductionProof2203 : EqualModuloRelations reduction2203.relations reduction2203.input reduction2203.output := by lin_cert using reduction2203.terms
theorem substitutionProof2203 : IsMapEvaluation generatorImages reduction2203.relations [303] reduction2203.output := by lin_cert using reduction2203.terms
def image2204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2204 : InImage map_16_126 image2204 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2204 : Bundle := named_bundle% "RealMapCertificates/relations/basis2204.json"
theorem reductionProof2204 : EqualModuloRelations reduction2204.relations reduction2204.input reduction2204.output := by lin_cert using reduction2204.terms
theorem substitutionProof2204 : IsMapEvaluation generatorImages reduction2204.relations [302] reduction2204.output := by lin_cert using reduction2204.terms
def image2205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2205 : InImage map_16_126 image2205 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2205 : Bundle := named_bundle% "RealMapCertificates/relations/basis2205.json"
theorem reductionProof2205 : EqualModuloRelations reduction2205.relations reduction2205.input reduction2205.output := by lin_cert using reduction2205.terms
theorem substitutionProof2205 : IsMapEvaluation generatorImages reduction2205.relations [8,212] reduction2205.output := by lin_cert using reduction2205.terms
def image2206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2206 : InImage map_16_126 image2206 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2206 : Bundle := named_bundle% "RealMapCertificates/relations/basis2206.json"
theorem reductionProof2206 : EqualModuloRelations reduction2206.relations reduction2206.input reduction2206.output := by lin_cert using reduction2206.terms
theorem substitutionProof2206 : IsMapEvaluation generatorImages reduction2206.relations [0,0,59,69] reduction2206.output := by lin_cert using reduction2206.terms
def map_16_127 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2244 : InImage map_16_127 image2244 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2244 : Bundle := named_bundle% "RealMapCertificates/relations/basis2244.json"
theorem reductionProof2244 : EqualModuloRelations reduction2244.relations reduction2244.input reduction2244.output := by lin_cert using reduction2244.terms
theorem substitutionProof2244 : IsMapEvaluation generatorImages reduction2244.relations [13,23,75] reduction2244.output := by lin_cert using reduction2244.terms
def image2245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2245 : InImage map_16_127 image2245 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2245 : Bundle := named_bundle% "RealMapCertificates/relations/basis2245.json"
theorem reductionProof2245 : EqualModuloRelations reduction2245.relations reduction2245.input reduction2245.output := by lin_cert using reduction2245.terms
theorem substitutionProof2245 : IsMapEvaluation generatorImages reduction2245.relations [1,293] reduction2245.output := by lin_cert using reduction2245.terms
def image2246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2246 : InImage map_16_127 image2246 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2246 : Bundle := named_bundle% "RealMapCertificates/relations/basis2246.json"
theorem reductionProof2246 : EqualModuloRelations reduction2246.relations reduction2246.input reduction2246.output := by lin_cert using reduction2246.terms
theorem substitutionProof2246 : IsMapEvaluation generatorImages reduction2246.relations [0,304] reduction2246.output := by lin_cert using reduction2246.terms
def image2247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2247 : InImage map_16_127 image2247 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2247 : Bundle := named_bundle% "RealMapCertificates/relations/basis2247.json"
theorem reductionProof2247 : EqualModuloRelations reduction2247.relations reduction2247.input reduction2247.output := by lin_cert using reduction2247.terms
theorem substitutionProof2247 : IsMapEvaluation generatorImages reduction2247.relations [0,13,188] reduction2247.output := by lin_cert using reduction2247.terms
end RealMapCertificates
