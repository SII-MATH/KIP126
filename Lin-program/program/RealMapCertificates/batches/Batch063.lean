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
  | 9 => [[8]]
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 174 => []
  | 176 => []
  | 180 => [[5,10,12]]
  | 187 => []
  | 188 => []
  | 190 => []
  | 194 => [[7,10,12]]
  | 197 => []
  | 203 => []
  | 215 => []
  | 220 => []
  | 226 => []
  | 324 => []
  | 333 => []
  | 352 => []
  | 373 => []
  | 674 => []
  | 719 => []
  | 732 => []
  | 734 => []
  | 756 => []
  | 757 => []
  | 988 => []
  | 1057 => []
  | 1118 => []
  | 1267 => []
  | 1268 => []
  | 1270 => []
  | 1295 => []
  | 1296 => []
  | 1387 => []
  | 1435 => []
  | 1449 => []
  | 1523 => []
  | 1524 => []
  | 1527 => []
  | 1561 => []
  | 1562 => []
  | 1581 => []
  | 1602 => []
  | 1603 => []
  | 1617 => []
  | 1630 => []
  | 1647 => []
  | 1648 => []
  | 1672 => []
  | 1673 => []
  | 1674 => []
  | 1702 => []
  | 1703 => []
  | 1704 => []
  | 1705 => []
  | 1707 => []
  | 1729 => []
  | 1731 => []
  | 1732 => []
  | 1744 => []
  | 1745 => []
  | 1793 => []
  | 1794 => []
  | 1795 => []
  | 1796 => []
  | 1821 => []
  | 1822 => []
  | 1823 => []
  | 1844 => []
  | 1875 => []
  | 1876 => []
  | 1877 => []
  | 1878 => []
  | 1879 => []
  | 1896 => []
  | 1917 => []
  | 1918 => []
  | 1919 => []
  | 1950 => []
  | 1976 => []
  | 1977 => []
  | 2015 => []
  | 2016 => []
  | 2017 => []
  | 2018 => []
  | 2019 => []
  | 2020 => []
  | _ => []
