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
  | 19 => [[4,8]]
  | 23 => [[7,7]]
  | 64 => []
  | 68 => []
  | 76 => []
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 167 => [[7,9,12]]
  | 172 => []
  | 188 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 288 => []
  | 324 => []
  | 629 => []
  | 669 => []
  | 681 => []
  | 682 => []
  | 734 => []
  | 787 => []
  | 1002 => []
  | 1045 => []
  | 1107 => []
  | 1152 => []
  | 1154 => []
  | 1156 => []
  | 1175 => []
  | 1245 => []
  | 1260 => []
  | 1261 => []
  | 1323 => []
  | 1338 => []
  | 1351 => []
  | 1371 => []
  | 1433 => []
  | 1445 => []
  | 1447 => []
  | 1455 => []
  | 1491 => []
  | 1506 => []
  | 1521 => []
  | 1522 => []
  | 1523 => []
  | 1544 => []
  | 1545 => []
  | 1558 => []
  | 1559 => []
  | 1576 => []
  | 1577 => []
  | 1600 => []
  | 1609 => []
  | 1610 => []
  | 1611 => []
  | 1612 => []
  | 1613 => []
  | 1626 => []
  | 1643 => []
  | 1661 => []
  | 1662 => []
  | 1663 => []
  | 1664 => []
  | 1665 => []
  | 1666 => []
  | 1693 => []
  | 1694 => []
  | 1695 => []
  | 1696 => []
  | 1697 => []
  | 1725 => []
  | 1741 => []
  | 1742 => []
  | 1764 => []
  | 1765 => []
  | 1788 => []
  | _ => []
