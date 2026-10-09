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
  | 19 => [[4,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 58 => [[3,4,4,4,4]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 74 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 83 => []
  | 90 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 172 => []
  | 206 => [[4,6,8,12]]
  | 266 => []
  | 324 => []
  | 333 => []
  | 346 => []
  | 347 => []
  | 356 => []
  | 1057 => []
  | 1120 => []
  | 1824 => []
  | 2113 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2475 => []
  | 2480 => []
  | 2567 => []
  | 2569 => []
  | 2611 => []
  | 2612 => []
  | 2650 => []
  | 2651 => []
  | 2652 => []
  | 2653 => []
  | 2654 => []
  | 2655 => []
  | 2656 => []
  | 2693 => []
  | 2694 => []
  | 2695 => []
  | 2696 => []
  | 2699 => []
  | 2701 => []
  | 2703 => []
  | 2706 => []
  | 2765 => []
  | 2766 => []
  | 2767 => []
  | 2768 => []
  | 2770 => []
  | 2771 => []
  | 2827 => []
  | 2828 => []
  | 2829 => []
  | 2830 => []
  | 2831 => []
  | 2832 => []
  | 2833 => []
  | 2834 => []
  | 2835 => []
  | 2836 => []
  | 2885 => []
  | _ => []
def map_19_257 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image22247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22247 : InImage map_19_257 image22247 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction22247 : Bundle := named_bundle% "RealMapCertificates/relations/basis22247.json"
theorem reductionProof22247 : EqualModuloRelations reduction22247.relations reduction22247.input reduction22247.output := by lin_cert using reduction22247.terms
theorem substitutionProof22247 : IsMapEvaluation generatorImages reduction22247.relations [2654] reduction22247.output := by lin_cert using reduction22247.terms
def image22248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22248 : InImage map_19_257 image22248 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction22248 : Bundle := named_bundle% "RealMapCertificates/relations/basis22248.json"
theorem reductionProof22248 : EqualModuloRelations reduction22248.relations reduction22248.input reduction22248.output := by lin_cert using reduction22248.terms
theorem substitutionProof22248 : IsMapEvaluation generatorImages reduction22248.relations [2653] reduction22248.output := by lin_cert using reduction22248.terms
def image22249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22249 : InImage map_19_257 image22249 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction22249 : Bundle := named_bundle% "RealMapCertificates/relations/basis22249.json"
theorem reductionProof22249 : EqualModuloRelations reduction22249.relations reduction22249.input reduction22249.output := by lin_cert using reduction22249.terms
theorem substitutionProof22249 : IsMapEvaluation generatorImages reduction22249.relations [2652] reduction22249.output := by lin_cert using reduction22249.terms
def image22250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22250 : InImage map_19_257 image22250 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction22250 : Bundle := named_bundle% "RealMapCertificates/relations/basis22250.json"
theorem reductionProof22250 : EqualModuloRelations reduction22250.relations reduction22250.input reduction22250.output := by lin_cert using reduction22250.terms
theorem substitutionProof22250 : IsMapEvaluation generatorImages reduction22250.relations [2651] reduction22250.output := by lin_cert using reduction22250.terms
def image22251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22251 : InImage map_19_257 image22251 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction22251 : Bundle := named_bundle% "RealMapCertificates/relations/basis22251.json"
theorem reductionProof22251 : EqualModuloRelations reduction22251.relations reduction22251.input reduction22251.output := by lin_cert using reduction22251.terms
theorem substitutionProof22251 : IsMapEvaluation generatorImages reduction22251.relations [2650] reduction22251.output := by lin_cert using reduction22251.terms
def image22252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22252 : InImage map_19_257 image22252 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction22252 : Bundle := named_bundle% "RealMapCertificates/relations/basis22252.json"
theorem reductionProof22252 : EqualModuloRelations reduction22252.relations reduction22252.input reduction22252.output := by lin_cert using reduction22252.terms
theorem substitutionProof22252 : IsMapEvaluation generatorImages reduction22252.relations [13,1824] reduction22252.output := by lin_cert using reduction22252.terms
def image22253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22253 : InImage map_19_257 image22253 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction22253 : Bundle := named_bundle% "RealMapCertificates/relations/basis22253.json"
theorem reductionProof22253 : EqualModuloRelations reduction22253.relations reduction22253.input reduction22253.output := by lin_cert using reduction22253.terms
theorem substitutionProof22253 : IsMapEvaluation generatorImages reduction22253.relations [0,2612] reduction22253.output := by lin_cert using reduction22253.terms
def image22254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22254 : InImage map_19_257 image22254 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction22254 : Bundle := named_bundle% "RealMapCertificates/relations/basis22254.json"
theorem reductionProof22254 : EqualModuloRelations reduction22254.relations reduction22254.input reduction22254.output := by lin_cert using reduction22254.terms
theorem substitutionProof22254 : IsMapEvaluation generatorImages reduction22254.relations [0,2611] reduction22254.output := by lin_cert using reduction22254.terms
def image22255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22255 : InImage map_19_257 image22255 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction22255 : Bundle := named_bundle% "RealMapCertificates/relations/basis22255.json"
theorem reductionProof22255 : EqualModuloRelations reduction22255.relations reduction22255.input reduction22255.output := by lin_cert using reduction22255.terms
theorem substitutionProof22255 : IsMapEvaluation generatorImages reduction22255.relations [0,2,2430] reduction22255.output := by lin_cert using reduction22255.terms
def image22256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22256 : InImage map_19_257 image22256 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction22256 : Bundle := named_bundle% "RealMapCertificates/relations/basis22256.json"
theorem reductionProof22256 : EqualModuloRelations reduction22256.relations reduction22256.input reduction22256.output := by lin_cert using reduction22256.terms
theorem substitutionProof22256 : IsMapEvaluation generatorImages reduction22256.relations [0,0,2569] reduction22256.output := by lin_cert using reduction22256.terms
def image22257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22257 : InImage map_19_257 image22257 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction22257 : Bundle := named_bundle% "RealMapCertificates/relations/basis22257.json"
theorem reductionProof22257 : EqualModuloRelations reduction22257.relations reduction22257.input reduction22257.output := by lin_cert using reduction22257.terms
theorem substitutionProof22257 : IsMapEvaluation generatorImages reduction22257.relations [0,0,2567] reduction22257.output := by lin_cert using reduction22257.terms
def image22258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22258 : InImage map_19_257 image22258 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction22258 : Bundle := named_bundle% "RealMapCertificates/relations/basis22258.json"
theorem reductionProof22258 : EqualModuloRelations reduction22258.relations reduction22258.input reduction22258.output := by lin_cert using reduction22258.terms
theorem substitutionProof22258 : IsMapEvaluation generatorImages reduction22258.relations [0,0,0,0,2480] reduction22258.output := by lin_cert using reduction22258.terms
def map_19_258 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22603 : InImage map_19_258 image22603 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22603 : Bundle := named_bundle% "RealMapCertificates/relations/basis22603.json"
theorem reductionProof22603 : EqualModuloRelations reduction22603.relations reduction22603.input reduction22603.output := by lin_cert using reduction22603.terms
theorem substitutionProof22603 : IsMapEvaluation generatorImages reduction22603.relations [2693] reduction22603.output := by lin_cert using reduction22603.terms
def image22604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22604 : InImage map_19_258 image22604 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22604 : Bundle := named_bundle% "RealMapCertificates/relations/basis22604.json"
theorem reductionProof22604 : EqualModuloRelations reduction22604.relations reduction22604.input reduction22604.output := by lin_cert using reduction22604.terms
theorem substitutionProof22604 : IsMapEvaluation generatorImages reduction22604.relations [13,23,83,324] reduction22604.output := by lin_cert using reduction22604.terms
def image22605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22605 : InImage map_19_258 image22605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22605 : Bundle := named_bundle% "RealMapCertificates/relations/basis22605.json"
theorem reductionProof22605 : EqualModuloRelations reduction22605.relations reduction22605.input reduction22605.output := by lin_cert using reduction22605.terms
theorem substitutionProof22605 : IsMapEvaluation generatorImages reduction22605.relations [0,2656] reduction22605.output := by lin_cert using reduction22605.terms
def image22606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22606 : InImage map_19_258 image22606 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22606 : Bundle := named_bundle% "RealMapCertificates/relations/basis22606.json"
theorem reductionProof22606 : EqualModuloRelations reduction22606.relations reduction22606.input reduction22606.output := by lin_cert using reduction22606.terms
theorem substitutionProof22606 : IsMapEvaluation generatorImages reduction22606.relations [0,2655] reduction22606.output := by lin_cert using reduction22606.terms
def image22607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22607 : InImage map_19_258 image22607 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22607 : Bundle := named_bundle% "RealMapCertificates/relations/basis22607.json"
theorem reductionProof22607 : EqualModuloRelations reduction22607.relations reduction22607.input reduction22607.output := by lin_cert using reduction22607.terms
theorem substitutionProof22607 : IsMapEvaluation generatorImages reduction22607.relations [0,2,2475] reduction22607.output := by lin_cert using reduction22607.terms
def image22608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22608 : InImage map_19_258 image22608 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22608 : Bundle := named_bundle% "RealMapCertificates/relations/basis22608.json"
theorem reductionProof22608 : EqualModuloRelations reduction22608.relations reduction22608.input reduction22608.output := by lin_cert using reduction22608.terms
theorem substitutionProof22608 : IsMapEvaluation generatorImages reduction22608.relations [0,0,3,266,324] reduction22608.output := by lin_cert using reduction22608.terms
def map_19_259 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image22913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22913 : InImage map_19_259 image22913 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction22913 : Bundle := named_bundle% "RealMapCertificates/relations/basis22913.json"
theorem reductionProof22913 : EqualModuloRelations reduction22913.relations reduction22913.input reduction22913.output := by lin_cert using reduction22913.terms
theorem substitutionProof22913 : IsMapEvaluation generatorImages reduction22913.relations [2767] reduction22913.output := by lin_cert using reduction22913.terms
def image22914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22914 : InImage map_19_259 image22914 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction22914 : Bundle := named_bundle% "RealMapCertificates/relations/basis22914.json"
theorem reductionProof22914 : EqualModuloRelations reduction22914.relations reduction22914.input reduction22914.output := by lin_cert using reduction22914.terms
theorem substitutionProof22914 : IsMapEvaluation generatorImages reduction22914.relations [2766] reduction22914.output := by lin_cert using reduction22914.terms
def image22915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22915 : InImage map_19_259 image22915 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction22915 : Bundle := named_bundle% "RealMapCertificates/relations/basis22915.json"
theorem reductionProof22915 : EqualModuloRelations reduction22915.relations reduction22915.input reduction22915.output := by lin_cert using reduction22915.terms
theorem substitutionProof22915 : IsMapEvaluation generatorImages reduction22915.relations [2765] reduction22915.output := by lin_cert using reduction22915.terms
def image22916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22916 : InImage map_19_259 image22916 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction22916 : Bundle := named_bundle% "RealMapCertificates/relations/basis22916.json"
theorem reductionProof22916 : EqualModuloRelations reduction22916.relations reduction22916.input reduction22916.output := by lin_cert using reduction22916.terms
theorem substitutionProof22916 : IsMapEvaluation generatorImages reduction22916.relations [324,347] reduction22916.output := by lin_cert using reduction22916.terms
def image22917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22917 : InImage map_19_259 image22917 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction22917 : Bundle := named_bundle% "RealMapCertificates/relations/basis22917.json"
theorem reductionProof22917 : EqualModuloRelations reduction22917.relations reduction22917.input reduction22917.output := by lin_cert using reduction22917.terms
theorem substitutionProof22917 : IsMapEvaluation generatorImages reduction22917.relations [324,346] reduction22917.output := by lin_cert using reduction22917.terms
def image22918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22918 : InImage map_19_259 image22918 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction22918 : Bundle := named_bundle% "RealMapCertificates/relations/basis22918.json"
theorem reductionProof22918 : EqualModuloRelations reduction22918.relations reduction22918.input reduction22918.output := by lin_cert using reduction22918.terms
theorem substitutionProof22918 : IsMapEvaluation generatorImages reduction22918.relations [74,1057] reduction22918.output := by lin_cert using reduction22918.terms
def image22919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22919 : InImage map_19_259 image22919 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction22919 : Bundle := named_bundle% "RealMapCertificates/relations/basis22919.json"
theorem reductionProof22919 : EqualModuloRelations reduction22919.relations reduction22919.input reduction22919.output := by lin_cert using reduction22919.terms
theorem substitutionProof22919 : IsMapEvaluation generatorImages reduction22919.relations [7,2113] reduction22919.output := by lin_cert using reduction22919.terms
def image22920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22920 : InImage map_19_259 image22920 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction22920 : Bundle := named_bundle% "RealMapCertificates/relations/basis22920.json"
theorem reductionProof22920 : EqualModuloRelations reduction22920.relations reduction22920.input reduction22920.output := by lin_cert using reduction22920.terms
theorem substitutionProof22920 : IsMapEvaluation generatorImages reduction22920.relations [1,2655] reduction22920.output := by lin_cert using reduction22920.terms
def image22921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22921 : InImage map_19_259 image22921 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction22921 : Bundle := named_bundle% "RealMapCertificates/relations/basis22921.json"
theorem reductionProof22921 : EqualModuloRelations reduction22921.relations reduction22921.input reduction22921.output := by lin_cert using reduction22921.terms
theorem substitutionProof22921 : IsMapEvaluation generatorImages reduction22921.relations [0,2695] reduction22921.output := by lin_cert using reduction22921.terms
def image22922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22922 : InImage map_19_259 image22922 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction22922 : Bundle := named_bundle% "RealMapCertificates/relations/basis22922.json"
theorem reductionProof22922 : EqualModuloRelations reduction22922.relations reduction22922.input reduction22922.output := by lin_cert using reduction22922.terms
theorem substitutionProof22922 : IsMapEvaluation generatorImages reduction22922.relations [0,2694] reduction22922.output := by lin_cert using reduction22922.terms
def image22923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22923 : InImage map_19_259 image22923 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction22923 : Bundle := named_bundle% "RealMapCertificates/relations/basis22923.json"
theorem reductionProof22923 : EqualModuloRelations reduction22923.relations reduction22923.input reduction22923.output := by lin_cert using reduction22923.terms
theorem substitutionProof22923 : IsMapEvaluation generatorImages reduction22923.relations [0,333,333] reduction22923.output := by lin_cert using reduction22923.terms
def map_19_260 : Matrix 0 16 := fun i j => ([] : List Bool)[i.val*16+j.val]!
def image23294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23294 : InImage map_19_260 image23294 := by lin_cert using (fun j : Fin 16 => decide (j.val = 0))
def reduction23294 : Bundle := named_bundle% "RealMapCertificates/relations/basis23294.json"
theorem reductionProof23294 : EqualModuloRelations reduction23294.relations reduction23294.input reduction23294.output := by lin_cert using reduction23294.terms
theorem substitutionProof23294 : IsMapEvaluation generatorImages reduction23294.relations [2833] reduction23294.output := by lin_cert using reduction23294.terms
def image23295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23295 : InImage map_19_260 image23295 := by lin_cert using (fun j : Fin 16 => decide (j.val = 1))
def reduction23295 : Bundle := named_bundle% "RealMapCertificates/relations/basis23295.json"
theorem reductionProof23295 : EqualModuloRelations reduction23295.relations reduction23295.input reduction23295.output := by lin_cert using reduction23295.terms
theorem substitutionProof23295 : IsMapEvaluation generatorImages reduction23295.relations [2832] reduction23295.output := by lin_cert using reduction23295.terms
def image23296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23296 : InImage map_19_260 image23296 := by lin_cert using (fun j : Fin 16 => decide (j.val = 2))
def reduction23296 : Bundle := named_bundle% "RealMapCertificates/relations/basis23296.json"
theorem reductionProof23296 : EqualModuloRelations reduction23296.relations reduction23296.input reduction23296.output := by lin_cert using reduction23296.terms
theorem substitutionProof23296 : IsMapEvaluation generatorImages reduction23296.relations [2831] reduction23296.output := by lin_cert using reduction23296.terms
def image23297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23297 : InImage map_19_260 image23297 := by lin_cert using (fun j : Fin 16 => decide (j.val = 3))
def reduction23297 : Bundle := named_bundle% "RealMapCertificates/relations/basis23297.json"
theorem reductionProof23297 : EqualModuloRelations reduction23297.relations reduction23297.input reduction23297.output := by lin_cert using reduction23297.terms
theorem substitutionProof23297 : IsMapEvaluation generatorImages reduction23297.relations [2830] reduction23297.output := by lin_cert using reduction23297.terms
def image23298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23298 : InImage map_19_260 image23298 := by lin_cert using (fun j : Fin 16 => decide (j.val = 4))
def reduction23298 : Bundle := named_bundle% "RealMapCertificates/relations/basis23298.json"
theorem reductionProof23298 : EqualModuloRelations reduction23298.relations reduction23298.input reduction23298.output := by lin_cert using reduction23298.terms
theorem substitutionProof23298 : IsMapEvaluation generatorImages reduction23298.relations [2829] reduction23298.output := by lin_cert using reduction23298.terms
def image23299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23299 : InImage map_19_260 image23299 := by lin_cert using (fun j : Fin 16 => decide (j.val = 5))
def reduction23299 : Bundle := named_bundle% "RealMapCertificates/relations/basis23299.json"
theorem reductionProof23299 : EqualModuloRelations reduction23299.relations reduction23299.input reduction23299.output := by lin_cert using reduction23299.terms
theorem substitutionProof23299 : IsMapEvaluation generatorImages reduction23299.relations [2828] reduction23299.output := by lin_cert using reduction23299.terms
def image23300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23300 : InImage map_19_260 image23300 := by lin_cert using (fun j : Fin 16 => decide (j.val = 6))
def reduction23300 : Bundle := named_bundle% "RealMapCertificates/relations/basis23300.json"
theorem reductionProof23300 : EqualModuloRelations reduction23300.relations reduction23300.input reduction23300.output := by lin_cert using reduction23300.terms
theorem substitutionProof23300 : IsMapEvaluation generatorImages reduction23300.relations [2827] reduction23300.output := by lin_cert using reduction23300.terms
def image23301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23301 : InImage map_19_260 image23301 := by lin_cert using (fun j : Fin 16 => decide (j.val = 7))
def reduction23301 : Bundle := named_bundle% "RealMapCertificates/relations/basis23301.json"
theorem reductionProof23301 : EqualModuloRelations reduction23301.relations reduction23301.input reduction23301.output := by lin_cert using reduction23301.terms
theorem substitutionProof23301 : IsMapEvaluation generatorImages reduction23301.relations [324,356] reduction23301.output := by lin_cert using reduction23301.terms
def image23302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23302 : InImage map_19_260 image23302 := by lin_cert using (fun j : Fin 16 => decide (j.val = 8))
def reduction23302 : Bundle := named_bundle% "RealMapCertificates/relations/basis23302.json"
theorem reductionProof23302 : EqualModuloRelations reduction23302.relations reduction23302.input reduction23302.output := by lin_cert using reduction23302.terms
theorem substitutionProof23302 : IsMapEvaluation generatorImages reduction23302.relations [3,2429] reduction23302.output := by lin_cert using reduction23302.terms
def image23303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23303 : InImage map_19_260 image23303 := by lin_cert using (fun j : Fin 16 => decide (j.val = 9))
def reduction23303 : Bundle := named_bundle% "RealMapCertificates/relations/basis23303.json"
theorem reductionProof23303 : EqualModuloRelations reduction23303.relations reduction23303.input reduction23303.output := by lin_cert using reduction23303.terms
theorem substitutionProof23303 : IsMapEvaluation generatorImages reduction23303.relations [2,2,2430] reduction23303.output := by lin_cert using reduction23303.terms
def image23304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23304 : InImage map_19_260 image23304 := by lin_cert using (fun j : Fin 16 => decide (j.val = 10))
def reduction23304 : Bundle := named_bundle% "RealMapCertificates/relations/basis23304.json"
theorem reductionProof23304 : EqualModuloRelations reduction23304.relations reduction23304.input reduction23304.output := by lin_cert using reduction23304.terms
theorem substitutionProof23304 : IsMapEvaluation generatorImages reduction23304.relations [0,2771] reduction23304.output := by lin_cert using reduction23304.terms
def image23305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23305 : InImage map_19_260 image23305 := by lin_cert using (fun j : Fin 16 => decide (j.val = 11))
def reduction23305 : Bundle := named_bundle% "RealMapCertificates/relations/basis23305.json"
theorem reductionProof23305 : EqualModuloRelations reduction23305.relations reduction23305.input reduction23305.output := by lin_cert using reduction23305.terms
theorem substitutionProof23305 : IsMapEvaluation generatorImages reduction23305.relations [0,2770] reduction23305.output := by lin_cert using reduction23305.terms
def image23306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23306 : InImage map_19_260 image23306 := by lin_cert using (fun j : Fin 16 => decide (j.val = 12))
def reduction23306 : Bundle := named_bundle% "RealMapCertificates/relations/basis23306.json"
theorem reductionProof23306 : EqualModuloRelations reduction23306.relations reduction23306.input reduction23306.output := by lin_cert using reduction23306.terms
theorem substitutionProof23306 : IsMapEvaluation generatorImages reduction23306.relations [0,2768] reduction23306.output := by lin_cert using reduction23306.terms
def image23307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23307 : InImage map_19_260 image23307 := by lin_cert using (fun j : Fin 16 => decide (j.val = 13))
def reduction23307 : Bundle := named_bundle% "RealMapCertificates/relations/basis23307.json"
theorem reductionProof23307 : EqualModuloRelations reduction23307.relations reduction23307.input reduction23307.output := by lin_cert using reduction23307.terms
theorem substitutionProof23307 : IsMapEvaluation generatorImages reduction23307.relations [0,0,2701] reduction23307.output := by lin_cert using reduction23307.terms
def image23308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23308 : InImage map_19_260 image23308 := by lin_cert using (fun j : Fin 16 => decide (j.val = 14))
def reduction23308 : Bundle := named_bundle% "RealMapCertificates/relations/basis23308.json"
theorem reductionProof23308 : EqualModuloRelations reduction23308.relations reduction23308.input reduction23308.output := by lin_cert using reduction23308.terms
theorem substitutionProof23308 : IsMapEvaluation generatorImages reduction23308.relations [0,0,2699] reduction23308.output := by lin_cert using reduction23308.terms
def image23309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23309 : InImage map_19_260 image23309 := by lin_cert using (fun j : Fin 16 => decide (j.val = 15))
def reduction23309 : Bundle := named_bundle% "RealMapCertificates/relations/basis23309.json"
theorem reductionProof23309 : EqualModuloRelations reduction23309.relations reduction23309.input reduction23309.output := by lin_cert using reduction23309.terms
theorem substitutionProof23309 : IsMapEvaluation generatorImages reduction23309.relations [0,0,2696] reduction23309.output := by lin_cert using reduction23309.terms
def map_19_261 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image23732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23732 : InImage map_19_261 image23732 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction23732 : Bundle := named_bundle% "RealMapCertificates/relations/basis23732.json"
theorem reductionProof23732 : EqualModuloRelations reduction23732.relations reduction23732.input reduction23732.output := by lin_cert using reduction23732.terms
theorem substitutionProof23732 : IsMapEvaluation generatorImages reduction23732.relations [2885] reduction23732.output := by lin_cert using reduction23732.terms
def image23733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23733 : InImage map_19_261 image23733 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction23733 : Bundle := named_bundle% "RealMapCertificates/relations/basis23733.json"
theorem reductionProof23733 : EqualModuloRelations reduction23733.relations reduction23733.input reduction23733.output := by lin_cert using reduction23733.terms
theorem substitutionProof23733 : IsMapEvaluation generatorImages reduction23733.relations [1,2768] reduction23733.output := by lin_cert using reduction23733.terms
def image23734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23734 : InImage map_19_261 image23734 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction23734 : Bundle := named_bundle% "RealMapCertificates/relations/basis23734.json"
theorem reductionProof23734 : EqualModuloRelations reduction23734.relations reduction23734.input reduction23734.output := by lin_cert using reduction23734.terms
theorem substitutionProof23734 : IsMapEvaluation generatorImages reduction23734.relations [0,2836] reduction23734.output := by lin_cert using reduction23734.terms
def image23735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23735 : InImage map_19_261 image23735 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction23735 : Bundle := named_bundle% "RealMapCertificates/relations/basis23735.json"
theorem reductionProof23735 : EqualModuloRelations reduction23735.relations reduction23735.input reduction23735.output := by lin_cert using reduction23735.terms
theorem substitutionProof23735 : IsMapEvaluation generatorImages reduction23735.relations [0,2835] reduction23735.output := by lin_cert using reduction23735.terms
def image23736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23736 : InImage map_19_261 image23736 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction23736 : Bundle := named_bundle% "RealMapCertificates/relations/basis23736.json"
theorem reductionProof23736 : EqualModuloRelations reduction23736.relations reduction23736.input reduction23736.output := by lin_cert using reduction23736.terms
theorem substitutionProof23736 : IsMapEvaluation generatorImages reduction23736.relations [0,2834] reduction23736.output := by lin_cert using reduction23736.terms
def image23737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23737 : InImage map_19_261 image23737 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction23737 : Bundle := named_bundle% "RealMapCertificates/relations/basis23737.json"
theorem reductionProof23737 : EqualModuloRelations reduction23737.relations reduction23737.input reduction23737.output := by lin_cert using reduction23737.terms
theorem substitutionProof23737 : IsMapEvaluation generatorImages reduction23737.relations [0,67,1120] reduction23737.output := by lin_cert using reduction23737.terms
def image23738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23738 : InImage map_19_261 image23738 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction23738 : Bundle := named_bundle% "RealMapCertificates/relations/basis23738.json"
theorem reductionProof23738 : EqualModuloRelations reduction23738.relations reduction23738.input reduction23738.output := by lin_cert using reduction23738.terms
theorem substitutionProof23738 : IsMapEvaluation generatorImages reduction23738.relations [0,3,2431] reduction23738.output := by lin_cert using reduction23738.terms
def image23739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23739 : InImage map_19_261 image23739 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction23739 : Bundle := named_bundle% "RealMapCertificates/relations/basis23739.json"
theorem reductionProof23739 : EqualModuloRelations reduction23739.relations reduction23739.input reduction23739.output := by lin_cert using reduction23739.terms
theorem substitutionProof23739 : IsMapEvaluation generatorImages reduction23739.relations [0,3,2430] reduction23739.output := by lin_cert using reduction23739.terms
def image23740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23740 : InImage map_19_261 image23740 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction23740 : Bundle := named_bundle% "RealMapCertificates/relations/basis23740.json"
theorem reductionProof23740 : EqualModuloRelations reduction23740.relations reduction23740.input reduction23740.output := by lin_cert using reduction23740.terms
theorem substitutionProof23740 : IsMapEvaluation generatorImages reduction23740.relations [0,0,0,2706] reduction23740.output := by lin_cert using reduction23740.terms
def image23741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23741 : InImage map_19_261 image23741 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction23741 : Bundle := named_bundle% "RealMapCertificates/relations/basis23741.json"
theorem reductionProof23741 : EqualModuloRelations reduction23741.relations reduction23741.input reduction23741.output := by lin_cert using reduction23741.terms
theorem substitutionProof23741 : IsMapEvaluation generatorImages reduction23741.relations [0,0,0,2703] reduction23741.output := by lin_cert using reduction23741.terms
def map_20_20 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image48 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation48 : InImage map_20_20 image48 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction48 : Bundle := named_bundle% "RealMapCertificates/relations/basis48.json"
theorem reductionProof48 : EqualModuloRelations reduction48.relations reduction48.input reduction48.output := by lin_cert using reduction48.terms
theorem substitutionProof48 : IsMapEvaluation generatorImages reduction48.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction48.output := by lin_cert using reduction48.terms
def map_20_59 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation341 : InImage map_20_59 image341 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction341 : Bundle := named_bundle% "RealMapCertificates/relations/basis341.json"
theorem reductionProof341 : EqualModuloRelations reduction341.relations reduction341.input reduction341.output := by lin_cert using reduction341.terms
theorem substitutionProof341 : IsMapEvaluation generatorImages reduction341.relations [0,0,0,0,0,50] reduction341.output := by lin_cert using reduction341.terms
def map_20_61 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image361 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation361 : InImage map_20_61 image361 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction361 : Bundle := named_bundle% "RealMapCertificates/relations/basis361.json"
theorem reductionProof361 : EqualModuloRelations reduction361.relations reduction361.input reduction361.output := by lin_cert using reduction361.terms
theorem substitutionProof361 : IsMapEvaluation generatorImages reduction361.relations [1,58] reduction361.output := by lin_cert using reduction361.terms
def map_20_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image420 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation420 : InImage map_20_66 image420 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction420 : Bundle := named_bundle% "RealMapCertificates/relations/basis420.json"
theorem reductionProof420 : EqualModuloRelations reduction420.relations reduction420.input reduction420.output := by lin_cert using reduction420.terms
theorem substitutionProof420 : IsMapEvaluation generatorImages reduction420.relations [71] reduction420.output := by lin_cert using reduction420.terms
def map_20_67 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image441 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation441 : InImage map_20_67 image441 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction441 : Bundle := named_bundle% "RealMapCertificates/relations/basis441.json"
theorem reductionProof441 : EqualModuloRelations reduction441.relations reduction441.input reduction441.output := by lin_cert using reduction441.terms
theorem substitutionProof441 : IsMapEvaluation generatorImages reduction441.relations [0,0,0,0,0,0,0,59] reduction441.output := by lin_cert using reduction441.terms
def map_20_69 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image478 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation478 : InImage map_20_69 image478 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction478 : Bundle := named_bundle% "RealMapCertificates/relations/basis478.json"
theorem reductionProof478 : EqualModuloRelations reduction478.relations reduction478.input reduction478.output := by lin_cert using reduction478.terms
theorem substitutionProof478 : IsMapEvaluation generatorImages reduction478.relations [77] reduction478.output := by lin_cert using reduction478.terms
def map_20_70 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image502 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation502 : InImage map_20_70 image502 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction502 : Bundle := named_bundle% "RealMapCertificates/relations/basis502.json"
theorem reductionProof502 : EqualModuloRelations reduction502.relations reduction502.input reduction502.output := by lin_cert using reduction502.terms
theorem substitutionProof502 : IsMapEvaluation generatorImages reduction502.relations [0,78] reduction502.output := by lin_cert using reduction502.terms
def map_20_72 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image536 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation536 : InImage map_20_72 image536 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction536 : Bundle := named_bundle% "RealMapCertificates/relations/basis536.json"
theorem reductionProof536 : EqualModuloRelations reduction536.relations reduction536.input reduction536.output := by lin_cert using reduction536.terms
theorem substitutionProof536 : IsMapEvaluation generatorImages reduction536.relations [8,49] reduction536.output := by lin_cert using reduction536.terms
def map_20_73 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image567 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation567 : InImage map_20_73 image567 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction567 : Bundle := named_bundle% "RealMapCertificates/relations/basis567.json"
theorem reductionProof567 : EqualModuloRelations reduction567.relations reduction567.input reduction567.output := by lin_cert using reduction567.terms
theorem substitutionProof567 : IsMapEvaluation generatorImages reduction567.relations [0,8,50] reduction567.output := by lin_cert using reduction567.terms
def map_20_75 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image607 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation607 : InImage map_20_75 image607 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction607 : Bundle := named_bundle% "RealMapCertificates/relations/basis607.json"
theorem reductionProof607 : EqualModuloRelations reduction607.relations reduction607.input reduction607.output := by lin_cert using reduction607.terms
theorem substitutionProof607 : IsMapEvaluation generatorImages reduction607.relations [8,55] reduction607.output := by lin_cert using reduction607.terms
def map_20_76 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image630 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation630 : InImage map_20_76 image630 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction630 : Bundle := named_bundle% "RealMapCertificates/relations/basis630.json"
theorem reductionProof630 : EqualModuloRelations reduction630.relations reduction630.input reduction630.output := by lin_cert using reduction630.terms
theorem substitutionProof630 : IsMapEvaluation generatorImages reduction630.relations [0,8,56] reduction630.output := by lin_cert using reduction630.terms
def map_20_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image670 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation670 : InImage map_20_78 image670 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction670 : Bundle := named_bundle% "RealMapCertificates/relations/basis670.json"
theorem reductionProof670 : EqualModuloRelations reduction670.relations reduction670.input reduction670.output := by lin_cert using reduction670.terms
theorem substitutionProof670 : IsMapEvaluation generatorImages reduction670.relations [8,8,31] reduction670.output := by lin_cert using reduction670.terms
def map_20_79 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation697 : InImage map_20_79 image697 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction697 : Bundle := named_bundle% "RealMapCertificates/relations/basis697.json"
theorem reductionProof697 : EqualModuloRelations reduction697.relations reduction697.input reduction697.output := by lin_cert using reduction697.terms
theorem substitutionProof697 : IsMapEvaluation generatorImages reduction697.relations [0,8,16,17] reduction697.output := by lin_cert using reduction697.terms
def map_20_81 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image738 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation738 : InImage map_20_81 image738 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction738 : Bundle := named_bundle% "RealMapCertificates/relations/basis738.json"
theorem reductionProof738 : EqualModuloRelations reduction738.relations reduction738.input reduction738.output := by lin_cert using reduction738.terms
theorem substitutionProof738 : IsMapEvaluation generatorImages reduction738.relations [8,8,39] reduction738.output := by lin_cert using reduction738.terms
def map_20_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation764 : InImage map_20_82 image764 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction764 : Bundle := named_bundle% "RealMapCertificates/relations/basis764.json"
theorem reductionProof764 : EqualModuloRelations reduction764.relations reduction764.input reduction764.output := by lin_cert using reduction764.terms
theorem substitutionProof764 : IsMapEvaluation generatorImages reduction764.relations [0,0,0,0,0,0,0,0,0,0,90] reduction764.output := by lin_cert using reduction764.terms
def map_20_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation786 : InImage map_20_83 image786 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction786 : Bundle := named_bundle% "RealMapCertificates/relations/basis786.json"
theorem reductionProof786 : EqualModuloRelations reduction786.relations reduction786.input reduction786.output := by lin_cert using reduction786.terms
theorem substitutionProof786 : IsMapEvaluation generatorImages reduction786.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction786.output := by lin_cert using reduction786.terms
def map_20_84 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image807 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation807 : InImage map_20_84 image807 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction807 : Bundle := named_bundle% "RealMapCertificates/relations/basis807.json"
theorem reductionProof807 : EqualModuloRelations reduction807.relations reduction807.input reduction807.output := by lin_cert using reduction807.terms
theorem substitutionProof807 : IsMapEvaluation generatorImages reduction807.relations [8,8,8,16] reduction807.output := by lin_cert using reduction807.terms
def map_20_87 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image891 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation891 : InImage map_20_87 image891 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction891 : Bundle := named_bundle% "RealMapCertificates/relations/basis891.json"
theorem reductionProof891 : EqualModuloRelations reduction891.relations reduction891.input reduction891.output := by lin_cert using reduction891.terms
theorem substitutionProof891 : IsMapEvaluation generatorImages reduction891.relations [8,8,8,19] reduction891.output := by lin_cert using reduction891.terms
def map_20_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation941 : InImage map_20_89 image941 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction941 : Bundle := named_bundle% "RealMapCertificates/relations/basis941.json"
theorem reductionProof941 : EqualModuloRelations reduction941.relations reduction941.input reduction941.output := by lin_cert using reduction941.terms
theorem substitutionProof941 : IsMapEvaluation generatorImages reduction941.relations [0,0,137] reduction941.output := by lin_cert using reduction941.terms
def map_20_90 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation967 : InImage map_20_90 image967 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction967 : Bundle := named_bundle% "RealMapCertificates/relations/basis967.json"
theorem reductionProof967 : EqualModuloRelations reduction967.relations reduction967.input reduction967.output := by lin_cert using reduction967.terms
theorem substitutionProof967 : IsMapEvaluation generatorImages reduction967.relations [8,8,8,8,8] reduction967.output := by lin_cert using reduction967.terms
def image968 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation968 : InImage map_20_90 image968 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction968 : Bundle := named_bundle% "RealMapCertificates/relations/basis968.json"
theorem reductionProof968 : EqualModuloRelations reduction968.relations reduction968.input reduction968.output := by lin_cert using reduction968.terms
theorem substitutionProof968 : IsMapEvaluation generatorImages reduction968.relations [0,0,0,138] reduction968.output := by lin_cert using reduction968.terms
def map_20_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1001 : InImage map_20_91 image1001 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1001 : Bundle := named_bundle% "RealMapCertificates/relations/basis1001.json"
theorem reductionProof1001 : EqualModuloRelations reduction1001.relations reduction1001.input reduction1001.output := by lin_cert using reduction1001.terms
theorem substitutionProof1001 : IsMapEvaluation generatorImages reduction1001.relations [1,1,137] reduction1001.output := by lin_cert using reduction1001.terms
def map_20_92 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1024 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1024 : InImage map_20_92 image1024 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1024 : Bundle := named_bundle% "RealMapCertificates/relations/basis1024.json"
theorem reductionProof1024 : EqualModuloRelations reduction1024.relations reduction1024.input reduction1024.output := by lin_cert using reduction1024.terms
theorem substitutionProof1024 : IsMapEvaluation generatorImages reduction1024.relations [0,0,146] reduction1024.output := by lin_cert using reduction1024.terms
def map_20_93 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1049 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1049 : InImage map_20_93 image1049 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1049 : Bundle := named_bundle% "RealMapCertificates/relations/basis1049.json"
theorem reductionProof1049 : EqualModuloRelations reduction1049.relations reduction1049.input reduction1049.output := by lin_cert using reduction1049.terms
theorem substitutionProof1049 : IsMapEvaluation generatorImages reduction1049.relations [8,8,8,8,9] reduction1049.output := by lin_cert using reduction1049.terms
def map_20_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1098 : InImage map_20_95 image1098 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1098 : Bundle := named_bundle% "RealMapCertificates/relations/basis1098.json"
theorem reductionProof1098 : EqualModuloRelations reduction1098.relations reduction1098.input reduction1098.output := by lin_cert using reduction1098.terms
theorem substitutionProof1098 : IsMapEvaluation generatorImages reduction1098.relations [0,0,16,64] reduction1098.output := by lin_cert using reduction1098.terms
def map_20_96 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image1115 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1115 : InImage map_20_96 image1115 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1115 : Bundle := named_bundle% "RealMapCertificates/relations/basis1115.json"
theorem reductionProof1115 : EqualModuloRelations reduction1115.relations reduction1115.input reduction1115.output := by lin_cert using reduction1115.terms
theorem substitutionProof1115 : IsMapEvaluation generatorImages reduction1115.relations [8,8,8,8,13] reduction1115.output := by lin_cert using reduction1115.terms
def image1116 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1116 : InImage map_20_96 image1116 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1116 : Bundle := named_bundle% "RealMapCertificates/relations/basis1116.json"
theorem reductionProof1116 : EqualModuloRelations reduction1116.relations reduction1116.input reduction1116.output := by lin_cert using reduction1116.terms
theorem substitutionProof1116 : IsMapEvaluation generatorImages reduction1116.relations [0,0,0,0,149] reduction1116.output := by lin_cert using reduction1116.terms
def map_20_97 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1147 : InImage map_20_97 image1147 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1147 : Bundle := named_bundle% "RealMapCertificates/relations/basis1147.json"
theorem reductionProof1147 : EqualModuloRelations reduction1147.relations reduction1147.input reduction1147.output := by lin_cert using reduction1147.terms
theorem substitutionProof1147 : IsMapEvaluation generatorImages reduction1147.relations [0,0,0,0,154] reduction1147.output := by lin_cert using reduction1147.terms
def map_20_98 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1168 : InImage map_20_98 image1168 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1168 : Bundle := named_bundle% "RealMapCertificates/relations/basis1168.json"
theorem reductionProof1168 : EqualModuloRelations reduction1168.relations reduction1168.input reduction1168.output := by lin_cert using reduction1168.terms
theorem substitutionProof1168 : IsMapEvaluation generatorImages reduction1168.relations [0,0,8,112] reduction1168.output := by lin_cert using reduction1168.terms
def map_20_99 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1193 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1193 : InImage map_20_99 image1193 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1193 : Bundle := named_bundle% "RealMapCertificates/relations/basis1193.json"
theorem reductionProof1193 : EqualModuloRelations reduction1193.relations reduction1193.input reduction1193.output := by lin_cert using reduction1193.terms
theorem substitutionProof1193 : IsMapEvaluation generatorImages reduction1193.relations [8,8,8,9,13] reduction1193.output := by lin_cert using reduction1193.terms
def map_20_101 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1251 : InImage map_20_101 image1251 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1251 : Bundle := named_bundle% "RealMapCertificates/relations/basis1251.json"
theorem reductionProof1251 : EqualModuloRelations reduction1251.relations reduction1251.input reduction1251.output := by lin_cert using reduction1251.terms
theorem substitutionProof1251 : IsMapEvaluation generatorImages reduction1251.relations [0,0,8,8,64] reduction1251.output := by lin_cert using reduction1251.terms
def map_20_102 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1285 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1285 : InImage map_20_102 image1285 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1285 : Bundle := named_bundle% "RealMapCertificates/relations/basis1285.json"
theorem reductionProof1285 : EqualModuloRelations reduction1285.relations reduction1285.input reduction1285.output := by lin_cert using reduction1285.terms
theorem substitutionProof1285 : IsMapEvaluation generatorImages reduction1285.relations [8,8,8,13,13] reduction1285.output := by lin_cert using reduction1285.terms
def map_20_103 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1320 : InImage map_20_103 image1320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1320 : Bundle := named_bundle% "RealMapCertificates/relations/basis1320.json"
theorem reductionProof1320 : EqualModuloRelations reduction1320.relations reduction1320.input reduction1320.output := by lin_cert using reduction1320.terms
theorem substitutionProof1320 : IsMapEvaluation generatorImages reduction1320.relations [0,0,0,0,0,167] reduction1320.output := by lin_cert using reduction1320.terms
def map_20_104 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1348 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1348 : InImage map_20_104 image1348 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1348 : Bundle := named_bundle% "RealMapCertificates/relations/basis1348.json"
theorem reductionProof1348 : EqualModuloRelations reduction1348.relations reduction1348.input reduction1348.output := by lin_cert using reduction1348.terms
theorem substitutionProof1348 : IsMapEvaluation generatorImages reduction1348.relations [0,0,0,0,0,172] reduction1348.output := by lin_cert using reduction1348.terms
def map_20_105 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1388 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1388 : InImage map_20_105 image1388 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1388 : Bundle := named_bundle% "RealMapCertificates/relations/basis1388.json"
theorem reductionProof1388 : EqualModuloRelations reduction1388.relations reduction1388.input reduction1388.output := by lin_cert using reduction1388.terms
theorem substitutionProof1388 : IsMapEvaluation generatorImages reduction1388.relations [8,8,9,13,13] reduction1388.output := by lin_cert using reduction1388.terms
def map_20_107 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1453 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1453 : InImage map_20_107 image1453 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1453 : Bundle := named_bundle% "RealMapCertificates/relations/basis1453.json"
theorem reductionProof1453 : EqualModuloRelations reduction1453.relations reduction1453.input reduction1453.output := by lin_cert using reduction1453.terms
theorem substitutionProof1453 : IsMapEvaluation generatorImages reduction1453.relations [206] reduction1453.output := by lin_cert using reduction1453.terms
def map_20_108 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1487 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1487 : InImage map_20_108 image1487 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1487 : Bundle := named_bundle% "RealMapCertificates/relations/basis1487.json"
theorem reductionProof1487 : EqualModuloRelations reduction1487.relations reduction1487.input reduction1487.output := by lin_cert using reduction1487.terms
theorem substitutionProof1487 : IsMapEvaluation generatorImages reduction1487.relations [17,113] reduction1487.output := by lin_cert using reduction1487.terms
def image1488 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1488 : InImage map_20_108 image1488 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1488 : Bundle := named_bundle% "RealMapCertificates/relations/basis1488.json"
theorem reductionProof1488 : EqualModuloRelations reduction1488.relations reduction1488.input reduction1488.output := by lin_cert using reduction1488.terms
theorem substitutionProof1488 : IsMapEvaluation generatorImages reduction1488.relations [8,8,13,13,13] reduction1488.output := by lin_cert using reduction1488.terms
def map_20_110 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1561 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1561 : InImage map_20_110 image1561 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1561 : Bundle := named_bundle% "RealMapCertificates/relations/basis1561.json"
theorem reductionProof1561 : EqualModuloRelations reduction1561.relations reduction1561.input reduction1561.output := by lin_cert using reduction1561.terms
theorem substitutionProof1561 : IsMapEvaluation generatorImages reduction1561.relations [8,149] reduction1561.output := by lin_cert using reduction1561.terms
def map_20_111 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1608 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1608 : InImage map_20_111 image1608 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1608 : Bundle := named_bundle% "RealMapCertificates/relations/basis1608.json"
theorem reductionProof1608 : EqualModuloRelations reduction1608.relations reduction1608.input reduction1608.output := by lin_cert using reduction1608.terms
theorem substitutionProof1608 : IsMapEvaluation generatorImages reduction1608.relations [8,154] reduction1608.output := by lin_cert using reduction1608.terms
def image1609 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1609 : InImage map_20_111 image1609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1609 : Bundle := named_bundle% "RealMapCertificates/relations/basis1609.json"
theorem reductionProof1609 : EqualModuloRelations reduction1609.relations reduction1609.input reduction1609.output := by lin_cert using reduction1609.terms
theorem substitutionProof1609 : IsMapEvaluation generatorImages reduction1609.relations [8,9,13,13,13] reduction1609.output := by lin_cert using reduction1609.terms
def map_20_113 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1678 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1678 : InImage map_20_113 image1678 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1678 : Bundle := named_bundle% "RealMapCertificates/relations/basis1678.json"
theorem reductionProof1678 : EqualModuloRelations reduction1678.relations reduction1678.input reduction1678.output := by lin_cert using reduction1678.terms
theorem substitutionProof1678 : IsMapEvaluation generatorImages reduction1678.relations [8,160] reduction1678.output := by lin_cert using reduction1678.terms
def image1679 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1679 : InImage map_20_113 image1679 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1679 : Bundle := named_bundle% "RealMapCertificates/relations/basis1679.json"
theorem reductionProof1679 : EqualModuloRelations reduction1679.relations reduction1679.input reduction1679.output := by lin_cert using reduction1679.terms
theorem substitutionProof1679 : IsMapEvaluation generatorImages reduction1679.relations [1,42,64] reduction1679.output := by lin_cert using reduction1679.terms
def map_20_114 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1720 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1720 : InImage map_20_114 image1720 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1720 : Bundle := named_bundle% "RealMapCertificates/relations/basis1720.json"
theorem reductionProof1720 : EqualModuloRelations reduction1720.relations reduction1720.input reduction1720.output := by lin_cert using reduction1720.terms
theorem substitutionProof1720 : IsMapEvaluation generatorImages reduction1720.relations [8,162] reduction1720.output := by lin_cert using reduction1720.terms
def image1721 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1721 : InImage map_20_114 image1721 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1721 : Bundle := named_bundle% "RealMapCertificates/relations/basis1721.json"
theorem reductionProof1721 : EqualModuloRelations reduction1721.relations reduction1721.input reduction1721.output := by lin_cert using reduction1721.terms
theorem substitutionProof1721 : IsMapEvaluation generatorImages reduction1721.relations [8,13,13,13,13] reduction1721.output := by lin_cert using reduction1721.terms
end RealMapCertificates
