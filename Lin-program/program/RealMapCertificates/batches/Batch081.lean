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
  | 40 => [[4,5,6]]
  | 43 => []
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 67 => []
  | 75 => []
  | 78 => [[4,4,4,5,6]]
  | 90 => []
  | 95 => []
  | 188 => []
  | 189 => []
  | 209 => []
  | 213 => []
  | 288 => []
  | 324 => []
  | 363 => []
  | 376 => []
  | 417 => []
  | 569 => []
  | 604 => []
  | 630 => []
  | 960 => []
  | 964 => []
  | 984 => []
  | 1000 => []
  | 1004 => []
  | 1011 => []
  | 1014 => []
  | 1015 => []
  | 1042 => []
  | 1052 => []
  | 1064 => []
  | 1065 => []
  | 1066 => []
  | 1067 => []
  | 1068 => []
  | 1086 => []
  | 1087 => []
  | 1107 => []
  | 1108 => []
  | 1125 => []
  | 1126 => []
  | 1127 => []
  | 1150 => []
  | 1151 => []
  | 1152 => []
  | 1153 => []
  | 1154 => []
  | 1173 => []
  | 1174 => []
  | 1175 => []
  | 1183 => []
  | 1207 => []
  | 1222 => []
  | 1223 => []
  | 1245 => []
  | 1247 => []
  | 1259 => []
  | 1260 => []
  | 1261 => []
  | 1262 => []
  | 1263 => []
  | 1267 => []
  | 1292 => []
  | 1318 => []
  | 1319 => []
  | 1320 => []
  | 1338 => []
  | 1351 => []
  | 1371 => []
  | 1372 => []
  | 1434 => []
  | 1445 => []
  | _ => []
