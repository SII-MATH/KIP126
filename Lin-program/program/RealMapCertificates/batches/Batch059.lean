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
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 24 => []
  | 41 => [[3,4,4,4]]
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 51 => [[7,7,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 66 => [[2,2,12]]
  | 69 => []
  | 76 => []
  | 80 => []
  | 88 => [[4,4,5,5,7]]
  | 90 => []
  | 100 => [[4,4,5,7,7]]
  | 105 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 133 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 176 => []
  | 187 => []
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 201 => []
  | 208 => [[5,7,7,12]]
  | 209 => []
  | 212 => []
  | 219 => [[7,7,7,12]]
  | 226 => []
  | 254 => []
  | 255 => []
  | 266 => []
  | 267 => []
  | 280 => []
  | 284 => []
  | 292 => []
  | 300 => []
  | 301 => []
  | 302 => []
  | 304 => []
  | 312 => []
  | 318 => []
  | 328 => []
  | 349 => []
  | 357 => []
  | 358 => []
  | 359 => []
  | 369 => []
  | 383 => []
  | 418 => []
  | 421 => []
  | 422 => []
  | 436 => []
  | 437 => []
  | 438 => []
  | _ => []
def map_17_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation503 : InImage map_17_70 image503 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction503 : Bundle := named_bundle% "RealMapCertificates/relations/basis503.json"
theorem reductionProof503 : EqualModuloRelations reduction503.relations reduction503.input reduction503.output := by lin_cert using reduction503.terms
theorem substitutionProof503 : IsMapEvaluation generatorImages reduction503.relations [0,0,0,0,0,0,0,64] reduction503.output := by lin_cert using reduction503.terms
def map_17_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation523 : InImage map_17_71 image523 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction523 : Bundle := named_bundle% "RealMapCertificates/relations/basis523.json"
theorem reductionProof523 : EqualModuloRelations reduction523.relations reduction523.input reduction523.output := by lin_cert using reduction523.terms
theorem substitutionProof523 : IsMapEvaluation generatorImages reduction523.relations [0,0,0,0,0,0,0,66] reduction523.output := by lin_cert using reduction523.terms
def map_17_72 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image538 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation538 : InImage map_17_72 image538 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction538 : Bundle := named_bundle% "RealMapCertificates/relations/basis538.json"
theorem reductionProof538 : EqualModuloRelations reduction538.relations reduction538.input reduction538.output := by lin_cert using reduction538.terms
theorem substitutionProof538 : IsMapEvaluation generatorImages reduction538.relations [88] reduction538.output := by lin_cert using reduction538.terms
def map_17_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image610 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation610 : InImage map_17_75 image610 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction610 : Bundle := named_bundle% "RealMapCertificates/relations/basis610.json"
theorem reductionProof610 : EqualModuloRelations reduction610.relations reduction610.input reduction610.output := by lin_cert using reduction610.terms
theorem substitutionProof610 : IsMapEvaluation generatorImages reduction610.relations [100] reduction610.output := by lin_cert using reduction610.terms
def map_17_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image673 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation673 : InImage map_17_78 image673 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction673 : Bundle := named_bundle% "RealMapCertificates/relations/basis673.json"
theorem reductionProof673 : EqualModuloRelations reduction673.relations reduction673.input reduction673.output := by lin_cert using reduction673.terms
theorem substitutionProof673 : IsMapEvaluation generatorImages reduction673.relations [8,60] reduction673.output := by lin_cert using reduction673.terms
def map_17_79 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation698 : InImage map_17_79 image698 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction698 : Bundle := named_bundle% "RealMapCertificates/relations/basis698.json"
theorem reductionProof698 : EqualModuloRelations reduction698.relations reduction698.input reduction698.output := by lin_cert using reduction698.terms
theorem substitutionProof698 : IsMapEvaluation generatorImages reduction698.relations [0,0,0,0,0,0,0,90] reduction698.output := by lin_cert using reduction698.terms
def map_17_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation715 : InImage map_17_80 image715 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction715 : Bundle := named_bundle% "RealMapCertificates/relations/basis715.json"
theorem reductionProof715 : EqualModuloRelations reduction715.relations reduction715.input reduction715.output := by lin_cert using reduction715.terms
theorem substitutionProof715 : IsMapEvaluation generatorImages reduction715.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction715.output := by lin_cert using reduction715.terms
def map_17_81 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image743 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation743 : InImage map_17_81 image743 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction743 : Bundle := named_bundle% "RealMapCertificates/relations/basis743.json"
theorem reductionProof743 : EqualModuloRelations reduction743.relations reduction743.input reduction743.output := by lin_cert using reduction743.terms
theorem substitutionProof743 : IsMapEvaluation generatorImages reduction743.relations [8,63] reduction743.output := by lin_cert using reduction743.terms
def image744 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation744 : InImage map_17_81 image744 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction744 : Bundle := named_bundle% "RealMapCertificates/relations/basis744.json"
theorem reductionProof744 : EqualModuloRelations reduction744.relations reduction744.input reduction744.output := by lin_cert using reduction744.terms
theorem substitutionProof744 : IsMapEvaluation generatorImages reduction744.relations [0,0,0,112] reduction744.output := by lin_cert using reduction744.terms
def map_17_84 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image810 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation810 : InImage map_17_84 image810 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction810 : Bundle := named_bundle% "RealMapCertificates/relations/basis810.json"
theorem reductionProof810 : EqualModuloRelations reduction810.relations reduction810.input reduction810.output := by lin_cert using reduction810.terms
theorem substitutionProof810 : IsMapEvaluation generatorImages reduction810.relations [8,8,42] reduction810.output := by lin_cert using reduction810.terms
def map_17_87 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image895 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation895 : InImage map_17_87 image895 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction895 : Bundle := named_bundle% "RealMapCertificates/relations/basis895.json"
theorem reductionProof895 : EqualModuloRelations reduction895.relations reduction895.input reduction895.output := by lin_cert using reduction895.terms
theorem substitutionProof895 : IsMapEvaluation generatorImages reduction895.relations [138] reduction895.output := by lin_cert using reduction895.terms
def image896 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation896 : InImage map_17_87 image896 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction896 : Bundle := named_bundle% "RealMapCertificates/relations/basis896.json"
theorem reductionProof896 : EqualModuloRelations reduction896.relations reduction896.input reduction896.output := by lin_cert using reduction896.terms
theorem substitutionProof896 : IsMapEvaluation generatorImages reduction896.relations [8,8,46] reduction896.output := by lin_cert using reduction896.terms
def map_17_90 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image972 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation972 : InImage map_17_90 image972 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction972 : Bundle := named_bundle% "RealMapCertificates/relations/basis972.json"
theorem reductionProof972 : EqualModuloRelations reduction972.relations reduction972.input reduction972.output := by lin_cert using reduction972.terms
theorem substitutionProof972 : IsMapEvaluation generatorImages reduction972.relations [147] reduction972.output := by lin_cert using reduction972.terms
def image973 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation973 : InImage map_17_90 image973 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction973 : Bundle := named_bundle% "RealMapCertificates/relations/basis973.json"
theorem reductionProof973 : EqualModuloRelations reduction973.relations reduction973.input reduction973.output := by lin_cert using reduction973.terms
theorem substitutionProof973 : IsMapEvaluation generatorImages reduction973.relations [8,8,51] reduction973.output := by lin_cert using reduction973.terms
def map_17_93 : Matrix 2 3 := fun i j => ([false,true,false,false,false,true] : List Bool)[i.val*3+j.val]!
def image1053 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1053 : InImage map_17_93 image1053 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1053 : Bundle := named_bundle% "RealMapCertificates/relations/basis1053.json"
theorem reductionProof1053 : EqualModuloRelations reduction1053.relations reduction1053.input reduction1053.output := by lin_cert using reduction1053.terms
theorem substitutionProof1053 : IsMapEvaluation generatorImages reduction1053.relations [17,64] reduction1053.output := by lin_cert using reduction1053.terms
def image1054 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1054 : InImage map_17_93 image1054 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1054 : Bundle := named_bundle% "RealMapCertificates/relations/basis1054.json"
theorem reductionProof1054 : EqualModuloRelations reduction1054.relations reduction1054.input reduction1054.output := by lin_cert using reduction1054.terms
theorem substitutionProof1054 : IsMapEvaluation generatorImages reduction1054.relations [8,9,51] reduction1054.output := by lin_cert using reduction1054.terms
def image1055 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1055 : InImage map_17_93 image1055 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1055 : Bundle := named_bundle% "RealMapCertificates/relations/basis1055.json"
theorem reductionProof1055 : EqualModuloRelations reduction1055.relations reduction1055.input reduction1055.output := by lin_cert using reduction1055.terms
theorem substitutionProof1055 : IsMapEvaluation generatorImages reduction1055.relations [0,149] reduction1055.output := by lin_cert using reduction1055.terms
def map_17_94 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image1078 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1078 : InImage map_17_94 image1078 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1078 : Bundle := named_bundle% "RealMapCertificates/relations/basis1078.json"
theorem reductionProof1078 : EqualModuloRelations reduction1078.relations reduction1078.input reduction1078.output := by lin_cert using reduction1078.terms
theorem substitutionProof1078 : IsMapEvaluation generatorImages reduction1078.relations [1,149] reduction1078.output := by lin_cert using reduction1078.terms
def image1079 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1079 : InImage map_17_94 image1079 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1079 : Bundle := named_bundle% "RealMapCertificates/relations/basis1079.json"
theorem reductionProof1079 : EqualModuloRelations reduction1079.relations reduction1079.input reduction1079.output := by lin_cert using reduction1079.terms
theorem substitutionProof1079 : IsMapEvaluation generatorImages reduction1079.relations [0,154] reduction1079.output := by lin_cert using reduction1079.terms
def map_17_96 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image1122 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1122 : InImage map_17_96 image1122 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1122 : Bundle := named_bundle% "RealMapCertificates/relations/basis1122.json"
theorem reductionProof1122 : EqualModuloRelations reduction1122.relations reduction1122.input reduction1122.output := by lin_cert using reduction1122.terms
theorem substitutionProof1122 : IsMapEvaluation generatorImages reduction1122.relations [8,113] reduction1122.output := by lin_cert using reduction1122.terms
def image1123 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1123 : InImage map_17_96 image1123 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1123 : Bundle := named_bundle% "RealMapCertificates/relations/basis1123.json"
theorem reductionProof1123 : EqualModuloRelations reduction1123.relations reduction1123.input reduction1123.output := by lin_cert using reduction1123.terms
theorem substitutionProof1123 : IsMapEvaluation generatorImages reduction1123.relations [8,13,51] reduction1123.output := by lin_cert using reduction1123.terms
def image1124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1124 : InImage map_17_96 image1124 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1124 : Bundle := named_bundle% "RealMapCertificates/relations/basis1124.json"
theorem reductionProof1124 : EqualModuloRelations reduction1124.relations reduction1124.input reduction1124.output := by lin_cert using reduction1124.terms
theorem substitutionProof1124 : IsMapEvaluation generatorImages reduction1124.relations [0,160] reduction1124.output := by lin_cert using reduction1124.terms
def map_17_97 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1151 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1151 : InImage map_17_97 image1151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1151 : Bundle := named_bundle% "RealMapCertificates/relations/basis1151.json"
theorem reductionProof1151 : EqualModuloRelations reduction1151.relations reduction1151.input reduction1151.output := by lin_cert using reduction1151.terms
theorem substitutionProof1151 : IsMapEvaluation generatorImages reduction1151.relations [0,162] reduction1151.output := by lin_cert using reduction1151.terms
def map_17_99 : Matrix 2 3 := fun i j => ([true,false,false,false,true,true] : List Bool)[i.val*3+j.val]!
def image1197 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1197 : InImage map_17_99 image1197 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1197 : Bundle := named_bundle% "RealMapCertificates/relations/basis1197.json"
theorem reductionProof1197 : EqualModuloRelations reduction1197.relations reduction1197.input reduction1197.output := by lin_cert using reduction1197.terms
theorem substitutionProof1197 : IsMapEvaluation generatorImages reduction1197.relations [9,13,51] reduction1197.output := by lin_cert using reduction1197.terms
def image1198 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1198 : InImage map_17_99 image1198 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1198 : Bundle := named_bundle% "RealMapCertificates/relations/basis1198.json"
theorem reductionProof1198 : EqualModuloRelations reduction1198.relations reduction1198.input reduction1198.output := by lin_cert using reduction1198.terms
theorem substitutionProof1198 : IsMapEvaluation generatorImages reduction1198.relations [8,118] reduction1198.output := by lin_cert using reduction1198.terms
def image1199 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1199 : InImage map_17_99 image1199 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1199 : Bundle := named_bundle% "RealMapCertificates/relations/basis1199.json"
theorem reductionProof1199 : EqualModuloRelations reduction1199.relations reduction1199.input reduction1199.output := by lin_cert using reduction1199.terms
theorem substitutionProof1199 : IsMapEvaluation generatorImages reduction1199.relations [0,166] reduction1199.output := by lin_cert using reduction1199.terms
def map_17_100 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1223 : InImage map_17_100 image1223 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1223 : Bundle := named_bundle% "RealMapCertificates/relations/basis1223.json"
theorem reductionProof1223 : EqualModuloRelations reduction1223.relations reduction1223.input reduction1223.output := by lin_cert using reduction1223.terms
theorem substitutionProof1223 : IsMapEvaluation generatorImages reduction1223.relations [0,17,80] reduction1223.output := by lin_cert using reduction1223.terms
def image1224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1224 : InImage map_17_100 image1224 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1224 : Bundle := named_bundle% "RealMapCertificates/relations/basis1224.json"
theorem reductionProof1224 : EqualModuloRelations reduction1224.relations reduction1224.input reduction1224.output := by lin_cert using reduction1224.terms
theorem substitutionProof1224 : IsMapEvaluation generatorImages reduction1224.relations [0,0,167] reduction1224.output := by lin_cert using reduction1224.terms
def map_17_101 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1254 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1254 : InImage map_17_101 image1254 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1254 : Bundle := named_bundle% "RealMapCertificates/relations/basis1254.json"
theorem reductionProof1254 : EqualModuloRelations reduction1254.relations reduction1254.input reduction1254.output := by lin_cert using reduction1254.terms
theorem substitutionProof1254 : IsMapEvaluation generatorImages reduction1254.relations [0,0,172] reduction1254.output := by lin_cert using reduction1254.terms
def map_17_102 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image1291 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1291 : InImage map_17_102 image1291 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1291 : Bundle := named_bundle% "RealMapCertificates/relations/basis1291.json"
theorem reductionProof1291 : EqualModuloRelations reduction1291.relations reduction1291.input reduction1291.output := by lin_cert using reduction1291.terms
theorem substitutionProof1291 : IsMapEvaluation generatorImages reduction1291.relations [13,13,51] reduction1291.output := by lin_cert using reduction1291.terms
def image1292 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1292 : InImage map_17_102 image1292 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1292 : Bundle := named_bundle% "RealMapCertificates/relations/basis1292.json"
theorem reductionProof1292 : EqualModuloRelations reduction1292.relations reduction1292.input reduction1292.output := by lin_cert using reduction1292.terms
theorem substitutionProof1292 : IsMapEvaluation generatorImages reduction1292.relations [8,127] reduction1292.output := by lin_cert using reduction1292.terms
def image1293 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1293 : InImage map_17_102 image1293 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1293 : Bundle := named_bundle% "RealMapCertificates/relations/basis1293.json"
theorem reductionProof1293 : EqualModuloRelations reduction1293.relations reduction1293.input reduction1293.output := by lin_cert using reduction1293.terms
theorem substitutionProof1293 : IsMapEvaluation generatorImages reduction1293.relations [0,0,0,0,169] reduction1293.output := by lin_cert using reduction1293.terms
def map_17_103 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1325 : InImage map_17_103 image1325 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1325 : Bundle := named_bundle% "RealMapCertificates/relations/basis1325.json"
theorem reductionProof1325 : EqualModuloRelations reduction1325.relations reduction1325.input reduction1325.output := by lin_cert using reduction1325.terms
theorem substitutionProof1325 : IsMapEvaluation generatorImages reduction1325.relations [0,20,80] reduction1325.output := by lin_cert using reduction1325.terms
def image1326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1326 : InImage map_17_103 image1326 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1326 : Bundle := named_bundle% "RealMapCertificates/relations/basis1326.json"
theorem reductionProof1326 : EqualModuloRelations reduction1326.relations reduction1326.input reduction1326.output := by lin_cert using reduction1326.terms
theorem substitutionProof1326 : IsMapEvaluation generatorImages reduction1326.relations [0,0,0,176] reduction1326.output := by lin_cert using reduction1326.terms
def map_17_104 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1350 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1350 : InImage map_17_104 image1350 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1350 : Bundle := named_bundle% "RealMapCertificates/relations/basis1350.json"
theorem reductionProof1350 : EqualModuloRelations reduction1350.relations reduction1350.input reduction1350.output := by lin_cert using reduction1350.terms
theorem substitutionProof1350 : IsMapEvaluation generatorImages reduction1350.relations [193] reduction1350.output := by lin_cert using reduction1350.terms
def map_17_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1392 : InImage map_17_105 image1392 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1392 : Bundle := named_bundle% "RealMapCertificates/relations/basis1392.json"
theorem reductionProof1392 : EqualModuloRelations reduction1392.relations reduction1392.input reduction1392.output := by lin_cert using reduction1392.terms
theorem substitutionProof1392 : IsMapEvaluation generatorImages reduction1392.relations [8,8,80] reduction1392.output := by lin_cert using reduction1392.terms
def map_17_107 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1456 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1456 : InImage map_17_107 image1456 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1456 : Bundle := named_bundle% "RealMapCertificates/relations/basis1456.json"
theorem reductionProof1456 : EqualModuloRelations reduction1456.relations reduction1456.input reduction1456.output := by lin_cert using reduction1456.terms
theorem substitutionProof1456 : IsMapEvaluation generatorImages reduction1456.relations [208] reduction1456.output := by lin_cert using reduction1456.terms
def image1457 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1457 : InImage map_17_107 image1457 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1457 : Bundle := named_bundle% "RealMapCertificates/relations/basis1457.json"
theorem reductionProof1457 : EqualModuloRelations reduction1457.relations reduction1457.input reduction1457.output := by lin_cert using reduction1457.terms
theorem substitutionProof1457 : IsMapEvaluation generatorImages reduction1457.relations [0,0,0,0,0,187] reduction1457.output := by lin_cert using reduction1457.terms
def map_17_108 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1494 : InImage map_17_108 image1494 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1494 : Bundle := named_bundle% "RealMapCertificates/relations/basis1494.json"
theorem reductionProof1494 : EqualModuloRelations reduction1494.relations reduction1494.input reduction1494.output := by lin_cert using reduction1494.terms
theorem substitutionProof1494 : IsMapEvaluation generatorImages reduction1494.relations [13,13,13,24] reduction1494.output := by lin_cert using reduction1494.terms
def image1495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1495 : InImage map_17_108 image1495 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1495 : Bundle := named_bundle% "RealMapCertificates/relations/basis1495.json"
theorem reductionProof1495 : EqualModuloRelations reduction1495.relations reduction1495.input reduction1495.output := by lin_cert using reduction1495.terms
theorem substitutionProof1495 : IsMapEvaluation generatorImages reduction1495.relations [8,9,80] reduction1495.output := by lin_cert using reduction1495.terms
def image1496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1496 : InImage map_17_108 image1496 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1496 : Bundle := named_bundle% "RealMapCertificates/relations/basis1496.json"
theorem reductionProof1496 : EqualModuloRelations reduction1496.relations reduction1496.input reduction1496.output := by lin_cert using reduction1496.terms
theorem substitutionProof1496 : IsMapEvaluation generatorImages reduction1496.relations [0,0,0,0,0,0,188] reduction1496.output := by lin_cert using reduction1496.terms
def map_17_110 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1564 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1564 : InImage map_17_110 image1564 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1564 : Bundle := named_bundle% "RealMapCertificates/relations/basis1564.json"
theorem reductionProof1564 : EqualModuloRelations reduction1564.relations reduction1564.input reduction1564.output := by lin_cert using reduction1564.terms
theorem substitutionProof1564 : IsMapEvaluation generatorImages reduction1564.relations [219] reduction1564.output := by lin_cert using reduction1564.terms
def map_17_111 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1613 : InImage map_17_111 image1613 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1613 : Bundle := named_bundle% "RealMapCertificates/relations/basis1613.json"
theorem reductionProof1613 : EqualModuloRelations reduction1613.relations reduction1613.input reduction1613.output := by lin_cert using reduction1613.terms
theorem substitutionProof1613 : IsMapEvaluation generatorImages reduction1613.relations [8,13,80] reduction1613.output := by lin_cert using reduction1613.terms
def map_17_113 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1682 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1682 : InImage map_17_113 image1682 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1682 : Bundle := named_bundle% "RealMapCertificates/relations/basis1682.json"
theorem reductionProof1682 : EqualModuloRelations reduction1682.relations reduction1682.input reduction1682.output := by lin_cert using reduction1682.terms
theorem substitutionProof1682 : IsMapEvaluation generatorImages reduction1682.relations [1,41,69] reduction1682.output := by lin_cert using reduction1682.terms
def image1683 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1683 : InImage map_17_113 image1683 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1683 : Bundle := named_bundle% "RealMapCertificates/relations/basis1683.json"
theorem reductionProof1683 : EqualModuloRelations reduction1683.relations reduction1683.input reduction1683.output := by lin_cert using reduction1683.terms
theorem substitutionProof1683 : IsMapEvaluation generatorImages reduction1683.relations [0,0,226] reduction1683.output := by lin_cert using reduction1683.terms
def map_17_114 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1726 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1726 : InImage map_17_114 image1726 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1726 : Bundle := named_bundle% "RealMapCertificates/relations/basis1726.json"
theorem reductionProof1726 : EqualModuloRelations reduction1726.relations reduction1726.input reduction1726.output := by lin_cert using reduction1726.terms
theorem substitutionProof1726 : IsMapEvaluation generatorImages reduction1726.relations [9,13,80] reduction1726.output := by lin_cert using reduction1726.terms
def map_17_116 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1786 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1786 : InImage map_17_116 image1786 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1786 : Bundle := named_bundle% "RealMapCertificates/relations/basis1786.json"
theorem reductionProof1786 : EqualModuloRelations reduction1786.relations reduction1786.input reduction1786.output := by lin_cert using reduction1786.terms
theorem substitutionProof1786 : IsMapEvaluation generatorImages reduction1786.relations [13,150] reduction1786.output := by lin_cert using reduction1786.terms
def image1787 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1787 : InImage map_17_116 image1787 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1787 : Bundle := named_bundle% "RealMapCertificates/relations/basis1787.json"
theorem reductionProof1787 : EqualModuloRelations reduction1787.relations reduction1787.input reduction1787.output := by lin_cert using reduction1787.terms
theorem substitutionProof1787 : IsMapEvaluation generatorImages reduction1787.relations [5,187] reduction1787.output := by lin_cert using reduction1787.terms
def map_17_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1834 : InImage map_17_117 image1834 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1834 : Bundle := named_bundle% "RealMapCertificates/relations/basis1834.json"
theorem reductionProof1834 : EqualModuloRelations reduction1834.relations reduction1834.input reduction1834.output := by lin_cert using reduction1834.terms
theorem substitutionProof1834 : IsMapEvaluation generatorImages reduction1834.relations [13,13,80] reduction1834.output := by lin_cert using reduction1834.terms
def map_17_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1862 : InImage map_17_118 image1862 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1862 : Bundle := named_bundle% "RealMapCertificates/relations/basis1862.json"
theorem reductionProof1862 : EqualModuloRelations reduction1862.relations reduction1862.input reduction1862.output := by lin_cert using reduction1862.terms
theorem substitutionProof1862 : IsMapEvaluation generatorImages reduction1862.relations [49,69] reduction1862.output := by lin_cert using reduction1862.terms
def image1863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1863 : InImage map_17_118 image1863 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1863 : Bundle := named_bundle% "RealMapCertificates/relations/basis1863.json"
theorem reductionProof1863 : EqualModuloRelations reduction1863.relations reduction1863.input reduction1863.output := by lin_cert using reduction1863.terms
theorem substitutionProof1863 : IsMapEvaluation generatorImages reduction1863.relations [0,254] reduction1863.output := by lin_cert using reduction1863.terms
def map_17_119 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1903 : InImage map_17_119 image1903 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1903 : Bundle := named_bundle% "RealMapCertificates/relations/basis1903.json"
theorem reductionProof1903 : EqualModuloRelations reduction1903.relations reduction1903.input reduction1903.output := by lin_cert using reduction1903.terms
theorem substitutionProof1903 : IsMapEvaluation generatorImages reduction1903.relations [0,50,69] reduction1903.output := by lin_cert using reduction1903.terms
def image1904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1904 : InImage map_17_119 image1904 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1904 : Bundle := named_bundle% "RealMapCertificates/relations/basis1904.json"
theorem reductionProof1904 : EqualModuloRelations reduction1904.relations reduction1904.input reduction1904.output := by lin_cert using reduction1904.terms
theorem substitutionProof1904 : IsMapEvaluation generatorImages reduction1904.relations [0,0,255] reduction1904.output := by lin_cert using reduction1904.terms
def map_17_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1985 : InImage map_17_121 image1985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1985 : Bundle := named_bundle% "RealMapCertificates/relations/basis1985.json"
theorem reductionProof1985 : EqualModuloRelations reduction1985.relations reduction1985.input reduction1985.output := by lin_cert using reduction1985.terms
theorem substitutionProof1985 : IsMapEvaluation generatorImages reduction1985.relations [55,69] reduction1985.output := by lin_cert using reduction1985.terms
def image1986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1986 : InImage map_17_121 image1986 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1986 : Bundle := named_bundle% "RealMapCertificates/relations/basis1986.json"
theorem reductionProof1986 : EqualModuloRelations reduction1986.relations reduction1986.input reduction1986.output := by lin_cert using reduction1986.terms
theorem substitutionProof1986 : IsMapEvaluation generatorImages reduction1986.relations [0,8,187] reduction1986.output := by lin_cert using reduction1986.terms
def map_17_122 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2025 : InImage map_17_122 image2025 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2025 : Bundle := named_bundle% "RealMapCertificates/relations/basis2025.json"
theorem reductionProof2025 : EqualModuloRelations reduction2025.relations reduction2025.input reduction2025.output := by lin_cert using reduction2025.terms
theorem substitutionProof2025 : IsMapEvaluation generatorImages reduction2025.relations [0,56,69] reduction2025.output := by lin_cert using reduction2025.terms
def image2026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2026 : InImage map_17_122 image2026 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2026 : Bundle := named_bundle% "RealMapCertificates/relations/basis2026.json"
theorem reductionProof2026 : EqualModuloRelations reduction2026.relations reduction2026.input reduction2026.output := by lin_cert using reduction2026.terms
theorem substitutionProof2026 : IsMapEvaluation generatorImages reduction2026.relations [0,0,266] reduction2026.output := by lin_cert using reduction2026.terms
def image2027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2027 : InImage map_17_122 image2027 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2027 : Bundle := named_bundle% "RealMapCertificates/relations/basis2027.json"
theorem reductionProof2027 : EqualModuloRelations reduction2027.relations reduction2027.input reduction2027.output := by lin_cert using reduction2027.terms
theorem substitutionProof2027 : IsMapEvaluation generatorImages reduction2027.relations [0,0,8,188] reduction2027.output := by lin_cert using reduction2027.terms
def map_17_124 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2106 : InImage map_17_124 image2106 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2106 : Bundle := named_bundle% "RealMapCertificates/relations/basis2106.json"
theorem reductionProof2106 : EqualModuloRelations reduction2106.relations reduction2106.input reduction2106.output := by lin_cert using reduction2106.terms
theorem substitutionProof2106 : IsMapEvaluation generatorImages reduction2106.relations [13,13,105] reduction2106.output := by lin_cert using reduction2106.terms
def image2107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2107 : InImage map_17_124 image2107 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2107 : Bundle := named_bundle% "RealMapCertificates/relations/basis2107.json"
theorem reductionProof2107 : EqualModuloRelations reduction2107.relations reduction2107.input reduction2107.output := by lin_cert using reduction2107.terms
theorem substitutionProof2107 : IsMapEvaluation generatorImages reduction2107.relations [0,8,201] reduction2107.output := by lin_cert using reduction2107.terms
def map_17_125 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2148 : InImage map_17_125 image2148 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2148 : Bundle := named_bundle% "RealMapCertificates/relations/basis2148.json"
theorem reductionProof2148 : EqualModuloRelations reduction2148.relations reduction2148.input reduction2148.output := by lin_cert using reduction2148.terms
theorem substitutionProof2148 : IsMapEvaluation generatorImages reduction2148.relations [292] reduction2148.output := by lin_cert using reduction2148.terms
def image2149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2149 : InImage map_17_125 image2149 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2149 : Bundle := named_bundle% "RealMapCertificates/relations/basis2149.json"
theorem reductionProof2149 : EqualModuloRelations reduction2149.relations reduction2149.input reduction2149.output := by lin_cert using reduction2149.terms
theorem substitutionProof2149 : IsMapEvaluation generatorImages reduction2149.relations [0,0,284] reduction2149.output := by lin_cert using reduction2149.terms
def image2150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2150 : InImage map_17_125 image2150 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2150 : Bundle := named_bundle% "RealMapCertificates/relations/basis2150.json"
theorem reductionProof2150 : EqualModuloRelations reduction2150.relations reduction2150.input reduction2150.output := by lin_cert using reduction2150.terms
theorem substitutionProof2150 : IsMapEvaluation generatorImages reduction2150.relations [0,0,9,188] reduction2150.output := by lin_cert using reduction2150.terms
def map_17_126 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2201 : InImage map_17_126 image2201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2201 : Bundle := named_bundle% "RealMapCertificates/relations/basis2201.json"
theorem reductionProof2201 : EqualModuloRelations reduction2201.relations reduction2201.input reduction2201.output := by lin_cert using reduction2201.terms
theorem substitutionProof2201 : IsMapEvaluation generatorImages reduction2201.relations [301] reduction2201.output := by lin_cert using reduction2201.terms
def image2202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2202 : InImage map_17_126 image2202 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2202 : Bundle := named_bundle% "RealMapCertificates/relations/basis2202.json"
theorem reductionProof2202 : EqualModuloRelations reduction2202.relations reduction2202.input reduction2202.output := by lin_cert using reduction2202.terms
theorem substitutionProof2202 : IsMapEvaluation generatorImages reduction2202.relations [300] reduction2202.output := by lin_cert using reduction2202.terms
def map_17_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2242 : InImage map_17_127 image2242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2242 : Bundle := named_bundle% "RealMapCertificates/relations/basis2242.json"
theorem reductionProof2242 : EqualModuloRelations reduction2242.relations reduction2242.input reduction2242.output := by lin_cert using reduction2242.terms
theorem substitutionProof2242 : IsMapEvaluation generatorImages reduction2242.relations [0,8,212] reduction2242.output := by lin_cert using reduction2242.terms
def image2243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2243 : InImage map_17_127 image2243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2243 : Bundle := named_bundle% "RealMapCertificates/relations/basis2243.json"
theorem reductionProof2243 : EqualModuloRelations reduction2243.relations reduction2243.input reduction2243.output := by lin_cert using reduction2243.terms
theorem substitutionProof2243 : IsMapEvaluation generatorImages reduction2243.relations [0,0,0,59,69] reduction2243.output := by lin_cert using reduction2243.terms
def map_17_128 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2288 : InImage map_17_128 image2288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2288 : Bundle := named_bundle% "RealMapCertificates/relations/basis2288.json"
theorem reductionProof2288 : EqualModuloRelations reduction2288.relations reduction2288.input reduction2288.output := by lin_cert using reduction2288.terms
theorem substitutionProof2288 : IsMapEvaluation generatorImages reduction2288.relations [1,302] reduction2288.output := by lin_cert using reduction2288.terms
def image2289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2289 : InImage map_17_128 image2289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2289 : Bundle := named_bundle% "RealMapCertificates/relations/basis2289.json"
theorem reductionProof2289 : EqualModuloRelations reduction2289.relations reduction2289.input reduction2289.output := by lin_cert using reduction2289.terms
theorem substitutionProof2289 : IsMapEvaluation generatorImages reduction2289.relations [0,0,304] reduction2289.output := by lin_cert using reduction2289.terms
def image2290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2290 : InImage map_17_128 image2290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2290 : Bundle := named_bundle% "RealMapCertificates/relations/basis2290.json"
theorem reductionProof2290 : EqualModuloRelations reduction2290.relations reduction2290.input reduction2290.output := by lin_cert using reduction2290.terms
theorem substitutionProof2290 : IsMapEvaluation generatorImages reduction2290.relations [0,0,13,188] reduction2290.output := by lin_cert using reduction2290.terms
def map_17_129 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2358 : InImage map_17_129 image2358 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2358 : Bundle := named_bundle% "RealMapCertificates/relations/basis2358.json"
theorem reductionProof2358 : EqualModuloRelations reduction2358.relations reduction2358.input reduction2358.output := by lin_cert using reduction2358.terms
theorem substitutionProof2358 : IsMapEvaluation generatorImages reduction2358.relations [0,318] reduction2358.output := by lin_cert using reduction2358.terms
def image2359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2359 : InImage map_17_129 image2359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2359 : Bundle := named_bundle% "RealMapCertificates/relations/basis2359.json"
theorem reductionProof2359 : EqualModuloRelations reduction2359.relations reduction2359.input reduction2359.output := by lin_cert using reduction2359.terms
theorem substitutionProof2359 : IsMapEvaluation generatorImages reduction2359.relations [0,3,266] reduction2359.output := by lin_cert using reduction2359.terms
def map_17_130 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2410 : InImage map_17_130 image2410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2410 : Bundle := named_bundle% "RealMapCertificates/relations/basis2410.json"
theorem reductionProof2410 : EqualModuloRelations reduction2410.relations reduction2410.input reduction2410.output := by lin_cert using reduction2410.terms
theorem substitutionProof2410 : IsMapEvaluation generatorImages reduction2410.relations [9,13,133] reduction2410.output := by lin_cert using reduction2410.terms
def image2411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2411 : InImage map_17_130 image2411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2411 : Bundle := named_bundle% "RealMapCertificates/relations/basis2411.json"
theorem reductionProof2411 : EqualModuloRelations reduction2411.relations reduction2411.input reduction2411.output := by lin_cert using reduction2411.terms
theorem substitutionProof2411 : IsMapEvaluation generatorImages reduction2411.relations [2,302] reduction2411.output := by lin_cert using reduction2411.terms
def image2412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2412 : InImage map_17_130 image2412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2412 : Bundle := named_bundle% "RealMapCertificates/relations/basis2412.json"
theorem reductionProof2412 : EqualModuloRelations reduction2412.relations reduction2412.input reduction2412.output := by lin_cert using reduction2412.terms
theorem substitutionProof2412 : IsMapEvaluation generatorImages reduction2412.relations [0,9,212] reduction2412.output := by lin_cert using reduction2412.terms
def image2413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2413 : InImage map_17_130 image2413 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2413 : Bundle := named_bundle% "RealMapCertificates/relations/basis2413.json"
theorem reductionProof2413 : EqualModuloRelations reduction2413.relations reduction2413.input reduction2413.output := by lin_cert using reduction2413.terms
theorem substitutionProof2413 : IsMapEvaluation generatorImages reduction2413.relations [0,0,3,267] reduction2413.output := by lin_cert using reduction2413.terms
def map_17_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2466 : InImage map_17_131 image2466 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2466 : Bundle := named_bundle% "RealMapCertificates/relations/basis2466.json"
theorem reductionProof2466 : EqualModuloRelations reduction2466.relations reduction2466.input reduction2466.output := by lin_cert using reduction2466.terms
theorem substitutionProof2466 : IsMapEvaluation generatorImages reduction2466.relations [0,2,13,188] reduction2466.output := by lin_cert using reduction2466.terms
def map_17_132 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2545 : InImage map_17_132 image2545 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2545 : Bundle := named_bundle% "RealMapCertificates/relations/basis2545.json"
theorem reductionProof2545 : EqualModuloRelations reduction2545.relations reduction2545.input reduction2545.output := by lin_cert using reduction2545.terms
theorem substitutionProof2545 : IsMapEvaluation generatorImages reduction2545.relations [358] reduction2545.output := by lin_cert using reduction2545.terms
def image2546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2546 : InImage map_17_132 image2546 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2546 : Bundle := named_bundle% "RealMapCertificates/relations/basis2546.json"
theorem reductionProof2546 : EqualModuloRelations reduction2546.relations reduction2546.input reduction2546.output := by lin_cert using reduction2546.terms
theorem substitutionProof2546 : IsMapEvaluation generatorImages reduction2546.relations [357] reduction2546.output := by lin_cert using reduction2546.terms
def map_17_133 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2605 : InImage map_17_133 image2605 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2605 : Bundle := named_bundle% "RealMapCertificates/relations/basis2605.json"
theorem reductionProof2605 : EqualModuloRelations reduction2605.relations reduction2605.input reduction2605.output := by lin_cert using reduction2605.terms
theorem substitutionProof2605 : IsMapEvaluation generatorImages reduction2605.relations [13,13,133] reduction2605.output := by lin_cert using reduction2605.terms
def image2606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2606 : InImage map_17_133 image2606 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2606 : Bundle := named_bundle% "RealMapCertificates/relations/basis2606.json"
theorem reductionProof2606 : EqualModuloRelations reduction2606.relations reduction2606.input reduction2606.output := by lin_cert using reduction2606.terms
theorem substitutionProof2606 : IsMapEvaluation generatorImages reduction2606.relations [0,359] reduction2606.output := by lin_cert using reduction2606.terms
def image2607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2607 : InImage map_17_133 image2607 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2607 : Bundle := named_bundle% "RealMapCertificates/relations/basis2607.json"
theorem reductionProof2607 : EqualModuloRelations reduction2607.relations reduction2607.input reduction2607.output := by lin_cert using reduction2607.terms
theorem substitutionProof2607 : IsMapEvaluation generatorImages reduction2607.relations [0,13,212] reduction2607.output := by lin_cert using reduction2607.terms
def image2608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2608 : InImage map_17_133 image2608 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2608 : Bundle := named_bundle% "RealMapCertificates/relations/basis2608.json"
theorem reductionProof2608 : EqualModuloRelations reduction2608.relations reduction2608.input reduction2608.output := by lin_cert using reduction2608.terms
theorem substitutionProof2608 : IsMapEvaluation generatorImages reduction2608.relations [0,0,349] reduction2608.output := by lin_cert using reduction2608.terms
def map_17_134 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2670 : InImage map_17_134 image2670 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2670 : Bundle := named_bundle% "RealMapCertificates/relations/basis2670.json"
theorem reductionProof2670 : EqualModuloRelations reduction2670.relations reduction2670.input reduction2670.output := by lin_cert using reduction2670.terms
theorem substitutionProof2670 : IsMapEvaluation generatorImages reduction2670.relations [383] reduction2670.output := by lin_cert using reduction2670.terms
def image2671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2671 : InImage map_17_134 image2671 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2671 : Bundle := named_bundle% "RealMapCertificates/relations/basis2671.json"
theorem reductionProof2671 : EqualModuloRelations reduction2671.relations reduction2671.input reduction2671.output := by lin_cert using reduction2671.terms
theorem substitutionProof2671 : IsMapEvaluation generatorImages reduction2671.relations [1,359] reduction2671.output := by lin_cert using reduction2671.terms
def image2672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2672 : InImage map_17_134 image2672 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2672 : Bundle := named_bundle% "RealMapCertificates/relations/basis2672.json"
theorem reductionProof2672 : EqualModuloRelations reduction2672.relations reduction2672.input reduction2672.output := by lin_cert using reduction2672.terms
theorem substitutionProof2672 : IsMapEvaluation generatorImages reduction2672.relations [0,2,328] reduction2672.output := by lin_cert using reduction2672.terms
def image2673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2673 : InImage map_17_134 image2673 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2673 : Bundle := named_bundle% "RealMapCertificates/relations/basis2673.json"
theorem reductionProof2673 : EqualModuloRelations reduction2673.relations reduction2673.input reduction2673.output := by lin_cert using reduction2673.terms
theorem substitutionProof2673 : IsMapEvaluation generatorImages reduction2673.relations [0,0,0,0,0,0,0,312] reduction2673.output := by lin_cert using reduction2673.terms
def map_17_135 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2770 : InImage map_17_135 image2770 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2770 : Bundle := named_bundle% "RealMapCertificates/relations/basis2770.json"
theorem reductionProof2770 : EqualModuloRelations reduction2770.relations reduction2770.input reduction2770.output := by lin_cert using reduction2770.terms
theorem substitutionProof2770 : IsMapEvaluation generatorImages reduction2770.relations [1,369] reduction2770.output := by lin_cert using reduction2770.terms
def map_17_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2836 : InImage map_17_136 image2836 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2836 : Bundle := named_bundle% "RealMapCertificates/relations/basis2836.json"
theorem reductionProof2836 : EqualModuloRelations reduction2836.relations reduction2836.input reduction2836.output := by lin_cert using reduction2836.terms
theorem substitutionProof2836 : IsMapEvaluation generatorImages reduction2836.relations [2,359] reduction2836.output := by lin_cert using reduction2836.terms
def map_17_137 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2903 : InImage map_17_137 image2903 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2903 : Bundle := named_bundle% "RealMapCertificates/relations/basis2903.json"
theorem reductionProof2903 : EqualModuloRelations reduction2903.relations reduction2903.input reduction2903.output := by lin_cert using reduction2903.terms
theorem substitutionProof2903 : IsMapEvaluation generatorImages reduction2903.relations [421] reduction2903.output := by lin_cert using reduction2903.terms
def image2904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2904 : InImage map_17_137 image2904 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2904 : Bundle := named_bundle% "RealMapCertificates/relations/basis2904.json"
theorem reductionProof2904 : EqualModuloRelations reduction2904.relations reduction2904.input reduction2904.output := by lin_cert using reduction2904.terms
theorem substitutionProof2904 : IsMapEvaluation generatorImages reduction2904.relations [17,209] reduction2904.output := by lin_cert using reduction2904.terms
def image2905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2905 : InImage map_17_137 image2905 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2905 : Bundle := named_bundle% "RealMapCertificates/relations/basis2905.json"
theorem reductionProof2905 : EqualModuloRelations reduction2905.relations reduction2905.input reduction2905.output := by lin_cert using reduction2905.terms
theorem substitutionProof2905 : IsMapEvaluation generatorImages reduction2905.relations [0,3,3,267] reduction2905.output := by lin_cert using reduction2905.terms
def map_17_138 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2993 : InImage map_17_138 image2993 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2993 : Bundle := named_bundle% "RealMapCertificates/relations/basis2993.json"
theorem reductionProof2993 : EqualModuloRelations reduction2993.relations reduction2993.input reduction2993.output := by lin_cert using reduction2993.terms
theorem substitutionProof2993 : IsMapEvaluation generatorImages reduction2993.relations [436] reduction2993.output := by lin_cert using reduction2993.terms
def image2994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2994 : InImage map_17_138 image2994 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2994 : Bundle := named_bundle% "RealMapCertificates/relations/basis2994.json"
theorem reductionProof2994 : EqualModuloRelations reduction2994.relations reduction2994.input reduction2994.output := by lin_cert using reduction2994.terms
theorem substitutionProof2994 : IsMapEvaluation generatorImages reduction2994.relations [23,188] reduction2994.output := by lin_cert using reduction2994.terms
def image2995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2995 : InImage map_17_138 image2995 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2995 : Bundle := named_bundle% "RealMapCertificates/relations/basis2995.json"
theorem reductionProof2995 : EqualModuloRelations reduction2995.relations reduction2995.input reduction2995.output := by lin_cert using reduction2995.terms
theorem substitutionProof2995 : IsMapEvaluation generatorImages reduction2995.relations [0,422] reduction2995.output := by lin_cert using reduction2995.terms
def image2996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2996 : InImage map_17_138 image2996 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2996 : Bundle := named_bundle% "RealMapCertificates/relations/basis2996.json"
theorem reductionProof2996 : EqualModuloRelations reduction2996.relations reduction2996.input reduction2996.output := by lin_cert using reduction2996.terms
theorem substitutionProof2996 : IsMapEvaluation generatorImages reduction2996.relations [0,0,7,267] reduction2996.output := by lin_cert using reduction2996.terms
def map_17_139 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3070 : InImage map_17_139 image3070 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3070 : Bundle := named_bundle% "RealMapCertificates/relations/basis3070.json"
theorem reductionProof3070 : EqualModuloRelations reduction3070.relations reduction3070.input reduction3070.output := by lin_cert using reduction3070.terms
theorem substitutionProof3070 : IsMapEvaluation generatorImages reduction3070.relations [13,13,13,76] reduction3070.output := by lin_cert using reduction3070.terms
def image3071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3071 : InImage map_17_139 image3071 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3071 : Bundle := named_bundle% "RealMapCertificates/relations/basis3071.json"
theorem reductionProof3071 : EqualModuloRelations reduction3071.relations reduction3071.input reduction3071.output := by lin_cert using reduction3071.terms
theorem substitutionProof3071 : IsMapEvaluation generatorImages reduction3071.relations [0,437] reduction3071.output := by lin_cert using reduction3071.terms
def map_17_140 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3141 : InImage map_17_140 image3141 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3141 : Bundle := named_bundle% "RealMapCertificates/relations/basis3141.json"
theorem reductionProof3141 : EqualModuloRelations reduction3141.relations reduction3141.input reduction3141.output := by lin_cert using reduction3141.terms
theorem substitutionProof3141 : IsMapEvaluation generatorImages reduction3141.relations [8,280] reduction3141.output := by lin_cert using reduction3141.terms
def image3142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3142 : InImage map_17_140 image3142 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3142 : Bundle := named_bundle% "RealMapCertificates/relations/basis3142.json"
theorem reductionProof3142 : EqualModuloRelations reduction3142.relations reduction3142.input reduction3142.output := by lin_cert using reduction3142.terms
theorem substitutionProof3142 : IsMapEvaluation generatorImages reduction3142.relations [3,359] reduction3142.output := by lin_cert using reduction3142.terms
def image3143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3143 : InImage map_17_140 image3143 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3143 : Bundle := named_bundle% "RealMapCertificates/relations/basis3143.json"
theorem reductionProof3143 : EqualModuloRelations reduction3143.relations reduction3143.input reduction3143.output := by lin_cert using reduction3143.terms
theorem substitutionProof3143 : IsMapEvaluation generatorImages reduction3143.relations [0,0,438] reduction3143.output := by lin_cert using reduction3143.terms
def image3144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3144 : InImage map_17_140 image3144 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3144 : Bundle := named_bundle% "RealMapCertificates/relations/basis3144.json"
theorem reductionProof3144 : EqualModuloRelations reduction3144.relations reduction3144.input reduction3144.output := by lin_cert using reduction3144.terms
theorem substitutionProof3144 : IsMapEvaluation generatorImages reduction3144.relations [0,0,0,0,418] reduction3144.output := by lin_cert using reduction3144.terms
end RealMapCertificates
