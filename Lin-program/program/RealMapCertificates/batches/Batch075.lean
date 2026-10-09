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
  | 40 => [[4,5,6]]
  | 43 => []
  | 45 => [[5,5,8]]
  | 64 => []
  | 67 => []
  | 75 => []
  | 88 => [[4,4,5,5,7]]
  | 90 => []
  | 107 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 188 => []
  | 189 => []
  | 190 => []
  | 213 => []
  | 324 => []
  | 333 => []
  | 373 => []
  | 417 => []
  | 543 => []
  | 630 => []
  | 734 => []
  | 932 => []
  | 933 => []
  | 965 => []
  | 988 => []
  | 1017 => []
  | 1042 => []
  | 1067 => []
  | 1068 => []
  | 1088 => []
  | 1096 => []
  | 1097 => []
  | 1127 => []
  | 1128 => []
  | 1154 => []
  | 1156 => []
  | 1157 => []
  | 1175 => []
  | 1184 => []
  | 1185 => []
  | 1206 => []
  | 1207 => []
  | 1208 => []
  | 1209 => []
  | 1222 => []
  | 1223 => []
  | 1224 => []
  | 1245 => []
  | 1247 => []
  | 1260 => []
  | 1261 => []
  | 1262 => []
  | 1263 => []
  | 1265 => []
  | 1267 => []
  | 1292 => []
  | 1319 => []
  | 1320 => []
  | 1321 => []
  | 1322 => []
  | 1323 => []
  | 1339 => []
  | 1351 => []
  | 1372 => []
  | 1408 => []
  | 1434 => []
  | 1445 => []
  | 1446 => []
  | 1447 => []
  | 1455 => []
  | 1492 => []
  | 1508 => []
  | 1522 => []
  | 1523 => []
  | 1547 => []
  | 1548 => []
  | 1560 => []
  | 1577 => []
  | 1578 => []
  | 1579 => []
  | _ => []
