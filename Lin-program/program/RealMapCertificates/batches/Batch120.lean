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
  | 64 => []
  | 67 => []
  | 76 => []
  | 95 => []
  | 97 => [[1,4,4,4,4,4,4]]
  | 102 => [[2,4,4,4,4,4,4]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 266 => []
  | 280 => []
  | 287 => []
  | 292 => []
  | 301 => []
  | 318 => []
  | 324 => []
  | 328 => []
  | 349 => []
  | 350 => []
  | 360 => []
  | 383 => []
  | 384 => []
  | 418 => []
  | 423 => []
  | 537 => []
  | 627 => []
  | 638 => []
  | 655 => []
  | 668 => []
  | 690 => []
  | 705 => []
  | 760 => []
  | 779 => []
  | 798 => []
  | 813 => []
  | 832 => []
  | 874 => []
  | 876 => []
  | 898 => []
  | 901 => []
  | 919 => []
  | 920 => []
  | 921 => []
  | 940 => []
  | 941 => []
  | 957 => []
  | 958 => []
  | 963 => []
  | 973 => []
  | 974 => []
  | 976 => []
  | 977 => []
  | 978 => []
  | 1010 => []
  | 1035 => []
  | 1051 => []
  | 1063 => []
  | 1078 => []
  | 1079 => []
  | 1081 => []
  | 1084 => []
  | 1105 => []
  | 1146 => []
  | 1147 => []
  | 1149 => []
  | 1169 => []
  | 1182 => []
  | 1290 => []
  | 1304 => []
  | 1337 => []
  | _ => []
def map_27_183 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image7445 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7445 : InImage map_27_183 image7445 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7445 : Bundle := named_bundle% "RealMapCertificates/relations/basis7445.json"
theorem reductionProof7445 : EqualModuloRelations reduction7445.relations reduction7445.input reduction7445.output := by lin_cert using reduction7445.terms
theorem substitutionProof7445 : IsMapEvaluation generatorImages reduction7445.relations [921] reduction7445.output := by lin_cert using reduction7445.terms
def image7446 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7446 : InImage map_27_183 image7446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7446 : Bundle := named_bundle% "RealMapCertificates/relations/basis7446.json"
theorem reductionProof7446 : EqualModuloRelations reduction7446.relations reduction7446.input reduction7446.output := by lin_cert using reduction7446.terms
theorem substitutionProof7446 : IsMapEvaluation generatorImages reduction7446.relations [920] reduction7446.output := by lin_cert using reduction7446.terms
def image7447 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7447 : InImage map_27_183 image7447 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7447 : Bundle := named_bundle% "RealMapCertificates/relations/basis7447.json"
theorem reductionProof7447 : EqualModuloRelations reduction7447.relations reduction7447.input reduction7447.output := by lin_cert using reduction7447.terms
theorem substitutionProof7447 : IsMapEvaluation generatorImages reduction7447.relations [919] reduction7447.output := by lin_cert using reduction7447.terms
def image7448 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7448 : InImage map_27_183 image7448 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7448 : Bundle := named_bundle% "RealMapCertificates/relations/basis7448.json"
theorem reductionProof7448 : EqualModuloRelations reduction7448.relations reduction7448.input reduction7448.output := by lin_cert using reduction7448.terms
theorem substitutionProof7448 : IsMapEvaluation generatorImages reduction7448.relations [8,8,9,13,188] reduction7448.output := by lin_cert using reduction7448.terms
def map_27_184 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7546 : InImage map_27_184 image7546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7546 : Bundle := named_bundle% "RealMapCertificates/relations/basis7546.json"
theorem reductionProof7546 : EqualModuloRelations reduction7546.relations reduction7546.input reduction7546.output := by lin_cert using reduction7546.terms
theorem substitutionProof7546 : IsMapEvaluation generatorImages reduction7546.relations [23,537] reduction7546.output := by lin_cert using reduction7546.terms
def image7547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7547 : InImage map_27_184 image7547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7547 : Bundle := named_bundle% "RealMapCertificates/relations/basis7547.json"
theorem reductionProof7547 : EqualModuloRelations reduction7547.relations reduction7547.input reduction7547.output := by lin_cert using reduction7547.terms
theorem substitutionProof7547 : IsMapEvaluation generatorImages reduction7547.relations [13,13,13,13,13,67] reduction7547.output := by lin_cert using reduction7547.terms
def image7548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7548 : InImage map_27_184 image7548 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7548 : Bundle := named_bundle% "RealMapCertificates/relations/basis7548.json"
theorem reductionProof7548 : EqualModuloRelations reduction7548.relations reduction7548.input reduction7548.output := by lin_cert using reduction7548.terms
theorem substitutionProof7548 : IsMapEvaluation generatorImages reduction7548.relations [0,0,898] reduction7548.output := by lin_cert using reduction7548.terms
def map_27_185 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7666 : InImage map_27_185 image7666 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7666 : Bundle := named_bundle% "RealMapCertificates/relations/basis7666.json"
theorem reductionProof7666 : EqualModuloRelations reduction7666.relations reduction7666.input reduction7666.output := by lin_cert using reduction7666.terms
theorem substitutionProof7666 : IsMapEvaluation generatorImages reduction7666.relations [940] reduction7666.output := by lin_cert using reduction7666.terms
def image7667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7667 : InImage map_27_185 image7667 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7667 : Bundle := named_bundle% "RealMapCertificates/relations/basis7667.json"
theorem reductionProof7667 : EqualModuloRelations reduction7667.relations reduction7667.input reduction7667.output := by lin_cert using reduction7667.terms
theorem substitutionProof7667 : IsMapEvaluation generatorImages reduction7667.relations [13,23,292] reduction7667.output := by lin_cert using reduction7667.terms
def image7668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7668 : InImage map_27_185 image7668 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7668 : Bundle := named_bundle% "RealMapCertificates/relations/basis7668.json"
theorem reductionProof7668 : EqualModuloRelations reduction7668.relations reduction7668.input reduction7668.output := by lin_cert using reduction7668.terms
theorem substitutionProof7668 : IsMapEvaluation generatorImages reduction7668.relations [8,8,8,350] reduction7668.output := by lin_cert using reduction7668.terms
def map_27_186 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image7808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7808 : InImage map_27_186 image7808 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7808 : Bundle := named_bundle% "RealMapCertificates/relations/basis7808.json"
theorem reductionProof7808 : EqualModuloRelations reduction7808.relations reduction7808.input reduction7808.output := by lin_cert using reduction7808.terms
theorem substitutionProof7808 : IsMapEvaluation generatorImages reduction7808.relations [957] reduction7808.output := by lin_cert using reduction7808.terms
def image7809 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7809 : InImage map_27_186 image7809 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7809 : Bundle := named_bundle% "RealMapCertificates/relations/basis7809.json"
theorem reductionProof7809 : EqualModuloRelations reduction7809.relations reduction7809.input reduction7809.output := by lin_cert using reduction7809.terms
theorem substitutionProof7809 : IsMapEvaluation generatorImages reduction7809.relations [8,8,13,13,188] reduction7809.output := by lin_cert using reduction7809.terms
def image7810 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7810 : InImage map_27_186 image7810 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7810 : Bundle := named_bundle% "RealMapCertificates/relations/basis7810.json"
theorem reductionProof7810 : EqualModuloRelations reduction7810.relations reduction7810.input reduction7810.output := by lin_cert using reduction7810.terms
theorem substitutionProof7810 : IsMapEvaluation generatorImages reduction7810.relations [1,1,898] reduction7810.output := by lin_cert using reduction7810.terms
def map_27_188 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8006 : InImage map_27_188 image8006 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8006 : Bundle := named_bundle% "RealMapCertificates/relations/basis8006.json"
theorem reductionProof8006 : EqualModuloRelations reduction8006.relations reduction8006.input reduction8006.output := by lin_cert using reduction8006.terms
theorem substitutionProof8006 : IsMapEvaluation generatorImages reduction8006.relations [17,627] reduction8006.output := by lin_cert using reduction8006.terms
def image8007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8007 : InImage map_27_188 image8007 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8007 : Bundle := named_bundle% "RealMapCertificates/relations/basis8007.json"
theorem reductionProof8007 : EqualModuloRelations reduction8007.relations reduction8007.input reduction8007.output := by lin_cert using reduction8007.terms
theorem substitutionProof8007 : IsMapEvaluation generatorImages reduction8007.relations [8,8,8,384] reduction8007.output := by lin_cert using reduction8007.terms
def image8008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8008 : InImage map_27_188 image8008 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8008 : Bundle := named_bundle% "RealMapCertificates/relations/basis8008.json"
theorem reductionProof8008 : EqualModuloRelations reduction8008.relations reduction8008.input reduction8008.output := by lin_cert using reduction8008.terms
theorem substitutionProof8008 : IsMapEvaluation generatorImages reduction8008.relations [1,958] reduction8008.output := by lin_cert using reduction8008.terms
def image8009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8009 : InImage map_27_188 image8009 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8009 : Bundle := named_bundle% "RealMapCertificates/relations/basis8009.json"
theorem reductionProof8009 : EqualModuloRelations reduction8009.relations reduction8009.input reduction8009.output := by lin_cert using reduction8009.terms
theorem substitutionProof8009 : IsMapEvaluation generatorImages reduction8009.relations [0,963] reduction8009.output := by lin_cert using reduction8009.terms
def map_27_189 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8161 : InImage map_27_189 image8161 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8161 : Bundle := named_bundle% "RealMapCertificates/relations/basis8161.json"
theorem reductionProof8161 : EqualModuloRelations reduction8161.relations reduction8161.input reduction8161.output := by lin_cert using reduction8161.terms
theorem substitutionProof8161 : IsMapEvaluation generatorImages reduction8161.relations [64,301] reduction8161.output := by lin_cert using reduction8161.terms
def image8162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8162 : InImage map_27_189 image8162 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8162 : Bundle := named_bundle% "RealMapCertificates/relations/basis8162.json"
theorem reductionProof8162 : EqualModuloRelations reduction8162.relations reduction8162.input reduction8162.output := by lin_cert using reduction8162.terms
theorem substitutionProof8162 : IsMapEvaluation generatorImages reduction8162.relations [8,779] reduction8162.output := by lin_cert using reduction8162.terms
def image8163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8163 : InImage map_27_189 image8163 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8163 : Bundle := named_bundle% "RealMapCertificates/relations/basis8163.json"
theorem reductionProof8163 : EqualModuloRelations reduction8163.relations reduction8163.input reduction8163.output := by lin_cert using reduction8163.terms
theorem substitutionProof8163 : IsMapEvaluation generatorImages reduction8163.relations [8,9,13,13,188] reduction8163.output := by lin_cert using reduction8163.terms
def image8164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8164 : InImage map_27_189 image8164 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8164 : Bundle := named_bundle% "RealMapCertificates/relations/basis8164.json"
theorem reductionProof8164 : EqualModuloRelations reduction8164.relations reduction8164.input reduction8164.output := by lin_cert using reduction8164.terms
theorem substitutionProof8164 : IsMapEvaluation generatorImages reduction8164.relations [1,963] reduction8164.output := by lin_cert using reduction8164.terms
def image8165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8165 : InImage map_27_189 image8165 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8165 : Bundle := named_bundle% "RealMapCertificates/relations/basis8165.json"
theorem reductionProof8165 : EqualModuloRelations reduction8165.relations reduction8165.input reduction8165.output := by lin_cert using reduction8165.terms
theorem substitutionProof8165 : IsMapEvaluation generatorImages reduction8165.relations [0,974] reduction8165.output := by lin_cert using reduction8165.terms
def image8166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8166 : InImage map_27_189 image8166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8166 : Bundle := named_bundle% "RealMapCertificates/relations/basis8166.json"
theorem reductionProof8166 : EqualModuloRelations reduction8166.relations reduction8166.input reduction8166.output := by lin_cert using reduction8166.terms
theorem substitutionProof8166 : IsMapEvaluation generatorImages reduction8166.relations [0,973] reduction8166.output := by lin_cert using reduction8166.terms
def map_27_190 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8261 : InImage map_27_190 image8261 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8261 : Bundle := named_bundle% "RealMapCertificates/relations/basis8261.json"
theorem reductionProof8261 : EqualModuloRelations reduction8261.relations reduction8261.input reduction8261.output := by lin_cert using reduction8261.terms
theorem substitutionProof8261 : IsMapEvaluation generatorImages reduction8261.relations [1010] reduction8261.output := by lin_cert using reduction8261.terms
def image8262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8262 : InImage map_27_190 image8262 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8262 : Bundle := named_bundle% "RealMapCertificates/relations/basis8262.json"
theorem reductionProof8262 : EqualModuloRelations reduction8262.relations reduction8262.input reduction8262.output := by lin_cert using reduction8262.terms
theorem substitutionProof8262 : IsMapEvaluation generatorImages reduction8262.relations [9,13,13,13,13,95] reduction8262.output := by lin_cert using reduction8262.terms
def image8263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8263 : InImage map_27_190 image8263 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8263 : Bundle := named_bundle% "RealMapCertificates/relations/basis8263.json"
theorem reductionProof8263 : EqualModuloRelations reduction8263.relations reduction8263.input reduction8263.output := by lin_cert using reduction8263.terms
theorem substitutionProof8263 : IsMapEvaluation generatorImages reduction8263.relations [0,0,977] reduction8263.output := by lin_cert using reduction8263.terms
def image8264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8264 : InImage map_27_190 image8264 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8264 : Bundle := named_bundle% "RealMapCertificates/relations/basis8264.json"
theorem reductionProof8264 : EqualModuloRelations reduction8264.relations reduction8264.input reduction8264.output := by lin_cert using reduction8264.terms
theorem substitutionProof8264 : IsMapEvaluation generatorImages reduction8264.relations [0,0,976] reduction8264.output := by lin_cert using reduction8264.terms
def map_27_191 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8389 : InImage map_27_191 image8389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8389 : Bundle := named_bundle% "RealMapCertificates/relations/basis8389.json"
theorem reductionProof8389 : EqualModuloRelations reduction8389.relations reduction8389.input reduction8389.output := by lin_cert using reduction8389.terms
theorem substitutionProof8389 : IsMapEvaluation generatorImages reduction8389.relations [17,655] reduction8389.output := by lin_cert using reduction8389.terms
def image8390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8390 : InImage map_27_191 image8390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8390 : Bundle := named_bundle% "RealMapCertificates/relations/basis8390.json"
theorem reductionProof8390 : EqualModuloRelations reduction8390.relations reduction8390.input reduction8390.output := by lin_cert using reduction8390.terms
theorem substitutionProof8390 : IsMapEvaluation generatorImages reduction8390.relations [8,8,8,423] reduction8390.output := by lin_cert using reduction8390.terms
def image8391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8391 : InImage map_27_191 image8391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8391 : Bundle := named_bundle% "RealMapCertificates/relations/basis8391.json"
theorem reductionProof8391 : EqualModuloRelations reduction8391.relations reduction8391.input reduction8391.output := by lin_cert using reduction8391.terms
theorem substitutionProof8391 : IsMapEvaluation generatorImages reduction8391.relations [2,963] reduction8391.output := by lin_cert using reduction8391.terms
def image8392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8392 : InImage map_27_191 image8392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8392 : Bundle := named_bundle% "RealMapCertificates/relations/basis8392.json"
theorem reductionProof8392 : EqualModuloRelations reduction8392.relations reduction8392.input reduction8392.output := by lin_cert using reduction8392.terms
theorem substitutionProof8392 : IsMapEvaluation generatorImages reduction8392.relations [0,0,0,978] reduction8392.output := by lin_cert using reduction8392.terms
def map_27_192 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8534 : InImage map_27_192 image8534 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8534 : Bundle := named_bundle% "RealMapCertificates/relations/basis8534.json"
theorem reductionProof8534 : EqualModuloRelations reduction8534.relations reduction8534.input reduction8534.output := by lin_cert using reduction8534.terms
theorem substitutionProof8534 : IsMapEvaluation generatorImages reduction8534.relations [13,13,13,266] reduction8534.output := by lin_cert using reduction8534.terms
def image8535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8535 : InImage map_27_192 image8535 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8535 : Bundle := named_bundle% "RealMapCertificates/relations/basis8535.json"
theorem reductionProof8535 : EqualModuloRelations reduction8535.relations reduction8535.input reduction8535.output := by lin_cert using reduction8535.terms
theorem substitutionProof8535 : IsMapEvaluation generatorImages reduction8535.relations [8,813] reduction8535.output := by lin_cert using reduction8535.terms
def image8536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8536 : InImage map_27_192 image8536 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8536 : Bundle := named_bundle% "RealMapCertificates/relations/basis8536.json"
theorem reductionProof8536 : EqualModuloRelations reduction8536.relations reduction8536.input reduction8536.output := by lin_cert using reduction8536.terms
theorem substitutionProof8536 : IsMapEvaluation generatorImages reduction8536.relations [8,13,13,13,188] reduction8536.output := by lin_cert using reduction8536.terms
def image8537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8537 : InImage map_27_192 image8537 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8537 : Bundle := named_bundle% "RealMapCertificates/relations/basis8537.json"
theorem reductionProof8537 : EqualModuloRelations reduction8537.relations reduction8537.input reduction8537.output := by lin_cert using reduction8537.terms
theorem substitutionProof8537 : IsMapEvaluation generatorImages reduction8537.relations [2,973] reduction8537.output := by lin_cert using reduction8537.terms
def image8538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8538 : InImage map_27_192 image8538 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8538 : Bundle := named_bundle% "RealMapCertificates/relations/basis8538.json"
theorem reductionProof8538 : EqualModuloRelations reduction8538.relations reduction8538.input reduction8538.output := by lin_cert using reduction8538.terms
theorem substitutionProof8538 : IsMapEvaluation generatorImages reduction8538.relations [0,1035] reduction8538.output := by lin_cert using reduction8538.terms
def image8539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8539 : InImage map_27_192 image8539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8539 : Bundle := named_bundle% "RealMapCertificates/relations/basis8539.json"
theorem reductionProof8539 : EqualModuloRelations reduction8539.relations reduction8539.input reduction8539.output := by lin_cert using reduction8539.terms
theorem substitutionProof8539 : IsMapEvaluation generatorImages reduction8539.relations [0,64,318] reduction8539.output := by lin_cert using reduction8539.terms
def map_27_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8639 : InImage map_27_193 image8639 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8639 : Bundle := named_bundle% "RealMapCertificates/relations/basis8639.json"
theorem reductionProof8639 : EqualModuloRelations reduction8639.relations reduction8639.input reduction8639.output := by lin_cert using reduction8639.terms
theorem substitutionProof8639 : IsMapEvaluation generatorImages reduction8639.relations [13,13,13,13,13,95] reduction8639.output := by lin_cert using reduction8639.terms
def map_27_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8766 : InImage map_27_194 image8766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8766 : Bundle := named_bundle% "RealMapCertificates/relations/basis8766.json"
theorem reductionProof8766 : EqualModuloRelations reduction8766.relations reduction8766.input reduction8766.output := by lin_cert using reduction8766.terms
theorem substitutionProof8766 : IsMapEvaluation generatorImages reduction8766.relations [138,209] reduction8766.output := by lin_cert using reduction8766.terms
def image8767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8767 : InImage map_27_194 image8767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8767 : Bundle := named_bundle% "RealMapCertificates/relations/basis8767.json"
theorem reductionProof8767 : EqualModuloRelations reduction8767.relations reduction8767.input reduction8767.output := by lin_cert using reduction8767.terms
theorem substitutionProof8767 : IsMapEvaluation generatorImages reduction8767.relations [17,690] reduction8767.output := by lin_cert using reduction8767.terms
def image8768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8768 : InImage map_27_194 image8768 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8768 : Bundle := named_bundle% "RealMapCertificates/relations/basis8768.json"
theorem reductionProof8768 : EqualModuloRelations reduction8768.relations reduction8768.input reduction8768.output := by lin_cert using reduction8768.terms
theorem substitutionProof8768 : IsMapEvaluation generatorImages reduction8768.relations [8,832] reduction8768.output := by lin_cert using reduction8768.terms
def image8769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8769 : InImage map_27_194 image8769 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8769 : Bundle := named_bundle% "RealMapCertificates/relations/basis8769.json"
theorem reductionProof8769 : EqualModuloRelations reduction8769.relations reduction8769.input reduction8769.output := by lin_cert using reduction8769.terms
theorem substitutionProof8769 : IsMapEvaluation generatorImages reduction8769.relations [8,8,9,423] reduction8769.output := by lin_cert using reduction8769.terms
def map_27_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8938 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8938 : InImage map_27_195 image8938 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8938 : Bundle := named_bundle% "RealMapCertificates/relations/basis8938.json"
theorem reductionProof8938 : EqualModuloRelations reduction8938.relations reduction8938.input reduction8938.output := by lin_cert using reduction8938.terms
theorem substitutionProof8938 : IsMapEvaluation generatorImages reduction8938.relations [9,13,13,13,188] reduction8938.output := by lin_cert using reduction8938.terms
def image8939 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8939 : InImage map_27_195 image8939 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8939 : Bundle := named_bundle% "RealMapCertificates/relations/basis8939.json"
theorem reductionProof8939 : EqualModuloRelations reduction8939.relations reduction8939.input reduction8939.output := by lin_cert using reduction8939.terms
theorem substitutionProof8939 : IsMapEvaluation generatorImages reduction8939.relations [8,8,638] reduction8939.output := by lin_cert using reduction8939.terms
def image8940 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8940 : InImage map_27_195 image8940 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8940 : Bundle := named_bundle% "RealMapCertificates/relations/basis8940.json"
theorem reductionProof8940 : EqualModuloRelations reduction8940.relations reduction8940.input reduction8940.output := by lin_cert using reduction8940.terms
theorem substitutionProof8940 : IsMapEvaluation generatorImages reduction8940.relations [0,1078] reduction8940.output := by lin_cert using reduction8940.terms
def image8941 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8941 : InImage map_27_195 image8941 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8941 : Bundle := named_bundle% "RealMapCertificates/relations/basis8941.json"
theorem reductionProof8941 : EqualModuloRelations reduction8941.relations reduction8941.input reduction8941.output := by lin_cert using reduction8941.terms
theorem substitutionProof8941 : IsMapEvaluation generatorImages reduction8941.relations [0,23,627] reduction8941.output := by lin_cert using reduction8941.terms
def map_27_196 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9042 : InImage map_27_196 image9042 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9042 : Bundle := named_bundle% "RealMapCertificates/relations/basis9042.json"
theorem reductionProof9042 : EqualModuloRelations reduction9042.relations reduction9042.input reduction9042.output := by lin_cert using reduction9042.terms
theorem substitutionProof9042 : IsMapEvaluation generatorImages reduction9042.relations [0,0,1079] reduction9042.output := by lin_cert using reduction9042.terms
def image9043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9043 : InImage map_27_196 image9043 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9043 : Bundle := named_bundle% "RealMapCertificates/relations/basis9043.json"
theorem reductionProof9043 : EqualModuloRelations reduction9043.relations reduction9043.input reduction9043.output := by lin_cert using reduction9043.terms
theorem substitutionProof9043 : IsMapEvaluation generatorImages reduction9043.relations [0,0,64,349] reduction9043.output := by lin_cert using reduction9043.terms
def map_27_197 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9195 : InImage map_27_197 image9195 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9195 : Bundle := named_bundle% "RealMapCertificates/relations/basis9195.json"
theorem reductionProof9195 : EqualModuloRelations reduction9195.relations reduction9195.input reduction9195.output := by lin_cert using reduction9195.terms
theorem substitutionProof9195 : IsMapEvaluation generatorImages reduction9195.relations [64,383] reduction9195.output := by lin_cert using reduction9195.terms
def image9196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9196 : InImage map_27_197 image9196 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9196 : Bundle := named_bundle% "RealMapCertificates/relations/basis9196.json"
theorem reductionProof9196 : EqualModuloRelations reduction9196.relations reduction9196.input reduction9196.output := by lin_cert using reduction9196.terms
theorem substitutionProof9196 : IsMapEvaluation generatorImages reduction9196.relations [8,874] reduction9196.output := by lin_cert using reduction9196.terms
def image9197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9197 : InImage map_27_197 image9197 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9197 : Bundle := named_bundle% "RealMapCertificates/relations/basis9197.json"
theorem reductionProof9197 : EqualModuloRelations reduction9197.relations reduction9197.input reduction9197.output := by lin_cert using reduction9197.terms
theorem substitutionProof9197 : IsMapEvaluation generatorImages reduction9197.relations [8,8,13,423] reduction9197.output := by lin_cert using reduction9197.terms
def image9198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9198 : InImage map_27_197 image9198 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9198 : Bundle := named_bundle% "RealMapCertificates/relations/basis9198.json"
theorem reductionProof9198 : EqualModuloRelations reduction9198.relations reduction9198.input reduction9198.output := by lin_cert using reduction9198.terms
theorem substitutionProof9198 : IsMapEvaluation generatorImages reduction9198.relations [0,0,0,1081] reduction9198.output := by lin_cert using reduction9198.terms
def image9199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9199 : InImage map_27_197 image9199 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9199 : Bundle := named_bundle% "RealMapCertificates/relations/basis9199.json"
theorem reductionProof9199 : EqualModuloRelations reduction9199.relations reduction9199.input reduction9199.output := by lin_cert using reduction9199.terms
theorem substitutionProof9199 : IsMapEvaluation generatorImages reduction9199.relations [0,0,0,0,1063] reduction9199.output := by lin_cert using reduction9199.terms
def map_27_198 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9383 : InImage map_27_198 image9383 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9383 : Bundle := named_bundle% "RealMapCertificates/relations/basis9383.json"
theorem reductionProof9383 : EqualModuloRelations reduction9383.relations reduction9383.input reduction9383.output := by lin_cert using reduction9383.terms
theorem substitutionProof9383 : IsMapEvaluation generatorImages reduction9383.relations [13,13,13,13,188] reduction9383.output := by lin_cert using reduction9383.terms
def image9384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9384 : InImage map_27_198 image9384 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9384 : Bundle := named_bundle% "RealMapCertificates/relations/basis9384.json"
theorem reductionProof9384 : EqualModuloRelations reduction9384.relations reduction9384.input reduction9384.output := by lin_cert using reduction9384.terms
theorem substitutionProof9384 : IsMapEvaluation generatorImages reduction9384.relations [9,13,13,328] reduction9384.output := by lin_cert using reduction9384.terms
def image9385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9385 : InImage map_27_198 image9385 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9385 : Bundle := named_bundle% "RealMapCertificates/relations/basis9385.json"
theorem reductionProof9385 : EqualModuloRelations reduction9385.relations reduction9385.input reduction9385.output := by lin_cert using reduction9385.terms
theorem substitutionProof9385 : IsMapEvaluation generatorImages reduction9385.relations [8,8,668] reduction9385.output := by lin_cert using reduction9385.terms
def image9386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9386 : InImage map_27_198 image9386 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9386 : Bundle := named_bundle% "RealMapCertificates/relations/basis9386.json"
theorem reductionProof9386 : EqualModuloRelations reduction9386.relations reduction9386.input reduction9386.output := by lin_cert using reduction9386.terms
theorem substitutionProof9386 : IsMapEvaluation generatorImages reduction9386.relations [0,23,655] reduction9386.output := by lin_cert using reduction9386.terms
def image9387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9387 : InImage map_27_198 image9387 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9387 : Bundle := named_bundle% "RealMapCertificates/relations/basis9387.json"
theorem reductionProof9387 : EqualModuloRelations reduction9387.relations reduction9387.input reduction9387.output := by lin_cert using reduction9387.terms
theorem substitutionProof9387 : IsMapEvaluation generatorImages reduction9387.relations [0,0,3,978] reduction9387.output := by lin_cert using reduction9387.terms
def image9388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9388 : InImage map_27_198 image9388 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9388 : Bundle := named_bundle% "RealMapCertificates/relations/basis9388.json"
theorem reductionProof9388 : EqualModuloRelations reduction9388.relations reduction9388.input reduction9388.output := by lin_cert using reduction9388.terms
theorem substitutionProof9388 : IsMapEvaluation generatorImages reduction9388.relations [0,0,0,0,0,0,1051] reduction9388.output := by lin_cert using reduction9388.terms
def map_27_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9509 : InImage map_27_199 image9509 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9509 : Bundle := named_bundle% "RealMapCertificates/relations/basis9509.json"
theorem reductionProof9509 : EqualModuloRelations reduction9509.relations reduction9509.input reduction9509.output := by lin_cert using reduction9509.terms
theorem substitutionProof9509 : IsMapEvaluation generatorImages reduction9509.relations [13,13,13,13,23,76] reduction9509.output := by lin_cert using reduction9509.terms
def image9510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9510 : InImage map_27_199 image9510 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9510 : Bundle := named_bundle% "RealMapCertificates/relations/basis9510.json"
theorem reductionProof9510 : EqualModuloRelations reduction9510.relations reduction9510.input reduction9510.output := by lin_cert using reduction9510.terms
theorem substitutionProof9510 : IsMapEvaluation generatorImages reduction9510.relations [0,0,0,0,0,1084] reduction9510.output := by lin_cert using reduction9510.terms
def map_27_200 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9662 : InImage map_27_200 image9662 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9662 : Bundle := named_bundle% "RealMapCertificates/relations/basis9662.json"
theorem reductionProof9662 : EqualModuloRelations reduction9662.relations reduction9662.input reduction9662.output := by lin_cert using reduction9662.terms
theorem substitutionProof9662 : IsMapEvaluation generatorImages reduction9662.relations [16,760] reduction9662.output := by lin_cert using reduction9662.terms
def image9663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9663 : InImage map_27_200 image9663 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9663 : Bundle := named_bundle% "RealMapCertificates/relations/basis9663.json"
theorem reductionProof9663 : EqualModuloRelations reduction9663.relations reduction9663.input reduction9663.output := by lin_cert using reduction9663.terms
theorem substitutionProof9663 : IsMapEvaluation generatorImages reduction9663.relations [13,832] reduction9663.output := by lin_cert using reduction9663.terms
def image9664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9664 : InImage map_27_200 image9664 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9664 : Bundle := named_bundle% "RealMapCertificates/relations/basis9664.json"
theorem reductionProof9664 : EqualModuloRelations reduction9664.relations reduction9664.input reduction9664.output := by lin_cert using reduction9664.terms
theorem substitutionProof9664 : IsMapEvaluation generatorImages reduction9664.relations [8,901] reduction9664.output := by lin_cert using reduction9664.terms
def image9665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9665 : InImage map_27_200 image9665 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9665 : Bundle := named_bundle% "RealMapCertificates/relations/basis9665.json"
theorem reductionProof9665 : EqualModuloRelations reduction9665.relations reduction9665.input reduction9665.output := by lin_cert using reduction9665.terms
theorem substitutionProof9665 : IsMapEvaluation generatorImages reduction9665.relations [8,9,13,423] reduction9665.output := by lin_cert using reduction9665.terms
def image9666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9666 : InImage map_27_200 image9666 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9666 : Bundle := named_bundle% "RealMapCertificates/relations/basis9666.json"
theorem reductionProof9666 : EqualModuloRelations reduction9666.relations reduction9666.input reduction9666.output := by lin_cert using reduction9666.terms
theorem substitutionProof9666 : IsMapEvaluation generatorImages reduction9666.relations [0,149,209] reduction9666.output := by lin_cert using reduction9666.terms
def image9667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9667 : InImage map_27_200 image9667 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9667 : Bundle := named_bundle% "RealMapCertificates/relations/basis9667.json"
theorem reductionProof9667 : EqualModuloRelations reduction9667.relations reduction9667.input reduction9667.output := by lin_cert using reduction9667.terms
theorem substitutionProof9667 : IsMapEvaluation generatorImages reduction9667.relations [0,0,0,0,1105] reduction9667.output := by lin_cert using reduction9667.terms
def map_27_201 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9864 : InImage map_27_201 image9864 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9864 : Bundle := named_bundle% "RealMapCertificates/relations/basis9864.json"
theorem reductionProof9864 : EqualModuloRelations reduction9864.relations reduction9864.input reduction9864.output := by lin_cert using reduction9864.terms
theorem substitutionProof9864 : IsMapEvaluation generatorImages reduction9864.relations [13,13,13,328] reduction9864.output := by lin_cert using reduction9864.terms
def image9865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9865 : InImage map_27_201 image9865 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9865 : Bundle := named_bundle% "RealMapCertificates/relations/basis9865.json"
theorem reductionProof9865 : EqualModuloRelations reduction9865.relations reduction9865.input reduction9865.output := by lin_cert using reduction9865.terms
theorem substitutionProof9865 : IsMapEvaluation generatorImages reduction9865.relations [8,8,705] reduction9865.output := by lin_cert using reduction9865.terms
def image9866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9866 : InImage map_27_201 image9866 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9866 : Bundle := named_bundle% "RealMapCertificates/relations/basis9866.json"
theorem reductionProof9866 : EqualModuloRelations reduction9866.relations reduction9866.input reduction9866.output := by lin_cert using reduction9866.terms
theorem substitutionProof9866 : IsMapEvaluation generatorImages reduction9866.relations [1,149,209] reduction9866.output := by lin_cert using reduction9866.terms
def image9867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9867 : InImage map_27_201 image9867 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9867 : Bundle := named_bundle% "RealMapCertificates/relations/basis9867.json"
theorem reductionProof9867 : EqualModuloRelations reduction9867.relations reduction9867.input reduction9867.output := by lin_cert using reduction9867.terms
theorem substitutionProof9867 : IsMapEvaluation generatorImages reduction9867.relations [0,1182] reduction9867.output := by lin_cert using reduction9867.terms
def image9868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9868 : InImage map_27_201 image9868 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9868 : Bundle := named_bundle% "RealMapCertificates/relations/basis9868.json"
theorem reductionProof9868 : EqualModuloRelations reduction9868.relations reduction9868.input reduction9868.output := by lin_cert using reduction9868.terms
theorem substitutionProof9868 : IsMapEvaluation generatorImages reduction9868.relations [0,0,1169] reduction9868.output := by lin_cert using reduction9868.terms
def map_27_202 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9987 : InImage map_27_202 image9987 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9987 : Bundle := named_bundle% "RealMapCertificates/relations/basis9987.json"
theorem reductionProof9987 : EqualModuloRelations reduction9987.relations reduction9987.input reduction9987.output := by lin_cert using reduction9987.terms
theorem substitutionProof9987 : IsMapEvaluation generatorImages reduction9987.relations [1,1182] reduction9987.output := by lin_cert using reduction9987.terms
def image9988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9988 : InImage map_27_202 image9988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9988 : Bundle := named_bundle% "RealMapCertificates/relations/basis9988.json"
theorem reductionProof9988 : EqualModuloRelations reduction9988.relations reduction9988.input reduction9988.output := by lin_cert using reduction9988.terms
theorem substitutionProof9988 : IsMapEvaluation generatorImages reduction9988.relations [0,0,0,0,1146] reduction9988.output := by lin_cert using reduction9988.terms
def map_27_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10165 : InImage map_27_203 image10165 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10165 : Bundle := named_bundle% "RealMapCertificates/relations/basis10165.json"
theorem reductionProof10165 : EqualModuloRelations reduction10165.relations reduction10165.input reduction10165.output := by lin_cert using reduction10165.terms
theorem substitutionProof10165 : IsMapEvaluation generatorImages reduction10165.relations [9,901] reduction10165.output := by lin_cert using reduction10165.terms
def image10166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10166 : InImage map_27_203 image10166 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10166 : Bundle := named_bundle% "RealMapCertificates/relations/basis10166.json"
theorem reductionProof10166 : EqualModuloRelations reduction10166.relations reduction10166.input reduction10166.output := by lin_cert using reduction10166.terms
theorem substitutionProof10166 : IsMapEvaluation generatorImages reduction10166.relations [8,64,280] reduction10166.output := by lin_cert using reduction10166.terms
def image10167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10167 : InImage map_27_203 image10167 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10167 : Bundle := named_bundle% "RealMapCertificates/relations/basis10167.json"
theorem reductionProof10167 : EqualModuloRelations reduction10167.relations reduction10167.input reduction10167.output := by lin_cert using reduction10167.terms
theorem substitutionProof10167 : IsMapEvaluation generatorImages reduction10167.relations [8,13,13,423] reduction10167.output := by lin_cert using reduction10167.terms
def image10168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10168 : InImage map_27_203 image10168 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10168 : Bundle := named_bundle% "RealMapCertificates/relations/basis10168.json"
theorem reductionProof10168 : EqualModuloRelations reduction10168.relations reduction10168.input reduction10168.output := by lin_cert using reduction10168.terms
theorem substitutionProof10168 : IsMapEvaluation generatorImages reduction10168.relations [0,0,0,0,64,418] reduction10168.output := by lin_cert using reduction10168.terms
def image10169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10169 : InImage map_27_203 image10169 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10169 : Bundle := named_bundle% "RealMapCertificates/relations/basis10169.json"
theorem reductionProof10169 : EqualModuloRelations reduction10169.relations reduction10169.input reduction10169.output := by lin_cert using reduction10169.terms
theorem substitutionProof10169 : IsMapEvaluation generatorImages reduction10169.relations [0,0,0,0,0,1147] reduction10169.output := by lin_cert using reduction10169.terms
def map_27_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10368 : InImage map_27_204 image10368 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10368 : Bundle := named_bundle% "RealMapCertificates/relations/basis10368.json"
theorem reductionProof10368 : EqualModuloRelations reduction10368.relations reduction10368.input reduction10368.output := by lin_cert using reduction10368.terms
theorem substitutionProof10368 : IsMapEvaluation generatorImages reduction10368.relations [13,13,13,360] reduction10368.output := by lin_cert using reduction10368.terms
def image10369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10369 : InImage map_27_204 image10369 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10369 : Bundle := named_bundle% "RealMapCertificates/relations/basis10369.json"
theorem reductionProof10369 : EqualModuloRelations reduction10369.relations reduction10369.input reduction10369.output := by lin_cert using reduction10369.terms
theorem substitutionProof10369 : IsMapEvaluation generatorImages reduction10369.relations [8,9,705] reduction10369.output := by lin_cert using reduction10369.terms
def image10370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10370 : InImage map_27_204 image10370 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10370 : Bundle := named_bundle% "RealMapCertificates/relations/basis10370.json"
theorem reductionProof10370 : EqualModuloRelations reduction10370.relations reduction10370.input reduction10370.output := by lin_cert using reduction10370.terms
theorem substitutionProof10370 : IsMapEvaluation generatorImages reduction10370.relations [1,97,324] reduction10370.output := by lin_cert using reduction10370.terms
def image10371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10371 : InImage map_27_204 image10371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10371 : Bundle := named_bundle% "RealMapCertificates/relations/basis10371.json"
theorem reductionProof10371 : EqualModuloRelations reduction10371.relations reduction10371.input reduction10371.output := by lin_cert using reduction10371.terms
theorem substitutionProof10371 : IsMapEvaluation generatorImages reduction10371.relations [0,13,876] reduction10371.output := by lin_cert using reduction10371.terms
def image10372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10372 : InImage map_27_204 image10372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10372 : Bundle := named_bundle% "RealMapCertificates/relations/basis10372.json"
theorem reductionProof10372 : EqualModuloRelations reduction10372.relations reduction10372.input reduction10372.output := by lin_cert using reduction10372.terms
theorem substitutionProof10372 : IsMapEvaluation generatorImages reduction10372.relations [0,0,0,0,0,0,1149] reduction10372.output := by lin_cert using reduction10372.terms
def map_27_205 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10512 : InImage map_27_205 image10512 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10512 : Bundle := named_bundle% "RealMapCertificates/relations/basis10512.json"
theorem reductionProof10512 : EqualModuloRelations reduction10512.relations reduction10512.input reduction10512.output := by lin_cert using reduction10512.terms
theorem substitutionProof10512 : IsMapEvaluation generatorImages reduction10512.relations [1290] reduction10512.output := by lin_cert using reduction10512.terms
def image10513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10513 : InImage map_27_205 image10513 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10513 : Bundle := named_bundle% "RealMapCertificates/relations/basis10513.json"
theorem reductionProof10513 : EqualModuloRelations reduction10513.relations reduction10513.input reduction10513.output := by lin_cert using reduction10513.terms
theorem substitutionProof10513 : IsMapEvaluation generatorImages reduction10513.relations [0,102,324] reduction10513.output := by lin_cert using reduction10513.terms
def map_27_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10690 : InImage map_27_206 image10690 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10690 : Bundle := named_bundle% "RealMapCertificates/relations/basis10690.json"
theorem reductionProof10690 : EqualModuloRelations reduction10690.relations reduction10690.input reduction10690.output := by lin_cert using reduction10690.terms
theorem substitutionProof10690 : IsMapEvaluation generatorImages reduction10690.relations [13,901] reduction10690.output := by lin_cert using reduction10690.terms
def image10691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10691 : InImage map_27_206 image10691 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10691 : Bundle := named_bundle% "RealMapCertificates/relations/basis10691.json"
theorem reductionProof10691 : EqualModuloRelations reduction10691.relations reduction10691.input reduction10691.output := by lin_cert using reduction10691.terms
theorem substitutionProof10691 : IsMapEvaluation generatorImages reduction10691.relations [9,941] reduction10691.output := by lin_cert using reduction10691.terms
def image10692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10692 : InImage map_27_206 image10692 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10692 : Bundle := named_bundle% "RealMapCertificates/relations/basis10692.json"
theorem reductionProof10692 : EqualModuloRelations reduction10692.relations reduction10692.input reduction10692.output := by lin_cert using reduction10692.terms
theorem substitutionProof10692 : IsMapEvaluation generatorImages reduction10692.relations [9,13,13,423] reduction10692.output := by lin_cert using reduction10692.terms
def image10693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10693 : InImage map_27_206 image10693 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10693 : Bundle := named_bundle% "RealMapCertificates/relations/basis10693.json"
theorem reductionProof10693 : EqualModuloRelations reduction10693.relations reduction10693.input reduction10693.output := by lin_cert using reduction10693.terms
theorem substitutionProof10693 : IsMapEvaluation generatorImages reduction10693.relations [8,8,760] reduction10693.output := by lin_cert using reduction10693.terms
def map_27_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10913 : InImage map_27_207 image10913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10913 : Bundle := named_bundle% "RealMapCertificates/relations/basis10913.json"
theorem reductionProof10913 : EqualModuloRelations reduction10913.relations reduction10913.input reduction10913.output := by lin_cert using reduction10913.terms
theorem substitutionProof10913 : IsMapEvaluation generatorImages reduction10913.relations [13,13,23,287] reduction10913.output := by lin_cert using reduction10913.terms
def image10914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10914 : InImage map_27_207 image10914 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10914 : Bundle := named_bundle% "RealMapCertificates/relations/basis10914.json"
theorem reductionProof10914 : EqualModuloRelations reduction10914.relations reduction10914.input reduction10914.output := by lin_cert using reduction10914.terms
theorem substitutionProof10914 : IsMapEvaluation generatorImages reduction10914.relations [8,13,705] reduction10914.output := by lin_cert using reduction10914.terms
def image10915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10915 : InImage map_27_207 image10915 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10915 : Bundle := named_bundle% "RealMapCertificates/relations/basis10915.json"
theorem reductionProof10915 : EqualModuloRelations reduction10915.relations reduction10915.input reduction10915.output := by lin_cert using reduction10915.terms
theorem substitutionProof10915 : IsMapEvaluation generatorImages reduction10915.relations [0,0,0,187,187] reduction10915.output := by lin_cert using reduction10915.terms
def map_27_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11038 : InImage map_27_208 image11038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11038 : Bundle := named_bundle% "RealMapCertificates/relations/basis11038.json"
theorem reductionProof11038 : EqualModuloRelations reduction11038.relations reduction11038.input reduction11038.output := by lin_cert using reduction11038.terms
theorem substitutionProof11038 : IsMapEvaluation generatorImages reduction11038.relations [1337] reduction11038.output := by lin_cert using reduction11038.terms
def image11039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11039 : InImage map_27_208 image11039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11039 : Bundle := named_bundle% "RealMapCertificates/relations/basis11039.json"
theorem reductionProof11039 : EqualModuloRelations reduction11039.relations reduction11039.input reduction11039.output := by lin_cert using reduction11039.terms
theorem substitutionProof11039 : IsMapEvaluation generatorImages reduction11039.relations [1,1304] reduction11039.output := by lin_cert using reduction11039.terms
def image11040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11040 : InImage map_27_208 image11040 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11040 : Bundle := named_bundle% "RealMapCertificates/relations/basis11040.json"
theorem reductionProof11040 : EqualModuloRelations reduction11040.relations reduction11040.input reduction11040.output := by lin_cert using reduction11040.terms
theorem substitutionProof11040 : IsMapEvaluation generatorImages reduction11040.relations [0,0,110,324] reduction11040.output := by lin_cert using reduction11040.terms
def image11041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11041 : InImage map_27_208 image11041 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11041 : Bundle := named_bundle% "RealMapCertificates/relations/basis11041.json"
theorem reductionProof11041 : EqualModuloRelations reduction11041.relations reduction11041.input reduction11041.output := by lin_cert using reduction11041.terms
theorem substitutionProof11041 : IsMapEvaluation generatorImages reduction11041.relations [0,0,0,0,187,188] reduction11041.output := by lin_cert using reduction11041.terms
def map_27_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11224 : InImage map_27_209 image11224 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11224 : Bundle := named_bundle% "RealMapCertificates/relations/basis11224.json"
theorem reductionProof11224 : EqualModuloRelations reduction11224.relations reduction11224.input reduction11224.output := by lin_cert using reduction11224.terms
theorem substitutionProof11224 : IsMapEvaluation generatorImages reduction11224.relations [13,941] reduction11224.output := by lin_cert using reduction11224.terms
def image11225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11225 : InImage map_27_209 image11225 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11225 : Bundle := named_bundle% "RealMapCertificates/relations/basis11225.json"
theorem reductionProof11225 : EqualModuloRelations reduction11225.relations reduction11225.input reduction11225.output := by lin_cert using reduction11225.terms
theorem substitutionProof11225 : IsMapEvaluation generatorImages reduction11225.relations [13,13,13,423] reduction11225.output := by lin_cert using reduction11225.terms
def image11226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11226 : InImage map_27_209 image11226 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11226 : Bundle := named_bundle% "RealMapCertificates/relations/basis11226.json"
theorem reductionProof11226 : EqualModuloRelations reduction11226.relations reduction11226.input reduction11226.output := by lin_cert using reduction11226.terms
theorem substitutionProof11226 : IsMapEvaluation generatorImages reduction11226.relations [8,8,798] reduction11226.output := by lin_cert using reduction11226.terms
def image11227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11227 : InImage map_27_209 image11227 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11227 : Bundle := named_bundle% "RealMapCertificates/relations/basis11227.json"
theorem reductionProof11227 : EqualModuloRelations reduction11227.relations reduction11227.input reduction11227.output := by lin_cert using reduction11227.terms
theorem substitutionProof11227 : IsMapEvaluation generatorImages reduction11227.relations [0,0,0,111,324] reduction11227.output := by lin_cert using reduction11227.terms
end RealMapCertificates
