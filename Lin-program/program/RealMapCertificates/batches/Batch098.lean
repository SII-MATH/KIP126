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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 23 => [[7,7]]
  | 24 => []
  | 59 => []
  | 62 => [[1,4,4,4,4,4]]
  | 64 => []
  | 65 => [[2,4,4,4,4,4]]
  | 67 => []
  | 68 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 76 => []
  | 80 => []
  | 95 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 213 => []
  | 235 => []
  | 250 => []
  | 262 => []
  | 266 => []
  | 275 => []
  | 280 => []
  | 287 => []
  | 308 => []
  | 324 => []
  | 328 => []
  | 350 => []
  | 359 => []
  | 360 => []
  | 384 => []
  | 417 => []
  | 423 => []
  | 627 => []
  | 628 => []
  | 638 => []
  | 646 => []
  | 655 => []
  | 668 => []
  | 693 => []
  | 702 => []
  | 703 => []
  | 705 => []
  | 706 => []
  | 717 => []
  | 737 => []
  | 743 => []
  | 760 => []
  | 762 => []
  | 779 => []
  | 780 => []
  | 785 => []
  | 798 => []
  | 813 => []
  | 832 => []
  | 836 => []
  | 837 => []
  | 856 => []
  | 874 => []
  | 875 => []
  | 876 => []
  | 877 => []
  | 887 => []
  | 901 => []
  | 902 => []
  | 903 => []
  | 922 => []
  | 929 => []
  | 930 => []
  | 941 => []
  | 943 => []
  | 979 => []
  | 999 => []
  | 1036 => []
  | 1049 => []
  | 1051 => []
  | 1062 => []
  | 1063 => []
  | 1064 => []
  | 1082 => []
  | 1083 => []
  | 1084 => []
  | 1105 => []
  | _ => []
