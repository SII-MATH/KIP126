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
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 68 => []
  | 75 => []
  | 147 => [[0,4,8,12]]
  | 154 => [[0,5,8,12]]
  | 188 => []
  | 189 => []
  | 209 => []
  | 246 => []
  | 260 => []
  | 266 => []
  | 288 => []
  | 324 => []
  | 333 => []
  | 373 => []
  | 417 => []
  | 418 => []
  | 439 => []
  | 533 => []
  | 880 => []
  | 912 => []
  | 965 => []
  | 1002 => []
  | 1152 => []
  | 1445 => []
  | 1546 => []
  | 1559 => []
  | 1642 => []
  | 1667 => []
  | 1694 => []
  | 1695 => []
  | 1762 => []
  | 1766 => []
  | 1783 => []
  | 1786 => []
  | 1868 => []
  | 1910 => []
  | 1911 => []
  | 1912 => []
  | 1941 => []
  | 1943 => []
  | 2004 => []
  | 2005 => []
  | 2006 => []
  | 2048 => []
  | 2067 => []
  | 2104 => []
  | 2105 => []
  | 2106 => []
  | 2107 => []
  | 2108 => []
  | 2135 => []
  | 2136 => []
  | 2137 => []
  | 2138 => []
  | 2141 => []
  | 2172 => []
  | 2173 => []
  | 2174 => []
  | 2175 => []
  | 2212 => []
  | 2213 => []
  | 2214 => []
  | 2215 => []
  | 2216 => []
  | 2217 => []
  | 2252 => []
  | 2253 => []
  | 2254 => []
  | 2255 => []
  | 2256 => []
  | 2265 => []
  | 2282 => []
  | 2283 => []
  | 2284 => []
  | 2285 => []
  | 2286 => []
  | 2288 => []
  | 2291 => []
  | 2316 => []
  | 2317 => []
  | 2318 => []
  | 2319 => []
  | 2347 => []
  | 2348 => []
  | 2349 => []
  | 2350 => []
  | 2352 => []
  | 2384 => []
  | 2385 => []
  | 2387 => []
  | 2419 => []
  | 2420 => []
  | 2449 => []
  | 2450 => []
  | 2451 => []
  | _ => []
