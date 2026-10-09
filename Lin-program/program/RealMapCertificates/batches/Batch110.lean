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
  | 24 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 67 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 76 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 87 => [[3,4,4,4,4,4]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 167 => [[7,9,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 215 => []
  | 250 => []
  | 280 => []
  | 286 => []
  | 324 => []
  | 417 => []
  | 418 => []
  | 474 => []
  | 532 => []
  | 629 => []
  | 691 => []
  | 692 => []
  | 832 => []
  | 833 => []
  | 877 => []
  | 941 => []
  | 959 => []
  | 1049 => []
  | 1050 => []
  | 1081 => []
  | 1083 => []
  | 1123 => []
  | 1124 => []
  | 1146 => []
  | 1147 => []
  | 1148 => []
  | 1149 => []
  | 1150 => []
  | 1168 => []
  | 1169 => []
  | 1221 => []
  | 1244 => []
  | 1245 => []
  | 1247 => []
  | 1257 => []
  | 1258 => []
  | 1263 => []
  | 1291 => []
  | 1338 => []
  | 1351 => []
  | 1369 => []
  | 1386 => []
  | 1429 => []
  | 1430 => []
  | 1443 => []
  | 1444 => []
  | 1445 => []
  | 1487 => []
  | 1489 => []
  | 1519 => []
  | 1555 => []
  | 1556 => []
  | 1573 => []
  | 1641 => []
  | _ => []
def map_25_199 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9513 : InImage map_25_199 image9513 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9513 : Bundle := named_bundle% "RealMapCertificates/relations/basis9513.json"
theorem reductionProof9513 : EqualModuloRelations reduction9513.relations reduction9513.input reduction9513.output := by lin_cert using reduction9513.terms
theorem substitutionProof9513 : IsMapEvaluation generatorImages reduction9513.relations [1169] reduction9513.output := by lin_cert using reduction9513.terms
def image9514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9514 : InImage map_25_199 image9514 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9514 : Bundle := named_bundle% "RealMapCertificates/relations/basis9514.json"
theorem reductionProof9514 : EqualModuloRelations reduction9514.relations reduction9514.input reduction9514.output := by lin_cert using reduction9514.terms
theorem substitutionProof9514 : IsMapEvaluation generatorImages reduction9514.relations [1168] reduction9514.output := by lin_cert using reduction9514.terms
def image9515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9515 : InImage map_25_199 image9515 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9515 : Bundle := named_bundle% "RealMapCertificates/relations/basis9515.json"
theorem reductionProof9515 : EqualModuloRelations reduction9515.relations reduction9515.input reduction9515.output := by lin_cert using reduction9515.terms
theorem substitutionProof9515 : IsMapEvaluation generatorImages reduction9515.relations [0,0,0,0,0,0,0,0,0,0,0,59,324] reduction9515.output := by lin_cert using reduction9515.terms
def map_25_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9674 : InImage map_25_200 image9674 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9674 : Bundle := named_bundle% "RealMapCertificates/relations/basis9674.json"
theorem reductionProof9674 : EqualModuloRelations reduction9674.relations reduction9674.input reduction9674.output := by lin_cert using reduction9674.terms
theorem substitutionProof9674 : IsMapEvaluation generatorImages reduction9674.relations [13,833] reduction9674.output := by lin_cert using reduction9674.terms
def image9675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9675 : InImage map_25_200 image9675 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9675 : Bundle := named_bundle% "RealMapCertificates/relations/basis9675.json"
theorem reductionProof9675 : EqualModuloRelations reduction9675.relations reduction9675.input reduction9675.output := by lin_cert using reduction9675.terms
theorem substitutionProof9675 : IsMapEvaluation generatorImages reduction9675.relations [8,8,692] reduction9675.output := by lin_cert using reduction9675.terms
def image9676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9676 : InImage map_25_200 image9676 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9676 : Bundle := named_bundle% "RealMapCertificates/relations/basis9676.json"
theorem reductionProof9676 : EqualModuloRelations reduction9676.relations reduction9676.input reduction9676.output := by lin_cert using reduction9676.terms
theorem substitutionProof9676 : IsMapEvaluation generatorImages reduction9676.relations [0,0,1146] reduction9676.output := by lin_cert using reduction9676.terms
def image9677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9677 : InImage map_25_200 image9677 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9677 : Bundle := named_bundle% "RealMapCertificates/relations/basis9677.json"
theorem reductionProof9677 : EqualModuloRelations reduction9677.relations reduction9677.input reduction9677.output := by lin_cert using reduction9677.terms
theorem substitutionProof9677 : IsMapEvaluation generatorImages reduction9677.relations [0,0,2,1083] reduction9677.output := by lin_cert using reduction9677.terms
def map_25_201 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9873 : InImage map_25_201 image9873 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9873 : Bundle := named_bundle% "RealMapCertificates/relations/basis9873.json"
theorem reductionProof9873 : EqualModuloRelations reduction9873.relations reduction9873.input reduction9873.output := by lin_cert using reduction9873.terms
theorem substitutionProof9873 : IsMapEvaluation generatorImages reduction9873.relations [13,80,212] reduction9873.output := by lin_cert using reduction9873.terms
def image9874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9874 : InImage map_25_201 image9874 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9874 : Bundle := named_bundle% "RealMapCertificates/relations/basis9874.json"
theorem reductionProof9874 : EqualModuloRelations reduction9874.relations reduction9874.input reduction9874.output := by lin_cert using reduction9874.terms
theorem substitutionProof9874 : IsMapEvaluation generatorImages reduction9874.relations [2,1123] reduction9874.output := by lin_cert using reduction9874.terms
def image9875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9875 : InImage map_25_201 image9875 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9875 : Bundle := named_bundle% "RealMapCertificates/relations/basis9875.json"
theorem reductionProof9875 : EqualModuloRelations reduction9875.relations reduction9875.input reduction9875.output := by lin_cert using reduction9875.terms
theorem substitutionProof9875 : IsMapEvaluation generatorImages reduction9875.relations [1,87,324] reduction9875.output := by lin_cert using reduction9875.terms
def image9876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9876 : InImage map_25_201 image9876 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9876 : Bundle := named_bundle% "RealMapCertificates/relations/basis9876.json"
theorem reductionProof9876 : EqualModuloRelations reduction9876.relations reduction9876.input reduction9876.output := by lin_cert using reduction9876.terms
theorem substitutionProof9876 : IsMapEvaluation generatorImages reduction9876.relations [0,0,64,418] reduction9876.output := by lin_cert using reduction9876.terms
def image9877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9877 : InImage map_25_201 image9877 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9877 : Bundle := named_bundle% "RealMapCertificates/relations/basis9877.json"
theorem reductionProof9877 : EqualModuloRelations reduction9877.relations reduction9877.input reduction9877.output := by lin_cert using reduction9877.terms
theorem substitutionProof9877 : IsMapEvaluation generatorImages reduction9877.relations [0,0,0,1147] reduction9877.output := by lin_cert using reduction9877.terms
def map_25_202 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9993 : InImage map_25_202 image9993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9993 : Bundle := named_bundle% "RealMapCertificates/relations/basis9993.json"
theorem reductionProof9993 : EqualModuloRelations reduction9993.relations reduction9993.input reduction9993.output := by lin_cert using reduction9993.terms
theorem substitutionProof9993 : IsMapEvaluation generatorImages reduction9993.relations [1221] reduction9993.output := by lin_cert using reduction9993.terms
def image9994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9994 : InImage map_25_202 image9994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9994 : Bundle := named_bundle% "RealMapCertificates/relations/basis9994.json"
theorem reductionProof9994 : EqualModuloRelations reduction9994.relations reduction9994.input reduction9994.output := by lin_cert using reduction9994.terms
theorem substitutionProof9994 : IsMapEvaluation generatorImages reduction9994.relations [3,1081] reduction9994.output := by lin_cert using reduction9994.terms
def image9995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9995 : InImage map_25_202 image9995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9995 : Bundle := named_bundle% "RealMapCertificates/relations/basis9995.json"
theorem reductionProof9995 : EqualModuloRelations reduction9995.relations reduction9995.input reduction9995.output := by lin_cert using reduction9995.terms
theorem substitutionProof9995 : IsMapEvaluation generatorImages reduction9995.relations [0,0,0,0,1149] reduction9995.output := by lin_cert using reduction9995.terms
def map_25_203 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10175 : InImage map_25_203 image10175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10175 : Bundle := named_bundle% "RealMapCertificates/relations/basis10175.json"
theorem reductionProof10175 : EqualModuloRelations reduction10175.relations reduction10175.input reduction10175.output := by lin_cert using reduction10175.terms
theorem substitutionProof10175 : IsMapEvaluation generatorImages reduction10175.relations [13,877] reduction10175.output := by lin_cert using reduction10175.terms
def image10176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10176 : InImage map_25_203 image10176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10176 : Bundle := named_bundle% "RealMapCertificates/relations/basis10176.json"
theorem reductionProof10176 : EqualModuloRelations reduction10176.relations reduction10176.input reduction10176.output := by lin_cert using reduction10176.terms
theorem substitutionProof10176 : IsMapEvaluation generatorImages reduction10176.relations [13,13,13,67,75] reduction10176.output := by lin_cert using reduction10176.terms
def image10177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10177 : InImage map_25_203 image10177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10177 : Bundle := named_bundle% "RealMapCertificates/relations/basis10177.json"
theorem reductionProof10177 : EqualModuloRelations reduction10177.relations reduction10177.input reduction10177.output := by lin_cert using reduction10177.terms
theorem substitutionProof10177 : IsMapEvaluation generatorImages reduction10177.relations [8,9,692] reduction10177.output := by lin_cert using reduction10177.terms
def image10178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10178 : InImage map_25_203 image10178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10178 : Bundle := named_bundle% "RealMapCertificates/relations/basis10178.json"
theorem reductionProof10178 : EqualModuloRelations reduction10178.relations reduction10178.input reduction10178.output := by lin_cert using reduction10178.terms
theorem substitutionProof10178 : IsMapEvaluation generatorImages reduction10178.relations [0,0,0,0,0,1150] reduction10178.output := by lin_cert using reduction10178.terms
def map_25_204 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10375 : InImage map_25_204 image10375 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10375 : Bundle := named_bundle% "RealMapCertificates/relations/basis10375.json"
theorem reductionProof10375 : EqualModuloRelations reduction10375.relations reduction10375.input reduction10375.output := by lin_cert using reduction10375.terms
theorem substitutionProof10375 : IsMapEvaluation generatorImages reduction10375.relations [13,13,13,13,213] reduction10375.output := by lin_cert using reduction10375.terms
def map_25_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10516 : InImage map_25_205 image10516 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10516 : Bundle := named_bundle% "RealMapCertificates/relations/basis10516.json"
theorem reductionProof10516 : EqualModuloRelations reduction10516.relations reduction10516.input reduction10516.output := by lin_cert using reduction10516.terms
theorem substitutionProof10516 : IsMapEvaluation generatorImages reduction10516.relations [167,209] reduction10516.output := by lin_cert using reduction10516.terms
def image10517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10517 : InImage map_25_205 image10517 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10517 : Bundle := named_bundle% "RealMapCertificates/relations/basis10517.json"
theorem reductionProof10517 : EqualModuloRelations reduction10517.relations reduction10517.input reduction10517.output := by lin_cert using reduction10517.terms
theorem substitutionProof10517 : IsMapEvaluation generatorImages reduction10517.relations [2,7,941] reduction10517.output := by lin_cert using reduction10517.terms
def image10518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10518 : InImage map_25_205 image10518 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10518 : Bundle := named_bundle% "RealMapCertificates/relations/basis10518.json"
theorem reductionProof10518 : EqualModuloRelations reduction10518.relations reduction10518.input reduction10518.output := by lin_cert using reduction10518.terms
theorem substitutionProof10518 : IsMapEvaluation generatorImages reduction10518.relations [0,187,187] reduction10518.output := by lin_cert using reduction10518.terms
def map_25_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10698 : InImage map_25_206 image10698 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10698 : Bundle := named_bundle% "RealMapCertificates/relations/basis10698.json"
theorem reductionProof10698 : EqualModuloRelations reduction10698.relations reduction10698.input reduction10698.output := by lin_cert using reduction10698.terms
theorem substitutionProof10698 : IsMapEvaluation generatorImages reduction10698.relations [110,324] reduction10698.output := by lin_cert using reduction10698.terms
def image10699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10699 : InImage map_25_206 image10699 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10699 : Bundle := named_bundle% "RealMapCertificates/relations/basis10699.json"
theorem reductionProof10699 : EqualModuloRelations reduction10699.relations reduction10699.input reduction10699.output := by lin_cert using reduction10699.terms
theorem substitutionProof10699 : IsMapEvaluation generatorImages reduction10699.relations [8,13,692] reduction10699.output := by lin_cert using reduction10699.terms
def image10700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10700 : InImage map_25_206 image10700 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10700 : Bundle := named_bundle% "RealMapCertificates/relations/basis10700.json"
theorem reductionProof10700 : EqualModuloRelations reduction10700.relations reduction10700.input reduction10700.output := by lin_cert using reduction10700.terms
theorem substitutionProof10700 : IsMapEvaluation generatorImages reduction10700.relations [1,187,187] reduction10700.output := by lin_cert using reduction10700.terms
def image10701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10701 : InImage map_25_206 image10701 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10701 : Bundle := named_bundle% "RealMapCertificates/relations/basis10701.json"
theorem reductionProof10701 : EqualModuloRelations reduction10701.relations reduction10701.input reduction10701.output := by lin_cert using reduction10701.terms
theorem substitutionProof10701 : IsMapEvaluation generatorImages reduction10701.relations [0,0,187,188] reduction10701.output := by lin_cert using reduction10701.terms
def map_25_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10919 : InImage map_25_207 image10919 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10919 : Bundle := named_bundle% "RealMapCertificates/relations/basis10919.json"
theorem reductionProof10919 : EqualModuloRelations reduction10919.relations reduction10919.input reduction10919.output := by lin_cert using reduction10919.terms
theorem substitutionProof10919 : IsMapEvaluation generatorImages reduction10919.relations [1,1291] reduction10919.output := by lin_cert using reduction10919.terms
def image10920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10920 : InImage map_25_207 image10920 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10920 : Bundle := named_bundle% "RealMapCertificates/relations/basis10920.json"
theorem reductionProof10920 : EqualModuloRelations reduction10920.relations reduction10920.input reduction10920.output := by lin_cert using reduction10920.terms
theorem substitutionProof10920 : IsMapEvaluation generatorImages reduction10920.relations [0,111,324] reduction10920.output := by lin_cert using reduction10920.terms
def image10921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10921 : InImage map_25_207 image10921 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10921 : Bundle := named_bundle% "RealMapCertificates/relations/basis10921.json"
theorem reductionProof10921 : EqualModuloRelations reduction10921.relations reduction10921.input reduction10921.output := by lin_cert using reduction10921.terms
theorem substitutionProof10921 : IsMapEvaluation generatorImages reduction10921.relations [0,0,0,0,1244] reduction10921.output := by lin_cert using reduction10921.terms
def map_25_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11047 : InImage map_25_208 image11047 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11047 : Bundle := named_bundle% "RealMapCertificates/relations/basis11047.json"
theorem reductionProof11047 : EqualModuloRelations reduction11047.relations reduction11047.input reduction11047.output := by lin_cert using reduction11047.terms
theorem substitutionProof11047 : IsMapEvaluation generatorImages reduction11047.relations [13,13,13,417] reduction11047.output := by lin_cert using reduction11047.terms
def image11048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11048 : InImage map_25_208 image11048 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11048 : Bundle := named_bundle% "RealMapCertificates/relations/basis11048.json"
theorem reductionProof11048 : EqualModuloRelations reduction11048.relations reduction11048.input reduction11048.output := by lin_cert using reduction11048.terms
theorem substitutionProof11048 : IsMapEvaluation generatorImages reduction11048.relations [7,7,832] reduction11048.output := by lin_cert using reduction11048.terms
def image11049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11049 : InImage map_25_208 image11049 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11049 : Bundle := named_bundle% "RealMapCertificates/relations/basis11049.json"
theorem reductionProof11049 : EqualModuloRelations reduction11049.relations reduction11049.input reduction11049.output := by lin_cert using reduction11049.terms
theorem substitutionProof11049 : IsMapEvaluation generatorImages reduction11049.relations [0,0,0,0,1258] reduction11049.output := by lin_cert using reduction11049.terms
def image11050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11050 : InImage map_25_208 image11050 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11050 : Bundle := named_bundle% "RealMapCertificates/relations/basis11050.json"
theorem reductionProof11050 : EqualModuloRelations reduction11050.relations reduction11050.input reduction11050.output := by lin_cert using reduction11050.terms
theorem substitutionProof11050 : IsMapEvaluation generatorImages reduction11050.relations [0,0,0,0,1257] reduction11050.output := by lin_cert using reduction11050.terms
def map_25_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11232 : InImage map_25_209 image11232 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11232 : Bundle := named_bundle% "RealMapCertificates/relations/basis11232.json"
theorem reductionProof11232 : EqualModuloRelations reduction11232.relations reduction11232.input reduction11232.output := by lin_cert using reduction11232.terms
theorem substitutionProof11232 : IsMapEvaluation generatorImages reduction11232.relations [116,324] reduction11232.output := by lin_cert using reduction11232.terms
def image11233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11233 : InImage map_25_209 image11233 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11233 : Bundle := named_bundle% "RealMapCertificates/relations/basis11233.json"
theorem reductionProof11233 : EqualModuloRelations reduction11233.relations reduction11233.input reduction11233.output := by lin_cert using reduction11233.terms
theorem substitutionProof11233 : IsMapEvaluation generatorImages reduction11233.relations [9,13,692] reduction11233.output := by lin_cert using reduction11233.terms
def image11234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11234 : InImage map_25_209 image11234 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11234 : Bundle := named_bundle% "RealMapCertificates/relations/basis11234.json"
theorem reductionProof11234 : EqualModuloRelations reduction11234.relations reduction11234.input reduction11234.output := by lin_cert using reduction11234.terms
theorem substitutionProof11234 : IsMapEvaluation generatorImages reduction11234.relations [0,7,1049] reduction11234.output := by lin_cert using reduction11234.terms
def image11235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11235 : InImage map_25_209 image11235 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11235 : Bundle := named_bundle% "RealMapCertificates/relations/basis11235.json"
theorem reductionProof11235 : EqualModuloRelations reduction11235.relations reduction11235.input reduction11235.output := by lin_cert using reduction11235.terms
theorem substitutionProof11235 : IsMapEvaluation generatorImages reduction11235.relations [0,0,0,0,0,0,1245] reduction11235.output := by lin_cert using reduction11235.terms
def map_25_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11434 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11434 : InImage map_25_210 image11434 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11434 : Bundle := named_bundle% "RealMapCertificates/relations/basis11434.json"
theorem reductionProof11434 : EqualModuloRelations reduction11434.relations reduction11434.input reduction11434.output := by lin_cert using reduction11434.terms
theorem substitutionProof11434 : IsMapEvaluation generatorImages reduction11434.relations [1369] reduction11434.output := by lin_cert using reduction11434.terms
def image11435 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11435 : InImage map_25_210 image11435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11435 : Bundle := named_bundle% "RealMapCertificates/relations/basis11435.json"
theorem reductionProof11435 : EqualModuloRelations reduction11435.relations reduction11435.input reduction11435.output := by lin_cert using reduction11435.terms
theorem substitutionProof11435 : IsMapEvaluation generatorImages reduction11435.relations [9,13,13,474] reduction11435.output := by lin_cert using reduction11435.terms
def image11436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11436 : InImage map_25_210 image11436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11436 : Bundle := named_bundle% "RealMapCertificates/relations/basis11436.json"
theorem reductionProof11436 : EqualModuloRelations reduction11436.relations reduction11436.input reduction11436.output := by lin_cert using reduction11436.terms
theorem substitutionProof11436 : IsMapEvaluation generatorImages reduction11436.relations [0,117,324] reduction11436.output := by lin_cert using reduction11436.terms
def map_25_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11586 : InImage map_25_211 image11586 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11586 : Bundle := named_bundle% "RealMapCertificates/relations/basis11586.json"
theorem reductionProof11586 : EqualModuloRelations reduction11586.relations reduction11586.input reduction11586.output := by lin_cert using reduction11586.terms
theorem substitutionProof11586 : IsMapEvaluation generatorImages reduction11586.relations [13,67,286] reduction11586.output := by lin_cert using reduction11586.terms
def image11587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11587 : InImage map_25_211 image11587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11587 : Bundle := named_bundle% "RealMapCertificates/relations/basis11587.json"
theorem reductionProof11587 : EqualModuloRelations reduction11587.relations reduction11587.input reduction11587.output := by lin_cert using reduction11587.terms
theorem substitutionProof11587 : IsMapEvaluation generatorImages reduction11587.relations [0,0,0,0,0,0,0,0,1247] reduction11587.output := by lin_cert using reduction11587.terms
def map_25_212 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11776 : InImage map_25_212 image11776 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11776 : Bundle := named_bundle% "RealMapCertificates/relations/basis11776.json"
theorem reductionProof11776 : EqualModuloRelations reduction11776.relations reduction11776.input reduction11776.output := by lin_cert using reduction11776.terms
theorem substitutionProof11776 : IsMapEvaluation generatorImages reduction11776.relations [13,13,692] reduction11776.output := by lin_cert using reduction11776.terms
def image11777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11777 : InImage map_25_212 image11777 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11777 : Bundle := named_bundle% "RealMapCertificates/relations/basis11777.json"
theorem reductionProof11777 : EqualModuloRelations reduction11777.relations reduction11777.input reduction11777.output := by lin_cert using reduction11777.terms
theorem substitutionProof11777 : IsMapEvaluation generatorImages reduction11777.relations [13,13,691] reduction11777.output := by lin_cert using reduction11777.terms
def image11778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11778 : InImage map_25_212 image11778 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11778 : Bundle := named_bundle% "RealMapCertificates/relations/basis11778.json"
theorem reductionProof11778 : EqualModuloRelations reduction11778.relations reduction11778.input reduction11778.output := by lin_cert using reduction11778.terms
theorem substitutionProof11778 : IsMapEvaluation generatorImages reduction11778.relations [8,71,324] reduction11778.output := by lin_cert using reduction11778.terms
def image11779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11779 : InImage map_25_212 image11779 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11779 : Bundle := named_bundle% "RealMapCertificates/relations/basis11779.json"
theorem reductionProof11779 : EqualModuloRelations reduction11779.relations reduction11779.input reduction11779.output := by lin_cert using reduction11779.terms
theorem substitutionProof11779 : IsMapEvaluation generatorImages reduction11779.relations [0,1386] reduction11779.output := by lin_cert using reduction11779.terms
def image11780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11780 : InImage map_25_212 image11780 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11780 : Bundle := named_bundle% "RealMapCertificates/relations/basis11780.json"
theorem reductionProof11780 : EqualModuloRelations reduction11780.relations reduction11780.input reduction11780.output := by lin_cert using reduction11780.terms
theorem substitutionProof11780 : IsMapEvaluation generatorImages reduction11780.relations [0,0,0,187,209] reduction11780.output := by lin_cert using reduction11780.terms
def image11781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11781 : InImage map_25_212 image11781 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11781 : Bundle := named_bundle% "RealMapCertificates/relations/basis11781.json"
theorem reductionProof11781 : EqualModuloRelations reduction11781.relations reduction11781.input reduction11781.output := by lin_cert using reduction11781.terms
theorem substitutionProof11781 : IsMapEvaluation generatorImages reduction11781.relations [0,0,0,0,0,0,0,0,1263] reduction11781.output := by lin_cert using reduction11781.terms
def map_25_213 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12019 : InImage map_25_213 image12019 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12019 : Bundle := named_bundle% "RealMapCertificates/relations/basis12019.json"
theorem reductionProof12019 : EqualModuloRelations reduction12019.relations reduction12019.input reduction12019.output := by lin_cert using reduction12019.terms
theorem substitutionProof12019 : IsMapEvaluation generatorImages reduction12019.relations [1429] reduction12019.output := by lin_cert using reduction12019.terms
def image12020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12020 : InImage map_25_213 image12020 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12020 : Bundle := named_bundle% "RealMapCertificates/relations/basis12020.json"
theorem reductionProof12020 : EqualModuloRelations reduction12020.relations reduction12020.input reduction12020.output := by lin_cert using reduction12020.terms
theorem substitutionProof12020 : IsMapEvaluation generatorImages reduction12020.relations [13,13,13,474] reduction12020.output := by lin_cert using reduction12020.terms
def image12021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12021 : InImage map_25_213 image12021 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12021 : Bundle := named_bundle% "RealMapCertificates/relations/basis12021.json"
theorem reductionProof12021 : EqualModuloRelations reduction12021.relations reduction12021.input reduction12021.output := by lin_cert using reduction12021.terms
theorem substitutionProof12021 : IsMapEvaluation generatorImages reduction12021.relations [1,1386] reduction12021.output := by lin_cert using reduction12021.terms
def image12022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12022 : InImage map_25_213 image12022 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12022 : Bundle := named_bundle% "RealMapCertificates/relations/basis12022.json"
theorem reductionProof12022 : EqualModuloRelations reduction12022.relations reduction12022.input reduction12022.output := by lin_cert using reduction12022.terms
theorem substitutionProof12022 : IsMapEvaluation generatorImages reduction12022.relations [0,16,50,324] reduction12022.output := by lin_cert using reduction12022.terms
def image12023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12023 : InImage map_25_213 image12023 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12023 : Bundle := named_bundle% "RealMapCertificates/relations/basis12023.json"
theorem reductionProof12023 : EqualModuloRelations reduction12023.relations reduction12023.input reduction12023.output := by lin_cert using reduction12023.terms
theorem substitutionProof12023 : IsMapEvaluation generatorImages reduction12023.relations [0,0,0,0,188,209] reduction12023.output := by lin_cert using reduction12023.terms
def image12024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12024 : InImage map_25_213 image12024 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12024 : Bundle := named_bundle% "RealMapCertificates/relations/basis12024.json"
theorem reductionProof12024 : EqualModuloRelations reduction12024.relations reduction12024.input reduction12024.output := by lin_cert using reduction12024.terms
theorem substitutionProof12024 : IsMapEvaluation generatorImages reduction12024.relations [0,0,0,0,0,1338] reduction12024.output := by lin_cert using reduction12024.terms
def map_25_214 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12178 : InImage map_25_214 image12178 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12178 : Bundle := named_bundle% "RealMapCertificates/relations/basis12178.json"
theorem reductionProof12178 : EqualModuloRelations reduction12178.relations reduction12178.input reduction12178.output := by lin_cert using reduction12178.terms
theorem substitutionProof12178 : IsMapEvaluation generatorImages reduction12178.relations [9,13,75,188] reduction12178.output := by lin_cert using reduction12178.terms
def image12179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12179 : InImage map_25_214 image12179 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12179 : Bundle := named_bundle% "RealMapCertificates/relations/basis12179.json"
theorem reductionProof12179 : EqualModuloRelations reduction12179.relations reduction12179.input reduction12179.output := by lin_cert using reduction12179.terms
theorem substitutionProof12179 : IsMapEvaluation generatorImages reduction12179.relations [0,0,17,50,324] reduction12179.output := by lin_cert using reduction12179.terms
def map_25_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12377 : InImage map_25_215 image12377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12377 : Bundle := named_bundle% "RealMapCertificates/relations/basis12377.json"
theorem reductionProof12377 : EqualModuloRelations reduction12377.relations reduction12377.input reduction12377.output := by lin_cert using reduction12377.terms
theorem substitutionProof12377 : IsMapEvaluation generatorImages reduction12377.relations [8,77,324] reduction12377.output := by lin_cert using reduction12377.terms
def image12378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12378 : InImage map_25_215 image12378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12378 : Bundle := named_bundle% "RealMapCertificates/relations/basis12378.json"
theorem reductionProof12378 : EqualModuloRelations reduction12378.relations reduction12378.input reduction12378.output := by lin_cert using reduction12378.terms
theorem substitutionProof12378 : IsMapEvaluation generatorImages reduction12378.relations [1,1430] reduction12378.output := by lin_cert using reduction12378.terms
def image12379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12379 : InImage map_25_215 image12379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12379 : Bundle := named_bundle% "RealMapCertificates/relations/basis12379.json"
theorem reductionProof12379 : EqualModuloRelations reduction12379.relations reduction12379.input reduction12379.output := by lin_cert using reduction12379.terms
theorem substitutionProof12379 : IsMapEvaluation generatorImages reduction12379.relations [0,1443] reduction12379.output := by lin_cert using reduction12379.terms
def image12380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12380 : InImage map_25_215 image12380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12380 : Bundle := named_bundle% "RealMapCertificates/relations/basis12380.json"
theorem reductionProof12380 : EqualModuloRelations reduction12380.relations reduction12380.input reduction12380.output := by lin_cert using reduction12380.terms
theorem substitutionProof12380 : IsMapEvaluation generatorImages reduction12380.relations [0,0,0,0,0,0,1351] reduction12380.output := by lin_cert using reduction12380.terms
def map_25_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12582 : InImage map_25_216 image12582 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12582 : Bundle := named_bundle% "RealMapCertificates/relations/basis12582.json"
theorem reductionProof12582 : EqualModuloRelations reduction12582.relations reduction12582.input reduction12582.output := by lin_cert using reduction12582.terms
theorem substitutionProof12582 : IsMapEvaluation generatorImages reduction12582.relations [209,215] reduction12582.output := by lin_cert using reduction12582.terms
def image12583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12583 : InImage map_25_216 image12583 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12583 : Bundle := named_bundle% "RealMapCertificates/relations/basis12583.json"
theorem reductionProof12583 : EqualModuloRelations reduction12583.relations reduction12583.input reduction12583.output := by lin_cert using reduction12583.terms
theorem substitutionProof12583 : IsMapEvaluation generatorImages reduction12583.relations [13,1050] reduction12583.output := by lin_cert using reduction12583.terms
def image12584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12584 : InImage map_25_216 image12584 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12584 : Bundle := named_bundle% "RealMapCertificates/relations/basis12584.json"
theorem reductionProof12584 : EqualModuloRelations reduction12584.relations reduction12584.input reduction12584.output := by lin_cert using reduction12584.terms
theorem substitutionProof12584 : IsMapEvaluation generatorImages reduction12584.relations [8,1148] reduction12584.output := by lin_cert using reduction12584.terms
def image12585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12585 : InImage map_25_216 image12585 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12585 : Bundle := named_bundle% "RealMapCertificates/relations/basis12585.json"
theorem reductionProof12585 : EqualModuloRelations reduction12585.relations reduction12585.input reduction12585.output := by lin_cert using reduction12585.terms
theorem substitutionProof12585 : IsMapEvaluation generatorImages reduction12585.relations [1,1443] reduction12585.output := by lin_cert using reduction12585.terms
def image12586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12586 : InImage map_25_216 image12586 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12586 : Bundle := named_bundle% "RealMapCertificates/relations/basis12586.json"
theorem reductionProof12586 : EqualModuloRelations reduction12586.relations reduction12586.input reduction12586.output := by lin_cert using reduction12586.terms
theorem substitutionProof12586 : IsMapEvaluation generatorImages reduction12586.relations [0,8,78,324] reduction12586.output := by lin_cert using reduction12586.terms
def map_25_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12742 : InImage map_25_217 image12742 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12742 : Bundle := named_bundle% "RealMapCertificates/relations/basis12742.json"
theorem reductionProof12742 : EqualModuloRelations reduction12742.relations reduction12742.input reduction12742.output := by lin_cert using reduction12742.terms
theorem substitutionProof12742 : IsMapEvaluation generatorImages reduction12742.relations [13,13,75,188] reduction12742.output := by lin_cert using reduction12742.terms
def image12743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12743 : InImage map_25_217 image12743 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12743 : Bundle := named_bundle% "RealMapCertificates/relations/basis12743.json"
theorem reductionProof12743 : EqualModuloRelations reduction12743.relations reduction12743.input reduction12743.output := by lin_cert using reduction12743.terms
theorem substitutionProof12743 : IsMapEvaluation generatorImages reduction12743.relations [2,1430] reduction12743.output := by lin_cert using reduction12743.terms
def image12744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12744 : InImage map_25_217 image12744 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12744 : Bundle := named_bundle% "RealMapCertificates/relations/basis12744.json"
theorem reductionProof12744 : EqualModuloRelations reduction12744.relations reduction12744.input reduction12744.output := by lin_cert using reduction12744.terms
theorem substitutionProof12744 : IsMapEvaluation generatorImages reduction12744.relations [0,1487] reduction12744.output := by lin_cert using reduction12744.terms
def map_25_218 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12937 : InImage map_25_218 image12937 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12937 : Bundle := named_bundle% "RealMapCertificates/relations/basis12937.json"
theorem reductionProof12937 : EqualModuloRelations reduction12937.relations reduction12937.input reduction12937.output := by lin_cert using reduction12937.terms
theorem substitutionProof12937 : IsMapEvaluation generatorImages reduction12937.relations [9,1124] reduction12937.output := by lin_cert using reduction12937.terms
def image12938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12938 : InImage map_25_218 image12938 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12938 : Bundle := named_bundle% "RealMapCertificates/relations/basis12938.json"
theorem reductionProof12938 : EqualModuloRelations reduction12938.relations reduction12938.input reduction12938.output := by lin_cert using reduction12938.terms
theorem substitutionProof12938 : IsMapEvaluation generatorImages reduction12938.relations [8,8,49,324] reduction12938.output := by lin_cert using reduction12938.terms
def image12939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12939 : InImage map_25_218 image12939 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12939 : Bundle := named_bundle% "RealMapCertificates/relations/basis12939.json"
theorem reductionProof12939 : EqualModuloRelations reduction12939.relations reduction12939.input reduction12939.output := by lin_cert using reduction12939.terms
theorem substitutionProof12939 : IsMapEvaluation generatorImages reduction12939.relations [0,0,1489] reduction12939.output := by lin_cert using reduction12939.terms
def map_25_219 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13166 : InImage map_25_219 image13166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13166 : Bundle := named_bundle% "RealMapCertificates/relations/basis13166.json"
theorem reductionProof13166 : EqualModuloRelations reduction13166.relations reduction13166.input reduction13166.output := by lin_cert using reduction13166.terms
theorem substitutionProof13166 : IsMapEvaluation generatorImages reduction13166.relations [13,13,13,532] reduction13166.output := by lin_cert using reduction13166.terms
def image13167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13167 : InImage map_25_219 image13167 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13167 : Bundle := named_bundle% "RealMapCertificates/relations/basis13167.json"
theorem reductionProof13167 : EqualModuloRelations reduction13167.relations reduction13167.input reduction13167.output := by lin_cert using reduction13167.terms
theorem substitutionProof13167 : IsMapEvaluation generatorImages reduction13167.relations [9,1148] reduction13167.output := by lin_cert using reduction13167.terms
def image13168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13168 : InImage map_25_219 image13168 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13168 : Bundle := named_bundle% "RealMapCertificates/relations/basis13168.json"
theorem reductionProof13168 : EqualModuloRelations reduction13168.relations reduction13168.input reduction13168.output := by lin_cert using reduction13168.terms
theorem substitutionProof13168 : IsMapEvaluation generatorImages reduction13168.relations [3,1386] reduction13168.output := by lin_cert using reduction13168.terms
def image13169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13169 : InImage map_25_219 image13169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13169 : Bundle := named_bundle% "RealMapCertificates/relations/basis13169.json"
theorem reductionProof13169 : EqualModuloRelations reduction13169.relations reduction13169.input reduction13169.output := by lin_cert using reduction13169.terms
theorem substitutionProof13169 : IsMapEvaluation generatorImages reduction13169.relations [0,187,250] reduction13169.output := by lin_cert using reduction13169.terms
def image13170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13170 : InImage map_25_219 image13170 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13170 : Bundle := named_bundle% "RealMapCertificates/relations/basis13170.json"
theorem reductionProof13170 : EqualModuloRelations reduction13170.relations reduction13170.input reduction13170.output := by lin_cert using reduction13170.terms
theorem substitutionProof13170 : IsMapEvaluation generatorImages reduction13170.relations [0,8,8,50,324] reduction13170.output := by lin_cert using reduction13170.terms
def image13171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13171 : InImage map_25_219 image13171 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13171 : Bundle := named_bundle% "RealMapCertificates/relations/basis13171.json"
theorem reductionProof13171 : EqualModuloRelations reduction13171.relations reduction13171.input reduction13171.output := by lin_cert using reduction13171.terms
theorem substitutionProof13171 : IsMapEvaluation generatorImages reduction13171.relations [0,0,0,0,0,209,209] reduction13171.output := by lin_cert using reduction13171.terms
def map_25_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13302 : InImage map_25_220 image13302 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13302 : Bundle := named_bundle% "RealMapCertificates/relations/basis13302.json"
theorem reductionProof13302 : EqualModuloRelations reduction13302.relations reduction13302.input reduction13302.output := by lin_cert using reduction13302.terms
theorem substitutionProof13302 : IsMapEvaluation generatorImages reduction13302.relations [1556] reduction13302.output := by lin_cert using reduction13302.terms
def image13303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13303 : InImage map_25_220 image13303 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13303 : Bundle := named_bundle% "RealMapCertificates/relations/basis13303.json"
theorem reductionProof13303 : EqualModuloRelations reduction13303.relations reduction13303.input reduction13303.output := by lin_cert using reduction13303.terms
theorem substitutionProof13303 : IsMapEvaluation generatorImages reduction13303.relations [1555] reduction13303.output := by lin_cert using reduction13303.terms
def image13304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13304 : InImage map_25_220 image13304 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13304 : Bundle := named_bundle% "RealMapCertificates/relations/basis13304.json"
theorem reductionProof13304 : EqualModuloRelations reduction13304.relations reduction13304.input reduction13304.output := by lin_cert using reduction13304.terms
theorem substitutionProof13304 : IsMapEvaluation generatorImages reduction13304.relations [0,0,1519] reduction13304.output := by lin_cert using reduction13304.terms
def image13305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13305 : InImage map_25_220 image13305 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13305 : Bundle := named_bundle% "RealMapCertificates/relations/basis13305.json"
theorem reductionProof13305 : EqualModuloRelations reduction13305.relations reduction13305.input reduction13305.output := by lin_cert using reduction13305.terms
theorem substitutionProof13305 : IsMapEvaluation generatorImages reduction13305.relations [0,0,0,0,0,0,1445] reduction13305.output := by lin_cert using reduction13305.terms
def map_25_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13506 : InImage map_25_221 image13506 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13506 : Bundle := named_bundle% "RealMapCertificates/relations/basis13506.json"
theorem reductionProof13506 : EqualModuloRelations reduction13506.relations reduction13506.input reduction13506.output := by lin_cert using reduction13506.terms
theorem substitutionProof13506 : IsMapEvaluation generatorImages reduction13506.relations [13,1124] reduction13506.output := by lin_cert using reduction13506.terms
def image13507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13507 : InImage map_25_221 image13507 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13507 : Bundle := named_bundle% "RealMapCertificates/relations/basis13507.json"
theorem reductionProof13507 : EqualModuloRelations reduction13507.relations reduction13507.input reduction13507.output := by lin_cert using reduction13507.terms
theorem substitutionProof13507 : IsMapEvaluation generatorImages reduction13507.relations [8,8,55,324] reduction13507.output := by lin_cert using reduction13507.terms
def image13508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13508 : InImage map_25_221 image13508 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13508 : Bundle := named_bundle% "RealMapCertificates/relations/basis13508.json"
theorem reductionProof13508 : EqualModuloRelations reduction13508.relations reduction13508.input reduction13508.output := by lin_cert using reduction13508.terms
theorem substitutionProof13508 : IsMapEvaluation generatorImages reduction13508.relations [3,1430] reduction13508.output := by lin_cert using reduction13508.terms
def image13509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13509 : InImage map_25_221 image13509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13509 : Bundle := named_bundle% "RealMapCertificates/relations/basis13509.json"
theorem reductionProof13509 : EqualModuloRelations reduction13509.relations reduction13509.input reduction13509.output := by lin_cert using reduction13509.terms
theorem substitutionProof13509 : IsMapEvaluation generatorImages reduction13509.relations [0,0,0,0,0,0,137,324] reduction13509.output := by lin_cert using reduction13509.terms
def map_25_222 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13735 : InImage map_25_222 image13735 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13735 : Bundle := named_bundle% "RealMapCertificates/relations/basis13735.json"
theorem reductionProof13735 : EqualModuloRelations reduction13735.relations reduction13735.input reduction13735.output := by lin_cert using reduction13735.terms
theorem substitutionProof13735 : IsMapEvaluation generatorImages reduction13735.relations [24,959] reduction13735.output := by lin_cert using reduction13735.terms
def image13736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13736 : InImage map_25_222 image13736 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13736 : Bundle := named_bundle% "RealMapCertificates/relations/basis13736.json"
theorem reductionProof13736 : EqualModuloRelations reduction13736.relations reduction13736.input reduction13736.output := by lin_cert using reduction13736.terms
theorem substitutionProof13736 : IsMapEvaluation generatorImages reduction13736.relations [13,1148] reduction13736.output := by lin_cert using reduction13736.terms
def image13737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13737 : InImage map_25_222 image13737 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13737 : Bundle := named_bundle% "RealMapCertificates/relations/basis13737.json"
theorem reductionProof13737 : EqualModuloRelations reduction13737.relations reduction13737.input reduction13737.output := by lin_cert using reduction13737.terms
theorem substitutionProof13737 : IsMapEvaluation generatorImages reduction13737.relations [3,1443] reduction13737.output := by lin_cert using reduction13737.terms
def image13738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13738 : InImage map_25_222 image13738 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13738 : Bundle := named_bundle% "RealMapCertificates/relations/basis13738.json"
theorem reductionProof13738 : EqualModuloRelations reduction13738.relations reduction13738.input reduction13738.output := by lin_cert using reduction13738.terms
theorem substitutionProof13738 : IsMapEvaluation generatorImages reduction13738.relations [1,1,1519] reduction13738.output := by lin_cert using reduction13738.terms
def image13739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13739 : InImage map_25_222 image13739 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13739 : Bundle := named_bundle% "RealMapCertificates/relations/basis13739.json"
theorem reductionProof13739 : EqualModuloRelations reduction13739.relations reduction13739.input reduction13739.output := by lin_cert using reduction13739.terms
theorem substitutionProof13739 : IsMapEvaluation generatorImages reduction13739.relations [0,1573] reduction13739.output := by lin_cert using reduction13739.terms
def image13740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13740 : InImage map_25_222 image13740 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13740 : Bundle := named_bundle% "RealMapCertificates/relations/basis13740.json"
theorem reductionProof13740 : EqualModuloRelations reduction13740.relations reduction13740.input reduction13740.output := by lin_cert using reduction13740.terms
theorem substitutionProof13740 : IsMapEvaluation generatorImages reduction13740.relations [0,0,0,0,0,0,0,138,324] reduction13740.output := by lin_cert using reduction13740.terms
def map_25_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13883 : InImage map_25_223 image13883 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13883 : Bundle := named_bundle% "RealMapCertificates/relations/basis13883.json"
theorem reductionProof13883 : EqualModuloRelations reduction13883.relations reduction13883.input reduction13883.output := by lin_cert using reduction13883.terms
theorem substitutionProof13883 : IsMapEvaluation generatorImages reduction13883.relations [13,13,76,212] reduction13883.output := by lin_cert using reduction13883.terms
def image13884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13884 : InImage map_25_223 image13884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13884 : Bundle := named_bundle% "RealMapCertificates/relations/basis13884.json"
theorem reductionProof13884 : EqualModuloRelations reduction13884.relations reduction13884.input reduction13884.output := by lin_cert using reduction13884.terms
theorem substitutionProof13884 : IsMapEvaluation generatorImages reduction13884.relations [0,3,1444] reduction13884.output := by lin_cert using reduction13884.terms
def map_25_224 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14069 : InImage map_25_224 image14069 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14069 : Bundle := named_bundle% "RealMapCertificates/relations/basis14069.json"
theorem reductionProof14069 : EqualModuloRelations reduction14069.relations reduction14069.input reduction14069.output := by lin_cert using reduction14069.terms
theorem substitutionProof14069 : IsMapEvaluation generatorImages reduction14069.relations [187,280] reduction14069.output := by lin_cert using reduction14069.terms
def image14070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14070 : InImage map_25_224 image14070 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14070 : Bundle := named_bundle% "RealMapCertificates/relations/basis14070.json"
theorem reductionProof14070 : EqualModuloRelations reduction14070.relations reduction14070.input reduction14070.output := by lin_cert using reduction14070.terms
theorem substitutionProof14070 : IsMapEvaluation generatorImages reduction14070.relations [3,1487] reduction14070.output := by lin_cert using reduction14070.terms
def image14071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14071 : InImage map_25_224 image14071 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14071 : Bundle := named_bundle% "RealMapCertificates/relations/basis14071.json"
theorem reductionProof14071 : EqualModuloRelations reduction14071.relations reduction14071.input reduction14071.output := by lin_cert using reduction14071.terms
theorem substitutionProof14071 : IsMapEvaluation generatorImages reduction14071.relations [0,0,67,629] reduction14071.output := by lin_cert using reduction14071.terms
def map_25_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14296 : InImage map_25_225 image14296 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14296 : Bundle := named_bundle% "RealMapCertificates/relations/basis14296.json"
theorem reductionProof14296 : EqualModuloRelations reduction14296.relations reduction14296.input reduction14296.output := by lin_cert using reduction14296.terms
theorem substitutionProof14296 : IsMapEvaluation generatorImages reduction14296.relations [1641] reduction14296.output := by lin_cert using reduction14296.terms
def image14297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14297 : InImage map_25_225 image14297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14297 : Bundle := named_bundle% "RealMapCertificates/relations/basis14297.json"
theorem reductionProof14297 : EqualModuloRelations reduction14297.relations reduction14297.input reduction14297.output := by lin_cert using reduction14297.terms
theorem substitutionProof14297 : IsMapEvaluation generatorImages reduction14297.relations [188,286] reduction14297.output := by lin_cert using reduction14297.terms
def image14298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14298 : InImage map_25_225 image14298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14298 : Bundle := named_bundle% "RealMapCertificates/relations/basis14298.json"
theorem reductionProof14298 : EqualModuloRelations reduction14298.relations reduction14298.input reduction14298.output := by lin_cert using reduction14298.terms
theorem substitutionProof14298 : IsMapEvaluation generatorImages reduction14298.relations [0,3,1489] reduction14298.output := by lin_cert using reduction14298.terms
end RealMapCertificates
