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
  | 18 => []
  | 24 => []
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 43 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 58 => [[3,4,4,4,4]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 90 => []
  | 188 => []
  | 189 => []
  | 209 => []
  | 212 => []
  | 286 => []
  | 302 => []
  | 324 => []
  | 351 => []
  | 359 => []
  | 373 => []
  | 474 => []
  | 532 => []
  | 604 => []
  | 629 => []
  | 655 => []
  | 690 => []
  | 691 => []
  | 692 => []
  | 857 => []
  | 908 => []
  | 943 => []
  | 959 => []
  | 960 => []
  | 964 => []
  | 981 => []
  | 982 => []
  | 984 => []
  | 1000 => []
  | 1002 => []
  | 1011 => []
  | 1014 => []
  | 1015 => []
  | 1037 => []
  | 1050 => []
  | 1051 => []
  | 1064 => []
  | 1065 => []
  | 1068 => []
  | 1106 => []
  | 1107 => []
  | 1108 => []
  | 1124 => []
  | 1126 => []
  | 1148 => []
  | 1149 => []
  | 1150 => []
  | 1151 => []
  | 1152 => []
  | 1153 => []
  | 1154 => []
  | 1172 => []
  | 1173 => []
  | 1175 => []
  | 1207 => []
  | 1222 => []
  | 1243 => []
  | 1244 => []
  | 1245 => []
  | 1247 => []
  | 1257 => []
  | 1258 => []
  | 1260 => []
  | 1263 => []
  | 1267 => []
  | 1318 => []
  | 1338 => []
  | 1370 => []
  | _ => []
def map_21_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7833 : InImage map_21_186 image7833 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7833 : Bundle := named_bundle% "RealMapCertificates/relations/basis7833.json"
theorem reductionProof7833 : EqualModuloRelations reduction7833.relations reduction7833.input reduction7833.output := by lin_cert using reduction7833.terms
theorem substitutionProof7833 : IsMapEvaluation generatorImages reduction7833.relations [9,13,474] reduction7833.output := by lin_cert using reduction7833.terms
def image7834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7834 : InImage map_21_186 image7834 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7834 : Bundle := named_bundle% "RealMapCertificates/relations/basis7834.json"
theorem reductionProof7834 : EqualModuloRelations reduction7834.relations reduction7834.input reduction7834.output := by lin_cert using reduction7834.terms
theorem substitutionProof7834 : IsMapEvaluation generatorImages reduction7834.relations [0,943] reduction7834.output := by lin_cert using reduction7834.terms
def image7835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7835 : InImage map_21_186 image7835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7835 : Bundle := named_bundle% "RealMapCertificates/relations/basis7835.json"
theorem reductionProof7835 : EqualModuloRelations reduction7835.relations reduction7835.input reduction7835.output := by lin_cert using reduction7835.terms
theorem substitutionProof7835 : IsMapEvaluation generatorImages reduction7835.relations [0,0,0,0,908] reduction7835.output := by lin_cert using reduction7835.terms
def map_21_187 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7916 : InImage map_21_187 image7916 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7916 : Bundle := named_bundle% "RealMapCertificates/relations/basis7916.json"
theorem reductionProof7916 : EqualModuloRelations reduction7916.relations reduction7916.input reduction7916.output := by lin_cert using reduction7916.terms
theorem substitutionProof7916 : IsMapEvaluation generatorImages reduction7916.relations [67,286] reduction7916.output := by lin_cert using reduction7916.terms
def image7917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7917 : InImage map_21_187 image7917 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7917 : Bundle := named_bundle% "RealMapCertificates/relations/basis7917.json"
theorem reductionProof7917 : EqualModuloRelations reduction7917.relations reduction7917.input reduction7917.output := by lin_cert using reduction7917.terms
theorem substitutionProof7917 : IsMapEvaluation generatorImages reduction7917.relations [1,943] reduction7917.output := by lin_cert using reduction7917.terms
def image7918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7918 : InImage map_21_187 image7918 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7918 : Bundle := named_bundle% "RealMapCertificates/relations/basis7918.json"
theorem reductionProof7918 : EqualModuloRelations reduction7918.relations reduction7918.input reduction7918.output := by lin_cert using reduction7918.terms
theorem substitutionProof7918 : IsMapEvaluation generatorImages reduction7918.relations [0,959] reduction7918.output := by lin_cert using reduction7918.terms
def image7919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7919 : InImage map_21_187 image7919 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7919 : Bundle := named_bundle% "RealMapCertificates/relations/basis7919.json"
theorem reductionProof7919 : EqualModuloRelations reduction7919.relations reduction7919.input reduction7919.output := by lin_cert using reduction7919.terms
theorem substitutionProof7919 : IsMapEvaluation generatorImages reduction7919.relations [0,0,0,0,0,50,324] reduction7919.output := by lin_cert using reduction7919.terms
def map_21_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8030 : InImage map_21_188 image8030 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8030 : Bundle := named_bundle% "RealMapCertificates/relations/basis8030.json"
theorem reductionProof8030 : EqualModuloRelations reduction8030.relations reduction8030.input reduction8030.output := by lin_cert using reduction8030.terms
theorem substitutionProof8030 : IsMapEvaluation generatorImages reduction8030.relations [981] reduction8030.output := by lin_cert using reduction8030.terms
def image8031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8031 : InImage map_21_188 image8031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8031 : Bundle := named_bundle% "RealMapCertificates/relations/basis8031.json"
theorem reductionProof8031 : EqualModuloRelations reduction8031.relations reduction8031.input reduction8031.output := by lin_cert using reduction8031.terms
theorem substitutionProof8031 : IsMapEvaluation generatorImages reduction8031.relations [13,692] reduction8031.output := by lin_cert using reduction8031.terms
def image8032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8032 : InImage map_21_188 image8032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8032 : Bundle := named_bundle% "RealMapCertificates/relations/basis8032.json"
theorem reductionProof8032 : EqualModuloRelations reduction8032.relations reduction8032.input reduction8032.output := by lin_cert using reduction8032.terms
theorem substitutionProof8032 : IsMapEvaluation generatorImages reduction8032.relations [13,691] reduction8032.output := by lin_cert using reduction8032.terms
def image8033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8033 : InImage map_21_188 image8033 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8033 : Bundle := named_bundle% "RealMapCertificates/relations/basis8033.json"
theorem reductionProof8033 : EqualModuloRelations reduction8033.relations reduction8033.input reduction8033.output := by lin_cert using reduction8033.terms
theorem substitutionProof8033 : IsMapEvaluation generatorImages reduction8033.relations [1,959] reduction8033.output := by lin_cert using reduction8033.terms
def image8034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8034 : InImage map_21_188 image8034 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8034 : Bundle := named_bundle% "RealMapCertificates/relations/basis8034.json"
theorem reductionProof8034 : EqualModuloRelations reduction8034.relations reduction8034.input reduction8034.output := by lin_cert using reduction8034.terms
theorem substitutionProof8034 : IsMapEvaluation generatorImages reduction8034.relations [0,0,960] reduction8034.output := by lin_cert using reduction8034.terms
def map_21_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8186 : InImage map_21_189 image8186 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8186 : Bundle := named_bundle% "RealMapCertificates/relations/basis8186.json"
theorem reductionProof8186 : EqualModuloRelations reduction8186.relations reduction8186.input reduction8186.output := by lin_cert using reduction8186.terms
theorem substitutionProof8186 : IsMapEvaluation generatorImages reduction8186.relations [13,13,474] reduction8186.output := by lin_cert using reduction8186.terms
def image8187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8187 : InImage map_21_189 image8187 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8187 : Bundle := named_bundle% "RealMapCertificates/relations/basis8187.json"
theorem reductionProof8187 : EqualModuloRelations reduction8187.relations reduction8187.input reduction8187.output := by lin_cert using reduction8187.terms
theorem substitutionProof8187 : IsMapEvaluation generatorImages reduction8187.relations [1,58,324] reduction8187.output := by lin_cert using reduction8187.terms
def image8188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8188 : InImage map_21_189 image8188 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8188 : Bundle := named_bundle% "RealMapCertificates/relations/basis8188.json"
theorem reductionProof8188 : EqualModuloRelations reduction8188.relations reduction8188.input reduction8188.output := by lin_cert using reduction8188.terms
theorem substitutionProof8188 : IsMapEvaluation generatorImages reduction8188.relations [0,982] reduction8188.output := by lin_cert using reduction8188.terms
def map_21_190 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8277 : InImage map_21_190 image8277 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8277 : Bundle := named_bundle% "RealMapCertificates/relations/basis8277.json"
theorem reductionProof8277 : EqualModuloRelations reduction8277.relations reduction8277.input reduction8277.output := by lin_cert using reduction8277.terms
theorem substitutionProof8277 : IsMapEvaluation generatorImages reduction8277.relations [9,75,188] reduction8277.output := by lin_cert using reduction8277.terms
def image8278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8278 : InImage map_21_190 image8278 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8278 : Bundle := named_bundle% "RealMapCertificates/relations/basis8278.json"
theorem reductionProof8278 : EqualModuloRelations reduction8278.relations reduction8278.input reduction8278.output := by lin_cert using reduction8278.terms
theorem substitutionProof8278 : IsMapEvaluation generatorImages reduction8278.relations [0,0,984] reduction8278.output := by lin_cert using reduction8278.terms
def map_21_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8406 : InImage map_21_191 image8406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8406 : Bundle := named_bundle% "RealMapCertificates/relations/basis8406.json"
theorem reductionProof8406 : EqualModuloRelations reduction8406.relations reduction8406.input reduction8406.output := by lin_cert using reduction8406.terms
theorem substitutionProof8406 : IsMapEvaluation generatorImages reduction8406.relations [1037] reduction8406.output := by lin_cert using reduction8406.terms
def image8407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8407 : InImage map_21_191 image8407 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8407 : Bundle := named_bundle% "RealMapCertificates/relations/basis8407.json"
theorem reductionProof8407 : EqualModuloRelations reduction8407.relations reduction8407.input reduction8407.output := by lin_cert using reduction8407.terms
theorem substitutionProof8407 : IsMapEvaluation generatorImages reduction8407.relations [1,1,964] reduction8407.output := by lin_cert using reduction8407.terms
def map_21_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8557 : InImage map_21_192 image8557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8557 : Bundle := named_bundle% "RealMapCertificates/relations/basis8557.json"
theorem reductionProof8557 : EqualModuloRelations reduction8557.relations reduction8557.input reduction8557.output := by lin_cert using reduction8557.terms
theorem substitutionProof8557 : IsMapEvaluation generatorImages reduction8557.relations [1051] reduction8557.output := by lin_cert using reduction8557.terms
def image8558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8558 : InImage map_21_192 image8558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8558 : Bundle := named_bundle% "RealMapCertificates/relations/basis8558.json"
theorem reductionProof8558 : EqualModuloRelations reduction8558.relations reduction8558.input reduction8558.output := by lin_cert using reduction8558.terms
theorem substitutionProof8558 : IsMapEvaluation generatorImages reduction8558.relations [1050] reduction8558.output := by lin_cert using reduction8558.terms
def image8559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8559 : InImage map_21_192 image8559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8559 : Bundle := named_bundle% "RealMapCertificates/relations/basis8559.json"
theorem reductionProof8559 : EqualModuloRelations reduction8559.relations reduction8559.input reduction8559.output := by lin_cert using reduction8559.terms
theorem substitutionProof8559 : IsMapEvaluation generatorImages reduction8559.relations [0,0,1011] reduction8559.output := by lin_cert using reduction8559.terms
def map_21_193 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8650 : InImage map_21_193 image8650 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8650 : Bundle := named_bundle% "RealMapCertificates/relations/basis8650.json"
theorem reductionProof8650 : EqualModuloRelations reduction8650.relations reduction8650.input reduction8650.output := by lin_cert using reduction8650.terms
theorem substitutionProof8650 : IsMapEvaluation generatorImages reduction8650.relations [76,302] reduction8650.output := by lin_cert using reduction8650.terms
def image8651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8651 : InImage map_21_193 image8651 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8651 : Bundle := named_bundle% "RealMapCertificates/relations/basis8651.json"
theorem reductionProof8651 : EqualModuloRelations reduction8651.relations reduction8651.input reduction8651.output := by lin_cert using reduction8651.terms
theorem substitutionProof8651 : IsMapEvaluation generatorImages reduction8651.relations [18,655] reduction8651.output := by lin_cert using reduction8651.terms
def image8652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8652 : InImage map_21_193 image8652 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8652 : Bundle := named_bundle% "RealMapCertificates/relations/basis8652.json"
theorem reductionProof8652 : EqualModuloRelations reduction8652.relations reduction8652.input reduction8652.output := by lin_cert using reduction8652.terms
theorem substitutionProof8652 : IsMapEvaluation generatorImages reduction8652.relations [13,75,188] reduction8652.output := by lin_cert using reduction8652.terms
def image8653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8653 : InImage map_21_193 image8653 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8653 : Bundle := named_bundle% "RealMapCertificates/relations/basis8653.json"
theorem reductionProof8653 : EqualModuloRelations reduction8653.relations reduction8653.input reduction8653.output := by lin_cert using reduction8653.terms
theorem substitutionProof8653 : IsMapEvaluation generatorImages reduction8653.relations [7,857] reduction8653.output := by lin_cert using reduction8653.terms
def map_21_194 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8795 : InImage map_21_194 image8795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8795 : Bundle := named_bundle% "RealMapCertificates/relations/basis8795.json"
theorem reductionProof8795 : EqualModuloRelations reduction8795.relations reduction8795.input reduction8795.output := by lin_cert using reduction8795.terms
theorem substitutionProof8795 : IsMapEvaluation generatorImages reduction8795.relations [71,324] reduction8795.output := by lin_cert using reduction8795.terms
def image8796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8796 : InImage map_21_194 image8796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8796 : Bundle := named_bundle% "RealMapCertificates/relations/basis8796.json"
theorem reductionProof8796 : EqualModuloRelations reduction8796.relations reduction8796.input reduction8796.output := by lin_cert using reduction8796.terms
theorem substitutionProof8796 : IsMapEvaluation generatorImages reduction8796.relations [64,351] reduction8796.output := by lin_cert using reduction8796.terms
def image8797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8797 : InImage map_21_194 image8797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8797 : Bundle := named_bundle% "RealMapCertificates/relations/basis8797.json"
theorem reductionProof8797 : EqualModuloRelations reduction8797.relations reduction8797.input reduction8797.output := by lin_cert using reduction8797.terms
theorem substitutionProof8797 : IsMapEvaluation generatorImages reduction8797.relations [24,629] reduction8797.output := by lin_cert using reduction8797.terms
def image8798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8798 : InImage map_21_194 image8798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8798 : Bundle := named_bundle% "RealMapCertificates/relations/basis8798.json"
theorem reductionProof8798 : EqualModuloRelations reduction8798.relations reduction8798.input reduction8798.output := by lin_cert using reduction8798.terms
theorem substitutionProof8798 : IsMapEvaluation generatorImages reduction8798.relations [3,959] reduction8798.output := by lin_cert using reduction8798.terms
def image8799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8799 : InImage map_21_194 image8799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8799 : Bundle := named_bundle% "RealMapCertificates/relations/basis8799.json"
theorem reductionProof8799 : EqualModuloRelations reduction8799.relations reduction8799.input reduction8799.output := by lin_cert using reduction8799.terms
theorem substitutionProof8799 : IsMapEvaluation generatorImages reduction8799.relations [0,1064] reduction8799.output := by lin_cert using reduction8799.terms
def image8800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8800 : InImage map_21_194 image8800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8800 : Bundle := named_bundle% "RealMapCertificates/relations/basis8800.json"
theorem reductionProof8800 : EqualModuloRelations reduction8800.relations reduction8800.input reduction8800.output := by lin_cert using reduction8800.terms
theorem substitutionProof8800 : IsMapEvaluation generatorImages reduction8800.relations [0,0,0,0,1015] reduction8800.output := by lin_cert using reduction8800.terms
def map_21_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8962 : InImage map_21_195 image8962 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8962 : Bundle := named_bundle% "RealMapCertificates/relations/basis8962.json"
theorem reductionProof8962 : EqualModuloRelations reduction8962.relations reduction8962.input reduction8962.output := by lin_cert using reduction8962.terms
theorem substitutionProof8962 : IsMapEvaluation generatorImages reduction8962.relations [13,13,532] reduction8962.output := by lin_cert using reduction8962.terms
def image8963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8963 : InImage map_21_195 image8963 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8963 : Bundle := named_bundle% "RealMapCertificates/relations/basis8963.json"
theorem reductionProof8963 : EqualModuloRelations reduction8963.relations reduction8963.input reduction8963.output := by lin_cert using reduction8963.terms
theorem substitutionProof8963 : IsMapEvaluation generatorImages reduction8963.relations [1,1064] reduction8963.output := by lin_cert using reduction8963.terms
def image8964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8964 : InImage map_21_195 image8964 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8964 : Bundle := named_bundle% "RealMapCertificates/relations/basis8964.json"
theorem reductionProof8964 : EqualModuloRelations reduction8964.relations reduction8964.input reduction8964.output := by lin_cert using reduction8964.terms
theorem substitutionProof8964 : IsMapEvaluation generatorImages reduction8964.relations [0,3,960] reduction8964.output := by lin_cert using reduction8964.terms
def image8965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8965 : InImage map_21_195 image8965 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8965 : Bundle := named_bundle% "RealMapCertificates/relations/basis8965.json"
theorem reductionProof8965 : EqualModuloRelations reduction8965.relations reduction8965.input reduction8965.output := by lin_cert using reduction8965.terms
theorem substitutionProof8965 : IsMapEvaluation generatorImages reduction8965.relations [0,0,0,0,0,0,0,59,324] reduction8965.output := by lin_cert using reduction8965.terms
def map_21_196 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9066 : InImage map_21_196 image9066 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9066 : Bundle := named_bundle% "RealMapCertificates/relations/basis9066.json"
theorem reductionProof9066 : EqualModuloRelations reduction9066.relations reduction9066.input reduction9066.output := by lin_cert using reduction9066.terms
theorem substitutionProof9066 : IsMapEvaluation generatorImages reduction9066.relations [1106] reduction9066.output := by lin_cert using reduction9066.terms
def image9067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9067 : InImage map_21_196 image9067 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9067 : Bundle := named_bundle% "RealMapCertificates/relations/basis9067.json"
theorem reductionProof9067 : EqualModuloRelations reduction9067.relations reduction9067.input reduction9067.output := by lin_cert using reduction9067.terms
theorem substitutionProof9067 : IsMapEvaluation generatorImages reduction9067.relations [18,690] reduction9067.output := by lin_cert using reduction9067.terms
def image9068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9068 : InImage map_21_196 image9068 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9068 : Bundle := named_bundle% "RealMapCertificates/relations/basis9068.json"
theorem reductionProof9068 : EqualModuloRelations reduction9068.relations reduction9068.input reduction9068.output := by lin_cert using reduction9068.terms
theorem substitutionProof9068 : IsMapEvaluation generatorImages reduction9068.relations [3,982] reduction9068.output := by lin_cert using reduction9068.terms
def image9069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9069 : InImage map_21_196 image9069 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9069 : Bundle := named_bundle% "RealMapCertificates/relations/basis9069.json"
theorem reductionProof9069 : EqualModuloRelations reduction9069.relations reduction9069.input reduction9069.output := by lin_cert using reduction9069.terms
theorem substitutionProof9069 : IsMapEvaluation generatorImages reduction9069.relations [0,0,0,1068] reduction9069.output := by lin_cert using reduction9069.terms
def map_21_197 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9221 : InImage map_21_197 image9221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9221 : Bundle := named_bundle% "RealMapCertificates/relations/basis9221.json"
theorem reductionProof9221 : EqualModuloRelations reduction9221.relations reduction9221.input reduction9221.output := by lin_cert using reduction9221.terms
theorem substitutionProof9221 : IsMapEvaluation generatorImages reduction9221.relations [1124] reduction9221.output := by lin_cert using reduction9221.terms
def image9222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9222 : InImage map_21_197 image9222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9222 : Bundle := named_bundle% "RealMapCertificates/relations/basis9222.json"
theorem reductionProof9222 : EqualModuloRelations reduction9222.relations reduction9222.input reduction9222.output := by lin_cert using reduction9222.terms
theorem substitutionProof9222 : IsMapEvaluation generatorImages reduction9222.relations [77,324] reduction9222.output := by lin_cert using reduction9222.terms
def image9223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9223 : InImage map_21_197 image9223 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9223 : Bundle := named_bundle% "RealMapCertificates/relations/basis9223.json"
theorem reductionProof9223 : EqualModuloRelations reduction9223.relations reduction9223.input reduction9223.output := by lin_cert using reduction9223.terms
theorem substitutionProof9223 : IsMapEvaluation generatorImages reduction9223.relations [0,1108] reduction9223.output := by lin_cert using reduction9223.terms
def image9224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9224 : InImage map_21_197 image9224 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9224 : Bundle := named_bundle% "RealMapCertificates/relations/basis9224.json"
theorem reductionProof9224 : EqualModuloRelations reduction9224.relations reduction9224.input reduction9224.output := by lin_cert using reduction9224.terms
theorem substitutionProof9224 : IsMapEvaluation generatorImages reduction9224.relations [0,3,984] reduction9224.output := by lin_cert using reduction9224.terms
def map_21_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9407 : InImage map_21_198 image9407 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9407 : Bundle := named_bundle% "RealMapCertificates/relations/basis9407.json"
theorem reductionProof9407 : EqualModuloRelations reduction9407.relations reduction9407.input reduction9407.output := by lin_cert using reduction9407.terms
theorem substitutionProof9407 : IsMapEvaluation generatorImages reduction9407.relations [1149] reduction9407.output := by lin_cert using reduction9407.terms
def image9408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9408 : InImage map_21_198 image9408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9408 : Bundle := named_bundle% "RealMapCertificates/relations/basis9408.json"
theorem reductionProof9408 : EqualModuloRelations reduction9408.relations reduction9408.input reduction9408.output := by lin_cert using reduction9408.terms
theorem substitutionProof9408 : IsMapEvaluation generatorImages reduction9408.relations [1148] reduction9408.output := by lin_cert using reduction9408.terms
def image9409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9409 : InImage map_21_198 image9409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9409 : Bundle := named_bundle% "RealMapCertificates/relations/basis9409.json"
theorem reductionProof9409 : EqualModuloRelations reduction9409.relations reduction9409.input reduction9409.output := by lin_cert using reduction9409.terms
theorem substitutionProof9409 : IsMapEvaluation generatorImages reduction9409.relations [1,1107] reduction9409.output := by lin_cert using reduction9409.terms
def image9410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9410 : InImage map_21_198 image9410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9410 : Bundle := named_bundle% "RealMapCertificates/relations/basis9410.json"
theorem reductionProof9410 : EqualModuloRelations reduction9410.relations reduction9410.input reduction9410.output := by lin_cert using reduction9410.terms
theorem substitutionProof9410 : IsMapEvaluation generatorImages reduction9410.relations [0,78,324] reduction9410.output := by lin_cert using reduction9410.terms
def map_21_199 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9531 : InImage map_21_199 image9531 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9531 : Bundle := named_bundle% "RealMapCertificates/relations/basis9531.json"
theorem reductionProof9531 : EqualModuloRelations reduction9531.relations reduction9531.input reduction9531.output := by lin_cert using reduction9531.terms
theorem substitutionProof9531 : IsMapEvaluation generatorImages reduction9531.relations [1172] reduction9531.output := by lin_cert using reduction9531.terms
def image9532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9532 : InImage map_21_199 image9532 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9532 : Bundle := named_bundle% "RealMapCertificates/relations/basis9532.json"
theorem reductionProof9532 : EqualModuloRelations reduction9532.relations reduction9532.input reduction9532.output := by lin_cert using reduction9532.terms
theorem substitutionProof9532 : IsMapEvaluation generatorImages reduction9532.relations [76,359] reduction9532.output := by lin_cert using reduction9532.terms
def image9533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9533 : InImage map_21_199 image9533 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9533 : Bundle := named_bundle% "RealMapCertificates/relations/basis9533.json"
theorem reductionProof9533 : EqualModuloRelations reduction9533.relations reduction9533.input reduction9533.output := by lin_cert using reduction9533.terms
theorem substitutionProof9533 : IsMapEvaluation generatorImages reduction9533.relations [13,76,212] reduction9533.output := by lin_cert using reduction9533.terms
def image9534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9534 : InImage map_21_199 image9534 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9534 : Bundle := named_bundle% "RealMapCertificates/relations/basis9534.json"
theorem reductionProof9534 : EqualModuloRelations reduction9534.relations reduction9534.input reduction9534.output := by lin_cert using reduction9534.terms
theorem substitutionProof9534 : IsMapEvaluation generatorImages reduction9534.relations [0,1150] reduction9534.output := by lin_cert using reduction9534.terms
def image9535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9535 : InImage map_21_199 image9535 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9535 : Bundle := named_bundle% "RealMapCertificates/relations/basis9535.json"
theorem reductionProof9535 : EqualModuloRelations reduction9535.relations reduction9535.input reduction9535.output := by lin_cert using reduction9535.terms
theorem substitutionProof9535 : IsMapEvaluation generatorImages reduction9535.relations [0,3,1011] reduction9535.output := by lin_cert using reduction9535.terms
def map_21_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9693 : InImage map_21_200 image9693 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9693 : Bundle := named_bundle% "RealMapCertificates/relations/basis9693.json"
theorem reductionProof9693 : EqualModuloRelations reduction9693.relations reduction9693.input reduction9693.output := by lin_cert using reduction9693.terms
theorem substitutionProof9693 : IsMapEvaluation generatorImages reduction9693.relations [8,49,324] reduction9693.output := by lin_cert using reduction9693.terms
def image9694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9694 : InImage map_21_200 image9694 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9694 : Bundle := named_bundle% "RealMapCertificates/relations/basis9694.json"
theorem reductionProof9694 : EqualModuloRelations reduction9694.relations reduction9694.input reduction9694.output := by lin_cert using reduction9694.terms
theorem substitutionProof9694 : IsMapEvaluation generatorImages reduction9694.relations [0,0,1153] reduction9694.output := by lin_cert using reduction9694.terms
def image9695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9695 : InImage map_21_200 image9695 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9695 : Bundle := named_bundle% "RealMapCertificates/relations/basis9695.json"
theorem reductionProof9695 : EqualModuloRelations reduction9695.relations reduction9695.input reduction9695.output := by lin_cert using reduction9695.terms
theorem substitutionProof9695 : IsMapEvaluation generatorImages reduction9695.relations [0,0,1152] reduction9695.output := by lin_cert using reduction9695.terms
def image9696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9696 : InImage map_21_200 image9696 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9696 : Bundle := named_bundle% "RealMapCertificates/relations/basis9696.json"
theorem reductionProof9696 : EqualModuloRelations reduction9696.relations reduction9696.input reduction9696.output := by lin_cert using reduction9696.terms
theorem substitutionProof9696 : IsMapEvaluation generatorImages reduction9696.relations [0,0,3,1014] reduction9696.output := by lin_cert using reduction9696.terms
def map_21_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9888 : InImage map_21_201 image9888 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9888 : Bundle := named_bundle% "RealMapCertificates/relations/basis9888.json"
theorem reductionProof9888 : EqualModuloRelations reduction9888.relations reduction9888.input reduction9888.output := by lin_cert using reduction9888.terms
theorem substitutionProof9888 : IsMapEvaluation generatorImages reduction9888.relations [3,1064] reduction9888.output := by lin_cert using reduction9888.terms
def image9889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9889 : InImage map_21_201 image9889 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9889 : Bundle := named_bundle% "RealMapCertificates/relations/basis9889.json"
theorem reductionProof9889 : EqualModuloRelations reduction9889.relations reduction9889.input reduction9889.output := by lin_cert using reduction9889.terms
theorem substitutionProof9889 : IsMapEvaluation generatorImages reduction9889.relations [1,1173] reduction9889.output := by lin_cert using reduction9889.terms
def image9890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9890 : InImage map_21_201 image9890 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9890 : Bundle := named_bundle% "RealMapCertificates/relations/basis9890.json"
theorem reductionProof9890 : EqualModuloRelations reduction9890.relations reduction9890.input reduction9890.output := by lin_cert using reduction9890.terms
theorem substitutionProof9890 : IsMapEvaluation generatorImages reduction9890.relations [0,8,50,324] reduction9890.output := by lin_cert using reduction9890.terms
def image9891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9891 : InImage map_21_201 image9891 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9891 : Bundle := named_bundle% "RealMapCertificates/relations/basis9891.json"
theorem reductionProof9891 : EqualModuloRelations reduction9891.relations reduction9891.input reduction9891.output := by lin_cert using reduction9891.terms
theorem substitutionProof9891 : IsMapEvaluation generatorImages reduction9891.relations [0,0,0,1154] reduction9891.output := by lin_cert using reduction9891.terms
def map_21_202 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10011 : InImage map_21_202 image10011 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10011 : Bundle := named_bundle% "RealMapCertificates/relations/basis10011.json"
theorem reductionProof10011 : EqualModuloRelations reduction10011.relations reduction10011.input reduction10011.output := by lin_cert using reduction10011.terms
theorem substitutionProof10011 : IsMapEvaluation generatorImages reduction10011.relations [9,13,13,373] reduction10011.output := by lin_cert using reduction10011.terms
def image10012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10012 : InImage map_21_202 image10012 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10012 : Bundle := named_bundle% "RealMapCertificates/relations/basis10012.json"
theorem reductionProof10012 : EqualModuloRelations reduction10012.relations reduction10012.input reduction10012.output := by lin_cert using reduction10012.terms
theorem substitutionProof10012 : IsMapEvaluation generatorImages reduction10012.relations [2,1151] reduction10012.output := by lin_cert using reduction10012.terms
def image10013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10013 : InImage map_21_202 image10013 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10013 : Bundle := named_bundle% "RealMapCertificates/relations/basis10013.json"
theorem reductionProof10013 : EqualModuloRelations reduction10013.relations reduction10013.input reduction10013.output := by lin_cert using reduction10013.terms
theorem substitutionProof10013 : IsMapEvaluation generatorImages reduction10013.relations [2,1150] reduction10013.output := by lin_cert using reduction10013.terms
def image10014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10014 : InImage map_21_202 image10014 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10014 : Bundle := named_bundle% "RealMapCertificates/relations/basis10014.json"
theorem reductionProof10014 : EqualModuloRelations reduction10014.relations reduction10014.input reduction10014.output := by lin_cert using reduction10014.terms
theorem substitutionProof10014 : IsMapEvaluation generatorImages reduction10014.relations [1,1,1153] reduction10014.output := by lin_cert using reduction10014.terms
def image10015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10015 : InImage map_21_202 image10015 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10015 : Bundle := named_bundle% "RealMapCertificates/relations/basis10015.json"
theorem reductionProof10015 : EqualModuloRelations reduction10015.relations reduction10015.input reduction10015.output := by lin_cert using reduction10015.terms
theorem substitutionProof10015 : IsMapEvaluation generatorImages reduction10015.relations [1,1,1152] reduction10015.output := by lin_cert using reduction10015.terms
def image10016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10016 : InImage map_21_202 image10016 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10016 : Bundle := named_bundle% "RealMapCertificates/relations/basis10016.json"
theorem reductionProof10016 : EqualModuloRelations reduction10016.relations reduction10016.input reduction10016.output := by lin_cert using reduction10016.terms
theorem substitutionProof10016 : IsMapEvaluation generatorImages reduction10016.relations [0,0,0,1175] reduction10016.output := by lin_cert using reduction10016.terms
def map_21_203 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10186 : InImage map_21_203 image10186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10186 : Bundle := named_bundle% "RealMapCertificates/relations/basis10186.json"
theorem reductionProof10186 : EqualModuloRelations reduction10186.relations reduction10186.input reduction10186.output := by lin_cert using reduction10186.terms
theorem substitutionProof10186 : IsMapEvaluation generatorImages reduction10186.relations [1244] reduction10186.output := by lin_cert using reduction10186.terms
def image10187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10187 : InImage map_21_203 image10187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10187 : Bundle := named_bundle% "RealMapCertificates/relations/basis10187.json"
theorem reductionProof10187 : EqualModuloRelations reduction10187.relations reduction10187.input reduction10187.output := by lin_cert using reduction10187.terms
theorem substitutionProof10187 : IsMapEvaluation generatorImages reduction10187.relations [1243] reduction10187.output := by lin_cert using reduction10187.terms
def image10188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10188 : InImage map_21_203 image10188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10188 : Bundle := named_bundle% "RealMapCertificates/relations/basis10188.json"
theorem reductionProof10188 : EqualModuloRelations reduction10188.relations reduction10188.input reduction10188.output := by lin_cert using reduction10188.terms
theorem substitutionProof10188 : IsMapEvaluation generatorImages reduction10188.relations [8,55,324] reduction10188.output := by lin_cert using reduction10188.terms
def image10189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10189 : InImage map_21_203 image10189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10189 : Bundle := named_bundle% "RealMapCertificates/relations/basis10189.json"
theorem reductionProof10189 : EqualModuloRelations reduction10189.relations reduction10189.input reduction10189.output := by lin_cert using reduction10189.terms
theorem substitutionProof10189 : IsMapEvaluation generatorImages reduction10189.relations [0,2,1152] reduction10189.output := by lin_cert using reduction10189.terms
def map_21_204 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image10386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10386 : InImage map_21_204 image10386 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction10386 : Bundle := named_bundle% "RealMapCertificates/relations/basis10386.json"
theorem reductionProof10386 : EqualModuloRelations reduction10386.relations reduction10386.input reduction10386.output := by lin_cert using reduction10386.terms
theorem substitutionProof10386 : IsMapEvaluation generatorImages reduction10386.relations [1258] reduction10386.output := by lin_cert using reduction10386.terms
def image10387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10387 : InImage map_21_204 image10387 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction10387 : Bundle := named_bundle% "RealMapCertificates/relations/basis10387.json"
theorem reductionProof10387 : EqualModuloRelations reduction10387.relations reduction10387.input reduction10387.output := by lin_cert using reduction10387.terms
theorem substitutionProof10387 : IsMapEvaluation generatorImages reduction10387.relations [1257] reduction10387.output := by lin_cert using reduction10387.terms
def image10388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10388 : InImage map_21_204 image10388 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction10388 : Bundle := named_bundle% "RealMapCertificates/relations/basis10388.json"
theorem reductionProof10388 : EqualModuloRelations reduction10388.relations reduction10388.input reduction10388.output := by lin_cert using reduction10388.terms
theorem substitutionProof10388 : IsMapEvaluation generatorImages reduction10388.relations [188,189] reduction10388.output := by lin_cert using reduction10388.terms
def image10389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10389 : InImage map_21_204 image10389 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction10389 : Bundle := named_bundle% "RealMapCertificates/relations/basis10389.json"
theorem reductionProof10389 : EqualModuloRelations reduction10389.relations reduction10389.input reduction10389.output := by lin_cert using reduction10389.terms
theorem substitutionProof10389 : IsMapEvaluation generatorImages reduction10389.relations [0,43,604] reduction10389.output := by lin_cert using reduction10389.terms
def image10390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10390 : InImage map_21_204 image10390 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction10390 : Bundle := named_bundle% "RealMapCertificates/relations/basis10390.json"
theorem reductionProof10390 : EqualModuloRelations reduction10390.relations reduction10390.input reduction10390.output := by lin_cert using reduction10390.terms
theorem substitutionProof10390 : IsMapEvaluation generatorImages reduction10390.relations [0,8,56,324] reduction10390.output := by lin_cert using reduction10390.terms
def image10391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10391 : InImage map_21_204 image10391 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction10391 : Bundle := named_bundle% "RealMapCertificates/relations/basis10391.json"
theorem reductionProof10391 : EqualModuloRelations reduction10391.relations reduction10391.input reduction10391.output := by lin_cert using reduction10391.terms
theorem substitutionProof10391 : IsMapEvaluation generatorImages reduction10391.relations [0,7,964] reduction10391.output := by lin_cert using reduction10391.terms
def image10392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10392 : InImage map_21_204 image10392 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction10392 : Bundle := named_bundle% "RealMapCertificates/relations/basis10392.json"
theorem reductionProof10392 : EqualModuloRelations reduction10392.relations reduction10392.input reduction10392.output := by lin_cert using reduction10392.terms
theorem substitutionProof10392 : IsMapEvaluation generatorImages reduction10392.relations [0,0,0,1207] reduction10392.output := by lin_cert using reduction10392.terms
def map_21_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10534 : InImage map_21_205 image10534 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10534 : Bundle := named_bundle% "RealMapCertificates/relations/basis10534.json"
theorem reductionProof10534 : EqualModuloRelations reduction10534.relations reduction10534.input reduction10534.output := by lin_cert using reduction10534.terms
theorem substitutionProof10534 : IsMapEvaluation generatorImages reduction10534.relations [13,13,13,373] reduction10534.output := by lin_cert using reduction10534.terms
def image10535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10535 : InImage map_21_205 image10535 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10535 : Bundle := named_bundle% "RealMapCertificates/relations/basis10535.json"
theorem reductionProof10535 : EqualModuloRelations reduction10535.relations reduction10535.input reduction10535.output := by lin_cert using reduction10535.terms
theorem substitutionProof10535 : IsMapEvaluation generatorImages reduction10535.relations [0,0,1245] reduction10535.output := by lin_cert using reduction10535.terms
def image10536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10536 : InImage map_21_205 image10536 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10536 : Bundle := named_bundle% "RealMapCertificates/relations/basis10536.json"
theorem reductionProof10536 : EqualModuloRelations reduction10536.relations reduction10536.input reduction10536.output := by lin_cert using reduction10536.terms
theorem substitutionProof10536 : IsMapEvaluation generatorImages reduction10536.relations [0,0,0,1222] reduction10536.output := by lin_cert using reduction10536.terms
def map_21_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10713 : InImage map_21_206 image10713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10713 : Bundle := named_bundle% "RealMapCertificates/relations/basis10713.json"
theorem reductionProof10713 : EqualModuloRelations reduction10713.relations reduction10713.input reduction10713.output := by lin_cert using reduction10713.terms
theorem substitutionProof10713 : IsMapEvaluation generatorImages reduction10713.relations [8,8,31,324] reduction10713.output := by lin_cert using reduction10713.terms
def image10714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10714 : InImage map_21_206 image10714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10714 : Bundle := named_bundle% "RealMapCertificates/relations/basis10714.json"
theorem reductionProof10714 : EqualModuloRelations reduction10714.relations reduction10714.input reduction10714.output := by lin_cert using reduction10714.terms
theorem substitutionProof10714 : IsMapEvaluation generatorImages reduction10714.relations [3,1150] reduction10714.output := by lin_cert using reduction10714.terms
def image10715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10715 : InImage map_21_206 image10715 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10715 : Bundle := named_bundle% "RealMapCertificates/relations/basis10715.json"
theorem reductionProof10715 : EqualModuloRelations reduction10715.relations reduction10715.input reduction10715.output := by lin_cert using reduction10715.terms
theorem substitutionProof10715 : IsMapEvaluation generatorImages reduction10715.relations [0,7,1000] reduction10715.output := by lin_cert using reduction10715.terms
def image10716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10716 : InImage map_21_206 image10716 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10716 : Bundle := named_bundle% "RealMapCertificates/relations/basis10716.json"
theorem reductionProof10716 : EqualModuloRelations reduction10716.relations reduction10716.input reduction10716.output := by lin_cert using reduction10716.terms
theorem substitutionProof10716 : IsMapEvaluation generatorImages reduction10716.relations [0,0,1260] reduction10716.output := by lin_cert using reduction10716.terms
def map_21_207 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10931 : InImage map_21_207 image10931 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10931 : Bundle := named_bundle% "RealMapCertificates/relations/basis10931.json"
theorem reductionProof10931 : EqualModuloRelations reduction10931.relations reduction10931.input reduction10931.output := by lin_cert using reduction10931.terms
theorem substitutionProof10931 : IsMapEvaluation generatorImages reduction10931.relations [1,3,1126] reduction10931.output := by lin_cert using reduction10931.terms
def image10932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10932 : InImage map_21_207 image10932 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10932 : Bundle := named_bundle% "RealMapCertificates/relations/basis10932.json"
theorem reductionProof10932 : EqualModuloRelations reduction10932.relations reduction10932.input reduction10932.output := by lin_cert using reduction10932.terms
theorem substitutionProof10932 : IsMapEvaluation generatorImages reduction10932.relations [1,1,1245] reduction10932.output := by lin_cert using reduction10932.terms
def image10933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10933 : InImage map_21_207 image10933 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10933 : Bundle := named_bundle% "RealMapCertificates/relations/basis10933.json"
theorem reductionProof10933 : EqualModuloRelations reduction10933.relations reduction10933.input reduction10933.output := by lin_cert using reduction10933.terms
theorem substitutionProof10933 : IsMapEvaluation generatorImages reduction10933.relations [0,8,16,17,324] reduction10933.output := by lin_cert using reduction10933.terms
def image10934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10934 : InImage map_21_207 image10934 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10934 : Bundle := named_bundle% "RealMapCertificates/relations/basis10934.json"
theorem reductionProof10934 : EqualModuloRelations reduction10934.relations reduction10934.input reduction10934.output := by lin_cert using reduction10934.terms
theorem substitutionProof10934 : IsMapEvaluation generatorImages reduction10934.relations [0,3,1152] reduction10934.output := by lin_cert using reduction10934.terms
def image10935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10935 : InImage map_21_207 image10935 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10935 : Bundle := named_bundle% "RealMapCertificates/relations/basis10935.json"
theorem reductionProof10935 : EqualModuloRelations reduction10935.relations reduction10935.input reduction10935.output := by lin_cert using reduction10935.terms
theorem substitutionProof10935 : IsMapEvaluation generatorImages reduction10935.relations [0,0,0,0,1247] reduction10935.output := by lin_cert using reduction10935.terms
def map_21_208 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11064 : InImage map_21_208 image11064 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11064 : Bundle := named_bundle% "RealMapCertificates/relations/basis11064.json"
theorem reductionProof11064 : EqualModuloRelations reduction11064.relations reduction11064.input reduction11064.output := by lin_cert using reduction11064.terms
theorem substitutionProof11064 : IsMapEvaluation generatorImages reduction11064.relations [1,3,1152] reduction11064.output := by lin_cert using reduction11064.terms
def image11065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11065 : InImage map_21_208 image11065 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11065 : Bundle := named_bundle% "RealMapCertificates/relations/basis11065.json"
theorem reductionProof11065 : EqualModuloRelations reduction11065.relations reduction11065.input reduction11065.output := by lin_cert using reduction11065.terms
theorem substitutionProof11065 : IsMapEvaluation generatorImages reduction11065.relations [0,1318] reduction11065.output := by lin_cert using reduction11065.terms
def image11066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11066 : InImage map_21_208 image11066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11066 : Bundle := named_bundle% "RealMapCertificates/relations/basis11066.json"
theorem reductionProof11066 : EqualModuloRelations reduction11066.relations reduction11066.input reduction11066.output := by lin_cert using reduction11066.terms
theorem substitutionProof11066 : IsMapEvaluation generatorImages reduction11066.relations [0,0,0,0,1263] reduction11066.output := by lin_cert using reduction11066.terms
def map_21_209 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11244 : InImage map_21_209 image11244 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11244 : Bundle := named_bundle% "RealMapCertificates/relations/basis11244.json"
theorem reductionProof11244 : EqualModuloRelations reduction11244.relations reduction11244.input reduction11244.output := by lin_cert using reduction11244.terms
theorem substitutionProof11244 : IsMapEvaluation generatorImages reduction11244.relations [188,209] reduction11244.output := by lin_cert using reduction11244.terms
def image11245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11245 : InImage map_21_209 image11245 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11245 : Bundle := named_bundle% "RealMapCertificates/relations/basis11245.json"
theorem reductionProof11245 : EqualModuloRelations reduction11245.relations reduction11245.input reduction11245.output := by lin_cert using reduction11245.terms
theorem substitutionProof11245 : IsMapEvaluation generatorImages reduction11245.relations [8,8,39,324] reduction11245.output := by lin_cert using reduction11245.terms
def image11246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11246 : InImage map_21_209 image11246 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11246 : Bundle := named_bundle% "RealMapCertificates/relations/basis11246.json"
theorem reductionProof11246 : EqualModuloRelations reduction11246.relations reduction11246.input reduction11246.output := by lin_cert using reduction11246.terms
theorem substitutionProof11246 : IsMapEvaluation generatorImages reduction11246.relations [7,1065] reduction11246.output := by lin_cert using reduction11246.terms
def image11247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11247 : InImage map_21_209 image11247 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11247 : Bundle := named_bundle% "RealMapCertificates/relations/basis11247.json"
theorem reductionProof11247 : EqualModuloRelations reduction11247.relations reduction11247.input reduction11247.output := by lin_cert using reduction11247.terms
theorem substitutionProof11247 : IsMapEvaluation generatorImages reduction11247.relations [0,1338] reduction11247.output := by lin_cert using reduction11247.terms
def image11248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11248 : InImage map_21_209 image11248 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11248 : Bundle := named_bundle% "RealMapCertificates/relations/basis11248.json"
theorem reductionProof11248 : EqualModuloRelations reduction11248.relations reduction11248.input reduction11248.output := by lin_cert using reduction11248.terms
theorem substitutionProof11248 : IsMapEvaluation generatorImages reduction11248.relations [0,0,0,0,0,1267] reduction11248.output := by lin_cert using reduction11248.terms
def map_21_210 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11446 : InImage map_21_210 image11446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11446 : Bundle := named_bundle% "RealMapCertificates/relations/basis11446.json"
theorem reductionProof11446 : EqualModuloRelations reduction11446.relations reduction11446.input reduction11446.output := by lin_cert using reduction11446.terms
theorem substitutionProof11446 : IsMapEvaluation generatorImages reduction11446.relations [1370] reduction11446.output := by lin_cert using reduction11446.terms
def image11447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11447 : InImage map_21_210 image11447 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11447 : Bundle := named_bundle% "RealMapCertificates/relations/basis11447.json"
theorem reductionProof11447 : EqualModuloRelations reduction11447.relations reduction11447.input reduction11447.output := by lin_cert using reduction11447.terms
theorem substitutionProof11447 : IsMapEvaluation generatorImages reduction11447.relations [9,1002] reduction11447.output := by lin_cert using reduction11447.terms
def image11448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11448 : InImage map_21_210 image11448 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11448 : Bundle := named_bundle% "RealMapCertificates/relations/basis11448.json"
theorem reductionProof11448 : EqualModuloRelations reduction11448.relations reduction11448.input reduction11448.output := by lin_cert using reduction11448.terms
theorem substitutionProof11448 : IsMapEvaluation generatorImages reduction11448.relations [1,1338] reduction11448.output := by lin_cert using reduction11448.terms
def image11449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11449 : InImage map_21_210 image11449 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11449 : Bundle := named_bundle% "RealMapCertificates/relations/basis11449.json"
theorem reductionProof11449 : EqualModuloRelations reduction11449.relations reduction11449.input reduction11449.output := by lin_cert using reduction11449.terms
theorem substitutionProof11449 : IsMapEvaluation generatorImages reduction11449.relations [0,0,0,0,0,0,0,0,0,0,90,324] reduction11449.output := by lin_cert using reduction11449.terms
end RealMapCertificates
