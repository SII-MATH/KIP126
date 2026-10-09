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
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 67 => []
  | 68 => []
  | 75 => []
  | 76 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 189 => []
  | 190 => []
  | 195 => []
  | 206 => [[4,6,8,12]]
  | 209 => []
  | 250 => []
  | 261 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 376 => []
  | 411 => []
  | 604 => []
  | 629 => []
  | 630 => []
  | 669 => []
  | 691 => []
  | 867 => []
  | 949 => []
  | 1004 => []
  | 1096 => []
  | 1154 => []
  | 1320 => []
  | 1445 => []
  | 1447 => []
  | 1455 => []
  | 1490 => []
  | 1491 => []
  | 1506 => []
  | 1521 => []
  | 1523 => []
  | 1543 => []
  | 1548 => []
  | 1558 => []
  | 1575 => []
  | 1599 => []
  | 1600 => []
  | 1609 => []
  | 1610 => []
  | 1612 => []
  | 1625 => []
  | 1626 => []
  | 1659 => []
  | 1660 => []
  | 1661 => []
  | 1662 => []
  | 1663 => []
  | 1665 => []
  | 1693 => []
  | 1694 => []
  | 1695 => []
  | 1723 => []
  | 1724 => []
  | 1725 => []
  | 1740 => []
  | 1741 => []
  | 1742 => []
  | 1763 => []
  | 1764 => []
  | 1784 => []
  | 1785 => []
  | 1786 => []
  | 1787 => []
  | 1816 => []
  | 1817 => []
  | 1819 => []
  | 1840 => []
  | 1841 => []
  | 1842 => []
  | 1867 => []
  | 1868 => []
  | 1869 => []
  | _ => []