def map_17_220 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13327 : InImage map_17_220 image13327 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13327 : Bundle := named_bundle% "RealMapCertificates/relations/basis13327.json"
theorem reductionProof13327 : EqualModuloRelations reduction13327.relations reduction13327.input reduction13327.output := by lin_cert using reduction13327.terms
theorem substitutionProof13327 : IsMapEvaluation generatorImages reduction13327.relations [1561] reduction13327.output := by lin_cert using reduction13327.terms
def image13328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13328 : InImage map_17_220 image13328 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13328 : Bundle := named_bundle% "RealMapCertificates/relations/basis13328.json"
theorem reductionProof13328 : EqualModuloRelations reduction13328.relations reduction13328.input reduction13328.output := by lin_cert using reduction13328.terms
theorem substitutionProof13328 : IsMapEvaluation generatorImages reduction13328.relations [149,324] reduction13328.output := by lin_cert using reduction13328.terms
def image13329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13329 : InImage map_17_220 image13329 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13329 : Bundle := named_bundle% "RealMapCertificates/relations/basis13329.json"
theorem reductionProof13329 : EqualModuloRelations reduction13329.relations reduction13329.input reduction13329.output := by lin_cert using reduction13329.terms
theorem substitutionProof13329 : IsMapEvaluation generatorImages reduction13329.relations [7,1267] reduction13329.output := by lin_cert using reduction13329.terms
def image13330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13330 : InImage map_17_220 image13330 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13330 : Bundle := named_bundle% "RealMapCertificates/relations/basis13330.json"
theorem reductionProof13330 : EqualModuloRelations reduction13330.relations reduction13330.input reduction13330.output := by lin_cert using reduction13330.terms
theorem substitutionProof13330 : IsMapEvaluation generatorImages reduction13330.relations [7,7,988] reduction13330.output := by lin_cert using reduction13330.terms
def image13331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13331 : InImage map_17_220 image13331 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13331 : Bundle := named_bundle% "RealMapCertificates/relations/basis13331.json"
theorem reductionProof13331 : EqualModuloRelations reduction13331.relations reduction13331.input reduction13331.output := by lin_cert using reduction13331.terms
theorem substitutionProof13331 : IsMapEvaluation generatorImages reduction13331.relations [1,1523] reduction13331.output := by lin_cert using reduction13331.terms
def image13332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13332 : InImage map_17_220 image13332 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13332 : Bundle := named_bundle% "RealMapCertificates/relations/basis13332.json"
theorem reductionProof13332 : EqualModuloRelations reduction13332.relations reduction13332.input reduction13332.output := by lin_cert using reduction13332.terms
theorem substitutionProof13332 : IsMapEvaluation generatorImages reduction13332.relations [0,0,1524] reduction13332.output := by lin_cert using reduction13332.terms
def map_17_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13545 : InImage map_17_221 image13545 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13545 : Bundle := named_bundle% "RealMapCertificates/relations/basis13545.json"
theorem reductionProof13545 : EqualModuloRelations reduction13545.relations reduction13545.input reduction13545.output := by lin_cert using reduction13545.terms
theorem substitutionProof13545 : IsMapEvaluation generatorImages reduction13545.relations [154,324] reduction13545.output := by lin_cert using reduction13545.terms
def image13546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13546 : InImage map_17_221 image13546 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13546 : Bundle := named_bundle% "RealMapCertificates/relations/basis13546.json"
theorem reductionProof13546 : EqualModuloRelations reduction13546.relations reduction13546.input reduction13546.output := by lin_cert using reduction13546.terms
theorem substitutionProof13546 : IsMapEvaluation generatorImages reduction13546.relations [9,13,13,13,324] reduction13546.output := by lin_cert using reduction13546.terms
def image13547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13547 : InImage map_17_221 image13547 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13547 : Bundle := named_bundle% "RealMapCertificates/relations/basis13547.json"
theorem reductionProof13547 : EqualModuloRelations reduction13547.relations reduction13547.input reduction13547.output := by lin_cert using reduction13547.terms
theorem substitutionProof13547 : IsMapEvaluation generatorImages reduction13547.relations [3,1435] reduction13547.output := by lin_cert using reduction13547.terms
def image13548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13548 : InImage map_17_221 image13548 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13548 : Bundle := named_bundle% "RealMapCertificates/relations/basis13548.json"
theorem reductionProof13548 : EqualModuloRelations reduction13548.relations reduction13548.input reduction13548.output := by lin_cert using reduction13548.terms
theorem substitutionProof13548 : IsMapEvaluation generatorImages reduction13548.relations [0,1562] reduction13548.output := by lin_cert using reduction13548.terms
def map_17_222 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13767 : InImage map_17_222 image13767 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13767 : Bundle := named_bundle% "RealMapCertificates/relations/basis13767.json"
theorem reductionProof13767 : EqualModuloRelations reduction13767.relations reduction13767.input reduction13767.output := by lin_cert using reduction13767.terms
theorem substitutionProof13767 : IsMapEvaluation generatorImages reduction13767.relations [1,7,1268] reduction13767.output := by lin_cert using reduction13767.terms
def image13768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13768 : InImage map_17_222 image13768 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13768 : Bundle := named_bundle% "RealMapCertificates/relations/basis13768.json"
theorem reductionProof13768 : EqualModuloRelations reduction13768.relations reduction13768.input reduction13768.output := by lin_cert using reduction13768.terms
theorem substitutionProof13768 : IsMapEvaluation generatorImages reduction13768.relations [0,1581] reduction13768.output := by lin_cert using reduction13768.terms
def image13769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13769 : InImage map_17_222 image13769 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13769 : Bundle := named_bundle% "RealMapCertificates/relations/basis13769.json"
theorem reductionProof13769 : EqualModuloRelations reduction13769.relations reduction13769.input reduction13769.output := by lin_cert using reduction13769.terms
theorem substitutionProof13769 : IsMapEvaluation generatorImages reduction13769.relations [0,7,1295] reduction13769.output := by lin_cert using reduction13769.terms
def image13770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13770 : InImage map_17_222 image13770 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13770 : Bundle := named_bundle% "RealMapCertificates/relations/basis13770.json"
theorem reductionProof13770 : EqualModuloRelations reduction13770.relations reduction13770.input reduction13770.output := by lin_cert using reduction13770.terms
theorem substitutionProof13770 : IsMapEvaluation generatorImages reduction13770.relations [0,0,7,1270] reduction13770.output := by lin_cert using reduction13770.terms
def image13771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13771 : InImage map_17_222 image13771 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13771 : Bundle := named_bundle% "RealMapCertificates/relations/basis13771.json"
theorem reductionProof13771 : EqualModuloRelations reduction13771.relations reduction13771.input reduction13771.output := by lin_cert using reduction13771.terms
theorem substitutionProof13771 : IsMapEvaluation generatorImages reduction13771.relations [0,0,0,0,1527] reduction13771.output := by lin_cert using reduction13771.terms
def map_17_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13914 : InImage map_17_223 image13914 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13914 : Bundle := named_bundle% "RealMapCertificates/relations/basis13914.json"
theorem reductionProof13914 : EqualModuloRelations reduction13914.relations reduction13914.input reduction13914.output := by lin_cert using reduction13914.terms
theorem substitutionProof13914 : IsMapEvaluation generatorImages reduction13914.relations [1617] reduction13914.output := by lin_cert using reduction13914.terms
def image13915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13915 : InImage map_17_223 image13915 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13915 : Bundle := named_bundle% "RealMapCertificates/relations/basis13915.json"
theorem reductionProof13915 : EqualModuloRelations reduction13915.relations reduction13915.input reduction13915.output := by lin_cert using reduction13915.terms
theorem substitutionProof13915 : IsMapEvaluation generatorImages reduction13915.relations [160,324] reduction13915.output := by lin_cert using reduction13915.terms
def image13916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13916 : InImage map_17_223 image13916 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13916 : Bundle := named_bundle% "RealMapCertificates/relations/basis13916.json"
theorem reductionProof13916 : EqualModuloRelations reduction13916.relations reduction13916.input reduction13916.output := by lin_cert using reduction13916.terms
theorem substitutionProof13916 : IsMapEvaluation generatorImages reduction13916.relations [0,0,7,1296] reduction13916.output := by lin_cert using reduction13916.terms
def map_17_224 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14112 : InImage map_17_224 image14112 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14112 : Bundle := named_bundle% "RealMapCertificates/relations/basis14112.json"
theorem reductionProof14112 : EqualModuloRelations reduction14112.relations reduction14112.input reduction14112.output := by lin_cert using reduction14112.terms
theorem substitutionProof14112 : IsMapEvaluation generatorImages reduction14112.relations [162,324] reduction14112.output := by lin_cert using reduction14112.terms
def image14113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14113 : InImage map_17_224 image14113 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14113 : Bundle := named_bundle% "RealMapCertificates/relations/basis14113.json"
theorem reductionProof14113 : EqualModuloRelations reduction14113.relations reduction14113.input reduction14113.output := by lin_cert using reduction14113.terms
theorem substitutionProof14113 : IsMapEvaluation generatorImages reduction14113.relations [2,13,1118] reduction14113.output := by lin_cert using reduction14113.terms
def map_17_225 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14328 : InImage map_17_225 image14328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14328 : Bundle := named_bundle% "RealMapCertificates/relations/basis14328.json"
theorem reductionProof14328 : EqualModuloRelations reduction14328.relations reduction14328.input reduction14328.output := by lin_cert using reduction14328.terms
theorem substitutionProof14328 : IsMapEvaluation generatorImages reduction14328.relations [1648] reduction14328.output := by lin_cert using reduction14328.terms
def image14329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14329 : InImage map_17_225 image14329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14329 : Bundle := named_bundle% "RealMapCertificates/relations/basis14329.json"
theorem reductionProof14329 : EqualModuloRelations reduction14329.relations reduction14329.input reduction14329.output := by lin_cert using reduction14329.terms
theorem substitutionProof14329 : IsMapEvaluation generatorImages reduction14329.relations [1647] reduction14329.output := by lin_cert using reduction14329.terms
def map_17_226 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14466 : InImage map_17_226 image14466 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14466 : Bundle := named_bundle% "RealMapCertificates/relations/basis14466.json"
theorem reductionProof14466 : EqualModuloRelations reduction14466.relations reduction14466.input reduction14466.output := by lin_cert using reduction14466.terms
theorem substitutionProof14466 : IsMapEvaluation generatorImages reduction14466.relations [1673] reduction14466.output := by lin_cert using reduction14466.terms
def image14467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14467 : InImage map_17_226 image14467 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14467 : Bundle := named_bundle% "RealMapCertificates/relations/basis14467.json"
theorem reductionProof14467 : EqualModuloRelations reduction14467.relations reduction14467.input reduction14467.output := by lin_cert using reduction14467.terms
theorem substitutionProof14467 : IsMapEvaluation generatorImages reduction14467.relations [1672] reduction14467.output := by lin_cert using reduction14467.terms
def image14468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14468 : InImage map_17_226 image14468 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14468 : Bundle := named_bundle% "RealMapCertificates/relations/basis14468.json"
theorem reductionProof14468 : EqualModuloRelations reduction14468.relations reduction14468.input reduction14468.output := by lin_cert using reduction14468.terms
theorem substitutionProof14468 : IsMapEvaluation generatorImages reduction14468.relations [166,324] reduction14468.output := by lin_cert using reduction14468.terms
def image14469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14469 : InImage map_17_226 image14469 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14469 : Bundle := named_bundle% "RealMapCertificates/relations/basis14469.json"
theorem reductionProof14469 : EqualModuloRelations reduction14469.relations reduction14469.input reduction14469.output := by lin_cert using reduction14469.terms
theorem substitutionProof14469 : IsMapEvaluation generatorImages reduction14469.relations [68,674] reduction14469.output := by lin_cert using reduction14469.terms
def image14470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14470 : InImage map_17_226 image14470 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14470 : Bundle := named_bundle% "RealMapCertificates/relations/basis14470.json"
theorem reductionProof14470 : EqualModuloRelations reduction14470.relations reduction14470.input reduction14470.output := by lin_cert using reduction14470.terms
theorem substitutionProof14470 : IsMapEvaluation generatorImages reduction14470.relations [1,1630] reduction14470.output := by lin_cert using reduction14470.terms
def image14471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14471 : InImage map_17_226 image14471 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14471 : Bundle := named_bundle% "RealMapCertificates/relations/basis14471.json"
theorem reductionProof14471 : EqualModuloRelations reduction14471.relations reduction14471.input reduction14471.output := by lin_cert using reduction14471.terms
theorem substitutionProof14471 : IsMapEvaluation generatorImages reduction14471.relations [0,0,0,0,1602] reduction14471.output := by lin_cert using reduction14471.terms
def map_17_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14684 : InImage map_17_227 image14684 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14684 : Bundle := named_bundle% "RealMapCertificates/relations/basis14684.json"
theorem reductionProof14684 : EqualModuloRelations reduction14684.relations reduction14684.input reduction14684.output := by lin_cert using reduction14684.terms
theorem substitutionProof14684 : IsMapEvaluation generatorImages reduction14684.relations [17,80,324] reduction14684.output := by lin_cert using reduction14684.terms
def image14685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14685 : InImage map_17_227 image14685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14685 : Bundle := named_bundle% "RealMapCertificates/relations/basis14685.json"
theorem reductionProof14685 : EqualModuloRelations reduction14685.relations reduction14685.input reduction14685.output := by lin_cert using reduction14685.terms
theorem substitutionProof14685 : IsMapEvaluation generatorImages reduction14685.relations [7,1387] reduction14685.output := by lin_cert using reduction14685.terms
def image14686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14686 : InImage map_17_227 image14686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14686 : Bundle := named_bundle% "RealMapCertificates/relations/basis14686.json"
theorem reductionProof14686 : EqualModuloRelations reduction14686.relations reduction14686.input reduction14686.output := by lin_cert using reduction14686.terms
theorem substitutionProof14686 : IsMapEvaluation generatorImages reduction14686.relations [0,1674] reduction14686.output := by lin_cert using reduction14686.terms
def image14687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14687 : InImage map_17_227 image14687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14687 : Bundle := named_bundle% "RealMapCertificates/relations/basis14687.json"
theorem reductionProof14687 : EqualModuloRelations reduction14687.relations reduction14687.input reduction14687.output := by lin_cert using reduction14687.terms
theorem substitutionProof14687 : IsMapEvaluation generatorImages reduction14687.relations [0,167,324] reduction14687.output := by lin_cert using reduction14687.terms
def image14688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14688 : InImage map_17_227 image14688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14688 : Bundle := named_bundle% "RealMapCertificates/relations/basis14688.json"
theorem reductionProof14688 : EqualModuloRelations reduction14688.relations reduction14688.input reduction14688.output := by lin_cert using reduction14688.terms
theorem substitutionProof14688 : IsMapEvaluation generatorImages reduction14688.relations [0,0,0,0,0,1603] reduction14688.output := by lin_cert using reduction14688.terms
def map_17_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14901 : InImage map_17_228 image14901 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14901 : Bundle := named_bundle% "RealMapCertificates/relations/basis14901.json"
theorem reductionProof14901 : EqualModuloRelations reduction14901.relations reduction14901.input reduction14901.output := by lin_cert using reduction14901.terms
theorem substitutionProof14901 : IsMapEvaluation generatorImages reduction14901.relations [1704] reduction14901.output := by lin_cert using reduction14901.terms
def image14902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14902 : InImage map_17_228 image14902 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14902 : Bundle := named_bundle% "RealMapCertificates/relations/basis14902.json"
theorem reductionProof14902 : EqualModuloRelations reduction14902.relations reduction14902.input reduction14902.output := by lin_cert using reduction14902.terms
theorem substitutionProof14902 : IsMapEvaluation generatorImages reduction14902.relations [1703] reduction14902.output := by lin_cert using reduction14902.terms
def image14903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14903 : InImage map_17_228 image14903 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14903 : Bundle := named_bundle% "RealMapCertificates/relations/basis14903.json"
theorem reductionProof14903 : EqualModuloRelations reduction14903.relations reduction14903.input reduction14903.output := by lin_cert using reduction14903.terms
theorem substitutionProof14903 : IsMapEvaluation generatorImages reduction14903.relations [1702] reduction14903.output := by lin_cert using reduction14903.terms
def image14904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14904 : InImage map_17_228 image14904 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14904 : Bundle := named_bundle% "RealMapCertificates/relations/basis14904.json"
theorem reductionProof14904 : EqualModuloRelations reduction14904.relations reduction14904.input reduction14904.output := by lin_cert using reduction14904.terms
theorem substitutionProof14904 : IsMapEvaluation generatorImages reduction14904.relations [174,333] reduction14904.output := by lin_cert using reduction14904.terms
def image14905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14905 : InImage map_17_228 image14905 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14905 : Bundle := named_bundle% "RealMapCertificates/relations/basis14905.json"
theorem reductionProof14905 : EqualModuloRelations reduction14905.relations reduction14905.input reduction14905.output := by lin_cert using reduction14905.terms
theorem substitutionProof14905 : IsMapEvaluation generatorImages reduction14905.relations [0,172,324] reduction14905.output := by lin_cert using reduction14905.terms
def map_17_229 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15063 : InImage map_17_229 image15063 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15063 : Bundle := named_bundle% "RealMapCertificates/relations/basis15063.json"
theorem reductionProof15063 : EqualModuloRelations reduction15063.relations reduction15063.input reduction15063.output := by lin_cert using reduction15063.terms
theorem substitutionProof15063 : IsMapEvaluation generatorImages reduction15063.relations [1729] reduction15063.output := by lin_cert using reduction15063.terms
def image15064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15064 : InImage map_17_229 image15064 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15064 : Bundle := named_bundle% "RealMapCertificates/relations/basis15064.json"
theorem reductionProof15064 : EqualModuloRelations reduction15064.relations reduction15064.input reduction15064.output := by lin_cert using reduction15064.terms
theorem substitutionProof15064 : IsMapEvaluation generatorImages reduction15064.relations [180,324] reduction15064.output := by lin_cert using reduction15064.terms
def image15065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15065 : InImage map_17_229 image15065 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15065 : Bundle := named_bundle% "RealMapCertificates/relations/basis15065.json"
theorem reductionProof15065 : EqualModuloRelations reduction15065.relations reduction15065.input reduction15065.output := by lin_cert using reduction15065.terms
theorem substitutionProof15065 : IsMapEvaluation generatorImages reduction15065.relations [1,172,324] reduction15065.output := by lin_cert using reduction15065.terms
def image15066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15066 : InImage map_17_229 image15066 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15066 : Bundle := named_bundle% "RealMapCertificates/relations/basis15066.json"
theorem reductionProof15066 : EqualModuloRelations reduction15066.relations reduction15066.input reduction15066.output := by lin_cert using reduction15066.terms
theorem substitutionProof15066 : IsMapEvaluation generatorImages reduction15066.relations [0,1705] reduction15066.output := by lin_cert using reduction15066.terms
def image15067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15067 : InImage map_17_229 image15067 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15067 : Bundle := named_bundle% "RealMapCertificates/relations/basis15067.json"
theorem reductionProof15067 : EqualModuloRelations reduction15067.relations reduction15067.input reduction15067.output := by lin_cert using reduction15067.terms
theorem substitutionProof15067 : IsMapEvaluation generatorImages reduction15067.relations [0,0,0,169,324] reduction15067.output := by lin_cert using reduction15067.terms
def map_17_230 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15286 : InImage map_17_230 image15286 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15286 : Bundle := named_bundle% "RealMapCertificates/relations/basis15286.json"
theorem reductionProof15286 : EqualModuloRelations reduction15286.relations reduction15286.input reduction15286.output := by lin_cert using reduction15286.terms
theorem substitutionProof15286 : IsMapEvaluation generatorImages reduction15286.relations [1744] reduction15286.output := by lin_cert using reduction15286.terms
def image15287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15287 : InImage map_17_230 image15287 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15287 : Bundle := named_bundle% "RealMapCertificates/relations/basis15287.json"
theorem reductionProof15287 : EqualModuloRelations reduction15287.relations reduction15287.input reduction15287.output := by lin_cert using reduction15287.terms
theorem substitutionProof15287 : IsMapEvaluation generatorImages reduction15287.relations [68,719] reduction15287.output := by lin_cert using reduction15287.terms
def image15288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15288 : InImage map_17_230 image15288 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15288 : Bundle := named_bundle% "RealMapCertificates/relations/basis15288.json"
theorem reductionProof15288 : EqualModuloRelations reduction15288.relations reduction15288.input reduction15288.output := by lin_cert using reduction15288.terms
theorem substitutionProof15288 : IsMapEvaluation generatorImages reduction15288.relations [20,80,324] reduction15288.output := by lin_cert using reduction15288.terms
def image15289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15289 : InImage map_17_230 image15289 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15289 : Bundle := named_bundle% "RealMapCertificates/relations/basis15289.json"
theorem reductionProof15289 : EqualModuloRelations reduction15289.relations reduction15289.input reduction15289.output := by lin_cert using reduction15289.terms
theorem substitutionProof15289 : IsMapEvaluation generatorImages reduction15289.relations [7,1449] reduction15289.output := by lin_cert using reduction15289.terms
def image15290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15290 : InImage map_17_230 image15290 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15290 : Bundle := named_bundle% "RealMapCertificates/relations/basis15290.json"
theorem reductionProof15290 : EqualModuloRelations reduction15290.relations reduction15290.input reduction15290.output := by lin_cert using reduction15290.terms
theorem substitutionProof15290 : IsMapEvaluation generatorImages reduction15290.relations [1,1707] reduction15290.output := by lin_cert using reduction15290.terms
def image15291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15291 : InImage map_17_230 image15291 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15291 : Bundle := named_bundle% "RealMapCertificates/relations/basis15291.json"
theorem reductionProof15291 : EqualModuloRelations reduction15291.relations reduction15291.input reduction15291.output := by lin_cert using reduction15291.terms
theorem substitutionProof15291 : IsMapEvaluation generatorImages reduction15291.relations [0,0,176,324] reduction15291.output := by lin_cert using reduction15291.terms
def map_17_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15539 : InImage map_17_231 image15539 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15539 : Bundle := named_bundle% "RealMapCertificates/relations/basis15539.json"
theorem reductionProof15539 : EqualModuloRelations reduction15539.relations reduction15539.input reduction15539.output := by lin_cert using reduction15539.terms
theorem substitutionProof15539 : IsMapEvaluation generatorImages reduction15539.relations [0,1745] reduction15539.output := by lin_cert using reduction15539.terms
def image15540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15540 : InImage map_17_231 image15540 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15540 : Bundle := named_bundle% "RealMapCertificates/relations/basis15540.json"
theorem reductionProof15540 : EqualModuloRelations reduction15540.relations reduction15540.input reduction15540.output := by lin_cert using reduction15540.terms
theorem substitutionProof15540 : IsMapEvaluation generatorImages reduction15540.relations [0,174,352] reduction15540.output := by lin_cert using reduction15540.terms
def image15541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15541 : InImage map_17_231 image15541 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15541 : Bundle := named_bundle% "RealMapCertificates/relations/basis15541.json"
theorem reductionProof15541 : EqualModuloRelations reduction15541.relations reduction15541.input reduction15541.output := by lin_cert using reduction15541.terms
theorem substitutionProof15541 : IsMapEvaluation generatorImages reduction15541.relations [0,0,1731] reduction15541.output := by lin_cert using reduction15541.terms
def map_17_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15706 : InImage map_17_232 image15706 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15706 : Bundle := named_bundle% "RealMapCertificates/relations/basis15706.json"
theorem reductionProof15706 : EqualModuloRelations reduction15706.relations reduction15706.input reduction15706.output := by lin_cert using reduction15706.terms
theorem substitutionProof15706 : IsMapEvaluation generatorImages reduction15706.relations [1793] reduction15706.output := by lin_cert using reduction15706.terms
def image15707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15707 : InImage map_17_232 image15707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15707 : Bundle := named_bundle% "RealMapCertificates/relations/basis15707.json"
theorem reductionProof15707 : EqualModuloRelations reduction15707.relations reduction15707.input reduction15707.output := by lin_cert using reduction15707.terms
theorem substitutionProof15707 : IsMapEvaluation generatorImages reduction15707.relations [194,324] reduction15707.output := by lin_cert using reduction15707.terms
def map_17_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15934 : InImage map_17_233 image15934 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15934 : Bundle := named_bundle% "RealMapCertificates/relations/basis15934.json"
theorem reductionProof15934 : EqualModuloRelations reduction15934.relations reduction15934.input reduction15934.output := by lin_cert using reduction15934.terms
theorem substitutionProof15934 : IsMapEvaluation generatorImages reduction15934.relations [1821] reduction15934.output := by lin_cert using reduction15934.terms
def image15935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15935 : InImage map_17_233 image15935 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15935 : Bundle := named_bundle% "RealMapCertificates/relations/basis15935.json"
theorem reductionProof15935 : EqualModuloRelations reduction15935.relations reduction15935.input reduction15935.output := by lin_cert using reduction15935.terms
theorem substitutionProof15935 : IsMapEvaluation generatorImages reduction15935.relations [74,719] reduction15935.output := by lin_cert using reduction15935.terms
def image15936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15936 : InImage map_17_233 image15936 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15936 : Bundle := named_bundle% "RealMapCertificates/relations/basis15936.json"
theorem reductionProof15936 : EqualModuloRelations reduction15936.relations reduction15936.input reduction15936.output := by lin_cert using reduction15936.terms
theorem substitutionProof15936 : IsMapEvaluation generatorImages reduction15936.relations [67,757] reduction15936.output := by lin_cert using reduction15936.terms
def image15937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15937 : InImage map_17_233 image15937 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15937 : Bundle := named_bundle% "RealMapCertificates/relations/basis15937.json"
theorem reductionProof15937 : EqualModuloRelations reduction15937.relations reduction15937.input reduction15937.output := by lin_cert using reduction15937.terms
theorem substitutionProof15937 : IsMapEvaluation generatorImages reduction15937.relations [67,756] reduction15937.output := by lin_cert using reduction15937.terms
def image15938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15938 : InImage map_17_233 image15938 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15938 : Bundle := named_bundle% "RealMapCertificates/relations/basis15938.json"
theorem reductionProof15938 : EqualModuloRelations reduction15938.relations reduction15938.input reduction15938.output := by lin_cert using reduction15938.terms
theorem substitutionProof15938 : IsMapEvaluation generatorImages reduction15938.relations [22,80,324] reduction15938.output := by lin_cert using reduction15938.terms
def image15939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15939 : InImage map_17_233 image15939 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15939 : Bundle := named_bundle% "RealMapCertificates/relations/basis15939.json"
theorem reductionProof15939 : EqualModuloRelations reduction15939.relations reduction15939.input reduction15939.output := by lin_cert using reduction15939.terms
theorem substitutionProof15939 : IsMapEvaluation generatorImages reduction15939.relations [0,1794] reduction15939.output := by lin_cert using reduction15939.terms
def map_17_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16185 : InImage map_17_234 image16185 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16185 : Bundle := named_bundle% "RealMapCertificates/relations/basis16185.json"
theorem reductionProof16185 : EqualModuloRelations reduction16185.relations reduction16185.input reduction16185.output := by lin_cert using reduction16185.terms
theorem substitutionProof16185 : IsMapEvaluation generatorImages reduction16185.relations [76,732] reduction16185.output := by lin_cert using reduction16185.terms
def image16186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16186 : InImage map_17_234 image16186 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16186 : Bundle := named_bundle% "RealMapCertificates/relations/basis16186.json"
theorem reductionProof16186 : EqualModuloRelations reduction16186.relations reduction16186.input reduction16186.output := by lin_cert using reduction16186.terms
theorem substitutionProof16186 : IsMapEvaluation generatorImages reduction16186.relations [75,734] reduction16186.output := by lin_cert using reduction16186.terms
def image16187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16187 : InImage map_17_234 image16187 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16187 : Bundle := named_bundle% "RealMapCertificates/relations/basis16187.json"
theorem reductionProof16187 : EqualModuloRelations reduction16187.relations reduction16187.input reduction16187.output := by lin_cert using reduction16187.terms
theorem substitutionProof16187 : IsMapEvaluation generatorImages reduction16187.relations [0,1822] reduction16187.output := by lin_cert using reduction16187.terms
def image16188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16188 : InImage map_17_234 image16188 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16188 : Bundle := named_bundle% "RealMapCertificates/relations/basis16188.json"
theorem reductionProof16188 : EqualModuloRelations reduction16188.relations reduction16188.input reduction16188.output := by lin_cert using reduction16188.terms
theorem substitutionProof16188 : IsMapEvaluation generatorImages reduction16188.relations [0,0,1796] reduction16188.output := by lin_cert using reduction16188.terms
def image16189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16189 : InImage map_17_234 image16189 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16189 : Bundle := named_bundle% "RealMapCertificates/relations/basis16189.json"
theorem reductionProof16189 : EqualModuloRelations reduction16189.relations reduction16189.input reduction16189.output := by lin_cert using reduction16189.terms
theorem substitutionProof16189 : IsMapEvaluation generatorImages reduction16189.relations [0,0,1795] reduction16189.output := by lin_cert using reduction16189.terms
def image16190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16190 : InImage map_17_234 image16190 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16190 : Bundle := named_bundle% "RealMapCertificates/relations/basis16190.json"
theorem reductionProof16190 : EqualModuloRelations reduction16190.relations reduction16190.input reduction16190.output := by lin_cert using reduction16190.terms
theorem substitutionProof16190 : IsMapEvaluation generatorImages reduction16190.relations [0,0,0,0,187,324] reduction16190.output := by lin_cert using reduction16190.terms
def map_17_235 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16373 : InImage map_17_235 image16373 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16373 : Bundle := named_bundle% "RealMapCertificates/relations/basis16373.json"
theorem reductionProof16373 : EqualModuloRelations reduction16373.relations reduction16373.input reduction16373.output := by lin_cert using reduction16373.terms
theorem substitutionProof16373 : IsMapEvaluation generatorImages reduction16373.relations [1877] reduction16373.output := by lin_cert using reduction16373.terms
def image16374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16374 : InImage map_17_235 image16374 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16374 : Bundle := named_bundle% "RealMapCertificates/relations/basis16374.json"
theorem reductionProof16374 : EqualModuloRelations reduction16374.relations reduction16374.input reduction16374.output := by lin_cert using reduction16374.terms
theorem substitutionProof16374 : IsMapEvaluation generatorImages reduction16374.relations [1876] reduction16374.output := by lin_cert using reduction16374.terms
def image16375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16375 : InImage map_17_235 image16375 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16375 : Bundle := named_bundle% "RealMapCertificates/relations/basis16375.json"
theorem reductionProof16375 : EqualModuloRelations reduction16375.relations reduction16375.input reduction16375.output := by lin_cert using reduction16375.terms
theorem substitutionProof16375 : IsMapEvaluation generatorImages reduction16375.relations [1875] reduction16375.output := by lin_cert using reduction16375.terms
def image16376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16376 : InImage map_17_235 image16376 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16376 : Bundle := named_bundle% "RealMapCertificates/relations/basis16376.json"
theorem reductionProof16376 : EqualModuloRelations reduction16376.relations reduction16376.input reduction16376.output := by lin_cert using reduction16376.terms
theorem substitutionProof16376 : IsMapEvaluation generatorImages reduction16376.relations [190,373] reduction16376.output := by lin_cert using reduction16376.terms
def image16377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16377 : InImage map_17_235 image16377 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16377 : Bundle := named_bundle% "RealMapCertificates/relations/basis16377.json"
theorem reductionProof16377 : EqualModuloRelations reduction16377.relations reduction16377.input reduction16377.output := by lin_cert using reduction16377.terms
theorem substitutionProof16377 : IsMapEvaluation generatorImages reduction16377.relations [1,1823] reduction16377.output := by lin_cert using reduction16377.terms
def image16378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16378 : InImage map_17_235 image16378 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16378 : Bundle := named_bundle% "RealMapCertificates/relations/basis16378.json"
theorem reductionProof16378 : EqualModuloRelations reduction16378.relations reduction16378.input reduction16378.output := by lin_cert using reduction16378.terms
theorem substitutionProof16378 : IsMapEvaluation generatorImages reduction16378.relations [0,1844] reduction16378.output := by lin_cert using reduction16378.terms
def image16379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16379 : InImage map_17_235 image16379 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16379 : Bundle := named_bundle% "RealMapCertificates/relations/basis16379.json"
theorem reductionProof16379 : EqualModuloRelations reduction16379.relations reduction16379.input reduction16379.output := by lin_cert using reduction16379.terms
theorem substitutionProof16379 : IsMapEvaluation generatorImages reduction16379.relations [0,0,0,0,0,188,324] reduction16379.output := by lin_cert using reduction16379.terms
def map_17_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16609 : InImage map_17_236 image16609 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16609 : Bundle := named_bundle% "RealMapCertificates/relations/basis16609.json"
theorem reductionProof16609 : EqualModuloRelations reduction16609.relations reduction16609.input reduction16609.output := by lin_cert using reduction16609.terms
theorem substitutionProof16609 : IsMapEvaluation generatorImages reduction16609.relations [23,89,324] reduction16609.output := by lin_cert using reduction16609.terms
def image16610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16610 : InImage map_17_236 image16610 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16610 : Bundle := named_bundle% "RealMapCertificates/relations/basis16610.json"
theorem reductionProof16610 : EqualModuloRelations reduction16610.relations reduction16610.input reduction16610.output := by lin_cert using reduction16610.terms
theorem substitutionProof16610 : IsMapEvaluation generatorImages reduction16610.relations [0,1878] reduction16610.output := by lin_cert using reduction16610.terms
def image16611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16611 : InImage map_17_236 image16611 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16611 : Bundle := named_bundle% "RealMapCertificates/relations/basis16611.json"
theorem reductionProof16611 : EqualModuloRelations reduction16611.relations reduction16611.input reduction16611.output := by lin_cert using reduction16611.terms
theorem substitutionProof16611 : IsMapEvaluation generatorImages reduction16611.relations [0,203,333] reduction16611.output := by lin_cert using reduction16611.terms
def image16612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16612 : InImage map_17_236 image16612 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16612 : Bundle := named_bundle% "RealMapCertificates/relations/basis16612.json"
theorem reductionProof16612 : EqualModuloRelations reduction16612.relations reduction16612.input reduction16612.output := by lin_cert using reduction16612.terms
theorem substitutionProof16612 : IsMapEvaluation generatorImages reduction16612.relations [0,197,352] reduction16612.output := by lin_cert using reduction16612.terms
def map_17_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16856 : InImage map_17_237 image16856 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16856 : Bundle := named_bundle% "RealMapCertificates/relations/basis16856.json"
theorem reductionProof16856 : EqualModuloRelations reduction16856.relations reduction16856.input reduction16856.output := by lin_cert using reduction16856.terms
theorem substitutionProof16856 : IsMapEvaluation generatorImages reduction16856.relations [1918] reduction16856.output := by lin_cert using reduction16856.terms
def image16857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16857 : InImage map_17_237 image16857 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16857 : Bundle := named_bundle% "RealMapCertificates/relations/basis16857.json"
theorem reductionProof16857 : EqualModuloRelations reduction16857.relations reduction16857.input reduction16857.output := by lin_cert using reduction16857.terms
theorem substitutionProof16857 : IsMapEvaluation generatorImages reduction16857.relations [1917] reduction16857.output := by lin_cert using reduction16857.terms
def image16858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16858 : InImage map_17_237 image16858 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16858 : Bundle := named_bundle% "RealMapCertificates/relations/basis16858.json"
theorem reductionProof16858 : EqualModuloRelations reduction16858.relations reduction16858.input reduction16858.output := by lin_cert using reduction16858.terms
theorem substitutionProof16858 : IsMapEvaluation generatorImages reduction16858.relations [0,1896] reduction16858.output := by lin_cert using reduction16858.terms
def image16859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16859 : InImage map_17_237 image16859 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16859 : Bundle := named_bundle% "RealMapCertificates/relations/basis16859.json"
theorem reductionProof16859 : EqualModuloRelations reduction16859.relations reduction16859.input reduction16859.output := by lin_cert using reduction16859.terms
theorem substitutionProof16859 : IsMapEvaluation generatorImages reduction16859.relations [0,0,1879] reduction16859.output := by lin_cert using reduction16859.terms
def map_17_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17044 : InImage map_17_238 image17044 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17044 : Bundle := named_bundle% "RealMapCertificates/relations/basis17044.json"
theorem reductionProof17044 : EqualModuloRelations reduction17044.relations reduction17044.input reduction17044.output := by lin_cert using reduction17044.terms
theorem substitutionProof17044 : IsMapEvaluation generatorImages reduction17044.relations [1950] reduction17044.output := by lin_cert using reduction17044.terms
def image17045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17045 : InImage map_17_238 image17045 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17045 : Bundle := named_bundle% "RealMapCertificates/relations/basis17045.json"
theorem reductionProof17045 : EqualModuloRelations reduction17045.relations reduction17045.input reduction17045.output := by lin_cert using reduction17045.terms
theorem substitutionProof17045 : IsMapEvaluation generatorImages reduction17045.relations [220,324] reduction17045.output := by lin_cert using reduction17045.terms
def image17046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17046 : InImage map_17_238 image17046 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17046 : Bundle := named_bundle% "RealMapCertificates/relations/basis17046.json"
theorem reductionProof17046 : EqualModuloRelations reduction17046.relations reduction17046.input reduction17046.output := by lin_cert using reduction17046.terms
theorem substitutionProof17046 : IsMapEvaluation generatorImages reduction17046.relations [3,1745] reduction17046.output := by lin_cert using reduction17046.terms
def image17047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17047 : InImage map_17_238 image17047 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17047 : Bundle := named_bundle% "RealMapCertificates/relations/basis17047.json"
theorem reductionProof17047 : EqualModuloRelations reduction17047.relations reduction17047.input reduction17047.output := by lin_cert using reduction17047.terms
theorem substitutionProof17047 : IsMapEvaluation generatorImages reduction17047.relations [3,174,352] reduction17047.output := by lin_cert using reduction17047.terms
def image17048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17048 : InImage map_17_238 image17048 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17048 : Bundle := named_bundle% "RealMapCertificates/relations/basis17048.json"
theorem reductionProof17048 : EqualModuloRelations reduction17048.relations reduction17048.input reduction17048.output := by lin_cert using reduction17048.terms
theorem substitutionProof17048 : IsMapEvaluation generatorImages reduction17048.relations [0,1919] reduction17048.output := by lin_cert using reduction17048.terms
def image17049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17049 : InImage map_17_238 image17049 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17049 : Bundle := named_bundle% "RealMapCertificates/relations/basis17049.json"
theorem reductionProof17049 : EqualModuloRelations reduction17049.relations reduction17049.input reduction17049.output := by lin_cert using reduction17049.terms
theorem substitutionProof17049 : IsMapEvaluation generatorImages reduction17049.relations [0,3,1731] reduction17049.output := by lin_cert using reduction17049.terms
def map_17_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17305 : InImage map_17_239 image17305 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17305 : Bundle := named_bundle% "RealMapCertificates/relations/basis17305.json"
theorem reductionProof17305 : EqualModuloRelations reduction17305.relations reduction17305.input reduction17305.output := by lin_cert using reduction17305.terms
theorem substitutionProof17305 : IsMapEvaluation generatorImages reduction17305.relations [1977] reduction17305.output := by lin_cert using reduction17305.terms
def image17306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17306 : InImage map_17_239 image17306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17306 : Bundle := named_bundle% "RealMapCertificates/relations/basis17306.json"
theorem reductionProof17306 : EqualModuloRelations reduction17306.relations reduction17306.input reduction17306.output := by lin_cert using reduction17306.terms
theorem substitutionProof17306 : IsMapEvaluation generatorImages reduction17306.relations [1976] reduction17306.output := by lin_cert using reduction17306.terms
def image17307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17307 : InImage map_17_239 image17307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17307 : Bundle := named_bundle% "RealMapCertificates/relations/basis17307.json"
theorem reductionProof17307 : EqualModuloRelations reduction17307.relations reduction17307.input reduction17307.output := by lin_cert using reduction17307.terms
theorem substitutionProof17307 : IsMapEvaluation generatorImages reduction17307.relations [23,101,324] reduction17307.output := by lin_cert using reduction17307.terms
def image17308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17308 : InImage map_17_239 image17308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17308 : Bundle := named_bundle% "RealMapCertificates/relations/basis17308.json"
theorem reductionProof17308 : EqualModuloRelations reduction17308.relations reduction17308.input reduction17308.output := by lin_cert using reduction17308.terms
theorem substitutionProof17308 : IsMapEvaluation generatorImages reduction17308.relations [1,215,324] reduction17308.output := by lin_cert using reduction17308.terms
def image17309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17309 : InImage map_17_239 image17309 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17309 : Bundle := named_bundle% "RealMapCertificates/relations/basis17309.json"
theorem reductionProof17309 : EqualModuloRelations reduction17309.relations reduction17309.input reduction17309.output := by lin_cert using reduction17309.terms
theorem substitutionProof17309 : IsMapEvaluation generatorImages reduction17309.relations [0,0,3,1732] reduction17309.output := by lin_cert using reduction17309.terms
def map_17_240 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image17575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17575 : InImage map_17_240 image17575 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction17575 : Bundle := named_bundle% "RealMapCertificates/relations/basis17575.json"
theorem reductionProof17575 : EqualModuloRelations reduction17575.relations reduction17575.input reduction17575.output := by lin_cert using reduction17575.terms
theorem substitutionProof17575 : IsMapEvaluation generatorImages reduction17575.relations [2020] reduction17575.output := by lin_cert using reduction17575.terms
def image17576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17576 : InImage map_17_240 image17576 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction17576 : Bundle := named_bundle% "RealMapCertificates/relations/basis17576.json"
theorem reductionProof17576 : EqualModuloRelations reduction17576.relations reduction17576.input reduction17576.output := by lin_cert using reduction17576.terms
theorem substitutionProof17576 : IsMapEvaluation generatorImages reduction17576.relations [2019] reduction17576.output := by lin_cert using reduction17576.terms
def image17577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17577 : InImage map_17_240 image17577 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction17577 : Bundle := named_bundle% "RealMapCertificates/relations/basis17577.json"
theorem reductionProof17577 : EqualModuloRelations reduction17577.relations reduction17577.input reduction17577.output := by lin_cert using reduction17577.terms
theorem substitutionProof17577 : IsMapEvaluation generatorImages reduction17577.relations [2018] reduction17577.output := by lin_cert using reduction17577.terms
def image17578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17578 : InImage map_17_240 image17578 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction17578 : Bundle := named_bundle% "RealMapCertificates/relations/basis17578.json"
theorem reductionProof17578 : EqualModuloRelations reduction17578.relations reduction17578.input reduction17578.output := by lin_cert using reduction17578.terms
theorem substitutionProof17578 : IsMapEvaluation generatorImages reduction17578.relations [2017] reduction17578.output := by lin_cert using reduction17578.terms
def image17579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17579 : InImage map_17_240 image17579 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction17579 : Bundle := named_bundle% "RealMapCertificates/relations/basis17579.json"
theorem reductionProof17579 : EqualModuloRelations reduction17579.relations reduction17579.input reduction17579.output := by lin_cert using reduction17579.terms
theorem substitutionProof17579 : IsMapEvaluation generatorImages reduction17579.relations [2016] reduction17579.output := by lin_cert using reduction17579.terms
def image17580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17580 : InImage map_17_240 image17580 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction17580 : Bundle := named_bundle% "RealMapCertificates/relations/basis17580.json"
theorem reductionProof17580 : EqualModuloRelations reduction17580.relations reduction17580.input reduction17580.output := by lin_cert using reduction17580.terms
theorem substitutionProof17580 : IsMapEvaluation generatorImages reduction17580.relations [2015] reduction17580.output := by lin_cert using reduction17580.terms
def image17581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17581 : InImage map_17_240 image17581 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction17581 : Bundle := named_bundle% "RealMapCertificates/relations/basis17581.json"
theorem reductionProof17581 : EqualModuloRelations reduction17581.relations reduction17581.input reduction17581.output := by lin_cert using reduction17581.terms
theorem substitutionProof17581 : IsMapEvaluation generatorImages reduction17581.relations [43,1057] reduction17581.output := by lin_cert using reduction17581.terms
def image17582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17582 : InImage map_17_240 image17582 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction17582 : Bundle := named_bundle% "RealMapCertificates/relations/basis17582.json"
theorem reductionProof17582 : EqualModuloRelations reduction17582.relations reduction17582.input reduction17582.output := by lin_cert using reduction17582.terms
theorem substitutionProof17582 : IsMapEvaluation generatorImages reduction17582.relations [3,1794] reduction17582.output := by lin_cert using reduction17582.terms
def image17583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17583 : InImage map_17_240 image17583 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction17583 : Bundle := named_bundle% "RealMapCertificates/relations/basis17583.json"
theorem reductionProof17583 : EqualModuloRelations reduction17583.relations reduction17583.input reduction17583.output := by lin_cert using reduction17583.terms
theorem substitutionProof17583 : IsMapEvaluation generatorImages reduction17583.relations [0,226,324] reduction17583.output := by lin_cert using reduction17583.terms
end RealMapCertificates
