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
  | 67 => []
  | 70 => []
  | 105 => []
  | 133 => []
  | 190 => []
  | 266 => []
  | 267 => []
  | 292 => []
  | 300 => []
  | 302 => []
  | 318 => []
  | 324 => []
  | 333 => []
  | 357 => []
  | 544 => []
  | 1057 => []
  | 1120 => []
  | 1799 => []
  | 1801 => []
  | 1979 => []
  | 1981 => []
  | 2055 => []
  | 2146 => []
  | 2231 => []
  | 2268 => []
  | 2270 => []
  | 2292 => []
  | 2293 => []
  | 2294 => []
  | 2295 => []
  | 2328 => []
  | 2360 => []
  | 2361 => []
  | 2362 => []
  | 2364 => []
  | 2395 => []
  | 2396 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2469 => []
  | 2470 => []
  | 2471 => []
  | 2472 => []
  | 2473 => []
  | 2474 => []
  | 2475 => []
  | 2476 => []
  | 2478 => []
  | 2480 => []
  | 2519 => []
  | 2520 => []
  | 2521 => []
  | 2522 => []
  | 2565 => []
  | 2566 => []
  | 2567 => []
  | 2568 => []
  | 2569 => []
  | 2570 => []
  | 2611 => []
  | 2612 => []
  | 2613 => []
  | 2614 => []
  | 2616 => []
  | 2655 => []
  | 2656 => []
  | 2657 => []
  | 2659 => []
  | 2660 => []
  | 2662 => []
  | 2694 => []
  | 2695 => []
  | 2696 => []
  | 2697 => []
  | 2699 => []
  | 2701 => []
  | 2703 => []
  | 2705 => []
  | 2706 => []
  | 2768 => []
  | 2769 => []
  | 2770 => []
  | 2771 => []
  | 2834 => []
  | 2835 => []
  | 2836 => []
  | _ => []
