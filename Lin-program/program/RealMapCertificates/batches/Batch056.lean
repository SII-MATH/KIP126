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
  | 24 => []
  | 32 => [[7,9]]
  | 43 => []
  | 68 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 118 => [[0,9,12]]
  | 126 => []
  | 127 => []
  | 156 => []
  | 167 => [[7,9,12]]
  | 168 => []
  | 169 => []
  | 172 => []
  | 173 => []
  | 174 => []
  | 176 => []
  | 186 => []
  | 324 => []
  | 352 => []
  | 544 => []
  | 674 => []
  | 719 => []
  | 1057 => []
  | 1091 => []
  | 1098 => []
  | 1099 => []
  | 1118 => []
  | 1120 => []
  | 1158 => []
  | 1159 => []
  | 1160 => []
  | 1210 => []
  | 1225 => []
  | 1268 => []
  | 1269 => []
  | 1270 => []
  | 1294 => []
  | 1295 => []
  | 1296 => []
  | 1297 => []
  | 1326 => []
  | 1328 => []
  | 1331 => []
  | 1342 => []
  | 1346 => []
  | 1353 => []
  | 1354 => []
  | 1356 => []
  | 1376 => []
  | 1377 => []
  | 1387 => []
  | 1388 => []
  | 1389 => []
  | 1390 => []
  | 1392 => []
  | 1410 => []
  | 1435 => []
  | 1449 => []
  | 1450 => []
  | 1453 => []
  | 1455 => []
  | 1493 => []
  | 1494 => []
  | 1495 => []
  | 1510 => []
  | 1523 => []
  | 1524 => []
  | 1525 => []
  | 1527 => []
  | 1562 => []
  | 1581 => []
  | 1601 => []
  | 1602 => []
  | 1603 => []
  | 1630 => []
  | 1674 => []
  | 1705 => []
  | 1706 => []
  | 1707 => []
  | 1708 => []
  | 1730 => []
  | 1731 => []
  | 1745 => []
  | _ => []
