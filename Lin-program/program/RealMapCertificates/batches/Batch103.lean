import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 52 => []
  | 64 => []
  | 69 => []
  | 72 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 134 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 187 => []
  | 188 => []
  | 194 => [[7,10,12]]
  | 201 => []
  | 209 => []
  | 212 => []
  | 220 => []
  | 235 => []
  | 250 => []
  | 254 => []
  | 261 => []
  | 286 => []
  | 292 => []
  | 303 => []
  | 316 => []
  | 318 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 440 => []
  | 455 => []
  | 492 => []
  | 500 => []
  | 538 => []
  | 549 => []
  | 573 => []
  | 586 => []
  | 599 => []
  | 600 => []
  | 601 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 643 => []
  | 644 => []
  | 645 => []
  | 646 => []
  | 654 => []
  | 655 => []
  | 667 => []
  | 690 => []
  | 702 => []
  | 703 => []
  | 704 => []
  | 706 => []
  | 716 => []
  | 717 => []
  | 727 => []
  | 743 => []
  | 760 => []
  | 779 => []
  | 797 => []
  | 811 => []
  | 812 => []
  | 832 => []
  | 836 => []
  | 854 => []
  | 855 => []
  | 856 => []
  | 874 => []
  | 875 => []
  | 887 => []
  | 899 => []
  | 900 => []
  | 901 => []
  | 903 => []
  | _ => []
