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
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 43 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 76 => []
  | 90 => []
  | 92 => []
  | 107 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 174 => []
  | 190 => []
  | 197 => []
  | 324 => []
  | 333 => []
  | 351 => []
  | 352 => []
  | 373 => []
  | 392 => []
  | 450 => []
  | 485 => []
  | 543 => []
  | 673 => []
  | 912 => []
  | 967 => []
  | 988 => []
  | 990 => []
  | 1020 => []
  | 1055 => []
  | 1056 => []
  | 1057 => []
  | 1069 => []
  | 1070 => []
  | 1071 => []
  | 1072 => []
  | 1087 => []
  | 1088 => []
  | 1090 => []
  | 1091 => []
  | 1098 => []
  | 1112 => []
  | 1113 => []
  | 1129 => []
  | 1131 => []
  | 1132 => []
  | 1133 => []
  | 1157 => []
  | 1158 => []
  | 1159 => []
  | 1177 => []
  | 1186 => []
  | 1187 => []
  | 1188 => []
  | 1190 => []
  | 1191 => []
  | 1192 => []
  | 1210 => []
  | 1224 => []
  | 1248 => []
  | 1249 => []
  | 1266 => []
  | 1267 => []
  | 1268 => []
  | 1269 => []
  | 1270 => []
  | 1293 => []
  | 1294 => []
  | 1295 => []
  | 1296 => []
  | 1308 => []
  | 1309 => []
  | 1325 => []
  | 1326 => []
  | 1328 => []
  | 1339 => []
  | 1340 => []
  | 1352 => []
  | 1353 => []
  | 1373 => []
  | 1374 => []
  | 1375 => []
  | _ => []
