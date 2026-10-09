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
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 72 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 105 => []
  | 133 => []
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 255 => []
  | 267 => []
  | 268 => []
  | 280 => []
  | 287 => []
  | 292 => []
  | 293 => []
  | 294 => []
  | 349 => []
  | 357 => []
  | 359 => []
  | 383 => []
  | 472 => []
  | 475 => []
  | 537 => []
  | 550 => []
  | 627 => []
  | 655 => []
  | 690 => []
  | 706 => []
  | 727 => []
  | 743 => []
  | 760 => []
  | 797 => []
  | 810 => []
  | 811 => []
  | 812 => []
  | 832 => []
  | 834 => []
  | 836 => []
  | 853 => []
  | 855 => []
  | 856 => []
  | 874 => []
  | 875 => []
  | 878 => []
  | 898 => []
  | 899 => []
  | 901 => []
  | 903 => []
  | 929 => []
  | 941 => []
  | 975 => []
  | 976 => []
  | 977 => []
  | 978 => []
  | 998 => []
  | 1049 => []
  | 1051 => []
  | 1063 => []
  | 1079 => []
  | 1080 => []
  | 1081 => []
  | 1082 => []
  | 1083 => []
  | 1084 => []
  | 1104 => []
  | 1105 => []
  | 1122 => []
  | _ => []
