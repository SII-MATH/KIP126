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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 107 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 134 => []
  | 181 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 212 => []
  | 250 => []
  | 261 => []
  | 266 => []
  | 267 => []
  | 285 => []
  | 286 => []
  | 293 => []
  | 306 => []
  | 311 => []
  | 312 => []
  | 314 => []
  | 318 => []
  | 319 => []
  | 324 => []
  | 328 => []
  | 333 => []
  | 335 => []
  | 337 => []
  | 338 => []
  | 348 => []
  | 349 => []
  | 359 => []
  | 360 => []
  | 367 => []
  | 369 => []
  | 385 => []
  | 408 => []
  | 418 => []
  | 422 => []
  | 424 => []
  | 425 => []
  | 437 => []
  | 438 => []
  | 439 => []
  | 440 => []
  | 448 => []
  | 449 => []
  | 473 => []
  | 475 => []
  | 481 => []
  | 482 => []
  | 484 => []
  | 494 => []
  | 495 => []
  | 511 => []
  | 533 => []
  | 540 => []
  | 552 => []
  | 562 => []
  | 575 => []
  | 589 => []
  | 604 => []
  | 613 => []
  | 618 => []
  | 629 => []
  | 630 => []
  | 648 => []
  | 649 => []
  | 650 => []
  | 669 => []
  | 677 => []
  | _ => []
