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
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 69 => []
  | 76 => []
  | 78 => [[4,4,4,5,6]]
  | 102 => [[2,4,4,4,4,4,4]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 123 => [[3,4,4,4,4,4,4]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 154 => [[0,5,8,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 189 => []
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 299 => []
  | 300 => []
  | 317 => []
  | 324 => []
  | 344 => [[4,4,5,5,8,12]]
  | 411 => []
  | 629 => []
  | 949 => []
  | 959 => []
  | 1050 => []
  | 1548 => []
  | 1785 => []
  | 1840 => []
  | 1868 => []
  | 2003 => []
  | 2045 => []
  | 2067 => []
  | 2104 => []
  | 2134 => []
  | 2136 => []
  | 2349 => []
  | 2383 => []
  | 2430 => []
  | 2501 => []
  | 2502 => []
  | 2560 => []
  | 2586 => []
  | 2587 => []
  | 2588 => []
  | 2589 => []
  | 2591 => []
  | 2633 => []
  | 2634 => []
  | 2635 => []
  | 2636 => []
  | 2682 => []
  | 2683 => []
  | 2684 => []
  | 2685 => []
  | 2686 => []
  | 2687 => []
  | 2749 => []
  | 2750 => []
  | 2807 => []
  | 2808 => []
  | 2809 => []
  | 2870 => []
  | _ => []
def map_26_256 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21836 : InImage map_26_256 image21836 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21836 : Bundle := named_bundle% "RealMapCertificates/relations/basis21836.json"
theorem reductionProof21836 : EqualModuloRelations reduction21836.relations reduction21836.input reduction21836.output := by lin_cert using reduction21836.terms
theorem substitutionProof21836 : IsMapEvaluation generatorImages reduction21836.relations [13,1785] reduction21836.output := by lin_cert using reduction21836.terms
def image21837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21837 : InImage map_26_256 image21837 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21837 : Bundle := named_bundle% "RealMapCertificates/relations/basis21837.json"
theorem reductionProof21837 : EqualModuloRelations reduction21837.relations reduction21837.input reduction21837.output := by lin_cert using reduction21837.terms
theorem substitutionProof21837 : IsMapEvaluation generatorImages reduction21837.relations [9,1868] reduction21837.output := by lin_cert using reduction21837.terms
def image21838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21838 : InImage map_26_256 image21838 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21838 : Bundle := named_bundle% "RealMapCertificates/relations/basis21838.json"
theorem reductionProof21838 : EqualModuloRelations reduction21838.relations reduction21838.input reduction21838.output := by lin_cert using reduction21838.terms
theorem substitutionProof21838 : IsMapEvaluation generatorImages reduction21838.relations [7,2003] reduction21838.output := by lin_cert using reduction21838.terms
def image21839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21839 : InImage map_26_256 image21839 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21839 : Bundle := named_bundle% "RealMapCertificates/relations/basis21839.json"
theorem reductionProof21839 : EqualModuloRelations reduction21839.relations reduction21839.input reduction21839.output := by lin_cert using reduction21839.terms
theorem substitutionProof21839 : IsMapEvaluation generatorImages reduction21839.relations [5,2067] reduction21839.output := by lin_cert using reduction21839.terms
def image21840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21840 : InImage map_26_256 image21840 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21840 : Bundle := named_bundle% "RealMapCertificates/relations/basis21840.json"
theorem reductionProof21840 : EqualModuloRelations reduction21840.relations reduction21840.input reduction21840.output := by lin_cert using reduction21840.terms
theorem substitutionProof21840 : IsMapEvaluation generatorImages reduction21840.relations [1,2502] reduction21840.output := by lin_cert using reduction21840.terms
def image21841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21841 : InImage map_26_256 image21841 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21841 : Bundle := named_bundle% "RealMapCertificates/relations/basis21841.json"
theorem reductionProof21841 : EqualModuloRelations reduction21841.relations reduction21841.input reduction21841.output := by lin_cert using reduction21841.terms
theorem substitutionProof21841 : IsMapEvaluation generatorImages reduction21841.relations [1,2501] reduction21841.output := by lin_cert using reduction21841.terms
def map_26_257 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22179 : InImage map_26_257 image22179 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22179 : Bundle := named_bundle% "RealMapCertificates/relations/basis22179.json"
theorem reductionProof22179 : EqualModuloRelations reduction22179.relations reduction22179.input reduction22179.output := by lin_cert using reduction22179.terms
theorem substitutionProof22179 : IsMapEvaluation generatorImages reduction22179.relations [2634] reduction22179.output := by lin_cert using reduction22179.terms
def image22180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22180 : InImage map_26_257 image22180 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22180 : Bundle := named_bundle% "RealMapCertificates/relations/basis22180.json"
theorem reductionProof22180 : EqualModuloRelations reduction22180.relations reduction22180.input reduction22180.output := by lin_cert using reduction22180.terms
theorem substitutionProof22180 : IsMapEvaluation generatorImages reduction22180.relations [2633] reduction22180.output := by lin_cert using reduction22180.terms
def image22181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22181 : InImage map_26_257 image22181 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22181 : Bundle := named_bundle% "RealMapCertificates/relations/basis22181.json"
theorem reductionProof22181 : EqualModuloRelations reduction22181.relations reduction22181.input reduction22181.output := by lin_cert using reduction22181.terms
theorem substitutionProof22181 : IsMapEvaluation generatorImages reduction22181.relations [13,13,13,949] reduction22181.output := by lin_cert using reduction22181.terms
def image22182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22182 : InImage map_26_257 image22182 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22182 : Bundle := named_bundle% "RealMapCertificates/relations/basis22182.json"
theorem reductionProof22182 : EqualModuloRelations reduction22182.relations reduction22182.input reduction22182.output := by lin_cert using reduction22182.terms
theorem substitutionProof22182 : IsMapEvaluation generatorImages reduction22182.relations [8,8,17,64,324] reduction22182.output := by lin_cert using reduction22182.terms
def image22183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22183 : InImage map_26_257 image22183 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22183 : Bundle := named_bundle% "RealMapCertificates/relations/basis22183.json"
theorem reductionProof22183 : EqualModuloRelations reduction22183.relations reduction22183.input reduction22183.output := by lin_cert using reduction22183.terms
theorem substitutionProof22183 : IsMapEvaluation generatorImages reduction22183.relations [7,2045] reduction22183.output := by lin_cert using reduction22183.terms
def image22184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22184 : InImage map_26_257 image22184 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22184 : Bundle := named_bundle% "RealMapCertificates/relations/basis22184.json"
theorem reductionProof22184 : EqualModuloRelations reduction22184.relations reduction22184.input reduction22184.output := by lin_cert using reduction22184.terms
theorem substitutionProof22184 : IsMapEvaluation generatorImages reduction22184.relations [0,2588] reduction22184.output := by lin_cert using reduction22184.terms
def image22185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22185 : InImage map_26_257 image22185 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22185 : Bundle := named_bundle% "RealMapCertificates/relations/basis22185.json"
theorem reductionProof22185 : EqualModuloRelations reduction22185.relations reduction22185.input reduction22185.output := by lin_cert using reduction22185.terms
theorem substitutionProof22185 : IsMapEvaluation generatorImages reduction22185.relations [0,2587] reduction22185.output := by lin_cert using reduction22185.terms
def image22186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22186 : InImage map_26_257 image22186 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22186 : Bundle := named_bundle% "RealMapCertificates/relations/basis22186.json"
theorem reductionProof22186 : EqualModuloRelations reduction22186.relations reduction22186.input reduction22186.output := by lin_cert using reduction22186.terms
theorem substitutionProof22186 : IsMapEvaluation generatorImages reduction22186.relations [0,2586] reduction22186.output := by lin_cert using reduction22186.terms
def map_26_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22548 : InImage map_26_258 image22548 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22548 : Bundle := named_bundle% "RealMapCertificates/relations/basis22548.json"
theorem reductionProof22548 : EqualModuloRelations reduction22548.relations reduction22548.input reduction22548.output := by lin_cert using reduction22548.terms
theorem substitutionProof22548 : IsMapEvaluation generatorImages reduction22548.relations [2683] reduction22548.output := by lin_cert using reduction22548.terms
def image22549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22549 : InImage map_26_258 image22549 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22549 : Bundle := named_bundle% "RealMapCertificates/relations/basis22549.json"
theorem reductionProof22549 : EqualModuloRelations reduction22549.relations reduction22549.input reduction22549.output := by lin_cert using reduction22549.terms
theorem substitutionProof22549 : IsMapEvaluation generatorImages reduction22549.relations [2682] reduction22549.output := by lin_cert using reduction22549.terms
def image22550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22550 : InImage map_26_258 image22550 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22550 : Bundle := named_bundle% "RealMapCertificates/relations/basis22550.json"
theorem reductionProof22550 : EqualModuloRelations reduction22550.relations reduction22550.input reduction22550.output := by lin_cert using reduction22550.terms
theorem substitutionProof22550 : IsMapEvaluation generatorImages reduction22550.relations [13,1840] reduction22550.output := by lin_cert using reduction22550.terms
def image22551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22551 : InImage map_26_258 image22551 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22551 : Bundle := named_bundle% "RealMapCertificates/relations/basis22551.json"
theorem reductionProof22551 : EqualModuloRelations reduction22551.relations reduction22551.input reduction22551.output := by lin_cert using reduction22551.terms
theorem substitutionProof22551 : IsMapEvaluation generatorImages reduction22551.relations [8,9,1548] reduction22551.output := by lin_cert using reduction22551.terms
def image22552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22552 : InImage map_26_258 image22552 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22552 : Bundle := named_bundle% "RealMapCertificates/relations/basis22552.json"
theorem reductionProof22552 : EqualModuloRelations reduction22552.relations reduction22552.input reduction22552.output := by lin_cert using reduction22552.terms
theorem substitutionProof22552 : IsMapEvaluation generatorImages reduction22552.relations [0,2636] reduction22552.output := by lin_cert using reduction22552.terms
def image22553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22553 : InImage map_26_258 image22553 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22553 : Bundle := named_bundle% "RealMapCertificates/relations/basis22553.json"
theorem reductionProof22553 : EqualModuloRelations reduction22553.relations reduction22553.input reduction22553.output := by lin_cert using reduction22553.terms
theorem substitutionProof22553 : IsMapEvaluation generatorImages reduction22553.relations [0,2635] reduction22553.output := by lin_cert using reduction22553.terms
def image22554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22554 : InImage map_26_258 image22554 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22554 : Bundle := named_bundle% "RealMapCertificates/relations/basis22554.json"
theorem reductionProof22554 : EqualModuloRelations reduction22554.relations reduction22554.input reduction22554.output := by lin_cert using reduction22554.terms
theorem substitutionProof22554 : IsMapEvaluation generatorImages reduction22554.relations [0,0,2591] reduction22554.output := by lin_cert using reduction22554.terms
def image22555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22555 : InImage map_26_258 image22555 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22555 : Bundle := named_bundle% "RealMapCertificates/relations/basis22555.json"
theorem reductionProof22555 : EqualModuloRelations reduction22555.relations reduction22555.input reduction22555.output := by lin_cert using reduction22555.terms
theorem substitutionProof22555 : IsMapEvaluation generatorImages reduction22555.relations [0,0,2589] reduction22555.output := by lin_cert using reduction22555.terms
def map_26_259 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22839 : InImage map_26_259 image22839 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22839 : Bundle := named_bundle% "RealMapCertificates/relations/basis22839.json"
theorem reductionProof22839 : EqualModuloRelations reduction22839.relations reduction22839.input reduction22839.output := by lin_cert using reduction22839.terms
theorem substitutionProof22839 : IsMapEvaluation generatorImages reduction22839.relations [76,1050] reduction22839.output := by lin_cert using reduction22839.terms
def image22840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22840 : InImage map_26_259 image22840 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22840 : Bundle := named_bundle% "RealMapCertificates/relations/basis22840.json"
theorem reductionProof22840 : EqualModuloRelations reduction22840.relations reduction22840.input reduction22840.output := by lin_cert using reduction22840.terms
theorem substitutionProof22840 : IsMapEvaluation generatorImages reduction22840.relations [13,1868] reduction22840.output := by lin_cert using reduction22840.terms
def image22841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22841 : InImage map_26_259 image22841 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22841 : Bundle := named_bundle% "RealMapCertificates/relations/basis22841.json"
theorem reductionProof22841 : EqualModuloRelations reduction22841.relations reduction22841.input reduction22841.output := by lin_cert using reduction22841.terms
theorem substitutionProof22841 : IsMapEvaluation generatorImages reduction22841.relations [3,2383] reduction22841.output := by lin_cert using reduction22841.terms
def image22842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22842 : InImage map_26_259 image22842 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22842 : Bundle := named_bundle% "RealMapCertificates/relations/basis22842.json"
theorem reductionProof22842 : EqualModuloRelations reduction22842.relations reduction22842.input reduction22842.output := by lin_cert using reduction22842.terms
theorem substitutionProof22842 : IsMapEvaluation generatorImages reduction22842.relations [3,3,2104] reduction22842.output := by lin_cert using reduction22842.terms
def image22843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22843 : InImage map_26_259 image22843 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22843 : Bundle := named_bundle% "RealMapCertificates/relations/basis22843.json"
theorem reductionProof22843 : EqualModuloRelations reduction22843.relations reduction22843.input reduction22843.output := by lin_cert using reduction22843.terms
theorem substitutionProof22843 : IsMapEvaluation generatorImages reduction22843.relations [1,2635] reduction22843.output := by lin_cert using reduction22843.terms
def image22844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22844 : InImage map_26_259 image22844 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22844 : Bundle := named_bundle% "RealMapCertificates/relations/basis22844.json"
theorem reductionProof22844 : EqualModuloRelations reduction22844.relations reduction22844.input reduction22844.output := by lin_cert using reduction22844.terms
theorem substitutionProof22844 : IsMapEvaluation generatorImages reduction22844.relations [0,2685] reduction22844.output := by lin_cert using reduction22844.terms
def image22845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22845 : InImage map_26_259 image22845 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22845 : Bundle := named_bundle% "RealMapCertificates/relations/basis22845.json"
theorem reductionProof22845 : EqualModuloRelations reduction22845.relations reduction22845.input reduction22845.output := by lin_cert using reduction22845.terms
theorem substitutionProof22845 : IsMapEvaluation generatorImages reduction22845.relations [0,2684] reduction22845.output := by lin_cert using reduction22845.terms
def image22846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22846 : InImage map_26_259 image22846 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22846 : Bundle := named_bundle% "RealMapCertificates/relations/basis22846.json"
theorem reductionProof22846 : EqualModuloRelations reduction22846.relations reduction22846.input reduction22846.output := by lin_cert using reduction22846.terms
theorem substitutionProof22846 : IsMapEvaluation generatorImages reduction22846.relations [0,0,0,0,2560] reduction22846.output := by lin_cert using reduction22846.terms
def map_26_260 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image23219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23219 : InImage map_26_260 image23219 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction23219 : Bundle := named_bundle% "RealMapCertificates/relations/basis23219.json"
theorem reductionProof23219 : EqualModuloRelations reduction23219.relations reduction23219.input reduction23219.output := by lin_cert using reduction23219.terms
theorem substitutionProof23219 : IsMapEvaluation generatorImages reduction23219.relations [2808] reduction23219.output := by lin_cert using reduction23219.terms
def image23220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23220 : InImage map_26_260 image23220 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction23220 : Bundle := named_bundle% "RealMapCertificates/relations/basis23220.json"
theorem reductionProof23220 : EqualModuloRelations reduction23220.relations reduction23220.input reduction23220.output := by lin_cert using reduction23220.terms
theorem substitutionProof23220 : IsMapEvaluation generatorImages reduction23220.relations [2807] reduction23220.output := by lin_cert using reduction23220.terms
def image23221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23221 : InImage map_26_260 image23221 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction23221 : Bundle := named_bundle% "RealMapCertificates/relations/basis23221.json"
theorem reductionProof23221 : EqualModuloRelations reduction23221.relations reduction23221.input reduction23221.output := by lin_cert using reduction23221.terms
theorem substitutionProof23221 : IsMapEvaluation generatorImages reduction23221.relations [189,629] reduction23221.output := by lin_cert using reduction23221.terms
def image23222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23222 : InImage map_26_260 image23222 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction23222 : Bundle := named_bundle% "RealMapCertificates/relations/basis23222.json"
theorem reductionProof23222 : EqualModuloRelations reduction23222.relations reduction23222.input reduction23222.output := by lin_cert using reduction23222.terms
theorem substitutionProof23222 : IsMapEvaluation generatorImages reduction23222.relations [8,8,8,113,324] reduction23222.output := by lin_cert using reduction23222.terms
def image23223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23223 : InImage map_26_260 image23223 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction23223 : Bundle := named_bundle% "RealMapCertificates/relations/basis23223.json"
theorem reductionProof23223 : EqualModuloRelations reduction23223.relations reduction23223.input reduction23223.output := by lin_cert using reduction23223.terms
theorem substitutionProof23223 : IsMapEvaluation generatorImages reduction23223.relations [7,2134] reduction23223.output := by lin_cert using reduction23223.terms
def image23224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23224 : InImage map_26_260 image23224 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction23224 : Bundle := named_bundle% "RealMapCertificates/relations/basis23224.json"
theorem reductionProof23224 : EqualModuloRelations reduction23224.relations reduction23224.input reduction23224.output := by lin_cert using reduction23224.terms
theorem substitutionProof23224 : IsMapEvaluation generatorImages reduction23224.relations [1,2686] reduction23224.output := by lin_cert using reduction23224.terms
def image23225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23225 : InImage map_26_260 image23225 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction23225 : Bundle := named_bundle% "RealMapCertificates/relations/basis23225.json"
theorem reductionProof23225 : EqualModuloRelations reduction23225.relations reduction23225.input reduction23225.output := by lin_cert using reduction23225.terms
theorem substitutionProof23225 : IsMapEvaluation generatorImages reduction23225.relations [0,2750] reduction23225.output := by lin_cert using reduction23225.terms
def image23226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23226 : InImage map_26_260 image23226 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction23226 : Bundle := named_bundle% "RealMapCertificates/relations/basis23226.json"
theorem reductionProof23226 : EqualModuloRelations reduction23226.relations reduction23226.input reduction23226.output := by lin_cert using reduction23226.terms
theorem substitutionProof23226 : IsMapEvaluation generatorImages reduction23226.relations [0,7,2104] reduction23226.output := by lin_cert using reduction23226.terms
def image23227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23227 : InImage map_26_260 image23227 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction23227 : Bundle := named_bundle% "RealMapCertificates/relations/basis23227.json"
theorem reductionProof23227 : EqualModuloRelations reduction23227.relations reduction23227.input reduction23227.output := by lin_cert using reduction23227.terms
theorem substitutionProof23227 : IsMapEvaluation generatorImages reduction23227.relations [0,0,2687] reduction23227.output := by lin_cert using reduction23227.terms
def image23228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23228 : InImage map_26_260 image23228 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction23228 : Bundle := named_bundle% "RealMapCertificates/relations/basis23228.json"
theorem reductionProof23228 : EqualModuloRelations reduction23228.relations reduction23228.input reduction23228.output := by lin_cert using reduction23228.terms
theorem substitutionProof23228 : IsMapEvaluation generatorImages reduction23228.relations [0,0,3,2349] reduction23228.output := by lin_cert using reduction23228.terms
def map_26_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23665 : InImage map_26_261 image23665 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23665 : Bundle := named_bundle% "RealMapCertificates/relations/basis23665.json"
theorem reductionProof23665 : EqualModuloRelations reduction23665.relations reduction23665.input reduction23665.output := by lin_cert using reduction23665.terms
theorem substitutionProof23665 : IsMapEvaluation generatorImages reduction23665.relations [2870] reduction23665.output := by lin_cert using reduction23665.terms
def image23666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23666 : InImage map_26_261 image23666 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23666 : Bundle := named_bundle% "RealMapCertificates/relations/basis23666.json"
theorem reductionProof23666 : EqualModuloRelations reduction23666.relations reduction23666.input reduction23666.output := by lin_cert using reduction23666.terms
theorem substitutionProof23666 : IsMapEvaluation generatorImages reduction23666.relations [13,188,411] reduction23666.output := by lin_cert using reduction23666.terms
def image23667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23667 : InImage map_26_261 image23667 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23667 : Bundle := named_bundle% "RealMapCertificates/relations/basis23667.json"
theorem reductionProof23667 : EqualModuloRelations reduction23667.relations reduction23667.input reduction23667.output := by lin_cert using reduction23667.terms
theorem substitutionProof23667 : IsMapEvaluation generatorImages reduction23667.relations [8,13,1548] reduction23667.output := by lin_cert using reduction23667.terms
def image23668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23668 : InImage map_26_261 image23668 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23668 : Bundle := named_bundle% "RealMapCertificates/relations/basis23668.json"
theorem reductionProof23668 : EqualModuloRelations reduction23668.relations reduction23668.input reduction23668.output := by lin_cert using reduction23668.terms
theorem substitutionProof23668 : IsMapEvaluation generatorImages reduction23668.relations [3,76,959] reduction23668.output := by lin_cert using reduction23668.terms
def image23669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23669 : InImage map_26_261 image23669 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23669 : Bundle := named_bundle% "RealMapCertificates/relations/basis23669.json"
theorem reductionProof23669 : EqualModuloRelations reduction23669.relations reduction23669.input reduction23669.output := by lin_cert using reduction23669.terms
theorem substitutionProof23669 : IsMapEvaluation generatorImages reduction23669.relations [1,2750] reduction23669.output := by lin_cert using reduction23669.terms
def image23670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23670 : InImage map_26_261 image23670 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23670 : Bundle := named_bundle% "RealMapCertificates/relations/basis23670.json"
theorem reductionProof23670 : EqualModuloRelations reduction23670.relations reduction23670.input reduction23670.output := by lin_cert using reduction23670.terms
theorem substitutionProof23670 : IsMapEvaluation generatorImages reduction23670.relations [1,2749] reduction23670.output := by lin_cert using reduction23670.terms
def image23671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23671 : InImage map_26_261 image23671 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23671 : Bundle := named_bundle% "RealMapCertificates/relations/basis23671.json"
theorem reductionProof23671 : EqualModuloRelations reduction23671.relations reduction23671.input reduction23671.output := by lin_cert using reduction23671.terms
theorem substitutionProof23671 : IsMapEvaluation generatorImages reduction23671.relations [0,2809] reduction23671.output := by lin_cert using reduction23671.terms
def image23672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23672 : InImage map_26_261 image23672 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23672 : Bundle := named_bundle% "RealMapCertificates/relations/basis23672.json"
theorem reductionProof23672 : EqualModuloRelations reduction23672.relations reduction23672.input reduction23672.output := by lin_cert using reduction23672.terms
theorem substitutionProof23672 : IsMapEvaluation generatorImages reduction23672.relations [0,7,2136] reduction23672.output := by lin_cert using reduction23672.terms
def image23673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23673 : InImage map_26_261 image23673 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23673 : Bundle := named_bundle% "RealMapCertificates/relations/basis23673.json"
theorem reductionProof23673 : EqualModuloRelations reduction23673.relations reduction23673.input reduction23673.output := by lin_cert using reduction23673.terms
theorem substitutionProof23673 : IsMapEvaluation generatorImages reduction23673.relations [0,0,0,0,0,0,0,0,0,2430] reduction23673.output := by lin_cert using reduction23673.terms
def map_27_27 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image82 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation82 : InImage map_27_27 image82 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction82 : Bundle := named_bundle% "RealMapCertificates/relations/basis82.json"
theorem reductionProof82 : EqualModuloRelations reduction82.relations reduction82.input reduction82.output := by lin_cert using reduction82.terms
theorem substitutionProof82 : IsMapEvaluation generatorImages reduction82.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction82.output := by lin_cert using reduction82.terms
def map_27_78 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image667 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation667 : InImage map_27_78 image667 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction667 : Bundle := named_bundle% "RealMapCertificates/relations/basis667.json"
theorem reductionProof667 : EqualModuloRelations reduction667.relations reduction667.input reduction667.output := by lin_cert using reduction667.terms
theorem substitutionProof667 : IsMapEvaluation generatorImages reduction667.relations [0,0,102] reduction667.output := by lin_cert using reduction667.terms
def map_27_82 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation760 : InImage map_27_82 image760 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction760 : Bundle := named_bundle% "RealMapCertificates/relations/basis760.json"
theorem reductionProof760 : EqualModuloRelations reduction760.relations reduction760.input reduction760.output := by lin_cert using reduction760.terms
theorem substitutionProof760 : IsMapEvaluation generatorImages reduction760.relations [0,0,0,0,111] reduction760.output := by lin_cert using reduction760.terms
def map_27_83 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image782 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation782 : InImage map_27_83 image782 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction782 : Bundle := named_bundle% "RealMapCertificates/relations/basis782.json"
theorem reductionProof782 : EqualModuloRelations reduction782.relations reduction782.input reduction782.output := by lin_cert using reduction782.terms
theorem substitutionProof782 : IsMapEvaluation generatorImages reduction782.relations [123] reduction782.output := by lin_cert using reduction782.terms
def map_27_84 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation801 : InImage map_27_84 image801 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction801 : Bundle := named_bundle% "RealMapCertificates/relations/basis801.json"
theorem reductionProof801 : EqualModuloRelations reduction801.relations reduction801.input reduction801.output := by lin_cert using reduction801.terms
theorem substitutionProof801 : IsMapEvaluation generatorImages reduction801.relations [0,0,0,116] reduction801.output := by lin_cert using reduction801.terms
def map_27_89 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation937 : InImage map_27_89 image937 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction937 : Bundle := named_bundle% "RealMapCertificates/relations/basis937.json"
theorem reductionProof937 : EqualModuloRelations reduction937.relations reduction937.input reduction937.output := by lin_cert using reduction937.terms
theorem substitutionProof937 : IsMapEvaluation generatorImages reduction937.relations [0,0,0,0,0,17,50] reduction937.output := by lin_cert using reduction937.terms
def map_27_90 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image961 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation961 : InImage map_27_90 image961 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction961 : Bundle := named_bundle% "RealMapCertificates/relations/basis961.json"
theorem reductionProof961 : EqualModuloRelations reduction961.relations reduction961.input reduction961.output := by lin_cert using reduction961.terms
theorem substitutionProof961 : IsMapEvaluation generatorImages reduction961.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction961.output := by lin_cert using reduction961.terms
def map_27_93 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1041 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1041 : InImage map_27_93 image1041 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1041 : Bundle := named_bundle% "RealMapCertificates/relations/basis1041.json"
theorem reductionProof1041 : EqualModuloRelations reduction1041.relations reduction1041.input reduction1041.output := by lin_cert using reduction1041.terms
theorem substitutionProof1041 : IsMapEvaluation generatorImages reduction1041.relations [153] reduction1041.output := by lin_cert using reduction1041.terms
def map_27_96 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1109 : InImage map_27_96 image1109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1109 : Bundle := named_bundle% "RealMapCertificates/relations/basis1109.json"
theorem reductionProof1109 : EqualModuloRelations reduction1109.relations reduction1109.input reduction1109.output := by lin_cert using reduction1109.terms
theorem substitutionProof1109 : IsMapEvaluation generatorImages reduction1109.relations [8,111] reduction1109.output := by lin_cert using reduction1109.terms
def map_27_99 : Matrix 4 1 := fun i j => ([false,true,false,false] : List Bool)[i.val*1+j.val]!
def image1186 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation1186 : InImage map_27_99 image1186 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1186 : Bundle := named_bundle% "RealMapCertificates/relations/basis1186.json"
theorem reductionProof1186 : EqualModuloRelations reduction1186.relations reduction1186.input reduction1186.output := by lin_cert using reduction1186.terms
theorem substitutionProof1186 : IsMapEvaluation generatorImages reduction1186.relations [8,117] reduction1186.output := by lin_cert using reduction1186.terms
def map_27_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1219 : InImage map_27_100 image1219 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1219 : Bundle := named_bundle% "RealMapCertificates/relations/basis1219.json"
theorem reductionProof1219 : EqualModuloRelations reduction1219.relations reduction1219.input reduction1219.output := by lin_cert using reduction1219.terms
theorem substitutionProof1219 : IsMapEvaluation generatorImages reduction1219.relations [0,17,78] reduction1219.output := by lin_cert using reduction1219.terms
def map_27_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1276 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1276 : InImage map_27_102 image1276 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1276 : Bundle := named_bundle% "RealMapCertificates/relations/basis1276.json"
theorem reductionProof1276 : EqualModuloRelations reduction1276.relations reduction1276.input reduction1276.output := by lin_cert using reduction1276.terms
theorem substitutionProof1276 : IsMapEvaluation generatorImages reduction1276.relations [8,16,50] reduction1276.output := by lin_cert using reduction1276.terms
def map_27_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1378 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1378 : InImage map_27_105 image1378 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1378 : Bundle := named_bundle% "RealMapCertificates/relations/basis1378.json"
theorem reductionProof1378 : EqualModuloRelations reduction1378.relations reduction1378.input reduction1378.output := by lin_cert using reduction1378.terms
theorem substitutionProof1378 : IsMapEvaluation generatorImages reduction1378.relations [8,8,78] reduction1378.output := by lin_cert using reduction1378.terms
def map_27_108 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1476 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1476 : InImage map_27_108 image1476 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1476 : Bundle := named_bundle% "RealMapCertificates/relations/basis1476.json"
theorem reductionProof1476 : EqualModuloRelations reduction1476.relations reduction1476.input reduction1476.output := by lin_cert using reduction1476.terms
theorem substitutionProof1476 : IsMapEvaluation generatorImages reduction1476.relations [8,8,8,50] reduction1476.output := by lin_cert using reduction1476.terms
def map_27_111 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1596 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1596 : InImage map_27_111 image1596 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1596 : Bundle := named_bundle% "RealMapCertificates/relations/basis1596.json"
theorem reductionProof1596 : EqualModuloRelations reduction1596.relations reduction1596.input reduction1596.output := by lin_cert using reduction1596.terms
theorem substitutionProof1596 : IsMapEvaluation generatorImages reduction1596.relations [8,8,8,56] reduction1596.output := by lin_cert using reduction1596.terms
def map_27_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1638 : InImage map_27_112 image1638 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1638 : Bundle := named_bundle% "RealMapCertificates/relations/basis1638.json"
theorem reductionProof1638 : EqualModuloRelations reduction1638.relations reduction1638.input reduction1638.output := by lin_cert using reduction1638.terms
theorem substitutionProof1638 : IsMapEvaluation generatorImages reduction1638.relations [0,224] reduction1638.output := by lin_cert using reduction1638.terms
def map_27_113 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1674 : InImage map_27_113 image1674 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1674 : Bundle := named_bundle% "RealMapCertificates/relations/basis1674.json"
theorem reductionProof1674 : EqualModuloRelations reduction1674.relations reduction1674.input reduction1674.output := by lin_cert using reduction1674.terms
theorem substitutionProof1674 : IsMapEvaluation generatorImages reduction1674.relations [1,224] reduction1674.output := by lin_cert using reduction1674.terms
def image1675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1675 : InImage map_27_113 image1675 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1675 : Bundle := named_bundle% "RealMapCertificates/relations/basis1675.json"
theorem reductionProof1675 : EqualModuloRelations reduction1675.relations reduction1675.input reduction1675.output := by lin_cert using reduction1675.terms
theorem substitutionProof1675 : IsMapEvaluation generatorImages reduction1675.relations [0,0,225] reduction1675.output := by lin_cert using reduction1675.terms
def map_27_114 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1709 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1709 : InImage map_27_114 image1709 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1709 : Bundle := named_bundle% "RealMapCertificates/relations/basis1709.json"
theorem reductionProof1709 : EqualModuloRelations reduction1709.relations reduction1709.input reduction1709.output := by lin_cert using reduction1709.terms
theorem substitutionProof1709 : IsMapEvaluation generatorImages reduction1709.relations [8,8,8,16,17] reduction1709.output := by lin_cert using reduction1709.terms
def map_27_115 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1748 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1748 : InImage map_27_115 image1748 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1748 : Bundle := named_bundle% "RealMapCertificates/relations/basis1748.json"
theorem reductionProof1748 : EqualModuloRelations reduction1748.relations reduction1748.input reduction1748.output := by lin_cert using reduction1748.terms
theorem substitutionProof1748 : IsMapEvaluation generatorImages reduction1748.relations [0,237] reduction1748.output := by lin_cert using reduction1748.terms
def map_27_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1777 : InImage map_27_116 image1777 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1777 : Bundle := named_bundle% "RealMapCertificates/relations/basis1777.json"
theorem reductionProof1777 : EqualModuloRelations reduction1777.relations reduction1777.input reduction1777.output := by lin_cert using reduction1777.terms
theorem substitutionProof1777 : IsMapEvaluation generatorImages reduction1777.relations [0,0,238] reduction1777.output := by lin_cert using reduction1777.terms
def map_27_117 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1815 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1815 : InImage map_27_117 image1815 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1815 : Bundle := named_bundle% "RealMapCertificates/relations/basis1815.json"
theorem reductionProof1815 : EqualModuloRelations reduction1815.relations reduction1815.input reduction1815.output := by lin_cert using reduction1815.terms
theorem substitutionProof1815 : IsMapEvaluation generatorImages reduction1815.relations [8,8,8,8,40] reduction1815.output := by lin_cert using reduction1815.terms
def map_27_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1851 : InImage map_27_118 image1851 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1851 : Bundle := named_bundle% "RealMapCertificates/relations/basis1851.json"
theorem reductionProof1851 : EqualModuloRelations reduction1851.relations reduction1851.input reduction1851.output := by lin_cert using reduction1851.terms
theorem substitutionProof1851 : IsMapEvaluation generatorImages reduction1851.relations [0,16,137] reduction1851.output := by lin_cert using reduction1851.terms
def map_27_119 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image1890 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1890 : InImage map_27_119 image1890 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1890 : Bundle := named_bundle% "RealMapCertificates/relations/basis1890.json"
theorem reductionProof1890 : EqualModuloRelations reduction1890.relations reduction1890.input reduction1890.output := by lin_cert using reduction1890.terms
theorem substitutionProof1890 : IsMapEvaluation generatorImages reduction1890.relations [0,0,16,138] reduction1890.output := by lin_cert using reduction1890.terms
def image1891 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1891 : InImage map_27_119 image1891 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1891 : Bundle := named_bundle% "RealMapCertificates/relations/basis1891.json"
theorem reductionProof1891 : EqualModuloRelations reduction1891.relations reduction1891.input reduction1891.output := by lin_cert using reduction1891.terms
theorem substitutionProof1891 : IsMapEvaluation generatorImages reduction1891.relations [0,0,0,244] reduction1891.output := by lin_cert using reduction1891.terms
def map_27_120 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1926 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1926 : InImage map_27_120 image1926 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1926 : Bundle := named_bundle% "RealMapCertificates/relations/basis1926.json"
theorem reductionProof1926 : EqualModuloRelations reduction1926.relations reduction1926.input reduction1926.output := by lin_cert using reduction1926.terms
theorem substitutionProof1926 : IsMapEvaluation generatorImages reduction1926.relations [8,8,8,8,8,17] reduction1926.output := by lin_cert using reduction1926.terms
def image1927 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1927 : InImage map_27_120 image1927 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1927 : Bundle := named_bundle% "RealMapCertificates/relations/basis1927.json"
theorem reductionProof1927 : EqualModuloRelations reduction1927.relations reduction1927.input reduction1927.output := by lin_cert using reduction1927.terms
theorem substitutionProof1927 : IsMapEvaluation generatorImages reduction1927.relations [0,0,0,17,138] reduction1927.output := by lin_cert using reduction1927.terms
def map_27_121 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1976 : InImage map_27_121 image1976 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1976 : Bundle := named_bundle% "RealMapCertificates/relations/basis1976.json"
theorem reductionProof1976 : EqualModuloRelations reduction1976.relations reduction1976.input reduction1976.output := by lin_cert using reduction1976.terms
theorem substitutionProof1976 : IsMapEvaluation generatorImages reduction1976.relations [0,8,184] reduction1976.output := by lin_cert using reduction1976.terms
def image1977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1977 : InImage map_27_121 image1977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1977 : Bundle := named_bundle% "RealMapCertificates/relations/basis1977.json"
theorem reductionProof1977 : EqualModuloRelations reduction1977.relations reduction1977.input reduction1977.output := by lin_cert using reduction1977.terms
theorem substitutionProof1977 : IsMapEvaluation generatorImages reduction1977.relations [0,0,0,0,0,245] reduction1977.output := by lin_cert using reduction1977.terms
def map_27_122 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image2011 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2011 : InImage map_27_122 image2011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2011 : Bundle := named_bundle% "RealMapCertificates/relations/basis2011.json"
theorem reductionProof2011 : EqualModuloRelations reduction2011.relations reduction2011.input reduction2011.output := by lin_cert using reduction2011.terms
theorem substitutionProof2011 : IsMapEvaluation generatorImages reduction2011.relations [0,0,8,185] reduction2011.output := by lin_cert using reduction2011.terms
def image2012 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2012 : InImage map_27_122 image2012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2012 : Bundle := named_bundle% "RealMapCertificates/relations/basis2012.json"
theorem reductionProof2012 : EqualModuloRelations reduction2012.relations reduction2012.input reduction2012.output := by lin_cert using reduction2012.terms
theorem substitutionProof2012 : IsMapEvaluation generatorImages reduction2012.relations [0,0,0,257] reduction2012.output := by lin_cert using reduction2012.terms
def image2013 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2013 : InImage map_27_122 image2013 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2013 : Bundle := named_bundle% "RealMapCertificates/relations/basis2013.json"
theorem reductionProof2013 : EqualModuloRelations reduction2013.relations reduction2013.input reduction2013.output := by lin_cert using reduction2013.terms
theorem substitutionProof2013 : IsMapEvaluation generatorImages reduction2013.relations [0,0,0,0,0,0,246] reduction2013.output := by lin_cert using reduction2013.terms
def map_27_123 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2048 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2048 : InImage map_27_123 image2048 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2048 : Bundle := named_bundle% "RealMapCertificates/relations/basis2048.json"
theorem reductionProof2048 : EqualModuloRelations reduction2048.relations reduction2048.input reduction2048.output := by lin_cert using reduction2048.terms
theorem substitutionProof2048 : IsMapEvaluation generatorImages reduction2048.relations [8,8,8,8,8,20] reduction2048.output := by lin_cert using reduction2048.terms
def map_27_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2096 : InImage map_27_124 image2096 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2096 : Bundle := named_bundle% "RealMapCertificates/relations/basis2096.json"
theorem reductionProof2096 : EqualModuloRelations reduction2096.relations reduction2096.input reduction2096.output := by lin_cert using reduction2096.terms
theorem substitutionProof2096 : IsMapEvaluation generatorImages reduction2096.relations [0,8,8,137] reduction2096.output := by lin_cert using reduction2096.terms
def map_27_125 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2134 : InImage map_27_125 image2134 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2134 : Bundle := named_bundle% "RealMapCertificates/relations/basis2134.json"
theorem reductionProof2134 : EqualModuloRelations reduction2134.relations reduction2134.input reduction2134.output := by lin_cert using reduction2134.terms
theorem substitutionProof2134 : IsMapEvaluation generatorImages reduction2134.relations [0,0,8,8,138] reduction2134.output := by lin_cert using reduction2134.terms
def map_27_126 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2177 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2177 : InImage map_27_126 image2177 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2177 : Bundle := named_bundle% "RealMapCertificates/relations/basis2177.json"
theorem reductionProof2177 : EqualModuloRelations reduction2177.relations reduction2177.input reduction2177.output := by lin_cert using reduction2177.terms
theorem substitutionProof2177 : IsMapEvaluation generatorImages reduction2177.relations [8,8,8,8,8,22] reduction2177.output := by lin_cert using reduction2177.terms
def image2178 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2178 : InImage map_27_126 image2178 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2178 : Bundle := named_bundle% "RealMapCertificates/relations/basis2178.json"
theorem reductionProof2178 : EqualModuloRelations reduction2178.relations reduction2178.input reduction2178.output := by lin_cert using reduction2178.terms
theorem substitutionProof2178 : IsMapEvaluation generatorImages reduction2178.relations [0,0,0,0,17,149] reduction2178.output := by lin_cert using reduction2178.terms
def map_27_127 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2229 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2229 : InImage map_27_127 image2229 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2229 : Bundle := named_bundle% "RealMapCertificates/relations/basis2229.json"
theorem reductionProof2229 : EqualModuloRelations reduction2229.relations reduction2229.input reduction2229.output := by lin_cert using reduction2229.terms
theorem substitutionProof2229 : IsMapEvaluation generatorImages reduction2229.relations [0,8,8,146] reduction2229.output := by lin_cert using reduction2229.terms
def image2230 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2230 : InImage map_27_127 image2230 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2230 : Bundle := named_bundle% "RealMapCertificates/relations/basis2230.json"
theorem reductionProof2230 : EqualModuloRelations reduction2230.relations reduction2230.input reduction2230.output := by lin_cert using reduction2230.terms
theorem substitutionProof2230 : IsMapEvaluation generatorImages reduction2230.relations [0,0,0,0,17,154] reduction2230.output := by lin_cert using reduction2230.terms
def map_27_128 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2270 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2270 : InImage map_27_128 image2270 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2270 : Bundle := named_bundle% "RealMapCertificates/relations/basis2270.json"
theorem reductionProof2270 : EqualModuloRelations reduction2270.relations reduction2270.input reduction2270.output := by lin_cert using reduction2270.terms
theorem substitutionProof2270 : IsMapEvaluation generatorImages reduction2270.relations [0,0,8,8,147] reduction2270.output := by lin_cert using reduction2270.terms
def map_27_129 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2334 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2334 : InImage map_27_129 image2334 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2334 : Bundle := named_bundle% "RealMapCertificates/relations/basis2334.json"
theorem reductionProof2334 : EqualModuloRelations reduction2334.relations reduction2334.input reduction2334.output := by lin_cert using reduction2334.terms
theorem substitutionProof2334 : IsMapEvaluation generatorImages reduction2334.relations [8,8,8,8,8,29] reduction2334.output := by lin_cert using reduction2334.terms
def map_27_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2392 : InImage map_27_130 image2392 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2392 : Bundle := named_bundle% "RealMapCertificates/relations/basis2392.json"
theorem reductionProof2392 : EqualModuloRelations reduction2392.relations reduction2392.input reduction2392.output := by lin_cert using reduction2392.terms
theorem substitutionProof2392 : IsMapEvaluation generatorImages reduction2392.relations [0,8,8,16,64] reduction2392.output := by lin_cert using reduction2392.terms
def map_27_131 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image2451 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2451 : InImage map_27_131 image2451 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2451 : Bundle := named_bundle% "RealMapCertificates/relations/basis2451.json"
theorem reductionProof2451 : EqualModuloRelations reduction2451.relations reduction2451.input reduction2451.output := by lin_cert using reduction2451.terms
theorem substitutionProof2451 : IsMapEvaluation generatorImages reduction2451.relations [0,0,8,8,17,64] reduction2451.output := by lin_cert using reduction2451.terms
def map_27_132 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2517 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2517 : InImage map_27_132 image2517 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2517 : Bundle := named_bundle% "RealMapCertificates/relations/basis2517.json"
theorem reductionProof2517 : EqualModuloRelations reduction2517.relations reduction2517.input reduction2517.output := by lin_cert using reduction2517.terms
theorem substitutionProof2517 : IsMapEvaluation generatorImages reduction2517.relations [8,8,8,8,8,32] reduction2517.output := by lin_cert using reduction2517.terms
def image2518 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2518 : InImage map_27_132 image2518 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2518 : Bundle := named_bundle% "RealMapCertificates/relations/basis2518.json"
theorem reductionProof2518 : EqualModuloRelations reduction2518.relations reduction2518.input reduction2518.output := by lin_cert using reduction2518.terms
theorem substitutionProof2518 : IsMapEvaluation generatorImages reduction2518.relations [0,344] reduction2518.output := by lin_cert using reduction2518.terms
def map_27_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2590 : InImage map_27_133 image2590 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2590 : Bundle := named_bundle% "RealMapCertificates/relations/basis2590.json"
theorem reductionProof2590 : EqualModuloRelations reduction2590.relations reduction2590.input reduction2590.output := by lin_cert using reduction2590.terms
theorem substitutionProof2590 : IsMapEvaluation generatorImages reduction2590.relations [0,0,0,0,0,0,0,64,64] reduction2590.output := by lin_cert using reduction2590.terms
def map_27_134 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2649 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2649 : InImage map_27_134 image2649 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2649 : Bundle := named_bundle% "RealMapCertificates/relations/basis2649.json"
theorem reductionProof2649 : EqualModuloRelations reduction2649.relations reduction2649.input reduction2649.output := by lin_cert using reduction2649.terms
theorem substitutionProof2649 : IsMapEvaluation generatorImages reduction2649.relations [0,0,0,0,0,0,0,0,299] reduction2649.output := by lin_cert using reduction2649.terms
def map_27_135 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image2741 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2741 : InImage map_27_135 image2741 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2741 : Bundle := named_bundle% "RealMapCertificates/relations/basis2741.json"
theorem reductionProof2741 : EqualModuloRelations reduction2741.relations reduction2741.input reduction2741.output := by lin_cert using reduction2741.terms
theorem substitutionProof2741 : IsMapEvaluation generatorImages reduction2741.relations [42,137] reduction2741.output := by lin_cert using reduction2741.terms
def image2742 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2742 : InImage map_27_135 image2742 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2742 : Bundle := named_bundle% "RealMapCertificates/relations/basis2742.json"
theorem reductionProof2742 : EqualModuloRelations reduction2742.relations reduction2742.input reduction2742.output := by lin_cert using reduction2742.terms
theorem substitutionProof2742 : IsMapEvaluation generatorImages reduction2742.relations [8,8,8,8,9,32] reduction2742.output := by lin_cert using reduction2742.terms
def map_27_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2818 : InImage map_27_136 image2818 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2818 : Bundle := named_bundle% "RealMapCertificates/relations/basis2818.json"
theorem reductionProof2818 : EqualModuloRelations reduction2818.relations reduction2818.input reduction2818.output := by lin_cert using reduction2818.terms
theorem substitutionProof2818 : IsMapEvaluation generatorImages reduction2818.relations [0,0,0,0,0,0,0,0,0,0,300] reduction2818.output := by lin_cert using reduction2818.terms
def map_27_137 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2886 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2886 : InImage map_27_137 image2886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2886 : Bundle := named_bundle% "RealMapCertificates/relations/basis2886.json"
theorem reductionProof2886 : EqualModuloRelations reduction2886.relations reduction2886.input reduction2886.output := by lin_cert using reduction2886.terms
theorem substitutionProof2886 : IsMapEvaluation generatorImages reduction2886.relations [17,206] reduction2886.output := by lin_cert using reduction2886.terms
def image2887 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2887 : InImage map_27_137 image2887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2887 : Bundle := named_bundle% "RealMapCertificates/relations/basis2887.json"
theorem reductionProof2887 : EqualModuloRelations reduction2887.relations reduction2887.input reduction2887.output := by lin_cert using reduction2887.terms
theorem substitutionProof2887 : IsMapEvaluation generatorImages reduction2887.relations [0,0,0,0,0,0,0,0,0,317] reduction2887.output := by lin_cert using reduction2887.terms
end RealMapCertificates
