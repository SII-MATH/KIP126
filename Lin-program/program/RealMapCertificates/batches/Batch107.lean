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
  | 23 => [[7,7]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 67 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 88 => [[4,4,5,5,7]]
  | 97 => [[1,4,4,4,4,4,4]]
  | 100 => [[4,4,5,7,7]]
  | 102 => [[2,4,4,4,4,4,4]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 162 => [[0,5,9,12]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 184 => []
  | 188 => []
  | 190 => []
  | 209 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 299 => []
  | 324 => []
  | 373 => []
  | 376 => []
  | 533 => []
  | 629 => []
  | 912 => []
  | 965 => []
  | 1017 => []
  | 1052 => []
  | 1057 => []
  | 1097 => []
  | 1435 => []
  | 1766 => []
  | 1894 => []
  | 1944 => []
  | 2108 => []
  | 2138 => []
  | 2215 => []
  | 2285 => []
  | 2349 => []
  | 2355 => []
  | 2389 => []
  | 2430 => []
  | 2433 => []
  | 2452 => []
  | 2454 => []
  | 2455 => []
  | 2478 => []
  | 2503 => []
  | 2504 => []
  | 2506 => []
  | 2508 => []
  | 2559 => []
  | 2560 => []
  | 2589 => []
  | 2590 => []
  | 2591 => []
  | 2592 => []
  | 2593 => []
  | 2594 => []
  | 2598 => []
  | 2638 => []
  | 2640 => []
  | 2687 => []
  | 2688 => []
  | 2752 => []
  | 2753 => []
  | 2754 => []
  | 2755 => []
  | 2757 => []
  | 2758 => []
  | 2811 => []
  | 2812 => []
  | 2813 => []
  | 2817 => []
  | 2872 => []
  | _ => []
def map_24_254 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21244 : InImage map_24_254 image21244 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21244 : Bundle := named_bundle% "RealMapCertificates/relations/basis21244.json"
theorem reductionProof21244 : EqualModuloRelations reduction21244.relations reduction21244.input reduction21244.output := by lin_cert using reduction21244.terms
theorem substitutionProof21244 : IsMapEvaluation generatorImages reduction21244.relations [2503] reduction21244.output := by lin_cert using reduction21244.terms
def image21245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21245 : InImage map_24_254 image21245 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21245 : Bundle := named_bundle% "RealMapCertificates/relations/basis21245.json"
theorem reductionProof21245 : EqualModuloRelations reduction21245.relations reduction21245.input reduction21245.output := by lin_cert using reduction21245.terms
theorem substitutionProof21245 : IsMapEvaluation generatorImages reduction21245.relations [17,162,324] reduction21245.output := by lin_cert using reduction21245.terms
def image21246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21246 : InImage map_24_254 image21246 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21246 : Bundle := named_bundle% "RealMapCertificates/relations/basis21246.json"
theorem reductionProof21246 : EqualModuloRelations reduction21246.relations reduction21246.input reduction21246.output := by lin_cert using reduction21246.terms
theorem substitutionProof21246 : IsMapEvaluation generatorImages reduction21246.relations [13,13,13,912] reduction21246.output := by lin_cert using reduction21246.terms
def image21247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21247 : InImage map_24_254 image21247 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21247 : Bundle := named_bundle% "RealMapCertificates/relations/basis21247.json"
theorem reductionProof21247 : EqualModuloRelations reduction21247.relations reduction21247.input reduction21247.output := by lin_cert using reduction21247.terms
theorem substitutionProof21247 : IsMapEvaluation generatorImages reduction21247.relations [8,1894] reduction21247.output := by lin_cert using reduction21247.terms
def image21248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21248 : InImage map_24_254 image21248 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21248 : Bundle := named_bundle% "RealMapCertificates/relations/basis21248.json"
theorem reductionProof21248 : EqualModuloRelations reduction21248.relations reduction21248.input reduction21248.output := by lin_cert using reduction21248.terms
theorem substitutionProof21248 : IsMapEvaluation generatorImages reduction21248.relations [3,2215] reduction21248.output := by lin_cert using reduction21248.terms
def image21249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21249 : InImage map_24_254 image21249 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21249 : Bundle := named_bundle% "RealMapCertificates/relations/basis21249.json"
theorem reductionProof21249 : EqualModuloRelations reduction21249.relations reduction21249.input reduction21249.output := by lin_cert using reduction21249.terms
theorem substitutionProof21249 : IsMapEvaluation generatorImages reduction21249.relations [2,2349] reduction21249.output := by lin_cert using reduction21249.terms
def image21250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21250 : InImage map_24_254 image21250 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21250 : Bundle := named_bundle% "RealMapCertificates/relations/basis21250.json"
theorem reductionProof21250 : EqualModuloRelations reduction21250.relations reduction21250.input reduction21250.output := by lin_cert using reduction21250.terms
theorem substitutionProof21250 : IsMapEvaluation generatorImages reduction21250.relations [0,2454] reduction21250.output := by lin_cert using reduction21250.terms
def image21251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21251 : InImage map_24_254 image21251 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21251 : Bundle := named_bundle% "RealMapCertificates/relations/basis21251.json"
theorem reductionProof21251 : EqualModuloRelations reduction21251.relations reduction21251.input reduction21251.output := by lin_cert using reduction21251.terms
theorem substitutionProof21251 : IsMapEvaluation generatorImages reduction21251.relations [0,2452] reduction21251.output := by lin_cert using reduction21251.terms
def image21252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21252 : InImage map_24_254 image21252 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21252 : Bundle := named_bundle% "RealMapCertificates/relations/basis21252.json"
theorem reductionProof21252 : EqualModuloRelations reduction21252.relations reduction21252.input reduction21252.output := by lin_cert using reduction21252.terms
theorem substitutionProof21252 : IsMapEvaluation generatorImages reduction21252.relations [0,0,0,2389] reduction21252.output := by lin_cert using reduction21252.terms
def map_24_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21603 : InImage map_24_255 image21603 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21603 : Bundle := named_bundle% "RealMapCertificates/relations/basis21603.json"
theorem reductionProof21603 : EqualModuloRelations reduction21603.relations reduction21603.input reduction21603.output := by lin_cert using reduction21603.terms
theorem substitutionProof21603 : IsMapEvaluation generatorImages reduction21603.relations [2559] reduction21603.output := by lin_cert using reduction21603.terms
def image21604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21604 : InImage map_24_255 image21604 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21604 : Bundle := named_bundle% "RealMapCertificates/relations/basis21604.json"
theorem reductionProof21604 : EqualModuloRelations reduction21604.relations reduction21604.input reduction21604.output := by lin_cert using reduction21604.terms
theorem substitutionProof21604 : IsMapEvaluation generatorImages reduction21604.relations [13,1766] reduction21604.output := by lin_cert using reduction21604.terms
def image21605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21605 : InImage map_24_255 image21605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21605 : Bundle := named_bundle% "RealMapCertificates/relations/basis21605.json"
theorem reductionProof21605 : EqualModuloRelations reduction21605.relations reduction21605.input reduction21605.output := by lin_cert using reduction21605.terms
theorem substitutionProof21605 : IsMapEvaluation generatorImages reduction21605.relations [0,2504] reduction21605.output := by lin_cert using reduction21605.terms
def image21606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21606 : InImage map_24_255 image21606 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21606 : Bundle := named_bundle% "RealMapCertificates/relations/basis21606.json"
theorem reductionProof21606 : EqualModuloRelations reduction21606.relations reduction21606.input reduction21606.output := by lin_cert using reduction21606.terms
theorem substitutionProof21606 : IsMapEvaluation generatorImages reduction21606.relations [0,209,533] reduction21606.output := by lin_cert using reduction21606.terms
def image21607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21607 : InImage map_24_255 image21607 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21607 : Bundle := named_bundle% "RealMapCertificates/relations/basis21607.json"
theorem reductionProof21607 : EqualModuloRelations reduction21607.relations reduction21607.input reduction21607.output := by lin_cert using reduction21607.terms
theorem substitutionProof21607 : IsMapEvaluation generatorImages reduction21607.relations [0,67,1017] reduction21607.output := by lin_cert using reduction21607.terms
def image21608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21608 : InImage map_24_255 image21608 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21608 : Bundle := named_bundle% "RealMapCertificates/relations/basis21608.json"
theorem reductionProof21608 : EqualModuloRelations reduction21608.relations reduction21608.input reduction21608.output := by lin_cert using reduction21608.terms
theorem substitutionProof21608 : IsMapEvaluation generatorImages reduction21608.relations [0,0,2455] reduction21608.output := by lin_cert using reduction21608.terms
def map_24_256 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21847 : InImage map_24_256 image21847 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21847 : Bundle := named_bundle% "RealMapCertificates/relations/basis21847.json"
theorem reductionProof21847 : EqualModuloRelations reduction21847.relations reduction21847.input reduction21847.output := by lin_cert using reduction21847.terms
theorem substitutionProof21847 : IsMapEvaluation generatorImages reduction21847.relations [2591] reduction21847.output := by lin_cert using reduction21847.terms
def image21848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21848 : InImage map_24_256 image21848 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21848 : Bundle := named_bundle% "RealMapCertificates/relations/basis21848.json"
theorem reductionProof21848 : EqualModuloRelations reduction21848.relations reduction21848.input reduction21848.output := by lin_cert using reduction21848.terms
theorem substitutionProof21848 : IsMapEvaluation generatorImages reduction21848.relations [2590] reduction21848.output := by lin_cert using reduction21848.terms
def image21849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21849 : InImage map_24_256 image21849 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21849 : Bundle := named_bundle% "RealMapCertificates/relations/basis21849.json"
theorem reductionProof21849 : EqualModuloRelations reduction21849.relations reduction21849.input reduction21849.output := by lin_cert using reduction21849.terms
theorem substitutionProof21849 : IsMapEvaluation generatorImages reduction21849.relations [2589] reduction21849.output := by lin_cert using reduction21849.terms
def image21850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21850 : InImage map_24_256 image21850 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21850 : Bundle := named_bundle% "RealMapCertificates/relations/basis21850.json"
theorem reductionProof21850 : EqualModuloRelations reduction21850.relations reduction21850.input reduction21850.output := by lin_cert using reduction21850.terms
theorem substitutionProof21850 : IsMapEvaluation generatorImages reduction21850.relations [9,188,373] reduction21850.output := by lin_cert using reduction21850.terms
def image21851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21851 : InImage map_24_256 image21851 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21851 : Bundle := named_bundle% "RealMapCertificates/relations/basis21851.json"
theorem reductionProof21851 : EqualModuloRelations reduction21851.relations reduction21851.input reduction21851.output := by lin_cert using reduction21851.terms
theorem substitutionProof21851 : IsMapEvaluation generatorImages reduction21851.relations [1,2504] reduction21851.output := by lin_cert using reduction21851.terms
def image21852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21852 : InImage map_24_256 image21852 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21852 : Bundle := named_bundle% "RealMapCertificates/relations/basis21852.json"
theorem reductionProof21852 : EqualModuloRelations reduction21852.relations reduction21852.input reduction21852.output := by lin_cert using reduction21852.terms
theorem substitutionProof21852 : IsMapEvaluation generatorImages reduction21852.relations [0,64,1057] reduction21852.output := by lin_cert using reduction21852.terms
def image21853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21853 : InImage map_24_256 image21853 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21853 : Bundle := named_bundle% "RealMapCertificates/relations/basis21853.json"
theorem reductionProof21853 : EqualModuloRelations reduction21853.relations reduction21853.input reduction21853.output := by lin_cert using reduction21853.terms
theorem substitutionProof21853 : IsMapEvaluation generatorImages reduction21853.relations [0,0,2508] reduction21853.output := by lin_cert using reduction21853.terms
def image21854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21854 : InImage map_24_256 image21854 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21854 : Bundle := named_bundle% "RealMapCertificates/relations/basis21854.json"
theorem reductionProof21854 : EqualModuloRelations reduction21854.relations reduction21854.input reduction21854.output := by lin_cert using reduction21854.terms
theorem substitutionProof21854 : IsMapEvaluation generatorImages reduction21854.relations [0,0,2506] reduction21854.output := by lin_cert using reduction21854.terms
def map_24_257 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22195 : InImage map_24_257 image22195 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22195 : Bundle := named_bundle% "RealMapCertificates/relations/basis22195.json"
theorem reductionProof22195 : EqualModuloRelations reduction22195.relations reduction22195.input reduction22195.output := by lin_cert using reduction22195.terms
theorem substitutionProof22195 : IsMapEvaluation generatorImages reduction22195.relations [9,1894] reduction22195.output := by lin_cert using reduction22195.terms
def image22196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22196 : InImage map_24_257 image22196 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22196 : Bundle := named_bundle% "RealMapCertificates/relations/basis22196.json"
theorem reductionProof22196 : EqualModuloRelations reduction22196.relations reduction22196.input reduction22196.output := by lin_cert using reduction22196.terms
theorem substitutionProof22196 : IsMapEvaluation generatorImages reduction22196.relations [8,42,64,324] reduction22196.output := by lin_cert using reduction22196.terms
def image22197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22197 : InImage map_24_257 image22197 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22197 : Bundle := named_bundle% "RealMapCertificates/relations/basis22197.json"
theorem reductionProof22197 : EqualModuloRelations reduction22197.relations reduction22197.input reduction22197.output := by lin_cert using reduction22197.terms
theorem substitutionProof22197 : IsMapEvaluation generatorImages reduction22197.relations [1,64,1057] reduction22197.output := by lin_cert using reduction22197.terms
def image22198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22198 : InImage map_24_257 image22198 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22198 : Bundle := named_bundle% "RealMapCertificates/relations/basis22198.json"
theorem reductionProof22198 : EqualModuloRelations reduction22198.relations reduction22198.input reduction22198.output := by lin_cert using reduction22198.terms
theorem substitutionProof22198 : IsMapEvaluation generatorImages reduction22198.relations [0,2594] reduction22198.output := by lin_cert using reduction22198.terms
def image22199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22199 : InImage map_24_257 image22199 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22199 : Bundle := named_bundle% "RealMapCertificates/relations/basis22199.json"
theorem reductionProof22199 : EqualModuloRelations reduction22199.relations reduction22199.input reduction22199.output := by lin_cert using reduction22199.terms
theorem substitutionProof22199 : IsMapEvaluation generatorImages reduction22199.relations [0,2593] reduction22199.output := by lin_cert using reduction22199.terms
def image22200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22200 : InImage map_24_257 image22200 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22200 : Bundle := named_bundle% "RealMapCertificates/relations/basis22200.json"
theorem reductionProof22200 : EqualModuloRelations reduction22200.relations reduction22200.input reduction22200.output := by lin_cert using reduction22200.terms
theorem substitutionProof22200 : IsMapEvaluation generatorImages reduction22200.relations [0,2592] reduction22200.output := by lin_cert using reduction22200.terms
def image22201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22201 : InImage map_24_257 image22201 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22201 : Bundle := named_bundle% "RealMapCertificates/relations/basis22201.json"
theorem reductionProof22201 : EqualModuloRelations reduction22201.relations reduction22201.input reduction22201.output := by lin_cert using reduction22201.terms
theorem substitutionProof22201 : IsMapEvaluation generatorImages reduction22201.relations [0,3,2285] reduction22201.output := by lin_cert using reduction22201.terms
def image22202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22202 : InImage map_24_257 image22202 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22202 : Bundle := named_bundle% "RealMapCertificates/relations/basis22202.json"
theorem reductionProof22202 : EqualModuloRelations reduction22202.relations reduction22202.input reduction22202.output := by lin_cert using reduction22202.terms
theorem substitutionProof22202 : IsMapEvaluation generatorImages reduction22202.relations [0,0,2560] reduction22202.output := by lin_cert using reduction22202.terms
def map_24_258 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22564 : InImage map_24_258 image22564 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22564 : Bundle := named_bundle% "RealMapCertificates/relations/basis22564.json"
theorem reductionProof22564 : EqualModuloRelations reduction22564.relations reduction22564.input reduction22564.output := by lin_cert using reduction22564.terms
theorem substitutionProof22564 : IsMapEvaluation generatorImages reduction22564.relations [2688] reduction22564.output := by lin_cert using reduction22564.terms
def image22565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22565 : InImage map_24_258 image22565 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22565 : Bundle := named_bundle% "RealMapCertificates/relations/basis22565.json"
theorem reductionProof22565 : EqualModuloRelations reduction22565.relations reduction22565.input reduction22565.output := by lin_cert using reduction22565.terms
theorem substitutionProof22565 : IsMapEvaluation generatorImages reduction22565.relations [2687] reduction22565.output := by lin_cert using reduction22565.terms
def image22566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22566 : InImage map_24_258 image22566 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22566 : Bundle := named_bundle% "RealMapCertificates/relations/basis22566.json"
theorem reductionProof22566 : EqualModuloRelations reduction22566.relations reduction22566.input reduction22566.output := by lin_cert using reduction22566.terms
theorem substitutionProof22566 : IsMapEvaluation generatorImages reduction22566.relations [3,2349] reduction22566.output := by lin_cert using reduction22566.terms
def image22567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22567 : InImage map_24_258 image22567 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22567 : Bundle := named_bundle% "RealMapCertificates/relations/basis22567.json"
theorem reductionProof22567 : EqualModuloRelations reduction22567.relations reduction22567.input reduction22567.output := by lin_cert using reduction22567.terms
theorem substitutionProof22567 : IsMapEvaluation generatorImages reduction22567.relations [1,2592] reduction22567.output := by lin_cert using reduction22567.terms
def image22568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22568 : InImage map_24_258 image22568 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22568 : Bundle := named_bundle% "RealMapCertificates/relations/basis22568.json"
theorem reductionProof22568 : EqualModuloRelations reduction22568.relations reduction22568.input reduction22568.output := by lin_cert using reduction22568.terms
theorem substitutionProof22568 : IsMapEvaluation generatorImages reduction22568.relations [0,2640] reduction22568.output := by lin_cert using reduction22568.terms
def image22569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22569 : InImage map_24_258 image22569 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22569 : Bundle := named_bundle% "RealMapCertificates/relations/basis22569.json"
theorem reductionProof22569 : EqualModuloRelations reduction22569.relations reduction22569.input reduction22569.output := by lin_cert using reduction22569.terms
theorem substitutionProof22569 : IsMapEvaluation generatorImages reduction22569.relations [0,0,2598] reduction22569.output := by lin_cert using reduction22569.terms
def image22570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22570 : InImage map_24_258 image22570 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22570 : Bundle := named_bundle% "RealMapCertificates/relations/basis22570.json"
theorem reductionProof22570 : EqualModuloRelations reduction22570.relations reduction22570.input reduction22570.output := by lin_cert using reduction22570.terms
theorem substitutionProof22570 : IsMapEvaluation generatorImages reduction22570.relations [0,0,0,0,299,324] reduction22570.output := by lin_cert using reduction22570.terms
def map_24_259 : Matrix 0 12 := fun i j => ([] : List Bool)[i.val*12+j.val]!
def image22856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22856 : InImage map_24_259 image22856 := by lin_cert using (fun j : Fin 12 => decide (j.val = 0))
def reduction22856 : Bundle := named_bundle% "RealMapCertificates/relations/basis22856.json"
theorem reductionProof22856 : EqualModuloRelations reduction22856.relations reduction22856.input reduction22856.output := by lin_cert using reduction22856.terms
theorem substitutionProof22856 : IsMapEvaluation generatorImages reduction22856.relations [2753] reduction22856.output := by lin_cert using reduction22856.terms
def image22857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22857 : InImage map_24_259 image22857 := by lin_cert using (fun j : Fin 12 => decide (j.val = 1))
def reduction22857 : Bundle := named_bundle% "RealMapCertificates/relations/basis22857.json"
theorem reductionProof22857 : EqualModuloRelations reduction22857.relations reduction22857.input reduction22857.output := by lin_cert using reduction22857.terms
theorem substitutionProof22857 : IsMapEvaluation generatorImages reduction22857.relations [2752] reduction22857.output := by lin_cert using reduction22857.terms
def image22858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22858 : InImage map_24_259 image22858 := by lin_cert using (fun j : Fin 12 => decide (j.val = 2))
def reduction22858 : Bundle := named_bundle% "RealMapCertificates/relations/basis22858.json"
theorem reductionProof22858 : EqualModuloRelations reduction22858.relations reduction22858.input reduction22858.output := by lin_cert using reduction22858.terms
theorem substitutionProof22858 : IsMapEvaluation generatorImages reduction22858.relations [76,1052] reduction22858.output := by lin_cert using reduction22858.terms
def image22859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22859 : InImage map_24_259 image22859 := by lin_cert using (fun j : Fin 12 => decide (j.val = 3))
def reduction22859 : Bundle := named_bundle% "RealMapCertificates/relations/basis22859.json"
theorem reductionProof22859 : EqualModuloRelations reduction22859.relations reduction22859.input reduction22859.output := by lin_cert using reduction22859.terms
theorem substitutionProof22859 : IsMapEvaluation generatorImages reduction22859.relations [67,1097] reduction22859.output := by lin_cert using reduction22859.terms
def image22860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22860 : InImage map_24_259 image22860 := by lin_cert using (fun j : Fin 12 => decide (j.val = 4))
def reduction22860 : Bundle := named_bundle% "RealMapCertificates/relations/basis22860.json"
theorem reductionProof22860 : EqualModuloRelations reduction22860.relations reduction22860.input reduction22860.output := by lin_cert using reduction22860.terms
theorem substitutionProof22860 : IsMapEvaluation generatorImages reduction22860.relations [13,188,373] reduction22860.output := by lin_cert using reduction22860.terms
def image22861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22861 : InImage map_24_259 image22861 := by lin_cert using (fun j : Fin 12 => decide (j.val = 5))
def reduction22861 : Bundle := named_bundle% "RealMapCertificates/relations/basis22861.json"
theorem reductionProof22861 : EqualModuloRelations reduction22861.relations reduction22861.input reduction22861.output := by lin_cert using reduction22861.terms
theorem substitutionProof22861 : IsMapEvaluation generatorImages reduction22861.relations [9,1944] reduction22861.output := by lin_cert using reduction22861.terms
def image22862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22862 : InImage map_24_259 image22862 := by lin_cert using (fun j : Fin 12 => decide (j.val = 6))
def reduction22862 : Bundle := named_bundle% "RealMapCertificates/relations/basis22862.json"
theorem reductionProof22862 : EqualModuloRelations reduction22862.relations reduction22862.input reduction22862.output := by lin_cert using reduction22862.terms
theorem substitutionProof22862 : IsMapEvaluation generatorImages reduction22862.relations [7,2108] reduction22862.output := by lin_cert using reduction22862.terms
def image22863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22863 : InImage map_24_259 image22863 := by lin_cert using (fun j : Fin 12 => decide (j.val = 7))
def reduction22863 : Bundle := named_bundle% "RealMapCertificates/relations/basis22863.json"
theorem reductionProof22863 : EqualModuloRelations reduction22863.relations reduction22863.input reduction22863.output := by lin_cert using reduction22863.terms
theorem substitutionProof22863 : IsMapEvaluation generatorImages reduction22863.relations [3,67,965] reduction22863.output := by lin_cert using reduction22863.terms
def image22864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22864 : InImage map_24_259 image22864 := by lin_cert using (fun j : Fin 12 => decide (j.val = 8))
def reduction22864 : Bundle := named_bundle% "RealMapCertificates/relations/basis22864.json"
theorem reductionProof22864 : EqualModuloRelations reduction22864.relations reduction22864.input reduction22864.output := by lin_cert using reduction22864.terms
theorem substitutionProof22864 : IsMapEvaluation generatorImages reduction22864.relations [1,2640] reduction22864.output := by lin_cert using reduction22864.terms
def image22865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22865 : InImage map_24_259 image22865 := by lin_cert using (fun j : Fin 12 => decide (j.val = 9))
def reduction22865 : Bundle := named_bundle% "RealMapCertificates/relations/basis22865.json"
theorem reductionProof22865 : EqualModuloRelations reduction22865.relations reduction22865.input reduction22865.output := by lin_cert using reduction22865.terms
theorem substitutionProof22865 : IsMapEvaluation generatorImages reduction22865.relations [1,2638] reduction22865.output := by lin_cert using reduction22865.terms
def image22866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22866 : InImage map_24_259 image22866 := by lin_cert using (fun j : Fin 12 => decide (j.val = 10))
def reduction22866 : Bundle := named_bundle% "RealMapCertificates/relations/basis22866.json"
theorem reductionProof22866 : EqualModuloRelations reduction22866.relations reduction22866.input reduction22866.output := by lin_cert using reduction22866.terms
theorem substitutionProof22866 : IsMapEvaluation generatorImages reduction22866.relations [1,1,2560] reduction22866.output := by lin_cert using reduction22866.terms
def image22867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22867 : InImage map_24_259 image22867 := by lin_cert using (fun j : Fin 12 => decide (j.val = 11))
def reduction22867 : Bundle := named_bundle% "RealMapCertificates/relations/basis22867.json"
theorem reductionProof22867 : EqualModuloRelations reduction22867.relations reduction22867.input reduction22867.output := by lin_cert using reduction22867.terms
theorem substitutionProof22867 : IsMapEvaluation generatorImages reduction22867.relations [0,0,0,0,0,0,0,2430] reduction22867.output := by lin_cert using reduction22867.terms
def map_24_260 : Matrix 0 13 := fun i j => ([] : List Bool)[i.val*13+j.val]!
def image23240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23240 : InImage map_24_260 image23240 := by lin_cert using (fun j : Fin 13 => decide (j.val = 0))
def reduction23240 : Bundle := named_bundle% "RealMapCertificates/relations/basis23240.json"
theorem reductionProof23240 : EqualModuloRelations reduction23240.relations reduction23240.input reduction23240.output := by lin_cert using reduction23240.terms
theorem substitutionProof23240 : IsMapEvaluation generatorImages reduction23240.relations [2812] reduction23240.output := by lin_cert using reduction23240.terms
def image23241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23241 : InImage map_24_260 image23241 := by lin_cert using (fun j : Fin 13 => decide (j.val = 1))
def reduction23241 : Bundle := named_bundle% "RealMapCertificates/relations/basis23241.json"
theorem reductionProof23241 : EqualModuloRelations reduction23241.relations reduction23241.input reduction23241.output := by lin_cert using reduction23241.terms
theorem substitutionProof23241 : IsMapEvaluation generatorImages reduction23241.relations [2811] reduction23241.output := by lin_cert using reduction23241.terms
def image23242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23242 : InImage map_24_260 image23242 := by lin_cert using (fun j : Fin 13 => decide (j.val = 2))
def reduction23242 : Bundle := named_bundle% "RealMapCertificates/relations/basis23242.json"
theorem reductionProof23242 : EqualModuloRelations reduction23242.relations reduction23242.input reduction23242.output := by lin_cert using reduction23242.terms
theorem substitutionProof23242 : IsMapEvaluation generatorImages reduction23242.relations [190,629] reduction23242.output := by lin_cert using reduction23242.terms
def image23243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23243 : InImage map_24_260 image23243 := by lin_cert using (fun j : Fin 13 => decide (j.val = 3))
def reduction23243 : Bundle := named_bundle% "RealMapCertificates/relations/basis23243.json"
theorem reductionProof23243 : EqualModuloRelations reduction23243.relations reduction23243.input reduction23243.output := by lin_cert using reduction23243.terms
theorem substitutionProof23243 : IsMapEvaluation generatorImages reduction23243.relations [13,1894] reduction23243.output := by lin_cert using reduction23243.terms
def image23244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23244 : InImage map_24_260 image23244 := by lin_cert using (fun j : Fin 13 => decide (j.val = 4))
def reduction23244 : Bundle := named_bundle% "RealMapCertificates/relations/basis23244.json"
theorem reductionProof23244 : EqualModuloRelations reduction23244.relations reduction23244.input reduction23244.output := by lin_cert using reduction23244.terms
theorem substitutionProof23244 : IsMapEvaluation generatorImages reduction23244.relations [13,23,75,376] reduction23244.output := by lin_cert using reduction23244.terms
def image23245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23245 : InImage map_24_260 image23245 := by lin_cert using (fun j : Fin 13 => decide (j.val = 5))
def reduction23245 : Bundle := named_bundle% "RealMapCertificates/relations/basis23245.json"
theorem reductionProof23245 : EqualModuloRelations reduction23245.relations reduction23245.input reduction23245.output := by lin_cert using reduction23245.terms
theorem substitutionProof23245 : IsMapEvaluation generatorImages reduction23245.relations [8,23,113,324] reduction23245.output := by lin_cert using reduction23245.terms
def image23246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23246 : InImage map_24_260 image23246 := by lin_cert using (fun j : Fin 13 => decide (j.val = 6))
def reduction23246 : Bundle := named_bundle% "RealMapCertificates/relations/basis23246.json"
theorem reductionProof23246 : EqualModuloRelations reduction23246.relations reduction23246.input reduction23246.output := by lin_cert using reduction23246.terms
theorem substitutionProof23246 : IsMapEvaluation generatorImages reduction23246.relations [7,2138] reduction23246.output := by lin_cert using reduction23246.terms
def image23247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23247 : InImage map_24_260 image23247 := by lin_cert using (fun j : Fin 13 => decide (j.val = 7))
def reduction23247 : Bundle := named_bundle% "RealMapCertificates/relations/basis23247.json"
theorem reductionProof23247 : EqualModuloRelations reduction23247.relations reduction23247.input reduction23247.output := by lin_cert using reduction23247.terms
theorem substitutionProof23247 : IsMapEvaluation generatorImages reduction23247.relations [0,2758] reduction23247.output := by lin_cert using reduction23247.terms
def image23248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23248 : InImage map_24_260 image23248 := by lin_cert using (fun j : Fin 13 => decide (j.val = 8))
def reduction23248 : Bundle := named_bundle% "RealMapCertificates/relations/basis23248.json"
theorem reductionProof23248 : EqualModuloRelations reduction23248.relations reduction23248.input reduction23248.output := by lin_cert using reduction23248.terms
theorem substitutionProof23248 : IsMapEvaluation generatorImages reduction23248.relations [0,2757] reduction23248.output := by lin_cert using reduction23248.terms
def image23249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23249 : InImage map_24_260 image23249 := by lin_cert using (fun j : Fin 13 => decide (j.val = 9))
def reduction23249 : Bundle := named_bundle% "RealMapCertificates/relations/basis23249.json"
theorem reductionProof23249 : EqualModuloRelations reduction23249.relations reduction23249.input reduction23249.output := by lin_cert using reduction23249.terms
theorem substitutionProof23249 : IsMapEvaluation generatorImages reduction23249.relations [0,2755] reduction23249.output := by lin_cert using reduction23249.terms
def image23250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23250 : InImage map_24_260 image23250 := by lin_cert using (fun j : Fin 13 => decide (j.val = 10))
def reduction23250 : Bundle := named_bundle% "RealMapCertificates/relations/basis23250.json"
theorem reductionProof23250 : EqualModuloRelations reduction23250.relations reduction23250.input reduction23250.output := by lin_cert using reduction23250.terms
theorem substitutionProof23250 : IsMapEvaluation generatorImages reduction23250.relations [0,2754] reduction23250.output := by lin_cert using reduction23250.terms
def image23251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23251 : InImage map_24_260 image23251 := by lin_cert using (fun j : Fin 13 => decide (j.val = 11))
def reduction23251 : Bundle := named_bundle% "RealMapCertificates/relations/basis23251.json"
theorem reductionProof23251 : EqualModuloRelations reduction23251.relations reduction23251.input reduction23251.output := by lin_cert using reduction23251.terms
theorem substitutionProof23251 : IsMapEvaluation generatorImages reduction23251.relations [0,2,2560] reduction23251.output := by lin_cert using reduction23251.terms
def image23252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23252 : InImage map_24_260 image23252 := by lin_cert using (fun j : Fin 13 => decide (j.val = 12))
def reduction23252 : Bundle := named_bundle% "RealMapCertificates/relations/basis23252.json"
theorem reductionProof23252 : EqualModuloRelations reduction23252.relations reduction23252.input reduction23252.output := by lin_cert using reduction23252.terms
theorem substitutionProof23252 : IsMapEvaluation generatorImages reduction23252.relations [0,0,3,2355] reduction23252.output := by lin_cert using reduction23252.terms
def map_24_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23683 : InImage map_24_261 image23683 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23683 : Bundle := named_bundle% "RealMapCertificates/relations/basis23683.json"
theorem reductionProof23683 : EqualModuloRelations reduction23683.relations reduction23683.input reduction23683.output := by lin_cert using reduction23683.terms
theorem substitutionProof23683 : IsMapEvaluation generatorImages reduction23683.relations [2872] reduction23683.output := by lin_cert using reduction23683.terms
def image23684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23684 : InImage map_24_261 image23684 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23684 : Bundle := named_bundle% "RealMapCertificates/relations/basis23684.json"
theorem reductionProof23684 : EqualModuloRelations reduction23684.relations reduction23684.input reduction23684.output := by lin_cert using reduction23684.terms
theorem substitutionProof23684 : IsMapEvaluation generatorImages reduction23684.relations [13,13,1435] reduction23684.output := by lin_cert using reduction23684.terms
def image23685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23685 : InImage map_24_261 image23685 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23685 : Bundle := named_bundle% "RealMapCertificates/relations/basis23685.json"
theorem reductionProof23685 : EqualModuloRelations reduction23685.relations reduction23685.input reduction23685.output := by lin_cert using reduction23685.terms
theorem substitutionProof23685 : IsMapEvaluation generatorImages reduction23685.relations [3,2452] reduction23685.output := by lin_cert using reduction23685.terms
def image23686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23686 : InImage map_24_261 image23686 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23686 : Bundle := named_bundle% "RealMapCertificates/relations/basis23686.json"
theorem reductionProof23686 : EqualModuloRelations reduction23686.relations reduction23686.input reduction23686.output := by lin_cert using reduction23686.terms
theorem substitutionProof23686 : IsMapEvaluation generatorImages reduction23686.relations [1,2758] reduction23686.output := by lin_cert using reduction23686.terms
def image23687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23687 : InImage map_24_261 image23687 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23687 : Bundle := named_bundle% "RealMapCertificates/relations/basis23687.json"
theorem reductionProof23687 : EqualModuloRelations reduction23687.relations reduction23687.input reduction23687.output := by lin_cert using reduction23687.terms
theorem substitutionProof23687 : IsMapEvaluation generatorImages reduction23687.relations [1,2757] reduction23687.output := by lin_cert using reduction23687.terms
def image23688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23688 : InImage map_24_261 image23688 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23688 : Bundle := named_bundle% "RealMapCertificates/relations/basis23688.json"
theorem reductionProof23688 : EqualModuloRelations reduction23688.relations reduction23688.input reduction23688.output := by lin_cert using reduction23688.terms
theorem substitutionProof23688 : IsMapEvaluation generatorImages reduction23688.relations [0,2817] reduction23688.output := by lin_cert using reduction23688.terms
def image23689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23689 : InImage map_24_261 image23689 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23689 : Bundle := named_bundle% "RealMapCertificates/relations/basis23689.json"
theorem reductionProof23689 : EqualModuloRelations reduction23689.relations reduction23689.input reduction23689.output := by lin_cert using reduction23689.terms
theorem substitutionProof23689 : IsMapEvaluation generatorImages reduction23689.relations [0,2813] reduction23689.output := by lin_cert using reduction23689.terms
def image23690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23690 : InImage map_24_261 image23690 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23690 : Bundle := named_bundle% "RealMapCertificates/relations/basis23690.json"
theorem reductionProof23690 : EqualModuloRelations reduction23690.relations reduction23690.input reduction23690.output := by lin_cert using reduction23690.terms
theorem substitutionProof23690 : IsMapEvaluation generatorImages reduction23690.relations [0,0,0,0,0,0,0,0,2478] reduction23690.output := by lin_cert using reduction23690.terms
def image23691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23691 : InImage map_24_261 image23691 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23691 : Bundle := named_bundle% "RealMapCertificates/relations/basis23691.json"
theorem reductionProof23691 : EqualModuloRelations reduction23691.relations reduction23691.input reduction23691.output := by lin_cert using reduction23691.terms
theorem substitutionProof23691 : IsMapEvaluation generatorImages reduction23691.relations [0,0,0,0,0,0,0,0,0,2433] reduction23691.output := by lin_cert using reduction23691.terms
def map_25_25 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image74 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation74 : InImage map_25_25 image74 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction74 : Bundle := named_bundle% "RealMapCertificates/relations/basis74.json"
theorem reductionProof74 : EqualModuloRelations reduction74.relations reduction74.input reduction74.output := by lin_cert using reduction74.terms
theorem substitutionProof74 : IsMapEvaluation generatorImages reduction74.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction74.output := by lin_cert using reduction74.terms
def map_25_74 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image584 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation584 : InImage map_25_74 image584 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction584 : Bundle := named_bundle% "RealMapCertificates/relations/basis584.json"
theorem reductionProof584 : EqualModuloRelations reduction584.relations reduction584.input reduction584.output := by lin_cert using reduction584.terms
theorem substitutionProof584 : IsMapEvaluation generatorImages reduction584.relations [97] reduction584.output := by lin_cert using reduction584.terms
def map_25_76 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image628 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation628 : InImage map_25_76 image628 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction628 : Bundle := named_bundle% "RealMapCertificates/relations/basis628.json"
theorem reductionProof628 : EqualModuloRelations reduction628.relations reduction628.input reduction628.output := by lin_cert using reduction628.terms
theorem substitutionProof628 : IsMapEvaluation generatorImages reduction628.relations [102] reduction628.output := by lin_cert using reduction628.terms
def map_25_79 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image694 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation694 : InImage map_25_79 image694 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction694 : Bundle := named_bundle% "RealMapCertificates/relations/basis694.json"
theorem reductionProof694 : EqualModuloRelations reduction694.relations reduction694.input reduction694.output := by lin_cert using reduction694.terms
theorem substitutionProof694 : IsMapEvaluation generatorImages reduction694.relations [0,110] reduction694.output := by lin_cert using reduction694.terms
def map_25_80 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image710 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation710 : InImage map_25_80 image710 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction710 : Bundle := named_bundle% "RealMapCertificates/relations/basis710.json"
theorem reductionProof710 : EqualModuloRelations reduction710.relations reduction710.input reduction710.output := by lin_cert using reduction710.terms
theorem substitutionProof710 : IsMapEvaluation generatorImages reduction710.relations [1,110] reduction710.output := by lin_cert using reduction710.terms
def image711 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation711 : InImage map_25_80 image711 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction711 : Bundle := named_bundle% "RealMapCertificates/relations/basis711.json"
theorem reductionProof711 : EqualModuloRelations reduction711.relations reduction711.input reduction711.output := by lin_cert using reduction711.terms
theorem substitutionProof711 : IsMapEvaluation generatorImages reduction711.relations [0,0,111] reduction711.output := by lin_cert using reduction711.terms
def map_25_82 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image762 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation762 : InImage map_25_82 image762 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction762 : Bundle := named_bundle% "RealMapCertificates/relations/basis762.json"
theorem reductionProof762 : EqualModuloRelations reduction762.relations reduction762.input reduction762.output := by lin_cert using reduction762.terms
theorem substitutionProof762 : IsMapEvaluation generatorImages reduction762.relations [0,116] reduction762.output := by lin_cert using reduction762.terms
def map_25_83 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image784 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation784 : InImage map_25_83 image784 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction784 : Bundle := named_bundle% "RealMapCertificates/relations/basis784.json"
theorem reductionProof784 : EqualModuloRelations reduction784.relations reduction784.input reduction784.output := by lin_cert using reduction784.terms
theorem substitutionProof784 : IsMapEvaluation generatorImages reduction784.relations [0,0,117] reduction784.output := by lin_cert using reduction784.terms
def map_25_85 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image838 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation838 : InImage map_25_85 image838 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction838 : Bundle := named_bundle% "RealMapCertificates/relations/basis838.json"
theorem reductionProof838 : EqualModuloRelations reduction838.relations reduction838.input reduction838.output := by lin_cert using reduction838.terms
theorem substitutionProof838 : IsMapEvaluation generatorImages reduction838.relations [0,8,71] reduction838.output := by lin_cert using reduction838.terms
def map_25_86 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image862 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation862 : InImage map_25_86 image862 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction862 : Bundle := named_bundle% "RealMapCertificates/relations/basis862.json"
theorem reductionProof862 : EqualModuloRelations reduction862.relations reduction862.input reduction862.output := by lin_cert using reduction862.terms
theorem substitutionProof862 : IsMapEvaluation generatorImages reduction862.relations [0,0,16,50] reduction862.output := by lin_cert using reduction862.terms
def map_25_87 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation885 : InImage map_25_87 image885 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction885 : Bundle := named_bundle% "RealMapCertificates/relations/basis885.json"
theorem reductionProof885 : EqualModuloRelations reduction885.relations reduction885.input reduction885.output := by lin_cert using reduction885.terms
theorem substitutionProof885 : IsMapEvaluation generatorImages reduction885.relations [0,0,0,17,50] reduction885.output := by lin_cert using reduction885.terms
def map_25_88 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation912 : InImage map_25_88 image912 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction912 : Bundle := named_bundle% "RealMapCertificates/relations/basis912.json"
theorem reductionProof912 : EqualModuloRelations reduction912.relations reduction912.input reduction912.output := by lin_cert using reduction912.terms
theorem substitutionProof912 : IsMapEvaluation generatorImages reduction912.relations [0,8,77] reduction912.output := by lin_cert using reduction912.terms
def image913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation913 : InImage map_25_88 image913 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction913 : Bundle := named_bundle% "RealMapCertificates/relations/basis913.json"
theorem reductionProof913 : EqualModuloRelations reduction913.relations reduction913.input reduction913.output := by lin_cert using reduction913.terms
theorem substitutionProof913 : IsMapEvaluation generatorImages reduction913.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction913.output := by lin_cert using reduction913.terms
def map_25_89 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image940 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation940 : InImage map_25_89 image940 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction940 : Bundle := named_bundle% "RealMapCertificates/relations/basis940.json"
theorem reductionProof940 : EqualModuloRelations reduction940.relations reduction940.input reduction940.output := by lin_cert using reduction940.terms
theorem substitutionProof940 : IsMapEvaluation generatorImages reduction940.relations [0,0,8,78] reduction940.output := by lin_cert using reduction940.terms
def map_25_91 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image997 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation997 : InImage map_25_91 image997 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction997 : Bundle := named_bundle% "RealMapCertificates/relations/basis997.json"
theorem reductionProof997 : EqualModuloRelations reduction997.relations reduction997.input reduction997.output := by lin_cert using reduction997.terms
theorem substitutionProof997 : IsMapEvaluation generatorImages reduction997.relations [0,8,8,49] reduction997.output := by lin_cert using reduction997.terms
def map_25_92 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1021 : InImage map_25_92 image1021 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1021 : Bundle := named_bundle% "RealMapCertificates/relations/basis1021.json"
theorem reductionProof1021 : EqualModuloRelations reduction1021.relations reduction1021.input reduction1021.output := by lin_cert using reduction1021.terms
theorem substitutionProof1021 : IsMapEvaluation generatorImages reduction1021.relations [0,0,8,8,50] reduction1021.output := by lin_cert using reduction1021.terms
def map_25_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1073 : InImage map_25_94 image1073 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1073 : Bundle := named_bundle% "RealMapCertificates/relations/basis1073.json"
theorem reductionProof1073 : EqualModuloRelations reduction1073.relations reduction1073.input reduction1073.output := by lin_cert using reduction1073.terms
theorem substitutionProof1073 : IsMapEvaluation generatorImages reduction1073.relations [0,0,0,0,0,0,0,137] reduction1073.output := by lin_cert using reduction1073.terms
def map_25_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1097 : InImage map_25_95 image1097 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1097 : Bundle := named_bundle% "RealMapCertificates/relations/basis1097.json"
theorem reductionProof1097 : EqualModuloRelations reduction1097.relations reduction1097.input reduction1097.output := by lin_cert using reduction1097.terms
theorem substitutionProof1097 : IsMapEvaluation generatorImages reduction1097.relations [0,0,0,0,0,0,0,0,138] reduction1097.output := by lin_cert using reduction1097.terms
def map_25_96 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1110 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1110 : InImage map_25_96 image1110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1110 : Bundle := named_bundle% "RealMapCertificates/relations/basis1110.json"
theorem reductionProof1110 : EqualModuloRelations reduction1110.relations reduction1110.input reduction1110.output := by lin_cert using reduction1110.terms
theorem substitutionProof1110 : IsMapEvaluation generatorImages reduction1110.relations [161] reduction1110.output := by lin_cert using reduction1110.terms
def map_25_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1188 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1188 : InImage map_25_99 image1188 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1188 : Bundle := named_bundle% "RealMapCertificates/relations/basis1188.json"
theorem reductionProof1188 : EqualModuloRelations reduction1188.relations reduction1188.input reduction1188.output := by lin_cert using reduction1188.terms
theorem substitutionProof1188 : IsMapEvaluation generatorImages reduction1188.relations [171] reduction1188.output := by lin_cert using reduction1188.terms
def map_25_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1278 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1278 : InImage map_25_102 image1278 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1278 : Bundle := named_bundle% "RealMapCertificates/relations/basis1278.json"
theorem reductionProof1278 : EqualModuloRelations reduction1278.relations reduction1278.input reduction1278.output := by lin_cert using reduction1278.terms
theorem substitutionProof1278 : IsMapEvaluation generatorImages reduction1278.relations [8,125] reduction1278.output := by lin_cert using reduction1278.terms
def map_25_105 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image1380 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1380 : InImage map_25_105 image1380 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1380 : Bundle := named_bundle% "RealMapCertificates/relations/basis1380.json"
theorem reductionProof1380 : EqualModuloRelations reduction1380.relations reduction1380.input reduction1380.output := by lin_cert using reduction1380.terms
theorem substitutionProof1380 : IsMapEvaluation generatorImages reduction1380.relations [8,136] reduction1380.output := by lin_cert using reduction1380.terms
def image1381 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1381 : InImage map_25_105 image1381 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1381 : Bundle := named_bundle% "RealMapCertificates/relations/basis1381.json"
theorem reductionProof1381 : EqualModuloRelations reduction1381.relations reduction1381.input reduction1381.output := by lin_cert using reduction1381.terms
theorem substitutionProof1381 : IsMapEvaluation generatorImages reduction1381.relations [0,0,0,184] reduction1381.output := by lin_cert using reduction1381.terms
def map_25_108 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1478 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1478 : InImage map_25_108 image1478 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1478 : Bundle := named_bundle% "RealMapCertificates/relations/basis1478.json"
theorem reductionProof1478 : EqualModuloRelations reduction1478.relations reduction1478.input reduction1478.output := by lin_cert using reduction1478.terms
theorem substitutionProof1478 : IsMapEvaluation generatorImages reduction1478.relations [8,8,88] reduction1478.output := by lin_cert using reduction1478.terms
def map_25_111 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1599 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1599 : InImage map_25_111 image1599 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1599 : Bundle := named_bundle% "RealMapCertificates/relations/basis1599.json"
theorem reductionProof1599 : EqualModuloRelations reduction1599.relations reduction1599.input reduction1599.output := by lin_cert using reduction1599.terms
theorem substitutionProof1599 : IsMapEvaluation generatorImages reduction1599.relations [225] reduction1599.output := by lin_cert using reduction1599.terms
def image1600 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1600 : InImage map_25_111 image1600 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1600 : Bundle := named_bundle% "RealMapCertificates/relations/basis1600.json"
theorem reductionProof1600 : EqualModuloRelations reduction1600.relations reduction1600.input reduction1600.output := by lin_cert using reduction1600.terms
theorem substitutionProof1600 : IsMapEvaluation generatorImages reduction1600.relations [8,8,100] reduction1600.output := by lin_cert using reduction1600.terms
def map_25_114 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image1712 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation1712 : InImage map_25_114 image1712 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1712 : Bundle := named_bundle% "RealMapCertificates/relations/basis1712.json"
theorem reductionProof1712 : EqualModuloRelations reduction1712.relations reduction1712.input reduction1712.output := by lin_cert using reduction1712.terms
theorem substitutionProof1712 : IsMapEvaluation generatorImages reduction1712.relations [238] reduction1712.output := by lin_cert using reduction1712.terms
def image1713 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1713 : InImage map_25_114 image1713 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1713 : Bundle := named_bundle% "RealMapCertificates/relations/basis1713.json"
theorem reductionProof1713 : EqualModuloRelations reduction1713.relations reduction1713.input reduction1713.output := by lin_cert using reduction1713.terms
theorem substitutionProof1713 : IsMapEvaluation generatorImages reduction1713.relations [8,8,8,60] reduction1713.output := by lin_cert using reduction1713.terms
end RealMapCertificates