def map_19_201 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9895 : InImage map_19_201 image9895 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9895 : Bundle := named_bundle% "RealMapCertificates/relations/basis9895.json"
theorem reductionProof9895 : EqualModuloRelations reduction9895.relations reduction9895.input reduction9895.output := by lin_cert using reduction9895.terms
theorem substitutionProof9895 : IsMapEvaluation generatorImages reduction9895.relations [3,1068] reduction9895.output := by lin_cert using reduction9895.terms
def image9896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9896 : InImage map_19_201 image9896 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9896 : Bundle := named_bundle% "RealMapCertificates/relations/basis9896.json"
theorem reductionProof9896 : EqualModuloRelations reduction9896.relations reduction9896.input reduction9896.output := by lin_cert using reduction9896.terms
theorem substitutionProof9896 : IsMapEvaluation generatorImages reduction9896.relations [3,1067] reduction9896.output := by lin_cert using reduction9896.terms
def image9897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9897 : InImage map_19_201 image9897 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9897 : Bundle := named_bundle% "RealMapCertificates/relations/basis9897.json"
theorem reductionProof9897 : EqualModuloRelations reduction9897.relations reduction9897.input reduction9897.output := by lin_cert using reduction9897.terms
theorem substitutionProof9897 : IsMapEvaluation generatorImages reduction9897.relations [0,7,932] reduction9897.output := by lin_cert using reduction9897.terms
def map_19_202 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10022 : InImage map_19_202 image10022 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10022 : Bundle := named_bundle% "RealMapCertificates/relations/basis10022.json"
theorem reductionProof10022 : EqualModuloRelations reduction10022.relations reduction10022.input reduction10022.output := by lin_cert using reduction10022.terms
theorem substitutionProof10022 : IsMapEvaluation generatorImages reduction10022.relations [1,88,324] reduction10022.output := by lin_cert using reduction10022.terms
def image10023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10023 : InImage map_19_202 image10023 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10023 : Bundle := named_bundle% "RealMapCertificates/relations/basis10023.json"
theorem reductionProof10023 : EqualModuloRelations reduction10023.relations reduction10023.input reduction10023.output := by lin_cert using reduction10023.terms
theorem substitutionProof10023 : IsMapEvaluation generatorImages reduction10023.relations [1,7,932] reduction10023.output := by lin_cert using reduction10023.terms
def image10024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10024 : InImage map_19_202 image10024 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10024 : Bundle := named_bundle% "RealMapCertificates/relations/basis10024.json"
theorem reductionProof10024 : EqualModuloRelations reduction10024.relations reduction10024.input reduction10024.output := by lin_cert using reduction10024.terms
theorem substitutionProof10024 : IsMapEvaluation generatorImages reduction10024.relations [0,1207] reduction10024.output := by lin_cert using reduction10024.terms
def image10025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10025 : InImage map_19_202 image10025 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10025 : Bundle := named_bundle% "RealMapCertificates/relations/basis10025.json"
theorem reductionProof10025 : EqualModuloRelations reduction10025.relations reduction10025.input reduction10025.output := by lin_cert using reduction10025.terms
theorem substitutionProof10025 : IsMapEvaluation generatorImages reduction10025.relations [0,1206] reduction10025.output := by lin_cert using reduction10025.terms
def image10026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10026 : InImage map_19_202 image10026 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10026 : Bundle := named_bundle% "RealMapCertificates/relations/basis10026.json"
theorem reductionProof10026 : EqualModuloRelations reduction10026.relations reduction10026.input reduction10026.output := by lin_cert using reduction10026.terms
theorem substitutionProof10026 : IsMapEvaluation generatorImages reduction10026.relations [0,0,1185] reduction10026.output := by lin_cert using reduction10026.terms
def image10027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10027 : InImage map_19_202 image10027 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10027 : Bundle := named_bundle% "RealMapCertificates/relations/basis10027.json"
theorem reductionProof10027 : EqualModuloRelations reduction10027.relations reduction10027.input reduction10027.output := by lin_cert using reduction10027.terms
theorem substitutionProof10027 : IsMapEvaluation generatorImages reduction10027.relations [0,0,1184] reduction10027.output := by lin_cert using reduction10027.terms
def map_19_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10194 : InImage map_19_203 image10194 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10194 : Bundle := named_bundle% "RealMapCertificates/relations/basis10194.json"
theorem reductionProof10194 : EqualModuloRelations reduction10194.relations reduction10194.input reduction10194.output := by lin_cert using reduction10194.terms
theorem substitutionProof10194 : IsMapEvaluation generatorImages reduction10194.relations [1245] reduction10194.output := by lin_cert using reduction10194.terms
def image10195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10195 : InImage map_19_203 image10195 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10195 : Bundle := named_bundle% "RealMapCertificates/relations/basis10195.json"
theorem reductionProof10195 : EqualModuloRelations reduction10195.relations reduction10195.input reduction10195.output := by lin_cert using reduction10195.terms
theorem substitutionProof10195 : IsMapEvaluation generatorImages reduction10195.relations [75,417] reduction10195.output := by lin_cert using reduction10195.terms
def image10196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10196 : InImage map_19_203 image10196 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10196 : Bundle := named_bundle% "RealMapCertificates/relations/basis10196.json"
theorem reductionProof10196 : EqualModuloRelations reduction10196.relations reduction10196.input reduction10196.output := by lin_cert using reduction10196.terms
theorem substitutionProof10196 : IsMapEvaluation generatorImages reduction10196.relations [17,40,324] reduction10196.output := by lin_cert using reduction10196.terms
def image10197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10197 : InImage map_19_203 image10197 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10197 : Bundle := named_bundle% "RealMapCertificates/relations/basis10197.json"
theorem reductionProof10197 : EqualModuloRelations reduction10197.relations reduction10197.input reduction10197.output := by lin_cert using reduction10197.terms
theorem substitutionProof10197 : IsMapEvaluation generatorImages reduction10197.relations [0,1222] reduction10197.output := by lin_cert using reduction10197.terms
def image10198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10198 : InImage map_19_203 image10198 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10198 : Bundle := named_bundle% "RealMapCertificates/relations/basis10198.json"
theorem reductionProof10198 : EqualModuloRelations reduction10198.relations reduction10198.input reduction10198.output := by lin_cert using reduction10198.terms
theorem substitutionProof10198 : IsMapEvaluation generatorImages reduction10198.relations [0,0,1209] reduction10198.output := by lin_cert using reduction10198.terms
def map_19_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10398 : InImage map_19_204 image10398 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10398 : Bundle := named_bundle% "RealMapCertificates/relations/basis10398.json"
theorem reductionProof10398 : EqualModuloRelations reduction10398.relations reduction10398.input reduction10398.output := by lin_cert using reduction10398.terms
theorem substitutionProof10398 : IsMapEvaluation generatorImages reduction10398.relations [1260] reduction10398.output := by lin_cert using reduction10398.terms
def image10399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10399 : InImage map_19_204 image10399 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10399 : Bundle := named_bundle% "RealMapCertificates/relations/basis10399.json"
theorem reductionProof10399 : EqualModuloRelations reduction10399.relations reduction10399.input reduction10399.output := by lin_cert using reduction10399.terms
theorem substitutionProof10399 : IsMapEvaluation generatorImages reduction10399.relations [188,190] reduction10399.output := by lin_cert using reduction10399.terms
def image10400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10400 : InImage map_19_204 image10400 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10400 : Bundle := named_bundle% "RealMapCertificates/relations/basis10400.json"
theorem reductionProof10400 : EqualModuloRelations reduction10400.relations reduction10400.input reduction10400.output := by lin_cert using reduction10400.terms
theorem substitutionProof10400 : IsMapEvaluation generatorImages reduction10400.relations [0,3,1097] reduction10400.output := by lin_cert using reduction10400.terms
def image10401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10401 : InImage map_19_204 image10401 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10401 : Bundle := named_bundle% "RealMapCertificates/relations/basis10401.json"
theorem reductionProof10401 : EqualModuloRelations reduction10401.relations reduction10401.input reduction10401.output := by lin_cert using reduction10401.terms
theorem substitutionProof10401 : IsMapEvaluation generatorImages reduction10401.relations [0,3,3,965] reduction10401.output := by lin_cert using reduction10401.terms
def image10402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10402 : InImage map_19_204 image10402 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10402 : Bundle := named_bundle% "RealMapCertificates/relations/basis10402.json"
theorem reductionProof10402 : EqualModuloRelations reduction10402.relations reduction10402.input reduction10402.output := by lin_cert using reduction10402.terms
theorem substitutionProof10402 : IsMapEvaluation generatorImages reduction10402.relations [0,0,1223] reduction10402.output := by lin_cert using reduction10402.terms
def map_19_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10543 : InImage map_19_205 image10543 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10543 : Bundle := named_bundle% "RealMapCertificates/relations/basis10543.json"
theorem reductionProof10543 : EqualModuloRelations reduction10543.relations reduction10543.input reduction10543.output := by lin_cert using reduction10543.terms
theorem substitutionProof10543 : IsMapEvaluation generatorImages reduction10543.relations [9,933] reduction10543.output := by lin_cert using reduction10543.terms
def image10544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10544 : InImage map_19_205 image10544 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10544 : Bundle := named_bundle% "RealMapCertificates/relations/basis10544.json"
theorem reductionProof10544 : EqualModuloRelations reduction10544.relations reduction10544.input reduction10544.output := by lin_cert using reduction10544.terms
theorem substitutionProof10544 : IsMapEvaluation generatorImages reduction10544.relations [1,1,1208] reduction10544.output := by lin_cert using reduction10544.terms
def image10545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10545 : InImage map_19_205 image10545 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10545 : Bundle := named_bundle% "RealMapCertificates/relations/basis10545.json"
theorem reductionProof10545 : EqualModuloRelations reduction10545.relations reduction10545.input reduction10545.output := by lin_cert using reduction10545.terms
theorem substitutionProof10545 : IsMapEvaluation generatorImages reduction10545.relations [0,1262] reduction10545.output := by lin_cert using reduction10545.terms
def image10546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10546 : InImage map_19_205 image10546 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10546 : Bundle := named_bundle% "RealMapCertificates/relations/basis10546.json"
theorem reductionProof10546 : EqualModuloRelations reduction10546.relations reduction10546.input reduction10546.output := by lin_cert using reduction10546.terms
theorem substitutionProof10546 : IsMapEvaluation generatorImages reduction10546.relations [0,1261] reduction10546.output := by lin_cert using reduction10546.terms
def image10547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10547 : InImage map_19_205 image10547 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10547 : Bundle := named_bundle% "RealMapCertificates/relations/basis10547.json"
theorem reductionProof10547 : EqualModuloRelations reduction10547.relations reduction10547.input reduction10547.output := by lin_cert using reduction10547.terms
theorem substitutionProof10547 : IsMapEvaluation generatorImages reduction10547.relations [0,0,1247] reduction10547.output := by lin_cert using reduction10547.terms
def image10548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10548 : InImage map_19_205 image10548 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10548 : Bundle := named_bundle% "RealMapCertificates/relations/basis10548.json"
theorem reductionProof10548 : EqualModuloRelations reduction10548.relations reduction10548.input reduction10548.output := by lin_cert using reduction10548.terms
theorem substitutionProof10548 : IsMapEvaluation generatorImages reduction10548.relations [0,0,0,3,1088] reduction10548.output := by lin_cert using reduction10548.terms
def map_19_206 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10723 : InImage map_19_206 image10723 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10723 : Bundle := named_bundle% "RealMapCertificates/relations/basis10723.json"
theorem reductionProof10723 : EqualModuloRelations reduction10723.relations reduction10723.input reduction10723.output := by lin_cert using reduction10723.terms
theorem substitutionProof10723 : IsMapEvaluation generatorImages reduction10723.relations [43,630] reduction10723.output := by lin_cert using reduction10723.terms
def image10724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10724 : InImage map_19_206 image10724 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10724 : Bundle := named_bundle% "RealMapCertificates/relations/basis10724.json"
theorem reductionProof10724 : EqualModuloRelations reduction10724.relations reduction10724.input reduction10724.output := by lin_cert using reduction10724.terms
theorem substitutionProof10724 : IsMapEvaluation generatorImages reduction10724.relations [8,17,17,324] reduction10724.output := by lin_cert using reduction10724.terms
def image10725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10725 : InImage map_19_206 image10725 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10725 : Bundle := named_bundle% "RealMapCertificates/relations/basis10725.json"
theorem reductionProof10725 : EqualModuloRelations reduction10725.relations reduction10725.input reduction10725.output := by lin_cert using reduction10725.terms
theorem substitutionProof10725 : IsMapEvaluation generatorImages reduction10725.relations [2,1222] reduction10725.output := by lin_cert using reduction10725.terms
def image10726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10726 : InImage map_19_206 image10726 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10726 : Bundle := named_bundle% "RealMapCertificates/relations/basis10726.json"
theorem reductionProof10726 : EqualModuloRelations reduction10726.relations reduction10726.input reduction10726.output := by lin_cert using reduction10726.terms
theorem substitutionProof10726 : IsMapEvaluation generatorImages reduction10726.relations [1,1261] reduction10726.output := by lin_cert using reduction10726.terms
def image10727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10727 : InImage map_19_206 image10727 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10727 : Bundle := named_bundle% "RealMapCertificates/relations/basis10727.json"
theorem reductionProof10727 : EqualModuloRelations reduction10727.relations reduction10727.input reduction10727.output := by lin_cert using reduction10727.terms
theorem substitutionProof10727 : IsMapEvaluation generatorImages reduction10727.relations [1,189,190] reduction10727.output := by lin_cert using reduction10727.terms
def image10728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10728 : InImage map_19_206 image10728 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10728 : Bundle := named_bundle% "RealMapCertificates/relations/basis10728.json"
theorem reductionProof10728 : EqualModuloRelations reduction10728.relations reduction10728.input reduction10728.output := by lin_cert using reduction10728.terms
theorem substitutionProof10728 : IsMapEvaluation generatorImages reduction10728.relations [0,0,1265] reduction10728.output := by lin_cert using reduction10728.terms
def image10729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10729 : InImage map_19_206 image10729 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10729 : Bundle := named_bundle% "RealMapCertificates/relations/basis10729.json"
theorem reductionProof10729 : EqualModuloRelations reduction10729.relations reduction10729.input reduction10729.output := by lin_cert using reduction10729.terms
theorem substitutionProof10729 : IsMapEvaluation generatorImages reduction10729.relations [0,0,1263] reduction10729.output := by lin_cert using reduction10729.terms
def map_19_207 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10940 : InImage map_19_207 image10940 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10940 : Bundle := named_bundle% "RealMapCertificates/relations/basis10940.json"
theorem reductionProof10940 : EqualModuloRelations reduction10940.relations reduction10940.input reduction10940.output := by lin_cert using reduction10940.terms
theorem substitutionProof10940 : IsMapEvaluation generatorImages reduction10940.relations [1319] reduction10940.output := by lin_cert using reduction10940.terms
def image10941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10941 : InImage map_19_207 image10941 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10941 : Bundle := named_bundle% "RealMapCertificates/relations/basis10941.json"
theorem reductionProof10941 : EqualModuloRelations reduction10941.relations reduction10941.input reduction10941.output := by lin_cert using reduction10941.terms
theorem substitutionProof10941 : IsMapEvaluation generatorImages reduction10941.relations [7,1042] reduction10941.output := by lin_cert using reduction10941.terms
def image10942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10942 : InImage map_19_207 image10942 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10942 : Bundle := named_bundle% "RealMapCertificates/relations/basis10942.json"
theorem reductionProof10942 : EqualModuloRelations reduction10942.relations reduction10942.input reduction10942.output := by lin_cert using reduction10942.terms
theorem substitutionProof10942 : IsMapEvaluation generatorImages reduction10942.relations [0,0,1292] reduction10942.output := by lin_cert using reduction10942.terms
def image10943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10943 : InImage map_19_207 image10943 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10943 : Bundle := named_bundle% "RealMapCertificates/relations/basis10943.json"
theorem reductionProof10943 : EqualModuloRelations reduction10943.relations reduction10943.input reduction10943.output := by lin_cert using reduction10943.terms
theorem substitutionProof10943 : IsMapEvaluation generatorImages reduction10943.relations [0,0,107,333] reduction10943.output := by lin_cert using reduction10943.terms
def image10944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10944 : InImage map_19_207 image10944 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10944 : Bundle := named_bundle% "RealMapCertificates/relations/basis10944.json"
theorem reductionProof10944 : EqualModuloRelations reduction10944.relations reduction10944.input reduction10944.output := by lin_cert using reduction10944.terms
theorem substitutionProof10944 : IsMapEvaluation generatorImages reduction10944.relations [0,0,0,1267] reduction10944.output := by lin_cert using reduction10944.terms
def map_19_208 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11071 : InImage map_19_208 image11071 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11071 : Bundle := named_bundle% "RealMapCertificates/relations/basis11071.json"
theorem reductionProof11071 : EqualModuloRelations reduction11071.relations reduction11071.input reduction11071.output := by lin_cert using reduction11071.terms
theorem substitutionProof11071 : IsMapEvaluation generatorImages reduction11071.relations [13,933] reduction11071.output := by lin_cert using reduction11071.terms
def image11072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11072 : InImage map_19_208 image11072 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11072 : Bundle := named_bundle% "RealMapCertificates/relations/basis11072.json"
theorem reductionProof11072 : EqualModuloRelations reduction11072.relations reduction11072.input reduction11072.output := by lin_cert using reduction11072.terms
theorem substitutionProof11072 : IsMapEvaluation generatorImages reduction11072.relations [2,1261] reduction11072.output := by lin_cert using reduction11072.terms
def image11073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11073 : InImage map_19_208 image11073 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11073 : Bundle := named_bundle% "RealMapCertificates/relations/basis11073.json"
theorem reductionProof11073 : EqualModuloRelations reduction11073.relations reduction11073.input reduction11073.output := by lin_cert using reduction11073.terms
theorem substitutionProof11073 : IsMapEvaluation generatorImages reduction11073.relations [0,1322] reduction11073.output := by lin_cert using reduction11073.terms
def image11074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11074 : InImage map_19_208 image11074 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11074 : Bundle := named_bundle% "RealMapCertificates/relations/basis11074.json"
theorem reductionProof11074 : EqualModuloRelations reduction11074.relations reduction11074.input reduction11074.output := by lin_cert using reduction11074.terms
theorem substitutionProof11074 : IsMapEvaluation generatorImages reduction11074.relations [0,1320] reduction11074.output := by lin_cert using reduction11074.terms
def image11075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11075 : InImage map_19_208 image11075 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11075 : Bundle := named_bundle% "RealMapCertificates/relations/basis11075.json"
theorem reductionProof11075 : EqualModuloRelations reduction11075.relations reduction11075.input reduction11075.output := by lin_cert using reduction11075.terms
theorem substitutionProof11075 : IsMapEvaluation generatorImages reduction11075.relations [0,0,7,1017] reduction11075.output := by lin_cert using reduction11075.terms
def image11076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11076 : InImage map_19_208 image11076 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11076 : Bundle := named_bundle% "RealMapCertificates/relations/basis11076.json"
theorem reductionProof11076 : EqualModuloRelations reduction11076.relations reduction11076.input reduction11076.output := by lin_cert using reduction11076.terms
theorem substitutionProof11076 : IsMapEvaluation generatorImages reduction11076.relations [0,0,0,0,0,0,0,0,90,324] reduction11076.output := by lin_cert using reduction11076.terms
def map_19_209 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11255 : InImage map_19_209 image11255 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11255 : Bundle := named_bundle% "RealMapCertificates/relations/basis11255.json"
theorem reductionProof11255 : EqualModuloRelations reduction11255.relations reduction11255.input reduction11255.output := by lin_cert using reduction11255.terms
theorem substitutionProof11255 : IsMapEvaluation generatorImages reduction11255.relations [1351] reduction11255.output := by lin_cert using reduction11255.terms
def image11256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11256 : InImage map_19_209 image11256 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11256 : Bundle := named_bundle% "RealMapCertificates/relations/basis11256.json"
theorem reductionProof11256 : EqualModuloRelations reduction11256.relations reduction11256.input reduction11256.output := by lin_cert using reduction11256.terms
theorem substitutionProof11256 : IsMapEvaluation generatorImages reduction11256.relations [9,988] reduction11256.output := by lin_cert using reduction11256.terms
def image11257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11257 : InImage map_19_209 image11257 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11257 : Bundle := named_bundle% "RealMapCertificates/relations/basis11257.json"
theorem reductionProof11257 : EqualModuloRelations reduction11257.relations reduction11257.input reduction11257.output := by lin_cert using reduction11257.terms
theorem substitutionProof11257 : IsMapEvaluation generatorImages reduction11257.relations [8,17,20,324] reduction11257.output := by lin_cert using reduction11257.terms
def image11258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11258 : InImage map_19_209 image11258 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11258 : Bundle := named_bundle% "RealMapCertificates/relations/basis11258.json"
theorem reductionProof11258 : EqualModuloRelations reduction11258.relations reduction11258.input reduction11258.output := by lin_cert using reduction11258.terms
theorem substitutionProof11258 : IsMapEvaluation generatorImages reduction11258.relations [1,1321] reduction11258.output := by lin_cert using reduction11258.terms
def image11259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11259 : InImage map_19_209 image11259 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11259 : Bundle := named_bundle% "RealMapCertificates/relations/basis11259.json"
theorem reductionProof11259 : EqualModuloRelations reduction11259.relations reduction11259.input reduction11259.output := by lin_cert using reduction11259.terms
theorem substitutionProof11259 : IsMapEvaluation generatorImages reduction11259.relations [0,0,1323] reduction11259.output := by lin_cert using reduction11259.terms
def map_19_210 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11453 : InImage map_19_210 image11453 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11453 : Bundle := named_bundle% "RealMapCertificates/relations/basis11453.json"
theorem reductionProof11453 : EqualModuloRelations reduction11453.relations reduction11453.input reduction11453.output := by lin_cert using reduction11453.terms
theorem substitutionProof11453 : IsMapEvaluation generatorImages reduction11453.relations [189,213] reduction11453.output := by lin_cert using reduction11453.terms
def image11454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11454 : InImage map_19_210 image11454 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11454 : Bundle := named_bundle% "RealMapCertificates/relations/basis11454.json"
theorem reductionProof11454 : EqualModuloRelations reduction11454.relations reduction11454.input reduction11454.output := by lin_cert using reduction11454.terms
theorem substitutionProof11454 : IsMapEvaluation generatorImages reduction11454.relations [3,1222] reduction11454.output := by lin_cert using reduction11454.terms
def map_19_211 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11608 : InImage map_19_211 image11608 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11608 : Bundle := named_bundle% "RealMapCertificates/relations/basis11608.json"
theorem reductionProof11608 : EqualModuloRelations reduction11608.relations reduction11608.input reduction11608.output := by lin_cert using reduction11608.terms
theorem substitutionProof11608 : IsMapEvaluation generatorImages reduction11608.relations [7,1096] reduction11608.output := by lin_cert using reduction11608.terms
def image11609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11609 : InImage map_19_211 image11609 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11609 : Bundle := named_bundle% "RealMapCertificates/relations/basis11609.json"
theorem reductionProof11609 : EqualModuloRelations reduction11609.relations reduction11609.input reduction11609.output := by lin_cert using reduction11609.terms
theorem substitutionProof11609 : IsMapEvaluation generatorImages reduction11609.relations [2,1320] reduction11609.output := by lin_cert using reduction11609.terms
def image11610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11610 : InImage map_19_211 image11610 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11610 : Bundle := named_bundle% "RealMapCertificates/relations/basis11610.json"
theorem reductionProof11610 : EqualModuloRelations reduction11610.relations reduction11610.input reduction11610.output := by lin_cert using reduction11610.terms
theorem substitutionProof11610 : IsMapEvaluation generatorImages reduction11610.relations [0,1372] reduction11610.output := by lin_cert using reduction11610.terms
def image11611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11611 : InImage map_19_211 image11611 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11611 : Bundle := named_bundle% "RealMapCertificates/relations/basis11611.json"
theorem reductionProof11611 : EqualModuloRelations reduction11611.relations reduction11611.input reduction11611.output := by lin_cert using reduction11611.terms
theorem substitutionProof11611 : IsMapEvaluation generatorImages reduction11611.relations [0,3,1223] reduction11611.output := by lin_cert using reduction11611.terms
def image11612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11612 : InImage map_19_211 image11612 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11612 : Bundle := named_bundle% "RealMapCertificates/relations/basis11612.json"
theorem reductionProof11612 : EqualModuloRelations reduction11612.relations reduction11612.input reduction11612.output := by lin_cert using reduction11612.terms
theorem substitutionProof11612 : IsMapEvaluation generatorImages reduction11612.relations [0,0,0,1339] reduction11612.output := by lin_cert using reduction11612.terms
def map_19_212 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11804 : InImage map_19_212 image11804 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11804 : Bundle := named_bundle% "RealMapCertificates/relations/basis11804.json"
theorem reductionProof11804 : EqualModuloRelations reduction11804.relations reduction11804.input reduction11804.output := by lin_cert using reduction11804.terms
theorem substitutionProof11804 : IsMapEvaluation generatorImages reduction11804.relations [1408] reduction11804.output := by lin_cert using reduction11804.terms
def image11805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11805 : InImage map_19_212 image11805 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11805 : Bundle := named_bundle% "RealMapCertificates/relations/basis11805.json"
theorem reductionProof11805 : EqualModuloRelations reduction11805.relations reduction11805.input reduction11805.output := by lin_cert using reduction11805.terms
theorem substitutionProof11805 : IsMapEvaluation generatorImages reduction11805.relations [13,988] reduction11805.output := by lin_cert using reduction11805.terms
def image11806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11806 : InImage map_19_212 image11806 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11806 : Bundle := named_bundle% "RealMapCertificates/relations/basis11806.json"
theorem reductionProof11806 : EqualModuloRelations reduction11806.relations reduction11806.input reduction11806.output := by lin_cert using reduction11806.terms
theorem substitutionProof11806 : IsMapEvaluation generatorImages reduction11806.relations [8,16,23,324] reduction11806.output := by lin_cert using reduction11806.terms
def image11807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11807 : InImage map_19_212 image11807 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11807 : Bundle := named_bundle% "RealMapCertificates/relations/basis11807.json"
theorem reductionProof11807 : EqualModuloRelations reduction11807.relations reduction11807.input reduction11807.output := by lin_cert using reduction11807.terms
theorem substitutionProof11807 : IsMapEvaluation generatorImages reduction11807.relations [3,1261] reduction11807.output := by lin_cert using reduction11807.terms
def image11808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11808 : InImage map_19_212 image11808 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11808 : Bundle := named_bundle% "RealMapCertificates/relations/basis11808.json"
theorem reductionProof11808 : EqualModuloRelations reduction11808.relations reduction11808.input reduction11808.output := by lin_cert using reduction11808.terms
theorem substitutionProof11808 : IsMapEvaluation generatorImages reduction11808.relations [3,189,190] reduction11808.output := by lin_cert using reduction11808.terms
def image11809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11809 : InImage map_19_212 image11809 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11809 : Bundle := named_bundle% "RealMapCertificates/relations/basis11809.json"
theorem reductionProof11809 : EqualModuloRelations reduction11809.relations reduction11809.input reduction11809.output := by lin_cert using reduction11809.terms
theorem substitutionProof11809 : IsMapEvaluation generatorImages reduction11809.relations [1,1372] reduction11809.output := by lin_cert using reduction11809.terms
def image11810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11810 : InImage map_19_212 image11810 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11810 : Bundle := named_bundle% "RealMapCertificates/relations/basis11810.json"
theorem reductionProof11810 : EqualModuloRelations reduction11810.relations reduction11810.input reduction11810.output := by lin_cert using reduction11810.terms
theorem substitutionProof11810 : IsMapEvaluation generatorImages reduction11810.relations [0,0,3,1224] reduction11810.output := by lin_cert using reduction11810.terms
def map_19_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12042 : InImage map_19_213 image12042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12042 : Bundle := named_bundle% "RealMapCertificates/relations/basis12042.json"
theorem reductionProof12042 : EqualModuloRelations reduction12042.relations reduction12042.input reduction12042.output := by lin_cert using reduction12042.terms
theorem substitutionProof12042 : IsMapEvaluation generatorImages reduction12042.relations [1434] reduction12042.output := by lin_cert using reduction12042.terms
def image12043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12043 : InImage map_19_213 image12043 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12043 : Bundle := named_bundle% "RealMapCertificates/relations/basis12043.json"
theorem reductionProof12043 : EqualModuloRelations reduction12043.relations reduction12043.input reduction12043.output := by lin_cert using reduction12043.terms
theorem substitutionProof12043 : IsMapEvaluation generatorImages reduction12043.relations [7,1127] reduction12043.output := by lin_cert using reduction12043.terms
def image12044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12044 : InImage map_19_213 image12044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12044 : Bundle := named_bundle% "RealMapCertificates/relations/basis12044.json"
theorem reductionProof12044 : EqualModuloRelations reduction12044.relations reduction12044.input reduction12044.output := by lin_cert using reduction12044.terms
theorem substitutionProof12044 : IsMapEvaluation generatorImages reduction12044.relations [0,67,543] reduction12044.output := by lin_cert using reduction12044.terms
def map_19_214 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12195 : InImage map_19_214 image12195 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12195 : Bundle := named_bundle% "RealMapCertificates/relations/basis12195.json"
theorem reductionProof12195 : EqualModuloRelations reduction12195.relations reduction12195.input reduction12195.output := by lin_cert using reduction12195.terms
theorem substitutionProof12195 : IsMapEvaluation generatorImages reduction12195.relations [1445] reduction12195.output := by lin_cert using reduction12195.terms
def image12196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12196 : InImage map_19_214 image12196 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12196 : Bundle := named_bundle% "RealMapCertificates/relations/basis12196.json"
theorem reductionProof12196 : EqualModuloRelations reduction12196.relations reduction12196.input reduction12196.output := by lin_cert using reduction12196.terms
theorem substitutionProof12196 : IsMapEvaluation generatorImages reduction12196.relations [7,1154] reduction12196.output := by lin_cert using reduction12196.terms
def image12197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12197 : InImage map_19_214 image12197 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12197 : Bundle := named_bundle% "RealMapCertificates/relations/basis12197.json"
theorem reductionProof12197 : EqualModuloRelations reduction12197.relations reduction12197.input reduction12197.output := by lin_cert using reduction12197.terms
theorem substitutionProof12197 : IsMapEvaluation generatorImages reduction12197.relations [0,3,1292] reduction12197.output := by lin_cert using reduction12197.terms
def map_19_215 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12400 : InImage map_19_215 image12400 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12400 : Bundle := named_bundle% "RealMapCertificates/relations/basis12400.json"
theorem reductionProof12400 : EqualModuloRelations reduction12400.relations reduction12400.input reduction12400.output := by lin_cert using reduction12400.terms
theorem substitutionProof12400 : IsMapEvaluation generatorImages reduction12400.relations [137,324] reduction12400.output := by lin_cert using reduction12400.terms
def image12401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12401 : InImage map_19_215 image12401 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12401 : Bundle := named_bundle% "RealMapCertificates/relations/basis12401.json"
theorem reductionProof12401 : EqualModuloRelations reduction12401.relations reduction12401.input reduction12401.output := by lin_cert using reduction12401.terms
theorem substitutionProof12401 : IsMapEvaluation generatorImages reduction12401.relations [13,13,734] reduction12401.output := by lin_cert using reduction12401.terms
def image12402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12402 : InImage map_19_215 image12402 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12402 : Bundle := named_bundle% "RealMapCertificates/relations/basis12402.json"
theorem reductionProof12402 : EqualModuloRelations reduction12402.relations reduction12402.input reduction12402.output := by lin_cert using reduction12402.terms
theorem substitutionProof12402 : IsMapEvaluation generatorImages reduction12402.relations [8,8,45,324] reduction12402.output := by lin_cert using reduction12402.terms
def image12403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12403 : InImage map_19_215 image12403 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12403 : Bundle := named_bundle% "RealMapCertificates/relations/basis12403.json"
theorem reductionProof12403 : EqualModuloRelations reduction12403.relations reduction12403.input reduction12403.output := by lin_cert using reduction12403.terms
theorem substitutionProof12403 : IsMapEvaluation generatorImages reduction12403.relations [7,1175] reduction12403.output := by lin_cert using reduction12403.terms
def image12404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12404 : InImage map_19_215 image12404 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12404 : Bundle := named_bundle% "RealMapCertificates/relations/basis12404.json"
theorem reductionProof12404 : EqualModuloRelations reduction12404.relations reduction12404.input reduction12404.output := by lin_cert using reduction12404.terms
theorem substitutionProof12404 : IsMapEvaluation generatorImages reduction12404.relations [1,7,1128] reduction12404.output := by lin_cert using reduction12404.terms
def image12405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12405 : InImage map_19_215 image12405 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12405 : Bundle := named_bundle% "RealMapCertificates/relations/basis12405.json"
theorem reductionProof12405 : EqualModuloRelations reduction12405.relations reduction12405.input reduction12405.output := by lin_cert using reduction12405.terms
theorem substitutionProof12405 : IsMapEvaluation generatorImages reduction12405.relations [0,1446] reduction12405.output := by lin_cert using reduction12405.terms
def image12406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12406 : InImage map_19_215 image12406 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12406 : Bundle := named_bundle% "RealMapCertificates/relations/basis12406.json"
theorem reductionProof12406 : EqualModuloRelations reduction12406.relations reduction12406.input reduction12406.output := by lin_cert using reduction12406.terms
theorem substitutionProof12406 : IsMapEvaluation generatorImages reduction12406.relations [0,3,3,1157] reduction12406.output := by lin_cert using reduction12406.terms
def map_19_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12606 : InImage map_19_216 image12606 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12606 : Bundle := named_bundle% "RealMapCertificates/relations/basis12606.json"
theorem reductionProof12606 : EqualModuloRelations reduction12606.relations reduction12606.input reduction12606.output := by lin_cert using reduction12606.terms
theorem substitutionProof12606 : IsMapEvaluation generatorImages reduction12606.relations [1492] reduction12606.output := by lin_cert using reduction12606.terms
def image12607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12607 : InImage map_19_216 image12607 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12607 : Bundle := named_bundle% "RealMapCertificates/relations/basis12607.json"
theorem reductionProof12607 : EqualModuloRelations reduction12607.relations reduction12607.input reduction12607.output := by lin_cert using reduction12607.terms
theorem substitutionProof12607 : IsMapEvaluation generatorImages reduction12607.relations [1,1446] reduction12607.output := by lin_cert using reduction12607.terms
def image12608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12608 : InImage map_19_216 image12608 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12608 : Bundle := named_bundle% "RealMapCertificates/relations/basis12608.json"
theorem reductionProof12608 : EqualModuloRelations reduction12608.relations reduction12608.input reduction12608.output := by lin_cert using reduction12608.terms
theorem substitutionProof12608 : IsMapEvaluation generatorImages reduction12608.relations [1,7,1156] reduction12608.output := by lin_cert using reduction12608.terms
def image12609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12609 : InImage map_19_216 image12609 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12609 : Bundle := named_bundle% "RealMapCertificates/relations/basis12609.json"
theorem reductionProof12609 : EqualModuloRelations reduction12609.relations reduction12609.input reduction12609.output := by lin_cert using reduction12609.terms
theorem substitutionProof12609 : IsMapEvaluation generatorImages reduction12609.relations [0,138,324] reduction12609.output := by lin_cert using reduction12609.terms
def image12610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12610 : InImage map_19_216 image12610 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12610 : Bundle := named_bundle% "RealMapCertificates/relations/basis12610.json"
theorem reductionProof12610 : EqualModuloRelations reduction12610.relations reduction12610.input reduction12610.output := by lin_cert using reduction12610.terms
theorem substitutionProof12610 : IsMapEvaluation generatorImages reduction12610.relations [0,0,1447] reduction12610.output := by lin_cert using reduction12610.terms
def map_19_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12763 : InImage map_19_217 image12763 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12763 : Bundle := named_bundle% "RealMapCertificates/relations/basis12763.json"
theorem reductionProof12763 : EqualModuloRelations reduction12763.relations reduction12763.input reduction12763.output := by lin_cert using reduction12763.terms
theorem substitutionProof12763 : IsMapEvaluation generatorImages reduction12763.relations [1,3,1323] reduction12763.output := by lin_cert using reduction12763.terms
def image12764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12764 : InImage map_19_217 image12764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12764 : Bundle := named_bundle% "RealMapCertificates/relations/basis12764.json"
theorem reductionProof12764 : EqualModuloRelations reduction12764.relations reduction12764.input reduction12764.output := by lin_cert using reduction12764.terms
theorem substitutionProof12764 : IsMapEvaluation generatorImages reduction12764.relations [0,7,1185] reduction12764.output := by lin_cert using reduction12764.terms
def map_19_218 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12963 : InImage map_19_218 image12963 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12963 : Bundle := named_bundle% "RealMapCertificates/relations/basis12963.json"
theorem reductionProof12963 : EqualModuloRelations reduction12963.relations reduction12963.input reduction12963.output := by lin_cert using reduction12963.terms
theorem substitutionProof12963 : IsMapEvaluation generatorImages reduction12963.relations [1522] reduction12963.output := by lin_cert using reduction12963.terms
def image12964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12964 : InImage map_19_218 image12964 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12964 : Bundle := named_bundle% "RealMapCertificates/relations/basis12964.json"
theorem reductionProof12964 : EqualModuloRelations reduction12964.relations reduction12964.input reduction12964.output := by lin_cert using reduction12964.terms
theorem substitutionProof12964 : IsMapEvaluation generatorImages reduction12964.relations [146,324] reduction12964.output := by lin_cert using reduction12964.terms
def image12965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12965 : InImage map_19_218 image12965 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12965 : Bundle := named_bundle% "RealMapCertificates/relations/basis12965.json"
theorem reductionProof12965 : EqualModuloRelations reduction12965.relations reduction12965.input reduction12965.output := by lin_cert using reduction12965.terms
theorem substitutionProof12965 : IsMapEvaluation generatorImages reduction12965.relations [13,1088] reduction12965.output := by lin_cert using reduction12965.terms
def image12966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12966 : InImage map_19_218 image12966 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12966 : Bundle := named_bundle% "RealMapCertificates/relations/basis12966.json"
theorem reductionProof12966 : EqualModuloRelations reduction12966.relations reduction12966.input reduction12966.output := by lin_cert using reduction12966.terms
theorem substitutionProof12966 : IsMapEvaluation generatorImages reduction12966.relations [8,8,8,23,324] reduction12966.output := by lin_cert using reduction12966.terms
def image12967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12967 : InImage map_19_218 image12967 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12967 : Bundle := named_bundle% "RealMapCertificates/relations/basis12967.json"
theorem reductionProof12967 : EqualModuloRelations reduction12967.relations reduction12967.input reduction12967.output := by lin_cert using reduction12967.terms
theorem substitutionProof12967 : IsMapEvaluation generatorImages reduction12967.relations [2,1446] reduction12967.output := by lin_cert using reduction12967.terms
def image12968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12968 : InImage map_19_218 image12968 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12968 : Bundle := named_bundle% "RealMapCertificates/relations/basis12968.json"
theorem reductionProof12968 : EqualModuloRelations reduction12968.relations reduction12968.input reduction12968.output := by lin_cert using reduction12968.terms
theorem substitutionProof12968 : IsMapEvaluation generatorImages reduction12968.relations [0,1508] reduction12968.output := by lin_cert using reduction12968.terms
def image12969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12969 : InImage map_19_218 image12969 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12969 : Bundle := named_bundle% "RealMapCertificates/relations/basis12969.json"
theorem reductionProof12969 : EqualModuloRelations reduction12969.relations reduction12969.input reduction12969.output := by lin_cert using reduction12969.terms
theorem substitutionProof12969 : IsMapEvaluation generatorImages reduction12969.relations [0,7,1208] reduction12969.output := by lin_cert using reduction12969.terms
def map_19_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13193 : InImage map_19_219 image13193 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13193 : Bundle := named_bundle% "RealMapCertificates/relations/basis13193.json"
theorem reductionProof13193 : EqualModuloRelations reduction13193.relations reduction13193.input reduction13193.output := by lin_cert using reduction13193.terms
theorem substitutionProof13193 : IsMapEvaluation generatorImages reduction13193.relations [1547] reduction13193.output := by lin_cert using reduction13193.terms
def image13194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13194 : InImage map_19_219 image13194 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13194 : Bundle := named_bundle% "RealMapCertificates/relations/basis13194.json"
theorem reductionProof13194 : EqualModuloRelations reduction13194.relations reduction13194.input reduction13194.output := by lin_cert using reduction13194.terms
theorem substitutionProof13194 : IsMapEvaluation generatorImages reduction13194.relations [0,147,324] reduction13194.output := by lin_cert using reduction13194.terms
def map_19_220 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13322 : InImage map_19_220 image13322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13322 : Bundle := named_bundle% "RealMapCertificates/relations/basis13322.json"
theorem reductionProof13322 : EqualModuloRelations reduction13322.relations reduction13322.input reduction13322.output := by lin_cert using reduction13322.terms
theorem substitutionProof13322 : IsMapEvaluation generatorImages reduction13322.relations [0,1548] reduction13322.output := by lin_cert using reduction13322.terms
def image13323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13323 : InImage map_19_220 image13323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13323 : Bundle := named_bundle% "RealMapCertificates/relations/basis13323.json"
theorem reductionProof13323 : EqualModuloRelations reduction13323.relations reduction13323.input reduction13323.output := by lin_cert using reduction13323.terms
theorem substitutionProof13323 : IsMapEvaluation generatorImages reduction13323.relations [0,0,0,0,0,0,1455] reduction13323.output := by lin_cert using reduction13323.terms
def map_19_221 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image13530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13530 : InImage map_19_221 image13530 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction13530 : Bundle := named_bundle% "RealMapCertificates/relations/basis13530.json"
theorem reductionProof13530 : EqualModuloRelations reduction13530.relations reduction13530.input reduction13530.output := by lin_cert using reduction13530.terms
theorem substitutionProof13530 : IsMapEvaluation generatorImages reduction13530.relations [1579] reduction13530.output := by lin_cert using reduction13530.terms
def image13531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13531 : InImage map_19_221 image13531 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction13531 : Bundle := named_bundle% "RealMapCertificates/relations/basis13531.json"
theorem reductionProof13531 : EqualModuloRelations reduction13531.relations reduction13531.input reduction13531.output := by lin_cert using reduction13531.terms
theorem substitutionProof13531 : IsMapEvaluation generatorImages reduction13531.relations [1578] reduction13531.output := by lin_cert using reduction13531.terms
def image13532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13532 : InImage map_19_221 image13532 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction13532 : Bundle := named_bundle% "RealMapCertificates/relations/basis13532.json"
theorem reductionProof13532 : EqualModuloRelations reduction13532.relations reduction13532.input reduction13532.output := by lin_cert using reduction13532.terms
theorem substitutionProof13532 : IsMapEvaluation generatorImages reduction13532.relations [1577] reduction13532.output := by lin_cert using reduction13532.terms
def image13533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13533 : InImage map_19_221 image13533 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction13533 : Bundle := named_bundle% "RealMapCertificates/relations/basis13533.json"
theorem reductionProof13533 : EqualModuloRelations reduction13533.relations reduction13533.input reduction13533.output := by lin_cert using reduction13533.terms
theorem substitutionProof13533 : IsMapEvaluation generatorImages reduction13533.relations [16,64,324] reduction13533.output := by lin_cert using reduction13533.terms
def image13534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13534 : InImage map_19_221 image13534 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction13534 : Bundle := named_bundle% "RealMapCertificates/relations/basis13534.json"
theorem reductionProof13534 : EqualModuloRelations reduction13534.relations reduction13534.input reduction13534.output := by lin_cert using reduction13534.terms
theorem substitutionProof13534 : IsMapEvaluation generatorImages reduction13534.relations [9,75,373] reduction13534.output := by lin_cert using reduction13534.terms
def image13535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13535 : InImage map_19_221 image13535 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction13535 : Bundle := named_bundle% "RealMapCertificates/relations/basis13535.json"
theorem reductionProof13535 : EqualModuloRelations reduction13535.relations reduction13535.input reduction13535.output := by lin_cert using reduction13535.terms
theorem substitutionProof13535 : IsMapEvaluation generatorImages reduction13535.relations [8,8,9,23,324] reduction13535.output := by lin_cert using reduction13535.terms
def image13536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13536 : InImage map_19_221 image13536 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction13536 : Bundle := named_bundle% "RealMapCertificates/relations/basis13536.json"
theorem reductionProof13536 : EqualModuloRelations reduction13536.relations reduction13536.input reduction13536.output := by lin_cert using reduction13536.terms
theorem substitutionProof13536 : IsMapEvaluation generatorImages reduction13536.relations [1,1548] reduction13536.output := by lin_cert using reduction13536.terms
def image13537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13537 : InImage map_19_221 image13537 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction13537 : Bundle := named_bundle% "RealMapCertificates/relations/basis13537.json"
theorem reductionProof13537 : EqualModuloRelations reduction13537.relations reduction13537.input reduction13537.output := by lin_cert using reduction13537.terms
theorem substitutionProof13537 : IsMapEvaluation generatorImages reduction13537.relations [0,1560] reduction13537.output := by lin_cert using reduction13537.terms
def image13538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13538 : InImage map_19_221 image13538 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction13538 : Bundle := named_bundle% "RealMapCertificates/relations/basis13538.json"
theorem reductionProof13538 : EqualModuloRelations reduction13538.relations reduction13538.input reduction13538.output := by lin_cert using reduction13538.terms
theorem substitutionProof13538 : IsMapEvaluation generatorImages reduction13538.relations [0,0,0,1523] reduction13538.output := by lin_cert using reduction13538.terms
end RealMapCertificates
