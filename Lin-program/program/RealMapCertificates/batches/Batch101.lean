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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 64 => []
  | 67 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 89 => []
  | 101 => []
  | 188 => []
  | 190 => []
  | 209 => []
  | 260 => []
  | 299 => []
  | 324 => []
  | 331 => []
  | 373 => []
  | 376 => []
  | 450 => []
  | 533 => []
  | 619 => []
  | 965 => []
  | 1002 => []
  | 1004 => []
  | 1017 => []
  | 1020 => []
  | 1057 => []
  | 1088 => []
  | 1613 => []
  | 1644 => []
  | 1727 => []
  | 1790 => []
  | 2141 => []
  | 2176 => []
  | 2219 => []
  | 2220 => []
  | 2221 => []
  | 2222 => []
  | 2256 => []
  | 2257 => []
  | 2265 => []
  | 2285 => []
  | 2286 => []
  | 2287 => []
  | 2288 => []
  | 2290 => []
  | 2291 => []
  | 2318 => []
  | 2319 => []
  | 2320 => []
  | 2349 => []
  | 2350 => []
  | 2352 => []
  | 2353 => []
  | 2355 => []
  | 2385 => []
  | 2387 => []
  | 2389 => []
  | 2390 => []
  | 2422 => []
  | 2425 => []
  | 2429 => []
  | 2430 => []
  | 2431 => []
  | 2432 => []
  | 2452 => []
  | 2453 => []
  | 2454 => []
  | 2455 => []
  | 2456 => []
  | 2504 => []
  | 2505 => []
  | 2506 => []
  | 2508 => []
  | 2510 => []
  | 2511 => []
  | 2560 => []
  | 2592 => []
  | 2593 => []
  | 2594 => []
  | 2595 => []
  | 2596 => []
  | 2597 => []
  | 2598 => []
  | 2599 => []
  | 2603 => []
  | 2638 => []
  | 2639 => []
  | 2640 => []
  | 2754 => []
  | 2755 => []
  | 2756 => []
  | 2757 => []
  | 2758 => []
  | 2759 => []
  | 2760 => []
  | _ => []
