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
  | 24 => []
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 80 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 193 => [[5,5,7,12]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 257 => [[4,4,6,8,12]]
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 315 => [[4,4,5,5,7,12]]
  | 317 => []
  | 324 => []
  | 345 => [[4,4,5,7,7,12]]
  | 347 => []
  | 380 => []
  | 435 => [[1,9,12,12]]
  | 440 => []
  | 454 => []
  | 500 => []
  | 518 => []
  | 530 => []
  | 558 => []
  | 559 => [[0,0,5,8,12,12]]
  | 573 => []
  | 580 => [[0,0,5,9,12,12]]
  | 586 => []
  | 598 => [[0,6,9,12,12]]
  | 600 => []
  | 601 => []
  | 624 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 644 => []
  | 645 => []
  | 646 => []
  | 654 => []
  | 715 => [[7,7,7,12,12]]
  | _ => []
def map_25_117 : Matrix 3 3 := fun i j => ([false,true,false,true,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image1818 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation1818 : InImage map_25_117 image1818 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1818 : Bundle := named_bundle% "RealMapCertificates/relations/basis1818.json"
theorem reductionProof1818 : EqualModuloRelations reduction1818.relations reduction1818.input reduction1818.output := by lin_cert using reduction1818.terms
theorem substitutionProof1818 : IsMapEvaluation generatorImages reduction1818.relations [16,138] reduction1818.output := by lin_cert using reduction1818.terms
def image1819 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1819 : InImage map_25_117 image1819 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1819 : Bundle := named_bundle% "RealMapCertificates/relations/basis1819.json"
theorem reductionProof1819 : EqualModuloRelations reduction1819.relations reduction1819.input reduction1819.output := by lin_cert using reduction1819.terms
theorem substitutionProof1819 : IsMapEvaluation generatorImages reduction1819.relations [8,8,8,63] reduction1819.output := by lin_cert using reduction1819.terms
def image1820 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation1820 : InImage map_25_117 image1820 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1820 : Bundle := named_bundle% "RealMapCertificates/relations/basis1820.json"
theorem reductionProof1820 : EqualModuloRelations reduction1820.relations reduction1820.input reduction1820.output := by lin_cert using reduction1820.terms
theorem substitutionProof1820 : IsMapEvaluation generatorImages reduction1820.relations [0,244] reduction1820.output := by lin_cert using reduction1820.terms
def map_25_118 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image1854 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1854 : InImage map_25_118 image1854 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1854 : Bundle := named_bundle% "RealMapCertificates/relations/basis1854.json"
theorem reductionProof1854 : EqualModuloRelations reduction1854.relations reduction1854.input reduction1854.output := by lin_cert using reduction1854.terms
theorem substitutionProof1854 : IsMapEvaluation generatorImages reduction1854.relations [1,244] reduction1854.output := by lin_cert using reduction1854.terms
def image1855 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1855 : InImage map_25_118 image1855 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1855 : Bundle := named_bundle% "RealMapCertificates/relations/basis1855.json"
theorem reductionProof1855 : EqualModuloRelations reduction1855.relations reduction1855.input reduction1855.output := by lin_cert using reduction1855.terms
theorem substitutionProof1855 : IsMapEvaluation generatorImages reduction1855.relations [0,17,138] reduction1855.output := by lin_cert using reduction1855.terms
def map_25_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1893 : InImage map_25_119 image1893 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1893 : Bundle := named_bundle% "RealMapCertificates/relations/basis1893.json"
theorem reductionProof1893 : EqualModuloRelations reduction1893.relations reduction1893.input reduction1893.output := by lin_cert using reduction1893.terms
theorem substitutionProof1893 : IsMapEvaluation generatorImages reduction1893.relations [0,0,0,245] reduction1893.output := by lin_cert using reduction1893.terms
def map_25_120 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image1932 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1932 : InImage map_25_120 image1932 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1932 : Bundle := named_bundle% "RealMapCertificates/relations/basis1932.json"
theorem reductionProof1932 : EqualModuloRelations reduction1932.relations reduction1932.input reduction1932.output := by lin_cert using reduction1932.terms
theorem substitutionProof1932 : IsMapEvaluation generatorImages reduction1932.relations [8,185] reduction1932.output := by lin_cert using reduction1932.terms
def image1933 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1933 : InImage map_25_120 image1933 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1933 : Bundle := named_bundle% "RealMapCertificates/relations/basis1933.json"
theorem reductionProof1933 : EqualModuloRelations reduction1933.relations reduction1933.input reduction1933.output := by lin_cert using reduction1933.terms
theorem substitutionProof1933 : IsMapEvaluation generatorImages reduction1933.relations [8,8,8,8,42] reduction1933.output := by lin_cert using reduction1933.terms
def image1934 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1934 : InImage map_25_120 image1934 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1934 : Bundle := named_bundle% "RealMapCertificates/relations/basis1934.json"
theorem reductionProof1934 : EqualModuloRelations reduction1934.relations reduction1934.input reduction1934.output := by lin_cert using reduction1934.terms
theorem substitutionProof1934 : IsMapEvaluation generatorImages reduction1934.relations [0,257] reduction1934.output := by lin_cert using reduction1934.terms
def image1935 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1935 : InImage map_25_120 image1935 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1935 : Bundle := named_bundle% "RealMapCertificates/relations/basis1935.json"
theorem reductionProof1935 : EqualModuloRelations reduction1935.relations reduction1935.input reduction1935.output := by lin_cert using reduction1935.terms
theorem substitutionProof1935 : IsMapEvaluation generatorImages reduction1935.relations [0,0,0,0,246] reduction1935.output := by lin_cert using reduction1935.terms
def map_25_121 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1981 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1981 : InImage map_25_121 image1981 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1981 : Bundle := named_bundle% "RealMapCertificates/relations/basis1981.json"
theorem reductionProof1981 : EqualModuloRelations reduction1981.relations reduction1981.input reduction1981.output := by lin_cert using reduction1981.terms
theorem substitutionProof1981 : IsMapEvaluation generatorImages reduction1981.relations [0,17,147] reduction1981.output := by lin_cert using reduction1981.terms
def map_25_123 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image2051 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2051 : InImage map_25_123 image2051 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2051 : Bundle := named_bundle% "RealMapCertificates/relations/basis2051.json"
theorem reductionProof2051 : EqualModuloRelations reduction2051.relations reduction2051.input reduction2051.output := by lin_cert using reduction2051.terms
theorem substitutionProof2051 : IsMapEvaluation generatorImages reduction2051.relations [8,8,138] reduction2051.output := by lin_cert using reduction2051.terms
def image2052 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2052 : InImage map_25_123 image2052 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2052 : Bundle := named_bundle% "RealMapCertificates/relations/basis2052.json"
theorem reductionProof2052 : EqualModuloRelations reduction2052.relations reduction2052.input reduction2052.output := by lin_cert using reduction2052.terms
theorem substitutionProof2052 : IsMapEvaluation generatorImages reduction2052.relations [8,8,8,8,46] reduction2052.output := by lin_cert using reduction2052.terms
def image2053 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2053 : InImage map_25_123 image2053 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2053 : Bundle := named_bundle% "RealMapCertificates/relations/basis2053.json"
theorem reductionProof2053 : EqualModuloRelations reduction2053.relations reduction2053.input reduction2053.output := by lin_cert using reduction2053.terms
theorem substitutionProof2053 : IsMapEvaluation generatorImages reduction2053.relations [0,16,149] reduction2053.output := by lin_cert using reduction2053.terms
def map_25_124 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2099 : InImage map_25_124 image2099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2099 : Bundle := named_bundle% "RealMapCertificates/relations/basis2099.json"
theorem reductionProof2099 : EqualModuloRelations reduction2099.relations reduction2099.input reduction2099.output := by lin_cert using reduction2099.terms
theorem substitutionProof2099 : IsMapEvaluation generatorImages reduction2099.relations [0,16,154] reduction2099.output := by lin_cert using reduction2099.terms
def image2100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2100 : InImage map_25_124 image2100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2100 : Bundle := named_bundle% "RealMapCertificates/relations/basis2100.json"
theorem reductionProof2100 : EqualModuloRelations reduction2100.relations reduction2100.input reduction2100.output := by lin_cert using reduction2100.terms
theorem substitutionProof2100 : IsMapEvaluation generatorImages reduction2100.relations [0,0,17,149] reduction2100.output := by lin_cert using reduction2100.terms
def map_25_125 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2136 : InImage map_25_125 image2136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2136 : Bundle := named_bundle% "RealMapCertificates/relations/basis2136.json"
theorem reductionProof2136 : EqualModuloRelations reduction2136.relations reduction2136.input reduction2136.output := by lin_cert using reduction2136.terms
theorem substitutionProof2136 : IsMapEvaluation generatorImages reduction2136.relations [0,0,17,154] reduction2136.output := by lin_cert using reduction2136.terms
def map_25_126 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2182 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2182 : InImage map_25_126 image2182 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2182 : Bundle := named_bundle% "RealMapCertificates/relations/basis2182.json"
theorem reductionProof2182 : EqualModuloRelations reduction2182.relations reduction2182.input reduction2182.output := by lin_cert using reduction2182.terms
theorem substitutionProof2182 : IsMapEvaluation generatorImages reduction2182.relations [8,8,147] reduction2182.output := by lin_cert using reduction2182.terms
def image2183 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2183 : InImage map_25_126 image2183 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2183 : Bundle := named_bundle% "RealMapCertificates/relations/basis2183.json"
theorem reductionProof2183 : EqualModuloRelations reduction2183.relations reduction2183.input reduction2183.output := by lin_cert using reduction2183.terms
theorem substitutionProof2183 : IsMapEvaluation generatorImages reduction2183.relations [8,8,8,8,51] reduction2183.output := by lin_cert using reduction2183.terms
def image2184 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2184 : InImage map_25_126 image2184 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2184 : Bundle := named_bundle% "RealMapCertificates/relations/basis2184.json"
theorem reductionProof2184 : EqualModuloRelations reduction2184.relations reduction2184.input reduction2184.output := by lin_cert using reduction2184.terms
theorem substitutionProof2184 : IsMapEvaluation generatorImages reduction2184.relations [0,0,0,0,0,0,0,260] reduction2184.output := by lin_cert using reduction2184.terms
def map_25_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2233 : InImage map_25_127 image2233 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2233 : Bundle := named_bundle% "RealMapCertificates/relations/basis2233.json"
theorem reductionProof2233 : EqualModuloRelations reduction2233.relations reduction2233.input reduction2233.output := by lin_cert using reduction2233.terms
theorem substitutionProof2233 : IsMapEvaluation generatorImages reduction2233.relations [0,8,17,113] reduction2233.output := by lin_cert using reduction2233.terms
def image2234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2234 : InImage map_25_127 image2234 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2234 : Bundle := named_bundle% "RealMapCertificates/relations/basis2234.json"
theorem reductionProof2234 : EqualModuloRelations reduction2234.relations reduction2234.input reduction2234.output := by lin_cert using reduction2234.terms
theorem substitutionProof2234 : IsMapEvaluation generatorImages reduction2234.relations [0,0,0,0,0,0,274] reduction2234.output := by lin_cert using reduction2234.terms
def map_25_128 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2271 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2271 : InImage map_25_128 image2271 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2271 : Bundle := named_bundle% "RealMapCertificates/relations/basis2271.json"
theorem reductionProof2271 : EqualModuloRelations reduction2271.relations reduction2271.input reduction2271.output := by lin_cert using reduction2271.terms
theorem substitutionProof2271 : IsMapEvaluation generatorImages reduction2271.relations [315] reduction2271.output := by lin_cert using reduction2271.terms
def map_25_129 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image2337 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2337 : InImage map_25_129 image2337 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2337 : Bundle := named_bundle% "RealMapCertificates/relations/basis2337.json"
theorem reductionProof2337 : EqualModuloRelations reduction2337.relations reduction2337.input reduction2337.output := by lin_cert using reduction2337.terms
theorem substitutionProof2337 : IsMapEvaluation generatorImages reduction2337.relations [8,8,17,64] reduction2337.output := by lin_cert using reduction2337.terms
def image2338 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2338 : InImage map_25_129 image2338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2338 : Bundle := named_bundle% "RealMapCertificates/relations/basis2338.json"
theorem reductionProof2338 : EqualModuloRelations reduction2338.relations reduction2338.input reduction2338.output := by lin_cert using reduction2338.terms
theorem substitutionProof2338 : IsMapEvaluation generatorImages reduction2338.relations [8,8,8,9,51] reduction2338.output := by lin_cert using reduction2338.terms
def map_25_131 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2453 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2453 : InImage map_25_131 image2453 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2453 : Bundle := named_bundle% "RealMapCertificates/relations/basis2453.json"
theorem reductionProof2453 : EqualModuloRelations reduction2453.relations reduction2453.input reduction2453.output := by lin_cert using reduction2453.terms
theorem substitutionProof2453 : IsMapEvaluation generatorImages reduction2453.relations [345] reduction2453.output := by lin_cert using reduction2453.terms
def image2454 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2454 : InImage map_25_131 image2454 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2454 : Bundle := named_bundle% "RealMapCertificates/relations/basis2454.json"
theorem reductionProof2454 : EqualModuloRelations reduction2454.relations reduction2454.input reduction2454.output := by lin_cert using reduction2454.terms
theorem substitutionProof2454 : IsMapEvaluation generatorImages reduction2454.relations [0,0,0,0,0,64,64] reduction2454.output := by lin_cert using reduction2454.terms
def map_25_132 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2522 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2522 : InImage map_25_132 image2522 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2522 : Bundle := named_bundle% "RealMapCertificates/relations/basis2522.json"
theorem reductionProof2522 : EqualModuloRelations reduction2522.relations reduction2522.input reduction2522.output := by lin_cert using reduction2522.terms
theorem substitutionProof2522 : IsMapEvaluation generatorImages reduction2522.relations [8,8,8,113] reduction2522.output := by lin_cert using reduction2522.terms
def image2523 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2523 : InImage map_25_132 image2523 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2523 : Bundle := named_bundle% "RealMapCertificates/relations/basis2523.json"
theorem reductionProof2523 : EqualModuloRelations reduction2523.relations reduction2523.input reduction2523.output := by lin_cert using reduction2523.terms
theorem substitutionProof2523 : IsMapEvaluation generatorImages reduction2523.relations [8,8,8,13,51] reduction2523.output := by lin_cert using reduction2523.terms
def image2524 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2524 : InImage map_25_132 image2524 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2524 : Bundle := named_bundle% "RealMapCertificates/relations/basis2524.json"
theorem reductionProof2524 : EqualModuloRelations reduction2524.relations reduction2524.input reduction2524.output := by lin_cert using reduction2524.terms
theorem substitutionProof2524 : IsMapEvaluation generatorImages reduction2524.relations [0,0,0,0,0,0,299] reduction2524.output := by lin_cert using reduction2524.terms
def map_25_134 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2651 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2651 : InImage map_25_134 image2651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2651 : Bundle := named_bundle% "RealMapCertificates/relations/basis2651.json"
theorem reductionProof2651 : EqualModuloRelations reduction2651.relations reduction2651.input reduction2651.output := by lin_cert using reduction2651.terms
theorem substitutionProof2651 : IsMapEvaluation generatorImages reduction2651.relations [8,247] reduction2651.output := by lin_cert using reduction2651.terms
def image2652 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2652 : InImage map_25_134 image2652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2652 : Bundle := named_bundle% "RealMapCertificates/relations/basis2652.json"
theorem reductionProof2652 : EqualModuloRelations reduction2652.relations reduction2652.input reduction2652.output := by lin_cert using reduction2652.terms
theorem substitutionProof2652 : IsMapEvaluation generatorImages reduction2652.relations [0,0,0,0,0,0,0,0,300] reduction2652.output := by lin_cert using reduction2652.terms
def map_25_135 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2746 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2746 : InImage map_25_135 image2746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2746 : Bundle := named_bundle% "RealMapCertificates/relations/basis2746.json"
theorem reductionProof2746 : EqualModuloRelations reduction2746.relations reduction2746.input reduction2746.output := by lin_cert using reduction2746.terms
theorem substitutionProof2746 : IsMapEvaluation generatorImages reduction2746.relations [8,8,9,13,51] reduction2746.output := by lin_cert using reduction2746.terms
def image2747 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2747 : InImage map_25_135 image2747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2747 : Bundle := named_bundle% "RealMapCertificates/relations/basis2747.json"
theorem reductionProof2747 : EqualModuloRelations reduction2747.relations reduction2747.input reduction2747.output := by lin_cert using reduction2747.terms
theorem substitutionProof2747 : IsMapEvaluation generatorImages reduction2747.relations [8,8,8,118] reduction2747.output := by lin_cert using reduction2747.terms
def image2748 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2748 : InImage map_25_135 image2748 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2748 : Bundle := named_bundle% "RealMapCertificates/relations/basis2748.json"
theorem reductionProof2748 : EqualModuloRelations reduction2748.relations reduction2748.input reduction2748.output := by lin_cert using reduction2748.terms
theorem substitutionProof2748 : IsMapEvaluation generatorImages reduction2748.relations [0,0,0,0,0,0,0,317] reduction2748.output := by lin_cert using reduction2748.terms
def map_25_137 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2889 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2889 : InImage map_25_137 image2889 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2889 : Bundle := named_bundle% "RealMapCertificates/relations/basis2889.json"
theorem reductionProof2889 : EqualModuloRelations reduction2889.relations reduction2889.input reduction2889.output := by lin_cert using reduction2889.terms
theorem substitutionProof2889 : IsMapEvaluation generatorImages reduction2889.relations [8,259] reduction2889.output := by lin_cert using reduction2889.terms
def image2890 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2890 : InImage map_25_137 image2890 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2890 : Bundle := named_bundle% "RealMapCertificates/relations/basis2890.json"
theorem reductionProof2890 : EqualModuloRelations reduction2890.relations reduction2890.input reduction2890.output := by lin_cert using reduction2890.terms
theorem substitutionProof2890 : IsMapEvaluation generatorImages reduction2890.relations [0,0,0,380] reduction2890.output := by lin_cert using reduction2890.terms
def map_25_138 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2973 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2973 : InImage map_25_138 image2973 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2973 : Bundle := named_bundle% "RealMapCertificates/relations/basis2973.json"
theorem reductionProof2973 : EqualModuloRelations reduction2973.relations reduction2973.input reduction2973.output := by lin_cert using reduction2973.terms
theorem substitutionProof2973 : IsMapEvaluation generatorImages reduction2973.relations [8,8,13,13,51] reduction2973.output := by lin_cert using reduction2973.terms
def image2974 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2974 : InImage map_25_138 image2974 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2974 : Bundle := named_bundle% "RealMapCertificates/relations/basis2974.json"
theorem reductionProof2974 : EqualModuloRelations reduction2974.relations reduction2974.input reduction2974.output := by lin_cert using reduction2974.terms
theorem substitutionProof2974 : IsMapEvaluation generatorImages reduction2974.relations [8,8,8,127] reduction2974.output := by lin_cert using reduction2974.terms
def map_25_140 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3124 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3124 : InImage map_25_140 image3124 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3124 : Bundle := named_bundle% "RealMapCertificates/relations/basis3124.json"
theorem reductionProof3124 : EqualModuloRelations reduction3124.relations reduction3124.input reduction3124.output := by lin_cert using reduction3124.terms
theorem substitutionProof3124 : IsMapEvaluation generatorImages reduction3124.relations [8,8,193] reduction3124.output := by lin_cert using reduction3124.terms
def image3125 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3125 : InImage map_25_140 image3125 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3125 : Bundle := named_bundle% "RealMapCertificates/relations/basis3125.json"
theorem reductionProof3125 : EqualModuloRelations reduction3125.relations reduction3125.input reduction3125.output := by lin_cert using reduction3125.terms
theorem substitutionProof3125 : IsMapEvaluation generatorImages reduction3125.relations [5,64,64] reduction3125.output := by lin_cert using reduction3125.terms
def map_25_141 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3227 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3227 : InImage map_25_141 image3227 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3227 : Bundle := named_bundle% "RealMapCertificates/relations/basis3227.json"
theorem reductionProof3227 : EqualModuloRelations reduction3227.relations reduction3227.input reduction3227.output := by lin_cert using reduction3227.terms
theorem substitutionProof3227 : IsMapEvaluation generatorImages reduction3227.relations [8,9,13,13,51] reduction3227.output := by lin_cert using reduction3227.terms
def image3228 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3228 : InImage map_25_141 image3228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3228 : Bundle := named_bundle% "RealMapCertificates/relations/basis3228.json"
theorem reductionProof3228 : EqualModuloRelations reduction3228.relations reduction3228.input reduction3228.output := by lin_cert using reduction3228.terms
theorem substitutionProof3228 : IsMapEvaluation generatorImages reduction3228.relations [8,8,8,8,80] reduction3228.output := by lin_cert using reduction3228.terms
def map_25_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3302 : InImage map_25_142 image3302 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3302 : Bundle := named_bundle% "RealMapCertificates/relations/basis3302.json"
theorem reductionProof3302 : EqualModuloRelations reduction3302.relations reduction3302.input reduction3302.output := by lin_cert using reduction3302.terms
theorem substitutionProof3302 : IsMapEvaluation generatorImages reduction3302.relations [0,64,112] reduction3302.output := by lin_cert using reduction3302.terms
def map_25_143 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3380 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3380 : InImage map_25_143 image3380 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3380 : Bundle := named_bundle% "RealMapCertificates/relations/basis3380.json"
theorem reductionProof3380 : EqualModuloRelations reduction3380.relations reduction3380.input reduction3380.output := by lin_cert using reduction3380.terms
theorem substitutionProof3380 : IsMapEvaluation generatorImages reduction3380.relations [8,8,208] reduction3380.output := by lin_cert using reduction3380.terms
def image3381 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3381 : InImage map_25_143 image3381 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3381 : Bundle := named_bundle% "RealMapCertificates/relations/basis3381.json"
theorem reductionProof3381 : EqualModuloRelations reduction3381.relations reduction3381.input reduction3381.output := by lin_cert using reduction3381.terms
theorem substitutionProof3381 : IsMapEvaluation generatorImages reduction3381.relations [0,0,64,113] reduction3381.output := by lin_cert using reduction3381.terms
def map_25_144 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3472 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3472 : InImage map_25_144 image3472 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3472 : Bundle := named_bundle% "RealMapCertificates/relations/basis3472.json"
theorem reductionProof3472 : EqualModuloRelations reduction3472.relations reduction3472.input reduction3472.output := by lin_cert using reduction3472.terms
theorem substitutionProof3472 : IsMapEvaluation generatorImages reduction3472.relations [8,13,13,13,51] reduction3472.output := by lin_cert using reduction3472.terms
def image3473 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3473 : InImage map_25_144 image3473 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3473 : Bundle := named_bundle% "RealMapCertificates/relations/basis3473.json"
theorem reductionProof3473 : EqualModuloRelations reduction3473.relations reduction3473.input reduction3473.output := by lin_cert using reduction3473.terms
theorem substitutionProof3473 : IsMapEvaluation generatorImages reduction3473.relations [8,8,8,9,80] reduction3473.output := by lin_cert using reduction3473.terms
def map_25_145 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3549 : InImage map_25_145 image3549 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3549 : Bundle := named_bundle% "RealMapCertificates/relations/basis3549.json"
theorem reductionProof3549 : EqualModuloRelations reduction3549.relations reduction3549.input reduction3549.output := by lin_cert using reduction3549.terms
theorem substitutionProof3549 : IsMapEvaluation generatorImages reduction3549.relations [0,8,64,64] reduction3549.output := by lin_cert using reduction3549.terms
def map_25_146 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3621 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3621 : InImage map_25_146 image3621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3621 : Bundle := named_bundle% "RealMapCertificates/relations/basis3621.json"
theorem reductionProof3621 : EqualModuloRelations reduction3621.relations reduction3621.input reduction3621.output := by lin_cert using reduction3621.terms
theorem substitutionProof3621 : IsMapEvaluation generatorImages reduction3621.relations [8,8,219] reduction3621.output := by lin_cert using reduction3621.terms
def image3622 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3622 : InImage map_25_146 image3622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3622 : Bundle := named_bundle% "RealMapCertificates/relations/basis3622.json"
theorem reductionProof3622 : EqualModuloRelations reduction3622.relations reduction3622.input reduction3622.output := by lin_cert using reduction3622.terms
theorem substitutionProof3622 : IsMapEvaluation generatorImages reduction3622.relations [0,0,8,299] reduction3622.output := by lin_cert using reduction3622.terms
def map_25_147 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3735 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3735 : InImage map_25_147 image3735 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3735 : Bundle := named_bundle% "RealMapCertificates/relations/basis3735.json"
theorem reductionProof3735 : EqualModuloRelations reduction3735.relations reduction3735.input reduction3735.output := by lin_cert using reduction3735.terms
theorem substitutionProof3735 : IsMapEvaluation generatorImages reduction3735.relations [9,13,13,13,51] reduction3735.output := by lin_cert using reduction3735.terms
def image3736 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3736 : InImage map_25_147 image3736 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3736 : Bundle := named_bundle% "RealMapCertificates/relations/basis3736.json"
theorem reductionProof3736 : EqualModuloRelations reduction3736.relations reduction3736.input reduction3736.output := by lin_cert using reduction3736.terms
theorem substitutionProof3736 : IsMapEvaluation generatorImages reduction3736.relations [8,8,8,13,80] reduction3736.output := by lin_cert using reduction3736.terms
def map_25_149 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image3893 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3893 : InImage map_25_149 image3893 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3893 : Bundle := named_bundle% "RealMapCertificates/relations/basis3893.json"
theorem reductionProof3893 : EqualModuloRelations reduction3893.relations reduction3893.input reduction3893.output := by lin_cert using reduction3893.terms
theorem substitutionProof3893 : IsMapEvaluation generatorImages reduction3893.relations [17,260] reduction3893.output := by lin_cert using reduction3893.terms
def image3894 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3894 : InImage map_25_149 image3894 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3894 : Bundle := named_bundle% "RealMapCertificates/relations/basis3894.json"
theorem reductionProof3894 : EqualModuloRelations reduction3894.relations reduction3894.input reduction3894.output := by lin_cert using reduction3894.terms
theorem substitutionProof3894 : IsMapEvaluation generatorImages reduction3894.relations [8,9,219] reduction3894.output := by lin_cert using reduction3894.terms
def image3895 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3895 : InImage map_25_149 image3895 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3895 : Bundle := named_bundle% "RealMapCertificates/relations/basis3895.json"
theorem reductionProof3895 : EqualModuloRelations reduction3895.relations reduction3895.input reduction3895.output := by lin_cert using reduction3895.terms
theorem substitutionProof3895 : IsMapEvaluation generatorImages reduction3895.relations [0,0,0,0,0,0,0,0,0,0,0,440] reduction3895.output := by lin_cert using reduction3895.terms
def map_25_150 : Matrix 2 4 := fun i j => ([false,false,true,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image3992 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3992 : InImage map_25_150 image3992 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3992 : Bundle := named_bundle% "RealMapCertificates/relations/basis3992.json"
theorem reductionProof3992 : EqualModuloRelations reduction3992.relations reduction3992.input reduction3992.output := by lin_cert using reduction3992.terms
theorem substitutionProof3992 : IsMapEvaluation generatorImages reduction3992.relations [559] reduction3992.output := by lin_cert using reduction3992.terms
def image3993 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3993 : InImage map_25_150 image3993 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3993 : Bundle := named_bundle% "RealMapCertificates/relations/basis3993.json"
theorem reductionProof3993 : EqualModuloRelations reduction3993.relations reduction3993.input reduction3993.output := by lin_cert using reduction3993.terms
theorem substitutionProof3993 : IsMapEvaluation generatorImages reduction3993.relations [558] reduction3993.output := by lin_cert using reduction3993.terms
def image3994 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3994 : InImage map_25_150 image3994 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3994 : Bundle := named_bundle% "RealMapCertificates/relations/basis3994.json"
theorem reductionProof3994 : EqualModuloRelations reduction3994.relations reduction3994.input reduction3994.output := by lin_cert using reduction3994.terms
theorem substitutionProof3994 : IsMapEvaluation generatorImages reduction3994.relations [13,13,13,13,51] reduction3994.output := by lin_cert using reduction3994.terms
def image3995 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3995 : InImage map_25_150 image3995 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3995 : Bundle := named_bundle% "RealMapCertificates/relations/basis3995.json"
theorem reductionProof3995 : EqualModuloRelations reduction3995.relations reduction3995.input reduction3995.output := by lin_cert using reduction3995.terms
theorem substitutionProof3995 : IsMapEvaluation generatorImages reduction3995.relations [8,8,9,13,80] reduction3995.output := by lin_cert using reduction3995.terms
def map_25_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4093 : InImage map_25_151 image4093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4093 : Bundle := named_bundle% "RealMapCertificates/relations/basis4093.json"
theorem reductionProof4093 : EqualModuloRelations reduction4093.relations reduction4093.input reduction4093.output := by lin_cert using reduction4093.terms
theorem substitutionProof4093 : IsMapEvaluation generatorImages reduction4093.relations [0,0,0,0,0,0,0,500] reduction4093.output := by lin_cert using reduction4093.terms
def map_25_152 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4168 : InImage map_25_152 image4168 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4168 : Bundle := named_bundle% "RealMapCertificates/relations/basis4168.json"
theorem reductionProof4168 : EqualModuloRelations reduction4168.relations reduction4168.input reduction4168.output := by lin_cert using reduction4168.terms
theorem substitutionProof4168 : IsMapEvaluation generatorImages reduction4168.relations [17,278] reduction4168.output := by lin_cert using reduction4168.terms
def image4169 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4169 : InImage map_25_152 image4169 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4169 : Bundle := named_bundle% "RealMapCertificates/relations/basis4169.json"
theorem reductionProof4169 : EqualModuloRelations reduction4169.relations reduction4169.input reduction4169.output := by lin_cert using reduction4169.terms
theorem substitutionProof4169 : IsMapEvaluation generatorImages reduction4169.relations [8,13,219] reduction4169.output := by lin_cert using reduction4169.terms
def image4170 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4170 : InImage map_25_152 image4170 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4170 : Bundle := named_bundle% "RealMapCertificates/relations/basis4170.json"
theorem reductionProof4170 : EqualModuloRelations reduction4170.relations reduction4170.input reduction4170.output := by lin_cert using reduction4170.terms
theorem substitutionProof4170 : IsMapEvaluation generatorImages reduction4170.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4170.output := by lin_cert using reduction4170.terms
def map_25_153 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image4277 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4277 : InImage map_25_153 image4277 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4277 : Bundle := named_bundle% "RealMapCertificates/relations/basis4277.json"
theorem reductionProof4277 : EqualModuloRelations reduction4277.relations reduction4277.input reduction4277.output := by lin_cert using reduction4277.terms
theorem substitutionProof4277 : IsMapEvaluation generatorImages reduction4277.relations [580] reduction4277.output := by lin_cert using reduction4277.terms
def image4278 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4278 : InImage map_25_153 image4278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4278 : Bundle := named_bundle% "RealMapCertificates/relations/basis4278.json"
theorem reductionProof4278 : EqualModuloRelations reduction4278.relations reduction4278.input reduction4278.output := by lin_cert using reduction4278.terms
theorem substitutionProof4278 : IsMapEvaluation generatorImages reduction4278.relations [8,8,13,13,80] reduction4278.output := by lin_cert using reduction4278.terms
def image4279 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4279 : InImage map_25_153 image4279 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4279 : Bundle := named_bundle% "RealMapCertificates/relations/basis4279.json"
theorem reductionProof4279 : EqualModuloRelations reduction4279.relations reduction4279.input reduction4279.output := by lin_cert using reduction4279.terms
theorem substitutionProof4279 : IsMapEvaluation generatorImages reduction4279.relations [0,573] reduction4279.output := by lin_cert using reduction4279.terms
def map_25_155 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image4422 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation4422 : InImage map_25_155 image4422 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4422 : Bundle := named_bundle% "RealMapCertificates/relations/basis4422.json"
theorem reductionProof4422 : EqualModuloRelations reduction4422.relations reduction4422.input reduction4422.output := by lin_cert using reduction4422.terms
theorem substitutionProof4422 : IsMapEvaluation generatorImages reduction4422.relations [598] reduction4422.output := by lin_cert using reduction4422.terms
def image4423 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4423 : InImage map_25_155 image4423 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4423 : Bundle := named_bundle% "RealMapCertificates/relations/basis4423.json"
theorem reductionProof4423 : EqualModuloRelations reduction4423.relations reduction4423.input reduction4423.output := by lin_cert using reduction4423.terms
theorem substitutionProof4423 : IsMapEvaluation generatorImages reduction4423.relations [16,292] reduction4423.output := by lin_cert using reduction4423.terms
def image4424 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4424 : InImage map_25_155 image4424 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4424 : Bundle := named_bundle% "RealMapCertificates/relations/basis4424.json"
theorem reductionProof4424 : EqualModuloRelations reduction4424.relations reduction4424.input reduction4424.output := by lin_cert using reduction4424.terms
theorem substitutionProof4424 : IsMapEvaluation generatorImages reduction4424.relations [9,13,219] reduction4424.output := by lin_cert using reduction4424.terms
def map_25_156 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4523 : InImage map_25_156 image4523 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4523 : Bundle := named_bundle% "RealMapCertificates/relations/basis4523.json"
theorem reductionProof4523 : EqualModuloRelations reduction4523.relations reduction4523.input reduction4523.output := by lin_cert using reduction4523.terms
theorem substitutionProof4523 : IsMapEvaluation generatorImages reduction4523.relations [13,13,13,13,13,24] reduction4523.output := by lin_cert using reduction4523.terms
def image4524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4524 : InImage map_25_156 image4524 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4524 : Bundle := named_bundle% "RealMapCertificates/relations/basis4524.json"
theorem reductionProof4524 : EqualModuloRelations reduction4524.relations reduction4524.input reduction4524.output := by lin_cert using reduction4524.terms
theorem substitutionProof4524 : IsMapEvaluation generatorImages reduction4524.relations [8,435] reduction4524.output := by lin_cert using reduction4524.terms
def image4525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4525 : InImage map_25_156 image4525 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4525 : Bundle := named_bundle% "RealMapCertificates/relations/basis4525.json"
theorem reductionProof4525 : EqualModuloRelations reduction4525.relations reduction4525.input reduction4525.output := by lin_cert using reduction4525.terms
theorem substitutionProof4525 : IsMapEvaluation generatorImages reduction4525.relations [8,9,13,13,80] reduction4525.output := by lin_cert using reduction4525.terms
def image4526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4526 : InImage map_25_156 image4526 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4526 : Bundle := named_bundle% "RealMapCertificates/relations/basis4526.json"
theorem reductionProof4526 : EqualModuloRelations reduction4526.relations reduction4526.input reduction4526.output := by lin_cert using reduction4526.terms
theorem substitutionProof4526 : IsMapEvaluation generatorImages reduction4526.relations [0,17,292] reduction4526.output := by lin_cert using reduction4526.terms
def map_25_157 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4609 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4609 : InImage map_25_157 image4609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4609 : Bundle := named_bundle% "RealMapCertificates/relations/basis4609.json"
theorem reductionProof4609 : EqualModuloRelations reduction4609.relations reduction4609.input reduction4609.output := by lin_cert using reduction4609.terms
theorem substitutionProof4609 : IsMapEvaluation generatorImages reduction4609.relations [0,0,601] reduction4609.output := by lin_cert using reduction4609.terms
def image4610 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4610 : InImage map_25_157 image4610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4610 : Bundle := named_bundle% "RealMapCertificates/relations/basis4610.json"
theorem reductionProof4610 : EqualModuloRelations reduction4610.relations reduction4610.input reduction4610.output := by lin_cert using reduction4610.terms
theorem substitutionProof4610 : IsMapEvaluation generatorImages reduction4610.relations [0,0,600] reduction4610.output := by lin_cert using reduction4610.terms
def map_25_158 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image4690 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4690 : InImage map_25_158 image4690 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4690 : Bundle := named_bundle% "RealMapCertificates/relations/basis4690.json"
theorem reductionProof4690 : EqualModuloRelations reduction4690.relations reduction4690.input reduction4690.output := by lin_cert using reduction4690.terms
theorem substitutionProof4690 : IsMapEvaluation generatorImages reduction4690.relations [624] reduction4690.output := by lin_cert using reduction4690.terms
def image4691 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4691 : InImage map_25_158 image4691 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4691 : Bundle := named_bundle% "RealMapCertificates/relations/basis4691.json"
theorem reductionProof4691 : EqualModuloRelations reduction4691.relations reduction4691.input reduction4691.output := by lin_cert using reduction4691.terms
theorem substitutionProof4691 : IsMapEvaluation generatorImages reduction4691.relations [13,13,219] reduction4691.output := by lin_cert using reduction4691.terms
def image4692 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4692 : InImage map_25_158 image4692 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4692 : Bundle := named_bundle% "RealMapCertificates/relations/basis4692.json"
theorem reductionProof4692 : EqualModuloRelations reduction4692.relations reduction4692.input reduction4692.output := by lin_cert using reduction4692.terms
theorem substitutionProof4692 : IsMapEvaluation generatorImages reduction4692.relations [8,454] reduction4692.output := by lin_cert using reduction4692.terms
def image4693 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4693 : InImage map_25_158 image4693 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4693 : Bundle := named_bundle% "RealMapCertificates/relations/basis4693.json"
theorem reductionProof4693 : EqualModuloRelations reduction4693.relations reduction4693.input reduction4693.output := by lin_cert using reduction4693.terms
theorem substitutionProof4693 : IsMapEvaluation generatorImages reduction4693.relations [0,0,0,0,586] reduction4693.output := by lin_cert using reduction4693.terms
def map_25_159 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4797 : InImage map_25_159 image4797 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4797 : Bundle := named_bundle% "RealMapCertificates/relations/basis4797.json"
theorem reductionProof4797 : EqualModuloRelations reduction4797.relations reduction4797.input reduction4797.output := by lin_cert using reduction4797.terms
theorem substitutionProof4797 : IsMapEvaluation generatorImages reduction4797.relations [9,435] reduction4797.output := by lin_cert using reduction4797.terms
def image4798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4798 : InImage map_25_159 image4798 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4798 : Bundle := named_bundle% "RealMapCertificates/relations/basis4798.json"
theorem reductionProof4798 : EqualModuloRelations reduction4798.relations reduction4798.input reduction4798.output := by lin_cert using reduction4798.terms
theorem substitutionProof4798 : IsMapEvaluation generatorImages reduction4798.relations [8,13,13,13,80] reduction4798.output := by lin_cert using reduction4798.terms
def image4799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4799 : InImage map_25_159 image4799 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4799 : Bundle := named_bundle% "RealMapCertificates/relations/basis4799.json"
theorem reductionProof4799 : EqualModuloRelations reduction4799.relations reduction4799.input reduction4799.output := by lin_cert using reduction4799.terms
theorem substitutionProof4799 : IsMapEvaluation generatorImages reduction4799.relations [0,20,292] reduction4799.output := by lin_cert using reduction4799.terms
def map_25_161 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image4952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4952 : InImage map_25_161 image4952 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4952 : Bundle := named_bundle% "RealMapCertificates/relations/basis4952.json"
theorem reductionProof4952 : EqualModuloRelations reduction4952.relations reduction4952.input reduction4952.output := by lin_cert using reduction4952.terms
theorem substitutionProof4952 : IsMapEvaluation generatorImages reduction4952.relations [17,347] reduction4952.output := by lin_cert using reduction4952.terms
def image4953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4953 : InImage map_25_161 image4953 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4953 : Bundle := named_bundle% "RealMapCertificates/relations/basis4953.json"
theorem reductionProof4953 : EqualModuloRelations reduction4953.relations reduction4953.input reduction4953.output := by lin_cert using reduction4953.terms
theorem substitutionProof4953 : IsMapEvaluation generatorImages reduction4953.relations [8,8,292] reduction4953.output := by lin_cert using reduction4953.terms
def image4954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4954 : InImage map_25_161 image4954 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4954 : Bundle := named_bundle% "RealMapCertificates/relations/basis4954.json"
theorem reductionProof4954 : EqualModuloRelations reduction4954.relations reduction4954.input reduction4954.output := by lin_cert using reduction4954.terms
theorem substitutionProof4954 : IsMapEvaluation generatorImages reduction4954.relations [0,642] reduction4954.output := by lin_cert using reduction4954.terms
def map_25_162 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5062 : InImage map_25_162 image5062 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5062 : Bundle := named_bundle% "RealMapCertificates/relations/basis5062.json"
theorem reductionProof5062 : EqualModuloRelations reduction5062.relations reduction5062.input reduction5062.output := by lin_cert using reduction5062.terms
theorem substitutionProof5062 : IsMapEvaluation generatorImages reduction5062.relations [13,435] reduction5062.output := by lin_cert using reduction5062.terms
def image5063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5063 : InImage map_25_162 image5063 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5063 : Bundle := named_bundle% "RealMapCertificates/relations/basis5063.json"
theorem reductionProof5063 : EqualModuloRelations reduction5063.relations reduction5063.input reduction5063.output := by lin_cert using reduction5063.terms
theorem substitutionProof5063 : IsMapEvaluation generatorImages reduction5063.relations [9,13,13,13,80] reduction5063.output := by lin_cert using reduction5063.terms
def image5064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5064 : InImage map_25_162 image5064 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5064 : Bundle := named_bundle% "RealMapCertificates/relations/basis5064.json"
theorem reductionProof5064 : EqualModuloRelations reduction5064.relations reduction5064.input reduction5064.output := by lin_cert using reduction5064.terms
theorem substitutionProof5064 : IsMapEvaluation generatorImages reduction5064.relations [1,642] reduction5064.output := by lin_cert using reduction5064.terms
def image5065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5065 : InImage map_25_162 image5065 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5065 : Bundle := named_bundle% "RealMapCertificates/relations/basis5065.json"
theorem reductionProof5065 : EqualModuloRelations reduction5065.relations reduction5065.input reduction5065.output := by lin_cert using reduction5065.terms
theorem substitutionProof5065 : IsMapEvaluation generatorImages reduction5065.relations [0,654] reduction5065.output := by lin_cert using reduction5065.terms
def map_25_163 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5154 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5154 : InImage map_25_163 image5154 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5154 : Bundle := named_bundle% "RealMapCertificates/relations/basis5154.json"
theorem reductionProof5154 : EqualModuloRelations reduction5154.relations reduction5154.input reduction5154.output := by lin_cert using reduction5154.terms
theorem substitutionProof5154 : IsMapEvaluation generatorImages reduction5154.relations [0,0,0,0,0,627] reduction5154.output := by lin_cert using reduction5154.terms
def map_25_164 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5244 : InImage map_25_164 image5244 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5244 : Bundle := named_bundle% "RealMapCertificates/relations/basis5244.json"
theorem reductionProof5244 : EqualModuloRelations reduction5244.relations reduction5244.input reduction5244.output := by lin_cert using reduction5244.terms
theorem substitutionProof5244 : IsMapEvaluation generatorImages reduction5244.relations [13,13,13,150] reduction5244.output := by lin_cert using reduction5244.terms
def image5245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5245 : InImage map_25_164 image5245 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5245 : Bundle := named_bundle% "RealMapCertificates/relations/basis5245.json"
theorem reductionProof5245 : EqualModuloRelations reduction5245.relations reduction5245.input reduction5245.output := by lin_cert using reduction5245.terms
theorem substitutionProof5245 : IsMapEvaluation generatorImages reduction5245.relations [8,518] reduction5245.output := by lin_cert using reduction5245.terms
def image5246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5246 : InImage map_25_164 image5246 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5246 : Bundle := named_bundle% "RealMapCertificates/relations/basis5246.json"
theorem reductionProof5246 : EqualModuloRelations reduction5246.relations reduction5246.input reduction5246.output := by lin_cert using reduction5246.terms
theorem substitutionProof5246 : IsMapEvaluation generatorImages reduction5246.relations [8,9,292] reduction5246.output := by lin_cert using reduction5246.terms
def image5247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5247 : InImage map_25_164 image5247 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5247 : Bundle := named_bundle% "RealMapCertificates/relations/basis5247.json"
theorem reductionProof5247 : EqualModuloRelations reduction5247.relations reduction5247.input reduction5247.output := by lin_cert using reduction5247.terms
theorem substitutionProof5247 : IsMapEvaluation generatorImages reduction5247.relations [0,0,0,0,645] reduction5247.output := by lin_cert using reduction5247.terms
def image5248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5248 : InImage map_25_164 image5248 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5248 : Bundle := named_bundle% "RealMapCertificates/relations/basis5248.json"
theorem reductionProof5248 : EqualModuloRelations reduction5248.relations reduction5248.input reduction5248.output := by lin_cert using reduction5248.terms
theorem substitutionProof5248 : IsMapEvaluation generatorImages reduction5248.relations [0,0,0,0,644] reduction5248.output := by lin_cert using reduction5248.terms
def map_25_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5370 : InImage map_25_165 image5370 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5370 : Bundle := named_bundle% "RealMapCertificates/relations/basis5370.json"
theorem reductionProof5370 : EqualModuloRelations reduction5370.relations reduction5370.input reduction5370.output := by lin_cert using reduction5370.terms
theorem substitutionProof5370 : IsMapEvaluation generatorImages reduction5370.relations [13,13,13,13,80] reduction5370.output := by lin_cert using reduction5370.terms
def image5371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5371 : InImage map_25_165 image5371 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5371 : Bundle := named_bundle% "RealMapCertificates/relations/basis5371.json"
theorem reductionProof5371 : EqualModuloRelations reduction5371.relations reduction5371.input reduction5371.output := by lin_cert using reduction5371.terms
theorem substitutionProof5371 : IsMapEvaluation generatorImages reduction5371.relations [8,530] reduction5371.output := by lin_cert using reduction5371.terms
def image5372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5372 : InImage map_25_165 image5372 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5372 : Bundle := named_bundle% "RealMapCertificates/relations/basis5372.json"
theorem reductionProof5372 : EqualModuloRelations reduction5372.relations reduction5372.input reduction5372.output := by lin_cert using reduction5372.terms
theorem substitutionProof5372 : IsMapEvaluation generatorImages reduction5372.relations [0,0,0,0,0,646] reduction5372.output := by lin_cert using reduction5372.terms
def map_25_166 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5459 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5459 : InImage map_25_166 image5459 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5459 : Bundle := named_bundle% "RealMapCertificates/relations/basis5459.json"
theorem reductionProof5459 : EqualModuloRelations reduction5459.relations reduction5459.input reduction5459.output := by lin_cert using reduction5459.terms
theorem substitutionProof5459 : IsMapEvaluation generatorImages reduction5459.relations [715] reduction5459.output := by lin_cert using reduction5459.terms
end RealMapCertificates
