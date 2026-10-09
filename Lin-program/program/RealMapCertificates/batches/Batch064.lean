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
  | 9 => [[8]]
  | 13 => [[9]]
  | 23 => [[7,7]]
  | 43 => []
  | 70 => []
  | 75 => []
  | 83 => []
  | 191 => []
  | 197 => []
  | 203 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 226 => []
  | 254 => []
  | 255 => []
  | 266 => []
  | 267 => []
  | 293 => []
  | 302 => []
  | 303 => []
  | 318 => []
  | 324 => []
  | 352 => []
  | 376 => []
  | 544 => []
  | 1057 => []
  | 1091 => []
  | 1118 => []
  | 1120 => []
  | 1731 => []
  | 1732 => []
  | 1795 => []
  | 1796 => []
  | 1798 => []
  | 1801 => []
  | 1848 => []
  | 1878 => []
  | 1979 => []
  | 1981 => []
  | 1982 => []
  | 2021 => []
  | 2023 => []
  | 2055 => []
  | 2073 => []
  | 2074 => []
  | 2075 => []
  | 2076 => []
  | 2077 => []
  | 2114 => []
  | 2115 => []
  | 2145 => []
  | 2146 => []
  | 2147 => []
  | 2148 => []
  | 2184 => []
  | 2185 => []
  | 2186 => []
  | 2228 => []
  | 2229 => []
  | 2230 => []
  | 2231 => []
  | 2232 => []
  | 2268 => []
  | 2269 => []
  | 2270 => []
  | 2271 => []
  | 2294 => []
  | 2295 => []
  | 2363 => []
  | 2364 => []
  | 2365 => []
  | 2367 => []
  | 2370 => []
  | 2397 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2474 => []
  | 2475 => []
  | 2476 => []
  | 2478 => []
  | 2480 => []
  | 2522 => []
  | 2523 => []
  | 2567 => []
  | 2568 => []
  | 2569 => []
  | 2570 => []
  | 2571 => []
  | 2572 => []
  | 2614 => []
  | 2615 => []
  | 2616 => []
  | 2617 => []
  | 2658 => []
  | 2659 => []
  | 2660 => []
  | 2661 => []
  | _ => []
