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
  | 18 => []
  | 43 => []
  | 68 => []
  | 101 => []
  | 188 => []
  | 190 => []
  | 213 => []
  | 260 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 316 => []
  | 324 => []
  | 445 => []
  | 450 => []
  | 485 => []
  | 544 => []
  | 1055 => []
  | 1056 => []
  | 1057 => []
  | 1071 => []
  | 1091 => []
  | 1446 => []
  | 1744 => []
  | 1793 => []
  | 1795 => []
  | 1824 => []
  | 1872 => []
  | 1876 => []
  | 1878 => []
  | 1916 => []
  | 1918 => []
  | 1948 => []
  | 1974 => []
  | 1975 => []
  | 1976 => []
  | 2012 => []
  | 2013 => []
  | 2015 => []
  | 2016 => []
  | 2052 => []
  | 2054 => []
  | 2055 => []
  | 2070 => []
  | 2071 => []
  | 2072 => []
  | 2110 => []
  | 2111 => []
  | 2112 => []
  | 2113 => []
  | 2146 => []
  | 2182 => []
  | 2183 => []
  | 2225 => []
  | 2226 => []
  | 2227 => []
  | 2261 => []
  | 2262 => []
  | 2263 => []
  | 2265 => []
  | 2266 => []
  | 2268 => []
  | 2291 => []
  | 2292 => []
  | 2294 => []
  | 2326 => []
  | 2327 => []
  | 2328 => []
  | 2359 => []
  | 2361 => []
  | 2362 => []
  | 2364 => []
  | 2393 => []
  | 2394 => []
  | 2395 => []
  | 2428 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2466 => []
  | 2467 => []
  | 2468 => []
  | 2469 => []
  | 2470 => []
  | 2474 => []
  | 2475 => []
  | 2478 => []
  | 2516 => []
  | 2517 => []
  | 2518 => []
  | 2519 => []
  | 2520 => []
  | 2522 => []
  | 2563 => []
  | 2564 => []
  | 2565 => []
  | 2566 => []
  | 2608 => []
  | 2609 => []
  | 2610 => []
  | _ => []
