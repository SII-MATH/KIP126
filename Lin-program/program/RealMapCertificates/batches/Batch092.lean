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
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 69 => []
  | 75 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 164 => []
  | 181 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 235 => []
  | 250 => []
  | 261 => []
  | 266 => []
  | 267 => []
  | 275 => []
  | 278 => []
  | 279 => []
  | 286 => []
  | 303 => []
  | 333 => []
  | 475 => []
  | 538 => []
  | 575 => []
  | 581 => []
  | 582 => []
  | 586 => []
  | 608 => []
  | 610 => []
  | 613 => []
  | 626 => []
  | 627 => []
  | 628 => []
  | 640 => []
  | 643 => []
  | 644 => []
  | 645 => []
  | 646 => []
  | 655 => []
  | 666 => []
  | 690 => []
  | 692 => []
  | 693 => []
  | 702 => []
  | 703 => []
  | 706 => []
  | 717 => []
  | 729 => []
  | 737 => []
  | 739 => []
  | 743 => []
  | 760 => []
  | 761 => []
  | 762 => []
  | 780 => []
  | 785 => []
  | 833 => []
  | 834 => []
  | 836 => []
  | 837 => []
  | 838 => []
  | 876 => []
  | 877 => []
  | 891 => []
  | 908 => []
  | 930 => []
  | 943 => []
  | 959 => []
  | 980 => []
  | _ => []