def map_25_167 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5566 : InImage map_25_167 image5566 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5566 : Bundle := named_bundle% "RealMapCertificates/relations/basis5566.json"
theorem reductionProof5566 : EqualModuloRelations reduction5566.relations reduction5566.input reduction5566.output := by lin_cert using reduction5566.terms
theorem substitutionProof5566 : IsMapEvaluation generatorImages reduction5566.relations [8,550] reduction5566.output := by lin_cert using reduction5566.terms
def image5567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5567 : InImage map_25_167 image5567 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5567 : Bundle := named_bundle% "RealMapCertificates/relations/basis5567.json"
theorem reductionProof5567 : EqualModuloRelations reduction5567.relations reduction5567.input reduction5567.output := by lin_cert using reduction5567.terms
theorem substitutionProof5567 : IsMapEvaluation generatorImages reduction5567.relations [8,13,292] reduction5567.output := by lin_cert using reduction5567.terms
def map_25_168 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5685 : InImage map_25_168 image5685 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5685 : Bundle := named_bundle% "RealMapCertificates/relations/basis5685.json"
theorem reductionProof5685 : EqualModuloRelations reduction5685.relations reduction5685.input reduction5685.output := by lin_cert using reduction5685.terms
theorem substitutionProof5685 : IsMapEvaluation generatorImages reduction5685.relations [8,17,267] reduction5685.output := by lin_cert using reduction5685.terms
def image5686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5686 : InImage map_25_168 image5686 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5686 : Bundle := named_bundle% "RealMapCertificates/relations/basis5686.json"
theorem reductionProof5686 : EqualModuloRelations reduction5686.relations reduction5686.input reduction5686.output := by lin_cert using reduction5686.terms
theorem substitutionProof5686 : IsMapEvaluation generatorImages reduction5686.relations [0,0,0,64,187] reduction5686.output := by lin_cert using reduction5686.terms
def map_25_169 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5790 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5790 : InImage map_25_169 image5790 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5790 : Bundle := named_bundle% "RealMapCertificates/relations/basis5790.json"
theorem reductionProof5790 : EqualModuloRelations reduction5790.relations reduction5790.input reduction5790.output := by lin_cert using reduction5790.terms
theorem substitutionProof5790 : IsMapEvaluation generatorImages reduction5790.relations [1,727] reduction5790.output := by lin_cert using reduction5790.terms
def image5791 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5791 : InImage map_25_169 image5791 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5791 : Bundle := named_bundle% "RealMapCertificates/relations/basis5791.json"
theorem reductionProof5791 : EqualModuloRelations reduction5791.relations reduction5791.input reduction5791.output := by lin_cert using reduction5791.terms
theorem substitutionProof5791 : IsMapEvaluation generatorImages reduction5791.relations [0,0,0,0,64,188] reduction5791.output := by lin_cert using reduction5791.terms
def map_25_170 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5900 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5900 : InImage map_25_170 image5900 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5900 : Bundle := named_bundle% "RealMapCertificates/relations/basis5900.json"
theorem reductionProof5900 : EqualModuloRelations reduction5900.relations reduction5900.input reduction5900.output := by lin_cert using reduction5900.terms
theorem substitutionProof5900 : IsMapEvaluation generatorImages reduction5900.relations [9,13,292] reduction5900.output := by lin_cert using reduction5900.terms
def image5901 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5901 : InImage map_25_170 image5901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5901 : Bundle := named_bundle% "RealMapCertificates/relations/basis5901.json"
theorem reductionProof5901 : EqualModuloRelations reduction5901.relations reduction5901.input reduction5901.output := by lin_cert using reduction5901.terms
theorem substitutionProof5901 : IsMapEvaluation generatorImages reduction5901.relations [8,8,383] reduction5901.output := by lin_cert using reduction5901.terms
def map_25_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6035 : InImage map_25_171 image6035 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6035 : Bundle := named_bundle% "RealMapCertificates/relations/basis6035.json"
theorem reductionProof6035 : EqualModuloRelations reduction6035.relations reduction6035.input reduction6035.output := by lin_cert using reduction6035.terms
theorem substitutionProof6035 : IsMapEvaluation generatorImages reduction6035.relations [8,20,267] reduction6035.output := by lin_cert using reduction6035.terms
def image6036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6036 : InImage map_25_171 image6036 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6036 : Bundle := named_bundle% "RealMapCertificates/relations/basis6036.json"
theorem reductionProof6036 : EqualModuloRelations reduction6036.relations reduction6036.input reduction6036.output := by lin_cert using reduction6036.terms
theorem substitutionProof6036 : IsMapEvaluation generatorImages reduction6036.relations [0,0,0,0,0,0,706] reduction6036.output := by lin_cert using reduction6036.terms
def map_25_172 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image6125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6125 : InImage map_25_172 image6125 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6125 : Bundle := named_bundle% "RealMapCertificates/relations/basis6125.json"
theorem reductionProof6125 : EqualModuloRelations reduction6125.relations reduction6125.input reduction6125.output := by lin_cert using reduction6125.terms
theorem substitutionProof6125 : IsMapEvaluation generatorImages reduction6125.relations [13,537] reduction6125.output := by lin_cert using reduction6125.terms
def image6126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6126 : InImage map_25_172 image6126 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6126 : Bundle := named_bundle% "RealMapCertificates/relations/basis6126.json"
theorem reductionProof6126 : EqualModuloRelations reduction6126.relations reduction6126.input reduction6126.output := by lin_cert using reduction6126.terms
theorem substitutionProof6126 : IsMapEvaluation generatorImages reduction6126.relations [13,13,13,13,105] reduction6126.output := by lin_cert using reduction6126.terms
def image6127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6127 : InImage map_25_172 image6127 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6127 : Bundle := named_bundle% "RealMapCertificates/relations/basis6127.json"
theorem reductionProof6127 : EqualModuloRelations reduction6127.relations reduction6127.input reduction6127.output := by lin_cert using reduction6127.terms
theorem substitutionProof6127 : IsMapEvaluation generatorImages reduction6127.relations [5,627] reduction6127.output := by lin_cert using reduction6127.terms
def map_25_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6236 : InImage map_25_173 image6236 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6236 : Bundle := named_bundle% "RealMapCertificates/relations/basis6236.json"
theorem reductionProof6236 : EqualModuloRelations reduction6236.relations reduction6236.input reduction6236.output := by lin_cert using reduction6236.terms
theorem substitutionProof6236 : IsMapEvaluation generatorImages reduction6236.relations [13,13,292] reduction6236.output := by lin_cert using reduction6236.terms
def image6237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6237 : InImage map_25_173 image6237 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6237 : Bundle := named_bundle% "RealMapCertificates/relations/basis6237.json"
theorem reductionProof6237 : EqualModuloRelations reduction6237.relations reduction6237.input reduction6237.output := by lin_cert using reduction6237.terms
theorem substitutionProof6237 : IsMapEvaluation generatorImages reduction6237.relations [8,8,17,209] reduction6237.output := by lin_cert using reduction6237.terms
def map_25_174 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6362 : InImage map_25_174 image6362 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6362 : Bundle := named_bundle% "RealMapCertificates/relations/basis6362.json"
theorem reductionProof6362 : EqualModuloRelations reduction6362.relations reduction6362.input reduction6362.output := by lin_cert using reduction6362.terms
theorem substitutionProof6362 : IsMapEvaluation generatorImages reduction6362.relations [810] reduction6362.output := by lin_cert using reduction6362.terms
def image6363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6363 : InImage map_25_174 image6363 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6363 : Bundle := named_bundle% "RealMapCertificates/relations/basis6363.json"
theorem reductionProof6363 : EqualModuloRelations reduction6363.relations reduction6363.input reduction6363.output := by lin_cert using reduction6363.terms
theorem substitutionProof6363 : IsMapEvaluation generatorImages reduction6363.relations [8,8,23,188] reduction6363.output := by lin_cert using reduction6363.terms
def image6364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6364 : InImage map_25_174 image6364 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6364 : Bundle := named_bundle% "RealMapCertificates/relations/basis6364.json"
theorem reductionProof6364 : EqualModuloRelations reduction6364.relations reduction6364.input reduction6364.output := by lin_cert using reduction6364.terms
theorem substitutionProof6364 : IsMapEvaluation generatorImages reduction6364.relations [0,797] reduction6364.output := by lin_cert using reduction6364.terms
def map_25_175 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6472 : InImage map_25_175 image6472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6472 : Bundle := named_bundle% "RealMapCertificates/relations/basis6472.json"
theorem reductionProof6472 : EqualModuloRelations reduction6472.relations reduction6472.input reduction6472.output := by lin_cert using reduction6472.terms
theorem substitutionProof6472 : IsMapEvaluation generatorImages reduction6472.relations [1,797] reduction6472.output := by lin_cert using reduction6472.terms
def image6473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6473 : InImage map_25_175 image6473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6473 : Bundle := named_bundle% "RealMapCertificates/relations/basis6473.json"
theorem reductionProof6473 : EqualModuloRelations reduction6473.relations reduction6473.input reduction6473.output := by lin_cert using reduction6473.terms
theorem substitutionProof6473 : IsMapEvaluation generatorImages reduction6473.relations [0,812] reduction6473.output := by lin_cert using reduction6473.terms
def image6474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6474 : InImage map_25_175 image6474 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6474 : Bundle := named_bundle% "RealMapCertificates/relations/basis6474.json"
theorem reductionProof6474 : EqualModuloRelations reduction6474.relations reduction6474.input reduction6474.output := by lin_cert using reduction6474.terms
theorem substitutionProof6474 : IsMapEvaluation generatorImages reduction6474.relations [0,811] reduction6474.output := by lin_cert using reduction6474.terms
def image6475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6475 : InImage map_25_175 image6475 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6475 : Bundle := named_bundle% "RealMapCertificates/relations/basis6475.json"
theorem reductionProof6475 : EqualModuloRelations reduction6475.relations reduction6475.input reduction6475.output := by lin_cert using reduction6475.terms
theorem substitutionProof6475 : IsMapEvaluation generatorImages reduction6475.relations [0,0,0,0,0,64,209] reduction6475.output := by lin_cert using reduction6475.terms
def map_25_176 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6581 : InImage map_25_176 image6581 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6581 : Bundle := named_bundle% "RealMapCertificates/relations/basis6581.json"
theorem reductionProof6581 : EqualModuloRelations reduction6581.relations reduction6581.input reduction6581.output := by lin_cert using reduction6581.terms
theorem substitutionProof6581 : IsMapEvaluation generatorImages reduction6581.relations [8,8,8,280] reduction6581.output := by lin_cert using reduction6581.terms
def image6582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6582 : InImage map_25_176 image6582 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6582 : Bundle := named_bundle% "RealMapCertificates/relations/basis6582.json"
theorem reductionProof6582 : EqualModuloRelations reduction6582.relations reduction6582.input reduction6582.output := by lin_cert using reduction6582.terms
theorem substitutionProof6582 : IsMapEvaluation generatorImages reduction6582.relations [0,0,0,0,0,0,760] reduction6582.output := by lin_cert using reduction6582.terms
def map_25_177 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6715 : InImage map_25_177 image6715 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6715 : Bundle := named_bundle% "RealMapCertificates/relations/basis6715.json"
theorem reductionProof6715 : EqualModuloRelations reduction6715.relations reduction6715.input reduction6715.output := by lin_cert using reduction6715.terms
theorem substitutionProof6715 : IsMapEvaluation generatorImages reduction6715.relations [853] reduction6715.output := by lin_cert using reduction6715.terms
def image6716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6716 : InImage map_25_177 image6716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6716 : Bundle := named_bundle% "RealMapCertificates/relations/basis6716.json"
theorem reductionProof6716 : EqualModuloRelations reduction6716.relations reduction6716.input reduction6716.output := by lin_cert using reduction6716.terms
theorem substitutionProof6716 : IsMapEvaluation generatorImages reduction6716.relations [8,9,23,188] reduction6716.output := by lin_cert using reduction6716.terms
def image6717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6717 : InImage map_25_177 image6717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6717 : Bundle := named_bundle% "RealMapCertificates/relations/basis6717.json"
theorem reductionProof6717 : EqualModuloRelations reduction6717.relations reduction6717.input reduction6717.output := by lin_cert using reduction6717.terms
theorem substitutionProof6717 : IsMapEvaluation generatorImages reduction6717.relations [0,8,627] reduction6717.output := by lin_cert using reduction6717.terms
def map_25_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6815 : InImage map_25_178 image6815 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6815 : Bundle := named_bundle% "RealMapCertificates/relations/basis6815.json"
theorem reductionProof6815 : EqualModuloRelations reduction6815.relations reduction6815.input reduction6815.output := by lin_cert using reduction6815.terms
theorem substitutionProof6815 : IsMapEvaluation generatorImages reduction6815.relations [9,13,13,13,133] reduction6815.output := by lin_cert using reduction6815.terms
def image6816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6816 : InImage map_25_178 image6816 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6816 : Bundle := named_bundle% "RealMapCertificates/relations/basis6816.json"
theorem reductionProof6816 : EqualModuloRelations reduction6816.relations reduction6816.input reduction6816.output := by lin_cert using reduction6816.terms
theorem substitutionProof6816 : IsMapEvaluation generatorImages reduction6816.relations [1,8,627] reduction6816.output := by lin_cert using reduction6816.terms
def image6817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6817 : InImage map_25_178 image6817 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6817 : Bundle := named_bundle% "RealMapCertificates/relations/basis6817.json"
theorem reductionProof6817 : EqualModuloRelations reduction6817.relations reduction6817.input reduction6817.output := by lin_cert using reduction6817.terms
theorem substitutionProof6817 : IsMapEvaluation generatorImages reduction6817.relations [0,855] reduction6817.output := by lin_cert using reduction6817.terms
def image6818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6818 : InImage map_25_178 image6818 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6818 : Bundle := named_bundle% "RealMapCertificates/relations/basis6818.json"
theorem reductionProof6818 : EqualModuloRelations reduction6818.relations reduction6818.input reduction6818.output := by lin_cert using reduction6818.terms
theorem substitutionProof6818 : IsMapEvaluation generatorImages reduction6818.relations [0,0,832] reduction6818.output := by lin_cert using reduction6818.terms
def map_25_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6943 : InImage map_25_179 image6943 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6943 : Bundle := named_bundle% "RealMapCertificates/relations/basis6943.json"
theorem reductionProof6943 : EqualModuloRelations reduction6943.relations reduction6943.input reduction6943.output := by lin_cert using reduction6943.terms
theorem substitutionProof6943 : IsMapEvaluation generatorImages reduction6943.relations [8,8,8,294] reduction6943.output := by lin_cert using reduction6943.terms
def map_25_180 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7082 : InImage map_25_180 image7082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7082 : Bundle := named_bundle% "RealMapCertificates/relations/basis7082.json"
theorem reductionProof7082 : EqualModuloRelations reduction7082.relations reduction7082.input reduction7082.output := by lin_cert using reduction7082.terms
theorem substitutionProof7082 : IsMapEvaluation generatorImages reduction7082.relations [64,255] reduction7082.output := by lin_cert using reduction7082.terms
def image7083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7083 : InImage map_25_180 image7083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7083 : Bundle := named_bundle% "RealMapCertificates/relations/basis7083.json"
theorem reductionProof7083 : EqualModuloRelations reduction7083.relations reduction7083.input reduction7083.output := by lin_cert using reduction7083.terms
theorem substitutionProof7083 : IsMapEvaluation generatorImages reduction7083.relations [13,13,357] reduction7083.output := by lin_cert using reduction7083.terms
def image7084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7084 : InImage map_25_180 image7084 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7084 : Bundle := named_bundle% "RealMapCertificates/relations/basis7084.json"
theorem reductionProof7084 : EqualModuloRelations reduction7084.relations reduction7084.input reduction7084.output := by lin_cert using reduction7084.terms
theorem substitutionProof7084 : IsMapEvaluation generatorImages reduction7084.relations [8,13,23,188] reduction7084.output := by lin_cert using reduction7084.terms
def image7085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7085 : InImage map_25_180 image7085 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7085 : Bundle := named_bundle% "RealMapCertificates/relations/basis7085.json"
theorem reductionProof7085 : EqualModuloRelations reduction7085.relations reduction7085.input reduction7085.output := by lin_cert using reduction7085.terms
theorem substitutionProof7085 : IsMapEvaluation generatorImages reduction7085.relations [0,8,655] reduction7085.output := by lin_cert using reduction7085.terms
def map_25_181 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7191 : InImage map_25_181 image7191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7191 : Bundle := named_bundle% "RealMapCertificates/relations/basis7191.json"
theorem reductionProof7191 : EqualModuloRelations reduction7191.relations reduction7191.input reduction7191.output := by lin_cert using reduction7191.terms
theorem substitutionProof7191 : IsMapEvaluation generatorImages reduction7191.relations [13,13,13,13,133] reduction7191.output := by lin_cert using reduction7191.terms
def image7192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7192 : InImage map_25_181 image7192 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7192 : Bundle := named_bundle% "RealMapCertificates/relations/basis7192.json"
theorem reductionProof7192 : EqualModuloRelations reduction7192.relations reduction7192.input reduction7192.output := by lin_cert using reduction7192.terms
theorem substitutionProof7192 : IsMapEvaluation generatorImages reduction7192.relations [1,1,856] reduction7192.output := by lin_cert using reduction7192.terms
def image7193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7193 : InImage map_25_181 image7193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7193 : Bundle := named_bundle% "RealMapCertificates/relations/basis7193.json"
theorem reductionProof7193 : EqualModuloRelations reduction7193.relations reduction7193.input reduction7193.output := by lin_cert using reduction7193.terms
theorem substitutionProof7193 : IsMapEvaluation generatorImages reduction7193.relations [0,0,875] reduction7193.output := by lin_cert using reduction7193.terms
def image7194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7194 : InImage map_25_181 image7194 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7194 : Bundle := named_bundle% "RealMapCertificates/relations/basis7194.json"
theorem reductionProof7194 : EqualModuloRelations reduction7194.relations reduction7194.input reduction7194.output := by lin_cert using reduction7194.terms
theorem substitutionProof7194 : IsMapEvaluation generatorImages reduction7194.relations [0,0,874] reduction7194.output := by lin_cert using reduction7194.terms
def map_25_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7301 : InImage map_25_182 image7301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7301 : Bundle := named_bundle% "RealMapCertificates/relations/basis7301.json"
theorem reductionProof7301 : EqualModuloRelations reduction7301.relations reduction7301.input reduction7301.output := by lin_cert using reduction7301.terms
theorem substitutionProof7301 : IsMapEvaluation generatorImages reduction7301.relations [898] reduction7301.output := by lin_cert using reduction7301.terms
def image7302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7302 : InImage map_25_182 image7302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7302 : Bundle := named_bundle% "RealMapCertificates/relations/basis7302.json"
theorem reductionProof7302 : EqualModuloRelations reduction7302.relations reduction7302.input reduction7302.output := by lin_cert using reduction7302.terms
theorem substitutionProof7302 : IsMapEvaluation generatorImages reduction7302.relations [8,8,9,294] reduction7302.output := by lin_cert using reduction7302.terms
def image7303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7303 : InImage map_25_182 image7303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7303 : Bundle := named_bundle% "RealMapCertificates/relations/basis7303.json"
theorem reductionProof7303 : EqualModuloRelations reduction7303.relations reduction7303.input reduction7303.output := by lin_cert using reduction7303.terms
theorem substitutionProof7303 : IsMapEvaluation generatorImages reduction7303.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,743] reduction7303.output := by lin_cert using reduction7303.terms
def map_25_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7453 : InImage map_25_183 image7453 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7453 : Bundle := named_bundle% "RealMapCertificates/relations/basis7453.json"
theorem reductionProof7453 : EqualModuloRelations reduction7453.relations reduction7453.input reduction7453.output := by lin_cert using reduction7453.terms
theorem substitutionProof7453 : IsMapEvaluation generatorImages reduction7453.relations [9,13,23,188] reduction7453.output := by lin_cert using reduction7453.terms
def image7454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7454 : InImage map_25_183 image7454 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7454 : Bundle := named_bundle% "RealMapCertificates/relations/basis7454.json"
theorem reductionProof7454 : EqualModuloRelations reduction7454.relations reduction7454.input reduction7454.output := by lin_cert using reduction7454.terms
theorem substitutionProof7454 : IsMapEvaluation generatorImages reduction7454.relations [8,64,188] reduction7454.output := by lin_cert using reduction7454.terms
def image7455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7455 : InImage map_25_183 image7455 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7455 : Bundle := named_bundle% "RealMapCertificates/relations/basis7455.json"
theorem reductionProof7455 : EqualModuloRelations reduction7455.relations reduction7455.input reduction7455.output := by lin_cert using reduction7455.terms
theorem substitutionProof7455 : IsMapEvaluation generatorImages reduction7455.relations [0,8,690] reduction7455.output := by lin_cert using reduction7455.terms
def image7456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7456 : InImage map_25_183 image7456 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7456 : Bundle := named_bundle% "RealMapCertificates/relations/basis7456.json"
theorem reductionProof7456 : EqualModuloRelations reduction7456.relations reduction7456.input reduction7456.output := by lin_cert using reduction7456.terms
theorem substitutionProof7456 : IsMapEvaluation generatorImages reduction7456.relations [0,0,0,0,0,0,0,836] reduction7456.output := by lin_cert using reduction7456.terms
def map_25_184 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7553 : InImage map_25_184 image7553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7553 : Bundle := named_bundle% "RealMapCertificates/relations/basis7553.json"
theorem reductionProof7553 : EqualModuloRelations reduction7553.relations reduction7553.input reduction7553.output := by lin_cert using reduction7553.terms
theorem substitutionProof7553 : IsMapEvaluation generatorImages reduction7553.relations [5,64,209] reduction7553.output := by lin_cert using reduction7553.terms
def image7554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7554 : InImage map_25_184 image7554 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7554 : Bundle := named_bundle% "RealMapCertificates/relations/basis7554.json"
theorem reductionProof7554 : EqualModuloRelations reduction7554.relations reduction7554.input reduction7554.output := by lin_cert using reduction7554.terms
theorem substitutionProof7554 : IsMapEvaluation generatorImages reduction7554.relations [1,899] reduction7554.output := by lin_cert using reduction7554.terms
def image7555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7555 : InImage map_25_184 image7555 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7555 : Bundle := named_bundle% "RealMapCertificates/relations/basis7555.json"
theorem reductionProof7555 : EqualModuloRelations reduction7555.relations reduction7555.input reduction7555.output := by lin_cert using reduction7555.terms
theorem substitutionProof7555 : IsMapEvaluation generatorImages reduction7555.relations [0,0,903] reduction7555.output := by lin_cert using reduction7555.terms
def image7556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7556 : InImage map_25_184 image7556 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7556 : Bundle := named_bundle% "RealMapCertificates/relations/basis7556.json"
theorem reductionProof7556 : EqualModuloRelations reduction7556.relations reduction7556.input reduction7556.output := by lin_cert using reduction7556.terms
theorem substitutionProof7556 : IsMapEvaluation generatorImages reduction7556.relations [0,0,901] reduction7556.output := by lin_cert using reduction7556.terms
def map_25_185 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7670 : InImage map_25_185 image7670 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7670 : Bundle := named_bundle% "RealMapCertificates/relations/basis7670.json"
theorem reductionProof7670 : EqualModuloRelations reduction7670.relations reduction7670.input reduction7670.output := by lin_cert using reduction7670.terms
theorem substitutionProof7670 : IsMapEvaluation generatorImages reduction7670.relations [8,8,13,294] reduction7670.output := by lin_cert using reduction7670.terms
def image7671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7671 : InImage map_25_185 image7671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7671 : Bundle := named_bundle% "RealMapCertificates/relations/basis7671.json"
theorem reductionProof7671 : EqualModuloRelations reduction7671.relations reduction7671.input reduction7671.output := by lin_cert using reduction7671.terms
theorem substitutionProof7671 : IsMapEvaluation generatorImages reduction7671.relations [0,3,832] reduction7671.output := by lin_cert using reduction7671.terms
def map_25_186 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image7817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7817 : InImage map_25_186 image7817 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7817 : Bundle := named_bundle% "RealMapCertificates/relations/basis7817.json"
theorem reductionProof7817 : EqualModuloRelations reduction7817.relations reduction7817.input reduction7817.output := by lin_cert using reduction7817.terms
theorem substitutionProof7817 : IsMapEvaluation generatorImages reduction7817.relations [13,13,23,188] reduction7817.output := by lin_cert using reduction7817.terms
def image7818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7818 : InImage map_25_186 image7818 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7818 : Bundle := named_bundle% "RealMapCertificates/relations/basis7818.json"
theorem reductionProof7818 : EqualModuloRelations reduction7818.relations reduction7818.input reduction7818.output := by lin_cert using reduction7818.terms
theorem substitutionProof7818 : IsMapEvaluation generatorImages reduction7818.relations [9,13,472] reduction7818.output := by lin_cert using reduction7818.terms
def image7819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7819 : InImage map_25_186 image7819 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7819 : Bundle := named_bundle% "RealMapCertificates/relations/basis7819.json"
theorem reductionProof7819 : EqualModuloRelations reduction7819.relations reduction7819.input reduction7819.output := by lin_cert using reduction7819.terms
theorem substitutionProof7819 : IsMapEvaluation generatorImages reduction7819.relations [8,72,188] reduction7819.output := by lin_cert using reduction7819.terms
def image7820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7820 : InImage map_25_186 image7820 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7820 : Bundle := named_bundle% "RealMapCertificates/relations/basis7820.json"
theorem reductionProof7820 : EqualModuloRelations reduction7820.relations reduction7820.input reduction7820.output := by lin_cert using reduction7820.terms
theorem substitutionProof7820 : IsMapEvaluation generatorImages reduction7820.relations [2,899] reduction7820.output := by lin_cert using reduction7820.terms
def image7821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7821 : InImage map_25_186 image7821 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7821 : Bundle := named_bundle% "RealMapCertificates/relations/basis7821.json"
theorem reductionProof7821 : EqualModuloRelations reduction7821.relations reduction7821.input reduction7821.output := by lin_cert using reduction7821.terms
theorem substitutionProof7821 : IsMapEvaluation generatorImages reduction7821.relations [0,9,690] reduction7821.output := by lin_cert using reduction7821.terms
def image7822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7822 : InImage map_25_186 image7822 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7822 : Bundle := named_bundle% "RealMapCertificates/relations/basis7822.json"
theorem reductionProof7822 : EqualModuloRelations reduction7822.relations reduction7822.input reduction7822.output := by lin_cert using reduction7822.terms
theorem substitutionProof7822 : IsMapEvaluation generatorImages reduction7822.relations [0,0,929] reduction7822.output := by lin_cert using reduction7822.terms
def map_25_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7908 : InImage map_25_187 image7908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7908 : Bundle := named_bundle% "RealMapCertificates/relations/basis7908.json"
theorem reductionProof7908 : EqualModuloRelations reduction7908.relations reduction7908.input reduction7908.output := by lin_cert using reduction7908.terms
theorem substitutionProof7908 : IsMapEvaluation generatorImages reduction7908.relations [13,13,13,13,13,76] reduction7908.output := by lin_cert using reduction7908.terms
def image7909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7909 : InImage map_25_187 image7909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7909 : Bundle := named_bundle% "RealMapCertificates/relations/basis7909.json"
theorem reductionProof7909 : EqualModuloRelations reduction7909.relations reduction7909.input reduction7909.output := by lin_cert using reduction7909.terms
theorem substitutionProof7909 : IsMapEvaluation generatorImages reduction7909.relations [0,2,901] reduction7909.output := by lin_cert using reduction7909.terms
def map_25_188 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8013 : InImage map_25_188 image8013 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8013 : Bundle := named_bundle% "RealMapCertificates/relations/basis8013.json"
theorem reductionProof8013 : EqualModuloRelations reduction8013.relations reduction8013.input reduction8013.output := by lin_cert using reduction8013.terms
theorem substitutionProof8013 : IsMapEvaluation generatorImages reduction8013.relations [977] reduction8013.output := by lin_cert using reduction8013.terms
def image8014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8014 : InImage map_25_188 image8014 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8014 : Bundle := named_bundle% "RealMapCertificates/relations/basis8014.json"
theorem reductionProof8014 : EqualModuloRelations reduction8014.relations reduction8014.input reduction8014.output := by lin_cert using reduction8014.terms
theorem substitutionProof8014 : IsMapEvaluation generatorImages reduction8014.relations [976] reduction8014.output := by lin_cert using reduction8014.terms
def image8015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8015 : InImage map_25_188 image8015 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8015 : Bundle := named_bundle% "RealMapCertificates/relations/basis8015.json"
theorem reductionProof8015 : EqualModuloRelations reduction8015.relations reduction8015.input reduction8015.output := by lin_cert using reduction8015.terms
theorem substitutionProof8015 : IsMapEvaluation generatorImages reduction8015.relations [975] reduction8015.output := by lin_cert using reduction8015.terms
def image8016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8016 : InImage map_25_188 image8016 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8016 : Bundle := named_bundle% "RealMapCertificates/relations/basis8016.json"
theorem reductionProof8016 : EqualModuloRelations reduction8016.relations reduction8016.input reduction8016.output := by lin_cert using reduction8016.terms
theorem substitutionProof8016 : IsMapEvaluation generatorImages reduction8016.relations [64,293] reduction8016.output := by lin_cert using reduction8016.terms
def image8017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8017 : InImage map_25_188 image8017 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8017 : Bundle := named_bundle% "RealMapCertificates/relations/basis8017.json"
theorem reductionProof8017 : EqualModuloRelations reduction8017.relations reduction8017.input reduction8017.output := by lin_cert using reduction8017.terms
theorem substitutionProof8017 : IsMapEvaluation generatorImages reduction8017.relations [8,9,13,294] reduction8017.output := by lin_cert using reduction8017.terms
def map_25_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8171 : InImage map_25_189 image8171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8171 : Bundle := named_bundle% "RealMapCertificates/relations/basis8171.json"
theorem reductionProof8171 : EqualModuloRelations reduction8171.relations reduction8171.input reduction8171.output := by lin_cert using reduction8171.terms
theorem substitutionProof8171 : IsMapEvaluation generatorImages reduction8171.relations [13,13,472] reduction8171.output := by lin_cert using reduction8171.terms
def image8172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8172 : InImage map_25_189 image8172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8172 : Bundle := named_bundle% "RealMapCertificates/relations/basis8172.json"
theorem reductionProof8172 : EqualModuloRelations reduction8172.relations reduction8172.input reduction8172.output := by lin_cert using reduction8172.terms
theorem substitutionProof8172 : IsMapEvaluation generatorImages reduction8172.relations [8,79,188] reduction8172.output := by lin_cert using reduction8172.terms
def image8173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8173 : InImage map_25_189 image8173 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8173 : Bundle := named_bundle% "RealMapCertificates/relations/basis8173.json"
theorem reductionProof8173 : EqualModuloRelations reduction8173.relations reduction8173.input reduction8173.output := by lin_cert using reduction8173.terms
theorem substitutionProof8173 : IsMapEvaluation generatorImages reduction8173.relations [0,978] reduction8173.output := by lin_cert using reduction8173.terms
def image8174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8174 : InImage map_25_189 image8174 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8174 : Bundle := named_bundle% "RealMapCertificates/relations/basis8174.json"
theorem reductionProof8174 : EqualModuloRelations reduction8174.relations reduction8174.input reduction8174.output := by lin_cert using reduction8174.terms
theorem substitutionProof8174 : IsMapEvaluation generatorImages reduction8174.relations [0,13,690] reduction8174.output := by lin_cert using reduction8174.terms
def map_25_190 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8269 : InImage map_25_190 image8269 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8269 : Bundle := named_bundle% "RealMapCertificates/relations/basis8269.json"
theorem reductionProof8269 : EqualModuloRelations reduction8269.relations reduction8269.input reduction8269.output := by lin_cert using reduction8269.terms
theorem substitutionProof8269 : IsMapEvaluation generatorImages reduction8269.relations [1,978] reduction8269.output := by lin_cert using reduction8269.terms
def image8270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8270 : InImage map_25_190 image8270 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8270 : Bundle := named_bundle% "RealMapCertificates/relations/basis8270.json"
theorem reductionProof8270 : EqualModuloRelations reduction8270.relations reduction8270.input reduction8270.output := by lin_cert using reduction8270.terms
theorem substitutionProof8270 : IsMapEvaluation generatorImages reduction8270.relations [0,8,17,475] reduction8270.output := by lin_cert using reduction8270.terms
def image8271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8271 : InImage map_25_190 image8271 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8271 : Bundle := named_bundle% "RealMapCertificates/relations/basis8271.json"
theorem reductionProof8271 : EqualModuloRelations reduction8271.relations reduction8271.input reduction8271.output := by lin_cert using reduction8271.terms
theorem substitutionProof8271 : IsMapEvaluation generatorImages reduction8271.relations [0,2,941] reduction8271.output := by lin_cert using reduction8271.terms
def map_25_191 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8396 : InImage map_25_191 image8396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8396 : Bundle := named_bundle% "RealMapCertificates/relations/basis8396.json"
theorem reductionProof8396 : EqualModuloRelations reduction8396.relations reduction8396.input reduction8396.output := by lin_cert using reduction8396.terms
theorem substitutionProof8396 : IsMapEvaluation generatorImages reduction8396.relations [72,293] reduction8396.output := by lin_cert using reduction8396.terms
def image8397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8397 : InImage map_25_191 image8397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8397 : Bundle := named_bundle% "RealMapCertificates/relations/basis8397.json"
theorem reductionProof8397 : EqualModuloRelations reduction8397.relations reduction8397.input reduction8397.output := by lin_cert using reduction8397.terms
theorem substitutionProof8397 : IsMapEvaluation generatorImages reduction8397.relations [8,13,13,294] reduction8397.output := by lin_cert using reduction8397.terms
def image8398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8398 : InImage map_25_191 image8398 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8398 : Bundle := named_bundle% "RealMapCertificates/relations/basis8398.json"
theorem reductionProof8398 : EqualModuloRelations reduction8398.relations reduction8398.input reduction8398.output := by lin_cert using reduction8398.terms
theorem substitutionProof8398 : IsMapEvaluation generatorImages reduction8398.relations [1,998] reduction8398.output := by lin_cert using reduction8398.terms
def map_25_192 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8544 : InImage map_25_192 image8544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8544 : Bundle := named_bundle% "RealMapCertificates/relations/basis8544.json"
theorem reductionProof8544 : EqualModuloRelations reduction8544.relations reduction8544.input reduction8544.output := by lin_cert using reduction8544.terms
theorem substitutionProof8544 : IsMapEvaluation generatorImages reduction8544.relations [13,13,13,268] reduction8544.output := by lin_cert using reduction8544.terms
def image8545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8545 : InImage map_25_192 image8545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8545 : Bundle := named_bundle% "RealMapCertificates/relations/basis8545.json"
theorem reductionProof8545 : EqualModuloRelations reduction8545.relations reduction8545.input reduction8545.output := by lin_cert using reduction8545.terms
theorem substitutionProof8545 : IsMapEvaluation generatorImages reduction8545.relations [8,80,201] reduction8545.output := by lin_cert using reduction8545.terms
def image8546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8546 : InImage map_25_192 image8546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8546 : Bundle := named_bundle% "RealMapCertificates/relations/basis8546.json"
theorem reductionProof8546 : EqualModuloRelations reduction8546.relations reduction8546.input reduction8546.output := by lin_cert using reduction8546.terms
theorem substitutionProof8546 : IsMapEvaluation generatorImages reduction8546.relations [2,978] reduction8546.output := by lin_cert using reduction8546.terms
def map_25_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8642 : InImage map_25_193 image8642 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8642 : Bundle := named_bundle% "RealMapCertificates/relations/basis8642.json"
theorem reductionProof8642 : EqualModuloRelations reduction8642.relations reduction8642.input reduction8642.output := by lin_cert using reduction8642.terms
theorem substitutionProof8642 : IsMapEvaluation generatorImages reduction8642.relations [0,3,929] reduction8642.output := by lin_cert using reduction8642.terms
def map_25_194 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8774 : InImage map_25_194 image8774 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8774 : Bundle := named_bundle% "RealMapCertificates/relations/basis8774.json"
theorem reductionProof8774 : EqualModuloRelations reduction8774.relations reduction8774.input reduction8774.output := by lin_cert using reduction8774.terms
theorem substitutionProof8774 : IsMapEvaluation generatorImages reduction8774.relations [1080] reduction8774.output := by lin_cert using reduction8774.terms
def image8775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8775 : InImage map_25_194 image8775 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8775 : Bundle := named_bundle% "RealMapCertificates/relations/basis8775.json"
theorem reductionProof8775 : EqualModuloRelations reduction8775.relations reduction8775.input reduction8775.output := by lin_cert using reduction8775.terms
theorem substitutionProof8775 : IsMapEvaluation generatorImages reduction8775.relations [1079] reduction8775.output := by lin_cert using reduction8775.terms
def image8776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8776 : InImage map_25_194 image8776 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8776 : Bundle := named_bundle% "RealMapCertificates/relations/basis8776.json"
theorem reductionProof8776 : EqualModuloRelations reduction8776.relations reduction8776.input reduction8776.output := by lin_cert using reduction8776.terms
theorem substitutionProof8776 : IsMapEvaluation generatorImages reduction8776.relations [64,349] reduction8776.output := by lin_cert using reduction8776.terms
def image8777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8777 : InImage map_25_194 image8777 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8777 : Bundle := named_bundle% "RealMapCertificates/relations/basis8777.json"
theorem reductionProof8777 : EqualModuloRelations reduction8777.relations reduction8777.input reduction8777.output := by lin_cert using reduction8777.terms
theorem substitutionProof8777 : IsMapEvaluation generatorImages reduction8777.relations [9,13,13,294] reduction8777.output := by lin_cert using reduction8777.terms
def image8778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8778 : InImage map_25_194 image8778 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8778 : Bundle := named_bundle% "RealMapCertificates/relations/basis8778.json"
theorem reductionProof8778 : EqualModuloRelations reduction8778.relations reduction8778.input reduction8778.output := by lin_cert using reduction8778.terms
theorem substitutionProof8778 : IsMapEvaluation generatorImages reduction8778.relations [8,834] reduction8778.output := by lin_cert using reduction8778.terms
def image8779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8779 : InImage map_25_194 image8779 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8779 : Bundle := named_bundle% "RealMapCertificates/relations/basis8779.json"
theorem reductionProof8779 : EqualModuloRelations reduction8779.relations reduction8779.input reduction8779.output := by lin_cert using reduction8779.terms
theorem substitutionProof8779 : IsMapEvaluation generatorImages reduction8779.relations [0,0,1049] reduction8779.output := by lin_cert using reduction8779.terms
def map_25_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8946 : InImage map_25_195 image8946 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8946 : Bundle := named_bundle% "RealMapCertificates/relations/basis8946.json"
theorem reductionProof8946 : EqualModuloRelations reduction8946.relations reduction8946.input reduction8946.output := by lin_cert using reduction8946.terms
theorem substitutionProof8946 : IsMapEvaluation generatorImages reduction8946.relations [13,13,13,287] reduction8946.output := by lin_cert using reduction8946.terms
def image8947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8947 : InImage map_25_195 image8947 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8947 : Bundle := named_bundle% "RealMapCertificates/relations/basis8947.json"
theorem reductionProof8947 : EqualModuloRelations reduction8947.relations reduction8947.input reduction8947.output := by lin_cert using reduction8947.terms
theorem substitutionProof8947 : IsMapEvaluation generatorImages reduction8947.relations [8,80,212] reduction8947.output := by lin_cert using reduction8947.terms
def image8948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8948 : InImage map_25_195 image8948 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8948 : Bundle := named_bundle% "RealMapCertificates/relations/basis8948.json"
theorem reductionProof8948 : EqualModuloRelations reduction8948.relations reduction8948.input reduction8948.output := by lin_cert using reduction8948.terms
theorem substitutionProof8948 : IsMapEvaluation generatorImages reduction8948.relations [0,1081] reduction8948.output := by lin_cert using reduction8948.terms
def image8949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8949 : InImage map_25_195 image8949 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8949 : Bundle := named_bundle% "RealMapCertificates/relations/basis8949.json"
theorem reductionProof8949 : EqualModuloRelations reduction8949.relations reduction8949.input reduction8949.output := by lin_cert using reduction8949.terms
theorem substitutionProof8949 : IsMapEvaluation generatorImages reduction8949.relations [0,0,1063] reduction8949.output := by lin_cert using reduction8949.terms
def map_25_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9047 : InImage map_25_196 image9047 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9047 : Bundle := named_bundle% "RealMapCertificates/relations/basis9047.json"
theorem reductionProof9047 : EqualModuloRelations reduction9047.relations reduction9047.input reduction9047.output := by lin_cert using reduction9047.terms
theorem substitutionProof9047 : IsMapEvaluation generatorImages reduction9047.relations [3,978] reduction9047.output := by lin_cert using reduction9047.terms
def image9048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9048 : InImage map_25_196 image9048 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9048 : Bundle := named_bundle% "RealMapCertificates/relations/basis9048.json"
theorem reductionProof9048 : EqualModuloRelations reduction9048.relations reduction9048.input reduction9048.output := by lin_cert using reduction9048.terms
theorem substitutionProof9048 : IsMapEvaluation generatorImages reduction9048.relations [0,0,1082] reduction9048.output := by lin_cert using reduction9048.terms
def image9049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9049 : InImage map_25_196 image9049 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9049 : Bundle := named_bundle% "RealMapCertificates/relations/basis9049.json"
theorem reductionProof9049 : EqualModuloRelations reduction9049.relations reduction9049.input reduction9049.output := by lin_cert using reduction9049.terms
theorem substitutionProof9049 : IsMapEvaluation generatorImages reduction9049.relations [0,0,0,0,1051] reduction9049.output := by lin_cert using reduction9049.terms
def map_25_197 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9205 : InImage map_25_197 image9205 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9205 : Bundle := named_bundle% "RealMapCertificates/relations/basis9205.json"
theorem reductionProof9205 : EqualModuloRelations reduction9205.relations reduction9205.input reduction9205.output := by lin_cert using reduction9205.terms
theorem substitutionProof9205 : IsMapEvaluation generatorImages reduction9205.relations [1122] reduction9205.output := by lin_cert using reduction9205.terms
def image9206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9206 : InImage map_25_197 image9206 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9206 : Bundle := named_bundle% "RealMapCertificates/relations/basis9206.json"
theorem reductionProof9206 : EqualModuloRelations reduction9206.relations reduction9206.input reduction9206.output := by lin_cert using reduction9206.terms
theorem substitutionProof9206 : IsMapEvaluation generatorImages reduction9206.relations [13,13,13,294] reduction9206.output := by lin_cert using reduction9206.terms
def image9207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9207 : InImage map_25_197 image9207 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9207 : Bundle := named_bundle% "RealMapCertificates/relations/basis9207.json"
theorem reductionProof9207 : EqualModuloRelations reduction9207.relations reduction9207.input reduction9207.output := by lin_cert using reduction9207.terms
theorem substitutionProof9207 : IsMapEvaluation generatorImages reduction9207.relations [8,878] reduction9207.output := by lin_cert using reduction9207.terms
def image9208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9208 : InImage map_25_197 image9208 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9208 : Bundle := named_bundle% "RealMapCertificates/relations/basis9208.json"
theorem reductionProof9208 : EqualModuloRelations reduction9208.relations reduction9208.input reduction9208.output := by lin_cert using reduction9208.terms
theorem substitutionProof9208 : IsMapEvaluation generatorImages reduction9208.relations [0,1104] reduction9208.output := by lin_cert using reduction9208.terms
def image9209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9209 : InImage map_25_197 image9209 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9209 : Bundle := named_bundle% "RealMapCertificates/relations/basis9209.json"
theorem reductionProof9209 : EqualModuloRelations reduction9209.relations reduction9209.input reduction9209.output := by lin_cert using reduction9209.terms
theorem substitutionProof9209 : IsMapEvaluation generatorImages reduction9209.relations [0,0,0,1084] reduction9209.output := by lin_cert using reduction9209.terms
def image9210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9210 : InImage map_25_197 image9210 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9210 : Bundle := named_bundle% "RealMapCertificates/relations/basis9210.json"
theorem reductionProof9210 : EqualModuloRelations reduction9210.relations reduction9210.input reduction9210.output := by lin_cert using reduction9210.terms
theorem substitutionProof9210 : IsMapEvaluation generatorImages reduction9210.relations [0,0,0,1083] reduction9210.output := by lin_cert using reduction9210.terms
def map_25_198 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9393 : InImage map_25_198 image9393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9393 : Bundle := named_bundle% "RealMapCertificates/relations/basis9393.json"
theorem reductionProof9393 : EqualModuloRelations reduction9393.relations reduction9393.input reduction9393.output := by lin_cert using reduction9393.terms
theorem substitutionProof9393 : IsMapEvaluation generatorImages reduction9393.relations [9,80,212] reduction9393.output := by lin_cert using reduction9393.terms
def image9394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9394 : InImage map_25_198 image9394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9394 : Bundle := named_bundle% "RealMapCertificates/relations/basis9394.json"
theorem reductionProof9394 : EqualModuloRelations reduction9394.relations reduction9394.input reduction9394.output := by lin_cert using reduction9394.terms
theorem substitutionProof9394 : IsMapEvaluation generatorImages reduction9394.relations [0,0,1105] reduction9394.output := by lin_cert using reduction9394.terms
def image9395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9395 : InImage map_25_198 image9395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9395 : Bundle := named_bundle% "RealMapCertificates/relations/basis9395.json"
theorem reductionProof9395 : EqualModuloRelations reduction9395.relations reduction9395.input reduction9395.output := by lin_cert using reduction9395.terms
theorem substitutionProof9395 : IsMapEvaluation generatorImages reduction9395.relations [0,0,67,359] reduction9395.output := by lin_cert using reduction9395.terms
end RealMapCertificates
