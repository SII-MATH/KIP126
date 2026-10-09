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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 31 => [[4,4,6]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 62 => [[1,4,4,4,4,4]]
  | 65 => [[2,4,4,4,4,4]]
  | 67 => []
  | 68 => []
  | 71 => [[4,4,4,4,6]]
  | 74 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 92 => []
  | 209 => []
  | 291 => []
  | 292 => []
  | 299 => []
  | 316 => []
  | 324 => []
  | 327 => []
  | 333 => []
  | 346 => []
  | 347 => []
  | 351 => []
  | 544 => []
  | 988 => []
  | 1055 => []
  | 1057 => []
  | 1091 => []
  | 1896 => []
  | 1948 => []
  | 1952 => []
  | 1978 => []
  | 2012 => []
  | 2110 => []
  | 2328 => []
  | 2428 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2467 => []
  | 2474 => []
  | 2475 => []
  | 2478 => []
  | 2480 => []
  | 2512 => []
  | 2513 => []
  | 2514 => []
  | 2515 => []
  | 2516 => []
  | 2522 => []
  | 2562 => []
  | 2563 => []
  | 2564 => []
  | 2565 => []
  | 2566 => []
  | 2605 => []
  | 2606 => []
  | 2607 => []
  | 2608 => []
  | 2611 => []
  | 2612 => []
  | 2647 => []
  | 2648 => []
  | 2649 => []
  | 2650 => []
  | 2651 => []
  | 2653 => []
  | 2655 => []
  | 2692 => []
  | 2693 => []
  | 2695 => []
  | 2696 => []
  | 2764 => []
  | 2767 => []
  | 2768 => []
  | 2770 => []
  | 2771 => []
  | 2824 => []
  | 2825 => []
  | 2826 => []
  | 2827 => []
  | 2829 => []
  | 2831 => []
  | 2882 => []
  | 2883 => []
  | 2884 => []
  | _ => []
def map_20_254 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image21278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21278 : InImage map_20_254 image21278 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction21278 : Bundle := named_bundle% "RealMapCertificates/relations/basis21278.json"
theorem reductionProof21278 : EqualModuloRelations reduction21278.relations reduction21278.input reduction21278.output := by lin_cert using reduction21278.terms
theorem substitutionProof21278 : IsMapEvaluation generatorImages reduction21278.relations [2515] reduction21278.output := by lin_cert using reduction21278.terms
def image21279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21279 : InImage map_20_254 image21279 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction21279 : Bundle := named_bundle% "RealMapCertificates/relations/basis21279.json"
theorem reductionProof21279 : EqualModuloRelations reduction21279.relations reduction21279.input reduction21279.output := by lin_cert using reduction21279.terms
theorem substitutionProof21279 : IsMapEvaluation generatorImages reduction21279.relations [2514] reduction21279.output := by lin_cert using reduction21279.terms
def image21280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21280 : InImage map_20_254 image21280 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction21280 : Bundle := named_bundle% "RealMapCertificates/relations/basis21280.json"
theorem reductionProof21280 : EqualModuloRelations reduction21280.relations reduction21280.input reduction21280.output := by lin_cert using reduction21280.terms
theorem substitutionProof21280 : IsMapEvaluation generatorImages reduction21280.relations [2513] reduction21280.output := by lin_cert using reduction21280.terms
def image21281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21281 : InImage map_20_254 image21281 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction21281 : Bundle := named_bundle% "RealMapCertificates/relations/basis21281.json"
theorem reductionProof21281 : EqualModuloRelations reduction21281.relations reduction21281.input reduction21281.output := by lin_cert using reduction21281.terms
theorem substitutionProof21281 : IsMapEvaluation generatorImages reduction21281.relations [2512] reduction21281.output := by lin_cert using reduction21281.terms
def image21282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21282 : InImage map_20_254 image21282 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction21282 : Bundle := named_bundle% "RealMapCertificates/relations/basis21282.json"
theorem reductionProof21282 : EqualModuloRelations reduction21282.relations reduction21282.input reduction21282.output := by lin_cert using reduction21282.terms
theorem substitutionProof21282 : IsMapEvaluation generatorImages reduction21282.relations [299,324] reduction21282.output := by lin_cert using reduction21282.terms
def image21283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21283 : InImage map_20_254 image21283 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction21283 : Bundle := named_bundle% "RealMapCertificates/relations/basis21283.json"
theorem reductionProof21283 : EqualModuloRelations reduction21283.relations reduction21283.input reduction21283.output := by lin_cert using reduction21283.terms
theorem substitutionProof21283 : IsMapEvaluation generatorImages reduction21283.relations [8,1896] reduction21283.output := by lin_cert using reduction21283.terms
def image21284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21284 : InImage map_20_254 image21284 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction21284 : Bundle := named_bundle% "RealMapCertificates/relations/basis21284.json"
theorem reductionProof21284 : EqualModuloRelations reduction21284.relations reduction21284.input reduction21284.output := by lin_cert using reduction21284.terms
theorem substitutionProof21284 : IsMapEvaluation generatorImages reduction21284.relations [0,2467] reduction21284.output := by lin_cert using reduction21284.terms
def image21285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21285 : InImage map_20_254 image21285 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction21285 : Bundle := named_bundle% "RealMapCertificates/relations/basis21285.json"
theorem reductionProof21285 : EqualModuloRelations reduction21285.relations reduction21285.input reduction21285.output := by lin_cert using reduction21285.terms
theorem substitutionProof21285 : IsMapEvaluation generatorImages reduction21285.relations [0,291,324] reduction21285.output := by lin_cert using reduction21285.terms
def image21286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21286 : InImage map_20_254 image21286 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction21286 : Bundle := named_bundle% "RealMapCertificates/relations/basis21286.json"
theorem reductionProof21286 : EqualModuloRelations reduction21286.relations reduction21286.input reduction21286.output := by lin_cert using reduction21286.terms
theorem substitutionProof21286 : IsMapEvaluation generatorImages reduction21286.relations [0,2,2328] reduction21286.output := by lin_cert using reduction21286.terms
def image21287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21287 : InImage map_20_254 image21287 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction21287 : Bundle := named_bundle% "RealMapCertificates/relations/basis21287.json"
theorem reductionProof21287 : EqualModuloRelations reduction21287.relations reduction21287.input reduction21287.output := by lin_cert using reduction21287.terms
theorem substitutionProof21287 : IsMapEvaluation generatorImages reduction21287.relations [0,0,2429] reduction21287.output := by lin_cert using reduction21287.terms
def map_20_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21628 : InImage map_20_255 image21628 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21628 : Bundle := named_bundle% "RealMapCertificates/relations/basis21628.json"
theorem reductionProof21628 : EqualModuloRelations reduction21628.relations reduction21628.input reduction21628.output := by lin_cert using reduction21628.terms
theorem substitutionProof21628 : IsMapEvaluation generatorImages reduction21628.relations [2562] reduction21628.output := by lin_cert using reduction21628.terms
def image21629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21629 : InImage map_20_255 image21629 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21629 : Bundle := named_bundle% "RealMapCertificates/relations/basis21629.json"
theorem reductionProof21629 : EqualModuloRelations reduction21629.relations reduction21629.input reduction21629.output := by lin_cert using reduction21629.terms
theorem substitutionProof21629 : IsMapEvaluation generatorImages reduction21629.relations [209,544] reduction21629.output := by lin_cert using reduction21629.terms
def image21630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21630 : InImage map_20_255 image21630 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21630 : Bundle := named_bundle% "RealMapCertificates/relations/basis21630.json"
theorem reductionProof21630 : EqualModuloRelations reduction21630.relations reduction21630.input reduction21630.output := by lin_cert using reduction21630.terms
theorem substitutionProof21630 : IsMapEvaluation generatorImages reduction21630.relations [0,7,1948] reduction21630.output := by lin_cert using reduction21630.terms
def image21631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21631 : InImage map_20_255 image21631 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21631 : Bundle := named_bundle% "RealMapCertificates/relations/basis21631.json"
theorem reductionProof21631 : EqualModuloRelations reduction21631.relations reduction21631.input reduction21631.output := by lin_cert using reduction21631.terms
theorem substitutionProof21631 : IsMapEvaluation generatorImages reduction21631.relations [0,0,292,324] reduction21631.output := by lin_cert using reduction21631.terms
def image21632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21632 : InImage map_20_255 image21632 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21632 : Bundle := named_bundle% "RealMapCertificates/relations/basis21632.json"
theorem reductionProof21632 : EqualModuloRelations reduction21632.relations reduction21632.input reduction21632.output := by lin_cert using reduction21632.terms
theorem substitutionProof21632 : IsMapEvaluation generatorImages reduction21632.relations [0,0,0,2431] reduction21632.output := by lin_cert using reduction21632.terms
def image21633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21633 : InImage map_20_255 image21633 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21633 : Bundle := named_bundle% "RealMapCertificates/relations/basis21633.json"
theorem reductionProof21633 : EqualModuloRelations reduction21633.relations reduction21633.input reduction21633.output := by lin_cert using reduction21633.terms
theorem substitutionProof21633 : IsMapEvaluation generatorImages reduction21633.relations [0,0,0,2430] reduction21633.output := by lin_cert using reduction21633.terms
def map_20_256 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image21888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21888 : InImage map_20_256 image21888 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction21888 : Bundle := named_bundle% "RealMapCertificates/relations/basis21888.json"
theorem reductionProof21888 : EqualModuloRelations reduction21888.relations reduction21888.input reduction21888.output := by lin_cert using reduction21888.terms
theorem substitutionProof21888 : IsMapEvaluation generatorImages reduction21888.relations [2607] reduction21888.output := by lin_cert using reduction21888.terms
def image21889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21889 : InImage map_20_256 image21889 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction21889 : Bundle := named_bundle% "RealMapCertificates/relations/basis21889.json"
theorem reductionProof21889 : EqualModuloRelations reduction21889.relations reduction21889.input reduction21889.output := by lin_cert using reduction21889.terms
theorem substitutionProof21889 : IsMapEvaluation generatorImages reduction21889.relations [2606] reduction21889.output := by lin_cert using reduction21889.terms
def image21890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21890 : InImage map_20_256 image21890 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction21890 : Bundle := named_bundle% "RealMapCertificates/relations/basis21890.json"
theorem reductionProof21890 : EqualModuloRelations reduction21890.relations reduction21890.input reduction21890.output := by lin_cert using reduction21890.terms
theorem substitutionProof21890 : IsMapEvaluation generatorImages reduction21890.relations [2605] reduction21890.output := by lin_cert using reduction21890.terms
def image21891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21891 : InImage map_20_256 image21891 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction21891 : Bundle := named_bundle% "RealMapCertificates/relations/basis21891.json"
theorem reductionProof21891 : EqualModuloRelations reduction21891.relations reduction21891.input reduction21891.output := by lin_cert using reduction21891.terms
theorem substitutionProof21891 : IsMapEvaluation generatorImages reduction21891.relations [67,1057] reduction21891.output := by lin_cert using reduction21891.terms
def image21892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21892 : InImage map_20_256 image21892 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction21892 : Bundle := named_bundle% "RealMapCertificates/relations/basis21892.json"
theorem reductionProof21892 : EqualModuloRelations reduction21892.relations reduction21892.input reduction21892.output := by lin_cert using reduction21892.terms
theorem substitutionProof21892 : IsMapEvaluation generatorImages reduction21892.relations [2,2428] reduction21892.output := by lin_cert using reduction21892.terms
def image21893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21893 : InImage map_20_256 image21893 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction21893 : Bundle := named_bundle% "RealMapCertificates/relations/basis21893.json"
theorem reductionProof21893 : EqualModuloRelations reduction21893.relations reduction21893.input reduction21893.output := by lin_cert using reduction21893.terms
theorem substitutionProof21893 : IsMapEvaluation generatorImages reduction21893.relations [1,2516] reduction21893.output := by lin_cert using reduction21893.terms
def image21894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21894 : InImage map_20_256 image21894 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction21894 : Bundle := named_bundle% "RealMapCertificates/relations/basis21894.json"
theorem reductionProof21894 : EqualModuloRelations reduction21894.relations reduction21894.input reduction21894.output := by lin_cert using reduction21894.terms
theorem substitutionProof21894 : IsMapEvaluation generatorImages reduction21894.relations [1,7,1948] reduction21894.output := by lin_cert using reduction21894.terms
def image21895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21895 : InImage map_20_256 image21895 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction21895 : Bundle := named_bundle% "RealMapCertificates/relations/basis21895.json"
theorem reductionProof21895 : EqualModuloRelations reduction21895.relations reduction21895.input reduction21895.output := by lin_cert using reduction21895.terms
theorem substitutionProof21895 : IsMapEvaluation generatorImages reduction21895.relations [1,1,2429] reduction21895.output := by lin_cert using reduction21895.terms
def image21896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21896 : InImage map_20_256 image21896 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction21896 : Bundle := named_bundle% "RealMapCertificates/relations/basis21896.json"
theorem reductionProof21896 : EqualModuloRelations reduction21896.relations reduction21896.input reduction21896.output := by lin_cert using reduction21896.terms
theorem substitutionProof21896 : IsMapEvaluation generatorImages reduction21896.relations [0,2564] reduction21896.output := by lin_cert using reduction21896.terms
def image21897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21897 : InImage map_20_256 image21897 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction21897 : Bundle := named_bundle% "RealMapCertificates/relations/basis21897.json"
theorem reductionProof21897 : EqualModuloRelations reduction21897.relations reduction21897.input reduction21897.output := by lin_cert using reduction21897.terms
theorem substitutionProof21897 : IsMapEvaluation generatorImages reduction21897.relations [0,2563] reduction21897.output := by lin_cert using reduction21897.terms
def image21898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21898 : InImage map_20_256 image21898 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction21898 : Bundle := named_bundle% "RealMapCertificates/relations/basis21898.json"
theorem reductionProof21898 : EqualModuloRelations reduction21898.relations reduction21898.input reduction21898.output := by lin_cert using reduction21898.terms
theorem substitutionProof21898 : IsMapEvaluation generatorImages reduction21898.relations [0,0,0,2475] reduction21898.output := by lin_cert using reduction21898.terms
def image21899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21899 : InImage map_20_256 image21899 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction21899 : Bundle := named_bundle% "RealMapCertificates/relations/basis21899.json"
theorem reductionProof21899 : EqualModuloRelations reduction21899.relations reduction21899.input reduction21899.output := by lin_cert using reduction21899.terms
theorem substitutionProof21899 : IsMapEvaluation generatorImages reduction21899.relations [0,0,0,2474] reduction21899.output := by lin_cert using reduction21899.terms
def image21900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21900 : InImage map_20_256 image21900 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction21900 : Bundle := named_bundle% "RealMapCertificates/relations/basis21900.json"
theorem reductionProof21900 : EqualModuloRelations reduction21900.relations reduction21900.input reduction21900.output := by lin_cert using reduction21900.terms
theorem substitutionProof21900 : IsMapEvaluation generatorImages reduction21900.relations [0,0,0,0,2432] reduction21900.output := by lin_cert using reduction21900.terms
def map_20_257 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image22234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22234 : InImage map_20_257 image22234 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction22234 : Bundle := named_bundle% "RealMapCertificates/relations/basis22234.json"
theorem reductionProof22234 : EqualModuloRelations reduction22234.relations reduction22234.input reduction22234.output := by lin_cert using reduction22234.terms
theorem substitutionProof22234 : IsMapEvaluation generatorImages reduction22234.relations [2649] reduction22234.output := by lin_cert using reduction22234.terms
def image22235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22235 : InImage map_20_257 image22235 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction22235 : Bundle := named_bundle% "RealMapCertificates/relations/basis22235.json"
theorem reductionProof22235 : EqualModuloRelations reduction22235.relations reduction22235.input reduction22235.output := by lin_cert using reduction22235.terms
theorem substitutionProof22235 : IsMapEvaluation generatorImages reduction22235.relations [2648] reduction22235.output := by lin_cert using reduction22235.terms
def image22236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22236 : InImage map_20_257 image22236 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction22236 : Bundle := named_bundle% "RealMapCertificates/relations/basis22236.json"
theorem reductionProof22236 : EqualModuloRelations reduction22236.relations reduction22236.input reduction22236.output := by lin_cert using reduction22236.terms
theorem substitutionProof22236 : IsMapEvaluation generatorImages reduction22236.relations [2647] reduction22236.output := by lin_cert using reduction22236.terms
def image22237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22237 : InImage map_20_257 image22237 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction22237 : Bundle := named_bundle% "RealMapCertificates/relations/basis22237.json"
theorem reductionProof22237 : EqualModuloRelations reduction22237.relations reduction22237.input reduction22237.output := by lin_cert using reduction22237.terms
theorem substitutionProof22237 : IsMapEvaluation generatorImages reduction22237.relations [324,327] reduction22237.output := by lin_cert using reduction22237.terms
def image22238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22238 : InImage map_20_257 image22238 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction22238 : Bundle := named_bundle% "RealMapCertificates/relations/basis22238.json"
theorem reductionProof22238 : EqualModuloRelations reduction22238.relations reduction22238.input reduction22238.output := by lin_cert using reduction22238.terms
theorem substitutionProof22238 : IsMapEvaluation generatorImages reduction22238.relations [8,1978] reduction22238.output := by lin_cert using reduction22238.terms
def image22239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22239 : InImage map_20_257 image22239 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction22239 : Bundle := named_bundle% "RealMapCertificates/relations/basis22239.json"
theorem reductionProof22239 : EqualModuloRelations reduction22239.relations reduction22239.input reduction22239.output := by lin_cert using reduction22239.terms
theorem substitutionProof22239 : IsMapEvaluation generatorImages reduction22239.relations [0,2608] reduction22239.output := by lin_cert using reduction22239.terms
def image22240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22240 : InImage map_20_257 image22240 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction22240 : Bundle := named_bundle% "RealMapCertificates/relations/basis22240.json"
theorem reductionProof22240 : EqualModuloRelations reduction22240.relations reduction22240.input reduction22240.output := by lin_cert using reduction22240.terms
theorem substitutionProof22240 : IsMapEvaluation generatorImages reduction22240.relations [0,316,324] reduction22240.output := by lin_cert using reduction22240.terms
def image22241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22241 : InImage map_20_257 image22241 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction22241 : Bundle := named_bundle% "RealMapCertificates/relations/basis22241.json"
theorem reductionProof22241 : EqualModuloRelations reduction22241.relations reduction22241.input reduction22241.output := by lin_cert using reduction22241.terms
theorem substitutionProof22241 : IsMapEvaluation generatorImages reduction22241.relations [0,68,1057] reduction22241.output := by lin_cert using reduction22241.terms
def image22242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22242 : InImage map_20_257 image22242 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction22242 : Bundle := named_bundle% "RealMapCertificates/relations/basis22242.json"
theorem reductionProof22242 : EqualModuloRelations reduction22242.relations reduction22242.input reduction22242.output := by lin_cert using reduction22242.terms
theorem substitutionProof22242 : IsMapEvaluation generatorImages reduction22242.relations [0,0,2566] reduction22242.output := by lin_cert using reduction22242.terms
def image22243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22243 : InImage map_20_257 image22243 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction22243 : Bundle := named_bundle% "RealMapCertificates/relations/basis22243.json"
theorem reductionProof22243 : EqualModuloRelations reduction22243.relations reduction22243.input reduction22243.output := by lin_cert using reduction22243.terms
theorem substitutionProof22243 : IsMapEvaluation generatorImages reduction22243.relations [0,0,2565] reduction22243.output := by lin_cert using reduction22243.terms
def image22244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22244 : InImage map_20_257 image22244 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction22244 : Bundle := named_bundle% "RealMapCertificates/relations/basis22244.json"
theorem reductionProof22244 : EqualModuloRelations reduction22244.relations reduction22244.input reduction22244.output := by lin_cert using reduction22244.terms
theorem substitutionProof22244 : IsMapEvaluation generatorImages reduction22244.relations [0,0,0,2522] reduction22244.output := by lin_cert using reduction22244.terms
def image22245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22245 : InImage map_20_257 image22245 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction22245 : Bundle := named_bundle% "RealMapCertificates/relations/basis22245.json"
theorem reductionProof22245 : EqualModuloRelations reduction22245.relations reduction22245.input reduction22245.output := by lin_cert using reduction22245.terms
theorem substitutionProof22245 : IsMapEvaluation generatorImages reduction22245.relations [0,0,0,0,2478] reduction22245.output := by lin_cert using reduction22245.terms
def image22246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22246 : InImage map_20_257 image22246 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction22246 : Bundle := named_bundle% "RealMapCertificates/relations/basis22246.json"
theorem reductionProof22246 : EqualModuloRelations reduction22246.relations reduction22246.input reduction22246.output := by lin_cert using reduction22246.terms
theorem substitutionProof22246 : IsMapEvaluation generatorImages reduction22246.relations [0,0,0,0,0,2433] reduction22246.output := by lin_cert using reduction22246.terms
def map_20_258 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22594 : InImage map_20_258 image22594 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22594 : Bundle := named_bundle% "RealMapCertificates/relations/basis22594.json"
theorem reductionProof22594 : EqualModuloRelations reduction22594.relations reduction22594.input reduction22594.output := by lin_cert using reduction22594.terms
theorem substitutionProof22594 : IsMapEvaluation generatorImages reduction22594.relations [2692] reduction22594.output := by lin_cert using reduction22594.terms
def image22595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22595 : InImage map_20_258 image22595 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22595 : Bundle := named_bundle% "RealMapCertificates/relations/basis22595.json"
theorem reductionProof22595 : EqualModuloRelations reduction22595.relations reduction22595.input reduction22595.output := by lin_cert using reduction22595.terms
theorem substitutionProof22595 : IsMapEvaluation generatorImages reduction22595.relations [67,1091] reduction22595.output := by lin_cert using reduction22595.terms
def image22596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22596 : InImage map_20_258 image22596 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22596 : Bundle := named_bundle% "RealMapCertificates/relations/basis22596.json"
theorem reductionProof22596 : EqualModuloRelations reduction22596.relations reduction22596.input reduction22596.output := by lin_cert using reduction22596.terms
theorem substitutionProof22596 : IsMapEvaluation generatorImages reduction22596.relations [1,7,2012] reduction22596.output := by lin_cert using reduction22596.terms
def image22597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22597 : InImage map_20_258 image22597 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22597 : Bundle := named_bundle% "RealMapCertificates/relations/basis22597.json"
theorem reductionProof22597 : EqualModuloRelations reduction22597.relations reduction22597.input reduction22597.output := by lin_cert using reduction22597.terms
theorem substitutionProof22597 : IsMapEvaluation generatorImages reduction22597.relations [0,2653] reduction22597.output := by lin_cert using reduction22597.terms
def image22598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22598 : InImage map_20_258 image22598 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22598 : Bundle := named_bundle% "RealMapCertificates/relations/basis22598.json"
theorem reductionProof22598 : EqualModuloRelations reduction22598.relations reduction22598.input reduction22598.output := by lin_cert using reduction22598.terms
theorem substitutionProof22598 : IsMapEvaluation generatorImages reduction22598.relations [0,2650] reduction22598.output := by lin_cert using reduction22598.terms
def image22599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22599 : InImage map_20_258 image22599 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22599 : Bundle := named_bundle% "RealMapCertificates/relations/basis22599.json"
theorem reductionProof22599 : EqualModuloRelations reduction22599.relations reduction22599.input reduction22599.output := by lin_cert using reduction22599.terms
theorem substitutionProof22599 : IsMapEvaluation generatorImages reduction22599.relations [0,0,2612] reduction22599.output := by lin_cert using reduction22599.terms
def image22600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22600 : InImage map_20_258 image22600 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22600 : Bundle := named_bundle% "RealMapCertificates/relations/basis22600.json"
theorem reductionProof22600 : EqualModuloRelations reduction22600.relations reduction22600.input reduction22600.output := by lin_cert using reduction22600.terms
theorem substitutionProof22600 : IsMapEvaluation generatorImages reduction22600.relations [0,0,2611] reduction22600.output := by lin_cert using reduction22600.terms
def image22601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22601 : InImage map_20_258 image22601 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22601 : Bundle := named_bundle% "RealMapCertificates/relations/basis22601.json"
theorem reductionProof22601 : EqualModuloRelations reduction22601.relations reduction22601.input reduction22601.output := by lin_cert using reduction22601.terms
theorem substitutionProof22601 : IsMapEvaluation generatorImages reduction22601.relations [0,0,2,2430] reduction22601.output := by lin_cert using reduction22601.terms
def image22602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22602 : InImage map_20_258 image22602 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22602 : Bundle := named_bundle% "RealMapCertificates/relations/basis22602.json"
theorem reductionProof22602 : EqualModuloRelations reduction22602.relations reduction22602.input reduction22602.output := by lin_cert using reduction22602.terms
theorem substitutionProof22602 : IsMapEvaluation generatorImages reduction22602.relations [0,0,0,0,0,2480] reduction22602.output := by lin_cert using reduction22602.terms
def map_20_259 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22904 : InImage map_20_259 image22904 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22904 : Bundle := named_bundle% "RealMapCertificates/relations/basis22904.json"
theorem reductionProof22904 : EqualModuloRelations reduction22904.relations reduction22904.input reduction22904.output := by lin_cert using reduction22904.terms
theorem substitutionProof22904 : IsMapEvaluation generatorImages reduction22904.relations [2764] reduction22904.output := by lin_cert using reduction22904.terms
def image22905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22905 : InImage map_20_259 image22905 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22905 : Bundle := named_bundle% "RealMapCertificates/relations/basis22905.json"
theorem reductionProof22905 : EqualModuloRelations reduction22905.relations reduction22905.input reduction22905.output := by lin_cert using reduction22905.terms
theorem substitutionProof22905 : IsMapEvaluation generatorImages reduction22905.relations [74,1055] reduction22905.output := by lin_cert using reduction22905.terms
def image22906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22906 : InImage map_20_259 image22906 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22906 : Bundle := named_bundle% "RealMapCertificates/relations/basis22906.json"
theorem reductionProof22906 : EqualModuloRelations reduction22906.relations reduction22906.input reduction22906.output := by lin_cert using reduction22906.terms
theorem substitutionProof22906 : IsMapEvaluation generatorImages reduction22906.relations [9,1952] reduction22906.output := by lin_cert using reduction22906.terms
def image22907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22907 : InImage map_20_259 image22907 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22907 : Bundle := named_bundle% "RealMapCertificates/relations/basis22907.json"
theorem reductionProof22907 : EqualModuloRelations reduction22907.relations reduction22907.input reduction22907.output := by lin_cert using reduction22907.terms
theorem substitutionProof22907 : IsMapEvaluation generatorImages reduction22907.relations [7,2110] reduction22907.output := by lin_cert using reduction22907.terms
def image22908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22908 : InImage map_20_259 image22908 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22908 : Bundle := named_bundle% "RealMapCertificates/relations/basis22908.json"
theorem reductionProof22908 : EqualModuloRelations reduction22908.relations reduction22908.input reduction22908.output := by lin_cert using reduction22908.terms
theorem substitutionProof22908 : IsMapEvaluation generatorImages reduction22908.relations [2,2564] reduction22908.output := by lin_cert using reduction22908.terms
def image22909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22909 : InImage map_20_259 image22909 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22909 : Bundle := named_bundle% "RealMapCertificates/relations/basis22909.json"
theorem reductionProof22909 : EqualModuloRelations reduction22909.relations reduction22909.input reduction22909.output := by lin_cert using reduction22909.terms
theorem substitutionProof22909 : IsMapEvaluation generatorImages reduction22909.relations [1,2651] reduction22909.output := by lin_cert using reduction22909.terms
def image22910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22910 : InImage map_20_259 image22910 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22910 : Bundle := named_bundle% "RealMapCertificates/relations/basis22910.json"
theorem reductionProof22910 : EqualModuloRelations reduction22910.relations reduction22910.input reduction22910.output := by lin_cert using reduction22910.terms
theorem substitutionProof22910 : IsMapEvaluation generatorImages reduction22910.relations [1,2650] reduction22910.output := by lin_cert using reduction22910.terms
def image22911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22911 : InImage map_20_259 image22911 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22911 : Bundle := named_bundle% "RealMapCertificates/relations/basis22911.json"
theorem reductionProof22911 : EqualModuloRelations reduction22911.relations reduction22911.input reduction22911.output := by lin_cert using reduction22911.terms
theorem substitutionProof22911 : IsMapEvaluation generatorImages reduction22911.relations [0,2693] reduction22911.output := by lin_cert using reduction22911.terms
def image22912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22912 : InImage map_20_259 image22912 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22912 : Bundle := named_bundle% "RealMapCertificates/relations/basis22912.json"
theorem reductionProof22912 : EqualModuloRelations reduction22912.relations reduction22912.input reduction22912.output := by lin_cert using reduction22912.terms
theorem substitutionProof22912 : IsMapEvaluation generatorImages reduction22912.relations [0,0,2655] reduction22912.output := by lin_cert using reduction22912.terms
def map_20_260 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image23281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23281 : InImage map_20_260 image23281 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction23281 : Bundle := named_bundle% "RealMapCertificates/relations/basis23281.json"
theorem reductionProof23281 : EqualModuloRelations reduction23281.relations reduction23281.input reduction23281.output := by lin_cert using reduction23281.terms
theorem substitutionProof23281 : IsMapEvaluation generatorImages reduction23281.relations [2826] reduction23281.output := by lin_cert using reduction23281.terms
def image23282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23282 : InImage map_20_260 image23282 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction23282 : Bundle := named_bundle% "RealMapCertificates/relations/basis23282.json"
theorem reductionProof23282 : EqualModuloRelations reduction23282.relations reduction23282.input reduction23282.output := by lin_cert using reduction23282.terms
theorem substitutionProof23282 : IsMapEvaluation generatorImages reduction23282.relations [2825] reduction23282.output := by lin_cert using reduction23282.terms
def image23283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23283 : InImage map_20_260 image23283 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction23283 : Bundle := named_bundle% "RealMapCertificates/relations/basis23283.json"
theorem reductionProof23283 : EqualModuloRelations reduction23283.relations reduction23283.input reduction23283.output := by lin_cert using reduction23283.terms
theorem substitutionProof23283 : IsMapEvaluation generatorImages reduction23283.relations [2824] reduction23283.output := by lin_cert using reduction23283.terms
def image23284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23284 : InImage map_20_260 image23284 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction23284 : Bundle := named_bundle% "RealMapCertificates/relations/basis23284.json"
theorem reductionProof23284 : EqualModuloRelations reduction23284.relations reduction23284.input reduction23284.output := by lin_cert using reduction23284.terms
theorem substitutionProof23284 : IsMapEvaluation generatorImages reduction23284.relations [333,351] reduction23284.output := by lin_cert using reduction23284.terms
def image23285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23285 : InImage map_20_260 image23285 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction23285 : Bundle := named_bundle% "RealMapCertificates/relations/basis23285.json"
theorem reductionProof23285 : EqualModuloRelations reduction23285.relations reduction23285.input reduction23285.output := by lin_cert using reduction23285.terms
theorem substitutionProof23285 : IsMapEvaluation generatorImages reduction23285.relations [92,988] reduction23285.output := by lin_cert using reduction23285.terms
def image23286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23286 : InImage map_20_260 image23286 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction23286 : Bundle := named_bundle% "RealMapCertificates/relations/basis23286.json"
theorem reductionProof23286 : EqualModuloRelations reduction23286.relations reduction23286.input reduction23286.output := by lin_cert using reduction23286.terms
theorem substitutionProof23286 : IsMapEvaluation generatorImages reduction23286.relations [9,1978] reduction23286.output := by lin_cert using reduction23286.terms
def image23287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23287 : InImage map_20_260 image23287 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction23287 : Bundle := named_bundle% "RealMapCertificates/relations/basis23287.json"
theorem reductionProof23287 : EqualModuloRelations reduction23287.relations reduction23287.input reduction23287.output := by lin_cert using reduction23287.terms
theorem substitutionProof23287 : IsMapEvaluation generatorImages reduction23287.relations [3,2428] reduction23287.output := by lin_cert using reduction23287.terms
def image23288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23288 : InImage map_20_260 image23288 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction23288 : Bundle := named_bundle% "RealMapCertificates/relations/basis23288.json"
theorem reductionProof23288 : EqualModuloRelations reduction23288.relations reduction23288.input reduction23288.output := by lin_cert using reduction23288.terms
theorem substitutionProof23288 : IsMapEvaluation generatorImages reduction23288.relations [2,2,2429] reduction23288.output := by lin_cert using reduction23288.terms
def image23289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23289 : InImage map_20_260 image23289 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction23289 : Bundle := named_bundle% "RealMapCertificates/relations/basis23289.json"
theorem reductionProof23289 : EqualModuloRelations reduction23289.relations reduction23289.input reduction23289.output := by lin_cert using reduction23289.terms
theorem substitutionProof23289 : IsMapEvaluation generatorImages reduction23289.relations [0,2767] reduction23289.output := by lin_cert using reduction23289.terms
def image23290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23290 : InImage map_20_260 image23290 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction23290 : Bundle := named_bundle% "RealMapCertificates/relations/basis23290.json"
theorem reductionProof23290 : EqualModuloRelations reduction23290.relations reduction23290.input reduction23290.output := by lin_cert using reduction23290.terms
theorem substitutionProof23290 : IsMapEvaluation generatorImages reduction23290.relations [0,324,347] reduction23290.output := by lin_cert using reduction23290.terms
def image23291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23291 : InImage map_20_260 image23291 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction23291 : Bundle := named_bundle% "RealMapCertificates/relations/basis23291.json"
theorem reductionProof23291 : EqualModuloRelations reduction23291.relations reduction23291.input reduction23291.output := by lin_cert using reduction23291.terms
theorem substitutionProof23291 : IsMapEvaluation generatorImages reduction23291.relations [0,324,346] reduction23291.output := by lin_cert using reduction23291.terms
def image23292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23292 : InImage map_20_260 image23292 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction23292 : Bundle := named_bundle% "RealMapCertificates/relations/basis23292.json"
theorem reductionProof23292 : EqualModuloRelations reduction23292.relations reduction23292.input reduction23292.output := by lin_cert using reduction23292.terms
theorem substitutionProof23292 : IsMapEvaluation generatorImages reduction23292.relations [0,0,2695] reduction23292.output := by lin_cert using reduction23292.terms
def image23293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23293 : InImage map_20_260 image23293 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction23293 : Bundle := named_bundle% "RealMapCertificates/relations/basis23293.json"
theorem reductionProof23293 : EqualModuloRelations reduction23293.relations reduction23293.input reduction23293.output := by lin_cert using reduction23293.terms
theorem substitutionProof23293 : IsMapEvaluation generatorImages reduction23293.relations [0,0,333,333] reduction23293.output := by lin_cert using reduction23293.terms
def map_20_261 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image23719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23719 : InImage map_20_261 image23719 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction23719 : Bundle := named_bundle% "RealMapCertificates/relations/basis23719.json"
theorem reductionProof23719 : EqualModuloRelations reduction23719.relations reduction23719.input reduction23719.output := by lin_cert using reduction23719.terms
theorem substitutionProof23719 : IsMapEvaluation generatorImages reduction23719.relations [2884] reduction23719.output := by lin_cert using reduction23719.terms
def image23720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23720 : InImage map_20_261 image23720 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction23720 : Bundle := named_bundle% "RealMapCertificates/relations/basis23720.json"
theorem reductionProof23720 : EqualModuloRelations reduction23720.relations reduction23720.input reduction23720.output := by lin_cert using reduction23720.terms
theorem substitutionProof23720 : IsMapEvaluation generatorImages reduction23720.relations [2883] reduction23720.output := by lin_cert using reduction23720.terms
def image23721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23721 : InImage map_20_261 image23721 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction23721 : Bundle := named_bundle% "RealMapCertificates/relations/basis23721.json"
theorem reductionProof23721 : EqualModuloRelations reduction23721.relations reduction23721.input reduction23721.output := by lin_cert using reduction23721.terms
theorem substitutionProof23721 : IsMapEvaluation generatorImages reduction23721.relations [2882] reduction23721.output := by lin_cert using reduction23721.terms
def image23722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23722 : InImage map_20_261 image23722 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction23722 : Bundle := named_bundle% "RealMapCertificates/relations/basis23722.json"
theorem reductionProof23722 : EqualModuloRelations reduction23722.relations reduction23722.input reduction23722.output := by lin_cert using reduction23722.terms
theorem substitutionProof23722 : IsMapEvaluation generatorImages reduction23722.relations [2,2650] reduction23722.output := by lin_cert using reduction23722.terms
def image23723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23723 : InImage map_20_261 image23723 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction23723 : Bundle := named_bundle% "RealMapCertificates/relations/basis23723.json"
theorem reductionProof23723 : EqualModuloRelations reduction23723.relations reduction23723.input reduction23723.output := by lin_cert using reduction23723.terms
theorem substitutionProof23723 : IsMapEvaluation generatorImages reduction23723.relations [1,324,347] reduction23723.output := by lin_cert using reduction23723.terms
def image23724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23724 : InImage map_20_261 image23724 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction23724 : Bundle := named_bundle% "RealMapCertificates/relations/basis23724.json"
theorem reductionProof23724 : EqualModuloRelations reduction23724.relations reduction23724.input reduction23724.output := by lin_cert using reduction23724.terms
theorem substitutionProof23724 : IsMapEvaluation generatorImages reduction23724.relations [0,2831] reduction23724.output := by lin_cert using reduction23724.terms
def image23725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23725 : InImage map_20_261 image23725 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction23725 : Bundle := named_bundle% "RealMapCertificates/relations/basis23725.json"
theorem reductionProof23725 : EqualModuloRelations reduction23725.relations reduction23725.input reduction23725.output := by lin_cert using reduction23725.terms
theorem substitutionProof23725 : IsMapEvaluation generatorImages reduction23725.relations [0,2829] reduction23725.output := by lin_cert using reduction23725.terms
def image23726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23726 : InImage map_20_261 image23726 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction23726 : Bundle := named_bundle% "RealMapCertificates/relations/basis23726.json"
theorem reductionProof23726 : EqualModuloRelations reduction23726.relations reduction23726.input reduction23726.output := by lin_cert using reduction23726.terms
theorem substitutionProof23726 : IsMapEvaluation generatorImages reduction23726.relations [0,2827] reduction23726.output := by lin_cert using reduction23726.terms
def image23727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23727 : InImage map_20_261 image23727 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction23727 : Bundle := named_bundle% "RealMapCertificates/relations/basis23727.json"
theorem reductionProof23727 : EqualModuloRelations reduction23727.relations reduction23727.input reduction23727.output := by lin_cert using reduction23727.terms
theorem substitutionProof23727 : IsMapEvaluation generatorImages reduction23727.relations [0,3,2429] reduction23727.output := by lin_cert using reduction23727.terms
def image23728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23728 : InImage map_20_261 image23728 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction23728 : Bundle := named_bundle% "RealMapCertificates/relations/basis23728.json"
theorem reductionProof23728 : EqualModuloRelations reduction23728.relations reduction23728.input reduction23728.output := by lin_cert using reduction23728.terms
theorem substitutionProof23728 : IsMapEvaluation generatorImages reduction23728.relations [0,0,2771] reduction23728.output := by lin_cert using reduction23728.terms
def image23729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23729 : InImage map_20_261 image23729 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction23729 : Bundle := named_bundle% "RealMapCertificates/relations/basis23729.json"
theorem reductionProof23729 : EqualModuloRelations reduction23729.relations reduction23729.input reduction23729.output := by lin_cert using reduction23729.terms
theorem substitutionProof23729 : IsMapEvaluation generatorImages reduction23729.relations [0,0,2770] reduction23729.output := by lin_cert using reduction23729.terms
def image23730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23730 : InImage map_20_261 image23730 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction23730 : Bundle := named_bundle% "RealMapCertificates/relations/basis23730.json"
theorem reductionProof23730 : EqualModuloRelations reduction23730.relations reduction23730.input reduction23730.output := by lin_cert using reduction23730.terms
theorem substitutionProof23730 : IsMapEvaluation generatorImages reduction23730.relations [0,0,2768] reduction23730.output := by lin_cert using reduction23730.terms
def image23731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23731 : InImage map_20_261 image23731 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction23731 : Bundle := named_bundle% "RealMapCertificates/relations/basis23731.json"
theorem reductionProof23731 : EqualModuloRelations reduction23731.relations reduction23731.input reduction23731.output := by lin_cert using reduction23731.terms
theorem substitutionProof23731 : IsMapEvaluation generatorImages reduction23731.relations [0,0,0,2696] reduction23731.output := by lin_cert using reduction23731.terms
def map_21_21 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image54 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation54 : InImage map_21_21 image54 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction54 : Bundle := named_bundle% "RealMapCertificates/relations/basis54.json"
theorem reductionProof54 : EqualModuloRelations reduction54.relations reduction54.input reduction54.output := by lin_cert using reduction54.terms
theorem substitutionProof54 : IsMapEvaluation generatorImages reduction54.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction54.output := by lin_cert using reduction54.terms
def map_21_62 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image367 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation367 : InImage map_21_62 image367 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction367 : Bundle := named_bundle% "RealMapCertificates/relations/basis367.json"
theorem reductionProof367 : EqualModuloRelations reduction367.relations reduction367.input reduction367.output := by lin_cert using reduction367.terms
theorem substitutionProof367 : IsMapEvaluation generatorImages reduction367.relations [62] reduction367.output := by lin_cert using reduction367.terms
def map_21_64 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image389 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation389 : InImage map_21_64 image389 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction389 : Bundle := named_bundle% "RealMapCertificates/relations/basis389.json"
theorem reductionProof389 : EqualModuloRelations reduction389.relations reduction389.input reduction389.output := by lin_cert using reduction389.terms
theorem substitutionProof389 : IsMapEvaluation generatorImages reduction389.relations [65] reduction389.output := by lin_cert using reduction389.terms
def map_21_67 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image440 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation440 : InImage map_21_67 image440 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction440 : Bundle := named_bundle% "RealMapCertificates/relations/basis440.json"
theorem reductionProof440 : EqualModuloRelations reduction440.relations reduction440.input reduction440.output := by lin_cert using reduction440.terms
theorem substitutionProof440 : IsMapEvaluation generatorImages reduction440.relations [0,71] reduction440.output := by lin_cert using reduction440.terms
def map_21_68 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image458 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation458 : InImage map_21_68 image458 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction458 : Bundle := named_bundle% "RealMapCertificates/relations/basis458.json"
theorem reductionProof458 : EqualModuloRelations reduction458.relations reduction458.input reduction458.output := by lin_cert using reduction458.terms
theorem substitutionProof458 : IsMapEvaluation generatorImages reduction458.relations [1,71] reduction458.output := by lin_cert using reduction458.terms
def image459 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation459 : InImage map_21_68 image459 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction459 : Bundle := named_bundle% "RealMapCertificates/relations/basis459.json"
theorem reductionProof459 : EqualModuloRelations reduction459.relations reduction459.input reduction459.output := by lin_cert using reduction459.terms
theorem substitutionProof459 : IsMapEvaluation generatorImages reduction459.relations [0,0,0,0,0,0,0,0,59] reduction459.output := by lin_cert using reduction459.terms
def map_21_70 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image501 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation501 : InImage map_21_70 image501 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction501 : Bundle := named_bundle% "RealMapCertificates/relations/basis501.json"
theorem reductionProof501 : EqualModuloRelations reduction501.relations reduction501.input reduction501.output := by lin_cert using reduction501.terms
theorem substitutionProof501 : IsMapEvaluation generatorImages reduction501.relations [0,77] reduction501.output := by lin_cert using reduction501.terms
def map_21_71 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image521 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation521 : InImage map_21_71 image521 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction521 : Bundle := named_bundle% "RealMapCertificates/relations/basis521.json"
theorem reductionProof521 : EqualModuloRelations reduction521.relations reduction521.input reduction521.output := by lin_cert using reduction521.terms
theorem substitutionProof521 : IsMapEvaluation generatorImages reduction521.relations [0,0,78] reduction521.output := by lin_cert using reduction521.terms
def map_21_73 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image566 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation566 : InImage map_21_73 image566 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction566 : Bundle := named_bundle% "RealMapCertificates/relations/basis566.json"
theorem reductionProof566 : EqualModuloRelations reduction566.relations reduction566.input reduction566.output := by lin_cert using reduction566.terms
theorem substitutionProof566 : IsMapEvaluation generatorImages reduction566.relations [0,8,49] reduction566.output := by lin_cert using reduction566.terms
def map_21_74 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image586 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation586 : InImage map_21_74 image586 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction586 : Bundle := named_bundle% "RealMapCertificates/relations/basis586.json"
theorem reductionProof586 : EqualModuloRelations reduction586.relations reduction586.input reduction586.output := by lin_cert using reduction586.terms
theorem substitutionProof586 : IsMapEvaluation generatorImages reduction586.relations [0,0,8,50] reduction586.output := by lin_cert using reduction586.terms
def map_21_76 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation629 : InImage map_21_76 image629 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction629 : Bundle := named_bundle% "RealMapCertificates/relations/basis629.json"
theorem reductionProof629 : EqualModuloRelations reduction629.relations reduction629.input reduction629.output := by lin_cert using reduction629.terms
theorem substitutionProof629 : IsMapEvaluation generatorImages reduction629.relations [0,8,55] reduction629.output := by lin_cert using reduction629.terms
def map_21_77 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image649 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation649 : InImage map_21_77 image649 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction649 : Bundle := named_bundle% "RealMapCertificates/relations/basis649.json"
theorem reductionProof649 : EqualModuloRelations reduction649.relations reduction649.input reduction649.output := by lin_cert using reduction649.terms
theorem substitutionProof649 : IsMapEvaluation generatorImages reduction649.relations [0,0,8,56] reduction649.output := by lin_cert using reduction649.terms
def map_21_79 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image696 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation696 : InImage map_21_79 image696 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction696 : Bundle := named_bundle% "RealMapCertificates/relations/basis696.json"
theorem reductionProof696 : EqualModuloRelations reduction696.relations reduction696.input reduction696.output := by lin_cert using reduction696.terms
theorem substitutionProof696 : IsMapEvaluation generatorImages reduction696.relations [0,8,8,31] reduction696.output := by lin_cert using reduction696.terms
def map_21_80 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation713 : InImage map_21_80 image713 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction713 : Bundle := named_bundle% "RealMapCertificates/relations/basis713.json"
theorem reductionProof713 : EqualModuloRelations reduction713.relations reduction713.input reduction713.output := by lin_cert using reduction713.terms
theorem substitutionProof713 : IsMapEvaluation generatorImages reduction713.relations [0,0,8,16,17] reduction713.output := by lin_cert using reduction713.terms
end RealMapCertificates
