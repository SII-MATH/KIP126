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
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 42 => [[5,5,7]]
  | 43 => []
  | 67 => []
  | 69 => []
  | 72 => []
  | 76 => []
  | 95 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 188 => []
  | 209 => []
  | 213 => []
  | 255 => []
  | 260 => []
  | 262 => []
  | 266 => []
  | 267 => []
  | 278 => []
  | 285 => []
  | 286 => []
  | 287 => []
  | 293 => []
  | 312 => []
  | 314 => []
  | 324 => []
  | 328 => []
  | 333 => []
  | 346 => []
  | 349 => []
  | 350 => []
  | 355 => []
  | 359 => []
  | 360 => []
  | 384 => []
  | 405 => []
  | 417 => []
  | 418 => []
  | 420 => []
  | 422 => []
  | 423 => []
  | 437 => []
  | 440 => []
  | 448 => []
  | 449 => []
  | 475 => []
  | 481 => []
  | 482 => []
  | 500 => []
  | 501 => []
  | 502 => []
  | 519 => []
  | 539 => []
  | 560 => []
  | 561 => []
  | 562 => []
  | 568 => []
  | 575 => []
  | 582 => []
  | 604 => []
  | 609 => []
  | 610 => []
  | 612 => []
  | 628 => []
  | 638 => []
  | 639 => []
  | 656 => []
  | 668 => []
  | 671 => []
  | 693 => []
  | 705 => []
  | 706 => []
  | 707 => []
  | 729 => []
  | 760 => []
  | 761 => []
  | 762 => []
  | 780 => []
  | _ => []