def map_24_146 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3623 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3623 : InImage map_24_146 image3623 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3623 : Bundle := named_bundle% "RealMapCertificates/relations/basis3623.json"
theorem reductionProof3623 : EqualModuloRelations reduction3623.relations reduction3623.input reduction3623.output := by lin_cert using reduction3623.terms
theorem substitutionProof3623 : IsMapEvaluation generatorImages reduction3623.relations [8,13,194] reduction3623.output := by lin_cert using reduction3623.terms
def map_24_147 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image3737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3737 : InImage map_24_147 image3737 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3737 : Bundle := named_bundle% "RealMapCertificates/relations/basis3737.json"
theorem reductionProof3737 : EqualModuloRelations reduction3737.relations reduction3737.input reduction3737.output := by lin_cert using reduction3737.terms
theorem substitutionProof3737 : IsMapEvaluation generatorImages reduction3737.relations [8,64,72] reduction3737.output := by lin_cert using reduction3737.terms
def image3738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3738 : InImage map_24_147 image3738 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3738 : Bundle := named_bundle% "RealMapCertificates/relations/basis3738.json"
theorem reductionProof3738 : EqualModuloRelations reduction3738.relations reduction3738.input reduction3738.output := by lin_cert using reduction3738.terms
theorem substitutionProof3738 : IsMapEvaluation generatorImages reduction3738.relations [8,8,23,101] reduction3738.output := by lin_cert using reduction3738.terms
def image3739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3739 : InImage map_24_147 image3739 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3739 : Bundle := named_bundle% "RealMapCertificates/relations/basis3739.json"
theorem reductionProof3739 : EqualModuloRelations reduction3739.relations reduction3739.input reduction3739.output := by lin_cert using reduction3739.terms
theorem substitutionProof3739 : IsMapEvaluation generatorImages reduction3739.relations [1,5,347] reduction3739.output := by lin_cert using reduction3739.terms
def map_24_148 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3810 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3810 : InImage map_24_148 image3810 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3810 : Bundle := named_bundle% "RealMapCertificates/relations/basis3810.json"
theorem reductionProof3810 : EqualModuloRelations reduction3810.relations reduction3810.input reduction3810.output := by lin_cert using reduction3810.terms
theorem substitutionProof3810 : IsMapEvaluation generatorImages reduction3810.relations [0,0,8,316] reduction3810.output := by lin_cert using reduction3810.terms
def image3811 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3811 : InImage map_24_148 image3811 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3811 : Bundle := named_bundle% "RealMapCertificates/relations/basis3811.json"
theorem reductionProof3811 : EqualModuloRelations reduction3811.relations reduction3811.input reduction3811.output := by lin_cert using reduction3811.terms
theorem substitutionProof3811 : IsMapEvaluation generatorImages reduction3811.relations [0,0,0,0,0,0,0,0,0,0,440] reduction3811.output := by lin_cert using reduction3811.terms
def map_24_149 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3896 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3896 : InImage map_24_149 image3896 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3896 : Bundle := named_bundle% "RealMapCertificates/relations/basis3896.json"
theorem reductionProof3896 : EqualModuloRelations reduction3896.relations reduction3896.input reduction3896.output := by lin_cert using reduction3896.terms
theorem substitutionProof3896 : IsMapEvaluation generatorImages reduction3896.relations [9,13,194] reduction3896.output := by lin_cert using reduction3896.terms
def map_24_150 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image3996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3996 : InImage map_24_150 image3996 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3996 : Bundle := named_bundle% "RealMapCertificates/relations/basis3996.json"
theorem reductionProof3996 : EqualModuloRelations reduction3996.relations reduction3996.input reduction3996.output := by lin_cert using reduction3996.terms
theorem substitutionProof3996 : IsMapEvaluation generatorImages reduction3996.relations [13,13,13,13,52] reduction3996.output := by lin_cert using reduction3996.terms
def image3997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3997 : InImage map_24_150 image3997 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3997 : Bundle := named_bundle% "RealMapCertificates/relations/basis3997.json"
theorem reductionProof3997 : EqualModuloRelations reduction3997.relations reduction3997.input reduction3997.output := by lin_cert using reduction3997.terms
theorem substitutionProof3997 : IsMapEvaluation generatorImages reduction3997.relations [8,16,187] reduction3997.output := by lin_cert using reduction3997.terms
def image3998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3998 : InImage map_24_150 image3998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3998 : Bundle := named_bundle% "RealMapCertificates/relations/basis3998.json"
theorem reductionProof3998 : EqualModuloRelations reduction3998.relations reduction3998.input reduction3998.output := by lin_cert using reduction3998.terms
theorem substitutionProof3998 : IsMapEvaluation generatorImages reduction3998.relations [8,9,23,101] reduction3998.output := by lin_cert using reduction3998.terms
def image3999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3999 : InImage map_24_150 image3999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3999 : Bundle := named_bundle% "RealMapCertificates/relations/basis3999.json"
theorem reductionProof3999 : EqualModuloRelations reduction3999.relations reduction3999.input reduction3999.output := by lin_cert using reduction3999.terms
theorem substitutionProof3999 : IsMapEvaluation generatorImages reduction3999.relations [0,0,0,0,0,0,500] reduction3999.output := by lin_cert using reduction3999.terms
def map_24_151 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4094 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4094 : InImage map_24_151 image4094 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4094 : Bundle := named_bundle% "RealMapCertificates/relations/basis4094.json"
theorem reductionProof4094 : EqualModuloRelations reduction4094.relations reduction4094.input reduction4094.output := by lin_cert using reduction4094.terms
theorem substitutionProof4094 : IsMapEvaluation generatorImages reduction4094.relations [1,549] reduction4094.output := by lin_cert using reduction4094.terms
def image4095 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4095 : InImage map_24_151 image4095 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4095 : Bundle := named_bundle% "RealMapCertificates/relations/basis4095.json"
theorem reductionProof4095 : EqualModuloRelations reduction4095.relations reduction4095.input reduction4095.output := by lin_cert using reduction4095.terms
theorem substitutionProof4095 : IsMapEvaluation generatorImages reduction4095.relations [0,0,8,346] reduction4095.output := by lin_cert using reduction4095.terms
def image4096 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4096 : InImage map_24_151 image4096 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4096 : Bundle := named_bundle% "RealMapCertificates/relations/basis4096.json"
theorem reductionProof4096 : EqualModuloRelations reduction4096.relations reduction4096.input reduction4096.output := by lin_cert using reduction4096.terms
theorem substitutionProof4096 : IsMapEvaluation generatorImages reduction4096.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4096.output := by lin_cert using reduction4096.terms
def map_24_152 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image4171 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4171 : InImage map_24_152 image4171 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4171 : Bundle := named_bundle% "RealMapCertificates/relations/basis4171.json"
theorem reductionProof4171 : EqualModuloRelations reduction4171.relations reduction4171.input reduction4171.output := by lin_cert using reduction4171.terms
theorem substitutionProof4171 : IsMapEvaluation generatorImages reduction4171.relations [573] reduction4171.output := by lin_cert using reduction4171.terms
def image4172 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4172 : InImage map_24_152 image4172 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4172 : Bundle := named_bundle% "RealMapCertificates/relations/basis4172.json"
theorem reductionProof4172 : EqualModuloRelations reduction4172.relations reduction4172.input reduction4172.output := by lin_cert using reduction4172.terms
theorem substitutionProof4172 : IsMapEvaluation generatorImages reduction4172.relations [13,13,194] reduction4172.output := by lin_cert using reduction4172.terms
def map_24_153 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4280 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4280 : InImage map_24_153 image4280 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4280 : Bundle := named_bundle% "RealMapCertificates/relations/basis4280.json"
theorem reductionProof4280 : EqualModuloRelations reduction4280.relations reduction4280.input reduction4280.output := by lin_cert using reduction4280.terms
theorem substitutionProof4280 : IsMapEvaluation generatorImages reduction4280.relations [8,13,23,101] reduction4280.output := by lin_cert using reduction4280.terms
def image4281 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4281 : InImage map_24_153 image4281 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4281 : Bundle := named_bundle% "RealMapCertificates/relations/basis4281.json"
theorem reductionProof4281 : EqualModuloRelations reduction4281.relations reduction4281.input reduction4281.output := by lin_cert using reduction4281.terms
theorem substitutionProof4281 : IsMapEvaluation generatorImages reduction4281.relations [8,8,254] reduction4281.output := by lin_cert using reduction4281.terms
def map_24_155 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4425 : InImage map_24_155 image4425 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4425 : Bundle := named_bundle% "RealMapCertificates/relations/basis4425.json"
theorem reductionProof4425 : EqualModuloRelations reduction4425.relations reduction4425.input reduction4425.output := by lin_cert using reduction4425.terms
theorem substitutionProof4425 : IsMapEvaluation generatorImages reduction4425.relations [599] reduction4425.output := by lin_cert using reduction4425.terms
def image4426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4426 : InImage map_24_155 image4426 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4426 : Bundle := named_bundle% "RealMapCertificates/relations/basis4426.json"
theorem reductionProof4426 : EqualModuloRelations reduction4426.relations reduction4426.input reduction4426.output := by lin_cert using reduction4426.terms
theorem substitutionProof4426 : IsMapEvaluation generatorImages reduction4426.relations [17,292] reduction4426.output := by lin_cert using reduction4426.terms
def map_24_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4527 : InImage map_24_156 image4527 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4527 : Bundle := named_bundle% "RealMapCertificates/relations/basis4527.json"
theorem reductionProof4527 : EqualModuloRelations reduction4527.relations reduction4527.input reduction4527.output := by lin_cert using reduction4527.terms
theorem substitutionProof4527 : IsMapEvaluation generatorImages reduction4527.relations [9,13,23,101] reduction4527.output := by lin_cert using reduction4527.terms
def image4528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4528 : InImage map_24_156 image4528 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4528 : Bundle := named_bundle% "RealMapCertificates/relations/basis4528.json"
theorem reductionProof4528 : EqualModuloRelations reduction4528.relations reduction4528.input reduction4528.output := by lin_cert using reduction4528.terms
theorem substitutionProof4528 : IsMapEvaluation generatorImages reduction4528.relations [8,8,8,187] reduction4528.output := by lin_cert using reduction4528.terms
def image4529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4529 : InImage map_24_156 image4529 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4529 : Bundle := named_bundle% "RealMapCertificates/relations/basis4529.json"
theorem reductionProof4529 : EqualModuloRelations reduction4529.relations reduction4529.input reduction4529.output := by lin_cert using reduction4529.terms
theorem substitutionProof4529 : IsMapEvaluation generatorImages reduction4529.relations [0,601] reduction4529.output := by lin_cert using reduction4529.terms
def image4530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4530 : InImage map_24_156 image4530 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4530 : Bundle := named_bundle% "RealMapCertificates/relations/basis4530.json"
theorem reductionProof4530 : EqualModuloRelations reduction4530.relations reduction4530.input reduction4530.output := by lin_cert using reduction4530.terms
theorem substitutionProof4530 : IsMapEvaluation generatorImages reduction4530.relations [0,600] reduction4530.output := by lin_cert using reduction4530.terms
def map_24_157 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4611 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4611 : InImage map_24_157 image4611 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4611 : Bundle := named_bundle% "RealMapCertificates/relations/basis4611.json"
theorem reductionProof4611 : EqualModuloRelations reduction4611.relations reduction4611.input reduction4611.output := by lin_cert using reduction4611.terms
theorem substitutionProof4611 : IsMapEvaluation generatorImages reduction4611.relations [1,600] reduction4611.output := by lin_cert using reduction4611.terms
def image4612 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4612 : InImage map_24_157 image4612 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4612 : Bundle := named_bundle% "RealMapCertificates/relations/basis4612.json"
theorem reductionProof4612 : EqualModuloRelations reduction4612.relations reduction4612.input reduction4612.output := by lin_cert using reduction4612.terms
theorem substitutionProof4612 : IsMapEvaluation generatorImages reduction4612.relations [0,8,8,8,188] reduction4612.output := by lin_cert using reduction4612.terms
def image4613 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4613 : InImage map_24_157 image4613 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4613 : Bundle := named_bundle% "RealMapCertificates/relations/basis4613.json"
theorem reductionProof4613 : EqualModuloRelations reduction4613.relations reduction4613.input reduction4613.output := by lin_cert using reduction4613.terms
theorem substitutionProof4613 : IsMapEvaluation generatorImages reduction4613.relations [0,0,0,586] reduction4613.output := by lin_cert using reduction4613.terms
def map_24_158 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4694 : InImage map_24_158 image4694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4694 : Bundle := named_bundle% "RealMapCertificates/relations/basis4694.json"
theorem reductionProof4694 : EqualModuloRelations reduction4694.relations reduction4694.input reduction4694.output := by lin_cert using reduction4694.terms
theorem substitutionProof4694 : IsMapEvaluation generatorImages reduction4694.relations [20,292] reduction4694.output := by lin_cert using reduction4694.terms
def image4695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4695 : InImage map_24_158 image4695 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4695 : Bundle := named_bundle% "RealMapCertificates/relations/basis4695.json"
theorem reductionProof4695 : EqualModuloRelations reduction4695.relations reduction4695.input reduction4695.output := by lin_cert using reduction4695.terms
theorem substitutionProof4695 : IsMapEvaluation generatorImages reduction4695.relations [13,13,220] reduction4695.output := by lin_cert using reduction4695.terms
def image4696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4696 : InImage map_24_158 image4696 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4696 : Bundle := named_bundle% "RealMapCertificates/relations/basis4696.json"
theorem reductionProof4696 : EqualModuloRelations reduction4696.relations reduction4696.input reduction4696.output := by lin_cert using reduction4696.terms
theorem substitutionProof4696 : IsMapEvaluation generatorImages reduction4696.relations [8,455] reduction4696.output := by lin_cert using reduction4696.terms
def map_24_159 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4800 : InImage map_24_159 image4800 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4800 : Bundle := named_bundle% "RealMapCertificates/relations/basis4800.json"
theorem reductionProof4800 : EqualModuloRelations reduction4800.relations reduction4800.input reduction4800.output := by lin_cert using reduction4800.terms
theorem substitutionProof4800 : IsMapEvaluation generatorImages reduction4800.relations [13,13,23,101] reduction4800.output := by lin_cert using reduction4800.terms
def image4801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4801 : InImage map_24_159 image4801 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4801 : Bundle := named_bundle% "RealMapCertificates/relations/basis4801.json"
theorem reductionProof4801 : EqualModuloRelations reduction4801.relations reduction4801.input reduction4801.output := by lin_cert using reduction4801.terms
theorem substitutionProof4801 : IsMapEvaluation generatorImages reduction4801.relations [8,8,8,201] reduction4801.output := by lin_cert using reduction4801.terms
def map_24_160 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4864 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4864 : InImage map_24_160 image4864 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4864 : Bundle := named_bundle% "RealMapCertificates/relations/basis4864.json"
theorem reductionProof4864 : EqualModuloRelations reduction4864.relations reduction4864.input reduction4864.output := by lin_cert using reduction4864.terms
theorem substitutionProof4864 : IsMapEvaluation generatorImages reduction4864.relations [642] reduction4864.output := by lin_cert using reduction4864.terms
def map_24_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4955 : InImage map_24_161 image4955 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4955 : Bundle := named_bundle% "RealMapCertificates/relations/basis4955.json"
theorem reductionProof4955 : EqualModuloRelations reduction4955.relations reduction4955.input reduction4955.output := by lin_cert using reduction4955.terms
theorem substitutionProof4955 : IsMapEvaluation generatorImages reduction4955.relations [654] reduction4955.output := by lin_cert using reduction4955.terms
def image4956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4956 : InImage map_24_161 image4956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4956 : Bundle := named_bundle% "RealMapCertificates/relations/basis4956.json"
theorem reductionProof4956 : EqualModuloRelations reduction4956.relations reduction4956.input reduction4956.output := by lin_cert using reduction4956.terms
theorem substitutionProof4956 : IsMapEvaluation generatorImages reduction4956.relations [22,292] reduction4956.output := by lin_cert using reduction4956.terms
def image4957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4957 : InImage map_24_161 image4957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4957 : Bundle := named_bundle% "RealMapCertificates/relations/basis4957.json"
theorem reductionProof4957 : EqualModuloRelations reduction4957.relations reduction4957.input reduction4957.output := by lin_cert using reduction4957.terms
theorem substitutionProof4957 : IsMapEvaluation generatorImages reduction4957.relations [8,492] reduction4957.output := by lin_cert using reduction4957.terms
def map_24_162 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5066 : InImage map_24_162 image5066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5066 : Bundle := named_bundle% "RealMapCertificates/relations/basis5066.json"
theorem reductionProof5066 : EqualModuloRelations reduction5066.relations reduction5066.input reduction5066.output := by lin_cert using reduction5066.terms
theorem substitutionProof5066 : IsMapEvaluation generatorImages reduction5066.relations [8,8,8,212] reduction5066.output := by lin_cert using reduction5066.terms
def image5067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5067 : InImage map_24_162 image5067 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5067 : Bundle := named_bundle% "RealMapCertificates/relations/basis5067.json"
theorem reductionProof5067 : EqualModuloRelations reduction5067.relations reduction5067.input reduction5067.output := by lin_cert using reduction5067.terms
theorem substitutionProof5067 : IsMapEvaluation generatorImages reduction5067.relations [0,0,643] reduction5067.output := by lin_cert using reduction5067.terms
def image5068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5068 : InImage map_24_162 image5068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5068 : Bundle := named_bundle% "RealMapCertificates/relations/basis5068.json"
theorem reductionProof5068 : EqualModuloRelations reduction5068.relations reduction5068.input reduction5068.output := by lin_cert using reduction5068.terms
theorem substitutionProof5068 : IsMapEvaluation generatorImages reduction5068.relations [0,0,0,0,627] reduction5068.output := by lin_cert using reduction5068.terms
def map_24_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5155 : InImage map_24_163 image5155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5155 : Bundle := named_bundle% "RealMapCertificates/relations/basis5155.json"
theorem reductionProof5155 : EqualModuloRelations reduction5155.relations reduction5155.input reduction5155.output := by lin_cert using reduction5155.terms
theorem substitutionProof5155 : IsMapEvaluation generatorImages reduction5155.relations [0,0,0,645] reduction5155.output := by lin_cert using reduction5155.terms
def image5156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5156 : InImage map_24_163 image5156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5156 : Bundle := named_bundle% "RealMapCertificates/relations/basis5156.json"
theorem reductionProof5156 : EqualModuloRelations reduction5156.relations reduction5156.input reduction5156.output := by lin_cert using reduction5156.terms
theorem substitutionProof5156 : IsMapEvaluation generatorImages reduction5156.relations [0,0,0,644] reduction5156.output := by lin_cert using reduction5156.terms
def map_24_164 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5249 : InImage map_24_164 image5249 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5249 : Bundle := named_bundle% "RealMapCertificates/relations/basis5249.json"
theorem reductionProof5249 : EqualModuloRelations reduction5249.relations reduction5249.input reduction5249.output := by lin_cert using reduction5249.terms
theorem substitutionProof5249 : IsMapEvaluation generatorImages reduction5249.relations [23,316] reduction5249.output := by lin_cert using reduction5249.terms
def image5250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5250 : InImage map_24_164 image5250 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5250 : Bundle := named_bundle% "RealMapCertificates/relations/basis5250.json"
theorem reductionProof5250 : EqualModuloRelations reduction5250.relations reduction5250.input reduction5250.output := by lin_cert using reduction5250.terms
theorem substitutionProof5250 : IsMapEvaluation generatorImages reduction5250.relations [8,8,318] reduction5250.output := by lin_cert using reduction5250.terms
def image5251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5251 : InImage map_24_164 image5251 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5251 : Bundle := named_bundle% "RealMapCertificates/relations/basis5251.json"
theorem reductionProof5251 : EqualModuloRelations reduction5251.relations reduction5251.input reduction5251.output := by lin_cert using reduction5251.terms
theorem substitutionProof5251 : IsMapEvaluation generatorImages reduction5251.relations [0,0,0,0,646] reduction5251.output := by lin_cert using reduction5251.terms
def map_24_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5373 : InImage map_24_165 image5373 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5373 : Bundle := named_bundle% "RealMapCertificates/relations/basis5373.json"
theorem reductionProof5373 : EqualModuloRelations reduction5373.relations reduction5373.input reduction5373.output := by lin_cert using reduction5373.terms
theorem substitutionProof5373 : IsMapEvaluation generatorImages reduction5373.relations [8,8,9,212] reduction5373.output := by lin_cert using reduction5373.terms
def map_24_166 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5460 : InImage map_24_166 image5460 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5460 : Bundle := named_bundle% "RealMapCertificates/relations/basis5460.json"
theorem reductionProof5460 : EqualModuloRelations reduction5460.relations reduction5460.input reduction5460.output := by lin_cert using reduction5460.terms
theorem substitutionProof5460 : IsMapEvaluation generatorImages reduction5460.relations [716] reduction5460.output := by lin_cert using reduction5460.terms
def image5461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5461 : InImage map_24_166 image5461 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5461 : Bundle := named_bundle% "RealMapCertificates/relations/basis5461.json"
theorem reductionProof5461 : EqualModuloRelations reduction5461.relations reduction5461.input reduction5461.output := by lin_cert using reduction5461.terms
theorem substitutionProof5461 : IsMapEvaluation generatorImages reduction5461.relations [13,13,13,13,83] reduction5461.output := by lin_cert using reduction5461.terms
def map_24_167 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5568 : InImage map_24_167 image5568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5568 : Bundle := named_bundle% "RealMapCertificates/relations/basis5568.json"
theorem reductionProof5568 : EqualModuloRelations reduction5568.relations reduction5568.input reduction5568.output := by lin_cert using reduction5568.terms
theorem substitutionProof5568 : IsMapEvaluation generatorImages reduction5568.relations [727] reduction5568.output := by lin_cert using reduction5568.terms
def image5569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5569 : InImage map_24_167 image5569 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5569 : Bundle := named_bundle% "RealMapCertificates/relations/basis5569.json"
theorem reductionProof5569 : EqualModuloRelations reduction5569.relations reduction5569.input reduction5569.output := by lin_cert using reduction5569.terms
theorem substitutionProof5569 : IsMapEvaluation generatorImages reduction5569.relations [23,346] reduction5569.output := by lin_cert using reduction5569.terms
def image5570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5570 : InImage map_24_167 image5570 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5570 : Bundle := named_bundle% "RealMapCertificates/relations/basis5570.json"
theorem reductionProof5570 : EqualModuloRelations reduction5570.relations reduction5570.input reduction5570.output := by lin_cert using reduction5570.terms
theorem substitutionProof5570 : IsMapEvaluation generatorImages reduction5570.relations [8,8,348] reduction5570.output := by lin_cert using reduction5570.terms
def image5571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5571 : InImage map_24_167 image5571 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5571 : Bundle := named_bundle% "RealMapCertificates/relations/basis5571.json"
theorem reductionProof5571 : EqualModuloRelations reduction5571.relations reduction5571.input reduction5571.output := by lin_cert using reduction5571.terms
theorem substitutionProof5571 : IsMapEvaluation generatorImages reduction5571.relations [0,0,64,187] reduction5571.output := by lin_cert using reduction5571.terms
def map_24_168 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image5687 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5687 : InImage map_24_168 image5687 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5687 : Bundle := named_bundle% "RealMapCertificates/relations/basis5687.json"
theorem reductionProof5687 : EqualModuloRelations reduction5687.relations reduction5687.input reduction5687.output := by lin_cert using reduction5687.terms
theorem substitutionProof5687 : IsMapEvaluation generatorImages reduction5687.relations [8,8,13,212] reduction5687.output := by lin_cert using reduction5687.terms
def image5688 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5688 : InImage map_24_168 image5688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5688 : Bundle := named_bundle% "RealMapCertificates/relations/basis5688.json"
theorem reductionProof5688 : EqualModuloRelations reduction5688.relations reduction5688.input reduction5688.output := by lin_cert using reduction5688.terms
theorem substitutionProof5688 : IsMapEvaluation generatorImages reduction5688.relations [0,0,0,702] reduction5688.output := by lin_cert using reduction5688.terms
def image5689 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5689 : InImage map_24_168 image5689 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5689 : Bundle := named_bundle% "RealMapCertificates/relations/basis5689.json"
theorem reductionProof5689 : EqualModuloRelations reduction5689.relations reduction5689.input reduction5689.output := by lin_cert using reduction5689.terms
theorem substitutionProof5689 : IsMapEvaluation generatorImages reduction5689.relations [0,0,0,64,188] reduction5689.output := by lin_cert using reduction5689.terms
def map_24_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5792 : InImage map_24_169 image5792 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5792 : Bundle := named_bundle% "RealMapCertificates/relations/basis5792.json"
theorem reductionProof5792 : EqualModuloRelations reduction5792.relations reduction5792.input reduction5792.output := by lin_cert using reduction5792.terms
theorem substitutionProof5792 : IsMapEvaluation generatorImages reduction5792.relations [1,1,64,187] reduction5792.output := by lin_cert using reduction5792.terms
def image5793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5793 : InImage map_24_169 image5793 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5793 : Bundle := named_bundle% "RealMapCertificates/relations/basis5793.json"
theorem reductionProof5793 : EqualModuloRelations reduction5793.relations reduction5793.input reduction5793.output := by lin_cert using reduction5793.terms
theorem substitutionProof5793 : IsMapEvaluation generatorImages reduction5793.relations [0,0,0,0,703] reduction5793.output := by lin_cert using reduction5793.terms
def map_24_170 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5902 : InImage map_24_170 image5902 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5902 : Bundle := named_bundle% "RealMapCertificates/relations/basis5902.json"
theorem reductionProof5902 : EqualModuloRelations reduction5902.relations reduction5902.input reduction5902.output := by lin_cert using reduction5902.terms
theorem substitutionProof5902 : IsMapEvaluation generatorImages reduction5902.relations [8,8,8,250] reduction5902.output := by lin_cert using reduction5902.terms
def image5903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5903 : InImage map_24_170 image5903 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5903 : Bundle := named_bundle% "RealMapCertificates/relations/basis5903.json"
theorem reductionProof5903 : EqualModuloRelations reduction5903.relations reduction5903.input reduction5903.output := by lin_cert using reduction5903.terms
theorem substitutionProof5903 : IsMapEvaluation generatorImages reduction5903.relations [0,0,0,0,717] reduction5903.output := by lin_cert using reduction5903.terms
def image5904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5904 : InImage map_24_170 image5904 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5904 : Bundle := named_bundle% "RealMapCertificates/relations/basis5904.json"
theorem reductionProof5904 : EqualModuloRelations reduction5904.relations reduction5904.input reduction5904.output := by lin_cert using reduction5904.terms
theorem substitutionProof5904 : IsMapEvaluation generatorImages reduction5904.relations [0,0,0,0,0,706] reduction5904.output := by lin_cert using reduction5904.terms
def map_24_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6037 : InImage map_24_171 image6037 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6037 : Bundle := named_bundle% "RealMapCertificates/relations/basis6037.json"
theorem reductionProof6037 : EqualModuloRelations reduction6037.relations reduction6037.input reduction6037.output := by lin_cert using reduction6037.terms
theorem substitutionProof6037 : IsMapEvaluation generatorImages reduction6037.relations [8,9,13,212] reduction6037.output := by lin_cert using reduction6037.terms
def image6038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6038 : InImage map_24_171 image6038 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6038 : Bundle := named_bundle% "RealMapCertificates/relations/basis6038.json"
theorem reductionProof6038 : EqualModuloRelations reduction6038.relations reduction6038.input reduction6038.output := by lin_cert using reduction6038.terms
theorem substitutionProof6038 : IsMapEvaluation generatorImages reduction6038.relations [0,0,8,69,138] reduction6038.output := by lin_cert using reduction6038.terms
def map_24_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6128 : InImage map_24_172 image6128 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6128 : Bundle := named_bundle% "RealMapCertificates/relations/basis6128.json"
theorem reductionProof6128 : EqualModuloRelations reduction6128.relations reduction6128.input reduction6128.output := by lin_cert using reduction6128.terms
theorem substitutionProof6128 : IsMapEvaluation generatorImages reduction6128.relations [13,538] reduction6128.output := by lin_cert using reduction6128.terms
def image6129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6129 : InImage map_24_172 image6129 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6129 : Bundle := named_bundle% "RealMapCertificates/relations/basis6129.json"
theorem reductionProof6129 : EqualModuloRelations reduction6129.relations reduction6129.input reduction6129.output := by lin_cert using reduction6129.terms
theorem substitutionProof6129 : IsMapEvaluation generatorImages reduction6129.relations [9,13,13,23,75] reduction6129.output := by lin_cert using reduction6129.terms
def map_24_173 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6238 : InImage map_24_173 image6238 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6238 : Bundle := named_bundle% "RealMapCertificates/relations/basis6238.json"
theorem reductionProof6238 : EqualModuloRelations reduction6238.relations reduction6238.input reduction6238.output := by lin_cert using reduction6238.terms
theorem substitutionProof6238 : IsMapEvaluation generatorImages reduction6238.relations [797] reduction6238.output := by lin_cert using reduction6238.terms
def image6239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6239 : InImage map_24_173 image6239 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6239 : Bundle := named_bundle% "RealMapCertificates/relations/basis6239.json"
theorem reductionProof6239 : EqualModuloRelations reduction6239.relations reduction6239.input reduction6239.output := by lin_cert using reduction6239.terms
theorem substitutionProof6239 : IsMapEvaluation generatorImages reduction6239.relations [8,8,8,261] reduction6239.output := by lin_cert using reduction6239.terms
def image6240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6240 : InImage map_24_173 image6240 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6240 : Bundle := named_bundle% "RealMapCertificates/relations/basis6240.json"
theorem reductionProof6240 : EqualModuloRelations reduction6240.relations reduction6240.input reduction6240.output := by lin_cert using reduction6240.terms
theorem substitutionProof6240 : IsMapEvaluation generatorImages reduction6240.relations [1,779] reduction6240.output := by lin_cert using reduction6240.terms
def map_24_174 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image6365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6365 : InImage map_24_174 image6365 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction6365 : Bundle := named_bundle% "RealMapCertificates/relations/basis6365.json"
theorem reductionProof6365 : EqualModuloRelations reduction6365.relations reduction6365.input reduction6365.output := by lin_cert using reduction6365.terms
theorem substitutionProof6365 : IsMapEvaluation generatorImages reduction6365.relations [812] reduction6365.output := by lin_cert using reduction6365.terms
def image6366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6366 : InImage map_24_174 image6366 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction6366 : Bundle := named_bundle% "RealMapCertificates/relations/basis6366.json"
theorem reductionProof6366 : EqualModuloRelations reduction6366.relations reduction6366.input reduction6366.output := by lin_cert using reduction6366.terms
theorem substitutionProof6366 : IsMapEvaluation generatorImages reduction6366.relations [811] reduction6366.output := by lin_cert using reduction6366.terms
def image6367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6367 : InImage map_24_174 image6367 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction6367 : Bundle := named_bundle% "RealMapCertificates/relations/basis6367.json"
theorem reductionProof6367 : EqualModuloRelations reduction6367.relations reduction6367.input reduction6367.output := by lin_cert using reduction6367.terms
theorem substitutionProof6367 : IsMapEvaluation generatorImages reduction6367.relations [13,13,303] reduction6367.output := by lin_cert using reduction6367.terms
def image6368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6368 : InImage map_24_174 image6368 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction6368 : Bundle := named_bundle% "RealMapCertificates/relations/basis6368.json"
theorem reductionProof6368 : EqualModuloRelations reduction6368.relations reduction6368.input reduction6368.output := by lin_cert using reduction6368.terms
theorem substitutionProof6368 : IsMapEvaluation generatorImages reduction6368.relations [8,13,13,212] reduction6368.output := by lin_cert using reduction6368.terms
def image6369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6369 : InImage map_24_174 image6369 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction6369 : Bundle := named_bundle% "RealMapCertificates/relations/basis6369.json"
theorem reductionProof6369 : EqualModuloRelations reduction6369.relations reduction6369.input reduction6369.output := by lin_cert using reduction6369.terms
theorem substitutionProof6369 : IsMapEvaluation generatorImages reduction6369.relations [0,0,8,69,147] reduction6369.output := by lin_cert using reduction6369.terms
def image6370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6370 : InImage map_24_174 image6370 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction6370 : Bundle := named_bundle% "RealMapCertificates/relations/basis6370.json"
theorem reductionProof6370 : EqualModuloRelations reduction6370.relations reduction6370.input reduction6370.output := by lin_cert using reduction6370.terms
theorem substitutionProof6370 : IsMapEvaluation generatorImages reduction6370.relations [0,0,0,0,64,209] reduction6370.output := by lin_cert using reduction6370.terms
def map_24_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6476 : InImage map_24_175 image6476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6476 : Bundle := named_bundle% "RealMapCertificates/relations/basis6476.json"
theorem reductionProof6476 : EqualModuloRelations reduction6476.relations reduction6476.input reduction6476.output := by lin_cert using reduction6476.terms
theorem substitutionProof6476 : IsMapEvaluation generatorImages reduction6476.relations [13,13,13,23,75] reduction6476.output := by lin_cert using reduction6476.terms
def image6477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6477 : InImage map_24_175 image6477 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6477 : Bundle := named_bundle% "RealMapCertificates/relations/basis6477.json"
theorem reductionProof6477 : EqualModuloRelations reduction6477.relations reduction6477.input reduction6477.output := by lin_cert using reduction6477.terms
theorem substitutionProof6477 : IsMapEvaluation generatorImages reduction6477.relations [0,0,0,0,0,760] reduction6477.output := by lin_cert using reduction6477.terms
def map_24_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6583 : InImage map_24_176 image6583 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6583 : Bundle := named_bundle% "RealMapCertificates/relations/basis6583.json"
theorem reductionProof6583 : EqualModuloRelations reduction6583.relations reduction6583.input reduction6583.output := by lin_cert using reduction6583.terms
theorem substitutionProof6583 : IsMapEvaluation generatorImages reduction6583.relations [8,627] reduction6583.output := by lin_cert using reduction6583.terms
def image6584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6584 : InImage map_24_176 image6584 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6584 : Bundle := named_bundle% "RealMapCertificates/relations/basis6584.json"
theorem reductionProof6584 : EqualModuloRelations reduction6584.relations reduction6584.input reduction6584.output := by lin_cert using reduction6584.terms
theorem substitutionProof6584 : IsMapEvaluation generatorImages reduction6584.relations [8,8,9,261] reduction6584.output := by lin_cert using reduction6584.terms
def map_24_177 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6718 : InImage map_24_177 image6718 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6718 : Bundle := named_bundle% "RealMapCertificates/relations/basis6718.json"
theorem reductionProof6718 : EqualModuloRelations reduction6718.relations reduction6718.input reduction6718.output := by lin_cert using reduction6718.terms
theorem substitutionProof6718 : IsMapEvaluation generatorImages reduction6718.relations [855] reduction6718.output := by lin_cert using reduction6718.terms
def image6719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6719 : InImage map_24_177 image6719 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6719 : Bundle := named_bundle% "RealMapCertificates/relations/basis6719.json"
theorem reductionProof6719 : EqualModuloRelations reduction6719.relations reduction6719.input reduction6719.output := by lin_cert using reduction6719.terms
theorem substitutionProof6719 : IsMapEvaluation generatorImages reduction6719.relations [854] reduction6719.output := by lin_cert using reduction6719.terms
def image6720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6720 : InImage map_24_177 image6720 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6720 : Bundle := named_bundle% "RealMapCertificates/relations/basis6720.json"
theorem reductionProof6720 : EqualModuloRelations reduction6720.relations reduction6720.input reduction6720.output := by lin_cert using reduction6720.terms
theorem substitutionProof6720 : IsMapEvaluation generatorImages reduction6720.relations [9,13,13,212] reduction6720.output := by lin_cert using reduction6720.terms
def image6721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6721 : InImage map_24_177 image6721 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6721 : Bundle := named_bundle% "RealMapCertificates/relations/basis6721.json"
theorem reductionProof6721 : EqualModuloRelations reduction6721.relations reduction6721.input reduction6721.output := by lin_cert using reduction6721.terms
theorem substitutionProof6721 : IsMapEvaluation generatorImages reduction6721.relations [0,832] reduction6721.output := by lin_cert using reduction6721.terms
def map_24_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6819 : InImage map_24_178 image6819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6819 : Bundle := named_bundle% "RealMapCertificates/relations/basis6819.json"
theorem reductionProof6819 : EqualModuloRelations reduction6819.relations reduction6819.input reduction6819.output := by lin_cert using reduction6819.terms
theorem substitutionProof6819 : IsMapEvaluation generatorImages reduction6819.relations [0,856] reduction6819.output := by lin_cert using reduction6819.terms
def map_24_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6944 : InImage map_24_179 image6944 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6944 : Bundle := named_bundle% "RealMapCertificates/relations/basis6944.json"
theorem reductionProof6944 : EqualModuloRelations reduction6944.relations reduction6944.input reduction6944.output := by lin_cert using reduction6944.terms
theorem substitutionProof6944 : IsMapEvaluation generatorImages reduction6944.relations [8,655] reduction6944.output := by lin_cert using reduction6944.terms
def image6945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6945 : InImage map_24_179 image6945 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6945 : Bundle := named_bundle% "RealMapCertificates/relations/basis6945.json"
theorem reductionProof6945 : EqualModuloRelations reduction6945.relations reduction6945.input reduction6945.output := by lin_cert using reduction6945.terms
theorem substitutionProof6945 : IsMapEvaluation generatorImages reduction6945.relations [8,8,13,261] reduction6945.output := by lin_cert using reduction6945.terms
def image6946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6946 : InImage map_24_179 image6946 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6946 : Bundle := named_bundle% "RealMapCertificates/relations/basis6946.json"
theorem reductionProof6946 : EqualModuloRelations reduction6946.relations reduction6946.input reduction6946.output := by lin_cert using reduction6946.terms
theorem substitutionProof6946 : IsMapEvaluation generatorImages reduction6946.relations [1,856] reduction6946.output := by lin_cert using reduction6946.terms
def map_24_180 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7086 : InImage map_24_180 image7086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7086 : Bundle := named_bundle% "RealMapCertificates/relations/basis7086.json"
theorem reductionProof7086 : EqualModuloRelations reduction7086.relations reduction7086.input reduction7086.output := by lin_cert using reduction7086.terms
theorem substitutionProof7086 : IsMapEvaluation generatorImages reduction7086.relations [13,13,13,212] reduction7086.output := by lin_cert using reduction7086.terms
def image7087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7087 : InImage map_24_180 image7087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7087 : Bundle := named_bundle% "RealMapCertificates/relations/basis7087.json"
theorem reductionProof7087 : EqualModuloRelations reduction7087.relations reduction7087.input reduction7087.output := by lin_cert using reduction7087.terms
theorem substitutionProof7087 : IsMapEvaluation generatorImages reduction7087.relations [9,23,286] reduction7087.output := by lin_cert using reduction7087.terms
def image7088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7088 : InImage map_24_180 image7088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7088 : Bundle := named_bundle% "RealMapCertificates/relations/basis7088.json"
theorem reductionProof7088 : EqualModuloRelations reduction7088.relations reduction7088.input reduction7088.output := by lin_cert using reduction7088.terms
theorem substitutionProof7088 : IsMapEvaluation generatorImages reduction7088.relations [8,667] reduction7088.output := by lin_cert using reduction7088.terms
def image7089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7089 : InImage map_24_180 image7089 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7089 : Bundle := named_bundle% "RealMapCertificates/relations/basis7089.json"
theorem reductionProof7089 : EqualModuloRelations reduction7089.relations reduction7089.input reduction7089.output := by lin_cert using reduction7089.terms
theorem substitutionProof7089 : IsMapEvaluation generatorImages reduction7089.relations [0,875] reduction7089.output := by lin_cert using reduction7089.terms
def image7090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7090 : InImage map_24_180 image7090 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7090 : Bundle := named_bundle% "RealMapCertificates/relations/basis7090.json"
theorem reductionProof7090 : EqualModuloRelations reduction7090.relations reduction7090.input reduction7090.output := by lin_cert using reduction7090.terms
theorem substitutionProof7090 : IsMapEvaluation generatorImages reduction7090.relations [0,874] reduction7090.output := by lin_cert using reduction7090.terms
def map_24_181 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7195 : InImage map_24_181 image7195 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7195 : Bundle := named_bundle% "RealMapCertificates/relations/basis7195.json"
theorem reductionProof7195 : EqualModuloRelations reduction7195.relations reduction7195.input reduction7195.output := by lin_cert using reduction7195.terms
theorem substitutionProof7195 : IsMapEvaluation generatorImages reduction7195.relations [13,13,13,13,134] reduction7195.output := by lin_cert using reduction7195.terms
def image7196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7196 : InImage map_24_181 image7196 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7196 : Bundle := named_bundle% "RealMapCertificates/relations/basis7196.json"
theorem reductionProof7196 : EqualModuloRelations reduction7196.relations reduction7196.input reduction7196.output := by lin_cert using reduction7196.terms
theorem substitutionProof7196 : IsMapEvaluation generatorImages reduction7196.relations [0,887] reduction7196.output := by lin_cert using reduction7196.terms
def image7197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7197 : InImage map_24_181 image7197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7197 : Bundle := named_bundle% "RealMapCertificates/relations/basis7197.json"
theorem reductionProof7197 : EqualModuloRelations reduction7197.relations reduction7197.input reduction7197.output := by lin_cert using reduction7197.terms
theorem substitutionProof7197 : IsMapEvaluation generatorImages reduction7197.relations [0,0,0,0,0,64,235] reduction7197.output := by lin_cert using reduction7197.terms
def image7198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7198 : InImage map_24_181 image7198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7198 : Bundle := named_bundle% "RealMapCertificates/relations/basis7198.json"
theorem reductionProof7198 : EqualModuloRelations reduction7198.relations reduction7198.input reduction7198.output := by lin_cert using reduction7198.terms
theorem substitutionProof7198 : IsMapEvaluation generatorImages reduction7198.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,743] reduction7198.output := by lin_cert using reduction7198.terms
def map_24_182 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7304 : InImage map_24_182 image7304 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7304 : Bundle := named_bundle% "RealMapCertificates/relations/basis7304.json"
theorem reductionProof7304 : EqualModuloRelations reduction7304.relations reduction7304.input reduction7304.output := by lin_cert using reduction7304.terms
theorem substitutionProof7304 : IsMapEvaluation generatorImages reduction7304.relations [900] reduction7304.output := by lin_cert using reduction7304.terms
def image7305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7305 : InImage map_24_182 image7305 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7305 : Bundle := named_bundle% "RealMapCertificates/relations/basis7305.json"
theorem reductionProof7305 : EqualModuloRelations reduction7305.relations reduction7305.input reduction7305.output := by lin_cert using reduction7305.terms
theorem substitutionProof7305 : IsMapEvaluation generatorImages reduction7305.relations [899] reduction7305.output := by lin_cert using reduction7305.terms
def image7306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7306 : InImage map_24_182 image7306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7306 : Bundle := named_bundle% "RealMapCertificates/relations/basis7306.json"
theorem reductionProof7306 : EqualModuloRelations reduction7306.relations reduction7306.input reduction7306.output := by lin_cert using reduction7306.terms
theorem substitutionProof7306 : IsMapEvaluation generatorImages reduction7306.relations [8,690] reduction7306.output := by lin_cert using reduction7306.terms
def image7307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7307 : InImage map_24_182 image7307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7307 : Bundle := named_bundle% "RealMapCertificates/relations/basis7307.json"
theorem reductionProof7307 : EqualModuloRelations reduction7307.relations reduction7307.input reduction7307.output := by lin_cert using reduction7307.terms
theorem substitutionProof7307 : IsMapEvaluation generatorImages reduction7307.relations [8,9,13,261] reduction7307.output := by lin_cert using reduction7307.terms
def image7308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7308 : InImage map_24_182 image7308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7308 : Bundle := named_bundle% "RealMapCertificates/relations/basis7308.json"
theorem reductionProof7308 : EqualModuloRelations reduction7308.relations reduction7308.input reduction7308.output := by lin_cert using reduction7308.terms
theorem substitutionProof7308 : IsMapEvaluation generatorImages reduction7308.relations [0,0,0,0,0,0,836] reduction7308.output := by lin_cert using reduction7308.terms
def map_24_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7457 : InImage map_24_183 image7457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7457 : Bundle := named_bundle% "RealMapCertificates/relations/basis7457.json"
theorem reductionProof7457 : EqualModuloRelations reduction7457.relations reduction7457.input reduction7457.output := by lin_cert using reduction7457.terms
theorem substitutionProof7457 : IsMapEvaluation generatorImages reduction7457.relations [13,23,286] reduction7457.output := by lin_cert using reduction7457.terms
def image7458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7458 : InImage map_24_183 image7458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7458 : Bundle := named_bundle% "RealMapCertificates/relations/basis7458.json"
theorem reductionProof7458 : EqualModuloRelations reduction7458.relations reduction7458.input reduction7458.output := by lin_cert using reduction7458.terms
theorem substitutionProof7458 : IsMapEvaluation generatorImages reduction7458.relations [8,704] reduction7458.output := by lin_cert using reduction7458.terms
def image7459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7459 : InImage map_24_183 image7459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7459 : Bundle := named_bundle% "RealMapCertificates/relations/basis7459.json"
theorem reductionProof7459 : EqualModuloRelations reduction7459.relations reduction7459.input reduction7459.output := by lin_cert using reduction7459.terms
theorem substitutionProof7459 : IsMapEvaluation generatorImages reduction7459.relations [0,903] reduction7459.output := by lin_cert using reduction7459.terms
def image7460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7460 : InImage map_24_183 image7460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7460 : Bundle := named_bundle% "RealMapCertificates/relations/basis7460.json"
theorem reductionProof7460 : EqualModuloRelations reduction7460.relations reduction7460.input reduction7460.output := by lin_cert using reduction7460.terms
theorem substitutionProof7460 : IsMapEvaluation generatorImages reduction7460.relations [0,901] reduction7460.output := by lin_cert using reduction7460.terms
end RealMapCertificates
