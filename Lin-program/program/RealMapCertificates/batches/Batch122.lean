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
  | 18 => []
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 75 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 190 => []
  | 209 => []
  | 213 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 246 => []
  | 250 => []
  | 261 => []
  | 280 => []
  | 318 => []
  | 324 => []
  | 373 => []
  | 383 => []
  | 417 => []
  | 570 => []
  | 825 => []
  | 960 => []
  | 982 => []
  | 1002 => []
  | 1041 => []
  | 1052 => []
  | 1431 => []
  | 1442 => []
  | 1445 => []
  | 1542 => []
  | 1642 => []
  | 1656 => []
  | 1762 => []
  | 1779 => []
  | 1836 => []
  | 1837 => []
  | 1904 => []
  | 1905 => []
  | 1906 => []
  | 1908 => []
  | 1912 => []
  | 1937 => []
  | 1938 => []
  | 1939 => []
  | 1940 => []
  | 1969 => []
  | 1971 => []
  | 1999 => []
  | 2000 => []
  | 2001 => []
  | 2043 => []
  | 2045 => []
  | 2062 => []
  | 2067 => []
  | 2100 => []
  | 2102 => []
  | 2103 => []
  | 2104 => []
  | 2131 => []
  | 2132 => []
  | 2134 => []
  | 2135 => []
  | 2136 => []
  | 2168 => []
  | 2170 => []
  | 2172 => []
  | 2204 => []
  | 2205 => []
  | 2206 => []
  | 2207 => []
  | 2209 => []
  | 2245 => []
  | 2246 => []
  | 2247 => []
  | 2248 => []
  | 2249 => []
  | 2251 => []
  | 2280 => []
  | 2312 => []
  | 2313 => []
  | 2314 => []
  | 2315 => []
  | 2345 => []
  | 2346 => []
  | 2382 => []
  | 2416 => []
  | 2417 => []
  | 2418 => []
  | _ => []
