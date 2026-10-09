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
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 44 => [[1,4,4,4,4]]
  | 47 => [[2,4,4,4,4]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 75 => []
  | 80 => []
  | 209 => []
  | 213 => []
  | 235 => []
  | 239 => []
  | 324 => []
  | 331 => []
  | 336 => []
  | 363 => []
  | 373 => []
  | 411 => []
  | 570 => []
  | 619 => []
  | 628 => []
  | 648 => []
  | 679 => []
  | 691 => []
  | 707 => []
  | 729 => []
  | 743 => []
  | 763 => []
  | 786 => []
  | 798 => []
  | 822 => []
  | 825 => []
  | 835 => []
  | 836 => []
  | 837 => []
  | 838 => []
  | 841 => []
  | 865 => []
  | 879 => []
  | 880 => []
  | 891 => []
  | 905 => []
  | 906 => []
  | 908 => []
  | 931 => []
  | 945 => []
  | 960 => []
  | 964 => []
  | 965 => []
  | 984 => []
  | 985 => []
  | 987 => []
  | 1000 => []
  | 1002 => []
  | 1011 => []
  | 1012 => []
  | 1013 => []
  | 1014 => []
  | 1015 => []
  | 1016 => []
  | 1039 => []
  | 1040 => []
  | 1041 => []
  | 1042 => []
  | 1043 => []
  | 1052 => []
  | 1055 => []
  | 1066 => []
  | 1067 => []
  | 1068 => []
  | 1086 => []
  | 1096 => []
  | 1109 => []
  | 1126 => []
  | 1127 => []
  | 1152 => []
  | 1153 => []
  | 1154 => []
  | 1156 => []
  | 1174 => []
  | 1175 => []
  | 1183 => []
  | _ => []
def map_19_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6252 : InImage map_19_173 image6252 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6252 : Bundle := named_bundle% "RealMapCertificates/relations/basis6252.json"
theorem reductionProof6252 : EqualModuloRelations reduction6252.relations reduction6252.input reduction6252.output := by lin_cert using reduction6252.terms
theorem substitutionProof6252 : IsMapEvaluation generatorImages reduction6252.relations [798] reduction6252.output := by lin_cert using reduction6252.terms
def image6253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6253 : InImage map_19_173 image6253 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6253 : Bundle := named_bundle% "RealMapCertificates/relations/basis6253.json"
theorem reductionProof6253 : EqualModuloRelations reduction6253.relations reduction6253.input reduction6253.output := by lin_cert using reduction6253.terms
theorem substitutionProof6253 : IsMapEvaluation generatorImages reduction6253.relations [0,0,0,763] reduction6253.output := by lin_cert using reduction6253.terms
def map_19_174 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6388 : InImage map_19_174 image6388 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6388 : Bundle := named_bundle% "RealMapCertificates/relations/basis6388.json"
theorem reductionProof6388 : EqualModuloRelations reduction6388.relations reduction6388.input reduction6388.output := by lin_cert using reduction6388.terms
theorem substitutionProof6388 : IsMapEvaluation generatorImages reduction6388.relations [9,13,331] reduction6388.output := by lin_cert using reduction6388.terms
def image6389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6389 : InImage map_19_174 image6389 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6389 : Bundle := named_bundle% "RealMapCertificates/relations/basis6389.json"
theorem reductionProof6389 : EqualModuloRelations reduction6389.relations reduction6389.input reduction6389.output := by lin_cert using reduction6389.terms
theorem substitutionProof6389 : IsMapEvaluation generatorImages reduction6389.relations [1,786] reduction6389.output := by lin_cert using reduction6389.terms
def image6390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6390 : InImage map_19_174 image6390 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6390 : Bundle := named_bundle% "RealMapCertificates/relations/basis6390.json"
theorem reductionProof6390 : EqualModuloRelations reduction6390.relations reduction6390.input reduction6390.output := by lin_cert using reduction6390.terms
theorem substitutionProof6390 : IsMapEvaluation generatorImages reduction6390.relations [1,3,691] reduction6390.output := by lin_cert using reduction6390.terms
def map_19_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6486 : InImage map_19_175 image6486 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6486 : Bundle := named_bundle% "RealMapCertificates/relations/basis6486.json"
theorem reductionProof6486 : EqualModuloRelations reduction6486.relations reduction6486.input reduction6486.output := by lin_cert using reduction6486.terms
theorem substitutionProof6486 : IsMapEvaluation generatorImages reduction6486.relations [822] reduction6486.output := by lin_cert using reduction6486.terms
def image6487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6487 : InImage map_19_175 image6487 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6487 : Bundle := named_bundle% "RealMapCertificates/relations/basis6487.json"
theorem reductionProof6487 : EqualModuloRelations reduction6487.relations reduction6487.input reduction6487.output := by lin_cert using reduction6487.terms
theorem substitutionProof6487 : IsMapEvaluation generatorImages reduction6487.relations [0,0,3,707] reduction6487.output := by lin_cert using reduction6487.terms
def map_19_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6593 : InImage map_19_176 image6593 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6593 : Bundle := named_bundle% "RealMapCertificates/relations/basis6593.json"
theorem reductionProof6593 : EqualModuloRelations reduction6593.relations reduction6593.input reduction6593.output := by lin_cert using reduction6593.terms
theorem substitutionProof6593 : IsMapEvaluation generatorImages reduction6593.relations [80,209] reduction6593.output := by lin_cert using reduction6593.terms
def image6594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6594 : InImage map_19_176 image6594 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6594 : Bundle := named_bundle% "RealMapCertificates/relations/basis6594.json"
theorem reductionProof6594 : EqualModuloRelations reduction6594.relations reduction6594.input reduction6594.output := by lin_cert using reduction6594.terms
theorem substitutionProof6594 : IsMapEvaluation generatorImages reduction6594.relations [64,235] reduction6594.output := by lin_cert using reduction6594.terms
def image6595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6595 : InImage map_19_176 image6595 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6595 : Bundle := named_bundle% "RealMapCertificates/relations/basis6595.json"
theorem reductionProof6595 : EqualModuloRelations reduction6595.relations reduction6595.input reduction6595.output := by lin_cert using reduction6595.terms
theorem substitutionProof6595 : IsMapEvaluation generatorImages reduction6595.relations [0,0,0,0,0,0,0,0,743] reduction6595.output := by lin_cert using reduction6595.terms
def map_19_177 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6733 : InImage map_19_177 image6733 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6733 : Bundle := named_bundle% "RealMapCertificates/relations/basis6733.json"
theorem reductionProof6733 : EqualModuloRelations reduction6733.relations reduction6733.input reduction6733.output := by lin_cert using reduction6733.terms
theorem substitutionProof6733 : IsMapEvaluation generatorImages reduction6733.relations [64,239] reduction6733.output := by lin_cert using reduction6733.terms
def image6734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6734 : InImage map_19_177 image6734 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6734 : Bundle := named_bundle% "RealMapCertificates/relations/basis6734.json"
theorem reductionProof6734 : EqualModuloRelations reduction6734.relations reduction6734.input reduction6734.output := by lin_cert using reduction6734.terms
theorem substitutionProof6734 : IsMapEvaluation generatorImages reduction6734.relations [13,13,331] reduction6734.output := by lin_cert using reduction6734.terms
def image6735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6735 : InImage map_19_177 image6735 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6735 : Bundle := named_bundle% "RealMapCertificates/relations/basis6735.json"
theorem reductionProof6735 : EqualModuloRelations reduction6735.relations reduction6735.input reduction6735.output := by lin_cert using reduction6735.terms
theorem substitutionProof6735 : IsMapEvaluation generatorImages reduction6735.relations [0,837] reduction6735.output := by lin_cert using reduction6735.terms
def image6736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6736 : InImage map_19_177 image6736 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6736 : Bundle := named_bundle% "RealMapCertificates/relations/basis6736.json"
theorem reductionProof6736 : EqualModuloRelations reduction6736.relations reduction6736.input reduction6736.output := by lin_cert using reduction6736.terms
theorem substitutionProof6736 : IsMapEvaluation generatorImages reduction6736.relations [0,836] reduction6736.output := by lin_cert using reduction6736.terms
def image6737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6737 : InImage map_19_177 image6737 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6737 : Bundle := named_bundle% "RealMapCertificates/relations/basis6737.json"
theorem reductionProof6737 : EqualModuloRelations reduction6737.relations reduction6737.input reduction6737.output := by lin_cert using reduction6737.terms
theorem substitutionProof6737 : IsMapEvaluation generatorImages reduction6737.relations [0,835] reduction6737.output := by lin_cert using reduction6737.terms
def image6738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6738 : InImage map_19_177 image6738 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6738 : Bundle := named_bundle% "RealMapCertificates/relations/basis6738.json"
theorem reductionProof6738 : EqualModuloRelations reduction6738.relations reduction6738.input reduction6738.output := by lin_cert using reduction6738.terms
theorem substitutionProof6738 : IsMapEvaluation generatorImages reduction6738.relations [0,3,3,648] reduction6738.output := by lin_cert using reduction6738.terms
def map_19_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6830 : InImage map_19_178 image6830 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6830 : Bundle := named_bundle% "RealMapCertificates/relations/basis6830.json"
theorem reductionProof6830 : EqualModuloRelations reduction6830.relations reduction6830.input reduction6830.output := by lin_cert using reduction6830.terms
theorem substitutionProof6830 : IsMapEvaluation generatorImages reduction6830.relations [9,619] reduction6830.output := by lin_cert using reduction6830.terms
def image6831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6831 : InImage map_19_178 image6831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6831 : Bundle := named_bundle% "RealMapCertificates/relations/basis6831.json"
theorem reductionProof6831 : EqualModuloRelations reduction6831.relations reduction6831.input reduction6831.output := by lin_cert using reduction6831.terms
theorem substitutionProof6831 : IsMapEvaluation generatorImages reduction6831.relations [1,836] reduction6831.output := by lin_cert using reduction6831.terms
def image6832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6832 : InImage map_19_178 image6832 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6832 : Bundle := named_bundle% "RealMapCertificates/relations/basis6832.json"
theorem reductionProof6832 : EqualModuloRelations reduction6832.relations reduction6832.input reduction6832.output := by lin_cert using reduction6832.terms
theorem substitutionProof6832 : IsMapEvaluation generatorImages reduction6832.relations [0,0,838] reduction6832.output := by lin_cert using reduction6832.terms
def map_19_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6966 : InImage map_19_179 image6966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6966 : Bundle := named_bundle% "RealMapCertificates/relations/basis6966.json"
theorem reductionProof6966 : EqualModuloRelations reduction6966.relations reduction6966.input reduction6966.output := by lin_cert using reduction6966.terms
theorem substitutionProof6966 : IsMapEvaluation generatorImages reduction6966.relations [879] reduction6966.output := by lin_cert using reduction6966.terms
def image6967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6967 : InImage map_19_179 image6967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6967 : Bundle := named_bundle% "RealMapCertificates/relations/basis6967.json"
theorem reductionProof6967 : EqualModuloRelations reduction6967.relations reduction6967.input reduction6967.output := by lin_cert using reduction6967.terms
theorem substitutionProof6967 : IsMapEvaluation generatorImages reduction6967.relations [0,865] reduction6967.output := by lin_cert using reduction6967.terms
def image6968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6968 : InImage map_19_179 image6968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6968 : Bundle := named_bundle% "RealMapCertificates/relations/basis6968.json"
theorem reductionProof6968 : EqualModuloRelations reduction6968.relations reduction6968.input reduction6968.output := by lin_cert using reduction6968.terms
theorem substitutionProof6968 : IsMapEvaluation generatorImages reduction6968.relations [0,0,0,0,825] reduction6968.output := by lin_cert using reduction6968.terms
def map_19_180 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7108 : InImage map_19_180 image7108 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7108 : Bundle := named_bundle% "RealMapCertificates/relations/basis7108.json"
theorem reductionProof7108 : EqualModuloRelations reduction7108.relations reduction7108.input reduction7108.output := by lin_cert using reduction7108.terms
theorem substitutionProof7108 : IsMapEvaluation generatorImages reduction7108.relations [1,865] reduction7108.output := by lin_cert using reduction7108.terms
def image7109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7109 : InImage map_19_180 image7109 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7109 : Bundle := named_bundle% "RealMapCertificates/relations/basis7109.json"
theorem reductionProof7109 : EqualModuloRelations reduction7109.relations reduction7109.input reduction7109.output := by lin_cert using reduction7109.terms
theorem substitutionProof7109 : IsMapEvaluation generatorImages reduction7109.relations [1,44,324] reduction7109.output := by lin_cert using reduction7109.terms
def image7110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7110 : InImage map_19_180 image7110 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7110 : Bundle := named_bundle% "RealMapCertificates/relations/basis7110.json"
theorem reductionProof7110 : EqualModuloRelations reduction7110.relations reduction7110.input reduction7110.output := by lin_cert using reduction7110.terms
theorem substitutionProof7110 : IsMapEvaluation generatorImages reduction7110.relations [1,1,838] reduction7110.output := by lin_cert using reduction7110.terms
def image7111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7111 : InImage map_19_180 image7111 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7111 : Bundle := named_bundle% "RealMapCertificates/relations/basis7111.json"
theorem reductionProof7111 : EqualModuloRelations reduction7111.relations reduction7111.input reduction7111.output := by lin_cert using reduction7111.terms
theorem substitutionProof7111 : IsMapEvaluation generatorImages reduction7111.relations [0,880] reduction7111.output := by lin_cert using reduction7111.terms
def image7112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7112 : InImage map_19_180 image7112 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7112 : Bundle := named_bundle% "RealMapCertificates/relations/basis7112.json"
theorem reductionProof7112 : EqualModuloRelations reduction7112.relations reduction7112.input reduction7112.output := by lin_cert using reduction7112.terms
theorem substitutionProof7112 : IsMapEvaluation generatorImages reduction7112.relations [0,0,3,763] reduction7112.output := by lin_cert using reduction7112.terms
def map_19_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7209 : InImage map_19_181 image7209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7209 : Bundle := named_bundle% "RealMapCertificates/relations/basis7209.json"
theorem reductionProof7209 : EqualModuloRelations reduction7209.relations reduction7209.input reduction7209.output := by lin_cert using reduction7209.terms
theorem substitutionProof7209 : IsMapEvaluation generatorImages reduction7209.relations [13,619] reduction7209.output := by lin_cert using reduction7209.terms
def image7210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7210 : InImage map_19_181 image7210 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7210 : Bundle := named_bundle% "RealMapCertificates/relations/basis7210.json"
theorem reductionProof7210 : EqualModuloRelations reduction7210.relations reduction7210.input reduction7210.output := by lin_cert using reduction7210.terms
theorem substitutionProof7210 : IsMapEvaluation generatorImages reduction7210.relations [0,47,324] reduction7210.output := by lin_cert using reduction7210.terms
def map_19_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7320 : InImage map_19_182 image7320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7320 : Bundle := named_bundle% "RealMapCertificates/relations/basis7320.json"
theorem reductionProof7320 : EqualModuloRelations reduction7320.relations reduction7320.input reduction7320.output := by lin_cert using reduction7320.terms
theorem substitutionProof7320 : IsMapEvaluation generatorImages reduction7320.relations [905] reduction7320.output := by lin_cert using reduction7320.terms
def map_19_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7469 : InImage map_19_183 image7469 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7469 : Bundle := named_bundle% "RealMapCertificates/relations/basis7469.json"
theorem reductionProof7469 : EqualModuloRelations reduction7469.relations reduction7469.input reduction7469.output := by lin_cert using reduction7469.terms
theorem substitutionProof7469 : IsMapEvaluation generatorImages reduction7469.relations [13,13,411] reduction7469.output := by lin_cert using reduction7469.terms
def image7470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7470 : InImage map_19_183 image7470 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7470 : Bundle := named_bundle% "RealMapCertificates/relations/basis7470.json"
theorem reductionProof7470 : EqualModuloRelations reduction7470.relations reduction7470.input reduction7470.output := by lin_cert using reduction7470.terms
theorem substitutionProof7470 : IsMapEvaluation generatorImages reduction7470.relations [7,729] reduction7470.output := by lin_cert using reduction7470.terms
def image7471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7471 : InImage map_19_183 image7471 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7471 : Bundle := named_bundle% "RealMapCertificates/relations/basis7471.json"
theorem reductionProof7471 : EqualModuloRelations reduction7471.relations reduction7471.input reduction7471.output := by lin_cert using reduction7471.terms
theorem substitutionProof7471 : IsMapEvaluation generatorImages reduction7471.relations [0,0,891] reduction7471.output := by lin_cert using reduction7471.terms
def map_19_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7571 : InImage map_19_184 image7571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7571 : Bundle := named_bundle% "RealMapCertificates/relations/basis7571.json"
theorem reductionProof7571 : EqualModuloRelations reduction7571.relations reduction7571.input reduction7571.output := by lin_cert using reduction7571.terms
theorem substitutionProof7571 : IsMapEvaluation generatorImages reduction7571.relations [931] reduction7571.output := by lin_cert using reduction7571.terms
def image7572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7572 : InImage map_19_184 image7572 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7572 : Bundle := named_bundle% "RealMapCertificates/relations/basis7572.json"
theorem reductionProof7572 : EqualModuloRelations reduction7572.relations reduction7572.input reduction7572.output := by lin_cert using reduction7572.terms
theorem substitutionProof7572 : IsMapEvaluation generatorImages reduction7572.relations [0,0,908] reduction7572.output := by lin_cert using reduction7572.terms
def image7573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7573 : InImage map_19_184 image7573 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7573 : Bundle := named_bundle% "RealMapCertificates/relations/basis7573.json"
theorem reductionProof7573 : EqualModuloRelations reduction7573.relations reduction7573.input reduction7573.output := by lin_cert using reduction7573.terms
theorem substitutionProof7573 : IsMapEvaluation generatorImages reduction7573.relations [0,0,49,324] reduction7573.output := by lin_cert using reduction7573.terms
def map_19_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7692 : InImage map_19_185 image7692 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7692 : Bundle := named_bundle% "RealMapCertificates/relations/basis7692.json"
theorem reductionProof7692 : EqualModuloRelations reduction7692.relations reduction7692.input reduction7692.output := by lin_cert using reduction7692.terms
theorem substitutionProof7692 : IsMapEvaluation generatorImages reduction7692.relations [945] reduction7692.output := by lin_cert using reduction7692.terms
def image7693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7693 : InImage map_19_185 image7693 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7693 : Bundle := named_bundle% "RealMapCertificates/relations/basis7693.json"
theorem reductionProof7693 : EqualModuloRelations reduction7693.relations reduction7693.input reduction7693.output := by lin_cert using reduction7693.terms
theorem substitutionProof7693 : IsMapEvaluation generatorImages reduction7693.relations [0,3,838] reduction7693.output := by lin_cert using reduction7693.terms
def image7694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7694 : InImage map_19_185 image7694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7694 : Bundle := named_bundle% "RealMapCertificates/relations/basis7694.json"
theorem reductionProof7694 : EqualModuloRelations reduction7694.relations reduction7694.input reduction7694.output := by lin_cert using reduction7694.terms
theorem substitutionProof7694 : IsMapEvaluation generatorImages reduction7694.relations [0,0,0,50,324] reduction7694.output := by lin_cert using reduction7694.terms
def map_19_186 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7839 : InImage map_19_186 image7839 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7839 : Bundle := named_bundle% "RealMapCertificates/relations/basis7839.json"
theorem reductionProof7839 : EqualModuloRelations reduction7839.relations reduction7839.input reduction7839.output := by lin_cert using reduction7839.terms
theorem substitutionProof7839 : IsMapEvaluation generatorImages reduction7839.relations [960] reduction7839.output := by lin_cert using reduction7839.terms
def image7840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7840 : InImage map_19_186 image7840 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7840 : Bundle := named_bundle% "RealMapCertificates/relations/basis7840.json"
theorem reductionProof7840 : EqualModuloRelations reduction7840.relations reduction7840.input reduction7840.output := by lin_cert using reduction7840.terms
theorem substitutionProof7840 : IsMapEvaluation generatorImages reduction7840.relations [1,1,906] reduction7840.output := by lin_cert using reduction7840.terms
def image7841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7841 : InImage map_19_186 image7841 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7841 : Bundle := named_bundle% "RealMapCertificates/relations/basis7841.json"
theorem reductionProof7841 : EqualModuloRelations reduction7841.relations reduction7841.input reduction7841.output := by lin_cert using reduction7841.terms
theorem substitutionProof7841 : IsMapEvaluation generatorImages reduction7841.relations [1,1,49,324] reduction7841.output := by lin_cert using reduction7841.terms
def image7842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7842 : InImage map_19_186 image7842 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7842 : Bundle := named_bundle% "RealMapCertificates/relations/basis7842.json"
theorem reductionProof7842 : EqualModuloRelations reduction7842.relations reduction7842.input reduction7842.output := by lin_cert using reduction7842.terms
theorem substitutionProof7842 : IsMapEvaluation generatorImages reduction7842.relations [0,0,0,3,825] reduction7842.output := by lin_cert using reduction7842.terms
def map_19_187 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7924 : InImage map_19_187 image7924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7924 : Bundle := named_bundle% "RealMapCertificates/relations/basis7924.json"
theorem reductionProof7924 : EqualModuloRelations reduction7924.relations reduction7924.input reduction7924.output := by lin_cert using reduction7924.terms
theorem substitutionProof7924 : IsMapEvaluation generatorImages reduction7924.relations [964] reduction7924.output := by lin_cert using reduction7924.terms
def image7925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7925 : InImage map_19_187 image7925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7925 : Bundle := named_bundle% "RealMapCertificates/relations/basis7925.json"
theorem reductionProof7925 : EqualModuloRelations reduction7925.relations reduction7925.input reduction7925.output := by lin_cert using reduction7925.terms
theorem substitutionProof7925 : IsMapEvaluation generatorImages reduction7925.relations [13,679] reduction7925.output := by lin_cert using reduction7925.terms
def image7926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7926 : InImage map_19_187 image7926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7926 : Bundle := named_bundle% "RealMapCertificates/relations/basis7926.json"
theorem reductionProof7926 : EqualModuloRelations reduction7926.relations reduction7926.input reduction7926.output := by lin_cert using reduction7926.terms
theorem substitutionProof7926 : IsMapEvaluation generatorImages reduction7926.relations [0,0,55,324] reduction7926.output := by lin_cert using reduction7926.terms
def map_19_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8039 : InImage map_19_188 image8039 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8039 : Bundle := named_bundle% "RealMapCertificates/relations/basis8039.json"
theorem reductionProof8039 : EqualModuloRelations reduction8039.relations reduction8039.input reduction8039.output := by lin_cert using reduction8039.terms
theorem substitutionProof8039 : IsMapEvaluation generatorImages reduction8039.relations [984] reduction8039.output := by lin_cert using reduction8039.terms
def map_19_189 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8193 : InImage map_19_189 image8193 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8193 : Bundle := named_bundle% "RealMapCertificates/relations/basis8193.json"
theorem reductionProof8193 : EqualModuloRelations reduction8193.relations reduction8193.input reduction8193.output := by lin_cert using reduction8193.terms
theorem substitutionProof8193 : IsMapEvaluation generatorImages reduction8193.relations [1000] reduction8193.output := by lin_cert using reduction8193.terms
def map_19_190 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image8281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8281 : InImage map_19_190 image8281 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction8281 : Bundle := named_bundle% "RealMapCertificates/relations/basis8281.json"
theorem reductionProof8281 : EqualModuloRelations reduction8281.relations reduction8281.input reduction8281.output := by lin_cert using reduction8281.terms
theorem substitutionProof8281 : IsMapEvaluation generatorImages reduction8281.relations [1012] reduction8281.output := by lin_cert using reduction8281.terms
def image8282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8282 : InImage map_19_190 image8282 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction8282 : Bundle := named_bundle% "RealMapCertificates/relations/basis8282.json"
theorem reductionProof8282 : EqualModuloRelations reduction8282.relations reduction8282.input reduction8282.output := by lin_cert using reduction8282.terms
theorem substitutionProof8282 : IsMapEvaluation generatorImages reduction8282.relations [1011] reduction8282.output := by lin_cert using reduction8282.terms
def image8283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8283 : InImage map_19_190 image8283 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction8283 : Bundle := named_bundle% "RealMapCertificates/relations/basis8283.json"
theorem reductionProof8283 : EqualModuloRelations reduction8283.relations reduction8283.input reduction8283.output := by lin_cert using reduction8283.terms
theorem substitutionProof8283 : IsMapEvaluation generatorImages reduction8283.relations [18,628] reduction8283.output := by lin_cert using reduction8283.terms
def image8284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8284 : InImage map_19_190 image8284 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction8284 : Bundle := named_bundle% "RealMapCertificates/relations/basis8284.json"
theorem reductionProof8284 : EqualModuloRelations reduction8284.relations reduction8284.input reduction8284.output := by lin_cert using reduction8284.terms
theorem substitutionProof8284 : IsMapEvaluation generatorImages reduction8284.relations [9,23,373] reduction8284.output := by lin_cert using reduction8284.terms
def image8285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8285 : InImage map_19_190 image8285 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction8285 : Bundle := named_bundle% "RealMapCertificates/relations/basis8285.json"
theorem reductionProof8285 : EqualModuloRelations reduction8285.relations reduction8285.input reduction8285.output := by lin_cert using reduction8285.terms
theorem substitutionProof8285 : IsMapEvaluation generatorImages reduction8285.relations [1,985] reduction8285.output := by lin_cert using reduction8285.terms
def image8286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8286 : InImage map_19_190 image8286 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction8286 : Bundle := named_bundle% "RealMapCertificates/relations/basis8286.json"
theorem reductionProof8286 : EqualModuloRelations reduction8286.relations reduction8286.input reduction8286.output := by lin_cert using reduction8286.terms
theorem substitutionProof8286 : IsMapEvaluation generatorImages reduction8286.relations [0,0,8,31,324] reduction8286.output := by lin_cert using reduction8286.terms
def image8287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8287 : InImage map_19_190 image8287 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction8287 : Bundle := named_bundle% "RealMapCertificates/relations/basis8287.json"
theorem reductionProof8287 : EqualModuloRelations reduction8287.relations reduction8287.input reduction8287.output := by lin_cert using reduction8287.terms
theorem substitutionProof8287 : IsMapEvaluation generatorImages reduction8287.relations [0,0,0,965] reduction8287.output := by lin_cert using reduction8287.terms
def map_19_191 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8411 : InImage map_19_191 image8411 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8411 : Bundle := named_bundle% "RealMapCertificates/relations/basis8411.json"
theorem reductionProof8411 : EqualModuloRelations reduction8411.relations reduction8411.input reduction8411.output := by lin_cert using reduction8411.terms
theorem substitutionProof8411 : IsMapEvaluation generatorImages reduction8411.relations [1041] reduction8411.output := by lin_cert using reduction8411.terms
def image8412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8412 : InImage map_19_191 image8412 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8412 : Bundle := named_bundle% "RealMapCertificates/relations/basis8412.json"
theorem reductionProof8412 : EqualModuloRelations reduction8412.relations reduction8412.input reduction8412.output := by lin_cert using reduction8412.terms
theorem substitutionProof8412 : IsMapEvaluation generatorImages reduction8412.relations [1040] reduction8412.output := by lin_cert using reduction8412.terms
def image8413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8413 : InImage map_19_191 image8413 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8413 : Bundle := named_bundle% "RealMapCertificates/relations/basis8413.json"
theorem reductionProof8413 : EqualModuloRelations reduction8413.relations reduction8413.input reduction8413.output := by lin_cert using reduction8413.terms
theorem substitutionProof8413 : IsMapEvaluation generatorImages reduction8413.relations [1039] reduction8413.output := by lin_cert using reduction8413.terms
def image8414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8414 : InImage map_19_191 image8414 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8414 : Bundle := named_bundle% "RealMapCertificates/relations/basis8414.json"
theorem reductionProof8414 : EqualModuloRelations reduction8414.relations reduction8414.input reduction8414.output := by lin_cert using reduction8414.terms
theorem substitutionProof8414 : IsMapEvaluation generatorImages reduction8414.relations [0,1014] reduction8414.output := by lin_cert using reduction8414.terms
def image8415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8415 : InImage map_19_191 image8415 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8415 : Bundle := named_bundle% "RealMapCertificates/relations/basis8415.json"
theorem reductionProof8415 : EqualModuloRelations reduction8415.relations reduction8415.input reduction8415.output := by lin_cert using reduction8415.terms
theorem substitutionProof8415 : IsMapEvaluation generatorImages reduction8415.relations [0,0,0,987] reduction8415.output := by lin_cert using reduction8415.terms
def map_19_192 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8565 : InImage map_19_192 image8565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8565 : Bundle := named_bundle% "RealMapCertificates/relations/basis8565.json"
theorem reductionProof8565 : EqualModuloRelations reduction8565.relations reduction8565.input reduction8565.output := by lin_cert using reduction8565.terms
theorem substitutionProof8565 : IsMapEvaluation generatorImages reduction8565.relations [1052] reduction8565.output := by lin_cert using reduction8565.terms
def image8566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8566 : InImage map_19_192 image8566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8566 : Bundle := named_bundle% "RealMapCertificates/relations/basis8566.json"
theorem reductionProof8566 : EqualModuloRelations reduction8566.relations reduction8566.input reduction8566.output := by lin_cert using reduction8566.terms
theorem substitutionProof8566 : IsMapEvaluation generatorImages reduction8566.relations [1,1014] reduction8566.output := by lin_cert using reduction8566.terms
def image8567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8567 : InImage map_19_192 image8567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8567 : Bundle := named_bundle% "RealMapCertificates/relations/basis8567.json"
theorem reductionProof8567 : EqualModuloRelations reduction8567.relations reduction8567.input reduction8567.output := by lin_cert using reduction8567.terms
theorem substitutionProof8567 : IsMapEvaluation generatorImages reduction8567.relations [1,1013] reduction8567.output := by lin_cert using reduction8567.terms
def image8568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8568 : InImage map_19_192 image8568 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8568 : Bundle := named_bundle% "RealMapCertificates/relations/basis8568.json"
theorem reductionProof8568 : EqualModuloRelations reduction8568.relations reduction8568.input reduction8568.output := by lin_cert using reduction8568.terms
theorem substitutionProof8568 : IsMapEvaluation generatorImages reduction8568.relations [0,0,1015] reduction8568.output := by lin_cert using reduction8568.terms
def image8569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8569 : InImage map_19_192 image8569 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8569 : Bundle := named_bundle% "RealMapCertificates/relations/basis8569.json"
theorem reductionProof8569 : EqualModuloRelations reduction8569.relations reduction8569.input reduction8569.output := by lin_cert using reduction8569.terms
theorem substitutionProof8569 : IsMapEvaluation generatorImages reduction8569.relations [0,0,0,0,17,17,324] reduction8569.output := by lin_cert using reduction8569.terms
def map_19_193 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8659 : InImage map_19_193 image8659 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8659 : Bundle := named_bundle% "RealMapCertificates/relations/basis8659.json"
theorem reductionProof8659 : EqualModuloRelations reduction8659.relations reduction8659.input reduction8659.output := by lin_cert using reduction8659.terms
theorem substitutionProof8659 : IsMapEvaluation generatorImages reduction8659.relations [1066] reduction8659.output := by lin_cert using reduction8659.terms
def image8660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8660 : InImage map_19_193 image8660 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8660 : Bundle := named_bundle% "RealMapCertificates/relations/basis8660.json"
theorem reductionProof8660 : EqualModuloRelations reduction8660.relations reduction8660.input reduction8660.output := by lin_cert using reduction8660.terms
theorem substitutionProof8660 : IsMapEvaluation generatorImages reduction8660.relations [13,23,373] reduction8660.output := by lin_cert using reduction8660.terms
def image8661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8661 : InImage map_19_193 image8661 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8661 : Bundle := named_bundle% "RealMapCertificates/relations/basis8661.json"
theorem reductionProof8661 : EqualModuloRelations reduction8661.relations reduction8661.input reduction8661.output := by lin_cert using reduction8661.terms
theorem substitutionProof8661 : IsMapEvaluation generatorImages reduction8661.relations [1,1043] reduction8661.output := by lin_cert using reduction8661.terms
def image8662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8662 : InImage map_19_193 image8662 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8662 : Bundle := named_bundle% "RealMapCertificates/relations/basis8662.json"
theorem reductionProof8662 : EqualModuloRelations reduction8662.relations reduction8662.input reduction8662.output := by lin_cert using reduction8662.terms
theorem substitutionProof8662 : IsMapEvaluation generatorImages reduction8662.relations [1,1042] reduction8662.output := by lin_cert using reduction8662.terms
def image8663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8663 : InImage map_19_193 image8663 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8663 : Bundle := named_bundle% "RealMapCertificates/relations/basis8663.json"
theorem reductionProof8663 : EqualModuloRelations reduction8663.relations reduction8663.input reduction8663.output := by lin_cert using reduction8663.terms
theorem substitutionProof8663 : IsMapEvaluation generatorImages reduction8663.relations [0,0,8,39,324] reduction8663.output := by lin_cert using reduction8663.terms
def image8664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8664 : InImage map_19_193 image8664 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8664 : Bundle := named_bundle% "RealMapCertificates/relations/basis8664.json"
theorem reductionProof8664 : EqualModuloRelations reduction8664.relations reduction8664.input reduction8664.output := by lin_cert using reduction8664.terms
theorem substitutionProof8664 : IsMapEvaluation generatorImages reduction8664.relations [0,0,0,0,0,59,324] reduction8664.output := by lin_cert using reduction8664.terms
def map_19_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8805 : InImage map_19_194 image8805 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8805 : Bundle := named_bundle% "RealMapCertificates/relations/basis8805.json"
theorem reductionProof8805 : EqualModuloRelations reduction8805.relations reduction8805.input reduction8805.output := by lin_cert using reduction8805.terms
theorem substitutionProof8805 : IsMapEvaluation generatorImages reduction8805.relations [8,841] reduction8805.output := by lin_cert using reduction8805.terms
def image8806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8806 : InImage map_19_194 image8806 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8806 : Bundle := named_bundle% "RealMapCertificates/relations/basis8806.json"
theorem reductionProof8806 : EqualModuloRelations reduction8806.relations reduction8806.input reduction8806.output := by lin_cert using reduction8806.terms
theorem substitutionProof8806 : IsMapEvaluation generatorImages reduction8806.relations [0,1068] reduction8806.output := by lin_cert using reduction8806.terms
def image8807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8807 : InImage map_19_194 image8807 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8807 : Bundle := named_bundle% "RealMapCertificates/relations/basis8807.json"
theorem reductionProof8807 : EqualModuloRelations reduction8807.relations reduction8807.input reduction8807.output := by lin_cert using reduction8807.terms
theorem substitutionProof8807 : IsMapEvaluation generatorImages reduction8807.relations [0,1067] reduction8807.output := by lin_cert using reduction8807.terms
def image8808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8808 : InImage map_19_194 image8808 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8808 : Bundle := named_bundle% "RealMapCertificates/relations/basis8808.json"
theorem reductionProof8808 : EqualModuloRelations reduction8808.relations reduction8808.input reduction8808.output := by lin_cert using reduction8808.terms
theorem substitutionProof8808 : IsMapEvaluation generatorImages reduction8808.relations [0,2,1002] reduction8808.output := by lin_cert using reduction8808.terms
def map_19_195 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8968 : InImage map_19_195 image8968 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8968 : Bundle := named_bundle% "RealMapCertificates/relations/basis8968.json"
theorem reductionProof8968 : EqualModuloRelations reduction8968.relations reduction8968.input reduction8968.output := by lin_cert using reduction8968.terms
theorem substitutionProof8968 : IsMapEvaluation generatorImages reduction8968.relations [0,1086] reduction8968.output := by lin_cert using reduction8968.terms
def image8969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8969 : InImage map_19_195 image8969 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8969 : Bundle := named_bundle% "RealMapCertificates/relations/basis8969.json"
theorem reductionProof8969 : EqualModuloRelations reduction8969.relations reduction8969.input reduction8969.output := by lin_cert using reduction8969.terms
theorem substitutionProof8969 : IsMapEvaluation generatorImages reduction8969.relations [0,67,336] reduction8969.output := by lin_cert using reduction8969.terms
def map_19_196 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9075 : InImage map_19_196 image9075 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9075 : Bundle := named_bundle% "RealMapCertificates/relations/basis9075.json"
theorem reductionProof9075 : EqualModuloRelations reduction9075.relations reduction9075.input reduction9075.output := by lin_cert using reduction9075.terms
theorem substitutionProof9075 : IsMapEvaluation generatorImages reduction9075.relations [1109] reduction9075.output := by lin_cert using reduction9075.terms
def image9076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9076 : InImage map_19_196 image9076 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9076 : Bundle := named_bundle% "RealMapCertificates/relations/basis9076.json"
theorem reductionProof9076 : EqualModuloRelations reduction9076.relations reduction9076.input reduction9076.output := by lin_cert using reduction9076.terms
theorem substitutionProof9076 : IsMapEvaluation generatorImages reduction9076.relations [67,363] reduction9076.output := by lin_cert using reduction9076.terms
def image9077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9077 : InImage map_19_196 image9077 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9077 : Bundle := named_bundle% "RealMapCertificates/relations/basis9077.json"
theorem reductionProof9077 : EqualModuloRelations reduction9077.relations reduction9077.input reduction9077.output := by lin_cert using reduction9077.terms
theorem substitutionProof9077 : IsMapEvaluation generatorImages reduction9077.relations [1,1086] reduction9077.output := by lin_cert using reduction9077.terms
def image9078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9078 : InImage map_19_196 image9078 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9078 : Bundle := named_bundle% "RealMapCertificates/relations/basis9078.json"
theorem reductionProof9078 : EqualModuloRelations reduction9078.relations reduction9078.input reduction9078.output := by lin_cert using reduction9078.terms
theorem substitutionProof9078 : IsMapEvaluation generatorImages reduction9078.relations [0,1096] reduction9078.output := by lin_cert using reduction9078.terms
def image9079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9079 : InImage map_19_196 image9079 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9079 : Bundle := named_bundle% "RealMapCertificates/relations/basis9079.json"
theorem reductionProof9079 : EqualModuloRelations reduction9079.relations reduction9079.input reduction9079.output := by lin_cert using reduction9079.terms
theorem substitutionProof9079 : IsMapEvaluation generatorImages reduction9079.relations [0,0,8,8,16,324] reduction9079.output := by lin_cert using reduction9079.terms
def map_19_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9228 : InImage map_19_197 image9228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9228 : Bundle := named_bundle% "RealMapCertificates/relations/basis9228.json"
theorem reductionProof9228 : EqualModuloRelations reduction9228.relations reduction9228.input reduction9228.output := by lin_cert using reduction9228.terms
theorem substitutionProof9228 : IsMapEvaluation generatorImages reduction9228.relations [1126] reduction9228.output := by lin_cert using reduction9228.terms
def image9229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9229 : InImage map_19_197 image9229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9229 : Bundle := named_bundle% "RealMapCertificates/relations/basis9229.json"
theorem reductionProof9229 : EqualModuloRelations reduction9229.relations reduction9229.input reduction9229.output := by lin_cert using reduction9229.terms
theorem substitutionProof9229 : IsMapEvaluation generatorImages reduction9229.relations [1,1096] reduction9229.output := by lin_cert using reduction9229.terms
def image9230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9230 : InImage map_19_197 image9230 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9230 : Bundle := named_bundle% "RealMapCertificates/relations/basis9230.json"
theorem reductionProof9230 : EqualModuloRelations reduction9230.relations reduction9230.input reduction9230.output := by lin_cert using reduction9230.terms
theorem substitutionProof9230 : IsMapEvaluation generatorImages reduction9230.relations [0,0,0,0,0,1055] reduction9230.output := by lin_cert using reduction9230.terms
def map_19_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9415 : InImage map_19_198 image9415 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9415 : Bundle := named_bundle% "RealMapCertificates/relations/basis9415.json"
theorem reductionProof9415 : EqualModuloRelations reduction9415.relations reduction9415.input reduction9415.output := by lin_cert using reduction9415.terms
theorem substitutionProof9415 : IsMapEvaluation generatorImages reduction9415.relations [1153] reduction9415.output := by lin_cert using reduction9415.terms
def image9416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9416 : InImage map_19_198 image9416 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9416 : Bundle := named_bundle% "RealMapCertificates/relations/basis9416.json"
theorem reductionProof9416 : EqualModuloRelations reduction9416.relations reduction9416.input reduction9416.output := by lin_cert using reduction9416.terms
theorem substitutionProof9416 : IsMapEvaluation generatorImages reduction9416.relations [1152] reduction9416.output := by lin_cert using reduction9416.terms
def image9417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9417 : InImage map_19_198 image9417 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9417 : Bundle := named_bundle% "RealMapCertificates/relations/basis9417.json"
theorem reductionProof9417 : EqualModuloRelations reduction9417.relations reduction9417.input reduction9417.output := by lin_cert using reduction9417.terms
theorem substitutionProof9417 : IsMapEvaluation generatorImages reduction9417.relations [3,1014] reduction9417.output := by lin_cert using reduction9417.terms
def map_19_199 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image9542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9542 : InImage map_19_199 image9542 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction9542 : Bundle := named_bundle% "RealMapCertificates/relations/basis9542.json"
theorem reductionProof9542 : EqualModuloRelations reduction9542.relations reduction9542.input reduction9542.output := by lin_cert using reduction9542.terms
theorem substitutionProof9542 : IsMapEvaluation generatorImages reduction9542.relations [1174] reduction9542.output := by lin_cert using reduction9542.terms
def image9543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9543 : InImage map_19_199 image9543 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction9543 : Bundle := named_bundle% "RealMapCertificates/relations/basis9543.json"
theorem reductionProof9543 : EqualModuloRelations reduction9543.relations reduction9543.input reduction9543.output := by lin_cert using reduction9543.terms
theorem substitutionProof9543 : IsMapEvaluation generatorImages reduction9543.relations [13,75,213] reduction9543.output := by lin_cert using reduction9543.terms
def image9544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9544 : InImage map_19_199 image9544 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction9544 : Bundle := named_bundle% "RealMapCertificates/relations/basis9544.json"
theorem reductionProof9544 : EqualModuloRelations reduction9544.relations reduction9544.input reduction9544.output := by lin_cert using reduction9544.terms
theorem substitutionProof9544 : IsMapEvaluation generatorImages reduction9544.relations [13,13,570] reduction9544.output := by lin_cert using reduction9544.terms
def image9545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9545 : InImage map_19_199 image9545 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction9545 : Bundle := named_bundle% "RealMapCertificates/relations/basis9545.json"
theorem reductionProof9545 : EqualModuloRelations reduction9545.relations reduction9545.input reduction9545.output := by lin_cert using reduction9545.terms
theorem substitutionProof9545 : IsMapEvaluation generatorImages reduction9545.relations [3,1042] reduction9545.output := by lin_cert using reduction9545.terms
def image9546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9546 : InImage map_19_199 image9546 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction9546 : Bundle := named_bundle% "RealMapCertificates/relations/basis9546.json"
theorem reductionProof9546 : EqualModuloRelations reduction9546.relations reduction9546.input reduction9546.output := by lin_cert using reduction9546.terms
theorem substitutionProof9546 : IsMapEvaluation generatorImages reduction9546.relations [2,1096] reduction9546.output := by lin_cert using reduction9546.terms
def image9547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9547 : InImage map_19_199 image9547 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction9547 : Bundle := named_bundle% "RealMapCertificates/relations/basis9547.json"
theorem reductionProof9547 : EqualModuloRelations reduction9547.relations reduction9547.input reduction9547.output := by lin_cert using reduction9547.terms
theorem substitutionProof9547 : IsMapEvaluation generatorImages reduction9547.relations [1,1127] reduction9547.output := by lin_cert using reduction9547.terms
def image9548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9548 : InImage map_19_199 image9548 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction9548 : Bundle := named_bundle% "RealMapCertificates/relations/basis9548.json"
theorem reductionProof9548 : EqualModuloRelations reduction9548.relations reduction9548.input reduction9548.output := by lin_cert using reduction9548.terms
theorem substitutionProof9548 : IsMapEvaluation generatorImages reduction9548.relations [0,1154] reduction9548.output := by lin_cert using reduction9548.terms
def image9549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9549 : InImage map_19_199 image9549 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction9549 : Bundle := named_bundle% "RealMapCertificates/relations/basis9549.json"
theorem reductionProof9549 : EqualModuloRelations reduction9549.relations reduction9549.input reduction9549.output := by lin_cert using reduction9549.terms
theorem substitutionProof9549 : IsMapEvaluation generatorImages reduction9549.relations [0,3,1016] reduction9549.output := by lin_cert using reduction9549.terms
def image9550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9550 : InImage map_19_199 image9550 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction9550 : Bundle := named_bundle% "RealMapCertificates/relations/basis9550.json"
theorem reductionProof9550 : EqualModuloRelations reduction9550.relations reduction9550.input reduction9550.output := by lin_cert using reduction9550.terms
theorem substitutionProof9550 : IsMapEvaluation generatorImages reduction9550.relations [0,3,1015] reduction9550.output := by lin_cert using reduction9550.terms
def image9551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9551 : InImage map_19_199 image9551 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction9551 : Bundle := named_bundle% "RealMapCertificates/relations/basis9551.json"
theorem reductionProof9551 : EqualModuloRelations reduction9551.relations reduction9551.input reduction9551.output := by lin_cert using reduction9551.terms
theorem substitutionProof9551 : IsMapEvaluation generatorImages reduction9551.relations [0,0,0,0,0,0,0,0,64,324] reduction9551.output := by lin_cert using reduction9551.terms
def map_19_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9703 : InImage map_19_200 image9703 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9703 : Bundle := named_bundle% "RealMapCertificates/relations/basis9703.json"
theorem reductionProof9703 : EqualModuloRelations reduction9703.relations reduction9703.input reduction9703.output := by lin_cert using reduction9703.terms
theorem substitutionProof9703 : IsMapEvaluation generatorImages reduction9703.relations [1183] reduction9703.output := by lin_cert using reduction9703.terms
def image9704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9704 : InImage map_19_200 image9704 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9704 : Bundle := named_bundle% "RealMapCertificates/relations/basis9704.json"
theorem reductionProof9704 : EqualModuloRelations reduction9704.relations reduction9704.input reduction9704.output := by lin_cert using reduction9704.terms
theorem substitutionProof9704 : IsMapEvaluation generatorImages reduction9704.relations [1,1154] reduction9704.output := by lin_cert using reduction9704.terms
def image9705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9705 : InImage map_19_200 image9705 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9705 : Bundle := named_bundle% "RealMapCertificates/relations/basis9705.json"
theorem reductionProof9705 : EqualModuloRelations reduction9705.relations reduction9705.input reduction9705.output := by lin_cert using reduction9705.terms
theorem substitutionProof9705 : IsMapEvaluation generatorImages reduction9705.relations [0,1175] reduction9705.output := by lin_cert using reduction9705.terms
def image9706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9706 : InImage map_19_200 image9706 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9706 : Bundle := named_bundle% "RealMapCertificates/relations/basis9706.json"
theorem reductionProof9706 : EqualModuloRelations reduction9706.relations reduction9706.input reduction9706.output := by lin_cert using reduction9706.terms
theorem substitutionProof9706 : IsMapEvaluation generatorImages reduction9706.relations [0,0,1156] reduction9706.output := by lin_cert using reduction9706.terms
end RealMapCertificates
