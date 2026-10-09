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
  | 25 => []
  | 40 => [[4,5,6]]
  | 43 => []
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 67 => []
  | 75 => []
  | 76 => []
  | 78 => [[4,4,4,5,6]]
  | 95 => []
  | 107 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 250 => []
  | 261 => []
  | 279 => []
  | 280 => []
  | 288 => []
  | 294 => []
  | 319 => []
  | 324 => []
  | 376 => []
  | 417 => []
  | 476 => []
  | 569 => []
  | 604 => []
  | 628 => []
  | 629 => []
  | 648 => []
  | 691 => []
  | 959 => []
  | 960 => []
  | 1004 => []
  | 1038 => []
  | 1125 => []
  | 1150 => []
  | 1257 => []
  | 1318 => []
  | 1351 => []
  | 1370 => []
  | 1430 => []
  | 1443 => []
  | 1444 => []
  | 1445 => []
  | 1455 => []
  | 1476 => []
  | 1487 => []
  | 1488 => []
  | 1489 => []
  | 1507 => []
  | 1519 => []
  | 1540 => []
  | 1541 => []
  | 1543 => []
  | 1557 => []
  | 1573 => []
  | 1574 => []
  | 1575 => []
  | 1642 => []
  | 1656 => []
  | 1657 => []
  | 1658 => []
  | 1692 => []
  | 1722 => []
  | 1740 => []
  | 1760 => []
  | 1761 => []
  | 1762 => []
  | 1763 => []
  | 1782 => []
  | 1783 => []
  | 1786 => []
  | 1816 => []
  | 1867 => []
  | 1908 => []
  | _ => []
