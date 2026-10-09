import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 33 => []
  | 42 => [[5,5,7]]
  | 45 => [[5,5,8]]
  | 64 => []
  | 69 => []
  | 72 => []
  | 79 => []
  | 83 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 168 => []
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 209 => []
  | 218 => [[5,5,9,12]]
  | 233 => [[5,7,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 255 => []
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 267 => []
  | 274 => []
  | 277 => [[4,5,5,9,12]]
  | 278 => []
  | 291 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 301 => []
  | 316 => []
  | 317 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 380 => []
  | 382 => []
  | 404 => [[0,0,8,12,12]]
  | 422 => []
  | 434 => [[0,0,9,12,12]]
  | 435 => [[1,9,12,12]]
  | 440 => []
  | 449 => []
  | 454 => []
  | 471 => []
  | 499 => []
  | 500 => []
  | 517 => []
  | 530 => []
  | 537 => []
  | 585 => []
  | 586 => []
  | _ => []
def map_22_98 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1166 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1166 : InImage map_22_98 image1166 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1166 : Bundle := named_bundle% "RealMapCertificates/relations/basis1166.json"
theorem reductionProof1166 : EqualModuloRelations reduction1166.relations reduction1166.input reduction1166.output := by lin_cert using reduction1166.terms
theorem substitutionProof1166 : IsMapEvaluation generatorImages reduction1166.relations [0,0,0,0,0,0,149] reduction1166.output := by lin_cert using reduction1166.terms
def map_22_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1191 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1191 : InImage map_22_99 image1191 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1191 : Bundle := named_bundle% "RealMapCertificates/relations/basis1191.json"
theorem reductionProof1191 : EqualModuloRelations reduction1191.relations reduction1191.input reduction1191.output := by lin_cert using reduction1191.terms
theorem substitutionProof1191 : IsMapEvaluation generatorImages reduction1191.relations [8,8,17,20] reduction1191.output := by lin_cert using reduction1191.terms
def map_22_102 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image1281 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1281 : InImage map_22_102 image1281 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1281 : Bundle := named_bundle% "RealMapCertificates/relations/basis1281.json"
theorem reductionProof1281 : EqualModuloRelations reduction1281.relations reduction1281.input reduction1281.output := by lin_cert using reduction1281.terms
theorem substitutionProof1281 : IsMapEvaluation generatorImages reduction1281.relations [184] reduction1281.output := by lin_cert using reduction1281.terms
def image1282 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1282 : InImage map_22_102 image1282 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1282 : Bundle := named_bundle% "RealMapCertificates/relations/basis1282.json"
theorem reductionProof1282 : EqualModuloRelations reduction1282.relations reduction1282.input reduction1282.output := by lin_cert using reduction1282.terms
theorem substitutionProof1282 : IsMapEvaluation generatorImages reduction1282.relations [8,8,16,23] reduction1282.output := by lin_cert using reduction1282.terms
def map_22_103 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1319 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1319 : InImage map_22_103 image1319 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1319 : Bundle := named_bundle% "RealMapCertificates/relations/basis1319.json"
theorem reductionProof1319 : EqualModuloRelations reduction1319.relations reduction1319.input reduction1319.output := by lin_cert using reduction1319.terms
theorem substitutionProof1319 : IsMapEvaluation generatorImages reduction1319.relations [0,185] reduction1319.output := by lin_cert using reduction1319.terms
def map_22_105 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1384 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1384 : InImage map_22_105 image1384 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1384 : Bundle := named_bundle% "RealMapCertificates/relations/basis1384.json"
theorem reductionProof1384 : EqualModuloRelations reduction1384.relations reduction1384.input reduction1384.output := by lin_cert using reduction1384.terms
theorem substitutionProof1384 : IsMapEvaluation generatorImages reduction1384.relations [8,137] reduction1384.output := by lin_cert using reduction1384.terms
def image1385 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1385 : InImage map_22_105 image1385 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1385 : Bundle := named_bundle% "RealMapCertificates/relations/basis1385.json"
theorem reductionProof1385 : EqualModuloRelations reduction1385.relations reduction1385.input reduction1385.output := by lin_cert using reduction1385.terms
theorem substitutionProof1385 : IsMapEvaluation generatorImages reduction1385.relations [8,8,8,45] reduction1385.output := by lin_cert using reduction1385.terms
def map_22_106 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1416 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1416 : InImage map_22_106 image1416 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1416 : Bundle := named_bundle% "RealMapCertificates/relations/basis1416.json"
theorem reductionProof1416 : EqualModuloRelations reduction1416.relations reduction1416.input reduction1416.output := by lin_cert using reduction1416.terms
theorem substitutionProof1416 : IsMapEvaluation generatorImages reduction1416.relations [0,8,138] reduction1416.output := by lin_cert using reduction1416.terms
def map_22_108 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image1481 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1481 : InImage map_22_108 image1481 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1481 : Bundle := named_bundle% "RealMapCertificates/relations/basis1481.json"
theorem reductionProof1481 : EqualModuloRelations reduction1481.relations reduction1481.input reduction1481.output := by lin_cert using reduction1481.terms
theorem substitutionProof1481 : IsMapEvaluation generatorImages reduction1481.relations [8,146] reduction1481.output := by lin_cert using reduction1481.terms
def image1482 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1482 : InImage map_22_108 image1482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1482 : Bundle := named_bundle% "RealMapCertificates/relations/basis1482.json"
theorem reductionProof1482 : EqualModuloRelations reduction1482.relations reduction1482.input reduction1482.output := by lin_cert using reduction1482.terms
theorem substitutionProof1482 : IsMapEvaluation generatorImages reduction1482.relations [8,8,8,8,23] reduction1482.output := by lin_cert using reduction1482.terms
def image1483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1483 : InImage map_22_108 image1483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1483 : Bundle := named_bundle% "RealMapCertificates/relations/basis1483.json"
theorem reductionProof1483 : EqualModuloRelations reduction1483.relations reduction1483.input reduction1483.output := by lin_cert using reduction1483.terms
theorem substitutionProof1483 : IsMapEvaluation generatorImages reduction1483.relations [1,5,149] reduction1483.output := by lin_cert using reduction1483.terms
def map_22_109 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1527 : InImage map_22_109 image1527 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1527 : Bundle := named_bundle% "RealMapCertificates/relations/basis1527.json"
theorem reductionProof1527 : EqualModuloRelations reduction1527.relations reduction1527.input reduction1527.output := by lin_cert using reduction1527.terms
theorem substitutionProof1527 : IsMapEvaluation generatorImages reduction1527.relations [0,8,147] reduction1527.output := by lin_cert using reduction1527.terms
def image1528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1528 : InImage map_22_109 image1528 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1528 : Bundle := named_bundle% "RealMapCertificates/relations/basis1528.json"
theorem reductionProof1528 : EqualModuloRelations reduction1528.relations reduction1528.input reduction1528.output := by lin_cert using reduction1528.terms
theorem substitutionProof1528 : IsMapEvaluation generatorImages reduction1528.relations [0,0,206] reduction1528.output := by lin_cert using reduction1528.terms
def map_22_111 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1603 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1603 : InImage map_22_111 image1603 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1603 : Bundle := named_bundle% "RealMapCertificates/relations/basis1603.json"
theorem reductionProof1603 : EqualModuloRelations reduction1603.relations reduction1603.input reduction1603.output := by lin_cert using reduction1603.terms
theorem substitutionProof1603 : IsMapEvaluation generatorImages reduction1603.relations [8,16,64] reduction1603.output := by lin_cert using reduction1603.terms
def image1604 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1604 : InImage map_22_111 image1604 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1604 : Bundle := named_bundle% "RealMapCertificates/relations/basis1604.json"
theorem reductionProof1604 : EqualModuloRelations reduction1604.relations reduction1604.input reduction1604.output := by lin_cert using reduction1604.terms
theorem substitutionProof1604 : IsMapEvaluation generatorImages reduction1604.relations [8,8,8,9,23] reduction1604.output := by lin_cert using reduction1604.terms
def map_22_112 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1641 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1641 : InImage map_22_112 image1641 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1641 : Bundle := named_bundle% "RealMapCertificates/relations/basis1641.json"
theorem reductionProof1641 : EqualModuloRelations reduction1641.relations reduction1641.input reduction1641.output := by lin_cert using reduction1641.terms
theorem substitutionProof1641 : IsMapEvaluation generatorImages reduction1641.relations [0,8,17,64] reduction1641.output := by lin_cert using reduction1641.terms
def image1642 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1642 : InImage map_22_112 image1642 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1642 : Bundle := named_bundle% "RealMapCertificates/relations/basis1642.json"
theorem reductionProof1642 : EqualModuloRelations reduction1642.relations reduction1642.input reduction1642.output := by lin_cert using reduction1642.terms
theorem substitutionProof1642 : IsMapEvaluation generatorImages reduction1642.relations [0,0,8,149] reduction1642.output := by lin_cert using reduction1642.terms
def map_22_114 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image1716 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1716 : InImage map_22_114 image1716 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1716 : Bundle := named_bundle% "RealMapCertificates/relations/basis1716.json"
theorem reductionProof1716 : EqualModuloRelations reduction1716.relations reduction1716.input reduction1716.output := by lin_cert using reduction1716.terms
theorem substitutionProof1716 : IsMapEvaluation generatorImages reduction1716.relations [8,8,112] reduction1716.output := by lin_cert using reduction1716.terms
def image1717 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1717 : InImage map_22_114 image1717 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1717 : Bundle := named_bundle% "RealMapCertificates/relations/basis1717.json"
theorem reductionProof1717 : EqualModuloRelations reduction1717.relations reduction1717.input reduction1717.output := by lin_cert using reduction1717.terms
theorem substitutionProof1717 : IsMapEvaluation generatorImages reduction1717.relations [8,8,8,13,23] reduction1717.output := by lin_cert using reduction1717.terms
def map_22_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1751 : InImage map_22_115 image1751 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1751 : Bundle := named_bundle% "RealMapCertificates/relations/basis1751.json"
theorem reductionProof1751 : EqualModuloRelations reduction1751.relations reduction1751.input reduction1751.output := by lin_cert using reduction1751.terms
theorem substitutionProof1751 : IsMapEvaluation generatorImages reduction1751.relations [0,8,8,113] reduction1751.output := by lin_cert using reduction1751.terms
def map_22_116 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1780 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1780 : InImage map_22_116 image1780 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1780 : Bundle := named_bundle% "RealMapCertificates/relations/basis1780.json"
theorem reductionProof1780 : EqualModuloRelations reduction1780.relations reduction1780.input reduction1780.output := by lin_cert using reduction1780.terms
theorem substitutionProof1780 : IsMapEvaluation generatorImages reduction1780.relations [245] reduction1780.output := by lin_cert using reduction1780.terms
def map_22_117 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image1825 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1825 : InImage map_22_117 image1825 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1825 : Bundle := named_bundle% "RealMapCertificates/relations/basis1825.json"
theorem reductionProof1825 : EqualModuloRelations reduction1825.relations reduction1825.input reduction1825.output := by lin_cert using reduction1825.terms
theorem substitutionProof1825 : IsMapEvaluation generatorImages reduction1825.relations [8,8,9,13,23] reduction1825.output := by lin_cert using reduction1825.terms
def image1826 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1826 : InImage map_22_117 image1826 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1826 : Bundle := named_bundle% "RealMapCertificates/relations/basis1826.json"
theorem reductionProof1826 : EqualModuloRelations reduction1826.relations reduction1826.input reduction1826.output := by lin_cert using reduction1826.terms
theorem substitutionProof1826 : IsMapEvaluation generatorImages reduction1826.relations [8,8,8,64] reduction1826.output := by lin_cert using reduction1826.terms
def image1827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1827 : InImage map_22_117 image1827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1827 : Bundle := named_bundle% "RealMapCertificates/relations/basis1827.json"
theorem reductionProof1827 : EqualModuloRelations reduction1827.relations reduction1827.input reduction1827.output := by lin_cert using reduction1827.terms
theorem substitutionProof1827 : IsMapEvaluation generatorImages reduction1827.relations [0,246] reduction1827.output := by lin_cert using reduction1827.terms
def map_22_118 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1859 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1859 : InImage map_22_118 image1859 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1859 : Bundle := named_bundle% "RealMapCertificates/relations/basis1859.json"
theorem reductionProof1859 : EqualModuloRelations reduction1859.relations reduction1859.input reduction1859.output := by lin_cert using reduction1859.terms
theorem substitutionProof1859 : IsMapEvaluation generatorImages reduction1859.relations [1,246] reduction1859.output := by lin_cert using reduction1859.terms
def image1860 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1860 : InImage map_22_118 image1860 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1860 : Bundle := named_bundle% "RealMapCertificates/relations/basis1860.json"
theorem reductionProof1860 : EqualModuloRelations reduction1860.relations reduction1860.input reduction1860.output := by lin_cert using reduction1860.terms
theorem substitutionProof1860 : IsMapEvaluation generatorImages reduction1860.relations [0,8,8,118] reduction1860.output := by lin_cert using reduction1860.terms
def map_22_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1897 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1897 : InImage map_22_119 image1897 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1897 : Bundle := named_bundle% "RealMapCertificates/relations/basis1897.json"
theorem reductionProof1897 : EqualModuloRelations reduction1897.relations reduction1897.input reduction1897.output := by lin_cert using reduction1897.terms
theorem substitutionProof1897 : IsMapEvaluation generatorImages reduction1897.relations [258] reduction1897.output := by lin_cert using reduction1897.terms
def map_22_120 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1940 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1940 : InImage map_22_120 image1940 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1940 : Bundle := named_bundle% "RealMapCertificates/relations/basis1940.json"
theorem reductionProof1940 : EqualModuloRelations reduction1940.relations reduction1940.input reduction1940.output := by lin_cert using reduction1940.terms
theorem substitutionProof1940 : IsMapEvaluation generatorImages reduction1940.relations [8,8,13,13,23] reduction1940.output := by lin_cert using reduction1940.terms
def image1941 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1941 : InImage map_22_120 image1941 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1941 : Bundle := named_bundle% "RealMapCertificates/relations/basis1941.json"
theorem reductionProof1941 : EqualModuloRelations reduction1941.relations reduction1941.input reduction1941.output := by lin_cert using reduction1941.terms
theorem substitutionProof1941 : IsMapEvaluation generatorImages reduction1941.relations [8,8,8,72] reduction1941.output := by lin_cert using reduction1941.terms
def map_22_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2016 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2016 : InImage map_22_122 image2016 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2016 : Bundle := named_bundle% "RealMapCertificates/relations/basis2016.json"
theorem reductionProof2016 : EqualModuloRelations reduction2016.relations reduction2016.input reduction2016.output := by lin_cert using reduction2016.terms
theorem substitutionProof2016 : IsMapEvaluation generatorImages reduction2016.relations [277] reduction2016.output := by lin_cert using reduction2016.terms
def map_22_123 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2060 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2060 : InImage map_22_123 image2060 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2060 : Bundle := named_bundle% "RealMapCertificates/relations/basis2060.json"
theorem reductionProof2060 : EqualModuloRelations reduction2060.relations reduction2060.input reduction2060.output := by lin_cert using reduction2060.terms
theorem substitutionProof2060 : IsMapEvaluation generatorImages reduction2060.relations [8,9,13,13,23] reduction2060.output := by lin_cert using reduction2060.terms
def image2061 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2061 : InImage map_22_123 image2061 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2061 : Bundle := named_bundle% "RealMapCertificates/relations/basis2061.json"
theorem reductionProof2061 : EqualModuloRelations reduction2061.relations reduction2061.input reduction2061.output := by lin_cert using reduction2061.terms
theorem substitutionProof2061 : IsMapEvaluation generatorImages reduction2061.relations [8,8,8,79] reduction2061.output := by lin_cert using reduction2061.terms
def image2062 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2062 : InImage map_22_123 image2062 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2062 : Bundle := named_bundle% "RealMapCertificates/relations/basis2062.json"
theorem reductionProof2062 : EqualModuloRelations reduction2062.relations reduction2062.input reduction2062.output := by lin_cert using reduction2062.terms
theorem substitutionProof2062 : IsMapEvaluation generatorImages reduction2062.relations [0,0,0,0,260] reduction2062.output := by lin_cert using reduction2062.terms
def map_22_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2103 : InImage map_22_124 image2103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2103 : Bundle := named_bundle% "RealMapCertificates/relations/basis2103.json"
theorem reductionProof2103 : EqualModuloRelations reduction2103.relations reduction2103.input reduction2103.output := by lin_cert using reduction2103.terms
theorem substitutionProof2103 : IsMapEvaluation generatorImages reduction2103.relations [0,0,0,274] reduction2103.output := by lin_cert using reduction2103.terms
def map_22_125 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2142 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2142 : InImage map_22_125 image2142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2142 : Bundle := named_bundle% "RealMapCertificates/relations/basis2142.json"
theorem reductionProof2142 : EqualModuloRelations reduction2142.relations reduction2142.input reduction2142.output := by lin_cert using reduction2142.terms
theorem substitutionProof2142 : IsMapEvaluation generatorImages reduction2142.relations [8,207] reduction2142.output := by lin_cert using reduction2142.terms
def map_22_126 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2190 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2190 : InImage map_22_126 image2190 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2190 : Bundle := named_bundle% "RealMapCertificates/relations/basis2190.json"
theorem reductionProof2190 : EqualModuloRelations reduction2190.relations reduction2190.input reduction2190.output := by lin_cert using reduction2190.terms
theorem substitutionProof2190 : IsMapEvaluation generatorImages reduction2190.relations [8,13,13,13,23] reduction2190.output := by lin_cert using reduction2190.terms
def image2191 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2191 : InImage map_22_126 image2191 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2191 : Bundle := named_bundle% "RealMapCertificates/relations/basis2191.json"
theorem reductionProof2191 : EqualModuloRelations reduction2191.relations reduction2191.input reduction2191.output := by lin_cert using reduction2191.terms
theorem substitutionProof2191 : IsMapEvaluation generatorImages reduction2191.relations [8,8,8,89] reduction2191.output := by lin_cert using reduction2191.terms
def map_22_128 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2274 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2274 : InImage map_22_128 image2274 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2274 : Bundle := named_bundle% "RealMapCertificates/relations/basis2274.json"
theorem reductionProof2274 : EqualModuloRelations reduction2274.relations reduction2274.input reduction2274.output := by lin_cert using reduction2274.terms
theorem substitutionProof2274 : IsMapEvaluation generatorImages reduction2274.relations [8,218] reduction2274.output := by lin_cert using reduction2274.terms
def image2275 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2275 : InImage map_22_128 image2275 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2275 : Bundle := named_bundle% "RealMapCertificates/relations/basis2275.json"
theorem reductionProof2275 : EqualModuloRelations reduction2275.relations reduction2275.input reduction2275.output := by lin_cert using reduction2275.terms
theorem substitutionProof2275 : IsMapEvaluation generatorImages reduction2275.relations [0,0,64,64] reduction2275.output := by lin_cert using reduction2275.terms
def map_22_129 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2344 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2344 : InImage map_22_129 image2344 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2344 : Bundle := named_bundle% "RealMapCertificates/relations/basis2344.json"
theorem reductionProof2344 : EqualModuloRelations reduction2344.relations reduction2344.input reduction2344.output := by lin_cert using reduction2344.terms
theorem substitutionProof2344 : IsMapEvaluation generatorImages reduction2344.relations [9,13,13,13,23] reduction2344.output := by lin_cert using reduction2344.terms
def image2345 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2345 : InImage map_22_129 image2345 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2345 : Bundle := named_bundle% "RealMapCertificates/relations/basis2345.json"
theorem reductionProof2345 : EqualModuloRelations reduction2345.relations reduction2345.input reduction2345.output := by lin_cert using reduction2345.terms
theorem substitutionProof2345 : IsMapEvaluation generatorImages reduction2345.relations [8,8,8,101] reduction2345.output := by lin_cert using reduction2345.terms
def image2346 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2346 : InImage map_22_129 image2346 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2346 : Bundle := named_bundle% "RealMapCertificates/relations/basis2346.json"
theorem reductionProof2346 : EqualModuloRelations reduction2346.relations reduction2346.input reduction2346.output := by lin_cert using reduction2346.terms
theorem substitutionProof2346 : IsMapEvaluation generatorImages reduction2346.relations [0,0,0,299] reduction2346.output := by lin_cert using reduction2346.terms
def map_22_130 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2397 : InImage map_22_130 image2397 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2397 : Bundle := named_bundle% "RealMapCertificates/relations/basis2397.json"
theorem reductionProof2397 : EqualModuloRelations reduction2397.relations reduction2397.input reduction2397.output := by lin_cert using reduction2397.terms
theorem substitutionProof2397 : IsMapEvaluation generatorImages reduction2397.relations [1,1,64,64] reduction2397.output := by lin_cert using reduction2397.terms
def image2398 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2398 : InImage map_22_130 image2398 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2398 : Bundle := named_bundle% "RealMapCertificates/relations/basis2398.json"
theorem reductionProof2398 : EqualModuloRelations reduction2398.relations reduction2398.input reduction2398.output := by lin_cert using reduction2398.terms
theorem substitutionProof2398 : IsMapEvaluation generatorImages reduction2398.relations [0,0,0,0,0,292] reduction2398.output := by lin_cert using reduction2398.terms
def map_22_131 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2458 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2458 : InImage map_22_131 image2458 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2458 : Bundle := named_bundle% "RealMapCertificates/relations/basis2458.json"
theorem reductionProof2458 : EqualModuloRelations reduction2458.relations reduction2458.input reduction2458.output := by lin_cert using reduction2458.terms
theorem substitutionProof2458 : IsMapEvaluation generatorImages reduction2458.relations [8,233] reduction2458.output := by lin_cert using reduction2458.terms
def image2459 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2459 : InImage map_22_131 image2459 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2459 : Bundle := named_bundle% "RealMapCertificates/relations/basis2459.json"
theorem reductionProof2459 : EqualModuloRelations reduction2459.relations reduction2459.input reduction2459.output := by lin_cert using reduction2459.terms
theorem substitutionProof2459 : IsMapEvaluation generatorImages reduction2459.relations [0,0,0,0,0,301] reduction2459.output := by lin_cert using reduction2459.terms
def image2460 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2460 : InImage map_22_131 image2460 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2460 : Bundle := named_bundle% "RealMapCertificates/relations/basis2460.json"
theorem reductionProof2460 : EqualModuloRelations reduction2460.relations reduction2460.input reduction2460.output := by lin_cert using reduction2460.terms
theorem substitutionProof2460 : IsMapEvaluation generatorImages reduction2460.relations [0,0,0,0,0,300] reduction2460.output := by lin_cert using reduction2460.terms
def map_22_132 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2531 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2531 : InImage map_22_132 image2531 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2531 : Bundle := named_bundle% "RealMapCertificates/relations/basis2531.json"
theorem reductionProof2531 : EqualModuloRelations reduction2531.relations reduction2531.input reduction2531.output := by lin_cert using reduction2531.terms
theorem substitutionProof2531 : IsMapEvaluation generatorImages reduction2531.relations [13,13,13,13,23] reduction2531.output := by lin_cert using reduction2531.terms
def image2532 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2532 : InImage map_22_132 image2532 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2532 : Bundle := named_bundle% "RealMapCertificates/relations/basis2532.json"
theorem reductionProof2532 : EqualModuloRelations reduction2532.relations reduction2532.input reduction2532.output := by lin_cert using reduction2532.terms
theorem substitutionProof2532 : IsMapEvaluation generatorImages reduction2532.relations [8,8,9,101] reduction2532.output := by lin_cert using reduction2532.terms
def image2533 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2533 : InImage map_22_132 image2533 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2533 : Bundle := named_bundle% "RealMapCertificates/relations/basis2533.json"
theorem reductionProof2533 : EqualModuloRelations reduction2533.relations reduction2533.input reduction2533.output := by lin_cert using reduction2533.terms
theorem substitutionProof2533 : IsMapEvaluation generatorImages reduction2533.relations [0,0,0,0,317] reduction2533.output := by lin_cert using reduction2533.terms
def map_22_134 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2656 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2656 : InImage map_22_134 image2656 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2656 : Bundle := named_bundle% "RealMapCertificates/relations/basis2656.json"
theorem reductionProof2656 : EqualModuloRelations reduction2656.relations reduction2656.input reduction2656.output := by lin_cert using reduction2656.terms
theorem substitutionProof2656 : IsMapEvaluation generatorImages reduction2656.relations [380] reduction2656.output := by lin_cert using reduction2656.terms
def image2657 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2657 : InImage map_22_134 image2657 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2657 : Bundle := named_bundle% "RealMapCertificates/relations/basis2657.json"
theorem reductionProof2657 : EqualModuloRelations reduction2657.relations reduction2657.input reduction2657.output := by lin_cert using reduction2657.terms
theorem substitutionProof2657 : IsMapEvaluation generatorImages reduction2657.relations [8,248] reduction2657.output := by lin_cert using reduction2657.terms
def map_22_135 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2755 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2755 : InImage map_22_135 image2755 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2755 : Bundle := named_bundle% "RealMapCertificates/relations/basis2755.json"
theorem reductionProof2755 : EqualModuloRelations reduction2755.relations reduction2755.input reduction2755.output := by lin_cert using reduction2755.terms
theorem substitutionProof2755 : IsMapEvaluation generatorImages reduction2755.relations [404] reduction2755.output := by lin_cert using reduction2755.terms
def image2756 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2756 : InImage map_22_135 image2756 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2756 : Bundle := named_bundle% "RealMapCertificates/relations/basis2756.json"
theorem reductionProof2756 : EqualModuloRelations reduction2756.relations reduction2756.input reduction2756.output := by lin_cert using reduction2756.terms
theorem substitutionProof2756 : IsMapEvaluation generatorImages reduction2756.relations [8,8,13,101] reduction2756.output := by lin_cert using reduction2756.terms
def image2757 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2757 : InImage map_22_135 image2757 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2757 : Bundle := named_bundle% "RealMapCertificates/relations/basis2757.json"
theorem reductionProof2757 : EqualModuloRelations reduction2757.relations reduction2757.input reduction2757.output := by lin_cert using reduction2757.terms
theorem substitutionProof2757 : IsMapEvaluation generatorImages reduction2757.relations [0,0,0,0,347] reduction2757.output := by lin_cert using reduction2757.terms
def map_22_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2823 : InImage map_22_136 image2823 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2823 : Bundle := named_bundle% "RealMapCertificates/relations/basis2823.json"
theorem reductionProof2823 : EqualModuloRelations reduction2823.relations reduction2823.input reduction2823.output := by lin_cert using reduction2823.terms
theorem substitutionProof2823 : IsMapEvaluation generatorImages reduction2823.relations [0,0,0,0,17,188] reduction2823.output := by lin_cert using reduction2823.terms
def map_22_137 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2895 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2895 : InImage map_22_137 image2895 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2895 : Bundle := named_bundle% "RealMapCertificates/relations/basis2895.json"
theorem reductionProof2895 : EqualModuloRelations reduction2895.relations reduction2895.input reduction2895.output := by lin_cert using reduction2895.terms
theorem substitutionProof2895 : IsMapEvaluation generatorImages reduction2895.relations [9,248] reduction2895.output := by lin_cert using reduction2895.terms
def image2896 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2896 : InImage map_22_137 image2896 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2896 : Bundle := named_bundle% "RealMapCertificates/relations/basis2896.json"
theorem reductionProof2896 : EqualModuloRelations reduction2896.relations reduction2896.input reduction2896.output := by lin_cert using reduction2896.terms
theorem substitutionProof2896 : IsMapEvaluation generatorImages reduction2896.relations [8,260] reduction2896.output := by lin_cert using reduction2896.terms
def map_22_138 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2980 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2980 : InImage map_22_138 image2980 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2980 : Bundle := named_bundle% "RealMapCertificates/relations/basis2980.json"
theorem reductionProof2980 : EqualModuloRelations reduction2980.relations reduction2980.input reduction2980.output := by lin_cert using reduction2980.terms
theorem substitutionProof2980 : IsMapEvaluation generatorImages reduction2980.relations [434] reduction2980.output := by lin_cert using reduction2980.terms
def image2981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2981 : InImage map_22_138 image2981 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2981 : Bundle := named_bundle% "RealMapCertificates/relations/basis2981.json"
theorem reductionProof2981 : EqualModuloRelations reduction2981.relations reduction2981.input reduction2981.output := by lin_cert using reduction2981.terms
theorem substitutionProof2981 : IsMapEvaluation generatorImages reduction2981.relations [13,13,13,13,33] reduction2981.output := by lin_cert using reduction2981.terms
def image2982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2982 : InImage map_22_138 image2982 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2982 : Bundle := named_bundle% "RealMapCertificates/relations/basis2982.json"
theorem reductionProof2982 : EqualModuloRelations reduction2982.relations reduction2982.input reduction2982.output := by lin_cert using reduction2982.terms
theorem substitutionProof2982 : IsMapEvaluation generatorImages reduction2982.relations [8,9,13,101] reduction2982.output := by lin_cert using reduction2982.terms
def map_22_140 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image3128 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3128 : InImage map_22_140 image3128 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3128 : Bundle := named_bundle% "RealMapCertificates/relations/basis3128.json"
theorem reductionProof3128 : EqualModuloRelations reduction3128.relations reduction3128.input reduction3128.output := by lin_cert using reduction3128.terms
theorem substitutionProof3128 : IsMapEvaluation generatorImages reduction3128.relations [13,248] reduction3128.output := by lin_cert using reduction3128.terms
def image3129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3129 : InImage map_22_140 image3129 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3129 : Bundle := named_bundle% "RealMapCertificates/relations/basis3129.json"
theorem reductionProof3129 : EqualModuloRelations reduction3129.relations reduction3129.input reduction3129.output := by lin_cert using reduction3129.terms
theorem substitutionProof3129 : IsMapEvaluation generatorImages reduction3129.relations [8,278] reduction3129.output := by lin_cert using reduction3129.terms
def image3130 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3130 : InImage map_22_140 image3130 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3130 : Bundle := named_bundle% "RealMapCertificates/relations/basis3130.json"
theorem reductionProof3130 : EqualModuloRelations reduction3130.relations reduction3130.input reduction3130.output := by lin_cert using reduction3130.terms
theorem substitutionProof3130 : IsMapEvaluation generatorImages reduction3130.relations [1,435] reduction3130.output := by lin_cert using reduction3130.terms
def map_22_141 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3235 : InImage map_22_141 image3235 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3235 : Bundle := named_bundle% "RealMapCertificates/relations/basis3235.json"
theorem reductionProof3235 : EqualModuloRelations reduction3235.relations reduction3235.input reduction3235.output := by lin_cert using reduction3235.terms
theorem substitutionProof3235 : IsMapEvaluation generatorImages reduction3235.relations [471] reduction3235.output := by lin_cert using reduction3235.terms
def image3236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3236 : InImage map_22_141 image3236 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3236 : Bundle := named_bundle% "RealMapCertificates/relations/basis3236.json"
theorem reductionProof3236 : EqualModuloRelations reduction3236.relations reduction3236.input reduction3236.output := by lin_cert using reduction3236.terms
theorem substitutionProof3236 : IsMapEvaluation generatorImages reduction3236.relations [8,13,13,101] reduction3236.output := by lin_cert using reduction3236.terms
def image3237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3237 : InImage map_22_141 image3237 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3237 : Bundle := named_bundle% "RealMapCertificates/relations/basis3237.json"
theorem reductionProof3237 : EqualModuloRelations reduction3237.relations reduction3237.input reduction3237.output := by lin_cert using reduction3237.terms
theorem substitutionProof3237 : IsMapEvaluation generatorImages reduction3237.relations [0,454] reduction3237.output := by lin_cert using reduction3237.terms
def map_22_142 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3307 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3307 : InImage map_22_142 image3307 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3307 : Bundle := named_bundle% "RealMapCertificates/relations/basis3307.json"
theorem reductionProof3307 : EqualModuloRelations reduction3307.relations reduction3307.input reduction3307.output := by lin_cert using reduction3307.terms
theorem substitutionProof3307 : IsMapEvaluation generatorImages reduction3307.relations [0,0,0,0,0,17,209] reduction3307.output := by lin_cert using reduction3307.terms
def map_22_143 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3384 : InImage map_22_143 image3384 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3384 : Bundle := named_bundle% "RealMapCertificates/relations/basis3384.json"
theorem reductionProof3384 : EqualModuloRelations reduction3384.relations reduction3384.input reduction3384.output := by lin_cert using reduction3384.terms
theorem substitutionProof3384 : IsMapEvaluation generatorImages reduction3384.relations [8,291] reduction3384.output := by lin_cert using reduction3384.terms
def image3385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3385 : InImage map_22_143 image3385 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3385 : Bundle := named_bundle% "RealMapCertificates/relations/basis3385.json"
theorem reductionProof3385 : EqualModuloRelations reduction3385.relations reduction3385.input reduction3385.output := by lin_cert using reduction3385.terms
theorem substitutionProof3385 : IsMapEvaluation generatorImages reduction3385.relations [0,0,0,0,0,0,422] reduction3385.output := by lin_cert using reduction3385.terms
def map_22_144 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image3481 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3481 : InImage map_22_144 image3481 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3481 : Bundle := named_bundle% "RealMapCertificates/relations/basis3481.json"
theorem reductionProof3481 : EqualModuloRelations reduction3481.relations reduction3481.input reduction3481.output := by lin_cert using reduction3481.terms
theorem substitutionProof3481 : IsMapEvaluation generatorImages reduction3481.relations [499] reduction3481.output := by lin_cert using reduction3481.terms
def image3482 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3482 : InImage map_22_144 image3482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3482 : Bundle := named_bundle% "RealMapCertificates/relations/basis3482.json"
theorem reductionProof3482 : EqualModuloRelations reduction3482.relations reduction3482.input reduction3482.output := by lin_cert using reduction3482.terms
theorem substitutionProof3482 : IsMapEvaluation generatorImages reduction3482.relations [9,13,13,101] reduction3482.output := by lin_cert using reduction3482.terms
def image3483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3483 : InImage map_22_144 image3483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3483 : Bundle := named_bundle% "RealMapCertificates/relations/basis3483.json"
theorem reductionProof3483 : EqualModuloRelations reduction3483.relations reduction3483.input reduction3483.output := by lin_cert using reduction3483.terms
theorem substitutionProof3483 : IsMapEvaluation generatorImages reduction3483.relations [0,8,292] reduction3483.output := by lin_cert using reduction3483.terms
def map_22_146 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3625 : InImage map_22_146 image3625 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3625 : Bundle := named_bundle% "RealMapCertificates/relations/basis3625.json"
theorem reductionProof3625 : EqualModuloRelations reduction3625.relations reduction3625.input reduction3625.output := by lin_cert using reduction3625.terms
theorem substitutionProof3625 : IsMapEvaluation generatorImages reduction3625.relations [517] reduction3625.output := by lin_cert using reduction3625.terms
def image3626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3626 : InImage map_22_146 image3626 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3626 : Bundle := named_bundle% "RealMapCertificates/relations/basis3626.json"
theorem reductionProof3626 : EqualModuloRelations reduction3626.relations reduction3626.input reduction3626.output := by lin_cert using reduction3626.terms
theorem substitutionProof3626 : IsMapEvaluation generatorImages reduction3626.relations [13,13,168] reduction3626.output := by lin_cert using reduction3626.terms
def image3627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3627 : InImage map_22_146 image3627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3627 : Bundle := named_bundle% "RealMapCertificates/relations/basis3627.json"
theorem reductionProof3627 : EqualModuloRelations reduction3627.relations reduction3627.input reduction3627.output := by lin_cert using reduction3627.terms
theorem substitutionProof3627 : IsMapEvaluation generatorImages reduction3627.relations [8,316] reduction3627.output := by lin_cert using reduction3627.terms
def image3628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3628 : InImage map_22_146 image3628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3628 : Bundle := named_bundle% "RealMapCertificates/relations/basis3628.json"
theorem reductionProof3628 : EqualModuloRelations reduction3628.relations reduction3628.input reduction3628.output := by lin_cert using reduction3628.terms
theorem substitutionProof3628 : IsMapEvaluation generatorImages reduction3628.relations [0,0,0,0,0,0,0,0,440] reduction3628.output := by lin_cert using reduction3628.terms
def map_22_147 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3744 : InImage map_22_147 image3744 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3744 : Bundle := named_bundle% "RealMapCertificates/relations/basis3744.json"
theorem reductionProof3744 : EqualModuloRelations reduction3744.relations reduction3744.input reduction3744.output := by lin_cert using reduction3744.terms
theorem substitutionProof3744 : IsMapEvaluation generatorImages reduction3744.relations [17,255] reduction3744.output := by lin_cert using reduction3744.terms
def image3745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3745 : InImage map_22_147 image3745 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3745 : Bundle := named_bundle% "RealMapCertificates/relations/basis3745.json"
theorem reductionProof3745 : EqualModuloRelations reduction3745.relations reduction3745.input reduction3745.output := by lin_cert using reduction3745.terms
theorem substitutionProof3745 : IsMapEvaluation generatorImages reduction3745.relations [13,13,13,101] reduction3745.output := by lin_cert using reduction3745.terms
def image3746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3746 : InImage map_22_147 image3746 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3746 : Bundle := named_bundle% "RealMapCertificates/relations/basis3746.json"
theorem reductionProof3746 : EqualModuloRelations reduction3746.relations reduction3746.input reduction3746.output := by lin_cert using reduction3746.terms
theorem substitutionProof3746 : IsMapEvaluation generatorImages reduction3746.relations [0,9,292] reduction3746.output := by lin_cert using reduction3746.terms
def image3747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3747 : InImage map_22_147 image3747 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3747 : Bundle := named_bundle% "RealMapCertificates/relations/basis3747.json"
theorem reductionProof3747 : EqualModuloRelations reduction3747.relations reduction3747.input reduction3747.output := by lin_cert using reduction3747.terms
theorem substitutionProof3747 : IsMapEvaluation generatorImages reduction3747.relations [0,0,0,0,0,0,0,0,449] reduction3747.output := by lin_cert using reduction3747.terms
def map_22_148 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3814 : InImage map_22_148 image3814 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3814 : Bundle := named_bundle% "RealMapCertificates/relations/basis3814.json"
theorem reductionProof3814 : EqualModuloRelations reduction3814.relations reduction3814.input reduction3814.output := by lin_cert using reduction3814.terms
theorem substitutionProof3814 : IsMapEvaluation generatorImages reduction3814.relations [0,530] reduction3814.output := by lin_cert using reduction3814.terms
def image3815 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3815 : InImage map_22_148 image3815 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3815 : Bundle := named_bundle% "RealMapCertificates/relations/basis3815.json"
theorem reductionProof3815 : EqualModuloRelations reduction3815.relations reduction3815.input reduction3815.output := by lin_cert using reduction3815.terms
theorem substitutionProof3815 : IsMapEvaluation generatorImages reduction3815.relations [0,0,0,0,500] reduction3815.output := by lin_cert using reduction3815.terms
def map_22_149 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3899 : InImage map_22_149 image3899 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3899 : Bundle := named_bundle% "RealMapCertificates/relations/basis3899.json"
theorem reductionProof3899 : EqualModuloRelations reduction3899.relations reduction3899.input reduction3899.output := by lin_cert using reduction3899.terms
theorem substitutionProof3899 : IsMapEvaluation generatorImages reduction3899.relations [8,347] reduction3899.output := by lin_cert using reduction3899.terms
def image3900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3900 : InImage map_22_149 image3900 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3900 : Bundle := named_bundle% "RealMapCertificates/relations/basis3900.json"
theorem reductionProof3900 : EqualModuloRelations reduction3900.relations reduction3900.input reduction3900.output := by lin_cert using reduction3900.terms
theorem substitutionProof3900 : IsMapEvaluation generatorImages reduction3900.relations [8,346] reduction3900.output := by lin_cert using reduction3900.terms
def image3901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3901 : InImage map_22_149 image3901 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3901 : Bundle := named_bundle% "RealMapCertificates/relations/basis3901.json"
theorem reductionProof3901 : EqualModuloRelations reduction3901.relations reduction3901.input reduction3901.output := by lin_cert using reduction3901.terms
theorem substitutionProof3901 : IsMapEvaluation generatorImages reduction3901.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction3901.output := by lin_cert using reduction3901.terms
def map_22_150 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4004 : InImage map_22_150 image4004 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4004 : Bundle := named_bundle% "RealMapCertificates/relations/basis4004.json"
theorem reductionProof4004 : EqualModuloRelations reduction4004.relations reduction4004.input reduction4004.output := by lin_cert using reduction4004.terms
theorem substitutionProof4004 : IsMapEvaluation generatorImages reduction4004.relations [8,17,188] reduction4004.output := by lin_cert using reduction4004.terms
def image4005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4005 : InImage map_22_150 image4005 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4005 : Bundle := named_bundle% "RealMapCertificates/relations/basis4005.json"
theorem reductionProof4005 : EqualModuloRelations reduction4005.relations reduction4005.input reduction4005.output := by lin_cert using reduction4005.terms
theorem substitutionProof4005 : IsMapEvaluation generatorImages reduction4005.relations [0,13,292] reduction4005.output := by lin_cert using reduction4005.terms
def map_22_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4099 : InImage map_22_151 image4099 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4099 : Bundle := named_bundle% "RealMapCertificates/relations/basis4099.json"
theorem reductionProof4099 : EqualModuloRelations reduction4099.relations reduction4099.input reduction4099.output := by lin_cert using reduction4099.terms
theorem substitutionProof4099 : IsMapEvaluation generatorImages reduction4099.relations [0,17,267] reduction4099.output := by lin_cert using reduction4099.terms
def map_22_152 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4175 : InImage map_22_152 image4175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4175 : Bundle := named_bundle% "RealMapCertificates/relations/basis4175.json"
theorem reductionProof4175 : EqualModuloRelations reduction4175.relations reduction4175.input reduction4175.output := by lin_cert using reduction4175.terms
theorem substitutionProof4175 : IsMapEvaluation generatorImages reduction4175.relations [9,346] reduction4175.output := by lin_cert using reduction4175.terms
def image4176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4176 : InImage map_22_152 image4176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4176 : Bundle := named_bundle% "RealMapCertificates/relations/basis4176.json"
theorem reductionProof4176 : EqualModuloRelations reduction4176.relations reduction4176.input reduction4176.output := by lin_cert using reduction4176.terms
theorem substitutionProof4176 : IsMapEvaluation generatorImages reduction4176.relations [8,382] reduction4176.output := by lin_cert using reduction4176.terms
def image4177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4177 : InImage map_22_152 image4177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4177 : Bundle := named_bundle% "RealMapCertificates/relations/basis4177.json"
theorem reductionProof4177 : EqualModuloRelations reduction4177.relations reduction4177.input reduction4177.output := by lin_cert using reduction4177.terms
theorem substitutionProof4177 : IsMapEvaluation generatorImages reduction4177.relations [2,537] reduction4177.output := by lin_cert using reduction4177.terms
def image4178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4178 : InImage map_22_152 image4178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4178 : Bundle := named_bundle% "RealMapCertificates/relations/basis4178.json"
theorem reductionProof4178 : EqualModuloRelations reduction4178.relations reduction4178.input reduction4178.output := by lin_cert using reduction4178.terms
theorem substitutionProof4178 : IsMapEvaluation generatorImages reduction4178.relations [1,42,187] reduction4178.output := by lin_cert using reduction4178.terms
def map_22_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4284 : InImage map_22_153 image4284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4284 : Bundle := named_bundle% "RealMapCertificates/relations/basis4284.json"
theorem reductionProof4284 : EqualModuloRelations reduction4284.relations reduction4284.input reduction4284.output := by lin_cert using reduction4284.terms
theorem substitutionProof4284 : IsMapEvaluation generatorImages reduction4284.relations [8,20,188] reduction4284.output := by lin_cert using reduction4284.terms
def map_22_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4346 : InImage map_22_154 image4346 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4346 : Bundle := named_bundle% "RealMapCertificates/relations/basis4346.json"
theorem reductionProof4346 : EqualModuloRelations reduction4346.relations reduction4346.input reduction4346.output := by lin_cert using reduction4346.terms
theorem substitutionProof4346 : IsMapEvaluation generatorImages reduction4346.relations [585] reduction4346.output := by lin_cert using reduction4346.terms
def image4347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4347 : InImage map_22_154 image4347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4347 : Bundle := named_bundle% "RealMapCertificates/relations/basis4347.json"
theorem reductionProof4347 : EqualModuloRelations reduction4347.relations reduction4347.input reduction4347.output := by lin_cert using reduction4347.terms
theorem substitutionProof4347 : IsMapEvaluation generatorImages reduction4347.relations [13,13,23,83] reduction4347.output := by lin_cert using reduction4347.terms
def map_22_155 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4431 : InImage map_22_155 image4431 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4431 : Bundle := named_bundle% "RealMapCertificates/relations/basis4431.json"
theorem reductionProof4431 : EqualModuloRelations reduction4431.relations reduction4431.input reduction4431.output := by lin_cert using reduction4431.terms
theorem substitutionProof4431 : IsMapEvaluation generatorImages reduction4431.relations [13,346] reduction4431.output := by lin_cert using reduction4431.terms
def image4432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4432 : InImage map_22_155 image4432 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4432 : Bundle := named_bundle% "RealMapCertificates/relations/basis4432.json"
theorem reductionProof4432 : EqualModuloRelations reduction4432.relations reduction4432.input reduction4432.output := by lin_cert using reduction4432.terms
theorem substitutionProof4432 : IsMapEvaluation generatorImages reduction4432.relations [8,16,209] reduction4432.output := by lin_cert using reduction4432.terms
def image4433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4433 : InImage map_22_155 image4433 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4433 : Bundle := named_bundle% "RealMapCertificates/relations/basis4433.json"
theorem reductionProof4433 : EqualModuloRelations reduction4433.relations reduction4433.input reduction4433.output := by lin_cert using reduction4433.terms
theorem substitutionProof4433 : IsMapEvaluation generatorImages reduction4433.relations [0,586] reduction4433.output := by lin_cert using reduction4433.terms
def image4434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4434 : InImage map_22_155 image4434 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4434 : Bundle := named_bundle% "RealMapCertificates/relations/basis4434.json"
theorem reductionProof4434 : EqualModuloRelations reduction4434.relations reduction4434.input reduction4434.output := by lin_cert using reduction4434.terms
theorem substitutionProof4434 : IsMapEvaluation generatorImages reduction4434.relations [0,0,0,0,69,138] reduction4434.output := by lin_cert using reduction4434.terms
end RealMapCertificates
