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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 75 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 189 => []
  | 190 => []
  | 195 => []
  | 209 => []
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 280 => []
  | 319 => []
  | 324 => []
  | 333 => []
  | 335 => []
  | 373 => []
  | 417 => []
  | 418 => []
  | 669 => []
  | 691 => []
  | 734 => []
  | 841 => []
  | 933 => []
  | 960 => []
  | 1152 => []
  | 1319 => []
  | 1434 => []
  | 1445 => []
  | 1543 => []
  | 1547 => []
  | 1575 => []
  | 1600 => []
  | 1609 => []
  | 1610 => []
  | 1644 => []
  | 1657 => []
  | 1658 => []
  | 1660 => []
  | 1661 => []
  | 1663 => []
  | 1665 => []
  | 1693 => []
  | 1722 => []
  | 1723 => []
  | 1740 => []
  | 1741 => []
  | 1761 => []
  | 1762 => []
  | 1763 => []
  | 1764 => []
  | 1783 => []
  | 1785 => []
  | 1786 => []
  | 1816 => []
  | 1817 => []
  | 1841 => []
  | 1867 => []
  | 1868 => []
  | 1869 => []
  | 1894 => []
  | 1909 => []
  | 1910 => []
  | 1911 => []
  | 1912 => []
  | 1942 => []
  | 1943 => []
  | 2006 => []
  | 2007 => []
  | 2008 => []
  | 2009 => []
  | 2010 => []
  | 2047 => []
  | 2048 => []
  | 2064 => []
  | 2067 => []
  | 2108 => []
  | 2109 => []
  | 2138 => []
  | 2139 => []
  | 2140 => []
  | 2141 => []
  | 2175 => []
  | 2176 => []
  | 2177 => []
  | 2215 => []
  | 2216 => []
  | 2217 => []
  | 2218 => []
  | _ => []
