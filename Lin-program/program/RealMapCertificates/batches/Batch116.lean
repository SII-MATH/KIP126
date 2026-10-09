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
  | 23 => [[7,7]]
  | 24 => []
  | 43 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 68 => []
  | 75 => []
  | 77 => [[4,4,4,4,8]]
  | 78 => [[4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 184 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 215 => []
  | 225 => [[0,4,4,4,6,12]]
  | 279 => []
  | 288 => []
  | 293 => []
  | 318 => []
  | 324 => []
  | 332 => []
  | 348 => []
  | 450 => []
  | 618 => []
  | 620 => []
  | 629 => []
  | 646 => []
  | 690 => []
  | 761 => []
  | 825 => []
  | 876 => []
  | 880 => []
  | 946 => []
  | 959 => []
  | 1050 => []
  | 1205 => []
  | 1386 => []
  | 1430 => []
  | 1432 => []
  | 1443 => []
  | 1485 => []
  | 1486 => []
  | 1487 => []
  | 1505 => []
  | 1519 => []
  | 1539 => []
  | 1555 => []
  | 1556 => []
  | 1572 => []
  | 1573 => []
  | 1598 => []
  | 1608 => []
  | 1641 => []
  | 1653 => []
  | 1654 => []
  | 1655 => []
  | 1656 => []
  | 1657 => []
  | 1691 => []
  | 1757 => []
  | 1758 => []
  | 1759 => []
  | 1762 => []
  | 1778 => []
  | 1779 => []
  | 1781 => []
  | 1836 => []
  | 1837 => []
  | 1838 => []
  | 1839 => []
  | 1864 => []
  | 1865 => []
  | 1893 => []
  | 1905 => []
  | 1906 => []
  | 1908 => []
  | 1939 => []
  | 1940 => []
  | 1969 => []
  | _ => []
def map_26_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12577 : InImage map_26_216 image12577 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12577 : Bundle := named_bundle% "RealMapCertificates/relations/basis12577.json"
theorem reductionProof12577 : EqualModuloRelations reduction12577.relations reduction12577.input reduction12577.output := by lin_cert using reduction12577.terms
theorem substitutionProof12577 : IsMapEvaluation generatorImages reduction12577.relations [1486] reduction12577.output := by lin_cert using reduction12577.terms
def image12578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12578 : InImage map_26_216 image12578 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12578 : Bundle := named_bundle% "RealMapCertificates/relations/basis12578.json"
theorem reductionProof12578 : EqualModuloRelations reduction12578.relations reduction12578.input reduction12578.output := by lin_cert using reduction12578.terms
theorem substitutionProof12578 : IsMapEvaluation generatorImages reduction12578.relations [1485] reduction12578.output := by lin_cert using reduction12578.terms
def image12579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12579 : InImage map_26_216 image12579 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12579 : Bundle := named_bundle% "RealMapCertificates/relations/basis12579.json"
theorem reductionProof12579 : EqualModuloRelations reduction12579.relations reduction12579.input reduction12579.output := by lin_cert using reduction12579.terms
theorem substitutionProof12579 : IsMapEvaluation generatorImages reduction12579.relations [9,13,13,13,288] reduction12579.output := by lin_cert using reduction12579.terms
def image12580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12580 : InImage map_26_216 image12580 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12580 : Bundle := named_bundle% "RealMapCertificates/relations/basis12580.json"
theorem reductionProof12580 : EqualModuloRelations reduction12580.relations reduction12580.input reduction12580.output := by lin_cert using reduction12580.terms
theorem substitutionProof12580 : IsMapEvaluation generatorImages reduction12580.relations [0,8,77,324] reduction12580.output := by lin_cert using reduction12580.terms
def image12581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12581 : InImage map_26_216 image12581 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12581 : Bundle := named_bundle% "RealMapCertificates/relations/basis12581.json"
theorem reductionProof12581 : EqualModuloRelations reduction12581.relations reduction12581.input reduction12581.output := by lin_cert using reduction12581.terms
theorem substitutionProof12581 : IsMapEvaluation generatorImages reduction12581.relations [0,0,1443] reduction12581.output := by lin_cert using reduction12581.terms
def map_26_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12739 : InImage map_26_217 image12739 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12739 : Bundle := named_bundle% "RealMapCertificates/relations/basis12739.json"
theorem reductionProof12739 : EqualModuloRelations reduction12739.relations reduction12739.input reduction12739.output := by lin_cert using reduction12739.terms
theorem substitutionProof12739 : IsMapEvaluation generatorImages reduction12739.relations [1505] reduction12739.output := by lin_cert using reduction12739.terms
def image12740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12740 : InImage map_26_217 image12740 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12740 : Bundle := named_bundle% "RealMapCertificates/relations/basis12740.json"
theorem reductionProof12740 : EqualModuloRelations reduction12740.relations reduction12740.input reduction12740.output := by lin_cert using reduction12740.terms
theorem substitutionProof12740 : IsMapEvaluation generatorImages reduction12740.relations [13,23,618] reduction12740.output := by lin_cert using reduction12740.terms
def image12741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12741 : InImage map_26_217 image12741 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12741 : Bundle := named_bundle% "RealMapCertificates/relations/basis12741.json"
theorem reductionProof12741 : EqualModuloRelations reduction12741.relations reduction12741.input reduction12741.output := by lin_cert using reduction12741.terms
theorem substitutionProof12741 : IsMapEvaluation generatorImages reduction12741.relations [0,0,8,78,324] reduction12741.output := by lin_cert using reduction12741.terms
def map_26_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12933 : InImage map_26_218 image12933 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12933 : Bundle := named_bundle% "RealMapCertificates/relations/basis12933.json"
theorem reductionProof12933 : EqualModuloRelations reduction12933.relations reduction12933.input reduction12933.output := by lin_cert using reduction12933.terms
theorem substitutionProof12933 : IsMapEvaluation generatorImages reduction12933.relations [13,23,629] reduction12933.output := by lin_cert using reduction12933.terms
def image12934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12934 : InImage map_26_218 image12934 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12934 : Bundle := named_bundle% "RealMapCertificates/relations/basis12934.json"
theorem reductionProof12934 : EqualModuloRelations reduction12934.relations reduction12934.input reduction12934.output := by lin_cert using reduction12934.terms
theorem substitutionProof12934 : IsMapEvaluation generatorImages reduction12934.relations [13,13,761] reduction12934.output := by lin_cert using reduction12934.terms
def image12935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12935 : InImage map_26_218 image12935 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12935 : Bundle := named_bundle% "RealMapCertificates/relations/basis12935.json"
theorem reductionProof12935 : EqualModuloRelations reduction12935.relations reduction12935.input reduction12935.output := by lin_cert using reduction12935.terms
theorem substitutionProof12935 : IsMapEvaluation generatorImages reduction12935.relations [1,209,215] reduction12935.output := by lin_cert using reduction12935.terms
def image12936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12936 : InImage map_26_218 image12936 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12936 : Bundle := named_bundle% "RealMapCertificates/relations/basis12936.json"
theorem reductionProof12936 : EqualModuloRelations reduction12936.relations reduction12936.input reduction12936.output := by lin_cert using reduction12936.terms
theorem substitutionProof12936 : IsMapEvaluation generatorImages reduction12936.relations [0,0,1487] reduction12936.output := by lin_cert using reduction12936.terms
def map_26_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13162 : InImage map_26_219 image13162 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13162 : Bundle := named_bundle% "RealMapCertificates/relations/basis13162.json"
theorem reductionProof13162 : EqualModuloRelations reduction13162.relations reduction13162.input reduction13162.output := by lin_cert using reduction13162.terms
theorem substitutionProof13162 : IsMapEvaluation generatorImages reduction13162.relations [1539] reduction13162.output := by lin_cert using reduction13162.terms
def image13163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13163 : InImage map_26_219 image13163 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13163 : Bundle := named_bundle% "RealMapCertificates/relations/basis13163.json"
theorem reductionProof13163 : EqualModuloRelations reduction13163.relations reduction13163.input reduction13163.output := by lin_cert using reduction13163.terms
theorem substitutionProof13163 : IsMapEvaluation generatorImages reduction13163.relations [13,13,13,13,288] reduction13163.output := by lin_cert using reduction13163.terms
def image13164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13164 : InImage map_26_219 image13164 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13164 : Bundle := named_bundle% "RealMapCertificates/relations/basis13164.json"
theorem reductionProof13164 : EqualModuloRelations reduction13164.relations reduction13164.input reduction13164.output := by lin_cert using reduction13164.terms
theorem substitutionProof13164 : IsMapEvaluation generatorImages reduction13164.relations [8,1205] reduction13164.output := by lin_cert using reduction13164.terms
def image13165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13165 : InImage map_26_219 image13165 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13165 : Bundle := named_bundle% "RealMapCertificates/relations/basis13165.json"
theorem reductionProof13165 : EqualModuloRelations reduction13165.relations reduction13165.input reduction13165.output := by lin_cert using reduction13165.terms
theorem substitutionProof13165 : IsMapEvaluation generatorImages reduction13165.relations [0,8,8,49,324] reduction13165.output := by lin_cert using reduction13165.terms
def map_26_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13299 : InImage map_26_220 image13299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13299 : Bundle := named_bundle% "RealMapCertificates/relations/basis13299.json"
theorem reductionProof13299 : EqualModuloRelations reduction13299.relations reduction13299.input reduction13299.output := by lin_cert using reduction13299.terms
theorem substitutionProof13299 : IsMapEvaluation generatorImages reduction13299.relations [9,13,75,212] reduction13299.output := by lin_cert using reduction13299.terms
def image13300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13300 : InImage map_26_220 image13300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13300 : Bundle := named_bundle% "RealMapCertificates/relations/basis13300.json"
theorem reductionProof13300 : EqualModuloRelations reduction13300.relations reduction13300.input reduction13300.output := by lin_cert using reduction13300.terms
theorem substitutionProof13300 : IsMapEvaluation generatorImages reduction13300.relations [0,3,1386] reduction13300.output := by lin_cert using reduction13300.terms
def image13301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13301 : InImage map_26_220 image13301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13301 : Bundle := named_bundle% "RealMapCertificates/relations/basis13301.json"
theorem reductionProof13301 : EqualModuloRelations reduction13301.relations reduction13301.input reduction13301.output := by lin_cert using reduction13301.terms
theorem substitutionProof13301 : IsMapEvaluation generatorImages reduction13301.relations [0,0,8,8,50,324] reduction13301.output := by lin_cert using reduction13301.terms
def map_26_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13503 : InImage map_26_221 image13503 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13503 : Bundle := named_bundle% "RealMapCertificates/relations/basis13503.json"
theorem reductionProof13503 : EqualModuloRelations reduction13503.relations reduction13503.input reduction13503.output := by lin_cert using reduction13503.terms
theorem substitutionProof13503 : IsMapEvaluation generatorImages reduction13503.relations [1572] reduction13503.output := by lin_cert using reduction13503.terms
def image13504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13504 : InImage map_26_221 image13504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13504 : Bundle := named_bundle% "RealMapCertificates/relations/basis13504.json"
theorem reductionProof13504 : EqualModuloRelations reduction13504.relations reduction13504.input reduction13504.output := by lin_cert using reduction13504.terms
theorem substitutionProof13504 : IsMapEvaluation generatorImages reduction13504.relations [2,2,1430] reduction13504.output := by lin_cert using reduction13504.terms
def image13505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13505 : InImage map_26_221 image13505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13505 : Bundle := named_bundle% "RealMapCertificates/relations/basis13505.json"
theorem reductionProof13505 : EqualModuloRelations reduction13505.relations reduction13505.input reduction13505.output := by lin_cert using reduction13505.terms
theorem substitutionProof13505 : IsMapEvaluation generatorImages reduction13505.relations [0,0,0,1519] reduction13505.output := by lin_cert using reduction13505.terms
def map_26_222 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13729 : InImage map_26_222 image13729 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13729 : Bundle := named_bundle% "RealMapCertificates/relations/basis13729.json"
theorem reductionProof13729 : EqualModuloRelations reduction13729.relations reduction13729.input reduction13729.output := by lin_cert using reduction13729.terms
theorem substitutionProof13729 : IsMapEvaluation generatorImages reduction13729.relations [1598] reduction13729.output := by lin_cert using reduction13729.terms
def image13730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13730 : InImage map_26_222 image13730 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13730 : Bundle := named_bundle% "RealMapCertificates/relations/basis13730.json"
theorem reductionProof13730 : EqualModuloRelations reduction13730.relations reduction13730.input reduction13730.output := by lin_cert using reduction13730.terms
theorem substitutionProof13730 : IsMapEvaluation generatorImages reduction13730.relations [23,959] reduction13730.output := by lin_cert using reduction13730.terms
def image13731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13731 : InImage map_26_222 image13731 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13731 : Bundle := named_bundle% "RealMapCertificates/relations/basis13731.json"
theorem reductionProof13731 : EqualModuloRelations reduction13731.relations reduction13731.input reduction13731.output := by lin_cert using reduction13731.terms
theorem substitutionProof13731 : IsMapEvaluation generatorImages reduction13731.relations [8,188,188] reduction13731.output := by lin_cert using reduction13731.terms
def image13732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13732 : InImage map_26_222 image13732 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13732 : Bundle := named_bundle% "RealMapCertificates/relations/basis13732.json"
theorem reductionProof13732 : EqualModuloRelations reduction13732.relations reduction13732.input reduction13732.output := by lin_cert using reduction13732.terms
theorem substitutionProof13732 : IsMapEvaluation generatorImages reduction13732.relations [1,1556] reduction13732.output := by lin_cert using reduction13732.terms
def image13733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13733 : InImage map_26_222 image13733 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13733 : Bundle := named_bundle% "RealMapCertificates/relations/basis13733.json"
theorem reductionProof13733 : EqualModuloRelations reduction13733.relations reduction13733.input reduction13733.output := by lin_cert using reduction13733.terms
theorem substitutionProof13733 : IsMapEvaluation generatorImages reduction13733.relations [1,1555] reduction13733.output := by lin_cert using reduction13733.terms
def image13734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13734 : InImage map_26_222 image13734 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13734 : Bundle := named_bundle% "RealMapCertificates/relations/basis13734.json"
theorem reductionProof13734 : EqualModuloRelations reduction13734.relations reduction13734.input reduction13734.output := by lin_cert using reduction13734.terms
theorem substitutionProof13734 : IsMapEvaluation generatorImages reduction13734.relations [0,0,0,0,0,0,0,137,324] reduction13734.output := by lin_cert using reduction13734.terms
def map_26_223 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13879 : InImage map_26_223 image13879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13879 : Bundle := named_bundle% "RealMapCertificates/relations/basis13879.json"
theorem reductionProof13879 : EqualModuloRelations reduction13879.relations reduction13879.input reduction13879.output := by lin_cert using reduction13879.terms
theorem substitutionProof13879 : IsMapEvaluation generatorImages reduction13879.relations [1608] reduction13879.output := by lin_cert using reduction13879.terms
def image13880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13880 : InImage map_26_223 image13880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13880 : Bundle := named_bundle% "RealMapCertificates/relations/basis13880.json"
theorem reductionProof13880 : EqualModuloRelations reduction13880.relations reduction13880.input reduction13880.output := by lin_cert using reduction13880.terms
theorem substitutionProof13880 : IsMapEvaluation generatorImages reduction13880.relations [13,13,75,212] reduction13880.output := by lin_cert using reduction13880.terms
def image13881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13881 : InImage map_26_223 image13881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13881 : Bundle := named_bundle% "RealMapCertificates/relations/basis13881.json"
theorem reductionProof13881 : EqualModuloRelations reduction13881.relations reduction13881.input reduction13881.output := by lin_cert using reduction13881.terms
theorem substitutionProof13881 : IsMapEvaluation generatorImages reduction13881.relations [0,0,1573] reduction13881.output := by lin_cert using reduction13881.terms
def image13882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13882 : InImage map_26_223 image13882 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13882 : Bundle := named_bundle% "RealMapCertificates/relations/basis13882.json"
theorem reductionProof13882 : EqualModuloRelations reduction13882.relations reduction13882.input reduction13882.output := by lin_cert using reduction13882.terms
theorem substitutionProof13882 : IsMapEvaluation generatorImages reduction13882.relations [0,0,0,0,0,0,0,0,138,324] reduction13882.output := by lin_cert using reduction13882.terms
def map_26_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14064 : InImage map_26_224 image14064 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14064 : Bundle := named_bundle% "RealMapCertificates/relations/basis14064.json"
theorem reductionProof14064 : EqualModuloRelations reduction14064.relations reduction14064.input reduction14064.output := by lin_cert using reduction14064.terms
theorem substitutionProof14064 : IsMapEvaluation generatorImages reduction14064.relations [187,279] reduction14064.output := by lin_cert using reduction14064.terms
def image14065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14065 : InImage map_26_224 image14065 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14065 : Bundle := named_bundle% "RealMapCertificates/relations/basis14065.json"
theorem reductionProof14065 : EqualModuloRelations reduction14065.relations reduction14065.input reduction14065.output := by lin_cert using reduction14065.terms
theorem substitutionProof14065 : IsMapEvaluation generatorImages reduction14065.relations [161,324] reduction14065.output := by lin_cert using reduction14065.terms
def image14066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14066 : InImage map_26_224 image14066 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14066 : Bundle := named_bundle% "RealMapCertificates/relations/basis14066.json"
theorem reductionProof14066 : EqualModuloRelations reduction14066.relations reduction14066.input reduction14066.output := by lin_cert using reduction14066.terms
theorem substitutionProof14066 : IsMapEvaluation generatorImages reduction14066.relations [68,646] reduction14066.output := by lin_cert using reduction14066.terms
def image14067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14067 : InImage map_26_224 image14067 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14067 : Bundle := named_bundle% "RealMapCertificates/relations/basis14067.json"
theorem reductionProof14067 : EqualModuloRelations reduction14067.relations reduction14067.input reduction14067.output := by lin_cert using reduction14067.terms
theorem substitutionProof14067 : IsMapEvaluation generatorImages reduction14067.relations [9,13,880] reduction14067.output := by lin_cert using reduction14067.terms
def image14068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14068 : InImage map_26_224 image14068 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14068 : Bundle := named_bundle% "RealMapCertificates/relations/basis14068.json"
theorem reductionProof14068 : EqualModuloRelations reduction14068.relations reduction14068.input reduction14068.output := by lin_cert using reduction14068.terms
theorem substitutionProof14068 : IsMapEvaluation generatorImages reduction14068.relations [1,3,1443] reduction14068.output := by lin_cert using reduction14068.terms
def map_26_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14293 : InImage map_26_225 image14293 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14293 : Bundle := named_bundle% "RealMapCertificates/relations/basis14293.json"
theorem reductionProof14293 : EqualModuloRelations reduction14293.relations reduction14293.input reduction14293.output := by lin_cert using reduction14293.terms
theorem substitutionProof14293 : IsMapEvaluation generatorImages reduction14293.relations [13,13,13,13,332] reduction14293.output := by lin_cert using reduction14293.terms
def image14294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14294 : InImage map_26_225 image14294 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14294 : Bundle := named_bundle% "RealMapCertificates/relations/basis14294.json"
theorem reductionProof14294 : EqualModuloRelations reduction14294.relations reduction14294.input reduction14294.output := by lin_cert using reduction14294.terms
theorem substitutionProof14294 : IsMapEvaluation generatorImages reduction14294.relations [9,188,188] reduction14294.output := by lin_cert using reduction14294.terms
def image14295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14295 : InImage map_26_225 image14295 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14295 : Bundle := named_bundle% "RealMapCertificates/relations/basis14295.json"
theorem reductionProof14295 : EqualModuloRelations reduction14295.relations reduction14295.input reduction14295.output := by lin_cert using reduction14295.terms
theorem substitutionProof14295 : IsMapEvaluation generatorImages reduction14295.relations [0,3,1487] reduction14295.output := by lin_cert using reduction14295.terms
def map_26_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14423 : InImage map_26_226 image14423 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14423 : Bundle := named_bundle% "RealMapCertificates/relations/basis14423.json"
theorem reductionProof14423 : EqualModuloRelations reduction14423.relations reduction14423.input reduction14423.output := by lin_cert using reduction14423.terms
theorem substitutionProof14423 : IsMapEvaluation generatorImages reduction14423.relations [1653] reduction14423.output := by lin_cert using reduction14423.terms
def image14424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14424 : InImage map_26_226 image14424 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14424 : Bundle := named_bundle% "RealMapCertificates/relations/basis14424.json"
theorem reductionProof14424 : EqualModuloRelations reduction14424.relations reduction14424.input reduction14424.output := by lin_cert using reduction14424.terms
theorem substitutionProof14424 : IsMapEvaluation generatorImages reduction14424.relations [0,1641] reduction14424.output := by lin_cert using reduction14424.terms
def map_26_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14631 : InImage map_26_227 image14631 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14631 : Bundle := named_bundle% "RealMapCertificates/relations/basis14631.json"
theorem reductionProof14631 : EqualModuloRelations reduction14631.relations reduction14631.input reduction14631.output := by lin_cert using reduction14631.terms
theorem substitutionProof14631 : IsMapEvaluation generatorImages reduction14631.relations [43,876] reduction14631.output := by lin_cert using reduction14631.terms
def image14632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14632 : InImage map_26_227 image14632 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14632 : Bundle := named_bundle% "RealMapCertificates/relations/basis14632.json"
theorem reductionProof14632 : EqualModuloRelations reduction14632.relations reduction14632.input reduction14632.output := by lin_cert using reduction14632.terms
theorem substitutionProof14632 : IsMapEvaluation generatorImages reduction14632.relations [13,13,880] reduction14632.output := by lin_cert using reduction14632.terms
def image14633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14633 : InImage map_26_227 image14633 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14633 : Bundle := named_bundle% "RealMapCertificates/relations/basis14633.json"
theorem reductionProof14633 : EqualModuloRelations reduction14633.relations reduction14633.input reduction14633.output := by lin_cert using reduction14633.terms
theorem substitutionProof14633 : IsMapEvaluation generatorImages reduction14633.relations [8,187,209] reduction14633.output := by lin_cert using reduction14633.terms
def image14634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14634 : InImage map_26_227 image14634 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14634 : Bundle := named_bundle% "RealMapCertificates/relations/basis14634.json"
theorem reductionProof14634 : EqualModuloRelations reduction14634.relations reduction14634.input reduction14634.output := by lin_cert using reduction14634.terms
theorem substitutionProof14634 : IsMapEvaluation generatorImages reduction14634.relations [3,3,1386] reduction14634.output := by lin_cert using reduction14634.terms
def image14635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14635 : InImage map_26_227 image14635 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14635 : Bundle := named_bundle% "RealMapCertificates/relations/basis14635.json"
theorem reductionProof14635 : EqualModuloRelations reduction14635.relations reduction14635.input reduction14635.output := by lin_cert using reduction14635.terms
theorem substitutionProof14635 : IsMapEvaluation generatorImages reduction14635.relations [0,1655] reduction14635.output := by lin_cert using reduction14635.terms
def image14636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14636 : InImage map_26_227 image14636 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14636 : Bundle := named_bundle% "RealMapCertificates/relations/basis14636.json"
theorem reductionProof14636 : EqualModuloRelations reduction14636.relations reduction14636.input reduction14636.output := by lin_cert using reduction14636.terms
theorem substitutionProof14636 : IsMapEvaluation generatorImages reduction14636.relations [0,1654] reduction14636.output := by lin_cert using reduction14636.terms
def map_26_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14867 : InImage map_26_228 image14867 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14867 : Bundle := named_bundle% "RealMapCertificates/relations/basis14867.json"
theorem reductionProof14867 : EqualModuloRelations reduction14867.relations reduction14867.input reduction14867.output := by lin_cert using reduction14867.terms
theorem substitutionProof14867 : IsMapEvaluation generatorImages reduction14867.relations [24,1050] reduction14867.output := by lin_cert using reduction14867.terms
def image14868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14868 : InImage map_26_228 image14868 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14868 : Bundle := named_bundle% "RealMapCertificates/relations/basis14868.json"
theorem reductionProof14868 : EqualModuloRelations reduction14868.relations reduction14868.input reduction14868.output := by lin_cert using reduction14868.terms
theorem substitutionProof14868 : IsMapEvaluation generatorImages reduction14868.relations [13,188,188] reduction14868.output := by lin_cert using reduction14868.terms
def image14869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14869 : InImage map_26_228 image14869 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14869 : Bundle := named_bundle% "RealMapCertificates/relations/basis14869.json"
theorem reductionProof14869 : EqualModuloRelations reduction14869.relations reduction14869.input reduction14869.output := by lin_cert using reduction14869.terms
theorem substitutionProof14869 : IsMapEvaluation generatorImages reduction14869.relations [3,1555] reduction14869.output := by lin_cert using reduction14869.terms
def image14870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14870 : InImage map_26_228 image14870 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14870 : Bundle := named_bundle% "RealMapCertificates/relations/basis14870.json"
theorem reductionProof14870 : EqualModuloRelations reduction14870.relations reduction14870.input reduction14870.output := by lin_cert using reduction14870.terms
theorem substitutionProof14870 : IsMapEvaluation generatorImages reduction14870.relations [1,1654] reduction14870.output := by lin_cert using reduction14870.terms
def image14871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14871 : InImage map_26_228 image14871 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14871 : Bundle := named_bundle% "RealMapCertificates/relations/basis14871.json"
theorem reductionProof14871 : EqualModuloRelations reduction14871.relations reduction14871.input reduction14871.output := by lin_cert using reduction14871.terms
theorem substitutionProof14871 : IsMapEvaluation generatorImages reduction14871.relations [0,0,1656] reduction14871.output := by lin_cert using reduction14871.terms
def map_26_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15026 : InImage map_26_229 image15026 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15026 : Bundle := named_bundle% "RealMapCertificates/relations/basis15026.json"
theorem reductionProof15026 : EqualModuloRelations reduction15026.relations reduction15026.input reduction15026.output := by lin_cert using reduction15026.terms
theorem substitutionProof15026 : IsMapEvaluation generatorImages reduction15026.relations [13,13,13,620] reduction15026.output := by lin_cert using reduction15026.terms
def image15027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15027 : InImage map_26_229 image15027 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15027 : Bundle := named_bundle% "RealMapCertificates/relations/basis15027.json"
theorem reductionProof15027 : EqualModuloRelations reduction15027.relations reduction15027.input reduction15027.output := by lin_cert using reduction15027.terms
theorem substitutionProof15027 : IsMapEvaluation generatorImages reduction15027.relations [0,1691] reduction15027.output := by lin_cert using reduction15027.terms
def map_26_230 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15239 : InImage map_26_230 image15239 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15239 : Bundle := named_bundle% "RealMapCertificates/relations/basis15239.json"
theorem reductionProof15239 : EqualModuloRelations reduction15239.relations reduction15239.input reduction15239.output := by lin_cert using reduction15239.terms
theorem substitutionProof15239 : IsMapEvaluation generatorImages reduction15239.relations [8,201,209] reduction15239.output := by lin_cert using reduction15239.terms
def image15240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15240 : InImage map_26_230 image15240 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15240 : Bundle := named_bundle% "RealMapCertificates/relations/basis15240.json"
theorem reductionProof15240 : EqualModuloRelations reduction15240.relations reduction15240.input reduction15240.output := by lin_cert using reduction15240.terms
theorem substitutionProof15240 : IsMapEvaluation generatorImages reduction15240.relations [1,1691] reduction15240.output := by lin_cert using reduction15240.terms
def image15241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15241 : InImage map_26_230 image15241 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15241 : Bundle := named_bundle% "RealMapCertificates/relations/basis15241.json"
theorem reductionProof15241 : EqualModuloRelations reduction15241.relations reduction15241.input reduction15241.output := by lin_cert using reduction15241.terms
theorem substitutionProof15241 : IsMapEvaluation generatorImages reduction15241.relations [1,1,1656] reduction15241.output := by lin_cert using reduction15241.terms
def image15242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15242 : InImage map_26_230 image15242 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15242 : Bundle := named_bundle% "RealMapCertificates/relations/basis15242.json"
theorem reductionProof15242 : EqualModuloRelations reduction15242.relations reduction15242.input reduction15242.output := by lin_cert using reduction15242.terms
theorem substitutionProof15242 : IsMapEvaluation generatorImages reduction15242.relations [0,3,1573] reduction15242.output := by lin_cert using reduction15242.terms
def map_26_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15485 : InImage map_26_231 image15485 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15485 : Bundle := named_bundle% "RealMapCertificates/relations/basis15485.json"
theorem reductionProof15485 : EqualModuloRelations reduction15485.relations reduction15485.input reduction15485.output := by lin_cert using reduction15485.terms
theorem substitutionProof15485 : IsMapEvaluation generatorImages reduction15485.relations [1758] reduction15485.output := by lin_cert using reduction15485.terms
def image15486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15486 : InImage map_26_231 image15486 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15486 : Bundle := named_bundle% "RealMapCertificates/relations/basis15486.json"
theorem reductionProof15486 : EqualModuloRelations reduction15486.relations reduction15486.input reduction15486.output := by lin_cert using reduction15486.terms
theorem substitutionProof15486 : IsMapEvaluation generatorImages reduction15486.relations [1757] reduction15486.output := by lin_cert using reduction15486.terms
def image15487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15487 : InImage map_26_231 image15487 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15487 : Bundle := named_bundle% "RealMapCertificates/relations/basis15487.json"
theorem reductionProof15487 : EqualModuloRelations reduction15487.relations reduction15487.input reduction15487.output := by lin_cert using reduction15487.terms
theorem substitutionProof15487 : IsMapEvaluation generatorImages reduction15487.relations [75,690] reduction15487.output := by lin_cert using reduction15487.terms
def image15488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15488 : InImage map_26_231 image15488 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15488 : Bundle := named_bundle% "RealMapCertificates/relations/basis15488.json"
theorem reductionProof15488 : EqualModuloRelations reduction15488.relations reduction15488.input reduction15488.output := by lin_cert using reduction15488.terms
theorem substitutionProof15488 : IsMapEvaluation generatorImages reduction15488.relations [0,2,1656] reduction15488.output := by lin_cert using reduction15488.terms
def map_26_232 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15654 : InImage map_26_232 image15654 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15654 : Bundle := named_bundle% "RealMapCertificates/relations/basis15654.json"
theorem reductionProof15654 : EqualModuloRelations reduction15654.relations reduction15654.input reduction15654.output := by lin_cert using reduction15654.terms
theorem substitutionProof15654 : IsMapEvaluation generatorImages reduction15654.relations [1778] reduction15654.output := by lin_cert using reduction15654.terms
def image15655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15655 : InImage map_26_232 image15655 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15655 : Bundle := named_bundle% "RealMapCertificates/relations/basis15655.json"
theorem reductionProof15655 : EqualModuloRelations reduction15655.relations reduction15655.input reduction15655.output := by lin_cert using reduction15655.terms
theorem substitutionProof15655 : IsMapEvaluation generatorImages reduction15655.relations [9,13,13,13,450] reduction15655.output := by lin_cert using reduction15655.terms
def image15656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15656 : InImage map_26_232 image15656 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15656 : Bundle := named_bundle% "RealMapCertificates/relations/basis15656.json"
theorem reductionProof15656 : EqualModuloRelations reduction15656.relations reduction15656.input reduction15656.output := by lin_cert using reduction15656.terms
theorem substitutionProof15656 : IsMapEvaluation generatorImages reduction15656.relations [3,3,1487] reduction15656.output := by lin_cert using reduction15656.terms
def image15657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15657 : InImage map_26_232 image15657 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15657 : Bundle := named_bundle% "RealMapCertificates/relations/basis15657.json"
theorem reductionProof15657 : EqualModuloRelations reduction15657.relations reduction15657.input reduction15657.output := by lin_cert using reduction15657.terms
theorem substitutionProof15657 : IsMapEvaluation generatorImages reduction15657.relations [2,1691] reduction15657.output := by lin_cert using reduction15657.terms
def image15658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15658 : InImage map_26_232 image15658 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15658 : Bundle := named_bundle% "RealMapCertificates/relations/basis15658.json"
theorem reductionProof15658 : EqualModuloRelations reduction15658.relations reduction15658.input reduction15658.output := by lin_cert using reduction15658.terms
theorem substitutionProof15658 : IsMapEvaluation generatorImages reduction15658.relations [0,1759] reduction15658.output := by lin_cert using reduction15658.terms
def map_26_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15890 : InImage map_26_233 image15890 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15890 : Bundle := named_bundle% "RealMapCertificates/relations/basis15890.json"
theorem reductionProof15890 : EqualModuloRelations reduction15890.relations reduction15890.input reduction15890.output := by lin_cert using reduction15890.terms
theorem substitutionProof15890 : IsMapEvaluation generatorImages reduction15890.relations [13,13,946] reduction15890.output := by lin_cert using reduction15890.terms
def image15891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15891 : InImage map_26_233 image15891 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15891 : Bundle := named_bundle% "RealMapCertificates/relations/basis15891.json"
theorem reductionProof15891 : EqualModuloRelations reduction15891.relations reduction15891.input reduction15891.output := by lin_cert using reduction15891.terms
theorem substitutionProof15891 : IsMapEvaluation generatorImages reduction15891.relations [8,209,212] reduction15891.output := by lin_cert using reduction15891.terms
def image15892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15892 : InImage map_26_233 image15892 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15892 : Bundle := named_bundle% "RealMapCertificates/relations/basis15892.json"
theorem reductionProof15892 : EqualModuloRelations reduction15892.relations reduction15892.input reduction15892.output := by lin_cert using reduction15892.terms
theorem substitutionProof15892 : IsMapEvaluation generatorImages reduction15892.relations [1,1759] reduction15892.output := by lin_cert using reduction15892.terms
def image15893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15893 : InImage map_26_233 image15893 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15893 : Bundle := named_bundle% "RealMapCertificates/relations/basis15893.json"
theorem reductionProof15893 : EqualModuloRelations reduction15893.relations reduction15893.input reduction15893.output := by lin_cert using reduction15893.terms
theorem substitutionProof15893 : IsMapEvaluation generatorImages reduction15893.relations [0,1781] reduction15893.output := by lin_cert using reduction15893.terms
def image15894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15894 : InImage map_26_233 image15894 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15894 : Bundle := named_bundle% "RealMapCertificates/relations/basis15894.json"
theorem reductionProof15894 : EqualModuloRelations reduction15894.relations reduction15894.input reduction15894.output := by lin_cert using reduction15894.terms
theorem substitutionProof15894 : IsMapEvaluation generatorImages reduction15894.relations [0,1779] reduction15894.output := by lin_cert using reduction15894.terms
def image15895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15895 : InImage map_26_233 image15895 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15895 : Bundle := named_bundle% "RealMapCertificates/relations/basis15895.json"
theorem reductionProof15895 : EqualModuloRelations reduction15895.relations reduction15895.input reduction15895.output := by lin_cert using reduction15895.terms
theorem substitutionProof15895 : IsMapEvaluation generatorImages reduction15895.relations [0,0,0,184,324] reduction15895.output := by lin_cert using reduction15895.terms
def map_26_234 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16136 : InImage map_26_234 image16136 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16136 : Bundle := named_bundle% "RealMapCertificates/relations/basis16136.json"
theorem reductionProof16136 : EqualModuloRelations reduction16136.relations reduction16136.input reduction16136.output := by lin_cert using reduction16136.terms
theorem substitutionProof16136 : IsMapEvaluation generatorImages reduction16136.relations [1837] reduction16136.output := by lin_cert using reduction16136.terms
def image16137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16137 : InImage map_26_234 image16137 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16137 : Bundle := named_bundle% "RealMapCertificates/relations/basis16137.json"
theorem reductionProof16137 : EqualModuloRelations reduction16137.relations reduction16137.input reduction16137.output := by lin_cert using reduction16137.terms
theorem substitutionProof16137 : IsMapEvaluation generatorImages reduction16137.relations [1836] reduction16137.output := by lin_cert using reduction16137.terms
def image16138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16138 : InImage map_26_234 image16138 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16138 : Bundle := named_bundle% "RealMapCertificates/relations/basis16138.json"
theorem reductionProof16138 : EqualModuloRelations reduction16138.relations reduction16138.input reduction16138.output := by lin_cert using reduction16138.terms
theorem substitutionProof16138 : IsMapEvaluation generatorImages reduction16138.relations [13,189,212] reduction16138.output := by lin_cert using reduction16138.terms
def image16139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16139 : InImage map_26_234 image16139 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16139 : Bundle := named_bundle% "RealMapCertificates/relations/basis16139.json"
theorem reductionProof16139 : EqualModuloRelations reduction16139.relations reduction16139.input reduction16139.output := by lin_cert using reduction16139.terms
theorem substitutionProof16139 : IsMapEvaluation generatorImages reduction16139.relations [1,1779] reduction16139.output := by lin_cert using reduction16139.terms
def image16140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16140 : InImage map_26_234 image16140 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16140 : Bundle := named_bundle% "RealMapCertificates/relations/basis16140.json"
theorem reductionProof16140 : EqualModuloRelations reduction16140.relations reduction16140.input reduction16140.output := by lin_cert using reduction16140.terms
theorem substitutionProof16140 : IsMapEvaluation generatorImages reduction16140.relations [1,209,293] reduction16140.output := by lin_cert using reduction16140.terms
def image16141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16141 : InImage map_26_234 image16141 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16141 : Bundle := named_bundle% "RealMapCertificates/relations/basis16141.json"
theorem reductionProof16141 : EqualModuloRelations reduction16141.relations reduction16141.input reduction16141.output := by lin_cert using reduction16141.terms
theorem substitutionProof16141 : IsMapEvaluation generatorImages reduction16141.relations [0,0,0,1762] reduction16141.output := by lin_cert using reduction16141.terms
def map_26_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16329 : InImage map_26_235 image16329 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16329 : Bundle := named_bundle% "RealMapCertificates/relations/basis16329.json"
theorem reductionProof16329 : EqualModuloRelations reduction16329.relations reduction16329.input reduction16329.output := by lin_cert using reduction16329.terms
theorem substitutionProof16329 : IsMapEvaluation generatorImages reduction16329.relations [1864] reduction16329.output := by lin_cert using reduction16329.terms
def image16330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16330 : InImage map_26_235 image16330 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16330 : Bundle := named_bundle% "RealMapCertificates/relations/basis16330.json"
theorem reductionProof16330 : EqualModuloRelations reduction16330.relations reduction16330.input reduction16330.output := by lin_cert using reduction16330.terms
theorem substitutionProof16330 : IsMapEvaluation generatorImages reduction16330.relations [209,318] reduction16330.output := by lin_cert using reduction16330.terms
def image16331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16331 : InImage map_26_235 image16331 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16331 : Bundle := named_bundle% "RealMapCertificates/relations/basis16331.json"
theorem reductionProof16331 : EqualModuloRelations reduction16331.relations reduction16331.input reduction16331.output := by lin_cert using reduction16331.terms
theorem substitutionProof16331 : IsMapEvaluation generatorImages reduction16331.relations [13,13,13,13,450] reduction16331.output := by lin_cert using reduction16331.terms
def image16332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16332 : InImage map_26_235 image16332 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16332 : Bundle := named_bundle% "RealMapCertificates/relations/basis16332.json"
theorem reductionProof16332 : EqualModuloRelations reduction16332.relations reduction16332.input reduction16332.output := by lin_cert using reduction16332.terms
theorem substitutionProof16332 : IsMapEvaluation generatorImages reduction16332.relations [0,3,1656] reduction16332.output := by lin_cert using reduction16332.terms
def map_26_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16568 : InImage map_26_236 image16568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16568 : Bundle := named_bundle% "RealMapCertificates/relations/basis16568.json"
theorem reductionProof16568 : EqualModuloRelations reduction16568.relations reduction16568.input reduction16568.output := by lin_cert using reduction16568.terms
theorem substitutionProof16568 : IsMapEvaluation generatorImages reduction16568.relations [9,209,212] reduction16568.output := by lin_cert using reduction16568.terms
def image16569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16569 : InImage map_26_236 image16569 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16569 : Bundle := named_bundle% "RealMapCertificates/relations/basis16569.json"
theorem reductionProof16569 : EqualModuloRelations reduction16569.relations reduction16569.input reduction16569.output := by lin_cert using reduction16569.terms
theorem substitutionProof16569 : IsMapEvaluation generatorImages reduction16569.relations [1,1839] reduction16569.output := by lin_cert using reduction16569.terms
def image16570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16570 : InImage map_26_236 image16570 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16570 : Bundle := named_bundle% "RealMapCertificates/relations/basis16570.json"
theorem reductionProof16570 : EqualModuloRelations reduction16570.relations reduction16570.input reduction16570.output := by lin_cert using reduction16570.terms
theorem substitutionProof16570 : IsMapEvaluation generatorImages reduction16570.relations [1,1838] reduction16570.output := by lin_cert using reduction16570.terms
def image16571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16571 : InImage map_26_236 image16571 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16571 : Bundle := named_bundle% "RealMapCertificates/relations/basis16571.json"
theorem reductionProof16571 : EqualModuloRelations reduction16571.relations reduction16571.input reduction16571.output := by lin_cert using reduction16571.terms
theorem substitutionProof16571 : IsMapEvaluation generatorImages reduction16571.relations [0,0,3,1657] reduction16571.output := by lin_cert using reduction16571.terms
def map_26_237 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16815 : InImage map_26_237 image16815 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16815 : Bundle := named_bundle% "RealMapCertificates/relations/basis16815.json"
theorem reductionProof16815 : EqualModuloRelations reduction16815.relations reduction16815.input reduction16815.output := by lin_cert using reduction16815.terms
theorem substitutionProof16815 : IsMapEvaluation generatorImages reduction16815.relations [1905] reduction16815.output := by lin_cert using reduction16815.terms
def image16816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16816 : InImage map_26_237 image16816 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16816 : Bundle := named_bundle% "RealMapCertificates/relations/basis16816.json"
theorem reductionProof16816 : EqualModuloRelations reduction16816.relations reduction16816.input reduction16816.output := by lin_cert using reduction16816.terms
theorem substitutionProof16816 : IsMapEvaluation generatorImages reduction16816.relations [13,1432] reduction16816.output := by lin_cert using reduction16816.terms
def image16817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16817 : InImage map_26_237 image16817 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16817 : Bundle := named_bundle% "RealMapCertificates/relations/basis16817.json"
theorem reductionProof16817 : EqualModuloRelations reduction16817.relations reduction16817.input reduction16817.output := by lin_cert using reduction16817.terms
theorem substitutionProof16817 : IsMapEvaluation generatorImages reduction16817.relations [1,1865] reduction16817.output := by lin_cert using reduction16817.terms
def map_26_238 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16993 : InImage map_26_238 image16993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16993 : Bundle := named_bundle% "RealMapCertificates/relations/basis16993.json"
theorem reductionProof16993 : EqualModuloRelations reduction16993.relations reduction16993.input reduction16993.output := by lin_cert using reduction16993.terms
theorem substitutionProof16993 : IsMapEvaluation generatorImages reduction16993.relations [209,348] reduction16993.output := by lin_cert using reduction16993.terms
def image16994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16994 : InImage map_26_238 image16994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16994 : Bundle := named_bundle% "RealMapCertificates/relations/basis16994.json"
theorem reductionProof16994 : EqualModuloRelations reduction16994.relations reduction16994.input reduction16994.output := by lin_cert using reduction16994.terms
theorem substitutionProof16994 : IsMapEvaluation generatorImages reduction16994.relations [1,1893] reduction16994.output := by lin_cert using reduction16994.terms
def image16995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16995 : InImage map_26_238 image16995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16995 : Bundle := named_bundle% "RealMapCertificates/relations/basis16995.json"
theorem reductionProof16995 : EqualModuloRelations reduction16995.relations reduction16995.input reduction16995.output := by lin_cert using reduction16995.terms
theorem substitutionProof16995 : IsMapEvaluation generatorImages reduction16995.relations [0,1906] reduction16995.output := by lin_cert using reduction16995.terms
def map_26_239 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17254 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17254 : InImage map_26_239 image17254 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17254 : Bundle := named_bundle% "RealMapCertificates/relations/basis17254.json"
theorem reductionProof17254 : EqualModuloRelations reduction17254.relations reduction17254.input reduction17254.output := by lin_cert using reduction17254.terms
theorem substitutionProof17254 : IsMapEvaluation generatorImages reduction17254.relations [1969] reduction17254.output := by lin_cert using reduction17254.terms
def image17255 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17255 : InImage map_26_239 image17255 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17255 : Bundle := named_bundle% "RealMapCertificates/relations/basis17255.json"
theorem reductionProof17255 : EqualModuloRelations reduction17255.relations reduction17255.input reduction17255.output := by lin_cert using reduction17255.terms
theorem substitutionProof17255 : IsMapEvaluation generatorImages reduction17255.relations [225,324] reduction17255.output := by lin_cert using reduction17255.terms
def image17256 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17256 : InImage map_26_239 image17256 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17256 : Bundle := named_bundle% "RealMapCertificates/relations/basis17256.json"
theorem reductionProof17256 : EqualModuloRelations reduction17256.relations reduction17256.input reduction17256.output := by lin_cert using reduction17256.terms
theorem substitutionProof17256 : IsMapEvaluation generatorImages reduction17256.relations [13,209,212] reduction17256.output := by lin_cert using reduction17256.terms
def image17257 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17257 : InImage map_26_239 image17257 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17257 : Bundle := named_bundle% "RealMapCertificates/relations/basis17257.json"
theorem reductionProof17257 : EqualModuloRelations reduction17257.relations reduction17257.input reduction17257.output := by lin_cert using reduction17257.terms
theorem substitutionProof17257 : IsMapEvaluation generatorImages reduction17257.relations [0,1940] reduction17257.output := by lin_cert using reduction17257.terms
def image17258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17258 : InImage map_26_239 image17258 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17258 : Bundle := named_bundle% "RealMapCertificates/relations/basis17258.json"
theorem reductionProof17258 : EqualModuloRelations reduction17258.relations reduction17258.input reduction17258.output := by lin_cert using reduction17258.terms
theorem substitutionProof17258 : IsMapEvaluation generatorImages reduction17258.relations [0,1939] reduction17258.output := by lin_cert using reduction17258.terms
def image17259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17259 : InImage map_26_239 image17259 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17259 : Bundle := named_bundle% "RealMapCertificates/relations/basis17259.json"
theorem reductionProof17259 : EqualModuloRelations reduction17259.relations reduction17259.input reduction17259.output := by lin_cert using reduction17259.terms
theorem substitutionProof17259 : IsMapEvaluation generatorImages reduction17259.relations [0,64,825] reduction17259.output := by lin_cert using reduction17259.terms
def image17260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17260 : InImage map_26_239 image17260 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17260 : Bundle := named_bundle% "RealMapCertificates/relations/basis17260.json"
theorem reductionProof17260 : EqualModuloRelations reduction17260.relations reduction17260.input reduction17260.output := by lin_cert using reduction17260.terms
theorem substitutionProof17260 : IsMapEvaluation generatorImages reduction17260.relations [0,0,1908] reduction17260.output := by lin_cert using reduction17260.terms
end RealMapCertificates