def map_16_128 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2291 : InImage map_16_128 image2291 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2291 : Bundle := named_bundle% "RealMapCertificates/relations/basis2291.json"
theorem reductionProof2291 : EqualModuloRelations reduction2291.relations reduction2291.input reduction2291.output := by lin_cert using reduction2291.terms
theorem substitutionProof2291 : IsMapEvaluation generatorImages reduction2291.relations [318] reduction2291.output := by lin_cert using reduction2291.terms
def image2292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2292 : InImage map_16_128 image2292 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2292 : Bundle := named_bundle% "RealMapCertificates/relations/basis2292.json"
theorem reductionProof2292 : EqualModuloRelations reduction2292.relations reduction2292.input reduction2292.output := by lin_cert using reduction2292.terms
theorem substitutionProof2292 : IsMapEvaluation generatorImages reduction2292.relations [3,266] reduction2292.output := by lin_cert using reduction2292.terms
def image2293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2293 : InImage map_16_128 image2293 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2293 : Bundle := named_bundle% "RealMapCertificates/relations/basis2293.json"
theorem reductionProof2293 : EqualModuloRelations reduction2293.relations reduction2293.input reduction2293.output := by lin_cert using reduction2293.terms
theorem substitutionProof2293 : IsMapEvaluation generatorImages reduction2293.relations [0,2,286] reduction2293.output := by lin_cert using reduction2293.terms
def image2294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2294 : InImage map_16_128 image2294 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2294 : Bundle := named_bundle% "RealMapCertificates/relations/basis2294.json"
theorem reductionProof2294 : EqualModuloRelations reduction2294.relations reduction2294.input reduction2294.output := by lin_cert using reduction2294.terms
theorem substitutionProof2294 : IsMapEvaluation generatorImages reduction2294.relations [0,0,306] reduction2294.output := by lin_cert using reduction2294.terms
def map_16_129 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2360 : InImage map_16_129 image2360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2360 : Bundle := named_bundle% "RealMapCertificates/relations/basis2360.json"
theorem reductionProof2360 : EqualModuloRelations reduction2360.relations reduction2360.input reduction2360.output := by lin_cert using reduction2360.terms
theorem substitutionProof2360 : IsMapEvaluation generatorImages reduction2360.relations [9,212] reduction2360.output := by lin_cert using reduction2360.terms
def image2361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2361 : InImage map_16_129 image2361 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2361 : Bundle := named_bundle% "RealMapCertificates/relations/basis2361.json"
theorem reductionProof2361 : EqualModuloRelations reduction2361.relations reduction2361.input reduction2361.output := by lin_cert using reduction2361.terms
theorem substitutionProof2361 : IsMapEvaluation generatorImages reduction2361.relations [0,3,267] reduction2361.output := by lin_cert using reduction2361.terms
def map_16_130 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2414 : InImage map_16_130 image2414 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2414 : Bundle := named_bundle% "RealMapCertificates/relations/basis2414.json"
theorem reductionProof2414 : EqualModuloRelations reduction2414.relations reduction2414.input reduction2414.output := by lin_cert using reduction2414.terms
theorem substitutionProof2414 : IsMapEvaluation generatorImages reduction2414.relations [2,13,188] reduction2414.output := by lin_cert using reduction2414.terms
def image2415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2415 : InImage map_16_130 image2415 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2415 : Bundle := named_bundle% "RealMapCertificates/relations/basis2415.json"
theorem reductionProof2415 : EqualModuloRelations reduction2415.relations reduction2415.input reduction2415.output := by lin_cert using reduction2415.terms
theorem substitutionProof2415 : IsMapEvaluation generatorImages reduction2415.relations [0,328] reduction2415.output := by lin_cert using reduction2415.terms
def map_16_131 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2467 : InImage map_16_131 image2467 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2467 : Bundle := named_bundle% "RealMapCertificates/relations/basis2467.json"
theorem reductionProof2467 : EqualModuloRelations reduction2467.relations reduction2467.input reduction2467.output := by lin_cert using reduction2467.terms
theorem substitutionProof2467 : IsMapEvaluation generatorImages reduction2467.relations [348] reduction2467.output := by lin_cert using reduction2467.terms
def image2468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2468 : InImage map_16_131 image2468 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2468 : Bundle := named_bundle% "RealMapCertificates/relations/basis2468.json"
theorem reductionProof2468 : EqualModuloRelations reduction2468.relations reduction2468.input reduction2468.output := by lin_cert using reduction2468.terms
theorem substitutionProof2468 : IsMapEvaluation generatorImages reduction2468.relations [1,328] reduction2468.output := by lin_cert using reduction2468.terms
def map_16_132 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2547 : InImage map_16_132 image2547 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2547 : Bundle := named_bundle% "RealMapCertificates/relations/basis2547.json"
theorem reductionProof2547 : EqualModuloRelations reduction2547.relations reduction2547.input reduction2547.output := by lin_cert using reduction2547.terms
theorem substitutionProof2547 : IsMapEvaluation generatorImages reduction2547.relations [359] reduction2547.output := by lin_cert using reduction2547.terms
def image2548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2548 : InImage map_16_132 image2548 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2548 : Bundle := named_bundle% "RealMapCertificates/relations/basis2548.json"
theorem reductionProof2548 : EqualModuloRelations reduction2548.relations reduction2548.input reduction2548.output := by lin_cert using reduction2548.terms
theorem substitutionProof2548 : IsMapEvaluation generatorImages reduction2548.relations [13,212] reduction2548.output := by lin_cert using reduction2548.terms
def image2549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2549 : InImage map_16_132 image2549 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2549 : Bundle := named_bundle% "RealMapCertificates/relations/basis2549.json"
theorem reductionProof2549 : EqualModuloRelations reduction2549.relations reduction2549.input reduction2549.output := by lin_cert using reduction2549.terms
theorem substitutionProof2549 : IsMapEvaluation generatorImages reduction2549.relations [0,349] reduction2549.output := by lin_cert using reduction2549.terms
def image2550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2550 : InImage map_16_132 image2550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2550 : Bundle := named_bundle% "RealMapCertificates/relations/basis2550.json"
theorem reductionProof2550 : EqualModuloRelations reduction2550.relations reduction2550.input reduction2550.output := by lin_cert using reduction2550.terms
theorem substitutionProof2550 : IsMapEvaluation generatorImages reduction2550.relations [0,3,285] reduction2550.output := by lin_cert using reduction2550.terms
def map_16_133 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image2609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2609 : InImage map_16_133 image2609 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction2609 : Bundle := named_bundle% "RealMapCertificates/relations/basis2609.json"
theorem reductionProof2609 : EqualModuloRelations reduction2609.relations reduction2609.input reduction2609.output := by lin_cert using reduction2609.terms
theorem substitutionProof2609 : IsMapEvaluation generatorImages reduction2609.relations [369] reduction2609.output := by lin_cert using reduction2609.terms
def image2610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2610 : InImage map_16_133 image2610 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction2610 : Bundle := named_bundle% "RealMapCertificates/relations/basis2610.json"
theorem reductionProof2610 : EqualModuloRelations reduction2610.relations reduction2610.input reduction2610.output := by lin_cert using reduction2610.terms
theorem substitutionProof2610 : IsMapEvaluation generatorImages reduction2610.relations [13,13,134] reduction2610.output := by lin_cert using reduction2610.terms
def image2611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2611 : InImage map_16_133 image2611 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction2611 : Bundle := named_bundle% "RealMapCertificates/relations/basis2611.json"
theorem reductionProof2611 : EqualModuloRelations reduction2611.relations reduction2611.input reduction2611.output := by lin_cert using reduction2611.terms
theorem substitutionProof2611 : IsMapEvaluation generatorImages reduction2611.relations [2,328] reduction2611.output := by lin_cert using reduction2611.terms
def image2612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2612 : InImage map_16_133 image2612 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction2612 : Bundle := named_bundle% "RealMapCertificates/relations/basis2612.json"
theorem reductionProof2612 : EqualModuloRelations reduction2612.relations reduction2612.input reduction2612.output := by lin_cert using reduction2612.terms
theorem substitutionProof2612 : IsMapEvaluation generatorImages reduction2612.relations [1,349] reduction2612.output := by lin_cert using reduction2612.terms
def image2613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2613 : InImage map_16_133 image2613 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction2613 : Bundle := named_bundle% "RealMapCertificates/relations/basis2613.json"
theorem reductionProof2613 : EqualModuloRelations reduction2613.relations reduction2613.input reduction2613.output := by lin_cert using reduction2613.terms
theorem substitutionProof2613 : IsMapEvaluation generatorImages reduction2613.relations [0,0,0,0,0,0,312] reduction2613.output := by lin_cert using reduction2613.terms
def map_16_134 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2674 : InImage map_16_134 image2674 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2674 : Bundle := named_bundle% "RealMapCertificates/relations/basis2674.json"
theorem reductionProof2674 : EqualModuloRelations reduction2674.relations reduction2674.input reduction2674.output := by lin_cert using reduction2674.terms
theorem substitutionProof2674 : IsMapEvaluation generatorImages reduction2674.relations [8,250] reduction2674.output := by lin_cert using reduction2674.terms
def image2675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2675 : InImage map_16_134 image2675 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2675 : Bundle := named_bundle% "RealMapCertificates/relations/basis2675.json"
theorem reductionProof2675 : EqualModuloRelations reduction2675.relations reduction2675.input reduction2675.output := by lin_cert using reduction2675.terms
theorem substitutionProof2675 : IsMapEvaluation generatorImages reduction2675.relations [1,360] reduction2675.output := by lin_cert using reduction2675.terms
def map_16_136 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2837 : InImage map_16_136 image2837 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2837 : Bundle := named_bundle% "RealMapCertificates/relations/basis2837.json"
theorem reductionProof2837 : EqualModuloRelations reduction2837.relations reduction2837.input reduction2837.output := by lin_cert using reduction2837.terms
theorem substitutionProof2837 : IsMapEvaluation generatorImages reduction2837.relations [7,266] reduction2837.output := by lin_cert using reduction2837.terms
def image2838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2838 : InImage map_16_136 image2838 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2838 : Bundle := named_bundle% "RealMapCertificates/relations/basis2838.json"
theorem reductionProof2838 : EqualModuloRelations reduction2838.relations reduction2838.input reduction2838.output := by lin_cert using reduction2838.terms
theorem substitutionProof2838 : IsMapEvaluation generatorImages reduction2838.relations [3,3,267] reduction2838.output := by lin_cert using reduction2838.terms
def map_16_137 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2906 : InImage map_16_137 image2906 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2906 : Bundle := named_bundle% "RealMapCertificates/relations/basis2906.json"
theorem reductionProof2906 : EqualModuloRelations reduction2906.relations reduction2906.input reduction2906.output := by lin_cert using reduction2906.terms
theorem substitutionProof2906 : IsMapEvaluation generatorImages reduction2906.relations [422] reduction2906.output := by lin_cert using reduction2906.terms
def image2907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2907 : InImage map_16_137 image2907 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2907 : Bundle := named_bundle% "RealMapCertificates/relations/basis2907.json"
theorem reductionProof2907 : EqualModuloRelations reduction2907.relations reduction2907.input reduction2907.output := by lin_cert using reduction2907.terms
theorem substitutionProof2907 : IsMapEvaluation generatorImages reduction2907.relations [8,261] reduction2907.output := by lin_cert using reduction2907.terms
def image2908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2908 : InImage map_16_137 image2908 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2908 : Bundle := named_bundle% "RealMapCertificates/relations/basis2908.json"
theorem reductionProof2908 : EqualModuloRelations reduction2908.relations reduction2908.input reduction2908.output := by lin_cert using reduction2908.terms
theorem substitutionProof2908 : IsMapEvaluation generatorImages reduction2908.relations [0,7,267] reduction2908.output := by lin_cert using reduction2908.terms
def map_16_138 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2997 : InImage map_16_138 image2997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2997 : Bundle := named_bundle% "RealMapCertificates/relations/basis2997.json"
theorem reductionProof2997 : EqualModuloRelations reduction2997.relations reduction2997.input reduction2997.output := by lin_cert using reduction2997.terms
theorem substitutionProof2997 : IsMapEvaluation generatorImages reduction2997.relations [437] reduction2997.output := by lin_cert using reduction2997.terms
def image2998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2998 : InImage map_16_138 image2998 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2998 : Bundle := named_bundle% "RealMapCertificates/relations/basis2998.json"
theorem reductionProof2998 : EqualModuloRelations reduction2998.relations reduction2998.input reduction2998.output := by lin_cert using reduction2998.terms
theorem substitutionProof2998 : IsMapEvaluation generatorImages reduction2998.relations [23,189] reduction2998.output := by lin_cert using reduction2998.terms
def image2999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2999 : InImage map_16_138 image2999 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2999 : Bundle := named_bundle% "RealMapCertificates/relations/basis2999.json"
theorem reductionProof2999 : EqualModuloRelations reduction2999.relations reduction2999.input reduction2999.output := by lin_cert using reduction2999.terms
theorem substitutionProof2999 : IsMapEvaluation generatorImages reduction2999.relations [0,424] reduction2999.output := by lin_cert using reduction2999.terms
def map_16_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3072 : InImage map_16_139 image3072 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3072 : Bundle := named_bundle% "RealMapCertificates/relations/basis3072.json"
theorem reductionProof3072 : EqualModuloRelations reduction3072.relations reduction3072.input reduction3072.output := by lin_cert using reduction3072.terms
theorem substitutionProof3072 : IsMapEvaluation generatorImages reduction3072.relations [1,424] reduction3072.output := by lin_cert using reduction3072.terms
def image3073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3073 : InImage map_16_139 image3073 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3073 : Bundle := named_bundle% "RealMapCertificates/relations/basis3073.json"
theorem reductionProof3073 : EqualModuloRelations reduction3073.relations reduction3073.input reduction3073.output := by lin_cert using reduction3073.terms
theorem substitutionProof3073 : IsMapEvaluation generatorImages reduction3073.relations [0,438] reduction3073.output := by lin_cert using reduction3073.terms
def image3074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3074 : InImage map_16_139 image3074 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3074 : Bundle := named_bundle% "RealMapCertificates/relations/basis3074.json"
theorem reductionProof3074 : EqualModuloRelations reduction3074.relations reduction3074.input reduction3074.output := by lin_cert using reduction3074.terms
theorem substitutionProof3074 : IsMapEvaluation generatorImages reduction3074.relations [0,0,0,418] reduction3074.output := by lin_cert using reduction3074.terms
def map_16_140 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3145 : InImage map_16_140 image3145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3145 : Bundle := named_bundle% "RealMapCertificates/relations/basis3145.json"
theorem reductionProof3145 : EqualModuloRelations reduction3145.relations reduction3145.input reduction3145.output := by lin_cert using reduction3145.terms
theorem substitutionProof3145 : IsMapEvaluation generatorImages reduction3145.relations [9,261] reduction3145.output := by lin_cert using reduction3145.terms
def image3146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3146 : InImage map_16_140 image3146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3146 : Bundle := named_bundle% "RealMapCertificates/relations/basis3146.json"
theorem reductionProof3146 : EqualModuloRelations reduction3146.relations reduction3146.input reduction3146.output := by lin_cert using reduction3146.terms
theorem substitutionProof3146 : IsMapEvaluation generatorImages reduction3146.relations [1,438] reduction3146.output := by lin_cert using reduction3146.terms
def image3147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3147 : InImage map_16_140 image3147 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3147 : Bundle := named_bundle% "RealMapCertificates/relations/basis3147.json"
theorem reductionProof3147 : EqualModuloRelations reduction3147.relations reduction3147.input reduction3147.output := by lin_cert using reduction3147.terms
theorem substitutionProof3147 : IsMapEvaluation generatorImages reduction3147.relations [0,448] reduction3147.output := by lin_cert using reduction3147.terms
def image3148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3148 : InImage map_16_140 image3148 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3148 : Bundle := named_bundle% "RealMapCertificates/relations/basis3148.json"
theorem reductionProof3148 : EqualModuloRelations reduction3148.relations reduction3148.input reduction3148.output := by lin_cert using reduction3148.terms
theorem substitutionProof3148 : IsMapEvaluation generatorImages reduction3148.relations [0,0,440] reduction3148.output := by lin_cert using reduction3148.terms
def image3149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3149 : InImage map_16_140 image3149 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3149 : Bundle := named_bundle% "RealMapCertificates/relations/basis3149.json"
theorem reductionProof3149 : EqualModuloRelations reduction3149.relations reduction3149.input reduction3149.output := by lin_cert using reduction3149.terms
theorem substitutionProof3149 : IsMapEvaluation generatorImages reduction3149.relations [0,0,439] reduction3149.output := by lin_cert using reduction3149.terms
def map_16_141 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3253 : InImage map_16_141 image3253 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3253 : Bundle := named_bundle% "RealMapCertificates/relations/basis3253.json"
theorem reductionProof3253 : EqualModuloRelations reduction3253.relations reduction3253.input reduction3253.output := by lin_cert using reduction3253.terms
theorem substitutionProof3253 : IsMapEvaluation generatorImages reduction3253.relations [473] reduction3253.output := by lin_cert using reduction3253.terms
def image3254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3254 : InImage map_16_141 image3254 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3254 : Bundle := named_bundle% "RealMapCertificates/relations/basis3254.json"
theorem reductionProof3254 : EqualModuloRelations reduction3254.relations reduction3254.input reduction3254.output := by lin_cert using reduction3254.terms
theorem substitutionProof3254 : IsMapEvaluation generatorImages reduction3254.relations [1,448] reduction3254.output := by lin_cert using reduction3254.terms
def image3255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3255 : InImage map_16_141 image3255 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3255 : Bundle := named_bundle% "RealMapCertificates/relations/basis3255.json"
theorem reductionProof3255 : EqualModuloRelations reduction3255.relations reduction3255.input reduction3255.output := by lin_cert using reduction3255.terms
theorem substitutionProof3255 : IsMapEvaluation generatorImages reduction3255.relations [0,67,107] reduction3255.output := by lin_cert using reduction3255.terms
def image3256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3256 : InImage map_16_141 image3256 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3256 : Bundle := named_bundle% "RealMapCertificates/relations/basis3256.json"
theorem reductionProof3256 : EqualModuloRelations reduction3256.relations reduction3256.input reduction3256.output := by lin_cert using reduction3256.terms
theorem substitutionProof3256 : IsMapEvaluation generatorImages reduction3256.relations [0,0,449] reduction3256.output := by lin_cert using reduction3256.terms
def map_16_142 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3321 : InImage map_16_142 image3321 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3321 : Bundle := named_bundle% "RealMapCertificates/relations/basis3321.json"
theorem reductionProof3321 : EqualModuloRelations reduction3321.relations reduction3321.input reduction3321.output := by lin_cert using reduction3321.terms
theorem substitutionProof3321 : IsMapEvaluation generatorImages reduction3321.relations [1,1,439] reduction3321.output := by lin_cert using reduction3321.terms
def image3322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3322 : InImage map_16_142 image3322 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3322 : Bundle := named_bundle% "RealMapCertificates/relations/basis3322.json"
theorem reductionProof3322 : EqualModuloRelations reduction3322.relations reduction3322.input reduction3322.output := by lin_cert using reduction3322.terms
theorem substitutionProof3322 : IsMapEvaluation generatorImages reduction3322.relations [0,0,68,107] reduction3322.output := by lin_cert using reduction3322.terms
def image3323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3323 : InImage map_16_142 image3323 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3323 : Bundle := named_bundle% "RealMapCertificates/relations/basis3323.json"
theorem reductionProof3323 : EqualModuloRelations reduction3323.relations reduction3323.input reduction3323.output := by lin_cert using reduction3323.terms
theorem substitutionProof3323 : IsMapEvaluation generatorImages reduction3323.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69] reduction3323.output := by lin_cert using reduction3323.terms
def map_16_143 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image3397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3397 : InImage map_16_143 image3397 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction3397 : Bundle := named_bundle% "RealMapCertificates/relations/basis3397.json"
theorem reductionProof3397 : EqualModuloRelations reduction3397.relations reduction3397.input reduction3397.output := by lin_cert using reduction3397.terms
theorem substitutionProof3397 : IsMapEvaluation generatorImages reduction3397.relations [494] reduction3397.output := by lin_cert using reduction3397.terms
def image3398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3398 : InImage map_16_143 image3398 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction3398 : Bundle := named_bundle% "RealMapCertificates/relations/basis3398.json"
theorem reductionProof3398 : EqualModuloRelations reduction3398.relations reduction3398.input reduction3398.output := by lin_cert using reduction3398.terms
theorem substitutionProof3398 : IsMapEvaluation generatorImages reduction3398.relations [13,261] reduction3398.output := by lin_cert using reduction3398.terms
def image3399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3399 : InImage map_16_143 image3399 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction3399 : Bundle := named_bundle% "RealMapCertificates/relations/basis3399.json"
theorem reductionProof3399 : EqualModuloRelations reduction3399.relations reduction3399.input reduction3399.output := by lin_cert using reduction3399.terms
theorem substitutionProof3399 : IsMapEvaluation generatorImages reduction3399.relations [0,481] reduction3399.output := by lin_cert using reduction3399.terms
def image3400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3400 : InImage map_16_143 image3400 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction3400 : Bundle := named_bundle% "RealMapCertificates/relations/basis3400.json"
theorem reductionProof3400 : EqualModuloRelations reduction3400.relations reduction3400.input reduction3400.output := by lin_cert using reduction3400.terms
theorem substitutionProof3400 : IsMapEvaluation generatorImages reduction3400.relations [0,69,112] reduction3400.output := by lin_cert using reduction3400.terms
def image3401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3401 : InImage map_16_143 image3401 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction3401 : Bundle := named_bundle% "RealMapCertificates/relations/basis3401.json"
theorem reductionProof3401 : EqualModuloRelations reduction3401.relations reduction3401.input reduction3401.output := by lin_cert using reduction3401.terms
theorem substitutionProof3401 : IsMapEvaluation generatorImages reduction3401.relations [0,2,439] reduction3401.output := by lin_cert using reduction3401.terms
def image3402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3402 : InImage map_16_143 image3402 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction3402 : Bundle := named_bundle% "RealMapCertificates/relations/basis3402.json"
theorem reductionProof3402 : EqualModuloRelations reduction3402.relations reduction3402.input reduction3402.output := by lin_cert using reduction3402.terms
theorem substitutionProof3402 : IsMapEvaluation generatorImages reduction3402.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3402.output := by lin_cert using reduction3402.terms
def map_16_144 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3498 : InImage map_16_144 image3498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3498 : Bundle := named_bundle% "RealMapCertificates/relations/basis3498.json"
theorem reductionProof3498 : EqualModuloRelations reduction3498.relations reduction3498.input reduction3498.output := by lin_cert using reduction3498.terms
theorem substitutionProof3498 : IsMapEvaluation generatorImages reduction3498.relations [0,495] reduction3498.output := by lin_cert using reduction3498.terms
def image3499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3499 : InImage map_16_144 image3499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3499 : Bundle := named_bundle% "RealMapCertificates/relations/basis3499.json"
theorem reductionProof3499 : EqualModuloRelations reduction3499.relations reduction3499.input reduction3499.output := by lin_cert using reduction3499.terms
theorem substitutionProof3499 : IsMapEvaluation generatorImages reduction3499.relations [0,0,482] reduction3499.output := by lin_cert using reduction3499.terms
def image3500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3500 : InImage map_16_144 image3500 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3500 : Bundle := named_bundle% "RealMapCertificates/relations/basis3500.json"
theorem reductionProof3500 : EqualModuloRelations reduction3500.relations reduction3500.input reduction3500.output := by lin_cert using reduction3500.terms
theorem substitutionProof3500 : IsMapEvaluation generatorImages reduction3500.relations [0,0,69,113] reduction3500.output := by lin_cert using reduction3500.terms
def image3501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3501 : InImage map_16_144 image3501 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3501 : Bundle := named_bundle% "RealMapCertificates/relations/basis3501.json"
theorem reductionProof3501 : EqualModuloRelations reduction3501.relations reduction3501.input reduction3501.output := by lin_cert using reduction3501.terms
theorem substitutionProof3501 : IsMapEvaluation generatorImages reduction3501.relations [0,0,0,475] reduction3501.output := by lin_cert using reduction3501.terms
def map_16_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3569 : InImage map_16_145 image3569 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3569 : Bundle := named_bundle% "RealMapCertificates/relations/basis3569.json"
theorem reductionProof3569 : EqualModuloRelations reduction3569.relations reduction3569.input reduction3569.output := by lin_cert using reduction3569.terms
theorem substitutionProof3569 : IsMapEvaluation generatorImages reduction3569.relations [7,328] reduction3569.output := by lin_cert using reduction3569.terms
def image3570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3570 : InImage map_16_145 image3570 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3570 : Bundle := named_bundle% "RealMapCertificates/relations/basis3570.json"
theorem reductionProof3570 : EqualModuloRelations reduction3570.relations reduction3570.input reduction3570.output := by lin_cert using reduction3570.terms
theorem substitutionProof3570 : IsMapEvaluation generatorImages reduction3570.relations [1,495] reduction3570.output := by lin_cert using reduction3570.terms
def map_16_146 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3644 : InImage map_16_146 image3644 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3644 : Bundle := named_bundle% "RealMapCertificates/relations/basis3644.json"
theorem reductionProof3644 : EqualModuloRelations reduction3644.relations reduction3644.input reduction3644.output := by lin_cert using reduction3644.terms
theorem substitutionProof3644 : IsMapEvaluation generatorImages reduction3644.relations [3,438] reduction3644.output := by lin_cert using reduction3644.terms
def image3645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3645 : InImage map_16_146 image3645 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3645 : Bundle := named_bundle% "RealMapCertificates/relations/basis3645.json"
theorem reductionProof3645 : EqualModuloRelations reduction3645.relations reduction3645.input reduction3645.output := by lin_cert using reduction3645.terms
theorem substitutionProof3645 : IsMapEvaluation generatorImages reduction3645.relations [0,8,64,69] reduction3645.output := by lin_cert using reduction3645.terms
def image3646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3646 : InImage map_16_146 image3646 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3646 : Bundle := named_bundle% "RealMapCertificates/relations/basis3646.json"
theorem reductionProof3646 : EqualModuloRelations reduction3646.relations reduction3646.input reduction3646.output := by lin_cert using reduction3646.terms
theorem substitutionProof3646 : IsMapEvaluation generatorImages reduction3646.relations [0,0,7,319] reduction3646.output := by lin_cert using reduction3646.terms
def image3647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3647 : InImage map_16_146 image3647 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3647 : Bundle := named_bundle% "RealMapCertificates/relations/basis3647.json"
theorem reductionProof3647 : EqualModuloRelations reduction3647.relations reduction3647.input reduction3647.output := by lin_cert using reduction3647.terms
theorem substitutionProof3647 : IsMapEvaluation generatorImages reduction3647.relations [0,0,0,0,484] reduction3647.output := by lin_cert using reduction3647.terms
def map_16_147 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3761 : InImage map_16_147 image3761 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3761 : Bundle := named_bundle% "RealMapCertificates/relations/basis3761.json"
theorem reductionProof3761 : EqualModuloRelations reduction3761.relations reduction3761.input reduction3761.output := by lin_cert using reduction3761.terms
theorem substitutionProof3761 : IsMapEvaluation generatorImages reduction3761.relations [0,0,8,312] reduction3761.output := by lin_cert using reduction3761.terms
def map_16_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3826 : InImage map_16_148 image3826 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3826 : Bundle := named_bundle% "RealMapCertificates/relations/basis3826.json"
theorem reductionProof3826 : EqualModuloRelations reduction3826.relations reduction3826.input reduction3826.output := by lin_cert using reduction3826.terms
theorem substitutionProof3826 : IsMapEvaluation generatorImages reduction3826.relations [0,0,0,0,0,7,311] reduction3826.output := by lin_cert using reduction3826.terms
def map_16_149 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3912 : InImage map_16_149 image3912 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3912 : Bundle := named_bundle% "RealMapCertificates/relations/basis3912.json"
theorem reductionProof3912 : EqualModuloRelations reduction3912.relations reduction3912.input reduction3912.output := by lin_cert using reduction3912.terms
theorem substitutionProof3912 : IsMapEvaluation generatorImages reduction3912.relations [552] reduction3912.output := by lin_cert using reduction3912.terms
def image3913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3913 : InImage map_16_149 image3913 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3913 : Bundle := named_bundle% "RealMapCertificates/relations/basis3913.json"
theorem reductionProof3913 : EqualModuloRelations reduction3913.relations reduction3913.input reduction3913.output := by lin_cert using reduction3913.terms
theorem substitutionProof3913 : IsMapEvaluation generatorImages reduction3913.relations [13,13,181] reduction3913.output := by lin_cert using reduction3913.terms
def image3914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3914 : InImage map_16_149 image3914 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3914 : Bundle := named_bundle% "RealMapCertificates/relations/basis3914.json"
theorem reductionProof3914 : EqualModuloRelations reduction3914.relations reduction3914.input reduction3914.output := by lin_cert using reduction3914.terms
theorem substitutionProof3914 : IsMapEvaluation generatorImages reduction3914.relations [0,8,69,72] reduction3914.output := by lin_cert using reduction3914.terms
def image3915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3915 : InImage map_16_149 image3915 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3915 : Bundle := named_bundle% "RealMapCertificates/relations/basis3915.json"
theorem reductionProof3915 : EqualModuloRelations reduction3915.relations reduction3915.input reduction3915.output := by lin_cert using reduction3915.terms
theorem substitutionProof3915 : IsMapEvaluation generatorImages reduction3915.relations [0,0,0,0,0,0,7,314] reduction3915.output := by lin_cert using reduction3915.terms
def map_16_150 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4017 : InImage map_16_150 image4017 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4017 : Bundle := named_bundle% "RealMapCertificates/relations/basis4017.json"
theorem reductionProof4017 : EqualModuloRelations reduction4017.relations reduction4017.input reduction4017.output := by lin_cert using reduction4017.terms
theorem substitutionProof4017 : IsMapEvaluation generatorImages reduction4017.relations [13,13,190] reduction4017.output := by lin_cert using reduction4017.terms
def image4018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4018 : InImage map_16_150 image4018 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4018 : Bundle := named_bundle% "RealMapCertificates/relations/basis4018.json"
theorem reductionProof4018 : EqualModuloRelations reduction4018.relations reduction4018.input reduction4018.output := by lin_cert using reduction4018.terms
theorem substitutionProof4018 : IsMapEvaluation generatorImages reduction4018.relations [0,0,8,337] reduction4018.output := by lin_cert using reduction4018.terms
def image4019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4019 : InImage map_16_150 image4019 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4019 : Bundle := named_bundle% "RealMapCertificates/relations/basis4019.json"
theorem reductionProof4019 : EqualModuloRelations reduction4019.relations reduction4019.input reduction4019.output := by lin_cert using reduction4019.terms
theorem substitutionProof4019 : IsMapEvaluation generatorImages reduction4019.relations [0,0,0,533] reduction4019.output := by lin_cert using reduction4019.terms
def map_16_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4108 : InImage map_16_151 image4108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4108 : Bundle := named_bundle% "RealMapCertificates/relations/basis4108.json"
theorem reductionProof4108 : EqualModuloRelations reduction4108.relations reduction4108.input reduction4108.output := by lin_cert using reduction4108.terms
theorem substitutionProof4108 : IsMapEvaluation generatorImages reduction4108.relations [0,0,0,540] reduction4108.output := by lin_cert using reduction4108.terms
def map_16_152 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4193 : InImage map_16_152 image4193 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4193 : Bundle := named_bundle% "RealMapCertificates/relations/basis4193.json"
theorem reductionProof4193 : EqualModuloRelations reduction4193.relations reduction4193.input reduction4193.output := by lin_cert using reduction4193.terms
theorem substitutionProof4193 : IsMapEvaluation generatorImages reduction4193.relations [7,7,267] reduction4193.output := by lin_cert using reduction4193.terms
def image4194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4194 : InImage map_16_152 image4194 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4194 : Bundle := named_bundle% "RealMapCertificates/relations/basis4194.json"
theorem reductionProof4194 : EqualModuloRelations reduction4194.relations reduction4194.input reduction4194.output := by lin_cert using reduction4194.terms
theorem substitutionProof4194 : IsMapEvaluation generatorImages reduction4194.relations [1,7,385] reduction4194.output := by lin_cert using reduction4194.terms
def image4195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4195 : InImage map_16_152 image4195 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4195 : Bundle := named_bundle% "RealMapCertificates/relations/basis4195.json"
theorem reductionProof4195 : EqualModuloRelations reduction4195.relations reduction4195.input reduction4195.output := by lin_cert using reduction4195.terms
theorem substitutionProof4195 : IsMapEvaluation generatorImages reduction4195.relations [0,8,69,79] reduction4195.output := by lin_cert using reduction4195.terms
def map_16_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4295 : InImage map_16_153 image4295 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4295 : Bundle := named_bundle% "RealMapCertificates/relations/basis4295.json"
theorem reductionProof4295 : EqualModuloRelations reduction4295.relations reduction4295.input reduction4295.output := by lin_cert using reduction4295.terms
theorem substitutionProof4295 : IsMapEvaluation generatorImages reduction4295.relations [0,0,8,69,80] reduction4295.output := by lin_cert using reduction4295.terms
def map_16_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4358 : InImage map_16_154 image4358 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4358 : Bundle := named_bundle% "RealMapCertificates/relations/basis4358.json"
theorem reductionProof4358 : EqualModuloRelations reduction4358.relations reduction4358.input reduction4358.output := by lin_cert using reduction4358.terms
theorem substitutionProof4358 : IsMapEvaluation generatorImages reduction4358.relations [13,335] reduction4358.output := by lin_cert using reduction4358.terms
def map_16_155 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4448 : InImage map_16_155 image4448 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4448 : Bundle := named_bundle% "RealMapCertificates/relations/basis4448.json"
theorem reductionProof4448 : EqualModuloRelations reduction4448.relations reduction4448.input reduction4448.output := by lin_cert using reduction4448.terms
theorem substitutionProof4448 : IsMapEvaluation generatorImages reduction4448.relations [604] reduction4448.output := by lin_cert using reduction4448.terms
def image4449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4449 : InImage map_16_155 image4449 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4449 : Bundle := named_bundle% "RealMapCertificates/relations/basis4449.json"
theorem reductionProof4449 : EqualModuloRelations reduction4449.relations reduction4449.input reduction4449.output := by lin_cert using reduction4449.terms
theorem substitutionProof4449 : IsMapEvaluation generatorImages reduction4449.relations [8,425] reduction4449.output := by lin_cert using reduction4449.terms
def image4450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4450 : InImage map_16_155 image4450 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4450 : Bundle := named_bundle% "RealMapCertificates/relations/basis4450.json"
theorem reductionProof4450 : EqualModuloRelations reduction4450.relations reduction4450.input reduction4450.output := by lin_cert using reduction4450.terms
theorem substitutionProof4450 : IsMapEvaluation generatorImages reduction4450.relations [0,0,0,0,0,562] reduction4450.output := by lin_cert using reduction4450.terms
def map_16_156 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4554 : InImage map_16_156 image4554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4554 : Bundle := named_bundle% "RealMapCertificates/relations/basis4554.json"
theorem reductionProof4554 : EqualModuloRelations reduction4554.relations reduction4554.input reduction4554.output := by lin_cert using reduction4554.terms
theorem substitutionProof4554 : IsMapEvaluation generatorImages reduction4554.relations [613] reduction4554.output := by lin_cert using reduction4554.terms
def image4555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4555 : InImage map_16_156 image4555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4555 : Bundle := named_bundle% "RealMapCertificates/relations/basis4555.json"
theorem reductionProof4555 : EqualModuloRelations reduction4555.relations reduction4555.input reduction4555.output := by lin_cert using reduction4555.terms
theorem substitutionProof4555 : IsMapEvaluation generatorImages reduction4555.relations [9,408] reduction4555.output := by lin_cert using reduction4555.terms
def image4556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4556 : InImage map_16_156 image4556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4556 : Bundle := named_bundle% "RealMapCertificates/relations/basis4556.json"
theorem reductionProof4556 : EqualModuloRelations reduction4556.relations reduction4556.input reduction4556.output := by lin_cert using reduction4556.terms
theorem substitutionProof4556 : IsMapEvaluation generatorImages reduction4556.relations [0,0,0,0,575] reduction4556.output := by lin_cert using reduction4556.terms
def map_16_157 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4630 : InImage map_16_157 image4630 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4630 : Bundle := named_bundle% "RealMapCertificates/relations/basis4630.json"
theorem reductionProof4630 : EqualModuloRelations reduction4630.relations reduction4630.input reduction4630.output := by lin_cert using reduction4630.terms
theorem substitutionProof4630 : IsMapEvaluation generatorImages reduction4630.relations [618] reduction4630.output := by lin_cert using reduction4630.terms
def image4631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4631 : InImage map_16_157 image4631 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4631 : Bundle := named_bundle% "RealMapCertificates/relations/basis4631.json"
theorem reductionProof4631 : EqualModuloRelations reduction4631.relations reduction4631.input reduction4631.output := by lin_cert using reduction4631.terms
theorem substitutionProof4631 : IsMapEvaluation generatorImages reduction4631.relations [18,293] reduction4631.output := by lin_cert using reduction4631.terms
def image4632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4632 : InImage map_16_157 image4632 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4632 : Bundle := named_bundle% "RealMapCertificates/relations/basis4632.json"
theorem reductionProof4632 : EqualModuloRelations reduction4632.relations reduction4632.input reduction4632.output := by lin_cert using reduction4632.terms
theorem substitutionProof4632 : IsMapEvaluation generatorImages reduction4632.relations [17,314] reduction4632.output := by lin_cert using reduction4632.terms
def image4633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4633 : InImage map_16_157 image4633 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4633 : Bundle := named_bundle% "RealMapCertificates/relations/basis4633.json"
theorem reductionProof4633 : EqualModuloRelations reduction4633.relations reduction4633.input reduction4633.output := by lin_cert using reduction4633.terms
theorem substitutionProof4633 : IsMapEvaluation generatorImages reduction4633.relations [0,0,0,589] reduction4633.output := by lin_cert using reduction4633.terms
def map_16_158 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4716 : InImage map_16_158 image4716 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4716 : Bundle := named_bundle% "RealMapCertificates/relations/basis4716.json"
theorem reductionProof4716 : EqualModuloRelations reduction4716.relations reduction4716.input reduction4716.output := by lin_cert using reduction4716.terms
theorem substitutionProof4716 : IsMapEvaluation generatorImages reduction4716.relations [629] reduction4716.output := by lin_cert using reduction4716.terms
def image4717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4717 : InImage map_16_158 image4717 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4717 : Bundle := named_bundle% "RealMapCertificates/relations/basis4717.json"
theorem reductionProof4717 : EqualModuloRelations reduction4717.relations reduction4717.input reduction4717.output := by lin_cert using reduction4717.terms
theorem substitutionProof4717 : IsMapEvaluation generatorImages reduction4717.relations [0,0,3,540] reduction4717.output := by lin_cert using reduction4717.terms
def map_16_159 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4820 : InImage map_16_159 image4820 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4820 : Bundle := named_bundle% "RealMapCertificates/relations/basis4820.json"
theorem reductionProof4820 : EqualModuloRelations reduction4820.relations reduction4820.input reduction4820.output := by lin_cert using reduction4820.terms
theorem substitutionProof4820 : IsMapEvaluation generatorImages reduction4820.relations [17,333] reduction4820.output := by lin_cert using reduction4820.terms
def image4821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4821 : InImage map_16_159 image4821 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4821 : Bundle := named_bundle% "RealMapCertificates/relations/basis4821.json"
theorem reductionProof4821 : EqualModuloRelations reduction4821.relations reduction4821.input reduction4821.output := by lin_cert using reduction4821.terms
theorem substitutionProof4821 : IsMapEvaluation generatorImages reduction4821.relations [13,408] reduction4821.output := by lin_cert using reduction4821.terms
def image4822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4822 : InImage map_16_159 image4822 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4822 : Bundle := named_bundle% "RealMapCertificates/relations/basis4822.json"
theorem reductionProof4822 : EqualModuloRelations reduction4822.relations reduction4822.input reduction4822.output := by lin_cert using reduction4822.terms
theorem substitutionProof4822 : IsMapEvaluation generatorImages reduction4822.relations [0,630] reduction4822.output := by lin_cert using reduction4822.terms
def map_16_160 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4888 : InImage map_16_160 image4888 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4888 : Bundle := named_bundle% "RealMapCertificates/relations/basis4888.json"
theorem reductionProof4888 : EqualModuloRelations reduction4888.relations reduction4888.input reduction4888.output := by lin_cert using reduction4888.terms
theorem substitutionProof4888 : IsMapEvaluation generatorImages reduction4888.relations [649] reduction4888.output := by lin_cert using reduction4888.terms
def image4889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4889 : InImage map_16_160 image4889 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4889 : Bundle := named_bundle% "RealMapCertificates/relations/basis4889.json"
theorem reductionProof4889 : EqualModuloRelations reduction4889.relations reduction4889.input reduction4889.output := by lin_cert using reduction4889.terms
theorem substitutionProof4889 : IsMapEvaluation generatorImages reduction4889.relations [648] reduction4889.output := by lin_cert using reduction4889.terms
def image4890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4890 : InImage map_16_160 image4890 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4890 : Bundle := named_bundle% "RealMapCertificates/relations/basis4890.json"
theorem reductionProof4890 : EqualModuloRelations reduction4890.relations reduction4890.input reduction4890.output := by lin_cert using reduction4890.terms
theorem substitutionProof4890 : IsMapEvaluation generatorImages reduction4890.relations [17,338] reduction4890.output := by lin_cert using reduction4890.terms
def map_16_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4983 : InImage map_16_161 image4983 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4983 : Bundle := named_bundle% "RealMapCertificates/relations/basis4983.json"
theorem reductionProof4983 : EqualModuloRelations reduction4983.relations reduction4983.input reduction4983.output := by lin_cert using reduction4983.terms
theorem substitutionProof4983 : IsMapEvaluation generatorImages reduction4983.relations [0,650] reduction4983.output := by lin_cert using reduction4983.terms
def map_16_162 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5095 : InImage map_16_162 image5095 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5095 : Bundle := named_bundle% "RealMapCertificates/relations/basis5095.json"
theorem reductionProof5095 : EqualModuloRelations reduction5095.relations reduction5095.input reduction5095.output := by lin_cert using reduction5095.terms
theorem substitutionProof5095 : IsMapEvaluation generatorImages reduction5095.relations [16,367] reduction5095.output := by lin_cert using reduction5095.terms
def image5096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5096 : InImage map_16_162 image5096 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5096 : Bundle := named_bundle% "RealMapCertificates/relations/basis5096.json"
theorem reductionProof5096 : EqualModuloRelations reduction5096.relations reduction5096.input reduction5096.output := by lin_cert using reduction5096.terms
theorem substitutionProof5096 : IsMapEvaluation generatorImages reduction5096.relations [2,630] reduction5096.output := by lin_cert using reduction5096.terms
def map_16_163 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5169 : InImage map_16_163 image5169 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5169 : Bundle := named_bundle% "RealMapCertificates/relations/basis5169.json"
theorem reductionProof5169 : EqualModuloRelations reduction5169.relations reduction5169.input reduction5169.output := by lin_cert using reduction5169.terms
theorem substitutionProof5169 : IsMapEvaluation generatorImages reduction5169.relations [677] reduction5169.output := by lin_cert using reduction5169.terms
def image5170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5170 : InImage map_16_163 image5170 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5170 : Bundle := named_bundle% "RealMapCertificates/relations/basis5170.json"
theorem reductionProof5170 : EqualModuloRelations reduction5170.relations reduction5170.input reduction5170.output := by lin_cert using reduction5170.terms
theorem substitutionProof5170 : IsMapEvaluation generatorImages reduction5170.relations [8,511] reduction5170.output := by lin_cert using reduction5170.terms
def image5171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5171 : InImage map_16_163 image5171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5171 : Bundle := named_bundle% "RealMapCertificates/relations/basis5171.json"
theorem reductionProof5171 : EqualModuloRelations reduction5171.relations reduction5171.input reduction5171.output := by lin_cert using reduction5171.terms
theorem substitutionProof5171 : IsMapEvaluation generatorImages reduction5171.relations [0,669] reduction5171.output := by lin_cert using reduction5171.terms
def image5172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5172 : InImage map_16_163 image5172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5172 : Bundle := named_bundle% "RealMapCertificates/relations/basis5172.json"
theorem reductionProof5172 : EqualModuloRelations reduction5172.relations reduction5172.input reduction5172.output := by lin_cert using reduction5172.terms
theorem substitutionProof5172 : IsMapEvaluation generatorImages reduction5172.relations [0,17,367] reduction5172.output := by lin_cert using reduction5172.terms
end RealMapCertificates
