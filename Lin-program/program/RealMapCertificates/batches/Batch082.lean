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
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 167 => [[7,9,12]]
  | 172 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 288 => []
  | 324 => []
  | 335 => []
  | 338 => []
  | 373 => []
  | 673 => []
  | 719 => []
  | 730 => []
  | 841 => []
  | 912 => []
  | 965 => []
  | 1087 => []
  | 1154 => []
  | 1175 => []
  | 1185 => []
  | 1186 => []
  | 1267 => []
  | 1445 => []
  | 1446 => []
  | 1447 => []
  | 1455 => []
  | 1491 => []
  | 1507 => []
  | 1521 => []
  | 1522 => []
  | 1523 => []
  | 1546 => []
  | 1547 => []
  | 1548 => []
  | 1559 => []
  | 1562 => []
  | 1576 => []
  | 1577 => []
  | 1600 => []
  | 1612 => []
  | 1613 => []
  | 1614 => []
  | 1643 => []
  | 1644 => []
  | 1645 => []
  | 1646 => []
  | 1665 => []
  | 1666 => []
  | 1667 => []
  | 1668 => []
  | 1694 => []
  | 1695 => []
  | 1696 => []
  | 1697 => []
  | 1698 => []
  | 1700 => []
  | 1726 => []
  | 1727 => []
  | 1742 => []
  | 1765 => []
  | 1766 => []
  | 1767 => []
  | 1768 => []
  | 1789 => []
  | 1818 => []
  | 1819 => []
  | 1820 => []
  | 1870 => []
  | _ => []
