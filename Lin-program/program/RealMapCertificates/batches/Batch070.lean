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
  | 20 => [[5,6]]
  | 43 => []
  | 67 => []
  | 68 => []
  | 74 => []
  | 76 => []
  | 80 => []
  | 95 => []
  | 150 => []
  | 176 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 193 => [[5,5,7,12]]
  | 197 => []
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 226 => []
  | 254 => []
  | 255 => []
  | 324 => []
  | 332 => []
  | 352 => []
  | 376 => []
  | 450 => []
  | 719 => []
  | 732 => []
  | 734 => []
  | 756 => []
  | 757 => []
  | 1055 => []
  | 1056 => []
  | 1091 => []
  | 1118 => []
  | 1648 => []
  | 1729 => []
  | 1731 => []
  | 1744 => []
  | 1745 => []
  | 1791 => []
  | 1792 => []
  | 1793 => []
  | 1794 => []
  | 1821 => []
  | 1843 => []
  | 1872 => []
  | 1873 => []
  | 1874 => []
  | 1876 => []
  | 1877 => []
  | 1878 => []
  | 1895 => []
  | 1915 => []
  | 1916 => []
  | 1917 => []
  | 1918 => []
  | 1948 => []
  | 1949 => []
  | 1950 => []
  | 1974 => []
  | 1975 => []
  | 1976 => []
  | 1979 => []
  | 1981 => []
  | 2012 => []
  | 2013 => []
  | 2014 => []
  | 2015 => []
  | 2016 => []
  | 2019 => []
  | 2020 => []
  | 2053 => []
  | 2054 => []
  | 2055 => []
  | 2072 => []
  | 2073 => []
  | 2074 => []
  | 2075 => []
  | 2077 => []
  | 2113 => []
  | 2114 => []
  | 2146 => []
  | 2147 => []
  | 2184 => []
  | 2227 => []
  | 2228 => []
  | 2264 => []
  | 2265 => []
  | 2266 => []
  | 2267 => []
  | _ => []