def map_22_156 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4534 : InImage map_22_156 image4534 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4534 : Bundle := named_bundle% "RealMapCertificates/relations/basis4534.json"
theorem reductionProof4534 : EqualModuloRelations reduction4534.relations reduction4534.input reduction4534.output := by lin_cert using reduction4534.terms
theorem substitutionProof4534 : IsMapEvaluation generatorImages reduction4534.relations [8,8,267] reduction4534.output := by lin_cert using reduction4534.terms
def image4535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4535 : InImage map_22_156 image4535 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4535 : Bundle := named_bundle% "RealMapCertificates/relations/basis4535.json"
theorem reductionProof4535 : EqualModuloRelations reduction4535.relations reduction4535.input reduction4535.output := by lin_cert using reduction4535.terms
theorem substitutionProof4535 : IsMapEvaluation generatorImages reduction4535.relations [2,2,538] reduction4535.output := by lin_cert using reduction4535.terms
def image4536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4536 : InImage map_22_156 image4536 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4536 : Bundle := named_bundle% "RealMapCertificates/relations/basis4536.json"
theorem reductionProof4536 : EqualModuloRelations reduction4536.relations reduction4536.input reduction4536.output := by lin_cert using reduction4536.terms
theorem substitutionProof4536 : IsMapEvaluation generatorImages reduction4536.relations [1,586] reduction4536.output := by lin_cert using reduction4536.terms
def map_22_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4614 : InImage map_22_157 image4614 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4614 : Bundle := named_bundle% "RealMapCertificates/relations/basis4614.json"
theorem reductionProof4614 : EqualModuloRelations reduction4614.relations reduction4614.input reduction4614.output := by lin_cert using reduction4614.terms
theorem substitutionProof4614 : IsMapEvaluation generatorImages reduction4614.relations [0,0,0,18,278] reduction4614.output := by lin_cert using reduction4614.terms
def map_22_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4701 : InImage map_22_158 image4701 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4701 : Bundle := named_bundle% "RealMapCertificates/relations/basis4701.json"
theorem reductionProof4701 : EqualModuloRelations reduction4701.relations reduction4701.input reduction4701.output := by lin_cert using reduction4701.terms
theorem substitutionProof4701 : IsMapEvaluation generatorImages reduction4701.relations [626] reduction4701.output := by lin_cert using reduction4701.terms
def image4702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4702 : InImage map_22_158 image4702 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4702 : Bundle := named_bundle% "RealMapCertificates/relations/basis4702.json"
theorem reductionProof4702 : EqualModuloRelations reduction4702.relations reduction4702.input reduction4702.output := by lin_cert using reduction4702.terms
theorem substitutionProof4702 : IsMapEvaluation generatorImages reduction4702.relations [8,8,279] reduction4702.output := by lin_cert using reduction4702.terms
def image4703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4703 : InImage map_22_158 image4703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4703 : Bundle := named_bundle% "RealMapCertificates/relations/basis4703.json"
theorem reductionProof4703 : EqualModuloRelations reduction4703.relations reduction4703.input reduction4703.output := by lin_cert using reduction4703.terms
theorem substitutionProof4703 : IsMapEvaluation generatorImages reduction4703.relations [0,0,608] reduction4703.output := by lin_cert using reduction4703.terms
def map_22_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4803 : InImage map_22_159 image4803 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4803 : Bundle := named_bundle% "RealMapCertificates/relations/basis4803.json"
theorem reductionProof4803 : EqualModuloRelations reduction4803.relations reduction4803.input reduction4803.output := by lin_cert using reduction4803.terms
theorem substitutionProof4803 : IsMapEvaluation generatorImages reduction4803.relations [8,9,267] reduction4803.output := by lin_cert using reduction4803.terms
def map_22_160 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4867 : InImage map_22_160 image4867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4867 : Bundle := named_bundle% "RealMapCertificates/relations/basis4867.json"
theorem reductionProof4867 : EqualModuloRelations reduction4867.relations reduction4867.input reduction4867.output := by lin_cert using reduction4867.terms
theorem substitutionProof4867 : IsMapEvaluation generatorImages reduction4867.relations [643] reduction4867.output := by lin_cert using reduction4867.terms
def image4868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4868 : InImage map_22_160 image4868 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4868 : Bundle := named_bundle% "RealMapCertificates/relations/basis4868.json"
theorem reductionProof4868 : EqualModuloRelations reduction4868.relations reduction4868.input reduction4868.output := by lin_cert using reduction4868.terms
theorem substitutionProof4868 : IsMapEvaluation generatorImages reduction4868.relations [9,13,13,13,75] reduction4868.output := by lin_cert using reduction4868.terms
def image4869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4869 : InImage map_22_160 image4869 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4869 : Bundle := named_bundle% "RealMapCertificates/relations/basis4869.json"
theorem reductionProof4869 : EqualModuloRelations reduction4869.relations reduction4869.input reduction4869.output := by lin_cert using reduction4869.terms
theorem substitutionProof4869 : IsMapEvaluation generatorImages reduction4869.relations [0,0,627] reduction4869.output := by lin_cert using reduction4869.terms
def map_22_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4962 : InImage map_22_161 image4962 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4962 : Bundle := named_bundle% "RealMapCertificates/relations/basis4962.json"
theorem reductionProof4962 : EqualModuloRelations reduction4962.relations reduction4962.input reduction4962.output := by lin_cert using reduction4962.terms
theorem substitutionProof4962 : IsMapEvaluation generatorImages reduction4962.relations [8,8,8,209] reduction4962.output := by lin_cert using reduction4962.terms
def image4963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4963 : InImage map_22_161 image4963 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4963 : Bundle := named_bundle% "RealMapCertificates/relations/basis4963.json"
theorem reductionProof4963 : EqualModuloRelations reduction4963.relations reduction4963.input reduction4963.output := by lin_cert using reduction4963.terms
theorem substitutionProof4963 : IsMapEvaluation generatorImages reduction4963.relations [0,645] reduction4963.output := by lin_cert using reduction4963.terms
def image4964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4964 : InImage map_22_161 image4964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4964 : Bundle := named_bundle% "RealMapCertificates/relations/basis4964.json"
theorem reductionProof4964 : EqualModuloRelations reduction4964.relations reduction4964.input reduction4964.output := by lin_cert using reduction4964.terms
theorem substitutionProof4964 : IsMapEvaluation generatorImages reduction4964.relations [0,644] reduction4964.output := by lin_cert using reduction4964.terms
def map_22_162 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5072 : InImage map_22_162 image5072 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5072 : Bundle := named_bundle% "RealMapCertificates/relations/basis5072.json"
theorem reductionProof5072 : EqualModuloRelations reduction5072.relations reduction5072.input reduction5072.output := by lin_cert using reduction5072.terms
theorem substitutionProof5072 : IsMapEvaluation generatorImages reduction5072.relations [23,303] reduction5072.output := by lin_cert using reduction5072.terms
def image5073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5073 : InImage map_22_162 image5073 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5073 : Bundle := named_bundle% "RealMapCertificates/relations/basis5073.json"
theorem reductionProof5073 : EqualModuloRelations reduction5073.relations reduction5073.input reduction5073.output := by lin_cert using reduction5073.terms
theorem substitutionProof5073 : IsMapEvaluation generatorImages reduction5073.relations [8,13,267] reduction5073.output := by lin_cert using reduction5073.terms
def image5074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5074 : InImage map_22_162 image5074 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5074 : Bundle := named_bundle% "RealMapCertificates/relations/basis5074.json"
theorem reductionProof5074 : EqualModuloRelations reduction5074.relations reduction5074.input reduction5074.output := by lin_cert using reduction5074.terms
theorem substitutionProof5074 : IsMapEvaluation generatorImages reduction5074.relations [1,1,627] reduction5074.output := by lin_cert using reduction5074.terms
def image5075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5075 : InImage map_22_162 image5075 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5075 : Bundle := named_bundle% "RealMapCertificates/relations/basis5075.json"
theorem reductionProof5075 : EqualModuloRelations reduction5075.relations reduction5075.input reduction5075.output := by lin_cert using reduction5075.terms
theorem substitutionProof5075 : IsMapEvaluation generatorImages reduction5075.relations [0,0,646] reduction5075.output := by lin_cert using reduction5075.terms
def image5076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5076 : InImage map_22_162 image5076 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5076 : Bundle := named_bundle% "RealMapCertificates/relations/basis5076.json"
theorem reductionProof5076 : EqualModuloRelations reduction5076.relations reduction5076.input reduction5076.output := by lin_cert using reduction5076.terms
theorem substitutionProof5076 : IsMapEvaluation generatorImages reduction5076.relations [0,0,0,0,0,0,0,0,0,0,575] reduction5076.output := by lin_cert using reduction5076.terms
def map_22_163 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5158 : InImage map_22_163 image5158 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5158 : Bundle := named_bundle% "RealMapCertificates/relations/basis5158.json"
theorem reductionProof5158 : EqualModuloRelations reduction5158.relations reduction5158.input reduction5158.output := by lin_cert using reduction5158.terms
theorem substitutionProof5158 : IsMapEvaluation generatorImages reduction5158.relations [13,13,13,13,75] reduction5158.output := by lin_cert using reduction5158.terms
def image5159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5159 : InImage map_22_163 image5159 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5159 : Bundle := named_bundle% "RealMapCertificates/relations/basis5159.json"
theorem reductionProof5159 : EqualModuloRelations reduction5159.relations reduction5159.input reduction5159.output := by lin_cert using reduction5159.terms
theorem substitutionProof5159 : IsMapEvaluation generatorImages reduction5159.relations [0,666] reduction5159.output := by lin_cert using reduction5159.terms
def image5160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5160 : InImage map_22_163 image5160 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5160 : Bundle := named_bundle% "RealMapCertificates/relations/basis5160.json"
theorem reductionProof5160 : EqualModuloRelations reduction5160.relations reduction5160.input reduction5160.output := by lin_cert using reduction5160.terms
theorem substitutionProof5160 : IsMapEvaluation generatorImages reduction5160.relations [0,0,655] reduction5160.output := by lin_cert using reduction5160.terms
def map_22_164 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5255 : InImage map_22_164 image5255 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5255 : Bundle := named_bundle% "RealMapCertificates/relations/basis5255.json"
theorem reductionProof5255 : EqualModuloRelations reduction5255.relations reduction5255.input reduction5255.output := by lin_cert using reduction5255.terms
theorem substitutionProof5255 : IsMapEvaluation generatorImages reduction5255.relations [8,8,9,209] reduction5255.output := by lin_cert using reduction5255.terms
def image5256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5256 : InImage map_22_164 image5256 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5256 : Bundle := named_bundle% "RealMapCertificates/relations/basis5256.json"
theorem reductionProof5256 : EqualModuloRelations reduction5256.relations reduction5256.input reduction5256.output := by lin_cert using reduction5256.terms
theorem substitutionProof5256 : IsMapEvaluation generatorImages reduction5256.relations [1,666] reduction5256.output := by lin_cert using reduction5256.terms
def map_22_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5375 : InImage map_22_165 image5375 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5375 : Bundle := named_bundle% "RealMapCertificates/relations/basis5375.json"
theorem reductionProof5375 : EqualModuloRelations reduction5375.relations reduction5375.input reduction5375.output := by lin_cert using reduction5375.terms
theorem substitutionProof5375 : IsMapEvaluation generatorImages reduction5375.relations [64,187] reduction5375.output := by lin_cert using reduction5375.terms
def image5376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5376 : InImage map_22_165 image5376 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5376 : Bundle := named_bundle% "RealMapCertificates/relations/basis5376.json"
theorem reductionProof5376 : EqualModuloRelations reduction5376.relations reduction5376.input reduction5376.output := by lin_cert using reduction5376.terms
theorem substitutionProof5376 : IsMapEvaluation generatorImages reduction5376.relations [9,13,267] reduction5376.output := by lin_cert using reduction5376.terms
def image5377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5377 : InImage map_22_165 image5377 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5377 : Bundle := named_bundle% "RealMapCertificates/relations/basis5377.json"
theorem reductionProof5377 : EqualModuloRelations reduction5377.relations reduction5377.input reduction5377.output := by lin_cert using reduction5377.terms
theorem substitutionProof5377 : IsMapEvaluation generatorImages reduction5377.relations [0,2,646] reduction5377.output := by lin_cert using reduction5377.terms
def map_22_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5466 : InImage map_22_166 image5466 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5466 : Bundle := named_bundle% "RealMapCertificates/relations/basis5466.json"
theorem reductionProof5466 : EqualModuloRelations reduction5466.relations reduction5466.input reduction5466.output := by lin_cert using reduction5466.terms
theorem substitutionProof5466 : IsMapEvaluation generatorImages reduction5466.relations [69,185] reduction5466.output := by lin_cert using reduction5466.terms
def image5467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5467 : InImage map_22_166 image5467 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5467 : Bundle := named_bundle% "RealMapCertificates/relations/basis5467.json"
theorem reductionProof5467 : EqualModuloRelations reduction5467.relations reduction5467.input reduction5467.output := by lin_cert using reduction5467.terms
theorem substitutionProof5467 : IsMapEvaluation generatorImages reduction5467.relations [0,702] reduction5467.output := by lin_cert using reduction5467.terms
def image5468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5468 : InImage map_22_166 image5468 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5468 : Bundle := named_bundle% "RealMapCertificates/relations/basis5468.json"
theorem reductionProof5468 : EqualModuloRelations reduction5468.relations reduction5468.input reduction5468.output := by lin_cert using reduction5468.terms
theorem substitutionProof5468 : IsMapEvaluation generatorImages reduction5468.relations [0,64,188] reduction5468.output := by lin_cert using reduction5468.terms
def image5469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5469 : InImage map_22_166 image5469 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5469 : Bundle := named_bundle% "RealMapCertificates/relations/basis5469.json"
theorem reductionProof5469 : EqualModuloRelations reduction5469.relations reduction5469.input reduction5469.output := by lin_cert using reduction5469.terms
theorem substitutionProof5469 : IsMapEvaluation generatorImages reduction5469.relations [0,0,690] reduction5469.output := by lin_cert using reduction5469.terms
def map_22_167 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5577 : InImage map_22_167 image5577 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5577 : Bundle := named_bundle% "RealMapCertificates/relations/basis5577.json"
theorem reductionProof5577 : EqualModuloRelations reduction5577.relations reduction5577.input reduction5577.output := by lin_cert using reduction5577.terms
theorem substitutionProof5577 : IsMapEvaluation generatorImages reduction5577.relations [8,8,13,209] reduction5577.output := by lin_cert using reduction5577.terms
def image5578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5578 : InImage map_22_167 image5578 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5578 : Bundle := named_bundle% "RealMapCertificates/relations/basis5578.json"
theorem reductionProof5578 : EqualModuloRelations reduction5578.relations reduction5578.input reduction5578.output := by lin_cert using reduction5578.terms
theorem substitutionProof5578 : IsMapEvaluation generatorImages reduction5578.relations [0,3,627] reduction5578.output := by lin_cert using reduction5578.terms
def image5579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5579 : InImage map_22_167 image5579 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5579 : Bundle := named_bundle% "RealMapCertificates/relations/basis5579.json"
theorem reductionProof5579 : EqualModuloRelations reduction5579.relations reduction5579.input reduction5579.output := by lin_cert using reduction5579.terms
theorem substitutionProof5579 : IsMapEvaluation generatorImages reduction5579.relations [0,0,703] reduction5579.output := by lin_cert using reduction5579.terms
def map_22_168 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image5693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5693 : InImage map_22_168 image5693 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction5693 : Bundle := named_bundle% "RealMapCertificates/relations/basis5693.json"
theorem reductionProof5693 : EqualModuloRelations reduction5693.relations reduction5693.input reduction5693.output := by lin_cert using reduction5693.terms
theorem substitutionProof5693 : IsMapEvaluation generatorImages reduction5693.relations [737] reduction5693.output := by lin_cert using reduction5693.terms
def image5694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5694 : InImage map_22_168 image5694 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction5694 : Bundle := named_bundle% "RealMapCertificates/relations/basis5694.json"
theorem reductionProof5694 : EqualModuloRelations reduction5694.relations reduction5694.input reduction5694.output := by lin_cert using reduction5694.terms
theorem substitutionProof5694 : IsMapEvaluation generatorImages reduction5694.relations [64,201] reduction5694.output := by lin_cert using reduction5694.terms
def image5695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5695 : InImage map_22_168 image5695 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction5695 : Bundle := named_bundle% "RealMapCertificates/relations/basis5695.json"
theorem reductionProof5695 : EqualModuloRelations reduction5695.relations reduction5695.input reduction5695.output := by lin_cert using reduction5695.terms
theorem substitutionProof5695 : IsMapEvaluation generatorImages reduction5695.relations [13,13,267] reduction5695.output := by lin_cert using reduction5695.terms
def image5696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5696 : InImage map_22_168 image5696 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction5696 : Bundle := named_bundle% "RealMapCertificates/relations/basis5696.json"
theorem reductionProof5696 : EqualModuloRelations reduction5696.relations reduction5696.input reduction5696.output := by lin_cert using reduction5696.terms
theorem substitutionProof5696 : IsMapEvaluation generatorImages reduction5696.relations [9,13,286] reduction5696.output := by lin_cert using reduction5696.terms
def image5697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5697 : InImage map_22_168 image5697 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction5697 : Bundle := named_bundle% "RealMapCertificates/relations/basis5697.json"
theorem reductionProof5697 : EqualModuloRelations reduction5697.relations reduction5697.input reduction5697.output := by lin_cert using reduction5697.terms
theorem substitutionProof5697 : IsMapEvaluation generatorImages reduction5697.relations [0,0,717] reduction5697.output := by lin_cert using reduction5697.terms
def image5698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5698 : InImage map_22_168 image5698 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction5698 : Bundle := named_bundle% "RealMapCertificates/relations/basis5698.json"
theorem reductionProof5698 : EqualModuloRelations reduction5698.relations reduction5698.input reduction5698.output := by lin_cert using reduction5698.terms
theorem substitutionProof5698 : IsMapEvaluation generatorImages reduction5698.relations [0,0,0,706] reduction5698.output := by lin_cert using reduction5698.terms
def map_22_169 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5798 : InImage map_22_169 image5798 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5798 : Bundle := named_bundle% "RealMapCertificates/relations/basis5798.json"
theorem reductionProof5798 : EqualModuloRelations reduction5798.relations reduction5798.input reduction5798.output := by lin_cert using reduction5798.terms
theorem substitutionProof5798 : IsMapEvaluation generatorImages reduction5798.relations [13,13,13,164] reduction5798.output := by lin_cert using reduction5798.terms
def image5799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5799 : InImage map_22_169 image5799 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5799 : Bundle := named_bundle% "RealMapCertificates/relations/basis5799.json"
theorem reductionProof5799 : EqualModuloRelations reduction5799.relations reduction5799.input reduction5799.output := by lin_cert using reduction5799.terms
theorem substitutionProof5799 : IsMapEvaluation generatorImages reduction5799.relations [8,69,138] reduction5799.output := by lin_cert using reduction5799.terms
def image5800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5800 : InImage map_22_169 image5800 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5800 : Bundle := named_bundle% "RealMapCertificates/relations/basis5800.json"
theorem reductionProof5800 : EqualModuloRelations reduction5800.relations reduction5800.input reduction5800.output := by lin_cert using reduction5800.terms
theorem substitutionProof5800 : IsMapEvaluation generatorImages reduction5800.relations [0,3,646] reduction5800.output := by lin_cert using reduction5800.terms
def image5801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5801 : InImage map_22_169 image5801 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5801 : Bundle := named_bundle% "RealMapCertificates/relations/basis5801.json"
theorem reductionProof5801 : EqualModuloRelations reduction5801.relations reduction5801.input reduction5801.output := by lin_cert using reduction5801.terms
theorem substitutionProof5801 : IsMapEvaluation generatorImages reduction5801.relations [0,2,690] reduction5801.output := by lin_cert using reduction5801.terms
def image5802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5802 : InImage map_22_169 image5802 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5802 : Bundle := named_bundle% "RealMapCertificates/relations/basis5802.json"
theorem reductionProof5802 : EqualModuloRelations reduction5802.relations reduction5802.input reduction5802.output := by lin_cert using reduction5802.terms
theorem substitutionProof5802 : IsMapEvaluation generatorImages reduction5802.relations [0,0,0,0,0,693] reduction5802.output := by lin_cert using reduction5802.terms
def map_22_170 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5909 : InImage map_22_170 image5909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5909 : Bundle := named_bundle% "RealMapCertificates/relations/basis5909.json"
theorem reductionProof5909 : EqualModuloRelations reduction5909.relations reduction5909.input reduction5909.output := by lin_cert using reduction5909.terms
theorem substitutionProof5909 : IsMapEvaluation generatorImages reduction5909.relations [8,9,13,209] reduction5909.output := by lin_cert using reduction5909.terms
def image5910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5910 : InImage map_22_170 image5910 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5910 : Bundle := named_bundle% "RealMapCertificates/relations/basis5910.json"
theorem reductionProof5910 : EqualModuloRelations reduction5910.relations reduction5910.input reduction5910.output := by lin_cert using reduction5910.terms
theorem substitutionProof5910 : IsMapEvaluation generatorImages reduction5910.relations [0,0,739] reduction5910.output := by lin_cert using reduction5910.terms
def map_22_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6041 : InImage map_22_171 image6041 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6041 : Bundle := named_bundle% "RealMapCertificates/relations/basis6041.json"
theorem reductionProof6041 : EqualModuloRelations reduction6041.relations reduction6041.input reduction6041.output := by lin_cert using reduction6041.terms
theorem substitutionProof6041 : IsMapEvaluation generatorImages reduction6041.relations [64,212] reduction6041.output := by lin_cert using reduction6041.terms
def image6042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6042 : InImage map_22_171 image6042 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6042 : Bundle := named_bundle% "RealMapCertificates/relations/basis6042.json"
theorem reductionProof6042 : EqualModuloRelations reduction6042.relations reduction6042.input reduction6042.output := by lin_cert using reduction6042.terms
theorem substitutionProof6042 : IsMapEvaluation generatorImages reduction6042.relations [13,13,286] reduction6042.output := by lin_cert using reduction6042.terms
def map_22_172 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6132 : InImage map_22_172 image6132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6132 : Bundle := named_bundle% "RealMapCertificates/relations/basis6132.json"
theorem reductionProof6132 : EqualModuloRelations reduction6132.relations reduction6132.input reduction6132.output := by lin_cert using reduction6132.terms
theorem substitutionProof6132 : IsMapEvaluation generatorImages reduction6132.relations [785] reduction6132.output := by lin_cert using reduction6132.terms
def image6133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6133 : InImage map_22_172 image6133 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6133 : Bundle := named_bundle% "RealMapCertificates/relations/basis6133.json"
theorem reductionProof6133 : EqualModuloRelations reduction6133.relations reduction6133.input reduction6133.output := by lin_cert using reduction6133.terms
theorem substitutionProof6133 : IsMapEvaluation generatorImages reduction6133.relations [8,69,147] reduction6133.output := by lin_cert using reduction6133.terms
def image6134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6134 : InImage map_22_172 image6134 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6134 : Bundle := named_bundle% "RealMapCertificates/relations/basis6134.json"
theorem reductionProof6134 : EqualModuloRelations reduction6134.relations reduction6134.input reduction6134.output := by lin_cert using reduction6134.terms
theorem substitutionProof6134 : IsMapEvaluation generatorImages reduction6134.relations [0,8,582] reduction6134.output := by lin_cert using reduction6134.terms
def image6135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6135 : InImage map_22_172 image6135 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6135 : Bundle := named_bundle% "RealMapCertificates/relations/basis6135.json"
theorem reductionProof6135 : EqualModuloRelations reduction6135.relations reduction6135.input reduction6135.output := by lin_cert using reduction6135.terms
theorem substitutionProof6135 : IsMapEvaluation generatorImages reduction6135.relations [0,0,64,209] reduction6135.output := by lin_cert using reduction6135.terms
def map_22_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6244 : InImage map_22_173 image6244 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6244 : Bundle := named_bundle% "RealMapCertificates/relations/basis6244.json"
theorem reductionProof6244 : EqualModuloRelations reduction6244.relations reduction6244.input reduction6244.output := by lin_cert using reduction6244.terms
theorem substitutionProof6244 : IsMapEvaluation generatorImages reduction6244.relations [8,13,13,209] reduction6244.output := by lin_cert using reduction6244.terms
def image6245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6245 : InImage map_22_173 image6245 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6245 : Bundle := named_bundle% "RealMapCertificates/relations/basis6245.json"
theorem reductionProof6245 : EqualModuloRelations reduction6245.relations reduction6245.input reduction6245.output := by lin_cert using reduction6245.terms
theorem substitutionProof6245 : IsMapEvaluation generatorImages reduction6245.relations [0,0,17,475] reduction6245.output := by lin_cert using reduction6245.terms
def image6246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6246 : InImage map_22_173 image6246 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6246 : Bundle := named_bundle% "RealMapCertificates/relations/basis6246.json"
theorem reductionProof6246 : EqualModuloRelations reduction6246.relations reduction6246.input reduction6246.output := by lin_cert using reduction6246.terms
theorem substitutionProof6246 : IsMapEvaluation generatorImages reduction6246.relations [0,0,0,760] reduction6246.output := by lin_cert using reduction6246.terms
def map_22_174 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6376 : InImage map_22_174 image6376 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6376 : Bundle := named_bundle% "RealMapCertificates/relations/basis6376.json"
theorem reductionProof6376 : EqualModuloRelations reduction6376.relations reduction6376.input reduction6376.output := by lin_cert using reduction6376.terms
theorem substitutionProof6376 : IsMapEvaluation generatorImages reduction6376.relations [13,13,13,189] reduction6376.output := by lin_cert using reduction6376.terms
def image6377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6377 : InImage map_22_174 image6377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6377 : Bundle := named_bundle% "RealMapCertificates/relations/basis6377.json"
theorem reductionProof6377 : EqualModuloRelations reduction6377.relations reduction6377.input reduction6377.output := by lin_cert using reduction6377.terms
theorem substitutionProof6377 : IsMapEvaluation generatorImages reduction6377.relations [8,610] reduction6377.output := by lin_cert using reduction6377.terms
def image6378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6378 : InImage map_22_174 image6378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6378 : Bundle := named_bundle% "RealMapCertificates/relations/basis6378.json"
theorem reductionProof6378 : EqualModuloRelations reduction6378.relations reduction6378.input reduction6378.output := by lin_cert using reduction6378.terms
theorem substitutionProof6378 : IsMapEvaluation generatorImages reduction6378.relations [1,1,64,209] reduction6378.output := by lin_cert using reduction6378.terms
def image6379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6379 : InImage map_22_174 image6379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6379 : Bundle := named_bundle% "RealMapCertificates/relations/basis6379.json"
theorem reductionProof6379 : EqualModuloRelations reduction6379.relations reduction6379.input reduction6379.output := by lin_cert using reduction6379.terms
theorem substitutionProof6379 : IsMapEvaluation generatorImages reduction6379.relations [0,0,0,780] reduction6379.output := by lin_cert using reduction6379.terms
def map_22_175 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6480 : InImage map_22_175 image6480 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6480 : Bundle := named_bundle% "RealMapCertificates/relations/basis6480.json"
theorem reductionProof6480 : EqualModuloRelations reduction6480.relations reduction6480.input reduction6480.output := by lin_cert using reduction6480.terms
theorem substitutionProof6480 : IsMapEvaluation generatorImages reduction6480.relations [0,7,627] reduction6480.output := by lin_cert using reduction6480.terms
def image6481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6481 : InImage map_22_175 image6481 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6481 : Bundle := named_bundle% "RealMapCertificates/relations/basis6481.json"
theorem reductionProof6481 : EqualModuloRelations reduction6481.relations reduction6481.input reduction6481.output := by lin_cert using reduction6481.terms
theorem substitutionProof6481 : IsMapEvaluation generatorImages reduction6481.relations [0,3,717] reduction6481.output := by lin_cert using reduction6481.terms
def image6482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6482 : InImage map_22_175 image6482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6482 : Bundle := named_bundle% "RealMapCertificates/relations/basis6482.json"
theorem reductionProof6482 : EqualModuloRelations reduction6482.relations reduction6482.input reduction6482.output := by lin_cert using reduction6482.terms
theorem substitutionProof6482 : IsMapEvaluation generatorImages reduction6482.relations [0,0,0,0,0,762] reduction6482.output := by lin_cert using reduction6482.terms
def map_22_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6588 : InImage map_22_176 image6588 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6588 : Bundle := named_bundle% "RealMapCertificates/relations/basis6588.json"
theorem reductionProof6588 : EqualModuloRelations reduction6588.relations reduction6588.input reduction6588.output := by lin_cert using reduction6588.terms
theorem substitutionProof6588 : IsMapEvaluation generatorImages reduction6588.relations [9,13,13,209] reduction6588.output := by lin_cert using reduction6588.terms
def image6589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6589 : InImage map_22_176 image6589 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6589 : Bundle := named_bundle% "RealMapCertificates/relations/basis6589.json"
theorem reductionProof6589 : EqualModuloRelations reduction6589.relations reduction6589.input reduction6589.output := by lin_cert using reduction6589.terms
theorem substitutionProof6589 : IsMapEvaluation generatorImages reduction6589.relations [0,0,8,613] reduction6589.output := by lin_cert using reduction6589.terms
def map_22_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6725 : InImage map_22_177 image6725 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6725 : Bundle := named_bundle% "RealMapCertificates/relations/basis6725.json"
theorem reductionProof6725 : EqualModuloRelations reduction6725.relations reduction6725.input reduction6725.output := by lin_cert using reduction6725.terms
theorem substitutionProof6725 : IsMapEvaluation generatorImages reduction6725.relations [13,581] reduction6725.output := by lin_cert using reduction6725.terms
def image6726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6726 : InImage map_22_177 image6726 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6726 : Bundle := named_bundle% "RealMapCertificates/relations/basis6726.json"
theorem reductionProof6726 : EqualModuloRelations reduction6726.relations reduction6726.input reduction6726.output := by lin_cert using reduction6726.terms
theorem substitutionProof6726 : IsMapEvaluation generatorImages reduction6726.relations [8,640] reduction6726.output := by lin_cert using reduction6726.terms
def map_22_178 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6820 : InImage map_22_178 image6820 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6820 : Bundle := named_bundle% "RealMapCertificates/relations/basis6820.json"
theorem reductionProof6820 : EqualModuloRelations reduction6820.relations reduction6820.input reduction6820.output := by lin_cert using reduction6820.terms
theorem substitutionProof6820 : IsMapEvaluation generatorImages reduction6820.relations [1,834] reduction6820.output := by lin_cert using reduction6820.terms
def image6821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6821 : InImage map_22_178 image6821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6821 : Bundle := named_bundle% "RealMapCertificates/relations/basis6821.json"
theorem reductionProof6821 : EqualModuloRelations reduction6821.relations reduction6821.input reduction6821.output := by lin_cert using reduction6821.terms
theorem substitutionProof6821 : IsMapEvaluation generatorImages reduction6821.relations [0,7,655] reduction6821.output := by lin_cert using reduction6821.terms
def map_22_179 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6950 : InImage map_22_179 image6950 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6950 : Bundle := named_bundle% "RealMapCertificates/relations/basis6950.json"
theorem reductionProof6950 : EqualModuloRelations reduction6950.relations reduction6950.input reduction6950.output := by lin_cert using reduction6950.terms
theorem substitutionProof6950 : IsMapEvaluation generatorImages reduction6950.relations [876] reduction6950.output := by lin_cert using reduction6950.terms
def image6951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6951 : InImage map_22_179 image6951 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6951 : Bundle := named_bundle% "RealMapCertificates/relations/basis6951.json"
theorem reductionProof6951 : EqualModuloRelations reduction6951.relations reduction6951.input reduction6951.output := by lin_cert using reduction6951.terms
theorem substitutionProof6951 : IsMapEvaluation generatorImages reduction6951.relations [64,250] reduction6951.output := by lin_cert using reduction6951.terms
def image6952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6952 : InImage map_22_179 image6952 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6952 : Bundle := named_bundle% "RealMapCertificates/relations/basis6952.json"
theorem reductionProof6952 : EqualModuloRelations reduction6952.relations reduction6952.input reduction6952.output := by lin_cert using reduction6952.terms
theorem substitutionProof6952 : IsMapEvaluation generatorImages reduction6952.relations [13,13,13,209] reduction6952.output := by lin_cert using reduction6952.terms
def image6953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6953 : InImage map_22_179 image6953 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6953 : Bundle := named_bundle% "RealMapCertificates/relations/basis6953.json"
theorem reductionProof6953 : EqualModuloRelations reduction6953.relations reduction6953.input reduction6953.output := by lin_cert using reduction6953.terms
theorem substitutionProof6953 : IsMapEvaluation generatorImages reduction6953.relations [0,0,8,17,333] reduction6953.output := by lin_cert using reduction6953.terms
def image6954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6954 : InImage map_22_179 image6954 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6954 : Bundle := named_bundle% "RealMapCertificates/relations/basis6954.json"
theorem reductionProof6954 : EqualModuloRelations reduction6954.relations reduction6954.input reduction6954.output := by lin_cert using reduction6954.terms
theorem substitutionProof6954 : IsMapEvaluation generatorImages reduction6954.relations [0,0,0,64,235] reduction6954.output := by lin_cert using reduction6954.terms
def image6955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6955 : InImage map_22_179 image6955 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6955 : Bundle := named_bundle% "RealMapCertificates/relations/basis6955.json"
theorem reductionProof6955 : EqualModuloRelations reduction6955.relations reduction6955.input reduction6955.output := by lin_cert using reduction6955.terms
theorem substitutionProof6955 : IsMapEvaluation generatorImages reduction6955.relations [0,0,0,0,0,0,0,0,0,0,0,743] reduction6955.output := by lin_cert using reduction6955.terms
def map_22_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7098 : InImage map_22_180 image7098 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7098 : Bundle := named_bundle% "RealMapCertificates/relations/basis7098.json"
theorem reductionProof7098 : EqualModuloRelations reduction7098.relations reduction7098.input reduction7098.output := by lin_cert using reduction7098.terms
theorem substitutionProof7098 : IsMapEvaluation generatorImages reduction7098.relations [9,640] reduction7098.output := by lin_cert using reduction7098.terms
def image7099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7099 : InImage map_22_180 image7099 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7099 : Bundle := named_bundle% "RealMapCertificates/relations/basis7099.json"
theorem reductionProof7099 : EqualModuloRelations reduction7099.relations reduction7099.input reduction7099.output := by lin_cert using reduction7099.terms
theorem substitutionProof7099 : IsMapEvaluation generatorImages reduction7099.relations [2,833] reduction7099.output := by lin_cert using reduction7099.terms
def image7100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7100 : InImage map_22_180 image7100 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7100 : Bundle := named_bundle% "RealMapCertificates/relations/basis7100.json"
theorem reductionProof7100 : EqualModuloRelations reduction7100.relations reduction7100.input reduction7100.output := by lin_cert using reduction7100.terms
theorem substitutionProof7100 : IsMapEvaluation generatorImages reduction7100.relations [0,0,0,0,837] reduction7100.output := by lin_cert using reduction7100.terms
def image7101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7101 : InImage map_22_180 image7101 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7101 : Bundle := named_bundle% "RealMapCertificates/relations/basis7101.json"
theorem reductionProof7101 : EqualModuloRelations reduction7101.relations reduction7101.input reduction7101.output := by lin_cert using reduction7101.terms
theorem substitutionProof7101 : IsMapEvaluation generatorImages reduction7101.relations [0,0,0,0,836] reduction7101.output := by lin_cert using reduction7101.terms
def map_22_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7201 : InImage map_22_181 image7201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7201 : Bundle := named_bundle% "RealMapCertificates/relations/basis7201.json"
theorem reductionProof7201 : EqualModuloRelations reduction7201.relations reduction7201.input reduction7201.output := by lin_cert using reduction7201.terms
theorem substitutionProof7201 : IsMapEvaluation generatorImages reduction7201.relations [1,877] reduction7201.output := by lin_cert using reduction7201.terms
def image7202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7202 : InImage map_22_181 image7202 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7202 : Bundle := named_bundle% "RealMapCertificates/relations/basis7202.json"
theorem reductionProof7202 : EqualModuloRelations reduction7202.relations reduction7202.input reduction7202.output := by lin_cert using reduction7202.terms
theorem substitutionProof7202 : IsMapEvaluation generatorImages reduction7202.relations [0,0,0,0,0,838] reduction7202.output := by lin_cert using reduction7202.terms
def map_22_182 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7313 : InImage map_22_182 image7313 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7313 : Bundle := named_bundle% "RealMapCertificates/relations/basis7313.json"
theorem reductionProof7313 : EqualModuloRelations reduction7313.relations reduction7313.input reduction7313.output := by lin_cert using reduction7313.terms
theorem substitutionProof7313 : IsMapEvaluation generatorImages reduction7313.relations [64,261] reduction7313.output := by lin_cert using reduction7313.terms
def image7314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7314 : InImage map_22_182 image7314 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7314 : Bundle := named_bundle% "RealMapCertificates/relations/basis7314.json"
theorem reductionProof7314 : EqualModuloRelations reduction7314.relations reduction7314.input reduction7314.output := by lin_cert using reduction7314.terms
theorem substitutionProof7314 : IsMapEvaluation generatorImages reduction7314.relations [13,628] reduction7314.output := by lin_cert using reduction7314.terms
def map_22_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7465 : InImage map_22_183 image7465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7465 : Bundle := named_bundle% "RealMapCertificates/relations/basis7465.json"
theorem reductionProof7465 : EqualModuloRelations reduction7465.relations reduction7465.input reduction7465.output := by lin_cert using reduction7465.terms
theorem substitutionProof7465 : IsMapEvaluation generatorImages reduction7465.relations [13,640] reduction7465.output := by lin_cert using reduction7465.terms
def image7466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7466 : InImage map_22_183 image7466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7466 : Bundle := named_bundle% "RealMapCertificates/relations/basis7466.json"
theorem reductionProof7466 : EqualModuloRelations reduction7466.relations reduction7466.input reduction7466.output := by lin_cert using reduction7466.terms
theorem substitutionProof7466 : IsMapEvaluation generatorImages reduction7466.relations [2,877] reduction7466.output := by lin_cert using reduction7466.terms
def map_22_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7562 : InImage map_22_184 image7562 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7562 : Bundle := named_bundle% "RealMapCertificates/relations/basis7562.json"
theorem reductionProof7562 : EqualModuloRelations reduction7562.relations reduction7562.input reduction7562.output := by lin_cert using reduction7562.terms
theorem substitutionProof7562 : IsMapEvaluation generatorImages reduction7562.relations [67,266] reduction7562.output := by lin_cert using reduction7562.terms
def image7563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7563 : InImage map_22_184 image7563 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7563 : Bundle := named_bundle% "RealMapCertificates/relations/basis7563.json"
theorem reductionProof7563 : EqualModuloRelations reduction7563.relations reduction7563.input reduction7563.output := by lin_cert using reduction7563.terms
theorem substitutionProof7563 : IsMapEvaluation generatorImages reduction7563.relations [64,275] reduction7563.output := by lin_cert using reduction7563.terms
def image7564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7564 : InImage map_22_184 image7564 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7564 : Bundle := named_bundle% "RealMapCertificates/relations/basis7564.json"
theorem reductionProof7564 : EqualModuloRelations reduction7564.relations reduction7564.input reduction7564.output := by lin_cert using reduction7564.terms
theorem substitutionProof7564 : IsMapEvaluation generatorImages reduction7564.relations [1,8,692] reduction7564.output := by lin_cert using reduction7564.terms
def map_22_185 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7680 : InImage map_22_185 image7680 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7680 : Bundle := named_bundle% "RealMapCertificates/relations/basis7680.json"
theorem reductionProof7680 : EqualModuloRelations reduction7680.relations reduction7680.input reduction7680.output := by lin_cert using reduction7680.terms
theorem substitutionProof7680 : IsMapEvaluation generatorImages reduction7680.relations [13,13,23,181] reduction7680.output := by lin_cert using reduction7680.terms
def image7681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7681 : InImage map_22_185 image7681 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7681 : Bundle := named_bundle% "RealMapCertificates/relations/basis7681.json"
theorem reductionProof7681 : EqualModuloRelations reduction7681.relations reduction7681.input reduction7681.output := by lin_cert using reduction7681.terms
theorem substitutionProof7681 : IsMapEvaluation generatorImages reduction7681.relations [8,729] reduction7681.output := by lin_cert using reduction7681.terms
def image7682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7682 : InImage map_22_185 image7682 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7682 : Bundle := named_bundle% "RealMapCertificates/relations/basis7682.json"
theorem reductionProof7682 : EqualModuloRelations reduction7682.relations reduction7682.input reduction7682.output := by lin_cert using reduction7682.terms
theorem substitutionProof7682 : IsMapEvaluation generatorImages reduction7682.relations [0,930] reduction7682.output := by lin_cert using reduction7682.terms
def image7683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7683 : InImage map_22_185 image7683 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7683 : Bundle := named_bundle% "RealMapCertificates/relations/basis7683.json"
theorem reductionProof7683 : EqualModuloRelations reduction7683.relations reduction7683.input reduction7683.output := by lin_cert using reduction7683.terms
theorem substitutionProof7683 : IsMapEvaluation generatorImages reduction7683.relations [0,67,267] reduction7683.output := by lin_cert using reduction7683.terms
def map_22_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7830 : InImage map_22_186 image7830 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7830 : Bundle := named_bundle% "RealMapCertificates/relations/basis7830.json"
theorem reductionProof7830 : EqualModuloRelations reduction7830.relations reduction7830.input reduction7830.output := by lin_cert using reduction7830.terms
theorem substitutionProof7830 : IsMapEvaluation generatorImages reduction7830.relations [13,13,23,190] reduction7830.output := by lin_cert using reduction7830.terms
def image7831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7831 : InImage map_22_186 image7831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7831 : Bundle := named_bundle% "RealMapCertificates/relations/basis7831.json"
theorem reductionProof7831 : EqualModuloRelations reduction7831.relations reduction7831.input reduction7831.output := by lin_cert using reduction7831.terms
theorem substitutionProof7831 : IsMapEvaluation generatorImages reduction7831.relations [1,930] reduction7831.output := by lin_cert using reduction7831.terms
def image7832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7832 : InImage map_22_186 image7832 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7832 : Bundle := named_bundle% "RealMapCertificates/relations/basis7832.json"
theorem reductionProof7832 : EqualModuloRelations reduction7832.relations reduction7832.input reduction7832.output := by lin_cert using reduction7832.terms
theorem substitutionProof7832 : IsMapEvaluation generatorImages reduction7832.relations [0,0,0,0,0,891] reduction7832.output := by lin_cert using reduction7832.terms
def map_22_187 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7913 : InImage map_22_187 image7913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7913 : Bundle := named_bundle% "RealMapCertificates/relations/basis7913.json"
theorem reductionProof7913 : EqualModuloRelations reduction7913.relations reduction7913.input reduction7913.output := by lin_cert using reduction7913.terms
theorem substitutionProof7913 : IsMapEvaluation generatorImages reduction7913.relations [3,877] reduction7913.output := by lin_cert using reduction7913.terms
def image7914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7914 : InImage map_22_187 image7914 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7914 : Bundle := named_bundle% "RealMapCertificates/relations/basis7914.json"
theorem reductionProof7914 : EqualModuloRelations reduction7914.relations reduction7914.input reduction7914.output := by lin_cert using reduction7914.terms
theorem substitutionProof7914 : IsMapEvaluation generatorImages reduction7914.relations [0,0,943] reduction7914.output := by lin_cert using reduction7914.terms
def image7915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7915 : InImage map_22_187 image7915 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7915 : Bundle := named_bundle% "RealMapCertificates/relations/basis7915.json"
theorem reductionProof7915 : EqualModuloRelations reduction7915.relations reduction7915.input reduction7915.output := by lin_cert using reduction7915.terms
theorem substitutionProof7915 : IsMapEvaluation generatorImages reduction7915.relations [0,0,0,0,0,908] reduction7915.output := by lin_cert using reduction7915.terms
def map_22_188 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8026 : InImage map_22_188 image8026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8026 : Bundle := named_bundle% "RealMapCertificates/relations/basis8026.json"
theorem reductionProof8026 : EqualModuloRelations reduction8026.relations reduction8026.input reduction8026.output := by lin_cert using reduction8026.terms
theorem substitutionProof8026 : IsMapEvaluation generatorImages reduction8026.relations [980] reduction8026.output := by lin_cert using reduction8026.terms
def image8027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8027 : InImage map_22_188 image8027 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8027 : Bundle := named_bundle% "RealMapCertificates/relations/basis8027.json"
theorem reductionProof8027 : EqualModuloRelations reduction8027.relations reduction8027.input reduction8027.output := by lin_cert using reduction8027.terms
theorem substitutionProof8027 : IsMapEvaluation generatorImages reduction8027.relations [8,761] reduction8027.output := by lin_cert using reduction8027.terms
def image8028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8028 : InImage map_22_188 image8028 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8028 : Bundle := named_bundle% "RealMapCertificates/relations/basis8028.json"
theorem reductionProof8028 : EqualModuloRelations reduction8028.relations reduction8028.input reduction8028.output := by lin_cert using reduction8028.terms
theorem substitutionProof8028 : IsMapEvaluation generatorImages reduction8028.relations [2,930] reduction8028.output := by lin_cert using reduction8028.terms
def image8029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8029 : InImage map_22_188 image8029 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8029 : Bundle := named_bundle% "RealMapCertificates/relations/basis8029.json"
theorem reductionProof8029 : EqualModuloRelations reduction8029.relations reduction8029.input reduction8029.output := by lin_cert using reduction8029.terms
theorem substitutionProof8029 : IsMapEvaluation generatorImages reduction8029.relations [0,0,959] reduction8029.output := by lin_cert using reduction8029.terms
end RealMapCertificates
