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
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 44 => [[1,4,4,4,4]]
  | 45 => [[5,5,8]]
  | 47 => [[2,4,4,4,4]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 69 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 88 => [[4,4,5,5,7]]
  | 89 => []
  | 90 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 134 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 187 => []
  | 193 => [[5,5,7,12]]
  | 207 => [[5,5,8,12]]
  | 212 => []
  | 324 => []
  | 328 => []
  | 333 => []
  | 348 => []
  | 352 => []
  | 359 => []
  | 367 => []
  | 2115 => []
  | 2147 => []
  | 2432 => []
  | 2479 => []
  | 2622 => []
  | 2662 => []
  | 2663 => []
  | 2664 => []
  | 2696 => []
  | 2697 => []
  | 2698 => []
  | 2699 => []
  | 2700 => []
  | 2701 => []
  | 2702 => []
  | 2703 => []
  | 2705 => []
  | 2706 => []
  | 2711 => []
  | 2714 => []
  | 2719 => []
  | 2720 => []
  | 2721 => []
  | 2722 => []
  | 2772 => []
  | 2773 => []
  | 2776 => []
  | 2837 => []
  | 2838 => []
  | 2839 => []
  | 2840 => []
  | 2888 => []
  | 2889 => []
  | 2890 => []
  | 2891 => []
  | 2892 => []
  | _ => []
def map_17_258 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22618 : InImage map_17_258 image22618 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22618 : Bundle := named_bundle% "RealMapCertificates/relations/basis22618.json"
theorem reductionProof22618 : EqualModuloRelations reduction22618.relations reduction22618.input reduction22618.output := by lin_cert using reduction22618.terms
theorem substitutionProof22618 : IsMapEvaluation generatorImages reduction22618.relations [2701] reduction22618.output := by lin_cert using reduction22618.terms
def image22619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22619 : InImage map_17_258 image22619 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22619 : Bundle := named_bundle% "RealMapCertificates/relations/basis22619.json"
theorem reductionProof22619 : EqualModuloRelations reduction22619.relations reduction22619.input reduction22619.output := by lin_cert using reduction22619.terms
theorem substitutionProof22619 : IsMapEvaluation generatorImages reduction22619.relations [2700] reduction22619.output := by lin_cert using reduction22619.terms
def image22620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22620 : InImage map_17_258 image22620 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22620 : Bundle := named_bundle% "RealMapCertificates/relations/basis22620.json"
theorem reductionProof22620 : EqualModuloRelations reduction22620.relations reduction22620.input reduction22620.output := by lin_cert using reduction22620.terms
theorem substitutionProof22620 : IsMapEvaluation generatorImages reduction22620.relations [2699] reduction22620.output := by lin_cert using reduction22620.terms
def image22621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22621 : InImage map_17_258 image22621 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22621 : Bundle := named_bundle% "RealMapCertificates/relations/basis22621.json"
theorem reductionProof22621 : EqualModuloRelations reduction22621.relations reduction22621.input reduction22621.output := by lin_cert using reduction22621.terms
theorem substitutionProof22621 : IsMapEvaluation generatorImages reduction22621.relations [2698] reduction22621.output := by lin_cert using reduction22621.terms
def image22622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22622 : InImage map_17_258 image22622 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22622 : Bundle := named_bundle% "RealMapCertificates/relations/basis22622.json"
theorem reductionProof22622 : EqualModuloRelations reduction22622.relations reduction22622.input reduction22622.output := by lin_cert using reduction22622.terms
theorem substitutionProof22622 : IsMapEvaluation generatorImages reduction22622.relations [2697] reduction22622.output := by lin_cert using reduction22622.terms
def image22623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22623 : InImage map_17_258 image22623 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22623 : Bundle := named_bundle% "RealMapCertificates/relations/basis22623.json"
theorem reductionProof22623 : EqualModuloRelations reduction22623.relations reduction22623.input reduction22623.output := by lin_cert using reduction22623.terms
theorem substitutionProof22623 : IsMapEvaluation generatorImages reduction22623.relations [2696] reduction22623.output := by lin_cert using reduction22623.terms
def image22624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22624 : InImage map_17_258 image22624 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22624 : Bundle := named_bundle% "RealMapCertificates/relations/basis22624.json"
theorem reductionProof22624 : EqualModuloRelations reduction22624.relations reduction22624.input reduction22624.output := by lin_cert using reduction22624.terms
theorem substitutionProof22624 : IsMapEvaluation generatorImages reduction22624.relations [0,2663] reduction22624.output := by lin_cert using reduction22624.terms
def image22625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22625 : InImage map_17_258 image22625 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22625 : Bundle := named_bundle% "RealMapCertificates/relations/basis22625.json"
theorem reductionProof22625 : EqualModuloRelations reduction22625.relations reduction22625.input reduction22625.output := by lin_cert using reduction22625.terms
theorem substitutionProof22625 : IsMapEvaluation generatorImages reduction22625.relations [0,2662] reduction22625.output := by lin_cert using reduction22625.terms
def image22626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22626 : InImage map_17_258 image22626 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22626 : Bundle := named_bundle% "RealMapCertificates/relations/basis22626.json"
theorem reductionProof22626 : EqualModuloRelations reduction22626.relations reduction22626.input reduction22626.output := by lin_cert using reduction22626.terms
theorem substitutionProof22626 : IsMapEvaluation generatorImages reduction22626.relations [0,324,328] reduction22626.output := by lin_cert using reduction22626.terms
def image22627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22627 : InImage map_17_258 image22627 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22627 : Bundle := named_bundle% "RealMapCertificates/relations/basis22627.json"
theorem reductionProof22627 : EqualModuloRelations reduction22627.relations reduction22627.input reduction22627.output := by lin_cert using reduction22627.terms
theorem substitutionProof22627 : IsMapEvaluation generatorImages reduction22627.relations [0,2,2479] reduction22627.output := by lin_cert using reduction22627.terms
def map_17_259 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22934 : InImage map_17_259 image22934 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22934 : Bundle := named_bundle% "RealMapCertificates/relations/basis22934.json"
theorem reductionProof22934 : EqualModuloRelations reduction22934.relations reduction22934.input reduction22934.output := by lin_cert using reduction22934.terms
theorem substitutionProof22934 : IsMapEvaluation generatorImages reduction22934.relations [324,348] reduction22934.output := by lin_cert using reduction22934.terms
def image22935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22935 : InImage map_17_259 image22935 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22935 : Bundle := named_bundle% "RealMapCertificates/relations/basis22935.json"
theorem reductionProof22935 : EqualModuloRelations reduction22935.relations reduction22935.input reduction22935.output := by lin_cert using reduction22935.terms
theorem substitutionProof22935 : IsMapEvaluation generatorImages reduction22935.relations [7,2115] reduction22935.output := by lin_cert using reduction22935.terms
def image22936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22936 : InImage map_17_259 image22936 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22936 : Bundle := named_bundle% "RealMapCertificates/relations/basis22936.json"
theorem reductionProof22936 : EqualModuloRelations reduction22936.relations reduction22936.input reduction22936.output := by lin_cert using reduction22936.terms
theorem substitutionProof22936 : IsMapEvaluation generatorImages reduction22936.relations [1,2664] reduction22936.output := by lin_cert using reduction22936.terms
def image22937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22937 : InImage map_17_259 image22937 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22937 : Bundle := named_bundle% "RealMapCertificates/relations/basis22937.json"
theorem reductionProof22937 : EqualModuloRelations reduction22937.relations reduction22937.input reduction22937.output := by lin_cert using reduction22937.terms
theorem substitutionProof22937 : IsMapEvaluation generatorImages reduction22937.relations [1,2662] reduction22937.output := by lin_cert using reduction22937.terms
def image22938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22938 : InImage map_17_259 image22938 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22938 : Bundle := named_bundle% "RealMapCertificates/relations/basis22938.json"
theorem reductionProof22938 : EqualModuloRelations reduction22938.relations reduction22938.input reduction22938.output := by lin_cert using reduction22938.terms
theorem substitutionProof22938 : IsMapEvaluation generatorImages reduction22938.relations [1,324,328] reduction22938.output := by lin_cert using reduction22938.terms
def image22939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22939 : InImage map_17_259 image22939 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22939 : Bundle := named_bundle% "RealMapCertificates/relations/basis22939.json"
theorem reductionProof22939 : EqualModuloRelations reduction22939.relations reduction22939.input reduction22939.output := by lin_cert using reduction22939.terms
theorem substitutionProof22939 : IsMapEvaluation generatorImages reduction22939.relations [0,2706] reduction22939.output := by lin_cert using reduction22939.terms
def image22940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22940 : InImage map_17_259 image22940 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22940 : Bundle := named_bundle% "RealMapCertificates/relations/basis22940.json"
theorem reductionProof22940 : EqualModuloRelations reduction22940.relations reduction22940.input reduction22940.output := by lin_cert using reduction22940.terms
theorem substitutionProof22940 : IsMapEvaluation generatorImages reduction22940.relations [0,2705] reduction22940.output := by lin_cert using reduction22940.terms
def image22941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22941 : InImage map_17_259 image22941 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22941 : Bundle := named_bundle% "RealMapCertificates/relations/basis22941.json"
theorem reductionProof22941 : EqualModuloRelations reduction22941.relations reduction22941.input reduction22941.output := by lin_cert using reduction22941.terms
theorem substitutionProof22941 : IsMapEvaluation generatorImages reduction22941.relations [0,2703] reduction22941.output := by lin_cert using reduction22941.terms
def image22942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22942 : InImage map_17_259 image22942 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22942 : Bundle := named_bundle% "RealMapCertificates/relations/basis22942.json"
theorem reductionProof22942 : EqualModuloRelations reduction22942.relations reduction22942.input reduction22942.output := by lin_cert using reduction22942.terms
theorem substitutionProof22942 : IsMapEvaluation generatorImages reduction22942.relations [0,2702] reduction22942.output := by lin_cert using reduction22942.terms
def map_17_260 : Matrix 0 14 := fun i j => ([] : List Bool)[i.val*14+j.val]!
def image23323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23323 : InImage map_17_260 image23323 := by lin_cert using (fun j : Fin 14 => decide (j.val = 0))
def reduction23323 : Bundle := named_bundle% "RealMapCertificates/relations/basis23323.json"
theorem reductionProof23323 : EqualModuloRelations reduction23323.relations reduction23323.input reduction23323.output := by lin_cert using reduction23323.terms
theorem substitutionProof23323 : IsMapEvaluation generatorImages reduction23323.relations [2838] reduction23323.output := by lin_cert using reduction23323.terms
def image23324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23324 : InImage map_17_260 image23324 := by lin_cert using (fun j : Fin 14 => decide (j.val = 1))
def reduction23324 : Bundle := named_bundle% "RealMapCertificates/relations/basis23324.json"
theorem reductionProof23324 : EqualModuloRelations reduction23324.relations reduction23324.input reduction23324.output := by lin_cert using reduction23324.terms
theorem substitutionProof23324 : IsMapEvaluation generatorImages reduction23324.relations [2837] reduction23324.output := by lin_cert using reduction23324.terms
def image23325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23325 : InImage map_17_260 image23325 := by lin_cert using (fun j : Fin 14 => decide (j.val = 2))
def reduction23325 : Bundle := named_bundle% "RealMapCertificates/relations/basis23325.json"
theorem reductionProof23325 : EqualModuloRelations reduction23325.relations reduction23325.input reduction23325.output := by lin_cert using reduction23325.terms
theorem substitutionProof23325 : IsMapEvaluation generatorImages reduction23325.relations [333,352] reduction23325.output := by lin_cert using reduction23325.terms
def image23326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23326 : InImage map_17_260 image23326 := by lin_cert using (fun j : Fin 14 => decide (j.val = 3))
def reduction23326 : Bundle := named_bundle% "RealMapCertificates/relations/basis23326.json"
theorem reductionProof23326 : EqualModuloRelations reduction23326.relations reduction23326.input reduction23326.output := by lin_cert using reduction23326.terms
theorem substitutionProof23326 : IsMapEvaluation generatorImages reduction23326.relations [324,359] reduction23326.output := by lin_cert using reduction23326.terms
def image23327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23327 : InImage map_17_260 image23327 := by lin_cert using (fun j : Fin 14 => decide (j.val = 4))
def reduction23327 : Bundle := named_bundle% "RealMapCertificates/relations/basis23327.json"
theorem reductionProof23327 : EqualModuloRelations reduction23327.relations reduction23327.input reduction23327.output := by lin_cert using reduction23327.terms
theorem substitutionProof23327 : IsMapEvaluation generatorImages reduction23327.relations [13,212,324] reduction23327.output := by lin_cert using reduction23327.terms
def image23328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23328 : InImage map_17_260 image23328 := by lin_cert using (fun j : Fin 14 => decide (j.val = 5))
def reduction23328 : Bundle := named_bundle% "RealMapCertificates/relations/basis23328.json"
theorem reductionProof23328 : EqualModuloRelations reduction23328.relations reduction23328.input reduction23328.output := by lin_cert using reduction23328.terms
theorem substitutionProof23328 : IsMapEvaluation generatorImages reduction23328.relations [7,2147] reduction23328.output := by lin_cert using reduction23328.terms
def image23329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23329 : InImage map_17_260 image23329 := by lin_cert using (fun j : Fin 14 => decide (j.val = 6))
def reduction23329 : Bundle := named_bundle% "RealMapCertificates/relations/basis23329.json"
theorem reductionProof23329 : EqualModuloRelations reduction23329.relations reduction23329.input reduction23329.output := by lin_cert using reduction23329.terms
theorem substitutionProof23329 : IsMapEvaluation generatorImages reduction23329.relations [3,2432] reduction23329.output := by lin_cert using reduction23329.terms
def image23330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23330 : InImage map_17_260 image23330 := by lin_cert using (fun j : Fin 14 => decide (j.val = 7))
def reduction23330 : Bundle := named_bundle% "RealMapCertificates/relations/basis23330.json"
theorem reductionProof23330 : EqualModuloRelations reduction23330.relations reduction23330.input reduction23330.output := by lin_cert using reduction23330.terms
theorem substitutionProof23330 : IsMapEvaluation generatorImages reduction23330.relations [1,2705] reduction23330.output := by lin_cert using reduction23330.terms
def image23331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23331 : InImage map_17_260 image23331 := by lin_cert using (fun j : Fin 14 => decide (j.val = 8))
def reduction23331 : Bundle := named_bundle% "RealMapCertificates/relations/basis23331.json"
theorem reductionProof23331 : EqualModuloRelations reduction23331.relations reduction23331.input reduction23331.output := by lin_cert using reduction23331.terms
theorem substitutionProof23331 : IsMapEvaluation generatorImages reduction23331.relations [1,2703] reduction23331.output := by lin_cert using reduction23331.terms
def image23332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23332 : InImage map_17_260 image23332 := by lin_cert using (fun j : Fin 14 => decide (j.val = 9))
def reduction23332 : Bundle := named_bundle% "RealMapCertificates/relations/basis23332.json"
theorem reductionProof23332 : EqualModuloRelations reduction23332.relations reduction23332.input reduction23332.output := by lin_cert using reduction23332.terms
theorem substitutionProof23332 : IsMapEvaluation generatorImages reduction23332.relations [0,2773] reduction23332.output := by lin_cert using reduction23332.terms
def image23333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23333 : InImage map_17_260 image23333 := by lin_cert using (fun j : Fin 14 => decide (j.val = 10))
def reduction23333 : Bundle := named_bundle% "RealMapCertificates/relations/basis23333.json"
theorem reductionProof23333 : EqualModuloRelations reduction23333.relations reduction23333.input reduction23333.output := by lin_cert using reduction23333.terms
theorem substitutionProof23333 : IsMapEvaluation generatorImages reduction23333.relations [0,2772] reduction23333.output := by lin_cert using reduction23333.terms
def image23334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23334 : InImage map_17_260 image23334 := by lin_cert using (fun j : Fin 14 => decide (j.val = 11))
def reduction23334 : Bundle := named_bundle% "RealMapCertificates/relations/basis23334.json"
theorem reductionProof23334 : EqualModuloRelations reduction23334.relations reduction23334.input reduction23334.output := by lin_cert using reduction23334.terms
theorem substitutionProof23334 : IsMapEvaluation generatorImages reduction23334.relations [0,0,2714] reduction23334.output := by lin_cert using reduction23334.terms
def image23335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23335 : InImage map_17_260 image23335 := by lin_cert using (fun j : Fin 14 => decide (j.val = 12))
def reduction23335 : Bundle := named_bundle% "RealMapCertificates/relations/basis23335.json"
theorem reductionProof23335 : EqualModuloRelations reduction23335.relations reduction23335.input reduction23335.output := by lin_cert using reduction23335.terms
theorem substitutionProof23335 : IsMapEvaluation generatorImages reduction23335.relations [0,0,2711] reduction23335.output := by lin_cert using reduction23335.terms
def image23336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23336 : InImage map_17_260 image23336 := by lin_cert using (fun j : Fin 14 => decide (j.val = 13))
def reduction23336 : Bundle := named_bundle% "RealMapCertificates/relations/basis23336.json"
theorem reductionProof23336 : EqualModuloRelations reduction23336.relations reduction23336.input reduction23336.output := by lin_cert using reduction23336.terms
theorem substitutionProof23336 : IsMapEvaluation generatorImages reduction23336.relations [0,0,0,0,2622] reduction23336.output := by lin_cert using reduction23336.terms
def map_17_261 : Matrix 0 15 := fun i j => ([] : List Bool)[i.val*15+j.val]!
def image23754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23754 : InImage map_17_261 image23754 := by lin_cert using (fun j : Fin 15 => decide (j.val = 0))
def reduction23754 : Bundle := named_bundle% "RealMapCertificates/relations/basis23754.json"
theorem reductionProof23754 : EqualModuloRelations reduction23754.relations reduction23754.input reduction23754.output := by lin_cert using reduction23754.terms
theorem substitutionProof23754 : IsMapEvaluation generatorImages reduction23754.relations [2892] reduction23754.output := by lin_cert using reduction23754.terms
def image23755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23755 : InImage map_17_261 image23755 := by lin_cert using (fun j : Fin 15 => decide (j.val = 1))
def reduction23755 : Bundle := named_bundle% "RealMapCertificates/relations/basis23755.json"
theorem reductionProof23755 : EqualModuloRelations reduction23755.relations reduction23755.input reduction23755.output := by lin_cert using reduction23755.terms
theorem substitutionProof23755 : IsMapEvaluation generatorImages reduction23755.relations [2891] reduction23755.output := by lin_cert using reduction23755.terms
def image23756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23756 : InImage map_17_261 image23756 := by lin_cert using (fun j : Fin 15 => decide (j.val = 2))
def reduction23756 : Bundle := named_bundle% "RealMapCertificates/relations/basis23756.json"
theorem reductionProof23756 : EqualModuloRelations reduction23756.relations reduction23756.input reduction23756.output := by lin_cert using reduction23756.terms
theorem substitutionProof23756 : IsMapEvaluation generatorImages reduction23756.relations [2890] reduction23756.output := by lin_cert using reduction23756.terms
def image23757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23757 : InImage map_17_261 image23757 := by lin_cert using (fun j : Fin 15 => decide (j.val = 3))
def reduction23757 : Bundle := named_bundle% "RealMapCertificates/relations/basis23757.json"
theorem reductionProof23757 : EqualModuloRelations reduction23757.relations reduction23757.input reduction23757.output := by lin_cert using reduction23757.terms
theorem substitutionProof23757 : IsMapEvaluation generatorImages reduction23757.relations [2889] reduction23757.output := by lin_cert using reduction23757.terms
def image23758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23758 : InImage map_17_261 image23758 := by lin_cert using (fun j : Fin 15 => decide (j.val = 4))
def reduction23758 : Bundle := named_bundle% "RealMapCertificates/relations/basis23758.json"
theorem reductionProof23758 : EqualModuloRelations reduction23758.relations reduction23758.input reduction23758.output := by lin_cert using reduction23758.terms
theorem substitutionProof23758 : IsMapEvaluation generatorImages reduction23758.relations [2888] reduction23758.output := by lin_cert using reduction23758.terms
def image23759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23759 : InImage map_17_261 image23759 := by lin_cert using (fun j : Fin 15 => decide (j.val = 5))
def reduction23759 : Bundle := named_bundle% "RealMapCertificates/relations/basis23759.json"
theorem reductionProof23759 : EqualModuloRelations reduction23759.relations reduction23759.input reduction23759.output := by lin_cert using reduction23759.terms
theorem substitutionProof23759 : IsMapEvaluation generatorImages reduction23759.relations [333,367] reduction23759.output := by lin_cert using reduction23759.terms
def image23760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23760 : InImage map_17_261 image23760 := by lin_cert using (fun j : Fin 15 => decide (j.val = 6))
def reduction23760 : Bundle := named_bundle% "RealMapCertificates/relations/basis23760.json"
theorem reductionProof23760 : EqualModuloRelations reduction23760.relations reduction23760.input reduction23760.output := by lin_cert using reduction23760.terms
theorem substitutionProof23760 : IsMapEvaluation generatorImages reduction23760.relations [13,13,134,324] reduction23760.output := by lin_cert using reduction23760.terms
def image23761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23761 : InImage map_17_261 image23761 := by lin_cert using (fun j : Fin 15 => decide (j.val = 7))
def reduction23761 : Bundle := named_bundle% "RealMapCertificates/relations/basis23761.json"
theorem reductionProof23761 : EqualModuloRelations reduction23761.relations reduction23761.input reduction23761.output := by lin_cert using reduction23761.terms
theorem substitutionProof23761 : IsMapEvaluation generatorImages reduction23761.relations [2,324,328] reduction23761.output := by lin_cert using reduction23761.terms
def image23762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23762 : InImage map_17_261 image23762 := by lin_cert using (fun j : Fin 15 => decide (j.val = 8))
def reduction23762 : Bundle := named_bundle% "RealMapCertificates/relations/basis23762.json"
theorem reductionProof23762 : EqualModuloRelations reduction23762.relations reduction23762.input reduction23762.output := by lin_cert using reduction23762.terms
theorem substitutionProof23762 : IsMapEvaluation generatorImages reduction23762.relations [0,2840] reduction23762.output := by lin_cert using reduction23762.terms
def image23763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23763 : InImage map_17_261 image23763 := by lin_cert using (fun j : Fin 15 => decide (j.val = 9))
def reduction23763 : Bundle := named_bundle% "RealMapCertificates/relations/basis23763.json"
theorem reductionProof23763 : EqualModuloRelations reduction23763.relations reduction23763.input reduction23763.output := by lin_cert using reduction23763.terms
theorem substitutionProof23763 : IsMapEvaluation generatorImages reduction23763.relations [0,2839] reduction23763.output := by lin_cert using reduction23763.terms
def image23764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23764 : InImage map_17_261 image23764 := by lin_cert using (fun j : Fin 15 => decide (j.val = 10))
def reduction23764 : Bundle := named_bundle% "RealMapCertificates/relations/basis23764.json"
theorem reductionProof23764 : EqualModuloRelations reduction23764.relations reduction23764.input reduction23764.output := by lin_cert using reduction23764.terms
theorem substitutionProof23764 : IsMapEvaluation generatorImages reduction23764.relations [0,0,2776] reduction23764.output := by lin_cert using reduction23764.terms
def image23765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23765 : InImage map_17_261 image23765 := by lin_cert using (fun j : Fin 15 => decide (j.val = 11))
def reduction23765 : Bundle := named_bundle% "RealMapCertificates/relations/basis23765.json"
theorem reductionProof23765 : EqualModuloRelations reduction23765.relations reduction23765.input reduction23765.output := by lin_cert using reduction23765.terms
theorem substitutionProof23765 : IsMapEvaluation generatorImages reduction23765.relations [0,0,0,2722] reduction23765.output := by lin_cert using reduction23765.terms
def image23766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23766 : InImage map_17_261 image23766 := by lin_cert using (fun j : Fin 15 => decide (j.val = 12))
def reduction23766 : Bundle := named_bundle% "RealMapCertificates/relations/basis23766.json"
theorem reductionProof23766 : EqualModuloRelations reduction23766.relations reduction23766.input reduction23766.output := by lin_cert using reduction23766.terms
theorem substitutionProof23766 : IsMapEvaluation generatorImages reduction23766.relations [0,0,0,2721] reduction23766.output := by lin_cert using reduction23766.terms
def image23767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23767 : InImage map_17_261 image23767 := by lin_cert using (fun j : Fin 15 => decide (j.val = 13))
def reduction23767 : Bundle := named_bundle% "RealMapCertificates/relations/basis23767.json"
theorem reductionProof23767 : EqualModuloRelations reduction23767.relations reduction23767.input reduction23767.output := by lin_cert using reduction23767.terms
theorem substitutionProof23767 : IsMapEvaluation generatorImages reduction23767.relations [0,0,0,2720] reduction23767.output := by lin_cert using reduction23767.terms
def image23768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23768 : InImage map_17_261 image23768 := by lin_cert using (fun j : Fin 15 => decide (j.val = 14))
def reduction23768 : Bundle := named_bundle% "RealMapCertificates/relations/basis23768.json"
theorem reductionProof23768 : EqualModuloRelations reduction23768.relations reduction23768.input reduction23768.output := by lin_cert using reduction23768.terms
theorem substitutionProof23768 : IsMapEvaluation generatorImages reduction23768.relations [0,0,0,2719] reduction23768.output := by lin_cert using reduction23768.terms
def map_18_18 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image40 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation40 : InImage map_18_18 image40 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction40 : Bundle := named_bundle% "RealMapCertificates/relations/basis40.json"
theorem reductionProof40 : EqualModuloRelations reduction40.relations reduction40.input reduction40.output := by lin_cert using reduction40.terms
theorem substitutionProof40 : IsMapEvaluation generatorImages reduction40.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction40.output := by lin_cert using reduction40.terms
def map_18_52 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image273 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation273 : InImage map_18_52 image273 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction273 : Bundle := named_bundle% "RealMapCertificates/relations/basis273.json"
theorem reductionProof273 : EqualModuloRelations reduction273.relations reduction273.input reduction273.output := by lin_cert using reduction273.terms
theorem substitutionProof273 : IsMapEvaluation generatorImages reduction273.relations [1,44] reduction273.output := by lin_cert using reduction273.terms
def map_18_53 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image283 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation283 : InImage map_18_53 image283 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction283 : Bundle := named_bundle% "RealMapCertificates/relations/basis283.json"
theorem reductionProof283 : EqualModuloRelations reduction283.relations reduction283.input reduction283.output := by lin_cert using reduction283.terms
theorem substitutionProof283 : IsMapEvaluation generatorImages reduction283.relations [0,47] reduction283.output := by lin_cert using reduction283.terms
def map_18_56 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image313 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation313 : InImage map_18_56 image313 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction313 : Bundle := named_bundle% "RealMapCertificates/relations/basis313.json"
theorem reductionProof313 : EqualModuloRelations reduction313.relations reduction313.input reduction313.output := by lin_cert using reduction313.terms
theorem substitutionProof313 : IsMapEvaluation generatorImages reduction313.relations [0,0,49] reduction313.output := by lin_cert using reduction313.terms
def map_18_57 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation322 : InImage map_18_57 image322 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction322 : Bundle := named_bundle% "RealMapCertificates/relations/basis322.json"
theorem reductionProof322 : EqualModuloRelations reduction322.relations reduction322.input reduction322.output := by lin_cert using reduction322.terms
theorem substitutionProof322 : IsMapEvaluation generatorImages reduction322.relations [0,0,0,50] reduction322.output := by lin_cert using reduction322.terms
def map_18_58 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation334 : InImage map_18_58 image334 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction334 : Bundle := named_bundle% "RealMapCertificates/relations/basis334.json"
theorem reductionProof334 : EqualModuloRelations reduction334.relations reduction334.input reduction334.output := by lin_cert using reduction334.terms
theorem substitutionProof334 : IsMapEvaluation generatorImages reduction334.relations [1,1,49] reduction334.output := by lin_cert using reduction334.terms
def map_18_59 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image343 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation343 : InImage map_18_59 image343 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction343 : Bundle := named_bundle% "RealMapCertificates/relations/basis343.json"
theorem reductionProof343 : EqualModuloRelations reduction343.relations reduction343.input reduction343.output := by lin_cert using reduction343.terms
theorem substitutionProof343 : IsMapEvaluation generatorImages reduction343.relations [0,0,55] reduction343.output := by lin_cert using reduction343.terms
def map_18_62 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image368 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation368 : InImage map_18_62 image368 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction368 : Bundle := named_bundle% "RealMapCertificates/relations/basis368.json"
theorem reductionProof368 : EqualModuloRelations reduction368.relations reduction368.input reduction368.output := by lin_cert using reduction368.terms
theorem substitutionProof368 : IsMapEvaluation generatorImages reduction368.relations [0,0,8,31] reduction368.output := by lin_cert using reduction368.terms
def map_18_64 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation390 : InImage map_18_64 image390 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction390 : Bundle := named_bundle% "RealMapCertificates/relations/basis390.json"
theorem reductionProof390 : EqualModuloRelations reduction390.relations reduction390.input reduction390.output := by lin_cert using reduction390.terms
theorem substitutionProof390 : IsMapEvaluation generatorImages reduction390.relations [0,0,0,0,17,17] reduction390.output := by lin_cert using reduction390.terms
def map_18_65 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation405 : InImage map_18_65 image405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction405 : Bundle := named_bundle% "RealMapCertificates/relations/basis405.json"
theorem reductionProof405 : EqualModuloRelations reduction405.relations reduction405.input reduction405.output := by lin_cert using reduction405.terms
theorem substitutionProof405 : IsMapEvaluation generatorImages reduction405.relations [0,0,8,39] reduction405.output := by lin_cert using reduction405.terms
def image406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation406 : InImage map_18_65 image406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction406 : Bundle := named_bundle% "RealMapCertificates/relations/basis406.json"
theorem reductionProof406 : EqualModuloRelations reduction406.relations reduction406.input reduction406.output := by lin_cert using reduction406.terms
theorem substitutionProof406 : IsMapEvaluation generatorImages reduction406.relations [0,0,0,0,0,59] reduction406.output := by lin_cert using reduction406.terms
def map_18_68 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image460 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation460 : InImage map_18_68 image460 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction460 : Bundle := named_bundle% "RealMapCertificates/relations/basis460.json"
theorem reductionProof460 : EqualModuloRelations reduction460.relations reduction460.input reduction460.output := by lin_cert using reduction460.terms
theorem substitutionProof460 : IsMapEvaluation generatorImages reduction460.relations [0,0,8,8,16] reduction460.output := by lin_cert using reduction460.terms
def map_18_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation522 : InImage map_18_71 image522 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction522 : Bundle := named_bundle% "RealMapCertificates/relations/basis522.json"
theorem reductionProof522 : EqualModuloRelations reduction522.relations reduction522.input reduction522.output := by lin_cert using reduction522.terms
theorem substitutionProof522 : IsMapEvaluation generatorImages reduction522.relations [0,0,0,0,0,0,0,0,64] reduction522.output := by lin_cert using reduction522.terms
def map_18_74 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image587 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation587 : InImage map_18_74 image587 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction587 : Bundle := named_bundle% "RealMapCertificates/relations/basis587.json"
theorem reductionProof587 : EqualModuloRelations reduction587.relations reduction587.input reduction587.output := by lin_cert using reduction587.terms
theorem substitutionProof587 : IsMapEvaluation generatorImages reduction587.relations [1,88] reduction587.output := by lin_cert using reduction587.terms
def map_18_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image609 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation609 : InImage map_18_75 image609 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction609 : Bundle := named_bundle% "RealMapCertificates/relations/basis609.json"
theorem reductionProof609 : EqualModuloRelations reduction609.relations reduction609.input reduction609.output := by lin_cert using reduction609.terms
theorem substitutionProof609 : IsMapEvaluation generatorImages reduction609.relations [17,40] reduction609.output := by lin_cert using reduction609.terms
def map_18_78 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image672 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation672 : InImage map_18_78 image672 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction672 : Bundle := named_bundle% "RealMapCertificates/relations/basis672.json"
theorem reductionProof672 : EqualModuloRelations reduction672.relations reduction672.input reduction672.output := by lin_cert using reduction672.terms
theorem substitutionProof672 : IsMapEvaluation generatorImages reduction672.relations [8,17,17] reduction672.output := by lin_cert using reduction672.terms
def map_18_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation714 : InImage map_18_80 image714 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction714 : Bundle := named_bundle% "RealMapCertificates/relations/basis714.json"
theorem reductionProof714 : EqualModuloRelations reduction714.relations reduction714.input reduction714.output := by lin_cert using reduction714.terms
theorem substitutionProof714 : IsMapEvaluation generatorImages reduction714.relations [0,0,0,0,0,0,0,0,90] reduction714.output := by lin_cert using reduction714.terms
def map_18_81 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image741 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation741 : InImage map_18_81 image741 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction741 : Bundle := named_bundle% "RealMapCertificates/relations/basis741.json"
theorem reductionProof741 : EqualModuloRelations reduction741.relations reduction741.input reduction741.output := by lin_cert using reduction741.terms
theorem substitutionProof741 : IsMapEvaluation generatorImages reduction741.relations [8,17,20] reduction741.output := by lin_cert using reduction741.terms
def image742 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation742 : InImage map_18_81 image742 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction742 : Bundle := named_bundle% "RealMapCertificates/relations/basis742.json"
theorem reductionProof742 : EqualModuloRelations reduction742.relations reduction742.input reduction742.output := by lin_cert using reduction742.terms
theorem substitutionProof742 : IsMapEvaluation generatorImages reduction742.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction742.output := by lin_cert using reduction742.terms
def map_18_84 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image809 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation809 : InImage map_18_84 image809 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction809 : Bundle := named_bundle% "RealMapCertificates/relations/basis809.json"
theorem reductionProof809 : EqualModuloRelations reduction809.relations reduction809.input reduction809.output := by lin_cert using reduction809.terms
theorem substitutionProof809 : IsMapEvaluation generatorImages reduction809.relations [8,16,23] reduction809.output := by lin_cert using reduction809.terms
def map_18_87 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image893 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation893 : InImage map_18_87 image893 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction893 : Bundle := named_bundle% "RealMapCertificates/relations/basis893.json"
theorem reductionProof893 : EqualModuloRelations reduction893.relations reduction893.input reduction893.output := by lin_cert using reduction893.terms
theorem substitutionProof893 : IsMapEvaluation generatorImages reduction893.relations [137] reduction893.output := by lin_cert using reduction893.terms
def image894 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation894 : InImage map_18_87 image894 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction894 : Bundle := named_bundle% "RealMapCertificates/relations/basis894.json"
theorem reductionProof894 : EqualModuloRelations reduction894.relations reduction894.input reduction894.output := by lin_cert using reduction894.terms
theorem substitutionProof894 : IsMapEvaluation generatorImages reduction894.relations [8,8,45] reduction894.output := by lin_cert using reduction894.terms
def map_18_88 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image917 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation917 : InImage map_18_88 image917 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction917 : Bundle := named_bundle% "RealMapCertificates/relations/basis917.json"
theorem reductionProof917 : EqualModuloRelations reduction917.relations reduction917.input reduction917.output := by lin_cert using reduction917.terms
theorem substitutionProof917 : IsMapEvaluation generatorImages reduction917.relations [0,138] reduction917.output := by lin_cert using reduction917.terms
def map_18_90 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image970 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation970 : InImage map_18_90 image970 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction970 : Bundle := named_bundle% "RealMapCertificates/relations/basis970.json"
theorem reductionProof970 : EqualModuloRelations reduction970.relations reduction970.input reduction970.output := by lin_cert using reduction970.terms
theorem substitutionProof970 : IsMapEvaluation generatorImages reduction970.relations [146] reduction970.output := by lin_cert using reduction970.terms
def image971 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation971 : InImage map_18_90 image971 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction971 : Bundle := named_bundle% "RealMapCertificates/relations/basis971.json"
theorem reductionProof971 : EqualModuloRelations reduction971.relations reduction971.input reduction971.output := by lin_cert using reduction971.terms
theorem substitutionProof971 : IsMapEvaluation generatorImages reduction971.relations [8,8,8,23] reduction971.output := by lin_cert using reduction971.terms
def map_18_91 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1003 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1003 : InImage map_18_91 image1003 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1003 : Bundle := named_bundle% "RealMapCertificates/relations/basis1003.json"
theorem reductionProof1003 : EqualModuloRelations reduction1003.relations reduction1003.input reduction1003.output := by lin_cert using reduction1003.terms
theorem substitutionProof1003 : IsMapEvaluation generatorImages reduction1003.relations [0,147] reduction1003.output := by lin_cert using reduction1003.terms
def map_18_93 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1051 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1051 : InImage map_18_93 image1051 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1051 : Bundle := named_bundle% "RealMapCertificates/relations/basis1051.json"
theorem reductionProof1051 : EqualModuloRelations reduction1051.relations reduction1051.input reduction1051.output := by lin_cert using reduction1051.terms
theorem substitutionProof1051 : IsMapEvaluation generatorImages reduction1051.relations [16,64] reduction1051.output := by lin_cert using reduction1051.terms
def image1052 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1052 : InImage map_18_93 image1052 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1052 : Bundle := named_bundle% "RealMapCertificates/relations/basis1052.json"
theorem reductionProof1052 : EqualModuloRelations reduction1052.relations reduction1052.input reduction1052.output := by lin_cert using reduction1052.terms
theorem substitutionProof1052 : IsMapEvaluation generatorImages reduction1052.relations [8,8,9,23] reduction1052.output := by lin_cert using reduction1052.terms
def map_18_94 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1076 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1076 : InImage map_18_94 image1076 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1076 : Bundle := named_bundle% "RealMapCertificates/relations/basis1076.json"
theorem reductionProof1076 : EqualModuloRelations reduction1076.relations reduction1076.input reduction1076.output := by lin_cert using reduction1076.terms
theorem substitutionProof1076 : IsMapEvaluation generatorImages reduction1076.relations [0,17,64] reduction1076.output := by lin_cert using reduction1076.terms
def image1077 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1077 : InImage map_18_94 image1077 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1077 : Bundle := named_bundle% "RealMapCertificates/relations/basis1077.json"
theorem reductionProof1077 : EqualModuloRelations reduction1077.relations reduction1077.input reduction1077.output := by lin_cert using reduction1077.terms
theorem substitutionProof1077 : IsMapEvaluation generatorImages reduction1077.relations [0,0,149] reduction1077.output := by lin_cert using reduction1077.terms
def map_18_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1101 : InImage map_18_95 image1101 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1101 : Bundle := named_bundle% "RealMapCertificates/relations/basis1101.json"
theorem reductionProof1101 : EqualModuloRelations reduction1101.relations reduction1101.input reduction1101.output := by lin_cert using reduction1101.terms
theorem substitutionProof1101 : IsMapEvaluation generatorImages reduction1101.relations [0,0,154] reduction1101.output := by lin_cert using reduction1101.terms
def map_18_96 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image1119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1119 : InImage map_18_96 image1119 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1119 : Bundle := named_bundle% "RealMapCertificates/relations/basis1119.json"
theorem reductionProof1119 : EqualModuloRelations reduction1119.relations reduction1119.input reduction1119.output := by lin_cert using reduction1119.terms
theorem substitutionProof1119 : IsMapEvaluation generatorImages reduction1119.relations [8,112] reduction1119.output := by lin_cert using reduction1119.terms
def image1120 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1120 : InImage map_18_96 image1120 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1120 : Bundle := named_bundle% "RealMapCertificates/relations/basis1120.json"
theorem reductionProof1120 : EqualModuloRelations reduction1120.relations reduction1120.input reduction1120.output := by lin_cert using reduction1120.terms
theorem substitutionProof1120 : IsMapEvaluation generatorImages reduction1120.relations [8,8,13,23] reduction1120.output := by lin_cert using reduction1120.terms
def image1121 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1121 : InImage map_18_96 image1121 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1121 : Bundle := named_bundle% "RealMapCertificates/relations/basis1121.json"
theorem reductionProof1121 : EqualModuloRelations reduction1121.relations reduction1121.input reduction1121.output := by lin_cert using reduction1121.terms
theorem substitutionProof1121 : IsMapEvaluation generatorImages reduction1121.relations [1,1,149] reduction1121.output := by lin_cert using reduction1121.terms
def map_18_97 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1149 : InImage map_18_97 image1149 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1149 : Bundle := named_bundle% "RealMapCertificates/relations/basis1149.json"
theorem reductionProof1149 : EqualModuloRelations reduction1149.relations reduction1149.input reduction1149.output := by lin_cert using reduction1149.terms
theorem substitutionProof1149 : IsMapEvaluation generatorImages reduction1149.relations [0,8,113] reduction1149.output := by lin_cert using reduction1149.terms
def image1150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1150 : InImage map_18_97 image1150 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1150 : Bundle := named_bundle% "RealMapCertificates/relations/basis1150.json"
theorem reductionProof1150 : EqualModuloRelations reduction1150.relations reduction1150.input reduction1150.output := by lin_cert using reduction1150.terms
theorem substitutionProof1150 : IsMapEvaluation generatorImages reduction1150.relations [0,0,160] reduction1150.output := by lin_cert using reduction1150.terms
def map_18_99 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1195 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1195 : InImage map_18_99 image1195 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1195 : Bundle := named_bundle% "RealMapCertificates/relations/basis1195.json"
theorem reductionProof1195 : EqualModuloRelations reduction1195.relations reduction1195.input reduction1195.output := by lin_cert using reduction1195.terms
theorem substitutionProof1195 : IsMapEvaluation generatorImages reduction1195.relations [8,9,13,23] reduction1195.output := by lin_cert using reduction1195.terms
def image1196 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1196 : InImage map_18_99 image1196 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1196 : Bundle := named_bundle% "RealMapCertificates/relations/basis1196.json"
theorem reductionProof1196 : EqualModuloRelations reduction1196.relations reduction1196.input reduction1196.output := by lin_cert using reduction1196.terms
theorem substitutionProof1196 : IsMapEvaluation generatorImages reduction1196.relations [8,8,64] reduction1196.output := by lin_cert using reduction1196.terms
def map_18_100 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1221 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1221 : InImage map_18_100 image1221 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1221 : Bundle := named_bundle% "RealMapCertificates/relations/basis1221.json"
theorem reductionProof1221 : EqualModuloRelations reduction1221.relations reduction1221.input reduction1221.output := by lin_cert using reduction1221.terms
theorem substitutionProof1221 : IsMapEvaluation generatorImages reduction1221.relations [0,8,118] reduction1221.output := by lin_cert using reduction1221.terms
def image1222 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1222 : InImage map_18_100 image1222 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1222 : Bundle := named_bundle% "RealMapCertificates/relations/basis1222.json"
theorem reductionProof1222 : EqualModuloRelations reduction1222.relations reduction1222.input reduction1222.output := by lin_cert using reduction1222.terms
theorem substitutionProof1222 : IsMapEvaluation generatorImages reduction1222.relations [0,0,166] reduction1222.output := by lin_cert using reduction1222.terms
def map_18_101 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1253 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1253 : InImage map_18_101 image1253 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1253 : Bundle := named_bundle% "RealMapCertificates/relations/basis1253.json"
theorem reductionProof1253 : EqualModuloRelations reduction1253.relations reduction1253.input reduction1253.output := by lin_cert using reduction1253.terms
theorem substitutionProof1253 : IsMapEvaluation generatorImages reduction1253.relations [0,0,0,167] reduction1253.output := by lin_cert using reduction1253.terms
def map_18_102 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image1288 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1288 : InImage map_18_102 image1288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1288 : Bundle := named_bundle% "RealMapCertificates/relations/basis1288.json"
theorem reductionProof1288 : EqualModuloRelations reduction1288.relations reduction1288.input reduction1288.output := by lin_cert using reduction1288.terms
theorem substitutionProof1288 : IsMapEvaluation generatorImages reduction1288.relations [8,13,13,23] reduction1288.output := by lin_cert using reduction1288.terms
def image1289 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1289 : InImage map_18_102 image1289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1289 : Bundle := named_bundle% "RealMapCertificates/relations/basis1289.json"
theorem reductionProof1289 : EqualModuloRelations reduction1289.relations reduction1289.input reduction1289.output := by lin_cert using reduction1289.terms
theorem substitutionProof1289 : IsMapEvaluation generatorImages reduction1289.relations [8,8,72] reduction1289.output := by lin_cert using reduction1289.terms
def image1290 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1290 : InImage map_18_102 image1290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1290 : Bundle := named_bundle% "RealMapCertificates/relations/basis1290.json"
theorem reductionProof1290 : EqualModuloRelations reduction1290.relations reduction1290.input reduction1290.output := by lin_cert using reduction1290.terms
theorem substitutionProof1290 : IsMapEvaluation generatorImages reduction1290.relations [0,0,0,172] reduction1290.output := by lin_cert using reduction1290.terms
def map_18_103 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1323 : InImage map_18_103 image1323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1323 : Bundle := named_bundle% "RealMapCertificates/relations/basis1323.json"
theorem reductionProof1323 : EqualModuloRelations reduction1323.relations reduction1323.input reduction1323.output := by lin_cert using reduction1323.terms
theorem substitutionProof1323 : IsMapEvaluation generatorImages reduction1323.relations [0,8,127] reduction1323.output := by lin_cert using reduction1323.terms
def image1324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1324 : InImage map_18_103 image1324 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1324 : Bundle := named_bundle% "RealMapCertificates/relations/basis1324.json"
theorem reductionProof1324 : EqualModuloRelations reduction1324.relations reduction1324.input reduction1324.output := by lin_cert using reduction1324.terms
theorem substitutionProof1324 : IsMapEvaluation generatorImages reduction1324.relations [0,0,0,0,0,169] reduction1324.output := by lin_cert using reduction1324.terms
def map_18_105 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1390 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1390 : InImage map_18_105 image1390 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1390 : Bundle := named_bundle% "RealMapCertificates/relations/basis1390.json"
theorem reductionProof1390 : EqualModuloRelations reduction1390.relations reduction1390.input reduction1390.output := by lin_cert using reduction1390.terms
theorem substitutionProof1390 : IsMapEvaluation generatorImages reduction1390.relations [9,13,13,23] reduction1390.output := by lin_cert using reduction1390.terms
def image1391 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1391 : InImage map_18_105 image1391 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1391 : Bundle := named_bundle% "RealMapCertificates/relations/basis1391.json"
theorem reductionProof1391 : EqualModuloRelations reduction1391.relations reduction1391.input reduction1391.output := by lin_cert using reduction1391.terms
theorem substitutionProof1391 : IsMapEvaluation generatorImages reduction1391.relations [8,8,79] reduction1391.output := by lin_cert using reduction1391.terms
def map_18_106 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1419 : InImage map_18_106 image1419 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1419 : Bundle := named_bundle% "RealMapCertificates/relations/basis1419.json"
theorem reductionProof1419 : EqualModuloRelations reduction1419.relations reduction1419.input reduction1419.output := by lin_cert using reduction1419.terms
theorem substitutionProof1419 : IsMapEvaluation generatorImages reduction1419.relations [1,193] reduction1419.output := by lin_cert using reduction1419.terms
def image1420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1420 : InImage map_18_106 image1420 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1420 : Bundle := named_bundle% "RealMapCertificates/relations/basis1420.json"
theorem reductionProof1420 : EqualModuloRelations reduction1420.relations reduction1420.input reduction1420.output := by lin_cert using reduction1420.terms
theorem substitutionProof1420 : IsMapEvaluation generatorImages reduction1420.relations [0,8,8,80] reduction1420.output := by lin_cert using reduction1420.terms
def map_18_107 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1455 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1455 : InImage map_18_107 image1455 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1455 : Bundle := named_bundle% "RealMapCertificates/relations/basis1455.json"
theorem reductionProof1455 : EqualModuloRelations reduction1455.relations reduction1455.input reduction1455.output := by lin_cert using reduction1455.terms
theorem substitutionProof1455 : IsMapEvaluation generatorImages reduction1455.relations [207] reduction1455.output := by lin_cert using reduction1455.terms
def map_18_108 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image1491 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1491 : InImage map_18_108 image1491 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1491 : Bundle := named_bundle% "RealMapCertificates/relations/basis1491.json"
theorem reductionProof1491 : EqualModuloRelations reduction1491.relations reduction1491.input reduction1491.output := by lin_cert using reduction1491.terms
theorem substitutionProof1491 : IsMapEvaluation generatorImages reduction1491.relations [13,13,13,23] reduction1491.output := by lin_cert using reduction1491.terms
def image1492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1492 : InImage map_18_108 image1492 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1492 : Bundle := named_bundle% "RealMapCertificates/relations/basis1492.json"
theorem reductionProof1492 : EqualModuloRelations reduction1492.relations reduction1492.input reduction1492.output := by lin_cert using reduction1492.terms
theorem substitutionProof1492 : IsMapEvaluation generatorImages reduction1492.relations [8,8,89] reduction1492.output := by lin_cert using reduction1492.terms
def image1493 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1493 : InImage map_18_108 image1493 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1493 : Bundle := named_bundle% "RealMapCertificates/relations/basis1493.json"
theorem reductionProof1493 : EqualModuloRelations reduction1493.relations reduction1493.input reduction1493.output := by lin_cert using reduction1493.terms
theorem substitutionProof1493 : IsMapEvaluation generatorImages reduction1493.relations [0,0,0,0,0,0,187] reduction1493.output := by lin_cert using reduction1493.terms
end RealMapCertificates
