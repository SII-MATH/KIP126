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
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 25 => []
  | 30 => [[2,4,4,4]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 41 => [[3,4,4,4]]
  | 43 => []
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 67 => []
  | 68 => []
  | 70 => []
  | 75 => []
  | 76 => []
  | 92 => []
  | 95 => []
  | 107 => []
  | 122 => []
  | 174 => []
  | 189 => []
  | 190 => []
  | 197 => []
  | 209 => []
  | 213 => []
  | 275 => []
  | 288 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 336 => []
  | 367 => []
  | 376 => []
  | 385 => []
  | 415 => []
  | 445 => []
  | 475 => []
  | 476 => []
  | 485 => []
  | 502 => []
  | 534 => []
  | 569 => []
  | 630 => []
  | 650 => []
  | 669 => []
  | 671 => []
  | 676 => []
  | 678 => []
  | 680 => []
  | 694 => []
  | 707 => []
  | 708 => []
  | 709 => []
  | 730 => []
  | 732 => []
  | 741 => []
  | 743 => []
  | 763 => []
  | 764 => []
  | 765 => []
  | 766 => []
  | 781 => []
  | 799 => []
  | 814 => []
  | 824 => []
  | 825 => []
  | 840 => []
  | 841 => []
  | 843 => []
  | 858 => []
  | 882 => []
  | 909 => []
  | 911 => []
  | 948 => []
  | 965 => []
  | 966 => []
  | 967 => []
  | 987 => []
  | 988 => []
  | 989 => []
  | 1004 => []
  | 1005 => []
  | 1017 => []
  | 1018 => []
  | 1019 => []
  | 1020 => []
  | 1021 => []
  | 1022 => []
  | 1046 => []
  | 1054 => []
  | _ => []
def map_16_164 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5271 : InImage map_16_164 image5271 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5271 : Bundle := named_bundle% "RealMapCertificates/relations/basis5271.json"
theorem reductionProof5271 : EqualModuloRelations reduction5271.relations reduction5271.input reduction5271.output := by lin_cert using reduction5271.terms
theorem substitutionProof5271 : IsMapEvaluation generatorImages reduction5271.relations [1,669] reduction5271.output := by lin_cert using reduction5271.terms
def image5272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5272 : InImage map_16_164 image5272 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5272 : Bundle := named_bundle% "RealMapCertificates/relations/basis5272.json"
theorem reductionProof5272 : EqualModuloRelations reduction5272.relations reduction5272.input reduction5272.output := by lin_cert using reduction5272.terms
theorem substitutionProof5272 : IsMapEvaluation generatorImages reduction5272.relations [0,678] reduction5272.output := by lin_cert using reduction5272.terms
def image5273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5273 : InImage map_16_164 image5273 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5273 : Bundle := named_bundle% "RealMapCertificates/relations/basis5273.json"
theorem reductionProof5273 : EqualModuloRelations reduction5273.relations reduction5273.input reduction5273.output := by lin_cert using reduction5273.terms
theorem substitutionProof5273 : IsMapEvaluation generatorImages reduction5273.relations [0,67,174] reduction5273.output := by lin_cert using reduction5273.terms
def image5274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5274 : InImage map_16_164 image5274 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5274 : Bundle := named_bundle% "RealMapCertificates/relations/basis5274.json"
theorem reductionProof5274 : EqualModuloRelations reduction5274.relations reduction5274.input reduction5274.output := by lin_cert using reduction5274.terms
theorem substitutionProof5274 : IsMapEvaluation generatorImages reduction5274.relations [0,0,671] reduction5274.output := by lin_cert using reduction5274.terms
def map_16_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5396 : InImage map_16_165 image5396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5396 : Bundle := named_bundle% "RealMapCertificates/relations/basis5396.json"
theorem reductionProof5396 : EqualModuloRelations reduction5396.relations reduction5396.input reduction5396.output := by lin_cert using reduction5396.terms
theorem substitutionProof5396 : IsMapEvaluation generatorImages reduction5396.relations [707] reduction5396.output := by lin_cert using reduction5396.terms
def image5397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5397 : InImage map_16_165 image5397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5397 : Bundle := named_bundle% "RealMapCertificates/relations/basis5397.json"
theorem reductionProof5397 : EqualModuloRelations reduction5397.relations reduction5397.input reduction5397.output := by lin_cert using reduction5397.terms
theorem substitutionProof5397 : IsMapEvaluation generatorImages reduction5397.relations [13,476] reduction5397.output := by lin_cert using reduction5397.terms
def image5398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5398 : InImage map_16_165 image5398 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5398 : Bundle := named_bundle% "RealMapCertificates/relations/basis5398.json"
theorem reductionProof5398 : EqualModuloRelations reduction5398.relations reduction5398.input reduction5398.output := by lin_cert using reduction5398.terms
theorem substitutionProof5398 : IsMapEvaluation generatorImages reduction5398.relations [8,534] reduction5398.output := by lin_cert using reduction5398.terms
def map_16_166 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5491 : InImage map_16_166 image5491 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5491 : Bundle := named_bundle% "RealMapCertificates/relations/basis5491.json"
theorem reductionProof5491 : EqualModuloRelations reduction5491.relations reduction5491.input reduction5491.output := by lin_cert using reduction5491.terms
theorem substitutionProof5491 : IsMapEvaluation generatorImages reduction5491.relations [25,335] reduction5491.output := by lin_cert using reduction5491.terms
def image5492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5492 : InImage map_16_166 image5492 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5492 : Bundle := named_bundle% "RealMapCertificates/relations/basis5492.json"
theorem reductionProof5492 : EqualModuloRelations reduction5492.relations reduction5492.input reduction5492.output := by lin_cert using reduction5492.terms
theorem substitutionProof5492 : IsMapEvaluation generatorImages reduction5492.relations [3,630] reduction5492.output := by lin_cert using reduction5492.terms
def image5493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5493 : InImage map_16_166 image5493 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5493 : Bundle := named_bundle% "RealMapCertificates/relations/basis5493.json"
theorem reductionProof5493 : EqualModuloRelations reduction5493.relations reduction5493.input reduction5493.output := by lin_cert using reduction5493.terms
theorem substitutionProof5493 : IsMapEvaluation generatorImages reduction5493.relations [1,694] reduction5493.output := by lin_cert using reduction5493.terms
def image5494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5494 : InImage map_16_166 image5494 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5494 : Bundle := named_bundle% "RealMapCertificates/relations/basis5494.json"
theorem reductionProof5494 : EqualModuloRelations reduction5494.relations reduction5494.input reduction5494.output := by lin_cert using reduction5494.terms
theorem substitutionProof5494 : IsMapEvaluation generatorImages reduction5494.relations [0,708] reduction5494.output := by lin_cert using reduction5494.terms
def image5495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5495 : InImage map_16_166 image5495 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5495 : Bundle := named_bundle% "RealMapCertificates/relations/basis5495.json"
theorem reductionProof5495 : EqualModuloRelations reduction5495.relations reduction5495.input reduction5495.output := by lin_cert using reduction5495.terms
theorem substitutionProof5495 : IsMapEvaluation generatorImages reduction5495.relations [0,17,415] reduction5495.output := by lin_cert using reduction5495.terms
def map_16_167 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5595 : InImage map_16_167 image5595 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5595 : Bundle := named_bundle% "RealMapCertificates/relations/basis5595.json"
theorem reductionProof5595 : EqualModuloRelations reduction5595.relations reduction5595.input reduction5595.output := by lin_cert using reduction5595.terms
theorem substitutionProof5595 : IsMapEvaluation generatorImages reduction5595.relations [1,708] reduction5595.output := by lin_cert using reduction5595.terms
def image5596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5596 : InImage map_16_167 image5596 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5596 : Bundle := named_bundle% "RealMapCertificates/relations/basis5596.json"
theorem reductionProof5596 : EqualModuloRelations reduction5596.relations reduction5596.input reduction5596.output := by lin_cert using reduction5596.terms
theorem substitutionProof5596 : IsMapEvaluation generatorImages reduction5596.relations [0,67,190] reduction5596.output := by lin_cert using reduction5596.terms
def map_16_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5717 : InImage map_16_168 image5717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5717 : Bundle := named_bundle% "RealMapCertificates/relations/basis5717.json"
theorem reductionProof5717 : EqualModuloRelations reduction5717.relations reduction5717.input reduction5717.output := by lin_cert using reduction5717.terms
theorem substitutionProof5717 : IsMapEvaluation generatorImages reduction5717.relations [8,8,367] reduction5717.output := by lin_cert using reduction5717.terms
def image5718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5718 : InImage map_16_168 image5718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5718 : Bundle := named_bundle% "RealMapCertificates/relations/basis5718.json"
theorem reductionProof5718 : EqualModuloRelations reduction5718.relations reduction5718.input reduction5718.output := by lin_cert using reduction5718.terms
theorem substitutionProof5718 : IsMapEvaluation generatorImages reduction5718.relations [3,650] reduction5718.output := by lin_cert using reduction5718.terms
def image5719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5719 : InImage map_16_168 image5719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5719 : Bundle := named_bundle% "RealMapCertificates/relations/basis5719.json"
theorem reductionProof5719 : EqualModuloRelations reduction5719.relations reduction5719.input reduction5719.output := by lin_cert using reduction5719.terms
theorem substitutionProof5719 : IsMapEvaluation generatorImages reduction5719.relations [1,18,385] reduction5719.output := by lin_cert using reduction5719.terms
def map_16_169 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5816 : InImage map_16_169 image5816 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5816 : Bundle := named_bundle% "RealMapCertificates/relations/basis5816.json"
theorem reductionProof5816 : EqualModuloRelations reduction5816.relations reduction5816.input reduction5816.output := by lin_cert using reduction5816.terms
theorem substitutionProof5816 : IsMapEvaluation generatorImages reduction5816.relations [75,189] reduction5816.output := by lin_cert using reduction5816.terms
def image5817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5817 : InImage map_16_169 image5817 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5817 : Bundle := named_bundle% "RealMapCertificates/relations/basis5817.json"
theorem reductionProof5817 : EqualModuloRelations reduction5817.relations reduction5817.input reduction5817.output := by lin_cert using reduction5817.terms
theorem substitutionProof5817 : IsMapEvaluation generatorImages reduction5817.relations [0,741] reduction5817.output := by lin_cert using reduction5817.terms
def image5818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5818 : InImage map_16_169 image5818 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5818 : Bundle := named_bundle% "RealMapCertificates/relations/basis5818.json"
theorem reductionProof5818 : EqualModuloRelations reduction5818.relations reduction5818.input reduction5818.output := by lin_cert using reduction5818.terms
theorem substitutionProof5818 : IsMapEvaluation generatorImages reduction5818.relations [0,67,197] reduction5818.output := by lin_cert using reduction5818.terms
def map_16_170 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5919 : InImage map_16_170 image5919 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5919 : Bundle := named_bundle% "RealMapCertificates/relations/basis5919.json"
theorem reductionProof5919 : EqualModuloRelations reduction5919.relations reduction5919.input reduction5919.output := by lin_cert using reduction5919.terms
theorem substitutionProof5919 : IsMapEvaluation generatorImages reduction5919.relations [763] reduction5919.output := by lin_cert using reduction5919.terms
def image5920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5920 : InImage map_16_170 image5920 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5920 : Bundle := named_bundle% "RealMapCertificates/relations/basis5920.json"
theorem reductionProof5920 : EqualModuloRelations reduction5920.relations reduction5920.input reduction5920.output := by lin_cert using reduction5920.terms
theorem substitutionProof5920 : IsMapEvaluation generatorImages reduction5920.relations [3,669] reduction5920.output := by lin_cert using reduction5920.terms
def image5921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5921 : InImage map_16_170 image5921 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5921 : Bundle := named_bundle% "RealMapCertificates/relations/basis5921.json"
theorem reductionProof5921 : EqualModuloRelations reduction5921.relations reduction5921.input reduction5921.output := by lin_cert using reduction5921.terms
theorem substitutionProof5921 : IsMapEvaluation generatorImages reduction5921.relations [0,0,30,324] reduction5921.output := by lin_cert using reduction5921.terms
def image5922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5922 : InImage map_16_170 image5922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5922 : Bundle := named_bundle% "RealMapCertificates/relations/basis5922.json"
theorem reductionProof5922 : EqualModuloRelations reduction5922.relations reduction5922.input reduction5922.output := by lin_cert using reduction5922.terms
theorem substitutionProof5922 : IsMapEvaluation generatorImages reduction5922.relations [0,0,0,0,0,0,0,0,676] reduction5922.output := by lin_cert using reduction5922.terms
def map_16_171 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6061 : InImage map_16_171 image6061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6061 : Bundle := named_bundle% "RealMapCertificates/relations/basis6061.json"
theorem reductionProof6061 : EqualModuloRelations reduction6061.relations reduction6061.input reduction6061.output := by lin_cert using reduction6061.terms
theorem substitutionProof6061 : IsMapEvaluation generatorImages reduction6061.relations [781] reduction6061.output := by lin_cert using reduction6061.terms
def image6062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6062 : InImage map_16_171 image6062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6062 : Bundle := named_bundle% "RealMapCertificates/relations/basis6062.json"
theorem reductionProof6062 : EqualModuloRelations reduction6062.relations reduction6062.input reduction6062.output := by lin_cert using reduction6062.terms
theorem substitutionProof6062 : IsMapEvaluation generatorImages reduction6062.relations [8,8,415] reduction6062.output := by lin_cert using reduction6062.terms
def image6063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6063 : InImage map_16_171 image6063 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6063 : Bundle := named_bundle% "RealMapCertificates/relations/basis6063.json"
theorem reductionProof6063 : EqualModuloRelations reduction6063.relations reduction6063.input reduction6063.output := by lin_cert using reduction6063.terms
theorem substitutionProof6063 : IsMapEvaluation generatorImages reduction6063.relations [1,76,189] reduction6063.output := by lin_cert using reduction6063.terms
def image6064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6064 : InImage map_16_171 image6064 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6064 : Bundle := named_bundle% "RealMapCertificates/relations/basis6064.json"
theorem reductionProof6064 : EqualModuloRelations reduction6064.relations reduction6064.input reduction6064.output := by lin_cert using reduction6064.terms
theorem substitutionProof6064 : IsMapEvaluation generatorImages reduction6064.relations [0,765] reduction6064.output := by lin_cert using reduction6064.terms
def image6065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6065 : InImage map_16_171 image6065 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6065 : Bundle := named_bundle% "RealMapCertificates/relations/basis6065.json"
theorem reductionProof6065 : EqualModuloRelations reduction6065.relations reduction6065.input reduction6065.output := by lin_cert using reduction6065.terms
theorem substitutionProof6065 : IsMapEvaluation generatorImages reduction6065.relations [0,764] reduction6065.output := by lin_cert using reduction6065.terms
def image6066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6066 : InImage map_16_171 image6066 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6066 : Bundle := named_bundle% "RealMapCertificates/relations/basis6066.json"
theorem reductionProof6066 : EqualModuloRelations reduction6066.relations reduction6066.input reduction6066.output := by lin_cert using reduction6066.terms
theorem substitutionProof6066 : IsMapEvaluation generatorImages reduction6066.relations [0,0,0,0,732] reduction6066.output := by lin_cert using reduction6066.terms
def map_16_172 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6153 : InImage map_16_172 image6153 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6153 : Bundle := named_bundle% "RealMapCertificates/relations/basis6153.json"
theorem reductionProof6153 : EqualModuloRelations reduction6153.relations reduction6153.input reduction6153.output := by lin_cert using reduction6153.terms
theorem substitutionProof6153 : IsMapEvaluation generatorImages reduction6153.relations [9,569] reduction6153.output := by lin_cert using reduction6153.terms
def image6154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6154 : InImage map_16_172 image6154 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6154 : Bundle := named_bundle% "RealMapCertificates/relations/basis6154.json"
theorem reductionProof6154 : EqualModuloRelations reduction6154.relations reduction6154.input reduction6154.output := by lin_cert using reduction6154.terms
theorem substitutionProof6154 : IsMapEvaluation generatorImages reduction6154.relations [1,764] reduction6154.output := by lin_cert using reduction6154.terms
def image6155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6155 : InImage map_16_172 image6155 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6155 : Bundle := named_bundle% "RealMapCertificates/relations/basis6155.json"
theorem reductionProof6155 : EqualModuloRelations reduction6155.relations reduction6155.input reduction6155.output := by lin_cert using reduction6155.terms
theorem substitutionProof6155 : IsMapEvaluation generatorImages reduction6155.relations [0,0,766] reduction6155.output := by lin_cert using reduction6155.terms
def map_16_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6257 : InImage map_16_173 image6257 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6257 : Bundle := named_bundle% "RealMapCertificates/relations/basis6257.json"
theorem reductionProof6257 : EqualModuloRelations reduction6257.relations reduction6257.input reduction6257.output := by lin_cert using reduction6257.terms
theorem substitutionProof6257 : IsMapEvaluation generatorImages reduction6257.relations [1,3,680] reduction6257.output := by lin_cert using reduction6257.terms
def image6258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6258 : InImage map_16_173 image6258 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6258 : Bundle := named_bundle% "RealMapCertificates/relations/basis6258.json"
theorem reductionProof6258 : EqualModuloRelations reduction6258.relations reduction6258.input reduction6258.output := by lin_cert using reduction6258.terms
theorem substitutionProof6258 : IsMapEvaluation generatorImages reduction6258.relations [0,0,0,0,0,743] reduction6258.output := by lin_cert using reduction6258.terms
def map_16_174 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6397 : InImage map_16_174 image6397 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6397 : Bundle := named_bundle% "RealMapCertificates/relations/basis6397.json"
theorem reductionProof6397 : EqualModuloRelations reduction6397.relations reduction6397.input reduction6397.output := by lin_cert using reduction6397.terms
theorem substitutionProof6397 : IsMapEvaluation generatorImages reduction6397.relations [8,8,445] reduction6397.output := by lin_cert using reduction6397.terms
def image6398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6398 : InImage map_16_174 image6398 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6398 : Bundle := named_bundle% "RealMapCertificates/relations/basis6398.json"
theorem reductionProof6398 : EqualModuloRelations reduction6398.relations reduction6398.input reduction6398.output := by lin_cert using reduction6398.terms
theorem substitutionProof6398 : IsMapEvaluation generatorImages reduction6398.relations [1,1,766] reduction6398.output := by lin_cert using reduction6398.terms
def image6399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6399 : InImage map_16_174 image6399 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6399 : Bundle := named_bundle% "RealMapCertificates/relations/basis6399.json"
theorem reductionProof6399 : EqualModuloRelations reduction6399.relations reduction6399.input reduction6399.output := by lin_cert using reduction6399.terms
theorem substitutionProof6399 : IsMapEvaluation generatorImages reduction6399.relations [0,799] reduction6399.output := by lin_cert using reduction6399.terms
def image6400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6400 : InImage map_16_174 image6400 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6400 : Bundle := named_bundle% "RealMapCertificates/relations/basis6400.json"
theorem reductionProof6400 : EqualModuloRelations reduction6400.relations reduction6400.input reduction6400.output := by lin_cert using reduction6400.terms
theorem substitutionProof6400 : IsMapEvaluation generatorImages reduction6400.relations [0,3,709] reduction6400.output := by lin_cert using reduction6400.terms
def image6401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6401 : InImage map_16_174 image6401 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6401 : Bundle := named_bundle% "RealMapCertificates/relations/basis6401.json"
theorem reductionProof6401 : EqualModuloRelations reduction6401.relations reduction6401.input reduction6401.output := by lin_cert using reduction6401.terms
theorem substitutionProof6401 : IsMapEvaluation generatorImages reduction6401.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,324] reduction6401.output := by lin_cert using reduction6401.terms
def map_16_175 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6495 : InImage map_16_175 image6495 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6495 : Bundle := named_bundle% "RealMapCertificates/relations/basis6495.json"
theorem reductionProof6495 : EqualModuloRelations reduction6495.relations reduction6495.input reduction6495.output := by lin_cert using reduction6495.terms
theorem substitutionProof6495 : IsMapEvaluation generatorImages reduction6495.relations [107,174] reduction6495.output := by lin_cert using reduction6495.terms
def image6496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6496 : InImage map_16_175 image6496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6496 : Bundle := named_bundle% "RealMapCertificates/relations/basis6496.json"
theorem reductionProof6496 : EqualModuloRelations reduction6496.relations reduction6496.input reduction6496.output := by lin_cert using reduction6496.terms
theorem substitutionProof6496 : IsMapEvaluation generatorImages reduction6496.relations [41,324] reduction6496.output := by lin_cert using reduction6496.terms
def image6497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6497 : InImage map_16_175 image6497 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6497 : Bundle := named_bundle% "RealMapCertificates/relations/basis6497.json"
theorem reductionProof6497 : EqualModuloRelations reduction6497.relations reduction6497.input reduction6497.output := by lin_cert using reduction6497.terms
theorem substitutionProof6497 : IsMapEvaluation generatorImages reduction6497.relations [13,569] reduction6497.output := by lin_cert using reduction6497.terms
def image6498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6498 : InImage map_16_175 image6498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6498 : Bundle := named_bundle% "RealMapCertificates/relations/basis6498.json"
theorem reductionProof6498 : EqualModuloRelations reduction6498.relations reduction6498.input reduction6498.output := by lin_cert using reduction6498.terms
theorem substitutionProof6498 : IsMapEvaluation generatorImages reduction6498.relations [0,0,18,475] reduction6498.output := by lin_cert using reduction6498.terms
def map_16_176 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6604 : InImage map_16_176 image6604 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6604 : Bundle := named_bundle% "RealMapCertificates/relations/basis6604.json"
theorem reductionProof6604 : EqualModuloRelations reduction6604.relations reduction6604.input reduction6604.output := by lin_cert using reduction6604.terms
theorem substitutionProof6604 : IsMapEvaluation generatorImages reduction6604.relations [840] reduction6604.output := by lin_cert using reduction6604.terms
def image6605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6605 : InImage map_16_176 image6605 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6605 : Bundle := named_bundle% "RealMapCertificates/relations/basis6605.json"
theorem reductionProof6605 : EqualModuloRelations reduction6605.relations reduction6605.input reduction6605.output := by lin_cert using reduction6605.terms
theorem substitutionProof6605 : IsMapEvaluation generatorImages reduction6605.relations [0,825] reduction6605.output := by lin_cert using reduction6605.terms
def image6606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6606 : InImage map_16_176 image6606 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6606 : Bundle := named_bundle% "RealMapCertificates/relations/basis6606.json"
theorem reductionProof6606 : EqualModuloRelations reduction6606.relations reduction6606.input reduction6606.output := by lin_cert using reduction6606.terms
theorem substitutionProof6606 : IsMapEvaluation generatorImages reduction6606.relations [0,824] reduction6606.output := by lin_cert using reduction6606.terms
def image6607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6607 : InImage map_16_176 image6607 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6607 : Bundle := named_bundle% "RealMapCertificates/relations/basis6607.json"
theorem reductionProof6607 : EqualModuloRelations reduction6607.relations reduction6607.input reduction6607.output := by lin_cert using reduction6607.terms
theorem substitutionProof6607 : IsMapEvaluation generatorImages reduction6607.relations [0,0,814] reduction6607.output := by lin_cert using reduction6607.terms
def image6608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6608 : InImage map_16_176 image6608 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6608 : Bundle := named_bundle% "RealMapCertificates/relations/basis6608.json"
theorem reductionProof6608 : EqualModuloRelations reduction6608.relations reduction6608.input reduction6608.output := by lin_cert using reduction6608.terms
theorem substitutionProof6608 : IsMapEvaluation generatorImages reduction6608.relations [0,0,0,39,324] reduction6608.output := by lin_cert using reduction6608.terms
def map_16_177 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6746 : InImage map_16_177 image6746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6746 : Bundle := named_bundle% "RealMapCertificates/relations/basis6746.json"
theorem reductionProof6746 : EqualModuloRelations reduction6746.relations reduction6746.input reduction6746.output := by lin_cert using reduction6746.terms
theorem substitutionProof6746 : IsMapEvaluation generatorImages reduction6746.relations [3,76,189] reduction6746.output := by lin_cert using reduction6746.terms
def image6747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6747 : InImage map_16_177 image6747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6747 : Bundle := named_bundle% "RealMapCertificates/relations/basis6747.json"
theorem reductionProof6747 : EqualModuloRelations reduction6747.relations reduction6747.input reduction6747.output := by lin_cert using reduction6747.terms
theorem substitutionProof6747 : IsMapEvaluation generatorImages reduction6747.relations [1,825] reduction6747.output := by lin_cert using reduction6747.terms
def image6748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6748 : InImage map_16_177 image6748 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6748 : Bundle := named_bundle% "RealMapCertificates/relations/basis6748.json"
theorem reductionProof6748 : EqualModuloRelations reduction6748.relations reduction6748.input reduction6748.output := by lin_cert using reduction6748.terms
theorem substitutionProof6748 : IsMapEvaluation generatorImages reduction6748.relations [0,841] reduction6748.output := by lin_cert using reduction6748.terms
def map_16_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6841 : InImage map_16_178 image6841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6841 : Bundle := named_bundle% "RealMapCertificates/relations/basis6841.json"
theorem reductionProof6841 : EqualModuloRelations reduction6841.relations reduction6841.input reduction6841.output := by lin_cert using reduction6841.terms
theorem substitutionProof6841 : IsMapEvaluation generatorImages reduction6841.relations [3,764] reduction6841.output := by lin_cert using reduction6841.terms
def image6842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6842 : InImage map_16_178 image6842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6842 : Bundle := named_bundle% "RealMapCertificates/relations/basis6842.json"
theorem reductionProof6842 : EqualModuloRelations reduction6842.relations reduction6842.input reduction6842.output := by lin_cert using reduction6842.terms
theorem substitutionProof6842 : IsMapEvaluation generatorImages reduction6842.relations [0,0,843] reduction6842.output := by lin_cert using reduction6842.terms
def image6843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6843 : InImage map_16_178 image6843 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6843 : Bundle := named_bundle% "RealMapCertificates/relations/basis6843.json"
theorem reductionProof6843 : EqualModuloRelations reduction6843.relations reduction6843.input reduction6843.output := by lin_cert using reduction6843.terms
theorem substitutionProof6843 : IsMapEvaluation generatorImages reduction6843.relations [0,0,18,502] reduction6843.output := by lin_cert using reduction6843.terms
def map_16_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6974 : InImage map_16_179 image6974 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6974 : Bundle := named_bundle% "RealMapCertificates/relations/basis6974.json"
theorem reductionProof6974 : EqualModuloRelations reduction6974.relations reduction6974.input reduction6974.output := by lin_cert using reduction6974.terms
theorem substitutionProof6974 : IsMapEvaluation generatorImages reduction6974.relations [2,824] reduction6974.output := by lin_cert using reduction6974.terms
def image6975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6975 : InImage map_16_179 image6975 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6975 : Bundle := named_bundle% "RealMapCertificates/relations/basis6975.json"
theorem reductionProof6975 : EqualModuloRelations reduction6975.relations reduction6975.input reduction6975.output := by lin_cert using reduction6975.terms
theorem substitutionProof6975 : IsMapEvaluation generatorImages reduction6975.relations [0,43,336] reduction6975.output := by lin_cert using reduction6975.terms
def image6976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6976 : InImage map_16_179 image6976 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6976 : Bundle := named_bundle% "RealMapCertificates/relations/basis6976.json"
theorem reductionProof6976 : EqualModuloRelations reduction6976.relations reduction6976.input reduction6976.output := by lin_cert using reduction6976.terms
theorem substitutionProof6976 : IsMapEvaluation generatorImages reduction6976.relations [0,2,814] reduction6976.output := by lin_cert using reduction6976.terms
def map_16_180 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7118 : InImage map_16_180 image7118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7118 : Bundle := named_bundle% "RealMapCertificates/relations/basis7118.json"
theorem reductionProof7118 : EqualModuloRelations reduction7118.relations reduction7118.input reduction7118.output := by lin_cert using reduction7118.terms
theorem substitutionProof7118 : IsMapEvaluation generatorImages reduction7118.relations [0,92,209] reduction7118.output := by lin_cert using reduction7118.terms
def image7119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7119 : InImage map_16_180 image7119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7119 : Bundle := named_bundle% "RealMapCertificates/relations/basis7119.json"
theorem reductionProof7119 : EqualModuloRelations reduction7119.relations reduction7119.input reduction7119.output := by lin_cert using reduction7119.terms
theorem substitutionProof7119 : IsMapEvaluation generatorImages reduction7119.relations [0,0,0,858] reduction7119.output := by lin_cert using reduction7119.terms
def map_16_181 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7215 : InImage map_16_181 image7215 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7215 : Bundle := named_bundle% "RealMapCertificates/relations/basis7215.json"
theorem reductionProof7215 : EqualModuloRelations reduction7215.relations reduction7215.input reduction7215.output := by lin_cert using reduction7215.terms
theorem substitutionProof7215 : IsMapEvaluation generatorImages reduction7215.relations [95,213] reduction7215.output := by lin_cert using reduction7215.terms
def image7216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7216 : InImage map_16_181 image7216 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7216 : Bundle := named_bundle% "RealMapCertificates/relations/basis7216.json"
theorem reductionProof7216 : EqualModuloRelations reduction7216.relations reduction7216.input reduction7216.output := by lin_cert using reduction7216.terms
theorem substitutionProof7216 : IsMapEvaluation generatorImages reduction7216.relations [13,13,376] reduction7216.output := by lin_cert using reduction7216.terms
def image7217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7217 : InImage map_16_181 image7217 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7217 : Bundle := named_bundle% "RealMapCertificates/relations/basis7217.json"
theorem reductionProof7217 : EqualModuloRelations reduction7217.relations reduction7217.input reduction7217.output := by lin_cert using reduction7217.terms
theorem substitutionProof7217 : IsMapEvaluation generatorImages reduction7217.relations [0,0,882] reduction7217.output := by lin_cert using reduction7217.terms
def image7218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7218 : InImage map_16_181 image7218 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7218 : Bundle := named_bundle% "RealMapCertificates/relations/basis7218.json"
theorem reductionProof7218 : EqualModuloRelations reduction7218.relations reduction7218.input reduction7218.output := by lin_cert using reduction7218.terms
theorem substitutionProof7218 : IsMapEvaluation generatorImages reduction7218.relations [0,0,8,18,333] reduction7218.output := by lin_cert using reduction7218.terms
def map_16_182 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7327 : InImage map_16_182 image7327 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7327 : Bundle := named_bundle% "RealMapCertificates/relations/basis7327.json"
theorem reductionProof7327 : EqualModuloRelations reduction7327.relations reduction7327.input reduction7327.output := by lin_cert using reduction7327.terms
theorem substitutionProof7327 : IsMapEvaluation generatorImages reduction7327.relations [909] reduction7327.output := by lin_cert using reduction7327.terms
def image7328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7328 : InImage map_16_182 image7328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7328 : Bundle := named_bundle% "RealMapCertificates/relations/basis7328.json"
theorem reductionProof7328 : EqualModuloRelations reduction7328.relations reduction7328.input reduction7328.output := by lin_cert using reduction7328.terms
theorem substitutionProof7328 : IsMapEvaluation generatorImages reduction7328.relations [50,324] reduction7328.output := by lin_cert using reduction7328.terms
def map_16_183 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7477 : InImage map_16_183 image7477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7477 : Bundle := named_bundle% "RealMapCertificates/relations/basis7477.json"
theorem reductionProof7477 : EqualModuloRelations reduction7477.relations reduction7477.input reduction7477.output := by lin_cert using reduction7477.terms
theorem substitutionProof7477 : IsMapEvaluation generatorImages reduction7477.relations [3,825] reduction7477.output := by lin_cert using reduction7477.terms
def map_16_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7582 : InImage map_16_184 image7582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7582 : Bundle := named_bundle% "RealMapCertificates/relations/basis7582.json"
theorem reductionProof7582 : EqualModuloRelations reduction7582.relations reduction7582.input reduction7582.output := by lin_cert using reduction7582.terms
theorem substitutionProof7582 : IsMapEvaluation generatorImages reduction7582.relations [3,841] reduction7582.output := by lin_cert using reduction7582.terms
def image7583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7583 : InImage map_16_184 image7583 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7583 : Bundle := named_bundle% "RealMapCertificates/relations/basis7583.json"
theorem reductionProof7583 : EqualModuloRelations reduction7583.relations reduction7583.input reduction7583.output := by lin_cert using reduction7583.terms
theorem substitutionProof7583 : IsMapEvaluation generatorImages reduction7583.relations [0,3,3,730] reduction7583.output := by lin_cert using reduction7583.terms
def image7584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7584 : InImage map_16_184 image7584 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7584 : Bundle := named_bundle% "RealMapCertificates/relations/basis7584.json"
theorem reductionProof7584 : EqualModuloRelations reduction7584.relations reduction7584.input reduction7584.output := by lin_cert using reduction7584.terms
theorem substitutionProof7584 : IsMapEvaluation generatorImages reduction7584.relations [0,0,911] reduction7584.output := by lin_cert using reduction7584.terms
def map_16_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7701 : InImage map_16_185 image7701 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7701 : Bundle := named_bundle% "RealMapCertificates/relations/basis7701.json"
theorem reductionProof7701 : EqualModuloRelations reduction7701.relations reduction7701.input reduction7701.output := by lin_cert using reduction7701.terms
theorem substitutionProof7701 : IsMapEvaluation generatorImages reduction7701.relations [948] reduction7701.output := by lin_cert using reduction7701.terms
def image7702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7702 : InImage map_16_185 image7702 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7702 : Bundle := named_bundle% "RealMapCertificates/relations/basis7702.json"
theorem reductionProof7702 : EqualModuloRelations reduction7702.relations reduction7702.input reduction7702.output := by lin_cert using reduction7702.terms
theorem substitutionProof7702 : IsMapEvaluation generatorImages reduction7702.relations [56,324] reduction7702.output := by lin_cert using reduction7702.terms
def image7703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7703 : InImage map_16_185 image7703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7703 : Bundle := named_bundle% "RealMapCertificates/relations/basis7703.json"
theorem reductionProof7703 : EqualModuloRelations reduction7703.relations reduction7703.input reduction7703.output := by lin_cert using reduction7703.terms
theorem substitutionProof7703 : IsMapEvaluation generatorImages reduction7703.relations [0,3,843] reduction7703.output := by lin_cert using reduction7703.terms
def map_16_186 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7847 : InImage map_16_186 image7847 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7847 : Bundle := named_bundle% "RealMapCertificates/relations/basis7847.json"
theorem reductionProof7847 : EqualModuloRelations reduction7847.relations reduction7847.input reduction7847.output := by lin_cert using reduction7847.terms
theorem substitutionProof7847 : IsMapEvaluation generatorImages reduction7847.relations [70,275] reduction7847.output := by lin_cert using reduction7847.terms
def map_16_187 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7931 : InImage map_16_187 image7931 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7931 : Bundle := named_bundle% "RealMapCertificates/relations/basis7931.json"
theorem reductionProof7931 : EqualModuloRelations reduction7931.relations reduction7931.input reduction7931.output := by lin_cert using reduction7931.terms
theorem substitutionProof7931 : IsMapEvaluation generatorImages reduction7931.relations [966] reduction7931.output := by lin_cert using reduction7931.terms
def image7932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7932 : InImage map_16_187 image7932 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7932 : Bundle := named_bundle% "RealMapCertificates/relations/basis7932.json"
theorem reductionProof7932 : EqualModuloRelations reduction7932.relations reduction7932.input reduction7932.output := by lin_cert using reduction7932.terms
theorem substitutionProof7932 : IsMapEvaluation generatorImages reduction7932.relations [965] reduction7932.output := by lin_cert using reduction7932.terms
def image7933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7933 : InImage map_16_187 image7933 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7933 : Bundle := named_bundle% "RealMapCertificates/relations/basis7933.json"
theorem reductionProof7933 : EqualModuloRelations reduction7933.relations reduction7933.input reduction7933.output := by lin_cert using reduction7933.terms
theorem substitutionProof7933 : IsMapEvaluation generatorImages reduction7933.relations [68,288] reduction7933.output := by lin_cert using reduction7933.terms
def map_16_188 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8046 : InImage map_16_188 image8046 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8046 : Bundle := named_bundle% "RealMapCertificates/relations/basis8046.json"
theorem reductionProof8046 : EqualModuloRelations reduction8046.relations reduction8046.input reduction8046.output := by lin_cert using reduction8046.terms
theorem substitutionProof8046 : IsMapEvaluation generatorImages reduction8046.relations [987] reduction8046.output := by lin_cert using reduction8046.terms
def image8047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8047 : InImage map_16_188 image8047 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8047 : Bundle := named_bundle% "RealMapCertificates/relations/basis8047.json"
theorem reductionProof8047 : EqualModuloRelations reduction8047.relations reduction8047.input reduction8047.output := by lin_cert using reduction8047.terms
theorem substitutionProof8047 : IsMapEvaluation generatorImages reduction8047.relations [16,17,324] reduction8047.output := by lin_cert using reduction8047.terms
def map_16_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8201 : InImage map_16_189 image8201 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8201 : Bundle := named_bundle% "RealMapCertificates/relations/basis8201.json"
theorem reductionProof8201 : EqualModuloRelations reduction8201.relations reduction8201.input reduction8201.output := by lin_cert using reduction8201.terms
theorem substitutionProof8201 : IsMapEvaluation generatorImages reduction8201.relations [1004] reduction8201.output := by lin_cert using reduction8201.terms
def image8202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8202 : InImage map_16_189 image8202 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8202 : Bundle := named_bundle% "RealMapCertificates/relations/basis8202.json"
theorem reductionProof8202 : EqualModuloRelations reduction8202.relations reduction8202.input reduction8202.output := by lin_cert using reduction8202.terms
theorem substitutionProof8202 : IsMapEvaluation generatorImages reduction8202.relations [122,209] reduction8202.output := by lin_cert using reduction8202.terms
def image8203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8203 : InImage map_16_189 image8203 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8203 : Bundle := named_bundle% "RealMapCertificates/relations/basis8203.json"
theorem reductionProof8203 : EqualModuloRelations reduction8203.relations reduction8203.input reduction8203.output := by lin_cert using reduction8203.terms
theorem substitutionProof8203 : IsMapEvaluation generatorImages reduction8203.relations [0,17,17,324] reduction8203.output := by lin_cert using reduction8203.terms
def map_16_190 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image8297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8297 : InImage map_16_190 image8297 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction8297 : Bundle := named_bundle% "RealMapCertificates/relations/basis8297.json"
theorem reductionProof8297 : EqualModuloRelations reduction8297.relations reduction8297.input reduction8297.output := by lin_cert using reduction8297.terms
theorem substitutionProof8297 : IsMapEvaluation generatorImages reduction8297.relations [1019] reduction8297.output := by lin_cert using reduction8297.terms
def image8298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8298 : InImage map_16_190 image8298 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction8298 : Bundle := named_bundle% "RealMapCertificates/relations/basis8298.json"
theorem reductionProof8298 : EqualModuloRelations reduction8298.relations reduction8298.input reduction8298.output := by lin_cert using reduction8298.terms
theorem substitutionProof8298 : IsMapEvaluation generatorImages reduction8298.relations [1018] reduction8298.output := by lin_cert using reduction8298.terms
def image8299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8299 : InImage map_16_190 image8299 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction8299 : Bundle := named_bundle% "RealMapCertificates/relations/basis8299.json"
theorem reductionProof8299 : EqualModuloRelations reduction8299.relations reduction8299.input reduction8299.output := by lin_cert using reduction8299.terms
theorem substitutionProof8299 : IsMapEvaluation generatorImages reduction8299.relations [1017] reduction8299.output := by lin_cert using reduction8299.terms
def image8300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8300 : InImage map_16_190 image8300 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction8300 : Bundle := named_bundle% "RealMapCertificates/relations/basis8300.json"
theorem reductionProof8300 : EqualModuloRelations reduction8300.relations reduction8300.input reduction8300.output := by lin_cert using reduction8300.terms
theorem substitutionProof8300 : IsMapEvaluation generatorImages reduction8300.relations [75,288] reduction8300.output := by lin_cert using reduction8300.terms
def image8301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8301 : InImage map_16_190 image8301 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction8301 : Bundle := named_bundle% "RealMapCertificates/relations/basis8301.json"
theorem reductionProof8301 : EqualModuloRelations reduction8301.relations reduction8301.input reduction8301.output := by lin_cert using reduction8301.terms
theorem substitutionProof8301 : IsMapEvaluation generatorImages reduction8301.relations [1,989] reduction8301.output := by lin_cert using reduction8301.terms
def image8302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8302 : InImage map_16_190 image8302 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction8302 : Bundle := named_bundle% "RealMapCertificates/relations/basis8302.json"
theorem reductionProof8302 : EqualModuloRelations reduction8302.relations reduction8302.input reduction8302.output := by lin_cert using reduction8302.terms
theorem substitutionProof8302 : IsMapEvaluation generatorImages reduction8302.relations [1,988] reduction8302.output := by lin_cert using reduction8302.terms
def image8303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8303 : InImage map_16_190 image8303 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction8303 : Bundle := named_bundle% "RealMapCertificates/relations/basis8303.json"
theorem reductionProof8303 : EqualModuloRelations reduction8303.relations reduction8303.input reduction8303.output := by lin_cert using reduction8303.terms
theorem substitutionProof8303 : IsMapEvaluation generatorImages reduction8303.relations [0,1005] reduction8303.output := by lin_cert using reduction8303.terms
def image8304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8304 : InImage map_16_190 image8304 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction8304 : Bundle := named_bundle% "RealMapCertificates/relations/basis8304.json"
theorem reductionProof8304 : EqualModuloRelations reduction8304.relations reduction8304.input reduction8304.output := by lin_cert using reduction8304.terms
theorem substitutionProof8304 : IsMapEvaluation generatorImages reduction8304.relations [0,0,59,324] reduction8304.output := by lin_cert using reduction8304.terms
def map_16_191 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8430 : InImage map_16_191 image8430 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8430 : Bundle := named_bundle% "RealMapCertificates/relations/basis8430.json"
theorem reductionProof8430 : EqualModuloRelations reduction8430.relations reduction8430.input reduction8430.output := by lin_cert using reduction8430.terms
theorem substitutionProof8430 : IsMapEvaluation generatorImages reduction8430.relations [1046] reduction8430.output := by lin_cert using reduction8430.terms
def image8431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8431 : InImage map_16_191 image8431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8431 : Bundle := named_bundle% "RealMapCertificates/relations/basis8431.json"
theorem reductionProof8431 : EqualModuloRelations reduction8431.relations reduction8431.input reduction8431.output := by lin_cert using reduction8431.terms
theorem substitutionProof8431 : IsMapEvaluation generatorImages reduction8431.relations [8,40,324] reduction8431.output := by lin_cert using reduction8431.terms
def image8432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8432 : InImage map_16_191 image8432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8432 : Bundle := named_bundle% "RealMapCertificates/relations/basis8432.json"
theorem reductionProof8432 : EqualModuloRelations reduction8432.relations reduction8432.input reduction8432.output := by lin_cert using reduction8432.terms
theorem substitutionProof8432 : IsMapEvaluation generatorImages reduction8432.relations [2,967] reduction8432.output := by lin_cert using reduction8432.terms
def image8433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8433 : InImage map_16_191 image8433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8433 : Bundle := named_bundle% "RealMapCertificates/relations/basis8433.json"
theorem reductionProof8433 : EqualModuloRelations reduction8433.relations reduction8433.input reduction8433.output := by lin_cert using reduction8433.terms
theorem substitutionProof8433 : IsMapEvaluation generatorImages reduction8433.relations [0,1021] reduction8433.output := by lin_cert using reduction8433.terms
def image8434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8434 : InImage map_16_191 image8434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8434 : Bundle := named_bundle% "RealMapCertificates/relations/basis8434.json"
theorem reductionProof8434 : EqualModuloRelations reduction8434.relations reduction8434.input reduction8434.output := by lin_cert using reduction8434.terms
theorem substitutionProof8434 : IsMapEvaluation generatorImages reduction8434.relations [0,1020] reduction8434.output := by lin_cert using reduction8434.terms
def map_16_192 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8578 : InImage map_16_192 image8578 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8578 : Bundle := named_bundle% "RealMapCertificates/relations/basis8578.json"
theorem reductionProof8578 : EqualModuloRelations reduction8578.relations reduction8578.input reduction8578.output := by lin_cert using reduction8578.terms
theorem substitutionProof8578 : IsMapEvaluation generatorImages reduction8578.relations [1054] reduction8578.output := by lin_cert using reduction8578.terms
def image8579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8579 : InImage map_16_192 image8579 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8579 : Bundle := named_bundle% "RealMapCertificates/relations/basis8579.json"
theorem reductionProof8579 : EqualModuloRelations reduction8579.relations reduction8579.input reduction8579.output := by lin_cert using reduction8579.terms
theorem substitutionProof8579 : IsMapEvaluation generatorImages reduction8579.relations [3,3,843] reduction8579.output := by lin_cert using reduction8579.terms
def image8580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8580 : InImage map_16_192 image8580 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8580 : Bundle := named_bundle% "RealMapCertificates/relations/basis8580.json"
theorem reductionProof8580 : EqualModuloRelations reduction8580.relations reduction8580.input reduction8580.output := by lin_cert using reduction8580.terms
theorem substitutionProof8580 : IsMapEvaluation generatorImages reduction8580.relations [1,1022] reduction8580.output := by lin_cert using reduction8580.terms
def image8581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8581 : InImage map_16_192 image8581 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8581 : Bundle := named_bundle% "RealMapCertificates/relations/basis8581.json"
theorem reductionProof8581 : EqualModuloRelations reduction8581.relations reduction8581.input reduction8581.output := by lin_cert using reduction8581.terms
theorem substitutionProof8581 : IsMapEvaluation generatorImages reduction8581.relations [1,43,485] reduction8581.output := by lin_cert using reduction8581.terms
def image8582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8582 : InImage map_16_192 image8582 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8582 : Bundle := named_bundle% "RealMapCertificates/relations/basis8582.json"
theorem reductionProof8582 : EqualModuloRelations reduction8582.relations reduction8582.input reduction8582.output := by lin_cert using reduction8582.terms
theorem substitutionProof8582 : IsMapEvaluation generatorImages reduction8582.relations [0,17,20,324] reduction8582.output := by lin_cert using reduction8582.terms
end RealMapCertificates
