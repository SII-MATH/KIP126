import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 47 => [[2,4,4,4,4]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 58 => [[3,4,4,4,4]]
  | 59 => []
  | 64 => []
  | 69 => []
  | 72 => []
  | 78 => [[4,4,4,5,6]]
  | 79 => []
  | 80 => []
  | 90 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 133 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 167 => [[7,9,12]]
  | 172 => []
  | 173 => []
  | 186 => []
  | 187 => []
  | 188 => []
  | 207 => [[5,5,8,12]]
  | 232 => [[5,6,9,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 301 => []
  | 316 => []
  | 317 => []
  | 324 => []
  | 327 => []
  | 333 => []
  | 334 => []
  | 346 => []
  | 347 => []
  | 352 => []
  | 355 => []
  | 356 => []
  | 358 => []
  | 359 => []
  | 366 => []
  | 381 => []
  | 2622 => []
  | 2658 => []
  | 2711 => []
  | 2714 => []
  | 2772 => []
  | 2773 => []
  | 2886 => []
  | 2887 => []
  | _ => []
def map_18_261 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image23742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23742 : InImage map_18_261 image23742 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction23742 : Bundle := named_bundle% "RealMapCertificates/relations/basis23742.json"
theorem reductionProof23742 : EqualModuloRelations reduction23742.relations reduction23742.input reduction23742.output := by lin_cert using reduction23742.terms
theorem substitutionProof23742 : IsMapEvaluation generatorImages reduction23742.relations [2887] reduction23742.output := by lin_cert using reduction23742.terms
def image23743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23743 : InImage map_18_261 image23743 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction23743 : Bundle := named_bundle% "RealMapCertificates/relations/basis23743.json"
theorem reductionProof23743 : EqualModuloRelations reduction23743.relations reduction23743.input reduction23743.output := by lin_cert using reduction23743.terms
theorem substitutionProof23743 : IsMapEvaluation generatorImages reduction23743.relations [2886] reduction23743.output := by lin_cert using reduction23743.terms
def image23744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23744 : InImage map_18_261 image23744 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction23744 : Bundle := named_bundle% "RealMapCertificates/relations/basis23744.json"
theorem reductionProof23744 : EqualModuloRelations reduction23744.relations reduction23744.input reduction23744.output := by lin_cert using reduction23744.terms
theorem substitutionProof23744 : IsMapEvaluation generatorImages reduction23744.relations [333,366] reduction23744.output := by lin_cert using reduction23744.terms
def image23745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23745 : InImage map_18_261 image23745 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction23745 : Bundle := named_bundle% "RealMapCertificates/relations/basis23745.json"
theorem reductionProof23745 : EqualModuloRelations reduction23745.relations reduction23745.input reduction23745.output := by lin_cert using reduction23745.terms
theorem substitutionProof23745 : IsMapEvaluation generatorImages reduction23745.relations [13,13,133,324] reduction23745.output := by lin_cert using reduction23745.terms
def image23746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23746 : InImage map_18_261 image23746 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction23746 : Bundle := named_bundle% "RealMapCertificates/relations/basis23746.json"
theorem reductionProof23746 : EqualModuloRelations reduction23746.relations reduction23746.input reduction23746.output := by lin_cert using reduction23746.terms
theorem substitutionProof23746 : IsMapEvaluation generatorImages reduction23746.relations [2,2658] reduction23746.output := by lin_cert using reduction23746.terms
def image23747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23747 : InImage map_18_261 image23747 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction23747 : Bundle := named_bundle% "RealMapCertificates/relations/basis23747.json"
theorem reductionProof23747 : EqualModuloRelations reduction23747.relations reduction23747.input reduction23747.output := by lin_cert using reduction23747.terms
theorem substitutionProof23747 : IsMapEvaluation generatorImages reduction23747.relations [0,333,352] reduction23747.output := by lin_cert using reduction23747.terms
def image23748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23748 : InImage map_18_261 image23748 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction23748 : Bundle := named_bundle% "RealMapCertificates/relations/basis23748.json"
theorem reductionProof23748 : EqualModuloRelations reduction23748.relations reduction23748.input reduction23748.output := by lin_cert using reduction23748.terms
theorem substitutionProof23748 : IsMapEvaluation generatorImages reduction23748.relations [0,324,359] reduction23748.output := by lin_cert using reduction23748.terms
def image23749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23749 : InImage map_18_261 image23749 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction23749 : Bundle := named_bundle% "RealMapCertificates/relations/basis23749.json"
theorem reductionProof23749 : EqualModuloRelations reduction23749.relations reduction23749.input reduction23749.output := by lin_cert using reduction23749.terms
theorem substitutionProof23749 : IsMapEvaluation generatorImages reduction23749.relations [0,0,2773] reduction23749.output := by lin_cert using reduction23749.terms
def image23750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23750 : InImage map_18_261 image23750 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction23750 : Bundle := named_bundle% "RealMapCertificates/relations/basis23750.json"
theorem reductionProof23750 : EqualModuloRelations reduction23750.relations reduction23750.input reduction23750.output := by lin_cert using reduction23750.terms
theorem substitutionProof23750 : IsMapEvaluation generatorImages reduction23750.relations [0,0,2772] reduction23750.output := by lin_cert using reduction23750.terms
def image23751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23751 : InImage map_18_261 image23751 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction23751 : Bundle := named_bundle% "RealMapCertificates/relations/basis23751.json"
theorem reductionProof23751 : EqualModuloRelations reduction23751.relations reduction23751.input reduction23751.output := by lin_cert using reduction23751.terms
theorem substitutionProof23751 : IsMapEvaluation generatorImages reduction23751.relations [0,0,0,2714] reduction23751.output := by lin_cert using reduction23751.terms
def image23752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23752 : InImage map_18_261 image23752 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction23752 : Bundle := named_bundle% "RealMapCertificates/relations/basis23752.json"
theorem reductionProof23752 : EqualModuloRelations reduction23752.relations reduction23752.input reduction23752.output := by lin_cert using reduction23752.terms
theorem substitutionProof23752 : IsMapEvaluation generatorImages reduction23752.relations [0,0,0,2711] reduction23752.output := by lin_cert using reduction23752.terms
def image23753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23753 : InImage map_18_261 image23753 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction23753 : Bundle := named_bundle% "RealMapCertificates/relations/basis23753.json"
theorem reductionProof23753 : EqualModuloRelations reduction23753.relations reduction23753.input reduction23753.output := by lin_cert using reduction23753.terms
theorem substitutionProof23753 : IsMapEvaluation generatorImages reduction23753.relations [0,0,0,0,0,2622] reduction23753.output := by lin_cert using reduction23753.terms
def map_19_19 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image45 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation45 : InImage map_19_19 image45 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction45 : Bundle := named_bundle% "RealMapCertificates/relations/basis45.json"
theorem reductionProof45 : EqualModuloRelations reduction45.relations reduction45.input reduction45.output := by lin_cert using reduction45.terms
theorem substitutionProof45 : IsMapEvaluation generatorImages reduction45.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction45.output := by lin_cert using reduction45.terms
def map_19_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image290 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation290 : InImage map_19_54 image290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction290 : Bundle := named_bundle% "RealMapCertificates/relations/basis290.json"
theorem reductionProof290 : EqualModuloRelations reduction290.relations reduction290.input reduction290.output := by lin_cert using reduction290.terms
theorem substitutionProof290 : IsMapEvaluation generatorImages reduction290.relations [0,0,47] reduction290.output := by lin_cert using reduction290.terms
def map_19_58 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation333 : InImage map_19_58 image333 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction333 : Bundle := named_bundle% "RealMapCertificates/relations/basis333.json"
theorem reductionProof333 : EqualModuloRelations reduction333.relations reduction333.input reduction333.output := by lin_cert using reduction333.terms
theorem substitutionProof333 : IsMapEvaluation generatorImages reduction333.relations [0,0,0,0,50] reduction333.output := by lin_cert using reduction333.terms
def map_19_59 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image342 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation342 : InImage map_19_59 image342 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction342 : Bundle := named_bundle% "RealMapCertificates/relations/basis342.json"
theorem reductionProof342 : EqualModuloRelations reduction342.relations reduction342.input reduction342.output := by lin_cert using reduction342.terms
theorem substitutionProof342 : IsMapEvaluation generatorImages reduction342.relations [58] reduction342.output := by lin_cert using reduction342.terms
def map_19_60 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation347 : InImage map_19_60 image347 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction347 : Bundle := named_bundle% "RealMapCertificates/relations/basis347.json"
theorem reductionProof347 : EqualModuloRelations reduction347.relations reduction347.input reduction347.output := by lin_cert using reduction347.terms
theorem substitutionProof347 : IsMapEvaluation generatorImages reduction347.relations [0,0,0,55] reduction347.output := by lin_cert using reduction347.terms
def map_19_65 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation404 : InImage map_19_65 image404 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction404 : Bundle := named_bundle% "RealMapCertificates/relations/basis404.json"
theorem reductionProof404 : EqualModuloRelations reduction404.relations reduction404.input reduction404.output := by lin_cert using reduction404.terms
theorem substitutionProof404 : IsMapEvaluation generatorImages reduction404.relations [0,0,0,0,0,17,17] reduction404.output := by lin_cert using reduction404.terms
def map_19_66 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image421 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation421 : InImage map_19_66 image421 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction421 : Bundle := named_bundle% "RealMapCertificates/relations/basis421.json"
theorem reductionProof421 : EqualModuloRelations reduction421.relations reduction421.input reduction421.output := by lin_cert using reduction421.terms
theorem substitutionProof421 : IsMapEvaluation generatorImages reduction421.relations [0,0,0,0,0,0,59] reduction421.output := by lin_cert using reduction421.terms
def map_19_69 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image479 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation479 : InImage map_19_69 image479 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction479 : Bundle := named_bundle% "RealMapCertificates/relations/basis479.json"
theorem reductionProof479 : EqualModuloRelations reduction479.relations reduction479.input reduction479.output := by lin_cert using reduction479.terms
theorem substitutionProof479 : IsMapEvaluation generatorImages reduction479.relations [78] reduction479.output := by lin_cert using reduction479.terms
def map_19_72 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image537 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation537 : InImage map_19_72 image537 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction537 : Bundle := named_bundle% "RealMapCertificates/relations/basis537.json"
theorem reductionProof537 : EqualModuloRelations reduction537.relations reduction537.input reduction537.output := by lin_cert using reduction537.terms
theorem substitutionProof537 : IsMapEvaluation generatorImages reduction537.relations [8,50] reduction537.output := by lin_cert using reduction537.terms
def map_19_75 : Matrix 3 1 := fun i j => ([false,true,false] : List Bool)[i.val*1+j.val]!
def image608 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation608 : InImage map_19_75 image608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction608 : Bundle := named_bundle% "RealMapCertificates/relations/basis608.json"
theorem reductionProof608 : EqualModuloRelations reduction608.relations reduction608.input reduction608.output := by lin_cert using reduction608.terms
theorem substitutionProof608 : IsMapEvaluation generatorImages reduction608.relations [8,56] reduction608.output := by lin_cert using reduction608.terms
def map_19_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation631 : InImage map_19_76 image631 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction631 : Bundle := named_bundle% "RealMapCertificates/relations/basis631.json"
theorem reductionProof631 : EqualModuloRelations reduction631.relations reduction631.input reduction631.output := by lin_cert using reduction631.terms
theorem substitutionProof631 : IsMapEvaluation generatorImages reduction631.relations [0,17,40] reduction631.output := by lin_cert using reduction631.terms
def map_19_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image671 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation671 : InImage map_19_78 image671 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction671 : Bundle := named_bundle% "RealMapCertificates/relations/basis671.json"
theorem reductionProof671 : EqualModuloRelations reduction671.relations reduction671.input reduction671.output := by lin_cert using reduction671.terms
theorem substitutionProof671 : IsMapEvaluation generatorImages reduction671.relations [8,16,17] reduction671.output := by lin_cert using reduction671.terms
def map_19_81 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image739 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation739 : InImage map_19_81 image739 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction739 : Bundle := named_bundle% "RealMapCertificates/relations/basis739.json"
theorem reductionProof739 : EqualModuloRelations reduction739.relations reduction739.input reduction739.output := by lin_cert using reduction739.terms
theorem substitutionProof739 : IsMapEvaluation generatorImages reduction739.relations [8,8,40] reduction739.output := by lin_cert using reduction739.terms
def image740 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation740 : InImage map_19_81 image740 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction740 : Bundle := named_bundle% "RealMapCertificates/relations/basis740.json"
theorem reductionProof740 : EqualModuloRelations reduction740.relations reduction740.input reduction740.output := by lin_cert using reduction740.terms
theorem substitutionProof740 : IsMapEvaluation generatorImages reduction740.relations [0,0,0,0,0,0,0,0,0,90] reduction740.output := by lin_cert using reduction740.terms
def map_19_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation765 : InImage map_19_82 image765 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction765 : Bundle := named_bundle% "RealMapCertificates/relations/basis765.json"
theorem reductionProof765 : EqualModuloRelations reduction765.relations reduction765.input reduction765.output := by lin_cert using reduction765.terms
theorem substitutionProof765 : IsMapEvaluation generatorImages reduction765.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction765.output := by lin_cert using reduction765.terms
def map_19_84 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image808 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation808 : InImage map_19_84 image808 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction808 : Bundle := named_bundle% "RealMapCertificates/relations/basis808.json"
theorem reductionProof808 : EqualModuloRelations reduction808.relations reduction808.input reduction808.output := by lin_cert using reduction808.terms
theorem substitutionProof808 : IsMapEvaluation generatorImages reduction808.relations [8,8,8,17] reduction808.output := by lin_cert using reduction808.terms
def map_19_87 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image892 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation892 : InImage map_19_87 image892 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction892 : Bundle := named_bundle% "RealMapCertificates/relations/basis892.json"
theorem reductionProof892 : EqualModuloRelations reduction892.relations reduction892.input reduction892.output := by lin_cert using reduction892.terms
theorem substitutionProof892 : IsMapEvaluation generatorImages reduction892.relations [8,8,8,20] reduction892.output := by lin_cert using reduction892.terms
def map_19_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation916 : InImage map_19_88 image916 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction916 : Bundle := named_bundle% "RealMapCertificates/relations/basis916.json"
theorem reductionProof916 : EqualModuloRelations reduction916.relations reduction916.input reduction916.output := by lin_cert using reduction916.terms
theorem substitutionProof916 : IsMapEvaluation generatorImages reduction916.relations [0,137] reduction916.output := by lin_cert using reduction916.terms
def map_19_89 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation942 : InImage map_19_89 image942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction942 : Bundle := named_bundle% "RealMapCertificates/relations/basis942.json"
theorem reductionProof942 : EqualModuloRelations reduction942.relations reduction942.input reduction942.output := by lin_cert using reduction942.terms
theorem substitutionProof942 : IsMapEvaluation generatorImages reduction942.relations [1,137] reduction942.output := by lin_cert using reduction942.terms
def image943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation943 : InImage map_19_89 image943 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction943 : Bundle := named_bundle% "RealMapCertificates/relations/basis943.json"
theorem reductionProof943 : EqualModuloRelations reduction943.relations reduction943.input reduction943.output := by lin_cert using reduction943.terms
theorem substitutionProof943 : IsMapEvaluation generatorImages reduction943.relations [0,0,138] reduction943.output := by lin_cert using reduction943.terms
def map_19_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image969 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation969 : InImage map_19_90 image969 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction969 : Bundle := named_bundle% "RealMapCertificates/relations/basis969.json"
theorem reductionProof969 : EqualModuloRelations reduction969.relations reduction969.input reduction969.output := by lin_cert using reduction969.terms
theorem substitutionProof969 : IsMapEvaluation generatorImages reduction969.relations [8,8,8,22] reduction969.output := by lin_cert using reduction969.terms
def map_19_91 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1002 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1002 : InImage map_19_91 image1002 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1002 : Bundle := named_bundle% "RealMapCertificates/relations/basis1002.json"
theorem reductionProof1002 : EqualModuloRelations reduction1002.relations reduction1002.input reduction1002.output := by lin_cert using reduction1002.terms
theorem substitutionProof1002 : IsMapEvaluation generatorImages reduction1002.relations [0,146] reduction1002.output := by lin_cert using reduction1002.terms
def map_19_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1025 : InImage map_19_92 image1025 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1025 : Bundle := named_bundle% "RealMapCertificates/relations/basis1025.json"
theorem reductionProof1025 : EqualModuloRelations reduction1025.relations reduction1025.input reduction1025.output := by lin_cert using reduction1025.terms
theorem substitutionProof1025 : IsMapEvaluation generatorImages reduction1025.relations [0,0,147] reduction1025.output := by lin_cert using reduction1025.terms
def map_19_93 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1050 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1050 : InImage map_19_93 image1050 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1050 : Bundle := named_bundle% "RealMapCertificates/relations/basis1050.json"
theorem reductionProof1050 : EqualModuloRelations reduction1050.relations reduction1050.input reduction1050.output := by lin_cert using reduction1050.terms
theorem substitutionProof1050 : IsMapEvaluation generatorImages reduction1050.relations [8,8,8,29] reduction1050.output := by lin_cert using reduction1050.terms
def map_19_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1075 : InImage map_19_94 image1075 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1075 : Bundle := named_bundle% "RealMapCertificates/relations/basis1075.json"
theorem reductionProof1075 : EqualModuloRelations reduction1075.relations reduction1075.input reduction1075.output := by lin_cert using reduction1075.terms
theorem substitutionProof1075 : IsMapEvaluation generatorImages reduction1075.relations [0,16,64] reduction1075.output := by lin_cert using reduction1075.terms
def map_19_95 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1099 : InImage map_19_95 image1099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1099 : Bundle := named_bundle% "RealMapCertificates/relations/basis1099.json"
theorem reductionProof1099 : EqualModuloRelations reduction1099.relations reduction1099.input reduction1099.output := by lin_cert using reduction1099.terms
theorem substitutionProof1099 : IsMapEvaluation generatorImages reduction1099.relations [0,0,17,64] reduction1099.output := by lin_cert using reduction1099.terms
def image1100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1100 : InImage map_19_95 image1100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1100 : Bundle := named_bundle% "RealMapCertificates/relations/basis1100.json"
theorem reductionProof1100 : EqualModuloRelations reduction1100.relations reduction1100.input reduction1100.output := by lin_cert using reduction1100.terms
theorem substitutionProof1100 : IsMapEvaluation generatorImages reduction1100.relations [0,0,0,149] reduction1100.output := by lin_cert using reduction1100.terms
def map_19_96 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1117 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1117 : InImage map_19_96 image1117 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1117 : Bundle := named_bundle% "RealMapCertificates/relations/basis1117.json"
theorem reductionProof1117 : EqualModuloRelations reduction1117.relations reduction1117.input reduction1117.output := by lin_cert using reduction1117.terms
theorem substitutionProof1117 : IsMapEvaluation generatorImages reduction1117.relations [8,8,8,32] reduction1117.output := by lin_cert using reduction1117.terms
def image1118 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1118 : InImage map_19_96 image1118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1118 : Bundle := named_bundle% "RealMapCertificates/relations/basis1118.json"
theorem reductionProof1118 : EqualModuloRelations reduction1118.relations reduction1118.input reduction1118.output := by lin_cert using reduction1118.terms
theorem substitutionProof1118 : IsMapEvaluation generatorImages reduction1118.relations [0,0,0,154] reduction1118.output := by lin_cert using reduction1118.terms
def map_19_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1148 : InImage map_19_97 image1148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1148 : Bundle := named_bundle% "RealMapCertificates/relations/basis1148.json"
theorem reductionProof1148 : EqualModuloRelations reduction1148.relations reduction1148.input reduction1148.output := by lin_cert using reduction1148.terms
theorem substitutionProof1148 : IsMapEvaluation generatorImages reduction1148.relations [0,8,112] reduction1148.output := by lin_cert using reduction1148.terms
def map_19_98 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1169 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1169 : InImage map_19_98 image1169 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1169 : Bundle := named_bundle% "RealMapCertificates/relations/basis1169.json"
theorem reductionProof1169 : EqualModuloRelations reduction1169.relations reduction1169.input reduction1169.output := by lin_cert using reduction1169.terms
theorem substitutionProof1169 : IsMapEvaluation generatorImages reduction1169.relations [0,0,8,113] reduction1169.output := by lin_cert using reduction1169.terms
def image1170 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1170 : InImage map_19_98 image1170 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1170 : Bundle := named_bundle% "RealMapCertificates/relations/basis1170.json"
theorem reductionProof1170 : EqualModuloRelations reduction1170.relations reduction1170.input reduction1170.output := by lin_cert using reduction1170.terms
theorem substitutionProof1170 : IsMapEvaluation generatorImages reduction1170.relations [0,0,0,160] reduction1170.output := by lin_cert using reduction1170.terms
def map_19_99 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1194 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1194 : InImage map_19_99 image1194 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1194 : Bundle := named_bundle% "RealMapCertificates/relations/basis1194.json"
theorem reductionProof1194 : EqualModuloRelations reduction1194.relations reduction1194.input reduction1194.output := by lin_cert using reduction1194.terms
theorem substitutionProof1194 : IsMapEvaluation generatorImages reduction1194.relations [8,8,9,32] reduction1194.output := by lin_cert using reduction1194.terms
def map_19_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1220 : InImage map_19_100 image1220 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1220 : Bundle := named_bundle% "RealMapCertificates/relations/basis1220.json"
theorem reductionProof1220 : EqualModuloRelations reduction1220.relations reduction1220.input reduction1220.output := by lin_cert using reduction1220.terms
theorem substitutionProof1220 : IsMapEvaluation generatorImages reduction1220.relations [0,8,8,64] reduction1220.output := by lin_cert using reduction1220.terms
def map_19_101 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1252 : InImage map_19_101 image1252 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1252 : Bundle := named_bundle% "RealMapCertificates/relations/basis1252.json"
theorem reductionProof1252 : EqualModuloRelations reduction1252.relations reduction1252.input reduction1252.output := by lin_cert using reduction1252.terms
theorem substitutionProof1252 : IsMapEvaluation generatorImages reduction1252.relations [0,0,8,118] reduction1252.output := by lin_cert using reduction1252.terms
def map_19_102 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image1286 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1286 : InImage map_19_102 image1286 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1286 : Bundle := named_bundle% "RealMapCertificates/relations/basis1286.json"
theorem reductionProof1286 : EqualModuloRelations reduction1286.relations reduction1286.input reduction1286.output := by lin_cert using reduction1286.terms
theorem substitutionProof1286 : IsMapEvaluation generatorImages reduction1286.relations [8,8,13,32] reduction1286.output := by lin_cert using reduction1286.terms
def image1287 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1287 : InImage map_19_102 image1287 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1287 : Bundle := named_bundle% "RealMapCertificates/relations/basis1287.json"
theorem reductionProof1287 : EqualModuloRelations reduction1287.relations reduction1287.input reduction1287.output := by lin_cert using reduction1287.terms
theorem substitutionProof1287 : IsMapEvaluation generatorImages reduction1287.relations [0,0,0,0,167] reduction1287.output := by lin_cert using reduction1287.terms
def map_19_103 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1321 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1321 : InImage map_19_103 image1321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1321 : Bundle := named_bundle% "RealMapCertificates/relations/basis1321.json"
theorem reductionProof1321 : EqualModuloRelations reduction1321.relations reduction1321.input reduction1321.output := by lin_cert using reduction1321.terms
theorem substitutionProof1321 : IsMapEvaluation generatorImages reduction1321.relations [0,8,8,72] reduction1321.output := by lin_cert using reduction1321.terms
def image1322 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1322 : InImage map_19_103 image1322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1322 : Bundle := named_bundle% "RealMapCertificates/relations/basis1322.json"
theorem reductionProof1322 : EqualModuloRelations reduction1322.relations reduction1322.input reduction1322.output := by lin_cert using reduction1322.terms
theorem substitutionProof1322 : IsMapEvaluation generatorImages reduction1322.relations [0,0,0,0,172] reduction1322.output := by lin_cert using reduction1322.terms
def map_19_104 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1349 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1349 : InImage map_19_104 image1349 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1349 : Bundle := named_bundle% "RealMapCertificates/relations/basis1349.json"
theorem reductionProof1349 : EqualModuloRelations reduction1349.relations reduction1349.input reduction1349.output := by lin_cert using reduction1349.terms
theorem substitutionProof1349 : IsMapEvaluation generatorImages reduction1349.relations [0,0,8,127] reduction1349.output := by lin_cert using reduction1349.terms
def map_19_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1389 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1389 : InImage map_19_105 image1389 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1389 : Bundle := named_bundle% "RealMapCertificates/relations/basis1389.json"
theorem reductionProof1389 : EqualModuloRelations reduction1389.relations reduction1389.input reduction1389.output := by lin_cert using reduction1389.terms
theorem substitutionProof1389 : IsMapEvaluation generatorImages reduction1389.relations [8,9,13,32] reduction1389.output := by lin_cert using reduction1389.terms
def map_19_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1418 : InImage map_19_106 image1418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1418 : Bundle := named_bundle% "RealMapCertificates/relations/basis1418.json"
theorem reductionProof1418 : EqualModuloRelations reduction1418.relations reduction1418.input reduction1418.output := by lin_cert using reduction1418.terms
theorem substitutionProof1418 : IsMapEvaluation generatorImages reduction1418.relations [0,8,8,79] reduction1418.output := by lin_cert using reduction1418.terms
def map_19_107 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1454 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1454 : InImage map_19_107 image1454 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1454 : Bundle := named_bundle% "RealMapCertificates/relations/basis1454.json"
theorem reductionProof1454 : EqualModuloRelations reduction1454.relations reduction1454.input reduction1454.output := by lin_cert using reduction1454.terms
theorem substitutionProof1454 : IsMapEvaluation generatorImages reduction1454.relations [0,0,8,8,80] reduction1454.output := by lin_cert using reduction1454.terms
def map_19_108 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1489 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1489 : InImage map_19_108 image1489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1489 : Bundle := named_bundle% "RealMapCertificates/relations/basis1489.json"
theorem reductionProof1489 : EqualModuloRelations reduction1489.relations reduction1489.input reduction1489.output := by lin_cert using reduction1489.terms
theorem substitutionProof1489 : IsMapEvaluation generatorImages reduction1489.relations [8,13,13,32] reduction1489.output := by lin_cert using reduction1489.terms
def image1490 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1490 : InImage map_19_108 image1490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1490 : Bundle := named_bundle% "RealMapCertificates/relations/basis1490.json"
theorem reductionProof1490 : EqualModuloRelations reduction1490.relations reduction1490.input reduction1490.output := by lin_cert using reduction1490.terms
theorem substitutionProof1490 : IsMapEvaluation generatorImages reduction1490.relations [0,207] reduction1490.output := by lin_cert using reduction1490.terms
def map_19_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1530 : InImage map_19_109 image1530 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1530 : Bundle := named_bundle% "RealMapCertificates/relations/basis1530.json"
theorem reductionProof1530 : EqualModuloRelations reduction1530.relations reduction1530.input reduction1530.output := by lin_cert using reduction1530.terms
theorem substitutionProof1530 : IsMapEvaluation generatorImages reduction1530.relations [0,0,0,0,0,0,0,187] reduction1530.output := by lin_cert using reduction1530.terms
def map_19_110 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1562 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1562 : InImage map_19_110 image1562 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1562 : Bundle := named_bundle% "RealMapCertificates/relations/basis1562.json"
theorem reductionProof1562 : EqualModuloRelations reduction1562.relations reduction1562.input reduction1562.output := by lin_cert using reduction1562.terms
theorem substitutionProof1562 : IsMapEvaluation generatorImages reduction1562.relations [0,0,0,0,0,0,0,0,188] reduction1562.output := by lin_cert using reduction1562.terms
def map_19_111 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1610 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1610 : InImage map_19_111 image1610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1610 : Bundle := named_bundle% "RealMapCertificates/relations/basis1610.json"
theorem reductionProof1610 : EqualModuloRelations reduction1610.relations reduction1610.input reduction1610.output := by lin_cert using reduction1610.terms
theorem substitutionProof1610 : IsMapEvaluation generatorImages reduction1610.relations [42,64] reduction1610.output := by lin_cert using reduction1610.terms
def image1611 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1611 : InImage map_19_111 image1611 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1611 : Bundle := named_bundle% "RealMapCertificates/relations/basis1611.json"
theorem reductionProof1611 : EqualModuloRelations reduction1611.relations reduction1611.input reduction1611.output := by lin_cert using reduction1611.terms
theorem substitutionProof1611 : IsMapEvaluation generatorImages reduction1611.relations [9,13,13,32] reduction1611.output := by lin_cert using reduction1611.terms
def map_19_113 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1680 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1680 : InImage map_19_113 image1680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1680 : Bundle := named_bundle% "RealMapCertificates/relations/basis1680.json"
theorem reductionProof1680 : EqualModuloRelations reduction1680.relations reduction1680.input reduction1680.output := by lin_cert using reduction1680.terms
theorem substitutionProof1680 : IsMapEvaluation generatorImages reduction1680.relations [232] reduction1680.output := by lin_cert using reduction1680.terms
def map_19_114 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1722 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1722 : InImage map_19_114 image1722 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1722 : Bundle := named_bundle% "RealMapCertificates/relations/basis1722.json"
theorem reductionProof1722 : EqualModuloRelations reduction1722.relations reduction1722.input reduction1722.output := by lin_cert using reduction1722.terms
theorem substitutionProof1722 : IsMapEvaluation generatorImages reduction1722.relations [23,113] reduction1722.output := by lin_cert using reduction1722.terms
def image1723 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1723 : InImage map_19_114 image1723 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1723 : Bundle := named_bundle% "RealMapCertificates/relations/basis1723.json"
theorem reductionProof1723 : EqualModuloRelations reduction1723.relations reduction1723.input reduction1723.output := by lin_cert using reduction1723.terms
theorem substitutionProof1723 : IsMapEvaluation generatorImages reduction1723.relations [13,13,13,32] reduction1723.output := by lin_cert using reduction1723.terms
def map_19_116 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1784 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1784 : InImage map_19_116 image1784 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1784 : Bundle := named_bundle% "RealMapCertificates/relations/basis1784.json"
theorem reductionProof1784 : EqualModuloRelations reduction1784.relations reduction1784.input reduction1784.output := by lin_cert using reduction1784.terms
theorem substitutionProof1784 : IsMapEvaluation generatorImages reduction1784.relations [8,167] reduction1784.output := by lin_cert using reduction1784.terms
def map_19_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1832 : InImage map_19_117 image1832 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1832 : Bundle := named_bundle% "RealMapCertificates/relations/basis1832.json"
theorem reductionProof1832 : EqualModuloRelations reduction1832.relations reduction1832.input reduction1832.output := by lin_cert using reduction1832.terms
theorem substitutionProof1832 : IsMapEvaluation generatorImages reduction1832.relations [8,173] reduction1832.output := by lin_cert using reduction1832.terms
def map_19_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1900 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1900 : InImage map_19_119 image1900 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1900 : Bundle := named_bundle% "RealMapCertificates/relations/basis1900.json"
theorem reductionProof1900 : EqualModuloRelations reduction1900.relations reduction1900.input reduction1900.output := by lin_cert using reduction1900.terms
theorem substitutionProof1900 : IsMapEvaluation generatorImages reduction1900.relations [9,167] reduction1900.output := by lin_cert using reduction1900.terms
def map_19_120 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1946 : InImage map_19_120 image1946 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1946 : Bundle := named_bundle% "RealMapCertificates/relations/basis1946.json"
theorem reductionProof1946 : EqualModuloRelations reduction1946.relations reduction1946.input reduction1946.output := by lin_cert using reduction1946.terms
theorem substitutionProof1946 : IsMapEvaluation generatorImages reduction1946.relations [13,13,23,24] reduction1946.output := by lin_cert using reduction1946.terms
def image1947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1947 : InImage map_19_120 image1947 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1947 : Bundle := named_bundle% "RealMapCertificates/relations/basis1947.json"
theorem reductionProof1947 : EqualModuloRelations reduction1947.relations reduction1947.input reduction1947.output := by lin_cert using reduction1947.terms
theorem substitutionProof1947 : IsMapEvaluation generatorImages reduction1947.relations [8,186] reduction1947.output := by lin_cert using reduction1947.terms
def image1948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1948 : InImage map_19_120 image1948 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1948 : Bundle := named_bundle% "RealMapCertificates/relations/basis1948.json"
theorem reductionProof1948 : EqualModuloRelations reduction1948.relations reduction1948.input reduction1948.output := by lin_cert using reduction1948.terms
theorem substitutionProof1948 : IsMapEvaluation generatorImages reduction1948.relations [0,260] reduction1948.output := by lin_cert using reduction1948.terms
def map_19_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1983 : InImage map_19_121 image1983 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1983 : Bundle := named_bundle% "RealMapCertificates/relations/basis1983.json"
theorem reductionProof1983 : EqualModuloRelations reduction1983.relations reduction1983.input reduction1983.output := by lin_cert using reduction1983.terms
theorem substitutionProof1983 : IsMapEvaluation generatorImages reduction1983.relations [274] reduction1983.output := by lin_cert using reduction1983.terms
def image1984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1984 : InImage map_19_121 image1984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1984 : Bundle := named_bundle% "RealMapCertificates/relations/basis1984.json"
theorem reductionProof1984 : EqualModuloRelations reduction1984.relations reduction1984.input reduction1984.output := by lin_cert using reduction1984.terms
theorem substitutionProof1984 : IsMapEvaluation generatorImages reduction1984.relations [1,260] reduction1984.output := by lin_cert using reduction1984.terms
def map_19_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2021 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2021 : InImage map_19_122 image2021 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2021 : Bundle := named_bundle% "RealMapCertificates/relations/basis2021.json"
theorem reductionProof2021 : EqualModuloRelations reduction2021.relations reduction2021.input reduction2021.output := by lin_cert using reduction2021.terms
theorem substitutionProof2021 : IsMapEvaluation generatorImages reduction2021.relations [13,167] reduction2021.output := by lin_cert using reduction2021.terms
def map_19_123 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2068 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2068 : InImage map_19_123 image2068 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2068 : Bundle := named_bundle% "RealMapCertificates/relations/basis2068.json"
theorem reductionProof2068 : EqualModuloRelations reduction2068.relations reduction2068.input reduction2068.output := by lin_cert using reduction2068.terms
theorem substitutionProof2068 : IsMapEvaluation generatorImages reduction2068.relations [8,23,80] reduction2068.output := by lin_cert using reduction2068.terms
def image2069 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2069 : InImage map_19_123 image2069 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2069 : Bundle := named_bundle% "RealMapCertificates/relations/basis2069.json"
theorem reductionProof2069 : EqualModuloRelations reduction2069.relations reduction2069.input reduction2069.output := by lin_cert using reduction2069.terms
theorem substitutionProof2069 : IsMapEvaluation generatorImages reduction2069.relations [0,278] reduction2069.output := by lin_cert using reduction2069.terms
def map_19_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2105 : InImage map_19_124 image2105 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2105 : Bundle := named_bundle% "RealMapCertificates/relations/basis2105.json"
theorem reductionProof2105 : EqualModuloRelations reduction2105.relations reduction2105.input reduction2105.output := by lin_cert using reduction2105.terms
theorem substitutionProof2105 : IsMapEvaluation generatorImages reduction2105.relations [1,278] reduction2105.output := by lin_cert using reduction2105.terms
def map_19_126 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2197 : InImage map_19_126 image2197 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2197 : Bundle := named_bundle% "RealMapCertificates/relations/basis2197.json"
theorem reductionProof2197 : EqualModuloRelations reduction2197.relations reduction2197.input reduction2197.output := by lin_cert using reduction2197.terms
theorem substitutionProof2197 : IsMapEvaluation generatorImages reduction2197.relations [299] reduction2197.output := by lin_cert using reduction2197.terms
def image2198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2198 : InImage map_19_126 image2198 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2198 : Bundle := named_bundle% "RealMapCertificates/relations/basis2198.json"
theorem reductionProof2198 : EqualModuloRelations reduction2198.relations reduction2198.input reduction2198.output := by lin_cert using reduction2198.terms
theorem substitutionProof2198 : IsMapEvaluation generatorImages reduction2198.relations [9,23,80] reduction2198.output := by lin_cert using reduction2198.terms
def image2199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2199 : InImage map_19_126 image2199 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2199 : Bundle := named_bundle% "RealMapCertificates/relations/basis2199.json"
theorem reductionProof2199 : EqualModuloRelations reduction2199.relations reduction2199.input reduction2199.output := by lin_cert using reduction2199.terms
theorem substitutionProof2199 : IsMapEvaluation generatorImages reduction2199.relations [0,291] reduction2199.output := by lin_cert using reduction2199.terms
def map_19_127 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2238 : InImage map_19_127 image2238 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2238 : Bundle := named_bundle% "RealMapCertificates/relations/basis2238.json"
theorem reductionProof2238 : EqualModuloRelations reduction2238.relations reduction2238.input reduction2238.output := by lin_cert using reduction2238.terms
theorem substitutionProof2238 : IsMapEvaluation generatorImages reduction2238.relations [1,291] reduction2238.output := by lin_cert using reduction2238.terms
def image2239 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2239 : InImage map_19_127 image2239 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2239 : Bundle := named_bundle% "RealMapCertificates/relations/basis2239.json"
theorem reductionProof2239 : EqualModuloRelations reduction2239.relations reduction2239.input reduction2239.output := by lin_cert using reduction2239.terms
theorem substitutionProof2239 : IsMapEvaluation generatorImages reduction2239.relations [0,0,292] reduction2239.output := by lin_cert using reduction2239.terms
def map_19_128 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2281 : InImage map_19_128 image2281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2281 : Bundle := named_bundle% "RealMapCertificates/relations/basis2281.json"
theorem reductionProof2281 : EqualModuloRelations reduction2281.relations reduction2281.input reduction2281.output := by lin_cert using reduction2281.terms
theorem substitutionProof2281 : IsMapEvaluation generatorImages reduction2281.relations [23,150] reduction2281.output := by lin_cert using reduction2281.terms
def image2282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2282 : InImage map_19_128 image2282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2282 : Bundle := named_bundle% "RealMapCertificates/relations/basis2282.json"
theorem reductionProof2282 : EqualModuloRelations reduction2282.relations reduction2282.input reduction2282.output := by lin_cert using reduction2282.terms
theorem substitutionProof2282 : IsMapEvaluation generatorImages reduction2282.relations [0,0,301] reduction2282.output := by lin_cert using reduction2282.terms
def image2283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2283 : InImage map_19_128 image2283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2283 : Bundle := named_bundle% "RealMapCertificates/relations/basis2283.json"
theorem reductionProof2283 : EqualModuloRelations reduction2283.relations reduction2283.input reduction2283.output := by lin_cert using reduction2283.terms
theorem substitutionProof2283 : IsMapEvaluation generatorImages reduction2283.relations [0,0,300] reduction2283.output := by lin_cert using reduction2283.terms
def map_19_129 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2353 : InImage map_19_129 image2353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2353 : Bundle := named_bundle% "RealMapCertificates/relations/basis2353.json"
theorem reductionProof2353 : EqualModuloRelations reduction2353.relations reduction2353.input reduction2353.output := by lin_cert using reduction2353.terms
theorem substitutionProof2353 : IsMapEvaluation generatorImages reduction2353.relations [327] reduction2353.output := by lin_cert using reduction2353.terms
def image2354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2354 : InImage map_19_129 image2354 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2354 : Bundle := named_bundle% "RealMapCertificates/relations/basis2354.json"
theorem reductionProof2354 : EqualModuloRelations reduction2354.relations reduction2354.input reduction2354.output := by lin_cert using reduction2354.terms
theorem substitutionProof2354 : IsMapEvaluation generatorImages reduction2354.relations [13,23,80] reduction2354.output := by lin_cert using reduction2354.terms
def image2355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2355 : InImage map_19_129 image2355 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2355 : Bundle := named_bundle% "RealMapCertificates/relations/basis2355.json"
theorem reductionProof2355 : EqualModuloRelations reduction2355.relations reduction2355.input reduction2355.output := by lin_cert using reduction2355.terms
theorem substitutionProof2355 : IsMapEvaluation generatorImages reduction2355.relations [0,317] reduction2355.output := by lin_cert using reduction2355.terms
def image2356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2356 : InImage map_19_129 image2356 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2356 : Bundle := named_bundle% "RealMapCertificates/relations/basis2356.json"
theorem reductionProof2356 : EqualModuloRelations reduction2356.relations reduction2356.input reduction2356.output := by lin_cert using reduction2356.terms
theorem substitutionProof2356 : IsMapEvaluation generatorImages reduction2356.relations [0,316] reduction2356.output := by lin_cert using reduction2356.terms
def map_19_130 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2405 : InImage map_19_130 image2405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2405 : Bundle := named_bundle% "RealMapCertificates/relations/basis2405.json"
theorem reductionProof2405 : EqualModuloRelations reduction2405.relations reduction2405.input reduction2405.output := by lin_cert using reduction2405.terms
theorem substitutionProof2405 : IsMapEvaluation generatorImages reduction2405.relations [1,1,300] reduction2405.output := by lin_cert using reduction2405.terms
def image2406 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2406 : InImage map_19_130 image2406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2406 : Bundle := named_bundle% "RealMapCertificates/relations/basis2406.json"
theorem reductionProof2406 : EqualModuloRelations reduction2406.relations reduction2406.input reduction2406.output := by lin_cert using reduction2406.terms
theorem substitutionProof2406 : IsMapEvaluation generatorImages reduction2406.relations [0,2,292] reduction2406.output := by lin_cert using reduction2406.terms
def map_19_132 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2538 : InImage map_19_132 image2538 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2538 : Bundle := named_bundle% "RealMapCertificates/relations/basis2538.json"
theorem reductionProof2538 : EqualModuloRelations reduction2538.relations reduction2538.input reduction2538.output := by lin_cert using reduction2538.terms
theorem substitutionProof2538 : IsMapEvaluation generatorImages reduction2538.relations [16,188] reduction2538.output := by lin_cert using reduction2538.terms
def image2539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2539 : InImage map_19_132 image2539 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2539 : Bundle := named_bundle% "RealMapCertificates/relations/basis2539.json"
theorem reductionProof2539 : EqualModuloRelations reduction2539.relations reduction2539.input reduction2539.output := by lin_cert using reduction2539.terms
theorem substitutionProof2539 : IsMapEvaluation generatorImages reduction2539.relations [1,334] reduction2539.output := by lin_cert using reduction2539.terms
def image2540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2540 : InImage map_19_132 image2540 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2540 : Bundle := named_bundle% "RealMapCertificates/relations/basis2540.json"
theorem reductionProof2540 : EqualModuloRelations reduction2540.relations reduction2540.input reduction2540.output := by lin_cert using reduction2540.terms
theorem substitutionProof2540 : IsMapEvaluation generatorImages reduction2540.relations [0,347] reduction2540.output := by lin_cert using reduction2540.terms
def image2541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2541 : InImage map_19_132 image2541 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2541 : Bundle := named_bundle% "RealMapCertificates/relations/basis2541.json"
theorem reductionProof2541 : EqualModuloRelations reduction2541.relations reduction2541.input reduction2541.output := by lin_cert using reduction2541.terms
theorem substitutionProof2541 : IsMapEvaluation generatorImages reduction2541.relations [0,346] reduction2541.output := by lin_cert using reduction2541.terms
def map_19_133 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2600 : InImage map_19_133 image2600 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2600 : Bundle := named_bundle% "RealMapCertificates/relations/basis2600.json"
theorem reductionProof2600 : EqualModuloRelations reduction2600.relations reduction2600.input reduction2600.output := by lin_cert using reduction2600.terms
theorem substitutionProof2600 : IsMapEvaluation generatorImages reduction2600.relations [1,347] reduction2600.output := by lin_cert using reduction2600.terms
def image2601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2601 : InImage map_19_133 image2601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2601 : Bundle := named_bundle% "RealMapCertificates/relations/basis2601.json"
theorem reductionProof2601 : EqualModuloRelations reduction2601.relations reduction2601.input reduction2601.output := by lin_cert using reduction2601.terms
theorem substitutionProof2601 : IsMapEvaluation generatorImages reduction2601.relations [0,356] reduction2601.output := by lin_cert using reduction2601.terms
def image2602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2602 : InImage map_19_133 image2602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2602 : Bundle := named_bundle% "RealMapCertificates/relations/basis2602.json"
theorem reductionProof2602 : EqualModuloRelations reduction2602.relations reduction2602.input reduction2602.output := by lin_cert using reduction2602.terms
theorem substitutionProof2602 : IsMapEvaluation generatorImages reduction2602.relations [0,355] reduction2602.output := by lin_cert using reduction2602.terms
def image2603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2603 : InImage map_19_133 image2603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2603 : Bundle := named_bundle% "RealMapCertificates/relations/basis2603.json"
theorem reductionProof2603 : EqualModuloRelations reduction2603.relations reduction2603.input reduction2603.output := by lin_cert using reduction2603.terms
theorem substitutionProof2603 : IsMapEvaluation generatorImages reduction2603.relations [0,17,188] reduction2603.output := by lin_cert using reduction2603.terms
def map_19_134 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2664 : InImage map_19_134 image2664 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2664 : Bundle := named_bundle% "RealMapCertificates/relations/basis2664.json"
theorem reductionProof2664 : EqualModuloRelations reduction2664.relations reduction2664.input reduction2664.output := by lin_cert using reduction2664.terms
theorem substitutionProof2664 : IsMapEvaluation generatorImages reduction2664.relations [381] reduction2664.output := by lin_cert using reduction2664.terms
def image2665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2665 : InImage map_19_134 image2665 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2665 : Bundle := named_bundle% "RealMapCertificates/relations/basis2665.json"
theorem reductionProof2665 : EqualModuloRelations reduction2665.relations reduction2665.input reduction2665.output := by lin_cert using reduction2665.terms
theorem substitutionProof2665 : IsMapEvaluation generatorImages reduction2665.relations [0,0,358] reduction2665.output := by lin_cert using reduction2665.terms
end RealMapCertificates
