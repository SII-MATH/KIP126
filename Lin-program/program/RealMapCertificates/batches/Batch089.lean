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
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 43 => []
  | 76 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 190 => []
  | 195 => []
  | 206 => [[4,6,8,12]]
  | 209 => []
  | 260 => []
  | 278 => []
  | 324 => []
  | 333 => []
  | 351 => []
  | 387 => []
  | 417 => []
  | 474 => []
  | 764 => []
  | 824 => []
  | 965 => []
  | 992 => []
  | 1017 => []
  | 1091 => []
  | 1509 => []
  | 1561 => []
  | 1600 => []
  | 1617 => []
  | 1643 => []
  | 1665 => []
  | 1694 => []
  | 1697 => []
  | 1698 => []
  | 1702 => []
  | 1726 => []
  | 1729 => []
  | 1742 => []
  | 1768 => []
  | 1789 => []
  | 1816 => []
  | 1817 => []
  | 1818 => []
  | 1819 => []
  | 1820 => []
  | 1842 => []
  | 1869 => []
  | 1870 => []
  | 1871 => []
  | 1894 => []
  | 1913 => []
  | 1914 => []
  | 1944 => []
  | 1948 => []
  | 1972 => []
  | 1973 => []
  | 1974 => []
  | 2010 => []
  | 2011 => []
  | 2050 => []
  | 2051 => []
  | 2065 => []
  | 2066 => []
  | 2067 => []
  | 2068 => []
  | 2071 => []
  | 2112 => []
  | 2142 => []
  | 2143 => []
  | 2179 => []
  | 2180 => []
  | 2181 => []
  | 2222 => []
  | 2258 => []
  | 2259 => []
  | 2261 => []
  | 2265 => []
  | 2288 => []
  | 2289 => []
  | 2290 => []
  | 2291 => []
  | 2321 => []
  | 2323 => []
  | 2355 => []
  | 2356 => []
  | 2388 => []
  | 2389 => []
  | 2390 => []
  | 2391 => []
  | 2392 => []
  | 2424 => []
  | _ => []
