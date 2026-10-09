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
  | 9 => [[8]]
  | 13 => [[9]]
  | 23 => [[7,7]]
  | 34 => []
  | 43 => []
  | 67 => []
  | 76 => []
  | 80 => []
  | 95 => []
  | 187 => []
  | 188 => []
  | 190 => []
  | 197 => []
  | 201 => []
  | 203 => []
  | 209 => []
  | 215 => []
  | 226 => []
  | 228 => []
  | 255 => []
  | 266 => []
  | 267 => []
  | 324 => []
  | 333 => []
  | 352 => []
  | 376 => []
  | 396 => []
  | 734 => []
  | 1118 => []
  | 1120 => []
  | 1676 => []
  | 1731 => []
  | 1732 => []
  | 1794 => []
  | 1795 => []
  | 1796 => []
  | 1797 => []
  | 1798 => []
  | 1799 => []
  | 1822 => []
  | 1823 => []
  | 1824 => []
  | 1825 => []
  | 1844 => []
  | 1845 => []
  | 1846 => []
  | 1848 => []
  | 1878 => []
  | 1879 => []
  | 1880 => []
  | 1882 => []
  | 1896 => []
  | 1897 => []
  | 1919 => []
  | 1920 => []
  | 1951 => []
  | 1952 => []
  | 1953 => []
  | 1978 => []
  | 1979 => []
  | 1980 => []
  | 1981 => []
  | 1982 => []
  | 1985 => []
  | 2021 => []
  | 2022 => []
  | 2023 => []
  | 2024 => []
  | 2026 => []
  | 2077 => []
  | 2078 => []
  | 2115 => []
  | 2147 => []
  | 2148 => []
  | 2149 => []
  | 2186 => []
  | 2230 => []
  | 2231 => []
  | 2232 => []
  | 2233 => []
  | 2270 => []
  | 2271 => []
  | 2295 => []
  | _ => []
