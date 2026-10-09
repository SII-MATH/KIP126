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
  | 18 => []
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 24 => []
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 80 => []
  | 95 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 186 => []
  | 187 => []
  | 188 => []
  | 232 => [[5,6,9,12]]
  | 246 => []
  | 255 => []
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 293 => []
  | 299 => []
  | 300 => []
  | 301 => []
  | 316 => []
  | 317 => []
  | 324 => []
  | 327 => []
  | 346 => []
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 420 => []
  | 434 => [[0,0,9,12,12]]
  | 440 => []
  | 449 => []
  | 454 => []
  | 471 => []
  | 500 => []
  | 549 => []
  | 574 => []
  | 585 => []
  | 586 => []
  | 600 => []
  | 601 => []
  | 602 => []
  | 625 => []
  | 626 => []
  | 627 => []
  | 643 => []
  | 644 => []
  | 645 => []
  | 646 => []
  | 655 => []
  | 666 => []
  | _ => []
def map_23_118 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1857 : InImage map_23_118 image1857 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1857 : Bundle := named_bundle% "RealMapCertificates/relations/basis1857.json"
theorem reductionProof1857 : EqualModuloRelations reduction1857.relations reduction1857.input reduction1857.output := by lin_cert using reduction1857.terms
theorem substitutionProof1857 : IsMapEvaluation generatorImages reduction1857.relations [0,8,8,8,64] reduction1857.output := by lin_cert using reduction1857.terms
def image1858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1858 : InImage map_23_118 image1858 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1858 : Bundle := named_bundle% "RealMapCertificates/relations/basis1858.json"
theorem reductionProof1858 : EqualModuloRelations reduction1858.relations reduction1858.input reduction1858.output := by lin_cert using reduction1858.terms
theorem substitutionProof1858 : IsMapEvaluation generatorImages reduction1858.relations [0,0,246] reduction1858.output := by lin_cert using reduction1858.terms
def map_23_119 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image1896 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1896 : InImage map_23_119 image1896 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1896 : Bundle := named_bundle% "RealMapCertificates/relations/basis1896.json"
theorem reductionProof1896 : EqualModuloRelations reduction1896.relations reduction1896.input reduction1896.output := by lin_cert using reduction1896.terms
theorem substitutionProof1896 : IsMapEvaluation generatorImages reduction1896.relations [0,0,8,8,118] reduction1896.output := by lin_cert using reduction1896.terms
def map_23_120 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1938 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1938 : InImage map_23_120 image1938 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1938 : Bundle := named_bundle% "RealMapCertificates/relations/basis1938.json"
theorem reductionProof1938 : EqualModuloRelations reduction1938.relations reduction1938.input reduction1938.output := by lin_cert using reduction1938.terms
theorem substitutionProof1938 : IsMapEvaluation generatorImages reduction1938.relations [8,8,8,13,32] reduction1938.output := by lin_cert using reduction1938.terms
def image1939 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1939 : InImage map_23_120 image1939 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1939 : Bundle := named_bundle% "RealMapCertificates/relations/basis1939.json"
theorem reductionProof1939 : EqualModuloRelations reduction1939.relations reduction1939.input reduction1939.output := by lin_cert using reduction1939.terms
theorem substitutionProof1939 : IsMapEvaluation generatorImages reduction1939.relations [0,258] reduction1939.output := by lin_cert using reduction1939.terms
def map_23_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2015 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2015 : InImage map_23_122 image2015 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2015 : Bundle := named_bundle% "RealMapCertificates/relations/basis2015.json"
theorem reductionProof2015 : EqualModuloRelations reduction2015.relations reduction2015.input reduction2015.output := by lin_cert using reduction2015.terms
theorem substitutionProof2015 : IsMapEvaluation generatorImages reduction2015.relations [17,149] reduction2015.output := by lin_cert using reduction2015.terms
def map_23_123 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image2057 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2057 : InImage map_23_123 image2057 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2057 : Bundle := named_bundle% "RealMapCertificates/relations/basis2057.json"
theorem reductionProof2057 : EqualModuloRelations reduction2057.relations reduction2057.input reduction2057.output := by lin_cert using reduction2057.terms
theorem substitutionProof2057 : IsMapEvaluation generatorImages reduction2057.relations [59,64] reduction2057.output := by lin_cert using reduction2057.terms
def image2058 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2058 : InImage map_23_123 image2058 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2058 : Bundle := named_bundle% "RealMapCertificates/relations/basis2058.json"
theorem reductionProof2058 : EqualModuloRelations reduction2058.relations reduction2058.input reduction2058.output := by lin_cert using reduction2058.terms
theorem substitutionProof2058 : IsMapEvaluation generatorImages reduction2058.relations [17,154] reduction2058.output := by lin_cert using reduction2058.terms
def image2059 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2059 : InImage map_23_123 image2059 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2059 : Bundle := named_bundle% "RealMapCertificates/relations/basis2059.json"
theorem reductionProof2059 : EqualModuloRelations reduction2059.relations reduction2059.input reduction2059.output := by lin_cert using reduction2059.terms
theorem substitutionProof2059 : IsMapEvaluation generatorImages reduction2059.relations [8,8,9,13,32] reduction2059.output := by lin_cert using reduction2059.terms
def map_23_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2102 : InImage map_23_124 image2102 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2102 : Bundle := named_bundle% "RealMapCertificates/relations/basis2102.json"
theorem reductionProof2102 : EqualModuloRelations reduction2102.relations reduction2102.input reduction2102.output := by lin_cert using reduction2102.terms
theorem substitutionProof2102 : IsMapEvaluation generatorImages reduction2102.relations [0,0,0,0,0,260] reduction2102.output := by lin_cert using reduction2102.terms
def map_23_125 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2140 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2140 : InImage map_23_125 image2140 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2140 : Bundle := named_bundle% "RealMapCertificates/relations/basis2140.json"
theorem reductionProof2140 : EqualModuloRelations reduction2140.relations reduction2140.input reduction2140.output := by lin_cert using reduction2140.terms
theorem substitutionProof2140 : IsMapEvaluation generatorImages reduction2140.relations [17,160] reduction2140.output := by lin_cert using reduction2140.terms
def image2141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2141 : InImage map_23_125 image2141 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2141 : Bundle := named_bundle% "RealMapCertificates/relations/basis2141.json"
theorem reductionProof2141 : EqualModuloRelations reduction2141.relations reduction2141.input reduction2141.output := by lin_cert using reduction2141.terms
theorem substitutionProof2141 : IsMapEvaluation generatorImages reduction2141.relations [0,0,0,0,274] reduction2141.output := by lin_cert using reduction2141.terms
def map_23_126 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2188 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2188 : InImage map_23_126 image2188 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2188 : Bundle := named_bundle% "RealMapCertificates/relations/basis2188.json"
theorem reductionProof2188 : EqualModuloRelations reduction2188.relations reduction2188.input reduction2188.output := by lin_cert using reduction2188.terms
theorem substitutionProof2188 : IsMapEvaluation generatorImages reduction2188.relations [17,162] reduction2188.output := by lin_cert using reduction2188.terms
def image2189 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2189 : InImage map_23_126 image2189 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2189 : Bundle := named_bundle% "RealMapCertificates/relations/basis2189.json"
theorem reductionProof2189 : EqualModuloRelations reduction2189.relations reduction2189.input reduction2189.output := by lin_cert using reduction2189.terms
theorem substitutionProof2189 : IsMapEvaluation generatorImages reduction2189.relations [8,8,13,13,32] reduction2189.output := by lin_cert using reduction2189.terms
def map_23_128 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2273 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2273 : InImage map_23_128 image2273 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2273 : Bundle := named_bundle% "RealMapCertificates/relations/basis2273.json"
theorem reductionProof2273 : EqualModuloRelations reduction2273.relations reduction2273.input reduction2273.output := by lin_cert using reduction2273.terms
theorem substitutionProof2273 : IsMapEvaluation generatorImages reduction2273.relations [16,167] reduction2273.output := by lin_cert using reduction2273.terms
def map_23_129 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2341 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2341 : InImage map_23_129 image2341 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2341 : Bundle := named_bundle% "RealMapCertificates/relations/basis2341.json"
theorem reductionProof2341 : EqualModuloRelations reduction2341.relations reduction2341.input reduction2341.output := by lin_cert using reduction2341.terms
theorem substitutionProof2341 : IsMapEvaluation generatorImages reduction2341.relations [8,42,64] reduction2341.output := by lin_cert using reduction2341.terms
def image2342 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2342 : InImage map_23_129 image2342 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2342 : Bundle := named_bundle% "RealMapCertificates/relations/basis2342.json"
theorem reductionProof2342 : EqualModuloRelations reduction2342.relations reduction2342.input reduction2342.output := by lin_cert using reduction2342.terms
theorem substitutionProof2342 : IsMapEvaluation generatorImages reduction2342.relations [8,9,13,13,32] reduction2342.output := by lin_cert using reduction2342.terms
def image2343 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2343 : InImage map_23_129 image2343 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2343 : Bundle := named_bundle% "RealMapCertificates/relations/basis2343.json"
theorem reductionProof2343 : EqualModuloRelations reduction2343.relations reduction2343.input reduction2343.output := by lin_cert using reduction2343.terms
theorem substitutionProof2343 : IsMapEvaluation generatorImages reduction2343.relations [0,0,0,64,64] reduction2343.output := by lin_cert using reduction2343.terms
def map_23_130 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2396 : InImage map_23_130 image2396 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2396 : Bundle := named_bundle% "RealMapCertificates/relations/basis2396.json"
theorem reductionProof2396 : EqualModuloRelations reduction2396.relations reduction2396.input reduction2396.output := by lin_cert using reduction2396.terms
theorem substitutionProof2396 : IsMapEvaluation generatorImages reduction2396.relations [0,0,0,0,299] reduction2396.output := by lin_cert using reduction2396.terms
def map_23_131 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2457 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2457 : InImage map_23_131 image2457 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2457 : Bundle := named_bundle% "RealMapCertificates/relations/basis2457.json"
theorem reductionProof2457 : EqualModuloRelations reduction2457.relations reduction2457.input reduction2457.output := by lin_cert using reduction2457.terms
theorem substitutionProof2457 : IsMapEvaluation generatorImages reduction2457.relations [8,232] reduction2457.output := by lin_cert using reduction2457.terms
def map_23_132 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image2527 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2527 : InImage map_23_132 image2527 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction2527 : Bundle := named_bundle% "RealMapCertificates/relations/basis2527.json"
theorem reductionProof2527 : EqualModuloRelations reduction2527.relations reduction2527.input reduction2527.output := by lin_cert using reduction2527.terms
theorem substitutionProof2527 : IsMapEvaluation generatorImages reduction2527.relations [8,23,113] reduction2527.output := by lin_cert using reduction2527.terms
def image2528 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2528 : InImage map_23_132 image2528 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction2528 : Bundle := named_bundle% "RealMapCertificates/relations/basis2528.json"
theorem reductionProof2528 : EqualModuloRelations reduction2528.relations reduction2528.input reduction2528.output := by lin_cert using reduction2528.terms
theorem substitutionProof2528 : IsMapEvaluation generatorImages reduction2528.relations [8,13,13,13,32] reduction2528.output := by lin_cert using reduction2528.terms
def image2529 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2529 : InImage map_23_132 image2529 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction2529 : Bundle := named_bundle% "RealMapCertificates/relations/basis2529.json"
theorem reductionProof2529 : EqualModuloRelations reduction2529.relations reduction2529.input reduction2529.output := by lin_cert using reduction2529.terms
theorem substitutionProof2529 : IsMapEvaluation generatorImages reduction2529.relations [0,0,0,0,0,0,301] reduction2529.output := by lin_cert using reduction2529.terms
def image2530 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2530 : InImage map_23_132 image2530 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction2530 : Bundle := named_bundle% "RealMapCertificates/relations/basis2530.json"
theorem reductionProof2530 : EqualModuloRelations reduction2530.relations reduction2530.input reduction2530.output := by lin_cert using reduction2530.terms
theorem substitutionProof2530 : IsMapEvaluation generatorImages reduction2530.relations [0,0,0,0,0,0,300] reduction2530.output := by lin_cert using reduction2530.terms
def map_23_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2593 : InImage map_23_133 image2593 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2593 : Bundle := named_bundle% "RealMapCertificates/relations/basis2593.json"
theorem reductionProof2593 : EqualModuloRelations reduction2593.relations reduction2593.input reduction2593.output := by lin_cert using reduction2593.terms
theorem substitutionProof2593 : IsMapEvaluation generatorImages reduction2593.relations [5,260] reduction2593.output := by lin_cert using reduction2593.terms
def image2594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2594 : InImage map_23_133 image2594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2594 : Bundle := named_bundle% "RealMapCertificates/relations/basis2594.json"
theorem reductionProof2594 : EqualModuloRelations reduction2594.relations reduction2594.input reduction2594.output := by lin_cert using reduction2594.terms
theorem substitutionProof2594 : IsMapEvaluation generatorImages reduction2594.relations [0,0,0,0,0,317] reduction2594.output := by lin_cert using reduction2594.terms
def map_23_134 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2655 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2655 : InImage map_23_134 image2655 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2655 : Bundle := named_bundle% "RealMapCertificates/relations/basis2655.json"
theorem reductionProof2655 : EqualModuloRelations reduction2655.relations reduction2655.input reduction2655.output := by lin_cert using reduction2655.terms
theorem substitutionProof2655 : IsMapEvaluation generatorImages reduction2655.relations [8,8,167] reduction2655.output := by lin_cert using reduction2655.terms
def map_23_135 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2752 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2752 : InImage map_23_135 image2752 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2752 : Bundle := named_bundle% "RealMapCertificates/relations/basis2752.json"
theorem reductionProof2752 : EqualModuloRelations reduction2752.relations reduction2752.input reduction2752.output := by lin_cert using reduction2752.terms
theorem substitutionProof2752 : IsMapEvaluation generatorImages reduction2752.relations [9,13,13,13,32] reduction2752.output := by lin_cert using reduction2752.terms
def image2753 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2753 : InImage map_23_135 image2753 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2753 : Bundle := named_bundle% "RealMapCertificates/relations/basis2753.json"
theorem reductionProof2753 : EqualModuloRelations reduction2753.relations reduction2753.input reduction2753.output := by lin_cert using reduction2753.terms
theorem substitutionProof2753 : IsMapEvaluation generatorImages reduction2753.relations [8,8,173] reduction2753.output := by lin_cert using reduction2753.terms
def image2754 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2754 : InImage map_23_135 image2754 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2754 : Bundle := named_bundle% "RealMapCertificates/relations/basis2754.json"
theorem reductionProof2754 : EqualModuloRelations reduction2754.relations reduction2754.input reduction2754.output := by lin_cert using reduction2754.terms
theorem substitutionProof2754 : IsMapEvaluation generatorImages reduction2754.relations [0,380] reduction2754.output := by lin_cert using reduction2754.terms
def map_23_136 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2821 : InImage map_23_136 image2821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2821 : Bundle := named_bundle% "RealMapCertificates/relations/basis2821.json"
theorem reductionProof2821 : EqualModuloRelations reduction2821.relations reduction2821.input reduction2821.output := by lin_cert using reduction2821.terms
theorem substitutionProof2821 : IsMapEvaluation generatorImages reduction2821.relations [0,404] reduction2821.output := by lin_cert using reduction2821.terms
def image2822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2822 : InImage map_23_136 image2822 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2822 : Bundle := named_bundle% "RealMapCertificates/relations/basis2822.json"
theorem reductionProof2822 : EqualModuloRelations reduction2822.relations reduction2822.input reduction2822.output := by lin_cert using reduction2822.terms
theorem substitutionProof2822 : IsMapEvaluation generatorImages reduction2822.relations [0,0,0,0,0,347] reduction2822.output := by lin_cert using reduction2822.terms
def map_23_137 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2893 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2893 : InImage map_23_137 image2893 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2893 : Bundle := named_bundle% "RealMapCertificates/relations/basis2893.json"
theorem reductionProof2893 : EqualModuloRelations reduction2893.relations reduction2893.input reduction2893.output := by lin_cert using reduction2893.terms
theorem substitutionProof2893 : IsMapEvaluation generatorImages reduction2893.relations [8,9,167] reduction2893.output := by lin_cert using reduction2893.terms
def image2894 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2894 : InImage map_23_137 image2894 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2894 : Bundle := named_bundle% "RealMapCertificates/relations/basis2894.json"
theorem reductionProof2894 : EqualModuloRelations reduction2894.relations reduction2894.input reduction2894.output := by lin_cert using reduction2894.terms
theorem substitutionProof2894 : IsMapEvaluation generatorImages reduction2894.relations [0,0,0,0,0,17,188] reduction2894.output := by lin_cert using reduction2894.terms
def map_23_138 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2977 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2977 : InImage map_23_138 image2977 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2977 : Bundle := named_bundle% "RealMapCertificates/relations/basis2977.json"
theorem reductionProof2977 : EqualModuloRelations reduction2977.relations reduction2977.input reduction2977.output := by lin_cert using reduction2977.terms
theorem substitutionProof2977 : IsMapEvaluation generatorImages reduction2977.relations [13,13,13,13,32] reduction2977.output := by lin_cert using reduction2977.terms
def image2978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2978 : InImage map_23_138 image2978 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2978 : Bundle := named_bundle% "RealMapCertificates/relations/basis2978.json"
theorem reductionProof2978 : EqualModuloRelations reduction2978.relations reduction2978.input reduction2978.output := by lin_cert using reduction2978.terms
theorem substitutionProof2978 : IsMapEvaluation generatorImages reduction2978.relations [8,8,186] reduction2978.output := by lin_cert using reduction2978.terms
def image2979 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2979 : InImage map_23_138 image2979 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2979 : Bundle := named_bundle% "RealMapCertificates/relations/basis2979.json"
theorem reductionProof2979 : EqualModuloRelations reduction2979.relations reduction2979.input reduction2979.output := by lin_cert using reduction2979.terms
theorem substitutionProof2979 : IsMapEvaluation generatorImages reduction2979.relations [0,8,260] reduction2979.output := by lin_cert using reduction2979.terms
def map_23_139 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3058 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3058 : InImage map_23_139 image3058 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3058 : Bundle := named_bundle% "RealMapCertificates/relations/basis3058.json"
theorem reductionProof3058 : EqualModuloRelations reduction3058.relations reduction3058.input reduction3058.output := by lin_cert using reduction3058.terms
theorem substitutionProof3058 : IsMapEvaluation generatorImages reduction3058.relations [0,434] reduction3058.output := by lin_cert using reduction3058.terms
def map_23_140 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3127 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3127 : InImage map_23_140 image3127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3127 : Bundle := named_bundle% "RealMapCertificates/relations/basis3127.json"
theorem reductionProof3127 : EqualModuloRelations reduction3127.relations reduction3127.input reduction3127.output := by lin_cert using reduction3127.terms
theorem substitutionProof3127 : IsMapEvaluation generatorImages reduction3127.relations [8,13,167] reduction3127.output := by lin_cert using reduction3127.terms
def map_23_141 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3232 : InImage map_23_141 image3232 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3232 : Bundle := named_bundle% "RealMapCertificates/relations/basis3232.json"
theorem reductionProof3232 : EqualModuloRelations reduction3232.relations reduction3232.input reduction3232.output := by lin_cert using reduction3232.terms
theorem substitutionProof3232 : IsMapEvaluation generatorImages reduction3232.relations [64,113] reduction3232.output := by lin_cert using reduction3232.terms
def image3233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3233 : InImage map_23_141 image3233 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3233 : Bundle := named_bundle% "RealMapCertificates/relations/basis3233.json"
theorem reductionProof3233 : EqualModuloRelations reduction3233.relations reduction3233.input reduction3233.output := by lin_cert using reduction3233.terms
theorem substitutionProof3233 : IsMapEvaluation generatorImages reduction3233.relations [8,8,23,80] reduction3233.output := by lin_cert using reduction3233.terms
def image3234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3234 : InImage map_23_141 image3234 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3234 : Bundle := named_bundle% "RealMapCertificates/relations/basis3234.json"
theorem reductionProof3234 : EqualModuloRelations reduction3234.relations reduction3234.input reduction3234.output := by lin_cert using reduction3234.terms
theorem substitutionProof3234 : IsMapEvaluation generatorImages reduction3234.relations [0,8,278] reduction3234.output := by lin_cert using reduction3234.terms
def map_23_142 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3305 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3305 : InImage map_23_142 image3305 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3305 : Bundle := named_bundle% "RealMapCertificates/relations/basis3305.json"
theorem reductionProof3305 : EqualModuloRelations reduction3305.relations reduction3305.input reduction3305.output := by lin_cert using reduction3305.terms
theorem substitutionProof3305 : IsMapEvaluation generatorImages reduction3305.relations [0,471] reduction3305.output := by lin_cert using reduction3305.terms
def image3306 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3306 : InImage map_23_142 image3306 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3306 : Bundle := named_bundle% "RealMapCertificates/relations/basis3306.json"
theorem reductionProof3306 : EqualModuloRelations reduction3306.relations reduction3306.input reduction3306.output := by lin_cert using reduction3306.terms
theorem substitutionProof3306 : IsMapEvaluation generatorImages reduction3306.relations [0,0,454] reduction3306.output := by lin_cert using reduction3306.terms
def map_23_143 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3383 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3383 : InImage map_23_143 image3383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3383 : Bundle := named_bundle% "RealMapCertificates/relations/basis3383.json"
theorem reductionProof3383 : EqualModuloRelations reduction3383.relations reduction3383.input reduction3383.output := by lin_cert using reduction3383.terms
theorem substitutionProof3383 : IsMapEvaluation generatorImages reduction3383.relations [9,13,167] reduction3383.output := by lin_cert using reduction3383.terms
def map_23_144 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3477 : InImage map_23_144 image3477 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3477 : Bundle := named_bundle% "RealMapCertificates/relations/basis3477.json"
theorem reductionProof3477 : EqualModuloRelations reduction3477.relations reduction3477.input reduction3477.output := by lin_cert using reduction3477.terms
theorem substitutionProof3477 : IsMapEvaluation generatorImages reduction3477.relations [13,13,13,23,24] reduction3477.output := by lin_cert using reduction3477.terms
def image3478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3478 : InImage map_23_144 image3478 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3478 : Bundle := named_bundle% "RealMapCertificates/relations/basis3478.json"
theorem reductionProof3478 : EqualModuloRelations reduction3478.relations reduction3478.input reduction3478.output := by lin_cert using reduction3478.terms
theorem substitutionProof3478 : IsMapEvaluation generatorImages reduction3478.relations [8,299] reduction3478.output := by lin_cert using reduction3478.terms
def image3479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3479 : InImage map_23_144 image3479 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3479 : Bundle := named_bundle% "RealMapCertificates/relations/basis3479.json"
theorem reductionProof3479 : EqualModuloRelations reduction3479.relations reduction3479.input reduction3479.output := by lin_cert using reduction3479.terms
theorem substitutionProof3479 : IsMapEvaluation generatorImages reduction3479.relations [8,9,23,80] reduction3479.output := by lin_cert using reduction3479.terms
def image3480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3480 : InImage map_23_144 image3480 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3480 : Bundle := named_bundle% "RealMapCertificates/relations/basis3480.json"
theorem reductionProof3480 : EqualModuloRelations reduction3480.relations reduction3480.input reduction3480.output := by lin_cert using reduction3480.terms
theorem substitutionProof3480 : IsMapEvaluation generatorImages reduction3480.relations [0,8,291] reduction3480.output := by lin_cert using reduction3480.terms
def map_23_145 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3552 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3552 : InImage map_23_145 image3552 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3552 : Bundle := named_bundle% "RealMapCertificates/relations/basis3552.json"
theorem reductionProof3552 : EqualModuloRelations reduction3552.relations reduction3552.input reduction3552.output := by lin_cert using reduction3552.terms
theorem substitutionProof3552 : IsMapEvaluation generatorImages reduction3552.relations [5,347] reduction3552.output := by lin_cert using reduction3552.terms
def image3553 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3553 : InImage map_23_145 image3553 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3553 : Bundle := named_bundle% "RealMapCertificates/relations/basis3553.json"
theorem reductionProof3553 : EqualModuloRelations reduction3553.relations reduction3553.input reduction3553.output := by lin_cert using reduction3553.terms
theorem substitutionProof3553 : IsMapEvaluation generatorImages reduction3553.relations [0,0,8,292] reduction3553.output := by lin_cert using reduction3553.terms
def map_23_146 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3624 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3624 : InImage map_23_146 image3624 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3624 : Bundle := named_bundle% "RealMapCertificates/relations/basis3624.json"
theorem reductionProof3624 : EqualModuloRelations reduction3624.relations reduction3624.input reduction3624.output := by lin_cert using reduction3624.terms
theorem substitutionProof3624 : IsMapEvaluation generatorImages reduction3624.relations [13,13,167] reduction3624.output := by lin_cert using reduction3624.terms
def map_23_147 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3740 : InImage map_23_147 image3740 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3740 : Bundle := named_bundle% "RealMapCertificates/relations/basis3740.json"
theorem reductionProof3740 : EqualModuloRelations reduction3740.relations reduction3740.input reduction3740.output := by lin_cert using reduction3740.terms
theorem substitutionProof3740 : IsMapEvaluation generatorImages reduction3740.relations [8,327] reduction3740.output := by lin_cert using reduction3740.terms
def image3741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3741 : InImage map_23_147 image3741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3741 : Bundle := named_bundle% "RealMapCertificates/relations/basis3741.json"
theorem reductionProof3741 : EqualModuloRelations reduction3741.relations reduction3741.input reduction3741.output := by lin_cert using reduction3741.terms
theorem substitutionProof3741 : IsMapEvaluation generatorImages reduction3741.relations [8,13,23,80] reduction3741.output := by lin_cert using reduction3741.terms
def image3742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3742 : InImage map_23_147 image3742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3742 : Bundle := named_bundle% "RealMapCertificates/relations/basis3742.json"
theorem reductionProof3742 : EqualModuloRelations reduction3742.relations reduction3742.input reduction3742.output := by lin_cert using reduction3742.terms
theorem substitutionProof3742 : IsMapEvaluation generatorImages reduction3742.relations [0,8,316] reduction3742.output := by lin_cert using reduction3742.terms
def image3743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3743 : InImage map_23_147 image3743 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3743 : Bundle := named_bundle% "RealMapCertificates/relations/basis3743.json"
theorem reductionProof3743 : EqualModuloRelations reduction3743.relations reduction3743.input reduction3743.output := by lin_cert using reduction3743.terms
theorem substitutionProof3743 : IsMapEvaluation generatorImages reduction3743.relations [0,0,0,0,0,0,0,0,0,440] reduction3743.output := by lin_cert using reduction3743.terms
def map_23_148 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3812 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3812 : InImage map_23_148 image3812 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3812 : Bundle := named_bundle% "RealMapCertificates/relations/basis3812.json"
theorem reductionProof3812 : EqualModuloRelations reduction3812.relations reduction3812.input reduction3812.output := by lin_cert using reduction3812.terms
theorem substitutionProof3812 : IsMapEvaluation generatorImages reduction3812.relations [0,0,9,292] reduction3812.output := by lin_cert using reduction3812.terms
def image3813 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3813 : InImage map_23_148 image3813 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3813 : Bundle := named_bundle% "RealMapCertificates/relations/basis3813.json"
theorem reductionProof3813 : EqualModuloRelations reduction3813.relations reduction3813.input reduction3813.output := by lin_cert using reduction3813.terms
theorem substitutionProof3813 : IsMapEvaluation generatorImages reduction3813.relations [0,0,0,0,0,0,0,0,0,449] reduction3813.output := by lin_cert using reduction3813.terms
def map_23_149 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3897 : InImage map_23_149 image3897 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3897 : Bundle := named_bundle% "RealMapCertificates/relations/basis3897.json"
theorem reductionProof3897 : EqualModuloRelations reduction3897.relations reduction3897.input reduction3897.output := by lin_cert using reduction3897.terms
theorem substitutionProof3897 : IsMapEvaluation generatorImages reduction3897.relations [549] reduction3897.output := by lin_cert using reduction3897.terms
def image3898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3898 : InImage map_23_149 image3898 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3898 : Bundle := named_bundle% "RealMapCertificates/relations/basis3898.json"
theorem reductionProof3898 : EqualModuloRelations reduction3898.relations reduction3898.input reduction3898.output := by lin_cert using reduction3898.terms
theorem substitutionProof3898 : IsMapEvaluation generatorImages reduction3898.relations [0,0,0,0,0,500] reduction3898.output := by lin_cert using reduction3898.terms
def map_23_150 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4000 : InImage map_23_150 image4000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4000 : Bundle := named_bundle% "RealMapCertificates/relations/basis4000.json"
theorem reductionProof4000 : EqualModuloRelations reduction4000.relations reduction4000.input reduction4000.output := by lin_cert using reduction4000.terms
theorem substitutionProof4000 : IsMapEvaluation generatorImages reduction4000.relations [9,13,23,80] reduction4000.output := by lin_cert using reduction4000.terms
def image4001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4001 : InImage map_23_150 image4001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4001 : Bundle := named_bundle% "RealMapCertificates/relations/basis4001.json"
theorem reductionProof4001 : EqualModuloRelations reduction4001.relations reduction4001.input reduction4001.output := by lin_cert using reduction4001.terms
theorem substitutionProof4001 : IsMapEvaluation generatorImages reduction4001.relations [8,16,188] reduction4001.output := by lin_cert using reduction4001.terms
def image4002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4002 : InImage map_23_150 image4002 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4002 : Bundle := named_bundle% "RealMapCertificates/relations/basis4002.json"
theorem reductionProof4002 : EqualModuloRelations reduction4002.relations reduction4002.input reduction4002.output := by lin_cert using reduction4002.terms
theorem substitutionProof4002 : IsMapEvaluation generatorImages reduction4002.relations [0,8,346] reduction4002.output := by lin_cert using reduction4002.terms
def image4003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4003 : InImage map_23_150 image4003 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4003 : Bundle := named_bundle% "RealMapCertificates/relations/basis4003.json"
theorem reductionProof4003 : EqualModuloRelations reduction4003.relations reduction4003.input reduction4003.output := by lin_cert using reduction4003.terms
theorem substitutionProof4003 : IsMapEvaluation generatorImages reduction4003.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4003.output := by lin_cert using reduction4003.terms
def map_23_151 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4097 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4097 : InImage map_23_151 image4097 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4097 : Bundle := named_bundle% "RealMapCertificates/relations/basis4097.json"
theorem reductionProof4097 : EqualModuloRelations reduction4097.relations reduction4097.input reduction4097.output := by lin_cert using reduction4097.terms
theorem substitutionProof4097 : IsMapEvaluation generatorImages reduction4097.relations [0,8,17,188] reduction4097.output := by lin_cert using reduction4097.terms
def image4098 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4098 : InImage map_23_151 image4098 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4098 : Bundle := named_bundle% "RealMapCertificates/relations/basis4098.json"
theorem reductionProof4098 : EqualModuloRelations reduction4098.relations reduction4098.input reduction4098.output := by lin_cert using reduction4098.terms
theorem substitutionProof4098 : IsMapEvaluation generatorImages reduction4098.relations [0,0,13,292] reduction4098.output := by lin_cert using reduction4098.terms
def map_23_152 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4173 : InImage map_23_152 image4173 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4173 : Bundle := named_bundle% "RealMapCertificates/relations/basis4173.json"
theorem reductionProof4173 : EqualModuloRelations reduction4173.relations reduction4173.input reduction4173.output := by lin_cert using reduction4173.terms
theorem substitutionProof4173 : IsMapEvaluation generatorImages reduction4173.relations [574] reduction4173.output := by lin_cert using reduction4173.terms
def image4174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4174 : InImage map_23_152 image4174 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4174 : Bundle := named_bundle% "RealMapCertificates/relations/basis4174.json"
theorem reductionProof4174 : EqualModuloRelations reduction4174.relations reduction4174.input reduction4174.output := by lin_cert using reduction4174.terms
theorem substitutionProof4174 : IsMapEvaluation generatorImages reduction4174.relations [13,23,150] reduction4174.output := by lin_cert using reduction4174.terms
def map_23_153 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4282 : InImage map_23_153 image4282 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4282 : Bundle := named_bundle% "RealMapCertificates/relations/basis4282.json"
theorem reductionProof4282 : EqualModuloRelations reduction4282.relations reduction4282.input reduction4282.output := by lin_cert using reduction4282.terms
theorem substitutionProof4282 : IsMapEvaluation generatorImages reduction4282.relations [13,13,23,80] reduction4282.output := by lin_cert using reduction4282.terms
def image4283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4283 : InImage map_23_153 image4283 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4283 : Bundle := named_bundle% "RealMapCertificates/relations/basis4283.json"
theorem reductionProof4283 : EqualModuloRelations reduction4283.relations reduction4283.input reduction4283.output := by lin_cert using reduction4283.terms
theorem substitutionProof4283 : IsMapEvaluation generatorImages reduction4283.relations [8,8,255] reduction4283.output := by lin_cert using reduction4283.terms
def map_23_154 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4345 : InImage map_23_154 image4345 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4345 : Bundle := named_bundle% "RealMapCertificates/relations/basis4345.json"
theorem reductionProof4345 : EqualModuloRelations reduction4345.relations reduction4345.input reduction4345.output := by lin_cert using reduction4345.terms
theorem substitutionProof4345 : IsMapEvaluation generatorImages reduction4345.relations [0,8,20,188] reduction4345.output := by lin_cert using reduction4345.terms
def map_23_155 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4427 : InImage map_23_155 image4427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4427 : Bundle := named_bundle% "RealMapCertificates/relations/basis4427.json"
theorem reductionProof4427 : EqualModuloRelations reduction4427.relations reduction4427.input reduction4427.output := by lin_cert using reduction4427.terms
theorem substitutionProof4427 : IsMapEvaluation generatorImages reduction4427.relations [602] reduction4427.output := by lin_cert using reduction4427.terms
def image4428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4428 : InImage map_23_155 image4428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4428 : Bundle := named_bundle% "RealMapCertificates/relations/basis4428.json"
theorem reductionProof4428 : EqualModuloRelations reduction4428.relations reduction4428.input reduction4428.output := by lin_cert using reduction4428.terms
theorem substitutionProof4428 : IsMapEvaluation generatorImages reduction4428.relations [601] reduction4428.output := by lin_cert using reduction4428.terms
def image4429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4429 : InImage map_23_155 image4429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4429 : Bundle := named_bundle% "RealMapCertificates/relations/basis4429.json"
theorem reductionProof4429 : EqualModuloRelations reduction4429.relations reduction4429.input reduction4429.output := by lin_cert using reduction4429.terms
theorem substitutionProof4429 : IsMapEvaluation generatorImages reduction4429.relations [600] reduction4429.output := by lin_cert using reduction4429.terms
def image4430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4430 : InImage map_23_155 image4430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4430 : Bundle := named_bundle% "RealMapCertificates/relations/basis4430.json"
theorem reductionProof4430 : EqualModuloRelations reduction4430.relations reduction4430.input reduction4430.output := by lin_cert using reduction4430.terms
theorem substitutionProof4430 : IsMapEvaluation generatorImages reduction4430.relations [8,420] reduction4430.output := by lin_cert using reduction4430.terms
def map_23_156 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4531 : InImage map_23_156 image4531 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4531 : Bundle := named_bundle% "RealMapCertificates/relations/basis4531.json"
theorem reductionProof4531 : EqualModuloRelations reduction4531.relations reduction4531.input reduction4531.output := by lin_cert using reduction4531.terms
theorem substitutionProof4531 : IsMapEvaluation generatorImages reduction4531.relations [8,8,8,188] reduction4531.output := by lin_cert using reduction4531.terms
def image4532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4532 : InImage map_23_156 image4532 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4532 : Bundle := named_bundle% "RealMapCertificates/relations/basis4532.json"
theorem reductionProof4532 : EqualModuloRelations reduction4532.relations reduction4532.input reduction4532.output := by lin_cert using reduction4532.terms
theorem substitutionProof4532 : IsMapEvaluation generatorImages reduction4532.relations [1,585] reduction4532.output := by lin_cert using reduction4532.terms
def image4533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4533 : InImage map_23_156 image4533 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4533 : Bundle := named_bundle% "RealMapCertificates/relations/basis4533.json"
theorem reductionProof4533 : EqualModuloRelations reduction4533.relations reduction4533.input reduction4533.output := by lin_cert using reduction4533.terms
theorem substitutionProof4533 : IsMapEvaluation generatorImages reduction4533.relations [0,0,586] reduction4533.output := by lin_cert using reduction4533.terms
def map_23_158 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4697 : InImage map_23_158 image4697 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4697 : Bundle := named_bundle% "RealMapCertificates/relations/basis4697.json"
theorem reductionProof4697 : EqualModuloRelations reduction4697.relations reduction4697.input reduction4697.output := by lin_cert using reduction4697.terms
theorem substitutionProof4697 : IsMapEvaluation generatorImages reduction4697.relations [625] reduction4697.output := by lin_cert using reduction4697.terms
def image4698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4698 : InImage map_23_158 image4698 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4698 : Bundle := named_bundle% "RealMapCertificates/relations/basis4698.json"
theorem reductionProof4698 : EqualModuloRelations reduction4698.relations reduction4698.input reduction4698.output := by lin_cert using reduction4698.terms
theorem substitutionProof4698 : IsMapEvaluation generatorImages reduction4698.relations [9,420] reduction4698.output := by lin_cert using reduction4698.terms
def image4699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4699 : InImage map_23_158 image4699 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4699 : Bundle := named_bundle% "RealMapCertificates/relations/basis4699.json"
theorem reductionProof4699 : EqualModuloRelations reduction4699.relations reduction4699.input reduction4699.output := by lin_cert using reduction4699.terms
theorem substitutionProof4699 : IsMapEvaluation generatorImages reduction4699.relations [2,585] reduction4699.output := by lin_cert using reduction4699.terms
def image4700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4700 : InImage map_23_158 image4700 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4700 : Bundle := named_bundle% "RealMapCertificates/relations/basis4700.json"
theorem reductionProof4700 : EqualModuloRelations reduction4700.relations reduction4700.input reduction4700.output := by lin_cert using reduction4700.terms
theorem substitutionProof4700 : IsMapEvaluation generatorImages reduction4700.relations [1,1,586] reduction4700.output := by lin_cert using reduction4700.terms
def map_23_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4802 : InImage map_23_159 image4802 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4802 : Bundle := named_bundle% "RealMapCertificates/relations/basis4802.json"
theorem reductionProof4802 : EqualModuloRelations reduction4802.relations reduction4802.input reduction4802.output := by lin_cert using reduction4802.terms
theorem substitutionProof4802 : IsMapEvaluation generatorImages reduction4802.relations [8,8,9,188] reduction4802.output := by lin_cert using reduction4802.terms
def map_23_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4865 : InImage map_23_160 image4865 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4865 : Bundle := named_bundle% "RealMapCertificates/relations/basis4865.json"
theorem reductionProof4865 : EqualModuloRelations reduction4865.relations reduction4865.input reduction4865.output := by lin_cert using reduction4865.terms
theorem substitutionProof4865 : IsMapEvaluation generatorImages reduction4865.relations [13,13,13,13,67] reduction4865.output := by lin_cert using reduction4865.terms
def image4866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4866 : InImage map_23_160 image4866 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4866 : Bundle := named_bundle% "RealMapCertificates/relations/basis4866.json"
theorem reductionProof4866 : EqualModuloRelations reduction4866.relations reduction4866.input reduction4866.output := by lin_cert using reduction4866.terms
theorem substitutionProof4866 : IsMapEvaluation generatorImages reduction4866.relations [1,626] reduction4866.output := by lin_cert using reduction4866.terms
def map_23_161 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4958 : InImage map_23_161 image4958 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4958 : Bundle := named_bundle% "RealMapCertificates/relations/basis4958.json"
theorem reductionProof4958 : EqualModuloRelations reduction4958.relations reduction4958.input reduction4958.output := by lin_cert using reduction4958.terms
theorem substitutionProof4958 : IsMapEvaluation generatorImages reduction4958.relations [23,292] reduction4958.output := by lin_cert using reduction4958.terms
def image4959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4959 : InImage map_23_161 image4959 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4959 : Bundle := named_bundle% "RealMapCertificates/relations/basis4959.json"
theorem reductionProof4959 : EqualModuloRelations reduction4959.relations reduction4959.input reduction4959.output := by lin_cert using reduction4959.terms
theorem substitutionProof4959 : IsMapEvaluation generatorImages reduction4959.relations [8,8,293] reduction4959.output := by lin_cert using reduction4959.terms
def image4960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4960 : InImage map_23_161 image4960 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4960 : Bundle := named_bundle% "RealMapCertificates/relations/basis4960.json"
theorem reductionProof4960 : EqualModuloRelations reduction4960.relations reduction4960.input reduction4960.output := by lin_cert using reduction4960.terms
theorem substitutionProof4960 : IsMapEvaluation generatorImages reduction4960.relations [0,643] reduction4960.output := by lin_cert using reduction4960.terms
def image4961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4961 : InImage map_23_161 image4961 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4961 : Bundle := named_bundle% "RealMapCertificates/relations/basis4961.json"
theorem reductionProof4961 : EqualModuloRelations reduction4961.relations reduction4961.input reduction4961.output := by lin_cert using reduction4961.terms
theorem substitutionProof4961 : IsMapEvaluation generatorImages reduction4961.relations [0,0,0,627] reduction4961.output := by lin_cert using reduction4961.terms
def map_23_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5069 : InImage map_23_162 image5069 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5069 : Bundle := named_bundle% "RealMapCertificates/relations/basis5069.json"
theorem reductionProof5069 : EqualModuloRelations reduction5069.relations reduction5069.input reduction5069.output := by lin_cert using reduction5069.terms
theorem substitutionProof5069 : IsMapEvaluation generatorImages reduction5069.relations [8,8,13,188] reduction5069.output := by lin_cert using reduction5069.terms
def image5070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5070 : InImage map_23_162 image5070 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5070 : Bundle := named_bundle% "RealMapCertificates/relations/basis5070.json"
theorem reductionProof5070 : EqualModuloRelations reduction5070.relations reduction5070.input reduction5070.output := by lin_cert using reduction5070.terms
theorem substitutionProof5070 : IsMapEvaluation generatorImages reduction5070.relations [0,0,645] reduction5070.output := by lin_cert using reduction5070.terms
def image5071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5071 : InImage map_23_162 image5071 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5071 : Bundle := named_bundle% "RealMapCertificates/relations/basis5071.json"
theorem reductionProof5071 : EqualModuloRelations reduction5071.relations reduction5071.input reduction5071.output := by lin_cert using reduction5071.terms
theorem substitutionProof5071 : IsMapEvaluation generatorImages reduction5071.relations [0,0,644] reduction5071.output := by lin_cert using reduction5071.terms
def map_23_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5157 : InImage map_23_163 image5157 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5157 : Bundle := named_bundle% "RealMapCertificates/relations/basis5157.json"
theorem reductionProof5157 : EqualModuloRelations reduction5157.relations reduction5157.input reduction5157.output := by lin_cert using reduction5157.terms
theorem substitutionProof5157 : IsMapEvaluation generatorImages reduction5157.relations [0,0,0,646] reduction5157.output := by lin_cert using reduction5157.terms
def map_23_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5252 : InImage map_23_164 image5252 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5252 : Bundle := named_bundle% "RealMapCertificates/relations/basis5252.json"
theorem reductionProof5252 : EqualModuloRelations reduction5252.relations reduction5252.input reduction5252.output := by lin_cert using reduction5252.terms
theorem substitutionProof5252 : IsMapEvaluation generatorImages reduction5252.relations [8,9,293] reduction5252.output := by lin_cert using reduction5252.terms
def image5253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5253 : InImage map_23_164 image5253 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5253 : Bundle := named_bundle% "RealMapCertificates/relations/basis5253.json"
theorem reductionProof5253 : EqualModuloRelations reduction5253.relations reduction5253.input reduction5253.output := by lin_cert using reduction5253.terms
theorem substitutionProof5253 : IsMapEvaluation generatorImages reduction5253.relations [0,0,666] reduction5253.output := by lin_cert using reduction5253.terms
def image5254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5254 : InImage map_23_164 image5254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5254 : Bundle := named_bundle% "RealMapCertificates/relations/basis5254.json"
theorem reductionProof5254 : EqualModuloRelations reduction5254.relations reduction5254.input reduction5254.output := by lin_cert using reduction5254.terms
theorem substitutionProof5254 : IsMapEvaluation generatorImages reduction5254.relations [0,0,0,655] reduction5254.output := by lin_cert using reduction5254.terms
def map_23_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5374 : InImage map_23_165 image5374 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5374 : Bundle := named_bundle% "RealMapCertificates/relations/basis5374.json"
theorem reductionProof5374 : EqualModuloRelations reduction5374.relations reduction5374.input reduction5374.output := by lin_cert using reduction5374.terms
theorem substitutionProof5374 : IsMapEvaluation generatorImages reduction5374.relations [8,9,13,188] reduction5374.output := by lin_cert using reduction5374.terms
def map_23_166 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5462 : InImage map_23_166 image5462 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5462 : Bundle := named_bundle% "RealMapCertificates/relations/basis5462.json"
theorem reductionProof5462 : EqualModuloRelations reduction5462.relations reduction5462.input reduction5462.output := by lin_cert using reduction5462.terms
theorem substitutionProof5462 : IsMapEvaluation generatorImages reduction5462.relations [18,380] reduction5462.output := by lin_cert using reduction5462.terms
def image5463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5463 : InImage map_23_166 image5463 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5463 : Bundle := named_bundle% "RealMapCertificates/relations/basis5463.json"
theorem reductionProof5463 : EqualModuloRelations reduction5463.relations reduction5463.input reduction5463.output := by lin_cert using reduction5463.terms
theorem substitutionProof5463 : IsMapEvaluation generatorImages reduction5463.relations [9,13,13,13,95] reduction5463.output := by lin_cert using reduction5463.terms
def image5464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5464 : InImage map_23_166 image5464 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5464 : Bundle := named_bundle% "RealMapCertificates/relations/basis5464.json"
theorem reductionProof5464 : EqualModuloRelations reduction5464.relations reduction5464.input reduction5464.output := by lin_cert using reduction5464.terms
theorem substitutionProof5464 : IsMapEvaluation generatorImages reduction5464.relations [1,1,666] reduction5464.output := by lin_cert using reduction5464.terms
def image5465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5465 : InImage map_23_166 image5465 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5465 : Bundle := named_bundle% "RealMapCertificates/relations/basis5465.json"
theorem reductionProof5465 : EqualModuloRelations reduction5465.relations reduction5465.input reduction5465.output := by lin_cert using reduction5465.terms
theorem substitutionProof5465 : IsMapEvaluation generatorImages reduction5465.relations [0,64,187] reduction5465.output := by lin_cert using reduction5465.terms
end RealMapCertificates