def map_18_231 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15532 : InImage map_18_231 image15532 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15532 : Bundle := named_bundle% "RealMapCertificates/relations/basis15532.json"
theorem reductionProof15532 : EqualModuloRelations reduction15532.relations reduction15532.input reduction15532.output := by lin_cert using reduction15532.terms
theorem substitutionProof15532 : IsMapEvaluation generatorImages reduction15532.relations [190,332] reduction15532.output := by lin_cert using reduction15532.terms
def image15533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15533 : InImage map_18_231 image15533 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15533 : Bundle := named_bundle% "RealMapCertificates/relations/basis15533.json"
theorem reductionProof15533 : EqualModuloRelations reduction15533.relations reduction15533.input reduction15533.output := by lin_cert using reduction15533.terms
theorem substitutionProof15533 : IsMapEvaluation generatorImages reduction15533.relations [68,732] reduction15533.output := by lin_cert using reduction15533.terms
def image15534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15534 : InImage map_18_231 image15534 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15534 : Bundle := named_bundle% "RealMapCertificates/relations/basis15534.json"
theorem reductionProof15534 : EqualModuloRelations reduction15534.relations reduction15534.input reduction15534.output := by lin_cert using reduction15534.terms
theorem substitutionProof15534 : IsMapEvaluation generatorImages reduction15534.relations [1,1729] reduction15534.output := by lin_cert using reduction15534.terms
def image15535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15535 : InImage map_18_231 image15535 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15535 : Bundle := named_bundle% "RealMapCertificates/relations/basis15535.json"
theorem reductionProof15535 : EqualModuloRelations reduction15535.relations reduction15535.input reduction15535.output := by lin_cert using reduction15535.terms
theorem substitutionProof15535 : IsMapEvaluation generatorImages reduction15535.relations [0,1744] reduction15535.output := by lin_cert using reduction15535.terms
def image15536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15536 : InImage map_18_231 image15536 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15536 : Bundle := named_bundle% "RealMapCertificates/relations/basis15536.json"
theorem reductionProof15536 : EqualModuloRelations reduction15536.relations reduction15536.input reduction15536.output := by lin_cert using reduction15536.terms
theorem substitutionProof15536 : IsMapEvaluation generatorImages reduction15536.relations [0,68,719] reduction15536.output := by lin_cert using reduction15536.terms
def image15537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15537 : InImage map_18_231 image15537 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15537 : Bundle := named_bundle% "RealMapCertificates/relations/basis15537.json"
theorem reductionProof15537 : EqualModuloRelations reduction15537.relations reduction15537.input reduction15537.output := by lin_cert using reduction15537.terms
theorem substitutionProof15537 : IsMapEvaluation generatorImages reduction15537.relations [0,20,80,324] reduction15537.output := by lin_cert using reduction15537.terms
def image15538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15538 : InImage map_18_231 image15538 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15538 : Bundle := named_bundle% "RealMapCertificates/relations/basis15538.json"
theorem reductionProof15538 : EqualModuloRelations reduction15538.relations reduction15538.input reduction15538.output := by lin_cert using reduction15538.terms
theorem substitutionProof15538 : IsMapEvaluation generatorImages reduction15538.relations [0,0,0,176,324] reduction15538.output := by lin_cert using reduction15538.terms
def map_18_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15702 : InImage map_18_232 image15702 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15702 : Bundle := named_bundle% "RealMapCertificates/relations/basis15702.json"
theorem reductionProof15702 : EqualModuloRelations reduction15702.relations reduction15702.input reduction15702.output := by lin_cert using reduction15702.terms
theorem substitutionProof15702 : IsMapEvaluation generatorImages reduction15702.relations [1792] reduction15702.output := by lin_cert using reduction15702.terms
def image15703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15703 : InImage map_18_232 image15703 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15703 : Bundle := named_bundle% "RealMapCertificates/relations/basis15703.json"
theorem reductionProof15703 : EqualModuloRelations reduction15703.relations reduction15703.input reduction15703.output := by lin_cert using reduction15703.terms
theorem substitutionProof15703 : IsMapEvaluation generatorImages reduction15703.relations [1791] reduction15703.output := by lin_cert using reduction15703.terms
def image15704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15704 : InImage map_18_232 image15704 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15704 : Bundle := named_bundle% "RealMapCertificates/relations/basis15704.json"
theorem reductionProof15704 : EqualModuloRelations reduction15704.relations reduction15704.input reduction15704.output := by lin_cert using reduction15704.terms
theorem substitutionProof15704 : IsMapEvaluation generatorImages reduction15704.relations [193,324] reduction15704.output := by lin_cert using reduction15704.terms
def image15705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15705 : InImage map_18_232 image15705 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15705 : Bundle := named_bundle% "RealMapCertificates/relations/basis15705.json"
theorem reductionProof15705 : EqualModuloRelations reduction15705.relations reduction15705.input reduction15705.output := by lin_cert using reduction15705.terms
theorem substitutionProof15705 : IsMapEvaluation generatorImages reduction15705.relations [0,0,0,1731] reduction15705.output := by lin_cert using reduction15705.terms
def map_18_233 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15931 : InImage map_18_233 image15931 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15931 : Bundle := named_bundle% "RealMapCertificates/relations/basis15931.json"
theorem reductionProof15931 : EqualModuloRelations reduction15931.relations reduction15931.input reduction15931.output := by lin_cert using reduction15931.terms
theorem substitutionProof15931 : IsMapEvaluation generatorImages reduction15931.relations [8,8,80,324] reduction15931.output := by lin_cert using reduction15931.terms
def image15932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15932 : InImage map_18_233 image15932 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15932 : Bundle := named_bundle% "RealMapCertificates/relations/basis15932.json"
theorem reductionProof15932 : EqualModuloRelations reduction15932.relations reduction15932.input reduction15932.output := by lin_cert using reduction15932.terms
theorem substitutionProof15932 : IsMapEvaluation generatorImages reduction15932.relations [3,1648] reduction15932.output := by lin_cert using reduction15932.terms
def image15933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15933 : InImage map_18_233 image15933 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15933 : Bundle := named_bundle% "RealMapCertificates/relations/basis15933.json"
theorem reductionProof15933 : EqualModuloRelations reduction15933.relations reduction15933.input reduction15933.output := by lin_cert using reduction15933.terms
theorem substitutionProof15933 : IsMapEvaluation generatorImages reduction15933.relations [0,1793] reduction15933.output := by lin_cert using reduction15933.terms
def map_18_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16179 : InImage map_18_234 image16179 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16179 : Bundle := named_bundle% "RealMapCertificates/relations/basis16179.json"
theorem reductionProof16179 : EqualModuloRelations reduction16179.relations reduction16179.input reduction16179.output := by lin_cert using reduction16179.terms
theorem substitutionProof16179 : IsMapEvaluation generatorImages reduction16179.relations [1843] reduction16179.output := by lin_cert using reduction16179.terms
def image16180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16180 : InImage map_18_234 image16180 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16180 : Bundle := named_bundle% "RealMapCertificates/relations/basis16180.json"
theorem reductionProof16180 : EqualModuloRelations reduction16180.relations reduction16180.input reduction16180.output := by lin_cert using reduction16180.terms
theorem substitutionProof16180 : IsMapEvaluation generatorImages reduction16180.relations [0,1821] reduction16180.output := by lin_cert using reduction16180.terms
def image16181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16181 : InImage map_18_234 image16181 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16181 : Bundle := named_bundle% "RealMapCertificates/relations/basis16181.json"
theorem reductionProof16181 : EqualModuloRelations reduction16181.relations reduction16181.input reduction16181.output := by lin_cert using reduction16181.terms
theorem substitutionProof16181 : IsMapEvaluation generatorImages reduction16181.relations [0,74,719] reduction16181.output := by lin_cert using reduction16181.terms
def image16182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16182 : InImage map_18_234 image16182 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16182 : Bundle := named_bundle% "RealMapCertificates/relations/basis16182.json"
theorem reductionProof16182 : EqualModuloRelations reduction16182.relations reduction16182.input reduction16182.output := by lin_cert using reduction16182.terms
theorem substitutionProof16182 : IsMapEvaluation generatorImages reduction16182.relations [0,67,757] reduction16182.output := by lin_cert using reduction16182.terms
def image16183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16183 : InImage map_18_234 image16183 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16183 : Bundle := named_bundle% "RealMapCertificates/relations/basis16183.json"
theorem reductionProof16183 : EqualModuloRelations reduction16183.relations reduction16183.input reduction16183.output := by lin_cert using reduction16183.terms
theorem substitutionProof16183 : IsMapEvaluation generatorImages reduction16183.relations [0,67,756] reduction16183.output := by lin_cert using reduction16183.terms
def image16184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16184 : InImage map_18_234 image16184 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16184 : Bundle := named_bundle% "RealMapCertificates/relations/basis16184.json"
theorem reductionProof16184 : EqualModuloRelations reduction16184.relations reduction16184.input reduction16184.output := by lin_cert using reduction16184.terms
theorem substitutionProof16184 : IsMapEvaluation generatorImages reduction16184.relations [0,0,1794] reduction16184.output := by lin_cert using reduction16184.terms
def map_18_235 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16367 : InImage map_18_235 image16367 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16367 : Bundle := named_bundle% "RealMapCertificates/relations/basis16367.json"
theorem reductionProof16367 : EqualModuloRelations reduction16367.relations reduction16367.input reduction16367.output := by lin_cert using reduction16367.terms
theorem substitutionProof16367 : IsMapEvaluation generatorImages reduction16367.relations [1874] reduction16367.output := by lin_cert using reduction16367.terms
def image16368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16368 : InImage map_18_235 image16368 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16368 : Bundle := named_bundle% "RealMapCertificates/relations/basis16368.json"
theorem reductionProof16368 : EqualModuloRelations reduction16368.relations reduction16368.input reduction16368.output := by lin_cert using reduction16368.terms
theorem substitutionProof16368 : IsMapEvaluation generatorImages reduction16368.relations [1873] reduction16368.output := by lin_cert using reduction16368.terms
def image16369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16369 : InImage map_18_235 image16369 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16369 : Bundle := named_bundle% "RealMapCertificates/relations/basis16369.json"
theorem reductionProof16369 : EqualModuloRelations reduction16369.relations reduction16369.input reduction16369.output := by lin_cert using reduction16369.terms
theorem substitutionProof16369 : IsMapEvaluation generatorImages reduction16369.relations [1872] reduction16369.output := by lin_cert using reduction16369.terms
def image16370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16370 : InImage map_18_235 image16370 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16370 : Bundle := named_bundle% "RealMapCertificates/relations/basis16370.json"
theorem reductionProof16370 : EqualModuloRelations reduction16370.relations reduction16370.input reduction16370.output := by lin_cert using reduction16370.terms
theorem substitutionProof16370 : IsMapEvaluation generatorImages reduction16370.relations [208,324] reduction16370.output := by lin_cert using reduction16370.terms
def image16371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16371 : InImage map_18_235 image16371 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16371 : Bundle := named_bundle% "RealMapCertificates/relations/basis16371.json"
theorem reductionProof16371 : EqualModuloRelations reduction16371.relations reduction16371.input reduction16371.output := by lin_cert using reduction16371.terms
theorem substitutionProof16371 : IsMapEvaluation generatorImages reduction16371.relations [189,376] reduction16371.output := by lin_cert using reduction16371.terms
def image16372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16372 : InImage map_18_235 image16372 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16372 : Bundle := named_bundle% "RealMapCertificates/relations/basis16372.json"
theorem reductionProof16372 : EqualModuloRelations reduction16372.relations reduction16372.input reduction16372.output := by lin_cert using reduction16372.terms
theorem substitutionProof16372 : IsMapEvaluation generatorImages reduction16372.relations [0,0,0,0,0,187,324] reduction16372.output := by lin_cert using reduction16372.terms
def map_18_236 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16603 : InImage map_18_236 image16603 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16603 : Bundle := named_bundle% "RealMapCertificates/relations/basis16603.json"
theorem reductionProof16603 : EqualModuloRelations reduction16603.relations reduction16603.input reduction16603.output := by lin_cert using reduction16603.terms
theorem substitutionProof16603 : IsMapEvaluation generatorImages reduction16603.relations [1895] reduction16603.output := by lin_cert using reduction16603.terms
def image16604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16604 : InImage map_18_236 image16604 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16604 : Bundle := named_bundle% "RealMapCertificates/relations/basis16604.json"
theorem reductionProof16604 : EqualModuloRelations reduction16604.relations reduction16604.input reduction16604.output := by lin_cert using reduction16604.terms
theorem substitutionProof16604 : IsMapEvaluation generatorImages reduction16604.relations [8,9,80,324] reduction16604.output := by lin_cert using reduction16604.terms
def image16605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16605 : InImage map_18_236 image16605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16605 : Bundle := named_bundle% "RealMapCertificates/relations/basis16605.json"
theorem reductionProof16605 : EqualModuloRelations reduction16605.relations reduction16605.input reduction16605.output := by lin_cert using reduction16605.terms
theorem substitutionProof16605 : IsMapEvaluation generatorImages reduction16605.relations [1,76,732] reduction16605.output := by lin_cert using reduction16605.terms
def image16606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16606 : InImage map_18_236 image16606 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16606 : Bundle := named_bundle% "RealMapCertificates/relations/basis16606.json"
theorem reductionProof16606 : EqualModuloRelations reduction16606.relations reduction16606.input reduction16606.output := by lin_cert using reduction16606.terms
theorem substitutionProof16606 : IsMapEvaluation generatorImages reduction16606.relations [0,1877] reduction16606.output := by lin_cert using reduction16606.terms
def image16607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16607 : InImage map_18_236 image16607 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16607 : Bundle := named_bundle% "RealMapCertificates/relations/basis16607.json"
theorem reductionProof16607 : EqualModuloRelations reduction16607.relations reduction16607.input reduction16607.output := by lin_cert using reduction16607.terms
theorem substitutionProof16607 : IsMapEvaluation generatorImages reduction16607.relations [0,1876] reduction16607.output := by lin_cert using reduction16607.terms
def image16608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16608 : InImage map_18_236 image16608 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16608 : Bundle := named_bundle% "RealMapCertificates/relations/basis16608.json"
theorem reductionProof16608 : EqualModuloRelations reduction16608.relations reduction16608.input reduction16608.output := by lin_cert using reduction16608.terms
theorem substitutionProof16608 : IsMapEvaluation generatorImages reduction16608.relations [0,0,0,0,0,0,188,324] reduction16608.output := by lin_cert using reduction16608.terms
def map_18_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16852 : InImage map_18_237 image16852 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16852 : Bundle := named_bundle% "RealMapCertificates/relations/basis16852.json"
theorem reductionProof16852 : EqualModuloRelations reduction16852.relations reduction16852.input reduction16852.output := by lin_cert using reduction16852.terms
theorem substitutionProof16852 : IsMapEvaluation generatorImages reduction16852.relations [1916] reduction16852.output := by lin_cert using reduction16852.terms
def image16853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16853 : InImage map_18_237 image16853 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16853 : Bundle := named_bundle% "RealMapCertificates/relations/basis16853.json"
theorem reductionProof16853 : EqualModuloRelations reduction16853.relations reduction16853.input reduction16853.output := by lin_cert using reduction16853.terms
theorem substitutionProof16853 : IsMapEvaluation generatorImages reduction16853.relations [1915] reduction16853.output := by lin_cert using reduction16853.terms
def image16854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16854 : InImage map_18_237 image16854 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16854 : Bundle := named_bundle% "RealMapCertificates/relations/basis16854.json"
theorem reductionProof16854 : EqualModuloRelations reduction16854.relations reduction16854.input reduction16854.output := by lin_cert using reduction16854.terms
theorem substitutionProof16854 : IsMapEvaluation generatorImages reduction16854.relations [1,1877] reduction16854.output := by lin_cert using reduction16854.terms
def image16855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16855 : InImage map_18_237 image16855 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16855 : Bundle := named_bundle% "RealMapCertificates/relations/basis16855.json"
theorem reductionProof16855 : EqualModuloRelations reduction16855.relations reduction16855.input reduction16855.output := by lin_cert using reduction16855.terms
theorem substitutionProof16855 : IsMapEvaluation generatorImages reduction16855.relations [0,0,1878] reduction16855.output := by lin_cert using reduction16855.terms
def map_18_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17038 : InImage map_18_238 image17038 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17038 : Bundle := named_bundle% "RealMapCertificates/relations/basis17038.json"
theorem reductionProof17038 : EqualModuloRelations reduction17038.relations reduction17038.input reduction17038.output := by lin_cert using reduction17038.terms
theorem substitutionProof17038 : IsMapEvaluation generatorImages reduction17038.relations [1949] reduction17038.output := by lin_cert using reduction17038.terms
def image17039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17039 : InImage map_18_238 image17039 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17039 : Bundle := named_bundle% "RealMapCertificates/relations/basis17039.json"
theorem reductionProof17039 : EqualModuloRelations reduction17039.relations reduction17039.input reduction17039.output := by lin_cert using reduction17039.terms
theorem substitutionProof17039 : IsMapEvaluation generatorImages reduction17039.relations [1948] reduction17039.output := by lin_cert using reduction17039.terms
def image17040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17040 : InImage map_18_238 image17040 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17040 : Bundle := named_bundle% "RealMapCertificates/relations/basis17040.json"
theorem reductionProof17040 : EqualModuloRelations reduction17040.relations reduction17040.input reduction17040.output := by lin_cert using reduction17040.terms
theorem substitutionProof17040 : IsMapEvaluation generatorImages reduction17040.relations [219,324] reduction17040.output := by lin_cert using reduction17040.terms
def image17041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17041 : InImage map_18_238 image17041 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17041 : Bundle := named_bundle% "RealMapCertificates/relations/basis17041.json"
theorem reductionProof17041 : EqualModuloRelations reduction17041.relations reduction17041.input reduction17041.output := by lin_cert using reduction17041.terms
theorem substitutionProof17041 : IsMapEvaluation generatorImages reduction17041.relations [3,1744] reduction17041.output := by lin_cert using reduction17041.terms
def image17042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17042 : InImage map_18_238 image17042 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17042 : Bundle := named_bundle% "RealMapCertificates/relations/basis17042.json"
theorem reductionProof17042 : EqualModuloRelations reduction17042.relations reduction17042.input reduction17042.output := by lin_cert using reduction17042.terms
theorem substitutionProof17042 : IsMapEvaluation generatorImages reduction17042.relations [0,1918] reduction17042.output := by lin_cert using reduction17042.terms
def image17043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17043 : InImage map_18_238 image17043 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17043 : Bundle := named_bundle% "RealMapCertificates/relations/basis17043.json"
theorem reductionProof17043 : EqualModuloRelations reduction17043.relations reduction17043.input reduction17043.output := by lin_cert using reduction17043.terms
theorem substitutionProof17043 : IsMapEvaluation generatorImages reduction17043.relations [0,1917] reduction17043.output := by lin_cert using reduction17043.terms
def map_18_239 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17299 : InImage map_18_239 image17299 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17299 : Bundle := named_bundle% "RealMapCertificates/relations/basis17299.json"
theorem reductionProof17299 : EqualModuloRelations reduction17299.relations reduction17299.input reduction17299.output := by lin_cert using reduction17299.terms
theorem substitutionProof17299 : IsMapEvaluation generatorImages reduction17299.relations [1975] reduction17299.output := by lin_cert using reduction17299.terms
def image17300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17300 : InImage map_18_239 image17300 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17300 : Bundle := named_bundle% "RealMapCertificates/relations/basis17300.json"
theorem reductionProof17300 : EqualModuloRelations reduction17300.relations reduction17300.input reduction17300.output := by lin_cert using reduction17300.terms
theorem substitutionProof17300 : IsMapEvaluation generatorImages reduction17300.relations [1974] reduction17300.output := by lin_cert using reduction17300.terms
def image17301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17301 : InImage map_18_239 image17301 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17301 : Bundle := named_bundle% "RealMapCertificates/relations/basis17301.json"
theorem reductionProof17301 : EqualModuloRelations reduction17301.relations reduction17301.input reduction17301.output := by lin_cert using reduction17301.terms
theorem substitutionProof17301 : IsMapEvaluation generatorImages reduction17301.relations [8,13,80,324] reduction17301.output := by lin_cert using reduction17301.terms
def image17302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17302 : InImage map_18_239 image17302 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17302 : Bundle := named_bundle% "RealMapCertificates/relations/basis17302.json"
theorem reductionProof17302 : EqualModuloRelations reduction17302.relations reduction17302.input reduction17302.output := by lin_cert using reduction17302.terms
theorem substitutionProof17302 : IsMapEvaluation generatorImages reduction17302.relations [0,1950] reduction17302.output := by lin_cert using reduction17302.terms
def image17303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17303 : InImage map_18_239 image17303 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17303 : Bundle := named_bundle% "RealMapCertificates/relations/basis17303.json"
theorem reductionProof17303 : EqualModuloRelations reduction17303.relations reduction17303.input reduction17303.output := by lin_cert using reduction17303.terms
theorem substitutionProof17303 : IsMapEvaluation generatorImages reduction17303.relations [0,3,1745] reduction17303.output := by lin_cert using reduction17303.terms
def image17304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17304 : InImage map_18_239 image17304 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17304 : Bundle := named_bundle% "RealMapCertificates/relations/basis17304.json"
theorem reductionProof17304 : EqualModuloRelations reduction17304.relations reduction17304.input reduction17304.output := by lin_cert using reduction17304.terms
theorem substitutionProof17304 : IsMapEvaluation generatorImages reduction17304.relations [0,0,3,1731] reduction17304.output := by lin_cert using reduction17304.terms
def map_18_240 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17567 : InImage map_18_240 image17567 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17567 : Bundle := named_bundle% "RealMapCertificates/relations/basis17567.json"
theorem reductionProof17567 : EqualModuloRelations reduction17567.relations reduction17567.input reduction17567.output := by lin_cert using reduction17567.terms
theorem substitutionProof17567 : IsMapEvaluation generatorImages reduction17567.relations [2014] reduction17567.output := by lin_cert using reduction17567.terms
def image17568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17568 : InImage map_18_240 image17568 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17568 : Bundle := named_bundle% "RealMapCertificates/relations/basis17568.json"
theorem reductionProof17568 : EqualModuloRelations reduction17568.relations reduction17568.input reduction17568.output := by lin_cert using reduction17568.terms
theorem substitutionProof17568 : IsMapEvaluation generatorImages reduction17568.relations [2013] reduction17568.output := by lin_cert using reduction17568.terms
def image17569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17569 : InImage map_18_240 image17569 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17569 : Bundle := named_bundle% "RealMapCertificates/relations/basis17569.json"
theorem reductionProof17569 : EqualModuloRelations reduction17569.relations reduction17569.input reduction17569.output := by lin_cert using reduction17569.terms
theorem substitutionProof17569 : IsMapEvaluation generatorImages reduction17569.relations [2012] reduction17569.output := by lin_cert using reduction17569.terms
def image17570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17570 : InImage map_18_240 image17570 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17570 : Bundle := named_bundle% "RealMapCertificates/relations/basis17570.json"
theorem reductionProof17570 : EqualModuloRelations reduction17570.relations reduction17570.input reduction17570.output := by lin_cert using reduction17570.terms
theorem substitutionProof17570 : IsMapEvaluation generatorImages reduction17570.relations [95,734] reduction17570.output := by lin_cert using reduction17570.terms
def image17571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17571 : InImage map_18_240 image17571 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17571 : Bundle := named_bundle% "RealMapCertificates/relations/basis17571.json"
theorem reductionProof17571 : EqualModuloRelations reduction17571.relations reduction17571.input reduction17571.output := by lin_cert using reduction17571.terms
theorem substitutionProof17571 : IsMapEvaluation generatorImages reduction17571.relations [43,1056] reduction17571.output := by lin_cert using reduction17571.terms
def image17572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17572 : InImage map_18_240 image17572 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17572 : Bundle := named_bundle% "RealMapCertificates/relations/basis17572.json"
theorem reductionProof17572 : EqualModuloRelations reduction17572.relations reduction17572.input reduction17572.output := by lin_cert using reduction17572.terms
theorem substitutionProof17572 : IsMapEvaluation generatorImages reduction17572.relations [43,1055] reduction17572.output := by lin_cert using reduction17572.terms
def image17573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17573 : InImage map_18_240 image17573 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17573 : Bundle := named_bundle% "RealMapCertificates/relations/basis17573.json"
theorem reductionProof17573 : EqualModuloRelations reduction17573.relations reduction17573.input reduction17573.output := by lin_cert using reduction17573.terms
theorem substitutionProof17573 : IsMapEvaluation generatorImages reduction17573.relations [3,1793] reduction17573.output := by lin_cert using reduction17573.terms
def image17574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17574 : InImage map_18_240 image17574 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17574 : Bundle := named_bundle% "RealMapCertificates/relations/basis17574.json"
theorem reductionProof17574 : EqualModuloRelations reduction17574.relations reduction17574.input reduction17574.output := by lin_cert using reduction17574.terms
theorem substitutionProof17574 : IsMapEvaluation generatorImages reduction17574.relations [0,1976] reduction17574.output := by lin_cert using reduction17574.terms
def map_18_241 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image17812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17812 : InImage map_18_241 image17812 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction17812 : Bundle := named_bundle% "RealMapCertificates/relations/basis17812.json"
theorem reductionProof17812 : EqualModuloRelations reduction17812.relations reduction17812.input reduction17812.output := by lin_cert using reduction17812.terms
theorem substitutionProof17812 : IsMapEvaluation generatorImages reduction17812.relations [2054] reduction17812.output := by lin_cert using reduction17812.terms
def image17813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17813 : InImage map_18_241 image17813 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction17813 : Bundle := named_bundle% "RealMapCertificates/relations/basis17813.json"
theorem reductionProof17813 : EqualModuloRelations reduction17813.relations reduction17813.input reduction17813.output := by lin_cert using reduction17813.terms
theorem substitutionProof17813 : IsMapEvaluation generatorImages reduction17813.relations [2053] reduction17813.output := by lin_cert using reduction17813.terms
def image17814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17814 : InImage map_18_241 image17814 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction17814 : Bundle := named_bundle% "RealMapCertificates/relations/basis17814.json"
theorem reductionProof17814 : EqualModuloRelations reduction17814.relations reduction17814.input reduction17814.output := by lin_cert using reduction17814.terms
theorem substitutionProof17814 : IsMapEvaluation generatorImages reduction17814.relations [190,450] reduction17814.output := by lin_cert using reduction17814.terms
def image17815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17815 : InImage map_18_241 image17815 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction17815 : Bundle := named_bundle% "RealMapCertificates/relations/basis17815.json"
theorem reductionProof17815 : EqualModuloRelations reduction17815.relations reduction17815.input reduction17815.output := by lin_cert using reduction17815.terms
theorem substitutionProof17815 : IsMapEvaluation generatorImages reduction17815.relations [0,2020] reduction17815.output := by lin_cert using reduction17815.terms
def image17816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17816 : InImage map_18_241 image17816 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction17816 : Bundle := named_bundle% "RealMapCertificates/relations/basis17816.json"
theorem reductionProof17816 : EqualModuloRelations reduction17816.relations reduction17816.input reduction17816.output := by lin_cert using reduction17816.terms
theorem substitutionProof17816 : IsMapEvaluation generatorImages reduction17816.relations [0,2019] reduction17816.output := by lin_cert using reduction17816.terms
def image17817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17817 : InImage map_18_241 image17817 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction17817 : Bundle := named_bundle% "RealMapCertificates/relations/basis17817.json"
theorem reductionProof17817 : EqualModuloRelations reduction17817.relations reduction17817.input reduction17817.output := by lin_cert using reduction17817.terms
theorem substitutionProof17817 : IsMapEvaluation generatorImages reduction17817.relations [0,2016] reduction17817.output := by lin_cert using reduction17817.terms
def image17818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17818 : InImage map_18_241 image17818 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction17818 : Bundle := named_bundle% "RealMapCertificates/relations/basis17818.json"
theorem reductionProof17818 : EqualModuloRelations reduction17818.relations reduction17818.input reduction17818.output := by lin_cert using reduction17818.terms
theorem substitutionProof17818 : IsMapEvaluation generatorImages reduction17818.relations [0,2015] reduction17818.output := by lin_cert using reduction17818.terms
def image17819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17819 : InImage map_18_241 image17819 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction17819 : Bundle := named_bundle% "RealMapCertificates/relations/basis17819.json"
theorem reductionProof17819 : EqualModuloRelations reduction17819.relations reduction17819.input reduction17819.output := by lin_cert using reduction17819.terms
theorem substitutionProof17819 : IsMapEvaluation generatorImages reduction17819.relations [0,3,1794] reduction17819.output := by lin_cert using reduction17819.terms
def image17820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17820 : InImage map_18_241 image17820 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction17820 : Bundle := named_bundle% "RealMapCertificates/relations/basis17820.json"
theorem reductionProof17820 : EqualModuloRelations reduction17820.relations reduction17820.input reduction17820.output := by lin_cert using reduction17820.terms
theorem substitutionProof17820 : IsMapEvaluation generatorImages reduction17820.relations [0,0,226,324] reduction17820.output := by lin_cert using reduction17820.terms
def map_18_242 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18077 : InImage map_18_242 image18077 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18077 : Bundle := named_bundle% "RealMapCertificates/relations/basis18077.json"
theorem reductionProof18077 : EqualModuloRelations reduction18077.relations reduction18077.input reduction18077.output := by lin_cert using reduction18077.terms
theorem substitutionProof18077 : IsMapEvaluation generatorImages reduction18077.relations [2072] reduction18077.output := by lin_cert using reduction18077.terms
def image18078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18078 : InImage map_18_242 image18078 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18078 : Bundle := named_bundle% "RealMapCertificates/relations/basis18078.json"
theorem reductionProof18078 : EqualModuloRelations reduction18078.relations reduction18078.input reduction18078.output := by lin_cert using reduction18078.terms
theorem substitutionProof18078 : IsMapEvaluation generatorImages reduction18078.relations [9,13,80,324] reduction18078.output := by lin_cert using reduction18078.terms
def image18079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18079 : InImage map_18_242 image18079 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18079 : Bundle := named_bundle% "RealMapCertificates/relations/basis18079.json"
theorem reductionProof18079 : EqualModuloRelations reduction18079.relations reduction18079.input reduction18079.output := by lin_cert using reduction18079.terms
theorem substitutionProof18079 : IsMapEvaluation generatorImages reduction18079.relations [1,2019] reduction18079.output := by lin_cert using reduction18079.terms
def image18080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18080 : InImage map_18_242 image18080 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18080 : Bundle := named_bundle% "RealMapCertificates/relations/basis18080.json"
theorem reductionProof18080 : EqualModuloRelations reduction18080.relations reduction18080.input reduction18080.output := by lin_cert using reduction18080.terms
theorem substitutionProof18080 : IsMapEvaluation generatorImages reduction18080.relations [1,2015] reduction18080.output := by lin_cert using reduction18080.terms
def image18081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18081 : InImage map_18_242 image18081 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18081 : Bundle := named_bundle% "RealMapCertificates/relations/basis18081.json"
theorem reductionProof18081 : EqualModuloRelations reduction18081.relations reduction18081.input reduction18081.output := by lin_cert using reduction18081.terms
theorem substitutionProof18081 : IsMapEvaluation generatorImages reduction18081.relations [0,2055] reduction18081.output := by lin_cert using reduction18081.terms
def image18082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18082 : InImage map_18_242 image18082 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18082 : Bundle := named_bundle% "RealMapCertificates/relations/basis18082.json"
theorem reductionProof18082 : EqualModuloRelations reduction18082.relations reduction18082.input reduction18082.output := by lin_cert using reduction18082.terms
theorem substitutionProof18082 : IsMapEvaluation generatorImages reduction18082.relations [0,0,0,1981] reduction18082.output := by lin_cert using reduction18082.terms
def image18083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18083 : InImage map_18_242 image18083 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18083 : Bundle := named_bundle% "RealMapCertificates/relations/basis18083.json"
theorem reductionProof18083 : EqualModuloRelations reduction18083.relations reduction18083.input reduction18083.output := by lin_cert using reduction18083.terms
theorem substitutionProof18083 : IsMapEvaluation generatorImages reduction18083.relations [0,0,0,1979] reduction18083.output := by lin_cert using reduction18083.terms
def map_18_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18351 : InImage map_18_243 image18351 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18351 : Bundle := named_bundle% "RealMapCertificates/relations/basis18351.json"
theorem reductionProof18351 : EqualModuloRelations reduction18351.relations reduction18351.input reduction18351.output := by lin_cert using reduction18351.terms
theorem substitutionProof18351 : IsMapEvaluation generatorImages reduction18351.relations [2113] reduction18351.output := by lin_cert using reduction18351.terms
def image18352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18352 : InImage map_18_243 image18352 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18352 : Bundle := named_bundle% "RealMapCertificates/relations/basis18352.json"
theorem reductionProof18352 : EqualModuloRelations reduction18352.relations reduction18352.input reduction18352.output := by lin_cert using reduction18352.terms
theorem substitutionProof18352 : IsMapEvaluation generatorImages reduction18352.relations [3,1877] reduction18352.output := by lin_cert using reduction18352.terms
def image18353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18353 : InImage map_18_243 image18353 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18353 : Bundle := named_bundle% "RealMapCertificates/relations/basis18353.json"
theorem reductionProof18353 : EqualModuloRelations reduction18353.relations reduction18353.input reduction18353.output := by lin_cert using reduction18353.terms
theorem substitutionProof18353 : IsMapEvaluation generatorImages reduction18353.relations [3,1876] reduction18353.output := by lin_cert using reduction18353.terms
def image18354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18354 : InImage map_18_243 image18354 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18354 : Bundle := named_bundle% "RealMapCertificates/relations/basis18354.json"
theorem reductionProof18354 : EqualModuloRelations reduction18354.relations reduction18354.input reduction18354.output := by lin_cert using reduction18354.terms
theorem substitutionProof18354 : IsMapEvaluation generatorImages reduction18354.relations [0,2074] reduction18354.output := by lin_cert using reduction18354.terms
def image18355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18355 : InImage map_18_243 image18355 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18355 : Bundle := named_bundle% "RealMapCertificates/relations/basis18355.json"
theorem reductionProof18355 : EqualModuloRelations reduction18355.relations reduction18355.input reduction18355.output := by lin_cert using reduction18355.terms
theorem substitutionProof18355 : IsMapEvaluation generatorImages reduction18355.relations [0,43,1091] reduction18355.output := by lin_cert using reduction18355.terms
def map_18_244 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18555 : InImage map_18_244 image18555 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18555 : Bundle := named_bundle% "RealMapCertificates/relations/basis18555.json"
theorem reductionProof18555 : EqualModuloRelations reduction18555.relations reduction18555.input reduction18555.output := by lin_cert using reduction18555.terms
theorem substitutionProof18555 : IsMapEvaluation generatorImages reduction18555.relations [13,150,324] reduction18555.output := by lin_cert using reduction18555.terms
def image18556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18556 : InImage map_18_244 image18556 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18556 : Bundle := named_bundle% "RealMapCertificates/relations/basis18556.json"
theorem reductionProof18556 : EqualModuloRelations reduction18556.relations reduction18556.input reduction18556.output := by lin_cert using reduction18556.terms
theorem substitutionProof18556 : IsMapEvaluation generatorImages reduction18556.relations [2,2015] reduction18556.output := by lin_cert using reduction18556.terms
def image18557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18557 : InImage map_18_244 image18557 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18557 : Bundle := named_bundle% "RealMapCertificates/relations/basis18557.json"
theorem reductionProof18557 : EqualModuloRelations reduction18557.relations reduction18557.input reduction18557.output := by lin_cert using reduction18557.terms
theorem substitutionProof18557 : IsMapEvaluation generatorImages reduction18557.relations [1,2075] reduction18557.output := by lin_cert using reduction18557.terms
def image18558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18558 : InImage map_18_244 image18558 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18558 : Bundle := named_bundle% "RealMapCertificates/relations/basis18558.json"
theorem reductionProof18558 : EqualModuloRelations reduction18558.relations reduction18558.input reduction18558.output := by lin_cert using reduction18558.terms
theorem substitutionProof18558 : IsMapEvaluation generatorImages reduction18558.relations [1,2073] reduction18558.output := by lin_cert using reduction18558.terms
def image18559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18559 : InImage map_18_244 image18559 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18559 : Bundle := named_bundle% "RealMapCertificates/relations/basis18559.json"
theorem reductionProof18559 : EqualModuloRelations reduction18559.relations reduction18559.input reduction18559.output := by lin_cert using reduction18559.terms
theorem substitutionProof18559 : IsMapEvaluation generatorImages reduction18559.relations [0,3,1878] reduction18559.output := by lin_cert using reduction18559.terms
def image18560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18560 : InImage map_18_244 image18560 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18560 : Bundle := named_bundle% "RealMapCertificates/relations/basis18560.json"
theorem reductionProof18560 : EqualModuloRelations reduction18560.relations reduction18560.input reduction18560.output := by lin_cert using reduction18560.terms
theorem substitutionProof18560 : IsMapEvaluation generatorImages reduction18560.relations [0,3,197,352] reduction18560.output := by lin_cert using reduction18560.terms
def image18561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18561 : InImage map_18_244 image18561 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18561 : Bundle := named_bundle% "RealMapCertificates/relations/basis18561.json"
theorem reductionProof18561 : EqualModuloRelations reduction18561.relations reduction18561.input reduction18561.output := by lin_cert using reduction18561.terms
theorem substitutionProof18561 : IsMapEvaluation generatorImages reduction18561.relations [0,0,2077] reduction18561.output := by lin_cert using reduction18561.terms
def map_18_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18823 : InImage map_18_245 image18823 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18823 : Bundle := named_bundle% "RealMapCertificates/relations/basis18823.json"
theorem reductionProof18823 : EqualModuloRelations reduction18823.relations reduction18823.input reduction18823.output := by lin_cert using reduction18823.terms
theorem substitutionProof18823 : IsMapEvaluation generatorImages reduction18823.relations [13,13,80,324] reduction18823.output := by lin_cert using reduction18823.terms
def image18824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18824 : InImage map_18_245 image18824 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18824 : Bundle := named_bundle% "RealMapCertificates/relations/basis18824.json"
theorem reductionProof18824 : EqualModuloRelations reduction18824.relations reduction18824.input reduction18824.output := by lin_cert using reduction18824.terms
theorem substitutionProof18824 : IsMapEvaluation generatorImages reduction18824.relations [7,1729] reduction18824.output := by lin_cert using reduction18824.terms
def image18825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18825 : InImage map_18_245 image18825 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18825 : Bundle := named_bundle% "RealMapCertificates/relations/basis18825.json"
theorem reductionProof18825 : EqualModuloRelations reduction18825.relations reduction18825.input reduction18825.output := by lin_cert using reduction18825.terms
theorem substitutionProof18825 : IsMapEvaluation generatorImages reduction18825.relations [3,1918] reduction18825.output := by lin_cert using reduction18825.terms
def image18826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18826 : InImage map_18_245 image18826 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18826 : Bundle := named_bundle% "RealMapCertificates/relations/basis18826.json"
theorem reductionProof18826 : EqualModuloRelations reduction18826.relations reduction18826.input reduction18826.output := by lin_cert using reduction18826.terms
theorem substitutionProof18826 : IsMapEvaluation generatorImages reduction18826.relations [1,2114] reduction18826.output := by lin_cert using reduction18826.terms
def image18827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18827 : InImage map_18_245 image18827 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18827 : Bundle := named_bundle% "RealMapCertificates/relations/basis18827.json"
theorem reductionProof18827 : EqualModuloRelations reduction18827.relations reduction18827.input reduction18827.output := by lin_cert using reduction18827.terms
theorem substitutionProof18827 : IsMapEvaluation generatorImages reduction18827.relations [0,2146] reduction18827.output := by lin_cert using reduction18827.terms
def map_18_246 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19129 : InImage map_18_246 image19129 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19129 : Bundle := named_bundle% "RealMapCertificates/relations/basis19129.json"
theorem reductionProof19129 : EqualModuloRelations reduction19129.relations reduction19129.input reduction19129.output := by lin_cert using reduction19129.terms
theorem substitutionProof19129 : IsMapEvaluation generatorImages reduction19129.relations [2227] reduction19129.output := by lin_cert using reduction19129.terms
def image19130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19130 : InImage map_18_246 image19130 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19130 : Bundle := named_bundle% "RealMapCertificates/relations/basis19130.json"
theorem reductionProof19130 : EqualModuloRelations reduction19130.relations reduction19130.input reduction19130.output := by lin_cert using reduction19130.terms
theorem substitutionProof19130 : IsMapEvaluation generatorImages reduction19130.relations [2,2073] reduction19130.output := by lin_cert using reduction19130.terms
def image19131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19131 : InImage map_18_246 image19131 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19131 : Bundle := named_bundle% "RealMapCertificates/relations/basis19131.json"
theorem reductionProof19131 : EqualModuloRelations reduction19131.relations reduction19131.input reduction19131.output := by lin_cert using reduction19131.terms
theorem substitutionProof19131 : IsMapEvaluation generatorImages reduction19131.relations [0,2184] reduction19131.output := by lin_cert using reduction19131.terms
def image19132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19132 : InImage map_18_246 image19132 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19132 : Bundle := named_bundle% "RealMapCertificates/relations/basis19132.json"
theorem reductionProof19132 : EqualModuloRelations reduction19132.relations reduction19132.input reduction19132.output := by lin_cert using reduction19132.terms
theorem substitutionProof19132 : IsMapEvaluation generatorImages reduction19132.relations [0,254,324] reduction19132.output := by lin_cert using reduction19132.terms
def image19133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19133 : InImage map_18_246 image19133 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19133 : Bundle := named_bundle% "RealMapCertificates/relations/basis19133.json"
theorem reductionProof19133 : EqualModuloRelations reduction19133.relations reduction19133.input reduction19133.output := by lin_cert using reduction19133.terms
theorem substitutionProof19133 : IsMapEvaluation generatorImages reduction19133.relations [0,3,3,1731] reduction19133.output := by lin_cert using reduction19133.terms
def image19134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19134 : InImage map_18_246 image19134 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19134 : Bundle := named_bundle% "RealMapCertificates/relations/basis19134.json"
theorem reductionProof19134 : EqualModuloRelations reduction19134.relations reduction19134.input reduction19134.output := by lin_cert using reduction19134.terms
theorem substitutionProof19134 : IsMapEvaluation generatorImages reduction19134.relations [0,0,2147] reduction19134.output := by lin_cert using reduction19134.terms
def image19135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19135 : InImage map_18_246 image19135 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19135 : Bundle := named_bundle% "RealMapCertificates/relations/basis19135.json"
theorem reductionProof19135 : EqualModuloRelations reduction19135.relations reduction19135.input reduction19135.output := by lin_cert using reduction19135.terms
theorem substitutionProof19135 : IsMapEvaluation generatorImages reduction19135.relations [0,0,43,1118] reduction19135.output := by lin_cert using reduction19135.terms
def map_18_247 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19359 : InImage map_18_247 image19359 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19359 : Bundle := named_bundle% "RealMapCertificates/relations/basis19359.json"
theorem reductionProof19359 : EqualModuloRelations reduction19359.relations reduction19359.input reduction19359.output := by lin_cert using reduction19359.terms
theorem substitutionProof19359 : IsMapEvaluation generatorImages reduction19359.relations [2267] reduction19359.output := by lin_cert using reduction19359.terms
def image19360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19360 : InImage map_18_247 image19360 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19360 : Bundle := named_bundle% "RealMapCertificates/relations/basis19360.json"
theorem reductionProof19360 : EqualModuloRelations reduction19360.relations reduction19360.input reduction19360.output := by lin_cert using reduction19360.terms
theorem substitutionProof19360 : IsMapEvaluation generatorImages reduction19360.relations [2266] reduction19360.output := by lin_cert using reduction19360.terms
def image19361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19361 : InImage map_18_247 image19361 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19361 : Bundle := named_bundle% "RealMapCertificates/relations/basis19361.json"
theorem reductionProof19361 : EqualModuloRelations reduction19361.relations reduction19361.input reduction19361.output := by lin_cert using reduction19361.terms
theorem substitutionProof19361 : IsMapEvaluation generatorImages reduction19361.relations [2265] reduction19361.output := by lin_cert using reduction19361.terms
def image19362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19362 : InImage map_18_247 image19362 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19362 : Bundle := named_bundle% "RealMapCertificates/relations/basis19362.json"
theorem reductionProof19362 : EqualModuloRelations reduction19362.relations reduction19362.input reduction19362.output := by lin_cert using reduction19362.terms
theorem substitutionProof19362 : IsMapEvaluation generatorImages reduction19362.relations [2264] reduction19362.output := by lin_cert using reduction19362.terms
def image19363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19363 : InImage map_18_247 image19363 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19363 : Bundle := named_bundle% "RealMapCertificates/relations/basis19363.json"
theorem reductionProof19363 : EqualModuloRelations reduction19363.relations reduction19363.input reduction19363.output := by lin_cert using reduction19363.terms
theorem substitutionProof19363 : IsMapEvaluation generatorImages reduction19363.relations [0,2228] reduction19363.output := by lin_cert using reduction19363.terms
def image19364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19364 : InImage map_18_247 image19364 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19364 : Bundle := named_bundle% "RealMapCertificates/relations/basis19364.json"
theorem reductionProof19364 : EqualModuloRelations reduction19364.relations reduction19364.input reduction19364.output := by lin_cert using reduction19364.terms
theorem substitutionProof19364 : IsMapEvaluation generatorImages reduction19364.relations [0,0,255,324] reduction19364.output := by lin_cert using reduction19364.terms
end RealMapCertificates
