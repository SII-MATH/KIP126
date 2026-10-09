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
  | 76 => []
  | 113 => [[0,8,12]]
  | 147 => [[0,4,8,12]]
  | 154 => [[0,5,8,12]]
  | 188 => []
  | 209 => []
  | 246 => []
  | 260 => []
  | 266 => []
  | 288 => []
  | 299 => []
  | 324 => []
  | 333 => []
  | 439 => []
  | 533 => []
  | 734 => []
  | 959 => []
  | 992 => []
  | 1323 => []
  | 1613 => []
  | 1662 => []
  | 1693 => []
  | 1695 => []
  | 1725 => []
  | 1764 => []
  | 1788 => []
  | 1842 => []
  | 1869 => []
  | 1913 => []
  | 2104 => []
  | 2136 => []
  | 2172 => []
  | 2173 => []
  | 2175 => []
  | 2212 => []
  | 2213 => []
  | 2214 => []
  | 2215 => []
  | 2216 => []
  | 2217 => []
  | 2250 => []
  | 2251 => []
  | 2252 => []
  | 2253 => []
  | 2255 => []
  | 2265 => []
  | 2282 => []
  | 2284 => []
  | 2286 => []
  | 2288 => []
  | 2316 => []
  | 2346 => []
  | 2347 => []
  | 2349 => []
  | 2350 => []
  | 2352 => []
  | 2383 => []
  | 2419 => []
  | 2420 => []
  | 2447 => []
  | 2448 => []
  | 2450 => []
  | 2451 => []
  | 2452 => []
  | 2501 => []
  | 2502 => []
  | 2503 => []
  | 2558 => []
  | 2560 => []
  | 2586 => []
  | 2587 => []
  | 2588 => []
  | 2589 => []
  | 2590 => []
  | 2591 => []
  | 2592 => []
  | 2593 => []
  | 2594 => []
  | 2635 => []
  | 2636 => []
  | 2637 => []
  | 2684 => []
  | 2685 => []
  | 2686 => []
  | 2687 => []
  | 2749 => []
  | 2750 => []
  | 2751 => []
  | _ => []
