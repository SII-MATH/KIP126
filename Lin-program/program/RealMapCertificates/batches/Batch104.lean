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
  | 50 => [[4,4,4,7]]
  | 59 => []
  | 64 => []
  | 65 => [[2,4,4,4,4,4]]
  | 67 => []
  | 68 => []
  | 72 => []
  | 77 => [[4,4,4,4,8]]
  | 79 => []
  | 80 => []
  | 87 => [[3,4,4,4,4,4]]
  | 89 => []
  | 101 => []
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 181 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 261 => []
  | 279 => []
  | 308 => []
  | 324 => []
  | 335 => []
  | 359 => []
  | 408 => []
  | 418 => []
  | 473 => []
  | 475 => []
  | 618 => []
  | 628 => []
  | 629 => []
  | 677 => []
  | 690 => []
  | 738 => []
  | 832 => []
  | 876 => []
  | 901 => []
  | 922 => []
  | 929 => []
  | 930 => []
  | 941 => []
  | 959 => []
  | 978 => []
  | 979 => []
  | 998 => []
  | 1038 => []
  | 1049 => []
  | 1051 => []
  | 1062 => []
  | 1063 => []
  | 1081 => []
  | 1082 => []
  | 1083 => []
  | 1084 => []
  | 1104 => []
  | 1105 => []
  | 1123 => []
  | 1146 => []
  | 1147 => []
  | 1149 => []
  | 1150 => []
  | 1154 => []
  | 1170 => []
  | 1171 => []
  | 1175 => []
  | 1244 => []
  | 1245 => []
  | 1247 => []
  | 1257 => []
  | 1258 => []
  | 1263 => []
  | 1291 => []
  | 1305 => []
  | 1338 => []
  | 1386 => []
  | _ => []