def map_17_241 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17821 : InImage map_17_241 image17821 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17821 : Bundle := named_bundle% "RealMapCertificates/relations/basis17821.json"
theorem reductionProof17821 : EqualModuloRelations reduction17821.relations reduction17821.input reduction17821.output := by lin_cert using reduction17821.terms
theorem substitutionProof17821 : IsMapEvaluation generatorImages reduction17821.relations [2055] reduction17821.output := by lin_cert using reduction17821.terms
def image17822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17822 : InImage map_17_241 image17822 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17822 : Bundle := named_bundle% "RealMapCertificates/relations/basis17822.json"
theorem reductionProof17822 : EqualModuloRelations reduction17822.relations reduction17822.input reduction17822.output := by lin_cert using reduction17822.terms
theorem substitutionProof17822 : IsMapEvaluation generatorImages reduction17822.relations [213,376] reduction17822.output := by lin_cert using reduction17822.terms
def image17823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17823 : InImage map_17_241 image17823 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17823 : Bundle := named_bundle% "RealMapCertificates/relations/basis17823.json"
theorem reductionProof17823 : EqualModuloRelations reduction17823.relations reduction17823.input reduction17823.output := by lin_cert using reduction17823.terms
theorem substitutionProof17823 : IsMapEvaluation generatorImages reduction17823.relations [0,2023] reduction17823.output := by lin_cert using reduction17823.terms
def image17824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17824 : InImage map_17_241 image17824 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17824 : Bundle := named_bundle% "RealMapCertificates/relations/basis17824.json"
theorem reductionProof17824 : EqualModuloRelations reduction17824.relations reduction17824.input reduction17824.output := by lin_cert using reduction17824.terms
theorem substitutionProof17824 : IsMapEvaluation generatorImages reduction17824.relations [0,3,1796] reduction17824.output := by lin_cert using reduction17824.terms
def image17825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17825 : InImage map_17_241 image17825 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17825 : Bundle := named_bundle% "RealMapCertificates/relations/basis17825.json"
theorem reductionProof17825 : EqualModuloRelations reduction17825.relations reduction17825.input reduction17825.output := by lin_cert using reduction17825.terms
theorem substitutionProof17825 : IsMapEvaluation generatorImages reduction17825.relations [0,3,1795] reduction17825.output := by lin_cert using reduction17825.terms
def image17826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17826 : InImage map_17_241 image17826 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17826 : Bundle := named_bundle% "RealMapCertificates/relations/basis17826.json"
theorem reductionProof17826 : EqualModuloRelations reduction17826.relations reduction17826.input reduction17826.output := by lin_cert using reduction17826.terms
theorem substitutionProof17826 : IsMapEvaluation generatorImages reduction17826.relations [0,0,1981] reduction17826.output := by lin_cert using reduction17826.terms
def image17827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17827 : InImage map_17_241 image17827 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17827 : Bundle := named_bundle% "RealMapCertificates/relations/basis17827.json"
theorem reductionProof17827 : EqualModuloRelations reduction17827.relations reduction17827.input reduction17827.output := by lin_cert using reduction17827.terms
theorem substitutionProof17827 : IsMapEvaluation generatorImages reduction17827.relations [0,0,1979] reduction17827.output := by lin_cert using reduction17827.terms
def image17828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17828 : InImage map_17_241 image17828 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17828 : Bundle := named_bundle% "RealMapCertificates/relations/basis17828.json"
theorem reductionProof17828 : EqualModuloRelations reduction17828.relations reduction17828.input reduction17828.output := by lin_cert using reduction17828.terms
theorem substitutionProof17828 : IsMapEvaluation generatorImages reduction17828.relations [0,0,0,0,0,0,209,324] reduction17828.output := by lin_cert using reduction17828.terms
def map_17_242 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18084 : InImage map_17_242 image18084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18084 : Bundle := named_bundle% "RealMapCertificates/relations/basis18084.json"
theorem reductionProof18084 : EqualModuloRelations reduction18084.relations reduction18084.input reduction18084.output := by lin_cert using reduction18084.terms
theorem substitutionProof18084 : IsMapEvaluation generatorImages reduction18084.relations [2076] reduction18084.output := by lin_cert using reduction18084.terms
def image18085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18085 : InImage map_17_242 image18085 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18085 : Bundle := named_bundle% "RealMapCertificates/relations/basis18085.json"
theorem reductionProof18085 : EqualModuloRelations reduction18085.relations reduction18085.input reduction18085.output := by lin_cert using reduction18085.terms
theorem substitutionProof18085 : IsMapEvaluation generatorImages reduction18085.relations [2075] reduction18085.output := by lin_cert using reduction18085.terms
def image18086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18086 : InImage map_17_242 image18086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18086 : Bundle := named_bundle% "RealMapCertificates/relations/basis18086.json"
theorem reductionProof18086 : EqualModuloRelations reduction18086.relations reduction18086.input reduction18086.output := by lin_cert using reduction18086.terms
theorem substitutionProof18086 : IsMapEvaluation generatorImages reduction18086.relations [2074] reduction18086.output := by lin_cert using reduction18086.terms
def image18087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18087 : InImage map_17_242 image18087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18087 : Bundle := named_bundle% "RealMapCertificates/relations/basis18087.json"
theorem reductionProof18087 : EqualModuloRelations reduction18087.relations reduction18087.input reduction18087.output := by lin_cert using reduction18087.terms
theorem substitutionProof18087 : IsMapEvaluation generatorImages reduction18087.relations [2073] reduction18087.output := by lin_cert using reduction18087.terms
def image18088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18088 : InImage map_17_242 image18088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18088 : Bundle := named_bundle% "RealMapCertificates/relations/basis18088.json"
theorem reductionProof18088 : EqualModuloRelations reduction18088.relations reduction18088.input reduction18088.output := by lin_cert using reduction18088.terms
theorem substitutionProof18088 : IsMapEvaluation generatorImages reduction18088.relations [43,1091] reduction18088.output := by lin_cert using reduction18088.terms
def map_17_243 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18356 : InImage map_17_243 image18356 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18356 : Bundle := named_bundle% "RealMapCertificates/relations/basis18356.json"
theorem reductionProof18356 : EqualModuloRelations reduction18356.relations reduction18356.input reduction18356.output := by lin_cert using reduction18356.terms
theorem substitutionProof18356 : IsMapEvaluation generatorImages reduction18356.relations [2114] reduction18356.output := by lin_cert using reduction18356.terms
def image18357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18357 : InImage map_17_243 image18357 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18357 : Bundle := named_bundle% "RealMapCertificates/relations/basis18357.json"
theorem reductionProof18357 : EqualModuloRelations reduction18357.relations reduction18357.input reduction18357.output := by lin_cert using reduction18357.terms
theorem substitutionProof18357 : IsMapEvaluation generatorImages reduction18357.relations [3,1878] reduction18357.output := by lin_cert using reduction18357.terms
def image18358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18358 : InImage map_17_243 image18358 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18358 : Bundle := named_bundle% "RealMapCertificates/relations/basis18358.json"
theorem reductionProof18358 : EqualModuloRelations reduction18358.relations reduction18358.input reduction18358.output := by lin_cert using reduction18358.terms
theorem substitutionProof18358 : IsMapEvaluation generatorImages reduction18358.relations [3,197,352] reduction18358.output := by lin_cert using reduction18358.terms
def image18359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18359 : InImage map_17_243 image18359 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18359 : Bundle := named_bundle% "RealMapCertificates/relations/basis18359.json"
theorem reductionProof18359 : EqualModuloRelations reduction18359.relations reduction18359.input reduction18359.output := by lin_cert using reduction18359.terms
theorem substitutionProof18359 : IsMapEvaluation generatorImages reduction18359.relations [2,226,324] reduction18359.output := by lin_cert using reduction18359.terms
def image18360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18360 : InImage map_17_243 image18360 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18360 : Bundle := named_bundle% "RealMapCertificates/relations/basis18360.json"
theorem reductionProof18360 : EqualModuloRelations reduction18360.relations reduction18360.input reduction18360.output := by lin_cert using reduction18360.terms
theorem substitutionProof18360 : IsMapEvaluation generatorImages reduction18360.relations [1,1,1979] reduction18360.output := by lin_cert using reduction18360.terms
def image18361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18361 : InImage map_17_243 image18361 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18361 : Bundle := named_bundle% "RealMapCertificates/relations/basis18361.json"
theorem reductionProof18361 : EqualModuloRelations reduction18361.relations reduction18361.input reduction18361.output := by lin_cert using reduction18361.terms
theorem substitutionProof18361 : IsMapEvaluation generatorImages reduction18361.relations [0,2077] reduction18361.output := by lin_cert using reduction18361.terms
def map_17_244 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18562 : InImage map_17_244 image18562 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18562 : Bundle := named_bundle% "RealMapCertificates/relations/basis18562.json"
theorem reductionProof18562 : EqualModuloRelations reduction18562.relations reduction18562.input reduction18562.output := by lin_cert using reduction18562.terms
theorem substitutionProof18562 : IsMapEvaluation generatorImages reduction18562.relations [2146] reduction18562.output := by lin_cert using reduction18562.terms
def image18563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18563 : InImage map_17_244 image18563 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18563 : Bundle := named_bundle% "RealMapCertificates/relations/basis18563.json"
theorem reductionProof18563 : EqualModuloRelations reduction18563.relations reduction18563.input reduction18563.output := by lin_cert using reduction18563.terms
theorem substitutionProof18563 : IsMapEvaluation generatorImages reduction18563.relations [2145] reduction18563.output := by lin_cert using reduction18563.terms
def image18564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18564 : InImage map_17_244 image18564 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18564 : Bundle := named_bundle% "RealMapCertificates/relations/basis18564.json"
theorem reductionProof18564 : EqualModuloRelations reduction18564.relations reduction18564.input reduction18564.output := by lin_cert using reduction18564.terms
theorem substitutionProof18564 : IsMapEvaluation generatorImages reduction18564.relations [2,2021] reduction18564.output := by lin_cert using reduction18564.terms
def image18565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18565 : InImage map_17_244 image18565 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18565 : Bundle := named_bundle% "RealMapCertificates/relations/basis18565.json"
theorem reductionProof18565 : EqualModuloRelations reduction18565.relations reduction18565.input reduction18565.output := by lin_cert using reduction18565.terms
theorem substitutionProof18565 : IsMapEvaluation generatorImages reduction18565.relations [1,2077] reduction18565.output := by lin_cert using reduction18565.terms
def image18566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18566 : InImage map_17_244 image18566 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18566 : Bundle := named_bundle% "RealMapCertificates/relations/basis18566.json"
theorem reductionProof18566 : EqualModuloRelations reduction18566.relations reduction18566.input reduction18566.output := by lin_cert using reduction18566.terms
theorem substitutionProof18566 : IsMapEvaluation generatorImages reduction18566.relations [0,2115] reduction18566.output := by lin_cert using reduction18566.terms
def image18567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18567 : InImage map_17_244 image18567 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18567 : Bundle := named_bundle% "RealMapCertificates/relations/basis18567.json"
theorem reductionProof18567 : EqualModuloRelations reduction18567.relations reduction18567.input reduction18567.output := by lin_cert using reduction18567.terms
theorem substitutionProof18567 : IsMapEvaluation generatorImages reduction18567.relations [0,2,1981] reduction18567.output := by lin_cert using reduction18567.terms
def map_17_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18828 : InImage map_17_245 image18828 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18828 : Bundle := named_bundle% "RealMapCertificates/relations/basis18828.json"
theorem reductionProof18828 : EqualModuloRelations reduction18828.relations reduction18828.input reduction18828.output := by lin_cert using reduction18828.terms
theorem substitutionProof18828 : IsMapEvaluation generatorImages reduction18828.relations [2185] reduction18828.output := by lin_cert using reduction18828.terms
def image18829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18829 : InImage map_17_245 image18829 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18829 : Bundle := named_bundle% "RealMapCertificates/relations/basis18829.json"
theorem reductionProof18829 : EqualModuloRelations reduction18829.relations reduction18829.input reduction18829.output := by lin_cert using reduction18829.terms
theorem substitutionProof18829 : IsMapEvaluation generatorImages reduction18829.relations [2184] reduction18829.output := by lin_cert using reduction18829.terms
def image18830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18830 : InImage map_17_245 image18830 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18830 : Bundle := named_bundle% "RealMapCertificates/relations/basis18830.json"
theorem reductionProof18830 : EqualModuloRelations reduction18830.relations reduction18830.input reduction18830.output := by lin_cert using reduction18830.terms
theorem substitutionProof18830 : IsMapEvaluation generatorImages reduction18830.relations [254,324] reduction18830.output := by lin_cert using reduction18830.terms
def image18831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18831 : InImage map_17_245 image18831 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18831 : Bundle := named_bundle% "RealMapCertificates/relations/basis18831.json"
theorem reductionProof18831 : EqualModuloRelations reduction18831.relations reduction18831.input reduction18831.output := by lin_cert using reduction18831.terms
theorem substitutionProof18831 : IsMapEvaluation generatorImages reduction18831.relations [3,3,1731] reduction18831.output := by lin_cert using reduction18831.terms
def image18832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18832 : InImage map_17_245 image18832 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18832 : Bundle := named_bundle% "RealMapCertificates/relations/basis18832.json"
theorem reductionProof18832 : EqualModuloRelations reduction18832.relations reduction18832.input reduction18832.output := by lin_cert using reduction18832.terms
theorem substitutionProof18832 : IsMapEvaluation generatorImages reduction18832.relations [0,2147] reduction18832.output := by lin_cert using reduction18832.terms
def image18833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18833 : InImage map_17_245 image18833 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18833 : Bundle := named_bundle% "RealMapCertificates/relations/basis18833.json"
theorem reductionProof18833 : EqualModuloRelations reduction18833.relations reduction18833.input reduction18833.output := by lin_cert using reduction18833.terms
theorem substitutionProof18833 : IsMapEvaluation generatorImages reduction18833.relations [0,43,1118] reduction18833.output := by lin_cert using reduction18833.terms
def map_17_246 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19136 : InImage map_17_246 image19136 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19136 : Bundle := named_bundle% "RealMapCertificates/relations/basis19136.json"
theorem reductionProof19136 : EqualModuloRelations reduction19136.relations reduction19136.input reduction19136.output := by lin_cert using reduction19136.terms
theorem substitutionProof19136 : IsMapEvaluation generatorImages reduction19136.relations [2229] reduction19136.output := by lin_cert using reduction19136.terms
def image19137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19137 : InImage map_17_246 image19137 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19137 : Bundle := named_bundle% "RealMapCertificates/relations/basis19137.json"
theorem reductionProof19137 : EqualModuloRelations reduction19137.relations reduction19137.input reduction19137.output := by lin_cert using reduction19137.terms
theorem substitutionProof19137 : IsMapEvaluation generatorImages reduction19137.relations [2228] reduction19137.output := by lin_cert using reduction19137.terms
def image19138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19138 : InImage map_17_246 image19138 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19138 : Bundle := named_bundle% "RealMapCertificates/relations/basis19138.json"
theorem reductionProof19138 : EqualModuloRelations reduction19138.relations reduction19138.input reduction19138.output := by lin_cert using reduction19138.terms
theorem substitutionProof19138 : IsMapEvaluation generatorImages reduction19138.relations [13,13,83,324] reduction19138.output := by lin_cert using reduction19138.terms
def image19139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19139 : InImage map_17_246 image19139 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19139 : Bundle := named_bundle% "RealMapCertificates/relations/basis19139.json"
theorem reductionProof19139 : EqualModuloRelations reduction19139.relations reduction19139.input reduction19139.output := by lin_cert using reduction19139.terms
theorem substitutionProof19139 : IsMapEvaluation generatorImages reduction19139.relations [0,255,324] reduction19139.output := by lin_cert using reduction19139.terms
def image19140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19140 : InImage map_17_246 image19140 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19140 : Bundle := named_bundle% "RealMapCertificates/relations/basis19140.json"
theorem reductionProof19140 : EqualModuloRelations reduction19140.relations reduction19140.input reduction19140.output := by lin_cert using reduction19140.terms
theorem substitutionProof19140 : IsMapEvaluation generatorImages reduction19140.relations [0,3,203,352] reduction19140.output := by lin_cert using reduction19140.terms
def image19141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19141 : InImage map_17_246 image19141 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19141 : Bundle := named_bundle% "RealMapCertificates/relations/basis19141.json"
theorem reductionProof19141 : EqualModuloRelations reduction19141.relations reduction19141.input reduction19141.output := by lin_cert using reduction19141.terms
theorem substitutionProof19141 : IsMapEvaluation generatorImages reduction19141.relations [0,3,3,1732] reduction19141.output := by lin_cert using reduction19141.terms
def image19142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19142 : InImage map_17_246 image19142 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19142 : Bundle := named_bundle% "RealMapCertificates/relations/basis19142.json"
theorem reductionProof19142 : EqualModuloRelations reduction19142.relations reduction19142.input reduction19142.output := by lin_cert using reduction19142.terms
theorem substitutionProof19142 : IsMapEvaluation generatorImages reduction19142.relations [0,0,2148] reduction19142.output := by lin_cert using reduction19142.terms
def image19143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19143 : InImage map_17_246 image19143 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19143 : Bundle := named_bundle% "RealMapCertificates/relations/basis19143.json"
theorem reductionProof19143 : EqualModuloRelations reduction19143.relations reduction19143.input reduction19143.output := by lin_cert using reduction19143.terms
theorem substitutionProof19143 : IsMapEvaluation generatorImages reduction19143.relations [0,0,43,1120] reduction19143.output := by lin_cert using reduction19143.terms
def map_17_247 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19365 : InImage map_17_247 image19365 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19365 : Bundle := named_bundle% "RealMapCertificates/relations/basis19365.json"
theorem reductionProof19365 : EqualModuloRelations reduction19365.relations reduction19365.input reduction19365.output := by lin_cert using reduction19365.terms
theorem substitutionProof19365 : IsMapEvaluation generatorImages reduction19365.relations [2269] reduction19365.output := by lin_cert using reduction19365.terms
def image19366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19366 : InImage map_17_247 image19366 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19366 : Bundle := named_bundle% "RealMapCertificates/relations/basis19366.json"
theorem reductionProof19366 : EqualModuloRelations reduction19366.relations reduction19366.input reduction19366.output := by lin_cert using reduction19366.terms
theorem substitutionProof19366 : IsMapEvaluation generatorImages reduction19366.relations [2268] reduction19366.output := by lin_cert using reduction19366.terms
def image19367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19367 : InImage map_17_247 image19367 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19367 : Bundle := named_bundle% "RealMapCertificates/relations/basis19367.json"
theorem reductionProof19367 : EqualModuloRelations reduction19367.relations reduction19367.input reduction19367.output := by lin_cert using reduction19367.terms
theorem substitutionProof19367 : IsMapEvaluation generatorImages reduction19367.relations [1,2186] reduction19367.output := by lin_cert using reduction19367.terms
def image19368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19368 : InImage map_17_247 image19368 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19368 : Bundle := named_bundle% "RealMapCertificates/relations/basis19368.json"
theorem reductionProof19368 : EqualModuloRelations reduction19368.relations reduction19368.input reduction19368.output := by lin_cert using reduction19368.terms
theorem substitutionProof19368 : IsMapEvaluation generatorImages reduction19368.relations [0,2231] reduction19368.output := by lin_cert using reduction19368.terms
def image19369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19369 : InImage map_17_247 image19369 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19369 : Bundle := named_bundle% "RealMapCertificates/relations/basis19369.json"
theorem reductionProof19369 : EqualModuloRelations reduction19369.relations reduction19369.input reduction19369.output := by lin_cert using reduction19369.terms
theorem substitutionProof19369 : IsMapEvaluation generatorImages reduction19369.relations [0,2230] reduction19369.output := by lin_cert using reduction19369.terms
def map_17_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19633 : InImage map_17_248 image19633 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19633 : Bundle := named_bundle% "RealMapCertificates/relations/basis19633.json"
theorem reductionProof19633 : EqualModuloRelations reduction19633.relations reduction19633.input reduction19633.output := by lin_cert using reduction19633.terms
theorem substitutionProof19633 : IsMapEvaluation generatorImages reduction19633.relations [2294] reduction19633.output := by lin_cert using reduction19633.terms
def image19634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19634 : InImage map_17_248 image19634 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19634 : Bundle := named_bundle% "RealMapCertificates/relations/basis19634.json"
theorem reductionProof19634 : EqualModuloRelations reduction19634.relations reduction19634.input reduction19634.output := by lin_cert using reduction19634.terms
theorem substitutionProof19634 : IsMapEvaluation generatorImages reduction19634.relations [1,1,2148] reduction19634.output := by lin_cert using reduction19634.terms
def image19635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19635 : InImage map_17_248 image19635 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19635 : Bundle := named_bundle% "RealMapCertificates/relations/basis19635.json"
theorem reductionProof19635 : EqualModuloRelations reduction19635.relations reduction19635.input reduction19635.output := by lin_cert using reduction19635.terms
theorem substitutionProof19635 : IsMapEvaluation generatorImages reduction19635.relations [0,2270] reduction19635.output := by lin_cert using reduction19635.terms
def image19636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19636 : InImage map_17_248 image19636 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19636 : Bundle := named_bundle% "RealMapCertificates/relations/basis19636.json"
theorem reductionProof19636 : EqualModuloRelations reduction19636.relations reduction19636.input reduction19636.output := by lin_cert using reduction19636.terms
theorem substitutionProof19636 : IsMapEvaluation generatorImages reduction19636.relations [0,3,1981] reduction19636.output := by lin_cert using reduction19636.terms
def image19637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19637 : InImage map_17_248 image19637 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19637 : Bundle := named_bundle% "RealMapCertificates/relations/basis19637.json"
theorem reductionProof19637 : EqualModuloRelations reduction19637.relations reduction19637.input reduction19637.output := by lin_cert using reduction19637.terms
theorem substitutionProof19637 : IsMapEvaluation generatorImages reduction19637.relations [0,3,1979] reduction19637.output := by lin_cert using reduction19637.terms
def image19638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19638 : InImage map_17_248 image19638 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19638 : Bundle := named_bundle% "RealMapCertificates/relations/basis19638.json"
theorem reductionProof19638 : EqualModuloRelations reduction19638.relations reduction19638.input reduction19638.output := by lin_cert using reduction19638.terms
theorem substitutionProof19638 : IsMapEvaluation generatorImages reduction19638.relations [0,0,2232] reduction19638.output := by lin_cert using reduction19638.terms
def map_17_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19943 : InImage map_17_249 image19943 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19943 : Bundle := named_bundle% "RealMapCertificates/relations/basis19943.json"
theorem reductionProof19943 : EqualModuloRelations reduction19943.relations reduction19943.input reduction19943.output := by lin_cert using reduction19943.terms
theorem substitutionProof19943 : IsMapEvaluation generatorImages reduction19943.relations [1,2270] reduction19943.output := by lin_cert using reduction19943.terms
def image19944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19944 : InImage map_17_249 image19944 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19944 : Bundle := named_bundle% "RealMapCertificates/relations/basis19944.json"
theorem reductionProof19944 : EqualModuloRelations reduction19944.relations reduction19944.input reduction19944.output := by lin_cert using reduction19944.terms
theorem substitutionProof19944 : IsMapEvaluation generatorImages reduction19944.relations [1,3,1979] reduction19944.output := by lin_cert using reduction19944.terms
def image19945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19945 : InImage map_17_249 image19945 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19945 : Bundle := named_bundle% "RealMapCertificates/relations/basis19945.json"
theorem reductionProof19945 : EqualModuloRelations reduction19945.relations reduction19945.input reduction19945.output := by lin_cert using reduction19945.terms
theorem substitutionProof19945 : IsMapEvaluation generatorImages reduction19945.relations [0,266,324] reduction19945.output := by lin_cert using reduction19945.terms
def image19946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19946 : InImage map_17_249 image19946 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19946 : Bundle := named_bundle% "RealMapCertificates/relations/basis19946.json"
theorem reductionProof19946 : EqualModuloRelations reduction19946.relations reduction19946.input reduction19946.output := by lin_cert using reduction19946.terms
theorem substitutionProof19946 : IsMapEvaluation generatorImages reduction19946.relations [0,3,3,1798] reduction19946.output := by lin_cert using reduction19946.terms
def image19947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19947 : InImage map_17_249 image19947 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19947 : Bundle := named_bundle% "RealMapCertificates/relations/basis19947.json"
theorem reductionProof19947 : EqualModuloRelations reduction19947.relations reduction19947.input reduction19947.output := by lin_cert using reduction19947.terms
theorem substitutionProof19947 : IsMapEvaluation generatorImages reduction19947.relations [0,0,2271] reduction19947.output := by lin_cert using reduction19947.terms
def image19948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19948 : InImage map_17_249 image19948 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19948 : Bundle := named_bundle% "RealMapCertificates/relations/basis19948.json"
theorem reductionProof19948 : EqualModuloRelations reduction19948.relations reduction19948.input reduction19948.output := by lin_cert using reduction19948.terms
theorem substitutionProof19948 : IsMapEvaluation generatorImages reduction19948.relations [0,0,3,1982] reduction19948.output := by lin_cert using reduction19948.terms
def map_17_250 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20167 : InImage map_17_250 image20167 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20167 : Bundle := named_bundle% "RealMapCertificates/relations/basis20167.json"
theorem reductionProof20167 : EqualModuloRelations reduction20167.relations reduction20167.input reduction20167.output := by lin_cert using reduction20167.terms
theorem substitutionProof20167 : IsMapEvaluation generatorImages reduction20167.relations [2365] reduction20167.output := by lin_cert using reduction20167.terms
def image20168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20168 : InImage map_17_250 image20168 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20168 : Bundle := named_bundle% "RealMapCertificates/relations/basis20168.json"
theorem reductionProof20168 : EqualModuloRelations reduction20168.relations reduction20168.input reduction20168.output := by lin_cert using reduction20168.terms
theorem substitutionProof20168 : IsMapEvaluation generatorImages reduction20168.relations [2364] reduction20168.output := by lin_cert using reduction20168.terms
def image20169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20169 : InImage map_17_250 image20169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20169 : Bundle := named_bundle% "RealMapCertificates/relations/basis20169.json"
theorem reductionProof20169 : EqualModuloRelations reduction20169.relations reduction20169.input reduction20169.output := by lin_cert using reduction20169.terms
theorem substitutionProof20169 : IsMapEvaluation generatorImages reduction20169.relations [2363] reduction20169.output := by lin_cert using reduction20169.terms
def image20170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20170 : InImage map_17_250 image20170 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20170 : Bundle := named_bundle% "RealMapCertificates/relations/basis20170.json"
theorem reductionProof20170 : EqualModuloRelations reduction20170.relations reduction20170.input reduction20170.output := by lin_cert using reduction20170.terms
theorem substitutionProof20170 : IsMapEvaluation generatorImages reduction20170.relations [191,544] reduction20170.output := by lin_cert using reduction20170.terms
def image20171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20171 : InImage map_17_250 image20171 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20171 : Bundle := named_bundle% "RealMapCertificates/relations/basis20171.json"
theorem reductionProof20171 : EqualModuloRelations reduction20171.relations reduction20171.input reduction20171.output := by lin_cert using reduction20171.terms
theorem substitutionProof20171 : IsMapEvaluation generatorImages reduction20171.relations [0,0,2295] reduction20171.output := by lin_cert using reduction20171.terms
def image20172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20172 : InImage map_17_250 image20172 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20172 : Bundle := named_bundle% "RealMapCertificates/relations/basis20172.json"
theorem reductionProof20172 : EqualModuloRelations reduction20172.relations reduction20172.input reduction20172.output := by lin_cert using reduction20172.terms
theorem substitutionProof20172 : IsMapEvaluation generatorImages reduction20172.relations [0,0,267,324] reduction20172.output := by lin_cert using reduction20172.terms
def map_17_251 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image20453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20453 : InImage map_17_251 image20453 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20453 : Bundle := named_bundle% "RealMapCertificates/relations/basis20453.json"
theorem reductionProof20453 : EqualModuloRelations reduction20453.relations reduction20453.input reduction20453.output := by lin_cert using reduction20453.terms
theorem substitutionProof20453 : IsMapEvaluation generatorImages reduction20453.relations [1,1,2271] reduction20453.output := by lin_cert using reduction20453.terms
def image20454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20454 : InImage map_17_251 image20454 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20454 : Bundle := named_bundle% "RealMapCertificates/relations/basis20454.json"
theorem reductionProof20454 : EqualModuloRelations reduction20454.relations reduction20454.input reduction20454.output := by lin_cert using reduction20454.terms
theorem substitutionProof20454 : IsMapEvaluation generatorImages reduction20454.relations [0,3,3,1848] reduction20454.output := by lin_cert using reduction20454.terms
def map_17_252 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20773 : InImage map_17_252 image20773 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20773 : Bundle := named_bundle% "RealMapCertificates/relations/basis20773.json"
theorem reductionProof20773 : EqualModuloRelations reduction20773.relations reduction20773.input reduction20773.output := by lin_cert using reduction20773.terms
theorem substitutionProof20773 : IsMapEvaluation generatorImages reduction20773.relations [2431] reduction20773.output := by lin_cert using reduction20773.terms
def image20774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20774 : InImage map_17_252 image20774 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20774 : Bundle := named_bundle% "RealMapCertificates/relations/basis20774.json"
theorem reductionProof20774 : EqualModuloRelations reduction20774.relations reduction20774.input reduction20774.output := by lin_cert using reduction20774.terms
theorem substitutionProof20774 : IsMapEvaluation generatorImages reduction20774.relations [2430] reduction20774.output := by lin_cert using reduction20774.terms
def image20775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20775 : InImage map_17_252 image20775 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20775 : Bundle := named_bundle% "RealMapCertificates/relations/basis20775.json"
theorem reductionProof20775 : EqualModuloRelations reduction20775.relations reduction20775.input reduction20775.output := by lin_cert using reduction20775.terms
theorem substitutionProof20775 : IsMapEvaluation generatorImages reduction20775.relations [9,23,75,324] reduction20775.output := by lin_cert using reduction20775.terms
def image20776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20776 : InImage map_17_252 image20776 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20776 : Bundle := named_bundle% "RealMapCertificates/relations/basis20776.json"
theorem reductionProof20776 : EqualModuloRelations reduction20776.relations reduction20776.input reduction20776.output := by lin_cert using reduction20776.terms
theorem substitutionProof20776 : IsMapEvaluation generatorImages reduction20776.relations [1,1,2295] reduction20776.output := by lin_cert using reduction20776.terms
def image20777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20777 : InImage map_17_252 image20777 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20777 : Bundle := named_bundle% "RealMapCertificates/relations/basis20777.json"
theorem reductionProof20777 : EqualModuloRelations reduction20777.relations reduction20777.input reduction20777.output := by lin_cert using reduction20777.terms
theorem substitutionProof20777 : IsMapEvaluation generatorImages reduction20777.relations [0,2397] reduction20777.output := by lin_cert using reduction20777.terms
def image20778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20778 : InImage map_17_252 image20778 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20778 : Bundle := named_bundle% "RealMapCertificates/relations/basis20778.json"
theorem reductionProof20778 : EqualModuloRelations reduction20778.relations reduction20778.input reduction20778.output := by lin_cert using reduction20778.terms
theorem substitutionProof20778 : IsMapEvaluation generatorImages reduction20778.relations [0,0,2370] reduction20778.output := by lin_cert using reduction20778.terms
def map_17_253 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20999 : InImage map_17_253 image20999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20999 : Bundle := named_bundle% "RealMapCertificates/relations/basis20999.json"
theorem reductionProof20999 : EqualModuloRelations reduction20999.relations reduction20999.input reduction20999.output := by lin_cert using reduction20999.terms
theorem substitutionProof20999 : IsMapEvaluation generatorImages reduction20999.relations [2476] reduction20999.output := by lin_cert using reduction20999.terms
def image21000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21000 : InImage map_17_253 image21000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21000 : Bundle := named_bundle% "RealMapCertificates/relations/basis21000.json"
theorem reductionProof21000 : EqualModuloRelations reduction21000.relations reduction21000.input reduction21000.output := by lin_cert using reduction21000.terms
theorem substitutionProof21000 : IsMapEvaluation generatorImages reduction21000.relations [2475] reduction21000.output := by lin_cert using reduction21000.terms
def image21001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21001 : InImage map_17_253 image21001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21001 : Bundle := named_bundle% "RealMapCertificates/relations/basis21001.json"
theorem reductionProof21001 : EqualModuloRelations reduction21001.relations reduction21001.input reduction21001.output := by lin_cert using reduction21001.terms
theorem substitutionProof21001 : IsMapEvaluation generatorImages reduction21001.relations [2474] reduction21001.output := by lin_cert using reduction21001.terms
def image21002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21002 : InImage map_17_253 image21002 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21002 : Bundle := named_bundle% "RealMapCertificates/relations/basis21002.json"
theorem reductionProof21002 : EqualModuloRelations reduction21002.relations reduction21002.input reduction21002.output := by lin_cert using reduction21002.terms
theorem substitutionProof21002 : IsMapEvaluation generatorImages reduction21002.relations [0,2432] reduction21002.output := by lin_cert using reduction21002.terms
def map_17_254 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21309 : InImage map_17_254 image21309 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21309 : Bundle := named_bundle% "RealMapCertificates/relations/basis21309.json"
theorem reductionProof21309 : EqualModuloRelations reduction21309.relations reduction21309.input reduction21309.output := by lin_cert using reduction21309.terms
theorem substitutionProof21309 : IsMapEvaluation generatorImages reduction21309.relations [2522] reduction21309.output := by lin_cert using reduction21309.terms
def image21310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21310 : InImage map_17_254 image21310 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21310 : Bundle := named_bundle% "RealMapCertificates/relations/basis21310.json"
theorem reductionProof21310 : EqualModuloRelations reduction21310.relations reduction21310.input reduction21310.output := by lin_cert using reduction21310.terms
theorem substitutionProof21310 : IsMapEvaluation generatorImages reduction21310.relations [303,324] reduction21310.output := by lin_cert using reduction21310.terms
def image21311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21311 : InImage map_17_254 image21311 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21311 : Bundle := named_bundle% "RealMapCertificates/relations/basis21311.json"
theorem reductionProof21311 : EqualModuloRelations reduction21311.relations reduction21311.input reduction21311.output := by lin_cert using reduction21311.terms
theorem substitutionProof21311 : IsMapEvaluation generatorImages reduction21311.relations [302,324] reduction21311.output := by lin_cert using reduction21311.terms
def image21312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21312 : InImage map_17_254 image21312 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21312 : Bundle := named_bundle% "RealMapCertificates/relations/basis21312.json"
theorem reductionProof21312 : EqualModuloRelations reduction21312.relations reduction21312.input reduction21312.output := by lin_cert using reduction21312.terms
theorem substitutionProof21312 : IsMapEvaluation generatorImages reduction21312.relations [2,2367] reduction21312.output := by lin_cert using reduction21312.terms
def image21313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21313 : InImage map_17_254 image21313 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21313 : Bundle := named_bundle% "RealMapCertificates/relations/basis21313.json"
theorem reductionProof21313 : EqualModuloRelations reduction21313.relations reduction21313.input reduction21313.output := by lin_cert using reduction21313.terms
theorem substitutionProof21313 : IsMapEvaluation generatorImages reduction21313.relations [1,2432] reduction21313.output := by lin_cert using reduction21313.terms
def image21314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21314 : InImage map_17_254 image21314 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21314 : Bundle := named_bundle% "RealMapCertificates/relations/basis21314.json"
theorem reductionProof21314 : EqualModuloRelations reduction21314.relations reduction21314.input reduction21314.output := by lin_cert using reduction21314.terms
theorem substitutionProof21314 : IsMapEvaluation generatorImages reduction21314.relations [0,2478] reduction21314.output := by lin_cert using reduction21314.terms
def image21315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21315 : InImage map_17_254 image21315 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21315 : Bundle := named_bundle% "RealMapCertificates/relations/basis21315.json"
theorem reductionProof21315 : EqualModuloRelations reduction21315.relations reduction21315.input reduction21315.output := by lin_cert using reduction21315.terms
theorem substitutionProof21315 : IsMapEvaluation generatorImages reduction21315.relations [0,0,2433] reduction21315.output := by lin_cert using reduction21315.terms
def map_17_255 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21645 : InImage map_17_255 image21645 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21645 : Bundle := named_bundle% "RealMapCertificates/relations/basis21645.json"
theorem reductionProof21645 : EqualModuloRelations reduction21645.relations reduction21645.input reduction21645.output := by lin_cert using reduction21645.terms
theorem substitutionProof21645 : IsMapEvaluation generatorImages reduction21645.relations [2571] reduction21645.output := by lin_cert using reduction21645.terms
def image21646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21646 : InImage map_17_255 image21646 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21646 : Bundle := named_bundle% "RealMapCertificates/relations/basis21646.json"
theorem reductionProof21646 : EqualModuloRelations reduction21646.relations reduction21646.input reduction21646.output := by lin_cert using reduction21646.terms
theorem substitutionProof21646 : IsMapEvaluation generatorImages reduction21646.relations [2570] reduction21646.output := by lin_cert using reduction21646.terms
def image21647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21647 : InImage map_17_255 image21647 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21647 : Bundle := named_bundle% "RealMapCertificates/relations/basis21647.json"
theorem reductionProof21647 : EqualModuloRelations reduction21647.relations reduction21647.input reduction21647.output := by lin_cert using reduction21647.terms
theorem substitutionProof21647 : IsMapEvaluation generatorImages reduction21647.relations [2569] reduction21647.output := by lin_cert using reduction21647.terms
def image21648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21648 : InImage map_17_255 image21648 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21648 : Bundle := named_bundle% "RealMapCertificates/relations/basis21648.json"
theorem reductionProof21648 : EqualModuloRelations reduction21648.relations reduction21648.input reduction21648.output := by lin_cert using reduction21648.terms
theorem substitutionProof21648 : IsMapEvaluation generatorImages reduction21648.relations [2568] reduction21648.output := by lin_cert using reduction21648.terms
def image21649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21649 : InImage map_17_255 image21649 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21649 : Bundle := named_bundle% "RealMapCertificates/relations/basis21649.json"
theorem reductionProof21649 : EqualModuloRelations reduction21649.relations reduction21649.input reduction21649.output := by lin_cert using reduction21649.terms
theorem substitutionProof21649 : IsMapEvaluation generatorImages reduction21649.relations [2567] reduction21649.output := by lin_cert using reduction21649.terms
def image21650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21650 : InImage map_17_255 image21650 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21650 : Bundle := named_bundle% "RealMapCertificates/relations/basis21650.json"
theorem reductionProof21650 : EqualModuloRelations reduction21650.relations reduction21650.input reduction21650.output := by lin_cert using reduction21650.terms
theorem substitutionProof21650 : IsMapEvaluation generatorImages reduction21650.relations [13,23,75,324] reduction21650.output := by lin_cert using reduction21650.terms
def image21651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21651 : InImage map_17_255 image21651 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21651 : Bundle := named_bundle% "RealMapCertificates/relations/basis21651.json"
theorem reductionProof21651 : EqualModuloRelations reduction21651.relations reduction21651.input reduction21651.output := by lin_cert using reduction21651.terms
theorem substitutionProof21651 : IsMapEvaluation generatorImages reduction21651.relations [2,2397] reduction21651.output := by lin_cert using reduction21651.terms
def image21652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21652 : InImage map_17_255 image21652 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21652 : Bundle := named_bundle% "RealMapCertificates/relations/basis21652.json"
theorem reductionProof21652 : EqualModuloRelations reduction21652.relations reduction21652.input reduction21652.output := by lin_cert using reduction21652.terms
theorem substitutionProof21652 : IsMapEvaluation generatorImages reduction21652.relations [1,293,324] reduction21652.output := by lin_cert using reduction21652.terms
def image21653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21653 : InImage map_17_255 image21653 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21653 : Bundle := named_bundle% "RealMapCertificates/relations/basis21653.json"
theorem reductionProof21653 : EqualModuloRelations reduction21653.relations reduction21653.input reduction21653.output := by lin_cert using reduction21653.terms
theorem substitutionProof21653 : IsMapEvaluation generatorImages reduction21653.relations [0,0,2480] reduction21653.output := by lin_cert using reduction21653.terms
def map_17_256 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21930 : InImage map_17_256 image21930 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21930 : Bundle := named_bundle% "RealMapCertificates/relations/basis21930.json"
theorem reductionProof21930 : EqualModuloRelations reduction21930.relations reduction21930.input reduction21930.output := by lin_cert using reduction21930.terms
theorem substitutionProof21930 : IsMapEvaluation generatorImages reduction21930.relations [2617] reduction21930.output := by lin_cert using reduction21930.terms
def image21931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21931 : InImage map_17_256 image21931 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21931 : Bundle := named_bundle% "RealMapCertificates/relations/basis21931.json"
theorem reductionProof21931 : EqualModuloRelations reduction21931.relations reduction21931.input reduction21931.output := by lin_cert using reduction21931.terms
theorem substitutionProof21931 : IsMapEvaluation generatorImages reduction21931.relations [2616] reduction21931.output := by lin_cert using reduction21931.terms
def image21932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21932 : InImage map_17_256 image21932 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21932 : Bundle := named_bundle% "RealMapCertificates/relations/basis21932.json"
theorem reductionProof21932 : EqualModuloRelations reduction21932.relations reduction21932.input reduction21932.output := by lin_cert using reduction21932.terms
theorem substitutionProof21932 : IsMapEvaluation generatorImages reduction21932.relations [2615] reduction21932.output := by lin_cert using reduction21932.terms
def image21933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21933 : InImage map_17_256 image21933 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21933 : Bundle := named_bundle% "RealMapCertificates/relations/basis21933.json"
theorem reductionProof21933 : EqualModuloRelations reduction21933.relations reduction21933.input reduction21933.output := by lin_cert using reduction21933.terms
theorem substitutionProof21933 : IsMapEvaluation generatorImages reduction21933.relations [2614] reduction21933.output := by lin_cert using reduction21933.terms
def image21934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21934 : InImage map_17_256 image21934 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21934 : Bundle := named_bundle% "RealMapCertificates/relations/basis21934.json"
theorem reductionProof21934 : EqualModuloRelations reduction21934.relations reduction21934.input reduction21934.output := by lin_cert using reduction21934.terms
theorem substitutionProof21934 : IsMapEvaluation generatorImages reduction21934.relations [318,324] reduction21934.output := by lin_cert using reduction21934.terms
def image21935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21935 : InImage map_17_256 image21935 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21935 : Bundle := named_bundle% "RealMapCertificates/relations/basis21935.json"
theorem reductionProof21935 : EqualModuloRelations reduction21935.relations reduction21935.input reduction21935.output := by lin_cert using reduction21935.terms
theorem substitutionProof21935 : IsMapEvaluation generatorImages reduction21935.relations [13,1801] reduction21935.output := by lin_cert using reduction21935.terms
def image21936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21936 : InImage map_17_256 image21936 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21936 : Bundle := named_bundle% "RealMapCertificates/relations/basis21936.json"
theorem reductionProof21936 : EqualModuloRelations reduction21936.relations reduction21936.input reduction21936.output := by lin_cert using reduction21936.terms
theorem substitutionProof21936 : IsMapEvaluation generatorImages reduction21936.relations [3,266,324] reduction21936.output := by lin_cert using reduction21936.terms
def image21937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21937 : InImage map_17_256 image21937 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21937 : Bundle := named_bundle% "RealMapCertificates/relations/basis21937.json"
theorem reductionProof21937 : EqualModuloRelations reduction21937.relations reduction21937.input reduction21937.output := by lin_cert using reduction21937.terms
theorem substitutionProof21937 : IsMapEvaluation generatorImages reduction21937.relations [1,2523] reduction21937.output := by lin_cert using reduction21937.terms
def image21938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21938 : InImage map_17_256 image21938 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21938 : Bundle := named_bundle% "RealMapCertificates/relations/basis21938.json"
theorem reductionProof21938 : EqualModuloRelations reduction21938.relations reduction21938.input reduction21938.output := by lin_cert using reduction21938.terms
theorem substitutionProof21938 : IsMapEvaluation generatorImages reduction21938.relations [0,2572] reduction21938.output := by lin_cert using reduction21938.terms
def map_17_257 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22269 : InImage map_17_257 image22269 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22269 : Bundle := named_bundle% "RealMapCertificates/relations/basis22269.json"
theorem reductionProof22269 : EqualModuloRelations reduction22269.relations reduction22269.input reduction22269.output := by lin_cert using reduction22269.terms
theorem substitutionProof22269 : IsMapEvaluation generatorImages reduction22269.relations [2661] reduction22269.output := by lin_cert using reduction22269.terms
def image22270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22270 : InImage map_17_257 image22270 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22270 : Bundle := named_bundle% "RealMapCertificates/relations/basis22270.json"
theorem reductionProof22270 : EqualModuloRelations reduction22270.relations reduction22270.input reduction22270.output := by lin_cert using reduction22270.terms
theorem substitutionProof22270 : IsMapEvaluation generatorImages reduction22270.relations [2660] reduction22270.output := by lin_cert using reduction22270.terms
def image22271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22271 : InImage map_17_257 image22271 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22271 : Bundle := named_bundle% "RealMapCertificates/relations/basis22271.json"
theorem reductionProof22271 : EqualModuloRelations reduction22271.relations reduction22271.input reduction22271.output := by lin_cert using reduction22271.terms
theorem substitutionProof22271 : IsMapEvaluation generatorImages reduction22271.relations [2659] reduction22271.output := by lin_cert using reduction22271.terms
def image22272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22272 : InImage map_17_257 image22272 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22272 : Bundle := named_bundle% "RealMapCertificates/relations/basis22272.json"
theorem reductionProof22272 : EqualModuloRelations reduction22272.relations reduction22272.input reduction22272.output := by lin_cert using reduction22272.terms
theorem substitutionProof22272 : IsMapEvaluation generatorImages reduction22272.relations [2658] reduction22272.output := by lin_cert using reduction22272.terms
def image22273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22273 : InImage map_17_257 image22273 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22273 : Bundle := named_bundle% "RealMapCertificates/relations/basis22273.json"
theorem reductionProof22273 : EqualModuloRelations reduction22273.relations reduction22273.input reduction22273.output := by lin_cert using reduction22273.terms
theorem substitutionProof22273 : IsMapEvaluation generatorImages reduction22273.relations [70,1057] reduction22273.output := by lin_cert using reduction22273.terms
def image22274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22274 : InImage map_17_257 image22274 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22274 : Bundle := named_bundle% "RealMapCertificates/relations/basis22274.json"
theorem reductionProof22274 : EqualModuloRelations reduction22274.relations reduction22274.input reduction22274.output := by lin_cert using reduction22274.terms
theorem substitutionProof22274 : IsMapEvaluation generatorImages reduction22274.relations [9,212,324] reduction22274.output := by lin_cert using reduction22274.terms
def image22275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22275 : InImage map_17_257 image22275 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22275 : Bundle := named_bundle% "RealMapCertificates/relations/basis22275.json"
theorem reductionProof22275 : EqualModuloRelations reduction22275.relations reduction22275.input reduction22275.output := by lin_cert using reduction22275.terms
theorem substitutionProof22275 : IsMapEvaluation generatorImages reduction22275.relations [1,2572] reduction22275.output := by lin_cert using reduction22275.terms
def image22276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22276 : InImage map_17_257 image22276 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22276 : Bundle := named_bundle% "RealMapCertificates/relations/basis22276.json"
theorem reductionProof22276 : EqualModuloRelations reduction22276.relations reduction22276.input reduction22276.output := by lin_cert using reduction22276.terms
theorem substitutionProof22276 : IsMapEvaluation generatorImages reduction22276.relations [0,3,267,324] reduction22276.output := by lin_cert using reduction22276.terms
end RealMapCertificates
