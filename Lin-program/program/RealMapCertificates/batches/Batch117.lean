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
  | 67 => []
  | 75 => []
  | 76 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 190 => []
  | 209 => []
  | 238 => [[0,4,4,4,8,12]]
  | 246 => []
  | 250 => []
  | 261 => []
  | 324 => []
  | 335 => []
  | 376 => []
  | 533 => []
  | 629 => []
  | 867 => []
  | 959 => []
  | 960 => []
  | 1004 => []
  | 1096 => []
  | 1154 => []
  | 1320 => []
  | 1548 => []
  | 1659 => []
  | 1695 => []
  | 1724 => []
  | 1759 => []
  | 1762 => []
  | 1763 => []
  | 1779 => []
  | 1785 => []
  | 1839 => []
  | 1840 => []
  | 1841 => []
  | 1912 => []
  | 1939 => []
  | 1971 => []
  | 2001 => []
  | 2002 => []
  | 2003 => []
  | 2005 => []
  | 2044 => []
  | 2045 => []
  | 2063 => []
  | 2067 => []
  | 2101 => []
  | 2102 => []
  | 2103 => []
  | 2104 => []
  | 2105 => []
  | 2132 => []
  | 2133 => []
  | 2134 => []
  | 2135 => []
  | 2136 => []
  | 2169 => []
  | 2170 => []
  | 2172 => []
  | 2206 => []
  | 2207 => []
  | 2208 => []
  | 2209 => []
  | 2210 => []
  | 2212 => []
  | 2213 => []
  | 2248 => []
  | 2249 => []
  | 2251 => []
  | 2253 => []
  | 2281 => []
  | 2284 => []
  | 2286 => []
  | 2288 => []
  | 2315 => []
  | 2316 => []
  | 2344 => []
  | 2345 => []
  | 2346 => []
  | 2347 => []
  | 2349 => []
  | 2350 => []
  | 2352 => []
  | 2382 => []
  | 2383 => []
  | 2446 => []
  | 2447 => []
  | 2450 => []
  | 2451 => []
  | 2498 => []
  | 2499 => []
  | 2500 => []
  | 2501 => []
  | 2557 => []
  | _ => []
