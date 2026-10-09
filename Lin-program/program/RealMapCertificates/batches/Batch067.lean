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
  | 23 => [[7,7]]
  | 24 => []
  | 31 => [[4,4,6]]
  | 42 => [[5,5,7]]
  | 43 => []
  | 44 => [[1,4,4,4,4]]
  | 47 => [[2,4,4,4,4]]
  | 48 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 69 => []
  | 75 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 181 => []
  | 190 => []
  | 209 => []
  | 212 => []
  | 267 => []
  | 285 => []
  | 288 => []
  | 312 => []
  | 314 => []
  | 324 => []
  | 332 => []
  | 333 => []
  | 335 => []
  | 367 => []
  | 417 => []
  | 450 => []
  | 475 => []
  | 483 => []
  | 494 => []
  | 502 => []
  | 534 => []
  | 604 => []
  | 618 => []
  | 620 => []
  | 629 => []
  | 639 => []
  | 640 => []
  | 647 => []
  | 648 => []
  | 656 => []
  | 669 => []
  | 671 => []
  | 691 => []
  | 692 => []
  | 693 => []
  | 707 => []
  | 729 => []
  | 732 => []
  | 743 => []
  | 761 => []
  | 762 => []
  | 763 => []
  | 764 => []
  | 786 => []
  | 823 => []
  | 825 => []
  | 835 => []
  | 836 => []
  | 837 => []
  | 838 => []
  | 865 => []
  | 866 => []
  | 880 => []
  | 881 => []
  | 891 => []
  | 906 => []
  | 908 => []
  | 932 => []
  | 946 => []
  | 965 => []
  | 985 => []
  | 986 => []
  | 987 => []
  | 1001 => []
  | 1002 => []
  | 1013 => []
  | 1014 => []
  | _ => []
