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
  | 39 => [[4,4,8]]
  | 43 => []
  | 64 => []
  | 76 => []
  | 107 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 184 => []
  | 188 => []
  | 189 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 288 => []
  | 293 => []
  | 324 => []
  | 373 => []
  | 417 => []
  | 418 => []
  | 604 => []
  | 681 => []
  | 682 => []
  | 690 => []
  | 787 => []
  | 825 => []
  | 877 => []
  | 1002 => []
  | 1045 => []
  | 1243 => []
  | 1519 => []
  | 1544 => []
  | 1545 => []
  | 1558 => []
  | 1559 => []
  | 1573 => []
  | 1611 => []
  | 1654 => []
  | 1655 => []
  | 1656 => []
  | 1657 => []
  | 1662 => []
  | 1691 => []
  | 1692 => []
  | 1759 => []
  | 1760 => []
  | 1762 => []
  | 1779 => []
  | 1780 => []
  | 1781 => []
  | 1783 => []
  | 1786 => []
  | 1838 => []
  | 1839 => []
  | 1865 => []
  | 1866 => []
  | 1893 => []
  | 1906 => []
  | 1907 => []
  | 1908 => []
  | 1911 => []
  | 1912 => []
  | 1939 => []
  | 1940 => []
  | 1941 => []
  | 1970 => []
  | 1971 => []
  | 2003 => []
  | 2004 => []
  | 2005 => []
  | 2006 => []
  | 2045 => []
  | 2046 => []
  | 2063 => []
  | 2067 => []
  | 2103 => []
  | 2104 => []
  | 2105 => []
  | 2106 => []
  | 2108 => []
  | 2134 => []
  | 2135 => []
  | 2136 => []
  | 2170 => []
  | 2171 => []
  | 2172 => []
  | 2209 => []
  | 2210 => []
  | 2211 => []
  | _ => []
