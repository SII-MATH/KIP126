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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 44 => [[1,4,4,4,4]]
  | 47 => [[2,4,4,4,4]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 76 => []
  | 188 => []
  | 267 => []
  | 285 => []
  | 286 => []
  | 287 => []
  | 293 => []
  | 305 => []
  | 324 => []
  | 328 => []
  | 350 => []
  | 1801 => []
  | 1848 => []
  | 1898 => []
  | 1979 => []
  | 2148 => []
  | 2232 => []
  | 2295 => []
  | 2366 => []
  | 2367 => []
  | 2369 => []
  | 2370 => []
  | 2397 => []
  | 2398 => []
  | 2432 => []
  | 2433 => []
  | 2477 => []
  | 2478 => []
  | 2479 => []
  | 2480 => []
  | 2482 => []
  | 2523 => []
  | 2524 => []
  | 2572 => []
  | 2573 => []
  | 2574 => []
  | 2618 => []
  | 2619 => []
  | 2622 => []
  | 2662 => []
  | 2663 => []
  | 2664 => []
  | 2665 => []
  | 2702 => []
  | 2703 => []
  | 2704 => []
  | 2705 => []
  | 2706 => []
  | 2707 => []
  | 2708 => []
  | 2709 => []
  | 2710 => []
  | 2711 => []
  | 2713 => []
  | 2714 => []
  | 2719 => []
  | 2720 => []
  | 2721 => []
  | 2722 => []
  | 2727 => []
  | 2772 => []
  | 2773 => []
  | 2774 => []
  | 2775 => []
  | 2776 => []
  | 2778 => []
  | 2779 => []
  | 2839 => []
  | 2840 => []
  | 2841 => []
  | 2842 => []
  | 2844 => []
  | 2893 => []
  | 2894 => []
  | 2895 => []
  | _ => []
def map_16_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20173 : InImage map_16_250 image20173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20173 : Bundle := named_bundle% "RealMapCertificates/relations/basis20173.json"
theorem reductionProof20173 : EqualModuloRelations reduction20173.relations reduction20173.input reduction20173.output := by lin_cert using reduction20173.terms
theorem substitutionProof20173 : IsMapEvaluation generatorImages reduction20173.relations [2367] reduction20173.output := by lin_cert using reduction20173.terms
def image20174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20174 : InImage map_16_250 image20174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20174 : Bundle := named_bundle% "RealMapCertificates/relations/basis20174.json"
theorem reductionProof20174 : EqualModuloRelations reduction20174.relations reduction20174.input reduction20174.output := by lin_cert using reduction20174.terms
theorem substitutionProof20174 : IsMapEvaluation generatorImages reduction20174.relations [2366] reduction20174.output := by lin_cert using reduction20174.terms
def image20175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20175 : InImage map_16_250 image20175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20175 : Bundle := named_bundle% "RealMapCertificates/relations/basis20175.json"
theorem reductionProof20175 : EqualModuloRelations reduction20175.relations reduction20175.input reduction20175.output := by lin_cert using reduction20175.terms
theorem substitutionProof20175 : IsMapEvaluation generatorImages reduction20175.relations [3,3,1848] reduction20175.output := by lin_cert using reduction20175.terms
def image20176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20176 : InImage map_16_250 image20176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20176 : Bundle := named_bundle% "RealMapCertificates/relations/basis20176.json"
theorem reductionProof20176 : EqualModuloRelations reduction20176.relations reduction20176.input reduction20176.output := by lin_cert using reduction20176.terms
theorem substitutionProof20176 : IsMapEvaluation generatorImages reduction20176.relations [2,2232] reduction20176.output := by lin_cert using reduction20176.terms
def image20177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20177 : InImage map_16_250 image20177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20177 : Bundle := named_bundle% "RealMapCertificates/relations/basis20177.json"
theorem reductionProof20177 : EqualModuloRelations reduction20177.relations reduction20177.input reduction20177.output := by lin_cert using reduction20177.terms
theorem substitutionProof20177 : IsMapEvaluation generatorImages reduction20177.relations [1,2295] reduction20177.output := by lin_cert using reduction20177.terms
def map_16_251 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image20455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20455 : InImage map_16_251 image20455 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20455 : Bundle := named_bundle% "RealMapCertificates/relations/basis20455.json"
theorem reductionProof20455 : EqualModuloRelations reduction20455.relations reduction20455.input reduction20455.output := by lin_cert using reduction20455.terms
theorem substitutionProof20455 : IsMapEvaluation generatorImages reduction20455.relations [2397] reduction20455.output := by lin_cert using reduction20455.terms
def image20456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20456 : InImage map_16_251 image20456 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20456 : Bundle := named_bundle% "RealMapCertificates/relations/basis20456.json"
theorem reductionProof20456 : EqualModuloRelations reduction20456.relations reduction20456.input reduction20456.output := by lin_cert using reduction20456.terms
theorem substitutionProof20456 : IsMapEvaluation generatorImages reduction20456.relations [9,188,324] reduction20456.output := by lin_cert using reduction20456.terms
def image20457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20457 : InImage map_16_251 image20457 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20457 : Bundle := named_bundle% "RealMapCertificates/relations/basis20457.json"
theorem reductionProof20457 : EqualModuloRelations reduction20457.relations reduction20457.input reduction20457.output := by lin_cert using reduction20457.terms
theorem substitutionProof20457 : IsMapEvaluation generatorImages reduction20457.relations [0,2370] reduction20457.output := by lin_cert using reduction20457.terms
def map_16_252 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20779 : InImage map_16_252 image20779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20779 : Bundle := named_bundle% "RealMapCertificates/relations/basis20779.json"
theorem reductionProof20779 : EqualModuloRelations reduction20779.relations reduction20779.input reduction20779.output := by lin_cert using reduction20779.terms
theorem substitutionProof20779 : IsMapEvaluation generatorImages reduction20779.relations [2432] reduction20779.output := by lin_cert using reduction20779.terms
def image20780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20780 : InImage map_16_252 image20780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20780 : Bundle := named_bundle% "RealMapCertificates/relations/basis20780.json"
theorem reductionProof20780 : EqualModuloRelations reduction20780.relations reduction20780.input reduction20780.output := by lin_cert using reduction20780.terms
theorem substitutionProof20780 : IsMapEvaluation generatorImages reduction20780.relations [2,2295] reduction20780.output := by lin_cert using reduction20780.terms
def image20781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20781 : InImage map_16_252 image20781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20781 : Bundle := named_bundle% "RealMapCertificates/relations/basis20781.json"
theorem reductionProof20781 : EqualModuloRelations reduction20781.relations reduction20781.input reduction20781.output := by lin_cert using reduction20781.terms
theorem substitutionProof20781 : IsMapEvaluation generatorImages reduction20781.relations [0,2398] reduction20781.output := by lin_cert using reduction20781.terms
def image20782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20782 : InImage map_16_252 image20782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20782 : Bundle := named_bundle% "RealMapCertificates/relations/basis20782.json"
theorem reductionProof20782 : EqualModuloRelations reduction20782.relations reduction20782.input reduction20782.output := by lin_cert using reduction20782.terms
theorem substitutionProof20782 : IsMapEvaluation generatorImages reduction20782.relations [0,286,324] reduction20782.output := by lin_cert using reduction20782.terms
def image20783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20783 : InImage map_16_252 image20783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20783 : Bundle := named_bundle% "RealMapCertificates/relations/basis20783.json"
theorem reductionProof20783 : EqualModuloRelations reduction20783.relations reduction20783.input reduction20783.output := by lin_cert using reduction20783.terms
theorem substitutionProof20783 : IsMapEvaluation generatorImages reduction20783.relations [0,285,324] reduction20783.output := by lin_cert using reduction20783.terms
def map_16_253 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21003 : InImage map_16_253 image21003 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21003 : Bundle := named_bundle% "RealMapCertificates/relations/basis21003.json"
theorem reductionProof21003 : EqualModuloRelations reduction21003.relations reduction21003.input reduction21003.output := by lin_cert using reduction21003.terms
theorem substitutionProof21003 : IsMapEvaluation generatorImages reduction21003.relations [2478] reduction21003.output := by lin_cert using reduction21003.terms
def image21004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21004 : InImage map_16_253 image21004 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21004 : Bundle := named_bundle% "RealMapCertificates/relations/basis21004.json"
theorem reductionProof21004 : EqualModuloRelations reduction21004.relations reduction21004.input reduction21004.output := by lin_cert using reduction21004.terms
theorem substitutionProof21004 : IsMapEvaluation generatorImages reduction21004.relations [2477] reduction21004.output := by lin_cert using reduction21004.terms
def image21005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21005 : InImage map_16_253 image21005 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21005 : Bundle := named_bundle% "RealMapCertificates/relations/basis21005.json"
theorem reductionProof21005 : EqualModuloRelations reduction21005.relations reduction21005.input reduction21005.output := by lin_cert using reduction21005.terms
theorem substitutionProof21005 : IsMapEvaluation generatorImages reduction21005.relations [293,324] reduction21005.output := by lin_cert using reduction21005.terms
def image21006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21006 : InImage map_16_253 image21006 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21006 : Bundle := named_bundle% "RealMapCertificates/relations/basis21006.json"
theorem reductionProof21006 : EqualModuloRelations reduction21006.relations reduction21006.input reduction21006.output := by lin_cert using reduction21006.terms
theorem substitutionProof21006 : IsMapEvaluation generatorImages reduction21006.relations [0,2433] reduction21006.output := by lin_cert using reduction21006.terms
def map_16_254 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21316 : InImage map_16_254 image21316 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21316 : Bundle := named_bundle% "RealMapCertificates/relations/basis21316.json"
theorem reductionProof21316 : EqualModuloRelations reduction21316.relations reduction21316.input reduction21316.output := by lin_cert using reduction21316.terms
theorem substitutionProof21316 : IsMapEvaluation generatorImages reduction21316.relations [2523] reduction21316.output := by lin_cert using reduction21316.terms
def image21317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21317 : InImage map_16_254 image21317 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21317 : Bundle := named_bundle% "RealMapCertificates/relations/basis21317.json"
theorem reductionProof21317 : EqualModuloRelations reduction21317.relations reduction21317.input reduction21317.output := by lin_cert using reduction21317.terms
theorem substitutionProof21317 : IsMapEvaluation generatorImages reduction21317.relations [305,324] reduction21317.output := by lin_cert using reduction21317.terms
def image21318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21318 : InImage map_16_254 image21318 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21318 : Bundle := named_bundle% "RealMapCertificates/relations/basis21318.json"
theorem reductionProof21318 : EqualModuloRelations reduction21318.relations reduction21318.input reduction21318.output := by lin_cert using reduction21318.terms
theorem substitutionProof21318 : IsMapEvaluation generatorImages reduction21318.relations [13,188,324] reduction21318.output := by lin_cert using reduction21318.terms
def image21319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21319 : InImage map_16_254 image21319 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21319 : Bundle := named_bundle% "RealMapCertificates/relations/basis21319.json"
theorem reductionProof21319 : EqualModuloRelations reduction21319.relations reduction21319.input reduction21319.output := by lin_cert using reduction21319.terms
theorem substitutionProof21319 : IsMapEvaluation generatorImages reduction21319.relations [11,1801] reduction21319.output := by lin_cert using reduction21319.terms
def image21320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21320 : InImage map_16_254 image21320 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21320 : Bundle := named_bundle% "RealMapCertificates/relations/basis21320.json"
theorem reductionProof21320 : EqualModuloRelations reduction21320.relations reduction21320.input reduction21320.output := by lin_cert using reduction21320.terms
theorem substitutionProof21320 : IsMapEvaluation generatorImages reduction21320.relations [2,2369] reduction21320.output := by lin_cert using reduction21320.terms
def image21321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21321 : InImage map_16_254 image21321 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21321 : Bundle := named_bundle% "RealMapCertificates/relations/basis21321.json"
theorem reductionProof21321 : EqualModuloRelations reduction21321.relations reduction21321.input reduction21321.output := by lin_cert using reduction21321.terms
theorem substitutionProof21321 : IsMapEvaluation generatorImages reduction21321.relations [1,2433] reduction21321.output := by lin_cert using reduction21321.terms
def image21322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21322 : InImage map_16_254 image21322 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21322 : Bundle := named_bundle% "RealMapCertificates/relations/basis21322.json"
theorem reductionProof21322 : EqualModuloRelations reduction21322.relations reduction21322.input reduction21322.output := by lin_cert using reduction21322.terms
theorem substitutionProof21322 : IsMapEvaluation generatorImages reduction21322.relations [0,2480] reduction21322.output := by lin_cert using reduction21322.terms
def image21323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21323 : InImage map_16_254 image21323 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21323 : Bundle := named_bundle% "RealMapCertificates/relations/basis21323.json"
theorem reductionProof21323 : EqualModuloRelations reduction21323.relations reduction21323.input reduction21323.output := by lin_cert using reduction21323.terms
theorem substitutionProof21323 : IsMapEvaluation generatorImages reduction21323.relations [0,2479] reduction21323.output := by lin_cert using reduction21323.terms
def map_16_255 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21654 : InImage map_16_255 image21654 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21654 : Bundle := named_bundle% "RealMapCertificates/relations/basis21654.json"
theorem reductionProof21654 : EqualModuloRelations reduction21654.relations reduction21654.input reduction21654.output := by lin_cert using reduction21654.terms
theorem substitutionProof21654 : IsMapEvaluation generatorImages reduction21654.relations [2573] reduction21654.output := by lin_cert using reduction21654.terms
def image21655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21655 : InImage map_16_255 image21655 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21655 : Bundle := named_bundle% "RealMapCertificates/relations/basis21655.json"
theorem reductionProof21655 : EqualModuloRelations reduction21655.relations reduction21655.input reduction21655.output := by lin_cert using reduction21655.terms
theorem substitutionProof21655 : IsMapEvaluation generatorImages reduction21655.relations [2572] reduction21655.output := by lin_cert using reduction21655.terms
def image21656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21656 : InImage map_16_255 image21656 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21656 : Bundle := named_bundle% "RealMapCertificates/relations/basis21656.json"
theorem reductionProof21656 : EqualModuloRelations reduction21656.relations reduction21656.input reduction21656.output := by lin_cert using reduction21656.terms
theorem substitutionProof21656 : IsMapEvaluation generatorImages reduction21656.relations [13,23,76,324] reduction21656.output := by lin_cert using reduction21656.terms
def image21657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21657 : InImage map_16_255 image21657 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21657 : Bundle := named_bundle% "RealMapCertificates/relations/basis21657.json"
theorem reductionProof21657 : EqualModuloRelations reduction21657.relations reduction21657.input reduction21657.output := by lin_cert using reduction21657.terms
theorem substitutionProof21657 : IsMapEvaluation generatorImages reduction21657.relations [7,1979] reduction21657.output := by lin_cert using reduction21657.terms
def image21658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21658 : InImage map_16_255 image21658 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21658 : Bundle := named_bundle% "RealMapCertificates/relations/basis21658.json"
theorem reductionProof21658 : EqualModuloRelations reduction21658.relations reduction21658.input reduction21658.output := by lin_cert using reduction21658.terms
theorem substitutionProof21658 : IsMapEvaluation generatorImages reduction21658.relations [2,286,324] reduction21658.output := by lin_cert using reduction21658.terms
def image21659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21659 : InImage map_16_255 image21659 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21659 : Bundle := named_bundle% "RealMapCertificates/relations/basis21659.json"
theorem reductionProof21659 : EqualModuloRelations reduction21659.relations reduction21659.input reduction21659.output := by lin_cert using reduction21659.terms
theorem substitutionProof21659 : IsMapEvaluation generatorImages reduction21659.relations [1,2479] reduction21659.output := by lin_cert using reduction21659.terms
def image21660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21660 : InImage map_16_255 image21660 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21660 : Bundle := named_bundle% "RealMapCertificates/relations/basis21660.json"
theorem reductionProof21660 : EqualModuloRelations reduction21660.relations reduction21660.input reduction21660.output := by lin_cert using reduction21660.terms
theorem substitutionProof21660 : IsMapEvaluation generatorImages reduction21660.relations [0,2524] reduction21660.output := by lin_cert using reduction21660.terms
def image21661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21661 : InImage map_16_255 image21661 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21661 : Bundle := named_bundle% "RealMapCertificates/relations/basis21661.json"
theorem reductionProof21661 : EqualModuloRelations reduction21661.relations reduction21661.input reduction21661.output := by lin_cert using reduction21661.terms
theorem substitutionProof21661 : IsMapEvaluation generatorImages reduction21661.relations [0,0,2482] reduction21661.output := by lin_cert using reduction21661.terms
def map_16_256 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21939 : InImage map_16_256 image21939 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21939 : Bundle := named_bundle% "RealMapCertificates/relations/basis21939.json"
theorem reductionProof21939 : EqualModuloRelations reduction21939.relations reduction21939.input reduction21939.output := by lin_cert using reduction21939.terms
theorem substitutionProof21939 : IsMapEvaluation generatorImages reduction21939.relations [2619] reduction21939.output := by lin_cert using reduction21939.terms
def image21940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21940 : InImage map_16_256 image21940 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21940 : Bundle := named_bundle% "RealMapCertificates/relations/basis21940.json"
theorem reductionProof21940 : EqualModuloRelations reduction21940.relations reduction21940.input reduction21940.output := by lin_cert using reduction21940.terms
theorem substitutionProof21940 : IsMapEvaluation generatorImages reduction21940.relations [2618] reduction21940.output := by lin_cert using reduction21940.terms
def image21941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21941 : InImage map_16_256 image21941 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21941 : Bundle := named_bundle% "RealMapCertificates/relations/basis21941.json"
theorem reductionProof21941 : EqualModuloRelations reduction21941.relations reduction21941.input reduction21941.output := by lin_cert using reduction21941.terms
theorem substitutionProof21941 : IsMapEvaluation generatorImages reduction21941.relations [3,2295] reduction21941.output := by lin_cert using reduction21941.terms
def image21942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21942 : InImage map_16_256 image21942 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21942 : Bundle := named_bundle% "RealMapCertificates/relations/basis21942.json"
theorem reductionProof21942 : EqualModuloRelations reduction21942.relations reduction21942.input reduction21942.output := by lin_cert using reduction21942.terms
theorem substitutionProof21942 : IsMapEvaluation generatorImages reduction21942.relations [3,267,324] reduction21942.output := by lin_cert using reduction21942.terms
def image21943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21943 : InImage map_16_256 image21943 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21943 : Bundle := named_bundle% "RealMapCertificates/relations/basis21943.json"
theorem reductionProof21943 : EqualModuloRelations reduction21943.relations reduction21943.input reduction21943.output := by lin_cert using reduction21943.terms
theorem substitutionProof21943 : IsMapEvaluation generatorImages reduction21943.relations [0,2574] reduction21943.output := by lin_cert using reduction21943.terms
def map_16_257 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22277 : InImage map_16_257 image22277 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22277 : Bundle := named_bundle% "RealMapCertificates/relations/basis22277.json"
theorem reductionProof22277 : EqualModuloRelations reduction22277.relations reduction22277.input reduction22277.output := by lin_cert using reduction22277.terms
theorem substitutionProof22277 : IsMapEvaluation generatorImages reduction22277.relations [2664] reduction22277.output := by lin_cert using reduction22277.terms
def image22278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22278 : InImage map_16_257 image22278 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22278 : Bundle := named_bundle% "RealMapCertificates/relations/basis22278.json"
theorem reductionProof22278 : EqualModuloRelations reduction22278.relations reduction22278.input reduction22278.output := by lin_cert using reduction22278.terms
theorem substitutionProof22278 : IsMapEvaluation generatorImages reduction22278.relations [2663] reduction22278.output := by lin_cert using reduction22278.terms
def image22279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22279 : InImage map_16_257 image22279 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22279 : Bundle := named_bundle% "RealMapCertificates/relations/basis22279.json"
theorem reductionProof22279 : EqualModuloRelations reduction22279.relations reduction22279.input reduction22279.output := by lin_cert using reduction22279.terms
theorem substitutionProof22279 : IsMapEvaluation generatorImages reduction22279.relations [2662] reduction22279.output := by lin_cert using reduction22279.terms
def image22280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22280 : InImage map_16_257 image22280 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22280 : Bundle := named_bundle% "RealMapCertificates/relations/basis22280.json"
theorem reductionProof22280 : EqualModuloRelations reduction22280.relations reduction22280.input reduction22280.output := by lin_cert using reduction22280.terms
theorem substitutionProof22280 : IsMapEvaluation generatorImages reduction22280.relations [324,328] reduction22280.output := by lin_cert using reduction22280.terms
def image22281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22281 : InImage map_16_257 image22281 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22281 : Bundle := named_bundle% "RealMapCertificates/relations/basis22281.json"
theorem reductionProof22281 : EqualModuloRelations reduction22281.relations reduction22281.input reduction22281.output := by lin_cert using reduction22281.terms
theorem substitutionProof22281 : IsMapEvaluation generatorImages reduction22281.relations [2,2479] reduction22281.output := by lin_cert using reduction22281.terms
def map_16_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22628 : InImage map_16_258 image22628 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22628 : Bundle := named_bundle% "RealMapCertificates/relations/basis22628.json"
theorem reductionProof22628 : EqualModuloRelations reduction22628.relations reduction22628.input reduction22628.output := by lin_cert using reduction22628.terms
theorem substitutionProof22628 : IsMapEvaluation generatorImages reduction22628.relations [2709] reduction22628.output := by lin_cert using reduction22628.terms
def image22629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22629 : InImage map_16_258 image22629 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22629 : Bundle := named_bundle% "RealMapCertificates/relations/basis22629.json"
theorem reductionProof22629 : EqualModuloRelations reduction22629.relations reduction22629.input reduction22629.output := by lin_cert using reduction22629.terms
theorem substitutionProof22629 : IsMapEvaluation generatorImages reduction22629.relations [2708] reduction22629.output := by lin_cert using reduction22629.terms
def image22630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22630 : InImage map_16_258 image22630 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22630 : Bundle := named_bundle% "RealMapCertificates/relations/basis22630.json"
theorem reductionProof22630 : EqualModuloRelations reduction22630.relations reduction22630.input reduction22630.output := by lin_cert using reduction22630.terms
theorem substitutionProof22630 : IsMapEvaluation generatorImages reduction22630.relations [2707] reduction22630.output := by lin_cert using reduction22630.terms
def image22631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22631 : InImage map_16_258 image22631 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22631 : Bundle := named_bundle% "RealMapCertificates/relations/basis22631.json"
theorem reductionProof22631 : EqualModuloRelations reduction22631.relations reduction22631.input reduction22631.output := by lin_cert using reduction22631.terms
theorem substitutionProof22631 : IsMapEvaluation generatorImages reduction22631.relations [2706] reduction22631.output := by lin_cert using reduction22631.terms
def image22632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22632 : InImage map_16_258 image22632 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22632 : Bundle := named_bundle% "RealMapCertificates/relations/basis22632.json"
theorem reductionProof22632 : EqualModuloRelations reduction22632.relations reduction22632.input reduction22632.output := by lin_cert using reduction22632.terms
theorem substitutionProof22632 : IsMapEvaluation generatorImages reduction22632.relations [2705] reduction22632.output := by lin_cert using reduction22632.terms
def image22633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22633 : InImage map_16_258 image22633 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22633 : Bundle := named_bundle% "RealMapCertificates/relations/basis22633.json"
theorem reductionProof22633 : EqualModuloRelations reduction22633.relations reduction22633.input reduction22633.output := by lin_cert using reduction22633.terms
theorem substitutionProof22633 : IsMapEvaluation generatorImages reduction22633.relations [2704] reduction22633.output := by lin_cert using reduction22633.terms
def image22634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22634 : InImage map_16_258 image22634 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22634 : Bundle := named_bundle% "RealMapCertificates/relations/basis22634.json"
theorem reductionProof22634 : EqualModuloRelations reduction22634.relations reduction22634.input reduction22634.output := by lin_cert using reduction22634.terms
theorem substitutionProof22634 : IsMapEvaluation generatorImages reduction22634.relations [2703] reduction22634.output := by lin_cert using reduction22634.terms
def image22635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22635 : InImage map_16_258 image22635 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22635 : Bundle := named_bundle% "RealMapCertificates/relations/basis22635.json"
theorem reductionProof22635 : EqualModuloRelations reduction22635.relations reduction22635.input reduction22635.output := by lin_cert using reduction22635.terms
theorem substitutionProof22635 : IsMapEvaluation generatorImages reduction22635.relations [2702] reduction22635.output := by lin_cert using reduction22635.terms
def map_16_259 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22943 : InImage map_16_259 image22943 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22943 : Bundle := named_bundle% "RealMapCertificates/relations/basis22943.json"
theorem reductionProof22943 : EqualModuloRelations reduction22943.relations reduction22943.input reduction22943.output := by lin_cert using reduction22943.terms
theorem substitutionProof22943 : IsMapEvaluation generatorImages reduction22943.relations [2773] reduction22943.output := by lin_cert using reduction22943.terms
def image22944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22944 : InImage map_16_259 image22944 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22944 : Bundle := named_bundle% "RealMapCertificates/relations/basis22944.json"
theorem reductionProof22944 : EqualModuloRelations reduction22944.relations reduction22944.input reduction22944.output := by lin_cert using reduction22944.terms
theorem substitutionProof22944 : IsMapEvaluation generatorImages reduction22944.relations [2772] reduction22944.output := by lin_cert using reduction22944.terms
def image22945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22945 : InImage map_16_259 image22945 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22945 : Bundle := named_bundle% "RealMapCertificates/relations/basis22945.json"
theorem reductionProof22945 : EqualModuloRelations reduction22945.relations reduction22945.input reduction22945.output := by lin_cert using reduction22945.terms
theorem substitutionProof22945 : IsMapEvaluation generatorImages reduction22945.relations [324,350] reduction22945.output := by lin_cert using reduction22945.terms
def image22946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22946 : InImage map_16_259 image22946 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22946 : Bundle := named_bundle% "RealMapCertificates/relations/basis22946.json"
theorem reductionProof22946 : EqualModuloRelations reduction22946.relations reduction22946.input reduction22946.output := by lin_cert using reduction22946.terms
theorem substitutionProof22946 : IsMapEvaluation generatorImages reduction22946.relations [2,2,287,324] reduction22946.output := by lin_cert using reduction22946.terms
def image22947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22947 : InImage map_16_259 image22947 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22947 : Bundle := named_bundle% "RealMapCertificates/relations/basis22947.json"
theorem reductionProof22947 : EqualModuloRelations reduction22947.relations reduction22947.input reduction22947.output := by lin_cert using reduction22947.terms
theorem substitutionProof22947 : IsMapEvaluation generatorImages reduction22947.relations [1,2665] reduction22947.output := by lin_cert using reduction22947.terms
def image22948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22948 : InImage map_16_259 image22948 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22948 : Bundle := named_bundle% "RealMapCertificates/relations/basis22948.json"
theorem reductionProof22948 : EqualModuloRelations reduction22948.relations reduction22948.input reduction22948.output := by lin_cert using reduction22948.terms
theorem substitutionProof22948 : IsMapEvaluation generatorImages reduction22948.relations [0,2714] reduction22948.output := by lin_cert using reduction22948.terms
def image22949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22949 : InImage map_16_259 image22949 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22949 : Bundle := named_bundle% "RealMapCertificates/relations/basis22949.json"
theorem reductionProof22949 : EqualModuloRelations reduction22949.relations reduction22949.input reduction22949.output := by lin_cert using reduction22949.terms
theorem substitutionProof22949 : IsMapEvaluation generatorImages reduction22949.relations [0,2713] reduction22949.output := by lin_cert using reduction22949.terms
def image22950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22950 : InImage map_16_259 image22950 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22950 : Bundle := named_bundle% "RealMapCertificates/relations/basis22950.json"
theorem reductionProof22950 : EqualModuloRelations reduction22950.relations reduction22950.input reduction22950.output := by lin_cert using reduction22950.terms
theorem substitutionProof22950 : IsMapEvaluation generatorImages reduction22950.relations [0,2711] reduction22950.output := by lin_cert using reduction22950.terms
def image22951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22951 : InImage map_16_259 image22951 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22951 : Bundle := named_bundle% "RealMapCertificates/relations/basis22951.json"
theorem reductionProof22951 : EqualModuloRelations reduction22951.relations reduction22951.input reduction22951.output := by lin_cert using reduction22951.terms
theorem substitutionProof22951 : IsMapEvaluation generatorImages reduction22951.relations [0,2710] reduction22951.output := by lin_cert using reduction22951.terms
def image22952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22952 : InImage map_16_259 image22952 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22952 : Bundle := named_bundle% "RealMapCertificates/relations/basis22952.json"
theorem reductionProof22952 : EqualModuloRelations reduction22952.relations reduction22952.input reduction22952.output := by lin_cert using reduction22952.terms
theorem substitutionProof22952 : IsMapEvaluation generatorImages reduction22952.relations [0,0,0,2622] reduction22952.output := by lin_cert using reduction22952.terms
def map_16_260 : Matrix 0 15 := fun i j => ([] : List Bool)[i.val*15+j.val]!
def image23337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23337 : InImage map_16_260 image23337 := by lin_cert using (fun j : Fin 15 => decide (j.val = 0))
def reduction23337 : Bundle := named_bundle% "RealMapCertificates/relations/basis23337.json"
theorem reductionProof23337 : EqualModuloRelations reduction23337.relations reduction23337.input reduction23337.output := by lin_cert using reduction23337.terms
theorem substitutionProof23337 : IsMapEvaluation generatorImages reduction23337.relations [2842] reduction23337.output := by lin_cert using reduction23337.terms
def image23338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23338 : InImage map_16_260 image23338 := by lin_cert using (fun j : Fin 15 => decide (j.val = 1))
def reduction23338 : Bundle := named_bundle% "RealMapCertificates/relations/basis23338.json"
theorem reductionProof23338 : EqualModuloRelations reduction23338.relations reduction23338.input reduction23338.output := by lin_cert using reduction23338.terms
theorem substitutionProof23338 : IsMapEvaluation generatorImages reduction23338.relations [2841] reduction23338.output := by lin_cert using reduction23338.terms
def image23339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23339 : InImage map_16_260 image23339 := by lin_cert using (fun j : Fin 15 => decide (j.val = 2))
def reduction23339 : Bundle := named_bundle% "RealMapCertificates/relations/basis23339.json"
theorem reductionProof23339 : EqualModuloRelations reduction23339.relations reduction23339.input reduction23339.output := by lin_cert using reduction23339.terms
theorem substitutionProof23339 : IsMapEvaluation generatorImages reduction23339.relations [2840] reduction23339.output := by lin_cert using reduction23339.terms
def image23340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23340 : InImage map_16_260 image23340 := by lin_cert using (fun j : Fin 15 => decide (j.val = 3))
def reduction23340 : Bundle := named_bundle% "RealMapCertificates/relations/basis23340.json"
theorem reductionProof23340 : EqualModuloRelations reduction23340.relations reduction23340.input reduction23340.output := by lin_cert using reduction23340.terms
theorem substitutionProof23340 : IsMapEvaluation generatorImages reduction23340.relations [2839] reduction23340.output := by lin_cert using reduction23340.terms
def image23341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23341 : InImage map_16_260 image23341 := by lin_cert using (fun j : Fin 15 => decide (j.val = 4))
def reduction23341 : Bundle := named_bundle% "RealMapCertificates/relations/basis23341.json"
theorem reductionProof23341 : EqualModuloRelations reduction23341.relations reduction23341.input reduction23341.output := by lin_cert using reduction23341.terms
theorem substitutionProof23341 : IsMapEvaluation generatorImages reduction23341.relations [13,1898] reduction23341.output := by lin_cert using reduction23341.terms
def image23342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23342 : InImage map_16_260 image23342 := by lin_cert using (fun j : Fin 15 => decide (j.val = 5))
def reduction23342 : Bundle := named_bundle% "RealMapCertificates/relations/basis23342.json"
theorem reductionProof23342 : EqualModuloRelations reduction23342.relations reduction23342.input reduction23342.output := by lin_cert using reduction23342.terms
theorem substitutionProof23342 : IsMapEvaluation generatorImages reduction23342.relations [7,2148] reduction23342.output := by lin_cert using reduction23342.terms
def image23343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23343 : InImage map_16_260 image23343 := by lin_cert using (fun j : Fin 15 => decide (j.val = 6))
def reduction23343 : Bundle := named_bundle% "RealMapCertificates/relations/basis23343.json"
theorem reductionProof23343 : EqualModuloRelations reduction23343.relations reduction23343.input reduction23343.output := by lin_cert using reduction23343.terms
theorem substitutionProof23343 : IsMapEvaluation generatorImages reduction23343.relations [1,2711] reduction23343.output := by lin_cert using reduction23343.terms
def image23344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23344 : InImage map_16_260 image23344 := by lin_cert using (fun j : Fin 15 => decide (j.val = 7))
def reduction23344 : Bundle := named_bundle% "RealMapCertificates/relations/basis23344.json"
theorem reductionProof23344 : EqualModuloRelations reduction23344.relations reduction23344.input reduction23344.output := by lin_cert using reduction23344.terms
theorem substitutionProof23344 : IsMapEvaluation generatorImages reduction23344.relations [0,2778] reduction23344.output := by lin_cert using reduction23344.terms
def image23345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23345 : InImage map_16_260 image23345 := by lin_cert using (fun j : Fin 15 => decide (j.val = 8))
def reduction23345 : Bundle := named_bundle% "RealMapCertificates/relations/basis23345.json"
theorem reductionProof23345 : EqualModuloRelations reduction23345.relations reduction23345.input reduction23345.output := by lin_cert using reduction23345.terms
theorem substitutionProof23345 : IsMapEvaluation generatorImages reduction23345.relations [0,2776] reduction23345.output := by lin_cert using reduction23345.terms
def image23346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23346 : InImage map_16_260 image23346 := by lin_cert using (fun j : Fin 15 => decide (j.val = 9))
def reduction23346 : Bundle := named_bundle% "RealMapCertificates/relations/basis23346.json"
theorem reductionProof23346 : EqualModuloRelations reduction23346.relations reduction23346.input reduction23346.output := by lin_cert using reduction23346.terms
theorem substitutionProof23346 : IsMapEvaluation generatorImages reduction23346.relations [0,2775] reduction23346.output := by lin_cert using reduction23346.terms
def image23347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23347 : InImage map_16_260 image23347 := by lin_cert using (fun j : Fin 15 => decide (j.val = 10))
def reduction23347 : Bundle := named_bundle% "RealMapCertificates/relations/basis23347.json"
theorem reductionProof23347 : EqualModuloRelations reduction23347.relations reduction23347.input reduction23347.output := by lin_cert using reduction23347.terms
theorem substitutionProof23347 : IsMapEvaluation generatorImages reduction23347.relations [0,2774] reduction23347.output := by lin_cert using reduction23347.terms
def image23348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23348 : InImage map_16_260 image23348 := by lin_cert using (fun j : Fin 15 => decide (j.val = 11))
def reduction23348 : Bundle := named_bundle% "RealMapCertificates/relations/basis23348.json"
theorem reductionProof23348 : EqualModuloRelations reduction23348.relations reduction23348.input reduction23348.output := by lin_cert using reduction23348.terms
theorem substitutionProof23348 : IsMapEvaluation generatorImages reduction23348.relations [0,0,2722] reduction23348.output := by lin_cert using reduction23348.terms
def image23349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23349 : InImage map_16_260 image23349 := by lin_cert using (fun j : Fin 15 => decide (j.val = 12))
def reduction23349 : Bundle := named_bundle% "RealMapCertificates/relations/basis23349.json"
theorem reductionProof23349 : EqualModuloRelations reduction23349.relations reduction23349.input reduction23349.output := by lin_cert using reduction23349.terms
theorem substitutionProof23349 : IsMapEvaluation generatorImages reduction23349.relations [0,0,2721] reduction23349.output := by lin_cert using reduction23349.terms
def image23350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23350 : InImage map_16_260 image23350 := by lin_cert using (fun j : Fin 15 => decide (j.val = 13))
def reduction23350 : Bundle := named_bundle% "RealMapCertificates/relations/basis23350.json"
theorem reductionProof23350 : EqualModuloRelations reduction23350.relations reduction23350.input reduction23350.output := by lin_cert using reduction23350.terms
theorem substitutionProof23350 : IsMapEvaluation generatorImages reduction23350.relations [0,0,2720] reduction23350.output := by lin_cert using reduction23350.terms
def image23351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23351 : InImage map_16_260 image23351 := by lin_cert using (fun j : Fin 15 => decide (j.val = 14))
def reduction23351 : Bundle := named_bundle% "RealMapCertificates/relations/basis23351.json"
theorem reductionProof23351 : EqualModuloRelations reduction23351.relations reduction23351.input reduction23351.output := by lin_cert using reduction23351.terms
theorem substitutionProof23351 : IsMapEvaluation generatorImages reduction23351.relations [0,0,2719] reduction23351.output := by lin_cert using reduction23351.terms
def map_16_261 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23769 : InImage map_16_261 image23769 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23769 : Bundle := named_bundle% "RealMapCertificates/relations/basis23769.json"
theorem reductionProof23769 : EqualModuloRelations reduction23769.relations reduction23769.input reduction23769.output := by lin_cert using reduction23769.terms
theorem substitutionProof23769 : IsMapEvaluation generatorImages reduction23769.relations [2895] reduction23769.output := by lin_cert using reduction23769.terms
def image23770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23770 : InImage map_16_261 image23770 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23770 : Bundle := named_bundle% "RealMapCertificates/relations/basis23770.json"
theorem reductionProof23770 : EqualModuloRelations reduction23770.relations reduction23770.input reduction23770.output := by lin_cert using reduction23770.terms
theorem substitutionProof23770 : IsMapEvaluation generatorImages reduction23770.relations [2894] reduction23770.output := by lin_cert using reduction23770.terms
def image23771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23771 : InImage map_16_261 image23771 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23771 : Bundle := named_bundle% "RealMapCertificates/relations/basis23771.json"
theorem reductionProof23771 : EqualModuloRelations reduction23771.relations reduction23771.input reduction23771.output := by lin_cert using reduction23771.terms
theorem substitutionProof23771 : IsMapEvaluation generatorImages reduction23771.relations [2893] reduction23771.output := by lin_cert using reduction23771.terms
def image23772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23772 : InImage map_16_261 image23772 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23772 : Bundle := named_bundle% "RealMapCertificates/relations/basis23772.json"
theorem reductionProof23772 : EqualModuloRelations reduction23772.relations reduction23772.input reduction23772.output := by lin_cert using reduction23772.terms
theorem substitutionProof23772 : IsMapEvaluation generatorImages reduction23772.relations [1,2775] reduction23772.output := by lin_cert using reduction23772.terms
def image23773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23773 : InImage map_16_261 image23773 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23773 : Bundle := named_bundle% "RealMapCertificates/relations/basis23773.json"
theorem reductionProof23773 : EqualModuloRelations reduction23773.relations reduction23773.input reduction23773.output := by lin_cert using reduction23773.terms
theorem substitutionProof23773 : IsMapEvaluation generatorImages reduction23773.relations [1,3,287,324] reduction23773.output := by lin_cert using reduction23773.terms
def image23774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23774 : InImage map_16_261 image23774 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23774 : Bundle := named_bundle% "RealMapCertificates/relations/basis23774.json"
theorem reductionProof23774 : EqualModuloRelations reduction23774.relations reduction23774.input reduction23774.output := by lin_cert using reduction23774.terms
theorem substitutionProof23774 : IsMapEvaluation generatorImages reduction23774.relations [0,2844] reduction23774.output := by lin_cert using reduction23774.terms
def image23775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23775 : InImage map_16_261 image23775 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23775 : Bundle := named_bundle% "RealMapCertificates/relations/basis23775.json"
theorem reductionProof23775 : EqualModuloRelations reduction23775.relations reduction23775.input reduction23775.output := by lin_cert using reduction23775.terms
theorem substitutionProof23775 : IsMapEvaluation generatorImages reduction23775.relations [0,0,2779] reduction23775.output := by lin_cert using reduction23775.terms
def image23776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23776 : InImage map_16_261 image23776 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23776 : Bundle := named_bundle% "RealMapCertificates/relations/basis23776.json"
theorem reductionProof23776 : EqualModuloRelations reduction23776.relations reduction23776.input reduction23776.output := by lin_cert using reduction23776.terms
theorem substitutionProof23776 : IsMapEvaluation generatorImages reduction23776.relations [0,0,0,2727] reduction23776.output := by lin_cert using reduction23776.terms
def map_17_17 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image36 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation36 : InImage map_17_17 image36 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction36 : Bundle := named_bundle% "RealMapCertificates/relations/basis36.json"
theorem reductionProof36 : EqualModuloRelations reduction36.relations reduction36.input reduction36.output := by lin_cert using reduction36.terms
theorem substitutionProof36 : IsMapEvaluation generatorImages reduction36.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction36.output := by lin_cert using reduction36.terms
def map_17_50 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image258 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation258 : InImage map_17_50 image258 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction258 : Bundle := named_bundle% "RealMapCertificates/relations/basis258.json"
theorem reductionProof258 : EqualModuloRelations reduction258.relations reduction258.input reduction258.output := by lin_cert using reduction258.terms
theorem substitutionProof258 : IsMapEvaluation generatorImages reduction258.relations [44] reduction258.output := by lin_cert using reduction258.terms
def map_17_52 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image274 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation274 : InImage map_17_52 image274 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction274 : Bundle := named_bundle% "RealMapCertificates/relations/basis274.json"
theorem reductionProof274 : EqualModuloRelations reduction274.relations reduction274.input reduction274.output := by lin_cert using reduction274.terms
theorem substitutionProof274 : IsMapEvaluation generatorImages reduction274.relations [47] reduction274.output := by lin_cert using reduction274.terms
def map_17_55 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image303 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation303 : InImage map_17_55 image303 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction303 : Bundle := named_bundle% "RealMapCertificates/relations/basis303.json"
theorem reductionProof303 : EqualModuloRelations reduction303.relations reduction303.input reduction303.output := by lin_cert using reduction303.terms
theorem substitutionProof303 : IsMapEvaluation generatorImages reduction303.relations [0,49] reduction303.output := by lin_cert using reduction303.terms
def map_17_56 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image314 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation314 : InImage map_17_56 image314 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction314 : Bundle := named_bundle% "RealMapCertificates/relations/basis314.json"
theorem reductionProof314 : EqualModuloRelations reduction314.relations reduction314.input reduction314.output := by lin_cert using reduction314.terms
theorem substitutionProof314 : IsMapEvaluation generatorImages reduction314.relations [1,49] reduction314.output := by lin_cert using reduction314.terms
def image315 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation315 : InImage map_17_56 image315 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction315 : Bundle := named_bundle% "RealMapCertificates/relations/basis315.json"
theorem reductionProof315 : EqualModuloRelations reduction315.relations reduction315.input reduction315.output := by lin_cert using reduction315.terms
theorem substitutionProof315 : IsMapEvaluation generatorImages reduction315.relations [0,0,50] reduction315.output := by lin_cert using reduction315.terms
def map_17_58 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image335 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation335 : InImage map_17_58 image335 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction335 : Bundle := named_bundle% "RealMapCertificates/relations/basis335.json"
theorem reductionProof335 : EqualModuloRelations reduction335.relations reduction335.input reduction335.output := by lin_cert using reduction335.terms
theorem substitutionProof335 : IsMapEvaluation generatorImages reduction335.relations [0,55] reduction335.output := by lin_cert using reduction335.terms
def map_17_59 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image344 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation344 : InImage map_17_59 image344 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction344 : Bundle := named_bundle% "RealMapCertificates/relations/basis344.json"
theorem reductionProof344 : EqualModuloRelations reduction344.relations reduction344.input reduction344.output := by lin_cert using reduction344.terms
theorem substitutionProof344 : IsMapEvaluation generatorImages reduction344.relations [0,0,56] reduction344.output := by lin_cert using reduction344.terms
def map_17_61 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image362 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation362 : InImage map_17_61 image362 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction362 : Bundle := named_bundle% "RealMapCertificates/relations/basis362.json"
theorem reductionProof362 : EqualModuloRelations reduction362.relations reduction362.input reduction362.output := by lin_cert using reduction362.terms
theorem substitutionProof362 : IsMapEvaluation generatorImages reduction362.relations [0,8,31] reduction362.output := by lin_cert using reduction362.terms
def map_17_62 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image369 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation369 : InImage map_17_62 image369 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction369 : Bundle := named_bundle% "RealMapCertificates/relations/basis369.json"
theorem reductionProof369 : EqualModuloRelations reduction369.relations reduction369.input reduction369.output := by lin_cert using reduction369.terms
theorem substitutionProof369 : IsMapEvaluation generatorImages reduction369.relations [0,0,16,17] reduction369.output := by lin_cert using reduction369.terms
def map_17_63 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation377 : InImage map_17_63 image377 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction377 : Bundle := named_bundle% "RealMapCertificates/relations/basis377.json"
theorem reductionProof377 : EqualModuloRelations reduction377.relations reduction377.input reduction377.output := by lin_cert using reduction377.terms
theorem substitutionProof377 : IsMapEvaluation generatorImages reduction377.relations [0,0,0,17,17] reduction377.output := by lin_cert using reduction377.terms
def map_17_64 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation391 : InImage map_17_64 image391 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction391 : Bundle := named_bundle% "RealMapCertificates/relations/basis391.json"
theorem reductionProof391 : EqualModuloRelations reduction391.relations reduction391.input reduction391.output := by lin_cert using reduction391.terms
theorem substitutionProof391 : IsMapEvaluation generatorImages reduction391.relations [0,8,39] reduction391.output := by lin_cert using reduction391.terms
def image392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation392 : InImage map_17_64 image392 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction392 : Bundle := named_bundle% "RealMapCertificates/relations/basis392.json"
theorem reductionProof392 : EqualModuloRelations reduction392.relations reduction392.input reduction392.output := by lin_cert using reduction392.terms
theorem substitutionProof392 : IsMapEvaluation generatorImages reduction392.relations [0,0,0,0,59] reduction392.output := by lin_cert using reduction392.terms
def map_17_65 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image407 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation407 : InImage map_17_65 image407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction407 : Bundle := named_bundle% "RealMapCertificates/relations/basis407.json"
theorem reductionProof407 : EqualModuloRelations reduction407.relations reduction407.input reduction407.output := by lin_cert using reduction407.terms
theorem substitutionProof407 : IsMapEvaluation generatorImages reduction407.relations [0,0,8,40] reduction407.output := by lin_cert using reduction407.terms
def map_17_67 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image442 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation442 : InImage map_17_67 image442 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction442 : Bundle := named_bundle% "RealMapCertificates/relations/basis442.json"
theorem reductionProof442 : EqualModuloRelations reduction442.relations reduction442.input reduction442.output := by lin_cert using reduction442.terms
theorem substitutionProof442 : IsMapEvaluation generatorImages reduction442.relations [0,8,8,16] reduction442.output := by lin_cert using reduction442.terms
def map_17_68 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation461 : InImage map_17_68 image461 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction461 : Bundle := named_bundle% "RealMapCertificates/relations/basis461.json"
theorem reductionProof461 : EqualModuloRelations reduction461.relations reduction461.input reduction461.output := by lin_cert using reduction461.terms
theorem substitutionProof461 : IsMapEvaluation generatorImages reduction461.relations [0,0,8,8,17] reduction461.output := by lin_cert using reduction461.terms
end RealMapCertificates
