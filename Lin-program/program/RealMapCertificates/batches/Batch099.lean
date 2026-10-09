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
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 43 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 67 => []
  | 71 => [[4,4,4,4,6]]
  | 74 => []
  | 75 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 125 => [[4,4,4,5,5,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 250 => []
  | 261 => []
  | 324 => []
  | 331 => []
  | 359 => []
  | 373 => []
  | 411 => []
  | 418 => []
  | 570 => []
  | 604 => []
  | 619 => []
  | 628 => []
  | 629 => []
  | 630 => []
  | 648 => []
  | 679 => []
  | 691 => []
  | 822 => []
  | 930 => []
  | 945 => []
  | 982 => []
  | 1002 => []
  | 1037 => []
  | 1041 => []
  | 1050 => []
  | 1052 => []
  | 1064 => []
  | 1083 => []
  | 1146 => []
  | 1147 => []
  | 1148 => []
  | 1149 => []
  | 1150 => []
  | 1152 => []
  | 1153 => []
  | 1154 => []
  | 1171 => []
  | 1175 => []
  | 1205 => []
  | 1242 => []
  | 1244 => []
  | 1245 => []
  | 1247 => []
  | 1257 => []
  | 1258 => []
  | 1263 => []
  | 1305 => []
  | 1338 => []
  | 1351 => []
  | 1370 => []
  | 1407 => []
  | 1431 => []
  | 1444 => []
  | 1445 => []
  | 1447 => []
  | 1455 => []
  | 1476 => []
  | 1489 => []
  | 1519 => []
  | 1520 => []
  | 1523 => []
  | 1541 => []
  | 1542 => []
  | 1543 => []
  | 1557 => []
  | 1574 => []
  | 1575 => []
  | 1624 => []
  | 1642 => []
  | _ => []
def map_23_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9400 : InImage map_23_198 image9400 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9400 : Bundle := named_bundle% "RealMapCertificates/relations/basis9400.json"
theorem reductionProof9400 : EqualModuloRelations reduction9400.relations reduction9400.input reduction9400.output := by lin_cert using reduction9400.terms
theorem substitutionProof9400 : IsMapEvaluation generatorImages reduction9400.relations [1146] reduction9400.output := by lin_cert using reduction9400.terms
def image9401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9401 : InImage map_23_198 image9401 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9401 : Bundle := named_bundle% "RealMapCertificates/relations/basis9401.json"
theorem reductionProof9401 : EqualModuloRelations reduction9401.relations reduction9401.input reduction9401.output := by lin_cert using reduction9401.terms
theorem substitutionProof9401 : IsMapEvaluation generatorImages reduction9401.relations [9,13,13,331] reduction9401.output := by lin_cert using reduction9401.terms
def image9402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9402 : InImage map_23_198 image9402 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9402 : Bundle := named_bundle% "RealMapCertificates/relations/basis9402.json"
theorem reductionProof9402 : EqualModuloRelations reduction9402.relations reduction9402.input reduction9402.output := by lin_cert using reduction9402.terms
theorem substitutionProof9402 : IsMapEvaluation generatorImages reduction9402.relations [2,1083] reduction9402.output := by lin_cert using reduction9402.terms
def image9403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9403 : InImage map_23_198 image9403 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9403 : Bundle := named_bundle% "RealMapCertificates/relations/basis9403.json"
theorem reductionProof9403 : EqualModuloRelations reduction9403.relations reduction9403.input reduction9403.output := by lin_cert using reduction9403.terms
theorem substitutionProof9403 : IsMapEvaluation generatorImages reduction9403.relations [1,1,71,324] reduction9403.output := by lin_cert using reduction9403.terms
def map_23_199 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9520 : InImage map_23_199 image9520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9520 : Bundle := named_bundle% "RealMapCertificates/relations/basis9520.json"
theorem reductionProof9520 : EqualModuloRelations reduction9520.relations reduction9520.input reduction9520.output := by lin_cert using reduction9520.terms
theorem substitutionProof9520 : IsMapEvaluation generatorImages reduction9520.relations [1171] reduction9520.output := by lin_cert using reduction9520.terms
def image9521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9521 : InImage map_23_199 image9521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9521 : Bundle := named_bundle% "RealMapCertificates/relations/basis9521.json"
theorem reductionProof9521 : EqualModuloRelations reduction9521.relations reduction9521.input reduction9521.output := by lin_cert using reduction9521.terms
theorem substitutionProof9521 : IsMapEvaluation generatorImages reduction9521.relations [64,418] reduction9521.output := by lin_cert using reduction9521.terms
def image9522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9522 : InImage map_23_199 image9522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9522 : Bundle := named_bundle% "RealMapCertificates/relations/basis9522.json"
theorem reductionProof9522 : EqualModuloRelations reduction9522.relations reduction9522.input reduction9522.output := by lin_cert using reduction9522.terms
theorem substitutionProof9522 : IsMapEvaluation generatorImages reduction9522.relations [13,822] reduction9522.output := by lin_cert using reduction9522.terms
def image9523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9523 : InImage map_23_199 image9523 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9523 : Bundle := named_bundle% "RealMapCertificates/relations/basis9523.json"
theorem reductionProof9523 : EqualModuloRelations reduction9523.relations reduction9523.input reduction9523.output := by lin_cert using reduction9523.terms
theorem substitutionProof9523 : IsMapEvaluation generatorImages reduction9523.relations [0,1147] reduction9523.output := by lin_cert using reduction9523.terms
def image9524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9524 : InImage map_23_199 image9524 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9524 : Bundle := named_bundle% "RealMapCertificates/relations/basis9524.json"
theorem reductionProof9524 : EqualModuloRelations reduction9524.relations reduction9524.input reduction9524.output := by lin_cert using reduction9524.terms
theorem substitutionProof9524 : IsMapEvaluation generatorImages reduction9524.relations [0,0,77,324] reduction9524.output := by lin_cert using reduction9524.terms
def map_23_200 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9683 : InImage map_23_200 image9683 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9683 : Bundle := named_bundle% "RealMapCertificates/relations/basis9683.json"
theorem reductionProof9683 : EqualModuloRelations reduction9683.relations reduction9683.input reduction9683.output := by lin_cert using reduction9683.terms
theorem substitutionProof9683 : IsMapEvaluation generatorImages reduction9683.relations [23,691] reduction9683.output := by lin_cert using reduction9683.terms
def image9684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9684 : InImage map_23_200 image9684 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9684 : Bundle := named_bundle% "RealMapCertificates/relations/basis9684.json"
theorem reductionProof9684 : EqualModuloRelations reduction9684.relations reduction9684.input reduction9684.output := by lin_cert using reduction9684.terms
theorem substitutionProof9684 : IsMapEvaluation generatorImages reduction9684.relations [13,80,209] reduction9684.output := by lin_cert using reduction9684.terms
def image9685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9685 : InImage map_23_200 image9685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9685 : Bundle := named_bundle% "RealMapCertificates/relations/basis9685.json"
theorem reductionProof9685 : EqualModuloRelations reduction9685.relations reduction9685.input reduction9685.output := by lin_cert using reduction9685.terms
theorem substitutionProof9685 : IsMapEvaluation generatorImages reduction9685.relations [0,74,359] reduction9685.output := by lin_cert using reduction9685.terms
def image9686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9686 : InImage map_23_200 image9686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9686 : Bundle := named_bundle% "RealMapCertificates/relations/basis9686.json"
theorem reductionProof9686 : EqualModuloRelations reduction9686.relations reduction9686.input reduction9686.output := by lin_cert using reduction9686.terms
theorem substitutionProof9686 : IsMapEvaluation generatorImages reduction9686.relations [0,3,1037] reduction9686.output := by lin_cert using reduction9686.terms
def image9687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9687 : InImage map_23_200 image9687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9687 : Bundle := named_bundle% "RealMapCertificates/relations/basis9687.json"
theorem reductionProof9687 : EqualModuloRelations reduction9687.relations reduction9687.input reduction9687.output := by lin_cert using reduction9687.terms
theorem substitutionProof9687 : IsMapEvaluation generatorImages reduction9687.relations [0,0,1149] reduction9687.output := by lin_cert using reduction9687.terms
def map_23_201 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9881 : InImage map_23_201 image9881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9881 : Bundle := named_bundle% "RealMapCertificates/relations/basis9881.json"
theorem reductionProof9881 : EqualModuloRelations reduction9881.relations reduction9881.input reduction9881.output := by lin_cert using reduction9881.terms
theorem substitutionProof9881 : IsMapEvaluation generatorImages reduction9881.relations [13,13,13,331] reduction9881.output := by lin_cert using reduction9881.terms
def image9882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9882 : InImage map_23_201 image9882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9882 : Bundle := named_bundle% "RealMapCertificates/relations/basis9882.json"
theorem reductionProof9882 : EqualModuloRelations reduction9882.relations reduction9882.input reduction9882.output := by lin_cert using reduction9882.terms
theorem substitutionProof9882 : IsMapEvaluation generatorImages reduction9882.relations [0,7,930] reduction9882.output := by lin_cert using reduction9882.terms
def image9883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9883 : InImage map_23_201 image9883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9883 : Bundle := named_bundle% "RealMapCertificates/relations/basis9883.json"
theorem reductionProof9883 : EqualModuloRelations reduction9883.relations reduction9883.input reduction9883.output := by lin_cert using reduction9883.terms
theorem substitutionProof9883 : IsMapEvaluation generatorImages reduction9883.relations [0,0,0,1150] reduction9883.output := by lin_cert using reduction9883.terms
def map_23_202 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10000 : InImage map_23_202 image10000 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10000 : Bundle := named_bundle% "RealMapCertificates/relations/basis10000.json"
theorem reductionProof10000 : EqualModuloRelations reduction10000.relations reduction10000.input reduction10000.output := by lin_cert using reduction10000.terms
theorem substitutionProof10000 : IsMapEvaluation generatorImages reduction10000.relations [9,13,619] reduction10000.output := by lin_cert using reduction10000.terms
def image10001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10001 : InImage map_23_202 image10001 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10001 : Bundle := named_bundle% "RealMapCertificates/relations/basis10001.json"
theorem reductionProof10001 : EqualModuloRelations reduction10001.relations reduction10001.input reduction10001.output := by lin_cert using reduction10001.terms
theorem substitutionProof10001 : IsMapEvaluation generatorImages reduction10001.relations [1,7,930] reduction10001.output := by lin_cert using reduction10001.terms
def image10002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10002 : InImage map_23_202 image10002 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10002 : Bundle := named_bundle% "RealMapCertificates/relations/basis10002.json"
theorem reductionProof10002 : EqualModuloRelations reduction10002.relations reduction10002.input reduction10002.output := by lin_cert using reduction10002.terms
theorem substitutionProof10002 : IsMapEvaluation generatorImages reduction10002.relations [1,3,1050] reduction10002.output := by lin_cert using reduction10002.terms
def image10003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10003 : InImage map_23_202 image10003 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10003 : Bundle := named_bundle% "RealMapCertificates/relations/basis10003.json"
theorem reductionProof10003 : EqualModuloRelations reduction10003.relations reduction10003.input reduction10003.output := by lin_cert using reduction10003.terms
theorem substitutionProof10003 : IsMapEvaluation generatorImages reduction10003.relations [1,1,1148] reduction10003.output := by lin_cert using reduction10003.terms
def image10004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10004 : InImage map_23_202 image10004 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10004 : Bundle := named_bundle% "RealMapCertificates/relations/basis10004.json"
theorem reductionProof10004 : EqualModuloRelations reduction10004.relations reduction10004.input reduction10004.output := by lin_cert using reduction10004.terms
theorem substitutionProof10004 : IsMapEvaluation generatorImages reduction10004.relations [0,1205] reduction10004.output := by lin_cert using reduction10004.terms
def image10005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10005 : InImage map_23_202 image10005 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10005 : Bundle := named_bundle% "RealMapCertificates/relations/basis10005.json"
theorem reductionProof10005 : EqualModuloRelations reduction10005.relations reduction10005.input reduction10005.output := by lin_cert using reduction10005.terms
theorem substitutionProof10005 : IsMapEvaluation generatorImages reduction10005.relations [0,0,8,49,324] reduction10005.output := by lin_cert using reduction10005.terms
def map_23_203 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10180 : InImage map_23_203 image10180 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10180 : Bundle := named_bundle% "RealMapCertificates/relations/basis10180.json"
theorem reductionProof10180 : EqualModuloRelations reduction10180.relations reduction10180.input reduction10180.output := by lin_cert using reduction10180.terms
theorem substitutionProof10180 : IsMapEvaluation generatorImages reduction10180.relations [0,0,3,1064] reduction10180.output := by lin_cert using reduction10180.terms
def image10181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10181 : InImage map_23_203 image10181 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10181 : Bundle := named_bundle% "RealMapCertificates/relations/basis10181.json"
theorem reductionProof10181 : EqualModuloRelations reduction10181.relations reduction10181.input reduction10181.output := by lin_cert using reduction10181.terms
theorem substitutionProof10181 : IsMapEvaluation generatorImages reduction10181.relations [0,0,0,0,0,1154] reduction10181.output := by lin_cert using reduction10181.terms
def map_23_204 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10379 : InImage map_23_204 image10379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10379 : Bundle := named_bundle% "RealMapCertificates/relations/basis10379.json"
theorem reductionProof10379 : EqualModuloRelations reduction10379.relations reduction10379.input reduction10379.output := by lin_cert using reduction10379.terms
theorem substitutionProof10379 : IsMapEvaluation generatorImages reduction10379.relations [187,188] reduction10379.output := by lin_cert using reduction10379.terms
def image10380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10380 : InImage map_23_204 image10380 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10380 : Bundle := named_bundle% "RealMapCertificates/relations/basis10380.json"
theorem reductionProof10380 : EqualModuloRelations reduction10380.relations reduction10380.input reduction10380.output := by lin_cert using reduction10380.terms
theorem substitutionProof10380 : IsMapEvaluation generatorImages reduction10380.relations [0,0,0,0,0,1175] reduction10380.output := by lin_cert using reduction10380.terms
def map_23_205 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10523 : InImage map_23_205 image10523 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10523 : Bundle := named_bundle% "RealMapCertificates/relations/basis10523.json"
theorem reductionProof10523 : EqualModuloRelations reduction10523.relations reduction10523.input reduction10523.output := by lin_cert using reduction10523.terms
theorem substitutionProof10523 : IsMapEvaluation generatorImages reduction10523.relations [13,13,619] reduction10523.output := by lin_cert using reduction10523.terms
def image10524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10524 : InImage map_23_205 image10524 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10524 : Bundle := named_bundle% "RealMapCertificates/relations/basis10524.json"
theorem reductionProof10524 : EqualModuloRelations reduction10524.relations reduction10524.input reduction10524.output := by lin_cert using reduction10524.terms
theorem substitutionProof10524 : IsMapEvaluation generatorImages reduction10524.relations [1,1242] reduction10524.output := by lin_cert using reduction10524.terms
def image10525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10525 : InImage map_23_205 image10525 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10525 : Bundle := named_bundle% "RealMapCertificates/relations/basis10525.json"
theorem reductionProof10525 : EqualModuloRelations reduction10525.relations reduction10525.input reduction10525.output := by lin_cert using reduction10525.terms
theorem substitutionProof10525 : IsMapEvaluation generatorImages reduction10525.relations [0,188,188] reduction10525.output := by lin_cert using reduction10525.terms
def image10526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10526 : InImage map_23_205 image10526 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10526 : Bundle := named_bundle% "RealMapCertificates/relations/basis10526.json"
theorem reductionProof10526 : EqualModuloRelations reduction10526.relations reduction10526.input reduction10526.output := by lin_cert using reduction10526.terms
theorem substitutionProof10526 : IsMapEvaluation generatorImages reduction10526.relations [0,3,3,982] reduction10526.output := by lin_cert using reduction10526.terms
def image10527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10527 : InImage map_23_205 image10527 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10527 : Bundle := named_bundle% "RealMapCertificates/relations/basis10527.json"
theorem reductionProof10527 : EqualModuloRelations reduction10527.relations reduction10527.input reduction10527.output := by lin_cert using reduction10527.terms
theorem substitutionProof10527 : IsMapEvaluation generatorImages reduction10527.relations [0,0,1244] reduction10527.output := by lin_cert using reduction10527.terms
def image10528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10528 : InImage map_23_205 image10528 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10528 : Bundle := named_bundle% "RealMapCertificates/relations/basis10528.json"
theorem reductionProof10528 : EqualModuloRelations reduction10528.relations reduction10528.input reduction10528.output := by lin_cert using reduction10528.terms
theorem substitutionProof10528 : IsMapEvaluation generatorImages reduction10528.relations [0,0,8,55,324] reduction10528.output := by lin_cert using reduction10528.terms
def map_23_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10706 : InImage map_23_206 image10706 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10706 : Bundle := named_bundle% "RealMapCertificates/relations/basis10706.json"
theorem reductionProof10706 : EqualModuloRelations reduction10706.relations reduction10706.input reduction10706.output := by lin_cert using reduction10706.terms
theorem substitutionProof10706 : IsMapEvaluation generatorImages reduction10706.relations [1305] reduction10706.output := by lin_cert using reduction10706.terms
def image10707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10707 : InImage map_23_206 image10707 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10707 : Bundle := named_bundle% "RealMapCertificates/relations/basis10707.json"
theorem reductionProof10707 : EqualModuloRelations reduction10707.relations reduction10707.input reduction10707.output := by lin_cert using reduction10707.terms
theorem substitutionProof10707 : IsMapEvaluation generatorImages reduction10707.relations [9,945] reduction10707.output := by lin_cert using reduction10707.terms
def image10708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10708 : InImage map_23_206 image10708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10708 : Bundle := named_bundle% "RealMapCertificates/relations/basis10708.json"
theorem reductionProof10708 : EqualModuloRelations reduction10708.relations reduction10708.input reduction10708.output := by lin_cert using reduction10708.terms
theorem substitutionProof10708 : IsMapEvaluation generatorImages reduction10708.relations [0,0,1258] reduction10708.output := by lin_cert using reduction10708.terms
def image10709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10709 : InImage map_23_206 image10709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10709 : Bundle := named_bundle% "RealMapCertificates/relations/basis10709.json"
theorem reductionProof10709 : EqualModuloRelations reduction10709.relations reduction10709.input reduction10709.output := by lin_cert using reduction10709.terms
theorem substitutionProof10709 : IsMapEvaluation generatorImages reduction10709.relations [0,0,1257] reduction10709.output := by lin_cert using reduction10709.terms
def map_23_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10926 : InImage map_23_207 image10926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10926 : Bundle := named_bundle% "RealMapCertificates/relations/basis10926.json"
theorem reductionProof10926 : EqualModuloRelations reduction10926.relations reduction10926.input reduction10926.output := by lin_cert using reduction10926.terms
theorem substitutionProof10926 : IsMapEvaluation generatorImages reduction10926.relations [188,201] reduction10926.output := by lin_cert using reduction10926.terms
def image10927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10927 : InImage map_23_207 image10927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10927 : Bundle := named_bundle% "RealMapCertificates/relations/basis10927.json"
theorem reductionProof10927 : EqualModuloRelations reduction10927.relations reduction10927.input reduction10927.output := by lin_cert using reduction10927.terms
theorem substitutionProof10927 : IsMapEvaluation generatorImages reduction10927.relations [13,13,13,411] reduction10927.output := by lin_cert using reduction10927.terms
def image10928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10928 : InImage map_23_207 image10928 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10928 : Bundle := named_bundle% "RealMapCertificates/relations/basis10928.json"
theorem reductionProof10928 : EqualModuloRelations reduction10928.relations reduction10928.input reduction10928.output := by lin_cert using reduction10928.terms
theorem substitutionProof10928 : IsMapEvaluation generatorImages reduction10928.relations [0,0,0,0,1245] reduction10928.output := by lin_cert using reduction10928.terms
def map_23_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11055 : InImage map_23_208 image11055 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11055 : Bundle := named_bundle% "RealMapCertificates/relations/basis11055.json"
theorem reductionProof11055 : EqualModuloRelations reduction11055.relations reduction11055.input reduction11055.output := by lin_cert using reduction11055.terms
theorem substitutionProof11055 : IsMapEvaluation generatorImages reduction11055.relations [1,43,628] reduction11055.output := by lin_cert using reduction11055.terms
def image11056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11056 : InImage map_23_208 image11056 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11056 : Bundle := named_bundle% "RealMapCertificates/relations/basis11056.json"
theorem reductionProof11056 : EqualModuloRelations reduction11056.relations reduction11056.input reduction11056.output := by lin_cert using reduction11056.terms
theorem substitutionProof11056 : IsMapEvaluation generatorImages reduction11056.relations [1,1,1257] reduction11056.output := by lin_cert using reduction11056.terms
def image11057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11057 : InImage map_23_208 image11057 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11057 : Bundle := named_bundle% "RealMapCertificates/relations/basis11057.json"
theorem reductionProof11057 : EqualModuloRelations reduction11057.relations reduction11057.input reduction11057.output := by lin_cert using reduction11057.terms
theorem substitutionProof11057 : IsMapEvaluation generatorImages reduction11057.relations [0,0,8,8,31,324] reduction11057.output := by lin_cert using reduction11057.terms
def image11058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11058 : InImage map_23_208 image11058 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11058 : Bundle := named_bundle% "RealMapCertificates/relations/basis11058.json"
theorem reductionProof11058 : EqualModuloRelations reduction11058.relations reduction11058.input reduction11058.output := by lin_cert using reduction11058.terms
theorem substitutionProof11058 : IsMapEvaluation generatorImages reduction11058.relations [0,0,3,1150] reduction11058.output := by lin_cert using reduction11058.terms
def map_23_209 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11237 : InImage map_23_209 image11237 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11237 : Bundle := named_bundle% "RealMapCertificates/relations/basis11237.json"
theorem reductionProof11237 : EqualModuloRelations reduction11237.relations reduction11237.input reduction11237.output := by lin_cert using reduction11237.terms
theorem substitutionProof11237 : IsMapEvaluation generatorImages reduction11237.relations [13,945] reduction11237.output := by lin_cert using reduction11237.terms
def image11238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11238 : InImage map_23_209 image11238 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11238 : Bundle := named_bundle% "RealMapCertificates/relations/basis11238.json"
theorem reductionProof11238 : EqualModuloRelations reduction11238.relations reduction11238.input reduction11238.output := by lin_cert using reduction11238.terms
theorem substitutionProof11238 : IsMapEvaluation generatorImages reduction11238.relations [0,0,0,0,0,0,1247] reduction11238.output := by lin_cert using reduction11238.terms
def map_23_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11440 : InImage map_23_210 image11440 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11440 : Bundle := named_bundle% "RealMapCertificates/relations/basis11440.json"
theorem reductionProof11440 : EqualModuloRelations reduction11440.relations reduction11440.input reduction11440.output := by lin_cert using reduction11440.terms
theorem substitutionProof11440 : IsMapEvaluation generatorImages reduction11440.relations [188,212] reduction11440.output := by lin_cert using reduction11440.terms
def image11441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11441 : InImage map_23_210 image11441 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11441 : Bundle := named_bundle% "RealMapCertificates/relations/basis11441.json"
theorem reductionProof11441 : EqualModuloRelations reduction11441.relations reduction11441.input reduction11441.output := by lin_cert using reduction11441.terms
theorem substitutionProof11441 : IsMapEvaluation generatorImages reduction11441.relations [0,187,209] reduction11441.output := by lin_cert using reduction11441.terms
def image11442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11442 : InImage map_23_210 image11442 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11442 : Bundle := named_bundle% "RealMapCertificates/relations/basis11442.json"
theorem reductionProof11442 : EqualModuloRelations reduction11442.relations reduction11442.input reduction11442.output := by lin_cert using reduction11442.terms
theorem substitutionProof11442 : IsMapEvaluation generatorImages reduction11442.relations [0,0,0,0,0,0,1263] reduction11442.output := by lin_cert using reduction11442.terms
def map_23_211 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11593 : InImage map_23_211 image11593 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11593 : Bundle := named_bundle% "RealMapCertificates/relations/basis11593.json"
theorem reductionProof11593 : EqualModuloRelations reduction11593.relations reduction11593.input reduction11593.output := by lin_cert using reduction11593.terms
theorem substitutionProof11593 : IsMapEvaluation generatorImages reduction11593.relations [13,13,679] reduction11593.output := by lin_cert using reduction11593.terms
def image11594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11594 : InImage map_23_211 image11594 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11594 : Bundle := named_bundle% "RealMapCertificates/relations/basis11594.json"
theorem reductionProof11594 : EqualModuloRelations reduction11594.relations reduction11594.input reduction11594.output := by lin_cert using reduction11594.terms
theorem substitutionProof11594 : IsMapEvaluation generatorImages reduction11594.relations [1,187,209] reduction11594.output := by lin_cert using reduction11594.terms
def image11595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11595 : InImage map_23_211 image11595 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11595 : Bundle := named_bundle% "RealMapCertificates/relations/basis11595.json"
theorem reductionProof11595 : EqualModuloRelations reduction11595.relations reduction11595.input reduction11595.output := by lin_cert using reduction11595.terms
theorem substitutionProof11595 : IsMapEvaluation generatorImages reduction11595.relations [1,4,1152] reduction11595.output := by lin_cert using reduction11595.terms
def image11596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11596 : InImage map_23_211 image11596 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11596 : Bundle := named_bundle% "RealMapCertificates/relations/basis11596.json"
theorem reductionProof11596 : EqualModuloRelations reduction11596.relations reduction11596.input reduction11596.output := by lin_cert using reduction11596.terms
theorem substitutionProof11596 : IsMapEvaluation generatorImages reduction11596.relations [0,0,188,209] reduction11596.output := by lin_cert using reduction11596.terms
def image11597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11597 : InImage map_23_211 image11597 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11597 : Bundle := named_bundle% "RealMapCertificates/relations/basis11597.json"
theorem reductionProof11597 : EqualModuloRelations reduction11597.relations reduction11597.input reduction11597.output := by lin_cert using reduction11597.terms
theorem substitutionProof11597 : IsMapEvaluation generatorImages reduction11597.relations [0,0,0,1338] reduction11597.output := by lin_cert using reduction11597.terms
def map_23_212 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11786 : InImage map_23_212 image11786 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11786 : Bundle := named_bundle% "RealMapCertificates/relations/basis11786.json"
theorem reductionProof11786 : EqualModuloRelations reduction11786.relations reduction11786.input reduction11786.output := by lin_cert using reduction11786.terms
theorem substitutionProof11786 : IsMapEvaluation generatorImages reduction11786.relations [1407] reduction11786.output := by lin_cert using reduction11786.terms
def image11787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11787 : InImage map_23_212 image11787 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11787 : Bundle := named_bundle% "RealMapCertificates/relations/basis11787.json"
theorem reductionProof11787 : EqualModuloRelations reduction11787.relations reduction11787.input reduction11787.output := by lin_cert using reduction11787.terms
theorem substitutionProof11787 : IsMapEvaluation generatorImages reduction11787.relations [17,50,324] reduction11787.output := by lin_cert using reduction11787.terms
def image11788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11788 : InImage map_23_212 image11788 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11788 : Bundle := named_bundle% "RealMapCertificates/relations/basis11788.json"
theorem reductionProof11788 : EqualModuloRelations reduction11788.relations reduction11788.input reduction11788.output := by lin_cert using reduction11788.terms
theorem substitutionProof11788 : IsMapEvaluation generatorImages reduction11788.relations [0,0,1370] reduction11788.output := by lin_cert using reduction11788.terms
def map_23_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12031 : InImage map_23_213 image12031 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12031 : Bundle := named_bundle% "RealMapCertificates/relations/basis12031.json"
theorem reductionProof12031 : EqualModuloRelations reduction12031.relations reduction12031.input reduction12031.output := by lin_cert using reduction12031.terms
theorem substitutionProof12031 : IsMapEvaluation generatorImages reduction12031.relations [1431] reduction12031.output := by lin_cert using reduction12031.terms
def image12032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12032 : InImage map_23_213 image12032 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12032 : Bundle := named_bundle% "RealMapCertificates/relations/basis12032.json"
theorem reductionProof12032 : EqualModuloRelations reduction12032.relations reduction12032.input reduction12032.output := by lin_cert using reduction12032.terms
theorem substitutionProof12032 : IsMapEvaluation generatorImages reduction12032.relations [0,3,1257] reduction12032.output := by lin_cert using reduction12032.terms
def image12033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12033 : InImage map_23_213 image12033 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12033 : Bundle := named_bundle% "RealMapCertificates/relations/basis12033.json"
theorem reductionProof12033 : EqualModuloRelations reduction12033.relations reduction12033.input reduction12033.output := by lin_cert using reduction12033.terms
theorem substitutionProof12033 : IsMapEvaluation generatorImages reduction12033.relations [0,0,0,0,1351] reduction12033.output := by lin_cert using reduction12033.terms
def map_23_214 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12183 : InImage map_23_214 image12183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12183 : Bundle := named_bundle% "RealMapCertificates/relations/basis12183.json"
theorem reductionProof12183 : EqualModuloRelations reduction12183.relations reduction12183.input reduction12183.output := by lin_cert using reduction12183.terms
theorem substitutionProof12183 : IsMapEvaluation generatorImages reduction12183.relations [1444] reduction12183.output := by lin_cert using reduction12183.terms
def image12184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12184 : InImage map_23_214 image12184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12184 : Bundle := named_bundle% "RealMapCertificates/relations/basis12184.json"
theorem reductionProof12184 : EqualModuloRelations reduction12184.relations reduction12184.input reduction12184.output := by lin_cert using reduction12184.terms
theorem substitutionProof12184 : IsMapEvaluation generatorImages reduction12184.relations [9,13,23,373] reduction12184.output := by lin_cert using reduction12184.terms
def image12185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12185 : InImage map_23_214 image12185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12185 : Bundle := named_bundle% "RealMapCertificates/relations/basis12185.json"
theorem reductionProof12185 : EqualModuloRelations reduction12185.relations reduction12185.input reduction12185.output := by lin_cert using reduction12185.terms
theorem substitutionProof12185 : IsMapEvaluation generatorImages reduction12185.relations [1,125,324] reduction12185.output := by lin_cert using reduction12185.terms
def image12186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12186 : InImage map_23_214 image12186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12186 : Bundle := named_bundle% "RealMapCertificates/relations/basis12186.json"
theorem reductionProof12186 : EqualModuloRelations reduction12186.relations reduction12186.input reduction12186.output := by lin_cert using reduction12186.terms
theorem substitutionProof12186 : IsMapEvaluation generatorImages reduction12186.relations [1,3,1257] reduction12186.output := by lin_cert using reduction12186.terms
def image12187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12187 : InImage map_23_214 image12187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12187 : Bundle := named_bundle% "RealMapCertificates/relations/basis12187.json"
theorem reductionProof12187 : EqualModuloRelations reduction12187.relations reduction12187.input reduction12187.output := by lin_cert using reduction12187.terms
theorem substitutionProof12187 : IsMapEvaluation generatorImages reduction12187.relations [0,0,0,3,1245] reduction12187.output := by lin_cert using reduction12187.terms
def map_23_215 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12384 : InImage map_23_215 image12384 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12384 : Bundle := named_bundle% "RealMapCertificates/relations/basis12384.json"
theorem reductionProof12384 : EqualModuloRelations reduction12384.relations reduction12384.input reduction12384.output := by lin_cert using reduction12384.terms
theorem substitutionProof12384 : IsMapEvaluation generatorImages reduction12384.relations [1476] reduction12384.output := by lin_cert using reduction12384.terms
def image12385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12385 : InImage map_23_215 image12385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12385 : Bundle := named_bundle% "RealMapCertificates/relations/basis12385.json"
theorem reductionProof12385 : EqualModuloRelations reduction12385.relations reduction12385.input reduction12385.output := by lin_cert using reduction12385.terms
theorem substitutionProof12385 : IsMapEvaluation generatorImages reduction12385.relations [17,56,324] reduction12385.output := by lin_cert using reduction12385.terms
def image12386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12386 : InImage map_23_215 image12386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12386 : Bundle := named_bundle% "RealMapCertificates/relations/basis12386.json"
theorem reductionProof12386 : EqualModuloRelations reduction12386.relations reduction12386.input reduction12386.output := by lin_cert using reduction12386.terms
theorem substitutionProof12386 : IsMapEvaluation generatorImages reduction12386.relations [13,1041] reduction12386.output := by lin_cert using reduction12386.terms
def map_23_216 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12591 : InImage map_23_216 image12591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12591 : Bundle := named_bundle% "RealMapCertificates/relations/basis12591.json"
theorem reductionProof12591 : EqualModuloRelations reduction12591.relations reduction12591.input reduction12591.output := by lin_cert using reduction12591.terms
theorem substitutionProof12591 : IsMapEvaluation generatorImages reduction12591.relations [1489] reduction12591.output := by lin_cert using reduction12591.terms
def image12592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12592 : InImage map_23_216 image12592 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12592 : Bundle := named_bundle% "RealMapCertificates/relations/basis12592.json"
theorem reductionProof12592 : EqualModuloRelations reduction12592.relations reduction12592.input reduction12592.output := by lin_cert using reduction12592.terms
theorem substitutionProof12592 : IsMapEvaluation generatorImages reduction12592.relations [13,1052] reduction12592.output := by lin_cert using reduction12592.terms
def map_23_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12748 : InImage map_23_217 image12748 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12748 : Bundle := named_bundle% "RealMapCertificates/relations/basis12748.json"
theorem reductionProof12748 : EqualModuloRelations reduction12748.relations reduction12748.input reduction12748.output := by lin_cert using reduction12748.terms
theorem substitutionProof12748 : IsMapEvaluation generatorImages reduction12748.relations [13,13,23,373] reduction12748.output := by lin_cert using reduction12748.terms
def image12749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12749 : InImage map_23_217 image12749 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12749 : Bundle := named_bundle% "RealMapCertificates/relations/basis12749.json"
theorem reductionProof12749 : EqualModuloRelations reduction12749.relations reduction12749.input reduction12749.output := by lin_cert using reduction12749.terms
theorem substitutionProof12749 : IsMapEvaluation generatorImages reduction12749.relations [0,0,0,209,209] reduction12749.output := by lin_cert using reduction12749.terms
def map_23_218 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12944 : InImage map_23_218 image12944 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12944 : Bundle := named_bundle% "RealMapCertificates/relations/basis12944.json"
theorem reductionProof12944 : EqualModuloRelations reduction12944.relations reduction12944.input reduction12944.output := by lin_cert using reduction12944.terms
theorem substitutionProof12944 : IsMapEvaluation generatorImages reduction12944.relations [1520] reduction12944.output := by lin_cert using reduction12944.terms
def image12945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12945 : InImage map_23_218 image12945 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12945 : Bundle := named_bundle% "RealMapCertificates/relations/basis12945.json"
theorem reductionProof12945 : EqualModuloRelations reduction12945.relations reduction12945.input reduction12945.output := by lin_cert using reduction12945.terms
theorem substitutionProof12945 : IsMapEvaluation generatorImages reduction12945.relations [1519] reduction12945.output := by lin_cert using reduction12945.terms
def image12946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12946 : InImage map_23_218 image12946 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12946 : Bundle := named_bundle% "RealMapCertificates/relations/basis12946.json"
theorem reductionProof12946 : EqualModuloRelations reduction12946.relations reduction12946.input reduction12946.output := by lin_cert using reduction12946.terms
theorem substitutionProof12946 : IsMapEvaluation generatorImages reduction12946.relations [188,250] reduction12946.output := by lin_cert using reduction12946.terms
def image12947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12947 : InImage map_23_218 image12947 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12947 : Bundle := named_bundle% "RealMapCertificates/relations/basis12947.json"
theorem reductionProof12947 : EqualModuloRelations reduction12947.relations reduction12947.input reduction12947.output := by lin_cert using reduction12947.terms
theorem substitutionProof12947 : IsMapEvaluation generatorImages reduction12947.relations [16,17,17,324] reduction12947.output := by lin_cert using reduction12947.terms
def image12948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12948 : InImage map_23_218 image12948 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12948 : Bundle := named_bundle% "RealMapCertificates/relations/basis12948.json"
theorem reductionProof12948 : EqualModuloRelations reduction12948.relations reduction12948.input reduction12948.output := by lin_cert using reduction12948.terms
theorem substitutionProof12948 : IsMapEvaluation generatorImages reduction12948.relations [0,0,0,0,1445] reduction12948.output := by lin_cert using reduction12948.terms
def map_23_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13175 : InImage map_23_219 image13175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13175 : Bundle := named_bundle% "RealMapCertificates/relations/basis13175.json"
theorem reductionProof13175 : EqualModuloRelations reduction13175.relations reduction13175.input reduction13175.output := by lin_cert using reduction13175.terms
theorem substitutionProof13175 : IsMapEvaluation generatorImages reduction13175.relations [1542] reduction13175.output := by lin_cert using reduction13175.terms
def image13176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13176 : InImage map_23_219 image13176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13176 : Bundle := named_bundle% "RealMapCertificates/relations/basis13176.json"
theorem reductionProof13176 : EqualModuloRelations reduction13176.relations reduction13176.input reduction13176.output := by lin_cert using reduction13176.terms
theorem substitutionProof13176 : IsMapEvaluation generatorImages reduction13176.relations [1541] reduction13176.output := by lin_cert using reduction13176.terms
def image13177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13177 : InImage map_23_219 image13177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13177 : Bundle := named_bundle% "RealMapCertificates/relations/basis13177.json"
theorem reductionProof13177 : EqualModuloRelations reduction13177.relations reduction13177.input reduction13177.output := by lin_cert using reduction13177.terms
theorem substitutionProof13177 : IsMapEvaluation generatorImages reduction13177.relations [67,604] reduction13177.output := by lin_cert using reduction13177.terms
def image13178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13178 : InImage map_23_219 image13178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13178 : Bundle := named_bundle% "RealMapCertificates/relations/basis13178.json"
theorem reductionProof13178 : EqualModuloRelations reduction13178.relations reduction13178.input reduction13178.output := by lin_cert using reduction13178.terms
theorem substitutionProof13178 : IsMapEvaluation generatorImages reduction13178.relations [0,0,0,0,137,324] reduction13178.output := by lin_cert using reduction13178.terms
def map_23_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13311 : InImage map_23_220 image13311 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13311 : Bundle := named_bundle% "RealMapCertificates/relations/basis13311.json"
theorem reductionProof13311 : EqualModuloRelations reduction13311.relations reduction13311.input reduction13311.output := by lin_cert using reduction13311.terms
theorem substitutionProof13311 : IsMapEvaluation generatorImages reduction13311.relations [1557] reduction13311.output := by lin_cert using reduction13311.terms
def image13312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13312 : InImage map_23_220 image13312 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13312 : Bundle := named_bundle% "RealMapCertificates/relations/basis13312.json"
theorem reductionProof13312 : EqualModuloRelations reduction13312.relations reduction13312.input reduction13312.output := by lin_cert using reduction13312.terms
theorem substitutionProof13312 : IsMapEvaluation generatorImages reduction13312.relations [0,0,0,0,0,138,324] reduction13312.output := by lin_cert using reduction13312.terms
def image13313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13313 : InImage map_23_220 image13313 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13313 : Bundle := named_bundle% "RealMapCertificates/relations/basis13313.json"
theorem reductionProof13313 : EqualModuloRelations reduction13313.relations reduction13313.input reduction13313.output := by lin_cert using reduction13313.terms
theorem substitutionProof13313 : IsMapEvaluation generatorImages reduction13313.relations [0,0,0,0,0,0,1447] reduction13313.output := by lin_cert using reduction13313.terms
def map_23_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13515 : InImage map_23_221 image13515 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13515 : Bundle := named_bundle% "RealMapCertificates/relations/basis13515.json"
theorem reductionProof13515 : EqualModuloRelations reduction13515.relations reduction13515.input reduction13515.output := by lin_cert using reduction13515.terms
theorem substitutionProof13515 : IsMapEvaluation generatorImages reduction13515.relations [1574] reduction13515.output := by lin_cert using reduction13515.terms
def image13516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13516 : InImage map_23_221 image13516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13516 : Bundle := named_bundle% "RealMapCertificates/relations/basis13516.json"
theorem reductionProof13516 : EqualModuloRelations reduction13516.relations reduction13516.input reduction13516.output := by lin_cert using reduction13516.terms
theorem substitutionProof13516 : IsMapEvaluation generatorImages reduction13516.relations [188,261] reduction13516.output := by lin_cert using reduction13516.terms
def image13517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13517 : InImage map_23_221 image13517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13517 : Bundle := named_bundle% "RealMapCertificates/relations/basis13517.json"
theorem reductionProof13517 : EqualModuloRelations reduction13517.relations reduction13517.input reduction13517.output := by lin_cert using reduction13517.terms
theorem substitutionProof13517 : IsMapEvaluation generatorImages reduction13517.relations [8,17,40,324] reduction13517.output := by lin_cert using reduction13517.terms
def image13518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13518 : InImage map_23_221 image13518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13518 : Bundle := named_bundle% "RealMapCertificates/relations/basis13518.json"
theorem reductionProof13518 : EqualModuloRelations reduction13518.relations reduction13518.input reduction13518.output := by lin_cert using reduction13518.terms
theorem substitutionProof13518 : IsMapEvaluation generatorImages reduction13518.relations [1,1543] reduction13518.output := by lin_cert using reduction13518.terms
def map_23_222 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13745 : InImage map_23_222 image13745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13745 : Bundle := named_bundle% "RealMapCertificates/relations/basis13745.json"
theorem reductionProof13745 : EqualModuloRelations reduction13745.relations reduction13745.input reduction13745.output := by lin_cert using reduction13745.terms
theorem substitutionProof13745 : IsMapEvaluation generatorImages reduction13745.relations [67,629] reduction13745.output := by lin_cert using reduction13745.terms
def image13746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13746 : InImage map_23_222 image13746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13746 : Bundle := named_bundle% "RealMapCertificates/relations/basis13746.json"
theorem reductionProof13746 : EqualModuloRelations reduction13746.relations reduction13746.input reduction13746.output := by lin_cert using reduction13746.terms
theorem substitutionProof13746 : IsMapEvaluation generatorImages reduction13746.relations [13,1153] reduction13746.output := by lin_cert using reduction13746.terms
def image13747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13747 : InImage map_23_222 image13747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13747 : Bundle := named_bundle% "RealMapCertificates/relations/basis13747.json"
theorem reductionProof13747 : EqualModuloRelations reduction13747.relations reduction13747.input reduction13747.output := by lin_cert using reduction13747.terms
theorem substitutionProof13747 : IsMapEvaluation generatorImages reduction13747.relations [0,1575] reduction13747.output := by lin_cert using reduction13747.terms
def map_23_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13888 : InImage map_23_223 image13888 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13888 : Bundle := named_bundle% "RealMapCertificates/relations/basis13888.json"
theorem reductionProof13888 : EqualModuloRelations reduction13888.relations reduction13888.input reduction13888.output := by lin_cert using reduction13888.terms
theorem substitutionProof13888 : IsMapEvaluation generatorImages reduction13888.relations [13,13,75,213] reduction13888.output := by lin_cert using reduction13888.terms
def image13889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13889 : InImage map_23_223 image13889 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13889 : Bundle := named_bundle% "RealMapCertificates/relations/basis13889.json"
theorem reductionProof13889 : EqualModuloRelations reduction13889.relations reduction13889.input reduction13889.output := by lin_cert using reduction13889.terms
theorem substitutionProof13889 : IsMapEvaluation generatorImages reduction13889.relations [13,13,13,570] reduction13889.output := by lin_cert using reduction13889.terms
def image13890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13890 : InImage map_23_223 image13890 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13890 : Bundle := named_bundle% "RealMapCertificates/relations/basis13890.json"
theorem reductionProof13890 : EqualModuloRelations reduction13890.relations reduction13890.input reduction13890.output := by lin_cert using reduction13890.terms
theorem substitutionProof13890 : IsMapEvaluation generatorImages reduction13890.relations [0,67,630] reduction13890.output := by lin_cert using reduction13890.terms
def map_23_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14075 : InImage map_23_224 image14075 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14075 : Bundle := named_bundle% "RealMapCertificates/relations/basis14075.json"
theorem reductionProof14075 : EqualModuloRelations reduction14075.relations reduction14075.input reduction14075.output := by lin_cert using reduction14075.terms
theorem substitutionProof14075 : IsMapEvaluation generatorImages reduction14075.relations [1624] reduction14075.output := by lin_cert using reduction14075.terms
def image14076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14076 : InImage map_23_224 image14076 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14076 : Bundle := named_bundle% "RealMapCertificates/relations/basis14076.json"
theorem reductionProof14076 : EqualModuloRelations reduction14076.relations reduction14076.input reduction14076.output := by lin_cert using reduction14076.terms
theorem substitutionProof14076 : IsMapEvaluation generatorImages reduction14076.relations [67,648] reduction14076.output := by lin_cert using reduction14076.terms
def image14077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14077 : InImage map_23_224 image14077 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14077 : Bundle := named_bundle% "RealMapCertificates/relations/basis14077.json"
theorem reductionProof14077 : EqualModuloRelations reduction14077.relations reduction14077.input reduction14077.output := by lin_cert using reduction14077.terms
theorem substitutionProof14077 : IsMapEvaluation generatorImages reduction14077.relations [8,8,17,17,324] reduction14077.output := by lin_cert using reduction14077.terms
def image14078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14078 : InImage map_23_224 image14078 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14078 : Bundle := named_bundle% "RealMapCertificates/relations/basis14078.json"
theorem reductionProof14078 : EqualModuloRelations reduction14078.relations reduction14078.input reduction14078.output := by lin_cert using reduction14078.terms
theorem substitutionProof14078 : IsMapEvaluation generatorImages reduction14078.relations [0,209,250] reduction14078.output := by lin_cert using reduction14078.terms
def image14079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14079 : InImage map_23_224 image14079 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14079 : Bundle := named_bundle% "RealMapCertificates/relations/basis14079.json"
theorem reductionProof14079 : EqualModuloRelations reduction14079.relations reduction14079.input reduction14079.output := by lin_cert using reduction14079.terms
theorem substitutionProof14079 : IsMapEvaluation generatorImages reduction14079.relations [0,0,0,0,0,0,0,0,0,0,1455] reduction14079.output := by lin_cert using reduction14079.terms
def map_23_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14302 : InImage map_23_225 image14302 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14302 : Bundle := named_bundle% "RealMapCertificates/relations/basis14302.json"
theorem reductionProof14302 : EqualModuloRelations reduction14302.relations reduction14302.input reduction14302.output := by lin_cert using reduction14302.terms
theorem substitutionProof14302 : IsMapEvaluation generatorImages reduction14302.relations [1642] reduction14302.output := by lin_cert using reduction14302.terms
def image14303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14303 : InImage map_23_225 image14303 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14303 : Bundle := named_bundle% "RealMapCertificates/relations/basis14303.json"
theorem reductionProof14303 : EqualModuloRelations reduction14303.relations reduction14303.input reduction14303.output := by lin_cert using reduction14303.terms
theorem substitutionProof14303 : IsMapEvaluation generatorImages reduction14303.relations [76,628] reduction14303.output := by lin_cert using reduction14303.terms
def image14304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14304 : InImage map_23_225 image14304 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14304 : Bundle := named_bundle% "RealMapCertificates/relations/basis14304.json"
theorem reductionProof14304 : EqualModuloRelations reduction14304.relations reduction14304.input reduction14304.output := by lin_cert using reduction14304.terms
theorem substitutionProof14304 : IsMapEvaluation generatorImages reduction14304.relations [23,1002] reduction14304.output := by lin_cert using reduction14304.terms
def image14305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14305 : InImage map_23_225 image14305 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14305 : Bundle := named_bundle% "RealMapCertificates/relations/basis14305.json"
theorem reductionProof14305 : EqualModuloRelations reduction14305.relations reduction14305.input reduction14305.output := by lin_cert using reduction14305.terms
theorem substitutionProof14305 : IsMapEvaluation generatorImages reduction14305.relations [0,0,0,0,0,0,0,1523] reduction14305.output := by lin_cert using reduction14305.terms
end RealMapCertificates