def map_16_211 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11624 : InImage map_16_211 image11624 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11624 : Bundle := named_bundle% "RealMapCertificates/relations/basis11624.json"
theorem reductionProof11624 : EqualModuloRelations reduction11624.relations reduction11624.input reduction11624.output := by lin_cert using reduction11624.terms
theorem substitutionProof11624 : IsMapEvaluation generatorImages reduction11624.relations [1388] reduction11624.output := by lin_cert using reduction11624.terms
def image11625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11625 : InImage map_16_211 image11625 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11625 : Bundle := named_bundle% "RealMapCertificates/relations/basis11625.json"
theorem reductionProof11625 : EqualModuloRelations reduction11625.relations reduction11625.input reduction11625.output := by lin_cert using reduction11625.terms
theorem substitutionProof11625 : IsMapEvaluation generatorImages reduction11625.relations [1387] reduction11625.output := by lin_cert using reduction11625.terms
def image11626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11626 : InImage map_16_211 image11626 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11626 : Bundle := named_bundle% "RealMapCertificates/relations/basis11626.json"
theorem reductionProof11626 : EqualModuloRelations reduction11626.relations reduction11626.input reduction11626.output := by lin_cert using reduction11626.terms
theorem substitutionProof11626 : IsMapEvaluation generatorImages reduction11626.relations [0,1377] reduction11626.output := by lin_cert using reduction11626.terms
def image11627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11627 : InImage map_16_211 image11627 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11627 : Bundle := named_bundle% "RealMapCertificates/relations/basis11627.json"
theorem reductionProof11627 : EqualModuloRelations reduction11627.relations reduction11627.input reduction11627.output := by lin_cert using reduction11627.terms
theorem substitutionProof11627 : IsMapEvaluation generatorImages reduction11627.relations [0,43,674] reduction11627.output := by lin_cert using reduction11627.terms
def image11628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11628 : InImage map_16_211 image11628 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11628 : Bundle := named_bundle% "RealMapCertificates/relations/basis11628.json"
theorem reductionProof11628 : EqualModuloRelations reduction11628.relations reduction11628.input reduction11628.output := by lin_cert using reduction11628.terms
theorem substitutionProof11628 : IsMapEvaluation generatorImages reduction11628.relations [0,3,1225] reduction11628.output := by lin_cert using reduction11628.terms
def image11629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11629 : InImage map_16_211 image11629 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11629 : Bundle := named_bundle% "RealMapCertificates/relations/basis11629.json"
theorem reductionProof11629 : EqualModuloRelations reduction11629.relations reduction11629.input reduction11629.output := by lin_cert using reduction11629.terms
theorem substitutionProof11629 : IsMapEvaluation generatorImages reduction11629.relations [0,3,3,1091] reduction11629.output := by lin_cert using reduction11629.terms
def image11630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11630 : InImage map_16_211 image11630 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11630 : Bundle := named_bundle% "RealMapCertificates/relations/basis11630.json"
theorem reductionProof11630 : EqualModuloRelations reduction11630.relations reduction11630.input reduction11630.output := by lin_cert using reduction11630.terms
theorem substitutionProof11630 : IsMapEvaluation generatorImages reduction11630.relations [0,0,1354] reduction11630.output := by lin_cert using reduction11630.terms
def image11631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11631 : InImage map_16_211 image11631 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11631 : Bundle := named_bundle% "RealMapCertificates/relations/basis11631.json"
theorem reductionProof11631 : EqualModuloRelations reduction11631.relations reduction11631.input reduction11631.output := by lin_cert using reduction11631.terms
theorem substitutionProof11631 : IsMapEvaluation generatorImages reduction11631.relations [0,0,118,324] reduction11631.output := by lin_cert using reduction11631.terms
def map_16_212 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11821 : InImage map_16_212 image11821 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11821 : Bundle := named_bundle% "RealMapCertificates/relations/basis11821.json"
theorem reductionProof11821 : EqualModuloRelations reduction11821.relations reduction11821.input reduction11821.output := by lin_cert using reduction11821.terms
theorem substitutionProof11821 : IsMapEvaluation generatorImages reduction11821.relations [68,544] reduction11821.output := by lin_cert using reduction11821.terms
def image11822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11822 : InImage map_16_212 image11822 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11822 : Bundle := named_bundle% "RealMapCertificates/relations/basis11822.json"
theorem reductionProof11822 : EqualModuloRelations reduction11822.relations reduction11822.input reduction11822.output := by lin_cert using reduction11822.terms
theorem substitutionProof11822 : IsMapEvaluation generatorImages reduction11822.relations [8,13,32,324] reduction11822.output := by lin_cert using reduction11822.terms
def image11823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11823 : InImage map_16_212 image11823 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11823 : Bundle := named_bundle% "RealMapCertificates/relations/basis11823.json"
theorem reductionProof11823 : EqualModuloRelations reduction11823.relations reduction11823.input reduction11823.output := by lin_cert using reduction11823.terms
theorem substitutionProof11823 : IsMapEvaluation generatorImages reduction11823.relations [1,1376] reduction11823.output := by lin_cert using reduction11823.terms
def image11824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11824 : InImage map_16_212 image11824 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11824 : Bundle := named_bundle% "RealMapCertificates/relations/basis11824.json"
theorem reductionProof11824 : EqualModuloRelations reduction11824.relations reduction11824.input reduction11824.output := by lin_cert using reduction11824.terms
theorem substitutionProof11824 : IsMapEvaluation generatorImages reduction11824.relations [0,7,1098] reduction11824.output := by lin_cert using reduction11824.terms
def image11825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11825 : InImage map_16_212 image11825 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11825 : Bundle := named_bundle% "RealMapCertificates/relations/basis11825.json"
theorem reductionProof11825 : EqualModuloRelations reduction11825.relations reduction11825.input reduction11825.output := by lin_cert using reduction11825.terms
theorem substitutionProof11825 : IsMapEvaluation generatorImages reduction11825.relations [0,0,7,1091] reduction11825.output := by lin_cert using reduction11825.terms
def image11826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11826 : InImage map_16_212 image11826 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11826 : Bundle := named_bundle% "RealMapCertificates/relations/basis11826.json"
theorem reductionProof11826 : EqualModuloRelations reduction11826.relations reduction11826.input reduction11826.output := by lin_cert using reduction11826.terms
theorem substitutionProof11826 : IsMapEvaluation generatorImages reduction11826.relations [0,0,0,0,1342] reduction11826.output := by lin_cert using reduction11826.terms
def map_16_213 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12055 : InImage map_16_213 image12055 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12055 : Bundle := named_bundle% "RealMapCertificates/relations/basis12055.json"
theorem reductionProof12055 : EqualModuloRelations reduction12055.relations reduction12055.input reduction12055.output := by lin_cert using reduction12055.terms
theorem substitutionProof12055 : IsMapEvaluation generatorImages reduction12055.relations [1435] reduction12055.output := by lin_cert using reduction12055.terms
def image12056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12056 : InImage map_16_213 image12056 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12056 : Bundle := named_bundle% "RealMapCertificates/relations/basis12056.json"
theorem reductionProof12056 : EqualModuloRelations reduction12056.relations reduction12056.input reduction12056.output := by lin_cert using reduction12056.terms
theorem substitutionProof12056 : IsMapEvaluation generatorImages reduction12056.relations [3,1294] reduction12056.output := by lin_cert using reduction12056.terms
def image12057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12057 : InImage map_16_213 image12057 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12057 : Bundle := named_bundle% "RealMapCertificates/relations/basis12057.json"
theorem reductionProof12057 : EqualModuloRelations reduction12057.relations reduction12057.input reduction12057.output := by lin_cert using reduction12057.terms
theorem substitutionProof12057 : IsMapEvaluation generatorImages reduction12057.relations [2,1353] reduction12057.output := by lin_cert using reduction12057.terms
def image12058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12058 : InImage map_16_213 image12058 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12058 : Bundle := named_bundle% "RealMapCertificates/relations/basis12058.json"
theorem reductionProof12058 : EqualModuloRelations reduction12058.relations reduction12058.input reduction12058.output := by lin_cert using reduction12058.terms
theorem substitutionProof12058 : IsMapEvaluation generatorImages reduction12058.relations [1,1389] reduction12058.output := by lin_cert using reduction12058.terms
def image12059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12059 : InImage map_16_213 image12059 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12059 : Bundle := named_bundle% "RealMapCertificates/relations/basis12059.json"
theorem reductionProof12059 : EqualModuloRelations reduction12059.relations reduction12059.input reduction12059.output := by lin_cert using reduction12059.terms
theorem substitutionProof12059 : IsMapEvaluation generatorImages reduction12059.relations [0,8,72,324] reduction12059.output := by lin_cert using reduction12059.terms
def image12060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12060 : InImage map_16_213 image12060 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12060 : Bundle := named_bundle% "RealMapCertificates/relations/basis12060.json"
theorem reductionProof12060 : EqualModuloRelations reduction12060.relations reduction12060.input reduction12060.output := by lin_cert using reduction12060.terms
theorem substitutionProof12060 : IsMapEvaluation generatorImages reduction12060.relations [0,0,1390] reduction12060.output := by lin_cert using reduction12060.terms
def image12061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12061 : InImage map_16_213 image12061 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12061 : Bundle := named_bundle% "RealMapCertificates/relations/basis12061.json"
theorem reductionProof12061 : EqualModuloRelations reduction12061.relations reduction12061.input reduction12061.output := by lin_cert using reduction12061.terms
theorem substitutionProof12061 : IsMapEvaluation generatorImages reduction12061.relations [0,0,7,1099] reduction12061.output := by lin_cert using reduction12061.terms
def image12062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12062 : InImage map_16_213 image12062 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12062 : Bundle := named_bundle% "RealMapCertificates/relations/basis12062.json"
theorem reductionProof12062 : EqualModuloRelations reduction12062.relations reduction12062.input reduction12062.output := by lin_cert using reduction12062.terms
theorem substitutionProof12062 : IsMapEvaluation generatorImages reduction12062.relations [0,0,0,0,0,1346] reduction12062.output := by lin_cert using reduction12062.terms
def map_16_214 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12208 : InImage map_16_214 image12208 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12208 : Bundle := named_bundle% "RealMapCertificates/relations/basis12208.json"
theorem reductionProof12208 : EqualModuloRelations reduction12208.relations reduction12208.input reduction12208.output := by lin_cert using reduction12208.terms
theorem substitutionProof12208 : IsMapEvaluation generatorImages reduction12208.relations [1449] reduction12208.output := by lin_cert using reduction12208.terms
def image12209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12209 : InImage map_16_214 image12209 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12209 : Bundle := named_bundle% "RealMapCertificates/relations/basis12209.json"
theorem reductionProof12209 : EqualModuloRelations reduction12209.relations reduction12209.input reduction12209.output := by lin_cert using reduction12209.terms
theorem substitutionProof12209 : IsMapEvaluation generatorImages reduction12209.relations [7,1158] reduction12209.output := by lin_cert using reduction12209.terms
def image12210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12210 : InImage map_16_214 image12210 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12210 : Bundle := named_bundle% "RealMapCertificates/relations/basis12210.json"
theorem reductionProof12210 : EqualModuloRelations reduction12210.relations reduction12210.input reduction12210.output := by lin_cert using reduction12210.terms
theorem substitutionProof12210 : IsMapEvaluation generatorImages reduction12210.relations [0,3,1296] reduction12210.output := by lin_cert using reduction12210.terms
def image12211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12211 : InImage map_16_214 image12211 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12211 : Bundle := named_bundle% "RealMapCertificates/relations/basis12211.json"
theorem reductionProof12211 : EqualModuloRelations reduction12211.relations reduction12211.input reduction12211.output := by lin_cert using reduction12211.terms
theorem substitutionProof12211 : IsMapEvaluation generatorImages reduction12211.relations [0,0,1410] reduction12211.output := by lin_cert using reduction12211.terms
def image12212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12212 : InImage map_16_214 image12212 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12212 : Bundle := named_bundle% "RealMapCertificates/relations/basis12212.json"
theorem reductionProof12212 : EqualModuloRelations reduction12212.relations reduction12212.input reduction12212.output := by lin_cert using reduction12212.terms
theorem substitutionProof12212 : IsMapEvaluation generatorImages reduction12212.relations [0,0,127,324] reduction12212.output := by lin_cert using reduction12212.terms
def image12213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12213 : InImage map_16_214 image12213 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12213 : Bundle := named_bundle% "RealMapCertificates/relations/basis12213.json"
theorem reductionProof12213 : EqualModuloRelations reduction12213.relations reduction12213.input reduction12213.output := by lin_cert using reduction12213.terms
theorem substitutionProof12213 : IsMapEvaluation generatorImages reduction12213.relations [0,0,126,324] reduction12213.output := by lin_cert using reduction12213.terms
def image12214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12214 : InImage map_16_214 image12214 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12214 : Bundle := named_bundle% "RealMapCertificates/relations/basis12214.json"
theorem reductionProof12214 : EqualModuloRelations reduction12214.relations reduction12214.input reduction12214.output := by lin_cert using reduction12214.terms
theorem substitutionProof12214 : IsMapEvaluation generatorImages reduction12214.relations [0,0,0,1392] reduction12214.output := by lin_cert using reduction12214.terms
def map_16_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12417 : InImage map_16_215 image12417 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12417 : Bundle := named_bundle% "RealMapCertificates/relations/basis12417.json"
theorem reductionProof12417 : EqualModuloRelations reduction12417.relations reduction12417.input reduction12417.output := by lin_cert using reduction12417.terms
theorem substitutionProof12417 : IsMapEvaluation generatorImages reduction12417.relations [9,13,32,324] reduction12417.output := by lin_cert using reduction12417.terms
def image12418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12418 : InImage map_16_215 image12418 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12418 : Bundle := named_bundle% "RealMapCertificates/relations/basis12418.json"
theorem reductionProof12418 : EqualModuloRelations reduction12418.relations reduction12418.input reduction12418.output := by lin_cert using reduction12418.terms
theorem substitutionProof12418 : IsMapEvaluation generatorImages reduction12418.relations [3,1326] reduction12418.output := by lin_cert using reduction12418.terms
def image12419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12419 : InImage map_16_215 image12419 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12419 : Bundle := named_bundle% "RealMapCertificates/relations/basis12419.json"
theorem reductionProof12419 : EqualModuloRelations reduction12419.relations reduction12419.input reduction12419.output := by lin_cert using reduction12419.terms
theorem substitutionProof12419 : IsMapEvaluation generatorImages reduction12419.relations [0,1450] reduction12419.output := by lin_cert using reduction12419.terms
def image12420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12420 : InImage map_16_215 image12420 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12420 : Bundle := named_bundle% "RealMapCertificates/relations/basis12420.json"
theorem reductionProof12420 : EqualModuloRelations reduction12420.relations reduction12420.input reduction12420.output := by lin_cert using reduction12420.terms
theorem substitutionProof12420 : IsMapEvaluation generatorImages reduction12420.relations [0,43,719] reduction12420.output := by lin_cert using reduction12420.terms
def image12421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12421 : InImage map_16_215 image12421 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12421 : Bundle := named_bundle% "RealMapCertificates/relations/basis12421.json"
theorem reductionProof12421 : EqualModuloRelations reduction12421.relations reduction12421.input reduction12421.output := by lin_cert using reduction12421.terms
theorem substitutionProof12421 : IsMapEvaluation generatorImages reduction12421.relations [0,7,1159] reduction12421.output := by lin_cert using reduction12421.terms
def map_16_216 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12622 : InImage map_16_216 image12622 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12622 : Bundle := named_bundle% "RealMapCertificates/relations/basis12622.json"
theorem reductionProof12622 : EqualModuloRelations reduction12622.relations reduction12622.input reduction12622.output := by lin_cert using reduction12622.terms
theorem substitutionProof12622 : IsMapEvaluation generatorImages reduction12622.relations [1494] reduction12622.output := by lin_cert using reduction12622.terms
def image12623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12623 : InImage map_16_216 image12623 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12623 : Bundle := named_bundle% "RealMapCertificates/relations/basis12623.json"
theorem reductionProof12623 : EqualModuloRelations reduction12623.relations reduction12623.input reduction12623.output := by lin_cert using reduction12623.terms
theorem substitutionProof12623 : IsMapEvaluation generatorImages reduction12623.relations [1493] reduction12623.output := by lin_cert using reduction12623.terms
def image12624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12624 : InImage map_16_216 image12624 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12624 : Bundle := named_bundle% "RealMapCertificates/relations/basis12624.json"
theorem reductionProof12624 : EqualModuloRelations reduction12624.relations reduction12624.input reduction12624.output := by lin_cert using reduction12624.terms
theorem substitutionProof12624 : IsMapEvaluation generatorImages reduction12624.relations [1,1450] reduction12624.output := by lin_cert using reduction12624.terms
def image12625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12625 : InImage map_16_216 image12625 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12625 : Bundle := named_bundle% "RealMapCertificates/relations/basis12625.json"
theorem reductionProof12625 : EqualModuloRelations reduction12625.relations reduction12625.input reduction12625.output := by lin_cert using reduction12625.terms
theorem substitutionProof12625 : IsMapEvaluation generatorImages reduction12625.relations [0,8,79,324] reduction12625.output := by lin_cert using reduction12625.terms
def image12626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12626 : InImage map_16_216 image12626 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12626 : Bundle := named_bundle% "RealMapCertificates/relations/basis12626.json"
theorem reductionProof12626 : EqualModuloRelations reduction12626.relations reduction12626.input reduction12626.output := by lin_cert using reduction12626.terms
theorem substitutionProof12626 : IsMapEvaluation generatorImages reduction12626.relations [0,3,1328] reduction12626.output := by lin_cert using reduction12626.terms
def image12627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12627 : InImage map_16_216 image12627 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12627 : Bundle := named_bundle% "RealMapCertificates/relations/basis12627.json"
theorem reductionProof12627 : EqualModuloRelations reduction12627.relations reduction12627.input reduction12627.output := by lin_cert using reduction12627.terms
theorem substitutionProof12627 : IsMapEvaluation generatorImages reduction12627.relations [0,0,1453] reduction12627.output := by lin_cert using reduction12627.terms
def image12628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12628 : InImage map_16_216 image12628 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12628 : Bundle := named_bundle% "RealMapCertificates/relations/basis12628.json"
theorem reductionProof12628 : EqualModuloRelations reduction12628.relations reduction12628.input reduction12628.output := by lin_cert using reduction12628.terms
theorem substitutionProof12628 : IsMapEvaluation generatorImages reduction12628.relations [0,0,7,1160] reduction12628.output := by lin_cert using reduction12628.terms
def map_16_217 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12772 : InImage map_16_217 image12772 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12772 : Bundle := named_bundle% "RealMapCertificates/relations/basis12772.json"
theorem reductionProof12772 : EqualModuloRelations reduction12772.relations reduction12772.input reduction12772.output := by lin_cert using reduction12772.terms
theorem substitutionProof12772 : IsMapEvaluation generatorImages reduction12772.relations [7,1210] reduction12772.output := by lin_cert using reduction12772.terms
def image12773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12773 : InImage map_16_217 image12773 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12773 : Bundle := named_bundle% "RealMapCertificates/relations/basis12773.json"
theorem reductionProof12773 : EqualModuloRelations reduction12773.relations reduction12773.input reduction12773.output := by lin_cert using reduction12773.terms
theorem substitutionProof12773 : IsMapEvaluation generatorImages reduction12773.relations [3,1353] reduction12773.output := by lin_cert using reduction12773.terms
def image12774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12774 : InImage map_16_217 image12774 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12774 : Bundle := named_bundle% "RealMapCertificates/relations/basis12774.json"
theorem reductionProof12774 : EqualModuloRelations reduction12774.relations reduction12774.input reduction12774.output := by lin_cert using reduction12774.terms
theorem substitutionProof12774 : IsMapEvaluation generatorImages reduction12774.relations [0,1495] reduction12774.output := by lin_cert using reduction12774.terms
def image12775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12775 : InImage map_16_217 image12775 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12775 : Bundle := named_bundle% "RealMapCertificates/relations/basis12775.json"
theorem reductionProof12775 : EqualModuloRelations reduction12775.relations reduction12775.input reduction12775.output := by lin_cert using reduction12775.terms
theorem substitutionProof12775 : IsMapEvaluation generatorImages reduction12775.relations [0,0,8,80,324] reduction12775.output := by lin_cert using reduction12775.terms
def image12776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12776 : InImage map_16_217 image12776 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12776 : Bundle := named_bundle% "RealMapCertificates/relations/basis12776.json"
theorem reductionProof12776 : EqualModuloRelations reduction12776.relations reduction12776.input reduction12776.output := by lin_cert using reduction12776.terms
theorem substitutionProof12776 : IsMapEvaluation generatorImages reduction12776.relations [0,0,3,1331] reduction12776.output := by lin_cert using reduction12776.terms
def image12777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12777 : InImage map_16_217 image12777 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12777 : Bundle := named_bundle% "RealMapCertificates/relations/basis12777.json"
theorem reductionProof12777 : EqualModuloRelations reduction12777.relations reduction12777.input reduction12777.output := by lin_cert using reduction12777.terms
theorem substitutionProof12777 : IsMapEvaluation generatorImages reduction12777.relations [0,0,0,1455] reduction12777.output := by lin_cert using reduction12777.terms
def map_16_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12979 : InImage map_16_218 image12979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12979 : Bundle := named_bundle% "RealMapCertificates/relations/basis12979.json"
theorem reductionProof12979 : EqualModuloRelations reduction12979.relations reduction12979.input reduction12979.output := by lin_cert using reduction12979.terms
theorem substitutionProof12979 : IsMapEvaluation generatorImages reduction12979.relations [1523] reduction12979.output := by lin_cert using reduction12979.terms
def image12980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12980 : InImage map_16_218 image12980 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12980 : Bundle := named_bundle% "RealMapCertificates/relations/basis12980.json"
theorem reductionProof12980 : EqualModuloRelations reduction12980.relations reduction12980.input reduction12980.output := by lin_cert using reduction12980.terms
theorem substitutionProof12980 : IsMapEvaluation generatorImages reduction12980.relations [13,13,32,324] reduction12980.output := by lin_cert using reduction12980.terms
def image12981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12981 : InImage map_16_218 image12981 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12981 : Bundle := named_bundle% "RealMapCertificates/relations/basis12981.json"
theorem reductionProof12981 : EqualModuloRelations reduction12981.relations reduction12981.input reduction12981.output := by lin_cert using reduction12981.terms
theorem substitutionProof12981 : IsMapEvaluation generatorImages reduction12981.relations [2,43,719] reduction12981.output := by lin_cert using reduction12981.terms
def image12982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12982 : InImage map_16_218 image12982 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12982 : Bundle := named_bundle% "RealMapCertificates/relations/basis12982.json"
theorem reductionProof12982 : EqualModuloRelations reduction12982.relations reduction12982.input reduction12982.output := by lin_cert using reduction12982.terms
theorem substitutionProof12982 : IsMapEvaluation generatorImages reduction12982.relations [0,1510] reduction12982.output := by lin_cert using reduction12982.terms
def map_16_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13203 : InImage map_16_219 image13203 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13203 : Bundle := named_bundle% "RealMapCertificates/relations/basis13203.json"
theorem reductionProof13203 : EqualModuloRelations reduction13203.relations reduction13203.input reduction13203.output := by lin_cert using reduction13203.terms
theorem substitutionProof13203 : IsMapEvaluation generatorImages reduction13203.relations [1,1510] reduction13203.output := by lin_cert using reduction13203.terms
def image13204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13204 : InImage map_16_219 image13204 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13204 : Bundle := named_bundle% "RealMapCertificates/relations/basis13204.json"
theorem reductionProof13204 : EqualModuloRelations reduction13204.relations reduction13204.input reduction13204.output := by lin_cert using reduction13204.terms
theorem substitutionProof13204 : IsMapEvaluation generatorImages reduction13204.relations [0,1524] reduction13204.output := by lin_cert using reduction13204.terms
def image13205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13205 : InImage map_16_219 image13205 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13205 : Bundle := named_bundle% "RealMapCertificates/relations/basis13205.json"
theorem reductionProof13205 : EqualModuloRelations reduction13205.relations reduction13205.input reduction13205.output := by lin_cert using reduction13205.terms
theorem substitutionProof13205 : IsMapEvaluation generatorImages reduction13205.relations [0,8,89,324] reduction13205.output := by lin_cert using reduction13205.terms
def image13206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13206 : InImage map_16_219 image13206 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13206 : Bundle := named_bundle% "RealMapCertificates/relations/basis13206.json"
theorem reductionProof13206 : EqualModuloRelations reduction13206.relations reduction13206.input reduction13206.output := by lin_cert using reduction13206.terms
theorem substitutionProof13206 : IsMapEvaluation generatorImages reduction13206.relations [0,2,1453] reduction13206.output := by lin_cert using reduction13206.terms
def map_16_220 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image13333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13333 : InImage map_16_220 image13333 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction13333 : Bundle := named_bundle% "RealMapCertificates/relations/basis13333.json"
theorem reductionProof13333 : EqualModuloRelations reduction13333.relations reduction13333.input reduction13333.output := by lin_cert using reduction13333.terms
theorem substitutionProof13333 : IsMapEvaluation generatorImages reduction13333.relations [1562] reduction13333.output := by lin_cert using reduction13333.terms
def image13334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13334 : InImage map_16_220 image13334 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction13334 : Bundle := named_bundle% "RealMapCertificates/relations/basis13334.json"
theorem reductionProof13334 : EqualModuloRelations reduction13334.relations reduction13334.input reduction13334.output := by lin_cert using reduction13334.terms
theorem substitutionProof13334 : IsMapEvaluation generatorImages reduction13334.relations [13,1118] reduction13334.output := by lin_cert using reduction13334.terms
def image13335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13335 : InImage map_16_220 image13335 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction13335 : Bundle := named_bundle% "RealMapCertificates/relations/basis13335.json"
theorem reductionProof13335 : EqualModuloRelations reduction13335.relations reduction13335.input reduction13335.output := by lin_cert using reduction13335.terms
theorem substitutionProof13335 : IsMapEvaluation generatorImages reduction13335.relations [7,1269] reduction13335.output := by lin_cert using reduction13335.terms
def image13336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13336 : InImage map_16_220 image13336 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction13336 : Bundle := named_bundle% "RealMapCertificates/relations/basis13336.json"
theorem reductionProof13336 : EqualModuloRelations reduction13336.relations reduction13336.input reduction13336.output := by lin_cert using reduction13336.terms
theorem substitutionProof13336 : IsMapEvaluation generatorImages reduction13336.relations [7,1268] reduction13336.output := by lin_cert using reduction13336.terms
def image13337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13337 : InImage map_16_220 image13337 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction13337 : Bundle := named_bundle% "RealMapCertificates/relations/basis13337.json"
theorem reductionProof13337 : EqualModuloRelations reduction13337.relations reduction13337.input reduction13337.output := by lin_cert using reduction13337.terms
theorem substitutionProof13337 : IsMapEvaluation generatorImages reduction13337.relations [2,1495] reduction13337.output := by lin_cert using reduction13337.terms
def image13338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13338 : InImage map_16_220 image13338 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction13338 : Bundle := named_bundle% "RealMapCertificates/relations/basis13338.json"
theorem reductionProof13338 : EqualModuloRelations reduction13338.relations reduction13338.input reduction13338.output := by lin_cert using reduction13338.terms
theorem substitutionProof13338 : IsMapEvaluation generatorImages reduction13338.relations [1,1524] reduction13338.output := by lin_cert using reduction13338.terms
def image13339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13339 : InImage map_16_220 image13339 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction13339 : Bundle := named_bundle% "RealMapCertificates/relations/basis13339.json"
theorem reductionProof13339 : EqualModuloRelations reduction13339.relations reduction13339.input reduction13339.output := by lin_cert using reduction13339.terms
theorem substitutionProof13339 : IsMapEvaluation generatorImages reduction13339.relations [0,0,1525] reduction13339.output := by lin_cert using reduction13339.terms
def image13340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13340 : InImage map_16_220 image13340 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction13340 : Bundle := named_bundle% "RealMapCertificates/relations/basis13340.json"
theorem reductionProof13340 : EqualModuloRelations reduction13340.relations reduction13340.input reduction13340.output := by lin_cert using reduction13340.terms
theorem substitutionProof13340 : IsMapEvaluation generatorImages reduction13340.relations [0,0,9,80,324] reduction13340.output := by lin_cert using reduction13340.terms
def map_16_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13549 : InImage map_16_221 image13549 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13549 : Bundle := named_bundle% "RealMapCertificates/relations/basis13549.json"
theorem reductionProof13549 : EqualModuloRelations reduction13549.relations reduction13549.input reduction13549.output := by lin_cert using reduction13549.terms
theorem substitutionProof13549 : IsMapEvaluation generatorImages reduction13549.relations [1581] reduction13549.output := by lin_cert using reduction13549.terms
def image13550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13550 : InImage map_16_221 image13550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13550 : Bundle := named_bundle% "RealMapCertificates/relations/basis13550.json"
theorem reductionProof13550 : EqualModuloRelations reduction13550.relations reduction13550.input reduction13550.output := by lin_cert using reduction13550.terms
theorem substitutionProof13550 : IsMapEvaluation generatorImages reduction13550.relations [7,1295] reduction13550.output := by lin_cert using reduction13550.terms
def image13551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13551 : InImage map_16_221 image13551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13551 : Bundle := named_bundle% "RealMapCertificates/relations/basis13551.json"
theorem reductionProof13551 : EqualModuloRelations reduction13551.relations reduction13551.input reduction13551.output := by lin_cert using reduction13551.terms
theorem substitutionProof13551 : IsMapEvaluation generatorImages reduction13551.relations [0,7,1270] reduction13551.output := by lin_cert using reduction13551.terms
def image13552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13552 : InImage map_16_221 image13552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13552 : Bundle := named_bundle% "RealMapCertificates/relations/basis13552.json"
theorem reductionProof13552 : EqualModuloRelations reduction13552.relations reduction13552.input reduction13552.output := by lin_cert using reduction13552.terms
theorem substitutionProof13552 : IsMapEvaluation generatorImages reduction13552.relations [0,0,0,1527] reduction13552.output := by lin_cert using reduction13552.terms
def map_16_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13772 : InImage map_16_222 image13772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13772 : Bundle := named_bundle% "RealMapCertificates/relations/basis13772.json"
theorem reductionProof13772 : EqualModuloRelations reduction13772.relations reduction13772.input reduction13772.output := by lin_cert using reduction13772.terms
theorem substitutionProof13772 : IsMapEvaluation generatorImages reduction13772.relations [1,1,1525] reduction13772.output := by lin_cert using reduction13772.terms
def image13773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13773 : InImage map_16_222 image13773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13773 : Bundle := named_bundle% "RealMapCertificates/relations/basis13773.json"
theorem reductionProof13773 : EqualModuloRelations reduction13773.relations reduction13773.input reduction13773.output := by lin_cert using reduction13773.terms
theorem substitutionProof13773 : IsMapEvaluation generatorImages reduction13773.relations [0,8,101,324] reduction13773.output := by lin_cert using reduction13773.terms
def image13774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13774 : InImage map_16_222 image13774 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13774 : Bundle := named_bundle% "RealMapCertificates/relations/basis13774.json"
theorem reductionProof13774 : EqualModuloRelations reduction13774.relations reduction13774.input reduction13774.output := by lin_cert using reduction13774.terms
theorem substitutionProof13774 : IsMapEvaluation generatorImages reduction13774.relations [0,7,1297] reduction13774.output := by lin_cert using reduction13774.terms
def image13775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13775 : InImage map_16_222 image13775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13775 : Bundle := named_bundle% "RealMapCertificates/relations/basis13775.json"
theorem reductionProof13775 : EqualModuloRelations reduction13775.relations reduction13775.input reduction13775.output := by lin_cert using reduction13775.terms
theorem substitutionProof13775 : IsMapEvaluation generatorImages reduction13775.relations [0,7,1296] reduction13775.output := by lin_cert using reduction13775.terms
def map_16_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13917 : InImage map_16_223 image13917 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13917 : Bundle := named_bundle% "RealMapCertificates/relations/basis13917.json"
theorem reductionProof13917 : EqualModuloRelations reduction13917.relations reduction13917.input reduction13917.output := by lin_cert using reduction13917.terms
theorem substitutionProof13917 : IsMapEvaluation generatorImages reduction13917.relations [1,7,1297] reduction13917.output := by lin_cert using reduction13917.terms
def image13918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13918 : InImage map_16_223 image13918 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13918 : Bundle := named_bundle% "RealMapCertificates/relations/basis13918.json"
theorem reductionProof13918 : EqualModuloRelations reduction13918.relations reduction13918.input reduction13918.output := by lin_cert using reduction13918.terms
theorem substitutionProof13918 : IsMapEvaluation generatorImages reduction13918.relations [0,0,13,80,324] reduction13918.output := by lin_cert using reduction13918.terms
def map_16_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14114 : InImage map_16_224 image14114 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14114 : Bundle := named_bundle% "RealMapCertificates/relations/basis14114.json"
theorem reductionProof14114 : EqualModuloRelations reduction14114.relations reduction14114.input reduction14114.output := by lin_cert using reduction14114.terms
theorem substitutionProof14114 : IsMapEvaluation generatorImages reduction14114.relations [1630] reduction14114.output := by lin_cert using reduction14114.terms
def image14115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14115 : InImage map_16_224 image14115 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14115 : Bundle := named_bundle% "RealMapCertificates/relations/basis14115.json"
theorem reductionProof14115 : EqualModuloRelations reduction14115.relations reduction14115.input reduction14115.output := by lin_cert using reduction14115.terms
theorem substitutionProof14115 : IsMapEvaluation generatorImages reduction14115.relations [13,23,24,324] reduction14115.output := by lin_cert using reduction14115.terms
def image14116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14116 : InImage map_16_224 image14116 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14116 : Bundle := named_bundle% "RealMapCertificates/relations/basis14116.json"
theorem reductionProof14116 : EqualModuloRelations reduction14116.relations reduction14116.input reduction14116.output := by lin_cert using reduction14116.terms
theorem substitutionProof14116 : IsMapEvaluation generatorImages reduction14116.relations [2,13,1120] reduction14116.output := by lin_cert using reduction14116.terms
def image14117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14117 : InImage map_16_224 image14117 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14117 : Bundle := named_bundle% "RealMapCertificates/relations/basis14117.json"
theorem reductionProof14117 : EqualModuloRelations reduction14117.relations reduction14117.input reduction14117.output := by lin_cert using reduction14117.terms
theorem substitutionProof14117 : IsMapEvaluation generatorImages reduction14117.relations [1,156,324] reduction14117.output := by lin_cert using reduction14117.terms
def image14118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14118 : InImage map_16_224 image14118 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14118 : Bundle := named_bundle% "RealMapCertificates/relations/basis14118.json"
theorem reductionProof14118 : EqualModuloRelations reduction14118.relations reduction14118.input reduction14118.output := by lin_cert using reduction14118.terms
theorem substitutionProof14118 : IsMapEvaluation generatorImages reduction14118.relations [0,0,1601] reduction14118.output := by lin_cert using reduction14118.terms
def map_16_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14330 : InImage map_16_225 image14330 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14330 : Bundle := named_bundle% "RealMapCertificates/relations/basis14330.json"
theorem reductionProof14330 : EqualModuloRelations reduction14330.relations reduction14330.input reduction14330.output := by lin_cert using reduction14330.terms
theorem substitutionProof14330 : IsMapEvaluation generatorImages reduction14330.relations [0,7,7,1057] reduction14330.output := by lin_cert using reduction14330.terms
def image14331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14331 : InImage map_16_225 image14331 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14331 : Bundle := named_bundle% "RealMapCertificates/relations/basis14331.json"
theorem reductionProof14331 : EqualModuloRelations reduction14331.relations reduction14331.input reduction14331.output := by lin_cert using reduction14331.terms
theorem substitutionProof14331 : IsMapEvaluation generatorImages reduction14331.relations [0,0,0,1602] reduction14331.output := by lin_cert using reduction14331.terms
def map_16_226 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14472 : InImage map_16_226 image14472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14472 : Bundle := named_bundle% "RealMapCertificates/relations/basis14472.json"
theorem reductionProof14472 : EqualModuloRelations reduction14472.relations reduction14472.input reduction14472.output := by lin_cert using reduction14472.terms
theorem substitutionProof14472 : IsMapEvaluation generatorImages reduction14472.relations [1674] reduction14472.output := by lin_cert using reduction14472.terms
def image14473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14473 : InImage map_16_226 image14473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14473 : Bundle := named_bundle% "RealMapCertificates/relations/basis14473.json"
theorem reductionProof14473 : EqualModuloRelations reduction14473.relations reduction14473.input reduction14473.output := by lin_cert using reduction14473.terms
theorem substitutionProof14473 : IsMapEvaluation generatorImages reduction14473.relations [167,324] reduction14473.output := by lin_cert using reduction14473.terms
def image14474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14474 : InImage map_16_226 image14474 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14474 : Bundle := named_bundle% "RealMapCertificates/relations/basis14474.json"
theorem reductionProof14474 : EqualModuloRelations reduction14474.relations reduction14474.input reduction14474.output := by lin_cert using reduction14474.terms
theorem substitutionProof14474 : IsMapEvaluation generatorImages reduction14474.relations [1,1,1601] reduction14474.output := by lin_cert using reduction14474.terms
def image14475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14475 : InImage map_16_226 image14475 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14475 : Bundle := named_bundle% "RealMapCertificates/relations/basis14475.json"
theorem reductionProof14475 : EqualModuloRelations reduction14475.relations reduction14475.input reduction14475.output := by lin_cert using reduction14475.terms
theorem substitutionProof14475 : IsMapEvaluation generatorImages reduction14475.relations [0,0,0,0,1603] reduction14475.output := by lin_cert using reduction14475.terms
def map_16_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14689 : InImage map_16_227 image14689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14689 : Bundle := named_bundle% "RealMapCertificates/relations/basis14689.json"
theorem reductionProof14689 : EqualModuloRelations reduction14689.relations reduction14689.input reduction14689.output := by lin_cert using reduction14689.terms
theorem substitutionProof14689 : IsMapEvaluation generatorImages reduction14689.relations [173,324] reduction14689.output := by lin_cert using reduction14689.terms
def image14690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14690 : InImage map_16_227 image14690 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14690 : Bundle := named_bundle% "RealMapCertificates/relations/basis14690.json"
theorem reductionProof14690 : EqualModuloRelations reduction14690.relations reduction14690.input reduction14690.output := by lin_cert using reduction14690.terms
theorem substitutionProof14690 : IsMapEvaluation generatorImages reduction14690.relations [172,324] reduction14690.output := by lin_cert using reduction14690.terms
def image14691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14691 : InImage map_16_227 image14691 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14691 : Bundle := named_bundle% "RealMapCertificates/relations/basis14691.json"
theorem reductionProof14691 : EqualModuloRelations reduction14691.relations reduction14691.input reduction14691.output := by lin_cert using reduction14691.terms
theorem substitutionProof14691 : IsMapEvaluation generatorImages reduction14691.relations [7,1389] reduction14691.output := by lin_cert using reduction14691.terms
def image14692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14692 : InImage map_16_227 image14692 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14692 : Bundle := named_bundle% "RealMapCertificates/relations/basis14692.json"
theorem reductionProof14692 : EqualModuloRelations reduction14692.relations reduction14692.input reduction14692.output := by lin_cert using reduction14692.terms
theorem substitutionProof14692 : IsMapEvaluation generatorImages reduction14692.relations [0,2,1601] reduction14692.output := by lin_cert using reduction14692.terms
def image14693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14693 : InImage map_16_227 image14693 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14693 : Bundle := named_bundle% "RealMapCertificates/relations/basis14693.json"
theorem reductionProof14693 : EqualModuloRelations reduction14693.relations reduction14693.input reduction14693.output := by lin_cert using reduction14693.terms
theorem substitutionProof14693 : IsMapEvaluation generatorImages reduction14693.relations [0,0,0,7,1342] reduction14693.output := by lin_cert using reduction14693.terms
def map_16_228 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14906 : InImage map_16_228 image14906 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14906 : Bundle := named_bundle% "RealMapCertificates/relations/basis14906.json"
theorem reductionProof14906 : EqualModuloRelations reduction14906.relations reduction14906.input reduction14906.output := by lin_cert using reduction14906.terms
theorem substitutionProof14906 : IsMapEvaluation generatorImages reduction14906.relations [1707] reduction14906.output := by lin_cert using reduction14906.terms
def image14907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14907 : InImage map_16_228 image14907 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14907 : Bundle := named_bundle% "RealMapCertificates/relations/basis14907.json"
theorem reductionProof14907 : EqualModuloRelations reduction14907.relations reduction14907.input reduction14907.output := by lin_cert using reduction14907.terms
theorem substitutionProof14907 : IsMapEvaluation generatorImages reduction14907.relations [1706] reduction14907.output := by lin_cert using reduction14907.terms
def image14908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14908 : InImage map_16_228 image14908 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14908 : Bundle := named_bundle% "RealMapCertificates/relations/basis14908.json"
theorem reductionProof14908 : EqualModuloRelations reduction14908.relations reduction14908.input reduction14908.output := by lin_cert using reduction14908.terms
theorem substitutionProof14908 : IsMapEvaluation generatorImages reduction14908.relations [1705] reduction14908.output := by lin_cert using reduction14908.terms
def image14909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14909 : InImage map_16_228 image14909 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14909 : Bundle := named_bundle% "RealMapCertificates/relations/basis14909.json"
theorem reductionProof14909 : EqualModuloRelations reduction14909.relations reduction14909.input reduction14909.output := by lin_cert using reduction14909.terms
theorem substitutionProof14909 : IsMapEvaluation generatorImages reduction14909.relations [1,168,324] reduction14909.output := by lin_cert using reduction14909.terms
def image14910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14910 : InImage map_16_228 image14910 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14910 : Bundle := named_bundle% "RealMapCertificates/relations/basis14910.json"
theorem reductionProof14910 : EqualModuloRelations reduction14910.relations reduction14910.input reduction14910.output := by lin_cert using reduction14910.terms
theorem substitutionProof14910 : IsMapEvaluation generatorImages reduction14910.relations [0,0,169,324] reduction14910.output := by lin_cert using reduction14910.terms
def image14911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14911 : InImage map_16_228 image14911 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14911 : Bundle := named_bundle% "RealMapCertificates/relations/basis14911.json"
theorem reductionProof14911 : EqualModuloRelations reduction14911.relations reduction14911.input reduction14911.output := by lin_cert using reduction14911.terms
theorem substitutionProof14911 : IsMapEvaluation generatorImages reduction14911.relations [0,0,0,7,1356] reduction14911.output := by lin_cert using reduction14911.terms
def map_16_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15068 : InImage map_16_229 image15068 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15068 : Bundle := named_bundle% "RealMapCertificates/relations/basis15068.json"
theorem reductionProof15068 : EqualModuloRelations reduction15068.relations reduction15068.input reduction15068.output := by lin_cert using reduction15068.terms
theorem substitutionProof15068 : IsMapEvaluation generatorImages reduction15068.relations [1730] reduction15068.output := by lin_cert using reduction15068.terms
def image15069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15069 : InImage map_16_229 image15069 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15069 : Bundle := named_bundle% "RealMapCertificates/relations/basis15069.json"
theorem reductionProof15069 : EqualModuloRelations reduction15069.relations reduction15069.input reduction15069.output := by lin_cert using reduction15069.terms
theorem substitutionProof15069 : IsMapEvaluation generatorImages reduction15069.relations [0,176,324] reduction15069.output := by lin_cert using reduction15069.terms
def map_16_230 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15292 : InImage map_16_230 image15292 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15292 : Bundle := named_bundle% "RealMapCertificates/relations/basis15292.json"
theorem reductionProof15292 : EqualModuloRelations reduction15292.relations reduction15292.input reduction15292.output := by lin_cert using reduction15292.terms
theorem substitutionProof15292 : IsMapEvaluation generatorImages reduction15292.relations [1745] reduction15292.output := by lin_cert using reduction15292.terms
def image15293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15293 : InImage map_16_230 image15293 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15293 : Bundle := named_bundle% "RealMapCertificates/relations/basis15293.json"
theorem reductionProof15293 : EqualModuloRelations reduction15293.relations reduction15293.input reduction15293.output := by lin_cert using reduction15293.terms
theorem substitutionProof15293 : IsMapEvaluation generatorImages reduction15293.relations [186,324] reduction15293.output := by lin_cert using reduction15293.terms
def image15294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15294 : InImage map_16_230 image15294 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15294 : Bundle := named_bundle% "RealMapCertificates/relations/basis15294.json"
theorem reductionProof15294 : EqualModuloRelations reduction15294.relations reduction15294.input reduction15294.output := by lin_cert using reduction15294.terms
theorem substitutionProof15294 : IsMapEvaluation generatorImages reduction15294.relations [174,352] reduction15294.output := by lin_cert using reduction15294.terms
def image15295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15295 : InImage map_16_230 image15295 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15295 : Bundle := named_bundle% "RealMapCertificates/relations/basis15295.json"
theorem reductionProof15295 : EqualModuloRelations reduction15295.relations reduction15295.input reduction15295.output := by lin_cert using reduction15295.terms
theorem substitutionProof15295 : IsMapEvaluation generatorImages reduction15295.relations [1,1708] reduction15295.output := by lin_cert using reduction15295.terms
def image15296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15296 : InImage map_16_230 image15296 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15296 : Bundle := named_bundle% "RealMapCertificates/relations/basis15296.json"
theorem reductionProof15296 : EqualModuloRelations reduction15296.relations reduction15296.input reduction15296.output := by lin_cert using reduction15296.terms
theorem substitutionProof15296 : IsMapEvaluation generatorImages reduction15296.relations [1,176,324] reduction15296.output := by lin_cert using reduction15296.terms
def image15297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15297 : InImage map_16_230 image15297 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15297 : Bundle := named_bundle% "RealMapCertificates/relations/basis15297.json"
theorem reductionProof15297 : EqualModuloRelations reduction15297.relations reduction15297.input reduction15297.output := by lin_cert using reduction15297.terms
theorem substitutionProof15297 : IsMapEvaluation generatorImages reduction15297.relations [0,1731] reduction15297.output := by lin_cert using reduction15297.terms
end RealMapCertificates