def map_24_238 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17002 : InImage map_24_238 image17002 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17002 : Bundle := named_bundle% "RealMapCertificates/relations/basis17002.json"
theorem reductionProof17002 : EqualModuloRelations reduction17002.relations reduction17002.input reduction17002.output := by lin_cert using reduction17002.terms
theorem substitutionProof17002 : IsMapEvaluation generatorImages reduction17002.relations [1941] reduction17002.output := by lin_cert using reduction17002.terms
def image17003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17003 : InImage map_24_238 image17003 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17003 : Bundle := named_bundle% "RealMapCertificates/relations/basis17003.json"
theorem reductionProof17003 : EqualModuloRelations reduction17003.relations reduction17003.input reduction17003.output := by lin_cert using reduction17003.terms
theorem substitutionProof17003 : IsMapEvaluation generatorImages reduction17003.relations [188,417] reduction17003.output := by lin_cert using reduction17003.terms
def image17004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17004 : InImage map_24_238 image17004 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17004 : Bundle := named_bundle% "RealMapCertificates/relations/basis17004.json"
theorem reductionProof17004 : EqualModuloRelations reduction17004.relations reduction17004.input reduction17004.output := by lin_cert using reduction17004.terms
theorem substitutionProof17004 : IsMapEvaluation generatorImages reduction17004.relations [13,13,75,288] reduction17004.output := by lin_cert using reduction17004.terms
def image17005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17005 : InImage map_24_238 image17005 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17005 : Bundle := named_bundle% "RealMapCertificates/relations/basis17005.json"
theorem reductionProof17005 : EqualModuloRelations reduction17005.relations reduction17005.input reduction17005.output := by lin_cert using reduction17005.terms
theorem substitutionProof17005 : IsMapEvaluation generatorImages reduction17005.relations [8,1559] reduction17005.output := by lin_cert using reduction17005.terms
def image17006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17006 : InImage map_24_238 image17006 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17006 : Bundle := named_bundle% "RealMapCertificates/relations/basis17006.json"
theorem reductionProof17006 : EqualModuloRelations reduction17006.relations reduction17006.input reduction17006.output := by lin_cert using reduction17006.terms
theorem substitutionProof17006 : IsMapEvaluation generatorImages reduction17006.relations [0,1912] reduction17006.output := by lin_cert using reduction17006.terms
def image17007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17007 : InImage map_24_238 image17007 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17007 : Bundle := named_bundle% "RealMapCertificates/relations/basis17007.json"
theorem reductionProof17007 : EqualModuloRelations reduction17007.relations reduction17007.input reduction17007.output := by lin_cert using reduction17007.terms
theorem substitutionProof17007 : IsMapEvaluation generatorImages reduction17007.relations [0,1911] reduction17007.output := by lin_cert using reduction17007.terms
def image17008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17008 : InImage map_24_238 image17008 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17008 : Bundle := named_bundle% "RealMapCertificates/relations/basis17008.json"
theorem reductionProof17008 : EqualModuloRelations reduction17008.relations reduction17008.input reduction17008.output := by lin_cert using reduction17008.terms
theorem substitutionProof17008 : IsMapEvaluation generatorImages reduction17008.relations [0,0,8,147,324] reduction17008.output := by lin_cert using reduction17008.terms
def map_24_239 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17266 : InImage map_24_239 image17266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17266 : Bundle := named_bundle% "RealMapCertificates/relations/basis17266.json"
theorem reductionProof17266 : EqualModuloRelations reduction17266.relations reduction17266.input reduction17266.output := by lin_cert using reduction17266.terms
theorem substitutionProof17266 : IsMapEvaluation generatorImages reduction17266.relations [3,1762] reduction17266.output := by lin_cert using reduction17266.terms
def image17267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17267 : InImage map_24_239 image17267 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17267 : Bundle := named_bundle% "RealMapCertificates/relations/basis17267.json"
theorem reductionProof17267 : EqualModuloRelations reduction17267.relations reduction17267.input reduction17267.output := by lin_cert using reduction17267.terms
theorem substitutionProof17267 : IsMapEvaluation generatorImages reduction17267.relations [1,1910] reduction17267.output := by lin_cert using reduction17267.terms
def image17268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17268 : InImage map_24_239 image17268 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17268 : Bundle := named_bundle% "RealMapCertificates/relations/basis17268.json"
theorem reductionProof17268 : EqualModuloRelations reduction17268.relations reduction17268.input reduction17268.output := by lin_cert using reduction17268.terms
theorem substitutionProof17268 : IsMapEvaluation generatorImages reduction17268.relations [0,13,1445] reduction17268.output := by lin_cert using reduction17268.terms
def map_24_240 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17540 : InImage map_24_240 image17540 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17540 : Bundle := named_bundle% "RealMapCertificates/relations/basis17540.json"
theorem reductionProof17540 : EqualModuloRelations reduction17540.relations reduction17540.input reduction17540.output := by lin_cert using reduction17540.terms
theorem substitutionProof17540 : IsMapEvaluation generatorImages reduction17540.relations [2005] reduction17540.output := by lin_cert using reduction17540.terms
def image17541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17541 : InImage map_24_240 image17541 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17541 : Bundle := named_bundle% "RealMapCertificates/relations/basis17541.json"
theorem reductionProof17541 : EqualModuloRelations reduction17541.relations reduction17541.input reduction17541.output := by lin_cert using reduction17541.terms
theorem substitutionProof17541 : IsMapEvaluation generatorImages reduction17541.relations [2004] reduction17541.output := by lin_cert using reduction17541.terms
def image17542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17542 : InImage map_24_240 image17542 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17542 : Bundle := named_bundle% "RealMapCertificates/relations/basis17542.json"
theorem reductionProof17542 : EqualModuloRelations reduction17542.relations reduction17542.input reduction17542.output := by lin_cert using reduction17542.terms
theorem substitutionProof17542 : IsMapEvaluation generatorImages reduction17542.relations [9,1546] reduction17542.output := by lin_cert using reduction17542.terms
def image17543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17543 : InImage map_24_240 image17543 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17543 : Bundle := named_bundle% "RealMapCertificates/relations/basis17543.json"
theorem reductionProof17543 : EqualModuloRelations reduction17543.relations reduction17543.input reduction17543.output := by lin_cert using reduction17543.terms
theorem substitutionProof17543 : IsMapEvaluation generatorImages reduction17543.relations [3,1783] reduction17543.output := by lin_cert using reduction17543.terms
def image17544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17544 : InImage map_24_240 image17544 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17544 : Bundle := named_bundle% "RealMapCertificates/relations/basis17544.json"
theorem reductionProof17544 : EqualModuloRelations reduction17544.relations reduction17544.input reduction17544.output := by lin_cert using reduction17544.terms
theorem substitutionProof17544 : IsMapEvaluation generatorImages reduction17544.relations [0,8,16,64,324] reduction17544.output := by lin_cert using reduction17544.terms
def image17545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17545 : InImage map_24_240 image17545 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17545 : Bundle := named_bundle% "RealMapCertificates/relations/basis17545.json"
theorem reductionProof17545 : EqualModuloRelations reduction17545.relations reduction17545.input reduction17545.output := by lin_cert using reduction17545.terms
theorem substitutionProof17545 : IsMapEvaluation generatorImages reduction17545.relations [0,2,1868] reduction17545.output := by lin_cert using reduction17545.terms
def image17546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17546 : InImage map_24_240 image17546 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17546 : Bundle := named_bundle% "RealMapCertificates/relations/basis17546.json"
theorem reductionProof17546 : EqualModuloRelations reduction17546.relations reduction17546.input reduction17546.output := by lin_cert using reduction17546.terms
theorem substitutionProof17546 : IsMapEvaluation generatorImages reduction17546.relations [0,0,1943] reduction17546.output := by lin_cert using reduction17546.terms
def map_24_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17782 : InImage map_24_241 image17782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17782 : Bundle := named_bundle% "RealMapCertificates/relations/basis17782.json"
theorem reductionProof17782 : EqualModuloRelations reduction17782.relations reduction17782.input reduction17782.output := by lin_cert using reduction17782.terms
theorem substitutionProof17782 : IsMapEvaluation generatorImages reduction17782.relations [9,1559] reduction17782.output := by lin_cert using reduction17782.terms
def image17783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17783 : InImage map_24_241 image17783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17783 : Bundle := named_bundle% "RealMapCertificates/relations/basis17783.json"
theorem reductionProof17783 : EqualModuloRelations reduction17783.relations reduction17783.input reduction17783.output := by lin_cert using reduction17783.terms
theorem substitutionProof17783 : IsMapEvaluation generatorImages reduction17783.relations [7,1642] reduction17783.output := by lin_cert using reduction17783.terms
def image17784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17784 : InImage map_24_241 image17784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17784 : Bundle := named_bundle% "RealMapCertificates/relations/basis17784.json"
theorem reductionProof17784 : EqualModuloRelations reduction17784.relations reduction17784.input reduction17784.output := by lin_cert using reduction17784.terms
theorem substitutionProof17784 : IsMapEvaluation generatorImages reduction17784.relations [0,2006] reduction17784.output := by lin_cert using reduction17784.terms
def image17785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17785 : InImage map_24_241 image17785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17785 : Bundle := named_bundle% "RealMapCertificates/relations/basis17785.json"
theorem reductionProof17785 : EqualModuloRelations reduction17785.relations reduction17785.input reduction17785.output := by lin_cert using reduction17785.terms
theorem substitutionProof17785 : IsMapEvaluation generatorImages reduction17785.relations [0,3,1786] reduction17785.output := by lin_cert using reduction17785.terms
def image17786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17786 : InImage map_24_241 image17786 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17786 : Bundle := named_bundle% "RealMapCertificates/relations/basis17786.json"
theorem reductionProof17786 : EqualModuloRelations reduction17786.relations reduction17786.input reduction17786.output := by lin_cert using reduction17786.terms
theorem substitutionProof17786 : IsMapEvaluation generatorImages reduction17786.relations [0,0,8,17,64,324] reduction17786.output := by lin_cert using reduction17786.terms
def map_24_242 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image18045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18045 : InImage map_24_242 image18045 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18045 : Bundle := named_bundle% "RealMapCertificates/relations/basis18045.json"
theorem reductionProof18045 : EqualModuloRelations reduction18045.relations reduction18045.input reduction18045.output := by lin_cert using reduction18045.terms
theorem substitutionProof18045 : IsMapEvaluation generatorImages reduction18045.relations [1,2006] reduction18045.output := by lin_cert using reduction18045.terms
def image18046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18046 : InImage map_24_242 image18046 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18046 : Bundle := named_bundle% "RealMapCertificates/relations/basis18046.json"
theorem reductionProof18046 : EqualModuloRelations reduction18046.relations reduction18046.input reduction18046.output := by lin_cert using reduction18046.terms
theorem substitutionProof18046 : IsMapEvaluation generatorImages reduction18046.relations [0,2048] reduction18046.output := by lin_cert using reduction18046.terms
def map_24_243 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18316 : InImage map_24_243 image18316 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18316 : Bundle := named_bundle% "RealMapCertificates/relations/basis18316.json"
theorem reductionProof18316 : EqualModuloRelations reduction18316.relations reduction18316.input reduction18316.output := by lin_cert using reduction18316.terms
theorem substitutionProof18316 : IsMapEvaluation generatorImages reduction18316.relations [2107] reduction18316.output := by lin_cert using reduction18316.terms
def image18317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18317 : InImage map_24_243 image18317 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18317 : Bundle := named_bundle% "RealMapCertificates/relations/basis18317.json"
theorem reductionProof18317 : EqualModuloRelations reduction18317.relations reduction18317.input reduction18317.output := by lin_cert using reduction18317.terms
theorem substitutionProof18317 : IsMapEvaluation generatorImages reduction18317.relations [2106] reduction18317.output := by lin_cert using reduction18317.terms
def image18318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18318 : InImage map_24_243 image18318 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18318 : Bundle := named_bundle% "RealMapCertificates/relations/basis18318.json"
theorem reductionProof18318 : EqualModuloRelations reduction18318.relations reduction18318.input reduction18318.output := by lin_cert using reduction18318.terms
theorem substitutionProof18318 : IsMapEvaluation generatorImages reduction18318.relations [2105] reduction18318.output := by lin_cert using reduction18318.terms
def image18319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18319 : InImage map_24_243 image18319 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18319 : Bundle := named_bundle% "RealMapCertificates/relations/basis18319.json"
theorem reductionProof18319 : EqualModuloRelations reduction18319.relations reduction18319.input reduction18319.output := by lin_cert using reduction18319.terms
theorem substitutionProof18319 : IsMapEvaluation generatorImages reduction18319.relations [2104] reduction18319.output := by lin_cert using reduction18319.terms
def image18320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18320 : InImage map_24_243 image18320 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18320 : Bundle := named_bundle% "RealMapCertificates/relations/basis18320.json"
theorem reductionProof18320 : EqualModuloRelations reduction18320.relations reduction18320.input reduction18320.output := by lin_cert using reduction18320.terms
theorem substitutionProof18320 : IsMapEvaluation generatorImages reduction18320.relations [68,880] reduction18320.output := by lin_cert using reduction18320.terms
def image18321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18321 : InImage map_24_243 image18321 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18321 : Bundle := named_bundle% "RealMapCertificates/relations/basis18321.json"
theorem reductionProof18321 : EqualModuloRelations reduction18321.relations reduction18321.input reduction18321.output := by lin_cert using reduction18321.terms
theorem substitutionProof18321 : IsMapEvaluation generatorImages reduction18321.relations [13,1546] reduction18321.output := by lin_cert using reduction18321.terms
def image18322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18322 : InImage map_24_243 image18322 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18322 : Bundle := named_bundle% "RealMapCertificates/relations/basis18322.json"
theorem reductionProof18322 : EqualModuloRelations reduction18322.relations reduction18322.input reduction18322.output := by lin_cert using reduction18322.terms
theorem substitutionProof18322 : IsMapEvaluation generatorImages reduction18322.relations [1,2048] reduction18322.output := by lin_cert using reduction18322.terms
def map_24_244 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18520 : InImage map_24_244 image18520 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18520 : Bundle := named_bundle% "RealMapCertificates/relations/basis18520.json"
theorem reductionProof18520 : EqualModuloRelations reduction18520.relations reduction18520.input reduction18520.output := by lin_cert using reduction18520.terms
theorem substitutionProof18520 : IsMapEvaluation generatorImages reduction18520.relations [2137] reduction18520.output := by lin_cert using reduction18520.terms
def image18521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18521 : InImage map_24_244 image18521 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18521 : Bundle := named_bundle% "RealMapCertificates/relations/basis18521.json"
theorem reductionProof18521 : EqualModuloRelations reduction18521.relations reduction18521.input reduction18521.output := by lin_cert using reduction18521.terms
theorem substitutionProof18521 : IsMapEvaluation generatorImages reduction18521.relations [2136] reduction18521.output := by lin_cert using reduction18521.terms
def image18522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18522 : InImage map_24_244 image18522 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18522 : Bundle := named_bundle% "RealMapCertificates/relations/basis18522.json"
theorem reductionProof18522 : EqualModuloRelations reduction18522.relations reduction18522.input reduction18522.output := by lin_cert using reduction18522.terms
theorem substitutionProof18522 : IsMapEvaluation generatorImages reduction18522.relations [2135] reduction18522.output := by lin_cert using reduction18522.terms
def image18523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18523 : InImage map_24_244 image18523 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18523 : Bundle := named_bundle% "RealMapCertificates/relations/basis18523.json"
theorem reductionProof18523 : EqualModuloRelations reduction18523.relations reduction18523.input reduction18523.output := by lin_cert using reduction18523.terms
theorem substitutionProof18523 : IsMapEvaluation generatorImages reduction18523.relations [13,1559] reduction18523.output := by lin_cert using reduction18523.terms
def image18524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18524 : InImage map_24_244 image18524 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18524 : Bundle := named_bundle% "RealMapCertificates/relations/basis18524.json"
theorem reductionProof18524 : EqualModuloRelations reduction18524.relations reduction18524.input reduction18524.output := by lin_cert using reduction18524.terms
theorem substitutionProof18524 : IsMapEvaluation generatorImages reduction18524.relations [0,2108] reduction18524.output := by lin_cert using reduction18524.terms
def image18525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18525 : InImage map_24_244 image18525 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18525 : Bundle := named_bundle% "RealMapCertificates/relations/basis18525.json"
theorem reductionProof18525 : EqualModuloRelations reduction18525.relations reduction18525.input reduction18525.output := by lin_cert using reduction18525.terms
theorem substitutionProof18525 : IsMapEvaluation generatorImages reduction18525.relations [0,209,418] reduction18525.output := by lin_cert using reduction18525.terms
def map_24_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18792 : InImage map_24_245 image18792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18792 : Bundle := named_bundle% "RealMapCertificates/relations/basis18792.json"
theorem reductionProof18792 : EqualModuloRelations reduction18792.relations reduction18792.input reduction18792.output := by lin_cert using reduction18792.terms
theorem substitutionProof18792 : IsMapEvaluation generatorImages reduction18792.relations [2174] reduction18792.output := by lin_cert using reduction18792.terms
def image18793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18793 : InImage map_24_245 image18793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18793 : Bundle := named_bundle% "RealMapCertificates/relations/basis18793.json"
theorem reductionProof18793 : EqualModuloRelations reduction18793.relations reduction18793.input reduction18793.output := by lin_cert using reduction18793.terms
theorem substitutionProof18793 : IsMapEvaluation generatorImages reduction18793.relations [2173] reduction18793.output := by lin_cert using reduction18793.terms
def image18794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18794 : InImage map_24_245 image18794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18794 : Bundle := named_bundle% "RealMapCertificates/relations/basis18794.json"
theorem reductionProof18794 : EqualModuloRelations reduction18794.relations reduction18794.input reduction18794.output := by lin_cert using reduction18794.terms
theorem substitutionProof18794 : IsMapEvaluation generatorImages reduction18794.relations [2172] reduction18794.output := by lin_cert using reduction18794.terms
def image18795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18795 : InImage map_24_245 image18795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18795 : Bundle := named_bundle% "RealMapCertificates/relations/basis18795.json"
theorem reductionProof18795 : EqualModuloRelations reduction18795.relations reduction18795.input reduction18795.output := by lin_cert using reduction18795.terms
theorem substitutionProof18795 : IsMapEvaluation generatorImages reduction18795.relations [209,439] reduction18795.output := by lin_cert using reduction18795.terms
def image18796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18796 : InImage map_24_245 image18796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18796 : Bundle := named_bundle% "RealMapCertificates/relations/basis18796.json"
theorem reductionProof18796 : EqualModuloRelations reduction18796.relations reduction18796.input reduction18796.output := by lin_cert using reduction18796.terms
theorem substitutionProof18796 : IsMapEvaluation generatorImages reduction18796.relations [13,13,67,373] reduction18796.output := by lin_cert using reduction18796.terms
def image18797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18797 : InImage map_24_245 image18797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18797 : Bundle := named_bundle% "RealMapCertificates/relations/basis18797.json"
theorem reductionProof18797 : EqualModuloRelations reduction18797.relations reduction18797.input reduction18797.output := by lin_cert using reduction18797.terms
theorem substitutionProof18797 : IsMapEvaluation generatorImages reduction18797.relations [0,0,0,2067] reduction18797.output := by lin_cert using reduction18797.terms
def map_24_246 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image19087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19087 : InImage map_24_246 image19087 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction19087 : Bundle := named_bundle% "RealMapCertificates/relations/basis19087.json"
theorem reductionProof19087 : EqualModuloRelations reduction19087.relations reduction19087.input reduction19087.output := by lin_cert using reduction19087.terms
theorem substitutionProof19087 : IsMapEvaluation generatorImages reduction19087.relations [2214] reduction19087.output := by lin_cert using reduction19087.terms
def image19088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19088 : InImage map_24_246 image19088 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction19088 : Bundle := named_bundle% "RealMapCertificates/relations/basis19088.json"
theorem reductionProof19088 : EqualModuloRelations reduction19088.relations reduction19088.input reduction19088.output := by lin_cert using reduction19088.terms
theorem substitutionProof19088 : IsMapEvaluation generatorImages reduction19088.relations [2213] reduction19088.output := by lin_cert using reduction19088.terms
def image19089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19089 : InImage map_24_246 image19089 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction19089 : Bundle := named_bundle% "RealMapCertificates/relations/basis19089.json"
theorem reductionProof19089 : EqualModuloRelations reduction19089.relations reduction19089.input reduction19089.output := by lin_cert using reduction19089.terms
theorem substitutionProof19089 : IsMapEvaluation generatorImages reduction19089.relations [2212] reduction19089.output := by lin_cert using reduction19089.terms
def image19090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19090 : InImage map_24_246 image19090 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction19090 : Bundle := named_bundle% "RealMapCertificates/relations/basis19090.json"
theorem reductionProof19090 : EqualModuloRelations reduction19090.relations reduction19090.input reduction19090.output := by lin_cert using reduction19090.terms
theorem substitutionProof19090 : IsMapEvaluation generatorImages reduction19090.relations [75,880] reduction19090.output := by lin_cert using reduction19090.terms
def image19091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19091 : InImage map_24_246 image19091 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction19091 : Bundle := named_bundle% "RealMapCertificates/relations/basis19091.json"
theorem reductionProof19091 : EqualModuloRelations reduction19091.relations reduction19091.input reduction19091.output := by lin_cert using reduction19091.terms
theorem substitutionProof19091 : IsMapEvaluation generatorImages reduction19091.relations [8,1695] reduction19091.output := by lin_cert using reduction19091.terms
def image19092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19092 : InImage map_24_246 image19092 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction19092 : Bundle := named_bundle% "RealMapCertificates/relations/basis19092.json"
theorem reductionProof19092 : EqualModuloRelations reduction19092.relations reduction19092.input reduction19092.output := by lin_cert using reduction19092.terms
theorem substitutionProof19092 : IsMapEvaluation generatorImages reduction19092.relations [8,1694] reduction19092.output := by lin_cert using reduction19092.terms
def image19093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19093 : InImage map_24_246 image19093 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction19093 : Bundle := named_bundle% "RealMapCertificates/relations/basis19093.json"
theorem reductionProof19093 : EqualModuloRelations reduction19093.relations reduction19093.input reduction19093.output := by lin_cert using reduction19093.terms
theorem substitutionProof19093 : IsMapEvaluation generatorImages reduction19093.relations [1,2138] reduction19093.output := by lin_cert using reduction19093.terms
def image19094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19094 : InImage map_24_246 image19094 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction19094 : Bundle := named_bundle% "RealMapCertificates/relations/basis19094.json"
theorem reductionProof19094 : EqualModuloRelations reduction19094.relations reduction19094.input reduction19094.output := by lin_cert using reduction19094.terms
theorem substitutionProof19094 : IsMapEvaluation generatorImages reduction19094.relations [0,2175] reduction19094.output := by lin_cert using reduction19094.terms
def image19095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19095 : InImage map_24_246 image19095 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction19095 : Bundle := named_bundle% "RealMapCertificates/relations/basis19095.json"
theorem reductionProof19095 : EqualModuloRelations reduction19095.relations reduction19095.input reduction19095.output := by lin_cert using reduction19095.terms
theorem substitutionProof19095 : IsMapEvaluation generatorImages reduction19095.relations [0,8,8,8,64,324] reduction19095.output := by lin_cert using reduction19095.terms
def image19096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19096 : InImage map_24_246 image19096 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction19096 : Bundle := named_bundle% "RealMapCertificates/relations/basis19096.json"
theorem reductionProof19096 : EqualModuloRelations reduction19096.relations reduction19096.input reduction19096.output := by lin_cert using reduction19096.terms
theorem substitutionProof19096 : IsMapEvaluation generatorImages reduction19096.relations [0,0,246,324] reduction19096.output := by lin_cert using reduction19096.terms
def map_24_247 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19329 : InImage map_24_247 image19329 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19329 : Bundle := named_bundle% "RealMapCertificates/relations/basis19329.json"
theorem reductionProof19329 : EqualModuloRelations reduction19329.relations reduction19329.input reduction19329.output := by lin_cert using reduction19329.terms
theorem substitutionProof19329 : IsMapEvaluation generatorImages reduction19329.relations [2255] reduction19329.output := by lin_cert using reduction19329.terms
def image19330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19330 : InImage map_24_247 image19330 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19330 : Bundle := named_bundle% "RealMapCertificates/relations/basis19330.json"
theorem reductionProof19330 : EqualModuloRelations reduction19330.relations reduction19330.input reduction19330.output := by lin_cert using reduction19330.terms
theorem substitutionProof19330 : IsMapEvaluation generatorImages reduction19330.relations [2254] reduction19330.output := by lin_cert using reduction19330.terms
def image19331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19331 : InImage map_24_247 image19331 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19331 : Bundle := named_bundle% "RealMapCertificates/relations/basis19331.json"
theorem reductionProof19331 : EqualModuloRelations reduction19331.relations reduction19331.input reduction19331.output := by lin_cert using reduction19331.terms
theorem substitutionProof19331 : IsMapEvaluation generatorImages reduction19331.relations [2253] reduction19331.output := by lin_cert using reduction19331.terms
def image19332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19332 : InImage map_24_247 image19332 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19332 : Bundle := named_bundle% "RealMapCertificates/relations/basis19332.json"
theorem reductionProof19332 : EqualModuloRelations reduction19332.relations reduction19332.input reduction19332.output := by lin_cert using reduction19332.terms
theorem substitutionProof19332 : IsMapEvaluation generatorImages reduction19332.relations [2252] reduction19332.output := by lin_cert using reduction19332.terms
def image19333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19333 : InImage map_24_247 image19333 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19333 : Bundle := named_bundle% "RealMapCertificates/relations/basis19333.json"
theorem reductionProof19333 : EqualModuloRelations reduction19333.relations reduction19333.input reduction19333.output := by lin_cert using reduction19333.terms
theorem substitutionProof19333 : IsMapEvaluation generatorImages reduction19333.relations [2,2108] reduction19333.output := by lin_cert using reduction19333.terms
def image19334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19334 : InImage map_24_247 image19334 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19334 : Bundle := named_bundle% "RealMapCertificates/relations/basis19334.json"
theorem reductionProof19334 : EqualModuloRelations reduction19334.relations reduction19334.input reduction19334.output := by lin_cert using reduction19334.terms
theorem substitutionProof19334 : IsMapEvaluation generatorImages reduction19334.relations [0,2217] reduction19334.output := by lin_cert using reduction19334.terms
def image19335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19335 : InImage map_24_247 image19335 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19335 : Bundle := named_bundle% "RealMapCertificates/relations/basis19335.json"
theorem reductionProof19335 : EqualModuloRelations reduction19335.relations reduction19335.input reduction19335.output := by lin_cert using reduction19335.terms
theorem substitutionProof19335 : IsMapEvaluation generatorImages reduction19335.relations [0,2216] reduction19335.output := by lin_cert using reduction19335.terms
def image19336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19336 : InImage map_24_247 image19336 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19336 : Bundle := named_bundle% "RealMapCertificates/relations/basis19336.json"
theorem reductionProof19336 : EqualModuloRelations reduction19336.relations reduction19336.input reduction19336.output := by lin_cert using reduction19336.terms
theorem substitutionProof19336 : IsMapEvaluation generatorImages reduction19336.relations [0,2215] reduction19336.output := by lin_cert using reduction19336.terms
def map_24_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19597 : InImage map_24_248 image19597 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19597 : Bundle := named_bundle% "RealMapCertificates/relations/basis19597.json"
theorem reductionProof19597 : EqualModuloRelations reduction19597.relations reduction19597.input reduction19597.output := by lin_cert using reduction19597.terms
theorem substitutionProof19597 : IsMapEvaluation generatorImages reduction19597.relations [2284] reduction19597.output := by lin_cert using reduction19597.terms
def image19598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19598 : InImage map_24_248 image19598 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19598 : Bundle := named_bundle% "RealMapCertificates/relations/basis19598.json"
theorem reductionProof19598 : EqualModuloRelations reduction19598.relations reduction19598.input reduction19598.output := by lin_cert using reduction19598.terms
theorem substitutionProof19598 : IsMapEvaluation generatorImages reduction19598.relations [2283] reduction19598.output := by lin_cert using reduction19598.terms
def image19599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19599 : InImage map_24_248 image19599 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19599 : Bundle := named_bundle% "RealMapCertificates/relations/basis19599.json"
theorem reductionProof19599 : EqualModuloRelations reduction19599.relations reduction19599.input reduction19599.output := by lin_cert using reduction19599.terms
theorem substitutionProof19599 : IsMapEvaluation generatorImages reduction19599.relations [2282] reduction19599.output := by lin_cert using reduction19599.terms
def image19600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19600 : InImage map_24_248 image19600 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19600 : Bundle := named_bundle% "RealMapCertificates/relations/basis19600.json"
theorem reductionProof19600 : EqualModuloRelations reduction19600.relations reduction19600.input reduction19600.output := by lin_cert using reduction19600.terms
theorem substitutionProof19600 : IsMapEvaluation generatorImages reduction19600.relations [1,2215] reduction19600.output := by lin_cert using reduction19600.terms
def image19601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19601 : InImage map_24_248 image19601 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19601 : Bundle := named_bundle% "RealMapCertificates/relations/basis19601.json"
theorem reductionProof19601 : EqualModuloRelations reduction19601.relations reduction19601.input reduction19601.output := by lin_cert using reduction19601.terms
theorem substitutionProof19601 : IsMapEvaluation generatorImages reduction19601.relations [1,43,1152] reduction19601.output := by lin_cert using reduction19601.terms
def image19602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19602 : InImage map_24_248 image19602 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19602 : Bundle := named_bundle% "RealMapCertificates/relations/basis19602.json"
theorem reductionProof19602 : EqualModuloRelations reduction19602.relations reduction19602.input reduction19602.output := by lin_cert using reduction19602.terms
theorem substitutionProof19602 : IsMapEvaluation generatorImages reduction19602.relations [0,2256] reduction19602.output := by lin_cert using reduction19602.terms
def map_24_249 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19900 : InImage map_24_249 image19900 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19900 : Bundle := named_bundle% "RealMapCertificates/relations/basis19900.json"
theorem reductionProof19900 : EqualModuloRelations reduction19900.relations reduction19900.input reduction19900.output := by lin_cert using reduction19900.terms
theorem substitutionProof19900 : IsMapEvaluation generatorImages reduction19900.relations [2317] reduction19900.output := by lin_cert using reduction19900.terms
def image19901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19901 : InImage map_24_249 image19901 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19901 : Bundle := named_bundle% "RealMapCertificates/relations/basis19901.json"
theorem reductionProof19901 : EqualModuloRelations reduction19901.relations reduction19901.input reduction19901.output := by lin_cert using reduction19901.terms
theorem substitutionProof19901 : IsMapEvaluation generatorImages reduction19901.relations [2316] reduction19901.output := by lin_cert using reduction19901.terms
def image19902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19902 : InImage map_24_249 image19902 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19902 : Bundle := named_bundle% "RealMapCertificates/relations/basis19902.json"
theorem reductionProof19902 : EqualModuloRelations reduction19902.relations reduction19902.input reduction19902.output := by lin_cert using reduction19902.terms
theorem substitutionProof19902 : IsMapEvaluation generatorImages reduction19902.relations [266,333] reduction19902.output := by lin_cert using reduction19902.terms
def image19903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19903 : InImage map_24_249 image19903 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19903 : Bundle := named_bundle% "RealMapCertificates/relations/basis19903.json"
theorem reductionProof19903 : EqualModuloRelations reduction19903.relations reduction19903.input reduction19903.output := by lin_cert using reduction19903.terms
theorem substitutionProof19903 : IsMapEvaluation generatorImages reduction19903.relations [188,533] reduction19903.output := by lin_cert using reduction19903.terms
def image19904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19904 : InImage map_24_249 image19904 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19904 : Bundle := named_bundle% "RealMapCertificates/relations/basis19904.json"
theorem reductionProof19904 : EqualModuloRelations reduction19904.relations reduction19904.input reduction19904.output := by lin_cert using reduction19904.terms
theorem substitutionProof19904 : IsMapEvaluation generatorImages reduction19904.relations [13,189,288] reduction19904.output := by lin_cert using reduction19904.terms
def image19905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19905 : InImage map_24_249 image19905 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19905 : Bundle := named_bundle% "RealMapCertificates/relations/basis19905.json"
theorem reductionProof19905 : EqualModuloRelations reduction19905.relations reduction19905.input reduction19905.output := by lin_cert using reduction19905.terms
theorem substitutionProof19905 : IsMapEvaluation generatorImages reduction19905.relations [9,1695] reduction19905.output := by lin_cert using reduction19905.terms
def image19906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19906 : InImage map_24_249 image19906 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19906 : Bundle := named_bundle% "RealMapCertificates/relations/basis19906.json"
theorem reductionProof19906 : EqualModuloRelations reduction19906.relations reduction19906.input reduction19906.output := by lin_cert using reduction19906.terms
theorem substitutionProof19906 : IsMapEvaluation generatorImages reduction19906.relations [8,1766] reduction19906.output := by lin_cert using reduction19906.terms
def map_24_250 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20121 : InImage map_24_250 image20121 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20121 : Bundle := named_bundle% "RealMapCertificates/relations/basis20121.json"
theorem reductionProof20121 : EqualModuloRelations reduction20121.relations reduction20121.input reduction20121.output := by lin_cert using reduction20121.terms
theorem substitutionProof20121 : IsMapEvaluation generatorImages reduction20121.relations [2348] reduction20121.output := by lin_cert using reduction20121.terms
def image20122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20122 : InImage map_24_250 image20122 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20122 : Bundle := named_bundle% "RealMapCertificates/relations/basis20122.json"
theorem reductionProof20122 : EqualModuloRelations reduction20122.relations reduction20122.input reduction20122.output := by lin_cert using reduction20122.terms
theorem substitutionProof20122 : IsMapEvaluation generatorImages reduction20122.relations [2347] reduction20122.output := by lin_cert using reduction20122.terms
def image20123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20123 : InImage map_24_250 image20123 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20123 : Bundle := named_bundle% "RealMapCertificates/relations/basis20123.json"
theorem reductionProof20123 : EqualModuloRelations reduction20123.relations reduction20123.input reduction20123.output := by lin_cert using reduction20123.terms
theorem substitutionProof20123 : IsMapEvaluation generatorImages reduction20123.relations [13,1667] reduction20123.output := by lin_cert using reduction20123.terms
def image20124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20124 : InImage map_24_250 image20124 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20124 : Bundle := named_bundle% "RealMapCertificates/relations/basis20124.json"
theorem reductionProof20124 : EqualModuloRelations reduction20124.relations reduction20124.input reduction20124.output := by lin_cert using reduction20124.terms
theorem substitutionProof20124 : IsMapEvaluation generatorImages reduction20124.relations [2,2217] reduction20124.output := by lin_cert using reduction20124.terms
def image20125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20125 : InImage map_24_250 image20125 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20125 : Bundle := named_bundle% "RealMapCertificates/relations/basis20125.json"
theorem reductionProof20125 : EqualModuloRelations reduction20125.relations reduction20125.input reduction20125.output := by lin_cert using reduction20125.terms
theorem substitutionProof20125 : IsMapEvaluation generatorImages reduction20125.relations [0,2318] reduction20125.output := by lin_cert using reduction20125.terms
def image20126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20126 : InImage map_24_250 image20126 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20126 : Bundle := named_bundle% "RealMapCertificates/relations/basis20126.json"
theorem reductionProof20126 : EqualModuloRelations reduction20126.relations reduction20126.input reduction20126.output := by lin_cert using reduction20126.terms
theorem substitutionProof20126 : IsMapEvaluation generatorImages reduction20126.relations [0,0,2286] reduction20126.output := by lin_cert using reduction20126.terms
def image20127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20127 : InImage map_24_250 image20127 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20127 : Bundle := named_bundle% "RealMapCertificates/relations/basis20127.json"
theorem reductionProof20127 : EqualModuloRelations reduction20127.relations reduction20127.input reduction20127.output := by lin_cert using reduction20127.terms
theorem substitutionProof20127 : IsMapEvaluation generatorImages reduction20127.relations [0,0,2285] reduction20127.output := by lin_cert using reduction20127.terms
def map_24_251 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20411 : InImage map_24_251 image20411 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20411 : Bundle := named_bundle% "RealMapCertificates/relations/basis20411.json"
theorem reductionProof20411 : EqualModuloRelations reduction20411.relations reduction20411.input reduction20411.output := by lin_cert using reduction20411.terms
theorem substitutionProof20411 : IsMapEvaluation generatorImages reduction20411.relations [2384] reduction20411.output := by lin_cert using reduction20411.terms
def image20412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20412 : InImage map_24_251 image20412 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20412 : Bundle := named_bundle% "RealMapCertificates/relations/basis20412.json"
theorem reductionProof20412 : EqualModuloRelations reduction20412.relations reduction20412.input reduction20412.output := by lin_cert using reduction20412.terms
theorem substitutionProof20412 : IsMapEvaluation generatorImages reduction20412.relations [17,154,324] reduction20412.output := by lin_cert using reduction20412.terms
def image20413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20413 : InImage map_24_251 image20413 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20413 : Bundle := named_bundle% "RealMapCertificates/relations/basis20413.json"
theorem reductionProof20413 : EqualModuloRelations reduction20413.relations reduction20413.input reduction20413.output := by lin_cert using reduction20413.terms
theorem substitutionProof20413 : IsMapEvaluation generatorImages reduction20413.relations [9,13,13,912] reduction20413.output := by lin_cert using reduction20413.terms
def image20414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20414 : InImage map_24_251 image20414 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20414 : Bundle := named_bundle% "RealMapCertificates/relations/basis20414.json"
theorem reductionProof20414 : EqualModuloRelations reduction20414.relations reduction20414.input reduction20414.output := by lin_cert using reduction20414.terms
theorem substitutionProof20414 : IsMapEvaluation generatorImages reduction20414.relations [1,2319] reduction20414.output := by lin_cert using reduction20414.terms
def image20415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20415 : InImage map_24_251 image20415 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20415 : Bundle := named_bundle% "RealMapCertificates/relations/basis20415.json"
theorem reductionProof20415 : EqualModuloRelations reduction20415.relations reduction20415.input reduction20415.output := by lin_cert using reduction20415.terms
theorem substitutionProof20415 : IsMapEvaluation generatorImages reduction20415.relations [0,2350] reduction20415.output := by lin_cert using reduction20415.terms
def image20416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20416 : InImage map_24_251 image20416 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20416 : Bundle := named_bundle% "RealMapCertificates/relations/basis20416.json"
theorem reductionProof20416 : EqualModuloRelations reduction20416.relations reduction20416.input reduction20416.output := by lin_cert using reduction20416.terms
theorem substitutionProof20416 : IsMapEvaluation generatorImages reduction20416.relations [0,2349] reduction20416.output := by lin_cert using reduction20416.terms
def image20417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20417 : InImage map_24_251 image20417 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20417 : Bundle := named_bundle% "RealMapCertificates/relations/basis20417.json"
theorem reductionProof20417 : EqualModuloRelations reduction20417.relations reduction20417.input reduction20417.output := by lin_cert using reduction20417.terms
theorem substitutionProof20417 : IsMapEvaluation generatorImages reduction20417.relations [0,0,0,2288] reduction20417.output := by lin_cert using reduction20417.terms
def map_24_252 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20726 : InImage map_24_252 image20726 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20726 : Bundle := named_bundle% "RealMapCertificates/relations/basis20726.json"
theorem reductionProof20726 : EqualModuloRelations reduction20726.relations reduction20726.input reduction20726.output := by lin_cert using reduction20726.terms
theorem substitutionProof20726 : IsMapEvaluation generatorImages reduction20726.relations [2420] reduction20726.output := by lin_cert using reduction20726.terms
def image20727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20727 : InImage map_24_252 image20727 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20727 : Bundle := named_bundle% "RealMapCertificates/relations/basis20727.json"
theorem reductionProof20727 : EqualModuloRelations reduction20727.relations reduction20727.input reduction20727.output := by lin_cert using reduction20727.terms
theorem substitutionProof20727 : IsMapEvaluation generatorImages reduction20727.relations [2419] reduction20727.output := by lin_cert using reduction20727.terms
def image20728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20728 : InImage map_24_252 image20728 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20728 : Bundle := named_bundle% "RealMapCertificates/relations/basis20728.json"
theorem reductionProof20728 : EqualModuloRelations reduction20728.relations reduction20728.input reduction20728.output := by lin_cert using reduction20728.terms
theorem substitutionProof20728 : IsMapEvaluation generatorImages reduction20728.relations [13,1695] reduction20728.output := by lin_cert using reduction20728.terms
def image20729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20729 : InImage map_24_252 image20729 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20729 : Bundle := named_bundle% "RealMapCertificates/relations/basis20729.json"
theorem reductionProof20729 : EqualModuloRelations reduction20729.relations reduction20729.input reduction20729.output := by lin_cert using reduction20729.terms
theorem substitutionProof20729 : IsMapEvaluation generatorImages reduction20729.relations [9,1766] reduction20729.output := by lin_cert using reduction20729.terms
def image20730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20730 : InImage map_24_252 image20730 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20730 : Bundle := named_bundle% "RealMapCertificates/relations/basis20730.json"
theorem reductionProof20730 : EqualModuloRelations reduction20730.relations reduction20730.input reduction20730.output := by lin_cert using reduction20730.terms
theorem substitutionProof20730 : IsMapEvaluation generatorImages reduction20730.relations [2,2,2141] reduction20730.output := by lin_cert using reduction20730.terms
def image20731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20731 : InImage map_24_252 image20731 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20731 : Bundle := named_bundle% "RealMapCertificates/relations/basis20731.json"
theorem reductionProof20731 : EqualModuloRelations reduction20731.relations reduction20731.input reduction20731.output := by lin_cert using reduction20731.terms
theorem substitutionProof20731 : IsMapEvaluation generatorImages reduction20731.relations [1,2349] reduction20731.output := by lin_cert using reduction20731.terms
def image20732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20732 : InImage map_24_252 image20732 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20732 : Bundle := named_bundle% "RealMapCertificates/relations/basis20732.json"
theorem reductionProof20732 : EqualModuloRelations reduction20732.relations reduction20732.input reduction20732.output := by lin_cert using reduction20732.terms
theorem substitutionProof20732 : IsMapEvaluation generatorImages reduction20732.relations [0,67,965] reduction20732.output := by lin_cert using reduction20732.terms
def image20733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20733 : InImage map_24_252 image20733 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20733 : Bundle := named_bundle% "RealMapCertificates/relations/basis20733.json"
theorem reductionProof20733 : EqualModuloRelations reduction20733.relations reduction20733.input reduction20733.output := by lin_cert using reduction20733.terms
theorem substitutionProof20733 : IsMapEvaluation generatorImages reduction20733.relations [0,0,2352] reduction20733.output := by lin_cert using reduction20733.terms
def image20734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20734 : InImage map_24_252 image20734 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20734 : Bundle := named_bundle% "RealMapCertificates/relations/basis20734.json"
theorem reductionProof20734 : EqualModuloRelations reduction20734.relations reduction20734.input reduction20734.output := by lin_cert using reduction20734.terms
theorem substitutionProof20734 : IsMapEvaluation generatorImages reduction20734.relations [0,0,0,0,0,260,324] reduction20734.output := by lin_cert using reduction20734.terms
def map_24_253 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20950 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20950 : InImage map_24_253 image20950 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20950 : Bundle := named_bundle% "RealMapCertificates/relations/basis20950.json"
theorem reductionProof20950 : EqualModuloRelations reduction20950.relations reduction20950.input reduction20950.output := by lin_cert using reduction20950.terms
theorem substitutionProof20950 : IsMapEvaluation generatorImages reduction20950.relations [2451] reduction20950.output := by lin_cert using reduction20950.terms
def image20951 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20951 : InImage map_24_253 image20951 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20951 : Bundle := named_bundle% "RealMapCertificates/relations/basis20951.json"
theorem reductionProof20951 : EqualModuloRelations reduction20951.relations reduction20951.input reduction20951.output := by lin_cert using reduction20951.terms
theorem substitutionProof20951 : IsMapEvaluation generatorImages reduction20951.relations [2450] reduction20951.output := by lin_cert using reduction20951.terms
def image20952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20952 : InImage map_24_253 image20952 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20952 : Bundle := named_bundle% "RealMapCertificates/relations/basis20952.json"
theorem reductionProof20952 : EqualModuloRelations reduction20952.relations reduction20952.input reduction20952.output := by lin_cert using reduction20952.terms
theorem substitutionProof20952 : IsMapEvaluation generatorImages reduction20952.relations [2449] reduction20952.output := by lin_cert using reduction20952.terms
def image20953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20953 : InImage map_24_253 image20953 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20953 : Bundle := named_bundle% "RealMapCertificates/relations/basis20953.json"
theorem reductionProof20953 : EqualModuloRelations reduction20953.relations reduction20953.input reduction20953.output := by lin_cert using reduction20953.terms
theorem substitutionProof20953 : IsMapEvaluation generatorImages reduction20953.relations [67,1002] reduction20953.output := by lin_cert using reduction20953.terms
def image20954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20954 : InImage map_24_253 image20954 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20954 : Bundle := named_bundle% "RealMapCertificates/relations/basis20954.json"
theorem reductionProof20954 : EqualModuloRelations reduction20954.relations reduction20954.input reduction20954.output := by lin_cert using reduction20954.terms
theorem substitutionProof20954 : IsMapEvaluation generatorImages reduction20954.relations [1,2385] reduction20954.output := by lin_cert using reduction20954.terms
def image20955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20955 : InImage map_24_253 image20955 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20955 : Bundle := named_bundle% "RealMapCertificates/relations/basis20955.json"
theorem reductionProof20955 : EqualModuloRelations reduction20955.relations reduction20955.input reduction20955.output := by lin_cert using reduction20955.terms
theorem substitutionProof20955 : IsMapEvaluation generatorImages reduction20955.relations [0,0,2387] reduction20955.output := by lin_cert using reduction20955.terms
def image20956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20956 : InImage map_24_253 image20956 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20956 : Bundle := named_bundle% "RealMapCertificates/relations/basis20956.json"
theorem reductionProof20956 : EqualModuloRelations reduction20956.relations reduction20956.input reduction20956.output := by lin_cert using reduction20956.terms
theorem substitutionProof20956 : IsMapEvaluation generatorImages reduction20956.relations [0,0,0,0,0,2291] reduction20956.output := by lin_cert using reduction20956.terms
def image20957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20957 : InImage map_24_253 image20957 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20957 : Bundle := named_bundle% "RealMapCertificates/relations/basis20957.json"
theorem reductionProof20957 : EqualModuloRelations reduction20957.relations reduction20957.input reduction20957.output := by lin_cert using reduction20957.terms
theorem substitutionProof20957 : IsMapEvaluation generatorImages reduction20957.relations [0,0,0,0,0,0,2265] reduction20957.output := by lin_cert using reduction20957.terms
end RealMapCertificates
