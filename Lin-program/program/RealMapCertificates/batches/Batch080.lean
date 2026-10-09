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
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 43 => []
  | 47 => [[2,4,4,4,4]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 58 => [[3,4,4,4,4]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 181 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 209 => []
  | 235 => []
  | 239 => []
  | 261 => []
  | 266 => []
  | 267 => []
  | 269 => []
  | 286 => []
  | 287 => []
  | 314 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 408 => []
  | 473 => []
  | 475 => []
  | 476 => []
  | 575 => []
  | 609 => []
  | 613 => []
  | 618 => []
  | 628 => []
  | 629 => []
  | 638 => []
  | 639 => []
  | 646 => []
  | 655 => []
  | 667 => []
  | 677 => []
  | 690 => []
  | 693 => []
  | 703 => []
  | 704 => []
  | 706 => []
  | 717 => []
  | 728 => []
  | 738 => []
  | 739 => []
  | 743 => []
  | 760 => []
  | 762 => []
  | 763 => []
  | 780 => []
  | 798 => []
  | 822 => []
  | 825 => []
  | 836 => []
  | 837 => []
  | 838 => []
  | 857 => []
  | 879 => []
  | 880 => []
  | 891 => []
  | 908 => []
  | 931 => []
  | 943 => []
  | 944 => []
  | 959 => []
  | 960 => []
  | 964 => []
  | 965 => []
  | 982 => []
  | 983 => []
  | 984 => []
  | 987 => []
  | 1000 => []
  | 1011 => []
  | 1014 => []
  | 1038 => []
  | 1039 => []
  | 1040 => []
  | _ => []
def map_20_160 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4873 : InImage map_20_160 image4873 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4873 : Bundle := named_bundle% "RealMapCertificates/relations/basis4873.json"
theorem reductionProof4873 : EqualModuloRelations reduction4873.relations reduction4873.input reduction4873.output := by lin_cert using reduction4873.terms
theorem substitutionProof4873 : IsMapEvaluation generatorImages reduction4873.relations [646] reduction4873.output := by lin_cert using reduction4873.terms
def image4874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4874 : InImage map_20_160 image4874 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4874 : Bundle := named_bundle% "RealMapCertificates/relations/basis4874.json"
theorem reductionProof4874 : EqualModuloRelations reduction4874.relations reduction4874.input reduction4874.output := by lin_cert using reduction4874.terms
theorem substitutionProof4874 : IsMapEvaluation generatorImages reduction4874.relations [0,0,628] reduction4874.output := by lin_cert using reduction4874.terms
def image4875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4875 : InImage map_20_160 image4875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4875 : Bundle := named_bundle% "RealMapCertificates/relations/basis4875.json"
theorem reductionProof4875 : EqualModuloRelations reduction4875.relations reduction4875.input reduction4875.output := by lin_cert using reduction4875.terms
theorem substitutionProof4875 : IsMapEvaluation generatorImages reduction4875.relations [0,0,0,0,0,0,0,0,575] reduction4875.output := by lin_cert using reduction4875.terms
def map_20_161 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image4968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4968 : InImage map_20_161 image4968 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4968 : Bundle := named_bundle% "RealMapCertificates/relations/basis4968.json"
theorem reductionProof4968 : EqualModuloRelations reduction4968.relations reduction4968.input reduction4968.output := by lin_cert using reduction4968.terms
theorem substitutionProof4968 : IsMapEvaluation generatorImages reduction4968.relations [655] reduction4968.output := by lin_cert using reduction4968.terms
def image4969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4969 : InImage map_20_161 image4969 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4969 : Bundle := named_bundle% "RealMapCertificates/relations/basis4969.json"
theorem reductionProof4969 : EqualModuloRelations reduction4969.relations reduction4969.input reduction4969.output := by lin_cert using reduction4969.terms
theorem substitutionProof4969 : IsMapEvaluation generatorImages reduction4969.relations [8,13,261] reduction4969.output := by lin_cert using reduction4969.terms
def image4970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4970 : InImage map_20_161 image4970 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4970 : Bundle := named_bundle% "RealMapCertificates/relations/basis4970.json"
theorem reductionProof4970 : EqualModuloRelations reduction4970.relations reduction4970.input reduction4970.output := by lin_cert using reduction4970.terms
theorem substitutionProof4970 : IsMapEvaluation generatorImages reduction4970.relations [1,638] reduction4970.output := by lin_cert using reduction4970.terms
def image4971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4971 : InImage map_20_161 image4971 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4971 : Bundle := named_bundle% "RealMapCertificates/relations/basis4971.json"
theorem reductionProof4971 : EqualModuloRelations reduction4971.relations reduction4971.input reduction4971.output := by lin_cert using reduction4971.terms
theorem substitutionProof4971 : IsMapEvaluation generatorImages reduction4971.relations [0,8,69,112] reduction4971.output := by lin_cert using reduction4971.terms
def image4972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4972 : InImage map_20_161 image4972 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4972 : Bundle := named_bundle% "RealMapCertificates/relations/basis4972.json"
theorem reductionProof4972 : EqualModuloRelations reduction4972.relations reduction4972.input reduction4972.output := by lin_cert using reduction4972.terms
theorem substitutionProof4972 : IsMapEvaluation generatorImages reduction4972.relations [0,0,0,0,17,314] reduction4972.output := by lin_cert using reduction4972.terms
def map_20_162 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5082 : InImage map_20_162 image5082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5082 : Bundle := named_bundle% "RealMapCertificates/relations/basis5082.json"
theorem reductionProof5082 : EqualModuloRelations reduction5082.relations reduction5082.input reduction5082.output := by lin_cert using reduction5082.terms
theorem substitutionProof5082 : IsMapEvaluation generatorImages reduction5082.relations [667] reduction5082.output := by lin_cert using reduction5082.terms
def image5083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5083 : InImage map_20_162 image5083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5083 : Bundle := named_bundle% "RealMapCertificates/relations/basis5083.json"
theorem reductionProof5083 : EqualModuloRelations reduction5083.relations reduction5083.input reduction5083.output := by lin_cert using reduction5083.terms
theorem substitutionProof5083 : IsMapEvaluation generatorImages reduction5083.relations [13,23,189] reduction5083.output := by lin_cert using reduction5083.terms
def image5084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5084 : InImage map_20_162 image5084 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5084 : Bundle := named_bundle% "RealMapCertificates/relations/basis5084.json"
theorem reductionProof5084 : EqualModuloRelations reduction5084.relations reduction5084.input reduction5084.output := by lin_cert using reduction5084.terms
theorem substitutionProof5084 : IsMapEvaluation generatorImages reduction5084.relations [1,1,628] reduction5084.output := by lin_cert using reduction5084.terms
def image5085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5085 : InImage map_20_162 image5085 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5085 : Bundle := named_bundle% "RealMapCertificates/relations/basis5085.json"
theorem reductionProof5085 : EqualModuloRelations reduction5085.relations reduction5085.input reduction5085.output := by lin_cert using reduction5085.terms
theorem substitutionProof5085 : IsMapEvaluation generatorImages reduction5085.relations [0,0,8,69,113] reduction5085.output := by lin_cert using reduction5085.terms
def map_20_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5259 : InImage map_20_164 image5259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5259 : Bundle := named_bundle% "RealMapCertificates/relations/basis5259.json"
theorem reductionProof5259 : EqualModuloRelations reduction5259.relations reduction5259.input reduction5259.output := by lin_cert using reduction5259.terms
theorem substitutionProof5259 : IsMapEvaluation generatorImages reduction5259.relations [690] reduction5259.output := by lin_cert using reduction5259.terms
def image5260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5260 : InImage map_20_164 image5260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5260 : Bundle := named_bundle% "RealMapCertificates/relations/basis5260.json"
theorem reductionProof5260 : EqualModuloRelations reduction5260.relations reduction5260.input reduction5260.output := by lin_cert using reduction5260.terms
theorem substitutionProof5260 : IsMapEvaluation generatorImages reduction5260.relations [9,13,261] reduction5260.output := by lin_cert using reduction5260.terms
def image5261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5261 : InImage map_20_164 image5261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5261 : Bundle := named_bundle% "RealMapCertificates/relations/basis5261.json"
theorem reductionProof5261 : EqualModuloRelations reduction5261.relations reduction5261.input reduction5261.output := by lin_cert using reduction5261.terms
theorem substitutionProof5261 : IsMapEvaluation generatorImages reduction5261.relations [3,609] reduction5261.output := by lin_cert using reduction5261.terms
def map_20_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5382 : InImage map_20_165 image5382 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5382 : Bundle := named_bundle% "RealMapCertificates/relations/basis5382.json"
theorem reductionProof5382 : EqualModuloRelations reduction5382.relations reduction5382.input reduction5382.output := by lin_cert using reduction5382.terms
theorem substitutionProof5382 : IsMapEvaluation generatorImages reduction5382.relations [704] reduction5382.output := by lin_cert using reduction5382.terms
def image5383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5383 : InImage map_20_165 image5383 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5383 : Bundle := named_bundle% "RealMapCertificates/relations/basis5383.json"
theorem reductionProof5383 : EqualModuloRelations reduction5383.relations reduction5383.input reduction5383.output := by lin_cert using reduction5383.terms
theorem substitutionProof5383 : IsMapEvaluation generatorImages reduction5383.relations [703] reduction5383.output := by lin_cert using reduction5383.terms
def image5384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5384 : InImage map_20_165 image5384 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5384 : Bundle := named_bundle% "RealMapCertificates/relations/basis5384.json"
theorem reductionProof5384 : EqualModuloRelations reduction5384.relations reduction5384.input reduction5384.output := by lin_cert using reduction5384.terms
theorem substitutionProof5384 : IsMapEvaluation generatorImages reduction5384.relations [13,473] reduction5384.output := by lin_cert using reduction5384.terms
def map_20_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5473 : InImage map_20_166 image5473 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5473 : Bundle := named_bundle% "RealMapCertificates/relations/basis5473.json"
theorem reductionProof5473 : EqualModuloRelations reduction5473.relations reduction5473.input reduction5473.output := by lin_cert using reduction5473.terms
theorem substitutionProof5473 : IsMapEvaluation generatorImages reduction5473.relations [717] reduction5473.output := by lin_cert using reduction5473.terms
def image5474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5474 : InImage map_20_166 image5474 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5474 : Bundle := named_bundle% "RealMapCertificates/relations/basis5474.json"
theorem reductionProof5474 : EqualModuloRelations reduction5474.relations reduction5474.input reduction5474.output := by lin_cert using reduction5474.terms
theorem substitutionProof5474 : IsMapEvaluation generatorImages reduction5474.relations [2,2,628] reduction5474.output := by lin_cert using reduction5474.terms
def image5475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5475 : InImage map_20_166 image5475 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5475 : Bundle := named_bundle% "RealMapCertificates/relations/basis5475.json"
theorem reductionProof5475 : EqualModuloRelations reduction5475.relations reduction5475.input reduction5475.output := by lin_cert using reduction5475.terms
theorem substitutionProof5475 : IsMapEvaluation generatorImages reduction5475.relations [0,706] reduction5475.output := by lin_cert using reduction5475.terms
def map_20_167 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5583 : InImage map_20_167 image5583 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5583 : Bundle := named_bundle% "RealMapCertificates/relations/basis5583.json"
theorem reductionProof5583 : EqualModuloRelations reduction5583.relations reduction5583.input reduction5583.output := by lin_cert using reduction5583.terms
theorem substitutionProof5583 : IsMapEvaluation generatorImages reduction5583.relations [728] reduction5583.output := by lin_cert using reduction5583.terms
def image5584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5584 : InImage map_20_167 image5584 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5584 : Bundle := named_bundle% "RealMapCertificates/relations/basis5584.json"
theorem reductionProof5584 : EqualModuloRelations reduction5584.relations reduction5584.input reduction5584.output := by lin_cert using reduction5584.terms
theorem substitutionProof5584 : IsMapEvaluation generatorImages reduction5584.relations [13,13,261] reduction5584.output := by lin_cert using reduction5584.terms
def image5585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5585 : InImage map_20_167 image5585 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5585 : Bundle := named_bundle% "RealMapCertificates/relations/basis5585.json"
theorem reductionProof5585 : EqualModuloRelations reduction5585.relations reduction5585.input reduction5585.output := by lin_cert using reduction5585.terms
theorem substitutionProof5585 : IsMapEvaluation generatorImages reduction5585.relations [0,3,628] reduction5585.output := by lin_cert using reduction5585.terms
def image5586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5586 : InImage map_20_167 image5586 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5586 : Bundle := named_bundle% "RealMapCertificates/relations/basis5586.json"
theorem reductionProof5586 : EqualModuloRelations reduction5586.relations reduction5586.input reduction5586.output := by lin_cert using reduction5586.terms
theorem substitutionProof5586 : IsMapEvaluation generatorImages reduction5586.relations [0,0,0,693] reduction5586.output := by lin_cert using reduction5586.terms
def map_20_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5705 : InImage map_20_168 image5705 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5705 : Bundle := named_bundle% "RealMapCertificates/relations/basis5705.json"
theorem reductionProof5705 : EqualModuloRelations reduction5705.relations reduction5705.input reduction5705.output := by lin_cert using reduction5705.terms
theorem substitutionProof5705 : IsMapEvaluation generatorImages reduction5705.relations [739] reduction5705.output := by lin_cert using reduction5705.terms
def image5706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5706 : InImage map_20_168 image5706 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5706 : Bundle := named_bundle% "RealMapCertificates/relations/basis5706.json"
theorem reductionProof5706 : EqualModuloRelations reduction5706.relations reduction5706.input reduction5706.output := by lin_cert using reduction5706.terms
theorem substitutionProof5706 : IsMapEvaluation generatorImages reduction5706.relations [738] reduction5706.output := by lin_cert using reduction5706.terms
def image5707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5707 : InImage map_20_168 image5707 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5707 : Bundle := named_bundle% "RealMapCertificates/relations/basis5707.json"
theorem reductionProof5707 : EqualModuloRelations reduction5707.relations reduction5707.input reduction5707.output := by lin_cert using reduction5707.terms
theorem substitutionProof5707 : IsMapEvaluation generatorImages reduction5707.relations [1,3,628] reduction5707.output := by lin_cert using reduction5707.terms
def map_20_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5806 : InImage map_20_169 image5806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5806 : Bundle := named_bundle% "RealMapCertificates/relations/basis5806.json"
theorem reductionProof5806 : EqualModuloRelations reduction5806.relations reduction5806.input reduction5806.output := by lin_cert using reduction5806.terms
theorem substitutionProof5806 : IsMapEvaluation generatorImages reduction5806.relations [1,3,639] reduction5806.output := by lin_cert using reduction5806.terms
def image5807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5807 : InImage map_20_169 image5807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5807 : Bundle := named_bundle% "RealMapCertificates/relations/basis5807.json"
theorem reductionProof5807 : EqualModuloRelations reduction5807.relations reduction5807.input reduction5807.output := by lin_cert using reduction5807.terms
theorem substitutionProof5807 : IsMapEvaluation generatorImages reduction5807.relations [0,43,266] reduction5807.output := by lin_cert using reduction5807.terms
def map_20_170 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5913 : InImage map_20_170 image5913 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5913 : Bundle := named_bundle% "RealMapCertificates/relations/basis5913.json"
theorem reductionProof5913 : EqualModuloRelations reduction5913.relations reduction5913.input reduction5913.output := by lin_cert using reduction5913.terms
theorem substitutionProof5913 : IsMapEvaluation generatorImages reduction5913.relations [64,209] reduction5913.output := by lin_cert using reduction5913.terms
def image5914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5914 : InImage map_20_170 image5914 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5914 : Bundle := named_bundle% "RealMapCertificates/relations/basis5914.json"
theorem reductionProof5914 : EqualModuloRelations reduction5914.relations reduction5914.input reduction5914.output := by lin_cert using reduction5914.terms
theorem substitutionProof5914 : IsMapEvaluation generatorImages reduction5914.relations [0,0,43,267] reduction5914.output := by lin_cert using reduction5914.terms
def map_20_171 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6047 : InImage map_20_171 image6047 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6047 : Bundle := named_bundle% "RealMapCertificates/relations/basis6047.json"
theorem reductionProof6047 : EqualModuloRelations reduction6047.relations reduction6047.input reduction6047.output := by lin_cert using reduction6047.terms
theorem substitutionProof6047 : IsMapEvaluation generatorImages reduction6047.relations [80,188] reduction6047.output := by lin_cert using reduction6047.terms
def image6048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6048 : InImage map_20_171 image6048 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6048 : Bundle := named_bundle% "RealMapCertificates/relations/basis6048.json"
theorem reductionProof6048 : EqualModuloRelations reduction6048.relations reduction6048.input reduction6048.output := by lin_cert using reduction6048.terms
theorem substitutionProof6048 : IsMapEvaluation generatorImages reduction6048.relations [17,475] reduction6048.output := by lin_cert using reduction6048.terms
def image6049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6049 : InImage map_20_171 image6049 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6049 : Bundle := named_bundle% "RealMapCertificates/relations/basis6049.json"
theorem reductionProof6049 : EqualModuloRelations reduction6049.relations reduction6049.input reduction6049.output := by lin_cert using reduction6049.terms
theorem substitutionProof6049 : IsMapEvaluation generatorImages reduction6049.relations [0,760] reduction6049.output := by lin_cert using reduction6049.terms
def map_20_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6139 : InImage map_20_172 image6139 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6139 : Bundle := named_bundle% "RealMapCertificates/relations/basis6139.json"
theorem reductionProof6139 : EqualModuloRelations reduction6139.relations reduction6139.input reduction6139.output := by lin_cert using reduction6139.terms
theorem substitutionProof6139 : IsMapEvaluation generatorImages reduction6139.relations [1,760] reduction6139.output := by lin_cert using reduction6139.terms
def image6140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6140 : InImage map_20_172 image6140 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6140 : Bundle := named_bundle% "RealMapCertificates/relations/basis6140.json"
theorem reductionProof6140 : EqualModuloRelations reduction6140.relations reduction6140.input reduction6140.output := by lin_cert using reduction6140.terms
theorem substitutionProof6140 : IsMapEvaluation generatorImages reduction6140.relations [0,780] reduction6140.output := by lin_cert using reduction6140.terms
def map_20_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6249 : InImage map_20_173 image6249 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6249 : Bundle := named_bundle% "RealMapCertificates/relations/basis6249.json"
theorem reductionProof6249 : EqualModuloRelations reduction6249.relations reduction6249.input reduction6249.output := by lin_cert using reduction6249.terms
theorem substitutionProof6249 : IsMapEvaluation generatorImages reduction6249.relations [72,209] reduction6249.output := by lin_cert using reduction6249.terms
def image6250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6250 : InImage map_20_173 image6250 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6250 : Bundle := named_bundle% "RealMapCertificates/relations/basis6250.json"
theorem reductionProof6250 : EqualModuloRelations reduction6250.relations reduction6250.input reduction6250.output := by lin_cert using reduction6250.terms
theorem substitutionProof6250 : IsMapEvaluation generatorImages reduction6250.relations [13,13,13,181] reduction6250.output := by lin_cert using reduction6250.terms
def image6251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6251 : InImage map_20_173 image6251 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6251 : Bundle := named_bundle% "RealMapCertificates/relations/basis6251.json"
theorem reductionProof6251 : EqualModuloRelations reduction6251.relations reduction6251.input reduction6251.output := by lin_cert using reduction6251.terms
theorem substitutionProof6251 : IsMapEvaluation generatorImages reduction6251.relations [0,0,0,762] reduction6251.output := by lin_cert using reduction6251.terms
def map_20_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6384 : InImage map_20_174 image6384 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6384 : Bundle := named_bundle% "RealMapCertificates/relations/basis6384.json"
theorem reductionProof6384 : EqualModuloRelations reduction6384.relations reduction6384.input reduction6384.output := by lin_cert using reduction6384.terms
theorem substitutionProof6384 : IsMapEvaluation generatorImages reduction6384.relations [13,13,13,190] reduction6384.output := by lin_cert using reduction6384.terms
def image6385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6385 : InImage map_20_174 image6385 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6385 : Bundle := named_bundle% "RealMapCertificates/relations/basis6385.json"
theorem reductionProof6385 : EqualModuloRelations reduction6385.relations reduction6385.input reduction6385.output := by lin_cert using reduction6385.terms
theorem substitutionProof6385 : IsMapEvaluation generatorImages reduction6385.relations [8,613] reduction6385.output := by lin_cert using reduction6385.terms
def image6386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6386 : InImage map_20_174 image6386 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6386 : Bundle := named_bundle% "RealMapCertificates/relations/basis6386.json"
theorem reductionProof6386 : EqualModuloRelations reduction6386.relations reduction6386.input reduction6386.output := by lin_cert using reduction6386.terms
theorem substitutionProof6386 : IsMapEvaluation generatorImages reduction6386.relations [3,3,628] reduction6386.output := by lin_cert using reduction6386.terms
def image6387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6387 : InImage map_20_174 image6387 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6387 : Bundle := named_bundle% "RealMapCertificates/relations/basis6387.json"
theorem reductionProof6387 : EqualModuloRelations reduction6387.relations reduction6387.input reduction6387.output := by lin_cert using reduction6387.terms
theorem substitutionProof6387 : IsMapEvaluation generatorImages reduction6387.relations [0,0,0,0,763] reduction6387.output := by lin_cert using reduction6387.terms
def map_20_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6485 : InImage map_20_175 image6485 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6485 : Bundle := named_bundle% "RealMapCertificates/relations/basis6485.json"
theorem reductionProof6485 : EqualModuloRelations reduction6485.relations reduction6485.input reduction6485.output := by lin_cert using reduction6485.terms
theorem substitutionProof6485 : IsMapEvaluation generatorImages reduction6485.relations [1,798] reduction6485.output := by lin_cert using reduction6485.terms
def map_20_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6592 : InImage map_20_176 image6592 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6592 : Bundle := named_bundle% "RealMapCertificates/relations/basis6592.json"
theorem reductionProof6592 : EqualModuloRelations reduction6592.relations reduction6592.input reduction6592.output := by lin_cert using reduction6592.terms
theorem substitutionProof6592 : IsMapEvaluation generatorImages reduction6592.relations [79,209] reduction6592.output := by lin_cert using reduction6592.terms
def map_20_177 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6729 : InImage map_20_177 image6729 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6729 : Bundle := named_bundle% "RealMapCertificates/relations/basis6729.json"
theorem reductionProof6729 : EqualModuloRelations reduction6729.relations reduction6729.input reduction6729.output := by lin_cert using reduction6729.terms
theorem substitutionProof6729 : IsMapEvaluation generatorImages reduction6729.relations [857] reduction6729.output := by lin_cert using reduction6729.terms
def image6730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6730 : InImage map_20_177 image6730 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6730 : Bundle := named_bundle% "RealMapCertificates/relations/basis6730.json"
theorem reductionProof6730 : EqualModuloRelations reduction6730.relations reduction6730.input reduction6730.output := by lin_cert using reduction6730.terms
theorem substitutionProof6730 : IsMapEvaluation generatorImages reduction6730.relations [8,17,333] reduction6730.output := by lin_cert using reduction6730.terms
def image6731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6731 : InImage map_20_177 image6731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6731 : Bundle := named_bundle% "RealMapCertificates/relations/basis6731.json"
theorem reductionProof6731 : EqualModuloRelations reduction6731.relations reduction6731.input reduction6731.output := by lin_cert using reduction6731.terms
theorem substitutionProof6731 : IsMapEvaluation generatorImages reduction6731.relations [0,64,235] reduction6731.output := by lin_cert using reduction6731.terms
def image6732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6732 : InImage map_20_177 image6732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6732 : Bundle := named_bundle% "RealMapCertificates/relations/basis6732.json"
theorem reductionProof6732 : EqualModuloRelations reduction6732.relations reduction6732.input reduction6732.output := by lin_cert using reduction6732.terms
theorem substitutionProof6732 : IsMapEvaluation generatorImages reduction6732.relations [0,0,0,0,0,0,0,0,0,743] reduction6732.output := by lin_cert using reduction6732.terms
def map_20_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6826 : InImage map_20_178 image6826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6826 : Bundle := named_bundle% "RealMapCertificates/relations/basis6826.json"
theorem reductionProof6826 : EqualModuloRelations reduction6826.relations reduction6826.input reduction6826.output := by lin_cert using reduction6826.terms
theorem substitutionProof6826 : IsMapEvaluation generatorImages reduction6826.relations [13,13,335] reduction6826.output := by lin_cert using reduction6826.terms
def image6827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6827 : InImage map_20_178 image6827 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6827 : Bundle := named_bundle% "RealMapCertificates/relations/basis6827.json"
theorem reductionProof6827 : EqualModuloRelations reduction6827.relations reduction6827.input reduction6827.output := by lin_cert using reduction6827.terms
theorem substitutionProof6827 : IsMapEvaluation generatorImages reduction6827.relations [0,64,239] reduction6827.output := by lin_cert using reduction6827.terms
def image6828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6828 : InImage map_20_178 image6828 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6828 : Bundle := named_bundle% "RealMapCertificates/relations/basis6828.json"
theorem reductionProof6828 : EqualModuloRelations reduction6828.relations reduction6828.input reduction6828.output := by lin_cert using reduction6828.terms
theorem substitutionProof6828 : IsMapEvaluation generatorImages reduction6828.relations [0,0,837] reduction6828.output := by lin_cert using reduction6828.terms
def image6829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6829 : InImage map_20_178 image6829 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6829 : Bundle := named_bundle% "RealMapCertificates/relations/basis6829.json"
theorem reductionProof6829 : EqualModuloRelations reduction6829.relations reduction6829.input reduction6829.output := by lin_cert using reduction6829.terms
theorem substitutionProof6829 : IsMapEvaluation generatorImages reduction6829.relations [0,0,836] reduction6829.output := by lin_cert using reduction6829.terms
def map_20_179 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6962 : InImage map_20_179 image6962 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6962 : Bundle := named_bundle% "RealMapCertificates/relations/basis6962.json"
theorem reductionProof6962 : EqualModuloRelations reduction6962.relations reduction6962.input reduction6962.output := by lin_cert using reduction6962.terms
theorem substitutionProof6962 : IsMapEvaluation generatorImages reduction6962.relations [89,209] reduction6962.output := by lin_cert using reduction6962.terms
def image6963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6963 : InImage map_20_179 image6963 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6963 : Bundle := named_bundle% "RealMapCertificates/relations/basis6963.json"
theorem reductionProof6963 : EqualModuloRelations reduction6963.relations reduction6963.input reduction6963.output := by lin_cert using reduction6963.terms
theorem substitutionProof6963 : IsMapEvaluation generatorImages reduction6963.relations [2,822] reduction6963.output := by lin_cert using reduction6963.terms
def image6964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6964 : InImage map_20_179 image6964 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6964 : Bundle := named_bundle% "RealMapCertificates/relations/basis6964.json"
theorem reductionProof6964 : EqualModuloRelations reduction6964.relations reduction6964.input reduction6964.output := by lin_cert using reduction6964.terms
theorem substitutionProof6964 : IsMapEvaluation generatorImages reduction6964.relations [1,64,239] reduction6964.output := by lin_cert using reduction6964.terms
def image6965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6965 : InImage map_20_179 image6965 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6965 : Bundle := named_bundle% "RealMapCertificates/relations/basis6965.json"
theorem reductionProof6965 : EqualModuloRelations reduction6965.relations reduction6965.input reduction6965.output := by lin_cert using reduction6965.terms
theorem substitutionProof6965 : IsMapEvaluation generatorImages reduction6965.relations [0,0,0,838] reduction6965.output := by lin_cert using reduction6965.terms
def map_20_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7104 : InImage map_20_180 image7104 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7104 : Bundle := named_bundle% "RealMapCertificates/relations/basis7104.json"
theorem reductionProof7104 : EqualModuloRelations reduction7104.relations reduction7104.input reduction7104.output := by lin_cert using reduction7104.terms
theorem substitutionProof7104 : IsMapEvaluation generatorImages reduction7104.relations [9,13,408] reduction7104.output := by lin_cert using reduction7104.terms
def image7105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7105 : InImage map_20_180 image7105 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7105 : Bundle := named_bundle% "RealMapCertificates/relations/basis7105.json"
theorem reductionProof7105 : EqualModuloRelations reduction7105.relations reduction7105.input reduction7105.output := by lin_cert using reduction7105.terms
theorem substitutionProof7105 : IsMapEvaluation generatorImages reduction7105.relations [1,1,836] reduction7105.output := by lin_cert using reduction7105.terms
def image7106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7106 : InImage map_20_180 image7106 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7106 : Bundle := named_bundle% "RealMapCertificates/relations/basis7106.json"
theorem reductionProof7106 : EqualModuloRelations reduction7106.relations reduction7106.input reduction7106.output := by lin_cert using reduction7106.terms
theorem substitutionProof7106 : IsMapEvaluation generatorImages reduction7106.relations [0,879] reduction7106.output := by lin_cert using reduction7106.terms
def image7107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7107 : InImage map_20_180 image7107 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7107 : Bundle := named_bundle% "RealMapCertificates/relations/basis7107.json"
theorem reductionProof7107 : EqualModuloRelations reduction7107.relations reduction7107.input reduction7107.output := by lin_cert using reduction7107.terms
theorem substitutionProof7107 : IsMapEvaluation generatorImages reduction7107.relations [0,0,0,0,0,825] reduction7107.output := by lin_cert using reduction7107.terms
def map_20_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7207 : InImage map_20_181 image7207 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7207 : Bundle := named_bundle% "RealMapCertificates/relations/basis7207.json"
theorem reductionProof7207 : EqualModuloRelations reduction7207.relations reduction7207.input reduction7207.output := by lin_cert using reduction7207.terms
theorem substitutionProof7207 : IsMapEvaluation generatorImages reduction7207.relations [13,618] reduction7207.output := by lin_cert using reduction7207.terms
def image7208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7208 : InImage map_20_181 image7208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7208 : Bundle := named_bundle% "RealMapCertificates/relations/basis7208.json"
theorem reductionProof7208 : EqualModuloRelations reduction7208.relations reduction7208.input reduction7208.output := by lin_cert using reduction7208.terms
theorem substitutionProof7208 : IsMapEvaluation generatorImages reduction7208.relations [0,0,880] reduction7208.output := by lin_cert using reduction7208.terms
def map_20_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7317 : InImage map_20_182 image7317 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7317 : Bundle := named_bundle% "RealMapCertificates/relations/basis7317.json"
theorem reductionProof7317 : EqualModuloRelations reduction7317.relations reduction7317.input reduction7317.output := by lin_cert using reduction7317.terms
theorem substitutionProof7317 : IsMapEvaluation generatorImages reduction7317.relations [101,209] reduction7317.output := by lin_cert using reduction7317.terms
def image7318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7318 : InImage map_20_182 image7318 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7318 : Bundle := named_bundle% "RealMapCertificates/relations/basis7318.json"
theorem reductionProof7318 : EqualModuloRelations reduction7318.relations reduction7318.input reduction7318.output := by lin_cert using reduction7318.terms
theorem substitutionProof7318 : IsMapEvaluation generatorImages reduction7318.relations [13,629] reduction7318.output := by lin_cert using reduction7318.terms
def image7319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7319 : InImage map_20_182 image7319 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7319 : Bundle := named_bundle% "RealMapCertificates/relations/basis7319.json"
theorem reductionProof7319 : EqualModuloRelations reduction7319.relations reduction7319.input reduction7319.output := by lin_cert using reduction7319.terms
theorem substitutionProof7319 : IsMapEvaluation generatorImages reduction7319.relations [0,0,47,324] reduction7319.output := by lin_cert using reduction7319.terms
def map_20_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7467 : InImage map_20_183 image7467 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7467 : Bundle := named_bundle% "RealMapCertificates/relations/basis7467.json"
theorem reductionProof7467 : EqualModuloRelations reduction7467.relations reduction7467.input reduction7467.output := by lin_cert using reduction7467.terms
theorem substitutionProof7467 : IsMapEvaluation generatorImages reduction7467.relations [64,269] reduction7467.output := by lin_cert using reduction7467.terms
def image7468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7468 : InImage map_20_183 image7468 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7468 : Bundle := named_bundle% "RealMapCertificates/relations/basis7468.json"
theorem reductionProof7468 : EqualModuloRelations reduction7468.relations reduction7468.input reduction7468.output := by lin_cert using reduction7468.terms
theorem substitutionProof7468 : IsMapEvaluation generatorImages reduction7468.relations [13,13,408] reduction7468.output := by lin_cert using reduction7468.terms
def map_20_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7568 : InImage map_20_184 image7568 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7568 : Bundle := named_bundle% "RealMapCertificates/relations/basis7568.json"
theorem reductionProof7568 : EqualModuloRelations reduction7568.relations reduction7568.input reduction7568.output := by lin_cert using reduction7568.terms
theorem substitutionProof7568 : IsMapEvaluation generatorImages reduction7568.relations [68,267] reduction7568.output := by lin_cert using reduction7568.terms
def image7569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7569 : InImage map_20_184 image7569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7569 : Bundle := named_bundle% "RealMapCertificates/relations/basis7569.json"
theorem reductionProof7569 : EqualModuloRelations reduction7569.relations reduction7569.input reduction7569.output := by lin_cert using reduction7569.terms
theorem substitutionProof7569 : IsMapEvaluation generatorImages reduction7569.relations [9,677] reduction7569.output := by lin_cert using reduction7569.terms
def image7570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7570 : InImage map_20_184 image7570 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7570 : Bundle := named_bundle% "RealMapCertificates/relations/basis7570.json"
theorem reductionProof7570 : EqualModuloRelations reduction7570.relations reduction7570.input reduction7570.output := by lin_cert using reduction7570.terms
theorem substitutionProof7570 : IsMapEvaluation generatorImages reduction7570.relations [0,0,0,891] reduction7570.output := by lin_cert using reduction7570.terms
def map_20_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7689 : InImage map_20_185 image7689 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7689 : Bundle := named_bundle% "RealMapCertificates/relations/basis7689.json"
theorem reductionProof7689 : EqualModuloRelations reduction7689.relations reduction7689.input reduction7689.output := by lin_cert using reduction7689.terms
theorem substitutionProof7689 : IsMapEvaluation generatorImages reduction7689.relations [944] reduction7689.output := by lin_cert using reduction7689.terms
def image7690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7690 : InImage map_20_185 image7690 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7690 : Bundle := named_bundle% "RealMapCertificates/relations/basis7690.json"
theorem reductionProof7690 : EqualModuloRelations reduction7690.relations reduction7690.input reduction7690.output := by lin_cert using reduction7690.terms
theorem substitutionProof7690 : IsMapEvaluation generatorImages reduction7690.relations [943] reduction7690.output := by lin_cert using reduction7690.terms
def image7691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7691 : InImage map_20_185 image7691 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7691 : Bundle := named_bundle% "RealMapCertificates/relations/basis7691.json"
theorem reductionProof7691 : EqualModuloRelations reduction7691.relations reduction7691.input reduction7691.output := by lin_cert using reduction7691.terms
theorem substitutionProof7691 : IsMapEvaluation generatorImages reduction7691.relations [0,0,0,908] reduction7691.output := by lin_cert using reduction7691.terms
def map_20_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7836 : InImage map_20_186 image7836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7836 : Bundle := named_bundle% "RealMapCertificates/relations/basis7836.json"
theorem reductionProof7836 : EqualModuloRelations reduction7836.relations reduction7836.input reduction7836.output := by lin_cert using reduction7836.terms
theorem substitutionProof7836 : IsMapEvaluation generatorImages reduction7836.relations [959] reduction7836.output := by lin_cert using reduction7836.terms
def image7837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7837 : InImage map_20_186 image7837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7837 : Bundle := named_bundle% "RealMapCertificates/relations/basis7837.json"
theorem reductionProof7837 : EqualModuloRelations reduction7837.relations reduction7837.input reduction7837.output := by lin_cert using reduction7837.terms
theorem substitutionProof7837 : IsMapEvaluation generatorImages reduction7837.relations [1,931] reduction7837.output := by lin_cert using reduction7837.terms
def image7838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7838 : InImage map_20_186 image7838 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7838 : Bundle := named_bundle% "RealMapCertificates/relations/basis7838.json"
theorem reductionProof7838 : EqualModuloRelations reduction7838.relations reduction7838.input reduction7838.output := by lin_cert using reduction7838.terms
theorem substitutionProof7838 : IsMapEvaluation generatorImages reduction7838.relations [0,0,0,0,50,324] reduction7838.output := by lin_cert using reduction7838.terms
def map_20_187 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7920 : InImage map_20_187 image7920 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7920 : Bundle := named_bundle% "RealMapCertificates/relations/basis7920.json"
theorem reductionProof7920 : EqualModuloRelations reduction7920.relations reduction7920.input reduction7920.output := by lin_cert using reduction7920.terms
theorem substitutionProof7920 : IsMapEvaluation generatorImages reduction7920.relations [67,287] reduction7920.output := by lin_cert using reduction7920.terms
def image7921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7921 : InImage map_20_187 image7921 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7921 : Bundle := named_bundle% "RealMapCertificates/relations/basis7921.json"
theorem reductionProof7921 : EqualModuloRelations reduction7921.relations reduction7921.input reduction7921.output := by lin_cert using reduction7921.terms
theorem substitutionProof7921 : IsMapEvaluation generatorImages reduction7921.relations [58,324] reduction7921.output := by lin_cert using reduction7921.terms
def image7922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7922 : InImage map_20_187 image7922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7922 : Bundle := named_bundle% "RealMapCertificates/relations/basis7922.json"
theorem reductionProof7922 : EqualModuloRelations reduction7922.relations reduction7922.input reduction7922.output := by lin_cert using reduction7922.terms
theorem substitutionProof7922 : IsMapEvaluation generatorImages reduction7922.relations [13,677] reduction7922.output := by lin_cert using reduction7922.terms
def image7923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7923 : InImage map_20_187 image7923 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7923 : Bundle := named_bundle% "RealMapCertificates/relations/basis7923.json"
theorem reductionProof7923 : EqualModuloRelations reduction7923.relations reduction7923.input reduction7923.output := by lin_cert using reduction7923.terms
theorem substitutionProof7923 : IsMapEvaluation generatorImages reduction7923.relations [0,960] reduction7923.output := by lin_cert using reduction7923.terms
def map_20_188 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8035 : InImage map_20_188 image8035 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8035 : Bundle := named_bundle% "RealMapCertificates/relations/basis8035.json"
theorem reductionProof8035 : EqualModuloRelations reduction8035.relations reduction8035.input reduction8035.output := by lin_cert using reduction8035.terms
theorem substitutionProof8035 : IsMapEvaluation generatorImages reduction8035.relations [983] reduction8035.output := by lin_cert using reduction8035.terms
def image8036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8036 : InImage map_20_188 image8036 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8036 : Bundle := named_bundle% "RealMapCertificates/relations/basis8036.json"
theorem reductionProof8036 : EqualModuloRelations reduction8036.relations reduction8036.input reduction8036.output := by lin_cert using reduction8036.terms
theorem substitutionProof8036 : IsMapEvaluation generatorImages reduction8036.relations [982] reduction8036.output := by lin_cert using reduction8036.terms
def image8037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8037 : InImage map_20_188 image8037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8037 : Bundle := named_bundle% "RealMapCertificates/relations/basis8037.json"
theorem reductionProof8037 : EqualModuloRelations reduction8037.relations reduction8037.input reduction8037.output := by lin_cert using reduction8037.terms
theorem substitutionProof8037 : IsMapEvaluation generatorImages reduction8037.relations [0,964] reduction8037.output := by lin_cert using reduction8037.terms
def image8038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8038 : InImage map_20_188 image8038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8038 : Bundle := named_bundle% "RealMapCertificates/relations/basis8038.json"
theorem reductionProof8038 : EqualModuloRelations reduction8038.relations reduction8038.input reduction8038.output := by lin_cert using reduction8038.terms
theorem substitutionProof8038 : IsMapEvaluation generatorImages reduction8038.relations [0,0,0,55,324] reduction8038.output := by lin_cert using reduction8038.terms
def map_20_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8189 : InImage map_20_189 image8189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8189 : Bundle := named_bundle% "RealMapCertificates/relations/basis8189.json"
theorem reductionProof8189 : EqualModuloRelations reduction8189.relations reduction8189.input reduction8189.output := by lin_cert using reduction8189.terms
theorem substitutionProof8189 : IsMapEvaluation generatorImages reduction8189.relations [13,13,476] reduction8189.output := by lin_cert using reduction8189.terms
def image8190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8190 : InImage map_20_189 image8190 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8190 : Bundle := named_bundle% "RealMapCertificates/relations/basis8190.json"
theorem reductionProof8190 : EqualModuloRelations reduction8190.relations reduction8190.input reduction8190.output := by lin_cert using reduction8190.terms
theorem substitutionProof8190 : IsMapEvaluation generatorImages reduction8190.relations [5,825] reduction8190.output := by lin_cert using reduction8190.terms
def image8191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8191 : InImage map_20_189 image8191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8191 : Bundle := named_bundle% "RealMapCertificates/relations/basis8191.json"
theorem reductionProof8191 : EqualModuloRelations reduction8191.relations reduction8191.input reduction8191.output := by lin_cert using reduction8191.terms
theorem substitutionProof8191 : IsMapEvaluation generatorImages reduction8191.relations [1,964] reduction8191.output := by lin_cert using reduction8191.terms
def image8192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8192 : InImage map_20_189 image8192 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8192 : Bundle := named_bundle% "RealMapCertificates/relations/basis8192.json"
theorem reductionProof8192 : EqualModuloRelations reduction8192.relations reduction8192.input reduction8192.output := by lin_cert using reduction8192.terms
theorem substitutionProof8192 : IsMapEvaluation generatorImages reduction8192.relations [0,984] reduction8192.output := by lin_cert using reduction8192.terms
def map_20_190 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8279 : InImage map_20_190 image8279 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8279 : Bundle := named_bundle% "RealMapCertificates/relations/basis8279.json"
theorem reductionProof8279 : EqualModuloRelations reduction8279.relations reduction8279.input reduction8279.output := by lin_cert using reduction8279.terms
theorem substitutionProof8279 : IsMapEvaluation generatorImages reduction8279.relations [75,286] reduction8279.output := by lin_cert using reduction8279.terms
def image8280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8280 : InImage map_20_190 image8280 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8280 : Bundle := named_bundle% "RealMapCertificates/relations/basis8280.json"
theorem reductionProof8280 : EqualModuloRelations reduction8280.relations reduction8280.input reduction8280.output := by lin_cert using reduction8280.terms
theorem substitutionProof8280 : IsMapEvaluation generatorImages reduction8280.relations [0,1000] reduction8280.output := by lin_cert using reduction8280.terms
def map_20_191 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8408 : InImage map_20_191 image8408 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8408 : Bundle := named_bundle% "RealMapCertificates/relations/basis8408.json"
theorem reductionProof8408 : EqualModuloRelations reduction8408.relations reduction8408.input reduction8408.output := by lin_cert using reduction8408.terms
theorem substitutionProof8408 : IsMapEvaluation generatorImages reduction8408.relations [1038] reduction8408.output := by lin_cert using reduction8408.terms
def image8409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8409 : InImage map_20_191 image8409 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8409 : Bundle := named_bundle% "RealMapCertificates/relations/basis8409.json"
theorem reductionProof8409 : EqualModuloRelations reduction8409.relations reduction8409.input reduction8409.output := by lin_cert using reduction8409.terms
theorem substitutionProof8409 : IsMapEvaluation generatorImages reduction8409.relations [0,1011] reduction8409.output := by lin_cert using reduction8409.terms
def image8410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8410 : InImage map_20_191 image8410 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8410 : Bundle := named_bundle% "RealMapCertificates/relations/basis8410.json"
theorem reductionProof8410 : EqualModuloRelations reduction8410.relations reduction8410.input reduction8410.output := by lin_cert using reduction8410.terms
theorem substitutionProof8410 : IsMapEvaluation generatorImages reduction8410.relations [0,0,0,0,965] reduction8410.output := by lin_cert using reduction8410.terms
def map_20_192 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8560 : InImage map_20_192 image8560 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8560 : Bundle := named_bundle% "RealMapCertificates/relations/basis8560.json"
theorem reductionProof8560 : EqualModuloRelations reduction8560.relations reduction8560.input reduction8560.output := by lin_cert using reduction8560.terms
theorem substitutionProof8560 : IsMapEvaluation generatorImages reduction8560.relations [1,1011] reduction8560.output := by lin_cert using reduction8560.terms
def image8561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8561 : InImage map_20_192 image8561 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8561 : Bundle := named_bundle% "RealMapCertificates/relations/basis8561.json"
theorem reductionProof8561 : EqualModuloRelations reduction8561.relations reduction8561.input reduction8561.output := by lin_cert using reduction8561.terms
theorem substitutionProof8561 : IsMapEvaluation generatorImages reduction8561.relations [0,1040] reduction8561.output := by lin_cert using reduction8561.terms
def image8562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8562 : InImage map_20_192 image8562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8562 : Bundle := named_bundle% "RealMapCertificates/relations/basis8562.json"
theorem reductionProof8562 : EqualModuloRelations reduction8562.relations reduction8562.input reduction8562.output := by lin_cert using reduction8562.terms
theorem substitutionProof8562 : IsMapEvaluation generatorImages reduction8562.relations [0,1039] reduction8562.output := by lin_cert using reduction8562.terms
def image8563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8563 : InImage map_20_192 image8563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8563 : Bundle := named_bundle% "RealMapCertificates/relations/basis8563.json"
theorem reductionProof8563 : EqualModuloRelations reduction8563.relations reduction8563.input reduction8563.output := by lin_cert using reduction8563.terms
theorem substitutionProof8563 : IsMapEvaluation generatorImages reduction8563.relations [0,0,1014] reduction8563.output := by lin_cert using reduction8563.terms
def image8564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8564 : InImage map_20_192 image8564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8564 : Bundle := named_bundle% "RealMapCertificates/relations/basis8564.json"
theorem reductionProof8564 : EqualModuloRelations reduction8564.relations reduction8564.input reduction8564.output := by lin_cert using reduction8564.terms
theorem substitutionProof8564 : IsMapEvaluation generatorImages reduction8564.relations [0,0,0,0,987] reduction8564.output := by lin_cert using reduction8564.terms
end RealMapCertificates