def map_16_231 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15542 : InImage map_16_231 image15542 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15542 : Bundle := named_bundle% "RealMapCertificates/relations/basis15542.json"
theorem reductionProof15542 : EqualModuloRelations reduction15542.relations reduction15542.input reduction15542.output := by lin_cert using reduction15542.terms
theorem substitutionProof15542 : IsMapEvaluation generatorImages reduction15542.relations [0,0,1732] reduction15542.output := by lin_cert using reduction15542.terms
def map_16_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15708 : InImage map_16_232 image15708 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15708 : Bundle := named_bundle% "RealMapCertificates/relations/basis15708.json"
theorem reductionProof15708 : EqualModuloRelations reduction15708.relations reduction15708.input reduction15708.output := by lin_cert using reduction15708.terms
theorem substitutionProof15708 : IsMapEvaluation generatorImages reduction15708.relations [1794] reduction15708.output := by lin_cert using reduction15708.terms
def image15709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15709 : InImage map_16_232 image15709 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15709 : Bundle := named_bundle% "RealMapCertificates/relations/basis15709.json"
theorem reductionProof15709 : EqualModuloRelations reduction15709.relations reduction15709.input reduction15709.output := by lin_cert using reduction15709.terms
theorem substitutionProof15709 : IsMapEvaluation generatorImages reduction15709.relations [0,0,0,0,0,0,1676] reduction15709.output := by lin_cert using reduction15709.terms
def map_16_233 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15940 : InImage map_16_233 image15940 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15940 : Bundle := named_bundle% "RealMapCertificates/relations/basis15940.json"
theorem reductionProof15940 : EqualModuloRelations reduction15940.relations reduction15940.input reduction15940.output := by lin_cert using reduction15940.terms
theorem substitutionProof15940 : IsMapEvaluation generatorImages reduction15940.relations [1823] reduction15940.output := by lin_cert using reduction15940.terms
def image15941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15941 : InImage map_16_233 image15941 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15941 : Bundle := named_bundle% "RealMapCertificates/relations/basis15941.json"
theorem reductionProof15941 : EqualModuloRelations reduction15941.relations reduction15941.input reduction15941.output := by lin_cert using reduction15941.terms
theorem substitutionProof15941 : IsMapEvaluation generatorImages reduction15941.relations [1822] reduction15941.output := by lin_cert using reduction15941.terms
def image15942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15942 : InImage map_16_233 image15942 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15942 : Bundle := named_bundle% "RealMapCertificates/relations/basis15942.json"
theorem reductionProof15942 : EqualModuloRelations reduction15942.relations reduction15942.input reduction15942.output := by lin_cert using reduction15942.terms
theorem substitutionProof15942 : IsMapEvaluation generatorImages reduction15942.relations [23,80,324] reduction15942.output := by lin_cert using reduction15942.terms
def image15943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15943 : InImage map_16_233 image15943 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15943 : Bundle := named_bundle% "RealMapCertificates/relations/basis15943.json"
theorem reductionProof15943 : EqualModuloRelations reduction15943.relations reduction15943.input reduction15943.output := by lin_cert using reduction15943.terms
theorem substitutionProof15943 : IsMapEvaluation generatorImages reduction15943.relations [2,1731] reduction15943.output := by lin_cert using reduction15943.terms
def image15944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15944 : InImage map_16_233 image15944 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15944 : Bundle := named_bundle% "RealMapCertificates/relations/basis15944.json"
theorem reductionProof15944 : EqualModuloRelations reduction15944.relations reduction15944.input reduction15944.output := by lin_cert using reduction15944.terms
theorem substitutionProof15944 : IsMapEvaluation generatorImages reduction15944.relations [0,1797] reduction15944.output := by lin_cert using reduction15944.terms
def image15945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15945 : InImage map_16_233 image15945 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15945 : Bundle := named_bundle% "RealMapCertificates/relations/basis15945.json"
theorem reductionProof15945 : EqualModuloRelations reduction15945.relations reduction15945.input reduction15945.output := by lin_cert using reduction15945.terms
theorem substitutionProof15945 : IsMapEvaluation generatorImages reduction15945.relations [0,1796] reduction15945.output := by lin_cert using reduction15945.terms
def image15946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15946 : InImage map_16_233 image15946 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15946 : Bundle := named_bundle% "RealMapCertificates/relations/basis15946.json"
theorem reductionProof15946 : EqualModuloRelations reduction15946.relations reduction15946.input reduction15946.output := by lin_cert using reduction15946.terms
theorem substitutionProof15946 : IsMapEvaluation generatorImages reduction15946.relations [0,1795] reduction15946.output := by lin_cert using reduction15946.terms
def image15947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15947 : InImage map_16_233 image15947 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15947 : Bundle := named_bundle% "RealMapCertificates/relations/basis15947.json"
theorem reductionProof15947 : EqualModuloRelations reduction15947.relations reduction15947.input reduction15947.output := by lin_cert using reduction15947.terms
theorem substitutionProof15947 : IsMapEvaluation generatorImages reduction15947.relations [0,0,0,187,324] reduction15947.output := by lin_cert using reduction15947.terms
def map_16_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16191 : InImage map_16_234 image16191 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16191 : Bundle := named_bundle% "RealMapCertificates/relations/basis16191.json"
theorem reductionProof16191 : EqualModuloRelations reduction16191.relations reduction16191.input reduction16191.output := by lin_cert using reduction16191.terms
theorem substitutionProof16191 : IsMapEvaluation generatorImages reduction16191.relations [1845] reduction16191.output := by lin_cert using reduction16191.terms
def image16192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16192 : InImage map_16_234 image16192 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16192 : Bundle := named_bundle% "RealMapCertificates/relations/basis16192.json"
theorem reductionProof16192 : EqualModuloRelations reduction16192.relations reduction16192.input reduction16192.output := by lin_cert using reduction16192.terms
theorem substitutionProof16192 : IsMapEvaluation generatorImages reduction16192.relations [1844] reduction16192.output := by lin_cert using reduction16192.terms
def image16193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16193 : InImage map_16_234 image16193 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16193 : Bundle := named_bundle% "RealMapCertificates/relations/basis16193.json"
theorem reductionProof16193 : EqualModuloRelations reduction16193.relations reduction16193.input reduction16193.output := by lin_cert using reduction16193.terms
theorem substitutionProof16193 : IsMapEvaluation generatorImages reduction16193.relations [76,734] reduction16193.output := by lin_cert using reduction16193.terms
def image16194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16194 : InImage map_16_234 image16194 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16194 : Bundle := named_bundle% "RealMapCertificates/relations/basis16194.json"
theorem reductionProof16194 : EqualModuloRelations reduction16194.relations reduction16194.input reduction16194.output := by lin_cert using reduction16194.terms
theorem substitutionProof16194 : IsMapEvaluation generatorImages reduction16194.relations [0,0,1798] reduction16194.output := by lin_cert using reduction16194.terms
def image16195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16195 : InImage map_16_234 image16195 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16195 : Bundle := named_bundle% "RealMapCertificates/relations/basis16195.json"
theorem reductionProof16195 : EqualModuloRelations reduction16195.relations reduction16195.input reduction16195.output := by lin_cert using reduction16195.terms
theorem substitutionProof16195 : IsMapEvaluation generatorImages reduction16195.relations [0,0,0,0,188,324] reduction16195.output := by lin_cert using reduction16195.terms
def map_16_235 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16380 : InImage map_16_235 image16380 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16380 : Bundle := named_bundle% "RealMapCertificates/relations/basis16380.json"
theorem reductionProof16380 : EqualModuloRelations reduction16380.relations reduction16380.input reduction16380.output := by lin_cert using reduction16380.terms
theorem substitutionProof16380 : IsMapEvaluation generatorImages reduction16380.relations [1878] reduction16380.output := by lin_cert using reduction16380.terms
def image16381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16381 : InImage map_16_235 image16381 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16381 : Bundle := named_bundle% "RealMapCertificates/relations/basis16381.json"
theorem reductionProof16381 : EqualModuloRelations reduction16381.relations reduction16381.input reduction16381.output := by lin_cert using reduction16381.terms
theorem substitutionProof16381 : IsMapEvaluation generatorImages reduction16381.relations [203,333] reduction16381.output := by lin_cert using reduction16381.terms
def image16382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16382 : InImage map_16_235 image16382 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16382 : Bundle := named_bundle% "RealMapCertificates/relations/basis16382.json"
theorem reductionProof16382 : EqualModuloRelations reduction16382.relations reduction16382.input reduction16382.output := by lin_cert using reduction16382.terms
theorem substitutionProof16382 : IsMapEvaluation generatorImages reduction16382.relations [197,352] reduction16382.output := by lin_cert using reduction16382.terms
def image16383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16383 : InImage map_16_235 image16383 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16383 : Bundle := named_bundle% "RealMapCertificates/relations/basis16383.json"
theorem reductionProof16383 : EqualModuloRelations reduction16383.relations reduction16383.input reduction16383.output := by lin_cert using reduction16383.terms
theorem substitutionProof16383 : IsMapEvaluation generatorImages reduction16383.relations [190,376] reduction16383.output := by lin_cert using reduction16383.terms
def image16384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16384 : InImage map_16_235 image16384 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16384 : Bundle := named_bundle% "RealMapCertificates/relations/basis16384.json"
theorem reductionProof16384 : EqualModuloRelations reduction16384.relations reduction16384.input reduction16384.output := by lin_cert using reduction16384.terms
theorem substitutionProof16384 : IsMapEvaluation generatorImages reduction16384.relations [1,1824] reduction16384.output := by lin_cert using reduction16384.terms
def image16385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16385 : InImage map_16_235 image16385 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16385 : Bundle := named_bundle% "RealMapCertificates/relations/basis16385.json"
theorem reductionProof16385 : EqualModuloRelations reduction16385.relations reduction16385.input reduction16385.output := by lin_cert using reduction16385.terms
theorem substitutionProof16385 : IsMapEvaluation generatorImages reduction16385.relations [0,1846] reduction16385.output := by lin_cert using reduction16385.terms
def map_16_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16613 : InImage map_16_236 image16613 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16613 : Bundle := named_bundle% "RealMapCertificates/relations/basis16613.json"
theorem reductionProof16613 : EqualModuloRelations reduction16613.relations reduction16613.input reduction16613.output := by lin_cert using reduction16613.terms
theorem substitutionProof16613 : IsMapEvaluation generatorImages reduction16613.relations [1896] reduction16613.output := by lin_cert using reduction16613.terms
def image16614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16614 : InImage map_16_236 image16614 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16614 : Bundle := named_bundle% "RealMapCertificates/relations/basis16614.json"
theorem reductionProof16614 : EqualModuloRelations reduction16614.relations reduction16614.input reduction16614.output := by lin_cert using reduction16614.terms
theorem substitutionProof16614 : IsMapEvaluation generatorImages reduction16614.relations [0,1880] reduction16614.output := by lin_cert using reduction16614.terms
def image16615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16615 : InImage map_16_236 image16615 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16615 : Bundle := named_bundle% "RealMapCertificates/relations/basis16615.json"
theorem reductionProof16615 : EqualModuloRelations reduction16615.relations reduction16615.input reduction16615.output := by lin_cert using reduction16615.terms
theorem substitutionProof16615 : IsMapEvaluation generatorImages reduction16615.relations [0,1879] reduction16615.output := by lin_cert using reduction16615.terms
def image16616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16616 : InImage map_16_236 image16616 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16616 : Bundle := named_bundle% "RealMapCertificates/relations/basis16616.json"
theorem reductionProof16616 : EqualModuloRelations reduction16616.relations reduction16616.input reduction16616.output := by lin_cert using reduction16616.terms
theorem substitutionProof16616 : IsMapEvaluation generatorImages reduction16616.relations [0,0,1848] reduction16616.output := by lin_cert using reduction16616.terms
def image16617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16617 : InImage map_16_236 image16617 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16617 : Bundle := named_bundle% "RealMapCertificates/relations/basis16617.json"
theorem reductionProof16617 : EqualModuloRelations reduction16617.relations reduction16617.input reduction16617.output := by lin_cert using reduction16617.terms
theorem substitutionProof16617 : IsMapEvaluation generatorImages reduction16617.relations [0,0,0,201,324] reduction16617.output := by lin_cert using reduction16617.terms
def map_16_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16860 : InImage map_16_237 image16860 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16860 : Bundle := named_bundle% "RealMapCertificates/relations/basis16860.json"
theorem reductionProof16860 : EqualModuloRelations reduction16860.relations reduction16860.input reduction16860.output := by lin_cert using reduction16860.terms
theorem substitutionProof16860 : IsMapEvaluation generatorImages reduction16860.relations [1919] reduction16860.output := by lin_cert using reduction16860.terms
def image16861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16861 : InImage map_16_237 image16861 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16861 : Bundle := named_bundle% "RealMapCertificates/relations/basis16861.json"
theorem reductionProof16861 : EqualModuloRelations reduction16861.relations reduction16861.input reduction16861.output := by lin_cert using reduction16861.terms
theorem substitutionProof16861 : IsMapEvaluation generatorImages reduction16861.relations [215,324] reduction16861.output := by lin_cert using reduction16861.terms
def image16862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16862 : InImage map_16_237 image16862 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16862 : Bundle := named_bundle% "RealMapCertificates/relations/basis16862.json"
theorem reductionProof16862 : EqualModuloRelations reduction16862.relations reduction16862.input reduction16862.output := by lin_cert using reduction16862.terms
theorem substitutionProof16862 : IsMapEvaluation generatorImages reduction16862.relations [3,1731] reduction16862.output := by lin_cert using reduction16862.terms
def image16863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16863 : InImage map_16_237 image16863 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16863 : Bundle := named_bundle% "RealMapCertificates/relations/basis16863.json"
theorem reductionProof16863 : EqualModuloRelations reduction16863.relations reduction16863.input reduction16863.output := by lin_cert using reduction16863.terms
theorem substitutionProof16863 : IsMapEvaluation generatorImages reduction16863.relations [0,0,1882] reduction16863.output := by lin_cert using reduction16863.terms
def map_16_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17050 : InImage map_16_238 image17050 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17050 : Bundle := named_bundle% "RealMapCertificates/relations/basis17050.json"
theorem reductionProof17050 : EqualModuloRelations reduction17050.relations reduction17050.input reduction17050.output := by lin_cert using reduction17050.terms
theorem substitutionProof17050 : IsMapEvaluation generatorImages reduction17050.relations [1952] reduction17050.output := by lin_cert using reduction17050.terms
def image17051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17051 : InImage map_16_238 image17051 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17051 : Bundle := named_bundle% "RealMapCertificates/relations/basis17051.json"
theorem reductionProof17051 : EqualModuloRelations reduction17051.relations reduction17051.input reduction17051.output := by lin_cert using reduction17051.terms
theorem substitutionProof17051 : IsMapEvaluation generatorImages reduction17051.relations [1951] reduction17051.output := by lin_cert using reduction17051.terms
def image17052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17052 : InImage map_16_238 image17052 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17052 : Bundle := named_bundle% "RealMapCertificates/relations/basis17052.json"
theorem reductionProof17052 : EqualModuloRelations reduction17052.relations reduction17052.input reduction17052.output := by lin_cert using reduction17052.terms
theorem substitutionProof17052 : IsMapEvaluation generatorImages reduction17052.relations [34,1120] reduction17052.output := by lin_cert using reduction17052.terms
def image17053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17053 : InImage map_16_238 image17053 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17053 : Bundle := named_bundle% "RealMapCertificates/relations/basis17053.json"
theorem reductionProof17053 : EqualModuloRelations reduction17053.relations reduction17053.input reduction17053.output := by lin_cert using reduction17053.terms
theorem substitutionProof17053 : IsMapEvaluation generatorImages reduction17053.relations [0,1920] reduction17053.output := by lin_cert using reduction17053.terms
def image17054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17054 : InImage map_16_238 image17054 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17054 : Bundle := named_bundle% "RealMapCertificates/relations/basis17054.json"
theorem reductionProof17054 : EqualModuloRelations reduction17054.relations reduction17054.input reduction17054.output := by lin_cert using reduction17054.terms
theorem substitutionProof17054 : IsMapEvaluation generatorImages reduction17054.relations [0,203,352] reduction17054.output := by lin_cert using reduction17054.terms
def image17055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17055 : InImage map_16_238 image17055 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17055 : Bundle := named_bundle% "RealMapCertificates/relations/basis17055.json"
theorem reductionProof17055 : EqualModuloRelations reduction17055.relations reduction17055.input reduction17055.output := by lin_cert using reduction17055.terms
theorem substitutionProof17055 : IsMapEvaluation generatorImages reduction17055.relations [0,3,1732] reduction17055.output := by lin_cert using reduction17055.terms
def map_16_239 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17310 : InImage map_16_239 image17310 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17310 : Bundle := named_bundle% "RealMapCertificates/relations/basis17310.json"
theorem reductionProof17310 : EqualModuloRelations reduction17310.relations reduction17310.input reduction17310.output := by lin_cert using reduction17310.terms
theorem substitutionProof17310 : IsMapEvaluation generatorImages reduction17310.relations [1978] reduction17310.output := by lin_cert using reduction17310.terms
def image17311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17311 : InImage map_16_239 image17311 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17311 : Bundle := named_bundle% "RealMapCertificates/relations/basis17311.json"
theorem reductionProof17311 : EqualModuloRelations reduction17311.relations reduction17311.input reduction17311.output := by lin_cert using reduction17311.terms
theorem substitutionProof17311 : IsMapEvaluation generatorImages reduction17311.relations [226,324] reduction17311.output := by lin_cert using reduction17311.terms
def image17312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17312 : InImage map_16_239 image17312 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17312 : Bundle := named_bundle% "RealMapCertificates/relations/basis17312.json"
theorem reductionProof17312 : EqualModuloRelations reduction17312.relations reduction17312.input reduction17312.output := by lin_cert using reduction17312.terms
theorem substitutionProof17312 : IsMapEvaluation generatorImages reduction17312.relations [0,0,0,1897] reduction17312.output := by lin_cert using reduction17312.terms
def map_16_240 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image17584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17584 : InImage map_16_240 image17584 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction17584 : Bundle := named_bundle% "RealMapCertificates/relations/basis17584.json"
theorem reductionProof17584 : EqualModuloRelations reduction17584.relations reduction17584.input reduction17584.output := by lin_cert using reduction17584.terms
theorem substitutionProof17584 : IsMapEvaluation generatorImages reduction17584.relations [2023] reduction17584.output := by lin_cert using reduction17584.terms
def image17585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17585 : InImage map_16_240 image17585 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction17585 : Bundle := named_bundle% "RealMapCertificates/relations/basis17585.json"
theorem reductionProof17585 : EqualModuloRelations reduction17585.relations reduction17585.input reduction17585.output := by lin_cert using reduction17585.terms
theorem substitutionProof17585 : IsMapEvaluation generatorImages reduction17585.relations [2022] reduction17585.output := by lin_cert using reduction17585.terms
def image17586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17586 : InImage map_16_240 image17586 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction17586 : Bundle := named_bundle% "RealMapCertificates/relations/basis17586.json"
theorem reductionProof17586 : EqualModuloRelations reduction17586.relations reduction17586.input reduction17586.output := by lin_cert using reduction17586.terms
theorem substitutionProof17586 : IsMapEvaluation generatorImages reduction17586.relations [2021] reduction17586.output := by lin_cert using reduction17586.terms
def image17587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17587 : InImage map_16_240 image17587 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction17587 : Bundle := named_bundle% "RealMapCertificates/relations/basis17587.json"
theorem reductionProof17587 : EqualModuloRelations reduction17587.relations reduction17587.input reduction17587.output := by lin_cert using reduction17587.terms
theorem substitutionProof17587 : IsMapEvaluation generatorImages reduction17587.relations [13,13,67,324] reduction17587.output := by lin_cert using reduction17587.terms
def image17588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17588 : InImage map_16_240 image17588 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction17588 : Bundle := named_bundle% "RealMapCertificates/relations/basis17588.json"
theorem reductionProof17588 : EqualModuloRelations reduction17588.relations reduction17588.input reduction17588.output := by lin_cert using reduction17588.terms
theorem substitutionProof17588 : IsMapEvaluation generatorImages reduction17588.relations [3,1797] reduction17588.output := by lin_cert using reduction17588.terms
def image17589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17589 : InImage map_16_240 image17589 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction17589 : Bundle := named_bundle% "RealMapCertificates/relations/basis17589.json"
theorem reductionProof17589 : EqualModuloRelations reduction17589.relations reduction17589.input reduction17589.output := by lin_cert using reduction17589.terms
theorem substitutionProof17589 : IsMapEvaluation generatorImages reduction17589.relations [3,1796] reduction17589.output := by lin_cert using reduction17589.terms
def image17590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17590 : InImage map_16_240 image17590 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction17590 : Bundle := named_bundle% "RealMapCertificates/relations/basis17590.json"
theorem reductionProof17590 : EqualModuloRelations reduction17590.relations reduction17590.input reduction17590.output := by lin_cert using reduction17590.terms
theorem substitutionProof17590 : IsMapEvaluation generatorImages reduction17590.relations [3,1795] reduction17590.output := by lin_cert using reduction17590.terms
def image17591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17591 : InImage map_16_240 image17591 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction17591 : Bundle := named_bundle% "RealMapCertificates/relations/basis17591.json"
theorem reductionProof17591 : EqualModuloRelations reduction17591.relations reduction17591.input reduction17591.output := by lin_cert using reduction17591.terms
theorem substitutionProof17591 : IsMapEvaluation generatorImages reduction17591.relations [1,1953] reduction17591.output := by lin_cert using reduction17591.terms
def image17592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17592 : InImage map_16_240 image17592 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction17592 : Bundle := named_bundle% "RealMapCertificates/relations/basis17592.json"
theorem reductionProof17592 : EqualModuloRelations reduction17592.relations reduction17592.input reduction17592.output := by lin_cert using reduction17592.terms
theorem substitutionProof17592 : IsMapEvaluation generatorImages reduction17592.relations [0,1981] reduction17592.output := by lin_cert using reduction17592.terms
def image17593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17593 : InImage map_16_240 image17593 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction17593 : Bundle := named_bundle% "RealMapCertificates/relations/basis17593.json"
theorem reductionProof17593 : EqualModuloRelations reduction17593.relations reduction17593.input reduction17593.output := by lin_cert using reduction17593.terms
theorem substitutionProof17593 : IsMapEvaluation generatorImages reduction17593.relations [0,1980] reduction17593.output := by lin_cert using reduction17593.terms
def image17594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17594 : InImage map_16_240 image17594 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction17594 : Bundle := named_bundle% "RealMapCertificates/relations/basis17594.json"
theorem reductionProof17594 : EqualModuloRelations reduction17594.relations reduction17594.input reduction17594.output := by lin_cert using reduction17594.terms
theorem substitutionProof17594 : IsMapEvaluation generatorImages reduction17594.relations [0,1979] reduction17594.output := by lin_cert using reduction17594.terms
def image17595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17595 : InImage map_16_240 image17595 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction17595 : Bundle := named_bundle% "RealMapCertificates/relations/basis17595.json"
theorem reductionProof17595 : EqualModuloRelations reduction17595.relations reduction17595.input reduction17595.output := by lin_cert using reduction17595.terms
theorem substitutionProof17595 : IsMapEvaluation generatorImages reduction17595.relations [0,0,0,0,0,209,324] reduction17595.output := by lin_cert using reduction17595.terms
def map_16_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17829 : InImage map_16_241 image17829 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17829 : Bundle := named_bundle% "RealMapCertificates/relations/basis17829.json"
theorem reductionProof17829 : EqualModuloRelations reduction17829.relations reduction17829.input reduction17829.output := by lin_cert using reduction17829.terms
theorem substitutionProof17829 : IsMapEvaluation generatorImages reduction17829.relations [1,1979] reduction17829.output := by lin_cert using reduction17829.terms
def image17830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17830 : InImage map_16_241 image17830 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17830 : Bundle := named_bundle% "RealMapCertificates/relations/basis17830.json"
theorem reductionProof17830 : EqualModuloRelations reduction17830.relations reduction17830.input reduction17830.output := by lin_cert using reduction17830.terms
theorem substitutionProof17830 : IsMapEvaluation generatorImages reduction17830.relations [0,2026] reduction17830.output := by lin_cert using reduction17830.terms
def image17831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17831 : InImage map_16_241 image17831 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17831 : Bundle := named_bundle% "RealMapCertificates/relations/basis17831.json"
theorem reductionProof17831 : EqualModuloRelations reduction17831.relations reduction17831.input reduction17831.output := by lin_cert using reduction17831.terms
theorem substitutionProof17831 : IsMapEvaluation generatorImages reduction17831.relations [0,3,1798] reduction17831.output := by lin_cert using reduction17831.terms
def image17832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17832 : InImage map_16_241 image17832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17832 : Bundle := named_bundle% "RealMapCertificates/relations/basis17832.json"
theorem reductionProof17832 : EqualModuloRelations reduction17832.relations reduction17832.input reduction17832.output := by lin_cert using reduction17832.terms
theorem substitutionProof17832 : IsMapEvaluation generatorImages reduction17832.relations [0,0,1982] reduction17832.output := by lin_cert using reduction17832.terms
def image17833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17833 : InImage map_16_241 image17833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17833 : Bundle := named_bundle% "RealMapCertificates/relations/basis17833.json"
theorem reductionProof17833 : EqualModuloRelations reduction17833.relations reduction17833.input reduction17833.output := by lin_cert using reduction17833.terms
theorem substitutionProof17833 : IsMapEvaluation generatorImages reduction17833.relations [0,0,0,3,188,324] reduction17833.output := by lin_cert using reduction17833.terms
def map_16_242 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18089 : InImage map_16_242 image18089 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18089 : Bundle := named_bundle% "RealMapCertificates/relations/basis18089.json"
theorem reductionProof18089 : EqualModuloRelations reduction18089.relations reduction18089.input reduction18089.output := by lin_cert using reduction18089.terms
theorem substitutionProof18089 : IsMapEvaluation generatorImages reduction18089.relations [2077] reduction18089.output := by lin_cert using reduction18089.terms
def image18090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18090 : InImage map_16_242 image18090 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18090 : Bundle := named_bundle% "RealMapCertificates/relations/basis18090.json"
theorem reductionProof18090 : EqualModuloRelations reduction18090.relations reduction18090.input reduction18090.output := by lin_cert using reduction18090.terms
theorem substitutionProof18090 : IsMapEvaluation generatorImages reduction18090.relations [1,2024] reduction18090.output := by lin_cert using reduction18090.terms
def image18091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18091 : InImage map_16_242 image18091 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18091 : Bundle := named_bundle% "RealMapCertificates/relations/basis18091.json"
theorem reductionProof18091 : EqualModuloRelations reduction18091.relations reduction18091.input reduction18091.output := by lin_cert using reduction18091.terms
theorem substitutionProof18091 : IsMapEvaluation generatorImages reduction18091.relations [1,3,1799] reduction18091.output := by lin_cert using reduction18091.terms
def map_16_243 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18362 : InImage map_16_243 image18362 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18362 : Bundle := named_bundle% "RealMapCertificates/relations/basis18362.json"
theorem reductionProof18362 : EqualModuloRelations reduction18362.relations reduction18362.input reduction18362.output := by lin_cert using reduction18362.terms
theorem substitutionProof18362 : IsMapEvaluation generatorImages reduction18362.relations [2115] reduction18362.output := by lin_cert using reduction18362.terms
def image18363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18363 : InImage map_16_243 image18363 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18363 : Bundle := named_bundle% "RealMapCertificates/relations/basis18363.json"
theorem reductionProof18363 : EqualModuloRelations reduction18363.relations reduction18363.input reduction18363.output := by lin_cert using reduction18363.terms
theorem substitutionProof18363 : IsMapEvaluation generatorImages reduction18363.relations [3,1879] reduction18363.output := by lin_cert using reduction18363.terms
def image18364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18364 : InImage map_16_243 image18364 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18364 : Bundle := named_bundle% "RealMapCertificates/relations/basis18364.json"
theorem reductionProof18364 : EqualModuloRelations reduction18364.relations reduction18364.input reduction18364.output := by lin_cert using reduction18364.terms
theorem substitutionProof18364 : IsMapEvaluation generatorImages reduction18364.relations [2,1981] reduction18364.output := by lin_cert using reduction18364.terms
def image18365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18365 : InImage map_16_243 image18365 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18365 : Bundle := named_bundle% "RealMapCertificates/relations/basis18365.json"
theorem reductionProof18365 : EqualModuloRelations reduction18365.relations reduction18365.input reduction18365.output := by lin_cert using reduction18365.terms
theorem substitutionProof18365 : IsMapEvaluation generatorImages reduction18365.relations [2,1979] reduction18365.output := by lin_cert using reduction18365.terms
def image18366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18366 : InImage map_16_243 image18366 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18366 : Bundle := named_bundle% "RealMapCertificates/relations/basis18366.json"
theorem reductionProof18366 : EqualModuloRelations reduction18366.relations reduction18366.input reduction18366.output := by lin_cert using reduction18366.terms
theorem substitutionProof18366 : IsMapEvaluation generatorImages reduction18366.relations [0,2078] reduction18366.output := by lin_cert using reduction18366.terms
def image18367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18367 : InImage map_16_243 image18367 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18367 : Bundle := named_bundle% "RealMapCertificates/relations/basis18367.json"
theorem reductionProof18367 : EqualModuloRelations reduction18367.relations reduction18367.input reduction18367.output := by lin_cert using reduction18367.terms
theorem substitutionProof18367 : IsMapEvaluation generatorImages reduction18367.relations [0,3,1848] reduction18367.output := by lin_cert using reduction18367.terms
def map_16_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18568 : InImage map_16_244 image18568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18568 : Bundle := named_bundle% "RealMapCertificates/relations/basis18568.json"
theorem reductionProof18568 : EqualModuloRelations reduction18568.relations reduction18568.input reduction18568.output := by lin_cert using reduction18568.terms
theorem substitutionProof18568 : IsMapEvaluation generatorImages reduction18568.relations [2147] reduction18568.output := by lin_cert using reduction18568.terms
def image18569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18569 : InImage map_16_244 image18569 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18569 : Bundle := named_bundle% "RealMapCertificates/relations/basis18569.json"
theorem reductionProof18569 : EqualModuloRelations reduction18569.relations reduction18569.input reduction18569.output := by lin_cert using reduction18569.terms
theorem substitutionProof18569 : IsMapEvaluation generatorImages reduction18569.relations [43,1118] reduction18569.output := by lin_cert using reduction18569.terms
def image18570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18570 : InImage map_16_244 image18570 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18570 : Bundle := named_bundle% "RealMapCertificates/relations/basis18570.json"
theorem reductionProof18570 : EqualModuloRelations reduction18570.relations reduction18570.input reduction18570.output := by lin_cert using reduction18570.terms
theorem substitutionProof18570 : IsMapEvaluation generatorImages reduction18570.relations [2,228,324] reduction18570.output := by lin_cert using reduction18570.terms
def image18571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18571 : InImage map_16_244 image18571 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18571 : Bundle := named_bundle% "RealMapCertificates/relations/basis18571.json"
theorem reductionProof18571 : EqualModuloRelations reduction18571.relations reduction18571.input reduction18571.output := by lin_cert using reduction18571.terms
theorem substitutionProof18571 : IsMapEvaluation generatorImages reduction18571.relations [0,0,0,3,1825] reduction18571.output := by lin_cert using reduction18571.terms
def map_16_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18834 : InImage map_16_245 image18834 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18834 : Bundle := named_bundle% "RealMapCertificates/relations/basis18834.json"
theorem reductionProof18834 : EqualModuloRelations reduction18834.relations reduction18834.input reduction18834.output := by lin_cert using reduction18834.terms
theorem substitutionProof18834 : IsMapEvaluation generatorImages reduction18834.relations [2186] reduction18834.output := by lin_cert using reduction18834.terms
def image18835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18835 : InImage map_16_245 image18835 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18835 : Bundle := named_bundle% "RealMapCertificates/relations/basis18835.json"
theorem reductionProof18835 : EqualModuloRelations reduction18835.relations reduction18835.input reduction18835.output := by lin_cert using reduction18835.terms
theorem substitutionProof18835 : IsMapEvaluation generatorImages reduction18835.relations [255,324] reduction18835.output := by lin_cert using reduction18835.terms
def image18836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18836 : InImage map_16_245 image18836 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18836 : Bundle := named_bundle% "RealMapCertificates/relations/basis18836.json"
theorem reductionProof18836 : EqualModuloRelations reduction18836.relations reduction18836.input reduction18836.output := by lin_cert using reduction18836.terms
theorem substitutionProof18836 : IsMapEvaluation generatorImages reduction18836.relations [3,203,352] reduction18836.output := by lin_cert using reduction18836.terms
def image18837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18837 : InImage map_16_245 image18837 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18837 : Bundle := named_bundle% "RealMapCertificates/relations/basis18837.json"
theorem reductionProof18837 : EqualModuloRelations reduction18837.relations reduction18837.input reduction18837.output := by lin_cert using reduction18837.terms
theorem substitutionProof18837 : IsMapEvaluation generatorImages reduction18837.relations [3,3,1732] reduction18837.output := by lin_cert using reduction18837.terms
def image18838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18838 : InImage map_16_245 image18838 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18838 : Bundle := named_bundle% "RealMapCertificates/relations/basis18838.json"
theorem reductionProof18838 : EqualModuloRelations reduction18838.relations reduction18838.input reduction18838.output := by lin_cert using reduction18838.terms
theorem substitutionProof18838 : IsMapEvaluation generatorImages reduction18838.relations [0,2148] reduction18838.output := by lin_cert using reduction18838.terms
def image18839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18839 : InImage map_16_245 image18839 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18839 : Bundle := named_bundle% "RealMapCertificates/relations/basis18839.json"
theorem reductionProof18839 : EqualModuloRelations reduction18839.relations reduction18839.input reduction18839.output := by lin_cert using reduction18839.terms
theorem substitutionProof18839 : IsMapEvaluation generatorImages reduction18839.relations [0,43,1120] reduction18839.output := by lin_cert using reduction18839.terms
def map_16_246 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19144 : InImage map_16_246 image19144 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19144 : Bundle := named_bundle% "RealMapCertificates/relations/basis19144.json"
theorem reductionProof19144 : EqualModuloRelations reduction19144.relations reduction19144.input reduction19144.output := by lin_cert using reduction19144.terms
theorem substitutionProof19144 : IsMapEvaluation generatorImages reduction19144.relations [2231] reduction19144.output := by lin_cert using reduction19144.terms
def image19145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19145 : InImage map_16_246 image19145 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19145 : Bundle := named_bundle% "RealMapCertificates/relations/basis19145.json"
theorem reductionProof19145 : EqualModuloRelations reduction19145.relations reduction19145.input reduction19145.output := by lin_cert using reduction19145.terms
theorem substitutionProof19145 : IsMapEvaluation generatorImages reduction19145.relations [2230] reduction19145.output := by lin_cert using reduction19145.terms
def image19146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19146 : InImage map_16_246 image19146 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19146 : Bundle := named_bundle% "RealMapCertificates/relations/basis19146.json"
theorem reductionProof19146 : EqualModuloRelations reduction19146.relations reduction19146.input reduction19146.output := by lin_cert using reduction19146.terms
theorem substitutionProof19146 : IsMapEvaluation generatorImages reduction19146.relations [9,13,95,324] reduction19146.output := by lin_cert using reduction19146.terms
def image19147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19147 : InImage map_16_246 image19147 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19147 : Bundle := named_bundle% "RealMapCertificates/relations/basis19147.json"
theorem reductionProof19147 : EqualModuloRelations reduction19147.relations reduction19147.input reduction19147.output := by lin_cert using reduction19147.terms
theorem substitutionProof19147 : IsMapEvaluation generatorImages reduction19147.relations [3,1953] reduction19147.output := by lin_cert using reduction19147.terms
def image19148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19148 : InImage map_16_246 image19148 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19148 : Bundle := named_bundle% "RealMapCertificates/relations/basis19148.json"
theorem reductionProof19148 : EqualModuloRelations reduction19148.relations reduction19148.input reduction19148.output := by lin_cert using reduction19148.terms
theorem substitutionProof19148 : IsMapEvaluation generatorImages reduction19148.relations [3,197,396] reduction19148.output := by lin_cert using reduction19148.terms
def image19149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19149 : InImage map_16_246 image19149 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19149 : Bundle := named_bundle% "RealMapCertificates/relations/basis19149.json"
theorem reductionProof19149 : EqualModuloRelations reduction19149.relations reduction19149.input reduction19149.output := by lin_cert using reduction19149.terms
theorem substitutionProof19149 : IsMapEvaluation generatorImages reduction19149.relations [1,2148] reduction19149.output := by lin_cert using reduction19149.terms
def image19150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19150 : InImage map_16_246 image19150 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19150 : Bundle := named_bundle% "RealMapCertificates/relations/basis19150.json"
theorem reductionProof19150 : EqualModuloRelations reduction19150.relations reduction19150.input reduction19150.output := by lin_cert using reduction19150.terms
theorem substitutionProof19150 : IsMapEvaluation generatorImages reduction19150.relations [0,0,2149] reduction19150.output := by lin_cert using reduction19150.terms
def map_16_247 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19370 : InImage map_16_247 image19370 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19370 : Bundle := named_bundle% "RealMapCertificates/relations/basis19370.json"
theorem reductionProof19370 : EqualModuloRelations reduction19370.relations reduction19370.input reduction19370.output := by lin_cert using reduction19370.terms
theorem substitutionProof19370 : IsMapEvaluation generatorImages reduction19370.relations [2270] reduction19370.output := by lin_cert using reduction19370.terms
def image19371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19371 : InImage map_16_247 image19371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19371 : Bundle := named_bundle% "RealMapCertificates/relations/basis19371.json"
theorem reductionProof19371 : EqualModuloRelations reduction19371.relations reduction19371.input reduction19371.output := by lin_cert using reduction19371.terms
theorem substitutionProof19371 : IsMapEvaluation generatorImages reduction19371.relations [3,1981] reduction19371.output := by lin_cert using reduction19371.terms
def image19372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19372 : InImage map_16_247 image19372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19372 : Bundle := named_bundle% "RealMapCertificates/relations/basis19372.json"
theorem reductionProof19372 : EqualModuloRelations reduction19372.relations reduction19372.input reduction19372.output := by lin_cert using reduction19372.terms
theorem substitutionProof19372 : IsMapEvaluation generatorImages reduction19372.relations [3,1979] reduction19372.output := by lin_cert using reduction19372.terms
def image19373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19373 : InImage map_16_247 image19373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19373 : Bundle := named_bundle% "RealMapCertificates/relations/basis19373.json"
theorem reductionProof19373 : EqualModuloRelations reduction19373.relations reduction19373.input reduction19373.output := by lin_cert using reduction19373.terms
theorem substitutionProof19373 : IsMapEvaluation generatorImages reduction19373.relations [0,2233] reduction19373.output := by lin_cert using reduction19373.terms
def image19374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19374 : InImage map_16_247 image19374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19374 : Bundle := named_bundle% "RealMapCertificates/relations/basis19374.json"
theorem reductionProof19374 : EqualModuloRelations reduction19374.relations reduction19374.input reduction19374.output := by lin_cert using reduction19374.terms
theorem substitutionProof19374 : IsMapEvaluation generatorImages reduction19374.relations [0,2232] reduction19374.output := by lin_cert using reduction19374.terms
def map_16_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19639 : InImage map_16_248 image19639 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19639 : Bundle := named_bundle% "RealMapCertificates/relations/basis19639.json"
theorem reductionProof19639 : EqualModuloRelations reduction19639.relations reduction19639.input reduction19639.output := by lin_cert using reduction19639.terms
theorem substitutionProof19639 : IsMapEvaluation generatorImages reduction19639.relations [266,324] reduction19639.output := by lin_cert using reduction19639.terms
def image19640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19640 : InImage map_16_248 image19640 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19640 : Bundle := named_bundle% "RealMapCertificates/relations/basis19640.json"
theorem reductionProof19640 : EqualModuloRelations reduction19640.relations reduction19640.input reduction19640.output := by lin_cert using reduction19640.terms
theorem substitutionProof19640 : IsMapEvaluation generatorImages reduction19640.relations [3,3,1798] reduction19640.output := by lin_cert using reduction19640.terms
def image19641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19641 : InImage map_16_248 image19641 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19641 : Bundle := named_bundle% "RealMapCertificates/relations/basis19641.json"
theorem reductionProof19641 : EqualModuloRelations reduction19641.relations reduction19641.input reduction19641.output := by lin_cert using reduction19641.terms
theorem substitutionProof19641 : IsMapEvaluation generatorImages reduction19641.relations [2,2148] reduction19641.output := by lin_cert using reduction19641.terms
def image19642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19642 : InImage map_16_248 image19642 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19642 : Bundle := named_bundle% "RealMapCertificates/relations/basis19642.json"
theorem reductionProof19642 : EqualModuloRelations reduction19642.relations reduction19642.input reduction19642.output := by lin_cert using reduction19642.terms
theorem substitutionProof19642 : IsMapEvaluation generatorImages reduction19642.relations [2,43,1120] reduction19642.output := by lin_cert using reduction19642.terms
def image19643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19643 : InImage map_16_248 image19643 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19643 : Bundle := named_bundle% "RealMapCertificates/relations/basis19643.json"
theorem reductionProof19643 : EqualModuloRelations reduction19643.relations reduction19643.input reduction19643.output := by lin_cert using reduction19643.terms
theorem substitutionProof19643 : IsMapEvaluation generatorImages reduction19643.relations [0,2271] reduction19643.output := by lin_cert using reduction19643.terms
def image19644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19644 : InImage map_16_248 image19644 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19644 : Bundle := named_bundle% "RealMapCertificates/relations/basis19644.json"
theorem reductionProof19644 : EqualModuloRelations reduction19644.relations reduction19644.input reduction19644.output := by lin_cert using reduction19644.terms
theorem substitutionProof19644 : IsMapEvaluation generatorImages reduction19644.relations [0,3,1982] reduction19644.output := by lin_cert using reduction19644.terms
def map_16_249 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19949 : InImage map_16_249 image19949 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19949 : Bundle := named_bundle% "RealMapCertificates/relations/basis19949.json"
theorem reductionProof19949 : EqualModuloRelations reduction19949.relations reduction19949.input reduction19949.output := by lin_cert using reduction19949.terms
theorem substitutionProof19949 : IsMapEvaluation generatorImages reduction19949.relations [13,13,95,324] reduction19949.output := by lin_cert using reduction19949.terms
def image19950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19950 : InImage map_16_249 image19950 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19950 : Bundle := named_bundle% "RealMapCertificates/relations/basis19950.json"
theorem reductionProof19950 : EqualModuloRelations reduction19950.relations reduction19950.input reduction19950.output := by lin_cert using reduction19950.terms
theorem substitutionProof19950 : IsMapEvaluation generatorImages reduction19950.relations [7,1824] reduction19950.output := by lin_cert using reduction19950.terms
def image19951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19951 : InImage map_16_249 image19951 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19951 : Bundle := named_bundle% "RealMapCertificates/relations/basis19951.json"
theorem reductionProof19951 : EqualModuloRelations reduction19951.relations reduction19951.input reduction19951.output := by lin_cert using reduction19951.terms
theorem substitutionProof19951 : IsMapEvaluation generatorImages reduction19951.relations [5,209,324] reduction19951.output := by lin_cert using reduction19951.terms
def image19952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19952 : InImage map_16_249 image19952 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19952 : Bundle := named_bundle% "RealMapCertificates/relations/basis19952.json"
theorem reductionProof19952 : EqualModuloRelations reduction19952.relations reduction19952.input reduction19952.output := by lin_cert using reduction19952.terms
theorem substitutionProof19952 : IsMapEvaluation generatorImages reduction19952.relations [1,2271] reduction19952.output := by lin_cert using reduction19952.terms
def image19953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19953 : InImage map_16_249 image19953 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19953 : Bundle := named_bundle% "RealMapCertificates/relations/basis19953.json"
theorem reductionProof19953 : EqualModuloRelations reduction19953.relations reduction19953.input reduction19953.output := by lin_cert using reduction19953.terms
theorem substitutionProof19953 : IsMapEvaluation generatorImages reduction19953.relations [0,2295] reduction19953.output := by lin_cert using reduction19953.terms
def image19954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19954 : InImage map_16_249 image19954 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19954 : Bundle := named_bundle% "RealMapCertificates/relations/basis19954.json"
theorem reductionProof19954 : EqualModuloRelations reduction19954.relations reduction19954.input reduction19954.output := by lin_cert using reduction19954.terms
theorem substitutionProof19954 : IsMapEvaluation generatorImages reduction19954.relations [0,267,324] reduction19954.output := by lin_cert using reduction19954.terms
def image19955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19955 : InImage map_16_249 image19955 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19955 : Bundle := named_bundle% "RealMapCertificates/relations/basis19955.json"
theorem reductionProof19955 : EqualModuloRelations reduction19955.relations reduction19955.input reduction19955.output := by lin_cert using reduction19955.terms
theorem substitutionProof19955 : IsMapEvaluation generatorImages reduction19955.relations [0,0,3,1985] reduction19955.output := by lin_cert using reduction19955.terms
end RealMapCertificates
