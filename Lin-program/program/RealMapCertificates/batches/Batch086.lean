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
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 133 => []
  | 138 => [[0,4,6,12]]
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 235 => []
  | 239 => []
  | 260 => []
  | 266 => []
  | 267 => []
  | 268 => []
  | 269 => []
  | 278 => []
  | 280 => []
  | 287 => []
  | 294 => []
  | 333 => []
  | 357 => []
  | 383 => []
  | 417 => []
  | 472 => []
  | 475 => []
  | 538 => []
  | 568 => []
  | 575 => []
  | 582 => []
  | 586 => []
  | 587 => []
  | 603 => []
  | 608 => []
  | 609 => []
  | 613 => []
  | 627 => []
  | 628 => []
  | 644 => []
  | 645 => []
  | 646 => []
  | 655 => []
  | 666 => []
  | 667 => []
  | 690 => []
  | 692 => []
  | 693 => []
  | 702 => []
  | 703 => []
  | 706 => []
  | 717 => []
  | 728 => []
  | 739 => []
  | 743 => []
  | 754 => []
  | 760 => []
  | 762 => []
  | 763 => []
  | 780 => []
  | 825 => []
  | 833 => []
  | 834 => []
  | 836 => []
  | 837 => []
  | 838 => []
  | 857 => []
  | 877 => []
  | 878 => []
  | 879 => []
  | 891 => []
  | 904 => []
  | 930 => []
  | 942 => []
  | _ => []
