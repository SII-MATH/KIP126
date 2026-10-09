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
  | 19 => [[4,8]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 41 => [[3,4,4,4]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 76 => []
  | 92 => []
  | 107 => []
  | 122 => []
  | 174 => []
  | 209 => []
  | 250 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 373 => []
  | 475 => []
  | 479 => []
  | 681 => []
  | 682 => []
  | 763 => []
  | 764 => []
  | 787 => []
  | 825 => []
  | 838 => []
  | 839 => []
  | 841 => []
  | 843 => []
  | 866 => []
  | 881 => []
  | 891 => []
  | 906 => []
  | 907 => []
  | 908 => []
  | 909 => []
  | 923 => []
  | 932 => []
  | 947 => []
  | 965 => []
  | 966 => []
  | 987 => []
  | 1002 => []
  | 1003 => []
  | 1004 => []
  | 1005 => []
  | 1015 => []
  | 1016 => []
  | 1017 => []
  | 1018 => []
  | 1019 => []
  | 1020 => []
  | 1021 => []
  | 1045 => []
  | 1046 => []
  | 1054 => []
  | 1055 => []
  | 1057 => []
  | 1069 => []
  | 1070 => []
  | 1087 => []
  | 1088 => []
  | 1097 => []
  | 1111 => []
  | 1112 => []
  | 1113 => []
  | 1128 => []
  | 1129 => []
  | 1131 => []
  | 1156 => []
  | 1157 => []
  | 1176 => []
  | 1177 => []
  | 1184 => []
  | 1185 => []
  | 1186 => []
  | 1187 => []
  | 1188 => []
  | 1208 => []
  | 1209 => []
  | 1223 => []
  | _ => []
def map_17_176 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6600 : InImage map_17_176 image6600 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6600 : Bundle := named_bundle% "RealMapCertificates/relations/basis6600.json"
theorem reductionProof6600 : EqualModuloRelations reduction6600.relations reduction6600.input reduction6600.output := by lin_cert using reduction6600.terms
theorem substitutionProof6600 : IsMapEvaluation generatorImages reduction6600.relations [839] reduction6600.output := by lin_cert using reduction6600.terms
def image6601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6601 : InImage map_17_176 image6601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6601 : Bundle := named_bundle% "RealMapCertificates/relations/basis6601.json"
theorem reductionProof6601 : EqualModuloRelations reduction6601.relations reduction6601.input reduction6601.output := by lin_cert using reduction6601.terms
theorem substitutionProof6601 : IsMapEvaluation generatorImages reduction6601.relations [838] reduction6601.output := by lin_cert using reduction6601.terms
def image6602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6602 : InImage map_17_176 image6602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6602 : Bundle := named_bundle% "RealMapCertificates/relations/basis6602.json"
theorem reductionProof6602 : EqualModuloRelations reduction6602.relations reduction6602.input reduction6602.output := by lin_cert using reduction6602.terms
theorem substitutionProof6602 : IsMapEvaluation generatorImages reduction6602.relations [0,107,174] reduction6602.output := by lin_cert using reduction6602.terms
def image6603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6603 : InImage map_17_176 image6603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6603 : Bundle := named_bundle% "RealMapCertificates/relations/basis6603.json"
theorem reductionProof6603 : EqualModuloRelations reduction6603.relations reduction6603.input reduction6603.output := by lin_cert using reduction6603.terms
theorem substitutionProof6603 : IsMapEvaluation generatorImages reduction6603.relations [0,0,0,18,475] reduction6603.output := by lin_cert using reduction6603.terms
def map_17_177 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6743 : InImage map_17_177 image6743 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6743 : Bundle := named_bundle% "RealMapCertificates/relations/basis6743.json"
theorem reductionProof6743 : EqualModuloRelations reduction6743.relations reduction6743.input reduction6743.output := by lin_cert using reduction6743.terms
theorem substitutionProof6743 : IsMapEvaluation generatorImages reduction6743.relations [8,8,479] reduction6743.output := by lin_cert using reduction6743.terms
def image6744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6744 : InImage map_17_177 image6744 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6744 : Bundle := named_bundle% "RealMapCertificates/relations/basis6744.json"
theorem reductionProof6744 : EqualModuloRelations reduction6744.relations reduction6744.input reduction6744.output := by lin_cert using reduction6744.terms
theorem substitutionProof6744 : IsMapEvaluation generatorImages reduction6744.relations [1,41,324] reduction6744.output := by lin_cert using reduction6744.terms
def image6745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6745 : InImage map_17_177 image6745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6745 : Bundle := named_bundle% "RealMapCertificates/relations/basis6745.json"
theorem reductionProof6745 : EqualModuloRelations reduction6745.relations reduction6745.input reduction6745.output := by lin_cert using reduction6745.terms
theorem substitutionProof6745 : IsMapEvaluation generatorImages reduction6745.relations [0,0,825] reduction6745.output := by lin_cert using reduction6745.terms
def map_17_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6837 : InImage map_17_178 image6837 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6837 : Bundle := named_bundle% "RealMapCertificates/relations/basis6837.json"
theorem reductionProof6837 : EqualModuloRelations reduction6837.relations reduction6837.input reduction6837.output := by lin_cert using reduction6837.terms
theorem substitutionProof6837 : IsMapEvaluation generatorImages reduction6837.relations [866] reduction6837.output := by lin_cert using reduction6837.terms
def image6838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6838 : InImage map_17_178 image6838 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6838 : Bundle := named_bundle% "RealMapCertificates/relations/basis6838.json"
theorem reductionProof6838 : EqualModuloRelations reduction6838.relations reduction6838.input reduction6838.output := by lin_cert using reduction6838.terms
theorem substitutionProof6838 : IsMapEvaluation generatorImages reduction6838.relations [9,13,373] reduction6838.output := by lin_cert using reduction6838.terms
def image6839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6839 : InImage map_17_178 image6839 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6839 : Bundle := named_bundle% "RealMapCertificates/relations/basis6839.json"
theorem reductionProof6839 : EqualModuloRelations reduction6839.relations reduction6839.input reduction6839.output := by lin_cert using reduction6839.terms
theorem substitutionProof6839 : IsMapEvaluation generatorImages reduction6839.relations [3,763] reduction6839.output := by lin_cert using reduction6839.terms
def image6840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6840 : InImage map_17_178 image6840 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6840 : Bundle := named_bundle% "RealMapCertificates/relations/basis6840.json"
theorem reductionProof6840 : EqualModuloRelations reduction6840.relations reduction6840.input reduction6840.output := by lin_cert using reduction6840.terms
theorem substitutionProof6840 : IsMapEvaluation generatorImages reduction6840.relations [0,0,841] reduction6840.output := by lin_cert using reduction6840.terms
def map_17_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6971 : InImage map_17_179 image6971 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6971 : Bundle := named_bundle% "RealMapCertificates/relations/basis6971.json"
theorem reductionProof6971 : EqualModuloRelations reduction6971.relations reduction6971.input reduction6971.output := by lin_cert using reduction6971.terms
theorem substitutionProof6971 : IsMapEvaluation generatorImages reduction6971.relations [881] reduction6971.output := by lin_cert using reduction6971.terms
def image6972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6972 : InImage map_17_179 image6972 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6972 : Bundle := named_bundle% "RealMapCertificates/relations/basis6972.json"
theorem reductionProof6972 : EqualModuloRelations reduction6972.relations reduction6972.input reduction6972.output := by lin_cert using reduction6972.terms
theorem substitutionProof6972 : IsMapEvaluation generatorImages reduction6972.relations [1,1,825] reduction6972.output := by lin_cert using reduction6972.terms
def image6973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6973 : InImage map_17_179 image6973 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6973 : Bundle := named_bundle% "RealMapCertificates/relations/basis6973.json"
theorem reductionProof6973 : EqualModuloRelations reduction6973.relations reduction6973.input reduction6973.output := by lin_cert using reduction6973.terms
theorem substitutionProof6973 : IsMapEvaluation generatorImages reduction6973.relations [0,3,764] reduction6973.output := by lin_cert using reduction6973.terms
def map_17_180 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7117 : InImage map_17_180 image7117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7117 : Bundle := named_bundle% "RealMapCertificates/relations/basis7117.json"
theorem reductionProof7117 : EqualModuloRelations reduction7117.relations reduction7117.input reduction7117.output := by lin_cert using reduction7117.terms
theorem substitutionProof7117 : IsMapEvaluation generatorImages reduction7117.relations [1,3,764] reduction7117.output := by lin_cert using reduction7117.terms
def map_17_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7213 : InImage map_17_181 image7213 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7213 : Bundle := named_bundle% "RealMapCertificates/relations/basis7213.json"
theorem reductionProof7213 : EqualModuloRelations reduction7213.relations reduction7213.input reduction7213.output := by lin_cert using reduction7213.terms
theorem substitutionProof7213 : IsMapEvaluation generatorImages reduction7213.relations [891] reduction7213.output := by lin_cert using reduction7213.terms
def image7214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7214 : InImage map_17_181 image7214 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7214 : Bundle := named_bundle% "RealMapCertificates/relations/basis7214.json"
theorem reductionProof7214 : EqualModuloRelations reduction7214.relations reduction7214.input reduction7214.output := by lin_cert using reduction7214.terms
theorem substitutionProof7214 : IsMapEvaluation generatorImages reduction7214.relations [13,13,373] reduction7214.output := by lin_cert using reduction7214.terms
def map_17_182 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7323 : InImage map_17_182 image7323 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7323 : Bundle := named_bundle% "RealMapCertificates/relations/basis7323.json"
theorem reductionProof7323 : EqualModuloRelations reduction7323.relations reduction7323.input reduction7323.output := by lin_cert using reduction7323.terms
theorem substitutionProof7323 : IsMapEvaluation generatorImages reduction7323.relations [908] reduction7323.output := by lin_cert using reduction7323.terms
def image7324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7324 : InImage map_17_182 image7324 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7324 : Bundle := named_bundle% "RealMapCertificates/relations/basis7324.json"
theorem reductionProof7324 : EqualModuloRelations reduction7324.relations reduction7324.input reduction7324.output := by lin_cert using reduction7324.terms
theorem substitutionProof7324 : IsMapEvaluation generatorImages reduction7324.relations [907] reduction7324.output := by lin_cert using reduction7324.terms
def image7325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7325 : InImage map_17_182 image7325 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7325 : Bundle := named_bundle% "RealMapCertificates/relations/basis7325.json"
theorem reductionProof7325 : EqualModuloRelations reduction7325.relations reduction7325.input reduction7325.output := by lin_cert using reduction7325.terms
theorem substitutionProof7325 : IsMapEvaluation generatorImages reduction7325.relations [906] reduction7325.output := by lin_cert using reduction7325.terms
def image7326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7326 : InImage map_17_182 image7326 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7326 : Bundle := named_bundle% "RealMapCertificates/relations/basis7326.json"
theorem reductionProof7326 : EqualModuloRelations reduction7326.relations reduction7326.input reduction7326.output := by lin_cert using reduction7326.terms
theorem substitutionProof7326 : IsMapEvaluation generatorImages reduction7326.relations [49,324] reduction7326.output := by lin_cert using reduction7326.terms
def map_17_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7475 : InImage map_17_183 image7475 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7475 : Bundle := named_bundle% "RealMapCertificates/relations/basis7475.json"
theorem reductionProof7475 : EqualModuloRelations reduction7475.relations reduction7475.input reduction7475.output := by lin_cert using reduction7475.terms
theorem substitutionProof7475 : IsMapEvaluation generatorImages reduction7475.relations [923] reduction7475.output := by lin_cert using reduction7475.terms
def image7476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7476 : InImage map_17_183 image7476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7476 : Bundle := named_bundle% "RealMapCertificates/relations/basis7476.json"
theorem reductionProof7476 : EqualModuloRelations reduction7476.relations reduction7476.input reduction7476.output := by lin_cert using reduction7476.terms
theorem substitutionProof7476 : IsMapEvaluation generatorImages reduction7476.relations [0,50,324] reduction7476.output := by lin_cert using reduction7476.terms
def map_17_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7579 : InImage map_17_184 image7579 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7579 : Bundle := named_bundle% "RealMapCertificates/relations/basis7579.json"
theorem reductionProof7579 : EqualModuloRelations reduction7579.relations reduction7579.input reduction7579.output := by lin_cert using reduction7579.terms
theorem substitutionProof7579 : IsMapEvaluation generatorImages reduction7579.relations [932] reduction7579.output := by lin_cert using reduction7579.terms
def image7580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7580 : InImage map_17_184 image7580 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7580 : Bundle := named_bundle% "RealMapCertificates/relations/basis7580.json"
theorem reductionProof7580 : EqualModuloRelations reduction7580.relations reduction7580.input reduction7580.output := by lin_cert using reduction7580.terms
theorem substitutionProof7580 : IsMapEvaluation generatorImages reduction7580.relations [1,909] reduction7580.output := by lin_cert using reduction7580.terms
def image7581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7581 : InImage map_17_184 image7581 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7581 : Bundle := named_bundle% "RealMapCertificates/relations/basis7581.json"
theorem reductionProof7581 : EqualModuloRelations reduction7581.relations reduction7581.input reduction7581.output := by lin_cert using reduction7581.terms
theorem substitutionProof7581 : IsMapEvaluation generatorImages reduction7581.relations [0,3,825] reduction7581.output := by lin_cert using reduction7581.terms
def map_17_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7698 : InImage map_17_185 image7698 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7698 : Bundle := named_bundle% "RealMapCertificates/relations/basis7698.json"
theorem reductionProof7698 : EqualModuloRelations reduction7698.relations reduction7698.input reduction7698.output := by lin_cert using reduction7698.terms
theorem substitutionProof7698 : IsMapEvaluation generatorImages reduction7698.relations [947] reduction7698.output := by lin_cert using reduction7698.terms
def image7699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7699 : InImage map_17_185 image7699 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7699 : Bundle := named_bundle% "RealMapCertificates/relations/basis7699.json"
theorem reductionProof7699 : EqualModuloRelations reduction7699.relations reduction7699.input reduction7699.output := by lin_cert using reduction7699.terms
theorem substitutionProof7699 : IsMapEvaluation generatorImages reduction7699.relations [55,324] reduction7699.output := by lin_cert using reduction7699.terms
def image7700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7700 : InImage map_17_185 image7700 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7700 : Bundle := named_bundle% "RealMapCertificates/relations/basis7700.json"
theorem reductionProof7700 : EqualModuloRelations reduction7700.relations reduction7700.input reduction7700.output := by lin_cert using reduction7700.terms
theorem substitutionProof7700 : IsMapEvaluation generatorImages reduction7700.relations [0,3,841] reduction7700.output := by lin_cert using reduction7700.terms
def map_17_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7845 : InImage map_17_186 image7845 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7845 : Bundle := named_bundle% "RealMapCertificates/relations/basis7845.json"
theorem reductionProof7845 : EqualModuloRelations reduction7845.relations reduction7845.input reduction7845.output := by lin_cert using reduction7845.terms
theorem substitutionProof7845 : IsMapEvaluation generatorImages reduction7845.relations [0,56,324] reduction7845.output := by lin_cert using reduction7845.terms
def image7846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7846 : InImage map_17_186 image7846 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7846 : Bundle := named_bundle% "RealMapCertificates/relations/basis7846.json"
theorem reductionProof7846 : EqualModuloRelations reduction7846.relations reduction7846.input reduction7846.output := by lin_cert using reduction7846.terms
theorem substitutionProof7846 : IsMapEvaluation generatorImages reduction7846.relations [0,0,3,843] reduction7846.output := by lin_cert using reduction7846.terms
def map_17_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7929 : InImage map_17_187 image7929 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7929 : Bundle := named_bundle% "RealMapCertificates/relations/basis7929.json"
theorem reductionProof7929 : EqualModuloRelations reduction7929.relations reduction7929.input reduction7929.output := by lin_cert using reduction7929.terms
theorem substitutionProof7929 : IsMapEvaluation generatorImages reduction7929.relations [13,682] reduction7929.output := by lin_cert using reduction7929.terms
def image7930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7930 : InImage map_17_187 image7930 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7930 : Bundle := named_bundle% "RealMapCertificates/relations/basis7930.json"
theorem reductionProof7930 : EqualModuloRelations reduction7930.relations reduction7930.input reduction7930.output := by lin_cert using reduction7930.terms
theorem substitutionProof7930 : IsMapEvaluation generatorImages reduction7930.relations [13,681] reduction7930.output := by lin_cert using reduction7930.terms
def map_17_188 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8042 : InImage map_17_188 image8042 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8042 : Bundle := named_bundle% "RealMapCertificates/relations/basis8042.json"
theorem reductionProof8042 : EqualModuloRelations reduction8042.relations reduction8042.input reduction8042.output := by lin_cert using reduction8042.terms
theorem substitutionProof8042 : IsMapEvaluation generatorImages reduction8042.relations [92,250] reduction8042.output := by lin_cert using reduction8042.terms
def image8043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8043 : InImage map_17_188 image8043 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8043 : Bundle := named_bundle% "RealMapCertificates/relations/basis8043.json"
theorem reductionProof8043 : EqualModuloRelations reduction8043.relations reduction8043.input reduction8043.output := by lin_cert using reduction8043.terms
theorem substitutionProof8043 : IsMapEvaluation generatorImages reduction8043.relations [8,31,324] reduction8043.output := by lin_cert using reduction8043.terms
def image8044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8044 : InImage map_17_188 image8044 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8044 : Bundle := named_bundle% "RealMapCertificates/relations/basis8044.json"
theorem reductionProof8044 : EqualModuloRelations reduction8044.relations reduction8044.input reduction8044.output := by lin_cert using reduction8044.terms
theorem substitutionProof8044 : IsMapEvaluation generatorImages reduction8044.relations [0,966] reduction8044.output := by lin_cert using reduction8044.terms
def image8045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8045 : InImage map_17_188 image8045 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8045 : Bundle := named_bundle% "RealMapCertificates/relations/basis8045.json"
theorem reductionProof8045 : EqualModuloRelations reduction8045.relations reduction8045.input reduction8045.output := by lin_cert using reduction8045.terms
theorem substitutionProof8045 : IsMapEvaluation generatorImages reduction8045.relations [0,965] reduction8045.output := by lin_cert using reduction8045.terms
def map_17_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8197 : InImage map_17_189 image8197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8197 : Bundle := named_bundle% "RealMapCertificates/relations/basis8197.json"
theorem reductionProof8197 : EqualModuloRelations reduction8197.relations reduction8197.input reduction8197.output := by lin_cert using reduction8197.terms
theorem substitutionProof8197 : IsMapEvaluation generatorImages reduction8197.relations [1003] reduction8197.output := by lin_cert using reduction8197.terms
def image8198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8198 : InImage map_17_189 image8198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8198 : Bundle := named_bundle% "RealMapCertificates/relations/basis8198.json"
theorem reductionProof8198 : EqualModuloRelations reduction8198.relations reduction8198.input reduction8198.output := by lin_cert using reduction8198.terms
theorem substitutionProof8198 : IsMapEvaluation generatorImages reduction8198.relations [1002] reduction8198.output := by lin_cert using reduction8198.terms
def image8199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8199 : InImage map_17_189 image8199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8199 : Bundle := named_bundle% "RealMapCertificates/relations/basis8199.json"
theorem reductionProof8199 : EqualModuloRelations reduction8199.relations reduction8199.input reduction8199.output := by lin_cert using reduction8199.terms
theorem substitutionProof8199 : IsMapEvaluation generatorImages reduction8199.relations [0,987] reduction8199.output := by lin_cert using reduction8199.terms
def image8200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8200 : InImage map_17_189 image8200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8200 : Bundle := named_bundle% "RealMapCertificates/relations/basis8200.json"
theorem reductionProof8200 : EqualModuloRelations reduction8200.relations reduction8200.input reduction8200.output := by lin_cert using reduction8200.terms
theorem substitutionProof8200 : IsMapEvaluation generatorImages reduction8200.relations [0,16,17,324] reduction8200.output := by lin_cert using reduction8200.terms
def map_17_190 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8293 : InImage map_17_190 image8293 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8293 : Bundle := named_bundle% "RealMapCertificates/relations/basis8293.json"
theorem reductionProof8293 : EqualModuloRelations reduction8293.relations reduction8293.input reduction8293.output := by lin_cert using reduction8293.terms
theorem substitutionProof8293 : IsMapEvaluation generatorImages reduction8293.relations [1016] reduction8293.output := by lin_cert using reduction8293.terms
def image8294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8294 : InImage map_17_190 image8294 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8294 : Bundle := named_bundle% "RealMapCertificates/relations/basis8294.json"
theorem reductionProof8294 : EqualModuloRelations reduction8294.relations reduction8294.input reduction8294.output := by lin_cert using reduction8294.terms
theorem substitutionProof8294 : IsMapEvaluation generatorImages reduction8294.relations [1015] reduction8294.output := by lin_cert using reduction8294.terms
def image8295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8295 : InImage map_17_190 image8295 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8295 : Bundle := named_bundle% "RealMapCertificates/relations/basis8295.json"
theorem reductionProof8295 : EqualModuloRelations reduction8295.relations reduction8295.input reduction8295.output := by lin_cert using reduction8295.terms
theorem substitutionProof8295 : IsMapEvaluation generatorImages reduction8295.relations [1,987] reduction8295.output := by lin_cert using reduction8295.terms
def image8296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8296 : InImage map_17_190 image8296 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8296 : Bundle := named_bundle% "RealMapCertificates/relations/basis8296.json"
theorem reductionProof8296 : EqualModuloRelations reduction8296.relations reduction8296.input reduction8296.output := by lin_cert using reduction8296.terms
theorem substitutionProof8296 : IsMapEvaluation generatorImages reduction8296.relations [0,0,17,17,324] reduction8296.output := by lin_cert using reduction8296.terms
def map_17_191 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image8422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8422 : InImage map_17_191 image8422 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction8422 : Bundle := named_bundle% "RealMapCertificates/relations/basis8422.json"
theorem reductionProof8422 : EqualModuloRelations reduction8422.relations reduction8422.input reduction8422.output := by lin_cert using reduction8422.terms
theorem substitutionProof8422 : IsMapEvaluation generatorImages reduction8422.relations [1045] reduction8422.output := by lin_cert using reduction8422.terms
def image8423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8423 : InImage map_17_191 image8423 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction8423 : Bundle := named_bundle% "RealMapCertificates/relations/basis8423.json"
theorem reductionProof8423 : EqualModuloRelations reduction8423.relations reduction8423.input reduction8423.output := by lin_cert using reduction8423.terms
theorem substitutionProof8423 : IsMapEvaluation generatorImages reduction8423.relations [8,39,324] reduction8423.output := by lin_cert using reduction8423.terms
def image8424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8424 : InImage map_17_191 image8424 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction8424 : Bundle := named_bundle% "RealMapCertificates/relations/basis8424.json"
theorem reductionProof8424 : EqualModuloRelations reduction8424.relations reduction8424.input reduction8424.output := by lin_cert using reduction8424.terms
theorem substitutionProof8424 : IsMapEvaluation generatorImages reduction8424.relations [1,1004] reduction8424.output := by lin_cert using reduction8424.terms
def image8425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8425 : InImage map_17_191 image8425 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction8425 : Bundle := named_bundle% "RealMapCertificates/relations/basis8425.json"
theorem reductionProof8425 : EqualModuloRelations reduction8425.relations reduction8425.input reduction8425.output := by lin_cert using reduction8425.terms
theorem substitutionProof8425 : IsMapEvaluation generatorImages reduction8425.relations [1,122,209] reduction8425.output := by lin_cert using reduction8425.terms
def image8426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8426 : InImage map_17_191 image8426 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction8426 : Bundle := named_bundle% "RealMapCertificates/relations/basis8426.json"
theorem reductionProof8426 : EqualModuloRelations reduction8426.relations reduction8426.input reduction8426.output := by lin_cert using reduction8426.terms
theorem substitutionProof8426 : IsMapEvaluation generatorImages reduction8426.relations [0,1018] reduction8426.output := by lin_cert using reduction8426.terms
def image8427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8427 : InImage map_17_191 image8427 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction8427 : Bundle := named_bundle% "RealMapCertificates/relations/basis8427.json"
theorem reductionProof8427 : EqualModuloRelations reduction8427.relations reduction8427.input reduction8427.output := by lin_cert using reduction8427.terms
theorem substitutionProof8427 : IsMapEvaluation generatorImages reduction8427.relations [0,1017] reduction8427.output := by lin_cert using reduction8427.terms
def image8428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8428 : InImage map_17_191 image8428 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction8428 : Bundle := named_bundle% "RealMapCertificates/relations/basis8428.json"
theorem reductionProof8428 : EqualModuloRelations reduction8428.relations reduction8428.input reduction8428.output := by lin_cert using reduction8428.terms
theorem substitutionProof8428 : IsMapEvaluation generatorImages reduction8428.relations [0,0,1005] reduction8428.output := by lin_cert using reduction8428.terms
def image8429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8429 : InImage map_17_191 image8429 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction8429 : Bundle := named_bundle% "RealMapCertificates/relations/basis8429.json"
theorem reductionProof8429 : EqualModuloRelations reduction8429.relations reduction8429.input reduction8429.output := by lin_cert using reduction8429.terms
theorem substitutionProof8429 : IsMapEvaluation generatorImages reduction8429.relations [0,0,0,59,324] reduction8429.output := by lin_cert using reduction8429.terms
def map_17_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8574 : InImage map_17_192 image8574 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8574 : Bundle := named_bundle% "RealMapCertificates/relations/basis8574.json"
theorem reductionProof8574 : EqualModuloRelations reduction8574.relations reduction8574.input reduction8574.output := by lin_cert using reduction8574.terms
theorem substitutionProof8574 : IsMapEvaluation generatorImages reduction8574.relations [1,1019] reduction8574.output := by lin_cert using reduction8574.terms
def image8575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8575 : InImage map_17_192 image8575 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8575 : Bundle := named_bundle% "RealMapCertificates/relations/basis8575.json"
theorem reductionProof8575 : EqualModuloRelations reduction8575.relations reduction8575.input reduction8575.output := by lin_cert using reduction8575.terms
theorem substitutionProof8575 : IsMapEvaluation generatorImages reduction8575.relations [0,1046] reduction8575.output := by lin_cert using reduction8575.terms
def image8576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8576 : InImage map_17_192 image8576 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8576 : Bundle := named_bundle% "RealMapCertificates/relations/basis8576.json"
theorem reductionProof8576 : EqualModuloRelations reduction8576.relations reduction8576.input reduction8576.output := by lin_cert using reduction8576.terms
theorem substitutionProof8576 : IsMapEvaluation generatorImages reduction8576.relations [0,8,40,324] reduction8576.output := by lin_cert using reduction8576.terms
def image8577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8577 : InImage map_17_192 image8577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8577 : Bundle := named_bundle% "RealMapCertificates/relations/basis8577.json"
theorem reductionProof8577 : EqualModuloRelations reduction8577.relations reduction8577.input reduction8577.output := by lin_cert using reduction8577.terms
theorem substitutionProof8577 : IsMapEvaluation generatorImages reduction8577.relations [0,0,1021] reduction8577.output := by lin_cert using reduction8577.terms
def map_17_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8671 : InImage map_17_193 image8671 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8671 : Bundle := named_bundle% "RealMapCertificates/relations/basis8671.json"
theorem reductionProof8671 : EqualModuloRelations reduction8671.relations reduction8671.input reduction8671.output := by lin_cert using reduction8671.terms
theorem substitutionProof8671 : IsMapEvaluation generatorImages reduction8671.relations [9,787] reduction8671.output := by lin_cert using reduction8671.terms
def image8672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8672 : InImage map_17_193 image8672 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8672 : Bundle := named_bundle% "RealMapCertificates/relations/basis8672.json"
theorem reductionProof8672 : EqualModuloRelations reduction8672.relations reduction8672.input reduction8672.output := by lin_cert using reduction8672.terms
theorem substitutionProof8672 : IsMapEvaluation generatorImages reduction8672.relations [2,1004] reduction8672.output := by lin_cert using reduction8672.terms
def image8673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8673 : InImage map_17_193 image8673 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8673 : Bundle := named_bundle% "RealMapCertificates/relations/basis8673.json"
theorem reductionProof8673 : EqualModuloRelations reduction8673.relations reduction8673.input reduction8673.output := by lin_cert using reduction8673.terms
theorem substitutionProof8673 : IsMapEvaluation generatorImages reduction8673.relations [1,1046] reduction8673.output := by lin_cert using reduction8673.terms
def map_17_194 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8813 : InImage map_17_194 image8813 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8813 : Bundle := named_bundle% "RealMapCertificates/relations/basis8813.json"
theorem reductionProof8813 : EqualModuloRelations reduction8813.relations reduction8813.input reduction8813.output := by lin_cert using reduction8813.terms
theorem substitutionProof8813 : IsMapEvaluation generatorImages reduction8813.relations [8,8,16,324] reduction8813.output := by lin_cert using reduction8813.terms
def image8814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8814 : InImage map_17_194 image8814 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8814 : Bundle := named_bundle% "RealMapCertificates/relations/basis8814.json"
theorem reductionProof8814 : EqualModuloRelations reduction8814.relations reduction8814.input reduction8814.output := by lin_cert using reduction8814.terms
theorem substitutionProof8814 : IsMapEvaluation generatorImages reduction8814.relations [0,1069] reduction8814.output := by lin_cert using reduction8814.terms
def image8815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8815 : InImage map_17_194 image8815 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8815 : Bundle := named_bundle% "RealMapCertificates/relations/basis8815.json"
theorem reductionProof8815 : EqualModuloRelations reduction8815.relations reduction8815.input reduction8815.output := by lin_cert using reduction8815.terms
theorem substitutionProof8815 : IsMapEvaluation generatorImages reduction8815.relations [0,67,333] reduction8815.output := by lin_cert using reduction8815.terms
def map_17_195 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8973 : InImage map_17_195 image8973 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8973 : Bundle := named_bundle% "RealMapCertificates/relations/basis8973.json"
theorem reductionProof8973 : EqualModuloRelations reduction8973.relations reduction8973.input reduction8973.output := by lin_cert using reduction8973.terms
theorem substitutionProof8973 : IsMapEvaluation generatorImages reduction8973.relations [1097] reduction8973.output := by lin_cert using reduction8973.terms
def image8974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8974 : InImage map_17_195 image8974 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8974 : Bundle := named_bundle% "RealMapCertificates/relations/basis8974.json"
theorem reductionProof8974 : EqualModuloRelations reduction8974.relations reduction8974.input reduction8974.output := by lin_cert using reduction8974.terms
theorem substitutionProof8974 : IsMapEvaluation generatorImages reduction8974.relations [3,965] reduction8974.output := by lin_cert using reduction8974.terms
def image8975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8975 : InImage map_17_195 image8975 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8975 : Bundle := named_bundle% "RealMapCertificates/relations/basis8975.json"
theorem reductionProof8975 : EqualModuloRelations reduction8975.relations reduction8975.input reduction8975.output := by lin_cert using reduction8975.terms
theorem substitutionProof8975 : IsMapEvaluation generatorImages reduction8975.relations [1,1070] reduction8975.output := by lin_cert using reduction8975.terms
def image8976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8976 : InImage map_17_195 image8976 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8976 : Bundle := named_bundle% "RealMapCertificates/relations/basis8976.json"
theorem reductionProof8976 : EqualModuloRelations reduction8976.relations reduction8976.input reduction8976.output := by lin_cert using reduction8976.terms
theorem substitutionProof8976 : IsMapEvaluation generatorImages reduction8976.relations [0,8,8,17,324] reduction8976.output := by lin_cert using reduction8976.terms
def image8977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8977 : InImage map_17_195 image8977 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8977 : Bundle := named_bundle% "RealMapCertificates/relations/basis8977.json"
theorem reductionProof8977 : EqualModuloRelations reduction8977.relations reduction8977.input reduction8977.output := by lin_cert using reduction8977.terms
theorem substitutionProof8977 : IsMapEvaluation generatorImages reduction8977.relations [0,0,0,1055] reduction8977.output := by lin_cert using reduction8977.terms
def map_17_196 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9085 : InImage map_17_196 image9085 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9085 : Bundle := named_bundle% "RealMapCertificates/relations/basis9085.json"
theorem reductionProof9085 : EqualModuloRelations reduction9085.relations reduction9085.input reduction9085.output := by lin_cert using reduction9085.terms
theorem substitutionProof9085 : IsMapEvaluation generatorImages reduction9085.relations [1111] reduction9085.output := by lin_cert using reduction9085.terms
def image9086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9086 : InImage map_17_196 image9086 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9086 : Bundle := named_bundle% "RealMapCertificates/relations/basis9086.json"
theorem reductionProof9086 : EqualModuloRelations reduction9086.relations reduction9086.input reduction9086.output := by lin_cert using reduction9086.terms
theorem substitutionProof9086 : IsMapEvaluation generatorImages reduction9086.relations [13,787] reduction9086.output := by lin_cert using reduction9086.terms
def image9087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9087 : InImage map_17_196 image9087 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9087 : Bundle := named_bundle% "RealMapCertificates/relations/basis9087.json"
theorem reductionProof9087 : EqualModuloRelations reduction9087.relations reduction9087.input reduction9087.output := by lin_cert using reduction9087.terms
theorem substitutionProof9087 : IsMapEvaluation generatorImages reduction9087.relations [2,1054] reduction9087.output := by lin_cert using reduction9087.terms
def image9088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9088 : InImage map_17_196 image9088 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9088 : Bundle := named_bundle% "RealMapCertificates/relations/basis9088.json"
theorem reductionProof9088 : EqualModuloRelations reduction9088.relations reduction9088.input reduction9088.output := by lin_cert using reduction9088.terms
theorem substitutionProof9088 : IsMapEvaluation generatorImages reduction9088.relations [1,1087] reduction9088.output := by lin_cert using reduction9088.terms
def image9089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9089 : InImage map_17_196 image9089 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9089 : Bundle := named_bundle% "RealMapCertificates/relations/basis9089.json"
theorem reductionProof9089 : EqualModuloRelations reduction9089.relations reduction9089.input reduction9089.output := by lin_cert using reduction9089.terms
theorem substitutionProof9089 : IsMapEvaluation generatorImages reduction9089.relations [0,0,1088] reduction9089.output := by lin_cert using reduction9089.terms
def image9090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9090 : InImage map_17_196 image9090 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9090 : Bundle := named_bundle% "RealMapCertificates/relations/basis9090.json"
theorem reductionProof9090 : EqualModuloRelations reduction9090.relations reduction9090.input reduction9090.output := by lin_cert using reduction9090.terms
theorem substitutionProof9090 : IsMapEvaluation generatorImages reduction9090.relations [0,0,0,0,1057] reduction9090.output := by lin_cert using reduction9090.terms
def map_17_197 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9236 : InImage map_17_197 image9236 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9236 : Bundle := named_bundle% "RealMapCertificates/relations/basis9236.json"
theorem reductionProof9236 : EqualModuloRelations reduction9236.relations reduction9236.input reduction9236.output := by lin_cert using reduction9236.terms
theorem substitutionProof9236 : IsMapEvaluation generatorImages reduction9236.relations [1128] reduction9236.output := by lin_cert using reduction9236.terms
def image9237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9237 : InImage map_17_197 image9237 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9237 : Bundle := named_bundle% "RealMapCertificates/relations/basis9237.json"
theorem reductionProof9237 : EqualModuloRelations reduction9237.relations reduction9237.input reduction9237.output := by lin_cert using reduction9237.terms
theorem substitutionProof9237 : IsMapEvaluation generatorImages reduction9237.relations [76,335] reduction9237.output := by lin_cert using reduction9237.terms
def image9238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9238 : InImage map_17_197 image9238 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9238 : Bundle := named_bundle% "RealMapCertificates/relations/basis9238.json"
theorem reductionProof9238 : EqualModuloRelations reduction9238.relations reduction9238.input reduction9238.output := by lin_cert using reduction9238.terms
theorem substitutionProof9238 : IsMapEvaluation generatorImages reduction9238.relations [8,8,19,324] reduction9238.output := by lin_cert using reduction9238.terms
def image9239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9239 : InImage map_17_197 image9239 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9239 : Bundle := named_bundle% "RealMapCertificates/relations/basis9239.json"
theorem reductionProof9239 : EqualModuloRelations reduction9239.relations reduction9239.input reduction9239.output := by lin_cert using reduction9239.terms
theorem substitutionProof9239 : IsMapEvaluation generatorImages reduction9239.relations [3,1004] reduction9239.output := by lin_cert using reduction9239.terms
def image9240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9240 : InImage map_17_197 image9240 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9240 : Bundle := named_bundle% "RealMapCertificates/relations/basis9240.json"
theorem reductionProof9240 : EqualModuloRelations reduction9240.relations reduction9240.input reduction9240.output := by lin_cert using reduction9240.terms
theorem substitutionProof9240 : IsMapEvaluation generatorImages reduction9240.relations [0,1113] reduction9240.output := by lin_cert using reduction9240.terms
def image9241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9241 : InImage map_17_197 image9241 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9241 : Bundle := named_bundle% "RealMapCertificates/relations/basis9241.json"
theorem reductionProof9241 : EqualModuloRelations reduction9241.relations reduction9241.input reduction9241.output := by lin_cert using reduction9241.terms
theorem substitutionProof9241 : IsMapEvaluation generatorImages reduction9241.relations [0,0,0,0,0,0,64,324] reduction9241.output := by lin_cert using reduction9241.terms
def map_17_198 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9423 : InImage map_17_198 image9423 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9423 : Bundle := named_bundle% "RealMapCertificates/relations/basis9423.json"
theorem reductionProof9423 : EqualModuloRelations reduction9423.relations reduction9423.input reduction9423.output := by lin_cert using reduction9423.terms
theorem substitutionProof9423 : IsMapEvaluation generatorImages reduction9423.relations [1156] reduction9423.output := by lin_cert using reduction9423.terms
def image9424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9424 : InImage map_17_198 image9424 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9424 : Bundle := named_bundle% "RealMapCertificates/relations/basis9424.json"
theorem reductionProof9424 : EqualModuloRelations reduction9424.relations reduction9424.input reduction9424.output := by lin_cert using reduction9424.terms
theorem substitutionProof9424 : IsMapEvaluation generatorImages reduction9424.relations [3,1017] reduction9424.output := by lin_cert using reduction9424.terms
def image9425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9425 : InImage map_17_198 image9425 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9425 : Bundle := named_bundle% "RealMapCertificates/relations/basis9425.json"
theorem reductionProof9425 : EqualModuloRelations reduction9425.relations reduction9425.input reduction9425.output := by lin_cert using reduction9425.terms
theorem substitutionProof9425 : IsMapEvaluation generatorImages reduction9425.relations [1,1112] reduction9425.output := by lin_cert using reduction9425.terms
def image9426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9426 : InImage map_17_198 image9426 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9426 : Bundle := named_bundle% "RealMapCertificates/relations/basis9426.json"
theorem reductionProof9426 : EqualModuloRelations reduction9426.relations reduction9426.input reduction9426.output := by lin_cert using reduction9426.terms
theorem substitutionProof9426 : IsMapEvaluation generatorImages reduction9426.relations [1,1,1088] reduction9426.output := by lin_cert using reduction9426.terms
def image9427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9427 : InImage map_17_198 image9427 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9427 : Bundle := named_bundle% "RealMapCertificates/relations/basis9427.json"
theorem reductionProof9427 : EqualModuloRelations reduction9427.relations reduction9427.input reduction9427.output := by lin_cert using reduction9427.terms
theorem substitutionProof9427 : IsMapEvaluation generatorImages reduction9427.relations [0,1129] reduction9427.output := by lin_cert using reduction9427.terms
def image9428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9428 : InImage map_17_198 image9428 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9428 : Bundle := named_bundle% "RealMapCertificates/relations/basis9428.json"
theorem reductionProof9428 : EqualModuloRelations reduction9428.relations reduction9428.input reduction9428.output := by lin_cert using reduction9428.terms
theorem substitutionProof9428 : IsMapEvaluation generatorImages reduction9428.relations [0,0,0,0,0,0,66,324] reduction9428.output := by lin_cert using reduction9428.terms
def map_17_199 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9560 : InImage map_17_199 image9560 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9560 : Bundle := named_bundle% "RealMapCertificates/relations/basis9560.json"
theorem reductionProof9560 : EqualModuloRelations reduction9560.relations reduction9560.input reduction9560.output := by lin_cert using reduction9560.terms
theorem substitutionProof9560 : IsMapEvaluation generatorImages reduction9560.relations [1176] reduction9560.output := by lin_cert using reduction9560.terms
def image9561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9561 : InImage map_17_199 image9561 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9561 : Bundle := named_bundle% "RealMapCertificates/relations/basis9561.json"
theorem reductionProof9561 : EqualModuloRelations reduction9561.relations reduction9561.input reduction9561.output := by lin_cert using reduction9561.terms
theorem substitutionProof9561 : IsMapEvaluation generatorImages reduction9561.relations [0,1157] reduction9561.output := by lin_cert using reduction9561.terms
def image9562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9562 : InImage map_17_199 image9562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9562 : Bundle := named_bundle% "RealMapCertificates/relations/basis9562.json"
theorem reductionProof9562 : EqualModuloRelations reduction9562.relations reduction9562.input reduction9562.output := by lin_cert using reduction9562.terms
theorem substitutionProof9562 : IsMapEvaluation generatorImages reduction9562.relations [0,3,1020] reduction9562.output := by lin_cert using reduction9562.terms
def image9563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9563 : InImage map_17_199 image9563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9563 : Bundle := named_bundle% "RealMapCertificates/relations/basis9563.json"
theorem reductionProof9563 : EqualModuloRelations reduction9563.relations reduction9563.input reduction9563.output := by lin_cert using reduction9563.terms
theorem substitutionProof9563 : IsMapEvaluation generatorImages reduction9563.relations [0,2,1088] reduction9563.output := by lin_cert using reduction9563.terms
def image9564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9564 : InImage map_17_199 image9564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9564 : Bundle := named_bundle% "RealMapCertificates/relations/basis9564.json"
theorem reductionProof9564 : EqualModuloRelations reduction9564.relations reduction9564.input reduction9564.output := by lin_cert using reduction9564.terms
theorem substitutionProof9564 : IsMapEvaluation generatorImages reduction9564.relations [0,0,1131] reduction9564.output := by lin_cert using reduction9564.terms
def map_17_200 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9710 : InImage map_17_200 image9710 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9710 : Bundle := named_bundle% "RealMapCertificates/relations/basis9710.json"
theorem reductionProof9710 : EqualModuloRelations reduction9710.relations reduction9710.input reduction9710.output := by lin_cert using reduction9710.terms
theorem substitutionProof9710 : IsMapEvaluation generatorImages reduction9710.relations [1185] reduction9710.output := by lin_cert using reduction9710.terms
def image9711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9711 : InImage map_17_200 image9711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9711 : Bundle := named_bundle% "RealMapCertificates/relations/basis9711.json"
theorem reductionProof9711 : EqualModuloRelations reduction9711.relations reduction9711.input reduction9711.output := by lin_cert using reduction9711.terms
theorem substitutionProof9711 : IsMapEvaluation generatorImages reduction9711.relations [1184] reduction9711.output := by lin_cert using reduction9711.terms
def image9712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9712 : InImage map_17_200 image9712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9712 : Bundle := named_bundle% "RealMapCertificates/relations/basis9712.json"
theorem reductionProof9712 : EqualModuloRelations reduction9712.relations reduction9712.input reduction9712.output := by lin_cert using reduction9712.terms
theorem substitutionProof9712 : IsMapEvaluation generatorImages reduction9712.relations [8,8,8,8,324] reduction9712.output := by lin_cert using reduction9712.terms
def map_17_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9902 : InImage map_17_201 image9902 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9902 : Bundle := named_bundle% "RealMapCertificates/relations/basis9902.json"
theorem reductionProof9902 : EqualModuloRelations reduction9902.relations reduction9902.input reduction9902.output := by lin_cert using reduction9902.terms
theorem substitutionProof9902 : IsMapEvaluation generatorImages reduction9902.relations [1209] reduction9902.output := by lin_cert using reduction9902.terms
def image9903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9903 : InImage map_17_201 image9903 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9903 : Bundle := named_bundle% "RealMapCertificates/relations/basis9903.json"
theorem reductionProof9903 : EqualModuloRelations reduction9903.relations reduction9903.input reduction9903.output := by lin_cert using reduction9903.terms
theorem substitutionProof9903 : IsMapEvaluation generatorImages reduction9903.relations [1208] reduction9903.output := by lin_cert using reduction9903.terms
def image9904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9904 : InImage map_17_201 image9904 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9904 : Bundle := named_bundle% "RealMapCertificates/relations/basis9904.json"
theorem reductionProof9904 : EqualModuloRelations reduction9904.relations reduction9904.input reduction9904.output := by lin_cert using reduction9904.terms
theorem substitutionProof9904 : IsMapEvaluation generatorImages reduction9904.relations [1,1177] reduction9904.output := by lin_cert using reduction9904.terms
def image9905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9905 : InImage map_17_201 image9905 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9905 : Bundle := named_bundle% "RealMapCertificates/relations/basis9905.json"
theorem reductionProof9905 : EqualModuloRelations reduction9905.relations reduction9905.input reduction9905.output := by lin_cert using reduction9905.terms
theorem substitutionProof9905 : IsMapEvaluation generatorImages reduction9905.relations [0,1186] reduction9905.output := by lin_cert using reduction9905.terms
def map_17_202 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10033 : InImage map_17_202 image10033 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10033 : Bundle := named_bundle% "RealMapCertificates/relations/basis10033.json"
theorem reductionProof10033 : EqualModuloRelations reduction10033.relations reduction10033.input reduction10033.output := by lin_cert using reduction10033.terms
theorem substitutionProof10033 : IsMapEvaluation generatorImages reduction10033.relations [1223] reduction10033.output := by lin_cert using reduction10033.terms
def image10034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10034 : InImage map_17_202 image10034 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10034 : Bundle := named_bundle% "RealMapCertificates/relations/basis10034.json"
theorem reductionProof10034 : EqualModuloRelations reduction10034.relations reduction10034.input reduction10034.output := by lin_cert using reduction10034.terms
theorem substitutionProof10034 : IsMapEvaluation generatorImages reduction10034.relations [0,0,1188] reduction10034.output := by lin_cert using reduction10034.terms
def image10035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10035 : InImage map_17_202 image10035 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10035 : Bundle := named_bundle% "RealMapCertificates/relations/basis10035.json"
theorem reductionProof10035 : EqualModuloRelations reduction10035.relations reduction10035.input reduction10035.output := by lin_cert using reduction10035.terms
theorem substitutionProof10035 : IsMapEvaluation generatorImages reduction10035.relations [0,0,1187] reduction10035.output := by lin_cert using reduction10035.terms
end RealMapCertificates
