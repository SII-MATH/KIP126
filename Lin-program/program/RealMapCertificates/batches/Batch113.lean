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
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 67 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 72 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 79 => []
  | 89 => []
  | 97 => [[1,4,4,4,4,4,4]]
  | 101 => []
  | 102 => [[2,4,4,4,4,4,4]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 162 => [[0,5,9,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 233 => [[5,7,9,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 299 => []
  | 300 => []
  | 315 => [[4,4,5,5,7,12]]
  | 317 => []
  | 324 => []
  | 333 => []
  | 344 => [[4,4,5,5,8,12]]
  | 359 => []
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 965 => []
  | 992 => []
  | 1097 => []
  | 1913 => []
  | 2066 => []
  | 2136 => []
  | 2349 => []
  | 2430 => []
  | 2450 => []
  | 2560 => []
  | 2752 => []
  | 2755 => []
  | 2757 => []
  | 2758 => []
  | 2809 => []
  | 2810 => []
  | 2812 => []
  | 2871 => []
  | _ => []
def map_25_260 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image23229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23229 : InImage map_25_260 image23229 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction23229 : Bundle := named_bundle% "RealMapCertificates/relations/basis23229.json"
theorem reductionProof23229 : EqualModuloRelations reduction23229.relations reduction23229.input reduction23229.output := by lin_cert using reduction23229.terms
theorem substitutionProof23229 : IsMapEvaluation generatorImages reduction23229.relations [2810] reduction23229.output := by lin_cert using reduction23229.terms
def image23230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23230 : InImage map_25_260 image23230 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction23230 : Bundle := named_bundle% "RealMapCertificates/relations/basis23230.json"
theorem reductionProof23230 : EqualModuloRelations reduction23230.relations reduction23230.input reduction23230.output := by lin_cert using reduction23230.terms
theorem substitutionProof23230 : IsMapEvaluation generatorImages reduction23230.relations [2809] reduction23230.output := by lin_cert using reduction23230.terms
def image23231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23231 : InImage map_25_260 image23231 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction23231 : Bundle := named_bundle% "RealMapCertificates/relations/basis23231.json"
theorem reductionProof23231 : EqualModuloRelations reduction23231.relations reduction23231.input reduction23231.output := by lin_cert using reduction23231.terms
theorem substitutionProof23231 : IsMapEvaluation generatorImages reduction23231.relations [13,13,13,992] reduction23231.output := by lin_cert using reduction23231.terms
def image23232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23232 : InImage map_25_260 image23232 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction23232 : Bundle := named_bundle% "RealMapCertificates/relations/basis23232.json"
theorem reductionProof23232 : EqualModuloRelations reduction23232.relations reduction23232.input reduction23232.output := by lin_cert using reduction23232.terms
theorem substitutionProof23232 : IsMapEvaluation generatorImages reduction23232.relations [8,2066] reduction23232.output := by lin_cert using reduction23232.terms
def image23233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23233 : InImage map_25_260 image23233 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction23233 : Bundle := named_bundle% "RealMapCertificates/relations/basis23233.json"
theorem reductionProof23233 : EqualModuloRelations reduction23233.relations reduction23233.input reduction23233.output := by lin_cert using reduction23233.terms
theorem substitutionProof23233 : IsMapEvaluation generatorImages reduction23233.relations [8,8,162,324] reduction23233.output := by lin_cert using reduction23233.terms
def image23234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23234 : InImage map_25_260 image23234 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction23234 : Bundle := named_bundle% "RealMapCertificates/relations/basis23234.json"
theorem reductionProof23234 : EqualModuloRelations reduction23234.relations reduction23234.input reduction23234.output := by lin_cert using reduction23234.terms
theorem substitutionProof23234 : IsMapEvaluation generatorImages reduction23234.relations [7,2136] reduction23234.output := by lin_cert using reduction23234.terms
def image23235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23235 : InImage map_25_260 image23235 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction23235 : Bundle := named_bundle% "RealMapCertificates/relations/basis23235.json"
theorem reductionProof23235 : EqualModuloRelations reduction23235.relations reduction23235.input reduction23235.output := by lin_cert using reduction23235.terms
theorem substitutionProof23235 : IsMapEvaluation generatorImages reduction23235.relations [1,3,2349] reduction23235.output := by lin_cert using reduction23235.terms
def image23236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23236 : InImage map_25_260 image23236 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction23236 : Bundle := named_bundle% "RealMapCertificates/relations/basis23236.json"
theorem reductionProof23236 : EqualModuloRelations reduction23236.relations reduction23236.input reduction23236.output := by lin_cert using reduction23236.terms
theorem substitutionProof23236 : IsMapEvaluation generatorImages reduction23236.relations [0,2752] reduction23236.output := by lin_cert using reduction23236.terms
def image23237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23237 : InImage map_25_260 image23237 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction23237 : Bundle := named_bundle% "RealMapCertificates/relations/basis23237.json"
theorem reductionProof23237 : EqualModuloRelations reduction23237.relations reduction23237.input reduction23237.output := by lin_cert using reduction23237.terms
theorem substitutionProof23237 : IsMapEvaluation generatorImages reduction23237.relations [0,67,1097] reduction23237.output := by lin_cert using reduction23237.terms
def image23238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23238 : InImage map_25_260 image23238 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction23238 : Bundle := named_bundle% "RealMapCertificates/relations/basis23238.json"
theorem reductionProof23238 : EqualModuloRelations reduction23238.relations reduction23238.input reduction23238.output := by lin_cert using reduction23238.terms
theorem substitutionProof23238 : IsMapEvaluation generatorImages reduction23238.relations [0,3,67,965] reduction23238.output := by lin_cert using reduction23238.terms
def image23239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23239 : InImage map_25_260 image23239 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction23239 : Bundle := named_bundle% "RealMapCertificates/relations/basis23239.json"
theorem reductionProof23239 : EqualModuloRelations reduction23239.relations reduction23239.input reduction23239.output := by lin_cert using reduction23239.terms
theorem substitutionProof23239 : IsMapEvaluation generatorImages reduction23239.relations [0,0,0,0,0,0,0,0,2430] reduction23239.output := by lin_cert using reduction23239.terms
def map_25_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23674 : InImage map_25_261 image23674 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23674 : Bundle := named_bundle% "RealMapCertificates/relations/basis23674.json"
theorem reductionProof23674 : EqualModuloRelations reduction23674.relations reduction23674.input reduction23674.output := by lin_cert using reduction23674.terms
theorem substitutionProof23674 : IsMapEvaluation generatorImages reduction23674.relations [2871] reduction23674.output := by lin_cert using reduction23674.terms
def image23675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23675 : InImage map_25_261 image23675 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23675 : Bundle := named_bundle% "RealMapCertificates/relations/basis23675.json"
theorem reductionProof23675 : EqualModuloRelations reduction23675.relations reduction23675.input reduction23675.output := by lin_cert using reduction23675.terms
theorem substitutionProof23675 : IsMapEvaluation generatorImages reduction23675.relations [333,359] reduction23675.output := by lin_cert using reduction23675.terms
def image23676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23676 : InImage map_25_261 image23676 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23676 : Bundle := named_bundle% "RealMapCertificates/relations/basis23676.json"
theorem reductionProof23676 : EqualModuloRelations reduction23676.relations reduction23676.input reduction23676.output := by lin_cert using reduction23676.terms
theorem substitutionProof23676 : IsMapEvaluation generatorImages reduction23676.relations [13,1913] reduction23676.output := by lin_cert using reduction23676.terms
def image23677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23677 : InImage map_25_261 image23677 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23677 : Bundle := named_bundle% "RealMapCertificates/relations/basis23677.json"
theorem reductionProof23677 : EqualModuloRelations reduction23677.relations reduction23677.input reduction23677.output := by lin_cert using reduction23677.terms
theorem substitutionProof23677 : IsMapEvaluation generatorImages reduction23677.relations [3,2450] reduction23677.output := by lin_cert using reduction23677.terms
def image23678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23678 : InImage map_25_261 image23678 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23678 : Bundle := named_bundle% "RealMapCertificates/relations/basis23678.json"
theorem reductionProof23678 : EqualModuloRelations reduction23678.relations reduction23678.input reduction23678.output := by lin_cert using reduction23678.terms
theorem substitutionProof23678 : IsMapEvaluation generatorImages reduction23678.relations [0,2812] reduction23678.output := by lin_cert using reduction23678.terms
def image23679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23679 : InImage map_25_261 image23679 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23679 : Bundle := named_bundle% "RealMapCertificates/relations/basis23679.json"
theorem reductionProof23679 : EqualModuloRelations reduction23679.relations reduction23679.input reduction23679.output := by lin_cert using reduction23679.terms
theorem substitutionProof23679 : IsMapEvaluation generatorImages reduction23679.relations [0,0,2758] reduction23679.output := by lin_cert using reduction23679.terms
def image23680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23680 : InImage map_25_261 image23680 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23680 : Bundle := named_bundle% "RealMapCertificates/relations/basis23680.json"
theorem reductionProof23680 : EqualModuloRelations reduction23680.relations reduction23680.input reduction23680.output := by lin_cert using reduction23680.terms
theorem substitutionProof23680 : IsMapEvaluation generatorImages reduction23680.relations [0,0,2757] reduction23680.output := by lin_cert using reduction23680.terms
def image23681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23681 : InImage map_25_261 image23681 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23681 : Bundle := named_bundle% "RealMapCertificates/relations/basis23681.json"
theorem reductionProof23681 : EqualModuloRelations reduction23681.relations reduction23681.input reduction23681.output := by lin_cert using reduction23681.terms
theorem substitutionProof23681 : IsMapEvaluation generatorImages reduction23681.relations [0,0,2755] reduction23681.output := by lin_cert using reduction23681.terms
def image23682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23682 : InImage map_25_261 image23682 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23682 : Bundle := named_bundle% "RealMapCertificates/relations/basis23682.json"
theorem reductionProof23682 : EqualModuloRelations reduction23682.relations reduction23682.input reduction23682.output := by lin_cert using reduction23682.terms
theorem substitutionProof23682 : IsMapEvaluation generatorImages reduction23682.relations [0,0,2,2560] reduction23682.output := by lin_cert using reduction23682.terms
def map_26_26 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image77 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation77 : InImage map_26_26 image77 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction77 : Bundle := named_bundle% "RealMapCertificates/relations/basis77.json"
theorem reductionProof77 : EqualModuloRelations reduction77.relations reduction77.input reduction77.output := by lin_cert using reduction77.terms
theorem substitutionProof77 : IsMapEvaluation generatorImages reduction77.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction77.output := by lin_cert using reduction77.terms
def map_26_76 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image627 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation627 : InImage map_26_76 image627 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction627 : Bundle := named_bundle% "RealMapCertificates/relations/basis627.json"
theorem reductionProof627 : EqualModuloRelations reduction627.relations reduction627.input reduction627.output := by lin_cert using reduction627.terms
theorem substitutionProof627 : IsMapEvaluation generatorImages reduction627.relations [1,97] reduction627.output := by lin_cert using reduction627.terms
def map_26_77 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image647 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation647 : InImage map_26_77 image647 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction647 : Bundle := named_bundle% "RealMapCertificates/relations/basis647.json"
theorem reductionProof647 : EqualModuloRelations reduction647.relations reduction647.input reduction647.output := by lin_cert using reduction647.terms
theorem substitutionProof647 : IsMapEvaluation generatorImages reduction647.relations [0,102] reduction647.output := by lin_cert using reduction647.terms
def map_26_80 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image709 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation709 : InImage map_26_80 image709 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction709 : Bundle := named_bundle% "RealMapCertificates/relations/basis709.json"
theorem reductionProof709 : EqualModuloRelations reduction709.relations reduction709.input reduction709.output := by lin_cert using reduction709.terms
theorem substitutionProof709 : IsMapEvaluation generatorImages reduction709.relations [0,0,110] reduction709.output := by lin_cert using reduction709.terms
def map_26_81 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation735 : InImage map_26_81 image735 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction735 : Bundle := named_bundle% "RealMapCertificates/relations/basis735.json"
theorem reductionProof735 : EqualModuloRelations reduction735.relations reduction735.input reduction735.output := by lin_cert using reduction735.terms
theorem substitutionProof735 : IsMapEvaluation generatorImages reduction735.relations [0,0,0,111] reduction735.output := by lin_cert using reduction735.terms
def map_26_82 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image761 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation761 : InImage map_26_82 image761 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction761 : Bundle := named_bundle% "RealMapCertificates/relations/basis761.json"
theorem reductionProof761 : EqualModuloRelations reduction761.relations reduction761.input reduction761.output := by lin_cert using reduction761.terms
theorem substitutionProof761 : IsMapEvaluation generatorImages reduction761.relations [1,1,110] reduction761.output := by lin_cert using reduction761.terms
def map_26_83 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image783 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation783 : InImage map_26_83 image783 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction783 : Bundle := named_bundle% "RealMapCertificates/relations/basis783.json"
theorem reductionProof783 : EqualModuloRelations reduction783.relations reduction783.input reduction783.output := by lin_cert using reduction783.terms
theorem substitutionProof783 : IsMapEvaluation generatorImages reduction783.relations [0,0,116] reduction783.output := by lin_cert using reduction783.terms
def map_26_86 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image861 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation861 : InImage map_26_86 image861 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction861 : Bundle := named_bundle% "RealMapCertificates/relations/basis861.json"
theorem reductionProof861 : EqualModuloRelations reduction861.relations reduction861.input reduction861.output := by lin_cert using reduction861.terms
theorem substitutionProof861 : IsMapEvaluation generatorImages reduction861.relations [0,0,8,71] reduction861.output := by lin_cert using reduction861.terms
def map_26_88 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation911 : InImage map_26_88 image911 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction911 : Bundle := named_bundle% "RealMapCertificates/relations/basis911.json"
theorem reductionProof911 : EqualModuloRelations reduction911.relations reduction911.input reduction911.output := by lin_cert using reduction911.terms
theorem substitutionProof911 : IsMapEvaluation generatorImages reduction911.relations [0,0,0,0,17,50] reduction911.output := by lin_cert using reduction911.terms
def map_26_89 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation938 : InImage map_26_89 image938 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction938 : Bundle := named_bundle% "RealMapCertificates/relations/basis938.json"
theorem reductionProof938 : EqualModuloRelations reduction938.relations reduction938.input reduction938.output := by lin_cert using reduction938.terms
theorem substitutionProof938 : IsMapEvaluation generatorImages reduction938.relations [0,0,8,77] reduction938.output := by lin_cert using reduction938.terms
def image939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation939 : InImage map_26_89 image939 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction939 : Bundle := named_bundle% "RealMapCertificates/relations/basis939.json"
theorem reductionProof939 : EqualModuloRelations reduction939.relations reduction939.input reduction939.output := by lin_cert using reduction939.terms
theorem substitutionProof939 : IsMapEvaluation generatorImages reduction939.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction939.output := by lin_cert using reduction939.terms
def map_26_92 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1020 : InImage map_26_92 image1020 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1020 : Bundle := named_bundle% "RealMapCertificates/relations/basis1020.json"
theorem reductionProof1020 : EqualModuloRelations reduction1020.relations reduction1020.input reduction1020.output := by lin_cert using reduction1020.terms
theorem substitutionProof1020 : IsMapEvaluation generatorImages reduction1020.relations [0,0,8,8,49] reduction1020.output := by lin_cert using reduction1020.terms
def map_26_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1096 : InImage map_26_95 image1096 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1096 : Bundle := named_bundle% "RealMapCertificates/relations/basis1096.json"
theorem reductionProof1096 : EqualModuloRelations reduction1096.relations reduction1096.input reduction1096.output := by lin_cert using reduction1096.terms
theorem substitutionProof1096 : IsMapEvaluation generatorImages reduction1096.relations [0,0,0,0,0,0,0,0,137] reduction1096.output := by lin_cert using reduction1096.terms
def map_26_98 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1165 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1165 : InImage map_26_98 image1165 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1165 : Bundle := named_bundle% "RealMapCertificates/relations/basis1165.json"
theorem reductionProof1165 : EqualModuloRelations reduction1165.relations reduction1165.input reduction1165.output := by lin_cert using reduction1165.terms
theorem substitutionProof1165 : IsMapEvaluation generatorImages reduction1165.relations [1,161] reduction1165.output := by lin_cert using reduction1165.terms
def map_26_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1187 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1187 : InImage map_26_99 image1187 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1187 : Bundle := named_bundle% "RealMapCertificates/relations/basis1187.json"
theorem reductionProof1187 : EqualModuloRelations reduction1187.relations reduction1187.input reduction1187.output := by lin_cert using reduction1187.terms
theorem substitutionProof1187 : IsMapEvaluation generatorImages reduction1187.relations [17,78] reduction1187.output := by lin_cert using reduction1187.terms
def map_26_102 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1277 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1277 : InImage map_26_102 image1277 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1277 : Bundle := named_bundle% "RealMapCertificates/relations/basis1277.json"
theorem reductionProof1277 : EqualModuloRelations reduction1277.relations reduction1277.input reduction1277.output := by lin_cert using reduction1277.terms
theorem substitutionProof1277 : IsMapEvaluation generatorImages reduction1277.relations [8,17,50] reduction1277.output := by lin_cert using reduction1277.terms
def map_26_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1379 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1379 : InImage map_26_105 image1379 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1379 : Bundle := named_bundle% "RealMapCertificates/relations/basis1379.json"
theorem reductionProof1379 : EqualModuloRelations reduction1379.relations reduction1379.input reduction1379.output := by lin_cert using reduction1379.terms
theorem substitutionProof1379 : IsMapEvaluation generatorImages reduction1379.relations [8,17,56] reduction1379.output := by lin_cert using reduction1379.terms
def map_26_108 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1477 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1477 : InImage map_26_108 image1477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1477 : Bundle := named_bundle% "RealMapCertificates/relations/basis1477.json"
theorem reductionProof1477 : EqualModuloRelations reduction1477.relations reduction1477.input reduction1477.output := by lin_cert using reduction1477.terms
theorem substitutionProof1477 : IsMapEvaluation generatorImages reduction1477.relations [8,16,17,17] reduction1477.output := by lin_cert using reduction1477.terms
def map_26_111 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1597 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1597 : InImage map_26_111 image1597 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1597 : Bundle := named_bundle% "RealMapCertificates/relations/basis1597.json"
theorem reductionProof1597 : EqualModuloRelations reduction1597.relations reduction1597.input reduction1597.output := by lin_cert using reduction1597.terms
theorem substitutionProof1597 : IsMapEvaluation generatorImages reduction1597.relations [224] reduction1597.output := by lin_cert using reduction1597.terms
def image1598 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1598 : InImage map_26_111 image1598 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1598 : Bundle := named_bundle% "RealMapCertificates/relations/basis1598.json"
theorem reductionProof1598 : EqualModuloRelations reduction1598.relations reduction1598.input reduction1598.output := by lin_cert using reduction1598.terms
theorem substitutionProof1598 : IsMapEvaluation generatorImages reduction1598.relations [8,8,17,40] reduction1598.output := by lin_cert using reduction1598.terms
def map_26_112 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1639 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1639 : InImage map_26_112 image1639 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1639 : Bundle := named_bundle% "RealMapCertificates/relations/basis1639.json"
theorem reductionProof1639 : EqualModuloRelations reduction1639.relations reduction1639.input reduction1639.output := by lin_cert using reduction1639.terms
theorem substitutionProof1639 : IsMapEvaluation generatorImages reduction1639.relations [0,225] reduction1639.output := by lin_cert using reduction1639.terms
def map_26_114 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image1710 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1710 : InImage map_26_114 image1710 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1710 : Bundle := named_bundle% "RealMapCertificates/relations/basis1710.json"
theorem reductionProof1710 : EqualModuloRelations reduction1710.relations reduction1710.input reduction1710.output := by lin_cert using reduction1710.terms
theorem substitutionProof1710 : IsMapEvaluation generatorImages reduction1710.relations [237] reduction1710.output := by lin_cert using reduction1710.terms
def image1711 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1711 : InImage map_26_114 image1711 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1711 : Bundle := named_bundle% "RealMapCertificates/relations/basis1711.json"
theorem reductionProof1711 : EqualModuloRelations reduction1711.relations reduction1711.input reduction1711.output := by lin_cert using reduction1711.terms
theorem substitutionProof1711 : IsMapEvaluation generatorImages reduction1711.relations [8,8,8,17,17] reduction1711.output := by lin_cert using reduction1711.terms
def map_26_115 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1749 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1749 : InImage map_26_115 image1749 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1749 : Bundle := named_bundle% "RealMapCertificates/relations/basis1749.json"
theorem reductionProof1749 : EqualModuloRelations reduction1749.relations reduction1749.input reduction1749.output := by lin_cert using reduction1749.terms
theorem substitutionProof1749 : IsMapEvaluation generatorImages reduction1749.relations [0,238] reduction1749.output := by lin_cert using reduction1749.terms
def map_26_117 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image1816 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1816 : InImage map_26_117 image1816 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1816 : Bundle := named_bundle% "RealMapCertificates/relations/basis1816.json"
theorem reductionProof1816 : EqualModuloRelations reduction1816.relations reduction1816.input reduction1816.output := by lin_cert using reduction1816.terms
theorem substitutionProof1816 : IsMapEvaluation generatorImages reduction1816.relations [16,137] reduction1816.output := by lin_cert using reduction1816.terms
def image1817 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1817 : InImage map_26_117 image1817 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1817 : Bundle := named_bundle% "RealMapCertificates/relations/basis1817.json"
theorem reductionProof1817 : EqualModuloRelations reduction1817.relations reduction1817.input reduction1817.output := by lin_cert using reduction1817.terms
theorem substitutionProof1817 : IsMapEvaluation generatorImages reduction1817.relations [8,8,8,17,20] reduction1817.output := by lin_cert using reduction1817.terms
def map_26_118 : Matrix 2 2 := fun i j => ([true,true,false,false] : List Bool)[i.val*2+j.val]!
def image1852 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1852 : InImage map_26_118 image1852 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1852 : Bundle := named_bundle% "RealMapCertificates/relations/basis1852.json"
theorem reductionProof1852 : EqualModuloRelations reduction1852.relations reduction1852.input reduction1852.output := by lin_cert using reduction1852.terms
theorem substitutionProof1852 : IsMapEvaluation generatorImages reduction1852.relations [0,16,138] reduction1852.output := by lin_cert using reduction1852.terms
def image1853 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1853 : InImage map_26_118 image1853 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1853 : Bundle := named_bundle% "RealMapCertificates/relations/basis1853.json"
theorem reductionProof1853 : EqualModuloRelations reduction1853.relations reduction1853.input reduction1853.output := by lin_cert using reduction1853.terms
theorem substitutionProof1853 : IsMapEvaluation generatorImages reduction1853.relations [0,0,244] reduction1853.output := by lin_cert using reduction1853.terms
def map_26_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1892 : InImage map_26_119 image1892 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1892 : Bundle := named_bundle% "RealMapCertificates/relations/basis1892.json"
theorem reductionProof1892 : EqualModuloRelations reduction1892.relations reduction1892.input reduction1892.output := by lin_cert using reduction1892.terms
theorem substitutionProof1892 : IsMapEvaluation generatorImages reduction1892.relations [0,0,17,138] reduction1892.output := by lin_cert using reduction1892.terms
def map_26_120 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image1928 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1928 : InImage map_26_120 image1928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction1928 : Bundle := named_bundle% "RealMapCertificates/relations/basis1928.json"
theorem reductionProof1928 : EqualModuloRelations reduction1928.relations reduction1928.input reduction1928.output := by lin_cert using reduction1928.terms
theorem substitutionProof1928 : IsMapEvaluation generatorImages reduction1928.relations [8,184] reduction1928.output := by lin_cert using reduction1928.terms
def image1929 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1929 : InImage map_26_120 image1929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction1929 : Bundle := named_bundle% "RealMapCertificates/relations/basis1929.json"
theorem reductionProof1929 : EqualModuloRelations reduction1929.relations reduction1929.input reduction1929.output := by lin_cert using reduction1929.terms
theorem substitutionProof1929 : IsMapEvaluation generatorImages reduction1929.relations [8,8,8,16,23] reduction1929.output := by lin_cert using reduction1929.terms
def image1930 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1930 : InImage map_26_120 image1930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction1930 : Bundle := named_bundle% "RealMapCertificates/relations/basis1930.json"
theorem reductionProof1930 : EqualModuloRelations reduction1930.relations reduction1930.input reduction1930.output := by lin_cert using reduction1930.terms
theorem substitutionProof1930 : IsMapEvaluation generatorImages reduction1930.relations [1,1,244] reduction1930.output := by lin_cert using reduction1930.terms
def image1931 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1931 : InImage map_26_120 image1931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction1931 : Bundle := named_bundle% "RealMapCertificates/relations/basis1931.json"
theorem reductionProof1931 : EqualModuloRelations reduction1931.relations reduction1931.input reduction1931.output := by lin_cert using reduction1931.terms
theorem substitutionProof1931 : IsMapEvaluation generatorImages reduction1931.relations [0,0,0,0,245] reduction1931.output := by lin_cert using reduction1931.terms
def map_26_121 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image1978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1978 : InImage map_26_121 image1978 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction1978 : Bundle := named_bundle% "RealMapCertificates/relations/basis1978.json"
theorem reductionProof1978 : EqualModuloRelations reduction1978.relations reduction1978.input reduction1978.output := by lin_cert using reduction1978.terms
theorem substitutionProof1978 : IsMapEvaluation generatorImages reduction1978.relations [0,8,185] reduction1978.output := by lin_cert using reduction1978.terms
def image1979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1979 : InImage map_26_121 image1979 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction1979 : Bundle := named_bundle% "RealMapCertificates/relations/basis1979.json"
theorem reductionProof1979 : EqualModuloRelations reduction1979.relations reduction1979.input reduction1979.output := by lin_cert using reduction1979.terms
theorem substitutionProof1979 : IsMapEvaluation generatorImages reduction1979.relations [0,0,257] reduction1979.output := by lin_cert using reduction1979.terms
def image1980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1980 : InImage map_26_121 image1980 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction1980 : Bundle := named_bundle% "RealMapCertificates/relations/basis1980.json"
theorem reductionProof1980 : EqualModuloRelations reduction1980.relations reduction1980.input reduction1980.output := by lin_cert using reduction1980.terms
theorem substitutionProof1980 : IsMapEvaluation generatorImages reduction1980.relations [0,0,0,0,0,246] reduction1980.output := by lin_cert using reduction1980.terms
def map_26_123 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2049 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2049 : InImage map_26_123 image2049 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2049 : Bundle := named_bundle% "RealMapCertificates/relations/basis2049.json"
theorem reductionProof2049 : EqualModuloRelations reduction2049.relations reduction2049.input reduction2049.output := by lin_cert using reduction2049.terms
theorem substitutionProof2049 : IsMapEvaluation generatorImages reduction2049.relations [8,8,137] reduction2049.output := by lin_cert using reduction2049.terms
def image2050 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2050 : InImage map_26_123 image2050 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2050 : Bundle := named_bundle% "RealMapCertificates/relations/basis2050.json"
theorem reductionProof2050 : EqualModuloRelations reduction2050.relations reduction2050.input reduction2050.output := by lin_cert using reduction2050.terms
theorem substitutionProof2050 : IsMapEvaluation generatorImages reduction2050.relations [8,8,8,8,45] reduction2050.output := by lin_cert using reduction2050.terms
def map_26_124 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2097 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2097 : InImage map_26_124 image2097 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2097 : Bundle := named_bundle% "RealMapCertificates/relations/basis2097.json"
theorem reductionProof2097 : EqualModuloRelations reduction2097.relations reduction2097.input reduction2097.output := by lin_cert using reduction2097.terms
theorem substitutionProof2097 : IsMapEvaluation generatorImages reduction2097.relations [0,8,8,138] reduction2097.output := by lin_cert using reduction2097.terms
def image2098 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2098 : InImage map_26_124 image2098 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2098 : Bundle := named_bundle% "RealMapCertificates/relations/basis2098.json"
theorem reductionProof2098 : EqualModuloRelations reduction2098.relations reduction2098.input reduction2098.output := by lin_cert using reduction2098.terms
theorem substitutionProof2098 : IsMapEvaluation generatorImages reduction2098.relations [0,0,16,149] reduction2098.output := by lin_cert using reduction2098.terms
def map_26_125 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2135 : InImage map_26_125 image2135 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2135 : Bundle := named_bundle% "RealMapCertificates/relations/basis2135.json"
theorem reductionProof2135 : EqualModuloRelations reduction2135.relations reduction2135.input reduction2135.output := by lin_cert using reduction2135.terms
theorem substitutionProof2135 : IsMapEvaluation generatorImages reduction2135.relations [0,0,0,17,149] reduction2135.output := by lin_cert using reduction2135.terms
def map_26_126 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image2179 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2179 : InImage map_26_126 image2179 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2179 : Bundle := named_bundle% "RealMapCertificates/relations/basis2179.json"
theorem reductionProof2179 : EqualModuloRelations reduction2179.relations reduction2179.input reduction2179.output := by lin_cert using reduction2179.terms
theorem substitutionProof2179 : IsMapEvaluation generatorImages reduction2179.relations [8,8,146] reduction2179.output := by lin_cert using reduction2179.terms
def image2180 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2180 : InImage map_26_126 image2180 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2180 : Bundle := named_bundle% "RealMapCertificates/relations/basis2180.json"
theorem reductionProof2180 : EqualModuloRelations reduction2180.relations reduction2180.input reduction2180.output := by lin_cert using reduction2180.terms
theorem substitutionProof2180 : IsMapEvaluation generatorImages reduction2180.relations [8,8,8,8,8,23] reduction2180.output := by lin_cert using reduction2180.terms
def image2181 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2181 : InImage map_26_126 image2181 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2181 : Bundle := named_bundle% "RealMapCertificates/relations/basis2181.json"
theorem reductionProof2181 : EqualModuloRelations reduction2181.relations reduction2181.input reduction2181.output := by lin_cert using reduction2181.terms
theorem substitutionProof2181 : IsMapEvaluation generatorImages reduction2181.relations [0,0,0,17,154] reduction2181.output := by lin_cert using reduction2181.terms
def map_26_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2231 : InImage map_26_127 image2231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2231 : Bundle := named_bundle% "RealMapCertificates/relations/basis2231.json"
theorem reductionProof2231 : EqualModuloRelations reduction2231.relations reduction2231.input reduction2231.output := by lin_cert using reduction2231.terms
theorem substitutionProof2231 : IsMapEvaluation generatorImages reduction2231.relations [0,8,8,147] reduction2231.output := by lin_cert using reduction2231.terms
def image2232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2232 : InImage map_26_127 image2232 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2232 : Bundle := named_bundle% "RealMapCertificates/relations/basis2232.json"
theorem reductionProof2232 : EqualModuloRelations reduction2232.relations reduction2232.input reduction2232.output := by lin_cert using reduction2232.terms
theorem substitutionProof2232 : IsMapEvaluation generatorImages reduction2232.relations [0,0,0,0,0,0,0,0,260] reduction2232.output := by lin_cert using reduction2232.terms
def map_26_129 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2335 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2335 : InImage map_26_129 image2335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2335 : Bundle := named_bundle% "RealMapCertificates/relations/basis2335.json"
theorem reductionProof2335 : EqualModuloRelations reduction2335.relations reduction2335.input reduction2335.output := by lin_cert using reduction2335.terms
theorem substitutionProof2335 : IsMapEvaluation generatorImages reduction2335.relations [8,8,16,64] reduction2335.output := by lin_cert using reduction2335.terms
def image2336 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2336 : InImage map_26_129 image2336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2336 : Bundle := named_bundle% "RealMapCertificates/relations/basis2336.json"
theorem reductionProof2336 : EqualModuloRelations reduction2336.relations reduction2336.input reduction2336.output := by lin_cert using reduction2336.terms
theorem substitutionProof2336 : IsMapEvaluation generatorImages reduction2336.relations [8,8,8,8,9,23] reduction2336.output := by lin_cert using reduction2336.terms
def map_26_130 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2393 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2393 : InImage map_26_130 image2393 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2393 : Bundle := named_bundle% "RealMapCertificates/relations/basis2393.json"
theorem reductionProof2393 : EqualModuloRelations reduction2393.relations reduction2393.input reduction2393.output := by lin_cert using reduction2393.terms
theorem substitutionProof2393 : IsMapEvaluation generatorImages reduction2393.relations [1,315] reduction2393.output := by lin_cert using reduction2393.terms
def image2394 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2394 : InImage map_26_130 image2394 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2394 : Bundle := named_bundle% "RealMapCertificates/relations/basis2394.json"
theorem reductionProof2394 : EqualModuloRelations reduction2394.relations reduction2394.input reduction2394.output := by lin_cert using reduction2394.terms
theorem substitutionProof2394 : IsMapEvaluation generatorImages reduction2394.relations [0,8,8,17,64] reduction2394.output := by lin_cert using reduction2394.terms
def map_26_131 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2452 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2452 : InImage map_26_131 image2452 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2452 : Bundle := named_bundle% "RealMapCertificates/relations/basis2452.json"
theorem reductionProof2452 : EqualModuloRelations reduction2452.relations reduction2452.input reduction2452.output := by lin_cert using reduction2452.terms
theorem substitutionProof2452 : IsMapEvaluation generatorImages reduction2452.relations [344] reduction2452.output := by lin_cert using reduction2452.terms
def map_26_132 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2519 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2519 : InImage map_26_132 image2519 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2519 : Bundle := named_bundle% "RealMapCertificates/relations/basis2519.json"
theorem reductionProof2519 : EqualModuloRelations reduction2519.relations reduction2519.input reduction2519.output := by lin_cert using reduction2519.terms
theorem substitutionProof2519 : IsMapEvaluation generatorImages reduction2519.relations [8,8,8,112] reduction2519.output := by lin_cert using reduction2519.terms
def image2520 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2520 : InImage map_26_132 image2520 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2520 : Bundle := named_bundle% "RealMapCertificates/relations/basis2520.json"
theorem reductionProof2520 : EqualModuloRelations reduction2520.relations reduction2520.input reduction2520.output := by lin_cert using reduction2520.terms
theorem substitutionProof2520 : IsMapEvaluation generatorImages reduction2520.relations [8,8,8,8,13,23] reduction2520.output := by lin_cert using reduction2520.terms
def image2521 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2521 : InImage map_26_132 image2521 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2521 : Bundle := named_bundle% "RealMapCertificates/relations/basis2521.json"
theorem reductionProof2521 : EqualModuloRelations reduction2521.relations reduction2521.input reduction2521.output := by lin_cert using reduction2521.terms
theorem substitutionProof2521 : IsMapEvaluation generatorImages reduction2521.relations [0,0,0,0,0,0,64,64] reduction2521.output := by lin_cert using reduction2521.terms
def map_26_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2591 : InImage map_26_133 image2591 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2591 : Bundle := named_bundle% "RealMapCertificates/relations/basis2591.json"
theorem reductionProof2591 : EqualModuloRelations reduction2591.relations reduction2591.input reduction2591.output := by lin_cert using reduction2591.terms
theorem substitutionProof2591 : IsMapEvaluation generatorImages reduction2591.relations [0,0,0,0,0,0,0,299] reduction2591.output := by lin_cert using reduction2591.terms
def map_26_134 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2650 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2650 : InImage map_26_134 image2650 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2650 : Bundle := named_bundle% "RealMapCertificates/relations/basis2650.json"
theorem reductionProof2650 : EqualModuloRelations reduction2650.relations reduction2650.input reduction2650.output := by lin_cert using reduction2650.terms
theorem substitutionProof2650 : IsMapEvaluation generatorImages reduction2650.relations [8,245] reduction2650.output := by lin_cert using reduction2650.terms
def map_26_135 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2743 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2743 : InImage map_26_135 image2743 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2743 : Bundle := named_bundle% "RealMapCertificates/relations/basis2743.json"
theorem reductionProof2743 : EqualModuloRelations reduction2743.relations reduction2743.input reduction2743.output := by lin_cert using reduction2743.terms
theorem substitutionProof2743 : IsMapEvaluation generatorImages reduction2743.relations [8,8,8,9,13,23] reduction2743.output := by lin_cert using reduction2743.terms
def image2744 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2744 : InImage map_26_135 image2744 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2744 : Bundle := named_bundle% "RealMapCertificates/relations/basis2744.json"
theorem reductionProof2744 : EqualModuloRelations reduction2744.relations reduction2744.input reduction2744.output := by lin_cert using reduction2744.terms
theorem substitutionProof2744 : IsMapEvaluation generatorImages reduction2744.relations [8,8,8,8,64] reduction2744.output := by lin_cert using reduction2744.terms
def image2745 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2745 : InImage map_26_135 image2745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2745 : Bundle := named_bundle% "RealMapCertificates/relations/basis2745.json"
theorem reductionProof2745 : EqualModuloRelations reduction2745.relations reduction2745.input reduction2745.output := by lin_cert using reduction2745.terms
theorem substitutionProof2745 : IsMapEvaluation generatorImages reduction2745.relations [0,0,0,0,0,0,0,0,0,300] reduction2745.output := by lin_cert using reduction2745.terms
def map_26_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2819 : InImage map_26_136 image2819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2819 : Bundle := named_bundle% "RealMapCertificates/relations/basis2819.json"
theorem reductionProof2819 : EqualModuloRelations reduction2819.relations reduction2819.input reduction2819.output := by lin_cert using reduction2819.terms
theorem substitutionProof2819 : IsMapEvaluation generatorImages reduction2819.relations [0,0,0,0,0,0,0,0,317] reduction2819.output := by lin_cert using reduction2819.terms
def map_26_137 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2888 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2888 : InImage map_26_137 image2888 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2888 : Bundle := named_bundle% "RealMapCertificates/relations/basis2888.json"
theorem reductionProof2888 : EqualModuloRelations reduction2888.relations reduction2888.input reduction2888.output := by lin_cert using reduction2888.terms
theorem substitutionProof2888 : IsMapEvaluation generatorImages reduction2888.relations [8,258] reduction2888.output := by lin_cert using reduction2888.terms
def map_26_138 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2971 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2971 : InImage map_26_138 image2971 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2971 : Bundle := named_bundle% "RealMapCertificates/relations/basis2971.json"
theorem reductionProof2971 : EqualModuloRelations reduction2971.relations reduction2971.input reduction2971.output := by lin_cert using reduction2971.terms
theorem substitutionProof2971 : IsMapEvaluation generatorImages reduction2971.relations [8,8,8,13,13,23] reduction2971.output := by lin_cert using reduction2971.terms
def image2972 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2972 : InImage map_26_138 image2972 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2972 : Bundle := named_bundle% "RealMapCertificates/relations/basis2972.json"
theorem reductionProof2972 : EqualModuloRelations reduction2972.relations reduction2972.input reduction2972.output := by lin_cert using reduction2972.terms
theorem substitutionProof2972 : IsMapEvaluation generatorImages reduction2972.relations [8,8,8,8,72] reduction2972.output := by lin_cert using reduction2972.terms
def map_26_140 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3123 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3123 : InImage map_26_140 image3123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3123 : Bundle := named_bundle% "RealMapCertificates/relations/basis3123.json"
theorem reductionProof3123 : EqualModuloRelations reduction3123.relations reduction3123.input reduction3123.output := by lin_cert using reduction3123.terms
theorem substitutionProof3123 : IsMapEvaluation generatorImages reduction3123.relations [8,277] reduction3123.output := by lin_cert using reduction3123.terms
def map_26_141 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3225 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3225 : InImage map_26_141 image3225 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3225 : Bundle := named_bundle% "RealMapCertificates/relations/basis3225.json"
theorem reductionProof3225 : EqualModuloRelations reduction3225.relations reduction3225.input reduction3225.output := by lin_cert using reduction3225.terms
theorem substitutionProof3225 : IsMapEvaluation generatorImages reduction3225.relations [8,8,9,13,13,23] reduction3225.output := by lin_cert using reduction3225.terms
def image3226 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3226 : InImage map_26_141 image3226 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3226 : Bundle := named_bundle% "RealMapCertificates/relations/basis3226.json"
theorem reductionProof3226 : EqualModuloRelations reduction3226.relations reduction3226.input reduction3226.output := by lin_cert using reduction3226.terms
theorem substitutionProof3226 : IsMapEvaluation generatorImages reduction3226.relations [8,8,8,8,79] reduction3226.output := by lin_cert using reduction3226.terms
def map_26_142 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3301 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3301 : InImage map_26_142 image3301 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3301 : Bundle := named_bundle% "RealMapCertificates/relations/basis3301.json"
theorem reductionProof3301 : EqualModuloRelations reduction3301.relations reduction3301.input reduction3301.output := by lin_cert using reduction3301.terms
theorem substitutionProof3301 : IsMapEvaluation generatorImages reduction3301.relations [1,5,64,64] reduction3301.output := by lin_cert using reduction3301.terms
def map_26_143 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3378 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3378 : InImage map_26_143 image3378 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3378 : Bundle := named_bundle% "RealMapCertificates/relations/basis3378.json"
theorem reductionProof3378 : EqualModuloRelations reduction3378.relations reduction3378.input reduction3378.output := by lin_cert using reduction3378.terms
theorem substitutionProof3378 : IsMapEvaluation generatorImages reduction3378.relations [491] reduction3378.output := by lin_cert using reduction3378.terms
def image3379 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3379 : InImage map_26_143 image3379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3379 : Bundle := named_bundle% "RealMapCertificates/relations/basis3379.json"
theorem reductionProof3379 : EqualModuloRelations reduction3379.relations reduction3379.input reduction3379.output := by lin_cert using reduction3379.terms
theorem substitutionProof3379 : IsMapEvaluation generatorImages reduction3379.relations [8,8,207] reduction3379.output := by lin_cert using reduction3379.terms
def map_26_144 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3470 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3470 : InImage map_26_144 image3470 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3470 : Bundle := named_bundle% "RealMapCertificates/relations/basis3470.json"
theorem reductionProof3470 : EqualModuloRelations reduction3470.relations reduction3470.input reduction3470.output := by lin_cert using reduction3470.terms
theorem substitutionProof3470 : IsMapEvaluation generatorImages reduction3470.relations [8,8,13,13,13,23] reduction3470.output := by lin_cert using reduction3470.terms
def image3471 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3471 : InImage map_26_144 image3471 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3471 : Bundle := named_bundle% "RealMapCertificates/relations/basis3471.json"
theorem reductionProof3471 : EqualModuloRelations reduction3471.relations reduction3471.input reduction3471.output := by lin_cert using reduction3471.terms
theorem substitutionProof3471 : IsMapEvaluation generatorImages reduction3471.relations [8,8,8,8,89] reduction3471.output := by lin_cert using reduction3471.terms
def map_26_146 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image3619 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3619 : InImage map_26_146 image3619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3619 : Bundle := named_bundle% "RealMapCertificates/relations/basis3619.json"
theorem reductionProof3619 : EqualModuloRelations reduction3619.relations reduction3619.input reduction3619.output := by lin_cert using reduction3619.terms
theorem substitutionProof3619 : IsMapEvaluation generatorImages reduction3619.relations [516] reduction3619.output := by lin_cert using reduction3619.terms
def image3620 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3620 : InImage map_26_146 image3620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3620 : Bundle := named_bundle% "RealMapCertificates/relations/basis3620.json"
theorem reductionProof3620 : EqualModuloRelations reduction3620.relations reduction3620.input reduction3620.output := by lin_cert using reduction3620.terms
theorem substitutionProof3620 : IsMapEvaluation generatorImages reduction3620.relations [8,8,218] reduction3620.output := by lin_cert using reduction3620.terms
def map_26_147 : Matrix 2 3 := fun i j => ([false,true,false,true,false,false] : List Bool)[i.val*3+j.val]!
def image3732 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3732 : InImage map_26_147 image3732 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3732 : Bundle := named_bundle% "RealMapCertificates/relations/basis3732.json"
theorem reductionProof3732 : EqualModuloRelations reduction3732.relations reduction3732.input reduction3732.output := by lin_cert using reduction3732.terms
theorem substitutionProof3732 : IsMapEvaluation generatorImages reduction3732.relations [529] reduction3732.output := by lin_cert using reduction3732.terms
def image3733 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3733 : InImage map_26_147 image3733 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3733 : Bundle := named_bundle% "RealMapCertificates/relations/basis3733.json"
theorem reductionProof3733 : EqualModuloRelations reduction3733.relations reduction3733.input reduction3733.output := by lin_cert using reduction3733.terms
theorem substitutionProof3733 : IsMapEvaluation generatorImages reduction3733.relations [8,9,13,13,13,23] reduction3733.output := by lin_cert using reduction3733.terms
def image3734 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3734 : InImage map_26_147 image3734 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3734 : Bundle := named_bundle% "RealMapCertificates/relations/basis3734.json"
theorem reductionProof3734 : EqualModuloRelations reduction3734.relations reduction3734.input reduction3734.output := by lin_cert using reduction3734.terms
theorem substitutionProof3734 : IsMapEvaluation generatorImages reduction3734.relations [8,8,8,8,101] reduction3734.output := by lin_cert using reduction3734.terms
def map_26_149 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3891 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3891 : InImage map_26_149 image3891 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3891 : Bundle := named_bundle% "RealMapCertificates/relations/basis3891.json"
theorem reductionProof3891 : EqualModuloRelations reduction3891.relations reduction3891.input reduction3891.output := by lin_cert using reduction3891.terms
theorem substitutionProof3891 : IsMapEvaluation generatorImages reduction3891.relations [16,260] reduction3891.output := by lin_cert using reduction3891.terms
def image3892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3892 : InImage map_26_149 image3892 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3892 : Bundle := named_bundle% "RealMapCertificates/relations/basis3892.json"
theorem reductionProof3892 : EqualModuloRelations reduction3892.relations reduction3892.input reduction3892.output := by lin_cert using reduction3892.terms
theorem substitutionProof3892 : IsMapEvaluation generatorImages reduction3892.relations [8,8,233] reduction3892.output := by lin_cert using reduction3892.terms
def map_26_150 : Matrix 2 4 := fun i j => ([false,true,false,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image3988 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3988 : InImage map_26_150 image3988 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3988 : Bundle := named_bundle% "RealMapCertificates/relations/basis3988.json"
theorem reductionProof3988 : EqualModuloRelations reduction3988.relations reduction3988.input reduction3988.output := by lin_cert using reduction3988.terms
theorem substitutionProof3988 : IsMapEvaluation generatorImages reduction3988.relations [557] reduction3988.output := by lin_cert using reduction3988.terms
def image3989 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3989 : InImage map_26_150 image3989 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3989 : Bundle := named_bundle% "RealMapCertificates/relations/basis3989.json"
theorem reductionProof3989 : EqualModuloRelations reduction3989.relations reduction3989.input reduction3989.output := by lin_cert using reduction3989.terms
theorem substitutionProof3989 : IsMapEvaluation generatorImages reduction3989.relations [8,13,13,13,13,23] reduction3989.output := by lin_cert using reduction3989.terms
def image3990 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3990 : InImage map_26_150 image3990 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3990 : Bundle := named_bundle% "RealMapCertificates/relations/basis3990.json"
theorem reductionProof3990 : EqualModuloRelations reduction3990.relations reduction3990.input reduction3990.output := by lin_cert using reduction3990.terms
theorem substitutionProof3990 : IsMapEvaluation generatorImages reduction3990.relations [8,8,8,9,101] reduction3990.output := by lin_cert using reduction3990.terms
def image3991 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3991 : InImage map_26_150 image3991 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3991 : Bundle := named_bundle% "RealMapCertificates/relations/basis3991.json"
theorem reductionProof3991 : EqualModuloRelations reduction3991.relations reduction3991.input reduction3991.output := by lin_cert using reduction3991.terms
theorem substitutionProof3991 : IsMapEvaluation generatorImages reduction3991.relations [0,17,260] reduction3991.output := by lin_cert using reduction3991.terms
end RealMapCertificates
