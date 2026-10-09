import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
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
  | 52 => []
  | 64 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 83 => []
  | 89 => []
  | 101 => []
  | 134 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 187 => []
  | 188 => []
  | 194 => [[7,10,12]]
  | 201 => []
  | 209 => []
  | 212 => []
  | 220 => []
  | 250 => []
  | 254 => []
  | 255 => []
  | 260 => []
  | 261 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 286 => []
  | 291 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 301 => []
  | 303 => []
  | 316 => []
  | 317 => []
  | 318 => []
  | 324 => []
  | 327 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 349 => []
  | 355 => []
  | 358 => []
  | 359 => []
  | 381 => []
  | 420 => []
  | 422 => []
  | 437 => []
  | 440 => []
  | 447 => []
  | 449 => []
  | 455 => []
  | 481 => []
  | 482 => []
  | 492 => []
  | 500 => []
  | 510 => []
  | 538 => []
  | 539 => []
  | 551 => []
  | 568 => []
  | 582 => []
  | 587 => []
  | 603 => []
  | 608 => []
  | 609 => []
  | 627 => []
  | _ => []
def map_20_116 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1783 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1783 : InImage map_20_116 image1783 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1783 : Bundle := named_bundle% "RealMapCertificates/relations/basis1783.json"
theorem reductionProof1783 : EqualModuloRelations reduction1783.relations reduction1783.input reduction1783.output := by lin_cert using reduction1783.terms
theorem substitutionProof1783 : IsMapEvaluation generatorImages reduction1783.relations [8,166] reduction1783.output := by lin_cert using reduction1783.terms
def map_20_117 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1830 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1830 : InImage map_20_117 image1830 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1830 : Bundle := named_bundle% "RealMapCertificates/relations/basis1830.json"
theorem reductionProof1830 : EqualModuloRelations reduction1830.relations reduction1830.input reduction1830.output := by lin_cert using reduction1830.terms
theorem substitutionProof1830 : IsMapEvaluation generatorImages reduction1830.relations [9,13,13,13,13] reduction1830.output := by lin_cert using reduction1830.terms
def image1831 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1831 : InImage map_20_117 image1831 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1831 : Bundle := named_bundle% "RealMapCertificates/relations/basis1831.json"
theorem reductionProof1831 : EqualModuloRelations reduction1831.relations reduction1831.input reduction1831.output := by lin_cert using reduction1831.terms
theorem substitutionProof1831 : IsMapEvaluation generatorImages reduction1831.relations [8,17,80] reduction1831.output := by lin_cert using reduction1831.terms
def map_20_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1899 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1899 : InImage map_20_119 image1899 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1899 : Bundle := named_bundle% "RealMapCertificates/relations/basis1899.json"
theorem reductionProof1899 : EqualModuloRelations reduction1899.relations reduction1899.input reduction1899.output := by lin_cert using reduction1899.terms
theorem substitutionProof1899 : IsMapEvaluation generatorImages reduction1899.relations [8,180] reduction1899.output := by lin_cert using reduction1899.terms
def map_20_120 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1944 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1944 : InImage map_20_120 image1944 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1944 : Bundle := named_bundle% "RealMapCertificates/relations/basis1944.json"
theorem reductionProof1944 : EqualModuloRelations reduction1944.relations reduction1944.input reduction1944.output := by lin_cert using reduction1944.terms
theorem substitutionProof1944 : IsMapEvaluation generatorImages reduction1944.relations [13,13,13,13,13] reduction1944.output := by lin_cert using reduction1944.terms
def image1945 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1945 : InImage map_20_120 image1945 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1945 : Bundle := named_bundle% "RealMapCertificates/relations/basis1945.json"
theorem reductionProof1945 : EqualModuloRelations reduction1945.relations reduction1945.input reduction1945.output := by lin_cert using reduction1945.terms
theorem substitutionProof1945 : IsMapEvaluation generatorImages reduction1945.relations [8,20,80] reduction1945.output := by lin_cert using reduction1945.terms
def map_20_121 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1982 : InImage map_20_121 image1982 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1982 : Bundle := named_bundle% "RealMapCertificates/relations/basis1982.json"
theorem reductionProof1982 : EqualModuloRelations reduction1982.relations reduction1982.input reduction1982.output := by lin_cert using reduction1982.terms
theorem substitutionProof1982 : IsMapEvaluation generatorImages reduction1982.relations [0,0,260] reduction1982.output := by lin_cert using reduction1982.terms
def map_20_122 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2019 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2019 : InImage map_20_122 image2019 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2019 : Bundle := named_bundle% "RealMapCertificates/relations/basis2019.json"
theorem reductionProof2019 : EqualModuloRelations reduction2019.relations reduction2019.input reduction2019.output := by lin_cert using reduction2019.terms
theorem substitutionProof2019 : IsMapEvaluation generatorImages reduction2019.relations [8,194] reduction2019.output := by lin_cert using reduction2019.terms
def image2020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2020 : InImage map_20_122 image2020 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2020 : Bundle := named_bundle% "RealMapCertificates/relations/basis2020.json"
theorem reductionProof2020 : EqualModuloRelations reduction2020.relations reduction2020.input reduction2020.output := by lin_cert using reduction2020.terms
theorem substitutionProof2020 : IsMapEvaluation generatorImages reduction2020.relations [0,274] reduction2020.output := by lin_cert using reduction2020.terms
def map_20_123 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2066 : InImage map_20_123 image2066 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2066 : Bundle := named_bundle% "RealMapCertificates/relations/basis2066.json"
theorem reductionProof2066 : EqualModuloRelations reduction2066.relations reduction2066.input reduction2066.output := by lin_cert using reduction2066.terms
theorem substitutionProof2066 : IsMapEvaluation generatorImages reduction2066.relations [8,22,80] reduction2066.output := by lin_cert using reduction2066.terms
def image2067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2067 : InImage map_20_123 image2067 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2067 : Bundle := named_bundle% "RealMapCertificates/relations/basis2067.json"
theorem reductionProof2067 : EqualModuloRelations reduction2067.relations reduction2067.input reduction2067.output := by lin_cert using reduction2067.terms
theorem substitutionProof2067 : IsMapEvaluation generatorImages reduction2067.relations [1,1,260] reduction2067.output := by lin_cert using reduction2067.terms
def map_20_124 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2104 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2104 : InImage map_20_124 image2104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2104 : Bundle := named_bundle% "RealMapCertificates/relations/basis2104.json"
theorem reductionProof2104 : EqualModuloRelations reduction2104.relations reduction2104.input reduction2104.output := by lin_cert using reduction2104.terms
theorem substitutionProof2104 : IsMapEvaluation generatorImages reduction2104.relations [0,0,278] reduction2104.output := by lin_cert using reduction2104.terms
def map_20_125 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2145 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2145 : InImage map_20_125 image2145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2145 : Bundle := named_bundle% "RealMapCertificates/relations/basis2145.json"
theorem reductionProof2145 : EqualModuloRelations reduction2145.relations reduction2145.input reduction2145.output := by lin_cert using reduction2145.terms
theorem substitutionProof2145 : IsMapEvaluation generatorImages reduction2145.relations [9,194] reduction2145.output := by lin_cert using reduction2145.terms
def map_20_126 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2194 : InImage map_20_126 image2194 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2194 : Bundle := named_bundle% "RealMapCertificates/relations/basis2194.json"
theorem reductionProof2194 : EqualModuloRelations reduction2194.relations reduction2194.input reduction2194.output := by lin_cert using reduction2194.terms
theorem substitutionProof2194 : IsMapEvaluation generatorImages reduction2194.relations [64,64] reduction2194.output := by lin_cert using reduction2194.terms
def image2195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2195 : InImage map_20_126 image2195 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2195 : Bundle := named_bundle% "RealMapCertificates/relations/basis2195.json"
theorem reductionProof2195 : EqualModuloRelations reduction2195.relations reduction2195.input reduction2195.output := by lin_cert using reduction2195.terms
theorem substitutionProof2195 : IsMapEvaluation generatorImages reduction2195.relations [13,13,13,52] reduction2195.output := by lin_cert using reduction2195.terms
def image2196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2196 : InImage map_20_126 image2196 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2196 : Bundle := named_bundle% "RealMapCertificates/relations/basis2196.json"
theorem reductionProof2196 : EqualModuloRelations reduction2196.relations reduction2196.input reduction2196.output := by lin_cert using reduction2196.terms
theorem substitutionProof2196 : IsMapEvaluation generatorImages reduction2196.relations [8,23,89] reduction2196.output := by lin_cert using reduction2196.terms
def map_20_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2236 : InImage map_20_127 image2236 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2236 : Bundle := named_bundle% "RealMapCertificates/relations/basis2236.json"
theorem reductionProof2236 : EqualModuloRelations reduction2236.relations reduction2236.input reduction2236.output := by lin_cert using reduction2236.terms
theorem substitutionProof2236 : IsMapEvaluation generatorImages reduction2236.relations [0,299] reduction2236.output := by lin_cert using reduction2236.terms
def image2237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2237 : InImage map_20_127 image2237 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2237 : Bundle := named_bundle% "RealMapCertificates/relations/basis2237.json"
theorem reductionProof2237 : EqualModuloRelations reduction2237.relations reduction2237.input reduction2237.output := by lin_cert using reduction2237.terms
theorem substitutionProof2237 : IsMapEvaluation generatorImages reduction2237.relations [0,0,291] reduction2237.output := by lin_cert using reduction2237.terms
def map_20_128 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2279 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2279 : InImage map_20_128 image2279 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2279 : Bundle := named_bundle% "RealMapCertificates/relations/basis2279.json"
theorem reductionProof2279 : EqualModuloRelations reduction2279.relations reduction2279.input reduction2279.output := by lin_cert using reduction2279.terms
theorem substitutionProof2279 : IsMapEvaluation generatorImages reduction2279.relations [13,194] reduction2279.output := by lin_cert using reduction2279.terms
def image2280 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2280 : InImage map_20_128 image2280 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2280 : Bundle := named_bundle% "RealMapCertificates/relations/basis2280.json"
theorem reductionProof2280 : EqualModuloRelations reduction2280.relations reduction2280.input reduction2280.output := by lin_cert using reduction2280.terms
theorem substitutionProof2280 : IsMapEvaluation generatorImages reduction2280.relations [0,0,0,292] reduction2280.output := by lin_cert using reduction2280.terms
def map_20_129 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2349 : InImage map_20_129 image2349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2349 : Bundle := named_bundle% "RealMapCertificates/relations/basis2349.json"
theorem reductionProof2349 : EqualModuloRelations reduction2349.relations reduction2349.input reduction2349.output := by lin_cert using reduction2349.terms
theorem substitutionProof2349 : IsMapEvaluation generatorImages reduction2349.relations [64,72] reduction2349.output := by lin_cert using reduction2349.terms
def image2350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2350 : InImage map_20_129 image2350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2350 : Bundle := named_bundle% "RealMapCertificates/relations/basis2350.json"
theorem reductionProof2350 : EqualModuloRelations reduction2350.relations reduction2350.input reduction2350.output := by lin_cert using reduction2350.terms
theorem substitutionProof2350 : IsMapEvaluation generatorImages reduction2350.relations [8,23,101] reduction2350.output := by lin_cert using reduction2350.terms
def image2351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2351 : InImage map_20_129 image2351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2351 : Bundle := named_bundle% "RealMapCertificates/relations/basis2351.json"
theorem reductionProof2351 : EqualModuloRelations reduction2351.relations reduction2351.input reduction2351.output := by lin_cert using reduction2351.terms
theorem substitutionProof2351 : IsMapEvaluation generatorImages reduction2351.relations [0,0,0,301] reduction2351.output := by lin_cert using reduction2351.terms
def image2352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2352 : InImage map_20_129 image2352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2352 : Bundle := named_bundle% "RealMapCertificates/relations/basis2352.json"
theorem reductionProof2352 : EqualModuloRelations reduction2352.relations reduction2352.input reduction2352.output := by lin_cert using reduction2352.terms
theorem substitutionProof2352 : IsMapEvaluation generatorImages reduction2352.relations [0,0,0,300] reduction2352.output := by lin_cert using reduction2352.terms
def map_20_130 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image2402 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2402 : InImage map_20_130 image2402 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2402 : Bundle := named_bundle% "RealMapCertificates/relations/basis2402.json"
theorem reductionProof2402 : EqualModuloRelations reduction2402.relations reduction2402.input reduction2402.output := by lin_cert using reduction2402.terms
theorem substitutionProof2402 : IsMapEvaluation generatorImages reduction2402.relations [0,327] reduction2402.output := by lin_cert using reduction2402.terms
def image2403 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2403 : InImage map_20_130 image2403 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2403 : Bundle := named_bundle% "RealMapCertificates/relations/basis2403.json"
theorem reductionProof2403 : EqualModuloRelations reduction2403.relations reduction2403.input reduction2403.output := by lin_cert using reduction2403.terms
theorem substitutionProof2403 : IsMapEvaluation generatorImages reduction2403.relations [0,0,317] reduction2403.output := by lin_cert using reduction2403.terms
def image2404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2404 : InImage map_20_130 image2404 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2404 : Bundle := named_bundle% "RealMapCertificates/relations/basis2404.json"
theorem reductionProof2404 : EqualModuloRelations reduction2404.relations reduction2404.input reduction2404.output := by lin_cert using reduction2404.terms
theorem substitutionProof2404 : IsMapEvaluation generatorImages reduction2404.relations [0,0,316] reduction2404.output := by lin_cert using reduction2404.terms
def map_20_132 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2536 : InImage map_20_132 image2536 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2536 : Bundle := named_bundle% "RealMapCertificates/relations/basis2536.json"
theorem reductionProof2536 : EqualModuloRelations reduction2536.relations reduction2536.input reduction2536.output := by lin_cert using reduction2536.terms
theorem substitutionProof2536 : IsMapEvaluation generatorImages reduction2536.relations [16,187] reduction2536.output := by lin_cert using reduction2536.terms
def image2537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2537 : InImage map_20_132 image2537 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2537 : Bundle := named_bundle% "RealMapCertificates/relations/basis2537.json"
theorem reductionProof2537 : EqualModuloRelations reduction2537.relations reduction2537.input reduction2537.output := by lin_cert using reduction2537.terms
theorem substitutionProof2537 : IsMapEvaluation generatorImages reduction2537.relations [9,23,101] reduction2537.output := by lin_cert using reduction2537.terms
def map_20_133 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image2596 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2596 : InImage map_20_133 image2596 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2596 : Bundle := named_bundle% "RealMapCertificates/relations/basis2596.json"
theorem reductionProof2596 : EqualModuloRelations reduction2596.relations reduction2596.input reduction2596.output := by lin_cert using reduction2596.terms
theorem substitutionProof2596 : IsMapEvaluation generatorImages reduction2596.relations [69,78] reduction2596.output := by lin_cert using reduction2596.terms
def image2597 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2597 : InImage map_20_133 image2597 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2597 : Bundle := named_bundle% "RealMapCertificates/relations/basis2597.json"
theorem reductionProof2597 : EqualModuloRelations reduction2597.relations reduction2597.input reduction2597.output := by lin_cert using reduction2597.terms
theorem substitutionProof2597 : IsMapEvaluation generatorImages reduction2597.relations [0,16,188] reduction2597.output := by lin_cert using reduction2597.terms
def image2598 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2598 : InImage map_20_133 image2598 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2598 : Bundle := named_bundle% "RealMapCertificates/relations/basis2598.json"
theorem reductionProof2598 : EqualModuloRelations reduction2598.relations reduction2598.input reduction2598.output := by lin_cert using reduction2598.terms
theorem substitutionProof2598 : IsMapEvaluation generatorImages reduction2598.relations [0,0,347] reduction2598.output := by lin_cert using reduction2598.terms
def image2599 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2599 : InImage map_20_133 image2599 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2599 : Bundle := named_bundle% "RealMapCertificates/relations/basis2599.json"
theorem reductionProof2599 : EqualModuloRelations reduction2599.relations reduction2599.input reduction2599.output := by lin_cert using reduction2599.terms
theorem substitutionProof2599 : IsMapEvaluation generatorImages reduction2599.relations [0,0,346] reduction2599.output := by lin_cert using reduction2599.terms
def map_20_134 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image2661 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2661 : InImage map_20_134 image2661 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2661 : Bundle := named_bundle% "RealMapCertificates/relations/basis2661.json"
theorem reductionProof2661 : EqualModuloRelations reduction2661.relations reduction2661.input reduction2661.output := by lin_cert using reduction2661.terms
theorem substitutionProof2661 : IsMapEvaluation generatorImages reduction2661.relations [13,220] reduction2661.output := by lin_cert using reduction2661.terms
def image2662 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2662 : InImage map_20_134 image2662 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2662 : Bundle := named_bundle% "RealMapCertificates/relations/basis2662.json"
theorem reductionProof2662 : EqualModuloRelations reduction2662.relations reduction2662.input reduction2662.output := by lin_cert using reduction2662.terms
theorem substitutionProof2662 : IsMapEvaluation generatorImages reduction2662.relations [0,0,355] reduction2662.output := by lin_cert using reduction2662.terms
def image2663 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2663 : InImage map_20_134 image2663 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2663 : Bundle := named_bundle% "RealMapCertificates/relations/basis2663.json"
theorem reductionProof2663 : EqualModuloRelations reduction2663.relations reduction2663.input reduction2663.output := by lin_cert using reduction2663.terms
theorem substitutionProof2663 : IsMapEvaluation generatorImages reduction2663.relations [0,0,17,188] reduction2663.output := by lin_cert using reduction2663.terms
def map_20_135 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image2760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2760 : InImage map_20_135 image2760 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2760 : Bundle := named_bundle% "RealMapCertificates/relations/basis2760.json"
theorem reductionProof2760 : EqualModuloRelations reduction2760.relations reduction2760.input reduction2760.output := by lin_cert using reduction2760.terms
theorem substitutionProof2760 : IsMapEvaluation generatorImages reduction2760.relations [13,23,101] reduction2760.output := by lin_cert using reduction2760.terms
def image2761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2761 : InImage map_20_135 image2761 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2761 : Bundle := named_bundle% "RealMapCertificates/relations/basis2761.json"
theorem reductionProof2761 : EqualModuloRelations reduction2761.relations reduction2761.input reduction2761.output := by lin_cert using reduction2761.terms
theorem substitutionProof2761 : IsMapEvaluation generatorImages reduction2761.relations [8,254] reduction2761.output := by lin_cert using reduction2761.terms
def image2762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2762 : InImage map_20_135 image2762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2762 : Bundle := named_bundle% "RealMapCertificates/relations/basis2762.json"
theorem reductionProof2762 : EqualModuloRelations reduction2762.relations reduction2762.input reduction2762.output := by lin_cert using reduction2762.terms
theorem substitutionProof2762 : IsMapEvaluation generatorImages reduction2762.relations [1,1,347] reduction2762.output := by lin_cert using reduction2762.terms
def image2763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2763 : InImage map_20_135 image2763 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2763 : Bundle := named_bundle% "RealMapCertificates/relations/basis2763.json"
theorem reductionProof2763 : EqualModuloRelations reduction2763.relations reduction2763.input reduction2763.output := by lin_cert using reduction2763.terms
theorem substitutionProof2763 : IsMapEvaluation generatorImages reduction2763.relations [0,0,0,358] reduction2763.output := by lin_cert using reduction2763.terms
def map_20_136 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image2825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2825 : InImage map_20_136 image2825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2825 : Bundle := named_bundle% "RealMapCertificates/relations/basis2825.json"
theorem reductionProof2825 : EqualModuloRelations reduction2825.relations reduction2825.input reduction2825.output := by lin_cert using reduction2825.terms
theorem substitutionProof2825 : IsMapEvaluation generatorImages reduction2825.relations [0,8,255] reduction2825.output := by lin_cert using reduction2825.terms
def image2826 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2826 : InImage map_20_136 image2826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2826 : Bundle := named_bundle% "RealMapCertificates/relations/basis2826.json"
theorem reductionProof2826 : EqualModuloRelations reduction2826.relations reduction2826.input reduction2826.output := by lin_cert using reduction2826.terms
theorem substitutionProof2826 : IsMapEvaluation generatorImages reduction2826.relations [0,2,346] reduction2826.output := by lin_cert using reduction2826.terms
def image2827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2827 : InImage map_20_136 image2827 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2827 : Bundle := named_bundle% "RealMapCertificates/relations/basis2827.json"
theorem reductionProof2827 : EqualModuloRelations reduction2827.relations reduction2827.input reduction2827.output := by lin_cert using reduction2827.terms
theorem substitutionProof2827 : IsMapEvaluation generatorImages reduction2827.relations [0,0,0,0,359] reduction2827.output := by lin_cert using reduction2827.terms
def image2828 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2828 : InImage map_20_136 image2828 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2828 : Bundle := named_bundle% "RealMapCertificates/relations/basis2828.json"
theorem reductionProof2828 : EqualModuloRelations reduction2828.relations reduction2828.input reduction2828.output := by lin_cert using reduction2828.terms
theorem substitutionProof2828 : IsMapEvaluation generatorImages reduction2828.relations [0,0,0,0,0,349] reduction2828.output := by lin_cert using reduction2828.terms
def map_20_138 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2985 : InImage map_20_138 image2985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2985 : Bundle := named_bundle% "RealMapCertificates/relations/basis2985.json"
theorem reductionProof2985 : EqualModuloRelations reduction2985.relations reduction2985.input reduction2985.output := by lin_cert using reduction2985.terms
theorem substitutionProof2985 : IsMapEvaluation generatorImages reduction2985.relations [8,8,187] reduction2985.output := by lin_cert using reduction2985.terms
def image2986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2986 : InImage map_20_138 image2986 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2986 : Bundle := named_bundle% "RealMapCertificates/relations/basis2986.json"
theorem reductionProof2986 : EqualModuloRelations reduction2986.relations reduction2986.input reduction2986.output := by lin_cert using reduction2986.terms
theorem substitutionProof2986 : IsMapEvaluation generatorImages reduction2986.relations [2,381] reduction2986.output := by lin_cert using reduction2986.terms
def map_20_139 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3060 : InImage map_20_139 image3060 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3060 : Bundle := named_bundle% "RealMapCertificates/relations/basis3060.json"
theorem reductionProof3060 : EqualModuloRelations reduction3060.relations reduction3060.input reduction3060.output := by lin_cert using reduction3060.terms
theorem substitutionProof3060 : IsMapEvaluation generatorImages reduction3060.relations [447] reduction3060.output := by lin_cert using reduction3060.terms
def image3061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3061 : InImage map_20_139 image3061 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3061 : Bundle := named_bundle% "RealMapCertificates/relations/basis3061.json"
theorem reductionProof3061 : EqualModuloRelations reduction3061.relations reduction3061.input reduction3061.output := by lin_cert using reduction3061.terms
theorem substitutionProof3061 : IsMapEvaluation generatorImages reduction3061.relations [1,420] reduction3061.output := by lin_cert using reduction3061.terms
def image3062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3062 : InImage map_20_139 image3062 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3062 : Bundle := named_bundle% "RealMapCertificates/relations/basis3062.json"
theorem reductionProof3062 : EqualModuloRelations reduction3062.relations reduction3062.input reduction3062.output := by lin_cert using reduction3062.terms
theorem substitutionProof3062 : IsMapEvaluation generatorImages reduction3062.relations [0,8,8,188] reduction3062.output := by lin_cert using reduction3062.terms
def image3063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3063 : InImage map_20_139 image3063 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3063 : Bundle := named_bundle% "RealMapCertificates/relations/basis3063.json"
theorem reductionProof3063 : EqualModuloRelations reduction3063.relations reduction3063.input reduction3063.output := by lin_cert using reduction3063.terms
theorem substitutionProof3063 : IsMapEvaluation generatorImages reduction3063.relations [0,7,278] reduction3063.output := by lin_cert using reduction3063.terms
def map_20_140 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3134 : InImage map_20_140 image3134 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3134 : Bundle := named_bundle% "RealMapCertificates/relations/basis3134.json"
theorem reductionProof3134 : EqualModuloRelations reduction3134.relations reduction3134.input reduction3134.output := by lin_cert using reduction3134.terms
theorem substitutionProof3134 : IsMapEvaluation generatorImages reduction3134.relations [455] reduction3134.output := by lin_cert using reduction3134.terms
def image3135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3135 : InImage map_20_140 image3135 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3135 : Bundle := named_bundle% "RealMapCertificates/relations/basis3135.json"
theorem reductionProof3135 : EqualModuloRelations reduction3135.relations reduction3135.input reduction3135.output := by lin_cert using reduction3135.terms
theorem substitutionProof3135 : IsMapEvaluation generatorImages reduction3135.relations [0,0,8,267] reduction3135.output := by lin_cert using reduction3135.terms
def image3136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3136 : InImage map_20_140 image3136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3136 : Bundle := named_bundle% "RealMapCertificates/relations/basis3136.json"
theorem reductionProof3136 : EqualModuloRelations reduction3136.relations reduction3136.input reduction3136.output := by lin_cert using reduction3136.terms
theorem substitutionProof3136 : IsMapEvaluation generatorImages reduction3136.relations [0,0,0,17,209] reduction3136.output := by lin_cert using reduction3136.terms
def map_20_141 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3242 : InImage map_20_141 image3242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3242 : Bundle := named_bundle% "RealMapCertificates/relations/basis3242.json"
theorem reductionProof3242 : EqualModuloRelations reduction3242.relations reduction3242.input reduction3242.output := by lin_cert using reduction3242.terms
theorem substitutionProof3242 : IsMapEvaluation generatorImages reduction3242.relations [8,8,201] reduction3242.output := by lin_cert using reduction3242.terms
def image3243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3243 : InImage map_20_141 image3243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3243 : Bundle := named_bundle% "RealMapCertificates/relations/basis3243.json"
theorem reductionProof3243 : EqualModuloRelations reduction3243.relations reduction3243.input reduction3243.output := by lin_cert using reduction3243.terms
theorem substitutionProof3243 : IsMapEvaluation generatorImages reduction3243.relations [0,0,0,0,422] reduction3243.output := by lin_cert using reduction3243.terms
def map_20_142 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3310 : InImage map_20_142 image3310 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3310 : Bundle := named_bundle% "RealMapCertificates/relations/basis3310.json"
theorem reductionProof3310 : EqualModuloRelations reduction3310.relations reduction3310.input reduction3310.output := by lin_cert using reduction3310.terms
theorem substitutionProof3310 : IsMapEvaluation generatorImages reduction3310.relations [13,13,13,83] reduction3310.output := by lin_cert using reduction3310.terms
def image3311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3311 : InImage map_20_142 image3311 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3311 : Bundle := named_bundle% "RealMapCertificates/relations/basis3311.json"
theorem reductionProof3311 : EqualModuloRelations reduction3311.relations reduction3311.input reduction3311.output := by lin_cert using reduction3311.terms
theorem substitutionProof3311 : IsMapEvaluation generatorImages reduction3311.relations [0,8,9,188] reduction3311.output := by lin_cert using reduction3311.terms
def image3312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3312 : InImage map_20_142 image3312 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3312 : Bundle := named_bundle% "RealMapCertificates/relations/basis3312.json"
theorem reductionProof3312 : EqualModuloRelations reduction3312.relations reduction3312.input reduction3312.output := by lin_cert using reduction3312.terms
theorem substitutionProof3312 : IsMapEvaluation generatorImages reduction3312.relations [0,0,0,0,437] reduction3312.output := by lin_cert using reduction3312.terms
def map_20_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3388 : InImage map_20_143 image3388 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3388 : Bundle := named_bundle% "RealMapCertificates/relations/basis3388.json"
theorem reductionProof3388 : EqualModuloRelations reduction3388.relations reduction3388.input reduction3388.output := by lin_cert using reduction3388.terms
theorem substitutionProof3388 : IsMapEvaluation generatorImages reduction3388.relations [492] reduction3388.output := by lin_cert using reduction3388.terms
def map_20_144 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3484 : InImage map_20_144 image3484 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3484 : Bundle := named_bundle% "RealMapCertificates/relations/basis3484.json"
theorem reductionProof3484 : EqualModuloRelations reduction3484.relations reduction3484.input reduction3484.output := by lin_cert using reduction3484.terms
theorem substitutionProof3484 : IsMapEvaluation generatorImages reduction3484.relations [8,8,212] reduction3484.output := by lin_cert using reduction3484.terms
def image3485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3485 : InImage map_20_144 image3485 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3485 : Bundle := named_bundle% "RealMapCertificates/relations/basis3485.json"
theorem reductionProof3485 : EqualModuloRelations reduction3485.relations reduction3485.input reduction3485.output := by lin_cert using reduction3485.terms
theorem substitutionProof3485 : IsMapEvaluation generatorImages reduction3485.relations [0,0,0,0,0,0,440] reduction3485.output := by lin_cert using reduction3485.terms
def map_20_145 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3556 : InImage map_20_145 image3556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3556 : Bundle := named_bundle% "RealMapCertificates/relations/basis3556.json"
theorem reductionProof3556 : EqualModuloRelations reduction3556.relations reduction3556.input reduction3556.output := by lin_cert using reduction3556.terms
theorem substitutionProof3556 : IsMapEvaluation generatorImages reduction3556.relations [510] reduction3556.output := by lin_cert using reduction3556.terms
def image3557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3557 : InImage map_20_145 image3557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3557 : Bundle := named_bundle% "RealMapCertificates/relations/basis3557.json"
theorem reductionProof3557 : EqualModuloRelations reduction3557.relations reduction3557.input reduction3557.output := by lin_cert using reduction3557.terms
theorem substitutionProof3557 : IsMapEvaluation generatorImages reduction3557.relations [0,8,13,188] reduction3557.output := by lin_cert using reduction3557.terms
def image3558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3558 : InImage map_20_145 image3558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3558 : Bundle := named_bundle% "RealMapCertificates/relations/basis3558.json"
theorem reductionProof3558 : EqualModuloRelations reduction3558.relations reduction3558.input reduction3558.output := by lin_cert using reduction3558.terms
theorem substitutionProof3558 : IsMapEvaluation generatorImages reduction3558.relations [0,0,0,0,0,0,449] reduction3558.output := by lin_cert using reduction3558.terms
def map_20_146 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3632 : InImage map_20_146 image3632 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3632 : Bundle := named_bundle% "RealMapCertificates/relations/basis3632.json"
theorem reductionProof3632 : EqualModuloRelations reduction3632.relations reduction3632.input reduction3632.output := by lin_cert using reduction3632.terms
theorem substitutionProof3632 : IsMapEvaluation generatorImages reduction3632.relations [8,318] reduction3632.output := by lin_cert using reduction3632.terms
def image3633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3633 : InImage map_20_146 image3633 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3633 : Bundle := named_bundle% "RealMapCertificates/relations/basis3633.json"
theorem reductionProof3633 : EqualModuloRelations reduction3633.relations reduction3633.input reduction3633.output := by lin_cert using reduction3633.terms
theorem substitutionProof3633 : IsMapEvaluation generatorImages reduction3633.relations [0,0,500] reduction3633.output := by lin_cert using reduction3633.terms
def map_20_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3751 : InImage map_20_147 image3751 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3751 : Bundle := named_bundle% "RealMapCertificates/relations/basis3751.json"
theorem reductionProof3751 : EqualModuloRelations reduction3751.relations reduction3751.input reduction3751.output := by lin_cert using reduction3751.terms
theorem substitutionProof3751 : IsMapEvaluation generatorImages reduction3751.relations [8,9,212] reduction3751.output := by lin_cert using reduction3751.terms
def image3752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3752 : InImage map_20_147 image3752 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3752 : Bundle := named_bundle% "RealMapCertificates/relations/basis3752.json"
theorem reductionProof3752 : EqualModuloRelations reduction3752.relations reduction3752.input reduction3752.output := by lin_cert using reduction3752.terms
theorem substitutionProof3752 : IsMapEvaluation generatorImages reduction3752.relations [0,0,0,0,0,481] reduction3752.output := by lin_cert using reduction3752.terms
def image3753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3753 : InImage map_20_147 image3753 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3753 : Bundle := named_bundle% "RealMapCertificates/relations/basis3753.json"
theorem reductionProof3753 : EqualModuloRelations reduction3753.relations reduction3753.input reduction3753.output := by lin_cert using reduction3753.terms
theorem substitutionProof3753 : IsMapEvaluation generatorImages reduction3753.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3753.output := by lin_cert using reduction3753.terms
def map_20_148 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3820 : InImage map_20_148 image3820 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3820 : Bundle := named_bundle% "RealMapCertificates/relations/basis3820.json"
theorem reductionProof3820 : EqualModuloRelations reduction3820.relations reduction3820.input reduction3820.output := by lin_cert using reduction3820.terms
theorem substitutionProof3820 : IsMapEvaluation generatorImages reduction3820.relations [538] reduction3820.output := by lin_cert using reduction3820.terms
def image3821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3821 : InImage map_20_148 image3821 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3821 : Bundle := named_bundle% "RealMapCertificates/relations/basis3821.json"
theorem reductionProof3821 : EqualModuloRelations reduction3821.relations reduction3821.input reduction3821.output := by lin_cert using reduction3821.terms
theorem substitutionProof3821 : IsMapEvaluation generatorImages reduction3821.relations [9,13,23,75] reduction3821.output := by lin_cert using reduction3821.terms
def image3822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3822 : InImage map_20_148 image3822 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3822 : Bundle := named_bundle% "RealMapCertificates/relations/basis3822.json"
theorem reductionProof3822 : EqualModuloRelations reduction3822.relations reduction3822.input reduction3822.output := by lin_cert using reduction3822.terms
theorem substitutionProof3822 : IsMapEvaluation generatorImages reduction3822.relations [0,0,0,0,0,0,482] reduction3822.output := by lin_cert using reduction3822.terms
def map_20_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3904 : InImage map_20_149 image3904 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3904 : Bundle := named_bundle% "RealMapCertificates/relations/basis3904.json"
theorem reductionProof3904 : EqualModuloRelations reduction3904.relations reduction3904.input reduction3904.output := by lin_cert using reduction3904.terms
theorem substitutionProof3904 : IsMapEvaluation generatorImages reduction3904.relations [551] reduction3904.output := by lin_cert using reduction3904.terms
def image3905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3905 : InImage map_20_149 image3905 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3905 : Bundle := named_bundle% "RealMapCertificates/relations/basis3905.json"
theorem reductionProof3905 : EqualModuloRelations reduction3905.relations reduction3905.input reduction3905.output := by lin_cert using reduction3905.terms
theorem substitutionProof3905 : IsMapEvaluation generatorImages reduction3905.relations [8,348] reduction3905.output := by lin_cert using reduction3905.terms
def map_20_150 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4009 : InImage map_20_150 image4009 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4009 : Bundle := named_bundle% "RealMapCertificates/relations/basis4009.json"
theorem reductionProof4009 : EqualModuloRelations reduction4009.relations reduction4009.input reduction4009.output := by lin_cert using reduction4009.terms
theorem substitutionProof4009 : IsMapEvaluation generatorImages reduction4009.relations [13,303] reduction4009.output := by lin_cert using reduction4009.terms
def image4010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4010 : InImage map_20_150 image4010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4010 : Bundle := named_bundle% "RealMapCertificates/relations/basis4010.json"
theorem reductionProof4010 : EqualModuloRelations reduction4010.relations reduction4010.input reduction4010.output := by lin_cert using reduction4010.terms
theorem substitutionProof4010 : IsMapEvaluation generatorImages reduction4010.relations [8,13,212] reduction4010.output := by lin_cert using reduction4010.terms
def image4011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4011 : InImage map_20_150 image4011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4011 : Bundle := named_bundle% "RealMapCertificates/relations/basis4011.json"
theorem reductionProof4011 : EqualModuloRelations reduction4011.relations reduction4011.input reduction4011.output := by lin_cert using reduction4011.terms
theorem substitutionProof4011 : IsMapEvaluation generatorImages reduction4011.relations [0,0,539] reduction4011.output := by lin_cert using reduction4011.terms
def map_20_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4100 : InImage map_20_151 image4100 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4100 : Bundle := named_bundle% "RealMapCertificates/relations/basis4100.json"
theorem reductionProof4100 : EqualModuloRelations reduction4100.relations reduction4100.input reduction4100.output := by lin_cert using reduction4100.terms
theorem substitutionProof4100 : IsMapEvaluation generatorImages reduction4100.relations [13,13,23,75] reduction4100.output := by lin_cert using reduction4100.terms
def map_20_152 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4181 : InImage map_20_152 image4181 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4181 : Bundle := named_bundle% "RealMapCertificates/relations/basis4181.json"
theorem reductionProof4181 : EqualModuloRelations reduction4181.relations reduction4181.input reduction4181.output := by lin_cert using reduction4181.terms
theorem substitutionProof4181 : IsMapEvaluation generatorImages reduction4181.relations [8,8,250] reduction4181.output := by lin_cert using reduction4181.terms
def image4182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4182 : InImage map_20_152 image4182 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4182 : Bundle := named_bundle% "RealMapCertificates/relations/basis4182.json"
theorem reductionProof4182 : EqualModuloRelations reduction4182.relations reduction4182.input reduction4182.output := by lin_cert using reduction4182.terms
theorem substitutionProof4182 : IsMapEvaluation generatorImages reduction4182.relations [0,18,260] reduction4182.output := by lin_cert using reduction4182.terms
def map_20_153 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4287 : InImage map_20_153 image4287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4287 : Bundle := named_bundle% "RealMapCertificates/relations/basis4287.json"
theorem reductionProof4287 : EqualModuloRelations reduction4287.relations reduction4287.input reduction4287.output := by lin_cert using reduction4287.terms
theorem substitutionProof4287 : IsMapEvaluation generatorImages reduction4287.relations [9,13,212] reduction4287.output := by lin_cert using reduction4287.terms
def image4288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4288 : InImage map_20_153 image4288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4288 : Bundle := named_bundle% "RealMapCertificates/relations/basis4288.json"
theorem reductionProof4288 : EqualModuloRelations reduction4288.relations reduction4288.input reduction4288.output := by lin_cert using reduction4288.terms
theorem substitutionProof4288 : IsMapEvaluation generatorImages reduction4288.relations [1,18,260] reduction4288.output := by lin_cert using reduction4288.terms
def image4289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4289 : InImage map_20_153 image4289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4289 : Bundle := named_bundle% "RealMapCertificates/relations/basis4289.json"
theorem reductionProof4289 : EqualModuloRelations reduction4289.relations reduction4289.input reduction4289.output := by lin_cert using reduction4289.terms
theorem substitutionProof4289 : IsMapEvaluation generatorImages reduction4289.relations [0,0,69,138] reduction4289.output := by lin_cert using reduction4289.terms
def map_20_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4351 : InImage map_20_154 image4351 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4351 : Bundle := named_bundle% "RealMapCertificates/relations/basis4351.json"
theorem reductionProof4351 : EqualModuloRelations reduction4351.relations reduction4351.input reduction4351.output := by lin_cert using reduction4351.terms
theorem substitutionProof4351 : IsMapEvaluation generatorImages reduction4351.relations [587] reduction4351.output := by lin_cert using reduction4351.terms
def image4352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4352 : InImage map_20_154 image4352 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4352 : Bundle := named_bundle% "RealMapCertificates/relations/basis4352.json"
theorem reductionProof4352 : EqualModuloRelations reduction4352.relations reduction4352.input reduction4352.output := by lin_cert using reduction4352.terms
theorem substitutionProof4352 : IsMapEvaluation generatorImages reduction4352.relations [0,0,0,568] reduction4352.output := by lin_cert using reduction4352.terms
def map_20_155 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4438 : InImage map_20_155 image4438 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4438 : Bundle := named_bundle% "RealMapCertificates/relations/basis4438.json"
theorem reductionProof4438 : EqualModuloRelations reduction4438.relations reduction4438.input reduction4438.output := by lin_cert using reduction4438.terms
theorem substitutionProof4438 : IsMapEvaluation generatorImages reduction4438.relations [603] reduction4438.output := by lin_cert using reduction4438.terms
def image4439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4439 : InImage map_20_155 image4439 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4439 : Bundle := named_bundle% "RealMapCertificates/relations/basis4439.json"
theorem reductionProof4439 : EqualModuloRelations reduction4439.relations reduction4439.input reduction4439.output := by lin_cert using reduction4439.terms
theorem substitutionProof4439 : IsMapEvaluation generatorImages reduction4439.relations [8,8,261] reduction4439.output := by lin_cert using reduction4439.terms
def image4440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4440 : InImage map_20_155 image4440 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4440 : Bundle := named_bundle% "RealMapCertificates/relations/basis4440.json"
theorem reductionProof4440 : EqualModuloRelations reduction4440.relations reduction4440.input reduction4440.output := by lin_cert using reduction4440.terms
theorem substitutionProof4440 : IsMapEvaluation generatorImages reduction4440.relations [0,18,278] reduction4440.output := by lin_cert using reduction4440.terms
def map_20_156 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4541 : InImage map_20_156 image4541 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4541 : Bundle := named_bundle% "RealMapCertificates/relations/basis4541.json"
theorem reductionProof4541 : EqualModuloRelations reduction4541.relations reduction4541.input reduction4541.output := by lin_cert using reduction4541.terms
theorem substitutionProof4541 : IsMapEvaluation generatorImages reduction4541.relations [608] reduction4541.output := by lin_cert using reduction4541.terms
def image4542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4542 : InImage map_20_156 image4542 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4542 : Bundle := named_bundle% "RealMapCertificates/relations/basis4542.json"
theorem reductionProof4542 : EqualModuloRelations reduction4542.relations reduction4542.input reduction4542.output := by lin_cert using reduction4542.terms
theorem substitutionProof4542 : IsMapEvaluation generatorImages reduction4542.relations [13,359] reduction4542.output := by lin_cert using reduction4542.terms
def image4543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4543 : InImage map_20_156 image4543 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4543 : Bundle := named_bundle% "RealMapCertificates/relations/basis4543.json"
theorem reductionProof4543 : EqualModuloRelations reduction4543.relations reduction4543.input reduction4543.output := by lin_cert using reduction4543.terms
theorem substitutionProof4543 : IsMapEvaluation generatorImages reduction4543.relations [13,13,212] reduction4543.output := by lin_cert using reduction4543.terms
def image4544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4544 : InImage map_20_156 image4544 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4544 : Bundle := named_bundle% "RealMapCertificates/relations/basis4544.json"
theorem reductionProof4544 : EqualModuloRelations reduction4544.relations reduction4544.input reduction4544.output := by lin_cert using reduction4544.terms
theorem substitutionProof4544 : IsMapEvaluation generatorImages reduction4544.relations [0,0,69,147] reduction4544.output := by lin_cert using reduction4544.terms
def image4545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4545 : InImage map_20_156 image4545 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4545 : Bundle := named_bundle% "RealMapCertificates/relations/basis4545.json"
theorem reductionProof4545 : EqualModuloRelations reduction4545.relations reduction4545.input reduction4545.output := by lin_cert using reduction4545.terms
theorem substitutionProof4545 : IsMapEvaluation generatorImages reduction4545.relations [0,0,0,582] reduction4545.output := by lin_cert using reduction4545.terms
def map_20_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4618 : InImage map_20_157 image4618 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4618 : Bundle := named_bundle% "RealMapCertificates/relations/basis4618.json"
theorem reductionProof4618 : EqualModuloRelations reduction4618.relations reduction4618.input reduction4618.output := by lin_cert using reduction4618.terms
theorem substitutionProof4618 : IsMapEvaluation generatorImages reduction4618.relations [13,13,13,134] reduction4618.output := by lin_cert using reduction4618.terms
def image4619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4619 : InImage map_20_157 image4619 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4619 : Bundle := named_bundle% "RealMapCertificates/relations/basis4619.json"
theorem reductionProof4619 : EqualModuloRelations reduction4619.relations reduction4619.input reduction4619.output := by lin_cert using reduction4619.terms
theorem substitutionProof4619 : IsMapEvaluation generatorImages reduction4619.relations [1,42,209] reduction4619.output := by lin_cert using reduction4619.terms
def image4620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4620 : InImage map_20_157 image4620 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4620 : Bundle := named_bundle% "RealMapCertificates/relations/basis4620.json"
theorem reductionProof4620 : EqualModuloRelations reduction4620.relations reduction4620.input reduction4620.output := by lin_cert using reduction4620.terms
theorem substitutionProof4620 : IsMapEvaluation generatorImages reduction4620.relations [0,609] reduction4620.output := by lin_cert using reduction4620.terms
def map_20_158 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4706 : InImage map_20_158 image4706 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4706 : Bundle := named_bundle% "RealMapCertificates/relations/basis4706.json"
theorem reductionProof4706 : EqualModuloRelations reduction4706.relations reduction4706.input reduction4706.output := by lin_cert using reduction4706.terms
theorem substitutionProof4706 : IsMapEvaluation generatorImages reduction4706.relations [627] reduction4706.output := by lin_cert using reduction4706.terms
def image4707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4707 : InImage map_20_158 image4707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4707 : Bundle := named_bundle% "RealMapCertificates/relations/basis4707.json"
theorem reductionProof4707 : EqualModuloRelations reduction4707.relations reduction4707.input reduction4707.output := by lin_cert using reduction4707.terms
theorem substitutionProof4707 : IsMapEvaluation generatorImages reduction4707.relations [8,9,261] reduction4707.output := by lin_cert using reduction4707.terms
def map_20_159 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4806 : InImage map_20_159 image4806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4806 : Bundle := named_bundle% "RealMapCertificates/relations/basis4806.json"
theorem reductionProof4806 : EqualModuloRelations reduction4806.relations reduction4806.input reduction4806.output := by lin_cert using reduction4806.terms
theorem substitutionProof4806 : IsMapEvaluation generatorImages reduction4806.relations [23,286] reduction4806.output := by lin_cert using reduction4806.terms
def image4807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4807 : InImage map_20_159 image4807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4807 : Bundle := named_bundle% "RealMapCertificates/relations/basis4807.json"
theorem reductionProof4807 : EqualModuloRelations reduction4807.relations reduction4807.input reduction4807.output := by lin_cert using reduction4807.terms
theorem substitutionProof4807 : IsMapEvaluation generatorImages reduction4807.relations [0,0,8,449] reduction4807.output := by lin_cert using reduction4807.terms
end RealMapCertificates
