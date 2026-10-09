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
  | 24 => []
  | 43 => []
  | 48 => []
  | 64 => []
  | 67 => []
  | 69 => []
  | 75 => []
  | 76 => []
  | 107 => []
  | 112 => []
  | 188 => []
  | 190 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 266 => []
  | 267 => []
  | 268 => []
  | 287 => []
  | 293 => []
  | 294 => []
  | 314 => []
  | 324 => []
  | 328 => []
  | 333 => []
  | 335 => []
  | 338 => []
  | 367 => []
  | 414 => []
  | 417 => []
  | 437 => []
  | 439 => []
  | 440 => []
  | 443 => []
  | 448 => []
  | 449 => []
  | 472 => []
  | 473 => []
  | 474 => []
  | 475 => []
  | 481 => []
  | 482 => []
  | 483 => []
  | 484 => []
  | 493 => []
  | 494 => []
  | 502 => []
  | 532 => []
  | 533 => []
  | 534 => []
  | 540 => []
  | 552 => []
  | 561 => []
  | 562 => []
  | 568 => []
  | 575 => []
  | 582 => []
  | 588 => []
  | 604 => []
  | 612 => []
  | 613 => []
  | 618 => []
  | 629 => []
  | 630 => []
  | 648 => []
  | 650 => []
  | 669 => []
  | 671 => []
  | 676 => []
  | 691 => []
  | 692 => []
  | 693 => []
  | 707 => []
  | 708 => []
  | 732 => []
  | 741 => []
  | 743 => []
  | 762 => []
  | 763 => []
  | 764 => []
  | 781 => []
  | _ => []
