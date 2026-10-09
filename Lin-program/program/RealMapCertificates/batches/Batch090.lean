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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 62 => [[1,4,4,4,4,4]]
  | 64 => []
  | 65 => [[2,4,4,4,4,4]]
  | 67 => []
  | 68 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 72 => []
  | 74 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 89 => []
  | 101 => []
  | 125 => [[4,4,4,5,5,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 190 => []
  | 209 => []
  | 291 => []
  | 299 => []
  | 316 => []
  | 319 => []
  | 324 => []
  | 346 => []
  | 367 => []
  | 373 => []
  | 543 => []
  | 1004 => []
  | 1055 => []
  | 1056 => []
  | 1057 => []
  | 1088 => []
  | 1091 => []
  | 1695 => []
  | 1729 => []
  | 1875 => []
  | 2055 => []
  | 2068 => []
  | 2076 => []
  | 2425 => []
  | 2428 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2459 => []
  | 2460 => []
  | 2461 => []
  | 2462 => []
  | 2464 => []
  | 2474 => []
  | 2475 => []
  | 2478 => []
  | 2480 => []
  | 2510 => []
  | 2511 => []
  | 2512 => []
  | 2514 => []
  | 2522 => []
  | 2563 => []
  | 2565 => []
  | 2601 => []
  | 2602 => []
  | 2603 => []
  | 2604 => []
  | 2605 => []
  | 2642 => []
  | 2643 => []
  | 2644 => []
  | 2645 => []
  | 2646 => []
  | 2647 => []
  | 2650 => []
  | 2690 => []
  | 2691 => []
  | 2692 => []
  | 2693 => []
  | 2762 => []
  | 2763 => []
  | 2821 => []
  | 2822 => []
  | 2823 => []
  | 2826 => []
  | 2878 => []
  | 2879 => []
  | 2880 => []
  | 2881 => []
  | _ => []
def map_21_253 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20972 : InImage map_21_253 image20972 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20972 : Bundle := named_bundle% "RealMapCertificates/relations/basis20972.json"
theorem reductionProof20972 : EqualModuloRelations reduction20972.relations reduction20972.input reduction20972.output := by lin_cert using reduction20972.terms
theorem substitutionProof20972 : IsMapEvaluation generatorImages reduction20972.relations [2461] reduction20972.output := by lin_cert using reduction20972.terms
def image20973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20973 : InImage map_21_253 image20973 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20973 : Bundle := named_bundle% "RealMapCertificates/relations/basis20973.json"
theorem reductionProof20973 : EqualModuloRelations reduction20973.relations reduction20973.input reduction20973.output := by lin_cert using reduction20973.terms
theorem substitutionProof20973 : IsMapEvaluation generatorImages reduction20973.relations [2460] reduction20973.output := by lin_cert using reduction20973.terms
def image20974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20974 : InImage map_21_253 image20974 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20974 : Bundle := named_bundle% "RealMapCertificates/relations/basis20974.json"
theorem reductionProof20974 : EqualModuloRelations reduction20974.relations reduction20974.input reduction20974.output := by lin_cert using reduction20974.terms
theorem substitutionProof20974 : IsMapEvaluation generatorImages reduction20974.relations [2459] reduction20974.output := by lin_cert using reduction20974.terms
def image20975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20975 : InImage map_21_253 image20975 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20975 : Bundle := named_bundle% "RealMapCertificates/relations/basis20975.json"
theorem reductionProof20975 : EqualModuloRelations reduction20975.relations reduction20975.input reduction20975.output := by lin_cert using reduction20975.terms
theorem substitutionProof20975 : IsMapEvaluation generatorImages reduction20975.relations [13,1729] reduction20975.output := by lin_cert using reduction20975.terms
def image20976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20976 : InImage map_21_253 image20976 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20976 : Bundle := named_bundle% "RealMapCertificates/relations/basis20976.json"
theorem reductionProof20976 : EqualModuloRelations reduction20976.relations reduction20976.input reduction20976.output := by lin_cert using reduction20976.terms
theorem substitutionProof20976 : IsMapEvaluation generatorImages reduction20976.relations [0,2425] reduction20976.output := by lin_cert using reduction20976.terms
def map_21_254 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21270 : InImage map_21_254 image21270 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21270 : Bundle := named_bundle% "RealMapCertificates/relations/basis21270.json"
theorem reductionProof21270 : EqualModuloRelations reduction21270.relations reduction21270.input reduction21270.output := by lin_cert using reduction21270.terms
theorem substitutionProof21270 : IsMapEvaluation generatorImages reduction21270.relations [2511] reduction21270.output := by lin_cert using reduction21270.terms
def image21271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21271 : InImage map_21_254 image21271 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21271 : Bundle := named_bundle% "RealMapCertificates/relations/basis21271.json"
theorem reductionProof21271 : EqualModuloRelations reduction21271.relations reduction21271.input reduction21271.output := by lin_cert using reduction21271.terms
theorem substitutionProof21271 : IsMapEvaluation generatorImages reduction21271.relations [2510] reduction21271.output := by lin_cert using reduction21271.terms
def image21272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21272 : InImage map_21_254 image21272 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21272 : Bundle := named_bundle% "RealMapCertificates/relations/basis21272.json"
theorem reductionProof21272 : EqualModuloRelations reduction21272.relations reduction21272.input reduction21272.output := by lin_cert using reduction21272.terms
theorem substitutionProof21272 : IsMapEvaluation generatorImages reduction21272.relations [64,64,324] reduction21272.output := by lin_cert using reduction21272.terms
def image21273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21273 : InImage map_21_254 image21273 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21273 : Bundle := named_bundle% "RealMapCertificates/relations/basis21273.json"
theorem reductionProof21273 : EqualModuloRelations reduction21273.relations reduction21273.input reduction21273.output := by lin_cert using reduction21273.terms
theorem substitutionProof21273 : IsMapEvaluation generatorImages reduction21273.relations [8,23,89,324] reduction21273.output := by lin_cert using reduction21273.terms
def image21274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21274 : InImage map_21_254 image21274 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21274 : Bundle := named_bundle% "RealMapCertificates/relations/basis21274.json"
theorem reductionProof21274 : EqualModuloRelations reduction21274.relations reduction21274.input reduction21274.output := by lin_cert using reduction21274.terms
theorem substitutionProof21274 : IsMapEvaluation generatorImages reduction21274.relations [1,2425] reduction21274.output := by lin_cert using reduction21274.terms
def image21275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21275 : InImage map_21_254 image21275 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21275 : Bundle := named_bundle% "RealMapCertificates/relations/basis21275.json"
theorem reductionProof21275 : EqualModuloRelations reduction21275.relations reduction21275.input reduction21275.output := by lin_cert using reduction21275.terms
theorem substitutionProof21275 : IsMapEvaluation generatorImages reduction21275.relations [0,2464] reduction21275.output := by lin_cert using reduction21275.terms
def image21276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21276 : InImage map_21_254 image21276 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21276 : Bundle := named_bundle% "RealMapCertificates/relations/basis21276.json"
theorem reductionProof21276 : EqualModuloRelations reduction21276.relations reduction21276.input reduction21276.output := by lin_cert using reduction21276.terms
theorem substitutionProof21276 : IsMapEvaluation generatorImages reduction21276.relations [0,2462] reduction21276.output := by lin_cert using reduction21276.terms
def image21277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21277 : InImage map_21_254 image21277 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21277 : Bundle := named_bundle% "RealMapCertificates/relations/basis21277.json"
theorem reductionProof21277 : EqualModuloRelations reduction21277.relations reduction21277.input reduction21277.output := by lin_cert using reduction21277.terms
theorem substitutionProof21277 : IsMapEvaluation generatorImages reduction21277.relations [0,0,2428] reduction21277.output := by lin_cert using reduction21277.terms
def map_21_255 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21621 : InImage map_21_255 image21621 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21621 : Bundle := named_bundle% "RealMapCertificates/relations/basis21621.json"
theorem reductionProof21621 : EqualModuloRelations reduction21621.relations reduction21621.input reduction21621.output := by lin_cert using reduction21621.terms
theorem substitutionProof21621 : IsMapEvaluation generatorImages reduction21621.relations [209,543] reduction21621.output := by lin_cert using reduction21621.terms
def image21622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21622 : InImage map_21_255 image21622 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21622 : Bundle := named_bundle% "RealMapCertificates/relations/basis21622.json"
theorem reductionProof21622 : EqualModuloRelations reduction21622.relations reduction21622.input reduction21622.output := by lin_cert using reduction21622.terms
theorem substitutionProof21622 : IsMapEvaluation generatorImages reduction21622.relations [1,2462] reduction21622.output := by lin_cert using reduction21622.terms
def image21623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21623 : InImage map_21_255 image21623 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21623 : Bundle := named_bundle% "RealMapCertificates/relations/basis21623.json"
theorem reductionProof21623 : EqualModuloRelations reduction21623.relations reduction21623.input reduction21623.output := by lin_cert using reduction21623.terms
theorem substitutionProof21623 : IsMapEvaluation generatorImages reduction21623.relations [0,2514] reduction21623.output := by lin_cert using reduction21623.terms
def image21624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21624 : InImage map_21_255 image21624 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21624 : Bundle := named_bundle% "RealMapCertificates/relations/basis21624.json"
theorem reductionProof21624 : EqualModuloRelations reduction21624.relations reduction21624.input reduction21624.output := by lin_cert using reduction21624.terms
theorem substitutionProof21624 : IsMapEvaluation generatorImages reduction21624.relations [0,2512] reduction21624.output := by lin_cert using reduction21624.terms
def image21625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21625 : InImage map_21_255 image21625 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21625 : Bundle := named_bundle% "RealMapCertificates/relations/basis21625.json"
theorem reductionProof21625 : EqualModuloRelations reduction21625.relations reduction21625.input reduction21625.output := by lin_cert using reduction21625.terms
theorem substitutionProof21625 : IsMapEvaluation generatorImages reduction21625.relations [0,299,324] reduction21625.output := by lin_cert using reduction21625.terms
def image21626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21626 : InImage map_21_255 image21626 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21626 : Bundle := named_bundle% "RealMapCertificates/relations/basis21626.json"
theorem reductionProof21626 : EqualModuloRelations reduction21626.relations reduction21626.input reduction21626.output := by lin_cert using reduction21626.terms
theorem substitutionProof21626 : IsMapEvaluation generatorImages reduction21626.relations [0,0,291,324] reduction21626.output := by lin_cert using reduction21626.terms
def image21627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21627 : InImage map_21_255 image21627 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21627 : Bundle := named_bundle% "RealMapCertificates/relations/basis21627.json"
theorem reductionProof21627 : EqualModuloRelations reduction21627.relations reduction21627.input reduction21627.output := by lin_cert using reduction21627.terms
theorem substitutionProof21627 : IsMapEvaluation generatorImages reduction21627.relations [0,0,0,2429] reduction21627.output := by lin_cert using reduction21627.terms
def map_21_256 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image21878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21878 : InImage map_21_256 image21878 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction21878 : Bundle := named_bundle% "RealMapCertificates/relations/basis21878.json"
theorem reductionProof21878 : EqualModuloRelations reduction21878.relations reduction21878.input reduction21878.output := by lin_cert using reduction21878.terms
theorem substitutionProof21878 : IsMapEvaluation generatorImages reduction21878.relations [2604] reduction21878.output := by lin_cert using reduction21878.terms
def image21879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21879 : InImage map_21_256 image21879 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction21879 : Bundle := named_bundle% "RealMapCertificates/relations/basis21879.json"
theorem reductionProof21879 : EqualModuloRelations reduction21879.relations reduction21879.input reduction21879.output := by lin_cert using reduction21879.terms
theorem substitutionProof21879 : IsMapEvaluation generatorImages reduction21879.relations [2603] reduction21879.output := by lin_cert using reduction21879.terms
def image21880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21880 : InImage map_21_256 image21880 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction21880 : Bundle := named_bundle% "RealMapCertificates/relations/basis21880.json"
theorem reductionProof21880 : EqualModuloRelations reduction21880.relations reduction21880.input reduction21880.output := by lin_cert using reduction21880.terms
theorem substitutionProof21880 : IsMapEvaluation generatorImages reduction21880.relations [2602] reduction21880.output := by lin_cert using reduction21880.terms
def image21881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21881 : InImage map_21_256 image21881 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction21881 : Bundle := named_bundle% "RealMapCertificates/relations/basis21881.json"
theorem reductionProof21881 : EqualModuloRelations reduction21881.relations reduction21881.input reduction21881.output := by lin_cert using reduction21881.terms
theorem substitutionProof21881 : IsMapEvaluation generatorImages reduction21881.relations [2601] reduction21881.output := by lin_cert using reduction21881.terms
def image21882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21882 : InImage map_21_256 image21882 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction21882 : Bundle := named_bundle% "RealMapCertificates/relations/basis21882.json"
theorem reductionProof21882 : EqualModuloRelations reduction21882.relations reduction21882.input reduction21882.output := by lin_cert using reduction21882.terms
theorem substitutionProof21882 : IsMapEvaluation generatorImages reduction21882.relations [76,1004] reduction21882.output := by lin_cert using reduction21882.terms
def image21883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21883 : InImage map_21_256 image21883 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction21883 : Bundle := named_bundle% "RealMapCertificates/relations/basis21883.json"
theorem reductionProof21883 : EqualModuloRelations reduction21883.relations reduction21883.input reduction21883.output := by lin_cert using reduction21883.terms
theorem substitutionProof21883 : IsMapEvaluation generatorImages reduction21883.relations [67,1056] reduction21883.output := by lin_cert using reduction21883.terms
def image21884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21884 : InImage map_21_256 image21884 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction21884 : Bundle := named_bundle% "RealMapCertificates/relations/basis21884.json"
theorem reductionProof21884 : EqualModuloRelations reduction21884.relations reduction21884.input reduction21884.output := by lin_cert using reduction21884.terms
theorem substitutionProof21884 : IsMapEvaluation generatorImages reduction21884.relations [67,1055] reduction21884.output := by lin_cert using reduction21884.terms
def image21885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21885 : InImage map_21_256 image21885 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction21885 : Bundle := named_bundle% "RealMapCertificates/relations/basis21885.json"
theorem reductionProof21885 : EqualModuloRelations reduction21885.relations reduction21885.input reduction21885.output := by lin_cert using reduction21885.terms
theorem substitutionProof21885 : IsMapEvaluation generatorImages reduction21885.relations [2,2425] reduction21885.output := by lin_cert using reduction21885.terms
def image21886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21886 : InImage map_21_256 image21886 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction21886 : Bundle := named_bundle% "RealMapCertificates/relations/basis21886.json"
theorem reductionProof21886 : EqualModuloRelations reduction21886.relations reduction21886.input reduction21886.output := by lin_cert using reduction21886.terms
theorem substitutionProof21886 : IsMapEvaluation generatorImages reduction21886.relations [0,0,0,0,2431] reduction21886.output := by lin_cert using reduction21886.terms
def image21887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21887 : InImage map_21_256 image21887 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction21887 : Bundle := named_bundle% "RealMapCertificates/relations/basis21887.json"
theorem reductionProof21887 : EqualModuloRelations reduction21887.relations reduction21887.input reduction21887.output := by lin_cert using reduction21887.terms
theorem substitutionProof21887 : IsMapEvaluation generatorImages reduction21887.relations [0,0,0,0,2430] reduction21887.output := by lin_cert using reduction21887.terms
def map_21_257 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image22222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22222 : InImage map_21_257 image22222 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction22222 : Bundle := named_bundle% "RealMapCertificates/relations/basis22222.json"
theorem reductionProof22222 : EqualModuloRelations reduction22222.relations reduction22222.input reduction22222.output := by lin_cert using reduction22222.terms
theorem substitutionProof22222 : IsMapEvaluation generatorImages reduction22222.relations [2646] reduction22222.output := by lin_cert using reduction22222.terms
def image22223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22223 : InImage map_21_257 image22223 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction22223 : Bundle := named_bundle% "RealMapCertificates/relations/basis22223.json"
theorem reductionProof22223 : EqualModuloRelations reduction22223.relations reduction22223.input reduction22223.output := by lin_cert using reduction22223.terms
theorem substitutionProof22223 : IsMapEvaluation generatorImages reduction22223.relations [2645] reduction22223.output := by lin_cert using reduction22223.terms
def image22224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22224 : InImage map_21_257 image22224 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction22224 : Bundle := named_bundle% "RealMapCertificates/relations/basis22224.json"
theorem reductionProof22224 : EqualModuloRelations reduction22224.relations reduction22224.input reduction22224.output := by lin_cert using reduction22224.terms
theorem substitutionProof22224 : IsMapEvaluation generatorImages reduction22224.relations [2644] reduction22224.output := by lin_cert using reduction22224.terms
def image22225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22225 : InImage map_21_257 image22225 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction22225 : Bundle := named_bundle% "RealMapCertificates/relations/basis22225.json"
theorem reductionProof22225 : EqualModuloRelations reduction22225.relations reduction22225.input reduction22225.output := by lin_cert using reduction22225.terms
theorem substitutionProof22225 : IsMapEvaluation generatorImages reduction22225.relations [2643] reduction22225.output := by lin_cert using reduction22225.terms
def image22226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22226 : InImage map_21_257 image22226 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction22226 : Bundle := named_bundle% "RealMapCertificates/relations/basis22226.json"
theorem reductionProof22226 : EqualModuloRelations reduction22226.relations reduction22226.input reduction22226.output := by lin_cert using reduction22226.terms
theorem substitutionProof22226 : IsMapEvaluation generatorImages reduction22226.relations [2642] reduction22226.output := by lin_cert using reduction22226.terms
def image22227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22227 : InImage map_21_257 image22227 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction22227 : Bundle := named_bundle% "RealMapCertificates/relations/basis22227.json"
theorem reductionProof22227 : EqualModuloRelations reduction22227.relations reduction22227.input reduction22227.output := by lin_cert using reduction22227.terms
theorem substitutionProof22227 : IsMapEvaluation generatorImages reduction22227.relations [64,72,324] reduction22227.output := by lin_cert using reduction22227.terms
def image22228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22228 : InImage map_21_257 image22228 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction22228 : Bundle := named_bundle% "RealMapCertificates/relations/basis22228.json"
theorem reductionProof22228 : EqualModuloRelations reduction22228.relations reduction22228.input reduction22228.output := by lin_cert using reduction22228.terms
theorem substitutionProof22228 : IsMapEvaluation generatorImages reduction22228.relations [8,23,101,324] reduction22228.output := by lin_cert using reduction22228.terms
def image22229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22229 : InImage map_21_257 image22229 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction22229 : Bundle := named_bundle% "RealMapCertificates/relations/basis22229.json"
theorem reductionProof22229 : EqualModuloRelations reduction22229.relations reduction22229.input reduction22229.output := by lin_cert using reduction22229.terms
theorem substitutionProof22229 : IsMapEvaluation generatorImages reduction22229.relations [0,2605] reduction22229.output := by lin_cert using reduction22229.terms
def image22230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22230 : InImage map_21_257 image22230 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction22230 : Bundle := named_bundle% "RealMapCertificates/relations/basis22230.json"
theorem reductionProof22230 : EqualModuloRelations reduction22230.relations reduction22230.input reduction22230.output := by lin_cert using reduction22230.terms
theorem substitutionProof22230 : IsMapEvaluation generatorImages reduction22230.relations [0,0,2563] reduction22230.output := by lin_cert using reduction22230.terms
def image22231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22231 : InImage map_21_257 image22231 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction22231 : Bundle := named_bundle% "RealMapCertificates/relations/basis22231.json"
theorem reductionProof22231 : EqualModuloRelations reduction22231.relations reduction22231.input reduction22231.output := by lin_cert using reduction22231.terms
theorem substitutionProof22231 : IsMapEvaluation generatorImages reduction22231.relations [0,0,0,0,2475] reduction22231.output := by lin_cert using reduction22231.terms
def image22232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22232 : InImage map_21_257 image22232 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction22232 : Bundle := named_bundle% "RealMapCertificates/relations/basis22232.json"
theorem reductionProof22232 : EqualModuloRelations reduction22232.relations reduction22232.input reduction22232.output := by lin_cert using reduction22232.terms
theorem substitutionProof22232 : IsMapEvaluation generatorImages reduction22232.relations [0,0,0,0,2474] reduction22232.output := by lin_cert using reduction22232.terms
def image22233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22233 : InImage map_21_257 image22233 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction22233 : Bundle := named_bundle% "RealMapCertificates/relations/basis22233.json"
theorem reductionProof22233 : EqualModuloRelations reduction22233.relations reduction22233.input reduction22233.output := by lin_cert using reduction22233.terms
theorem substitutionProof22233 : IsMapEvaluation generatorImages reduction22233.relations [0,0,0,0,0,2432] reduction22233.output := by lin_cert using reduction22233.terms
def map_21_258 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22584 : InImage map_21_258 image22584 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22584 : Bundle := named_bundle% "RealMapCertificates/relations/basis22584.json"
theorem reductionProof22584 : EqualModuloRelations reduction22584.relations reduction22584.input reduction22584.output := by lin_cert using reduction22584.terms
theorem substitutionProof22584 : IsMapEvaluation generatorImages reduction22584.relations [2691] reduction22584.output := by lin_cert using reduction22584.terms
def image22585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22585 : InImage map_21_258 image22585 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22585 : Bundle := named_bundle% "RealMapCertificates/relations/basis22585.json"
theorem reductionProof22585 : EqualModuloRelations reduction22585.relations reduction22585.input reduction22585.output := by lin_cert using reduction22585.terms
theorem substitutionProof22585 : IsMapEvaluation generatorImages reduction22585.relations [2690] reduction22585.output := by lin_cert using reduction22585.terms
def image22586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22586 : InImage map_21_258 image22586 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22586 : Bundle := named_bundle% "RealMapCertificates/relations/basis22586.json"
theorem reductionProof22586 : EqualModuloRelations reduction22586.relations reduction22586.input reduction22586.output := by lin_cert using reduction22586.terms
theorem substitutionProof22586 : IsMapEvaluation generatorImages reduction22586.relations [7,2068] reduction22586.output := by lin_cert using reduction22586.terms
def image22587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22587 : InImage map_21_258 image22587 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22587 : Bundle := named_bundle% "RealMapCertificates/relations/basis22587.json"
theorem reductionProof22587 : EqualModuloRelations reduction22587.relations reduction22587.input reduction22587.output := by lin_cert using reduction22587.terms
theorem substitutionProof22587 : IsMapEvaluation generatorImages reduction22587.relations [0,2647] reduction22587.output := by lin_cert using reduction22587.terms
def image22588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22588 : InImage map_21_258 image22588 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22588 : Bundle := named_bundle% "RealMapCertificates/relations/basis22588.json"
theorem reductionProof22588 : EqualModuloRelations reduction22588.relations reduction22588.input reduction22588.output := by lin_cert using reduction22588.terms
theorem substitutionProof22588 : IsMapEvaluation generatorImages reduction22588.relations [0,0,316,324] reduction22588.output := by lin_cert using reduction22588.terms
def image22589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22589 : InImage map_21_258 image22589 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22589 : Bundle := named_bundle% "RealMapCertificates/relations/basis22589.json"
theorem reductionProof22589 : EqualModuloRelations reduction22589.relations reduction22589.input reduction22589.output := by lin_cert using reduction22589.terms
theorem substitutionProof22589 : IsMapEvaluation generatorImages reduction22589.relations [0,0,68,1057] reduction22589.output := by lin_cert using reduction22589.terms
def image22590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22590 : InImage map_21_258 image22590 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22590 : Bundle := named_bundle% "RealMapCertificates/relations/basis22590.json"
theorem reductionProof22590 : EqualModuloRelations reduction22590.relations reduction22590.input reduction22590.output := by lin_cert using reduction22590.terms
theorem substitutionProof22590 : IsMapEvaluation generatorImages reduction22590.relations [0,0,0,2565] reduction22590.output := by lin_cert using reduction22590.terms
def image22591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22591 : InImage map_21_258 image22591 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22591 : Bundle := named_bundle% "RealMapCertificates/relations/basis22591.json"
theorem reductionProof22591 : EqualModuloRelations reduction22591.relations reduction22591.input reduction22591.output := by lin_cert using reduction22591.terms
theorem substitutionProof22591 : IsMapEvaluation generatorImages reduction22591.relations [0,0,0,0,2522] reduction22591.output := by lin_cert using reduction22591.terms
def image22592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22592 : InImage map_21_258 image22592 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22592 : Bundle := named_bundle% "RealMapCertificates/relations/basis22592.json"
theorem reductionProof22592 : EqualModuloRelations reduction22592.relations reduction22592.input reduction22592.output := by lin_cert using reduction22592.terms
theorem substitutionProof22592 : IsMapEvaluation generatorImages reduction22592.relations [0,0,0,0,0,2478] reduction22592.output := by lin_cert using reduction22592.terms
def image22593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22593 : InImage map_21_258 image22593 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22593 : Bundle := named_bundle% "RealMapCertificates/relations/basis22593.json"
theorem reductionProof22593 : EqualModuloRelations reduction22593.relations reduction22593.input reduction22593.output := by lin_cert using reduction22593.terms
theorem substitutionProof22593 : IsMapEvaluation generatorImages reduction22593.relations [0,0,0,0,0,0,2433] reduction22593.output := by lin_cert using reduction22593.terms
def map_21_259 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22894 : InImage map_21_259 image22894 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22894 : Bundle := named_bundle% "RealMapCertificates/relations/basis22894.json"
theorem reductionProof22894 : EqualModuloRelations reduction22894.relations reduction22894.input reduction22894.output := by lin_cert using reduction22894.terms
theorem substitutionProof22894 : IsMapEvaluation generatorImages reduction22894.relations [2763] reduction22894.output := by lin_cert using reduction22894.terms
def image22895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22895 : InImage map_21_259 image22895 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22895 : Bundle := named_bundle% "RealMapCertificates/relations/basis22895.json"
theorem reductionProof22895 : EqualModuloRelations reduction22895.relations reduction22895.input reduction22895.output := by lin_cert using reduction22895.terms
theorem substitutionProof22895 : IsMapEvaluation generatorImages reduction22895.relations [2762] reduction22895.output := by lin_cert using reduction22895.terms
def image22896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22896 : InImage map_21_259 image22896 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22896 : Bundle := named_bundle% "RealMapCertificates/relations/basis22896.json"
theorem reductionProof22896 : EqualModuloRelations reduction22896.relations reduction22896.input reduction22896.output := by lin_cert using reduction22896.terms
theorem substitutionProof22896 : IsMapEvaluation generatorImages reduction22896.relations [13,1875] reduction22896.output := by lin_cert using reduction22896.terms
def image22897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22897 : InImage map_21_259 image22897 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22897 : Bundle := named_bundle% "RealMapCertificates/relations/basis22897.json"
theorem reductionProof22897 : EqualModuloRelations reduction22897.relations reduction22897.input reduction22897.output := by lin_cert using reduction22897.terms
theorem substitutionProof22897 : IsMapEvaluation generatorImages reduction22897.relations [13,190,373] reduction22897.output := by lin_cert using reduction22897.terms
def image22898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22898 : InImage map_21_259 image22898 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22898 : Bundle := named_bundle% "RealMapCertificates/relations/basis22898.json"
theorem reductionProof22898 : EqualModuloRelations reduction22898.relations reduction22898.input reduction22898.output := by lin_cert using reduction22898.terms
theorem substitutionProof22898 : IsMapEvaluation generatorImages reduction22898.relations [8,2055] reduction22898.output := by lin_cert using reduction22898.terms
def image22899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22899 : InImage map_21_259 image22899 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22899 : Bundle := named_bundle% "RealMapCertificates/relations/basis22899.json"
theorem reductionProof22899 : EqualModuloRelations reduction22899.relations reduction22899.input reduction22899.output := by lin_cert using reduction22899.terms
theorem substitutionProof22899 : IsMapEvaluation generatorImages reduction22899.relations [1,2647] reduction22899.output := by lin_cert using reduction22899.terms
def image22900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22900 : InImage map_21_259 image22900 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22900 : Bundle := named_bundle% "RealMapCertificates/relations/basis22900.json"
theorem reductionProof22900 : EqualModuloRelations reduction22900.relations reduction22900.input reduction22900.output := by lin_cert using reduction22900.terms
theorem substitutionProof22900 : IsMapEvaluation generatorImages reduction22900.relations [0,2692] reduction22900.output := by lin_cert using reduction22900.terms
def image22901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22901 : InImage map_21_259 image22901 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22901 : Bundle := named_bundle% "RealMapCertificates/relations/basis22901.json"
theorem reductionProof22901 : EqualModuloRelations reduction22901.relations reduction22901.input reduction22901.output := by lin_cert using reduction22901.terms
theorem substitutionProof22901 : IsMapEvaluation generatorImages reduction22901.relations [0,67,1091] reduction22901.output := by lin_cert using reduction22901.terms
def image22902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22902 : InImage map_21_259 image22902 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22902 : Bundle := named_bundle% "RealMapCertificates/relations/basis22902.json"
theorem reductionProof22902 : EqualModuloRelations reduction22902.relations reduction22902.input reduction22902.output := by lin_cert using reduction22902.terms
theorem substitutionProof22902 : IsMapEvaluation generatorImages reduction22902.relations [0,0,2650] reduction22902.output := by lin_cert using reduction22902.terms
def image22903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22903 : InImage map_21_259 image22903 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22903 : Bundle := named_bundle% "RealMapCertificates/relations/basis22903.json"
theorem reductionProof22903 : EqualModuloRelations reduction22903.relations reduction22903.input reduction22903.output := by lin_cert using reduction22903.terms
theorem substitutionProof22903 : IsMapEvaluation generatorImages reduction22903.relations [0,0,0,0,0,0,2480] reduction22903.output := by lin_cert using reduction22903.terms
def map_21_260 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23272 : InImage map_21_260 image23272 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23272 : Bundle := named_bundle% "RealMapCertificates/relations/basis23272.json"
theorem reductionProof23272 : EqualModuloRelations reduction23272.relations reduction23272.input reduction23272.output := by lin_cert using reduction23272.terms
theorem substitutionProof23272 : IsMapEvaluation generatorImages reduction23272.relations [2823] reduction23272.output := by lin_cert using reduction23272.terms
def image23273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23273 : InImage map_21_260 image23273 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23273 : Bundle := named_bundle% "RealMapCertificates/relations/basis23273.json"
theorem reductionProof23273 : EqualModuloRelations reduction23273.relations reduction23273.input reduction23273.output := by lin_cert using reduction23273.terms
theorem substitutionProof23273 : IsMapEvaluation generatorImages reduction23273.relations [2822] reduction23273.output := by lin_cert using reduction23273.terms
def image23274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23274 : InImage map_21_260 image23274 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23274 : Bundle := named_bundle% "RealMapCertificates/relations/basis23274.json"
theorem reductionProof23274 : EqualModuloRelations reduction23274.relations reduction23274.input reduction23274.output := by lin_cert using reduction23274.terms
theorem substitutionProof23274 : IsMapEvaluation generatorImages reduction23274.relations [2821] reduction23274.output := by lin_cert using reduction23274.terms
def image23275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23275 : InImage map_21_260 image23275 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23275 : Bundle := named_bundle% "RealMapCertificates/relations/basis23275.json"
theorem reductionProof23275 : EqualModuloRelations reduction23275.relations reduction23275.input reduction23275.output := by lin_cert using reduction23275.terms
theorem substitutionProof23275 : IsMapEvaluation generatorImages reduction23275.relations [319,367] reduction23275.output := by lin_cert using reduction23275.terms
def image23276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23276 : InImage map_21_260 image23276 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23276 : Bundle := named_bundle% "RealMapCertificates/relations/basis23276.json"
theorem reductionProof23276 : EqualModuloRelations reduction23276.relations reduction23276.input reduction23276.output := by lin_cert using reduction23276.terms
theorem substitutionProof23276 : IsMapEvaluation generatorImages reduction23276.relations [18,1695] reduction23276.output := by lin_cert using reduction23276.terms
def image23277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23277 : InImage map_21_260 image23277 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23277 : Bundle := named_bundle% "RealMapCertificates/relations/basis23277.json"
theorem reductionProof23277 : EqualModuloRelations reduction23277.relations reduction23277.input reduction23277.output := by lin_cert using reduction23277.terms
theorem substitutionProof23277 : IsMapEvaluation generatorImages reduction23277.relations [8,2076] reduction23277.output := by lin_cert using reduction23277.terms
def image23278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23278 : InImage map_21_260 image23278 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23278 : Bundle := named_bundle% "RealMapCertificates/relations/basis23278.json"
theorem reductionProof23278 : EqualModuloRelations reduction23278.relations reduction23278.input reduction23278.output := by lin_cert using reduction23278.terms
theorem substitutionProof23278 : IsMapEvaluation generatorImages reduction23278.relations [3,2425] reduction23278.output := by lin_cert using reduction23278.terms
def image23279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23279 : InImage map_21_260 image23279 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23279 : Bundle := named_bundle% "RealMapCertificates/relations/basis23279.json"
theorem reductionProof23279 : EqualModuloRelations reduction23279.relations reduction23279.input reduction23279.output := by lin_cert using reduction23279.terms
theorem substitutionProof23279 : IsMapEvaluation generatorImages reduction23279.relations [0,74,1055] reduction23279.output := by lin_cert using reduction23279.terms
def image23280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23280 : InImage map_21_260 image23280 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23280 : Bundle := named_bundle% "RealMapCertificates/relations/basis23280.json"
theorem reductionProof23280 : EqualModuloRelations reduction23280.relations reduction23280.input reduction23280.output := by lin_cert using reduction23280.terms
theorem substitutionProof23280 : IsMapEvaluation generatorImages reduction23280.relations [0,0,2693] reduction23280.output := by lin_cert using reduction23280.terms
def map_21_261 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image23709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23709 : InImage map_21_261 image23709 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction23709 : Bundle := named_bundle% "RealMapCertificates/relations/basis23709.json"
theorem reductionProof23709 : EqualModuloRelations reduction23709.relations reduction23709.input reduction23709.output := by lin_cert using reduction23709.terms
theorem substitutionProof23709 : IsMapEvaluation generatorImages reduction23709.relations [2881] reduction23709.output := by lin_cert using reduction23709.terms
def image23710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23710 : InImage map_21_261 image23710 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction23710 : Bundle := named_bundle% "RealMapCertificates/relations/basis23710.json"
theorem reductionProof23710 : EqualModuloRelations reduction23710.relations reduction23710.input reduction23710.output := by lin_cert using reduction23710.terms
theorem substitutionProof23710 : IsMapEvaluation generatorImages reduction23710.relations [2880] reduction23710.output := by lin_cert using reduction23710.terms
def image23711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23711 : InImage map_21_261 image23711 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction23711 : Bundle := named_bundle% "RealMapCertificates/relations/basis23711.json"
theorem reductionProof23711 : EqualModuloRelations reduction23711.relations reduction23711.input reduction23711.output := by lin_cert using reduction23711.terms
theorem substitutionProof23711 : IsMapEvaluation generatorImages reduction23711.relations [2879] reduction23711.output := by lin_cert using reduction23711.terms
def image23712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23712 : InImage map_21_261 image23712 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction23712 : Bundle := named_bundle% "RealMapCertificates/relations/basis23712.json"
theorem reductionProof23712 : EqualModuloRelations reduction23712.relations reduction23712.input reduction23712.output := by lin_cert using reduction23712.terms
theorem substitutionProof23712 : IsMapEvaluation generatorImages reduction23712.relations [2878] reduction23712.output := by lin_cert using reduction23712.terms
def image23713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23713 : InImage map_21_261 image23713 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction23713 : Bundle := named_bundle% "RealMapCertificates/relations/basis23713.json"
theorem reductionProof23713 : EqualModuloRelations reduction23713.relations reduction23713.input reduction23713.output := by lin_cert using reduction23713.terms
theorem substitutionProof23713 : IsMapEvaluation generatorImages reduction23713.relations [74,1088] reduction23713.output := by lin_cert using reduction23713.terms
def image23714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23714 : InImage map_21_261 image23714 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction23714 : Bundle := named_bundle% "RealMapCertificates/relations/basis23714.json"
theorem reductionProof23714 : EqualModuloRelations reduction23714.relations reduction23714.input reduction23714.output := by lin_cert using reduction23714.terms
theorem substitutionProof23714 : IsMapEvaluation generatorImages reduction23714.relations [3,2462] reduction23714.output := by lin_cert using reduction23714.terms
def image23715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23715 : InImage map_21_261 image23715 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction23715 : Bundle := named_bundle% "RealMapCertificates/relations/basis23715.json"
theorem reductionProof23715 : EqualModuloRelations reduction23715.relations reduction23715.input reduction23715.output := by lin_cert using reduction23715.terms
theorem substitutionProof23715 : IsMapEvaluation generatorImages reduction23715.relations [2,2647] reduction23715.output := by lin_cert using reduction23715.terms
def image23716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23716 : InImage map_21_261 image23716 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction23716 : Bundle := named_bundle% "RealMapCertificates/relations/basis23716.json"
theorem reductionProof23716 : EqualModuloRelations reduction23716.relations reduction23716.input reduction23716.output := by lin_cert using reduction23716.terms
theorem substitutionProof23716 : IsMapEvaluation generatorImages reduction23716.relations [0,2826] reduction23716.output := by lin_cert using reduction23716.terms
def image23717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23717 : InImage map_21_261 image23717 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction23717 : Bundle := named_bundle% "RealMapCertificates/relations/basis23717.json"
theorem reductionProof23717 : EqualModuloRelations reduction23717.relations reduction23717.input reduction23717.output := by lin_cert using reduction23717.terms
theorem substitutionProof23717 : IsMapEvaluation generatorImages reduction23717.relations [0,3,2428] reduction23717.output := by lin_cert using reduction23717.terms
def image23718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23718 : InImage map_21_261 image23718 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction23718 : Bundle := named_bundle% "RealMapCertificates/relations/basis23718.json"
theorem reductionProof23718 : EqualModuloRelations reduction23718.relations reduction23718.input reduction23718.output := by lin_cert using reduction23718.terms
theorem substitutionProof23718 : IsMapEvaluation generatorImages reduction23718.relations [0,0,324,346] reduction23718.output := by lin_cert using reduction23718.terms
def map_22_22 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image58 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation58 : InImage map_22_22 image58 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction58 : Bundle := named_bundle% "RealMapCertificates/relations/basis58.json"
theorem reductionProof58 : EqualModuloRelations reduction58.relations reduction58.input reduction58.output := by lin_cert using reduction58.terms
theorem substitutionProof58 : IsMapEvaluation generatorImages reduction58.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction58.output := by lin_cert using reduction58.terms
def map_22_64 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image388 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation388 : InImage map_22_64 image388 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction388 : Bundle := named_bundle% "RealMapCertificates/relations/basis388.json"
theorem reductionProof388 : EqualModuloRelations reduction388.relations reduction388.input reduction388.output := by lin_cert using reduction388.terms
theorem substitutionProof388 : IsMapEvaluation generatorImages reduction388.relations [1,62] reduction388.output := by lin_cert using reduction388.terms
def map_22_65 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image403 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation403 : InImage map_22_65 image403 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction403 : Bundle := named_bundle% "RealMapCertificates/relations/basis403.json"
theorem reductionProof403 : EqualModuloRelations reduction403.relations reduction403.input reduction403.output := by lin_cert using reduction403.terms
theorem substitutionProof403 : IsMapEvaluation generatorImages reduction403.relations [0,65] reduction403.output := by lin_cert using reduction403.terms
def map_22_68 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image457 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation457 : InImage map_22_68 image457 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction457 : Bundle := named_bundle% "RealMapCertificates/relations/basis457.json"
theorem reductionProof457 : EqualModuloRelations reduction457.relations reduction457.input reduction457.output := by lin_cert using reduction457.terms
theorem substitutionProof457 : IsMapEvaluation generatorImages reduction457.relations [0,0,71] reduction457.output := by lin_cert using reduction457.terms
def map_22_69 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation477 : InImage map_22_69 image477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction477 : Bundle := named_bundle% "RealMapCertificates/relations/basis477.json"
theorem reductionProof477 : EqualModuloRelations reduction477.relations reduction477.input reduction477.output := by lin_cert using reduction477.terms
theorem substitutionProof477 : IsMapEvaluation generatorImages reduction477.relations [0,0,0,0,0,0,0,0,0,59] reduction477.output := by lin_cert using reduction477.terms
def map_22_70 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image500 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation500 : InImage map_22_70 image500 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction500 : Bundle := named_bundle% "RealMapCertificates/relations/basis500.json"
theorem reductionProof500 : EqualModuloRelations reduction500.relations reduction500.input reduction500.output := by lin_cert using reduction500.terms
theorem substitutionProof500 : IsMapEvaluation generatorImages reduction500.relations [1,1,71] reduction500.output := by lin_cert using reduction500.terms
def map_22_71 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image520 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation520 : InImage map_22_71 image520 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction520 : Bundle := named_bundle% "RealMapCertificates/relations/basis520.json"
theorem reductionProof520 : EqualModuloRelations reduction520.relations reduction520.input reduction520.output := by lin_cert using reduction520.terms
theorem substitutionProof520 : IsMapEvaluation generatorImages reduction520.relations [0,0,77] reduction520.output := by lin_cert using reduction520.terms
def map_22_74 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image585 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation585 : InImage map_22_74 image585 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction585 : Bundle := named_bundle% "RealMapCertificates/relations/basis585.json"
theorem reductionProof585 : EqualModuloRelations reduction585.relations reduction585.input reduction585.output := by lin_cert using reduction585.terms
theorem substitutionProof585 : IsMapEvaluation generatorImages reduction585.relations [0,0,8,49] reduction585.output := by lin_cert using reduction585.terms
def map_22_77 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation648 : InImage map_22_77 image648 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction648 : Bundle := named_bundle% "RealMapCertificates/relations/basis648.json"
theorem reductionProof648 : EqualModuloRelations reduction648.relations reduction648.input reduction648.output := by lin_cert using reduction648.terms
theorem substitutionProof648 : IsMapEvaluation generatorImages reduction648.relations [0,0,8,55] reduction648.output := by lin_cert using reduction648.terms
def map_22_80 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image712 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation712 : InImage map_22_80 image712 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction712 : Bundle := named_bundle% "RealMapCertificates/relations/basis712.json"
theorem reductionProof712 : EqualModuloRelations reduction712.relations reduction712.input reduction712.output := by lin_cert using reduction712.terms
theorem substitutionProof712 : IsMapEvaluation generatorImages reduction712.relations [0,0,8,8,31] reduction712.output := by lin_cert using reduction712.terms
def map_22_84 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image804 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation804 : InImage map_22_84 image804 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction804 : Bundle := named_bundle% "RealMapCertificates/relations/basis804.json"
theorem reductionProof804 : EqualModuloRelations reduction804.relations reduction804.input reduction804.output := by lin_cert using reduction804.terms
theorem substitutionProof804 : IsMapEvaluation generatorImages reduction804.relations [17,50] reduction804.output := by lin_cert using reduction804.terms
def map_22_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation841 : InImage map_22_85 image841 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction841 : Bundle := named_bundle% "RealMapCertificates/relations/basis841.json"
theorem reductionProof841 : EqualModuloRelations reduction841.relations reduction841.input reduction841.output := by lin_cert using reduction841.terms
theorem substitutionProof841 : IsMapEvaluation generatorImages reduction841.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction841.output := by lin_cert using reduction841.terms
def map_22_86 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image865 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation865 : InImage map_22_86 image865 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction865 : Bundle := named_bundle% "RealMapCertificates/relations/basis865.json"
theorem reductionProof865 : EqualModuloRelations reduction865.relations reduction865.input reduction865.output := by lin_cert using reduction865.terms
theorem substitutionProof865 : IsMapEvaluation generatorImages reduction865.relations [1,125] reduction865.output := by lin_cert using reduction865.terms
def map_22_87 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image889 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation889 : InImage map_22_87 image889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction889 : Bundle := named_bundle% "RealMapCertificates/relations/basis889.json"
theorem reductionProof889 : EqualModuloRelations reduction889.relations reduction889.input reduction889.output := by lin_cert using reduction889.terms
theorem substitutionProof889 : IsMapEvaluation generatorImages reduction889.relations [17,56] reduction889.output := by lin_cert using reduction889.terms
def map_22_90 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image964 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation964 : InImage map_22_90 image964 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction964 : Bundle := named_bundle% "RealMapCertificates/relations/basis964.json"
theorem reductionProof964 : EqualModuloRelations reduction964.relations reduction964.input reduction964.output := by lin_cert using reduction964.terms
theorem substitutionProof964 : IsMapEvaluation generatorImages reduction964.relations [16,17,17] reduction964.output := by lin_cert using reduction964.terms
def map_22_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation999 : InImage map_22_91 image999 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction999 : Bundle := named_bundle% "RealMapCertificates/relations/basis999.json"
theorem reductionProof999 : EqualModuloRelations reduction999.relations reduction999.input reduction999.output := by lin_cert using reduction999.terms
theorem substitutionProof999 : IsMapEvaluation generatorImages reduction999.relations [0,0,0,0,137] reduction999.output := by lin_cert using reduction999.terms
def map_22_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1023 : InImage map_22_92 image1023 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1023 : Bundle := named_bundle% "RealMapCertificates/relations/basis1023.json"
theorem reductionProof1023 : EqualModuloRelations reduction1023.relations reduction1023.input reduction1023.output := by lin_cert using reduction1023.terms
theorem substitutionProof1023 : IsMapEvaluation generatorImages reduction1023.relations [0,0,0,0,0,138] reduction1023.output := by lin_cert using reduction1023.terms
def map_22_93 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1046 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1046 : InImage map_22_93 image1046 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1046 : Bundle := named_bundle% "RealMapCertificates/relations/basis1046.json"
theorem reductionProof1046 : EqualModuloRelations reduction1046.relations reduction1046.input reduction1046.output := by lin_cert using reduction1046.terms
theorem substitutionProof1046 : IsMapEvaluation generatorImages reduction1046.relations [8,17,40] reduction1046.output := by lin_cert using reduction1046.terms
def map_22_96 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1113 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1113 : InImage map_22_96 image1113 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1113 : Bundle := named_bundle% "RealMapCertificates/relations/basis1113.json"
theorem reductionProof1113 : EqualModuloRelations reduction1113.relations reduction1113.input reduction1113.output := by lin_cert using reduction1113.terms
theorem substitutionProof1113 : IsMapEvaluation generatorImages reduction1113.relations [8,8,17,17] reduction1113.output := by lin_cert using reduction1113.terms
end RealMapCertificates
