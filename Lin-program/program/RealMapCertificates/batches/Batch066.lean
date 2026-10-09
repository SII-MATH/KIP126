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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 33 => []
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 69 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 112 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 164 => []
  | 168 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 218 => [[5,5,9,12]]
  | 233 => [[5,7,9,12]]
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 260 => []
  | 266 => []
  | 267 => []
  | 278 => []
  | 279 => []
  | 286 => []
  | 287 => []
  | 291 => []
  | 292 => []
  | 300 => []
  | 301 => []
  | 316 => []
  | 317 => []
  | 324 => []
  | 334 => []
  | 346 => []
  | 347 => []
  | 349 => []
  | 355 => []
  | 356 => []
  | 357 => []
  | 358 => []
  | 359 => []
  | 382 => []
  | 383 => []
  | 405 => []
  | 418 => []
  | 422 => []
  | 436 => []
  | 437 => []
  | 440 => []
  | 449 => []
  | 472 => []
  | 481 => []
  | 482 => []
  | 493 => []
  | 500 => []
  | 501 => []
  | 519 => []
  | 533 => []
  | 539 => []
  | 560 => []
  | 561 => []
  | 562 => []
  | 568 => []
  | 575 => []
  | 581 => []
  | 582 => []
  | 588 => []
  | 610 => []
  | 611 => []
  | 612 => []
  | 613 => []
  | 628 => []
  | _ => []
