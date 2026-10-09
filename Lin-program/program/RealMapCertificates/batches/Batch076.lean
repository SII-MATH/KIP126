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
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 25 => []
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 166 => [[6,9,12]]
  | 167 => [[7,9,12]]
  | 169 => []
  | 172 => []
  | 187 => []
  | 188 => []
  | 190 => []
  | 193 => [[5,5,7,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 324 => []
  | 331 => []
  | 373 => []
  | 376 => []
  | 415 => []
  | 450 => []
  | 673 => []
  | 674 => []
  | 719 => []
  | 732 => []
  | 769 => []
  | 841 => []
  | 988 => []
  | 1020 => []
  | 1267 => []
  | 1548 => []
  | 1562 => []
  | 1600 => []
  | 1613 => []
  | 1614 => []
  | 1615 => []
  | 1617 => []
  | 1627 => []
  | 1628 => []
  | 1643 => []
  | 1644 => []
  | 1645 => []
  | 1646 => []
  | 1647 => []
  | 1648 => []
  | 1668 => []
  | 1669 => []
  | 1670 => []
  | 1672 => []
  | 1673 => []
  | 1697 => []
  | 1698 => []
  | 1699 => []
  | 1700 => []
  | 1701 => []
  | 1703 => []
  | 1726 => []
  | 1727 => []
  | 1743 => []
  | 1744 => []
  | 1767 => []
  | 1768 => []
  | 1789 => []
  | 1790 => []
  | 1791 => []
  | 1820 => []
  | 1871 => []
  | 1872 => []
  | 1873 => []
  | 1876 => []
  | 1895 => []
  | 1914 => []
  | 1915 => []
  | 1916 => []
  | 1917 => []
  | 1918 => []
  | 1947 => []
  | 1948 => []
  | 1949 => []
  | _ => []
def map_19_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13758 : InImage map_19_222 image13758 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13758 : Bundle := named_bundle% "RealMapCertificates/relations/basis13758.json"
theorem reductionProof13758 : EqualModuloRelations reduction13758.relations reduction13758.input reduction13758.output := by lin_cert using reduction13758.terms
theorem substitutionProof13758 : IsMapEvaluation generatorImages reduction13758.relations [1600] reduction13758.output := by lin_cert using reduction13758.terms
def image13759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13759 : InImage map_19_222 image13759 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13759 : Bundle := named_bundle% "RealMapCertificates/relations/basis13759.json"
theorem reductionProof13759 : EqualModuloRelations reduction13759.relations reduction13759.input reduction13759.output := by lin_cert using reduction13759.terms
theorem substitutionProof13759 : IsMapEvaluation generatorImages reduction13759.relations [0,17,64,324] reduction13759.output := by lin_cert using reduction13759.terms
def image13760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13760 : InImage map_19_222 image13760 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13760 : Bundle := named_bundle% "RealMapCertificates/relations/basis13760.json"
theorem reductionProof13760 : EqualModuloRelations reduction13760.relations reduction13760.input reduction13760.output := by lin_cert using reduction13760.terms
theorem substitutionProof13760 : IsMapEvaluation generatorImages reduction13760.relations [0,0,149,324] reduction13760.output := by lin_cert using reduction13760.terms
def image13761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13761 : InImage map_19_222 image13761 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13761 : Bundle := named_bundle% "RealMapCertificates/relations/basis13761.json"
theorem reductionProof13761 : EqualModuloRelations reduction13761.relations reduction13761.input reduction13761.output := by lin_cert using reduction13761.terms
theorem substitutionProof13761 : IsMapEvaluation generatorImages reduction13761.relations [0,0,7,1267] reduction13761.output := by lin_cert using reduction13761.terms
def map_19_223 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13906 : InImage map_19_223 image13906 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13906 : Bundle := named_bundle% "RealMapCertificates/relations/basis13906.json"
theorem reductionProof13906 : EqualModuloRelations reduction13906.relations reduction13906.input reduction13906.output := by lin_cert using reduction13906.terms
theorem substitutionProof13906 : IsMapEvaluation generatorImages reduction13906.relations [1614] reduction13906.output := by lin_cert using reduction13906.terms
def image13907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13907 : InImage map_19_223 image13907 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13907 : Bundle := named_bundle% "RealMapCertificates/relations/basis13907.json"
theorem reductionProof13907 : EqualModuloRelations reduction13907.relations reduction13907.input reduction13907.output := by lin_cert using reduction13907.terms
theorem substitutionProof13907 : IsMapEvaluation generatorImages reduction13907.relations [1613] reduction13907.output := by lin_cert using reduction13907.terms
def image13908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13908 : InImage map_19_223 image13908 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13908 : Bundle := named_bundle% "RealMapCertificates/relations/basis13908.json"
theorem reductionProof13908 : EqualModuloRelations reduction13908.relations reduction13908.input reduction13908.output := by lin_cert using reduction13908.terms
theorem substitutionProof13908 : IsMapEvaluation generatorImages reduction13908.relations [2,1548] reduction13908.output := by lin_cert using reduction13908.terms
def image13909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13909 : InImage map_19_223 image13909 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13909 : Bundle := named_bundle% "RealMapCertificates/relations/basis13909.json"
theorem reductionProof13909 : EqualModuloRelations reduction13909.relations reduction13909.input reduction13909.output := by lin_cert using reduction13909.terms
theorem substitutionProof13909 : IsMapEvaluation generatorImages reduction13909.relations [0,0,154,324] reduction13909.output := by lin_cert using reduction13909.terms
def image13910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13910 : InImage map_19_223 image13910 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13910 : Bundle := named_bundle% "RealMapCertificates/relations/basis13910.json"
theorem reductionProof13910 : EqualModuloRelations reduction13910.relations reduction13910.input reduction13910.output := by lin_cert using reduction13910.terms
theorem substitutionProof13910 : IsMapEvaluation generatorImages reduction13910.relations [0,0,0,1562] reduction13910.output := by lin_cert using reduction13910.terms
def map_19_224 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image14097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14097 : InImage map_19_224 image14097 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction14097 : Bundle := named_bundle% "RealMapCertificates/relations/basis14097.json"
theorem reductionProof14097 : EqualModuloRelations reduction14097.relations reduction14097.input reduction14097.output := by lin_cert using reduction14097.terms
theorem substitutionProof14097 : IsMapEvaluation generatorImages reduction14097.relations [1627] reduction14097.output := by lin_cert using reduction14097.terms
def image14098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14098 : InImage map_19_224 image14098 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction14098 : Bundle := named_bundle% "RealMapCertificates/relations/basis14098.json"
theorem reductionProof14098 : EqualModuloRelations reduction14098.relations reduction14098.input reduction14098.output := by lin_cert using reduction14098.terms
theorem substitutionProof14098 : IsMapEvaluation generatorImages reduction14098.relations [43,841] reduction14098.output := by lin_cert using reduction14098.terms
def image14099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14099 : InImage map_19_224 image14099 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction14099 : Bundle := named_bundle% "RealMapCertificates/relations/basis14099.json"
theorem reductionProof14099 : EqualModuloRelations reduction14099.relations reduction14099.input reduction14099.output := by lin_cert using reduction14099.terms
theorem substitutionProof14099 : IsMapEvaluation generatorImages reduction14099.relations [25,988] reduction14099.output := by lin_cert using reduction14099.terms
def image14100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14100 : InImage map_19_224 image14100 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction14100 : Bundle := named_bundle% "RealMapCertificates/relations/basis14100.json"
theorem reductionProof14100 : EqualModuloRelations reduction14100.relations reduction14100.input reduction14100.output := by lin_cert using reduction14100.terms
theorem substitutionProof14100 : IsMapEvaluation generatorImages reduction14100.relations [13,75,373] reduction14100.output := by lin_cert using reduction14100.terms
def image14101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14101 : InImage map_19_224 image14101 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction14101 : Bundle := named_bundle% "RealMapCertificates/relations/basis14101.json"
theorem reductionProof14101 : EqualModuloRelations reduction14101.relations reduction14101.input reduction14101.output := by lin_cert using reduction14101.terms
theorem substitutionProof14101 : IsMapEvaluation generatorImages reduction14101.relations [8,112,324] reduction14101.output := by lin_cert using reduction14101.terms
def image14102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14102 : InImage map_19_224 image14102 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction14102 : Bundle := named_bundle% "RealMapCertificates/relations/basis14102.json"
theorem reductionProof14102 : EqualModuloRelations reduction14102.relations reduction14102.input reduction14102.output := by lin_cert using reduction14102.terms
theorem substitutionProof14102 : IsMapEvaluation generatorImages reduction14102.relations [8,8,13,23,324] reduction14102.output := by lin_cert using reduction14102.terms
def image14103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14103 : InImage map_19_224 image14103 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction14103 : Bundle := named_bundle% "RealMapCertificates/relations/basis14103.json"
theorem reductionProof14103 : EqualModuloRelations reduction14103.relations reduction14103.input reduction14103.output := by lin_cert using reduction14103.terms
theorem substitutionProof14103 : IsMapEvaluation generatorImages reduction14103.relations [1,1,149,324] reduction14103.output := by lin_cert using reduction14103.terms
def image14104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14104 : InImage map_19_224 image14104 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction14104 : Bundle := named_bundle% "RealMapCertificates/relations/basis14104.json"
theorem reductionProof14104 : EqualModuloRelations reduction14104.relations reduction14104.input reduction14104.output := by lin_cert using reduction14104.terms
theorem substitutionProof14104 : IsMapEvaluation generatorImages reduction14104.relations [0,1615] reduction14104.output := by lin_cert using reduction14104.terms
def map_19_225 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14318 : InImage map_19_225 image14318 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14318 : Bundle := named_bundle% "RealMapCertificates/relations/basis14318.json"
theorem reductionProof14318 : EqualModuloRelations reduction14318.relations reduction14318.input reduction14318.output := by lin_cert using reduction14318.terms
theorem substitutionProof14318 : IsMapEvaluation generatorImages reduction14318.relations [1644] reduction14318.output := by lin_cert using reduction14318.terms
def image14319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14319 : InImage map_19_225 image14319 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14319 : Bundle := named_bundle% "RealMapCertificates/relations/basis14319.json"
theorem reductionProof14319 : EqualModuloRelations reduction14319.relations reduction14319.input reduction14319.output := by lin_cert using reduction14319.terms
theorem substitutionProof14319 : IsMapEvaluation generatorImages reduction14319.relations [1643] reduction14319.output := by lin_cert using reduction14319.terms
def image14320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14320 : InImage map_19_225 image14320 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14320 : Bundle := named_bundle% "RealMapCertificates/relations/basis14320.json"
theorem reductionProof14320 : EqualModuloRelations reduction14320.relations reduction14320.input reduction14320.output := by lin_cert using reduction14320.terms
theorem substitutionProof14320 : IsMapEvaluation generatorImages reduction14320.relations [0,1628] reduction14320.output := by lin_cert using reduction14320.terms
def image14321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14321 : InImage map_19_225 image14321 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14321 : Bundle := named_bundle% "RealMapCertificates/relations/basis14321.json"
theorem reductionProof14321 : EqualModuloRelations reduction14321.relations reduction14321.input reduction14321.output := by lin_cert using reduction14321.terms
theorem substitutionProof14321 : IsMapEvaluation generatorImages reduction14321.relations [0,8,113,324] reduction14321.output := by lin_cert using reduction14321.terms
def image14322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14322 : InImage map_19_225 image14322 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14322 : Bundle := named_bundle% "RealMapCertificates/relations/basis14322.json"
theorem reductionProof14322 : EqualModuloRelations reduction14322.relations reduction14322.input reduction14322.output := by lin_cert using reduction14322.terms
theorem substitutionProof14322 : IsMapEvaluation generatorImages reduction14322.relations [0,0,1617] reduction14322.output := by lin_cert using reduction14322.terms
def image14323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14323 : InImage map_19_225 image14323 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14323 : Bundle := named_bundle% "RealMapCertificates/relations/basis14323.json"
theorem reductionProof14323 : EqualModuloRelations reduction14323.relations reduction14323.input reduction14323.output := by lin_cert using reduction14323.terms
theorem substitutionProof14323 : IsMapEvaluation generatorImages reduction14323.relations [0,0,160,324] reduction14323.output := by lin_cert using reduction14323.terms
def map_19_226 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14456 : InImage map_19_226 image14456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14456 : Bundle := named_bundle% "RealMapCertificates/relations/basis14456.json"
theorem reductionProof14456 : EqualModuloRelations reduction14456.relations reduction14456.input reduction14456.output := by lin_cert using reduction14456.terms
theorem substitutionProof14456 : IsMapEvaluation generatorImages reduction14456.relations [1669] reduction14456.output := by lin_cert using reduction14456.terms
def image14457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14457 : InImage map_19_226 image14457 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14457 : Bundle := named_bundle% "RealMapCertificates/relations/basis14457.json"
theorem reductionProof14457 : EqualModuloRelations reduction14457.relations reduction14457.input reduction14457.output := by lin_cert using reduction14457.terms
theorem substitutionProof14457 : IsMapEvaluation generatorImages reduction14457.relations [1668] reduction14457.output := by lin_cert using reduction14457.terms
def image14458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14458 : InImage map_19_226 image14458 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14458 : Bundle := named_bundle% "RealMapCertificates/relations/basis14458.json"
theorem reductionProof14458 : EqualModuloRelations reduction14458.relations reduction14458.input reduction14458.output := by lin_cert using reduction14458.terms
theorem substitutionProof14458 : IsMapEvaluation generatorImages reduction14458.relations [67,673] reduction14458.output := by lin_cert using reduction14458.terms
def image14459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14459 : InImage map_19_226 image14459 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14459 : Bundle := named_bundle% "RealMapCertificates/relations/basis14459.json"
theorem reductionProof14459 : EqualModuloRelations reduction14459.relations reduction14459.input reduction14459.output := by lin_cert using reduction14459.terms
theorem substitutionProof14459 : IsMapEvaluation generatorImages reduction14459.relations [0,1646] reduction14459.output := by lin_cert using reduction14459.terms
def image14460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14460 : InImage map_19_226 image14460 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14460 : Bundle := named_bundle% "RealMapCertificates/relations/basis14460.json"
theorem reductionProof14460 : EqualModuloRelations reduction14460.relations reduction14460.input reduction14460.output := by lin_cert using reduction14460.terms
theorem substitutionProof14460 : IsMapEvaluation generatorImages reduction14460.relations [0,1645] reduction14460.output := by lin_cert using reduction14460.terms
def map_19_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14675 : InImage map_19_227 image14675 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14675 : Bundle := named_bundle% "RealMapCertificates/relations/basis14675.json"
theorem reductionProof14675 : EqualModuloRelations reduction14675.relations reduction14675.input reduction14675.output := by lin_cert using reduction14675.terms
theorem substitutionProof14675 : IsMapEvaluation generatorImages reduction14675.relations [8,8,64,324] reduction14675.output := by lin_cert using reduction14675.terms
def image14676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14676 : InImage map_19_227 image14676 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14676 : Bundle := named_bundle% "RealMapCertificates/relations/basis14676.json"
theorem reductionProof14676 : EqualModuloRelations reduction14676.relations reduction14676.input reduction14676.output := by lin_cert using reduction14676.terms
theorem substitutionProof14676 : IsMapEvaluation generatorImages reduction14676.relations [1,1646] reduction14676.output := by lin_cert using reduction14676.terms
def image14677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14677 : InImage map_19_227 image14677 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14677 : Bundle := named_bundle% "RealMapCertificates/relations/basis14677.json"
theorem reductionProof14677 : EqualModuloRelations reduction14677.relations reduction14677.input reduction14677.output := by lin_cert using reduction14677.terms
theorem substitutionProof14677 : IsMapEvaluation generatorImages reduction14677.relations [0,67,674] reduction14677.output := by lin_cert using reduction14677.terms
def image14678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14678 : InImage map_19_227 image14678 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14678 : Bundle := named_bundle% "RealMapCertificates/relations/basis14678.json"
theorem reductionProof14678 : EqualModuloRelations reduction14678.relations reduction14678.input reduction14678.output := by lin_cert using reduction14678.terms
theorem substitutionProof14678 : IsMapEvaluation generatorImages reduction14678.relations [0,0,1647] reduction14678.output := by lin_cert using reduction14678.terms
def map_19_228 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14889 : InImage map_19_228 image14889 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14889 : Bundle := named_bundle% "RealMapCertificates/relations/basis14889.json"
theorem reductionProof14889 : EqualModuloRelations reduction14889.relations reduction14889.input reduction14889.output := by lin_cert using reduction14889.terms
theorem substitutionProof14889 : IsMapEvaluation generatorImages reduction14889.relations [1698] reduction14889.output := by lin_cert using reduction14889.terms
def image14890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14890 : InImage map_19_228 image14890 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14890 : Bundle := named_bundle% "RealMapCertificates/relations/basis14890.json"
theorem reductionProof14890 : EqualModuloRelations reduction14890.relations reduction14890.input reduction14890.output := by lin_cert using reduction14890.terms
theorem substitutionProof14890 : IsMapEvaluation generatorImages reduction14890.relations [1697] reduction14890.output := by lin_cert using reduction14890.terms
def image14891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14891 : InImage map_19_228 image14891 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14891 : Bundle := named_bundle% "RealMapCertificates/relations/basis14891.json"
theorem reductionProof14891 : EqualModuloRelations reduction14891.relations reduction14891.input reduction14891.output := by lin_cert using reduction14891.terms
theorem substitutionProof14891 : IsMapEvaluation generatorImages reduction14891.relations [2,1628] reduction14891.output := by lin_cert using reduction14891.terms
def image14892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14892 : InImage map_19_228 image14892 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14892 : Bundle := named_bundle% "RealMapCertificates/relations/basis14892.json"
theorem reductionProof14892 : EqualModuloRelations reduction14892.relations reduction14892.input reduction14892.output := by lin_cert using reduction14892.terms
theorem substitutionProof14892 : IsMapEvaluation generatorImages reduction14892.relations [0,8,118,324] reduction14892.output := by lin_cert using reduction14892.terms
def image14893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14893 : InImage map_19_228 image14893 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14893 : Bundle := named_bundle% "RealMapCertificates/relations/basis14893.json"
theorem reductionProof14893 : EqualModuloRelations reduction14893.relations reduction14893.input reduction14893.output := by lin_cert using reduction14893.terms
theorem substitutionProof14893 : IsMapEvaluation generatorImages reduction14893.relations [0,0,1673] reduction14893.output := by lin_cert using reduction14893.terms
def image14894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14894 : InImage map_19_228 image14894 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14894 : Bundle := named_bundle% "RealMapCertificates/relations/basis14894.json"
theorem reductionProof14894 : EqualModuloRelations reduction14894.relations reduction14894.input reduction14894.output := by lin_cert using reduction14894.terms
theorem substitutionProof14894 : IsMapEvaluation generatorImages reduction14894.relations [0,0,166,324] reduction14894.output := by lin_cert using reduction14894.terms
def map_19_229 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15052 : InImage map_19_229 image15052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15052 : Bundle := named_bundle% "RealMapCertificates/relations/basis15052.json"
theorem reductionProof15052 : EqualModuloRelations reduction15052.relations reduction15052.input reduction15052.output := by lin_cert using reduction15052.terms
theorem substitutionProof15052 : IsMapEvaluation generatorImages reduction15052.relations [1727] reduction15052.output := by lin_cert using reduction15052.terms
def image15053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15053 : InImage map_19_229 image15053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15053 : Bundle := named_bundle% "RealMapCertificates/relations/basis15053.json"
theorem reductionProof15053 : EqualModuloRelations reduction15053.relations reduction15053.input reduction15053.output := by lin_cert using reduction15053.terms
theorem substitutionProof15053 : IsMapEvaluation generatorImages reduction15053.relations [1726] reduction15053.output := by lin_cert using reduction15053.terms
def image15054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15054 : InImage map_19_229 image15054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15054 : Bundle := named_bundle% "RealMapCertificates/relations/basis15054.json"
theorem reductionProof15054 : EqualModuloRelations reduction15054.relations reduction15054.input reduction15054.output := by lin_cert using reduction15054.terms
theorem substitutionProof15054 : IsMapEvaluation generatorImages reduction15054.relations [0,1701] reduction15054.output := by lin_cert using reduction15054.terms
def image15055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15055 : InImage map_19_229 image15055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15055 : Bundle := named_bundle% "RealMapCertificates/relations/basis15055.json"
theorem reductionProof15055 : EqualModuloRelations reduction15055.relations reduction15055.input reduction15055.output := by lin_cert using reduction15055.terms
theorem substitutionProof15055 : IsMapEvaluation generatorImages reduction15055.relations [0,1700] reduction15055.output := by lin_cert using reduction15055.terms
def image15056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15056 : InImage map_19_229 image15056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15056 : Bundle := named_bundle% "RealMapCertificates/relations/basis15056.json"
theorem reductionProof15056 : EqualModuloRelations reduction15056.relations reduction15056.input reduction15056.output := by lin_cert using reduction15056.terms
theorem substitutionProof15056 : IsMapEvaluation generatorImages reduction15056.relations [0,0,0,167,324] reduction15056.output := by lin_cert using reduction15056.terms
def map_19_230 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15273 : InImage map_19_230 image15273 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15273 : Bundle := named_bundle% "RealMapCertificates/relations/basis15273.json"
theorem reductionProof15273 : EqualModuloRelations reduction15273.relations reduction15273.input reduction15273.output := by lin_cert using reduction15273.terms
theorem substitutionProof15273 : IsMapEvaluation generatorImages reduction15273.relations [13,76,450] reduction15273.output := by lin_cert using reduction15273.terms
def image15274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15274 : InImage map_19_230 image15274 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15274 : Bundle := named_bundle% "RealMapCertificates/relations/basis15274.json"
theorem reductionProof15274 : EqualModuloRelations reduction15274.relations reduction15274.input reduction15274.output := by lin_cert using reduction15274.terms
theorem substitutionProof15274 : IsMapEvaluation generatorImages reduction15274.relations [8,8,72,324] reduction15274.output := by lin_cert using reduction15274.terms
def image15275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15275 : InImage map_19_230 image15275 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15275 : Bundle := named_bundle% "RealMapCertificates/relations/basis15275.json"
theorem reductionProof15275 : EqualModuloRelations reduction15275.relations reduction15275.input reduction15275.output := by lin_cert using reduction15275.terms
theorem substitutionProof15275 : IsMapEvaluation generatorImages reduction15275.relations [2,1670] reduction15275.output := by lin_cert using reduction15275.terms
def image15276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15276 : InImage map_19_230 image15276 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15276 : Bundle := named_bundle% "RealMapCertificates/relations/basis15276.json"
theorem reductionProof15276 : EqualModuloRelations reduction15276.relations reduction15276.input reduction15276.output := by lin_cert using reduction15276.terms
theorem substitutionProof15276 : IsMapEvaluation generatorImages reduction15276.relations [1,1700] reduction15276.output := by lin_cert using reduction15276.terms
def image15277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15277 : InImage map_19_230 image15277 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15277 : Bundle := named_bundle% "RealMapCertificates/relations/basis15277.json"
theorem reductionProof15277 : EqualModuloRelations reduction15277.relations reduction15277.input reduction15277.output := by lin_cert using reduction15277.terms
theorem substitutionProof15277 : IsMapEvaluation generatorImages reduction15277.relations [1,1699] reduction15277.output := by lin_cert using reduction15277.terms
def image15278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15278 : InImage map_19_230 image15278 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15278 : Bundle := named_bundle% "RealMapCertificates/relations/basis15278.json"
theorem reductionProof15278 : EqualModuloRelations reduction15278.relations reduction15278.input reduction15278.output := by lin_cert using reduction15278.terms
theorem substitutionProof15278 : IsMapEvaluation generatorImages reduction15278.relations [1,1,1672] reduction15278.output := by lin_cert using reduction15278.terms
def image15279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15279 : InImage map_19_230 image15279 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15279 : Bundle := named_bundle% "RealMapCertificates/relations/basis15279.json"
theorem reductionProof15279 : EqualModuloRelations reduction15279.relations reduction15279.input reduction15279.output := by lin_cert using reduction15279.terms
theorem substitutionProof15279 : IsMapEvaluation generatorImages reduction15279.relations [0,0,1703] reduction15279.output := by lin_cert using reduction15279.terms
def image15280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15280 : InImage map_19_230 image15280 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15280 : Bundle := named_bundle% "RealMapCertificates/relations/basis15280.json"
theorem reductionProof15280 : EqualModuloRelations reduction15280.relations reduction15280.input reduction15280.output := by lin_cert using reduction15280.terms
theorem substitutionProof15280 : IsMapEvaluation generatorImages reduction15280.relations [0,0,0,172,324] reduction15280.output := by lin_cert using reduction15280.terms
def map_19_231 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15524 : InImage map_19_231 image15524 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15524 : Bundle := named_bundle% "RealMapCertificates/relations/basis15524.json"
theorem reductionProof15524 : EqualModuloRelations reduction15524.relations reduction15524.input reduction15524.output := by lin_cert using reduction15524.terms
theorem substitutionProof15524 : IsMapEvaluation generatorImages reduction15524.relations [1768] reduction15524.output := by lin_cert using reduction15524.terms
def image15525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15525 : InImage map_19_231 image15525 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15525 : Bundle := named_bundle% "RealMapCertificates/relations/basis15525.json"
theorem reductionProof15525 : EqualModuloRelations reduction15525.relations reduction15525.input reduction15525.output := by lin_cert using reduction15525.terms
theorem substitutionProof15525 : IsMapEvaluation generatorImages reduction15525.relations [1767] reduction15525.output := by lin_cert using reduction15525.terms
def image15526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15526 : InImage map_19_231 image15526 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15526 : Bundle := named_bundle% "RealMapCertificates/relations/basis15526.json"
theorem reductionProof15526 : EqualModuloRelations reduction15526.relations reduction15526.input reduction15526.output := by lin_cert using reduction15526.terms
theorem substitutionProof15526 : IsMapEvaluation generatorImages reduction15526.relations [190,331] reduction15526.output := by lin_cert using reduction15526.terms
def image15527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15527 : InImage map_19_231 image15527 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15527 : Bundle := named_bundle% "RealMapCertificates/relations/basis15527.json"
theorem reductionProof15527 : EqualModuloRelations reduction15527.relations reduction15527.input reduction15527.output := by lin_cert using reduction15527.terms
theorem substitutionProof15527 : IsMapEvaluation generatorImages reduction15527.relations [67,732] reduction15527.output := by lin_cert using reduction15527.terms
def image15528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15528 : InImage map_19_231 image15528 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15528 : Bundle := named_bundle% "RealMapCertificates/relations/basis15528.json"
theorem reductionProof15528 : EqualModuloRelations reduction15528.relations reduction15528.input reduction15528.output := by lin_cert using reduction15528.terms
theorem substitutionProof15528 : IsMapEvaluation generatorImages reduction15528.relations [0,1743] reduction15528.output := by lin_cert using reduction15528.terms
def image15529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15529 : InImage map_19_231 image15529 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15529 : Bundle := named_bundle% "RealMapCertificates/relations/basis15529.json"
theorem reductionProof15529 : EqualModuloRelations reduction15529.relations reduction15529.input reduction15529.output := by lin_cert using reduction15529.terms
theorem substitutionProof15529 : IsMapEvaluation generatorImages reduction15529.relations [0,67,719] reduction15529.output := by lin_cert using reduction15529.terms
def image15530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15530 : InImage map_19_231 image15530 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15530 : Bundle := named_bundle% "RealMapCertificates/relations/basis15530.json"
theorem reductionProof15530 : EqualModuloRelations reduction15530.relations reduction15530.input reduction15530.output := by lin_cert using reduction15530.terms
theorem substitutionProof15530 : IsMapEvaluation generatorImages reduction15530.relations [0,8,127,324] reduction15530.output := by lin_cert using reduction15530.terms
def image15531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15531 : InImage map_19_231 image15531 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15531 : Bundle := named_bundle% "RealMapCertificates/relations/basis15531.json"
theorem reductionProof15531 : EqualModuloRelations reduction15531.relations reduction15531.input reduction15531.output := by lin_cert using reduction15531.terms
theorem substitutionProof15531 : IsMapEvaluation generatorImages reduction15531.relations [0,0,0,0,0,169,324] reduction15531.output := by lin_cert using reduction15531.terms
def map_19_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15698 : InImage map_19_232 image15698 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15698 : Bundle := named_bundle% "RealMapCertificates/relations/basis15698.json"
theorem reductionProof15698 : EqualModuloRelations reduction15698.relations reduction15698.input reduction15698.output := by lin_cert using reduction15698.terms
theorem substitutionProof15698 : IsMapEvaluation generatorImages reduction15698.relations [1790] reduction15698.output := by lin_cert using reduction15698.terms
def image15699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15699 : InImage map_19_232 image15699 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15699 : Bundle := named_bundle% "RealMapCertificates/relations/basis15699.json"
theorem reductionProof15699 : EqualModuloRelations reduction15699.relations reduction15699.input reduction15699.output := by lin_cert using reduction15699.terms
theorem substitutionProof15699 : IsMapEvaluation generatorImages reduction15699.relations [1789] reduction15699.output := by lin_cert using reduction15699.terms
def image15700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15700 : InImage map_19_232 image15700 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15700 : Bundle := named_bundle% "RealMapCertificates/relations/basis15700.json"
theorem reductionProof15700 : EqualModuloRelations reduction15700.relations reduction15700.input reduction15700.output := by lin_cert using reduction15700.terms
theorem substitutionProof15700 : IsMapEvaluation generatorImages reduction15700.relations [0,0,1744] reduction15700.output := by lin_cert using reduction15700.terms
def image15701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15701 : InImage map_19_232 image15701 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15701 : Bundle := named_bundle% "RealMapCertificates/relations/basis15701.json"
theorem reductionProof15701 : EqualModuloRelations reduction15701.relations reduction15701.input reduction15701.output := by lin_cert using reduction15701.terms
theorem substitutionProof15701 : IsMapEvaluation generatorImages reduction15701.relations [0,0,68,719] reduction15701.output := by lin_cert using reduction15701.terms
def map_19_233 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15927 : InImage map_19_233 image15927 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15927 : Bundle := named_bundle% "RealMapCertificates/relations/basis15927.json"
theorem reductionProof15927 : EqualModuloRelations reduction15927.relations reduction15927.input reduction15927.output := by lin_cert using reduction15927.terms
theorem substitutionProof15927 : IsMapEvaluation generatorImages reduction15927.relations [1820] reduction15927.output := by lin_cert using reduction15927.terms
def image15928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15928 : InImage map_19_233 image15928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15928 : Bundle := named_bundle% "RealMapCertificates/relations/basis15928.json"
theorem reductionProof15928 : EqualModuloRelations reduction15928.relations reduction15928.input reduction15928.output := by lin_cert using reduction15928.terms
theorem substitutionProof15928 : IsMapEvaluation generatorImages reduction15928.relations [8,8,79,324] reduction15928.output := by lin_cert using reduction15928.terms
def image15929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15929 : InImage map_19_233 image15929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15929 : Bundle := named_bundle% "RealMapCertificates/relations/basis15929.json"
theorem reductionProof15929 : EqualModuloRelations reduction15929.relations reduction15929.input reduction15929.output := by lin_cert using reduction15929.terms
theorem substitutionProof15929 : IsMapEvaluation generatorImages reduction15929.relations [3,1646] reduction15929.output := by lin_cert using reduction15929.terms
def image15930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15930 : InImage map_19_233 image15930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15930 : Bundle := named_bundle% "RealMapCertificates/relations/basis15930.json"
theorem reductionProof15930 : EqualModuloRelations reduction15930.relations reduction15930.input reduction15930.output := by lin_cert using reduction15930.terms
theorem substitutionProof15930 : IsMapEvaluation generatorImages reduction15930.relations [3,1645] reduction15930.output := by lin_cert using reduction15930.terms
def map_19_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16174 : InImage map_19_234 image16174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16174 : Bundle := named_bundle% "RealMapCertificates/relations/basis16174.json"
theorem reductionProof16174 : EqualModuloRelations reduction16174.relations reduction16174.input reduction16174.output := by lin_cert using reduction16174.terms
theorem substitutionProof16174 : IsMapEvaluation generatorImages reduction16174.relations [67,769] reduction16174.output := by lin_cert using reduction16174.terms
def image16175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16175 : InImage map_19_234 image16175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16175 : Bundle := named_bundle% "RealMapCertificates/relations/basis16175.json"
theorem reductionProof16175 : EqualModuloRelations reduction16175.relations reduction16175.input reduction16175.output := by lin_cert using reduction16175.terms
theorem substitutionProof16175 : IsMapEvaluation generatorImages reduction16175.relations [1,1791] reduction16175.output := by lin_cert using reduction16175.terms
def image16176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16176 : InImage map_19_234 image16176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16176 : Bundle := named_bundle% "RealMapCertificates/relations/basis16176.json"
theorem reductionProof16176 : EqualModuloRelations reduction16176.relations reduction16176.input reduction16176.output := by lin_cert using reduction16176.terms
theorem substitutionProof16176 : IsMapEvaluation generatorImages reduction16176.relations [1,193,324] reduction16176.output := by lin_cert using reduction16176.terms
def image16177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16177 : InImage map_19_234 image16177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16177 : Bundle := named_bundle% "RealMapCertificates/relations/basis16177.json"
theorem reductionProof16177 : EqualModuloRelations reduction16177.relations reduction16177.input reduction16177.output := by lin_cert using reduction16177.terms
theorem substitutionProof16177 : IsMapEvaluation generatorImages reduction16177.relations [0,8,8,80,324] reduction16177.output := by lin_cert using reduction16177.terms
def image16178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16178 : InImage map_19_234 image16178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16178 : Bundle := named_bundle% "RealMapCertificates/relations/basis16178.json"
theorem reductionProof16178 : EqualModuloRelations reduction16178.relations reduction16178.input reduction16178.output := by lin_cert using reduction16178.terms
theorem substitutionProof16178 : IsMapEvaluation generatorImages reduction16178.relations [0,3,1648] reduction16178.output := by lin_cert using reduction16178.terms
def map_19_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16363 : InImage map_19_235 image16363 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16363 : Bundle := named_bundle% "RealMapCertificates/relations/basis16363.json"
theorem reductionProof16363 : EqualModuloRelations reduction16363.relations reduction16363.input reduction16363.output := by lin_cert using reduction16363.terms
theorem substitutionProof16363 : IsMapEvaluation generatorImages reduction16363.relations [1871] reduction16363.output := by lin_cert using reduction16363.terms
def image16364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16364 : InImage map_19_235 image16364 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16364 : Bundle := named_bundle% "RealMapCertificates/relations/basis16364.json"
theorem reductionProof16364 : EqualModuloRelations reduction16364.relations reduction16364.input reduction16364.output := by lin_cert using reduction16364.terms
theorem substitutionProof16364 : IsMapEvaluation generatorImages reduction16364.relations [207,324] reduction16364.output := by lin_cert using reduction16364.terms
def image16365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16365 : InImage map_19_235 image16365 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16365 : Bundle := named_bundle% "RealMapCertificates/relations/basis16365.json"
theorem reductionProof16365 : EqualModuloRelations reduction16365.relations reduction16365.input reduction16365.output := by lin_cert using reduction16365.terms
theorem substitutionProof16365 : IsMapEvaluation generatorImages reduction16365.relations [188,376] reduction16365.output := by lin_cert using reduction16365.terms
def image16366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16366 : InImage map_19_235 image16366 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16366 : Bundle := named_bundle% "RealMapCertificates/relations/basis16366.json"
theorem reductionProof16366 : EqualModuloRelations reduction16366.relations reduction16366.input reduction16366.output := by lin_cert using reduction16366.terms
theorem substitutionProof16366 : IsMapEvaluation generatorImages reduction16366.relations [7,1548] reduction16366.output := by lin_cert using reduction16366.terms
def map_19_236 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16596 : InImage map_19_236 image16596 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16596 : Bundle := named_bundle% "RealMapCertificates/relations/basis16596.json"
theorem reductionProof16596 : EqualModuloRelations reduction16596.relations reduction16596.input reduction16596.output := by lin_cert using reduction16596.terms
theorem substitutionProof16596 : IsMapEvaluation generatorImages reduction16596.relations [8,8,89,324] reduction16596.output := by lin_cert using reduction16596.terms
def image16597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16597 : InImage map_19_236 image16597 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16597 : Bundle := named_bundle% "RealMapCertificates/relations/basis16597.json"
theorem reductionProof16597 : EqualModuloRelations reduction16597.relations reduction16597.input reduction16597.output := by lin_cert using reduction16597.terms
theorem substitutionProof16597 : IsMapEvaluation generatorImages reduction16597.relations [3,1701] reduction16597.output := by lin_cert using reduction16597.terms
def image16598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16598 : InImage map_19_236 image16598 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16598 : Bundle := named_bundle% "RealMapCertificates/relations/basis16598.json"
theorem reductionProof16598 : EqualModuloRelations reduction16598.relations reduction16598.input reduction16598.output := by lin_cert using reduction16598.terms
theorem substitutionProof16598 : IsMapEvaluation generatorImages reduction16598.relations [3,1700] reduction16598.output := by lin_cert using reduction16598.terms
def image16599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16599 : InImage map_19_236 image16599 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16599 : Bundle := named_bundle% "RealMapCertificates/relations/basis16599.json"
theorem reductionProof16599 : EqualModuloRelations reduction16599.relations reduction16599.input reduction16599.output := by lin_cert using reduction16599.terms
theorem substitutionProof16599 : IsMapEvaluation generatorImages reduction16599.relations [3,1699] reduction16599.output := by lin_cert using reduction16599.terms
def image16600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16600 : InImage map_19_236 image16600 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16600 : Bundle := named_bundle% "RealMapCertificates/relations/basis16600.json"
theorem reductionProof16600 : EqualModuloRelations reduction16600.relations reduction16600.input reduction16600.output := by lin_cert using reduction16600.terms
theorem substitutionProof16600 : IsMapEvaluation generatorImages reduction16600.relations [0,1873] reduction16600.output := by lin_cert using reduction16600.terms
def image16601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16601 : InImage map_19_236 image16601 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16601 : Bundle := named_bundle% "RealMapCertificates/relations/basis16601.json"
theorem reductionProof16601 : EqualModuloRelations reduction16601.relations reduction16601.input reduction16601.output := by lin_cert using reduction16601.terms
theorem substitutionProof16601 : IsMapEvaluation generatorImages reduction16601.relations [0,1872] reduction16601.output := by lin_cert using reduction16601.terms
def image16602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16602 : InImage map_19_236 image16602 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16602 : Bundle := named_bundle% "RealMapCertificates/relations/basis16602.json"
theorem reductionProof16602 : EqualModuloRelations reduction16602.relations reduction16602.input reduction16602.output := by lin_cert using reduction16602.terms
theorem substitutionProof16602 : IsMapEvaluation generatorImages reduction16602.relations [0,0,0,0,0,0,187,324] reduction16602.output := by lin_cert using reduction16602.terms
def map_19_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16848 : InImage map_19_237 image16848 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16848 : Bundle := named_bundle% "RealMapCertificates/relations/basis16848.json"
theorem reductionProof16848 : EqualModuloRelations reduction16848.relations reduction16848.input reduction16848.output := by lin_cert using reduction16848.terms
theorem substitutionProof16848 : IsMapEvaluation generatorImages reduction16848.relations [1914] reduction16848.output := by lin_cert using reduction16848.terms
def image16849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16849 : InImage map_19_237 image16849 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16849 : Bundle := named_bundle% "RealMapCertificates/relations/basis16849.json"
theorem reductionProof16849 : EqualModuloRelations reduction16849.relations reduction16849.input reduction16849.output := by lin_cert using reduction16849.terms
theorem substitutionProof16849 : IsMapEvaluation generatorImages reduction16849.relations [188,415] reduction16849.output := by lin_cert using reduction16849.terms
def image16850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16850 : InImage map_19_237 image16850 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16850 : Bundle := named_bundle% "RealMapCertificates/relations/basis16850.json"
theorem reductionProof16850 : EqualModuloRelations reduction16850.relations reduction16850.input reduction16850.output := by lin_cert using reduction16850.terms
theorem substitutionProof16850 : IsMapEvaluation generatorImages reduction16850.relations [0,0,1876] reduction16850.output := by lin_cert using reduction16850.terms
def image16851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16851 : InImage map_19_237 image16851 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16851 : Bundle := named_bundle% "RealMapCertificates/relations/basis16851.json"
theorem reductionProof16851 : EqualModuloRelations reduction16851.relations reduction16851.input reduction16851.output := by lin_cert using reduction16851.terms
theorem substitutionProof16851 : IsMapEvaluation generatorImages reduction16851.relations [0,0,0,0,0,0,0,188,324] reduction16851.output := by lin_cert using reduction16851.terms
def map_19_238 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17030 : InImage map_19_238 image17030 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17030 : Bundle := named_bundle% "RealMapCertificates/relations/basis17030.json"
theorem reductionProof17030 : EqualModuloRelations reduction17030.relations reduction17030.input reduction17030.output := by lin_cert using reduction17030.terms
theorem substitutionProof17030 : IsMapEvaluation generatorImages reduction17030.relations [1947] reduction17030.output := by lin_cert using reduction17030.terms
def image17031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17031 : InImage map_19_238 image17031 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17031 : Bundle := named_bundle% "RealMapCertificates/relations/basis17031.json"
theorem reductionProof17031 : EqualModuloRelations reduction17031.relations reduction17031.input reduction17031.output := by lin_cert using reduction17031.terms
theorem substitutionProof17031 : IsMapEvaluation generatorImages reduction17031.relations [218,324] reduction17031.output := by lin_cert using reduction17031.terms
def image17032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17032 : InImage map_19_238 image17032 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17032 : Bundle := named_bundle% "RealMapCertificates/relations/basis17032.json"
theorem reductionProof17032 : EqualModuloRelations reduction17032.relations reduction17032.input reduction17032.output := by lin_cert using reduction17032.terms
theorem substitutionProof17032 : IsMapEvaluation generatorImages reduction17032.relations [43,1020] reduction17032.output := by lin_cert using reduction17032.terms
def image17033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17033 : InImage map_19_238 image17033 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17033 : Bundle := named_bundle% "RealMapCertificates/relations/basis17033.json"
theorem reductionProof17033 : EqualModuloRelations reduction17033.relations reduction17033.input reduction17033.output := by lin_cert using reduction17033.terms
theorem substitutionProof17033 : IsMapEvaluation generatorImages reduction17033.relations [3,1743] reduction17033.output := by lin_cert using reduction17033.terms
def image17034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17034 : InImage map_19_238 image17034 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17034 : Bundle := named_bundle% "RealMapCertificates/relations/basis17034.json"
theorem reductionProof17034 : EqualModuloRelations reduction17034.relations reduction17034.input reduction17034.output := by lin_cert using reduction17034.terms
theorem substitutionProof17034 : IsMapEvaluation generatorImages reduction17034.relations [3,67,719] reduction17034.output := by lin_cert using reduction17034.terms
def image17035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17035 : InImage map_19_238 image17035 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17035 : Bundle := named_bundle% "RealMapCertificates/relations/basis17035.json"
theorem reductionProof17035 : EqualModuloRelations reduction17035.relations reduction17035.input reduction17035.output := by lin_cert using reduction17035.terms
theorem substitutionProof17035 : IsMapEvaluation generatorImages reduction17035.relations [1,1895] reduction17035.output := by lin_cert using reduction17035.terms
def image17036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17036 : InImage map_19_238 image17036 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17036 : Bundle := named_bundle% "RealMapCertificates/relations/basis17036.json"
theorem reductionProof17036 : EqualModuloRelations reduction17036.relations reduction17036.input reduction17036.output := by lin_cert using reduction17036.terms
theorem substitutionProof17036 : IsMapEvaluation generatorImages reduction17036.relations [0,1916] reduction17036.output := by lin_cert using reduction17036.terms
def image17037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17037 : InImage map_19_238 image17037 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17037 : Bundle := named_bundle% "RealMapCertificates/relations/basis17037.json"
theorem reductionProof17037 : EqualModuloRelations reduction17037.relations reduction17037.input reduction17037.output := by lin_cert using reduction17037.terms
theorem substitutionProof17037 : IsMapEvaluation generatorImages reduction17037.relations [0,1915] reduction17037.output := by lin_cert using reduction17037.terms
def map_19_239 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17293 : InImage map_19_239 image17293 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17293 : Bundle := named_bundle% "RealMapCertificates/relations/basis17293.json"
theorem reductionProof17293 : EqualModuloRelations reduction17293.relations reduction17293.input reduction17293.output := by lin_cert using reduction17293.terms
theorem substitutionProof17293 : IsMapEvaluation generatorImages reduction17293.relations [8,8,101,324] reduction17293.output := by lin_cert using reduction17293.terms
def image17294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17294 : InImage map_19_239 image17294 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17294 : Bundle := named_bundle% "RealMapCertificates/relations/basis17294.json"
theorem reductionProof17294 : EqualModuloRelations reduction17294.relations reduction17294.input reduction17294.output := by lin_cert using reduction17294.terms
theorem substitutionProof17294 : IsMapEvaluation generatorImages reduction17294.relations [0,1949] reduction17294.output := by lin_cert using reduction17294.terms
def image17295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17295 : InImage map_19_239 image17295 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17295 : Bundle := named_bundle% "RealMapCertificates/relations/basis17295.json"
theorem reductionProof17295 : EqualModuloRelations reduction17295.relations reduction17295.input reduction17295.output := by lin_cert using reduction17295.terms
theorem substitutionProof17295 : IsMapEvaluation generatorImages reduction17295.relations [0,1948] reduction17295.output := by lin_cert using reduction17295.terms
def image17296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17296 : InImage map_19_239 image17296 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17296 : Bundle := named_bundle% "RealMapCertificates/relations/basis17296.json"
theorem reductionProof17296 : EqualModuloRelations reduction17296.relations reduction17296.input reduction17296.output := by lin_cert using reduction17296.terms
theorem substitutionProof17296 : IsMapEvaluation generatorImages reduction17296.relations [0,3,1744] reduction17296.output := by lin_cert using reduction17296.terms
def image17297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17297 : InImage map_19_239 image17297 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17297 : Bundle := named_bundle% "RealMapCertificates/relations/basis17297.json"
theorem reductionProof17297 : EqualModuloRelations reduction17297.relations reduction17297.input reduction17297.output := by lin_cert using reduction17297.terms
theorem substitutionProof17297 : IsMapEvaluation generatorImages reduction17297.relations [0,0,1918] reduction17297.output := by lin_cert using reduction17297.terms
def image17298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17298 : InImage map_19_239 image17298 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17298 : Bundle := named_bundle% "RealMapCertificates/relations/basis17298.json"
theorem reductionProof17298 : EqualModuloRelations reduction17298.relations reduction17298.input reduction17298.output := by lin_cert using reduction17298.terms
theorem substitutionProof17298 : IsMapEvaluation generatorImages reduction17298.relations [0,0,1917] reduction17298.output := by lin_cert using reduction17298.terms
end RealMapCertificates