def map_25_247 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image19318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19318 : InImage map_25_247 image19318 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction19318 : Bundle := named_bundle% "RealMapCertificates/relations/basis19318.json"
theorem reductionProof19318 : EqualModuloRelations reduction19318.relations reduction19318.input reduction19318.output := by lin_cert using reduction19318.terms
theorem substitutionProof19318 : IsMapEvaluation generatorImages reduction19318.relations [2251] reduction19318.output := by lin_cert using reduction19318.terms
def image19319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19319 : InImage map_25_247 image19319 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction19319 : Bundle := named_bundle% "RealMapCertificates/relations/basis19319.json"
theorem reductionProof19319 : EqualModuloRelations reduction19319.relations reduction19319.input reduction19319.output := by lin_cert using reduction19319.terms
theorem substitutionProof19319 : IsMapEvaluation generatorImages reduction19319.relations [2250] reduction19319.output := by lin_cert using reduction19319.terms
def image19320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19320 : InImage map_25_247 image19320 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction19320 : Bundle := named_bundle% "RealMapCertificates/relations/basis19320.json"
theorem reductionProof19320 : EqualModuloRelations reduction19320.relations reduction19320.input reduction19320.output := by lin_cert using reduction19320.terms
theorem substitutionProof19320 : IsMapEvaluation generatorImages reduction19320.relations [9,1662] reduction19320.output := by lin_cert using reduction19320.terms
def image19321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19321 : InImage map_25_247 image19321 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction19321 : Bundle := named_bundle% "RealMapCertificates/relations/basis19321.json"
theorem reductionProof19321 : EqualModuloRelations reduction19321.relations reduction19321.input reduction19321.output := by lin_cert using reduction19321.terms
theorem substitutionProof19321 : IsMapEvaluation generatorImages reduction19321.relations [1,2173] reduction19321.output := by lin_cert using reduction19321.terms
def image19322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19322 : InImage map_25_247 image19322 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction19322 : Bundle := named_bundle% "RealMapCertificates/relations/basis19322.json"
theorem reductionProof19322 : EqualModuloRelations reduction19322.relations reduction19322.input reduction19322.output := by lin_cert using reduction19322.terms
theorem substitutionProof19322 : IsMapEvaluation generatorImages reduction19322.relations [1,2172] reduction19322.output := by lin_cert using reduction19322.terms
def image19323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19323 : InImage map_25_247 image19323 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction19323 : Bundle := named_bundle% "RealMapCertificates/relations/basis19323.json"
theorem reductionProof19323 : EqualModuloRelations reduction19323.relations reduction19323.input reduction19323.output := by lin_cert using reduction19323.terms
theorem substitutionProof19323 : IsMapEvaluation generatorImages reduction19323.relations [1,209,439] reduction19323.output := by lin_cert using reduction19323.terms
def image19324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19324 : InImage map_25_247 image19324 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction19324 : Bundle := named_bundle% "RealMapCertificates/relations/basis19324.json"
theorem reductionProof19324 : EqualModuloRelations reduction19324.relations reduction19324.input reduction19324.output := by lin_cert using reduction19324.terms
theorem substitutionProof19324 : IsMapEvaluation generatorImages reduction19324.relations [0,2213] reduction19324.output := by lin_cert using reduction19324.terms
def image19325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19325 : InImage map_25_247 image19325 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction19325 : Bundle := named_bundle% "RealMapCertificates/relations/basis19325.json"
theorem reductionProof19325 : EqualModuloRelations reduction19325.relations reduction19325.input reduction19325.output := by lin_cert using reduction19325.terms
theorem substitutionProof19325 : IsMapEvaluation generatorImages reduction19325.relations [0,2212] reduction19325.output := by lin_cert using reduction19325.terms
def image19326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19326 : InImage map_25_247 image19326 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction19326 : Bundle := named_bundle% "RealMapCertificates/relations/basis19326.json"
theorem reductionProof19326 : EqualModuloRelations reduction19326.relations reduction19326.input reduction19326.output := by lin_cert using reduction19326.terms
theorem substitutionProof19326 : IsMapEvaluation generatorImages reduction19326.relations [0,8,1695] reduction19326.output := by lin_cert using reduction19326.terms
def image19327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19327 : InImage map_25_247 image19327 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction19327 : Bundle := named_bundle% "RealMapCertificates/relations/basis19327.json"
theorem reductionProof19327 : EqualModuloRelations reduction19327.relations reduction19327.input reduction19327.output := by lin_cert using reduction19327.terms
theorem substitutionProof19327 : IsMapEvaluation generatorImages reduction19327.relations [0,0,2175] reduction19327.output := by lin_cert using reduction19327.terms
def image19328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19328 : InImage map_25_247 image19328 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction19328 : Bundle := named_bundle% "RealMapCertificates/relations/basis19328.json"
theorem reductionProof19328 : EqualModuloRelations reduction19328.relations reduction19328.input reduction19328.output := by lin_cert using reduction19328.terms
theorem substitutionProof19328 : IsMapEvaluation generatorImages reduction19328.relations [0,0,0,246,324] reduction19328.output := by lin_cert using reduction19328.terms
def map_25_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19591 : InImage map_25_248 image19591 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19591 : Bundle := named_bundle% "RealMapCertificates/relations/basis19591.json"
theorem reductionProof19591 : EqualModuloRelations reduction19591.relations reduction19591.input reduction19591.output := by lin_cert using reduction19591.terms
theorem substitutionProof19591 : IsMapEvaluation generatorImages reduction19591.relations [17,147,324] reduction19591.output := by lin_cert using reduction19591.terms
def image19592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19592 : InImage map_25_248 image19592 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19592 : Bundle := named_bundle% "RealMapCertificates/relations/basis19592.json"
theorem reductionProof19592 : EqualModuloRelations reduction19592.relations reduction19592.input reduction19592.output := by lin_cert using reduction19592.terms
theorem substitutionProof19592 : IsMapEvaluation generatorImages reduction19592.relations [1,2214] reduction19592.output := by lin_cert using reduction19592.terms
def image19593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19593 : InImage map_25_248 image19593 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19593 : Bundle := named_bundle% "RealMapCertificates/relations/basis19593.json"
theorem reductionProof19593 : EqualModuloRelations reduction19593.relations reduction19593.input reduction19593.output := by lin_cert using reduction19593.terms
theorem substitutionProof19593 : IsMapEvaluation generatorImages reduction19593.relations [0,2253] reduction19593.output := by lin_cert using reduction19593.terms
def image19594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19594 : InImage map_25_248 image19594 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19594 : Bundle := named_bundle% "RealMapCertificates/relations/basis19594.json"
theorem reductionProof19594 : EqualModuloRelations reduction19594.relations reduction19594.input reduction19594.output := by lin_cert using reduction19594.terms
theorem substitutionProof19594 : IsMapEvaluation generatorImages reduction19594.relations [0,2252] reduction19594.output := by lin_cert using reduction19594.terms
def image19595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19595 : InImage map_25_248 image19595 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19595 : Bundle := named_bundle% "RealMapCertificates/relations/basis19595.json"
theorem reductionProof19595 : EqualModuloRelations reduction19595.relations reduction19595.input reduction19595.output := by lin_cert using reduction19595.terms
theorem substitutionProof19595 : IsMapEvaluation generatorImages reduction19595.relations [0,0,2217] reduction19595.output := by lin_cert using reduction19595.terms
def image19596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19596 : InImage map_25_248 image19596 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19596 : Bundle := named_bundle% "RealMapCertificates/relations/basis19596.json"
theorem reductionProof19596 : EqualModuloRelations reduction19596.relations reduction19596.input reduction19596.output := by lin_cert using reduction19596.terms
theorem substitutionProof19596 : IsMapEvaluation generatorImages reduction19596.relations [0,0,2216] reduction19596.output := by lin_cert using reduction19596.terms
def map_25_249 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19893 : InImage map_25_249 image19893 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19893 : Bundle := named_bundle% "RealMapCertificates/relations/basis19893.json"
theorem reductionProof19893 : EqualModuloRelations reduction19893.relations reduction19893.input reduction19893.output := by lin_cert using reduction19893.terms
theorem substitutionProof19893 : IsMapEvaluation generatorImages reduction19893.relations [13,188,288] reduction19893.output := by lin_cert using reduction19893.terms
def image19894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19894 : InImage map_25_249 image19894 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19894 : Bundle := named_bundle% "RealMapCertificates/relations/basis19894.json"
theorem reductionProof19894 : EqualModuloRelations reduction19894.relations reduction19894.input reduction19894.output := by lin_cert using reduction19894.terms
theorem substitutionProof19894 : IsMapEvaluation generatorImages reduction19894.relations [9,1693] reduction19894.output := by lin_cert using reduction19894.terms
def image19895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19895 : InImage map_25_249 image19895 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19895 : Bundle := named_bundle% "RealMapCertificates/relations/basis19895.json"
theorem reductionProof19895 : EqualModuloRelations reduction19895.relations reduction19895.input reduction19895.output := by lin_cert using reduction19895.terms
theorem substitutionProof19895 : IsMapEvaluation generatorImages reduction19895.relations [8,1764] reduction19895.output := by lin_cert using reduction19895.terms
def image19896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19896 : InImage map_25_249 image19896 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19896 : Bundle := named_bundle% "RealMapCertificates/relations/basis19896.json"
theorem reductionProof19896 : EqualModuloRelations reduction19896.relations reduction19896.input reduction19896.output := by lin_cert using reduction19896.terms
theorem substitutionProof19896 : IsMapEvaluation generatorImages reduction19896.relations [2,2172] reduction19896.output := by lin_cert using reduction19896.terms
def image19897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19897 : InImage map_25_249 image19897 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19897 : Bundle := named_bundle% "RealMapCertificates/relations/basis19897.json"
theorem reductionProof19897 : EqualModuloRelations reduction19897.relations reduction19897.input reduction19897.output := by lin_cert using reduction19897.terms
theorem substitutionProof19897 : IsMapEvaluation generatorImages reduction19897.relations [1,2255] reduction19897.output := by lin_cert using reduction19897.terms
def image19898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19898 : InImage map_25_249 image19898 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19898 : Bundle := named_bundle% "RealMapCertificates/relations/basis19898.json"
theorem reductionProof19898 : EqualModuloRelations reduction19898.relations reduction19898.input reduction19898.output := by lin_cert using reduction19898.terms
theorem substitutionProof19898 : IsMapEvaluation generatorImages reduction19898.relations [1,2252] reduction19898.output := by lin_cert using reduction19898.terms
def image19899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19899 : InImage map_25_249 image19899 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19899 : Bundle := named_bundle% "RealMapCertificates/relations/basis19899.json"
theorem reductionProof19899 : EqualModuloRelations reduction19899.relations reduction19899.input reduction19899.output := by lin_cert using reduction19899.terms
theorem substitutionProof19899 : IsMapEvaluation generatorImages reduction19899.relations [0,2284] reduction19899.output := by lin_cert using reduction19899.terms
def map_25_250 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20113 : InImage map_25_250 image20113 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20113 : Bundle := named_bundle% "RealMapCertificates/relations/basis20113.json"
theorem reductionProof20113 : EqualModuloRelations reduction20113.relations reduction20113.input reduction20113.output := by lin_cert using reduction20113.terms
theorem substitutionProof20113 : IsMapEvaluation generatorImages reduction20113.relations [2346] reduction20113.output := by lin_cert using reduction20113.terms
def image20114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20114 : InImage map_25_250 image20114 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20114 : Bundle := named_bundle% "RealMapCertificates/relations/basis20114.json"
theorem reductionProof20114 : EqualModuloRelations reduction20114.relations reduction20114.input reduction20114.output := by lin_cert using reduction20114.terms
theorem substitutionProof20114 : IsMapEvaluation generatorImages reduction20114.relations [13,1662] reduction20114.output := by lin_cert using reduction20114.terms
def image20115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20115 : InImage map_25_250 image20115 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20115 : Bundle := named_bundle% "RealMapCertificates/relations/basis20115.json"
theorem reductionProof20115 : EqualModuloRelations reduction20115.relations reduction20115.input reduction20115.output := by lin_cert using reduction20115.terms
theorem substitutionProof20115 : IsMapEvaluation generatorImages reduction20115.relations [9,1725] reduction20115.output := by lin_cert using reduction20115.terms
def image20116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20116 : InImage map_25_250 image20116 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20116 : Bundle := named_bundle% "RealMapCertificates/relations/basis20116.json"
theorem reductionProof20116 : EqualModuloRelations reduction20116.relations reduction20116.input reduction20116.output := by lin_cert using reduction20116.terms
theorem substitutionProof20116 : IsMapEvaluation generatorImages reduction20116.relations [1,2284] reduction20116.output := by lin_cert using reduction20116.terms
def image20117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20117 : InImage map_25_250 image20117 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20117 : Bundle := named_bundle% "RealMapCertificates/relations/basis20117.json"
theorem reductionProof20117 : EqualModuloRelations reduction20117.relations reduction20117.input reduction20117.output := by lin_cert using reduction20117.terms
theorem substitutionProof20117 : IsMapEvaluation generatorImages reduction20117.relations [0,2316] reduction20117.output := by lin_cert using reduction20117.terms
def image20118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20118 : InImage map_25_250 image20118 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20118 : Bundle := named_bundle% "RealMapCertificates/relations/basis20118.json"
theorem reductionProof20118 : EqualModuloRelations reduction20118.relations reduction20118.input reduction20118.output := by lin_cert using reduction20118.terms
theorem substitutionProof20118 : IsMapEvaluation generatorImages reduction20118.relations [0,266,333] reduction20118.output := by lin_cert using reduction20118.terms
def image20119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20119 : InImage map_25_250 image20119 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20119 : Bundle := named_bundle% "RealMapCertificates/relations/basis20119.json"
theorem reductionProof20119 : EqualModuloRelations reduction20119.relations reduction20119.input reduction20119.output := by lin_cert using reduction20119.terms
theorem substitutionProof20119 : IsMapEvaluation generatorImages reduction20119.relations [0,188,533] reduction20119.output := by lin_cert using reduction20119.terms
def image20120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20120 : InImage map_25_250 image20120 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20120 : Bundle := named_bundle% "RealMapCertificates/relations/basis20120.json"
theorem reductionProof20120 : EqualModuloRelations reduction20120.relations reduction20120.input reduction20120.output := by lin_cert using reduction20120.terms
theorem substitutionProof20120 : IsMapEvaluation generatorImages reduction20120.relations [0,9,1695] reduction20120.output := by lin_cert using reduction20120.terms
def map_25_251 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20403 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20403 : InImage map_25_251 image20403 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20403 : Bundle := named_bundle% "RealMapCertificates/relations/basis20403.json"
theorem reductionProof20403 : EqualModuloRelations reduction20403.relations reduction20403.input reduction20403.output := by lin_cert using reduction20403.terms
theorem substitutionProof20403 : IsMapEvaluation generatorImages reduction20403.relations [2383] reduction20403.output := by lin_cert using reduction20403.terms
def image20404 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20404 : InImage map_25_251 image20404 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20404 : Bundle := named_bundle% "RealMapCertificates/relations/basis20404.json"
theorem reductionProof20404 : EqualModuloRelations reduction20404.relations reduction20404.input reduction20404.output := by lin_cert using reduction20404.terms
theorem substitutionProof20404 : IsMapEvaluation generatorImages reduction20404.relations [16,154,324] reduction20404.output := by lin_cert using reduction20404.terms
def image20405 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20405 : InImage map_25_251 image20405 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20405 : Bundle := named_bundle% "RealMapCertificates/relations/basis20405.json"
theorem reductionProof20405 : EqualModuloRelations reduction20405.relations reduction20405.input reduction20405.output := by lin_cert using reduction20405.terms
theorem substitutionProof20405 : IsMapEvaluation generatorImages reduction20405.relations [13,13,23,734] reduction20405.output := by lin_cert using reduction20405.terms
def image20406 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20406 : InImage map_25_251 image20406 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20406 : Bundle := named_bundle% "RealMapCertificates/relations/basis20406.json"
theorem reductionProof20406 : EqualModuloRelations reduction20406.relations reduction20406.input reduction20406.output := by lin_cert using reduction20406.terms
theorem substitutionProof20406 : IsMapEvaluation generatorImages reduction20406.relations [3,2104] reduction20406.output := by lin_cert using reduction20406.terms
def image20407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20407 : InImage map_25_251 image20407 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20407 : Bundle := named_bundle% "RealMapCertificates/relations/basis20407.json"
theorem reductionProof20407 : EqualModuloRelations reduction20407.relations reduction20407.input reduction20407.output := by lin_cert using reduction20407.terms
theorem substitutionProof20407 : IsMapEvaluation generatorImages reduction20407.relations [1,2316] reduction20407.output := by lin_cert using reduction20407.terms
def image20408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20408 : InImage map_25_251 image20408 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20408 : Bundle := named_bundle% "RealMapCertificates/relations/basis20408.json"
theorem reductionProof20408 : EqualModuloRelations reduction20408.relations reduction20408.input reduction20408.output := by lin_cert using reduction20408.terms
theorem substitutionProof20408 : IsMapEvaluation generatorImages reduction20408.relations [0,2347] reduction20408.output := by lin_cert using reduction20408.terms
def image20409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20409 : InImage map_25_251 image20409 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20409 : Bundle := named_bundle% "RealMapCertificates/relations/basis20409.json"
theorem reductionProof20409 : EqualModuloRelations reduction20409.relations reduction20409.input reduction20409.output := by lin_cert using reduction20409.terms
theorem substitutionProof20409 : IsMapEvaluation generatorImages reduction20409.relations [0,2,2217] reduction20409.output := by lin_cert using reduction20409.terms
def image20410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20410 : InImage map_25_251 image20410 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20410 : Bundle := named_bundle% "RealMapCertificates/relations/basis20410.json"
theorem reductionProof20410 : EqualModuloRelations reduction20410.relations reduction20410.input reduction20410.output := by lin_cert using reduction20410.terms
theorem substitutionProof20410 : IsMapEvaluation generatorImages reduction20410.relations [0,0,0,2286] reduction20410.output := by lin_cert using reduction20410.terms
def map_25_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20718 : InImage map_25_252 image20718 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20718 : Bundle := named_bundle% "RealMapCertificates/relations/basis20718.json"
theorem reductionProof20718 : EqualModuloRelations reduction20718.relations reduction20718.input reduction20718.output := by lin_cert using reduction20718.terms
theorem substitutionProof20718 : IsMapEvaluation generatorImages reduction20718.relations [13,1693] reduction20718.output := by lin_cert using reduction20718.terms
def image20719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20719 : InImage map_25_252 image20719 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20719 : Bundle := named_bundle% "RealMapCertificates/relations/basis20719.json"
theorem reductionProof20719 : EqualModuloRelations reduction20719.relations reduction20719.input reduction20719.output := by lin_cert using reduction20719.terms
theorem substitutionProof20719 : IsMapEvaluation generatorImages reduction20719.relations [8,1842] reduction20719.output := by lin_cert using reduction20719.terms
def image20720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20720 : InImage map_25_252 image20720 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20720 : Bundle := named_bundle% "RealMapCertificates/relations/basis20720.json"
theorem reductionProof20720 : EqualModuloRelations reduction20720.relations reduction20720.input reduction20720.output := by lin_cert using reduction20720.terms
theorem substitutionProof20720 : IsMapEvaluation generatorImages reduction20720.relations [3,2136] reduction20720.output := by lin_cert using reduction20720.terms
def image20721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20721 : InImage map_25_252 image20721 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20721 : Bundle := named_bundle% "RealMapCertificates/relations/basis20721.json"
theorem reductionProof20721 : EqualModuloRelations reduction20721.relations reduction20721.input reduction20721.output := by lin_cert using reduction20721.terms
theorem substitutionProof20721 : IsMapEvaluation generatorImages reduction20721.relations [2,2282] reduction20721.output := by lin_cert using reduction20721.terms
def image20722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20722 : InImage map_25_252 image20722 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20722 : Bundle := named_bundle% "RealMapCertificates/relations/basis20722.json"
theorem reductionProof20722 : EqualModuloRelations reduction20722.relations reduction20722.input reduction20722.output := by lin_cert using reduction20722.terms
theorem substitutionProof20722 : IsMapEvaluation generatorImages reduction20722.relations [1,2347] reduction20722.output := by lin_cert using reduction20722.terms
def image20723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20723 : InImage map_25_252 image20723 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20723 : Bundle := named_bundle% "RealMapCertificates/relations/basis20723.json"
theorem reductionProof20723 : EqualModuloRelations reduction20723.relations reduction20723.input reduction20723.output := by lin_cert using reduction20723.terms
theorem substitutionProof20723 : IsMapEvaluation generatorImages reduction20723.relations [0,0,2350] reduction20723.output := by lin_cert using reduction20723.terms
def image20724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20724 : InImage map_25_252 image20724 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20724 : Bundle := named_bundle% "RealMapCertificates/relations/basis20724.json"
theorem reductionProof20724 : EqualModuloRelations reduction20724.relations reduction20724.input reduction20724.output := by lin_cert using reduction20724.terms
theorem substitutionProof20724 : IsMapEvaluation generatorImages reduction20724.relations [0,0,2349] reduction20724.output := by lin_cert using reduction20724.terms
def image20725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20725 : InImage map_25_252 image20725 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20725 : Bundle := named_bundle% "RealMapCertificates/relations/basis20725.json"
theorem reductionProof20725 : EqualModuloRelations reduction20725.relations reduction20725.input reduction20725.output := by lin_cert using reduction20725.terms
theorem substitutionProof20725 : IsMapEvaluation generatorImages reduction20725.relations [0,0,0,0,2288] reduction20725.output := by lin_cert using reduction20725.terms
def map_25_253 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20941 : InImage map_25_253 image20941 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20941 : Bundle := named_bundle% "RealMapCertificates/relations/basis20941.json"
theorem reductionProof20941 : EqualModuloRelations reduction20941.relations reduction20941.input reduction20941.output := by lin_cert using reduction20941.terms
theorem substitutionProof20941 : IsMapEvaluation generatorImages reduction20941.relations [2448] reduction20941.output := by lin_cert using reduction20941.terms
def image20942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20942 : InImage map_25_253 image20942 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20942 : Bundle := named_bundle% "RealMapCertificates/relations/basis20942.json"
theorem reductionProof20942 : EqualModuloRelations reduction20942.relations reduction20942.input reduction20942.output := by lin_cert using reduction20942.terms
theorem substitutionProof20942 : IsMapEvaluation generatorImages reduction20942.relations [2447] reduction20942.output := by lin_cert using reduction20942.terms
def image20943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20943 : InImage map_25_253 image20943 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20943 : Bundle := named_bundle% "RealMapCertificates/relations/basis20943.json"
theorem reductionProof20943 : EqualModuloRelations reduction20943.relations reduction20943.input reduction20943.output := by lin_cert using reduction20943.terms
theorem substitutionProof20943 : IsMapEvaluation generatorImages reduction20943.relations [76,959] reduction20943.output := by lin_cert using reduction20943.terms
def image20944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20944 : InImage map_25_253 image20944 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20944 : Bundle := named_bundle% "RealMapCertificates/relations/basis20944.json"
theorem reductionProof20944 : EqualModuloRelations reduction20944.relations reduction20944.input reduction20944.output := by lin_cert using reduction20944.terms
theorem substitutionProof20944 : IsMapEvaluation generatorImages reduction20944.relations [13,1725] reduction20944.output := by lin_cert using reduction20944.terms
def image20945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20945 : InImage map_25_253 image20945 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20945 : Bundle := named_bundle% "RealMapCertificates/relations/basis20945.json"
theorem reductionProof20945 : EqualModuloRelations reduction20945.relations reduction20945.input reduction20945.output := by lin_cert using reduction20945.terms
theorem substitutionProof20945 : IsMapEvaluation generatorImages reduction20945.relations [3,2172] reduction20945.output := by lin_cert using reduction20945.terms
def image20946 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20946 : InImage map_25_253 image20946 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20946 : Bundle := named_bundle% "RealMapCertificates/relations/basis20946.json"
theorem reductionProof20946 : EqualModuloRelations reduction20946.relations reduction20946.input reduction20946.output := by lin_cert using reduction20946.terms
theorem substitutionProof20946 : IsMapEvaluation generatorImages reduction20946.relations [0,2420] reduction20946.output := by lin_cert using reduction20946.terms
def image20947 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20947 : InImage map_25_253 image20947 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20947 : Bundle := named_bundle% "RealMapCertificates/relations/basis20947.json"
theorem reductionProof20947 : EqualModuloRelations reduction20947.relations reduction20947.input reduction20947.output := by lin_cert using reduction20947.terms
theorem substitutionProof20947 : IsMapEvaluation generatorImages reduction20947.relations [0,13,1695] reduction20947.output := by lin_cert using reduction20947.terms
def image20948 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20948 : InImage map_25_253 image20948 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20948 : Bundle := named_bundle% "RealMapCertificates/relations/basis20948.json"
theorem reductionProof20948 : EqualModuloRelations reduction20948.relations reduction20948.input reduction20948.output := by lin_cert using reduction20948.terms
theorem substitutionProof20948 : IsMapEvaluation generatorImages reduction20948.relations [0,0,0,2352] reduction20948.output := by lin_cert using reduction20948.terms
def image20949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20949 : InImage map_25_253 image20949 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20949 : Bundle := named_bundle% "RealMapCertificates/relations/basis20949.json"
theorem reductionProof20949 : EqualModuloRelations reduction20949.relations reduction20949.input reduction20949.output := by lin_cert using reduction20949.terms
theorem substitutionProof20949 : IsMapEvaluation generatorImages reduction20949.relations [0,0,0,0,0,0,260,324] reduction20949.output := by lin_cert using reduction20949.terms
def map_25_254 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21235 : InImage map_25_254 image21235 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21235 : Bundle := named_bundle% "RealMapCertificates/relations/basis21235.json"
theorem reductionProof21235 : EqualModuloRelations reduction21235.relations reduction21235.input reduction21235.output := by lin_cert using reduction21235.terms
theorem substitutionProof21235 : IsMapEvaluation generatorImages reduction21235.relations [2502] reduction21235.output := by lin_cert using reduction21235.terms
def image21236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21236 : InImage map_25_254 image21236 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21236 : Bundle := named_bundle% "RealMapCertificates/relations/basis21236.json"
theorem reductionProof21236 : EqualModuloRelations reduction21236.relations reduction21236.input reduction21236.output := by lin_cert using reduction21236.terms
theorem substitutionProof21236 : IsMapEvaluation generatorImages reduction21236.relations [2501] reduction21236.output := by lin_cert using reduction21236.terms
def image21237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21237 : InImage map_25_254 image21237 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21237 : Bundle := named_bundle% "RealMapCertificates/relations/basis21237.json"
theorem reductionProof21237 : EqualModuloRelations reduction21237.relations reduction21237.input reduction21237.output := by lin_cert using reduction21237.terms
theorem substitutionProof21237 : IsMapEvaluation generatorImages reduction21237.relations [8,17,113,324] reduction21237.output := by lin_cert using reduction21237.terms
def image21238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21238 : InImage map_25_254 image21238 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21238 : Bundle := named_bundle% "RealMapCertificates/relations/basis21238.json"
theorem reductionProof21238 : EqualModuloRelations reduction21238.relations reduction21238.input reduction21238.output := by lin_cert using reduction21238.terms
theorem substitutionProof21238 : IsMapEvaluation generatorImages reduction21238.relations [3,2212] reduction21238.output := by lin_cert using reduction21238.terms
def image21239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21239 : InImage map_25_254 image21239 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21239 : Bundle := named_bundle% "RealMapCertificates/relations/basis21239.json"
theorem reductionProof21239 : EqualModuloRelations reduction21239.relations reduction21239.input reduction21239.output := by lin_cert using reduction21239.terms
theorem substitutionProof21239 : IsMapEvaluation generatorImages reduction21239.relations [1,2419] reduction21239.output := by lin_cert using reduction21239.terms
def image21240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21240 : InImage map_25_254 image21240 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21240 : Bundle := named_bundle% "RealMapCertificates/relations/basis21240.json"
theorem reductionProof21240 : EqualModuloRelations reduction21240.relations reduction21240.input reduction21240.output := by lin_cert using reduction21240.terms
theorem substitutionProof21240 : IsMapEvaluation generatorImages reduction21240.relations [1,1,2349] reduction21240.output := by lin_cert using reduction21240.terms
def image21241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21241 : InImage map_25_254 image21241 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21241 : Bundle := named_bundle% "RealMapCertificates/relations/basis21241.json"
theorem reductionProof21241 : EqualModuloRelations reduction21241.relations reduction21241.input reduction21241.output := by lin_cert using reduction21241.terms
theorem substitutionProof21241 : IsMapEvaluation generatorImages reduction21241.relations [0,2451] reduction21241.output := by lin_cert using reduction21241.terms
def image21242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21242 : InImage map_25_254 image21242 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21242 : Bundle := named_bundle% "RealMapCertificates/relations/basis21242.json"
theorem reductionProof21242 : EqualModuloRelations reduction21242.relations reduction21242.input reduction21242.output := by lin_cert using reduction21242.terms
theorem substitutionProof21242 : IsMapEvaluation generatorImages reduction21242.relations [0,2450] reduction21242.output := by lin_cert using reduction21242.terms
def image21243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21243 : InImage map_25_254 image21243 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21243 : Bundle := named_bundle% "RealMapCertificates/relations/basis21243.json"
theorem reductionProof21243 : EqualModuloRelations reduction21243.relations reduction21243.input reduction21243.output := by lin_cert using reduction21243.terms
theorem substitutionProof21243 : IsMapEvaluation generatorImages reduction21243.relations [0,0,0,0,0,0,0,2265] reduction21243.output := by lin_cert using reduction21243.terms
def map_25_255 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21596 : InImage map_25_255 image21596 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21596 : Bundle := named_bundle% "RealMapCertificates/relations/basis21596.json"
theorem reductionProof21596 : EqualModuloRelations reduction21596.relations reduction21596.input reduction21596.output := by lin_cert using reduction21596.terms
theorem substitutionProof21596 : IsMapEvaluation generatorImages reduction21596.relations [2558] reduction21596.output := by lin_cert using reduction21596.terms
def image21597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21597 : InImage map_25_255 image21597 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21597 : Bundle := named_bundle% "RealMapCertificates/relations/basis21597.json"
theorem reductionProof21597 : EqualModuloRelations reduction21597.relations reduction21597.input reduction21597.output := by lin_cert using reduction21597.terms
theorem substitutionProof21597 : IsMapEvaluation generatorImages reduction21597.relations [13,13,1323] reduction21597.output := by lin_cert using reduction21597.terms
def image21598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21598 : InImage map_25_255 image21598 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21598 : Bundle := named_bundle% "RealMapCertificates/relations/basis21598.json"
theorem reductionProof21598 : EqualModuloRelations reduction21598.relations reduction21598.input reduction21598.output := by lin_cert using reduction21598.terms
theorem substitutionProof21598 : IsMapEvaluation generatorImages reduction21598.relations [8,1913] reduction21598.output := by lin_cert using reduction21598.terms
def image21599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21599 : InImage map_25_255 image21599 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21599 : Bundle := named_bundle% "RealMapCertificates/relations/basis21599.json"
theorem reductionProof21599 : EqualModuloRelations reduction21599.relations reduction21599.input reduction21599.output := by lin_cert using reduction21599.terms
theorem substitutionProof21599 : IsMapEvaluation generatorImages reduction21599.relations [0,2503] reduction21599.output := by lin_cert using reduction21599.terms
def image21600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21600 : InImage map_25_255 image21600 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21600 : Bundle := named_bundle% "RealMapCertificates/relations/basis21600.json"
theorem reductionProof21600 : EqualModuloRelations reduction21600.relations reduction21600.input reduction21600.output := by lin_cert using reduction21600.terms
theorem substitutionProof21600 : IsMapEvaluation generatorImages reduction21600.relations [0,3,2215] reduction21600.output := by lin_cert using reduction21600.terms
def image21601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21601 : InImage map_25_255 image21601 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21601 : Bundle := named_bundle% "RealMapCertificates/relations/basis21601.json"
theorem reductionProof21601 : EqualModuloRelations reduction21601.relations reduction21601.input reduction21601.output := by lin_cert using reduction21601.terms
theorem substitutionProof21601 : IsMapEvaluation generatorImages reduction21601.relations [0,2,2349] reduction21601.output := by lin_cert using reduction21601.terms
def image21602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21602 : InImage map_25_255 image21602 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21602 : Bundle := named_bundle% "RealMapCertificates/relations/basis21602.json"
theorem reductionProof21602 : EqualModuloRelations reduction21602.relations reduction21602.input reduction21602.output := by lin_cert using reduction21602.terms
theorem substitutionProof21602 : IsMapEvaluation generatorImages reduction21602.relations [0,0,2452] reduction21602.output := by lin_cert using reduction21602.terms
def map_25_256 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21842 : InImage map_25_256 image21842 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21842 : Bundle := named_bundle% "RealMapCertificates/relations/basis21842.json"
theorem reductionProof21842 : EqualModuloRelations reduction21842.relations reduction21842.input reduction21842.output := by lin_cert using reduction21842.terms
theorem substitutionProof21842 : IsMapEvaluation generatorImages reduction21842.relations [2588] reduction21842.output := by lin_cert using reduction21842.terms
def image21843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21843 : InImage map_25_256 image21843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21843 : Bundle := named_bundle% "RealMapCertificates/relations/basis21843.json"
theorem reductionProof21843 : EqualModuloRelations reduction21843.relations reduction21843.input reduction21843.output := by lin_cert using reduction21843.terms
theorem substitutionProof21843 : IsMapEvaluation generatorImages reduction21843.relations [2587] reduction21843.output := by lin_cert using reduction21843.terms
def image21844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21844 : InImage map_25_256 image21844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21844 : Bundle := named_bundle% "RealMapCertificates/relations/basis21844.json"
theorem reductionProof21844 : EqualModuloRelations reduction21844.relations reduction21844.input reduction21844.output := by lin_cert using reduction21844.terms
theorem substitutionProof21844 : IsMapEvaluation generatorImages reduction21844.relations [2586] reduction21844.output := by lin_cert using reduction21844.terms
def image21845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21845 : InImage map_25_256 image21845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21845 : Bundle := named_bundle% "RealMapCertificates/relations/basis21845.json"
theorem reductionProof21845 : EqualModuloRelations reduction21845.relations reduction21845.input reduction21845.output := by lin_cert using reduction21845.terms
theorem substitutionProof21845 : IsMapEvaluation generatorImages reduction21845.relations [13,1788] reduction21845.output := by lin_cert using reduction21845.terms
def image21846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21846 : InImage map_25_256 image21846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21846 : Bundle := named_bundle% "RealMapCertificates/relations/basis21846.json"
theorem reductionProof21846 : EqualModuloRelations reduction21846.relations reduction21846.input reduction21846.output := by lin_cert using reduction21846.terms
theorem substitutionProof21846 : IsMapEvaluation generatorImages reduction21846.relations [0,0,209,533] reduction21846.output := by lin_cert using reduction21846.terms
def map_25_257 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22187 : InImage map_25_257 image22187 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22187 : Bundle := named_bundle% "RealMapCertificates/relations/basis22187.json"
theorem reductionProof22187 : EqualModuloRelations reduction22187.relations reduction22187.input reduction22187.output := by lin_cert using reduction22187.terms
theorem substitutionProof22187 : IsMapEvaluation generatorImages reduction22187.relations [2637] reduction22187.output := by lin_cert using reduction22187.terms
def image22188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22188 : InImage map_25_257 image22188 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22188 : Bundle := named_bundle% "RealMapCertificates/relations/basis22188.json"
theorem reductionProof22188 : EqualModuloRelations reduction22188.relations reduction22188.input reduction22188.output := by lin_cert using reduction22188.terms
theorem substitutionProof22188 : IsMapEvaluation generatorImages reduction22188.relations [2636] reduction22188.output := by lin_cert using reduction22188.terms
def image22189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22189 : InImage map_25_257 image22189 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22189 : Bundle := named_bundle% "RealMapCertificates/relations/basis22189.json"
theorem reductionProof22189 : EqualModuloRelations reduction22189.relations reduction22189.input reduction22189.output := by lin_cert using reduction22189.terms
theorem substitutionProof22189 : IsMapEvaluation generatorImages reduction22189.relations [2635] reduction22189.output := by lin_cert using reduction22189.terms
def image22190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22190 : InImage map_25_257 image22190 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22190 : Bundle := named_bundle% "RealMapCertificates/relations/basis22190.json"
theorem reductionProof22190 : EqualModuloRelations reduction22190.relations reduction22190.input reduction22190.output := by lin_cert using reduction22190.terms
theorem substitutionProof22190 : IsMapEvaluation generatorImages reduction22190.relations [9,13,13,992] reduction22190.output := by lin_cert using reduction22190.terms
def image22191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22191 : InImage map_25_257 image22191 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22191 : Bundle := named_bundle% "RealMapCertificates/relations/basis22191.json"
theorem reductionProof22191 : EqualModuloRelations reduction22191.relations reduction22191.input reduction22191.output := by lin_cert using reduction22191.terms
theorem substitutionProof22191 : IsMapEvaluation generatorImages reduction22191.relations [8,8,154,324] reduction22191.output := by lin_cert using reduction22191.terms
def image22192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22192 : InImage map_25_257 image22192 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22192 : Bundle := named_bundle% "RealMapCertificates/relations/basis22192.json"
theorem reductionProof22192 : EqualModuloRelations reduction22192.relations reduction22192.input reduction22192.output := by lin_cert using reduction22192.terms
theorem substitutionProof22192 : IsMapEvaluation generatorImages reduction22192.relations [0,2591] reduction22192.output := by lin_cert using reduction22192.terms
def image22193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22193 : InImage map_25_257 image22193 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22193 : Bundle := named_bundle% "RealMapCertificates/relations/basis22193.json"
theorem reductionProof22193 : EqualModuloRelations reduction22193.relations reduction22193.input reduction22193.output := by lin_cert using reduction22193.terms
theorem substitutionProof22193 : IsMapEvaluation generatorImages reduction22193.relations [0,2590] reduction22193.output := by lin_cert using reduction22193.terms
def image22194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22194 : InImage map_25_257 image22194 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22194 : Bundle := named_bundle% "RealMapCertificates/relations/basis22194.json"
theorem reductionProof22194 : EqualModuloRelations reduction22194.relations reduction22194.input reduction22194.output := by lin_cert using reduction22194.terms
theorem substitutionProof22194 : IsMapEvaluation generatorImages reduction22194.relations [0,2589] reduction22194.output := by lin_cert using reduction22194.terms
def map_25_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22556 : InImage map_25_258 image22556 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22556 : Bundle := named_bundle% "RealMapCertificates/relations/basis22556.json"
theorem reductionProof22556 : EqualModuloRelations reduction22556.relations reduction22556.input reduction22556.output := by lin_cert using reduction22556.terms
theorem substitutionProof22556 : IsMapEvaluation generatorImages reduction22556.relations [2686] reduction22556.output := by lin_cert using reduction22556.terms
def image22557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22557 : InImage map_25_258 image22557 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22557 : Bundle := named_bundle% "RealMapCertificates/relations/basis22557.json"
theorem reductionProof22557 : EqualModuloRelations reduction22557.relations reduction22557.input reduction22557.output := by lin_cert using reduction22557.terms
theorem substitutionProof22557 : IsMapEvaluation generatorImages reduction22557.relations [2685] reduction22557.output := by lin_cert using reduction22557.terms
def image22558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22558 : InImage map_25_258 image22558 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22558 : Bundle := named_bundle% "RealMapCertificates/relations/basis22558.json"
theorem reductionProof22558 : EqualModuloRelations reduction22558.relations reduction22558.input reduction22558.output := by lin_cert using reduction22558.terms
theorem substitutionProof22558 : IsMapEvaluation generatorImages reduction22558.relations [2684] reduction22558.output := by lin_cert using reduction22558.terms
def image22559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22559 : InImage map_25_258 image22559 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22559 : Bundle := named_bundle% "RealMapCertificates/relations/basis22559.json"
theorem reductionProof22559 : EqualModuloRelations reduction22559.relations reduction22559.input reduction22559.output := by lin_cert using reduction22559.terms
theorem substitutionProof22559 : IsMapEvaluation generatorImages reduction22559.relations [9,1913] reduction22559.output := by lin_cert using reduction22559.terms
def image22560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22560 : InImage map_25_258 image22560 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22560 : Bundle := named_bundle% "RealMapCertificates/relations/basis22560.json"
theorem reductionProof22560 : EqualModuloRelations reduction22560.relations reduction22560.input reduction22560.output := by lin_cert using reduction22560.terms
theorem substitutionProof22560 : IsMapEvaluation generatorImages reduction22560.relations [0,0,2594] reduction22560.output := by lin_cert using reduction22560.terms
def image22561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22561 : InImage map_25_258 image22561 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22561 : Bundle := named_bundle% "RealMapCertificates/relations/basis22561.json"
theorem reductionProof22561 : EqualModuloRelations reduction22561.relations reduction22561.input reduction22561.output := by lin_cert using reduction22561.terms
theorem substitutionProof22561 : IsMapEvaluation generatorImages reduction22561.relations [0,0,2593] reduction22561.output := by lin_cert using reduction22561.terms
def image22562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22562 : InImage map_25_258 image22562 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22562 : Bundle := named_bundle% "RealMapCertificates/relations/basis22562.json"
theorem reductionProof22562 : EqualModuloRelations reduction22562.relations reduction22562.input reduction22562.output := by lin_cert using reduction22562.terms
theorem substitutionProof22562 : IsMapEvaluation generatorImages reduction22562.relations [0,0,2592] reduction22562.output := by lin_cert using reduction22562.terms
def image22563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22563 : InImage map_25_258 image22563 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22563 : Bundle := named_bundle% "RealMapCertificates/relations/basis22563.json"
theorem reductionProof22563 : EqualModuloRelations reduction22563.relations reduction22563.input reduction22563.output := by lin_cert using reduction22563.terms
theorem substitutionProof22563 : IsMapEvaluation generatorImages reduction22563.relations [0,0,0,2560] reduction22563.output := by lin_cert using reduction22563.terms
def map_25_259 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22847 : InImage map_25_259 image22847 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22847 : Bundle := named_bundle% "RealMapCertificates/relations/basis22847.json"
theorem reductionProof22847 : EqualModuloRelations reduction22847.relations reduction22847.input reduction22847.output := by lin_cert using reduction22847.terms
theorem substitutionProof22847 : IsMapEvaluation generatorImages reduction22847.relations [2751] reduction22847.output := by lin_cert using reduction22847.terms
def image22848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22848 : InImage map_25_259 image22848 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22848 : Bundle := named_bundle% "RealMapCertificates/relations/basis22848.json"
theorem reductionProof22848 : EqualModuloRelations reduction22848.relations reduction22848.input reduction22848.output := by lin_cert using reduction22848.terms
theorem substitutionProof22848 : IsMapEvaluation generatorImages reduction22848.relations [2750] reduction22848.output := by lin_cert using reduction22848.terms
def image22849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22849 : InImage map_25_259 image22849 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22849 : Bundle := named_bundle% "RealMapCertificates/relations/basis22849.json"
theorem reductionProof22849 : EqualModuloRelations reduction22849.relations reduction22849.input reduction22849.output := by lin_cert using reduction22849.terms
theorem substitutionProof22849 : IsMapEvaluation generatorImages reduction22849.relations [2749] reduction22849.output := by lin_cert using reduction22849.terms
def image22850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22850 : InImage map_25_259 image22850 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22850 : Bundle := named_bundle% "RealMapCertificates/relations/basis22850.json"
theorem reductionProof22850 : EqualModuloRelations reduction22850.relations reduction22850.input reduction22850.output := by lin_cert using reduction22850.terms
theorem substitutionProof22850 : IsMapEvaluation generatorImages reduction22850.relations [23,1613] reduction22850.output := by lin_cert using reduction22850.terms
def image22851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22851 : InImage map_25_259 image22851 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22851 : Bundle := named_bundle% "RealMapCertificates/relations/basis22851.json"
theorem reductionProof22851 : EqualModuloRelations reduction22851.relations reduction22851.input reduction22851.output := by lin_cert using reduction22851.terms
theorem substitutionProof22851 : IsMapEvaluation generatorImages reduction22851.relations [13,1869] reduction22851.output := by lin_cert using reduction22851.terms
def image22852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22852 : InImage map_25_259 image22852 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22852 : Bundle := named_bundle% "RealMapCertificates/relations/basis22852.json"
theorem reductionProof22852 : EqualModuloRelations reduction22852.relations reduction22852.input reduction22852.output := by lin_cert using reduction22852.terms
theorem substitutionProof22852 : IsMapEvaluation generatorImages reduction22852.relations [7,2104] reduction22852.output := by lin_cert using reduction22852.terms
def image22853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22853 : InImage map_25_259 image22853 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22853 : Bundle := named_bundle% "RealMapCertificates/relations/basis22853.json"
theorem reductionProof22853 : EqualModuloRelations reduction22853.relations reduction22853.input reduction22853.output := by lin_cert using reduction22853.terms
theorem substitutionProof22853 : IsMapEvaluation generatorImages reduction22853.relations [0,2687] reduction22853.output := by lin_cert using reduction22853.terms
def image22854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22854 : InImage map_25_259 image22854 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22854 : Bundle := named_bundle% "RealMapCertificates/relations/basis22854.json"
theorem reductionProof22854 : EqualModuloRelations reduction22854.relations reduction22854.input reduction22854.output := by lin_cert using reduction22854.terms
theorem substitutionProof22854 : IsMapEvaluation generatorImages reduction22854.relations [0,3,2349] reduction22854.output := by lin_cert using reduction22854.terms
def image22855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22855 : InImage map_25_259 image22855 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22855 : Bundle := named_bundle% "RealMapCertificates/relations/basis22855.json"
theorem reductionProof22855 : EqualModuloRelations reduction22855.relations reduction22855.input reduction22855.output := by lin_cert using reduction22855.terms
theorem substitutionProof22855 : IsMapEvaluation generatorImages reduction22855.relations [0,0,0,0,0,299,324] reduction22855.output := by lin_cert using reduction22855.terms
end RealMapCertificates