def map_24_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7557 : InImage map_24_184 image7557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7557 : Bundle := named_bundle% "RealMapCertificates/relations/basis7557.json"
theorem reductionProof7557 : EqualModuloRelations reduction7557.relations reduction7557.input reduction7557.output := by lin_cert using reduction7557.terms
theorem substitutionProof7557 : IsMapEvaluation generatorImages reduction7557.relations [3,832] reduction7557.output := by lin_cert using reduction7557.terms
def image7558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7558 : InImage map_24_184 image7558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7558 : Bundle := named_bundle% "RealMapCertificates/relations/basis7558.json"
theorem reductionProof7558 : EqualModuloRelations reduction7558.relations reduction7558.input reduction7558.output := by lin_cert using reduction7558.terms
theorem substitutionProof7558 : IsMapEvaluation generatorImages reduction7558.relations [0,922] reduction7558.output := by lin_cert using reduction7558.terms
def image7559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7559 : InImage map_24_184 image7559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7559 : Bundle := named_bundle% "RealMapCertificates/relations/basis7559.json"
theorem reductionProof7559 : EqualModuloRelations reduction7559.relations reduction7559.input reduction7559.output := by lin_cert using reduction7559.terms
theorem substitutionProof7559 : IsMapEvaluation generatorImages reduction7559.relations [0,2,876] reduction7559.output := by lin_cert using reduction7559.terms
def map_24_185 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7672 : InImage map_24_185 image7672 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7672 : Bundle := named_bundle% "RealMapCertificates/relations/basis7672.json"
theorem reductionProof7672 : EqualModuloRelations reduction7672.relations reduction7672.input reduction7672.output := by lin_cert using reduction7672.terms
theorem substitutionProof7672 : IsMapEvaluation generatorImages reduction7672.relations [64,279] reduction7672.output := by lin_cert using reduction7672.terms
def image7673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7673 : InImage map_24_185 image7673 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7673 : Bundle := named_bundle% "RealMapCertificates/relations/basis7673.json"
theorem reductionProof7673 : EqualModuloRelations reduction7673.relations reduction7673.input reduction7673.output := by lin_cert using reduction7673.terms
theorem substitutionProof7673 : IsMapEvaluation generatorImages reduction7673.relations [9,690] reduction7673.output := by lin_cert using reduction7673.terms
def image7674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7674 : InImage map_24_185 image7674 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7674 : Bundle := named_bundle% "RealMapCertificates/relations/basis7674.json"
theorem reductionProof7674 : EqualModuloRelations reduction7674.relations reduction7674.input reduction7674.output := by lin_cert using reduction7674.terms
theorem substitutionProof7674 : IsMapEvaluation generatorImages reduction7674.relations [8,13,13,261] reduction7674.output := by lin_cert using reduction7674.terms
def image7675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7675 : InImage map_24_185 image7675 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7675 : Bundle := named_bundle% "RealMapCertificates/relations/basis7675.json"
theorem reductionProof7675 : EqualModuloRelations reduction7675.relations reduction7675.input reduction7675.output := by lin_cert using reduction7675.terms
theorem substitutionProof7675 : IsMapEvaluation generatorImages reduction7675.relations [0,929] reduction7675.output := by lin_cert using reduction7675.terms
def map_24_186 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7823 : InImage map_24_186 image7823 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7823 : Bundle := named_bundle% "RealMapCertificates/relations/basis7823.json"
theorem reductionProof7823 : EqualModuloRelations reduction7823.relations reduction7823.input reduction7823.output := by lin_cert using reduction7823.terms
theorem substitutionProof7823 : IsMapEvaluation generatorImages reduction7823.relations [13,13,23,189] reduction7823.output := by lin_cert using reduction7823.terms
def image7824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7824 : InImage map_24_186 image7824 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7824 : Bundle := named_bundle% "RealMapCertificates/relations/basis7824.json"
theorem reductionProof7824 : EqualModuloRelations reduction7824.relations reduction7824.input reduction7824.output := by lin_cert using reduction7824.terms
theorem substitutionProof7824 : IsMapEvaluation generatorImages reduction7824.relations [8,738] reduction7824.output := by lin_cert using reduction7824.terms
def image7825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7825 : InImage map_24_186 image7825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7825 : Bundle := named_bundle% "RealMapCertificates/relations/basis7825.json"
theorem reductionProof7825 : EqualModuloRelations reduction7825.relations reduction7825.input reduction7825.output := by lin_cert using reduction7825.terms
theorem substitutionProof7825 : IsMapEvaluation generatorImages reduction7825.relations [2,901] reduction7825.output := by lin_cert using reduction7825.terms
def image7826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7826 : InImage map_24_186 image7826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7826 : Bundle := named_bundle% "RealMapCertificates/relations/basis7826.json"
theorem reductionProof7826 : EqualModuloRelations reduction7826.relations reduction7826.input reduction7826.output := by lin_cert using reduction7826.terms
theorem substitutionProof7826 : IsMapEvaluation generatorImages reduction7826.relations [0,941] reduction7826.output := by lin_cert using reduction7826.terms
def map_24_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7910 : InImage map_24_187 image7910 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7910 : Bundle := named_bundle% "RealMapCertificates/relations/basis7910.json"
theorem reductionProof7910 : EqualModuloRelations reduction7910.relations reduction7910.input reduction7910.output := by lin_cert using reduction7910.terms
theorem substitutionProof7910 : IsMapEvaluation generatorImages reduction7910.relations [1,941] reduction7910.output := by lin_cert using reduction7910.terms
def map_24_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8018 : InImage map_24_188 image8018 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8018 : Bundle := named_bundle% "RealMapCertificates/relations/basis8018.json"
theorem reductionProof8018 : EqualModuloRelations reduction8018.relations reduction8018.input reduction8018.output := by lin_cert using reduction8018.terms
theorem substitutionProof8018 : IsMapEvaluation generatorImages reduction8018.relations [978] reduction8018.output := by lin_cert using reduction8018.terms
def image8019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8019 : InImage map_24_188 image8019 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8019 : Bundle := named_bundle% "RealMapCertificates/relations/basis8019.json"
theorem reductionProof8019 : EqualModuloRelations reduction8019.relations reduction8019.input reduction8019.output := by lin_cert using reduction8019.terms
theorem substitutionProof8019 : IsMapEvaluation generatorImages reduction8019.relations [13,690] reduction8019.output := by lin_cert using reduction8019.terms
def image8020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8020 : InImage map_24_188 image8020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8020 : Bundle := named_bundle% "RealMapCertificates/relations/basis8020.json"
theorem reductionProof8020 : EqualModuloRelations reduction8020.relations reduction8020.input reduction8020.output := by lin_cert using reduction8020.terms
theorem substitutionProof8020 : IsMapEvaluation generatorImages reduction8020.relations [9,13,13,261] reduction8020.output := by lin_cert using reduction8020.terms
def image8021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8021 : InImage map_24_188 image8021 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8021 : Bundle := named_bundle% "RealMapCertificates/relations/basis8021.json"
theorem reductionProof8021 : EqualModuloRelations reduction8021.relations reduction8021.input reduction8021.output := by lin_cert using reduction8021.terms
theorem substitutionProof8021 : IsMapEvaluation generatorImages reduction8021.relations [8,64,209] reduction8021.output := by lin_cert using reduction8021.terms
def image8022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8022 : InImage map_24_188 image8022 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8022 : Bundle := named_bundle% "RealMapCertificates/relations/basis8022.json"
theorem reductionProof8022 : EqualModuloRelations reduction8022.relations reduction8022.input reduction8022.output := by lin_cert using reduction8022.terms
theorem substitutionProof8022 : IsMapEvaluation generatorImages reduction8022.relations [0,3,876] reduction8022.output := by lin_cert using reduction8022.terms
def map_24_189 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8175 : InImage map_24_189 image8175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8175 : Bundle := named_bundle% "RealMapCertificates/relations/basis8175.json"
theorem reductionProof8175 : EqualModuloRelations reduction8175.relations reduction8175.input reduction8175.output := by lin_cert using reduction8175.terms
theorem substitutionProof8175 : IsMapEvaluation generatorImages reduction8175.relations [998] reduction8175.output := by lin_cert using reduction8175.terms
def image8176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8176 : InImage map_24_189 image8176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8176 : Bundle := named_bundle% "RealMapCertificates/relations/basis8176.json"
theorem reductionProof8176 : EqualModuloRelations reduction8176.relations reduction8176.input reduction8176.output := by lin_cert using reduction8176.terms
theorem substitutionProof8176 : IsMapEvaluation generatorImages reduction8176.relations [13,13,473] reduction8176.output := by lin_cert using reduction8176.terms
def image8177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8177 : InImage map_24_189 image8177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8177 : Bundle := named_bundle% "RealMapCertificates/relations/basis8177.json"
theorem reductionProof8177 : EqualModuloRelations reduction8177.relations reduction8177.input reduction8177.output := by lin_cert using reduction8177.terms
theorem substitutionProof8177 : IsMapEvaluation generatorImages reduction8177.relations [8,80,188] reduction8177.output := by lin_cert using reduction8177.terms
def image8178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8178 : InImage map_24_189 image8178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8178 : Bundle := named_bundle% "RealMapCertificates/relations/basis8178.json"
theorem reductionProof8178 : EqualModuloRelations reduction8178.relations reduction8178.input reduction8178.output := by lin_cert using reduction8178.terms
theorem substitutionProof8178 : IsMapEvaluation generatorImages reduction8178.relations [8,17,475] reduction8178.output := by lin_cert using reduction8178.terms
def image8179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8179 : InImage map_24_189 image8179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8179 : Bundle := named_bundle% "RealMapCertificates/relations/basis8179.json"
theorem reductionProof8179 : EqualModuloRelations reduction8179.relations reduction8179.input reduction8179.output := by lin_cert using reduction8179.terms
theorem substitutionProof8179 : IsMapEvaluation generatorImages reduction8179.relations [2,941] reduction8179.output := by lin_cert using reduction8179.terms
def map_24_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8272 : InImage map_24_190 image8272 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8272 : Bundle := named_bundle% "RealMapCertificates/relations/basis8272.json"
theorem reductionProof8272 : EqualModuloRelations reduction8272.relations reduction8272.input reduction8272.output := by lin_cert using reduction8272.terms
theorem substitutionProof8272 : IsMapEvaluation generatorImages reduction8272.relations [1,979] reduction8272.output := by lin_cert using reduction8272.terms
def map_24_191 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8399 : InImage map_24_191 image8399 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8399 : Bundle := named_bundle% "RealMapCertificates/relations/basis8399.json"
theorem reductionProof8399 : EqualModuloRelations reduction8399.relations reduction8399.input reduction8399.output := by lin_cert using reduction8399.terms
theorem substitutionProof8399 : IsMapEvaluation generatorImages reduction8399.relations [13,13,13,261] reduction8399.output := by lin_cert using reduction8399.terms
def image8400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8400 : InImage map_24_191 image8400 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8400 : Bundle := named_bundle% "RealMapCertificates/relations/basis8400.json"
theorem reductionProof8400 : EqualModuloRelations reduction8400.relations reduction8400.input reduction8400.output := by lin_cert using reduction8400.terms
theorem substitutionProof8400 : IsMapEvaluation generatorImages reduction8400.relations [8,72,209] reduction8400.output := by lin_cert using reduction8400.terms
def image8401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8401 : InImage map_24_191 image8401 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8401 : Bundle := named_bundle% "RealMapCertificates/relations/basis8401.json"
theorem reductionProof8401 : EqualModuloRelations reduction8401.relations reduction8401.input reduction8401.output := by lin_cert using reduction8401.terms
theorem substitutionProof8401 : IsMapEvaluation generatorImages reduction8401.relations [1,64,308] reduction8401.output := by lin_cert using reduction8401.terms
def map_24_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8547 : InImage map_24_192 image8547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8547 : Bundle := named_bundle% "RealMapCertificates/relations/basis8547.json"
theorem reductionProof8547 : EqualModuloRelations reduction8547.relations reduction8547.input reduction8547.output := by lin_cert using reduction8547.terms
theorem substitutionProof8547 : IsMapEvaluation generatorImages reduction8547.relations [9,80,188] reduction8547.output := by lin_cert using reduction8547.terms
def image8548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8548 : InImage map_24_192 image8548 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8548 : Bundle := named_bundle% "RealMapCertificates/relations/basis8548.json"
theorem reductionProof8548 : EqualModuloRelations reduction8548.relations reduction8548.input reduction8548.output := by lin_cert using reduction8548.terms
theorem substitutionProof8548 : IsMapEvaluation generatorImages reduction8548.relations [7,832] reduction8548.output := by lin_cert using reduction8548.terms
def image8549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8549 : InImage map_24_192 image8549 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8549 : Bundle := named_bundle% "RealMapCertificates/relations/basis8549.json"
theorem reductionProof8549 : EqualModuloRelations reduction8549.relations reduction8549.input reduction8549.output := by lin_cert using reduction8549.terms
theorem substitutionProof8549 : IsMapEvaluation generatorImages reduction8549.relations [3,929] reduction8549.output := by lin_cert using reduction8549.terms
def map_24_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8643 : InImage map_24_193 image8643 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8643 : Bundle := named_bundle% "RealMapCertificates/relations/basis8643.json"
theorem reductionProof8643 : EqualModuloRelations reduction8643.relations reduction8643.input reduction8643.output := by lin_cert using reduction8643.terms
theorem substitutionProof8643 : IsMapEvaluation generatorImages reduction8643.relations [0,1049] reduction8643.output := by lin_cert using reduction8643.terms
def map_24_194 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8780 : InImage map_24_194 image8780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8780 : Bundle := named_bundle% "RealMapCertificates/relations/basis8780.json"
theorem reductionProof8780 : EqualModuloRelations reduction8780.relations reduction8780.input reduction8780.output := by lin_cert using reduction8780.terms
theorem substitutionProof8780 : IsMapEvaluation generatorImages reduction8780.relations [1081] reduction8780.output := by lin_cert using reduction8780.terms
def image8781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8781 : InImage map_24_194 image8781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8781 : Bundle := named_bundle% "RealMapCertificates/relations/basis8781.json"
theorem reductionProof8781 : EqualModuloRelations reduction8781.relations reduction8781.input reduction8781.output := by lin_cert using reduction8781.terms
theorem substitutionProof8781 : IsMapEvaluation generatorImages reduction8781.relations [23,628] reduction8781.output := by lin_cert using reduction8781.terms
def image8782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8782 : InImage map_24_194 image8782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8782 : Bundle := named_bundle% "RealMapCertificates/relations/basis8782.json"
theorem reductionProof8782 : EqualModuloRelations reduction8782.relations reduction8782.input reduction8782.output := by lin_cert using reduction8782.terms
theorem substitutionProof8782 : IsMapEvaluation generatorImages reduction8782.relations [8,79,209] reduction8782.output := by lin_cert using reduction8782.terms
def image8783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8783 : InImage map_24_194 image8783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8783 : Bundle := named_bundle% "RealMapCertificates/relations/basis8783.json"
theorem reductionProof8783 : EqualModuloRelations reduction8783.relations reduction8783.input reduction8783.output := by lin_cert using reduction8783.terms
theorem substitutionProof8783 : IsMapEvaluation generatorImages reduction8783.relations [0,1063] reduction8783.output := by lin_cert using reduction8783.terms
def image8784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8784 : InImage map_24_194 image8784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8784 : Bundle := named_bundle% "RealMapCertificates/relations/basis8784.json"
theorem reductionProof8784 : EqualModuloRelations reduction8784.relations reduction8784.input reduction8784.output := by lin_cert using reduction8784.terms
theorem substitutionProof8784 : IsMapEvaluation generatorImages reduction8784.relations [0,0,65,324] reduction8784.output := by lin_cert using reduction8784.terms
def map_24_195 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8950 : InImage map_24_195 image8950 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8950 : Bundle := named_bundle% "RealMapCertificates/relations/basis8950.json"
theorem reductionProof8950 : EqualModuloRelations reduction8950.relations reduction8950.input reduction8950.output := by lin_cert using reduction8950.terms
theorem substitutionProof8950 : IsMapEvaluation generatorImages reduction8950.relations [13,80,188] reduction8950.output := by lin_cert using reduction8950.terms
def image8951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8951 : InImage map_24_195 image8951 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8951 : Bundle := named_bundle% "RealMapCertificates/relations/basis8951.json"
theorem reductionProof8951 : EqualModuloRelations reduction8951.relations reduction8951.input reduction8951.output := by lin_cert using reduction8951.terms
theorem substitutionProof8951 : IsMapEvaluation generatorImages reduction8951.relations [4,930] reduction8951.output := by lin_cert using reduction8951.terms
def image8952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8952 : InImage map_24_195 image8952 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8952 : Bundle := named_bundle% "RealMapCertificates/relations/basis8952.json"
theorem reductionProof8952 : EqualModuloRelations reduction8952.relations reduction8952.input reduction8952.output := by lin_cert using reduction8952.terms
theorem substitutionProof8952 : IsMapEvaluation generatorImages reduction8952.relations [1,1062] reduction8952.output := by lin_cert using reduction8952.terms
def image8953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8953 : InImage map_24_195 image8953 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8953 : Bundle := named_bundle% "RealMapCertificates/relations/basis8953.json"
theorem reductionProof8953 : EqualModuloRelations reduction8953.relations reduction8953.input reduction8953.output := by lin_cert using reduction8953.terms
theorem substitutionProof8953 : IsMapEvaluation generatorImages reduction8953.relations [0,1082] reduction8953.output := by lin_cert using reduction8953.terms
def image8954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8954 : InImage map_24_195 image8954 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8954 : Bundle := named_bundle% "RealMapCertificates/relations/basis8954.json"
theorem reductionProof8954 : EqualModuloRelations reduction8954.relations reduction8954.input reduction8954.output := by lin_cert using reduction8954.terms
theorem substitutionProof8954 : IsMapEvaluation generatorImages reduction8954.relations [0,0,0,1051] reduction8954.output := by lin_cert using reduction8954.terms
def map_24_196 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9050 : InImage map_24_196 image9050 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9050 : Bundle := named_bundle% "RealMapCertificates/relations/basis9050.json"
theorem reductionProof9050 : EqualModuloRelations reduction9050.relations reduction9050.input reduction9050.output := by lin_cert using reduction9050.terms
theorem substitutionProof9050 : IsMapEvaluation generatorImages reduction9050.relations [1104] reduction9050.output := by lin_cert using reduction9050.terms
def image9051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9051 : InImage map_24_196 image9051 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9051 : Bundle := named_bundle% "RealMapCertificates/relations/basis9051.json"
theorem reductionProof9051 : EqualModuloRelations reduction9051.relations reduction9051.input reduction9051.output := by lin_cert using reduction9051.terms
theorem substitutionProof9051 : IsMapEvaluation generatorImages reduction9051.relations [1,1082] reduction9051.output := by lin_cert using reduction9051.terms
def image9052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9052 : InImage map_24_196 image9052 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9052 : Bundle := named_bundle% "RealMapCertificates/relations/basis9052.json"
theorem reductionProof9052 : EqualModuloRelations reduction9052.relations reduction9052.input reduction9052.output := by lin_cert using reduction9052.terms
theorem substitutionProof9052 : IsMapEvaluation generatorImages reduction9052.relations [0,0,1084] reduction9052.output := by lin_cert using reduction9052.terms
def image9053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9053 : InImage map_24_196 image9053 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9053 : Bundle := named_bundle% "RealMapCertificates/relations/basis9053.json"
theorem reductionProof9053 : EqualModuloRelations reduction9053.relations reduction9053.input reduction9053.output := by lin_cert using reduction9053.terms
theorem substitutionProof9053 : IsMapEvaluation generatorImages reduction9053.relations [0,0,1083] reduction9053.output := by lin_cert using reduction9053.terms
def map_24_197 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9211 : InImage map_24_197 image9211 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9211 : Bundle := named_bundle% "RealMapCertificates/relations/basis9211.json"
theorem reductionProof9211 : EqualModuloRelations reduction9211.relations reduction9211.input reduction9211.output := by lin_cert using reduction9211.terms
theorem substitutionProof9211 : IsMapEvaluation generatorImages reduction9211.relations [1123] reduction9211.output := by lin_cert using reduction9211.terms
def image9212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9212 : InImage map_24_197 image9212 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9212 : Bundle := named_bundle% "RealMapCertificates/relations/basis9212.json"
theorem reductionProof9212 : EqualModuloRelations reduction9212.relations reduction9212.input reduction9212.output := by lin_cert using reduction9212.terms
theorem substitutionProof9212 : IsMapEvaluation generatorImages reduction9212.relations [13,13,13,13,181] reduction9212.output := by lin_cert using reduction9212.terms
def image9213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9213 : InImage map_24_197 image9213 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9213 : Bundle := named_bundle% "RealMapCertificates/relations/basis9213.json"
theorem reductionProof9213 : EqualModuloRelations reduction9213.relations reduction9213.input reduction9213.output := by lin_cert using reduction9213.terms
theorem substitutionProof9213 : IsMapEvaluation generatorImages reduction9213.relations [8,89,209] reduction9213.output := by lin_cert using reduction9213.terms
def image9214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9214 : InImage map_24_197 image9214 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9214 : Bundle := named_bundle% "RealMapCertificates/relations/basis9214.json"
theorem reductionProof9214 : EqualModuloRelations reduction9214.relations reduction9214.input reduction9214.output := by lin_cert using reduction9214.terms
theorem substitutionProof9214 : IsMapEvaluation generatorImages reduction9214.relations [0,1105] reduction9214.output := by lin_cert using reduction9214.terms
def image9215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9215 : InImage map_24_197 image9215 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9215 : Bundle := named_bundle% "RealMapCertificates/relations/basis9215.json"
theorem reductionProof9215 : EqualModuloRelations reduction9215.relations reduction9215.input reduction9215.output := by lin_cert using reduction9215.terms
theorem substitutionProof9215 : IsMapEvaluation generatorImages reduction9215.relations [0,67,359] reduction9215.output := by lin_cert using reduction9215.terms
def map_24_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9396 : InImage map_24_198 image9396 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9396 : Bundle := named_bundle% "RealMapCertificates/relations/basis9396.json"
theorem reductionProof9396 : EqualModuloRelations reduction9396.relations reduction9396.input reduction9396.output := by lin_cert using reduction9396.terms
theorem substitutionProof9396 : IsMapEvaluation generatorImages reduction9396.relations [13,13,13,13,190] reduction9396.output := by lin_cert using reduction9396.terms
def image9397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9397 : InImage map_24_198 image9397 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9397 : Bundle := named_bundle% "RealMapCertificates/relations/basis9397.json"
theorem reductionProof9397 : EqualModuloRelations reduction9397.relations reduction9397.input reduction9397.output := by lin_cert using reduction9397.terms
theorem substitutionProof9397 : IsMapEvaluation generatorImages reduction9397.relations [1,1,1083] reduction9397.output := by lin_cert using reduction9397.terms
def image9398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9398 : InImage map_24_198 image9398 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9398 : Bundle := named_bundle% "RealMapCertificates/relations/basis9398.json"
theorem reductionProof9398 : EqualModuloRelations reduction9398.relations reduction9398.input reduction9398.output := by lin_cert using reduction9398.terms
theorem substitutionProof9398 : IsMapEvaluation generatorImages reduction9398.relations [0,0,68,359] reduction9398.output := by lin_cert using reduction9398.terms
def image9399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9399 : InImage map_24_198 image9399 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9399 : Bundle := named_bundle% "RealMapCertificates/relations/basis9399.json"
theorem reductionProof9399 : EqualModuloRelations reduction9399.relations reduction9399.input reduction9399.output := by lin_cert using reduction9399.terms
theorem substitutionProof9399 : IsMapEvaluation generatorImages reduction9399.relations [0,0,0,0,0,0,0,0,0,0,59,324] reduction9399.output := by lin_cert using reduction9399.terms
def map_24_199 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9516 : InImage map_24_199 image9516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9516 : Bundle := named_bundle% "RealMapCertificates/relations/basis9516.json"
theorem reductionProof9516 : EqualModuloRelations reduction9516.relations reduction9516.input reduction9516.output := by lin_cert using reduction9516.terms
theorem substitutionProof9516 : IsMapEvaluation generatorImages reduction9516.relations [1170] reduction9516.output := by lin_cert using reduction9516.terms
def image9517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9517 : InImage map_24_199 image9517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9517 : Bundle := named_bundle% "RealMapCertificates/relations/basis9517.json"
theorem reductionProof9517 : EqualModuloRelations reduction9517.relations reduction9517.input reduction9517.output := by lin_cert using reduction9517.terms
theorem substitutionProof9517 : IsMapEvaluation generatorImages reduction9517.relations [87,324] reduction9517.output := by lin_cert using reduction9517.terms
def image9518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9518 : InImage map_24_199 image9518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9518 : Bundle := named_bundle% "RealMapCertificates/relations/basis9518.json"
theorem reductionProof9518 : EqualModuloRelations reduction9518.relations reduction9518.input reduction9518.output := by lin_cert using reduction9518.terms
theorem substitutionProof9518 : IsMapEvaluation generatorImages reduction9518.relations [0,1146] reduction9518.output := by lin_cert using reduction9518.terms
def image9519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9519 : InImage map_24_199 image9519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9519 : Bundle := named_bundle% "RealMapCertificates/relations/basis9519.json"
theorem reductionProof9519 : EqualModuloRelations reduction9519.relations reduction9519.input reduction9519.output := by lin_cert using reduction9519.terms
theorem substitutionProof9519 : IsMapEvaluation generatorImages reduction9519.relations [0,2,1083] reduction9519.output := by lin_cert using reduction9519.terms
def map_24_200 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9678 : InImage map_24_200 image9678 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9678 : Bundle := named_bundle% "RealMapCertificates/relations/basis9678.json"
theorem reductionProof9678 : EqualModuloRelations reduction9678.relations reduction9678.input reduction9678.output := by lin_cert using reduction9678.terms
theorem substitutionProof9678 : IsMapEvaluation generatorImages reduction9678.relations [8,101,209] reduction9678.output := by lin_cert using reduction9678.terms
def image9679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9679 : InImage map_24_200 image9679 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9679 : Bundle := named_bundle% "RealMapCertificates/relations/basis9679.json"
theorem reductionProof9679 : EqualModuloRelations reduction9679.relations reduction9679.input reduction9679.output := by lin_cert using reduction9679.terms
theorem substitutionProof9679 : IsMapEvaluation generatorImages reduction9679.relations [0,1171] reduction9679.output := by lin_cert using reduction9679.terms
def image9680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9680 : InImage map_24_200 image9680 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9680 : Bundle := named_bundle% "RealMapCertificates/relations/basis9680.json"
theorem reductionProof9680 : EqualModuloRelations reduction9680.relations reduction9680.input reduction9680.output := by lin_cert using reduction9680.terms
theorem substitutionProof9680 : IsMapEvaluation generatorImages reduction9680.relations [0,64,418] reduction9680.output := by lin_cert using reduction9680.terms
def image9681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9681 : InImage map_24_200 image9681 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9681 : Bundle := named_bundle% "RealMapCertificates/relations/basis9681.json"
theorem reductionProof9681 : EqualModuloRelations reduction9681.relations reduction9681.input reduction9681.output := by lin_cert using reduction9681.terms
theorem substitutionProof9681 : IsMapEvaluation generatorImages reduction9681.relations [0,0,1147] reduction9681.output := by lin_cert using reduction9681.terms
def image9682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9682 : InImage map_24_200 image9682 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9682 : Bundle := named_bundle% "RealMapCertificates/relations/basis9682.json"
theorem reductionProof9682 : EqualModuloRelations reduction9682.relations reduction9682.input reduction9682.output := by lin_cert using reduction9682.terms
theorem substitutionProof9682 : IsMapEvaluation generatorImages reduction9682.relations [0,0,0,77,324] reduction9682.output := by lin_cert using reduction9682.terms
def map_24_201 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9878 : InImage map_24_201 image9878 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9878 : Bundle := named_bundle% "RealMapCertificates/relations/basis9878.json"
theorem reductionProof9878 : EqualModuloRelations reduction9878.relations reduction9878.input reduction9878.output := by lin_cert using reduction9878.terms
theorem substitutionProof9878 : IsMapEvaluation generatorImages reduction9878.relations [7,941] reduction9878.output := by lin_cert using reduction9878.terms
def image9879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9879 : InImage map_24_201 image9879 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9879 : Bundle := named_bundle% "RealMapCertificates/relations/basis9879.json"
theorem reductionProof9879 : EqualModuloRelations reduction9879.relations reduction9879.input reduction9879.output := by lin_cert using reduction9879.terms
theorem substitutionProof9879 : IsMapEvaluation generatorImages reduction9879.relations [1,1171] reduction9879.output := by lin_cert using reduction9879.terms
def image9880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9880 : InImage map_24_201 image9880 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9880 : Bundle := named_bundle% "RealMapCertificates/relations/basis9880.json"
theorem reductionProof9880 : EqualModuloRelations reduction9880.relations reduction9880.input reduction9880.output := by lin_cert using reduction9880.terms
theorem substitutionProof9880 : IsMapEvaluation generatorImages reduction9880.relations [0,0,0,1149] reduction9880.output := by lin_cert using reduction9880.terms
def map_24_202 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9996 : InImage map_24_202 image9996 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9996 : Bundle := named_bundle% "RealMapCertificates/relations/basis9996.json"
theorem reductionProof9996 : EqualModuloRelations reduction9996.relations reduction9996.input reduction9996.output := by lin_cert using reduction9996.terms
theorem substitutionProof9996 : IsMapEvaluation generatorImages reduction9996.relations [13,13,13,335] reduction9996.output := by lin_cert using reduction9996.terms
def image9997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9997 : InImage map_24_202 image9997 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9997 : Bundle := named_bundle% "RealMapCertificates/relations/basis9997.json"
theorem reductionProof9997 : EqualModuloRelations reduction9997.relations reduction9997.input reduction9997.output := by lin_cert using reduction9997.terms
theorem substitutionProof9997 : IsMapEvaluation generatorImages reduction9997.relations [3,1082] reduction9997.output := by lin_cert using reduction9997.terms
def image9998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9998 : InImage map_24_202 image9998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9998 : Bundle := named_bundle% "RealMapCertificates/relations/basis9998.json"
theorem reductionProof9998 : EqualModuloRelations reduction9998.relations reduction9998.input reduction9998.output := by lin_cert using reduction9998.terms
theorem substitutionProof9998 : IsMapEvaluation generatorImages reduction9998.relations [0,0,7,930] reduction9998.output := by lin_cert using reduction9998.terms
def image9999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9999 : InImage map_24_202 image9999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9999 : Bundle := named_bundle% "RealMapCertificates/relations/basis9999.json"
theorem reductionProof9999 : EqualModuloRelations reduction9999.relations reduction9999.input reduction9999.output := by lin_cert using reduction9999.terms
theorem substitutionProof9999 : IsMapEvaluation generatorImages reduction9999.relations [0,0,0,0,1150] reduction9999.output := by lin_cert using reduction9999.terms
def map_24_203 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10179 : InImage map_24_203 image10179 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10179 : Bundle := named_bundle% "RealMapCertificates/relations/basis10179.json"
theorem reductionProof10179 : EqualModuloRelations reduction10179.relations reduction10179.input reduction10179.output := by lin_cert using reduction10179.terms
theorem substitutionProof10179 : IsMapEvaluation generatorImages reduction10179.relations [9,101,209] reduction10179.output := by lin_cert using reduction10179.terms
def map_24_204 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10376 : InImage map_24_204 image10376 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10376 : Bundle := named_bundle% "RealMapCertificates/relations/basis10376.json"
theorem reductionProof10376 : EqualModuloRelations reduction10376.relations reduction10376.input reduction10376.output := by lin_cert using reduction10376.terms
theorem substitutionProof10376 : IsMapEvaluation generatorImages reduction10376.relations [187,187] reduction10376.output := by lin_cert using reduction10376.terms
def image10377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10377 : InImage map_24_204 image10377 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10377 : Bundle := named_bundle% "RealMapCertificates/relations/basis10377.json"
theorem reductionProof10377 : EqualModuloRelations reduction10377.relations reduction10377.input reduction10377.output := by lin_cert using reduction10377.terms
theorem substitutionProof10377 : IsMapEvaluation generatorImages reduction10377.relations [9,13,13,408] reduction10377.output := by lin_cert using reduction10377.terms
def image10378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10378 : InImage map_24_204 image10378 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10378 : Bundle := named_bundle% "RealMapCertificates/relations/basis10378.json"
theorem reductionProof10378 : EqualModuloRelations reduction10378.relations reduction10378.input reduction10378.output := by lin_cert using reduction10378.terms
theorem substitutionProof10378 : IsMapEvaluation generatorImages reduction10378.relations [0,0,0,0,0,0,1154] reduction10378.output := by lin_cert using reduction10378.terms
def map_24_205 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10519 : InImage map_24_205 image10519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10519 : Bundle := named_bundle% "RealMapCertificates/relations/basis10519.json"
theorem reductionProof10519 : EqualModuloRelations reduction10519.relations reduction10519.input reduction10519.output := by lin_cert using reduction10519.terms
theorem substitutionProof10519 : IsMapEvaluation generatorImages reduction10519.relations [1291] reduction10519.output := by lin_cert using reduction10519.terms
def image10520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10520 : InImage map_24_205 image10520 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10520 : Bundle := named_bundle% "RealMapCertificates/relations/basis10520.json"
theorem reductionProof10520 : EqualModuloRelations reduction10520.relations reduction10520.input reduction10520.output := by lin_cert using reduction10520.terms
theorem substitutionProof10520 : IsMapEvaluation generatorImages reduction10520.relations [13,13,618] reduction10520.output := by lin_cert using reduction10520.terms
def image10521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10521 : InImage map_24_205 image10521 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10521 : Bundle := named_bundle% "RealMapCertificates/relations/basis10521.json"
theorem reductionProof10521 : EqualModuloRelations reduction10521.relations reduction10521.input reduction10521.output := by lin_cert using reduction10521.terms
theorem substitutionProof10521 : IsMapEvaluation generatorImages reduction10521.relations [0,187,188] reduction10521.output := by lin_cert using reduction10521.terms
def image10522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10522 : InImage map_24_205 image10522 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10522 : Bundle := named_bundle% "RealMapCertificates/relations/basis10522.json"
theorem reductionProof10522 : EqualModuloRelations reduction10522.relations reduction10522.input reduction10522.output := by lin_cert using reduction10522.terms
theorem substitutionProof10522 : IsMapEvaluation generatorImages reduction10522.relations [0,0,0,0,0,0,1175] reduction10522.output := by lin_cert using reduction10522.terms
def map_24_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10702 : InImage map_24_206 image10702 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10702 : Bundle := named_bundle% "RealMapCertificates/relations/basis10702.json"
theorem reductionProof10702 : EqualModuloRelations reduction10702.relations reduction10702.input reduction10702.output := by lin_cert using reduction10702.terms
theorem substitutionProof10702 : IsMapEvaluation generatorImages reduction10702.relations [111,324] reduction10702.output := by lin_cert using reduction10702.terms
def image10703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10703 : InImage map_24_206 image10703 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10703 : Bundle := named_bundle% "RealMapCertificates/relations/basis10703.json"
theorem reductionProof10703 : EqualModuloRelations reduction10703.relations reduction10703.input reduction10703.output := by lin_cert using reduction10703.terms
theorem substitutionProof10703 : IsMapEvaluation generatorImages reduction10703.relations [13,101,209] reduction10703.output := by lin_cert using reduction10703.terms
def image10704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10704 : InImage map_24_206 image10704 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10704 : Bundle := named_bundle% "RealMapCertificates/relations/basis10704.json"
theorem reductionProof10704 : EqualModuloRelations reduction10704.relations reduction10704.input reduction10704.output := by lin_cert using reduction10704.terms
theorem substitutionProof10704 : IsMapEvaluation generatorImages reduction10704.relations [13,13,629] reduction10704.output := by lin_cert using reduction10704.terms
def image10705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10705 : InImage map_24_206 image10705 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10705 : Bundle := named_bundle% "RealMapCertificates/relations/basis10705.json"
theorem reductionProof10705 : EqualModuloRelations reduction10705.relations reduction10705.input reduction10705.output := by lin_cert using reduction10705.terms
theorem substitutionProof10705 : IsMapEvaluation generatorImages reduction10705.relations [0,0,0,1244] reduction10705.output := by lin_cert using reduction10705.terms
def map_24_207 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10922 : InImage map_24_207 image10922 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10922 : Bundle := named_bundle% "RealMapCertificates/relations/basis10922.json"
theorem reductionProof10922 : EqualModuloRelations reduction10922.relations reduction10922.input reduction10922.output := by lin_cert using reduction10922.terms
theorem substitutionProof10922 : IsMapEvaluation generatorImages reduction10922.relations [187,201] reduction10922.output := by lin_cert using reduction10922.terms
def image10923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10923 : InImage map_24_207 image10923 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10923 : Bundle := named_bundle% "RealMapCertificates/relations/basis10923.json"
theorem reductionProof10923 : EqualModuloRelations reduction10923.relations reduction10923.input reduction10923.output := by lin_cert using reduction10923.terms
theorem substitutionProof10923 : IsMapEvaluation generatorImages reduction10923.relations [13,13,13,408] reduction10923.output := by lin_cert using reduction10923.terms
def image10924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10924 : InImage map_24_207 image10924 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10924 : Bundle := named_bundle% "RealMapCertificates/relations/basis10924.json"
theorem reductionProof10924 : EqualModuloRelations reduction10924.relations reduction10924.input reduction10924.output := by lin_cert using reduction10924.terms
theorem substitutionProof10924 : IsMapEvaluation generatorImages reduction10924.relations [0,0,0,1258] reduction10924.output := by lin_cert using reduction10924.terms
def image10925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10925 : InImage map_24_207 image10925 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10925 : Bundle := named_bundle% "RealMapCertificates/relations/basis10925.json"
theorem reductionProof10925 : EqualModuloRelations reduction10925.relations reduction10925.input reduction10925.output := by lin_cert using reduction10925.terms
theorem substitutionProof10925 : IsMapEvaluation generatorImages reduction10925.relations [0,0,0,1257] reduction10925.output := by lin_cert using reduction10925.terms
def map_24_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11051 : InImage map_24_208 image11051 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11051 : Bundle := named_bundle% "RealMapCertificates/relations/basis11051.json"
theorem reductionProof11051 : EqualModuloRelations reduction11051.relations reduction11051.input reduction11051.output := by lin_cert using reduction11051.terms
theorem substitutionProof11051 : IsMapEvaluation generatorImages reduction11051.relations [9,13,677] reduction11051.output := by lin_cert using reduction11051.terms
def image11052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11052 : InImage map_24_208 image11052 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11052 : Bundle := named_bundle% "RealMapCertificates/relations/basis11052.json"
theorem reductionProof11052 : EqualModuloRelations reduction11052.relations reduction11052.input reduction11052.output := by lin_cert using reduction11052.terms
theorem substitutionProof11052 : IsMapEvaluation generatorImages reduction11052.relations [7,1049] reduction11052.output := by lin_cert using reduction11052.terms
def image11053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11053 : InImage map_24_208 image11053 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11053 : Bundle := named_bundle% "RealMapCertificates/relations/basis11053.json"
theorem reductionProof11053 : EqualModuloRelations reduction11053.relations reduction11053.input reduction11053.output := by lin_cert using reduction11053.terms
theorem substitutionProof11053 : IsMapEvaluation generatorImages reduction11053.relations [1,1305] reduction11053.output := by lin_cert using reduction11053.terms
def image11054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11054 : InImage map_24_208 image11054 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11054 : Bundle := named_bundle% "RealMapCertificates/relations/basis11054.json"
theorem reductionProof11054 : EqualModuloRelations reduction11054.relations reduction11054.input reduction11054.output := by lin_cert using reduction11054.terms
theorem substitutionProof11054 : IsMapEvaluation generatorImages reduction11054.relations [0,0,0,0,0,1245] reduction11054.output := by lin_cert using reduction11054.terms
def map_24_209 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11236 : InImage map_24_209 image11236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11236 : Bundle := named_bundle% "RealMapCertificates/relations/basis11236.json"
theorem reductionProof11236 : EqualModuloRelations reduction11236.relations reduction11236.input reduction11236.output := by lin_cert using reduction11236.terms
theorem substitutionProof11236 : IsMapEvaluation generatorImages reduction11236.relations [117,324] reduction11236.output := by lin_cert using reduction11236.terms
def map_24_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11437 : InImage map_24_210 image11437 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11437 : Bundle := named_bundle% "RealMapCertificates/relations/basis11437.json"
theorem reductionProof11437 : EqualModuloRelations reduction11437.relations reduction11437.input reduction11437.output := by lin_cert using reduction11437.terms
theorem substitutionProof11437 : IsMapEvaluation generatorImages reduction11437.relations [187,212] reduction11437.output := by lin_cert using reduction11437.terms
def image11438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11438 : InImage map_24_210 image11438 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11438 : Bundle := named_bundle% "RealMapCertificates/relations/basis11438.json"
theorem reductionProof11438 : EqualModuloRelations reduction11438.relations reduction11438.input reduction11438.output := by lin_cert using reduction11438.terms
theorem substitutionProof11438 : IsMapEvaluation generatorImages reduction11438.relations [13,959] reduction11438.output := by lin_cert using reduction11438.terms
def image11439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11439 : InImage map_24_210 image11439 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11439 : Bundle := named_bundle% "RealMapCertificates/relations/basis11439.json"
theorem reductionProof11439 : EqualModuloRelations reduction11439.relations reduction11439.input reduction11439.output := by lin_cert using reduction11439.terms
theorem substitutionProof11439 : IsMapEvaluation generatorImages reduction11439.relations [0,0,0,0,0,0,0,1247] reduction11439.output := by lin_cert using reduction11439.terms
def map_24_211 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11588 : InImage map_24_211 image11588 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11588 : Bundle := named_bundle% "RealMapCertificates/relations/basis11588.json"
theorem reductionProof11588 : EqualModuloRelations reduction11588.relations reduction11588.input reduction11588.output := by lin_cert using reduction11588.terms
theorem substitutionProof11588 : IsMapEvaluation generatorImages reduction11588.relations [1386] reduction11588.output := by lin_cert using reduction11588.terms
def image11589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11589 : InImage map_24_211 image11589 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11589 : Bundle := named_bundle% "RealMapCertificates/relations/basis11589.json"
theorem reductionProof11589 : EqualModuloRelations reduction11589.relations reduction11589.input reduction11589.output := by lin_cert using reduction11589.terms
theorem substitutionProof11589 : IsMapEvaluation generatorImages reduction11589.relations [13,13,677] reduction11589.output := by lin_cert using reduction11589.terms
def image11590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11590 : InImage map_24_211 image11590 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11590 : Bundle := named_bundle% "RealMapCertificates/relations/basis11590.json"
theorem reductionProof11590 : EqualModuloRelations reduction11590.relations reduction11590.input reduction11590.output := by lin_cert using reduction11590.terms
theorem substitutionProof11590 : IsMapEvaluation generatorImages reduction11590.relations [0,188,212] reduction11590.output := by lin_cert using reduction11590.terms
def image11591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11591 : InImage map_24_211 image11591 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11591 : Bundle := named_bundle% "RealMapCertificates/relations/basis11591.json"
theorem reductionProof11591 : EqualModuloRelations reduction11591.relations reduction11591.input reduction11591.output := by lin_cert using reduction11591.terms
theorem substitutionProof11591 : IsMapEvaluation generatorImages reduction11591.relations [0,0,187,209] reduction11591.output := by lin_cert using reduction11591.terms
def image11592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11592 : InImage map_24_211 image11592 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11592 : Bundle := named_bundle% "RealMapCertificates/relations/basis11592.json"
theorem reductionProof11592 : EqualModuloRelations reduction11592.relations reduction11592.input reduction11592.output := by lin_cert using reduction11592.terms
theorem substitutionProof11592 : IsMapEvaluation generatorImages reduction11592.relations [0,0,0,0,0,0,0,1263] reduction11592.output := by lin_cert using reduction11592.terms
def map_24_212 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11782 : InImage map_24_212 image11782 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11782 : Bundle := named_bundle% "RealMapCertificates/relations/basis11782.json"
theorem reductionProof11782 : EqualModuloRelations reduction11782.relations reduction11782.input reduction11782.output := by lin_cert using reduction11782.terms
theorem substitutionProof11782 : IsMapEvaluation generatorImages reduction11782.relations [16,50,324] reduction11782.output := by lin_cert using reduction11782.terms
def image11783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11783 : InImage map_24_212 image11783 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11783 : Bundle := named_bundle% "RealMapCertificates/relations/basis11783.json"
theorem reductionProof11783 : EqualModuloRelations reduction11783.relations reduction11783.input reduction11783.output := by lin_cert using reduction11783.terms
theorem substitutionProof11783 : IsMapEvaluation generatorImages reduction11783.relations [9,1038] reduction11783.output := by lin_cert using reduction11783.terms
def image11784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11784 : InImage map_24_212 image11784 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11784 : Bundle := named_bundle% "RealMapCertificates/relations/basis11784.json"
theorem reductionProof11784 : EqualModuloRelations reduction11784.relations reduction11784.input reduction11784.output := by lin_cert using reduction11784.terms
theorem substitutionProof11784 : IsMapEvaluation generatorImages reduction11784.relations [0,0,0,188,209] reduction11784.output := by lin_cert using reduction11784.terms
def image11785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11785 : InImage map_24_212 image11785 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11785 : Bundle := named_bundle% "RealMapCertificates/relations/basis11785.json"
theorem reductionProof11785 : EqualModuloRelations reduction11785.relations reduction11785.input reduction11785.output := by lin_cert using reduction11785.terms
theorem substitutionProof11785 : IsMapEvaluation generatorImages reduction11785.relations [0,0,0,0,1338] reduction11785.output := by lin_cert using reduction11785.terms
end RealMapCertificates