def map_17_141 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3249 : InImage map_17_141 image3249 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3249 : Bundle := named_bundle% "RealMapCertificates/relations/basis3249.json"
theorem reductionProof3249 : EqualModuloRelations reduction3249.relations reduction3249.input reduction3249.output := by lin_cert using reduction3249.terms
theorem substitutionProof3249 : IsMapEvaluation generatorImages reduction3249.relations [472] reduction3249.output := by lin_cert using reduction3249.terms
def image3250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3250 : InImage map_17_141 image3250 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3250 : Bundle := named_bundle% "RealMapCertificates/relations/basis3250.json"
theorem reductionProof3250 : EqualModuloRelations reduction3250.relations reduction3250.input reduction3250.output := by lin_cert using reduction3250.terms
theorem substitutionProof3250 : IsMapEvaluation generatorImages reduction3250.relations [0,0,448] reduction3250.output := by lin_cert using reduction3250.terms
def image3251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3251 : InImage map_17_141 image3251 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3251 : Bundle := named_bundle% "RealMapCertificates/relations/basis3251.json"
theorem reductionProof3251 : EqualModuloRelations reduction3251.relations reduction3251.input reduction3251.output := by lin_cert using reduction3251.terms
theorem substitutionProof3251 : IsMapEvaluation generatorImages reduction3251.relations [0,0,0,440] reduction3251.output := by lin_cert using reduction3251.terms
def image3252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3252 : InImage map_17_141 image3252 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3252 : Bundle := named_bundle% "RealMapCertificates/relations/basis3252.json"
theorem reductionProof3252 : EqualModuloRelations reduction3252.relations reduction3252.input reduction3252.output := by lin_cert using reduction3252.terms
theorem substitutionProof3252 : IsMapEvaluation generatorImages reduction3252.relations [0,0,0,439] reduction3252.output := by lin_cert using reduction3252.terms
def map_17_142 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3319 : InImage map_17_142 image3319 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3319 : Bundle := named_bundle% "RealMapCertificates/relations/basis3319.json"
theorem reductionProof3319 : EqualModuloRelations reduction3319.relations reduction3319.input reduction3319.output := by lin_cert using reduction3319.terms
theorem substitutionProof3319 : IsMapEvaluation generatorImages reduction3319.relations [0,0,67,107] reduction3319.output := by lin_cert using reduction3319.terms
def image3320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3320 : InImage map_17_142 image3320 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3320 : Bundle := named_bundle% "RealMapCertificates/relations/basis3320.json"
theorem reductionProof3320 : EqualModuloRelations reduction3320.relations reduction3320.input reduction3320.output := by lin_cert using reduction3320.terms
theorem substitutionProof3320 : IsMapEvaluation generatorImages reduction3320.relations [0,0,0,449] reduction3320.output := by lin_cert using reduction3320.terms
def map_17_143 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3393 : InImage map_17_143 image3393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3393 : Bundle := named_bundle% "RealMapCertificates/relations/basis3393.json"
theorem reductionProof3393 : EqualModuloRelations reduction3393.relations reduction3393.input reduction3393.output := by lin_cert using reduction3393.terms
theorem substitutionProof3393 : IsMapEvaluation generatorImages reduction3393.relations [493] reduction3393.output := by lin_cert using reduction3393.terms
def image3394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3394 : InImage map_17_143 image3394 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3394 : Bundle := named_bundle% "RealMapCertificates/relations/basis3394.json"
theorem reductionProof3394 : EqualModuloRelations reduction3394.relations reduction3394.input reduction3394.output := by lin_cert using reduction3394.terms
theorem substitutionProof3394 : IsMapEvaluation generatorImages reduction3394.relations [8,294] reduction3394.output := by lin_cert using reduction3394.terms
def image3395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3395 : InImage map_17_143 image3395 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3395 : Bundle := named_bundle% "RealMapCertificates/relations/basis3395.json"
theorem reductionProof3395 : EqualModuloRelations reduction3395.relations reduction3395.input reduction3395.output := by lin_cert using reduction3395.terms
theorem substitutionProof3395 : IsMapEvaluation generatorImages reduction3395.relations [1,1,448] reduction3395.output := by lin_cert using reduction3395.terms
def image3396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3396 : InImage map_17_143 image3396 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3396 : Bundle := named_bundle% "RealMapCertificates/relations/basis3396.json"
theorem reductionProof3396 : EqualModuloRelations reduction3396.relations reduction3396.input reduction3396.output := by lin_cert using reduction3396.terms
theorem substitutionProof3396 : IsMapEvaluation generatorImages reduction3396.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69] reduction3396.output := by lin_cert using reduction3396.terms
def map_17_144 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3493 : InImage map_17_144 image3493 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3493 : Bundle := named_bundle% "RealMapCertificates/relations/basis3493.json"
theorem reductionProof3493 : EqualModuloRelations reduction3493.relations reduction3493.input reduction3493.output := by lin_cert using reduction3493.terms
theorem substitutionProof3493 : IsMapEvaluation generatorImages reduction3493.relations [13,268] reduction3493.output := by lin_cert using reduction3493.terms
def image3494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3494 : InImage map_17_144 image3494 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3494 : Bundle := named_bundle% "RealMapCertificates/relations/basis3494.json"
theorem reductionProof3494 : EqualModuloRelations reduction3494.relations reduction3494.input reduction3494.output := by lin_cert using reduction3494.terms
theorem substitutionProof3494 : IsMapEvaluation generatorImages reduction3494.relations [0,0,481] reduction3494.output := by lin_cert using reduction3494.terms
def image3495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3495 : InImage map_17_144 image3495 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3495 : Bundle := named_bundle% "RealMapCertificates/relations/basis3495.json"
theorem reductionProof3495 : EqualModuloRelations reduction3495.relations reduction3495.input reduction3495.output := by lin_cert using reduction3495.terms
theorem substitutionProof3495 : IsMapEvaluation generatorImages reduction3495.relations [0,0,69,112] reduction3495.output := by lin_cert using reduction3495.terms
def image3496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3496 : InImage map_17_144 image3496 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3496 : Bundle := named_bundle% "RealMapCertificates/relations/basis3496.json"
theorem reductionProof3496 : EqualModuloRelations reduction3496.relations reduction3496.input reduction3496.output := by lin_cert using reduction3496.terms
theorem substitutionProof3496 : IsMapEvaluation generatorImages reduction3496.relations [0,0,2,439] reduction3496.output := by lin_cert using reduction3496.terms
def image3497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3497 : InImage map_17_144 image3497 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3497 : Bundle := named_bundle% "RealMapCertificates/relations/basis3497.json"
theorem reductionProof3497 : EqualModuloRelations reduction3497.relations reduction3497.input reduction3497.output := by lin_cert using reduction3497.terms
theorem substitutionProof3497 : IsMapEvaluation generatorImages reduction3497.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3497.output := by lin_cert using reduction3497.terms
def map_17_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3566 : InImage map_17_145 image3566 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3566 : Bundle := named_bundle% "RealMapCertificates/relations/basis3566.json"
theorem reductionProof3566 : EqualModuloRelations reduction3566.relations reduction3566.input reduction3566.output := by lin_cert using reduction3566.terms
theorem substitutionProof3566 : IsMapEvaluation generatorImages reduction3566.relations [2,473] reduction3566.output := by lin_cert using reduction3566.terms
def image3567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3567 : InImage map_17_145 image3567 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3567 : Bundle := named_bundle% "RealMapCertificates/relations/basis3567.json"
theorem reductionProof3567 : EqualModuloRelations reduction3567.relations reduction3567.input reduction3567.output := by lin_cert using reduction3567.terms
theorem substitutionProof3567 : IsMapEvaluation generatorImages reduction3567.relations [1,494] reduction3567.output := by lin_cert using reduction3567.terms
def image3568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3568 : InImage map_17_145 image3568 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3568 : Bundle := named_bundle% "RealMapCertificates/relations/basis3568.json"
theorem reductionProof3568 : EqualModuloRelations reduction3568.relations reduction3568.input reduction3568.output := by lin_cert using reduction3568.terms
theorem substitutionProof3568 : IsMapEvaluation generatorImages reduction3568.relations [0,0,0,482] reduction3568.output := by lin_cert using reduction3568.terms
def map_17_146 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3642 : InImage map_17_146 image3642 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3642 : Bundle := named_bundle% "RealMapCertificates/relations/basis3642.json"
theorem reductionProof3642 : EqualModuloRelations reduction3642.relations reduction3642.input reduction3642.output := by lin_cert using reduction3642.terms
theorem substitutionProof3642 : IsMapEvaluation generatorImages reduction3642.relations [9,294] reduction3642.output := by lin_cert using reduction3642.terms
def image3643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3643 : InImage map_17_146 image3643 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3643 : Bundle := named_bundle% "RealMapCertificates/relations/basis3643.json"
theorem reductionProof3643 : EqualModuloRelations reduction3643.relations reduction3643.input reduction3643.output := by lin_cert using reduction3643.terms
theorem substitutionProof3643 : IsMapEvaluation generatorImages reduction3643.relations [3,437] reduction3643.output := by lin_cert using reduction3643.terms
def map_17_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3758 : InImage map_17_147 image3758 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3758 : Bundle := named_bundle% "RealMapCertificates/relations/basis3758.json"
theorem reductionProof3758 : EqualModuloRelations reduction3758.relations reduction3758.input reduction3758.output := by lin_cert using reduction3758.terms
theorem substitutionProof3758 : IsMapEvaluation generatorImages reduction3758.relations [13,287] reduction3758.output := by lin_cert using reduction3758.terms
def image3759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3759 : InImage map_17_147 image3759 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3759 : Bundle := named_bundle% "RealMapCertificates/relations/basis3759.json"
theorem reductionProof3759 : EqualModuloRelations reduction3759.relations reduction3759.input reduction3759.output := by lin_cert using reduction3759.terms
theorem substitutionProof3759 : IsMapEvaluation generatorImages reduction3759.relations [0,0,8,64,69] reduction3759.output := by lin_cert using reduction3759.terms
def image3760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3760 : InImage map_17_147 image3760 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3760 : Bundle := named_bundle% "RealMapCertificates/relations/basis3760.json"
theorem reductionProof3760 : EqualModuloRelations reduction3760.relations reduction3760.input reduction3760.output := by lin_cert using reduction3760.terms
theorem substitutionProof3760 : IsMapEvaluation generatorImages reduction3760.relations [0,0,0,0,0,484] reduction3760.output := by lin_cert using reduction3760.terms
def map_17_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3910 : InImage map_17_149 image3910 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3910 : Bundle := named_bundle% "RealMapCertificates/relations/basis3910.json"
theorem reductionProof3910 : EqualModuloRelations reduction3910.relations reduction3910.input reduction3910.output := by lin_cert using reduction3910.terms
theorem substitutionProof3910 : IsMapEvaluation generatorImages reduction3910.relations [13,294] reduction3910.output := by lin_cert using reduction3910.terms
def image3911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3911 : InImage map_17_149 image3911 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3911 : Bundle := named_bundle% "RealMapCertificates/relations/basis3911.json"
theorem reductionProof3911 : EqualModuloRelations reduction3911.relations reduction3911.input reduction3911.output := by lin_cert using reduction3911.terms
theorem substitutionProof3911 : IsMapEvaluation generatorImages reduction3911.relations [2,7,328] reduction3911.output := by lin_cert using reduction3911.terms
def map_17_150 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4016 : InImage map_17_150 image4016 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4016 : Bundle := named_bundle% "RealMapCertificates/relations/basis4016.json"
theorem reductionProof4016 : EqualModuloRelations reduction4016.relations reduction4016.input reduction4016.output := by lin_cert using reduction4016.terms
theorem substitutionProof4016 : IsMapEvaluation generatorImages reduction4016.relations [561] reduction4016.output := by lin_cert using reduction4016.terms
def map_17_151 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4105 : InImage map_17_151 image4105 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4105 : Bundle := named_bundle% "RealMapCertificates/relations/basis4105.json"
theorem reductionProof4105 : EqualModuloRelations reduction4105.relations reduction4105.input reduction4105.output := by lin_cert using reduction4105.terms
theorem substitutionProof4105 : IsMapEvaluation generatorImages reduction4105.relations [568] reduction4105.output := by lin_cert using reduction4105.terms
def image4106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4106 : InImage map_17_151 image4106 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4106 : Bundle := named_bundle% "RealMapCertificates/relations/basis4106.json"
theorem reductionProof4106 : EqualModuloRelations reduction4106.relations reduction4106.input reduction4106.output := by lin_cert using reduction4106.terms
theorem substitutionProof4106 : IsMapEvaluation generatorImages reduction4106.relations [1,552] reduction4106.output := by lin_cert using reduction4106.terms
def image4107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4107 : InImage map_17_151 image4107 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4107 : Bundle := named_bundle% "RealMapCertificates/relations/basis4107.json"
theorem reductionProof4107 : EqualModuloRelations reduction4107.relations reduction4107.input reduction4107.output := by lin_cert using reduction4107.terms
theorem substitutionProof4107 : IsMapEvaluation generatorImages reduction4107.relations [0,0,0,0,533] reduction4107.output := by lin_cert using reduction4107.terms
def map_17_152 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4191 : InImage map_17_152 image4191 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4191 : Bundle := named_bundle% "RealMapCertificates/relations/basis4191.json"
theorem reductionProof4191 : EqualModuloRelations reduction4191.relations reduction4191.input reduction4191.output := by lin_cert using reduction4191.terms
theorem substitutionProof4191 : IsMapEvaluation generatorImages reduction4191.relations [7,7,266] reduction4191.output := by lin_cert using reduction4191.terms
def image4192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4192 : InImage map_17_152 image4192 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4192 : Bundle := named_bundle% "RealMapCertificates/relations/basis4192.json"
theorem reductionProof4192 : EqualModuloRelations reduction4192.relations reduction4192.input reduction4192.output := by lin_cert using reduction4192.terms
theorem substitutionProof4192 : IsMapEvaluation generatorImages reduction4192.relations [0,0,0,0,540] reduction4192.output := by lin_cert using reduction4192.terms
def map_17_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4293 : InImage map_17_153 image4293 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4293 : Bundle := named_bundle% "RealMapCertificates/relations/basis4293.json"
theorem reductionProof4293 : EqualModuloRelations reduction4293.relations reduction4293.input reduction4293.output := by lin_cert using reduction4293.terms
theorem substitutionProof4293 : IsMapEvaluation generatorImages reduction4293.relations [582] reduction4293.output := by lin_cert using reduction4293.terms
def image4294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4294 : InImage map_17_153 image4294 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4294 : Bundle := named_bundle% "RealMapCertificates/relations/basis4294.json"
theorem reductionProof4294 : EqualModuloRelations reduction4294.relations reduction4294.input reduction4294.output := by lin_cert using reduction4294.terms
theorem substitutionProof4294 : IsMapEvaluation generatorImages reduction4294.relations [0,7,7,267] reduction4294.output := by lin_cert using reduction4294.terms
def map_17_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4357 : InImage map_17_154 image4357 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4357 : Bundle := named_bundle% "RealMapCertificates/relations/basis4357.json"
theorem reductionProof4357 : EqualModuloRelations reduction4357.relations reduction4357.input reduction4357.output := by lin_cert using reduction4357.terms
theorem substitutionProof4357 : IsMapEvaluation generatorImages reduction4357.relations [588] reduction4357.output := by lin_cert using reduction4357.terms
def map_17_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4447 : InImage map_17_155 image4447 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4447 : Bundle := named_bundle% "RealMapCertificates/relations/basis4447.json"
theorem reductionProof4447 : EqualModuloRelations reduction4447.relations reduction4447.input reduction4447.output := by lin_cert using reduction4447.terms
theorem substitutionProof4447 : IsMapEvaluation generatorImages reduction4447.relations [13,67,75] reduction4447.output := by lin_cert using reduction4447.terms
def map_17_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4550 : InImage map_17_156 image4550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4550 : Bundle := named_bundle% "RealMapCertificates/relations/basis4550.json"
theorem reductionProof4550 : EqualModuloRelations reduction4550.relations reduction4550.input reduction4550.output := by lin_cert using reduction4550.terms
theorem substitutionProof4550 : IsMapEvaluation generatorImages reduction4550.relations [612] reduction4550.output := by lin_cert using reduction4550.terms
def image4551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4551 : InImage map_17_156 image4551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4551 : Bundle := named_bundle% "RealMapCertificates/relations/basis4551.json"
theorem reductionProof4551 : EqualModuloRelations reduction4551.relations reduction4551.input reduction4551.output := by lin_cert using reduction4551.terms
theorem substitutionProof4551 : IsMapEvaluation generatorImages reduction4551.relations [13,13,213] reduction4551.output := by lin_cert using reduction4551.terms
def image4552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4552 : InImage map_17_156 image4552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4552 : Bundle := named_bundle% "RealMapCertificates/relations/basis4552.json"
theorem reductionProof4552 : EqualModuloRelations reduction4552.relations reduction4552.input reduction4552.output := by lin_cert using reduction4552.terms
theorem substitutionProof4552 : IsMapEvaluation generatorImages reduction4552.relations [0,604] reduction4552.output := by lin_cert using reduction4552.terms
def image4553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4553 : InImage map_17_156 image4553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4553 : Bundle := named_bundle% "RealMapCertificates/relations/basis4553.json"
theorem reductionProof4553 : EqualModuloRelations reduction4553.relations reduction4553.input reduction4553.output := by lin_cert using reduction4553.terms
theorem substitutionProof4553 : IsMapEvaluation generatorImages reduction4553.relations [0,0,0,0,0,0,562] reduction4553.output := by lin_cert using reduction4553.terms
def map_17_157 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4626 : InImage map_17_157 image4626 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4626 : Bundle := named_bundle% "RealMapCertificates/relations/basis4626.json"
theorem reductionProof4626 : EqualModuloRelations reduction4626.relations reduction4626.input reduction4626.output := by lin_cert using reduction4626.terms
theorem substitutionProof4626 : IsMapEvaluation generatorImages reduction4626.relations [16,314] reduction4626.output := by lin_cert using reduction4626.terms
def image4627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4627 : InImage map_17_157 image4627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4627 : Bundle := named_bundle% "RealMapCertificates/relations/basis4627.json"
theorem reductionProof4627 : EqualModuloRelations reduction4627.relations reduction4627.input reduction4627.output := by lin_cert using reduction4627.terms
theorem substitutionProof4627 : IsMapEvaluation generatorImages reduction4627.relations [1,604] reduction4627.output := by lin_cert using reduction4627.terms
def image4628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4628 : InImage map_17_157 image4628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4628 : Bundle := named_bundle% "RealMapCertificates/relations/basis4628.json"
theorem reductionProof4628 : EqualModuloRelations reduction4628.relations reduction4628.input reduction4628.output := by lin_cert using reduction4628.terms
theorem substitutionProof4628 : IsMapEvaluation generatorImages reduction4628.relations [0,613] reduction4628.output := by lin_cert using reduction4628.terms
def image4629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4629 : InImage map_17_157 image4629 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4629 : Bundle := named_bundle% "RealMapCertificates/relations/basis4629.json"
theorem reductionProof4629 : EqualModuloRelations reduction4629.relations reduction4629.input reduction4629.output := by lin_cert using reduction4629.terms
theorem substitutionProof4629 : IsMapEvaluation generatorImages reduction4629.relations [0,0,0,0,0,575] reduction4629.output := by lin_cert using reduction4629.terms
def map_17_158 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4715 : InImage map_17_158 image4715 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4715 : Bundle := named_bundle% "RealMapCertificates/relations/basis4715.json"
theorem reductionProof4715 : EqualModuloRelations reduction4715.relations reduction4715.input reduction4715.output := by lin_cert using reduction4715.terms
theorem substitutionProof4715 : IsMapEvaluation generatorImages reduction4715.relations [0,17,314] reduction4715.output := by lin_cert using reduction4715.terms
def map_17_159 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4816 : InImage map_17_159 image4816 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4816 : Bundle := named_bundle% "RealMapCertificates/relations/basis4816.json"
theorem reductionProof4816 : EqualModuloRelations reduction4816.relations reduction4816.input reduction4816.output := by lin_cert using reduction4816.terms
theorem substitutionProof4816 : IsMapEvaluation generatorImages reduction4816.relations [8,475] reduction4816.output := by lin_cert using reduction4816.terms
def image4817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4817 : InImage map_17_159 image4817 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4817 : Bundle := named_bundle% "RealMapCertificates/relations/basis4817.json"
theorem reductionProof4817 : EqualModuloRelations reduction4817.relations reduction4817.input reduction4817.output := by lin_cert using reduction4817.terms
theorem substitutionProof4817 : IsMapEvaluation generatorImages reduction4817.relations [1,618] reduction4817.output := by lin_cert using reduction4817.terms
def image4818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4818 : InImage map_17_159 image4818 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4818 : Bundle := named_bundle% "RealMapCertificates/relations/basis4818.json"
theorem reductionProof4818 : EqualModuloRelations reduction4818.relations reduction4818.input reduction4818.output := by lin_cert using reduction4818.terms
theorem substitutionProof4818 : IsMapEvaluation generatorImages reduction4818.relations [1,18,293] reduction4818.output := by lin_cert using reduction4818.terms
def image4819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4819 : InImage map_17_159 image4819 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4819 : Bundle := named_bundle% "RealMapCertificates/relations/basis4819.json"
theorem reductionProof4819 : EqualModuloRelations reduction4819.relations reduction4819.input reduction4819.output := by lin_cert using reduction4819.terms
theorem substitutionProof4819 : IsMapEvaluation generatorImages reduction4819.relations [0,629] reduction4819.output := by lin_cert using reduction4819.terms
def map_17_160 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4883 : InImage map_17_160 image4883 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4883 : Bundle := named_bundle% "RealMapCertificates/relations/basis4883.json"
theorem reductionProof4883 : EqualModuloRelations reduction4883.relations reduction4883.input reduction4883.output := by lin_cert using reduction4883.terms
theorem substitutionProof4883 : IsMapEvaluation generatorImages reduction4883.relations [48,209] reduction4883.output := by lin_cert using reduction4883.terms
def image4884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4884 : InImage map_17_160 image4884 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4884 : Bundle := named_bundle% "RealMapCertificates/relations/basis4884.json"
theorem reductionProof4884 : EqualModuloRelations reduction4884.relations reduction4884.input reduction4884.output := by lin_cert using reduction4884.terms
theorem substitutionProof4884 : IsMapEvaluation generatorImages reduction4884.relations [13,417] reduction4884.output := by lin_cert using reduction4884.terms
def image4885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4885 : InImage map_17_160 image4885 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4885 : Bundle := named_bundle% "RealMapCertificates/relations/basis4885.json"
theorem reductionProof4885 : EqualModuloRelations reduction4885.relations reduction4885.input reduction4885.output := by lin_cert using reduction4885.terms
theorem substitutionProof4885 : IsMapEvaluation generatorImages reduction4885.relations [8,483] reduction4885.output := by lin_cert using reduction4885.terms
def image4886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4886 : InImage map_17_160 image4886 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4886 : Bundle := named_bundle% "RealMapCertificates/relations/basis4886.json"
theorem reductionProof4886 : EqualModuloRelations reduction4886.relations reduction4886.input reduction4886.output := by lin_cert using reduction4886.terms
theorem substitutionProof4886 : IsMapEvaluation generatorImages reduction4886.relations [1,629] reduction4886.output := by lin_cert using reduction4886.terms
def image4887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4887 : InImage map_17_160 image4887 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4887 : Bundle := named_bundle% "RealMapCertificates/relations/basis4887.json"
theorem reductionProof4887 : EqualModuloRelations reduction4887.relations reduction4887.input reduction4887.output := by lin_cert using reduction4887.terms
theorem substitutionProof4887 : IsMapEvaluation generatorImages reduction4887.relations [0,17,333] reduction4887.output := by lin_cert using reduction4887.terms
def map_17_161 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4981 : InImage map_17_161 image4981 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4981 : Bundle := named_bundle% "RealMapCertificates/relations/basis4981.json"
theorem reductionProof4981 : EqualModuloRelations reduction4981.relations reduction4981.input reduction4981.output := by lin_cert using reduction4981.terms
theorem substitutionProof4981 : IsMapEvaluation generatorImages reduction4981.relations [2,618] reduction4981.output := by lin_cert using reduction4981.terms
def image4982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4982 : InImage map_17_161 image4982 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4982 : Bundle := named_bundle% "RealMapCertificates/relations/basis4982.json"
theorem reductionProof4982 : EqualModuloRelations reduction4982.relations reduction4982.input reduction4982.output := by lin_cert using reduction4982.terms
theorem substitutionProof4982 : IsMapEvaluation generatorImages reduction4982.relations [0,648] reduction4982.output := by lin_cert using reduction4982.terms
def map_17_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5092 : InImage map_17_162 image5092 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5092 : Bundle := named_bundle% "RealMapCertificates/relations/basis5092.json"
theorem reductionProof5092 : EqualModuloRelations reduction5092.relations reduction5092.input reduction5092.output := by lin_cert using reduction5092.terms
theorem substitutionProof5092 : IsMapEvaluation generatorImages reduction5092.relations [9,474] reduction5092.output := by lin_cert using reduction5092.terms
def image5093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5093 : InImage map_17_162 image5093 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5093 : Bundle := named_bundle% "RealMapCertificates/relations/basis5093.json"
theorem reductionProof5093 : EqualModuloRelations reduction5093.relations reduction5093.input reduction5093.output := by lin_cert using reduction5093.terms
theorem substitutionProof5093 : IsMapEvaluation generatorImages reduction5093.relations [8,502] reduction5093.output := by lin_cert using reduction5093.terms
def image5094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5094 : InImage map_17_162 image5094 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5094 : Bundle := named_bundle% "RealMapCertificates/relations/basis5094.json"
theorem reductionProof5094 : EqualModuloRelations reduction5094.relations reduction5094.input reduction5094.output := by lin_cert using reduction5094.terms
theorem substitutionProof5094 : IsMapEvaluation generatorImages reduction5094.relations [0,0,650] reduction5094.output := by lin_cert using reduction5094.terms
def map_17_163 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5166 : InImage map_17_163 image5166 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5166 : Bundle := named_bundle% "RealMapCertificates/relations/basis5166.json"
theorem reductionProof5166 : EqualModuloRelations reduction5166.relations reduction5166.input reduction5166.output := by lin_cert using reduction5166.terms
theorem substitutionProof5166 : IsMapEvaluation generatorImages reduction5166.relations [8,8,314] reduction5166.output := by lin_cert using reduction5166.terms
def image5167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5167 : InImage map_17_163 image5167 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5167 : Bundle := named_bundle% "RealMapCertificates/relations/basis5167.json"
theorem reductionProof5167 : EqualModuloRelations reduction5167.relations reduction5167.input reduction5167.output := by lin_cert using reduction5167.terms
theorem substitutionProof5167 : IsMapEvaluation generatorImages reduction5167.relations [3,604] reduction5167.output := by lin_cert using reduction5167.terms
def image5168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5168 : InImage map_17_163 image5168 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5168 : Bundle := named_bundle% "RealMapCertificates/relations/basis5168.json"
theorem reductionProof5168 : EqualModuloRelations reduction5168.relations reduction5168.input reduction5168.output := by lin_cert using reduction5168.terms
theorem substitutionProof5168 : IsMapEvaluation generatorImages reduction5168.relations [0,16,367] reduction5168.output := by lin_cert using reduction5168.terms
def map_17_164 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5266 : InImage map_17_164 image5266 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5266 : Bundle := named_bundle% "RealMapCertificates/relations/basis5266.json"
theorem reductionProof5266 : EqualModuloRelations reduction5266.relations reduction5266.input reduction5266.output := by lin_cert using reduction5266.terms
theorem substitutionProof5266 : IsMapEvaluation generatorImages reduction5266.relations [693] reduction5266.output := by lin_cert using reduction5266.terms
def image5267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5267 : InImage map_17_164 image5267 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5267 : Bundle := named_bundle% "RealMapCertificates/relations/basis5267.json"
theorem reductionProof5267 : EqualModuloRelations reduction5267.relations reduction5267.input reduction5267.output := by lin_cert using reduction5267.terms
theorem substitutionProof5267 : IsMapEvaluation generatorImages reduction5267.relations [692] reduction5267.output := by lin_cert using reduction5267.terms
def image5268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5268 : InImage map_17_164 image5268 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5268 : Bundle := named_bundle% "RealMapCertificates/relations/basis5268.json"
theorem reductionProof5268 : EqualModuloRelations reduction5268.relations reduction5268.input reduction5268.output := by lin_cert using reduction5268.terms
theorem substitutionProof5268 : IsMapEvaluation generatorImages reduction5268.relations [691] reduction5268.output := by lin_cert using reduction5268.terms
def image5269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5269 : InImage map_17_164 image5269 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5269 : Bundle := named_bundle% "RealMapCertificates/relations/basis5269.json"
theorem reductionProof5269 : EqualModuloRelations reduction5269.relations reduction5269.input reduction5269.output := by lin_cert using reduction5269.terms
theorem substitutionProof5269 : IsMapEvaluation generatorImages reduction5269.relations [0,0,669] reduction5269.output := by lin_cert using reduction5269.terms
def image5270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5270 : InImage map_17_164 image5270 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5270 : Bundle := named_bundle% "RealMapCertificates/relations/basis5270.json"
theorem reductionProof5270 : EqualModuloRelations reduction5270.relations reduction5270.input reduction5270.output := by lin_cert using reduction5270.terms
theorem substitutionProof5270 : IsMapEvaluation generatorImages reduction5270.relations [0,0,17,367] reduction5270.output := by lin_cert using reduction5270.terms
def map_17_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5392 : InImage map_17_165 image5392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5392 : Bundle := named_bundle% "RealMapCertificates/relations/basis5392.json"
theorem reductionProof5392 : EqualModuloRelations reduction5392.relations reduction5392.input reduction5392.output := by lin_cert using reduction5392.terms
theorem substitutionProof5392 : IsMapEvaluation generatorImages reduction5392.relations [13,474] reduction5392.output := by lin_cert using reduction5392.terms
def image5393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5393 : InImage map_17_165 image5393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5393 : Bundle := named_bundle% "RealMapCertificates/relations/basis5393.json"
theorem reductionProof5393 : EqualModuloRelations reduction5393.relations reduction5393.input reduction5393.output := by lin_cert using reduction5393.terms
theorem substitutionProof5393 : IsMapEvaluation generatorImages reduction5393.relations [8,8,333] reduction5393.output := by lin_cert using reduction5393.terms
def image5394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5394 : InImage map_17_165 image5394 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5394 : Bundle := named_bundle% "RealMapCertificates/relations/basis5394.json"
theorem reductionProof5394 : EqualModuloRelations reduction5394.relations reduction5394.input reduction5394.output := by lin_cert using reduction5394.terms
theorem substitutionProof5394 : IsMapEvaluation generatorImages reduction5394.relations [3,618] reduction5394.output := by lin_cert using reduction5394.terms
def image5395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5395 : InImage map_17_165 image5395 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5395 : Bundle := named_bundle% "RealMapCertificates/relations/basis5395.json"
theorem reductionProof5395 : EqualModuloRelations reduction5395.relations reduction5395.input reduction5395.output := by lin_cert using reduction5395.terms
theorem substitutionProof5395 : IsMapEvaluation generatorImages reduction5395.relations [0,0,0,671] reduction5395.output := by lin_cert using reduction5395.terms
def map_17_166 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5485 : InImage map_17_166 image5485 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5485 : Bundle := named_bundle% "RealMapCertificates/relations/basis5485.json"
theorem reductionProof5485 : EqualModuloRelations reduction5485.relations reduction5485.input reduction5485.output := by lin_cert using reduction5485.terms
theorem substitutionProof5485 : IsMapEvaluation generatorImages reduction5485.relations [24,335] reduction5485.output := by lin_cert using reduction5485.terms
def image5486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5486 : InImage map_17_166 image5486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5486 : Bundle := named_bundle% "RealMapCertificates/relations/basis5486.json"
theorem reductionProof5486 : EqualModuloRelations reduction5486.relations reduction5486.input reduction5486.output := by lin_cert using reduction5486.terms
theorem substitutionProof5486 : IsMapEvaluation generatorImages reduction5486.relations [8,8,338] reduction5486.output := by lin_cert using reduction5486.terms
def image5487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5487 : InImage map_17_166 image5487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5487 : Bundle := named_bundle% "RealMapCertificates/relations/basis5487.json"
theorem reductionProof5487 : EqualModuloRelations reduction5487.relations reduction5487.input reduction5487.output := by lin_cert using reduction5487.terms
theorem substitutionProof5487 : IsMapEvaluation generatorImages reduction5487.relations [3,629] reduction5487.output := by lin_cert using reduction5487.terms
def image5488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5488 : InImage map_17_166 image5488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5488 : Bundle := named_bundle% "RealMapCertificates/relations/basis5488.json"
theorem reductionProof5488 : EqualModuloRelations reduction5488.relations reduction5488.input reduction5488.output := by lin_cert using reduction5488.terms
theorem substitutionProof5488 : IsMapEvaluation generatorImages reduction5488.relations [1,1,669] reduction5488.output := by lin_cert using reduction5488.terms
def image5489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5489 : InImage map_17_166 image5489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5489 : Bundle := named_bundle% "RealMapCertificates/relations/basis5489.json"
theorem reductionProof5489 : EqualModuloRelations reduction5489.relations reduction5489.input reduction5489.output := by lin_cert using reduction5489.terms
theorem substitutionProof5489 : IsMapEvaluation generatorImages reduction5489.relations [0,707] reduction5489.output := by lin_cert using reduction5489.terms
def image5490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5490 : InImage map_17_166 image5490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5490 : Bundle := named_bundle% "RealMapCertificates/relations/basis5490.json"
theorem reductionProof5490 : EqualModuloRelations reduction5490.relations reduction5490.input reduction5490.output := by lin_cert using reduction5490.terms
theorem substitutionProof5490 : IsMapEvaluation generatorImages reduction5490.relations [0,8,534] reduction5490.output := by lin_cert using reduction5490.terms
def map_17_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5594 : InImage map_17_167 image5594 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5594 : Bundle := named_bundle% "RealMapCertificates/relations/basis5594.json"
theorem reductionProof5594 : EqualModuloRelations reduction5594.relations reduction5594.input reduction5594.output := by lin_cert using reduction5594.terms
theorem substitutionProof5594 : IsMapEvaluation generatorImages reduction5594.relations [0,3,630] reduction5594.output := by lin_cert using reduction5594.terms
def map_17_168 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5715 : InImage map_17_168 image5715 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5715 : Bundle := named_bundle% "RealMapCertificates/relations/basis5715.json"
theorem reductionProof5715 : EqualModuloRelations reduction5715.relations reduction5715.input reduction5715.output := by lin_cert using reduction5715.terms
theorem substitutionProof5715 : IsMapEvaluation generatorImages reduction5715.relations [3,648] reduction5715.output := by lin_cert using reduction5715.terms
def image5716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5716 : InImage map_17_168 image5716 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5716 : Bundle := named_bundle% "RealMapCertificates/relations/basis5716.json"
theorem reductionProof5716 : EqualModuloRelations reduction5716.relations reduction5716.input reduction5716.output := by lin_cert using reduction5716.terms
theorem substitutionProof5716 : IsMapEvaluation generatorImages reduction5716.relations [0,0,67,190] reduction5716.output := by lin_cert using reduction5716.terms
def map_17_169 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5812 : InImage map_17_169 image5812 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5812 : Bundle := named_bundle% "RealMapCertificates/relations/basis5812.json"
theorem reductionProof5812 : EqualModuloRelations reduction5812.relations reduction5812.input reduction5812.output := by lin_cert using reduction5812.terms
theorem substitutionProof5812 : IsMapEvaluation generatorImages reduction5812.relations [75,188] reduction5812.output := by lin_cert using reduction5812.terms
def image5813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5813 : InImage map_17_169 image5813 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5813 : Bundle := named_bundle% "RealMapCertificates/relations/basis5813.json"
theorem reductionProof5813 : EqualModuloRelations reduction5813.relations reduction5813.input reduction5813.output := by lin_cert using reduction5813.terms
theorem substitutionProof5813 : IsMapEvaluation generatorImages reduction5813.relations [1,1,708] reduction5813.output := by lin_cert using reduction5813.terms
def image5814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5814 : InImage map_17_169 image5814 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5814 : Bundle := named_bundle% "RealMapCertificates/relations/basis5814.json"
theorem reductionProof5814 : EqualModuloRelations reduction5814.relations reduction5814.input reduction5814.output := by lin_cert using reduction5814.terms
theorem substitutionProof5814 : IsMapEvaluation generatorImages reduction5814.relations [0,8,8,367] reduction5814.output := by lin_cert using reduction5814.terms
def image5815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5815 : InImage map_17_169 image5815 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5815 : Bundle := named_bundle% "RealMapCertificates/relations/basis5815.json"
theorem reductionProof5815 : EqualModuloRelations reduction5815.relations reduction5815.input reduction5815.output := by lin_cert using reduction5815.terms
theorem substitutionProof5815 : IsMapEvaluation generatorImages reduction5815.relations [0,3,650] reduction5815.output := by lin_cert using reduction5815.terms
def map_17_170 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5917 : InImage map_17_170 image5917 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5917 : Bundle := named_bundle% "RealMapCertificates/relations/basis5917.json"
theorem reductionProof5917 : EqualModuloRelations reduction5917.relations reduction5917.input reduction5917.output := by lin_cert using reduction5917.terms
theorem substitutionProof5917 : IsMapEvaluation generatorImages reduction5917.relations [762] reduction5917.output := by lin_cert using reduction5917.terms
def image5918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5918 : InImage map_17_170 image5918 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5918 : Bundle := named_bundle% "RealMapCertificates/relations/basis5918.json"
theorem reductionProof5918 : EqualModuloRelations reduction5918.relations reduction5918.input reduction5918.output := by lin_cert using reduction5918.terms
theorem substitutionProof5918 : IsMapEvaluation generatorImages reduction5918.relations [0,0,741] reduction5918.output := by lin_cert using reduction5918.terms
def map_17_171 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6055 : InImage map_17_171 image6055 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6055 : Bundle := named_bundle% "RealMapCertificates/relations/basis6055.json"
theorem reductionProof6055 : EqualModuloRelations reduction6055.relations reduction6055.input reduction6055.output := by lin_cert using reduction6055.terms
theorem substitutionProof6055 : IsMapEvaluation generatorImages reduction6055.relations [43,287] reduction6055.output := by lin_cert using reduction6055.terms
def image6056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6056 : InImage map_17_171 image6056 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6056 : Bundle := named_bundle% "RealMapCertificates/relations/basis6056.json"
theorem reductionProof6056 : EqualModuloRelations reduction6056.relations reduction6056.input reduction6056.output := by lin_cert using reduction6056.terms
theorem substitutionProof6056 : IsMapEvaluation generatorImages reduction6056.relations [13,532] reduction6056.output := by lin_cert using reduction6056.terms
def image6057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6057 : InImage map_17_171 image6057 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6057 : Bundle := named_bundle% "RealMapCertificates/relations/basis6057.json"
theorem reductionProof6057 : EqualModuloRelations reduction6057.relations reduction6057.input reduction6057.output := by lin_cert using reduction6057.terms
theorem substitutionProof6057 : IsMapEvaluation generatorImages reduction6057.relations [8,8,414] reduction6057.output := by lin_cert using reduction6057.terms
def image6058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6058 : InImage map_17_171 image6058 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6058 : Bundle := named_bundle% "RealMapCertificates/relations/basis6058.json"
theorem reductionProof6058 : EqualModuloRelations reduction6058.relations reduction6058.input reduction6058.output := by lin_cert using reduction6058.terms
theorem substitutionProof6058 : IsMapEvaluation generatorImages reduction6058.relations [0,763] reduction6058.output := by lin_cert using reduction6058.terms
def image6059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6059 : InImage map_17_171 image6059 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6059 : Bundle := named_bundle% "RealMapCertificates/relations/basis6059.json"
theorem reductionProof6059 : EqualModuloRelations reduction6059.relations reduction6059.input reduction6059.output := by lin_cert using reduction6059.terms
theorem substitutionProof6059 : IsMapEvaluation generatorImages reduction6059.relations [0,3,669] reduction6059.output := by lin_cert using reduction6059.terms
def image6060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6060 : InImage map_17_171 image6060 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6060 : Bundle := named_bundle% "RealMapCertificates/relations/basis6060.json"
theorem reductionProof6060 : EqualModuloRelations reduction6060.relations reduction6060.input reduction6060.output := by lin_cert using reduction6060.terms
theorem substitutionProof6060 : IsMapEvaluation generatorImages reduction6060.relations [0,0,0,0,0,0,0,0,0,676] reduction6060.output := by lin_cert using reduction6060.terms
def map_17_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6151 : InImage map_17_172 image6151 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6151 : Bundle := named_bundle% "RealMapCertificates/relations/basis6151.json"
theorem reductionProof6151 : EqualModuloRelations reduction6151.relations reduction6151.input reduction6151.output := by lin_cert using reduction6151.terms
theorem substitutionProof6151 : IsMapEvaluation generatorImages reduction6151.relations [0,0,764] reduction6151.output := by lin_cert using reduction6151.terms
def image6152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6152 : InImage map_17_172 image6152 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6152 : Bundle := named_bundle% "RealMapCertificates/relations/basis6152.json"
theorem reductionProof6152 : EqualModuloRelations reduction6152.relations reduction6152.input reduction6152.output := by lin_cert using reduction6152.terms
theorem substitutionProof6152 : IsMapEvaluation generatorImages reduction6152.relations [0,0,0,0,0,732] reduction6152.output := by lin_cert using reduction6152.terms
def map_17_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6255 : InImage map_17_173 image6255 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6255 : Bundle := named_bundle% "RealMapCertificates/relations/basis6255.json"
theorem reductionProof6255 : EqualModuloRelations reduction6255.relations reduction6255.input reduction6255.output := by lin_cert using reduction6255.terms
theorem substitutionProof6255 : IsMapEvaluation generatorImages reduction6255.relations [3,707] reduction6255.output := by lin_cert using reduction6255.terms
def image6256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6256 : InImage map_17_173 image6256 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6256 : Bundle := named_bundle% "RealMapCertificates/relations/basis6256.json"
theorem reductionProof6256 : EqualModuloRelations reduction6256.relations reduction6256.input reduction6256.output := by lin_cert using reduction6256.terms
theorem substitutionProof6256 : IsMapEvaluation generatorImages reduction6256.relations [1,781] reduction6256.output := by lin_cert using reduction6256.terms
def map_17_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6393 : InImage map_17_174 image6393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6393 : Bundle := named_bundle% "RealMapCertificates/relations/basis6393.json"
theorem reductionProof6393 : EqualModuloRelations reduction6393.relations reduction6393.input reduction6393.output := by lin_cert using reduction6393.terms
theorem substitutionProof6393 : IsMapEvaluation generatorImages reduction6393.relations [8,8,443] reduction6393.output := by lin_cert using reduction6393.terms
def image6394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6394 : InImage map_17_174 image6394 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6394 : Bundle := named_bundle% "RealMapCertificates/relations/basis6394.json"
theorem reductionProof6394 : EqualModuloRelations reduction6394.relations reduction6394.input reduction6394.output := by lin_cert using reduction6394.terms
theorem substitutionProof6394 : IsMapEvaluation generatorImages reduction6394.relations [2,763] reduction6394.output := by lin_cert using reduction6394.terms
def image6395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6395 : InImage map_17_174 image6395 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6395 : Bundle := named_bundle% "RealMapCertificates/relations/basis6395.json"
theorem reductionProof6395 : EqualModuloRelations reduction6395.relations reduction6395.input reduction6395.output := by lin_cert using reduction6395.terms
theorem substitutionProof6395 : IsMapEvaluation generatorImages reduction6395.relations [1,1,764] reduction6395.output := by lin_cert using reduction6395.terms
def image6396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6396 : InImage map_17_174 image6396 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6396 : Bundle := named_bundle% "RealMapCertificates/relations/basis6396.json"
theorem reductionProof6396 : EqualModuloRelations reduction6396.relations reduction6396.input reduction6396.output := by lin_cert using reduction6396.terms
theorem substitutionProof6396 : IsMapEvaluation generatorImages reduction6396.relations [0,0,0,0,0,0,743] reduction6396.output := by lin_cert using reduction6396.terms
def map_17_175 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6492 : InImage map_17_175 image6492 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6492 : Bundle := named_bundle% "RealMapCertificates/relations/basis6492.json"
theorem reductionProof6492 : EqualModuloRelations reduction6492.relations reduction6492.input reduction6492.output := by lin_cert using reduction6492.terms
theorem substitutionProof6492 : IsMapEvaluation generatorImages reduction6492.relations [76,212] reduction6492.output := by lin_cert using reduction6492.terms
def image6493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6493 : InImage map_17_175 image6493 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6493 : Bundle := named_bundle% "RealMapCertificates/relations/basis6493.json"
theorem reductionProof6493 : EqualModuloRelations reduction6493.relations reduction6493.input reduction6493.output := by lin_cert using reduction6493.terms
theorem substitutionProof6493 : IsMapEvaluation generatorImages reduction6493.relations [18,494] reduction6493.output := by lin_cert using reduction6493.terms
def image6494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6494 : InImage map_17_175 image6494 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6494 : Bundle := named_bundle% "RealMapCertificates/relations/basis6494.json"
theorem reductionProof6494 : EqualModuloRelations reduction6494.relations reduction6494.input reduction6494.output := by lin_cert using reduction6494.terms
theorem substitutionProof6494 : IsMapEvaluation generatorImages reduction6494.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,324] reduction6494.output := by lin_cert using reduction6494.terms
end RealMapCertificates
