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
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 87 => [[3,4,4,4,4,4]]
  | 89 => []
  | 101 => []
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 113 => [[0,8,12]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 184 => []
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 291 => []
  | 299 => []
  | 300 => []
  | 317 => []
  | 324 => []
  | 347 => []
  | 380 => []
  | 1004 => []
  | 2176 => []
  | 2433 => []
  | 2455 => []
  | 2456 => []
  | 2478 => []
  | 2480 => []
  | 2642 => []
  | 2647 => []
  | 2763 => []
  | 2813 => []
  | 2814 => []
  | 2815 => []
  | 2816 => []
  | 2817 => []
  | 2819 => []
  | 2873 => []
  | 2874 => []
  | _ => []
def map_23_260 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image23253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23253 : InImage map_23_260 image23253 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction23253 : Bundle := named_bundle% "RealMapCertificates/relations/basis23253.json"
theorem reductionProof23253 : EqualModuloRelations reduction23253.relations reduction23253.input reduction23253.output := by lin_cert using reduction23253.terms
theorem substitutionProof23253 : IsMapEvaluation generatorImages reduction23253.relations [2817] reduction23253.output := by lin_cert using reduction23253.terms
def image23254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23254 : InImage map_23_260 image23254 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction23254 : Bundle := named_bundle% "RealMapCertificates/relations/basis23254.json"
theorem reductionProof23254 : EqualModuloRelations reduction23254.relations reduction23254.input reduction23254.output := by lin_cert using reduction23254.terms
theorem substitutionProof23254 : IsMapEvaluation generatorImages reduction23254.relations [2816] reduction23254.output := by lin_cert using reduction23254.terms
def image23255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23255 : InImage map_23_260 image23255 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction23255 : Bundle := named_bundle% "RealMapCertificates/relations/basis23255.json"
theorem reductionProof23255 : EqualModuloRelations reduction23255.relations reduction23255.input reduction23255.output := by lin_cert using reduction23255.terms
theorem substitutionProof23255 : IsMapEvaluation generatorImages reduction23255.relations [2815] reduction23255.output := by lin_cert using reduction23255.terms
def image23256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23256 : InImage map_23_260 image23256 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction23256 : Bundle := named_bundle% "RealMapCertificates/relations/basis23256.json"
theorem reductionProof23256 : EqualModuloRelations reduction23256.relations reduction23256.input reduction23256.output := by lin_cert using reduction23256.terms
theorem substitutionProof23256 : IsMapEvaluation generatorImages reduction23256.relations [2814] reduction23256.output := by lin_cert using reduction23256.terms
def image23257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23257 : InImage map_23_260 image23257 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction23257 : Bundle := named_bundle% "RealMapCertificates/relations/basis23257.json"
theorem reductionProof23257 : EqualModuloRelations reduction23257.relations reduction23257.input reduction23257.output := by lin_cert using reduction23257.terms
theorem substitutionProof23257 : IsMapEvaluation generatorImages reduction23257.relations [2813] reduction23257.output := by lin_cert using reduction23257.terms
def image23258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23258 : InImage map_23_260 image23258 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction23258 : Bundle := named_bundle% "RealMapCertificates/relations/basis23258.json"
theorem reductionProof23258 : EqualModuloRelations reduction23258.relations reduction23258.input reduction23258.output := by lin_cert using reduction23258.terms
theorem substitutionProof23258 : IsMapEvaluation generatorImages reduction23258.relations [8,8,9,101,324] reduction23258.output := by lin_cert using reduction23258.terms
def image23259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23259 : InImage map_23_260 image23259 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction23259 : Bundle := named_bundle% "RealMapCertificates/relations/basis23259.json"
theorem reductionProof23259 : EqualModuloRelations reduction23259.relations reduction23259.input reduction23259.output := by lin_cert using reduction23259.terms
theorem substitutionProof23259 : IsMapEvaluation generatorImages reduction23259.relations [2,75,1004] reduction23259.output := by lin_cert using reduction23259.terms
def image23260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23260 : InImage map_23_260 image23260 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction23260 : Bundle := named_bundle% "RealMapCertificates/relations/basis23260.json"
theorem reductionProof23260 : EqualModuloRelations reduction23260.relations reduction23260.input reduction23260.output := by lin_cert using reduction23260.terms
theorem substitutionProof23260 : IsMapEvaluation generatorImages reduction23260.relations [0,0,0,2647] reduction23260.output := by lin_cert using reduction23260.terms
def image23261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23261 : InImage map_23_260 image23261 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction23261 : Bundle := named_bundle% "RealMapCertificates/relations/basis23261.json"
theorem reductionProof23261 : EqualModuloRelations reduction23261.relations reduction23261.input reduction23261.output := by lin_cert using reduction23261.terms
theorem substitutionProof23261 : IsMapEvaluation generatorImages reduction23261.relations [0,0,0,0,0,0,0,2478] reduction23261.output := by lin_cert using reduction23261.terms
def image23262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23262 : InImage map_23_260 image23262 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction23262 : Bundle := named_bundle% "RealMapCertificates/relations/basis23262.json"
theorem reductionProof23262 : EqualModuloRelations reduction23262.relations reduction23262.input reduction23262.output := by lin_cert using reduction23262.terms
theorem substitutionProof23262 : IsMapEvaluation generatorImages reduction23262.relations [0,0,0,0,0,0,0,0,2433] reduction23262.output := by lin_cert using reduction23262.terms
def map_23_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23692 : InImage map_23_261 image23692 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23692 : Bundle := named_bundle% "RealMapCertificates/relations/basis23692.json"
theorem reductionProof23692 : EqualModuloRelations reduction23692.relations reduction23692.input reduction23692.output := by lin_cert using reduction23692.terms
theorem substitutionProof23692 : IsMapEvaluation generatorImages reduction23692.relations [2874] reduction23692.output := by lin_cert using reduction23692.terms
def image23693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23693 : InImage map_23_261 image23693 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23693 : Bundle := named_bundle% "RealMapCertificates/relations/basis23693.json"
theorem reductionProof23693 : EqualModuloRelations reduction23693.relations reduction23693.input reduction23693.output := by lin_cert using reduction23693.terms
theorem substitutionProof23693 : IsMapEvaluation generatorImages reduction23693.relations [2873] reduction23693.output := by lin_cert using reduction23693.terms
def image23694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23694 : InImage map_23_261 image23694 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23694 : Bundle := named_bundle% "RealMapCertificates/relations/basis23694.json"
theorem reductionProof23694 : EqualModuloRelations reduction23694.relations reduction23694.input reduction23694.output := by lin_cert using reduction23694.terms
theorem substitutionProof23694 : IsMapEvaluation generatorImages reduction23694.relations [7,2176] reduction23694.output := by lin_cert using reduction23694.terms
def image23695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23695 : InImage map_23_261 image23695 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23695 : Bundle := named_bundle% "RealMapCertificates/relations/basis23695.json"
theorem reductionProof23695 : EqualModuloRelations reduction23695.relations reduction23695.input reduction23695.output := by lin_cert using reduction23695.terms
theorem substitutionProof23695 : IsMapEvaluation generatorImages reduction23695.relations [3,2456] reduction23695.output := by lin_cert using reduction23695.terms
def image23696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23696 : InImage map_23_261 image23696 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23696 : Bundle := named_bundle% "RealMapCertificates/relations/basis23696.json"
theorem reductionProof23696 : EqualModuloRelations reduction23696.relations reduction23696.input reduction23696.output := by lin_cert using reduction23696.terms
theorem substitutionProof23696 : IsMapEvaluation generatorImages reduction23696.relations [3,2455] reduction23696.output := by lin_cert using reduction23696.terms
def image23697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23697 : InImage map_23_261 image23697 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23697 : Bundle := named_bundle% "RealMapCertificates/relations/basis23697.json"
theorem reductionProof23697 : EqualModuloRelations reduction23697.relations reduction23697.input reduction23697.output := by lin_cert using reduction23697.terms
theorem substitutionProof23697 : IsMapEvaluation generatorImages reduction23697.relations [1,1,2642] reduction23697.output := by lin_cert using reduction23697.terms
def image23698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23698 : InImage map_23_261 image23698 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23698 : Bundle := named_bundle% "RealMapCertificates/relations/basis23698.json"
theorem reductionProof23698 : EqualModuloRelations reduction23698.relations reduction23698.input reduction23698.output := by lin_cert using reduction23698.terms
theorem substitutionProof23698 : IsMapEvaluation generatorImages reduction23698.relations [0,2819] reduction23698.output := by lin_cert using reduction23698.terms
def image23699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23699 : InImage map_23_261 image23699 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23699 : Bundle := named_bundle% "RealMapCertificates/relations/basis23699.json"
theorem reductionProof23699 : EqualModuloRelations reduction23699.relations reduction23699.input reduction23699.output := by lin_cert using reduction23699.terms
theorem substitutionProof23699 : IsMapEvaluation generatorImages reduction23699.relations [0,0,2763] reduction23699.output := by lin_cert using reduction23699.terms
def image23700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23700 : InImage map_23_261 image23700 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23700 : Bundle := named_bundle% "RealMapCertificates/relations/basis23700.json"
theorem reductionProof23700 : EqualModuloRelations reduction23700.relations reduction23700.input reduction23700.output := by lin_cert using reduction23700.terms
theorem substitutionProof23700 : IsMapEvaluation generatorImages reduction23700.relations [0,0,0,0,0,0,0,0,2480] reduction23700.output := by lin_cert using reduction23700.terms
def map_24_24 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image70 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation70 : InImage map_24_24 image70 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction70 : Bundle := named_bundle% "RealMapCertificates/relations/basis70.json"
theorem reductionProof70 : EqualModuloRelations reduction70.relations reduction70.input reduction70.output := by lin_cert using reduction70.terms
theorem substitutionProof70 : IsMapEvaluation generatorImages reduction70.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction70.output := by lin_cert using reduction70.terms
def map_24_71 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation518 : InImage map_24_71 image518 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction518 : Bundle := named_bundle% "RealMapCertificates/relations/basis518.json"
theorem reductionProof518 : EqualModuloRelations reduction518.relations reduction518.input reduction518.output := by lin_cert using reduction518.terms
theorem substitutionProof518 : IsMapEvaluation generatorImages reduction518.relations [0,0,0,0,0,0,0,0,0,0,0,59] reduction518.output := by lin_cert using reduction518.terms
def map_24_73 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image565 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation565 : InImage map_24_73 image565 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction565 : Bundle := named_bundle% "RealMapCertificates/relations/basis565.json"
theorem reductionProof565 : EqualModuloRelations reduction565.relations reduction565.input reduction565.output := by lin_cert using reduction565.terms
theorem substitutionProof565 : IsMapEvaluation generatorImages reduction565.relations [1,87] reduction565.output := by lin_cert using reduction565.terms
def map_24_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image668 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation668 : InImage map_24_78 image668 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction668 : Bundle := named_bundle% "RealMapCertificates/relations/basis668.json"
theorem reductionProof668 : EqualModuloRelations reduction668.relations reduction668.input reduction668.output := by lin_cert using reduction668.terms
theorem substitutionProof668 : IsMapEvaluation generatorImages reduction668.relations [110] reduction668.output := by lin_cert using reduction668.terms
def map_24_79 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image695 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation695 : InImage map_24_79 image695 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction695 : Bundle := named_bundle% "RealMapCertificates/relations/basis695.json"
theorem reductionProof695 : EqualModuloRelations reduction695.relations reduction695.input reduction695.output := by lin_cert using reduction695.terms
theorem substitutionProof695 : IsMapEvaluation generatorImages reduction695.relations [0,111] reduction695.output := by lin_cert using reduction695.terms
def map_24_81 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image736 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation736 : InImage map_24_81 image736 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction736 : Bundle := named_bundle% "RealMapCertificates/relations/basis736.json"
theorem reductionProof736 : EqualModuloRelations reduction736.relations reduction736.input reduction736.output := by lin_cert using reduction736.terms
theorem substitutionProof736 : IsMapEvaluation generatorImages reduction736.relations [116] reduction736.output := by lin_cert using reduction736.terms
def map_24_82 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image763 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation763 : InImage map_24_82 image763 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction763 : Bundle := named_bundle% "RealMapCertificates/relations/basis763.json"
theorem reductionProof763 : EqualModuloRelations reduction763.relations reduction763.input reduction763.output := by lin_cert using reduction763.terms
theorem substitutionProof763 : IsMapEvaluation generatorImages reduction763.relations [0,117] reduction763.output := by lin_cert using reduction763.terms
def map_24_84 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image802 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation802 : InImage map_24_84 image802 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction802 : Bundle := named_bundle% "RealMapCertificates/relations/basis802.json"
theorem reductionProof802 : EqualModuloRelations reduction802.relations reduction802.input reduction802.output := by lin_cert using reduction802.terms
theorem substitutionProof802 : IsMapEvaluation generatorImages reduction802.relations [8,71] reduction802.output := by lin_cert using reduction802.terms
def map_24_85 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image839 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation839 : InImage map_24_85 image839 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction839 : Bundle := named_bundle% "RealMapCertificates/relations/basis839.json"
theorem reductionProof839 : EqualModuloRelations reduction839.relations reduction839.input reduction839.output := by lin_cert using reduction839.terms
theorem substitutionProof839 : IsMapEvaluation generatorImages reduction839.relations [0,16,50] reduction839.output := by lin_cert using reduction839.terms
def map_24_86 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation863 : InImage map_24_86 image863 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction863 : Bundle := named_bundle% "RealMapCertificates/relations/basis863.json"
theorem reductionProof863 : EqualModuloRelations reduction863.relations reduction863.input reduction863.output := by lin_cert using reduction863.terms
theorem substitutionProof863 : IsMapEvaluation generatorImages reduction863.relations [0,0,17,50] reduction863.output := by lin_cert using reduction863.terms
def map_24_87 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image886 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation886 : InImage map_24_87 image886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction886 : Bundle := named_bundle% "RealMapCertificates/relations/basis886.json"
theorem reductionProof886 : EqualModuloRelations reduction886.relations reduction886.input reduction886.output := by lin_cert using reduction886.terms
theorem substitutionProof886 : IsMapEvaluation generatorImages reduction886.relations [8,77] reduction886.output := by lin_cert using reduction886.terms
def image887 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation887 : InImage map_24_87 image887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction887 : Bundle := named_bundle% "RealMapCertificates/relations/basis887.json"
theorem reductionProof887 : EqualModuloRelations reduction887.relations reduction887.input reduction887.output := by lin_cert using reduction887.terms
theorem substitutionProof887 : IsMapEvaluation generatorImages reduction887.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction887.output := by lin_cert using reduction887.terms
def map_24_88 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image914 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation914 : InImage map_24_88 image914 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction914 : Bundle := named_bundle% "RealMapCertificates/relations/basis914.json"
theorem reductionProof914 : EqualModuloRelations reduction914.relations reduction914.input reduction914.output := by lin_cert using reduction914.terms
theorem substitutionProof914 : IsMapEvaluation generatorImages reduction914.relations [0,8,78] reduction914.output := by lin_cert using reduction914.terms
def map_24_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image962 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation962 : InImage map_24_90 image962 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction962 : Bundle := named_bundle% "RealMapCertificates/relations/basis962.json"
theorem reductionProof962 : EqualModuloRelations reduction962.relations reduction962.input reduction962.output := by lin_cert using reduction962.terms
theorem substitutionProof962 : IsMapEvaluation generatorImages reduction962.relations [8,8,49] reduction962.output := by lin_cert using reduction962.terms
def map_24_91 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation998 : InImage map_24_91 image998 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction998 : Bundle := named_bundle% "RealMapCertificates/relations/basis998.json"
theorem reductionProof998 : EqualModuloRelations reduction998.relations reduction998.input reduction998.output := by lin_cert using reduction998.terms
theorem substitutionProof998 : IsMapEvaluation generatorImages reduction998.relations [0,8,8,50] reduction998.output := by lin_cert using reduction998.terms
def map_24_93 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1042 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1042 : InImage map_24_93 image1042 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1042 : Bundle := named_bundle% "RealMapCertificates/relations/basis1042.json"
theorem reductionProof1042 : EqualModuloRelations reduction1042.relations reduction1042.input reduction1042.output := by lin_cert using reduction1042.terms
theorem substitutionProof1042 : IsMapEvaluation generatorImages reduction1042.relations [8,8,55] reduction1042.output := by lin_cert using reduction1042.terms
def image1043 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1043 : InImage map_24_93 image1043 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1043 : Bundle := named_bundle% "RealMapCertificates/relations/basis1043.json"
theorem reductionProof1043 : EqualModuloRelations reduction1043.relations reduction1043.input reduction1043.output := by lin_cert using reduction1043.terms
theorem substitutionProof1043 : IsMapEvaluation generatorImages reduction1043.relations [0,0,0,0,0,0,137] reduction1043.output := by lin_cert using reduction1043.terms
def map_24_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1074 : InImage map_24_94 image1074 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1074 : Bundle := named_bundle% "RealMapCertificates/relations/basis1074.json"
theorem reductionProof1074 : EqualModuloRelations reduction1074.relations reduction1074.input reduction1074.output := by lin_cert using reduction1074.terms
theorem substitutionProof1074 : IsMapEvaluation generatorImages reduction1074.relations [0,0,0,0,0,0,0,138] reduction1074.output := by lin_cert using reduction1074.terms
def map_24_96 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1111 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1111 : InImage map_24_96 image1111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1111 : Bundle := named_bundle% "RealMapCertificates/relations/basis1111.json"
theorem reductionProof1111 : EqualModuloRelations reduction1111.relations reduction1111.input reduction1111.output := by lin_cert using reduction1111.terms
theorem substitutionProof1111 : IsMapEvaluation generatorImages reduction1111.relations [8,8,8,31] reduction1111.output := by lin_cert using reduction1111.terms
def map_24_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1189 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1189 : InImage map_24_99 image1189 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1189 : Bundle := named_bundle% "RealMapCertificates/relations/basis1189.json"
theorem reductionProof1189 : EqualModuloRelations reduction1189.relations reduction1189.input reduction1189.output := by lin_cert using reduction1189.terms
theorem substitutionProof1189 : IsMapEvaluation generatorImages reduction1189.relations [8,8,8,39] reduction1189.output := by lin_cert using reduction1189.terms
def map_24_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1279 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1279 : InImage map_24_102 image1279 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1279 : Bundle := named_bundle% "RealMapCertificates/relations/basis1279.json"
theorem reductionProof1279 : EqualModuloRelations reduction1279.relations reduction1279.input reduction1279.output := by lin_cert using reduction1279.terms
theorem substitutionProof1279 : IsMapEvaluation generatorImages reduction1279.relations [8,8,8,8,16] reduction1279.output := by lin_cert using reduction1279.terms
def map_24_103 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1317 : InImage map_24_103 image1317 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1317 : Bundle := named_bundle% "RealMapCertificates/relations/basis1317.json"
theorem reductionProof1317 : EqualModuloRelations reduction1317.relations reduction1317.input reduction1317.output := by lin_cert using reduction1317.terms
theorem substitutionProof1317 : IsMapEvaluation generatorImages reduction1317.relations [1,5,137] reduction1317.output := by lin_cert using reduction1317.terms
def map_24_104 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1346 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1346 : InImage map_24_104 image1346 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1346 : Bundle := named_bundle% "RealMapCertificates/relations/basis1346.json"
theorem reductionProof1346 : EqualModuloRelations reduction1346.relations reduction1346.input reduction1346.output := by lin_cert using reduction1346.terms
theorem substitutionProof1346 : IsMapEvaluation generatorImages reduction1346.relations [0,0,184] reduction1346.output := by lin_cert using reduction1346.terms
def map_24_105 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1382 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1382 : InImage map_24_105 image1382 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1382 : Bundle := named_bundle% "RealMapCertificates/relations/basis1382.json"
theorem reductionProof1382 : EqualModuloRelations reduction1382.relations reduction1382.input reduction1382.output := by lin_cert using reduction1382.terms
theorem substitutionProof1382 : IsMapEvaluation generatorImages reduction1382.relations [8,8,8,8,19] reduction1382.output := by lin_cert using reduction1382.terms
def map_24_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1451 : InImage map_24_107 image1451 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1451 : Bundle := named_bundle% "RealMapCertificates/relations/basis1451.json"
theorem reductionProof1451 : EqualModuloRelations reduction1451.relations reduction1451.input reduction1451.output := by lin_cert using reduction1451.terms
theorem substitutionProof1451 : IsMapEvaluation generatorImages reduction1451.relations [0,0,8,137] reduction1451.output := by lin_cert using reduction1451.terms
def map_24_108 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1479 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1479 : InImage map_24_108 image1479 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1479 : Bundle := named_bundle% "RealMapCertificates/relations/basis1479.json"
theorem reductionProof1479 : EqualModuloRelations reduction1479.relations reduction1479.input reduction1479.output := by lin_cert using reduction1479.terms
theorem substitutionProof1479 : IsMapEvaluation generatorImages reduction1479.relations [8,8,8,8,8,8] reduction1479.output := by lin_cert using reduction1479.terms
def map_24_110 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1558 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1558 : InImage map_24_110 image1558 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1558 : Bundle := named_bundle% "RealMapCertificates/relations/basis1558.json"
theorem reductionProof1558 : EqualModuloRelations reduction1558.relations reduction1558.input reduction1558.output := by lin_cert using reduction1558.terms
theorem substitutionProof1558 : IsMapEvaluation generatorImages reduction1558.relations [0,0,8,146] reduction1558.output := by lin_cert using reduction1558.terms
def map_24_111 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1601 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1601 : InImage map_24_111 image1601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1601 : Bundle := named_bundle% "RealMapCertificates/relations/basis1601.json"
theorem reductionProof1601 : EqualModuloRelations reduction1601.relations reduction1601.input reduction1601.output := by lin_cert using reduction1601.terms
theorem substitutionProof1601 : IsMapEvaluation generatorImages reduction1601.relations [8,8,8,8,8,9] reduction1601.output := by lin_cert using reduction1601.terms
def map_24_113 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1676 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1676 : InImage map_24_113 image1676 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1676 : Bundle := named_bundle% "RealMapCertificates/relations/basis1676.json"
theorem reductionProof1676 : EqualModuloRelations reduction1676.relations reduction1676.input reduction1676.output := by lin_cert using reduction1676.terms
theorem substitutionProof1676 : IsMapEvaluation generatorImages reduction1676.relations [0,0,8,16,64] reduction1676.output := by lin_cert using reduction1676.terms
def map_24_114 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1714 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1714 : InImage map_24_114 image1714 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1714 : Bundle := named_bundle% "RealMapCertificates/relations/basis1714.json"
theorem reductionProof1714 : EqualModuloRelations reduction1714.relations reduction1714.input reduction1714.output := by lin_cert using reduction1714.terms
theorem substitutionProof1714 : IsMapEvaluation generatorImages reduction1714.relations [8,8,8,8,8,13] reduction1714.output := by lin_cert using reduction1714.terms
def map_24_116 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1778 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1778 : InImage map_24_116 image1778 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1778 : Bundle := named_bundle% "RealMapCertificates/relations/basis1778.json"
theorem reductionProof1778 : EqualModuloRelations reduction1778.relations reduction1778.input reduction1778.output := by lin_cert using reduction1778.terms
theorem substitutionProof1778 : IsMapEvaluation generatorImages reduction1778.relations [244] reduction1778.output := by lin_cert using reduction1778.terms
def map_24_117 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1821 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1821 : InImage map_24_117 image1821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1821 : Bundle := named_bundle% "RealMapCertificates/relations/basis1821.json"
theorem reductionProof1821 : EqualModuloRelations reduction1821.relations reduction1821.input reduction1821.output := by lin_cert using reduction1821.terms
theorem substitutionProof1821 : IsMapEvaluation generatorImages reduction1821.relations [17,138] reduction1821.output := by lin_cert using reduction1821.terms
def image1822 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1822 : InImage map_24_117 image1822 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1822 : Bundle := named_bundle% "RealMapCertificates/relations/basis1822.json"
theorem reductionProof1822 : EqualModuloRelations reduction1822.relations reduction1822.input reduction1822.output := by lin_cert using reduction1822.terms
theorem substitutionProof1822 : IsMapEvaluation generatorImages reduction1822.relations [8,8,8,8,9,13] reduction1822.output := by lin_cert using reduction1822.terms
def map_24_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1856 : InImage map_24_118 image1856 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1856 : Bundle := named_bundle% "RealMapCertificates/relations/basis1856.json"
theorem reductionProof1856 : EqualModuloRelations reduction1856.relations reduction1856.input reduction1856.output := by lin_cert using reduction1856.terms
theorem substitutionProof1856 : IsMapEvaluation generatorImages reduction1856.relations [0,0,245] reduction1856.output := by lin_cert using reduction1856.terms
def map_24_119 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1894 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1894 : InImage map_24_119 image1894 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1894 : Bundle := named_bundle% "RealMapCertificates/relations/basis1894.json"
theorem reductionProof1894 : EqualModuloRelations reduction1894.relations reduction1894.input reduction1894.output := by lin_cert using reduction1894.terms
theorem substitutionProof1894 : IsMapEvaluation generatorImages reduction1894.relations [257] reduction1894.output := by lin_cert using reduction1894.terms
def image1895 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1895 : InImage map_24_119 image1895 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1895 : Bundle := named_bundle% "RealMapCertificates/relations/basis1895.json"
theorem reductionProof1895 : EqualModuloRelations reduction1895.relations reduction1895.input reduction1895.output := by lin_cert using reduction1895.terms
theorem substitutionProof1895 : IsMapEvaluation generatorImages reduction1895.relations [0,0,0,246] reduction1895.output := by lin_cert using reduction1895.terms
def map_24_120 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image1936 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation1936 : InImage map_24_120 image1936 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1936 : Bundle := named_bundle% "RealMapCertificates/relations/basis1936.json"
theorem reductionProof1936 : EqualModuloRelations reduction1936.relations reduction1936.input reduction1936.output := by lin_cert using reduction1936.terms
theorem substitutionProof1936 : IsMapEvaluation generatorImages reduction1936.relations [17,147] reduction1936.output := by lin_cert using reduction1936.terms
def image1937 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1937 : InImage map_24_120 image1937 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1937 : Bundle := named_bundle% "RealMapCertificates/relations/basis1937.json"
theorem reductionProof1937 : EqualModuloRelations reduction1937.relations reduction1937.input reduction1937.output := by lin_cert using reduction1937.terms
theorem substitutionProof1937 : IsMapEvaluation generatorImages reduction1937.relations [8,8,8,8,13,13] reduction1937.output := by lin_cert using reduction1937.terms
def map_24_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2014 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2014 : InImage map_24_122 image2014 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2014 : Bundle := named_bundle% "RealMapCertificates/relations/basis2014.json"
theorem reductionProof2014 : EqualModuloRelations reduction2014.relations reduction2014.input reduction2014.output := by lin_cert using reduction2014.terms
theorem substitutionProof2014 : IsMapEvaluation generatorImages reduction2014.relations [16,149] reduction2014.output := by lin_cert using reduction2014.terms
def map_24_123 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2054 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2054 : InImage map_24_123 image2054 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2054 : Bundle := named_bundle% "RealMapCertificates/relations/basis2054.json"
theorem reductionProof2054 : EqualModuloRelations reduction2054.relations reduction2054.input reduction2054.output := by lin_cert using reduction2054.terms
theorem substitutionProof2054 : IsMapEvaluation generatorImages reduction2054.relations [16,154] reduction2054.output := by lin_cert using reduction2054.terms
def image2055 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2055 : InImage map_24_123 image2055 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2055 : Bundle := named_bundle% "RealMapCertificates/relations/basis2055.json"
theorem reductionProof2055 : EqualModuloRelations reduction2055.relations reduction2055.input reduction2055.output := by lin_cert using reduction2055.terms
theorem substitutionProof2055 : IsMapEvaluation generatorImages reduction2055.relations [8,8,8,9,13,13] reduction2055.output := by lin_cert using reduction2055.terms
def image2056 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2056 : InImage map_24_123 image2056 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2056 : Bundle := named_bundle% "RealMapCertificates/relations/basis2056.json"
theorem reductionProof2056 : EqualModuloRelations reduction2056.relations reduction2056.input reduction2056.output := by lin_cert using reduction2056.terms
theorem substitutionProof2056 : IsMapEvaluation generatorImages reduction2056.relations [0,17,149] reduction2056.output := by lin_cert using reduction2056.terms
def map_24_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2101 : InImage map_24_124 image2101 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2101 : Bundle := named_bundle% "RealMapCertificates/relations/basis2101.json"
theorem reductionProof2101 : EqualModuloRelations reduction2101.relations reduction2101.input reduction2101.output := by lin_cert using reduction2101.terms
theorem substitutionProof2101 : IsMapEvaluation generatorImages reduction2101.relations [0,17,154] reduction2101.output := by lin_cert using reduction2101.terms
def map_24_125 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2137 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2137 : InImage map_24_125 image2137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2137 : Bundle := named_bundle% "RealMapCertificates/relations/basis2137.json"
theorem reductionProof2137 : EqualModuloRelations reduction2137.relations reduction2137.input reduction2137.output := by lin_cert using reduction2137.terms
theorem substitutionProof2137 : IsMapEvaluation generatorImages reduction2137.relations [8,206] reduction2137.output := by lin_cert using reduction2137.terms
def image2138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2138 : InImage map_24_125 image2138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2138 : Bundle := named_bundle% "RealMapCertificates/relations/basis2138.json"
theorem reductionProof2138 : EqualModuloRelations reduction2138.relations reduction2138.input reduction2138.output := by lin_cert using reduction2138.terms
theorem substitutionProof2138 : IsMapEvaluation generatorImages reduction2138.relations [1,59,64] reduction2138.output := by lin_cert using reduction2138.terms
def image2139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2139 : InImage map_24_125 image2139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2139 : Bundle := named_bundle% "RealMapCertificates/relations/basis2139.json"
theorem reductionProof2139 : EqualModuloRelations reduction2139.relations reduction2139.input reduction2139.output := by lin_cert using reduction2139.terms
theorem substitutionProof2139 : IsMapEvaluation generatorImages reduction2139.relations [0,0,0,0,0,0,260] reduction2139.output := by lin_cert using reduction2139.terms
def map_24_126 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2185 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2185 : InImage map_24_126 image2185 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2185 : Bundle := named_bundle% "RealMapCertificates/relations/basis2185.json"
theorem reductionProof2185 : EqualModuloRelations reduction2185.relations reduction2185.input reduction2185.output := by lin_cert using reduction2185.terms
theorem substitutionProof2185 : IsMapEvaluation generatorImages reduction2185.relations [8,17,113] reduction2185.output := by lin_cert using reduction2185.terms
def image2186 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2186 : InImage map_24_126 image2186 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2186 : Bundle := named_bundle% "RealMapCertificates/relations/basis2186.json"
theorem reductionProof2186 : EqualModuloRelations reduction2186.relations reduction2186.input reduction2186.output := by lin_cert using reduction2186.terms
theorem substitutionProof2186 : IsMapEvaluation generatorImages reduction2186.relations [8,8,8,13,13,13] reduction2186.output := by lin_cert using reduction2186.terms
def image2187 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2187 : InImage map_24_126 image2187 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2187 : Bundle := named_bundle% "RealMapCertificates/relations/basis2187.json"
theorem reductionProof2187 : EqualModuloRelations reduction2187.relations reduction2187.input reduction2187.output := by lin_cert using reduction2187.terms
theorem substitutionProof2187 : IsMapEvaluation generatorImages reduction2187.relations [0,0,0,0,0,274] reduction2187.output := by lin_cert using reduction2187.terms
def map_24_128 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2272 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2272 : InImage map_24_128 image2272 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2272 : Bundle := named_bundle% "RealMapCertificates/relations/basis2272.json"
theorem reductionProof2272 : EqualModuloRelations reduction2272.relations reduction2272.input reduction2272.output := by lin_cert using reduction2272.terms
theorem substitutionProof2272 : IsMapEvaluation generatorImages reduction2272.relations [8,8,149] reduction2272.output := by lin_cert using reduction2272.terms
def map_24_129 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2339 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2339 : InImage map_24_129 image2339 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2339 : Bundle := named_bundle% "RealMapCertificates/relations/basis2339.json"
theorem reductionProof2339 : EqualModuloRelations reduction2339.relations reduction2339.input reduction2339.output := by lin_cert using reduction2339.terms
theorem substitutionProof2339 : IsMapEvaluation generatorImages reduction2339.relations [8,8,154] reduction2339.output := by lin_cert using reduction2339.terms
def image2340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2340 : InImage map_24_129 image2340 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2340 : Bundle := named_bundle% "RealMapCertificates/relations/basis2340.json"
theorem reductionProof2340 : EqualModuloRelations reduction2340.relations reduction2340.input reduction2340.output := by lin_cert using reduction2340.terms
theorem substitutionProof2340 : IsMapEvaluation generatorImages reduction2340.relations [8,8,9,13,13,13] reduction2340.output := by lin_cert using reduction2340.terms
def map_24_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2395 : InImage map_24_130 image2395 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2395 : Bundle := named_bundle% "RealMapCertificates/relations/basis2395.json"
theorem reductionProof2395 : EqualModuloRelations reduction2395.relations reduction2395.input reduction2395.output := by lin_cert using reduction2395.terms
theorem substitutionProof2395 : IsMapEvaluation generatorImages reduction2395.relations [0,0,0,0,64,64] reduction2395.output := by lin_cert using reduction2395.terms
def map_24_131 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2455 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2455 : InImage map_24_131 image2455 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2455 : Bundle := named_bundle% "RealMapCertificates/relations/basis2455.json"
theorem reductionProof2455 : EqualModuloRelations reduction2455.relations reduction2455.input reduction2455.output := by lin_cert using reduction2455.terms
theorem substitutionProof2455 : IsMapEvaluation generatorImages reduction2455.relations [8,8,160] reduction2455.output := by lin_cert using reduction2455.terms
def image2456 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2456 : InImage map_24_131 image2456 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2456 : Bundle := named_bundle% "RealMapCertificates/relations/basis2456.json"
theorem reductionProof2456 : EqualModuloRelations reduction2456.relations reduction2456.input reduction2456.output := by lin_cert using reduction2456.terms
theorem substitutionProof2456 : IsMapEvaluation generatorImages reduction2456.relations [0,0,0,0,0,299] reduction2456.output := by lin_cert using reduction2456.terms
def map_24_132 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image2525 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2525 : InImage map_24_132 image2525 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2525 : Bundle := named_bundle% "RealMapCertificates/relations/basis2525.json"
theorem reductionProof2525 : EqualModuloRelations reduction2525.relations reduction2525.input reduction2525.output := by lin_cert using reduction2525.terms
theorem substitutionProof2525 : IsMapEvaluation generatorImages reduction2525.relations [8,8,162] reduction2525.output := by lin_cert using reduction2525.terms
def image2526 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2526 : InImage map_24_132 image2526 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2526 : Bundle := named_bundle% "RealMapCertificates/relations/basis2526.json"
theorem reductionProof2526 : EqualModuloRelations reduction2526.relations reduction2526.input reduction2526.output := by lin_cert using reduction2526.terms
theorem substitutionProof2526 : IsMapEvaluation generatorImages reduction2526.relations [8,8,13,13,13,13] reduction2526.output := by lin_cert using reduction2526.terms
def map_24_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2592 : InImage map_24_133 image2592 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2592 : Bundle := named_bundle% "RealMapCertificates/relations/basis2592.json"
theorem reductionProof2592 : EqualModuloRelations reduction2592.relations reduction2592.input reduction2592.output := by lin_cert using reduction2592.terms
theorem substitutionProof2592 : IsMapEvaluation generatorImages reduction2592.relations [0,0,0,0,0,0,0,300] reduction2592.output := by lin_cert using reduction2592.terms
def map_24_134 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2653 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2653 : InImage map_24_134 image2653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2653 : Bundle := named_bundle% "RealMapCertificates/relations/basis2653.json"
theorem reductionProof2653 : EqualModuloRelations reduction2653.relations reduction2653.input reduction2653.output := by lin_cert using reduction2653.terms
theorem substitutionProof2653 : IsMapEvaluation generatorImages reduction2653.relations [8,8,166] reduction2653.output := by lin_cert using reduction2653.terms
def image2654 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2654 : InImage map_24_134 image2654 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2654 : Bundle := named_bundle% "RealMapCertificates/relations/basis2654.json"
theorem reductionProof2654 : EqualModuloRelations reduction2654.relations reduction2654.input reduction2654.output := by lin_cert using reduction2654.terms
theorem substitutionProof2654 : IsMapEvaluation generatorImages reduction2654.relations [0,0,0,0,0,0,317] reduction2654.output := by lin_cert using reduction2654.terms
def map_24_135 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2749 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2749 : InImage map_24_135 image2749 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2749 : Bundle := named_bundle% "RealMapCertificates/relations/basis2749.json"
theorem reductionProof2749 : EqualModuloRelations reduction2749.relations reduction2749.input reduction2749.output := by lin_cert using reduction2749.terms
theorem substitutionProof2749 : IsMapEvaluation generatorImages reduction2749.relations [8,9,13,13,13,13] reduction2749.output := by lin_cert using reduction2749.terms
def image2750 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2750 : InImage map_24_135 image2750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2750 : Bundle := named_bundle% "RealMapCertificates/relations/basis2750.json"
theorem reductionProof2750 : EqualModuloRelations reduction2750.relations reduction2750.input reduction2750.output := by lin_cert using reduction2750.terms
theorem substitutionProof2750 : IsMapEvaluation generatorImages reduction2750.relations [8,8,17,80] reduction2750.output := by lin_cert using reduction2750.terms
def image2751 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2751 : InImage map_24_135 image2751 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2751 : Bundle := named_bundle% "RealMapCertificates/relations/basis2751.json"
theorem reductionProof2751 : EqualModuloRelations reduction2751.relations reduction2751.input reduction2751.output := by lin_cert using reduction2751.terms
theorem substitutionProof2751 : IsMapEvaluation generatorImages reduction2751.relations [1,5,260] reduction2751.output := by lin_cert using reduction2751.terms
def map_24_136 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2820 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2820 : InImage map_24_136 image2820 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2820 : Bundle := named_bundle% "RealMapCertificates/relations/basis2820.json"
theorem reductionProof2820 : EqualModuloRelations reduction2820.relations reduction2820.input reduction2820.output := by lin_cert using reduction2820.terms
theorem substitutionProof2820 : IsMapEvaluation generatorImages reduction2820.relations [0,0,380] reduction2820.output := by lin_cert using reduction2820.terms
def map_24_137 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2891 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2891 : InImage map_24_137 image2891 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2891 : Bundle := named_bundle% "RealMapCertificates/relations/basis2891.json"
theorem reductionProof2891 : EqualModuloRelations reduction2891.relations reduction2891.input reduction2891.output := by lin_cert using reduction2891.terms
theorem substitutionProof2891 : IsMapEvaluation generatorImages reduction2891.relations [8,8,180] reduction2891.output := by lin_cert using reduction2891.terms
def image2892 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2892 : InImage map_24_137 image2892 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2892 : Bundle := named_bundle% "RealMapCertificates/relations/basis2892.json"
theorem reductionProof2892 : EqualModuloRelations reduction2892.relations reduction2892.input reduction2892.output := by lin_cert using reduction2892.terms
theorem substitutionProof2892 : IsMapEvaluation generatorImages reduction2892.relations [0,0,0,0,0,0,347] reduction2892.output := by lin_cert using reduction2892.terms
def map_24_138 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2975 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2975 : InImage map_24_138 image2975 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2975 : Bundle := named_bundle% "RealMapCertificates/relations/basis2975.json"
theorem reductionProof2975 : EqualModuloRelations reduction2975.relations reduction2975.input reduction2975.output := by lin_cert using reduction2975.terms
theorem substitutionProof2975 : IsMapEvaluation generatorImages reduction2975.relations [8,13,13,13,13,13] reduction2975.output := by lin_cert using reduction2975.terms
def image2976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2976 : InImage map_24_138 image2976 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2976 : Bundle := named_bundle% "RealMapCertificates/relations/basis2976.json"
theorem reductionProof2976 : EqualModuloRelations reduction2976.relations reduction2976.input reduction2976.output := by lin_cert using reduction2976.terms
theorem substitutionProof2976 : IsMapEvaluation generatorImages reduction2976.relations [8,8,20,80] reduction2976.output := by lin_cert using reduction2976.terms
def map_24_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3057 : InImage map_24_139 image3057 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3057 : Bundle := named_bundle% "RealMapCertificates/relations/basis3057.json"
theorem reductionProof3057 : EqualModuloRelations reduction3057.relations reduction3057.input reduction3057.output := by lin_cert using reduction3057.terms
theorem substitutionProof3057 : IsMapEvaluation generatorImages reduction3057.relations [0,0,8,260] reduction3057.output := by lin_cert using reduction3057.terms
def map_24_140 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3126 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3126 : InImage map_24_140 image3126 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3126 : Bundle := named_bundle% "RealMapCertificates/relations/basis3126.json"
theorem reductionProof3126 : EqualModuloRelations reduction3126.relations reduction3126.input reduction3126.output := by lin_cert using reduction3126.terms
theorem substitutionProof3126 : IsMapEvaluation generatorImages reduction3126.relations [8,8,194] reduction3126.output := by lin_cert using reduction3126.terms
def map_24_141 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3229 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3229 : InImage map_24_141 image3229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3229 : Bundle := named_bundle% "RealMapCertificates/relations/basis3229.json"
theorem reductionProof3229 : EqualModuloRelations reduction3229.relations reduction3229.input reduction3229.output := by lin_cert using reduction3229.terms
theorem substitutionProof3229 : IsMapEvaluation generatorImages reduction3229.relations [64,112] reduction3229.output := by lin_cert using reduction3229.terms
def image3230 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3230 : InImage map_24_141 image3230 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3230 : Bundle := named_bundle% "RealMapCertificates/relations/basis3230.json"
theorem reductionProof3230 : EqualModuloRelations reduction3230.relations reduction3230.input reduction3230.output := by lin_cert using reduction3230.terms
theorem substitutionProof3230 : IsMapEvaluation generatorImages reduction3230.relations [9,13,13,13,13,13] reduction3230.output := by lin_cert using reduction3230.terms
def image3231 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3231 : InImage map_24_141 image3231 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3231 : Bundle := named_bundle% "RealMapCertificates/relations/basis3231.json"
theorem reductionProof3231 : EqualModuloRelations reduction3231.relations reduction3231.input reduction3231.output := by lin_cert using reduction3231.terms
theorem substitutionProof3231 : IsMapEvaluation generatorImages reduction3231.relations [8,8,22,80] reduction3231.output := by lin_cert using reduction3231.terms
def map_24_142 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3303 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3303 : InImage map_24_142 image3303 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3303 : Bundle := named_bundle% "RealMapCertificates/relations/basis3303.json"
theorem reductionProof3303 : EqualModuloRelations reduction3303.relations reduction3303.input reduction3303.output := by lin_cert using reduction3303.terms
theorem substitutionProof3303 : IsMapEvaluation generatorImages reduction3303.relations [0,64,113] reduction3303.output := by lin_cert using reduction3303.terms
def image3304 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3304 : InImage map_24_142 image3304 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3304 : Bundle := named_bundle% "RealMapCertificates/relations/basis3304.json"
theorem reductionProof3304 : EqualModuloRelations reduction3304.relations reduction3304.input reduction3304.output := by lin_cert using reduction3304.terms
theorem substitutionProof3304 : IsMapEvaluation generatorImages reduction3304.relations [0,0,8,278] reduction3304.output := by lin_cert using reduction3304.terms
def map_24_143 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3382 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3382 : InImage map_24_143 image3382 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3382 : Bundle := named_bundle% "RealMapCertificates/relations/basis3382.json"
theorem reductionProof3382 : EqualModuloRelations reduction3382.relations reduction3382.input reduction3382.output := by lin_cert using reduction3382.terms
theorem substitutionProof3382 : IsMapEvaluation generatorImages reduction3382.relations [8,9,194] reduction3382.output := by lin_cert using reduction3382.terms
def map_24_144 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image3474 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3474 : InImage map_24_144 image3474 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3474 : Bundle := named_bundle% "RealMapCertificates/relations/basis3474.json"
theorem reductionProof3474 : EqualModuloRelations reduction3474.relations reduction3474.input reduction3474.output := by lin_cert using reduction3474.terms
theorem substitutionProof3474 : IsMapEvaluation generatorImages reduction3474.relations [13,13,13,13,13,13] reduction3474.output := by lin_cert using reduction3474.terms
def image3475 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3475 : InImage map_24_144 image3475 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3475 : Bundle := named_bundle% "RealMapCertificates/relations/basis3475.json"
theorem reductionProof3475 : EqualModuloRelations reduction3475.relations reduction3475.input reduction3475.output := by lin_cert using reduction3475.terms
theorem substitutionProof3475 : IsMapEvaluation generatorImages reduction3475.relations [8,64,64] reduction3475.output := by lin_cert using reduction3475.terms
def image3476 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3476 : InImage map_24_144 image3476 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3476 : Bundle := named_bundle% "RealMapCertificates/relations/basis3476.json"
theorem reductionProof3476 : EqualModuloRelations reduction3476.relations reduction3476.input reduction3476.output := by lin_cert using reduction3476.terms
theorem substitutionProof3476 : IsMapEvaluation generatorImages reduction3476.relations [8,8,23,89] reduction3476.output := by lin_cert using reduction3476.terms
def map_24_145 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3550 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3550 : InImage map_24_145 image3550 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3550 : Bundle := named_bundle% "RealMapCertificates/relations/basis3550.json"
theorem reductionProof3550 : EqualModuloRelations reduction3550.relations reduction3550.input reduction3550.output := by lin_cert using reduction3550.terms
theorem substitutionProof3550 : IsMapEvaluation generatorImages reduction3550.relations [0,8,299] reduction3550.output := by lin_cert using reduction3550.terms
def image3551 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3551 : InImage map_24_145 image3551 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3551 : Bundle := named_bundle% "RealMapCertificates/relations/basis3551.json"
theorem reductionProof3551 : EqualModuloRelations reduction3551.relations reduction3551.input reduction3551.output := by lin_cert using reduction3551.terms
theorem substitutionProof3551 : IsMapEvaluation generatorImages reduction3551.relations [0,0,8,291] reduction3551.output := by lin_cert using reduction3551.terms
end RealMapCertificates