def map_16_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8674 : InImage map_16_193 image8674 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8674 : Bundle := named_bundle% "RealMapCertificates/relations/basis8674.json"
theorem reductionProof8674 : EqualModuloRelations reduction8674.relations reduction8674.input reduction8674.output := by lin_cert using reduction8674.terms
theorem substitutionProof8674 : IsMapEvaluation generatorImages reduction8674.relations [1070] reduction8674.output := by lin_cert using reduction8674.terms
def image8675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8675 : InImage map_16_193 image8675 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8675 : Bundle := named_bundle% "RealMapCertificates/relations/basis8675.json"
theorem reductionProof8675 : EqualModuloRelations reduction8675.relations reduction8675.input reduction8675.output := by lin_cert using reduction8675.terms
theorem substitutionProof8675 : IsMapEvaluation generatorImages reduction8675.relations [1069] reduction8675.output := by lin_cert using reduction8675.terms
def image8676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8676 : InImage map_16_193 image8676 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8676 : Bundle := named_bundle% "RealMapCertificates/relations/basis8676.json"
theorem reductionProof8676 : EqualModuloRelations reduction8676.relations reduction8676.input reduction8676.output := by lin_cert using reduction8676.terms
theorem substitutionProof8676 : IsMapEvaluation generatorImages reduction8676.relations [67,333] reduction8676.output := by lin_cert using reduction8676.terms
def map_16_194 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8816 : InImage map_16_194 image8816 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8816 : Bundle := named_bundle% "RealMapCertificates/relations/basis8816.json"
theorem reductionProof8816 : EqualModuloRelations reduction8816.relations reduction8816.input reduction8816.output := by lin_cert using reduction8816.terms
theorem substitutionProof8816 : IsMapEvaluation generatorImages reduction8816.relations [1087] reduction8816.output := by lin_cert using reduction8816.terms
def image8817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8817 : InImage map_16_194 image8817 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8817 : Bundle := named_bundle% "RealMapCertificates/relations/basis8817.json"
theorem reductionProof8817 : EqualModuloRelations reduction8817.relations reduction8817.input reduction8817.output := by lin_cert using reduction8817.terms
theorem substitutionProof8817 : IsMapEvaluation generatorImages reduction8817.relations [8,8,17,324] reduction8817.output := by lin_cert using reduction8817.terms
def image8818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8818 : InImage map_16_194 image8818 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8818 : Bundle := named_bundle% "RealMapCertificates/relations/basis8818.json"
theorem reductionProof8818 : EqualModuloRelations reduction8818.relations reduction8818.input reduction8818.output := by lin_cert using reduction8818.terms
theorem substitutionProof8818 : IsMapEvaluation generatorImages reduction8818.relations [0,1071] reduction8818.output := by lin_cert using reduction8818.terms
def image8819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8819 : InImage map_16_194 image8819 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8819 : Bundle := named_bundle% "RealMapCertificates/relations/basis8819.json"
theorem reductionProof8819 : EqualModuloRelations reduction8819.relations reduction8819.input reduction8819.output := by lin_cert using reduction8819.terms
theorem substitutionProof8819 : IsMapEvaluation generatorImages reduction8819.relations [0,0,1056] reduction8819.output := by lin_cert using reduction8819.terms
def image8820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8820 : InImage map_16_194 image8820 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8820 : Bundle := named_bundle% "RealMapCertificates/relations/basis8820.json"
theorem reductionProof8820 : EqualModuloRelations reduction8820.relations reduction8820.input reduction8820.output := by lin_cert using reduction8820.terms
theorem substitutionProof8820 : IsMapEvaluation generatorImages reduction8820.relations [0,0,1055] reduction8820.output := by lin_cert using reduction8820.terms
def map_16_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8978 : InImage map_16_195 image8978 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8978 : Bundle := named_bundle% "RealMapCertificates/relations/basis8978.json"
theorem reductionProof8978 : EqualModuloRelations reduction8978.relations reduction8978.input reduction8978.output := by lin_cert using reduction8978.terms
theorem substitutionProof8978 : IsMapEvaluation generatorImages reduction8978.relations [1,1072] reduction8978.output := by lin_cert using reduction8978.terms
def image8979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8979 : InImage map_16_195 image8979 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8979 : Bundle := named_bundle% "RealMapCertificates/relations/basis8979.json"
theorem reductionProof8979 : EqualModuloRelations reduction8979.relations reduction8979.input reduction8979.output := by lin_cert using reduction8979.terms
theorem substitutionProof8979 : IsMapEvaluation generatorImages reduction8979.relations [0,1088] reduction8979.output := by lin_cert using reduction8979.terms
def image8980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8980 : InImage map_16_195 image8980 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8980 : Bundle := named_bundle% "RealMapCertificates/relations/basis8980.json"
theorem reductionProof8980 : EqualModuloRelations reduction8980.relations reduction8980.input reduction8980.output := by lin_cert using reduction8980.terms
theorem substitutionProof8980 : IsMapEvaluation generatorImages reduction8980.relations [0,0,0,1057] reduction8980.output := by lin_cert using reduction8980.terms
def map_16_196 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image9091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9091 : InImage map_16_196 image9091 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction9091 : Bundle := named_bundle% "RealMapCertificates/relations/basis9091.json"
theorem reductionProof9091 : EqualModuloRelations reduction9091.relations reduction9091.input reduction9091.output := by lin_cert using reduction9091.terms
theorem substitutionProof9091 : IsMapEvaluation generatorImages reduction9091.relations [1113] reduction9091.output := by lin_cert using reduction9091.terms
def image9092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9092 : InImage map_16_196 image9092 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction9092 : Bundle := named_bundle% "RealMapCertificates/relations/basis9092.json"
theorem reductionProof9092 : EqualModuloRelations reduction9092.relations reduction9092.input reduction9092.output := by lin_cert using reduction9092.terms
theorem substitutionProof9092 : IsMapEvaluation generatorImages reduction9092.relations [1112] reduction9092.output := by lin_cert using reduction9092.terms
def image9093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9093 : InImage map_16_196 image9093 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction9093 : Bundle := named_bundle% "RealMapCertificates/relations/basis9093.json"
theorem reductionProof9093 : EqualModuloRelations reduction9093.relations reduction9093.input reduction9093.output := by lin_cert using reduction9093.terms
theorem substitutionProof9093 : IsMapEvaluation generatorImages reduction9093.relations [2,2,990] reduction9093.output := by lin_cert using reduction9093.terms
def image9094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9094 : InImage map_16_196 image9094 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction9094 : Bundle := named_bundle% "RealMapCertificates/relations/basis9094.json"
theorem reductionProof9094 : EqualModuloRelations reduction9094.relations reduction9094.input reduction9094.output := by lin_cert using reduction9094.terms
theorem substitutionProof9094 : IsMapEvaluation generatorImages reduction9094.relations [1,1088] reduction9094.output := by lin_cert using reduction9094.terms
def image9095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9095 : InImage map_16_196 image9095 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction9095 : Bundle := named_bundle% "RealMapCertificates/relations/basis9095.json"
theorem reductionProof9095 : EqualModuloRelations reduction9095.relations reduction9095.input reduction9095.output := by lin_cert using reduction9095.terms
theorem substitutionProof9095 : IsMapEvaluation generatorImages reduction9095.relations [1,1,1055] reduction9095.output := by lin_cert using reduction9095.terms
def image9096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9096 : InImage map_16_196 image9096 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction9096 : Bundle := named_bundle% "RealMapCertificates/relations/basis9096.json"
theorem reductionProof9096 : EqualModuloRelations reduction9096.relations reduction9096.input reduction9096.output := by lin_cert using reduction9096.terms
theorem substitutionProof9096 : IsMapEvaluation generatorImages reduction9096.relations [0,67,352] reduction9096.output := by lin_cert using reduction9096.terms
def image9097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9097 : InImage map_16_196 image9097 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction9097 : Bundle := named_bundle% "RealMapCertificates/relations/basis9097.json"
theorem reductionProof9097 : EqualModuloRelations reduction9097.relations reduction9097.input reduction9097.output := by lin_cert using reduction9097.terms
theorem substitutionProof9097 : IsMapEvaluation generatorImages reduction9097.relations [0,0,0,0,0,64,324] reduction9097.output := by lin_cert using reduction9097.terms
def map_16_197 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9242 : InImage map_16_197 image9242 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9242 : Bundle := named_bundle% "RealMapCertificates/relations/basis9242.json"
theorem reductionProof9242 : EqualModuloRelations reduction9242.relations reduction9242.input reduction9242.output := by lin_cert using reduction9242.terms
theorem substitutionProof9242 : IsMapEvaluation generatorImages reduction9242.relations [1129] reduction9242.output := by lin_cert using reduction9242.terms
def image9243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9243 : InImage map_16_197 image9243 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9243 : Bundle := named_bundle% "RealMapCertificates/relations/basis9243.json"
theorem reductionProof9243 : EqualModuloRelations reduction9243.relations reduction9243.input reduction9243.output := by lin_cert using reduction9243.terms
theorem substitutionProof9243 : IsMapEvaluation generatorImages reduction9243.relations [67,373] reduction9243.output := by lin_cert using reduction9243.terms
def image9244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9244 : InImage map_16_197 image9244 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9244 : Bundle := named_bundle% "RealMapCertificates/relations/basis9244.json"
theorem reductionProof9244 : EqualModuloRelations reduction9244.relations reduction9244.input reduction9244.output := by lin_cert using reduction9244.terms
theorem substitutionProof9244 : IsMapEvaluation generatorImages reduction9244.relations [8,8,20,324] reduction9244.output := by lin_cert using reduction9244.terms
def image9245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9245 : InImage map_16_197 image9245 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9245 : Bundle := named_bundle% "RealMapCertificates/relations/basis9245.json"
theorem reductionProof9245 : EqualModuloRelations reduction9245.relations reduction9245.input reduction9245.output := by lin_cert using reduction9245.terms
theorem substitutionProof9245 : IsMapEvaluation generatorImages reduction9245.relations [0,43,543] reduction9245.output := by lin_cert using reduction9245.terms
def image9246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9246 : InImage map_16_197 image9246 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9246 : Bundle := named_bundle% "RealMapCertificates/relations/basis9246.json"
theorem reductionProof9246 : EqualModuloRelations reduction9246.relations reduction9246.input reduction9246.output := by lin_cert using reduction9246.terms
theorem substitutionProof9246 : IsMapEvaluation generatorImages reduction9246.relations [0,0,1098] reduction9246.output := by lin_cert using reduction9246.terms
def image9247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9247 : InImage map_16_197 image9247 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9247 : Bundle := named_bundle% "RealMapCertificates/relations/basis9247.json"
theorem reductionProof9247 : EqualModuloRelations reduction9247.relations reduction9247.input reduction9247.output := by lin_cert using reduction9247.terms
theorem substitutionProof9247 : IsMapEvaluation generatorImages reduction9247.relations [0,0,0,0,0,66,324] reduction9247.output := by lin_cert using reduction9247.terms
def map_16_198 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9429 : InImage map_16_198 image9429 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9429 : Bundle := named_bundle% "RealMapCertificates/relations/basis9429.json"
theorem reductionProof9429 : EqualModuloRelations reduction9429.relations reduction9429.input reduction9429.output := by lin_cert using reduction9429.terms
theorem substitutionProof9429 : IsMapEvaluation generatorImages reduction9429.relations [1157] reduction9429.output := by lin_cert using reduction9429.terms
def image9430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9430 : InImage map_16_198 image9430 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9430 : Bundle := named_bundle% "RealMapCertificates/relations/basis9430.json"
theorem reductionProof9430 : EqualModuloRelations reduction9430.relations reduction9430.input reduction9430.output := by lin_cert using reduction9430.terms
theorem substitutionProof9430 : IsMapEvaluation generatorImages reduction9430.relations [3,1020] reduction9430.output := by lin_cert using reduction9430.terms
def image9431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9431 : InImage map_16_198 image9431 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9431 : Bundle := named_bundle% "RealMapCertificates/relations/basis9431.json"
theorem reductionProof9431 : EqualModuloRelations reduction9431.relations reduction9431.input reduction9431.output := by lin_cert using reduction9431.terms
theorem substitutionProof9431 : IsMapEvaluation generatorImages reduction9431.relations [2,1088] reduction9431.output := by lin_cert using reduction9431.terms
def image9432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9432 : InImage map_16_198 image9432 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9432 : Bundle := named_bundle% "RealMapCertificates/relations/basis9432.json"
theorem reductionProof9432 : EqualModuloRelations reduction9432.relations reduction9432.input reduction9432.output := by lin_cert using reduction9432.terms
theorem substitutionProof9432 : IsMapEvaluation generatorImages reduction9432.relations [1,1,1090] reduction9432.output := by lin_cert using reduction9432.terms
def image9433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9433 : InImage map_16_198 image9433 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9433 : Bundle := named_bundle% "RealMapCertificates/relations/basis9433.json"
theorem reductionProof9433 : EqualModuloRelations reduction9433.relations reduction9433.input reduction9433.output := by lin_cert using reduction9433.terms
theorem substitutionProof9433 : IsMapEvaluation generatorImages reduction9433.relations [0,1131] reduction9433.output := by lin_cert using reduction9433.terms
def image9434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9434 : InImage map_16_198 image9434 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9434 : Bundle := named_bundle% "RealMapCertificates/relations/basis9434.json"
theorem reductionProof9434 : EqualModuloRelations reduction9434.relations reduction9434.input reduction9434.output := by lin_cert using reduction9434.terms
theorem substitutionProof9434 : IsMapEvaluation generatorImages reduction9434.relations [0,0,2,1057] reduction9434.output := by lin_cert using reduction9434.terms
def map_16_199 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9565 : InImage map_16_199 image9565 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9565 : Bundle := named_bundle% "RealMapCertificates/relations/basis9565.json"
theorem reductionProof9565 : EqualModuloRelations reduction9565.relations reduction9565.input reduction9565.output := by lin_cert using reduction9565.terms
theorem substitutionProof9565 : IsMapEvaluation generatorImages reduction9565.relations [1177] reduction9565.output := by lin_cert using reduction9565.terms
def image9566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9566 : InImage map_16_199 image9566 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9566 : Bundle := named_bundle% "RealMapCertificates/relations/basis9566.json"
theorem reductionProof9566 : EqualModuloRelations reduction9566.relations reduction9566.input reduction9566.output := by lin_cert using reduction9566.terms
theorem substitutionProof9566 : IsMapEvaluation generatorImages reduction9566.relations [0,1158] reduction9566.output := by lin_cert using reduction9566.terms
def image9567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9567 : InImage map_16_199 image9567 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9567 : Bundle := named_bundle% "RealMapCertificates/relations/basis9567.json"
theorem reductionProof9567 : EqualModuloRelations reduction9567.relations reduction9567.input reduction9567.output := by lin_cert using reduction9567.terms
theorem substitutionProof9567 : IsMapEvaluation generatorImages reduction9567.relations [0,67,392] reduction9567.output := by lin_cert using reduction9567.terms
def image9568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9568 : InImage map_16_199 image9568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9568 : Bundle := named_bundle% "RealMapCertificates/relations/basis9568.json"
theorem reductionProof9568 : EqualModuloRelations reduction9568.relations reduction9568.input reduction9568.output := by lin_cert using reduction9568.terms
theorem substitutionProof9568 : IsMapEvaluation generatorImages reduction9568.relations [0,0,1133] reduction9568.output := by lin_cert using reduction9568.terms
def map_16_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9713 : InImage map_16_200 image9713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9713 : Bundle := named_bundle% "RealMapCertificates/relations/basis9713.json"
theorem reductionProof9713 : EqualModuloRelations reduction9713.relations reduction9713.input reduction9713.output := by lin_cert using reduction9713.terms
theorem substitutionProof9713 : IsMapEvaluation generatorImages reduction9713.relations [1186] reduction9713.output := by lin_cert using reduction9713.terms
def image9714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9714 : InImage map_16_200 image9714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9714 : Bundle := named_bundle% "RealMapCertificates/relations/basis9714.json"
theorem reductionProof9714 : EqualModuloRelations reduction9714.relations reduction9714.input reduction9714.output := by lin_cert using reduction9714.terms
theorem substitutionProof9714 : IsMapEvaluation generatorImages reduction9714.relations [8,8,22,324] reduction9714.output := by lin_cert using reduction9714.terms
def image9715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9715 : InImage map_16_200 image9715 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9715 : Bundle := named_bundle% "RealMapCertificates/relations/basis9715.json"
theorem reductionProof9715 : EqualModuloRelations reduction9715.relations reduction9715.input reduction9715.output := by lin_cert using reduction9715.terms
theorem substitutionProof9715 : IsMapEvaluation generatorImages reduction9715.relations [1,1158] reduction9715.output := by lin_cert using reduction9715.terms
def image9716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9716 : InImage map_16_200 image9716 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9716 : Bundle := named_bundle% "RealMapCertificates/relations/basis9716.json"
theorem reductionProof9716 : EqualModuloRelations reduction9716.relations reduction9716.input reduction9716.output := by lin_cert using reduction9716.terms
theorem substitutionProof9716 : IsMapEvaluation generatorImages reduction9716.relations [0,0,1159] reduction9716.output := by lin_cert using reduction9716.terms
def map_16_201 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9906 : InImage map_16_201 image9906 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9906 : Bundle := named_bundle% "RealMapCertificates/relations/basis9906.json"
theorem reductionProof9906 : EqualModuloRelations reduction9906.relations reduction9906.input reduction9906.output := by lin_cert using reduction9906.terms
theorem substitutionProof9906 : IsMapEvaluation generatorImages reduction9906.relations [0,1188] reduction9906.output := by lin_cert using reduction9906.terms
def image9907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9907 : InImage map_16_201 image9907 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9907 : Bundle := named_bundle% "RealMapCertificates/relations/basis9907.json"
theorem reductionProof9907 : EqualModuloRelations reduction9907.relations reduction9907.input reduction9907.output := by lin_cert using reduction9907.terms
theorem substitutionProof9907 : IsMapEvaluation generatorImages reduction9907.relations [0,1187] reduction9907.output := by lin_cert using reduction9907.terms
def image9908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9908 : InImage map_16_201 image9908 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9908 : Bundle := named_bundle% "RealMapCertificates/relations/basis9908.json"
theorem reductionProof9908 : EqualModuloRelations reduction9908.relations reduction9908.input reduction9908.output := by lin_cert using reduction9908.terms
theorem substitutionProof9908 : IsMapEvaluation generatorImages reduction9908.relations [0,3,1056] reduction9908.output := by lin_cert using reduction9908.terms
def map_16_202 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10036 : InImage map_16_202 image10036 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10036 : Bundle := named_bundle% "RealMapCertificates/relations/basis10036.json"
theorem reductionProof10036 : EqualModuloRelations reduction10036.relations reduction10036.input reduction10036.output := by lin_cert using reduction10036.terms
theorem substitutionProof10036 : IsMapEvaluation generatorImages reduction10036.relations [1224] reduction10036.output := by lin_cert using reduction10036.terms
def image10037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10037 : InImage map_16_202 image10037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10037 : Bundle := named_bundle% "RealMapCertificates/relations/basis10037.json"
theorem reductionProof10037 : EqualModuloRelations reduction10037.relations reduction10037.input reduction10037.output := by lin_cert using reduction10037.terms
theorem substitutionProof10037 : IsMapEvaluation generatorImages reduction10037.relations [3,1088] reduction10037.output := by lin_cert using reduction10037.terms
def image10038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10038 : InImage map_16_202 image10038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10038 : Bundle := named_bundle% "RealMapCertificates/relations/basis10038.json"
theorem reductionProof10038 : EqualModuloRelations reduction10038.relations reduction10038.input reduction10038.output := by lin_cert using reduction10038.terms
theorem substitutionProof10038 : IsMapEvaluation generatorImages reduction10038.relations [1,1187] reduction10038.output := by lin_cert using reduction10038.terms
def image10039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10039 : InImage map_16_202 image10039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10039 : Bundle := named_bundle% "RealMapCertificates/relations/basis10039.json"
theorem reductionProof10039 : EqualModuloRelations reduction10039.relations reduction10039.input reduction10039.output := by lin_cert using reduction10039.terms
theorem substitutionProof10039 : IsMapEvaluation generatorImages reduction10039.relations [0,0,1190] reduction10039.output := by lin_cert using reduction10039.terms
def map_16_203 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image10212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10212 : InImage map_16_203 image10212 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction10212 : Bundle := named_bundle% "RealMapCertificates/relations/basis10212.json"
theorem reductionProof10212 : EqualModuloRelations reduction10212.relations reduction10212.input reduction10212.output := by lin_cert using reduction10212.terms
theorem substitutionProof10212 : IsMapEvaluation generatorImages reduction10212.relations [1248] reduction10212.output := by lin_cert using reduction10212.terms
def image10213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10213 : InImage map_16_203 image10213 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction10213 : Bundle := named_bundle% "RealMapCertificates/relations/basis10213.json"
theorem reductionProof10213 : EqualModuloRelations reduction10213.relations reduction10213.input reduction10213.output := by lin_cert using reduction10213.terms
theorem substitutionProof10213 : IsMapEvaluation generatorImages reduction10213.relations [174,197] reduction10213.output := by lin_cert using reduction10213.terms
def image10214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10214 : InImage map_16_203 image10214 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction10214 : Bundle := named_bundle% "RealMapCertificates/relations/basis10214.json"
theorem reductionProof10214 : EqualModuloRelations reduction10214.relations reduction10214.input reduction10214.output := by lin_cert using reduction10214.terms
theorem substitutionProof10214 : IsMapEvaluation generatorImages reduction10214.relations [92,351] reduction10214.output := by lin_cert using reduction10214.terms
def image10215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10215 : InImage map_16_203 image10215 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction10215 : Bundle := named_bundle% "RealMapCertificates/relations/basis10215.json"
theorem reductionProof10215 : EqualModuloRelations reduction10215.relations reduction10215.input reduction10215.output := by lin_cert using reduction10215.terms
theorem substitutionProof10215 : IsMapEvaluation generatorImages reduction10215.relations [9,912] reduction10215.output := by lin_cert using reduction10215.terms
def image10216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10216 : InImage map_16_203 image10216 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction10216 : Bundle := named_bundle% "RealMapCertificates/relations/basis10216.json"
theorem reductionProof10216 : EqualModuloRelations reduction10216.relations reduction10216.input reduction10216.output := by lin_cert using reduction10216.terms
theorem substitutionProof10216 : IsMapEvaluation generatorImages reduction10216.relations [8,8,29,324] reduction10216.output := by lin_cert using reduction10216.terms
def image10217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10217 : InImage map_16_203 image10217 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction10217 : Bundle := named_bundle% "RealMapCertificates/relations/basis10217.json"
theorem reductionProof10217 : EqualModuloRelations reduction10217.relations reduction10217.input reduction10217.output := by lin_cert using reduction10217.terms
theorem substitutionProof10217 : IsMapEvaluation generatorImages reduction10217.relations [7,967] reduction10217.output := by lin_cert using reduction10217.terms
def image10218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10218 : InImage map_16_203 image10218 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction10218 : Bundle := named_bundle% "RealMapCertificates/relations/basis10218.json"
theorem reductionProof10218 : EqualModuloRelations reduction10218.relations reduction10218.input reduction10218.output := by lin_cert using reduction10218.terms
theorem substitutionProof10218 : IsMapEvaluation generatorImages reduction10218.relations [4,1057] reduction10218.output := by lin_cert using reduction10218.terms
def image10219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10219 : InImage map_16_203 image10219 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction10219 : Bundle := named_bundle% "RealMapCertificates/relations/basis10219.json"
theorem reductionProof10219 : EqualModuloRelations reduction10219.relations reduction10219.input reduction10219.output := by lin_cert using reduction10219.terms
theorem substitutionProof10219 : IsMapEvaluation generatorImages reduction10219.relations [3,67,352] reduction10219.output := by lin_cert using reduction10219.terms
def image10220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10220 : InImage map_16_203 image10220 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction10220 : Bundle := named_bundle% "RealMapCertificates/relations/basis10220.json"
theorem reductionProof10220 : EqualModuloRelations reduction10220.relations reduction10220.input reduction10220.output := by lin_cert using reduction10220.terms
theorem substitutionProof10220 : IsMapEvaluation generatorImages reduction10220.relations [1,1210] reduction10220.output := by lin_cert using reduction10220.terms
def map_16_204 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10417 : InImage map_16_204 image10417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10417 : Bundle := named_bundle% "RealMapCertificates/relations/basis10417.json"
theorem reductionProof10417 : EqualModuloRelations reduction10417.relations reduction10417.input reduction10417.output := by lin_cert using reduction10417.terms
theorem substitutionProof10417 : IsMapEvaluation generatorImages reduction10417.relations [1267] reduction10417.output := by lin_cert using reduction10417.terms
def image10418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10418 : InImage map_16_204 image10418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10418 : Bundle := named_bundle% "RealMapCertificates/relations/basis10418.json"
theorem reductionProof10418 : EqualModuloRelations reduction10418.relations reduction10418.input reduction10418.output := by lin_cert using reduction10418.terms
theorem substitutionProof10418 : IsMapEvaluation generatorImages reduction10418.relations [1266] reduction10418.output := by lin_cert using reduction10418.terms
def image10419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10419 : InImage map_16_204 image10419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10419 : Bundle := named_bundle% "RealMapCertificates/relations/basis10419.json"
theorem reductionProof10419 : EqualModuloRelations reduction10419.relations reduction10419.input reduction10419.output := by lin_cert using reduction10419.terms
theorem substitutionProof10419 : IsMapEvaluation generatorImages reduction10419.relations [190,190] reduction10419.output := by lin_cert using reduction10419.terms
def image10420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10420 : InImage map_16_204 image10420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10420 : Bundle := named_bundle% "RealMapCertificates/relations/basis10420.json"
theorem reductionProof10420 : EqualModuloRelations reduction10420.relations reduction10420.input reduction10420.output := by lin_cert using reduction10420.terms
theorem substitutionProof10420 : IsMapEvaluation generatorImages reduction10420.relations [7,988] reduction10420.output := by lin_cert using reduction10420.terms
def image10421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10421 : InImage map_16_204 image10421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10421 : Bundle := named_bundle% "RealMapCertificates/relations/basis10421.json"
theorem reductionProof10421 : EqualModuloRelations reduction10421.relations reduction10421.input reduction10421.output := by lin_cert using reduction10421.terms
theorem substitutionProof10421 : IsMapEvaluation generatorImages reduction10421.relations [0,1249] reduction10421.output := by lin_cert using reduction10421.terms
def image10422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10422 : InImage map_16_204 image10422 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10422 : Bundle := named_bundle% "RealMapCertificates/relations/basis10422.json"
theorem reductionProof10422 : EqualModuloRelations reduction10422.relations reduction10422.input reduction10422.output := by lin_cert using reduction10422.terms
theorem substitutionProof10422 : IsMapEvaluation generatorImages reduction10422.relations [0,0,3,1091] reduction10422.output := by lin_cert using reduction10422.terms
def map_16_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10559 : InImage map_16_205 image10559 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10559 : Bundle := named_bundle% "RealMapCertificates/relations/basis10559.json"
theorem reductionProof10559 : EqualModuloRelations reduction10559.relations reduction10559.input reduction10559.output := by lin_cert using reduction10559.terms
theorem substitutionProof10559 : IsMapEvaluation generatorImages reduction10559.relations [1293] reduction10559.output := by lin_cert using reduction10559.terms
def image10560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10560 : InImage map_16_205 image10560 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10560 : Bundle := named_bundle% "RealMapCertificates/relations/basis10560.json"
theorem reductionProof10560 : EqualModuloRelations reduction10560.relations reduction10560.input reduction10560.output := by lin_cert using reduction10560.terms
theorem substitutionProof10560 : IsMapEvaluation generatorImages reduction10560.relations [5,64,324] reduction10560.output := by lin_cert using reduction10560.terms
def image10561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10561 : InImage map_16_205 image10561 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10561 : Bundle := named_bundle% "RealMapCertificates/relations/basis10561.json"
theorem reductionProof10561 : EqualModuloRelations reduction10561.relations reduction10561.input reduction10561.output := by lin_cert using reduction10561.terms
theorem substitutionProof10561 : IsMapEvaluation generatorImages reduction10561.relations [3,1131] reduction10561.output := by lin_cert using reduction10561.terms
def image10562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10562 : InImage map_16_205 image10562 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10562 : Bundle := named_bundle% "RealMapCertificates/relations/basis10562.json"
theorem reductionProof10562 : EqualModuloRelations reduction10562.relations reduction10562.input reduction10562.output := by lin_cert using reduction10562.terms
theorem substitutionProof10562 : IsMapEvaluation generatorImages reduction10562.relations [0,1269] reduction10562.output := by lin_cert using reduction10562.terms
def image10563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10563 : InImage map_16_205 image10563 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10563 : Bundle := named_bundle% "RealMapCertificates/relations/basis10563.json"
theorem reductionProof10563 : EqualModuloRelations reduction10563.relations reduction10563.input reduction10563.output := by lin_cert using reduction10563.terms
theorem substitutionProof10563 : IsMapEvaluation generatorImages reduction10563.relations [0,1268] reduction10563.output := by lin_cert using reduction10563.terms
def image10564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10564 : InImage map_16_205 image10564 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10564 : Bundle := named_bundle% "RealMapCertificates/relations/basis10564.json"
theorem reductionProof10564 : EqualModuloRelations reduction10564.relations reduction10564.input reduction10564.output := by lin_cert using reduction10564.terms
theorem substitutionProof10564 : IsMapEvaluation generatorImages reduction10564.relations [0,0,0,0,0,90,324] reduction10564.output := by lin_cert using reduction10564.terms
def map_16_206 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image10751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10751 : InImage map_16_206 image10751 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction10751 : Bundle := named_bundle% "RealMapCertificates/relations/basis10751.json"
theorem reductionProof10751 : EqualModuloRelations reduction10751.relations reduction10751.input reduction10751.output := by lin_cert using reduction10751.terms
theorem substitutionProof10751 : IsMapEvaluation generatorImages reduction10751.relations [1308] reduction10751.output := by lin_cert using reduction10751.terms
def image10752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10752 : InImage map_16_206 image10752 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction10752 : Bundle := named_bundle% "RealMapCertificates/relations/basis10752.json"
theorem reductionProof10752 : EqualModuloRelations reduction10752.relations reduction10752.input reduction10752.output := by lin_cert using reduction10752.terms
theorem substitutionProof10752 : IsMapEvaluation generatorImages reduction10752.relations [13,912] reduction10752.output := by lin_cert using reduction10752.terms
def image10753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10753 : InImage map_16_206 image10753 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction10753 : Bundle := named_bundle% "RealMapCertificates/relations/basis10753.json"
theorem reductionProof10753 : EqualModuloRelations reduction10753.relations reduction10753.input reduction10753.output := by lin_cert using reduction10753.terms
theorem substitutionProof10753 : IsMapEvaluation generatorImages reduction10753.relations [8,8,32,324] reduction10753.output := by lin_cert using reduction10753.terms
def image10754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10754 : InImage map_16_206 image10754 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction10754 : Bundle := named_bundle% "RealMapCertificates/relations/basis10754.json"
theorem reductionProof10754 : EqualModuloRelations reduction10754.relations reduction10754.input reduction10754.output := by lin_cert using reduction10754.terms
theorem substitutionProof10754 : IsMapEvaluation generatorImages reduction10754.relations [1,1269] reduction10754.output := by lin_cert using reduction10754.terms
def image10755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10755 : InImage map_16_206 image10755 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction10755 : Bundle := named_bundle% "RealMapCertificates/relations/basis10755.json"
theorem reductionProof10755 : EqualModuloRelations reduction10755.relations reduction10755.input reduction10755.output := by lin_cert using reduction10755.terms
theorem substitutionProof10755 : IsMapEvaluation generatorImages reduction10755.relations [1,1268] reduction10755.output := by lin_cert using reduction10755.terms
def image10756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10756 : InImage map_16_206 image10756 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction10756 : Bundle := named_bundle% "RealMapCertificates/relations/basis10756.json"
theorem reductionProof10756 : EqualModuloRelations reduction10756.relations reduction10756.input reduction10756.output := by lin_cert using reduction10756.terms
theorem substitutionProof10756 : IsMapEvaluation generatorImages reduction10756.relations [0,1295] reduction10756.output := by lin_cert using reduction10756.terms
def image10757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10757 : InImage map_16_206 image10757 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction10757 : Bundle := named_bundle% "RealMapCertificates/relations/basis10757.json"
theorem reductionProof10757 : EqualModuloRelations reduction10757.relations reduction10757.input reduction10757.output := by lin_cert using reduction10757.terms
theorem substitutionProof10757 : IsMapEvaluation generatorImages reduction10757.relations [0,1294] reduction10757.output := by lin_cert using reduction10757.terms
def image10758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10758 : InImage map_16_206 image10758 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction10758 : Bundle := named_bundle% "RealMapCertificates/relations/basis10758.json"
theorem reductionProof10758 : EqualModuloRelations reduction10758.relations reduction10758.input reduction10758.output := by lin_cert using reduction10758.terms
theorem substitutionProof10758 : IsMapEvaluation generatorImages reduction10758.relations [0,3,1133] reduction10758.output := by lin_cert using reduction10758.terms
def image10759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10759 : InImage map_16_206 image10759 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction10759 : Bundle := named_bundle% "RealMapCertificates/relations/basis10759.json"
theorem reductionProof10759 : EqualModuloRelations reduction10759.relations reduction10759.input reduction10759.output := by lin_cert using reduction10759.terms
theorem substitutionProof10759 : IsMapEvaluation generatorImages reduction10759.relations [0,3,1132] reduction10759.output := by lin_cert using reduction10759.terms
def image10760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10760 : InImage map_16_206 image10760 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction10760 : Bundle := named_bundle% "RealMapCertificates/relations/basis10760.json"
theorem reductionProof10760 : EqualModuloRelations reduction10760.relations reduction10760.input reduction10760.output := by lin_cert using reduction10760.terms
theorem substitutionProof10760 : IsMapEvaluation generatorImages reduction10760.relations [0,0,1270] reduction10760.output := by lin_cert using reduction10760.terms
def map_16_207 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10958 : InImage map_16_207 image10958 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10958 : Bundle := named_bundle% "RealMapCertificates/relations/basis10958.json"
theorem reductionProof10958 : EqualModuloRelations reduction10958.relations reduction10958.input reduction10958.output := by lin_cert using reduction10958.terms
theorem substitutionProof10958 : IsMapEvaluation generatorImages reduction10958.relations [1325] reduction10958.output := by lin_cert using reduction10958.terms
def image10959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10959 : InImage map_16_207 image10959 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10959 : Bundle := named_bundle% "RealMapCertificates/relations/basis10959.json"
theorem reductionProof10959 : EqualModuloRelations reduction10959.relations reduction10959.input reduction10959.output := by lin_cert using reduction10959.terms
theorem substitutionProof10959 : IsMapEvaluation generatorImages reduction10959.relations [107,352] reduction10959.output := by lin_cert using reduction10959.terms
def image10960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10960 : InImage map_16_207 image10960 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10960 : Bundle := named_bundle% "RealMapCertificates/relations/basis10960.json"
theorem reductionProof10960 : EqualModuloRelations reduction10960.relations reduction10960.input reduction10960.output := by lin_cert using reduction10960.terms
theorem substitutionProof10960 : IsMapEvaluation generatorImages reduction10960.relations [2,1249] reduction10960.output := by lin_cert using reduction10960.terms
def image10961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10961 : InImage map_16_207 image10961 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10961 : Bundle := named_bundle% "RealMapCertificates/relations/basis10961.json"
theorem reductionProof10961 : EqualModuloRelations reduction10961.relations reduction10961.input reduction10961.output := by lin_cert using reduction10961.terms
theorem substitutionProof10961 : IsMapEvaluation generatorImages reduction10961.relations [0,112,324] reduction10961.output := by lin_cert using reduction10961.terms
def image10962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10962 : InImage map_16_207 image10962 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10962 : Bundle := named_bundle% "RealMapCertificates/relations/basis10962.json"
theorem reductionProof10962 : EqualModuloRelations reduction10962.relations reduction10962.input reduction10962.output := by lin_cert using reduction10962.terms
theorem substitutionProof10962 : IsMapEvaluation generatorImages reduction10962.relations [0,0,1296] reduction10962.output := by lin_cert using reduction10962.terms
def map_16_208 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11085 : InImage map_16_208 image11085 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11085 : Bundle := named_bundle% "RealMapCertificates/relations/basis11085.json"
theorem reductionProof11085 : EqualModuloRelations reduction11085.relations reduction11085.input reduction11085.output := by lin_cert using reduction11085.terms
theorem substitutionProof11085 : IsMapEvaluation generatorImages reduction11085.relations [1339] reduction11085.output := by lin_cert using reduction11085.terms
def image11086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11086 : InImage map_16_208 image11086 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11086 : Bundle := named_bundle% "RealMapCertificates/relations/basis11086.json"
theorem reductionProof11086 : EqualModuloRelations reduction11086.relations reduction11086.input reduction11086.output := by lin_cert using reduction11086.terms
theorem substitutionProof11086 : IsMapEvaluation generatorImages reduction11086.relations [3,1188] reduction11086.output := by lin_cert using reduction11086.terms
def image11087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11087 : InImage map_16_208 image11087 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11087 : Bundle := named_bundle% "RealMapCertificates/relations/basis11087.json"
theorem reductionProof11087 : EqualModuloRelations reduction11087.relations reduction11087.input reduction11087.output := by lin_cert using reduction11087.terms
theorem substitutionProof11087 : IsMapEvaluation generatorImages reduction11087.relations [3,3,1056] reduction11087.output := by lin_cert using reduction11087.terms
def image11088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11088 : InImage map_16_208 image11088 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11088 : Bundle := named_bundle% "RealMapCertificates/relations/basis11088.json"
theorem reductionProof11088 : EqualModuloRelations reduction11088.relations reduction11088.input reduction11088.output := by lin_cert using reduction11088.terms
theorem substitutionProof11088 : IsMapEvaluation generatorImages reduction11088.relations [1,76,450] reduction11088.output := by lin_cert using reduction11088.terms
def image11089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11089 : InImage map_16_208 image11089 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11089 : Bundle := named_bundle% "RealMapCertificates/relations/basis11089.json"
theorem reductionProof11089 : EqualModuloRelations reduction11089.relations reduction11089.input reduction11089.output := by lin_cert using reduction11089.terms
theorem substitutionProof11089 : IsMapEvaluation generatorImages reduction11089.relations [1,1,1270] reduction11089.output := by lin_cert using reduction11089.terms
def image11090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11090 : InImage map_16_208 image11090 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11090 : Bundle := named_bundle% "RealMapCertificates/relations/basis11090.json"
theorem reductionProof11090 : EqualModuloRelations reduction11090.relations reduction11090.input reduction11090.output := by lin_cert using reduction11090.terms
theorem substitutionProof11090 : IsMapEvaluation generatorImages reduction11090.relations [0,1326] reduction11090.output := by lin_cert using reduction11090.terms
def image11091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11091 : InImage map_16_208 image11091 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11091 : Bundle := named_bundle% "RealMapCertificates/relations/basis11091.json"
theorem reductionProof11091 : EqualModuloRelations reduction11091.relations reduction11091.input reduction11091.output := by lin_cert using reduction11091.terms
theorem substitutionProof11091 : IsMapEvaluation generatorImages reduction11091.relations [0,0,113,324] reduction11091.output := by lin_cert using reduction11091.terms
def map_16_209 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11273 : InImage map_16_209 image11273 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11273 : Bundle := named_bundle% "RealMapCertificates/relations/basis11273.json"
theorem reductionProof11273 : EqualModuloRelations reduction11273.relations reduction11273.input reduction11273.output := by lin_cert using reduction11273.terms
theorem substitutionProof11273 : IsMapEvaluation generatorImages reduction11273.relations [1352] reduction11273.output := by lin_cert using reduction11273.terms
def image11274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11274 : InImage map_16_209 image11274 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11274 : Bundle := named_bundle% "RealMapCertificates/relations/basis11274.json"
theorem reductionProof11274 : EqualModuloRelations reduction11274.relations reduction11274.input reduction11274.output := by lin_cert using reduction11274.terms
theorem substitutionProof11274 : IsMapEvaluation generatorImages reduction11274.relations [76,485] reduction11274.output := by lin_cert using reduction11274.terms
def image11275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11275 : InImage map_16_209 image11275 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11275 : Bundle := named_bundle% "RealMapCertificates/relations/basis11275.json"
theorem reductionProof11275 : EqualModuloRelations reduction11275.relations reduction11275.input reduction11275.output := by lin_cert using reduction11275.terms
theorem substitutionProof11275 : IsMapEvaluation generatorImages reduction11275.relations [8,9,32,324] reduction11275.output := by lin_cert using reduction11275.terms
def image11276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11276 : InImage map_16_209 image11276 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11276 : Bundle := named_bundle% "RealMapCertificates/relations/basis11276.json"
theorem reductionProof11276 : EqualModuloRelations reduction11276.relations reduction11276.input reduction11276.output := by lin_cert using reduction11276.terms
theorem substitutionProof11276 : IsMapEvaluation generatorImages reduction11276.relations [1,1326] reduction11276.output := by lin_cert using reduction11276.terms
def image11277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11277 : InImage map_16_209 image11277 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11277 : Bundle := named_bundle% "RealMapCertificates/relations/basis11277.json"
theorem reductionProof11277 : EqualModuloRelations reduction11277.relations reduction11277.input reduction11277.output := by lin_cert using reduction11277.terms
theorem substitutionProof11277 : IsMapEvaluation generatorImages reduction11277.relations [0,7,1056] reduction11277.output := by lin_cert using reduction11277.terms
def image11278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11278 : InImage map_16_209 image11278 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11278 : Bundle := named_bundle% "RealMapCertificates/relations/basis11278.json"
theorem reductionProof11278 : EqualModuloRelations reduction11278.relations reduction11278.input reduction11278.output := by lin_cert using reduction11278.terms
theorem substitutionProof11278 : IsMapEvaluation generatorImages reduction11278.relations [0,3,1191] reduction11278.output := by lin_cert using reduction11278.terms
def image11279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11279 : InImage map_16_209 image11279 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11279 : Bundle := named_bundle% "RealMapCertificates/relations/basis11279.json"
theorem reductionProof11279 : EqualModuloRelations reduction11279.relations reduction11279.input reduction11279.output := by lin_cert using reduction11279.terms
theorem substitutionProof11279 : IsMapEvaluation generatorImages reduction11279.relations [0,0,1328] reduction11279.output := by lin_cert using reduction11279.terms
def map_16_210 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image11468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11468 : InImage map_16_210 image11468 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction11468 : Bundle := named_bundle% "RealMapCertificates/relations/basis11468.json"
theorem reductionProof11468 : EqualModuloRelations reduction11468.relations reduction11468.input reduction11468.output := by lin_cert using reduction11468.terms
theorem substitutionProof11468 : IsMapEvaluation generatorImages reduction11468.relations [1375] reduction11468.output := by lin_cert using reduction11468.terms
def image11469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11469 : InImage map_16_210 image11469 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction11469 : Bundle := named_bundle% "RealMapCertificates/relations/basis11469.json"
theorem reductionProof11469 : EqualModuloRelations reduction11469.relations reduction11469.input reduction11469.output := by lin_cert using reduction11469.terms
theorem substitutionProof11469 : IsMapEvaluation generatorImages reduction11469.relations [1374] reduction11469.output := by lin_cert using reduction11469.terms
def image11470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11470 : InImage map_16_210 image11470 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction11470 : Bundle := named_bundle% "RealMapCertificates/relations/basis11470.json"
theorem reductionProof11470 : EqualModuloRelations reduction11470.relations reduction11470.input reduction11470.output := by lin_cert using reduction11470.terms
theorem substitutionProof11470 : IsMapEvaluation generatorImages reduction11470.relations [1373] reduction11470.output := by lin_cert using reduction11470.terms
def image11471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11471 : InImage map_16_210 image11471 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction11471 : Bundle := named_bundle% "RealMapCertificates/relations/basis11471.json"
theorem reductionProof11471 : EqualModuloRelations reduction11471.relations reduction11471.input reduction11471.output := by lin_cert using reduction11471.terms
theorem substitutionProof11471 : IsMapEvaluation generatorImages reduction11471.relations [43,673] reduction11471.output := by lin_cert using reduction11471.terms
def image11472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11472 : InImage map_16_210 image11472 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction11472 : Bundle := named_bundle% "RealMapCertificates/relations/basis11472.json"
theorem reductionProof11472 : EqualModuloRelations reduction11472.relations reduction11472.input reduction11472.output := by lin_cert using reduction11472.terms
theorem substitutionProof11472 : IsMapEvaluation generatorImages reduction11472.relations [2,1309] reduction11472.output := by lin_cert using reduction11472.terms
def image11473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11473 : InImage map_16_210 image11473 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction11473 : Bundle := named_bundle% "RealMapCertificates/relations/basis11473.json"
theorem reductionProof11473 : EqualModuloRelations reduction11473.relations reduction11473.input reduction11473.output := by lin_cert using reduction11473.terms
theorem substitutionProof11473 : IsMapEvaluation generatorImages reduction11473.relations [1,3,1192] reduction11473.output := by lin_cert using reduction11473.terms
def image11474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11474 : InImage map_16_210 image11474 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction11474 : Bundle := named_bundle% "RealMapCertificates/relations/basis11474.json"
theorem reductionProof11474 : EqualModuloRelations reduction11474.relations reduction11474.input reduction11474.output := by lin_cert using reduction11474.terms
theorem substitutionProof11474 : IsMapEvaluation generatorImages reduction11474.relations [0,1353] reduction11474.output := by lin_cert using reduction11474.terms
def image11475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11475 : InImage map_16_210 image11475 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction11475 : Bundle := named_bundle% "RealMapCertificates/relations/basis11475.json"
theorem reductionProof11475 : EqualModuloRelations reduction11475.relations reduction11475.input reduction11475.output := by lin_cert using reduction11475.terms
theorem substitutionProof11475 : IsMapEvaluation generatorImages reduction11475.relations [0,8,64,324] reduction11475.output := by lin_cert using reduction11475.terms
def image11476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11476 : InImage map_16_210 image11476 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction11476 : Bundle := named_bundle% "RealMapCertificates/relations/basis11476.json"
theorem reductionProof11476 : EqualModuloRelations reduction11476.relations reduction11476.input reduction11476.output := by lin_cert using reduction11476.terms
theorem substitutionProof11476 : IsMapEvaluation generatorImages reduction11476.relations [0,0,1340] reduction11476.output := by lin_cert using reduction11476.terms
def image11477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11477 : InImage map_16_210 image11477 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction11477 : Bundle := named_bundle% "RealMapCertificates/relations/basis11477.json"
theorem reductionProof11477 : EqualModuloRelations reduction11477.relations reduction11477.input reduction11477.output := by lin_cert using reduction11477.terms
theorem substitutionProof11477 : IsMapEvaluation generatorImages reduction11477.relations [0,0,7,1057] reduction11477.output := by lin_cert using reduction11477.terms
end RealMapCertificates
