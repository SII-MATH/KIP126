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
  | 64 => []
  | 67 => []
  | 75 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 188 => []
  | 190 => []
  | 209 => []
  | 246 => []
  | 260 => []
  | 278 => []
  | 288 => []
  | 324 => []
  | 335 => []
  | 351 => []
  | 376 => []
  | 485 => []
  | 841 => []
  | 988 => []
  | 1020 => []
  | 1089 => []
  | 1446 => []
  | 1548 => []
  | 1600 => []
  | 1612 => []
  | 1615 => []
  | 1665 => []
  | 1671 => []
  | 1725 => []
  | 1728 => []
  | 1869 => []
  | 1871 => []
  | 1894 => []
  | 1914 => []
  | 1943 => []
  | 1944 => []
  | 1972 => []
  | 2010 => []
  | 2011 => []
  | 2049 => []
  | 2064 => []
  | 2065 => []
  | 2066 => []
  | 2067 => []
  | 2068 => []
  | 2141 => []
  | 2142 => []
  | 2176 => []
  | 2177 => []
  | 2178 => []
  | 2179 => []
  | 2180 => []
  | 2181 => []
  | 2219 => []
  | 2220 => []
  | 2221 => []
  | 2222 => []
  | 2257 => []
  | 2265 => []
  | 2285 => []
  | 2286 => []
  | 2287 => []
  | 2288 => []
  | 2289 => []
  | 2290 => []
  | 2291 => []
  | 2320 => []
  | 2351 => []
  | 2352 => []
  | 2353 => []
  | 2354 => []
  | 2355 => []
  | 2386 => []
  | 2387 => []
  | 2388 => []
  | 2389 => []
  | 2390 => []
  | 2421 => []
  | 2422 => []
  | 2423 => []
  | 2425 => []
  | 2455 => []
  | 2456 => []
  | 2457 => []
  | 2458 => []
  | 2459 => []
  | 2506 => []
  | 2507 => []
  | 2508 => []
  | 2509 => []
  | _ => []