def map_18_159 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4812 : InImage map_18_159 image4812 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4812 : Bundle := named_bundle% "RealMapCertificates/relations/basis4812.json"
theorem reductionProof4812 : EqualModuloRelations reduction4812.relations reduction4812.input reduction4812.output := by lin_cert using reduction4812.terms
theorem substitutionProof4812 : IsMapEvaluation generatorImages reduction4812.relations [640] reduction4812.output := by lin_cert using reduction4812.terms
def image4813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4813 : InImage map_18_159 image4813 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4813 : Bundle := named_bundle% "RealMapCertificates/relations/basis4813.json"
theorem reductionProof4813 : EqualModuloRelations reduction4813.relations reduction4813.input reduction4813.output := by lin_cert using reduction4813.terms
theorem substitutionProof4813 : IsMapEvaluation generatorImages reduction4813.relations [639] reduction4813.output := by lin_cert using reduction4813.terms
def image4814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4814 : InImage map_18_159 image4814 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4814 : Bundle := named_bundle% "RealMapCertificates/relations/basis4814.json"
theorem reductionProof4814 : EqualModuloRelations reduction4814.relations reduction4814.input reduction4814.output := by lin_cert using reduction4814.terms
theorem substitutionProof4814 : IsMapEvaluation generatorImages reduction4814.relations [1,1,604] reduction4814.output := by lin_cert using reduction4814.terms
def image4815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4815 : InImage map_18_159 image4815 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4815 : Bundle := named_bundle% "RealMapCertificates/relations/basis4815.json"
theorem reductionProof4815 : EqualModuloRelations reduction4815.relations reduction4815.input reduction4815.output := by lin_cert using reduction4815.terms
theorem substitutionProof4815 : IsMapEvaluation generatorImages reduction4815.relations [0,0,17,314] reduction4815.output := by lin_cert using reduction4815.terms
def map_18_160 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4879 : InImage map_18_160 image4879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4879 : Bundle := named_bundle% "RealMapCertificates/relations/basis4879.json"
theorem reductionProof4879 : EqualModuloRelations reduction4879.relations reduction4879.input reduction4879.output := by lin_cert using reduction4879.terms
theorem substitutionProof4879 : IsMapEvaluation generatorImages reduction4879.relations [647] reduction4879.output := by lin_cert using reduction4879.terms
def image4880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4880 : InImage map_18_160 image4880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4880 : Bundle := named_bundle% "RealMapCertificates/relations/basis4880.json"
theorem reductionProof4880 : EqualModuloRelations reduction4880.relations reduction4880.input reduction4880.output := by lin_cert using reduction4880.terms
theorem substitutionProof4880 : IsMapEvaluation generatorImages reduction4880.relations [8,69,113] reduction4880.output := by lin_cert using reduction4880.terms
def image4881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4881 : InImage map_18_160 image4881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4881 : Bundle := named_bundle% "RealMapCertificates/relations/basis4881.json"
theorem reductionProof4881 : EqualModuloRelations reduction4881.relations reduction4881.input reduction4881.output := by lin_cert using reduction4881.terms
theorem substitutionProof4881 : IsMapEvaluation generatorImages reduction4881.relations [0,8,475] reduction4881.output := by lin_cert using reduction4881.terms
def image4882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4882 : InImage map_18_160 image4882 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4882 : Bundle := named_bundle% "RealMapCertificates/relations/basis4882.json"
theorem reductionProof4882 : EqualModuloRelations reduction4882.relations reduction4882.input reduction4882.output := by lin_cert using reduction4882.terms
theorem substitutionProof4882 : IsMapEvaluation generatorImages reduction4882.relations [0,0,629] reduction4882.output := by lin_cert using reduction4882.terms
def map_18_161 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4977 : InImage map_18_161 image4977 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4977 : Bundle := named_bundle% "RealMapCertificates/relations/basis4977.json"
theorem reductionProof4977 : EqualModuloRelations reduction4977.relations reduction4977.input reduction4977.output := by lin_cert using reduction4977.terms
theorem substitutionProof4977 : IsMapEvaluation generatorImages reduction4977.relations [656] reduction4977.output := by lin_cert using reduction4977.terms
def image4978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4978 : InImage map_18_161 image4978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4978 : Bundle := named_bundle% "RealMapCertificates/relations/basis4978.json"
theorem reductionProof4978 : EqualModuloRelations reduction4978.relations reduction4978.input reduction4978.output := by lin_cert using reduction4978.terms
theorem substitutionProof4978 : IsMapEvaluation generatorImages reduction4978.relations [13,23,181] reduction4978.output := by lin_cert using reduction4978.terms
def image4979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4979 : InImage map_18_161 image4979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4979 : Bundle := named_bundle% "RealMapCertificates/relations/basis4979.json"
theorem reductionProof4979 : EqualModuloRelations reduction4979.relations reduction4979.input reduction4979.output := by lin_cert using reduction4979.terms
theorem substitutionProof4979 : IsMapEvaluation generatorImages reduction4979.relations [0,8,483] reduction4979.output := by lin_cert using reduction4979.terms
def image4980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4980 : InImage map_18_161 image4980 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4980 : Bundle := named_bundle% "RealMapCertificates/relations/basis4980.json"
theorem reductionProof4980 : EqualModuloRelations reduction4980.relations reduction4980.input reduction4980.output := by lin_cert using reduction4980.terms
theorem substitutionProof4980 : IsMapEvaluation generatorImages reduction4980.relations [0,0,17,333] reduction4980.output := by lin_cert using reduction4980.terms
def map_18_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5089 : InImage map_18_162 image5089 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5089 : Bundle := named_bundle% "RealMapCertificates/relations/basis5089.json"
theorem reductionProof5089 : EqualModuloRelations reduction5089.relations reduction5089.input reduction5089.output := by lin_cert using reduction5089.terms
theorem substitutionProof5089 : IsMapEvaluation generatorImages reduction5089.relations [13,23,190] reduction5089.output := by lin_cert using reduction5089.terms
def image5090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5090 : InImage map_18_162 image5090 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5090 : Bundle := named_bundle% "RealMapCertificates/relations/basis5090.json"
theorem reductionProof5090 : EqualModuloRelations reduction5090.relations reduction5090.input reduction5090.output := by lin_cert using reduction5090.terms
theorem substitutionProof5090 : IsMapEvaluation generatorImages reduction5090.relations [1,48,209] reduction5090.output := by lin_cert using reduction5090.terms
def image5091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5091 : InImage map_18_162 image5091 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5091 : Bundle := named_bundle% "RealMapCertificates/relations/basis5091.json"
theorem reductionProof5091 : EqualModuloRelations reduction5091.relations reduction5091.input reduction5091.output := by lin_cert using reduction5091.terms
theorem substitutionProof5091 : IsMapEvaluation generatorImages reduction5091.relations [0,0,648] reduction5091.output := by lin_cert using reduction5091.terms
def map_18_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5164 : InImage map_18_163 image5164 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5164 : Bundle := named_bundle% "RealMapCertificates/relations/basis5164.json"
theorem reductionProof5164 : EqualModuloRelations reduction5164.relations reduction5164.input reduction5164.output := by lin_cert using reduction5164.terms
theorem substitutionProof5164 : IsMapEvaluation generatorImages reduction5164.relations [8,8,312] reduction5164.output := by lin_cert using reduction5164.terms
def image5165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5165 : InImage map_18_163 image5165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5165 : Bundle := named_bundle% "RealMapCertificates/relations/basis5165.json"
theorem reductionProof5165 : EqualModuloRelations reduction5165.relations reduction5165.input reduction5165.output := by lin_cert using reduction5165.terms
theorem substitutionProof5165 : IsMapEvaluation generatorImages reduction5165.relations [0,8,502] reduction5165.output := by lin_cert using reduction5165.terms
def map_18_164 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5264 : InImage map_18_164 image5264 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5264 : Bundle := named_bundle% "RealMapCertificates/relations/basis5264.json"
theorem reductionProof5264 : EqualModuloRelations reduction5264.relations reduction5264.input reduction5264.output := by lin_cert using reduction5264.terms
theorem substitutionProof5264 : IsMapEvaluation generatorImages reduction5264.relations [0,3,604] reduction5264.output := by lin_cert using reduction5264.terms
def image5265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5265 : InImage map_18_164 image5265 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5265 : Bundle := named_bundle% "RealMapCertificates/relations/basis5265.json"
theorem reductionProof5265 : EqualModuloRelations reduction5265.relations reduction5265.input reduction5265.output := by lin_cert using reduction5265.terms
theorem substitutionProof5265 : IsMapEvaluation generatorImages reduction5265.relations [0,0,16,367] reduction5265.output := by lin_cert using reduction5265.terms
def map_18_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5388 : InImage map_18_165 image5388 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5388 : Bundle := named_bundle% "RealMapCertificates/relations/basis5388.json"
theorem reductionProof5388 : EqualModuloRelations reduction5388.relations reduction5388.input reduction5388.output := by lin_cert using reduction5388.terms
theorem substitutionProof5388 : IsMapEvaluation generatorImages reduction5388.relations [2,2,618] reduction5388.output := by lin_cert using reduction5388.terms
def image5389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5389 : InImage map_18_165 image5389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5389 : Bundle := named_bundle% "RealMapCertificates/relations/basis5389.json"
theorem reductionProof5389 : EqualModuloRelations reduction5389.relations reduction5389.input reduction5389.output := by lin_cert using reduction5389.terms
theorem substitutionProof5389 : IsMapEvaluation generatorImages reduction5389.relations [0,693] reduction5389.output := by lin_cert using reduction5389.terms
def image5390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5390 : InImage map_18_165 image5390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5390 : Bundle := named_bundle% "RealMapCertificates/relations/basis5390.json"
theorem reductionProof5390 : EqualModuloRelations reduction5390.relations reduction5390.input reduction5390.output := by lin_cert using reduction5390.terms
theorem substitutionProof5390 : IsMapEvaluation generatorImages reduction5390.relations [0,0,0,669] reduction5390.output := by lin_cert using reduction5390.terms
def image5391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5391 : InImage map_18_165 image5391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5391 : Bundle := named_bundle% "RealMapCertificates/relations/basis5391.json"
theorem reductionProof5391 : EqualModuloRelations reduction5391.relations reduction5391.input reduction5391.output := by lin_cert using reduction5391.terms
theorem substitutionProof5391 : IsMapEvaluation generatorImages reduction5391.relations [0,0,0,17,367] reduction5391.output := by lin_cert using reduction5391.terms
def map_18_166 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5479 : InImage map_18_166 image5479 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5479 : Bundle := named_bundle% "RealMapCertificates/relations/basis5479.json"
theorem reductionProof5479 : EqualModuloRelations reduction5479.relations reduction5479.input reduction5479.output := by lin_cert using reduction5479.terms
theorem substitutionProof5479 : IsMapEvaluation generatorImages reduction5479.relations [23,335] reduction5479.output := by lin_cert using reduction5479.terms
def image5480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5480 : InImage map_18_166 image5480 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5480 : Bundle := named_bundle% "RealMapCertificates/relations/basis5480.json"
theorem reductionProof5480 : EqualModuloRelations reduction5480.relations reduction5480.input reduction5480.output := by lin_cert using reduction5480.terms
theorem substitutionProof5480 : IsMapEvaluation generatorImages reduction5480.relations [1,693] reduction5480.output := by lin_cert using reduction5480.terms
def image5481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5481 : InImage map_18_166 image5481 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5481 : Bundle := named_bundle% "RealMapCertificates/relations/basis5481.json"
theorem reductionProof5481 : EqualModuloRelations reduction5481.relations reduction5481.input reduction5481.output := by lin_cert using reduction5481.terms
theorem substitutionProof5481 : IsMapEvaluation generatorImages reduction5481.relations [1,692] reduction5481.output := by lin_cert using reduction5481.terms
def image5482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5482 : InImage map_18_166 image5482 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5482 : Bundle := named_bundle% "RealMapCertificates/relations/basis5482.json"
theorem reductionProof5482 : EqualModuloRelations reduction5482.relations reduction5482.input reduction5482.output := by lin_cert using reduction5482.terms
theorem substitutionProof5482 : IsMapEvaluation generatorImages reduction5482.relations [1,691] reduction5482.output := by lin_cert using reduction5482.terms
def image5483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5483 : InImage map_18_166 image5483 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5483 : Bundle := named_bundle% "RealMapCertificates/relations/basis5483.json"
theorem reductionProof5483 : EqualModuloRelations reduction5483.relations reduction5483.input reduction5483.output := by lin_cert using reduction5483.terms
theorem substitutionProof5483 : IsMapEvaluation generatorImages reduction5483.relations [0,8,8,333] reduction5483.output := by lin_cert using reduction5483.terms
def image5484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5484 : InImage map_18_166 image5484 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5484 : Bundle := named_bundle% "RealMapCertificates/relations/basis5484.json"
theorem reductionProof5484 : EqualModuloRelations reduction5484.relations reduction5484.input reduction5484.output := by lin_cert using reduction5484.terms
theorem substitutionProof5484 : IsMapEvaluation generatorImages reduction5484.relations [0,0,0,0,671] reduction5484.output := by lin_cert using reduction5484.terms
def map_18_167 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5591 : InImage map_18_167 image5591 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5591 : Bundle := named_bundle% "RealMapCertificates/relations/basis5591.json"
theorem reductionProof5591 : EqualModuloRelations reduction5591.relations reduction5591.input reduction5591.output := by lin_cert using reduction5591.terms
theorem substitutionProof5591 : IsMapEvaluation generatorImages reduction5591.relations [729] reduction5591.output := by lin_cert using reduction5591.terms
def image5592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5592 : InImage map_18_167 image5592 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5592 : Bundle := named_bundle% "RealMapCertificates/relations/basis5592.json"
theorem reductionProof5592 : EqualModuloRelations reduction5592.relations reduction5592.input reduction5592.output := by lin_cert using reduction5592.terms
theorem substitutionProof5592 : IsMapEvaluation generatorImages reduction5592.relations [0,0,707] reduction5592.output := by lin_cert using reduction5592.terms
def image5593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5593 : InImage map_18_167 image5593 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5593 : Bundle := named_bundle% "RealMapCertificates/relations/basis5593.json"
theorem reductionProof5593 : EqualModuloRelations reduction5593.relations reduction5593.input reduction5593.output := by lin_cert using reduction5593.terms
theorem substitutionProof5593 : IsMapEvaluation generatorImages reduction5593.relations [0,0,8,534] reduction5593.output := by lin_cert using reduction5593.terms
def map_18_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5712 : InImage map_18_168 image5712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5712 : Bundle := named_bundle% "RealMapCertificates/relations/basis5712.json"
theorem reductionProof5712 : EqualModuloRelations reduction5712.relations reduction5712.input reduction5712.output := by lin_cert using reduction5712.terms
theorem substitutionProof5712 : IsMapEvaluation generatorImages reduction5712.relations [43,267] reduction5712.output := by lin_cert using reduction5712.terms
def image5713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5713 : InImage map_18_168 image5713 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5713 : Bundle := named_bundle% "RealMapCertificates/relations/basis5713.json"
theorem reductionProof5713 : EqualModuloRelations reduction5713.relations reduction5713.input reduction5713.output := by lin_cert using reduction5713.terms
theorem substitutionProof5713 : IsMapEvaluation generatorImages reduction5713.relations [9,13,288] reduction5713.output := by lin_cert using reduction5713.terms
def image5714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5714 : InImage map_18_168 image5714 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5714 : Bundle := named_bundle% "RealMapCertificates/relations/basis5714.json"
theorem reductionProof5714 : EqualModuloRelations reduction5714.relations reduction5714.input reduction5714.output := by lin_cert using reduction5714.terms
theorem substitutionProof5714 : IsMapEvaluation generatorImages reduction5714.relations [1,3,629] reduction5714.output := by lin_cert using reduction5714.terms
def map_18_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5810 : InImage map_18_169 image5810 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5810 : Bundle := named_bundle% "RealMapCertificates/relations/basis5810.json"
theorem reductionProof5810 : EqualModuloRelations reduction5810.relations reduction5810.input reduction5810.output := by lin_cert using reduction5810.terms
theorem substitutionProof5810 : IsMapEvaluation generatorImages reduction5810.relations [8,8,69,80] reduction5810.output := by lin_cert using reduction5810.terms
def image5811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5811 : InImage map_18_169 image5811 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5811 : Bundle := named_bundle% "RealMapCertificates/relations/basis5811.json"
theorem reductionProof5811 : EqualModuloRelations reduction5811.relations reduction5811.input reduction5811.output := by lin_cert using reduction5811.terms
theorem substitutionProof5811 : IsMapEvaluation generatorImages reduction5811.relations [0,3,648] reduction5811.output := by lin_cert using reduction5811.terms
def map_18_170 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5916 : InImage map_18_170 image5916 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5916 : Bundle := named_bundle% "RealMapCertificates/relations/basis5916.json"
theorem reductionProof5916 : EqualModuloRelations reduction5916.relations reduction5916.input reduction5916.output := by lin_cert using reduction5916.terms
theorem substitutionProof5916 : IsMapEvaluation generatorImages reduction5916.relations [761] reduction5916.output := by lin_cert using reduction5916.terms
def map_18_171 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6051 : InImage map_18_171 image6051 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6051 : Bundle := named_bundle% "RealMapCertificates/relations/basis6051.json"
theorem reductionProof6051 : EqualModuloRelations reduction6051.relations reduction6051.input reduction6051.output := by lin_cert using reduction6051.terms
theorem substitutionProof6051 : IsMapEvaluation generatorImages reduction6051.relations [43,285] reduction6051.output := by lin_cert using reduction6051.terms
def image6052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6052 : InImage map_18_171 image6052 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6052 : Bundle := named_bundle% "RealMapCertificates/relations/basis6052.json"
theorem reductionProof6052 : EqualModuloRelations reduction6052.relations reduction6052.input reduction6052.output := by lin_cert using reduction6052.terms
theorem substitutionProof6052 : IsMapEvaluation generatorImages reduction6052.relations [13,13,288] reduction6052.output := by lin_cert using reduction6052.terms
def image6053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6053 : InImage map_18_171 image6053 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6053 : Bundle := named_bundle% "RealMapCertificates/relations/basis6053.json"
theorem reductionProof6053 : EqualModuloRelations reduction6053.relations reduction6053.input reduction6053.output := by lin_cert using reduction6053.terms
theorem substitutionProof6053 : IsMapEvaluation generatorImages reduction6053.relations [3,3,604] reduction6053.output := by lin_cert using reduction6053.terms
def image6054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6054 : InImage map_18_171 image6054 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6054 : Bundle := named_bundle% "RealMapCertificates/relations/basis6054.json"
theorem reductionProof6054 : EqualModuloRelations reduction6054.relations reduction6054.input reduction6054.output := by lin_cert using reduction6054.terms
theorem substitutionProof6054 : IsMapEvaluation generatorImages reduction6054.relations [0,762] reduction6054.output := by lin_cert using reduction6054.terms
def map_18_172 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6146 : InImage map_18_172 image6146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6146 : Bundle := named_bundle% "RealMapCertificates/relations/basis6146.json"
theorem reductionProof6146 : EqualModuloRelations reduction6146.relations reduction6146.input reduction6146.output := by lin_cert using reduction6146.terms
theorem substitutionProof6146 : IsMapEvaluation generatorImages reduction6146.relations [786] reduction6146.output := by lin_cert using reduction6146.terms
def image6147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6147 : InImage map_18_172 image6147 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6147 : Bundle := named_bundle% "RealMapCertificates/relations/basis6147.json"
theorem reductionProof6147 : EqualModuloRelations reduction6147.relations reduction6147.input reduction6147.output := by lin_cert using reduction6147.terms
theorem substitutionProof6147 : IsMapEvaluation generatorImages reduction6147.relations [24,417] reduction6147.output := by lin_cert using reduction6147.terms
def image6148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6148 : InImage map_18_172 image6148 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6148 : Bundle := named_bundle% "RealMapCertificates/relations/basis6148.json"
theorem reductionProof6148 : EqualModuloRelations reduction6148.relations reduction6148.input reduction6148.output := by lin_cert using reduction6148.terms
theorem substitutionProof6148 : IsMapEvaluation generatorImages reduction6148.relations [3,691] reduction6148.output := by lin_cert using reduction6148.terms
def image6149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6149 : InImage map_18_172 image6149 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6149 : Bundle := named_bundle% "RealMapCertificates/relations/basis6149.json"
theorem reductionProof6149 : EqualModuloRelations reduction6149.relations reduction6149.input reduction6149.output := by lin_cert using reduction6149.terms
theorem substitutionProof6149 : IsMapEvaluation generatorImages reduction6149.relations [1,762] reduction6149.output := by lin_cert using reduction6149.terms
def image6150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6150 : InImage map_18_172 image6150 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6150 : Bundle := named_bundle% "RealMapCertificates/relations/basis6150.json"
theorem reductionProof6150 : EqualModuloRelations reduction6150.relations reduction6150.input reduction6150.output := by lin_cert using reduction6150.terms
theorem substitutionProof6150 : IsMapEvaluation generatorImages reduction6150.relations [0,0,763] reduction6150.output := by lin_cert using reduction6150.terms
def map_18_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6254 : InImage map_18_173 image6254 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6254 : Bundle := named_bundle% "RealMapCertificates/relations/basis6254.json"
theorem reductionProof6254 : EqualModuloRelations reduction6254.relations reduction6254.input reduction6254.output := by lin_cert using reduction6254.terms
theorem substitutionProof6254 : IsMapEvaluation generatorImages reduction6254.relations [0,0,0,0,0,0,732] reduction6254.output := by lin_cert using reduction6254.terms
def map_18_174 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6391 : InImage map_18_174 image6391 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6391 : Bundle := named_bundle% "RealMapCertificates/relations/basis6391.json"
theorem reductionProof6391 : EqualModuloRelations reduction6391.relations reduction6391.input reduction6391.output := by lin_cert using reduction6391.terms
theorem substitutionProof6391 : IsMapEvaluation generatorImages reduction6391.relations [3,3,629] reduction6391.output := by lin_cert using reduction6391.terms
def image6392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6392 : InImage map_18_174 image6392 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6392 : Bundle := named_bundle% "RealMapCertificates/relations/basis6392.json"
theorem reductionProof6392 : EqualModuloRelations reduction6392.relations reduction6392.input reduction6392.output := by lin_cert using reduction6392.terms
theorem substitutionProof6392 : IsMapEvaluation generatorImages reduction6392.relations [0,3,707] reduction6392.output := by lin_cert using reduction6392.terms
def map_18_175 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6488 : InImage map_18_175 image6488 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6488 : Bundle := named_bundle% "RealMapCertificates/relations/basis6488.json"
theorem reductionProof6488 : EqualModuloRelations reduction6488.relations reduction6488.input reduction6488.output := by lin_cert using reduction6488.terms
theorem substitutionProof6488 : IsMapEvaluation generatorImages reduction6488.relations [823] reduction6488.output := by lin_cert using reduction6488.terms
def image6489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6489 : InImage map_18_175 image6489 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6489 : Bundle := named_bundle% "RealMapCertificates/relations/basis6489.json"
theorem reductionProof6489 : EqualModuloRelations reduction6489.relations reduction6489.input reduction6489.output := by lin_cert using reduction6489.terms
theorem substitutionProof6489 : IsMapEvaluation generatorImages reduction6489.relations [75,212] reduction6489.output := by lin_cert using reduction6489.terms
def image6490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6490 : InImage map_18_175 image6490 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6490 : Bundle := named_bundle% "RealMapCertificates/relations/basis6490.json"
theorem reductionProof6490 : EqualModuloRelations reduction6490.relations reduction6490.input reduction6490.output := by lin_cert using reduction6490.terms
theorem substitutionProof6490 : IsMapEvaluation generatorImages reduction6490.relations [0,2,763] reduction6490.output := by lin_cert using reduction6490.terms
def image6491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6491 : InImage map_18_175 image6491 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6491 : Bundle := named_bundle% "RealMapCertificates/relations/basis6491.json"
theorem reductionProof6491 : EqualModuloRelations reduction6491.relations reduction6491.input reduction6491.output := by lin_cert using reduction6491.terms
theorem substitutionProof6491 : IsMapEvaluation generatorImages reduction6491.relations [0,0,0,0,0,0,0,743] reduction6491.output := by lin_cert using reduction6491.terms
def map_18_176 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6596 : InImage map_18_176 image6596 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6596 : Bundle := named_bundle% "RealMapCertificates/relations/basis6596.json"
theorem reductionProof6596 : EqualModuloRelations reduction6596.relations reduction6596.input reduction6596.output := by lin_cert using reduction6596.terms
theorem substitutionProof6596 : IsMapEvaluation generatorImages reduction6596.relations [837] reduction6596.output := by lin_cert using reduction6596.terms
def image6597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6597 : InImage map_18_176 image6597 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6597 : Bundle := named_bundle% "RealMapCertificates/relations/basis6597.json"
theorem reductionProof6597 : EqualModuloRelations reduction6597.relations reduction6597.input reduction6597.output := by lin_cert using reduction6597.terms
theorem substitutionProof6597 : IsMapEvaluation generatorImages reduction6597.relations [836] reduction6597.output := by lin_cert using reduction6597.terms
def image6598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6598 : InImage map_18_176 image6598 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6598 : Bundle := named_bundle% "RealMapCertificates/relations/basis6598.json"
theorem reductionProof6598 : EqualModuloRelations reduction6598.relations reduction6598.input reduction6598.output := by lin_cert using reduction6598.terms
theorem substitutionProof6598 : IsMapEvaluation generatorImages reduction6598.relations [835] reduction6598.output := by lin_cert using reduction6598.terms
def image6599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6599 : InImage map_18_176 image6599 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6599 : Bundle := named_bundle% "RealMapCertificates/relations/basis6599.json"
theorem reductionProof6599 : EqualModuloRelations reduction6599.relations reduction6599.input reduction6599.output := by lin_cert using reduction6599.terms
theorem substitutionProof6599 : IsMapEvaluation generatorImages reduction6599.relations [3,3,648] reduction6599.output := by lin_cert using reduction6599.terms
def map_18_177 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6739 : InImage map_18_177 image6739 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6739 : Bundle := named_bundle% "RealMapCertificates/relations/basis6739.json"
theorem reductionProof6739 : EqualModuloRelations reduction6739.relations reduction6739.input reduction6739.output := by lin_cert using reduction6739.terms
theorem substitutionProof6739 : IsMapEvaluation generatorImages reduction6739.relations [42,333] reduction6739.output := by lin_cert using reduction6739.terms
def image6740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6740 : InImage map_18_177 image6740 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6740 : Bundle := named_bundle% "RealMapCertificates/relations/basis6740.json"
theorem reductionProof6740 : EqualModuloRelations reduction6740.relations reduction6740.input reduction6740.output := by lin_cert using reduction6740.terms
theorem substitutionProof6740 : IsMapEvaluation generatorImages reduction6740.relations [13,13,332] reduction6740.output := by lin_cert using reduction6740.terms
def image6741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6741 : InImage map_18_177 image6741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6741 : Bundle := named_bundle% "RealMapCertificates/relations/basis6741.json"
theorem reductionProof6741 : EqualModuloRelations reduction6741.relations reduction6741.input reduction6741.output := by lin_cert using reduction6741.terms
theorem substitutionProof6741 : IsMapEvaluation generatorImages reduction6741.relations [1,18,494] reduction6741.output := by lin_cert using reduction6741.terms
def image6742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6742 : InImage map_18_177 image6742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6742 : Bundle := named_bundle% "RealMapCertificates/relations/basis6742.json"
theorem reductionProof6742 : EqualModuloRelations reduction6742.relations reduction6742.input reduction6742.output := by lin_cert using reduction6742.terms
theorem substitutionProof6742 : IsMapEvaluation generatorImages reduction6742.relations [0,838] reduction6742.output := by lin_cert using reduction6742.terms
def map_18_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6833 : InImage map_18_178 image6833 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6833 : Bundle := named_bundle% "RealMapCertificates/relations/basis6833.json"
theorem reductionProof6833 : EqualModuloRelations reduction6833.relations reduction6833.input reduction6833.output := by lin_cert using reduction6833.terms
theorem substitutionProof6833 : IsMapEvaluation generatorImages reduction6833.relations [865] reduction6833.output := by lin_cert using reduction6833.terms
def image6834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6834 : InImage map_18_178 image6834 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6834 : Bundle := named_bundle% "RealMapCertificates/relations/basis6834.json"
theorem reductionProof6834 : EqualModuloRelations reduction6834.relations reduction6834.input reduction6834.output := by lin_cert using reduction6834.terms
theorem substitutionProof6834 : IsMapEvaluation generatorImages reduction6834.relations [44,324] reduction6834.output := by lin_cert using reduction6834.terms
def image6835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6835 : InImage map_18_178 image6835 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6835 : Bundle := named_bundle% "RealMapCertificates/relations/basis6835.json"
theorem reductionProof6835 : EqualModuloRelations reduction6835.relations reduction6835.input reduction6835.output := by lin_cert using reduction6835.terms
theorem substitutionProof6835 : IsMapEvaluation generatorImages reduction6835.relations [1,838] reduction6835.output := by lin_cert using reduction6835.terms
def image6836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6836 : InImage map_18_178 image6836 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6836 : Bundle := named_bundle% "RealMapCertificates/relations/basis6836.json"
theorem reductionProof6836 : EqualModuloRelations reduction6836.relations reduction6836.input reduction6836.output := by lin_cert using reduction6836.terms
theorem substitutionProof6836 : IsMapEvaluation generatorImages reduction6836.relations [0,0,0,825] reduction6836.output := by lin_cert using reduction6836.terms
def map_18_179 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6969 : InImage map_18_179 image6969 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6969 : Bundle := named_bundle% "RealMapCertificates/relations/basis6969.json"
theorem reductionProof6969 : EqualModuloRelations reduction6969.relations reduction6969.input reduction6969.output := by lin_cert using reduction6969.terms
theorem substitutionProof6969 : IsMapEvaluation generatorImages reduction6969.relations [880] reduction6969.output := by lin_cert using reduction6969.terms
def image6970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6970 : InImage map_18_179 image6970 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6970 : Bundle := named_bundle% "RealMapCertificates/relations/basis6970.json"
theorem reductionProof6970 : EqualModuloRelations reduction6970.relations reduction6970.input reduction6970.output := by lin_cert using reduction6970.terms
theorem substitutionProof6970 : IsMapEvaluation generatorImages reduction6970.relations [0,3,763] reduction6970.output := by lin_cert using reduction6970.terms
def map_18_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7113 : InImage map_18_180 image7113 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7113 : Bundle := named_bundle% "RealMapCertificates/relations/basis7113.json"
theorem reductionProof7113 : EqualModuloRelations reduction7113.relations reduction7113.input reduction7113.output := by lin_cert using reduction7113.terms
theorem substitutionProof7113 : IsMapEvaluation generatorImages reduction7113.relations [47,324] reduction7113.output := by lin_cert using reduction7113.terms
def image7114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7114 : InImage map_18_180 image7114 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7114 : Bundle := named_bundle% "RealMapCertificates/relations/basis7114.json"
theorem reductionProof7114 : EqualModuloRelations reduction7114.relations reduction7114.input reduction7114.output := by lin_cert using reduction7114.terms
theorem substitutionProof7114 : IsMapEvaluation generatorImages reduction7114.relations [7,692] reduction7114.output := by lin_cert using reduction7114.terms
def image7115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7115 : InImage map_18_180 image7115 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7115 : Bundle := named_bundle% "RealMapCertificates/relations/basis7115.json"
theorem reductionProof7115 : EqualModuloRelations reduction7115.relations reduction7115.input reduction7115.output := by lin_cert using reduction7115.terms
theorem substitutionProof7115 : IsMapEvaluation generatorImages reduction7115.relations [1,866] reduction7115.output := by lin_cert using reduction7115.terms
def image7116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7116 : InImage map_18_180 image7116 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7116 : Bundle := named_bundle% "RealMapCertificates/relations/basis7116.json"
theorem reductionProof7116 : EqualModuloRelations reduction7116.relations reduction7116.input reduction7116.output := by lin_cert using reduction7116.terms
theorem substitutionProof7116 : IsMapEvaluation generatorImages reduction7116.relations [0,0,3,764] reduction7116.output := by lin_cert using reduction7116.terms
def map_18_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7211 : InImage map_18_181 image7211 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7211 : Bundle := named_bundle% "RealMapCertificates/relations/basis7211.json"
theorem reductionProof7211 : EqualModuloRelations reduction7211.relations reduction7211.input reduction7211.output := by lin_cert using reduction7211.terms
theorem substitutionProof7211 : IsMapEvaluation generatorImages reduction7211.relations [13,620] reduction7211.output := by lin_cert using reduction7211.terms
def image7212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7212 : InImage map_18_181 image7212 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7212 : Bundle := named_bundle% "RealMapCertificates/relations/basis7212.json"
theorem reductionProof7212 : EqualModuloRelations reduction7212.relations reduction7212.input reduction7212.output := by lin_cert using reduction7212.terms
theorem substitutionProof7212 : IsMapEvaluation generatorImages reduction7212.relations [1,881] reduction7212.output := by lin_cert using reduction7212.terms
def map_18_182 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7321 : InImage map_18_182 image7321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7321 : Bundle := named_bundle% "RealMapCertificates/relations/basis7321.json"
theorem reductionProof7321 : EqualModuloRelations reduction7321.relations reduction7321.input reduction7321.output := by lin_cert using reduction7321.terms
theorem substitutionProof7321 : IsMapEvaluation generatorImages reduction7321.relations [2,866] reduction7321.output := by lin_cert using reduction7321.terms
def image7322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7322 : InImage map_18_182 image7322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7322 : Bundle := named_bundle% "RealMapCertificates/relations/basis7322.json"
theorem reductionProof7322 : EqualModuloRelations reduction7322.relations reduction7322.input reduction7322.output := by lin_cert using reduction7322.terms
theorem substitutionProof7322 : IsMapEvaluation generatorImages reduction7322.relations [0,891] reduction7322.output := by lin_cert using reduction7322.terms
def map_18_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7472 : InImage map_18_183 image7472 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7472 : Bundle := named_bundle% "RealMapCertificates/relations/basis7472.json"
theorem reductionProof7472 : EqualModuloRelations reduction7472.relations reduction7472.input reduction7472.output := by lin_cert using reduction7472.terms
theorem substitutionProof7472 : IsMapEvaluation generatorImages reduction7472.relations [0,908] reduction7472.output := by lin_cert using reduction7472.terms
def image7473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7473 : InImage map_18_183 image7473 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7473 : Bundle := named_bundle% "RealMapCertificates/relations/basis7473.json"
theorem reductionProof7473 : EqualModuloRelations reduction7473.relations reduction7473.input reduction7473.output := by lin_cert using reduction7473.terms
theorem substitutionProof7473 : IsMapEvaluation generatorImages reduction7473.relations [0,906] reduction7473.output := by lin_cert using reduction7473.terms
def image7474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7474 : InImage map_18_183 image7474 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7474 : Bundle := named_bundle% "RealMapCertificates/relations/basis7474.json"
theorem reductionProof7474 : EqualModuloRelations reduction7474.relations reduction7474.input reduction7474.output := by lin_cert using reduction7474.terms
theorem substitutionProof7474 : IsMapEvaluation generatorImages reduction7474.relations [0,49,324] reduction7474.output := by lin_cert using reduction7474.terms
def map_18_184 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7574 : InImage map_18_184 image7574 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7574 : Bundle := named_bundle% "RealMapCertificates/relations/basis7574.json"
theorem reductionProof7574 : EqualModuloRelations reduction7574.relations reduction7574.input reduction7574.output := by lin_cert using reduction7574.terms
theorem substitutionProof7574 : IsMapEvaluation generatorImages reduction7574.relations [9,13,450] reduction7574.output := by lin_cert using reduction7574.terms
def image7575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7575 : InImage map_18_184 image7575 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7575 : Bundle := named_bundle% "RealMapCertificates/relations/basis7575.json"
theorem reductionProof7575 : EqualModuloRelations reduction7575.relations reduction7575.input reduction7575.output := by lin_cert using reduction7575.terms
theorem substitutionProof7575 : IsMapEvaluation generatorImages reduction7575.relations [3,838] reduction7575.output := by lin_cert using reduction7575.terms
def image7576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7576 : InImage map_18_184 image7576 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7576 : Bundle := named_bundle% "RealMapCertificates/relations/basis7576.json"
theorem reductionProof7576 : EqualModuloRelations reduction7576.relations reduction7576.input reduction7576.output := by lin_cert using reduction7576.terms
theorem substitutionProof7576 : IsMapEvaluation generatorImages reduction7576.relations [1,906] reduction7576.output := by lin_cert using reduction7576.terms
def image7577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7577 : InImage map_18_184 image7577 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7577 : Bundle := named_bundle% "RealMapCertificates/relations/basis7577.json"
theorem reductionProof7577 : EqualModuloRelations reduction7577.relations reduction7577.input reduction7577.output := by lin_cert using reduction7577.terms
theorem substitutionProof7577 : IsMapEvaluation generatorImages reduction7577.relations [1,49,324] reduction7577.output := by lin_cert using reduction7577.terms
def image7578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7578 : InImage map_18_184 image7578 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7578 : Bundle := named_bundle% "RealMapCertificates/relations/basis7578.json"
theorem reductionProof7578 : EqualModuloRelations reduction7578.relations reduction7578.input reduction7578.output := by lin_cert using reduction7578.terms
theorem substitutionProof7578 : IsMapEvaluation generatorImages reduction7578.relations [0,0,50,324] reduction7578.output := by lin_cert using reduction7578.terms
def map_18_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7695 : InImage map_18_185 image7695 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7695 : Bundle := named_bundle% "RealMapCertificates/relations/basis7695.json"
theorem reductionProof7695 : EqualModuloRelations reduction7695.relations reduction7695.input reduction7695.output := by lin_cert using reduction7695.terms
theorem substitutionProof7695 : IsMapEvaluation generatorImages reduction7695.relations [946] reduction7695.output := by lin_cert using reduction7695.terms
def image7696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7696 : InImage map_18_185 image7696 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7696 : Bundle := named_bundle% "RealMapCertificates/relations/basis7696.json"
theorem reductionProof7696 : EqualModuloRelations reduction7696.relations reduction7696.input reduction7696.output := by lin_cert using reduction7696.terms
theorem substitutionProof7696 : IsMapEvaluation generatorImages reduction7696.relations [0,932] reduction7696.output := by lin_cert using reduction7696.terms
def image7697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7697 : InImage map_18_185 image7697 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7697 : Bundle := named_bundle% "RealMapCertificates/relations/basis7697.json"
theorem reductionProof7697 : EqualModuloRelations reduction7697.relations reduction7697.input reduction7697.output := by lin_cert using reduction7697.terms
theorem substitutionProof7697 : IsMapEvaluation generatorImages reduction7697.relations [0,0,3,825] reduction7697.output := by lin_cert using reduction7697.terms
def map_18_186 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7843 : InImage map_18_186 image7843 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7843 : Bundle := named_bundle% "RealMapCertificates/relations/basis7843.json"
theorem reductionProof7843 : EqualModuloRelations reduction7843.relations reduction7843.input reduction7843.output := by lin_cert using reduction7843.terms
theorem substitutionProof7843 : IsMapEvaluation generatorImages reduction7843.relations [1,932] reduction7843.output := by lin_cert using reduction7843.terms
def image7844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7844 : InImage map_18_186 image7844 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7844 : Bundle := named_bundle% "RealMapCertificates/relations/basis7844.json"
theorem reductionProof7844 : EqualModuloRelations reduction7844.relations reduction7844.input reduction7844.output := by lin_cert using reduction7844.terms
theorem substitutionProof7844 : IsMapEvaluation generatorImages reduction7844.relations [0,55,324] reduction7844.output := by lin_cert using reduction7844.terms
def map_18_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7927 : InImage map_18_187 image7927 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7927 : Bundle := named_bundle% "RealMapCertificates/relations/basis7927.json"
theorem reductionProof7927 : EqualModuloRelations reduction7927.relations reduction7927.input reduction7927.output := by lin_cert using reduction7927.terms
theorem substitutionProof7927 : IsMapEvaluation generatorImages reduction7927.relations [13,13,450] reduction7927.output := by lin_cert using reduction7927.terms
def image7928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7928 : InImage map_18_187 image7928 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7928 : Bundle := named_bundle% "RealMapCertificates/relations/basis7928.json"
theorem reductionProof7928 : EqualModuloRelations reduction7928.relations reduction7928.input reduction7928.output := by lin_cert using reduction7928.terms
theorem substitutionProof7928 : IsMapEvaluation generatorImages reduction7928.relations [0,0,56,324] reduction7928.output := by lin_cert using reduction7928.terms
def map_18_188 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8040 : InImage map_18_188 image8040 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8040 : Bundle := named_bundle% "RealMapCertificates/relations/basis8040.json"
theorem reductionProof8040 : EqualModuloRelations reduction8040.relations reduction8040.input reduction8040.output := by lin_cert using reduction8040.terms
theorem substitutionProof8040 : IsMapEvaluation generatorImages reduction8040.relations [986] reduction8040.output := by lin_cert using reduction8040.terms
def image8041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8041 : InImage map_18_188 image8041 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8041 : Bundle := named_bundle% "RealMapCertificates/relations/basis8041.json"
theorem reductionProof8041 : EqualModuloRelations reduction8041.relations reduction8041.input reduction8041.output := by lin_cert using reduction8041.terms
theorem substitutionProof8041 : IsMapEvaluation generatorImages reduction8041.relations [985] reduction8041.output := by lin_cert using reduction8041.terms
def map_18_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8194 : InImage map_18_189 image8194 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8194 : Bundle := named_bundle% "RealMapCertificates/relations/basis8194.json"
theorem reductionProof8194 : EqualModuloRelations reduction8194.relations reduction8194.input reduction8194.output := by lin_cert using reduction8194.terms
theorem substitutionProof8194 : IsMapEvaluation generatorImages reduction8194.relations [1001] reduction8194.output := by lin_cert using reduction8194.terms
def image8195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8195 : InImage map_18_189 image8195 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8195 : Bundle := named_bundle% "RealMapCertificates/relations/basis8195.json"
theorem reductionProof8195 : EqualModuloRelations reduction8195.relations reduction8195.input reduction8195.output := by lin_cert using reduction8195.terms
theorem substitutionProof8195 : IsMapEvaluation generatorImages reduction8195.relations [0,8,31,324] reduction8195.output := by lin_cert using reduction8195.terms
def image8196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8196 : InImage map_18_189 image8196 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8196 : Bundle := named_bundle% "RealMapCertificates/relations/basis8196.json"
theorem reductionProof8196 : EqualModuloRelations reduction8196.relations reduction8196.input reduction8196.output := by lin_cert using reduction8196.terms
theorem substitutionProof8196 : IsMapEvaluation generatorImages reduction8196.relations [0,0,965] reduction8196.output := by lin_cert using reduction8196.terms
def map_18_190 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8288 : InImage map_18_190 image8288 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8288 : Bundle := named_bundle% "RealMapCertificates/relations/basis8288.json"
theorem reductionProof8288 : EqualModuloRelations reduction8288.relations reduction8288.input reduction8288.output := by lin_cert using reduction8288.terms
theorem substitutionProof8288 : IsMapEvaluation generatorImages reduction8288.relations [1014] reduction8288.output := by lin_cert using reduction8288.terms
def image8289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8289 : InImage map_18_190 image8289 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8289 : Bundle := named_bundle% "RealMapCertificates/relations/basis8289.json"
theorem reductionProof8289 : EqualModuloRelations reduction8289.relations reduction8289.input reduction8289.output := by lin_cert using reduction8289.terms
theorem substitutionProof8289 : IsMapEvaluation generatorImages reduction8289.relations [1013] reduction8289.output := by lin_cert using reduction8289.terms
def image8290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8290 : InImage map_18_190 image8290 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8290 : Bundle := named_bundle% "RealMapCertificates/relations/basis8290.json"
theorem reductionProof8290 : EqualModuloRelations reduction8290.relations reduction8290.input reduction8290.output := by lin_cert using reduction8290.terms
theorem substitutionProof8290 : IsMapEvaluation generatorImages reduction8290.relations [0,1002] reduction8290.output := by lin_cert using reduction8290.terms
def image8291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8291 : InImage map_18_190 image8291 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8291 : Bundle := named_bundle% "RealMapCertificates/relations/basis8291.json"
theorem reductionProof8291 : EqualModuloRelations reduction8291.relations reduction8291.input reduction8291.output := by lin_cert using reduction8291.terms
theorem substitutionProof8291 : IsMapEvaluation generatorImages reduction8291.relations [0,0,987] reduction8291.output := by lin_cert using reduction8291.terms
def image8292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8292 : InImage map_18_190 image8292 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8292 : Bundle := named_bundle% "RealMapCertificates/relations/basis8292.json"
theorem reductionProof8292 : EqualModuloRelations reduction8292.relations reduction8292.input reduction8292.output := by lin_cert using reduction8292.terms
theorem substitutionProof8292 : IsMapEvaluation generatorImages reduction8292.relations [0,0,16,17,324] reduction8292.output := by lin_cert using reduction8292.terms
end RealMapCertificates