def map_18_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1531 : InImage map_18_109 image1531 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1531 : Bundle := named_bundle% "RealMapCertificates/relations/basis1531.json"
theorem reductionProof1531 : EqualModuloRelations reduction1531.relations reduction1531.input reduction1531.output := by lin_cert using reduction1531.terms
theorem substitutionProof1531 : IsMapEvaluation generatorImages reduction1531.relations [0,0,0,0,0,0,0,188] reduction1531.output := by lin_cert using reduction1531.terms
def map_18_110 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1563 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1563 : InImage map_18_110 image1563 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1563 : Bundle := named_bundle% "RealMapCertificates/relations/basis1563.json"
theorem reductionProof1563 : EqualModuloRelations reduction1563.relations reduction1563.input reduction1563.output := by lin_cert using reduction1563.terms
theorem substitutionProof1563 : IsMapEvaluation generatorImages reduction1563.relations [218] reduction1563.output := by lin_cert using reduction1563.terms
def map_18_111 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1612 : InImage map_18_111 image1612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1612 : Bundle := named_bundle% "RealMapCertificates/relations/basis1612.json"
theorem reductionProof1612 : EqualModuloRelations reduction1612.relations reduction1612.input reduction1612.output := by lin_cert using reduction1612.terms
theorem substitutionProof1612 : IsMapEvaluation generatorImages reduction1612.relations [8,8,101] reduction1612.output := by lin_cert using reduction1612.terms
def map_18_113 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1681 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1681 : InImage map_18_113 image1681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1681 : Bundle := named_bundle% "RealMapCertificates/relations/basis1681.json"
theorem reductionProof1681 : EqualModuloRelations reduction1681.relations reduction1681.input reduction1681.output := by lin_cert using reduction1681.terms
theorem substitutionProof1681 : IsMapEvaluation generatorImages reduction1681.relations [233] reduction1681.output := by lin_cert using reduction1681.terms
def map_18_114 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1724 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1724 : InImage map_18_114 image1724 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1724 : Bundle := named_bundle% "RealMapCertificates/relations/basis1724.json"
theorem reductionProof1724 : EqualModuloRelations reduction1724.relations reduction1724.input reduction1724.output := by lin_cert using reduction1724.terms
theorem substitutionProof1724 : IsMapEvaluation generatorImages reduction1724.relations [13,13,13,33] reduction1724.output := by lin_cert using reduction1724.terms
def image1725 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1725 : InImage map_18_114 image1725 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1725 : Bundle := named_bundle% "RealMapCertificates/relations/basis1725.json"
theorem reductionProof1725 : EqualModuloRelations reduction1725.relations reduction1725.input reduction1725.output := by lin_cert using reduction1725.terms
theorem substitutionProof1725 : IsMapEvaluation generatorImages reduction1725.relations [8,9,101] reduction1725.output := by lin_cert using reduction1725.terms
def map_18_116 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1785 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1785 : InImage map_18_116 image1785 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1785 : Bundle := named_bundle% "RealMapCertificates/relations/basis1785.json"
theorem reductionProof1785 : EqualModuloRelations reduction1785.relations reduction1785.input reduction1785.output := by lin_cert using reduction1785.terms
theorem substitutionProof1785 : IsMapEvaluation generatorImages reduction1785.relations [248] reduction1785.output := by lin_cert using reduction1785.terms
def map_18_117 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1833 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1833 : InImage map_18_117 image1833 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1833 : Bundle := named_bundle% "RealMapCertificates/relations/basis1833.json"
theorem reductionProof1833 : EqualModuloRelations reduction1833.relations reduction1833.input reduction1833.output := by lin_cert using reduction1833.terms
theorem substitutionProof1833 : IsMapEvaluation generatorImages reduction1833.relations [8,13,101] reduction1833.output := by lin_cert using reduction1833.terms
def map_18_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1861 : InImage map_18_118 image1861 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1861 : Bundle := named_bundle% "RealMapCertificates/relations/basis1861.json"
theorem reductionProof1861 : EqualModuloRelations reduction1861.relations reduction1861.input reduction1861.output := by lin_cert using reduction1861.terms
theorem substitutionProof1861 : IsMapEvaluation generatorImages reduction1861.relations [1,5,187] reduction1861.output := by lin_cert using reduction1861.terms
def map_18_119 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1901 : InImage map_18_119 image1901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1901 : Bundle := named_bundle% "RealMapCertificates/relations/basis1901.json"
theorem reductionProof1901 : EqualModuloRelations reduction1901.relations reduction1901.input reduction1901.output := by lin_cert using reduction1901.terms
theorem substitutionProof1901 : IsMapEvaluation generatorImages reduction1901.relations [260] reduction1901.output := by lin_cert using reduction1901.terms
def image1902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1902 : InImage map_18_119 image1902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1902 : Bundle := named_bundle% "RealMapCertificates/relations/basis1902.json"
theorem reductionProof1902 : EqualModuloRelations reduction1902.relations reduction1902.input reduction1902.output := by lin_cert using reduction1902.terms
theorem substitutionProof1902 : IsMapEvaluation generatorImages reduction1902.relations [0,0,254] reduction1902.output := by lin_cert using reduction1902.terms
def map_18_120 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1949 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1949 : InImage map_18_120 image1949 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1949 : Bundle := named_bundle% "RealMapCertificates/relations/basis1949.json"
theorem reductionProof1949 : EqualModuloRelations reduction1949.relations reduction1949.input reduction1949.output := by lin_cert using reduction1949.terms
theorem substitutionProof1949 : IsMapEvaluation generatorImages reduction1949.relations [9,13,101] reduction1949.output := by lin_cert using reduction1949.terms
def image1950 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1950 : InImage map_18_120 image1950 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1950 : Bundle := named_bundle% "RealMapCertificates/relations/basis1950.json"
theorem reductionProof1950 : EqualModuloRelations reduction1950.relations reduction1950.input reduction1950.output := by lin_cert using reduction1950.terms
theorem substitutionProof1950 : IsMapEvaluation generatorImages reduction1950.relations [0,0,50,69] reduction1950.output := by lin_cert using reduction1950.terms
def map_18_122 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2022 : InImage map_18_122 image2022 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2022 : Bundle := named_bundle% "RealMapCertificates/relations/basis2022.json"
theorem reductionProof2022 : EqualModuloRelations reduction2022.relations reduction2022.input reduction2022.output := by lin_cert using reduction2022.terms
theorem substitutionProof2022 : IsMapEvaluation generatorImages reduction2022.relations [278] reduction2022.output := by lin_cert using reduction2022.terms
def image2023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2023 : InImage map_18_122 image2023 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2023 : Bundle := named_bundle% "RealMapCertificates/relations/basis2023.json"
theorem reductionProof2023 : EqualModuloRelations reduction2023.relations reduction2023.input reduction2023.output := by lin_cert using reduction2023.terms
theorem substitutionProof2023 : IsMapEvaluation generatorImages reduction2023.relations [13,168] reduction2023.output := by lin_cert using reduction2023.terms
def image2024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2024 : InImage map_18_122 image2024 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2024 : Bundle := named_bundle% "RealMapCertificates/relations/basis2024.json"
theorem reductionProof2024 : EqualModuloRelations reduction2024.relations reduction2024.input reduction2024.output := by lin_cert using reduction2024.terms
theorem substitutionProof2024 : IsMapEvaluation generatorImages reduction2024.relations [0,0,8,187] reduction2024.output := by lin_cert using reduction2024.terms
def map_18_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2070 : InImage map_18_123 image2070 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2070 : Bundle := named_bundle% "RealMapCertificates/relations/basis2070.json"
theorem reductionProof2070 : EqualModuloRelations reduction2070.relations reduction2070.input reduction2070.output := by lin_cert using reduction2070.terms
theorem substitutionProof2070 : IsMapEvaluation generatorImages reduction2070.relations [13,13,101] reduction2070.output := by lin_cert using reduction2070.terms
def image2071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2071 : InImage map_18_123 image2071 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2071 : Bundle := named_bundle% "RealMapCertificates/relations/basis2071.json"
theorem reductionProof2071 : EqualModuloRelations reduction2071.relations reduction2071.input reduction2071.output := by lin_cert using reduction2071.terms
theorem substitutionProof2071 : IsMapEvaluation generatorImages reduction2071.relations [0,0,56,69] reduction2071.output := by lin_cert using reduction2071.terms
def map_18_125 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2146 : InImage map_18_125 image2146 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2146 : Bundle := named_bundle% "RealMapCertificates/relations/basis2146.json"
theorem reductionProof2146 : EqualModuloRelations reduction2146.relations reduction2146.input reduction2146.output := by lin_cert using reduction2146.terms
theorem substitutionProof2146 : IsMapEvaluation generatorImages reduction2146.relations [291] reduction2146.output := by lin_cert using reduction2146.terms
def image2147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2147 : InImage map_18_125 image2147 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2147 : Bundle := named_bundle% "RealMapCertificates/relations/basis2147.json"
theorem reductionProof2147 : EqualModuloRelations reduction2147.relations reduction2147.input reduction2147.output := by lin_cert using reduction2147.terms
theorem substitutionProof2147 : IsMapEvaluation generatorImages reduction2147.relations [0,0,8,201] reduction2147.output := by lin_cert using reduction2147.terms
def map_18_126 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2200 : InImage map_18_126 image2200 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2200 : Bundle := named_bundle% "RealMapCertificates/relations/basis2200.json"
theorem reductionProof2200 : EqualModuloRelations reduction2200.relations reduction2200.input reduction2200.output := by lin_cert using reduction2200.terms
theorem substitutionProof2200 : IsMapEvaluation generatorImages reduction2200.relations [0,292] reduction2200.output := by lin_cert using reduction2200.terms
def map_18_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2240 : InImage map_18_127 image2240 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2240 : Bundle := named_bundle% "RealMapCertificates/relations/basis2240.json"
theorem reductionProof2240 : EqualModuloRelations reduction2240.relations reduction2240.input reduction2240.output := by lin_cert using reduction2240.terms
theorem substitutionProof2240 : IsMapEvaluation generatorImages reduction2240.relations [0,301] reduction2240.output := by lin_cert using reduction2240.terms
def image2241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2241 : InImage map_18_127 image2241 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2241 : Bundle := named_bundle% "RealMapCertificates/relations/basis2241.json"
theorem reductionProof2241 : EqualModuloRelations reduction2241.relations reduction2241.input reduction2241.output := by lin_cert using reduction2241.terms
theorem substitutionProof2241 : IsMapEvaluation generatorImages reduction2241.relations [0,300] reduction2241.output := by lin_cert using reduction2241.terms
def map_18_128 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2284 : InImage map_18_128 image2284 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2284 : Bundle := named_bundle% "RealMapCertificates/relations/basis2284.json"
theorem reductionProof2284 : EqualModuloRelations reduction2284.relations reduction2284.input reduction2284.output := by lin_cert using reduction2284.terms
theorem substitutionProof2284 : IsMapEvaluation generatorImages reduction2284.relations [317] reduction2284.output := by lin_cert using reduction2284.terms
def image2285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2285 : InImage map_18_128 image2285 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2285 : Bundle := named_bundle% "RealMapCertificates/relations/basis2285.json"
theorem reductionProof2285 : EqualModuloRelations reduction2285.relations reduction2285.input reduction2285.output := by lin_cert using reduction2285.terms
theorem substitutionProof2285 : IsMapEvaluation generatorImages reduction2285.relations [316] reduction2285.output := by lin_cert using reduction2285.terms
def image2286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2286 : InImage map_18_128 image2286 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2286 : Bundle := named_bundle% "RealMapCertificates/relations/basis2286.json"
theorem reductionProof2286 : EqualModuloRelations reduction2286.relations reduction2286.input reduction2286.output := by lin_cert using reduction2286.terms
theorem substitutionProof2286 : IsMapEvaluation generatorImages reduction2286.relations [1,300] reduction2286.output := by lin_cert using reduction2286.terms
def image2287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2287 : InImage map_18_128 image2287 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2287 : Bundle := named_bundle% "RealMapCertificates/relations/basis2287.json"
theorem reductionProof2287 : EqualModuloRelations reduction2287.relations reduction2287.input reduction2287.output := by lin_cert using reduction2287.terms
theorem substitutionProof2287 : IsMapEvaluation generatorImages reduction2287.relations [0,0,0,0,59,69] reduction2287.output := by lin_cert using reduction2287.terms
def map_18_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2357 : InImage map_18_129 image2357 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2357 : Bundle := named_bundle% "RealMapCertificates/relations/basis2357.json"
theorem reductionProof2357 : EqualModuloRelations reduction2357.relations reduction2357.input reduction2357.output := by lin_cert using reduction2357.terms
theorem substitutionProof2357 : IsMapEvaluation generatorImages reduction2357.relations [2,292] reduction2357.output := by lin_cert using reduction2357.terms
def map_18_130 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2407 : InImage map_18_130 image2407 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2407 : Bundle := named_bundle% "RealMapCertificates/relations/basis2407.json"
theorem reductionProof2407 : EqualModuloRelations reduction2407.relations reduction2407.input reduction2407.output := by lin_cert using reduction2407.terms
theorem substitutionProof2407 : IsMapEvaluation generatorImages reduction2407.relations [334] reduction2407.output := by lin_cert using reduction2407.terms
def image2408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2408 : InImage map_18_130 image2408 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2408 : Bundle := named_bundle% "RealMapCertificates/relations/basis2408.json"
theorem reductionProof2408 : EqualModuloRelations reduction2408.relations reduction2408.input reduction2408.output := by lin_cert using reduction2408.terms
theorem substitutionProof2408 : IsMapEvaluation generatorImages reduction2408.relations [13,23,83] reduction2408.output := by lin_cert using reduction2408.terms
def image2409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2409 : InImage map_18_130 image2409 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2409 : Bundle := named_bundle% "RealMapCertificates/relations/basis2409.json"
theorem reductionProof2409 : EqualModuloRelations reduction2409.relations reduction2409.input reduction2409.output := by lin_cert using reduction2409.terms
theorem substitutionProof2409 : IsMapEvaluation generatorImages reduction2409.relations [0,0,3,266] reduction2409.output := by lin_cert using reduction2409.terms
def map_18_131 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2464 : InImage map_18_131 image2464 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2464 : Bundle := named_bundle% "RealMapCertificates/relations/basis2464.json"
theorem reductionProof2464 : EqualModuloRelations reduction2464.relations reduction2464.input reduction2464.output := by lin_cert using reduction2464.terms
theorem substitutionProof2464 : IsMapEvaluation generatorImages reduction2464.relations [347] reduction2464.output := by lin_cert using reduction2464.terms
def image2465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2465 : InImage map_18_131 image2465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2465 : Bundle := named_bundle% "RealMapCertificates/relations/basis2465.json"
theorem reductionProof2465 : EqualModuloRelations reduction2465.relations reduction2465.input reduction2465.output := by lin_cert using reduction2465.terms
theorem substitutionProof2465 : IsMapEvaluation generatorImages reduction2465.relations [346] reduction2465.output := by lin_cert using reduction2465.terms
def map_18_132 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2542 : InImage map_18_132 image2542 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2542 : Bundle := named_bundle% "RealMapCertificates/relations/basis2542.json"
theorem reductionProof2542 : EqualModuloRelations reduction2542.relations reduction2542.input reduction2542.output := by lin_cert using reduction2542.terms
theorem substitutionProof2542 : IsMapEvaluation generatorImages reduction2542.relations [356] reduction2542.output := by lin_cert using reduction2542.terms
def image2543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2543 : InImage map_18_132 image2543 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2543 : Bundle := named_bundle% "RealMapCertificates/relations/basis2543.json"
theorem reductionProof2543 : EqualModuloRelations reduction2543.relations reduction2543.input reduction2543.output := by lin_cert using reduction2543.terms
theorem substitutionProof2543 : IsMapEvaluation generatorImages reduction2543.relations [355] reduction2543.output := by lin_cert using reduction2543.terms
def image2544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2544 : InImage map_18_132 image2544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2544 : Bundle := named_bundle% "RealMapCertificates/relations/basis2544.json"
theorem reductionProof2544 : EqualModuloRelations reduction2544.relations reduction2544.input reduction2544.output := by lin_cert using reduction2544.terms
theorem substitutionProof2544 : IsMapEvaluation generatorImages reduction2544.relations [17,188] reduction2544.output := by lin_cert using reduction2544.terms
def map_18_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2604 : InImage map_18_133 image2604 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2604 : Bundle := named_bundle% "RealMapCertificates/relations/basis2604.json"
theorem reductionProof2604 : EqualModuloRelations reduction2604.relations reduction2604.input reduction2604.output := by lin_cert using reduction2604.terms
theorem substitutionProof2604 : IsMapEvaluation generatorImages reduction2604.relations [0,358] reduction2604.output := by lin_cert using reduction2604.terms
def map_18_134 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2666 : InImage map_18_134 image2666 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2666 : Bundle := named_bundle% "RealMapCertificates/relations/basis2666.json"
theorem reductionProof2666 : EqualModuloRelations reduction2666.relations reduction2666.input reduction2666.output := by lin_cert using reduction2666.terms
theorem substitutionProof2666 : IsMapEvaluation generatorImages reduction2666.relations [382] reduction2666.output := by lin_cert using reduction2666.terms
def image2667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2667 : InImage map_18_134 image2667 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2667 : Bundle := named_bundle% "RealMapCertificates/relations/basis2667.json"
theorem reductionProof2667 : EqualModuloRelations reduction2667.relations reduction2667.input reduction2667.output := by lin_cert using reduction2667.terms
theorem substitutionProof2667 : IsMapEvaluation generatorImages reduction2667.relations [1,357] reduction2667.output := by lin_cert using reduction2667.terms
def image2668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2668 : InImage map_18_134 image2668 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2668 : Bundle := named_bundle% "RealMapCertificates/relations/basis2668.json"
theorem reductionProof2668 : EqualModuloRelations reduction2668.relations reduction2668.input reduction2668.output := by lin_cert using reduction2668.terms
theorem substitutionProof2668 : IsMapEvaluation generatorImages reduction2668.relations [0,0,359] reduction2668.output := by lin_cert using reduction2668.terms
def image2669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2669 : InImage map_18_134 image2669 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2669 : Bundle := named_bundle% "RealMapCertificates/relations/basis2669.json"
theorem reductionProof2669 : EqualModuloRelations reduction2669.relations reduction2669.input reduction2669.output := by lin_cert using reduction2669.terms
theorem substitutionProof2669 : IsMapEvaluation generatorImages reduction2669.relations [0,0,0,349] reduction2669.output := by lin_cert using reduction2669.terms
def map_18_135 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2768 : InImage map_18_135 image2768 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2768 : Bundle := named_bundle% "RealMapCertificates/relations/basis2768.json"
theorem reductionProof2768 : EqualModuloRelations reduction2768.relations reduction2768.input reduction2768.output := by lin_cert using reduction2768.terms
theorem substitutionProof2768 : IsMapEvaluation generatorImages reduction2768.relations [405] reduction2768.output := by lin_cert using reduction2768.terms
def image2769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2769 : InImage map_18_135 image2769 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2769 : Bundle := named_bundle% "RealMapCertificates/relations/basis2769.json"
theorem reductionProof2769 : EqualModuloRelations reduction2769.relations reduction2769.input reduction2769.output := by lin_cert using reduction2769.terms
theorem substitutionProof2769 : IsMapEvaluation generatorImages reduction2769.relations [20,188] reduction2769.output := by lin_cert using reduction2769.terms
def map_18_136 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2833 : InImage map_18_136 image2833 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2833 : Bundle := named_bundle% "RealMapCertificates/relations/basis2833.json"
theorem reductionProof2833 : EqualModuloRelations reduction2833.relations reduction2833.input reduction2833.output := by lin_cert using reduction2833.terms
theorem substitutionProof2833 : IsMapEvaluation generatorImages reduction2833.relations [9,13,13,75] reduction2833.output := by lin_cert using reduction2833.terms
def image2834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2834 : InImage map_18_136 image2834 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2834 : Bundle := named_bundle% "RealMapCertificates/relations/basis2834.json"
theorem reductionProof2834 : EqualModuloRelations reduction2834.relations reduction2834.input reduction2834.output := by lin_cert using reduction2834.terms
theorem substitutionProof2834 : IsMapEvaluation generatorImages reduction2834.relations [1,383] reduction2834.output := by lin_cert using reduction2834.terms
def image2835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2835 : InImage map_18_136 image2835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2835 : Bundle := named_bundle% "RealMapCertificates/relations/basis2835.json"
theorem reductionProof2835 : EqualModuloRelations reduction2835.relations reduction2835.input reduction2835.output := by lin_cert using reduction2835.terms
theorem substitutionProof2835 : IsMapEvaluation generatorImages reduction2835.relations [1,1,359] reduction2835.output := by lin_cert using reduction2835.terms
def map_18_137 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2901 : InImage map_18_137 image2901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2901 : Bundle := named_bundle% "RealMapCertificates/relations/basis2901.json"
theorem reductionProof2901 : EqualModuloRelations reduction2901.relations reduction2901.input reduction2901.output := by lin_cert using reduction2901.terms
theorem substitutionProof2901 : IsMapEvaluation generatorImages reduction2901.relations [16,209] reduction2901.output := by lin_cert using reduction2901.terms
def image2902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2902 : InImage map_18_137 image2902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2902 : Bundle := named_bundle% "RealMapCertificates/relations/basis2902.json"
theorem reductionProof2902 : EqualModuloRelations reduction2902.relations reduction2902.input reduction2902.output := by lin_cert using reduction2902.terms
theorem substitutionProof2902 : IsMapEvaluation generatorImages reduction2902.relations [0,2,359] reduction2902.output := by lin_cert using reduction2902.terms
def map_18_138 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2990 : InImage map_18_138 image2990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2990 : Bundle := named_bundle% "RealMapCertificates/relations/basis2990.json"
theorem reductionProof2990 : EqualModuloRelations reduction2990.relations reduction2990.input reduction2990.output := by lin_cert using reduction2990.terms
theorem substitutionProof2990 : IsMapEvaluation generatorImages reduction2990.relations [22,188] reduction2990.output := by lin_cert using reduction2990.terms
def image2991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2991 : InImage map_18_138 image2991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2991 : Bundle := named_bundle% "RealMapCertificates/relations/basis2991.json"
theorem reductionProof2991 : EqualModuloRelations reduction2991.relations reduction2991.input reduction2991.output := by lin_cert using reduction2991.terms
theorem substitutionProof2991 : IsMapEvaluation generatorImages reduction2991.relations [8,267] reduction2991.output := by lin_cert using reduction2991.terms
def image2992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2992 : InImage map_18_138 image2992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2992 : Bundle := named_bundle% "RealMapCertificates/relations/basis2992.json"
theorem reductionProof2992 : EqualModuloRelations reduction2992.relations reduction2992.input reduction2992.output := by lin_cert using reduction2992.terms
theorem substitutionProof2992 : IsMapEvaluation generatorImages reduction2992.relations [0,17,209] reduction2992.output := by lin_cert using reduction2992.terms
def map_18_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3067 : InImage map_18_139 image3067 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3067 : Bundle := named_bundle% "RealMapCertificates/relations/basis3067.json"
theorem reductionProof3067 : EqualModuloRelations reduction3067.relations reduction3067.input reduction3067.output := by lin_cert using reduction3067.terms
theorem substitutionProof3067 : IsMapEvaluation generatorImages reduction3067.relations [13,13,13,75] reduction3067.output := by lin_cert using reduction3067.terms
def image3068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3068 : InImage map_18_139 image3068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3068 : Bundle := named_bundle% "RealMapCertificates/relations/basis3068.json"
theorem reductionProof3068 : EqualModuloRelations reduction3068.relations reduction3068.input reduction3068.output := by lin_cert using reduction3068.terms
theorem substitutionProof3068 : IsMapEvaluation generatorImages reduction3068.relations [0,23,188] reduction3068.output := by lin_cert using reduction3068.terms
def image3069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3069 : InImage map_18_139 image3069 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3069 : Bundle := named_bundle% "RealMapCertificates/relations/basis3069.json"
theorem reductionProof3069 : EqualModuloRelations reduction3069.relations reduction3069.input reduction3069.output := by lin_cert using reduction3069.terms
theorem substitutionProof3069 : IsMapEvaluation generatorImages reduction3069.relations [0,0,422] reduction3069.output := by lin_cert using reduction3069.terms
def map_18_140 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3138 : InImage map_18_140 image3138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3138 : Bundle := named_bundle% "RealMapCertificates/relations/basis3138.json"
theorem reductionProof3138 : EqualModuloRelations reduction3138.relations reduction3138.input reduction3138.output := by lin_cert using reduction3138.terms
theorem substitutionProof3138 : IsMapEvaluation generatorImages reduction3138.relations [8,279] reduction3138.output := by lin_cert using reduction3138.terms
def image3139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3139 : InImage map_18_140 image3139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3139 : Bundle := named_bundle% "RealMapCertificates/relations/basis3139.json"
theorem reductionProof3139 : EqualModuloRelations reduction3139.relations reduction3139.input reduction3139.output := by lin_cert using reduction3139.terms
theorem substitutionProof3139 : IsMapEvaluation generatorImages reduction3139.relations [1,436] reduction3139.output := by lin_cert using reduction3139.terms
def image3140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3140 : InImage map_18_140 image3140 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3140 : Bundle := named_bundle% "RealMapCertificates/relations/basis3140.json"
theorem reductionProof3140 : EqualModuloRelations reduction3140.relations reduction3140.input reduction3140.output := by lin_cert using reduction3140.terms
theorem substitutionProof3140 : IsMapEvaluation generatorImages reduction3140.relations [0,0,437] reduction3140.output := by lin_cert using reduction3140.terms
def map_18_141 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3246 : InImage map_18_141 image3246 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3246 : Bundle := named_bundle% "RealMapCertificates/relations/basis3246.json"
theorem reductionProof3246 : EqualModuloRelations reduction3246.relations reduction3246.input reduction3246.output := by lin_cert using reduction3246.terms
theorem substitutionProof3246 : IsMapEvaluation generatorImages reduction3246.relations [9,267] reduction3246.output := by lin_cert using reduction3246.terms
def image3247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3247 : InImage map_18_141 image3247 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3247 : Bundle := named_bundle% "RealMapCertificates/relations/basis3247.json"
theorem reductionProof3247 : EqualModuloRelations reduction3247.relations reduction3247.input reduction3247.output := by lin_cert using reduction3247.terms
theorem substitutionProof3247 : IsMapEvaluation generatorImages reduction3247.relations [0,3,359] reduction3247.output := by lin_cert using reduction3247.terms
def image3248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3248 : InImage map_18_141 image3248 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3248 : Bundle := named_bundle% "RealMapCertificates/relations/basis3248.json"
theorem reductionProof3248 : EqualModuloRelations reduction3248.relations reduction3248.input reduction3248.output := by lin_cert using reduction3248.terms
theorem substitutionProof3248 : IsMapEvaluation generatorImages reduction3248.relations [0,0,0,0,0,418] reduction3248.output := by lin_cert using reduction3248.terms
def map_18_142 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3317 : InImage map_18_142 image3317 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3317 : Bundle := named_bundle% "RealMapCertificates/relations/basis3317.json"
theorem reductionProof3317 : EqualModuloRelations reduction3317.relations reduction3317.input reduction3317.output := by lin_cert using reduction3317.terms
theorem substitutionProof3317 : IsMapEvaluation generatorImages reduction3317.relations [0,472] reduction3317.output := by lin_cert using reduction3317.terms
def image3318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3318 : InImage map_18_142 image3318 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3318 : Bundle := named_bundle% "RealMapCertificates/relations/basis3318.json"
theorem reductionProof3318 : EqualModuloRelations reduction3318.relations reduction3318.input reduction3318.output := by lin_cert using reduction3318.terms
theorem substitutionProof3318 : IsMapEvaluation generatorImages reduction3318.relations [0,0,0,0,440] reduction3318.output := by lin_cert using reduction3318.terms
def map_18_143 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3391 : InImage map_18_143 image3391 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3391 : Bundle := named_bundle% "RealMapCertificates/relations/basis3391.json"
theorem reductionProof3391 : EqualModuloRelations reduction3391.relations reduction3391.input reduction3391.output := by lin_cert using reduction3391.terms
theorem substitutionProof3391 : IsMapEvaluation generatorImages reduction3391.relations [8,8,209] reduction3391.output := by lin_cert using reduction3391.terms
def image3392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3392 : InImage map_18_143 image3392 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3392 : Bundle := named_bundle% "RealMapCertificates/relations/basis3392.json"
theorem reductionProof3392 : EqualModuloRelations reduction3392.relations reduction3392.input reduction3392.output := by lin_cert using reduction3392.terms
theorem substitutionProof3392 : IsMapEvaluation generatorImages reduction3392.relations [0,0,0,0,449] reduction3392.output := by lin_cert using reduction3392.terms
def map_18_144 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3489 : InImage map_18_144 image3489 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3489 : Bundle := named_bundle% "RealMapCertificates/relations/basis3489.json"
theorem reductionProof3489 : EqualModuloRelations reduction3489.relations reduction3489.input reduction3489.output := by lin_cert using reduction3489.terms
theorem substitutionProof3489 : IsMapEvaluation generatorImages reduction3489.relations [501] reduction3489.output := by lin_cert using reduction3489.terms
def image3490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3490 : InImage map_18_144 image3490 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3490 : Bundle := named_bundle% "RealMapCertificates/relations/basis3490.json"
theorem reductionProof3490 : EqualModuloRelations reduction3490.relations reduction3490.input reduction3490.output := by lin_cert using reduction3490.terms
theorem substitutionProof3490 : IsMapEvaluation generatorImages reduction3490.relations [500] reduction3490.output := by lin_cert using reduction3490.terms
def image3491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3491 : InImage map_18_144 image3491 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3491 : Bundle := named_bundle% "RealMapCertificates/relations/basis3491.json"
theorem reductionProof3491 : EqualModuloRelations reduction3491.relations reduction3491.input reduction3491.output := by lin_cert using reduction3491.terms
theorem substitutionProof3491 : IsMapEvaluation generatorImages reduction3491.relations [13,267] reduction3491.output := by lin_cert using reduction3491.terms
def image3492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3492 : InImage map_18_144 image3492 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3492 : Bundle := named_bundle% "RealMapCertificates/relations/basis3492.json"
theorem reductionProof3492 : EqualModuloRelations reduction3492.relations reduction3492.input reduction3492.output := by lin_cert using reduction3492.terms
theorem substitutionProof3492 : IsMapEvaluation generatorImages reduction3492.relations [9,286] reduction3492.output := by lin_cert using reduction3492.terms
def map_18_145 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3561 : InImage map_18_145 image3561 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3561 : Bundle := named_bundle% "RealMapCertificates/relations/basis3561.json"
theorem reductionProof3561 : EqualModuloRelations reduction3561.relations reduction3561.input reduction3561.output := by lin_cert using reduction3561.terms
theorem substitutionProof3561 : IsMapEvaluation generatorImages reduction3561.relations [13,13,164] reduction3561.output := by lin_cert using reduction3561.terms
def image3562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3562 : InImage map_18_145 image3562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3562 : Bundle := named_bundle% "RealMapCertificates/relations/basis3562.json"
theorem reductionProof3562 : EqualModuloRelations reduction3562.relations reduction3562.input reduction3562.output := by lin_cert using reduction3562.terms
theorem substitutionProof3562 : IsMapEvaluation generatorImages reduction3562.relations [1,493] reduction3562.output := by lin_cert using reduction3562.terms
def image3563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3563 : InImage map_18_145 image3563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3563 : Bundle := named_bundle% "RealMapCertificates/relations/basis3563.json"
theorem reductionProof3563 : EqualModuloRelations reduction3563.relations reduction3563.input reduction3563.output := by lin_cert using reduction3563.terms
theorem substitutionProof3563 : IsMapEvaluation generatorImages reduction3563.relations [0,0,0,481] reduction3563.output := by lin_cert using reduction3563.terms
def image3564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3564 : InImage map_18_145 image3564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3564 : Bundle := named_bundle% "RealMapCertificates/relations/basis3564.json"
theorem reductionProof3564 : EqualModuloRelations reduction3564.relations reduction3564.input reduction3564.output := by lin_cert using reduction3564.terms
theorem substitutionProof3564 : IsMapEvaluation generatorImages reduction3564.relations [0,0,0,69,112] reduction3564.output := by lin_cert using reduction3564.terms
def image3565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3565 : InImage map_18_145 image3565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3565 : Bundle := named_bundle% "RealMapCertificates/relations/basis3565.json"
theorem reductionProof3565 : EqualModuloRelations reduction3565.relations reduction3565.input reduction3565.output := by lin_cert using reduction3565.terms
theorem substitutionProof3565 : IsMapEvaluation generatorImages reduction3565.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3565.output := by lin_cert using reduction3565.terms
def map_18_146 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3639 : InImage map_18_146 image3639 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3639 : Bundle := named_bundle% "RealMapCertificates/relations/basis3639.json"
theorem reductionProof3639 : EqualModuloRelations reduction3639.relations reduction3639.input reduction3639.output := by lin_cert using reduction3639.terms
theorem substitutionProof3639 : IsMapEvaluation generatorImages reduction3639.relations [519] reduction3639.output := by lin_cert using reduction3639.terms
def image3640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3640 : InImage map_18_146 image3640 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3640 : Bundle := named_bundle% "RealMapCertificates/relations/basis3640.json"
theorem reductionProof3640 : EqualModuloRelations reduction3640.relations reduction3640.input reduction3640.output := by lin_cert using reduction3640.terms
theorem substitutionProof3640 : IsMapEvaluation generatorImages reduction3640.relations [8,9,209] reduction3640.output := by lin_cert using reduction3640.terms
def image3641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3641 : InImage map_18_146 image3641 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3641 : Bundle := named_bundle% "RealMapCertificates/relations/basis3641.json"
theorem reductionProof3641 : EqualModuloRelations reduction3641.relations reduction3641.input reduction3641.output := by lin_cert using reduction3641.terms
theorem substitutionProof3641 : IsMapEvaluation generatorImages reduction3641.relations [0,0,0,0,482] reduction3641.output := by lin_cert using reduction3641.terms
def map_18_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3756 : InImage map_18_147 image3756 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3756 : Bundle := named_bundle% "RealMapCertificates/relations/basis3756.json"
theorem reductionProof3756 : EqualModuloRelations reduction3756.relations reduction3756.input reduction3756.output := by lin_cert using reduction3756.terms
theorem substitutionProof3756 : IsMapEvaluation generatorImages reduction3756.relations [13,286] reduction3756.output := by lin_cert using reduction3756.terms
def image3757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3757 : InImage map_18_147 image3757 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3757 : Bundle := named_bundle% "RealMapCertificates/relations/basis3757.json"
theorem reductionProof3757 : EqualModuloRelations reduction3757.relations reduction3757.input reduction3757.output := by lin_cert using reduction3757.terms
theorem substitutionProof3757 : IsMapEvaluation generatorImages reduction3757.relations [0,3,437] reduction3757.output := by lin_cert using reduction3757.terms
def map_18_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3825 : InImage map_18_148 image3825 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3825 : Bundle := named_bundle% "RealMapCertificates/relations/basis3825.json"
theorem reductionProof3825 : EqualModuloRelations reduction3825.relations reduction3825.input reduction3825.output := by lin_cert using reduction3825.terms
theorem substitutionProof3825 : IsMapEvaluation generatorImages reduction3825.relations [539] reduction3825.output := by lin_cert using reduction3825.terms
def map_18_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3908 : InImage map_18_149 image3908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3908 : Bundle := named_bundle% "RealMapCertificates/relations/basis3908.json"
theorem reductionProof3908 : EqualModuloRelations reduction3908.relations reduction3908.input reduction3908.output := by lin_cert using reduction3908.terms
theorem substitutionProof3908 : IsMapEvaluation generatorImages reduction3908.relations [8,13,209] reduction3908.output := by lin_cert using reduction3908.terms
def image3909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3909 : InImage map_18_149 image3909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3909 : Bundle := named_bundle% "RealMapCertificates/relations/basis3909.json"
theorem reductionProof3909 : EqualModuloRelations reduction3909.relations reduction3909.input reduction3909.output := by lin_cert using reduction3909.terms
theorem substitutionProof3909 : IsMapEvaluation generatorImages reduction3909.relations [1,13,287] reduction3909.output := by lin_cert using reduction3909.terms
def map_18_150 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4014 : InImage map_18_150 image4014 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4014 : Bundle := named_bundle% "RealMapCertificates/relations/basis4014.json"
theorem reductionProof4014 : EqualModuloRelations reduction4014.relations reduction4014.input reduction4014.output := by lin_cert using reduction4014.terms
theorem substitutionProof4014 : IsMapEvaluation generatorImages reduction4014.relations [560] reduction4014.output := by lin_cert using reduction4014.terms
def image4015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4015 : InImage map_18_150 image4015 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4015 : Bundle := named_bundle% "RealMapCertificates/relations/basis4015.json"
theorem reductionProof4015 : EqualModuloRelations reduction4015.relations reduction4015.input reduction4015.output := by lin_cert using reduction4015.terms
theorem substitutionProof4015 : IsMapEvaluation generatorImages reduction4015.relations [13,13,189] reduction4015.output := by lin_cert using reduction4015.terms
def map_18_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4103 : InImage map_18_151 image4103 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4103 : Bundle := named_bundle% "RealMapCertificates/relations/basis4103.json"
theorem reductionProof4103 : EqualModuloRelations reduction4103.relations reduction4103.input reduction4103.output := by lin_cert using reduction4103.terms
theorem substitutionProof4103 : IsMapEvaluation generatorImages reduction4103.relations [69,138] reduction4103.output := by lin_cert using reduction4103.terms
def image4104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4104 : InImage map_18_151 image4104 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4104 : Bundle := named_bundle% "RealMapCertificates/relations/basis4104.json"
theorem reductionProof4104 : EqualModuloRelations reduction4104.relations reduction4104.input reduction4104.output := by lin_cert using reduction4104.terms
theorem substitutionProof4104 : IsMapEvaluation generatorImages reduction4104.relations [0,561] reduction4104.output := by lin_cert using reduction4104.terms
def map_18_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4187 : InImage map_18_152 image4187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4187 : Bundle := named_bundle% "RealMapCertificates/relations/basis4187.json"
theorem reductionProof4187 : EqualModuloRelations reduction4187.relations reduction4187.input reduction4187.output := by lin_cert using reduction4187.terms
theorem substitutionProof4187 : IsMapEvaluation generatorImages reduction4187.relations [9,13,209] reduction4187.output := by lin_cert using reduction4187.terms
def image4188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4188 : InImage map_18_152 image4188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4188 : Bundle := named_bundle% "RealMapCertificates/relations/basis4188.json"
theorem reductionProof4188 : EqualModuloRelations reduction4188.relations reduction4188.input reduction4188.output := by lin_cert using reduction4188.terms
theorem substitutionProof4188 : IsMapEvaluation generatorImages reduction4188.relations [1,561] reduction4188.output := by lin_cert using reduction4188.terms
def image4189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4189 : InImage map_18_152 image4189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4189 : Bundle := named_bundle% "RealMapCertificates/relations/basis4189.json"
theorem reductionProof4189 : EqualModuloRelations reduction4189.relations reduction4189.input reduction4189.output := by lin_cert using reduction4189.terms
theorem substitutionProof4189 : IsMapEvaluation generatorImages reduction4189.relations [0,568] reduction4189.output := by lin_cert using reduction4189.terms
def image4190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4190 : InImage map_18_152 image4190 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4190 : Bundle := named_bundle% "RealMapCertificates/relations/basis4190.json"
theorem reductionProof4190 : EqualModuloRelations reduction4190.relations reduction4190.input reduction4190.output := by lin_cert using reduction4190.terms
theorem substitutionProof4190 : IsMapEvaluation generatorImages reduction4190.relations [0,0,0,0,0,533] reduction4190.output := by lin_cert using reduction4190.terms
def map_18_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4292 : InImage map_18_153 image4292 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4292 : Bundle := named_bundle% "RealMapCertificates/relations/basis4292.json"
theorem reductionProof4292 : EqualModuloRelations reduction4292.relations reduction4292.input reduction4292.output := by lin_cert using reduction4292.terms
theorem substitutionProof4292 : IsMapEvaluation generatorImages reduction4292.relations [581] reduction4292.output := by lin_cert using reduction4292.terms
def map_18_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4355 : InImage map_18_154 image4355 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4355 : Bundle := named_bundle% "RealMapCertificates/relations/basis4355.json"
theorem reductionProof4355 : EqualModuloRelations reduction4355.relations reduction4355.input reduction4355.output := by lin_cert using reduction4355.terms
theorem substitutionProof4355 : IsMapEvaluation generatorImages reduction4355.relations [69,147] reduction4355.output := by lin_cert using reduction4355.terms
def image4356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4356 : InImage map_18_154 image4356 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4356 : Bundle := named_bundle% "RealMapCertificates/relations/basis4356.json"
theorem reductionProof4356 : EqualModuloRelations reduction4356.relations reduction4356.input reduction4356.output := by lin_cert using reduction4356.terms
theorem substitutionProof4356 : IsMapEvaluation generatorImages reduction4356.relations [0,582] reduction4356.output := by lin_cert using reduction4356.terms
def map_18_155 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4445 : InImage map_18_155 image4445 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4445 : Bundle := named_bundle% "RealMapCertificates/relations/basis4445.json"
theorem reductionProof4445 : EqualModuloRelations reduction4445.relations reduction4445.input reduction4445.output := by lin_cert using reduction4445.terms
theorem substitutionProof4445 : IsMapEvaluation generatorImages reduction4445.relations [13,13,209] reduction4445.output := by lin_cert using reduction4445.terms
def image4446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4446 : InImage map_18_155 image4446 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4446 : Bundle := named_bundle% "RealMapCertificates/relations/basis4446.json"
theorem reductionProof4446 : EqualModuloRelations reduction4446.relations reduction4446.input reduction4446.output := by lin_cert using reduction4446.terms
theorem substitutionProof4446 : IsMapEvaluation generatorImages reduction4446.relations [0,588] reduction4446.output := by lin_cert using reduction4446.terms
def map_18_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4548 : InImage map_18_156 image4548 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4548 : Bundle := named_bundle% "RealMapCertificates/relations/basis4548.json"
theorem reductionProof4548 : EqualModuloRelations reduction4548.relations reduction4548.input reduction4548.output := by lin_cert using reduction4548.terms
theorem substitutionProof4548 : IsMapEvaluation generatorImages reduction4548.relations [611] reduction4548.output := by lin_cert using reduction4548.terms
def image4549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4549 : InImage map_18_156 image4549 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4549 : Bundle := named_bundle% "RealMapCertificates/relations/basis4549.json"
theorem reductionProof4549 : EqualModuloRelations reduction4549.relations reduction4549.input reduction4549.output := by lin_cert using reduction4549.terms
theorem substitutionProof4549 : IsMapEvaluation generatorImages reduction4549.relations [610] reduction4549.output := by lin_cert using reduction4549.terms
def map_18_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4623 : InImage map_18_157 image4623 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4623 : Bundle := named_bundle% "RealMapCertificates/relations/basis4623.json"
theorem reductionProof4623 : EqualModuloRelations reduction4623.relations reduction4623.input reduction4623.output := by lin_cert using reduction4623.terms
theorem substitutionProof4623 : IsMapEvaluation generatorImages reduction4623.relations [8,449] reduction4623.output := by lin_cert using reduction4623.terms
def image4624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4624 : InImage map_18_157 image4624 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4624 : Bundle := named_bundle% "RealMapCertificates/relations/basis4624.json"
theorem reductionProof4624 : EqualModuloRelations reduction4624.relations reduction4624.input reduction4624.output := by lin_cert using reduction4624.terms
theorem substitutionProof4624 : IsMapEvaluation generatorImages reduction4624.relations [0,612] reduction4624.output := by lin_cert using reduction4624.terms
def image4625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4625 : InImage map_18_157 image4625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4625 : Bundle := named_bundle% "RealMapCertificates/relations/basis4625.json"
theorem reductionProof4625 : EqualModuloRelations reduction4625.relations reduction4625.input reduction4625.output := by lin_cert using reduction4625.terms
theorem substitutionProof4625 : IsMapEvaluation generatorImages reduction4625.relations [0,0,0,0,0,0,0,562] reduction4625.output := by lin_cert using reduction4625.terms
def map_18_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4712 : InImage map_18_158 image4712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4712 : Bundle := named_bundle% "RealMapCertificates/relations/basis4712.json"
theorem reductionProof4712 : EqualModuloRelations reduction4712.relations reduction4712.input reduction4712.output := by lin_cert using reduction4712.terms
theorem substitutionProof4712 : IsMapEvaluation generatorImages reduction4712.relations [628] reduction4712.output := by lin_cert using reduction4712.terms
def image4713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4713 : InImage map_18_158 image4713 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4713 : Bundle := named_bundle% "RealMapCertificates/relations/basis4713.json"
theorem reductionProof4713 : EqualModuloRelations reduction4713.relations reduction4713.input reduction4713.output := by lin_cert using reduction4713.terms
theorem substitutionProof4713 : IsMapEvaluation generatorImages reduction4713.relations [0,0,613] reduction4713.output := by lin_cert using reduction4713.terms
def image4714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4714 : InImage map_18_158 image4714 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4714 : Bundle := named_bundle% "RealMapCertificates/relations/basis4714.json"
theorem reductionProof4714 : EqualModuloRelations reduction4714.relations reduction4714.input reduction4714.output := by lin_cert using reduction4714.terms
theorem substitutionProof4714 : IsMapEvaluation generatorImages reduction4714.relations [0,0,0,0,0,0,575] reduction4714.output := by lin_cert using reduction4714.terms
end RealMapCertificates