def map_22_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17012 : InImage map_22_238 image17012 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17012 : Bundle := named_bundle% "RealMapCertificates/relations/basis17012.json"
theorem reductionProof17012 : EqualModuloRelations reduction17012.relations reduction17012.input reduction17012.output := by lin_cert using reduction17012.terms
theorem substitutionProof17012 : IsMapEvaluation generatorImages reduction17012.relations [1943] reduction17012.output := by lin_cert using reduction17012.terms
def image17013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17013 : InImage map_22_238 image17013 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17013 : Bundle := named_bundle% "RealMapCertificates/relations/basis17013.json"
theorem reductionProof17013 : EqualModuloRelations reduction17013.relations reduction17013.input reduction17013.output := by lin_cert using reduction17013.terms
theorem substitutionProof17013 : IsMapEvaluation generatorImages reduction17013.relations [13,1446] reduction17013.output := by lin_cert using reduction17013.terms
def image17014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17014 : InImage map_22_238 image17014 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17014 : Bundle := named_bundle% "RealMapCertificates/relations/basis17014.json"
theorem reductionProof17014 : EqualModuloRelations reduction17014.relations reduction17014.input reduction17014.output := by lin_cert using reduction17014.terms
theorem substitutionProof17014 : IsMapEvaluation generatorImages reduction17014.relations [0,0,1894] reduction17014.output := by lin_cert using reduction17014.terms
def image17015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17015 : InImage map_22_238 image17015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17015 : Bundle := named_bundle% "RealMapCertificates/relations/basis17015.json"
theorem reductionProof17015 : EqualModuloRelations reduction17015.relations reduction17015.input reduction17015.output := by lin_cert using reduction17015.terms
theorem substitutionProof17015 : IsMapEvaluation generatorImages reduction17015.relations [0,0,0,1871] reduction17015.output := by lin_cert using reduction17015.terms
def map_22_239 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17274 : InImage map_22_239 image17274 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17274 : Bundle := named_bundle% "RealMapCertificates/relations/basis17274.json"
theorem reductionProof17274 : EqualModuloRelations reduction17274.relations reduction17274.input reduction17274.output := by lin_cert using reduction17274.terms
theorem substitutionProof17274 : IsMapEvaluation generatorImages reduction17274.relations [9,13,1089] reduction17274.output := by lin_cert using reduction17274.terms
def image17275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17275 : InImage map_22_239 image17275 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17275 : Bundle := named_bundle% "RealMapCertificates/relations/basis17275.json"
theorem reductionProof17275 : EqualModuloRelations reduction17275.relations reduction17275.input reduction17275.output := by lin_cert using reduction17275.terms
theorem substitutionProof17275 : IsMapEvaluation generatorImages reduction17275.relations [8,17,64,324] reduction17275.output := by lin_cert using reduction17275.terms
def image17276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17276 : InImage map_22_239 image17276 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17276 : Bundle := named_bundle% "RealMapCertificates/relations/basis17276.json"
theorem reductionProof17276 : EqualModuloRelations reduction17276.relations reduction17276.input reduction17276.output := by lin_cert using reduction17276.terms
theorem substitutionProof17276 : IsMapEvaluation generatorImages reduction17276.relations [3,3,1612] reduction17276.output := by lin_cert using reduction17276.terms
def image17277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17277 : InImage map_22_239 image17277 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17277 : Bundle := named_bundle% "RealMapCertificates/relations/basis17277.json"
theorem reductionProof17277 : EqualModuloRelations reduction17277.relations reduction17277.input reduction17277.output := by lin_cert using reduction17277.terms
theorem substitutionProof17277 : IsMapEvaluation generatorImages reduction17277.relations [2,1869] reduction17277.output := by lin_cert using reduction17277.terms
def image17278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17278 : InImage map_22_239 image17278 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17278 : Bundle := named_bundle% "RealMapCertificates/relations/basis17278.json"
theorem reductionProof17278 : EqualModuloRelations reduction17278.relations reduction17278.input reduction17278.output := by lin_cert using reduction17278.terms
theorem substitutionProof17278 : IsMapEvaluation generatorImages reduction17278.relations [0,209,351] reduction17278.output := by lin_cert using reduction17278.terms
def image17279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17279 : InImage map_22_239 image17279 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17279 : Bundle := named_bundle% "RealMapCertificates/relations/basis17279.json"
theorem reductionProof17279 : EqualModuloRelations reduction17279.relations reduction17279.input reduction17279.output := by lin_cert using reduction17279.terms
theorem substitutionProof17279 : IsMapEvaluation generatorImages reduction17279.relations [0,8,149,324] reduction17279.output := by lin_cert using reduction17279.terms
def image17280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17280 : InImage map_22_239 image17280 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17280 : Bundle := named_bundle% "RealMapCertificates/relations/basis17280.json"
theorem reductionProof17280 : EqualModuloRelations reduction17280.relations reduction17280.input reduction17280.output := by lin_cert using reduction17280.terms
theorem substitutionProof17280 : IsMapEvaluation generatorImages reduction17280.relations [0,3,3,1600] reduction17280.output := by lin_cert using reduction17280.terms
def map_22_240 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17554 : InImage map_22_240 image17554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17554 : Bundle := named_bundle% "RealMapCertificates/relations/basis17554.json"
theorem reductionProof17554 : EqualModuloRelations reduction17554.relations reduction17554.input reduction17554.output := by lin_cert using reduction17554.terms
theorem substitutionProof17554 : IsMapEvaluation generatorImages reduction17554.relations [67,841] reduction17554.output := by lin_cert using reduction17554.terms
def image17555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17555 : InImage map_22_240 image17555 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17555 : Bundle := named_bundle% "RealMapCertificates/relations/basis17555.json"
theorem reductionProof17555 : EqualModuloRelations reduction17555.relations reduction17555.input reduction17555.output := by lin_cert using reduction17555.terms
theorem substitutionProof17555 : IsMapEvaluation generatorImages reduction17555.relations [9,1548] reduction17555.output := by lin_cert using reduction17555.terms
def image17556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17556 : InImage map_22_240 image17556 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17556 : Bundle := named_bundle% "RealMapCertificates/relations/basis17556.json"
theorem reductionProof17556 : EqualModuloRelations reduction17556.relations reduction17556.input reduction17556.output := by lin_cert using reduction17556.terms
theorem substitutionProof17556 : IsMapEvaluation generatorImages reduction17556.relations [1,1,1894] reduction17556.output := by lin_cert using reduction17556.terms
def image17557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17557 : InImage map_22_240 image17557 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17557 : Bundle := named_bundle% "RealMapCertificates/relations/basis17557.json"
theorem reductionProof17557 : EqualModuloRelations reduction17557.relations reduction17557.input reduction17557.output := by lin_cert using reduction17557.terms
theorem substitutionProof17557 : IsMapEvaluation generatorImages reduction17557.relations [0,8,154,324] reduction17557.output := by lin_cert using reduction17557.terms
def image17558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17558 : InImage map_22_240 image17558 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17558 : Bundle := named_bundle% "RealMapCertificates/relations/basis17558.json"
theorem reductionProof17558 : EqualModuloRelations reduction17558.relations reduction17558.input reduction17558.output := by lin_cert using reduction17558.terms
theorem substitutionProof17558 : IsMapEvaluation generatorImages reduction17558.relations [0,0,0,1914] reduction17558.output := by lin_cert using reduction17558.terms
def map_22_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17790 : InImage map_22_241 image17790 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17790 : Bundle := named_bundle% "RealMapCertificates/relations/basis17790.json"
theorem reductionProof17790 : EqualModuloRelations reduction17790.relations reduction17790.input reduction17790.output := by lin_cert using reduction17790.terms
theorem substitutionProof17790 : IsMapEvaluation generatorImages reduction17790.relations [2049] reduction17790.output := by lin_cert using reduction17790.terms
def image17791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17791 : InImage map_22_241 image17791 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17791 : Bundle := named_bundle% "RealMapCertificates/relations/basis17791.json"
theorem reductionProof17791 : EqualModuloRelations reduction17791.relations reduction17791.input reduction17791.output := by lin_cert using reduction17791.terms
theorem substitutionProof17791 : IsMapEvaluation generatorImages reduction17791.relations [1,1972] reduction17791.output := by lin_cert using reduction17791.terms
def image17792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17792 : InImage map_22_241 image17792 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17792 : Bundle := named_bundle% "RealMapCertificates/relations/basis17792.json"
theorem reductionProof17792 : EqualModuloRelations reduction17792.relations reduction17792.input reduction17792.output := by lin_cert using reduction17792.terms
theorem substitutionProof17792 : IsMapEvaluation generatorImages reduction17792.relations [0,2010] reduction17792.output := by lin_cert using reduction17792.terms
def map_22_242 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18049 : InImage map_22_242 image18049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18049 : Bundle := named_bundle% "RealMapCertificates/relations/basis18049.json"
theorem reductionProof18049 : EqualModuloRelations reduction18049.relations reduction18049.input reduction18049.output := by lin_cert using reduction18049.terms
theorem substitutionProof18049 : IsMapEvaluation generatorImages reduction18049.relations [2064] reduction18049.output := by lin_cert using reduction18049.terms
def image18050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18050 : InImage map_22_242 image18050 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18050 : Bundle := named_bundle% "RealMapCertificates/relations/basis18050.json"
theorem reductionProof18050 : EqualModuloRelations reduction18050.relations reduction18050.input reduction18050.output := by lin_cert using reduction18050.terms
theorem substitutionProof18050 : IsMapEvaluation generatorImages reduction18050.relations [13,13,1089] reduction18050.output := by lin_cert using reduction18050.terms
def image18051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18051 : InImage map_22_242 image18051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18051 : Bundle := named_bundle% "RealMapCertificates/relations/basis18051.json"
theorem reductionProof18051 : EqualModuloRelations reduction18051.relations reduction18051.input reduction18051.output := by lin_cert using reduction18051.terms
theorem substitutionProof18051 : IsMapEvaluation generatorImages reduction18051.relations [8,8,113,324] reduction18051.output := by lin_cert using reduction18051.terms
def image18052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18052 : InImage map_22_242 image18052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18052 : Bundle := named_bundle% "RealMapCertificates/relations/basis18052.json"
theorem reductionProof18052 : EqualModuloRelations reduction18052.relations reduction18052.input reduction18052.output := by lin_cert using reduction18052.terms
theorem substitutionProof18052 : IsMapEvaluation generatorImages reduction18052.relations [3,3,1665] reduction18052.output := by lin_cert using reduction18052.terms
def image18053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18053 : InImage map_22_242 image18053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18053 : Bundle := named_bundle% "RealMapCertificates/relations/basis18053.json"
theorem reductionProof18053 : EqualModuloRelations reduction18053.relations reduction18053.input reduction18053.output := by lin_cert using reduction18053.terms
theorem substitutionProof18053 : IsMapEvaluation generatorImages reduction18053.relations [1,2010] reduction18053.output := by lin_cert using reduction18053.terms
def map_22_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18331 : InImage map_22_243 image18331 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18331 : Bundle := named_bundle% "RealMapCertificates/relations/basis18331.json"
theorem reductionProof18331 : EqualModuloRelations reduction18331.relations reduction18331.input reduction18331.output := by lin_cert using reduction18331.terms
theorem substitutionProof18331 : IsMapEvaluation generatorImages reduction18331.relations [13,1548] reduction18331.output := by lin_cert using reduction18331.terms
def image18332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18332 : InImage map_22_243 image18332 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18332 : Bundle := named_bundle% "RealMapCertificates/relations/basis18332.json"
theorem reductionProof18332 : EqualModuloRelations reduction18332.relations reduction18332.input reduction18332.output := by lin_cert using reduction18332.terms
theorem substitutionProof18332 : IsMapEvaluation generatorImages reduction18332.relations [3,1869] reduction18332.output := by lin_cert using reduction18332.terms
def image18333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18333 : InImage map_22_243 image18333 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18333 : Bundle := named_bundle% "RealMapCertificates/relations/basis18333.json"
theorem reductionProof18333 : EqualModuloRelations reduction18333.relations reduction18333.input reduction18333.output := by lin_cert using reduction18333.terms
theorem substitutionProof18333 : IsMapEvaluation generatorImages reduction18333.relations [0,2067] reduction18333.output := by lin_cert using reduction18333.terms
def image18334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18334 : InImage map_22_243 image18334 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18334 : Bundle := named_bundle% "RealMapCertificates/relations/basis18334.json"
theorem reductionProof18334 : EqualModuloRelations reduction18334.relations reduction18334.input reduction18334.output := by lin_cert using reduction18334.terms
theorem substitutionProof18334 : IsMapEvaluation generatorImages reduction18334.relations [0,2065] reduction18334.output := by lin_cert using reduction18334.terms
def image18335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18335 : InImage map_22_243 image18335 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18335 : Bundle := named_bundle% "RealMapCertificates/relations/basis18335.json"
theorem reductionProof18335 : EqualModuloRelations reduction18335.relations reduction18335.input reduction18335.output := by lin_cert using reduction18335.terms
theorem substitutionProof18335 : IsMapEvaluation generatorImages reduction18335.relations [0,2,1944] reduction18335.output := by lin_cert using reduction18335.terms
def map_22_244 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18531 : InImage map_22_244 image18531 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18531 : Bundle := named_bundle% "RealMapCertificates/relations/basis18531.json"
theorem reductionProof18531 : EqualModuloRelations reduction18531.relations reduction18531.input reduction18531.output := by lin_cert using reduction18531.terms
theorem substitutionProof18531 : IsMapEvaluation generatorImages reduction18531.relations [2141] reduction18531.output := by lin_cert using reduction18531.terms
def image18532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18532 : InImage map_22_244 image18532 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18532 : Bundle := named_bundle% "RealMapCertificates/relations/basis18532.json"
theorem reductionProof18532 : EqualModuloRelations reduction18532.relations reduction18532.input reduction18532.output := by lin_cert using reduction18532.terms
theorem substitutionProof18532 : IsMapEvaluation generatorImages reduction18532.relations [246,324] reduction18532.output := by lin_cert using reduction18532.terms
def image18533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18533 : InImage map_22_244 image18533 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18533 : Bundle := named_bundle% "RealMapCertificates/relations/basis18533.json"
theorem reductionProof18533 : EqualModuloRelations reduction18533.relations reduction18533.input reduction18533.output := by lin_cert using reduction18533.terms
theorem substitutionProof18533 : IsMapEvaluation generatorImages reduction18533.relations [188,485] reduction18533.output := by lin_cert using reduction18533.terms
def image18534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18534 : InImage map_22_244 image18534 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18534 : Bundle := named_bundle% "RealMapCertificates/relations/basis18534.json"
theorem reductionProof18534 : EqualModuloRelations reduction18534.relations reduction18534.input reduction18534.output := by lin_cert using reduction18534.terms
theorem substitutionProof18534 : IsMapEvaluation generatorImages reduction18534.relations [9,1615] reduction18534.output := by lin_cert using reduction18534.terms
def image18535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18535 : InImage map_22_244 image18535 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18535 : Bundle := named_bundle% "RealMapCertificates/relations/basis18535.json"
theorem reductionProof18535 : EqualModuloRelations reduction18535.relations reduction18535.input reduction18535.output := by lin_cert using reduction18535.terms
theorem substitutionProof18535 : IsMapEvaluation generatorImages reduction18535.relations [2,2011] reduction18535.output := by lin_cert using reduction18535.terms
def image18536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18536 : InImage map_22_244 image18536 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18536 : Bundle := named_bundle% "RealMapCertificates/relations/basis18536.json"
theorem reductionProof18536 : EqualModuloRelations reduction18536.relations reduction18536.input reduction18536.output := by lin_cert using reduction18536.terms
theorem substitutionProof18536 : IsMapEvaluation generatorImages reduction18536.relations [1,2067] reduction18536.output := by lin_cert using reduction18536.terms
def image18537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18537 : InImage map_22_244 image18537 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18537 : Bundle := named_bundle% "RealMapCertificates/relations/basis18537.json"
theorem reductionProof18537 : EqualModuloRelations reduction18537.relations reduction18537.input reduction18537.output := by lin_cert using reduction18537.terms
theorem substitutionProof18537 : IsMapEvaluation generatorImages reduction18537.relations [1,2066] reduction18537.output := by lin_cert using reduction18537.terms
def image18538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18538 : InImage map_22_244 image18538 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18538 : Bundle := named_bundle% "RealMapCertificates/relations/basis18538.json"
theorem reductionProof18538 : EqualModuloRelations reduction18538.relations reduction18538.input reduction18538.output := by lin_cert using reduction18538.terms
theorem substitutionProof18538 : IsMapEvaluation generatorImages reduction18538.relations [0,0,2068] reduction18538.output := by lin_cert using reduction18538.terms
def map_22_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18803 : InImage map_22_245 image18803 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18803 : Bundle := named_bundle% "RealMapCertificates/relations/basis18803.json"
theorem reductionProof18803 : EqualModuloRelations reduction18803.relations reduction18803.input reduction18803.output := by lin_cert using reduction18803.terms
theorem substitutionProof18803 : IsMapEvaluation generatorImages reduction18803.relations [2178] reduction18803.output := by lin_cert using reduction18803.terms
def image18804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18804 : InImage map_22_245 image18804 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18804 : Bundle := named_bundle% "RealMapCertificates/relations/basis18804.json"
theorem reductionProof18804 : EqualModuloRelations reduction18804.relations reduction18804.input reduction18804.output := by lin_cert using reduction18804.terms
theorem substitutionProof18804 : IsMapEvaluation generatorImages reduction18804.relations [2177] reduction18804.output := by lin_cert using reduction18804.terms
def image18805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18805 : InImage map_22_245 image18805 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18805 : Bundle := named_bundle% "RealMapCertificates/relations/basis18805.json"
theorem reductionProof18805 : EqualModuloRelations reduction18805.relations reduction18805.input reduction18805.output := by lin_cert using reduction18805.terms
theorem substitutionProof18805 : IsMapEvaluation generatorImages reduction18805.relations [2176] reduction18805.output := by lin_cert using reduction18805.terms
def image18806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18806 : InImage map_22_245 image18806 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18806 : Bundle := named_bundle% "RealMapCertificates/relations/basis18806.json"
theorem reductionProof18806 : EqualModuloRelations reduction18806.relations reduction18806.input reduction18806.output := by lin_cert using reduction18806.terms
theorem substitutionProof18806 : IsMapEvaluation generatorImages reduction18806.relations [8,8,118,324] reduction18806.output := by lin_cert using reduction18806.terms
def image18807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18807 : InImage map_22_245 image18807 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18807 : Bundle := named_bundle% "RealMapCertificates/relations/basis18807.json"
theorem reductionProof18807 : EqualModuloRelations reduction18807.relations reduction18807.input reduction18807.output := by lin_cert using reduction18807.terms
theorem substitutionProof18807 : IsMapEvaluation generatorImages reduction18807.relations [7,1725] reduction18807.output := by lin_cert using reduction18807.terms
def map_22_246 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19108 : InImage map_22_246 image19108 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19108 : Bundle := named_bundle% "RealMapCertificates/relations/basis19108.json"
theorem reductionProof19108 : EqualModuloRelations reduction19108.relations reduction19108.input reduction19108.output := by lin_cert using reduction19108.terms
theorem substitutionProof19108 : IsMapEvaluation generatorImages reduction19108.relations [2221] reduction19108.output := by lin_cert using reduction19108.terms
def image19109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19109 : InImage map_22_246 image19109 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19109 : Bundle := named_bundle% "RealMapCertificates/relations/basis19109.json"
theorem reductionProof19109 : EqualModuloRelations reduction19109.relations reduction19109.input reduction19109.output := by lin_cert using reduction19109.terms
theorem substitutionProof19109 : IsMapEvaluation generatorImages reduction19109.relations [2220] reduction19109.output := by lin_cert using reduction19109.terms
def image19110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19110 : InImage map_22_246 image19110 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19110 : Bundle := named_bundle% "RealMapCertificates/relations/basis19110.json"
theorem reductionProof19110 : EqualModuloRelations reduction19110.relations reduction19110.input reduction19110.output := by lin_cert using reduction19110.terms
theorem substitutionProof19110 : IsMapEvaluation generatorImages reduction19110.relations [2219] reduction19110.output := by lin_cert using reduction19110.terms
def image19111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19111 : InImage map_22_246 image19111 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19111 : Bundle := named_bundle% "RealMapCertificates/relations/basis19111.json"
theorem reductionProof19111 : EqualModuloRelations reduction19111.relations reduction19111.input reduction19111.output := by lin_cert using reduction19111.terms
theorem substitutionProof19111 : IsMapEvaluation generatorImages reduction19111.relations [1,2142] reduction19111.output := by lin_cert using reduction19111.terms
def image19112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19112 : InImage map_22_246 image19112 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19112 : Bundle := named_bundle% "RealMapCertificates/relations/basis19112.json"
theorem reductionProof19112 : EqualModuloRelations reduction19112.relations reduction19112.input reduction19112.output := by lin_cert using reduction19112.terms
theorem substitutionProof19112 : IsMapEvaluation generatorImages reduction19112.relations [0,2181] reduction19112.output := by lin_cert using reduction19112.terms
def image19113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19113 : InImage map_22_246 image19113 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19113 : Bundle := named_bundle% "RealMapCertificates/relations/basis19113.json"
theorem reductionProof19113 : EqualModuloRelations reduction19113.relations reduction19113.input reduction19113.output := by lin_cert using reduction19113.terms
theorem substitutionProof19113 : IsMapEvaluation generatorImages reduction19113.relations [0,2179] reduction19113.output := by lin_cert using reduction19113.terms
def map_22_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19341 : InImage map_22_247 image19341 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19341 : Bundle := named_bundle% "RealMapCertificates/relations/basis19341.json"
theorem reductionProof19341 : EqualModuloRelations reduction19341.relations reduction19341.input reduction19341.output := by lin_cert using reduction19341.terms
theorem substitutionProof19341 : IsMapEvaluation generatorImages reduction19341.relations [2257] reduction19341.output := by lin_cert using reduction19341.terms
def image19342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19342 : InImage map_22_247 image19342 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19342 : Bundle := named_bundle% "RealMapCertificates/relations/basis19342.json"
theorem reductionProof19342 : EqualModuloRelations reduction19342.relations reduction19342.input reduction19342.output := by lin_cert using reduction19342.terms
theorem substitutionProof19342 : IsMapEvaluation generatorImages reduction19342.relations [13,1615] reduction19342.output := by lin_cert using reduction19342.terms
def image19343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19343 : InImage map_22_247 image19343 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19343 : Bundle := named_bundle% "RealMapCertificates/relations/basis19343.json"
theorem reductionProof19343 : EqualModuloRelations reduction19343.relations reduction19343.input reduction19343.output := by lin_cert using reduction19343.terms
theorem substitutionProof19343 : IsMapEvaluation generatorImages reduction19343.relations [1,2180] reduction19343.output := by lin_cert using reduction19343.terms
def image19344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19344 : InImage map_22_247 image19344 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19344 : Bundle := named_bundle% "RealMapCertificates/relations/basis19344.json"
theorem reductionProof19344 : EqualModuloRelations reduction19344.relations reduction19344.input reduction19344.output := by lin_cert using reduction19344.terms
theorem substitutionProof19344 : IsMapEvaluation generatorImages reduction19344.relations [0,2222] reduction19344.output := by lin_cert using reduction19344.terms
def map_22_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19608 : InImage map_22_248 image19608 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19608 : Bundle := named_bundle% "RealMapCertificates/relations/basis19608.json"
theorem reductionProof19608 : EqualModuloRelations reduction19608.relations reduction19608.input reduction19608.output := by lin_cert using reduction19608.terms
theorem substitutionProof19608 : IsMapEvaluation generatorImages reduction19608.relations [2287] reduction19608.output := by lin_cert using reduction19608.terms
def image19609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19609 : InImage map_22_248 image19609 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19609 : Bundle := named_bundle% "RealMapCertificates/relations/basis19609.json"
theorem reductionProof19609 : EqualModuloRelations reduction19609.relations reduction19609.input reduction19609.output := by lin_cert using reduction19609.terms
theorem substitutionProof19609 : IsMapEvaluation generatorImages reduction19609.relations [2286] reduction19609.output := by lin_cert using reduction19609.terms
def image19610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19610 : InImage map_22_248 image19610 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19610 : Bundle := named_bundle% "RealMapCertificates/relations/basis19610.json"
theorem reductionProof19610 : EqualModuloRelations reduction19610.relations reduction19610.input reduction19610.output := by lin_cert using reduction19610.terms
theorem substitutionProof19610 : IsMapEvaluation generatorImages reduction19610.relations [2285] reduction19610.output := by lin_cert using reduction19610.terms
def image19611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19611 : InImage map_22_248 image19611 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19611 : Bundle := named_bundle% "RealMapCertificates/relations/basis19611.json"
theorem reductionProof19611 : EqualModuloRelations reduction19611.relations reduction19611.input reduction19611.output := by lin_cert using reduction19611.terms
theorem substitutionProof19611 : IsMapEvaluation generatorImages reduction19611.relations [13,13,75,376] reduction19611.output := by lin_cert using reduction19611.terms
def image19612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19612 : InImage map_22_248 image19612 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19612 : Bundle := named_bundle% "RealMapCertificates/relations/basis19612.json"
theorem reductionProof19612 : EqualModuloRelations reduction19612.relations reduction19612.input reduction19612.output := by lin_cert using reduction19612.terms
theorem substitutionProof19612 : IsMapEvaluation generatorImages reduction19612.relations [8,8,127,324] reduction19612.output := by lin_cert using reduction19612.terms
def image19613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19613 : InImage map_22_248 image19613 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19613 : Bundle := named_bundle% "RealMapCertificates/relations/basis19613.json"
theorem reductionProof19613 : EqualModuloRelations reduction19613.relations reduction19613.input reduction19613.output := by lin_cert using reduction19613.terms
theorem substitutionProof19613 : IsMapEvaluation generatorImages reduction19613.relations [1,2222] reduction19613.output := by lin_cert using reduction19613.terms
def map_22_249 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19913 : InImage map_22_249 image19913 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19913 : Bundle := named_bundle% "RealMapCertificates/relations/basis19913.json"
theorem reductionProof19913 : EqualModuloRelations reduction19913.relations reduction19913.input reduction19913.output := by lin_cert using reduction19913.terms
theorem substitutionProof19913 : IsMapEvaluation generatorImages reduction19913.relations [2320] reduction19913.output := by lin_cert using reduction19913.terms
def image19914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19914 : InImage map_22_249 image19914 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19914 : Bundle := named_bundle% "RealMapCertificates/relations/basis19914.json"
theorem reductionProof19914 : EqualModuloRelations reduction19914.relations reduction19914.input reduction19914.output := by lin_cert using reduction19914.terms
theorem substitutionProof19914 : IsMapEvaluation generatorImages reduction19914.relations [13,190,288] reduction19914.output := by lin_cert using reduction19914.terms
def image19915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19915 : InImage map_22_249 image19915 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19915 : Bundle := named_bundle% "RealMapCertificates/relations/basis19915.json"
theorem reductionProof19915 : EqualModuloRelations reduction19915.relations reduction19915.input reduction19915.output := by lin_cert using reduction19915.terms
theorem substitutionProof19915 : IsMapEvaluation generatorImages reduction19915.relations [2,2181] reduction19915.output := by lin_cert using reduction19915.terms
def image19916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19916 : InImage map_22_249 image19916 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19916 : Bundle := named_bundle% "RealMapCertificates/relations/basis19916.json"
theorem reductionProof19916 : EqualModuloRelations reduction19916.relations reduction19916.input reduction19916.output := by lin_cert using reduction19916.terms
theorem substitutionProof19916 : IsMapEvaluation generatorImages reduction19916.relations [0,2290] reduction19916.output := by lin_cert using reduction19916.terms
def image19917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19917 : InImage map_22_249 image19917 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19917 : Bundle := named_bundle% "RealMapCertificates/relations/basis19917.json"
theorem reductionProof19917 : EqualModuloRelations reduction19917.relations reduction19917.input reduction19917.output := by lin_cert using reduction19917.terms
theorem substitutionProof19917 : IsMapEvaluation generatorImages reduction19917.relations [0,2288] reduction19917.output := by lin_cert using reduction19917.terms
def map_22_250 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20137 : InImage map_22_250 image20137 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20137 : Bundle := named_bundle% "RealMapCertificates/relations/basis20137.json"
theorem reductionProof20137 : EqualModuloRelations reduction20137.relations reduction20137.input reduction20137.output := by lin_cert using reduction20137.terms
theorem substitutionProof20137 : IsMapEvaluation generatorImages reduction20137.relations [2354] reduction20137.output := by lin_cert using reduction20137.terms
def image20138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20138 : InImage map_22_250 image20138 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20138 : Bundle := named_bundle% "RealMapCertificates/relations/basis20138.json"
theorem reductionProof20138 : EqualModuloRelations reduction20138.relations reduction20138.input reduction20138.output := by lin_cert using reduction20138.terms
theorem substitutionProof20138 : IsMapEvaluation generatorImages reduction20138.relations [2353] reduction20138.output := by lin_cert using reduction20138.terms
def image20139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20139 : InImage map_22_250 image20139 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20139 : Bundle := named_bundle% "RealMapCertificates/relations/basis20139.json"
theorem reductionProof20139 : EqualModuloRelations reduction20139.relations reduction20139.input reduction20139.output := by lin_cert using reduction20139.terms
theorem substitutionProof20139 : IsMapEvaluation generatorImages reduction20139.relations [2352] reduction20139.output := by lin_cert using reduction20139.terms
def image20140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20140 : InImage map_22_250 image20140 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20140 : Bundle := named_bundle% "RealMapCertificates/relations/basis20140.json"
theorem reductionProof20140 : EqualModuloRelations reduction20140.relations reduction20140.input reduction20140.output := by lin_cert using reduction20140.terms
theorem substitutionProof20140 : IsMapEvaluation generatorImages reduction20140.relations [2351] reduction20140.output := by lin_cert using reduction20140.terms
def image20141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20141 : InImage map_22_250 image20141 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20141 : Bundle := named_bundle% "RealMapCertificates/relations/basis20141.json"
theorem reductionProof20141 : EqualModuloRelations reduction20141.relations reduction20141.input reduction20141.output := by lin_cert using reduction20141.terms
theorem substitutionProof20141 : IsMapEvaluation generatorImages reduction20141.relations [13,1671] reduction20141.output := by lin_cert using reduction20141.terms
def image20142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20142 : InImage map_22_250 image20142 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20142 : Bundle := named_bundle% "RealMapCertificates/relations/basis20142.json"
theorem reductionProof20142 : EqualModuloRelations reduction20142.relations reduction20142.input reduction20142.output := by lin_cert using reduction20142.terms
theorem substitutionProof20142 : IsMapEvaluation generatorImages reduction20142.relations [1,2290] reduction20142.output := by lin_cert using reduction20142.terms
def image20143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20143 : InImage map_22_250 image20143 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20143 : Bundle := named_bundle% "RealMapCertificates/relations/basis20143.json"
theorem reductionProof20143 : EqualModuloRelations reduction20143.relations reduction20143.input reduction20143.output := by lin_cert using reduction20143.terms
theorem substitutionProof20143 : IsMapEvaluation generatorImages reduction20143.relations [1,2289] reduction20143.output := by lin_cert using reduction20143.terms
def image20144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20144 : InImage map_22_250 image20144 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20144 : Bundle := named_bundle% "RealMapCertificates/relations/basis20144.json"
theorem reductionProof20144 : EqualModuloRelations reduction20144.relations reduction20144.input reduction20144.output := by lin_cert using reduction20144.terms
theorem substitutionProof20144 : IsMapEvaluation generatorImages reduction20144.relations [1,2288] reduction20144.output := by lin_cert using reduction20144.terms
def image20145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20145 : InImage map_22_250 image20145 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20145 : Bundle := named_bundle% "RealMapCertificates/relations/basis20145.json"
theorem reductionProof20145 : EqualModuloRelations reduction20145.relations reduction20145.input reduction20145.output := by lin_cert using reduction20145.terms
theorem substitutionProof20145 : IsMapEvaluation generatorImages reduction20145.relations [0,0,0,260,324] reduction20145.output := by lin_cert using reduction20145.terms
def map_22_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20424 : InImage map_22_251 image20424 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20424 : Bundle := named_bundle% "RealMapCertificates/relations/basis20424.json"
theorem reductionProof20424 : EqualModuloRelations reduction20424.relations reduction20424.input reduction20424.output := by lin_cert using reduction20424.terms
theorem substitutionProof20424 : IsMapEvaluation generatorImages reduction20424.relations [2387] reduction20424.output := by lin_cert using reduction20424.terms
def image20425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20425 : InImage map_22_251 image20425 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20425 : Bundle := named_bundle% "RealMapCertificates/relations/basis20425.json"
theorem reductionProof20425 : EqualModuloRelations reduction20425.relations reduction20425.input reduction20425.output := by lin_cert using reduction20425.terms
theorem substitutionProof20425 : IsMapEvaluation generatorImages reduction20425.relations [2386] reduction20425.output := by lin_cert using reduction20425.terms
def image20426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20426 : InImage map_22_251 image20426 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20426 : Bundle := named_bundle% "RealMapCertificates/relations/basis20426.json"
theorem reductionProof20426 : EqualModuloRelations reduction20426.relations reduction20426.input reduction20426.output := by lin_cert using reduction20426.terms
theorem substitutionProof20426 : IsMapEvaluation generatorImages reduction20426.relations [8,8,8,80,324] reduction20426.output := by lin_cert using reduction20426.terms
def image20427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20427 : InImage map_22_251 image20427 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20427 : Bundle := named_bundle% "RealMapCertificates/relations/basis20427.json"
theorem reductionProof20427 : EqualModuloRelations reduction20427.relations reduction20427.input reduction20427.output := by lin_cert using reduction20427.terms
theorem substitutionProof20427 : IsMapEvaluation generatorImages reduction20427.relations [0,2355] reduction20427.output := by lin_cert using reduction20427.terms
def image20428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20428 : InImage map_22_251 image20428 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20428 : Bundle := named_bundle% "RealMapCertificates/relations/basis20428.json"
theorem reductionProof20428 : EqualModuloRelations reduction20428.relations reduction20428.input reduction20428.output := by lin_cert using reduction20428.terms
theorem substitutionProof20428 : IsMapEvaluation generatorImages reduction20428.relations [0,0,0,2291] reduction20428.output := by lin_cert using reduction20428.terms
def image20429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20429 : InImage map_22_251 image20429 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20429 : Bundle := named_bundle% "RealMapCertificates/relations/basis20429.json"
theorem reductionProof20429 : EqualModuloRelations reduction20429.relations reduction20429.input reduction20429.output := by lin_cert using reduction20429.terms
theorem substitutionProof20429 : IsMapEvaluation generatorImages reduction20429.relations [0,0,0,0,2265] reduction20429.output := by lin_cert using reduction20429.terms
def map_22_252 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20744 : InImage map_22_252 image20744 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20744 : Bundle := named_bundle% "RealMapCertificates/relations/basis20744.json"
theorem reductionProof20744 : EqualModuloRelations reduction20744.relations reduction20744.input reduction20744.output := by lin_cert using reduction20744.terms
theorem substitutionProof20744 : IsMapEvaluation generatorImages reduction20744.relations [2423] reduction20744.output := by lin_cert using reduction20744.terms
def image20745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20745 : InImage map_22_252 image20745 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20745 : Bundle := named_bundle% "RealMapCertificates/relations/basis20745.json"
theorem reductionProof20745 : EqualModuloRelations reduction20745.relations reduction20745.input reduction20745.output := by lin_cert using reduction20745.terms
theorem substitutionProof20745 : IsMapEvaluation generatorImages reduction20745.relations [2422] reduction20745.output := by lin_cert using reduction20745.terms
def image20746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20746 : InImage map_22_252 image20746 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20746 : Bundle := named_bundle% "RealMapCertificates/relations/basis20746.json"
theorem reductionProof20746 : EqualModuloRelations reduction20746.relations reduction20746.input reduction20746.output := by lin_cert using reduction20746.terms
theorem substitutionProof20746 : IsMapEvaluation generatorImages reduction20746.relations [2421] reduction20746.output := by lin_cert using reduction20746.terms
def image20747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20747 : InImage map_22_252 image20747 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20747 : Bundle := named_bundle% "RealMapCertificates/relations/basis20747.json"
theorem reductionProof20747 : EqualModuloRelations reduction20747.relations reduction20747.input reduction20747.output := by lin_cert using reduction20747.terms
theorem substitutionProof20747 : IsMapEvaluation generatorImages reduction20747.relations [67,988] reduction20747.output := by lin_cert using reduction20747.terms
def image20748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20748 : InImage map_22_252 image20748 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20748 : Bundle := named_bundle% "RealMapCertificates/relations/basis20748.json"
theorem reductionProof20748 : EqualModuloRelations reduction20748.relations reduction20748.input reduction20748.output := by lin_cert using reduction20748.terms
theorem substitutionProof20748 : IsMapEvaluation generatorImages reduction20748.relations [0,2390] reduction20748.output := by lin_cert using reduction20748.terms
def image20749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20749 : InImage map_22_252 image20749 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20749 : Bundle := named_bundle% "RealMapCertificates/relations/basis20749.json"
theorem reductionProof20749 : EqualModuloRelations reduction20749.relations reduction20749.input reduction20749.output := by lin_cert using reduction20749.terms
theorem substitutionProof20749 : IsMapEvaluation generatorImages reduction20749.relations [0,2389] reduction20749.output := by lin_cert using reduction20749.terms
def image20750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20750 : InImage map_22_252 image20750 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20750 : Bundle := named_bundle% "RealMapCertificates/relations/basis20750.json"
theorem reductionProof20750 : EqualModuloRelations reduction20750.relations reduction20750.input reduction20750.output := by lin_cert using reduction20750.terms
theorem substitutionProof20750 : IsMapEvaluation generatorImages reduction20750.relations [0,2388] reduction20750.output := by lin_cert using reduction20750.terms
def map_22_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20965 : InImage map_22_253 image20965 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20965 : Bundle := named_bundle% "RealMapCertificates/relations/basis20965.json"
theorem reductionProof20965 : EqualModuloRelations reduction20965.relations reduction20965.input reduction20965.output := by lin_cert using reduction20965.terms
theorem substitutionProof20965 : IsMapEvaluation generatorImages reduction20965.relations [2458] reduction20965.output := by lin_cert using reduction20965.terms
def image20966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20966 : InImage map_22_253 image20966 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20966 : Bundle := named_bundle% "RealMapCertificates/relations/basis20966.json"
theorem reductionProof20966 : EqualModuloRelations reduction20966.relations reduction20966.input reduction20966.output := by lin_cert using reduction20966.terms
theorem substitutionProof20966 : IsMapEvaluation generatorImages reduction20966.relations [2457] reduction20966.output := by lin_cert using reduction20966.terms
def image20967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20967 : InImage map_22_253 image20967 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20967 : Bundle := named_bundle% "RealMapCertificates/relations/basis20967.json"
theorem reductionProof20967 : EqualModuloRelations reduction20967.relations reduction20967.input reduction20967.output := by lin_cert using reduction20967.terms
theorem substitutionProof20967 : IsMapEvaluation generatorImages reduction20967.relations [2456] reduction20967.output := by lin_cert using reduction20967.terms
def image20968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20968 : InImage map_22_253 image20968 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20968 : Bundle := named_bundle% "RealMapCertificates/relations/basis20968.json"
theorem reductionProof20968 : EqualModuloRelations reduction20968.relations reduction20968.input reduction20968.output := by lin_cert using reduction20968.terms
theorem substitutionProof20968 : IsMapEvaluation generatorImages reduction20968.relations [2455] reduction20968.output := by lin_cert using reduction20968.terms
def image20969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20969 : InImage map_22_253 image20969 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20969 : Bundle := named_bundle% "RealMapCertificates/relations/basis20969.json"
theorem reductionProof20969 : EqualModuloRelations reduction20969.relations reduction20969.input reduction20969.output := by lin_cert using reduction20969.terms
theorem substitutionProof20969 : IsMapEvaluation generatorImages reduction20969.relations [288,335] reduction20969.output := by lin_cert using reduction20969.terms
def image20970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20970 : InImage map_22_253 image20970 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20970 : Bundle := named_bundle% "RealMapCertificates/relations/basis20970.json"
theorem reductionProof20970 : EqualModuloRelations reduction20970.relations reduction20970.input reduction20970.output := by lin_cert using reduction20970.terms
theorem substitutionProof20970 : IsMapEvaluation generatorImages reduction20970.relations [13,1728] reduction20970.output := by lin_cert using reduction20970.terms
def image20971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20971 : InImage map_22_253 image20971 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20971 : Bundle := named_bundle% "RealMapCertificates/relations/basis20971.json"
theorem reductionProof20971 : EqualModuloRelations reduction20971.relations reduction20971.input reduction20971.output := by lin_cert using reduction20971.terms
theorem substitutionProof20971 : IsMapEvaluation generatorImages reduction20971.relations [0,0,0,278,324] reduction20971.output := by lin_cert using reduction20971.terms
def map_22_254 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21262 : InImage map_22_254 image21262 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21262 : Bundle := named_bundle% "RealMapCertificates/relations/basis21262.json"
theorem reductionProof21262 : EqualModuloRelations reduction21262.relations reduction21262.input reduction21262.output := by lin_cert using reduction21262.terms
theorem substitutionProof21262 : IsMapEvaluation generatorImages reduction21262.relations [2509] reduction21262.output := by lin_cert using reduction21262.terms
def image21263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21263 : InImage map_22_254 image21263 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21263 : Bundle := named_bundle% "RealMapCertificates/relations/basis21263.json"
theorem reductionProof21263 : EqualModuloRelations reduction21263.relations reduction21263.input reduction21263.output := by lin_cert using reduction21263.terms
theorem substitutionProof21263 : IsMapEvaluation generatorImages reduction21263.relations [2508] reduction21263.output := by lin_cert using reduction21263.terms
def image21264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21264 : InImage map_22_254 image21264 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21264 : Bundle := named_bundle% "RealMapCertificates/relations/basis21264.json"
theorem reductionProof21264 : EqualModuloRelations reduction21264.relations reduction21264.input reduction21264.output := by lin_cert using reduction21264.terms
theorem substitutionProof21264 : IsMapEvaluation generatorImages reduction21264.relations [2507] reduction21264.output := by lin_cert using reduction21264.terms
def image21265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21265 : InImage map_22_254 image21265 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21265 : Bundle := named_bundle% "RealMapCertificates/relations/basis21265.json"
theorem reductionProof21265 : EqualModuloRelations reduction21265.relations reduction21265.input reduction21265.output := by lin_cert using reduction21265.terms
theorem substitutionProof21265 : IsMapEvaluation generatorImages reduction21265.relations [2506] reduction21265.output := by lin_cert using reduction21265.terms
def image21266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21266 : InImage map_22_254 image21266 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21266 : Bundle := named_bundle% "RealMapCertificates/relations/basis21266.json"
theorem reductionProof21266 : EqualModuloRelations reduction21266.relations reduction21266.input reduction21266.output := by lin_cert using reduction21266.terms
theorem substitutionProof21266 : IsMapEvaluation generatorImages reduction21266.relations [67,1020] reduction21266.output := by lin_cert using reduction21266.terms
def image21267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21267 : InImage map_22_254 image21267 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21267 : Bundle := named_bundle% "RealMapCertificates/relations/basis21267.json"
theorem reductionProof21267 : EqualModuloRelations reduction21267.relations reduction21267.input reduction21267.output := by lin_cert using reduction21267.terms
theorem substitutionProof21267 : IsMapEvaluation generatorImages reduction21267.relations [8,8,9,80,324] reduction21267.output := by lin_cert using reduction21267.terms
def image21268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21268 : InImage map_22_254 image21268 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21268 : Bundle := named_bundle% "RealMapCertificates/relations/basis21268.json"
theorem reductionProof21268 : EqualModuloRelations reduction21268.relations reduction21268.input reduction21268.output := by lin_cert using reduction21268.terms
theorem substitutionProof21268 : IsMapEvaluation generatorImages reduction21268.relations [0,2459] reduction21268.output := by lin_cert using reduction21268.terms
def image21269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21269 : InImage map_22_254 image21269 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21269 : Bundle := named_bundle% "RealMapCertificates/relations/basis21269.json"
theorem reductionProof21269 : EqualModuloRelations reduction21269.relations reduction21269.input reduction21269.output := by lin_cert using reduction21269.terms
theorem substitutionProof21269 : IsMapEvaluation generatorImages reduction21269.relations [0,0,2425] reduction21269.output := by lin_cert using reduction21269.terms
end RealMapCertificates
