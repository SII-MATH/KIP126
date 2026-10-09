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
  | 4 => [[3]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 43 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 62 => [[1,4,4,4,4,4]]
  | 64 => []
  | 65 => [[2,4,4,4,4,4]]
  | 68 => []
  | 71 => [[4,4,4,4,6]]
  | 74 => []
  | 75 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 90 => []
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 288 => []
  | 324 => []
  | 332 => []
  | 335 => []
  | 351 => []
  | 359 => []
  | 450 => []
  | 618 => []
  | 620 => []
  | 628 => []
  | 629 => []
  | 690 => []
  | 761 => []
  | 857 => []
  | 880 => []
  | 930 => []
  | 946 => []
  | 959 => []
  | 981 => []
  | 982 => []
  | 999 => []
  | 1002 => []
  | 1011 => []
  | 1036 => []
  | 1037 => []
  | 1050 => []
  | 1051 => []
  | 1064 => []
  | 1083 => []
  | 1084 => []
  | 1108 => []
  | 1147 => []
  | 1148 => []
  | 1149 => []
  | 1150 => []
  | 1152 => []
  | 1154 => []
  | 1175 => []
  | 1205 => []
  | 1242 => []
  | 1244 => []
  | 1245 => []
  | 1247 => []
  | 1257 => []
  | 1258 => []
  | 1260 => []
  | 1263 => []
  | 1338 => []
  | 1351 => []
  | 1370 => []
  | 1432 => []
  | 1433 => []
  | _ => []
def map_22_189 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8184 : InImage map_22_189 image8184 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8184 : Bundle := named_bundle% "RealMapCertificates/relations/basis8184.json"
theorem reductionProof8184 : EqualModuloRelations reduction8184.relations reduction8184.input reduction8184.output := by lin_cert using reduction8184.terms
theorem substitutionProof8184 : IsMapEvaluation generatorImages reduction8184.relations [999] reduction8184.output := by lin_cert using reduction8184.terms
def image8185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8185 : InImage map_22_189 image8185 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8185 : Bundle := named_bundle% "RealMapCertificates/relations/basis8185.json"
theorem reductionProof8185 : EqualModuloRelations reduction8185.relations reduction8185.input reduction8185.output := by lin_cert using reduction8185.terms
theorem substitutionProof8185 : IsMapEvaluation generatorImages reduction8185.relations [0,981] reduction8185.output := by lin_cert using reduction8185.terms
def map_22_190 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8274 : InImage map_22_190 image8274 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8274 : Bundle := named_bundle% "RealMapCertificates/relations/basis8274.json"
theorem reductionProof8274 : EqualModuloRelations reduction8274.relations reduction8274.input reduction8274.output := by lin_cert using reduction8274.terms
theorem substitutionProof8274 : IsMapEvaluation generatorImages reduction8274.relations [62,324] reduction8274.output := by lin_cert using reduction8274.terms
def image8275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8275 : InImage map_22_190 image8275 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8275 : Bundle := named_bundle% "RealMapCertificates/relations/basis8275.json"
theorem reductionProof8275 : EqualModuloRelations reduction8275.relations reduction8275.input reduction8275.output := by lin_cert using reduction8275.terms
theorem substitutionProof8275 : IsMapEvaluation generatorImages reduction8275.relations [13,23,335] reduction8275.output := by lin_cert using reduction8275.terms
def image8276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8276 : InImage map_22_190 image8276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8276 : Bundle := named_bundle% "RealMapCertificates/relations/basis8276.json"
theorem reductionProof8276 : EqualModuloRelations reduction8276.relations reduction8276.input reduction8276.output := by lin_cert using reduction8276.terms
theorem substitutionProof8276 : IsMapEvaluation generatorImages reduction8276.relations [0,0,982] reduction8276.output := by lin_cert using reduction8276.terms
def map_22_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8404 : InImage map_22_191 image8404 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8404 : Bundle := named_bundle% "RealMapCertificates/relations/basis8404.json"
theorem reductionProof8404 : EqualModuloRelations reduction8404.relations reduction8404.input reduction8404.output := by lin_cert using reduction8404.terms
theorem substitutionProof8404 : IsMapEvaluation generatorImages reduction8404.relations [1036] reduction8404.output := by lin_cert using reduction8404.terms
def image8405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8405 : InImage map_22_191 image8405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8405 : Bundle := named_bundle% "RealMapCertificates/relations/basis8405.json"
theorem reductionProof8405 : EqualModuloRelations reduction8405.relations reduction8405.input reduction8405.output := by lin_cert using reduction8405.terms
theorem substitutionProof8405 : IsMapEvaluation generatorImages reduction8405.relations [9,761] reduction8405.output := by lin_cert using reduction8405.terms
def map_22_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8554 : InImage map_22_192 image8554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8554 : Bundle := named_bundle% "RealMapCertificates/relations/basis8554.json"
theorem reductionProof8554 : EqualModuloRelations reduction8554.relations reduction8554.input reduction8554.output := by lin_cert using reduction8554.terms
theorem substitutionProof8554 : IsMapEvaluation generatorImages reduction8554.relations [65,324] reduction8554.output := by lin_cert using reduction8554.terms
def image8555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8555 : InImage map_22_192 image8555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8555 : Bundle := named_bundle% "RealMapCertificates/relations/basis8555.json"
theorem reductionProof8555 : EqualModuloRelations reduction8555.relations reduction8555.input reduction8555.output := by lin_cert using reduction8555.terms
theorem substitutionProof8555 : IsMapEvaluation generatorImages reduction8555.relations [9,13,13,288] reduction8555.output := by lin_cert using reduction8555.terms
def image8556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8556 : InImage map_22_192 image8556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8556 : Bundle := named_bundle% "RealMapCertificates/relations/basis8556.json"
theorem reductionProof8556 : EqualModuloRelations reduction8556.relations reduction8556.input reduction8556.output := by lin_cert using reduction8556.terms
theorem substitutionProof8556 : IsMapEvaluation generatorImages reduction8556.relations [0,1037] reduction8556.output := by lin_cert using reduction8556.terms
def map_22_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8647 : InImage map_22_193 image8647 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8647 : Bundle := named_bundle% "RealMapCertificates/relations/basis8647.json"
theorem reductionProof8647 : EqualModuloRelations reduction8647.relations reduction8647.input reduction8647.output := by lin_cert using reduction8647.terms
theorem substitutionProof8647 : IsMapEvaluation generatorImages reduction8647.relations [23,618] reduction8647.output := by lin_cert using reduction8647.terms
def image8648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8648 : InImage map_22_193 image8648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8648 : Bundle := named_bundle% "RealMapCertificates/relations/basis8648.json"
theorem reductionProof8648 : EqualModuloRelations reduction8648.relations reduction8648.input reduction8648.output := by lin_cert using reduction8648.terms
theorem substitutionProof8648 : IsMapEvaluation generatorImages reduction8648.relations [0,1051] reduction8648.output := by lin_cert using reduction8648.terms
def image8649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8649 : InImage map_22_193 image8649 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8649 : Bundle := named_bundle% "RealMapCertificates/relations/basis8649.json"
theorem reductionProof8649 : EqualModuloRelations reduction8649.relations reduction8649.input reduction8649.output := by lin_cert using reduction8649.terms
theorem substitutionProof8649 : IsMapEvaluation generatorImages reduction8649.relations [0,0,0,1011] reduction8649.output := by lin_cert using reduction8649.terms
def map_22_194 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8789 : InImage map_22_194 image8789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8789 : Bundle := named_bundle% "RealMapCertificates/relations/basis8789.json"
theorem reductionProof8789 : EqualModuloRelations reduction8789.relations reduction8789.input reduction8789.output := by lin_cert using reduction8789.terms
theorem substitutionProof8789 : IsMapEvaluation generatorImages reduction8789.relations [1084] reduction8789.output := by lin_cert using reduction8789.terms
def image8790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8790 : InImage map_22_194 image8790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8790 : Bundle := named_bundle% "RealMapCertificates/relations/basis8790.json"
theorem reductionProof8790 : EqualModuloRelations reduction8790.relations reduction8790.input reduction8790.output := by lin_cert using reduction8790.terms
theorem substitutionProof8790 : IsMapEvaluation generatorImages reduction8790.relations [1083] reduction8790.output := by lin_cert using reduction8790.terms
def image8791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8791 : InImage map_22_194 image8791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8791 : Bundle := named_bundle% "RealMapCertificates/relations/basis8791.json"
theorem reductionProof8791 : EqualModuloRelations reduction8791.relations reduction8791.input reduction8791.output := by lin_cert using reduction8791.terms
theorem substitutionProof8791 : IsMapEvaluation generatorImages reduction8791.relations [23,629] reduction8791.output := by lin_cert using reduction8791.terms
def image8792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8792 : InImage map_22_194 image8792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8792 : Bundle := named_bundle% "RealMapCertificates/relations/basis8792.json"
theorem reductionProof8792 : EqualModuloRelations reduction8792.relations reduction8792.input reduction8792.output := by lin_cert using reduction8792.terms
theorem substitutionProof8792 : IsMapEvaluation generatorImages reduction8792.relations [13,761] reduction8792.output := by lin_cert using reduction8792.terms
def image8793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8793 : InImage map_22_194 image8793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8793 : Bundle := named_bundle% "RealMapCertificates/relations/basis8793.json"
theorem reductionProof8793 : EqualModuloRelations reduction8793.relations reduction8793.input reduction8793.output := by lin_cert using reduction8793.terms
theorem substitutionProof8793 : IsMapEvaluation generatorImages reduction8793.relations [1,1051] reduction8793.output := by lin_cert using reduction8793.terms
def image8794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8794 : InImage map_22_194 image8794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8794 : Bundle := named_bundle% "RealMapCertificates/relations/basis8794.json"
theorem reductionProof8794 : EqualModuloRelations reduction8794.relations reduction8794.input reduction8794.output := by lin_cert using reduction8794.terms
theorem substitutionProof8794 : IsMapEvaluation generatorImages reduction8794.relations [1,1050] reduction8794.output := by lin_cert using reduction8794.terms
def map_22_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8958 : InImage map_22_195 image8958 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8958 : Bundle := named_bundle% "RealMapCertificates/relations/basis8958.json"
theorem reductionProof8958 : EqualModuloRelations reduction8958.relations reduction8958.input reduction8958.output := by lin_cert using reduction8958.terms
theorem substitutionProof8958 : IsMapEvaluation generatorImages reduction8958.relations [13,13,13,288] reduction8958.output := by lin_cert using reduction8958.terms
def image8959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8959 : InImage map_22_195 image8959 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8959 : Bundle := named_bundle% "RealMapCertificates/relations/basis8959.json"
theorem reductionProof8959 : EqualModuloRelations reduction8959.relations reduction8959.input reduction8959.output := by lin_cert using reduction8959.terms
theorem substitutionProof8959 : IsMapEvaluation generatorImages reduction8959.relations [1,7,857] reduction8959.output := by lin_cert using reduction8959.terms
def image8960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8960 : InImage map_22_195 image8960 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8960 : Bundle := named_bundle% "RealMapCertificates/relations/basis8960.json"
theorem reductionProof8960 : EqualModuloRelations reduction8960.relations reduction8960.input reduction8960.output := by lin_cert using reduction8960.terms
theorem substitutionProof8960 : IsMapEvaluation generatorImages reduction8960.relations [0,71,324] reduction8960.output := by lin_cert using reduction8960.terms
def image8961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8961 : InImage map_22_195 image8961 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8961 : Bundle := named_bundle% "RealMapCertificates/relations/basis8961.json"
theorem reductionProof8961 : EqualModuloRelations reduction8961.relations reduction8961.input reduction8961.output := by lin_cert using reduction8961.terms
theorem substitutionProof8961 : IsMapEvaluation generatorImages reduction8961.relations [0,0,1064] reduction8961.output := by lin_cert using reduction8961.terms
def map_22_196 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9060 : InImage map_22_196 image9060 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9060 : Bundle := named_bundle% "RealMapCertificates/relations/basis9060.json"
theorem reductionProof9060 : EqualModuloRelations reduction9060.relations reduction9060.input reduction9060.output := by lin_cert using reduction9060.terms
theorem substitutionProof9060 : IsMapEvaluation generatorImages reduction9060.relations [68,359] reduction9060.output := by lin_cert using reduction9060.terms
def image9061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9061 : InImage map_22_196 image9061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9061 : Bundle := named_bundle% "RealMapCertificates/relations/basis9061.json"
theorem reductionProof9061 : EqualModuloRelations reduction9061.relations reduction9061.input reduction9061.output := by lin_cert using reduction9061.terms
theorem substitutionProof9061 : IsMapEvaluation generatorImages reduction9061.relations [9,75,212] reduction9061.output := by lin_cert using reduction9061.terms
def image9062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9062 : InImage map_22_196 image9062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9062 : Bundle := named_bundle% "RealMapCertificates/relations/basis9062.json"
theorem reductionProof9062 : EqualModuloRelations reduction9062.relations reduction9062.input reduction9062.output := by lin_cert using reduction9062.terms
theorem substitutionProof9062 : IsMapEvaluation generatorImages reduction9062.relations [1,71,324] reduction9062.output := by lin_cert using reduction9062.terms
def image9063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9063 : InImage map_22_196 image9063 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9063 : Bundle := named_bundle% "RealMapCertificates/relations/basis9063.json"
theorem reductionProof9063 : EqualModuloRelations reduction9063.relations reduction9063.input reduction9063.output := by lin_cert using reduction9063.terms
theorem substitutionProof9063 : IsMapEvaluation generatorImages reduction9063.relations [1,64,351] reduction9063.output := by lin_cert using reduction9063.terms
def image9064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9064 : InImage map_22_196 image9064 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9064 : Bundle := named_bundle% "RealMapCertificates/relations/basis9064.json"
theorem reductionProof9064 : EqualModuloRelations reduction9064.relations reduction9064.input reduction9064.output := by lin_cert using reduction9064.terms
theorem substitutionProof9064 : IsMapEvaluation generatorImages reduction9064.relations [1,3,959] reduction9064.output := by lin_cert using reduction9064.terms
def image9065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9065 : InImage map_22_196 image9065 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9065 : Bundle := named_bundle% "RealMapCertificates/relations/basis9065.json"
theorem reductionProof9065 : EqualModuloRelations reduction9065.relations reduction9065.input reduction9065.output := by lin_cert using reduction9065.terms
theorem substitutionProof9065 : IsMapEvaluation generatorImages reduction9065.relations [0,0,0,0,0,0,0,0,59,324] reduction9065.output := by lin_cert using reduction9065.terms
def map_22_197 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9219 : InImage map_22_197 image9219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9219 : Bundle := named_bundle% "RealMapCertificates/relations/basis9219.json"
theorem reductionProof9219 : EqualModuloRelations reduction9219.relations reduction9219.input reduction9219.output := by lin_cert using reduction9219.terms
theorem substitutionProof9219 : IsMapEvaluation generatorImages reduction9219.relations [0,18,690] reduction9219.output := by lin_cert using reduction9219.terms
def image9220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9220 : InImage map_22_197 image9220 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9220 : Bundle := named_bundle% "RealMapCertificates/relations/basis9220.json"
theorem reductionProof9220 : EqualModuloRelations reduction9220.relations reduction9220.input reduction9220.output := by lin_cert using reduction9220.terms
theorem substitutionProof9220 : IsMapEvaluation generatorImages reduction9220.relations [0,3,982] reduction9220.output := by lin_cert using reduction9220.terms
def map_22_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9404 : InImage map_22_198 image9404 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9404 : Bundle := named_bundle% "RealMapCertificates/relations/basis9404.json"
theorem reductionProof9404 : EqualModuloRelations reduction9404.relations reduction9404.input reduction9404.output := by lin_cert using reduction9404.terms
theorem substitutionProof9404 : IsMapEvaluation generatorImages reduction9404.relations [1147] reduction9404.output := by lin_cert using reduction9404.terms
def image9405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9405 : InImage map_22_198 image9405 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9405 : Bundle := named_bundle% "RealMapCertificates/relations/basis9405.json"
theorem reductionProof9405 : EqualModuloRelations reduction9405.relations reduction9405.input reduction9405.output := by lin_cert using reduction9405.terms
theorem substitutionProof9405 : IsMapEvaluation generatorImages reduction9405.relations [0,77,324] reduction9405.output := by lin_cert using reduction9405.terms
def image9406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9406 : InImage map_22_198 image9406 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9406 : Bundle := named_bundle% "RealMapCertificates/relations/basis9406.json"
theorem reductionProof9406 : EqualModuloRelations reduction9406.relations reduction9406.input reduction9406.output := by lin_cert using reduction9406.terms
theorem substitutionProof9406 : IsMapEvaluation generatorImages reduction9406.relations [0,0,1108] reduction9406.output := by lin_cert using reduction9406.terms
def map_22_199 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9525 : InImage map_22_199 image9525 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9525 : Bundle := named_bundle% "RealMapCertificates/relations/basis9525.json"
theorem reductionProof9525 : EqualModuloRelations reduction9525.relations reduction9525.input reduction9525.output := by lin_cert using reduction9525.terms
theorem substitutionProof9525 : IsMapEvaluation generatorImages reduction9525.relations [74,359] reduction9525.output := by lin_cert using reduction9525.terms
def image9526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9526 : InImage map_22_199 image9526 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9526 : Bundle := named_bundle% "RealMapCertificates/relations/basis9526.json"
theorem reductionProof9526 : EqualModuloRelations reduction9526.relations reduction9526.input reduction9526.output := by lin_cert using reduction9526.terms
theorem substitutionProof9526 : IsMapEvaluation generatorImages reduction9526.relations [13,75,212] reduction9526.output := by lin_cert using reduction9526.terms
def image9527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9527 : InImage map_22_199 image9527 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9527 : Bundle := named_bundle% "RealMapCertificates/relations/basis9527.json"
theorem reductionProof9527 : EqualModuloRelations reduction9527.relations reduction9527.input reduction9527.output := by lin_cert using reduction9527.terms
theorem substitutionProof9527 : IsMapEvaluation generatorImages reduction9527.relations [3,1037] reduction9527.output := by lin_cert using reduction9527.terms
def image9528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9528 : InImage map_22_199 image9528 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9528 : Bundle := named_bundle% "RealMapCertificates/relations/basis9528.json"
theorem reductionProof9528 : EqualModuloRelations reduction9528.relations reduction9528.input reduction9528.output := by lin_cert using reduction9528.terms
theorem substitutionProof9528 : IsMapEvaluation generatorImages reduction9528.relations [0,1149] reduction9528.output := by lin_cert using reduction9528.terms
def image9529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9529 : InImage map_22_199 image9529 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9529 : Bundle := named_bundle% "RealMapCertificates/relations/basis9529.json"
theorem reductionProof9529 : EqualModuloRelations reduction9529.relations reduction9529.input reduction9529.output := by lin_cert using reduction9529.terms
theorem substitutionProof9529 : IsMapEvaluation generatorImages reduction9529.relations [0,1148] reduction9529.output := by lin_cert using reduction9529.terms
def image9530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9530 : InImage map_22_199 image9530 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9530 : Bundle := named_bundle% "RealMapCertificates/relations/basis9530.json"
theorem reductionProof9530 : EqualModuloRelations reduction9530.relations reduction9530.input reduction9530.output := by lin_cert using reduction9530.terms
theorem substitutionProof9530 : IsMapEvaluation generatorImages reduction9530.relations [0,0,78,324] reduction9530.output := by lin_cert using reduction9530.terms
def map_22_200 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9688 : InImage map_22_200 image9688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9688 : Bundle := named_bundle% "RealMapCertificates/relations/basis9688.json"
theorem reductionProof9688 : EqualModuloRelations reduction9688.relations reduction9688.input reduction9688.output := by lin_cert using reduction9688.terms
theorem substitutionProof9688 : IsMapEvaluation generatorImages reduction9688.relations [9,880] reduction9688.output := by lin_cert using reduction9688.terms
def image9689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9689 : InImage map_22_200 image9689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9689 : Bundle := named_bundle% "RealMapCertificates/relations/basis9689.json"
theorem reductionProof9689 : EqualModuloRelations reduction9689.relations reduction9689.input reduction9689.output := by lin_cert using reduction9689.terms
theorem substitutionProof9689 : IsMapEvaluation generatorImages reduction9689.relations [7,930] reduction9689.output := by lin_cert using reduction9689.terms
def image9690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9690 : InImage map_22_200 image9690 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9690 : Bundle := named_bundle% "RealMapCertificates/relations/basis9690.json"
theorem reductionProof9690 : EqualModuloRelations reduction9690.relations reduction9690.input reduction9690.output := by lin_cert using reduction9690.terms
theorem substitutionProof9690 : IsMapEvaluation generatorImages reduction9690.relations [3,1050] reduction9690.output := by lin_cert using reduction9690.terms
def image9691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9691 : InImage map_22_200 image9691 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9691 : Bundle := named_bundle% "RealMapCertificates/relations/basis9691.json"
theorem reductionProof9691 : EqualModuloRelations reduction9691.relations reduction9691.input reduction9691.output := by lin_cert using reduction9691.terms
theorem substitutionProof9691 : IsMapEvaluation generatorImages reduction9691.relations [1,1148] reduction9691.output := by lin_cert using reduction9691.terms
def image9692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9692 : InImage map_22_200 image9692 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9692 : Bundle := named_bundle% "RealMapCertificates/relations/basis9692.json"
theorem reductionProof9692 : EqualModuloRelations reduction9692.relations reduction9692.input reduction9692.output := by lin_cert using reduction9692.terms
theorem substitutionProof9692 : IsMapEvaluation generatorImages reduction9692.relations [0,0,1150] reduction9692.output := by lin_cert using reduction9692.terms
def map_22_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9884 : InImage map_22_201 image9884 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9884 : Bundle := named_bundle% "RealMapCertificates/relations/basis9884.json"
theorem reductionProof9884 : EqualModuloRelations reduction9884.relations reduction9884.input reduction9884.output := by lin_cert using reduction9884.terms
theorem substitutionProof9884 : IsMapEvaluation generatorImages reduction9884.relations [1205] reduction9884.output := by lin_cert using reduction9884.terms
def image9885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9885 : InImage map_22_201 image9885 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9885 : Bundle := named_bundle% "RealMapCertificates/relations/basis9885.json"
theorem reductionProof9885 : EqualModuloRelations reduction9885.relations reduction9885.input reduction9885.output := by lin_cert using reduction9885.terms
theorem substitutionProof9885 : IsMapEvaluation generatorImages reduction9885.relations [13,13,13,332] reduction9885.output := by lin_cert using reduction9885.terms
def image9886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9886 : InImage map_22_201 image9886 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9886 : Bundle := named_bundle% "RealMapCertificates/relations/basis9886.json"
theorem reductionProof9886 : EqualModuloRelations reduction9886.relations reduction9886.input reduction9886.output := by lin_cert using reduction9886.terms
theorem substitutionProof9886 : IsMapEvaluation generatorImages reduction9886.relations [1,76,359] reduction9886.output := by lin_cert using reduction9886.terms
def image9887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9887 : InImage map_22_201 image9887 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9887 : Bundle := named_bundle% "RealMapCertificates/relations/basis9887.json"
theorem reductionProof9887 : EqualModuloRelations reduction9887.relations reduction9887.input reduction9887.output := by lin_cert using reduction9887.terms
theorem substitutionProof9887 : IsMapEvaluation generatorImages reduction9887.relations [0,8,49,324] reduction9887.output := by lin_cert using reduction9887.terms
def map_22_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10006 : InImage map_22_202 image10006 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10006 : Bundle := named_bundle% "RealMapCertificates/relations/basis10006.json"
theorem reductionProof10006 : EqualModuloRelations reduction10006.relations reduction10006.input reduction10006.output := by lin_cert using reduction10006.terms
theorem substitutionProof10006 : IsMapEvaluation generatorImages reduction10006.relations [3,3,959] reduction10006.output := by lin_cert using reduction10006.terms
def image10007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10007 : InImage map_22_202 image10007 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10007 : Bundle := named_bundle% "RealMapCertificates/relations/basis10007.json"
theorem reductionProof10007 : EqualModuloRelations reduction10007.relations reduction10007.input reduction10007.output := by lin_cert using reduction10007.terms
theorem substitutionProof10007 : IsMapEvaluation generatorImages reduction10007.relations [2,1148] reduction10007.output := by lin_cert using reduction10007.terms
def image10008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10008 : InImage map_22_202 image10008 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10008 : Bundle := named_bundle% "RealMapCertificates/relations/basis10008.json"
theorem reductionProof10008 : EqualModuloRelations reduction10008.relations reduction10008.input reduction10008.output := by lin_cert using reduction10008.terms
theorem substitutionProof10008 : IsMapEvaluation generatorImages reduction10008.relations [0,3,1064] reduction10008.output := by lin_cert using reduction10008.terms
def image10009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10009 : InImage map_22_202 image10009 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10009 : Bundle := named_bundle% "RealMapCertificates/relations/basis10009.json"
theorem reductionProof10009 : EqualModuloRelations reduction10009.relations reduction10009.input reduction10009.output := by lin_cert using reduction10009.terms
theorem substitutionProof10009 : IsMapEvaluation generatorImages reduction10009.relations [0,0,8,50,324] reduction10009.output := by lin_cert using reduction10009.terms
def image10010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10010 : InImage map_22_202 image10010 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10010 : Bundle := named_bundle% "RealMapCertificates/relations/basis10010.json"
theorem reductionProof10010 : EqualModuloRelations reduction10010.relations reduction10010.input reduction10010.output := by lin_cert using reduction10010.terms
theorem substitutionProof10010 : IsMapEvaluation generatorImages reduction10010.relations [0,0,0,0,1154] reduction10010.output := by lin_cert using reduction10010.terms
def map_22_203 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10182 : InImage map_22_203 image10182 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10182 : Bundle := named_bundle% "RealMapCertificates/relations/basis10182.json"
theorem reductionProof10182 : EqualModuloRelations reduction10182.relations reduction10182.input reduction10182.output := by lin_cert using reduction10182.terms
theorem substitutionProof10182 : IsMapEvaluation generatorImages reduction10182.relations [1242] reduction10182.output := by lin_cert using reduction10182.terms
def image10183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10183 : InImage map_22_203 image10183 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10183 : Bundle := named_bundle% "RealMapCertificates/relations/basis10183.json"
theorem reductionProof10183 : EqualModuloRelations reduction10183.relations reduction10183.input reduction10183.output := by lin_cert using reduction10183.terms
theorem substitutionProof10183 : IsMapEvaluation generatorImages reduction10183.relations [13,880] reduction10183.output := by lin_cert using reduction10183.terms
def image10184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10184 : InImage map_22_203 image10184 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10184 : Bundle := named_bundle% "RealMapCertificates/relations/basis10184.json"
theorem reductionProof10184 : EqualModuloRelations reduction10184.relations reduction10184.input reduction10184.output := by lin_cert using reduction10184.terms
theorem substitutionProof10184 : IsMapEvaluation generatorImages reduction10184.relations [0,2,1150] reduction10184.output := by lin_cert using reduction10184.terms
def image10185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10185 : InImage map_22_203 image10185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10185 : Bundle := named_bundle% "RealMapCertificates/relations/basis10185.json"
theorem reductionProof10185 : EqualModuloRelations reduction10185.relations reduction10185.input reduction10185.output := by lin_cert using reduction10185.terms
theorem substitutionProof10185 : IsMapEvaluation generatorImages reduction10185.relations [0,0,0,0,1175] reduction10185.output := by lin_cert using reduction10185.terms
def map_22_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10381 : InImage map_22_204 image10381 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10381 : Bundle := named_bundle% "RealMapCertificates/relations/basis10381.json"
theorem reductionProof10381 : EqualModuloRelations reduction10381.relations reduction10381.input reduction10381.output := by lin_cert using reduction10381.terms
theorem substitutionProof10381 : IsMapEvaluation generatorImages reduction10381.relations [188,188] reduction10381.output := by lin_cert using reduction10381.terms
def image10382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10382 : InImage map_22_204 image10382 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10382 : Bundle := named_bundle% "RealMapCertificates/relations/basis10382.json"
theorem reductionProof10382 : EqualModuloRelations reduction10382.relations reduction10382.input reduction10382.output := by lin_cert using reduction10382.terms
theorem substitutionProof10382 : IsMapEvaluation generatorImages reduction10382.relations [3,3,982] reduction10382.output := by lin_cert using reduction10382.terms
def image10383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10383 : InImage map_22_204 image10383 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10383 : Bundle := named_bundle% "RealMapCertificates/relations/basis10383.json"
theorem reductionProof10383 : EqualModuloRelations reduction10383.relations reduction10383.input reduction10383.output := by lin_cert using reduction10383.terms
theorem substitutionProof10383 : IsMapEvaluation generatorImages reduction10383.relations [0,1244] reduction10383.output := by lin_cert using reduction10383.terms
def image10384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10384 : InImage map_22_204 image10384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10384 : Bundle := named_bundle% "RealMapCertificates/relations/basis10384.json"
theorem reductionProof10384 : EqualModuloRelations reduction10384.relations reduction10384.input reduction10384.output := by lin_cert using reduction10384.terms
theorem substitutionProof10384 : IsMapEvaluation generatorImages reduction10384.relations [0,8,55,324] reduction10384.output := by lin_cert using reduction10384.terms
def image10385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10385 : InImage map_22_204 image10385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10385 : Bundle := named_bundle% "RealMapCertificates/relations/basis10385.json"
theorem reductionProof10385 : EqualModuloRelations reduction10385.relations reduction10385.input reduction10385.output := by lin_cert using reduction10385.terms
theorem substitutionProof10385 : IsMapEvaluation generatorImages reduction10385.relations [0,0,2,1152] reduction10385.output := by lin_cert using reduction10385.terms
def map_22_205 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10529 : InImage map_22_205 image10529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10529 : Bundle := named_bundle% "RealMapCertificates/relations/basis10529.json"
theorem reductionProof10529 : EqualModuloRelations reduction10529.relations reduction10529.input reduction10529.output := by lin_cert using reduction10529.terms
theorem substitutionProof10529 : IsMapEvaluation generatorImages reduction10529.relations [13,13,620] reduction10529.output := by lin_cert using reduction10529.terms
def image10530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10530 : InImage map_22_205 image10530 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10530 : Bundle := named_bundle% "RealMapCertificates/relations/basis10530.json"
theorem reductionProof10530 : EqualModuloRelations reduction10530.relations reduction10530.input reduction10530.output := by lin_cert using reduction10530.terms
theorem substitutionProof10530 : IsMapEvaluation generatorImages reduction10530.relations [1,1244] reduction10530.output := by lin_cert using reduction10530.terms
def image10531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10531 : InImage map_22_205 image10531 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10531 : Bundle := named_bundle% "RealMapCertificates/relations/basis10531.json"
theorem reductionProof10531 : EqualModuloRelations reduction10531.relations reduction10531.input reduction10531.output := by lin_cert using reduction10531.terms
theorem substitutionProof10531 : IsMapEvaluation generatorImages reduction10531.relations [0,1258] reduction10531.output := by lin_cert using reduction10531.terms
def image10532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10532 : InImage map_22_205 image10532 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10532 : Bundle := named_bundle% "RealMapCertificates/relations/basis10532.json"
theorem reductionProof10532 : EqualModuloRelations reduction10532.relations reduction10532.input reduction10532.output := by lin_cert using reduction10532.terms
theorem substitutionProof10532 : IsMapEvaluation generatorImages reduction10532.relations [0,1257] reduction10532.output := by lin_cert using reduction10532.terms
def image10533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10533 : InImage map_22_205 image10533 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10533 : Bundle := named_bundle% "RealMapCertificates/relations/basis10533.json"
theorem reductionProof10533 : EqualModuloRelations reduction10533.relations reduction10533.input reduction10533.output := by lin_cert using reduction10533.terms
theorem substitutionProof10533 : IsMapEvaluation generatorImages reduction10533.relations [0,0,8,56,324] reduction10533.output := by lin_cert using reduction10533.terms
def map_22_206 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10710 : InImage map_22_206 image10710 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10710 : Bundle := named_bundle% "RealMapCertificates/relations/basis10710.json"
theorem reductionProof10710 : EqualModuloRelations reduction10710.relations reduction10710.input reduction10710.output := by lin_cert using reduction10710.terms
theorem substitutionProof10710 : IsMapEvaluation generatorImages reduction10710.relations [43,628] reduction10710.output := by lin_cert using reduction10710.terms
def image10711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10711 : InImage map_22_206 image10711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10711 : Bundle := named_bundle% "RealMapCertificates/relations/basis10711.json"
theorem reductionProof10711 : EqualModuloRelations reduction10711.relations reduction10711.input reduction10711.output := by lin_cert using reduction10711.terms
theorem substitutionProof10711 : IsMapEvaluation generatorImages reduction10711.relations [1,1257] reduction10711.output := by lin_cert using reduction10711.terms
def image10712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10712 : InImage map_22_206 image10712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10712 : Bundle := named_bundle% "RealMapCertificates/relations/basis10712.json"
theorem reductionProof10712 : EqualModuloRelations reduction10712.relations reduction10712.input reduction10712.output := by lin_cert using reduction10712.terms
theorem substitutionProof10712 : IsMapEvaluation generatorImages reduction10712.relations [0,0,0,1245] reduction10712.output := by lin_cert using reduction10712.terms
def map_22_207 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10929 : InImage map_22_207 image10929 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10929 : Bundle := named_bundle% "RealMapCertificates/relations/basis10929.json"
theorem reductionProof10929 : EqualModuloRelations reduction10929.relations reduction10929.input reduction10929.output := by lin_cert using reduction10929.terms
theorem substitutionProof10929 : IsMapEvaluation generatorImages reduction10929.relations [0,8,8,31,324] reduction10929.output := by lin_cert using reduction10929.terms
def image10930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10930 : InImage map_22_207 image10930 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10930 : Bundle := named_bundle% "RealMapCertificates/relations/basis10930.json"
theorem reductionProof10930 : EqualModuloRelations reduction10930.relations reduction10930.input reduction10930.output := by lin_cert using reduction10930.terms
theorem substitutionProof10930 : IsMapEvaluation generatorImages reduction10930.relations [0,3,1150] reduction10930.output := by lin_cert using reduction10930.terms
def map_22_208 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11059 : InImage map_22_208 image11059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11059 : Bundle := named_bundle% "RealMapCertificates/relations/basis11059.json"
theorem reductionProof11059 : EqualModuloRelations reduction11059.relations reduction11059.input reduction11059.output := by lin_cert using reduction11059.terms
theorem substitutionProof11059 : IsMapEvaluation generatorImages reduction11059.relations [9,13,13,450] reduction11059.output := by lin_cert using reduction11059.terms
def image11060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11060 : InImage map_22_208 image11060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11060 : Bundle := named_bundle% "RealMapCertificates/relations/basis11060.json"
theorem reductionProof11060 : EqualModuloRelations reduction11060.relations reduction11060.input reduction11060.output := by lin_cert using reduction11060.terms
theorem substitutionProof11060 : IsMapEvaluation generatorImages reduction11060.relations [2,188,189] reduction11060.output := by lin_cert using reduction11060.terms
def image11061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11061 : InImage map_22_208 image11061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11061 : Bundle := named_bundle% "RealMapCertificates/relations/basis11061.json"
theorem reductionProof11061 : EqualModuloRelations reduction11061.relations reduction11061.input reduction11061.output := by lin_cert using reduction11061.terms
theorem substitutionProof11061 : IsMapEvaluation generatorImages reduction11061.relations [0,0,8,16,17,324] reduction11061.output := by lin_cert using reduction11061.terms
def image11062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11062 : InImage map_22_208 image11062 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11062 : Bundle := named_bundle% "RealMapCertificates/relations/basis11062.json"
theorem reductionProof11062 : EqualModuloRelations reduction11062.relations reduction11062.input reduction11062.output := by lin_cert using reduction11062.terms
theorem substitutionProof11062 : IsMapEvaluation generatorImages reduction11062.relations [0,0,3,1152] reduction11062.output := by lin_cert using reduction11062.terms
def image11063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11063 : InImage map_22_208 image11063 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11063 : Bundle := named_bundle% "RealMapCertificates/relations/basis11063.json"
theorem reductionProof11063 : EqualModuloRelations reduction11063.relations reduction11063.input reduction11063.output := by lin_cert using reduction11063.terms
theorem substitutionProof11063 : IsMapEvaluation generatorImages reduction11063.relations [0,0,0,0,0,1247] reduction11063.output := by lin_cert using reduction11063.terms
def map_22_209 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11239 : InImage map_22_209 image11239 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11239 : Bundle := named_bundle% "RealMapCertificates/relations/basis11239.json"
theorem reductionProof11239 : EqualModuloRelations reduction11239.relations reduction11239.input reduction11239.output := by lin_cert using reduction11239.terms
theorem substitutionProof11239 : IsMapEvaluation generatorImages reduction11239.relations [187,209] reduction11239.output := by lin_cert using reduction11239.terms
def image11240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11240 : InImage map_22_209 image11240 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11240 : Bundle := named_bundle% "RealMapCertificates/relations/basis11240.json"
theorem reductionProof11240 : EqualModuloRelations reduction11240.relations reduction11240.input reduction11240.output := by lin_cert using reduction11240.terms
theorem substitutionProof11240 : IsMapEvaluation generatorImages reduction11240.relations [13,946] reduction11240.output := by lin_cert using reduction11240.terms
def image11241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11241 : InImage map_22_209 image11241 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11241 : Bundle := named_bundle% "RealMapCertificates/relations/basis11241.json"
theorem reductionProof11241 : EqualModuloRelations reduction11241.relations reduction11241.input reduction11241.output := by lin_cert using reduction11241.terms
theorem substitutionProof11241 : IsMapEvaluation generatorImages reduction11241.relations [4,1152] reduction11241.output := by lin_cert using reduction11241.terms
def image11242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11242 : InImage map_22_209 image11242 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11242 : Bundle := named_bundle% "RealMapCertificates/relations/basis11242.json"
theorem reductionProof11242 : EqualModuloRelations reduction11242.relations reduction11242.input reduction11242.output := by lin_cert using reduction11242.terms
theorem substitutionProof11242 : IsMapEvaluation generatorImages reduction11242.relations [3,3,1064] reduction11242.output := by lin_cert using reduction11242.terms
def image11243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11243 : InImage map_22_209 image11243 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11243 : Bundle := named_bundle% "RealMapCertificates/relations/basis11243.json"
theorem reductionProof11243 : EqualModuloRelations reduction11243.relations reduction11243.input reduction11243.output := by lin_cert using reduction11243.terms
theorem substitutionProof11243 : IsMapEvaluation generatorImages reduction11243.relations [0,0,0,0,0,1263] reduction11243.output := by lin_cert using reduction11243.terms
def map_22_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11443 : InImage map_22_210 image11443 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11443 : Bundle := named_bundle% "RealMapCertificates/relations/basis11443.json"
theorem reductionProof11443 : EqualModuloRelations reduction11443.relations reduction11443.input reduction11443.output := by lin_cert using reduction11443.terms
theorem substitutionProof11443 : IsMapEvaluation generatorImages reduction11443.relations [189,212] reduction11443.output := by lin_cert using reduction11443.terms
def image11444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11444 : InImage map_22_210 image11444 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11444 : Bundle := named_bundle% "RealMapCertificates/relations/basis11444.json"
theorem reductionProof11444 : EqualModuloRelations reduction11444.relations reduction11444.input reduction11444.output := by lin_cert using reduction11444.terms
theorem substitutionProof11444 : IsMapEvaluation generatorImages reduction11444.relations [0,188,209] reduction11444.output := by lin_cert using reduction11444.terms
def image11445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11445 : InImage map_22_210 image11445 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11445 : Bundle := named_bundle% "RealMapCertificates/relations/basis11445.json"
theorem reductionProof11445 : EqualModuloRelations reduction11445.relations reduction11445.input reduction11445.output := by lin_cert using reduction11445.terms
theorem substitutionProof11445 : IsMapEvaluation generatorImages reduction11445.relations [0,0,1338] reduction11445.output := by lin_cert using reduction11445.terms
def map_22_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11598 : InImage map_22_211 image11598 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11598 : Bundle := named_bundle% "RealMapCertificates/relations/basis11598.json"
theorem reductionProof11598 : EqualModuloRelations reduction11598.relations reduction11598.input reduction11598.output := by lin_cert using reduction11598.terms
theorem substitutionProof11598 : IsMapEvaluation generatorImages reduction11598.relations [13,13,13,450] reduction11598.output := by lin_cert using reduction11598.terms
def image11599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11599 : InImage map_22_211 image11599 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11599 : Bundle := named_bundle% "RealMapCertificates/relations/basis11599.json"
theorem reductionProof11599 : EqualModuloRelations reduction11599.relations reduction11599.input reduction11599.output := by lin_cert using reduction11599.terms
theorem substitutionProof11599 : IsMapEvaluation generatorImages reduction11599.relations [0,1370] reduction11599.output := by lin_cert using reduction11599.terms
def image11600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11600 : InImage map_22_211 image11600 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11600 : Bundle := named_bundle% "RealMapCertificates/relations/basis11600.json"
theorem reductionProof11600 : EqualModuloRelations reduction11600.relations reduction11600.input reduction11600.output := by lin_cert using reduction11600.terms
theorem substitutionProof11600 : IsMapEvaluation generatorImages reduction11600.relations [0,0,0,0,0,0,0,0,0,0,0,90,324] reduction11600.output := by lin_cert using reduction11600.terms
def map_22_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11789 : InImage map_22_212 image11789 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11789 : Bundle := named_bundle% "RealMapCertificates/relations/basis11789.json"
theorem reductionProof11789 : EqualModuloRelations reduction11789.relations reduction11789.input reduction11789.output := by lin_cert using reduction11789.terms
theorem substitutionProof11789 : IsMapEvaluation generatorImages reduction11789.relations [201,209] reduction11789.output := by lin_cert using reduction11789.terms
def image11790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11790 : InImage map_22_212 image11790 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11790 : Bundle := named_bundle% "RealMapCertificates/relations/basis11790.json"
theorem reductionProof11790 : EqualModuloRelations reduction11790.relations reduction11790.input reduction11790.output := by lin_cert using reduction11790.terms
theorem substitutionProof11790 : IsMapEvaluation generatorImages reduction11790.relations [125,324] reduction11790.output := by lin_cert using reduction11790.terms
def image11791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11791 : InImage map_22_212 image11791 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11791 : Bundle := named_bundle% "RealMapCertificates/relations/basis11791.json"
theorem reductionProof11791 : EqualModuloRelations reduction11791.relations reduction11791.input reduction11791.output := by lin_cert using reduction11791.terms
theorem substitutionProof11791 : IsMapEvaluation generatorImages reduction11791.relations [3,1257] reduction11791.output := by lin_cert using reduction11791.terms
def image11792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11792 : InImage map_22_212 image11792 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11792 : Bundle := named_bundle% "RealMapCertificates/relations/basis11792.json"
theorem reductionProof11792 : EqualModuloRelations reduction11792.relations reduction11792.input reduction11792.output := by lin_cert using reduction11792.terms
theorem substitutionProof11792 : IsMapEvaluation generatorImages reduction11792.relations [1,1,1338] reduction11792.output := by lin_cert using reduction11792.terms
def image11793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11793 : InImage map_22_212 image11793 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11793 : Bundle := named_bundle% "RealMapCertificates/relations/basis11793.json"
theorem reductionProof11793 : EqualModuloRelations reduction11793.relations reduction11793.input reduction11793.output := by lin_cert using reduction11793.terms
theorem substitutionProof11793 : IsMapEvaluation generatorImages reduction11793.relations [0,0,0,1351] reduction11793.output := by lin_cert using reduction11793.terms
def map_22_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12034 : InImage map_22_213 image12034 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12034 : Bundle := named_bundle% "RealMapCertificates/relations/basis12034.json"
theorem reductionProof12034 : EqualModuloRelations reduction12034.relations reduction12034.input reduction12034.output := by lin_cert using reduction12034.terms
theorem substitutionProof12034 : IsMapEvaluation generatorImages reduction12034.relations [1432] reduction12034.output := by lin_cert using reduction12034.terms
def image12035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12035 : InImage map_22_213 image12035 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12035 : Bundle := named_bundle% "RealMapCertificates/relations/basis12035.json"
theorem reductionProof12035 : EqualModuloRelations reduction12035.relations reduction12035.input reduction12035.output := by lin_cert using reduction12035.terms
theorem substitutionProof12035 : IsMapEvaluation generatorImages reduction12035.relations [0,2,1338] reduction12035.output := by lin_cert using reduction12035.terms
def image12036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12036 : InImage map_22_213 image12036 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12036 : Bundle := named_bundle% "RealMapCertificates/relations/basis12036.json"
theorem reductionProof12036 : EqualModuloRelations reduction12036.relations reduction12036.input reduction12036.output := by lin_cert using reduction12036.terms
theorem substitutionProof12036 : IsMapEvaluation generatorImages reduction12036.relations [0,0,3,1245] reduction12036.output := by lin_cert using reduction12036.terms
def map_22_214 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12188 : InImage map_22_214 image12188 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12188 : Bundle := named_bundle% "RealMapCertificates/relations/basis12188.json"
theorem reductionProof12188 : EqualModuloRelations reduction12188.relations reduction12188.input reduction12188.output := by lin_cert using reduction12188.terms
theorem substitutionProof12188 : IsMapEvaluation generatorImages reduction12188.relations [0,13,1002] reduction12188.output := by lin_cert using reduction12188.terms
def image12189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12189 : InImage map_22_214 image12189 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12189 : Bundle := named_bundle% "RealMapCertificates/relations/basis12189.json"
theorem reductionProof12189 : EqualModuloRelations reduction12189.relations reduction12189.input reduction12189.output := by lin_cert using reduction12189.terms
theorem substitutionProof12189 : IsMapEvaluation generatorImages reduction12189.relations [0,0,3,1260] reduction12189.output := by lin_cert using reduction12189.terms
def map_22_215 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12387 : InImage map_22_215 image12387 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12387 : Bundle := named_bundle% "RealMapCertificates/relations/basis12387.json"
theorem reductionProof12387 : EqualModuloRelations reduction12387.relations reduction12387.input reduction12387.output := by lin_cert using reduction12387.terms
theorem substitutionProof12387 : IsMapEvaluation generatorImages reduction12387.relations [209,212] reduction12387.output := by lin_cert using reduction12387.terms
def image12388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12388 : InImage map_22_215 image12388 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12388 : Bundle := named_bundle% "RealMapCertificates/relations/basis12388.json"
theorem reductionProof12388 : EqualModuloRelations reduction12388.relations reduction12388.input reduction12388.output := by lin_cert using reduction12388.terms
theorem substitutionProof12388 : IsMapEvaluation generatorImages reduction12388.relations [136,324] reduction12388.output := by lin_cert using reduction12388.terms
def image12389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12389 : InImage map_22_215 image12389 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12389 : Bundle := named_bundle% "RealMapCertificates/relations/basis12389.json"
theorem reductionProof12389 : EqualModuloRelations reduction12389.relations reduction12389.input reduction12389.output := by lin_cert using reduction12389.terms
theorem substitutionProof12389 : IsMapEvaluation generatorImages reduction12389.relations [1,1433] reduction12389.output := by lin_cert using reduction12389.terms
end RealMapCertificates