def map_25_226 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14425 : InImage map_25_226 image14425 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14425 : Bundle := named_bundle% "RealMapCertificates/relations/basis14425.json"
theorem reductionProof14425 : EqualModuloRelations reduction14425.relations reduction14425.input reduction14425.output := by lin_cert using reduction14425.terms
theorem substitutionProof14425 : IsMapEvaluation generatorImages reduction14425.relations [1655] reduction14425.output := by lin_cert using reduction14425.terms
def image14426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14426 : InImage map_25_226 image14426 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14426 : Bundle := named_bundle% "RealMapCertificates/relations/basis14426.json"
theorem reductionProof14426 : EqualModuloRelations reduction14426.relations reduction14426.input reduction14426.output := by lin_cert using reduction14426.terms
theorem substitutionProof14426 : IsMapEvaluation generatorImages reduction14426.relations [1654] reduction14426.output := by lin_cert using reduction14426.terms
def image14427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14427 : InImage map_25_226 image14427 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14427 : Bundle := named_bundle% "RealMapCertificates/relations/basis14427.json"
theorem reductionProof14427 : EqualModuloRelations reduction14427.relations reduction14427.input reduction14427.output := by lin_cert using reduction14427.terms
theorem substitutionProof14427 : IsMapEvaluation generatorImages reduction14427.relations [9,13,13,13,373] reduction14427.output := by lin_cert using reduction14427.terms
def map_25_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14637 : InImage map_25_227 image14637 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14637 : Bundle := named_bundle% "RealMapCertificates/relations/basis14637.json"
theorem reductionProof14637 : EqualModuloRelations reduction14637.relations reduction14637.input reduction14637.output := by lin_cert using reduction14637.terms
theorem substitutionProof14637 : IsMapEvaluation generatorImages reduction14637.relations [43,877] reduction14637.output := by lin_cert using reduction14637.terms
def image14638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14638 : InImage map_25_227 image14638 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14638 : Bundle := named_bundle% "RealMapCertificates/relations/basis14638.json"
theorem reductionProof14638 : EqualModuloRelations reduction14638.relations reduction14638.input reduction14638.output := by lin_cert using reduction14638.terms
theorem substitutionProof14638 : IsMapEvaluation generatorImages reduction14638.relations [13,1243] reduction14638.output := by lin_cert using reduction14638.terms
def image14639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14639 : InImage map_25_227 image14639 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14639 : Bundle := named_bundle% "RealMapCertificates/relations/basis14639.json"
theorem reductionProof14639 : EqualModuloRelations reduction14639.relations reduction14639.input reduction14639.output := by lin_cert using reduction14639.terms
theorem substitutionProof14639 : IsMapEvaluation generatorImages reduction14639.relations [8,188,209] reduction14639.output := by lin_cert using reduction14639.terms
def image14640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14640 : InImage map_25_227 image14640 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14640 : Bundle := named_bundle% "RealMapCertificates/relations/basis14640.json"
theorem reductionProof14640 : EqualModuloRelations reduction14640.relations reduction14640.input reduction14640.output := by lin_cert using reduction14640.terms
theorem substitutionProof14640 : IsMapEvaluation generatorImages reduction14640.relations [8,8,8,39,324] reduction14640.output := by lin_cert using reduction14640.terms
def image14641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14641 : InImage map_25_227 image14641 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14641 : Bundle := named_bundle% "RealMapCertificates/relations/basis14641.json"
theorem reductionProof14641 : EqualModuloRelations reduction14641.relations reduction14641.input reduction14641.output := by lin_cert using reduction14641.terms
theorem substitutionProof14641 : IsMapEvaluation generatorImages reduction14641.relations [0,1656] reduction14641.output := by lin_cert using reduction14641.terms
def image14642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14642 : InImage map_25_227 image14642 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14642 : Bundle := named_bundle% "RealMapCertificates/relations/basis14642.json"
theorem reductionProof14642 : EqualModuloRelations reduction14642.relations reduction14642.input reduction14642.output := by lin_cert using reduction14642.terms
theorem substitutionProof14642 : IsMapEvaluation generatorImages reduction14642.relations [0,3,1519] reduction14642.output := by lin_cert using reduction14642.terms
def map_25_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14872 : InImage map_25_228 image14872 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14872 : Bundle := named_bundle% "RealMapCertificates/relations/basis14872.json"
theorem reductionProof14872 : EqualModuloRelations reduction14872.relations reduction14872.input reduction14872.output := by lin_cert using reduction14872.terms
theorem substitutionProof14872 : IsMapEvaluation generatorImages reduction14872.relations [1691] reduction14872.output := by lin_cert using reduction14872.terms
def image14873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14873 : InImage map_25_228 image14873 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14873 : Bundle := named_bundle% "RealMapCertificates/relations/basis14873.json"
theorem reductionProof14873 : EqualModuloRelations reduction14873.relations reduction14873.input reduction14873.output := by lin_cert using reduction14873.terms
theorem substitutionProof14873 : IsMapEvaluation generatorImages reduction14873.relations [13,188,189] reduction14873.output := by lin_cert using reduction14873.terms
def image14874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14874 : InImage map_25_228 image14874 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14874 : Bundle := named_bundle% "RealMapCertificates/relations/basis14874.json"
theorem reductionProof14874 : EqualModuloRelations reduction14874.relations reduction14874.input reduction14874.output := by lin_cert using reduction14874.terms
theorem substitutionProof14874 : IsMapEvaluation generatorImages reduction14874.relations [1,1656] reduction14874.output := by lin_cert using reduction14874.terms
def image14875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14875 : InImage map_25_228 image14875 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14875 : Bundle := named_bundle% "RealMapCertificates/relations/basis14875.json"
theorem reductionProof14875 : EqualModuloRelations reduction14875.relations reduction14875.input reduction14875.output := by lin_cert using reduction14875.terms
theorem substitutionProof14875 : IsMapEvaluation generatorImages reduction14875.relations [0,0,1657] reduction14875.output := by lin_cert using reduction14875.terms
def map_25_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15028 : InImage map_25_229 image15028 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15028 : Bundle := named_bundle% "RealMapCertificates/relations/basis15028.json"
theorem reductionProof15028 : EqualModuloRelations reduction15028.relations reduction15028.input reduction15028.output := by lin_cert using reduction15028.terms
theorem substitutionProof15028 : IsMapEvaluation generatorImages reduction15028.relations [13,13,13,13,373] reduction15028.output := by lin_cert using reduction15028.terms
def image15029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15029 : InImage map_25_229 image15029 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15029 : Bundle := named_bundle% "RealMapCertificates/relations/basis15029.json"
theorem reductionProof15029 : EqualModuloRelations reduction15029.relations reduction15029.input reduction15029.output := by lin_cert using reduction15029.terms
theorem substitutionProof15029 : IsMapEvaluation generatorImages reduction15029.relations [3,1573] reduction15029.output := by lin_cert using reduction15029.terms
def image15030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15030 : InImage map_25_229 image15030 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15030 : Bundle := named_bundle% "RealMapCertificates/relations/basis15030.json"
theorem reductionProof15030 : EqualModuloRelations reduction15030.relations reduction15030.input reduction15030.output := by lin_cert using reduction15030.terms
theorem substitutionProof15030 : IsMapEvaluation generatorImages reduction15030.relations [0,1692] reduction15030.output := by lin_cert using reduction15030.terms
def map_25_230 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15243 : InImage map_25_230 image15243 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15243 : Bundle := named_bundle% "RealMapCertificates/relations/basis15243.json"
theorem reductionProof15243 : EqualModuloRelations reduction15243.relations reduction15243.input reduction15243.output := by lin_cert using reduction15243.terms
theorem substitutionProof15243 : IsMapEvaluation generatorImages reduction15243.relations [9,188,209] reduction15243.output := by lin_cert using reduction15243.terms
def image15244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15244 : InImage map_25_230 image15244 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15244 : Bundle := named_bundle% "RealMapCertificates/relations/basis15244.json"
theorem reductionProof15244 : EqualModuloRelations reduction15244.relations reduction15244.input reduction15244.output := by lin_cert using reduction15244.terms
theorem substitutionProof15244 : IsMapEvaluation generatorImages reduction15244.relations [2,1656] reduction15244.output := by lin_cert using reduction15244.terms
def image15245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15245 : InImage map_25_230 image15245 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15245 : Bundle := named_bundle% "RealMapCertificates/relations/basis15245.json"
theorem reductionProof15245 : EqualModuloRelations reduction15245.relations reduction15245.input reduction15245.output := by lin_cert using reduction15245.terms
theorem substitutionProof15245 : IsMapEvaluation generatorImages reduction15245.relations [1,1692] reduction15245.output := by lin_cert using reduction15245.terms
def image15246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15246 : InImage map_25_230 image15246 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15246 : Bundle := named_bundle% "RealMapCertificates/relations/basis15246.json"
theorem reductionProof15246 : EqualModuloRelations reduction15246.relations reduction15246.input reduction15246.output := by lin_cert using reduction15246.terms
theorem substitutionProof15246 : IsMapEvaluation generatorImages reduction15246.relations [1,1,1657] reduction15246.output := by lin_cert using reduction15246.terms
def map_25_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15489 : InImage map_25_231 image15489 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15489 : Bundle := named_bundle% "RealMapCertificates/relations/basis15489.json"
theorem reductionProof15489 : EqualModuloRelations reduction15489.relations reduction15489.input reduction15489.output := by lin_cert using reduction15489.terms
theorem substitutionProof15489 : IsMapEvaluation generatorImages reduction15489.relations [1759] reduction15489.output := by lin_cert using reduction15489.terms
def image15490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15490 : InImage map_25_231 image15490 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15490 : Bundle := named_bundle% "RealMapCertificates/relations/basis15490.json"
theorem reductionProof15490 : EqualModuloRelations reduction15490.relations reduction15490.input reduction15490.output := by lin_cert using reduction15490.terms
theorem substitutionProof15490 : IsMapEvaluation generatorImages reduction15490.relations [76,690] reduction15490.output := by lin_cert using reduction15490.terms
def image15491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15491 : InImage map_25_231 image15491 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15491 : Bundle := named_bundle% "RealMapCertificates/relations/basis15491.json"
theorem reductionProof15491 : EqualModuloRelations reduction15491.relations reduction15491.input reduction15491.output := by lin_cert using reduction15491.terms
theorem substitutionProof15491 : IsMapEvaluation generatorImages reduction15491.relations [1,5,137,324] reduction15491.output := by lin_cert using reduction15491.terms
def map_25_232 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15659 : InImage map_25_232 image15659 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15659 : Bundle := named_bundle% "RealMapCertificates/relations/basis15659.json"
theorem reductionProof15659 : EqualModuloRelations reduction15659.relations reduction15659.input reduction15659.output := by lin_cert using reduction15659.terms
theorem substitutionProof15659 : IsMapEvaluation generatorImages reduction15659.relations [1781] reduction15659.output := by lin_cert using reduction15659.terms
def image15660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15660 : InImage map_25_232 image15660 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15660 : Bundle := named_bundle% "RealMapCertificates/relations/basis15660.json"
theorem reductionProof15660 : EqualModuloRelations reduction15660.relations reduction15660.input reduction15660.output := by lin_cert using reduction15660.terms
theorem substitutionProof15660 : IsMapEvaluation generatorImages reduction15660.relations [1780] reduction15660.output := by lin_cert using reduction15660.terms
def image15661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15661 : InImage map_25_232 image15661 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15661 : Bundle := named_bundle% "RealMapCertificates/relations/basis15661.json"
theorem reductionProof15661 : EqualModuloRelations reduction15661.relations reduction15661.input reduction15661.output := by lin_cert using reduction15661.terms
theorem substitutionProof15661 : IsMapEvaluation generatorImages reduction15661.relations [1779] reduction15661.output := by lin_cert using reduction15661.terms
def image15662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15662 : InImage map_25_232 image15662 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15662 : Bundle := named_bundle% "RealMapCertificates/relations/basis15662.json"
theorem reductionProof15662 : EqualModuloRelations reduction15662.relations reduction15662.input reduction15662.output := by lin_cert using reduction15662.terms
theorem substitutionProof15662 : IsMapEvaluation generatorImages reduction15662.relations [209,293] reduction15662.output := by lin_cert using reduction15662.terms
def image15663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15663 : InImage map_25_232 image15663 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15663 : Bundle := named_bundle% "RealMapCertificates/relations/basis15663.json"
theorem reductionProof15663 : EqualModuloRelations reduction15663.relations reduction15663.input reduction15663.output := by lin_cert using reduction15663.terms
theorem substitutionProof15663 : IsMapEvaluation generatorImages reduction15663.relations [0,107,604] reduction15663.output := by lin_cert using reduction15663.terms
def image15664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15664 : InImage map_25_232 image15664 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15664 : Bundle := named_bundle% "RealMapCertificates/relations/basis15664.json"
theorem reductionProof15664 : EqualModuloRelations reduction15664.relations reduction15664.input reduction15664.output := by lin_cert using reduction15664.terms
theorem substitutionProof15664 : IsMapEvaluation generatorImages reduction15664.relations [0,0,184,324] reduction15664.output := by lin_cert using reduction15664.terms
def map_25_233 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15896 : InImage map_25_233 image15896 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15896 : Bundle := named_bundle% "RealMapCertificates/relations/basis15896.json"
theorem reductionProof15896 : EqualModuloRelations reduction15896.relations reduction15896.input reduction15896.output := by lin_cert using reduction15896.terms
theorem substitutionProof15896 : IsMapEvaluation generatorImages reduction15896.relations [13,188,209] reduction15896.output := by lin_cert using reduction15896.terms
def image15897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15897 : InImage map_25_233 image15897 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15897 : Bundle := named_bundle% "RealMapCertificates/relations/basis15897.json"
theorem reductionProof15897 : EqualModuloRelations reduction15897.relations reduction15897.input reduction15897.output := by lin_cert using reduction15897.terms
theorem substitutionProof15897 : IsMapEvaluation generatorImages reduction15897.relations [1,1760] reduction15897.output := by lin_cert using reduction15897.terms
def image15898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15898 : InImage map_25_233 image15898 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15898 : Bundle := named_bundle% "RealMapCertificates/relations/basis15898.json"
theorem reductionProof15898 : EqualModuloRelations reduction15898.relations reduction15898.input reduction15898.output := by lin_cert using reduction15898.terms
theorem substitutionProof15898 : IsMapEvaluation generatorImages reduction15898.relations [0,0,1762] reduction15898.output := by lin_cert using reduction15898.terms
def map_25_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16142 : InImage map_25_234 image16142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16142 : Bundle := named_bundle% "RealMapCertificates/relations/basis16142.json"
theorem reductionProof16142 : EqualModuloRelations reduction16142.relations reduction16142.input reduction16142.output := by lin_cert using reduction16142.terms
theorem substitutionProof16142 : IsMapEvaluation generatorImages reduction16142.relations [1839] reduction16142.output := by lin_cert using reduction16142.terms
def image16143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16143 : InImage map_25_234 image16143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16143 : Bundle := named_bundle% "RealMapCertificates/relations/basis16143.json"
theorem reductionProof16143 : EqualModuloRelations reduction16143.relations reduction16143.input reduction16143.output := by lin_cert using reduction16143.terms
theorem substitutionProof16143 : IsMapEvaluation generatorImages reduction16143.relations [1838] reduction16143.output := by lin_cert using reduction16143.terms
def image16144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16144 : InImage map_25_234 image16144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16144 : Bundle := named_bundle% "RealMapCertificates/relations/basis16144.json"
theorem reductionProof16144 : EqualModuloRelations reduction16144.relations reduction16144.input reduction16144.output := by lin_cert using reduction16144.terms
theorem substitutionProof16144 : IsMapEvaluation generatorImages reduction16144.relations [9,13,1002] reduction16144.output := by lin_cert using reduction16144.terms
def image16145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16145 : InImage map_25_234 image16145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16145 : Bundle := named_bundle% "RealMapCertificates/relations/basis16145.json"
theorem reductionProof16145 : EqualModuloRelations reduction16145.relations reduction16145.input reduction16145.output := by lin_cert using reduction16145.terms
theorem substitutionProof16145 : IsMapEvaluation generatorImages reduction16145.relations [3,1656] reduction16145.output := by lin_cert using reduction16145.terms
def image16146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16146 : InImage map_25_234 image16146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16146 : Bundle := named_bundle% "RealMapCertificates/relations/basis16146.json"
theorem reductionProof16146 : EqualModuloRelations reduction16146.relations reduction16146.input reduction16146.output := by lin_cert using reduction16146.terms
theorem substitutionProof16146 : IsMapEvaluation generatorImages reduction16146.relations [0,0,1783] reduction16146.output := by lin_cert using reduction16146.terms
def map_25_235 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16333 : InImage map_25_235 image16333 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16333 : Bundle := named_bundle% "RealMapCertificates/relations/basis16333.json"
theorem reductionProof16333 : EqualModuloRelations reduction16333.relations reduction16333.input reduction16333.output := by lin_cert using reduction16333.terms
theorem substitutionProof16333 : IsMapEvaluation generatorImages reduction16333.relations [1866] reduction16333.output := by lin_cert using reduction16333.terms
def image16334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16334 : InImage map_25_235 image16334 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16334 : Bundle := named_bundle% "RealMapCertificates/relations/basis16334.json"
theorem reductionProof16334 : EqualModuloRelations reduction16334.relations reduction16334.input reduction16334.output := by lin_cert using reduction16334.terms
theorem substitutionProof16334 : IsMapEvaluation generatorImages reduction16334.relations [1865] reduction16334.output := by lin_cert using reduction16334.terms
def image16335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16335 : InImage map_25_235 image16335 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16335 : Bundle := named_bundle% "RealMapCertificates/relations/basis16335.json"
theorem reductionProof16335 : EqualModuloRelations reduction16335.relations reduction16335.input reduction16335.output := by lin_cert using reduction16335.terms
theorem substitutionProof16335 : IsMapEvaluation generatorImages reduction16335.relations [13,13,13,682] reduction16335.output := by lin_cert using reduction16335.terms
def image16336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16336 : InImage map_25_235 image16336 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16336 : Bundle := named_bundle% "RealMapCertificates/relations/basis16336.json"
theorem reductionProof16336 : EqualModuloRelations reduction16336.relations reduction16336.input reduction16336.output := by lin_cert using reduction16336.terms
theorem substitutionProof16336 : IsMapEvaluation generatorImages reduction16336.relations [13,13,13,681] reduction16336.output := by lin_cert using reduction16336.terms
def image16337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16337 : InImage map_25_235 image16337 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16337 : Bundle := named_bundle% "RealMapCertificates/relations/basis16337.json"
theorem reductionProof16337 : EqualModuloRelations reduction16337.relations reduction16337.input reduction16337.output := by lin_cert using reduction16337.terms
theorem substitutionProof16337 : IsMapEvaluation generatorImages reduction16337.relations [1,1,1762] reduction16337.output := by lin_cert using reduction16337.terms
def image16338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16338 : InImage map_25_235 image16338 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16338 : Bundle := named_bundle% "RealMapCertificates/relations/basis16338.json"
theorem reductionProof16338 : EqualModuloRelations reduction16338.relations reduction16338.input reduction16338.output := by lin_cert using reduction16338.terms
theorem substitutionProof16338 : IsMapEvaluation generatorImages reduction16338.relations [0,3,1657] reduction16338.output := by lin_cert using reduction16338.terms
def image16339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16339 : InImage map_25_235 image16339 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16339 : Bundle := named_bundle% "RealMapCertificates/relations/basis16339.json"
theorem reductionProof16339 : EqualModuloRelations reduction16339.relations reduction16339.input reduction16339.output := by lin_cert using reduction16339.terms
theorem substitutionProof16339 : IsMapEvaluation generatorImages reduction16339.relations [0,0,8,137,324] reduction16339.output := by lin_cert using reduction16339.terms
def map_25_236 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16572 : InImage map_25_236 image16572 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16572 : Bundle := named_bundle% "RealMapCertificates/relations/basis16572.json"
theorem reductionProof16572 : EqualModuloRelations reduction16572.relations reduction16572.input reduction16572.output := by lin_cert using reduction16572.terms
theorem substitutionProof16572 : IsMapEvaluation generatorImages reduction16572.relations [1893] reduction16572.output := by lin_cert using reduction16572.terms
def image16573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16573 : InImage map_25_236 image16573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16573 : Bundle := named_bundle% "RealMapCertificates/relations/basis16573.json"
theorem reductionProof16573 : EqualModuloRelations reduction16573.relations reduction16573.input reduction16573.output := by lin_cert using reduction16573.terms
theorem substitutionProof16573 : IsMapEvaluation generatorImages reduction16573.relations [1,3,1657] reduction16573.output := by lin_cert using reduction16573.terms
def map_25_237 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16818 : InImage map_25_237 image16818 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16818 : Bundle := named_bundle% "RealMapCertificates/relations/basis16818.json"
theorem reductionProof16818 : EqualModuloRelations reduction16818.relations reduction16818.input reduction16818.output := by lin_cert using reduction16818.terms
theorem substitutionProof16818 : IsMapEvaluation generatorImages reduction16818.relations [1907] reduction16818.output := by lin_cert using reduction16818.terms
def image16819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16819 : InImage map_25_237 image16819 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16819 : Bundle := named_bundle% "RealMapCertificates/relations/basis16819.json"
theorem reductionProof16819 : EqualModuloRelations reduction16819.relations reduction16819.input reduction16819.output := by lin_cert using reduction16819.terms
theorem substitutionProof16819 : IsMapEvaluation generatorImages reduction16819.relations [1906] reduction16819.output := by lin_cert using reduction16819.terms
def image16820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16820 : InImage map_25_237 image16820 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16820 : Bundle := named_bundle% "RealMapCertificates/relations/basis16820.json"
theorem reductionProof16820 : EqualModuloRelations reduction16820.relations reduction16820.input reduction16820.output := by lin_cert using reduction16820.terms
theorem substitutionProof16820 : IsMapEvaluation generatorImages reduction16820.relations [13,13,1002] reduction16820.output := by lin_cert using reduction16820.terms
def map_25_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16996 : InImage map_25_238 image16996 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16996 : Bundle := named_bundle% "RealMapCertificates/relations/basis16996.json"
theorem reductionProof16996 : EqualModuloRelations reduction16996.relations reduction16996.input reduction16996.output := by lin_cert using reduction16996.terms
theorem substitutionProof16996 : IsMapEvaluation generatorImages reduction16996.relations [1940] reduction16996.output := by lin_cert using reduction16996.terms
def image16997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16997 : InImage map_25_238 image16997 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16997 : Bundle := named_bundle% "RealMapCertificates/relations/basis16997.json"
theorem reductionProof16997 : EqualModuloRelations reduction16997.relations reduction16997.input reduction16997.output := by lin_cert using reduction16997.terms
theorem substitutionProof16997 : IsMapEvaluation generatorImages reduction16997.relations [1939] reduction16997.output := by lin_cert using reduction16997.terms
def image16998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16998 : InImage map_25_238 image16998 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16998 : Bundle := named_bundle% "RealMapCertificates/relations/basis16998.json"
theorem reductionProof16998 : EqualModuloRelations reduction16998.relations reduction16998.input reduction16998.output := by lin_cert using reduction16998.terms
theorem substitutionProof16998 : IsMapEvaluation generatorImages reduction16998.relations [64,825] reduction16998.output := by lin_cert using reduction16998.terms
def image16999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16999 : InImage map_25_238 image16999 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16999 : Bundle := named_bundle% "RealMapCertificates/relations/basis16999.json"
theorem reductionProof16999 : EqualModuloRelations reduction16999.relations reduction16999.input reduction16999.output := by lin_cert using reduction16999.terms
theorem substitutionProof16999 : IsMapEvaluation generatorImages reduction16999.relations [8,1558] reduction16999.output := by lin_cert using reduction16999.terms
def image17000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17000 : InImage map_25_238 image17000 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17000 : Bundle := named_bundle% "RealMapCertificates/relations/basis17000.json"
theorem reductionProof17000 : EqualModuloRelations reduction17000.relations reduction17000.input reduction17000.output := by lin_cert using reduction17000.terms
theorem substitutionProof17000 : IsMapEvaluation generatorImages reduction17000.relations [0,1908] reduction17000.output := by lin_cert using reduction17000.terms
def image17001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17001 : InImage map_25_238 image17001 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17001 : Bundle := named_bundle% "RealMapCertificates/relations/basis17001.json"
theorem reductionProof17001 : EqualModuloRelations reduction17001.relations reduction17001.input reduction17001.output := by lin_cert using reduction17001.terms
theorem substitutionProof17001 : IsMapEvaluation generatorImages reduction17001.relations [0,0,8,146,324] reduction17001.output := by lin_cert using reduction17001.terms
def map_25_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17261 : InImage map_25_239 image17261 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17261 : Bundle := named_bundle% "RealMapCertificates/relations/basis17261.json"
theorem reductionProof17261 : EqualModuloRelations reduction17261.relations reduction17261.input reduction17261.output := by lin_cert using reduction17261.terms
theorem substitutionProof17261 : IsMapEvaluation generatorImages reduction17261.relations [1971] reduction17261.output := by lin_cert using reduction17261.terms
def image17262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17262 : InImage map_25_239 image17262 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17262 : Bundle := named_bundle% "RealMapCertificates/relations/basis17262.json"
theorem reductionProof17262 : EqualModuloRelations reduction17262.relations reduction17262.input reduction17262.output := by lin_cert using reduction17262.terms
theorem substitutionProof17262 : IsMapEvaluation generatorImages reduction17262.relations [1970] reduction17262.output := by lin_cert using reduction17262.terms
def image17263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17263 : InImage map_25_239 image17263 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17263 : Bundle := named_bundle% "RealMapCertificates/relations/basis17263.json"
theorem reductionProof17263 : EqualModuloRelations reduction17263.relations reduction17263.input reduction17263.output := by lin_cert using reduction17263.terms
theorem substitutionProof17263 : IsMapEvaluation generatorImages reduction17263.relations [13,13,1045] reduction17263.output := by lin_cert using reduction17263.terms
def image17264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17264 : InImage map_25_239 image17264 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17264 : Bundle := named_bundle% "RealMapCertificates/relations/basis17264.json"
theorem reductionProof17264 : EqualModuloRelations reduction17264.relations reduction17264.input reduction17264.output := by lin_cert using reduction17264.terms
theorem substitutionProof17264 : IsMapEvaluation generatorImages reduction17264.relations [0,0,1912] reduction17264.output := by lin_cert using reduction17264.terms
def image17265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17265 : InImage map_25_239 image17265 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17265 : Bundle := named_bundle% "RealMapCertificates/relations/basis17265.json"
theorem reductionProof17265 : EqualModuloRelations reduction17265.relations reduction17265.input reduction17265.output := by lin_cert using reduction17265.terms
theorem substitutionProof17265 : IsMapEvaluation generatorImages reduction17265.relations [0,0,1911] reduction17265.output := by lin_cert using reduction17265.terms
def map_25_240 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17536 : InImage map_25_240 image17536 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17536 : Bundle := named_bundle% "RealMapCertificates/relations/basis17536.json"
theorem reductionProof17536 : EqualModuloRelations reduction17536.relations reduction17536.input reduction17536.output := by lin_cert using reduction17536.terms
theorem substitutionProof17536 : IsMapEvaluation generatorImages reduction17536.relations [2003] reduction17536.output := by lin_cert using reduction17536.terms
def image17537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17537 : InImage map_25_240 image17537 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17537 : Bundle := named_bundle% "RealMapCertificates/relations/basis17537.json"
theorem reductionProof17537 : EqualModuloRelations reduction17537.relations reduction17537.input reduction17537.output := by lin_cert using reduction17537.terms
theorem substitutionProof17537 : IsMapEvaluation generatorImages reduction17537.relations [13,212,213] reduction17537.output := by lin_cert using reduction17537.terms
def image17538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17538 : InImage map_25_240 image17538 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17538 : Bundle := named_bundle% "RealMapCertificates/relations/basis17538.json"
theorem reductionProof17538 : EqualModuloRelations reduction17538.relations reduction17538.input reduction17538.output := by lin_cert using reduction17538.terms
theorem substitutionProof17538 : IsMapEvaluation generatorImages reduction17538.relations [1,1941] reduction17538.output := by lin_cert using reduction17538.terms
def image17539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17539 : InImage map_25_240 image17539 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17539 : Bundle := named_bundle% "RealMapCertificates/relations/basis17539.json"
theorem reductionProof17539 : EqualModuloRelations reduction17539.relations reduction17539.input reduction17539.output := by lin_cert using reduction17539.terms
theorem substitutionProof17539 : IsMapEvaluation generatorImages reduction17539.relations [0,3,1762] reduction17539.output := by lin_cert using reduction17539.terms
def map_25_241 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17775 : InImage map_25_241 image17775 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17775 : Bundle := named_bundle% "RealMapCertificates/relations/basis17775.json"
theorem reductionProof17775 : EqualModuloRelations reduction17775.relations reduction17775.input reduction17775.output := by lin_cert using reduction17775.terms
theorem substitutionProof17775 : IsMapEvaluation generatorImages reduction17775.relations [2046] reduction17775.output := by lin_cert using reduction17775.terms
def image17776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17776 : InImage map_25_241 image17776 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17776 : Bundle := named_bundle% "RealMapCertificates/relations/basis17776.json"
theorem reductionProof17776 : EqualModuloRelations reduction17776.relations reduction17776.input reduction17776.output := by lin_cert using reduction17776.terms
theorem substitutionProof17776 : IsMapEvaluation generatorImages reduction17776.relations [2045] reduction17776.output := by lin_cert using reduction17776.terms
def image17777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17777 : InImage map_25_241 image17777 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17777 : Bundle := named_bundle% "RealMapCertificates/relations/basis17777.json"
theorem reductionProof17777 : EqualModuloRelations reduction17777.relations reduction17777.input reduction17777.output := by lin_cert using reduction17777.terms
theorem substitutionProof17777 : IsMapEvaluation generatorImages reduction17777.relations [9,13,13,787] reduction17777.output := by lin_cert using reduction17777.terms
def image17778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17778 : InImage map_25_241 image17778 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17778 : Bundle := named_bundle% "RealMapCertificates/relations/basis17778.json"
theorem reductionProof17778 : EqualModuloRelations reduction17778.relations reduction17778.input reduction17778.output := by lin_cert using reduction17778.terms
theorem substitutionProof17778 : IsMapEvaluation generatorImages reduction17778.relations [8,1611] reduction17778.output := by lin_cert using reduction17778.terms
def image17779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17779 : InImage map_25_241 image17779 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17779 : Bundle := named_bundle% "RealMapCertificates/relations/basis17779.json"
theorem reductionProof17779 : EqualModuloRelations reduction17779.relations reduction17779.input reduction17779.output := by lin_cert using reduction17779.terms
theorem substitutionProof17779 : IsMapEvaluation generatorImages reduction17779.relations [0,2005] reduction17779.output := by lin_cert using reduction17779.terms
def image17780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17780 : InImage map_25_241 image17780 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17780 : Bundle := named_bundle% "RealMapCertificates/relations/basis17780.json"
theorem reductionProof17780 : EqualModuloRelations reduction17780.relations reduction17780.input reduction17780.output := by lin_cert using reduction17780.terms
theorem substitutionProof17780 : IsMapEvaluation generatorImages reduction17780.relations [0,2004] reduction17780.output := by lin_cert using reduction17780.terms
def image17781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17781 : InImage map_25_241 image17781 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17781 : Bundle := named_bundle% "RealMapCertificates/relations/basis17781.json"
theorem reductionProof17781 : EqualModuloRelations reduction17781.relations reduction17781.input reduction17781.output := by lin_cert using reduction17781.terms
theorem substitutionProof17781 : IsMapEvaluation generatorImages reduction17781.relations [0,0,8,16,64,324] reduction17781.output := by lin_cert using reduction17781.terms
def map_25_242 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18042 : InImage map_25_242 image18042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18042 : Bundle := named_bundle% "RealMapCertificates/relations/basis18042.json"
theorem reductionProof18042 : EqualModuloRelations reduction18042.relations reduction18042.input reduction18042.output := by lin_cert using reduction18042.terms
theorem substitutionProof18042 : IsMapEvaluation generatorImages reduction18042.relations [2063] reduction18042.output := by lin_cert using reduction18042.terms
def image18043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18043 : InImage map_25_242 image18043 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18043 : Bundle := named_bundle% "RealMapCertificates/relations/basis18043.json"
theorem reductionProof18043 : EqualModuloRelations reduction18043.relations reduction18043.input reduction18043.output := by lin_cert using reduction18043.terms
theorem substitutionProof18043 : IsMapEvaluation generatorImages reduction18043.relations [0,0,2006] reduction18043.output := by lin_cert using reduction18043.terms
def image18044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18044 : InImage map_25_242 image18044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18044 : Bundle := named_bundle% "RealMapCertificates/relations/basis18044.json"
theorem reductionProof18044 : EqualModuloRelations reduction18044.relations reduction18044.input reduction18044.output := by lin_cert using reduction18044.terms
theorem substitutionProof18044 : IsMapEvaluation generatorImages reduction18044.relations [0,0,3,1786] reduction18044.output := by lin_cert using reduction18044.terms
def map_25_243 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18313 : InImage map_25_243 image18313 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18313 : Bundle := named_bundle% "RealMapCertificates/relations/basis18313.json"
theorem reductionProof18313 : EqualModuloRelations reduction18313.relations reduction18313.input reduction18313.output := by lin_cert using reduction18313.terms
theorem substitutionProof18313 : IsMapEvaluation generatorImages reduction18313.relations [2103] reduction18313.output := by lin_cert using reduction18313.terms
def image18314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18314 : InImage map_25_243 image18314 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18314 : Bundle := named_bundle% "RealMapCertificates/relations/basis18314.json"
theorem reductionProof18314 : EqualModuloRelations reduction18314.relations reduction18314.input reduction18314.output := by lin_cert using reduction18314.terms
theorem substitutionProof18314 : IsMapEvaluation generatorImages reduction18314.relations [13,1545] reduction18314.output := by lin_cert using reduction18314.terms
def image18315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18315 : InImage map_25_243 image18315 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18315 : Bundle := named_bundle% "RealMapCertificates/relations/basis18315.json"
theorem reductionProof18315 : EqualModuloRelations reduction18315.relations reduction18315.input reduction18315.output := by lin_cert using reduction18315.terms
theorem substitutionProof18315 : IsMapEvaluation generatorImages reduction18315.relations [13,1544] reduction18315.output := by lin_cert using reduction18315.terms
def map_25_244 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18512 : InImage map_25_244 image18512 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18512 : Bundle := named_bundle% "RealMapCertificates/relations/basis18512.json"
theorem reductionProof18512 : EqualModuloRelations reduction18512.relations reduction18512.input reduction18512.output := by lin_cert using reduction18512.terms
theorem substitutionProof18512 : IsMapEvaluation generatorImages reduction18512.relations [2134] reduction18512.output := by lin_cert using reduction18512.terms
def image18513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18513 : InImage map_25_244 image18513 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18513 : Bundle := named_bundle% "RealMapCertificates/relations/basis18513.json"
theorem reductionProof18513 : EqualModuloRelations reduction18513.relations reduction18513.input reduction18513.output := by lin_cert using reduction18513.terms
theorem substitutionProof18513 : IsMapEvaluation generatorImages reduction18513.relations [212,417] reduction18513.output := by lin_cert using reduction18513.terms
def image18514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18514 : InImage map_25_244 image18514 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18514 : Bundle := named_bundle% "RealMapCertificates/relations/basis18514.json"
theorem reductionProof18514 : EqualModuloRelations reduction18514.relations reduction18514.input reduction18514.output := by lin_cert using reduction18514.terms
theorem substitutionProof18514 : IsMapEvaluation generatorImages reduction18514.relations [13,13,13,787] reduction18514.output := by lin_cert using reduction18514.terms
def image18515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18515 : InImage map_25_244 image18515 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18515 : Bundle := named_bundle% "RealMapCertificates/relations/basis18515.json"
theorem reductionProof18515 : EqualModuloRelations reduction18515.relations reduction18515.input reduction18515.output := by lin_cert using reduction18515.terms
theorem substitutionProof18515 : IsMapEvaluation generatorImages reduction18515.relations [8,1662] reduction18515.output := by lin_cert using reduction18515.terms
def image18516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18516 : InImage map_25_244 image18516 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18516 : Bundle := named_bundle% "RealMapCertificates/relations/basis18516.json"
theorem reductionProof18516 : EqualModuloRelations reduction18516.relations reduction18516.input reduction18516.output := by lin_cert using reduction18516.terms
theorem substitutionProof18516 : IsMapEvaluation generatorImages reduction18516.relations [7,1692] reduction18516.output := by lin_cert using reduction18516.terms
def image18517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18517 : InImage map_25_244 image18517 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18517 : Bundle := named_bundle% "RealMapCertificates/relations/basis18517.json"
theorem reductionProof18517 : EqualModuloRelations reduction18517.relations reduction18517.input reduction18517.output := by lin_cert using reduction18517.terms
theorem substitutionProof18517 : IsMapEvaluation generatorImages reduction18517.relations [0,2106] reduction18517.output := by lin_cert using reduction18517.terms
def image18518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18518 : InImage map_25_244 image18518 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18518 : Bundle := named_bundle% "RealMapCertificates/relations/basis18518.json"
theorem reductionProof18518 : EqualModuloRelations reduction18518.relations reduction18518.input reduction18518.output := by lin_cert using reduction18518.terms
theorem substitutionProof18518 : IsMapEvaluation generatorImages reduction18518.relations [0,2105] reduction18518.output := by lin_cert using reduction18518.terms
def image18519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18519 : InImage map_25_244 image18519 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18519 : Bundle := named_bundle% "RealMapCertificates/relations/basis18519.json"
theorem reductionProof18519 : EqualModuloRelations reduction18519.relations reduction18519.input reduction18519.output := by lin_cert using reduction18519.terms
theorem substitutionProof18519 : IsMapEvaluation generatorImages reduction18519.relations [0,2104] reduction18519.output := by lin_cert using reduction18519.terms
def map_25_245 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image18784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18784 : InImage map_25_245 image18784 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18784 : Bundle := named_bundle% "RealMapCertificates/relations/basis18784.json"
theorem reductionProof18784 : EqualModuloRelations reduction18784.relations reduction18784.input reduction18784.output := by lin_cert using reduction18784.terms
theorem substitutionProof18784 : IsMapEvaluation generatorImages reduction18784.relations [2171] reduction18784.output := by lin_cert using reduction18784.terms
def image18785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18785 : InImage map_25_245 image18785 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18785 : Bundle := named_bundle% "RealMapCertificates/relations/basis18785.json"
theorem reductionProof18785 : EqualModuloRelations reduction18785.relations reduction18785.input reduction18785.output := by lin_cert using reduction18785.terms
theorem substitutionProof18785 : IsMapEvaluation generatorImages reduction18785.relations [2170] reduction18785.output := by lin_cert using reduction18785.terms
def image18786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18786 : InImage map_25_245 image18786 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18786 : Bundle := named_bundle% "RealMapCertificates/relations/basis18786.json"
theorem reductionProof18786 : EqualModuloRelations reduction18786.relations reduction18786.input reduction18786.output := by lin_cert using reduction18786.terms
theorem substitutionProof18786 : IsMapEvaluation generatorImages reduction18786.relations [17,138,324] reduction18786.output := by lin_cert using reduction18786.terms
def image18787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18787 : InImage map_25_245 image18787 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18787 : Bundle := named_bundle% "RealMapCertificates/relations/basis18787.json"
theorem reductionProof18787 : EqualModuloRelations reduction18787.relations reduction18787.input reduction18787.output := by lin_cert using reduction18787.terms
theorem substitutionProof18787 : IsMapEvaluation generatorImages reduction18787.relations [0,2136] reduction18787.output := by lin_cert using reduction18787.terms
def image18788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18788 : InImage map_25_245 image18788 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18788 : Bundle := named_bundle% "RealMapCertificates/relations/basis18788.json"
theorem reductionProof18788 : EqualModuloRelations reduction18788.relations reduction18788.input reduction18788.output := by lin_cert using reduction18788.terms
theorem substitutionProof18788 : IsMapEvaluation generatorImages reduction18788.relations [0,2135] reduction18788.output := by lin_cert using reduction18788.terms
def image18789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18789 : InImage map_25_245 image18789 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18789 : Bundle := named_bundle% "RealMapCertificates/relations/basis18789.json"
theorem reductionProof18789 : EqualModuloRelations reduction18789.relations reduction18789.input reduction18789.output := by lin_cert using reduction18789.terms
theorem substitutionProof18789 : IsMapEvaluation generatorImages reduction18789.relations [0,13,1559] reduction18789.output := by lin_cert using reduction18789.terms
def image18790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18790 : InImage map_25_245 image18790 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18790 : Bundle := named_bundle% "RealMapCertificates/relations/basis18790.json"
theorem reductionProof18790 : EqualModuloRelations reduction18790.relations reduction18790.input reduction18790.output := by lin_cert using reduction18790.terms
theorem substitutionProof18790 : IsMapEvaluation generatorImages reduction18790.relations [0,0,2108] reduction18790.output := by lin_cert using reduction18790.terms
def image18791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18791 : InImage map_25_245 image18791 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18791 : Bundle := named_bundle% "RealMapCertificates/relations/basis18791.json"
theorem reductionProof18791 : EqualModuloRelations reduction18791.relations reduction18791.input reduction18791.output := by lin_cert using reduction18791.terms
theorem substitutionProof18791 : IsMapEvaluation generatorImages reduction18791.relations [0,0,209,418] reduction18791.output := by lin_cert using reduction18791.terms
def map_25_246 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19080 : InImage map_25_246 image19080 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19080 : Bundle := named_bundle% "RealMapCertificates/relations/basis19080.json"
theorem reductionProof19080 : EqualModuloRelations reduction19080.relations reduction19080.input reduction19080.output := by lin_cert using reduction19080.terms
theorem substitutionProof19080 : IsMapEvaluation generatorImages reduction19080.relations [2211] reduction19080.output := by lin_cert using reduction19080.terms
def image19081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19081 : InImage map_25_246 image19081 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19081 : Bundle := named_bundle% "RealMapCertificates/relations/basis19081.json"
theorem reductionProof19081 : EqualModuloRelations reduction19081.relations reduction19081.input reduction19081.output := by lin_cert using reduction19081.terms
theorem substitutionProof19081 : IsMapEvaluation generatorImages reduction19081.relations [2210] reduction19081.output := by lin_cert using reduction19081.terms
def image19082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19082 : InImage map_25_246 image19082 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19082 : Bundle := named_bundle% "RealMapCertificates/relations/basis19082.json"
theorem reductionProof19082 : EqualModuloRelations reduction19082.relations reduction19082.input reduction19082.output := by lin_cert using reduction19082.terms
theorem substitutionProof19082 : IsMapEvaluation generatorImages reduction19082.relations [2209] reduction19082.output := by lin_cert using reduction19082.terms
def image19083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19083 : InImage map_25_246 image19083 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19083 : Bundle := named_bundle% "RealMapCertificates/relations/basis19083.json"
theorem reductionProof19083 : EqualModuloRelations reduction19083.relations reduction19083.input reduction19083.output := by lin_cert using reduction19083.terms
theorem substitutionProof19083 : IsMapEvaluation generatorImages reduction19083.relations [9,188,288] reduction19083.output := by lin_cert using reduction19083.terms
def image19084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19084 : InImage map_25_246 image19084 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19084 : Bundle := named_bundle% "RealMapCertificates/relations/basis19084.json"
theorem reductionProof19084 : EqualModuloRelations reduction19084.relations reduction19084.input reduction19084.output := by lin_cert using reduction19084.terms
theorem substitutionProof19084 : IsMapEvaluation generatorImages reduction19084.relations [1,2135] reduction19084.output := by lin_cert using reduction19084.terms
def image19085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19085 : InImage map_25_246 image19085 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19085 : Bundle := named_bundle% "RealMapCertificates/relations/basis19085.json"
theorem reductionProof19085 : EqualModuloRelations reduction19085.relations reduction19085.input reduction19085.output := by lin_cert using reduction19085.terms
theorem substitutionProof19085 : IsMapEvaluation generatorImages reduction19085.relations [0,2172] reduction19085.output := by lin_cert using reduction19085.terms
def image19086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19086 : InImage map_25_246 image19086 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19086 : Bundle := named_bundle% "RealMapCertificates/relations/basis19086.json"
theorem reductionProof19086 : EqualModuloRelations reduction19086.relations reduction19086.input reduction19086.output := by lin_cert using reduction19086.terms
theorem substitutionProof19086 : IsMapEvaluation generatorImages reduction19086.relations [0,0,0,0,2067] reduction19086.output := by lin_cert using reduction19086.terms
end RealMapCertificates
