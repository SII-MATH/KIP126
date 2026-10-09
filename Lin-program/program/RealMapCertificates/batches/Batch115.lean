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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 97 => [[1,4,4,4,4,4,4]]
  | 102 => [[2,4,4,4,4,4,4]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 164 => []
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 181 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 194 => [[7,10,12]]
  | 209 => []
  | 212 => []
  | 250 => []
  | 261 => []
  | 267 => []
  | 286 => []
  | 293 => []
  | 318 => []
  | 324 => []
  | 335 => []
  | 348 => []
  | 349 => []
  | 418 => []
  | 581 => []
  | 610 => []
  | 627 => []
  | 628 => []
  | 640 => []
  | 655 => []
  | 690 => []
  | 729 => []
  | 761 => []
  | 876 => []
  | 877 => []
  | 973 => []
  | 974 => []
  | 975 => []
  | 976 => []
  | 977 => []
  | 978 => []
  | 1035 => []
  | 1051 => []
  | 1063 => []
  | 1078 => []
  | 1079 => []
  | 1080 => []
  | 1081 => []
  | 1084 => []
  | 1105 => []
  | 1122 => []
  | 1146 => []
  | 1147 => []
  | 1149 => []
  | 1168 => []
  | 1169 => []
  | 1182 => []
  | 1244 => []
  | 1247 => []
  | 1258 => []
  | 1263 => []
  | 1304 => []
  | 1350 => []
  | 1369 => []
  | 1386 => []
  | 1405 => []
  | 1406 => []
  | 1428 => []
  | 1442 => []
  | 1474 => []
  | 1475 => []
  | _ => []
def map_26_188 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8010 : InImage map_26_188 image8010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8010 : Bundle := named_bundle% "RealMapCertificates/relations/basis8010.json"
theorem reductionProof8010 : EqualModuloRelations reduction8010.relations reduction8010.input reduction8010.output := by lin_cert using reduction8010.terms
theorem substitutionProof8010 : IsMapEvaluation generatorImages reduction8010.relations [974] reduction8010.output := by lin_cert using reduction8010.terms
def image8011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8011 : InImage map_26_188 image8011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8011 : Bundle := named_bundle% "RealMapCertificates/relations/basis8011.json"
theorem reductionProof8011 : EqualModuloRelations reduction8011.relations reduction8011.input reduction8011.output := by lin_cert using reduction8011.terms
theorem substitutionProof8011 : IsMapEvaluation generatorImages reduction8011.relations [973] reduction8011.output := by lin_cert using reduction8011.terms
def image8012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8012 : InImage map_26_188 image8012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8012 : Bundle := named_bundle% "RealMapCertificates/relations/basis8012.json"
theorem reductionProof8012 : EqualModuloRelations reduction8012.relations reduction8012.input reduction8012.output := by lin_cert using reduction8012.terms
theorem substitutionProof8012 : IsMapEvaluation generatorImages reduction8012.relations [8,8,9,13,209] reduction8012.output := by lin_cert using reduction8012.terms
def map_26_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8167 : InImage map_26_189 image8167 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8167 : Bundle := named_bundle% "RealMapCertificates/relations/basis8167.json"
theorem reductionProof8167 : EqualModuloRelations reduction8167.relations reduction8167.input reduction8167.output := by lin_cert using reduction8167.terms
theorem substitutionProof8167 : IsMapEvaluation generatorImages reduction8167.relations [9,13,13,267] reduction8167.output := by lin_cert using reduction8167.terms
def image8168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8168 : InImage map_26_189 image8168 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8168 : Bundle := named_bundle% "RealMapCertificates/relations/basis8168.json"
theorem reductionProof8168 : EqualModuloRelations reduction8168.relations reduction8168.input reduction8168.output := by lin_cert using reduction8168.terms
theorem substitutionProof8168 : IsMapEvaluation generatorImages reduction8168.relations [8,64,212] reduction8168.output := by lin_cert using reduction8168.terms
def image8169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8169 : InImage map_26_189 image8169 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8169 : Bundle := named_bundle% "RealMapCertificates/relations/basis8169.json"
theorem reductionProof8169 : EqualModuloRelations reduction8169.relations reduction8169.input reduction8169.output := by lin_cert using reduction8169.terms
theorem substitutionProof8169 : IsMapEvaluation generatorImages reduction8169.relations [0,977] reduction8169.output := by lin_cert using reduction8169.terms
def image8170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8170 : InImage map_26_189 image8170 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8170 : Bundle := named_bundle% "RealMapCertificates/relations/basis8170.json"
theorem reductionProof8170 : EqualModuloRelations reduction8170.relations reduction8170.input reduction8170.output := by lin_cert using reduction8170.terms
theorem substitutionProof8170 : IsMapEvaluation generatorImages reduction8170.relations [0,976] reduction8170.output := by lin_cert using reduction8170.terms
def map_26_190 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8265 : InImage map_26_190 image8265 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8265 : Bundle := named_bundle% "RealMapCertificates/relations/basis8265.json"
theorem reductionProof8265 : EqualModuloRelations reduction8265.relations reduction8265.input reduction8265.output := by lin_cert using reduction8265.terms
theorem substitutionProof8265 : IsMapEvaluation generatorImages reduction8265.relations [1,975] reduction8265.output := by lin_cert using reduction8265.terms
def image8266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8266 : InImage map_26_190 image8266 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8266 : Bundle := named_bundle% "RealMapCertificates/relations/basis8266.json"
theorem reductionProof8266 : EqualModuloRelations reduction8266.relations reduction8266.input reduction8266.output := by lin_cert using reduction8266.terms
theorem substitutionProof8266 : IsMapEvaluation generatorImages reduction8266.relations [1,64,293] reduction8266.output := by lin_cert using reduction8266.terms
def image8267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8267 : InImage map_26_190 image8267 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8267 : Bundle := named_bundle% "RealMapCertificates/relations/basis8267.json"
theorem reductionProof8267 : EqualModuloRelations reduction8267.relations reduction8267.input reduction8267.output := by lin_cert using reduction8267.terms
theorem substitutionProof8267 : IsMapEvaluation generatorImages reduction8267.relations [0,0,978] reduction8267.output := by lin_cert using reduction8267.terms
def image8268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8268 : InImage map_26_190 image8268 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8268 : Bundle := named_bundle% "RealMapCertificates/relations/basis8268.json"
theorem reductionProof8268 : EqualModuloRelations reduction8268.relations reduction8268.input reduction8268.output := by lin_cert using reduction8268.terms
theorem substitutionProof8268 : IsMapEvaluation generatorImages reduction8268.relations [0,0,13,690] reduction8268.output := by lin_cert using reduction8268.terms
def map_26_191 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8393 : InImage map_26_191 image8393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8393 : Bundle := named_bundle% "RealMapCertificates/relations/basis8393.json"
theorem reductionProof8393 : EqualModuloRelations reduction8393.relations reduction8393.input reduction8393.output := by lin_cert using reduction8393.terms
theorem substitutionProof8393 : IsMapEvaluation generatorImages reduction8393.relations [1035] reduction8393.output := by lin_cert using reduction8393.terms
def image8394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8394 : InImage map_26_191 image8394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8394 : Bundle := named_bundle% "RealMapCertificates/relations/basis8394.json"
theorem reductionProof8394 : EqualModuloRelations reduction8394.relations reduction8394.input reduction8394.output := by lin_cert using reduction8394.terms
theorem substitutionProof8394 : IsMapEvaluation generatorImages reduction8394.relations [64,318] reduction8394.output := by lin_cert using reduction8394.terms
def image8395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8395 : InImage map_26_191 image8395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8395 : Bundle := named_bundle% "RealMapCertificates/relations/basis8395.json"
theorem reductionProof8395 : EqualModuloRelations reduction8395.relations reduction8395.input reduction8395.output := by lin_cert using reduction8395.terms
theorem substitutionProof8395 : IsMapEvaluation generatorImages reduction8395.relations [8,8,13,13,209] reduction8395.output := by lin_cert using reduction8395.terms
def map_26_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8540 : InImage map_26_192 image8540 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8540 : Bundle := named_bundle% "RealMapCertificates/relations/basis8540.json"
theorem reductionProof8540 : EqualModuloRelations reduction8540.relations reduction8540.input reduction8540.output := by lin_cert using reduction8540.terms
theorem substitutionProof8540 : IsMapEvaluation generatorImages reduction8540.relations [13,13,13,267] reduction8540.output := by lin_cert using reduction8540.terms
def image8541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8541 : InImage map_26_192 image8541 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8541 : Bundle := named_bundle% "RealMapCertificates/relations/basis8541.json"
theorem reductionProof8541 : EqualModuloRelations reduction8541.relations reduction8541.input reduction8541.output := by lin_cert using reduction8541.terms
theorem substitutionProof8541 : IsMapEvaluation generatorImages reduction8541.relations [9,13,13,286] reduction8541.output := by lin_cert using reduction8541.terms
def image8542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8542 : InImage map_26_192 image8542 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8542 : Bundle := named_bundle% "RealMapCertificates/relations/basis8542.json"
theorem reductionProof8542 : EqualModuloRelations reduction8542.relations reduction8542.input reduction8542.output := by lin_cert using reduction8542.terms
theorem substitutionProof8542 : IsMapEvaluation generatorImages reduction8542.relations [8,8,610] reduction8542.output := by lin_cert using reduction8542.terms
def image8543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8543 : InImage map_26_192 image8543 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8543 : Bundle := named_bundle% "RealMapCertificates/relations/basis8543.json"
theorem reductionProof8543 : EqualModuloRelations reduction8543.relations reduction8543.input reduction8543.output := by lin_cert using reduction8543.terms
theorem substitutionProof8543 : IsMapEvaluation generatorImages reduction8543.relations [1,1,978] reduction8543.output := by lin_cert using reduction8543.terms
def map_26_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8640 : InImage map_26_193 image8640 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8640 : Bundle := named_bundle% "RealMapCertificates/relations/basis8640.json"
theorem reductionProof8640 : EqualModuloRelations reduction8640.relations reduction8640.input reduction8640.output := by lin_cert using reduction8640.terms
theorem substitutionProof8640 : IsMapEvaluation generatorImages reduction8640.relations [13,13,13,13,164] reduction8640.output := by lin_cert using reduction8640.terms
def image8641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8641 : InImage map_26_193 image8641 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8641 : Bundle := named_bundle% "RealMapCertificates/relations/basis8641.json"
theorem reductionProof8641 : EqualModuloRelations reduction8641.relations reduction8641.input reduction8641.output := by lin_cert using reduction8641.terms
theorem substitutionProof8641 : IsMapEvaluation generatorImages reduction8641.relations [0,2,978] reduction8641.output := by lin_cert using reduction8641.terms
def map_26_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8770 : InImage map_26_194 image8770 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8770 : Bundle := named_bundle% "RealMapCertificates/relations/basis8770.json"
theorem reductionProof8770 : EqualModuloRelations reduction8770.relations reduction8770.input reduction8770.output := by lin_cert using reduction8770.terms
theorem substitutionProof8770 : IsMapEvaluation generatorImages reduction8770.relations [1078] reduction8770.output := by lin_cert using reduction8770.terms
def image8771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8771 : InImage map_26_194 image8771 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8771 : Bundle := named_bundle% "RealMapCertificates/relations/basis8771.json"
theorem reductionProof8771 : EqualModuloRelations reduction8771.relations reduction8771.input reduction8771.output := by lin_cert using reduction8771.terms
theorem substitutionProof8771 : IsMapEvaluation generatorImages reduction8771.relations [64,348] reduction8771.output := by lin_cert using reduction8771.terms
def image8772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8772 : InImage map_26_194 image8772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8772 : Bundle := named_bundle% "RealMapCertificates/relations/basis8772.json"
theorem reductionProof8772 : EqualModuloRelations reduction8772.relations reduction8772.input reduction8772.output := by lin_cert using reduction8772.terms
theorem substitutionProof8772 : IsMapEvaluation generatorImages reduction8772.relations [23,627] reduction8772.output := by lin_cert using reduction8772.terms
def image8773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8773 : InImage map_26_194 image8773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8773 : Bundle := named_bundle% "RealMapCertificates/relations/basis8773.json"
theorem reductionProof8773 : EqualModuloRelations reduction8773.relations reduction8773.input reduction8773.output := by lin_cert using reduction8773.terms
theorem substitutionProof8773 : IsMapEvaluation generatorImages reduction8773.relations [8,9,13,13,209] reduction8773.output := by lin_cert using reduction8773.terms
def map_26_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8942 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8942 : InImage map_26_195 image8942 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8942 : Bundle := named_bundle% "RealMapCertificates/relations/basis8942.json"
theorem reductionProof8942 : EqualModuloRelations reduction8942.relations reduction8942.input reduction8942.output := by lin_cert using reduction8942.terms
theorem substitutionProof8942 : IsMapEvaluation generatorImages reduction8942.relations [13,13,13,286] reduction8942.output := by lin_cert using reduction8942.terms
def image8943 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8943 : InImage map_26_195 image8943 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8943 : Bundle := named_bundle% "RealMapCertificates/relations/basis8943.json"
theorem reductionProof8943 : EqualModuloRelations reduction8943.relations reduction8943.input reduction8943.output := by lin_cert using reduction8943.terms
theorem substitutionProof8943 : IsMapEvaluation generatorImages reduction8943.relations [8,8,640] reduction8943.output := by lin_cert using reduction8943.terms
def image8944 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8944 : InImage map_26_195 image8944 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8944 : Bundle := named_bundle% "RealMapCertificates/relations/basis8944.json"
theorem reductionProof8944 : EqualModuloRelations reduction8944.relations reduction8944.input reduction8944.output := by lin_cert using reduction8944.terms
theorem substitutionProof8944 : IsMapEvaluation generatorImages reduction8944.relations [0,1079] reduction8944.output := by lin_cert using reduction8944.terms
def image8945 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8945 : InImage map_26_195 image8945 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8945 : Bundle := named_bundle% "RealMapCertificates/relations/basis8945.json"
theorem reductionProof8945 : EqualModuloRelations reduction8945.relations reduction8945.input reduction8945.output := by lin_cert using reduction8945.terms
theorem substitutionProof8945 : IsMapEvaluation generatorImages reduction8945.relations [0,64,349] reduction8945.output := by lin_cert using reduction8945.terms
def map_26_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9044 : InImage map_26_196 image9044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9044 : Bundle := named_bundle% "RealMapCertificates/relations/basis9044.json"
theorem reductionProof9044 : EqualModuloRelations reduction9044.relations reduction9044.input reduction9044.output := by lin_cert using reduction9044.terms
theorem substitutionProof9044 : IsMapEvaluation generatorImages reduction9044.relations [1,1080] reduction9044.output := by lin_cert using reduction9044.terms
def image9045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9045 : InImage map_26_196 image9045 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9045 : Bundle := named_bundle% "RealMapCertificates/relations/basis9045.json"
theorem reductionProof9045 : EqualModuloRelations reduction9045.relations reduction9045.input reduction9045.output := by lin_cert using reduction9045.terms
theorem substitutionProof9045 : IsMapEvaluation generatorImages reduction9045.relations [0,0,1081] reduction9045.output := by lin_cert using reduction9045.terms
def image9046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9046 : InImage map_26_196 image9046 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9046 : Bundle := named_bundle% "RealMapCertificates/relations/basis9046.json"
theorem reductionProof9046 : EqualModuloRelations reduction9046.relations reduction9046.input reduction9046.output := by lin_cert using reduction9046.terms
theorem substitutionProof9046 : IsMapEvaluation generatorImages reduction9046.relations [0,0,0,1063] reduction9046.output := by lin_cert using reduction9046.terms
def map_26_197 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9200 : InImage map_26_197 image9200 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9200 : Bundle := named_bundle% "RealMapCertificates/relations/basis9200.json"
theorem reductionProof9200 : EqualModuloRelations reduction9200.relations reduction9200.input reduction9200.output := by lin_cert using reduction9200.terms
theorem substitutionProof9200 : IsMapEvaluation generatorImages reduction9200.relations [23,655] reduction9200.output := by lin_cert using reduction9200.terms
def image9201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9201 : InImage map_26_197 image9201 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9201 : Bundle := named_bundle% "RealMapCertificates/relations/basis9201.json"
theorem reductionProof9201 : EqualModuloRelations reduction9201.relations reduction9201.input reduction9201.output := by lin_cert using reduction9201.terms
theorem substitutionProof9201 : IsMapEvaluation generatorImages reduction9201.relations [8,64,250] reduction9201.output := by lin_cert using reduction9201.terms
def image9202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9202 : InImage map_26_197 image9202 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9202 : Bundle := named_bundle% "RealMapCertificates/relations/basis9202.json"
theorem reductionProof9202 : EqualModuloRelations reduction9202.relations reduction9202.input reduction9202.output := by lin_cert using reduction9202.terms
theorem substitutionProof9202 : IsMapEvaluation generatorImages reduction9202.relations [8,13,13,13,209] reduction9202.output := by lin_cert using reduction9202.terms
def image9203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9203 : InImage map_26_197 image9203 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9203 : Bundle := named_bundle% "RealMapCertificates/relations/basis9203.json"
theorem reductionProof9203 : EqualModuloRelations reduction9203.relations reduction9203.input reduction9203.output := by lin_cert using reduction9203.terms
theorem substitutionProof9203 : IsMapEvaluation generatorImages reduction9203.relations [0,3,978] reduction9203.output := by lin_cert using reduction9203.terms
def image9204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9204 : InImage map_26_197 image9204 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9204 : Bundle := named_bundle% "RealMapCertificates/relations/basis9204.json"
theorem reductionProof9204 : EqualModuloRelations reduction9204.relations reduction9204.input reduction9204.output := by lin_cert using reduction9204.terms
theorem substitutionProof9204 : IsMapEvaluation generatorImages reduction9204.relations [0,0,0,0,0,1051] reduction9204.output := by lin_cert using reduction9204.terms
def map_26_198 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9389 : InImage map_26_198 image9389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9389 : Bundle := named_bundle% "RealMapCertificates/relations/basis9389.json"
theorem reductionProof9389 : EqualModuloRelations reduction9389.relations reduction9389.input reduction9389.output := by lin_cert using reduction9389.terms
theorem substitutionProof9389 : IsMapEvaluation generatorImages reduction9389.relations [13,13,13,13,189] reduction9389.output := by lin_cert using reduction9389.terms
def image9390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9390 : InImage map_26_198 image9390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9390 : Bundle := named_bundle% "RealMapCertificates/relations/basis9390.json"
theorem reductionProof9390 : EqualModuloRelations reduction9390.relations reduction9390.input reduction9390.output := by lin_cert using reduction9390.terms
theorem substitutionProof9390 : IsMapEvaluation generatorImages reduction9390.relations [8,9,640] reduction9390.output := by lin_cert using reduction9390.terms
def image9391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9391 : InImage map_26_198 image9391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9391 : Bundle := named_bundle% "RealMapCertificates/relations/basis9391.json"
theorem reductionProof9391 : EqualModuloRelations reduction9391.relations reduction9391.input reduction9391.output := by lin_cert using reduction9391.terms
theorem substitutionProof9391 : IsMapEvaluation generatorImages reduction9391.relations [0,1122] reduction9391.output := by lin_cert using reduction9391.terms
def image9392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9392 : InImage map_26_198 image9392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9392 : Bundle := named_bundle% "RealMapCertificates/relations/basis9392.json"
theorem reductionProof9392 : EqualModuloRelations reduction9392.relations reduction9392.input reduction9392.output := by lin_cert using reduction9392.terms
theorem substitutionProof9392 : IsMapEvaluation generatorImages reduction9392.relations [0,0,0,0,1084] reduction9392.output := by lin_cert using reduction9392.terms
def map_26_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9511 : InImage map_26_199 image9511 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9511 : Bundle := named_bundle% "RealMapCertificates/relations/basis9511.json"
theorem reductionProof9511 : EqualModuloRelations reduction9511.relations reduction9511.input reduction9511.output := by lin_cert using reduction9511.terms
theorem substitutionProof9511 : IsMapEvaluation generatorImages reduction9511.relations [149,209] reduction9511.output := by lin_cert using reduction9511.terms
def image9512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9512 : InImage map_26_199 image9512 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9512 : Bundle := named_bundle% "RealMapCertificates/relations/basis9512.json"
theorem reductionProof9512 : EqualModuloRelations reduction9512.relations reduction9512.input reduction9512.output := by lin_cert using reduction9512.terms
theorem substitutionProof9512 : IsMapEvaluation generatorImages reduction9512.relations [0,0,0,1105] reduction9512.output := by lin_cert using reduction9512.terms
def map_26_200 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9668 : InImage map_26_200 image9668 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9668 : Bundle := named_bundle% "RealMapCertificates/relations/basis9668.json"
theorem reductionProof9668 : EqualModuloRelations reduction9668.relations reduction9668.input reduction9668.output := by lin_cert using reduction9668.terms
theorem substitutionProof9668 : IsMapEvaluation generatorImages reduction9668.relations [1182] reduction9668.output := by lin_cert using reduction9668.terms
def image9669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9669 : InImage map_26_200 image9669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9669 : Bundle := named_bundle% "RealMapCertificates/relations/basis9669.json"
theorem reductionProof9669 : EqualModuloRelations reduction9669.relations reduction9669.input reduction9669.output := by lin_cert using reduction9669.terms
theorem substitutionProof9669 : IsMapEvaluation generatorImages reduction9669.relations [23,690] reduction9669.output := by lin_cert using reduction9669.terms
def image9670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9670 : InImage map_26_200 image9670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9670 : Bundle := named_bundle% "RealMapCertificates/relations/basis9670.json"
theorem reductionProof9670 : EqualModuloRelations reduction9670.relations reduction9670.input reduction9670.output := by lin_cert using reduction9670.terms
theorem substitutionProof9670 : IsMapEvaluation generatorImages reduction9670.relations [9,876] reduction9670.output := by lin_cert using reduction9670.terms
def image9671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9671 : InImage map_26_200 image9671 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9671 : Bundle := named_bundle% "RealMapCertificates/relations/basis9671.json"
theorem reductionProof9671 : EqualModuloRelations reduction9671.relations reduction9671.input reduction9671.output := by lin_cert using reduction9671.terms
theorem substitutionProof9671 : IsMapEvaluation generatorImages reduction9671.relations [9,13,13,13,209] reduction9671.output := by lin_cert using reduction9671.terms
def image9672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9672 : InImage map_26_200 image9672 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9672 : Bundle := named_bundle% "RealMapCertificates/relations/basis9672.json"
theorem reductionProof9672 : EqualModuloRelations reduction9672.relations reduction9672.input reduction9672.output := by lin_cert using reduction9672.terms
theorem substitutionProof9672 : IsMapEvaluation generatorImages reduction9672.relations [8,64,261] reduction9672.output := by lin_cert using reduction9672.terms
def image9673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9673 : InImage map_26_200 image9673 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9673 : Bundle := named_bundle% "RealMapCertificates/relations/basis9673.json"
theorem reductionProof9673 : EqualModuloRelations reduction9673.relations reduction9673.input reduction9673.output := by lin_cert using reduction9673.terms
theorem substitutionProof9673 : IsMapEvaluation generatorImages reduction9673.relations [0,1169] reduction9673.output := by lin_cert using reduction9673.terms
def map_26_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9869 : InImage map_26_201 image9869 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9869 : Bundle := named_bundle% "RealMapCertificates/relations/basis9869.json"
theorem reductionProof9869 : EqualModuloRelations reduction9869.relations reduction9869.input reduction9869.output := by lin_cert using reduction9869.terms
theorem substitutionProof9869 : IsMapEvaluation generatorImages reduction9869.relations [13,13,581] reduction9869.output := by lin_cert using reduction9869.terms
def image9870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9870 : InImage map_26_201 image9870 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9870 : Bundle := named_bundle% "RealMapCertificates/relations/basis9870.json"
theorem reductionProof9870 : EqualModuloRelations reduction9870.relations reduction9870.input reduction9870.output := by lin_cert using reduction9870.terms
theorem substitutionProof9870 : IsMapEvaluation generatorImages reduction9870.relations [8,13,640] reduction9870.output := by lin_cert using reduction9870.terms
def image9871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9871 : InImage map_26_201 image9871 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9871 : Bundle := named_bundle% "RealMapCertificates/relations/basis9871.json"
theorem reductionProof9871 : EqualModuloRelations reduction9871.relations reduction9871.input reduction9871.output := by lin_cert using reduction9871.terms
theorem substitutionProof9871 : IsMapEvaluation generatorImages reduction9871.relations [1,1168] reduction9871.output := by lin_cert using reduction9871.terms
def image9872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9872 : InImage map_26_201 image9872 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9872 : Bundle := named_bundle% "RealMapCertificates/relations/basis9872.json"
theorem reductionProof9872 : EqualModuloRelations reduction9872.relations reduction9872.input reduction9872.output := by lin_cert using reduction9872.terms
theorem substitutionProof9872 : IsMapEvaluation generatorImages reduction9872.relations [0,0,0,1146] reduction9872.output := by lin_cert using reduction9872.terms
def map_26_202 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9989 : InImage map_26_202 image9989 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9989 : Bundle := named_bundle% "RealMapCertificates/relations/basis9989.json"
theorem reductionProof9989 : EqualModuloRelations reduction9989.relations reduction9989.input reduction9989.output := by lin_cert using reduction9989.terms
theorem substitutionProof9989 : IsMapEvaluation generatorImages reduction9989.relations [160,209] reduction9989.output := by lin_cert using reduction9989.terms
def image9990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9990 : InImage map_26_202 image9990 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9990 : Bundle := named_bundle% "RealMapCertificates/relations/basis9990.json"
theorem reductionProof9990 : EqualModuloRelations reduction9990.relations reduction9990.input reduction9990.output := by lin_cert using reduction9990.terms
theorem substitutionProof9990 : IsMapEvaluation generatorImages reduction9990.relations [97,324] reduction9990.output := by lin_cert using reduction9990.terms
def image9991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9991 : InImage map_26_202 image9991 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9991 : Bundle := named_bundle% "RealMapCertificates/relations/basis9991.json"
theorem reductionProof9991 : EqualModuloRelations reduction9991.relations reduction9991.input reduction9991.output := by lin_cert using reduction9991.terms
theorem substitutionProof9991 : IsMapEvaluation generatorImages reduction9991.relations [0,0,0,64,418] reduction9991.output := by lin_cert using reduction9991.terms
def image9992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9992 : InImage map_26_202 image9992 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9992 : Bundle := named_bundle% "RealMapCertificates/relations/basis9992.json"
theorem reductionProof9992 : EqualModuloRelations reduction9992.relations reduction9992.input reduction9992.output := by lin_cert using reduction9992.terms
theorem substitutionProof9992 : IsMapEvaluation generatorImages reduction9992.relations [0,0,0,0,1147] reduction9992.output := by lin_cert using reduction9992.terms
def map_26_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10170 : InImage map_26_203 image10170 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10170 : Bundle := named_bundle% "RealMapCertificates/relations/basis10170.json"
theorem reductionProof10170 : EqualModuloRelations reduction10170.relations reduction10170.input reduction10170.output := by lin_cert using reduction10170.terms
theorem substitutionProof10170 : IsMapEvaluation generatorImages reduction10170.relations [13,876] reduction10170.output := by lin_cert using reduction10170.terms
def image10171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10171 : InImage map_26_203 image10171 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10171 : Bundle := named_bundle% "RealMapCertificates/relations/basis10171.json"
theorem reductionProof10171 : EqualModuloRelations reduction10171.relations reduction10171.input reduction10171.output := by lin_cert using reduction10171.terms
theorem substitutionProof10171 : IsMapEvaluation generatorImages reduction10171.relations [13,13,13,13,209] reduction10171.output := by lin_cert using reduction10171.terms
def image10172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10172 : InImage map_26_203 image10172 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10172 : Bundle := named_bundle% "RealMapCertificates/relations/basis10172.json"
theorem reductionProof10172 : EqualModuloRelations reduction10172.relations reduction10172.input reduction10172.output := by lin_cert using reduction10172.terms
theorem substitutionProof10172 : IsMapEvaluation generatorImages reduction10172.relations [8,8,729] reduction10172.output := by lin_cert using reduction10172.terms
def image10173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10173 : InImage map_26_203 image10173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10173 : Bundle := named_bundle% "RealMapCertificates/relations/basis10173.json"
theorem reductionProof10173 : EqualModuloRelations reduction10173.relations reduction10173.input reduction10173.output := by lin_cert using reduction10173.terms
theorem substitutionProof10173 : IsMapEvaluation generatorImages reduction10173.relations [0,3,1081] reduction10173.output := by lin_cert using reduction10173.terms
def image10174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10174 : InImage map_26_203 image10174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10174 : Bundle := named_bundle% "RealMapCertificates/relations/basis10174.json"
theorem reductionProof10174 : EqualModuloRelations reduction10174.relations reduction10174.input reduction10174.output := by lin_cert using reduction10174.terms
theorem substitutionProof10174 : IsMapEvaluation generatorImages reduction10174.relations [0,0,0,0,0,1149] reduction10174.output := by lin_cert using reduction10174.terms
def map_26_204 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10373 : InImage map_26_204 image10373 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10373 : Bundle := named_bundle% "RealMapCertificates/relations/basis10373.json"
theorem reductionProof10373 : EqualModuloRelations reduction10373.relations reduction10373.input reduction10373.output := by lin_cert using reduction10373.terms
theorem substitutionProof10373 : IsMapEvaluation generatorImages reduction10373.relations [102,324] reduction10373.output := by lin_cert using reduction10373.terms
def image10374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10374 : InImage map_26_204 image10374 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10374 : Bundle := named_bundle% "RealMapCertificates/relations/basis10374.json"
theorem reductionProof10374 : EqualModuloRelations reduction10374.relations reduction10374.input reduction10374.output := by lin_cert using reduction10374.terms
theorem substitutionProof10374 : IsMapEvaluation generatorImages reduction10374.relations [9,13,640] reduction10374.output := by lin_cert using reduction10374.terms
def map_26_205 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10514 : InImage map_26_205 image10514 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10514 : Bundle := named_bundle% "RealMapCertificates/relations/basis10514.json"
theorem reductionProof10514 : EqualModuloRelations reduction10514.relations reduction10514.input reduction10514.output := by lin_cert using reduction10514.terms
theorem substitutionProof10514 : IsMapEvaluation generatorImages reduction10514.relations [166,209] reduction10514.output := by lin_cert using reduction10514.terms
def image10515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10515 : InImage map_26_205 image10515 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10515 : Bundle := named_bundle% "RealMapCertificates/relations/basis10515.json"
theorem reductionProof10515 : EqualModuloRelations reduction10515.relations reduction10515.input reduction10515.output := by lin_cert using reduction10515.terms
theorem substitutionProof10515 : IsMapEvaluation generatorImages reduction10515.relations [1,13,877] reduction10515.output := by lin_cert using reduction10515.terms
def map_26_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10694 : InImage map_26_206 image10694 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10694 : Bundle := named_bundle% "RealMapCertificates/relations/basis10694.json"
theorem reductionProof10694 : EqualModuloRelations reduction10694.relations reduction10694.input reduction10694.output := by lin_cert using reduction10694.terms
theorem substitutionProof10694 : IsMapEvaluation generatorImages reduction10694.relations [1304] reduction10694.output := by lin_cert using reduction10694.terms
def image10695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10695 : InImage map_26_206 image10695 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10695 : Bundle := named_bundle% "RealMapCertificates/relations/basis10695.json"
theorem reductionProof10695 : EqualModuloRelations reduction10695.relations reduction10695.input reduction10695.output := by lin_cert using reduction10695.terms
theorem substitutionProof10695 : IsMapEvaluation generatorImages reduction10695.relations [13,13,628] reduction10695.output := by lin_cert using reduction10695.terms
def image10696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10696 : InImage map_26_206 image10696 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10696 : Bundle := named_bundle% "RealMapCertificates/relations/basis10696.json"
theorem reductionProof10696 : EqualModuloRelations reduction10696.relations reduction10696.input reduction10696.output := by lin_cert using reduction10696.terms
theorem substitutionProof10696 : IsMapEvaluation generatorImages reduction10696.relations [8,8,761] reduction10696.output := by lin_cert using reduction10696.terms
def image10697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10697 : InImage map_26_206 image10697 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10697 : Bundle := named_bundle% "RealMapCertificates/relations/basis10697.json"
theorem reductionProof10697 : EqualModuloRelations reduction10697.relations reduction10697.input reduction10697.output := by lin_cert using reduction10697.terms
theorem substitutionProof10697 : IsMapEvaluation generatorImages reduction10697.relations [0,0,187,187] reduction10697.output := by lin_cert using reduction10697.terms
def map_26_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10916 : InImage map_26_207 image10916 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10916 : Bundle := named_bundle% "RealMapCertificates/relations/basis10916.json"
theorem reductionProof10916 : EqualModuloRelations reduction10916.relations reduction10916.input reduction10916.output := by lin_cert using reduction10916.terms
theorem substitutionProof10916 : IsMapEvaluation generatorImages reduction10916.relations [13,13,640] reduction10916.output := by lin_cert using reduction10916.terms
def image10917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10917 : InImage map_26_207 image10917 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10917 : Bundle := named_bundle% "RealMapCertificates/relations/basis10917.json"
theorem reductionProof10917 : EqualModuloRelations reduction10917.relations reduction10917.input reduction10917.output := by lin_cert using reduction10917.terms
theorem substitutionProof10917 : IsMapEvaluation generatorImages reduction10917.relations [0,110,324] reduction10917.output := by lin_cert using reduction10917.terms
def image10918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10918 : InImage map_26_207 image10918 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10918 : Bundle := named_bundle% "RealMapCertificates/relations/basis10918.json"
theorem reductionProof10918 : EqualModuloRelations reduction10918.relations reduction10918.input reduction10918.output := by lin_cert using reduction10918.terms
theorem substitutionProof10918 : IsMapEvaluation generatorImages reduction10918.relations [0,0,0,187,188] reduction10918.output := by lin_cert using reduction10918.terms
def map_26_208 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11042 : InImage map_26_208 image11042 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11042 : Bundle := named_bundle% "RealMapCertificates/relations/basis11042.json"
theorem reductionProof11042 : EqualModuloRelations reduction11042.relations reduction11042.input reduction11042.output := by lin_cert using reduction11042.terms
theorem substitutionProof11042 : IsMapEvaluation generatorImages reduction11042.relations [180,209] reduction11042.output := by lin_cert using reduction11042.terms
def image11043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11043 : InImage map_26_208 image11043 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11043 : Bundle := named_bundle% "RealMapCertificates/relations/basis11043.json"
theorem reductionProof11043 : EqualModuloRelations reduction11043.relations reduction11043.input reduction11043.output := by lin_cert using reduction11043.terms
theorem substitutionProof11043 : IsMapEvaluation generatorImages reduction11043.relations [1,110,324] reduction11043.output := by lin_cert using reduction11043.terms
def image11044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11044 : InImage map_26_208 image11044 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11044 : Bundle := named_bundle% "RealMapCertificates/relations/basis11044.json"
theorem reductionProof11044 : EqualModuloRelations reduction11044.relations reduction11044.input reduction11044.output := by lin_cert using reduction11044.terms
theorem substitutionProof11044 : IsMapEvaluation generatorImages reduction11044.relations [1,1,187,187] reduction11044.output := by lin_cert using reduction11044.terms
def image11045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11045 : InImage map_26_208 image11045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11045 : Bundle := named_bundle% "RealMapCertificates/relations/basis11045.json"
theorem reductionProof11045 : EqualModuloRelations reduction11045.relations reduction11045.input reduction11045.output := by lin_cert using reduction11045.terms
theorem substitutionProof11045 : IsMapEvaluation generatorImages reduction11045.relations [0,0,111,324] reduction11045.output := by lin_cert using reduction11045.terms
def image11046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11046 : InImage map_26_208 image11046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11046 : Bundle := named_bundle% "RealMapCertificates/relations/basis11046.json"
theorem reductionProof11046 : EqualModuloRelations reduction11046.relations reduction11046.input reduction11046.output := by lin_cert using reduction11046.terms
theorem substitutionProof11046 : IsMapEvaluation generatorImages reduction11046.relations [0,0,0,0,0,1244] reduction11046.output := by lin_cert using reduction11046.terms
def map_26_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11228 : InImage map_26_209 image11228 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11228 : Bundle := named_bundle% "RealMapCertificates/relations/basis11228.json"
theorem reductionProof11228 : EqualModuloRelations reduction11228.relations reduction11228.input reduction11228.output := by lin_cert using reduction11228.terms
theorem substitutionProof11228 : IsMapEvaluation generatorImages reduction11228.relations [1350] reduction11228.output := by lin_cert using reduction11228.terms
def image11229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11229 : InImage map_26_209 image11229 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11229 : Bundle := named_bundle% "RealMapCertificates/relations/basis11229.json"
theorem reductionProof11229 : EqualModuloRelations reduction11229.relations reduction11229.input reduction11229.output := by lin_cert using reduction11229.terms
theorem substitutionProof11229 : IsMapEvaluation generatorImages reduction11229.relations [13,13,13,23,181] reduction11229.output := by lin_cert using reduction11229.terms
def image11230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11230 : InImage map_26_209 image11230 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11230 : Bundle := named_bundle% "RealMapCertificates/relations/basis11230.json"
theorem reductionProof11230 : EqualModuloRelations reduction11230.relations reduction11230.input reduction11230.output := by lin_cert using reduction11230.terms
theorem substitutionProof11230 : IsMapEvaluation generatorImages reduction11230.relations [8,9,761] reduction11230.output := by lin_cert using reduction11230.terms
def image11231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11231 : InImage map_26_209 image11231 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11231 : Bundle := named_bundle% "RealMapCertificates/relations/basis11231.json"
theorem reductionProof11231 : EqualModuloRelations reduction11231.relations reduction11231.input reduction11231.output := by lin_cert using reduction11231.terms
theorem substitutionProof11231 : IsMapEvaluation generatorImages reduction11231.relations [0,0,0,0,0,1258] reduction11231.output := by lin_cert using reduction11231.terms
def map_26_210 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11432 : InImage map_26_210 image11432 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11432 : Bundle := named_bundle% "RealMapCertificates/relations/basis11432.json"
theorem reductionProof11432 : EqualModuloRelations reduction11432.relations reduction11432.input reduction11432.output := by lin_cert using reduction11432.terms
theorem substitutionProof11432 : IsMapEvaluation generatorImages reduction11432.relations [13,13,13,23,190] reduction11432.output := by lin_cert using reduction11432.terms
def image11433 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11433 : InImage map_26_210 image11433 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11433 : Bundle := named_bundle% "RealMapCertificates/relations/basis11433.json"
theorem reductionProof11433 : EqualModuloRelations reduction11433.relations reduction11433.input reduction11433.output := by lin_cert using reduction11433.terms
theorem substitutionProof11433 : IsMapEvaluation generatorImages reduction11433.relations [0,116,324] reduction11433.output := by lin_cert using reduction11433.terms
def map_26_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11584 : InImage map_26_211 image11584 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11584 : Bundle := named_bundle% "RealMapCertificates/relations/basis11584.json"
theorem reductionProof11584 : EqualModuloRelations reduction11584.relations reduction11584.input reduction11584.output := by lin_cert using reduction11584.terms
theorem substitutionProof11584 : IsMapEvaluation generatorImages reduction11584.relations [194,209] reduction11584.output := by lin_cert using reduction11584.terms
def image11585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11585 : InImage map_26_211 image11585 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11585 : Bundle := named_bundle% "RealMapCertificates/relations/basis11585.json"
theorem reductionProof11585 : EqualModuloRelations reduction11585.relations reduction11585.input reduction11585.output := by lin_cert using reduction11585.terms
theorem substitutionProof11585 : IsMapEvaluation generatorImages reduction11585.relations [0,0,117,324] reduction11585.output := by lin_cert using reduction11585.terms
def map_26_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11771 : InImage map_26_212 image11771 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11771 : Bundle := named_bundle% "RealMapCertificates/relations/basis11771.json"
theorem reductionProof11771 : EqualModuloRelations reduction11771.relations reduction11771.input reduction11771.output := by lin_cert using reduction11771.terms
theorem substitutionProof11771 : IsMapEvaluation generatorImages reduction11771.relations [1406] reduction11771.output := by lin_cert using reduction11771.terms
def image11772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11772 : InImage map_26_212 image11772 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11772 : Bundle := named_bundle% "RealMapCertificates/relations/basis11772.json"
theorem reductionProof11772 : EqualModuloRelations reduction11772.relations reduction11772.input reduction11772.output := by lin_cert using reduction11772.terms
theorem substitutionProof11772 : IsMapEvaluation generatorImages reduction11772.relations [1405] reduction11772.output := by lin_cert using reduction11772.terms
def image11773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11773 : InImage map_26_212 image11773 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11773 : Bundle := named_bundle% "RealMapCertificates/relations/basis11773.json"
theorem reductionProof11773 : EqualModuloRelations reduction11773.relations reduction11773.input reduction11773.output := by lin_cert using reduction11773.terms
theorem substitutionProof11773 : IsMapEvaluation generatorImages reduction11773.relations [8,13,761] reduction11773.output := by lin_cert using reduction11773.terms
def image11774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11774 : InImage map_26_212 image11774 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11774 : Bundle := named_bundle% "RealMapCertificates/relations/basis11774.json"
theorem reductionProof11774 : EqualModuloRelations reduction11774.relations reduction11774.input reduction11774.output := by lin_cert using reduction11774.terms
theorem substitutionProof11774 : IsMapEvaluation generatorImages reduction11774.relations [1,1369] reduction11774.output := by lin_cert using reduction11774.terms
def image11775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11775 : InImage map_26_212 image11775 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11775 : Bundle := named_bundle% "RealMapCertificates/relations/basis11775.json"
theorem reductionProof11775 : EqualModuloRelations reduction11775.relations reduction11775.input reduction11775.output := by lin_cert using reduction11775.terms
theorem substitutionProof11775 : IsMapEvaluation generatorImages reduction11775.relations [0,0,0,0,0,0,0,0,0,1247] reduction11775.output := by lin_cert using reduction11775.terms
def map_26_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12015 : InImage map_26_213 image12015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12015 : Bundle := named_bundle% "RealMapCertificates/relations/basis12015.json"
theorem reductionProof12015 : EqualModuloRelations reduction12015.relations reduction12015.input reduction12015.output := by lin_cert using reduction12015.terms
theorem substitutionProof12015 : IsMapEvaluation generatorImages reduction12015.relations [1428] reduction12015.output := by lin_cert using reduction12015.terms
def image12016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12016 : InImage map_26_213 image12016 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12016 : Bundle := named_bundle% "RealMapCertificates/relations/basis12016.json"
theorem reductionProof12016 : EqualModuloRelations reduction12016.relations reduction12016.input reduction12016.output := by lin_cert using reduction12016.terms
theorem substitutionProof12016 : IsMapEvaluation generatorImages reduction12016.relations [0,8,71,324] reduction12016.output := by lin_cert using reduction12016.terms
def image12017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12017 : InImage map_26_213 image12017 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12017 : Bundle := named_bundle% "RealMapCertificates/relations/basis12017.json"
theorem reductionProof12017 : EqualModuloRelations reduction12017.relations reduction12017.input reduction12017.output := by lin_cert using reduction12017.terms
theorem substitutionProof12017 : IsMapEvaluation generatorImages reduction12017.relations [0,0,0,0,187,209] reduction12017.output := by lin_cert using reduction12017.terms
def image12018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12018 : InImage map_26_213 image12018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12018 : Bundle := named_bundle% "RealMapCertificates/relations/basis12018.json"
theorem reductionProof12018 : EqualModuloRelations reduction12018.relations reduction12018.input reduction12018.output := by lin_cert using reduction12018.terms
theorem substitutionProof12018 : IsMapEvaluation generatorImages reduction12018.relations [0,0,0,0,0,0,0,0,0,1263] reduction12018.output := by lin_cert using reduction12018.terms
def map_26_214 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12174 : InImage map_26_214 image12174 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12174 : Bundle := named_bundle% "RealMapCertificates/relations/basis12174.json"
theorem reductionProof12174 : EqualModuloRelations reduction12174.relations reduction12174.input reduction12174.output := by lin_cert using reduction12174.terms
theorem substitutionProof12174 : IsMapEvaluation generatorImages reduction12174.relations [1442] reduction12174.output := by lin_cert using reduction12174.terms
def image12175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12175 : InImage map_26_214 image12175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12175 : Bundle := named_bundle% "RealMapCertificates/relations/basis12175.json"
theorem reductionProof12175 : EqualModuloRelations reduction12175.relations reduction12175.input reduction12175.output := by lin_cert using reduction12175.terms
theorem substitutionProof12175 : IsMapEvaluation generatorImages reduction12175.relations [13,13,23,335] reduction12175.output := by lin_cert using reduction12175.terms
def image12176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12176 : InImage map_26_214 image12176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12176 : Bundle := named_bundle% "RealMapCertificates/relations/basis12176.json"
theorem reductionProof12176 : EqualModuloRelations reduction12176.relations reduction12176.input reduction12176.output := by lin_cert using reduction12176.terms
theorem substitutionProof12176 : IsMapEvaluation generatorImages reduction12176.relations [0,0,16,50,324] reduction12176.output := by lin_cert using reduction12176.terms
def image12177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12177 : InImage map_26_214 image12177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12177 : Bundle := named_bundle% "RealMapCertificates/relations/basis12177.json"
theorem reductionProof12177 : EqualModuloRelations reduction12177.relations reduction12177.input reduction12177.output := by lin_cert using reduction12177.terms
theorem substitutionProof12177 : IsMapEvaluation generatorImages reduction12177.relations [0,0,0,0,0,188,209] reduction12177.output := by lin_cert using reduction12177.terms
def map_26_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12372 : InImage map_26_215 image12372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12372 : Bundle := named_bundle% "RealMapCertificates/relations/basis12372.json"
theorem reductionProof12372 : EqualModuloRelations reduction12372.relations reduction12372.input reduction12372.output := by lin_cert using reduction12372.terms
theorem substitutionProof12372 : IsMapEvaluation generatorImages reduction12372.relations [1475] reduction12372.output := by lin_cert using reduction12372.terms
def image12373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12373 : InImage map_26_215 image12373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12373 : Bundle := named_bundle% "RealMapCertificates/relations/basis12373.json"
theorem reductionProof12373 : EqualModuloRelations reduction12373.relations reduction12373.input reduction12373.output := by lin_cert using reduction12373.terms
theorem substitutionProof12373 : IsMapEvaluation generatorImages reduction12373.relations [1474] reduction12373.output := by lin_cert using reduction12373.terms
def image12374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12374 : InImage map_26_215 image12374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12374 : Bundle := named_bundle% "RealMapCertificates/relations/basis12374.json"
theorem reductionProof12374 : EqualModuloRelations reduction12374.relations reduction12374.input reduction12374.output := by lin_cert using reduction12374.terms
theorem substitutionProof12374 : IsMapEvaluation generatorImages reduction12374.relations [9,13,761] reduction12374.output := by lin_cert using reduction12374.terms
def image12375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12375 : InImage map_26_215 image12375 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12375 : Bundle := named_bundle% "RealMapCertificates/relations/basis12375.json"
theorem reductionProof12375 : EqualModuloRelations reduction12375.relations reduction12375.input reduction12375.output := by lin_cert using reduction12375.terms
theorem substitutionProof12375 : IsMapEvaluation generatorImages reduction12375.relations [1,1,1386] reduction12375.output := by lin_cert using reduction12375.terms
def image12376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12376 : InImage map_26_215 image12376 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12376 : Bundle := named_bundle% "RealMapCertificates/relations/basis12376.json"
theorem reductionProof12376 : EqualModuloRelations reduction12376.relations reduction12376.input reduction12376.output := by lin_cert using reduction12376.terms
theorem substitutionProof12376 : IsMapEvaluation generatorImages reduction12376.relations [0,0,0,17,50,324] reduction12376.output := by lin_cert using reduction12376.terms
end RealMapCertificates