def map_26_240 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17529 : InImage map_26_240 image17529 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17529 : Bundle := named_bundle% "RealMapCertificates/relations/basis17529.json"
theorem reductionProof17529 : EqualModuloRelations reduction17529.relations reduction17529.input reduction17529.output := by lin_cert using reduction17529.terms
theorem substitutionProof17529 : IsMapEvaluation generatorImages reduction17529.relations [2002] reduction17529.output := by lin_cert using reduction17529.terms
def image17530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17530 : InImage map_26_240 image17530 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17530 : Bundle := named_bundle% "RealMapCertificates/relations/basis17530.json"
theorem reductionProof17530 : EqualModuloRelations reduction17530.relations reduction17530.input reduction17530.output := by lin_cert using reduction17530.terms
theorem substitutionProof17530 : IsMapEvaluation generatorImages reduction17530.relations [2001] reduction17530.output := by lin_cert using reduction17530.terms
def image17531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17531 : InImage map_26_240 image17531 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17531 : Bundle := named_bundle% "RealMapCertificates/relations/basis17531.json"
theorem reductionProof17531 : EqualModuloRelations reduction17531.relations reduction17531.input reduction17531.output := by lin_cert using reduction17531.terms
theorem substitutionProof17531 : IsMapEvaluation generatorImages reduction17531.relations [9,13,1096] reduction17531.output := by lin_cert using reduction17531.terms
def image17532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17532 : InImage map_26_240 image17532 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17532 : Bundle := named_bundle% "RealMapCertificates/relations/basis17532.json"
theorem reductionProof17532 : EqualModuloRelations reduction17532.relations reduction17532.input reduction17532.output := by lin_cert using reduction17532.terms
theorem substitutionProof17532 : IsMapEvaluation generatorImages reduction17532.relations [3,1779] reduction17532.output := by lin_cert using reduction17532.terms
def image17533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17533 : InImage map_26_240 image17533 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17533 : Bundle := named_bundle% "RealMapCertificates/relations/basis17533.json"
theorem reductionProof17533 : EqualModuloRelations reduction17533.relations reduction17533.input reduction17533.output := by lin_cert using reduction17533.terms
theorem substitutionProof17533 : IsMapEvaluation generatorImages reduction17533.relations [1,1939] reduction17533.output := by lin_cert using reduction17533.terms
def image17534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17534 : InImage map_26_240 image17534 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17534 : Bundle := named_bundle% "RealMapCertificates/relations/basis17534.json"
theorem reductionProof17534 : EqualModuloRelations reduction17534.relations reduction17534.input reduction17534.output := by lin_cert using reduction17534.terms
theorem substitutionProof17534 : IsMapEvaluation generatorImages reduction17534.relations [0,1971] reduction17534.output := by lin_cert using reduction17534.terms
def image17535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17535 : InImage map_26_240 image17535 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17535 : Bundle := named_bundle% "RealMapCertificates/relations/basis17535.json"
theorem reductionProof17535 : EqualModuloRelations reduction17535.relations reduction17535.input reduction17535.output := by lin_cert using reduction17535.terms
theorem substitutionProof17535 : IsMapEvaluation generatorImages reduction17535.relations [0,0,0,1912] reduction17535.output := by lin_cert using reduction17535.terms
def map_26_241 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17769 : InImage map_26_241 image17769 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17769 : Bundle := named_bundle% "RealMapCertificates/relations/basis17769.json"
theorem reductionProof17769 : EqualModuloRelations reduction17769.relations reduction17769.input reduction17769.output := by lin_cert using reduction17769.terms
theorem substitutionProof17769 : IsMapEvaluation generatorImages reduction17769.relations [2044] reduction17769.output := by lin_cert using reduction17769.terms
def image17770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17770 : InImage map_26_241 image17770 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17770 : Bundle := named_bundle% "RealMapCertificates/relations/basis17770.json"
theorem reductionProof17770 : EqualModuloRelations reduction17770.relations reduction17770.input reduction17770.output := by lin_cert using reduction17770.terms
theorem substitutionProof17770 : IsMapEvaluation generatorImages reduction17770.relations [13,13,13,75,190] reduction17770.output := by lin_cert using reduction17770.terms
def image17771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17771 : InImage map_26_241 image17771 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17771 : Bundle := named_bundle% "RealMapCertificates/relations/basis17771.json"
theorem reductionProof17771 : EqualModuloRelations reduction17771.relations reduction17771.input reduction17771.output := by lin_cert using reduction17771.terms
theorem substitutionProof17771 : IsMapEvaluation generatorImages reduction17771.relations [13,13,13,23,376] reduction17771.output := by lin_cert using reduction17771.terms
def image17772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17772 : InImage map_26_241 image17772 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17772 : Bundle := named_bundle% "RealMapCertificates/relations/basis17772.json"
theorem reductionProof17772 : EqualModuloRelations reduction17772.relations reduction17772.input reduction17772.output := by lin_cert using reduction17772.terms
theorem substitutionProof17772 : IsMapEvaluation generatorImages reduction17772.relations [8,209,250] reduction17772.output := by lin_cert using reduction17772.terms
def image17773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17773 : InImage map_26_241 image17773 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17773 : Bundle := named_bundle% "RealMapCertificates/relations/basis17773.json"
theorem reductionProof17773 : EqualModuloRelations reduction17773.relations reduction17773.input reduction17773.output := by lin_cert using reduction17773.terms
theorem substitutionProof17773 : IsMapEvaluation generatorImages reduction17773.relations [0,2003] reduction17773.output := by lin_cert using reduction17773.terms
def image17774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17774 : InImage map_26_241 image17774 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17774 : Bundle := named_bundle% "RealMapCertificates/relations/basis17774.json"
theorem reductionProof17774 : EqualModuloRelations reduction17774.relations reduction17774.input reduction17774.output := by lin_cert using reduction17774.terms
theorem substitutionProof17774 : IsMapEvaluation generatorImages reduction17774.relations [0,0,3,1762] reduction17774.output := by lin_cert using reduction17774.terms
def map_26_242 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18038 : InImage map_26_242 image18038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18038 : Bundle := named_bundle% "RealMapCertificates/relations/basis18038.json"
theorem reductionProof18038 : EqualModuloRelations reduction18038.relations reduction18038.input reduction18038.output := by lin_cert using reduction18038.terms
theorem substitutionProof18038 : IsMapEvaluation generatorImages reduction18038.relations [238,324] reduction18038.output := by lin_cert using reduction18038.terms
def image18039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18039 : InImage map_26_242 image18039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18039 : Bundle := named_bundle% "RealMapCertificates/relations/basis18039.json"
theorem reductionProof18039 : EqualModuloRelations reduction18039.relations reduction18039.input reduction18039.output := by lin_cert using reduction18039.terms
theorem substitutionProof18039 : IsMapEvaluation generatorImages reduction18039.relations [1,2003] reduction18039.output := by lin_cert using reduction18039.terms
def image18040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18040 : InImage map_26_242 image18040 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18040 : Bundle := named_bundle% "RealMapCertificates/relations/basis18040.json"
theorem reductionProof18040 : EqualModuloRelations reduction18040.relations reduction18040.input reduction18040.output := by lin_cert using reduction18040.terms
theorem substitutionProof18040 : IsMapEvaluation generatorImages reduction18040.relations [0,2045] reduction18040.output := by lin_cert using reduction18040.terms
def image18041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18041 : InImage map_26_242 image18041 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18041 : Bundle := named_bundle% "RealMapCertificates/relations/basis18041.json"
theorem reductionProof18041 : EqualModuloRelations reduction18041.relations reduction18041.input reduction18041.output := by lin_cert using reduction18041.terms
theorem substitutionProof18041 : IsMapEvaluation generatorImages reduction18041.relations [0,0,2005] reduction18041.output := by lin_cert using reduction18041.terms
def map_26_243 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18309 : InImage map_26_243 image18309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18309 : Bundle := named_bundle% "RealMapCertificates/relations/basis18309.json"
theorem reductionProof18309 : EqualModuloRelations reduction18309.relations reduction18309.input reduction18309.output := by lin_cert using reduction18309.terms
theorem substitutionProof18309 : IsMapEvaluation generatorImages reduction18309.relations [2102] reduction18309.output := by lin_cert using reduction18309.terms
def image18310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18310 : InImage map_26_243 image18310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18310 : Bundle := named_bundle% "RealMapCertificates/relations/basis18310.json"
theorem reductionProof18310 : EqualModuloRelations reduction18310.relations reduction18310.input reduction18310.output := by lin_cert using reduction18310.terms
theorem substitutionProof18310 : IsMapEvaluation generatorImages reduction18310.relations [2101] reduction18310.output := by lin_cert using reduction18310.terms
def image18311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18311 : InImage map_26_243 image18311 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18311 : Bundle := named_bundle% "RealMapCertificates/relations/basis18311.json"
theorem reductionProof18311 : EqualModuloRelations reduction18311.relations reduction18311.input reduction18311.output := by lin_cert using reduction18311.terms
theorem substitutionProof18311 : IsMapEvaluation generatorImages reduction18311.relations [13,13,1096] reduction18311.output := by lin_cert using reduction18311.terms
def image18312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18312 : InImage map_26_243 image18312 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18312 : Bundle := named_bundle% "RealMapCertificates/relations/basis18312.json"
theorem reductionProof18312 : EqualModuloRelations reduction18312.relations reduction18312.input reduction18312.output := by lin_cert using reduction18312.terms
theorem substitutionProof18312 : IsMapEvaluation generatorImages reduction18312.relations [0,2063] reduction18312.output := by lin_cert using reduction18312.terms
def map_26_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18508 : InImage map_26_244 image18508 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18508 : Bundle := named_bundle% "RealMapCertificates/relations/basis18508.json"
theorem reductionProof18508 : EqualModuloRelations reduction18508.relations reduction18508.input reduction18508.output := by lin_cert using reduction18508.terms
theorem substitutionProof18508 : IsMapEvaluation generatorImages reduction18508.relations [2133] reduction18508.output := by lin_cert using reduction18508.terms
def image18509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18509 : InImage map_26_244 image18509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18509 : Bundle := named_bundle% "RealMapCertificates/relations/basis18509.json"
theorem reductionProof18509 : EqualModuloRelations reduction18509.relations reduction18509.input reduction18509.output := by lin_cert using reduction18509.terms
theorem substitutionProof18509 : IsMapEvaluation generatorImages reduction18509.relations [2132] reduction18509.output := by lin_cert using reduction18509.terms
def image18510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18510 : InImage map_26_244 image18510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18510 : Bundle := named_bundle% "RealMapCertificates/relations/basis18510.json"
theorem reductionProof18510 : EqualModuloRelations reduction18510.relations reduction18510.input reduction18510.output := by lin_cert using reduction18510.terms
theorem substitutionProof18510 : IsMapEvaluation generatorImages reduction18510.relations [8,209,261] reduction18510.output := by lin_cert using reduction18510.terms
def image18511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18511 : InImage map_26_244 image18511 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18511 : Bundle := named_bundle% "RealMapCertificates/relations/basis18511.json"
theorem reductionProof18511 : EqualModuloRelations reduction18511.relations reduction18511.input reduction18511.output := by lin_cert using reduction18511.terms
theorem substitutionProof18511 : IsMapEvaluation generatorImages reduction18511.relations [0,2103] reduction18511.output := by lin_cert using reduction18511.terms
def map_26_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18778 : InImage map_26_245 image18778 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18778 : Bundle := named_bundle% "RealMapCertificates/relations/basis18778.json"
theorem reductionProof18778 : EqualModuloRelations reduction18778.relations reduction18778.input reduction18778.output := by lin_cert using reduction18778.terms
theorem substitutionProof18778 : IsMapEvaluation generatorImages reduction18778.relations [2169] reduction18778.output := by lin_cert using reduction18778.terms
def image18779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18779 : InImage map_26_245 image18779 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18779 : Bundle := named_bundle% "RealMapCertificates/relations/basis18779.json"
theorem reductionProof18779 : EqualModuloRelations reduction18779.relations reduction18779.input reduction18779.output := by lin_cert using reduction18779.terms
theorem substitutionProof18779 : IsMapEvaluation generatorImages reduction18779.relations [16,138,324] reduction18779.output := by lin_cert using reduction18779.terms
def image18780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18780 : InImage map_26_245 image18780 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18780 : Bundle := named_bundle% "RealMapCertificates/relations/basis18780.json"
theorem reductionProof18780 : EqualModuloRelations reduction18780.relations reduction18780.input reduction18780.output := by lin_cert using reduction18780.terms
theorem substitutionProof18780 : IsMapEvaluation generatorImages reduction18780.relations [13,13,75,335] reduction18780.output := by lin_cert using reduction18780.terms
def image18781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18781 : InImage map_26_245 image18781 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18781 : Bundle := named_bundle% "RealMapCertificates/relations/basis18781.json"
theorem reductionProof18781 : EqualModuloRelations reduction18781.relations reduction18781.input reduction18781.output := by lin_cert using reduction18781.terms
theorem substitutionProof18781 : IsMapEvaluation generatorImages reduction18781.relations [0,2134] reduction18781.output := by lin_cert using reduction18781.terms
def image18782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18782 : InImage map_26_245 image18782 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18782 : Bundle := named_bundle% "RealMapCertificates/relations/basis18782.json"
theorem reductionProof18782 : EqualModuloRelations reduction18782.relations reduction18782.input reduction18782.output := by lin_cert using reduction18782.terms
theorem substitutionProof18782 : IsMapEvaluation generatorImages reduction18782.relations [0,0,2105] reduction18782.output := by lin_cert using reduction18782.terms
def image18783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18783 : InImage map_26_245 image18783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18783 : Bundle := named_bundle% "RealMapCertificates/relations/basis18783.json"
theorem reductionProof18783 : EqualModuloRelations reduction18783.relations reduction18783.input reduction18783.output := by lin_cert using reduction18783.terms
theorem substitutionProof18783 : IsMapEvaluation generatorImages reduction18783.relations [0,0,2104] reduction18783.output := by lin_cert using reduction18783.terms
def map_26_246 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19072 : InImage map_26_246 image19072 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19072 : Bundle := named_bundle% "RealMapCertificates/relations/basis19072.json"
theorem reductionProof19072 : EqualModuloRelations reduction19072.relations reduction19072.input reduction19072.output := by lin_cert using reduction19072.terms
theorem substitutionProof19072 : IsMapEvaluation generatorImages reduction19072.relations [2208] reduction19072.output := by lin_cert using reduction19072.terms
def image19073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19073 : InImage map_26_246 image19073 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19073 : Bundle := named_bundle% "RealMapCertificates/relations/basis19073.json"
theorem reductionProof19073 : EqualModuloRelations reduction19073.relations reduction19073.input reduction19073.output := by lin_cert using reduction19073.terms
theorem substitutionProof19073 : IsMapEvaluation generatorImages reduction19073.relations [2207] reduction19073.output := by lin_cert using reduction19073.terms
def image19074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19074 : InImage map_26_246 image19074 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19074 : Bundle := named_bundle% "RealMapCertificates/relations/basis19074.json"
theorem reductionProof19074 : EqualModuloRelations reduction19074.relations reduction19074.input reduction19074.output := by lin_cert using reduction19074.terms
theorem substitutionProof19074 : IsMapEvaluation generatorImages reduction19074.relations [2206] reduction19074.output := by lin_cert using reduction19074.terms
def image19075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19075 : InImage map_26_246 image19075 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19075 : Bundle := named_bundle% "RealMapCertificates/relations/basis19075.json"
theorem reductionProof19075 : EqualModuloRelations reduction19075.relations reduction19075.input reduction19075.output := by lin_cert using reduction19075.terms
theorem substitutionProof19075 : IsMapEvaluation generatorImages reduction19075.relations [13,13,1154] reduction19075.output := by lin_cert using reduction19075.terms
def image19076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19076 : InImage map_26_246 image19076 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19076 : Bundle := named_bundle% "RealMapCertificates/relations/basis19076.json"
theorem reductionProof19076 : EqualModuloRelations reduction19076.relations reduction19076.input reduction19076.output := by lin_cert using reduction19076.terms
theorem substitutionProof19076 : IsMapEvaluation generatorImages reduction19076.relations [0,2170] reduction19076.output := by lin_cert using reduction19076.terms
def image19077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19077 : InImage map_26_246 image19077 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19077 : Bundle := named_bundle% "RealMapCertificates/relations/basis19077.json"
theorem reductionProof19077 : EqualModuloRelations reduction19077.relations reduction19077.input reduction19077.output := by lin_cert using reduction19077.terms
theorem substitutionProof19077 : IsMapEvaluation generatorImages reduction19077.relations [0,17,138,324] reduction19077.output := by lin_cert using reduction19077.terms
def image19078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19078 : InImage map_26_246 image19078 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19078 : Bundle := named_bundle% "RealMapCertificates/relations/basis19078.json"
theorem reductionProof19078 : EqualModuloRelations reduction19078.relations reduction19078.input reduction19078.output := by lin_cert using reduction19078.terms
theorem substitutionProof19078 : IsMapEvaluation generatorImages reduction19078.relations [0,0,2136] reduction19078.output := by lin_cert using reduction19078.terms
def image19079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19079 : InImage map_26_246 image19079 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19079 : Bundle := named_bundle% "RealMapCertificates/relations/basis19079.json"
theorem reductionProof19079 : EqualModuloRelations reduction19079.relations reduction19079.input reduction19079.output := by lin_cert using reduction19079.terms
theorem substitutionProof19079 : IsMapEvaluation generatorImages reduction19079.relations [0,0,2135] reduction19079.output := by lin_cert using reduction19079.terms
def map_26_247 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image19309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19309 : InImage map_26_247 image19309 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction19309 : Bundle := named_bundle% "RealMapCertificates/relations/basis19309.json"
theorem reductionProof19309 : EqualModuloRelations reduction19309.relations reduction19309.input reduction19309.output := by lin_cert using reduction19309.terms
theorem substitutionProof19309 : IsMapEvaluation generatorImages reduction19309.relations [2249] reduction19309.output := by lin_cert using reduction19309.terms
def image19310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19310 : InImage map_26_247 image19310 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction19310 : Bundle := named_bundle% "RealMapCertificates/relations/basis19310.json"
theorem reductionProof19310 : EqualModuloRelations reduction19310.relations reduction19310.input reduction19310.output := by lin_cert using reduction19310.terms
theorem substitutionProof19310 : IsMapEvaluation generatorImages reduction19310.relations [2248] reduction19310.output := by lin_cert using reduction19310.terms
def image19311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19311 : InImage map_26_247 image19311 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction19311 : Bundle := named_bundle% "RealMapCertificates/relations/basis19311.json"
theorem reductionProof19311 : EqualModuloRelations reduction19311.relations reduction19311.input reduction19311.output := by lin_cert using reduction19311.terms
theorem substitutionProof19311 : IsMapEvaluation generatorImages reduction19311.relations [9,13,13,867] reduction19311.output := by lin_cert using reduction19311.terms
def image19312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19312 : InImage map_26_247 image19312 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction19312 : Bundle := named_bundle% "RealMapCertificates/relations/basis19312.json"
theorem reductionProof19312 : EqualModuloRelations reduction19312.relations reduction19312.input reduction19312.output := by lin_cert using reduction19312.terms
theorem substitutionProof19312 : IsMapEvaluation generatorImages reduction19312.relations [8,1724] reduction19312.output := by lin_cert using reduction19312.terms
def image19313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19313 : InImage map_26_247 image19313 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction19313 : Bundle := named_bundle% "RealMapCertificates/relations/basis19313.json"
theorem reductionProof19313 : EqualModuloRelations reduction19313.relations reduction19313.input reduction19313.output := by lin_cert using reduction19313.terms
theorem substitutionProof19313 : IsMapEvaluation generatorImages reduction19313.relations [7,1759] reduction19313.output := by lin_cert using reduction19313.terms
def image19314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19314 : InImage map_26_247 image19314 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction19314 : Bundle := named_bundle% "RealMapCertificates/relations/basis19314.json"
theorem reductionProof19314 : EqualModuloRelations reduction19314.relations reduction19314.input reduction19314.output := by lin_cert using reduction19314.terms
theorem substitutionProof19314 : IsMapEvaluation generatorImages reduction19314.relations [0,2210] reduction19314.output := by lin_cert using reduction19314.terms
def image19315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19315 : InImage map_26_247 image19315 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction19315 : Bundle := named_bundle% "RealMapCertificates/relations/basis19315.json"
theorem reductionProof19315 : EqualModuloRelations reduction19315.relations reduction19315.input reduction19315.output := by lin_cert using reduction19315.terms
theorem substitutionProof19315 : IsMapEvaluation generatorImages reduction19315.relations [0,2209] reduction19315.output := by lin_cert using reduction19315.terms
def image19316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19316 : InImage map_26_247 image19316 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction19316 : Bundle := named_bundle% "RealMapCertificates/relations/basis19316.json"
theorem reductionProof19316 : EqualModuloRelations reduction19316.relations reduction19316.input reduction19316.output := by lin_cert using reduction19316.terms
theorem substitutionProof19316 : IsMapEvaluation generatorImages reduction19316.relations [0,0,2172] reduction19316.output := by lin_cert using reduction19316.terms
def image19317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19317 : InImage map_26_247 image19317 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction19317 : Bundle := named_bundle% "RealMapCertificates/relations/basis19317.json"
theorem reductionProof19317 : EqualModuloRelations reduction19317.relations reduction19317.input reduction19317.output := by lin_cert using reduction19317.terms
theorem substitutionProof19317 : IsMapEvaluation generatorImages reduction19317.relations [0,0,0,0,0,2067] reduction19317.output := by lin_cert using reduction19317.terms
def map_26_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19585 : InImage map_26_248 image19585 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19585 : Bundle := named_bundle% "RealMapCertificates/relations/basis19585.json"
theorem reductionProof19585 : EqualModuloRelations reduction19585.relations reduction19585.input reduction19585.output := by lin_cert using reduction19585.terms
theorem substitutionProof19585 : IsMapEvaluation generatorImages reduction19585.relations [2281] reduction19585.output := by lin_cert using reduction19585.terms
def image19586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19586 : InImage map_26_248 image19586 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19586 : Bundle := named_bundle% "RealMapCertificates/relations/basis19586.json"
theorem reductionProof19586 : EqualModuloRelations reduction19586.relations reduction19586.input reduction19586.output := by lin_cert using reduction19586.terms
theorem substitutionProof19586 : IsMapEvaluation generatorImages reduction19586.relations [8,185,324] reduction19586.output := by lin_cert using reduction19586.terms
def image19587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19587 : InImage map_26_248 image19587 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19587 : Bundle := named_bundle% "RealMapCertificates/relations/basis19587.json"
theorem reductionProof19587 : EqualModuloRelations reduction19587.relations reduction19587.input reduction19587.output := by lin_cert using reduction19587.terms
theorem substitutionProof19587 : IsMapEvaluation generatorImages reduction19587.relations [0,2251] reduction19587.output := by lin_cert using reduction19587.terms
def image19588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19588 : InImage map_26_248 image19588 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19588 : Bundle := named_bundle% "RealMapCertificates/relations/basis19588.json"
theorem reductionProof19588 : EqualModuloRelations reduction19588.relations reduction19588.input reduction19588.output := by lin_cert using reduction19588.terms
theorem substitutionProof19588 : IsMapEvaluation generatorImages reduction19588.relations [0,0,2213] reduction19588.output := by lin_cert using reduction19588.terms
def image19589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19589 : InImage map_26_248 image19589 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19589 : Bundle := named_bundle% "RealMapCertificates/relations/basis19589.json"
theorem reductionProof19589 : EqualModuloRelations reduction19589.relations reduction19589.input reduction19589.output := by lin_cert using reduction19589.terms
theorem substitutionProof19589 : IsMapEvaluation generatorImages reduction19589.relations [0,0,8,1695] reduction19589.output := by lin_cert using reduction19589.terms
def image19590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19590 : InImage map_26_248 image19590 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19590 : Bundle := named_bundle% "RealMapCertificates/relations/basis19590.json"
theorem reductionProof19590 : EqualModuloRelations reduction19590.relations reduction19590.input reduction19590.output := by lin_cert using reduction19590.terms
theorem substitutionProof19590 : IsMapEvaluation generatorImages reduction19590.relations [0,0,0,0,246,324] reduction19590.output := by lin_cert using reduction19590.terms
def map_26_249 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19885 : InImage map_26_249 image19885 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19885 : Bundle := named_bundle% "RealMapCertificates/relations/basis19885.json"
theorem reductionProof19885 : EqualModuloRelations reduction19885.relations reduction19885.input reduction19885.output := by lin_cert using reduction19885.terms
theorem substitutionProof19885 : IsMapEvaluation generatorImages reduction19885.relations [2315] reduction19885.output := by lin_cert using reduction19885.terms
def image19886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19886 : InImage map_26_249 image19886 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19886 : Bundle := named_bundle% "RealMapCertificates/relations/basis19886.json"
theorem reductionProof19886 : EqualModuloRelations reduction19886.relations reduction19886.input reduction19886.output := by lin_cert using reduction19886.terms
theorem substitutionProof19886 : IsMapEvaluation generatorImages reduction19886.relations [13,75,629] reduction19886.output := by lin_cert using reduction19886.terms
def image19887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19887 : InImage map_26_249 image19887 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19887 : Bundle := named_bundle% "RealMapCertificates/relations/basis19887.json"
theorem reductionProof19887 : EqualModuloRelations reduction19887.relations reduction19887.input reduction19887.output := by lin_cert using reduction19887.terms
theorem substitutionProof19887 : IsMapEvaluation generatorImages reduction19887.relations [13,23,1004] reduction19887.output := by lin_cert using reduction19887.terms
def image19888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19888 : InImage map_26_249 image19888 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19888 : Bundle := named_bundle% "RealMapCertificates/relations/basis19888.json"
theorem reductionProof19888 : EqualModuloRelations reduction19888.relations reduction19888.input reduction19888.output := by lin_cert using reduction19888.terms
theorem substitutionProof19888 : IsMapEvaluation generatorImages reduction19888.relations [8,1763] reduction19888.output := by lin_cert using reduction19888.terms
def image19889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19889 : InImage map_26_249 image19889 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19889 : Bundle := named_bundle% "RealMapCertificates/relations/basis19889.json"
theorem reductionProof19889 : EqualModuloRelations reduction19889.relations reduction19889.input reduction19889.output := by lin_cert using reduction19889.terms
theorem substitutionProof19889 : IsMapEvaluation generatorImages reduction19889.relations [3,2045] reduction19889.output := by lin_cert using reduction19889.terms
def image19890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19890 : InImage map_26_249 image19890 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19890 : Bundle := named_bundle% "RealMapCertificates/relations/basis19890.json"
theorem reductionProof19890 : EqualModuloRelations reduction19890.relations reduction19890.input reduction19890.output := by lin_cert using reduction19890.terms
theorem substitutionProof19890 : IsMapEvaluation generatorImages reduction19890.relations [2,2170] reduction19890.output := by lin_cert using reduction19890.terms
def image19891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19891 : InImage map_26_249 image19891 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19891 : Bundle := named_bundle% "RealMapCertificates/relations/basis19891.json"
theorem reductionProof19891 : EqualModuloRelations reduction19891.relations reduction19891.input reduction19891.output := by lin_cert using reduction19891.terms
theorem substitutionProof19891 : IsMapEvaluation generatorImages reduction19891.relations [0,17,147,324] reduction19891.output := by lin_cert using reduction19891.terms
def image19892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19892 : InImage map_26_249 image19892 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19892 : Bundle := named_bundle% "RealMapCertificates/relations/basis19892.json"
theorem reductionProof19892 : EqualModuloRelations reduction19892.relations reduction19892.input reduction19892.output := by lin_cert using reduction19892.terms
theorem substitutionProof19892 : IsMapEvaluation generatorImages reduction19892.relations [0,0,2253] reduction19892.output := by lin_cert using reduction19892.terms
def map_26_250 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20105 : InImage map_26_250 image20105 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20105 : Bundle := named_bundle% "RealMapCertificates/relations/basis20105.json"
theorem reductionProof20105 : EqualModuloRelations reduction20105.relations reduction20105.input reduction20105.output := by lin_cert using reduction20105.terms
theorem substitutionProof20105 : IsMapEvaluation generatorImages reduction20105.relations [2345] reduction20105.output := by lin_cert using reduction20105.terms
def image20106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20106 : InImage map_26_250 image20106 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20106 : Bundle := named_bundle% "RealMapCertificates/relations/basis20106.json"
theorem reductionProof20106 : EqualModuloRelations reduction20106.relations reduction20106.input reduction20106.output := by lin_cert using reduction20106.terms
theorem substitutionProof20106 : IsMapEvaluation generatorImages reduction20106.relations [2344] reduction20106.output := by lin_cert using reduction20106.terms
def image20107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20107 : InImage map_26_250 image20107 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20107 : Bundle := named_bundle% "RealMapCertificates/relations/basis20107.json"
theorem reductionProof20107 : EqualModuloRelations reduction20107.relations reduction20107.input reduction20107.output := by lin_cert using reduction20107.terms
theorem substitutionProof20107 : IsMapEvaluation generatorImages reduction20107.relations [67,960] reduction20107.output := by lin_cert using reduction20107.terms
def image20108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20108 : InImage map_26_250 image20108 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20108 : Bundle := named_bundle% "RealMapCertificates/relations/basis20108.json"
theorem reductionProof20108 : EqualModuloRelations reduction20108.relations reduction20108.input reduction20108.output := by lin_cert using reduction20108.terms
theorem substitutionProof20108 : IsMapEvaluation generatorImages reduction20108.relations [13,1659] reduction20108.output := by lin_cert using reduction20108.terms
def image20109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20109 : InImage map_26_250 image20109 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20109 : Bundle := named_bundle% "RealMapCertificates/relations/basis20109.json"
theorem reductionProof20109 : EqualModuloRelations reduction20109.relations reduction20109.input reduction20109.output := by lin_cert using reduction20109.terms
theorem substitutionProof20109 : IsMapEvaluation generatorImages reduction20109.relations [13,13,13,867] reduction20109.output := by lin_cert using reduction20109.terms
def image20110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20110 : InImage map_26_250 image20110 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20110 : Bundle := named_bundle% "RealMapCertificates/relations/basis20110.json"
theorem reductionProof20110 : EqualModuloRelations reduction20110.relations reduction20110.input reduction20110.output := by lin_cert using reduction20110.terms
theorem substitutionProof20110 : IsMapEvaluation generatorImages reduction20110.relations [8,1785] reduction20110.output := by lin_cert using reduction20110.terms
def image20111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20111 : InImage map_26_250 image20111 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20111 : Bundle := named_bundle% "RealMapCertificates/relations/basis20111.json"
theorem reductionProof20111 : EqualModuloRelations reduction20111.relations reduction20111.input reduction20111.output := by lin_cert using reduction20111.terms
theorem substitutionProof20111 : IsMapEvaluation generatorImages reduction20111.relations [7,1839] reduction20111.output := by lin_cert using reduction20111.terms
def image20112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20112 : InImage map_26_250 image20112 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20112 : Bundle := named_bundle% "RealMapCertificates/relations/basis20112.json"
theorem reductionProof20112 : EqualModuloRelations reduction20112.relations reduction20112.input reduction20112.output := by lin_cert using reduction20112.terms
theorem substitutionProof20112 : IsMapEvaluation generatorImages reduction20112.relations [0,0,2284] reduction20112.output := by lin_cert using reduction20112.terms
def map_26_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20397 : InImage map_26_251 image20397 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20397 : Bundle := named_bundle% "RealMapCertificates/relations/basis20397.json"
theorem reductionProof20397 : EqualModuloRelations reduction20397.relations reduction20397.input reduction20397.output := by lin_cert using reduction20397.terms
theorem substitutionProof20397 : IsMapEvaluation generatorImages reduction20397.relations [2382] reduction20397.output := by lin_cert using reduction20397.terms
def image20398 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20398 : InImage map_26_251 image20398 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20398 : Bundle := named_bundle% "RealMapCertificates/relations/basis20398.json"
theorem reductionProof20398 : EqualModuloRelations reduction20398.relations reduction20398.input reduction20398.output := by lin_cert using reduction20398.terms
theorem substitutionProof20398 : IsMapEvaluation generatorImages reduction20398.relations [8,8,138,324] reduction20398.output := by lin_cert using reduction20398.terms
def image20399 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20399 : InImage map_26_251 image20399 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20399 : Bundle := named_bundle% "RealMapCertificates/relations/basis20399.json"
theorem reductionProof20399 : EqualModuloRelations reduction20399.relations reduction20399.input reduction20399.output := by lin_cert using reduction20399.terms
theorem substitutionProof20399 : IsMapEvaluation generatorImages reduction20399.relations [0,2346] reduction20399.output := by lin_cert using reduction20399.terms
def image20400 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20400 : InImage map_26_251 image20400 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20400 : Bundle := named_bundle% "RealMapCertificates/relations/basis20400.json"
theorem reductionProof20400 : EqualModuloRelations reduction20400.relations reduction20400.input reduction20400.output := by lin_cert using reduction20400.terms
theorem substitutionProof20400 : IsMapEvaluation generatorImages reduction20400.relations [0,0,2316] reduction20400.output := by lin_cert using reduction20400.terms
def image20401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20401 : InImage map_26_251 image20401 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20401 : Bundle := named_bundle% "RealMapCertificates/relations/basis20401.json"
theorem reductionProof20401 : EqualModuloRelations reduction20401.relations reduction20401.input reduction20401.output := by lin_cert using reduction20401.terms
theorem substitutionProof20401 : IsMapEvaluation generatorImages reduction20401.relations [0,0,188,533] reduction20401.output := by lin_cert using reduction20401.terms
def image20402 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20402 : InImage map_26_251 image20402 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20402 : Bundle := named_bundle% "RealMapCertificates/relations/basis20402.json"
theorem reductionProof20402 : EqualModuloRelations reduction20402.relations reduction20402.input reduction20402.output := by lin_cert using reduction20402.terms
theorem substitutionProof20402 : IsMapEvaluation generatorImages reduction20402.relations [0,0,9,1695] reduction20402.output := by lin_cert using reduction20402.terms
def map_26_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20710 : InImage map_26_252 image20710 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20710 : Bundle := named_bundle% "RealMapCertificates/relations/basis20710.json"
theorem reductionProof20710 : EqualModuloRelations reduction20710.relations reduction20710.input reduction20710.output := by lin_cert using reduction20710.terms
theorem substitutionProof20710 : IsMapEvaluation generatorImages reduction20710.relations [9,13,1320] reduction20710.output := by lin_cert using reduction20710.terms
def image20711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20711 : InImage map_26_252 image20711 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20711 : Bundle := named_bundle% "RealMapCertificates/relations/basis20711.json"
theorem reductionProof20711 : EqualModuloRelations reduction20711.relations reduction20711.input reduction20711.output := by lin_cert using reduction20711.terms
theorem substitutionProof20711 : IsMapEvaluation generatorImages reduction20711.relations [8,1841] reduction20711.output := by lin_cert using reduction20711.terms
def image20712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20712 : InImage map_26_252 image20712 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20712 : Bundle := named_bundle% "RealMapCertificates/relations/basis20712.json"
theorem reductionProof20712 : EqualModuloRelations reduction20712.relations reduction20712.input reduction20712.output := by lin_cert using reduction20712.terms
theorem substitutionProof20712 : IsMapEvaluation generatorImages reduction20712.relations [3,2134] reduction20712.output := by lin_cert using reduction20712.terms
def image20713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20713 : InImage map_26_252 image20713 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20713 : Bundle := named_bundle% "RealMapCertificates/relations/basis20713.json"
theorem reductionProof20713 : EqualModuloRelations reduction20713.relations reduction20713.input reduction20713.output := by lin_cert using reduction20713.terms
theorem substitutionProof20713 : IsMapEvaluation generatorImages reduction20713.relations [1,1,2284] reduction20713.output := by lin_cert using reduction20713.terms
def image20714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20714 : InImage map_26_252 image20714 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20714 : Bundle := named_bundle% "RealMapCertificates/relations/basis20714.json"
theorem reductionProof20714 : EqualModuloRelations reduction20714.relations reduction20714.input reduction20714.output := by lin_cert using reduction20714.terms
theorem substitutionProof20714 : IsMapEvaluation generatorImages reduction20714.relations [0,2383] reduction20714.output := by lin_cert using reduction20714.terms
def image20715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20715 : InImage map_26_252 image20715 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20715 : Bundle := named_bundle% "RealMapCertificates/relations/basis20715.json"
theorem reductionProof20715 : EqualModuloRelations reduction20715.relations reduction20715.input reduction20715.output := by lin_cert using reduction20715.terms
theorem substitutionProof20715 : IsMapEvaluation generatorImages reduction20715.relations [0,3,2104] reduction20715.output := by lin_cert using reduction20715.terms
def image20716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20716 : InImage map_26_252 image20716 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20716 : Bundle := named_bundle% "RealMapCertificates/relations/basis20716.json"
theorem reductionProof20716 : EqualModuloRelations reduction20716.relations reduction20716.input reduction20716.output := by lin_cert using reduction20716.terms
theorem substitutionProof20716 : IsMapEvaluation generatorImages reduction20716.relations [0,0,2347] reduction20716.output := by lin_cert using reduction20716.terms
def image20717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20717 : InImage map_26_252 image20717 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20717 : Bundle := named_bundle% "RealMapCertificates/relations/basis20717.json"
theorem reductionProof20717 : EqualModuloRelations reduction20717.relations reduction20717.input reduction20717.output := by lin_cert using reduction20717.terms
theorem substitutionProof20717 : IsMapEvaluation generatorImages reduction20717.relations [0,0,0,0,2286] reduction20717.output := by lin_cert using reduction20717.terms
def map_26_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20934 : InImage map_26_253 image20934 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20934 : Bundle := named_bundle% "RealMapCertificates/relations/basis20934.json"
theorem reductionProof20934 : EqualModuloRelations reduction20934.relations reduction20934.input reduction20934.output := by lin_cert using reduction20934.terms
theorem substitutionProof20934 : IsMapEvaluation generatorImages reduction20934.relations [2446] reduction20934.output := by lin_cert using reduction20934.terms
def image20935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20935 : InImage map_26_253 image20935 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20935 : Bundle := named_bundle% "RealMapCertificates/relations/basis20935.json"
theorem reductionProof20935 : EqualModuloRelations reduction20935.relations reduction20935.input reduction20935.output := by lin_cert using reduction20935.terms
theorem substitutionProof20935 : IsMapEvaluation generatorImages reduction20935.relations [75,959] reduction20935.output := by lin_cert using reduction20935.terms
def image20936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20936 : InImage map_26_253 image20936 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20936 : Bundle := named_bundle% "RealMapCertificates/relations/basis20936.json"
theorem reductionProof20936 : EqualModuloRelations reduction20936.relations reduction20936.input reduction20936.output := by lin_cert using reduction20936.terms
theorem substitutionProof20936 : IsMapEvaluation generatorImages reduction20936.relations [9,1785] reduction20936.output := by lin_cert using reduction20936.terms
def image20937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20937 : InImage map_26_253 image20937 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20937 : Bundle := named_bundle% "RealMapCertificates/relations/basis20937.json"
theorem reductionProof20937 : EqualModuloRelations reduction20937.relations reduction20937.input reduction20937.output := by lin_cert using reduction20937.terms
theorem substitutionProof20937 : IsMapEvaluation generatorImages reduction20937.relations [2,2,2172] reduction20937.output := by lin_cert using reduction20937.terms
def image20938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20938 : InImage map_26_253 image20938 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20938 : Bundle := named_bundle% "RealMapCertificates/relations/basis20938.json"
theorem reductionProof20938 : EqualModuloRelations reduction20938.relations reduction20938.input reduction20938.output := by lin_cert using reduction20938.terms
theorem substitutionProof20938 : IsMapEvaluation generatorImages reduction20938.relations [0,0,0,2350] reduction20938.output := by lin_cert using reduction20938.terms
def image20939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20939 : InImage map_26_253 image20939 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20939 : Bundle := named_bundle% "RealMapCertificates/relations/basis20939.json"
theorem reductionProof20939 : EqualModuloRelations reduction20939.relations reduction20939.input reduction20939.output := by lin_cert using reduction20939.terms
theorem substitutionProof20939 : IsMapEvaluation generatorImages reduction20939.relations [0,0,0,2349] reduction20939.output := by lin_cert using reduction20939.terms
def image20940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20940 : InImage map_26_253 image20940 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20940 : Bundle := named_bundle% "RealMapCertificates/relations/basis20940.json"
theorem reductionProof20940 : EqualModuloRelations reduction20940.relations reduction20940.input reduction20940.output := by lin_cert using reduction20940.terms
theorem substitutionProof20940 : IsMapEvaluation generatorImages reduction20940.relations [0,0,0,0,0,2288] reduction20940.output := by lin_cert using reduction20940.terms
def map_26_254 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21227 : InImage map_26_254 image21227 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21227 : Bundle := named_bundle% "RealMapCertificates/relations/basis21227.json"
theorem reductionProof21227 : EqualModuloRelations reduction21227.relations reduction21227.input reduction21227.output := by lin_cert using reduction21227.terms
theorem substitutionProof21227 : IsMapEvaluation generatorImages reduction21227.relations [2500] reduction21227.output := by lin_cert using reduction21227.terms
def image21228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21228 : InImage map_26_254 image21228 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21228 : Bundle := named_bundle% "RealMapCertificates/relations/basis21228.json"
theorem reductionProof21228 : EqualModuloRelations reduction21228.relations reduction21228.input reduction21228.output := by lin_cert using reduction21228.terms
theorem substitutionProof21228 : IsMapEvaluation generatorImages reduction21228.relations [2499] reduction21228.output := by lin_cert using reduction21228.terms
def image21229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21229 : InImage map_26_254 image21229 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21229 : Bundle := named_bundle% "RealMapCertificates/relations/basis21229.json"
theorem reductionProof21229 : EqualModuloRelations reduction21229.relations reduction21229.input reduction21229.output := by lin_cert using reduction21229.terms
theorem substitutionProof21229 : IsMapEvaluation generatorImages reduction21229.relations [2498] reduction21229.output := by lin_cert using reduction21229.terms
def image21230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21230 : InImage map_26_254 image21230 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21230 : Bundle := named_bundle% "RealMapCertificates/relations/basis21230.json"
theorem reductionProof21230 : EqualModuloRelations reduction21230.relations reduction21230.input reduction21230.output := by lin_cert using reduction21230.terms
theorem substitutionProof21230 : IsMapEvaluation generatorImages reduction21230.relations [8,8,147,324] reduction21230.output := by lin_cert using reduction21230.terms
def image21231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21231 : InImage map_26_254 image21231 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21231 : Bundle := named_bundle% "RealMapCertificates/relations/basis21231.json"
theorem reductionProof21231 : EqualModuloRelations reduction21231.relations reduction21231.input reduction21231.output := by lin_cert using reduction21231.terms
theorem substitutionProof21231 : IsMapEvaluation generatorImages reduction21231.relations [3,2210] reduction21231.output := by lin_cert using reduction21231.terms
def image21232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21232 : InImage map_26_254 image21232 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21232 : Bundle := named_bundle% "RealMapCertificates/relations/basis21232.json"
theorem reductionProof21232 : EqualModuloRelations reduction21232.relations reduction21232.input reduction21232.output := by lin_cert using reduction21232.terms
theorem substitutionProof21232 : IsMapEvaluation generatorImages reduction21232.relations [3,2209] reduction21232.output := by lin_cert using reduction21232.terms
def image21233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21233 : InImage map_26_254 image21233 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21233 : Bundle := named_bundle% "RealMapCertificates/relations/basis21233.json"
theorem reductionProof21233 : EqualModuloRelations reduction21233.relations reduction21233.input reduction21233.output := by lin_cert using reduction21233.terms
theorem substitutionProof21233 : IsMapEvaluation generatorImages reduction21233.relations [0,2447] reduction21233.output := by lin_cert using reduction21233.terms
def image21234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21234 : InImage map_26_254 image21234 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21234 : Bundle := named_bundle% "RealMapCertificates/relations/basis21234.json"
theorem reductionProof21234 : EqualModuloRelations reduction21234.relations reduction21234.input reduction21234.output := by lin_cert using reduction21234.terms
theorem substitutionProof21234 : IsMapEvaluation generatorImages reduction21234.relations [0,0,0,0,2352] reduction21234.output := by lin_cert using reduction21234.terms
def map_26_255 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image21585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21585 : InImage map_26_255 image21585 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction21585 : Bundle := named_bundle% "RealMapCertificates/relations/basis21585.json"
theorem reductionProof21585 : EqualModuloRelations reduction21585.relations reduction21585.input reduction21585.output := by lin_cert using reduction21585.terms
theorem substitutionProof21585 : IsMapEvaluation generatorImages reduction21585.relations [2557] reduction21585.output := by lin_cert using reduction21585.terms
def image21586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21586 : InImage map_26_255 image21586 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction21586 : Bundle := named_bundle% "RealMapCertificates/relations/basis21586.json"
theorem reductionProof21586 : EqualModuloRelations reduction21586.relations reduction21586.input reduction21586.output := by lin_cert using reduction21586.terms
theorem substitutionProof21586 : IsMapEvaluation generatorImages reduction21586.relations [13,13,1320] reduction21586.output := by lin_cert using reduction21586.terms
def image21587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21587 : InImage map_26_255 image21587 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction21587 : Bundle := named_bundle% "RealMapCertificates/relations/basis21587.json"
theorem reductionProof21587 : EqualModuloRelations reduction21587.relations reduction21587.input reduction21587.output := by lin_cert using reduction21587.terms
theorem substitutionProof21587 : IsMapEvaluation generatorImages reduction21587.relations [9,1840] reduction21587.output := by lin_cert using reduction21587.terms
def image21588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21588 : InImage map_26_255 image21588 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction21588 : Bundle := named_bundle% "RealMapCertificates/relations/basis21588.json"
theorem reductionProof21588 : EqualModuloRelations reduction21588.relations reduction21588.input reduction21588.output := by lin_cert using reduction21588.terms
theorem substitutionProof21588 : IsMapEvaluation generatorImages reduction21588.relations [8,8,1548] reduction21588.output := by lin_cert using reduction21588.terms
def image21589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21589 : InImage map_26_255 image21589 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction21589 : Bundle := named_bundle% "RealMapCertificates/relations/basis21589.json"
theorem reductionProof21589 : EqualModuloRelations reduction21589.relations reduction21589.input reduction21589.output := by lin_cert using reduction21589.terms
theorem substitutionProof21589 : IsMapEvaluation generatorImages reduction21589.relations [7,1971] reduction21589.output := by lin_cert using reduction21589.terms
def image21590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21590 : InImage map_26_255 image21590 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction21590 : Bundle := named_bundle% "RealMapCertificates/relations/basis21590.json"
theorem reductionProof21590 : EqualModuloRelations reduction21590.relations reduction21590.input reduction21590.output := by lin_cert using reduction21590.terms
theorem substitutionProof21590 : IsMapEvaluation generatorImages reduction21590.relations [1,2447] reduction21590.output := by lin_cert using reduction21590.terms
def image21591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21591 : InImage map_26_255 image21591 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction21591 : Bundle := named_bundle% "RealMapCertificates/relations/basis21591.json"
theorem reductionProof21591 : EqualModuloRelations reduction21591.relations reduction21591.input reduction21591.output := by lin_cert using reduction21591.terms
theorem substitutionProof21591 : IsMapEvaluation generatorImages reduction21591.relations [1,76,959] reduction21591.output := by lin_cert using reduction21591.terms
def image21592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21592 : InImage map_26_255 image21592 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction21592 : Bundle := named_bundle% "RealMapCertificates/relations/basis21592.json"
theorem reductionProof21592 : EqualModuloRelations reduction21592.relations reduction21592.input reduction21592.output := by lin_cert using reduction21592.terms
theorem substitutionProof21592 : IsMapEvaluation generatorImages reduction21592.relations [0,2501] reduction21592.output := by lin_cert using reduction21592.terms
def image21593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21593 : InImage map_26_255 image21593 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction21593 : Bundle := named_bundle% "RealMapCertificates/relations/basis21593.json"
theorem reductionProof21593 : EqualModuloRelations reduction21593.relations reduction21593.input reduction21593.output := by lin_cert using reduction21593.terms
theorem substitutionProof21593 : IsMapEvaluation generatorImages reduction21593.relations [0,3,2212] reduction21593.output := by lin_cert using reduction21593.terms
def image21594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21594 : InImage map_26_255 image21594 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction21594 : Bundle := named_bundle% "RealMapCertificates/relations/basis21594.json"
theorem reductionProof21594 : EqualModuloRelations reduction21594.relations reduction21594.input reduction21594.output := by lin_cert using reduction21594.terms
theorem substitutionProof21594 : IsMapEvaluation generatorImages reduction21594.relations [0,0,2451] reduction21594.output := by lin_cert using reduction21594.terms
def image21595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21595 : InImage map_26_255 image21595 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction21595 : Bundle := named_bundle% "RealMapCertificates/relations/basis21595.json"
theorem reductionProof21595 : EqualModuloRelations reduction21595.relations reduction21595.input reduction21595.output := by lin_cert using reduction21595.terms
theorem substitutionProof21595 : IsMapEvaluation generatorImages reduction21595.relations [0,0,2450] reduction21595.output := by lin_cert using reduction21595.terms
end RealMapCertificates
