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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 18 => []
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 40 => [[4,5,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 65 => [[2,4,4,4,4,4]]
  | 67 => []
  | 69 => []
  | 75 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 87 => [[3,4,4,4,4,4]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 113 => [[0,8,12]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 206 => [[4,6,8,12]]
  | 245 => [[4,4,7,7,12]]
  | 299 => []
  | 319 => []
  | 324 => []
  | 333 => []
  | 366 => []
  | 1004 => []
  | 1055 => []
  | 1056 => []
  | 1088 => []
  | 1695 => []
  | 1843 => []
  | 1873 => []
  | 1948 => []
  | 2012 => []
  | 2066 => []
  | 2288 => []
  | 2355 => []
  | 2389 => []
  | 2425 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2433 => []
  | 2459 => []
  | 2475 => []
  | 2478 => []
  | 2480 => []
  | 2510 => []
  | 2511 => []
  | 2522 => []
  | 2560 => []
  | 2561 => []
  | 2597 => []
  | 2598 => []
  | 2599 => []
  | 2600 => []
  | 2601 => []
  | 2603 => []
  | 2641 => []
  | 2642 => []
  | 2643 => []
  | 2645 => []
  | 2647 => []
  | 2650 => []
  | 2689 => []
  | 2690 => []
  | 2761 => []
  | 2762 => []
  | 2763 => []
  | 2818 => []
  | 2819 => []
  | 2820 => []
  | 2822 => []
  | 2875 => []
  | 2876 => []
  | 2877 => []
  | _ => []
def map_22_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21615 : InImage map_22_255 image21615 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21615 : Bundle := named_bundle% "RealMapCertificates/relations/basis21615.json"
theorem reductionProof21615 : EqualModuloRelations reduction21615.relations reduction21615.input reduction21615.output := by lin_cert using reduction21615.terms
theorem substitutionProof21615 : IsMapEvaluation generatorImages reduction21615.relations [2561] reduction21615.output := by lin_cert using reduction21615.terms
def image21616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21616 : InImage map_22_255 image21616 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21616 : Bundle := named_bundle% "RealMapCertificates/relations/basis21616.json"
theorem reductionProof21616 : EqualModuloRelations reduction21616.relations reduction21616.input reduction21616.output := by lin_cert using reduction21616.terms
theorem substitutionProof21616 : IsMapEvaluation generatorImages reduction21616.relations [2560] reduction21616.output := by lin_cert using reduction21616.terms
def image21617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21617 : InImage map_22_255 image21617 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21617 : Bundle := named_bundle% "RealMapCertificates/relations/basis21617.json"
theorem reductionProof21617 : EqualModuloRelations reduction21617.relations reduction21617.input reduction21617.output := by lin_cert using reduction21617.terms
theorem substitutionProof21617 : IsMapEvaluation generatorImages reduction21617.relations [9,1843] reduction21617.output := by lin_cert using reduction21617.terms
def image21618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21618 : InImage map_22_255 image21618 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21618 : Bundle := named_bundle% "RealMapCertificates/relations/basis21618.json"
theorem reductionProof21618 : EqualModuloRelations reduction21618.relations reduction21618.input reduction21618.output := by lin_cert using reduction21618.terms
theorem substitutionProof21618 : IsMapEvaluation generatorImages reduction21618.relations [1,2459] reduction21618.output := by lin_cert using reduction21618.terms
def image21619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21619 : InImage map_22_255 image21619 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21619 : Bundle := named_bundle% "RealMapCertificates/relations/basis21619.json"
theorem reductionProof21619 : EqualModuloRelations reduction21619.relations reduction21619.input reduction21619.output := by lin_cert using reduction21619.terms
theorem substitutionProof21619 : IsMapEvaluation generatorImages reduction21619.relations [0,2511] reduction21619.output := by lin_cert using reduction21619.terms
def image21620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21620 : InImage map_22_255 image21620 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21620 : Bundle := named_bundle% "RealMapCertificates/relations/basis21620.json"
theorem reductionProof21620 : EqualModuloRelations reduction21620.relations reduction21620.input reduction21620.output := by lin_cert using reduction21620.terms
theorem substitutionProof21620 : IsMapEvaluation generatorImages reduction21620.relations [0,2510] reduction21620.output := by lin_cert using reduction21620.terms
def map_22_256 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image21867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21867 : InImage map_22_256 image21867 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction21867 : Bundle := named_bundle% "RealMapCertificates/relations/basis21867.json"
theorem reductionProof21867 : EqualModuloRelations reduction21867.relations reduction21867.input reduction21867.output := by lin_cert using reduction21867.terms
theorem substitutionProof21867 : IsMapEvaluation generatorImages reduction21867.relations [2600] reduction21867.output := by lin_cert using reduction21867.terms
def image21868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21868 : InImage map_22_256 image21868 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction21868 : Bundle := named_bundle% "RealMapCertificates/relations/basis21868.json"
theorem reductionProof21868 : EqualModuloRelations reduction21868.relations reduction21868.input reduction21868.output := by lin_cert using reduction21868.terms
theorem substitutionProof21868 : IsMapEvaluation generatorImages reduction21868.relations [2599] reduction21868.output := by lin_cert using reduction21868.terms
def image21869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21869 : InImage map_22_256 image21869 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction21869 : Bundle := named_bundle% "RealMapCertificates/relations/basis21869.json"
theorem reductionProof21869 : EqualModuloRelations reduction21869.relations reduction21869.input reduction21869.output := by lin_cert using reduction21869.terms
theorem substitutionProof21869 : IsMapEvaluation generatorImages reduction21869.relations [2598] reduction21869.output := by lin_cert using reduction21869.terms
def image21870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21870 : InImage map_22_256 image21870 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction21870 : Bundle := named_bundle% "RealMapCertificates/relations/basis21870.json"
theorem reductionProof21870 : EqualModuloRelations reduction21870.relations reduction21870.input reduction21870.output := by lin_cert using reduction21870.terms
theorem substitutionProof21870 : IsMapEvaluation generatorImages reduction21870.relations [2597] reduction21870.output := by lin_cert using reduction21870.terms
def image21871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21871 : InImage map_22_256 image21871 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction21871 : Bundle := named_bundle% "RealMapCertificates/relations/basis21871.json"
theorem reductionProof21871 : EqualModuloRelations reduction21871.relations reduction21871.input reduction21871.output := by lin_cert using reduction21871.terms
theorem substitutionProof21871 : IsMapEvaluation generatorImages reduction21871.relations [75,1004] reduction21871.output := by lin_cert using reduction21871.terms
def image21872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21872 : InImage map_22_256 image21872 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction21872 : Bundle := named_bundle% "RealMapCertificates/relations/basis21872.json"
theorem reductionProof21872 : EqualModuloRelations reduction21872.relations reduction21872.input reduction21872.output := by lin_cert using reduction21872.terms
theorem substitutionProof21872 : IsMapEvaluation generatorImages reduction21872.relations [9,1873] reduction21872.output := by lin_cert using reduction21872.terms
def image21873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21873 : InImage map_22_256 image21873 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction21873 : Bundle := named_bundle% "RealMapCertificates/relations/basis21873.json"
theorem reductionProof21873 : EqualModuloRelations reduction21873.relations reduction21873.input reduction21873.output := by lin_cert using reduction21873.terms
theorem substitutionProof21873 : IsMapEvaluation generatorImages reduction21873.relations [3,2288] reduction21873.output := by lin_cert using reduction21873.terms
def image21874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21874 : InImage map_22_256 image21874 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction21874 : Bundle := named_bundle% "RealMapCertificates/relations/basis21874.json"
theorem reductionProof21874 : EqualModuloRelations reduction21874.relations reduction21874.input reduction21874.output := by lin_cert using reduction21874.terms
theorem substitutionProof21874 : IsMapEvaluation generatorImages reduction21874.relations [1,64,64,324] reduction21874.output := by lin_cert using reduction21874.terms
def image21875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21875 : InImage map_22_256 image21875 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction21875 : Bundle := named_bundle% "RealMapCertificates/relations/basis21875.json"
theorem reductionProof21875 : EqualModuloRelations reduction21875.relations reduction21875.input reduction21875.output := by lin_cert using reduction21875.terms
theorem substitutionProof21875 : IsMapEvaluation generatorImages reduction21875.relations [1,1,2425] reduction21875.output := by lin_cert using reduction21875.terms
def image21876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21876 : InImage map_22_256 image21876 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction21876 : Bundle := named_bundle% "RealMapCertificates/relations/basis21876.json"
theorem reductionProof21876 : EqualModuloRelations reduction21876.relations reduction21876.input reduction21876.output := by lin_cert using reduction21876.terms
theorem substitutionProof21876 : IsMapEvaluation generatorImages reduction21876.relations [0,0,299,324] reduction21876.output := by lin_cert using reduction21876.terms
def image21877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21877 : InImage map_22_256 image21877 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction21877 : Bundle := named_bundle% "RealMapCertificates/relations/basis21877.json"
theorem reductionProof21877 : EqualModuloRelations reduction21877.relations reduction21877.input reduction21877.output := by lin_cert using reduction21877.terms
theorem substitutionProof21877 : IsMapEvaluation generatorImages reduction21877.relations [0,0,0,0,2429] reduction21877.output := by lin_cert using reduction21877.terms
def map_22_257 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22212 : InImage map_22_257 image22212 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22212 : Bundle := named_bundle% "RealMapCertificates/relations/basis22212.json"
theorem reductionProof22212 : EqualModuloRelations reduction22212.relations reduction22212.input reduction22212.output := by lin_cert using reduction22212.terms
theorem substitutionProof22212 : IsMapEvaluation generatorImages reduction22212.relations [2641] reduction22212.output := by lin_cert using reduction22212.terms
def image22213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22213 : InImage map_22_257 image22213 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22213 : Bundle := named_bundle% "RealMapCertificates/relations/basis22213.json"
theorem reductionProof22213 : EqualModuloRelations reduction22213.relations reduction22213.input reduction22213.output := by lin_cert using reduction22213.terms
theorem substitutionProof22213 : IsMapEvaluation generatorImages reduction22213.relations [319,333] reduction22213.output := by lin_cert using reduction22213.terms
def image22214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22214 : InImage map_22_257 image22214 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22214 : Bundle := named_bundle% "RealMapCertificates/relations/basis22214.json"
theorem reductionProof22214 : EqualModuloRelations reduction22214.relations reduction22214.input reduction22214.output := by lin_cert using reduction22214.terms
theorem substitutionProof22214 : IsMapEvaluation generatorImages reduction22214.relations [8,8,13,80,324] reduction22214.output := by lin_cert using reduction22214.terms
def image22215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22215 : InImage map_22_257 image22215 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22215 : Bundle := named_bundle% "RealMapCertificates/relations/basis22215.json"
theorem reductionProof22215 : EqualModuloRelations reduction22215.relations reduction22215.input reduction22215.output := by lin_cert using reduction22215.terms
theorem substitutionProof22215 : IsMapEvaluation generatorImages reduction22215.relations [0,2603] reduction22215.output := by lin_cert using reduction22215.terms
def image22216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22216 : InImage map_22_257 image22216 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22216 : Bundle := named_bundle% "RealMapCertificates/relations/basis22216.json"
theorem reductionProof22216 : EqualModuloRelations reduction22216.relations reduction22216.input reduction22216.output := by lin_cert using reduction22216.terms
theorem substitutionProof22216 : IsMapEvaluation generatorImages reduction22216.relations [0,2601] reduction22216.output := by lin_cert using reduction22216.terms
def image22217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22217 : InImage map_22_257 image22217 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22217 : Bundle := named_bundle% "RealMapCertificates/relations/basis22217.json"
theorem reductionProof22217 : EqualModuloRelations reduction22217.relations reduction22217.input reduction22217.output := by lin_cert using reduction22217.terms
theorem substitutionProof22217 : IsMapEvaluation generatorImages reduction22217.relations [0,67,1056] reduction22217.output := by lin_cert using reduction22217.terms
def image22218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22218 : InImage map_22_257 image22218 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22218 : Bundle := named_bundle% "RealMapCertificates/relations/basis22218.json"
theorem reductionProof22218 : EqualModuloRelations reduction22218.relations reduction22218.input reduction22218.output := by lin_cert using reduction22218.terms
theorem substitutionProof22218 : IsMapEvaluation generatorImages reduction22218.relations [0,67,1055] reduction22218.output := by lin_cert using reduction22218.terms
def image22219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22219 : InImage map_22_257 image22219 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22219 : Bundle := named_bundle% "RealMapCertificates/relations/basis22219.json"
theorem reductionProof22219 : EqualModuloRelations reduction22219.relations reduction22219.input reduction22219.output := by lin_cert using reduction22219.terms
theorem substitutionProof22219 : IsMapEvaluation generatorImages reduction22219.relations [0,2,2425] reduction22219.output := by lin_cert using reduction22219.terms
def image22220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22220 : InImage map_22_257 image22220 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22220 : Bundle := named_bundle% "RealMapCertificates/relations/basis22220.json"
theorem reductionProof22220 : EqualModuloRelations reduction22220.relations reduction22220.input reduction22220.output := by lin_cert using reduction22220.terms
theorem substitutionProof22220 : IsMapEvaluation generatorImages reduction22220.relations [0,0,0,0,0,2431] reduction22220.output := by lin_cert using reduction22220.terms
def image22221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22221 : InImage map_22_257 image22221 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22221 : Bundle := named_bundle% "RealMapCertificates/relations/basis22221.json"
theorem reductionProof22221 : EqualModuloRelations reduction22221.relations reduction22221.input reduction22221.output := by lin_cert using reduction22221.terms
theorem substitutionProof22221 : IsMapEvaluation generatorImages reduction22221.relations [0,0,0,0,0,2430] reduction22221.output := by lin_cert using reduction22221.terms
def map_22_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22576 : InImage map_22_258 image22576 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22576 : Bundle := named_bundle% "RealMapCertificates/relations/basis22576.json"
theorem reductionProof22576 : EqualModuloRelations reduction22576.relations reduction22576.input reduction22576.output := by lin_cert using reduction22576.terms
theorem substitutionProof22576 : IsMapEvaluation generatorImages reduction22576.relations [2689] reduction22576.output := by lin_cert using reduction22576.terms
def image22577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22577 : InImage map_22_258 image22577 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22577 : Bundle := named_bundle% "RealMapCertificates/relations/basis22577.json"
theorem reductionProof22577 : EqualModuloRelations reduction22577.relations reduction22577.input reduction22577.output := by lin_cert using reduction22577.terms
theorem substitutionProof22577 : IsMapEvaluation generatorImages reduction22577.relations [67,1088] reduction22577.output := by lin_cert using reduction22577.terms
def image22578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22578 : InImage map_22_258 image22578 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22578 : Bundle := named_bundle% "RealMapCertificates/relations/basis22578.json"
theorem reductionProof22578 : EqualModuloRelations reduction22578.relations reduction22578.input reduction22578.output := by lin_cert using reduction22578.terms
theorem substitutionProof22578 : IsMapEvaluation generatorImages reduction22578.relations [8,2012] reduction22578.output := by lin_cert using reduction22578.terms
def image22579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22579 : InImage map_22_258 image22579 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22579 : Bundle := named_bundle% "RealMapCertificates/relations/basis22579.json"
theorem reductionProof22579 : EqualModuloRelations reduction22579.relations reduction22579.input reduction22579.output := by lin_cert using reduction22579.terms
theorem substitutionProof22579 : IsMapEvaluation generatorImages reduction22579.relations [7,2066] reduction22579.output := by lin_cert using reduction22579.terms
def image22580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22580 : InImage map_22_258 image22580 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22580 : Bundle := named_bundle% "RealMapCertificates/relations/basis22580.json"
theorem reductionProof22580 : EqualModuloRelations reduction22580.relations reduction22580.input reduction22580.output := by lin_cert using reduction22580.terms
theorem substitutionProof22580 : IsMapEvaluation generatorImages reduction22580.relations [3,2355] reduction22580.output := by lin_cert using reduction22580.terms
def image22581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22581 : InImage map_22_258 image22581 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22581 : Bundle := named_bundle% "RealMapCertificates/relations/basis22581.json"
theorem reductionProof22581 : EqualModuloRelations reduction22581.relations reduction22581.input reduction22581.output := by lin_cert using reduction22581.terms
theorem substitutionProof22581 : IsMapEvaluation generatorImages reduction22581.relations [0,2642] reduction22581.output := by lin_cert using reduction22581.terms
def image22582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22582 : InImage map_22_258 image22582 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22582 : Bundle := named_bundle% "RealMapCertificates/relations/basis22582.json"
theorem reductionProof22582 : EqualModuloRelations reduction22582.relations reduction22582.input reduction22582.output := by lin_cert using reduction22582.terms
theorem substitutionProof22582 : IsMapEvaluation generatorImages reduction22582.relations [0,0,0,0,0,2475] reduction22582.output := by lin_cert using reduction22582.terms
def image22583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22583 : InImage map_22_258 image22583 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22583 : Bundle := named_bundle% "RealMapCertificates/relations/basis22583.json"
theorem reductionProof22583 : EqualModuloRelations reduction22583.relations reduction22583.input reduction22583.output := by lin_cert using reduction22583.terms
theorem substitutionProof22583 : IsMapEvaluation generatorImages reduction22583.relations [0,0,0,0,0,0,2432] reduction22583.output := by lin_cert using reduction22583.terms
def map_22_259 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image22882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22882 : InImage map_22_259 image22882 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction22882 : Bundle := named_bundle% "RealMapCertificates/relations/basis22882.json"
theorem reductionProof22882 : EqualModuloRelations reduction22882.relations reduction22882.input reduction22882.output := by lin_cert using reduction22882.terms
theorem substitutionProof22882 : IsMapEvaluation generatorImages reduction22882.relations [2761] reduction22882.output := by lin_cert using reduction22882.terms
def image22883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22883 : InImage map_22_259 image22883 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction22883 : Bundle := named_bundle% "RealMapCertificates/relations/basis22883.json"
theorem reductionProof22883 : EqualModuloRelations reduction22883.relations reduction22883.input reduction22883.output := by lin_cert using reduction22883.terms
theorem substitutionProof22883 : IsMapEvaluation generatorImages reduction22883.relations [13,1873] reduction22883.output := by lin_cert using reduction22883.terms
def image22884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22884 : InImage map_22_259 image22884 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction22884 : Bundle := named_bundle% "RealMapCertificates/relations/basis22884.json"
theorem reductionProof22884 : EqualModuloRelations reduction22884.relations reduction22884.input reduction22884.output := by lin_cert using reduction22884.terms
theorem substitutionProof22884 : IsMapEvaluation generatorImages reduction22884.relations [9,1948] reduction22884.output := by lin_cert using reduction22884.terms
def image22885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22885 : InImage map_22_259 image22885 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction22885 : Bundle := named_bundle% "RealMapCertificates/relations/basis22885.json"
theorem reductionProof22885 : EqualModuloRelations reduction22885.relations reduction22885.input reduction22885.output := by lin_cert using reduction22885.terms
theorem substitutionProof22885 : IsMapEvaluation generatorImages reduction22885.relations [3,2389] reduction22885.output := by lin_cert using reduction22885.terms
def image22886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22886 : InImage map_22_259 image22886 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction22886 : Bundle := named_bundle% "RealMapCertificates/relations/basis22886.json"
theorem reductionProof22886 : EqualModuloRelations reduction22886.relations reduction22886.input reduction22886.output := by lin_cert using reduction22886.terms
theorem substitutionProof22886 : IsMapEvaluation generatorImages reduction22886.relations [1,2645] reduction22886.output := by lin_cert using reduction22886.terms
def image22887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22887 : InImage map_22_259 image22887 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction22887 : Bundle := named_bundle% "RealMapCertificates/relations/basis22887.json"
theorem reductionProof22887 : EqualModuloRelations reduction22887.relations reduction22887.input reduction22887.output := by lin_cert using reduction22887.terms
theorem substitutionProof22887 : IsMapEvaluation generatorImages reduction22887.relations [1,2643] reduction22887.output := by lin_cert using reduction22887.terms
def image22888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22888 : InImage map_22_259 image22888 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction22888 : Bundle := named_bundle% "RealMapCertificates/relations/basis22888.json"
theorem reductionProof22888 : EqualModuloRelations reduction22888.relations reduction22888.input reduction22888.output := by lin_cert using reduction22888.terms
theorem substitutionProof22888 : IsMapEvaluation generatorImages reduction22888.relations [1,2642] reduction22888.output := by lin_cert using reduction22888.terms
def image22889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22889 : InImage map_22_259 image22889 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction22889 : Bundle := named_bundle% "RealMapCertificates/relations/basis22889.json"
theorem reductionProof22889 : EqualModuloRelations reduction22889.relations reduction22889.input reduction22889.output := by lin_cert using reduction22889.terms
theorem substitutionProof22889 : IsMapEvaluation generatorImages reduction22889.relations [0,2690] reduction22889.output := by lin_cert using reduction22889.terms
def image22890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22890 : InImage map_22_259 image22890 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction22890 : Bundle := named_bundle% "RealMapCertificates/relations/basis22890.json"
theorem reductionProof22890 : EqualModuloRelations reduction22890.relations reduction22890.input reduction22890.output := by lin_cert using reduction22890.terms
theorem substitutionProof22890 : IsMapEvaluation generatorImages reduction22890.relations [0,0,2647] reduction22890.output := by lin_cert using reduction22890.terms
def image22891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22891 : InImage map_22_259 image22891 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction22891 : Bundle := named_bundle% "RealMapCertificates/relations/basis22891.json"
theorem reductionProof22891 : EqualModuloRelations reduction22891.relations reduction22891.input reduction22891.output := by lin_cert using reduction22891.terms
theorem substitutionProof22891 : IsMapEvaluation generatorImages reduction22891.relations [0,0,0,0,0,2522] reduction22891.output := by lin_cert using reduction22891.terms
def image22892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22892 : InImage map_22_259 image22892 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction22892 : Bundle := named_bundle% "RealMapCertificates/relations/basis22892.json"
theorem reductionProof22892 : EqualModuloRelations reduction22892.relations reduction22892.input reduction22892.output := by lin_cert using reduction22892.terms
theorem substitutionProof22892 : IsMapEvaluation generatorImages reduction22892.relations [0,0,0,0,0,0,2478] reduction22892.output := by lin_cert using reduction22892.terms
def image22893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22893 : InImage map_22_259 image22893 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction22893 : Bundle := named_bundle% "RealMapCertificates/relations/basis22893.json"
theorem reductionProof22893 : EqualModuloRelations reduction22893.relations reduction22893.input reduction22893.output := by lin_cert using reduction22893.terms
theorem substitutionProof22893 : IsMapEvaluation generatorImages reduction22893.relations [0,0,0,0,0,0,0,2433] reduction22893.output := by lin_cert using reduction22893.terms
def map_22_260 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23263 : InImage map_22_260 image23263 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23263 : Bundle := named_bundle% "RealMapCertificates/relations/basis23263.json"
theorem reductionProof23263 : EqualModuloRelations reduction23263.relations reduction23263.input reduction23263.output := by lin_cert using reduction23263.terms
theorem substitutionProof23263 : IsMapEvaluation generatorImages reduction23263.relations [2820] reduction23263.output := by lin_cert using reduction23263.terms
def image23264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23264 : InImage map_22_260 image23264 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23264 : Bundle := named_bundle% "RealMapCertificates/relations/basis23264.json"
theorem reductionProof23264 : EqualModuloRelations reduction23264.relations reduction23264.input reduction23264.output := by lin_cert using reduction23264.terms
theorem substitutionProof23264 : IsMapEvaluation generatorImages reduction23264.relations [2819] reduction23264.output := by lin_cert using reduction23264.terms
def image23265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23265 : InImage map_22_260 image23265 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23265 : Bundle := named_bundle% "RealMapCertificates/relations/basis23265.json"
theorem reductionProof23265 : EqualModuloRelations reduction23265.relations reduction23265.input reduction23265.output := by lin_cert using reduction23265.terms
theorem substitutionProof23265 : IsMapEvaluation generatorImages reduction23265.relations [2818] reduction23265.output := by lin_cert using reduction23265.terms
def image23266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23266 : InImage map_22_260 image23266 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23266 : Bundle := named_bundle% "RealMapCertificates/relations/basis23266.json"
theorem reductionProof23266 : EqualModuloRelations reduction23266.relations reduction23266.input reduction23266.output := by lin_cert using reduction23266.terms
theorem substitutionProof23266 : IsMapEvaluation generatorImages reduction23266.relations [319,366] reduction23266.output := by lin_cert using reduction23266.terms
def image23267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23267 : InImage map_22_260 image23267 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23267 : Bundle := named_bundle% "RealMapCertificates/relations/basis23267.json"
theorem reductionProof23267 : EqualModuloRelations reduction23267.relations reduction23267.input reduction23267.output := by lin_cert using reduction23267.terms
theorem substitutionProof23267 : IsMapEvaluation generatorImages reduction23267.relations [8,9,13,80,324] reduction23267.output := by lin_cert using reduction23267.terms
def image23268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23268 : InImage map_22_260 image23268 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23268 : Bundle := named_bundle% "RealMapCertificates/relations/basis23268.json"
theorem reductionProof23268 : EqualModuloRelations reduction23268.relations reduction23268.input reduction23268.output := by lin_cert using reduction23268.terms
theorem substitutionProof23268 : IsMapEvaluation generatorImages reduction23268.relations [2,2,2425] reduction23268.output := by lin_cert using reduction23268.terms
def image23269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23269 : InImage map_22_260 image23269 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23269 : Bundle := named_bundle% "RealMapCertificates/relations/basis23269.json"
theorem reductionProof23269 : EqualModuloRelations reduction23269.relations reduction23269.input reduction23269.output := by lin_cert using reduction23269.terms
theorem substitutionProof23269 : IsMapEvaluation generatorImages reduction23269.relations [0,2763] reduction23269.output := by lin_cert using reduction23269.terms
def image23270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23270 : InImage map_22_260 image23270 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23270 : Bundle := named_bundle% "RealMapCertificates/relations/basis23270.json"
theorem reductionProof23270 : EqualModuloRelations reduction23270.relations reduction23270.input reduction23270.output := by lin_cert using reduction23270.terms
theorem substitutionProof23270 : IsMapEvaluation generatorImages reduction23270.relations [0,0,0,2650] reduction23270.output := by lin_cert using reduction23270.terms
def image23271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23271 : InImage map_22_260 image23271 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23271 : Bundle := named_bundle% "RealMapCertificates/relations/basis23271.json"
theorem reductionProof23271 : EqualModuloRelations reduction23271.relations reduction23271.input reduction23271.output := by lin_cert using reduction23271.terms
theorem substitutionProof23271 : IsMapEvaluation generatorImages reduction23271.relations [0,0,0,0,0,0,0,2480] reduction23271.output := by lin_cert using reduction23271.terms
def map_22_261 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23701 : InImage map_22_261 image23701 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23701 : Bundle := named_bundle% "RealMapCertificates/relations/basis23701.json"
theorem reductionProof23701 : EqualModuloRelations reduction23701.relations reduction23701.input reduction23701.output := by lin_cert using reduction23701.terms
theorem substitutionProof23701 : IsMapEvaluation generatorImages reduction23701.relations [2877] reduction23701.output := by lin_cert using reduction23701.terms
def image23702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23702 : InImage map_22_261 image23702 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23702 : Bundle := named_bundle% "RealMapCertificates/relations/basis23702.json"
theorem reductionProof23702 : EqualModuloRelations reduction23702.relations reduction23702.input reduction23702.output := by lin_cert using reduction23702.terms
theorem substitutionProof23702 : IsMapEvaluation generatorImages reduction23702.relations [2876] reduction23702.output := by lin_cert using reduction23702.terms
def image23703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23703 : InImage map_22_261 image23703 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23703 : Bundle := named_bundle% "RealMapCertificates/relations/basis23703.json"
theorem reductionProof23703 : EqualModuloRelations reduction23703.relations reduction23703.input reduction23703.output := by lin_cert using reduction23703.terms
theorem substitutionProof23703 : IsMapEvaluation generatorImages reduction23703.relations [2875] reduction23703.output := by lin_cert using reduction23703.terms
def image23704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23704 : InImage map_22_261 image23704 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23704 : Bundle := named_bundle% "RealMapCertificates/relations/basis23704.json"
theorem reductionProof23704 : EqualModuloRelations reduction23704.relations reduction23704.input reduction23704.output := by lin_cert using reduction23704.terms
theorem substitutionProof23704 : IsMapEvaluation generatorImages reduction23704.relations [3,2459] reduction23704.output := by lin_cert using reduction23704.terms
def image23705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23705 : InImage map_22_261 image23705 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23705 : Bundle := named_bundle% "RealMapCertificates/relations/basis23705.json"
theorem reductionProof23705 : EqualModuloRelations reduction23705.relations reduction23705.input reduction23705.output := by lin_cert using reduction23705.terms
theorem substitutionProof23705 : IsMapEvaluation generatorImages reduction23705.relations [1,2762] reduction23705.output := by lin_cert using reduction23705.terms
def image23706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23706 : InImage map_22_261 image23706 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23706 : Bundle := named_bundle% "RealMapCertificates/relations/basis23706.json"
theorem reductionProof23706 : EqualModuloRelations reduction23706.relations reduction23706.input reduction23706.output := by lin_cert using reduction23706.terms
theorem substitutionProof23706 : IsMapEvaluation generatorImages reduction23706.relations [0,2822] reduction23706.output := by lin_cert using reduction23706.terms
def image23707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23707 : InImage map_22_261 image23707 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23707 : Bundle := named_bundle% "RealMapCertificates/relations/basis23707.json"
theorem reductionProof23707 : EqualModuloRelations reduction23707.relations reduction23707.input reduction23707.output := by lin_cert using reduction23707.terms
theorem substitutionProof23707 : IsMapEvaluation generatorImages reduction23707.relations [0,18,1695] reduction23707.output := by lin_cert using reduction23707.terms
def image23708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23708 : InImage map_22_261 image23708 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23708 : Bundle := named_bundle% "RealMapCertificates/relations/basis23708.json"
theorem reductionProof23708 : EqualModuloRelations reduction23708.relations reduction23708.input reduction23708.output := by lin_cert using reduction23708.terms
theorem substitutionProof23708 : IsMapEvaluation generatorImages reduction23708.relations [0,3,2425] reduction23708.output := by lin_cert using reduction23708.terms
def map_23_23 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image65 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation65 : InImage map_23_23 image65 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction65 : Bundle := named_bundle% "RealMapCertificates/relations/basis65.json"
theorem reductionProof65 : EqualModuloRelations reduction65.relations reduction65.input reduction65.output := by lin_cert using reduction65.terms
theorem substitutionProof65 : IsMapEvaluation generatorImages reduction65.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction65.output := by lin_cert using reduction65.terms
def map_23_66 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image419 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation419 : InImage map_23_66 image419 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction419 : Bundle := named_bundle% "RealMapCertificates/relations/basis419.json"
theorem reductionProof419 : EqualModuloRelations reduction419.relations reduction419.input reduction419.output := by lin_cert using reduction419.terms
theorem substitutionProof419 : IsMapEvaluation generatorImages reduction419.relations [0,0,65] reduction419.output := by lin_cert using reduction419.terms
def map_23_70 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation499 : InImage map_23_70 image499 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction499 : Bundle := named_bundle% "RealMapCertificates/relations/basis499.json"
theorem reductionProof499 : EqualModuloRelations reduction499.relations reduction499.input reduction499.output := by lin_cert using reduction499.terms
theorem substitutionProof499 : IsMapEvaluation generatorImages reduction499.relations [0,0,0,0,0,0,0,0,0,0,59] reduction499.output := by lin_cert using reduction499.terms
def map_23_71 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image519 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation519 : InImage map_23_71 image519 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction519 : Bundle := named_bundle% "RealMapCertificates/relations/basis519.json"
theorem reductionProof519 : EqualModuloRelations reduction519.relations reduction519.input reduction519.output := by lin_cert using reduction519.terms
theorem substitutionProof519 : IsMapEvaluation generatorImages reduction519.relations [87] reduction519.output := by lin_cert using reduction519.terms
def map_23_72 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation535 : InImage map_23_72 image535 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction535 : Bundle := named_bundle% "RealMapCertificates/relations/basis535.json"
theorem reductionProof535 : EqualModuloRelations reduction535.relations reduction535.input reduction535.output := by lin_cert using reduction535.terms
theorem substitutionProof535 : IsMapEvaluation generatorImages reduction535.relations [0,0,0,77] reduction535.output := by lin_cert using reduction535.terms
def map_23_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image669 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation669 : InImage map_23_78 image669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction669 : Bundle := named_bundle% "RealMapCertificates/relations/basis669.json"
theorem reductionProof669 : EqualModuloRelations reduction669.relations reduction669.input reduction669.output := by lin_cert using reduction669.terms
theorem substitutionProof669 : IsMapEvaluation generatorImages reduction669.relations [111] reduction669.output := by lin_cert using reduction669.terms
def map_23_81 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image737 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation737 : InImage map_23_81 image737 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction737 : Bundle := named_bundle% "RealMapCertificates/relations/basis737.json"
theorem reductionProof737 : EqualModuloRelations reduction737.relations reduction737.input reduction737.output := by lin_cert using reduction737.terms
theorem substitutionProof737 : IsMapEvaluation generatorImages reduction737.relations [117] reduction737.output := by lin_cert using reduction737.terms
def map_23_84 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image803 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation803 : InImage map_23_84 image803 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction803 : Bundle := named_bundle% "RealMapCertificates/relations/basis803.json"
theorem reductionProof803 : EqualModuloRelations reduction803.relations reduction803.input reduction803.output := by lin_cert using reduction803.terms
theorem substitutionProof803 : IsMapEvaluation generatorImages reduction803.relations [16,50] reduction803.output := by lin_cert using reduction803.terms
def map_23_85 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation840 : InImage map_23_85 image840 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction840 : Bundle := named_bundle% "RealMapCertificates/relations/basis840.json"
theorem reductionProof840 : EqualModuloRelations reduction840.relations reduction840.input reduction840.output := by lin_cert using reduction840.terms
theorem substitutionProof840 : IsMapEvaluation generatorImages reduction840.relations [0,17,50] reduction840.output := by lin_cert using reduction840.terms
def map_23_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation864 : InImage map_23_86 image864 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction864 : Bundle := named_bundle% "RealMapCertificates/relations/basis864.json"
theorem reductionProof864 : EqualModuloRelations reduction864.relations reduction864.input reduction864.output := by lin_cert using reduction864.terms
theorem substitutionProof864 : IsMapEvaluation generatorImages reduction864.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction864.output := by lin_cert using reduction864.terms
def map_23_87 : Matrix 3 1 := fun i j => ([false,true,false] : List Bool)[i.val*1+j.val]!
def image888 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation888 : InImage map_23_87 image888 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction888 : Bundle := named_bundle% "RealMapCertificates/relations/basis888.json"
theorem reductionProof888 : EqualModuloRelations reduction888.relations reduction888.input reduction888.output := by lin_cert using reduction888.terms
theorem substitutionProof888 : IsMapEvaluation generatorImages reduction888.relations [8,78] reduction888.output := by lin_cert using reduction888.terms
def map_23_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation915 : InImage map_23_88 image915 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction915 : Bundle := named_bundle% "RealMapCertificates/relations/basis915.json"
theorem reductionProof915 : EqualModuloRelations reduction915.relations reduction915.input reduction915.output := by lin_cert using reduction915.terms
theorem substitutionProof915 : IsMapEvaluation generatorImages reduction915.relations [0,17,56] reduction915.output := by lin_cert using reduction915.terms
def map_23_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image963 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation963 : InImage map_23_90 image963 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction963 : Bundle := named_bundle% "RealMapCertificates/relations/basis963.json"
theorem reductionProof963 : EqualModuloRelations reduction963.relations reduction963.input reduction963.output := by lin_cert using reduction963.terms
theorem substitutionProof963 : IsMapEvaluation generatorImages reduction963.relations [8,8,50] reduction963.output := by lin_cert using reduction963.terms
def map_23_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1022 : InImage map_23_92 image1022 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1022 : Bundle := named_bundle% "RealMapCertificates/relations/basis1022.json"
theorem reductionProof1022 : EqualModuloRelations reduction1022.relations reduction1022.input reduction1022.output := by lin_cert using reduction1022.terms
theorem substitutionProof1022 : IsMapEvaluation generatorImages reduction1022.relations [0,0,0,0,0,137] reduction1022.output := by lin_cert using reduction1022.terms
def map_23_93 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1044 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1044 : InImage map_23_93 image1044 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1044 : Bundle := named_bundle% "RealMapCertificates/relations/basis1044.json"
theorem reductionProof1044 : EqualModuloRelations reduction1044.relations reduction1044.input reduction1044.output := by lin_cert using reduction1044.terms
theorem substitutionProof1044 : IsMapEvaluation generatorImages reduction1044.relations [8,8,56] reduction1044.output := by lin_cert using reduction1044.terms
def image1045 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1045 : InImage map_23_93 image1045 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1045 : Bundle := named_bundle% "RealMapCertificates/relations/basis1045.json"
theorem reductionProof1045 : EqualModuloRelations reduction1045.relations reduction1045.input reduction1045.output := by lin_cert using reduction1045.terms
theorem substitutionProof1045 : IsMapEvaluation generatorImages reduction1045.relations [0,0,0,0,0,0,138] reduction1045.output := by lin_cert using reduction1045.terms
def map_23_96 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1112 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1112 : InImage map_23_96 image1112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1112 : Bundle := named_bundle% "RealMapCertificates/relations/basis1112.json"
theorem reductionProof1112 : EqualModuloRelations reduction1112.relations reduction1112.input reduction1112.output := by lin_cert using reduction1112.terms
theorem substitutionProof1112 : IsMapEvaluation generatorImages reduction1112.relations [8,8,16,17] reduction1112.output := by lin_cert using reduction1112.terms
def map_23_99 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1190 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1190 : InImage map_23_99 image1190 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1190 : Bundle := named_bundle% "RealMapCertificates/relations/basis1190.json"
theorem reductionProof1190 : EqualModuloRelations reduction1190.relations reduction1190.input reduction1190.output := by lin_cert using reduction1190.terms
theorem substitutionProof1190 : IsMapEvaluation generatorImages reduction1190.relations [8,8,8,40] reduction1190.output := by lin_cert using reduction1190.terms
def map_23_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1250 : InImage map_23_101 image1250 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1250 : Bundle := named_bundle% "RealMapCertificates/relations/basis1250.json"
theorem reductionProof1250 : EqualModuloRelations reduction1250.relations reduction1250.input reduction1250.output := by lin_cert using reduction1250.terms
theorem substitutionProof1250 : IsMapEvaluation generatorImages reduction1250.relations [5,137] reduction1250.output := by lin_cert using reduction1250.terms
def map_23_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1280 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1280 : InImage map_23_102 image1280 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1280 : Bundle := named_bundle% "RealMapCertificates/relations/basis1280.json"
theorem reductionProof1280 : EqualModuloRelations reduction1280.relations reduction1280.input reduction1280.output := by lin_cert using reduction1280.terms
theorem substitutionProof1280 : IsMapEvaluation generatorImages reduction1280.relations [8,8,8,8,17] reduction1280.output := by lin_cert using reduction1280.terms
def map_23_103 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1318 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1318 : InImage map_23_103 image1318 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1318 : Bundle := named_bundle% "RealMapCertificates/relations/basis1318.json"
theorem reductionProof1318 : EqualModuloRelations reduction1318.relations reduction1318.input reduction1318.output := by lin_cert using reduction1318.terms
theorem substitutionProof1318 : IsMapEvaluation generatorImages reduction1318.relations [0,184] reduction1318.output := by lin_cert using reduction1318.terms
def map_23_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1347 : InImage map_23_104 image1347 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1347 : Bundle := named_bundle% "RealMapCertificates/relations/basis1347.json"
theorem reductionProof1347 : EqualModuloRelations reduction1347.relations reduction1347.input reduction1347.output := by lin_cert using reduction1347.terms
theorem substitutionProof1347 : IsMapEvaluation generatorImages reduction1347.relations [0,0,185] reduction1347.output := by lin_cert using reduction1347.terms
def map_23_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1383 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1383 : InImage map_23_105 image1383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1383 : Bundle := named_bundle% "RealMapCertificates/relations/basis1383.json"
theorem reductionProof1383 : EqualModuloRelations reduction1383.relations reduction1383.input reduction1383.output := by lin_cert using reduction1383.terms
theorem substitutionProof1383 : IsMapEvaluation generatorImages reduction1383.relations [8,8,8,8,20] reduction1383.output := by lin_cert using reduction1383.terms
def map_23_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1415 : InImage map_23_106 image1415 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1415 : Bundle := named_bundle% "RealMapCertificates/relations/basis1415.json"
theorem reductionProof1415 : EqualModuloRelations reduction1415.relations reduction1415.input reduction1415.output := by lin_cert using reduction1415.terms
theorem substitutionProof1415 : IsMapEvaluation generatorImages reduction1415.relations [0,8,137] reduction1415.output := by lin_cert using reduction1415.terms
def map_23_107 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1452 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1452 : InImage map_23_107 image1452 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1452 : Bundle := named_bundle% "RealMapCertificates/relations/basis1452.json"
theorem reductionProof1452 : EqualModuloRelations reduction1452.relations reduction1452.input reduction1452.output := by lin_cert using reduction1452.terms
theorem substitutionProof1452 : IsMapEvaluation generatorImages reduction1452.relations [0,0,8,138] reduction1452.output := by lin_cert using reduction1452.terms
def map_23_108 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1480 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1480 : InImage map_23_108 image1480 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1480 : Bundle := named_bundle% "RealMapCertificates/relations/basis1480.json"
theorem reductionProof1480 : EqualModuloRelations reduction1480.relations reduction1480.input reduction1480.output := by lin_cert using reduction1480.terms
theorem substitutionProof1480 : IsMapEvaluation generatorImages reduction1480.relations [8,8,8,8,22] reduction1480.output := by lin_cert using reduction1480.terms
def map_23_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1526 : InImage map_23_109 image1526 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1526 : Bundle := named_bundle% "RealMapCertificates/relations/basis1526.json"
theorem reductionProof1526 : EqualModuloRelations reduction1526.relations reduction1526.input reduction1526.output := by lin_cert using reduction1526.terms
theorem substitutionProof1526 : IsMapEvaluation generatorImages reduction1526.relations [0,8,146] reduction1526.output := by lin_cert using reduction1526.terms
def map_23_110 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image1559 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1559 : InImage map_23_110 image1559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1559 : Bundle := named_bundle% "RealMapCertificates/relations/basis1559.json"
theorem reductionProof1559 : EqualModuloRelations reduction1559.relations reduction1559.input reduction1559.output := by lin_cert using reduction1559.terms
theorem substitutionProof1559 : IsMapEvaluation generatorImages reduction1559.relations [0,0,8,147] reduction1559.output := by lin_cert using reduction1559.terms
def image1560 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1560 : InImage map_23_110 image1560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1560 : Bundle := named_bundle% "RealMapCertificates/relations/basis1560.json"
theorem reductionProof1560 : EqualModuloRelations reduction1560.relations reduction1560.input reduction1560.output := by lin_cert using reduction1560.terms
theorem substitutionProof1560 : IsMapEvaluation generatorImages reduction1560.relations [0,0,0,206] reduction1560.output := by lin_cert using reduction1560.terms
def map_23_111 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1602 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1602 : InImage map_23_111 image1602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1602 : Bundle := named_bundle% "RealMapCertificates/relations/basis1602.json"
theorem reductionProof1602 : EqualModuloRelations reduction1602.relations reduction1602.input reduction1602.output := by lin_cert using reduction1602.terms
theorem substitutionProof1602 : IsMapEvaluation generatorImages reduction1602.relations [8,8,8,8,29] reduction1602.output := by lin_cert using reduction1602.terms
def map_23_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1640 : InImage map_23_112 image1640 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1640 : Bundle := named_bundle% "RealMapCertificates/relations/basis1640.json"
theorem reductionProof1640 : EqualModuloRelations reduction1640.relations reduction1640.input reduction1640.output := by lin_cert using reduction1640.terms
theorem substitutionProof1640 : IsMapEvaluation generatorImages reduction1640.relations [0,8,16,64] reduction1640.output := by lin_cert using reduction1640.terms
def map_23_113 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1677 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1677 : InImage map_23_113 image1677 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1677 : Bundle := named_bundle% "RealMapCertificates/relations/basis1677.json"
theorem reductionProof1677 : EqualModuloRelations reduction1677.relations reduction1677.input reduction1677.output := by lin_cert using reduction1677.terms
theorem substitutionProof1677 : IsMapEvaluation generatorImages reduction1677.relations [0,0,8,17,64] reduction1677.output := by lin_cert using reduction1677.terms
def map_23_114 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1715 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1715 : InImage map_23_114 image1715 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1715 : Bundle := named_bundle% "RealMapCertificates/relations/basis1715.json"
theorem reductionProof1715 : EqualModuloRelations reduction1715.relations reduction1715.input reduction1715.output := by lin_cert using reduction1715.terms
theorem substitutionProof1715 : IsMapEvaluation generatorImages reduction1715.relations [8,8,8,8,32] reduction1715.output := by lin_cert using reduction1715.terms
def map_23_115 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1750 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1750 : InImage map_23_115 image1750 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1750 : Bundle := named_bundle% "RealMapCertificates/relations/basis1750.json"
theorem reductionProof1750 : EqualModuloRelations reduction1750.relations reduction1750.input reduction1750.output := by lin_cert using reduction1750.terms
theorem substitutionProof1750 : IsMapEvaluation generatorImages reduction1750.relations [0,8,8,112] reduction1750.output := by lin_cert using reduction1750.terms
def map_23_116 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1779 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1779 : InImage map_23_116 image1779 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1779 : Bundle := named_bundle% "RealMapCertificates/relations/basis1779.json"
theorem reductionProof1779 : EqualModuloRelations reduction1779.relations reduction1779.input reduction1779.output := by lin_cert using reduction1779.terms
theorem substitutionProof1779 : IsMapEvaluation generatorImages reduction1779.relations [0,0,8,8,113] reduction1779.output := by lin_cert using reduction1779.terms
def map_23_117 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1823 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1823 : InImage map_23_117 image1823 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1823 : Bundle := named_bundle% "RealMapCertificates/relations/basis1823.json"
theorem reductionProof1823 : EqualModuloRelations reduction1823.relations reduction1823.input reduction1823.output := by lin_cert using reduction1823.terms
theorem substitutionProof1823 : IsMapEvaluation generatorImages reduction1823.relations [8,8,8,9,32] reduction1823.output := by lin_cert using reduction1823.terms
def image1824 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1824 : InImage map_23_117 image1824 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1824 : Bundle := named_bundle% "RealMapCertificates/relations/basis1824.json"
theorem reductionProof1824 : EqualModuloRelations reduction1824.relations reduction1824.input reduction1824.output := by lin_cert using reduction1824.terms
theorem substitutionProof1824 : IsMapEvaluation generatorImages reduction1824.relations [0,245] reduction1824.output := by lin_cert using reduction1824.terms
end RealMapCertificates
