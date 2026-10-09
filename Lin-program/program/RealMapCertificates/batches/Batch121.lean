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
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 43 => []
  | 48 => []
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 68 => []
  | 71 => [[4,4,4,4,6]]
  | 72 => []
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 161 => [[4,4,4,4,5,5,7]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 255 => []
  | 262 => []
  | 292 => []
  | 324 => []
  | 331 => []
  | 411 => []
  | 417 => []
  | 619 => []
  | 627 => []
  | 646 => []
  | 679 => []
  | 691 => []
  | 692 => []
  | 693 => []
  | 705 => []
  | 762 => []
  | 822 => []
  | 832 => []
  | 876 => []
  | 877 => []
  | 945 => []
  | 979 => []
  | 1050 => []
  | 1062 => []
  | 1247 => []
  | 1258 => []
  | 1263 => []
  | 1386 => []
  | 1404 => []
  | 1405 => []
  | 1428 => []
  | 1431 => []
  | 1442 => []
  | 1473 => []
  | 1474 => []
  | 1476 => []
  | 1487 => []
  | 1505 => []
  | 1518 => []
  | 1539 => []
  | 1555 => []
  | 1570 => []
  | 1571 => []
  | 1572 => []
  | 1573 => []
  | 1598 => []
  | 1608 => []
  | 1623 => []
  | 1641 => []
  | 1652 => []
  | 1654 => []
  | 1655 => []
  | 1656 => []
  | 1691 => []
  | 1721 => []
  | 1756 => []
  | 1758 => []
  | 1759 => []
  | 1762 => []
  | 1778 => []
  | 1779 => []
  | 1781 => []
  | 1836 => []
  | _ => []
def map_27_210 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11429 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11429 : InImage map_27_210 image11429 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11429 : Bundle := named_bundle% "RealMapCertificates/relations/basis11429.json"
theorem reductionProof11429 : EqualModuloRelations reduction11429.relations reduction11429.input reduction11429.output := by lin_cert using reduction11429.terms
theorem substitutionProof11429 : IsMapEvaluation generatorImages reduction11429.relations [9,13,705] reduction11429.output := by lin_cert using reduction11429.terms
def image11430 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11430 : InImage map_27_210 image11430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11430 : Bundle := named_bundle% "RealMapCertificates/relations/basis11430.json"
theorem reductionProof11430 : EqualModuloRelations reduction11430.relations reduction11430.input reduction11430.output := by lin_cert using reduction11430.terms
theorem substitutionProof11430 : IsMapEvaluation generatorImages reduction11430.relations [1,1,110,324] reduction11430.output := by lin_cert using reduction11430.terms
def image11431 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11431 : InImage map_27_210 image11431 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11431 : Bundle := named_bundle% "RealMapCertificates/relations/basis11431.json"
theorem reductionProof11431 : EqualModuloRelations reduction11431.relations reduction11431.input reduction11431.output := by lin_cert using reduction11431.terms
theorem substitutionProof11431 : IsMapEvaluation generatorImages reduction11431.relations [0,0,0,0,0,0,1258] reduction11431.output := by lin_cert using reduction11431.terms
def map_27_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11581 : InImage map_27_211 image11581 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11581 : Bundle := named_bundle% "RealMapCertificates/relations/basis11581.json"
theorem reductionProof11581 : EqualModuloRelations reduction11581.relations reduction11581.input reduction11581.output := by lin_cert using reduction11581.terms
theorem substitutionProof11581 : IsMapEvaluation generatorImages reduction11581.relations [48,627] reduction11581.output := by lin_cert using reduction11581.terms
def image11582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11582 : InImage map_27_211 image11582 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11582 : Bundle := named_bundle% "RealMapCertificates/relations/basis11582.json"
theorem reductionProof11582 : EqualModuloRelations reduction11582.relations reduction11582.input reduction11582.output := by lin_cert using reduction11582.terms
theorem substitutionProof11582 : IsMapEvaluation generatorImages reduction11582.relations [8,1062] reduction11582.output := by lin_cert using reduction11582.terms
def image11583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11583 : InImage map_27_211 image11583 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11583 : Bundle := named_bundle% "RealMapCertificates/relations/basis11583.json"
theorem reductionProof11583 : EqualModuloRelations reduction11583.relations reduction11583.input reduction11583.output := by lin_cert using reduction11583.terms
theorem substitutionProof11583 : IsMapEvaluation generatorImages reduction11583.relations [0,0,116,324] reduction11583.output := by lin_cert using reduction11583.terms
def map_27_212 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11768 : InImage map_27_212 image11768 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11768 : Bundle := named_bundle% "RealMapCertificates/relations/basis11768.json"
theorem reductionProof11768 : EqualModuloRelations reduction11768.relations reduction11768.input reduction11768.output := by lin_cert using reduction11768.terms
theorem substitutionProof11768 : IsMapEvaluation generatorImages reduction11768.relations [1404] reduction11768.output := by lin_cert using reduction11768.terms
def image11769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11769 : InImage map_27_212 image11769 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11769 : Bundle := named_bundle% "RealMapCertificates/relations/basis11769.json"
theorem reductionProof11769 : EqualModuloRelations reduction11769.relations reduction11769.input reduction11769.output := by lin_cert using reduction11769.terms
theorem substitutionProof11769 : IsMapEvaluation generatorImages reduction11769.relations [13,979] reduction11769.output := by lin_cert using reduction11769.terms
def image11770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11770 : InImage map_27_212 image11770 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11770 : Bundle := named_bundle% "RealMapCertificates/relations/basis11770.json"
theorem reductionProof11770 : EqualModuloRelations reduction11770.relations reduction11770.input reduction11770.output := by lin_cert using reduction11770.terms
theorem substitutionProof11770 : IsMapEvaluation generatorImages reduction11770.relations [8,8,80,209] reduction11770.output := by lin_cert using reduction11770.terms
def map_27_213 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12012 : InImage map_27_213 image12012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12012 : Bundle := named_bundle% "RealMapCertificates/relations/basis12012.json"
theorem reductionProof12012 : EqualModuloRelations reduction12012.relations reduction12012.input reduction12012.output := by lin_cert using reduction12012.terms
theorem substitutionProof12012 : IsMapEvaluation generatorImages reduction12012.relations [13,13,705] reduction12012.output := by lin_cert using reduction12012.terms
def image12013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12013 : InImage map_27_213 image12013 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12013 : Bundle := named_bundle% "RealMapCertificates/relations/basis12013.json"
theorem reductionProof12013 : EqualModuloRelations reduction12013.relations reduction12013.input reduction12013.output := by lin_cert using reduction12013.terms
theorem substitutionProof12013 : IsMapEvaluation generatorImages reduction12013.relations [0,1405] reduction12013.output := by lin_cert using reduction12013.terms
def image12014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12014 : InImage map_27_213 image12014 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12014 : Bundle := named_bundle% "RealMapCertificates/relations/basis12014.json"
theorem reductionProof12014 : EqualModuloRelations reduction12014.relations reduction12014.input reduction12014.output := by lin_cert using reduction12014.terms
theorem substitutionProof12014 : IsMapEvaluation generatorImages reduction12014.relations [0,0,0,0,0,0,0,0,0,0,1247] reduction12014.output := by lin_cert using reduction12014.terms
def map_27_214 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12169 : InImage map_27_214 image12169 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12169 : Bundle := named_bundle% "RealMapCertificates/relations/basis12169.json"
theorem reductionProof12169 : EqualModuloRelations reduction12169.relations reduction12169.input reduction12169.output := by lin_cert using reduction12169.terms
theorem substitutionProof12169 : IsMapEvaluation generatorImages reduction12169.relations [9,1062] reduction12169.output := by lin_cert using reduction12169.terms
def image12170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12170 : InImage map_27_214 image12170 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12170 : Bundle := named_bundle% "RealMapCertificates/relations/basis12170.json"
theorem reductionProof12170 : EqualModuloRelations reduction12170.relations reduction12170.input reduction12170.output := by lin_cert using reduction12170.terms
theorem substitutionProof12170 : IsMapEvaluation generatorImages reduction12170.relations [0,1428] reduction12170.output := by lin_cert using reduction12170.terms
def image12171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12171 : InImage map_27_214 image12171 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12171 : Bundle := named_bundle% "RealMapCertificates/relations/basis12171.json"
theorem reductionProof12171 : EqualModuloRelations reduction12171.relations reduction12171.input reduction12171.output := by lin_cert using reduction12171.terms
theorem substitutionProof12171 : IsMapEvaluation generatorImages reduction12171.relations [0,0,8,71,324] reduction12171.output := by lin_cert using reduction12171.terms
def image12172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12172 : InImage map_27_214 image12172 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12172 : Bundle := named_bundle% "RealMapCertificates/relations/basis12172.json"
theorem reductionProof12172 : EqualModuloRelations reduction12172.relations reduction12172.input reduction12172.output := by lin_cert using reduction12172.terms
theorem substitutionProof12172 : IsMapEvaluation generatorImages reduction12172.relations [0,0,0,0,0,187,209] reduction12172.output := by lin_cert using reduction12172.terms
def image12173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12173 : InImage map_27_214 image12173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12173 : Bundle := named_bundle% "RealMapCertificates/relations/basis12173.json"
theorem reductionProof12173 : EqualModuloRelations reduction12173.relations reduction12173.input reduction12173.output := by lin_cert using reduction12173.terms
theorem substitutionProof12173 : IsMapEvaluation generatorImages reduction12173.relations [0,0,0,0,0,0,0,0,0,0,1263] reduction12173.output := by lin_cert using reduction12173.terms
def map_27_215 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12366 : InImage map_27_215 image12366 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12366 : Bundle := named_bundle% "RealMapCertificates/relations/basis12366.json"
theorem reductionProof12366 : EqualModuloRelations reduction12366.relations reduction12366.input reduction12366.output := by lin_cert using reduction12366.terms
theorem substitutionProof12366 : IsMapEvaluation generatorImages reduction12366.relations [1473] reduction12366.output := by lin_cert using reduction12366.terms
def image12367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12367 : InImage map_27_215 image12367 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12367 : Bundle := named_bundle% "RealMapCertificates/relations/basis12367.json"
theorem reductionProof12367 : EqualModuloRelations reduction12367.relations reduction12367.input reduction12367.output := by lin_cert using reduction12367.terms
theorem substitutionProof12367 : IsMapEvaluation generatorImages reduction12367.relations [23,877] reduction12367.output := by lin_cert using reduction12367.terms
def image12368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12368 : InImage map_27_215 image12368 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12368 : Bundle := named_bundle% "RealMapCertificates/relations/basis12368.json"
theorem reductionProof12368 : EqualModuloRelations reduction12368.relations reduction12368.input reduction12368.output := by lin_cert using reduction12368.terms
theorem substitutionProof12368 : IsMapEvaluation generatorImages reduction12368.relations [13,13,13,13,262] reduction12368.output := by lin_cert using reduction12368.terms
def image12369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12369 : InImage map_27_215 image12369 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12369 : Bundle := named_bundle% "RealMapCertificates/relations/basis12369.json"
theorem reductionProof12369 : EqualModuloRelations reduction12369.relations reduction12369.input reduction12369.output := by lin_cert using reduction12369.terms
theorem substitutionProof12369 : IsMapEvaluation generatorImages reduction12369.relations [8,9,80,209] reduction12369.output := by lin_cert using reduction12369.terms
def image12370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12370 : InImage map_27_215 image12370 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12370 : Bundle := named_bundle% "RealMapCertificates/relations/basis12370.json"
theorem reductionProof12370 : EqualModuloRelations reduction12370.relations reduction12370.input reduction12370.output := by lin_cert using reduction12370.terms
theorem substitutionProof12370 : IsMapEvaluation generatorImages reduction12370.relations [0,1442] reduction12370.output := by lin_cert using reduction12370.terms
def image12371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12371 : InImage map_27_215 image12371 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12371 : Bundle := named_bundle% "RealMapCertificates/relations/basis12371.json"
theorem reductionProof12371 : EqualModuloRelations reduction12371.relations reduction12371.input reduction12371.output := by lin_cert using reduction12371.terms
theorem substitutionProof12371 : IsMapEvaluation generatorImages reduction12371.relations [0,0,0,0,0,0,188,209] reduction12371.output := by lin_cert using reduction12371.terms
def map_27_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12574 : InImage map_27_216 image12574 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12574 : Bundle := named_bundle% "RealMapCertificates/relations/basis12574.json"
theorem reductionProof12574 : EqualModuloRelations reduction12574.relations reduction12574.input reduction12574.output := by lin_cert using reduction12574.terms
theorem substitutionProof12574 : IsMapEvaluation generatorImages reduction12574.relations [13,13,13,23,213] reduction12574.output := by lin_cert using reduction12574.terms
def image12575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12575 : InImage map_27_216 image12575 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12575 : Bundle := named_bundle% "RealMapCertificates/relations/basis12575.json"
theorem reductionProof12575 : EqualModuloRelations reduction12575.relations reduction12575.input reduction12575.output := by lin_cert using reduction12575.terms
theorem substitutionProof12575 : IsMapEvaluation generatorImages reduction12575.relations [1,1442] reduction12575.output := by lin_cert using reduction12575.terms
def image12576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12576 : InImage map_27_216 image12576 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12576 : Bundle := named_bundle% "RealMapCertificates/relations/basis12576.json"
theorem reductionProof12576 : EqualModuloRelations reduction12576.relations reduction12576.input reduction12576.output := by lin_cert using reduction12576.terms
theorem substitutionProof12576 : IsMapEvaluation generatorImages reduction12576.relations [0,0,0,0,17,50,324] reduction12576.output := by lin_cert using reduction12576.terms
def map_27_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12736 : InImage map_27_217 image12736 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12736 : Bundle := named_bundle% "RealMapCertificates/relations/basis12736.json"
theorem reductionProof12736 : EqualModuloRelations reduction12736.relations reduction12736.input reduction12736.output := by lin_cert using reduction12736.terms
theorem substitutionProof12736 : IsMapEvaluation generatorImages reduction12736.relations [13,1062] reduction12736.output := by lin_cert using reduction12736.terms
def image12737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12737 : InImage map_27_217 image12737 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12737 : Bundle := named_bundle% "RealMapCertificates/relations/basis12737.json"
theorem reductionProof12737 : EqualModuloRelations reduction12737.relations reduction12737.input reduction12737.output := by lin_cert using reduction12737.terms
theorem substitutionProof12737 : IsMapEvaluation generatorImages reduction12737.relations [1,1474] reduction12737.output := by lin_cert using reduction12737.terms
def image12738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12738 : InImage map_27_217 image12738 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12738 : Bundle := named_bundle% "RealMapCertificates/relations/basis12738.json"
theorem reductionProof12738 : EqualModuloRelations reduction12738.relations reduction12738.input reduction12738.output := by lin_cert using reduction12738.terms
theorem substitutionProof12738 : IsMapEvaluation generatorImages reduction12738.relations [0,0,8,77,324] reduction12738.output := by lin_cert using reduction12738.terms
def map_27_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12929 : InImage map_27_218 image12929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12929 : Bundle := named_bundle% "RealMapCertificates/relations/basis12929.json"
theorem reductionProof12929 : EqualModuloRelations reduction12929.relations reduction12929.input reduction12929.output := by lin_cert using reduction12929.terms
theorem substitutionProof12929 : IsMapEvaluation generatorImages reduction12929.relations [1518] reduction12929.output := by lin_cert using reduction12929.terms
def image12930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12930 : InImage map_27_218 image12930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12930 : Bundle := named_bundle% "RealMapCertificates/relations/basis12930.json"
theorem reductionProof12930 : EqualModuloRelations reduction12930.relations reduction12930.input reduction12930.output := by lin_cert using reduction12930.terms
theorem substitutionProof12930 : IsMapEvaluation generatorImages reduction12930.relations [8,13,80,209] reduction12930.output := by lin_cert using reduction12930.terms
def image12931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12931 : InImage map_27_218 image12931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12931 : Bundle := named_bundle% "RealMapCertificates/relations/basis12931.json"
theorem reductionProof12931 : EqualModuloRelations reduction12931.relations reduction12931.input reduction12931.output := by lin_cert using reduction12931.terms
theorem substitutionProof12931 : IsMapEvaluation generatorImages reduction12931.relations [2,1442] reduction12931.output := by lin_cert using reduction12931.terms
def image12932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12932 : InImage map_27_218 image12932 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12932 : Bundle := named_bundle% "RealMapCertificates/relations/basis12932.json"
theorem reductionProof12932 : EqualModuloRelations reduction12932.relations reduction12932.input reduction12932.output := by lin_cert using reduction12932.terms
theorem substitutionProof12932 : IsMapEvaluation generatorImages reduction12932.relations [0,1505] reduction12932.output := by lin_cert using reduction12932.terms
def map_27_219 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13161 : InImage map_27_219 image13161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13161 : Bundle := named_bundle% "RealMapCertificates/relations/basis13161.json"
theorem reductionProof13161 : EqualModuloRelations reduction13161.relations reduction13161.input reduction13161.output := by lin_cert using reduction13161.terms
theorem substitutionProof13161 : IsMapEvaluation generatorImages reduction13161.relations [187,255] reduction13161.output := by lin_cert using reduction13161.terms
def map_27_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13296 : InImage map_27_220 image13296 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13296 : Bundle := named_bundle% "RealMapCertificates/relations/basis13296.json"
theorem reductionProof13296 : EqualModuloRelations reduction13296.relations reduction13296.input reduction13296.output := by lin_cert using reduction13296.terms
theorem substitutionProof13296 : IsMapEvaluation generatorImages reduction13296.relations [13,13,23,417] reduction13296.output := by lin_cert using reduction13296.terms
def image13297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13297 : InImage map_27_220 image13297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13297 : Bundle := named_bundle% "RealMapCertificates/relations/basis13297.json"
theorem reductionProof13297 : EqualModuloRelations reduction13297.relations reduction13297.input reduction13297.output := by lin_cert using reduction13297.terms
theorem substitutionProof13297 : IsMapEvaluation generatorImages reduction13297.relations [0,1539] reduction13297.output := by lin_cert using reduction13297.terms
def image13298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13298 : InImage map_27_220 image13298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13298 : Bundle := named_bundle% "RealMapCertificates/relations/basis13298.json"
theorem reductionProof13298 : EqualModuloRelations reduction13298.relations reduction13298.input reduction13298.output := by lin_cert using reduction13298.terms
theorem substitutionProof13298 : IsMapEvaluation generatorImages reduction13298.relations [0,0,8,8,49,324] reduction13298.output := by lin_cert using reduction13298.terms
def map_27_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13498 : InImage map_27_221 image13498 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13498 : Bundle := named_bundle% "RealMapCertificates/relations/basis13498.json"
theorem reductionProof13498 : EqualModuloRelations reduction13498.relations reduction13498.input reduction13498.output := by lin_cert using reduction13498.terms
theorem substitutionProof13498 : IsMapEvaluation generatorImages reduction13498.relations [1571] reduction13498.output := by lin_cert using reduction13498.terms
def image13499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13499 : InImage map_27_221 image13499 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13499 : Bundle := named_bundle% "RealMapCertificates/relations/basis13499.json"
theorem reductionProof13499 : EqualModuloRelations reduction13499.relations reduction13499.input reduction13499.output := by lin_cert using reduction13499.terms
theorem substitutionProof13499 : IsMapEvaluation generatorImages reduction13499.relations [1570] reduction13499.output := by lin_cert using reduction13499.terms
def image13500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13500 : InImage map_27_221 image13500 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13500 : Bundle := named_bundle% "RealMapCertificates/relations/basis13500.json"
theorem reductionProof13500 : EqualModuloRelations reduction13500.relations reduction13500.input reduction13500.output := by lin_cert using reduction13500.terms
theorem substitutionProof13500 : IsMapEvaluation generatorImages reduction13500.relations [9,13,80,209] reduction13500.output := by lin_cert using reduction13500.terms
def image13501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13501 : InImage map_27_221 image13501 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13501 : Bundle := named_bundle% "RealMapCertificates/relations/basis13501.json"
theorem reductionProof13501 : EqualModuloRelations reduction13501.relations reduction13501.input reduction13501.output := by lin_cert using reduction13501.terms
theorem substitutionProof13501 : IsMapEvaluation generatorImages reduction13501.relations [2,1505] reduction13501.output := by lin_cert using reduction13501.terms
def image13502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13502 : InImage map_27_221 image13502 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13502 : Bundle := named_bundle% "RealMapCertificates/relations/basis13502.json"
theorem reductionProof13502 : EqualModuloRelations reduction13502.relations reduction13502.input reduction13502.output := by lin_cert using reduction13502.terms
theorem substitutionProof13502 : IsMapEvaluation generatorImages reduction13502.relations [1,1539] reduction13502.output := by lin_cert using reduction13502.terms
def map_27_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13725 : InImage map_27_222 image13725 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13725 : Bundle := named_bundle% "RealMapCertificates/relations/basis13725.json"
theorem reductionProof13725 : EqualModuloRelations reduction13725.relations reduction13725.input reduction13725.output := by lin_cert using reduction13725.terms
theorem substitutionProof13725 : IsMapEvaluation generatorImages reduction13725.relations [9,13,13,13,331] reduction13725.output := by lin_cert using reduction13725.terms
def image13726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13726 : InImage map_27_222 image13726 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13726 : Bundle := named_bundle% "RealMapCertificates/relations/basis13726.json"
theorem reductionProof13726 : EqualModuloRelations reduction13726.relations reduction13726.input reduction13726.output := by lin_cert using reduction13726.terms
theorem substitutionProof13726 : IsMapEvaluation generatorImages reduction13726.relations [8,187,188] reduction13726.output := by lin_cert using reduction13726.terms
def image13727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13727 : InImage map_27_222 image13727 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13727 : Bundle := named_bundle% "RealMapCertificates/relations/basis13727.json"
theorem reductionProof13727 : EqualModuloRelations reduction13727.relations reduction13727.input reduction13727.output := by lin_cert using reduction13727.terms
theorem substitutionProof13727 : IsMapEvaluation generatorImages reduction13727.relations [3,1442] reduction13727.output := by lin_cert using reduction13727.terms
def image13728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13728 : InImage map_27_222 image13728 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13728 : Bundle := named_bundle% "RealMapCertificates/relations/basis13728.json"
theorem reductionProof13728 : EqualModuloRelations reduction13728.relations reduction13728.input reduction13728.output := by lin_cert using reduction13728.terms
theorem substitutionProof13728 : IsMapEvaluation generatorImages reduction13728.relations [0,1572] reduction13728.output := by lin_cert using reduction13728.terms
def map_27_223 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13874 : InImage map_27_223 image13874 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13874 : Bundle := named_bundle% "RealMapCertificates/relations/basis13874.json"
theorem reductionProof13874 : EqualModuloRelations reduction13874.relations reduction13874.input reduction13874.output := by lin_cert using reduction13874.terms
theorem substitutionProof13874 : IsMapEvaluation generatorImages reduction13874.relations [13,13,822] reduction13874.output := by lin_cert using reduction13874.terms
def image13875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13875 : InImage map_27_223 image13875 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13875 : Bundle := named_bundle% "RealMapCertificates/relations/basis13875.json"
theorem reductionProof13875 : EqualModuloRelations reduction13875.relations reduction13875.input reduction13875.output := by lin_cert using reduction13875.terms
theorem substitutionProof13875 : IsMapEvaluation generatorImages reduction13875.relations [2,1539] reduction13875.output := by lin_cert using reduction13875.terms
def image13876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13876 : InImage map_27_223 image13876 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13876 : Bundle := named_bundle% "RealMapCertificates/relations/basis13876.json"
theorem reductionProof13876 : EqualModuloRelations reduction13876.relations reduction13876.input reduction13876.output := by lin_cert using reduction13876.terms
theorem substitutionProof13876 : IsMapEvaluation generatorImages reduction13876.relations [1,1572] reduction13876.output := by lin_cert using reduction13876.terms
def image13877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13877 : InImage map_27_223 image13877 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13877 : Bundle := named_bundle% "RealMapCertificates/relations/basis13877.json"
theorem reductionProof13877 : EqualModuloRelations reduction13877.relations reduction13877.input reduction13877.output := by lin_cert using reduction13877.terms
theorem substitutionProof13877 : IsMapEvaluation generatorImages reduction13877.relations [0,1598] reduction13877.output := by lin_cert using reduction13877.terms
def image13878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13878 : InImage map_27_223 image13878 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13878 : Bundle := named_bundle% "RealMapCertificates/relations/basis13878.json"
theorem reductionProof13878 : EqualModuloRelations reduction13878.relations reduction13878.input reduction13878.output := by lin_cert using reduction13878.terms
theorem substitutionProof13878 : IsMapEvaluation generatorImages reduction13878.relations [0,0,0,0,0,0,0,0,137,324] reduction13878.output := by lin_cert using reduction13878.terms
def map_27_224 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14058 : InImage map_27_224 image14058 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14058 : Bundle := named_bundle% "RealMapCertificates/relations/basis14058.json"
theorem reductionProof14058 : EqualModuloRelations reduction14058.relations reduction14058.input reduction14058.output := by lin_cert using reduction14058.terms
theorem substitutionProof14058 : IsMapEvaluation generatorImages reduction14058.relations [1623] reduction14058.output := by lin_cert using reduction14058.terms
def image14059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14059 : InImage map_27_224 image14059 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14059 : Bundle := named_bundle% "RealMapCertificates/relations/basis14059.json"
theorem reductionProof14059 : EqualModuloRelations reduction14059.relations reduction14059.input reduction14059.output := by lin_cert using reduction14059.terms
theorem substitutionProof14059 : IsMapEvaluation generatorImages reduction14059.relations [43,832] reduction14059.output := by lin_cert using reduction14059.terms
def image14060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14060 : InImage map_27_224 image14060 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14060 : Bundle := named_bundle% "RealMapCertificates/relations/basis14060.json"
theorem reductionProof14060 : EqualModuloRelations reduction14060.relations reduction14060.input reduction14060.output := by lin_cert using reduction14060.terms
theorem substitutionProof14060 : IsMapEvaluation generatorImages reduction14060.relations [13,23,691] reduction14060.output := by lin_cert using reduction14060.terms
def image14061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14061 : InImage map_27_224 image14061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14061 : Bundle := named_bundle% "RealMapCertificates/relations/basis14061.json"
theorem reductionProof14061 : EqualModuloRelations reduction14061.relations reduction14061.input reduction14061.output := by lin_cert using reduction14061.terms
theorem substitutionProof14061 : IsMapEvaluation generatorImages reduction14061.relations [13,13,80,209] reduction14061.output := by lin_cert using reduction14061.terms
def image14062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14062 : InImage map_27_224 image14062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14062 : Bundle := named_bundle% "RealMapCertificates/relations/basis14062.json"
theorem reductionProof14062 : EqualModuloRelations reduction14062.relations reduction14062.input reduction14062.output := by lin_cert using reduction14062.terms
theorem substitutionProof14062 : IsMapEvaluation generatorImages reduction14062.relations [0,1608] reduction14062.output := by lin_cert using reduction14062.terms
def image14063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14063 : InImage map_27_224 image14063 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14063 : Bundle := named_bundle% "RealMapCertificates/relations/basis14063.json"
theorem reductionProof14063 : EqualModuloRelations reduction14063.relations reduction14063.input reduction14063.output := by lin_cert using reduction14063.terms
theorem substitutionProof14063 : IsMapEvaluation generatorImages reduction14063.relations [0,0,0,1573] reduction14063.output := by lin_cert using reduction14063.terms
def map_27_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14290 : InImage map_27_225 image14290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14290 : Bundle := named_bundle% "RealMapCertificates/relations/basis14290.json"
theorem reductionProof14290 : EqualModuloRelations reduction14290.relations reduction14290.input reduction14290.output := by lin_cert using reduction14290.terms
theorem substitutionProof14290 : IsMapEvaluation generatorImages reduction14290.relations [13,13,13,13,331] reduction14290.output := by lin_cert using reduction14290.terms
def image14291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14291 : InImage map_27_225 image14291 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14291 : Bundle := named_bundle% "RealMapCertificates/relations/basis14291.json"
theorem reductionProof14291 : EqualModuloRelations reduction14291.relations reduction14291.input reduction14291.output := by lin_cert using reduction14291.terms
theorem substitutionProof14291 : IsMapEvaluation generatorImages reduction14291.relations [8,188,201] reduction14291.output := by lin_cert using reduction14291.terms
def image14292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14292 : InImage map_27_225 image14292 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14292 : Bundle := named_bundle% "RealMapCertificates/relations/basis14292.json"
theorem reductionProof14292 : EqualModuloRelations reduction14292.relations reduction14292.input reduction14292.output := by lin_cert using reduction14292.terms
theorem substitutionProof14292 : IsMapEvaluation generatorImages reduction14292.relations [0,68,646] reduction14292.output := by lin_cert using reduction14292.terms
def map_27_226 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14420 : InImage map_27_226 image14420 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14420 : Bundle := named_bundle% "RealMapCertificates/relations/basis14420.json"
theorem reductionProof14420 : EqualModuloRelations reduction14420.relations reduction14420.input reduction14420.output := by lin_cert using reduction14420.terms
theorem substitutionProof14420 : IsMapEvaluation generatorImages reduction14420.relations [1652] reduction14420.output := by lin_cert using reduction14420.terms
def image14421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14421 : InImage map_27_226 image14421 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14421 : Bundle := named_bundle% "RealMapCertificates/relations/basis14421.json"
theorem reductionProof14421 : EqualModuloRelations reduction14421.relations reduction14421.input reduction14421.output := by lin_cert using reduction14421.terms
theorem substitutionProof14421 : IsMapEvaluation generatorImages reduction14421.relations [9,13,13,619] reduction14421.output := by lin_cert using reduction14421.terms
def image14422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14422 : InImage map_27_226 image14422 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14422 : Bundle := named_bundle% "RealMapCertificates/relations/basis14422.json"
theorem reductionProof14422 : EqualModuloRelations reduction14422.relations reduction14422.input reduction14422.output := by lin_cert using reduction14422.terms
theorem substitutionProof14422 : IsMapEvaluation generatorImages reduction14422.relations [1,161,324] reduction14422.output := by lin_cert using reduction14422.terms
def map_27_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14627 : InImage map_27_227 image14627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14627 : Bundle := named_bundle% "RealMapCertificates/relations/basis14627.json"
theorem reductionProof14627 : EqualModuloRelations reduction14627.relations reduction14627.input reduction14627.output := by lin_cert using reduction14627.terms
theorem substitutionProof14627 : IsMapEvaluation generatorImages reduction14627.relations [64,693] reduction14627.output := by lin_cert using reduction14627.terms
def image14628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14628 : InImage map_27_227 image14628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14628 : Bundle := named_bundle% "RealMapCertificates/relations/basis14628.json"
theorem reductionProof14628 : EqualModuloRelations reduction14628.relations reduction14628.input reduction14628.output := by lin_cert using reduction14628.terms
theorem substitutionProof14628 : IsMapEvaluation generatorImages reduction14628.relations [64,692] reduction14628.output := by lin_cert using reduction14628.terms
def image14629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14629 : InImage map_27_227 image14629 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14629 : Bundle := named_bundle% "RealMapCertificates/relations/basis14629.json"
theorem reductionProof14629 : EqualModuloRelations reduction14629.relations reduction14629.input reduction14629.output := by lin_cert using reduction14629.terms
theorem substitutionProof14629 : IsMapEvaluation generatorImages reduction14629.relations [3,1539] reduction14629.output := by lin_cert using reduction14629.terms
def image14630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14630 : InImage map_27_227 image14630 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14630 : Bundle := named_bundle% "RealMapCertificates/relations/basis14630.json"
theorem reductionProof14630 : EqualModuloRelations reduction14630.relations reduction14630.input reduction14630.output := by lin_cert using reduction14630.terms
theorem substitutionProof14630 : IsMapEvaluation generatorImages reduction14630.relations [0,0,1641] reduction14630.output := by lin_cert using reduction14630.terms
def map_27_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14862 : InImage map_27_228 image14862 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14862 : Bundle := named_bundle% "RealMapCertificates/relations/basis14862.json"
theorem reductionProof14862 : EqualModuloRelations reduction14862.relations reduction14862.input reduction14862.output := by lin_cert using reduction14862.terms
theorem substitutionProof14862 : IsMapEvaluation generatorImages reduction14862.relations [23,1050] reduction14862.output := by lin_cert using reduction14862.terms
def image14863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14863 : InImage map_27_228 image14863 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14863 : Bundle := named_bundle% "RealMapCertificates/relations/basis14863.json"
theorem reductionProof14863 : EqualModuloRelations reduction14863.relations reduction14863.input reduction14863.output := by lin_cert using reduction14863.terms
theorem substitutionProof14863 : IsMapEvaluation generatorImages reduction14863.relations [8,188,212] reduction14863.output := by lin_cert using reduction14863.terms
def image14864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14864 : InImage map_27_228 image14864 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14864 : Bundle := named_bundle% "RealMapCertificates/relations/basis14864.json"
theorem reductionProof14864 : EqualModuloRelations reduction14864.relations reduction14864.input reduction14864.output := by lin_cert using reduction14864.terms
theorem substitutionProof14864 : IsMapEvaluation generatorImages reduction14864.relations [0,43,876] reduction14864.output := by lin_cert using reduction14864.terms
def image14865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14865 : InImage map_27_228 image14865 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14865 : Bundle := named_bundle% "RealMapCertificates/relations/basis14865.json"
theorem reductionProof14865 : EqualModuloRelations reduction14865.relations reduction14865.input reduction14865.output := by lin_cert using reduction14865.terms
theorem substitutionProof14865 : IsMapEvaluation generatorImages reduction14865.relations [0,3,3,1386] reduction14865.output := by lin_cert using reduction14865.terms
def image14866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14866 : InImage map_27_228 image14866 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14866 : Bundle := named_bundle% "RealMapCertificates/relations/basis14866.json"
theorem reductionProof14866 : EqualModuloRelations reduction14866.relations reduction14866.input reduction14866.output := by lin_cert using reduction14866.terms
theorem substitutionProof14866 : IsMapEvaluation generatorImages reduction14866.relations [0,0,1655] reduction14866.output := by lin_cert using reduction14866.terms
def map_27_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15023 : InImage map_27_229 image15023 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15023 : Bundle := named_bundle% "RealMapCertificates/relations/basis15023.json"
theorem reductionProof15023 : EqualModuloRelations reduction15023.relations reduction15023.input reduction15023.output := by lin_cert using reduction15023.terms
theorem substitutionProof15023 : IsMapEvaluation generatorImages reduction15023.relations [1721] reduction15023.output := by lin_cert using reduction15023.terms
def image15024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15024 : InImage map_27_229 image15024 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15024 : Bundle := named_bundle% "RealMapCertificates/relations/basis15024.json"
theorem reductionProof15024 : EqualModuloRelations reduction15024.relations reduction15024.input reduction15024.output := by lin_cert using reduction15024.terms
theorem substitutionProof15024 : IsMapEvaluation generatorImages reduction15024.relations [13,13,13,619] reduction15024.output := by lin_cert using reduction15024.terms
def image15025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15025 : InImage map_27_229 image15025 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15025 : Bundle := named_bundle% "RealMapCertificates/relations/basis15025.json"
theorem reductionProof15025 : EqualModuloRelations reduction15025.relations reduction15025.input reduction15025.output := by lin_cert using reduction15025.terms
theorem substitutionProof15025 : IsMapEvaluation generatorImages reduction15025.relations [0,0,0,1656] reduction15025.output := by lin_cert using reduction15025.terms
def map_27_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15234 : InImage map_27_230 image15234 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15234 : Bundle := named_bundle% "RealMapCertificates/relations/basis15234.json"
theorem reductionProof15234 : EqualModuloRelations reduction15234.relations reduction15234.input reduction15234.output := by lin_cert using reduction15234.terms
theorem substitutionProof15234 : IsMapEvaluation generatorImages reduction15234.relations [72,692] reduction15234.output := by lin_cert using reduction15234.terms
def image15235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15235 : InImage map_27_230 image15235 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15235 : Bundle := named_bundle% "RealMapCertificates/relations/basis15235.json"
theorem reductionProof15235 : EqualModuloRelations reduction15235.relations reduction15235.input reduction15235.output := by lin_cert using reduction15235.terms
theorem substitutionProof15235 : IsMapEvaluation generatorImages reduction15235.relations [9,13,945] reduction15235.output := by lin_cert using reduction15235.terms
def image15236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15236 : InImage map_27_230 image15236 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15236 : Bundle := named_bundle% "RealMapCertificates/relations/basis15236.json"
theorem reductionProof15236 : EqualModuloRelations reduction15236.relations reduction15236.input reduction15236.output := by lin_cert using reduction15236.terms
theorem substitutionProof15236 : IsMapEvaluation generatorImages reduction15236.relations [1,3,1555] reduction15236.output := by lin_cert using reduction15236.terms
def image15237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15237 : InImage map_27_230 image15237 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15237 : Bundle := named_bundle% "RealMapCertificates/relations/basis15237.json"
theorem reductionProof15237 : EqualModuloRelations reduction15237.relations reduction15237.input reduction15237.output := by lin_cert using reduction15237.terms
theorem substitutionProof15237 : IsMapEvaluation generatorImages reduction15237.relations [1,1,1654] reduction15237.output := by lin_cert using reduction15237.terms
def image15238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15238 : InImage map_27_230 image15238 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15238 : Bundle := named_bundle% "RealMapCertificates/relations/basis15238.json"
theorem reductionProof15238 : EqualModuloRelations reduction15238.relations reduction15238.input reduction15238.output := by lin_cert using reduction15238.terms
theorem substitutionProof15238 : IsMapEvaluation generatorImages reduction15238.relations [0,0,1691] reduction15238.output := by lin_cert using reduction15238.terms
def map_27_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15481 : InImage map_27_231 image15481 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15481 : Bundle := named_bundle% "RealMapCertificates/relations/basis15481.json"
theorem reductionProof15481 : EqualModuloRelations reduction15481.relations reduction15481.input reduction15481.output := by lin_cert using reduction15481.terms
theorem substitutionProof15481 : IsMapEvaluation generatorImages reduction15481.relations [1756] reduction15481.output := by lin_cert using reduction15481.terms
def image15482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15482 : InImage map_27_231 image15482 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15482 : Bundle := named_bundle% "RealMapCertificates/relations/basis15482.json"
theorem reductionProof15482 : EqualModuloRelations reduction15482.relations reduction15482.input reduction15482.output := by lin_cert using reduction15482.terms
theorem substitutionProof15482 : IsMapEvaluation generatorImages reduction15482.relations [13,13,13,13,411] reduction15482.output := by lin_cert using reduction15482.terms
def image15483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15483 : InImage map_27_231 image15483 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15483 : Bundle := named_bundle% "RealMapCertificates/relations/basis15483.json"
theorem reductionProof15483 : EqualModuloRelations reduction15483.relations reduction15483.input reduction15483.output := by lin_cert using reduction15483.terms
theorem substitutionProof15483 : IsMapEvaluation generatorImages reduction15483.relations [9,188,212] reduction15483.output := by lin_cert using reduction15483.terms
def image15484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15484 : InImage map_27_231 image15484 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15484 : Bundle := named_bundle% "RealMapCertificates/relations/basis15484.json"
theorem reductionProof15484 : EqualModuloRelations reduction15484.relations reduction15484.input reduction15484.output := by lin_cert using reduction15484.terms
theorem substitutionProof15484 : IsMapEvaluation generatorImages reduction15484.relations [0,0,3,1573] reduction15484.output := by lin_cert using reduction15484.terms
def map_27_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15652 : InImage map_27_232 image15652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15652 : Bundle := named_bundle% "RealMapCertificates/relations/basis15652.json"
theorem reductionProof15652 : EqualModuloRelations reduction15652.relations reduction15652.input reduction15652.output := by lin_cert using reduction15652.terms
theorem substitutionProof15652 : IsMapEvaluation generatorImages reduction15652.relations [209,292] reduction15652.output := by lin_cert using reduction15652.terms
def image15653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15653 : InImage map_27_232 image15653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15653 : Bundle := named_bundle% "RealMapCertificates/relations/basis15653.json"
theorem reductionProof15653 : EqualModuloRelations reduction15653.relations reduction15653.input reduction15653.output := by lin_cert using reduction15653.terms
theorem substitutionProof15653 : IsMapEvaluation generatorImages reduction15653.relations [0,1758] reduction15653.output := by lin_cert using reduction15653.terms
def map_27_233 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15883 : InImage map_27_233 image15883 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15883 : Bundle := named_bundle% "RealMapCertificates/relations/basis15883.json"
theorem reductionProof15883 : EqualModuloRelations reduction15883.relations reduction15883.input reduction15883.output := by lin_cert using reduction15883.terms
theorem substitutionProof15883 : IsMapEvaluation generatorImages reduction15883.relations [64,762] reduction15883.output := by lin_cert using reduction15883.terms
def image15884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15884 : InImage map_27_233 image15884 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15884 : Bundle := named_bundle% "RealMapCertificates/relations/basis15884.json"
theorem reductionProof15884 : EqualModuloRelations reduction15884.relations reduction15884.input reduction15884.output := by lin_cert using reduction15884.terms
theorem substitutionProof15884 : IsMapEvaluation generatorImages reduction15884.relations [13,13,945] reduction15884.output := by lin_cert using reduction15884.terms
def image15885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15885 : InImage map_27_233 image15885 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15885 : Bundle := named_bundle% "RealMapCertificates/relations/basis15885.json"
theorem reductionProof15885 : EqualModuloRelations reduction15885.relations reduction15885.input reduction15885.output := by lin_cert using reduction15885.terms
theorem substitutionProof15885 : IsMapEvaluation generatorImages reduction15885.relations [8,1476] reduction15885.output := by lin_cert using reduction15885.terms
def image15886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15886 : InImage map_27_233 image15886 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15886 : Bundle := named_bundle% "RealMapCertificates/relations/basis15886.json"
theorem reductionProof15886 : EqualModuloRelations reduction15886.relations reduction15886.input reduction15886.output := by lin_cert using reduction15886.terms
theorem substitutionProof15886 : IsMapEvaluation generatorImages reduction15886.relations [1,1758] reduction15886.output := by lin_cert using reduction15886.terms
def image15887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15887 : InImage map_27_233 image15887 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15887 : Bundle := named_bundle% "RealMapCertificates/relations/basis15887.json"
theorem reductionProof15887 : EqualModuloRelations reduction15887.relations reduction15887.input reduction15887.output := by lin_cert using reduction15887.terms
theorem substitutionProof15887 : IsMapEvaluation generatorImages reduction15887.relations [0,3,3,1487] reduction15887.output := by lin_cert using reduction15887.terms
def image15888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15888 : InImage map_27_233 image15888 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15888 : Bundle := named_bundle% "RealMapCertificates/relations/basis15888.json"
theorem reductionProof15888 : EqualModuloRelations reduction15888.relations reduction15888.input reduction15888.output := by lin_cert using reduction15888.terms
theorem substitutionProof15888 : IsMapEvaluation generatorImages reduction15888.relations [0,2,1691] reduction15888.output := by lin_cert using reduction15888.terms
def image15889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15889 : InImage map_27_233 image15889 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15889 : Bundle := named_bundle% "RealMapCertificates/relations/basis15889.json"
theorem reductionProof15889 : EqualModuloRelations reduction15889.relations reduction15889.input reduction15889.output := by lin_cert using reduction15889.terms
theorem substitutionProof15889 : IsMapEvaluation generatorImages reduction15889.relations [0,0,1759] reduction15889.output := by lin_cert using reduction15889.terms
def map_27_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16131 : InImage map_27_234 image16131 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16131 : Bundle := named_bundle% "RealMapCertificates/relations/basis16131.json"
theorem reductionProof16131 : EqualModuloRelations reduction16131.relations reduction16131.input reduction16131.output := by lin_cert using reduction16131.terms
theorem substitutionProof16131 : IsMapEvaluation generatorImages reduction16131.relations [13,188,212] reduction16131.output := by lin_cert using reduction16131.terms
def image16132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16132 : InImage map_27_234 image16132 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16132 : Bundle := named_bundle% "RealMapCertificates/relations/basis16132.json"
theorem reductionProof16132 : EqualModuloRelations reduction16132.relations reduction16132.input reduction16132.output := by lin_cert using reduction16132.terms
theorem substitutionProof16132 : IsMapEvaluation generatorImages reduction16132.relations [9,1431] reduction16132.output := by lin_cert using reduction16132.terms
def image16133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16133 : InImage map_27_234 image16133 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16133 : Bundle := named_bundle% "RealMapCertificates/relations/basis16133.json"
theorem reductionProof16133 : EqualModuloRelations reduction16133.relations reduction16133.input reduction16133.output := by lin_cert using reduction16133.terms
theorem substitutionProof16133 : IsMapEvaluation generatorImages reduction16133.relations [1,1778] reduction16133.output := by lin_cert using reduction16133.terms
def image16134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16134 : InImage map_27_234 image16134 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16134 : Bundle := named_bundle% "RealMapCertificates/relations/basis16134.json"
theorem reductionProof16134 : EqualModuloRelations reduction16134.relations reduction16134.input reduction16134.output := by lin_cert using reduction16134.terms
theorem substitutionProof16134 : IsMapEvaluation generatorImages reduction16134.relations [0,0,1781] reduction16134.output := by lin_cert using reduction16134.terms
def image16135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16135 : InImage map_27_234 image16135 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16135 : Bundle := named_bundle% "RealMapCertificates/relations/basis16135.json"
theorem reductionProof16135 : EqualModuloRelations reduction16135.relations reduction16135.input reduction16135.output := by lin_cert using reduction16135.terms
theorem substitutionProof16135 : IsMapEvaluation generatorImages reduction16135.relations [0,0,1779] reduction16135.output := by lin_cert using reduction16135.terms
def map_27_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16325 : InImage map_27_235 image16325 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16325 : Bundle := named_bundle% "RealMapCertificates/relations/basis16325.json"
theorem reductionProof16325 : EqualModuloRelations reduction16325.relations reduction16325.input reduction16325.output := by lin_cert using reduction16325.terms
theorem substitutionProof16325 : IsMapEvaluation generatorImages reduction16325.relations [13,13,13,679] reduction16325.output := by lin_cert using reduction16325.terms
def image16326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16326 : InImage map_27_235 image16326 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16326 : Bundle := named_bundle% "RealMapCertificates/relations/basis16326.json"
theorem reductionProof16326 : EqualModuloRelations reduction16326.relations reduction16326.input reduction16326.output := by lin_cert using reduction16326.terms
theorem substitutionProof16326 : IsMapEvaluation generatorImages reduction16326.relations [7,1539] reduction16326.output := by lin_cert using reduction16326.terms
def image16327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16327 : InImage map_27_235 image16327 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16327 : Bundle := named_bundle% "RealMapCertificates/relations/basis16327.json"
theorem reductionProof16327 : EqualModuloRelations reduction16327.relations reduction16327.input reduction16327.output := by lin_cert using reduction16327.terms
theorem substitutionProof16327 : IsMapEvaluation generatorImages reduction16327.relations [0,1836] reduction16327.output := by lin_cert using reduction16327.terms
def image16328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16328 : InImage map_27_235 image16328 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16328 : Bundle := named_bundle% "RealMapCertificates/relations/basis16328.json"
theorem reductionProof16328 : EqualModuloRelations reduction16328.relations reduction16328.input reduction16328.output := by lin_cert using reduction16328.terms
theorem substitutionProof16328 : IsMapEvaluation generatorImages reduction16328.relations [0,0,0,0,1762] reduction16328.output := by lin_cert using reduction16328.terms
end RealMapCertificates