def map_21_152 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4179 : InImage map_21_152 image4179 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4179 : Bundle := named_bundle% "RealMapCertificates/relations/basis4179.json"
theorem reductionProof4179 : EqualModuloRelations reduction4179.relations reduction4179.input reduction4179.output := by lin_cert using reduction4179.terms
theorem substitutionProof4179 : IsMapEvaluation generatorImages reduction4179.relations [8,383] reduction4179.output := by lin_cert using reduction4179.terms
def image4180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4180 : InImage map_21_152 image4180 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4180 : Bundle := named_bundle% "RealMapCertificates/relations/basis4180.json"
theorem reductionProof4180 : EqualModuloRelations reduction4180.relations reduction4180.input reduction4180.output := by lin_cert using reduction4180.terms
theorem substitutionProof4180 : IsMapEvaluation generatorImages reduction4180.relations [2,538] reduction4180.output := by lin_cert using reduction4180.terms
def map_21_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4285 : InImage map_21_153 image4285 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4285 : Bundle := named_bundle% "RealMapCertificates/relations/basis4285.json"
theorem reductionProof4285 : EqualModuloRelations reduction4285.relations reduction4285.input reduction4285.output := by lin_cert using reduction4285.terms
theorem substitutionProof4285 : IsMapEvaluation generatorImages reduction4285.relations [20,267] reduction4285.output := by lin_cert using reduction4285.terms
def image4286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4286 : InImage map_21_153 image4286 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4286 : Bundle := named_bundle% "RealMapCertificates/relations/basis4286.json"
theorem reductionProof4286 : EqualModuloRelations reduction4286.relations reduction4286.input reduction4286.output := by lin_cert using reduction4286.terms
theorem substitutionProof4286 : IsMapEvaluation generatorImages reduction4286.relations [0,0,18,260] reduction4286.output := by lin_cert using reduction4286.terms
def map_21_154 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4348 : InImage map_21_154 image4348 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4348 : Bundle := named_bundle% "RealMapCertificates/relations/basis4348.json"
theorem reductionProof4348 : EqualModuloRelations reduction4348.relations reduction4348.input reduction4348.output := by lin_cert using reduction4348.terms
theorem substitutionProof4348 : IsMapEvaluation generatorImages reduction4348.relations [586] reduction4348.output := by lin_cert using reduction4348.terms
def image4349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4349 : InImage map_21_154 image4349 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4349 : Bundle := named_bundle% "RealMapCertificates/relations/basis4349.json"
theorem reductionProof4349 : EqualModuloRelations reduction4349.relations reduction4349.input reduction4349.output := by lin_cert using reduction4349.terms
theorem substitutionProof4349 : IsMapEvaluation generatorImages reduction4349.relations [9,13,13,133] reduction4349.output := by lin_cert using reduction4349.terms
def image4350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4350 : InImage map_21_154 image4350 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4350 : Bundle := named_bundle% "RealMapCertificates/relations/basis4350.json"
theorem reductionProof4350 : EqualModuloRelations reduction4350.relations reduction4350.input reduction4350.output := by lin_cert using reduction4350.terms
theorem substitutionProof4350 : IsMapEvaluation generatorImages reduction4350.relations [0,0,0,69,138] reduction4350.output := by lin_cert using reduction4350.terms
def map_21_155 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4435 : InImage map_21_155 image4435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4435 : Bundle := named_bundle% "RealMapCertificates/relations/basis4435.json"
theorem reductionProof4435 : EqualModuloRelations reduction4435.relations reduction4435.input reduction4435.output := by lin_cert using reduction4435.terms
theorem substitutionProof4435 : IsMapEvaluation generatorImages reduction4435.relations [8,17,209] reduction4435.output := by lin_cert using reduction4435.terms
def image4436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4436 : InImage map_21_155 image4436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4436 : Bundle := named_bundle% "RealMapCertificates/relations/basis4436.json"
theorem reductionProof4436 : EqualModuloRelations reduction4436.relations reduction4436.input reduction4436.output := by lin_cert using reduction4436.terms
theorem substitutionProof4436 : IsMapEvaluation generatorImages reduction4436.relations [1,1,18,260] reduction4436.output := by lin_cert using reduction4436.terms
def image4437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4437 : InImage map_21_155 image4437 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4437 : Bundle := named_bundle% "RealMapCertificates/relations/basis4437.json"
theorem reductionProof4437 : EqualModuloRelations reduction4437.relations reduction4437.input reduction4437.output := by lin_cert using reduction4437.terms
theorem substitutionProof4437 : IsMapEvaluation generatorImages reduction4437.relations [0,0,0,0,568] reduction4437.output := by lin_cert using reduction4437.terms
def map_21_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4537 : InImage map_21_156 image4537 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4537 : Bundle := named_bundle% "RealMapCertificates/relations/basis4537.json"
theorem reductionProof4537 : EqualModuloRelations reduction4537.relations reduction4537.input reduction4537.output := by lin_cert using reduction4537.terms
theorem substitutionProof4537 : IsMapEvaluation generatorImages reduction4537.relations [13,357] reduction4537.output := by lin_cert using reduction4537.terms
def image4538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4538 : InImage map_21_156 image4538 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4538 : Bundle := named_bundle% "RealMapCertificates/relations/basis4538.json"
theorem reductionProof4538 : EqualModuloRelations reduction4538.relations reduction4538.input reduction4538.output := by lin_cert using reduction4538.terms
theorem substitutionProof4538 : IsMapEvaluation generatorImages reduction4538.relations [8,23,188] reduction4538.output := by lin_cert using reduction4538.terms
def image4539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4539 : InImage map_21_156 image4539 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4539 : Bundle := named_bundle% "RealMapCertificates/relations/basis4539.json"
theorem reductionProof4539 : EqualModuloRelations reduction4539.relations reduction4539.input reduction4539.output := by lin_cert using reduction4539.terms
theorem substitutionProof4539 : IsMapEvaluation generatorImages reduction4539.relations [1,587] reduction4539.output := by lin_cert using reduction4539.terms
def image4540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4540 : InImage map_21_156 image4540 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4540 : Bundle := named_bundle% "RealMapCertificates/relations/basis4540.json"
theorem reductionProof4540 : EqualModuloRelations reduction4540.relations reduction4540.input reduction4540.output := by lin_cert using reduction4540.terms
theorem substitutionProof4540 : IsMapEvaluation generatorImages reduction4540.relations [0,0,18,278] reduction4540.output := by lin_cert using reduction4540.terms
def map_21_157 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4615 : InImage map_21_157 image4615 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4615 : Bundle := named_bundle% "RealMapCertificates/relations/basis4615.json"
theorem reductionProof4615 : EqualModuloRelations reduction4615.relations reduction4615.input reduction4615.output := by lin_cert using reduction4615.terms
theorem substitutionProof4615 : IsMapEvaluation generatorImages reduction4615.relations [13,13,13,133] reduction4615.output := by lin_cert using reduction4615.terms
def image4616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4616 : InImage map_21_157 image4616 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4616 : Bundle := named_bundle% "RealMapCertificates/relations/basis4616.json"
theorem reductionProof4616 : EqualModuloRelations reduction4616.relations reduction4616.input reduction4616.output := by lin_cert using reduction4616.terms
theorem substitutionProof4616 : IsMapEvaluation generatorImages reduction4616.relations [1,603] reduction4616.output := by lin_cert using reduction4616.terms
def image4617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4617 : InImage map_21_157 image4617 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4617 : Bundle := named_bundle% "RealMapCertificates/relations/basis4617.json"
theorem reductionProof4617 : EqualModuloRelations reduction4617.relations reduction4617.input reduction4617.output := by lin_cert using reduction4617.terms
theorem substitutionProof4617 : IsMapEvaluation generatorImages reduction4617.relations [0,608] reduction4617.output := by lin_cert using reduction4617.terms
def map_21_158 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4704 : InImage map_21_158 image4704 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4704 : Bundle := named_bundle% "RealMapCertificates/relations/basis4704.json"
theorem reductionProof4704 : EqualModuloRelations reduction4704.relations reduction4704.input reduction4704.output := by lin_cert using reduction4704.terms
theorem substitutionProof4704 : IsMapEvaluation generatorImages reduction4704.relations [8,8,280] reduction4704.output := by lin_cert using reduction4704.terms
def image4705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4705 : InImage map_21_158 image4705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4705 : Bundle := named_bundle% "RealMapCertificates/relations/basis4705.json"
theorem reductionProof4705 : EqualModuloRelations reduction4705.relations reduction4705.input reduction4705.output := by lin_cert using reduction4705.terms
theorem substitutionProof4705 : IsMapEvaluation generatorImages reduction4705.relations [0,0,609] reduction4705.output := by lin_cert using reduction4705.terms
def map_21_159 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4804 : InImage map_21_159 image4804 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4804 : Bundle := named_bundle% "RealMapCertificates/relations/basis4804.json"
theorem reductionProof4804 : EqualModuloRelations reduction4804.relations reduction4804.input reduction4804.output := by lin_cert using reduction4804.terms
theorem substitutionProof4804 : IsMapEvaluation generatorImages reduction4804.relations [9,23,188] reduction4804.output := by lin_cert using reduction4804.terms
def image4805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4805 : InImage map_21_159 image4805 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4805 : Bundle := named_bundle% "RealMapCertificates/relations/basis4805.json"
theorem reductionProof4805 : EqualModuloRelations reduction4805.relations reduction4805.input reduction4805.output := by lin_cert using reduction4805.terms
theorem substitutionProof4805 : IsMapEvaluation generatorImages reduction4805.relations [0,627] reduction4805.output := by lin_cert using reduction4805.terms
def map_21_160 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4870 : InImage map_21_160 image4870 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4870 : Bundle := named_bundle% "RealMapCertificates/relations/basis4870.json"
theorem reductionProof4870 : EqualModuloRelations reduction4870.relations reduction4870.input reduction4870.output := by lin_cert using reduction4870.terms
theorem substitutionProof4870 : IsMapEvaluation generatorImages reduction4870.relations [645] reduction4870.output := by lin_cert using reduction4870.terms
def image4871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4871 : InImage map_21_160 image4871 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4871 : Bundle := named_bundle% "RealMapCertificates/relations/basis4871.json"
theorem reductionProof4871 : EqualModuloRelations reduction4871.relations reduction4871.input reduction4871.output := by lin_cert using reduction4871.terms
theorem substitutionProof4871 : IsMapEvaluation generatorImages reduction4871.relations [644] reduction4871.output := by lin_cert using reduction4871.terms
def image4872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4872 : InImage map_21_160 image4872 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4872 : Bundle := named_bundle% "RealMapCertificates/relations/basis4872.json"
theorem reductionProof4872 : EqualModuloRelations reduction4872.relations reduction4872.input reduction4872.output := by lin_cert using reduction4872.terms
theorem substitutionProof4872 : IsMapEvaluation generatorImages reduction4872.relations [1,627] reduction4872.output := by lin_cert using reduction4872.terms
def map_21_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4965 : InImage map_21_161 image4965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4965 : Bundle := named_bundle% "RealMapCertificates/relations/basis4965.json"
theorem reductionProof4965 : EqualModuloRelations reduction4965.relations reduction4965.input reduction4965.output := by lin_cert using reduction4965.terms
theorem substitutionProof4965 : IsMapEvaluation generatorImages reduction4965.relations [8,8,294] reduction4965.output := by lin_cert using reduction4965.terms
def image4966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4966 : InImage map_21_161 image4966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4966 : Bundle := named_bundle% "RealMapCertificates/relations/basis4966.json"
theorem reductionProof4966 : EqualModuloRelations reduction4966.relations reduction4966.input reduction4966.output := by lin_cert using reduction4966.terms
theorem substitutionProof4966 : IsMapEvaluation generatorImages reduction4966.relations [0,646] reduction4966.output := by lin_cert using reduction4966.terms
def image4967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4967 : InImage map_21_161 image4967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4967 : Bundle := named_bundle% "RealMapCertificates/relations/basis4967.json"
theorem reductionProof4967 : EqualModuloRelations reduction4967.relations reduction4967.input reduction4967.output := by lin_cert using reduction4967.terms
theorem substitutionProof4967 : IsMapEvaluation generatorImages reduction4967.relations [0,0,0,0,0,0,0,0,0,575] reduction4967.output := by lin_cert using reduction4967.terms
def map_21_162 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5077 : InImage map_21_162 image5077 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5077 : Bundle := named_bundle% "RealMapCertificates/relations/basis5077.json"
theorem reductionProof5077 : EqualModuloRelations reduction5077.relations reduction5077.input reduction5077.output := by lin_cert using reduction5077.terms
theorem substitutionProof5077 : IsMapEvaluation generatorImages reduction5077.relations [666] reduction5077.output := by lin_cert using reduction5077.terms
def image5078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5078 : InImage map_21_162 image5078 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5078 : Bundle := named_bundle% "RealMapCertificates/relations/basis5078.json"
theorem reductionProof5078 : EqualModuloRelations reduction5078.relations reduction5078.input reduction5078.output := by lin_cert using reduction5078.terms
theorem substitutionProof5078 : IsMapEvaluation generatorImages reduction5078.relations [13,23,188] reduction5078.output := by lin_cert using reduction5078.terms
def image5079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5079 : InImage map_21_162 image5079 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5079 : Bundle := named_bundle% "RealMapCertificates/relations/basis5079.json"
theorem reductionProof5079 : EqualModuloRelations reduction5079.relations reduction5079.input reduction5079.output := by lin_cert using reduction5079.terms
theorem substitutionProof5079 : IsMapEvaluation generatorImages reduction5079.relations [9,472] reduction5079.output := by lin_cert using reduction5079.terms
def image5080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5080 : InImage map_21_162 image5080 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5080 : Bundle := named_bundle% "RealMapCertificates/relations/basis5080.json"
theorem reductionProof5080 : EqualModuloRelations reduction5080.relations reduction5080.input reduction5080.output := by lin_cert using reduction5080.terms
theorem substitutionProof5080 : IsMapEvaluation generatorImages reduction5080.relations [1,646] reduction5080.output := by lin_cert using reduction5080.terms
def image5081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5081 : InImage map_21_162 image5081 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5081 : Bundle := named_bundle% "RealMapCertificates/relations/basis5081.json"
theorem reductionProof5081 : EqualModuloRelations reduction5081.relations reduction5081.input reduction5081.output := by lin_cert using reduction5081.terms
theorem substitutionProof5081 : IsMapEvaluation generatorImages reduction5081.relations [0,655] reduction5081.output := by lin_cert using reduction5081.terms
def map_21_163 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5161 : InImage map_21_163 image5161 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5161 : Bundle := named_bundle% "RealMapCertificates/relations/basis5161.json"
theorem reductionProof5161 : EqualModuloRelations reduction5161.relations reduction5161.input reduction5161.output := by lin_cert using reduction5161.terms
theorem substitutionProof5161 : IsMapEvaluation generatorImages reduction5161.relations [13,13,13,13,76] reduction5161.output := by lin_cert using reduction5161.terms
def image5162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5162 : InImage map_21_163 image5162 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5162 : Bundle := named_bundle% "RealMapCertificates/relations/basis5162.json"
theorem reductionProof5162 : EqualModuloRelations reduction5162.relations reduction5162.input reduction5162.output := by lin_cert using reduction5162.terms
theorem substitutionProof5162 : IsMapEvaluation generatorImages reduction5162.relations [1,655] reduction5162.output := by lin_cert using reduction5162.terms
def image5163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5163 : InImage map_21_163 image5163 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5163 : Bundle := named_bundle% "RealMapCertificates/relations/basis5163.json"
theorem reductionProof5163 : EqualModuloRelations reduction5163.relations reduction5163.input reduction5163.output := by lin_cert using reduction5163.terms
theorem substitutionProof5163 : IsMapEvaluation generatorImages reduction5163.relations [0,667] reduction5163.output := by lin_cert using reduction5163.terms
def map_21_164 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5257 : InImage map_21_164 image5257 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5257 : Bundle := named_bundle% "RealMapCertificates/relations/basis5257.json"
theorem reductionProof5257 : EqualModuloRelations reduction5257.relations reduction5257.input reduction5257.output := by lin_cert using reduction5257.terms
theorem substitutionProof5257 : IsMapEvaluation generatorImages reduction5257.relations [8,9,294] reduction5257.output := by lin_cert using reduction5257.terms
def image5258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5258 : InImage map_21_164 image5258 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5258 : Bundle := named_bundle% "RealMapCertificates/relations/basis5258.json"
theorem reductionProof5258 : EqualModuloRelations reduction5258.relations reduction5258.input reduction5258.output := by lin_cert using reduction5258.terms
theorem substitutionProof5258 : IsMapEvaluation generatorImages reduction5258.relations [2,646] reduction5258.output := by lin_cert using reduction5258.terms
def map_21_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5378 : InImage map_21_165 image5378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5378 : Bundle := named_bundle% "RealMapCertificates/relations/basis5378.json"
theorem reductionProof5378 : EqualModuloRelations reduction5378.relations reduction5378.input reduction5378.output := by lin_cert using reduction5378.terms
theorem substitutionProof5378 : IsMapEvaluation generatorImages reduction5378.relations [702] reduction5378.output := by lin_cert using reduction5378.terms
def image5379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5379 : InImage map_21_165 image5379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5379 : Bundle := named_bundle% "RealMapCertificates/relations/basis5379.json"
theorem reductionProof5379 : EqualModuloRelations reduction5379.relations reduction5379.input reduction5379.output := by lin_cert using reduction5379.terms
theorem substitutionProof5379 : IsMapEvaluation generatorImages reduction5379.relations [64,188] reduction5379.output := by lin_cert using reduction5379.terms
def image5380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5380 : InImage map_21_165 image5380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5380 : Bundle := named_bundle% "RealMapCertificates/relations/basis5380.json"
theorem reductionProof5380 : EqualModuloRelations reduction5380.relations reduction5380.input reduction5380.output := by lin_cert using reduction5380.terms
theorem substitutionProof5380 : IsMapEvaluation generatorImages reduction5380.relations [13,472] reduction5380.output := by lin_cert using reduction5380.terms
def image5381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5381 : InImage map_21_165 image5381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5381 : Bundle := named_bundle% "RealMapCertificates/relations/basis5381.json"
theorem reductionProof5381 : EqualModuloRelations reduction5381.relations reduction5381.input reduction5381.output := by lin_cert using reduction5381.terms
theorem substitutionProof5381 : IsMapEvaluation generatorImages reduction5381.relations [0,690] reduction5381.output := by lin_cert using reduction5381.terms
def map_21_166 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5470 : InImage map_21_166 image5470 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5470 : Bundle := named_bundle% "RealMapCertificates/relations/basis5470.json"
theorem reductionProof5470 : EqualModuloRelations reduction5470.relations reduction5470.input reduction5470.output := by lin_cert using reduction5470.terms
theorem substitutionProof5470 : IsMapEvaluation generatorImages reduction5470.relations [3,627] reduction5470.output := by lin_cert using reduction5470.terms
def image5471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5471 : InImage map_21_166 image5471 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5471 : Bundle := named_bundle% "RealMapCertificates/relations/basis5471.json"
theorem reductionProof5471 : EqualModuloRelations reduction5471.relations reduction5471.input reduction5471.output := by lin_cert using reduction5471.terms
theorem substitutionProof5471 : IsMapEvaluation generatorImages reduction5471.relations [1,690] reduction5471.output := by lin_cert using reduction5471.terms
def image5472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5472 : InImage map_21_166 image5472 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5472 : Bundle := named_bundle% "RealMapCertificates/relations/basis5472.json"
theorem reductionProof5472 : EqualModuloRelations reduction5472.relations reduction5472.input reduction5472.output := by lin_cert using reduction5472.terms
theorem substitutionProof5472 : IsMapEvaluation generatorImages reduction5472.relations [0,703] reduction5472.output := by lin_cert using reduction5472.terms
def map_21_167 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5580 : InImage map_21_167 image5580 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5580 : Bundle := named_bundle% "RealMapCertificates/relations/basis5580.json"
theorem reductionProof5580 : EqualModuloRelations reduction5580.relations reduction5580.input reduction5580.output := by lin_cert using reduction5580.terms
theorem substitutionProof5580 : IsMapEvaluation generatorImages reduction5580.relations [8,13,294] reduction5580.output := by lin_cert using reduction5580.terms
def image5581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5581 : InImage map_21_167 image5581 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5581 : Bundle := named_bundle% "RealMapCertificates/relations/basis5581.json"
theorem reductionProof5581 : EqualModuloRelations reduction5581.relations reduction5581.input reduction5581.output := by lin_cert using reduction5581.terms
theorem substitutionProof5581 : IsMapEvaluation generatorImages reduction5581.relations [0,717] reduction5581.output := by lin_cert using reduction5581.terms
def image5582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5582 : InImage map_21_167 image5582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5582 : Bundle := named_bundle% "RealMapCertificates/relations/basis5582.json"
theorem reductionProof5582 : EqualModuloRelations reduction5582.relations reduction5582.input reduction5582.output := by lin_cert using reduction5582.terms
theorem substitutionProof5582 : IsMapEvaluation generatorImages reduction5582.relations [0,0,706] reduction5582.output := by lin_cert using reduction5582.terms
def map_21_168 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5699 : InImage map_21_168 image5699 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5699 : Bundle := named_bundle% "RealMapCertificates/relations/basis5699.json"
theorem reductionProof5699 : EqualModuloRelations reduction5699.relations reduction5699.input reduction5699.output := by lin_cert using reduction5699.terms
theorem substitutionProof5699 : IsMapEvaluation generatorImages reduction5699.relations [72,188] reduction5699.output := by lin_cert using reduction5699.terms
def image5700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5700 : InImage map_21_168 image5700 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5700 : Bundle := named_bundle% "RealMapCertificates/relations/basis5700.json"
theorem reductionProof5700 : EqualModuloRelations reduction5700.relations reduction5700.input reduction5700.output := by lin_cert using reduction5700.terms
theorem substitutionProof5700 : IsMapEvaluation generatorImages reduction5700.relations [13,13,268] reduction5700.output := by lin_cert using reduction5700.terms
def image5701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5701 : InImage map_21_168 image5701 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5701 : Bundle := named_bundle% "RealMapCertificates/relations/basis5701.json"
theorem reductionProof5701 : EqualModuloRelations reduction5701.relations reduction5701.input reduction5701.output := by lin_cert using reduction5701.terms
theorem substitutionProof5701 : IsMapEvaluation generatorImages reduction5701.relations [3,646] reduction5701.output := by lin_cert using reduction5701.terms
def image5702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5702 : InImage map_21_168 image5702 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5702 : Bundle := named_bundle% "RealMapCertificates/relations/basis5702.json"
theorem reductionProof5702 : EqualModuloRelations reduction5702.relations reduction5702.input reduction5702.output := by lin_cert using reduction5702.terms
theorem substitutionProof5702 : IsMapEvaluation generatorImages reduction5702.relations [2,690] reduction5702.output := by lin_cert using reduction5702.terms
def image5703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5703 : InImage map_21_168 image5703 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5703 : Bundle := named_bundle% "RealMapCertificates/relations/basis5703.json"
theorem reductionProof5703 : EqualModuloRelations reduction5703.relations reduction5703.input reduction5703.output := by lin_cert using reduction5703.terms
theorem substitutionProof5703 : IsMapEvaluation generatorImages reduction5703.relations [0,0,3,628] reduction5703.output := by lin_cert using reduction5703.terms
def image5704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5704 : InImage map_21_168 image5704 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5704 : Bundle := named_bundle% "RealMapCertificates/relations/basis5704.json"
theorem reductionProof5704 : EqualModuloRelations reduction5704.relations reduction5704.input reduction5704.output := by lin_cert using reduction5704.terms
theorem substitutionProof5704 : IsMapEvaluation generatorImages reduction5704.relations [0,0,0,0,693] reduction5704.output := by lin_cert using reduction5704.terms
def map_21_169 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5803 : InImage map_21_169 image5803 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5803 : Bundle := named_bundle% "RealMapCertificates/relations/basis5803.json"
theorem reductionProof5803 : EqualModuloRelations reduction5803.relations reduction5803.input reduction5803.output := by lin_cert using reduction5803.terms
theorem substitutionProof5803 : IsMapEvaluation generatorImages reduction5803.relations [754] reduction5803.output := by lin_cert using reduction5803.terms
def image5804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5804 : InImage map_21_169 image5804 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5804 : Bundle := named_bundle% "RealMapCertificates/relations/basis5804.json"
theorem reductionProof5804 : EqualModuloRelations reduction5804.relations reduction5804.input reduction5804.output := by lin_cert using reduction5804.terms
theorem substitutionProof5804 : IsMapEvaluation generatorImages reduction5804.relations [1,728] reduction5804.output := by lin_cert using reduction5804.terms
def image5805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5805 : InImage map_21_169 image5805 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5805 : Bundle := named_bundle% "RealMapCertificates/relations/basis5805.json"
theorem reductionProof5805 : EqualModuloRelations reduction5805.relations reduction5805.input reduction5805.output := by lin_cert using reduction5805.terms
theorem substitutionProof5805 : IsMapEvaluation generatorImages reduction5805.relations [0,739] reduction5805.output := by lin_cert using reduction5805.terms
def map_21_170 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5911 : InImage map_21_170 image5911 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5911 : Bundle := named_bundle% "RealMapCertificates/relations/basis5911.json"
theorem reductionProof5911 : EqualModuloRelations reduction5911.relations reduction5911.input reduction5911.output := by lin_cert using reduction5911.terms
theorem substitutionProof5911 : IsMapEvaluation generatorImages reduction5911.relations [9,13,294] reduction5911.output := by lin_cert using reduction5911.terms
def image5912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5912 : InImage map_21_170 image5912 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5912 : Bundle := named_bundle% "RealMapCertificates/relations/basis5912.json"
theorem reductionProof5912 : EqualModuloRelations reduction5912.relations reduction5912.input reduction5912.output := by lin_cert using reduction5912.terms
theorem substitutionProof5912 : IsMapEvaluation generatorImages reduction5912.relations [0,0,43,266] reduction5912.output := by lin_cert using reduction5912.terms
def map_21_171 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6043 : InImage map_21_171 image6043 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6043 : Bundle := named_bundle% "RealMapCertificates/relations/basis6043.json"
theorem reductionProof6043 : EqualModuloRelations reduction6043.relations reduction6043.input reduction6043.output := by lin_cert using reduction6043.terms
theorem substitutionProof6043 : IsMapEvaluation generatorImages reduction6043.relations [79,188] reduction6043.output := by lin_cert using reduction6043.terms
def image6044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6044 : InImage map_21_171 image6044 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6044 : Bundle := named_bundle% "RealMapCertificates/relations/basis6044.json"
theorem reductionProof6044 : EqualModuloRelations reduction6044.relations reduction6044.input reduction6044.output := by lin_cert using reduction6044.terms
theorem substitutionProof6044 : IsMapEvaluation generatorImages reduction6044.relations [13,13,287] reduction6044.output := by lin_cert using reduction6044.terms
def image6045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6045 : InImage map_21_171 image6045 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6045 : Bundle := named_bundle% "RealMapCertificates/relations/basis6045.json"
theorem reductionProof6045 : EqualModuloRelations reduction6045.relations reduction6045.input reduction6045.output := by lin_cert using reduction6045.terms
theorem substitutionProof6045 : IsMapEvaluation generatorImages reduction6045.relations [8,582] reduction6045.output := by lin_cert using reduction6045.terms
def image6046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6046 : InImage map_21_171 image6046 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6046 : Bundle := named_bundle% "RealMapCertificates/relations/basis6046.json"
theorem reductionProof6046 : EqualModuloRelations reduction6046.relations reduction6046.input reduction6046.output := by lin_cert using reduction6046.terms
theorem substitutionProof6046 : IsMapEvaluation generatorImages reduction6046.relations [0,64,209] reduction6046.output := by lin_cert using reduction6046.terms
def map_21_172 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6136 : InImage map_21_172 image6136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6136 : Bundle := named_bundle% "RealMapCertificates/relations/basis6136.json"
theorem reductionProof6136 : EqualModuloRelations reduction6136.relations reduction6136.input reduction6136.output := by lin_cert using reduction6136.terms
theorem substitutionProof6136 : IsMapEvaluation generatorImages reduction6136.relations [1,64,209] reduction6136.output := by lin_cert using reduction6136.terms
def image6137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6137 : InImage map_21_172 image6137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6137 : Bundle := named_bundle% "RealMapCertificates/relations/basis6137.json"
theorem reductionProof6137 : EqualModuloRelations reduction6137.relations reduction6137.input reduction6137.output := by lin_cert using reduction6137.terms
theorem substitutionProof6137 : IsMapEvaluation generatorImages reduction6137.relations [0,17,475] reduction6137.output := by lin_cert using reduction6137.terms
def image6138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6138 : InImage map_21_172 image6138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6138 : Bundle := named_bundle% "RealMapCertificates/relations/basis6138.json"
theorem reductionProof6138 : EqualModuloRelations reduction6138.relations reduction6138.input reduction6138.output := by lin_cert using reduction6138.terms
theorem substitutionProof6138 : IsMapEvaluation generatorImages reduction6138.relations [0,0,760] reduction6138.output := by lin_cert using reduction6138.terms
def map_21_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6247 : InImage map_21_173 image6247 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6247 : Bundle := named_bundle% "RealMapCertificates/relations/basis6247.json"
theorem reductionProof6247 : EqualModuloRelations reduction6247.relations reduction6247.input reduction6247.output := by lin_cert using reduction6247.terms
theorem substitutionProof6247 : IsMapEvaluation generatorImages reduction6247.relations [13,13,294] reduction6247.output := by lin_cert using reduction6247.terms
def image6248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6248 : InImage map_21_173 image6248 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6248 : Bundle := named_bundle% "RealMapCertificates/relations/basis6248.json"
theorem reductionProof6248 : EqualModuloRelations reduction6248.relations reduction6248.input reduction6248.output := by lin_cert using reduction6248.terms
theorem substitutionProof6248 : IsMapEvaluation generatorImages reduction6248.relations [0,0,780] reduction6248.output := by lin_cert using reduction6248.terms
def map_21_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6380 : InImage map_21_174 image6380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6380 : Bundle := named_bundle% "RealMapCertificates/relations/basis6380.json"
theorem reductionProof6380 : EqualModuloRelations reduction6380.relations reduction6380.input reduction6380.output := by lin_cert using reduction6380.terms
theorem substitutionProof6380 : IsMapEvaluation generatorImages reduction6380.relations [80,201] reduction6380.output := by lin_cert using reduction6380.terms
def image6381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6381 : InImage map_21_174 image6381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6381 : Bundle := named_bundle% "RealMapCertificates/relations/basis6381.json"
theorem reductionProof6381 : EqualModuloRelations reduction6381.relations reduction6381.input reduction6381.output := by lin_cert using reduction6381.terms
theorem substitutionProof6381 : IsMapEvaluation generatorImages reduction6381.relations [7,627] reduction6381.output := by lin_cert using reduction6381.terms
def image6382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6382 : InImage map_21_174 image6382 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6382 : Bundle := named_bundle% "RealMapCertificates/relations/basis6382.json"
theorem reductionProof6382 : EqualModuloRelations reduction6382.relations reduction6382.input reduction6382.output := by lin_cert using reduction6382.terms
theorem substitutionProof6382 : IsMapEvaluation generatorImages reduction6382.relations [3,717] reduction6382.output := by lin_cert using reduction6382.terms
def image6383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6383 : InImage map_21_174 image6383 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6383 : Bundle := named_bundle% "RealMapCertificates/relations/basis6383.json"
theorem reductionProof6383 : EqualModuloRelations reduction6383.relations reduction6383.input reduction6383.output := by lin_cert using reduction6383.terms
theorem substitutionProof6383 : IsMapEvaluation generatorImages reduction6383.relations [0,0,0,0,762] reduction6383.output := by lin_cert using reduction6383.terms
def map_21_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6483 : InImage map_21_175 image6483 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6483 : Bundle := named_bundle% "RealMapCertificates/relations/basis6483.json"
theorem reductionProof6483 : EqualModuloRelations reduction6483.relations reduction6483.input reduction6483.output := by lin_cert using reduction6483.terms
theorem substitutionProof6483 : IsMapEvaluation generatorImages reduction6483.relations [0,8,613] reduction6483.output := by lin_cert using reduction6483.terms
def image6484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6484 : InImage map_21_175 image6484 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6484 : Bundle := named_bundle% "RealMapCertificates/relations/basis6484.json"
theorem reductionProof6484 : EqualModuloRelations reduction6484.relations reduction6484.input reduction6484.output := by lin_cert using reduction6484.terms
theorem substitutionProof6484 : IsMapEvaluation generatorImages reduction6484.relations [0,0,0,0,0,763] reduction6484.output := by lin_cert using reduction6484.terms
def map_21_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6590 : InImage map_21_176 image6590 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6590 : Bundle := named_bundle% "RealMapCertificates/relations/basis6590.json"
theorem reductionProof6590 : EqualModuloRelations reduction6590.relations reduction6590.input reduction6590.output := by lin_cert using reduction6590.terms
theorem substitutionProof6590 : IsMapEvaluation generatorImages reduction6590.relations [834] reduction6590.output := by lin_cert using reduction6590.terms
def image6591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6591 : InImage map_21_176 image6591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6591 : Bundle := named_bundle% "RealMapCertificates/relations/basis6591.json"
theorem reductionProof6591 : EqualModuloRelations reduction6591.relations reduction6591.input reduction6591.output := by lin_cert using reduction6591.terms
theorem substitutionProof6591 : IsMapEvaluation generatorImages reduction6591.relations [833] reduction6591.output := by lin_cert using reduction6591.terms
def map_21_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6727 : InImage map_21_177 image6727 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6727 : Bundle := named_bundle% "RealMapCertificates/relations/basis6727.json"
theorem reductionProof6727 : EqualModuloRelations reduction6727.relations reduction6727.input reduction6727.output := by lin_cert using reduction6727.terms
theorem substitutionProof6727 : IsMapEvaluation generatorImages reduction6727.relations [80,212] reduction6727.output := by lin_cert using reduction6727.terms
def image6728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6728 : InImage map_21_177 image6728 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6728 : Bundle := named_bundle% "RealMapCertificates/relations/basis6728.json"
theorem reductionProof6728 : EqualModuloRelations reduction6728.relations reduction6728.input reduction6728.output := by lin_cert using reduction6728.terms
theorem substitutionProof6728 : IsMapEvaluation generatorImages reduction6728.relations [7,655] reduction6728.output := by lin_cert using reduction6728.terms
def map_21_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6822 : InImage map_21_178 image6822 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6822 : Bundle := named_bundle% "RealMapCertificates/relations/basis6822.json"
theorem reductionProof6822 : EqualModuloRelations reduction6822.relations reduction6822.input reduction6822.output := by lin_cert using reduction6822.terms
theorem substitutionProof6822 : IsMapEvaluation generatorImages reduction6822.relations [1,79,209] reduction6822.output := by lin_cert using reduction6822.terms
def image6823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6823 : InImage map_21_178 image6823 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6823 : Bundle := named_bundle% "RealMapCertificates/relations/basis6823.json"
theorem reductionProof6823 : EqualModuloRelations reduction6823.relations reduction6823.input reduction6823.output := by lin_cert using reduction6823.terms
theorem substitutionProof6823 : IsMapEvaluation generatorImages reduction6823.relations [0,8,17,333] reduction6823.output := by lin_cert using reduction6823.terms
def image6824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6824 : InImage map_21_178 image6824 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6824 : Bundle := named_bundle% "RealMapCertificates/relations/basis6824.json"
theorem reductionProof6824 : EqualModuloRelations reduction6824.relations reduction6824.input reduction6824.output := by lin_cert using reduction6824.terms
theorem substitutionProof6824 : IsMapEvaluation generatorImages reduction6824.relations [0,0,64,235] reduction6824.output := by lin_cert using reduction6824.terms
def image6825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6825 : InImage map_21_178 image6825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6825 : Bundle := named_bundle% "RealMapCertificates/relations/basis6825.json"
theorem reductionProof6825 : EqualModuloRelations reduction6825.relations reduction6825.input reduction6825.output := by lin_cert using reduction6825.terms
theorem substitutionProof6825 : IsMapEvaluation generatorImages reduction6825.relations [0,0,0,0,0,0,0,0,0,0,743] reduction6825.output := by lin_cert using reduction6825.terms
def map_21_179 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6956 : InImage map_21_179 image6956 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6956 : Bundle := named_bundle% "RealMapCertificates/relations/basis6956.json"
theorem reductionProof6956 : EqualModuloRelations reduction6956.relations reduction6956.input reduction6956.output := by lin_cert using reduction6956.terms
theorem substitutionProof6956 : IsMapEvaluation generatorImages reduction6956.relations [878] reduction6956.output := by lin_cert using reduction6956.terms
def image6957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6957 : InImage map_21_179 image6957 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6957 : Bundle := named_bundle% "RealMapCertificates/relations/basis6957.json"
theorem reductionProof6957 : EqualModuloRelations reduction6957.relations reduction6957.input reduction6957.output := by lin_cert using reduction6957.terms
theorem substitutionProof6957 : IsMapEvaluation generatorImages reduction6957.relations [877] reduction6957.output := by lin_cert using reduction6957.terms
def image6958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6958 : InImage map_21_179 image6958 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6958 : Bundle := named_bundle% "RealMapCertificates/relations/basis6958.json"
theorem reductionProof6958 : EqualModuloRelations reduction6958.relations reduction6958.input reduction6958.output := by lin_cert using reduction6958.terms
theorem substitutionProof6958 : IsMapEvaluation generatorImages reduction6958.relations [13,13,67,75] reduction6958.output := by lin_cert using reduction6958.terms
def image6959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6959 : InImage map_21_179 image6959 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6959 : Bundle := named_bundle% "RealMapCertificates/relations/basis6959.json"
theorem reductionProof6959 : EqualModuloRelations reduction6959.relations reduction6959.input reduction6959.output := by lin_cert using reduction6959.terms
theorem substitutionProof6959 : IsMapEvaluation generatorImages reduction6959.relations [1,857] reduction6959.output := by lin_cert using reduction6959.terms
def image6960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6960 : InImage map_21_179 image6960 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6960 : Bundle := named_bundle% "RealMapCertificates/relations/basis6960.json"
theorem reductionProof6960 : EqualModuloRelations reduction6960.relations reduction6960.input reduction6960.output := by lin_cert using reduction6960.terms
theorem substitutionProof6960 : IsMapEvaluation generatorImages reduction6960.relations [0,0,0,837] reduction6960.output := by lin_cert using reduction6960.terms
def image6961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6961 : InImage map_21_179 image6961 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6961 : Bundle := named_bundle% "RealMapCertificates/relations/basis6961.json"
theorem reductionProof6961 : EqualModuloRelations reduction6961.relations reduction6961.input reduction6961.output := by lin_cert using reduction6961.terms
theorem substitutionProof6961 : IsMapEvaluation generatorImages reduction6961.relations [0,0,0,836] reduction6961.output := by lin_cert using reduction6961.terms
def map_21_180 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7102 : InImage map_21_180 image7102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7102 : Bundle := named_bundle% "RealMapCertificates/relations/basis7102.json"
theorem reductionProof7102 : EqualModuloRelations reduction7102.relations reduction7102.input reduction7102.output := by lin_cert using reduction7102.terms
theorem substitutionProof7102 : IsMapEvaluation generatorImages reduction7102.relations [13,13,13,213] reduction7102.output := by lin_cert using reduction7102.terms
def image7103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7103 : InImage map_21_180 image7103 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7103 : Bundle := named_bundle% "RealMapCertificates/relations/basis7103.json"
theorem reductionProof7103 : EqualModuloRelations reduction7103.relations reduction7103.input reduction7103.output := by lin_cert using reduction7103.terms
theorem substitutionProof7103 : IsMapEvaluation generatorImages reduction7103.relations [0,0,0,0,838] reduction7103.output := by lin_cert using reduction7103.terms
def map_21_181 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7203 : InImage map_21_181 image7203 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7203 : Bundle := named_bundle% "RealMapCertificates/relations/basis7203.json"
theorem reductionProof7203 : EqualModuloRelations reduction7203.relations reduction7203.input reduction7203.output := by lin_cert using reduction7203.terms
theorem substitutionProof7203 : IsMapEvaluation generatorImages reduction7203.relations [2,857] reduction7203.output := by lin_cert using reduction7203.terms
def image7204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7204 : InImage map_21_181 image7204 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7204 : Bundle := named_bundle% "RealMapCertificates/relations/basis7204.json"
theorem reductionProof7204 : EqualModuloRelations reduction7204.relations reduction7204.input reduction7204.output := by lin_cert using reduction7204.terms
theorem substitutionProof7204 : IsMapEvaluation generatorImages reduction7204.relations [1,1,64,239] reduction7204.output := by lin_cert using reduction7204.terms
def image7205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7205 : InImage map_21_181 image7205 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7205 : Bundle := named_bundle% "RealMapCertificates/relations/basis7205.json"
theorem reductionProof7205 : EqualModuloRelations reduction7205.relations reduction7205.input reduction7205.output := by lin_cert using reduction7205.terms
theorem substitutionProof7205 : IsMapEvaluation generatorImages reduction7205.relations [0,0,879] reduction7205.output := by lin_cert using reduction7205.terms
def image7206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7206 : InImage map_21_181 image7206 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7206 : Bundle := named_bundle% "RealMapCertificates/relations/basis7206.json"
theorem reductionProof7206 : EqualModuloRelations reduction7206.relations reduction7206.input reduction7206.output := by lin_cert using reduction7206.terms
theorem substitutionProof7206 : IsMapEvaluation generatorImages reduction7206.relations [0,0,0,0,0,0,825] reduction7206.output := by lin_cert using reduction7206.terms
def map_21_182 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7315 : InImage map_21_182 image7315 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7315 : Bundle := named_bundle% "RealMapCertificates/relations/basis7315.json"
theorem reductionProof7315 : EqualModuloRelations reduction7315.relations reduction7315.input reduction7315.output := by lin_cert using reduction7315.terms
theorem substitutionProof7315 : IsMapEvaluation generatorImages reduction7315.relations [904] reduction7315.output := by lin_cert using reduction7315.terms
def image7316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7316 : InImage map_21_182 image7316 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7316 : Bundle := named_bundle% "RealMapCertificates/relations/basis7316.json"
theorem reductionProof7316 : EqualModuloRelations reduction7316.relations reduction7316.input reduction7316.output := by lin_cert using reduction7316.terms
theorem substitutionProof7316 : IsMapEvaluation generatorImages reduction7316.relations [8,692] reduction7316.output := by lin_cert using reduction7316.terms
def map_21_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7565 : InImage map_21_184 image7565 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7565 : Bundle := named_bundle% "RealMapCertificates/relations/basis7565.json"
theorem reductionProof7565 : EqualModuloRelations reduction7565.relations reduction7565.input reduction7565.output := by lin_cert using reduction7565.terms
theorem substitutionProof7565 : IsMapEvaluation generatorImages reduction7565.relations [930] reduction7565.output := by lin_cert using reduction7565.terms
def image7566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7566 : InImage map_21_184 image7566 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7566 : Bundle := named_bundle% "RealMapCertificates/relations/basis7566.json"
theorem reductionProof7566 : EqualModuloRelations reduction7566.relations reduction7566.input reduction7566.output := by lin_cert using reduction7566.terms
theorem substitutionProof7566 : IsMapEvaluation generatorImages reduction7566.relations [67,267] reduction7566.output := by lin_cert using reduction7566.terms
def image7567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7567 : InImage map_21_184 image7567 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7567 : Bundle := named_bundle% "RealMapCertificates/relations/basis7567.json"
theorem reductionProof7567 : EqualModuloRelations reduction7567.relations reduction7567.input reduction7567.output := by lin_cert using reduction7567.terms
theorem substitutionProof7567 : IsMapEvaluation generatorImages reduction7567.relations [13,13,417] reduction7567.output := by lin_cert using reduction7567.terms
def map_21_185 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7684 : InImage map_21_185 image7684 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7684 : Bundle := named_bundle% "RealMapCertificates/relations/basis7684.json"
theorem reductionProof7684 : EqualModuloRelations reduction7684.relations reduction7684.input reduction7684.output := by lin_cert using reduction7684.terms
theorem substitutionProof7684 : IsMapEvaluation generatorImages reduction7684.relations [942] reduction7684.output := by lin_cert using reduction7684.terms
def image7685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7685 : InImage map_21_185 image7685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7685 : Bundle := named_bundle% "RealMapCertificates/relations/basis7685.json"
theorem reductionProof7685 : EqualModuloRelations reduction7685.relations reduction7685.input reduction7685.output := by lin_cert using reduction7685.terms
theorem substitutionProof7685 : IsMapEvaluation generatorImages reduction7685.relations [9,692] reduction7685.output := by lin_cert using reduction7685.terms
def image7686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7686 : InImage map_21_185 image7686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7686 : Bundle := named_bundle% "RealMapCertificates/relations/basis7686.json"
theorem reductionProof7686 : EqualModuloRelations reduction7686.relations reduction7686.input reduction7686.output := by lin_cert using reduction7686.terms
theorem substitutionProof7686 : IsMapEvaluation generatorImages reduction7686.relations [1,64,269] reduction7686.output := by lin_cert using reduction7686.terms
def image7687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7687 : InImage map_21_185 image7687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7687 : Bundle := named_bundle% "RealMapCertificates/relations/basis7687.json"
theorem reductionProof7687 : EqualModuloRelations reduction7687.relations reduction7687.input reduction7687.output := by lin_cert using reduction7687.terms
theorem substitutionProof7687 : IsMapEvaluation generatorImages reduction7687.relations [0,68,267] reduction7687.output := by lin_cert using reduction7687.terms
def image7688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7688 : InImage map_21_185 image7688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7688 : Bundle := named_bundle% "RealMapCertificates/relations/basis7688.json"
theorem reductionProof7688 : EqualModuloRelations reduction7688.relations reduction7688.input reduction7688.output := by lin_cert using reduction7688.terms
theorem substitutionProof7688 : IsMapEvaluation generatorImages reduction7688.relations [0,0,0,0,891] reduction7688.output := by lin_cert using reduction7688.terms
end RealMapCertificates