def map_21_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15916 : InImage map_21_233 image15916 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15916 : Bundle := named_bundle% "RealMapCertificates/relations/basis15916.json"
theorem reductionProof15916 : EqualModuloRelations reduction15916.relations reduction15916.input reduction15916.output := by lin_cert using reduction15916.terms
theorem substitutionProof15916 : IsMapEvaluation generatorImages reduction15916.relations [1817] reduction15916.output := by lin_cert using reduction15916.terms
def image15917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15917 : InImage map_21_233 image15917 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15917 : Bundle := named_bundle% "RealMapCertificates/relations/basis15917.json"
theorem reductionProof15917 : EqualModuloRelations reduction15917.relations reduction15917.input reduction15917.output := by lin_cert using reduction15917.terms
theorem substitutionProof15917 : IsMapEvaluation generatorImages reduction15917.relations [1816] reduction15917.output := by lin_cert using reduction15917.terms
def image15918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15918 : InImage map_21_233 image15918 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15918 : Bundle := named_bundle% "RealMapCertificates/relations/basis15918.json"
theorem reductionProof15918 : EqualModuloRelations reduction15918.relations reduction15918.input reduction15918.output := by lin_cert using reduction15918.terms
theorem substitutionProof15918 : IsMapEvaluation generatorImages reduction15918.relations [195,333] reduction15918.output := by lin_cert using reduction15918.terms
def image15919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15919 : InImage map_21_233 image15919 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15919 : Bundle := named_bundle% "RealMapCertificates/relations/basis15919.json"
theorem reductionProof15919 : EqualModuloRelations reduction15919.relations reduction15919.input reduction15919.output := by lin_cert using reduction15919.terms
theorem substitutionProof15919 : IsMapEvaluation generatorImages reduction15919.relations [9,13,992] reduction15919.output := by lin_cert using reduction15919.terms
def image15920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15920 : InImage map_21_233 image15920 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15920 : Bundle := named_bundle% "RealMapCertificates/relations/basis15920.json"
theorem reductionProof15920 : EqualModuloRelations reduction15920.relations reduction15920.input reduction15920.output := by lin_cert using reduction15920.terms
theorem substitutionProof15920 : IsMapEvaluation generatorImages reduction15920.relations [1,1,1726] reduction15920.output := by lin_cert using reduction15920.terms
def image15921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15921 : InImage map_21_233 image15921 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15921 : Bundle := named_bundle% "RealMapCertificates/relations/basis15921.json"
theorem reductionProof15921 : EqualModuloRelations reduction15921.relations reduction15921.input reduction15921.output := by lin_cert using reduction15921.terms
theorem substitutionProof15921 : IsMapEvaluation generatorImages reduction15921.relations [0,0,1768] reduction15921.output := by lin_cert using reduction15921.terms
def map_21_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16164 : InImage map_21_234 image16164 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16164 : Bundle := named_bundle% "RealMapCertificates/relations/basis16164.json"
theorem reductionProof16164 : EqualModuloRelations reduction16164.relations reduction16164.input reduction16164.output := by lin_cert using reduction16164.terms
theorem substitutionProof16164 : IsMapEvaluation generatorImages reduction16164.relations [1842] reduction16164.output := by lin_cert using reduction16164.terms
def image16165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16165 : InImage map_21_234 image16165 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16165 : Bundle := named_bundle% "RealMapCertificates/relations/basis16165.json"
theorem reductionProof16165 : EqualModuloRelations reduction16165.relations reduction16165.input reduction16165.output := by lin_cert using reduction16165.terms
theorem substitutionProof16165 : IsMapEvaluation generatorImages reduction16165.relations [3,1665] reduction16165.output := by lin_cert using reduction16165.terms
def image16166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16166 : InImage map_21_234 image16166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16166 : Bundle := named_bundle% "RealMapCertificates/relations/basis16166.json"
theorem reductionProof16166 : EqualModuloRelations reduction16166.relations reduction16166.input reduction16166.output := by lin_cert using reduction16166.terms
theorem substitutionProof16166 : IsMapEvaluation generatorImages reduction16166.relations [2,1742] reduction16166.output := by lin_cert using reduction16166.terms
def image16167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16167 : InImage map_21_234 image16167 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16167 : Bundle := named_bundle% "RealMapCertificates/relations/basis16167.json"
theorem reductionProof16167 : EqualModuloRelations reduction16167.relations reduction16167.input reduction16167.output := by lin_cert using reduction16167.terms
theorem substitutionProof16167 : IsMapEvaluation generatorImages reduction16167.relations [0,1819] reduction16167.output := by lin_cert using reduction16167.terms
def image16168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16168 : InImage map_21_234 image16168 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16168 : Bundle := named_bundle% "RealMapCertificates/relations/basis16168.json"
theorem reductionProof16168 : EqualModuloRelations reduction16168.relations reduction16168.input reduction16168.output := by lin_cert using reduction16168.terms
theorem substitutionProof16168 : IsMapEvaluation generatorImages reduction16168.relations [0,3,1643] reduction16168.output := by lin_cert using reduction16168.terms
def image16169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16169 : InImage map_21_234 image16169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16169 : Bundle := named_bundle% "RealMapCertificates/relations/basis16169.json"
theorem reductionProof16169 : EqualModuloRelations reduction16169.relations reduction16169.input reduction16169.output := by lin_cert using reduction16169.terms
theorem substitutionProof16169 : IsMapEvaluation generatorImages reduction16169.relations [0,0,1789] reduction16169.output := by lin_cert using reduction16169.terms
def map_21_235 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16356 : InImage map_21_235 image16356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16356 : Bundle := named_bundle% "RealMapCertificates/relations/basis16356.json"
theorem reductionProof16356 : EqualModuloRelations reduction16356.relations reduction16356.input reduction16356.output := by lin_cert using reduction16356.terms
theorem substitutionProof16356 : IsMapEvaluation generatorImages reduction16356.relations [1869] reduction16356.output := by lin_cert using reduction16356.terms
def image16357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16357 : InImage map_21_235 image16357 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16357 : Bundle := named_bundle% "RealMapCertificates/relations/basis16357.json"
theorem reductionProof16357 : EqualModuloRelations reduction16357.relations reduction16357.input reduction16357.output := by lin_cert using reduction16357.terms
theorem substitutionProof16357 : IsMapEvaluation generatorImages reduction16357.relations [206,324] reduction16357.output := by lin_cert using reduction16357.terms
def image16358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16358 : InImage map_21_235 image16358 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16358 : Bundle := named_bundle% "RealMapCertificates/relations/basis16358.json"
theorem reductionProof16358 : EqualModuloRelations reduction16358.relations reduction16358.input reduction16358.output := by lin_cert using reduction16358.terms
theorem substitutionProof16358 : IsMapEvaluation generatorImages reduction16358.relations [1,1818] reduction16358.output := by lin_cert using reduction16358.terms
def map_21_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16585 : InImage map_21_236 image16585 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16585 : Bundle := named_bundle% "RealMapCertificates/relations/basis16585.json"
theorem reductionProof16585 : EqualModuloRelations reduction16585.relations reduction16585.input reduction16585.output := by lin_cert using reduction16585.terms
theorem substitutionProof16585 : IsMapEvaluation generatorImages reduction16585.relations [17,113,324] reduction16585.output := by lin_cert using reduction16585.terms
def image16586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16586 : InImage map_21_236 image16586 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16586 : Bundle := named_bundle% "RealMapCertificates/relations/basis16586.json"
theorem reductionProof16586 : EqualModuloRelations reduction16586.relations reduction16586.input reduction16586.output := by lin_cert using reduction16586.terms
theorem substitutionProof16586 : IsMapEvaluation generatorImages reduction16586.relations [13,13,992] reduction16586.output := by lin_cert using reduction16586.terms
def image16587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16587 : InImage map_21_236 image16587 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16587 : Bundle := named_bundle% "RealMapCertificates/relations/basis16587.json"
theorem reductionProof16587 : EqualModuloRelations reduction16587.relations reduction16587.input reduction16587.output := by lin_cert using reduction16587.terms
theorem substitutionProof16587 : IsMapEvaluation generatorImages reduction16587.relations [3,1694] reduction16587.output := by lin_cert using reduction16587.terms
def image16588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16588 : InImage map_21_236 image16588 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16588 : Bundle := named_bundle% "RealMapCertificates/relations/basis16588.json"
theorem reductionProof16588 : EqualModuloRelations reduction16588.relations reduction16588.input reduction16588.output := by lin_cert using reduction16588.terms
theorem substitutionProof16588 : IsMapEvaluation generatorImages reduction16588.relations [0,43,965] reduction16588.output := by lin_cert using reduction16588.terms
def map_21_237 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16837 : InImage map_21_237 image16837 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16837 : Bundle := named_bundle% "RealMapCertificates/relations/basis16837.json"
theorem reductionProof16837 : EqualModuloRelations reduction16837.relations reduction16837.input reduction16837.output := by lin_cert using reduction16837.terms
theorem substitutionProof16837 : IsMapEvaluation generatorImages reduction16837.relations [1913] reduction16837.output := by lin_cert using reduction16837.terms
def image16838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16838 : InImage map_21_237 image16838 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16838 : Bundle := named_bundle% "RealMapCertificates/relations/basis16838.json"
theorem reductionProof16838 : EqualModuloRelations reduction16838.relations reduction16838.input reduction16838.output := by lin_cert using reduction16838.terms
theorem substitutionProof16838 : IsMapEvaluation generatorImages reduction16838.relations [1,1870] reduction16838.output := by lin_cert using reduction16838.terms
def image16839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16839 : InImage map_21_237 image16839 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16839 : Bundle := named_bundle% "RealMapCertificates/relations/basis16839.json"
theorem reductionProof16839 : EqualModuloRelations reduction16839.relations reduction16839.input reduction16839.output := by lin_cert using reduction16839.terms
theorem substitutionProof16839 : IsMapEvaluation generatorImages reduction16839.relations [0,1894] reduction16839.output := by lin_cert using reduction16839.terms
def image16840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16840 : InImage map_21_237 image16840 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16840 : Bundle := named_bundle% "RealMapCertificates/relations/basis16840.json"
theorem reductionProof16840 : EqualModuloRelations reduction16840.relations reduction16840.input reduction16840.output := by lin_cert using reduction16840.terms
theorem substitutionProof16840 : IsMapEvaluation generatorImages reduction16840.relations [0,3,1698] reduction16840.output := by lin_cert using reduction16840.terms
def image16841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16841 : InImage map_21_237 image16841 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16841 : Bundle := named_bundle% "RealMapCertificates/relations/basis16841.json"
theorem reductionProof16841 : EqualModuloRelations reduction16841.relations reduction16841.input reduction16841.output := by lin_cert using reduction16841.terms
theorem substitutionProof16841 : IsMapEvaluation generatorImages reduction16841.relations [0,3,1697] reduction16841.output := by lin_cert using reduction16841.terms
def image16842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16842 : InImage map_21_237 image16842 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16842 : Bundle := named_bundle% "RealMapCertificates/relations/basis16842.json"
theorem reductionProof16842 : EqualModuloRelations reduction16842.relations reduction16842.input reduction16842.output := by lin_cert using reduction16842.terms
theorem substitutionProof16842 : IsMapEvaluation generatorImages reduction16842.relations [0,0,1871] reduction16842.output := by lin_cert using reduction16842.terms
def map_21_238 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17016 : InImage map_21_238 image17016 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17016 : Bundle := named_bundle% "RealMapCertificates/relations/basis17016.json"
theorem reductionProof17016 : EqualModuloRelations reduction17016.relations reduction17016.input reduction17016.output := by lin_cert using reduction17016.terms
theorem substitutionProof17016 : IsMapEvaluation generatorImages reduction17016.relations [209,351] reduction17016.output := by lin_cert using reduction17016.terms
def image17017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17017 : InImage map_21_238 image17017 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17017 : Bundle := named_bundle% "RealMapCertificates/relations/basis17017.json"
theorem reductionProof17017 : EqualModuloRelations reduction17017.relations reduction17017.input reduction17017.output := by lin_cert using reduction17017.terms
theorem substitutionProof17017 : IsMapEvaluation generatorImages reduction17017.relations [190,417] reduction17017.output := by lin_cert using reduction17017.terms
def image17018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17018 : InImage map_21_238 image17018 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17018 : Bundle := named_bundle% "RealMapCertificates/relations/basis17018.json"
theorem reductionProof17018 : EqualModuloRelations reduction17018.relations reduction17018.input reduction17018.output := by lin_cert using reduction17018.terms
theorem substitutionProof17018 : IsMapEvaluation generatorImages reduction17018.relations [9,1509] reduction17018.output := by lin_cert using reduction17018.terms
def image17019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17019 : InImage map_21_238 image17019 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17019 : Bundle := named_bundle% "RealMapCertificates/relations/basis17019.json"
theorem reductionProof17019 : EqualModuloRelations reduction17019.relations reduction17019.input reduction17019.output := by lin_cert using reduction17019.terms
theorem substitutionProof17019 : IsMapEvaluation generatorImages reduction17019.relations [8,149,324] reduction17019.output := by lin_cert using reduction17019.terms
def image17020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17020 : InImage map_21_238 image17020 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17020 : Bundle := named_bundle% "RealMapCertificates/relations/basis17020.json"
theorem reductionProof17020 : EqualModuloRelations reduction17020.relations reduction17020.input reduction17020.output := by lin_cert using reduction17020.terms
theorem substitutionProof17020 : IsMapEvaluation generatorImages reduction17020.relations [3,1742] reduction17020.output := by lin_cert using reduction17020.terms
def image17021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17021 : InImage map_21_238 image17021 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17021 : Bundle := named_bundle% "RealMapCertificates/relations/basis17021.json"
theorem reductionProof17021 : EqualModuloRelations reduction17021.relations reduction17021.input reduction17021.output := by lin_cert using reduction17021.terms
theorem substitutionProof17021 : IsMapEvaluation generatorImages reduction17021.relations [3,3,1600] reduction17021.output := by lin_cert using reduction17021.terms
def image17022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17022 : InImage map_21_238 image17022 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17022 : Bundle := named_bundle% "RealMapCertificates/relations/basis17022.json"
theorem reductionProof17022 : EqualModuloRelations reduction17022.relations reduction17022.input reduction17022.output := by lin_cert using reduction17022.terms
theorem substitutionProof17022 : IsMapEvaluation generatorImages reduction17022.relations [1,1894] reduction17022.output := by lin_cert using reduction17022.terms
def map_21_239 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17281 : InImage map_21_239 image17281 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17281 : Bundle := named_bundle% "RealMapCertificates/relations/basis17281.json"
theorem reductionProof17281 : EqualModuloRelations reduction17281.relations reduction17281.input reduction17281.output := by lin_cert using reduction17281.terms
theorem substitutionProof17281 : IsMapEvaluation generatorImages reduction17281.relations [1972] reduction17281.output := by lin_cert using reduction17281.terms
def image17282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17282 : InImage map_21_239 image17282 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17282 : Bundle := named_bundle% "RealMapCertificates/relations/basis17282.json"
theorem reductionProof17282 : EqualModuloRelations reduction17282.relations reduction17282.input reduction17282.output := by lin_cert using reduction17282.terms
theorem substitutionProof17282 : IsMapEvaluation generatorImages reduction17282.relations [8,154,324] reduction17282.output := by lin_cert using reduction17282.terms
def image17283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17283 : InImage map_21_239 image17283 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17283 : Bundle := named_bundle% "RealMapCertificates/relations/basis17283.json"
theorem reductionProof17283 : EqualModuloRelations reduction17283.relations reduction17283.input reduction17283.output := by lin_cert using reduction17283.terms
theorem substitutionProof17283 : IsMapEvaluation generatorImages reduction17283.relations [1,76,764] reduction17283.output := by lin_cert using reduction17283.terms
def image17284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17284 : InImage map_21_239 image17284 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17284 : Bundle := named_bundle% "RealMapCertificates/relations/basis17284.json"
theorem reductionProof17284 : EqualModuloRelations reduction17284.relations reduction17284.input reduction17284.output := by lin_cert using reduction17284.terms
theorem substitutionProof17284 : IsMapEvaluation generatorImages reduction17284.relations [0,1944] reduction17284.output := by lin_cert using reduction17284.terms
def image17285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17285 : InImage map_21_239 image17285 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17285 : Bundle := named_bundle% "RealMapCertificates/relations/basis17285.json"
theorem reductionProof17285 : EqualModuloRelations reduction17285.relations reduction17285.input reduction17285.output := by lin_cert using reduction17285.terms
theorem substitutionProof17285 : IsMapEvaluation generatorImages reduction17285.relations [0,43,1017] reduction17285.output := by lin_cert using reduction17285.terms
def image17286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17286 : InImage map_21_239 image17286 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17286 : Bundle := named_bundle% "RealMapCertificates/relations/basis17286.json"
theorem reductionProof17286 : EqualModuloRelations reduction17286.relations reduction17286.input reduction17286.output := by lin_cert using reduction17286.terms
theorem substitutionProof17286 : IsMapEvaluation generatorImages reduction17286.relations [0,0,1914] reduction17286.output := by lin_cert using reduction17286.terms
def map_21_240 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17559 : InImage map_21_240 image17559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17559 : Bundle := named_bundle% "RealMapCertificates/relations/basis17559.json"
theorem reductionProof17559 : EqualModuloRelations reduction17559.relations reduction17559.input reduction17559.output := by lin_cert using reduction17559.terms
theorem substitutionProof17559 : IsMapEvaluation generatorImages reduction17559.relations [2011] reduction17559.output := by lin_cert using reduction17559.terms
def image17560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17560 : InImage map_21_240 image17560 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17560 : Bundle := named_bundle% "RealMapCertificates/relations/basis17560.json"
theorem reductionProof17560 : EqualModuloRelations reduction17560.relations reduction17560.input reduction17560.output := by lin_cert using reduction17560.terms
theorem substitutionProof17560 : IsMapEvaluation generatorImages reduction17560.relations [2010] reduction17560.output := by lin_cert using reduction17560.terms
def image17561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17561 : InImage map_21_240 image17561 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17561 : Bundle := named_bundle% "RealMapCertificates/relations/basis17561.json"
theorem reductionProof17561 : EqualModuloRelations reduction17561.relations reduction17561.input reduction17561.output := by lin_cert using reduction17561.terms
theorem substitutionProof17561 : IsMapEvaluation generatorImages reduction17561.relations [0,1973] reduction17561.output := by lin_cert using reduction17561.terms
def map_21_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17793 : InImage map_21_241 image17793 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17793 : Bundle := named_bundle% "RealMapCertificates/relations/basis17793.json"
theorem reductionProof17793 : EqualModuloRelations reduction17793.relations reduction17793.input reduction17793.output := by lin_cert using reduction17793.terms
theorem substitutionProof17793 : IsMapEvaluation generatorImages reduction17793.relations [2050] reduction17793.output := by lin_cert using reduction17793.terms
def image17794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17794 : InImage map_21_241 image17794 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17794 : Bundle := named_bundle% "RealMapCertificates/relations/basis17794.json"
theorem reductionProof17794 : EqualModuloRelations reduction17794.relations reduction17794.input reduction17794.output := by lin_cert using reduction17794.terms
theorem substitutionProof17794 : IsMapEvaluation generatorImages reduction17794.relations [209,387] reduction17794.output := by lin_cert using reduction17794.terms
def image17795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17795 : InImage map_21_241 image17795 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17795 : Bundle := named_bundle% "RealMapCertificates/relations/basis17795.json"
theorem reductionProof17795 : EqualModuloRelations reduction17795.relations reduction17795.input reduction17795.output := by lin_cert using reduction17795.terms
theorem substitutionProof17795 : IsMapEvaluation generatorImages reduction17795.relations [13,1509] reduction17795.output := by lin_cert using reduction17795.terms
def image17796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17796 : InImage map_21_241 image17796 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17796 : Bundle := named_bundle% "RealMapCertificates/relations/basis17796.json"
theorem reductionProof17796 : EqualModuloRelations reduction17796.relations reduction17796.input reduction17796.output := by lin_cert using reduction17796.terms
theorem substitutionProof17796 : IsMapEvaluation generatorImages reduction17796.relations [8,160,324] reduction17796.output := by lin_cert using reduction17796.terms
def image17797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17797 : InImage map_21_241 image17797 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17797 : Bundle := named_bundle% "RealMapCertificates/relations/basis17797.json"
theorem reductionProof17797 : EqualModuloRelations reduction17797.relations reduction17797.input reduction17797.output := by lin_cert using reduction17797.terms
theorem substitutionProof17797 : IsMapEvaluation generatorImages reduction17797.relations [0,0,0,1948] reduction17797.output := by lin_cert using reduction17797.terms
def map_21_242 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18054 : InImage map_21_242 image18054 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18054 : Bundle := named_bundle% "RealMapCertificates/relations/basis18054.json"
theorem reductionProof18054 : EqualModuloRelations reduction18054.relations reduction18054.input reduction18054.output := by lin_cert using reduction18054.terms
theorem substitutionProof18054 : IsMapEvaluation generatorImages reduction18054.relations [2067] reduction18054.output := by lin_cert using reduction18054.terms
def image18055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18055 : InImage map_21_242 image18055 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18055 : Bundle := named_bundle% "RealMapCertificates/relations/basis18055.json"
theorem reductionProof18055 : EqualModuloRelations reduction18055.relations reduction18055.input reduction18055.output := by lin_cert using reduction18055.terms
theorem substitutionProof18055 : IsMapEvaluation generatorImages reduction18055.relations [2066] reduction18055.output := by lin_cert using reduction18055.terms
def image18056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18056 : InImage map_21_242 image18056 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18056 : Bundle := named_bundle% "RealMapCertificates/relations/basis18056.json"
theorem reductionProof18056 : EqualModuloRelations reduction18056.relations reduction18056.input reduction18056.output := by lin_cert using reduction18056.terms
theorem substitutionProof18056 : IsMapEvaluation generatorImages reduction18056.relations [2065] reduction18056.output := by lin_cert using reduction18056.terms
def image18057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18057 : InImage map_21_242 image18057 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18057 : Bundle := named_bundle% "RealMapCertificates/relations/basis18057.json"
theorem reductionProof18057 : EqualModuloRelations reduction18057.relations reduction18057.input reduction18057.output := by lin_cert using reduction18057.terms
theorem substitutionProof18057 : IsMapEvaluation generatorImages reduction18057.relations [13,13,1091] reduction18057.output := by lin_cert using reduction18057.terms
def image18058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18058 : InImage map_21_242 image18058 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18058 : Bundle := named_bundle% "RealMapCertificates/relations/basis18058.json"
theorem reductionProof18058 : EqualModuloRelations reduction18058.relations reduction18058.input reduction18058.output := by lin_cert using reduction18058.terms
theorem substitutionProof18058 : IsMapEvaluation generatorImages reduction18058.relations [8,162,324] reduction18058.output := by lin_cert using reduction18058.terms
def image18059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18059 : InImage map_21_242 image18059 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18059 : Bundle := named_bundle% "RealMapCertificates/relations/basis18059.json"
theorem reductionProof18059 : EqualModuloRelations reduction18059.relations reduction18059.input reduction18059.output := by lin_cert using reduction18059.terms
theorem substitutionProof18059 : IsMapEvaluation generatorImages reduction18059.relations [2,1944] reduction18059.output := by lin_cert using reduction18059.terms
def image18060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18060 : InImage map_21_242 image18060 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18060 : Bundle := named_bundle% "RealMapCertificates/relations/basis18060.json"
theorem reductionProof18060 : EqualModuloRelations reduction18060.relations reduction18060.input reduction18060.output := by lin_cert using reduction18060.terms
theorem substitutionProof18060 : IsMapEvaluation generatorImages reduction18060.relations [0,3,1820] reduction18060.output := by lin_cert using reduction18060.terms
def image18061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18061 : InImage map_21_242 image18061 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18061 : Bundle := named_bundle% "RealMapCertificates/relations/basis18061.json"
theorem reductionProof18061 : EqualModuloRelations reduction18061.relations reduction18061.input reduction18061.output := by lin_cert using reduction18061.terms
theorem substitutionProof18061 : IsMapEvaluation generatorImages reduction18061.relations [0,0,0,1974] reduction18061.output := by lin_cert using reduction18061.terms
def map_21_243 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18336 : InImage map_21_243 image18336 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18336 : Bundle := named_bundle% "RealMapCertificates/relations/basis18336.json"
theorem reductionProof18336 : EqualModuloRelations reduction18336.relations reduction18336.input reduction18336.output := by lin_cert using reduction18336.terms
theorem substitutionProof18336 : IsMapEvaluation generatorImages reduction18336.relations [190,474] reduction18336.output := by lin_cert using reduction18336.terms
def image18337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18337 : InImage map_21_243 image18337 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18337 : Bundle := named_bundle% "RealMapCertificates/relations/basis18337.json"
theorem reductionProof18337 : EqualModuloRelations reduction18337.relations reduction18337.input reduction18337.output := by lin_cert using reduction18337.terms
theorem substitutionProof18337 : IsMapEvaluation generatorImages reduction18337.relations [1,2051] reduction18337.output := by lin_cert using reduction18337.terms
def image18338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18338 : InImage map_21_243 image18338 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18338 : Bundle := named_bundle% "RealMapCertificates/relations/basis18338.json"
theorem reductionProof18338 : EqualModuloRelations reduction18338.relations reduction18338.input reduction18338.output := by lin_cert using reduction18338.terms
theorem substitutionProof18338 : IsMapEvaluation generatorImages reduction18338.relations [0,2068] reduction18338.output := by lin_cert using reduction18338.terms
def map_21_244 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18539 : InImage map_21_244 image18539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18539 : Bundle := named_bundle% "RealMapCertificates/relations/basis18539.json"
theorem reductionProof18539 : EqualModuloRelations reduction18539.relations reduction18539.input reduction18539.output := by lin_cert using reduction18539.terms
theorem substitutionProof18539 : IsMapEvaluation generatorImages reduction18539.relations [2142] reduction18539.output := by lin_cert using reduction18539.terms
def image18540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18540 : InImage map_21_244 image18540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18540 : Bundle := named_bundle% "RealMapCertificates/relations/basis18540.json"
theorem reductionProof18540 : EqualModuloRelations reduction18540.relations reduction18540.input reduction18540.output := by lin_cert using reduction18540.terms
theorem substitutionProof18540 : IsMapEvaluation generatorImages reduction18540.relations [13,1561] reduction18540.output := by lin_cert using reduction18540.terms
def image18541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18541 : InImage map_21_244 image18541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18541 : Bundle := named_bundle% "RealMapCertificates/relations/basis18541.json"
theorem reductionProof18541 : EqualModuloRelations reduction18541.relations reduction18541.input reduction18541.output := by lin_cert using reduction18541.terms
theorem substitutionProof18541 : IsMapEvaluation generatorImages reduction18541.relations [3,1894] reduction18541.output := by lin_cert using reduction18541.terms
def image18542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18542 : InImage map_21_244 image18542 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18542 : Bundle := named_bundle% "RealMapCertificates/relations/basis18542.json"
theorem reductionProof18542 : EqualModuloRelations reduction18542.relations reduction18542.input reduction18542.output := by lin_cert using reduction18542.terms
theorem substitutionProof18542 : IsMapEvaluation generatorImages reduction18542.relations [1,2068] reduction18542.output := by lin_cert using reduction18542.terms
def image18543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18543 : InImage map_21_244 image18543 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18543 : Bundle := named_bundle% "RealMapCertificates/relations/basis18543.json"
theorem reductionProof18543 : EqualModuloRelations reduction18543.relations reduction18543.input reduction18543.output := by lin_cert using reduction18543.terms
theorem substitutionProof18543 : IsMapEvaluation generatorImages reduction18543.relations [0,0,2071] reduction18543.output := by lin_cert using reduction18543.terms
def image18544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18544 : InImage map_21_244 image18544 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18544 : Bundle := named_bundle% "RealMapCertificates/relations/basis18544.json"
theorem reductionProof18544 : EqualModuloRelations reduction18544.relations reduction18544.input reduction18544.output := by lin_cert using reduction18544.terms
theorem substitutionProof18544 : IsMapEvaluation generatorImages reduction18544.relations [0,0,2,1948] reduction18544.output := by lin_cert using reduction18544.terms
def map_21_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18808 : InImage map_21_245 image18808 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18808 : Bundle := named_bundle% "RealMapCertificates/relations/basis18808.json"
theorem reductionProof18808 : EqualModuloRelations reduction18808.relations reduction18808.input reduction18808.output := by lin_cert using reduction18808.terms
theorem substitutionProof18808 : IsMapEvaluation generatorImages reduction18808.relations [2181] reduction18808.output := by lin_cert using reduction18808.terms
def image18809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18809 : InImage map_21_245 image18809 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18809 : Bundle := named_bundle% "RealMapCertificates/relations/basis18809.json"
theorem reductionProof18809 : EqualModuloRelations reduction18809.relations reduction18809.input reduction18809.output := by lin_cert using reduction18809.terms
theorem substitutionProof18809 : IsMapEvaluation generatorImages reduction18809.relations [2180] reduction18809.output := by lin_cert using reduction18809.terms
def image18810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18810 : InImage map_21_245 image18810 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18810 : Bundle := named_bundle% "RealMapCertificates/relations/basis18810.json"
theorem reductionProof18810 : EqualModuloRelations reduction18810.relations reduction18810.input reduction18810.output := by lin_cert using reduction18810.terms
theorem substitutionProof18810 : IsMapEvaluation generatorImages reduction18810.relations [2179] reduction18810.output := by lin_cert using reduction18810.terms
def image18811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18811 : InImage map_21_245 image18811 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18811 : Bundle := named_bundle% "RealMapCertificates/relations/basis18811.json"
theorem reductionProof18811 : EqualModuloRelations reduction18811.relations reduction18811.input reduction18811.output := by lin_cert using reduction18811.terms
theorem substitutionProof18811 : IsMapEvaluation generatorImages reduction18811.relations [8,17,80,324] reduction18811.output := by lin_cert using reduction18811.terms
def image18812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18812 : InImage map_21_245 image18812 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18812 : Bundle := named_bundle% "RealMapCertificates/relations/basis18812.json"
theorem reductionProof18812 : EqualModuloRelations reduction18812.relations reduction18812.input reduction18812.output := by lin_cert using reduction18812.terms
theorem substitutionProof18812 : IsMapEvaluation generatorImages reduction18812.relations [2,2051] reduction18812.output := by lin_cert using reduction18812.terms
def image18813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18813 : InImage map_21_245 image18813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18813 : Bundle := named_bundle% "RealMapCertificates/relations/basis18813.json"
theorem reductionProof18813 : EqualModuloRelations reduction18813.relations reduction18813.input reduction18813.output := by lin_cert using reduction18813.terms
theorem substitutionProof18813 : IsMapEvaluation generatorImages reduction18813.relations [0,2143] reduction18813.output := by lin_cert using reduction18813.terms
def map_21_246 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19114 : InImage map_21_246 image19114 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19114 : Bundle := named_bundle% "RealMapCertificates/relations/basis19114.json"
theorem reductionProof19114 : EqualModuloRelations reduction19114.relations reduction19114.input reduction19114.output := by lin_cert using reduction19114.terms
theorem substitutionProof19114 : IsMapEvaluation generatorImages reduction19114.relations [2222] reduction19114.output := by lin_cert using reduction19114.terms
def image19115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19115 : InImage map_21_246 image19115 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19115 : Bundle := named_bundle% "RealMapCertificates/relations/basis19115.json"
theorem reductionProof19115 : EqualModuloRelations reduction19115.relations reduction19115.input reduction19115.output := by lin_cert using reduction19115.terms
theorem substitutionProof19115 : IsMapEvaluation generatorImages reduction19115.relations [2,2068] reduction19115.output := by lin_cert using reduction19115.terms
def image19116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19116 : InImage map_21_246 image19116 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19116 : Bundle := named_bundle% "RealMapCertificates/relations/basis19116.json"
theorem reductionProof19116 : EqualModuloRelations reduction19116.relations reduction19116.input reduction19116.output := by lin_cert using reduction19116.terms
theorem substitutionProof19116 : IsMapEvaluation generatorImages reduction19116.relations [2,76,824] reduction19116.output := by lin_cert using reduction19116.terms
def map_21_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19345 : InImage map_21_247 image19345 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19345 : Bundle := named_bundle% "RealMapCertificates/relations/basis19345.json"
theorem reductionProof19345 : EqualModuloRelations reduction19345.relations reduction19345.input reduction19345.output := by lin_cert using reduction19345.terms
theorem substitutionProof19345 : IsMapEvaluation generatorImages reduction19345.relations [2258] reduction19345.output := by lin_cert using reduction19345.terms
def image19346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19346 : InImage map_21_247 image19346 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19346 : Bundle := named_bundle% "RealMapCertificates/relations/basis19346.json"
theorem reductionProof19346 : EqualModuloRelations reduction19346.relations reduction19346.input reduction19346.output := by lin_cert using reduction19346.terms
theorem substitutionProof19346 : IsMapEvaluation generatorImages reduction19346.relations [13,1617] reduction19346.output := by lin_cert using reduction19346.terms
def image19347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19347 : InImage map_21_247 image19347 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19347 : Bundle := named_bundle% "RealMapCertificates/relations/basis19347.json"
theorem reductionProof19347 : EqualModuloRelations reduction19347.relations reduction19347.input reduction19347.output := by lin_cert using reduction19347.terms
theorem substitutionProof19347 : IsMapEvaluation generatorImages reduction19347.relations [3,1973] reduction19347.output := by lin_cert using reduction19347.terms
def image19348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19348 : InImage map_21_247 image19348 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19348 : Bundle := named_bundle% "RealMapCertificates/relations/basis19348.json"
theorem reductionProof19348 : EqualModuloRelations reduction19348.relations reduction19348.input reduction19348.output := by lin_cert using reduction19348.terms
theorem substitutionProof19348 : IsMapEvaluation generatorImages reduction19348.relations [1,1,2112] reduction19348.output := by lin_cert using reduction19348.terms
def map_21_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19614 : InImage map_21_248 image19614 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19614 : Bundle := named_bundle% "RealMapCertificates/relations/basis19614.json"
theorem reductionProof19614 : EqualModuloRelations reduction19614.relations reduction19614.input reduction19614.output := by lin_cert using reduction19614.terms
theorem substitutionProof19614 : IsMapEvaluation generatorImages reduction19614.relations [2290] reduction19614.output := by lin_cert using reduction19614.terms
def image19615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19615 : InImage map_21_248 image19615 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19615 : Bundle := named_bundle% "RealMapCertificates/relations/basis19615.json"
theorem reductionProof19615 : EqualModuloRelations reduction19615.relations reduction19615.input reduction19615.output := by lin_cert using reduction19615.terms
theorem substitutionProof19615 : IsMapEvaluation generatorImages reduction19615.relations [2289] reduction19615.output := by lin_cert using reduction19615.terms
def image19616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19616 : InImage map_21_248 image19616 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19616 : Bundle := named_bundle% "RealMapCertificates/relations/basis19616.json"
theorem reductionProof19616 : EqualModuloRelations reduction19616.relations reduction19616.input reduction19616.output := by lin_cert using reduction19616.terms
theorem substitutionProof19616 : IsMapEvaluation generatorImages reduction19616.relations [2288] reduction19616.output := by lin_cert using reduction19616.terms
def image19617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19617 : InImage map_21_248 image19617 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19617 : Bundle := named_bundle% "RealMapCertificates/relations/basis19617.json"
theorem reductionProof19617 : EqualModuloRelations reduction19617.relations reduction19617.input reduction19617.output := by lin_cert using reduction19617.terms
theorem substitutionProof19617 : IsMapEvaluation generatorImages reduction19617.relations [8,20,80,324] reduction19617.output := by lin_cert using reduction19617.terms
def image19618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19618 : InImage map_21_248 image19618 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19618 : Bundle := named_bundle% "RealMapCertificates/relations/basis19618.json"
theorem reductionProof19618 : EqualModuloRelations reduction19618.relations reduction19618.input reduction19618.output := by lin_cert using reduction19618.terms
theorem substitutionProof19618 : IsMapEvaluation generatorImages reduction19618.relations [0,2259] reduction19618.output := by lin_cert using reduction19618.terms
def map_21_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19918 : InImage map_21_249 image19918 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19918 : Bundle := named_bundle% "RealMapCertificates/relations/basis19918.json"
theorem reductionProof19918 : EqualModuloRelations reduction19918.relations reduction19918.input reduction19918.output := by lin_cert using reduction19918.terms
theorem substitutionProof19918 : IsMapEvaluation generatorImages reduction19918.relations [2321] reduction19918.output := by lin_cert using reduction19918.terms
def image19919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19919 : InImage map_21_249 image19919 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19919 : Bundle := named_bundle% "RealMapCertificates/relations/basis19919.json"
theorem reductionProof19919 : EqualModuloRelations reduction19919.relations reduction19919.input reduction19919.output := by lin_cert using reduction19919.terms
theorem substitutionProof19919 : IsMapEvaluation generatorImages reduction19919.relations [9,1702] reduction19919.output := by lin_cert using reduction19919.terms
def image19920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19920 : InImage map_21_249 image19920 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19920 : Bundle := named_bundle% "RealMapCertificates/relations/basis19920.json"
theorem reductionProof19920 : EqualModuloRelations reduction19920.relations reduction19920.input reduction19920.output := by lin_cert using reduction19920.terms
theorem substitutionProof19920 : IsMapEvaluation generatorImages reduction19920.relations [3,2051] reduction19920.output := by lin_cert using reduction19920.terms
def image19921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19921 : InImage map_21_249 image19921 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19921 : Bundle := named_bundle% "RealMapCertificates/relations/basis19921.json"
theorem reductionProof19921 : EqualModuloRelations reduction19921.relations reduction19921.input reduction19921.output := by lin_cert using reduction19921.terms
theorem substitutionProof19921 : IsMapEvaluation generatorImages reduction19921.relations [1,2259] reduction19921.output := by lin_cert using reduction19921.terms
def image19922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19922 : InImage map_21_249 image19922 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19922 : Bundle := named_bundle% "RealMapCertificates/relations/basis19922.json"
theorem reductionProof19922 : EqualModuloRelations reduction19922.relations reduction19922.input reduction19922.output := by lin_cert using reduction19922.terms
theorem substitutionProof19922 : IsMapEvaluation generatorImages reduction19922.relations [0,0,2261] reduction19922.output := by lin_cert using reduction19922.terms
def image19923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19923 : InImage map_21_249 image19923 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19923 : Bundle := named_bundle% "RealMapCertificates/relations/basis19923.json"
theorem reductionProof19923 : EqualModuloRelations reduction19923.relations reduction19923.input reduction19923.output := by lin_cert using reduction19923.terms
theorem substitutionProof19923 : IsMapEvaluation generatorImages reduction19923.relations [0,0,260,324] reduction19923.output := by lin_cert using reduction19923.terms
def map_21_250 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20146 : InImage map_21_250 image20146 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20146 : Bundle := named_bundle% "RealMapCertificates/relations/basis20146.json"
theorem reductionProof20146 : EqualModuloRelations reduction20146.relations reduction20146.input reduction20146.output := by lin_cert using reduction20146.terms
theorem substitutionProof20146 : IsMapEvaluation generatorImages reduction20146.relations [2356] reduction20146.output := by lin_cert using reduction20146.terms
def image20147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20147 : InImage map_21_250 image20147 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20147 : Bundle := named_bundle% "RealMapCertificates/relations/basis20147.json"
theorem reductionProof20147 : EqualModuloRelations reduction20147.relations reduction20147.input reduction20147.output := by lin_cert using reduction20147.terms
theorem substitutionProof20147 : IsMapEvaluation generatorImages reduction20147.relations [2355] reduction20147.output := by lin_cert using reduction20147.terms
def image20148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20148 : InImage map_21_250 image20148 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20148 : Bundle := named_bundle% "RealMapCertificates/relations/basis20148.json"
theorem reductionProof20148 : EqualModuloRelations reduction20148.relations reduction20148.input reduction20148.output := by lin_cert using reduction20148.terms
theorem substitutionProof20148 : IsMapEvaluation generatorImages reduction20148.relations [9,1729] reduction20148.output := by lin_cert using reduction20148.terms
def image20149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20149 : InImage map_21_250 image20149 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20149 : Bundle := named_bundle% "RealMapCertificates/relations/basis20149.json"
theorem reductionProof20149 : EqualModuloRelations reduction20149.relations reduction20149.input reduction20149.output := by lin_cert using reduction20149.terms
theorem substitutionProof20149 : IsMapEvaluation generatorImages reduction20149.relations [0,2323] reduction20149.output := by lin_cert using reduction20149.terms
def image20150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20150 : InImage map_21_250 image20150 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20150 : Bundle := named_bundle% "RealMapCertificates/relations/basis20150.json"
theorem reductionProof20150 : EqualModuloRelations reduction20150.relations reduction20150.input reduction20150.output := by lin_cert using reduction20150.terms
theorem substitutionProof20150 : IsMapEvaluation generatorImages reduction20150.relations [0,0,2291] reduction20150.output := by lin_cert using reduction20150.terms
def image20151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20151 : InImage map_21_250 image20151 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20151 : Bundle := named_bundle% "RealMapCertificates/relations/basis20151.json"
theorem reductionProof20151 : EqualModuloRelations reduction20151.relations reduction20151.input reduction20151.output := by lin_cert using reduction20151.terms
theorem substitutionProof20151 : IsMapEvaluation generatorImages reduction20151.relations [0,0,0,2265] reduction20151.output := by lin_cert using reduction20151.terms
def map_21_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20430 : InImage map_21_251 image20430 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20430 : Bundle := named_bundle% "RealMapCertificates/relations/basis20430.json"
theorem reductionProof20430 : EqualModuloRelations reduction20430.relations reduction20430.input reduction20430.output := by lin_cert using reduction20430.terms
theorem substitutionProof20430 : IsMapEvaluation generatorImages reduction20430.relations [2390] reduction20430.output := by lin_cert using reduction20430.terms
def image20431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20431 : InImage map_21_251 image20431 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20431 : Bundle := named_bundle% "RealMapCertificates/relations/basis20431.json"
theorem reductionProof20431 : EqualModuloRelations reduction20431.relations reduction20431.input reduction20431.output := by lin_cert using reduction20431.terms
theorem substitutionProof20431 : IsMapEvaluation generatorImages reduction20431.relations [2389] reduction20431.output := by lin_cert using reduction20431.terms
def image20432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20432 : InImage map_21_251 image20432 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20432 : Bundle := named_bundle% "RealMapCertificates/relations/basis20432.json"
theorem reductionProof20432 : EqualModuloRelations reduction20432.relations reduction20432.input reduction20432.output := by lin_cert using reduction20432.terms
theorem substitutionProof20432 : IsMapEvaluation generatorImages reduction20432.relations [2388] reduction20432.output := by lin_cert using reduction20432.terms
def image20433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20433 : InImage map_21_251 image20433 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20433 : Bundle := named_bundle% "RealMapCertificates/relations/basis20433.json"
theorem reductionProof20433 : EqualModuloRelations reduction20433.relations reduction20433.input reduction20433.output := by lin_cert using reduction20433.terms
theorem substitutionProof20433 : IsMapEvaluation generatorImages reduction20433.relations [8,22,80,324] reduction20433.output := by lin_cert using reduction20433.terms
def image20434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20434 : InImage map_21_251 image20434 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20434 : Bundle := named_bundle% "RealMapCertificates/relations/basis20434.json"
theorem reductionProof20434 : EqualModuloRelations reduction20434.relations reduction20434.input reduction20434.output := by lin_cert using reduction20434.terms
theorem substitutionProof20434 : IsMapEvaluation generatorImages reduction20434.relations [1,2323] reduction20434.output := by lin_cert using reduction20434.terms
def image20435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20435 : InImage map_21_251 image20435 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20435 : Bundle := named_bundle% "RealMapCertificates/relations/basis20435.json"
theorem reductionProof20435 : EqualModuloRelations reduction20435.relations reduction20435.input reduction20435.output := by lin_cert using reduction20435.terms
theorem substitutionProof20435 : IsMapEvaluation generatorImages reduction20435.relations [1,1,260,324] reduction20435.output := by lin_cert using reduction20435.terms
def map_21_252 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20751 : InImage map_21_252 image20751 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20751 : Bundle := named_bundle% "RealMapCertificates/relations/basis20751.json"
theorem reductionProof20751 : EqualModuloRelations reduction20751.relations reduction20751.input reduction20751.output := by lin_cert using reduction20751.terms
theorem substitutionProof20751 : IsMapEvaluation generatorImages reduction20751.relations [2424] reduction20751.output := by lin_cert using reduction20751.terms
def image20752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20752 : InImage map_21_252 image20752 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20752 : Bundle := named_bundle% "RealMapCertificates/relations/basis20752.json"
theorem reductionProof20752 : EqualModuloRelations reduction20752.relations reduction20752.input reduction20752.output := by lin_cert using reduction20752.terms
theorem substitutionProof20752 : IsMapEvaluation generatorImages reduction20752.relations [13,1702] reduction20752.output := by lin_cert using reduction20752.terms
def image20753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20753 : InImage map_21_252 image20753 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20753 : Bundle := named_bundle% "RealMapCertificates/relations/basis20753.json"
theorem reductionProof20753 : EqualModuloRelations reduction20753.relations reduction20753.input reduction20753.output := by lin_cert using reduction20753.terms
theorem substitutionProof20753 : IsMapEvaluation generatorImages reduction20753.relations [7,1894] reduction20753.output := by lin_cert using reduction20753.terms
def image20754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20754 : InImage map_21_252 image20754 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20754 : Bundle := named_bundle% "RealMapCertificates/relations/basis20754.json"
theorem reductionProof20754 : EqualModuloRelations reduction20754.relations reduction20754.input reduction20754.output := by lin_cert using reduction20754.terms
theorem substitutionProof20754 : IsMapEvaluation generatorImages reduction20754.relations [1,1,2291] reduction20754.output := by lin_cert using reduction20754.terms
def image20755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20755 : InImage map_21_252 image20755 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20755 : Bundle := named_bundle% "RealMapCertificates/relations/basis20755.json"
theorem reductionProof20755 : EqualModuloRelations reduction20755.relations reduction20755.input reduction20755.output := by lin_cert using reduction20755.terms
theorem substitutionProof20755 : IsMapEvaluation generatorImages reduction20755.relations [0,2392] reduction20755.output := by lin_cert using reduction20755.terms
def image20756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20756 : InImage map_21_252 image20756 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20756 : Bundle := named_bundle% "RealMapCertificates/relations/basis20756.json"
theorem reductionProof20756 : EqualModuloRelations reduction20756.relations reduction20756.input reduction20756.output := by lin_cert using reduction20756.terms
theorem substitutionProof20756 : IsMapEvaluation generatorImages reduction20756.relations [0,2391] reduction20756.output := by lin_cert using reduction20756.terms
def image20757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20757 : InImage map_21_252 image20757 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20757 : Bundle := named_bundle% "RealMapCertificates/relations/basis20757.json"
theorem reductionProof20757 : EqualModuloRelations reduction20757.relations reduction20757.input reduction20757.output := by lin_cert using reduction20757.terms
theorem substitutionProof20757 : IsMapEvaluation generatorImages reduction20757.relations [0,0,278,324] reduction20757.output := by lin_cert using reduction20757.terms
end RealMapCertificates