def map_19_135 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2764 : InImage map_19_135 image2764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2764 : Bundle := named_bundle% "RealMapCertificates/relations/basis2764.json"
theorem reductionProof2764 : EqualModuloRelations reduction2764.relations reduction2764.input reduction2764.output := by lin_cert using reduction2764.terms
theorem substitutionProof2764 : IsMapEvaluation generatorImages reduction2764.relations [8,255] reduction2764.output := by lin_cert using reduction2764.terms
def image2765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2765 : InImage map_19_135 image2765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2765 : Bundle := named_bundle% "RealMapCertificates/relations/basis2765.json"
theorem reductionProof2765 : EqualModuloRelations reduction2765.relations reduction2765.input reduction2765.output := by lin_cert using reduction2765.terms
theorem substitutionProof2765 : IsMapEvaluation generatorImages reduction2765.relations [2,346] reduction2765.output := by lin_cert using reduction2765.terms
def image2766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2766 : InImage map_19_135 image2766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2766 : Bundle := named_bundle% "RealMapCertificates/relations/basis2766.json"
theorem reductionProof2766 : EqualModuloRelations reduction2766.relations reduction2766.input reduction2766.output := by lin_cert using reduction2766.terms
theorem substitutionProof2766 : IsMapEvaluation generatorImages reduction2766.relations [0,0,0,359] reduction2766.output := by lin_cert using reduction2766.terms
def image2767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2767 : InImage map_19_135 image2767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2767 : Bundle := named_bundle% "RealMapCertificates/relations/basis2767.json"
theorem reductionProof2767 : EqualModuloRelations reduction2767.relations reduction2767.input reduction2767.output := by lin_cert using reduction2767.terms
theorem substitutionProof2767 : IsMapEvaluation generatorImages reduction2767.relations [0,0,0,0,349] reduction2767.output := by lin_cert using reduction2767.terms
def map_19_136 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2829 : InImage map_19_136 image2829 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2829 : Bundle := named_bundle% "RealMapCertificates/relations/basis2829.json"
theorem reductionProof2829 : EqualModuloRelations reduction2829.relations reduction2829.input reduction2829.output := by lin_cert using reduction2829.terms
theorem substitutionProof2829 : IsMapEvaluation generatorImages reduction2829.relations [13,13,13,67] reduction2829.output := by lin_cert using reduction2829.terms
def image2830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2830 : InImage map_19_136 image2830 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2830 : Bundle := named_bundle% "RealMapCertificates/relations/basis2830.json"
theorem reductionProof2830 : EqualModuloRelations reduction2830.relations reduction2830.input reduction2830.output := by lin_cert using reduction2830.terms
theorem substitutionProof2830 : IsMapEvaluation generatorImages reduction2830.relations [2,355] reduction2830.output := by lin_cert using reduction2830.terms
def image2831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2831 : InImage map_19_136 image2831 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2831 : Bundle := named_bundle% "RealMapCertificates/relations/basis2831.json"
theorem reductionProof2831 : EqualModuloRelations reduction2831.relations reduction2831.input reduction2831.output := by lin_cert using reduction2831.terms
theorem substitutionProof2831 : IsMapEvaluation generatorImages reduction2831.relations [0,405] reduction2831.output := by lin_cert using reduction2831.terms
def image2832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2832 : InImage map_19_136 image2832 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2832 : Bundle := named_bundle% "RealMapCertificates/relations/basis2832.json"
theorem reductionProof2832 : EqualModuloRelations reduction2832.relations reduction2832.input reduction2832.output := by lin_cert using reduction2832.terms
theorem substitutionProof2832 : IsMapEvaluation generatorImages reduction2832.relations [0,20,188] reduction2832.output := by lin_cert using reduction2832.terms
def map_19_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2900 : InImage map_19_137 image2900 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2900 : Bundle := named_bundle% "RealMapCertificates/relations/basis2900.json"
theorem reductionProof2900 : EqualModuloRelations reduction2900.relations reduction2900.input reduction2900.output := by lin_cert using reduction2900.terms
theorem substitutionProof2900 : IsMapEvaluation generatorImages reduction2900.relations [420] reduction2900.output := by lin_cert using reduction2900.terms
def map_19_138 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2987 : InImage map_19_138 image2987 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2987 : Bundle := named_bundle% "RealMapCertificates/relations/basis2987.json"
theorem reductionProof2987 : EqualModuloRelations reduction2987.relations reduction2987.input reduction2987.output := by lin_cert using reduction2987.terms
theorem substitutionProof2987 : IsMapEvaluation generatorImages reduction2987.relations [8,8,188] reduction2987.output := by lin_cert using reduction2987.terms
def image2988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2988 : InImage map_19_138 image2988 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2988 : Bundle := named_bundle% "RealMapCertificates/relations/basis2988.json"
theorem reductionProof2988 : EqualModuloRelations reduction2988.relations reduction2988.input reduction2988.output := by lin_cert using reduction2988.terms
theorem substitutionProof2988 : IsMapEvaluation generatorImages reduction2988.relations [7,278] reduction2988.output := by lin_cert using reduction2988.terms
def image2989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2989 : InImage map_19_138 image2989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2989 : Bundle := named_bundle% "RealMapCertificates/relations/basis2989.json"
theorem reductionProof2989 : EqualModuloRelations reduction2989.relations reduction2989.input reduction2989.output := by lin_cert using reduction2989.terms
theorem substitutionProof2989 : IsMapEvaluation generatorImages reduction2989.relations [0,16,209] reduction2989.output := by lin_cert using reduction2989.terms
def map_19_139 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3064 : InImage map_19_139 image3064 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3064 : Bundle := named_bundle% "RealMapCertificates/relations/basis3064.json"
theorem reductionProof3064 : EqualModuloRelations reduction3064.relations reduction3064.input reduction3064.output := by lin_cert using reduction3064.terms
theorem substitutionProof3064 : IsMapEvaluation generatorImages reduction3064.relations [0,22,188] reduction3064.output := by lin_cert using reduction3064.terms
def image3065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3065 : InImage map_19_139 image3065 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3065 : Bundle := named_bundle% "RealMapCertificates/relations/basis3065.json"
theorem reductionProof3065 : EqualModuloRelations reduction3065.relations reduction3065.input reduction3065.output := by lin_cert using reduction3065.terms
theorem substitutionProof3065 : IsMapEvaluation generatorImages reduction3065.relations [0,8,267] reduction3065.output := by lin_cert using reduction3065.terms
def image3066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3066 : InImage map_19_139 image3066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3066 : Bundle := named_bundle% "RealMapCertificates/relations/basis3066.json"
theorem reductionProof3066 : EqualModuloRelations reduction3066.relations reduction3066.input reduction3066.output := by lin_cert using reduction3066.terms
theorem substitutionProof3066 : IsMapEvaluation generatorImages reduction3066.relations [0,0,17,209] reduction3066.output := by lin_cert using reduction3066.terms
def map_19_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3137 : InImage map_19_140 image3137 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3137 : Bundle := named_bundle% "RealMapCertificates/relations/basis3137.json"
theorem reductionProof3137 : EqualModuloRelations reduction3137.relations reduction3137.input reduction3137.output := by lin_cert using reduction3137.terms
theorem substitutionProof3137 : IsMapEvaluation generatorImages reduction3137.relations [0,0,0,422] reduction3137.output := by lin_cert using reduction3137.terms
def map_19_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3244 : InImage map_19_141 image3244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3244 : Bundle := named_bundle% "RealMapCertificates/relations/basis3244.json"
theorem reductionProof3244 : EqualModuloRelations reduction3244.relations reduction3244.input reduction3244.output := by lin_cert using reduction3244.terms
theorem substitutionProof3244 : IsMapEvaluation generatorImages reduction3244.relations [8,9,188] reduction3244.output := by lin_cert using reduction3244.terms
def image3245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3245 : InImage map_19_141 image3245 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3245 : Bundle := named_bundle% "RealMapCertificates/relations/basis3245.json"
theorem reductionProof3245 : EqualModuloRelations reduction3245.relations reduction3245.input reduction3245.output := by lin_cert using reduction3245.terms
theorem substitutionProof3245 : IsMapEvaluation generatorImages reduction3245.relations [0,0,0,437] reduction3245.output := by lin_cert using reduction3245.terms
def map_19_142 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3313 : InImage map_19_142 image3313 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3313 : Bundle := named_bundle% "RealMapCertificates/relations/basis3313.json"
theorem reductionProof3313 : EqualModuloRelations reduction3313.relations reduction3313.input reduction3313.output := by lin_cert using reduction3313.terms
theorem substitutionProof3313 : IsMapEvaluation generatorImages reduction3313.relations [9,13,13,95] reduction3313.output := by lin_cert using reduction3313.terms
def image3314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3314 : InImage map_19_142 image3314 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3314 : Bundle := named_bundle% "RealMapCertificates/relations/basis3314.json"
theorem reductionProof3314 : EqualModuloRelations reduction3314.relations reduction3314.input reduction3314.output := by lin_cert using reduction3314.terms
theorem substitutionProof3314 : IsMapEvaluation generatorImages reduction3314.relations [0,9,267] reduction3314.output := by lin_cert using reduction3314.terms
def image3315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3315 : InImage map_19_142 image3315 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3315 : Bundle := named_bundle% "RealMapCertificates/relations/basis3315.json"
theorem reductionProof3315 : EqualModuloRelations reduction3315.relations reduction3315.input reduction3315.output := by lin_cert using reduction3315.terms
theorem substitutionProof3315 : IsMapEvaluation generatorImages reduction3315.relations [0,0,3,359] reduction3315.output := by lin_cert using reduction3315.terms
def image3316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3316 : InImage map_19_142 image3316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3316 : Bundle := named_bundle% "RealMapCertificates/relations/basis3316.json"
theorem reductionProof3316 : EqualModuloRelations reduction3316.relations reduction3316.input reduction3316.output := by lin_cert using reduction3316.terms
theorem substitutionProof3316 : IsMapEvaluation generatorImages reduction3316.relations [0,0,0,0,0,0,418] reduction3316.output := by lin_cert using reduction3316.terms
def map_19_143 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3389 : InImage map_19_143 image3389 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3389 : Bundle := named_bundle% "RealMapCertificates/relations/basis3389.json"
theorem reductionProof3389 : EqualModuloRelations reduction3389.relations reduction3389.input reduction3389.output := by lin_cert using reduction3389.terms
theorem substitutionProof3389 : IsMapEvaluation generatorImages reduction3389.relations [8,293] reduction3389.output := by lin_cert using reduction3389.terms
def image3390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3390 : InImage map_19_143 image3390 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3390 : Bundle := named_bundle% "RealMapCertificates/relations/basis3390.json"
theorem reductionProof3390 : EqualModuloRelations reduction3390.relations reduction3390.input reduction3390.output := by lin_cert using reduction3390.terms
theorem substitutionProof3390 : IsMapEvaluation generatorImages reduction3390.relations [0,0,0,0,0,440] reduction3390.output := by lin_cert using reduction3390.terms
def map_19_144 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3486 : InImage map_19_144 image3486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3486 : Bundle := named_bundle% "RealMapCertificates/relations/basis3486.json"
theorem reductionProof3486 : EqualModuloRelations reduction3486.relations reduction3486.input reduction3486.output := by lin_cert using reduction3486.terms
theorem substitutionProof3486 : IsMapEvaluation generatorImages reduction3486.relations [13,266] reduction3486.output := by lin_cert using reduction3486.terms
def image3487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3487 : InImage map_19_144 image3487 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3487 : Bundle := named_bundle% "RealMapCertificates/relations/basis3487.json"
theorem reductionProof3487 : EqualModuloRelations reduction3487.relations reduction3487.input reduction3487.output := by lin_cert using reduction3487.terms
theorem substitutionProof3487 : IsMapEvaluation generatorImages reduction3487.relations [8,13,188] reduction3487.output := by lin_cert using reduction3487.terms
def image3488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3488 : InImage map_19_144 image3488 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3488 : Bundle := named_bundle% "RealMapCertificates/relations/basis3488.json"
theorem reductionProof3488 : EqualModuloRelations reduction3488.relations reduction3488.input reduction3488.output := by lin_cert using reduction3488.terms
theorem substitutionProof3488 : IsMapEvaluation generatorImages reduction3488.relations [0,0,0,0,0,449] reduction3488.output := by lin_cert using reduction3488.terms
def map_19_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3559 : InImage map_19_145 image3559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3559 : Bundle := named_bundle% "RealMapCertificates/relations/basis3559.json"
theorem reductionProof3559 : EqualModuloRelations reduction3559.relations reduction3559.input reduction3559.output := by lin_cert using reduction3559.terms
theorem substitutionProof3559 : IsMapEvaluation generatorImages reduction3559.relations [13,13,13,95] reduction3559.output := by lin_cert using reduction3559.terms
def image3560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3560 : InImage map_19_145 image3560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3560 : Bundle := named_bundle% "RealMapCertificates/relations/basis3560.json"
theorem reductionProof3560 : EqualModuloRelations reduction3560.relations reduction3560.input reduction3560.output := by lin_cert using reduction3560.terms
theorem substitutionProof3560 : IsMapEvaluation generatorImages reduction3560.relations [0,500] reduction3560.output := by lin_cert using reduction3560.terms
def map_19_146 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image3634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3634 : InImage map_19_146 image3634 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction3634 : Bundle := named_bundle% "RealMapCertificates/relations/basis3634.json"
theorem reductionProof3634 : EqualModuloRelations reduction3634.relations reduction3634.input reduction3634.output := by lin_cert using reduction3634.terms
theorem substitutionProof3634 : IsMapEvaluation generatorImages reduction3634.relations [9,293] reduction3634.output := by lin_cert using reduction3634.terms
def image3635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3635 : InImage map_19_146 image3635 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction3635 : Bundle := named_bundle% "RealMapCertificates/relations/basis3635.json"
theorem reductionProof3635 : EqualModuloRelations reduction3635.relations reduction3635.input reduction3635.output := by lin_cert using reduction3635.terms
theorem substitutionProof3635 : IsMapEvaluation generatorImages reduction3635.relations [1,501] reduction3635.output := by lin_cert using reduction3635.terms
def image3636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3636 : InImage map_19_146 image3636 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction3636 : Bundle := named_bundle% "RealMapCertificates/relations/basis3636.json"
theorem reductionProof3636 : EqualModuloRelations reduction3636.relations reduction3636.input reduction3636.output := by lin_cert using reduction3636.terms
theorem substitutionProof3636 : IsMapEvaluation generatorImages reduction3636.relations [1,500] reduction3636.output := by lin_cert using reduction3636.terms
def image3637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3637 : InImage map_19_146 image3637 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction3637 : Bundle := named_bundle% "RealMapCertificates/relations/basis3637.json"
theorem reductionProof3637 : EqualModuloRelations reduction3637.relations reduction3637.input reduction3637.output := by lin_cert using reduction3637.terms
theorem substitutionProof3637 : IsMapEvaluation generatorImages reduction3637.relations [0,0,0,0,481] reduction3637.output := by lin_cert using reduction3637.terms
def image3638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3638 : InImage map_19_146 image3638 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction3638 : Bundle := named_bundle% "RealMapCertificates/relations/basis3638.json"
theorem reductionProof3638 : EqualModuloRelations reduction3638.relations reduction3638.input reduction3638.output := by lin_cert using reduction3638.terms
theorem substitutionProof3638 : IsMapEvaluation generatorImages reduction3638.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3638.output := by lin_cert using reduction3638.terms
def map_19_147 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3754 : InImage map_19_147 image3754 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3754 : Bundle := named_bundle% "RealMapCertificates/relations/basis3754.json"
theorem reductionProof3754 : EqualModuloRelations reduction3754.relations reduction3754.input reduction3754.output := by lin_cert using reduction3754.terms
theorem substitutionProof3754 : IsMapEvaluation generatorImages reduction3754.relations [9,13,188] reduction3754.output := by lin_cert using reduction3754.terms
def image3755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3755 : InImage map_19_147 image3755 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3755 : Bundle := named_bundle% "RealMapCertificates/relations/basis3755.json"
theorem reductionProof3755 : EqualModuloRelations reduction3755.relations reduction3755.input reduction3755.output := by lin_cert using reduction3755.terms
theorem substitutionProof3755 : IsMapEvaluation generatorImages reduction3755.relations [0,0,0,0,0,482] reduction3755.output := by lin_cert using reduction3755.terms
def map_19_148 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3823 : InImage map_19_148 image3823 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3823 : Bundle := named_bundle% "RealMapCertificates/relations/basis3823.json"
theorem reductionProof3823 : EqualModuloRelations reduction3823.relations reduction3823.input reduction3823.output := by lin_cert using reduction3823.terms
theorem substitutionProof3823 : IsMapEvaluation generatorImages reduction3823.relations [1,519] reduction3823.output := by lin_cert using reduction3823.terms
def image3824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3824 : InImage map_19_148 image3824 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3824 : Bundle := named_bundle% "RealMapCertificates/relations/basis3824.json"
theorem reductionProof3824 : EqualModuloRelations reduction3824.relations reduction3824.input reduction3824.output := by lin_cert using reduction3824.terms
theorem substitutionProof3824 : IsMapEvaluation generatorImages reduction3824.relations [0,13,286] reduction3824.output := by lin_cert using reduction3824.terms
def map_19_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3906 : InImage map_19_149 image3906 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3906 : Bundle := named_bundle% "RealMapCertificates/relations/basis3906.json"
theorem reductionProof3906 : EqualModuloRelations reduction3906.relations reduction3906.input reduction3906.output := by lin_cert using reduction3906.terms
theorem substitutionProof3906 : IsMapEvaluation generatorImages reduction3906.relations [8,350] reduction3906.output := by lin_cert using reduction3906.terms
def image3907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3907 : InImage map_19_149 image3907 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3907 : Bundle := named_bundle% "RealMapCertificates/relations/basis3907.json"
theorem reductionProof3907 : EqualModuloRelations reduction3907.relations reduction3907.input reduction3907.output := by lin_cert using reduction3907.terms
theorem substitutionProof3907 : IsMapEvaluation generatorImages reduction3907.relations [0,539] reduction3907.output := by lin_cert using reduction3907.terms
def map_19_150 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4012 : InImage map_19_150 image4012 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4012 : Bundle := named_bundle% "RealMapCertificates/relations/basis4012.json"
theorem reductionProof4012 : EqualModuloRelations reduction4012.relations reduction4012.input reduction4012.output := by lin_cert using reduction4012.terms
theorem substitutionProof4012 : IsMapEvaluation generatorImages reduction4012.relations [13,13,188] reduction4012.output := by lin_cert using reduction4012.terms
def image4013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4013 : InImage map_19_150 image4013 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4013 : Bundle := named_bundle% "RealMapCertificates/relations/basis4013.json"
theorem reductionProof4013 : EqualModuloRelations reduction4013.relations reduction4013.input reduction4013.output := by lin_cert using reduction4013.terms
theorem substitutionProof4013 : IsMapEvaluation generatorImages reduction4013.relations [9,328] reduction4013.output := by lin_cert using reduction4013.terms
def map_19_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4101 : InImage map_19_151 image4101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4101 : Bundle := named_bundle% "RealMapCertificates/relations/basis4101.json"
theorem reductionProof4101 : EqualModuloRelations reduction4101.relations reduction4101.input reduction4101.output := by lin_cert using reduction4101.terms
theorem substitutionProof4101 : IsMapEvaluation generatorImages reduction4101.relations [18,260] reduction4101.output := by lin_cert using reduction4101.terms
def image4102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4102 : InImage map_19_151 image4102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4102 : Bundle := named_bundle% "RealMapCertificates/relations/basis4102.json"
theorem reductionProof4102 : EqualModuloRelations reduction4102.relations reduction4102.input reduction4102.output := by lin_cert using reduction4102.terms
theorem substitutionProof4102 : IsMapEvaluation generatorImages reduction4102.relations [13,13,23,76] reduction4102.output := by lin_cert using reduction4102.terms
def map_19_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4183 : InImage map_19_152 image4183 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4183 : Bundle := named_bundle% "RealMapCertificates/relations/basis4183.json"
theorem reductionProof4183 : EqualModuloRelations reduction4183.relations reduction4183.input reduction4183.output := by lin_cert using reduction4183.terms
theorem substitutionProof4183 : IsMapEvaluation generatorImages reduction4183.relations [8,384] reduction4183.output := by lin_cert using reduction4183.terms
def image4184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4184 : InImage map_19_152 image4184 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4184 : Bundle := named_bundle% "RealMapCertificates/relations/basis4184.json"
theorem reductionProof4184 : EqualModuloRelations reduction4184.relations reduction4184.input reduction4184.output := by lin_cert using reduction4184.terms
theorem substitutionProof4184 : IsMapEvaluation generatorImages reduction4184.relations [1,560] reduction4184.output := by lin_cert using reduction4184.terms
def image4185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4185 : InImage map_19_152 image4185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4185 : Bundle := named_bundle% "RealMapCertificates/relations/basis4185.json"
theorem reductionProof4185 : EqualModuloRelations reduction4185.relations reduction4185.input reduction4185.output := by lin_cert using reduction4185.terms
theorem substitutionProof4185 : IsMapEvaluation generatorImages reduction4185.relations [0,69,138] reduction4185.output := by lin_cert using reduction4185.terms
def image4186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4186 : InImage map_19_152 image4186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4186 : Bundle := named_bundle% "RealMapCertificates/relations/basis4186.json"
theorem reductionProof4186 : EqualModuloRelations reduction4186.relations reduction4186.input reduction4186.output := by lin_cert using reduction4186.terms
theorem substitutionProof4186 : IsMapEvaluation generatorImages reduction4186.relations [0,0,561] reduction4186.output := by lin_cert using reduction4186.terms
def map_19_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4290 : InImage map_19_153 image4290 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4290 : Bundle := named_bundle% "RealMapCertificates/relations/basis4290.json"
theorem reductionProof4290 : EqualModuloRelations reduction4290.relations reduction4290.input reduction4290.output := by lin_cert using reduction4290.terms
theorem substitutionProof4290 : IsMapEvaluation generatorImages reduction4290.relations [13,328] reduction4290.output := by lin_cert using reduction4290.terms
def image4291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4291 : InImage map_19_153 image4291 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4291 : Bundle := named_bundle% "RealMapCertificates/relations/basis4291.json"
theorem reductionProof4291 : EqualModuloRelations reduction4291.relations reduction4291.input reduction4291.output := by lin_cert using reduction4291.terms
theorem substitutionProof4291 : IsMapEvaluation generatorImages reduction4291.relations [0,0,568] reduction4291.output := by lin_cert using reduction4291.terms
def map_19_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4353 : InImage map_19_154 image4353 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4353 : Bundle := named_bundle% "RealMapCertificates/relations/basis4353.json"
theorem reductionProof4353 : EqualModuloRelations reduction4353.relations reduction4353.input reduction4353.output := by lin_cert using reduction4353.terms
theorem substitutionProof4353 : IsMapEvaluation generatorImages reduction4353.relations [18,278] reduction4353.output := by lin_cert using reduction4353.terms
def image4354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4354 : InImage map_19_154 image4354 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4354 : Bundle := named_bundle% "RealMapCertificates/relations/basis4354.json"
theorem reductionProof4354 : EqualModuloRelations reduction4354.relations reduction4354.input reduction4354.output := by lin_cert using reduction4354.terms
theorem substitutionProof4354 : IsMapEvaluation generatorImages reduction4354.relations [1,1,561] reduction4354.output := by lin_cert using reduction4354.terms
def map_19_155 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4441 : InImage map_19_155 image4441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4441 : Bundle := named_bundle% "RealMapCertificates/relations/basis4441.json"
theorem reductionProof4441 : EqualModuloRelations reduction4441.relations reduction4441.input reduction4441.output := by lin_cert using reduction4441.terms
theorem substitutionProof4441 : IsMapEvaluation generatorImages reduction4441.relations [42,209] reduction4441.output := by lin_cert using reduction4441.terms
def image4442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4442 : InImage map_19_155 image4442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4442 : Bundle := named_bundle% "RealMapCertificates/relations/basis4442.json"
theorem reductionProof4442 : EqualModuloRelations reduction4442.relations reduction4442.input reduction4442.output := by lin_cert using reduction4442.terms
theorem substitutionProof4442 : IsMapEvaluation generatorImages reduction4442.relations [8,423] reduction4442.output := by lin_cert using reduction4442.terms
def image4443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4443 : InImage map_19_155 image4443 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4443 : Bundle := named_bundle% "RealMapCertificates/relations/basis4443.json"
theorem reductionProof4443 : EqualModuloRelations reduction4443.relations reduction4443.input reduction4443.output := by lin_cert using reduction4443.terms
theorem substitutionProof4443 : IsMapEvaluation generatorImages reduction4443.relations [0,69,147] reduction4443.output := by lin_cert using reduction4443.terms
def image4444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4444 : InImage map_19_155 image4444 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4444 : Bundle := named_bundle% "RealMapCertificates/relations/basis4444.json"
theorem reductionProof4444 : EqualModuloRelations reduction4444.relations reduction4444.input reduction4444.output := by lin_cert using reduction4444.terms
theorem substitutionProof4444 : IsMapEvaluation generatorImages reduction4444.relations [0,0,582] reduction4444.output := by lin_cert using reduction4444.terms
def map_19_156 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4546 : InImage map_19_156 image4546 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4546 : Bundle := named_bundle% "RealMapCertificates/relations/basis4546.json"
theorem reductionProof4546 : EqualModuloRelations reduction4546.relations reduction4546.input reduction4546.output := by lin_cert using reduction4546.terms
theorem substitutionProof4546 : IsMapEvaluation generatorImages reduction4546.relations [609] reduction4546.output := by lin_cert using reduction4546.terms
def image4547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4547 : InImage map_19_156 image4547 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4547 : Bundle := named_bundle% "RealMapCertificates/relations/basis4547.json"
theorem reductionProof4547 : EqualModuloRelations reduction4547.relations reduction4547.input reduction4547.output := by lin_cert using reduction4547.terms
theorem substitutionProof4547 : IsMapEvaluation generatorImages reduction4547.relations [13,360] reduction4547.output := by lin_cert using reduction4547.terms
def map_19_157 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4621 : InImage map_19_157 image4621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4621 : Bundle := named_bundle% "RealMapCertificates/relations/basis4621.json"
theorem reductionProof4621 : EqualModuloRelations reduction4621.relations reduction4621.input reduction4621.output := by lin_cert using reduction4621.terms
theorem substitutionProof4621 : IsMapEvaluation generatorImages reduction4621.relations [8,448] reduction4621.output := by lin_cert using reduction4621.terms
def image4622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4622 : InImage map_19_157 image4622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4622 : Bundle := named_bundle% "RealMapCertificates/relations/basis4622.json"
theorem reductionProof4622 : EqualModuloRelations reduction4622.relations reduction4622.input reduction4622.output := by lin_cert using reduction4622.terms
theorem substitutionProof4622 : IsMapEvaluation generatorImages reduction4622.relations [0,610] reduction4622.output := by lin_cert using reduction4622.terms
def map_19_158 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4708 : InImage map_19_158 image4708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4708 : Bundle := named_bundle% "RealMapCertificates/relations/basis4708.json"
theorem reductionProof4708 : EqualModuloRelations reduction4708.relations reduction4708.input reduction4708.output := by lin_cert using reduction4708.terms
theorem substitutionProof4708 : IsMapEvaluation generatorImages reduction4708.relations [9,423] reduction4708.output := by lin_cert using reduction4708.terms
def image4709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4709 : InImage map_19_158 image4709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4709 : Bundle := named_bundle% "RealMapCertificates/relations/basis4709.json"
theorem reductionProof4709 : EqualModuloRelations reduction4709.relations reduction4709.input reduction4709.output := by lin_cert using reduction4709.terms
theorem substitutionProof4709 : IsMapEvaluation generatorImages reduction4709.relations [0,8,449] reduction4709.output := by lin_cert using reduction4709.terms
def image4710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4710 : InImage map_19_158 image4710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4710 : Bundle := named_bundle% "RealMapCertificates/relations/basis4710.json"
theorem reductionProof4710 : EqualModuloRelations reduction4710.relations reduction4710.input reduction4710.output := by lin_cert using reduction4710.terms
theorem substitutionProof4710 : IsMapEvaluation generatorImages reduction4710.relations [0,0,612] reduction4710.output := by lin_cert using reduction4710.terms
def image4711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4711 : InImage map_19_158 image4711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4711 : Bundle := named_bundle% "RealMapCertificates/relations/basis4711.json"
theorem reductionProof4711 : EqualModuloRelations reduction4711.relations reduction4711.input reduction4711.output := by lin_cert using reduction4711.terms
theorem substitutionProof4711 : IsMapEvaluation generatorImages reduction4711.relations [0,0,0,0,0,0,0,0,562] reduction4711.output := by lin_cert using reduction4711.terms
def map_19_159 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4808 : InImage map_19_159 image4808 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4808 : Bundle := named_bundle% "RealMapCertificates/relations/basis4808.json"
theorem reductionProof4808 : EqualModuloRelations reduction4808.relations reduction4808.input reduction4808.output := by lin_cert using reduction4808.terms
theorem substitutionProof4808 : IsMapEvaluation generatorImages reduction4808.relations [638] reduction4808.output := by lin_cert using reduction4808.terms
def image4809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4809 : InImage map_19_159 image4809 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4809 : Bundle := named_bundle% "RealMapCertificates/relations/basis4809.json"
theorem reductionProof4809 : EqualModuloRelations reduction4809.relations reduction4809.input reduction4809.output := by lin_cert using reduction4809.terms
theorem substitutionProof4809 : IsMapEvaluation generatorImages reduction4809.relations [23,287] reduction4809.output := by lin_cert using reduction4809.terms
def image4810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4810 : InImage map_19_159 image4810 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4810 : Bundle := named_bundle% "RealMapCertificates/relations/basis4810.json"
theorem reductionProof4810 : EqualModuloRelations reduction4810.relations reduction4810.input reduction4810.output := by lin_cert using reduction4810.terms
theorem substitutionProof4810 : IsMapEvaluation generatorImages reduction4810.relations [0,628] reduction4810.output := by lin_cert using reduction4810.terms
def image4811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4811 : InImage map_19_159 image4811 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4811 : Bundle := named_bundle% "RealMapCertificates/relations/basis4811.json"
theorem reductionProof4811 : EqualModuloRelations reduction4811.relations reduction4811.input reduction4811.output := by lin_cert using reduction4811.terms
theorem substitutionProof4811 : IsMapEvaluation generatorImages reduction4811.relations [0,0,0,0,0,0,0,575] reduction4811.output := by lin_cert using reduction4811.terms
def map_19_160 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4876 : InImage map_19_160 image4876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4876 : Bundle := named_bundle% "RealMapCertificates/relations/basis4876.json"
theorem reductionProof4876 : EqualModuloRelations reduction4876.relations reduction4876.input reduction4876.output := by lin_cert using reduction4876.terms
theorem substitutionProof4876 : IsMapEvaluation generatorImages reduction4876.relations [8,69,112] reduction4876.output := by lin_cert using reduction4876.terms
def image4877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4877 : InImage map_19_160 image4877 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4877 : Bundle := named_bundle% "RealMapCertificates/relations/basis4877.json"
theorem reductionProof4877 : EqualModuloRelations reduction4877.relations reduction4877.input reduction4877.output := by lin_cert using reduction4877.terms
theorem substitutionProof4877 : IsMapEvaluation generatorImages reduction4877.relations [1,628] reduction4877.output := by lin_cert using reduction4877.terms
def image4878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4878 : InImage map_19_160 image4878 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4878 : Bundle := named_bundle% "RealMapCertificates/relations/basis4878.json"
theorem reductionProof4878 : EqualModuloRelations reduction4878.relations reduction4878.input reduction4878.output := by lin_cert using reduction4878.terms
theorem substitutionProof4878 : IsMapEvaluation generatorImages reduction4878.relations [0,0,0,17,314] reduction4878.output := by lin_cert using reduction4878.terms
def map_19_161 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4973 : InImage map_19_161 image4973 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4973 : Bundle := named_bundle% "RealMapCertificates/relations/basis4973.json"
theorem reductionProof4973 : EqualModuloRelations reduction4973.relations reduction4973.input reduction4973.output := by lin_cert using reduction4973.terms
theorem substitutionProof4973 : IsMapEvaluation generatorImages reduction4973.relations [13,423] reduction4973.output := by lin_cert using reduction4973.terms
def image4974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4974 : InImage map_19_161 image4974 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4974 : Bundle := named_bundle% "RealMapCertificates/relations/basis4974.json"
theorem reductionProof4974 : EqualModuloRelations reduction4974.relations reduction4974.input reduction4974.output := by lin_cert using reduction4974.terms
theorem substitutionProof4974 : IsMapEvaluation generatorImages reduction4974.relations [1,639] reduction4974.output := by lin_cert using reduction4974.terms
def image4975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4975 : InImage map_19_161 image4975 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4975 : Bundle := named_bundle% "RealMapCertificates/relations/basis4975.json"
theorem reductionProof4975 : EqualModuloRelations reduction4975.relations reduction4975.input reduction4975.output := by lin_cert using reduction4975.terms
theorem substitutionProof4975 : IsMapEvaluation generatorImages reduction4975.relations [0,8,69,113] reduction4975.output := by lin_cert using reduction4975.terms
def image4976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4976 : InImage map_19_161 image4976 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4976 : Bundle := named_bundle% "RealMapCertificates/relations/basis4976.json"
theorem reductionProof4976 : EqualModuloRelations reduction4976.relations reduction4976.input reduction4976.output := by lin_cert using reduction4976.terms
theorem substitutionProof4976 : IsMapEvaluation generatorImages reduction4976.relations [0,0,8,475] reduction4976.output := by lin_cert using reduction4976.terms
def map_19_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5086 : InImage map_19_162 image5086 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5086 : Bundle := named_bundle% "RealMapCertificates/relations/basis5086.json"
theorem reductionProof5086 : EqualModuloRelations reduction5086.relations reduction5086.input reduction5086.output := by lin_cert using reduction5086.terms
theorem substitutionProof5086 : IsMapEvaluation generatorImages reduction5086.relations [668] reduction5086.output := by lin_cert using reduction5086.terms
def image5087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5087 : InImage map_19_162 image5087 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5087 : Bundle := named_bundle% "RealMapCertificates/relations/basis5087.json"
theorem reductionProof5087 : EqualModuloRelations reduction5087.relations reduction5087.input reduction5087.output := by lin_cert using reduction5087.terms
theorem substitutionProof5087 : IsMapEvaluation generatorImages reduction5087.relations [2,628] reduction5087.output := by lin_cert using reduction5087.terms
def image5088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5088 : InImage map_19_162 image5088 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5088 : Bundle := named_bundle% "RealMapCertificates/relations/basis5088.json"
theorem reductionProof5088 : EqualModuloRelations reduction5088.relations reduction5088.input reduction5088.output := by lin_cert using reduction5088.terms
theorem substitutionProof5088 : IsMapEvaluation generatorImages reduction5088.relations [0,656] reduction5088.output := by lin_cert using reduction5088.terms
def map_19_164 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5262 : InImage map_19_164 image5262 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5262 : Bundle := named_bundle% "RealMapCertificates/relations/basis5262.json"
theorem reductionProof5262 : EqualModuloRelations reduction5262.relations reduction5262.input reduction5262.output := by lin_cert using reduction5262.terms
theorem substitutionProof5262 : IsMapEvaluation generatorImages reduction5262.relations [0,8,8,312] reduction5262.output := by lin_cert using reduction5262.terms
def image5263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5263 : InImage map_19_164 image5263 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5263 : Bundle := named_bundle% "RealMapCertificates/relations/basis5263.json"
theorem reductionProof5263 : EqualModuloRelations reduction5263.relations reduction5263.input reduction5263.output := by lin_cert using reduction5263.terms
theorem substitutionProof5263 : IsMapEvaluation generatorImages reduction5263.relations [0,0,8,502] reduction5263.output := by lin_cert using reduction5263.terms
def map_19_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5385 : InImage map_19_165 image5385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5385 : Bundle := named_bundle% "RealMapCertificates/relations/basis5385.json"
theorem reductionProof5385 : EqualModuloRelations reduction5385.relations reduction5385.input reduction5385.output := by lin_cert using reduction5385.terms
theorem substitutionProof5385 : IsMapEvaluation generatorImages reduction5385.relations [706] reduction5385.output := by lin_cert using reduction5385.terms
def image5386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5386 : InImage map_19_165 image5386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5386 : Bundle := named_bundle% "RealMapCertificates/relations/basis5386.json"
theorem reductionProof5386 : EqualModuloRelations reduction5386.relations reduction5386.input reduction5386.output := by lin_cert using reduction5386.terms
theorem substitutionProof5386 : IsMapEvaluation generatorImages reduction5386.relations [705] reduction5386.output := by lin_cert using reduction5386.terms
def image5387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5387 : InImage map_19_165 image5387 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5387 : Bundle := named_bundle% "RealMapCertificates/relations/basis5387.json"
theorem reductionProof5387 : EqualModuloRelations reduction5387.relations reduction5387.input reduction5387.output := by lin_cert using reduction5387.terms
theorem substitutionProof5387 : IsMapEvaluation generatorImages reduction5387.relations [2,656] reduction5387.output := by lin_cert using reduction5387.terms
def map_19_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5476 : InImage map_19_166 image5476 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5476 : Bundle := named_bundle% "RealMapCertificates/relations/basis5476.json"
theorem reductionProof5476 : EqualModuloRelations reduction5476.relations reduction5476.input reduction5476.output := by lin_cert using reduction5476.terms
theorem substitutionProof5476 : IsMapEvaluation generatorImages reduction5476.relations [8,8,69,72] reduction5476.output := by lin_cert using reduction5476.terms
def image5477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5477 : InImage map_19_166 image5477 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5477 : Bundle := named_bundle% "RealMapCertificates/relations/basis5477.json"
theorem reductionProof5477 : EqualModuloRelations reduction5477.relations reduction5477.input reduction5477.output := by lin_cert using reduction5477.terms
theorem substitutionProof5477 : IsMapEvaluation generatorImages reduction5477.relations [3,628] reduction5477.output := by lin_cert using reduction5477.terms
def image5478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5478 : InImage map_19_166 image5478 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5478 : Bundle := named_bundle% "RealMapCertificates/relations/basis5478.json"
theorem reductionProof5478 : EqualModuloRelations reduction5478.relations reduction5478.input reduction5478.output := by lin_cert using reduction5478.terms
theorem substitutionProof5478 : IsMapEvaluation generatorImages reduction5478.relations [0,0,693] reduction5478.output := by lin_cert using reduction5478.terms
def map_19_167 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5587 : InImage map_19_167 image5587 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5587 : Bundle := named_bundle% "RealMapCertificates/relations/basis5587.json"
theorem reductionProof5587 : EqualModuloRelations reduction5587.relations reduction5587.input reduction5587.output := by lin_cert using reduction5587.terms
theorem substitutionProof5587 : IsMapEvaluation generatorImages reduction5587.relations [13,13,262] reduction5587.output := by lin_cert using reduction5587.terms
def image5588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5588 : InImage map_19_167 image5588 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5588 : Bundle := named_bundle% "RealMapCertificates/relations/basis5588.json"
theorem reductionProof5588 : EqualModuloRelations reduction5588.relations reduction5588.input reduction5588.output := by lin_cert using reduction5588.terms
theorem substitutionProof5588 : IsMapEvaluation generatorImages reduction5588.relations [3,639] reduction5588.output := by lin_cert using reduction5588.terms
def image5589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5589 : InImage map_19_167 image5589 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5589 : Bundle := named_bundle% "RealMapCertificates/relations/basis5589.json"
theorem reductionProof5589 : EqualModuloRelations reduction5589.relations reduction5589.input reduction5589.output := by lin_cert using reduction5589.terms
theorem substitutionProof5589 : IsMapEvaluation generatorImages reduction5589.relations [0,0,8,8,333] reduction5589.output := by lin_cert using reduction5589.terms
def image5590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5590 : InImage map_19_167 image5590 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5590 : Bundle := named_bundle% "RealMapCertificates/relations/basis5590.json"
theorem reductionProof5590 : EqualModuloRelations reduction5590.relations reduction5590.input reduction5590.output := by lin_cert using reduction5590.terms
theorem substitutionProof5590 : IsMapEvaluation generatorImages reduction5590.relations [0,0,0,0,0,671] reduction5590.output := by lin_cert using reduction5590.terms
def map_19_168 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5708 : InImage map_19_168 image5708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5708 : Bundle := named_bundle% "RealMapCertificates/relations/basis5708.json"
theorem reductionProof5708 : EqualModuloRelations reduction5708.relations reduction5708.input reduction5708.output := by lin_cert using reduction5708.terms
theorem substitutionProof5708 : IsMapEvaluation generatorImages reduction5708.relations [43,266] reduction5708.output := by lin_cert using reduction5708.terms
def image5709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5709 : InImage map_19_168 image5709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5709 : Bundle := named_bundle% "RealMapCertificates/relations/basis5709.json"
theorem reductionProof5709 : EqualModuloRelations reduction5709.relations reduction5709.input reduction5709.output := by lin_cert using reduction5709.terms
theorem substitutionProof5709 : IsMapEvaluation generatorImages reduction5709.relations [13,23,213] reduction5709.output := by lin_cert using reduction5709.terms
def image5710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5710 : InImage map_19_168 image5710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5710 : Bundle := named_bundle% "RealMapCertificates/relations/basis5710.json"
theorem reductionProof5710 : EqualModuloRelations reduction5710.relations reduction5710.input reduction5710.output := by lin_cert using reduction5710.terms
theorem substitutionProof5710 : IsMapEvaluation generatorImages reduction5710.relations [0,729] reduction5710.output := by lin_cert using reduction5710.terms
def image5711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5711 : InImage map_19_168 image5711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5711 : Bundle := named_bundle% "RealMapCertificates/relations/basis5711.json"
theorem reductionProof5711 : EqualModuloRelations reduction5711.relations reduction5711.input reduction5711.output := by lin_cert using reduction5711.terms
theorem substitutionProof5711 : IsMapEvaluation generatorImages reduction5711.relations [0,0,0,707] reduction5711.output := by lin_cert using reduction5711.terms
def map_19_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5808 : InImage map_19_169 image5808 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5808 : Bundle := named_bundle% "RealMapCertificates/relations/basis5808.json"
theorem reductionProof5808 : EqualModuloRelations reduction5808.relations reduction5808.input reduction5808.output := by lin_cert using reduction5808.terms
theorem substitutionProof5808 : IsMapEvaluation generatorImages reduction5808.relations [1,729] reduction5808.output := by lin_cert using reduction5808.terms
def image5809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5809 : InImage map_19_169 image5809 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5809 : Bundle := named_bundle% "RealMapCertificates/relations/basis5809.json"
theorem reductionProof5809 : EqualModuloRelations reduction5809.relations reduction5809.input reduction5809.output := by lin_cert using reduction5809.terms
theorem substitutionProof5809 : IsMapEvaluation generatorImages reduction5809.relations [0,43,267] reduction5809.output := by lin_cert using reduction5809.terms
def map_19_170 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5915 : InImage map_19_170 image5915 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5915 : Bundle := named_bundle% "RealMapCertificates/relations/basis5915.json"
theorem reductionProof5915 : EqualModuloRelations reduction5915.relations reduction5915.input reduction5915.output := by lin_cert using reduction5915.terms
theorem substitutionProof5915 : IsMapEvaluation generatorImages reduction5915.relations [760] reduction5915.output := by lin_cert using reduction5915.terms
def map_19_171 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6050 : InImage map_19_171 image6050 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6050 : Bundle := named_bundle% "RealMapCertificates/relations/basis6050.json"
theorem reductionProof6050 : EqualModuloRelations reduction6050.relations reduction6050.input reduction6050.output := by lin_cert using reduction6050.terms
theorem substitutionProof6050 : IsMapEvaluation generatorImages reduction6050.relations [780] reduction6050.output := by lin_cert using reduction6050.terms
def map_19_172 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6141 : InImage map_19_172 image6141 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6141 : Bundle := named_bundle% "RealMapCertificates/relations/basis6141.json"
theorem reductionProof6141 : EqualModuloRelations reduction6141.relations reduction6141.input reduction6141.output := by lin_cert using reduction6141.terms
theorem substitutionProof6141 : IsMapEvaluation generatorImages reduction6141.relations [23,417] reduction6141.output := by lin_cert using reduction6141.terms
def image6142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6142 : InImage map_19_172 image6142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6142 : Bundle := named_bundle% "RealMapCertificates/relations/basis6142.json"
theorem reductionProof6142 : EqualModuloRelations reduction6142.relations reduction6142.input reduction6142.output := by lin_cert using reduction6142.terms
theorem substitutionProof6142 : IsMapEvaluation generatorImages reduction6142.relations [1,761] reduction6142.output := by lin_cert using reduction6142.terms
def image6143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6143 : InImage map_19_172 image6143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6143 : Bundle := named_bundle% "RealMapCertificates/relations/basis6143.json"
theorem reductionProof6143 : EqualModuloRelations reduction6143.relations reduction6143.input reduction6143.output := by lin_cert using reduction6143.terms
theorem substitutionProof6143 : IsMapEvaluation generatorImages reduction6143.relations [0,43,285] reduction6143.output := by lin_cert using reduction6143.terms
def image6144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6144 : InImage map_19_172 image6144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6144 : Bundle := named_bundle% "RealMapCertificates/relations/basis6144.json"
theorem reductionProof6144 : EqualModuloRelations reduction6144.relations reduction6144.input reduction6144.output := by lin_cert using reduction6144.terms
theorem substitutionProof6144 : IsMapEvaluation generatorImages reduction6144.relations [0,3,3,604] reduction6144.output := by lin_cert using reduction6144.terms
def image6145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6145 : InImage map_19_172 image6145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6145 : Bundle := named_bundle% "RealMapCertificates/relations/basis6145.json"
theorem reductionProof6145 : EqualModuloRelations reduction6145.relations reduction6145.input reduction6145.output := by lin_cert using reduction6145.terms
theorem substitutionProof6145 : IsMapEvaluation generatorImages reduction6145.relations [0,0,762] reduction6145.output := by lin_cert using reduction6145.terms
end RealMapCertificates