def map_23_167 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5572 : InImage map_23_167 image5572 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5572 : Bundle := named_bundle% "RealMapCertificates/relations/basis5572.json"
theorem reductionProof5572 : EqualModuloRelations reduction5572.relations reduction5572.input reduction5572.output := by lin_cert using reduction5572.terms
theorem substitutionProof5572 : IsMapEvaluation generatorImages reduction5572.relations [8,8,350] reduction5572.output := by lin_cert using reduction5572.terms
def image5573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5573 : InImage map_23_167 image5573 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5573 : Bundle := named_bundle% "RealMapCertificates/relations/basis5573.json"
theorem reductionProof5573 : EqualModuloRelations reduction5573.relations reduction5573.input reduction5573.output := by lin_cert using reduction5573.terms
theorem substitutionProof5573 : IsMapEvaluation generatorImages reduction5573.relations [1,64,187] reduction5573.output := by lin_cert using reduction5573.terms
def image5574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5574 : InImage map_23_167 image5574 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5574 : Bundle := named_bundle% "RealMapCertificates/relations/basis5574.json"
theorem reductionProof5574 : EqualModuloRelations reduction5574.relations reduction5574.input reduction5574.output := by lin_cert using reduction5574.terms
theorem substitutionProof5574 : IsMapEvaluation generatorImages reduction5574.relations [0,69,185] reduction5574.output := by lin_cert using reduction5574.terms
def image5575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5575 : InImage map_23_167 image5575 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5575 : Bundle := named_bundle% "RealMapCertificates/relations/basis5575.json"
theorem reductionProof5575 : EqualModuloRelations reduction5575.relations reduction5575.input reduction5575.output := by lin_cert using reduction5575.terms
theorem substitutionProof5575 : IsMapEvaluation generatorImages reduction5575.relations [0,0,702] reduction5575.output := by lin_cert using reduction5575.terms
def image5576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5576 : InImage map_23_167 image5576 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5576 : Bundle := named_bundle% "RealMapCertificates/relations/basis5576.json"
theorem reductionProof5576 : EqualModuloRelations reduction5576.relations reduction5576.input reduction5576.output := by lin_cert using reduction5576.terms
theorem substitutionProof5576 : IsMapEvaluation generatorImages reduction5576.relations [0,0,64,188] reduction5576.output := by lin_cert using reduction5576.terms
def map_23_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5690 : InImage map_23_168 image5690 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5690 : Bundle := named_bundle% "RealMapCertificates/relations/basis5690.json"
theorem reductionProof5690 : EqualModuloRelations reduction5690.relations reduction5690.input reduction5690.output := by lin_cert using reduction5690.terms
theorem substitutionProof5690 : IsMapEvaluation generatorImages reduction5690.relations [13,13,266] reduction5690.output := by lin_cert using reduction5690.terms
def image5691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5691 : InImage map_23_168 image5691 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5691 : Bundle := named_bundle% "RealMapCertificates/relations/basis5691.json"
theorem reductionProof5691 : EqualModuloRelations reduction5691.relations reduction5691.input reduction5691.output := by lin_cert using reduction5691.terms
theorem substitutionProof5691 : IsMapEvaluation generatorImages reduction5691.relations [8,13,13,188] reduction5691.output := by lin_cert using reduction5691.terms
def image5692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5692 : InImage map_23_168 image5692 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5692 : Bundle := named_bundle% "RealMapCertificates/relations/basis5692.json"
theorem reductionProof5692 : EqualModuloRelations reduction5692.relations reduction5692.input reduction5692.output := by lin_cert using reduction5692.terms
theorem substitutionProof5692 : IsMapEvaluation generatorImages reduction5692.relations [0,0,0,703] reduction5692.output := by lin_cert using reduction5692.terms
def map_23_169 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5794 : InImage map_23_169 image5794 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5794 : Bundle := named_bundle% "RealMapCertificates/relations/basis5794.json"
theorem reductionProof5794 : EqualModuloRelations reduction5794.relations reduction5794.input reduction5794.output := by lin_cert using reduction5794.terms
theorem substitutionProof5794 : IsMapEvaluation generatorImages reduction5794.relations [13,13,13,13,95] reduction5794.output := by lin_cert using reduction5794.terms
def image5795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5795 : InImage map_23_169 image5795 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5795 : Bundle := named_bundle% "RealMapCertificates/relations/basis5795.json"
theorem reductionProof5795 : EqualModuloRelations reduction5795.relations reduction5795.input reduction5795.output := by lin_cert using reduction5795.terms
theorem substitutionProof5795 : IsMapEvaluation generatorImages reduction5795.relations [4,627] reduction5795.output := by lin_cert using reduction5795.terms
def image5796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5796 : InImage map_23_169 image5796 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5796 : Bundle := named_bundle% "RealMapCertificates/relations/basis5796.json"
theorem reductionProof5796 : EqualModuloRelations reduction5796.relations reduction5796.input reduction5796.output := by lin_cert using reduction5796.terms
theorem substitutionProof5796 : IsMapEvaluation generatorImages reduction5796.relations [0,0,0,717] reduction5796.output := by lin_cert using reduction5796.terms
def image5797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5797 : InImage map_23_169 image5797 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5797 : Bundle := named_bundle% "RealMapCertificates/relations/basis5797.json"
theorem reductionProof5797 : EqualModuloRelations reduction5797.relations reduction5797.input reduction5797.output := by lin_cert using reduction5797.terms
theorem substitutionProof5797 : IsMapEvaluation generatorImages reduction5797.relations [0,0,0,0,706] reduction5797.output := by lin_cert using reduction5797.terms
def map_23_170 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5905 : InImage map_23_170 image5905 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5905 : Bundle := named_bundle% "RealMapCertificates/relations/basis5905.json"
theorem reductionProof5905 : EqualModuloRelations reduction5905.relations reduction5905.input reduction5905.output := by lin_cert using reduction5905.terms
theorem substitutionProof5905 : IsMapEvaluation generatorImages reduction5905.relations [8,8,384] reduction5905.output := by lin_cert using reduction5905.terms
def image5906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5906 : InImage map_23_170 image5906 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5906 : Bundle := named_bundle% "RealMapCertificates/relations/basis5906.json"
theorem reductionProof5906 : EqualModuloRelations reduction5906.relations reduction5906.input reduction5906.output := by lin_cert using reduction5906.terms
theorem substitutionProof5906 : IsMapEvaluation generatorImages reduction5906.relations [0,8,69,138] reduction5906.output := by lin_cert using reduction5906.terms
def image5907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5907 : InImage map_23_170 image5907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5907 : Bundle := named_bundle% "RealMapCertificates/relations/basis5907.json"
theorem reductionProof5907 : EqualModuloRelations reduction5907.relations reduction5907.input reduction5907.output := by lin_cert using reduction5907.terms
theorem substitutionProof5907 : IsMapEvaluation generatorImages reduction5907.relations [0,0,3,646] reduction5907.output := by lin_cert using reduction5907.terms
def image5908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5908 : InImage map_23_170 image5908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5908 : Bundle := named_bundle% "RealMapCertificates/relations/basis5908.json"
theorem reductionProof5908 : EqualModuloRelations reduction5908.relations reduction5908.input reduction5908.output := by lin_cert using reduction5908.terms
theorem substitutionProof5908 : IsMapEvaluation generatorImages reduction5908.relations [0,0,0,0,0,0,693] reduction5908.output := by lin_cert using reduction5908.terms
def map_23_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6039 : InImage map_23_171 image6039 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6039 : Bundle := named_bundle% "RealMapCertificates/relations/basis6039.json"
theorem reductionProof6039 : EqualModuloRelations reduction6039.relations reduction6039.input reduction6039.output := by lin_cert using reduction6039.terms
theorem substitutionProof6039 : IsMapEvaluation generatorImages reduction6039.relations [779] reduction6039.output := by lin_cert using reduction6039.terms
def image6040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6040 : InImage map_23_171 image6040 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6040 : Bundle := named_bundle% "RealMapCertificates/relations/basis6040.json"
theorem reductionProof6040 : EqualModuloRelations reduction6040.relations reduction6040.input reduction6040.output := by lin_cert using reduction6040.terms
theorem substitutionProof6040 : IsMapEvaluation generatorImages reduction6040.relations [9,13,13,188] reduction6040.output := by lin_cert using reduction6040.terms
def map_23_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6130 : InImage map_23_172 image6130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6130 : Bundle := named_bundle% "RealMapCertificates/relations/basis6130.json"
theorem reductionProof6130 : EqualModuloRelations reduction6130.relations reduction6130.input reduction6130.output := by lin_cert using reduction6130.terms
theorem substitutionProof6130 : IsMapEvaluation generatorImages reduction6130.relations [4,655] reduction6130.output := by lin_cert using reduction6130.terms
def image6131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6131 : InImage map_23_172 image6131 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6131 : Bundle := named_bundle% "RealMapCertificates/relations/basis6131.json"
theorem reductionProof6131 : EqualModuloRelations reduction6131.relations reduction6131.input reduction6131.output := by lin_cert using reduction6131.terms
theorem substitutionProof6131 : IsMapEvaluation generatorImages reduction6131.relations [2,737] reduction6131.output := by lin_cert using reduction6131.terms
def map_23_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6241 : InImage map_23_173 image6241 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6241 : Bundle := named_bundle% "RealMapCertificates/relations/basis6241.json"
theorem reductionProof6241 : EqualModuloRelations reduction6241.relations reduction6241.input reduction6241.output := by lin_cert using reduction6241.terms
theorem substitutionProof6241 : IsMapEvaluation generatorImages reduction6241.relations [8,8,423] reduction6241.output := by lin_cert using reduction6241.terms
def image6242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6242 : InImage map_23_173 image6242 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6242 : Bundle := named_bundle% "RealMapCertificates/relations/basis6242.json"
theorem reductionProof6242 : EqualModuloRelations reduction6242.relations reduction6242.input reduction6242.output := by lin_cert using reduction6242.terms
theorem substitutionProof6242 : IsMapEvaluation generatorImages reduction6242.relations [0,8,69,147] reduction6242.output := by lin_cert using reduction6242.terms
def image6243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6243 : InImage map_23_173 image6243 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6243 : Bundle := named_bundle% "RealMapCertificates/relations/basis6243.json"
theorem reductionProof6243 : EqualModuloRelations reduction6243.relations reduction6243.input reduction6243.output := by lin_cert using reduction6243.terms
theorem substitutionProof6243 : IsMapEvaluation generatorImages reduction6243.relations [0,0,0,64,209] reduction6243.output := by lin_cert using reduction6243.terms
def map_23_174 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image6371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6371 : InImage map_23_174 image6371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6371 : Bundle := named_bundle% "RealMapCertificates/relations/basis6371.json"
theorem reductionProof6371 : EqualModuloRelations reduction6371.relations reduction6371.input reduction6371.output := by lin_cert using reduction6371.terms
theorem substitutionProof6371 : IsMapEvaluation generatorImages reduction6371.relations [813] reduction6371.output := by lin_cert using reduction6371.terms
def image6372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6372 : InImage map_23_174 image6372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6372 : Bundle := named_bundle% "RealMapCertificates/relations/basis6372.json"
theorem reductionProof6372 : EqualModuloRelations reduction6372.relations reduction6372.input reduction6372.output := by lin_cert using reduction6372.terms
theorem substitutionProof6372 : IsMapEvaluation generatorImages reduction6372.relations [13,13,13,188] reduction6372.output := by lin_cert using reduction6372.terms
def image6373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6373 : InImage map_23_174 image6373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6373 : Bundle := named_bundle% "RealMapCertificates/relations/basis6373.json"
theorem reductionProof6373 : EqualModuloRelations reduction6373.relations reduction6373.input reduction6373.output := by lin_cert using reduction6373.terms
theorem substitutionProof6373 : IsMapEvaluation generatorImages reduction6373.relations [9,13,328] reduction6373.output := by lin_cert using reduction6373.terms
def image6374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6374 : InImage map_23_174 image6374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6374 : Bundle := named_bundle% "RealMapCertificates/relations/basis6374.json"
theorem reductionProof6374 : EqualModuloRelations reduction6374.relations reduction6374.input reduction6374.output := by lin_cert using reduction6374.terms
theorem substitutionProof6374 : IsMapEvaluation generatorImages reduction6374.relations [1,785] reduction6374.output := by lin_cert using reduction6374.terms
def image6375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6375 : InImage map_23_174 image6375 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6375 : Bundle := named_bundle% "RealMapCertificates/relations/basis6375.json"
theorem reductionProof6375 : EqualModuloRelations reduction6375.relations reduction6375.input reduction6375.output := by lin_cert using reduction6375.terms
theorem substitutionProof6375 : IsMapEvaluation generatorImages reduction6375.relations [0,0,0,0,760] reduction6375.output := by lin_cert using reduction6375.terms
def map_23_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6478 : InImage map_23_175 image6478 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6478 : Bundle := named_bundle% "RealMapCertificates/relations/basis6478.json"
theorem reductionProof6478 : EqualModuloRelations reduction6478.relations reduction6478.input reduction6478.output := by lin_cert using reduction6478.terms
theorem substitutionProof6478 : IsMapEvaluation generatorImages reduction6478.relations [13,13,13,23,76] reduction6478.output := by lin_cert using reduction6478.terms
def image6479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6479 : InImage map_23_175 image6479 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6479 : Bundle := named_bundle% "RealMapCertificates/relations/basis6479.json"
theorem reductionProof6479 : EqualModuloRelations reduction6479.relations reduction6479.input reduction6479.output := by lin_cert using reduction6479.terms
theorem substitutionProof6479 : IsMapEvaluation generatorImages reduction6479.relations [0,0,0,0,780] reduction6479.output := by lin_cert using reduction6479.terms
def map_23_176 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6585 : InImage map_23_176 image6585 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6585 : Bundle := named_bundle% "RealMapCertificates/relations/basis6585.json"
theorem reductionProof6585 : EqualModuloRelations reduction6585.relations reduction6585.input reduction6585.output := by lin_cert using reduction6585.terms
theorem substitutionProof6585 : IsMapEvaluation generatorImages reduction6585.relations [832] reduction6585.output := by lin_cert using reduction6585.terms
def image6586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6586 : InImage map_23_176 image6586 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6586 : Bundle := named_bundle% "RealMapCertificates/relations/basis6586.json"
theorem reductionProof6586 : EqualModuloRelations reduction6586.relations reduction6586.input reduction6586.output := by lin_cert using reduction6586.terms
theorem substitutionProof6586 : IsMapEvaluation generatorImages reduction6586.relations [8,9,423] reduction6586.output := by lin_cert using reduction6586.terms
def image6587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6587 : InImage map_23_176 image6587 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6587 : Bundle := named_bundle% "RealMapCertificates/relations/basis6587.json"
theorem reductionProof6587 : EqualModuloRelations reduction6587.relations reduction6587.input reduction6587.output := by lin_cert using reduction6587.terms
theorem substitutionProof6587 : IsMapEvaluation generatorImages reduction6587.relations [0,0,0,0,0,0,762] reduction6587.output := by lin_cert using reduction6587.terms
def map_23_177 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6722 : InImage map_23_177 image6722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6722 : Bundle := named_bundle% "RealMapCertificates/relations/basis6722.json"
theorem reductionProof6722 : EqualModuloRelations reduction6722.relations reduction6722.input reduction6722.output := by lin_cert using reduction6722.terms
theorem substitutionProof6722 : IsMapEvaluation generatorImages reduction6722.relations [856] reduction6722.output := by lin_cert using reduction6722.terms
def image6723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6723 : InImage map_23_177 image6723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6723 : Bundle := named_bundle% "RealMapCertificates/relations/basis6723.json"
theorem reductionProof6723 : EqualModuloRelations reduction6723.relations reduction6723.input reduction6723.output := by lin_cert using reduction6723.terms
theorem substitutionProof6723 : IsMapEvaluation generatorImages reduction6723.relations [13,13,328] reduction6723.output := by lin_cert using reduction6723.terms
def image6724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6724 : InImage map_23_177 image6724 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6724 : Bundle := named_bundle% "RealMapCertificates/relations/basis6724.json"
theorem reductionProof6724 : EqualModuloRelations reduction6724.relations reduction6724.input reduction6724.output := by lin_cert using reduction6724.terms
theorem substitutionProof6724 : IsMapEvaluation generatorImages reduction6724.relations [8,638] reduction6724.output := by lin_cert using reduction6724.terms
def map_23_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6947 : InImage map_23_179 image6947 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6947 : Bundle := named_bundle% "RealMapCertificates/relations/basis6947.json"
theorem reductionProof6947 : EqualModuloRelations reduction6947.relations reduction6947.input reduction6947.output := by lin_cert using reduction6947.terms
theorem substitutionProof6947 : IsMapEvaluation generatorImages reduction6947.relations [875] reduction6947.output := by lin_cert using reduction6947.terms
def image6948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6948 : InImage map_23_179 image6948 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6948 : Bundle := named_bundle% "RealMapCertificates/relations/basis6948.json"
theorem reductionProof6948 : EqualModuloRelations reduction6948.relations reduction6948.input reduction6948.output := by lin_cert using reduction6948.terms
theorem substitutionProof6948 : IsMapEvaluation generatorImages reduction6948.relations [874] reduction6948.output := by lin_cert using reduction6948.terms
def image6949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6949 : InImage map_23_179 image6949 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6949 : Bundle := named_bundle% "RealMapCertificates/relations/basis6949.json"
theorem reductionProof6949 : EqualModuloRelations reduction6949.relations reduction6949.input reduction6949.output := by lin_cert using reduction6949.terms
theorem substitutionProof6949 : IsMapEvaluation generatorImages reduction6949.relations [8,13,423] reduction6949.output := by lin_cert using reduction6949.terms
def map_23_180 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image7091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7091 : InImage map_23_180 image7091 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction7091 : Bundle := named_bundle% "RealMapCertificates/relations/basis7091.json"
theorem reductionProof7091 : EqualModuloRelations reduction7091.relations reduction7091.input reduction7091.output := by lin_cert using reduction7091.terms
theorem substitutionProof7091 : IsMapEvaluation generatorImages reduction7091.relations [887] reduction7091.output := by lin_cert using reduction7091.terms
def image7092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7092 : InImage map_23_180 image7092 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction7092 : Bundle := named_bundle% "RealMapCertificates/relations/basis7092.json"
theorem reductionProof7092 : EqualModuloRelations reduction7092.relations reduction7092.input reduction7092.output := by lin_cert using reduction7092.terms
theorem substitutionProof7092 : IsMapEvaluation generatorImages reduction7092.relations [13,13,360] reduction7092.output := by lin_cert using reduction7092.terms
def image7093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7093 : InImage map_23_180 image7093 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction7093 : Bundle := named_bundle% "RealMapCertificates/relations/basis7093.json"
theorem reductionProof7093 : EqualModuloRelations reduction7093.relations reduction7093.input reduction7093.output := by lin_cert using reduction7093.terms
theorem substitutionProof7093 : IsMapEvaluation generatorImages reduction7093.relations [8,668] reduction7093.output := by lin_cert using reduction7093.terms
def image7094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7094 : InImage map_23_180 image7094 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction7094 : Bundle := named_bundle% "RealMapCertificates/relations/basis7094.json"
theorem reductionProof7094 : EqualModuloRelations reduction7094.relations reduction7094.input reduction7094.output := by lin_cert using reduction7094.terms
theorem substitutionProof7094 : IsMapEvaluation generatorImages reduction7094.relations [0,876] reduction7094.output := by lin_cert using reduction7094.terms
def image7095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7095 : InImage map_23_180 image7095 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction7095 : Bundle := named_bundle% "RealMapCertificates/relations/basis7095.json"
theorem reductionProof7095 : EqualModuloRelations reduction7095.relations reduction7095.input reduction7095.output := by lin_cert using reduction7095.terms
theorem substitutionProof7095 : IsMapEvaluation generatorImages reduction7095.relations [0,64,250] reduction7095.output := by lin_cert using reduction7095.terms
def image7096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7096 : InImage map_23_180 image7096 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction7096 : Bundle := named_bundle% "RealMapCertificates/relations/basis7096.json"
theorem reductionProof7096 : EqualModuloRelations reduction7096.relations reduction7096.input reduction7096.output := by lin_cert using reduction7096.terms
theorem substitutionProof7096 : IsMapEvaluation generatorImages reduction7096.relations [0,0,0,0,64,235] reduction7096.output := by lin_cert using reduction7096.terms
def image7097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7097 : InImage map_23_180 image7097 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction7097 : Bundle := named_bundle% "RealMapCertificates/relations/basis7097.json"
theorem reductionProof7097 : EqualModuloRelations reduction7097.relations reduction7097.input reduction7097.output := by lin_cert using reduction7097.terms
theorem substitutionProof7097 : IsMapEvaluation generatorImages reduction7097.relations [0,0,0,0,0,0,0,0,0,0,0,0,743] reduction7097.output := by lin_cert using reduction7097.terms
def map_23_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7199 : InImage map_23_181 image7199 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7199 : Bundle := named_bundle% "RealMapCertificates/relations/basis7199.json"
theorem reductionProof7199 : EqualModuloRelations reduction7199.relations reduction7199.input reduction7199.output := by lin_cert using reduction7199.terms
theorem substitutionProof7199 : IsMapEvaluation generatorImages reduction7199.relations [0,0,0,0,0,837] reduction7199.output := by lin_cert using reduction7199.terms
def image7200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7200 : InImage map_23_181 image7200 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7200 : Bundle := named_bundle% "RealMapCertificates/relations/basis7200.json"
theorem reductionProof7200 : EqualModuloRelations reduction7200.relations reduction7200.input reduction7200.output := by lin_cert using reduction7200.terms
theorem substitutionProof7200 : IsMapEvaluation generatorImages reduction7200.relations [0,0,0,0,0,836] reduction7200.output := by lin_cert using reduction7200.terms
def map_23_182 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7309 : InImage map_23_182 image7309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7309 : Bundle := named_bundle% "RealMapCertificates/relations/basis7309.json"
theorem reductionProof7309 : EqualModuloRelations reduction7309.relations reduction7309.input reduction7309.output := by lin_cert using reduction7309.terms
theorem substitutionProof7309 : IsMapEvaluation generatorImages reduction7309.relations [903] reduction7309.output := by lin_cert using reduction7309.terms
def image7310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7310 : InImage map_23_182 image7310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7310 : Bundle := named_bundle% "RealMapCertificates/relations/basis7310.json"
theorem reductionProof7310 : EqualModuloRelations reduction7310.relations reduction7310.input reduction7310.output := by lin_cert using reduction7310.terms
theorem substitutionProof7310 : IsMapEvaluation generatorImages reduction7310.relations [902] reduction7310.output := by lin_cert using reduction7310.terms
def image7311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7311 : InImage map_23_182 image7311 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7311 : Bundle := named_bundle% "RealMapCertificates/relations/basis7311.json"
theorem reductionProof7311 : EqualModuloRelations reduction7311.relations reduction7311.input reduction7311.output := by lin_cert using reduction7311.terms
theorem substitutionProof7311 : IsMapEvaluation generatorImages reduction7311.relations [901] reduction7311.output := by lin_cert using reduction7311.terms
def image7312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7312 : InImage map_23_182 image7312 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7312 : Bundle := named_bundle% "RealMapCertificates/relations/basis7312.json"
theorem reductionProof7312 : EqualModuloRelations reduction7312.relations reduction7312.input reduction7312.output := by lin_cert using reduction7312.terms
theorem substitutionProof7312 : IsMapEvaluation generatorImages reduction7312.relations [9,13,423] reduction7312.output := by lin_cert using reduction7312.terms
def map_23_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7461 : InImage map_23_183 image7461 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7461 : Bundle := named_bundle% "RealMapCertificates/relations/basis7461.json"
theorem reductionProof7461 : EqualModuloRelations reduction7461.relations reduction7461.input reduction7461.output := by lin_cert using reduction7461.terms
theorem substitutionProof7461 : IsMapEvaluation generatorImages reduction7461.relations [922] reduction7461.output := by lin_cert using reduction7461.terms
def image7462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7462 : InImage map_23_183 image7462 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7462 : Bundle := named_bundle% "RealMapCertificates/relations/basis7462.json"
theorem reductionProof7462 : EqualModuloRelations reduction7462.relations reduction7462.input reduction7462.output := by lin_cert using reduction7462.terms
theorem substitutionProof7462 : IsMapEvaluation generatorImages reduction7462.relations [13,23,287] reduction7462.output := by lin_cert using reduction7462.terms
def image7463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7463 : InImage map_23_183 image7463 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7463 : Bundle := named_bundle% "RealMapCertificates/relations/basis7463.json"
theorem reductionProof7463 : EqualModuloRelations reduction7463.relations reduction7463.input reduction7463.output := by lin_cert using reduction7463.terms
theorem substitutionProof7463 : IsMapEvaluation generatorImages reduction7463.relations [8,705] reduction7463.output := by lin_cert using reduction7463.terms
def image7464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7464 : InImage map_23_183 image7464 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7464 : Bundle := named_bundle% "RealMapCertificates/relations/basis7464.json"
theorem reductionProof7464 : EqualModuloRelations reduction7464.relations reduction7464.input reduction7464.output := by lin_cert using reduction7464.terms
theorem substitutionProof7464 : IsMapEvaluation generatorImages reduction7464.relations [2,876] reduction7464.output := by lin_cert using reduction7464.terms
def map_23_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7560 : InImage map_23_184 image7560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7560 : Bundle := named_bundle% "RealMapCertificates/relations/basis7560.json"
theorem reductionProof7560 : EqualModuloRelations reduction7560.relations reduction7560.input reduction7560.output := by lin_cert using reduction7560.terms
theorem substitutionProof7560 : IsMapEvaluation generatorImages reduction7560.relations [929] reduction7560.output := by lin_cert using reduction7560.terms
def image7561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7561 : InImage map_23_184 image7561 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7561 : Bundle := named_bundle% "RealMapCertificates/relations/basis7561.json"
theorem reductionProof7561 : EqualModuloRelations reduction7561.relations reduction7561.input reduction7561.output := by lin_cert using reduction7561.terms
theorem substitutionProof7561 : IsMapEvaluation generatorImages reduction7561.relations [1,13,628] reduction7561.output := by lin_cert using reduction7561.terms
def map_23_185 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7676 : InImage map_23_185 image7676 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7676 : Bundle := named_bundle% "RealMapCertificates/relations/basis7676.json"
theorem reductionProof7676 : EqualModuloRelations reduction7676.relations reduction7676.input reduction7676.output := by lin_cert using reduction7676.terms
theorem substitutionProof7676 : IsMapEvaluation generatorImages reduction7676.relations [941] reduction7676.output := by lin_cert using reduction7676.terms
def image7677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7677 : InImage map_23_185 image7677 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7677 : Bundle := named_bundle% "RealMapCertificates/relations/basis7677.json"
theorem reductionProof7677 : EqualModuloRelations reduction7677.relations reduction7677.input reduction7677.output := by lin_cert using reduction7677.terms
theorem substitutionProof7677 : IsMapEvaluation generatorImages reduction7677.relations [64,280] reduction7677.output := by lin_cert using reduction7677.terms
def image7678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7678 : InImage map_23_185 image7678 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7678 : Bundle := named_bundle% "RealMapCertificates/relations/basis7678.json"
theorem reductionProof7678 : EqualModuloRelations reduction7678.relations reduction7678.input reduction7678.output := by lin_cert using reduction7678.terms
theorem substitutionProof7678 : IsMapEvaluation generatorImages reduction7678.relations [13,13,423] reduction7678.output := by lin_cert using reduction7678.terms
def image7679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7679 : InImage map_23_185 image7679 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7679 : Bundle := named_bundle% "RealMapCertificates/relations/basis7679.json"
theorem reductionProof7679 : EqualModuloRelations reduction7679.relations reduction7679.input reduction7679.output := by lin_cert using reduction7679.terms
theorem substitutionProof7679 : IsMapEvaluation generatorImages reduction7679.relations [0,67,266] reduction7679.output := by lin_cert using reduction7679.terms
def map_23_186 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7827 : InImage map_23_186 image7827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7827 : Bundle := named_bundle% "RealMapCertificates/relations/basis7827.json"
theorem reductionProof7827 : EqualModuloRelations reduction7827.relations reduction7827.input reduction7827.output := by lin_cert using reduction7827.terms
theorem substitutionProof7827 : IsMapEvaluation generatorImages reduction7827.relations [9,705] reduction7827.output := by lin_cert using reduction7827.terms
def image7828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7828 : InImage map_23_186 image7828 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7828 : Bundle := named_bundle% "RealMapCertificates/relations/basis7828.json"
theorem reductionProof7828 : EqualModuloRelations reduction7828.relations reduction7828.input reduction7828.output := by lin_cert using reduction7828.terms
theorem substitutionProof7828 : IsMapEvaluation generatorImages reduction7828.relations [1,64,275] reduction7828.output := by lin_cert using reduction7828.terms
def image7829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7829 : InImage map_23_186 image7829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7829 : Bundle := named_bundle% "RealMapCertificates/relations/basis7829.json"
theorem reductionProof7829 : EqualModuloRelations reduction7829.relations reduction7829.input reduction7829.output := by lin_cert using reduction7829.terms
theorem substitutionProof7829 : IsMapEvaluation generatorImages reduction7829.relations [0,0,930] reduction7829.output := by lin_cert using reduction7829.terms
def map_23_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7911 : InImage map_23_187 image7911 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7911 : Bundle := named_bundle% "RealMapCertificates/relations/basis7911.json"
theorem reductionProof7911 : EqualModuloRelations reduction7911.relations reduction7911.input reduction7911.output := by lin_cert using reduction7911.terms
theorem substitutionProof7911 : IsMapEvaluation generatorImages reduction7911.relations [3,876] reduction7911.output := by lin_cert using reduction7911.terms
def image7912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7912 : InImage map_23_187 image7912 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7912 : Bundle := named_bundle% "RealMapCertificates/relations/basis7912.json"
theorem reductionProof7912 : EqualModuloRelations reduction7912.relations reduction7912.input reduction7912.output := by lin_cert using reduction7912.terms
theorem substitutionProof7912 : IsMapEvaluation generatorImages reduction7912.relations [2,2,877] reduction7912.output := by lin_cert using reduction7912.terms
def map_23_188 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8023 : InImage map_23_188 image8023 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8023 : Bundle := named_bundle% "RealMapCertificates/relations/basis8023.json"
theorem reductionProof8023 : EqualModuloRelations reduction8023.relations reduction8023.input reduction8023.output := by lin_cert using reduction8023.terms
theorem substitutionProof8023 : IsMapEvaluation generatorImages reduction8023.relations [979] reduction8023.output := by lin_cert using reduction8023.terms
def image8024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8024 : InImage map_23_188 image8024 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8024 : Bundle := named_bundle% "RealMapCertificates/relations/basis8024.json"
theorem reductionProof8024 : EqualModuloRelations reduction8024.relations reduction8024.input reduction8024.output := by lin_cert using reduction8024.terms
theorem substitutionProof8024 : IsMapEvaluation generatorImages reduction8024.relations [8,760] reduction8024.output := by lin_cert using reduction8024.terms
def image8025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8025 : InImage map_23_188 image8025 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8025 : Bundle := named_bundle% "RealMapCertificates/relations/basis8025.json"
theorem reductionProof8025 : EqualModuloRelations reduction8025.relations reduction8025.input reduction8025.output := by lin_cert using reduction8025.terms
theorem substitutionProof8025 : IsMapEvaluation generatorImages reduction8025.relations [0,0,0,943] reduction8025.output := by lin_cert using reduction8025.terms
def map_23_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8180 : InImage map_23_189 image8180 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8180 : Bundle := named_bundle% "RealMapCertificates/relations/basis8180.json"
theorem reductionProof8180 : EqualModuloRelations reduction8180.relations reduction8180.input reduction8180.output := by lin_cert using reduction8180.terms
theorem substitutionProof8180 : IsMapEvaluation generatorImages reduction8180.relations [64,308] reduction8180.output := by lin_cert using reduction8180.terms
def image8181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8181 : InImage map_23_189 image8181 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8181 : Bundle := named_bundle% "RealMapCertificates/relations/basis8181.json"
theorem reductionProof8181 : EqualModuloRelations reduction8181.relations reduction8181.input reduction8181.output := by lin_cert using reduction8181.terms
theorem substitutionProof8181 : IsMapEvaluation generatorImages reduction8181.relations [13,705] reduction8181.output := by lin_cert using reduction8181.terms
def image8182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8182 : InImage map_23_189 image8182 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8182 : Bundle := named_bundle% "RealMapCertificates/relations/basis8182.json"
theorem reductionProof8182 : EqualModuloRelations reduction8182.relations reduction8182.input reduction8182.output := by lin_cert using reduction8182.terms
theorem substitutionProof8182 : IsMapEvaluation generatorImages reduction8182.relations [1,3,877] reduction8182.output := by lin_cert using reduction8182.terms
def image8183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8183 : InImage map_23_189 image8183 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8183 : Bundle := named_bundle% "RealMapCertificates/relations/basis8183.json"
theorem reductionProof8183 : EqualModuloRelations reduction8183.relations reduction8183.input reduction8183.output := by lin_cert using reduction8183.terms
theorem substitutionProof8183 : IsMapEvaluation generatorImages reduction8183.relations [0,2,930] reduction8183.output := by lin_cert using reduction8183.terms
def map_23_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8273 : InImage map_23_190 image8273 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8273 : Bundle := named_bundle% "RealMapCertificates/relations/basis8273.json"
theorem reductionProof8273 : EqualModuloRelations reduction8273.relations reduction8273.input reduction8273.output := by lin_cert using reduction8273.terms
theorem substitutionProof8273 : IsMapEvaluation generatorImages reduction8273.relations [0,999] reduction8273.output := by lin_cert using reduction8273.terms
def map_23_191 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8402 : InImage map_23_191 image8402 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8402 : Bundle := named_bundle% "RealMapCertificates/relations/basis8402.json"
theorem reductionProof8402 : EqualModuloRelations reduction8402.relations reduction8402.input reduction8402.output := by lin_cert using reduction8402.terms
theorem substitutionProof8402 : IsMapEvaluation generatorImages reduction8402.relations [13,13,13,262] reduction8402.output := by lin_cert using reduction8402.terms
def image8403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8403 : InImage map_23_191 image8403 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8403 : Bundle := named_bundle% "RealMapCertificates/relations/basis8403.json"
theorem reductionProof8403 : EqualModuloRelations reduction8403.relations reduction8403.input reduction8403.output := by lin_cert using reduction8403.terms
theorem substitutionProof8403 : IsMapEvaluation generatorImages reduction8403.relations [8,798] reduction8403.output := by lin_cert using reduction8403.terms
def map_23_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8550 : InImage map_23_192 image8550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8550 : Bundle := named_bundle% "RealMapCertificates/relations/basis8550.json"
theorem reductionProof8550 : EqualModuloRelations reduction8550.relations reduction8550.input reduction8550.output := by lin_cert using reduction8550.terms
theorem substitutionProof8550 : IsMapEvaluation generatorImages reduction8550.relations [1049] reduction8550.output := by lin_cert using reduction8550.terms
def image8551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8551 : InImage map_23_192 image8551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8551 : Bundle := named_bundle% "RealMapCertificates/relations/basis8551.json"
theorem reductionProof8551 : EqualModuloRelations reduction8551.relations reduction8551.input reduction8551.output := by lin_cert using reduction8551.terms
theorem substitutionProof8551 : IsMapEvaluation generatorImages reduction8551.relations [13,13,23,213] reduction8551.output := by lin_cert using reduction8551.terms
def image8552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8552 : InImage map_23_192 image8552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8552 : Bundle := named_bundle% "RealMapCertificates/relations/basis8552.json"
theorem reductionProof8552 : EqualModuloRelations reduction8552.relations reduction8552.input reduction8552.output := by lin_cert using reduction8552.terms
theorem substitutionProof8552 : IsMapEvaluation generatorImages reduction8552.relations [1,62,324] reduction8552.output := by lin_cert using reduction8552.terms
def image8553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8553 : InImage map_23_192 image8553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8553 : Bundle := named_bundle% "RealMapCertificates/relations/basis8553.json"
theorem reductionProof8553 : EqualModuloRelations reduction8553.relations reduction8553.input reduction8553.output := by lin_cert using reduction8553.terms
theorem substitutionProof8553 : IsMapEvaluation generatorImages reduction8553.relations [0,1036] reduction8553.output := by lin_cert using reduction8553.terms
def map_23_193 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8644 : InImage map_23_193 image8644 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8644 : Bundle := named_bundle% "RealMapCertificates/relations/basis8644.json"
theorem reductionProof8644 : EqualModuloRelations reduction8644.relations reduction8644.input reduction8644.output := by lin_cert using reduction8644.terms
theorem substitutionProof8644 : IsMapEvaluation generatorImages reduction8644.relations [1063] reduction8644.output := by lin_cert using reduction8644.terms
def image8645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8645 : InImage map_23_193 image8645 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8645 : Bundle := named_bundle% "RealMapCertificates/relations/basis8645.json"
theorem reductionProof8645 : EqualModuloRelations reduction8645.relations reduction8645.input reduction8645.output := by lin_cert using reduction8645.terms
theorem substitutionProof8645 : IsMapEvaluation generatorImages reduction8645.relations [1062] reduction8645.output := by lin_cert using reduction8645.terms
def image8646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8646 : InImage map_23_193 image8646 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8646 : Bundle := named_bundle% "RealMapCertificates/relations/basis8646.json"
theorem reductionProof8646 : EqualModuloRelations reduction8646.relations reduction8646.input reduction8646.output := by lin_cert using reduction8646.terms
theorem substitutionProof8646 : IsMapEvaluation generatorImages reduction8646.relations [0,65,324] reduction8646.output := by lin_cert using reduction8646.terms
def map_23_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8785 : InImage map_23_194 image8785 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8785 : Bundle := named_bundle% "RealMapCertificates/relations/basis8785.json"
theorem reductionProof8785 : EqualModuloRelations reduction8785.relations reduction8785.input reduction8785.output := by lin_cert using reduction8785.terms
theorem substitutionProof8785 : IsMapEvaluation generatorImages reduction8785.relations [1082] reduction8785.output := by lin_cert using reduction8785.terms
def image8786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8786 : InImage map_23_194 image8786 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8786 : Bundle := named_bundle% "RealMapCertificates/relations/basis8786.json"
theorem reductionProof8786 : EqualModuloRelations reduction8786.relations reduction8786.input reduction8786.output := by lin_cert using reduction8786.terms
theorem substitutionProof8786 : IsMapEvaluation generatorImages reduction8786.relations [24,628] reduction8786.output := by lin_cert using reduction8786.terms
def image8787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8787 : InImage map_23_194 image8787 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8787 : Bundle := named_bundle% "RealMapCertificates/relations/basis8787.json"
theorem reductionProof8787 : EqualModuloRelations reduction8787.relations reduction8787.input reduction8787.output := by lin_cert using reduction8787.terms
theorem substitutionProof8787 : IsMapEvaluation generatorImages reduction8787.relations [8,80,209] reduction8787.output := by lin_cert using reduction8787.terms
def image8788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8788 : InImage map_23_194 image8788 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8788 : Bundle := named_bundle% "RealMapCertificates/relations/basis8788.json"
theorem reductionProof8788 : EqualModuloRelations reduction8788.relations reduction8788.input reduction8788.output := by lin_cert using reduction8788.terms
theorem substitutionProof8788 : IsMapEvaluation generatorImages reduction8788.relations [0,0,1051] reduction8788.output := by lin_cert using reduction8788.terms
def map_23_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8955 : InImage map_23_195 image8955 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8955 : Bundle := named_bundle% "RealMapCertificates/relations/basis8955.json"
theorem reductionProof8955 : EqualModuloRelations reduction8955.relations reduction8955.input reduction8955.output := by lin_cert using reduction8955.terms
theorem substitutionProof8955 : IsMapEvaluation generatorImages reduction8955.relations [3,3,877] reduction8955.output := by lin_cert using reduction8955.terms
def image8956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8956 : InImage map_23_195 image8956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8956 : Bundle := named_bundle% "RealMapCertificates/relations/basis8956.json"
theorem reductionProof8956 : EqualModuloRelations reduction8956.relations reduction8956.input reduction8956.output := by lin_cert using reduction8956.terms
theorem substitutionProof8956 : IsMapEvaluation generatorImages reduction8956.relations [0,1084] reduction8956.output := by lin_cert using reduction8956.terms
def image8957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8957 : InImage map_23_195 image8957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8957 : Bundle := named_bundle% "RealMapCertificates/relations/basis8957.json"
theorem reductionProof8957 : EqualModuloRelations reduction8957.relations reduction8957.input reduction8957.output := by lin_cert using reduction8957.terms
theorem substitutionProof8957 : IsMapEvaluation generatorImages reduction8957.relations [0,1083] reduction8957.output := by lin_cert using reduction8957.terms
def map_23_196 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9054 : InImage map_23_196 image9054 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9054 : Bundle := named_bundle% "RealMapCertificates/relations/basis9054.json"
theorem reductionProof9054 : EqualModuloRelations reduction9054.relations reduction9054.input reduction9054.output := by lin_cert using reduction9054.terms
theorem substitutionProof9054 : IsMapEvaluation generatorImages reduction9054.relations [1105] reduction9054.output := by lin_cert using reduction9054.terms
def image9055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9055 : InImage map_23_196 image9055 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9055 : Bundle := named_bundle% "RealMapCertificates/relations/basis9055.json"
theorem reductionProof9055 : EqualModuloRelations reduction9055.relations reduction9055.input reduction9055.output := by lin_cert using reduction9055.terms
theorem substitutionProof9055 : IsMapEvaluation generatorImages reduction9055.relations [67,359] reduction9055.output := by lin_cert using reduction9055.terms
def image9056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9056 : InImage map_23_196 image9056 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9056 : Bundle := named_bundle% "RealMapCertificates/relations/basis9056.json"
theorem reductionProof9056 : EqualModuloRelations reduction9056.relations reduction9056.input reduction9056.output := by lin_cert using reduction9056.terms
theorem substitutionProof9056 : IsMapEvaluation generatorImages reduction9056.relations [13,23,417] reduction9056.output := by lin_cert using reduction9056.terms
def image9057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9057 : InImage map_23_196 image9057 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9057 : Bundle := named_bundle% "RealMapCertificates/relations/basis9057.json"
theorem reductionProof9057 : EqualModuloRelations reduction9057.relations reduction9057.input reduction9057.output := by lin_cert using reduction9057.terms
theorem substitutionProof9057 : IsMapEvaluation generatorImages reduction9057.relations [1,1083] reduction9057.output := by lin_cert using reduction9057.terms
def image9058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9058 : InImage map_23_196 image9058 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9058 : Bundle := named_bundle% "RealMapCertificates/relations/basis9058.json"
theorem reductionProof9058 : EqualModuloRelations reduction9058.relations reduction9058.input reduction9058.output := by lin_cert using reduction9058.terms
theorem substitutionProof9058 : IsMapEvaluation generatorImages reduction9058.relations [0,0,71,324] reduction9058.output := by lin_cert using reduction9058.terms
def image9059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9059 : InImage map_23_196 image9059 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9059 : Bundle := named_bundle% "RealMapCertificates/relations/basis9059.json"
theorem reductionProof9059 : EqualModuloRelations reduction9059.relations reduction9059.input reduction9059.output := by lin_cert using reduction9059.terms
theorem substitutionProof9059 : IsMapEvaluation generatorImages reduction9059.relations [0,0,0,1064] reduction9059.output := by lin_cert using reduction9059.terms
def map_23_197 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9216 : InImage map_23_197 image9216 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9216 : Bundle := named_bundle% "RealMapCertificates/relations/basis9216.json"
theorem reductionProof9216 : EqualModuloRelations reduction9216.relations reduction9216.input reduction9216.output := by lin_cert using reduction9216.terms
theorem substitutionProof9216 : IsMapEvaluation generatorImages reduction9216.relations [9,80,209] reduction9216.output := by lin_cert using reduction9216.terms
def image9217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9217 : InImage map_23_197 image9217 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9217 : Bundle := named_bundle% "RealMapCertificates/relations/basis9217.json"
theorem reductionProof9217 : EqualModuloRelations reduction9217.relations reduction9217.input reduction9217.output := by lin_cert using reduction9217.terms
theorem substitutionProof9217 : IsMapEvaluation generatorImages reduction9217.relations [0,68,359] reduction9217.output := by lin_cert using reduction9217.terms
def image9218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9218 : InImage map_23_197 image9218 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9218 : Bundle := named_bundle% "RealMapCertificates/relations/basis9218.json"
theorem reductionProof9218 : EqualModuloRelations reduction9218.relations reduction9218.input reduction9218.output := by lin_cert using reduction9218.terms
theorem substitutionProof9218 : IsMapEvaluation generatorImages reduction9218.relations [0,0,0,0,0,0,0,0,0,59,324] reduction9218.output := by lin_cert using reduction9218.terms
end RealMapCertificates
