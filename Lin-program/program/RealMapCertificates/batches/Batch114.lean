import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 3 => []
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 33 => []
  | 64 => []
  | 69 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 168 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 255 => []
  | 260 => []
  | 267 => []
  | 278 => []
  | 279 => []
  | 291 => []
  | 292 => []
  | 303 => []
  | 316 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 380 => []
  | 382 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 454 => []
  | 471 => []
  | 499 => []
  | 500 => []
  | 517 => []
  | 558 => []
  | 585 => []
  | 586 => []
  | 598 => [[0,6,9,12,12]]
  | 600 => []
  | 601 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 644 => []
  | 645 => []
  | 654 => []
  | 655 => []
  | 690 => []
  | 715 => [[7,7,7,12,12]]
  | 743 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 797 => []
  | 810 => []
  | 811 => []
  | 832 => []
  | 853 => []
  | 855 => []
  | 898 => []
  | 958 => []
  | 963 => []
  | _ => []
def map_26_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4092 : InImage map_26_151 image4092 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4092 : Bundle := named_bundle% "RealMapCertificates/relations/basis4092.json"
theorem reductionProof4092 : EqualModuloRelations reduction4092.relations reduction4092.input reduction4092.output := by lin_cert using reduction4092.terms
theorem substitutionProof4092 : IsMapEvaluation generatorImages reduction4092.relations [0,558] reduction4092.output := by lin_cert using reduction4092.terms
def map_26_152 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image4164 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4164 : InImage map_26_152 image4164 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4164 : Bundle := named_bundle% "RealMapCertificates/relations/basis4164.json"
theorem reductionProof4164 : EqualModuloRelations reduction4164.relations reduction4164.input reduction4164.output := by lin_cert using reduction4164.terms
theorem substitutionProof4164 : IsMapEvaluation generatorImages reduction4164.relations [8,380] reduction4164.output := by lin_cert using reduction4164.terms
def image4165 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4165 : InImage map_26_152 image4165 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4165 : Bundle := named_bundle% "RealMapCertificates/relations/basis4165.json"
theorem reductionProof4165 : EqualModuloRelations reduction4165.relations reduction4165.input reduction4165.output := by lin_cert using reduction4165.terms
theorem substitutionProof4165 : IsMapEvaluation generatorImages reduction4165.relations [8,8,248] reduction4165.output := by lin_cert using reduction4165.terms
def image4166 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4166 : InImage map_26_152 image4166 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4166 : Bundle := named_bundle% "RealMapCertificates/relations/basis4166.json"
theorem reductionProof4166 : EqualModuloRelations reduction4166.relations reduction4166.input reduction4166.output := by lin_cert using reduction4166.terms
theorem substitutionProof4166 : IsMapEvaluation generatorImages reduction4166.relations [1,558] reduction4166.output := by lin_cert using reduction4166.terms
def image4167 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4167 : InImage map_26_152 image4167 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4167 : Bundle := named_bundle% "RealMapCertificates/relations/basis4167.json"
theorem reductionProof4167 : EqualModuloRelations reduction4167.relations reduction4167.input reduction4167.output := by lin_cert using reduction4167.terms
theorem substitutionProof4167 : IsMapEvaluation generatorImages reduction4167.relations [0,0,0,0,0,0,0,0,500] reduction4167.output := by lin_cert using reduction4167.terms
def map_26_153 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image4272 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4272 : InImage map_26_153 image4272 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4272 : Bundle := named_bundle% "RealMapCertificates/relations/basis4272.json"
theorem reductionProof4272 : EqualModuloRelations reduction4272.relations reduction4272.input reduction4272.output := by lin_cert using reduction4272.terms
theorem substitutionProof4272 : IsMapEvaluation generatorImages reduction4272.relations [9,13,13,13,13,23] reduction4272.output := by lin_cert using reduction4272.terms
def image4273 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4273 : InImage map_26_153 image4273 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4273 : Bundle := named_bundle% "RealMapCertificates/relations/basis4273.json"
theorem reductionProof4273 : EqualModuloRelations reduction4273.relations reduction4273.input reduction4273.output := by lin_cert using reduction4273.terms
theorem substitutionProof4273 : IsMapEvaluation generatorImages reduction4273.relations [8,404] reduction4273.output := by lin_cert using reduction4273.terms
def image4274 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4274 : InImage map_26_153 image4274 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4274 : Bundle := named_bundle% "RealMapCertificates/relations/basis4274.json"
theorem reductionProof4274 : EqualModuloRelations reduction4274.relations reduction4274.input reduction4274.output := by lin_cert using reduction4274.terms
theorem substitutionProof4274 : IsMapEvaluation generatorImages reduction4274.relations [8,8,8,13,101] reduction4274.output := by lin_cert using reduction4274.terms
def image4275 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4275 : InImage map_26_153 image4275 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4275 : Bundle := named_bundle% "RealMapCertificates/relations/basis4275.json"
theorem reductionProof4275 : EqualModuloRelations reduction4275.relations reduction4275.input reduction4275.output := by lin_cert using reduction4275.terms
theorem substitutionProof4275 : IsMapEvaluation generatorImages reduction4275.relations [0,17,278] reduction4275.output := by lin_cert using reduction4275.terms
def image4276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4276 : InImage map_26_153 image4276 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4276 : Bundle := named_bundle% "RealMapCertificates/relations/basis4276.json"
theorem reductionProof4276 : EqualModuloRelations reduction4276.relations reduction4276.input reduction4276.output := by lin_cert using reduction4276.terms
theorem substitutionProof4276 : IsMapEvaluation generatorImages reduction4276.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4276.output := by lin_cert using reduction4276.terms
def map_26_155 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4419 : InImage map_26_155 image4419 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4419 : Bundle := named_bundle% "RealMapCertificates/relations/basis4419.json"
theorem reductionProof4419 : EqualModuloRelations reduction4419.relations reduction4419.input reduction4419.output := by lin_cert using reduction4419.terms
theorem substitutionProof4419 : IsMapEvaluation generatorImages reduction4419.relations [64,149] reduction4419.output := by lin_cert using reduction4419.terms
def image4420 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4420 : InImage map_26_155 image4420 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4420 : Bundle := named_bundle% "RealMapCertificates/relations/basis4420.json"
theorem reductionProof4420 : EqualModuloRelations reduction4420.relations reduction4420.input reduction4420.output := by lin_cert using reduction4420.terms
theorem substitutionProof4420 : IsMapEvaluation generatorImages reduction4420.relations [8,9,248] reduction4420.output := by lin_cert using reduction4420.terms
def image4421 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4421 : InImage map_26_155 image4421 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4421 : Bundle := named_bundle% "RealMapCertificates/relations/basis4421.json"
theorem reductionProof4421 : EqualModuloRelations reduction4421.relations reduction4421.input reduction4421.output := by lin_cert using reduction4421.terms
theorem substitutionProof4421 : IsMapEvaluation generatorImages reduction4421.relations [8,8,260] reduction4421.output := by lin_cert using reduction4421.terms
def map_26_156 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image4518 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4518 : InImage map_26_156 image4518 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4518 : Bundle := named_bundle% "RealMapCertificates/relations/basis4518.json"
theorem reductionProof4518 : EqualModuloRelations reduction4518.relations reduction4518.input reduction4518.output := by lin_cert using reduction4518.terms
theorem substitutionProof4518 : IsMapEvaluation generatorImages reduction4518.relations [13,13,13,13,13,23] reduction4518.output := by lin_cert using reduction4518.terms
def image4519 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4519 : InImage map_26_156 image4519 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4519 : Bundle := named_bundle% "RealMapCertificates/relations/basis4519.json"
theorem reductionProof4519 : EqualModuloRelations reduction4519.relations reduction4519.input reduction4519.output := by lin_cert using reduction4519.terms
theorem substitutionProof4519 : IsMapEvaluation generatorImages reduction4519.relations [8,434] reduction4519.output := by lin_cert using reduction4519.terms
def image4520 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4520 : InImage map_26_156 image4520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4520 : Bundle := named_bundle% "RealMapCertificates/relations/basis4520.json"
theorem reductionProof4520 : EqualModuloRelations reduction4520.relations reduction4520.input reduction4520.output := by lin_cert using reduction4520.terms
theorem substitutionProof4520 : IsMapEvaluation generatorImages reduction4520.relations [8,8,9,13,101] reduction4520.output := by lin_cert using reduction4520.terms
def image4521 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4521 : InImage map_26_156 image4521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4521 : Bundle := named_bundle% "RealMapCertificates/relations/basis4521.json"
theorem reductionProof4521 : EqualModuloRelations reduction4521.relations reduction4521.input reduction4521.output := by lin_cert using reduction4521.terms
theorem substitutionProof4521 : IsMapEvaluation generatorImages reduction4521.relations [0,598] reduction4521.output := by lin_cert using reduction4521.terms
def image4522 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4522 : InImage map_26_156 image4522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4522 : Bundle := named_bundle% "RealMapCertificates/relations/basis4522.json"
theorem reductionProof4522 : EqualModuloRelations reduction4522.relations reduction4522.input reduction4522.output := by lin_cert using reduction4522.terms
theorem substitutionProof4522 : IsMapEvaluation generatorImages reduction4522.relations [0,16,292] reduction4522.output := by lin_cert using reduction4522.terms
def map_26_157 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4608 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4608 : InImage map_26_157 image4608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4608 : Bundle := named_bundle% "RealMapCertificates/relations/basis4608.json"
theorem reductionProof4608 : EqualModuloRelations reduction4608.relations reduction4608.input reduction4608.output := by lin_cert using reduction4608.terms
theorem substitutionProof4608 : IsMapEvaluation generatorImages reduction4608.relations [0,0,17,292] reduction4608.output := by lin_cert using reduction4608.terms
def map_26_158 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image4685 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4685 : InImage map_26_158 image4685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4685 : Bundle := named_bundle% "RealMapCertificates/relations/basis4685.json"
theorem reductionProof4685 : EqualModuloRelations reduction4685.relations reduction4685.input reduction4685.output := by lin_cert using reduction4685.terms
theorem substitutionProof4685 : IsMapEvaluation generatorImages reduction4685.relations [64,160] reduction4685.output := by lin_cert using reduction4685.terms
def image4686 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4686 : InImage map_26_158 image4686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4686 : Bundle := named_bundle% "RealMapCertificates/relations/basis4686.json"
theorem reductionProof4686 : EqualModuloRelations reduction4686.relations reduction4686.input reduction4686.output := by lin_cert using reduction4686.terms
theorem substitutionProof4686 : IsMapEvaluation generatorImages reduction4686.relations [8,13,248] reduction4686.output := by lin_cert using reduction4686.terms
def image4687 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4687 : InImage map_26_158 image4687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4687 : Bundle := named_bundle% "RealMapCertificates/relations/basis4687.json"
theorem reductionProof4687 : EqualModuloRelations reduction4687.relations reduction4687.input reduction4687.output := by lin_cert using reduction4687.terms
theorem substitutionProof4687 : IsMapEvaluation generatorImages reduction4687.relations [8,8,278] reduction4687.output := by lin_cert using reduction4687.terms
def image4688 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4688 : InImage map_26_158 image4688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4688 : Bundle := named_bundle% "RealMapCertificates/relations/basis4688.json"
theorem reductionProof4688 : EqualModuloRelations reduction4688.relations reduction4688.input reduction4688.output := by lin_cert using reduction4688.terms
theorem substitutionProof4688 : IsMapEvaluation generatorImages reduction4688.relations [0,0,0,601] reduction4688.output := by lin_cert using reduction4688.terms
def image4689 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4689 : InImage map_26_158 image4689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4689 : Bundle := named_bundle% "RealMapCertificates/relations/basis4689.json"
theorem reductionProof4689 : EqualModuloRelations reduction4689.relations reduction4689.input reduction4689.output := by lin_cert using reduction4689.terms
theorem substitutionProof4689 : IsMapEvaluation generatorImages reduction4689.relations [0,0,0,600] reduction4689.output := by lin_cert using reduction4689.terms
def map_26_159 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image4793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4793 : InImage map_26_159 image4793 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4793 : Bundle := named_bundle% "RealMapCertificates/relations/basis4793.json"
theorem reductionProof4793 : EqualModuloRelations reduction4793.relations reduction4793.input reduction4793.output := by lin_cert using reduction4793.terms
theorem substitutionProof4793 : IsMapEvaluation generatorImages reduction4793.relations [8,471] reduction4793.output := by lin_cert using reduction4793.terms
def image4794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4794 : InImage map_26_159 image4794 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4794 : Bundle := named_bundle% "RealMapCertificates/relations/basis4794.json"
theorem reductionProof4794 : EqualModuloRelations reduction4794.relations reduction4794.input reduction4794.output := by lin_cert using reduction4794.terms
theorem substitutionProof4794 : IsMapEvaluation generatorImages reduction4794.relations [8,8,13,13,101] reduction4794.output := by lin_cert using reduction4794.terms
def image4795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4795 : InImage map_26_159 image4795 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4795 : Bundle := named_bundle% "RealMapCertificates/relations/basis4795.json"
theorem reductionProof4795 : EqualModuloRelations reduction4795.relations reduction4795.input reduction4795.output := by lin_cert using reduction4795.terms
theorem substitutionProof4795 : IsMapEvaluation generatorImages reduction4795.relations [0,8,454] reduction4795.output := by lin_cert using reduction4795.terms
def image4796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4796 : InImage map_26_159 image4796 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4796 : Bundle := named_bundle% "RealMapCertificates/relations/basis4796.json"
theorem reductionProof4796 : EqualModuloRelations reduction4796.relations reduction4796.input reduction4796.output := by lin_cert using reduction4796.terms
theorem substitutionProof4796 : IsMapEvaluation generatorImages reduction4796.relations [0,0,0,0,0,586] reduction4796.output := by lin_cert using reduction4796.terms
def map_26_161 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4949 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4949 : InImage map_26_161 image4949 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4949 : Bundle := named_bundle% "RealMapCertificates/relations/basis4949.json"
theorem reductionProof4949 : EqualModuloRelations reduction4949.relations reduction4949.input reduction4949.output := by lin_cert using reduction4949.terms
theorem substitutionProof4949 : IsMapEvaluation generatorImages reduction4949.relations [16,347] reduction4949.output := by lin_cert using reduction4949.terms
def image4950 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4950 : InImage map_26_161 image4950 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4950 : Bundle := named_bundle% "RealMapCertificates/relations/basis4950.json"
theorem reductionProof4950 : EqualModuloRelations reduction4950.relations reduction4950.input reduction4950.output := by lin_cert using reduction4950.terms
theorem substitutionProof4950 : IsMapEvaluation generatorImages reduction4950.relations [9,13,248] reduction4950.output := by lin_cert using reduction4950.terms
def image4951 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4951 : InImage map_26_161 image4951 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4951 : Bundle := named_bundle% "RealMapCertificates/relations/basis4951.json"
theorem reductionProof4951 : EqualModuloRelations reduction4951.relations reduction4951.input reduction4951.output := by lin_cert using reduction4951.terms
theorem substitutionProof4951 : IsMapEvaluation generatorImages reduction4951.relations [8,8,291] reduction4951.output := by lin_cert using reduction4951.terms
def map_26_162 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image5057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5057 : InImage map_26_162 image5057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5057 : Bundle := named_bundle% "RealMapCertificates/relations/basis5057.json"
theorem reductionProof5057 : EqualModuloRelations reduction5057.relations reduction5057.input reduction5057.output := by lin_cert using reduction5057.terms
theorem substitutionProof5057 : IsMapEvaluation generatorImages reduction5057.relations [13,13,13,13,13,33] reduction5057.output := by lin_cert using reduction5057.terms
def image5058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5058 : InImage map_26_162 image5058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5058 : Bundle := named_bundle% "RealMapCertificates/relations/basis5058.json"
theorem reductionProof5058 : EqualModuloRelations reduction5058.relations reduction5058.input reduction5058.output := by lin_cert using reduction5058.terms
theorem substitutionProof5058 : IsMapEvaluation generatorImages reduction5058.relations [8,499] reduction5058.output := by lin_cert using reduction5058.terms
def image5059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5059 : InImage map_26_162 image5059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5059 : Bundle := named_bundle% "RealMapCertificates/relations/basis5059.json"
theorem reductionProof5059 : EqualModuloRelations reduction5059.relations reduction5059.input reduction5059.output := by lin_cert using reduction5059.terms
theorem substitutionProof5059 : IsMapEvaluation generatorImages reduction5059.relations [8,9,13,13,101] reduction5059.output := by lin_cert using reduction5059.terms
def image5060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5060 : InImage map_26_162 image5060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5060 : Bundle := named_bundle% "RealMapCertificates/relations/basis5060.json"
theorem reductionProof5060 : EqualModuloRelations reduction5060.relations reduction5060.input reduction5060.output := by lin_cert using reduction5060.terms
theorem substitutionProof5060 : IsMapEvaluation generatorImages reduction5060.relations [0,8,8,292] reduction5060.output := by lin_cert using reduction5060.terms
def image5061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5061 : InImage map_26_162 image5061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5061 : Bundle := named_bundle% "RealMapCertificates/relations/basis5061.json"
theorem reductionProof5061 : EqualModuloRelations reduction5061.relations reduction5061.input reduction5061.output := by lin_cert using reduction5061.terms
theorem substitutionProof5061 : IsMapEvaluation generatorImages reduction5061.relations [0,0,642] reduction5061.output := by lin_cert using reduction5061.terms
def map_26_163 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5153 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5153 : InImage map_26_163 image5153 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5153 : Bundle := named_bundle% "RealMapCertificates/relations/basis5153.json"
theorem reductionProof5153 : EqualModuloRelations reduction5153.relations reduction5153.input reduction5153.output := by lin_cert using reduction5153.terms
theorem substitutionProof5153 : IsMapEvaluation generatorImages reduction5153.relations [0,0,654] reduction5153.output := by lin_cert using reduction5153.terms
def map_26_164 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image5239 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5239 : InImage map_26_164 image5239 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5239 : Bundle := named_bundle% "RealMapCertificates/relations/basis5239.json"
theorem reductionProof5239 : EqualModuloRelations reduction5239.relations reduction5239.input reduction5239.output := by lin_cert using reduction5239.terms
theorem substitutionProof5239 : IsMapEvaluation generatorImages reduction5239.relations [13,13,248] reduction5239.output := by lin_cert using reduction5239.terms
def image5240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5240 : InImage map_26_164 image5240 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5240 : Bundle := named_bundle% "RealMapCertificates/relations/basis5240.json"
theorem reductionProof5240 : EqualModuloRelations reduction5240.relations reduction5240.input reduction5240.output := by lin_cert using reduction5240.terms
theorem substitutionProof5240 : IsMapEvaluation generatorImages reduction5240.relations [8,517] reduction5240.output := by lin_cert using reduction5240.terms
def image5241 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5241 : InImage map_26_164 image5241 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5241 : Bundle := named_bundle% "RealMapCertificates/relations/basis5241.json"
theorem reductionProof5241 : EqualModuloRelations reduction5241.relations reduction5241.input reduction5241.output := by lin_cert using reduction5241.terms
theorem substitutionProof5241 : IsMapEvaluation generatorImages reduction5241.relations [8,8,316] reduction5241.output := by lin_cert using reduction5241.terms
def image5242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5242 : InImage map_26_164 image5242 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5242 : Bundle := named_bundle% "RealMapCertificates/relations/basis5242.json"
theorem reductionProof5242 : EqualModuloRelations reduction5242.relations reduction5242.input reduction5242.output := by lin_cert using reduction5242.terms
theorem substitutionProof5242 : IsMapEvaluation generatorImages reduction5242.relations [1,1,642] reduction5242.output := by lin_cert using reduction5242.terms
def image5243 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5243 : InImage map_26_164 image5243 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5243 : Bundle := named_bundle% "RealMapCertificates/relations/basis5243.json"
theorem reductionProof5243 : EqualModuloRelations reduction5243.relations reduction5243.input reduction5243.output := by lin_cert using reduction5243.terms
theorem substitutionProof5243 : IsMapEvaluation generatorImages reduction5243.relations [0,0,0,0,0,0,627] reduction5243.output := by lin_cert using reduction5243.terms
def map_26_165 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image5366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5366 : InImage map_26_165 image5366 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5366 : Bundle := named_bundle% "RealMapCertificates/relations/basis5366.json"
theorem reductionProof5366 : EqualModuloRelations reduction5366.relations reduction5366.input reduction5366.output := by lin_cert using reduction5366.terms
theorem substitutionProof5366 : IsMapEvaluation generatorImages reduction5366.relations [8,17,255] reduction5366.output := by lin_cert using reduction5366.terms
def image5367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5367 : InImage map_26_165 image5367 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5367 : Bundle := named_bundle% "RealMapCertificates/relations/basis5367.json"
theorem reductionProof5367 : EqualModuloRelations reduction5367.relations reduction5367.input reduction5367.output := by lin_cert using reduction5367.terms
theorem substitutionProof5367 : IsMapEvaluation generatorImages reduction5367.relations [8,13,13,13,101] reduction5367.output := by lin_cert using reduction5367.terms
def image5368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5368 : InImage map_26_165 image5368 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5368 : Bundle := named_bundle% "RealMapCertificates/relations/basis5368.json"
theorem reductionProof5368 : EqualModuloRelations reduction5368.relations reduction5368.input reduction5368.output := by lin_cert using reduction5368.terms
theorem substitutionProof5368 : IsMapEvaluation generatorImages reduction5368.relations [0,0,0,0,0,645] reduction5368.output := by lin_cert using reduction5368.terms
def image5369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5369 : InImage map_26_165 image5369 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5369 : Bundle := named_bundle% "RealMapCertificates/relations/basis5369.json"
theorem reductionProof5369 : EqualModuloRelations reduction5369.relations reduction5369.input reduction5369.output := by lin_cert using reduction5369.terms
theorem substitutionProof5369 : IsMapEvaluation generatorImages reduction5369.relations [0,0,0,0,0,644] reduction5369.output := by lin_cert using reduction5369.terms
def map_26_167 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5564 : InImage map_26_167 image5564 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5564 : Bundle := named_bundle% "RealMapCertificates/relations/basis5564.json"
theorem reductionProof5564 : EqualModuloRelations reduction5564.relations reduction5564.input reduction5564.output := by lin_cert using reduction5564.terms
theorem substitutionProof5564 : IsMapEvaluation generatorImages reduction5564.relations [8,8,347] reduction5564.output := by lin_cert using reduction5564.terms
def image5565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5565 : InImage map_26_167 image5565 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5565 : Bundle := named_bundle% "RealMapCertificates/relations/basis5565.json"
theorem reductionProof5565 : EqualModuloRelations reduction5565.relations reduction5565.input reduction5565.output := by lin_cert using reduction5565.terms
theorem substitutionProof5565 : IsMapEvaluation generatorImages reduction5565.relations [8,8,346] reduction5565.output := by lin_cert using reduction5565.terms
def map_26_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5682 : InImage map_26_168 image5682 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5682 : Bundle := named_bundle% "RealMapCertificates/relations/basis5682.json"
theorem reductionProof5682 : EqualModuloRelations reduction5682.relations reduction5682.input reduction5682.output := by lin_cert using reduction5682.terms
theorem substitutionProof5682 : IsMapEvaluation generatorImages reduction5682.relations [9,13,13,13,101] reduction5682.output := by lin_cert using reduction5682.terms
def image5683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5683 : InImage map_26_168 image5683 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5683 : Bundle := named_bundle% "RealMapCertificates/relations/basis5683.json"
theorem reductionProof5683 : EqualModuloRelations reduction5683.relations reduction5683.input reduction5683.output := by lin_cert using reduction5683.terms
theorem substitutionProof5683 : IsMapEvaluation generatorImages reduction5683.relations [8,8,17,188] reduction5683.output := by lin_cert using reduction5683.terms
def image5684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5684 : InImage map_26_168 image5684 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5684 : Bundle := named_bundle% "RealMapCertificates/relations/basis5684.json"
theorem reductionProof5684 : EqualModuloRelations reduction5684.relations reduction5684.input reduction5684.output := by lin_cert using reduction5684.terms
theorem substitutionProof5684 : IsMapEvaluation generatorImages reduction5684.relations [1,715] reduction5684.output := by lin_cert using reduction5684.terms
def map_26_169 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5788 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5788 : InImage map_26_169 image5788 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5788 : Bundle := named_bundle% "RealMapCertificates/relations/basis5788.json"
theorem reductionProof5788 : EqualModuloRelations reduction5788.relations reduction5788.input reduction5788.output := by lin_cert using reduction5788.terms
theorem substitutionProof5788 : IsMapEvaluation generatorImages reduction5788.relations [753] reduction5788.output := by lin_cert using reduction5788.terms
def image5789 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5789 : InImage map_26_169 image5789 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5789 : Bundle := named_bundle% "RealMapCertificates/relations/basis5789.json"
theorem reductionProof5789 : EqualModuloRelations reduction5789.relations reduction5789.input reduction5789.output := by lin_cert using reduction5789.terms
theorem substitutionProof5789 : IsMapEvaluation generatorImages reduction5789.relations [0,0,0,0,64,187] reduction5789.output := by lin_cert using reduction5789.terms
def map_26_170 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image5896 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5896 : InImage map_26_170 image5896 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5896 : Bundle := named_bundle% "RealMapCertificates/relations/basis5896.json"
theorem reductionProof5896 : EqualModuloRelations reduction5896.relations reduction5896.input reduction5896.output := by lin_cert using reduction5896.terms
theorem substitutionProof5896 : IsMapEvaluation generatorImages reduction5896.relations [13,13,13,168] reduction5896.output := by lin_cert using reduction5896.terms
def image5897 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5897 : InImage map_26_170 image5897 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5897 : Bundle := named_bundle% "RealMapCertificates/relations/basis5897.json"
theorem reductionProof5897 : EqualModuloRelations reduction5897.relations reduction5897.input reduction5897.output := by lin_cert using reduction5897.terms
theorem substitutionProof5897 : IsMapEvaluation generatorImages reduction5897.relations [8,9,346] reduction5897.output := by lin_cert using reduction5897.terms
def image5898 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5898 : InImage map_26_170 image5898 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5898 : Bundle := named_bundle% "RealMapCertificates/relations/basis5898.json"
theorem reductionProof5898 : EqualModuloRelations reduction5898.relations reduction5898.input reduction5898.output := by lin_cert using reduction5898.terms
theorem substitutionProof5898 : IsMapEvaluation generatorImages reduction5898.relations [8,8,382] reduction5898.output := by lin_cert using reduction5898.terms
def image5899 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5899 : InImage map_26_170 image5899 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5899 : Bundle := named_bundle% "RealMapCertificates/relations/basis5899.json"
theorem reductionProof5899 : EqualModuloRelations reduction5899.relations reduction5899.input reduction5899.output := by lin_cert using reduction5899.terms
theorem substitutionProof5899 : IsMapEvaluation generatorImages reduction5899.relations [0,0,0,0,0,64,188] reduction5899.output := by lin_cert using reduction5899.terms
def map_26_171 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6033 : InImage map_26_171 image6033 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6033 : Bundle := named_bundle% "RealMapCertificates/relations/basis6033.json"
theorem reductionProof6033 : EqualModuloRelations reduction6033.relations reduction6033.input reduction6033.output := by lin_cert using reduction6033.terms
theorem substitutionProof6033 : IsMapEvaluation generatorImages reduction6033.relations [13,13,13,13,101] reduction6033.output := by lin_cert using reduction6033.terms
def image6034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6034 : InImage map_26_171 image6034 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6034 : Bundle := named_bundle% "RealMapCertificates/relations/basis6034.json"
theorem reductionProof6034 : EqualModuloRelations reduction6034.relations reduction6034.input reduction6034.output := by lin_cert using reduction6034.terms
theorem substitutionProof6034 : IsMapEvaluation generatorImages reduction6034.relations [8,8,20,188] reduction6034.output := by lin_cert using reduction6034.terms
def map_26_172 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6124 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6124 : InImage map_26_172 image6124 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6124 : Bundle := named_bundle% "RealMapCertificates/relations/basis6124.json"
theorem reductionProof6124 : EqualModuloRelations reduction6124.relations reduction6124.input reduction6124.output := by lin_cert using reduction6124.terms
theorem substitutionProof6124 : IsMapEvaluation generatorImages reduction6124.relations [784] reduction6124.output := by lin_cert using reduction6124.terms
def map_26_173 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image6234 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6234 : InImage map_26_173 image6234 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6234 : Bundle := named_bundle% "RealMapCertificates/relations/basis6234.json"
theorem reductionProof6234 : EqualModuloRelations reduction6234.relations reduction6234.input reduction6234.output := by lin_cert using reduction6234.terms
theorem substitutionProof6234 : IsMapEvaluation generatorImages reduction6234.relations [8,13,346] reduction6234.output := by lin_cert using reduction6234.terms
def image6235 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6235 : InImage map_26_173 image6235 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6235 : Bundle := named_bundle% "RealMapCertificates/relations/basis6235.json"
theorem reductionProof6235 : EqualModuloRelations reduction6235.relations reduction6235.input reduction6235.output := by lin_cert using reduction6235.terms
theorem substitutionProof6235 : IsMapEvaluation generatorImages reduction6235.relations [8,8,16,209] reduction6235.output := by lin_cert using reduction6235.terms
def map_26_174 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6360 : InImage map_26_174 image6360 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6360 : Bundle := named_bundle% "RealMapCertificates/relations/basis6360.json"
theorem reductionProof6360 : EqualModuloRelations reduction6360.relations reduction6360.input reduction6360.output := by lin_cert using reduction6360.terms
theorem substitutionProof6360 : IsMapEvaluation generatorImages reduction6360.relations [8,8,8,267] reduction6360.output := by lin_cert using reduction6360.terms
def image6361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6361 : InImage map_26_174 image6361 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6361 : Bundle := named_bundle% "RealMapCertificates/relations/basis6361.json"
theorem reductionProof6361 : EqualModuloRelations reduction6361.relations reduction6361.input reduction6361.output := by lin_cert using reduction6361.terms
theorem substitutionProof6361 : IsMapEvaluation generatorImages reduction6361.relations [1,5,627] reduction6361.output := by lin_cert using reduction6361.terms
def map_26_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6470 : InImage map_26_175 image6470 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6470 : Bundle := named_bundle% "RealMapCertificates/relations/basis6470.json"
theorem reductionProof6470 : EqualModuloRelations reduction6470.relations reduction6470.input reduction6470.output := by lin_cert using reduction6470.terms
theorem substitutionProof6470 : IsMapEvaluation generatorImages reduction6470.relations [0,810] reduction6470.output := by lin_cert using reduction6470.terms
def image6471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6471 : InImage map_26_175 image6471 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6471 : Bundle := named_bundle% "RealMapCertificates/relations/basis6471.json"
theorem reductionProof6471 : EqualModuloRelations reduction6471.relations reduction6471.input reduction6471.output := by lin_cert using reduction6471.terms
theorem substitutionProof6471 : IsMapEvaluation generatorImages reduction6471.relations [0,0,797] reduction6471.output := by lin_cert using reduction6471.terms
def map_26_176 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6577 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6577 : InImage map_26_176 image6577 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6577 : Bundle := named_bundle% "RealMapCertificates/relations/basis6577.json"
theorem reductionProof6577 : EqualModuloRelations reduction6577.relations reduction6577.input reduction6577.output := by lin_cert using reduction6577.terms
theorem substitutionProof6577 : IsMapEvaluation generatorImages reduction6577.relations [9,13,346] reduction6577.output := by lin_cert using reduction6577.terms
def image6578 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6578 : InImage map_26_176 image6578 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6578 : Bundle := named_bundle% "RealMapCertificates/relations/basis6578.json"
theorem reductionProof6578 : EqualModuloRelations reduction6578.relations reduction6578.input reduction6578.output := by lin_cert using reduction6578.terms
theorem substitutionProof6578 : IsMapEvaluation generatorImages reduction6578.relations [8,8,8,279] reduction6578.output := by lin_cert using reduction6578.terms
def image6579 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6579 : InImage map_26_176 image6579 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6579 : Bundle := named_bundle% "RealMapCertificates/relations/basis6579.json"
theorem reductionProof6579 : EqualModuloRelations reduction6579.relations reduction6579.input reduction6579.output := by lin_cert using reduction6579.terms
theorem substitutionProof6579 : IsMapEvaluation generatorImages reduction6579.relations [0,0,811] reduction6579.output := by lin_cert using reduction6579.terms
def image6580 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6580 : InImage map_26_176 image6580 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6580 : Bundle := named_bundle% "RealMapCertificates/relations/basis6580.json"
theorem reductionProof6580 : EqualModuloRelations reduction6580.relations reduction6580.input reduction6580.output := by lin_cert using reduction6580.terms
theorem substitutionProof6580 : IsMapEvaluation generatorImages reduction6580.relations [0,0,0,0,0,0,64,209] reduction6580.output := by lin_cert using reduction6580.terms
def map_26_177 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6714 : InImage map_26_177 image6714 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6714 : Bundle := named_bundle% "RealMapCertificates/relations/basis6714.json"
theorem reductionProof6714 : EqualModuloRelations reduction6714.relations reduction6714.input reduction6714.output := by lin_cert using reduction6714.terms
theorem substitutionProof6714 : IsMapEvaluation generatorImages reduction6714.relations [8,8,9,267] reduction6714.output := by lin_cert using reduction6714.terms
def map_26_178 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6811 : InImage map_26_178 image6811 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6811 : Bundle := named_bundle% "RealMapCertificates/relations/basis6811.json"
theorem reductionProof6811 : EqualModuloRelations reduction6811.relations reduction6811.input reduction6811.output := by lin_cert using reduction6811.terms
theorem substitutionProof6811 : IsMapEvaluation generatorImages reduction6811.relations [13,585] reduction6811.output := by lin_cert using reduction6811.terms
def image6812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6812 : InImage map_26_178 image6812 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6812 : Bundle := named_bundle% "RealMapCertificates/relations/basis6812.json"
theorem reductionProof6812 : EqualModuloRelations reduction6812.relations reduction6812.input reduction6812.output := by lin_cert using reduction6812.terms
theorem substitutionProof6812 : IsMapEvaluation generatorImages reduction6812.relations [13,13,13,23,83] reduction6812.output := by lin_cert using reduction6812.terms
def image6813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6813 : InImage map_26_178 image6813 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6813 : Bundle := named_bundle% "RealMapCertificates/relations/basis6813.json"
theorem reductionProof6813 : EqualModuloRelations reduction6813.relations reduction6813.input reduction6813.output := by lin_cert using reduction6813.terms
theorem substitutionProof6813 : IsMapEvaluation generatorImages reduction6813.relations [0,853] reduction6813.output := by lin_cert using reduction6813.terms
def image6814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6814 : InImage map_26_178 image6814 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6814 : Bundle := named_bundle% "RealMapCertificates/relations/basis6814.json"
theorem reductionProof6814 : EqualModuloRelations reduction6814.relations reduction6814.input reduction6814.output := by lin_cert using reduction6814.terms
theorem substitutionProof6814 : IsMapEvaluation generatorImages reduction6814.relations [0,0,8,627] reduction6814.output := by lin_cert using reduction6814.terms
def map_26_179 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6940 : InImage map_26_179 image6940 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6940 : Bundle := named_bundle% "RealMapCertificates/relations/basis6940.json"
theorem reductionProof6940 : EqualModuloRelations reduction6940.relations reduction6940.input reduction6940.output := by lin_cert using reduction6940.terms
theorem substitutionProof6940 : IsMapEvaluation generatorImages reduction6940.relations [13,13,346] reduction6940.output := by lin_cert using reduction6940.terms
def image6941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6941 : InImage map_26_179 image6941 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6941 : Bundle := named_bundle% "RealMapCertificates/relations/basis6941.json"
theorem reductionProof6941 : EqualModuloRelations reduction6941.relations reduction6941.input reduction6941.output := by lin_cert using reduction6941.terms
theorem substitutionProof6941 : IsMapEvaluation generatorImages reduction6941.relations [8,8,8,8,209] reduction6941.output := by lin_cert using reduction6941.terms
def image6942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6942 : InImage map_26_179 image6942 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6942 : Bundle := named_bundle% "RealMapCertificates/relations/basis6942.json"
theorem reductionProof6942 : EqualModuloRelations reduction6942.relations reduction6942.input reduction6942.output := by lin_cert using reduction6942.terms
theorem substitutionProof6942 : IsMapEvaluation generatorImages reduction6942.relations [0,0,855] reduction6942.output := by lin_cert using reduction6942.terms
def map_26_180 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7080 : InImage map_26_180 image7080 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7080 : Bundle := named_bundle% "RealMapCertificates/relations/basis7080.json"
theorem reductionProof7080 : EqualModuloRelations reduction7080.relations reduction7080.input reduction7080.output := by lin_cert using reduction7080.terms
theorem substitutionProof7080 : IsMapEvaluation generatorImages reduction7080.relations [64,254] reduction7080.output := by lin_cert using reduction7080.terms
def image7081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7081 : InImage map_26_180 image7081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7081 : Bundle := named_bundle% "RealMapCertificates/relations/basis7081.json"
theorem reductionProof7081 : EqualModuloRelations reduction7081.relations reduction7081.input reduction7081.output := by lin_cert using reduction7081.terms
theorem substitutionProof7081 : IsMapEvaluation generatorImages reduction7081.relations [8,8,13,267] reduction7081.output := by lin_cert using reduction7081.terms
def map_26_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7190 : InImage map_26_181 image7190 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7190 : Bundle := named_bundle% "RealMapCertificates/relations/basis7190.json"
theorem reductionProof7190 : EqualModuloRelations reduction7190.relations reduction7190.input reduction7190.output := by lin_cert using reduction7190.terms
theorem substitutionProof7190 : IsMapEvaluation generatorImages reduction7190.relations [0,0,8,655] reduction7190.output := by lin_cert using reduction7190.terms
def map_26_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7300 : InImage map_26_182 image7300 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7300 : Bundle := named_bundle% "RealMapCertificates/relations/basis7300.json"
theorem reductionProof7300 : EqualModuloRelations reduction7300.relations reduction7300.input reduction7300.output := by lin_cert using reduction7300.terms
theorem substitutionProof7300 : IsMapEvaluation generatorImages reduction7300.relations [8,8,8,9,209] reduction7300.output := by lin_cert using reduction7300.terms
def map_26_183 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7449 : InImage map_26_183 image7449 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7449 : Bundle := named_bundle% "RealMapCertificates/relations/basis7449.json"
theorem reductionProof7449 : EqualModuloRelations reduction7449.relations reduction7449.input reduction7449.output := by lin_cert using reduction7449.terms
theorem substitutionProof7449 : IsMapEvaluation generatorImages reduction7449.relations [8,64,187] reduction7449.output := by lin_cert using reduction7449.terms
def image7450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7450 : InImage map_26_183 image7450 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7450 : Bundle := named_bundle% "RealMapCertificates/relations/basis7450.json"
theorem reductionProof7450 : EqualModuloRelations reduction7450.relations reduction7450.input reduction7450.output := by lin_cert using reduction7450.terms
theorem substitutionProof7450 : IsMapEvaluation generatorImages reduction7450.relations [8,9,13,267] reduction7450.output := by lin_cert using reduction7450.terms
def image7451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7451 : InImage map_26_183 image7451 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7451 : Bundle := named_bundle% "RealMapCertificates/relations/basis7451.json"
theorem reductionProof7451 : EqualModuloRelations reduction7451.relations reduction7451.input reduction7451.output := by lin_cert using reduction7451.terms
theorem substitutionProof7451 : IsMapEvaluation generatorImages reduction7451.relations [0,898] reduction7451.output := by lin_cert using reduction7451.terms
def image7452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7452 : InImage map_26_183 image7452 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7452 : Bundle := named_bundle% "RealMapCertificates/relations/basis7452.json"
theorem reductionProof7452 : EqualModuloRelations reduction7452.relations reduction7452.input reduction7452.output := by lin_cert using reduction7452.terms
theorem substitutionProof7452 : IsMapEvaluation generatorImages reduction7452.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,743] reduction7452.output := by lin_cert using reduction7452.terms
def map_26_184 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7549 : InImage map_26_184 image7549 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7549 : Bundle := named_bundle% "RealMapCertificates/relations/basis7549.json"
theorem reductionProof7549 : EqualModuloRelations reduction7549.relations reduction7549.input reduction7549.output := by lin_cert using reduction7549.terms
theorem substitutionProof7549 : IsMapEvaluation generatorImages reduction7549.relations [9,13,13,13,13,75] reduction7549.output := by lin_cert using reduction7549.terms
def image7550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7550 : InImage map_26_184 image7550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7550 : Bundle := named_bundle% "RealMapCertificates/relations/basis7550.json"
theorem reductionProof7550 : EqualModuloRelations reduction7550.relations reduction7550.input reduction7550.output := by lin_cert using reduction7550.terms
theorem substitutionProof7550 : IsMapEvaluation generatorImages reduction7550.relations [8,69,185] reduction7550.output := by lin_cert using reduction7550.terms
def image7551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7551 : InImage map_26_184 image7551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7551 : Bundle := named_bundle% "RealMapCertificates/relations/basis7551.json"
theorem reductionProof7551 : EqualModuloRelations reduction7551.relations reduction7551.input reduction7551.output := by lin_cert using reduction7551.terms
theorem substitutionProof7551 : IsMapEvaluation generatorImages reduction7551.relations [1,898] reduction7551.output := by lin_cert using reduction7551.terms
def image7552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7552 : InImage map_26_184 image7552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7552 : Bundle := named_bundle% "RealMapCertificates/relations/basis7552.json"
theorem reductionProof7552 : EqualModuloRelations reduction7552.relations reduction7552.input reduction7552.output := by lin_cert using reduction7552.terms
theorem substitutionProof7552 : IsMapEvaluation generatorImages reduction7552.relations [0,0,8,690] reduction7552.output := by lin_cert using reduction7552.terms
def map_26_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7669 : InImage map_26_185 image7669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7669 : Bundle := named_bundle% "RealMapCertificates/relations/basis7669.json"
theorem reductionProof7669 : EqualModuloRelations reduction7669.relations reduction7669.input reduction7669.output := by lin_cert using reduction7669.terms
theorem substitutionProof7669 : IsMapEvaluation generatorImages reduction7669.relations [8,8,8,13,209] reduction7669.output := by lin_cert using reduction7669.terms
def map_26_186 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image7811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7811 : InImage map_26_186 image7811 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7811 : Bundle := named_bundle% "RealMapCertificates/relations/basis7811.json"
theorem reductionProof7811 : EqualModuloRelations reduction7811.relations reduction7811.input reduction7811.output := by lin_cert using reduction7811.terms
theorem substitutionProof7811 : IsMapEvaluation generatorImages reduction7811.relations [958] reduction7811.output := by lin_cert using reduction7811.terms
def image7812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7812 : InImage map_26_186 image7812 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7812 : Bundle := named_bundle% "RealMapCertificates/relations/basis7812.json"
theorem reductionProof7812 : EqualModuloRelations reduction7812.relations reduction7812.input reduction7812.output := by lin_cert using reduction7812.terms
theorem substitutionProof7812 : IsMapEvaluation generatorImages reduction7812.relations [13,23,303] reduction7812.output := by lin_cert using reduction7812.terms
def image7813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7813 : InImage map_26_186 image7813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7813 : Bundle := named_bundle% "RealMapCertificates/relations/basis7813.json"
theorem reductionProof7813 : EqualModuloRelations reduction7813.relations reduction7813.input reduction7813.output := by lin_cert using reduction7813.terms
theorem substitutionProof7813 : IsMapEvaluation generatorImages reduction7813.relations [8,64,201] reduction7813.output := by lin_cert using reduction7813.terms
def image7814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7814 : InImage map_26_186 image7814 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7814 : Bundle := named_bundle% "RealMapCertificates/relations/basis7814.json"
theorem reductionProof7814 : EqualModuloRelations reduction7814.relations reduction7814.input reduction7814.output := by lin_cert using reduction7814.terms
theorem substitutionProof7814 : IsMapEvaluation generatorImages reduction7814.relations [8,13,13,267] reduction7814.output := by lin_cert using reduction7814.terms
def image7815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7815 : InImage map_26_186 image7815 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7815 : Bundle := named_bundle% "RealMapCertificates/relations/basis7815.json"
theorem reductionProof7815 : EqualModuloRelations reduction7815.relations reduction7815.input reduction7815.output := by lin_cert using reduction7815.terms
theorem substitutionProof7815 : IsMapEvaluation generatorImages reduction7815.relations [1,5,64,209] reduction7815.output := by lin_cert using reduction7815.terms
def image7816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7816 : InImage map_26_186 image7816 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7816 : Bundle := named_bundle% "RealMapCertificates/relations/basis7816.json"
theorem reductionProof7816 : EqualModuloRelations reduction7816.relations reduction7816.input reduction7816.output := by lin_cert using reduction7816.terms
theorem substitutionProof7816 : IsMapEvaluation generatorImages reduction7816.relations [0,0,3,832] reduction7816.output := by lin_cert using reduction7816.terms
def map_26_187 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7905 : InImage map_26_187 image7905 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7905 : Bundle := named_bundle% "RealMapCertificates/relations/basis7905.json"
theorem reductionProof7905 : EqualModuloRelations reduction7905.relations reduction7905.input reduction7905.output := by lin_cert using reduction7905.terms
theorem substitutionProof7905 : IsMapEvaluation generatorImages reduction7905.relations [963] reduction7905.output := by lin_cert using reduction7905.terms
def image7906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7906 : InImage map_26_187 image7906 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7906 : Bundle := named_bundle% "RealMapCertificates/relations/basis7906.json"
theorem reductionProof7906 : EqualModuloRelations reduction7906.relations reduction7906.input reduction7906.output := by lin_cert using reduction7906.terms
theorem substitutionProof7906 : IsMapEvaluation generatorImages reduction7906.relations [13,13,13,13,13,75] reduction7906.output := by lin_cert using reduction7906.terms
def image7907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7907 : InImage map_26_187 image7907 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7907 : Bundle := named_bundle% "RealMapCertificates/relations/basis7907.json"
theorem reductionProof7907 : EqualModuloRelations reduction7907.relations reduction7907.input reduction7907.output := by lin_cert using reduction7907.terms
theorem substitutionProof7907 : IsMapEvaluation generatorImages reduction7907.relations [0,0,9,690] reduction7907.output := by lin_cert using reduction7907.terms
end RealMapCertificates
