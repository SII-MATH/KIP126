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
  | 23 => [[7,7]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 72 => []
  | 76 => []
  | 79 => []
  | 90 => []
  | 92 => []
  | 107 => []
  | 112 => []
  | 190 => []
  | 213 => []
  | 324 => []
  | 333 => []
  | 351 => []
  | 352 => []
  | 485 => []
  | 544 => []
  | 673 => []
  | 719 => []
  | 734 => []
  | 965 => []
  | 988 => []
  | 992 => []
  | 1017 => []
  | 1046 => []
  | 1056 => []
  | 1057 => []
  | 1070 => []
  | 1087 => []
  | 1088 => []
  | 1091 => []
  | 1098 => []
  | 1129 => []
  | 1131 => []
  | 1133 => []
  | 1157 => []
  | 1158 => []
  | 1159 => []
  | 1186 => []
  | 1188 => []
  | 1210 => []
  | 1224 => []
  | 1246 => []
  | 1247 => []
  | 1248 => []
  | 1249 => []
  | 1263 => []
  | 1264 => []
  | 1265 => []
  | 1266 => []
  | 1267 => []
  | 1268 => []
  | 1292 => []
  | 1293 => []
  | 1294 => []
  | 1295 => []
  | 1307 => []
  | 1323 => []
  | 1324 => []
  | 1325 => []
  | 1326 => []
  | 1339 => []
  | 1352 => []
  | 1353 => []
  | 1374 => []
  | 1377 => []
  | 1387 => []
  | 1388 => []
  | 1390 => []
  | 1435 => []
  | 1447 => []
  | 1448 => []
  | 1449 => []
  | 1455 => []
  | 1493 => []
  | 1494 => []
  | 1495 => []
  | 1509 => []
  | 1510 => []
  | 1523 => []
  | _ => []
def map_17_203 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10205 : InImage map_17_203 image10205 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10205 : Bundle := named_bundle% "RealMapCertificates/relations/basis10205.json"
theorem reductionProof10205 : EqualModuloRelations reduction10205.relations reduction10205.input reduction10205.output := by lin_cert using reduction10205.terms
theorem substitutionProof10205 : IsMapEvaluation generatorImages reduction10205.relations [1247] reduction10205.output := by lin_cert using reduction10205.terms
def image10206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10206 : InImage map_17_203 image10206 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10206 : Bundle := named_bundle% "RealMapCertificates/relations/basis10206.json"
theorem reductionProof10206 : EqualModuloRelations reduction10206.relations reduction10206.input reduction10206.output := by lin_cert using reduction10206.terms
theorem substitutionProof10206 : IsMapEvaluation generatorImages reduction10206.relations [1246] reduction10206.output := by lin_cert using reduction10206.terms
def image10207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10207 : InImage map_17_203 image10207 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10207 : Bundle := named_bundle% "RealMapCertificates/relations/basis10207.json"
theorem reductionProof10207 : EqualModuloRelations reduction10207.relations reduction10207.input reduction10207.output := by lin_cert using reduction10207.terms
theorem substitutionProof10207 : IsMapEvaluation generatorImages reduction10207.relations [23,734] reduction10207.output := by lin_cert using reduction10207.terms
def image10208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10208 : InImage map_17_203 image10208 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10208 : Bundle := named_bundle% "RealMapCertificates/relations/basis10208.json"
theorem reductionProof10208 : EqualModuloRelations reduction10208.relations reduction10208.input reduction10208.output := by lin_cert using reduction10208.terms
theorem substitutionProof10208 : IsMapEvaluation generatorImages reduction10208.relations [8,8,8,9,324] reduction10208.output := by lin_cert using reduction10208.terms
def image10209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10209 : InImage map_17_203 image10209 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10209 : Bundle := named_bundle% "RealMapCertificates/relations/basis10209.json"
theorem reductionProof10209 : EqualModuloRelations reduction10209.relations reduction10209.input reduction10209.output := by lin_cert using reduction10209.terms
theorem substitutionProof10209 : IsMapEvaluation generatorImages reduction10209.relations [7,965] reduction10209.output := by lin_cert using reduction10209.terms
def image10210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10210 : InImage map_17_203 image10210 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10210 : Bundle := named_bundle% "RealMapCertificates/relations/basis10210.json"
theorem reductionProof10210 : EqualModuloRelations reduction10210.relations reduction10210.input reduction10210.output := by lin_cert using reduction10210.terms
theorem substitutionProof10210 : IsMapEvaluation generatorImages reduction10210.relations [0,1224] reduction10210.output := by lin_cert using reduction10210.terms
def image10211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10211 : InImage map_17_203 image10211 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10211 : Bundle := named_bundle% "RealMapCertificates/relations/basis10211.json"
theorem reductionProof10211 : EqualModuloRelations reduction10211.relations reduction10211.input reduction10211.output := by lin_cert using reduction10211.terms
theorem substitutionProof10211 : IsMapEvaluation generatorImages reduction10211.relations [0,3,1088] reduction10211.output := by lin_cert using reduction10211.terms
def map_17_204 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10410 : InImage map_17_204 image10410 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10410 : Bundle := named_bundle% "RealMapCertificates/relations/basis10410.json"
theorem reductionProof10410 : EqualModuloRelations reduction10410.relations reduction10410.input reduction10410.output := by lin_cert using reduction10410.terms
theorem substitutionProof10410 : IsMapEvaluation generatorImages reduction10410.relations [1265] reduction10410.output := by lin_cert using reduction10410.terms
def image10411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10411 : InImage map_17_204 image10411 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10411 : Bundle := named_bundle% "RealMapCertificates/relations/basis10411.json"
theorem reductionProof10411 : EqualModuloRelations reduction10411.relations reduction10411.input reduction10411.output := by lin_cert using reduction10411.terms
theorem substitutionProof10411 : IsMapEvaluation generatorImages reduction10411.relations [1264] reduction10411.output := by lin_cert using reduction10411.terms
def image10412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10412 : InImage map_17_204 image10412 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10412 : Bundle := named_bundle% "RealMapCertificates/relations/basis10412.json"
theorem reductionProof10412 : EqualModuloRelations reduction10412.relations reduction10412.input reduction10412.output := by lin_cert using reduction10412.terms
theorem substitutionProof10412 : IsMapEvaluation generatorImages reduction10412.relations [1263] reduction10412.output := by lin_cert using reduction10412.terms
def image10413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10413 : InImage map_17_204 image10413 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10413 : Bundle := named_bundle% "RealMapCertificates/relations/basis10413.json"
theorem reductionProof10413 : EqualModuloRelations reduction10413.relations reduction10413.input reduction10413.output := by lin_cert using reduction10413.terms
theorem substitutionProof10413 : IsMapEvaluation generatorImages reduction10413.relations [1,3,1088] reduction10413.output := by lin_cert using reduction10413.terms
def image10414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10414 : InImage map_17_204 image10414 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10414 : Bundle := named_bundle% "RealMapCertificates/relations/basis10414.json"
theorem reductionProof10414 : EqualModuloRelations reduction10414.relations reduction10414.input reduction10414.output := by lin_cert using reduction10414.terms
theorem substitutionProof10414 : IsMapEvaluation generatorImages reduction10414.relations [0,1248] reduction10414.output := by lin_cert using reduction10414.terms
def image10415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10415 : InImage map_17_204 image10415 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10415 : Bundle := named_bundle% "RealMapCertificates/relations/basis10415.json"
theorem reductionProof10415 : EqualModuloRelations reduction10415.relations reduction10415.input reduction10415.output := by lin_cert using reduction10415.terms
theorem substitutionProof10415 : IsMapEvaluation generatorImages reduction10415.relations [0,92,351] reduction10415.output := by lin_cert using reduction10415.terms
def image10416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10416 : InImage map_17_204 image10416 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10416 : Bundle := named_bundle% "RealMapCertificates/relations/basis10416.json"
theorem reductionProof10416 : EqualModuloRelations reduction10416.relations reduction10416.input reduction10416.output := by lin_cert using reduction10416.terms
theorem substitutionProof10416 : IsMapEvaluation generatorImages reduction10416.relations [0,3,67,352] reduction10416.output := by lin_cert using reduction10416.terms
def map_17_205 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10554 : InImage map_17_205 image10554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10554 : Bundle := named_bundle% "RealMapCertificates/relations/basis10554.json"
theorem reductionProof10554 : EqualModuloRelations reduction10554.relations reduction10554.input reduction10554.output := by lin_cert using reduction10554.terms
theorem substitutionProof10554 : IsMapEvaluation generatorImages reduction10554.relations [1292] reduction10554.output := by lin_cert using reduction10554.terms
def image10555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10555 : InImage map_17_205 image10555 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10555 : Bundle := named_bundle% "RealMapCertificates/relations/basis10555.json"
theorem reductionProof10555 : EqualModuloRelations reduction10555.relations reduction10555.input reduction10555.output := by lin_cert using reduction10555.terms
theorem substitutionProof10555 : IsMapEvaluation generatorImages reduction10555.relations [107,333] reduction10555.output := by lin_cert using reduction10555.terms
def image10556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10556 : InImage map_17_205 image10556 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10556 : Bundle := named_bundle% "RealMapCertificates/relations/basis10556.json"
theorem reductionProof10556 : EqualModuloRelations reduction10556.relations reduction10556.input reduction10556.output := by lin_cert using reduction10556.terms
theorem substitutionProof10556 : IsMapEvaluation generatorImages reduction10556.relations [3,1129] reduction10556.output := by lin_cert using reduction10556.terms
def image10557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10557 : InImage map_17_205 image10557 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10557 : Bundle := named_bundle% "RealMapCertificates/relations/basis10557.json"
theorem reductionProof10557 : EqualModuloRelations reduction10557.relations reduction10557.input reduction10557.output := by lin_cert using reduction10557.terms
theorem substitutionProof10557 : IsMapEvaluation generatorImages reduction10557.relations [1,4,1057] reduction10557.output := by lin_cert using reduction10557.terms
def image10558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10558 : InImage map_17_205 image10558 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10558 : Bundle := named_bundle% "RealMapCertificates/relations/basis10558.json"
theorem reductionProof10558 : EqualModuloRelations reduction10558.relations reduction10558.input reduction10558.output := by lin_cert using reduction10558.terms
theorem substitutionProof10558 : IsMapEvaluation generatorImages reduction10558.relations [0,1267] reduction10558.output := by lin_cert using reduction10558.terms
def map_17_206 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image10740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10740 : InImage map_17_206 image10740 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction10740 : Bundle := named_bundle% "RealMapCertificates/relations/basis10740.json"
theorem reductionProof10740 : EqualModuloRelations reduction10740.relations reduction10740.input reduction10740.output := by lin_cert using reduction10740.terms
theorem substitutionProof10740 : IsMapEvaluation generatorImages reduction10740.relations [1307] reduction10740.output := by lin_cert using reduction10740.terms
def image10741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10741 : InImage map_17_206 image10741 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction10741 : Bundle := named_bundle% "RealMapCertificates/relations/basis10741.json"
theorem reductionProof10741 : EqualModuloRelations reduction10741.relations reduction10741.input reduction10741.output := by lin_cert using reduction10741.terms
theorem substitutionProof10741 : IsMapEvaluation generatorImages reduction10741.relations [8,8,8,13,324] reduction10741.output := by lin_cert using reduction10741.terms
def image10742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10742 : InImage map_17_206 image10742 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction10742 : Bundle := named_bundle% "RealMapCertificates/relations/basis10742.json"
theorem reductionProof10742 : EqualModuloRelations reduction10742.relations reduction10742.input reduction10742.output := by lin_cert using reduction10742.terms
theorem substitutionProof10742 : IsMapEvaluation generatorImages reduction10742.relations [7,1017] reduction10742.output := by lin_cert using reduction10742.terms
def image10743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10743 : InImage map_17_206 image10743 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction10743 : Bundle := named_bundle% "RealMapCertificates/relations/basis10743.json"
theorem reductionProof10743 : EqualModuloRelations reduction10743.relations reduction10743.input reduction10743.output := by lin_cert using reduction10743.terms
theorem substitutionProof10743 : IsMapEvaluation generatorImages reduction10743.relations [3,1157] reduction10743.output := by lin_cert using reduction10743.terms
def image10744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10744 : InImage map_17_206 image10744 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction10744 : Bundle := named_bundle% "RealMapCertificates/relations/basis10744.json"
theorem reductionProof10744 : EqualModuloRelations reduction10744.relations reduction10744.input reduction10744.output := by lin_cert using reduction10744.terms
theorem substitutionProof10744 : IsMapEvaluation generatorImages reduction10744.relations [2,1224] reduction10744.output := by lin_cert using reduction10744.terms
def image10745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10745 : InImage map_17_206 image10745 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction10745 : Bundle := named_bundle% "RealMapCertificates/relations/basis10745.json"
theorem reductionProof10745 : EqualModuloRelations reduction10745.relations reduction10745.input reduction10745.output := by lin_cert using reduction10745.terms
theorem substitutionProof10745 : IsMapEvaluation generatorImages reduction10745.relations [1,1266] reduction10745.output := by lin_cert using reduction10745.terms
def image10746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10746 : InImage map_17_206 image10746 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction10746 : Bundle := named_bundle% "RealMapCertificates/relations/basis10746.json"
theorem reductionProof10746 : EqualModuloRelations reduction10746.relations reduction10746.input reduction10746.output := by lin_cert using reduction10746.terms
theorem substitutionProof10746 : IsMapEvaluation generatorImages reduction10746.relations [1,7,988] reduction10746.output := by lin_cert using reduction10746.terms
def image10747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10747 : InImage map_17_206 image10747 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction10747 : Bundle := named_bundle% "RealMapCertificates/relations/basis10747.json"
theorem reductionProof10747 : EqualModuloRelations reduction10747.relations reduction10747.input reduction10747.output := by lin_cert using reduction10747.terms
theorem substitutionProof10747 : IsMapEvaluation generatorImages reduction10747.relations [0,1293] reduction10747.output := by lin_cert using reduction10747.terms
def image10748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10748 : InImage map_17_206 image10748 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction10748 : Bundle := named_bundle% "RealMapCertificates/relations/basis10748.json"
theorem reductionProof10748 : EqualModuloRelations reduction10748.relations reduction10748.input reduction10748.output := by lin_cert using reduction10748.terms
theorem substitutionProof10748 : IsMapEvaluation generatorImages reduction10748.relations [0,3,1131] reduction10748.output := by lin_cert using reduction10748.terms
def image10749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10749 : InImage map_17_206 image10749 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction10749 : Bundle := named_bundle% "RealMapCertificates/relations/basis10749.json"
theorem reductionProof10749 : EqualModuloRelations reduction10749.relations reduction10749.input reduction10749.output := by lin_cert using reduction10749.terms
theorem substitutionProof10749 : IsMapEvaluation generatorImages reduction10749.relations [0,0,1268] reduction10749.output := by lin_cert using reduction10749.terms
def image10750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10750 : InImage map_17_206 image10750 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction10750 : Bundle := named_bundle% "RealMapCertificates/relations/basis10750.json"
theorem reductionProof10750 : EqualModuloRelations reduction10750.relations reduction10750.input reduction10750.output := by lin_cert using reduction10750.terms
theorem substitutionProof10750 : IsMapEvaluation generatorImages reduction10750.relations [0,0,0,0,0,0,90,324] reduction10750.output := by lin_cert using reduction10750.terms
def map_17_207 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10952 : InImage map_17_207 image10952 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10952 : Bundle := named_bundle% "RealMapCertificates/relations/basis10952.json"
theorem reductionProof10952 : EqualModuloRelations reduction10952.relations reduction10952.input reduction10952.output := by lin_cert using reduction10952.terms
theorem substitutionProof10952 : IsMapEvaluation generatorImages reduction10952.relations [1324] reduction10952.output := by lin_cert using reduction10952.terms
def image10953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10953 : InImage map_17_207 image10953 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10953 : Bundle := named_bundle% "RealMapCertificates/relations/basis10953.json"
theorem reductionProof10953 : EqualModuloRelations reduction10953.relations reduction10953.input reduction10953.output := by lin_cert using reduction10953.terms
theorem substitutionProof10953 : IsMapEvaluation generatorImages reduction10953.relations [1323] reduction10953.output := by lin_cert using reduction10953.terms
def image10954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10954 : InImage map_17_207 image10954 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10954 : Bundle := named_bundle% "RealMapCertificates/relations/basis10954.json"
theorem reductionProof10954 : EqualModuloRelations reduction10954.relations reduction10954.input reduction10954.output := by lin_cert using reduction10954.terms
theorem substitutionProof10954 : IsMapEvaluation generatorImages reduction10954.relations [7,1046] reduction10954.output := by lin_cert using reduction10954.terms
def image10955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10955 : InImage map_17_207 image10955 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10955 : Bundle := named_bundle% "RealMapCertificates/relations/basis10955.json"
theorem reductionProof10955 : EqualModuloRelations reduction10955.relations reduction10955.input reduction10955.output := by lin_cert using reduction10955.terms
theorem substitutionProof10955 : IsMapEvaluation generatorImages reduction10955.relations [1,5,64,324] reduction10955.output := by lin_cert using reduction10955.terms
def image10956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10956 : InImage map_17_207 image10956 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10956 : Bundle := named_bundle% "RealMapCertificates/relations/basis10956.json"
theorem reductionProof10956 : EqualModuloRelations reduction10956.relations reduction10956.input reduction10956.output := by lin_cert using reduction10956.terms
theorem substitutionProof10956 : IsMapEvaluation generatorImages reduction10956.relations [0,0,1295] reduction10956.output := by lin_cert using reduction10956.terms
def image10957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10957 : InImage map_17_207 image10957 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10957 : Bundle := named_bundle% "RealMapCertificates/relations/basis10957.json"
theorem reductionProof10957 : EqualModuloRelations reduction10957.relations reduction10957.input reduction10957.output := by lin_cert using reduction10957.terms
theorem substitutionProof10957 : IsMapEvaluation generatorImages reduction10957.relations [0,0,3,1133] reduction10957.output := by lin_cert using reduction10957.terms
def map_17_208 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11080 : InImage map_17_208 image11080 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11080 : Bundle := named_bundle% "RealMapCertificates/relations/basis11080.json"
theorem reductionProof11080 : EqualModuloRelations reduction11080.relations reduction11080.input reduction11080.output := by lin_cert using reduction11080.terms
theorem substitutionProof11080 : IsMapEvaluation generatorImages reduction11080.relations [3,1186] reduction11080.output := by lin_cert using reduction11080.terms
def image11081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11081 : InImage map_17_208 image11081 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11081 : Bundle := named_bundle% "RealMapCertificates/relations/basis11081.json"
theorem reductionProof11081 : EqualModuloRelations reduction11081.relations reduction11081.input reduction11081.output := by lin_cert using reduction11081.terms
theorem substitutionProof11081 : IsMapEvaluation generatorImages reduction11081.relations [0,1325] reduction11081.output := by lin_cert using reduction11081.terms
def image11082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11082 : InImage map_17_208 image11082 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11082 : Bundle := named_bundle% "RealMapCertificates/relations/basis11082.json"
theorem reductionProof11082 : EqualModuloRelations reduction11082.relations reduction11082.input reduction11082.output := by lin_cert using reduction11082.terms
theorem substitutionProof11082 : IsMapEvaluation generatorImages reduction11082.relations [0,107,352] reduction11082.output := by lin_cert using reduction11082.terms
def image11083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11083 : InImage map_17_208 image11083 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11083 : Bundle := named_bundle% "RealMapCertificates/relations/basis11083.json"
theorem reductionProof11083 : EqualModuloRelations reduction11083.relations reduction11083.input reduction11083.output := by lin_cert using reduction11083.terms
theorem substitutionProof11083 : IsMapEvaluation generatorImages reduction11083.relations [0,2,1249] reduction11083.output := by lin_cert using reduction11083.terms
def image11084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11084 : InImage map_17_208 image11084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11084 : Bundle := named_bundle% "RealMapCertificates/relations/basis11084.json"
theorem reductionProof11084 : EqualModuloRelations reduction11084.relations reduction11084.input reduction11084.output := by lin_cert using reduction11084.terms
theorem substitutionProof11084 : IsMapEvaluation generatorImages reduction11084.relations [0,0,112,324] reduction11084.output := by lin_cert using reduction11084.terms
def map_17_209 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11266 : InImage map_17_209 image11266 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11266 : Bundle := named_bundle% "RealMapCertificates/relations/basis11266.json"
theorem reductionProof11266 : EqualModuloRelations reduction11266.relations reduction11266.input reduction11266.output := by lin_cert using reduction11266.terms
theorem substitutionProof11266 : IsMapEvaluation generatorImages reduction11266.relations [9,992] reduction11266.output := by lin_cert using reduction11266.terms
def image11267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11267 : InImage map_17_209 image11267 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11267 : Bundle := named_bundle% "RealMapCertificates/relations/basis11267.json"
theorem reductionProof11267 : EqualModuloRelations reduction11267.relations reduction11267.input reduction11267.output := by lin_cert using reduction11267.terms
theorem substitutionProof11267 : IsMapEvaluation generatorImages reduction11267.relations [8,8,9,13,324] reduction11267.output := by lin_cert using reduction11267.terms
def image11268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11268 : InImage map_17_209 image11268 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11268 : Bundle := named_bundle% "RealMapCertificates/relations/basis11268.json"
theorem reductionProof11268 : EqualModuloRelations reduction11268.relations reduction11268.input reduction11268.output := by lin_cert using reduction11268.terms
theorem substitutionProof11268 : IsMapEvaluation generatorImages reduction11268.relations [7,1070] reduction11268.output := by lin_cert using reduction11268.terms
def image11269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11269 : InImage map_17_209 image11269 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11269 : Bundle := named_bundle% "RealMapCertificates/relations/basis11269.json"
theorem reductionProof11269 : EqualModuloRelations reduction11269.relations reduction11269.input reduction11269.output := by lin_cert using reduction11269.terms
theorem substitutionProof11269 : IsMapEvaluation generatorImages reduction11269.relations [0,1339] reduction11269.output := by lin_cert using reduction11269.terms
def image11270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11270 : InImage map_17_209 image11270 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11270 : Bundle := named_bundle% "RealMapCertificates/relations/basis11270.json"
theorem reductionProof11270 : EqualModuloRelations reduction11270.relations reduction11270.input reduction11270.output := by lin_cert using reduction11270.terms
theorem substitutionProof11270 : IsMapEvaluation generatorImages reduction11270.relations [0,3,1188] reduction11270.output := by lin_cert using reduction11270.terms
def image11271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11271 : InImage map_17_209 image11271 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11271 : Bundle := named_bundle% "RealMapCertificates/relations/basis11271.json"
theorem reductionProof11271 : EqualModuloRelations reduction11271.relations reduction11271.input reduction11271.output := by lin_cert using reduction11271.terms
theorem substitutionProof11271 : IsMapEvaluation generatorImages reduction11271.relations [0,3,3,1056] reduction11271.output := by lin_cert using reduction11271.terms
def image11272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11272 : InImage map_17_209 image11272 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11272 : Bundle := named_bundle% "RealMapCertificates/relations/basis11272.json"
theorem reductionProof11272 : EqualModuloRelations reduction11272.relations reduction11272.input reduction11272.output := by lin_cert using reduction11272.terms
theorem substitutionProof11272 : IsMapEvaluation generatorImages reduction11272.relations [0,0,1326] reduction11272.output := by lin_cert using reduction11272.terms
def map_17_210 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image11460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11460 : InImage map_17_210 image11460 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction11460 : Bundle := named_bundle% "RealMapCertificates/relations/basis11460.json"
theorem reductionProof11460 : EqualModuloRelations reduction11460.relations reduction11460.input reduction11460.output := by lin_cert using reduction11460.terms
theorem substitutionProof11460 : IsMapEvaluation generatorImages reduction11460.relations [190,213] reduction11460.output := by lin_cert using reduction11460.terms
def image11461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11461 : InImage map_17_210 image11461 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction11461 : Bundle := named_bundle% "RealMapCertificates/relations/basis11461.json"
theorem reductionProof11461 : EqualModuloRelations reduction11461.relations reduction11461.input reduction11461.output := by lin_cert using reduction11461.terms
theorem substitutionProof11461 : IsMapEvaluation generatorImages reduction11461.relations [8,1057] reduction11461.output := by lin_cert using reduction11461.terms
def image11462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11462 : InImage map_17_210 image11462 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction11462 : Bundle := named_bundle% "RealMapCertificates/relations/basis11462.json"
theorem reductionProof11462 : EqualModuloRelations reduction11462.relations reduction11462.input reduction11462.output := by lin_cert using reduction11462.terms
theorem substitutionProof11462 : IsMapEvaluation generatorImages reduction11462.relations [7,1087] reduction11462.output := by lin_cert using reduction11462.terms
def image11463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11463 : InImage map_17_210 image11463 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction11463 : Bundle := named_bundle% "RealMapCertificates/relations/basis11463.json"
theorem reductionProof11463 : EqualModuloRelations reduction11463.relations reduction11463.input reduction11463.output := by lin_cert using reduction11463.terms
theorem substitutionProof11463 : IsMapEvaluation generatorImages reduction11463.relations [3,1224] reduction11463.output := by lin_cert using reduction11463.terms
def image11464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11464 : InImage map_17_210 image11464 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction11464 : Bundle := named_bundle% "RealMapCertificates/relations/basis11464.json"
theorem reductionProof11464 : EqualModuloRelations reduction11464.relations reduction11464.input reduction11464.output := by lin_cert using reduction11464.terms
theorem substitutionProof11464 : IsMapEvaluation generatorImages reduction11464.relations [3,3,1088] reduction11464.output := by lin_cert using reduction11464.terms
def image11465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11465 : InImage map_17_210 image11465 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction11465 : Bundle := named_bundle% "RealMapCertificates/relations/basis11465.json"
theorem reductionProof11465 : EqualModuloRelations reduction11465.relations reduction11465.input reduction11465.output := by lin_cert using reduction11465.terms
theorem substitutionProof11465 : IsMapEvaluation generatorImages reduction11465.relations [1,1339] reduction11465.output := by lin_cert using reduction11465.terms
def image11466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11466 : InImage map_17_210 image11466 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction11466 : Bundle := named_bundle% "RealMapCertificates/relations/basis11466.json"
theorem reductionProof11466 : EqualModuloRelations reduction11466.relations reduction11466.input reduction11466.output := by lin_cert using reduction11466.terms
theorem substitutionProof11466 : IsMapEvaluation generatorImages reduction11466.relations [0,1352] reduction11466.output := by lin_cert using reduction11466.terms
def image11467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11467 : InImage map_17_210 image11467 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction11467 : Bundle := named_bundle% "RealMapCertificates/relations/basis11467.json"
theorem reductionProof11467 : EqualModuloRelations reduction11467.relations reduction11467.input reduction11467.output := by lin_cert using reduction11467.terms
theorem substitutionProof11467 : IsMapEvaluation generatorImages reduction11467.relations [0,0,7,1056] reduction11467.output := by lin_cert using reduction11467.terms
def map_17_211 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11618 : InImage map_17_211 image11618 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11618 : Bundle := named_bundle% "RealMapCertificates/relations/basis11618.json"
theorem reductionProof11618 : EqualModuloRelations reduction11618.relations reduction11618.input reduction11618.output := by lin_cert using reduction11618.terms
theorem substitutionProof11618 : IsMapEvaluation generatorImages reduction11618.relations [1,76,485] reduction11618.output := by lin_cert using reduction11618.terms
def image11619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11619 : InImage map_17_211 image11619 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11619 : Bundle := named_bundle% "RealMapCertificates/relations/basis11619.json"
theorem reductionProof11619 : EqualModuloRelations reduction11619.relations reduction11619.input reduction11619.output := by lin_cert using reduction11619.terms
theorem substitutionProof11619 : IsMapEvaluation generatorImages reduction11619.relations [1,1,1326] reduction11619.output := by lin_cert using reduction11619.terms
def image11620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11620 : InImage map_17_211 image11620 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11620 : Bundle := named_bundle% "RealMapCertificates/relations/basis11620.json"
theorem reductionProof11620 : EqualModuloRelations reduction11620.relations reduction11620.input reduction11620.output := by lin_cert using reduction11620.terms
theorem substitutionProof11620 : IsMapEvaluation generatorImages reduction11620.relations [0,43,673] reduction11620.output := by lin_cert using reduction11620.terms
def image11621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11621 : InImage map_17_211 image11621 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11621 : Bundle := named_bundle% "RealMapCertificates/relations/basis11621.json"
theorem reductionProof11621 : EqualModuloRelations reduction11621.relations reduction11621.input reduction11621.output := by lin_cert using reduction11621.terms
theorem substitutionProof11621 : IsMapEvaluation generatorImages reduction11621.relations [0,0,1353] reduction11621.output := by lin_cert using reduction11621.terms
def image11622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11622 : InImage map_17_211 image11622 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11622 : Bundle := named_bundle% "RealMapCertificates/relations/basis11622.json"
theorem reductionProof11622 : EqualModuloRelations reduction11622.relations reduction11622.input reduction11622.output := by lin_cert using reduction11622.terms
theorem substitutionProof11622 : IsMapEvaluation generatorImages reduction11622.relations [0,0,8,64,324] reduction11622.output := by lin_cert using reduction11622.terms
def image11623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11623 : InImage map_17_211 image11623 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11623 : Bundle := named_bundle% "RealMapCertificates/relations/basis11623.json"
theorem reductionProof11623 : EqualModuloRelations reduction11623.relations reduction11623.input reduction11623.output := by lin_cert using reduction11623.terms
theorem substitutionProof11623 : IsMapEvaluation generatorImages reduction11623.relations [0,0,0,7,1057] reduction11623.output := by lin_cert using reduction11623.terms
def map_17_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11816 : InImage map_17_212 image11816 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11816 : Bundle := named_bundle% "RealMapCertificates/relations/basis11816.json"
theorem reductionProof11816 : EqualModuloRelations reduction11816.relations reduction11816.input reduction11816.output := by lin_cert using reduction11816.terms
theorem substitutionProof11816 : IsMapEvaluation generatorImages reduction11816.relations [13,992] reduction11816.output := by lin_cert using reduction11816.terms
def image11817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11817 : InImage map_17_212 image11817 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11817 : Bundle := named_bundle% "RealMapCertificates/relations/basis11817.json"
theorem reductionProof11817 : EqualModuloRelations reduction11817.relations reduction11817.input reduction11817.output := by lin_cert using reduction11817.terms
theorem substitutionProof11817 : IsMapEvaluation generatorImages reduction11817.relations [8,8,13,13,324] reduction11817.output := by lin_cert using reduction11817.terms
def image11818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11818 : InImage map_17_212 image11818 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11818 : Bundle := named_bundle% "RealMapCertificates/relations/basis11818.json"
theorem reductionProof11818 : EqualModuloRelations reduction11818.relations reduction11818.input reduction11818.output := by lin_cert using reduction11818.terms
theorem substitutionProof11818 : IsMapEvaluation generatorImages reduction11818.relations [1,1374] reduction11818.output := by lin_cert using reduction11818.terms
def image11819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11819 : InImage map_17_212 image11819 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11819 : Bundle := named_bundle% "RealMapCertificates/relations/basis11819.json"
theorem reductionProof11819 : EqualModuloRelations reduction11819.relations reduction11819.input reduction11819.output := by lin_cert using reduction11819.terms
theorem substitutionProof11819 : IsMapEvaluation generatorImages reduction11819.relations [0,1387] reduction11819.output := by lin_cert using reduction11819.terms
def image11820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11820 : InImage map_17_212 image11820 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11820 : Bundle := named_bundle% "RealMapCertificates/relations/basis11820.json"
theorem reductionProof11820 : EqualModuloRelations reduction11820.relations reduction11820.input reduction11820.output := by lin_cert using reduction11820.terms
theorem substitutionProof11820 : IsMapEvaluation generatorImages reduction11820.relations [0,0,1377] reduction11820.output := by lin_cert using reduction11820.terms
def map_17_213 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12049 : InImage map_17_213 image12049 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12049 : Bundle := named_bundle% "RealMapCertificates/relations/basis12049.json"
theorem reductionProof12049 : EqualModuloRelations reduction12049.relations reduction12049.input reduction12049.output := by lin_cert using reduction12049.terms
theorem substitutionProof12049 : IsMapEvaluation generatorImages reduction12049.relations [3,1293] reduction12049.output := by lin_cert using reduction12049.terms
def image12050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12050 : InImage map_17_213 image12050 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12050 : Bundle := named_bundle% "RealMapCertificates/relations/basis12050.json"
theorem reductionProof12050 : EqualModuloRelations reduction12050.relations reduction12050.input reduction12050.output := by lin_cert using reduction12050.terms
theorem substitutionProof12050 : IsMapEvaluation generatorImages reduction12050.relations [2,1352] reduction12050.output := by lin_cert using reduction12050.terms
def image12051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12051 : InImage map_17_213 image12051 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12051 : Bundle := named_bundle% "RealMapCertificates/relations/basis12051.json"
theorem reductionProof12051 : EqualModuloRelations reduction12051.relations reduction12051.input reduction12051.output := by lin_cert using reduction12051.terms
theorem substitutionProof12051 : IsMapEvaluation generatorImages reduction12051.relations [1,1388] reduction12051.output := by lin_cert using reduction12051.terms
def image12052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12052 : InImage map_17_213 image12052 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12052 : Bundle := named_bundle% "RealMapCertificates/relations/basis12052.json"
theorem reductionProof12052 : EqualModuloRelations reduction12052.relations reduction12052.input reduction12052.output := by lin_cert using reduction12052.terms
theorem substitutionProof12052 : IsMapEvaluation generatorImages reduction12052.relations [1,1387] reduction12052.output := by lin_cert using reduction12052.terms
def image12053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12053 : InImage map_17_213 image12053 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12053 : Bundle := named_bundle% "RealMapCertificates/relations/basis12053.json"
theorem reductionProof12053 : EqualModuloRelations reduction12053.relations reduction12053.input reduction12053.output := by lin_cert using reduction12053.terms
theorem substitutionProof12053 : IsMapEvaluation generatorImages reduction12053.relations [0,68,544] reduction12053.output := by lin_cert using reduction12053.terms
def image12054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12054 : InImage map_17_213 image12054 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12054 : Bundle := named_bundle% "RealMapCertificates/relations/basis12054.json"
theorem reductionProof12054 : EqualModuloRelations reduction12054.relations reduction12054.input reduction12054.output := by lin_cert using reduction12054.terms
theorem substitutionProof12054 : IsMapEvaluation generatorImages reduction12054.relations [0,0,7,1098] reduction12054.output := by lin_cert using reduction12054.terms
def map_17_214 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12202 : InImage map_17_214 image12202 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12202 : Bundle := named_bundle% "RealMapCertificates/relations/basis12202.json"
theorem reductionProof12202 : EqualModuloRelations reduction12202.relations reduction12202.input reduction12202.output := by lin_cert using reduction12202.terms
theorem substitutionProof12202 : IsMapEvaluation generatorImages reduction12202.relations [1448] reduction12202.output := by lin_cert using reduction12202.terms
def image12203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12203 : InImage map_17_214 image12203 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12203 : Bundle := named_bundle% "RealMapCertificates/relations/basis12203.json"
theorem reductionProof12203 : EqualModuloRelations reduction12203.relations reduction12203.input reduction12203.output := by lin_cert using reduction12203.terms
theorem substitutionProof12203 : IsMapEvaluation generatorImages reduction12203.relations [1447] reduction12203.output := by lin_cert using reduction12203.terms
def image12204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12204 : InImage map_17_214 image12204 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12204 : Bundle := named_bundle% "RealMapCertificates/relations/basis12204.json"
theorem reductionProof12204 : EqualModuloRelations reduction12204.relations reduction12204.input reduction12204.output := by lin_cert using reduction12204.terms
theorem substitutionProof12204 : IsMapEvaluation generatorImages reduction12204.relations [0,3,1294] reduction12204.output := by lin_cert using reduction12204.terms
def image12205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12205 : InImage map_17_214 image12205 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12205 : Bundle := named_bundle% "RealMapCertificates/relations/basis12205.json"
theorem reductionProof12205 : EqualModuloRelations reduction12205.relations reduction12205.input reduction12205.output := by lin_cert using reduction12205.terms
theorem substitutionProof12205 : IsMapEvaluation generatorImages reduction12205.relations [0,2,1353] reduction12205.output := by lin_cert using reduction12205.terms
def image12206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12206 : InImage map_17_214 image12206 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12206 : Bundle := named_bundle% "RealMapCertificates/relations/basis12206.json"
theorem reductionProof12206 : EqualModuloRelations reduction12206.relations reduction12206.input reduction12206.output := by lin_cert using reduction12206.terms
theorem substitutionProof12206 : IsMapEvaluation generatorImages reduction12206.relations [0,0,8,72,324] reduction12206.output := by lin_cert using reduction12206.terms
def image12207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12207 : InImage map_17_214 image12207 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12207 : Bundle := named_bundle% "RealMapCertificates/relations/basis12207.json"
theorem reductionProof12207 : EqualModuloRelations reduction12207.relations reduction12207.input reduction12207.output := by lin_cert using reduction12207.terms
theorem substitutionProof12207 : IsMapEvaluation generatorImages reduction12207.relations [0,0,0,1390] reduction12207.output := by lin_cert using reduction12207.terms
def map_17_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12413 : InImage map_17_215 image12413 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12413 : Bundle := named_bundle% "RealMapCertificates/relations/basis12413.json"
theorem reductionProof12413 : EqualModuloRelations reduction12413.relations reduction12413.input reduction12413.output := by lin_cert using reduction12413.terms
theorem substitutionProof12413 : IsMapEvaluation generatorImages reduction12413.relations [8,9,13,13,324] reduction12413.output := by lin_cert using reduction12413.terms
def image12414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12414 : InImage map_17_215 image12414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12414 : Bundle := named_bundle% "RealMapCertificates/relations/basis12414.json"
theorem reductionProof12414 : EqualModuloRelations reduction12414.relations reduction12414.input reduction12414.output := by lin_cert using reduction12414.terms
theorem substitutionProof12414 : IsMapEvaluation generatorImages reduction12414.relations [1,1435] reduction12414.output := by lin_cert using reduction12414.terms
def image12415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12415 : InImage map_17_215 image12415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12415 : Bundle := named_bundle% "RealMapCertificates/relations/basis12415.json"
theorem reductionProof12415 : EqualModuloRelations reduction12415.relations reduction12415.input reduction12415.output := by lin_cert using reduction12415.terms
theorem substitutionProof12415 : IsMapEvaluation generatorImages reduction12415.relations [0,1449] reduction12415.output := by lin_cert using reduction12415.terms
def image12416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12416 : InImage map_17_215 image12416 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12416 : Bundle := named_bundle% "RealMapCertificates/relations/basis12416.json"
theorem reductionProof12416 : EqualModuloRelations reduction12416.relations reduction12416.input reduction12416.output := by lin_cert using reduction12416.terms
theorem substitutionProof12416 : IsMapEvaluation generatorImages reduction12416.relations [0,7,1158] reduction12416.output := by lin_cert using reduction12416.terms
def map_17_216 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12616 : InImage map_17_216 image12616 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12616 : Bundle := named_bundle% "RealMapCertificates/relations/basis12616.json"
theorem reductionProof12616 : EqualModuloRelations reduction12616.relations reduction12616.input reduction12616.output := by lin_cert using reduction12616.terms
theorem substitutionProof12616 : IsMapEvaluation generatorImages reduction12616.relations [13,1057] reduction12616.output := by lin_cert using reduction12616.terms
def image12617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12617 : InImage map_17_216 image12617 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12617 : Bundle := named_bundle% "RealMapCertificates/relations/basis12617.json"
theorem reductionProof12617 : EqualModuloRelations reduction12617.relations reduction12617.input reduction12617.output := by lin_cert using reduction12617.terms
theorem substitutionProof12617 : IsMapEvaluation generatorImages reduction12617.relations [1,1449] reduction12617.output := by lin_cert using reduction12617.terms
def image12618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12618 : InImage map_17_216 image12618 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12618 : Bundle := named_bundle% "RealMapCertificates/relations/basis12618.json"
theorem reductionProof12618 : EqualModuloRelations reduction12618.relations reduction12618.input reduction12618.output := by lin_cert using reduction12618.terms
theorem substitutionProof12618 : IsMapEvaluation generatorImages reduction12618.relations [1,7,1158] reduction12618.output := by lin_cert using reduction12618.terms
def image12619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12619 : InImage map_17_216 image12619 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12619 : Bundle := named_bundle% "RealMapCertificates/relations/basis12619.json"
theorem reductionProof12619 : EqualModuloRelations reduction12619.relations reduction12619.input reduction12619.output := by lin_cert using reduction12619.terms
theorem substitutionProof12619 : IsMapEvaluation generatorImages reduction12619.relations [0,3,1326] reduction12619.output := by lin_cert using reduction12619.terms
def image12620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12620 : InImage map_17_216 image12620 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12620 : Bundle := named_bundle% "RealMapCertificates/relations/basis12620.json"
theorem reductionProof12620 : EqualModuloRelations reduction12620.relations reduction12620.input reduction12620.output := by lin_cert using reduction12620.terms
theorem substitutionProof12620 : IsMapEvaluation generatorImages reduction12620.relations [0,0,43,719] reduction12620.output := by lin_cert using reduction12620.terms
def image12621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12621 : InImage map_17_216 image12621 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12621 : Bundle := named_bundle% "RealMapCertificates/relations/basis12621.json"
theorem reductionProof12621 : EqualModuloRelations reduction12621.relations reduction12621.input reduction12621.output := by lin_cert using reduction12621.terms
theorem substitutionProof12621 : IsMapEvaluation generatorImages reduction12621.relations [0,0,7,1159] reduction12621.output := by lin_cert using reduction12621.terms
def map_17_217 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12767 : InImage map_17_217 image12767 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12767 : Bundle := named_bundle% "RealMapCertificates/relations/basis12767.json"
theorem reductionProof12767 : EqualModuloRelations reduction12767.relations reduction12767.input reduction12767.output := by lin_cert using reduction12767.terms
theorem substitutionProof12767 : IsMapEvaluation generatorImages reduction12767.relations [1509] reduction12767.output := by lin_cert using reduction12767.terms
def image12768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12768 : InImage map_17_217 image12768 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12768 : Bundle := named_bundle% "RealMapCertificates/relations/basis12768.json"
theorem reductionProof12768 : EqualModuloRelations reduction12768.relations reduction12768.input reduction12768.output := by lin_cert using reduction12768.terms
theorem substitutionProof12768 : IsMapEvaluation generatorImages reduction12768.relations [2,1435] reduction12768.output := by lin_cert using reduction12768.terms
def image12769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12769 : InImage map_17_217 image12769 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12769 : Bundle := named_bundle% "RealMapCertificates/relations/basis12769.json"
theorem reductionProof12769 : EqualModuloRelations reduction12769.relations reduction12769.input reduction12769.output := by lin_cert using reduction12769.terms
theorem substitutionProof12769 : IsMapEvaluation generatorImages reduction12769.relations [0,1494] reduction12769.output := by lin_cert using reduction12769.terms
def image12770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12770 : InImage map_17_217 image12770 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12770 : Bundle := named_bundle% "RealMapCertificates/relations/basis12770.json"
theorem reductionProof12770 : EqualModuloRelations reduction12770.relations reduction12770.input reduction12770.output := by lin_cert using reduction12770.terms
theorem substitutionProof12770 : IsMapEvaluation generatorImages reduction12770.relations [0,1493] reduction12770.output := by lin_cert using reduction12770.terms
def image12771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12771 : InImage map_17_217 image12771 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12771 : Bundle := named_bundle% "RealMapCertificates/relations/basis12771.json"
theorem reductionProof12771 : EqualModuloRelations reduction12771.relations reduction12771.input reduction12771.output := by lin_cert using reduction12771.terms
theorem substitutionProof12771 : IsMapEvaluation generatorImages reduction12771.relations [0,0,8,79,324] reduction12771.output := by lin_cert using reduction12771.terms
def map_17_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12975 : InImage map_17_218 image12975 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12975 : Bundle := named_bundle% "RealMapCertificates/relations/basis12975.json"
theorem reductionProof12975 : EqualModuloRelations reduction12975.relations reduction12975.input reduction12975.output := by lin_cert using reduction12975.terms
theorem substitutionProof12975 : IsMapEvaluation generatorImages reduction12975.relations [13,1091] reduction12975.output := by lin_cert using reduction12975.terms
def image12976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12976 : InImage map_17_218 image12976 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12976 : Bundle := named_bundle% "RealMapCertificates/relations/basis12976.json"
theorem reductionProof12976 : EqualModuloRelations reduction12976.relations reduction12976.input reduction12976.output := by lin_cert using reduction12976.terms
theorem substitutionProof12976 : IsMapEvaluation generatorImages reduction12976.relations [8,13,13,13,324] reduction12976.output := by lin_cert using reduction12976.terms
def image12977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12977 : InImage map_17_218 image12977 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12977 : Bundle := named_bundle% "RealMapCertificates/relations/basis12977.json"
theorem reductionProof12977 : EqualModuloRelations reduction12977.relations reduction12977.input reduction12977.output := by lin_cert using reduction12977.terms
theorem substitutionProof12977 : IsMapEvaluation generatorImages reduction12977.relations [0,0,1495] reduction12977.output := by lin_cert using reduction12977.terms
def image12978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12978 : InImage map_17_218 image12978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12978 : Bundle := named_bundle% "RealMapCertificates/relations/basis12978.json"
theorem reductionProof12978 : EqualModuloRelations reduction12978.relations reduction12978.input reduction12978.output := by lin_cert using reduction12978.terms
theorem substitutionProof12978 : IsMapEvaluation generatorImages reduction12978.relations [0,0,0,0,1455] reduction12978.output := by lin_cert using reduction12978.terms
def map_17_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13199 : InImage map_17_219 image13199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13199 : Bundle := named_bundle% "RealMapCertificates/relations/basis13199.json"
theorem reductionProof13199 : EqualModuloRelations reduction13199.relations reduction13199.input reduction13199.output := by lin_cert using reduction13199.terms
theorem substitutionProof13199 : IsMapEvaluation generatorImages reduction13199.relations [3,1387] reduction13199.output := by lin_cert using reduction13199.terms
def image13200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13200 : InImage map_17_219 image13200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13200 : Bundle := named_bundle% "RealMapCertificates/relations/basis13200.json"
theorem reductionProof13200 : EqualModuloRelations reduction13200.relations reduction13200.input reduction13200.output := by lin_cert using reduction13200.terms
theorem substitutionProof13200 : IsMapEvaluation generatorImages reduction13200.relations [1,7,1210] reduction13200.output := by lin_cert using reduction13200.terms
def image13201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13201 : InImage map_17_219 image13201 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13201 : Bundle := named_bundle% "RealMapCertificates/relations/basis13201.json"
theorem reductionProof13201 : EqualModuloRelations reduction13201.relations reduction13201.input reduction13201.output := by lin_cert using reduction13201.terms
theorem substitutionProof13201 : IsMapEvaluation generatorImages reduction13201.relations [0,1523] reduction13201.output := by lin_cert using reduction13201.terms
def image13202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13202 : InImage map_17_219 image13202 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13202 : Bundle := named_bundle% "RealMapCertificates/relations/basis13202.json"
theorem reductionProof13202 : EqualModuloRelations reduction13202.relations reduction13202.input reduction13202.output := by lin_cert using reduction13202.terms
theorem substitutionProof13202 : IsMapEvaluation generatorImages reduction13202.relations [0,0,1510] reduction13202.output := by lin_cert using reduction13202.terms
end RealMapCertificates