def map_18_248 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19629 : InImage map_18_248 image19629 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19629 : Bundle := named_bundle% "RealMapCertificates/relations/basis19629.json"
theorem reductionProof19629 : EqualModuloRelations reduction19629.relations reduction19629.input reduction19629.output := by lin_cert using reduction19629.terms
theorem substitutionProof19629 : IsMapEvaluation generatorImages reduction19629.relations [2293] reduction19629.output := by lin_cert using reduction19629.terms
def image19630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19630 : InImage map_18_248 image19630 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19630 : Bundle := named_bundle% "RealMapCertificates/relations/basis19630.json"
theorem reductionProof19630 : EqualModuloRelations reduction19630.relations reduction19630.input reduction19630.output := by lin_cert using reduction19630.terms
theorem substitutionProof19630 : IsMapEvaluation generatorImages reduction19630.relations [2292] reduction19630.output := by lin_cert using reduction19630.terms
def image19631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19631 : InImage map_18_248 image19631 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19631 : Bundle := named_bundle% "RealMapCertificates/relations/basis19631.json"
theorem reductionProof19631 : EqualModuloRelations reduction19631.relations reduction19631.input reduction19631.output := by lin_cert using reduction19631.terms
theorem substitutionProof19631 : IsMapEvaluation generatorImages reduction19631.relations [0,2268] reduction19631.output := by lin_cert using reduction19631.terms
def image19632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19632 : InImage map_18_248 image19632 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19632 : Bundle := named_bundle% "RealMapCertificates/relations/basis19632.json"
theorem reductionProof19632 : EqualModuloRelations reduction19632.relations reduction19632.input reduction19632.output := by lin_cert using reduction19632.terms
theorem substitutionProof19632 : IsMapEvaluation generatorImages reduction19632.relations [0,0,2231] reduction19632.output := by lin_cert using reduction19632.terms
def map_18_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19937 : InImage map_18_249 image19937 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19937 : Bundle := named_bundle% "RealMapCertificates/relations/basis19937.json"
theorem reductionProof19937 : EqualModuloRelations reduction19937.relations reduction19937.input reduction19937.output := by lin_cert using reduction19937.terms
theorem substitutionProof19937 : IsMapEvaluation generatorImages reduction19937.relations [2328] reduction19937.output := by lin_cert using reduction19937.terms
def image19938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19938 : InImage map_18_249 image19938 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19938 : Bundle := named_bundle% "RealMapCertificates/relations/basis19938.json"
theorem reductionProof19938 : EqualModuloRelations reduction19938.relations reduction19938.input reduction19938.output := by lin_cert using reduction19938.terms
theorem substitutionProof19938 : IsMapEvaluation generatorImages reduction19938.relations [1,2268] reduction19938.output := by lin_cert using reduction19938.terms
def image19939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19939 : InImage map_18_249 image19939 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19939 : Bundle := named_bundle% "RealMapCertificates/relations/basis19939.json"
theorem reductionProof19939 : EqualModuloRelations reduction19939.relations reduction19939.input reduction19939.output := by lin_cert using reduction19939.terms
theorem substitutionProof19939 : IsMapEvaluation generatorImages reduction19939.relations [0,2294] reduction19939.output := by lin_cert using reduction19939.terms
def image19940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19940 : InImage map_18_249 image19940 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19940 : Bundle := named_bundle% "RealMapCertificates/relations/basis19940.json"
theorem reductionProof19940 : EqualModuloRelations reduction19940.relations reduction19940.input reduction19940.output := by lin_cert using reduction19940.terms
theorem substitutionProof19940 : IsMapEvaluation generatorImages reduction19940.relations [0,0,2270] reduction19940.output := by lin_cert using reduction19940.terms
def image19941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19941 : InImage map_18_249 image19941 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19941 : Bundle := named_bundle% "RealMapCertificates/relations/basis19941.json"
theorem reductionProof19941 : EqualModuloRelations reduction19941.relations reduction19941.input reduction19941.output := by lin_cert using reduction19941.terms
theorem substitutionProof19941 : IsMapEvaluation generatorImages reduction19941.relations [0,0,3,1981] reduction19941.output := by lin_cert using reduction19941.terms
def image19942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19942 : InImage map_18_249 image19942 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19942 : Bundle := named_bundle% "RealMapCertificates/relations/basis19942.json"
theorem reductionProof19942 : EqualModuloRelations reduction19942.relations reduction19942.input reduction19942.output := by lin_cert using reduction19942.terms
theorem substitutionProof19942 : IsMapEvaluation generatorImages reduction19942.relations [0,0,3,1979] reduction19942.output := by lin_cert using reduction19942.terms
def map_18_250 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20161 : InImage map_18_250 image20161 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20161 : Bundle := named_bundle% "RealMapCertificates/relations/basis20161.json"
theorem reductionProof20161 : EqualModuloRelations reduction20161.relations reduction20161.input reduction20161.output := by lin_cert using reduction20161.terms
theorem substitutionProof20161 : IsMapEvaluation generatorImages reduction20161.relations [2362] reduction20161.output := by lin_cert using reduction20161.terms
def image20162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20162 : InImage map_18_250 image20162 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20162 : Bundle := named_bundle% "RealMapCertificates/relations/basis20162.json"
theorem reductionProof20162 : EqualModuloRelations reduction20162.relations reduction20162.input reduction20162.output := by lin_cert using reduction20162.terms
theorem substitutionProof20162 : IsMapEvaluation generatorImages reduction20162.relations [2361] reduction20162.output := by lin_cert using reduction20162.terms
def image20163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20163 : InImage map_18_250 image20163 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20163 : Bundle := named_bundle% "RealMapCertificates/relations/basis20163.json"
theorem reductionProof20163 : EqualModuloRelations reduction20163.relations reduction20163.input reduction20163.output := by lin_cert using reduction20163.terms
theorem substitutionProof20163 : IsMapEvaluation generatorImages reduction20163.relations [2360] reduction20163.output := by lin_cert using reduction20163.terms
def image20164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20164 : InImage map_18_250 image20164 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20164 : Bundle := named_bundle% "RealMapCertificates/relations/basis20164.json"
theorem reductionProof20164 : EqualModuloRelations reduction20164.relations reduction20164.input reduction20164.output := by lin_cert using reduction20164.terms
theorem substitutionProof20164 : IsMapEvaluation generatorImages reduction20164.relations [190,544] reduction20164.output := by lin_cert using reduction20164.terms
def image20165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20165 : InImage map_18_250 image20165 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20165 : Bundle := named_bundle% "RealMapCertificates/relations/basis20165.json"
theorem reductionProof20165 : EqualModuloRelations reduction20165.relations reduction20165.input reduction20165.output := by lin_cert using reduction20165.terms
theorem substitutionProof20165 : IsMapEvaluation generatorImages reduction20165.relations [1,2294] reduction20165.output := by lin_cert using reduction20165.terms
def image20166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20166 : InImage map_18_250 image20166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20166 : Bundle := named_bundle% "RealMapCertificates/relations/basis20166.json"
theorem reductionProof20166 : EqualModuloRelations reduction20166.relations reduction20166.input reduction20166.output := by lin_cert using reduction20166.terms
theorem substitutionProof20166 : IsMapEvaluation generatorImages reduction20166.relations [0,0,266,324] reduction20166.output := by lin_cert using reduction20166.terms
def map_18_251 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20449 : InImage map_18_251 image20449 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20449 : Bundle := named_bundle% "RealMapCertificates/relations/basis20449.json"
theorem reductionProof20449 : EqualModuloRelations reduction20449.relations reduction20449.input reduction20449.output := by lin_cert using reduction20449.terms
theorem substitutionProof20449 : IsMapEvaluation generatorImages reduction20449.relations [2396] reduction20449.output := by lin_cert using reduction20449.terms
def image20450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20450 : InImage map_18_251 image20450 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20450 : Bundle := named_bundle% "RealMapCertificates/relations/basis20450.json"
theorem reductionProof20450 : EqualModuloRelations reduction20450.relations reduction20450.input reduction20450.output := by lin_cert using reduction20450.terms
theorem substitutionProof20450 : IsMapEvaluation generatorImages reduction20450.relations [2395] reduction20450.output := by lin_cert using reduction20450.terms
def image20451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20451 : InImage map_18_251 image20451 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20451 : Bundle := named_bundle% "RealMapCertificates/relations/basis20451.json"
theorem reductionProof20451 : EqualModuloRelations reduction20451.relations reduction20451.input reduction20451.output := by lin_cert using reduction20451.terms
theorem substitutionProof20451 : IsMapEvaluation generatorImages reduction20451.relations [0,2364] reduction20451.output := by lin_cert using reduction20451.terms
def image20452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20452 : InImage map_18_251 image20452 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20452 : Bundle := named_bundle% "RealMapCertificates/relations/basis20452.json"
theorem reductionProof20452 : EqualModuloRelations reduction20452.relations reduction20452.input reduction20452.output := by lin_cert using reduction20452.terms
theorem substitutionProof20452 : IsMapEvaluation generatorImages reduction20452.relations [0,0,0,2295] reduction20452.output := by lin_cert using reduction20452.terms
def map_18_252 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20769 : InImage map_18_252 image20769 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20769 : Bundle := named_bundle% "RealMapCertificates/relations/basis20769.json"
theorem reductionProof20769 : EqualModuloRelations reduction20769.relations reduction20769.input reduction20769.output := by lin_cert using reduction20769.terms
theorem substitutionProof20769 : IsMapEvaluation generatorImages reduction20769.relations [2429] reduction20769.output := by lin_cert using reduction20769.terms
def image20770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20770 : InImage map_18_252 image20770 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20770 : Bundle := named_bundle% "RealMapCertificates/relations/basis20770.json"
theorem reductionProof20770 : EqualModuloRelations reduction20770.relations reduction20770.input reduction20770.output := by lin_cert using reduction20770.terms
theorem substitutionProof20770 : IsMapEvaluation generatorImages reduction20770.relations [13,13,105,324] reduction20770.output := by lin_cert using reduction20770.terms
def image20771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20771 : InImage map_18_252 image20771 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20771 : Bundle := named_bundle% "RealMapCertificates/relations/basis20771.json"
theorem reductionProof20771 : EqualModuloRelations reduction20771.relations reduction20771.input reduction20771.output := by lin_cert using reduction20771.terms
theorem substitutionProof20771 : IsMapEvaluation generatorImages reduction20771.relations [2,2294] reduction20771.output := by lin_cert using reduction20771.terms
def image20772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20772 : InImage map_18_252 image20772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20772 : Bundle := named_bundle% "RealMapCertificates/relations/basis20772.json"
theorem reductionProof20772 : EqualModuloRelations reduction20772.relations reduction20772.input reduction20772.output := by lin_cert using reduction20772.terms
theorem substitutionProof20772 : IsMapEvaluation generatorImages reduction20772.relations [1,2364] reduction20772.output := by lin_cert using reduction20772.terms
def map_18_253 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20991 : InImage map_18_253 image20991 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20991 : Bundle := named_bundle% "RealMapCertificates/relations/basis20991.json"
theorem reductionProof20991 : EqualModuloRelations reduction20991.relations reduction20991.input reduction20991.output := by lin_cert using reduction20991.terms
theorem substitutionProof20991 : IsMapEvaluation generatorImages reduction20991.relations [2473] reduction20991.output := by lin_cert using reduction20991.terms
def image20992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20992 : InImage map_18_253 image20992 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20992 : Bundle := named_bundle% "RealMapCertificates/relations/basis20992.json"
theorem reductionProof20992 : EqualModuloRelations reduction20992.relations reduction20992.input reduction20992.output := by lin_cert using reduction20992.terms
theorem substitutionProof20992 : IsMapEvaluation generatorImages reduction20992.relations [2472] reduction20992.output := by lin_cert using reduction20992.terms
def image20993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20993 : InImage map_18_253 image20993 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20993 : Bundle := named_bundle% "RealMapCertificates/relations/basis20993.json"
theorem reductionProof20993 : EqualModuloRelations reduction20993.relations reduction20993.input reduction20993.output := by lin_cert using reduction20993.terms
theorem substitutionProof20993 : IsMapEvaluation generatorImages reduction20993.relations [2471] reduction20993.output := by lin_cert using reduction20993.terms
def image20994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20994 : InImage map_18_253 image20994 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20994 : Bundle := named_bundle% "RealMapCertificates/relations/basis20994.json"
theorem reductionProof20994 : EqualModuloRelations reduction20994.relations reduction20994.input reduction20994.output := by lin_cert using reduction20994.terms
theorem substitutionProof20994 : IsMapEvaluation generatorImages reduction20994.relations [2470] reduction20994.output := by lin_cert using reduction20994.terms
def image20995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20995 : InImage map_18_253 image20995 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20995 : Bundle := named_bundle% "RealMapCertificates/relations/basis20995.json"
theorem reductionProof20995 : EqualModuloRelations reduction20995.relations reduction20995.input reduction20995.output := by lin_cert using reduction20995.terms
theorem substitutionProof20995 : IsMapEvaluation generatorImages reduction20995.relations [2469] reduction20995.output := by lin_cert using reduction20995.terms
def image20996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20996 : InImage map_18_253 image20996 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20996 : Bundle := named_bundle% "RealMapCertificates/relations/basis20996.json"
theorem reductionProof20996 : EqualModuloRelations reduction20996.relations reduction20996.input reduction20996.output := by lin_cert using reduction20996.terms
theorem substitutionProof20996 : IsMapEvaluation generatorImages reduction20996.relations [292,324] reduction20996.output := by lin_cert using reduction20996.terms
def image20997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20997 : InImage map_18_253 image20997 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20997 : Bundle := named_bundle% "RealMapCertificates/relations/basis20997.json"
theorem reductionProof20997 : EqualModuloRelations reduction20997.relations reduction20997.input reduction20997.output := by lin_cert using reduction20997.terms
theorem substitutionProof20997 : IsMapEvaluation generatorImages reduction20997.relations [0,2431] reduction20997.output := by lin_cert using reduction20997.terms
def image20998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20998 : InImage map_18_253 image20998 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20998 : Bundle := named_bundle% "RealMapCertificates/relations/basis20998.json"
theorem reductionProof20998 : EqualModuloRelations reduction20998.relations reduction20998.input reduction20998.output := by lin_cert using reduction20998.terms
theorem substitutionProof20998 : IsMapEvaluation generatorImages reduction20998.relations [0,2430] reduction20998.output := by lin_cert using reduction20998.terms
def map_18_254 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21300 : InImage map_18_254 image21300 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21300 : Bundle := named_bundle% "RealMapCertificates/relations/basis21300.json"
theorem reductionProof21300 : EqualModuloRelations reduction21300.relations reduction21300.input reduction21300.output := by lin_cert using reduction21300.terms
theorem substitutionProof21300 : IsMapEvaluation generatorImages reduction21300.relations [2521] reduction21300.output := by lin_cert using reduction21300.terms
def image21301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21301 : InImage map_18_254 image21301 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21301 : Bundle := named_bundle% "RealMapCertificates/relations/basis21301.json"
theorem reductionProof21301 : EqualModuloRelations reduction21301.relations reduction21301.input reduction21301.output := by lin_cert using reduction21301.terms
theorem substitutionProof21301 : IsMapEvaluation generatorImages reduction21301.relations [2520] reduction21301.output := by lin_cert using reduction21301.terms
def image21302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21302 : InImage map_18_254 image21302 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21302 : Bundle := named_bundle% "RealMapCertificates/relations/basis21302.json"
theorem reductionProof21302 : EqualModuloRelations reduction21302.relations reduction21302.input reduction21302.output := by lin_cert using reduction21302.terms
theorem substitutionProof21302 : IsMapEvaluation generatorImages reduction21302.relations [2519] reduction21302.output := by lin_cert using reduction21302.terms
def image21303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21303 : InImage map_18_254 image21303 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21303 : Bundle := named_bundle% "RealMapCertificates/relations/basis21303.json"
theorem reductionProof21303 : EqualModuloRelations reduction21303.relations reduction21303.input reduction21303.output := by lin_cert using reduction21303.terms
theorem substitutionProof21303 : IsMapEvaluation generatorImages reduction21303.relations [300,324] reduction21303.output := by lin_cert using reduction21303.terms
def image21304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21304 : InImage map_18_254 image21304 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21304 : Bundle := named_bundle% "RealMapCertificates/relations/basis21304.json"
theorem reductionProof21304 : EqualModuloRelations reduction21304.relations reduction21304.input reduction21304.output := by lin_cert using reduction21304.terms
theorem substitutionProof21304 : IsMapEvaluation generatorImages reduction21304.relations [2,2364] reduction21304.output := by lin_cert using reduction21304.terms
def image21305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21305 : InImage map_18_254 image21305 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21305 : Bundle := named_bundle% "RealMapCertificates/relations/basis21305.json"
theorem reductionProof21305 : EqualModuloRelations reduction21305.relations reduction21305.input reduction21305.output := by lin_cert using reduction21305.terms
theorem substitutionProof21305 : IsMapEvaluation generatorImages reduction21305.relations [1,2430] reduction21305.output := by lin_cert using reduction21305.terms
def image21306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21306 : InImage map_18_254 image21306 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21306 : Bundle := named_bundle% "RealMapCertificates/relations/basis21306.json"
theorem reductionProof21306 : EqualModuloRelations reduction21306.relations reduction21306.input reduction21306.output := by lin_cert using reduction21306.terms
theorem substitutionProof21306 : IsMapEvaluation generatorImages reduction21306.relations [0,2475] reduction21306.output := by lin_cert using reduction21306.terms
def image21307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21307 : InImage map_18_254 image21307 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21307 : Bundle := named_bundle% "RealMapCertificates/relations/basis21307.json"
theorem reductionProof21307 : EqualModuloRelations reduction21307.relations reduction21307.input reduction21307.output := by lin_cert using reduction21307.terms
theorem substitutionProof21307 : IsMapEvaluation generatorImages reduction21307.relations [0,2474] reduction21307.output := by lin_cert using reduction21307.terms
def image21308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21308 : InImage map_18_254 image21308 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21308 : Bundle := named_bundle% "RealMapCertificates/relations/basis21308.json"
theorem reductionProof21308 : EqualModuloRelations reduction21308.relations reduction21308.input reduction21308.output := by lin_cert using reduction21308.terms
theorem substitutionProof21308 : IsMapEvaluation generatorImages reduction21308.relations [0,0,2432] reduction21308.output := by lin_cert using reduction21308.terms
def map_18_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21639 : InImage map_18_255 image21639 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21639 : Bundle := named_bundle% "RealMapCertificates/relations/basis21639.json"
theorem reductionProof21639 : EqualModuloRelations reduction21639.relations reduction21639.input reduction21639.output := by lin_cert using reduction21639.terms
theorem substitutionProof21639 : IsMapEvaluation generatorImages reduction21639.relations [2566] reduction21639.output := by lin_cert using reduction21639.terms
def image21640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21640 : InImage map_18_255 image21640 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21640 : Bundle := named_bundle% "RealMapCertificates/relations/basis21640.json"
theorem reductionProof21640 : EqualModuloRelations reduction21640.relations reduction21640.input reduction21640.output := by lin_cert using reduction21640.terms
theorem substitutionProof21640 : IsMapEvaluation generatorImages reduction21640.relations [2565] reduction21640.output := by lin_cert using reduction21640.terms
def image21641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21641 : InImage map_18_255 image21641 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21641 : Bundle := named_bundle% "RealMapCertificates/relations/basis21641.json"
theorem reductionProof21641 : EqualModuloRelations reduction21641.relations reduction21641.input reduction21641.output := by lin_cert using reduction21641.terms
theorem substitutionProof21641 : IsMapEvaluation generatorImages reduction21641.relations [1,2476] reduction21641.output := by lin_cert using reduction21641.terms
def image21642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21642 : InImage map_18_255 image21642 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21642 : Bundle := named_bundle% "RealMapCertificates/relations/basis21642.json"
theorem reductionProof21642 : EqualModuloRelations reduction21642.relations reduction21642.input reduction21642.output := by lin_cert using reduction21642.terms
theorem substitutionProof21642 : IsMapEvaluation generatorImages reduction21642.relations [0,2522] reduction21642.output := by lin_cert using reduction21642.terms
def image21643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21643 : InImage map_18_255 image21643 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21643 : Bundle := named_bundle% "RealMapCertificates/relations/basis21643.json"
theorem reductionProof21643 : EqualModuloRelations reduction21643.relations reduction21643.input reduction21643.output := by lin_cert using reduction21643.terms
theorem substitutionProof21643 : IsMapEvaluation generatorImages reduction21643.relations [0,0,2478] reduction21643.output := by lin_cert using reduction21643.terms
def image21644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21644 : InImage map_18_255 image21644 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21644 : Bundle := named_bundle% "RealMapCertificates/relations/basis21644.json"
theorem reductionProof21644 : EqualModuloRelations reduction21644.relations reduction21644.input reduction21644.output := by lin_cert using reduction21644.terms
theorem substitutionProof21644 : IsMapEvaluation generatorImages reduction21644.relations [0,0,0,2433] reduction21644.output := by lin_cert using reduction21644.terms
def map_18_256 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image21917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21917 : InImage map_18_256 image21917 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction21917 : Bundle := named_bundle% "RealMapCertificates/relations/basis21917.json"
theorem reductionProof21917 : EqualModuloRelations reduction21917.relations reduction21917.input reduction21917.output := by lin_cert using reduction21917.terms
theorem substitutionProof21917 : IsMapEvaluation generatorImages reduction21917.relations [2613] reduction21917.output := by lin_cert using reduction21917.terms
def image21918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21918 : InImage map_18_256 image21918 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction21918 : Bundle := named_bundle% "RealMapCertificates/relations/basis21918.json"
theorem reductionProof21918 : EqualModuloRelations reduction21918.relations reduction21918.input reduction21918.output := by lin_cert using reduction21918.terms
theorem substitutionProof21918 : IsMapEvaluation generatorImages reduction21918.relations [2612] reduction21918.output := by lin_cert using reduction21918.terms
def image21919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21919 : InImage map_18_256 image21919 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction21919 : Bundle := named_bundle% "RealMapCertificates/relations/basis21919.json"
theorem reductionProof21919 : EqualModuloRelations reduction21919.relations reduction21919.input reduction21919.output := by lin_cert using reduction21919.terms
theorem substitutionProof21919 : IsMapEvaluation generatorImages reduction21919.relations [2611] reduction21919.output := by lin_cert using reduction21919.terms
def image21920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21920 : InImage map_18_256 image21920 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction21920 : Bundle := named_bundle% "RealMapCertificates/relations/basis21920.json"
theorem reductionProof21920 : EqualModuloRelations reduction21920.relations reduction21920.input reduction21920.output := by lin_cert using reduction21920.terms
theorem substitutionProof21920 : IsMapEvaluation generatorImages reduction21920.relations [13,1799] reduction21920.output := by lin_cert using reduction21920.terms
def image21921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21921 : InImage map_18_256 image21921 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction21921 : Bundle := named_bundle% "RealMapCertificates/relations/basis21921.json"
theorem reductionProof21921 : EqualModuloRelations reduction21921.relations reduction21921.input reduction21921.output := by lin_cert using reduction21921.terms
theorem substitutionProof21921 : IsMapEvaluation generatorImages reduction21921.relations [3,2294] reduction21921.output := by lin_cert using reduction21921.terms
def image21922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21922 : InImage map_18_256 image21922 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction21922 : Bundle := named_bundle% "RealMapCertificates/relations/basis21922.json"
theorem reductionProof21922 : EqualModuloRelations reduction21922.relations reduction21922.input reduction21922.output := by lin_cert using reduction21922.terms
theorem substitutionProof21922 : IsMapEvaluation generatorImages reduction21922.relations [2,2430] reduction21922.output := by lin_cert using reduction21922.terms
def image21923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21923 : InImage map_18_256 image21923 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction21923 : Bundle := named_bundle% "RealMapCertificates/relations/basis21923.json"
theorem reductionProof21923 : EqualModuloRelations reduction21923.relations reduction21923.input reduction21923.output := by lin_cert using reduction21923.terms
theorem substitutionProof21923 : IsMapEvaluation generatorImages reduction21923.relations [1,302,324] reduction21923.output := by lin_cert using reduction21923.terms
def image21924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21924 : InImage map_18_256 image21924 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction21924 : Bundle := named_bundle% "RealMapCertificates/relations/basis21924.json"
theorem reductionProof21924 : EqualModuloRelations reduction21924.relations reduction21924.input reduction21924.output := by lin_cert using reduction21924.terms
theorem substitutionProof21924 : IsMapEvaluation generatorImages reduction21924.relations [1,1,2432] reduction21924.output := by lin_cert using reduction21924.terms
def image21925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21925 : InImage map_18_256 image21925 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction21925 : Bundle := named_bundle% "RealMapCertificates/relations/basis21925.json"
theorem reductionProof21925 : EqualModuloRelations reduction21925.relations reduction21925.input reduction21925.output := by lin_cert using reduction21925.terms
theorem substitutionProof21925 : IsMapEvaluation generatorImages reduction21925.relations [0,2570] reduction21925.output := by lin_cert using reduction21925.terms
def image21926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21926 : InImage map_18_256 image21926 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction21926 : Bundle := named_bundle% "RealMapCertificates/relations/basis21926.json"
theorem reductionProof21926 : EqualModuloRelations reduction21926.relations reduction21926.input reduction21926.output := by lin_cert using reduction21926.terms
theorem substitutionProof21926 : IsMapEvaluation generatorImages reduction21926.relations [0,2569] reduction21926.output := by lin_cert using reduction21926.terms
def image21927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21927 : InImage map_18_256 image21927 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction21927 : Bundle := named_bundle% "RealMapCertificates/relations/basis21927.json"
theorem reductionProof21927 : EqualModuloRelations reduction21927.relations reduction21927.input reduction21927.output := by lin_cert using reduction21927.terms
theorem substitutionProof21927 : IsMapEvaluation generatorImages reduction21927.relations [0,2568] reduction21927.output := by lin_cert using reduction21927.terms
def image21928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21928 : InImage map_18_256 image21928 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction21928 : Bundle := named_bundle% "RealMapCertificates/relations/basis21928.json"
theorem reductionProof21928 : EqualModuloRelations reduction21928.relations reduction21928.input reduction21928.output := by lin_cert using reduction21928.terms
theorem substitutionProof21928 : IsMapEvaluation generatorImages reduction21928.relations [0,2567] reduction21928.output := by lin_cert using reduction21928.terms
def image21929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21929 : InImage map_18_256 image21929 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction21929 : Bundle := named_bundle% "RealMapCertificates/relations/basis21929.json"
theorem reductionProof21929 : EqualModuloRelations reduction21929.relations reduction21929.input reduction21929.output := by lin_cert using reduction21929.terms
theorem substitutionProof21929 : IsMapEvaluation generatorImages reduction21929.relations [0,0,0,2480] reduction21929.output := by lin_cert using reduction21929.terms
def map_18_257 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22259 : InImage map_18_257 image22259 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22259 : Bundle := named_bundle% "RealMapCertificates/relations/basis22259.json"
theorem reductionProof22259 : EqualModuloRelations reduction22259.relations reduction22259.input reduction22259.output := by lin_cert using reduction22259.terms
theorem substitutionProof22259 : IsMapEvaluation generatorImages reduction22259.relations [2657] reduction22259.output := by lin_cert using reduction22259.terms
def image22260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22260 : InImage map_18_257 image22260 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22260 : Bundle := named_bundle% "RealMapCertificates/relations/basis22260.json"
theorem reductionProof22260 : EqualModuloRelations reduction22260.relations reduction22260.input reduction22260.output := by lin_cert using reduction22260.terms
theorem substitutionProof22260 : IsMapEvaluation generatorImages reduction22260.relations [2656] reduction22260.output := by lin_cert using reduction22260.terms
def image22261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22261 : InImage map_18_257 image22261 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22261 : Bundle := named_bundle% "RealMapCertificates/relations/basis22261.json"
theorem reductionProof22261 : EqualModuloRelations reduction22261.relations reduction22261.input reduction22261.output := by lin_cert using reduction22261.terms
theorem substitutionProof22261 : IsMapEvaluation generatorImages reduction22261.relations [2655] reduction22261.output := by lin_cert using reduction22261.terms
def image22262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22262 : InImage map_18_257 image22262 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22262 : Bundle := named_bundle% "RealMapCertificates/relations/basis22262.json"
theorem reductionProof22262 : EqualModuloRelations reduction22262.relations reduction22262.input reduction22262.output := by lin_cert using reduction22262.terms
theorem substitutionProof22262 : IsMapEvaluation generatorImages reduction22262.relations [7,2055] reduction22262.output := by lin_cert using reduction22262.terms
def image22263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22263 : InImage map_18_257 image22263 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22263 : Bundle := named_bundle% "RealMapCertificates/relations/basis22263.json"
theorem reductionProof22263 : EqualModuloRelations reduction22263.relations reduction22263.input reduction22263.output := by lin_cert using reduction22263.terms
theorem substitutionProof22263 : IsMapEvaluation generatorImages reduction22263.relations [2,2475] reduction22263.output := by lin_cert using reduction22263.terms
def image22264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22264 : InImage map_18_257 image22264 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22264 : Bundle := named_bundle% "RealMapCertificates/relations/basis22264.json"
theorem reductionProof22264 : EqualModuloRelations reduction22264.relations reduction22264.input reduction22264.output := by lin_cert using reduction22264.terms
theorem substitutionProof22264 : IsMapEvaluation generatorImages reduction22264.relations [1,2567] reduction22264.output := by lin_cert using reduction22264.terms
def image22265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22265 : InImage map_18_257 image22265 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22265 : Bundle := named_bundle% "RealMapCertificates/relations/basis22265.json"
theorem reductionProof22265 : EqualModuloRelations reduction22265.relations reduction22265.input reduction22265.output := by lin_cert using reduction22265.terms
theorem substitutionProof22265 : IsMapEvaluation generatorImages reduction22265.relations [0,2616] reduction22265.output := by lin_cert using reduction22265.terms
def image22266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22266 : InImage map_18_257 image22266 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22266 : Bundle := named_bundle% "RealMapCertificates/relations/basis22266.json"
theorem reductionProof22266 : EqualModuloRelations reduction22266.relations reduction22266.input reduction22266.output := by lin_cert using reduction22266.terms
theorem substitutionProof22266 : IsMapEvaluation generatorImages reduction22266.relations [0,2614] reduction22266.output := by lin_cert using reduction22266.terms
def image22267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22267 : InImage map_18_257 image22267 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22267 : Bundle := named_bundle% "RealMapCertificates/relations/basis22267.json"
theorem reductionProof22267 : EqualModuloRelations reduction22267.relations reduction22267.input reduction22267.output := by lin_cert using reduction22267.terms
theorem substitutionProof22267 : IsMapEvaluation generatorImages reduction22267.relations [0,318,324] reduction22267.output := by lin_cert using reduction22267.terms
def image22268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22268 : InImage map_18_257 image22268 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22268 : Bundle := named_bundle% "RealMapCertificates/relations/basis22268.json"
theorem reductionProof22268 : EqualModuloRelations reduction22268.relations reduction22268.input reduction22268.output := by lin_cert using reduction22268.terms
theorem substitutionProof22268 : IsMapEvaluation generatorImages reduction22268.relations [0,3,266,324] reduction22268.output := by lin_cert using reduction22268.terms
def map_18_258 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22609 : InImage map_18_258 image22609 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22609 : Bundle := named_bundle% "RealMapCertificates/relations/basis22609.json"
theorem reductionProof22609 : EqualModuloRelations reduction22609.relations reduction22609.input reduction22609.output := by lin_cert using reduction22609.terms
theorem substitutionProof22609 : IsMapEvaluation generatorImages reduction22609.relations [2695] reduction22609.output := by lin_cert using reduction22609.terms
def image22610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22610 : InImage map_18_258 image22610 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22610 : Bundle := named_bundle% "RealMapCertificates/relations/basis22610.json"
theorem reductionProof22610 : EqualModuloRelations reduction22610.relations reduction22610.input reduction22610.output := by lin_cert using reduction22610.terms
theorem substitutionProof22610 : IsMapEvaluation generatorImages reduction22610.relations [2694] reduction22610.output := by lin_cert using reduction22610.terms
def image22611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22611 : InImage map_18_258 image22611 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22611 : Bundle := named_bundle% "RealMapCertificates/relations/basis22611.json"
theorem reductionProof22611 : EqualModuloRelations reduction22611.relations reduction22611.input reduction22611.output := by lin_cert using reduction22611.terms
theorem substitutionProof22611 : IsMapEvaluation generatorImages reduction22611.relations [333,333] reduction22611.output := by lin_cert using reduction22611.terms
def image22612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22612 : InImage map_18_258 image22612 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22612 : Bundle := named_bundle% "RealMapCertificates/relations/basis22612.json"
theorem reductionProof22612 : EqualModuloRelations reduction22612.relations reduction22612.input reduction22612.output := by lin_cert using reduction22612.terms
theorem substitutionProof22612 : IsMapEvaluation generatorImages reduction22612.relations [9,13,133,324] reduction22612.output := by lin_cert using reduction22612.terms
def image22613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22613 : InImage map_18_258 image22613 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22613 : Bundle := named_bundle% "RealMapCertificates/relations/basis22613.json"
theorem reductionProof22613 : EqualModuloRelations reduction22613.relations reduction22613.input reduction22613.output := by lin_cert using reduction22613.terms
theorem substitutionProof22613 : IsMapEvaluation generatorImages reduction22613.relations [2,302,324] reduction22613.output := by lin_cert using reduction22613.terms
def image22614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22614 : InImage map_18_258 image22614 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22614 : Bundle := named_bundle% "RealMapCertificates/relations/basis22614.json"
theorem reductionProof22614 : EqualModuloRelations reduction22614.relations reduction22614.input reduction22614.output := by lin_cert using reduction22614.terms
theorem substitutionProof22614 : IsMapEvaluation generatorImages reduction22614.relations [1,13,1801] reduction22614.output := by lin_cert using reduction22614.terms
def image22615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22615 : InImage map_18_258 image22615 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22615 : Bundle := named_bundle% "RealMapCertificates/relations/basis22615.json"
theorem reductionProof22615 : EqualModuloRelations reduction22615.relations reduction22615.input reduction22615.output := by lin_cert using reduction22615.terms
theorem substitutionProof22615 : IsMapEvaluation generatorImages reduction22615.relations [0,2660] reduction22615.output := by lin_cert using reduction22615.terms
def image22616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22616 : InImage map_18_258 image22616 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22616 : Bundle := named_bundle% "RealMapCertificates/relations/basis22616.json"
theorem reductionProof22616 : EqualModuloRelations reduction22616.relations reduction22616.input reduction22616.output := by lin_cert using reduction22616.terms
theorem substitutionProof22616 : IsMapEvaluation generatorImages reduction22616.relations [0,2659] reduction22616.output := by lin_cert using reduction22616.terms
def image22617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22617 : InImage map_18_258 image22617 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22617 : Bundle := named_bundle% "RealMapCertificates/relations/basis22617.json"
theorem reductionProof22617 : EqualModuloRelations reduction22617.relations reduction22617.input reduction22617.output := by lin_cert using reduction22617.terms
theorem substitutionProof22617 : IsMapEvaluation generatorImages reduction22617.relations [0,0,3,267,324] reduction22617.output := by lin_cert using reduction22617.terms
def map_18_259 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22924 : InImage map_18_259 image22924 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22924 : Bundle := named_bundle% "RealMapCertificates/relations/basis22924.json"
theorem reductionProof22924 : EqualModuloRelations reduction22924.relations reduction22924.input reduction22924.output := by lin_cert using reduction22924.terms
theorem substitutionProof22924 : IsMapEvaluation generatorImages reduction22924.relations [2771] reduction22924.output := by lin_cert using reduction22924.terms
def image22925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22925 : InImage map_18_259 image22925 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22925 : Bundle := named_bundle% "RealMapCertificates/relations/basis22925.json"
theorem reductionProof22925 : EqualModuloRelations reduction22925.relations reduction22925.input reduction22925.output := by lin_cert using reduction22925.terms
theorem substitutionProof22925 : IsMapEvaluation generatorImages reduction22925.relations [2770] reduction22925.output := by lin_cert using reduction22925.terms
def image22926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22926 : InImage map_18_259 image22926 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22926 : Bundle := named_bundle% "RealMapCertificates/relations/basis22926.json"
theorem reductionProof22926 : EqualModuloRelations reduction22926.relations reduction22926.input reduction22926.output := by lin_cert using reduction22926.terms
theorem substitutionProof22926 : IsMapEvaluation generatorImages reduction22926.relations [2769] reduction22926.output := by lin_cert using reduction22926.terms
def image22927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22927 : InImage map_18_259 image22927 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22927 : Bundle := named_bundle% "RealMapCertificates/relations/basis22927.json"
theorem reductionProof22927 : EqualModuloRelations reduction22927.relations reduction22927.input reduction22927.output := by lin_cert using reduction22927.terms
theorem substitutionProof22927 : IsMapEvaluation generatorImages reduction22927.relations [2768] reduction22927.output := by lin_cert using reduction22927.terms
def image22928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22928 : InImage map_18_259 image22928 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22928 : Bundle := named_bundle% "RealMapCertificates/relations/basis22928.json"
theorem reductionProof22928 : EqualModuloRelations reduction22928.relations reduction22928.input reduction22928.output := by lin_cert using reduction22928.terms
theorem substitutionProof22928 : IsMapEvaluation generatorImages reduction22928.relations [1,70,1057] reduction22928.output := by lin_cert using reduction22928.terms
def image22929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22929 : InImage map_18_259 image22929 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22929 : Bundle := named_bundle% "RealMapCertificates/relations/basis22929.json"
theorem reductionProof22929 : EqualModuloRelations reduction22929.relations reduction22929.input reduction22929.output := by lin_cert using reduction22929.terms
theorem substitutionProof22929 : IsMapEvaluation generatorImages reduction22929.relations [0,2701] reduction22929.output := by lin_cert using reduction22929.terms
def image22930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22930 : InImage map_18_259 image22930 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22930 : Bundle := named_bundle% "RealMapCertificates/relations/basis22930.json"
theorem reductionProof22930 : EqualModuloRelations reduction22930.relations reduction22930.input reduction22930.output := by lin_cert using reduction22930.terms
theorem substitutionProof22930 : IsMapEvaluation generatorImages reduction22930.relations [0,2699] reduction22930.output := by lin_cert using reduction22930.terms
def image22931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22931 : InImage map_18_259 image22931 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22931 : Bundle := named_bundle% "RealMapCertificates/relations/basis22931.json"
theorem reductionProof22931 : EqualModuloRelations reduction22931.relations reduction22931.input reduction22931.output := by lin_cert using reduction22931.terms
theorem substitutionProof22931 : IsMapEvaluation generatorImages reduction22931.relations [0,2697] reduction22931.output := by lin_cert using reduction22931.terms
def image22932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22932 : InImage map_18_259 image22932 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22932 : Bundle := named_bundle% "RealMapCertificates/relations/basis22932.json"
theorem reductionProof22932 : EqualModuloRelations reduction22932.relations reduction22932.input reduction22932.output := by lin_cert using reduction22932.terms
theorem substitutionProof22932 : IsMapEvaluation generatorImages reduction22932.relations [0,2696] reduction22932.output := by lin_cert using reduction22932.terms
def image22933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22933 : InImage map_18_259 image22933 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22933 : Bundle := named_bundle% "RealMapCertificates/relations/basis22933.json"
theorem reductionProof22933 : EqualModuloRelations reduction22933.relations reduction22933.input reduction22933.output := by lin_cert using reduction22933.terms
theorem substitutionProof22933 : IsMapEvaluation generatorImages reduction22933.relations [0,0,2662] reduction22933.output := by lin_cert using reduction22933.terms
def map_18_260 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image23310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23310 : InImage map_18_260 image23310 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction23310 : Bundle := named_bundle% "RealMapCertificates/relations/basis23310.json"
theorem reductionProof23310 : EqualModuloRelations reduction23310.relations reduction23310.input reduction23310.output := by lin_cert using reduction23310.terms
theorem substitutionProof23310 : IsMapEvaluation generatorImages reduction23310.relations [2836] reduction23310.output := by lin_cert using reduction23310.terms
def image23311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23311 : InImage map_18_260 image23311 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction23311 : Bundle := named_bundle% "RealMapCertificates/relations/basis23311.json"
theorem reductionProof23311 : EqualModuloRelations reduction23311.relations reduction23311.input reduction23311.output := by lin_cert using reduction23311.terms
theorem substitutionProof23311 : IsMapEvaluation generatorImages reduction23311.relations [2835] reduction23311.output := by lin_cert using reduction23311.terms
def image23312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23312 : InImage map_18_260 image23312 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction23312 : Bundle := named_bundle% "RealMapCertificates/relations/basis23312.json"
theorem reductionProof23312 : EqualModuloRelations reduction23312.relations reduction23312.input reduction23312.output := by lin_cert using reduction23312.terms
theorem substitutionProof23312 : IsMapEvaluation generatorImages reduction23312.relations [2834] reduction23312.output := by lin_cert using reduction23312.terms
def image23313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23313 : InImage map_18_260 image23313 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction23313 : Bundle := named_bundle% "RealMapCertificates/relations/basis23313.json"
theorem reductionProof23313 : EqualModuloRelations reduction23313.relations reduction23313.input reduction23313.output := by lin_cert using reduction23313.terms
theorem substitutionProof23313 : IsMapEvaluation generatorImages reduction23313.relations [324,357] reduction23313.output := by lin_cert using reduction23313.terms
def image23314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23314 : InImage map_18_260 image23314 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction23314 : Bundle := named_bundle% "RealMapCertificates/relations/basis23314.json"
theorem reductionProof23314 : EqualModuloRelations reduction23314.relations reduction23314.input reduction23314.output := by lin_cert using reduction23314.terms
theorem substitutionProof23314 : IsMapEvaluation generatorImages reduction23314.relations [67,1120] reduction23314.output := by lin_cert using reduction23314.terms
def image23315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23315 : InImage map_18_260 image23315 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction23315 : Bundle := named_bundle% "RealMapCertificates/relations/basis23315.json"
theorem reductionProof23315 : EqualModuloRelations reduction23315.relations reduction23315.input reduction23315.output := by lin_cert using reduction23315.terms
theorem substitutionProof23315 : IsMapEvaluation generatorImages reduction23315.relations [7,2146] reduction23315.output := by lin_cert using reduction23315.terms
def image23316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23316 : InImage map_18_260 image23316 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction23316 : Bundle := named_bundle% "RealMapCertificates/relations/basis23316.json"
theorem reductionProof23316 : EqualModuloRelations reduction23316.relations reduction23316.input reduction23316.output := by lin_cert using reduction23316.terms
theorem substitutionProof23316 : IsMapEvaluation generatorImages reduction23316.relations [3,2431] reduction23316.output := by lin_cert using reduction23316.terms
def image23317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23317 : InImage map_18_260 image23317 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction23317 : Bundle := named_bundle% "RealMapCertificates/relations/basis23317.json"
theorem reductionProof23317 : EqualModuloRelations reduction23317.relations reduction23317.input reduction23317.output := by lin_cert using reduction23317.terms
theorem substitutionProof23317 : IsMapEvaluation generatorImages reduction23317.relations [3,2430] reduction23317.output := by lin_cert using reduction23317.terms
def image23318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23318 : InImage map_18_260 image23318 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction23318 : Bundle := named_bundle% "RealMapCertificates/relations/basis23318.json"
theorem reductionProof23318 : EqualModuloRelations reduction23318.relations reduction23318.input reduction23318.output := by lin_cert using reduction23318.terms
theorem substitutionProof23318 : IsMapEvaluation generatorImages reduction23318.relations [1,2699] reduction23318.output := by lin_cert using reduction23318.terms
def image23319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23319 : InImage map_18_260 image23319 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction23319 : Bundle := named_bundle% "RealMapCertificates/relations/basis23319.json"
theorem reductionProof23319 : EqualModuloRelations reduction23319.relations reduction23319.input reduction23319.output := by lin_cert using reduction23319.terms
theorem substitutionProof23319 : IsMapEvaluation generatorImages reduction23319.relations [1,2696] reduction23319.output := by lin_cert using reduction23319.terms
def image23320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23320 : InImage map_18_260 image23320 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction23320 : Bundle := named_bundle% "RealMapCertificates/relations/basis23320.json"
theorem reductionProof23320 : EqualModuloRelations reduction23320.relations reduction23320.input reduction23320.output := by lin_cert using reduction23320.terms
theorem substitutionProof23320 : IsMapEvaluation generatorImages reduction23320.relations [0,0,2706] reduction23320.output := by lin_cert using reduction23320.terms
def image23321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23321 : InImage map_18_260 image23321 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction23321 : Bundle := named_bundle% "RealMapCertificates/relations/basis23321.json"
theorem reductionProof23321 : EqualModuloRelations reduction23321.relations reduction23321.input reduction23321.output := by lin_cert using reduction23321.terms
theorem substitutionProof23321 : IsMapEvaluation generatorImages reduction23321.relations [0,0,2705] reduction23321.output := by lin_cert using reduction23321.terms
def image23322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23322 : InImage map_18_260 image23322 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction23322 : Bundle := named_bundle% "RealMapCertificates/relations/basis23322.json"
theorem reductionProof23322 : EqualModuloRelations reduction23322.relations reduction23322.input reduction23322.output := by lin_cert using reduction23322.terms
theorem substitutionProof23322 : IsMapEvaluation generatorImages reduction23322.relations [0,0,2703] reduction23322.output := by lin_cert using reduction23322.terms
end RealMapCertificates
