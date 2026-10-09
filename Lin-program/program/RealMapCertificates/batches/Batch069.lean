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
  | 17 => [[4,7]]
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 75 => []
  | 80 => []
  | 107 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 174 => []
  | 190 => []
  | 288 => []
  | 324 => []
  | 333 => []
  | 376 => []
  | 543 => []
  | 544 => []
  | 674 => []
  | 719 => []
  | 965 => []
  | 988 => []
  | 990 => []
  | 1057 => []
  | 1088 => []
  | 1089 => []
  | 1128 => []
  | 1156 => []
  | 1157 => []
  | 1185 => []
  | 1186 => []
  | 1208 => []
  | 1223 => []
  | 1224 => []
  | 1246 => []
  | 1267 => []
  | 1292 => []
  | 1295 => []
  | 1307 => []
  | 1323 => []
  | 1326 => []
  | 1339 => []
  | 1353 => []
  | 1372 => []
  | 1377 => []
  | 1387 => []
  | 1446 => []
  | 1447 => []
  | 1448 => []
  | 1449 => []
  | 1455 => []
  | 1494 => []
  | 1508 => []
  | 1509 => []
  | 1523 => []
  | 1548 => []
  | 1560 => []
  | 1561 => []
  | 1562 => []
  | 1580 => []
  | 1602 => []
  | 1615 => []
  | 1616 => []
  | 1617 => []
  | 1628 => []
  | 1629 => []
  | 1645 => []
  | 1646 => []
  | 1647 => []
  | 1648 => []
  | 1670 => []
  | 1671 => []
  | 1672 => []
  | 1673 => []
  | 1699 => []
  | 1700 => []
  | 1701 => []
  | 1702 => []
  | 1703 => []
  | 1704 => []
  | 1728 => []
  | 1743 => []
  | _ => []