def map_19_240 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17563 : InImage map_19_240 image17563 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17563 : Bundle := named_bundle% "RealMapCertificates/relations/basis17563.json"
theorem reductionProof17563 : EqualModuloRelations reduction17563.relations reduction17563.input reduction17563.output := by lin_cert using reduction17563.terms
theorem substitutionProof17563 : IsMapEvaluation generatorImages reduction17563.relations [188,445] reduction17563.output := by lin_cert using reduction17563.terms
def image17564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17564 : InImage map_19_240 image17564 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17564 : Bundle := named_bundle% "RealMapCertificates/relations/basis17564.json"
theorem reductionProof17564 : EqualModuloRelations reduction17564.relations reduction17564.input reduction17564.output := by lin_cert using reduction17564.terms
theorem substitutionProof17564 : IsMapEvaluation generatorImages reduction17564.relations [1,1948] reduction17564.output := by lin_cert using reduction17564.terms
def image17565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17565 : InImage map_19_240 image17565 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17565 : Bundle := named_bundle% "RealMapCertificates/relations/basis17565.json"
theorem reductionProof17565 : EqualModuloRelations reduction17565.relations reduction17565.input reduction17565.output := by lin_cert using reduction17565.terms
theorem substitutionProof17565 : IsMapEvaluation generatorImages reduction17565.relations [0,1975] reduction17565.output := by lin_cert using reduction17565.terms
def image17566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17566 : InImage map_19_240 image17566 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17566 : Bundle := named_bundle% "RealMapCertificates/relations/basis17566.json"
theorem reductionProof17566 : EqualModuloRelations reduction17566.relations reduction17566.input reduction17566.output := by lin_cert using reduction17566.terms
theorem substitutionProof17566 : IsMapEvaluation generatorImages reduction17566.relations [0,1974] reduction17566.output := by lin_cert using reduction17566.terms
def map_19_241 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17804 : InImage map_19_241 image17804 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17804 : Bundle := named_bundle% "RealMapCertificates/relations/basis17804.json"
theorem reductionProof17804 : EqualModuloRelations reduction17804.relations reduction17804.input reduction17804.output := by lin_cert using reduction17804.terms
theorem substitutionProof17804 : IsMapEvaluation generatorImages reduction17804.relations [2052] reduction17804.output := by lin_cert using reduction17804.terms
def image17805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17805 : InImage map_19_241 image17805 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17805 : Bundle := named_bundle% "RealMapCertificates/relations/basis17805.json"
theorem reductionProof17805 : EqualModuloRelations reduction17805.relations reduction17805.input reduction17805.output := by lin_cert using reduction17805.terms
theorem substitutionProof17805 : IsMapEvaluation generatorImages reduction17805.relations [43,1071] reduction17805.output := by lin_cert using reduction17805.terms
def image17806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17806 : InImage map_19_241 image17806 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17806 : Bundle := named_bundle% "RealMapCertificates/relations/basis17806.json"
theorem reductionProof17806 : EqualModuloRelations reduction17806.relations reduction17806.input reduction17806.output := by lin_cert using reduction17806.terms
theorem substitutionProof17806 : IsMapEvaluation generatorImages reduction17806.relations [2,1916] reduction17806.output := by lin_cert using reduction17806.terms
def image17807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17807 : InImage map_19_241 image17807 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17807 : Bundle := named_bundle% "RealMapCertificates/relations/basis17807.json"
theorem reductionProof17807 : EqualModuloRelations reduction17807.relations reduction17807.input reduction17807.output := by lin_cert using reduction17807.terms
theorem substitutionProof17807 : IsMapEvaluation generatorImages reduction17807.relations [0,2013] reduction17807.output := by lin_cert using reduction17807.terms
def image17808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17808 : InImage map_19_241 image17808 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17808 : Bundle := named_bundle% "RealMapCertificates/relations/basis17808.json"
theorem reductionProof17808 : EqualModuloRelations reduction17808.relations reduction17808.input reduction17808.output := by lin_cert using reduction17808.terms
theorem substitutionProof17808 : IsMapEvaluation generatorImages reduction17808.relations [0,43,1056] reduction17808.output := by lin_cert using reduction17808.terms
def image17809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17809 : InImage map_19_241 image17809 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17809 : Bundle := named_bundle% "RealMapCertificates/relations/basis17809.json"
theorem reductionProof17809 : EqualModuloRelations reduction17809.relations reduction17809.input reduction17809.output := by lin_cert using reduction17809.terms
theorem substitutionProof17809 : IsMapEvaluation generatorImages reduction17809.relations [0,43,1055] reduction17809.output := by lin_cert using reduction17809.terms
def image17810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17810 : InImage map_19_241 image17810 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17810 : Bundle := named_bundle% "RealMapCertificates/relations/basis17810.json"
theorem reductionProof17810 : EqualModuloRelations reduction17810.relations reduction17810.input reduction17810.output := by lin_cert using reduction17810.terms
theorem substitutionProof17810 : IsMapEvaluation generatorImages reduction17810.relations [0,3,1793] reduction17810.output := by lin_cert using reduction17810.terms
def image17811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17811 : InImage map_19_241 image17811 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17811 : Bundle := named_bundle% "RealMapCertificates/relations/basis17811.json"
theorem reductionProof17811 : EqualModuloRelations reduction17811.relations reduction17811.input reduction17811.output := by lin_cert using reduction17811.terms
theorem substitutionProof17811 : IsMapEvaluation generatorImages reduction17811.relations [0,0,1976] reduction17811.output := by lin_cert using reduction17811.terms
def map_19_242 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18070 : InImage map_19_242 image18070 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18070 : Bundle := named_bundle% "RealMapCertificates/relations/basis18070.json"
theorem reductionProof18070 : EqualModuloRelations reduction18070.relations reduction18070.input reduction18070.output := by lin_cert using reduction18070.terms
theorem substitutionProof18070 : IsMapEvaluation generatorImages reduction18070.relations [2071] reduction18070.output := by lin_cert using reduction18070.terms
def image18071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18071 : InImage map_19_242 image18071 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18071 : Bundle := named_bundle% "RealMapCertificates/relations/basis18071.json"
theorem reductionProof18071 : EqualModuloRelations reduction18071.relations reduction18071.input reduction18071.output := by lin_cert using reduction18071.terms
theorem substitutionProof18071 : IsMapEvaluation generatorImages reduction18071.relations [2070] reduction18071.output := by lin_cert using reduction18071.terms
def image18072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18072 : InImage map_19_242 image18072 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18072 : Bundle := named_bundle% "RealMapCertificates/relations/basis18072.json"
theorem reductionProof18072 : EqualModuloRelations reduction18072.relations reduction18072.input reduction18072.output := by lin_cert using reduction18072.terms
theorem substitutionProof18072 : IsMapEvaluation generatorImages reduction18072.relations [8,9,101,324] reduction18072.output := by lin_cert using reduction18072.terms
def image18073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18073 : InImage map_19_242 image18073 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18073 : Bundle := named_bundle% "RealMapCertificates/relations/basis18073.json"
theorem reductionProof18073 : EqualModuloRelations reduction18073.relations reduction18073.input reduction18073.output := by lin_cert using reduction18073.terms
theorem substitutionProof18073 : IsMapEvaluation generatorImages reduction18073.relations [2,1948] reduction18073.output := by lin_cert using reduction18073.terms
def image18074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18074 : InImage map_19_242 image18074 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18074 : Bundle := named_bundle% "RealMapCertificates/relations/basis18074.json"
theorem reductionProof18074 : EqualModuloRelations reduction18074.relations reduction18074.input reduction18074.output := by lin_cert using reduction18074.terms
theorem substitutionProof18074 : IsMapEvaluation generatorImages reduction18074.relations [1,2012] reduction18074.output := by lin_cert using reduction18074.terms
def image18075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18075 : InImage map_19_242 image18075 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18075 : Bundle := named_bundle% "RealMapCertificates/relations/basis18075.json"
theorem reductionProof18075 : EqualModuloRelations reduction18075.relations reduction18075.input reduction18075.output := by lin_cert using reduction18075.terms
theorem substitutionProof18075 : IsMapEvaluation generatorImages reduction18075.relations [0,0,2016] reduction18075.output := by lin_cert using reduction18075.terms
def image18076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18076 : InImage map_19_242 image18076 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18076 : Bundle := named_bundle% "RealMapCertificates/relations/basis18076.json"
theorem reductionProof18076 : EqualModuloRelations reduction18076.relations reduction18076.input reduction18076.output := by lin_cert using reduction18076.terms
theorem substitutionProof18076 : IsMapEvaluation generatorImages reduction18076.relations [0,0,2015] reduction18076.output := by lin_cert using reduction18076.terms
def map_19_243 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18344 : InImage map_19_243 image18344 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18344 : Bundle := named_bundle% "RealMapCertificates/relations/basis18344.json"
theorem reductionProof18344 : EqualModuloRelations reduction18344.relations reduction18344.input reduction18344.output := by lin_cert using reduction18344.terms
theorem substitutionProof18344 : IsMapEvaluation generatorImages reduction18344.relations [2112] reduction18344.output := by lin_cert using reduction18344.terms
def image18345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18345 : InImage map_19_243 image18345 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18345 : Bundle := named_bundle% "RealMapCertificates/relations/basis18345.json"
theorem reductionProof18345 : EqualModuloRelations reduction18345.relations reduction18345.input reduction18345.output := by lin_cert using reduction18345.terms
theorem substitutionProof18345 : IsMapEvaluation generatorImages reduction18345.relations [2111] reduction18345.output := by lin_cert using reduction18345.terms
def image18346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18346 : InImage map_19_243 image18346 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18346 : Bundle := named_bundle% "RealMapCertificates/relations/basis18346.json"
theorem reductionProof18346 : EqualModuloRelations reduction18346.relations reduction18346.input reduction18346.output := by lin_cert using reduction18346.terms
theorem substitutionProof18346 : IsMapEvaluation generatorImages reduction18346.relations [2110] reduction18346.output := by lin_cert using reduction18346.terms
def image18347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18347 : InImage map_19_243 image18347 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18347 : Bundle := named_bundle% "RealMapCertificates/relations/basis18347.json"
theorem reductionProof18347 : EqualModuloRelations reduction18347.relations reduction18347.input reduction18347.output := by lin_cert using reduction18347.terms
theorem substitutionProof18347 : IsMapEvaluation generatorImages reduction18347.relations [3,1872] reduction18347.output := by lin_cert using reduction18347.terms
def image18348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18348 : InImage map_19_243 image18348 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18348 : Bundle := named_bundle% "RealMapCertificates/relations/basis18348.json"
theorem reductionProof18348 : EqualModuloRelations reduction18348.relations reduction18348.input reduction18348.output := by lin_cert using reduction18348.terms
theorem substitutionProof18348 : IsMapEvaluation generatorImages reduction18348.relations [1,2054] reduction18348.output := by lin_cert using reduction18348.terms
def image18349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18349 : InImage map_19_243 image18349 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18349 : Bundle := named_bundle% "RealMapCertificates/relations/basis18349.json"
theorem reductionProof18349 : EqualModuloRelations reduction18349.relations reduction18349.input reduction18349.output := by lin_cert using reduction18349.terms
theorem substitutionProof18349 : IsMapEvaluation generatorImages reduction18349.relations [0,2072] reduction18349.output := by lin_cert using reduction18349.terms
def image18350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18350 : InImage map_19_243 image18350 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18350 : Bundle := named_bundle% "RealMapCertificates/relations/basis18350.json"
theorem reductionProof18350 : EqualModuloRelations reduction18350.relations reduction18350.input reduction18350.output := by lin_cert using reduction18350.terms
theorem substitutionProof18350 : IsMapEvaluation generatorImages reduction18350.relations [0,0,2055] reduction18350.output := by lin_cert using reduction18350.terms
def map_19_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18550 : InImage map_19_244 image18550 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18550 : Bundle := named_bundle% "RealMapCertificates/relations/basis18550.json"
theorem reductionProof18550 : EqualModuloRelations reduction18550.relations reduction18550.input reduction18550.output := by lin_cert using reduction18550.terms
theorem substitutionProof18550 : IsMapEvaluation generatorImages reduction18550.relations [190,485] reduction18550.output := by lin_cert using reduction18550.terms
def image18551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18551 : InImage map_19_244 image18551 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18551 : Bundle := named_bundle% "RealMapCertificates/relations/basis18551.json"
theorem reductionProof18551 : EqualModuloRelations reduction18551.relations reduction18551.input reduction18551.output := by lin_cert using reduction18551.terms
theorem substitutionProof18551 : IsMapEvaluation generatorImages reduction18551.relations [1,2072] reduction18551.output := by lin_cert using reduction18551.terms
def image18552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18552 : InImage map_19_244 image18552 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18552 : Bundle := named_bundle% "RealMapCertificates/relations/basis18552.json"
theorem reductionProof18552 : EqualModuloRelations reduction18552.relations reduction18552.input reduction18552.output := by lin_cert using reduction18552.terms
theorem substitutionProof18552 : IsMapEvaluation generatorImages reduction18552.relations [0,2113] reduction18552.output := by lin_cert using reduction18552.terms
def image18553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18553 : InImage map_19_244 image18553 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18553 : Bundle := named_bundle% "RealMapCertificates/relations/basis18553.json"
theorem reductionProof18553 : EqualModuloRelations reduction18553.relations reduction18553.input reduction18553.output := by lin_cert using reduction18553.terms
theorem substitutionProof18553 : IsMapEvaluation generatorImages reduction18553.relations [0,3,1876] reduction18553.output := by lin_cert using reduction18553.terms
def image18554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18554 : InImage map_19_244 image18554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18554 : Bundle := named_bundle% "RealMapCertificates/relations/basis18554.json"
theorem reductionProof18554 : EqualModuloRelations reduction18554.relations reduction18554.input reduction18554.output := by lin_cert using reduction18554.terms
theorem substitutionProof18554 : IsMapEvaluation generatorImages reduction18554.relations [0,0,43,1091] reduction18554.output := by lin_cert using reduction18554.terms
def map_19_245 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18819 : InImage map_19_245 image18819 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18819 : Bundle := named_bundle% "RealMapCertificates/relations/basis18819.json"
theorem reductionProof18819 : EqualModuloRelations reduction18819.relations reduction18819.input reduction18819.output := by lin_cert using reduction18819.terms
theorem substitutionProof18819 : IsMapEvaluation generatorImages reduction18819.relations [2183] reduction18819.output := by lin_cert using reduction18819.terms
def image18820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18820 : InImage map_19_245 image18820 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18820 : Bundle := named_bundle% "RealMapCertificates/relations/basis18820.json"
theorem reductionProof18820 : EqualModuloRelations reduction18820.relations reduction18820.input reduction18820.output := by lin_cert using reduction18820.terms
theorem substitutionProof18820 : IsMapEvaluation generatorImages reduction18820.relations [2182] reduction18820.output := by lin_cert using reduction18820.terms
def image18821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18821 : InImage map_19_245 image18821 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18821 : Bundle := named_bundle% "RealMapCertificates/relations/basis18821.json"
theorem reductionProof18821 : EqualModuloRelations reduction18821.relations reduction18821.input reduction18821.output := by lin_cert using reduction18821.terms
theorem substitutionProof18821 : IsMapEvaluation generatorImages reduction18821.relations [8,13,101,324] reduction18821.output := by lin_cert using reduction18821.terms
def image18822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18822 : InImage map_19_245 image18822 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18822 : Bundle := named_bundle% "RealMapCertificates/relations/basis18822.json"
theorem reductionProof18822 : EqualModuloRelations reduction18822.relations reduction18822.input reduction18822.output := by lin_cert using reduction18822.terms
theorem substitutionProof18822 : IsMapEvaluation generatorImages reduction18822.relations [0,0,3,1878] reduction18822.output := by lin_cert using reduction18822.terms
def map_19_246 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19122 : InImage map_19_246 image19122 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19122 : Bundle := named_bundle% "RealMapCertificates/relations/basis19122.json"
theorem reductionProof19122 : EqualModuloRelations reduction19122.relations reduction19122.input reduction19122.output := by lin_cert using reduction19122.terms
theorem substitutionProof19122 : IsMapEvaluation generatorImages reduction19122.relations [2226] reduction19122.output := by lin_cert using reduction19122.terms
def image19123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19123 : InImage map_19_246 image19123 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19123 : Bundle := named_bundle% "RealMapCertificates/relations/basis19123.json"
theorem reductionProof19123 : EqualModuloRelations reduction19123.relations reduction19123.input reduction19123.output := by lin_cert using reduction19123.terms
theorem substitutionProof19123 : IsMapEvaluation generatorImages reduction19123.relations [2225] reduction19123.output := by lin_cert using reduction19123.terms
def image19124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19124 : InImage map_19_246 image19124 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19124 : Bundle := named_bundle% "RealMapCertificates/relations/basis19124.json"
theorem reductionProof19124 : EqualModuloRelations reduction19124.relations reduction19124.input reduction19124.output := by lin_cert using reduction19124.terms
theorem substitutionProof19124 : IsMapEvaluation generatorImages reduction19124.relations [18,1446] reduction19124.output := by lin_cert using reduction19124.terms
def image19125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19125 : InImage map_19_246 image19125 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19125 : Bundle := named_bundle% "RealMapCertificates/relations/basis19125.json"
theorem reductionProof19125 : EqualModuloRelations reduction19125.relations reduction19125.input reduction19125.output := by lin_cert using reduction19125.terms
theorem substitutionProof19125 : IsMapEvaluation generatorImages reduction19125.relations [3,3,1744] reduction19125.output := by lin_cert using reduction19125.terms
def image19126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19126 : InImage map_19_246 image19126 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19126 : Bundle := named_bundle% "RealMapCertificates/relations/basis19126.json"
theorem reductionProof19126 : EqualModuloRelations reduction19126.relations reduction19126.input reduction19126.output := by lin_cert using reduction19126.terms
theorem substitutionProof19126 : IsMapEvaluation generatorImages reduction19126.relations [2,2072] reduction19126.output := by lin_cert using reduction19126.terms
def image19127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19127 : InImage map_19_246 image19127 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19127 : Bundle := named_bundle% "RealMapCertificates/relations/basis19127.json"
theorem reductionProof19127 : EqualModuloRelations reduction19127.relations reduction19127.input reduction19127.output := by lin_cert using reduction19127.terms
theorem substitutionProof19127 : IsMapEvaluation generatorImages reduction19127.relations [0,3,1918] reduction19127.output := by lin_cert using reduction19127.terms
def image19128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19128 : InImage map_19_246 image19128 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19128 : Bundle := named_bundle% "RealMapCertificates/relations/basis19128.json"
theorem reductionProof19128 : EqualModuloRelations reduction19128.relations reduction19128.input reduction19128.output := by lin_cert using reduction19128.terms
theorem substitutionProof19128 : IsMapEvaluation generatorImages reduction19128.relations [0,0,2146] reduction19128.output := by lin_cert using reduction19128.terms
def map_19_247 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19353 : InImage map_19_247 image19353 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19353 : Bundle := named_bundle% "RealMapCertificates/relations/basis19353.json"
theorem reductionProof19353 : EqualModuloRelations reduction19353.relations reduction19353.input reduction19353.output := by lin_cert using reduction19353.terms
theorem substitutionProof19353 : IsMapEvaluation generatorImages reduction19353.relations [2263] reduction19353.output := by lin_cert using reduction19353.terms
def image19354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19354 : InImage map_19_247 image19354 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19354 : Bundle := named_bundle% "RealMapCertificates/relations/basis19354.json"
theorem reductionProof19354 : EqualModuloRelations reduction19354.relations reduction19354.input reduction19354.output := by lin_cert using reduction19354.terms
theorem substitutionProof19354 : IsMapEvaluation generatorImages reduction19354.relations [2262] reduction19354.output := by lin_cert using reduction19354.terms
def image19355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19355 : InImage map_19_247 image19355 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19355 : Bundle := named_bundle% "RealMapCertificates/relations/basis19355.json"
theorem reductionProof19355 : EqualModuloRelations reduction19355.relations reduction19355.input reduction19355.output := by lin_cert using reduction19355.terms
theorem substitutionProof19355 : IsMapEvaluation generatorImages reduction19355.relations [2261] reduction19355.output := by lin_cert using reduction19355.terms
def image19356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19356 : InImage map_19_247 image19356 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19356 : Bundle := named_bundle% "RealMapCertificates/relations/basis19356.json"
theorem reductionProof19356 : EqualModuloRelations reduction19356.relations reduction19356.input reduction19356.output := by lin_cert using reduction19356.terms
theorem substitutionProof19356 : IsMapEvaluation generatorImages reduction19356.relations [260,324] reduction19356.output := by lin_cert using reduction19356.terms
def image19357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19357 : InImage map_19_247 image19357 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19357 : Bundle := named_bundle% "RealMapCertificates/relations/basis19357.json"
theorem reductionProof19357 : EqualModuloRelations reduction19357.relations reduction19357.input reduction19357.output := by lin_cert using reduction19357.terms
theorem substitutionProof19357 : IsMapEvaluation generatorImages reduction19357.relations [213,450] reduction19357.output := by lin_cert using reduction19357.terms
def image19358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19358 : InImage map_19_247 image19358 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19358 : Bundle := named_bundle% "RealMapCertificates/relations/basis19358.json"
theorem reductionProof19358 : EqualModuloRelations reduction19358.relations reduction19358.input reduction19358.output := by lin_cert using reduction19358.terms
theorem substitutionProof19358 : IsMapEvaluation generatorImages reduction19358.relations [2,2113] reduction19358.output := by lin_cert using reduction19358.terms
def map_19_248 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19625 : InImage map_19_248 image19625 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19625 : Bundle := named_bundle% "RealMapCertificates/relations/basis19625.json"
theorem reductionProof19625 : EqualModuloRelations reduction19625.relations reduction19625.input reduction19625.output := by lin_cert using reduction19625.terms
theorem substitutionProof19625 : IsMapEvaluation generatorImages reduction19625.relations [2291] reduction19625.output := by lin_cert using reduction19625.terms
def image19626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19626 : InImage map_19_248 image19626 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19626 : Bundle := named_bundle% "RealMapCertificates/relations/basis19626.json"
theorem reductionProof19626 : EqualModuloRelations reduction19626.relations reduction19626.input reduction19626.output := by lin_cert using reduction19626.terms
theorem substitutionProof19626 : IsMapEvaluation generatorImages reduction19626.relations [9,13,101,324] reduction19626.output := by lin_cert using reduction19626.terms
def image19627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19627 : InImage map_19_248 image19627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19627 : Bundle := named_bundle% "RealMapCertificates/relations/basis19627.json"
theorem reductionProof19627 : EqualModuloRelations reduction19627.relations reduction19627.input reduction19627.output := by lin_cert using reduction19627.terms
theorem substitutionProof19627 : IsMapEvaluation generatorImages reduction19627.relations [1,2227] reduction19627.output := by lin_cert using reduction19627.terms
def image19628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19628 : InImage map_19_248 image19628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19628 : Bundle := named_bundle% "RealMapCertificates/relations/basis19628.json"
theorem reductionProof19628 : EqualModuloRelations reduction19628.relations reduction19628.input reduction19628.output := by lin_cert using reduction19628.terms
theorem substitutionProof19628 : IsMapEvaluation generatorImages reduction19628.relations [0,2265] reduction19628.output := by lin_cert using reduction19628.terms
def map_19_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19931 : InImage map_19_249 image19931 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19931 : Bundle := named_bundle% "RealMapCertificates/relations/basis19931.json"
theorem reductionProof19931 : EqualModuloRelations reduction19931.relations reduction19931.input reduction19931.output := by lin_cert using reduction19931.terms
theorem substitutionProof19931 : IsMapEvaluation generatorImages reduction19931.relations [2327] reduction19931.output := by lin_cert using reduction19931.terms
def image19932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19932 : InImage map_19_249 image19932 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19932 : Bundle := named_bundle% "RealMapCertificates/relations/basis19932.json"
theorem reductionProof19932 : EqualModuloRelations reduction19932.relations reduction19932.input reduction19932.output := by lin_cert using reduction19932.terms
theorem substitutionProof19932 : IsMapEvaluation generatorImages reduction19932.relations [2326] reduction19932.output := by lin_cert using reduction19932.terms
def image19933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19933 : InImage map_19_249 image19933 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19933 : Bundle := named_bundle% "RealMapCertificates/relations/basis19933.json"
theorem reductionProof19933 : EqualModuloRelations reduction19933.relations reduction19933.input reduction19933.output := by lin_cert using reduction19933.terms
theorem substitutionProof19933 : IsMapEvaluation generatorImages reduction19933.relations [3,2054] reduction19933.output := by lin_cert using reduction19933.terms
def image19934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19934 : InImage map_19_249 image19934 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19934 : Bundle := named_bundle% "RealMapCertificates/relations/basis19934.json"
theorem reductionProof19934 : EqualModuloRelations reduction19934.relations reduction19934.input reduction19934.output := by lin_cert using reduction19934.terms
theorem substitutionProof19934 : IsMapEvaluation generatorImages reduction19934.relations [1,2266] reduction19934.output := by lin_cert using reduction19934.terms
def image19935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19935 : InImage map_19_249 image19935 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19935 : Bundle := named_bundle% "RealMapCertificates/relations/basis19935.json"
theorem reductionProof19935 : EqualModuloRelations reduction19935.relations reduction19935.input reduction19935.output := by lin_cert using reduction19935.terms
theorem substitutionProof19935 : IsMapEvaluation generatorImages reduction19935.relations [0,2292] reduction19935.output := by lin_cert using reduction19935.terms
def image19936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19936 : InImage map_19_249 image19936 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19936 : Bundle := named_bundle% "RealMapCertificates/relations/basis19936.json"
theorem reductionProof19936 : EqualModuloRelations reduction19936.relations reduction19936.input reduction19936.output := by lin_cert using reduction19936.terms
theorem substitutionProof19936 : IsMapEvaluation generatorImages reduction19936.relations [0,0,2268] reduction19936.output := by lin_cert using reduction19936.terms
def map_19_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20156 : InImage map_19_250 image20156 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20156 : Bundle := named_bundle% "RealMapCertificates/relations/basis20156.json"
theorem reductionProof20156 : EqualModuloRelations reduction20156.relations reduction20156.input reduction20156.output := by lin_cert using reduction20156.terms
theorem substitutionProof20156 : IsMapEvaluation generatorImages reduction20156.relations [2359] reduction20156.output := by lin_cert using reduction20156.terms
def image20157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20157 : InImage map_19_250 image20157 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20157 : Bundle := named_bundle% "RealMapCertificates/relations/basis20157.json"
theorem reductionProof20157 : EqualModuloRelations reduction20157.relations reduction20157.input reduction20157.output := by lin_cert using reduction20157.terms
theorem substitutionProof20157 : IsMapEvaluation generatorImages reduction20157.relations [278,324] reduction20157.output := by lin_cert using reduction20157.terms
def image20158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20158 : InImage map_19_250 image20158 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20158 : Bundle := named_bundle% "RealMapCertificates/relations/basis20158.json"
theorem reductionProof20158 : EqualModuloRelations reduction20158.relations reduction20158.input reduction20158.output := by lin_cert using reduction20158.terms
theorem substitutionProof20158 : IsMapEvaluation generatorImages reduction20158.relations [1,2292] reduction20158.output := by lin_cert using reduction20158.terms
def image20159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20159 : InImage map_19_250 image20159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20159 : Bundle := named_bundle% "RealMapCertificates/relations/basis20159.json"
theorem reductionProof20159 : EqualModuloRelations reduction20159.relations reduction20159.input reduction20159.output := by lin_cert using reduction20159.terms
theorem substitutionProof20159 : IsMapEvaluation generatorImages reduction20159.relations [0,2328] reduction20159.output := by lin_cert using reduction20159.terms
def image20160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20160 : InImage map_19_250 image20160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20160 : Bundle := named_bundle% "RealMapCertificates/relations/basis20160.json"
theorem reductionProof20160 : EqualModuloRelations reduction20160.relations reduction20160.input reduction20160.output := by lin_cert using reduction20160.terms
theorem substitutionProof20160 : IsMapEvaluation generatorImages reduction20160.relations [0,0,2294] reduction20160.output := by lin_cert using reduction20160.terms
def map_19_251 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20442 : InImage map_19_251 image20442 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20442 : Bundle := named_bundle% "RealMapCertificates/relations/basis20442.json"
theorem reductionProof20442 : EqualModuloRelations reduction20442.relations reduction20442.input reduction20442.output := by lin_cert using reduction20442.terms
theorem substitutionProof20442 : IsMapEvaluation generatorImages reduction20442.relations [2394] reduction20442.output := by lin_cert using reduction20442.terms
def image20443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20443 : InImage map_19_251 image20443 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20443 : Bundle := named_bundle% "RealMapCertificates/relations/basis20443.json"
theorem reductionProof20443 : EqualModuloRelations reduction20443.relations reduction20443.input reduction20443.output := by lin_cert using reduction20443.terms
theorem substitutionProof20443 : IsMapEvaluation generatorImages reduction20443.relations [2393] reduction20443.output := by lin_cert using reduction20443.terms
def image20444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20444 : InImage map_19_251 image20444 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20444 : Bundle := named_bundle% "RealMapCertificates/relations/basis20444.json"
theorem reductionProof20444 : EqualModuloRelations reduction20444.relations reduction20444.input reduction20444.output := by lin_cert using reduction20444.terms
theorem substitutionProof20444 : IsMapEvaluation generatorImages reduction20444.relations [8,1824] reduction20444.output := by lin_cert using reduction20444.terms
def image20445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20445 : InImage map_19_251 image20445 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20445 : Bundle := named_bundle% "RealMapCertificates/relations/basis20445.json"
theorem reductionProof20445 : EqualModuloRelations reduction20445.relations reduction20445.input reduction20445.output := by lin_cert using reduction20445.terms
theorem substitutionProof20445 : IsMapEvaluation generatorImages reduction20445.relations [1,2328] reduction20445.output := by lin_cert using reduction20445.terms
def image20446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20446 : InImage map_19_251 image20446 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20446 : Bundle := named_bundle% "RealMapCertificates/relations/basis20446.json"
theorem reductionProof20446 : EqualModuloRelations reduction20446.relations reduction20446.input reduction20446.output := by lin_cert using reduction20446.terms
theorem substitutionProof20446 : IsMapEvaluation generatorImages reduction20446.relations [0,2362] reduction20446.output := by lin_cert using reduction20446.terms
def image20447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20447 : InImage map_19_251 image20447 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20447 : Bundle := named_bundle% "RealMapCertificates/relations/basis20447.json"
theorem reductionProof20447 : EqualModuloRelations reduction20447.relations reduction20447.input reduction20447.output := by lin_cert using reduction20447.terms
theorem substitutionProof20447 : IsMapEvaluation generatorImages reduction20447.relations [0,2361] reduction20447.output := by lin_cert using reduction20447.terms
def image20448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20448 : InImage map_19_251 image20448 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20448 : Bundle := named_bundle% "RealMapCertificates/relations/basis20448.json"
theorem reductionProof20448 : EqualModuloRelations reduction20448.relations reduction20448.input reduction20448.output := by lin_cert using reduction20448.terms
theorem substitutionProof20448 : IsMapEvaluation generatorImages reduction20448.relations [0,190,544] reduction20448.output := by lin_cert using reduction20448.terms
def map_19_252 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20765 : InImage map_19_252 image20765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20765 : Bundle := named_bundle% "RealMapCertificates/relations/basis20765.json"
theorem reductionProof20765 : EqualModuloRelations reduction20765.relations reduction20765.input reduction20765.output := by lin_cert using reduction20765.terms
theorem substitutionProof20765 : IsMapEvaluation generatorImages reduction20765.relations [2428] reduction20765.output := by lin_cert using reduction20765.terms
def image20766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20766 : InImage map_19_252 image20766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20766 : Bundle := named_bundle% "RealMapCertificates/relations/basis20766.json"
theorem reductionProof20766 : EqualModuloRelations reduction20766.relations reduction20766.input reduction20766.output := by lin_cert using reduction20766.terms
theorem substitutionProof20766 : IsMapEvaluation generatorImages reduction20766.relations [2,2292] reduction20766.output := by lin_cert using reduction20766.terms
def image20767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20767 : InImage map_19_252 image20767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20767 : Bundle := named_bundle% "RealMapCertificates/relations/basis20767.json"
theorem reductionProof20767 : EqualModuloRelations reduction20767.relations reduction20767.input reduction20767.output := by lin_cert using reduction20767.terms
theorem substitutionProof20767 : IsMapEvaluation generatorImages reduction20767.relations [1,1,2294] reduction20767.output := by lin_cert using reduction20767.terms
def image20768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20768 : InImage map_19_252 image20768 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20768 : Bundle := named_bundle% "RealMapCertificates/relations/basis20768.json"
theorem reductionProof20768 : EqualModuloRelations reduction20768.relations reduction20768.input reduction20768.output := by lin_cert using reduction20768.terms
theorem substitutionProof20768 : IsMapEvaluation generatorImages reduction20768.relations [0,0,2364] reduction20768.output := by lin_cert using reduction20768.terms
def map_19_253 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20983 : InImage map_19_253 image20983 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20983 : Bundle := named_bundle% "RealMapCertificates/relations/basis20983.json"
theorem reductionProof20983 : EqualModuloRelations reduction20983.relations reduction20983.input reduction20983.output := by lin_cert using reduction20983.terms
theorem substitutionProof20983 : IsMapEvaluation generatorImages reduction20983.relations [2468] reduction20983.output := by lin_cert using reduction20983.terms
def image20984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20984 : InImage map_19_253 image20984 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20984 : Bundle := named_bundle% "RealMapCertificates/relations/basis20984.json"
theorem reductionProof20984 : EqualModuloRelations reduction20984.relations reduction20984.input reduction20984.output := by lin_cert using reduction20984.terms
theorem substitutionProof20984 : IsMapEvaluation generatorImages reduction20984.relations [2467] reduction20984.output := by lin_cert using reduction20984.terms
def image20985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20985 : InImage map_19_253 image20985 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20985 : Bundle := named_bundle% "RealMapCertificates/relations/basis20985.json"
theorem reductionProof20985 : EqualModuloRelations reduction20985.relations reduction20985.input reduction20985.output := by lin_cert using reduction20985.terms
theorem substitutionProof20985 : IsMapEvaluation generatorImages reduction20985.relations [2466] reduction20985.output := by lin_cert using reduction20985.terms
def image20986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20986 : InImage map_19_253 image20986 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20986 : Bundle := named_bundle% "RealMapCertificates/relations/basis20986.json"
theorem reductionProof20986 : EqualModuloRelations reduction20986.relations reduction20986.input reduction20986.output := by lin_cert using reduction20986.terms
theorem substitutionProof20986 : IsMapEvaluation generatorImages reduction20986.relations [291,324] reduction20986.output := by lin_cert using reduction20986.terms
def image20987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20987 : InImage map_19_253 image20987 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20987 : Bundle := named_bundle% "RealMapCertificates/relations/basis20987.json"
theorem reductionProof20987 : EqualModuloRelations reduction20987.relations reduction20987.input reduction20987.output := by lin_cert using reduction20987.terms
theorem substitutionProof20987 : IsMapEvaluation generatorImages reduction20987.relations [9,1795] reduction20987.output := by lin_cert using reduction20987.terms
def image20988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20988 : InImage map_19_253 image20988 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20988 : Bundle := named_bundle% "RealMapCertificates/relations/basis20988.json"
theorem reductionProof20988 : EqualModuloRelations reduction20988.relations reduction20988.input reduction20988.output := by lin_cert using reduction20988.terms
theorem substitutionProof20988 : IsMapEvaluation generatorImages reduction20988.relations [2,2328] reduction20988.output := by lin_cert using reduction20988.terms
def image20989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20989 : InImage map_19_253 image20989 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20989 : Bundle := named_bundle% "RealMapCertificates/relations/basis20989.json"
theorem reductionProof20989 : EqualModuloRelations reduction20989.relations reduction20989.input reduction20989.output := by lin_cert using reduction20989.terms
theorem substitutionProof20989 : IsMapEvaluation generatorImages reduction20989.relations [1,2395] reduction20989.output := by lin_cert using reduction20989.terms
def image20990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20990 : InImage map_19_253 image20990 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20990 : Bundle := named_bundle% "RealMapCertificates/relations/basis20990.json"
theorem reductionProof20990 : EqualModuloRelations reduction20990.relations reduction20990.input reduction20990.output := by lin_cert using reduction20990.terms
theorem substitutionProof20990 : IsMapEvaluation generatorImages reduction20990.relations [0,2429] reduction20990.output := by lin_cert using reduction20990.terms
def map_19_254 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image21288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21288 : InImage map_19_254 image21288 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction21288 : Bundle := named_bundle% "RealMapCertificates/relations/basis21288.json"
theorem reductionProof21288 : EqualModuloRelations reduction21288.relations reduction21288.input reduction21288.output := by lin_cert using reduction21288.terms
theorem substitutionProof21288 : IsMapEvaluation generatorImages reduction21288.relations [2518] reduction21288.output := by lin_cert using reduction21288.terms
def image21289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21289 : InImage map_19_254 image21289 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction21289 : Bundle := named_bundle% "RealMapCertificates/relations/basis21289.json"
theorem reductionProof21289 : EqualModuloRelations reduction21289.relations reduction21289.input reduction21289.output := by lin_cert using reduction21289.terms
theorem substitutionProof21289 : IsMapEvaluation generatorImages reduction21289.relations [2517] reduction21289.output := by lin_cert using reduction21289.terms
def image21290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21290 : InImage map_19_254 image21290 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction21290 : Bundle := named_bundle% "RealMapCertificates/relations/basis21290.json"
theorem reductionProof21290 : EqualModuloRelations reduction21290.relations reduction21290.input reduction21290.output := by lin_cert using reduction21290.terms
theorem substitutionProof21290 : IsMapEvaluation generatorImages reduction21290.relations [2516] reduction21290.output := by lin_cert using reduction21290.terms
def image21291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21291 : InImage map_19_254 image21291 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction21291 : Bundle := named_bundle% "RealMapCertificates/relations/basis21291.json"
theorem reductionProof21291 : EqualModuloRelations reduction21291.relations reduction21291.input reduction21291.output := by lin_cert using reduction21291.terms
theorem substitutionProof21291 : IsMapEvaluation generatorImages reduction21291.relations [9,1824] reduction21291.output := by lin_cert using reduction21291.terms
def image21292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21292 : InImage map_19_254 image21292 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction21292 : Bundle := named_bundle% "RealMapCertificates/relations/basis21292.json"
theorem reductionProof21292 : EqualModuloRelations reduction21292.relations reduction21292.input reduction21292.output := by lin_cert using reduction21292.terms
theorem substitutionProof21292 : IsMapEvaluation generatorImages reduction21292.relations [7,1948] reduction21292.output := by lin_cert using reduction21292.terms
def image21293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21293 : InImage map_19_254 image21293 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction21293 : Bundle := named_bundle% "RealMapCertificates/relations/basis21293.json"
theorem reductionProof21293 : EqualModuloRelations reduction21293.relations reduction21293.input reduction21293.output := by lin_cert using reduction21293.terms
theorem substitutionProof21293 : IsMapEvaluation generatorImages reduction21293.relations [1,2429] reduction21293.output := by lin_cert using reduction21293.terms
def image21294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21294 : InImage map_19_254 image21294 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction21294 : Bundle := named_bundle% "RealMapCertificates/relations/basis21294.json"
theorem reductionProof21294 : EqualModuloRelations reduction21294.relations reduction21294.input reduction21294.output := by lin_cert using reduction21294.terms
theorem substitutionProof21294 : IsMapEvaluation generatorImages reduction21294.relations [1,1,2364] reduction21294.output := by lin_cert using reduction21294.terms
def image21295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21295 : InImage map_19_254 image21295 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction21295 : Bundle := named_bundle% "RealMapCertificates/relations/basis21295.json"
theorem reductionProof21295 : EqualModuloRelations reduction21295.relations reduction21295.input reduction21295.output := by lin_cert using reduction21295.terms
theorem substitutionProof21295 : IsMapEvaluation generatorImages reduction21295.relations [0,2470] reduction21295.output := by lin_cert using reduction21295.terms
def image21296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21296 : InImage map_19_254 image21296 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction21296 : Bundle := named_bundle% "RealMapCertificates/relations/basis21296.json"
theorem reductionProof21296 : EqualModuloRelations reduction21296.relations reduction21296.input reduction21296.output := by lin_cert using reduction21296.terms
theorem substitutionProof21296 : IsMapEvaluation generatorImages reduction21296.relations [0,2469] reduction21296.output := by lin_cert using reduction21296.terms
def image21297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21297 : InImage map_19_254 image21297 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction21297 : Bundle := named_bundle% "RealMapCertificates/relations/basis21297.json"
theorem reductionProof21297 : EqualModuloRelations reduction21297.relations reduction21297.input reduction21297.output := by lin_cert using reduction21297.terms
theorem substitutionProof21297 : IsMapEvaluation generatorImages reduction21297.relations [0,292,324] reduction21297.output := by lin_cert using reduction21297.terms
def image21298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21298 : InImage map_19_254 image21298 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction21298 : Bundle := named_bundle% "RealMapCertificates/relations/basis21298.json"
theorem reductionProof21298 : EqualModuloRelations reduction21298.relations reduction21298.input reduction21298.output := by lin_cert using reduction21298.terms
theorem substitutionProof21298 : IsMapEvaluation generatorImages reduction21298.relations [0,0,2431] reduction21298.output := by lin_cert using reduction21298.terms
def image21299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21299 : InImage map_19_254 image21299 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction21299 : Bundle := named_bundle% "RealMapCertificates/relations/basis21299.json"
theorem reductionProof21299 : EqualModuloRelations reduction21299.relations reduction21299.input reduction21299.output := by lin_cert using reduction21299.terms
theorem substitutionProof21299 : IsMapEvaluation generatorImages reduction21299.relations [0,0,2430] reduction21299.output := by lin_cert using reduction21299.terms
def map_19_255 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21634 : InImage map_19_255 image21634 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21634 : Bundle := named_bundle% "RealMapCertificates/relations/basis21634.json"
theorem reductionProof21634 : EqualModuloRelations reduction21634.relations reduction21634.input reduction21634.output := by lin_cert using reduction21634.terms
theorem substitutionProof21634 : IsMapEvaluation generatorImages reduction21634.relations [2564] reduction21634.output := by lin_cert using reduction21634.terms
def image21635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21635 : InImage map_19_255 image21635 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21635 : Bundle := named_bundle% "RealMapCertificates/relations/basis21635.json"
theorem reductionProof21635 : EqualModuloRelations reduction21635.relations reduction21635.input reduction21635.output := by lin_cert using reduction21635.terms
theorem substitutionProof21635 : IsMapEvaluation generatorImages reduction21635.relations [2563] reduction21635.output := by lin_cert using reduction21635.terms
def image21636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21636 : InImage map_19_255 image21636 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21636 : Bundle := named_bundle% "RealMapCertificates/relations/basis21636.json"
theorem reductionProof21636 : EqualModuloRelations reduction21636.relations reduction21636.input reduction21636.output := by lin_cert using reduction21636.terms
theorem substitutionProof21636 : IsMapEvaluation generatorImages reduction21636.relations [0,0,2475] reduction21636.output := by lin_cert using reduction21636.terms
def image21637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21637 : InImage map_19_255 image21637 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21637 : Bundle := named_bundle% "RealMapCertificates/relations/basis21637.json"
theorem reductionProof21637 : EqualModuloRelations reduction21637.relations reduction21637.input reduction21637.output := by lin_cert using reduction21637.terms
theorem substitutionProof21637 : IsMapEvaluation generatorImages reduction21637.relations [0,0,2474] reduction21637.output := by lin_cert using reduction21637.terms
def image21638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21638 : InImage map_19_255 image21638 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21638 : Bundle := named_bundle% "RealMapCertificates/relations/basis21638.json"
theorem reductionProof21638 : EqualModuloRelations reduction21638.relations reduction21638.input reduction21638.output := by lin_cert using reduction21638.terms
theorem substitutionProof21638 : IsMapEvaluation generatorImages reduction21638.relations [0,0,0,2432] reduction21638.output := by lin_cert using reduction21638.terms
def map_19_256 : Matrix 0 16 := fun i j => ([] : List Bool)[i.val*16+j.val]!
def image21901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21901 : InImage map_19_256 image21901 := by lin_cert using (fun j : Fin 16 => decide (j.val = 0))
def reduction21901 : Bundle := named_bundle% "RealMapCertificates/relations/basis21901.json"
theorem reductionProof21901 : EqualModuloRelations reduction21901.relations reduction21901.input reduction21901.output := by lin_cert using reduction21901.terms
theorem substitutionProof21901 : IsMapEvaluation generatorImages reduction21901.relations [2610] reduction21901.output := by lin_cert using reduction21901.terms
def image21902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21902 : InImage map_19_256 image21902 := by lin_cert using (fun j : Fin 16 => decide (j.val = 1))
def reduction21902 : Bundle := named_bundle% "RealMapCertificates/relations/basis21902.json"
theorem reductionProof21902 : EqualModuloRelations reduction21902.relations reduction21902.input reduction21902.output := by lin_cert using reduction21902.terms
theorem substitutionProof21902 : IsMapEvaluation generatorImages reduction21902.relations [2609] reduction21902.output := by lin_cert using reduction21902.terms
def image21903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21903 : InImage map_19_256 image21903 := by lin_cert using (fun j : Fin 16 => decide (j.val = 2))
def reduction21903 : Bundle := named_bundle% "RealMapCertificates/relations/basis21903.json"
theorem reductionProof21903 : EqualModuloRelations reduction21903.relations reduction21903.input reduction21903.output := by lin_cert using reduction21903.terms
theorem substitutionProof21903 : IsMapEvaluation generatorImages reduction21903.relations [2608] reduction21903.output := by lin_cert using reduction21903.terms
def image21904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21904 : InImage map_19_256 image21904 := by lin_cert using (fun j : Fin 16 => decide (j.val = 3))
def reduction21904 : Bundle := named_bundle% "RealMapCertificates/relations/basis21904.json"
theorem reductionProof21904 : EqualModuloRelations reduction21904.relations reduction21904.input reduction21904.output := by lin_cert using reduction21904.terms
theorem substitutionProof21904 : IsMapEvaluation generatorImages reduction21904.relations [316,324] reduction21904.output := by lin_cert using reduction21904.terms
def image21905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21905 : InImage map_19_256 image21905 := by lin_cert using (fun j : Fin 16 => decide (j.val = 4))
def reduction21905 : Bundle := named_bundle% "RealMapCertificates/relations/basis21905.json"
theorem reductionProof21905 : EqualModuloRelations reduction21905.relations reduction21905.input reduction21905.output := by lin_cert using reduction21905.terms
theorem substitutionProof21905 : IsMapEvaluation generatorImages reduction21905.relations [68,1057] reduction21905.output := by lin_cert using reduction21905.terms
def image21906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21906 : InImage map_19_256 image21906 := by lin_cert using (fun j : Fin 16 => decide (j.val = 5))
def reduction21906 : Bundle := named_bundle% "RealMapCertificates/relations/basis21906.json"
theorem reductionProof21906 : EqualModuloRelations reduction21906.relations reduction21906.input reduction21906.output := by lin_cert using reduction21906.terms
theorem substitutionProof21906 : IsMapEvaluation generatorImages reduction21906.relations [13,1795] reduction21906.output := by lin_cert using reduction21906.terms
def image21907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21907 : InImage map_19_256 image21907 := by lin_cert using (fun j : Fin 16 => decide (j.val = 6))
def reduction21907 : Bundle := named_bundle% "RealMapCertificates/relations/basis21907.json"
theorem reductionProof21907 : EqualModuloRelations reduction21907.relations reduction21907.input reduction21907.output := by lin_cert using reduction21907.terms
theorem substitutionProof21907 : IsMapEvaluation generatorImages reduction21907.relations [7,2012] reduction21907.output := by lin_cert using reduction21907.terms
def image21908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21908 : InImage map_19_256 image21908 := by lin_cert using (fun j : Fin 16 => decide (j.val = 7))
def reduction21908 : Bundle := named_bundle% "RealMapCertificates/relations/basis21908.json"
theorem reductionProof21908 : EqualModuloRelations reduction21908.relations reduction21908.input reduction21908.output := by lin_cert using reduction21908.terms
theorem substitutionProof21908 : IsMapEvaluation generatorImages reduction21908.relations [2,2429] reduction21908.output := by lin_cert using reduction21908.terms
def image21909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21909 : InImage map_19_256 image21909 := by lin_cert using (fun j : Fin 16 => decide (j.val = 8))
def reduction21909 : Bundle := named_bundle% "RealMapCertificates/relations/basis21909.json"
theorem reductionProof21909 : EqualModuloRelations reduction21909.relations reduction21909.input reduction21909.output := by lin_cert using reduction21909.terms
theorem substitutionProof21909 : IsMapEvaluation generatorImages reduction21909.relations [1,2520] reduction21909.output := by lin_cert using reduction21909.terms
def image21910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21910 : InImage map_19_256 image21910 := by lin_cert using (fun j : Fin 16 => decide (j.val = 9))
def reduction21910 : Bundle := named_bundle% "RealMapCertificates/relations/basis21910.json"
theorem reductionProof21910 : EqualModuloRelations reduction21910.relations reduction21910.input reduction21910.output := by lin_cert using reduction21910.terms
theorem substitutionProof21910 : IsMapEvaluation generatorImages reduction21910.relations [1,2519] reduction21910.output := by lin_cert using reduction21910.terms
def image21911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21911 : InImage map_19_256 image21911 := by lin_cert using (fun j : Fin 16 => decide (j.val = 10))
def reduction21911 : Bundle := named_bundle% "RealMapCertificates/relations/basis21911.json"
theorem reductionProof21911 : EqualModuloRelations reduction21911.relations reduction21911.input reduction21911.output := by lin_cert using reduction21911.terms
theorem substitutionProof21911 : IsMapEvaluation generatorImages reduction21911.relations [1,1,2430] reduction21911.output := by lin_cert using reduction21911.terms
def image21912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21912 : InImage map_19_256 image21912 := by lin_cert using (fun j : Fin 16 => decide (j.val = 11))
def reduction21912 : Bundle := named_bundle% "RealMapCertificates/relations/basis21912.json"
theorem reductionProof21912 : EqualModuloRelations reduction21912.relations reduction21912.input reduction21912.output := by lin_cert using reduction21912.terms
theorem substitutionProof21912 : IsMapEvaluation generatorImages reduction21912.relations [0,2566] reduction21912.output := by lin_cert using reduction21912.terms
def image21913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21913 : InImage map_19_256 image21913 := by lin_cert using (fun j : Fin 16 => decide (j.val = 12))
def reduction21913 : Bundle := named_bundle% "RealMapCertificates/relations/basis21913.json"
theorem reductionProof21913 : EqualModuloRelations reduction21913.relations reduction21913.input reduction21913.output := by lin_cert using reduction21913.terms
theorem substitutionProof21913 : IsMapEvaluation generatorImages reduction21913.relations [0,2565] reduction21913.output := by lin_cert using reduction21913.terms
def image21914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21914 : InImage map_19_256 image21914 := by lin_cert using (fun j : Fin 16 => decide (j.val = 13))
def reduction21914 : Bundle := named_bundle% "RealMapCertificates/relations/basis21914.json"
theorem reductionProof21914 : EqualModuloRelations reduction21914.relations reduction21914.input reduction21914.output := by lin_cert using reduction21914.terms
theorem substitutionProof21914 : IsMapEvaluation generatorImages reduction21914.relations [0,0,2522] reduction21914.output := by lin_cert using reduction21914.terms
def image21915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21915 : InImage map_19_256 image21915 := by lin_cert using (fun j : Fin 16 => decide (j.val = 14))
def reduction21915 : Bundle := named_bundle% "RealMapCertificates/relations/basis21915.json"
theorem reductionProof21915 : EqualModuloRelations reduction21915.relations reduction21915.input reduction21915.output := by lin_cert using reduction21915.terms
theorem substitutionProof21915 : IsMapEvaluation generatorImages reduction21915.relations [0,0,0,2478] reduction21915.output := by lin_cert using reduction21915.terms
def image21916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21916 : InImage map_19_256 image21916 := by lin_cert using (fun j : Fin 16 => decide (j.val = 15))
def reduction21916 : Bundle := named_bundle% "RealMapCertificates/relations/basis21916.json"
theorem reductionProof21916 : EqualModuloRelations reduction21916.relations reduction21916.input reduction21916.output := by lin_cert using reduction21916.terms
theorem substitutionProof21916 : IsMapEvaluation generatorImages reduction21916.relations [0,0,0,0,2433] reduction21916.output := by lin_cert using reduction21916.terms
end RealMapCertificates
