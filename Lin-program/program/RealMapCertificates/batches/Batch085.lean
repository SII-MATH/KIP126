import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 24 => []
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 69 => []
  | 72 => []
  | 80 => []
  | 88 => [[4,4,5,5,7]]
  | 90 => []
  | 100 => [[4,4,5,7,7]]
  | 105 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 127 => []
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 162 => [[0,5,9,12]]
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 201 => []
  | 206 => [[4,6,8,12]]
  | 208 => [[5,7,7,12]]
  | 209 => []
  | 212 => []
  | 219 => [[7,7,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 255 => []
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 301 => []
  | 317 => []
  | 324 => []
  | 327 => []
  | 347 => []
  | 349 => []
  | 358 => []
  | 359 => []
  | 422 => []
  | 435 => [[1,9,12,12]]
  | 440 => []
  | 447 => []
  | 449 => []
  | 454 => []
  | 455 => []
  | 481 => []
  | 500 => []
  | 510 => []
  | 518 => []
  | 530 => []
  | 537 => []
  | 550 => []
  | 551 => []
  | _ => []
def map_21_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation785 : InImage map_21_83 image785 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction785 : Bundle := named_bundle% "RealMapCertificates/relations/basis785.json"
theorem reductionProof785 : EqualModuloRelations reduction785.relations reduction785.input reduction785.output := by lin_cert using reduction785.terms
theorem substitutionProof785 : IsMapEvaluation generatorImages reduction785.relations [0,0,0,0,0,0,0,0,0,0,0,90] reduction785.output := by lin_cert using reduction785.terms
def map_21_84 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image805 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation805 : InImage map_21_84 image805 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction805 : Bundle := named_bundle% "RealMapCertificates/relations/basis805.json"
theorem reductionProof805 : EqualModuloRelations reduction805.relations reduction805.input reduction805.output := by lin_cert using reduction805.terms
theorem substitutionProof805 : IsMapEvaluation generatorImages reduction805.relations [125] reduction805.output := by lin_cert using reduction805.terms
def image806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation806 : InImage map_21_84 image806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction806 : Bundle := named_bundle% "RealMapCertificates/relations/basis806.json"
theorem reductionProof806 : EqualModuloRelations reduction806.relations reduction806.input reduction806.output := by lin_cert using reduction806.terms
theorem substitutionProof806 : IsMapEvaluation generatorImages reduction806.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction806.output := by lin_cert using reduction806.terms
def map_21_87 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image890 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation890 : InImage map_21_87 image890 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction890 : Bundle := named_bundle% "RealMapCertificates/relations/basis890.json"
theorem reductionProof890 : EqualModuloRelations reduction890.relations reduction890.input reduction890.output := by lin_cert using reduction890.terms
theorem substitutionProof890 : IsMapEvaluation generatorImages reduction890.relations [136] reduction890.output := by lin_cert using reduction890.terms
def map_21_90 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image965 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation965 : InImage map_21_90 image965 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction965 : Bundle := named_bundle% "RealMapCertificates/relations/basis965.json"
theorem reductionProof965 : EqualModuloRelations reduction965.relations reduction965.input reduction965.output := by lin_cert using reduction965.terms
theorem substitutionProof965 : IsMapEvaluation generatorImages reduction965.relations [8,88] reduction965.output := by lin_cert using reduction965.terms
def image966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation966 : InImage map_21_90 image966 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction966 : Bundle := named_bundle% "RealMapCertificates/relations/basis966.json"
theorem reductionProof966 : EqualModuloRelations reduction966.relations reduction966.input reduction966.output := by lin_cert using reduction966.terms
theorem substitutionProof966 : IsMapEvaluation generatorImages reduction966.relations [0,0,0,137] reduction966.output := by lin_cert using reduction966.terms
def map_21_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1000 : InImage map_21_91 image1000 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1000 : Bundle := named_bundle% "RealMapCertificates/relations/basis1000.json"
theorem reductionProof1000 : EqualModuloRelations reduction1000.relations reduction1000.input reduction1000.output := by lin_cert using reduction1000.terms
theorem substitutionProof1000 : IsMapEvaluation generatorImages reduction1000.relations [0,0,0,0,138] reduction1000.output := by lin_cert using reduction1000.terms
def map_21_93 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image1047 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1047 : InImage map_21_93 image1047 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1047 : Bundle := named_bundle% "RealMapCertificates/relations/basis1047.json"
theorem reductionProof1047 : EqualModuloRelations reduction1047.relations reduction1047.input reduction1047.output := by lin_cert using reduction1047.terms
theorem substitutionProof1047 : IsMapEvaluation generatorImages reduction1047.relations [8,100] reduction1047.output := by lin_cert using reduction1047.terms
def image1048 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1048 : InImage map_21_93 image1048 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1048 : Bundle := named_bundle% "RealMapCertificates/relations/basis1048.json"
theorem reductionProof1048 : EqualModuloRelations reduction1048.relations reduction1048.input reduction1048.output := by lin_cert using reduction1048.terms
theorem substitutionProof1048 : IsMapEvaluation generatorImages reduction1048.relations [0,0,0,146] reduction1048.output := by lin_cert using reduction1048.terms
def map_21_96 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1114 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1114 : InImage map_21_96 image1114 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1114 : Bundle := named_bundle% "RealMapCertificates/relations/basis1114.json"
theorem reductionProof1114 : EqualModuloRelations reduction1114.relations reduction1114.input reduction1114.output := by lin_cert using reduction1114.terms
theorem substitutionProof1114 : IsMapEvaluation generatorImages reduction1114.relations [8,8,60] reduction1114.output := by lin_cert using reduction1114.terms
def map_21_97 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1146 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1146 : InImage map_21_97 image1146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1146 : Bundle := named_bundle% "RealMapCertificates/relations/basis1146.json"
theorem reductionProof1146 : EqualModuloRelations reduction1146.relations reduction1146.input reduction1146.output := by lin_cert using reduction1146.terms
theorem substitutionProof1146 : IsMapEvaluation generatorImages reduction1146.relations [0,0,0,0,0,149] reduction1146.output := by lin_cert using reduction1146.terms
def map_21_98 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1167 : InImage map_21_98 image1167 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1167 : Bundle := named_bundle% "RealMapCertificates/relations/basis1167.json"
theorem reductionProof1167 : EqualModuloRelations reduction1167.relations reduction1167.input reduction1167.output := by lin_cert using reduction1167.terms
theorem substitutionProof1167 : IsMapEvaluation generatorImages reduction1167.relations [0,0,0,0,0,154] reduction1167.output := by lin_cert using reduction1167.terms
def map_21_99 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1192 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1192 : InImage map_21_99 image1192 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1192 : Bundle := named_bundle% "RealMapCertificates/relations/basis1192.json"
theorem reductionProof1192 : EqualModuloRelations reduction1192.relations reduction1192.input reduction1192.output := by lin_cert using reduction1192.terms
theorem substitutionProof1192 : IsMapEvaluation generatorImages reduction1192.relations [8,8,63] reduction1192.output := by lin_cert using reduction1192.terms
def map_21_102 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1283 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1283 : InImage map_21_102 image1283 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1283 : Bundle := named_bundle% "RealMapCertificates/relations/basis1283.json"
theorem reductionProof1283 : EqualModuloRelations reduction1283.relations reduction1283.input reduction1283.output := by lin_cert using reduction1283.terms
theorem substitutionProof1283 : IsMapEvaluation generatorImages reduction1283.relations [185] reduction1283.output := by lin_cert using reduction1283.terms
def image1284 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1284 : InImage map_21_102 image1284 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1284 : Bundle := named_bundle% "RealMapCertificates/relations/basis1284.json"
theorem reductionProof1284 : EqualModuloRelations reduction1284.relations reduction1284.input reduction1284.output := by lin_cert using reduction1284.terms
theorem substitutionProof1284 : IsMapEvaluation generatorImages reduction1284.relations [8,8,8,42] reduction1284.output := by lin_cert using reduction1284.terms
def map_21_105 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image1386 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation1386 : InImage map_21_105 image1386 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1386 : Bundle := named_bundle% "RealMapCertificates/relations/basis1386.json"
theorem reductionProof1386 : EqualModuloRelations reduction1386.relations reduction1386.input reduction1386.output := by lin_cert using reduction1386.terms
theorem substitutionProof1386 : IsMapEvaluation generatorImages reduction1386.relations [8,138] reduction1386.output := by lin_cert using reduction1386.terms
def image1387 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1387 : InImage map_21_105 image1387 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1387 : Bundle := named_bundle% "RealMapCertificates/relations/basis1387.json"
theorem reductionProof1387 : EqualModuloRelations reduction1387.relations reduction1387.input reduction1387.output := by lin_cert using reduction1387.terms
theorem substitutionProof1387 : IsMapEvaluation generatorImages reduction1387.relations [8,8,8,46] reduction1387.output := by lin_cert using reduction1387.terms
def map_21_106 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1417 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1417 : InImage map_21_106 image1417 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1417 : Bundle := named_bundle% "RealMapCertificates/relations/basis1417.json"
theorem reductionProof1417 : EqualModuloRelations reduction1417.relations reduction1417.input reduction1417.output := by lin_cert using reduction1417.terms
theorem substitutionProof1417 : IsMapEvaluation generatorImages reduction1417.relations [5,149] reduction1417.output := by lin_cert using reduction1417.terms
def map_21_108 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image1484 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1484 : InImage map_21_108 image1484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1484 : Bundle := named_bundle% "RealMapCertificates/relations/basis1484.json"
theorem reductionProof1484 : EqualModuloRelations reduction1484.relations reduction1484.input reduction1484.output := by lin_cert using reduction1484.terms
theorem substitutionProof1484 : IsMapEvaluation generatorImages reduction1484.relations [8,147] reduction1484.output := by lin_cert using reduction1484.terms
def image1485 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1485 : InImage map_21_108 image1485 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1485 : Bundle := named_bundle% "RealMapCertificates/relations/basis1485.json"
theorem reductionProof1485 : EqualModuloRelations reduction1485.relations reduction1485.input reduction1485.output := by lin_cert using reduction1485.terms
theorem substitutionProof1485 : IsMapEvaluation generatorImages reduction1485.relations [8,8,8,51] reduction1485.output := by lin_cert using reduction1485.terms
def image1486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1486 : InImage map_21_108 image1486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1486 : Bundle := named_bundle% "RealMapCertificates/relations/basis1486.json"
theorem reductionProof1486 : EqualModuloRelations reduction1486.relations reduction1486.input reduction1486.output := by lin_cert using reduction1486.terms
theorem substitutionProof1486 : IsMapEvaluation generatorImages reduction1486.relations [0,206] reduction1486.output := by lin_cert using reduction1486.terms
def map_21_109 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1529 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1529 : InImage map_21_109 image1529 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1529 : Bundle := named_bundle% "RealMapCertificates/relations/basis1529.json"
theorem reductionProof1529 : EqualModuloRelations reduction1529.relations reduction1529.input reduction1529.output := by lin_cert using reduction1529.terms
theorem substitutionProof1529 : IsMapEvaluation generatorImages reduction1529.relations [0,17,113] reduction1529.output := by lin_cert using reduction1529.terms
def map_21_111 : Matrix 2 3 := fun i j => ([false,true,false,false,false,true] : List Bool)[i.val*3+j.val]!
def image1605 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1605 : InImage map_21_111 image1605 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1605 : Bundle := named_bundle% "RealMapCertificates/relations/basis1605.json"
theorem reductionProof1605 : EqualModuloRelations reduction1605.relations reduction1605.input reduction1605.output := by lin_cert using reduction1605.terms
theorem substitutionProof1605 : IsMapEvaluation generatorImages reduction1605.relations [8,17,64] reduction1605.output := by lin_cert using reduction1605.terms
def image1606 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1606 : InImage map_21_111 image1606 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1606 : Bundle := named_bundle% "RealMapCertificates/relations/basis1606.json"
theorem reductionProof1606 : EqualModuloRelations reduction1606.relations reduction1606.input reduction1606.output := by lin_cert using reduction1606.terms
theorem substitutionProof1606 : IsMapEvaluation generatorImages reduction1606.relations [8,8,9,51] reduction1606.output := by lin_cert using reduction1606.terms
def image1607 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1607 : InImage map_21_111 image1607 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1607 : Bundle := named_bundle% "RealMapCertificates/relations/basis1607.json"
theorem reductionProof1607 : EqualModuloRelations reduction1607.relations reduction1607.input reduction1607.output := by lin_cert using reduction1607.terms
theorem substitutionProof1607 : IsMapEvaluation generatorImages reduction1607.relations [0,8,149] reduction1607.output := by lin_cert using reduction1607.terms
def map_21_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1643 : InImage map_21_112 image1643 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1643 : Bundle := named_bundle% "RealMapCertificates/relations/basis1643.json"
theorem reductionProof1643 : EqualModuloRelations reduction1643.relations reduction1643.input reduction1643.output := by lin_cert using reduction1643.terms
theorem substitutionProof1643 : IsMapEvaluation generatorImages reduction1643.relations [0,8,154] reduction1643.output := by lin_cert using reduction1643.terms
def map_21_114 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1718 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1718 : InImage map_21_114 image1718 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1718 : Bundle := named_bundle% "RealMapCertificates/relations/basis1718.json"
theorem reductionProof1718 : EqualModuloRelations reduction1718.relations reduction1718.input reduction1718.output := by lin_cert using reduction1718.terms
theorem substitutionProof1718 : IsMapEvaluation generatorImages reduction1718.relations [8,8,113] reduction1718.output := by lin_cert using reduction1718.terms
def image1719 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1719 : InImage map_21_114 image1719 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1719 : Bundle := named_bundle% "RealMapCertificates/relations/basis1719.json"
theorem reductionProof1719 : EqualModuloRelations reduction1719.relations reduction1719.input reduction1719.output := by lin_cert using reduction1719.terms
theorem substitutionProof1719 : IsMapEvaluation generatorImages reduction1719.relations [8,8,13,51] reduction1719.output := by lin_cert using reduction1719.terms
def map_21_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1752 : InImage map_21_115 image1752 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1752 : Bundle := named_bundle% "RealMapCertificates/relations/basis1752.json"
theorem reductionProof1752 : EqualModuloRelations reduction1752.relations reduction1752.input reduction1752.output := by lin_cert using reduction1752.terms
theorem substitutionProof1752 : IsMapEvaluation generatorImages reduction1752.relations [0,8,162] reduction1752.output := by lin_cert using reduction1752.terms
def map_21_116 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1781 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1781 : InImage map_21_116 image1781 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1781 : Bundle := named_bundle% "RealMapCertificates/relations/basis1781.json"
theorem reductionProof1781 : EqualModuloRelations reduction1781.relations reduction1781.input reduction1781.output := by lin_cert using reduction1781.terms
theorem substitutionProof1781 : IsMapEvaluation generatorImages reduction1781.relations [247] reduction1781.output := by lin_cert using reduction1781.terms
def image1782 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1782 : InImage map_21_116 image1782 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1782 : Bundle := named_bundle% "RealMapCertificates/relations/basis1782.json"
theorem reductionProof1782 : EqualModuloRelations reduction1782.relations reduction1782.input reduction1782.output := by lin_cert using reduction1782.terms
theorem substitutionProof1782 : IsMapEvaluation generatorImages reduction1782.relations [246] reduction1782.output := by lin_cert using reduction1782.terms
def map_21_117 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image1828 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1828 : InImage map_21_117 image1828 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1828 : Bundle := named_bundle% "RealMapCertificates/relations/basis1828.json"
theorem reductionProof1828 : EqualModuloRelations reduction1828.relations reduction1828.input reduction1828.output := by lin_cert using reduction1828.terms
theorem substitutionProof1828 : IsMapEvaluation generatorImages reduction1828.relations [8,9,13,51] reduction1828.output := by lin_cert using reduction1828.terms
def image1829 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1829 : InImage map_21_117 image1829 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1829 : Bundle := named_bundle% "RealMapCertificates/relations/basis1829.json"
theorem reductionProof1829 : EqualModuloRelations reduction1829.relations reduction1829.input reduction1829.output := by lin_cert using reduction1829.terms
theorem substitutionProof1829 : IsMapEvaluation generatorImages reduction1829.relations [8,8,118] reduction1829.output := by lin_cert using reduction1829.terms
def map_21_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1898 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1898 : InImage map_21_119 image1898 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1898 : Bundle := named_bundle% "RealMapCertificates/relations/basis1898.json"
theorem reductionProof1898 : EqualModuloRelations reduction1898.relations reduction1898.input reduction1898.output := by lin_cert using reduction1898.terms
theorem substitutionProof1898 : IsMapEvaluation generatorImages reduction1898.relations [259] reduction1898.output := by lin_cert using reduction1898.terms
def map_21_120 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1942 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1942 : InImage map_21_120 image1942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1942 : Bundle := named_bundle% "RealMapCertificates/relations/basis1942.json"
theorem reductionProof1942 : EqualModuloRelations reduction1942.relations reduction1942.input reduction1942.output := by lin_cert using reduction1942.terms
theorem substitutionProof1942 : IsMapEvaluation generatorImages reduction1942.relations [8,13,13,51] reduction1942.output := by lin_cert using reduction1942.terms
def image1943 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1943 : InImage map_21_120 image1943 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1943 : Bundle := named_bundle% "RealMapCertificates/relations/basis1943.json"
theorem reductionProof1943 : EqualModuloRelations reduction1943.relations reduction1943.input reduction1943.output := by lin_cert using reduction1943.terms
theorem substitutionProof1943 : IsMapEvaluation generatorImages reduction1943.relations [8,8,127] reduction1943.output := by lin_cert using reduction1943.terms
def map_21_122 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2017 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2017 : InImage map_21_122 image2017 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2017 : Bundle := named_bundle% "RealMapCertificates/relations/basis2017.json"
theorem reductionProof2017 : EqualModuloRelations reduction2017.relations reduction2017.input reduction2017.output := by lin_cert using reduction2017.terms
theorem substitutionProof2017 : IsMapEvaluation generatorImages reduction2017.relations [8,193] reduction2017.output := by lin_cert using reduction2017.terms
def image2018 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2018 : InImage map_21_122 image2018 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2018 : Bundle := named_bundle% "RealMapCertificates/relations/basis2018.json"
theorem reductionProof2018 : EqualModuloRelations reduction2018.relations reduction2018.input reduction2018.output := by lin_cert using reduction2018.terms
theorem substitutionProof2018 : IsMapEvaluation generatorImages reduction2018.relations [0,0,0,260] reduction2018.output := by lin_cert using reduction2018.terms
def map_21_123 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2063 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2063 : InImage map_21_123 image2063 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2063 : Bundle := named_bundle% "RealMapCertificates/relations/basis2063.json"
theorem reductionProof2063 : EqualModuloRelations reduction2063.relations reduction2063.input reduction2063.output := by lin_cert using reduction2063.terms
theorem substitutionProof2063 : IsMapEvaluation generatorImages reduction2063.relations [9,13,13,51] reduction2063.output := by lin_cert using reduction2063.terms
def image2064 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2064 : InImage map_21_123 image2064 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2064 : Bundle := named_bundle% "RealMapCertificates/relations/basis2064.json"
theorem reductionProof2064 : EqualModuloRelations reduction2064.relations reduction2064.input reduction2064.output := by lin_cert using reduction2064.terms
theorem substitutionProof2064 : IsMapEvaluation generatorImages reduction2064.relations [8,8,8,80] reduction2064.output := by lin_cert using reduction2064.terms
def image2065 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2065 : InImage map_21_123 image2065 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2065 : Bundle := named_bundle% "RealMapCertificates/relations/basis2065.json"
theorem reductionProof2065 : EqualModuloRelations reduction2065.relations reduction2065.input reduction2065.output := by lin_cert using reduction2065.terms
theorem substitutionProof2065 : IsMapEvaluation generatorImages reduction2065.relations [0,0,274] reduction2065.output := by lin_cert using reduction2065.terms
def map_21_125 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2143 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2143 : InImage map_21_125 image2143 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2143 : Bundle := named_bundle% "RealMapCertificates/relations/basis2143.json"
theorem reductionProof2143 : EqualModuloRelations reduction2143.relations reduction2143.input reduction2143.output := by lin_cert using reduction2143.terms
theorem substitutionProof2143 : IsMapEvaluation generatorImages reduction2143.relations [8,208] reduction2143.output := by lin_cert using reduction2143.terms
def image2144 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2144 : InImage map_21_125 image2144 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2144 : Bundle := named_bundle% "RealMapCertificates/relations/basis2144.json"
theorem reductionProof2144 : EqualModuloRelations reduction2144.relations reduction2144.input reduction2144.output := by lin_cert using reduction2144.terms
theorem substitutionProof2144 : IsMapEvaluation generatorImages reduction2144.relations [0,0,0,278] reduction2144.output := by lin_cert using reduction2144.terms
def map_21_126 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2192 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2192 : InImage map_21_126 image2192 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2192 : Bundle := named_bundle% "RealMapCertificates/relations/basis2192.json"
theorem reductionProof2192 : EqualModuloRelations reduction2192.relations reduction2192.input reduction2192.output := by lin_cert using reduction2192.terms
theorem substitutionProof2192 : IsMapEvaluation generatorImages reduction2192.relations [13,13,13,51] reduction2192.output := by lin_cert using reduction2192.terms
def image2193 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2193 : InImage map_21_126 image2193 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2193 : Bundle := named_bundle% "RealMapCertificates/relations/basis2193.json"
theorem reductionProof2193 : EqualModuloRelations reduction2193.relations reduction2193.input reduction2193.output := by lin_cert using reduction2193.terms
theorem substitutionProof2193 : IsMapEvaluation generatorImages reduction2193.relations [8,8,9,80] reduction2193.output := by lin_cert using reduction2193.terms
def map_21_127 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2235 : InImage map_21_127 image2235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2235 : Bundle := named_bundle% "RealMapCertificates/relations/basis2235.json"
theorem reductionProof2235 : EqualModuloRelations reduction2235.relations reduction2235.input reduction2235.output := by lin_cert using reduction2235.terms
theorem substitutionProof2235 : IsMapEvaluation generatorImages reduction2235.relations [0,64,64] reduction2235.output := by lin_cert using reduction2235.terms
def map_21_128 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2276 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2276 : InImage map_21_128 image2276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2276 : Bundle := named_bundle% "RealMapCertificates/relations/basis2276.json"
theorem reductionProof2276 : EqualModuloRelations reduction2276.relations reduction2276.input reduction2276.output := by lin_cert using reduction2276.terms
theorem substitutionProof2276 : IsMapEvaluation generatorImages reduction2276.relations [8,219] reduction2276.output := by lin_cert using reduction2276.terms
def image2277 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2277 : InImage map_21_128 image2277 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2277 : Bundle := named_bundle% "RealMapCertificates/relations/basis2277.json"
theorem reductionProof2277 : EqualModuloRelations reduction2277.relations reduction2277.input reduction2277.output := by lin_cert using reduction2277.terms
theorem substitutionProof2277 : IsMapEvaluation generatorImages reduction2277.relations [1,64,64] reduction2277.output := by lin_cert using reduction2277.terms
def image2278 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2278 : InImage map_21_128 image2278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2278 : Bundle := named_bundle% "RealMapCertificates/relations/basis2278.json"
theorem reductionProof2278 : EqualModuloRelations reduction2278.relations reduction2278.input reduction2278.output := by lin_cert using reduction2278.terms
theorem substitutionProof2278 : IsMapEvaluation generatorImages reduction2278.relations [0,0,299] reduction2278.output := by lin_cert using reduction2278.terms
def map_21_129 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2347 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2347 : InImage map_21_129 image2347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2347 : Bundle := named_bundle% "RealMapCertificates/relations/basis2347.json"
theorem reductionProof2347 : EqualModuloRelations reduction2347.relations reduction2347.input reduction2347.output := by lin_cert using reduction2347.terms
theorem substitutionProof2347 : IsMapEvaluation generatorImages reduction2347.relations [8,8,13,80] reduction2347.output := by lin_cert using reduction2347.terms
def image2348 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2348 : InImage map_21_129 image2348 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2348 : Bundle := named_bundle% "RealMapCertificates/relations/basis2348.json"
theorem reductionProof2348 : EqualModuloRelations reduction2348.relations reduction2348.input reduction2348.output := by lin_cert using reduction2348.terms
theorem substitutionProof2348 : IsMapEvaluation generatorImages reduction2348.relations [0,0,0,0,292] reduction2348.output := by lin_cert using reduction2348.terms
def map_21_130 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image2399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2399 : InImage map_21_130 image2399 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2399 : Bundle := named_bundle% "RealMapCertificates/relations/basis2399.json"
theorem reductionProof2399 : EqualModuloRelations reduction2399.relations reduction2399.input reduction2399.output := by lin_cert using reduction2399.terms
theorem substitutionProof2399 : IsMapEvaluation generatorImages reduction2399.relations [0,64,72] reduction2399.output := by lin_cert using reduction2399.terms
def image2400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2400 : InImage map_21_130 image2400 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2400 : Bundle := named_bundle% "RealMapCertificates/relations/basis2400.json"
theorem reductionProof2400 : EqualModuloRelations reduction2400.relations reduction2400.input reduction2400.output := by lin_cert using reduction2400.terms
theorem substitutionProof2400 : IsMapEvaluation generatorImages reduction2400.relations [0,0,0,0,301] reduction2400.output := by lin_cert using reduction2400.terms
def image2401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2401 : InImage map_21_130 image2401 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2401 : Bundle := named_bundle% "RealMapCertificates/relations/basis2401.json"
theorem reductionProof2401 : EqualModuloRelations reduction2401.relations reduction2401.input reduction2401.output := by lin_cert using reduction2401.terms
theorem substitutionProof2401 : IsMapEvaluation generatorImages reduction2401.relations [0,0,0,0,300] reduction2401.output := by lin_cert using reduction2401.terms
def map_21_131 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2461 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2461 : InImage map_21_131 image2461 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2461 : Bundle := named_bundle% "RealMapCertificates/relations/basis2461.json"
theorem reductionProof2461 : EqualModuloRelations reduction2461.relations reduction2461.input reduction2461.output := by lin_cert using reduction2461.terms
theorem substitutionProof2461 : IsMapEvaluation generatorImages reduction2461.relations [9,219] reduction2461.output := by lin_cert using reduction2461.terms
def image2462 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2462 : InImage map_21_131 image2462 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2462 : Bundle := named_bundle% "RealMapCertificates/relations/basis2462.json"
theorem reductionProof2462 : EqualModuloRelations reduction2462.relations reduction2462.input reduction2462.output := by lin_cert using reduction2462.terms
theorem substitutionProof2462 : IsMapEvaluation generatorImages reduction2462.relations [0,0,327] reduction2462.output := by lin_cert using reduction2462.terms
def image2463 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2463 : InImage map_21_131 image2463 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2463 : Bundle := named_bundle% "RealMapCertificates/relations/basis2463.json"
theorem reductionProof2463 : EqualModuloRelations reduction2463.relations reduction2463.input reduction2463.output := by lin_cert using reduction2463.terms
theorem substitutionProof2463 : IsMapEvaluation generatorImages reduction2463.relations [0,0,0,317] reduction2463.output := by lin_cert using reduction2463.terms
def map_21_132 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2534 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2534 : InImage map_21_132 image2534 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2534 : Bundle := named_bundle% "RealMapCertificates/relations/basis2534.json"
theorem reductionProof2534 : EqualModuloRelations reduction2534.relations reduction2534.input reduction2534.output := by lin_cert using reduction2534.terms
theorem substitutionProof2534 : IsMapEvaluation generatorImages reduction2534.relations [13,13,13,13,24] reduction2534.output := by lin_cert using reduction2534.terms
def image2535 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2535 : InImage map_21_132 image2535 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2535 : Bundle := named_bundle% "RealMapCertificates/relations/basis2535.json"
theorem reductionProof2535 : EqualModuloRelations reduction2535.relations reduction2535.input reduction2535.output := by lin_cert using reduction2535.terms
theorem substitutionProof2535 : IsMapEvaluation generatorImages reduction2535.relations [8,9,13,80] reduction2535.output := by lin_cert using reduction2535.terms
def map_21_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2595 : InImage map_21_133 image2595 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2595 : Bundle := named_bundle% "RealMapCertificates/relations/basis2595.json"
theorem reductionProof2595 : EqualModuloRelations reduction2595.relations reduction2595.input reduction2595.output := by lin_cert using reduction2595.terms
theorem substitutionProof2595 : IsMapEvaluation generatorImages reduction2595.relations [0,16,187] reduction2595.output := by lin_cert using reduction2595.terms
def map_21_134 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2658 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2658 : InImage map_21_134 image2658 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2658 : Bundle := named_bundle% "RealMapCertificates/relations/basis2658.json"
theorem reductionProof2658 : EqualModuloRelations reduction2658.relations reduction2658.input reduction2658.output := by lin_cert using reduction2658.terms
theorem substitutionProof2658 : IsMapEvaluation generatorImages reduction2658.relations [13,219] reduction2658.output := by lin_cert using reduction2658.terms
def image2659 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2659 : InImage map_21_134 image2659 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2659 : Bundle := named_bundle% "RealMapCertificates/relations/basis2659.json"
theorem reductionProof2659 : EqualModuloRelations reduction2659.relations reduction2659.input reduction2659.output := by lin_cert using reduction2659.terms
theorem substitutionProof2659 : IsMapEvaluation generatorImages reduction2659.relations [0,0,16,188] reduction2659.output := by lin_cert using reduction2659.terms
def image2660 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2660 : InImage map_21_134 image2660 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2660 : Bundle := named_bundle% "RealMapCertificates/relations/basis2660.json"
theorem reductionProof2660 : EqualModuloRelations reduction2660.relations reduction2660.input reduction2660.output := by lin_cert using reduction2660.terms
theorem substitutionProof2660 : IsMapEvaluation generatorImages reduction2660.relations [0,0,0,347] reduction2660.output := by lin_cert using reduction2660.terms
def map_21_135 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2758 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2758 : InImage map_21_135 image2758 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2758 : Bundle := named_bundle% "RealMapCertificates/relations/basis2758.json"
theorem reductionProof2758 : EqualModuloRelations reduction2758.relations reduction2758.input reduction2758.output := by lin_cert using reduction2758.terms
theorem substitutionProof2758 : IsMapEvaluation generatorImages reduction2758.relations [8,13,13,80] reduction2758.output := by lin_cert using reduction2758.terms
def image2759 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2759 : InImage map_21_135 image2759 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2759 : Bundle := named_bundle% "RealMapCertificates/relations/basis2759.json"
theorem reductionProof2759 : EqualModuloRelations reduction2759.relations reduction2759.input reduction2759.output := by lin_cert using reduction2759.terms
theorem substitutionProof2759 : IsMapEvaluation generatorImages reduction2759.relations [0,0,0,17,188] reduction2759.output := by lin_cert using reduction2759.terms
def map_21_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2824 : InImage map_21_136 image2824 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2824 : Bundle := named_bundle% "RealMapCertificates/relations/basis2824.json"
theorem reductionProof2824 : EqualModuloRelations reduction2824.relations reduction2824.input reduction2824.output := by lin_cert using reduction2824.terms
theorem substitutionProof2824 : IsMapEvaluation generatorImages reduction2824.relations [0,0,0,0,358] reduction2824.output := by lin_cert using reduction2824.terms
def map_21_137 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image2897 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2897 : InImage map_21_137 image2897 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2897 : Bundle := named_bundle% "RealMapCertificates/relations/basis2897.json"
theorem reductionProof2897 : EqualModuloRelations reduction2897.relations reduction2897.input reduction2897.output := by lin_cert using reduction2897.terms
theorem substitutionProof2897 : IsMapEvaluation generatorImages reduction2897.relations [0,0,8,255] reduction2897.output := by lin_cert using reduction2897.terms
def image2898 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2898 : InImage map_21_137 image2898 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2898 : Bundle := named_bundle% "RealMapCertificates/relations/basis2898.json"
theorem reductionProof2898 : EqualModuloRelations reduction2898.relations reduction2898.input reduction2898.output := by lin_cert using reduction2898.terms
theorem substitutionProof2898 : IsMapEvaluation generatorImages reduction2898.relations [0,0,0,0,0,359] reduction2898.output := by lin_cert using reduction2898.terms
def image2899 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2899 : InImage map_21_137 image2899 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2899 : Bundle := named_bundle% "RealMapCertificates/relations/basis2899.json"
theorem reductionProof2899 : EqualModuloRelations reduction2899.relations reduction2899.input reduction2899.output := by lin_cert using reduction2899.terms
theorem substitutionProof2899 : IsMapEvaluation generatorImages reduction2899.relations [0,0,0,0,0,0,349] reduction2899.output := by lin_cert using reduction2899.terms
def map_21_138 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2983 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2983 : InImage map_21_138 image2983 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2983 : Bundle := named_bundle% "RealMapCertificates/relations/basis2983.json"
theorem reductionProof2983 : EqualModuloRelations reduction2983.relations reduction2983.input reduction2983.output := by lin_cert using reduction2983.terms
theorem substitutionProof2983 : IsMapEvaluation generatorImages reduction2983.relations [435] reduction2983.output := by lin_cert using reduction2983.terms
def image2984 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2984 : InImage map_21_138 image2984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2984 : Bundle := named_bundle% "RealMapCertificates/relations/basis2984.json"
theorem reductionProof2984 : EqualModuloRelations reduction2984.relations reduction2984.input reduction2984.output := by lin_cert using reduction2984.terms
theorem substitutionProof2984 : IsMapEvaluation generatorImages reduction2984.relations [9,13,13,80] reduction2984.output := by lin_cert using reduction2984.terms
def map_21_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3059 : InImage map_21_139 image3059 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3059 : Bundle := named_bundle% "RealMapCertificates/relations/basis3059.json"
theorem reductionProof3059 : EqualModuloRelations reduction3059.relations reduction3059.input reduction3059.output := by lin_cert using reduction3059.terms
theorem substitutionProof3059 : IsMapEvaluation generatorImages reduction3059.relations [0,8,8,187] reduction3059.output := by lin_cert using reduction3059.terms
def map_21_140 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3131 : InImage map_21_140 image3131 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3131 : Bundle := named_bundle% "RealMapCertificates/relations/basis3131.json"
theorem reductionProof3131 : EqualModuloRelations reduction3131.relations reduction3131.input reduction3131.output := by lin_cert using reduction3131.terms
theorem substitutionProof3131 : IsMapEvaluation generatorImages reduction3131.relations [454] reduction3131.output := by lin_cert using reduction3131.terms
def image3132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3132 : InImage map_21_140 image3132 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3132 : Bundle := named_bundle% "RealMapCertificates/relations/basis3132.json"
theorem reductionProof3132 : EqualModuloRelations reduction3132.relations reduction3132.input reduction3132.output := by lin_cert using reduction3132.terms
theorem substitutionProof3132 : IsMapEvaluation generatorImages reduction3132.relations [13,13,150] reduction3132.output := by lin_cert using reduction3132.terms
def image3133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3133 : InImage map_21_140 image3133 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3133 : Bundle := named_bundle% "RealMapCertificates/relations/basis3133.json"
theorem reductionProof3133 : EqualModuloRelations reduction3133.relations reduction3133.input reduction3133.output := by lin_cert using reduction3133.terms
theorem substitutionProof3133 : IsMapEvaluation generatorImages reduction3133.relations [0,0,8,8,188] reduction3133.output := by lin_cert using reduction3133.terms
def map_21_141 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3238 : InImage map_21_141 image3238 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3238 : Bundle := named_bundle% "RealMapCertificates/relations/basis3238.json"
theorem reductionProof3238 : EqualModuloRelations reduction3238.relations reduction3238.input reduction3238.output := by lin_cert using reduction3238.terms
theorem substitutionProof3238 : IsMapEvaluation generatorImages reduction3238.relations [13,13,13,80] reduction3238.output := by lin_cert using reduction3238.terms
def image3239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3239 : InImage map_21_141 image3239 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3239 : Bundle := named_bundle% "RealMapCertificates/relations/basis3239.json"
theorem reductionProof3239 : EqualModuloRelations reduction3239.relations reduction3239.input reduction3239.output := by lin_cert using reduction3239.terms
theorem substitutionProof3239 : IsMapEvaluation generatorImages reduction3239.relations [1,447] reduction3239.output := by lin_cert using reduction3239.terms
def image3240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3240 : InImage map_21_141 image3240 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3240 : Bundle := named_bundle% "RealMapCertificates/relations/basis3240.json"
theorem reductionProof3240 : EqualModuloRelations reduction3240.relations reduction3240.input reduction3240.output := by lin_cert using reduction3240.terms
theorem substitutionProof3240 : IsMapEvaluation generatorImages reduction3240.relations [0,455] reduction3240.output := by lin_cert using reduction3240.terms
def image3241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3241 : InImage map_21_141 image3241 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3241 : Bundle := named_bundle% "RealMapCertificates/relations/basis3241.json"
theorem reductionProof3241 : EqualModuloRelations reduction3241.relations reduction3241.input reduction3241.output := by lin_cert using reduction3241.terms
theorem substitutionProof3241 : IsMapEvaluation generatorImages reduction3241.relations [0,0,0,0,17,209] reduction3241.output := by lin_cert using reduction3241.terms
def map_21_142 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3308 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3308 : InImage map_21_142 image3308 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3308 : Bundle := named_bundle% "RealMapCertificates/relations/basis3308.json"
theorem reductionProof3308 : EqualModuloRelations reduction3308.relations reduction3308.input reduction3308.output := by lin_cert using reduction3308.terms
theorem substitutionProof3308 : IsMapEvaluation generatorImages reduction3308.relations [0,8,8,201] reduction3308.output := by lin_cert using reduction3308.terms
def image3309 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3309 : InImage map_21_142 image3309 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3309 : Bundle := named_bundle% "RealMapCertificates/relations/basis3309.json"
theorem reductionProof3309 : EqualModuloRelations reduction3309.relations reduction3309.input reduction3309.output := by lin_cert using reduction3309.terms
theorem substitutionProof3309 : IsMapEvaluation generatorImages reduction3309.relations [0,0,0,0,0,422] reduction3309.output := by lin_cert using reduction3309.terms
def map_21_143 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3386 : InImage map_21_143 image3386 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3386 : Bundle := named_bundle% "RealMapCertificates/relations/basis3386.json"
theorem reductionProof3386 : EqualModuloRelations reduction3386.relations reduction3386.input reduction3386.output := by lin_cert using reduction3386.terms
theorem substitutionProof3386 : IsMapEvaluation generatorImages reduction3386.relations [8,292] reduction3386.output := by lin_cert using reduction3386.terms
def image3387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3387 : InImage map_21_143 image3387 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3387 : Bundle := named_bundle% "RealMapCertificates/relations/basis3387.json"
theorem reductionProof3387 : EqualModuloRelations reduction3387.relations reduction3387.input reduction3387.output := by lin_cert using reduction3387.terms
theorem substitutionProof3387 : IsMapEvaluation generatorImages reduction3387.relations [0,0,8,9,188] reduction3387.output := by lin_cert using reduction3387.terms
def map_21_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3554 : InImage map_21_145 image3554 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3554 : Bundle := named_bundle% "RealMapCertificates/relations/basis3554.json"
theorem reductionProof3554 : EqualModuloRelations reduction3554.relations reduction3554.input reduction3554.output := by lin_cert using reduction3554.terms
theorem substitutionProof3554 : IsMapEvaluation generatorImages reduction3554.relations [0,8,8,212] reduction3554.output := by lin_cert using reduction3554.terms
def image3555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3555 : InImage map_21_145 image3555 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3555 : Bundle := named_bundle% "RealMapCertificates/relations/basis3555.json"
theorem reductionProof3555 : EqualModuloRelations reduction3555.relations reduction3555.input reduction3555.output := by lin_cert using reduction3555.terms
theorem substitutionProof3555 : IsMapEvaluation generatorImages reduction3555.relations [0,0,0,0,0,0,0,440] reduction3555.output := by lin_cert using reduction3555.terms
def map_21_146 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3629 : InImage map_21_146 image3629 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3629 : Bundle := named_bundle% "RealMapCertificates/relations/basis3629.json"
theorem reductionProof3629 : EqualModuloRelations reduction3629.relations reduction3629.input reduction3629.output := by lin_cert using reduction3629.terms
theorem substitutionProof3629 : IsMapEvaluation generatorImages reduction3629.relations [518] reduction3629.output := by lin_cert using reduction3629.terms
def image3630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3630 : InImage map_21_146 image3630 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3630 : Bundle := named_bundle% "RealMapCertificates/relations/basis3630.json"
theorem reductionProof3630 : EqualModuloRelations reduction3630.relations reduction3630.input reduction3630.output := by lin_cert using reduction3630.terms
theorem substitutionProof3630 : IsMapEvaluation generatorImages reduction3630.relations [9,292] reduction3630.output := by lin_cert using reduction3630.terms
def image3631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3631 : InImage map_21_146 image3631 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3631 : Bundle := named_bundle% "RealMapCertificates/relations/basis3631.json"
theorem reductionProof3631 : EqualModuloRelations reduction3631.relations reduction3631.input reduction3631.output := by lin_cert using reduction3631.terms
theorem substitutionProof3631 : IsMapEvaluation generatorImages reduction3631.relations [0,0,0,0,0,0,0,449] reduction3631.output := by lin_cert using reduction3631.terms
def map_21_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3748 : InImage map_21_147 image3748 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3748 : Bundle := named_bundle% "RealMapCertificates/relations/basis3748.json"
theorem reductionProof3748 : EqualModuloRelations reduction3748.relations reduction3748.input reduction3748.output := by lin_cert using reduction3748.terms
theorem substitutionProof3748 : IsMapEvaluation generatorImages reduction3748.relations [530] reduction3748.output := by lin_cert using reduction3748.terms
def image3749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3749 : InImage map_21_147 image3749 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3749 : Bundle := named_bundle% "RealMapCertificates/relations/basis3749.json"
theorem reductionProof3749 : EqualModuloRelations reduction3749.relations reduction3749.input reduction3749.output := by lin_cert using reduction3749.terms
theorem substitutionProof3749 : IsMapEvaluation generatorImages reduction3749.relations [1,510] reduction3749.output := by lin_cert using reduction3749.terms
def image3750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3750 : InImage map_21_147 image3750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3750 : Bundle := named_bundle% "RealMapCertificates/relations/basis3750.json"
theorem reductionProof3750 : EqualModuloRelations reduction3750.relations reduction3750.input reduction3750.output := by lin_cert using reduction3750.terms
theorem substitutionProof3750 : IsMapEvaluation generatorImages reduction3750.relations [0,0,0,500] reduction3750.output := by lin_cert using reduction3750.terms
def map_21_148 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3816 : InImage map_21_148 image3816 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3816 : Bundle := named_bundle% "RealMapCertificates/relations/basis3816.json"
theorem reductionProof3816 : EqualModuloRelations reduction3816.relations reduction3816.input reduction3816.output := by lin_cert using reduction3816.terms
theorem substitutionProof3816 : IsMapEvaluation generatorImages reduction3816.relations [537] reduction3816.output := by lin_cert using reduction3816.terms
def image3817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3817 : InImage map_21_148 image3817 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3817 : Bundle := named_bundle% "RealMapCertificates/relations/basis3817.json"
theorem reductionProof3817 : EqualModuloRelations reduction3817.relations reduction3817.input reduction3817.output := by lin_cert using reduction3817.terms
theorem substitutionProof3817 : IsMapEvaluation generatorImages reduction3817.relations [13,13,13,105] reduction3817.output := by lin_cert using reduction3817.terms
def image3818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3818 : InImage map_21_148 image3818 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3818 : Bundle := named_bundle% "RealMapCertificates/relations/basis3818.json"
theorem reductionProof3818 : EqualModuloRelations reduction3818.relations reduction3818.input reduction3818.output := by lin_cert using reduction3818.terms
theorem substitutionProof3818 : IsMapEvaluation generatorImages reduction3818.relations [0,0,0,0,0,0,481] reduction3818.output := by lin_cert using reduction3818.terms
def image3819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3819 : InImage map_21_148 image3819 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3819 : Bundle := named_bundle% "RealMapCertificates/relations/basis3819.json"
theorem reductionProof3819 : EqualModuloRelations reduction3819.relations reduction3819.input reduction3819.output := by lin_cert using reduction3819.terms
theorem substitutionProof3819 : IsMapEvaluation generatorImages reduction3819.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3819.output := by lin_cert using reduction3819.terms
def map_21_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3902 : InImage map_21_149 image3902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3902 : Bundle := named_bundle% "RealMapCertificates/relations/basis3902.json"
theorem reductionProof3902 : EqualModuloRelations reduction3902.relations reduction3902.input reduction3902.output := by lin_cert using reduction3902.terms
theorem substitutionProof3902 : IsMapEvaluation generatorImages reduction3902.relations [550] reduction3902.output := by lin_cert using reduction3902.terms
def image3903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3903 : InImage map_21_149 image3903 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3903 : Bundle := named_bundle% "RealMapCertificates/relations/basis3903.json"
theorem reductionProof3903 : EqualModuloRelations reduction3903.relations reduction3903.input reduction3903.output := by lin_cert using reduction3903.terms
theorem substitutionProof3903 : IsMapEvaluation generatorImages reduction3903.relations [13,292] reduction3903.output := by lin_cert using reduction3903.terms
def map_21_150 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4006 : InImage map_21_150 image4006 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4006 : Bundle := named_bundle% "RealMapCertificates/relations/basis4006.json"
theorem reductionProof4006 : EqualModuloRelations reduction4006.relations reduction4006.input reduction4006.output := by lin_cert using reduction4006.terms
theorem substitutionProof4006 : IsMapEvaluation generatorImages reduction4006.relations [42,187] reduction4006.output := by lin_cert using reduction4006.terms
def image4007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4007 : InImage map_21_150 image4007 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4007 : Bundle := named_bundle% "RealMapCertificates/relations/basis4007.json"
theorem reductionProof4007 : EqualModuloRelations reduction4007.relations reduction4007.input reduction4007.output := by lin_cert using reduction4007.terms
theorem substitutionProof4007 : IsMapEvaluation generatorImages reduction4007.relations [17,267] reduction4007.output := by lin_cert using reduction4007.terms
def image4008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4008 : InImage map_21_150 image4008 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4008 : Bundle := named_bundle% "RealMapCertificates/relations/basis4008.json"
theorem reductionProof4008 : EqualModuloRelations reduction4008.relations reduction4008.input reduction4008.output := by lin_cert using reduction4008.terms
theorem substitutionProof4008 : IsMapEvaluation generatorImages reduction4008.relations [0,551] reduction4008.output := by lin_cert using reduction4008.terms
end RealMapCertificates
