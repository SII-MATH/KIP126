import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 24 => []
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 186 => []
  | 187 => []
  | 188 => []
  | 232 => [[5,6,9,12]]
  | 255 => []
  | 260 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 293 => []
  | 299 => []
  | 324 => []
  | 327 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 420 => []
  | 454 => []
  | 491 => []
  | 500 => []
  | 509 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 549 => []
  | 557 => [[0,0,4,9,12,12]]
  | 558 => []
  | 574 => []
  | 586 => []
  | 598 => [[0,6,9,12,12]]
  | 600 => []
  | 601 => []
  | 602 => []
  | 625 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 644 => []
  | 645 => []
  | 653 => []
  | 654 => []
  | 689 => []
  | 753 => [[5,7,9,12,12]]
  | 797 => []
  | 821 => [[5,7,10,12,12]]
  | 853 => []
  | 864 => [[7,7,10,12,12]]
  | 897 => []
  | _ => []
def map_27_138 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2969 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2969 : InImage map_27_138 image2969 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2969 : Bundle := named_bundle% "RealMapCertificates/relations/basis2969.json"
theorem reductionProof2969 : EqualModuloRelations reduction2969.relations reduction2969.input reduction2969.output := by lin_cert using reduction2969.terms
theorem substitutionProof2969 : IsMapEvaluation generatorImages reduction2969.relations [17,17,113] reduction2969.output := by lin_cert using reduction2969.terms
def image2970 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2970 : InImage map_27_138 image2970 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2970 : Bundle := named_bundle% "RealMapCertificates/relations/basis2970.json"
theorem reductionProof2970 : EqualModuloRelations reduction2970.relations reduction2970.input reduction2970.output := by lin_cert using reduction2970.terms
theorem substitutionProof2970 : IsMapEvaluation generatorImages reduction2970.relations [8,8,8,8,13,32] reduction2970.output := by lin_cert using reduction2970.terms
def map_27_140 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3122 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3122 : InImage map_27_140 image3122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3122 : Bundle := named_bundle% "RealMapCertificates/relations/basis3122.json"
theorem reductionProof3122 : EqualModuloRelations reduction3122.relations reduction3122.input reduction3122.output := by lin_cert using reduction3122.terms
theorem substitutionProof3122 : IsMapEvaluation generatorImages reduction3122.relations [8,17,149] reduction3122.output := by lin_cert using reduction3122.terms
def map_27_141 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3223 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3223 : InImage map_27_141 image3223 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3223 : Bundle := named_bundle% "RealMapCertificates/relations/basis3223.json"
theorem reductionProof3223 : EqualModuloRelations reduction3223.relations reduction3223.input reduction3223.output := by lin_cert using reduction3223.terms
theorem substitutionProof3223 : IsMapEvaluation generatorImages reduction3223.relations [8,17,154] reduction3223.output := by lin_cert using reduction3223.terms
def image3224 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3224 : InImage map_27_141 image3224 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3224 : Bundle := named_bundle% "RealMapCertificates/relations/basis3224.json"
theorem reductionProof3224 : EqualModuloRelations reduction3224.relations reduction3224.input reduction3224.output := by lin_cert using reduction3224.terms
theorem substitutionProof3224 : IsMapEvaluation generatorImages reduction3224.relations [8,8,8,9,13,32] reduction3224.output := by lin_cert using reduction3224.terms
def map_27_143 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3377 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3377 : InImage map_27_143 image3377 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3377 : Bundle := named_bundle% "RealMapCertificates/relations/basis3377.json"
theorem reductionProof3377 : EqualModuloRelations reduction3377.relations reduction3377.input reduction3377.output := by lin_cert using reduction3377.terms
theorem substitutionProof3377 : IsMapEvaluation generatorImages reduction3377.relations [8,17,160] reduction3377.output := by lin_cert using reduction3377.terms
def map_27_144 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3467 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3467 : InImage map_27_144 image3467 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3467 : Bundle := named_bundle% "RealMapCertificates/relations/basis3467.json"
theorem reductionProof3467 : EqualModuloRelations reduction3467.relations reduction3467.input reduction3467.output := by lin_cert using reduction3467.terms
theorem substitutionProof3467 : IsMapEvaluation generatorImages reduction3467.relations [8,17,162] reduction3467.output := by lin_cert using reduction3467.terms
def image3468 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3468 : InImage map_27_144 image3468 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3468 : Bundle := named_bundle% "RealMapCertificates/relations/basis3468.json"
theorem reductionProof3468 : EqualModuloRelations reduction3468.relations reduction3468.input reduction3468.output := by lin_cert using reduction3468.terms
theorem substitutionProof3468 : IsMapEvaluation generatorImages reduction3468.relations [8,8,8,13,13,32] reduction3468.output := by lin_cert using reduction3468.terms
def image3469 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3469 : InImage map_27_144 image3469 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3469 : Bundle := named_bundle% "RealMapCertificates/relations/basis3469.json"
theorem reductionProof3469 : EqualModuloRelations reduction3469.relations reduction3469.input reduction3469.output := by lin_cert using reduction3469.terms
theorem substitutionProof3469 : IsMapEvaluation generatorImages reduction3469.relations [0,491] reduction3469.output := by lin_cert using reduction3469.terms
def map_27_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3547 : InImage map_27_145 image3547 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3547 : Bundle := named_bundle% "RealMapCertificates/relations/basis3547.json"
theorem reductionProof3547 : EqualModuloRelations reduction3547.relations reduction3547.input reduction3547.output := by lin_cert using reduction3547.terms
theorem substitutionProof3547 : IsMapEvaluation generatorImages reduction3547.relations [509] reduction3547.output := by lin_cert using reduction3547.terms
def image3548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3548 : InImage map_27_145 image3548 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3548 : Bundle := named_bundle% "RealMapCertificates/relations/basis3548.json"
theorem reductionProof3548 : EqualModuloRelations reduction3548.relations reduction3548.input reduction3548.output := by lin_cert using reduction3548.terms
theorem substitutionProof3548 : IsMapEvaluation generatorImages reduction3548.relations [1,491] reduction3548.output := by lin_cert using reduction3548.terms
def map_27_146 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3618 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3618 : InImage map_27_146 image3618 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3618 : Bundle := named_bundle% "RealMapCertificates/relations/basis3618.json"
theorem reductionProof3618 : EqualModuloRelations reduction3618.relations reduction3618.input reduction3618.output := by lin_cert using reduction3618.terms
theorem substitutionProof3618 : IsMapEvaluation generatorImages reduction3618.relations [8,16,167] reduction3618.output := by lin_cert using reduction3618.terms
def map_27_147 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image3729 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3729 : InImage map_27_147 image3729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3729 : Bundle := named_bundle% "RealMapCertificates/relations/basis3729.json"
theorem reductionProof3729 : EqualModuloRelations reduction3729.relations reduction3729.input reduction3729.output := by lin_cert using reduction3729.terms
theorem substitutionProof3729 : IsMapEvaluation generatorImages reduction3729.relations [8,8,42,64] reduction3729.output := by lin_cert using reduction3729.terms
def image3730 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3730 : InImage map_27_147 image3730 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3730 : Bundle := named_bundle% "RealMapCertificates/relations/basis3730.json"
theorem reductionProof3730 : EqualModuloRelations reduction3730.relations reduction3730.input reduction3730.output := by lin_cert using reduction3730.terms
theorem substitutionProof3730 : IsMapEvaluation generatorImages reduction3730.relations [8,8,9,13,13,32] reduction3730.output := by lin_cert using reduction3730.terms
def image3731 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3731 : InImage map_27_147 image3731 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3731 : Bundle := named_bundle% "RealMapCertificates/relations/basis3731.json"
theorem reductionProof3731 : EqualModuloRelations reduction3731.relations reduction3731.input reduction3731.output := by lin_cert using reduction3731.terms
theorem substitutionProof3731 : IsMapEvaluation generatorImages reduction3731.relations [0,516] reduction3731.output := by lin_cert using reduction3731.terms
def map_27_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3809 : InImage map_27_148 image3809 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3809 : Bundle := named_bundle% "RealMapCertificates/relations/basis3809.json"
theorem reductionProof3809 : EqualModuloRelations reduction3809.relations reduction3809.input reduction3809.output := by lin_cert using reduction3809.terms
theorem substitutionProof3809 : IsMapEvaluation generatorImages reduction3809.relations [0,529] reduction3809.output := by lin_cert using reduction3809.terms
def map_27_149 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3890 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3890 : InImage map_27_149 image3890 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3890 : Bundle := named_bundle% "RealMapCertificates/relations/basis3890.json"
theorem reductionProof3890 : EqualModuloRelations reduction3890.relations reduction3890.input reduction3890.output := by lin_cert using reduction3890.terms
theorem substitutionProof3890 : IsMapEvaluation generatorImages reduction3890.relations [8,8,232] reduction3890.output := by lin_cert using reduction3890.terms
def map_27_150 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image3984 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3984 : InImage map_27_150 image3984 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction3984 : Bundle := named_bundle% "RealMapCertificates/relations/basis3984.json"
theorem reductionProof3984 : EqualModuloRelations reduction3984.relations reduction3984.input reduction3984.output := by lin_cert using reduction3984.terms
theorem substitutionProof3984 : IsMapEvaluation generatorImages reduction3984.relations [64,138] reduction3984.output := by lin_cert using reduction3984.terms
def image3985 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3985 : InImage map_27_150 image3985 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction3985 : Bundle := named_bundle% "RealMapCertificates/relations/basis3985.json"
theorem reductionProof3985 : EqualModuloRelations reduction3985.relations reduction3985.input reduction3985.output := by lin_cert using reduction3985.terms
theorem substitutionProof3985 : IsMapEvaluation generatorImages reduction3985.relations [8,8,23,113] reduction3985.output := by lin_cert using reduction3985.terms
def image3986 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3986 : InImage map_27_150 image3986 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction3986 : Bundle := named_bundle% "RealMapCertificates/relations/basis3986.json"
theorem reductionProof3986 : EqualModuloRelations reduction3986.relations reduction3986.input reduction3986.output := by lin_cert using reduction3986.terms
theorem substitutionProof3986 : IsMapEvaluation generatorImages reduction3986.relations [8,8,13,13,13,32] reduction3986.output := by lin_cert using reduction3986.terms
def image3987 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3987 : InImage map_27_150 image3987 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction3987 : Bundle := named_bundle% "RealMapCertificates/relations/basis3987.json"
theorem reductionProof3987 : EqualModuloRelations reduction3987.relations reduction3987.input reduction3987.output := by lin_cert using reduction3987.terms
theorem substitutionProof3987 : IsMapEvaluation generatorImages reduction3987.relations [0,16,260] reduction3987.output := by lin_cert using reduction3987.terms
def map_27_151 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4090 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4090 : InImage map_27_151 image4090 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4090 : Bundle := named_bundle% "RealMapCertificates/relations/basis4090.json"
theorem reductionProof4090 : EqualModuloRelations reduction4090.relations reduction4090.input reduction4090.output := by lin_cert using reduction4090.terms
theorem substitutionProof4090 : IsMapEvaluation generatorImages reduction4090.relations [0,557] reduction4090.output := by lin_cert using reduction4090.terms
def image4091 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4091 : InImage map_27_151 image4091 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4091 : Bundle := named_bundle% "RealMapCertificates/relations/basis4091.json"
theorem reductionProof4091 : EqualModuloRelations reduction4091.relations reduction4091.input reduction4091.output := by lin_cert using reduction4091.terms
theorem substitutionProof4091 : IsMapEvaluation generatorImages reduction4091.relations [0,0,17,260] reduction4091.output := by lin_cert using reduction4091.terms
def map_27_152 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4162 : InImage map_27_152 image4162 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4162 : Bundle := named_bundle% "RealMapCertificates/relations/basis4162.json"
theorem reductionProof4162 : EqualModuloRelations reduction4162.relations reduction4162.input reduction4162.output := by lin_cert using reduction4162.terms
theorem substitutionProof4162 : IsMapEvaluation generatorImages reduction4162.relations [8,8,8,167] reduction4162.output := by lin_cert using reduction4162.terms
def image4163 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4163 : InImage map_27_152 image4163 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4163 : Bundle := named_bundle% "RealMapCertificates/relations/basis4163.json"
theorem reductionProof4163 : EqualModuloRelations reduction4163.relations reduction4163.input reduction4163.output := by lin_cert using reduction4163.terms
theorem substitutionProof4163 : IsMapEvaluation generatorImages reduction4163.relations [0,0,558] reduction4163.output := by lin_cert using reduction4163.terms
def map_27_153 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image4267 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4267 : InImage map_27_153 image4267 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4267 : Bundle := named_bundle% "RealMapCertificates/relations/basis4267.json"
theorem reductionProof4267 : EqualModuloRelations reduction4267.relations reduction4267.input reduction4267.output := by lin_cert using reduction4267.terms
theorem substitutionProof4267 : IsMapEvaluation generatorImages reduction4267.relations [64,147] reduction4267.output := by lin_cert using reduction4267.terms
def image4268 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4268 : InImage map_27_153 image4268 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4268 : Bundle := named_bundle% "RealMapCertificates/relations/basis4268.json"
theorem reductionProof4268 : EqualModuloRelations reduction4268.relations reduction4268.input reduction4268.output := by lin_cert using reduction4268.terms
theorem substitutionProof4268 : IsMapEvaluation generatorImages reduction4268.relations [8,9,13,13,13,32] reduction4268.output := by lin_cert using reduction4268.terms
def image4269 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4269 : InImage map_27_153 image4269 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4269 : Bundle := named_bundle% "RealMapCertificates/relations/basis4269.json"
theorem reductionProof4269 : EqualModuloRelations reduction4269.relations reduction4269.input reduction4269.output := by lin_cert using reduction4269.terms
theorem substitutionProof4269 : IsMapEvaluation generatorImages reduction4269.relations [8,8,8,173] reduction4269.output := by lin_cert using reduction4269.terms
def image4270 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4270 : InImage map_27_153 image4270 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4270 : Bundle := named_bundle% "RealMapCertificates/relations/basis4270.json"
theorem reductionProof4270 : EqualModuloRelations reduction4270.relations reduction4270.input reduction4270.output := by lin_cert using reduction4270.terms
theorem substitutionProof4270 : IsMapEvaluation generatorImages reduction4270.relations [0,8,380] reduction4270.output := by lin_cert using reduction4270.terms
def image4271 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4271 : InImage map_27_153 image4271 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4271 : Bundle := named_bundle% "RealMapCertificates/relations/basis4271.json"
theorem reductionProof4271 : EqualModuloRelations reduction4271.relations reduction4271.input reduction4271.output := by lin_cert using reduction4271.terms
theorem substitutionProof4271 : IsMapEvaluation generatorImages reduction4271.relations [0,0,0,0,0,0,0,0,0,500] reduction4271.output := by lin_cert using reduction4271.terms
def map_27_154 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4342 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4342 : InImage map_27_154 image4342 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4342 : Bundle := named_bundle% "RealMapCertificates/relations/basis4342.json"
theorem reductionProof4342 : EqualModuloRelations reduction4342.relations reduction4342.input reduction4342.output := by lin_cert using reduction4342.terms
theorem substitutionProof4342 : IsMapEvaluation generatorImages reduction4342.relations [0,8,404] reduction4342.output := by lin_cert using reduction4342.terms
def image4343 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4343 : InImage map_27_154 image4343 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4343 : Bundle := named_bundle% "RealMapCertificates/relations/basis4343.json"
theorem reductionProof4343 : EqualModuloRelations reduction4343.relations reduction4343.input reduction4343.output := by lin_cert using reduction4343.terms
theorem substitutionProof4343 : IsMapEvaluation generatorImages reduction4343.relations [0,0,17,278] reduction4343.output := by lin_cert using reduction4343.terms
def image4344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4344 : InImage map_27_154 image4344 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4344 : Bundle := named_bundle% "RealMapCertificates/relations/basis4344.json"
theorem reductionProof4344 : EqualModuloRelations reduction4344.relations reduction4344.input reduction4344.output := by lin_cert using reduction4344.terms
theorem substitutionProof4344 : IsMapEvaluation generatorImages reduction4344.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4344.output := by lin_cert using reduction4344.terms
def map_27_155 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4418 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4418 : InImage map_27_155 image4418 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4418 : Bundle := named_bundle% "RealMapCertificates/relations/basis4418.json"
theorem reductionProof4418 : EqualModuloRelations reduction4418.relations reduction4418.input reduction4418.output := by lin_cert using reduction4418.terms
theorem substitutionProof4418 : IsMapEvaluation generatorImages reduction4418.relations [8,8,9,167] reduction4418.output := by lin_cert using reduction4418.terms
def map_27_156 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image4513 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4513 : InImage map_27_156 image4513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4513 : Bundle := named_bundle% "RealMapCertificates/relations/basis4513.json"
theorem reductionProof4513 : EqualModuloRelations reduction4513.relations reduction4513.input reduction4513.output := by lin_cert using reduction4513.terms
theorem substitutionProof4513 : IsMapEvaluation generatorImages reduction4513.relations [16,299] reduction4513.output := by lin_cert using reduction4513.terms
def image4514 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4514 : InImage map_27_156 image4514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4514 : Bundle := named_bundle% "RealMapCertificates/relations/basis4514.json"
theorem reductionProof4514 : EqualModuloRelations reduction4514.relations reduction4514.input reduction4514.output := by lin_cert using reduction4514.terms
theorem substitutionProof4514 : IsMapEvaluation generatorImages reduction4514.relations [8,13,13,13,13,32] reduction4514.output := by lin_cert using reduction4514.terms
def image4515 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4515 : InImage map_27_156 image4515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4515 : Bundle := named_bundle% "RealMapCertificates/relations/basis4515.json"
theorem reductionProof4515 : EqualModuloRelations reduction4515.relations reduction4515.input reduction4515.output := by lin_cert using reduction4515.terms
theorem substitutionProof4515 : IsMapEvaluation generatorImages reduction4515.relations [8,8,8,186] reduction4515.output := by lin_cert using reduction4515.terms
def image4516 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4516 : InImage map_27_156 image4516 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4516 : Bundle := named_bundle% "RealMapCertificates/relations/basis4516.json"
theorem reductionProof4516 : EqualModuloRelations reduction4516.relations reduction4516.input reduction4516.output := by lin_cert using reduction4516.terms
theorem substitutionProof4516 : IsMapEvaluation generatorImages reduction4516.relations [0,64,149] reduction4516.output := by lin_cert using reduction4516.terms
def image4517 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4517 : InImage map_27_156 image4517 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4517 : Bundle := named_bundle% "RealMapCertificates/relations/basis4517.json"
theorem reductionProof4517 : EqualModuloRelations reduction4517.relations reduction4517.input reduction4517.output := by lin_cert using reduction4517.terms
theorem substitutionProof4517 : IsMapEvaluation generatorImages reduction4517.relations [0,8,8,260] reduction4517.output := by lin_cert using reduction4517.terms
def map_27_157 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4605 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4605 : InImage map_27_157 image4605 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4605 : Bundle := named_bundle% "RealMapCertificates/relations/basis4605.json"
theorem reductionProof4605 : EqualModuloRelations reduction4605.relations reduction4605.input reduction4605.output := by lin_cert using reduction4605.terms
theorem substitutionProof4605 : IsMapEvaluation generatorImages reduction4605.relations [1,64,149] reduction4605.output := by lin_cert using reduction4605.terms
def image4606 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4606 : InImage map_27_157 image4606 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4606 : Bundle := named_bundle% "RealMapCertificates/relations/basis4606.json"
theorem reductionProof4606 : EqualModuloRelations reduction4606.relations reduction4606.input reduction4606.output := by lin_cert using reduction4606.terms
theorem substitutionProof4606 : IsMapEvaluation generatorImages reduction4606.relations [0,0,598] reduction4606.output := by lin_cert using reduction4606.terms
def image4607 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4607 : InImage map_27_157 image4607 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4607 : Bundle := named_bundle% "RealMapCertificates/relations/basis4607.json"
theorem reductionProof4607 : EqualModuloRelations reduction4607.relations reduction4607.input reduction4607.output := by lin_cert using reduction4607.terms
theorem substitutionProof4607 : IsMapEvaluation generatorImages reduction4607.relations [0,0,16,292] reduction4607.output := by lin_cert using reduction4607.terms
def map_27_158 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image4683 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4683 : InImage map_27_158 image4683 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4683 : Bundle := named_bundle% "RealMapCertificates/relations/basis4683.json"
theorem reductionProof4683 : EqualModuloRelations reduction4683.relations reduction4683.input reduction4683.output := by lin_cert using reduction4683.terms
theorem substitutionProof4683 : IsMapEvaluation generatorImages reduction4683.relations [8,8,13,167] reduction4683.output := by lin_cert using reduction4683.terms
def image4684 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4684 : InImage map_27_158 image4684 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4684 : Bundle := named_bundle% "RealMapCertificates/relations/basis4684.json"
theorem reductionProof4684 : EqualModuloRelations reduction4684.relations reduction4684.input reduction4684.output := by lin_cert using reduction4684.terms
theorem substitutionProof4684 : IsMapEvaluation generatorImages reduction4684.relations [0,0,0,17,292] reduction4684.output := by lin_cert using reduction4684.terms
def map_27_159 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image4787 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4787 : InImage map_27_159 image4787 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction4787 : Bundle := named_bundle% "RealMapCertificates/relations/basis4787.json"
theorem reductionProof4787 : EqualModuloRelations reduction4787.relations reduction4787.input reduction4787.output := by lin_cert using reduction4787.terms
theorem substitutionProof4787 : IsMapEvaluation generatorImages reduction4787.relations [9,13,13,13,13,32] reduction4787.output := by lin_cert using reduction4787.terms
def image4788 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4788 : InImage map_27_159 image4788 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction4788 : Bundle := named_bundle% "RealMapCertificates/relations/basis4788.json"
theorem reductionProof4788 : EqualModuloRelations reduction4788.relations reduction4788.input reduction4788.output := by lin_cert using reduction4788.terms
theorem substitutionProof4788 : IsMapEvaluation generatorImages reduction4788.relations [8,64,113] reduction4788.output := by lin_cert using reduction4788.terms
def image4789 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4789 : InImage map_27_159 image4789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction4789 : Bundle := named_bundle% "RealMapCertificates/relations/basis4789.json"
theorem reductionProof4789 : EqualModuloRelations reduction4789.relations reduction4789.input reduction4789.output := by lin_cert using reduction4789.terms
theorem substitutionProof4789 : IsMapEvaluation generatorImages reduction4789.relations [8,8,8,23,80] reduction4789.output := by lin_cert using reduction4789.terms
def image4790 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4790 : InImage map_27_159 image4790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction4790 : Bundle := named_bundle% "RealMapCertificates/relations/basis4790.json"
theorem reductionProof4790 : EqualModuloRelations reduction4790.relations reduction4790.input reduction4790.output := by lin_cert using reduction4790.terms
theorem substitutionProof4790 : IsMapEvaluation generatorImages reduction4790.relations [0,8,8,278] reduction4790.output := by lin_cert using reduction4790.terms
def image4791 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4791 : InImage map_27_159 image4791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction4791 : Bundle := named_bundle% "RealMapCertificates/relations/basis4791.json"
theorem reductionProof4791 : EqualModuloRelations reduction4791.relations reduction4791.input reduction4791.output := by lin_cert using reduction4791.terms
theorem substitutionProof4791 : IsMapEvaluation generatorImages reduction4791.relations [0,0,0,0,601] reduction4791.output := by lin_cert using reduction4791.terms
def image4792 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4792 : InImage map_27_159 image4792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction4792 : Bundle := named_bundle% "RealMapCertificates/relations/basis4792.json"
theorem reductionProof4792 : EqualModuloRelations reduction4792.relations reduction4792.input reduction4792.output := by lin_cert using reduction4792.terms
theorem substitutionProof4792 : IsMapEvaluation generatorImages reduction4792.relations [0,0,0,0,600] reduction4792.output := by lin_cert using reduction4792.terms
def map_27_160 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4862 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4862 : InImage map_27_160 image4862 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4862 : Bundle := named_bundle% "RealMapCertificates/relations/basis4862.json"
theorem reductionProof4862 : EqualModuloRelations reduction4862.relations reduction4862.input reduction4862.output := by lin_cert using reduction4862.terms
theorem substitutionProof4862 : IsMapEvaluation generatorImages reduction4862.relations [0,0,8,454] reduction4862.output := by lin_cert using reduction4862.terms
def image4863 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4863 : InImage map_27_160 image4863 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4863 : Bundle := named_bundle% "RealMapCertificates/relations/basis4863.json"
theorem reductionProof4863 : EqualModuloRelations reduction4863.relations reduction4863.input reduction4863.output := by lin_cert using reduction4863.terms
theorem substitutionProof4863 : IsMapEvaluation generatorImages reduction4863.relations [0,0,0,0,0,0,586] reduction4863.output := by lin_cert using reduction4863.terms
def map_27_161 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4947 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4947 : InImage map_27_161 image4947 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4947 : Bundle := named_bundle% "RealMapCertificates/relations/basis4947.json"
theorem reductionProof4947 : EqualModuloRelations reduction4947.relations reduction4947.input reduction4947.output := by lin_cert using reduction4947.terms
theorem substitutionProof4947 : IsMapEvaluation generatorImages reduction4947.relations [653] reduction4947.output := by lin_cert using reduction4947.terms
def image4948 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4948 : InImage map_27_161 image4948 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4948 : Bundle := named_bundle% "RealMapCertificates/relations/basis4948.json"
theorem reductionProof4948 : EqualModuloRelations reduction4948.relations reduction4948.input reduction4948.output := by lin_cert using reduction4948.terms
theorem substitutionProof4948 : IsMapEvaluation generatorImages reduction4948.relations [8,9,13,167] reduction4948.output := by lin_cert using reduction4948.terms
def map_27_162 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image5053 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5053 : InImage map_27_162 image5053 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5053 : Bundle := named_bundle% "RealMapCertificates/relations/basis5053.json"
theorem reductionProof5053 : EqualModuloRelations reduction5053.relations reduction5053.input reduction5053.output := by lin_cert using reduction5053.terms
theorem substitutionProof5053 : IsMapEvaluation generatorImages reduction5053.relations [13,13,13,13,13,32] reduction5053.output := by lin_cert using reduction5053.terms
def image5054 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5054 : InImage map_27_162 image5054 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5054 : Bundle := named_bundle% "RealMapCertificates/relations/basis5054.json"
theorem reductionProof5054 : EqualModuloRelations reduction5054.relations reduction5054.input reduction5054.output := by lin_cert using reduction5054.terms
theorem substitutionProof5054 : IsMapEvaluation generatorImages reduction5054.relations [8,8,299] reduction5054.output := by lin_cert using reduction5054.terms
def image5055 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5055 : InImage map_27_162 image5055 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5055 : Bundle := named_bundle% "RealMapCertificates/relations/basis5055.json"
theorem reductionProof5055 : EqualModuloRelations reduction5055.relations reduction5055.input reduction5055.output := by lin_cert using reduction5055.terms
theorem substitutionProof5055 : IsMapEvaluation generatorImages reduction5055.relations [8,8,9,23,80] reduction5055.output := by lin_cert using reduction5055.terms
def image5056 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5056 : InImage map_27_162 image5056 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5056 : Bundle := named_bundle% "RealMapCertificates/relations/basis5056.json"
theorem reductionProof5056 : EqualModuloRelations reduction5056.relations reduction5056.input reduction5056.output := by lin_cert using reduction5056.terms
theorem substitutionProof5056 : IsMapEvaluation generatorImages reduction5056.relations [0,8,8,291] reduction5056.output := by lin_cert using reduction5056.terms
def map_27_163 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5151 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5151 : InImage map_27_163 image5151 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5151 : Bundle := named_bundle% "RealMapCertificates/relations/basis5151.json"
theorem reductionProof5151 : EqualModuloRelations reduction5151.relations reduction5151.input reduction5151.output := by lin_cert using reduction5151.terms
theorem substitutionProof5151 : IsMapEvaluation generatorImages reduction5151.relations [0,0,8,8,292] reduction5151.output := by lin_cert using reduction5151.terms
def image5152 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5152 : InImage map_27_163 image5152 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5152 : Bundle := named_bundle% "RealMapCertificates/relations/basis5152.json"
theorem reductionProof5152 : EqualModuloRelations reduction5152.relations reduction5152.input reduction5152.output := by lin_cert using reduction5152.terms
theorem substitutionProof5152 : IsMapEvaluation generatorImages reduction5152.relations [0,0,0,642] reduction5152.output := by lin_cert using reduction5152.terms
def map_27_164 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5236 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5236 : InImage map_27_164 image5236 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5236 : Bundle := named_bundle% "RealMapCertificates/relations/basis5236.json"
theorem reductionProof5236 : EqualModuloRelations reduction5236.relations reduction5236.input reduction5236.output := by lin_cert using reduction5236.terms
theorem substitutionProof5236 : IsMapEvaluation generatorImages reduction5236.relations [689] reduction5236.output := by lin_cert using reduction5236.terms
def image5237 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5237 : InImage map_27_164 image5237 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5237 : Bundle := named_bundle% "RealMapCertificates/relations/basis5237.json"
theorem reductionProof5237 : EqualModuloRelations reduction5237.relations reduction5237.input reduction5237.output := by lin_cert using reduction5237.terms
theorem substitutionProof5237 : IsMapEvaluation generatorImages reduction5237.relations [8,13,13,167] reduction5237.output := by lin_cert using reduction5237.terms
def image5238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5238 : InImage map_27_164 image5238 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5238 : Bundle := named_bundle% "RealMapCertificates/relations/basis5238.json"
theorem reductionProof5238 : EqualModuloRelations reduction5238.relations reduction5238.input reduction5238.output := by lin_cert using reduction5238.terms
theorem substitutionProof5238 : IsMapEvaluation generatorImages reduction5238.relations [0,0,0,654] reduction5238.output := by lin_cert using reduction5238.terms
def map_27_165 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5363 : InImage map_27_165 image5363 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5363 : Bundle := named_bundle% "RealMapCertificates/relations/basis5363.json"
theorem reductionProof5363 : EqualModuloRelations reduction5363.relations reduction5363.input reduction5363.output := by lin_cert using reduction5363.terms
theorem substitutionProof5363 : IsMapEvaluation generatorImages reduction5363.relations [8,8,327] reduction5363.output := by lin_cert using reduction5363.terms
def image5364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5364 : InImage map_27_165 image5364 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5364 : Bundle := named_bundle% "RealMapCertificates/relations/basis5364.json"
theorem reductionProof5364 : EqualModuloRelations reduction5364.relations reduction5364.input reduction5364.output := by lin_cert using reduction5364.terms
theorem substitutionProof5364 : IsMapEvaluation generatorImages reduction5364.relations [8,8,13,23,80] reduction5364.output := by lin_cert using reduction5364.terms
def image5365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5365 : InImage map_27_165 image5365 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5365 : Bundle := named_bundle% "RealMapCertificates/relations/basis5365.json"
theorem reductionProof5365 : EqualModuloRelations reduction5365.relations reduction5365.input reduction5365.output := by lin_cert using reduction5365.terms
theorem substitutionProof5365 : IsMapEvaluation generatorImages reduction5365.relations [0,0,0,0,0,0,0,627] reduction5365.output := by lin_cert using reduction5365.terms
def map_27_166 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5457 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5457 : InImage map_27_166 image5457 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5457 : Bundle := named_bundle% "RealMapCertificates/relations/basis5457.json"
theorem reductionProof5457 : EqualModuloRelations reduction5457.relations reduction5457.input reduction5457.output := by lin_cert using reduction5457.terms
theorem substitutionProof5457 : IsMapEvaluation generatorImages reduction5457.relations [0,0,0,0,0,0,645] reduction5457.output := by lin_cert using reduction5457.terms
def image5458 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5458 : InImage map_27_166 image5458 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5458 : Bundle := named_bundle% "RealMapCertificates/relations/basis5458.json"
theorem reductionProof5458 : EqualModuloRelations reduction5458.relations reduction5458.input reduction5458.output := by lin_cert using reduction5458.terms
theorem substitutionProof5458 : IsMapEvaluation generatorImages reduction5458.relations [0,0,0,0,0,0,644] reduction5458.output := by lin_cert using reduction5458.terms
def map_27_167 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5561 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5561 : InImage map_27_167 image5561 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5561 : Bundle := named_bundle% "RealMapCertificates/relations/basis5561.json"
theorem reductionProof5561 : EqualModuloRelations reduction5561.relations reduction5561.input reduction5561.output := by lin_cert using reduction5561.terms
theorem substitutionProof5561 : IsMapEvaluation generatorImages reduction5561.relations [42,260] reduction5561.output := by lin_cert using reduction5561.terms
def image5562 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5562 : InImage map_27_167 image5562 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5562 : Bundle := named_bundle% "RealMapCertificates/relations/basis5562.json"
theorem reductionProof5562 : EqualModuloRelations reduction5562.relations reduction5562.input reduction5562.output := by lin_cert using reduction5562.terms
theorem substitutionProof5562 : IsMapEvaluation generatorImages reduction5562.relations [9,13,13,167] reduction5562.output := by lin_cert using reduction5562.terms
def image5563 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5563 : InImage map_27_167 image5563 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5563 : Bundle := named_bundle% "RealMapCertificates/relations/basis5563.json"
theorem reductionProof5563 : EqualModuloRelations reduction5563.relations reduction5563.input reduction5563.output := by lin_cert using reduction5563.terms
theorem substitutionProof5563 : IsMapEvaluation generatorImages reduction5563.relations [8,549] reduction5563.output := by lin_cert using reduction5563.terms
def map_27_168 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5679 : InImage map_27_168 image5679 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5679 : Bundle := named_bundle% "RealMapCertificates/relations/basis5679.json"
theorem reductionProof5679 : EqualModuloRelations reduction5679.relations reduction5679.input reduction5679.output := by lin_cert using reduction5679.terms
theorem substitutionProof5679 : IsMapEvaluation generatorImages reduction5679.relations [13,13,13,13,23,24] reduction5679.output := by lin_cert using reduction5679.terms
def image5680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5680 : InImage map_27_168 image5680 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5680 : Bundle := named_bundle% "RealMapCertificates/relations/basis5680.json"
theorem reductionProof5680 : EqualModuloRelations reduction5680.relations reduction5680.input reduction5680.output := by lin_cert using reduction5680.terms
theorem substitutionProof5680 : IsMapEvaluation generatorImages reduction5680.relations [8,9,13,23,80] reduction5680.output := by lin_cert using reduction5680.terms
def image5681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5681 : InImage map_27_168 image5681 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5681 : Bundle := named_bundle% "RealMapCertificates/relations/basis5681.json"
theorem reductionProof5681 : EqualModuloRelations reduction5681.relations reduction5681.input reduction5681.output := by lin_cert using reduction5681.terms
theorem substitutionProof5681 : IsMapEvaluation generatorImages reduction5681.relations [8,8,16,188] reduction5681.output := by lin_cert using reduction5681.terms
def map_27_170 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image5891 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5891 : InImage map_27_170 image5891 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5891 : Bundle := named_bundle% "RealMapCertificates/relations/basis5891.json"
theorem reductionProof5891 : EqualModuloRelations reduction5891.relations reduction5891.input reduction5891.output := by lin_cert using reduction5891.terms
theorem substitutionProof5891 : IsMapEvaluation generatorImages reduction5891.relations [42,278] reduction5891.output := by lin_cert using reduction5891.terms
def image5892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5892 : InImage map_27_170 image5892 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5892 : Bundle := named_bundle% "RealMapCertificates/relations/basis5892.json"
theorem reductionProof5892 : EqualModuloRelations reduction5892.relations reduction5892.input reduction5892.output := by lin_cert using reduction5892.terms
theorem substitutionProof5892 : IsMapEvaluation generatorImages reduction5892.relations [13,13,13,167] reduction5892.output := by lin_cert using reduction5892.terms
def image5893 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5893 : InImage map_27_170 image5893 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5893 : Bundle := named_bundle% "RealMapCertificates/relations/basis5893.json"
theorem reductionProof5893 : EqualModuloRelations reduction5893.relations reduction5893.input reduction5893.output := by lin_cert using reduction5893.terms
theorem substitutionProof5893 : IsMapEvaluation generatorImages reduction5893.relations [8,574] reduction5893.output := by lin_cert using reduction5893.terms
def image5894 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5894 : InImage map_27_170 image5894 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5894 : Bundle := named_bundle% "RealMapCertificates/relations/basis5894.json"
theorem reductionProof5894 : EqualModuloRelations reduction5894.relations reduction5894.input reduction5894.output := by lin_cert using reduction5894.terms
theorem substitutionProof5894 : IsMapEvaluation generatorImages reduction5894.relations [0,753] reduction5894.output := by lin_cert using reduction5894.terms
def image5895 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5895 : InImage map_27_170 image5895 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5895 : Bundle := named_bundle% "RealMapCertificates/relations/basis5895.json"
theorem reductionProof5895 : EqualModuloRelations reduction5895.relations reduction5895.input reduction5895.output := by lin_cert using reduction5895.terms
theorem substitutionProof5895 : IsMapEvaluation generatorImages reduction5895.relations [0,0,0,0,0,64,187] reduction5895.output := by lin_cert using reduction5895.terms
def map_27_171 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image6030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6030 : InImage map_27_171 image6030 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6030 : Bundle := named_bundle% "RealMapCertificates/relations/basis6030.json"
theorem reductionProof6030 : EqualModuloRelations reduction6030.relations reduction6030.input reduction6030.output := by lin_cert using reduction6030.terms
theorem substitutionProof6030 : IsMapEvaluation generatorImages reduction6030.relations [8,13,13,23,80] reduction6030.output := by lin_cert using reduction6030.terms
def image6031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6031 : InImage map_27_171 image6031 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6031 : Bundle := named_bundle% "RealMapCertificates/relations/basis6031.json"
theorem reductionProof6031 : EqualModuloRelations reduction6031.relations reduction6031.input reduction6031.output := by lin_cert using reduction6031.terms
theorem substitutionProof6031 : IsMapEvaluation generatorImages reduction6031.relations [8,8,8,255] reduction6031.output := by lin_cert using reduction6031.terms
def image6032 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6032 : InImage map_27_171 image6032 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6032 : Bundle := named_bundle% "RealMapCertificates/relations/basis6032.json"
theorem reductionProof6032 : EqualModuloRelations reduction6032.relations reduction6032.input reduction6032.output := by lin_cert using reduction6032.terms
theorem substitutionProof6032 : IsMapEvaluation generatorImages reduction6032.relations [0,0,0,0,0,0,64,188] reduction6032.output := by lin_cert using reduction6032.terms
def map_27_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6232 : InImage map_27_173 image6232 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6232 : Bundle := named_bundle% "RealMapCertificates/relations/basis6232.json"
theorem reductionProof6232 : EqualModuloRelations reduction6232.relations reduction6232.input reduction6232.output := by lin_cert using reduction6232.terms
theorem substitutionProof6232 : IsMapEvaluation generatorImages reduction6232.relations [8,602] reduction6232.output := by lin_cert using reduction6232.terms
def image6233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6233 : InImage map_27_173 image6233 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6233 : Bundle := named_bundle% "RealMapCertificates/relations/basis6233.json"
theorem reductionProof6233 : EqualModuloRelations reduction6233.relations reduction6233.input reduction6233.output := by lin_cert using reduction6233.terms
theorem substitutionProof6233 : IsMapEvaluation generatorImages reduction6233.relations [8,8,420] reduction6233.output := by lin_cert using reduction6233.terms
def map_27_174 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image6358 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6358 : InImage map_27_174 image6358 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6358 : Bundle := named_bundle% "RealMapCertificates/relations/basis6358.json"
theorem reductionProof6358 : EqualModuloRelations reduction6358.relations reduction6358.input reduction6358.output := by lin_cert using reduction6358.terms
theorem substitutionProof6358 : IsMapEvaluation generatorImages reduction6358.relations [9,13,13,23,80] reduction6358.output := by lin_cert using reduction6358.terms
def image6359 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6359 : InImage map_27_174 image6359 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6359 : Bundle := named_bundle% "RealMapCertificates/relations/basis6359.json"
theorem reductionProof6359 : EqualModuloRelations reduction6359.relations reduction6359.input reduction6359.output := by lin_cert using reduction6359.terms
theorem substitutionProof6359 : IsMapEvaluation generatorImages reduction6359.relations [8,8,8,8,188] reduction6359.output := by lin_cert using reduction6359.terms
def map_27_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6469 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6469 : InImage map_27_175 image6469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6469 : Bundle := named_bundle% "RealMapCertificates/relations/basis6469.json"
theorem reductionProof6469 : EqualModuloRelations reduction6469.relations reduction6469.input reduction6469.output := by lin_cert using reduction6469.terms
theorem substitutionProof6469 : IsMapEvaluation generatorImages reduction6469.relations [821] reduction6469.output := by lin_cert using reduction6469.terms
def map_27_176 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image6573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6573 : InImage map_27_176 image6573 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6573 : Bundle := named_bundle% "RealMapCertificates/relations/basis6573.json"
theorem reductionProof6573 : EqualModuloRelations reduction6573.relations reduction6573.input reduction6573.output := by lin_cert using reduction6573.terms
theorem substitutionProof6573 : IsMapEvaluation generatorImages reduction6573.relations [13,13,23,150] reduction6573.output := by lin_cert using reduction6573.terms
def image6574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6574 : InImage map_27_176 image6574 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6574 : Bundle := named_bundle% "RealMapCertificates/relations/basis6574.json"
theorem reductionProof6574 : EqualModuloRelations reduction6574.relations reduction6574.input reduction6574.output := by lin_cert using reduction6574.terms
theorem substitutionProof6574 : IsMapEvaluation generatorImages reduction6574.relations [8,625] reduction6574.output := by lin_cert using reduction6574.terms
def image6575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6575 : InImage map_27_176 image6575 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6575 : Bundle := named_bundle% "RealMapCertificates/relations/basis6575.json"
theorem reductionProof6575 : EqualModuloRelations reduction6575.relations reduction6575.input reduction6575.output := by lin_cert using reduction6575.terms
theorem substitutionProof6575 : IsMapEvaluation generatorImages reduction6575.relations [8,9,420] reduction6575.output := by lin_cert using reduction6575.terms
def image6576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6576 : InImage map_27_176 image6576 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6576 : Bundle := named_bundle% "RealMapCertificates/relations/basis6576.json"
theorem reductionProof6576 : EqualModuloRelations reduction6576.relations reduction6576.input reduction6576.output := by lin_cert using reduction6576.terms
theorem substitutionProof6576 : IsMapEvaluation generatorImages reduction6576.relations [0,0,0,797] reduction6576.output := by lin_cert using reduction6576.terms
def map_27_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6712 : InImage map_27_177 image6712 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6712 : Bundle := named_bundle% "RealMapCertificates/relations/basis6712.json"
theorem reductionProof6712 : EqualModuloRelations reduction6712.relations reduction6712.input reduction6712.output := by lin_cert using reduction6712.terms
theorem substitutionProof6712 : IsMapEvaluation generatorImages reduction6712.relations [13,13,13,23,80] reduction6712.output := by lin_cert using reduction6712.terms
def image6713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6713 : InImage map_27_177 image6713 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6713 : Bundle := named_bundle% "RealMapCertificates/relations/basis6713.json"
theorem reductionProof6713 : EqualModuloRelations reduction6713.relations reduction6713.input reduction6713.output := by lin_cert using reduction6713.terms
theorem substitutionProof6713 : IsMapEvaluation generatorImages reduction6713.relations [8,8,8,9,188] reduction6713.output := by lin_cert using reduction6713.terms
def map_27_178 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6810 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6810 : InImage map_27_178 image6810 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6810 : Bundle := named_bundle% "RealMapCertificates/relations/basis6810.json"
theorem reductionProof6810 : EqualModuloRelations reduction6810.relations reduction6810.input reduction6810.output := by lin_cert using reduction6810.terms
theorem substitutionProof6810 : IsMapEvaluation generatorImages reduction6810.relations [864] reduction6810.output := by lin_cert using reduction6810.terms
def map_27_179 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6936 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6936 : InImage map_27_179 image6936 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6936 : Bundle := named_bundle% "RealMapCertificates/relations/basis6936.json"
theorem reductionProof6936 : EqualModuloRelations reduction6936.relations reduction6936.input reduction6936.output := by lin_cert using reduction6936.terms
theorem substitutionProof6936 : IsMapEvaluation generatorImages reduction6936.relations [8,23,292] reduction6936.output := by lin_cert using reduction6936.terms
def image6937 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6937 : InImage map_27_179 image6937 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6937 : Bundle := named_bundle% "RealMapCertificates/relations/basis6937.json"
theorem reductionProof6937 : EqualModuloRelations reduction6937.relations reduction6937.input reduction6937.output := by lin_cert using reduction6937.terms
theorem substitutionProof6937 : IsMapEvaluation generatorImages reduction6937.relations [8,8,8,293] reduction6937.output := by lin_cert using reduction6937.terms
def image6938 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6938 : InImage map_27_179 image6938 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6938 : Bundle := named_bundle% "RealMapCertificates/relations/basis6938.json"
theorem reductionProof6938 : EqualModuloRelations reduction6938.relations reduction6938.input reduction6938.output := by lin_cert using reduction6938.terms
theorem substitutionProof6938 : IsMapEvaluation generatorImages reduction6938.relations [5,64,187] reduction6938.output := by lin_cert using reduction6938.terms
def image6939 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6939 : InImage map_27_179 image6939 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6939 : Bundle := named_bundle% "RealMapCertificates/relations/basis6939.json"
theorem reductionProof6939 : EqualModuloRelations reduction6939.relations reduction6939.input reduction6939.output := by lin_cert using reduction6939.terms
theorem substitutionProof6939 : IsMapEvaluation generatorImages reduction6939.relations [0,0,853] reduction6939.output := by lin_cert using reduction6939.terms
def map_27_180 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7079 : InImage map_27_180 image7079 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7079 : Bundle := named_bundle% "RealMapCertificates/relations/basis7079.json"
theorem reductionProof7079 : EqualModuloRelations reduction7079.relations reduction7079.input reduction7079.output := by lin_cert using reduction7079.terms
theorem substitutionProof7079 : IsMapEvaluation generatorImages reduction7079.relations [8,8,8,13,188] reduction7079.output := by lin_cert using reduction7079.terms
def map_27_182 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7297 : InImage map_27_182 image7297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7297 : Bundle := named_bundle% "RealMapCertificates/relations/basis7297.json"
theorem reductionProof7297 : EqualModuloRelations reduction7297.relations reduction7297.input reduction7297.output := by lin_cert using reduction7297.terms
theorem substitutionProof7297 : IsMapEvaluation generatorImages reduction7297.relations [897] reduction7297.output := by lin_cert using reduction7297.terms
def image7298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7298 : InImage map_27_182 image7298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7298 : Bundle := named_bundle% "RealMapCertificates/relations/basis7298.json"
theorem reductionProof7298 : EqualModuloRelations reduction7298.relations reduction7298.input reduction7298.output := by lin_cert using reduction7298.terms
theorem substitutionProof7298 : IsMapEvaluation generatorImages reduction7298.relations [9,23,292] reduction7298.output := by lin_cert using reduction7298.terms
def image7299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7299 : InImage map_27_182 image7299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7299 : Bundle := named_bundle% "RealMapCertificates/relations/basis7299.json"
theorem reductionProof7299 : EqualModuloRelations reduction7299.relations reduction7299.input reduction7299.output := by lin_cert using reduction7299.terms
theorem substitutionProof7299 : IsMapEvaluation generatorImages reduction7299.relations [8,8,9,293] reduction7299.output := by lin_cert using reduction7299.terms
end RealMapCertificates