def map_27_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16563 : InImage map_27_236 image16563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16563 : Bundle := named_bundle% "RealMapCertificates/relations/basis16563.json"
theorem reductionProof16563 : EqualModuloRelations reduction16563.relations reduction16563.input reduction16563.output := by lin_cert using reduction16563.terms
theorem substitutionProof16563 : IsMapEvaluation generatorImages reduction16563.relations [8,188,250] reduction16563.output := by lin_cert using reduction16563.terms
def image16564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16564 : InImage map_27_236 image16564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16564 : Bundle := named_bundle% "RealMapCertificates/relations/basis16564.json"
theorem reductionProof16564 : EqualModuloRelations reduction16564.relations reduction16564.input reduction16564.output := by lin_cert using reduction16564.terms
theorem substitutionProof16564 : IsMapEvaluation generatorImages reduction16564.relations [1,1837] reduction16564.output := by lin_cert using reduction16564.terms
def image16565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16565 : InImage map_27_236 image16565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16565 : Bundle := named_bundle% "RealMapCertificates/relations/basis16565.json"
theorem reductionProof16565 : EqualModuloRelations reduction16565.relations reduction16565.input reduction16565.output := by lin_cert using reduction16565.terms
theorem substitutionProof16565 : IsMapEvaluation generatorImages reduction16565.relations [1,1,1779] reduction16565.output := by lin_cert using reduction16565.terms
def image16566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16566 : InImage map_27_236 image16566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16566 : Bundle := named_bundle% "RealMapCertificates/relations/basis16566.json"
theorem reductionProof16566 : EqualModuloRelations reduction16566.relations reduction16566.input reduction16566.output := by lin_cert using reduction16566.terms
theorem substitutionProof16566 : IsMapEvaluation generatorImages reduction16566.relations [0,209,318] reduction16566.output := by lin_cert using reduction16566.terms
def image16567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16567 : InImage map_27_236 image16567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16567 : Bundle := named_bundle% "RealMapCertificates/relations/basis16567.json"
theorem reductionProof16567 : EqualModuloRelations reduction16567.relations reduction16567.input reduction16567.output := by lin_cert using reduction16567.terms
theorem substitutionProof16567 : IsMapEvaluation generatorImages reduction16567.relations [0,0,3,1656] reduction16567.output := by lin_cert using reduction16567.terms
def map_27_237 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16813 : InImage map_27_237 image16813 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16813 : Bundle := named_bundle% "RealMapCertificates/relations/basis16813.json"
theorem reductionProof16813 : EqualModuloRelations reduction16813.relations reduction16813.input reduction16813.output := by lin_cert using reduction16813.terms
theorem substitutionProof16813 : IsMapEvaluation generatorImages reduction16813.relations [1904] reduction16813.output := by lin_cert using reduction16813.terms
def image16814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16814 : InImage map_27_237 image16814 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16814 : Bundle := named_bundle% "RealMapCertificates/relations/basis16814.json"
theorem reductionProof16814 : EqualModuloRelations reduction16814.relations reduction16814.input reduction16814.output := by lin_cert using reduction16814.terms
theorem substitutionProof16814 : IsMapEvaluation generatorImages reduction16814.relations [13,1431] reduction16814.output := by lin_cert using reduction16814.terms
def map_27_238 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16990 : InImage map_27_238 image16990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16990 : Bundle := named_bundle% "RealMapCertificates/relations/basis16990.json"
theorem reductionProof16990 : EqualModuloRelations reduction16990.relations reduction16990.input reduction16990.output := by lin_cert using reduction16990.terms
theorem substitutionProof16990 : IsMapEvaluation generatorImages reduction16990.relations [1938] reduction16990.output := by lin_cert using reduction16990.terms
def image16991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16991 : InImage map_27_238 image16991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16991 : Bundle := named_bundle% "RealMapCertificates/relations/basis16991.json"
theorem reductionProof16991 : EqualModuloRelations reduction16991.relations reduction16991.input reduction16991.output := by lin_cert using reduction16991.terms
theorem substitutionProof16991 : IsMapEvaluation generatorImages reduction16991.relations [1937] reduction16991.output := by lin_cert using reduction16991.terms
def image16992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16992 : InImage map_27_238 image16992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16992 : Bundle := named_bundle% "RealMapCertificates/relations/basis16992.json"
theorem reductionProof16992 : EqualModuloRelations reduction16992.relations reduction16992.input reduction16992.output := by lin_cert using reduction16992.terms
theorem substitutionProof16992 : IsMapEvaluation generatorImages reduction16992.relations [9,13,13,23,373] reduction16992.output := by lin_cert using reduction16992.terms
def map_27_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17249 : InImage map_27_239 image17249 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17249 : Bundle := named_bundle% "RealMapCertificates/relations/basis17249.json"
theorem reductionProof17249 : EqualModuloRelations reduction17249.relations reduction17249.input reduction17249.output := by lin_cert using reduction17249.terms
theorem substitutionProof17249 : IsMapEvaluation generatorImages reduction17249.relations [224,324] reduction17249.output := by lin_cert using reduction17249.terms
def image17250 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17250 : InImage map_27_239 image17250 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17250 : Bundle := named_bundle% "RealMapCertificates/relations/basis17250.json"
theorem reductionProof17250 : EqualModuloRelations reduction17250.relations reduction17250.input reduction17250.output := by lin_cert using reduction17250.terms
theorem substitutionProof17250 : IsMapEvaluation generatorImages reduction17250.relations [13,13,1041] reduction17250.output := by lin_cert using reduction17250.terms
def image17251 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17251 : InImage map_27_239 image17251 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17251 : Bundle := named_bundle% "RealMapCertificates/relations/basis17251.json"
theorem reductionProof17251 : EqualModuloRelations reduction17251.relations reduction17251.input reduction17251.output := by lin_cert using reduction17251.terms
theorem substitutionProof17251 : IsMapEvaluation generatorImages reduction17251.relations [8,188,261] reduction17251.output := by lin_cert using reduction17251.terms
def image17252 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17252 : InImage map_27_239 image17252 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17252 : Bundle := named_bundle% "RealMapCertificates/relations/basis17252.json"
theorem reductionProof17252 : EqualModuloRelations reduction17252.relations reduction17252.input reduction17252.output := by lin_cert using reduction17252.terms
theorem substitutionProof17252 : IsMapEvaluation generatorImages reduction17252.relations [1,1905] reduction17252.output := by lin_cert using reduction17252.terms
def image17253 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17253 : InImage map_27_239 image17253 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17253 : Bundle := named_bundle% "RealMapCertificates/relations/basis17253.json"
theorem reductionProof17253 : EqualModuloRelations reduction17253.relations reduction17253.input reduction17253.output := by lin_cert using reduction17253.terms
theorem substitutionProof17253 : IsMapEvaluation generatorImages reduction17253.relations [0,0,1906] reduction17253.output := by lin_cert using reduction17253.terms
def map_27_240 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17521 : InImage map_27_240 image17521 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17521 : Bundle := named_bundle% "RealMapCertificates/relations/basis17521.json"
theorem reductionProof17521 : EqualModuloRelations reduction17521.relations reduction17521.input reduction17521.output := by lin_cert using reduction17521.terms
theorem substitutionProof17521 : IsMapEvaluation generatorImages reduction17521.relations [2000] reduction17521.output := by lin_cert using reduction17521.terms
def image17522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17522 : InImage map_27_240 image17522 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17522 : Bundle := named_bundle% "RealMapCertificates/relations/basis17522.json"
theorem reductionProof17522 : EqualModuloRelations reduction17522.relations reduction17522.input reduction17522.output := by lin_cert using reduction17522.terms
theorem substitutionProof17522 : IsMapEvaluation generatorImages reduction17522.relations [1999] reduction17522.output := by lin_cert using reduction17522.terms
def image17523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17523 : InImage map_27_240 image17523 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17523 : Bundle := named_bundle% "RealMapCertificates/relations/basis17523.json"
theorem reductionProof17523 : EqualModuloRelations reduction17523.relations reduction17523.input reduction17523.output := by lin_cert using reduction17523.terms
theorem substitutionProof17523 : IsMapEvaluation generatorImages reduction17523.relations [13,13,1052] reduction17523.output := by lin_cert using reduction17523.terms
def image17524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17524 : InImage map_27_240 image17524 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17524 : Bundle := named_bundle% "RealMapCertificates/relations/basis17524.json"
theorem reductionProof17524 : EqualModuloRelations reduction17524.relations reduction17524.input reduction17524.output := by lin_cert using reduction17524.terms
theorem substitutionProof17524 : IsMapEvaluation generatorImages reduction17524.relations [0,1969] reduction17524.output := by lin_cert using reduction17524.terms
def image17525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17525 : InImage map_27_240 image17525 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17525 : Bundle := named_bundle% "RealMapCertificates/relations/basis17525.json"
theorem reductionProof17525 : EqualModuloRelations reduction17525.relations reduction17525.input reduction17525.output := by lin_cert using reduction17525.terms
theorem substitutionProof17525 : IsMapEvaluation generatorImages reduction17525.relations [0,225,324] reduction17525.output := by lin_cert using reduction17525.terms
def image17526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17526 : InImage map_27_240 image17526 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17526 : Bundle := named_bundle% "RealMapCertificates/relations/basis17526.json"
theorem reductionProof17526 : EqualModuloRelations reduction17526.relations reduction17526.input reduction17526.output := by lin_cert using reduction17526.terms
theorem substitutionProof17526 : IsMapEvaluation generatorImages reduction17526.relations [0,0,1940] reduction17526.output := by lin_cert using reduction17526.terms
def image17527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17527 : InImage map_27_240 image17527 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17527 : Bundle := named_bundle% "RealMapCertificates/relations/basis17527.json"
theorem reductionProof17527 : EqualModuloRelations reduction17527.relations reduction17527.input reduction17527.output := by lin_cert using reduction17527.terms
theorem substitutionProof17527 : IsMapEvaluation generatorImages reduction17527.relations [0,0,64,825] reduction17527.output := by lin_cert using reduction17527.terms
def image17528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17528 : InImage map_27_240 image17528 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17528 : Bundle := named_bundle% "RealMapCertificates/relations/basis17528.json"
theorem reductionProof17528 : EqualModuloRelations reduction17528.relations reduction17528.input reduction17528.output := by lin_cert using reduction17528.terms
theorem substitutionProof17528 : IsMapEvaluation generatorImages reduction17528.relations [0,0,0,1908] reduction17528.output := by lin_cert using reduction17528.terms
def map_27_241 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17763 : InImage map_27_241 image17763 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17763 : Bundle := named_bundle% "RealMapCertificates/relations/basis17763.json"
theorem reductionProof17763 : EqualModuloRelations reduction17763.relations reduction17763.input reduction17763.output := by lin_cert using reduction17763.terms
theorem substitutionProof17763 : IsMapEvaluation generatorImages reduction17763.relations [2043] reduction17763.output := by lin_cert using reduction17763.terms
def image17764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17764 : InImage map_27_241 image17764 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17764 : Bundle := named_bundle% "RealMapCertificates/relations/basis17764.json"
theorem reductionProof17764 : EqualModuloRelations reduction17764.relations reduction17764.input reduction17764.output := by lin_cert using reduction17764.terms
theorem substitutionProof17764 : IsMapEvaluation generatorImages reduction17764.relations [209,383] reduction17764.output := by lin_cert using reduction17764.terms
def image17765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17765 : InImage map_27_241 image17765 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17765 : Bundle := named_bundle% "RealMapCertificates/relations/basis17765.json"
theorem reductionProof17765 : EqualModuloRelations reduction17765.relations reduction17765.input reduction17765.output := by lin_cert using reduction17765.terms
theorem substitutionProof17765 : IsMapEvaluation generatorImages reduction17765.relations [13,13,13,23,373] reduction17765.output := by lin_cert using reduction17765.terms
def image17766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17766 : InImage map_27_241 image17766 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17766 : Bundle := named_bundle% "RealMapCertificates/relations/basis17766.json"
theorem reductionProof17766 : EqualModuloRelations reduction17766.relations reduction17766.input reduction17766.output := by lin_cert using reduction17766.terms
theorem substitutionProof17766 : IsMapEvaluation generatorImages reduction17766.relations [0,3,1779] reduction17766.output := by lin_cert using reduction17766.terms
def image17767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17767 : InImage map_27_241 image17767 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17767 : Bundle := named_bundle% "RealMapCertificates/relations/basis17767.json"
theorem reductionProof17767 : EqualModuloRelations reduction17767.relations reduction17767.input reduction17767.output := by lin_cert using reduction17767.terms
theorem substitutionProof17767 : IsMapEvaluation generatorImages reduction17767.relations [0,0,1971] reduction17767.output := by lin_cert using reduction17767.terms
def image17768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17768 : InImage map_27_241 image17768 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17768 : Bundle := named_bundle% "RealMapCertificates/relations/basis17768.json"
theorem reductionProof17768 : EqualModuloRelations reduction17768.relations reduction17768.input reduction17768.output := by lin_cert using reduction17768.terms
theorem substitutionProof17768 : IsMapEvaluation generatorImages reduction17768.relations [0,0,0,0,1912] reduction17768.output := by lin_cert using reduction17768.terms
def map_27_242 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18032 : InImage map_27_242 image18032 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18032 : Bundle := named_bundle% "RealMapCertificates/relations/basis18032.json"
theorem reductionProof18032 : EqualModuloRelations reduction18032.relations reduction18032.input reduction18032.output := by lin_cert using reduction18032.terms
theorem substitutionProof18032 : IsMapEvaluation generatorImages reduction18032.relations [2062] reduction18032.output := by lin_cert using reduction18032.terms
def image18033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18033 : InImage map_27_242 image18033 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18033 : Bundle := named_bundle% "RealMapCertificates/relations/basis18033.json"
theorem reductionProof18033 : EqualModuloRelations reduction18033.relations reduction18033.input reduction18033.output := by lin_cert using reduction18033.terms
theorem substitutionProof18033 : IsMapEvaluation generatorImages reduction18033.relations [237,324] reduction18033.output := by lin_cert using reduction18033.terms
def image18034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18034 : InImage map_27_242 image18034 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18034 : Bundle := named_bundle% "RealMapCertificates/relations/basis18034.json"
theorem reductionProof18034 : EqualModuloRelations reduction18034.relations reduction18034.input reduction18034.output := by lin_cert using reduction18034.terms
theorem substitutionProof18034 : IsMapEvaluation generatorImages reduction18034.relations [9,188,261] reduction18034.output := by lin_cert using reduction18034.terms
def image18035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18035 : InImage map_27_242 image18035 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18035 : Bundle := named_bundle% "RealMapCertificates/relations/basis18035.json"
theorem reductionProof18035 : EqualModuloRelations reduction18035.relations reduction18035.input reduction18035.output := by lin_cert using reduction18035.terms
theorem substitutionProof18035 : IsMapEvaluation generatorImages reduction18035.relations [1,2001] reduction18035.output := by lin_cert using reduction18035.terms
def image18036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18036 : InImage map_27_242 image18036 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18036 : Bundle := named_bundle% "RealMapCertificates/relations/basis18036.json"
theorem reductionProof18036 : EqualModuloRelations reduction18036.relations reduction18036.input reduction18036.output := by lin_cert using reduction18036.terms
theorem substitutionProof18036 : IsMapEvaluation generatorImages reduction18036.relations [1,1,1939] reduction18036.output := by lin_cert using reduction18036.terms
def image18037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18037 : InImage map_27_242 image18037 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18037 : Bundle := named_bundle% "RealMapCertificates/relations/basis18037.json"
theorem reductionProof18037 : EqualModuloRelations reduction18037.relations reduction18037.input reduction18037.output := by lin_cert using reduction18037.terms
theorem substitutionProof18037 : IsMapEvaluation generatorImages reduction18037.relations [0,0,0,3,1762] reduction18037.output := by lin_cert using reduction18037.terms
def map_27_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18304 : InImage map_27_243 image18304 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18304 : Bundle := named_bundle% "RealMapCertificates/relations/basis18304.json"
theorem reductionProof18304 : EqualModuloRelations reduction18304.relations reduction18304.input reduction18304.output := by lin_cert using reduction18304.terms
theorem substitutionProof18304 : IsMapEvaluation generatorImages reduction18304.relations [2100] reduction18304.output := by lin_cert using reduction18304.terms
def image18305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18305 : InImage map_27_243 image18305 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18305 : Bundle := named_bundle% "RealMapCertificates/relations/basis18305.json"
theorem reductionProof18305 : EqualModuloRelations reduction18305.relations reduction18305.input reduction18305.output := by lin_cert using reduction18305.terms
theorem substitutionProof18305 : IsMapEvaluation generatorImages reduction18305.relations [13,1542] reduction18305.output := by lin_cert using reduction18305.terms
def image18306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18306 : InImage map_27_243 image18306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18306 : Bundle := named_bundle% "RealMapCertificates/relations/basis18306.json"
theorem reductionProof18306 : EqualModuloRelations reduction18306.relations reduction18306.input reduction18306.output := by lin_cert using reduction18306.terms
theorem substitutionProof18306 : IsMapEvaluation generatorImages reduction18306.relations [8,1642] reduction18306.output := by lin_cert using reduction18306.terms
def image18307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18307 : InImage map_27_243 image18307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18307 : Bundle := named_bundle% "RealMapCertificates/relations/basis18307.json"
theorem reductionProof18307 : EqualModuloRelations reduction18307.relations reduction18307.input reduction18307.output := by lin_cert using reduction18307.terms
theorem substitutionProof18307 : IsMapEvaluation generatorImages reduction18307.relations [0,238,324] reduction18307.output := by lin_cert using reduction18307.terms
def image18308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18308 : InImage map_27_243 image18308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18308 : Bundle := named_bundle% "RealMapCertificates/relations/basis18308.json"
theorem reductionProof18308 : EqualModuloRelations reduction18308.relations reduction18308.input reduction18308.output := by lin_cert using reduction18308.terms
theorem substitutionProof18308 : IsMapEvaluation generatorImages reduction18308.relations [0,0,2045] reduction18308.output := by lin_cert using reduction18308.terms
def map_27_244 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18505 : InImage map_27_244 image18505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18505 : Bundle := named_bundle% "RealMapCertificates/relations/basis18505.json"
theorem reductionProof18505 : EqualModuloRelations reduction18505.relations reduction18505.input reduction18505.output := by lin_cert using reduction18505.terms
theorem substitutionProof18505 : IsMapEvaluation generatorImages reduction18505.relations [2131] reduction18505.output := by lin_cert using reduction18505.terms
def image18506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18506 : InImage map_27_244 image18506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18506 : Bundle := named_bundle% "RealMapCertificates/relations/basis18506.json"
theorem reductionProof18506 : EqualModuloRelations reduction18506.relations reduction18506.input reduction18506.output := by lin_cert using reduction18506.terms
theorem substitutionProof18506 : IsMapEvaluation generatorImages reduction18506.relations [16,1445] reduction18506.output := by lin_cert using reduction18506.terms
def image18507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18507 : InImage map_27_244 image18507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18507 : Bundle := named_bundle% "RealMapCertificates/relations/basis18507.json"
theorem reductionProof18507 : EqualModuloRelations reduction18507.relations reduction18507.input reduction18507.output := by lin_cert using reduction18507.terms
theorem substitutionProof18507 : IsMapEvaluation generatorImages reduction18507.relations [0,2102] reduction18507.output := by lin_cert using reduction18507.terms
def map_27_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18773 : InImage map_27_245 image18773 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18773 : Bundle := named_bundle% "RealMapCertificates/relations/basis18773.json"
theorem reductionProof18773 : EqualModuloRelations reduction18773.relations reduction18773.input reduction18773.output := by lin_cert using reduction18773.terms
theorem substitutionProof18773 : IsMapEvaluation generatorImages reduction18773.relations [2168] reduction18773.output := by lin_cert using reduction18773.terms
def image18774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18774 : InImage map_27_245 image18774 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18774 : Bundle := named_bundle% "RealMapCertificates/relations/basis18774.json"
theorem reductionProof18774 : EqualModuloRelations reduction18774.relations reduction18774.input reduction18774.output := by lin_cert using reduction18774.terms
theorem substitutionProof18774 : IsMapEvaluation generatorImages reduction18774.relations [16,137,324] reduction18774.output := by lin_cert using reduction18774.terms
def image18775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18775 : InImage map_27_245 image18775 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18775 : Bundle := named_bundle% "RealMapCertificates/relations/basis18775.json"
theorem reductionProof18775 : EqualModuloRelations reduction18775.relations reduction18775.input reduction18775.output := by lin_cert using reduction18775.terms
theorem substitutionProof18775 : IsMapEvaluation generatorImages reduction18775.relations [13,188,261] reduction18775.output := by lin_cert using reduction18775.terms
def image18776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18776 : InImage map_27_245 image18776 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18776 : Bundle := named_bundle% "RealMapCertificates/relations/basis18776.json"
theorem reductionProof18776 : EqualModuloRelations reduction18776.relations reduction18776.input reduction18776.output := by lin_cert using reduction18776.terms
theorem substitutionProof18776 : IsMapEvaluation generatorImages reduction18776.relations [1,2102] reduction18776.output := by lin_cert using reduction18776.terms
def image18777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18777 : InImage map_27_245 image18777 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18777 : Bundle := named_bundle% "RealMapCertificates/relations/basis18777.json"
theorem reductionProof18777 : EqualModuloRelations reduction18777.relations reduction18777.input reduction18777.output := by lin_cert using reduction18777.terms
theorem substitutionProof18777 : IsMapEvaluation generatorImages reduction18777.relations [0,0,2103] reduction18777.output := by lin_cert using reduction18777.terms
def map_27_246 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image19063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19063 : InImage map_27_246 image19063 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction19063 : Bundle := named_bundle% "RealMapCertificates/relations/basis19063.json"
theorem reductionProof19063 : EqualModuloRelations reduction19063.relations reduction19063.input reduction19063.output := by lin_cert using reduction19063.terms
theorem substitutionProof19063 : IsMapEvaluation generatorImages reduction19063.relations [2205] reduction19063.output := by lin_cert using reduction19063.terms
def image19064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19064 : InImage map_27_246 image19064 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction19064 : Bundle := named_bundle% "RealMapCertificates/relations/basis19064.json"
theorem reductionProof19064 : EqualModuloRelations reduction19064.relations reduction19064.input reduction19064.output := by lin_cert using reduction19064.terms
theorem substitutionProof19064 : IsMapEvaluation generatorImages reduction19064.relations [2204] reduction19064.output := by lin_cert using reduction19064.terms
def image19065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19065 : InImage map_27_246 image19065 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction19065 : Bundle := named_bundle% "RealMapCertificates/relations/basis19065.json"
theorem reductionProof19065 : EqualModuloRelations reduction19065.relations reduction19065.input reduction19065.output := by lin_cert using reduction19065.terms
theorem substitutionProof19065 : IsMapEvaluation generatorImages reduction19065.relations [18,1442] reduction19065.output := by lin_cert using reduction19065.terms
def image19066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19066 : InImage map_27_246 image19066 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction19066 : Bundle := named_bundle% "RealMapCertificates/relations/basis19066.json"
theorem reductionProof19066 : EqualModuloRelations reduction19066.relations reduction19066.input reduction19066.output := by lin_cert using reduction19066.terms
theorem substitutionProof19066 : IsMapEvaluation generatorImages reduction19066.relations [9,1642] reduction19066.output := by lin_cert using reduction19066.terms
def image19067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19067 : InImage map_27_246 image19067 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction19067 : Bundle := named_bundle% "RealMapCertificates/relations/basis19067.json"
theorem reductionProof19067 : EqualModuloRelations reduction19067.relations reduction19067.input reduction19067.output := by lin_cert using reduction19067.terms
theorem substitutionProof19067 : IsMapEvaluation generatorImages reduction19067.relations [9,23,1002] reduction19067.output := by lin_cert using reduction19067.terms
def image19068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19068 : InImage map_27_246 image19068 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction19068 : Bundle := named_bundle% "RealMapCertificates/relations/basis19068.json"
theorem reductionProof19068 : EqualModuloRelations reduction19068.relations reduction19068.input reduction19068.output := by lin_cert using reduction19068.terms
theorem substitutionProof19068 : IsMapEvaluation generatorImages reduction19068.relations [1,2132] reduction19068.output := by lin_cert using reduction19068.terms
def image19069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19069 : InImage map_27_246 image19069 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction19069 : Bundle := named_bundle% "RealMapCertificates/relations/basis19069.json"
theorem reductionProof19069 : EqualModuloRelations reduction19069.relations reduction19069.input reduction19069.output := by lin_cert using reduction19069.terms
theorem substitutionProof19069 : IsMapEvaluation generatorImages reduction19069.relations [0,16,138,324] reduction19069.output := by lin_cert using reduction19069.terms
def image19070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19070 : InImage map_27_246 image19070 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction19070 : Bundle := named_bundle% "RealMapCertificates/relations/basis19070.json"
theorem reductionProof19070 : EqualModuloRelations reduction19070.relations reduction19070.input reduction19070.output := by lin_cert using reduction19070.terms
theorem substitutionProof19070 : IsMapEvaluation generatorImages reduction19070.relations [0,0,2134] reduction19070.output := by lin_cert using reduction19070.terms
def image19071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19071 : InImage map_27_246 image19071 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction19071 : Bundle := named_bundle% "RealMapCertificates/relations/basis19071.json"
theorem reductionProof19071 : EqualModuloRelations reduction19071.relations reduction19071.input reduction19071.output := by lin_cert using reduction19071.terms
theorem substitutionProof19071 : IsMapEvaluation generatorImages reduction19071.relations [0,0,0,2104] reduction19071.output := by lin_cert using reduction19071.terms
def map_27_247 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image19300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19300 : InImage map_27_247 image19300 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction19300 : Bundle := named_bundle% "RealMapCertificates/relations/basis19300.json"
theorem reductionProof19300 : EqualModuloRelations reduction19300.relations reduction19300.input reduction19300.output := by lin_cert using reduction19300.terms
theorem substitutionProof19300 : IsMapEvaluation generatorImages reduction19300.relations [2247] reduction19300.output := by lin_cert using reduction19300.terms
def image19301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19301 : InImage map_27_247 image19301 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction19301 : Bundle := named_bundle% "RealMapCertificates/relations/basis19301.json"
theorem reductionProof19301 : EqualModuloRelations reduction19301.relations reduction19301.input reduction19301.output := by lin_cert using reduction19301.terms
theorem substitutionProof19301 : IsMapEvaluation generatorImages reduction19301.relations [2246] reduction19301.output := by lin_cert using reduction19301.terms
def image19302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19302 : InImage map_27_247 image19302 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction19302 : Bundle := named_bundle% "RealMapCertificates/relations/basis19302.json"
theorem reductionProof19302 : EqualModuloRelations reduction19302.relations reduction19302.input reduction19302.output := by lin_cert using reduction19302.terms
theorem substitutionProof19302 : IsMapEvaluation generatorImages reduction19302.relations [2245] reduction19302.output := by lin_cert using reduction19302.terms
def image19303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19303 : InImage map_27_247 image19303 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction19303 : Bundle := named_bundle% "RealMapCertificates/relations/basis19303.json"
theorem reductionProof19303 : EqualModuloRelations reduction19303.relations reduction19303.input reduction19303.output := by lin_cert using reduction19303.terms
theorem substitutionProof19303 : IsMapEvaluation generatorImages reduction19303.relations [13,13,13,75,213] reduction19303.output := by lin_cert using reduction19303.terms
def image19304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19304 : InImage map_27_247 image19304 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction19304 : Bundle := named_bundle% "RealMapCertificates/relations/basis19304.json"
theorem reductionProof19304 : EqualModuloRelations reduction19304.relations reduction19304.input reduction19304.output := by lin_cert using reduction19304.terms
theorem substitutionProof19304 : IsMapEvaluation generatorImages reduction19304.relations [13,13,13,13,570] reduction19304.output := by lin_cert using reduction19304.terms
def image19305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19305 : InImage map_27_247 image19305 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction19305 : Bundle := named_bundle% "RealMapCertificates/relations/basis19305.json"
theorem reductionProof19305 : EqualModuloRelations reduction19305.relations reduction19305.input reduction19305.output := by lin_cert using reduction19305.terms
theorem substitutionProof19305 : IsMapEvaluation generatorImages reduction19305.relations [8,209,280] reduction19305.output := by lin_cert using reduction19305.terms
def image19306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19306 : InImage map_27_247 image19306 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction19306 : Bundle := named_bundle% "RealMapCertificates/relations/basis19306.json"
theorem reductionProof19306 : EqualModuloRelations reduction19306.relations reduction19306.input reduction19306.output := by lin_cert using reduction19306.terms
theorem substitutionProof19306 : IsMapEvaluation generatorImages reduction19306.relations [0,2207] reduction19306.output := by lin_cert using reduction19306.terms
def image19307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19307 : InImage map_27_247 image19307 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction19307 : Bundle := named_bundle% "RealMapCertificates/relations/basis19307.json"
theorem reductionProof19307 : EqualModuloRelations reduction19307.relations reduction19307.input reduction19307.output := by lin_cert using reduction19307.terms
theorem substitutionProof19307 : IsMapEvaluation generatorImages reduction19307.relations [0,0,0,2136] reduction19307.output := by lin_cert using reduction19307.terms
def image19308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19308 : InImage map_27_247 image19308 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction19308 : Bundle := named_bundle% "RealMapCertificates/relations/basis19308.json"
theorem reductionProof19308 : EqualModuloRelations reduction19308.relations reduction19308.input reduction19308.output := by lin_cert using reduction19308.terms
theorem substitutionProof19308 : IsMapEvaluation generatorImages reduction19308.relations [0,0,0,2135] reduction19308.output := by lin_cert using reduction19308.terms
def map_27_248 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19578 : InImage map_27_248 image19578 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19578 : Bundle := named_bundle% "RealMapCertificates/relations/basis19578.json"
theorem reductionProof19578 : EqualModuloRelations reduction19578.relations reduction19578.input reduction19578.output := by lin_cert using reduction19578.terms
theorem substitutionProof19578 : IsMapEvaluation generatorImages reduction19578.relations [2280] reduction19578.output := by lin_cert using reduction19578.terms
def image19579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19579 : InImage map_27_248 image19579 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19579 : Bundle := named_bundle% "RealMapCertificates/relations/basis19579.json"
theorem reductionProof19579 : EqualModuloRelations reduction19579.relations reduction19579.input reduction19579.output := by lin_cert using reduction19579.terms
theorem substitutionProof19579 : IsMapEvaluation generatorImages reduction19579.relations [8,184,324] reduction19579.output := by lin_cert using reduction19579.terms
def image19580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19580 : InImage map_27_248 image19580 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19580 : Bundle := named_bundle% "RealMapCertificates/relations/basis19580.json"
theorem reductionProof19580 : EqualModuloRelations reduction19580.relations reduction19580.input reduction19580.output := by lin_cert using reduction19580.terms
theorem substitutionProof19580 : IsMapEvaluation generatorImages reduction19580.relations [1,2207] reduction19580.output := by lin_cert using reduction19580.terms
def image19581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19581 : InImage map_27_248 image19581 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19581 : Bundle := named_bundle% "RealMapCertificates/relations/basis19581.json"
theorem reductionProof19581 : EqualModuloRelations reduction19581.relations reduction19581.input reduction19581.output := by lin_cert using reduction19581.terms
theorem substitutionProof19581 : IsMapEvaluation generatorImages reduction19581.relations [1,2206] reduction19581.output := by lin_cert using reduction19581.terms
def image19582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19582 : InImage map_27_248 image19582 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19582 : Bundle := named_bundle% "RealMapCertificates/relations/basis19582.json"
theorem reductionProof19582 : EqualModuloRelations reduction19582.relations reduction19582.input reduction19582.output := by lin_cert using reduction19582.terms
theorem substitutionProof19582 : IsMapEvaluation generatorImages reduction19582.relations [0,0,2209] reduction19582.output := by lin_cert using reduction19582.terms
def image19583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19583 : InImage map_27_248 image19583 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19583 : Bundle := named_bundle% "RealMapCertificates/relations/basis19583.json"
theorem reductionProof19583 : EqualModuloRelations reduction19583.relations reduction19583.input reduction19583.output := by lin_cert using reduction19583.terms
theorem substitutionProof19583 : IsMapEvaluation generatorImages reduction19583.relations [0,0,0,2172] reduction19583.output := by lin_cert using reduction19583.terms
def image19584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19584 : InImage map_27_248 image19584 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19584 : Bundle := named_bundle% "RealMapCertificates/relations/basis19584.json"
theorem reductionProof19584 : EqualModuloRelations reduction19584.relations reduction19584.input reduction19584.output := by lin_cert using reduction19584.terms
theorem substitutionProof19584 : IsMapEvaluation generatorImages reduction19584.relations [0,0,0,0,0,0,2067] reduction19584.output := by lin_cert using reduction19584.terms
def map_27_249 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image19875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19875 : InImage map_27_249 image19875 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction19875 : Bundle := named_bundle% "RealMapCertificates/relations/basis19875.json"
theorem reductionProof19875 : EqualModuloRelations reduction19875.relations reduction19875.input reduction19875.output := by lin_cert using reduction19875.terms
theorem substitutionProof19875 : IsMapEvaluation generatorImages reduction19875.relations [2314] reduction19875.output := by lin_cert using reduction19875.terms
def image19876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19876 : InImage map_27_249 image19876 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction19876 : Bundle := named_bundle% "RealMapCertificates/relations/basis19876.json"
theorem reductionProof19876 : EqualModuloRelations reduction19876.relations reduction19876.input reduction19876.output := by lin_cert using reduction19876.terms
theorem substitutionProof19876 : IsMapEvaluation generatorImages reduction19876.relations [2313] reduction19876.output := by lin_cert using reduction19876.terms
def image19877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19877 : InImage map_27_249 image19877 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction19877 : Bundle := named_bundle% "RealMapCertificates/relations/basis19877.json"
theorem reductionProof19877 : EqualModuloRelations reduction19877.relations reduction19877.input reduction19877.output := by lin_cert using reduction19877.terms
theorem substitutionProof19877 : IsMapEvaluation generatorImages reduction19877.relations [2312] reduction19877.output := by lin_cert using reduction19877.terms
def image19878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19878 : InImage map_27_249 image19878 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction19878 : Bundle := named_bundle% "RealMapCertificates/relations/basis19878.json"
theorem reductionProof19878 : EqualModuloRelations reduction19878.relations reduction19878.input reduction19878.output := by lin_cert using reduction19878.terms
theorem substitutionProof19878 : IsMapEvaluation generatorImages reduction19878.relations [13,1642] reduction19878.output := by lin_cert using reduction19878.terms
def image19879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19879 : InImage map_27_249 image19879 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction19879 : Bundle := named_bundle% "RealMapCertificates/relations/basis19879.json"
theorem reductionProof19879 : EqualModuloRelations reduction19879.relations reduction19879.input reduction19879.output := by lin_cert using reduction19879.terms
theorem substitutionProof19879 : IsMapEvaluation generatorImages reduction19879.relations [13,23,1002] reduction19879.output := by lin_cert using reduction19879.terms
def image19880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19880 : InImage map_27_249 image19880 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction19880 : Bundle := named_bundle% "RealMapCertificates/relations/basis19880.json"
theorem reductionProof19880 : EqualModuloRelations reduction19880.relations reduction19880.input reduction19880.output := by lin_cert using reduction19880.terms
theorem substitutionProof19880 : IsMapEvaluation generatorImages reduction19880.relations [1,2249] reduction19880.output := by lin_cert using reduction19880.terms
def image19881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19881 : InImage map_27_249 image19881 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction19881 : Bundle := named_bundle% "RealMapCertificates/relations/basis19881.json"
theorem reductionProof19881 : EqualModuloRelations reduction19881.relations reduction19881.input reduction19881.output := by lin_cert using reduction19881.terms
theorem substitutionProof19881 : IsMapEvaluation generatorImages reduction19881.relations [1,2248] reduction19881.output := by lin_cert using reduction19881.terms
def image19882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19882 : InImage map_27_249 image19882 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction19882 : Bundle := named_bundle% "RealMapCertificates/relations/basis19882.json"
theorem reductionProof19882 : EqualModuloRelations reduction19882.relations reduction19882.input reduction19882.output := by lin_cert using reduction19882.terms
theorem substitutionProof19882 : IsMapEvaluation generatorImages reduction19882.relations [0,8,185,324] reduction19882.output := by lin_cert using reduction19882.terms
def image19883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19883 : InImage map_27_249 image19883 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction19883 : Bundle := named_bundle% "RealMapCertificates/relations/basis19883.json"
theorem reductionProof19883 : EqualModuloRelations reduction19883.relations reduction19883.input reduction19883.output := by lin_cert using reduction19883.terms
theorem substitutionProof19883 : IsMapEvaluation generatorImages reduction19883.relations [0,0,2251] reduction19883.output := by lin_cert using reduction19883.terms
def image19884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19884 : InImage map_27_249 image19884 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction19884 : Bundle := named_bundle% "RealMapCertificates/relations/basis19884.json"
theorem reductionProof19884 : EqualModuloRelations reduction19884.relations reduction19884.input reduction19884.output := by lin_cert using reduction19884.terms
theorem substitutionProof19884 : IsMapEvaluation generatorImages reduction19884.relations [0,0,0,0,0,246,324] reduction19884.output := by lin_cert using reduction19884.terms
def map_27_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20100 : InImage map_27_250 image20100 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20100 : Bundle := named_bundle% "RealMapCertificates/relations/basis20100.json"
theorem reductionProof20100 : EqualModuloRelations reduction20100.relations reduction20100.input reduction20100.output := by lin_cert using reduction20100.terms
theorem substitutionProof20100 : IsMapEvaluation generatorImages reduction20100.relations [8,8,1445] reduction20100.output := by lin_cert using reduction20100.terms
def image20101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20101 : InImage map_27_250 image20101 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20101 : Bundle := named_bundle% "RealMapCertificates/relations/basis20101.json"
theorem reductionProof20101 : EqualModuloRelations reduction20101.relations reduction20101.input reduction20101.output := by lin_cert using reduction20101.terms
theorem substitutionProof20101 : IsMapEvaluation generatorImages reduction20101.relations [7,1836] reduction20101.output := by lin_cert using reduction20101.terms
def image20102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20102 : InImage map_27_250 image20102 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20102 : Bundle := named_bundle% "RealMapCertificates/relations/basis20102.json"
theorem reductionProof20102 : EqualModuloRelations reduction20102.relations reduction20102.input reduction20102.output := by lin_cert using reduction20102.terms
theorem substitutionProof20102 : IsMapEvaluation generatorImages reduction20102.relations [0,2315] reduction20102.output := by lin_cert using reduction20102.terms
def image20103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20103 : InImage map_27_250 image20103 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20103 : Bundle := named_bundle% "RealMapCertificates/relations/basis20103.json"
theorem reductionProof20103 : EqualModuloRelations reduction20103.relations reduction20103.input reduction20103.output := by lin_cert using reduction20103.terms
theorem substitutionProof20103 : IsMapEvaluation generatorImages reduction20103.relations [0,3,2045] reduction20103.output := by lin_cert using reduction20103.terms
def image20104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20104 : InImage map_27_250 image20104 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20104 : Bundle := named_bundle% "RealMapCertificates/relations/basis20104.json"
theorem reductionProof20104 : EqualModuloRelations reduction20104.relations reduction20104.input reduction20104.output := by lin_cert using reduction20104.terms
theorem substitutionProof20104 : IsMapEvaluation generatorImages reduction20104.relations [0,2,2170] reduction20104.output := by lin_cert using reduction20104.terms
def map_27_251 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20393 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20393 : InImage map_27_251 image20393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20393 : Bundle := named_bundle% "RealMapCertificates/relations/basis20393.json"
theorem reductionProof20393 : EqualModuloRelations reduction20393.relations reduction20393.input reduction20393.output := by lin_cert using reduction20393.terms
theorem substitutionProof20393 : IsMapEvaluation generatorImages reduction20393.relations [13,13,75,417] reduction20393.output := by lin_cert using reduction20393.terms
def image20394 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20394 : InImage map_27_251 image20394 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20394 : Bundle := named_bundle% "RealMapCertificates/relations/basis20394.json"
theorem reductionProof20394 : EqualModuloRelations reduction20394.relations reduction20394.input reduction20394.output := by lin_cert using reduction20394.terms
theorem substitutionProof20394 : IsMapEvaluation generatorImages reduction20394.relations [8,8,137,324] reduction20394.output := by lin_cert using reduction20394.terms
def image20395 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20395 : InImage map_27_251 image20395 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20395 : Bundle := named_bundle% "RealMapCertificates/relations/basis20395.json"
theorem reductionProof20395 : EqualModuloRelations reduction20395.relations reduction20395.input reduction20395.output := by lin_cert using reduction20395.terms
theorem substitutionProof20395 : IsMapEvaluation generatorImages reduction20395.relations [0,2345] reduction20395.output := by lin_cert using reduction20395.terms
def image20396 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20396 : InImage map_27_251 image20396 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20396 : Bundle := named_bundle% "RealMapCertificates/relations/basis20396.json"
theorem reductionProof20396 : EqualModuloRelations reduction20396.relations reduction20396.input reduction20396.output := by lin_cert using reduction20396.terms
theorem substitutionProof20396 : IsMapEvaluation generatorImages reduction20396.relations [0,67,960] reduction20396.output := by lin_cert using reduction20396.terms
def map_27_252 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20701 : InImage map_27_252 image20701 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20701 : Bundle := named_bundle% "RealMapCertificates/relations/basis20701.json"
theorem reductionProof20701 : EqualModuloRelations reduction20701.relations reduction20701.input reduction20701.output := by lin_cert using reduction20701.terms
theorem substitutionProof20701 : IsMapEvaluation generatorImages reduction20701.relations [2418] reduction20701.output := by lin_cert using reduction20701.terms
def image20702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20702 : InImage map_27_252 image20702 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20702 : Bundle := named_bundle% "RealMapCertificates/relations/basis20702.json"
theorem reductionProof20702 : EqualModuloRelations reduction20702.relations reduction20702.input reduction20702.output := by lin_cert using reduction20702.terms
theorem substitutionProof20702 : IsMapEvaluation generatorImages reduction20702.relations [2417] reduction20702.output := by lin_cert using reduction20702.terms
def image20703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20703 : InImage map_27_252 image20703 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20703 : Bundle := named_bundle% "RealMapCertificates/relations/basis20703.json"
theorem reductionProof20703 : EqualModuloRelations reduction20703.relations reduction20703.input reduction20703.output := by lin_cert using reduction20703.terms
theorem substitutionProof20703 : IsMapEvaluation generatorImages reduction20703.relations [2416] reduction20703.output := by lin_cert using reduction20703.terms
def image20704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20704 : InImage map_27_252 image20704 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20704 : Bundle := named_bundle% "RealMapCertificates/relations/basis20704.json"
theorem reductionProof20704 : EqualModuloRelations reduction20704.relations reduction20704.input reduction20704.output := by lin_cert using reduction20704.terms
theorem substitutionProof20704 : IsMapEvaluation generatorImages reduction20704.relations [67,982] reduction20704.output := by lin_cert using reduction20704.terms
def image20705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20705 : InImage map_27_252 image20705 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20705 : Bundle := named_bundle% "RealMapCertificates/relations/basis20705.json"
theorem reductionProof20705 : EqualModuloRelations reduction20705.relations reduction20705.input reduction20705.output := by lin_cert using reduction20705.terms
theorem substitutionProof20705 : IsMapEvaluation generatorImages reduction20705.relations [13,13,188,190] reduction20705.output := by lin_cert using reduction20705.terms
def image20706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20706 : InImage map_27_252 image20706 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20706 : Bundle := named_bundle% "RealMapCertificates/relations/basis20706.json"
theorem reductionProof20706 : EqualModuloRelations reduction20706.relations reduction20706.input reduction20706.output := by lin_cert using reduction20706.terms
theorem substitutionProof20706 : IsMapEvaluation generatorImages reduction20706.relations [1,2345] reduction20706.output := by lin_cert using reduction20706.terms
def image20707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20707 : InImage map_27_252 image20707 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20707 : Bundle := named_bundle% "RealMapCertificates/relations/basis20707.json"
theorem reductionProof20707 : EqualModuloRelations reduction20707.relations reduction20707.input reduction20707.output := by lin_cert using reduction20707.terms
theorem substitutionProof20707 : IsMapEvaluation generatorImages reduction20707.relations [0,2382] reduction20707.output := by lin_cert using reduction20707.terms
def image20708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20708 : InImage map_27_252 image20708 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20708 : Bundle := named_bundle% "RealMapCertificates/relations/basis20708.json"
theorem reductionProof20708 : EqualModuloRelations reduction20708.relations reduction20708.input reduction20708.output := by lin_cert using reduction20708.terms
theorem substitutionProof20708 : IsMapEvaluation generatorImages reduction20708.relations [0,8,8,138,324] reduction20708.output := by lin_cert using reduction20708.terms
def image20709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20709 : InImage map_27_252 image20709 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20709 : Bundle := named_bundle% "RealMapCertificates/relations/basis20709.json"
theorem reductionProof20709 : EqualModuloRelations reduction20709.relations reduction20709.input reduction20709.output := by lin_cert using reduction20709.terms
theorem substitutionProof20709 : IsMapEvaluation generatorImages reduction20709.relations [0,0,2346] reduction20709.output := by lin_cert using reduction20709.terms
end RealMapCertificates