def map_23_226 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14430 : InImage map_23_226 image14430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14430 : Bundle := named_bundle% "RealMapCertificates/relations/basis14430.json"
theorem reductionProof14430 : EqualModuloRelations reduction14430.relations reduction14430.input reduction14430.output := by lin_cert using reduction14430.terms
theorem substitutionProof14430 : IsMapEvaluation generatorImages reduction14430.relations [1658] reduction14430.output := by lin_cert using reduction14430.terms
def image14431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14431 : InImage map_23_226 image14431 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14431 : Bundle := named_bundle% "RealMapCertificates/relations/basis14431.json"
theorem reductionProof14431 : EqualModuloRelations reduction14431.relations reduction14431.input reduction14431.output := by lin_cert using reduction14431.terms
theorem substitutionProof14431 : IsMapEvaluation generatorImages reduction14431.relations [1657] reduction14431.output := by lin_cert using reduction14431.terms
def image14432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14432 : InImage map_23_226 image14432 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14432 : Bundle := named_bundle% "RealMapCertificates/relations/basis14432.json"
theorem reductionProof14432 : EqualModuloRelations reduction14432.relations reduction14432.input reduction14432.output := by lin_cert using reduction14432.terms
theorem substitutionProof14432 : IsMapEvaluation generatorImages reduction14432.relations [0,0,0,0,0,0,149,324] reduction14432.output := by lin_cert using reduction14432.terms
def map_23_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14649 : InImage map_23_227 image14649 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14649 : Bundle := named_bundle% "RealMapCertificates/relations/basis14649.json"
theorem reductionProof14649 : EqualModuloRelations reduction14649.relations reduction14649.input reduction14649.output := by lin_cert using reduction14649.terms
theorem substitutionProof14649 : IsMapEvaluation generatorImages reduction14649.relations [13,75,417] reduction14649.output := by lin_cert using reduction14649.terms
def image14650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14650 : InImage map_23_227 image14650 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14650 : Bundle := named_bundle% "RealMapCertificates/relations/basis14650.json"
theorem reductionProof14650 : EqualModuloRelations reduction14650.relations reduction14650.input reduction14650.output := by lin_cert using reduction14650.terms
theorem substitutionProof14650 : IsMapEvaluation generatorImages reduction14650.relations [8,8,17,20,324] reduction14650.output := by lin_cert using reduction14650.terms
def image14651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14651 : InImage map_23_227 image14651 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14651 : Bundle := named_bundle% "RealMapCertificates/relations/basis14651.json"
theorem reductionProof14651 : EqualModuloRelations reduction14651.relations reduction14651.input reduction14651.output := by lin_cert using reduction14651.terms
theorem substitutionProof14651 : IsMapEvaluation generatorImages reduction14651.relations [3,1543] reduction14651.output := by lin_cert using reduction14651.terms
def image14652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14652 : InImage map_23_227 image14652 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14652 : Bundle := named_bundle% "RealMapCertificates/relations/basis14652.json"
theorem reductionProof14652 : EqualModuloRelations reduction14652.relations reduction14652.input reduction14652.output := by lin_cert using reduction14652.terms
theorem substitutionProof14652 : IsMapEvaluation generatorImages reduction14652.relations [0,1660] reduction14652.output := by lin_cert using reduction14652.terms
def image14653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14653 : InImage map_23_227 image14653 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14653 : Bundle := named_bundle% "RealMapCertificates/relations/basis14653.json"
theorem reductionProof14653 : EqualModuloRelations reduction14653.relations reduction14653.input reduction14653.output := by lin_cert using reduction14653.terms
theorem substitutionProof14653 : IsMapEvaluation generatorImages reduction14653.relations [0,67,669] reduction14653.output := by lin_cert using reduction14653.terms
def map_23_228 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14879 : InImage map_23_228 image14879 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14879 : Bundle := named_bundle% "RealMapCertificates/relations/basis14879.json"
theorem reductionProof14879 : EqualModuloRelations reduction14879.relations reduction14879.input reduction14879.output := by lin_cert using reduction14879.terms
theorem substitutionProof14879 : IsMapEvaluation generatorImages reduction14879.relations [13,188,190] reduction14879.output := by lin_cert using reduction14879.terms
def image14880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14880 : InImage map_23_228 image14880 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14880 : Bundle := named_bundle% "RealMapCertificates/relations/basis14880.json"
theorem reductionProof14880 : EqualModuloRelations reduction14880.relations reduction14880.input reduction14880.output := by lin_cert using reduction14880.terms
theorem substitutionProof14880 : IsMapEvaluation generatorImages reduction14880.relations [0,0,1663] reduction14880.output := by lin_cert using reduction14880.terms
def image14881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14881 : InImage map_23_228 image14881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14881 : Bundle := named_bundle% "RealMapCertificates/relations/basis14881.json"
theorem reductionProof14881 : EqualModuloRelations reduction14881.relations reduction14881.input reduction14881.output := by lin_cert using reduction14881.terms
theorem substitutionProof14881 : IsMapEvaluation generatorImages reduction14881.relations [0,0,1661] reduction14881.output := by lin_cert using reduction14881.terms
def map_23_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15036 : InImage map_23_229 image15036 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15036 : Bundle := named_bundle% "RealMapCertificates/relations/basis15036.json"
theorem reductionProof15036 : EqualModuloRelations reduction15036.relations reduction15036.input reduction15036.output := by lin_cert using reduction15036.terms
theorem substitutionProof15036 : IsMapEvaluation generatorImages reduction15036.relations [1722] reduction15036.output := by lin_cert using reduction15036.terms
def image15037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15037 : InImage map_23_229 image15037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15037 : Bundle := named_bundle% "RealMapCertificates/relations/basis15037.json"
theorem reductionProof15037 : EqualModuloRelations reduction15037.relations reduction15037.input reduction15037.output := by lin_cert using reduction15037.terms
theorem substitutionProof15037 : IsMapEvaluation generatorImages reduction15037.relations [209,280] reduction15037.output := by lin_cert using reduction15037.terms
def image15038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15038 : InImage map_23_229 image15038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15038 : Bundle := named_bundle% "RealMapCertificates/relations/basis15038.json"
theorem reductionProof15038 : EqualModuloRelations reduction15038.relations reduction15038.input reduction15038.output := by lin_cert using reduction15038.terms
theorem substitutionProof15038 : IsMapEvaluation generatorImages reduction15038.relations [9,13,933] reduction15038.output := by lin_cert using reduction15038.terms
def image15039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15039 : InImage map_23_229 image15039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15039 : Bundle := named_bundle% "RealMapCertificates/relations/basis15039.json"
theorem reductionProof15039 : EqualModuloRelations reduction15039.relations reduction15039.input reduction15039.output := by lin_cert using reduction15039.terms
theorem substitutionProof15039 : IsMapEvaluation generatorImages reduction15039.relations [3,1575] reduction15039.output := by lin_cert using reduction15039.terms
def map_23_230 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15250 : InImage map_23_230 image15250 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15250 : Bundle := named_bundle% "RealMapCertificates/relations/basis15250.json"
theorem reductionProof15250 : EqualModuloRelations reduction15250.relations reduction15250.input reduction15250.output := by lin_cert using reduction15250.terms
theorem substitutionProof15250 : IsMapEvaluation generatorImages reduction15250.relations [184,324] reduction15250.output := by lin_cert using reduction15250.terms
def image15251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15251 : InImage map_23_230 image15251 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15251 : Bundle := named_bundle% "RealMapCertificates/relations/basis15251.json"
theorem reductionProof15251 : EqualModuloRelations reduction15251.relations reduction15251.input reduction15251.output := by lin_cert using reduction15251.terms
theorem substitutionProof15251 : IsMapEvaluation generatorImages reduction15251.relations [1,1,1661] reduction15251.output := by lin_cert using reduction15251.terms
def image15252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15252 : InImage map_23_230 image15252 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15252 : Bundle := named_bundle% "RealMapCertificates/relations/basis15252.json"
theorem reductionProof15252 : EqualModuloRelations reduction15252.relations reduction15252.input reduction15252.output := by lin_cert using reduction15252.terms
theorem substitutionProof15252 : IsMapEvaluation generatorImages reduction15252.relations [0,1723] reduction15252.output := by lin_cert using reduction15252.terms
def image15253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15253 : InImage map_23_230 image15253 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15253 : Bundle := named_bundle% "RealMapCertificates/relations/basis15253.json"
theorem reductionProof15253 : EqualModuloRelations reduction15253.relations reduction15253.input reduction15253.output := by lin_cert using reduction15253.terms
theorem substitutionProof15253 : IsMapEvaluation generatorImages reduction15253.relations [0,0,1693] reduction15253.output := by lin_cert using reduction15253.terms
def map_23_231 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15496 : InImage map_23_231 image15496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15496 : Bundle := named_bundle% "RealMapCertificates/relations/basis15496.json"
theorem reductionProof15496 : EqualModuloRelations reduction15496.relations reduction15496.input reduction15496.output := by lin_cert using reduction15496.terms
theorem substitutionProof15496 : IsMapEvaluation generatorImages reduction15496.relations [1762] reduction15496.output := by lin_cert using reduction15496.terms
def image15497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15497 : InImage map_23_231 image15497 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15497 : Bundle := named_bundle% "RealMapCertificates/relations/basis15497.json"
theorem reductionProof15497 : EqualModuloRelations reduction15497.relations reduction15497.input reduction15497.output := by lin_cert using reduction15497.terms
theorem substitutionProof15497 : IsMapEvaluation generatorImages reduction15497.relations [1761] reduction15497.output := by lin_cert using reduction15497.terms
def image15498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15498 : InImage map_23_231 image15498 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15498 : Bundle := named_bundle% "RealMapCertificates/relations/basis15498.json"
theorem reductionProof15498 : EqualModuloRelations reduction15498.relations reduction15498.input reduction15498.output := by lin_cert using reduction15498.terms
theorem substitutionProof15498 : IsMapEvaluation generatorImages reduction15498.relations [75,691] reduction15498.output := by lin_cert using reduction15498.terms
def image15499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15499 : InImage map_23_231 image15499 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15499 : Bundle := named_bundle% "RealMapCertificates/relations/basis15499.json"
theorem reductionProof15499 : EqualModuloRelations reduction15499.relations reduction15499.input reduction15499.output := by lin_cert using reduction15499.terms
theorem substitutionProof15499 : IsMapEvaluation generatorImages reduction15499.relations [13,1319] reduction15499.output := by lin_cert using reduction15499.terms
def image15500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15500 : InImage map_23_231 image15500 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15500 : Bundle := named_bundle% "RealMapCertificates/relations/basis15500.json"
theorem reductionProof15500 : EqualModuloRelations reduction15500.relations reduction15500.input reduction15500.output := by lin_cert using reduction15500.terms
theorem substitutionProof15500 : IsMapEvaluation generatorImages reduction15500.relations [0,1740] reduction15500.output := by lin_cert using reduction15500.terms
def image15501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15501 : InImage map_23_231 image15501 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15501 : Bundle := named_bundle% "RealMapCertificates/relations/basis15501.json"
theorem reductionProof15501 : EqualModuloRelations reduction15501.relations reduction15501.input reduction15501.output := by lin_cert using reduction15501.terms
theorem substitutionProof15501 : IsMapEvaluation generatorImages reduction15501.relations [0,185,324] reduction15501.output := by lin_cert using reduction15501.terms
def map_23_232 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15671 : InImage map_23_232 image15671 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15671 : Bundle := named_bundle% "RealMapCertificates/relations/basis15671.json"
theorem reductionProof15671 : EqualModuloRelations reduction15671.relations reduction15671.input reduction15671.output := by lin_cert using reduction15671.terms
theorem substitutionProof15671 : IsMapEvaluation generatorImages reduction15671.relations [1783] reduction15671.output := by lin_cert using reduction15671.terms
def image15672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15672 : InImage map_23_232 image15672 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15672 : Bundle := named_bundle% "RealMapCertificates/relations/basis15672.json"
theorem reductionProof15672 : EqualModuloRelations reduction15672.relations reduction15672.input reduction15672.output := by lin_cert using reduction15672.terms
theorem substitutionProof15672 : IsMapEvaluation generatorImages reduction15672.relations [188,335] reduction15672.output := by lin_cert using reduction15672.terms
def image15673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15673 : InImage map_23_232 image15673 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15673 : Bundle := named_bundle% "RealMapCertificates/relations/basis15673.json"
theorem reductionProof15673 : EqualModuloRelations reduction15673.relations reduction15673.input reduction15673.output := by lin_cert using reduction15673.terms
theorem substitutionProof15673 : IsMapEvaluation generatorImages reduction15673.relations [13,13,933] reduction15673.output := by lin_cert using reduction15673.terms
def image15674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15674 : InImage map_23_232 image15674 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15674 : Bundle := named_bundle% "RealMapCertificates/relations/basis15674.json"
theorem reductionProof15674 : EqualModuloRelations reduction15674.relations reduction15674.input reduction15674.output := by lin_cert using reduction15674.terms
theorem substitutionProof15674 : IsMapEvaluation generatorImages reduction15674.relations [8,1445] reduction15674.output := by lin_cert using reduction15674.terms
def image15675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15675 : InImage map_23_232 image15675 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15675 : Bundle := named_bundle% "RealMapCertificates/relations/basis15675.json"
theorem reductionProof15675 : EqualModuloRelations reduction15675.relations reduction15675.input reduction15675.output := by lin_cert using reduction15675.terms
theorem substitutionProof15675 : IsMapEvaluation generatorImages reduction15675.relations [0,1763] reduction15675.output := by lin_cert using reduction15675.terms
def image15676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15676 : InImage map_23_232 image15676 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15676 : Bundle := named_bundle% "RealMapCertificates/relations/basis15676.json"
theorem reductionProof15676 : EqualModuloRelations reduction15676.relations reduction15676.input reduction15676.output := by lin_cert using reduction15676.terms
theorem substitutionProof15676 : IsMapEvaluation generatorImages reduction15676.relations [0,3,1610] reduction15676.output := by lin_cert using reduction15676.terms
def image15677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15677 : InImage map_23_232 image15677 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15677 : Bundle := named_bundle% "RealMapCertificates/relations/basis15677.json"
theorem reductionProof15677 : EqualModuloRelations reduction15677.relations reduction15677.input reduction15677.output := by lin_cert using reduction15677.terms
theorem substitutionProof15677 : IsMapEvaluation generatorImages reduction15677.relations [0,3,1609] reduction15677.output := by lin_cert using reduction15677.terms
def image15678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15678 : InImage map_23_232 image15678 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15678 : Bundle := named_bundle% "RealMapCertificates/relations/basis15678.json"
theorem reductionProof15678 : EqualModuloRelations reduction15678.relations reduction15678.input reduction15678.output := by lin_cert using reduction15678.terms
theorem substitutionProof15678 : IsMapEvaluation generatorImages reduction15678.relations [0,0,1741] reduction15678.output := by lin_cert using reduction15678.terms
def map_23_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15904 : InImage map_23_233 image15904 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15904 : Bundle := named_bundle% "RealMapCertificates/relations/basis15904.json"
theorem reductionProof15904 : EqualModuloRelations reduction15904.relations reduction15904.input reduction15904.output := by lin_cert using reduction15904.terms
theorem substitutionProof15904 : IsMapEvaluation generatorImages reduction15904.relations [8,137,324] reduction15904.output := by lin_cert using reduction15904.terms
def image15905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15905 : InImage map_23_233 image15905 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15905 : Bundle := named_bundle% "RealMapCertificates/relations/basis15905.json"
theorem reductionProof15905 : EqualModuloRelations reduction15905.relations reduction15905.input reduction15905.output := by lin_cert using reduction15905.terms
theorem substitutionProof15905 : IsMapEvaluation generatorImages reduction15905.relations [1,1763] reduction15905.output := by lin_cert using reduction15905.terms
def image15906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15906 : InImage map_23_233 image15906 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15906 : Bundle := named_bundle% "RealMapCertificates/relations/basis15906.json"
theorem reductionProof15906 : EqualModuloRelations reduction15906.relations reduction15906.input reduction15906.output := by lin_cert using reduction15906.terms
theorem substitutionProof15906 : IsMapEvaluation generatorImages reduction15906.relations [0,1786] reduction15906.output := by lin_cert using reduction15906.terms
def image15907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15907 : InImage map_23_233 image15907 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15907 : Bundle := named_bundle% "RealMapCertificates/relations/basis15907.json"
theorem reductionProof15907 : EqualModuloRelations reduction15907.relations reduction15907.input reduction15907.output := by lin_cert using reduction15907.terms
theorem substitutionProof15907 : IsMapEvaluation generatorImages reduction15907.relations [0,1785] reduction15907.output := by lin_cert using reduction15907.terms
def image15908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15908 : InImage map_23_233 image15908 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15908 : Bundle := named_bundle% "RealMapCertificates/relations/basis15908.json"
theorem reductionProof15908 : EqualModuloRelations reduction15908.relations reduction15908.input reduction15908.output := by lin_cert using reduction15908.terms
theorem substitutionProof15908 : IsMapEvaluation generatorImages reduction15908.relations [0,0,1764] reduction15908.output := by lin_cert using reduction15908.terms
def image15909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15909 : InImage map_23_233 image15909 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15909 : Bundle := named_bundle% "RealMapCertificates/relations/basis15909.json"
theorem reductionProof15909 : EqualModuloRelations reduction15909.relations reduction15909.input reduction15909.output := by lin_cert using reduction15909.terms
theorem substitutionProof15909 : IsMapEvaluation generatorImages reduction15909.relations [0,0,0,3,1600] reduction15909.output := by lin_cert using reduction15909.terms
def map_23_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16151 : InImage map_23_234 image16151 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16151 : Bundle := named_bundle% "RealMapCertificates/relations/basis16151.json"
theorem reductionProof16151 : EqualModuloRelations reduction16151.relations reduction16151.input reduction16151.output := by lin_cert using reduction16151.terms
theorem substitutionProof16151 : IsMapEvaluation generatorImages reduction16151.relations [43,960] reduction16151.output := by lin_cert using reduction16151.terms
def image16152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16152 : InImage map_23_234 image16152 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16152 : Bundle := named_bundle% "RealMapCertificates/relations/basis16152.json"
theorem reductionProof16152 : EqualModuloRelations reduction16152.relations reduction16152.input reduction16152.output := by lin_cert using reduction16152.terms
theorem substitutionProof16152 : IsMapEvaluation generatorImages reduction16152.relations [9,1434] reduction16152.output := by lin_cert using reduction16152.terms
def image16153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16153 : InImage map_23_234 image16153 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16153 : Bundle := named_bundle% "RealMapCertificates/relations/basis16153.json"
theorem reductionProof16153 : EqualModuloRelations reduction16153.relations reduction16153.input reduction16153.output := by lin_cert using reduction16153.terms
theorem substitutionProof16153 : IsMapEvaluation generatorImages reduction16153.relations [2,1740] reduction16153.output := by lin_cert using reduction16153.terms
def image16154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16154 : InImage map_23_234 image16154 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16154 : Bundle := named_bundle% "RealMapCertificates/relations/basis16154.json"
theorem reductionProof16154 : EqualModuloRelations reduction16154.relations reduction16154.input reduction16154.output := by lin_cert using reduction16154.terms
theorem substitutionProof16154 : IsMapEvaluation generatorImages reduction16154.relations [1,1786] reduction16154.output := by lin_cert using reduction16154.terms
def image16155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16155 : InImage map_23_234 image16155 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16155 : Bundle := named_bundle% "RealMapCertificates/relations/basis16155.json"
theorem reductionProof16155 : EqualModuloRelations reduction16155.relations reduction16155.input reduction16155.output := by lin_cert using reduction16155.terms
theorem substitutionProof16155 : IsMapEvaluation generatorImages reduction16155.relations [1,189,335] reduction16155.output := by lin_cert using reduction16155.terms
def image16156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16156 : InImage map_23_234 image16156 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16156 : Bundle := named_bundle% "RealMapCertificates/relations/basis16156.json"
theorem reductionProof16156 : EqualModuloRelations reduction16156.relations reduction16156.input reduction16156.output := by lin_cert using reduction16156.terms
theorem substitutionProof16156 : IsMapEvaluation generatorImages reduction16156.relations [0,8,138,324] reduction16156.output := by lin_cert using reduction16156.terms
def map_23_235 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16347 : InImage map_23_235 image16347 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16347 : Bundle := named_bundle% "RealMapCertificates/relations/basis16347.json"
theorem reductionProof16347 : EqualModuloRelations reduction16347.relations reduction16347.input reduction16347.output := by lin_cert using reduction16347.terms
theorem substitutionProof16347 : IsMapEvaluation generatorImages reduction16347.relations [209,319] reduction16347.output := by lin_cert using reduction16347.terms
def image16348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16348 : InImage map_23_235 image16348 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16348 : Bundle := named_bundle% "RealMapCertificates/relations/basis16348.json"
theorem reductionProof16348 : EqualModuloRelations reduction16348.relations reduction16348.input reduction16348.output := by lin_cert using reduction16348.terms
theorem substitutionProof16348 : IsMapEvaluation generatorImages reduction16348.relations [9,1445] reduction16348.output := by lin_cert using reduction16348.terms
def image16349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16349 : InImage map_23_235 image16349 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16349 : Bundle := named_bundle% "RealMapCertificates/relations/basis16349.json"
theorem reductionProof16349 : EqualModuloRelations reduction16349.relations reduction16349.input reduction16349.output := by lin_cert using reduction16349.terms
theorem substitutionProof16349 : IsMapEvaluation generatorImages reduction16349.relations [0,0,1817] reduction16349.output := by lin_cert using reduction16349.terms
def image16350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16350 : InImage map_23_235 image16350 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16350 : Bundle := named_bundle% "RealMapCertificates/relations/basis16350.json"
theorem reductionProof16350 : EqualModuloRelations reduction16350.relations reduction16350.input reduction16350.output := by lin_cert using reduction16350.terms
theorem substitutionProof16350 : IsMapEvaluation generatorImages reduction16350.relations [0,0,1816] reduction16350.output := by lin_cert using reduction16350.terms
def image16351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16351 : InImage map_23_235 image16351 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16351 : Bundle := named_bundle% "RealMapCertificates/relations/basis16351.json"
theorem reductionProof16351 : EqualModuloRelations reduction16351.relations reduction16351.input reduction16351.output := by lin_cert using reduction16351.terms
theorem substitutionProof16351 : IsMapEvaluation generatorImages reduction16351.relations [0,0,195,333] reduction16351.output := by lin_cert using reduction16351.terms
def map_23_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16576 : InImage map_23_236 image16576 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16576 : Bundle := named_bundle% "RealMapCertificates/relations/basis16576.json"
theorem reductionProof16576 : EqualModuloRelations reduction16576.relations reduction16576.input reduction16576.output := by lin_cert using reduction16576.terms
theorem substitutionProof16576 : IsMapEvaluation generatorImages reduction16576.relations [8,146,324] reduction16576.output := by lin_cert using reduction16576.terms
def image16577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16577 : InImage map_23_236 image16577 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16577 : Bundle := named_bundle% "RealMapCertificates/relations/basis16577.json"
theorem reductionProof16577 : EqualModuloRelations reduction16577.relations reduction16577.input reduction16577.output := by lin_cert using reduction16577.terms
theorem substitutionProof16577 : IsMapEvaluation generatorImages reduction16577.relations [1,1841] reduction16577.output := by lin_cert using reduction16577.terms
def image16578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16578 : InImage map_23_236 image16578 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16578 : Bundle := named_bundle% "RealMapCertificates/relations/basis16578.json"
theorem reductionProof16578 : EqualModuloRelations reduction16578.relations reduction16578.input reduction16578.output := by lin_cert using reduction16578.terms
theorem substitutionProof16578 : IsMapEvaluation generatorImages reduction16578.relations [1,5,149,324] reduction16578.output := by lin_cert using reduction16578.terms
def image16579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16579 : InImage map_23_236 image16579 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16579 : Bundle := named_bundle% "RealMapCertificates/relations/basis16579.json"
theorem reductionProof16579 : EqualModuloRelations reduction16579.relations reduction16579.input reduction16579.output := by lin_cert using reduction16579.terms
theorem substitutionProof16579 : IsMapEvaluation generatorImages reduction16579.relations [0,1868] reduction16579.output := by lin_cert using reduction16579.terms
def image16580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16580 : InImage map_23_236 image16580 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16580 : Bundle := named_bundle% "RealMapCertificates/relations/basis16580.json"
theorem reductionProof16580 : EqualModuloRelations reduction16580.relations reduction16580.input reduction16580.output := by lin_cert using reduction16580.terms
theorem substitutionProof16580 : IsMapEvaluation generatorImages reduction16580.relations [0,1867] reduction16580.output := by lin_cert using reduction16580.terms
def map_23_237 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16826 : InImage map_23_237 image16826 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16826 : Bundle := named_bundle% "RealMapCertificates/relations/basis16826.json"
theorem reductionProof16826 : EqualModuloRelations reduction16826.relations reduction16826.input reduction16826.output := by lin_cert using reduction16826.terms
theorem substitutionProof16826 : IsMapEvaluation generatorImages reduction16826.relations [1912] reduction16826.output := by lin_cert using reduction16826.terms
def image16827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16827 : InImage map_23_237 image16827 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16827 : Bundle := named_bundle% "RealMapCertificates/relations/basis16827.json"
theorem reductionProof16827 : EqualModuloRelations reduction16827.relations reduction16827.input reduction16827.output := by lin_cert using reduction16827.terms
theorem substitutionProof16827 : IsMapEvaluation generatorImages reduction16827.relations [1911] reduction16827.output := by lin_cert using reduction16827.terms
def image16828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16828 : InImage map_23_237 image16828 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16828 : Bundle := named_bundle% "RealMapCertificates/relations/basis16828.json"
theorem reductionProof16828 : EqualModuloRelations reduction16828.relations reduction16828.input reduction16828.output := by lin_cert using reduction16828.terms
theorem substitutionProof16828 : IsMapEvaluation generatorImages reduction16828.relations [1910] reduction16828.output := by lin_cert using reduction16828.terms
def image16829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16829 : InImage map_23_237 image16829 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16829 : Bundle := named_bundle% "RealMapCertificates/relations/basis16829.json"
theorem reductionProof16829 : EqualModuloRelations reduction16829.relations reduction16829.input reduction16829.output := by lin_cert using reduction16829.terms
theorem substitutionProof16829 : IsMapEvaluation generatorImages reduction16829.relations [1909] reduction16829.output := by lin_cert using reduction16829.terms
def image16830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16830 : InImage map_23_237 image16830 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16830 : Bundle := named_bundle% "RealMapCertificates/relations/basis16830.json"
theorem reductionProof16830 : EqualModuloRelations reduction16830.relations reduction16830.input reduction16830.output := by lin_cert using reduction16830.terms
theorem substitutionProof16830 : IsMapEvaluation generatorImages reduction16830.relations [13,1434] reduction16830.output := by lin_cert using reduction16830.terms
def image16831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16831 : InImage map_23_237 image16831 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16831 : Bundle := named_bundle% "RealMapCertificates/relations/basis16831.json"
theorem reductionProof16831 : EqualModuloRelations reduction16831.relations reduction16831.input reduction16831.output := by lin_cert using reduction16831.terms
theorem substitutionProof16831 : IsMapEvaluation generatorImages reduction16831.relations [0,8,147,324] reduction16831.output := by lin_cert using reduction16831.terms
def map_23_238 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17009 : InImage map_23_238 image17009 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17009 : Bundle := named_bundle% "RealMapCertificates/relations/basis17009.json"
theorem reductionProof17009 : EqualModuloRelations reduction17009.relations reduction17009.input reduction17009.output := by lin_cert using reduction17009.terms
theorem substitutionProof17009 : IsMapEvaluation generatorImages reduction17009.relations [1942] reduction17009.output := by lin_cert using reduction17009.terms
def image17010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17010 : InImage map_23_238 image17010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17010 : Bundle := named_bundle% "RealMapCertificates/relations/basis17010.json"
theorem reductionProof17010 : EqualModuloRelations reduction17010.relations reduction17010.input reduction17010.output := by lin_cert using reduction17010.terms
theorem substitutionProof17010 : IsMapEvaluation generatorImages reduction17010.relations [189,417] reduction17010.output := by lin_cert using reduction17010.terms
def image17011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17011 : InImage map_23_238 image17011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17011 : Bundle := named_bundle% "RealMapCertificates/relations/basis17011.json"
theorem reductionProof17011 : EqualModuloRelations reduction17011.relations reduction17011.input reduction17011.output := by lin_cert using reduction17011.terms
theorem substitutionProof17011 : IsMapEvaluation generatorImages reduction17011.relations [13,1445] reduction17011.output := by lin_cert using reduction17011.terms
def map_23_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17269 : InImage map_23_239 image17269 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17269 : Bundle := named_bundle% "RealMapCertificates/relations/basis17269.json"
theorem reductionProof17269 : EqualModuloRelations reduction17269.relations reduction17269.input reduction17269.output := by lin_cert using reduction17269.terms
theorem substitutionProof17269 : IsMapEvaluation generatorImages reduction17269.relations [13,13,13,734] reduction17269.output := by lin_cert using reduction17269.terms
def image17270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17270 : InImage map_23_239 image17270 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17270 : Bundle := named_bundle% "RealMapCertificates/relations/basis17270.json"
theorem reductionProof17270 : EqualModuloRelations reduction17270.relations reduction17270.input reduction17270.output := by lin_cert using reduction17270.terms
theorem substitutionProof17270 : IsMapEvaluation generatorImages reduction17270.relations [8,16,64,324] reduction17270.output := by lin_cert using reduction17270.terms
def image17271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17271 : InImage map_23_239 image17271 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17271 : Bundle := named_bundle% "RealMapCertificates/relations/basis17271.json"
theorem reductionProof17271 : EqualModuloRelations reduction17271.relations reduction17271.input reduction17271.output := by lin_cert using reduction17271.terms
theorem substitutionProof17271 : IsMapEvaluation generatorImages reduction17271.relations [2,1868] reduction17271.output := by lin_cert using reduction17271.terms
def image17272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17272 : InImage map_23_239 image17272 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17272 : Bundle := named_bundle% "RealMapCertificates/relations/basis17272.json"
theorem reductionProof17272 : EqualModuloRelations reduction17272.relations reduction17272.input reduction17272.output := by lin_cert using reduction17272.terms
theorem substitutionProof17272 : IsMapEvaluation generatorImages reduction17272.relations [0,1943] reduction17272.output := by lin_cert using reduction17272.terms
def image17273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17273 : InImage map_23_239 image17273 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17273 : Bundle := named_bundle% "RealMapCertificates/relations/basis17273.json"
theorem reductionProof17273 : EqualModuloRelations reduction17273.relations reduction17273.input reduction17273.output := by lin_cert using reduction17273.terms
theorem substitutionProof17273 : IsMapEvaluation generatorImages reduction17273.relations [0,0,0,1894] reduction17273.output := by lin_cert using reduction17273.terms
def map_23_240 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17547 : InImage map_23_240 image17547 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17547 : Bundle := named_bundle% "RealMapCertificates/relations/basis17547.json"
theorem reductionProof17547 : EqualModuloRelations reduction17547.relations reduction17547.input reduction17547.output := by lin_cert using reduction17547.terms
theorem substitutionProof17547 : IsMapEvaluation generatorImages reduction17547.relations [2009] reduction17547.output := by lin_cert using reduction17547.terms
def image17548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17548 : InImage map_23_240 image17548 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17548 : Bundle := named_bundle% "RealMapCertificates/relations/basis17548.json"
theorem reductionProof17548 : EqualModuloRelations reduction17548.relations reduction17548.input reduction17548.output := by lin_cert using reduction17548.terms
theorem substitutionProof17548 : IsMapEvaluation generatorImages reduction17548.relations [2008] reduction17548.output := by lin_cert using reduction17548.terms
def image17549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17549 : InImage map_23_240 image17549 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17549 : Bundle := named_bundle% "RealMapCertificates/relations/basis17549.json"
theorem reductionProof17549 : EqualModuloRelations reduction17549.relations reduction17549.input reduction17549.output := by lin_cert using reduction17549.terms
theorem substitutionProof17549 : IsMapEvaluation generatorImages reduction17549.relations [2007] reduction17549.output := by lin_cert using reduction17549.terms
def image17550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17550 : InImage map_23_240 image17550 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17550 : Bundle := named_bundle% "RealMapCertificates/relations/basis17550.json"
theorem reductionProof17550 : EqualModuloRelations reduction17550.relations reduction17550.input reduction17550.output := by lin_cert using reduction17550.terms
theorem substitutionProof17550 : IsMapEvaluation generatorImages reduction17550.relations [2006] reduction17550.output := by lin_cert using reduction17550.terms
def image17551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17551 : InImage map_23_240 image17551 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17551 : Bundle := named_bundle% "RealMapCertificates/relations/basis17551.json"
theorem reductionProof17551 : EqualModuloRelations reduction17551.relations reduction17551.input reduction17551.output := by lin_cert using reduction17551.terms
theorem substitutionProof17551 : IsMapEvaluation generatorImages reduction17551.relations [3,1786] reduction17551.output := by lin_cert using reduction17551.terms
def image17552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17552 : InImage map_23_240 image17552 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17552 : Bundle := named_bundle% "RealMapCertificates/relations/basis17552.json"
theorem reductionProof17552 : EqualModuloRelations reduction17552.relations reduction17552.input reduction17552.output := by lin_cert using reduction17552.terms
theorem substitutionProof17552 : IsMapEvaluation generatorImages reduction17552.relations [3,189,335] reduction17552.output := by lin_cert using reduction17552.terms
def image17553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17553 : InImage map_23_240 image17553 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17553 : Bundle := named_bundle% "RealMapCertificates/relations/basis17553.json"
theorem reductionProof17553 : EqualModuloRelations reduction17553.relations reduction17553.input reduction17553.output := by lin_cert using reduction17553.terms
theorem substitutionProof17553 : IsMapEvaluation generatorImages reduction17553.relations [0,8,17,64,324] reduction17553.output := by lin_cert using reduction17553.terms
def map_23_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17787 : InImage map_23_241 image17787 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17787 : Bundle := named_bundle% "RealMapCertificates/relations/basis17787.json"
theorem reductionProof17787 : EqualModuloRelations reduction17787.relations reduction17787.input reduction17787.output := by lin_cert using reduction17787.terms
theorem substitutionProof17787 : IsMapEvaluation generatorImages reduction17787.relations [2048] reduction17787.output := by lin_cert using reduction17787.terms
def image17788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17788 : InImage map_23_241 image17788 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17788 : Bundle := named_bundle% "RealMapCertificates/relations/basis17788.json"
theorem reductionProof17788 : EqualModuloRelations reduction17788.relations reduction17788.input reduction17788.output := by lin_cert using reduction17788.terms
theorem substitutionProof17788 : IsMapEvaluation generatorImages reduction17788.relations [2047] reduction17788.output := by lin_cert using reduction17788.terms
def image17789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17789 : InImage map_23_241 image17789 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17789 : Bundle := named_bundle% "RealMapCertificates/relations/basis17789.json"
theorem reductionProof17789 : EqualModuloRelations reduction17789.relations reduction17789.input reduction17789.output := by lin_cert using reduction17789.terms
theorem substitutionProof17789 : IsMapEvaluation generatorImages reduction17789.relations [0,67,841] reduction17789.output := by lin_cert using reduction17789.terms
def map_23_242 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18047 : InImage map_23_242 image18047 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18047 : Bundle := named_bundle% "RealMapCertificates/relations/basis18047.json"
theorem reductionProof18047 : EqualModuloRelations reduction18047.relations reduction18047.input reduction18047.output := by lin_cert using reduction18047.terms
theorem substitutionProof18047 : IsMapEvaluation generatorImages reduction18047.relations [8,8,112,324] reduction18047.output := by lin_cert using reduction18047.terms
def image18048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18048 : InImage map_23_242 image18048 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18048 : Bundle := named_bundle% "RealMapCertificates/relations/basis18048.json"
theorem reductionProof18048 : EqualModuloRelations reduction18048.relations reduction18048.input reduction18048.output := by lin_cert using reduction18048.terms
theorem substitutionProof18048 : IsMapEvaluation generatorImages reduction18048.relations [0,0,2010] reduction18048.output := by lin_cert using reduction18048.terms
def map_23_243 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18323 : InImage map_23_243 image18323 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18323 : Bundle := named_bundle% "RealMapCertificates/relations/basis18323.json"
theorem reductionProof18323 : EqualModuloRelations reduction18323.relations reduction18323.input reduction18323.output := by lin_cert using reduction18323.terms
theorem substitutionProof18323 : IsMapEvaluation generatorImages reduction18323.relations [2109] reduction18323.output := by lin_cert using reduction18323.terms
def image18324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18324 : InImage map_23_243 image18324 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18324 : Bundle := named_bundle% "RealMapCertificates/relations/basis18324.json"
theorem reductionProof18324 : EqualModuloRelations reduction18324.relations reduction18324.input reduction18324.output := by lin_cert using reduction18324.terms
theorem substitutionProof18324 : IsMapEvaluation generatorImages reduction18324.relations [2108] reduction18324.output := by lin_cert using reduction18324.terms
def image18325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18325 : InImage map_23_243 image18325 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18325 : Bundle := named_bundle% "RealMapCertificates/relations/basis18325.json"
theorem reductionProof18325 : EqualModuloRelations reduction18325.relations reduction18325.input reduction18325.output := by lin_cert using reduction18325.terms
theorem substitutionProof18325 : IsMapEvaluation generatorImages reduction18325.relations [209,418] reduction18325.output := by lin_cert using reduction18325.terms
def image18326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18326 : InImage map_23_243 image18326 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18326 : Bundle := named_bundle% "RealMapCertificates/relations/basis18326.json"
theorem reductionProof18326 : EqualModuloRelations reduction18326.relations reduction18326.input reduction18326.output := by lin_cert using reduction18326.terms
theorem substitutionProof18326 : IsMapEvaluation generatorImages reduction18326.relations [13,1547] reduction18326.output := by lin_cert using reduction18326.terms
def image18327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18327 : InImage map_23_243 image18327 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18327 : Bundle := named_bundle% "RealMapCertificates/relations/basis18327.json"
theorem reductionProof18327 : EqualModuloRelations reduction18327.relations reduction18327.input reduction18327.output := by lin_cert using reduction18327.terms
theorem substitutionProof18327 : IsMapEvaluation generatorImages reduction18327.relations [8,1644] reduction18327.output := by lin_cert using reduction18327.terms
def image18328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18328 : InImage map_23_243 image18328 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18328 : Bundle := named_bundle% "RealMapCertificates/relations/basis18328.json"
theorem reductionProof18328 : EqualModuloRelations reduction18328.relations reduction18328.input reduction18328.output := by lin_cert using reduction18328.terms
theorem substitutionProof18328 : IsMapEvaluation generatorImages reduction18328.relations [0,2064] reduction18328.output := by lin_cert using reduction18328.terms
def image18329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18329 : InImage map_23_243 image18329 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18329 : Bundle := named_bundle% "RealMapCertificates/relations/basis18329.json"
theorem reductionProof18329 : EqualModuloRelations reduction18329.relations reduction18329.input reduction18329.output := by lin_cert using reduction18329.terms
theorem substitutionProof18329 : IsMapEvaluation generatorImages reduction18329.relations [0,8,8,113,324] reduction18329.output := by lin_cert using reduction18329.terms
def image18330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18330 : InImage map_23_243 image18330 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18330 : Bundle := named_bundle% "RealMapCertificates/relations/basis18330.json"
theorem reductionProof18330 : EqualModuloRelations reduction18330.relations reduction18330.input reduction18330.output := by lin_cert using reduction18330.terms
theorem substitutionProof18330 : IsMapEvaluation generatorImages reduction18330.relations [0,3,3,1665] reduction18330.output := by lin_cert using reduction18330.terms
def map_23_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18526 : InImage map_23_244 image18526 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18526 : Bundle := named_bundle% "RealMapCertificates/relations/basis18526.json"
theorem reductionProof18526 : EqualModuloRelations reduction18526.relations reduction18526.input reduction18526.output := by lin_cert using reduction18526.terms
theorem substitutionProof18526 : IsMapEvaluation generatorImages reduction18526.relations [2140] reduction18526.output := by lin_cert using reduction18526.terms
def image18527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18527 : InImage map_23_244 image18527 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18527 : Bundle := named_bundle% "RealMapCertificates/relations/basis18527.json"
theorem reductionProof18527 : EqualModuloRelations reduction18527.relations reduction18527.input reduction18527.output := by lin_cert using reduction18527.terms
theorem substitutionProof18527 : IsMapEvaluation generatorImages reduction18527.relations [2139] reduction18527.output := by lin_cert using reduction18527.terms
def image18528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18528 : InImage map_23_244 image18528 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18528 : Bundle := named_bundle% "RealMapCertificates/relations/basis18528.json"
theorem reductionProof18528 : EqualModuloRelations reduction18528.relations reduction18528.input reduction18528.output := by lin_cert using reduction18528.terms
theorem substitutionProof18528 : IsMapEvaluation generatorImages reduction18528.relations [2138] reduction18528.output := by lin_cert using reduction18528.terms
def image18529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18529 : InImage map_23_244 image18529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18529 : Bundle := named_bundle% "RealMapCertificates/relations/basis18529.json"
theorem reductionProof18529 : EqualModuloRelations reduction18529.relations reduction18529.input reduction18529.output := by lin_cert using reduction18529.terms
theorem substitutionProof18529 : IsMapEvaluation generatorImages reduction18529.relations [245,324] reduction18529.output := by lin_cert using reduction18529.terms
def image18530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18530 : InImage map_23_244 image18530 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18530 : Bundle := named_bundle% "RealMapCertificates/relations/basis18530.json"
theorem reductionProof18530 : EqualModuloRelations reduction18530.relations reduction18530.input reduction18530.output := by lin_cert using reduction18530.terms
theorem substitutionProof18530 : IsMapEvaluation generatorImages reduction18530.relations [0,0,2067] reduction18530.output := by lin_cert using reduction18530.terms
def map_23_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18798 : InImage map_23_245 image18798 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18798 : Bundle := named_bundle% "RealMapCertificates/relations/basis18798.json"
theorem reductionProof18798 : EqualModuloRelations reduction18798.relations reduction18798.input reduction18798.output := by lin_cert using reduction18798.terms
theorem substitutionProof18798 : IsMapEvaluation generatorImages reduction18798.relations [2175] reduction18798.output := by lin_cert using reduction18798.terms
def image18799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18799 : InImage map_23_245 image18799 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18799 : Bundle := named_bundle% "RealMapCertificates/relations/basis18799.json"
theorem reductionProof18799 : EqualModuloRelations reduction18799.relations reduction18799.input reduction18799.output := by lin_cert using reduction18799.terms
theorem substitutionProof18799 : IsMapEvaluation generatorImages reduction18799.relations [9,13,75,373] reduction18799.output := by lin_cert using reduction18799.terms
def image18800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18800 : InImage map_23_245 image18800 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18800 : Bundle := named_bundle% "RealMapCertificates/relations/basis18800.json"
theorem reductionProof18800 : EqualModuloRelations reduction18800.relations reduction18800.input reduction18800.output := by lin_cert using reduction18800.terms
theorem substitutionProof18800 : IsMapEvaluation generatorImages reduction18800.relations [8,8,8,64,324] reduction18800.output := by lin_cert using reduction18800.terms
def image18801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18801 : InImage map_23_245 image18801 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18801 : Bundle := named_bundle% "RealMapCertificates/relations/basis18801.json"
theorem reductionProof18801 : EqualModuloRelations reduction18801.relations reduction18801.input reduction18801.output := by lin_cert using reduction18801.terms
theorem substitutionProof18801 : IsMapEvaluation generatorImages reduction18801.relations [1,3,1869] reduction18801.output := by lin_cert using reduction18801.terms
def image18802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18802 : InImage map_23_245 image18802 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18802 : Bundle := named_bundle% "RealMapCertificates/relations/basis18802.json"
theorem reductionProof18802 : EqualModuloRelations reduction18802.relations reduction18802.input reduction18802.output := by lin_cert using reduction18802.terms
theorem substitutionProof18802 : IsMapEvaluation generatorImages reduction18802.relations [0,246,324] reduction18802.output := by lin_cert using reduction18802.terms
def map_23_246 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image19097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19097 : InImage map_23_246 image19097 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction19097 : Bundle := named_bundle% "RealMapCertificates/relations/basis19097.json"
theorem reductionProof19097 : EqualModuloRelations reduction19097.relations reduction19097.input reduction19097.output := by lin_cert using reduction19097.terms
theorem substitutionProof19097 : IsMapEvaluation generatorImages reduction19097.relations [2218] reduction19097.output := by lin_cert using reduction19097.terms
def image19098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19098 : InImage map_23_246 image19098 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction19098 : Bundle := named_bundle% "RealMapCertificates/relations/basis19098.json"
theorem reductionProof19098 : EqualModuloRelations reduction19098.relations reduction19098.input reduction19098.output := by lin_cert using reduction19098.terms
theorem substitutionProof19098 : IsMapEvaluation generatorImages reduction19098.relations [2217] reduction19098.output := by lin_cert using reduction19098.terms
def image19099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19099 : InImage map_23_246 image19099 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction19099 : Bundle := named_bundle% "RealMapCertificates/relations/basis19099.json"
theorem reductionProof19099 : EqualModuloRelations reduction19099.relations reduction19099.input reduction19099.output := by lin_cert using reduction19099.terms
theorem substitutionProof19099 : IsMapEvaluation generatorImages reduction19099.relations [2216] reduction19099.output := by lin_cert using reduction19099.terms
def image19100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19100 : InImage map_23_246 image19100 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction19100 : Bundle := named_bundle% "RealMapCertificates/relations/basis19100.json"
theorem reductionProof19100 : EqualModuloRelations reduction19100.relations reduction19100.input reduction19100.output := by lin_cert using reduction19100.terms
theorem substitutionProof19100 : IsMapEvaluation generatorImages reduction19100.relations [2215] reduction19100.output := by lin_cert using reduction19100.terms
def image19101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19101 : InImage map_23_246 image19101 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction19101 : Bundle := named_bundle% "RealMapCertificates/relations/basis19101.json"
theorem reductionProof19101 : EqualModuloRelations reduction19101.relations reduction19101.input reduction19101.output := by lin_cert using reduction19101.terms
theorem substitutionProof19101 : IsMapEvaluation generatorImages reduction19101.relations [43,1152] reduction19101.output := by lin_cert using reduction19101.terms
def image19102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19102 : InImage map_23_246 image19102 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction19102 : Bundle := named_bundle% "RealMapCertificates/relations/basis19102.json"
theorem reductionProof19102 : EqualModuloRelations reduction19102.relations reduction19102.input reduction19102.output := by lin_cert using reduction19102.terms
theorem substitutionProof19102 : IsMapEvaluation generatorImages reduction19102.relations [9,1644] reduction19102.output := by lin_cert using reduction19102.terms
def image19103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19103 : InImage map_23_246 image19103 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction19103 : Bundle := named_bundle% "RealMapCertificates/relations/basis19103.json"
theorem reductionProof19103 : EqualModuloRelations reduction19103.relations reduction19103.input reduction19103.output := by lin_cert using reduction19103.terms
theorem substitutionProof19103 : IsMapEvaluation generatorImages reduction19103.relations [1,2141] reduction19103.output := by lin_cert using reduction19103.terms
def image19104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19104 : InImage map_23_246 image19104 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction19104 : Bundle := named_bundle% "RealMapCertificates/relations/basis19104.json"
theorem reductionProof19104 : EqualModuloRelations reduction19104.relations reduction19104.input reduction19104.output := by lin_cert using reduction19104.terms
theorem substitutionProof19104 : IsMapEvaluation generatorImages reduction19104.relations [1,1,2067] reduction19104.output := by lin_cert using reduction19104.terms
def image19105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19105 : InImage map_23_246 image19105 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction19105 : Bundle := named_bundle% "RealMapCertificates/relations/basis19105.json"
theorem reductionProof19105 : EqualModuloRelations reduction19105.relations reduction19105.input reduction19105.output := by lin_cert using reduction19105.terms
theorem substitutionProof19105 : IsMapEvaluation generatorImages reduction19105.relations [0,2177] reduction19105.output := by lin_cert using reduction19105.terms
def image19106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19106 : InImage map_23_246 image19106 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction19106 : Bundle := named_bundle% "RealMapCertificates/relations/basis19106.json"
theorem reductionProof19106 : EqualModuloRelations reduction19106.relations reduction19106.input reduction19106.output := by lin_cert using reduction19106.terms
theorem substitutionProof19106 : IsMapEvaluation generatorImages reduction19106.relations [0,2176] reduction19106.output := by lin_cert using reduction19106.terms
def image19107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19107 : InImage map_23_246 image19107 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction19107 : Bundle := named_bundle% "RealMapCertificates/relations/basis19107.json"
theorem reductionProof19107 : EqualModuloRelations reduction19107.relations reduction19107.input reduction19107.output := by lin_cert using reduction19107.terms
theorem substitutionProof19107 : IsMapEvaluation generatorImages reduction19107.relations [0,8,8,118,324] reduction19107.output := by lin_cert using reduction19107.terms
end RealMapCertificates