def map_20_193 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8654 : InImage map_20_193 image8654 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8654 : Bundle := named_bundle% "RealMapCertificates/relations/basis8654.json"
theorem reductionProof8654 : EqualModuloRelations reduction8654.relations reduction8654.input reduction8654.output := by lin_cert using reduction8654.terms
theorem substitutionProof8654 : IsMapEvaluation generatorImages reduction8654.relations [1065] reduction8654.output := by lin_cert using reduction8654.terms
def image8655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8655 : InImage map_20_193 image8655 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8655 : Bundle := named_bundle% "RealMapCertificates/relations/basis8655.json"
theorem reductionProof8655 : EqualModuloRelations reduction8655.relations reduction8655.input reduction8655.output := by lin_cert using reduction8655.terms
theorem substitutionProof8655 : IsMapEvaluation generatorImages reduction8655.relations [1064] reduction8655.output := by lin_cert using reduction8655.terms
def image8656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8656 : InImage map_20_193 image8656 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8656 : Bundle := named_bundle% "RealMapCertificates/relations/basis8656.json"
theorem reductionProof8656 : EqualModuloRelations reduction8656.relations reduction8656.input reduction8656.output := by lin_cert using reduction8656.terms
theorem substitutionProof8656 : IsMapEvaluation generatorImages reduction8656.relations [13,75,189] reduction8656.output := by lin_cert using reduction8656.terms
def image8657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8657 : InImage map_20_193 image8657 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8657 : Bundle := named_bundle% "RealMapCertificates/relations/basis8657.json"
theorem reductionProof8657 : EqualModuloRelations reduction8657.relations reduction8657.input reduction8657.output := by lin_cert using reduction8657.terms
theorem substitutionProof8657 : IsMapEvaluation generatorImages reduction8657.relations [0,0,0,1015] reduction8657.output := by lin_cert using reduction8657.terms
def image8658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8658 : InImage map_20_193 image8658 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8658 : Bundle := named_bundle% "RealMapCertificates/relations/basis8658.json"
theorem reductionProof8658 : EqualModuloRelations reduction8658.relations reduction8658.input reduction8658.output := by lin_cert using reduction8658.terms
theorem substitutionProof8658 : IsMapEvaluation generatorImages reduction8658.relations [0,0,0,0,0,17,17,324] reduction8658.output := by lin_cert using reduction8658.terms
def map_20_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8801 : InImage map_20_194 image8801 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8801 : Bundle := named_bundle% "RealMapCertificates/relations/basis8801.json"
theorem reductionProof8801 : EqualModuloRelations reduction8801.relations reduction8801.input reduction8801.output := by lin_cert using reduction8801.terms
theorem substitutionProof8801 : IsMapEvaluation generatorImages reduction8801.relations [3,960] reduction8801.output := by lin_cert using reduction8801.terms
def image8802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8802 : InImage map_20_194 image8802 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8802 : Bundle := named_bundle% "RealMapCertificates/relations/basis8802.json"
theorem reductionProof8802 : EqualModuloRelations reduction8802.relations reduction8802.input reduction8802.output := by lin_cert using reduction8802.terms
theorem substitutionProof8802 : IsMapEvaluation generatorImages reduction8802.relations [1,1052] reduction8802.output := by lin_cert using reduction8802.terms
def image8803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8803 : InImage map_20_194 image8803 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8803 : Bundle := named_bundle% "RealMapCertificates/relations/basis8803.json"
theorem reductionProof8803 : EqualModuloRelations reduction8803.relations reduction8803.input reduction8803.output := by lin_cert using reduction8803.terms
theorem substitutionProof8803 : IsMapEvaluation generatorImages reduction8803.relations [0,1066] reduction8803.output := by lin_cert using reduction8803.terms
def image8804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8804 : InImage map_20_194 image8804 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8804 : Bundle := named_bundle% "RealMapCertificates/relations/basis8804.json"
theorem reductionProof8804 : EqualModuloRelations reduction8804.relations reduction8804.input reduction8804.output := by lin_cert using reduction8804.terms
theorem substitutionProof8804 : IsMapEvaluation generatorImages reduction8804.relations [0,0,0,0,0,0,59,324] reduction8804.output := by lin_cert using reduction8804.terms
def map_20_195 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8966 : InImage map_20_195 image8966 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8966 : Bundle := named_bundle% "RealMapCertificates/relations/basis8966.json"
theorem reductionProof8966 : EqualModuloRelations reduction8966.relations reduction8966.input reduction8966.output := by lin_cert using reduction8966.terms
theorem substitutionProof8966 : IsMapEvaluation generatorImages reduction8966.relations [1,1066] reduction8966.output := by lin_cert using reduction8966.terms
def image8967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8967 : InImage map_20_195 image8967 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8967 : Bundle := named_bundle% "RealMapCertificates/relations/basis8967.json"
theorem reductionProof8967 : EqualModuloRelations reduction8967.relations reduction8967.input reduction8967.output := by lin_cert using reduction8967.terms
theorem substitutionProof8967 : IsMapEvaluation generatorImages reduction8967.relations [0,0,1068] reduction8967.output := by lin_cert using reduction8967.terms
def map_20_196 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9070 : InImage map_20_196 image9070 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9070 : Bundle := named_bundle% "RealMapCertificates/relations/basis9070.json"
theorem reductionProof9070 : EqualModuloRelations reduction9070.relations reduction9070.input reduction9070.output := by lin_cert using reduction9070.terms
theorem substitutionProof9070 : IsMapEvaluation generatorImages reduction9070.relations [1108] reduction9070.output := by lin_cert using reduction9070.terms
def image9071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9071 : InImage map_20_196 image9071 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9071 : Bundle := named_bundle% "RealMapCertificates/relations/basis9071.json"
theorem reductionProof9071 : EqualModuloRelations reduction9071.relations reduction9071.input reduction9071.output := by lin_cert using reduction9071.terms
theorem substitutionProof9071 : IsMapEvaluation generatorImages reduction9071.relations [1107] reduction9071.output := by lin_cert using reduction9071.terms
def image9072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9072 : InImage map_20_196 image9072 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9072 : Bundle := named_bundle% "RealMapCertificates/relations/basis9072.json"
theorem reductionProof9072 : EqualModuloRelations reduction9072.relations reduction9072.input reduction9072.output := by lin_cert using reduction9072.terms
theorem substitutionProof9072 : IsMapEvaluation generatorImages reduction9072.relations [9,13,569] reduction9072.output := by lin_cert using reduction9072.terms
def image9073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9073 : InImage map_20_196 image9073 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9073 : Bundle := named_bundle% "RealMapCertificates/relations/basis9073.json"
theorem reductionProof9073 : EqualModuloRelations reduction9073.relations reduction9073.input reduction9073.output := by lin_cert using reduction9073.terms
theorem substitutionProof9073 : IsMapEvaluation generatorImages reduction9073.relations [3,984] reduction9073.output := by lin_cert using reduction9073.terms
def image9074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9074 : InImage map_20_196 image9074 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9074 : Bundle := named_bundle% "RealMapCertificates/relations/basis9074.json"
theorem reductionProof9074 : EqualModuloRelations reduction9074.relations reduction9074.input reduction9074.output := by lin_cert using reduction9074.terms
theorem substitutionProof9074 : IsMapEvaluation generatorImages reduction9074.relations [2,1052] reduction9074.output := by lin_cert using reduction9074.terms
def map_20_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9225 : InImage map_20_197 image9225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9225 : Bundle := named_bundle% "RealMapCertificates/relations/basis9225.json"
theorem reductionProof9225 : EqualModuloRelations reduction9225.relations reduction9225.input reduction9225.output := by lin_cert using reduction9225.terms
theorem substitutionProof9225 : IsMapEvaluation generatorImages reduction9225.relations [1125] reduction9225.output := by lin_cert using reduction9225.terms
def image9226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9226 : InImage map_20_197 image9226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9226 : Bundle := named_bundle% "RealMapCertificates/relations/basis9226.json"
theorem reductionProof9226 : EqualModuloRelations reduction9226.relations reduction9226.input reduction9226.output := by lin_cert using reduction9226.terms
theorem substitutionProof9226 : IsMapEvaluation generatorImages reduction9226.relations [78,324] reduction9226.output := by lin_cert using reduction9226.terms
def image9227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9227 : InImage map_20_197 image9227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9227 : Bundle := named_bundle% "RealMapCertificates/relations/basis9227.json"
theorem reductionProof9227 : EqualModuloRelations reduction9227.relations reduction9227.input reduction9227.output := by lin_cert using reduction9227.terms
theorem substitutionProof9227 : IsMapEvaluation generatorImages reduction9227.relations [0,67,363] reduction9227.output := by lin_cert using reduction9227.terms
def map_20_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9411 : InImage map_20_198 image9411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9411 : Bundle := named_bundle% "RealMapCertificates/relations/basis9411.json"
theorem reductionProof9411 : EqualModuloRelations reduction9411.relations reduction9411.input reduction9411.output := by lin_cert using reduction9411.terms
theorem substitutionProof9411 : IsMapEvaluation generatorImages reduction9411.relations [1151] reduction9411.output := by lin_cert using reduction9411.terms
def image9412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9412 : InImage map_20_198 image9412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9412 : Bundle := named_bundle% "RealMapCertificates/relations/basis9412.json"
theorem reductionProof9412 : EqualModuloRelations reduction9412.relations reduction9412.input reduction9412.output := by lin_cert using reduction9412.terms
theorem substitutionProof9412 : IsMapEvaluation generatorImages reduction9412.relations [1150] reduction9412.output := by lin_cert using reduction9412.terms
def image9413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9413 : InImage map_20_198 image9413 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9413 : Bundle := named_bundle% "RealMapCertificates/relations/basis9413.json"
theorem reductionProof9413 : EqualModuloRelations reduction9413.relations reduction9413.input reduction9413.output := by lin_cert using reduction9413.terms
theorem substitutionProof9413 : IsMapEvaluation generatorImages reduction9413.relations [3,1011] reduction9413.output := by lin_cert using reduction9413.terms
def image9414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9414 : InImage map_20_198 image9414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9414 : Bundle := named_bundle% "RealMapCertificates/relations/basis9414.json"
theorem reductionProof9414 : EqualModuloRelations reduction9414.relations reduction9414.input reduction9414.output := by lin_cert using reduction9414.terms
theorem substitutionProof9414 : IsMapEvaluation generatorImages reduction9414.relations [1,1,1086] reduction9414.output := by lin_cert using reduction9414.terms
def map_20_199 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9536 : InImage map_20_199 image9536 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9536 : Bundle := named_bundle% "RealMapCertificates/relations/basis9536.json"
theorem reductionProof9536 : EqualModuloRelations reduction9536.relations reduction9536.input reduction9536.output := by lin_cert using reduction9536.terms
theorem substitutionProof9536 : IsMapEvaluation generatorImages reduction9536.relations [1173] reduction9536.output := by lin_cert using reduction9536.terms
def image9537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9537 : InImage map_20_199 image9537 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9537 : Bundle := named_bundle% "RealMapCertificates/relations/basis9537.json"
theorem reductionProof9537 : EqualModuloRelations reduction9537.relations reduction9537.input reduction9537.output := by lin_cert using reduction9537.terms
theorem substitutionProof9537 : IsMapEvaluation generatorImages reduction9537.relations [13,13,569] reduction9537.output := by lin_cert using reduction9537.terms
def image9538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9538 : InImage map_20_199 image9538 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9538 : Bundle := named_bundle% "RealMapCertificates/relations/basis9538.json"
theorem reductionProof9538 : EqualModuloRelations reduction9538.relations reduction9538.input reduction9538.output := by lin_cert using reduction9538.terms
theorem substitutionProof9538 : IsMapEvaluation generatorImages reduction9538.relations [1,1126] reduction9538.output := by lin_cert using reduction9538.terms
def image9539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9539 : InImage map_20_199 image9539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9539 : Bundle := named_bundle% "RealMapCertificates/relations/basis9539.json"
theorem reductionProof9539 : EqualModuloRelations reduction9539.relations reduction9539.input reduction9539.output := by lin_cert using reduction9539.terms
theorem substitutionProof9539 : IsMapEvaluation generatorImages reduction9539.relations [0,1153] reduction9539.output := by lin_cert using reduction9539.terms
def image9540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9540 : InImage map_20_199 image9540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9540 : Bundle := named_bundle% "RealMapCertificates/relations/basis9540.json"
theorem reductionProof9540 : EqualModuloRelations reduction9540.relations reduction9540.input reduction9540.output := by lin_cert using reduction9540.terms
theorem substitutionProof9540 : IsMapEvaluation generatorImages reduction9540.relations [0,1152] reduction9540.output := by lin_cert using reduction9540.terms
def image9541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9541 : InImage map_20_199 image9541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9541 : Bundle := named_bundle% "RealMapCertificates/relations/basis9541.json"
theorem reductionProof9541 : EqualModuloRelations reduction9541.relations reduction9541.input reduction9541.output := by lin_cert using reduction9541.terms
theorem substitutionProof9541 : IsMapEvaluation generatorImages reduction9541.relations [0,3,1014] reduction9541.output := by lin_cert using reduction9541.terms
def map_20_200 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9697 : InImage map_20_200 image9697 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9697 : Bundle := named_bundle% "RealMapCertificates/relations/basis9697.json"
theorem reductionProof9697 : EqualModuloRelations reduction9697.relations reduction9697.input reduction9697.output := by lin_cert using reduction9697.terms
theorem substitutionProof9697 : IsMapEvaluation generatorImages reduction9697.relations [8,50,324] reduction9697.output := by lin_cert using reduction9697.terms
def image9698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9698 : InImage map_20_200 image9698 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9698 : Bundle := named_bundle% "RealMapCertificates/relations/basis9698.json"
theorem reductionProof9698 : EqualModuloRelations reduction9698.relations reduction9698.input reduction9698.output := by lin_cert using reduction9698.terms
theorem substitutionProof9698 : IsMapEvaluation generatorImages reduction9698.relations [1,1153] reduction9698.output := by lin_cert using reduction9698.terms
def image9699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9699 : InImage map_20_200 image9699 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9699 : Bundle := named_bundle% "RealMapCertificates/relations/basis9699.json"
theorem reductionProof9699 : EqualModuloRelations reduction9699.relations reduction9699.input reduction9699.output := by lin_cert using reduction9699.terms
theorem substitutionProof9699 : IsMapEvaluation generatorImages reduction9699.relations [1,1152] reduction9699.output := by lin_cert using reduction9699.terms
def image9700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9700 : InImage map_20_200 image9700 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9700 : Bundle := named_bundle% "RealMapCertificates/relations/basis9700.json"
theorem reductionProof9700 : EqualModuloRelations reduction9700.relations reduction9700.input reduction9700.output := by lin_cert using reduction9700.terms
theorem substitutionProof9700 : IsMapEvaluation generatorImages reduction9700.relations [0,1174] reduction9700.output := by lin_cert using reduction9700.terms
def image9701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9701 : InImage map_20_200 image9701 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9701 : Bundle := named_bundle% "RealMapCertificates/relations/basis9701.json"
theorem reductionProof9701 : EqualModuloRelations reduction9701.relations reduction9701.input reduction9701.output := by lin_cert using reduction9701.terms
theorem substitutionProof9701 : IsMapEvaluation generatorImages reduction9701.relations [0,0,1154] reduction9701.output := by lin_cert using reduction9701.terms
def image9702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9702 : InImage map_20_200 image9702 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9702 : Bundle := named_bundle% "RealMapCertificates/relations/basis9702.json"
theorem reductionProof9702 : EqualModuloRelations reduction9702.relations reduction9702.input reduction9702.output := by lin_cert using reduction9702.terms
theorem substitutionProof9702 : IsMapEvaluation generatorImages reduction9702.relations [0,0,3,1015] reduction9702.output := by lin_cert using reduction9702.terms
def map_20_201 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9892 : InImage map_20_201 image9892 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9892 : Bundle := named_bundle% "RealMapCertificates/relations/basis9892.json"
theorem reductionProof9892 : EqualModuloRelations reduction9892.relations reduction9892.input reduction9892.output := by lin_cert using reduction9892.terms
theorem substitutionProof9892 : IsMapEvaluation generatorImages reduction9892.relations [1,1174] reduction9892.output := by lin_cert using reduction9892.terms
def image9893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9893 : InImage map_20_201 image9893 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9893 : Bundle := named_bundle% "RealMapCertificates/relations/basis9893.json"
theorem reductionProof9893 : EqualModuloRelations reduction9893.relations reduction9893.input reduction9893.output := by lin_cert using reduction9893.terms
theorem substitutionProof9893 : IsMapEvaluation generatorImages reduction9893.relations [1,3,1042] reduction9893.output := by lin_cert using reduction9893.terms
def image9894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9894 : InImage map_20_201 image9894 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9894 : Bundle := named_bundle% "RealMapCertificates/relations/basis9894.json"
theorem reductionProof9894 : EqualModuloRelations reduction9894.relations reduction9894.input reduction9894.output := by lin_cert using reduction9894.terms
theorem substitutionProof9894 : IsMapEvaluation generatorImages reduction9894.relations [0,0,1175] reduction9894.output := by lin_cert using reduction9894.terms
def map_20_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10017 : InImage map_20_202 image10017 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10017 : Bundle := named_bundle% "RealMapCertificates/relations/basis10017.json"
theorem reductionProof10017 : EqualModuloRelations reduction10017.relations reduction10017.input reduction10017.output := by lin_cert using reduction10017.terms
theorem substitutionProof10017 : IsMapEvaluation generatorImages reduction10017.relations [2,1152] reduction10017.output := by lin_cert using reduction10017.terms
def image10018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10018 : InImage map_20_202 image10018 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10018 : Bundle := named_bundle% "RealMapCertificates/relations/basis10018.json"
theorem reductionProof10018 : EqualModuloRelations reduction10018.relations reduction10018.input reduction10018.output := by lin_cert using reduction10018.terms
theorem substitutionProof10018 : IsMapEvaluation generatorImages reduction10018.relations [1,1183] reduction10018.output := by lin_cert using reduction10018.terms
def image10019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10019 : InImage map_20_202 image10019 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10019 : Bundle := named_bundle% "RealMapCertificates/relations/basis10019.json"
theorem reductionProof10019 : EqualModuloRelations reduction10019.relations reduction10019.input reduction10019.output := by lin_cert using reduction10019.terms
theorem substitutionProof10019 : IsMapEvaluation generatorImages reduction10019.relations [1,1,1154] reduction10019.output := by lin_cert using reduction10019.terms
def image10020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10020 : InImage map_20_202 image10020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10020 : Bundle := named_bundle% "RealMapCertificates/relations/basis10020.json"
theorem reductionProof10020 : EqualModuloRelations reduction10020.relations reduction10020.input reduction10020.output := by lin_cert using reduction10020.terms
theorem substitutionProof10020 : IsMapEvaluation generatorImages reduction10020.relations [0,3,1068] reduction10020.output := by lin_cert using reduction10020.terms
def image10021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10021 : InImage map_20_202 image10021 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10021 : Bundle := named_bundle% "RealMapCertificates/relations/basis10021.json"
theorem reductionProof10021 : EqualModuloRelations reduction10021.relations reduction10021.input reduction10021.output := by lin_cert using reduction10021.terms
theorem substitutionProof10021 : IsMapEvaluation generatorImages reduction10021.relations [0,3,1067] reduction10021.output := by lin_cert using reduction10021.terms
def map_20_203 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10190 : InImage map_20_203 image10190 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10190 : Bundle := named_bundle% "RealMapCertificates/relations/basis10190.json"
theorem reductionProof10190 : EqualModuloRelations reduction10190.relations reduction10190.input reduction10190.output := by lin_cert using reduction10190.terms
theorem substitutionProof10190 : IsMapEvaluation generatorImages reduction10190.relations [43,604] reduction10190.output := by lin_cert using reduction10190.terms
def image10191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10191 : InImage map_20_203 image10191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10191 : Bundle := named_bundle% "RealMapCertificates/relations/basis10191.json"
theorem reductionProof10191 : EqualModuloRelations reduction10191.relations reduction10191.input reduction10191.output := by lin_cert using reduction10191.terms
theorem substitutionProof10191 : IsMapEvaluation generatorImages reduction10191.relations [8,56,324] reduction10191.output := by lin_cert using reduction10191.terms
def image10192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10192 : InImage map_20_203 image10192 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10192 : Bundle := named_bundle% "RealMapCertificates/relations/basis10192.json"
theorem reductionProof10192 : EqualModuloRelations reduction10192.relations reduction10192.input reduction10192.output := by lin_cert using reduction10192.terms
theorem substitutionProof10192 : IsMapEvaluation generatorImages reduction10192.relations [7,964] reduction10192.output := by lin_cert using reduction10192.terms
def image10193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10193 : InImage map_20_203 image10193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10193 : Bundle := named_bundle% "RealMapCertificates/relations/basis10193.json"
theorem reductionProof10193 : EqualModuloRelations reduction10193.relations reduction10193.input reduction10193.output := by lin_cert using reduction10193.terms
theorem substitutionProof10193 : IsMapEvaluation generatorImages reduction10193.relations [0,0,1207] reduction10193.output := by lin_cert using reduction10193.terms
def map_20_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10393 : InImage map_20_204 image10393 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10393 : Bundle := named_bundle% "RealMapCertificates/relations/basis10393.json"
theorem reductionProof10393 : EqualModuloRelations reduction10393.relations reduction10393.input reduction10393.output := by lin_cert using reduction10393.terms
theorem substitutionProof10393 : IsMapEvaluation generatorImages reduction10393.relations [1259] reduction10393.output := by lin_cert using reduction10393.terms
def image10394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10394 : InImage map_20_204 image10394 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10394 : Bundle := named_bundle% "RealMapCertificates/relations/basis10394.json"
theorem reductionProof10394 : EqualModuloRelations reduction10394.relations reduction10394.input reduction10394.output := by lin_cert using reduction10394.terms
theorem substitutionProof10394 : IsMapEvaluation generatorImages reduction10394.relations [189,189] reduction10394.output := by lin_cert using reduction10394.terms
def image10395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10395 : InImage map_20_204 image10395 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10395 : Bundle := named_bundle% "RealMapCertificates/relations/basis10395.json"
theorem reductionProof10395 : EqualModuloRelations reduction10395.relations reduction10395.input reduction10395.output := by lin_cert using reduction10395.terms
theorem substitutionProof10395 : IsMapEvaluation generatorImages reduction10395.relations [0,1245] reduction10395.output := by lin_cert using reduction10395.terms
def image10396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10396 : InImage map_20_204 image10396 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10396 : Bundle := named_bundle% "RealMapCertificates/relations/basis10396.json"
theorem reductionProof10396 : EqualModuloRelations reduction10396.relations reduction10396.input reduction10396.output := by lin_cert using reduction10396.terms
theorem substitutionProof10396 : IsMapEvaluation generatorImages reduction10396.relations [0,17,40,324] reduction10396.output := by lin_cert using reduction10396.terms
def image10397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10397 : InImage map_20_204 image10397 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10397 : Bundle := named_bundle% "RealMapCertificates/relations/basis10397.json"
theorem reductionProof10397 : EqualModuloRelations reduction10397.relations reduction10397.input reduction10397.output := by lin_cert using reduction10397.terms
theorem substitutionProof10397 : IsMapEvaluation generatorImages reduction10397.relations [0,0,1222] reduction10397.output := by lin_cert using reduction10397.terms
def map_20_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10537 : InImage map_20_205 image10537 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10537 : Bundle := named_bundle% "RealMapCertificates/relations/basis10537.json"
theorem reductionProof10537 : EqualModuloRelations reduction10537.relations reduction10537.input reduction10537.output := by lin_cert using reduction10537.terms
theorem substitutionProof10537 : IsMapEvaluation generatorImages reduction10537.relations [13,95,213] reduction10537.output := by lin_cert using reduction10537.terms
def image10538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10538 : InImage map_20_205 image10538 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10538 : Bundle := named_bundle% "RealMapCertificates/relations/basis10538.json"
theorem reductionProof10538 : EqualModuloRelations reduction10538.relations reduction10538.input reduction10538.output := by lin_cert using reduction10538.terms
theorem substitutionProof10538 : IsMapEvaluation generatorImages reduction10538.relations [13,13,13,376] reduction10538.output := by lin_cert using reduction10538.terms
def image10539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10539 : InImage map_20_205 image10539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10539 : Bundle := named_bundle% "RealMapCertificates/relations/basis10539.json"
theorem reductionProof10539 : EqualModuloRelations reduction10539.relations reduction10539.input reduction10539.output := by lin_cert using reduction10539.terms
theorem substitutionProof10539 : IsMapEvaluation generatorImages reduction10539.relations [7,1000] reduction10539.output := by lin_cert using reduction10539.terms
def image10540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10540 : InImage map_20_205 image10540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10540 : Bundle := named_bundle% "RealMapCertificates/relations/basis10540.json"
theorem reductionProof10540 : EqualModuloRelations reduction10540.relations reduction10540.input reduction10540.output := by lin_cert using reduction10540.terms
theorem substitutionProof10540 : IsMapEvaluation generatorImages reduction10540.relations [3,1126] reduction10540.output := by lin_cert using reduction10540.terms
def image10541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10541 : InImage map_20_205 image10541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10541 : Bundle := named_bundle% "RealMapCertificates/relations/basis10541.json"
theorem reductionProof10541 : EqualModuloRelations reduction10541.relations reduction10541.input reduction10541.output := by lin_cert using reduction10541.terms
theorem substitutionProof10541 : IsMapEvaluation generatorImages reduction10541.relations [1,1245] reduction10541.output := by lin_cert using reduction10541.terms
def image10542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10542 : InImage map_20_205 image10542 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10542 : Bundle := named_bundle% "RealMapCertificates/relations/basis10542.json"
theorem reductionProof10542 : EqualModuloRelations reduction10542.relations reduction10542.input reduction10542.output := by lin_cert using reduction10542.terms
theorem substitutionProof10542 : IsMapEvaluation generatorImages reduction10542.relations [0,1260] reduction10542.output := by lin_cert using reduction10542.terms
def map_20_206 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10717 : InImage map_20_206 image10717 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10717 : Bundle := named_bundle% "RealMapCertificates/relations/basis10717.json"
theorem reductionProof10717 : EqualModuloRelations reduction10717.relations reduction10717.input reduction10717.output := by lin_cert using reduction10717.terms
theorem substitutionProof10717 : IsMapEvaluation generatorImages reduction10717.relations [8,16,17,324] reduction10717.output := by lin_cert using reduction10717.terms
def image10718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10718 : InImage map_20_206 image10718 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10718 : Bundle := named_bundle% "RealMapCertificates/relations/basis10718.json"
theorem reductionProof10718 : EqualModuloRelations reduction10718.relations reduction10718.input reduction10718.output := by lin_cert using reduction10718.terms
theorem substitutionProof10718 : IsMapEvaluation generatorImages reduction10718.relations [3,1152] reduction10718.output := by lin_cert using reduction10718.terms
def image10719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10719 : InImage map_20_206 image10719 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10719 : Bundle := named_bundle% "RealMapCertificates/relations/basis10719.json"
theorem reductionProof10719 : EqualModuloRelations reduction10719.relations reduction10719.input reduction10719.output := by lin_cert using reduction10719.terms
theorem substitutionProof10719 : IsMapEvaluation generatorImages reduction10719.relations [1,1260] reduction10719.output := by lin_cert using reduction10719.terms
def image10720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10720 : InImage map_20_206 image10720 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10720 : Bundle := named_bundle% "RealMapCertificates/relations/basis10720.json"
theorem reductionProof10720 : EqualModuloRelations reduction10720.relations reduction10720.input reduction10720.output := by lin_cert using reduction10720.terms
theorem substitutionProof10720 : IsMapEvaluation generatorImages reduction10720.relations [0,0,1262] reduction10720.output := by lin_cert using reduction10720.terms
def image10721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10721 : InImage map_20_206 image10721 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10721 : Bundle := named_bundle% "RealMapCertificates/relations/basis10721.json"
theorem reductionProof10721 : EqualModuloRelations reduction10721.relations reduction10721.input reduction10721.output := by lin_cert using reduction10721.terms
theorem substitutionProof10721 : IsMapEvaluation generatorImages reduction10721.relations [0,0,1261] reduction10721.output := by lin_cert using reduction10721.terms
def image10722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10722 : InImage map_20_206 image10722 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10722 : Bundle := named_bundle% "RealMapCertificates/relations/basis10722.json"
theorem reductionProof10722 : EqualModuloRelations reduction10722.relations reduction10722.input reduction10722.output := by lin_cert using reduction10722.terms
theorem substitutionProof10722 : IsMapEvaluation generatorImages reduction10722.relations [0,0,0,1247] reduction10722.output := by lin_cert using reduction10722.terms
def map_20_207 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10936 : InImage map_20_207 image10936 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10936 : Bundle := named_bundle% "RealMapCertificates/relations/basis10936.json"
theorem reductionProof10936 : EqualModuloRelations reduction10936.relations reduction10936.input reduction10936.output := by lin_cert using reduction10936.terms
theorem substitutionProof10936 : IsMapEvaluation generatorImages reduction10936.relations [1318] reduction10936.output := by lin_cert using reduction10936.terms
def image10937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10937 : InImage map_20_207 image10937 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10937 : Bundle := named_bundle% "RealMapCertificates/relations/basis10937.json"
theorem reductionProof10937 : EqualModuloRelations reduction10937.relations reduction10937.input reduction10937.output := by lin_cert using reduction10937.terms
theorem substitutionProof10937 : IsMapEvaluation generatorImages reduction10937.relations [0,43,630] reduction10937.output := by lin_cert using reduction10937.terms
def image10938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10938 : InImage map_20_207 image10938 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10938 : Bundle := named_bundle% "RealMapCertificates/relations/basis10938.json"
theorem reductionProof10938 : EqualModuloRelations reduction10938.relations reduction10938.input reduction10938.output := by lin_cert using reduction10938.terms
theorem substitutionProof10938 : IsMapEvaluation generatorImages reduction10938.relations [0,2,1222] reduction10938.output := by lin_cert using reduction10938.terms
def image10939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10939 : InImage map_20_207 image10939 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10939 : Bundle := named_bundle% "RealMapCertificates/relations/basis10939.json"
theorem reductionProof10939 : EqualModuloRelations reduction10939.relations reduction10939.input reduction10939.output := by lin_cert using reduction10939.terms
theorem substitutionProof10939 : IsMapEvaluation generatorImages reduction10939.relations [0,0,0,1263] reduction10939.output := by lin_cert using reduction10939.terms
def map_20_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11067 : InImage map_20_208 image11067 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11067 : Bundle := named_bundle% "RealMapCertificates/relations/basis11067.json"
theorem reductionProof11067 : EqualModuloRelations reduction11067.relations reduction11067.input reduction11067.output := by lin_cert using reduction11067.terms
theorem substitutionProof11067 : IsMapEvaluation generatorImages reduction11067.relations [1338] reduction11067.output := by lin_cert using reduction11067.terms
def image11068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11068 : InImage map_20_208 image11068 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11068 : Bundle := named_bundle% "RealMapCertificates/relations/basis11068.json"
theorem reductionProof11068 : EqualModuloRelations reduction11068.relations reduction11068.input reduction11068.output := by lin_cert using reduction11068.terms
theorem substitutionProof11068 : IsMapEvaluation generatorImages reduction11068.relations [1,1,1261] reduction11068.output := by lin_cert using reduction11068.terms
def image11069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11069 : InImage map_20_208 image11069 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11069 : Bundle := named_bundle% "RealMapCertificates/relations/basis11069.json"
theorem reductionProof11069 : EqualModuloRelations reduction11069.relations reduction11069.input reduction11069.output := by lin_cert using reduction11069.terms
theorem substitutionProof11069 : IsMapEvaluation generatorImages reduction11069.relations [0,0,0,1292] reduction11069.output := by lin_cert using reduction11069.terms
def image11070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11070 : InImage map_20_208 image11070 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11070 : Bundle := named_bundle% "RealMapCertificates/relations/basis11070.json"
theorem reductionProof11070 : EqualModuloRelations reduction11070.relations reduction11070.input reduction11070.output := by lin_cert using reduction11070.terms
theorem substitutionProof11070 : IsMapEvaluation generatorImages reduction11070.relations [0,0,0,0,1267] reduction11070.output := by lin_cert using reduction11070.terms
def map_20_209 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11249 : InImage map_20_209 image11249 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11249 : Bundle := named_bundle% "RealMapCertificates/relations/basis11249.json"
theorem reductionProof11249 : EqualModuloRelations reduction11249.relations reduction11249.input reduction11249.output := by lin_cert using reduction11249.terms
theorem substitutionProof11249 : IsMapEvaluation generatorImages reduction11249.relations [95,417] reduction11249.output := by lin_cert using reduction11249.terms
def image11250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11250 : InImage map_20_209 image11250 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11250 : Bundle := named_bundle% "RealMapCertificates/relations/basis11250.json"
theorem reductionProof11250 : EqualModuloRelations reduction11250.relations reduction11250.input reduction11250.output := by lin_cert using reduction11250.terms
theorem substitutionProof11250 : IsMapEvaluation generatorImages reduction11250.relations [8,8,40,324] reduction11250.output := by lin_cert using reduction11250.terms
def image11251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11251 : InImage map_20_209 image11251 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11251 : Bundle := named_bundle% "RealMapCertificates/relations/basis11251.json"
theorem reductionProof11251 : EqualModuloRelations reduction11251.relations reduction11251.input reduction11251.output := by lin_cert using reduction11251.terms
theorem substitutionProof11251 : IsMapEvaluation generatorImages reduction11251.relations [1,7,1042] reduction11251.output := by lin_cert using reduction11251.terms
def image11252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11252 : InImage map_20_209 image11252 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11252 : Bundle := named_bundle% "RealMapCertificates/relations/basis11252.json"
theorem reductionProof11252 : EqualModuloRelations reduction11252.relations reduction11252.input reduction11252.output := by lin_cert using reduction11252.terms
theorem substitutionProof11252 : IsMapEvaluation generatorImages reduction11252.relations [0,2,1261] reduction11252.output := by lin_cert using reduction11252.terms
def image11253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11253 : InImage map_20_209 image11253 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11253 : Bundle := named_bundle% "RealMapCertificates/relations/basis11253.json"
theorem reductionProof11253 : EqualModuloRelations reduction11253.relations reduction11253.input reduction11253.output := by lin_cert using reduction11253.terms
theorem substitutionProof11253 : IsMapEvaluation generatorImages reduction11253.relations [0,0,1320] reduction11253.output := by lin_cert using reduction11253.terms
def image11254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11254 : InImage map_20_209 image11254 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11254 : Bundle := named_bundle% "RealMapCertificates/relations/basis11254.json"
theorem reductionProof11254 : EqualModuloRelations reduction11254.relations reduction11254.input reduction11254.output := by lin_cert using reduction11254.terms
theorem substitutionProof11254 : IsMapEvaluation generatorImages reduction11254.relations [0,0,0,0,0,0,0,0,0,90,324] reduction11254.output := by lin_cert using reduction11254.terms
def map_20_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11450 : InImage map_20_210 image11450 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11450 : Bundle := named_bundle% "RealMapCertificates/relations/basis11450.json"
theorem reductionProof11450 : EqualModuloRelations reduction11450.relations reduction11450.input reduction11450.output := by lin_cert using reduction11450.terms
theorem substitutionProof11450 : IsMapEvaluation generatorImages reduction11450.relations [1371] reduction11450.output := by lin_cert using reduction11450.terms
def image11451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11451 : InImage map_20_210 image11451 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11451 : Bundle := named_bundle% "RealMapCertificates/relations/basis11451.json"
theorem reductionProof11451 : EqualModuloRelations reduction11451.relations reduction11451.input reduction11451.output := by lin_cert using reduction11451.terms
theorem substitutionProof11451 : IsMapEvaluation generatorImages reduction11451.relations [188,213] reduction11451.output := by lin_cert using reduction11451.terms
def image11452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11452 : InImage map_20_210 image11452 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11452 : Bundle := named_bundle% "RealMapCertificates/relations/basis11452.json"
theorem reductionProof11452 : EqualModuloRelations reduction11452.relations reduction11452.input reduction11452.output := by lin_cert using reduction11452.terms
theorem substitutionProof11452 : IsMapEvaluation generatorImages reduction11452.relations [0,1351] reduction11452.output := by lin_cert using reduction11452.terms
def map_20_211 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11604 : InImage map_20_211 image11604 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11604 : Bundle := named_bundle% "RealMapCertificates/relations/basis11604.json"
theorem reductionProof11604 : EqualModuloRelations reduction11604.relations reduction11604.input reduction11604.output := by lin_cert using reduction11604.terms
theorem substitutionProof11604 : IsMapEvaluation generatorImages reduction11604.relations [9,75,288] reduction11604.output := by lin_cert using reduction11604.terms
def image11605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11605 : InImage map_20_211 image11605 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11605 : Bundle := named_bundle% "RealMapCertificates/relations/basis11605.json"
theorem reductionProof11605 : EqualModuloRelations reduction11605.relations reduction11605.input reduction11605.output := by lin_cert using reduction11605.terms
theorem substitutionProof11605 : IsMapEvaluation generatorImages reduction11605.relations [3,1245] reduction11605.output := by lin_cert using reduction11605.terms
def image11606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11606 : InImage map_20_211 image11606 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11606 : Bundle := named_bundle% "RealMapCertificates/relations/basis11606.json"
theorem reductionProof11606 : EqualModuloRelations reduction11606.relations reduction11606.input reduction11606.output := by lin_cert using reduction11606.terms
theorem substitutionProof11606 : IsMapEvaluation generatorImages reduction11606.relations [2,1319] reduction11606.output := by lin_cert using reduction11606.terms
def image11607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11607 : InImage map_20_211 image11607 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11607 : Bundle := named_bundle% "RealMapCertificates/relations/basis11607.json"
theorem reductionProof11607 : EqualModuloRelations reduction11607.relations reduction11607.input reduction11607.output := by lin_cert using reduction11607.terms
theorem substitutionProof11607 : IsMapEvaluation generatorImages reduction11607.relations [0,3,1222] reduction11607.output := by lin_cert using reduction11607.terms
def map_20_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11799 : InImage map_20_212 image11799 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11799 : Bundle := named_bundle% "RealMapCertificates/relations/basis11799.json"
theorem reductionProof11799 : EqualModuloRelations reduction11799.relations reduction11799.input reduction11799.output := by lin_cert using reduction11799.terms
theorem substitutionProof11799 : IsMapEvaluation generatorImages reduction11799.relations [8,8,8,17,324] reduction11799.output := by lin_cert using reduction11799.terms
def image11800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11800 : InImage map_20_212 image11800 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11800 : Bundle := named_bundle% "RealMapCertificates/relations/basis11800.json"
theorem reductionProof11800 : EqualModuloRelations reduction11800.relations reduction11800.input reduction11800.output := by lin_cert using reduction11800.terms
theorem substitutionProof11800 : IsMapEvaluation generatorImages reduction11800.relations [3,1260] reduction11800.output := by lin_cert using reduction11800.terms
def image11801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11801 : InImage map_20_212 image11801 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11801 : Bundle := named_bundle% "RealMapCertificates/relations/basis11801.json"
theorem reductionProof11801 : EqualModuloRelations reduction11801.relations reduction11801.input reduction11801.output := by lin_cert using reduction11801.terms
theorem substitutionProof11801 : IsMapEvaluation generatorImages reduction11801.relations [0,2,1320] reduction11801.output := by lin_cert using reduction11801.terms
def image11802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11802 : InImage map_20_212 image11802 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11802 : Bundle := named_bundle% "RealMapCertificates/relations/basis11802.json"
theorem reductionProof11802 : EqualModuloRelations reduction11802.relations reduction11802.input reduction11802.output := by lin_cert using reduction11802.terms
theorem substitutionProof11802 : IsMapEvaluation generatorImages reduction11802.relations [0,0,1372] reduction11802.output := by lin_cert using reduction11802.terms
def image11803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11803 : InImage map_20_212 image11803 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11803 : Bundle := named_bundle% "RealMapCertificates/relations/basis11803.json"
theorem reductionProof11803 : EqualModuloRelations reduction11803.relations reduction11803.input reduction11803.output := by lin_cert using reduction11803.terms
theorem substitutionProof11803 : IsMapEvaluation generatorImages reduction11803.relations [0,0,3,1223] reduction11803.output := by lin_cert using reduction11803.terms
def map_20_213 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12040 : InImage map_20_213 image12040 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12040 : Bundle := named_bundle% "RealMapCertificates/relations/basis12040.json"
theorem reductionProof12040 : EqualModuloRelations reduction12040.relations reduction12040.input reduction12040.output := by lin_cert using reduction12040.terms
theorem substitutionProof12040 : IsMapEvaluation generatorImages reduction12040.relations [13,1004] reduction12040.output := by lin_cert using reduction12040.terms
def image12041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12041 : InImage map_20_213 image12041 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12041 : Bundle := named_bundle% "RealMapCertificates/relations/basis12041.json"
theorem reductionProof12041 : EqualModuloRelations reduction12041.relations reduction12041.input reduction12041.output := by lin_cert using reduction12041.terms
theorem substitutionProof12041 : IsMapEvaluation generatorImages reduction12041.relations [0,3,1261] reduction12041.output := by lin_cert using reduction12041.terms
def map_20_214 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12191 : InImage map_20_214 image12191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12191 : Bundle := named_bundle% "RealMapCertificates/relations/basis12191.json"
theorem reductionProof12191 : EqualModuloRelations reduction12191.relations reduction12191.input reduction12191.output := by lin_cert using reduction12191.terms
theorem substitutionProof12191 : IsMapEvaluation generatorImages reduction12191.relations [209,209] reduction12191.output := by lin_cert using reduction12191.terms
def image12192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12192 : InImage map_20_214 image12192 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12192 : Bundle := named_bundle% "RealMapCertificates/relations/basis12192.json"
theorem reductionProof12192 : EqualModuloRelations reduction12192.relations reduction12192.input reduction12192.output := by lin_cert using reduction12192.terms
theorem substitutionProof12192 : IsMapEvaluation generatorImages reduction12192.relations [13,75,288] reduction12192.output := by lin_cert using reduction12192.terms
def image12193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12193 : InImage map_20_214 image12193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12193 : Bundle := named_bundle% "RealMapCertificates/relations/basis12193.json"
theorem reductionProof12193 : EqualModuloRelations reduction12193.relations reduction12193.input reduction12193.output := by lin_cert using reduction12193.terms
theorem substitutionProof12193 : IsMapEvaluation generatorImages reduction12193.relations [7,1152] reduction12193.output := by lin_cert using reduction12193.terms
def image12194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12194 : InImage map_20_214 image12194 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12194 : Bundle := named_bundle% "RealMapCertificates/relations/basis12194.json"
theorem reductionProof12194 : EqualModuloRelations reduction12194.relations reduction12194.input reduction12194.output := by lin_cert using reduction12194.terms
theorem substitutionProof12194 : IsMapEvaluation generatorImages reduction12194.relations [0,1434] reduction12194.output := by lin_cert using reduction12194.terms
def map_20_215 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12394 : InImage map_20_215 image12394 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12394 : Bundle := named_bundle% "RealMapCertificates/relations/basis12394.json"
theorem reductionProof12394 : EqualModuloRelations reduction12394.relations reduction12394.input reduction12394.output := by lin_cert using reduction12394.terms
theorem substitutionProof12394 : IsMapEvaluation generatorImages reduction12394.relations [9,1087] reduction12394.output := by lin_cert using reduction12394.terms
def image12395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12395 : InImage map_20_215 image12395 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12395 : Bundle := named_bundle% "RealMapCertificates/relations/basis12395.json"
theorem reductionProof12395 : EqualModuloRelations reduction12395.relations reduction12395.input reduction12395.output := by lin_cert using reduction12395.terms
theorem substitutionProof12395 : IsMapEvaluation generatorImages reduction12395.relations [8,8,8,20,324] reduction12395.output := by lin_cert using reduction12395.terms
def image12396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12396 : InImage map_20_215 image12396 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12396 : Bundle := named_bundle% "RealMapCertificates/relations/basis12396.json"
theorem reductionProof12396 : EqualModuloRelations reduction12396.relations reduction12396.input reduction12396.output := by lin_cert using reduction12396.terms
theorem substitutionProof12396 : IsMapEvaluation generatorImages reduction12396.relations [1,7,1127] reduction12396.output := by lin_cert using reduction12396.terms
def image12397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12397 : InImage map_20_215 image12397 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12397 : Bundle := named_bundle% "RealMapCertificates/relations/basis12397.json"
theorem reductionProof12397 : EqualModuloRelations reduction12397.relations reduction12397.input reduction12397.output := by lin_cert using reduction12397.terms
theorem substitutionProof12397 : IsMapEvaluation generatorImages reduction12397.relations [0,1445] reduction12397.output := by lin_cert using reduction12397.terms
def image12398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12398 : InImage map_20_215 image12398 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12398 : Bundle := named_bundle% "RealMapCertificates/relations/basis12398.json"
theorem reductionProof12398 : EqualModuloRelations reduction12398.relations reduction12398.input reduction12398.output := by lin_cert using reduction12398.terms
theorem substitutionProof12398 : IsMapEvaluation generatorImages reduction12398.relations [0,7,1154] reduction12398.output := by lin_cert using reduction12398.terms
def image12399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12399 : InImage map_20_215 image12399 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12399 : Bundle := named_bundle% "RealMapCertificates/relations/basis12399.json"
theorem reductionProof12399 : EqualModuloRelations reduction12399.relations reduction12399.input reduction12399.output := by lin_cert using reduction12399.terms
theorem substitutionProof12399 : IsMapEvaluation generatorImages reduction12399.relations [0,0,3,1292] reduction12399.output := by lin_cert using reduction12399.terms
end RealMapCertificates