def map_20_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12601 : InImage map_20_216 image12601 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12601 : Bundle := named_bundle% "RealMapCertificates/relations/basis12601.json"
theorem reductionProof12601 : EqualModuloRelations reduction12601.relations reduction12601.input reduction12601.output := by lin_cert using reduction12601.terms
theorem substitutionProof12601 : IsMapEvaluation generatorImages reduction12601.relations [1491] reduction12601.output := by lin_cert using reduction12601.terms
def image12602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12602 : InImage map_20_216 image12602 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12602 : Bundle := named_bundle% "RealMapCertificates/relations/basis12602.json"
theorem reductionProof12602 : EqualModuloRelations reduction12602.relations reduction12602.input reduction12602.output := by lin_cert using reduction12602.terms
theorem substitutionProof12602 : IsMapEvaluation generatorImages reduction12602.relations [1,7,1154] reduction12602.output := by lin_cert using reduction12602.terms
def image12603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12603 : InImage map_20_216 image12603 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12603 : Bundle := named_bundle% "RealMapCertificates/relations/basis12603.json"
theorem reductionProof12603 : EqualModuloRelations reduction12603.relations reduction12603.input reduction12603.output := by lin_cert using reduction12603.terms
theorem substitutionProof12603 : IsMapEvaluation generatorImages reduction12603.relations [0,137,324] reduction12603.output := by lin_cert using reduction12603.terms
def image12604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12604 : InImage map_20_216 image12604 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12604 : Bundle := named_bundle% "RealMapCertificates/relations/basis12604.json"
theorem reductionProof12604 : EqualModuloRelations reduction12604.relations reduction12604.input reduction12604.output := by lin_cert using reduction12604.terms
theorem substitutionProof12604 : IsMapEvaluation generatorImages reduction12604.relations [0,7,1175] reduction12604.output := by lin_cert using reduction12604.terms
def image12605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12605 : InImage map_20_216 image12605 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12605 : Bundle := named_bundle% "RealMapCertificates/relations/basis12605.json"
theorem reductionProof12605 : EqualModuloRelations reduction12605.relations reduction12605.input reduction12605.output := by lin_cert using reduction12605.terms
theorem substitutionProof12605 : IsMapEvaluation generatorImages reduction12605.relations [0,0,1446] reduction12605.output := by lin_cert using reduction12605.terms
def map_20_217 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12759 : InImage map_20_217 image12759 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12759 : Bundle := named_bundle% "RealMapCertificates/relations/basis12759.json"
theorem reductionProof12759 : EqualModuloRelations reduction12759.relations reduction12759.input reduction12759.output := by lin_cert using reduction12759.terms
theorem substitutionProof12759 : IsMapEvaluation generatorImages reduction12759.relations [1507] reduction12759.output := by lin_cert using reduction12759.terms
def image12760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12760 : InImage map_20_217 image12760 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12760 : Bundle := named_bundle% "RealMapCertificates/relations/basis12760.json"
theorem reductionProof12760 : EqualModuloRelations reduction12760.relations reduction12760.input reduction12760.output := by lin_cert using reduction12760.terms
theorem substitutionProof12760 : IsMapEvaluation generatorImages reduction12760.relations [1,137,324] reduction12760.output := by lin_cert using reduction12760.terms
def image12761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12761 : InImage map_20_217 image12761 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12761 : Bundle := named_bundle% "RealMapCertificates/relations/basis12761.json"
theorem reductionProof12761 : EqualModuloRelations reduction12761.relations reduction12761.input reduction12761.output := by lin_cert using reduction12761.terms
theorem substitutionProof12761 : IsMapEvaluation generatorImages reduction12761.relations [0,0,138,324] reduction12761.output := by lin_cert using reduction12761.terms
def image12762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12762 : InImage map_20_217 image12762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12762 : Bundle := named_bundle% "RealMapCertificates/relations/basis12762.json"
theorem reductionProof12762 : EqualModuloRelations reduction12762.relations reduction12762.input reduction12762.output := by lin_cert using reduction12762.terms
theorem substitutionProof12762 : IsMapEvaluation generatorImages reduction12762.relations [0,0,0,1447] reduction12762.output := by lin_cert using reduction12762.terms
def map_20_218 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12957 : InImage map_20_218 image12957 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12957 : Bundle := named_bundle% "RealMapCertificates/relations/basis12957.json"
theorem reductionProof12957 : EqualModuloRelations reduction12957.relations reduction12957.input reduction12957.output := by lin_cert using reduction12957.terms
theorem substitutionProof12957 : IsMapEvaluation generatorImages reduction12957.relations [1521] reduction12957.output := by lin_cert using reduction12957.terms
def image12958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12958 : InImage map_20_218 image12958 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12958 : Bundle := named_bundle% "RealMapCertificates/relations/basis12958.json"
theorem reductionProof12958 : EqualModuloRelations reduction12958.relations reduction12958.input reduction12958.output := by lin_cert using reduction12958.terms
theorem substitutionProof12958 : IsMapEvaluation generatorImages reduction12958.relations [13,1087] reduction12958.output := by lin_cert using reduction12958.terms
def image12959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12959 : InImage map_20_218 image12959 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12959 : Bundle := named_bundle% "RealMapCertificates/relations/basis12959.json"
theorem reductionProof12959 : EqualModuloRelations reduction12959.relations reduction12959.input reduction12959.output := by lin_cert using reduction12959.terms
theorem substitutionProof12959 : IsMapEvaluation generatorImages reduction12959.relations [8,8,8,22,324] reduction12959.output := by lin_cert using reduction12959.terms
def image12960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12960 : InImage map_20_218 image12960 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12960 : Bundle := named_bundle% "RealMapCertificates/relations/basis12960.json"
theorem reductionProof12960 : EqualModuloRelations reduction12960.relations reduction12960.input reduction12960.output := by lin_cert using reduction12960.terms
theorem substitutionProof12960 : IsMapEvaluation generatorImages reduction12960.relations [2,1445] reduction12960.output := by lin_cert using reduction12960.terms
def image12961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12961 : InImage map_20_218 image12961 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12961 : Bundle := named_bundle% "RealMapCertificates/relations/basis12961.json"
theorem reductionProof12961 : EqualModuloRelations reduction12961.relations reduction12961.input reduction12961.output := by lin_cert using reduction12961.terms
theorem substitutionProof12961 : IsMapEvaluation generatorImages reduction12961.relations [1,1,1446] reduction12961.output := by lin_cert using reduction12961.terms
def image12962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12962 : InImage map_20_218 image12962 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12962 : Bundle := named_bundle% "RealMapCertificates/relations/basis12962.json"
theorem reductionProof12962 : EqualModuloRelations reduction12962.relations reduction12962.input reduction12962.output := by lin_cert using reduction12962.terms
theorem substitutionProof12962 : IsMapEvaluation generatorImages reduction12962.relations [0,0,7,1185] reduction12962.output := by lin_cert using reduction12962.terms
def map_20_219 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13190 : InImage map_20_219 image13190 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13190 : Bundle := named_bundle% "RealMapCertificates/relations/basis13190.json"
theorem reductionProof13190 : EqualModuloRelations reduction13190.relations reduction13190.input reduction13190.output := by lin_cert using reduction13190.terms
theorem substitutionProof13190 : IsMapEvaluation generatorImages reduction13190.relations [1546] reduction13190.output := by lin_cert using reduction13190.terms
def image13191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13191 : InImage map_20_219 image13191 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13191 : Bundle := named_bundle% "RealMapCertificates/relations/basis13191.json"
theorem reductionProof13191 : EqualModuloRelations reduction13191.relations reduction13191.input reduction13191.output := by lin_cert using reduction13191.terms
theorem substitutionProof13191 : IsMapEvaluation generatorImages reduction13191.relations [0,1522] reduction13191.output := by lin_cert using reduction13191.terms
def image13192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13192 : InImage map_20_219 image13192 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13192 : Bundle := named_bundle% "RealMapCertificates/relations/basis13192.json"
theorem reductionProof13192 : EqualModuloRelations reduction13192.relations reduction13192.input reduction13192.output := by lin_cert using reduction13192.terms
theorem substitutionProof13192 : IsMapEvaluation generatorImages reduction13192.relations [0,146,324] reduction13192.output := by lin_cert using reduction13192.terms
def map_20_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13318 : InImage map_20_220 image13318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13318 : Bundle := named_bundle% "RealMapCertificates/relations/basis13318.json"
theorem reductionProof13318 : EqualModuloRelations reduction13318.relations reduction13318.input reduction13318.output := by lin_cert using reduction13318.terms
theorem substitutionProof13318 : IsMapEvaluation generatorImages reduction13318.relations [1559] reduction13318.output := by lin_cert using reduction13318.terms
def image13319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13319 : InImage map_20_220 image13319 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13319 : Bundle := named_bundle% "RealMapCertificates/relations/basis13319.json"
theorem reductionProof13319 : EqualModuloRelations reduction13319.relations reduction13319.input reduction13319.output := by lin_cert using reduction13319.terms
theorem substitutionProof13319 : IsMapEvaluation generatorImages reduction13319.relations [1,1522] reduction13319.output := by lin_cert using reduction13319.terms
def image13320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13320 : InImage map_20_220 image13320 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13320 : Bundle := named_bundle% "RealMapCertificates/relations/basis13320.json"
theorem reductionProof13320 : EqualModuloRelations reduction13320.relations reduction13320.input reduction13320.output := by lin_cert using reduction13320.terms
theorem substitutionProof13320 : IsMapEvaluation generatorImages reduction13320.relations [0,1547] reduction13320.output := by lin_cert using reduction13320.terms
def image13321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13321 : InImage map_20_220 image13321 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13321 : Bundle := named_bundle% "RealMapCertificates/relations/basis13321.json"
theorem reductionProof13321 : EqualModuloRelations reduction13321.relations reduction13321.input reduction13321.output := by lin_cert using reduction13321.terms
theorem substitutionProof13321 : IsMapEvaluation generatorImages reduction13321.relations [0,0,147,324] reduction13321.output := by lin_cert using reduction13321.terms
def map_20_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13525 : InImage map_20_221 image13525 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13525 : Bundle := named_bundle% "RealMapCertificates/relations/basis13525.json"
theorem reductionProof13525 : EqualModuloRelations reduction13525.relations reduction13525.input reduction13525.output := by lin_cert using reduction13525.terms
theorem substitutionProof13525 : IsMapEvaluation generatorImages reduction13525.relations [1576] reduction13525.output := by lin_cert using reduction13525.terms
def image13526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13526 : InImage map_20_221 image13526 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13526 : Bundle := named_bundle% "RealMapCertificates/relations/basis13526.json"
theorem reductionProof13526 : EqualModuloRelations reduction13526.relations reduction13526.input reduction13526.output := by lin_cert using reduction13526.terms
theorem substitutionProof13526 : IsMapEvaluation generatorImages reduction13526.relations [13,67,373] reduction13526.output := by lin_cert using reduction13526.terms
def image13527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13527 : InImage map_20_221 image13527 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13527 : Bundle := named_bundle% "RealMapCertificates/relations/basis13527.json"
theorem reductionProof13527 : EqualModuloRelations reduction13527.relations reduction13527.input reduction13527.output := by lin_cert using reduction13527.terms
theorem substitutionProof13527 : IsMapEvaluation generatorImages reduction13527.relations [8,8,8,29,324] reduction13527.output := by lin_cert using reduction13527.terms
def image13528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13528 : InImage map_20_221 image13528 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13528 : Bundle := named_bundle% "RealMapCertificates/relations/basis13528.json"
theorem reductionProof13528 : EqualModuloRelations reduction13528.relations reduction13528.input reduction13528.output := by lin_cert using reduction13528.terms
theorem substitutionProof13528 : IsMapEvaluation generatorImages reduction13528.relations [0,0,1548] reduction13528.output := by lin_cert using reduction13528.terms
def image13529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13529 : InImage map_20_221 image13529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13529 : Bundle := named_bundle% "RealMapCertificates/relations/basis13529.json"
theorem reductionProof13529 : EqualModuloRelations reduction13529.relations reduction13529.input reduction13529.output := by lin_cert using reduction13529.terms
theorem substitutionProof13529 : IsMapEvaluation generatorImages reduction13529.relations [0,0,0,0,0,0,0,1455] reduction13529.output := by lin_cert using reduction13529.terms
def map_20_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13755 : InImage map_20_222 image13755 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13755 : Bundle := named_bundle% "RealMapCertificates/relations/basis13755.json"
theorem reductionProof13755 : EqualModuloRelations reduction13755.relations reduction13755.input reduction13755.output := by lin_cert using reduction13755.terms
theorem substitutionProof13755 : IsMapEvaluation generatorImages reduction13755.relations [0,1577] reduction13755.output := by lin_cert using reduction13755.terms
def image13756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13756 : InImage map_20_222 image13756 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13756 : Bundle := named_bundle% "RealMapCertificates/relations/basis13756.json"
theorem reductionProof13756 : EqualModuloRelations reduction13756.relations reduction13756.input reduction13756.output := by lin_cert using reduction13756.terms
theorem substitutionProof13756 : IsMapEvaluation generatorImages reduction13756.relations [0,16,64,324] reduction13756.output := by lin_cert using reduction13756.terms
def image13757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13757 : InImage map_20_222 image13757 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13757 : Bundle := named_bundle% "RealMapCertificates/relations/basis13757.json"
theorem reductionProof13757 : EqualModuloRelations reduction13757.relations reduction13757.input reduction13757.output := by lin_cert using reduction13757.terms
theorem substitutionProof13757 : IsMapEvaluation generatorImages reduction13757.relations [0,0,0,0,1523] reduction13757.output := by lin_cert using reduction13757.terms
def map_20_223 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image13899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13899 : InImage map_20_223 image13899 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13899 : Bundle := named_bundle% "RealMapCertificates/relations/basis13899.json"
theorem reductionProof13899 : EqualModuloRelations reduction13899.relations reduction13899.input reduction13899.output := by lin_cert using reduction13899.terms
theorem substitutionProof13899 : IsMapEvaluation generatorImages reduction13899.relations [1612] reduction13899.output := by lin_cert using reduction13899.terms
def image13900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13900 : InImage map_20_223 image13900 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13900 : Bundle := named_bundle% "RealMapCertificates/relations/basis13900.json"
theorem reductionProof13900 : EqualModuloRelations reduction13900.relations reduction13900.input reduction13900.output := by lin_cert using reduction13900.terms
theorem substitutionProof13900 : IsMapEvaluation generatorImages reduction13900.relations [1,1577] reduction13900.output := by lin_cert using reduction13900.terms
def image13901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13901 : InImage map_20_223 image13901 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13901 : Bundle := named_bundle% "RealMapCertificates/relations/basis13901.json"
theorem reductionProof13901 : EqualModuloRelations reduction13901.relations reduction13901.input reduction13901.output := by lin_cert using reduction13901.terms
theorem substitutionProof13901 : IsMapEvaluation generatorImages reduction13901.relations [1,1,1548] reduction13901.output := by lin_cert using reduction13901.terms
def image13902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13902 : InImage map_20_223 image13902 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13902 : Bundle := named_bundle% "RealMapCertificates/relations/basis13902.json"
theorem reductionProof13902 : EqualModuloRelations reduction13902.relations reduction13902.input reduction13902.output := by lin_cert using reduction13902.terms
theorem substitutionProof13902 : IsMapEvaluation generatorImages reduction13902.relations [0,1600] reduction13902.output := by lin_cert using reduction13902.terms
def image13903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13903 : InImage map_20_223 image13903 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13903 : Bundle := named_bundle% "RealMapCertificates/relations/basis13903.json"
theorem reductionProof13903 : EqualModuloRelations reduction13903.relations reduction13903.input reduction13903.output := by lin_cert using reduction13903.terms
theorem substitutionProof13903 : IsMapEvaluation generatorImages reduction13903.relations [0,0,17,64,324] reduction13903.output := by lin_cert using reduction13903.terms
def image13904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13904 : InImage map_20_223 image13904 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13904 : Bundle := named_bundle% "RealMapCertificates/relations/basis13904.json"
theorem reductionProof13904 : EqualModuloRelations reduction13904.relations reduction13904.input reduction13904.output := by lin_cert using reduction13904.terms
theorem substitutionProof13904 : IsMapEvaluation generatorImages reduction13904.relations [0,0,0,149,324] reduction13904.output := by lin_cert using reduction13904.terms
def image13905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13905 : InImage map_20_223 image13905 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13905 : Bundle := named_bundle% "RealMapCertificates/relations/basis13905.json"
theorem reductionProof13905 : EqualModuloRelations reduction13905.relations reduction13905.input reduction13905.output := by lin_cert using reduction13905.terms
theorem substitutionProof13905 : IsMapEvaluation generatorImages reduction13905.relations [0,0,0,7,1267] reduction13905.output := by lin_cert using reduction13905.terms
def map_20_224 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14091 : InImage map_20_224 image14091 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14091 : Bundle := named_bundle% "RealMapCertificates/relations/basis14091.json"
theorem reductionProof14091 : EqualModuloRelations reduction14091.relations reduction14091.input reduction14091.output := by lin_cert using reduction14091.terms
theorem substitutionProof14091 : IsMapEvaluation generatorImages reduction14091.relations [13,1186] reduction14091.output := by lin_cert using reduction14091.terms
def image14092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14092 : InImage map_20_224 image14092 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14092 : Bundle := named_bundle% "RealMapCertificates/relations/basis14092.json"
theorem reductionProof14092 : EqualModuloRelations reduction14092.relations reduction14092.input reduction14092.output := by lin_cert using reduction14092.terms
theorem substitutionProof14092 : IsMapEvaluation generatorImages reduction14092.relations [8,8,8,32,324] reduction14092.output := by lin_cert using reduction14092.terms
def image14093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14093 : InImage map_20_224 image14093 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14093 : Bundle := named_bundle% "RealMapCertificates/relations/basis14093.json"
theorem reductionProof14093 : EqualModuloRelations reduction14093.relations reduction14093.input reduction14093.output := by lin_cert using reduction14093.terms
theorem substitutionProof14093 : IsMapEvaluation generatorImages reduction14093.relations [1,1600] reduction14093.output := by lin_cert using reduction14093.terms
def image14094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14094 : InImage map_20_224 image14094 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14094 : Bundle := named_bundle% "RealMapCertificates/relations/basis14094.json"
theorem reductionProof14094 : EqualModuloRelations reduction14094.relations reduction14094.input reduction14094.output := by lin_cert using reduction14094.terms
theorem substitutionProof14094 : IsMapEvaluation generatorImages reduction14094.relations [0,1613] reduction14094.output := by lin_cert using reduction14094.terms
def image14095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14095 : InImage map_20_224 image14095 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14095 : Bundle := named_bundle% "RealMapCertificates/relations/basis14095.json"
theorem reductionProof14095 : EqualModuloRelations reduction14095.relations reduction14095.input reduction14095.output := by lin_cert using reduction14095.terms
theorem substitutionProof14095 : IsMapEvaluation generatorImages reduction14095.relations [0,0,0,154,324] reduction14095.output := by lin_cert using reduction14095.terms
def image14096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14096 : InImage map_20_224 image14096 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14096 : Bundle := named_bundle% "RealMapCertificates/relations/basis14096.json"
theorem reductionProof14096 : EqualModuloRelations reduction14096.relations reduction14096.input reduction14096.output := by lin_cert using reduction14096.terms
theorem substitutionProof14096 : IsMapEvaluation generatorImages reduction14096.relations [0,0,0,0,1562] reduction14096.output := by lin_cert using reduction14096.terms
def map_20_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14314 : InImage map_20_225 image14314 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14314 : Bundle := named_bundle% "RealMapCertificates/relations/basis14314.json"
theorem reductionProof14314 : EqualModuloRelations reduction14314.relations reduction14314.input reduction14314.output := by lin_cert using reduction14314.terms
theorem substitutionProof14314 : IsMapEvaluation generatorImages reduction14314.relations [189,288] reduction14314.output := by lin_cert using reduction14314.terms
def image14315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14315 : InImage map_20_225 image14315 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14315 : Bundle := named_bundle% "RealMapCertificates/relations/basis14315.json"
theorem reductionProof14315 : EqualModuloRelations reduction14315.relations reduction14315.input reduction14315.output := by lin_cert using reduction14315.terms
theorem substitutionProof14315 : IsMapEvaluation generatorImages reduction14315.relations [1,1613] reduction14315.output := by lin_cert using reduction14315.terms
def image14316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14316 : InImage map_20_225 image14316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14316 : Bundle := named_bundle% "RealMapCertificates/relations/basis14316.json"
theorem reductionProof14316 : EqualModuloRelations reduction14316.relations reduction14316.input reduction14316.output := by lin_cert using reduction14316.terms
theorem substitutionProof14316 : IsMapEvaluation generatorImages reduction14316.relations [0,43,841] reduction14316.output := by lin_cert using reduction14316.terms
def image14317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14317 : InImage map_20_225 image14317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14317 : Bundle := named_bundle% "RealMapCertificates/relations/basis14317.json"
theorem reductionProof14317 : EqualModuloRelations reduction14317.relations reduction14317.input reduction14317.output := by lin_cert using reduction14317.terms
theorem substitutionProof14317 : IsMapEvaluation generatorImages reduction14317.relations [0,8,112,324] reduction14317.output := by lin_cert using reduction14317.terms
def map_20_226 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image14448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14448 : InImage map_20_226 image14448 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction14448 : Bundle := named_bundle% "RealMapCertificates/relations/basis14448.json"
theorem reductionProof14448 : EqualModuloRelations reduction14448.relations reduction14448.input reduction14448.output := by lin_cert using reduction14448.terms
theorem substitutionProof14448 : IsMapEvaluation generatorImages reduction14448.relations [1667] reduction14448.output := by lin_cert using reduction14448.terms
def image14449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14449 : InImage map_20_226 image14449 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction14449 : Bundle := named_bundle% "RealMapCertificates/relations/basis14449.json"
theorem reductionProof14449 : EqualModuloRelations reduction14449.relations reduction14449.input reduction14449.output := by lin_cert using reduction14449.terms
theorem substitutionProof14449 : IsMapEvaluation generatorImages reduction14449.relations [1666] reduction14449.output := by lin_cert using reduction14449.terms
def image14450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14450 : InImage map_20_226 image14450 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction14450 : Bundle := named_bundle% "RealMapCertificates/relations/basis14450.json"
theorem reductionProof14450 : EqualModuloRelations reduction14450.relations reduction14450.input reduction14450.output := by lin_cert using reduction14450.terms
theorem substitutionProof14450 : IsMapEvaluation generatorImages reduction14450.relations [1665] reduction14450.output := by lin_cert using reduction14450.terms
def image14451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14451 : InImage map_20_226 image14451 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction14451 : Bundle := named_bundle% "RealMapCertificates/relations/basis14451.json"
theorem reductionProof14451 : EqualModuloRelations reduction14451.relations reduction14451.input reduction14451.output := by lin_cert using reduction14451.terms
theorem substitutionProof14451 : IsMapEvaluation generatorImages reduction14451.relations [3,1522] reduction14451.output := by lin_cert using reduction14451.terms
def image14452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14452 : InImage map_20_226 image14452 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction14452 : Bundle := named_bundle% "RealMapCertificates/relations/basis14452.json"
theorem reductionProof14452 : EqualModuloRelations reduction14452.relations reduction14452.input reduction14452.output := by lin_cert using reduction14452.terms
theorem substitutionProof14452 : IsMapEvaluation generatorImages reduction14452.relations [2,1600] reduction14452.output := by lin_cert using reduction14452.terms
def image14453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14453 : InImage map_20_226 image14453 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction14453 : Bundle := named_bundle% "RealMapCertificates/relations/basis14453.json"
theorem reductionProof14453 : EqualModuloRelations reduction14453.relations reduction14453.input reduction14453.output := by lin_cert using reduction14453.terms
theorem substitutionProof14453 : IsMapEvaluation generatorImages reduction14453.relations [0,1643] reduction14453.output := by lin_cert using reduction14453.terms
def image14454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14454 : InImage map_20_226 image14454 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction14454 : Bundle := named_bundle% "RealMapCertificates/relations/basis14454.json"
theorem reductionProof14454 : EqualModuloRelations reduction14454.relations reduction14454.input reduction14454.output := by lin_cert using reduction14454.terms
theorem substitutionProof14454 : IsMapEvaluation generatorImages reduction14454.relations [0,0,8,113,324] reduction14454.output := by lin_cert using reduction14454.terms
def image14455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14455 : InImage map_20_226 image14455 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction14455 : Bundle := named_bundle% "RealMapCertificates/relations/basis14455.json"
theorem reductionProof14455 : EqualModuloRelations reduction14455.relations reduction14455.input reduction14455.output := by lin_cert using reduction14455.terms
theorem substitutionProof14455 : IsMapEvaluation generatorImages reduction14455.relations [0,0,0,160,324] reduction14455.output := by lin_cert using reduction14455.terms
def map_20_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14669 : InImage map_20_227 image14669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14669 : Bundle := named_bundle% "RealMapCertificates/relations/basis14669.json"
theorem reductionProof14669 : EqualModuloRelations reduction14669.relations reduction14669.input reduction14669.output := by lin_cert using reduction14669.terms
theorem substitutionProof14669 : IsMapEvaluation generatorImages reduction14669.relations [9,13,912] reduction14669.output := by lin_cert using reduction14669.terms
def image14670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14670 : InImage map_20_227 image14670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14670 : Bundle := named_bundle% "RealMapCertificates/relations/basis14670.json"
theorem reductionProof14670 : EqualModuloRelations reduction14670.relations reduction14670.input reduction14670.output := by lin_cert using reduction14670.terms
theorem substitutionProof14670 : IsMapEvaluation generatorImages reduction14670.relations [8,8,9,32,324] reduction14670.output := by lin_cert using reduction14670.terms
def image14671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14671 : InImage map_20_227 image14671 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14671 : Bundle := named_bundle% "RealMapCertificates/relations/basis14671.json"
theorem reductionProof14671 : EqualModuloRelations reduction14671.relations reduction14671.input reduction14671.output := by lin_cert using reduction14671.terms
theorem substitutionProof14671 : IsMapEvaluation generatorImages reduction14671.relations [2,1613] reduction14671.output := by lin_cert using reduction14671.terms
def image14672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14672 : InImage map_20_227 image14672 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14672 : Bundle := named_bundle% "RealMapCertificates/relations/basis14672.json"
theorem reductionProof14672 : EqualModuloRelations reduction14672.relations reduction14672.input reduction14672.output := by lin_cert using reduction14672.terms
theorem substitutionProof14672 : IsMapEvaluation generatorImages reduction14672.relations [1,1644] reduction14672.output := by lin_cert using reduction14672.terms
def image14673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14673 : InImage map_20_227 image14673 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14673 : Bundle := named_bundle% "RealMapCertificates/relations/basis14673.json"
theorem reductionProof14673 : EqualModuloRelations reduction14673.relations reduction14673.input reduction14673.output := by lin_cert using reduction14673.terms
theorem substitutionProof14673 : IsMapEvaluation generatorImages reduction14673.relations [0,67,673] reduction14673.output := by lin_cert using reduction14673.terms
def image14674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14674 : InImage map_20_227 image14674 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14674 : Bundle := named_bundle% "RealMapCertificates/relations/basis14674.json"
theorem reductionProof14674 : EqualModuloRelations reduction14674.relations reduction14674.input reduction14674.output := by lin_cert using reduction14674.terms
theorem substitutionProof14674 : IsMapEvaluation generatorImages reduction14674.relations [0,0,1645] reduction14674.output := by lin_cert using reduction14674.terms
def map_20_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14885 : InImage map_20_228 image14885 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14885 : Bundle := named_bundle% "RealMapCertificates/relations/basis14885.json"
theorem reductionProof14885 : EqualModuloRelations reduction14885.relations reduction14885.input reduction14885.output := by lin_cert using reduction14885.terms
theorem substitutionProof14885 : IsMapEvaluation generatorImages reduction14885.relations [1696] reduction14885.output := by lin_cert using reduction14885.terms
def image14886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14886 : InImage map_20_228 image14886 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14886 : Bundle := named_bundle% "RealMapCertificates/relations/basis14886.json"
theorem reductionProof14886 : EqualModuloRelations reduction14886.relations reduction14886.input reduction14886.output := by lin_cert using reduction14886.terms
theorem substitutionProof14886 : IsMapEvaluation generatorImages reduction14886.relations [1695] reduction14886.output := by lin_cert using reduction14886.terms
def image14887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14887 : InImage map_20_228 image14887 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14887 : Bundle := named_bundle% "RealMapCertificates/relations/basis14887.json"
theorem reductionProof14887 : EqualModuloRelations reduction14887.relations reduction14887.input reduction14887.output := by lin_cert using reduction14887.terms
theorem substitutionProof14887 : IsMapEvaluation generatorImages reduction14887.relations [1694] reduction14887.output := by lin_cert using reduction14887.terms
def image14888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14888 : InImage map_20_228 image14888 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14888 : Bundle := named_bundle% "RealMapCertificates/relations/basis14888.json"
theorem reductionProof14888 : EqualModuloRelations reduction14888.relations reduction14888.input reduction14888.output := by lin_cert using reduction14888.terms
theorem substitutionProof14888 : IsMapEvaluation generatorImages reduction14888.relations [0,8,8,64,324] reduction14888.output := by lin_cert using reduction14888.terms
def map_20_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15048 : InImage map_20_229 image15048 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15048 : Bundle := named_bundle% "RealMapCertificates/relations/basis15048.json"
theorem reductionProof15048 : EqualModuloRelations reduction15048.relations reduction15048.input reduction15048.output := by lin_cert using reduction15048.terms
theorem substitutionProof15048 : IsMapEvaluation generatorImages reduction15048.relations [3,1577] reduction15048.output := by lin_cert using reduction15048.terms
def image15049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15049 : InImage map_20_229 image15049 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15049 : Bundle := named_bundle% "RealMapCertificates/relations/basis15049.json"
theorem reductionProof15049 : EqualModuloRelations reduction15049.relations reduction15049.input reduction15049.output := by lin_cert using reduction15049.terms
theorem substitutionProof15049 : IsMapEvaluation generatorImages reduction15049.relations [0,1698] reduction15049.output := by lin_cert using reduction15049.terms
def image15050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15050 : InImage map_20_229 image15050 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15050 : Bundle := named_bundle% "RealMapCertificates/relations/basis15050.json"
theorem reductionProof15050 : EqualModuloRelations reduction15050.relations reduction15050.input reduction15050.output := by lin_cert using reduction15050.terms
theorem substitutionProof15050 : IsMapEvaluation generatorImages reduction15050.relations [0,1697] reduction15050.output := by lin_cert using reduction15050.terms
def image15051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15051 : InImage map_20_229 image15051 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15051 : Bundle := named_bundle% "RealMapCertificates/relations/basis15051.json"
theorem reductionProof15051 : EqualModuloRelations reduction15051.relations reduction15051.input reduction15051.output := by lin_cert using reduction15051.terms
theorem substitutionProof15051 : IsMapEvaluation generatorImages reduction15051.relations [0,0,8,118,324] reduction15051.output := by lin_cert using reduction15051.terms
def map_20_230 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15265 : InImage map_20_230 image15265 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15265 : Bundle := named_bundle% "RealMapCertificates/relations/basis15265.json"
theorem reductionProof15265 : EqualModuloRelations reduction15265.relations reduction15265.input reduction15265.output := by lin_cert using reduction15265.terms
theorem substitutionProof15265 : IsMapEvaluation generatorImages reduction15265.relations [1742] reduction15265.output := by lin_cert using reduction15265.terms
def image15266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15266 : InImage map_20_230 image15266 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15266 : Bundle := named_bundle% "RealMapCertificates/relations/basis15266.json"
theorem reductionProof15266 : EqualModuloRelations reduction15266.relations reduction15266.input reduction15266.output := by lin_cert using reduction15266.terms
theorem substitutionProof15266 : IsMapEvaluation generatorImages reduction15266.relations [13,13,912] reduction15266.output := by lin_cert using reduction15266.terms
def image15267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15267 : InImage map_20_230 image15267 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15267 : Bundle := named_bundle% "RealMapCertificates/relations/basis15267.json"
theorem reductionProof15267 : EqualModuloRelations reduction15267.relations reduction15267.input reduction15267.output := by lin_cert using reduction15267.terms
theorem substitutionProof15267 : IsMapEvaluation generatorImages reduction15267.relations [3,1600] reduction15267.output := by lin_cert using reduction15267.terms
def image15268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15268 : InImage map_20_230 image15268 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15268 : Bundle := named_bundle% "RealMapCertificates/relations/basis15268.json"
theorem reductionProof15268 : EqualModuloRelations reduction15268.relations reduction15268.input reduction15268.output := by lin_cert using reduction15268.terms
theorem substitutionProof15268 : IsMapEvaluation generatorImages reduction15268.relations [2,1668] reduction15268.output := by lin_cert using reduction15268.terms
def image15269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15269 : InImage map_20_230 image15269 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15269 : Bundle := named_bundle% "RealMapCertificates/relations/basis15269.json"
theorem reductionProof15269 : EqualModuloRelations reduction15269.relations reduction15269.input reduction15269.output := by lin_cert using reduction15269.terms
theorem substitutionProof15269 : IsMapEvaluation generatorImages reduction15269.relations [0,1727] reduction15269.output := by lin_cert using reduction15269.terms
def image15270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15270 : InImage map_20_230 image15270 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15270 : Bundle := named_bundle% "RealMapCertificates/relations/basis15270.json"
theorem reductionProof15270 : EqualModuloRelations reduction15270.relations reduction15270.input reduction15270.output := by lin_cert using reduction15270.terms
theorem substitutionProof15270 : IsMapEvaluation generatorImages reduction15270.relations [0,1726] reduction15270.output := by lin_cert using reduction15270.terms
def image15271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15271 : InImage map_20_230 image15271 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15271 : Bundle := named_bundle% "RealMapCertificates/relations/basis15271.json"
theorem reductionProof15271 : EqualModuloRelations reduction15271.relations reduction15271.input reduction15271.output := by lin_cert using reduction15271.terms
theorem substitutionProof15271 : IsMapEvaluation generatorImages reduction15271.relations [0,0,1700] reduction15271.output := by lin_cert using reduction15271.terms
def image15272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15272 : InImage map_20_230 image15272 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15272 : Bundle := named_bundle% "RealMapCertificates/relations/basis15272.json"
theorem reductionProof15272 : EqualModuloRelations reduction15272.relations reduction15272.input reduction15272.output := by lin_cert using reduction15272.terms
theorem substitutionProof15272 : IsMapEvaluation generatorImages reduction15272.relations [0,0,0,0,167,324] reduction15272.output := by lin_cert using reduction15272.terms
def map_20_231 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15516 : InImage map_20_231 image15516 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15516 : Bundle := named_bundle% "RealMapCertificates/relations/basis15516.json"
theorem reductionProof15516 : EqualModuloRelations reduction15516.relations reduction15516.input reduction15516.output := by lin_cert using reduction15516.terms
theorem substitutionProof15516 : IsMapEvaluation generatorImages reduction15516.relations [1766] reduction15516.output := by lin_cert using reduction15516.terms
def image15517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15517 : InImage map_20_231 image15517 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15517 : Bundle := named_bundle% "RealMapCertificates/relations/basis15517.json"
theorem reductionProof15517 : EqualModuloRelations reduction15517.relations reduction15517.input reduction15517.output := by lin_cert using reduction15517.terms
theorem substitutionProof15517 : IsMapEvaluation generatorImages reduction15517.relations [1765] reduction15517.output := by lin_cert using reduction15517.terms
def image15518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15518 : InImage map_20_231 image15518 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15518 : Bundle := named_bundle% "RealMapCertificates/relations/basis15518.json"
theorem reductionProof15518 : EqualModuloRelations reduction15518.relations reduction15518.input reduction15518.output := by lin_cert using reduction15518.terms
theorem substitutionProof15518 : IsMapEvaluation generatorImages reduction15518.relations [67,730] reduction15518.output := by lin_cert using reduction15518.terms
def image15519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15519 : InImage map_20_231 image15519 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15519 : Bundle := named_bundle% "RealMapCertificates/relations/basis15519.json"
theorem reductionProof15519 : EqualModuloRelations reduction15519.relations reduction15519.input reduction15519.output := by lin_cert using reduction15519.terms
theorem substitutionProof15519 : IsMapEvaluation generatorImages reduction15519.relations [3,1614] reduction15519.output := by lin_cert using reduction15519.terms
def image15520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15520 : InImage map_20_231 image15520 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15520 : Bundle := named_bundle% "RealMapCertificates/relations/basis15520.json"
theorem reductionProof15520 : EqualModuloRelations reduction15520.relations reduction15520.input reduction15520.output := by lin_cert using reduction15520.terms
theorem substitutionProof15520 : IsMapEvaluation generatorImages reduction15520.relations [3,1613] reduction15520.output := by lin_cert using reduction15520.terms
def image15521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15521 : InImage map_20_231 image15521 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15521 : Bundle := named_bundle% "RealMapCertificates/relations/basis15521.json"
theorem reductionProof15521 : EqualModuloRelations reduction15521.relations reduction15521.input reduction15521.output := by lin_cert using reduction15521.terms
theorem substitutionProof15521 : IsMapEvaluation generatorImages reduction15521.relations [1,1726] reduction15521.output := by lin_cert using reduction15521.terms
def image15522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15522 : InImage map_20_231 image15522 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15522 : Bundle := named_bundle% "RealMapCertificates/relations/basis15522.json"
theorem reductionProof15522 : EqualModuloRelations reduction15522.relations reduction15522.input reduction15522.output := by lin_cert using reduction15522.terms
theorem substitutionProof15522 : IsMapEvaluation generatorImages reduction15522.relations [0,8,8,72,324] reduction15522.output := by lin_cert using reduction15522.terms
def image15523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15523 : InImage map_20_231 image15523 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15523 : Bundle := named_bundle% "RealMapCertificates/relations/basis15523.json"
theorem reductionProof15523 : EqualModuloRelations reduction15523.relations reduction15523.input reduction15523.output := by lin_cert using reduction15523.terms
theorem substitutionProof15523 : IsMapEvaluation generatorImages reduction15523.relations [0,0,0,0,172,324] reduction15523.output := by lin_cert using reduction15523.terms
def map_20_232 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15693 : InImage map_20_232 image15693 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15693 : Bundle := named_bundle% "RealMapCertificates/relations/basis15693.json"
theorem reductionProof15693 : EqualModuloRelations reduction15693.relations reduction15693.input reduction15693.output := by lin_cert using reduction15693.terms
theorem substitutionProof15693 : IsMapEvaluation generatorImages reduction15693.relations [190,335] reduction15693.output := by lin_cert using reduction15693.terms
def image15694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15694 : InImage map_20_232 image15694 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15694 : Bundle := named_bundle% "RealMapCertificates/relations/basis15694.json"
theorem reductionProof15694 : EqualModuloRelations reduction15694.relations reduction15694.input reduction15694.output := by lin_cert using reduction15694.terms
theorem substitutionProof15694 : IsMapEvaluation generatorImages reduction15694.relations [188,338] reduction15694.output := by lin_cert using reduction15694.terms
def image15695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15695 : InImage map_20_232 image15695 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15695 : Bundle := named_bundle% "RealMapCertificates/relations/basis15695.json"
theorem reductionProof15695 : EqualModuloRelations reduction15695.relations reduction15695.input reduction15695.output := by lin_cert using reduction15695.terms
theorem substitutionProof15695 : IsMapEvaluation generatorImages reduction15695.relations [0,1768] reduction15695.output := by lin_cert using reduction15695.terms
def image15696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15696 : InImage map_20_232 image15696 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15696 : Bundle := named_bundle% "RealMapCertificates/relations/basis15696.json"
theorem reductionProof15696 : EqualModuloRelations reduction15696.relations reduction15696.input reduction15696.output := by lin_cert using reduction15696.terms
theorem substitutionProof15696 : IsMapEvaluation generatorImages reduction15696.relations [0,0,67,719] reduction15696.output := by lin_cert using reduction15696.terms
def image15697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15697 : InImage map_20_232 image15697 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15697 : Bundle := named_bundle% "RealMapCertificates/relations/basis15697.json"
theorem reductionProof15697 : EqualModuloRelations reduction15697.relations reduction15697.input reduction15697.output := by lin_cert using reduction15697.terms
theorem substitutionProof15697 : IsMapEvaluation generatorImages reduction15697.relations [0,0,8,127,324] reduction15697.output := by lin_cert using reduction15697.terms
def map_20_233 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15922 : InImage map_20_233 image15922 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15922 : Bundle := named_bundle% "RealMapCertificates/relations/basis15922.json"
theorem reductionProof15922 : EqualModuloRelations reduction15922.relations reduction15922.input reduction15922.output := by lin_cert using reduction15922.terms
theorem substitutionProof15922 : IsMapEvaluation generatorImages reduction15922.relations [1819] reduction15922.output := by lin_cert using reduction15922.terms
def image15923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15923 : InImage map_20_233 image15923 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15923 : Bundle := named_bundle% "RealMapCertificates/relations/basis15923.json"
theorem reductionProof15923 : EqualModuloRelations reduction15923.relations reduction15923.input reduction15923.output := by lin_cert using reduction15923.terms
theorem substitutionProof15923 : IsMapEvaluation generatorImages reduction15923.relations [1818] reduction15923.output := by lin_cert using reduction15923.terms
def image15924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15924 : InImage map_20_233 image15924 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15924 : Bundle := named_bundle% "RealMapCertificates/relations/basis15924.json"
theorem reductionProof15924 : EqualModuloRelations reduction15924.relations reduction15924.input reduction15924.output := by lin_cert using reduction15924.terms
theorem substitutionProof15924 : IsMapEvaluation generatorImages reduction15924.relations [3,1643] reduction15924.output := by lin_cert using reduction15924.terms
def image15925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15925 : InImage map_20_233 image15925 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15925 : Bundle := named_bundle% "RealMapCertificates/relations/basis15925.json"
theorem reductionProof15925 : EqualModuloRelations reduction15925.relations reduction15925.input reduction15925.output := by lin_cert using reduction15925.terms
theorem substitutionProof15925 : IsMapEvaluation generatorImages reduction15925.relations [1,1767] reduction15925.output := by lin_cert using reduction15925.terms
def image15926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15926 : InImage map_20_233 image15926 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15926 : Bundle := named_bundle% "RealMapCertificates/relations/basis15926.json"
theorem reductionProof15926 : EqualModuloRelations reduction15926.relations reduction15926.input reduction15926.output := by lin_cert using reduction15926.terms
theorem substitutionProof15926 : IsMapEvaluation generatorImages reduction15926.relations [0,1789] reduction15926.output := by lin_cert using reduction15926.terms
def map_20_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16170 : InImage map_20_234 image16170 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16170 : Bundle := named_bundle% "RealMapCertificates/relations/basis16170.json"
theorem reductionProof16170 : EqualModuloRelations reduction16170.relations reduction16170.input reduction16170.output := by lin_cert using reduction16170.terms
theorem substitutionProof16170 : IsMapEvaluation generatorImages reduction16170.relations [0,1820] reduction16170.output := by lin_cert using reduction16170.terms
def image16171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16171 : InImage map_20_234 image16171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16171 : Bundle := named_bundle% "RealMapCertificates/relations/basis16171.json"
theorem reductionProof16171 : EqualModuloRelations reduction16171.relations reduction16171.input reduction16171.output := by lin_cert using reduction16171.terms
theorem substitutionProof16171 : IsMapEvaluation generatorImages reduction16171.relations [0,8,8,79,324] reduction16171.output := by lin_cert using reduction16171.terms
def image16172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16172 : InImage map_20_234 image16172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16172 : Bundle := named_bundle% "RealMapCertificates/relations/basis16172.json"
theorem reductionProof16172 : EqualModuloRelations reduction16172.relations reduction16172.input reduction16172.output := by lin_cert using reduction16172.terms
theorem substitutionProof16172 : IsMapEvaluation generatorImages reduction16172.relations [0,3,1646] reduction16172.output := by lin_cert using reduction16172.terms
def image16173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16173 : InImage map_20_234 image16173 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16173 : Bundle := named_bundle% "RealMapCertificates/relations/basis16173.json"
theorem reductionProof16173 : EqualModuloRelations reduction16173.relations reduction16173.input reduction16173.output := by lin_cert using reduction16173.terms
theorem substitutionProof16173 : IsMapEvaluation generatorImages reduction16173.relations [0,3,1645] reduction16173.output := by lin_cert using reduction16173.terms
def map_20_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16359 : InImage map_20_235 image16359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16359 : Bundle := named_bundle% "RealMapCertificates/relations/basis16359.json"
theorem reductionProof16359 : EqualModuloRelations reduction16359.relations reduction16359.input reduction16359.output := by lin_cert using reduction16359.terms
theorem substitutionProof16359 : IsMapEvaluation generatorImages reduction16359.relations [1870] reduction16359.output := by lin_cert using reduction16359.terms
def image16360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16360 : InImage map_20_235 image16360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16360 : Bundle := named_bundle% "RealMapCertificates/relations/basis16360.json"
theorem reductionProof16360 : EqualModuloRelations reduction16360.relations reduction16360.input reduction16360.output := by lin_cert using reduction16360.terms
theorem substitutionProof16360 : IsMapEvaluation generatorImages reduction16360.relations [188,373] reduction16360.output := by lin_cert using reduction16360.terms
def image16361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16361 : InImage map_20_235 image16361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16361 : Bundle := named_bundle% "RealMapCertificates/relations/basis16361.json"
theorem reductionProof16361 : EqualModuloRelations reduction16361.relations reduction16361.input reduction16361.output := by lin_cert using reduction16361.terms
theorem substitutionProof16361 : IsMapEvaluation generatorImages reduction16361.relations [43,965] reduction16361.output := by lin_cert using reduction16361.terms
def image16362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16362 : InImage map_20_235 image16362 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16362 : Bundle := named_bundle% "RealMapCertificates/relations/basis16362.json"
theorem reductionProof16362 : EqualModuloRelations reduction16362.relations reduction16362.input reduction16362.output := by lin_cert using reduction16362.terms
theorem substitutionProof16362 : IsMapEvaluation generatorImages reduction16362.relations [0,0,8,8,80,324] reduction16362.output := by lin_cert using reduction16362.terms
end RealMapCertificates
