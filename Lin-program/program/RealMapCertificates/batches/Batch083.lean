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
  | 18 => []
  | 23 => [[7,7]]
  | 42 => [[5,5,7]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 75 => []
  | 76 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 173 => []
  | 186 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 207 => [[5,5,8,12]]
  | 232 => [[5,6,9,12]]
  | 260 => []
  | 278 => []
  | 324 => []
  | 376 => []
  | 450 => []
  | 479 => []
  | 719 => []
  | 764 => []
  | 824 => []
  | 1017 => []
  | 1020 => []
  | 1056 => []
  | 1071 => []
  | 1435 => []
  | 1445 => []
  | 1449 => []
  | 1548 => []
  | 1644 => []
  | 1697 => []
  | 1698 => []
  | 1701 => []
  | 1706 => []
  | 1730 => []
  | 1743 => []
  | 1820 => []
  | 1871 => []
  | 1876 => []
  | 1894 => []
  | 1914 => []
  | 1916 => []
  | 1944 => []
  | 1945 => []
  | 1946 => []
  | 1948 => []
  | 1973 => []
  | 1974 => []
  | 1976 => []
  | 2051 => []
  | 2068 => []
  | 2069 => []
  | 2070 => []
  | 2071 => []
  | 2072 => []
  | 2110 => []
  | 2112 => []
  | 2113 => []
  | 2143 => []
  | 2144 => []
  | 2182 => []
  | 2183 => []
  | 2223 => []
  | 2224 => []
  | 2226 => []
  | 2259 => []
  | 2260 => []
  | 2261 => []
  | 2263 => []
  | 2265 => []
  | 2291 => []
  | 2292 => []
  | 2294 => []
  | 2322 => []
  | 2323 => []
  | 2324 => []
  | 2325 => []
  | 2328 => []
  | 2357 => []
  | 2358 => []
  | 2362 => []
  | 2391 => []
  | 2392 => []
  | 2394 => []
  | 2425 => []
  | 2426 => []
  | 2427 => []
  | 2428 => []
  | 2462 => []
  | 2463 => []
  | 2464 => []
  | 2465 => []
  | _ => []
def map_20_236 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16589 : InImage map_20_236 image16589 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16589 : Bundle := named_bundle% "RealMapCertificates/relations/basis16589.json"
theorem reductionProof16589 : EqualModuloRelations reduction16589.relations reduction16589.input reduction16589.output := by lin_cert using reduction16589.terms
theorem substitutionProof16589 : IsMapEvaluation generatorImages reduction16589.relations [1894] reduction16589.output := by lin_cert using reduction16589.terms
def image16590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16590 : InImage map_20_236 image16590 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16590 : Bundle := named_bundle% "RealMapCertificates/relations/basis16590.json"
theorem reductionProof16590 : EqualModuloRelations reduction16590.relations reduction16590.input reduction16590.output := by lin_cert using reduction16590.terms
theorem substitutionProof16590 : IsMapEvaluation generatorImages reduction16590.relations [23,75,376] reduction16590.output := by lin_cert using reduction16590.terms
def image16591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16591 : InImage map_20_236 image16591 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16591 : Bundle := named_bundle% "RealMapCertificates/relations/basis16591.json"
theorem reductionProof16591 : EqualModuloRelations reduction16591.relations reduction16591.input reduction16591.output := by lin_cert using reduction16591.terms
theorem substitutionProof16591 : IsMapEvaluation generatorImages reduction16591.relations [3,1698] reduction16591.output := by lin_cert using reduction16591.terms
def image16592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16592 : InImage map_20_236 image16592 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16592 : Bundle := named_bundle% "RealMapCertificates/relations/basis16592.json"
theorem reductionProof16592 : EqualModuloRelations reduction16592.relations reduction16592.input reduction16592.output := by lin_cert using reduction16592.terms
theorem substitutionProof16592 : IsMapEvaluation generatorImages reduction16592.relations [3,1697] reduction16592.output := by lin_cert using reduction16592.terms
def image16593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16593 : InImage map_20_236 image16593 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16593 : Bundle := named_bundle% "RealMapCertificates/relations/basis16593.json"
theorem reductionProof16593 : EqualModuloRelations reduction16593.relations reduction16593.input reduction16593.output := by lin_cert using reduction16593.terms
theorem substitutionProof16593 : IsMapEvaluation generatorImages reduction16593.relations [0,1871] reduction16593.output := by lin_cert using reduction16593.terms
def image16594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16594 : InImage map_20_236 image16594 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16594 : Bundle := named_bundle% "RealMapCertificates/relations/basis16594.json"
theorem reductionProof16594 : EqualModuloRelations reduction16594.relations reduction16594.input reduction16594.output := by lin_cert using reduction16594.terms
theorem substitutionProof16594 : IsMapEvaluation generatorImages reduction16594.relations [0,207,324] reduction16594.output := by lin_cert using reduction16594.terms
def image16595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16595 : InImage map_20_236 image16595 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16595 : Bundle := named_bundle% "RealMapCertificates/relations/basis16595.json"
theorem reductionProof16595 : EqualModuloRelations reduction16595.relations reduction16595.input reduction16595.output := by lin_cert using reduction16595.terms
theorem substitutionProof16595 : IsMapEvaluation generatorImages reduction16595.relations [0,7,1548] reduction16595.output := by lin_cert using reduction16595.terms
def map_20_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16843 : InImage map_20_237 image16843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16843 : Bundle := named_bundle% "RealMapCertificates/relations/basis16843.json"
theorem reductionProof16843 : EqualModuloRelations reduction16843.relations reduction16843.input reduction16843.output := by lin_cert using reduction16843.terms
theorem substitutionProof16843 : IsMapEvaluation generatorImages reduction16843.relations [76,764] reduction16843.output := by lin_cert using reduction16843.terms
def image16844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16844 : InImage map_20_237 image16844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16844 : Bundle := named_bundle% "RealMapCertificates/relations/basis16844.json"
theorem reductionProof16844 : EqualModuloRelations reduction16844.relations reduction16844.input reduction16844.output := by lin_cert using reduction16844.terms
theorem substitutionProof16844 : IsMapEvaluation generatorImages reduction16844.relations [13,1435] reduction16844.output := by lin_cert using reduction16844.terms
def image16845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16845 : InImage map_20_237 image16845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16845 : Bundle := named_bundle% "RealMapCertificates/relations/basis16845.json"
theorem reductionProof16845 : EqualModuloRelations reduction16845.relations reduction16845.input reduction16845.output := by lin_cert using reduction16845.terms
theorem substitutionProof16845 : IsMapEvaluation generatorImages reduction16845.relations [1,1871] reduction16845.output := by lin_cert using reduction16845.terms
def image16846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16846 : InImage map_20_237 image16846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16846 : Bundle := named_bundle% "RealMapCertificates/relations/basis16846.json"
theorem reductionProof16846 : EqualModuloRelations reduction16846.relations reduction16846.input reduction16846.output := by lin_cert using reduction16846.terms
theorem substitutionProof16846 : IsMapEvaluation generatorImages reduction16846.relations [0,3,1701] reduction16846.output := by lin_cert using reduction16846.terms
def image16847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16847 : InImage map_20_237 image16847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16847 : Bundle := named_bundle% "RealMapCertificates/relations/basis16847.json"
theorem reductionProof16847 : EqualModuloRelations reduction16847.relations reduction16847.input reduction16847.output := by lin_cert using reduction16847.terms
theorem substitutionProof16847 : IsMapEvaluation generatorImages reduction16847.relations [0,0,0,0,0,0,0,187,324] reduction16847.output := by lin_cert using reduction16847.terms
def map_20_238 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17023 : InImage map_20_238 image17023 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17023 : Bundle := named_bundle% "RealMapCertificates/relations/basis17023.json"
theorem reductionProof17023 : EqualModuloRelations reduction17023.relations reduction17023.input reduction17023.output := by lin_cert using reduction17023.terms
theorem substitutionProof17023 : IsMapEvaluation generatorImages reduction17023.relations [1946] reduction17023.output := by lin_cert using reduction17023.terms
def image17024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17024 : InImage map_20_238 image17024 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17024 : Bundle := named_bundle% "RealMapCertificates/relations/basis17024.json"
theorem reductionProof17024 : EqualModuloRelations reduction17024.relations reduction17024.input reduction17024.output := by lin_cert using reduction17024.terms
theorem substitutionProof17024 : IsMapEvaluation generatorImages reduction17024.relations [1945] reduction17024.output := by lin_cert using reduction17024.terms
def image17025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17025 : InImage map_20_238 image17025 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17025 : Bundle := named_bundle% "RealMapCertificates/relations/basis17025.json"
theorem reductionProof17025 : EqualModuloRelations reduction17025.relations reduction17025.input reduction17025.output := by lin_cert using reduction17025.terms
theorem substitutionProof17025 : IsMapEvaluation generatorImages reduction17025.relations [1944] reduction17025.output := by lin_cert using reduction17025.terms
def image17026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17026 : InImage map_20_238 image17026 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17026 : Bundle := named_bundle% "RealMapCertificates/relations/basis17026.json"
theorem reductionProof17026 : EqualModuloRelations reduction17026.relations reduction17026.input reduction17026.output := by lin_cert using reduction17026.terms
theorem substitutionProof17026 : IsMapEvaluation generatorImages reduction17026.relations [43,1017] reduction17026.output := by lin_cert using reduction17026.terms
def image17027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17027 : InImage map_20_238 image17027 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17027 : Bundle := named_bundle% "RealMapCertificates/relations/basis17027.json"
theorem reductionProof17027 : EqualModuloRelations reduction17027.relations reduction17027.input reduction17027.output := by lin_cert using reduction17027.terms
theorem substitutionProof17027 : IsMapEvaluation generatorImages reduction17027.relations [13,1449] reduction17027.output := by lin_cert using reduction17027.terms
def image17028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17028 : InImage map_20_238 image17028 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17028 : Bundle := named_bundle% "RealMapCertificates/relations/basis17028.json"
theorem reductionProof17028 : EqualModuloRelations reduction17028.relations reduction17028.input reduction17028.output := by lin_cert using reduction17028.terms
theorem substitutionProof17028 : IsMapEvaluation generatorImages reduction17028.relations [0,1914] reduction17028.output := by lin_cert using reduction17028.terms
def image17029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17029 : InImage map_20_238 image17029 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17029 : Bundle := named_bundle% "RealMapCertificates/relations/basis17029.json"
theorem reductionProof17029 : EqualModuloRelations reduction17029.relations reduction17029.input reduction17029.output := by lin_cert using reduction17029.terms
theorem substitutionProof17029 : IsMapEvaluation generatorImages reduction17029.relations [0,0,0,0,0,0,0,0,188,324] reduction17029.output := by lin_cert using reduction17029.terms
def map_20_239 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17287 : InImage map_20_239 image17287 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17287 : Bundle := named_bundle% "RealMapCertificates/relations/basis17287.json"
theorem reductionProof17287 : EqualModuloRelations reduction17287.relations reduction17287.input reduction17287.output := by lin_cert using reduction17287.terms
theorem substitutionProof17287 : IsMapEvaluation generatorImages reduction17287.relations [1973] reduction17287.output := by lin_cert using reduction17287.terms
def image17288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17288 : InImage map_20_239 image17288 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17288 : Bundle := named_bundle% "RealMapCertificates/relations/basis17288.json"
theorem reductionProof17288 : EqualModuloRelations reduction17288.relations reduction17288.input reduction17288.output := by lin_cert using reduction17288.terms
theorem substitutionProof17288 : IsMapEvaluation generatorImages reduction17288.relations [42,64,324] reduction17288.output := by lin_cert using reduction17288.terms
def image17289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17289 : InImage map_20_239 image17289 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17289 : Bundle := named_bundle% "RealMapCertificates/relations/basis17289.json"
theorem reductionProof17289 : EqualModuloRelations reduction17289.relations reduction17289.input reduction17289.output := by lin_cert using reduction17289.terms
theorem substitutionProof17289 : IsMapEvaluation generatorImages reduction17289.relations [0,43,1020] reduction17289.output := by lin_cert using reduction17289.terms
def image17290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17290 : InImage map_20_239 image17290 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17290 : Bundle := named_bundle% "RealMapCertificates/relations/basis17290.json"
theorem reductionProof17290 : EqualModuloRelations reduction17290.relations reduction17290.input reduction17290.output := by lin_cert using reduction17290.terms
theorem substitutionProof17290 : IsMapEvaluation generatorImages reduction17290.relations [0,3,1743] reduction17290.output := by lin_cert using reduction17290.terms
def image17291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17291 : InImage map_20_239 image17291 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17291 : Bundle := named_bundle% "RealMapCertificates/relations/basis17291.json"
theorem reductionProof17291 : EqualModuloRelations reduction17291.relations reduction17291.input reduction17291.output := by lin_cert using reduction17291.terms
theorem substitutionProof17291 : IsMapEvaluation generatorImages reduction17291.relations [0,3,67,719] reduction17291.output := by lin_cert using reduction17291.terms
def image17292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17292 : InImage map_20_239 image17292 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17292 : Bundle := named_bundle% "RealMapCertificates/relations/basis17292.json"
theorem reductionProof17292 : EqualModuloRelations reduction17292.relations reduction17292.input reduction17292.output := by lin_cert using reduction17292.terms
theorem substitutionProof17292 : IsMapEvaluation generatorImages reduction17292.relations [0,0,1916] reduction17292.output := by lin_cert using reduction17292.terms
def map_20_240 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image17562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17562 : InImage map_20_240 image17562 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17562 : Bundle := named_bundle% "RealMapCertificates/relations/basis17562.json"
theorem reductionProof17562 : EqualModuloRelations reduction17562.relations reduction17562.input reduction17562.output := by lin_cert using reduction17562.terms
theorem substitutionProof17562 : IsMapEvaluation generatorImages reduction17562.relations [0,0,1948] reduction17562.output := by lin_cert using reduction17562.terms
def map_20_241 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17798 : InImage map_20_241 image17798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17798 : Bundle := named_bundle% "RealMapCertificates/relations/basis17798.json"
theorem reductionProof17798 : EqualModuloRelations reduction17798.relations reduction17798.input reduction17798.output := by lin_cert using reduction17798.terms
theorem substitutionProof17798 : IsMapEvaluation generatorImages reduction17798.relations [2051] reduction17798.output := by lin_cert using reduction17798.terms
def image17799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17799 : InImage map_20_241 image17799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17799 : Bundle := named_bundle% "RealMapCertificates/relations/basis17799.json"
theorem reductionProof17799 : EqualModuloRelations reduction17799.relations reduction17799.input reduction17799.output := by lin_cert using reduction17799.terms
theorem substitutionProof17799 : IsMapEvaluation generatorImages reduction17799.relations [232,324] reduction17799.output := by lin_cert using reduction17799.terms
def image17800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17800 : InImage map_20_241 image17800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17800 : Bundle := named_bundle% "RealMapCertificates/relations/basis17800.json"
theorem reductionProof17800 : EqualModuloRelations reduction17800.relations reduction17800.input reduction17800.output := by lin_cert using reduction17800.terms
theorem substitutionProof17800 : IsMapEvaluation generatorImages reduction17800.relations [189,450] reduction17800.output := by lin_cert using reduction17800.terms
def image17801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17801 : InImage map_20_241 image17801 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17801 : Bundle := named_bundle% "RealMapCertificates/relations/basis17801.json"
theorem reductionProof17801 : EqualModuloRelations reduction17801.relations reduction17801.input reduction17801.output := by lin_cert using reduction17801.terms
theorem substitutionProof17801 : IsMapEvaluation generatorImages reduction17801.relations [7,1644] reduction17801.output := by lin_cert using reduction17801.terms
def image17802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17802 : InImage map_20_241 image17802 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17802 : Bundle := named_bundle% "RealMapCertificates/relations/basis17802.json"
theorem reductionProof17802 : EqualModuloRelations reduction17802.relations reduction17802.input reduction17802.output := by lin_cert using reduction17802.terms
theorem substitutionProof17802 : IsMapEvaluation generatorImages reduction17802.relations [3,1820] reduction17802.output := by lin_cert using reduction17802.terms
def image17803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17803 : InImage map_20_241 image17803 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17803 : Bundle := named_bundle% "RealMapCertificates/relations/basis17803.json"
theorem reductionProof17803 : EqualModuloRelations reduction17803.relations reduction17803.input reduction17803.output := by lin_cert using reduction17803.terms
theorem substitutionProof17803 : IsMapEvaluation generatorImages reduction17803.relations [0,0,1974] reduction17803.output := by lin_cert using reduction17803.terms
def map_20_242 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18062 : InImage map_20_242 image18062 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18062 : Bundle := named_bundle% "RealMapCertificates/relations/basis18062.json"
theorem reductionProof18062 : EqualModuloRelations reduction18062.relations reduction18062.input reduction18062.output := by lin_cert using reduction18062.terms
theorem substitutionProof18062 : IsMapEvaluation generatorImages reduction18062.relations [2069] reduction18062.output := by lin_cert using reduction18062.terms
def image18063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18063 : InImage map_20_242 image18063 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18063 : Bundle := named_bundle% "RealMapCertificates/relations/basis18063.json"
theorem reductionProof18063 : EqualModuloRelations reduction18063.relations reduction18063.input reduction18063.output := by lin_cert using reduction18063.terms
theorem substitutionProof18063 : IsMapEvaluation generatorImages reduction18063.relations [2068] reduction18063.output := by lin_cert using reduction18063.terms
def image18064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18064 : InImage map_20_242 image18064 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18064 : Bundle := named_bundle% "RealMapCertificates/relations/basis18064.json"
theorem reductionProof18064 : EqualModuloRelations reduction18064.relations reduction18064.input reduction18064.output := by lin_cert using reduction18064.terms
theorem substitutionProof18064 : IsMapEvaluation generatorImages reduction18064.relations [76,824] reduction18064.output := by lin_cert using reduction18064.terms
def image18065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18065 : InImage map_20_242 image18065 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18065 : Bundle := named_bundle% "RealMapCertificates/relations/basis18065.json"
theorem reductionProof18065 : EqualModuloRelations reduction18065.relations reduction18065.input reduction18065.output := by lin_cert using reduction18065.terms
theorem substitutionProof18065 : IsMapEvaluation generatorImages reduction18065.relations [23,113,324] reduction18065.output := by lin_cert using reduction18065.terms
def image18066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18066 : InImage map_20_242 image18066 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18066 : Bundle := named_bundle% "RealMapCertificates/relations/basis18066.json"
theorem reductionProof18066 : EqualModuloRelations reduction18066.relations reduction18066.input reduction18066.output := by lin_cert using reduction18066.terms
theorem substitutionProof18066 : IsMapEvaluation generatorImages reduction18066.relations [1,1,1948] reduction18066.output := by lin_cert using reduction18066.terms
def image18067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18067 : InImage map_20_242 image18067 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18067 : Bundle := named_bundle% "RealMapCertificates/relations/basis18067.json"
theorem reductionProof18067 : EqualModuloRelations reduction18067.relations reduction18067.input reduction18067.output := by lin_cert using reduction18067.terms
theorem substitutionProof18067 : IsMapEvaluation generatorImages reduction18067.relations [0,43,1071] reduction18067.output := by lin_cert using reduction18067.terms
def image18068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18068 : InImage map_20_242 image18068 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18068 : Bundle := named_bundle% "RealMapCertificates/relations/basis18068.json"
theorem reductionProof18068 : EqualModuloRelations reduction18068.relations reduction18068.input reduction18068.output := by lin_cert using reduction18068.terms
theorem substitutionProof18068 : IsMapEvaluation generatorImages reduction18068.relations [0,0,43,1056] reduction18068.output := by lin_cert using reduction18068.terms
def image18069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18069 : InImage map_20_242 image18069 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18069 : Bundle := named_bundle% "RealMapCertificates/relations/basis18069.json"
theorem reductionProof18069 : EqualModuloRelations reduction18069.relations reduction18069.input reduction18069.output := by lin_cert using reduction18069.terms
theorem substitutionProof18069 : IsMapEvaluation generatorImages reduction18069.relations [0,0,0,1976] reduction18069.output := by lin_cert using reduction18069.terms
def map_20_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18339 : InImage map_20_243 image18339 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18339 : Bundle := named_bundle% "RealMapCertificates/relations/basis18339.json"
theorem reductionProof18339 : EqualModuloRelations reduction18339.relations reduction18339.input reduction18339.output := by lin_cert using reduction18339.terms
theorem substitutionProof18339 : IsMapEvaluation generatorImages reduction18339.relations [188,479] reduction18339.output := by lin_cert using reduction18339.terms
def image18340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18340 : InImage map_20_243 image18340 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18340 : Bundle := named_bundle% "RealMapCertificates/relations/basis18340.json"
theorem reductionProof18340 : EqualModuloRelations reduction18340.relations reduction18340.input reduction18340.output := by lin_cert using reduction18340.terms
theorem substitutionProof18340 : IsMapEvaluation generatorImages reduction18340.relations [3,1871] reduction18340.output := by lin_cert using reduction18340.terms
def image18341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18341 : InImage map_20_243 image18341 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18341 : Bundle := named_bundle% "RealMapCertificates/relations/basis18341.json"
theorem reductionProof18341 : EqualModuloRelations reduction18341.relations reduction18341.input reduction18341.output := by lin_cert using reduction18341.terms
theorem substitutionProof18341 : IsMapEvaluation generatorImages reduction18341.relations [0,2071] reduction18341.output := by lin_cert using reduction18341.terms
def image18342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18342 : InImage map_20_243 image18342 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18342 : Bundle := named_bundle% "RealMapCertificates/relations/basis18342.json"
theorem reductionProof18342 : EqualModuloRelations reduction18342.relations reduction18342.input reduction18342.output := by lin_cert using reduction18342.terms
theorem substitutionProof18342 : IsMapEvaluation generatorImages reduction18342.relations [0,2070] reduction18342.output := by lin_cert using reduction18342.terms
def image18343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18343 : InImage map_20_243 image18343 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18343 : Bundle := named_bundle% "RealMapCertificates/relations/basis18343.json"
theorem reductionProof18343 : EqualModuloRelations reduction18343.relations reduction18343.input reduction18343.output := by lin_cert using reduction18343.terms
theorem substitutionProof18343 : IsMapEvaluation generatorImages reduction18343.relations [0,2,1948] reduction18343.output := by lin_cert using reduction18343.terms
def map_20_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18545 : InImage map_20_244 image18545 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18545 : Bundle := named_bundle% "RealMapCertificates/relations/basis18545.json"
theorem reductionProof18545 : EqualModuloRelations reduction18545.relations reduction18545.input reduction18545.output := by lin_cert using reduction18545.terms
theorem substitutionProof18545 : IsMapEvaluation generatorImages reduction18545.relations [2144] reduction18545.output := by lin_cert using reduction18545.terms
def image18546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18546 : InImage map_20_244 image18546 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18546 : Bundle := named_bundle% "RealMapCertificates/relations/basis18546.json"
theorem reductionProof18546 : EqualModuloRelations reduction18546.relations reduction18546.input reduction18546.output := by lin_cert using reduction18546.terms
theorem substitutionProof18546 : IsMapEvaluation generatorImages reduction18546.relations [2143] reduction18546.output := by lin_cert using reduction18546.terms
def image18547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18547 : InImage map_20_244 image18547 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18547 : Bundle := named_bundle% "RealMapCertificates/relations/basis18547.json"
theorem reductionProof18547 : EqualModuloRelations reduction18547.relations reduction18547.input reduction18547.output := by lin_cert using reduction18547.terms
theorem substitutionProof18547 : IsMapEvaluation generatorImages reduction18547.relations [0,2112] reduction18547.output := by lin_cert using reduction18547.terms
def image18548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18548 : InImage map_20_244 image18548 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18548 : Bundle := named_bundle% "RealMapCertificates/relations/basis18548.json"
theorem reductionProof18548 : EqualModuloRelations reduction18548.relations reduction18548.input reduction18548.output := by lin_cert using reduction18548.terms
theorem substitutionProof18548 : IsMapEvaluation generatorImages reduction18548.relations [0,2110] reduction18548.output := by lin_cert using reduction18548.terms
def image18549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18549 : InImage map_20_244 image18549 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18549 : Bundle := named_bundle% "RealMapCertificates/relations/basis18549.json"
theorem reductionProof18549 : EqualModuloRelations reduction18549.relations reduction18549.input reduction18549.output := by lin_cert using reduction18549.terms
theorem substitutionProof18549 : IsMapEvaluation generatorImages reduction18549.relations [0,0,2072] reduction18549.output := by lin_cert using reduction18549.terms
def map_20_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18814 : InImage map_20_245 image18814 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18814 : Bundle := named_bundle% "RealMapCertificates/relations/basis18814.json"
theorem reductionProof18814 : EqualModuloRelations reduction18814.relations reduction18814.input reduction18814.output := by lin_cert using reduction18814.terms
theorem substitutionProof18814 : IsMapEvaluation generatorImages reduction18814.relations [8,173,324] reduction18814.output := by lin_cert using reduction18814.terms
def image18815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18815 : InImage map_20_245 image18815 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18815 : Bundle := named_bundle% "RealMapCertificates/relations/basis18815.json"
theorem reductionProof18815 : EqualModuloRelations reduction18815.relations reduction18815.input reduction18815.output := by lin_cert using reduction18815.terms
theorem substitutionProof18815 : IsMapEvaluation generatorImages reduction18815.relations [1,2112] reduction18815.output := by lin_cert using reduction18815.terms
def image18816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18816 : InImage map_20_245 image18816 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18816 : Bundle := named_bundle% "RealMapCertificates/relations/basis18816.json"
theorem reductionProof18816 : EqualModuloRelations reduction18816.relations reduction18816.input reduction18816.output := by lin_cert using reduction18816.terms
theorem substitutionProof18816 : IsMapEvaluation generatorImages reduction18816.relations [1,2110] reduction18816.output := by lin_cert using reduction18816.terms
def image18817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18817 : InImage map_20_245 image18817 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18817 : Bundle := named_bundle% "RealMapCertificates/relations/basis18817.json"
theorem reductionProof18817 : EqualModuloRelations reduction18817.relations reduction18817.input reduction18817.output := by lin_cert using reduction18817.terms
theorem substitutionProof18817 : IsMapEvaluation generatorImages reduction18817.relations [0,0,2113] reduction18817.output := by lin_cert using reduction18817.terms
def image18818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18818 : InImage map_20_245 image18818 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18818 : Bundle := named_bundle% "RealMapCertificates/relations/basis18818.json"
theorem reductionProof18818 : EqualModuloRelations reduction18818.relations reduction18818.input reduction18818.output := by lin_cert using reduction18818.terms
theorem substitutionProof18818 : IsMapEvaluation generatorImages reduction18818.relations [0,0,3,1876] reduction18818.output := by lin_cert using reduction18818.terms
def map_20_246 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19117 : InImage map_20_246 image19117 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19117 : Bundle := named_bundle% "RealMapCertificates/relations/basis19117.json"
theorem reductionProof19117 : EqualModuloRelations reduction19117.relations reduction19117.input reduction19117.output := by lin_cert using reduction19117.terms
theorem substitutionProof19117 : IsMapEvaluation generatorImages reduction19117.relations [2224] reduction19117.output := by lin_cert using reduction19117.terms
def image19118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19118 : InImage map_20_246 image19118 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19118 : Bundle := named_bundle% "RealMapCertificates/relations/basis19118.json"
theorem reductionProof19118 : EqualModuloRelations reduction19118.relations reduction19118.input reduction19118.output := by lin_cert using reduction19118.terms
theorem substitutionProof19118 : IsMapEvaluation generatorImages reduction19118.relations [2223] reduction19118.output := by lin_cert using reduction19118.terms
def image19119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19119 : InImage map_20_246 image19119 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19119 : Bundle := named_bundle% "RealMapCertificates/relations/basis19119.json"
theorem reductionProof19119 : EqualModuloRelations reduction19119.relations reduction19119.input reduction19119.output := by lin_cert using reduction19119.terms
theorem substitutionProof19119 : IsMapEvaluation generatorImages reduction19119.relations [18,1445] reduction19119.output := by lin_cert using reduction19119.terms
def image19120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19120 : InImage map_20_246 image19120 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19120 : Bundle := named_bundle% "RealMapCertificates/relations/basis19120.json"
theorem reductionProof19120 : EqualModuloRelations reduction19120.relations reduction19120.input reduction19120.output := by lin_cert using reduction19120.terms
theorem substitutionProof19120 : IsMapEvaluation generatorImages reduction19120.relations [2,2,1948] reduction19120.output := by lin_cert using reduction19120.terms
def image19121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19121 : InImage map_20_246 image19121 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19121 : Bundle := named_bundle% "RealMapCertificates/relations/basis19121.json"
theorem reductionProof19121 : EqualModuloRelations reduction19121.relations reduction19121.input reduction19121.output := by lin_cert using reduction19121.terms
theorem substitutionProof19121 : IsMapEvaluation generatorImages reduction19121.relations [0,2183] reduction19121.output := by lin_cert using reduction19121.terms
def map_20_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19349 : InImage map_20_247 image19349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19349 : Bundle := named_bundle% "RealMapCertificates/relations/basis19349.json"
theorem reductionProof19349 : EqualModuloRelations reduction19349.relations reduction19349.input reduction19349.output := by lin_cert using reduction19349.terms
theorem substitutionProof19349 : IsMapEvaluation generatorImages reduction19349.relations [2260] reduction19349.output := by lin_cert using reduction19349.terms
def image19350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19350 : InImage map_20_247 image19350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19350 : Bundle := named_bundle% "RealMapCertificates/relations/basis19350.json"
theorem reductionProof19350 : EqualModuloRelations reduction19350.relations reduction19350.input reduction19350.output := by lin_cert using reduction19350.terms
theorem substitutionProof19350 : IsMapEvaluation generatorImages reduction19350.relations [2259] reduction19350.output := by lin_cert using reduction19350.terms
def image19351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19351 : InImage map_20_247 image19351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19351 : Bundle := named_bundle% "RealMapCertificates/relations/basis19351.json"
theorem reductionProof19351 : EqualModuloRelations reduction19351.relations reduction19351.input reduction19351.output := by lin_cert using reduction19351.terms
theorem substitutionProof19351 : IsMapEvaluation generatorImages reduction19351.relations [1,2182] reduction19351.output := by lin_cert using reduction19351.terms
def image19352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19352 : InImage map_20_247 image19352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19352 : Bundle := named_bundle% "RealMapCertificates/relations/basis19352.json"
theorem reductionProof19352 : EqualModuloRelations reduction19352.relations reduction19352.input reduction19352.output := by lin_cert using reduction19352.terms
theorem substitutionProof19352 : IsMapEvaluation generatorImages reduction19352.relations [0,2,2072] reduction19352.output := by lin_cert using reduction19352.terms
def map_20_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19619 : InImage map_20_248 image19619 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19619 : Bundle := named_bundle% "RealMapCertificates/relations/basis19619.json"
theorem reductionProof19619 : EqualModuloRelations reduction19619.relations reduction19619.input reduction19619.output := by lin_cert using reduction19619.terms
theorem substitutionProof19619 : IsMapEvaluation generatorImages reduction19619.relations [8,186,324] reduction19619.output := by lin_cert using reduction19619.terms
def image19620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19620 : InImage map_20_248 image19620 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19620 : Bundle := named_bundle% "RealMapCertificates/relations/basis19620.json"
theorem reductionProof19620 : EqualModuloRelations reduction19620.relations reduction19620.input reduction19620.output := by lin_cert using reduction19620.terms
theorem substitutionProof19620 : IsMapEvaluation generatorImages reduction19620.relations [1,2226] reduction19620.output := by lin_cert using reduction19620.terms
def image19621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19621 : InImage map_20_248 image19621 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19621 : Bundle := named_bundle% "RealMapCertificates/relations/basis19621.json"
theorem reductionProof19621 : EqualModuloRelations reduction19621.relations reduction19621.input reduction19621.output := by lin_cert using reduction19621.terms
theorem substitutionProof19621 : IsMapEvaluation generatorImages reduction19621.relations [0,2263] reduction19621.output := by lin_cert using reduction19621.terms
def image19622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19622 : InImage map_20_248 image19622 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19622 : Bundle := named_bundle% "RealMapCertificates/relations/basis19622.json"
theorem reductionProof19622 : EqualModuloRelations reduction19622.relations reduction19622.input reduction19622.output := by lin_cert using reduction19622.terms
theorem substitutionProof19622 : IsMapEvaluation generatorImages reduction19622.relations [0,2261] reduction19622.output := by lin_cert using reduction19622.terms
def image19623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19623 : InImage map_20_248 image19623 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19623 : Bundle := named_bundle% "RealMapCertificates/relations/basis19623.json"
theorem reductionProof19623 : EqualModuloRelations reduction19623.relations reduction19623.input reduction19623.output := by lin_cert using reduction19623.terms
theorem substitutionProof19623 : IsMapEvaluation generatorImages reduction19623.relations [0,260,324] reduction19623.output := by lin_cert using reduction19623.terms
def image19624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19624 : InImage map_20_248 image19624 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19624 : Bundle := named_bundle% "RealMapCertificates/relations/basis19624.json"
theorem reductionProof19624 : EqualModuloRelations reduction19624.relations reduction19624.input reduction19624.output := by lin_cert using reduction19624.terms
theorem substitutionProof19624 : IsMapEvaluation generatorImages reduction19624.relations [0,2,2113] reduction19624.output := by lin_cert using reduction19624.terms
def map_20_249 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19924 : InImage map_20_249 image19924 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19924 : Bundle := named_bundle% "RealMapCertificates/relations/basis19924.json"
theorem reductionProof19924 : EqualModuloRelations reduction19924.relations reduction19924.input reduction19924.output := by lin_cert using reduction19924.terms
theorem substitutionProof19924 : IsMapEvaluation generatorImages reduction19924.relations [2325] reduction19924.output := by lin_cert using reduction19924.terms
def image19925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19925 : InImage map_20_249 image19925 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19925 : Bundle := named_bundle% "RealMapCertificates/relations/basis19925.json"
theorem reductionProof19925 : EqualModuloRelations reduction19925.relations reduction19925.input reduction19925.output := by lin_cert using reduction19925.terms
theorem substitutionProof19925 : IsMapEvaluation generatorImages reduction19925.relations [2324] reduction19925.output := by lin_cert using reduction19925.terms
def image19926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19926 : InImage map_20_249 image19926 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19926 : Bundle := named_bundle% "RealMapCertificates/relations/basis19926.json"
theorem reductionProof19926 : EqualModuloRelations reduction19926.relations reduction19926.input reduction19926.output := by lin_cert using reduction19926.terms
theorem substitutionProof19926 : IsMapEvaluation generatorImages reduction19926.relations [2323] reduction19926.output := by lin_cert using reduction19926.terms
def image19927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19927 : InImage map_20_249 image19927 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19927 : Bundle := named_bundle% "RealMapCertificates/relations/basis19927.json"
theorem reductionProof19927 : EqualModuloRelations reduction19927.relations reduction19927.input reduction19927.output := by lin_cert using reduction19927.terms
theorem substitutionProof19927 : IsMapEvaluation generatorImages reduction19927.relations [2322] reduction19927.output := by lin_cert using reduction19927.terms
def image19928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19928 : InImage map_20_249 image19928 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19928 : Bundle := named_bundle% "RealMapCertificates/relations/basis19928.json"
theorem reductionProof19928 : EqualModuloRelations reduction19928.relations reduction19928.input reduction19928.output := by lin_cert using reduction19928.terms
theorem substitutionProof19928 : IsMapEvaluation generatorImages reduction19928.relations [1,260,324] reduction19928.output := by lin_cert using reduction19928.terms
def image19929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19929 : InImage map_20_249 image19929 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19929 : Bundle := named_bundle% "RealMapCertificates/relations/basis19929.json"
theorem reductionProof19929 : EqualModuloRelations reduction19929.relations reduction19929.input reduction19929.output := by lin_cert using reduction19929.terms
theorem substitutionProof19929 : IsMapEvaluation generatorImages reduction19929.relations [0,2291] reduction19929.output := by lin_cert using reduction19929.terms
def image19930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19930 : InImage map_20_249 image19930 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19930 : Bundle := named_bundle% "RealMapCertificates/relations/basis19930.json"
theorem reductionProof19930 : EqualModuloRelations reduction19930.relations reduction19930.input reduction19930.output := by lin_cert using reduction19930.terms
theorem substitutionProof19930 : IsMapEvaluation generatorImages reduction19930.relations [0,0,2265] reduction19930.output := by lin_cert using reduction19930.terms
def map_20_250 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20152 : InImage map_20_250 image20152 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20152 : Bundle := named_bundle% "RealMapCertificates/relations/basis20152.json"
theorem reductionProof20152 : EqualModuloRelations reduction20152.relations reduction20152.input reduction20152.output := by lin_cert using reduction20152.terms
theorem substitutionProof20152 : IsMapEvaluation generatorImages reduction20152.relations [2358] reduction20152.output := by lin_cert using reduction20152.terms
def image20153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20153 : InImage map_20_250 image20153 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20153 : Bundle := named_bundle% "RealMapCertificates/relations/basis20153.json"
theorem reductionProof20153 : EqualModuloRelations reduction20153.relations reduction20153.input reduction20153.output := by lin_cert using reduction20153.terms
theorem substitutionProof20153 : IsMapEvaluation generatorImages reduction20153.relations [2357] reduction20153.output := by lin_cert using reduction20153.terms
def image20154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20154 : InImage map_20_250 image20154 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20154 : Bundle := named_bundle% "RealMapCertificates/relations/basis20154.json"
theorem reductionProof20154 : EqualModuloRelations reduction20154.relations reduction20154.input reduction20154.output := by lin_cert using reduction20154.terms
theorem substitutionProof20154 : IsMapEvaluation generatorImages reduction20154.relations [1,2291] reduction20154.output := by lin_cert using reduction20154.terms
def image20155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20155 : InImage map_20_250 image20155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20155 : Bundle := named_bundle% "RealMapCertificates/relations/basis20155.json"
theorem reductionProof20155 : EqualModuloRelations reduction20155.relations reduction20155.input reduction20155.output := by lin_cert using reduction20155.terms
theorem substitutionProof20155 : IsMapEvaluation generatorImages reduction20155.relations [0,0,2292] reduction20155.output := by lin_cert using reduction20155.terms
def map_20_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20436 : InImage map_20_251 image20436 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20436 : Bundle := named_bundle% "RealMapCertificates/relations/basis20436.json"
theorem reductionProof20436 : EqualModuloRelations reduction20436.relations reduction20436.input reduction20436.output := by lin_cert using reduction20436.terms
theorem substitutionProof20436 : IsMapEvaluation generatorImages reduction20436.relations [2392] reduction20436.output := by lin_cert using reduction20436.terms
def image20437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20437 : InImage map_20_251 image20437 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20437 : Bundle := named_bundle% "RealMapCertificates/relations/basis20437.json"
theorem reductionProof20437 : EqualModuloRelations reduction20437.relations reduction20437.input reduction20437.output := by lin_cert using reduction20437.terms
theorem substitutionProof20437 : IsMapEvaluation generatorImages reduction20437.relations [2391] reduction20437.output := by lin_cert using reduction20437.terms
def image20438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20438 : InImage map_20_251 image20438 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20438 : Bundle := named_bundle% "RealMapCertificates/relations/basis20438.json"
theorem reductionProof20438 : EqualModuloRelations reduction20438.relations reduction20438.input reduction20438.output := by lin_cert using reduction20438.terms
theorem substitutionProof20438 : IsMapEvaluation generatorImages reduction20438.relations [8,23,80,324] reduction20438.output := by lin_cert using reduction20438.terms
def image20439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20439 : InImage map_20_251 image20439 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20439 : Bundle := named_bundle% "RealMapCertificates/relations/basis20439.json"
theorem reductionProof20439 : EqualModuloRelations reduction20439.relations reduction20439.input reduction20439.output := by lin_cert using reduction20439.terms
theorem substitutionProof20439 : IsMapEvaluation generatorImages reduction20439.relations [0,278,324] reduction20439.output := by lin_cert using reduction20439.terms
def image20440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20440 : InImage map_20_251 image20440 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20440 : Bundle := named_bundle% "RealMapCertificates/relations/basis20440.json"
theorem reductionProof20440 : EqualModuloRelations reduction20440.relations reduction20440.input reduction20440.output := by lin_cert using reduction20440.terms
theorem substitutionProof20440 : IsMapEvaluation generatorImages reduction20440.relations [0,0,2328] reduction20440.output := by lin_cert using reduction20440.terms
def image20441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20441 : InImage map_20_251 image20441 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20441 : Bundle := named_bundle% "RealMapCertificates/relations/basis20441.json"
theorem reductionProof20441 : EqualModuloRelations reduction20441.relations reduction20441.input reduction20441.output := by lin_cert using reduction20441.terms
theorem substitutionProof20441 : IsMapEvaluation generatorImages reduction20441.relations [0,0,0,2294] reduction20441.output := by lin_cert using reduction20441.terms
def map_20_252 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20758 : InImage map_20_252 image20758 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20758 : Bundle := named_bundle% "RealMapCertificates/relations/basis20758.json"
theorem reductionProof20758 : EqualModuloRelations reduction20758.relations reduction20758.input reduction20758.output := by lin_cert using reduction20758.terms
theorem substitutionProof20758 : IsMapEvaluation generatorImages reduction20758.relations [2427] reduction20758.output := by lin_cert using reduction20758.terms
def image20759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20759 : InImage map_20_252 image20759 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20759 : Bundle := named_bundle% "RealMapCertificates/relations/basis20759.json"
theorem reductionProof20759 : EqualModuloRelations reduction20759.relations reduction20759.input reduction20759.output := by lin_cert using reduction20759.terms
theorem substitutionProof20759 : IsMapEvaluation generatorImages reduction20759.relations [2426] reduction20759.output := by lin_cert using reduction20759.terms
def image20760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20760 : InImage map_20_252 image20760 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20760 : Bundle := named_bundle% "RealMapCertificates/relations/basis20760.json"
theorem reductionProof20760 : EqualModuloRelations reduction20760.relations reduction20760.input reduction20760.output := by lin_cert using reduction20760.terms
theorem substitutionProof20760 : IsMapEvaluation generatorImages reduction20760.relations [2425] reduction20760.output := by lin_cert using reduction20760.terms
def image20761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20761 : InImage map_20_252 image20761 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20761 : Bundle := named_bundle% "RealMapCertificates/relations/basis20761.json"
theorem reductionProof20761 : EqualModuloRelations reduction20761.relations reduction20761.input reduction20761.output := by lin_cert using reduction20761.terms
theorem substitutionProof20761 : IsMapEvaluation generatorImages reduction20761.relations [13,1706] reduction20761.output := by lin_cert using reduction20761.terms
def image20762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20762 : InImage map_20_252 image20762 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20762 : Bundle := named_bundle% "RealMapCertificates/relations/basis20762.json"
theorem reductionProof20762 : EqualModuloRelations reduction20762.relations reduction20762.input reduction20762.output := by lin_cert using reduction20762.terms
theorem substitutionProof20762 : IsMapEvaluation generatorImages reduction20762.relations [2,2291] reduction20762.output := by lin_cert using reduction20762.terms
def image20763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20763 : InImage map_20_252 image20763 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20763 : Bundle := named_bundle% "RealMapCertificates/relations/basis20763.json"
theorem reductionProof20763 : EqualModuloRelations reduction20763.relations reduction20763.input reduction20763.output := by lin_cert using reduction20763.terms
theorem substitutionProof20763 : IsMapEvaluation generatorImages reduction20763.relations [0,2394] reduction20763.output := by lin_cert using reduction20763.terms
def image20764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20764 : InImage map_20_252 image20764 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20764 : Bundle := named_bundle% "RealMapCertificates/relations/basis20764.json"
theorem reductionProof20764 : EqualModuloRelations reduction20764.relations reduction20764.input reduction20764.output := by lin_cert using reduction20764.terms
theorem substitutionProof20764 : IsMapEvaluation generatorImages reduction20764.relations [0,0,2362] reduction20764.output := by lin_cert using reduction20764.terms
def map_20_253 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20977 : InImage map_20_253 image20977 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20977 : Bundle := named_bundle% "RealMapCertificates/relations/basis20977.json"
theorem reductionProof20977 : EqualModuloRelations reduction20977.relations reduction20977.input reduction20977.output := by lin_cert using reduction20977.terms
theorem substitutionProof20977 : IsMapEvaluation generatorImages reduction20977.relations [2465] reduction20977.output := by lin_cert using reduction20977.terms
def image20978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20978 : InImage map_20_253 image20978 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20978 : Bundle := named_bundle% "RealMapCertificates/relations/basis20978.json"
theorem reductionProof20978 : EqualModuloRelations reduction20978.relations reduction20978.input reduction20978.output := by lin_cert using reduction20978.terms
theorem substitutionProof20978 : IsMapEvaluation generatorImages reduction20978.relations [2464] reduction20978.output := by lin_cert using reduction20978.terms
def image20979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20979 : InImage map_20_253 image20979 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20979 : Bundle := named_bundle% "RealMapCertificates/relations/basis20979.json"
theorem reductionProof20979 : EqualModuloRelations reduction20979.relations reduction20979.input reduction20979.output := by lin_cert using reduction20979.terms
theorem substitutionProof20979 : IsMapEvaluation generatorImages reduction20979.relations [2463] reduction20979.output := by lin_cert using reduction20979.terms
def image20980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20980 : InImage map_20_253 image20980 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20980 : Bundle := named_bundle% "RealMapCertificates/relations/basis20980.json"
theorem reductionProof20980 : EqualModuloRelations reduction20980.relations reduction20980.input reduction20980.output := by lin_cert using reduction20980.terms
theorem substitutionProof20980 : IsMapEvaluation generatorImages reduction20980.relations [2462] reduction20980.output := by lin_cert using reduction20980.terms
def image20981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20981 : InImage map_20_253 image20981 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20981 : Bundle := named_bundle% "RealMapCertificates/relations/basis20981.json"
theorem reductionProof20981 : EqualModuloRelations reduction20981.relations reduction20981.input reduction20981.output := by lin_cert using reduction20981.terms
theorem substitutionProof20981 : IsMapEvaluation generatorImages reduction20981.relations [13,1730] reduction20981.output := by lin_cert using reduction20981.terms
def image20982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20982 : InImage map_20_253 image20982 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20982 : Bundle := named_bundle% "RealMapCertificates/relations/basis20982.json"
theorem reductionProof20982 : EqualModuloRelations reduction20982.relations reduction20982.input reduction20982.output := by lin_cert using reduction20982.terms
theorem substitutionProof20982 : IsMapEvaluation generatorImages reduction20982.relations [0,2428] reduction20982.output := by lin_cert using reduction20982.terms
end RealMapCertificates