def map_23_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19337 : InImage map_23_247 image19337 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19337 : Bundle := named_bundle% "RealMapCertificates/relations/basis19337.json"
theorem reductionProof19337 : EqualModuloRelations reduction19337.relations reduction19337.input reduction19337.output := by lin_cert using reduction19337.terms
theorem substitutionProof19337 : IsMapEvaluation generatorImages reduction19337.relations [2256] reduction19337.output := by lin_cert using reduction19337.terms
def image19338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19338 : InImage map_23_247 image19338 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19338 : Bundle := named_bundle% "RealMapCertificates/relations/basis19338.json"
theorem reductionProof19338 : EqualModuloRelations reduction19338.relations reduction19338.input reduction19338.output := by lin_cert using reduction19338.terms
theorem substitutionProof19338 : IsMapEvaluation generatorImages reduction19338.relations [13,1613] reduction19338.output := by lin_cert using reduction19338.terms
def image19339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19339 : InImage map_23_247 image19339 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19339 : Bundle := named_bundle% "RealMapCertificates/relations/basis19339.json"
theorem reductionProof19339 : EqualModuloRelations reduction19339.relations reduction19339.input reduction19339.output := by lin_cert using reduction19339.terms
theorem substitutionProof19339 : IsMapEvaluation generatorImages reduction19339.relations [1,2176] reduction19339.output := by lin_cert using reduction19339.terms
def image19340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19340 : InImage map_23_247 image19340 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19340 : Bundle := named_bundle% "RealMapCertificates/relations/basis19340.json"
theorem reductionProof19340 : EqualModuloRelations reduction19340.relations reduction19340.input reduction19340.output := by lin_cert using reduction19340.terms
theorem substitutionProof19340 : IsMapEvaluation generatorImages reduction19340.relations [0,2221] reduction19340.output := by lin_cert using reduction19340.terms
def map_23_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19603 : InImage map_23_248 image19603 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19603 : Bundle := named_bundle% "RealMapCertificates/relations/basis19603.json"
theorem reductionProof19603 : EqualModuloRelations reduction19603.relations reduction19603.input reduction19603.output := by lin_cert using reduction19603.terms
theorem substitutionProof19603 : IsMapEvaluation generatorImages reduction19603.relations [13,13,75,373] reduction19603.output := by lin_cert using reduction19603.terms
def image19604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19604 : InImage map_23_248 image19604 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19604 : Bundle := named_bundle% "RealMapCertificates/relations/basis19604.json"
theorem reductionProof19604 : EqualModuloRelations reduction19604.relations reduction19604.input reduction19604.output := by lin_cert using reduction19604.terms
theorem substitutionProof19604 : IsMapEvaluation generatorImages reduction19604.relations [8,8,8,72,324] reduction19604.output := by lin_cert using reduction19604.terms
def image19605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19605 : InImage map_23_248 image19605 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19605 : Bundle := named_bundle% "RealMapCertificates/relations/basis19605.json"
theorem reductionProof19605 : EqualModuloRelations reduction19605.relations reduction19605.input reduction19605.output := by lin_cert using reduction19605.terms
theorem substitutionProof19605 : IsMapEvaluation generatorImages reduction19605.relations [2,2141] reduction19605.output := by lin_cert using reduction19605.terms
def image19606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19606 : InImage map_23_248 image19606 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19606 : Bundle := named_bundle% "RealMapCertificates/relations/basis19606.json"
theorem reductionProof19606 : EqualModuloRelations reduction19606.relations reduction19606.input reduction19606.output := by lin_cert using reduction19606.terms
theorem substitutionProof19606 : IsMapEvaluation generatorImages reduction19606.relations [1,2220] reduction19606.output := by lin_cert using reduction19606.terms
def image19607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19607 : InImage map_23_248 image19607 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19607 : Bundle := named_bundle% "RealMapCertificates/relations/basis19607.json"
theorem reductionProof19607 : EqualModuloRelations reduction19607.relations reduction19607.input reduction19607.output := by lin_cert using reduction19607.terms
theorem substitutionProof19607 : IsMapEvaluation generatorImages reduction19607.relations [1,2219] reduction19607.output := by lin_cert using reduction19607.terms
def map_23_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19907 : InImage map_23_249 image19907 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19907 : Bundle := named_bundle% "RealMapCertificates/relations/basis19907.json"
theorem reductionProof19907 : EqualModuloRelations reduction19907.relations reduction19907.input reduction19907.output := by lin_cert using reduction19907.terms
theorem substitutionProof19907 : IsMapEvaluation generatorImages reduction19907.relations [2319] reduction19907.output := by lin_cert using reduction19907.terms
def image19908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19908 : InImage map_23_249 image19908 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19908 : Bundle := named_bundle% "RealMapCertificates/relations/basis19908.json"
theorem reductionProof19908 : EqualModuloRelations reduction19908.relations reduction19908.input reduction19908.output := by lin_cert using reduction19908.terms
theorem substitutionProof19908 : IsMapEvaluation generatorImages reduction19908.relations [2318] reduction19908.output := by lin_cert using reduction19908.terms
def image19909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19909 : InImage map_23_249 image19909 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19909 : Bundle := named_bundle% "RealMapCertificates/relations/basis19909.json"
theorem reductionProof19909 : EqualModuloRelations reduction19909.relations reduction19909.input reduction19909.output := by lin_cert using reduction19909.terms
theorem substitutionProof19909 : IsMapEvaluation generatorImages reduction19909.relations [13,1644] reduction19909.output := by lin_cert using reduction19909.terms
def image19910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19910 : InImage map_23_249 image19910 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19910 : Bundle := named_bundle% "RealMapCertificates/relations/basis19910.json"
theorem reductionProof19910 : EqualModuloRelations reduction19910.relations reduction19910.input reduction19910.output := by lin_cert using reduction19910.terms
theorem substitutionProof19910 : IsMapEvaluation generatorImages reduction19910.relations [1,2257] reduction19910.output := by lin_cert using reduction19910.terms
def image19911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19911 : InImage map_23_249 image19911 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19911 : Bundle := named_bundle% "RealMapCertificates/relations/basis19911.json"
theorem reductionProof19911 : EqualModuloRelations reduction19911.relations reduction19911.input reduction19911.output := by lin_cert using reduction19911.terms
theorem substitutionProof19911 : IsMapEvaluation generatorImages reduction19911.relations [0,2286] reduction19911.output := by lin_cert using reduction19911.terms
def image19912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19912 : InImage map_23_249 image19912 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19912 : Bundle := named_bundle% "RealMapCertificates/relations/basis19912.json"
theorem reductionProof19912 : EqualModuloRelations reduction19912.relations reduction19912.input reduction19912.output := by lin_cert using reduction19912.terms
theorem substitutionProof19912 : IsMapEvaluation generatorImages reduction19912.relations [0,2285] reduction19912.output := by lin_cert using reduction19912.terms
def map_23_250 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20128 : InImage map_23_250 image20128 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20128 : Bundle := named_bundle% "RealMapCertificates/relations/basis20128.json"
theorem reductionProof20128 : EqualModuloRelations reduction20128.relations reduction20128.input reduction20128.output := by lin_cert using reduction20128.terms
theorem substitutionProof20128 : IsMapEvaluation generatorImages reduction20128.relations [2350] reduction20128.output := by lin_cert using reduction20128.terms
def image20129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20129 : InImage map_23_250 image20129 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20129 : Bundle := named_bundle% "RealMapCertificates/relations/basis20129.json"
theorem reductionProof20129 : EqualModuloRelations reduction20129.relations reduction20129.input reduction20129.output := by lin_cert using reduction20129.terms
theorem substitutionProof20129 : IsMapEvaluation generatorImages reduction20129.relations [2349] reduction20129.output := by lin_cert using reduction20129.terms
def image20130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20130 : InImage map_23_250 image20130 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20130 : Bundle := named_bundle% "RealMapCertificates/relations/basis20130.json"
theorem reductionProof20130 : EqualModuloRelations reduction20130.relations reduction20130.input reduction20130.output := by lin_cert using reduction20130.terms
theorem substitutionProof20130 : IsMapEvaluation generatorImages reduction20130.relations [9,1727] reduction20130.output := by lin_cert using reduction20130.terms
def image20131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20131 : InImage map_23_250 image20131 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20131 : Bundle := named_bundle% "RealMapCertificates/relations/basis20131.json"
theorem reductionProof20131 : EqualModuloRelations reduction20131.relations reduction20131.input reduction20131.output := by lin_cert using reduction20131.terms
theorem substitutionProof20131 : IsMapEvaluation generatorImages reduction20131.relations [1,2287] reduction20131.output := by lin_cert using reduction20131.terms
def image20132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20132 : InImage map_23_250 image20132 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20132 : Bundle := named_bundle% "RealMapCertificates/relations/basis20132.json"
theorem reductionProof20132 : EqualModuloRelations reduction20132.relations reduction20132.input reduction20132.output := by lin_cert using reduction20132.terms
theorem substitutionProof20132 : IsMapEvaluation generatorImages reduction20132.relations [1,2286] reduction20132.output := by lin_cert using reduction20132.terms
def image20133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20133 : InImage map_23_250 image20133 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20133 : Bundle := named_bundle% "RealMapCertificates/relations/basis20133.json"
theorem reductionProof20133 : EqualModuloRelations reduction20133.relations reduction20133.input reduction20133.output := by lin_cert using reduction20133.terms
theorem substitutionProof20133 : IsMapEvaluation generatorImages reduction20133.relations [1,1,2222] reduction20133.output := by lin_cert using reduction20133.terms
def image20134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20134 : InImage map_23_250 image20134 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20134 : Bundle := named_bundle% "RealMapCertificates/relations/basis20134.json"
theorem reductionProof20134 : EqualModuloRelations reduction20134.relations reduction20134.input reduction20134.output := by lin_cert using reduction20134.terms
theorem substitutionProof20134 : IsMapEvaluation generatorImages reduction20134.relations [0,2320] reduction20134.output := by lin_cert using reduction20134.terms
def image20135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20135 : InImage map_23_250 image20135 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20135 : Bundle := named_bundle% "RealMapCertificates/relations/basis20135.json"
theorem reductionProof20135 : EqualModuloRelations reduction20135.relations reduction20135.input reduction20135.output := by lin_cert using reduction20135.terms
theorem substitutionProof20135 : IsMapEvaluation generatorImages reduction20135.relations [0,0,2290] reduction20135.output := by lin_cert using reduction20135.terms
def image20136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20136 : InImage map_23_250 image20136 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20136 : Bundle := named_bundle% "RealMapCertificates/relations/basis20136.json"
theorem reductionProof20136 : EqualModuloRelations reduction20136.relations reduction20136.input reduction20136.output := by lin_cert using reduction20136.terms
theorem substitutionProof20136 : IsMapEvaluation generatorImages reduction20136.relations [0,0,2288] reduction20136.output := by lin_cert using reduction20136.terms
def map_23_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20418 : InImage map_23_251 image20418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20418 : Bundle := named_bundle% "RealMapCertificates/relations/basis20418.json"
theorem reductionProof20418 : EqualModuloRelations reduction20418.relations reduction20418.input reduction20418.output := by lin_cert using reduction20418.terms
theorem substitutionProof20418 : IsMapEvaluation generatorImages reduction20418.relations [2385] reduction20418.output := by lin_cert using reduction20418.terms
def image20419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20419 : InImage map_23_251 image20419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20419 : Bundle := named_bundle% "RealMapCertificates/relations/basis20419.json"
theorem reductionProof20419 : EqualModuloRelations reduction20419.relations reduction20419.input reduction20419.output := by lin_cert using reduction20419.terms
theorem substitutionProof20419 : IsMapEvaluation generatorImages reduction20419.relations [67,965] reduction20419.output := by lin_cert using reduction20419.terms
def image20420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20420 : InImage map_23_251 image20420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20420 : Bundle := named_bundle% "RealMapCertificates/relations/basis20420.json"
theorem reductionProof20420 : EqualModuloRelations reduction20420.relations reduction20420.input reduction20420.output := by lin_cert using reduction20420.terms
theorem substitutionProof20420 : IsMapEvaluation generatorImages reduction20420.relations [8,8,8,79,324] reduction20420.output := by lin_cert using reduction20420.terms
def image20421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20421 : InImage map_23_251 image20421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20421 : Bundle := named_bundle% "RealMapCertificates/relations/basis20421.json"
theorem reductionProof20421 : EqualModuloRelations reduction20421.relations reduction20421.input reduction20421.output := by lin_cert using reduction20421.terms
theorem substitutionProof20421 : IsMapEvaluation generatorImages reduction20421.relations [0,2353] reduction20421.output := by lin_cert using reduction20421.terms
def image20422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20422 : InImage map_23_251 image20422 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20422 : Bundle := named_bundle% "RealMapCertificates/relations/basis20422.json"
theorem reductionProof20422 : EqualModuloRelations reduction20422.relations reduction20422.input reduction20422.output := by lin_cert using reduction20422.terms
theorem substitutionProof20422 : IsMapEvaluation generatorImages reduction20422.relations [0,2352] reduction20422.output := by lin_cert using reduction20422.terms
def image20423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20423 : InImage map_23_251 image20423 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20423 : Bundle := named_bundle% "RealMapCertificates/relations/basis20423.json"
theorem reductionProof20423 : EqualModuloRelations reduction20423.relations reduction20423.input reduction20423.output := by lin_cert using reduction20423.terms
theorem substitutionProof20423 : IsMapEvaluation generatorImages reduction20423.relations [0,0,0,0,260,324] reduction20423.output := by lin_cert using reduction20423.terms
def map_23_252 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20735 : InImage map_23_252 image20735 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20735 : Bundle := named_bundle% "RealMapCertificates/relations/basis20735.json"
theorem reductionProof20735 : EqualModuloRelations reduction20735.relations reduction20735.input reduction20735.output := by lin_cert using reduction20735.terms
theorem substitutionProof20735 : IsMapEvaluation generatorImages reduction20735.relations [3,2141] reduction20735.output := by lin_cert using reduction20735.terms
def image20736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20736 : InImage map_23_252 image20736 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20736 : Bundle := named_bundle% "RealMapCertificates/relations/basis20736.json"
theorem reductionProof20736 : EqualModuloRelations reduction20736.relations reduction20736.input reduction20736.output := by lin_cert using reduction20736.terms
theorem substitutionProof20736 : IsMapEvaluation generatorImages reduction20736.relations [2,2286] reduction20736.output := by lin_cert using reduction20736.terms
def image20737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20737 : InImage map_23_252 image20737 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20737 : Bundle := named_bundle% "RealMapCertificates/relations/basis20737.json"
theorem reductionProof20737 : EqualModuloRelations reduction20737.relations reduction20737.input reduction20737.output := by lin_cert using reduction20737.terms
theorem substitutionProof20737 : IsMapEvaluation generatorImages reduction20737.relations [1,2353] reduction20737.output := by lin_cert using reduction20737.terms
def image20738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20738 : InImage map_23_252 image20738 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20738 : Bundle := named_bundle% "RealMapCertificates/relations/basis20738.json"
theorem reductionProof20738 : EqualModuloRelations reduction20738.relations reduction20738.input reduction20738.output := by lin_cert using reduction20738.terms
theorem substitutionProof20738 : IsMapEvaluation generatorImages reduction20738.relations [1,2352] reduction20738.output := by lin_cert using reduction20738.terms
def image20739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20739 : InImage map_23_252 image20739 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20739 : Bundle := named_bundle% "RealMapCertificates/relations/basis20739.json"
theorem reductionProof20739 : EqualModuloRelations reduction20739.relations reduction20739.input reduction20739.output := by lin_cert using reduction20739.terms
theorem substitutionProof20739 : IsMapEvaluation generatorImages reduction20739.relations [1,1,2288] reduction20739.output := by lin_cert using reduction20739.terms
def image20740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20740 : InImage map_23_252 image20740 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20740 : Bundle := named_bundle% "RealMapCertificates/relations/basis20740.json"
theorem reductionProof20740 : EqualModuloRelations reduction20740.relations reduction20740.input reduction20740.output := by lin_cert using reduction20740.terms
theorem substitutionProof20740 : IsMapEvaluation generatorImages reduction20740.relations [0,2387] reduction20740.output := by lin_cert using reduction20740.terms
def image20741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20741 : InImage map_23_252 image20741 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20741 : Bundle := named_bundle% "RealMapCertificates/relations/basis20741.json"
theorem reductionProof20741 : EqualModuloRelations reduction20741.relations reduction20741.input reduction20741.output := by lin_cert using reduction20741.terms
theorem substitutionProof20741 : IsMapEvaluation generatorImages reduction20741.relations [0,0,2355] reduction20741.output := by lin_cert using reduction20741.terms
def image20742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20742 : InImage map_23_252 image20742 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20742 : Bundle := named_bundle% "RealMapCertificates/relations/basis20742.json"
theorem reductionProof20742 : EqualModuloRelations reduction20742.relations reduction20742.input reduction20742.output := by lin_cert using reduction20742.terms
theorem substitutionProof20742 : IsMapEvaluation generatorImages reduction20742.relations [0,0,0,0,2291] reduction20742.output := by lin_cert using reduction20742.terms
def image20743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20743 : InImage map_23_252 image20743 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20743 : Bundle := named_bundle% "RealMapCertificates/relations/basis20743.json"
theorem reductionProof20743 : EqualModuloRelations reduction20743.relations reduction20743.input reduction20743.output := by lin_cert using reduction20743.terms
theorem substitutionProof20743 : IsMapEvaluation generatorImages reduction20743.relations [0,0,0,0,0,2265] reduction20743.output := by lin_cert using reduction20743.terms
def map_23_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20958 : InImage map_23_253 image20958 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20958 : Bundle := named_bundle% "RealMapCertificates/relations/basis20958.json"
theorem reductionProof20958 : EqualModuloRelations reduction20958.relations reduction20958.input reduction20958.output := by lin_cert using reduction20958.terms
theorem substitutionProof20958 : IsMapEvaluation generatorImages reduction20958.relations [2454] reduction20958.output := by lin_cert using reduction20958.terms
def image20959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20959 : InImage map_23_253 image20959 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20959 : Bundle := named_bundle% "RealMapCertificates/relations/basis20959.json"
theorem reductionProof20959 : EqualModuloRelations reduction20959.relations reduction20959.input reduction20959.output := by lin_cert using reduction20959.terms
theorem substitutionProof20959 : IsMapEvaluation generatorImages reduction20959.relations [2453] reduction20959.output := by lin_cert using reduction20959.terms
def image20960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20960 : InImage map_23_253 image20960 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20960 : Bundle := named_bundle% "RealMapCertificates/relations/basis20960.json"
theorem reductionProof20960 : EqualModuloRelations reduction20960.relations reduction20960.input reduction20960.output := by lin_cert using reduction20960.terms
theorem substitutionProof20960 : IsMapEvaluation generatorImages reduction20960.relations [2452] reduction20960.output := by lin_cert using reduction20960.terms
def image20961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20961 : InImage map_23_253 image20961 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20961 : Bundle := named_bundle% "RealMapCertificates/relations/basis20961.json"
theorem reductionProof20961 : EqualModuloRelations reduction20961.relations reduction20961.input reduction20961.output := by lin_cert using reduction20961.terms
theorem substitutionProof20961 : IsMapEvaluation generatorImages reduction20961.relations [67,1004] reduction20961.output := by lin_cert using reduction20961.terms
def image20962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20962 : InImage map_23_253 image20962 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20962 : Bundle := named_bundle% "RealMapCertificates/relations/basis20962.json"
theorem reductionProof20962 : EqualModuloRelations reduction20962.relations reduction20962.input reduction20962.output := by lin_cert using reduction20962.terms
theorem substitutionProof20962 : IsMapEvaluation generatorImages reduction20962.relations [13,1727] reduction20962.output := by lin_cert using reduction20962.terms
def image20963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20963 : InImage map_23_253 image20963 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20963 : Bundle := named_bundle% "RealMapCertificates/relations/basis20963.json"
theorem reductionProof20963 : EqualModuloRelations reduction20963.relations reduction20963.input reduction20963.output := by lin_cert using reduction20963.terms
theorem substitutionProof20963 : IsMapEvaluation generatorImages reduction20963.relations [0,0,2390] reduction20963.output := by lin_cert using reduction20963.terms
def image20964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20964 : InImage map_23_253 image20964 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20964 : Bundle := named_bundle% "RealMapCertificates/relations/basis20964.json"
theorem reductionProof20964 : EqualModuloRelations reduction20964.relations reduction20964.input reduction20964.output := by lin_cert using reduction20964.terms
theorem substitutionProof20964 : IsMapEvaluation generatorImages reduction20964.relations [0,0,2389] reduction20964.output := by lin_cert using reduction20964.terms
def map_23_254 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21253 : InImage map_23_254 image21253 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21253 : Bundle := named_bundle% "RealMapCertificates/relations/basis21253.json"
theorem reductionProof21253 : EqualModuloRelations reduction21253.relations reduction21253.input reduction21253.output := by lin_cert using reduction21253.terms
theorem substitutionProof21253 : IsMapEvaluation generatorImages reduction21253.relations [2505] reduction21253.output := by lin_cert using reduction21253.terms
def image21254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21254 : InImage map_23_254 image21254 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21254 : Bundle := named_bundle% "RealMapCertificates/relations/basis21254.json"
theorem reductionProof21254 : EqualModuloRelations reduction21254.relations reduction21254.input reduction21254.output := by lin_cert using reduction21254.terms
theorem substitutionProof21254 : IsMapEvaluation generatorImages reduction21254.relations [2504] reduction21254.output := by lin_cert using reduction21254.terms
def image21255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21255 : InImage map_23_254 image21255 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21255 : Bundle := named_bundle% "RealMapCertificates/relations/basis21255.json"
theorem reductionProof21255 : EqualModuloRelations reduction21255.relations reduction21255.input reduction21255.output := by lin_cert using reduction21255.terms
theorem substitutionProof21255 : IsMapEvaluation generatorImages reduction21255.relations [209,533] reduction21255.output := by lin_cert using reduction21255.terms
def image21256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21256 : InImage map_23_254 image21256 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21256 : Bundle := named_bundle% "RealMapCertificates/relations/basis21256.json"
theorem reductionProof21256 : EqualModuloRelations reduction21256.relations reduction21256.input reduction21256.output := by lin_cert using reduction21256.terms
theorem substitutionProof21256 : IsMapEvaluation generatorImages reduction21256.relations [67,1017] reduction21256.output := by lin_cert using reduction21256.terms
def image21257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21257 : InImage map_23_254 image21257 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21257 : Bundle := named_bundle% "RealMapCertificates/relations/basis21257.json"
theorem reductionProof21257 : EqualModuloRelations reduction21257.relations reduction21257.input reduction21257.output := by lin_cert using reduction21257.terms
theorem substitutionProof21257 : IsMapEvaluation generatorImages reduction21257.relations [13,13,76,450] reduction21257.output := by lin_cert using reduction21257.terms
def image21258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21258 : InImage map_23_254 image21258 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21258 : Bundle := named_bundle% "RealMapCertificates/relations/basis21258.json"
theorem reductionProof21258 : EqualModuloRelations reduction21258.relations reduction21258.input reduction21258.output := by lin_cert using reduction21258.terms
theorem substitutionProof21258 : IsMapEvaluation generatorImages reduction21258.relations [8,8,8,89,324] reduction21258.output := by lin_cert using reduction21258.terms
def image21259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21259 : InImage map_23_254 image21259 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21259 : Bundle := named_bundle% "RealMapCertificates/relations/basis21259.json"
theorem reductionProof21259 : EqualModuloRelations reduction21259.relations reduction21259.input reduction21259.output := by lin_cert using reduction21259.terms
theorem substitutionProof21259 : IsMapEvaluation generatorImages reduction21259.relations [1,2422] reduction21259.output := by lin_cert using reduction21259.terms
def image21260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21260 : InImage map_23_254 image21260 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21260 : Bundle := named_bundle% "RealMapCertificates/relations/basis21260.json"
theorem reductionProof21260 : EqualModuloRelations reduction21260.relations reduction21260.input reduction21260.output := by lin_cert using reduction21260.terms
theorem substitutionProof21260 : IsMapEvaluation generatorImages reduction21260.relations [0,2456] reduction21260.output := by lin_cert using reduction21260.terms
def image21261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21261 : InImage map_23_254 image21261 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21261 : Bundle := named_bundle% "RealMapCertificates/relations/basis21261.json"
theorem reductionProof21261 : EqualModuloRelations reduction21261.relations reduction21261.input reduction21261.output := by lin_cert using reduction21261.terms
theorem substitutionProof21261 : IsMapEvaluation generatorImages reduction21261.relations [0,2455] reduction21261.output := by lin_cert using reduction21261.terms
def map_23_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21609 : InImage map_23_255 image21609 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21609 : Bundle := named_bundle% "RealMapCertificates/relations/basis21609.json"
theorem reductionProof21609 : EqualModuloRelations reduction21609.relations reduction21609.input reduction21609.output := by lin_cert using reduction21609.terms
theorem substitutionProof21609 : IsMapEvaluation generatorImages reduction21609.relations [64,1057] reduction21609.output := by lin_cert using reduction21609.terms
def image21610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21610 : InImage map_23_255 image21610 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21610 : Bundle := named_bundle% "RealMapCertificates/relations/basis21610.json"
theorem reductionProof21610 : EqualModuloRelations reduction21610.relations reduction21610.input reduction21610.output := by lin_cert using reduction21610.terms
theorem substitutionProof21610 : IsMapEvaluation generatorImages reduction21610.relations [13,190,331] reduction21610.output := by lin_cert using reduction21610.terms
def image21611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21611 : InImage map_23_255 image21611 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21611 : Bundle := named_bundle% "RealMapCertificates/relations/basis21611.json"
theorem reductionProof21611 : EqualModuloRelations reduction21611.relations reduction21611.input reduction21611.output := by lin_cert using reduction21611.terms
theorem substitutionProof21611 : IsMapEvaluation generatorImages reduction21611.relations [0,2508] reduction21611.output := by lin_cert using reduction21611.terms
def image21612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21612 : InImage map_23_255 image21612 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21612 : Bundle := named_bundle% "RealMapCertificates/relations/basis21612.json"
theorem reductionProof21612 : EqualModuloRelations reduction21612.relations reduction21612.input reduction21612.output := by lin_cert using reduction21612.terms
theorem substitutionProof21612 : IsMapEvaluation generatorImages reduction21612.relations [0,2506] reduction21612.output := by lin_cert using reduction21612.terms
def image21613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21613 : InImage map_23_255 image21613 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21613 : Bundle := named_bundle% "RealMapCertificates/relations/basis21613.json"
theorem reductionProof21613 : EqualModuloRelations reduction21613.relations reduction21613.input reduction21613.output := by lin_cert using reduction21613.terms
theorem substitutionProof21613 : IsMapEvaluation generatorImages reduction21613.relations [0,67,1020] reduction21613.output := by lin_cert using reduction21613.terms
def image21614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21614 : InImage map_23_255 image21614 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21614 : Bundle := named_bundle% "RealMapCertificates/relations/basis21614.json"
theorem reductionProof21614 : EqualModuloRelations reduction21614.relations reduction21614.input reduction21614.output := by lin_cert using reduction21614.terms
theorem substitutionProof21614 : IsMapEvaluation generatorImages reduction21614.relations [0,0,0,2425] reduction21614.output := by lin_cert using reduction21614.terms
def map_23_256 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image21855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21855 : InImage map_23_256 image21855 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction21855 : Bundle := named_bundle% "RealMapCertificates/relations/basis21855.json"
theorem reductionProof21855 : EqualModuloRelations reduction21855.relations reduction21855.input reduction21855.output := by lin_cert using reduction21855.terms
theorem substitutionProof21855 : IsMapEvaluation generatorImages reduction21855.relations [2596] reduction21855.output := by lin_cert using reduction21855.terms
def image21856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21856 : InImage map_23_256 image21856 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction21856 : Bundle := named_bundle% "RealMapCertificates/relations/basis21856.json"
theorem reductionProof21856 : EqualModuloRelations reduction21856.relations reduction21856.input reduction21856.output := by lin_cert using reduction21856.terms
theorem substitutionProof21856 : IsMapEvaluation generatorImages reduction21856.relations [2595] reduction21856.output := by lin_cert using reduction21856.terms
def image21857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21857 : InImage map_23_256 image21857 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction21857 : Bundle := named_bundle% "RealMapCertificates/relations/basis21857.json"
theorem reductionProof21857 : EqualModuloRelations reduction21857.relations reduction21857.input reduction21857.output := by lin_cert using reduction21857.terms
theorem substitutionProof21857 : IsMapEvaluation generatorImages reduction21857.relations [2594] reduction21857.output := by lin_cert using reduction21857.terms
def image21858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21858 : InImage map_23_256 image21858 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction21858 : Bundle := named_bundle% "RealMapCertificates/relations/basis21858.json"
theorem reductionProof21858 : EqualModuloRelations reduction21858.relations reduction21858.input reduction21858.output := by lin_cert using reduction21858.terms
theorem substitutionProof21858 : IsMapEvaluation generatorImages reduction21858.relations [2593] reduction21858.output := by lin_cert using reduction21858.terms
def image21859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21859 : InImage map_23_256 image21859 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction21859 : Bundle := named_bundle% "RealMapCertificates/relations/basis21859.json"
theorem reductionProof21859 : EqualModuloRelations reduction21859.relations reduction21859.input reduction21859.output := by lin_cert using reduction21859.terms
theorem substitutionProof21859 : IsMapEvaluation generatorImages reduction21859.relations [2592] reduction21859.output := by lin_cert using reduction21859.terms
def image21860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21860 : InImage map_23_256 image21860 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction21860 : Bundle := named_bundle% "RealMapCertificates/relations/basis21860.json"
theorem reductionProof21860 : EqualModuloRelations reduction21860.relations reduction21860.input reduction21860.output := by lin_cert using reduction21860.terms
theorem substitutionProof21860 : IsMapEvaluation generatorImages reduction21860.relations [75,1002] reduction21860.output := by lin_cert using reduction21860.terms
def image21861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21861 : InImage map_23_256 image21861 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction21861 : Bundle := named_bundle% "RealMapCertificates/relations/basis21861.json"
theorem reductionProof21861 : EqualModuloRelations reduction21861.relations reduction21861.input reduction21861.output := by lin_cert using reduction21861.terms
theorem substitutionProof21861 : IsMapEvaluation generatorImages reduction21861.relations [13,1790] reduction21861.output := by lin_cert using reduction21861.terms
def image21862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21862 : InImage map_23_256 image21862 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction21862 : Bundle := named_bundle% "RealMapCertificates/relations/basis21862.json"
theorem reductionProof21862 : EqualModuloRelations reduction21862.relations reduction21862.input reduction21862.output := by lin_cert using reduction21862.terms
theorem substitutionProof21862 : IsMapEvaluation generatorImages reduction21862.relations [3,2285] reduction21862.output := by lin_cert using reduction21862.terms
def image21863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21863 : InImage map_23_256 image21863 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction21863 : Bundle := named_bundle% "RealMapCertificates/relations/basis21863.json"
theorem reductionProof21863 : EqualModuloRelations reduction21863.relations reduction21863.input reduction21863.output := by lin_cert using reduction21863.terms
theorem substitutionProof21863 : IsMapEvaluation generatorImages reduction21863.relations [1,2506] reduction21863.output := by lin_cert using reduction21863.terms
def image21864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21864 : InImage map_23_256 image21864 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction21864 : Bundle := named_bundle% "RealMapCertificates/relations/basis21864.json"
theorem reductionProof21864 : EqualModuloRelations reduction21864.relations reduction21864.input reduction21864.output := by lin_cert using reduction21864.terms
theorem substitutionProof21864 : IsMapEvaluation generatorImages reduction21864.relations [0,2560] reduction21864.output := by lin_cert using reduction21864.terms
def image21865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21865 : InImage map_23_256 image21865 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction21865 : Bundle := named_bundle% "RealMapCertificates/relations/basis21865.json"
theorem reductionProof21865 : EqualModuloRelations reduction21865.relations reduction21865.input reduction21865.output := by lin_cert using reduction21865.terms
theorem substitutionProof21865 : IsMapEvaluation generatorImages reduction21865.relations [0,0,2511] reduction21865.output := by lin_cert using reduction21865.terms
def image21866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21866 : InImage map_23_256 image21866 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction21866 : Bundle := named_bundle% "RealMapCertificates/relations/basis21866.json"
theorem reductionProof21866 : EqualModuloRelations reduction21866.relations reduction21866.input reduction21866.output := by lin_cert using reduction21866.terms
theorem substitutionProof21866 : IsMapEvaluation generatorImages reduction21866.relations [0,0,2510] reduction21866.output := by lin_cert using reduction21866.terms
def map_23_257 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22203 : InImage map_23_257 image22203 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22203 : Bundle := named_bundle% "RealMapCertificates/relations/basis22203.json"
theorem reductionProof22203 : EqualModuloRelations reduction22203.relations reduction22203.input reduction22203.output := by lin_cert using reduction22203.terms
theorem substitutionProof22203 : IsMapEvaluation generatorImages reduction22203.relations [2640] reduction22203.output := by lin_cert using reduction22203.terms
def image22204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22204 : InImage map_23_257 image22204 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22204 : Bundle := named_bundle% "RealMapCertificates/relations/basis22204.json"
theorem reductionProof22204 : EqualModuloRelations reduction22204.relations reduction22204.input reduction22204.output := by lin_cert using reduction22204.terms
theorem substitutionProof22204 : IsMapEvaluation generatorImages reduction22204.relations [2639] reduction22204.output := by lin_cert using reduction22204.terms
def image22205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22205 : InImage map_23_257 image22205 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22205 : Bundle := named_bundle% "RealMapCertificates/relations/basis22205.json"
theorem reductionProof22205 : EqualModuloRelations reduction22205.relations reduction22205.input reduction22205.output := by lin_cert using reduction22205.terms
theorem substitutionProof22205 : IsMapEvaluation generatorImages reduction22205.relations [2638] reduction22205.output := by lin_cert using reduction22205.terms
def image22206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22206 : InImage map_23_257 image22206 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22206 : Bundle := named_bundle% "RealMapCertificates/relations/basis22206.json"
theorem reductionProof22206 : EqualModuloRelations reduction22206.relations reduction22206.input reduction22206.output := by lin_cert using reduction22206.terms
theorem substitutionProof22206 : IsMapEvaluation generatorImages reduction22206.relations [8,8,8,101,324] reduction22206.output := by lin_cert using reduction22206.terms
def image22207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22207 : InImage map_23_257 image22207 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22207 : Bundle := named_bundle% "RealMapCertificates/relations/basis22207.json"
theorem reductionProof22207 : EqualModuloRelations reduction22207.relations reduction22207.input reduction22207.output := by lin_cert using reduction22207.terms
theorem substitutionProof22207 : IsMapEvaluation generatorImages reduction22207.relations [1,2560] reduction22207.output := by lin_cert using reduction22207.terms
def image22208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22208 : InImage map_23_257 image22208 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22208 : Bundle := named_bundle% "RealMapCertificates/relations/basis22208.json"
theorem reductionProof22208 : EqualModuloRelations reduction22208.relations reduction22208.input reduction22208.output := by lin_cert using reduction22208.terms
theorem substitutionProof22208 : IsMapEvaluation generatorImages reduction22208.relations [0,2599] reduction22208.output := by lin_cert using reduction22208.terms
def image22209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22209 : InImage map_23_257 image22209 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22209 : Bundle := named_bundle% "RealMapCertificates/relations/basis22209.json"
theorem reductionProof22209 : EqualModuloRelations reduction22209.relations reduction22209.input reduction22209.output := by lin_cert using reduction22209.terms
theorem substitutionProof22209 : IsMapEvaluation generatorImages reduction22209.relations [0,2598] reduction22209.output := by lin_cert using reduction22209.terms
def image22210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22210 : InImage map_23_257 image22210 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22210 : Bundle := named_bundle% "RealMapCertificates/relations/basis22210.json"
theorem reductionProof22210 : EqualModuloRelations reduction22210.relations reduction22210.input reduction22210.output := by lin_cert using reduction22210.terms
theorem substitutionProof22210 : IsMapEvaluation generatorImages reduction22210.relations [0,0,0,299,324] reduction22210.output := by lin_cert using reduction22210.terms
def image22211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22211 : InImage map_23_257 image22211 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22211 : Bundle := named_bundle% "RealMapCertificates/relations/basis22211.json"
theorem reductionProof22211 : EqualModuloRelations reduction22211.relations reduction22211.input reduction22211.output := by lin_cert using reduction22211.terms
theorem substitutionProof22211 : IsMapEvaluation generatorImages reduction22211.relations [0,0,0,0,0,2429] reduction22211.output := by lin_cert using reduction22211.terms
def map_23_258 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22571 : InImage map_23_258 image22571 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22571 : Bundle := named_bundle% "RealMapCertificates/relations/basis22571.json"
theorem reductionProof22571 : EqualModuloRelations reduction22571.relations reduction22571.input reduction22571.output := by lin_cert using reduction22571.terms
theorem substitutionProof22571 : IsMapEvaluation generatorImages reduction22571.relations [72,1057] reduction22571.output := by lin_cert using reduction22571.terms
def image22572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22572 : InImage map_23_258 image22572 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22572 : Bundle := named_bundle% "RealMapCertificates/relations/basis22572.json"
theorem reductionProof22572 : EqualModuloRelations reduction22572.relations reduction22572.input reduction22572.output := by lin_cert using reduction22572.terms
theorem substitutionProof22572 : IsMapEvaluation generatorImages reduction22572.relations [1,2597] reduction22572.output := by lin_cert using reduction22572.terms
def image22573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22573 : InImage map_23_258 image22573 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22573 : Bundle := named_bundle% "RealMapCertificates/relations/basis22573.json"
theorem reductionProof22573 : EqualModuloRelations reduction22573.relations reduction22573.input reduction22573.output := by lin_cert using reduction22573.terms
theorem substitutionProof22573 : IsMapEvaluation generatorImages reduction22573.relations [0,0,2603] reduction22573.output := by lin_cert using reduction22573.terms
def image22574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22574 : InImage map_23_258 image22574 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22574 : Bundle := named_bundle% "RealMapCertificates/relations/basis22574.json"
theorem reductionProof22574 : EqualModuloRelations reduction22574.relations reduction22574.input reduction22574.output := by lin_cert using reduction22574.terms
theorem substitutionProof22574 : IsMapEvaluation generatorImages reduction22574.relations [0,0,0,0,0,0,2431] reduction22574.output := by lin_cert using reduction22574.terms
def image22575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22575 : InImage map_23_258 image22575 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22575 : Bundle := named_bundle% "RealMapCertificates/relations/basis22575.json"
theorem reductionProof22575 : EqualModuloRelations reduction22575.relations reduction22575.input reduction22575.output := by lin_cert using reduction22575.terms
theorem substitutionProof22575 : IsMapEvaluation generatorImages reduction22575.relations [0,0,0,0,0,0,2430] reduction22575.output := by lin_cert using reduction22575.terms
def map_23_259 : Matrix 0 14 := fun i j => ([] : List Bool)[i.val*14+j.val]!
def image22868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22868 : InImage map_23_259 image22868 := by lin_cert using (fun j : Fin 14 => decide (j.val = 0))
def reduction22868 : Bundle := named_bundle% "RealMapCertificates/relations/basis22868.json"
theorem reductionProof22868 : EqualModuloRelations reduction22868.relations reduction22868.input reduction22868.output := by lin_cert using reduction22868.terms
theorem substitutionProof22868 : IsMapEvaluation generatorImages reduction22868.relations [2760] reduction22868.output := by lin_cert using reduction22868.terms
def image22869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22869 : InImage map_23_259 image22869 := by lin_cert using (fun j : Fin 14 => decide (j.val = 1))
def reduction22869 : Bundle := named_bundle% "RealMapCertificates/relations/basis22869.json"
theorem reductionProof22869 : EqualModuloRelations reduction22869.relations reduction22869.input reduction22869.output := by lin_cert using reduction22869.terms
theorem substitutionProof22869 : IsMapEvaluation generatorImages reduction22869.relations [2759] reduction22869.output := by lin_cert using reduction22869.terms
def image22870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22870 : InImage map_23_259 image22870 := by lin_cert using (fun j : Fin 14 => decide (j.val = 2))
def reduction22870 : Bundle := named_bundle% "RealMapCertificates/relations/basis22870.json"
theorem reductionProof22870 : EqualModuloRelations reduction22870.relations reduction22870.input reduction22870.output := by lin_cert using reduction22870.terms
theorem substitutionProof22870 : IsMapEvaluation generatorImages reduction22870.relations [2758] reduction22870.output := by lin_cert using reduction22870.terms
def image22871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22871 : InImage map_23_259 image22871 := by lin_cert using (fun j : Fin 14 => decide (j.val = 3))
def reduction22871 : Bundle := named_bundle% "RealMapCertificates/relations/basis22871.json"
theorem reductionProof22871 : EqualModuloRelations reduction22871.relations reduction22871.input reduction22871.output := by lin_cert using reduction22871.terms
theorem substitutionProof22871 : IsMapEvaluation generatorImages reduction22871.relations [2757] reduction22871.output := by lin_cert using reduction22871.terms
def image22872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22872 : InImage map_23_259 image22872 := by lin_cert using (fun j : Fin 14 => decide (j.val = 4))
def reduction22872 : Bundle := named_bundle% "RealMapCertificates/relations/basis22872.json"
theorem reductionProof22872 : EqualModuloRelations reduction22872.relations reduction22872.input reduction22872.output := by lin_cert using reduction22872.terms
theorem substitutionProof22872 : IsMapEvaluation generatorImages reduction22872.relations [2756] reduction22872.output := by lin_cert using reduction22872.terms
def image22873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22873 : InImage map_23_259 image22873 := by lin_cert using (fun j : Fin 14 => decide (j.val = 5))
def reduction22873 : Bundle := named_bundle% "RealMapCertificates/relations/basis22873.json"
theorem reductionProof22873 : EqualModuloRelations reduction22873.relations reduction22873.input reduction22873.output := by lin_cert using reduction22873.terms
theorem substitutionProof22873 : IsMapEvaluation generatorImages reduction22873.relations [2755] reduction22873.output := by lin_cert using reduction22873.terms
def image22874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22874 : InImage map_23_259 image22874 := by lin_cert using (fun j : Fin 14 => decide (j.val = 6))
def reduction22874 : Bundle := named_bundle% "RealMapCertificates/relations/basis22874.json"
theorem reductionProof22874 : EqualModuloRelations reduction22874.relations reduction22874.input reduction22874.output := by lin_cert using reduction22874.terms
theorem substitutionProof22874 : IsMapEvaluation generatorImages reduction22874.relations [2754] reduction22874.output := by lin_cert using reduction22874.terms
def image22875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22875 : InImage map_23_259 image22875 := by lin_cert using (fun j : Fin 14 => decide (j.val = 7))
def reduction22875 : Bundle := named_bundle% "RealMapCertificates/relations/basis22875.json"
theorem reductionProof22875 : EqualModuloRelations reduction22875.relations reduction22875.input reduction22875.output := by lin_cert using reduction22875.terms
theorem substitutionProof22875 : IsMapEvaluation generatorImages reduction22875.relations [190,619] reduction22875.output := by lin_cert using reduction22875.terms
def image22876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22876 : InImage map_23_259 image22876 := by lin_cert using (fun j : Fin 14 => decide (j.val = 8))
def reduction22876 : Bundle := named_bundle% "RealMapCertificates/relations/basis22876.json"
theorem reductionProof22876 : EqualModuloRelations reduction22876.relations reduction22876.input reduction22876.output := by lin_cert using reduction22876.terms
theorem substitutionProof22876 : IsMapEvaluation generatorImages reduction22876.relations [13,188,376] reduction22876.output := by lin_cert using reduction22876.terms
def image22877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22877 : InImage map_23_259 image22877 := by lin_cert using (fun j : Fin 14 => decide (j.val = 9))
def reduction22877 : Bundle := named_bundle% "RealMapCertificates/relations/basis22877.json"
theorem reductionProof22877 : EqualModuloRelations reduction22877.relations reduction22877.input reduction22877.output := by lin_cert using reduction22877.terms
theorem substitutionProof22877 : IsMapEvaluation generatorImages reduction22877.relations [3,2387] reduction22877.output := by lin_cert using reduction22877.terms
def image22878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22878 : InImage map_23_259 image22878 := by lin_cert using (fun j : Fin 14 => decide (j.val = 10))
def reduction22878 : Bundle := named_bundle% "RealMapCertificates/relations/basis22878.json"
theorem reductionProof22878 : EqualModuloRelations reduction22878.relations reduction22878.input reduction22878.output := by lin_cert using reduction22878.terms
theorem substitutionProof22878 : IsMapEvaluation generatorImages reduction22878.relations [2,2560] reduction22878.output := by lin_cert using reduction22878.terms
def image22879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22879 : InImage map_23_259 image22879 := by lin_cert using (fun j : Fin 14 => decide (j.val = 11))
def reduction22879 : Bundle := named_bundle% "RealMapCertificates/relations/basis22879.json"
theorem reductionProof22879 : EqualModuloRelations reduction22879.relations reduction22879.input reduction22879.output := by lin_cert using reduction22879.terms
theorem substitutionProof22879 : IsMapEvaluation generatorImages reduction22879.relations [0,67,1088] reduction22879.output := by lin_cert using reduction22879.terms
def image22880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22880 : InImage map_23_259 image22880 := by lin_cert using (fun j : Fin 14 => decide (j.val = 12))
def reduction22880 : Bundle := named_bundle% "RealMapCertificates/relations/basis22880.json"
theorem reductionProof22880 : EqualModuloRelations reduction22880.relations reduction22880.input reduction22880.output := by lin_cert using reduction22880.terms
theorem substitutionProof22880 : IsMapEvaluation generatorImages reduction22880.relations [0,3,2355] reduction22880.output := by lin_cert using reduction22880.terms
def image22881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22881 : InImage map_23_259 image22881 := by lin_cert using (fun j : Fin 14 => decide (j.val = 13))
def reduction22881 : Bundle := named_bundle% "RealMapCertificates/relations/basis22881.json"
theorem reductionProof22881 : EqualModuloRelations reduction22881.relations reduction22881.input reduction22881.output := by lin_cert using reduction22881.terms
theorem substitutionProof22881 : IsMapEvaluation generatorImages reduction22881.relations [0,0,0,0,0,0,0,2432] reduction22881.output := by lin_cert using reduction22881.terms
end RealMapCertificates