def map_18_210 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11455 : InImage map_18_210 image11455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11455 : Bundle := named_bundle% "RealMapCertificates/relations/basis11455.json"
theorem reductionProof11455 : EqualModuloRelations reduction11455.relations reduction11455.input reduction11455.output := by lin_cert using reduction11455.terms
theorem substitutionProof11455 : IsMapEvaluation generatorImages reduction11455.relations [1372] reduction11455.output := by lin_cert using reduction11455.terms
def image11456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11456 : InImage map_18_210 image11456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11456 : Bundle := named_bundle% "RealMapCertificates/relations/basis11456.json"
theorem reductionProof11456 : EqualModuloRelations reduction11456.relations reduction11456.input reduction11456.output := by lin_cert using reduction11456.terms
theorem substitutionProof11456 : IsMapEvaluation generatorImages reduction11456.relations [3,1223] reduction11456.output := by lin_cert using reduction11456.terms
def image11457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11457 : InImage map_18_210 image11457 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11457 : Bundle := named_bundle% "RealMapCertificates/relations/basis11457.json"
theorem reductionProof11457 : EqualModuloRelations reduction11457.relations reduction11457.input reduction11457.output := by lin_cert using reduction11457.terms
theorem substitutionProof11457 : IsMapEvaluation generatorImages reduction11457.relations [2,1307] reduction11457.output := by lin_cert using reduction11457.terms
def image11458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11458 : InImage map_18_210 image11458 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11458 : Bundle := named_bundle% "RealMapCertificates/relations/basis11458.json"
theorem reductionProof11458 : EqualModuloRelations reduction11458.relations reduction11458.input reduction11458.output := by lin_cert using reduction11458.terms
theorem substitutionProof11458 : IsMapEvaluation generatorImages reduction11458.relations [0,0,1339] reduction11458.output := by lin_cert using reduction11458.terms
def image11459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11459 : InImage map_18_210 image11459 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11459 : Bundle := named_bundle% "RealMapCertificates/relations/basis11459.json"
theorem reductionProof11459 : EqualModuloRelations reduction11459.relations reduction11459.input reduction11459.output := by lin_cert using reduction11459.terms
theorem substitutionProof11459 : IsMapEvaluation generatorImages reduction11459.relations [0,0,0,1326] reduction11459.output := by lin_cert using reduction11459.terms
def map_18_211 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11613 : InImage map_18_211 image11613 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11613 : Bundle := named_bundle% "RealMapCertificates/relations/basis11613.json"
theorem reductionProof11613 : EqualModuloRelations reduction11613.relations reduction11613.input reduction11613.output := by lin_cert using reduction11613.terms
theorem substitutionProof11613 : IsMapEvaluation generatorImages reduction11613.relations [3,1246] reduction11613.output := by lin_cert using reduction11613.terms
def image11614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11614 : InImage map_18_211 image11614 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11614 : Bundle := named_bundle% "RealMapCertificates/relations/basis11614.json"
theorem reductionProof11614 : EqualModuloRelations reduction11614.relations reduction11614.input reduction11614.output := by lin_cert using reduction11614.terms
theorem substitutionProof11614 : IsMapEvaluation generatorImages reduction11614.relations [2,1323] reduction11614.output := by lin_cert using reduction11614.terms
def image11615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11615 : InImage map_18_211 image11615 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11615 : Bundle := named_bundle% "RealMapCertificates/relations/basis11615.json"
theorem reductionProof11615 : EqualModuloRelations reduction11615.relations reduction11615.input reduction11615.output := by lin_cert using reduction11615.terms
theorem substitutionProof11615 : IsMapEvaluation generatorImages reduction11615.relations [0,8,1057] reduction11615.output := by lin_cert using reduction11615.terms
def image11616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11616 : InImage map_18_211 image11616 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11616 : Bundle := named_bundle% "RealMapCertificates/relations/basis11616.json"
theorem reductionProof11616 : EqualModuloRelations reduction11616.relations reduction11616.input reduction11616.output := by lin_cert using reduction11616.terms
theorem substitutionProof11616 : IsMapEvaluation generatorImages reduction11616.relations [0,3,1224] reduction11616.output := by lin_cert using reduction11616.terms
def image11617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11617 : InImage map_18_211 image11617 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11617 : Bundle := named_bundle% "RealMapCertificates/relations/basis11617.json"
theorem reductionProof11617 : EqualModuloRelations reduction11617.relations reduction11617.input reduction11617.output := by lin_cert using reduction11617.terms
theorem substitutionProof11617 : IsMapEvaluation generatorImages reduction11617.relations [0,3,3,1088] reduction11617.output := by lin_cert using reduction11617.terms
def map_18_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11811 : InImage map_18_212 image11811 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11811 : Bundle := named_bundle% "RealMapCertificates/relations/basis11811.json"
theorem reductionProof11811 : EqualModuloRelations reduction11811.relations reduction11811.input reduction11811.output := by lin_cert using reduction11811.terms
theorem substitutionProof11811 : IsMapEvaluation generatorImages reduction11811.relations [67,543] reduction11811.output := by lin_cert using reduction11811.terms
def image11812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11812 : InImage map_18_212 image11812 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11812 : Bundle := named_bundle% "RealMapCertificates/relations/basis11812.json"
theorem reductionProof11812 : EqualModuloRelations reduction11812.relations reduction11812.input reduction11812.output := by lin_cert using reduction11812.terms
theorem substitutionProof11812 : IsMapEvaluation generatorImages reduction11812.relations [13,990] reduction11812.output := by lin_cert using reduction11812.terms
def image11813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11813 : InImage map_18_212 image11813 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11813 : Bundle := named_bundle% "RealMapCertificates/relations/basis11813.json"
theorem reductionProof11813 : EqualModuloRelations reduction11813.relations reduction11813.input reduction11813.output := by lin_cert using reduction11813.terms
theorem substitutionProof11813 : IsMapEvaluation generatorImages reduction11813.relations [8,8,42,324] reduction11813.output := by lin_cert using reduction11813.terms
def image11814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11814 : InImage map_18_212 image11814 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11814 : Bundle := named_bundle% "RealMapCertificates/relations/basis11814.json"
theorem reductionProof11814 : EqualModuloRelations reduction11814.relations reduction11814.input reduction11814.output := by lin_cert using reduction11814.terms
theorem substitutionProof11814 : IsMapEvaluation generatorImages reduction11814.relations [1,1,1339] reduction11814.output := by lin_cert using reduction11814.terms
def image11815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11815 : InImage map_18_212 image11815 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11815 : Bundle := named_bundle% "RealMapCertificates/relations/basis11815.json"
theorem reductionProof11815 : EqualModuloRelations reduction11815.relations reduction11815.input reduction11815.output := by lin_cert using reduction11815.terms
theorem substitutionProof11815 : IsMapEvaluation generatorImages reduction11815.relations [0,0,0,1353] reduction11815.output := by lin_cert using reduction11815.terms
def map_18_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12045 : InImage map_18_213 image12045 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12045 : Bundle := named_bundle% "RealMapCertificates/relations/basis12045.json"
theorem reductionProof12045 : EqualModuloRelations reduction12045.relations reduction12045.input reduction12045.output := by lin_cert using reduction12045.terms
theorem substitutionProof12045 : IsMapEvaluation generatorImages reduction12045.relations [7,1128] reduction12045.output := by lin_cert using reduction12045.terms
def image12046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12046 : InImage map_18_213 image12046 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12046 : Bundle := named_bundle% "RealMapCertificates/relations/basis12046.json"
theorem reductionProof12046 : EqualModuloRelations reduction12046.relations reduction12046.input reduction12046.output := by lin_cert using reduction12046.terms
theorem substitutionProof12046 : IsMapEvaluation generatorImages reduction12046.relations [3,1292] reduction12046.output := by lin_cert using reduction12046.terms
def image12047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12047 : InImage map_18_213 image12047 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12047 : Bundle := named_bundle% "RealMapCertificates/relations/basis12047.json"
theorem reductionProof12047 : EqualModuloRelations reduction12047.relations reduction12047.input reduction12047.output := by lin_cert using reduction12047.terms
theorem substitutionProof12047 : IsMapEvaluation generatorImages reduction12047.relations [3,107,333] reduction12047.output := by lin_cert using reduction12047.terms
def image12048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12048 : InImage map_18_213 image12048 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12048 : Bundle := named_bundle% "RealMapCertificates/relations/basis12048.json"
theorem reductionProof12048 : EqualModuloRelations reduction12048.relations reduction12048.input reduction12048.output := by lin_cert using reduction12048.terms
theorem substitutionProof12048 : IsMapEvaluation generatorImages reduction12048.relations [0,0,0,1377] reduction12048.output := by lin_cert using reduction12048.terms
def map_18_214 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12198 : InImage map_18_214 image12198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12198 : Bundle := named_bundle% "RealMapCertificates/relations/basis12198.json"
theorem reductionProof12198 : EqualModuloRelations reduction12198.relations reduction12198.input reduction12198.output := by lin_cert using reduction12198.terms
theorem substitutionProof12198 : IsMapEvaluation generatorImages reduction12198.relations [1446] reduction12198.output := by lin_cert using reduction12198.terms
def image12199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12199 : InImage map_18_214 image12199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12199 : Bundle := named_bundle% "RealMapCertificates/relations/basis12199.json"
theorem reductionProof12199 : EqualModuloRelations reduction12199.relations reduction12199.input reduction12199.output := by lin_cert using reduction12199.terms
theorem substitutionProof12199 : IsMapEvaluation generatorImages reduction12199.relations [7,1156] reduction12199.output := by lin_cert using reduction12199.terms
def image12200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12200 : InImage map_18_214 image12200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12200 : Bundle := named_bundle% "RealMapCertificates/relations/basis12200.json"
theorem reductionProof12200 : EqualModuloRelations reduction12200.relations reduction12200.input reduction12200.output := by lin_cert using reduction12200.terms
theorem substitutionProof12200 : IsMapEvaluation generatorImages reduction12200.relations [3,3,1157] reduction12200.output := by lin_cert using reduction12200.terms
def image12201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12201 : InImage map_18_214 image12201 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12201 : Bundle := named_bundle% "RealMapCertificates/relations/basis12201.json"
theorem reductionProof12201 : EqualModuloRelations reduction12201.relations reduction12201.input reduction12201.output := by lin_cert using reduction12201.terms
theorem substitutionProof12201 : IsMapEvaluation generatorImages reduction12201.relations [0,0,68,544] reduction12201.output := by lin_cert using reduction12201.terms
def map_18_215 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12407 : InImage map_18_215 image12407 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12407 : Bundle := named_bundle% "RealMapCertificates/relations/basis12407.json"
theorem reductionProof12407 : EqualModuloRelations reduction12407.relations reduction12407.input reduction12407.output := by lin_cert using reduction12407.terms
theorem substitutionProof12407 : IsMapEvaluation generatorImages reduction12407.relations [138,324] reduction12407.output := by lin_cert using reduction12407.terms
def image12408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12408 : InImage map_18_215 image12408 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12408 : Bundle := named_bundle% "RealMapCertificates/relations/basis12408.json"
theorem reductionProof12408 : EqualModuloRelations reduction12408.relations reduction12408.input reduction12408.output := by lin_cert using reduction12408.terms
theorem substitutionProof12408 : IsMapEvaluation generatorImages reduction12408.relations [9,1089] reduction12408.output := by lin_cert using reduction12408.terms
def image12409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12409 : InImage map_18_215 image12409 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12409 : Bundle := named_bundle% "RealMapCertificates/relations/basis12409.json"
theorem reductionProof12409 : EqualModuloRelations reduction12409.relations reduction12409.input reduction12409.output := by lin_cert using reduction12409.terms
theorem substitutionProof12409 : IsMapEvaluation generatorImages reduction12409.relations [8,8,46,324] reduction12409.output := by lin_cert using reduction12409.terms
def image12410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12410 : InImage map_18_215 image12410 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12410 : Bundle := named_bundle% "RealMapCertificates/relations/basis12410.json"
theorem reductionProof12410 : EqualModuloRelations reduction12410.relations reduction12410.input reduction12410.output := by lin_cert using reduction12410.terms
theorem substitutionProof12410 : IsMapEvaluation generatorImages reduction12410.relations [3,1323] reduction12410.output := by lin_cert using reduction12410.terms
def image12411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12411 : InImage map_18_215 image12411 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12411 : Bundle := named_bundle% "RealMapCertificates/relations/basis12411.json"
theorem reductionProof12411 : EqualModuloRelations reduction12411.relations reduction12411.input reduction12411.output := by lin_cert using reduction12411.terms
theorem substitutionProof12411 : IsMapEvaluation generatorImages reduction12411.relations [1,1,1387] reduction12411.output := by lin_cert using reduction12411.terms
def image12412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12412 : InImage map_18_215 image12412 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12412 : Bundle := named_bundle% "RealMapCertificates/relations/basis12412.json"
theorem reductionProof12412 : EqualModuloRelations reduction12412.relations reduction12412.input reduction12412.output := by lin_cert using reduction12412.terms
theorem substitutionProof12412 : IsMapEvaluation generatorImages reduction12412.relations [0,1447] reduction12412.output := by lin_cert using reduction12412.terms
def map_18_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12611 : InImage map_18_216 image12611 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12611 : Bundle := named_bundle% "RealMapCertificates/relations/basis12611.json"
theorem reductionProof12611 : EqualModuloRelations reduction12611.relations reduction12611.input reduction12611.output := by lin_cert using reduction12611.terms
theorem substitutionProof12611 : IsMapEvaluation generatorImages reduction12611.relations [7,1185] reduction12611.output := by lin_cert using reduction12611.terms
def image12612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12612 : InImage map_18_216 image12612 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12612 : Bundle := named_bundle% "RealMapCertificates/relations/basis12612.json"
theorem reductionProof12612 : EqualModuloRelations reduction12612.relations reduction12612.input reduction12612.output := by lin_cert using reduction12612.terms
theorem substitutionProof12612 : IsMapEvaluation generatorImages reduction12612.relations [3,3,1186] reduction12612.output := by lin_cert using reduction12612.terms
def image12613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12613 : InImage map_18_216 image12613 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12613 : Bundle := named_bundle% "RealMapCertificates/relations/basis12613.json"
theorem reductionProof12613 : EqualModuloRelations reduction12613.relations reduction12613.input reduction12613.output := by lin_cert using reduction12613.terms
theorem substitutionProof12613 : IsMapEvaluation generatorImages reduction12613.relations [1,1448] reduction12613.output := by lin_cert using reduction12613.terms
def image12614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12614 : InImage map_18_216 image12614 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12614 : Bundle := named_bundle% "RealMapCertificates/relations/basis12614.json"
theorem reductionProof12614 : EqualModuloRelations reduction12614.relations reduction12614.input reduction12614.output := by lin_cert using reduction12614.terms
theorem substitutionProof12614 : IsMapEvaluation generatorImages reduction12614.relations [1,1447] reduction12614.output := by lin_cert using reduction12614.terms
def image12615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12615 : InImage map_18_216 image12615 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12615 : Bundle := named_bundle% "RealMapCertificates/relations/basis12615.json"
theorem reductionProof12615 : EqualModuloRelations reduction12615.relations reduction12615.input reduction12615.output := by lin_cert using reduction12615.terms
theorem substitutionProof12615 : IsMapEvaluation generatorImages reduction12615.relations [0,0,1449] reduction12615.output := by lin_cert using reduction12615.terms
def map_18_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12765 : InImage map_18_217 image12765 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12765 : Bundle := named_bundle% "RealMapCertificates/relations/basis12765.json"
theorem reductionProof12765 : EqualModuloRelations reduction12765.relations reduction12765.input reduction12765.output := by lin_cert using reduction12765.terms
theorem substitutionProof12765 : IsMapEvaluation generatorImages reduction12765.relations [1508] reduction12765.output := by lin_cert using reduction12765.terms
def image12766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12766 : InImage map_18_217 image12766 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12766 : Bundle := named_bundle% "RealMapCertificates/relations/basis12766.json"
theorem reductionProof12766 : EqualModuloRelations reduction12766.relations reduction12766.input reduction12766.output := by lin_cert using reduction12766.terms
theorem substitutionProof12766 : IsMapEvaluation generatorImages reduction12766.relations [7,1208] reduction12766.output := by lin_cert using reduction12766.terms
def map_18_218 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12970 : InImage map_18_218 image12970 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12970 : Bundle := named_bundle% "RealMapCertificates/relations/basis12970.json"
theorem reductionProof12970 : EqualModuloRelations reduction12970.relations reduction12970.input reduction12970.output := by lin_cert using reduction12970.terms
theorem substitutionProof12970 : IsMapEvaluation generatorImages reduction12970.relations [147,324] reduction12970.output := by lin_cert using reduction12970.terms
def image12971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12971 : InImage map_18_218 image12971 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12971 : Bundle := named_bundle% "RealMapCertificates/relations/basis12971.json"
theorem reductionProof12971 : EqualModuloRelations reduction12971.relations reduction12971.input reduction12971.output := by lin_cert using reduction12971.terms
theorem substitutionProof12971 : IsMapEvaluation generatorImages reduction12971.relations [13,1089] reduction12971.output := by lin_cert using reduction12971.terms
def image12972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12972 : InImage map_18_218 image12972 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12972 : Bundle := named_bundle% "RealMapCertificates/relations/basis12972.json"
theorem reductionProof12972 : EqualModuloRelations reduction12972.relations reduction12972.input reduction12972.output := by lin_cert using reduction12972.terms
theorem substitutionProof12972 : IsMapEvaluation generatorImages reduction12972.relations [8,8,51,324] reduction12972.output := by lin_cert using reduction12972.terms
def image12973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12973 : InImage map_18_218 image12973 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12973 : Bundle := named_bundle% "RealMapCertificates/relations/basis12973.json"
theorem reductionProof12973 : EqualModuloRelations reduction12973.relations reduction12973.input reduction12973.output := by lin_cert using reduction12973.terms
theorem substitutionProof12973 : IsMapEvaluation generatorImages reduction12973.relations [0,1509] reduction12973.output := by lin_cert using reduction12973.terms
def image12974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12974 : InImage map_18_218 image12974 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12974 : Bundle := named_bundle% "RealMapCertificates/relations/basis12974.json"
theorem reductionProof12974 : EqualModuloRelations reduction12974.relations reduction12974.input reduction12974.output := by lin_cert using reduction12974.terms
theorem substitutionProof12974 : IsMapEvaluation generatorImages reduction12974.relations [0,0,1494] reduction12974.output := by lin_cert using reduction12974.terms
def map_18_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13195 : InImage map_18_219 image13195 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13195 : Bundle := named_bundle% "RealMapCertificates/relations/basis13195.json"
theorem reductionProof13195 : EqualModuloRelations reduction13195.relations reduction13195.input reduction13195.output := by lin_cert using reduction13195.terms
theorem substitutionProof13195 : IsMapEvaluation generatorImages reduction13195.relations [1548] reduction13195.output := by lin_cert using reduction13195.terms
def image13196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13196 : InImage map_18_219 image13196 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13196 : Bundle := named_bundle% "RealMapCertificates/relations/basis13196.json"
theorem reductionProof13196 : EqualModuloRelations reduction13196.relations reduction13196.input reduction13196.output := by lin_cert using reduction13196.terms
theorem substitutionProof13196 : IsMapEvaluation generatorImages reduction13196.relations [7,7,965] reduction13196.output := by lin_cert using reduction13196.terms
def image13197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13197 : InImage map_18_219 image13197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13197 : Bundle := named_bundle% "RealMapCertificates/relations/basis13197.json"
theorem reductionProof13197 : EqualModuloRelations reduction13197.relations reduction13197.input reduction13197.output := by lin_cert using reduction13197.terms
theorem substitutionProof13197 : IsMapEvaluation generatorImages reduction13197.relations [1,1509] reduction13197.output := by lin_cert using reduction13197.terms
def image13198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13198 : InImage map_18_219 image13198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13198 : Bundle := named_bundle% "RealMapCertificates/relations/basis13198.json"
theorem reductionProof13198 : EqualModuloRelations reduction13198.relations reduction13198.input reduction13198.output := by lin_cert using reduction13198.terms
theorem substitutionProof13198 : IsMapEvaluation generatorImages reduction13198.relations [0,0,0,0,0,1455] reduction13198.output := by lin_cert using reduction13198.terms
def map_18_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13324 : InImage map_18_220 image13324 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13324 : Bundle := named_bundle% "RealMapCertificates/relations/basis13324.json"
theorem reductionProof13324 : EqualModuloRelations reduction13324.relations reduction13324.input reduction13324.output := by lin_cert using reduction13324.terms
theorem substitutionProof13324 : IsMapEvaluation generatorImages reduction13324.relations [1560] reduction13324.output := by lin_cert using reduction13324.terms
def image13325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13325 : InImage map_18_220 image13325 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13325 : Bundle := named_bundle% "RealMapCertificates/relations/basis13325.json"
theorem reductionProof13325 : EqualModuloRelations reduction13325.relations reduction13325.input reduction13325.output := by lin_cert using reduction13325.terms
theorem substitutionProof13325 : IsMapEvaluation generatorImages reduction13325.relations [0,3,1387] reduction13325.output := by lin_cert using reduction13325.terms
def image13326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13326 : InImage map_18_220 image13326 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13326 : Bundle := named_bundle% "RealMapCertificates/relations/basis13326.json"
theorem reductionProof13326 : EqualModuloRelations reduction13326.relations reduction13326.input reduction13326.output := by lin_cert using reduction13326.terms
theorem substitutionProof13326 : IsMapEvaluation generatorImages reduction13326.relations [0,0,1523] reduction13326.output := by lin_cert using reduction13326.terms
def map_18_221 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13539 : InImage map_18_221 image13539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13539 : Bundle := named_bundle% "RealMapCertificates/relations/basis13539.json"
theorem reductionProof13539 : EqualModuloRelations reduction13539.relations reduction13539.input reduction13539.output := by lin_cert using reduction13539.terms
theorem substitutionProof13539 : IsMapEvaluation generatorImages reduction13539.relations [1580] reduction13539.output := by lin_cert using reduction13539.terms
def image13540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13540 : InImage map_18_221 image13540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13540 : Bundle := named_bundle% "RealMapCertificates/relations/basis13540.json"
theorem reductionProof13540 : EqualModuloRelations reduction13540.relations reduction13540.input reduction13540.output := by lin_cert using reduction13540.terms
theorem substitutionProof13540 : IsMapEvaluation generatorImages reduction13540.relations [17,64,324] reduction13540.output := by lin_cert using reduction13540.terms
def image13541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13541 : InImage map_18_221 image13541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13541 : Bundle := named_bundle% "RealMapCertificates/relations/basis13541.json"
theorem reductionProof13541 : EqualModuloRelations reduction13541.relations reduction13541.input reduction13541.output := by lin_cert using reduction13541.terms
theorem substitutionProof13541 : IsMapEvaluation generatorImages reduction13541.relations [8,9,51,324] reduction13541.output := by lin_cert using reduction13541.terms
def image13542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13542 : InImage map_18_221 image13542 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13542 : Bundle := named_bundle% "RealMapCertificates/relations/basis13542.json"
theorem reductionProof13542 : EqualModuloRelations reduction13542.relations reduction13542.input reduction13542.output := by lin_cert using reduction13542.terms
theorem substitutionProof13542 : IsMapEvaluation generatorImages reduction13542.relations [2,1509] reduction13542.output := by lin_cert using reduction13542.terms
def image13543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13543 : InImage map_18_221 image13543 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13543 : Bundle := named_bundle% "RealMapCertificates/relations/basis13543.json"
theorem reductionProof13543 : EqualModuloRelations reduction13543.relations reduction13543.input reduction13543.output := by lin_cert using reduction13543.terms
theorem substitutionProof13543 : IsMapEvaluation generatorImages reduction13543.relations [0,149,324] reduction13543.output := by lin_cert using reduction13543.terms
def image13544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13544 : InImage map_18_221 image13544 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13544 : Bundle := named_bundle% "RealMapCertificates/relations/basis13544.json"
theorem reductionProof13544 : EqualModuloRelations reduction13544.relations reduction13544.input reduction13544.output := by lin_cert using reduction13544.terms
theorem substitutionProof13544 : IsMapEvaluation generatorImages reduction13544.relations [0,7,1267] reduction13544.output := by lin_cert using reduction13544.terms
def map_18_222 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13762 : InImage map_18_222 image13762 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13762 : Bundle := named_bundle% "RealMapCertificates/relations/basis13762.json"
theorem reductionProof13762 : EqualModuloRelations reduction13762.relations reduction13762.input reduction13762.output := by lin_cert using reduction13762.terms
theorem substitutionProof13762 : IsMapEvaluation generatorImages reduction13762.relations [1,1561] reduction13762.output := by lin_cert using reduction13762.terms
def image13763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13763 : InImage map_18_222 image13763 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13763 : Bundle := named_bundle% "RealMapCertificates/relations/basis13763.json"
theorem reductionProof13763 : EqualModuloRelations reduction13763.relations reduction13763.input reduction13763.output := by lin_cert using reduction13763.terms
theorem substitutionProof13763 : IsMapEvaluation generatorImages reduction13763.relations [1,149,324] reduction13763.output := by lin_cert using reduction13763.terms
def image13764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13764 : InImage map_18_222 image13764 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13764 : Bundle := named_bundle% "RealMapCertificates/relations/basis13764.json"
theorem reductionProof13764 : EqualModuloRelations reduction13764.relations reduction13764.input reduction13764.output := by lin_cert using reduction13764.terms
theorem substitutionProof13764 : IsMapEvaluation generatorImages reduction13764.relations [1,7,7,988] reduction13764.output := by lin_cert using reduction13764.terms
def image13765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13765 : InImage map_18_222 image13765 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13765 : Bundle := named_bundle% "RealMapCertificates/relations/basis13765.json"
theorem reductionProof13765 : EqualModuloRelations reduction13765.relations reduction13765.input reduction13765.output := by lin_cert using reduction13765.terms
theorem substitutionProof13765 : IsMapEvaluation generatorImages reduction13765.relations [0,154,324] reduction13765.output := by lin_cert using reduction13765.terms
def image13766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13766 : InImage map_18_222 image13766 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13766 : Bundle := named_bundle% "RealMapCertificates/relations/basis13766.json"
theorem reductionProof13766 : EqualModuloRelations reduction13766.relations reduction13766.input reduction13766.output := by lin_cert using reduction13766.terms
theorem substitutionProof13766 : IsMapEvaluation generatorImages reduction13766.relations [0,0,1562] reduction13766.output := by lin_cert using reduction13766.terms
def map_18_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13911 : InImage map_18_223 image13911 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13911 : Bundle := named_bundle% "RealMapCertificates/relations/basis13911.json"
theorem reductionProof13911 : EqualModuloRelations reduction13911.relations reduction13911.input reduction13911.output := by lin_cert using reduction13911.terms
theorem substitutionProof13911 : IsMapEvaluation generatorImages reduction13911.relations [1616] reduction13911.output := by lin_cert using reduction13911.terms
def image13912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13912 : InImage map_18_223 image13912 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13912 : Bundle := named_bundle% "RealMapCertificates/relations/basis13912.json"
theorem reductionProof13912 : EqualModuloRelations reduction13912.relations reduction13912.input reduction13912.output := by lin_cert using reduction13912.terms
theorem substitutionProof13912 : IsMapEvaluation generatorImages reduction13912.relations [1615] reduction13912.output := by lin_cert using reduction13912.terms
def image13913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13913 : InImage map_18_223 image13913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13913 : Bundle := named_bundle% "RealMapCertificates/relations/basis13913.json"
theorem reductionProof13913 : EqualModuloRelations reduction13913.relations reduction13913.input reduction13913.output := by lin_cert using reduction13913.terms
theorem substitutionProof13913 : IsMapEvaluation generatorImages reduction13913.relations [0,0,7,1295] reduction13913.output := by lin_cert using reduction13913.terms
def map_18_224 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image14105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14105 : InImage map_18_224 image14105 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14105 : Bundle := named_bundle% "RealMapCertificates/relations/basis14105.json"
theorem reductionProof14105 : EqualModuloRelations reduction14105.relations reduction14105.input reduction14105.output := by lin_cert using reduction14105.terms
theorem substitutionProof14105 : IsMapEvaluation generatorImages reduction14105.relations [1629] reduction14105.output := by lin_cert using reduction14105.terms
def image14106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14106 : InImage map_18_224 image14106 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14106 : Bundle := named_bundle% "RealMapCertificates/relations/basis14106.json"
theorem reductionProof14106 : EqualModuloRelations reduction14106.relations reduction14106.input reduction14106.output := by lin_cert using reduction14106.terms
theorem substitutionProof14106 : IsMapEvaluation generatorImages reduction14106.relations [1628] reduction14106.output := by lin_cert using reduction14106.terms
def image14107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14107 : InImage map_18_224 image14107 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14107 : Bundle := named_bundle% "RealMapCertificates/relations/basis14107.json"
theorem reductionProof14107 : EqualModuloRelations reduction14107.relations reduction14107.input reduction14107.output := by lin_cert using reduction14107.terms
theorem substitutionProof14107 : IsMapEvaluation generatorImages reduction14107.relations [13,75,376] reduction14107.output := by lin_cert using reduction14107.terms
def image14108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14108 : InImage map_18_224 image14108 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14108 : Bundle := named_bundle% "RealMapCertificates/relations/basis14108.json"
theorem reductionProof14108 : EqualModuloRelations reduction14108.relations reduction14108.input reduction14108.output := by lin_cert using reduction14108.terms
theorem substitutionProof14108 : IsMapEvaluation generatorImages reduction14108.relations [8,113,324] reduction14108.output := by lin_cert using reduction14108.terms
def image14109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14109 : InImage map_18_224 image14109 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14109 : Bundle := named_bundle% "RealMapCertificates/relations/basis14109.json"
theorem reductionProof14109 : EqualModuloRelations reduction14109.relations reduction14109.input reduction14109.output := by lin_cert using reduction14109.terms
theorem substitutionProof14109 : IsMapEvaluation generatorImages reduction14109.relations [8,13,51,324] reduction14109.output := by lin_cert using reduction14109.terms
def image14110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14110 : InImage map_18_224 image14110 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14110 : Bundle := named_bundle% "RealMapCertificates/relations/basis14110.json"
theorem reductionProof14110 : EqualModuloRelations reduction14110.relations reduction14110.input reduction14110.output := by lin_cert using reduction14110.terms
theorem substitutionProof14110 : IsMapEvaluation generatorImages reduction14110.relations [0,1617] reduction14110.output := by lin_cert using reduction14110.terms
def image14111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14111 : InImage map_18_224 image14111 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14111 : Bundle := named_bundle% "RealMapCertificates/relations/basis14111.json"
theorem reductionProof14111 : EqualModuloRelations reduction14111.relations reduction14111.input reduction14111.output := by lin_cert using reduction14111.terms
theorem substitutionProof14111 : IsMapEvaluation generatorImages reduction14111.relations [0,160,324] reduction14111.output := by lin_cert using reduction14111.terms
def map_18_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14324 : InImage map_18_225 image14324 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14324 : Bundle := named_bundle% "RealMapCertificates/relations/basis14324.json"
theorem reductionProof14324 : EqualModuloRelations reduction14324.relations reduction14324.input reduction14324.output := by lin_cert using reduction14324.terms
theorem substitutionProof14324 : IsMapEvaluation generatorImages reduction14324.relations [1646] reduction14324.output := by lin_cert using reduction14324.terms
def image14325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14325 : InImage map_18_225 image14325 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14325 : Bundle := named_bundle% "RealMapCertificates/relations/basis14325.json"
theorem reductionProof14325 : EqualModuloRelations reduction14325.relations reduction14325.input reduction14325.output := by lin_cert using reduction14325.terms
theorem substitutionProof14325 : IsMapEvaluation generatorImages reduction14325.relations [1645] reduction14325.output := by lin_cert using reduction14325.terms
def image14326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14326 : InImage map_18_225 image14326 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14326 : Bundle := named_bundle% "RealMapCertificates/relations/basis14326.json"
theorem reductionProof14326 : EqualModuloRelations reduction14326.relations reduction14326.input reduction14326.output := by lin_cert using reduction14326.terms
theorem substitutionProof14326 : IsMapEvaluation generatorImages reduction14326.relations [190,288] reduction14326.output := by lin_cert using reduction14326.terms
def image14327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14327 : InImage map_18_225 image14327 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14327 : Bundle := named_bundle% "RealMapCertificates/relations/basis14327.json"
theorem reductionProof14327 : EqualModuloRelations reduction14327.relations reduction14327.input reduction14327.output := by lin_cert using reduction14327.terms
theorem substitutionProof14327 : IsMapEvaluation generatorImages reduction14327.relations [0,162,324] reduction14327.output := by lin_cert using reduction14327.terms
def map_18_226 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14461 : InImage map_18_226 image14461 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14461 : Bundle := named_bundle% "RealMapCertificates/relations/basis14461.json"
theorem reductionProof14461 : EqualModuloRelations reduction14461.relations reduction14461.input reduction14461.output := by lin_cert using reduction14461.terms
theorem substitutionProof14461 : IsMapEvaluation generatorImages reduction14461.relations [1671] reduction14461.output := by lin_cert using reduction14461.terms
def image14462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14462 : InImage map_18_226 image14462 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14462 : Bundle := named_bundle% "RealMapCertificates/relations/basis14462.json"
theorem reductionProof14462 : EqualModuloRelations reduction14462.relations reduction14462.input reduction14462.output := by lin_cert using reduction14462.terms
theorem substitutionProof14462 : IsMapEvaluation generatorImages reduction14462.relations [1670] reduction14462.output := by lin_cert using reduction14462.terms
def image14463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14463 : InImage map_18_226 image14463 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14463 : Bundle := named_bundle% "RealMapCertificates/relations/basis14463.json"
theorem reductionProof14463 : EqualModuloRelations reduction14463.relations reduction14463.input reduction14463.output := by lin_cert using reduction14463.terms
theorem substitutionProof14463 : IsMapEvaluation generatorImages reduction14463.relations [67,674] reduction14463.output := by lin_cert using reduction14463.terms
def image14464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14464 : InImage map_18_226 image14464 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14464 : Bundle := named_bundle% "RealMapCertificates/relations/basis14464.json"
theorem reductionProof14464 : EqualModuloRelations reduction14464.relations reduction14464.input reduction14464.output := by lin_cert using reduction14464.terms
theorem substitutionProof14464 : IsMapEvaluation generatorImages reduction14464.relations [0,1648] reduction14464.output := by lin_cert using reduction14464.terms
def image14465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14465 : InImage map_18_226 image14465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14465 : Bundle := named_bundle% "RealMapCertificates/relations/basis14465.json"
theorem reductionProof14465 : EqualModuloRelations reduction14465.relations reduction14465.input reduction14465.output := by lin_cert using reduction14465.terms
theorem substitutionProof14465 : IsMapEvaluation generatorImages reduction14465.relations [0,1647] reduction14465.output := by lin_cert using reduction14465.terms
def map_18_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14679 : InImage map_18_227 image14679 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14679 : Bundle := named_bundle% "RealMapCertificates/relations/basis14679.json"
theorem reductionProof14679 : EqualModuloRelations reduction14679.relations reduction14679.input reduction14679.output := by lin_cert using reduction14679.terms
theorem substitutionProof14679 : IsMapEvaluation generatorImages reduction14679.relations [8,118,324] reduction14679.output := by lin_cert using reduction14679.terms
def image14680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14680 : InImage map_18_227 image14680 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14680 : Bundle := named_bundle% "RealMapCertificates/relations/basis14680.json"
theorem reductionProof14680 : EqualModuloRelations reduction14680.relations reduction14680.input reduction14680.output := by lin_cert using reduction14680.terms
theorem substitutionProof14680 : IsMapEvaluation generatorImages reduction14680.relations [0,1673] reduction14680.output := by lin_cert using reduction14680.terms
def image14681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14681 : InImage map_18_227 image14681 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14681 : Bundle := named_bundle% "RealMapCertificates/relations/basis14681.json"
theorem reductionProof14681 : EqualModuloRelations reduction14681.relations reduction14681.input reduction14681.output := by lin_cert using reduction14681.terms
theorem substitutionProof14681 : IsMapEvaluation generatorImages reduction14681.relations [0,1672] reduction14681.output := by lin_cert using reduction14681.terms
def image14682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14682 : InImage map_18_227 image14682 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14682 : Bundle := named_bundle% "RealMapCertificates/relations/basis14682.json"
theorem reductionProof14682 : EqualModuloRelations reduction14682.relations reduction14682.input reduction14682.output := by lin_cert using reduction14682.terms
theorem substitutionProof14682 : IsMapEvaluation generatorImages reduction14682.relations [0,166,324] reduction14682.output := by lin_cert using reduction14682.terms
def image14683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14683 : InImage map_18_227 image14683 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14683 : Bundle := named_bundle% "RealMapCertificates/relations/basis14683.json"
theorem reductionProof14683 : EqualModuloRelations reduction14683.relations reduction14683.input reduction14683.output := by lin_cert using reduction14683.terms
theorem substitutionProof14683 : IsMapEvaluation generatorImages reduction14683.relations [0,0,0,0,0,1602] reduction14683.output := by lin_cert using reduction14683.terms
def map_18_228 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14895 : InImage map_18_228 image14895 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14895 : Bundle := named_bundle% "RealMapCertificates/relations/basis14895.json"
theorem reductionProof14895 : EqualModuloRelations reduction14895.relations reduction14895.input reduction14895.output := by lin_cert using reduction14895.terms
theorem substitutionProof14895 : IsMapEvaluation generatorImages reduction14895.relations [1701] reduction14895.output := by lin_cert using reduction14895.terms
def image14896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14896 : InImage map_18_228 image14896 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14896 : Bundle := named_bundle% "RealMapCertificates/relations/basis14896.json"
theorem reductionProof14896 : EqualModuloRelations reduction14896.relations reduction14896.input reduction14896.output := by lin_cert using reduction14896.terms
theorem substitutionProof14896 : IsMapEvaluation generatorImages reduction14896.relations [1700] reduction14896.output := by lin_cert using reduction14896.terms
def image14897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14897 : InImage map_18_228 image14897 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14897 : Bundle := named_bundle% "RealMapCertificates/relations/basis14897.json"
theorem reductionProof14897 : EqualModuloRelations reduction14897.relations reduction14897.input reduction14897.output := by lin_cert using reduction14897.terms
theorem substitutionProof14897 : IsMapEvaluation generatorImages reduction14897.relations [1699] reduction14897.output := by lin_cert using reduction14897.terms
def image14898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14898 : InImage map_18_228 image14898 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14898 : Bundle := named_bundle% "RealMapCertificates/relations/basis14898.json"
theorem reductionProof14898 : EqualModuloRelations reduction14898.relations reduction14898.input reduction14898.output := by lin_cert using reduction14898.terms
theorem substitutionProof14898 : IsMapEvaluation generatorImages reduction14898.relations [1,1672] reduction14898.output := by lin_cert using reduction14898.terms
def image14899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14899 : InImage map_18_228 image14899 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14899 : Bundle := named_bundle% "RealMapCertificates/relations/basis14899.json"
theorem reductionProof14899 : EqualModuloRelations reduction14899.relations reduction14899.input reduction14899.output := by lin_cert using reduction14899.terms
theorem substitutionProof14899 : IsMapEvaluation generatorImages reduction14899.relations [0,17,80,324] reduction14899.output := by lin_cert using reduction14899.terms
def image14900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14900 : InImage map_18_228 image14900 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14900 : Bundle := named_bundle% "RealMapCertificates/relations/basis14900.json"
theorem reductionProof14900 : EqualModuloRelations reduction14900.relations reduction14900.input reduction14900.output := by lin_cert using reduction14900.terms
theorem substitutionProof14900 : IsMapEvaluation generatorImages reduction14900.relations [0,0,167,324] reduction14900.output := by lin_cert using reduction14900.terms
def map_18_229 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15057 : InImage map_18_229 image15057 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15057 : Bundle := named_bundle% "RealMapCertificates/relations/basis15057.json"
theorem reductionProof15057 : EqualModuloRelations reduction15057.relations reduction15057.input reduction15057.output := by lin_cert using reduction15057.terms
theorem substitutionProof15057 : IsMapEvaluation generatorImages reduction15057.relations [1728] reduction15057.output := by lin_cert using reduction15057.terms
def image15058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15058 : InImage map_18_229 image15058 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15058 : Bundle := named_bundle% "RealMapCertificates/relations/basis15058.json"
theorem reductionProof15058 : EqualModuloRelations reduction15058.relations reduction15058.input reduction15058.output := by lin_cert using reduction15058.terms
theorem substitutionProof15058 : IsMapEvaluation generatorImages reduction15058.relations [0,1704] reduction15058.output := by lin_cert using reduction15058.terms
def image15059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15059 : InImage map_18_229 image15059 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15059 : Bundle := named_bundle% "RealMapCertificates/relations/basis15059.json"
theorem reductionProof15059 : EqualModuloRelations reduction15059.relations reduction15059.input reduction15059.output := by lin_cert using reduction15059.terms
theorem substitutionProof15059 : IsMapEvaluation generatorImages reduction15059.relations [0,1703] reduction15059.output := by lin_cert using reduction15059.terms
def image15060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15060 : InImage map_18_229 image15060 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15060 : Bundle := named_bundle% "RealMapCertificates/relations/basis15060.json"
theorem reductionProof15060 : EqualModuloRelations reduction15060.relations reduction15060.input reduction15060.output := by lin_cert using reduction15060.terms
theorem substitutionProof15060 : IsMapEvaluation generatorImages reduction15060.relations [0,1702] reduction15060.output := by lin_cert using reduction15060.terms
def image15061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15061 : InImage map_18_229 image15061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15061 : Bundle := named_bundle% "RealMapCertificates/relations/basis15061.json"
theorem reductionProof15061 : EqualModuloRelations reduction15061.relations reduction15061.input reduction15061.output := by lin_cert using reduction15061.terms
theorem substitutionProof15061 : IsMapEvaluation generatorImages reduction15061.relations [0,174,333] reduction15061.output := by lin_cert using reduction15061.terms
def image15062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15062 : InImage map_18_229 image15062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15062 : Bundle := named_bundle% "RealMapCertificates/relations/basis15062.json"
theorem reductionProof15062 : EqualModuloRelations reduction15062.relations reduction15062.input reduction15062.output := by lin_cert using reduction15062.terms
theorem substitutionProof15062 : IsMapEvaluation generatorImages reduction15062.relations [0,0,172,324] reduction15062.output := by lin_cert using reduction15062.terms
def map_18_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15281 : InImage map_18_230 image15281 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15281 : Bundle := named_bundle% "RealMapCertificates/relations/basis15281.json"
theorem reductionProof15281 : EqualModuloRelations reduction15281.relations reduction15281.input reduction15281.output := by lin_cert using reduction15281.terms
theorem substitutionProof15281 : IsMapEvaluation generatorImages reduction15281.relations [1743] reduction15281.output := by lin_cert using reduction15281.terms
def image15282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15282 : InImage map_18_230 image15282 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15282 : Bundle := named_bundle% "RealMapCertificates/relations/basis15282.json"
theorem reductionProof15282 : EqualModuloRelations reduction15282.relations reduction15282.input reduction15282.output := by lin_cert using reduction15282.terms
theorem substitutionProof15282 : IsMapEvaluation generatorImages reduction15282.relations [67,719] reduction15282.output := by lin_cert using reduction15282.terms
def image15283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15283 : InImage map_18_230 image15283 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15283 : Bundle := named_bundle% "RealMapCertificates/relations/basis15283.json"
theorem reductionProof15283 : EqualModuloRelations reduction15283.relations reduction15283.input reduction15283.output := by lin_cert using reduction15283.terms
theorem substitutionProof15283 : IsMapEvaluation generatorImages reduction15283.relations [8,127,324] reduction15283.output := by lin_cert using reduction15283.terms
def image15284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15284 : InImage map_18_230 image15284 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15284 : Bundle := named_bundle% "RealMapCertificates/relations/basis15284.json"
theorem reductionProof15284 : EqualModuloRelations reduction15284.relations reduction15284.input reduction15284.output := by lin_cert using reduction15284.terms
theorem substitutionProof15284 : IsMapEvaluation generatorImages reduction15284.relations [1,1703] reduction15284.output := by lin_cert using reduction15284.terms
def image15285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15285 : InImage map_18_230 image15285 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15285 : Bundle := named_bundle% "RealMapCertificates/relations/basis15285.json"
theorem reductionProof15285 : EqualModuloRelations reduction15285.relations reduction15285.input reduction15285.output := by lin_cert using reduction15285.terms
theorem substitutionProof15285 : IsMapEvaluation generatorImages reduction15285.relations [0,0,0,0,169,324] reduction15285.output := by lin_cert using reduction15285.terms
end RealMapCertificates