def map_21_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11601 : InImage map_21_211 image11601 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11601 : Bundle := named_bundle% "RealMapCertificates/relations/basis11601.json"
theorem reductionProof11601 : EqualModuloRelations reduction11601.relations reduction11601.input reduction11601.output := by lin_cert using reduction11601.terms
theorem substitutionProof11601 : IsMapEvaluation generatorImages reduction11601.relations [13,13,682] reduction11601.output := by lin_cert using reduction11601.terms
def image11602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11602 : InImage map_21_211 image11602 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11602 : Bundle := named_bundle% "RealMapCertificates/relations/basis11602.json"
theorem reductionProof11602 : EqualModuloRelations reduction11602.relations reduction11602.input reduction11602.output := by lin_cert using reduction11602.terms
theorem substitutionProof11602 : IsMapEvaluation generatorImages reduction11602.relations [13,13,681] reduction11602.output := by lin_cert using reduction11602.terms
def image11603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11603 : InImage map_21_211 image11603 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11603 : Bundle := named_bundle% "RealMapCertificates/relations/basis11603.json"
theorem reductionProof11603 : EqualModuloRelations reduction11603.relations reduction11603.input reduction11603.output := by lin_cert using reduction11603.terms
theorem substitutionProof11603 : IsMapEvaluation generatorImages reduction11603.relations [0,0,1351] reduction11603.output := by lin_cert using reduction11603.terms
def map_21_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11794 : InImage map_21_212 image11794 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11794 : Bundle := named_bundle% "RealMapCertificates/relations/basis11794.json"
theorem reductionProof11794 : EqualModuloRelations reduction11794.relations reduction11794.input reduction11794.output := by lin_cert using reduction11794.terms
theorem substitutionProof11794 : IsMapEvaluation generatorImages reduction11794.relations [8,8,8,16,324] reduction11794.output := by lin_cert using reduction11794.terms
def image11795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11795 : InImage map_21_212 image11795 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11795 : Bundle := named_bundle% "RealMapCertificates/relations/basis11795.json"
theorem reductionProof11795 : EqualModuloRelations reduction11795.relations reduction11795.input reduction11795.output := by lin_cert using reduction11795.terms
theorem substitutionProof11795 : IsMapEvaluation generatorImages reduction11795.relations [7,1107] reduction11795.output := by lin_cert using reduction11795.terms
def image11796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11796 : InImage map_21_212 image11796 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11796 : Bundle := named_bundle% "RealMapCertificates/relations/basis11796.json"
theorem reductionProof11796 : EqualModuloRelations reduction11796.relations reduction11796.input reduction11796.output := by lin_cert using reduction11796.terms
theorem substitutionProof11796 : IsMapEvaluation generatorImages reduction11796.relations [2,1338] reduction11796.output := by lin_cert using reduction11796.terms
def image11797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11797 : InImage map_21_212 image11797 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11797 : Bundle := named_bundle% "RealMapCertificates/relations/basis11797.json"
theorem reductionProof11797 : EqualModuloRelations reduction11797.relations reduction11797.input reduction11797.output := by lin_cert using reduction11797.terms
theorem substitutionProof11797 : IsMapEvaluation generatorImages reduction11797.relations [1,1371] reduction11797.output := by lin_cert using reduction11797.terms
def image11798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11798 : InImage map_21_212 image11798 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11798 : Bundle := named_bundle% "RealMapCertificates/relations/basis11798.json"
theorem reductionProof11798 : EqualModuloRelations reduction11798.relations reduction11798.input reduction11798.output := by lin_cert using reduction11798.terms
theorem substitutionProof11798 : IsMapEvaluation generatorImages reduction11798.relations [0,3,1245] reduction11798.output := by lin_cert using reduction11798.terms
def map_21_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12037 : InImage map_21_213 image12037 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12037 : Bundle := named_bundle% "RealMapCertificates/relations/basis12037.json"
theorem reductionProof12037 : EqualModuloRelations reduction12037.relations reduction12037.input reduction12037.output := by lin_cert using reduction12037.terms
theorem substitutionProof12037 : IsMapEvaluation generatorImages reduction12037.relations [1433] reduction12037.output := by lin_cert using reduction12037.terms
def image12038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12038 : InImage map_21_213 image12038 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12038 : Bundle := named_bundle% "RealMapCertificates/relations/basis12038.json"
theorem reductionProof12038 : EqualModuloRelations reduction12038.relations reduction12038.input reduction12038.output := by lin_cert using reduction12038.terms
theorem substitutionProof12038 : IsMapEvaluation generatorImages reduction12038.relations [13,1002] reduction12038.output := by lin_cert using reduction12038.terms
def image12039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12039 : InImage map_21_213 image12039 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12039 : Bundle := named_bundle% "RealMapCertificates/relations/basis12039.json"
theorem reductionProof12039 : EqualModuloRelations reduction12039.relations reduction12039.input reduction12039.output := by lin_cert using reduction12039.terms
theorem substitutionProof12039 : IsMapEvaluation generatorImages reduction12039.relations [0,3,1260] reduction12039.output := by lin_cert using reduction12039.terms
def map_21_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12190 : InImage map_21_214 image12190 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12190 : Bundle := named_bundle% "RealMapCertificates/relations/basis12190.json"
theorem reductionProof12190 : EqualModuloRelations reduction12190.relations reduction12190.input reduction12190.output := by lin_cert using reduction12190.terms
theorem substitutionProof12190 : IsMapEvaluation generatorImages reduction12190.relations [0,0,3,1261] reduction12190.output := by lin_cert using reduction12190.terms
def map_21_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12390 : InImage map_21_215 image12390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12390 : Bundle := named_bundle% "RealMapCertificates/relations/basis12390.json"
theorem reductionProof12390 : EqualModuloRelations reduction12390.relations reduction12390.input reduction12390.output := by lin_cert using reduction12390.terms
theorem substitutionProof12390 : IsMapEvaluation generatorImages reduction12390.relations [13,1045] reduction12390.output := by lin_cert using reduction12390.terms
def image12391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12391 : InImage map_21_215 image12391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12391 : Bundle := named_bundle% "RealMapCertificates/relations/basis12391.json"
theorem reductionProof12391 : EqualModuloRelations reduction12391.relations reduction12391.input reduction12391.output := by lin_cert using reduction12391.terms
theorem substitutionProof12391 : IsMapEvaluation generatorImages reduction12391.relations [8,8,8,19,324] reduction12391.output := by lin_cert using reduction12391.terms
def image12392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12392 : InImage map_21_215 image12392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12392 : Bundle := named_bundle% "RealMapCertificates/relations/basis12392.json"
theorem reductionProof12392 : EqualModuloRelations reduction12392.relations reduction12392.input reduction12392.output := by lin_cert using reduction12392.terms
theorem substitutionProof12392 : IsMapEvaluation generatorImages reduction12392.relations [0,209,209] reduction12392.output := by lin_cert using reduction12392.terms
def image12393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12393 : InImage map_21_215 image12393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12393 : Bundle := named_bundle% "RealMapCertificates/relations/basis12393.json"
theorem reductionProof12393 : EqualModuloRelations reduction12393.relations reduction12393.input reduction12393.output := by lin_cert using reduction12393.terms
theorem substitutionProof12393 : IsMapEvaluation generatorImages reduction12393.relations [0,7,1152] reduction12393.output := by lin_cert using reduction12393.terms
def map_21_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12596 : InImage map_21_216 image12596 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12596 : Bundle := named_bundle% "RealMapCertificates/relations/basis12596.json"
theorem reductionProof12596 : EqualModuloRelations reduction12596.relations reduction12596.input reduction12596.output := by lin_cert using reduction12596.terms
theorem substitutionProof12596 : IsMapEvaluation generatorImages reduction12596.relations [212,213] reduction12596.output := by lin_cert using reduction12596.terms
def image12597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12597 : InImage map_21_216 image12597 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12597 : Bundle := named_bundle% "RealMapCertificates/relations/basis12597.json"
theorem reductionProof12597 : EqualModuloRelations reduction12597.relations reduction12597.input reduction12597.output := by lin_cert using reduction12597.terms
theorem substitutionProof12597 : IsMapEvaluation generatorImages reduction12597.relations [1,209,209] reduction12597.output := by lin_cert using reduction12597.terms
def image12598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12598 : InImage map_21_216 image12598 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12598 : Bundle := named_bundle% "RealMapCertificates/relations/basis12598.json"
theorem reductionProof12598 : EqualModuloRelations reduction12598.relations reduction12598.input reduction12598.output := by lin_cert using reduction12598.terms
theorem substitutionProof12598 : IsMapEvaluation generatorImages reduction12598.relations [1,7,1152] reduction12598.output := by lin_cert using reduction12598.terms
def image12599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12599 : InImage map_21_216 image12599 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12599 : Bundle := named_bundle% "RealMapCertificates/relations/basis12599.json"
theorem reductionProof12599 : EqualModuloRelations reduction12599.relations reduction12599.input reduction12599.output := by lin_cert using reduction12599.terms
theorem substitutionProof12599 : IsMapEvaluation generatorImages reduction12599.relations [0,0,1445] reduction12599.output := by lin_cert using reduction12599.terms
def image12600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12600 : InImage map_21_216 image12600 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12600 : Bundle := named_bundle% "RealMapCertificates/relations/basis12600.json"
theorem reductionProof12600 : EqualModuloRelations reduction12600.relations reduction12600.input reduction12600.output := by lin_cert using reduction12600.terms
theorem substitutionProof12600 : IsMapEvaluation generatorImages reduction12600.relations [0,0,7,1154] reduction12600.output := by lin_cert using reduction12600.terms
def map_21_217 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12754 : InImage map_21_217 image12754 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12754 : Bundle := named_bundle% "RealMapCertificates/relations/basis12754.json"
theorem reductionProof12754 : EqualModuloRelations reduction12754.relations reduction12754.input reduction12754.output := by lin_cert using reduction12754.terms
theorem substitutionProof12754 : IsMapEvaluation generatorImages reduction12754.relations [1506] reduction12754.output := by lin_cert using reduction12754.terms
def image12755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12755 : InImage map_21_217 image12755 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12755 : Bundle := named_bundle% "RealMapCertificates/relations/basis12755.json"
theorem reductionProof12755 : EqualModuloRelations reduction12755.relations reduction12755.input reduction12755.output := by lin_cert using reduction12755.terms
theorem substitutionProof12755 : IsMapEvaluation generatorImages reduction12755.relations [9,13,787] reduction12755.output := by lin_cert using reduction12755.terms
def image12756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12756 : InImage map_21_217 image12756 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12756 : Bundle := named_bundle% "RealMapCertificates/relations/basis12756.json"
theorem reductionProof12756 : EqualModuloRelations reduction12756.relations reduction12756.input reduction12756.output := by lin_cert using reduction12756.terms
theorem substitutionProof12756 : IsMapEvaluation generatorImages reduction12756.relations [0,1491] reduction12756.output := by lin_cert using reduction12756.terms
def image12757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12757 : InImage map_21_217 image12757 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12757 : Bundle := named_bundle% "RealMapCertificates/relations/basis12757.json"
theorem reductionProof12757 : EqualModuloRelations reduction12757.relations reduction12757.input reduction12757.output := by lin_cert using reduction12757.terms
theorem substitutionProof12757 : IsMapEvaluation generatorImages reduction12757.relations [0,0,137,324] reduction12757.output := by lin_cert using reduction12757.terms
def image12758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12758 : InImage map_21_217 image12758 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12758 : Bundle := named_bundle% "RealMapCertificates/relations/basis12758.json"
theorem reductionProof12758 : EqualModuloRelations reduction12758.relations reduction12758.input reduction12758.output := by lin_cert using reduction12758.terms
theorem substitutionProof12758 : IsMapEvaluation generatorImages reduction12758.relations [0,0,7,1175] reduction12758.output := by lin_cert using reduction12758.terms
def map_21_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12953 : InImage map_21_218 image12953 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12953 : Bundle := named_bundle% "RealMapCertificates/relations/basis12953.json"
theorem reductionProof12953 : EqualModuloRelations reduction12953.relations reduction12953.input reduction12953.output := by lin_cert using reduction12953.terms
theorem substitutionProof12953 : IsMapEvaluation generatorImages reduction12953.relations [8,8,8,8,8,324] reduction12953.output := by lin_cert using reduction12953.terms
def image12954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12954 : InImage map_21_218 image12954 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12954 : Bundle := named_bundle% "RealMapCertificates/relations/basis12954.json"
theorem reductionProof12954 : EqualModuloRelations reduction12954.relations reduction12954.input reduction12954.output := by lin_cert using reduction12954.terms
theorem substitutionProof12954 : IsMapEvaluation generatorImages reduction12954.relations [1,1491] reduction12954.output := by lin_cert using reduction12954.terms
def image12955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12955 : InImage map_21_218 image12955 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12955 : Bundle := named_bundle% "RealMapCertificates/relations/basis12955.json"
theorem reductionProof12955 : EqualModuloRelations reduction12955.relations reduction12955.input reduction12955.output := by lin_cert using reduction12955.terms
theorem substitutionProof12955 : IsMapEvaluation generatorImages reduction12955.relations [0,0,0,138,324] reduction12955.output := by lin_cert using reduction12955.terms
def image12956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12956 : InImage map_21_218 image12956 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12956 : Bundle := named_bundle% "RealMapCertificates/relations/basis12956.json"
theorem reductionProof12956 : EqualModuloRelations reduction12956.relations reduction12956.input reduction12956.output := by lin_cert using reduction12956.terms
theorem substitutionProof12956 : IsMapEvaluation generatorImages reduction12956.relations [0,0,0,0,1447] reduction12956.output := by lin_cert using reduction12956.terms
def map_21_219 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13185 : InImage map_21_219 image13185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13185 : Bundle := named_bundle% "RealMapCertificates/relations/basis13185.json"
theorem reductionProof13185 : EqualModuloRelations reduction13185.relations reduction13185.input reduction13185.output := by lin_cert using reduction13185.terms
theorem substitutionProof13185 : IsMapEvaluation generatorImages reduction13185.relations [1545] reduction13185.output := by lin_cert using reduction13185.terms
def image13186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13186 : InImage map_21_219 image13186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13186 : Bundle := named_bundle% "RealMapCertificates/relations/basis13186.json"
theorem reductionProof13186 : EqualModuloRelations reduction13186.relations reduction13186.input reduction13186.output := by lin_cert using reduction13186.terms
theorem substitutionProof13186 : IsMapEvaluation generatorImages reduction13186.relations [1544] reduction13186.output := by lin_cert using reduction13186.terms
def image13187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13187 : InImage map_21_219 image13187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13187 : Bundle := named_bundle% "RealMapCertificates/relations/basis13187.json"
theorem reductionProof13187 : EqualModuloRelations reduction13187.relations reduction13187.input reduction13187.output := by lin_cert using reduction13187.terms
theorem substitutionProof13187 : IsMapEvaluation generatorImages reduction13187.relations [1,1,137,324] reduction13187.output := by lin_cert using reduction13187.terms
def image13188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13188 : InImage map_21_219 image13188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13188 : Bundle := named_bundle% "RealMapCertificates/relations/basis13188.json"
theorem reductionProof13188 : EqualModuloRelations reduction13188.relations reduction13188.input reduction13188.output := by lin_cert using reduction13188.terms
theorem substitutionProof13188 : IsMapEvaluation generatorImages reduction13188.relations [0,1521] reduction13188.output := by lin_cert using reduction13188.terms
def image13189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13189 : InImage map_21_219 image13189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13189 : Bundle := named_bundle% "RealMapCertificates/relations/basis13189.json"
theorem reductionProof13189 : EqualModuloRelations reduction13189.relations reduction13189.input reduction13189.output := by lin_cert using reduction13189.terms
theorem substitutionProof13189 : IsMapEvaluation generatorImages reduction13189.relations [0,2,1445] reduction13189.output := by lin_cert using reduction13189.terms
def map_21_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13314 : InImage map_21_220 image13314 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13314 : Bundle := named_bundle% "RealMapCertificates/relations/basis13314.json"
theorem reductionProof13314 : EqualModuloRelations reduction13314.relations reduction13314.input reduction13314.output := by lin_cert using reduction13314.terms
theorem substitutionProof13314 : IsMapEvaluation generatorImages reduction13314.relations [1558] reduction13314.output := by lin_cert using reduction13314.terms
def image13315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13315 : InImage map_21_220 image13315 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13315 : Bundle := named_bundle% "RealMapCertificates/relations/basis13315.json"
theorem reductionProof13315 : EqualModuloRelations reduction13315.relations reduction13315.input reduction13315.output := by lin_cert using reduction13315.terms
theorem substitutionProof13315 : IsMapEvaluation generatorImages reduction13315.relations [13,13,787] reduction13315.output := by lin_cert using reduction13315.terms
def image13316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13316 : InImage map_21_220 image13316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13316 : Bundle := named_bundle% "RealMapCertificates/relations/basis13316.json"
theorem reductionProof13316 : EqualModuloRelations reduction13316.relations reduction13316.input reduction13316.output := by lin_cert using reduction13316.terms
theorem substitutionProof13316 : IsMapEvaluation generatorImages reduction13316.relations [1,1521] reduction13316.output := by lin_cert using reduction13316.terms
def image13317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13317 : InImage map_21_220 image13317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13317 : Bundle := named_bundle% "RealMapCertificates/relations/basis13317.json"
theorem reductionProof13317 : EqualModuloRelations reduction13317.relations reduction13317.input reduction13317.output := by lin_cert using reduction13317.terms
theorem substitutionProof13317 : IsMapEvaluation generatorImages reduction13317.relations [0,0,146,324] reduction13317.output := by lin_cert using reduction13317.terms
def map_21_221 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13523 : InImage map_21_221 image13523 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13523 : Bundle := named_bundle% "RealMapCertificates/relations/basis13523.json"
theorem reductionProof13523 : EqualModuloRelations reduction13523.relations reduction13523.input reduction13523.output := by lin_cert using reduction13523.terms
theorem substitutionProof13523 : IsMapEvaluation generatorImages reduction13523.relations [8,8,8,8,9,324] reduction13523.output := by lin_cert using reduction13523.terms
def image13524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13524 : InImage map_21_221 image13524 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13524 : Bundle := named_bundle% "RealMapCertificates/relations/basis13524.json"
theorem reductionProof13524 : EqualModuloRelations reduction13524.relations reduction13524.input reduction13524.output := by lin_cert using reduction13524.terms
theorem substitutionProof13524 : IsMapEvaluation generatorImages reduction13524.relations [0,1559] reduction13524.output := by lin_cert using reduction13524.terms
def map_21_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13752 : InImage map_21_222 image13752 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13752 : Bundle := named_bundle% "RealMapCertificates/relations/basis13752.json"
theorem reductionProof13752 : EqualModuloRelations reduction13752.relations reduction13752.input reduction13752.output := by lin_cert using reduction13752.terms
theorem substitutionProof13752 : IsMapEvaluation generatorImages reduction13752.relations [13,1156] reduction13752.output := by lin_cert using reduction13752.terms
def image13753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13753 : InImage map_21_222 image13753 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13753 : Bundle := named_bundle% "RealMapCertificates/relations/basis13753.json"
theorem reductionProof13753 : EqualModuloRelations reduction13753.relations reduction13753.input reduction13753.output := by lin_cert using reduction13753.terms
theorem substitutionProof13753 : IsMapEvaluation generatorImages reduction13753.relations [0,1576] reduction13753.output := by lin_cert using reduction13753.terms
def image13754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13754 : InImage map_21_222 image13754 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13754 : Bundle := named_bundle% "RealMapCertificates/relations/basis13754.json"
theorem reductionProof13754 : EqualModuloRelations reduction13754.relations reduction13754.input reduction13754.output := by lin_cert using reduction13754.terms
theorem substitutionProof13754 : IsMapEvaluation generatorImages reduction13754.relations [0,0,0,0,0,0,0,0,1455] reduction13754.output := by lin_cert using reduction13754.terms
def map_21_223 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13894 : InImage map_21_223 image13894 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13894 : Bundle := named_bundle% "RealMapCertificates/relations/basis13894.json"
theorem reductionProof13894 : EqualModuloRelations reduction13894.relations reduction13894.input reduction13894.output := by lin_cert using reduction13894.terms
theorem substitutionProof13894 : IsMapEvaluation generatorImages reduction13894.relations [1611] reduction13894.output := by lin_cert using reduction13894.terms
def image13895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13895 : InImage map_21_223 image13895 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13895 : Bundle := named_bundle% "RealMapCertificates/relations/basis13895.json"
theorem reductionProof13895 : EqualModuloRelations reduction13895.relations reduction13895.input reduction13895.output := by lin_cert using reduction13895.terms
theorem substitutionProof13895 : IsMapEvaluation generatorImages reduction13895.relations [1610] reduction13895.output := by lin_cert using reduction13895.terms
def image13896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13896 : InImage map_21_223 image13896 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13896 : Bundle := named_bundle% "RealMapCertificates/relations/basis13896.json"
theorem reductionProof13896 : EqualModuloRelations reduction13896.relations reduction13896.input reduction13896.output := by lin_cert using reduction13896.terms
theorem substitutionProof13896 : IsMapEvaluation generatorImages reduction13896.relations [1609] reduction13896.output := by lin_cert using reduction13896.terms
def image13897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13897 : InImage map_21_223 image13897 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13897 : Bundle := named_bundle% "RealMapCertificates/relations/basis13897.json"
theorem reductionProof13897 : EqualModuloRelations reduction13897.relations reduction13897.input reduction13897.output := by lin_cert using reduction13897.terms
theorem substitutionProof13897 : IsMapEvaluation generatorImages reduction13897.relations [0,0,16,64,324] reduction13897.output := by lin_cert using reduction13897.terms
def image13898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13898 : InImage map_21_223 image13898 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13898 : Bundle := named_bundle% "RealMapCertificates/relations/basis13898.json"
theorem reductionProof13898 : EqualModuloRelations reduction13898.relations reduction13898.input reduction13898.output := by lin_cert using reduction13898.terms
theorem substitutionProof13898 : IsMapEvaluation generatorImages reduction13898.relations [0,0,0,0,0,1523] reduction13898.output := by lin_cert using reduction13898.terms
def map_21_224 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14085 : InImage map_21_224 image14085 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14085 : Bundle := named_bundle% "RealMapCertificates/relations/basis14085.json"
theorem reductionProof14085 : EqualModuloRelations reduction14085.relations reduction14085.input reduction14085.output := by lin_cert using reduction14085.terms
theorem substitutionProof14085 : IsMapEvaluation generatorImages reduction14085.relations [1626] reduction14085.output := by lin_cert using reduction14085.terms
def image14086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14086 : InImage map_21_224 image14086 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14086 : Bundle := named_bundle% "RealMapCertificates/relations/basis14086.json"
theorem reductionProof14086 : EqualModuloRelations reduction14086.relations reduction14086.input reduction14086.output := by lin_cert using reduction14086.terms
theorem substitutionProof14086 : IsMapEvaluation generatorImages reduction14086.relations [3,1491] reduction14086.output := by lin_cert using reduction14086.terms
def image14087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14087 : InImage map_21_224 image14087 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14087 : Bundle := named_bundle% "RealMapCertificates/relations/basis14087.json"
theorem reductionProof14087 : EqualModuloRelations reduction14087.relations reduction14087.input reduction14087.output := by lin_cert using reduction14087.terms
theorem substitutionProof14087 : IsMapEvaluation generatorImages reduction14087.relations [2,1559] reduction14087.output := by lin_cert using reduction14087.terms
def image14088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14088 : InImage map_21_224 image14088 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14088 : Bundle := named_bundle% "RealMapCertificates/relations/basis14088.json"
theorem reductionProof14088 : EqualModuloRelations reduction14088.relations reduction14088.input reduction14088.output := by lin_cert using reduction14088.terms
theorem substitutionProof14088 : IsMapEvaluation generatorImages reduction14088.relations [0,1612] reduction14088.output := by lin_cert using reduction14088.terms
def image14089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14089 : InImage map_21_224 image14089 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14089 : Bundle := named_bundle% "RealMapCertificates/relations/basis14089.json"
theorem reductionProof14089 : EqualModuloRelations reduction14089.relations reduction14089.input reduction14089.output := by lin_cert using reduction14089.terms
theorem substitutionProof14089 : IsMapEvaluation generatorImages reduction14089.relations [0,0,1600] reduction14089.output := by lin_cert using reduction14089.terms
def image14090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14090 : InImage map_21_224 image14090 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14090 : Bundle := named_bundle% "RealMapCertificates/relations/basis14090.json"
theorem reductionProof14090 : EqualModuloRelations reduction14090.relations reduction14090.input reduction14090.output := by lin_cert using reduction14090.terms
theorem substitutionProof14090 : IsMapEvaluation generatorImages reduction14090.relations [0,0,0,0,149,324] reduction14090.output := by lin_cert using reduction14090.terms
def map_21_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14310 : InImage map_21_225 image14310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14310 : Bundle := named_bundle% "RealMapCertificates/relations/basis14310.json"
theorem reductionProof14310 : EqualModuloRelations reduction14310.relations reduction14310.input reduction14310.output := by lin_cert using reduction14310.terms
theorem substitutionProof14310 : IsMapEvaluation generatorImages reduction14310.relations [188,288] reduction14310.output := by lin_cert using reduction14310.terms
def image14311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14311 : InImage map_21_225 image14311 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14311 : Bundle := named_bundle% "RealMapCertificates/relations/basis14311.json"
theorem reductionProof14311 : EqualModuloRelations reduction14311.relations reduction14311.input reduction14311.output := by lin_cert using reduction14311.terms
theorem substitutionProof14311 : IsMapEvaluation generatorImages reduction14311.relations [76,629] reduction14311.output := by lin_cert using reduction14311.terms
def image14312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14312 : InImage map_21_225 image14312 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14312 : Bundle := named_bundle% "RealMapCertificates/relations/basis14312.json"
theorem reductionProof14312 : EqualModuloRelations reduction14312.relations reduction14312.input reduction14312.output := by lin_cert using reduction14312.terms
theorem substitutionProof14312 : IsMapEvaluation generatorImages reduction14312.relations [1,1612] reduction14312.output := by lin_cert using reduction14312.terms
def image14313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14313 : InImage map_21_225 image14313 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14313 : Bundle := named_bundle% "RealMapCertificates/relations/basis14313.json"
theorem reductionProof14313 : EqualModuloRelations reduction14313.relations reduction14313.input reduction14313.output := by lin_cert using reduction14313.terms
theorem substitutionProof14313 : IsMapEvaluation generatorImages reduction14313.relations [0,0,0,0,154,324] reduction14313.output := by lin_cert using reduction14313.terms
def map_21_226 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image14440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14440 : InImage map_21_226 image14440 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction14440 : Bundle := named_bundle% "RealMapCertificates/relations/basis14440.json"
theorem reductionProof14440 : EqualModuloRelations reduction14440.relations reduction14440.input reduction14440.output := by lin_cert using reduction14440.terms
theorem substitutionProof14440 : IsMapEvaluation generatorImages reduction14440.relations [1664] reduction14440.output := by lin_cert using reduction14440.terms
def image14441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14441 : InImage map_21_226 image14441 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction14441 : Bundle := named_bundle% "RealMapCertificates/relations/basis14441.json"
theorem reductionProof14441 : EqualModuloRelations reduction14441.relations reduction14441.input reduction14441.output := by lin_cert using reduction14441.terms
theorem substitutionProof14441 : IsMapEvaluation generatorImages reduction14441.relations [1663] reduction14441.output := by lin_cert using reduction14441.terms
def image14442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14442 : InImage map_21_226 image14442 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction14442 : Bundle := named_bundle% "RealMapCertificates/relations/basis14442.json"
theorem reductionProof14442 : EqualModuloRelations reduction14442.relations reduction14442.input reduction14442.output := by lin_cert using reduction14442.terms
theorem substitutionProof14442 : IsMapEvaluation generatorImages reduction14442.relations [1662] reduction14442.output := by lin_cert using reduction14442.terms
def image14443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14443 : InImage map_21_226 image14443 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction14443 : Bundle := named_bundle% "RealMapCertificates/relations/basis14443.json"
theorem reductionProof14443 : EqualModuloRelations reduction14443.relations reduction14443.input reduction14443.output := by lin_cert using reduction14443.terms
theorem substitutionProof14443 : IsMapEvaluation generatorImages reduction14443.relations [1661] reduction14443.output := by lin_cert using reduction14443.terms
def image14444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14444 : InImage map_21_226 image14444 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction14444 : Bundle := named_bundle% "RealMapCertificates/relations/basis14444.json"
theorem reductionProof14444 : EqualModuloRelations reduction14444.relations reduction14444.input reduction14444.output := by lin_cert using reduction14444.terms
theorem substitutionProof14444 : IsMapEvaluation generatorImages reduction14444.relations [68,669] reduction14444.output := by lin_cert using reduction14444.terms
def image14445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14445 : InImage map_21_226 image14445 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction14445 : Bundle := named_bundle% "RealMapCertificates/relations/basis14445.json"
theorem reductionProof14445 : EqualModuloRelations reduction14445.relations reduction14445.input reduction14445.output := by lin_cert using reduction14445.terms
theorem substitutionProof14445 : IsMapEvaluation generatorImages reduction14445.relations [3,1521] reduction14445.output := by lin_cert using reduction14445.terms
def image14446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14446 : InImage map_21_226 image14446 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction14446 : Bundle := named_bundle% "RealMapCertificates/relations/basis14446.json"
theorem reductionProof14446 : EqualModuloRelations reduction14446.relations reduction14446.input reduction14446.output := by lin_cert using reduction14446.terms
theorem substitutionProof14446 : IsMapEvaluation generatorImages reduction14446.relations [1,1,1600] reduction14446.output := by lin_cert using reduction14446.terms
def image14447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14447 : InImage map_21_226 image14447 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction14447 : Bundle := named_bundle% "RealMapCertificates/relations/basis14447.json"
theorem reductionProof14447 : EqualModuloRelations reduction14447.relations reduction14447.input reduction14447.output := by lin_cert using reduction14447.terms
theorem substitutionProof14447 : IsMapEvaluation generatorImages reduction14447.relations [0,0,8,112,324] reduction14447.output := by lin_cert using reduction14447.terms
def map_21_227 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image14661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14661 : InImage map_21_227 image14661 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction14661 : Bundle := named_bundle% "RealMapCertificates/relations/basis14661.json"
theorem reductionProof14661 : EqualModuloRelations reduction14661.relations reduction14661.input reduction14661.output := by lin_cert using reduction14661.terms
theorem substitutionProof14661 : IsMapEvaluation generatorImages reduction14661.relations [13,23,734] reduction14661.output := by lin_cert using reduction14661.terms
def image14662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14662 : InImage map_21_227 image14662 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction14662 : Bundle := named_bundle% "RealMapCertificates/relations/basis14662.json"
theorem reductionProof14662 : EqualModuloRelations reduction14662.relations reduction14662.input reduction14662.output := by lin_cert using reduction14662.terms
theorem substitutionProof14662 : IsMapEvaluation generatorImages reduction14662.relations [8,8,8,9,13,324] reduction14662.output := by lin_cert using reduction14662.terms
def image14663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14663 : InImage map_21_227 image14663 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction14663 : Bundle := named_bundle% "RealMapCertificates/relations/basis14663.json"
theorem reductionProof14663 : EqualModuloRelations reduction14663.relations reduction14663.input reduction14663.output := by lin_cert using reduction14663.terms
theorem substitutionProof14663 : IsMapEvaluation generatorImages reduction14663.relations [2,1612] reduction14663.output := by lin_cert using reduction14663.terms
def image14664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14664 : InImage map_21_227 image14664 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction14664 : Bundle := named_bundle% "RealMapCertificates/relations/basis14664.json"
theorem reductionProof14664 : EqualModuloRelations reduction14664.relations reduction14664.input reduction14664.output := by lin_cert using reduction14664.terms
theorem substitutionProof14664 : IsMapEvaluation generatorImages reduction14664.relations [0,1666] reduction14664.output := by lin_cert using reduction14664.terms
def image14665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14665 : InImage map_21_227 image14665 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction14665 : Bundle := named_bundle% "RealMapCertificates/relations/basis14665.json"
theorem reductionProof14665 : EqualModuloRelations reduction14665.relations reduction14665.input reduction14665.output := by lin_cert using reduction14665.terms
theorem substitutionProof14665 : IsMapEvaluation generatorImages reduction14665.relations [0,1665] reduction14665.output := by lin_cert using reduction14665.terms
def image14666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14666 : InImage map_21_227 image14666 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction14666 : Bundle := named_bundle% "RealMapCertificates/relations/basis14666.json"
theorem reductionProof14666 : EqualModuloRelations reduction14666.relations reduction14666.input reduction14666.output := by lin_cert using reduction14666.terms
theorem substitutionProof14666 : IsMapEvaluation generatorImages reduction14666.relations [0,3,1522] reduction14666.output := by lin_cert using reduction14666.terms
def image14667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14667 : InImage map_21_227 image14667 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction14667 : Bundle := named_bundle% "RealMapCertificates/relations/basis14667.json"
theorem reductionProof14667 : EqualModuloRelations reduction14667.relations reduction14667.input reduction14667.output := by lin_cert using reduction14667.terms
theorem substitutionProof14667 : IsMapEvaluation generatorImages reduction14667.relations [0,2,1600] reduction14667.output := by lin_cert using reduction14667.terms
def image14668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14668 : InImage map_21_227 image14668 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction14668 : Bundle := named_bundle% "RealMapCertificates/relations/basis14668.json"
theorem reductionProof14668 : EqualModuloRelations reduction14668.relations reduction14668.input reduction14668.output := by lin_cert using reduction14668.terms
theorem substitutionProof14668 : IsMapEvaluation generatorImages reduction14668.relations [0,0,1643] reduction14668.output := by lin_cert using reduction14668.terms
def map_21_228 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image14884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14884 : InImage map_21_228 image14884 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14884 : Bundle := named_bundle% "RealMapCertificates/relations/basis14884.json"
theorem reductionProof14884 : EqualModuloRelations reduction14884.relations reduction14884.input reduction14884.output := by lin_cert using reduction14884.terms
theorem substitutionProof14884 : IsMapEvaluation generatorImages reduction14884.relations [1693] reduction14884.output := by lin_cert using reduction14884.terms
def map_21_229 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15043 : InImage map_21_229 image15043 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15043 : Bundle := named_bundle% "RealMapCertificates/relations/basis15043.json"
theorem reductionProof15043 : EqualModuloRelations reduction15043.relations reduction15043.input reduction15043.output := by lin_cert using reduction15043.terms
theorem substitutionProof15043 : IsMapEvaluation generatorImages reduction15043.relations [1725] reduction15043.output := by lin_cert using reduction15043.terms
def image15044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15044 : InImage map_21_229 image15044 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15044 : Bundle := named_bundle% "RealMapCertificates/relations/basis15044.json"
theorem reductionProof15044 : EqualModuloRelations reduction15044.relations reduction15044.input reduction15044.output := by lin_cert using reduction15044.terms
theorem substitutionProof15044 : IsMapEvaluation generatorImages reduction15044.relations [0,1696] reduction15044.output := by lin_cert using reduction15044.terms
def image15045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15045 : InImage map_21_229 image15045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15045 : Bundle := named_bundle% "RealMapCertificates/relations/basis15045.json"
theorem reductionProof15045 : EqualModuloRelations reduction15045.relations reduction15045.input reduction15045.output := by lin_cert using reduction15045.terms
theorem substitutionProof15045 : IsMapEvaluation generatorImages reduction15045.relations [0,1695] reduction15045.output := by lin_cert using reduction15045.terms
def image15046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15046 : InImage map_21_229 image15046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15046 : Bundle := named_bundle% "RealMapCertificates/relations/basis15046.json"
theorem reductionProof15046 : EqualModuloRelations reduction15046.relations reduction15046.input reduction15046.output := by lin_cert using reduction15046.terms
theorem substitutionProof15046 : IsMapEvaluation generatorImages reduction15046.relations [0,1694] reduction15046.output := by lin_cert using reduction15046.terms
def image15047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15047 : InImage map_21_229 image15047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15047 : Bundle := named_bundle% "RealMapCertificates/relations/basis15047.json"
theorem reductionProof15047 : EqualModuloRelations reduction15047.relations reduction15047.input reduction15047.output := by lin_cert using reduction15047.terms
theorem substitutionProof15047 : IsMapEvaluation generatorImages reduction15047.relations [0,0,8,8,64,324] reduction15047.output := by lin_cert using reduction15047.terms
def map_21_230 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15259 : InImage map_21_230 image15259 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15259 : Bundle := named_bundle% "RealMapCertificates/relations/basis15259.json"
theorem reductionProof15259 : EqualModuloRelations reduction15259.relations reduction15259.input reduction15259.output := by lin_cert using reduction15259.terms
theorem substitutionProof15259 : IsMapEvaluation generatorImages reduction15259.relations [1741] reduction15259.output := by lin_cert using reduction15259.terms
def image15260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15260 : InImage map_21_230 image15260 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15260 : Bundle := named_bundle% "RealMapCertificates/relations/basis15260.json"
theorem reductionProof15260 : EqualModuloRelations reduction15260.relations reduction15260.input reduction15260.output := by lin_cert using reduction15260.terms
theorem substitutionProof15260 : IsMapEvaluation generatorImages reduction15260.relations [2,1666] reduction15260.output := by lin_cert using reduction15260.terms
def image15261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15261 : InImage map_21_230 image15261 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15261 : Bundle := named_bundle% "RealMapCertificates/relations/basis15261.json"
theorem reductionProof15261 : EqualModuloRelations reduction15261.relations reduction15261.input reduction15261.output := by lin_cert using reduction15261.terms
theorem substitutionProof15261 : IsMapEvaluation generatorImages reduction15261.relations [1,1695] reduction15261.output := by lin_cert using reduction15261.terms
def image15262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15262 : InImage map_21_230 image15262 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15262 : Bundle := named_bundle% "RealMapCertificates/relations/basis15262.json"
theorem reductionProof15262 : EqualModuloRelations reduction15262.relations reduction15262.input reduction15262.output := by lin_cert using reduction15262.terms
theorem substitutionProof15262 : IsMapEvaluation generatorImages reduction15262.relations [1,1694] reduction15262.output := by lin_cert using reduction15262.terms
def image15263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15263 : InImage map_21_230 image15263 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15263 : Bundle := named_bundle% "RealMapCertificates/relations/basis15263.json"
theorem reductionProof15263 : EqualModuloRelations reduction15263.relations reduction15263.input reduction15263.output := by lin_cert using reduction15263.terms
theorem substitutionProof15263 : IsMapEvaluation generatorImages reduction15263.relations [0,3,1577] reduction15263.output := by lin_cert using reduction15263.terms
def image15264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15264 : InImage map_21_230 image15264 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15264 : Bundle := named_bundle% "RealMapCertificates/relations/basis15264.json"
theorem reductionProof15264 : EqualModuloRelations reduction15264.relations reduction15264.input reduction15264.output := by lin_cert using reduction15264.terms
theorem substitutionProof15264 : IsMapEvaluation generatorImages reduction15264.relations [0,0,1697] reduction15264.output := by lin_cert using reduction15264.terms
def map_21_231 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15509 : InImage map_21_231 image15509 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15509 : Bundle := named_bundle% "RealMapCertificates/relations/basis15509.json"
theorem reductionProof15509 : EqualModuloRelations reduction15509.relations reduction15509.input reduction15509.output := by lin_cert using reduction15509.terms
theorem substitutionProof15509 : IsMapEvaluation generatorImages reduction15509.relations [1764] reduction15509.output := by lin_cert using reduction15509.terms
def image15510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15510 : InImage map_21_231 image15510 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15510 : Bundle := named_bundle% "RealMapCertificates/relations/basis15510.json"
theorem reductionProof15510 : EqualModuloRelations reduction15510.relations reduction15510.input reduction15510.output := by lin_cert using reduction15510.terms
theorem substitutionProof15510 : IsMapEvaluation generatorImages reduction15510.relations [13,1323] reduction15510.output := by lin_cert using reduction15510.terms
def image15511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15511 : InImage map_21_231 image15511 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15511 : Bundle := named_bundle% "RealMapCertificates/relations/basis15511.json"
theorem reductionProof15511 : EqualModuloRelations reduction15511.relations reduction15511.input reduction15511.output := by lin_cert using reduction15511.terms
theorem substitutionProof15511 : IsMapEvaluation generatorImages reduction15511.relations [3,1612] reduction15511.output := by lin_cert using reduction15511.terms
def image15512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15512 : InImage map_21_231 image15512 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15512 : Bundle := named_bundle% "RealMapCertificates/relations/basis15512.json"
theorem reductionProof15512 : EqualModuloRelations reduction15512.relations reduction15512.input reduction15512.output := by lin_cert using reduction15512.terms
theorem substitutionProof15512 : IsMapEvaluation generatorImages reduction15512.relations [2,2,1613] reduction15512.output := by lin_cert using reduction15512.terms
def image15513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15513 : InImage map_21_231 image15513 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15513 : Bundle := named_bundle% "RealMapCertificates/relations/basis15513.json"
theorem reductionProof15513 : EqualModuloRelations reduction15513.relations reduction15513.input reduction15513.output := by lin_cert using reduction15513.terms
theorem substitutionProof15513 : IsMapEvaluation generatorImages reduction15513.relations [0,1742] reduction15513.output := by lin_cert using reduction15513.terms
def image15514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15514 : InImage map_21_231 image15514 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15514 : Bundle := named_bundle% "RealMapCertificates/relations/basis15514.json"
theorem reductionProof15514 : EqualModuloRelations reduction15514.relations reduction15514.input reduction15514.output := by lin_cert using reduction15514.terms
theorem substitutionProof15514 : IsMapEvaluation generatorImages reduction15514.relations [0,3,1600] reduction15514.output := by lin_cert using reduction15514.terms
def image15515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15515 : InImage map_21_231 image15515 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15515 : Bundle := named_bundle% "RealMapCertificates/relations/basis15515.json"
theorem reductionProof15515 : EqualModuloRelations reduction15515.relations reduction15515.input reduction15515.output := by lin_cert using reduction15515.terms
theorem substitutionProof15515 : IsMapEvaluation generatorImages reduction15515.relations [0,0,0,0,0,167,324] reduction15515.output := by lin_cert using reduction15515.terms
def map_21_232 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15687 : InImage map_21_232 image15687 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15687 : Bundle := named_bundle% "RealMapCertificates/relations/basis15687.json"
theorem reductionProof15687 : EqualModuloRelations reduction15687.relations reduction15687.input reduction15687.output := by lin_cert using reduction15687.terms
theorem substitutionProof15687 : IsMapEvaluation generatorImages reduction15687.relations [1788] reduction15687.output := by lin_cert using reduction15687.terms
def image15688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15688 : InImage map_21_232 image15688 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15688 : Bundle := named_bundle% "RealMapCertificates/relations/basis15688.json"
theorem reductionProof15688 : EqualModuloRelations reduction15688.relations reduction15688.input reduction15688.output := by lin_cert using reduction15688.terms
theorem substitutionProof15688 : IsMapEvaluation generatorImages reduction15688.relations [2,1695] reduction15688.output := by lin_cert using reduction15688.terms
def image15689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15689 : InImage map_21_232 image15689 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15689 : Bundle := named_bundle% "RealMapCertificates/relations/basis15689.json"
theorem reductionProof15689 : EqualModuloRelations reduction15689.relations reduction15689.input reduction15689.output := by lin_cert using reduction15689.terms
theorem substitutionProof15689 : IsMapEvaluation generatorImages reduction15689.relations [1,3,1600] reduction15689.output := by lin_cert using reduction15689.terms
def image15690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15690 : InImage map_21_232 image15690 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15690 : Bundle := named_bundle% "RealMapCertificates/relations/basis15690.json"
theorem reductionProof15690 : EqualModuloRelations reduction15690.relations reduction15690.input reduction15690.output := by lin_cert using reduction15690.terms
theorem substitutionProof15690 : IsMapEvaluation generatorImages reduction15690.relations [0,1765] reduction15690.output := by lin_cert using reduction15690.terms
def image15691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15691 : InImage map_21_232 image15691 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15691 : Bundle := named_bundle% "RealMapCertificates/relations/basis15691.json"
theorem reductionProof15691 : EqualModuloRelations reduction15691.relations reduction15691.input reduction15691.output := by lin_cert using reduction15691.terms
theorem substitutionProof15691 : IsMapEvaluation generatorImages reduction15691.relations [0,3,1613] reduction15691.output := by lin_cert using reduction15691.terms
def image15692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15692 : InImage map_21_232 image15692 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15692 : Bundle := named_bundle% "RealMapCertificates/relations/basis15692.json"
theorem reductionProof15692 : EqualModuloRelations reduction15692.relations reduction15692.input reduction15692.output := by lin_cert using reduction15692.terms
theorem substitutionProof15692 : IsMapEvaluation generatorImages reduction15692.relations [0,0,0,0,0,172,324] reduction15692.output := by lin_cert using reduction15692.terms
end RealMapCertificates
