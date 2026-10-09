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
  | 23 => [[7,7]]
  | 39 => [[4,4,8]]
  | 40 => [[4,5,6]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 66 => [[2,2,12]]
  | 67 => []
  | 75 => []
  | 76 => []
  | 88 => [[4,4,5,5,7]]
  | 90 => []
  | 100 => [[4,4,5,7,7]]
  | 107 => []
  | 112 => []
  | 189 => []
  | 190 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 336 => []
  | 376 => []
  | 417 => []
  | 842 => []
  | 867 => []
  | 932 => []
  | 949 => []
  | 965 => []
  | 1002 => []
  | 1004 => []
  | 1015 => []
  | 1016 => []
  | 1017 => []
  | 1042 => []
  | 1043 => []
  | 1044 => []
  | 1046 => []
  | 1053 => []
  | 1055 => []
  | 1057 => []
  | 1067 => []
  | 1068 => []
  | 1069 => []
  | 1085 => []
  | 1086 => []
  | 1088 => []
  | 1096 => []
  | 1097 => []
  | 1110 => []
  | 1127 => []
  | 1128 => []
  | 1129 => []
  | 1154 => []
  | 1155 => []
  | 1156 => []
  | 1157 => []
  | 1175 => []
  | 1184 => []
  | 1185 => []
  | 1186 => []
  | 1206 => []
  | 1207 => []
  | 1208 => []
  | 1209 => []
  | 1222 => []
  | 1223 => []
  | 1224 => []
  | 1246 => []
  | 1247 => []
  | 1261 => []
  | 1262 => []
  | 1263 => []
  | 1264 => []
  | 1265 => []
  | 1267 => []
  | 1292 => []
  | 1293 => []
  | 1295 => []
  | 1306 => []
  | 1320 => []
  | 1321 => []
  | 1322 => []
  | 1323 => []
  | _ => []
def map_18_191 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8416 : InImage map_18_191 image8416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8416 : Bundle := named_bundle% "RealMapCertificates/relations/basis8416.json"
theorem reductionProof8416 : EqualModuloRelations reduction8416.relations reduction8416.input reduction8416.output := by lin_cert using reduction8416.terms
theorem substitutionProof8416 : IsMapEvaluation generatorImages reduction8416.relations [1044] reduction8416.output := by lin_cert using reduction8416.terms
def image8417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8417 : InImage map_18_191 image8417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8417 : Bundle := named_bundle% "RealMapCertificates/relations/basis8417.json"
theorem reductionProof8417 : EqualModuloRelations reduction8417.relations reduction8417.input reduction8417.output := by lin_cert using reduction8417.terms
theorem substitutionProof8417 : IsMapEvaluation generatorImages reduction8417.relations [1043] reduction8417.output := by lin_cert using reduction8417.terms
def image8418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8418 : InImage map_18_191 image8418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8418 : Bundle := named_bundle% "RealMapCertificates/relations/basis8418.json"
theorem reductionProof8418 : EqualModuloRelations reduction8418.relations reduction8418.input reduction8418.output := by lin_cert using reduction8418.terms
theorem substitutionProof8418 : IsMapEvaluation generatorImages reduction8418.relations [1042] reduction8418.output := by lin_cert using reduction8418.terms
def image8419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8419 : InImage map_18_191 image8419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8419 : Bundle := named_bundle% "RealMapCertificates/relations/basis8419.json"
theorem reductionProof8419 : EqualModuloRelations reduction8419.relations reduction8419.input reduction8419.output := by lin_cert using reduction8419.terms
theorem substitutionProof8419 : IsMapEvaluation generatorImages reduction8419.relations [0,1016] reduction8419.output := by lin_cert using reduction8419.terms
def image8420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8420 : InImage map_18_191 image8420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8420 : Bundle := named_bundle% "RealMapCertificates/relations/basis8420.json"
theorem reductionProof8420 : EqualModuloRelations reduction8420.relations reduction8420.input reduction8420.output := by lin_cert using reduction8420.terms
theorem substitutionProof8420 : IsMapEvaluation generatorImages reduction8420.relations [0,1015] reduction8420.output := by lin_cert using reduction8420.terms
def image8421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8421 : InImage map_18_191 image8421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8421 : Bundle := named_bundle% "RealMapCertificates/relations/basis8421.json"
theorem reductionProof8421 : EqualModuloRelations reduction8421.relations reduction8421.input reduction8421.output := by lin_cert using reduction8421.terms
theorem substitutionProof8421 : IsMapEvaluation generatorImages reduction8421.relations [0,0,0,17,17,324] reduction8421.output := by lin_cert using reduction8421.terms
def map_18_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8570 : InImage map_18_192 image8570 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8570 : Bundle := named_bundle% "RealMapCertificates/relations/basis8570.json"
theorem reductionProof8570 : EqualModuloRelations reduction8570.relations reduction8570.input reduction8570.output := by lin_cert using reduction8570.terms
theorem substitutionProof8570 : IsMapEvaluation generatorImages reduction8570.relations [1053] reduction8570.output := by lin_cert using reduction8570.terms
def image8571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8571 : InImage map_18_192 image8571 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8571 : Bundle := named_bundle% "RealMapCertificates/relations/basis8571.json"
theorem reductionProof8571 : EqualModuloRelations reduction8571.relations reduction8571.input reduction8571.output := by lin_cert using reduction8571.terms
theorem substitutionProof8571 : IsMapEvaluation generatorImages reduction8571.relations [0,8,39,324] reduction8571.output := by lin_cert using reduction8571.terms
def image8572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8572 : InImage map_18_192 image8572 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8572 : Bundle := named_bundle% "RealMapCertificates/relations/basis8572.json"
theorem reductionProof8572 : EqualModuloRelations reduction8572.relations reduction8572.input reduction8572.output := by lin_cert using reduction8572.terms
theorem substitutionProof8572 : IsMapEvaluation generatorImages reduction8572.relations [0,0,1017] reduction8572.output := by lin_cert using reduction8572.terms
def image8573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8573 : InImage map_18_192 image8573 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8573 : Bundle := named_bundle% "RealMapCertificates/relations/basis8573.json"
theorem reductionProof8573 : EqualModuloRelations reduction8573.relations reduction8573.input reduction8573.output := by lin_cert using reduction8573.terms
theorem substitutionProof8573 : IsMapEvaluation generatorImages reduction8573.relations [0,0,0,0,59,324] reduction8573.output := by lin_cert using reduction8573.terms
def map_18_193 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8665 : InImage map_18_193 image8665 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8665 : Bundle := named_bundle% "RealMapCertificates/relations/basis8665.json"
theorem reductionProof8665 : EqualModuloRelations reduction8665.relations reduction8665.input reduction8665.output := by lin_cert using reduction8665.terms
theorem substitutionProof8665 : IsMapEvaluation generatorImages reduction8665.relations [1068] reduction8665.output := by lin_cert using reduction8665.terms
def image8666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8666 : InImage map_18_193 image8666 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8666 : Bundle := named_bundle% "RealMapCertificates/relations/basis8666.json"
theorem reductionProof8666 : EqualModuloRelations reduction8666.relations reduction8666.input reduction8666.output := by lin_cert using reduction8666.terms
theorem substitutionProof8666 : IsMapEvaluation generatorImages reduction8666.relations [1067] reduction8666.output := by lin_cert using reduction8666.terms
def image8667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8667 : InImage map_18_193 image8667 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8667 : Bundle := named_bundle% "RealMapCertificates/relations/basis8667.json"
theorem reductionProof8667 : EqualModuloRelations reduction8667.relations reduction8667.input reduction8667.output := by lin_cert using reduction8667.terms
theorem substitutionProof8667 : IsMapEvaluation generatorImages reduction8667.relations [13,75,190] reduction8667.output := by lin_cert using reduction8667.terms
def image8668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8668 : InImage map_18_193 image8668 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8668 : Bundle := named_bundle% "RealMapCertificates/relations/basis8668.json"
theorem reductionProof8668 : EqualModuloRelations reduction8668.relations reduction8668.input reduction8668.output := by lin_cert using reduction8668.terms
theorem substitutionProof8668 : IsMapEvaluation generatorImages reduction8668.relations [13,23,376] reduction8668.output := by lin_cert using reduction8668.terms
def image8669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8669 : InImage map_18_193 image8669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8669 : Bundle := named_bundle% "RealMapCertificates/relations/basis8669.json"
theorem reductionProof8669 : EqualModuloRelations reduction8669.relations reduction8669.input reduction8669.output := by lin_cert using reduction8669.terms
theorem substitutionProof8669 : IsMapEvaluation generatorImages reduction8669.relations [2,1002] reduction8669.output := by lin_cert using reduction8669.terms
def image8670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8670 : InImage map_18_193 image8670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8670 : Bundle := named_bundle% "RealMapCertificates/relations/basis8670.json"
theorem reductionProof8670 : EqualModuloRelations reduction8670.relations reduction8670.input reduction8670.output := by lin_cert using reduction8670.terms
theorem substitutionProof8670 : IsMapEvaluation generatorImages reduction8670.relations [0,0,8,40,324] reduction8670.output := by lin_cert using reduction8670.terms
def map_18_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8809 : InImage map_18_194 image8809 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8809 : Bundle := named_bundle% "RealMapCertificates/relations/basis8809.json"
theorem reductionProof8809 : EqualModuloRelations reduction8809.relations reduction8809.input reduction8809.output := by lin_cert using reduction8809.terms
theorem substitutionProof8809 : IsMapEvaluation generatorImages reduction8809.relations [1086] reduction8809.output := by lin_cert using reduction8809.terms
def image8810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8810 : InImage map_18_194 image8810 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8810 : Bundle := named_bundle% "RealMapCertificates/relations/basis8810.json"
theorem reductionProof8810 : EqualModuloRelations reduction8810.relations reduction8810.input reduction8810.output := by lin_cert using reduction8810.terms
theorem substitutionProof8810 : IsMapEvaluation generatorImages reduction8810.relations [1085] reduction8810.output := by lin_cert using reduction8810.terms
def image8811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8811 : InImage map_18_194 image8811 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8811 : Bundle := named_bundle% "RealMapCertificates/relations/basis8811.json"
theorem reductionProof8811 : EqualModuloRelations reduction8811.relations reduction8811.input reduction8811.output := by lin_cert using reduction8811.terms
theorem substitutionProof8811 : IsMapEvaluation generatorImages reduction8811.relations [67,336] reduction8811.output := by lin_cert using reduction8811.terms
def image8812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8812 : InImage map_18_194 image8812 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8812 : Bundle := named_bundle% "RealMapCertificates/relations/basis8812.json"
theorem reductionProof8812 : EqualModuloRelations reduction8812.relations reduction8812.input reduction8812.output := by lin_cert using reduction8812.terms
theorem substitutionProof8812 : IsMapEvaluation generatorImages reduction8812.relations [8,842] reduction8812.output := by lin_cert using reduction8812.terms
def map_18_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8970 : InImage map_18_195 image8970 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8970 : Bundle := named_bundle% "RealMapCertificates/relations/basis8970.json"
theorem reductionProof8970 : EqualModuloRelations reduction8970.relations reduction8970.input reduction8970.output := by lin_cert using reduction8970.terms
theorem substitutionProof8970 : IsMapEvaluation generatorImages reduction8970.relations [1096] reduction8970.output := by lin_cert using reduction8970.terms
def image8971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8971 : InImage map_18_195 image8971 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8971 : Bundle := named_bundle% "RealMapCertificates/relations/basis8971.json"
theorem reductionProof8971 : EqualModuloRelations reduction8971.relations reduction8971.input reduction8971.output := by lin_cert using reduction8971.terms
theorem substitutionProof8971 : IsMapEvaluation generatorImages reduction8971.relations [0,8,8,16,324] reduction8971.output := by lin_cert using reduction8971.terms
def image8972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8972 : InImage map_18_195 image8972 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8972 : Bundle := named_bundle% "RealMapCertificates/relations/basis8972.json"
theorem reductionProof8972 : EqualModuloRelations reduction8972.relations reduction8972.input reduction8972.output := by lin_cert using reduction8972.terms
theorem substitutionProof8972 : IsMapEvaluation generatorImages reduction8972.relations [0,0,1069] reduction8972.output := by lin_cert using reduction8972.terms
def map_18_196 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9080 : InImage map_18_196 image9080 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9080 : Bundle := named_bundle% "RealMapCertificates/relations/basis9080.json"
theorem reductionProof9080 : EqualModuloRelations reduction9080.relations reduction9080.input reduction9080.output := by lin_cert using reduction9080.terms
theorem substitutionProof9080 : IsMapEvaluation generatorImages reduction9080.relations [1110] reduction9080.output := by lin_cert using reduction9080.terms
def image9081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9081 : InImage map_18_196 image9081 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9081 : Bundle := named_bundle% "RealMapCertificates/relations/basis9081.json"
theorem reductionProof9081 : EqualModuloRelations reduction9081.relations reduction9081.input reduction9081.output := by lin_cert using reduction9081.terms
theorem substitutionProof9081 : IsMapEvaluation generatorImages reduction9081.relations [0,1097] reduction9081.output := by lin_cert using reduction9081.terms
def image9082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9082 : InImage map_18_196 image9082 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9082 : Bundle := named_bundle% "RealMapCertificates/relations/basis9082.json"
theorem reductionProof9082 : EqualModuloRelations reduction9082.relations reduction9082.input reduction9082.output := by lin_cert using reduction9082.terms
theorem substitutionProof9082 : IsMapEvaluation generatorImages reduction9082.relations [0,3,965] reduction9082.output := by lin_cert using reduction9082.terms
def image9083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9083 : InImage map_18_196 image9083 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9083 : Bundle := named_bundle% "RealMapCertificates/relations/basis9083.json"
theorem reductionProof9083 : EqualModuloRelations reduction9083.relations reduction9083.input reduction9083.output := by lin_cert using reduction9083.terms
theorem substitutionProof9083 : IsMapEvaluation generatorImages reduction9083.relations [0,0,8,8,17,324] reduction9083.output := by lin_cert using reduction9083.terms
def image9084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9084 : InImage map_18_196 image9084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9084 : Bundle := named_bundle% "RealMapCertificates/relations/basis9084.json"
theorem reductionProof9084 : EqualModuloRelations reduction9084.relations reduction9084.input reduction9084.output := by lin_cert using reduction9084.terms
theorem substitutionProof9084 : IsMapEvaluation generatorImages reduction9084.relations [0,0,0,0,1055] reduction9084.output := by lin_cert using reduction9084.terms
def map_18_197 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9231 : InImage map_18_197 image9231 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9231 : Bundle := named_bundle% "RealMapCertificates/relations/basis9231.json"
theorem reductionProof9231 : EqualModuloRelations reduction9231.relations reduction9231.input reduction9231.output := by lin_cert using reduction9231.terms
theorem substitutionProof9231 : IsMapEvaluation generatorImages reduction9231.relations [1127] reduction9231.output := by lin_cert using reduction9231.terms
def image9232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9232 : InImage map_18_197 image9232 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9232 : Bundle := named_bundle% "RealMapCertificates/relations/basis9232.json"
theorem reductionProof9232 : EqualModuloRelations reduction9232.relations reduction9232.input reduction9232.output := by lin_cert using reduction9232.terms
theorem substitutionProof9232 : IsMapEvaluation generatorImages reduction9232.relations [75,335] reduction9232.output := by lin_cert using reduction9232.terms
def image9233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9233 : InImage map_18_197 image9233 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9233 : Bundle := named_bundle% "RealMapCertificates/relations/basis9233.json"
theorem reductionProof9233 : EqualModuloRelations reduction9233.relations reduction9233.input reduction9233.output := by lin_cert using reduction9233.terms
theorem substitutionProof9233 : IsMapEvaluation generatorImages reduction9233.relations [2,2,1004] reduction9233.output := by lin_cert using reduction9233.terms
def image9234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9234 : InImage map_18_197 image9234 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9234 : Bundle := named_bundle% "RealMapCertificates/relations/basis9234.json"
theorem reductionProof9234 : EqualModuloRelations reduction9234.relations reduction9234.input reduction9234.output := by lin_cert using reduction9234.terms
theorem substitutionProof9234 : IsMapEvaluation generatorImages reduction9234.relations [0,0,0,1088] reduction9234.output := by lin_cert using reduction9234.terms
def image9235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9235 : InImage map_18_197 image9235 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9235 : Bundle := named_bundle% "RealMapCertificates/relations/basis9235.json"
theorem reductionProof9235 : EqualModuloRelations reduction9235.relations reduction9235.input reduction9235.output := by lin_cert using reduction9235.terms
theorem substitutionProof9235 : IsMapEvaluation generatorImages reduction9235.relations [0,0,0,0,0,1057] reduction9235.output := by lin_cert using reduction9235.terms
def map_18_198 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9418 : InImage map_18_198 image9418 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9418 : Bundle := named_bundle% "RealMapCertificates/relations/basis9418.json"
theorem reductionProof9418 : EqualModuloRelations reduction9418.relations reduction9418.input reduction9418.output := by lin_cert using reduction9418.terms
theorem substitutionProof9418 : IsMapEvaluation generatorImages reduction9418.relations [1155] reduction9418.output := by lin_cert using reduction9418.terms
def image9419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9419 : InImage map_18_198 image9419 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9419 : Bundle := named_bundle% "RealMapCertificates/relations/basis9419.json"
theorem reductionProof9419 : EqualModuloRelations reduction9419.relations reduction9419.input reduction9419.output := by lin_cert using reduction9419.terms
theorem substitutionProof9419 : IsMapEvaluation generatorImages reduction9419.relations [1154] reduction9419.output := by lin_cert using reduction9419.terms
def image9420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9420 : InImage map_18_198 image9420 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9420 : Bundle := named_bundle% "RealMapCertificates/relations/basis9420.json"
theorem reductionProof9420 : EqualModuloRelations reduction9420.relations reduction9420.input reduction9420.output := by lin_cert using reduction9420.terms
theorem substitutionProof9420 : IsMapEvaluation generatorImages reduction9420.relations [3,1016] reduction9420.output := by lin_cert using reduction9420.terms
def image9421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9421 : InImage map_18_198 image9421 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9421 : Bundle := named_bundle% "RealMapCertificates/relations/basis9421.json"
theorem reductionProof9421 : EqualModuloRelations reduction9421.relations reduction9421.input reduction9421.output := by lin_cert using reduction9421.terms
theorem substitutionProof9421 : IsMapEvaluation generatorImages reduction9421.relations [3,1015] reduction9421.output := by lin_cert using reduction9421.terms
def image9422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9422 : InImage map_18_198 image9422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9422 : Bundle := named_bundle% "RealMapCertificates/relations/basis9422.json"
theorem reductionProof9422 : EqualModuloRelations reduction9422.relations reduction9422.input reduction9422.output := by lin_cert using reduction9422.terms
theorem substitutionProof9422 : IsMapEvaluation generatorImages reduction9422.relations [0,0,0,0,0,0,0,64,324] reduction9422.output := by lin_cert using reduction9422.terms
def map_18_199 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image9552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9552 : InImage map_18_199 image9552 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction9552 : Bundle := named_bundle% "RealMapCertificates/relations/basis9552.json"
theorem reductionProof9552 : EqualModuloRelations reduction9552.relations reduction9552.input reduction9552.output := by lin_cert using reduction9552.terms
theorem substitutionProof9552 : IsMapEvaluation generatorImages reduction9552.relations [1175] reduction9552.output := by lin_cert using reduction9552.terms
def image9553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9553 : InImage map_18_199 image9553 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction9553 : Bundle := named_bundle% "RealMapCertificates/relations/basis9553.json"
theorem reductionProof9553 : EqualModuloRelations reduction9553.relations reduction9553.input reduction9553.output := by lin_cert using reduction9553.terms
theorem substitutionProof9553 : IsMapEvaluation generatorImages reduction9553.relations [9,867] reduction9553.output := by lin_cert using reduction9553.terms
def image9554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9554 : InImage map_18_199 image9554 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction9554 : Bundle := named_bundle% "RealMapCertificates/relations/basis9554.json"
theorem reductionProof9554 : EqualModuloRelations reduction9554.relations reduction9554.input reduction9554.output := by lin_cert using reduction9554.terms
theorem substitutionProof9554 : IsMapEvaluation generatorImages reduction9554.relations [1,1128] reduction9554.output := by lin_cert using reduction9554.terms
def image9555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9555 : InImage map_18_199 image9555 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction9555 : Bundle := named_bundle% "RealMapCertificates/relations/basis9555.json"
theorem reductionProof9555 : EqualModuloRelations reduction9555.relations reduction9555.input reduction9555.output := by lin_cert using reduction9555.terms
theorem substitutionProof9555 : IsMapEvaluation generatorImages reduction9555.relations [1,76,335] reduction9555.output := by lin_cert using reduction9555.terms
def image9556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9556 : InImage map_18_199 image9556 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction9556 : Bundle := named_bundle% "RealMapCertificates/relations/basis9556.json"
theorem reductionProof9556 : EqualModuloRelations reduction9556.relations reduction9556.input reduction9556.output := by lin_cert using reduction9556.terms
theorem substitutionProof9556 : IsMapEvaluation generatorImages reduction9556.relations [0,1156] reduction9556.output := by lin_cert using reduction9556.terms
def image9557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9557 : InImage map_18_199 image9557 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction9557 : Bundle := named_bundle% "RealMapCertificates/relations/basis9557.json"
theorem reductionProof9557 : EqualModuloRelations reduction9557.relations reduction9557.input reduction9557.output := by lin_cert using reduction9557.terms
theorem substitutionProof9557 : IsMapEvaluation generatorImages reduction9557.relations [0,3,1017] reduction9557.output := by lin_cert using reduction9557.terms
def image9558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9558 : InImage map_18_199 image9558 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction9558 : Bundle := named_bundle% "RealMapCertificates/relations/basis9558.json"
theorem reductionProof9558 : EqualModuloRelations reduction9558.relations reduction9558.input reduction9558.output := by lin_cert using reduction9558.terms
theorem substitutionProof9558 : IsMapEvaluation generatorImages reduction9558.relations [0,0,1129] reduction9558.output := by lin_cert using reduction9558.terms
def image9559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9559 : InImage map_18_199 image9559 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction9559 : Bundle := named_bundle% "RealMapCertificates/relations/basis9559.json"
theorem reductionProof9559 : EqualModuloRelations reduction9559.relations reduction9559.input reduction9559.output := by lin_cert using reduction9559.terms
theorem substitutionProof9559 : IsMapEvaluation generatorImages reduction9559.relations [0,0,0,0,0,0,0,66,324] reduction9559.output := by lin_cert using reduction9559.terms
def map_18_200 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9707 : InImage map_18_200 image9707 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9707 : Bundle := named_bundle% "RealMapCertificates/relations/basis9707.json"
theorem reductionProof9707 : EqualModuloRelations reduction9707.relations reduction9707.input reduction9707.output := by lin_cert using reduction9707.terms
theorem substitutionProof9707 : IsMapEvaluation generatorImages reduction9707.relations [88,324] reduction9707.output := by lin_cert using reduction9707.terms
def image9708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9708 : InImage map_18_200 image9708 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9708 : Bundle := named_bundle% "RealMapCertificates/relations/basis9708.json"
theorem reductionProof9708 : EqualModuloRelations reduction9708.relations reduction9708.input reduction9708.output := by lin_cert using reduction9708.terms
theorem substitutionProof9708 : IsMapEvaluation generatorImages reduction9708.relations [7,932] reduction9708.output := by lin_cert using reduction9708.terms
def image9709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9709 : InImage map_18_200 image9709 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9709 : Bundle := named_bundle% "RealMapCertificates/relations/basis9709.json"
theorem reductionProof9709 : EqualModuloRelations reduction9709.relations reduction9709.input reduction9709.output := by lin_cert using reduction9709.terms
theorem substitutionProof9709 : IsMapEvaluation generatorImages reduction9709.relations [1,1156] reduction9709.output := by lin_cert using reduction9709.terms
def map_18_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9898 : InImage map_18_201 image9898 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9898 : Bundle := named_bundle% "RealMapCertificates/relations/basis9898.json"
theorem reductionProof9898 : EqualModuloRelations reduction9898.relations reduction9898.input reduction9898.output := by lin_cert using reduction9898.terms
theorem substitutionProof9898 : IsMapEvaluation generatorImages reduction9898.relations [1207] reduction9898.output := by lin_cert using reduction9898.terms
def image9899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9899 : InImage map_18_201 image9899 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9899 : Bundle := named_bundle% "RealMapCertificates/relations/basis9899.json"
theorem reductionProof9899 : EqualModuloRelations reduction9899.relations reduction9899.input reduction9899.output := by lin_cert using reduction9899.terms
theorem substitutionProof9899 : IsMapEvaluation generatorImages reduction9899.relations [1206] reduction9899.output := by lin_cert using reduction9899.terms
def image9900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9900 : InImage map_18_201 image9900 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9900 : Bundle := named_bundle% "RealMapCertificates/relations/basis9900.json"
theorem reductionProof9900 : EqualModuloRelations reduction9900.relations reduction9900.input reduction9900.output := by lin_cert using reduction9900.terms
theorem substitutionProof9900 : IsMapEvaluation generatorImages reduction9900.relations [0,1185] reduction9900.output := by lin_cert using reduction9900.terms
def image9901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9901 : InImage map_18_201 image9901 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9901 : Bundle := named_bundle% "RealMapCertificates/relations/basis9901.json"
theorem reductionProof9901 : EqualModuloRelations reduction9901.relations reduction9901.input reduction9901.output := by lin_cert using reduction9901.terms
theorem substitutionProof9901 : IsMapEvaluation generatorImages reduction9901.relations [0,1184] reduction9901.output := by lin_cert using reduction9901.terms
def map_18_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10028 : InImage map_18_202 image10028 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10028 : Bundle := named_bundle% "RealMapCertificates/relations/basis10028.json"
theorem reductionProof10028 : EqualModuloRelations reduction10028.relations reduction10028.input reduction10028.output := by lin_cert using reduction10028.terms
theorem substitutionProof10028 : IsMapEvaluation generatorImages reduction10028.relations [1222] reduction10028.output := by lin_cert using reduction10028.terms
def image10029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10029 : InImage map_18_202 image10029 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10029 : Bundle := named_bundle% "RealMapCertificates/relations/basis10029.json"
theorem reductionProof10029 : EqualModuloRelations reduction10029.relations reduction10029.input reduction10029.output := by lin_cert using reduction10029.terms
theorem substitutionProof10029 : IsMapEvaluation generatorImages reduction10029.relations [13,867] reduction10029.output := by lin_cert using reduction10029.terms
def image10030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10030 : InImage map_18_202 image10030 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10030 : Bundle := named_bundle% "RealMapCertificates/relations/basis10030.json"
theorem reductionProof10030 : EqualModuloRelations reduction10030.relations reduction10030.input reduction10030.output := by lin_cert using reduction10030.terms
theorem substitutionProof10030 : IsMapEvaluation generatorImages reduction10030.relations [0,1209] reduction10030.output := by lin_cert using reduction10030.terms
def image10031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10031 : InImage map_18_202 image10031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10031 : Bundle := named_bundle% "RealMapCertificates/relations/basis10031.json"
theorem reductionProof10031 : EqualModuloRelations reduction10031.relations reduction10031.input reduction10031.output := by lin_cert using reduction10031.terms
theorem substitutionProof10031 : IsMapEvaluation generatorImages reduction10031.relations [0,1208] reduction10031.output := by lin_cert using reduction10031.terms
def image10032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10032 : InImage map_18_202 image10032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10032 : Bundle := named_bundle% "RealMapCertificates/relations/basis10032.json"
theorem reductionProof10032 : EqualModuloRelations reduction10032.relations reduction10032.input reduction10032.output := by lin_cert using reduction10032.terms
theorem substitutionProof10032 : IsMapEvaluation generatorImages reduction10032.relations [0,0,1186] reduction10032.output := by lin_cert using reduction10032.terms
def map_18_203 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10199 : InImage map_18_203 image10199 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10199 : Bundle := named_bundle% "RealMapCertificates/relations/basis10199.json"
theorem reductionProof10199 : EqualModuloRelations reduction10199.relations reduction10199.input reduction10199.output := by lin_cert using reduction10199.terms
theorem substitutionProof10199 : IsMapEvaluation generatorImages reduction10199.relations [100,324] reduction10199.output := by lin_cert using reduction10199.terms
def image10200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10200 : InImage map_18_203 image10200 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10200 : Bundle := named_bundle% "RealMapCertificates/relations/basis10200.json"
theorem reductionProof10200 : EqualModuloRelations reduction10200.relations reduction10200.input reduction10200.output := by lin_cert using reduction10200.terms
theorem substitutionProof10200 : IsMapEvaluation generatorImages reduction10200.relations [76,417] reduction10200.output := by lin_cert using reduction10200.terms
def image10201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10201 : InImage map_18_203 image10201 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10201 : Bundle := named_bundle% "RealMapCertificates/relations/basis10201.json"
theorem reductionProof10201 : EqualModuloRelations reduction10201.relations reduction10201.input reduction10201.output := by lin_cert using reduction10201.terms
theorem substitutionProof10201 : IsMapEvaluation generatorImages reduction10201.relations [3,1097] reduction10201.output := by lin_cert using reduction10201.terms
def image10202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10202 : InImage map_18_203 image10202 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10202 : Bundle := named_bundle% "RealMapCertificates/relations/basis10202.json"
theorem reductionProof10202 : EqualModuloRelations reduction10202.relations reduction10202.input reduction10202.output := by lin_cert using reduction10202.terms
theorem substitutionProof10202 : IsMapEvaluation generatorImages reduction10202.relations [3,3,965] reduction10202.output := by lin_cert using reduction10202.terms
def image10203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10203 : InImage map_18_203 image10203 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10203 : Bundle := named_bundle% "RealMapCertificates/relations/basis10203.json"
theorem reductionProof10203 : EqualModuloRelations reduction10203.relations reduction10203.input reduction10203.output := by lin_cert using reduction10203.terms
theorem substitutionProof10203 : IsMapEvaluation generatorImages reduction10203.relations [1,1208] reduction10203.output := by lin_cert using reduction10203.terms
def image10204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10204 : InImage map_18_203 image10204 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10204 : Bundle := named_bundle% "RealMapCertificates/relations/basis10204.json"
theorem reductionProof10204 : EqualModuloRelations reduction10204.relations reduction10204.input reduction10204.output := by lin_cert using reduction10204.terms
theorem substitutionProof10204 : IsMapEvaluation generatorImages reduction10204.relations [0,1223] reduction10204.output := by lin_cert using reduction10204.terms
def map_18_204 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10403 : InImage map_18_204 image10403 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10403 : Bundle := named_bundle% "RealMapCertificates/relations/basis10403.json"
theorem reductionProof10403 : EqualModuloRelations reduction10403.relations reduction10403.input reduction10403.output := by lin_cert using reduction10403.terms
theorem substitutionProof10403 : IsMapEvaluation generatorImages reduction10403.relations [1262] reduction10403.output := by lin_cert using reduction10403.terms
def image10404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10404 : InImage map_18_204 image10404 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10404 : Bundle := named_bundle% "RealMapCertificates/relations/basis10404.json"
theorem reductionProof10404 : EqualModuloRelations reduction10404.relations reduction10404.input reduction10404.output := by lin_cert using reduction10404.terms
theorem substitutionProof10404 : IsMapEvaluation generatorImages reduction10404.relations [1261] reduction10404.output := by lin_cert using reduction10404.terms
def image10405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10405 : InImage map_18_204 image10405 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10405 : Bundle := named_bundle% "RealMapCertificates/relations/basis10405.json"
theorem reductionProof10405 : EqualModuloRelations reduction10405.relations reduction10405.input reduction10405.output := by lin_cert using reduction10405.terms
theorem substitutionProof10405 : IsMapEvaluation generatorImages reduction10405.relations [189,190] reduction10405.output := by lin_cert using reduction10405.terms
def image10406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10406 : InImage map_18_204 image10406 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10406 : Bundle := named_bundle% "RealMapCertificates/relations/basis10406.json"
theorem reductionProof10406 : EqualModuloRelations reduction10406.relations reduction10406.input reduction10406.output := by lin_cert using reduction10406.terms
theorem substitutionProof10406 : IsMapEvaluation generatorImages reduction10406.relations [0,1247] reduction10406.output := by lin_cert using reduction10406.terms
def image10407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10407 : InImage map_18_204 image10407 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10407 : Bundle := named_bundle% "RealMapCertificates/relations/basis10407.json"
theorem reductionProof10407 : EqualModuloRelations reduction10407.relations reduction10407.input reduction10407.output := by lin_cert using reduction10407.terms
theorem substitutionProof10407 : IsMapEvaluation generatorImages reduction10407.relations [0,7,965] reduction10407.output := by lin_cert using reduction10407.terms
def image10408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10408 : InImage map_18_204 image10408 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10408 : Bundle := named_bundle% "RealMapCertificates/relations/basis10408.json"
theorem reductionProof10408 : EqualModuloRelations reduction10408.relations reduction10408.input reduction10408.output := by lin_cert using reduction10408.terms
theorem substitutionProof10408 : IsMapEvaluation generatorImages reduction10408.relations [0,0,1224] reduction10408.output := by lin_cert using reduction10408.terms
def image10409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10409 : InImage map_18_204 image10409 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10409 : Bundle := named_bundle% "RealMapCertificates/relations/basis10409.json"
theorem reductionProof10409 : EqualModuloRelations reduction10409.relations reduction10409.input reduction10409.output := by lin_cert using reduction10409.terms
theorem substitutionProof10409 : IsMapEvaluation generatorImages reduction10409.relations [0,0,3,1088] reduction10409.output := by lin_cert using reduction10409.terms
def map_18_205 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10549 : InImage map_18_205 image10549 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10549 : Bundle := named_bundle% "RealMapCertificates/relations/basis10549.json"
theorem reductionProof10549 : EqualModuloRelations reduction10549.relations reduction10549.input reduction10549.output := by lin_cert using reduction10549.terms
theorem substitutionProof10549 : IsMapEvaluation generatorImages reduction10549.relations [3,76,335] reduction10549.output := by lin_cert using reduction10549.terms
def image10550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10550 : InImage map_18_205 image10550 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10550 : Bundle := named_bundle% "RealMapCertificates/relations/basis10550.json"
theorem reductionProof10550 : EqualModuloRelations reduction10550.relations reduction10550.input reduction10550.output := by lin_cert using reduction10550.terms
theorem substitutionProof10550 : IsMapEvaluation generatorImages reduction10550.relations [1,1247] reduction10550.output := by lin_cert using reduction10550.terms
def image10551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10551 : InImage map_18_205 image10551 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10551 : Bundle := named_bundle% "RealMapCertificates/relations/basis10551.json"
theorem reductionProof10551 : EqualModuloRelations reduction10551.relations reduction10551.input reduction10551.output := by lin_cert using reduction10551.terms
theorem substitutionProof10551 : IsMapEvaluation generatorImages reduction10551.relations [1,1246] reduction10551.output := by lin_cert using reduction10551.terms
def image10552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10552 : InImage map_18_205 image10552 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10552 : Bundle := named_bundle% "RealMapCertificates/relations/basis10552.json"
theorem reductionProof10552 : EqualModuloRelations reduction10552.relations reduction10552.input reduction10552.output := by lin_cert using reduction10552.terms
theorem substitutionProof10552 : IsMapEvaluation generatorImages reduction10552.relations [0,1265] reduction10552.output := by lin_cert using reduction10552.terms
def image10553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10553 : InImage map_18_205 image10553 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10553 : Bundle := named_bundle% "RealMapCertificates/relations/basis10553.json"
theorem reductionProof10553 : EqualModuloRelations reduction10553.relations reduction10553.input reduction10553.output := by lin_cert using reduction10553.terms
theorem substitutionProof10553 : IsMapEvaluation generatorImages reduction10553.relations [0,1263] reduction10553.output := by lin_cert using reduction10553.terms
def map_18_206 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image10730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10730 : InImage map_18_206 image10730 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction10730 : Bundle := named_bundle% "RealMapCertificates/relations/basis10730.json"
theorem reductionProof10730 : EqualModuloRelations reduction10730.relations reduction10730.input reduction10730.output := by lin_cert using reduction10730.terms
theorem substitutionProof10730 : IsMapEvaluation generatorImages reduction10730.relations [1306] reduction10730.output := by lin_cert using reduction10730.terms
def image10731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10731 : InImage map_18_206 image10731 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction10731 : Bundle := named_bundle% "RealMapCertificates/relations/basis10731.json"
theorem reductionProof10731 : EqualModuloRelations reduction10731.relations reduction10731.input reduction10731.output := by lin_cert using reduction10731.terms
theorem substitutionProof10731 : IsMapEvaluation generatorImages reduction10731.relations [8,60,324] reduction10731.output := by lin_cert using reduction10731.terms
def image10732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10732 : InImage map_18_206 image10732 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction10732 : Bundle := named_bundle% "RealMapCertificates/relations/basis10732.json"
theorem reductionProof10732 : EqualModuloRelations reduction10732.relations reduction10732.input reduction10732.output := by lin_cert using reduction10732.terms
theorem substitutionProof10732 : IsMapEvaluation generatorImages reduction10732.relations [3,1156] reduction10732.output := by lin_cert using reduction10732.terms
def image10733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10733 : InImage map_18_206 image10733 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction10733 : Bundle := named_bundle% "RealMapCertificates/relations/basis10733.json"
theorem reductionProof10733 : EqualModuloRelations reduction10733.relations reduction10733.input reduction10733.output := by lin_cert using reduction10733.terms
theorem substitutionProof10733 : IsMapEvaluation generatorImages reduction10733.relations [2,1223] reduction10733.output := by lin_cert using reduction10733.terms
def image10734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10734 : InImage map_18_206 image10734 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction10734 : Bundle := named_bundle% "RealMapCertificates/relations/basis10734.json"
theorem reductionProof10734 : EqualModuloRelations reduction10734.relations reduction10734.input reduction10734.output := by lin_cert using reduction10734.terms
theorem substitutionProof10734 : IsMapEvaluation generatorImages reduction10734.relations [1,1264] reduction10734.output := by lin_cert using reduction10734.terms
def image10735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10735 : InImage map_18_206 image10735 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction10735 : Bundle := named_bundle% "RealMapCertificates/relations/basis10735.json"
theorem reductionProof10735 : EqualModuloRelations reduction10735.relations reduction10735.input reduction10735.output := by lin_cert using reduction10735.terms
theorem substitutionProof10735 : IsMapEvaluation generatorImages reduction10735.relations [1,1263] reduction10735.output := by lin_cert using reduction10735.terms
def image10736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10736 : InImage map_18_206 image10736 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction10736 : Bundle := named_bundle% "RealMapCertificates/relations/basis10736.json"
theorem reductionProof10736 : EqualModuloRelations reduction10736.relations reduction10736.input reduction10736.output := by lin_cert using reduction10736.terms
theorem substitutionProof10736 : IsMapEvaluation generatorImages reduction10736.relations [0,1292] reduction10736.output := by lin_cert using reduction10736.terms
def image10737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10737 : InImage map_18_206 image10737 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction10737 : Bundle := named_bundle% "RealMapCertificates/relations/basis10737.json"
theorem reductionProof10737 : EqualModuloRelations reduction10737.relations reduction10737.input reduction10737.output := by lin_cert using reduction10737.terms
theorem substitutionProof10737 : IsMapEvaluation generatorImages reduction10737.relations [0,107,333] reduction10737.output := by lin_cert using reduction10737.terms
def image10738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10738 : InImage map_18_206 image10738 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction10738 : Bundle := named_bundle% "RealMapCertificates/relations/basis10738.json"
theorem reductionProof10738 : EqualModuloRelations reduction10738.relations reduction10738.input reduction10738.output := by lin_cert using reduction10738.terms
theorem substitutionProof10738 : IsMapEvaluation generatorImages reduction10738.relations [0,3,1129] reduction10738.output := by lin_cert using reduction10738.terms
def image10739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10739 : InImage map_18_206 image10739 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction10739 : Bundle := named_bundle% "RealMapCertificates/relations/basis10739.json"
theorem reductionProof10739 : EqualModuloRelations reduction10739.relations reduction10739.input reduction10739.output := by lin_cert using reduction10739.terms
theorem substitutionProof10739 : IsMapEvaluation generatorImages reduction10739.relations [0,0,1267] reduction10739.output := by lin_cert using reduction10739.terms
def map_18_207 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10945 : InImage map_18_207 image10945 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10945 : Bundle := named_bundle% "RealMapCertificates/relations/basis10945.json"
theorem reductionProof10945 : EqualModuloRelations reduction10945.relations reduction10945.input reduction10945.output := by lin_cert using reduction10945.terms
theorem substitutionProof10945 : IsMapEvaluation generatorImages reduction10945.relations [1322] reduction10945.output := by lin_cert using reduction10945.terms
def image10946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10946 : InImage map_18_207 image10946 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10946 : Bundle := named_bundle% "RealMapCertificates/relations/basis10946.json"
theorem reductionProof10946 : EqualModuloRelations reduction10946.relations reduction10946.input reduction10946.output := by lin_cert using reduction10946.terms
theorem substitutionProof10946 : IsMapEvaluation generatorImages reduction10946.relations [1321] reduction10946.output := by lin_cert using reduction10946.terms
def image10947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10947 : InImage map_18_207 image10947 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10947 : Bundle := named_bundle% "RealMapCertificates/relations/basis10947.json"
theorem reductionProof10947 : EqualModuloRelations reduction10947.relations reduction10947.input reduction10947.output := by lin_cert using reduction10947.terms
theorem substitutionProof10947 : IsMapEvaluation generatorImages reduction10947.relations [1320] reduction10947.output := by lin_cert using reduction10947.terms
def image10948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10948 : InImage map_18_207 image10948 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10948 : Bundle := named_bundle% "RealMapCertificates/relations/basis10948.json"
theorem reductionProof10948 : EqualModuloRelations reduction10948.relations reduction10948.input reduction10948.output := by lin_cert using reduction10948.terms
theorem substitutionProof10948 : IsMapEvaluation generatorImages reduction10948.relations [0,7,1017] reduction10948.output := by lin_cert using reduction10948.terms
def image10949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10949 : InImage map_18_207 image10949 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10949 : Bundle := named_bundle% "RealMapCertificates/relations/basis10949.json"
theorem reductionProof10949 : EqualModuloRelations reduction10949.relations reduction10949.input reduction10949.output := by lin_cert using reduction10949.terms
theorem substitutionProof10949 : IsMapEvaluation generatorImages reduction10949.relations [0,3,1157] reduction10949.output := by lin_cert using reduction10949.terms
def image10950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10950 : InImage map_18_207 image10950 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10950 : Bundle := named_bundle% "RealMapCertificates/relations/basis10950.json"
theorem reductionProof10950 : EqualModuloRelations reduction10950.relations reduction10950.input reduction10950.output := by lin_cert using reduction10950.terms
theorem substitutionProof10950 : IsMapEvaluation generatorImages reduction10950.relations [0,0,1293] reduction10950.output := by lin_cert using reduction10950.terms
def image10951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10951 : InImage map_18_207 image10951 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10951 : Bundle := named_bundle% "RealMapCertificates/relations/basis10951.json"
theorem reductionProof10951 : EqualModuloRelations reduction10951.relations reduction10951.input reduction10951.output := by lin_cert using reduction10951.terms
theorem substitutionProof10951 : IsMapEvaluation generatorImages reduction10951.relations [0,0,0,0,0,0,0,90,324] reduction10951.output := by lin_cert using reduction10951.terms
def map_18_208 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11077 : InImage map_18_208 image11077 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11077 : Bundle := named_bundle% "RealMapCertificates/relations/basis11077.json"
theorem reductionProof11077 : EqualModuloRelations reduction11077.relations reduction11077.input reduction11077.output := by lin_cert using reduction11077.terms
theorem substitutionProof11077 : IsMapEvaluation generatorImages reduction11077.relations [0,1323] reduction11077.output := by lin_cert using reduction11077.terms
def image11078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11078 : InImage map_18_208 image11078 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11078 : Bundle := named_bundle% "RealMapCertificates/relations/basis11078.json"
theorem reductionProof11078 : EqualModuloRelations reduction11078.relations reduction11078.input reduction11078.output := by lin_cert using reduction11078.terms
theorem substitutionProof11078 : IsMapEvaluation generatorImages reduction11078.relations [0,7,1046] reduction11078.output := by lin_cert using reduction11078.terms
def image11079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11079 : InImage map_18_208 image11079 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11079 : Bundle := named_bundle% "RealMapCertificates/relations/basis11079.json"
theorem reductionProof11079 : EqualModuloRelations reduction11079.relations reduction11079.input reduction11079.output := by lin_cert using reduction11079.terms
theorem substitutionProof11079 : IsMapEvaluation generatorImages reduction11079.relations [0,0,0,1295] reduction11079.output := by lin_cert using reduction11079.terms
def map_18_209 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11260 : InImage map_18_209 image11260 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11260 : Bundle := named_bundle% "RealMapCertificates/relations/basis11260.json"
theorem reductionProof11260 : EqualModuloRelations reduction11260.relations reduction11260.input reduction11260.output := by lin_cert using reduction11260.terms
theorem substitutionProof11260 : IsMapEvaluation generatorImages reduction11260.relations [13,949] reduction11260.output := by lin_cert using reduction11260.terms
def image11261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11261 : InImage map_18_209 image11261 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11261 : Bundle := named_bundle% "RealMapCertificates/relations/basis11261.json"
theorem reductionProof11261 : EqualModuloRelations reduction11261.relations reduction11261.input reduction11261.output := by lin_cert using reduction11261.terms
theorem substitutionProof11261 : IsMapEvaluation generatorImages reduction11261.relations [8,63,324] reduction11261.output := by lin_cert using reduction11261.terms
def image11262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11262 : InImage map_18_209 image11262 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11262 : Bundle := named_bundle% "RealMapCertificates/relations/basis11262.json"
theorem reductionProof11262 : EqualModuloRelations reduction11262.relations reduction11262.input reduction11262.output := by lin_cert using reduction11262.terms
theorem substitutionProof11262 : IsMapEvaluation generatorImages reduction11262.relations [1,1323] reduction11262.output := by lin_cert using reduction11262.terms
def image11263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11263 : InImage map_18_209 image11263 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11263 : Bundle := named_bundle% "RealMapCertificates/relations/basis11263.json"
theorem reductionProof11263 : EqualModuloRelations reduction11263.relations reduction11263.input reduction11263.output := by lin_cert using reduction11263.terms
theorem substitutionProof11263 : IsMapEvaluation generatorImages reduction11263.relations [1,7,1046] reduction11263.output := by lin_cert using reduction11263.terms
def image11264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11264 : InImage map_18_209 image11264 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11264 : Bundle := named_bundle% "RealMapCertificates/relations/basis11264.json"
theorem reductionProof11264 : EqualModuloRelations reduction11264.relations reduction11264.input reduction11264.output := by lin_cert using reduction11264.terms
theorem substitutionProof11264 : IsMapEvaluation generatorImages reduction11264.relations [0,3,1186] reduction11264.output := by lin_cert using reduction11264.terms
def image11265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11265 : InImage map_18_209 image11265 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11265 : Bundle := named_bundle% "RealMapCertificates/relations/basis11265.json"
theorem reductionProof11265 : EqualModuloRelations reduction11265.relations reduction11265.input reduction11265.output := by lin_cert using reduction11265.terms
theorem substitutionProof11265 : IsMapEvaluation generatorImages reduction11265.relations [0,0,0,112,324] reduction11265.output := by lin_cert using reduction11265.terms
end RealMapCertificates