def map_24_213 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12025 : InImage map_24_213 image12025 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12025 : Bundle := named_bundle% "RealMapCertificates/relations/basis12025.json"
theorem reductionProof12025 : EqualModuloRelations reduction12025.relations reduction12025.input reduction12025.output := by lin_cert using reduction12025.terms
theorem substitutionProof12025 : IsMapEvaluation generatorImages reduction12025.relations [1430] reduction12025.output := by lin_cert using reduction12025.terms
def image12026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12026 : InImage map_24_213 image12026 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12026 : Bundle := named_bundle% "RealMapCertificates/relations/basis12026.json"
theorem reductionProof12026 : EqualModuloRelations reduction12026.relations reduction12026.input reduction12026.output := by lin_cert using reduction12026.terms
theorem substitutionProof12026 : IsMapEvaluation generatorImages reduction12026.relations [201,212] reduction12026.output := by lin_cert using reduction12026.terms
def image12027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12027 : InImage map_24_213 image12027 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12027 : Bundle := named_bundle% "RealMapCertificates/relations/basis12027.json"
theorem reductionProof12027 : EqualModuloRelations reduction12027.relations reduction12027.input reduction12027.output := by lin_cert using reduction12027.terms
theorem substitutionProof12027 : IsMapEvaluation generatorImages reduction12027.relations [13,13,13,476] reduction12027.output := by lin_cert using reduction12027.terms
def image12028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12028 : InImage map_24_213 image12028 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12028 : Bundle := named_bundle% "RealMapCertificates/relations/basis12028.json"
theorem reductionProof12028 : EqualModuloRelations reduction12028.relations reduction12028.input reduction12028.output := by lin_cert using reduction12028.terms
theorem substitutionProof12028 : IsMapEvaluation generatorImages reduction12028.relations [1,1,187,209] reduction12028.output := by lin_cert using reduction12028.terms
def image12029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12029 : InImage map_24_213 image12029 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12029 : Bundle := named_bundle% "RealMapCertificates/relations/basis12029.json"
theorem reductionProof12029 : EqualModuloRelations reduction12029.relations reduction12029.input reduction12029.output := by lin_cert using reduction12029.terms
theorem substitutionProof12029 : IsMapEvaluation generatorImages reduction12029.relations [0,17,50,324] reduction12029.output := by lin_cert using reduction12029.terms
def image12030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12030 : InImage map_24_213 image12030 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12030 : Bundle := named_bundle% "RealMapCertificates/relations/basis12030.json"
theorem reductionProof12030 : EqualModuloRelations reduction12030.relations reduction12030.input reduction12030.output := by lin_cert using reduction12030.terms
theorem substitutionProof12030 : IsMapEvaluation generatorImages reduction12030.relations [0,0,0,1370] reduction12030.output := by lin_cert using reduction12030.terms
def map_24_214 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12180 : InImage map_24_214 image12180 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12180 : Bundle := named_bundle% "RealMapCertificates/relations/basis12180.json"
theorem reductionProof12180 : EqualModuloRelations reduction12180.relations reduction12180.input reduction12180.output := by lin_cert using reduction12180.terms
theorem substitutionProof12180 : IsMapEvaluation generatorImages reduction12180.relations [1443] reduction12180.output := by lin_cert using reduction12180.terms
def image12181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12181 : InImage map_24_214 image12181 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12181 : Bundle := named_bundle% "RealMapCertificates/relations/basis12181.json"
theorem reductionProof12181 : EqualModuloRelations reduction12181.relations reduction12181.input reduction12181.output := by lin_cert using reduction12181.terms
theorem substitutionProof12181 : IsMapEvaluation generatorImages reduction12181.relations [0,0,3,1257] reduction12181.output := by lin_cert using reduction12181.terms
def image12182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12182 : InImage map_24_214 image12182 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12182 : Bundle := named_bundle% "RealMapCertificates/relations/basis12182.json"
theorem reductionProof12182 : EqualModuloRelations reduction12182.relations reduction12182.input reduction12182.output := by lin_cert using reduction12182.terms
theorem substitutionProof12182 : IsMapEvaluation generatorImages reduction12182.relations [0,0,0,0,0,1351] reduction12182.output := by lin_cert using reduction12182.terms
def map_24_215 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12381 : InImage map_24_215 image12381 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12381 : Bundle := named_bundle% "RealMapCertificates/relations/basis12381.json"
theorem reductionProof12381 : EqualModuloRelations reduction12381.relations reduction12381.input reduction12381.output := by lin_cert using reduction12381.terms
theorem substitutionProof12381 : IsMapEvaluation generatorImages reduction12381.relations [13,1038] reduction12381.output := by lin_cert using reduction12381.terms
def image12382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12382 : InImage map_24_215 image12382 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12382 : Bundle := named_bundle% "RealMapCertificates/relations/basis12382.json"
theorem reductionProof12382 : EqualModuloRelations reduction12382.relations reduction12382.input reduction12382.output := by lin_cert using reduction12382.terms
theorem substitutionProof12382 : IsMapEvaluation generatorImages reduction12382.relations [8,78,324] reduction12382.output := by lin_cert using reduction12382.terms
def image12383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12383 : InImage map_24_215 image12383 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12383 : Bundle := named_bundle% "RealMapCertificates/relations/basis12383.json"
theorem reductionProof12383 : EqualModuloRelations reduction12383.relations reduction12383.input reduction12383.output := by lin_cert using reduction12383.terms
theorem substitutionProof12383 : IsMapEvaluation generatorImages reduction12383.relations [0,1444] reduction12383.output := by lin_cert using reduction12383.terms
def map_24_216 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12587 : InImage map_24_216 image12587 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12587 : Bundle := named_bundle% "RealMapCertificates/relations/basis12587.json"
theorem reductionProof12587 : EqualModuloRelations reduction12587.relations reduction12587.input reduction12587.output := by lin_cert using reduction12587.terms
theorem substitutionProof12587 : IsMapEvaluation generatorImages reduction12587.relations [1488] reduction12587.output := by lin_cert using reduction12587.terms
def image12588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12588 : InImage map_24_216 image12588 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12588 : Bundle := named_bundle% "RealMapCertificates/relations/basis12588.json"
theorem reductionProof12588 : EqualModuloRelations reduction12588.relations reduction12588.input reduction12588.output := by lin_cert using reduction12588.terms
theorem substitutionProof12588 : IsMapEvaluation generatorImages reduction12588.relations [1487] reduction12588.output := by lin_cert using reduction12588.terms
def image12589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12589 : InImage map_24_216 image12589 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12589 : Bundle := named_bundle% "RealMapCertificates/relations/basis12589.json"
theorem reductionProof12589 : EqualModuloRelations reduction12589.relations reduction12589.input reduction12589.output := by lin_cert using reduction12589.terms
theorem substitutionProof12589 : IsMapEvaluation generatorImages reduction12589.relations [212,212] reduction12589.output := by lin_cert using reduction12589.terms
def image12590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12590 : InImage map_24_216 image12590 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12590 : Bundle := named_bundle% "RealMapCertificates/relations/basis12590.json"
theorem reductionProof12590 : EqualModuloRelations reduction12590.relations reduction12590.input reduction12590.output := by lin_cert using reduction12590.terms
theorem substitutionProof12590 : IsMapEvaluation generatorImages reduction12590.relations [0,17,56,324] reduction12590.output := by lin_cert using reduction12590.terms
def map_24_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12745 : InImage map_24_217 image12745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12745 : Bundle := named_bundle% "RealMapCertificates/relations/basis12745.json"
theorem reductionProof12745 : EqualModuloRelations reduction12745.relations reduction12745.input reduction12745.output := by lin_cert using reduction12745.terms
theorem substitutionProof12745 : IsMapEvaluation generatorImages reduction12745.relations [13,13,75,189] reduction12745.output := by lin_cert using reduction12745.terms
def image12746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12746 : InImage map_24_217 image12746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12746 : Bundle := named_bundle% "RealMapCertificates/relations/basis12746.json"
theorem reductionProof12746 : EqualModuloRelations reduction12746.relations reduction12746.input reduction12746.output := by lin_cert using reduction12746.terms
theorem substitutionProof12746 : IsMapEvaluation generatorImages reduction12746.relations [1,1476] reduction12746.output := by lin_cert using reduction12746.terms
def image12747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12747 : InImage map_24_217 image12747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12747 : Bundle := named_bundle% "RealMapCertificates/relations/basis12747.json"
theorem reductionProof12747 : EqualModuloRelations reduction12747.relations reduction12747.input reduction12747.output := by lin_cert using reduction12747.terms
theorem substitutionProof12747 : IsMapEvaluation generatorImages reduction12747.relations [0,1489] reduction12747.output := by lin_cert using reduction12747.terms
def map_24_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12940 : InImage map_24_218 image12940 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12940 : Bundle := named_bundle% "RealMapCertificates/relations/basis12940.json"
theorem reductionProof12940 : EqualModuloRelations reduction12940.relations reduction12940.input reduction12940.output := by lin_cert using reduction12940.terms
theorem substitutionProof12940 : IsMapEvaluation generatorImages reduction12940.relations [187,250] reduction12940.output := by lin_cert using reduction12940.terms
def image12941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12941 : InImage map_24_218 image12941 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12941 : Bundle := named_bundle% "RealMapCertificates/relations/basis12941.json"
theorem reductionProof12941 : EqualModuloRelations reduction12941.relations reduction12941.input reduction12941.output := by lin_cert using reduction12941.terms
theorem substitutionProof12941 : IsMapEvaluation generatorImages reduction12941.relations [8,8,50,324] reduction12941.output := by lin_cert using reduction12941.terms
def image12942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12942 : InImage map_24_218 image12942 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12942 : Bundle := named_bundle% "RealMapCertificates/relations/basis12942.json"
theorem reductionProof12942 : EqualModuloRelations reduction12942.relations reduction12942.input reduction12942.output := by lin_cert using reduction12942.terms
theorem substitutionProof12942 : IsMapEvaluation generatorImages reduction12942.relations [2,1444] reduction12942.output := by lin_cert using reduction12942.terms
def image12943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12943 : InImage map_24_218 image12943 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12943 : Bundle := named_bundle% "RealMapCertificates/relations/basis12943.json"
theorem reductionProof12943 : EqualModuloRelations reduction12943.relations reduction12943.input reduction12943.output := by lin_cert using reduction12943.terms
theorem substitutionProof12943 : IsMapEvaluation generatorImages reduction12943.relations [0,0,0,0,209,209] reduction12943.output := by lin_cert using reduction12943.terms
def map_24_219 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13172 : InImage map_24_219 image13172 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13172 : Bundle := named_bundle% "RealMapCertificates/relations/basis13172.json"
theorem reductionProof13172 : EqualModuloRelations reduction13172.relations reduction13172.input reduction13172.output := by lin_cert using reduction13172.terms
theorem substitutionProof13172 : IsMapEvaluation generatorImages reduction13172.relations [1540] reduction13172.output := by lin_cert using reduction13172.terms
def image13173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13173 : InImage map_24_219 image13173 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13173 : Bundle := named_bundle% "RealMapCertificates/relations/basis13173.json"
theorem reductionProof13173 : EqualModuloRelations reduction13173.relations reduction13173.input reduction13173.output := by lin_cert using reduction13173.terms
theorem substitutionProof13173 : IsMapEvaluation generatorImages reduction13173.relations [0,1519] reduction13173.output := by lin_cert using reduction13173.terms
def image13174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13174 : InImage map_24_219 image13174 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13174 : Bundle := named_bundle% "RealMapCertificates/relations/basis13174.json"
theorem reductionProof13174 : EqualModuloRelations reduction13174.relations reduction13174.input reduction13174.output := by lin_cert using reduction13174.terms
theorem substitutionProof13174 : IsMapEvaluation generatorImages reduction13174.relations [0,0,0,0,0,1445] reduction13174.output := by lin_cert using reduction13174.terms
def map_24_220 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13306 : InImage map_24_220 image13306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13306 : Bundle := named_bundle% "RealMapCertificates/relations/basis13306.json"
theorem reductionProof13306 : EqualModuloRelations reduction13306.relations reduction13306.input reduction13306.output := by lin_cert using reduction13306.terms
theorem substitutionProof13306 : IsMapEvaluation generatorImages reduction13306.relations [9,13,13,569] reduction13306.output := by lin_cert using reduction13306.terms
def image13307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13307 : InImage map_24_220 image13307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13307 : Bundle := named_bundle% "RealMapCertificates/relations/basis13307.json"
theorem reductionProof13307 : EqualModuloRelations reduction13307.relations reduction13307.input reduction13307.output := by lin_cert using reduction13307.terms
theorem substitutionProof13307 : IsMapEvaluation generatorImages reduction13307.relations [1,1519] reduction13307.output := by lin_cert using reduction13307.terms
def image13308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13308 : InImage map_24_220 image13308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13308 : Bundle := named_bundle% "RealMapCertificates/relations/basis13308.json"
theorem reductionProof13308 : EqualModuloRelations reduction13308.relations reduction13308.input reduction13308.output := by lin_cert using reduction13308.terms
theorem substitutionProof13308 : IsMapEvaluation generatorImages reduction13308.relations [0,1541] reduction13308.output := by lin_cert using reduction13308.terms
def image13309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13309 : InImage map_24_220 image13309 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13309 : Bundle := named_bundle% "RealMapCertificates/relations/basis13309.json"
theorem reductionProof13309 : EqualModuloRelations reduction13309.relations reduction13309.input reduction13309.output := by lin_cert using reduction13309.terms
theorem substitutionProof13309 : IsMapEvaluation generatorImages reduction13309.relations [0,67,604] reduction13309.output := by lin_cert using reduction13309.terms
def image13310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13310 : InImage map_24_220 image13310 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13310 : Bundle := named_bundle% "RealMapCertificates/relations/basis13310.json"
theorem reductionProof13310 : EqualModuloRelations reduction13310.relations reduction13310.input reduction13310.output := by lin_cert using reduction13310.terms
theorem substitutionProof13310 : IsMapEvaluation generatorImages reduction13310.relations [0,0,0,0,0,137,324] reduction13310.output := by lin_cert using reduction13310.terms
def map_24_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13510 : InImage map_24_221 image13510 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13510 : Bundle := named_bundle% "RealMapCertificates/relations/basis13510.json"
theorem reductionProof13510 : EqualModuloRelations reduction13510.relations reduction13510.input reduction13510.output := by lin_cert using reduction13510.terms
theorem substitutionProof13510 : IsMapEvaluation generatorImages reduction13510.relations [1573] reduction13510.output := by lin_cert using reduction13510.terms
def image13511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13511 : InImage map_24_221 image13511 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13511 : Bundle := named_bundle% "RealMapCertificates/relations/basis13511.json"
theorem reductionProof13511 : EqualModuloRelations reduction13511.relations reduction13511.input reduction13511.output := by lin_cert using reduction13511.terms
theorem substitutionProof13511 : IsMapEvaluation generatorImages reduction13511.relations [187,261] reduction13511.output := by lin_cert using reduction13511.terms
def image13512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13512 : InImage map_24_221 image13512 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13512 : Bundle := named_bundle% "RealMapCertificates/relations/basis13512.json"
theorem reductionProof13512 : EqualModuloRelations reduction13512.relations reduction13512.input reduction13512.output := by lin_cert using reduction13512.terms
theorem substitutionProof13512 : IsMapEvaluation generatorImages reduction13512.relations [13,1125] reduction13512.output := by lin_cert using reduction13512.terms
def image13513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13513 : InImage map_24_221 image13513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13513 : Bundle := named_bundle% "RealMapCertificates/relations/basis13513.json"
theorem reductionProof13513 : EqualModuloRelations reduction13513.relations reduction13513.input reduction13513.output := by lin_cert using reduction13513.terms
theorem substitutionProof13513 : IsMapEvaluation generatorImages reduction13513.relations [8,8,56,324] reduction13513.output := by lin_cert using reduction13513.terms
def image13514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13514 : InImage map_24_221 image13514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13514 : Bundle := named_bundle% "RealMapCertificates/relations/basis13514.json"
theorem reductionProof13514 : EqualModuloRelations reduction13514.relations reduction13514.input reduction13514.output := by lin_cert using reduction13514.terms
theorem substitutionProof13514 : IsMapEvaluation generatorImages reduction13514.relations [0,0,0,0,0,0,138,324] reduction13514.output := by lin_cert using reduction13514.terms
def map_24_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13741 : InImage map_24_222 image13741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13741 : Bundle := named_bundle% "RealMapCertificates/relations/basis13741.json"
theorem reductionProof13741 : EqualModuloRelations reduction13741.relations reduction13741.input reduction13741.output := by lin_cert using reduction13741.terms
theorem substitutionProof13741 : IsMapEvaluation generatorImages reduction13741.relations [25,959] reduction13741.output := by lin_cert using reduction13741.terms
def image13742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13742 : InImage map_24_222 image13742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13742 : Bundle := named_bundle% "RealMapCertificates/relations/basis13742.json"
theorem reductionProof13742 : EqualModuloRelations reduction13742.relations reduction13742.input reduction13742.output := by lin_cert using reduction13742.terms
theorem substitutionProof13742 : IsMapEvaluation generatorImages reduction13742.relations [13,1150] reduction13742.output := by lin_cert using reduction13742.terms
def image13743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13743 : InImage map_24_222 image13743 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13743 : Bundle := named_bundle% "RealMapCertificates/relations/basis13743.json"
theorem reductionProof13743 : EqualModuloRelations reduction13743.relations reduction13743.input reduction13743.output := by lin_cert using reduction13743.terms
theorem substitutionProof13743 : IsMapEvaluation generatorImages reduction13743.relations [3,1444] reduction13743.output := by lin_cert using reduction13743.terms
def image13744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13744 : InImage map_24_222 image13744 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13744 : Bundle := named_bundle% "RealMapCertificates/relations/basis13744.json"
theorem reductionProof13744 : EqualModuloRelations reduction13744.relations reduction13744.input reduction13744.output := by lin_cert using reduction13744.terms
theorem substitutionProof13744 : IsMapEvaluation generatorImages reduction13744.relations [1,1557] reduction13744.output := by lin_cert using reduction13744.terms
def map_24_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13885 : InImage map_24_223 image13885 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13885 : Bundle := named_bundle% "RealMapCertificates/relations/basis13885.json"
theorem reductionProof13885 : EqualModuloRelations reduction13885.relations reduction13885.input reduction13885.output := by lin_cert using reduction13885.terms
theorem substitutionProof13885 : IsMapEvaluation generatorImages reduction13885.relations [13,13,13,569] reduction13885.output := by lin_cert using reduction13885.terms
def image13886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13886 : InImage map_24_223 image13886 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13886 : Bundle := named_bundle% "RealMapCertificates/relations/basis13886.json"
theorem reductionProof13886 : EqualModuloRelations reduction13886.relations reduction13886.input reduction13886.output := by lin_cert using reduction13886.terms
theorem substitutionProof13886 : IsMapEvaluation generatorImages reduction13886.relations [1,1574] reduction13886.output := by lin_cert using reduction13886.terms
def image13887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13887 : InImage map_24_223 image13887 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13887 : Bundle := named_bundle% "RealMapCertificates/relations/basis13887.json"
theorem reductionProof13887 : EqualModuloRelations reduction13887.relations reduction13887.input reduction13887.output := by lin_cert using reduction13887.terms
theorem substitutionProof13887 : IsMapEvaluation generatorImages reduction13887.relations [0,67,629] reduction13887.output := by lin_cert using reduction13887.terms
def map_24_224 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14072 : InImage map_24_224 image14072 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14072 : Bundle := named_bundle% "RealMapCertificates/relations/basis14072.json"
theorem reductionProof14072 : EqualModuloRelations reduction14072.relations reduction14072.input reduction14072.output := by lin_cert using reduction14072.terms
theorem substitutionProof14072 : IsMapEvaluation generatorImages reduction14072.relations [188,280] reduction14072.output := by lin_cert using reduction14072.terms
def image14073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14073 : InImage map_24_224 image14073 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14073 : Bundle := named_bundle% "RealMapCertificates/relations/basis14073.json"
theorem reductionProof14073 : EqualModuloRelations reduction14073.relations reduction14073.input reduction14073.output := by lin_cert using reduction14073.terms
theorem substitutionProof14073 : IsMapEvaluation generatorImages reduction14073.relations [8,8,16,17,324] reduction14073.output := by lin_cert using reduction14073.terms
def image14074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14074 : InImage map_24_224 image14074 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14074 : Bundle := named_bundle% "RealMapCertificates/relations/basis14074.json"
theorem reductionProof14074 : EqualModuloRelations reduction14074.relations reduction14074.input reduction14074.output := by lin_cert using reduction14074.terms
theorem substitutionProof14074 : IsMapEvaluation generatorImages reduction14074.relations [3,1489] reduction14074.output := by lin_cert using reduction14074.terms
def map_24_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14299 : InImage map_24_225 image14299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14299 : Bundle := named_bundle% "RealMapCertificates/relations/basis14299.json"
theorem reductionProof14299 : EqualModuloRelations reduction14299.relations reduction14299.input reduction14299.output := by lin_cert using reduction14299.terms
theorem substitutionProof14299 : IsMapEvaluation generatorImages reduction14299.relations [75,628] reduction14299.output := by lin_cert using reduction14299.terms
def image14300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14300 : InImage map_24_225 image14300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14300 : Bundle := named_bundle% "RealMapCertificates/relations/basis14300.json"
theorem reductionProof14300 : EqualModuloRelations reduction14300.relations reduction14300.input reduction14300.output := by lin_cert using reduction14300.terms
theorem substitutionProof14300 : IsMapEvaluation generatorImages reduction14300.relations [0,67,648] reduction14300.output := by lin_cert using reduction14300.terms
def image14301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14301 : InImage map_24_225 image14301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14301 : Bundle := named_bundle% "RealMapCertificates/relations/basis14301.json"
theorem reductionProof14301 : EqualModuloRelations reduction14301.relations reduction14301.input reduction14301.output := by lin_cert using reduction14301.terms
theorem substitutionProof14301 : IsMapEvaluation generatorImages reduction14301.relations [0,0,0,0,0,0,0,0,0,0,0,1455] reduction14301.output := by lin_cert using reduction14301.terms
def map_24_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14428 : InImage map_24_226 image14428 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14428 : Bundle := named_bundle% "RealMapCertificates/relations/basis14428.json"
theorem reductionProof14428 : EqualModuloRelations reduction14428.relations reduction14428.input reduction14428.output := by lin_cert using reduction14428.terms
theorem substitutionProof14428 : IsMapEvaluation generatorImages reduction14428.relations [1656] reduction14428.output := by lin_cert using reduction14428.terms
def image14429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14429 : InImage map_24_226 image14429 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14429 : Bundle := named_bundle% "RealMapCertificates/relations/basis14429.json"
theorem reductionProof14429 : EqualModuloRelations reduction14429.relations reduction14429.input reduction14429.output := by lin_cert using reduction14429.terms
theorem substitutionProof14429 : IsMapEvaluation generatorImages reduction14429.relations [3,1519] reduction14429.output := by lin_cert using reduction14429.terms
def map_24_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14643 : InImage map_24_227 image14643 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14643 : Bundle := named_bundle% "RealMapCertificates/relations/basis14643.json"
theorem reductionProof14643 : EqualModuloRelations reduction14643.relations reduction14643.input reduction14643.output := by lin_cert using reduction14643.terms
theorem substitutionProof14643 : IsMapEvaluation generatorImages reduction14643.relations [188,294] reduction14643.output := by lin_cert using reduction14643.terms
def image14644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14644 : InImage map_24_227 image14644 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14644 : Bundle := named_bundle% "RealMapCertificates/relations/basis14644.json"
theorem reductionProof14644 : EqualModuloRelations reduction14644.relations reduction14644.input reduction14644.output := by lin_cert using reduction14644.terms
theorem substitutionProof14644 : IsMapEvaluation generatorImages reduction14644.relations [8,8,8,40,324] reduction14644.output := by lin_cert using reduction14644.terms
def image14645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14645 : InImage map_24_227 image14645 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14645 : Bundle := named_bundle% "RealMapCertificates/relations/basis14645.json"
theorem reductionProof14645 : EqualModuloRelations reduction14645.relations reduction14645.input reduction14645.output := by lin_cert using reduction14645.terms
theorem substitutionProof14645 : IsMapEvaluation generatorImages reduction14645.relations [1,1642] reduction14645.output := by lin_cert using reduction14645.terms
def image14646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14646 : InImage map_24_227 image14646 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14646 : Bundle := named_bundle% "RealMapCertificates/relations/basis14646.json"
theorem reductionProof14646 : EqualModuloRelations reduction14646.relations reduction14646.input reduction14646.output := by lin_cert using reduction14646.terms
theorem substitutionProof14646 : IsMapEvaluation generatorImages reduction14646.relations [1,76,628] reduction14646.output := by lin_cert using reduction14646.terms
def image14647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14647 : InImage map_24_227 image14647 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14647 : Bundle := named_bundle% "RealMapCertificates/relations/basis14647.json"
theorem reductionProof14647 : EqualModuloRelations reduction14647.relations reduction14647.input reduction14647.output := by lin_cert using reduction14647.terms
theorem substitutionProof14647 : IsMapEvaluation generatorImages reduction14647.relations [0,1658] reduction14647.output := by lin_cert using reduction14647.terms
def image14648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14648 : InImage map_24_227 image14648 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14648 : Bundle := named_bundle% "RealMapCertificates/relations/basis14648.json"
theorem reductionProof14648 : EqualModuloRelations reduction14648.relations reduction14648.input reduction14648.output := by lin_cert using reduction14648.terms
theorem substitutionProof14648 : IsMapEvaluation generatorImages reduction14648.relations [0,1657] reduction14648.output := by lin_cert using reduction14648.terms
def map_24_228 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14876 : InImage map_24_228 image14876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14876 : Bundle := named_bundle% "RealMapCertificates/relations/basis14876.json"
theorem reductionProof14876 : EqualModuloRelations reduction14876.relations reduction14876.input reduction14876.output := by lin_cert using reduction14876.terms
theorem substitutionProof14876 : IsMapEvaluation generatorImages reduction14876.relations [1692] reduction14876.output := by lin_cert using reduction14876.terms
def image14877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14877 : InImage map_24_228 image14877 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14877 : Bundle := named_bundle% "RealMapCertificates/relations/basis14877.json"
theorem reductionProof14877 : EqualModuloRelations reduction14877.relations reduction14877.input reduction14877.output := by lin_cert using reduction14877.terms
theorem substitutionProof14877 : IsMapEvaluation generatorImages reduction14877.relations [9,1318] reduction14877.output := by lin_cert using reduction14877.terms
def image14878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14878 : InImage map_24_228 image14878 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14878 : Bundle := named_bundle% "RealMapCertificates/relations/basis14878.json"
theorem reductionProof14878 : EqualModuloRelations reduction14878.relations reduction14878.input reduction14878.output := by lin_cert using reduction14878.terms
theorem substitutionProof14878 : IsMapEvaluation generatorImages reduction14878.relations [1,1657] reduction14878.output := by lin_cert using reduction14878.terms
def map_24_229 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15031 : InImage map_24_229 image15031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15031 : Bundle := named_bundle% "RealMapCertificates/relations/basis15031.json"
theorem reductionProof15031 : EqualModuloRelations reduction15031.relations reduction15031.input reduction15031.output := by lin_cert using reduction15031.terms
theorem substitutionProof15031 : IsMapEvaluation generatorImages reduction15031.relations [209,279] reduction15031.output := by lin_cert using reduction15031.terms
def image15032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15032 : InImage map_24_229 image15032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15032 : Bundle := named_bundle% "RealMapCertificates/relations/basis15032.json"
theorem reductionProof15032 : EqualModuloRelations reduction15032.relations reduction15032.input reduction15032.output := by lin_cert using reduction15032.terms
theorem substitutionProof15032 : IsMapEvaluation generatorImages reduction15032.relations [13,13,95,213] reduction15032.output := by lin_cert using reduction15032.terms
def image15033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15033 : InImage map_24_229 image15033 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15033 : Bundle := named_bundle% "RealMapCertificates/relations/basis15033.json"
theorem reductionProof15033 : EqualModuloRelations reduction15033.relations reduction15033.input reduction15033.output := by lin_cert using reduction15033.terms
theorem substitutionProof15033 : IsMapEvaluation generatorImages reduction15033.relations [13,13,13,13,376] reduction15033.output := by lin_cert using reduction15033.terms
def image15034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15034 : InImage map_24_229 image15034 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15034 : Bundle := named_bundle% "RealMapCertificates/relations/basis15034.json"
theorem reductionProof15034 : EqualModuloRelations reduction15034.relations reduction15034.input reduction15034.output := by lin_cert using reduction15034.terms
theorem substitutionProof15034 : IsMapEvaluation generatorImages reduction15034.relations [5,137,324] reduction15034.output := by lin_cert using reduction15034.terms
def image15035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15035 : InImage map_24_229 image15035 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15035 : Bundle := named_bundle% "RealMapCertificates/relations/basis15035.json"
theorem reductionProof15035 : EqualModuloRelations reduction15035.relations reduction15035.input reduction15035.output := by lin_cert using reduction15035.terms
theorem substitutionProof15035 : IsMapEvaluation generatorImages reduction15035.relations [1,3,1543] reduction15035.output := by lin_cert using reduction15035.terms
def map_24_230 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15247 : InImage map_24_230 image15247 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15247 : Bundle := named_bundle% "RealMapCertificates/relations/basis15247.json"
theorem reductionProof15247 : EqualModuloRelations reduction15247.relations reduction15247.input reduction15247.output := by lin_cert using reduction15247.terms
theorem substitutionProof15247 : IsMapEvaluation generatorImages reduction15247.relations [8,8,8,8,17,324] reduction15247.output := by lin_cert using reduction15247.terms
def image15248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15248 : InImage map_24_230 image15248 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15248 : Bundle := named_bundle% "RealMapCertificates/relations/basis15248.json"
theorem reductionProof15248 : EqualModuloRelations reduction15248.relations reduction15248.input reduction15248.output := by lin_cert using reduction15248.terms
theorem substitutionProof15248 : IsMapEvaluation generatorImages reduction15248.relations [0,1722] reduction15248.output := by lin_cert using reduction15248.terms
def image15249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15249 : InImage map_24_230 image15249 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15249 : Bundle := named_bundle% "RealMapCertificates/relations/basis15249.json"
theorem reductionProof15249 : EqualModuloRelations reduction15249.relations reduction15249.input reduction15249.output := by lin_cert using reduction15249.terms
theorem substitutionProof15249 : IsMapEvaluation generatorImages reduction15249.relations [0,3,1575] reduction15249.output := by lin_cert using reduction15249.terms
def map_24_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15492 : InImage map_24_231 image15492 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15492 : Bundle := named_bundle% "RealMapCertificates/relations/basis15492.json"
theorem reductionProof15492 : EqualModuloRelations reduction15492.relations reduction15492.input reduction15492.output := by lin_cert using reduction15492.terms
theorem substitutionProof15492 : IsMapEvaluation generatorImages reduction15492.relations [1760] reduction15492.output := by lin_cert using reduction15492.terms
def image15493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15493 : InImage map_24_231 image15493 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15493 : Bundle := named_bundle% "RealMapCertificates/relations/basis15493.json"
theorem reductionProof15493 : EqualModuloRelations reduction15493.relations reduction15493.input reduction15493.output := by lin_cert using reduction15493.terms
theorem substitutionProof15493 : IsMapEvaluation generatorImages reduction15493.relations [107,604] reduction15493.output := by lin_cert using reduction15493.terms
def image15494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15494 : InImage map_24_231 image15494 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15494 : Bundle := named_bundle% "RealMapCertificates/relations/basis15494.json"
theorem reductionProof15494 : EqualModuloRelations reduction15494.relations reduction15494.input reduction15494.output := by lin_cert using reduction15494.terms
theorem substitutionProof15494 : IsMapEvaluation generatorImages reduction15494.relations [13,1318] reduction15494.output := by lin_cert using reduction15494.terms
def image15495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15495 : InImage map_24_231 image15495 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15495 : Bundle := named_bundle% "RealMapCertificates/relations/basis15495.json"
theorem reductionProof15495 : EqualModuloRelations reduction15495.relations reduction15495.input reduction15495.output := by lin_cert using reduction15495.terms
theorem substitutionProof15495 : IsMapEvaluation generatorImages reduction15495.relations [0,184,324] reduction15495.output := by lin_cert using reduction15495.terms
def map_24_232 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15665 : InImage map_24_232 image15665 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15665 : Bundle := named_bundle% "RealMapCertificates/relations/basis15665.json"
theorem reductionProof15665 : EqualModuloRelations reduction15665.relations reduction15665.input reduction15665.output := by lin_cert using reduction15665.terms
theorem substitutionProof15665 : IsMapEvaluation generatorImages reduction15665.relations [1782] reduction15665.output := by lin_cert using reduction15665.terms
def image15666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15666 : InImage map_24_232 image15666 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15666 : Bundle := named_bundle% "RealMapCertificates/relations/basis15666.json"
theorem reductionProof15666 : EqualModuloRelations reduction15666.relations reduction15666.input reduction15666.output := by lin_cert using reduction15666.terms
theorem substitutionProof15666 : IsMapEvaluation generatorImages reduction15666.relations [8,209,209] reduction15666.output := by lin_cert using reduction15666.terms
def image15667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15667 : InImage map_24_232 image15667 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15667 : Bundle := named_bundle% "RealMapCertificates/relations/basis15667.json"
theorem reductionProof15667 : EqualModuloRelations reduction15667.relations reduction15667.input reduction15667.output := by lin_cert using reduction15667.terms
theorem substitutionProof15667 : IsMapEvaluation generatorImages reduction15667.relations [0,1762] reduction15667.output := by lin_cert using reduction15667.terms
def image15668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15668 : InImage map_24_232 image15668 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15668 : Bundle := named_bundle% "RealMapCertificates/relations/basis15668.json"
theorem reductionProof15668 : EqualModuloRelations reduction15668.relations reduction15668.input reduction15668.output := by lin_cert using reduction15668.terms
theorem substitutionProof15668 : IsMapEvaluation generatorImages reduction15668.relations [0,1761] reduction15668.output := by lin_cert using reduction15668.terms
def image15669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15669 : InImage map_24_232 image15669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15669 : Bundle := named_bundle% "RealMapCertificates/relations/basis15669.json"
theorem reductionProof15669 : EqualModuloRelations reduction15669.relations reduction15669.input reduction15669.output := by lin_cert using reduction15669.terms
theorem substitutionProof15669 : IsMapEvaluation generatorImages reduction15669.relations [0,0,1740] reduction15669.output := by lin_cert using reduction15669.terms
def image15670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15670 : InImage map_24_232 image15670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15670 : Bundle := named_bundle% "RealMapCertificates/relations/basis15670.json"
theorem reductionProof15670 : EqualModuloRelations reduction15670.relations reduction15670.input reduction15670.output := by lin_cert using reduction15670.terms
theorem substitutionProof15670 : IsMapEvaluation generatorImages reduction15670.relations [0,0,185,324] reduction15670.output := by lin_cert using reduction15670.terms
def map_24_233 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15899 : InImage map_24_233 image15899 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15899 : Bundle := named_bundle% "RealMapCertificates/relations/basis15899.json"
theorem reductionProof15899 : EqualModuloRelations reduction15899.relations reduction15899.input reduction15899.output := by lin_cert using reduction15899.terms
theorem substitutionProof15899 : IsMapEvaluation generatorImages reduction15899.relations [13,95,417] reduction15899.output := by lin_cert using reduction15899.terms
def image15900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15900 : InImage map_24_233 image15900 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15900 : Bundle := named_bundle% "RealMapCertificates/relations/basis15900.json"
theorem reductionProof15900 : EqualModuloRelations reduction15900.relations reduction15900.input reduction15900.output := by lin_cert using reduction15900.terms
theorem substitutionProof15900 : IsMapEvaluation generatorImages reduction15900.relations [3,76,628] reduction15900.output := by lin_cert using reduction15900.terms
def image15901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15901 : InImage map_24_233 image15901 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15901 : Bundle := named_bundle% "RealMapCertificates/relations/basis15901.json"
theorem reductionProof15901 : EqualModuloRelations reduction15901.relations reduction15901.input reduction15901.output := by lin_cert using reduction15901.terms
theorem substitutionProof15901 : IsMapEvaluation generatorImages reduction15901.relations [1,1762] reduction15901.output := by lin_cert using reduction15901.terms
def image15902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15902 : InImage map_24_233 image15902 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15902 : Bundle := named_bundle% "RealMapCertificates/relations/basis15902.json"
theorem reductionProof15902 : EqualModuloRelations reduction15902.relations reduction15902.input reduction15902.output := by lin_cert using reduction15902.terms
theorem substitutionProof15902 : IsMapEvaluation generatorImages reduction15902.relations [0,1783] reduction15902.output := by lin_cert using reduction15902.terms
def image15903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15903 : InImage map_24_233 image15903 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15903 : Bundle := named_bundle% "RealMapCertificates/relations/basis15903.json"
theorem reductionProof15903 : EqualModuloRelations reduction15903.relations reduction15903.input reduction15903.output := by lin_cert using reduction15903.terms
theorem substitutionProof15903 : IsMapEvaluation generatorImages reduction15903.relations [0,0,1763] reduction15903.output := by lin_cert using reduction15903.terms
def map_24_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16147 : InImage map_24_234 image16147 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16147 : Bundle := named_bundle% "RealMapCertificates/relations/basis16147.json"
theorem reductionProof16147 : EqualModuloRelations reduction16147.relations reduction16147.input reduction16147.output := by lin_cert using reduction16147.terms
theorem substitutionProof16147 : IsMapEvaluation generatorImages reduction16147.relations [13,188,213] reduction16147.output := by lin_cert using reduction16147.terms
def image16148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16148 : InImage map_24_234 image16148 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16148 : Bundle := named_bundle% "RealMapCertificates/relations/basis16148.json"
theorem reductionProof16148 : EqualModuloRelations reduction16148.relations reduction16148.input reduction16148.output := by lin_cert using reduction16148.terms
theorem substitutionProof16148 : IsMapEvaluation generatorImages reduction16148.relations [3,1657] reduction16148.output := by lin_cert using reduction16148.terms
def image16149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16149 : InImage map_24_234 image16149 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16149 : Bundle := named_bundle% "RealMapCertificates/relations/basis16149.json"
theorem reductionProof16149 : EqualModuloRelations reduction16149.relations reduction16149.input reduction16149.output := by lin_cert using reduction16149.terms
theorem substitutionProof16149 : IsMapEvaluation generatorImages reduction16149.relations [0,8,137,324] reduction16149.output := by lin_cert using reduction16149.terms
def image16150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16150 : InImage map_24_234 image16150 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16150 : Bundle := named_bundle% "RealMapCertificates/relations/basis16150.json"
theorem reductionProof16150 : EqualModuloRelations reduction16150.relations reduction16150.input reduction16150.output := by lin_cert using reduction16150.terms
theorem substitutionProof16150 : IsMapEvaluation generatorImages reduction16150.relations [0,0,1786] reduction16150.output := by lin_cert using reduction16150.terms
def map_24_235 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16340 : InImage map_24_235 image16340 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16340 : Bundle := named_bundle% "RealMapCertificates/relations/basis16340.json"
theorem reductionProof16340 : EqualModuloRelations reduction16340.relations reduction16340.input reduction16340.output := by lin_cert using reduction16340.terms
theorem substitutionProof16340 : IsMapEvaluation generatorImages reduction16340.relations [9,13,75,288] reduction16340.output := by lin_cert using reduction16340.terms
def image16341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16341 : InImage map_24_235 image16341 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16341 : Bundle := named_bundle% "RealMapCertificates/relations/basis16341.json"
theorem reductionProof16341 : EqualModuloRelations reduction16341.relations reduction16341.input reduction16341.output := by lin_cert using reduction16341.terms
theorem substitutionProof16341 : IsMapEvaluation generatorImages reduction16341.relations [8,1507] reduction16341.output := by lin_cert using reduction16341.terms
def image16342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16342 : InImage map_24_235 image16342 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16342 : Bundle := named_bundle% "RealMapCertificates/relations/basis16342.json"
theorem reductionProof16342 : EqualModuloRelations reduction16342.relations reduction16342.input reduction16342.output := by lin_cert using reduction16342.terms
theorem substitutionProof16342 : IsMapEvaluation generatorImages reduction16342.relations [2,1761] reduction16342.output := by lin_cert using reduction16342.terms
def image16343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16343 : InImage map_24_235 image16343 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16343 : Bundle := named_bundle% "RealMapCertificates/relations/basis16343.json"
theorem reductionProof16343 : EqualModuloRelations reduction16343.relations reduction16343.input reduction16343.output := by lin_cert using reduction16343.terms
theorem substitutionProof16343 : IsMapEvaluation generatorImages reduction16343.relations [1,1,1763] reduction16343.output := by lin_cert using reduction16343.terms
def image16344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16344 : InImage map_24_235 image16344 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16344 : Bundle := named_bundle% "RealMapCertificates/relations/basis16344.json"
theorem reductionProof16344 : EqualModuloRelations reduction16344.relations reduction16344.input reduction16344.output := by lin_cert using reduction16344.terms
theorem substitutionProof16344 : IsMapEvaluation generatorImages reduction16344.relations [0,43,960] reduction16344.output := by lin_cert using reduction16344.terms
def image16345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16345 : InImage map_24_235 image16345 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16345 : Bundle := named_bundle% "RealMapCertificates/relations/basis16345.json"
theorem reductionProof16345 : EqualModuloRelations reduction16345.relations reduction16345.input reduction16345.output := by lin_cert using reduction16345.terms
theorem substitutionProof16345 : IsMapEvaluation generatorImages reduction16345.relations [0,2,1740] reduction16345.output := by lin_cert using reduction16345.terms
def image16346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16346 : InImage map_24_235 image16346 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16346 : Bundle := named_bundle% "RealMapCertificates/relations/basis16346.json"
theorem reductionProof16346 : EqualModuloRelations reduction16346.relations reduction16346.input reduction16346.output := by lin_cert using reduction16346.terms
theorem substitutionProof16346 : IsMapEvaluation generatorImages reduction16346.relations [0,0,8,138,324] reduction16346.output := by lin_cert using reduction16346.terms
def map_24_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16574 : InImage map_24_236 image16574 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16574 : Bundle := named_bundle% "RealMapCertificates/relations/basis16574.json"
theorem reductionProof16574 : EqualModuloRelations reduction16574.relations reduction16574.input reduction16574.output := by lin_cert using reduction16574.terms
theorem substitutionProof16574 : IsMapEvaluation generatorImages reduction16574.relations [0,209,319] reduction16574.output := by lin_cert using reduction16574.terms
def image16575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16575 : InImage map_24_236 image16575 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16575 : Bundle := named_bundle% "RealMapCertificates/relations/basis16575.json"
theorem reductionProof16575 : EqualModuloRelations reduction16575.relations reduction16575.input reduction16575.output := by lin_cert using reduction16575.terms
theorem substitutionProof16575 : IsMapEvaluation generatorImages reduction16575.relations [0,0,0,1816] reduction16575.output := by lin_cert using reduction16575.terms
def map_24_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16821 : InImage map_24_237 image16821 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16821 : Bundle := named_bundle% "RealMapCertificates/relations/basis16821.json"
theorem reductionProof16821 : EqualModuloRelations reduction16821.relations reduction16821.input reduction16821.output := by lin_cert using reduction16821.terms
theorem substitutionProof16821 : IsMapEvaluation generatorImages reduction16821.relations [1908] reduction16821.output := by lin_cert using reduction16821.terms
def image16822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16822 : InImage map_24_237 image16822 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16822 : Bundle := named_bundle% "RealMapCertificates/relations/basis16822.json"
theorem reductionProof16822 : EqualModuloRelations reduction16822.relations reduction16822.input reduction16822.output := by lin_cert using reduction16822.terms
theorem substitutionProof16822 : IsMapEvaluation generatorImages reduction16822.relations [95,691] reduction16822.output := by lin_cert using reduction16822.terms
def image16823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16823 : InImage map_24_237 image16823 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16823 : Bundle := named_bundle% "RealMapCertificates/relations/basis16823.json"
theorem reductionProof16823 : EqualModuloRelations reduction16823.relations reduction16823.input reduction16823.output := by lin_cert using reduction16823.terms
theorem substitutionProof16823 : IsMapEvaluation generatorImages reduction16823.relations [13,13,1004] reduction16823.output := by lin_cert using reduction16823.terms
def image16824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16824 : InImage map_24_237 image16824 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16824 : Bundle := named_bundle% "RealMapCertificates/relations/basis16824.json"
theorem reductionProof16824 : EqualModuloRelations reduction16824.relations reduction16824.input reduction16824.output := by lin_cert using reduction16824.terms
theorem substitutionProof16824 : IsMapEvaluation generatorImages reduction16824.relations [0,8,146,324] reduction16824.output := by lin_cert using reduction16824.terms
def image16825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16825 : InImage map_24_237 image16825 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16825 : Bundle := named_bundle% "RealMapCertificates/relations/basis16825.json"
theorem reductionProof16825 : EqualModuloRelations reduction16825.relations reduction16825.input reduction16825.output := by lin_cert using reduction16825.terms
theorem substitutionProof16825 : IsMapEvaluation generatorImages reduction16825.relations [0,0,1867] reduction16825.output := by lin_cert using reduction16825.terms
end RealMapCertificates