def map_22_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12593 : InImage map_22_216 image12593 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12593 : Bundle := named_bundle% "RealMapCertificates/relations/basis12593.json"
theorem reductionProof12593 : EqualModuloRelations reduction12593.relations reduction12593.input reduction12593.output := by lin_cert using reduction12593.terms
theorem substitutionProof12593 : IsMapEvaluation generatorImages reduction12593.relations [1490] reduction12593.output := by lin_cert using reduction12593.terms
def image12594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12594 : InImage map_22_216 image12594 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12594 : Bundle := named_bundle% "RealMapCertificates/relations/basis12594.json"
theorem reductionProof12594 : EqualModuloRelations reduction12594.relations reduction12594.input reduction12594.output := by lin_cert using reduction12594.terms
theorem substitutionProof12594 : IsMapEvaluation generatorImages reduction12594.relations [9,1096] reduction12594.output := by lin_cert using reduction12594.terms
def image12595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12595 : InImage map_22_216 image12595 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12595 : Bundle := named_bundle% "RealMapCertificates/relations/basis12595.json"
theorem reductionProof12595 : EqualModuloRelations reduction12595.relations reduction12595.input reduction12595.output := by lin_cert using reduction12595.terms
theorem substitutionProof12595 : IsMapEvaluation generatorImages reduction12595.relations [0,0,209,209] reduction12595.output := by lin_cert using reduction12595.terms
def map_22_217 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12750 : InImage map_22_217 image12750 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12750 : Bundle := named_bundle% "RealMapCertificates/relations/basis12750.json"
theorem reductionProof12750 : EqualModuloRelations reduction12750.relations reduction12750.input reduction12750.output := by lin_cert using reduction12750.terms
theorem substitutionProof12750 : IsMapEvaluation generatorImages reduction12750.relations [13,13,75,190] reduction12750.output := by lin_cert using reduction12750.terms
def image12751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12751 : InImage map_22_217 image12751 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12751 : Bundle := named_bundle% "RealMapCertificates/relations/basis12751.json"
theorem reductionProof12751 : EqualModuloRelations reduction12751.relations reduction12751.input reduction12751.output := by lin_cert using reduction12751.terms
theorem substitutionProof12751 : IsMapEvaluation generatorImages reduction12751.relations [13,13,23,376] reduction12751.output := by lin_cert using reduction12751.terms
def image12752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12752 : InImage map_22_217 image12752 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12752 : Bundle := named_bundle% "RealMapCertificates/relations/basis12752.json"
theorem reductionProof12752 : EqualModuloRelations reduction12752.relations reduction12752.input reduction12752.output := by lin_cert using reduction12752.terms
theorem substitutionProof12752 : IsMapEvaluation generatorImages reduction12752.relations [0,0,0,1445] reduction12752.output := by lin_cert using reduction12752.terms
def image12753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12753 : InImage map_22_217 image12753 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12753 : Bundle := named_bundle% "RealMapCertificates/relations/basis12753.json"
theorem reductionProof12753 : EqualModuloRelations reduction12753.relations reduction12753.input reduction12753.output := by lin_cert using reduction12753.terms
theorem substitutionProof12753 : IsMapEvaluation generatorImages reduction12753.relations [0,0,0,7,1154] reduction12753.output := by lin_cert using reduction12753.terms
def map_22_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12949 : InImage map_22_218 image12949 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12949 : Bundle := named_bundle% "RealMapCertificates/relations/basis12949.json"
theorem reductionProof12949 : EqualModuloRelations reduction12949.relations reduction12949.input reduction12949.output := by lin_cert using reduction12949.terms
theorem substitutionProof12949 : IsMapEvaluation generatorImages reduction12949.relations [8,88,324] reduction12949.output := by lin_cert using reduction12949.terms
def image12950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12950 : InImage map_22_218 image12950 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12950 : Bundle := named_bundle% "RealMapCertificates/relations/basis12950.json"
theorem reductionProof12950 : EqualModuloRelations reduction12950.relations reduction12950.input reduction12950.output := by lin_cert using reduction12950.terms
theorem substitutionProof12950 : IsMapEvaluation generatorImages reduction12950.relations [1,1,209,209] reduction12950.output := by lin_cert using reduction12950.terms
def image12951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12951 : InImage map_22_218 image12951 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12951 : Bundle := named_bundle% "RealMapCertificates/relations/basis12951.json"
theorem reductionProof12951 : EqualModuloRelations reduction12951.relations reduction12951.input reduction12951.output := by lin_cert using reduction12951.terms
theorem substitutionProof12951 : IsMapEvaluation generatorImages reduction12951.relations [0,0,1491] reduction12951.output := by lin_cert using reduction12951.terms
def image12952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12952 : InImage map_22_218 image12952 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12952 : Bundle := named_bundle% "RealMapCertificates/relations/basis12952.json"
theorem reductionProof12952 : EqualModuloRelations reduction12952.relations reduction12952.input reduction12952.output := by lin_cert using reduction12952.terms
theorem substitutionProof12952 : IsMapEvaluation generatorImages reduction12952.relations [0,0,0,137,324] reduction12952.output := by lin_cert using reduction12952.terms
def map_22_219 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13179 : InImage map_22_219 image13179 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13179 : Bundle := named_bundle% "RealMapCertificates/relations/basis13179.json"
theorem reductionProof13179 : EqualModuloRelations reduction13179.relations reduction13179.input reduction13179.output := by lin_cert using reduction13179.terms
theorem substitutionProof13179 : IsMapEvaluation generatorImages reduction13179.relations [1543] reduction13179.output := by lin_cert using reduction13179.terms
def image13180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13180 : InImage map_22_219 image13180 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13180 : Bundle := named_bundle% "RealMapCertificates/relations/basis13180.json"
theorem reductionProof13180 : EqualModuloRelations reduction13180.relations reduction13180.input reduction13180.output := by lin_cert using reduction13180.terms
theorem substitutionProof13180 : IsMapEvaluation generatorImages reduction13180.relations [68,604] reduction13180.output := by lin_cert using reduction13180.terms
def image13181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13181 : InImage map_22_219 image13181 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13181 : Bundle := named_bundle% "RealMapCertificates/relations/basis13181.json"
theorem reductionProof13181 : EqualModuloRelations reduction13181.relations reduction13181.input reduction13181.output := by lin_cert using reduction13181.terms
theorem substitutionProof13181 : IsMapEvaluation generatorImages reduction13181.relations [13,1096] reduction13181.output := by lin_cert using reduction13181.terms
def image13182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13182 : InImage map_22_219 image13182 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13182 : Bundle := named_bundle% "RealMapCertificates/relations/basis13182.json"
theorem reductionProof13182 : EqualModuloRelations reduction13182.relations reduction13182.input reduction13182.output := by lin_cert using reduction13182.terms
theorem substitutionProof13182 : IsMapEvaluation generatorImages reduction13182.relations [1,1506] reduction13182.output := by lin_cert using reduction13182.terms
def image13183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13183 : InImage map_22_219 image13183 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13183 : Bundle := named_bundle% "RealMapCertificates/relations/basis13183.json"
theorem reductionProof13183 : EqualModuloRelations reduction13183.relations reduction13183.input reduction13183.output := by lin_cert using reduction13183.terms
theorem substitutionProof13183 : IsMapEvaluation generatorImages reduction13183.relations [0,0,0,0,138,324] reduction13183.output := by lin_cert using reduction13183.terms
def image13184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13184 : InImage map_22_219 image13184 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13184 : Bundle := named_bundle% "RealMapCertificates/relations/basis13184.json"
theorem reductionProof13184 : EqualModuloRelations reduction13184.relations reduction13184.input reduction13184.output := by lin_cert using reduction13184.terms
theorem substitutionProof13184 : IsMapEvaluation generatorImages reduction13184.relations [0,0,0,0,0,1447] reduction13184.output := by lin_cert using reduction13184.terms
def map_22_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13519 : InImage map_22_221 image13519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13519 : Bundle := named_bundle% "RealMapCertificates/relations/basis13519.json"
theorem reductionProof13519 : EqualModuloRelations reduction13519.relations reduction13519.input reduction13519.output := by lin_cert using reduction13519.terms
theorem substitutionProof13519 : IsMapEvaluation generatorImages reduction13519.relations [1575] reduction13519.output := by lin_cert using reduction13519.terms
def image13520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13520 : InImage map_22_221 image13520 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13520 : Bundle := named_bundle% "RealMapCertificates/relations/basis13520.json"
theorem reductionProof13520 : EqualModuloRelations reduction13520.relations reduction13520.input reduction13520.output := by lin_cert using reduction13520.terms
theorem substitutionProof13520 : IsMapEvaluation generatorImages reduction13520.relations [13,75,335] reduction13520.output := by lin_cert using reduction13520.terms
def image13521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13521 : InImage map_22_221 image13521 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13521 : Bundle := named_bundle% "RealMapCertificates/relations/basis13521.json"
theorem reductionProof13521 : EqualModuloRelations reduction13521.relations reduction13521.input reduction13521.output := by lin_cert using reduction13521.terms
theorem substitutionProof13521 : IsMapEvaluation generatorImages reduction13521.relations [8,100,324] reduction13521.output := by lin_cert using reduction13521.terms
def image13522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13522 : InImage map_22_221 image13522 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13522 : Bundle := named_bundle% "RealMapCertificates/relations/basis13522.json"
theorem reductionProof13522 : EqualModuloRelations reduction13522.relations reduction13522.input reduction13522.output := by lin_cert using reduction13522.terms
theorem substitutionProof13522 : IsMapEvaluation generatorImages reduction13522.relations [0,0,0,146,324] reduction13522.output := by lin_cert using reduction13522.terms
def map_22_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13748 : InImage map_22_222 image13748 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13748 : Bundle := named_bundle% "RealMapCertificates/relations/basis13748.json"
theorem reductionProof13748 : EqualModuloRelations reduction13748.relations reduction13748.input reduction13748.output := by lin_cert using reduction13748.terms
theorem substitutionProof13748 : IsMapEvaluation generatorImages reduction13748.relations [1599] reduction13748.output := by lin_cert using reduction13748.terms
def image13749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13749 : InImage map_22_222 image13749 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13749 : Bundle := named_bundle% "RealMapCertificates/relations/basis13749.json"
theorem reductionProof13749 : EqualModuloRelations reduction13749.relations reduction13749.input reduction13749.output := by lin_cert using reduction13749.terms
theorem substitutionProof13749 : IsMapEvaluation generatorImages reduction13749.relations [67,630] reduction13749.output := by lin_cert using reduction13749.terms
def image13750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13750 : InImage map_22_222 image13750 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13750 : Bundle := named_bundle% "RealMapCertificates/relations/basis13750.json"
theorem reductionProof13750 : EqualModuloRelations reduction13750.relations reduction13750.input reduction13750.output := by lin_cert using reduction13750.terms
theorem substitutionProof13750 : IsMapEvaluation generatorImages reduction13750.relations [13,1154] reduction13750.output := by lin_cert using reduction13750.terms
def image13751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13751 : InImage map_22_222 image13751 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13751 : Bundle := named_bundle% "RealMapCertificates/relations/basis13751.json"
theorem reductionProof13751 : EqualModuloRelations reduction13751.relations reduction13751.input reduction13751.output := by lin_cert using reduction13751.terms
theorem substitutionProof13751 : IsMapEvaluation generatorImages reduction13751.relations [1,1558] reduction13751.output := by lin_cert using reduction13751.terms
def map_22_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13891 : InImage map_22_223 image13891 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13891 : Bundle := named_bundle% "RealMapCertificates/relations/basis13891.json"
theorem reductionProof13891 : EqualModuloRelations reduction13891.relations reduction13891.input reduction13891.output := by lin_cert using reduction13891.terms
theorem substitutionProof13891 : IsMapEvaluation generatorImages reduction13891.relations [209,250] reduction13891.output := by lin_cert using reduction13891.terms
def image13892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13892 : InImage map_22_223 image13892 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13892 : Bundle := named_bundle% "RealMapCertificates/relations/basis13892.json"
theorem reductionProof13892 : EqualModuloRelations reduction13892.relations reduction13892.input reduction13892.output := by lin_cert using reduction13892.terms
theorem substitutionProof13892 : IsMapEvaluation generatorImages reduction13892.relations [9,13,867] reduction13892.output := by lin_cert using reduction13892.terms
def image13893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13893 : InImage map_22_223 image13893 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13893 : Bundle := named_bundle% "RealMapCertificates/relations/basis13893.json"
theorem reductionProof13893 : EqualModuloRelations reduction13893.relations reduction13893.input reduction13893.output := by lin_cert using reduction13893.terms
theorem substitutionProof13893 : IsMapEvaluation generatorImages reduction13893.relations [0,0,0,0,0,0,0,0,0,1455] reduction13893.output := by lin_cert using reduction13893.terms
def map_22_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14080 : InImage map_22_224 image14080 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14080 : Bundle := named_bundle% "RealMapCertificates/relations/basis14080.json"
theorem reductionProof14080 : EqualModuloRelations reduction14080.relations reduction14080.input reduction14080.output := by lin_cert using reduction14080.terms
theorem substitutionProof14080 : IsMapEvaluation generatorImages reduction14080.relations [1625] reduction14080.output := by lin_cert using reduction14080.terms
def image14081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14081 : InImage map_22_224 image14081 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14081 : Bundle := named_bundle% "RealMapCertificates/relations/basis14081.json"
theorem reductionProof14081 : EqualModuloRelations reduction14081.relations reduction14081.input reduction14081.output := by lin_cert using reduction14081.terms
theorem substitutionProof14081 : IsMapEvaluation generatorImages reduction14081.relations [8,8,60,324] reduction14081.output := by lin_cert using reduction14081.terms
def image14082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14082 : InImage map_22_224 image14082 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14082 : Bundle := named_bundle% "RealMapCertificates/relations/basis14082.json"
theorem reductionProof14082 : EqualModuloRelations reduction14082.relations reduction14082.input reduction14082.output := by lin_cert using reduction14082.terms
theorem substitutionProof14082 : IsMapEvaluation generatorImages reduction14082.relations [0,1610] reduction14082.output := by lin_cert using reduction14082.terms
def image14083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14083 : InImage map_22_224 image14083 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14083 : Bundle := named_bundle% "RealMapCertificates/relations/basis14083.json"
theorem reductionProof14083 : EqualModuloRelations reduction14083.relations reduction14083.input reduction14083.output := by lin_cert using reduction14083.terms
theorem substitutionProof14083 : IsMapEvaluation generatorImages reduction14083.relations [0,1609] reduction14083.output := by lin_cert using reduction14083.terms
def image14084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14084 : InImage map_22_224 image14084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14084 : Bundle := named_bundle% "RealMapCertificates/relations/basis14084.json"
theorem reductionProof14084 : EqualModuloRelations reduction14084.relations reduction14084.input reduction14084.output := by lin_cert using reduction14084.terms
theorem substitutionProof14084 : IsMapEvaluation generatorImages reduction14084.relations [0,0,0,0,0,0,1523] reduction14084.output := by lin_cert using reduction14084.terms
def map_22_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14306 : InImage map_22_225 image14306 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14306 : Bundle := named_bundle% "RealMapCertificates/relations/basis14306.json"
theorem reductionProof14306 : EqualModuloRelations reduction14306.relations reduction14306.input reduction14306.output := by lin_cert using reduction14306.terms
theorem substitutionProof14306 : IsMapEvaluation generatorImages reduction14306.relations [75,629] reduction14306.output := by lin_cert using reduction14306.terms
def image14307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14307 : InImage map_22_225 image14307 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14307 : Bundle := named_bundle% "RealMapCertificates/relations/basis14307.json"
theorem reductionProof14307 : EqualModuloRelations reduction14307.relations reduction14307.input reduction14307.output := by lin_cert using reduction14307.terms
theorem substitutionProof14307 : IsMapEvaluation generatorImages reduction14307.relations [23,1004] reduction14307.output := by lin_cert using reduction14307.terms
def image14308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14308 : InImage map_22_225 image14308 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14308 : Bundle := named_bundle% "RealMapCertificates/relations/basis14308.json"
theorem reductionProof14308 : EqualModuloRelations reduction14308.relations reduction14308.input reduction14308.output := by lin_cert using reduction14308.terms
theorem substitutionProof14308 : IsMapEvaluation generatorImages reduction14308.relations [0,0,0,1600] reduction14308.output := by lin_cert using reduction14308.terms
def image14309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14309 : InImage map_22_225 image14309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14309 : Bundle := named_bundle% "RealMapCertificates/relations/basis14309.json"
theorem reductionProof14309 : EqualModuloRelations reduction14309.relations reduction14309.input reduction14309.output := by lin_cert using reduction14309.terms
theorem substitutionProof14309 : IsMapEvaluation generatorImages reduction14309.relations [0,0,0,0,0,149,324] reduction14309.output := by lin_cert using reduction14309.terms
def map_22_226 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image14433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14433 : InImage map_22_226 image14433 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14433 : Bundle := named_bundle% "RealMapCertificates/relations/basis14433.json"
theorem reductionProof14433 : EqualModuloRelations reduction14433.relations reduction14433.input reduction14433.output := by lin_cert using reduction14433.terms
theorem substitutionProof14433 : IsMapEvaluation generatorImages reduction14433.relations [1660] reduction14433.output := by lin_cert using reduction14433.terms
def image14434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14434 : InImage map_22_226 image14434 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14434 : Bundle := named_bundle% "RealMapCertificates/relations/basis14434.json"
theorem reductionProof14434 : EqualModuloRelations reduction14434.relations reduction14434.input reduction14434.output := by lin_cert using reduction14434.terms
theorem substitutionProof14434 : IsMapEvaluation generatorImages reduction14434.relations [1659] reduction14434.output := by lin_cert using reduction14434.terms
def image14435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14435 : InImage map_22_226 image14435 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14435 : Bundle := named_bundle% "RealMapCertificates/relations/basis14435.json"
theorem reductionProof14435 : EqualModuloRelations reduction14435.relations reduction14435.input reduction14435.output := by lin_cert using reduction14435.terms
theorem substitutionProof14435 : IsMapEvaluation generatorImages reduction14435.relations [209,261] reduction14435.output := by lin_cert using reduction14435.terms
def image14436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14436 : InImage map_22_226 image14436 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14436 : Bundle := named_bundle% "RealMapCertificates/relations/basis14436.json"
theorem reductionProof14436 : EqualModuloRelations reduction14436.relations reduction14436.input reduction14436.output := by lin_cert using reduction14436.terms
theorem substitutionProof14436 : IsMapEvaluation generatorImages reduction14436.relations [67,669] reduction14436.output := by lin_cert using reduction14436.terms
def image14437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14437 : InImage map_22_226 image14437 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14437 : Bundle := named_bundle% "RealMapCertificates/relations/basis14437.json"
theorem reductionProof14437 : EqualModuloRelations reduction14437.relations reduction14437.input reduction14437.output := by lin_cert using reduction14437.terms
theorem substitutionProof14437 : IsMapEvaluation generatorImages reduction14437.relations [13,13,867] reduction14437.output := by lin_cert using reduction14437.terms
def image14438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14438 : InImage map_22_226 image14438 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14438 : Bundle := named_bundle% "RealMapCertificates/relations/basis14438.json"
theorem reductionProof14438 : EqualModuloRelations reduction14438.relations reduction14438.input reduction14438.output := by lin_cert using reduction14438.terms
theorem substitutionProof14438 : IsMapEvaluation generatorImages reduction14438.relations [1,1626] reduction14438.output := by lin_cert using reduction14438.terms
def image14439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14439 : InImage map_22_226 image14439 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14439 : Bundle := named_bundle% "RealMapCertificates/relations/basis14439.json"
theorem reductionProof14439 : EqualModuloRelations reduction14439.relations reduction14439.input reduction14439.output := by lin_cert using reduction14439.terms
theorem substitutionProof14439 : IsMapEvaluation generatorImages reduction14439.relations [0,0,0,0,0,154,324] reduction14439.output := by lin_cert using reduction14439.terms
def map_22_227 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image14654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14654 : InImage map_22_227 image14654 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14654 : Bundle := named_bundle% "RealMapCertificates/relations/basis14654.json"
theorem reductionProof14654 : EqualModuloRelations reduction14654.relations reduction14654.input reduction14654.output := by lin_cert using reduction14654.terms
theorem substitutionProof14654 : IsMapEvaluation generatorImages reduction14654.relations [8,8,63,324] reduction14654.output := by lin_cert using reduction14654.terms
def image14655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14655 : InImage map_22_227 image14655 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14655 : Bundle := named_bundle% "RealMapCertificates/relations/basis14655.json"
theorem reductionProof14655 : EqualModuloRelations reduction14655.relations reduction14655.input reduction14655.output := by lin_cert using reduction14655.terms
theorem substitutionProof14655 : IsMapEvaluation generatorImages reduction14655.relations [1,76,629] reduction14655.output := by lin_cert using reduction14655.terms
def image14656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14656 : InImage map_22_227 image14656 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14656 : Bundle := named_bundle% "RealMapCertificates/relations/basis14656.json"
theorem reductionProof14656 : EqualModuloRelations reduction14656.relations reduction14656.input reduction14656.output := by lin_cert using reduction14656.terms
theorem substitutionProof14656 : IsMapEvaluation generatorImages reduction14656.relations [0,1663] reduction14656.output := by lin_cert using reduction14656.terms
def image14657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14657 : InImage map_22_227 image14657 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14657 : Bundle := named_bundle% "RealMapCertificates/relations/basis14657.json"
theorem reductionProof14657 : EqualModuloRelations reduction14657.relations reduction14657.input reduction14657.output := by lin_cert using reduction14657.terms
theorem substitutionProof14657 : IsMapEvaluation generatorImages reduction14657.relations [0,1662] reduction14657.output := by lin_cert using reduction14657.terms
def image14658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14658 : InImage map_22_227 image14658 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14658 : Bundle := named_bundle% "RealMapCertificates/relations/basis14658.json"
theorem reductionProof14658 : EqualModuloRelations reduction14658.relations reduction14658.input reduction14658.output := by lin_cert using reduction14658.terms
theorem substitutionProof14658 : IsMapEvaluation generatorImages reduction14658.relations [0,1661] reduction14658.output := by lin_cert using reduction14658.terms
def image14659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14659 : InImage map_22_227 image14659 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14659 : Bundle := named_bundle% "RealMapCertificates/relations/basis14659.json"
theorem reductionProof14659 : EqualModuloRelations reduction14659.relations reduction14659.input reduction14659.output := by lin_cert using reduction14659.terms
theorem substitutionProof14659 : IsMapEvaluation generatorImages reduction14659.relations [0,68,669] reduction14659.output := by lin_cert using reduction14659.terms
def image14660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14660 : InImage map_22_227 image14660 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14660 : Bundle := named_bundle% "RealMapCertificates/relations/basis14660.json"
theorem reductionProof14660 : EqualModuloRelations reduction14660.relations reduction14660.input reduction14660.output := by lin_cert using reduction14660.terms
theorem substitutionProof14660 : IsMapEvaluation generatorImages reduction14660.relations [0,3,1521] reduction14660.output := by lin_cert using reduction14660.terms
def map_22_228 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14882 : InImage map_22_228 image14882 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14882 : Bundle := named_bundle% "RealMapCertificates/relations/basis14882.json"
theorem reductionProof14882 : EqualModuloRelations reduction14882.relations reduction14882.input reduction14882.output := by lin_cert using reduction14882.terms
theorem substitutionProof14882 : IsMapEvaluation generatorImages reduction14882.relations [9,1320] reduction14882.output := by lin_cert using reduction14882.terms
def image14883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14883 : InImage map_22_228 image14883 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14883 : Bundle := named_bundle% "RealMapCertificates/relations/basis14883.json"
theorem reductionProof14883 : EqualModuloRelations reduction14883.relations reduction14883.input reduction14883.output := by lin_cert using reduction14883.terms
theorem substitutionProof14883 : IsMapEvaluation generatorImages reduction14883.relations [1,1661] reduction14883.output := by lin_cert using reduction14883.terms
def map_22_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15040 : InImage map_22_229 image15040 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15040 : Bundle := named_bundle% "RealMapCertificates/relations/basis15040.json"
theorem reductionProof15040 : EqualModuloRelations reduction15040.relations reduction15040.input reduction15040.output := by lin_cert using reduction15040.terms
theorem substitutionProof15040 : IsMapEvaluation generatorImages reduction15040.relations [1724] reduction15040.output := by lin_cert using reduction15040.terms
def image15041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15041 : InImage map_22_229 image15041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15041 : Bundle := named_bundle% "RealMapCertificates/relations/basis15041.json"
theorem reductionProof15041 : EqualModuloRelations reduction15041.relations reduction15041.input reduction15041.output := by lin_cert using reduction15041.terms
theorem substitutionProof15041 : IsMapEvaluation generatorImages reduction15041.relations [1723] reduction15041.output := by lin_cert using reduction15041.terms
def image15042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15042 : InImage map_22_229 image15042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15042 : Bundle := named_bundle% "RealMapCertificates/relations/basis15042.json"
theorem reductionProof15042 : EqualModuloRelations reduction15042.relations reduction15042.input reduction15042.output := by lin_cert using reduction15042.terms
theorem substitutionProof15042 : IsMapEvaluation generatorImages reduction15042.relations [0,1693] reduction15042.output := by lin_cert using reduction15042.terms
def map_22_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15254 : InImage map_22_230 image15254 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15254 : Bundle := named_bundle% "RealMapCertificates/relations/basis15254.json"
theorem reductionProof15254 : EqualModuloRelations reduction15254.relations reduction15254.input reduction15254.output := by lin_cert using reduction15254.terms
theorem substitutionProof15254 : IsMapEvaluation generatorImages reduction15254.relations [1740] reduction15254.output := by lin_cert using reduction15254.terms
def image15255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15255 : InImage map_22_230 image15255 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15255 : Bundle := named_bundle% "RealMapCertificates/relations/basis15255.json"
theorem reductionProof15255 : EqualModuloRelations reduction15255.relations reduction15255.input reduction15255.output := by lin_cert using reduction15255.terms
theorem substitutionProof15255 : IsMapEvaluation generatorImages reduction15255.relations [185,324] reduction15255.output := by lin_cert using reduction15255.terms
def image15256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15256 : InImage map_22_230 image15256 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15256 : Bundle := named_bundle% "RealMapCertificates/relations/basis15256.json"
theorem reductionProof15256 : EqualModuloRelations reduction15256.relations reduction15256.input reduction15256.output := by lin_cert using reduction15256.terms
theorem substitutionProof15256 : IsMapEvaluation generatorImages reduction15256.relations [2,1662] reduction15256.output := by lin_cert using reduction15256.terms
def image15257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15257 : InImage map_22_230 image15257 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15257 : Bundle := named_bundle% "RealMapCertificates/relations/basis15257.json"
theorem reductionProof15257 : EqualModuloRelations reduction15257.relations reduction15257.input reduction15257.output := by lin_cert using reduction15257.terms
theorem substitutionProof15257 : IsMapEvaluation generatorImages reduction15257.relations [0,0,1695] reduction15257.output := by lin_cert using reduction15257.terms
def image15258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15258 : InImage map_22_230 image15258 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15258 : Bundle := named_bundle% "RealMapCertificates/relations/basis15258.json"
theorem reductionProof15258 : EqualModuloRelations reduction15258.relations reduction15258.input reduction15258.output := by lin_cert using reduction15258.terms
theorem substitutionProof15258 : IsMapEvaluation generatorImages reduction15258.relations [0,0,1694] reduction15258.output := by lin_cert using reduction15258.terms
def map_22_231 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15502 : InImage map_22_231 image15502 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15502 : Bundle := named_bundle% "RealMapCertificates/relations/basis15502.json"
theorem reductionProof15502 : EqualModuloRelations reduction15502.relations reduction15502.input reduction15502.output := by lin_cert using reduction15502.terms
theorem substitutionProof15502 : IsMapEvaluation generatorImages reduction15502.relations [1763] reduction15502.output := by lin_cert using reduction15502.terms
def image15503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15503 : InImage map_22_231 image15503 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15503 : Bundle := named_bundle% "RealMapCertificates/relations/basis15503.json"
theorem reductionProof15503 : EqualModuloRelations reduction15503.relations reduction15503.input reduction15503.output := by lin_cert using reduction15503.terms
theorem substitutionProof15503 : IsMapEvaluation generatorImages reduction15503.relations [76,691] reduction15503.output := by lin_cert using reduction15503.terms
def image15504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15504 : InImage map_22_231 image15504 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15504 : Bundle := named_bundle% "RealMapCertificates/relations/basis15504.json"
theorem reductionProof15504 : EqualModuloRelations reduction15504.relations reduction15504.input reduction15504.output := by lin_cert using reduction15504.terms
theorem substitutionProof15504 : IsMapEvaluation generatorImages reduction15504.relations [13,1320] reduction15504.output := by lin_cert using reduction15504.terms
def image15505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15505 : InImage map_22_231 image15505 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15505 : Bundle := named_bundle% "RealMapCertificates/relations/basis15505.json"
theorem reductionProof15505 : EqualModuloRelations reduction15505.relations reduction15505.input reduction15505.output := by lin_cert using reduction15505.terms
theorem substitutionProof15505 : IsMapEvaluation generatorImages reduction15505.relations [3,1610] reduction15505.output := by lin_cert using reduction15505.terms
def image15506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15506 : InImage map_22_231 image15506 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15506 : Bundle := named_bundle% "RealMapCertificates/relations/basis15506.json"
theorem reductionProof15506 : EqualModuloRelations reduction15506.relations reduction15506.input reduction15506.output := by lin_cert using reduction15506.terms
theorem substitutionProof15506 : IsMapEvaluation generatorImages reduction15506.relations [3,1609] reduction15506.output := by lin_cert using reduction15506.terms
def image15507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15507 : InImage map_22_231 image15507 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15507 : Bundle := named_bundle% "RealMapCertificates/relations/basis15507.json"
theorem reductionProof15507 : EqualModuloRelations reduction15507.relations reduction15507.input reduction15507.output := by lin_cert using reduction15507.terms
theorem substitutionProof15507 : IsMapEvaluation generatorImages reduction15507.relations [2,2,1612] reduction15507.output := by lin_cert using reduction15507.terms
def image15508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15508 : InImage map_22_231 image15508 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15508 : Bundle := named_bundle% "RealMapCertificates/relations/basis15508.json"
theorem reductionProof15508 : EqualModuloRelations reduction15508.relations reduction15508.input reduction15508.output := by lin_cert using reduction15508.terms
theorem substitutionProof15508 : IsMapEvaluation generatorImages reduction15508.relations [0,1741] reduction15508.output := by lin_cert using reduction15508.terms
def map_22_232 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15679 : InImage map_22_232 image15679 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15679 : Bundle := named_bundle% "RealMapCertificates/relations/basis15679.json"
theorem reductionProof15679 : EqualModuloRelations reduction15679.relations reduction15679.input reduction15679.output := by lin_cert using reduction15679.terms
theorem substitutionProof15679 : IsMapEvaluation generatorImages reduction15679.relations [1787] reduction15679.output := by lin_cert using reduction15679.terms
def image15680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15680 : InImage map_22_232 image15680 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15680 : Bundle := named_bundle% "RealMapCertificates/relations/basis15680.json"
theorem reductionProof15680 : EqualModuloRelations reduction15680.relations reduction15680.input reduction15680.output := by lin_cert using reduction15680.terms
theorem substitutionProof15680 : IsMapEvaluation generatorImages reduction15680.relations [1786] reduction15680.output := by lin_cert using reduction15680.terms
def image15681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15681 : InImage map_22_232 image15681 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15681 : Bundle := named_bundle% "RealMapCertificates/relations/basis15681.json"
theorem reductionProof15681 : EqualModuloRelations reduction15681.relations reduction15681.input reduction15681.output := by lin_cert using reduction15681.terms
theorem substitutionProof15681 : IsMapEvaluation generatorImages reduction15681.relations [1785] reduction15681.output := by lin_cert using reduction15681.terms
def image15682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15682 : InImage map_22_232 image15682 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15682 : Bundle := named_bundle% "RealMapCertificates/relations/basis15682.json"
theorem reductionProof15682 : EqualModuloRelations reduction15682.relations reduction15682.input reduction15682.output := by lin_cert using reduction15682.terms
theorem substitutionProof15682 : IsMapEvaluation generatorImages reduction15682.relations [1784] reduction15682.output := by lin_cert using reduction15682.terms
def image15683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15683 : InImage map_22_232 image15683 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15683 : Bundle := named_bundle% "RealMapCertificates/relations/basis15683.json"
theorem reductionProof15683 : EqualModuloRelations reduction15683.relations reduction15683.input reduction15683.output := by lin_cert using reduction15683.terms
theorem substitutionProof15683 : IsMapEvaluation generatorImages reduction15683.relations [189,335] reduction15683.output := by lin_cert using reduction15683.terms
def image15684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15684 : InImage map_22_232 image15684 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15684 : Bundle := named_bundle% "RealMapCertificates/relations/basis15684.json"
theorem reductionProof15684 : EqualModuloRelations reduction15684.relations reduction15684.input reduction15684.output := by lin_cert using reduction15684.terms
theorem substitutionProof15684 : IsMapEvaluation generatorImages reduction15684.relations [0,1764] reduction15684.output := by lin_cert using reduction15684.terms
def image15685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15685 : InImage map_22_232 image15685 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15685 : Bundle := named_bundle% "RealMapCertificates/relations/basis15685.json"
theorem reductionProof15685 : EqualModuloRelations reduction15685.relations reduction15685.input reduction15685.output := by lin_cert using reduction15685.terms
theorem substitutionProof15685 : IsMapEvaluation generatorImages reduction15685.relations [0,0,1742] reduction15685.output := by lin_cert using reduction15685.terms
def image15686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15686 : InImage map_22_232 image15686 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15686 : Bundle := named_bundle% "RealMapCertificates/relations/basis15686.json"
theorem reductionProof15686 : EqualModuloRelations reduction15686.relations reduction15686.input reduction15686.output := by lin_cert using reduction15686.terms
theorem substitutionProof15686 : IsMapEvaluation generatorImages reduction15686.relations [0,0,3,1600] reduction15686.output := by lin_cert using reduction15686.terms
def map_22_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15910 : InImage map_22_233 image15910 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15910 : Bundle := named_bundle% "RealMapCertificates/relations/basis15910.json"
theorem reductionProof15910 : EqualModuloRelations reduction15910.relations reduction15910.input reduction15910.output := by lin_cert using reduction15910.terms
theorem substitutionProof15910 : IsMapEvaluation generatorImages reduction15910.relations [13,13,949] reduction15910.output := by lin_cert using reduction15910.terms
def image15911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15911 : InImage map_22_233 image15911 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15911 : Bundle := named_bundle% "RealMapCertificates/relations/basis15911.json"
theorem reductionProof15911 : EqualModuloRelations reduction15911.relations reduction15911.input reduction15911.output := by lin_cert using reduction15911.terms
theorem substitutionProof15911 : IsMapEvaluation generatorImages reduction15911.relations [8,138,324] reduction15911.output := by lin_cert using reduction15911.terms
def image15912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15912 : InImage map_22_233 image15912 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15912 : Bundle := named_bundle% "RealMapCertificates/relations/basis15912.json"
theorem reductionProof15912 : EqualModuloRelations reduction15912.relations reduction15912.input reduction15912.output := by lin_cert using reduction15912.terms
theorem substitutionProof15912 : IsMapEvaluation generatorImages reduction15912.relations [2,1725] reduction15912.output := by lin_cert using reduction15912.terms
def image15913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15913 : InImage map_22_233 image15913 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15913 : Bundle := named_bundle% "RealMapCertificates/relations/basis15913.json"
theorem reductionProof15913 : EqualModuloRelations reduction15913.relations reduction15913.input reduction15913.output := by lin_cert using reduction15913.terms
theorem substitutionProof15913 : IsMapEvaluation generatorImages reduction15913.relations [1,1764] reduction15913.output := by lin_cert using reduction15913.terms
def image15914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15914 : InImage map_22_233 image15914 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15914 : Bundle := named_bundle% "RealMapCertificates/relations/basis15914.json"
theorem reductionProof15914 : EqualModuloRelations reduction15914.relations reduction15914.input reduction15914.output := by lin_cert using reduction15914.terms
theorem substitutionProof15914 : IsMapEvaluation generatorImages reduction15914.relations [1,3,1612] reduction15914.output := by lin_cert using reduction15914.terms
def image15915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15915 : InImage map_22_233 image15915 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15915 : Bundle := named_bundle% "RealMapCertificates/relations/basis15915.json"
theorem reductionProof15915 : EqualModuloRelations reduction15915.relations reduction15915.input reduction15915.output := by lin_cert using reduction15915.terms
theorem substitutionProof15915 : IsMapEvaluation generatorImages reduction15915.relations [0,2,1695] reduction15915.output := by lin_cert using reduction15915.terms
def map_22_234 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16157 : InImage map_22_234 image16157 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16157 : Bundle := named_bundle% "RealMapCertificates/relations/basis16157.json"
theorem reductionProof16157 : EqualModuloRelations reduction16157.relations reduction16157.input reduction16157.output := by lin_cert using reduction16157.terms
theorem substitutionProof16157 : IsMapEvaluation generatorImages reduction16157.relations [1841] reduction16157.output := by lin_cert using reduction16157.terms
def image16158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16158 : InImage map_22_234 image16158 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16158 : Bundle := named_bundle% "RealMapCertificates/relations/basis16158.json"
theorem reductionProof16158 : EqualModuloRelations reduction16158.relations reduction16158.input reduction16158.output := by lin_cert using reduction16158.terms
theorem substitutionProof16158 : IsMapEvaluation generatorImages reduction16158.relations [1840] reduction16158.output := by lin_cert using reduction16158.terms
def image16159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16159 : InImage map_22_234 image16159 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16159 : Bundle := named_bundle% "RealMapCertificates/relations/basis16159.json"
theorem reductionProof16159 : EqualModuloRelations reduction16159.relations reduction16159.input reduction16159.output := by lin_cert using reduction16159.terms
theorem substitutionProof16159 : IsMapEvaluation generatorImages reduction16159.relations [5,149,324] reduction16159.output := by lin_cert using reduction16159.terms
def image16160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16160 : InImage map_22_234 image16160 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16160 : Bundle := named_bundle% "RealMapCertificates/relations/basis16160.json"
theorem reductionProof16160 : EqualModuloRelations reduction16160.relations reduction16160.input reduction16160.output := by lin_cert using reduction16160.terms
theorem substitutionProof16160 : IsMapEvaluation generatorImages reduction16160.relations [2,1741] reduction16160.output := by lin_cert using reduction16160.terms
def image16161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16161 : InImage map_22_234 image16161 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16161 : Bundle := named_bundle% "RealMapCertificates/relations/basis16161.json"
theorem reductionProof16161 : EqualModuloRelations reduction16161.relations reduction16161.input reduction16161.output := by lin_cert using reduction16161.terms
theorem substitutionProof16161 : IsMapEvaluation generatorImages reduction16161.relations [0,1817] reduction16161.output := by lin_cert using reduction16161.terms
def image16162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16162 : InImage map_22_234 image16162 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16162 : Bundle := named_bundle% "RealMapCertificates/relations/basis16162.json"
theorem reductionProof16162 : EqualModuloRelations reduction16162.relations reduction16162.input reduction16162.output := by lin_cert using reduction16162.terms
theorem substitutionProof16162 : IsMapEvaluation generatorImages reduction16162.relations [0,1816] reduction16162.output := by lin_cert using reduction16162.terms
def image16163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16163 : InImage map_22_234 image16163 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16163 : Bundle := named_bundle% "RealMapCertificates/relations/basis16163.json"
theorem reductionProof16163 : EqualModuloRelations reduction16163.relations reduction16163.input reduction16163.output := by lin_cert using reduction16163.terms
theorem substitutionProof16163 : IsMapEvaluation generatorImages reduction16163.relations [0,195,333] reduction16163.output := by lin_cert using reduction16163.terms
def map_22_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16352 : InImage map_22_235 image16352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16352 : Bundle := named_bundle% "RealMapCertificates/relations/basis16352.json"
theorem reductionProof16352 : EqualModuloRelations reduction16352.relations reduction16352.input reduction16352.output := by lin_cert using reduction16352.terms
theorem substitutionProof16352 : IsMapEvaluation generatorImages reduction16352.relations [1868] reduction16352.output := by lin_cert using reduction16352.terms
def image16353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16353 : InImage map_22_235 image16353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16353 : Bundle := named_bundle% "RealMapCertificates/relations/basis16353.json"
theorem reductionProof16353 : EqualModuloRelations reduction16353.relations reduction16353.input reduction16353.output := by lin_cert using reduction16353.terms
theorem substitutionProof16353 : IsMapEvaluation generatorImages reduction16353.relations [1867] reduction16353.output := by lin_cert using reduction16353.terms
def image16354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16354 : InImage map_22_235 image16354 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16354 : Bundle := named_bundle% "RealMapCertificates/relations/basis16354.json"
theorem reductionProof16354 : EqualModuloRelations reduction16354.relations reduction16354.input reduction16354.output := by lin_cert using reduction16354.terms
theorem substitutionProof16354 : IsMapEvaluation generatorImages reduction16354.relations [0,3,1665] reduction16354.output := by lin_cert using reduction16354.terms
def image16355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16355 : InImage map_22_235 image16355 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16355 : Bundle := named_bundle% "RealMapCertificates/relations/basis16355.json"
theorem reductionProof16355 : EqualModuloRelations reduction16355.relations reduction16355.input reduction16355.output := by lin_cert using reduction16355.terms
theorem substitutionProof16355 : IsMapEvaluation generatorImages reduction16355.relations [0,0,1819] reduction16355.output := by lin_cert using reduction16355.terms
def map_22_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16581 : InImage map_22_236 image16581 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16581 : Bundle := named_bundle% "RealMapCertificates/relations/basis16581.json"
theorem reductionProof16581 : EqualModuloRelations reduction16581.relations reduction16581.input reduction16581.output := by lin_cert using reduction16581.terms
theorem substitutionProof16581 : IsMapEvaluation generatorImages reduction16581.relations [8,147,324] reduction16581.output := by lin_cert using reduction16581.terms
def image16582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16582 : InImage map_22_236 image16582 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16582 : Bundle := named_bundle% "RealMapCertificates/relations/basis16582.json"
theorem reductionProof16582 : EqualModuloRelations reduction16582.relations reduction16582.input reduction16582.output := by lin_cert using reduction16582.terms
theorem substitutionProof16582 : IsMapEvaluation generatorImages reduction16582.relations [2,2,1695] reduction16582.output := by lin_cert using reduction16582.terms
def image16583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16583 : InImage map_22_236 image16583 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16583 : Bundle := named_bundle% "RealMapCertificates/relations/basis16583.json"
theorem reductionProof16583 : EqualModuloRelations reduction16583.relations reduction16583.input reduction16583.output := by lin_cert using reduction16583.terms
theorem substitutionProof16583 : IsMapEvaluation generatorImages reduction16583.relations [1,1842] reduction16583.output := by lin_cert using reduction16583.terms
def image16584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16584 : InImage map_22_236 image16584 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16584 : Bundle := named_bundle% "RealMapCertificates/relations/basis16584.json"
theorem reductionProof16584 : EqualModuloRelations reduction16584.relations reduction16584.input reduction16584.output := by lin_cert using reduction16584.terms
theorem substitutionProof16584 : IsMapEvaluation generatorImages reduction16584.relations [0,206,324] reduction16584.output := by lin_cert using reduction16584.terms
def map_22_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16832 : InImage map_22_237 image16832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16832 : Bundle := named_bundle% "RealMapCertificates/relations/basis16832.json"
theorem reductionProof16832 : EqualModuloRelations reduction16832.relations reduction16832.input reduction16832.output := by lin_cert using reduction16832.terms
theorem substitutionProof16832 : IsMapEvaluation generatorImages reduction16832.relations [188,411] reduction16832.output := by lin_cert using reduction16832.terms
def image16833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16833 : InImage map_22_237 image16833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16833 : Bundle := named_bundle% "RealMapCertificates/relations/basis16833.json"
theorem reductionProof16833 : EqualModuloRelations reduction16833.relations reduction16833.input reduction16833.output := by lin_cert using reduction16833.terms
theorem substitutionProof16833 : IsMapEvaluation generatorImages reduction16833.relations [8,1548] reduction16833.output := by lin_cert using reduction16833.terms
def image16834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16834 : InImage map_22_237 image16834 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16834 : Bundle := named_bundle% "RealMapCertificates/relations/basis16834.json"
theorem reductionProof16834 : EqualModuloRelations reduction16834.relations reduction16834.input reduction16834.output := by lin_cert using reduction16834.terms
theorem substitutionProof16834 : IsMapEvaluation generatorImages reduction16834.relations [1,1869] reduction16834.output := by lin_cert using reduction16834.terms
def image16835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16835 : InImage map_22_237 image16835 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16835 : Bundle := named_bundle% "RealMapCertificates/relations/basis16835.json"
theorem reductionProof16835 : EqualModuloRelations reduction16835.relations reduction16835.input reduction16835.output := by lin_cert using reduction16835.terms
theorem substitutionProof16835 : IsMapEvaluation generatorImages reduction16835.relations [0,17,113,324] reduction16835.output := by lin_cert using reduction16835.terms
def image16836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16836 : InImage map_22_237 image16836 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16836 : Bundle := named_bundle% "RealMapCertificates/relations/basis16836.json"
theorem reductionProof16836 : EqualModuloRelations reduction16836.relations reduction16836.input reduction16836.output := by lin_cert using reduction16836.terms
theorem substitutionProof16836 : IsMapEvaluation generatorImages reduction16836.relations [0,3,1694] reduction16836.output := by lin_cert using reduction16836.terms
end RealMapCertificates
